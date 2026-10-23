import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B007.C001
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

/-!
# A257600: Expansion of (4 + 15*x - 35*x^2 + 20*x^3 - 2*x^5)/(1 - x)^5.

The programs for A257600, the canonical program `A257600.P11553272840479241187` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257600 has offset 0).

The definition of A257600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4+15x-35x^2+20x^3-2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A257600.P11553272840479241187`, by `A257600.P11553272840479241187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257600.P11553272840479241187

`ogf((4+15x-35x^2+20x^3-2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257600

/-- `ogf((4+15x-35x^2+20x^3-2x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P11553272840479241187.Spec : Prop :=
  ∀ n, P11553272840479241187.a n = A257600 n

theorem P11553272840479241187.correct : P11553272840479241187.Spec := by
  intro n
  simp only [A257600]

end A257600

/-! ## A257600.P13255601733656627347

`abs(1-n)+A257601(n)+1-n`
-/

namespace A257600.P13255601733656627347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + (A257601 n + (1 - (n : ℤ)))

end

end A257600.P13255601733656627347

namespace A257600

/-- `abs(1-n)+A257601(n)+1-n` -/
def P13255601733656627347.Spec : Prop :=
  ∀ n, P13255601733656627347.a n = A257600 n

end A257600

/-! ## A257600.P6682761103668001787

`A257601(n)+A000038(n)`
-/

namespace A257600.P6682761103668001787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257601 n + A000038 n

end

end A257600.P6682761103668001787

namespace A257600

/-- `A257601(n)+A000038(n)` -/
def P6682761103668001787.Spec : Prop :=
  ∀ n, P6682761103668001787.a n = A257600 n

end A257600

/-! ## A257600.P17003574687312732597

`A054977(n)*A257601(n)`
-/

namespace A257600.P17003574687312732597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A257601 n

end

end A257600.P17003574687312732597

namespace A257600

/-- `A054977(n)*A257601(n)` -/
def P17003574687312732597.Spec : Prop :=
  ∀ n, P17003574687312732597.a n = A257600 n

end A257600

/-! ## A257600.P13589189709791607367

`record[A000038(n)+A005701(n)-A090197(n)]`
-/

namespace A257600.P13589189709791607367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A005701 n - A090197 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257600.P13589189709791607367

namespace A257600

/-- `record[A000038(n)+A005701(n)-A090197(n)]` -/
def P13589189709791607367.Spec : Prop :=
  ∀ n, P13589189709791607367.a n = A257600 n

end A257600

/-! ## A257600.P8761730351072488267

`record[(A005701(n)-A090197(n))*A054977(n)]`
-/

namespace A257600.P8761730351072488267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005701 n - A090197 n) * A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257600.P8761730351072488267

namespace A257600

/-- `record[(A005701(n)-A090197(n))*A054977(n)]` -/
def P8761730351072488267.Spec : Prop :=
  ∀ n, P8761730351072488267.a n = A257600 n

end A257600

/-! ## A257600.P16594278206015598445

`A014963(A016825(n))*A257601(n)`
-/

namespace A257600.P16594278206015598445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat * A257601 n

end

end A257600.P16594278206015598445

namespace A257600

/-- `A014963(A016825(n))*A257601(n)` -/
def P16594278206015598445.Spec : Prop :=
  ∀ n, P16594278206015598445.a n = A257600 n

end A257600

/-! ## A257600.P5412518623703921915

`A014963(A017089(n))*A257601(n)`
-/

namespace A257600.P5412518623703921915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017089 n).toNat * A257601 n

end

end A257600.P5412518623703921915

namespace A257600

/-- `A014963(A017089(n))*A257601(n)` -/
def P5412518623703921915.Spec : Prop :=
  ∀ n, P5412518623703921915.a n = A257600 n

end A257600

/-! ## A257600.P14694132510775315151

`A257601(n)+A123565(A001043(n+1))`
-/

namespace A257600.P14694132510775315151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257601 n + A123565 (A001043 (n + 1)).toNat

end

end A257600.P14694132510775315151

namespace A257600

/-- `A257601(n)+A123565(A001043(n+1))` -/
def P14694132510775315151.Spec : Prop :=
  ∀ n, P14694132510775315151.a n = A257600 n

end A257600

/-!
# A257601: a(n) = (n^4 + 20*n^3 + 125*n^2 + 250*n + 24)/12.

The programs for A257601, the canonical program `A257601.P11822272318728899041` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257601 has offset 0).

The definition of A257601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257601.P11822272318728899041

`(n^4+20*n^3+125*n²+250*n+24)/12`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257601

/-- `(n^4+20*n^3+125*n²+250*n+24)/12` -/
def P11822272318728899041.Spec : Prop :=
  ∀ n, P11822272318728899041.a n = (A257601 n : ℚ)

end A257601

/-! ## A257601.P7994005046147827157

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=35, a(2)=100, a(3)=210, a(4)=380`
-/

namespace A257601.P7994005046147827157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 35, 100, 210, 380] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A257601.P7994005046147827157

namespace A257601

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7994005046147827157.Spec : Prop :=
  ∀ n, P7994005046147827157.a n = A257601 n

end A257601

/-! ## A257601.P12368766515046773721

`∑[(n+4)²-4]+a(n-1)` with `a(0)=2`
-/

namespace A257601.P12368766515046773721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A257601.P12368766515046773721

namespace A257601

/-- `∑[(n+4)²-4]+a(n-1)` -/
def P12368766515046773721.Spec : Prop :=
  ∀ n, P12368766515046773721.a n = A257601 n

end A257601

/-! ## A257601.P8775487662447700521

`A257600(n)-A000038(n)`
-/

namespace A257601.P8775487662447700521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257600 n - A000038 n

end

end A257601.P8775487662447700521

namespace A257601

/-- `A257600(n)-A000038(n)` -/
def P8775487662447700521.Spec : Prop :=
  ∀ n, P8775487662447700521.a n = A257601 n

end A257601

/-! ## A257601.P111647970963914176

`A350116(n+1)-10`
-/

namespace A257601.P111647970963914176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350116 (n + 1) - 10

end

end A257601.P111647970963914176

namespace A257601

/-- `A350116(n+1)-10` -/
def P111647970963914176.Spec : Prop :=
  ∀ n, P111647970963914176.a n = A257601 n

end A257601

/-! ## A257601.P18148501451071060933

`record[A005701(n)-A090197(n)]`
-/

namespace A257601.P18148501451071060933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A090197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257601.P18148501451071060933

namespace A257601

/-- `record[A005701(n)-A090197(n)]` -/
def P18148501451071060933.Spec : Prop :=
  ∀ n, P18148501451071060933.a n = A257601 n

end A257601

/-!
# A257602: Expansion of (1 + x + 21*x^2 + x^3 + x^4)/(1 - x)^5.

The programs for A257602, the canonical program `A257602.P8503288886153260320` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257602 has offset 0).

The definition of A257602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+21x^2+x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A257602.P8503288886153260320`, by `A257602.P8503288886153260320.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257602.P8503288886153260320

`ogf((1+x+21x^2+x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257602

/-- `ogf((1+x+21x^2+x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P8503288886153260320.Spec : Prop :=
  ∀ n, P8503288886153260320.a n = A257602 n

theorem P8503288886153260320.correct : P8503288886153260320.Spec := by
  intro n
  simp only [A257602]

end A257602

/-! ## A257602.P540866852186890

`1+5*n*(n+1)*(5*n²+5*n+2)/24`
-/

namespace A257602.P540866852186890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (5 * n * (n + 1) * (5 * n ^ 2 + 5 * n + 2) : ℚ) / 24

end

end A257602.P540866852186890

namespace A257602

/-- `1+5*n*(n+1)*(5*n²+5*n+2)/24` -/
def P540866852186890.Spec : Prop :=
  ∀ n, P540866852186890.a n = (A257602 n : ℚ)

end A257602

/-! ## A257602.P13654538511248846129

`ceil(A151989(n)/25)`
-/

namespace A257602.P13654538511248846129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151989 n : ℚ) / 25⌉

end

end A257602.P13654538511248846129

namespace A257602

/-- `ceil(A151989(n)/25)` -/
def P13654538511248846129.Spec : Prop :=
  ∀ n, P13654538511248846129.a n = A257602 n

end A257602

/-! ## A257602.P9158573463086009024

`∑[A000007(n)+5*A004068(n)]`
-/

namespace A257602.P9158573463086009024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 5 * A004068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257602.P9158573463086009024

namespace A257602

/-- `∑[A000007(n)+5*A004068(n)]` -/
def P9158573463086009024.Spec : Prop :=
  ∀ n, P9158573463086009024.a n = A257602 n

end A257602

/-! ## A257602.P16422269607824843382

`∑[A008531(n)-5*A004006(n)]`
-/

namespace A257602.P16422269607824843382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008531 n - 5 * A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257602.P16422269607824843382

namespace A257602

/-- `∑[A008531(n)-5*A004006(n)]` -/
def P16422269607824843382.Spec : Prop :=
  ∀ n, P16422269607824843382.a n = A257602 n

end A257602

/-! ## A257602.P131098667623116193

`∑[A008706(n)+A256648(n)-A000292(n)]`
-/

namespace A257602.P131098667623116193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A256648 n - A000292 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257602.P131098667623116193

namespace A257602

/-- `∑[A008706(n)+A256648(n)-A000292(n)]` -/
def P131098667623116193.Spec : Prop :=
  ∀ n, P131098667623116193.a n = A257602 n

end A257602

/-! ## A257602.P13364378755844408675

`ceil(Δ[A004466(n)]²/24)`
-/

namespace A257602.P13364378755844408675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 24⌉

end

end A257602.P13364378755844408675

namespace A257602

/-- `ceil(Δ[A004466(n)]²/24)` -/
def P13364378755844408675.Spec : Prop :=
  ∀ n, P13364378755844408675.a n = A257602 n

end A257602

/-! ## A257602.P6175160914851358746

`ceil(A008646(A008706(n))/5)`
-/

namespace A257602.P6175160914851358746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008646 (A008706 n).toNat : ℚ) / 5⌉

end

end A257602.P6175160914851358746

namespace A257602

/-- `ceil(A008646(A008706(n))/5)` -/
def P6175160914851358746.Spec : Prop :=
  ∀ n, P6175160914851358746.a n = A257602 n

end A257602

/-! ## A257602.P13216428201338260271

`A008748(∑[5*n])`
-/

namespace A257602.P13216428201338260271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257602.P13216428201338260271

namespace A257602

/-- `A008748(∑[5*n])` -/
def P13216428201338260271.Spec : Prop :=
  ∀ n, P13216428201338260271.a n = A257602 n

end A257602

/-! ## A257602.P13341885992690889909

`A152950(A005891(n))/3`
-/

namespace A257602.P13341885992690889909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152950 (A005891 n).toNat : ℚ) / 3

end

end A257602.P13341885992690889909

namespace A257602

/-- `A152950(A005891(n))/3` -/
def P13341885992690889909.Spec : Prop :=
  ∀ n, P13341885992690889909.a n = (A257602 n : ℚ)

end A257602

/-!
# A257604: Congruentful numbers. Numbers that are not congruentfree. Complement of A253278.

The programs for A257604, there is no canonical definition to state claims against.
-/

/-! ## A257604.P5942949785133032698

`comp[A253278(n+1)-1]+1`
-/

namespace A257604.P5942949785133032698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A257604.P5942949785133032698

/-! ## A257604.P15470177057954957261

`A153152(comp[A253278(n+1)-1])`
-/

namespace A257604.P15470177057954957261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253278 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257604.P15470177057954957261

/-! ## A257604.P8204180166034883003

`lt[A033715(n), A059481(A333627(2*n+3))]`
-/

namespace A257604.P8204180166034883003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A333627 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257604.P8204180166034883003

/-! ## A257604.P4556881482922216309

`lt[A139388(2*(n+1)), A059891(A151548(n))]`
-/

namespace A257604.P4556881482922216309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139388 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059891 (A151548 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257604.P4556881482922216309

/-! ## A257604.P13319798506540625767

`lt[A170848(2*(n+2)), A170856(A170866(n))]`
-/

namespace A257604.P13319798506540625767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170848 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170856 (A170866 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257604.P13319798506540625767

/-!
# A257605: Expansion of g.f.: exp( Sum_{n>=1} A251661(n)*x^n/n ) where A251661(n) = Sum_{k=0..n} C(n, k) * (2^k + 3^k)^(n-k).

The programs for A257605, there is no canonical definition to state claims against.
-/

/-! ## A257605.P6059783300807780164

`∑[A246262(A089468(n))]`
-/

namespace A257605.P6059783300807780164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (A089468 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257605.P6059783300807780164

/-!
# A257606: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = x + 4.

The programs for A257606, there is no canonical definition to state claims against.
-/

/-! ## A257606.P7435360861342179254

`A335404(n+1)*A337714(A058601(n+2))`
-/

namespace A257606.P7435360861342179254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335404 (n + 1) * A337714 (A058601 (n + 2)).toNat

end

end A257606.P7435360861342179254

/-!
# A257607: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = x + 5.

The programs for A257607, there is no canonical definition to state claims against.
-/

/-! ## A257607.P14436356660252188043

`A061391(A118171(n))`
-/

namespace A257607.P14436356660252188043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061391 (A118171 n).toNat

end

end A257607.P14436356660252188043

/-! ## A257607.P16773274257911473950

`∏{e}[A212709(n+1), A212700(#)]`
-/

namespace A257607.P16773274257911473950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A212700 (Nat.factorization (f1 n).natAbs p)

end

end A257607.P16773274257911473950

/-! ## A257607.P12823247249551467994

`A257624(n)-A319779(A060187(n+1))`
-/

namespace A257607.P12823247249551467994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257624 n - A319779 (A060187 (n + 1)).toNat

end

end A257607.P12823247249551467994

/-!
# A257608: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 9*x + 1.

The programs for A257608, there is no canonical definition to state claims against.
-/

/-! ## A257608.P17039753881132803091

`A219641(A022174(n))+A022174(n)`
-/

namespace A257608.P17039753881132803091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A022174 n).toNat + A022174 n

end

end A257608.P17039753881132803091

/-! ## A257608.P8365529760829178372

`A004277(A022174(n))-A007318(n)`
-/

namespace A257608.P8365529760829178372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A022174 n).toNat - A007318 n

end

end A257608.P8365529760829178372

/-! ## A257608.P9718193205534553224

`A005843(A022174(n))-A008975(n)`
-/

namespace A257608.P9718193205534553224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A022174 n).toNat - A008975 n

end

end A257608.P9718193205534553224

/-! ## A257608.P15970688674644041427

`A004277(A022174(n))-A028657(n)`
-/

namespace A257608.P15970688674644041427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A022174 n).toNat - A028657 n

end

end A257608.P15970688674644041427

/-! ## A257608.P10307627290803215593

`A004273(A022174(n))-A051775(n)`
-/

namespace A257608.P10307627290803215593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A022174 n).toNat - A051775 n

end

end A257608.P10307627290803215593

/-!
# A257609: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 2*x + 2.

The programs for A257609, there is no canonical definition to state claims against.
-/

/-! ## A257609.P13030523675308907875

`A008292(n+1)*A137688(n)`
-/

namespace A257609.P13030523675308907875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A137688 n

end

end A257609.P13030523675308907875

/-! ## A257609.P4635797618430146360

`A130321(n)*A142075(n+1)`
-/

namespace A257609.P4635797618430146360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A142075 (n + 1)

end

end A257609.P4635797618430146360

/-! ## A257609.P4962201545420693090

`ceil(A176200(n)/2)*A137688(n)`
-/

namespace A257609.P4962201545420693090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176200 n : ℚ) / 2⌉ * A137688 n

end

end A257609.P4962201545420693090

/-! ## A257609.P8585331238689338486

`Δ[A007664(n)]*A008292(n+1)`
-/

namespace A257609.P8585331238689338486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008292 (n + 1)

end

end A257609.P8585331238689338486

/-! ## A257609.P16639819655982251768

`A008292(n+1)/2*A140513(n)`
-/

namespace A257609.P16639819655982251768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / 2 * (A140513 n : ℚ)

end

end A257609.P16639819655982251768

/-! ## A257609.P8977213477563933259

`A090988(n+1)/2*A142075(n+1)`
-/

namespace A257609.P8977213477563933259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090988 (n + 1) : ℚ) / 2 * (A142075 (n + 1) : ℚ)

end

end A257609.P8977213477563933259

/-! ## A257609.P44621463971825909

`A008292(n+1)*A059268(n)*A130321(n)`
-/

namespace A257609.P44621463971825909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A059268 n * A130321 n

end

end A257609.P44621463971825909

/-! ## A257609.P12146018333036735850

`A008292(n+1)*A130128(A004736(n+1)+n)`
-/

namespace A257609.P12146018333036735850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A130128 (A004736 (n + 1) + (n : ℤ)).toNat

end

end A257609.P12146018333036735850

/-! ## A257609.P7169565225980267902

`A296229(n+1)/2`
-/

namespace A257609.P7169565225980267902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296229 (n + 1) : ℚ) / 2

end

end A257609.P7169565225980267902

/-! ## A257609.P1970012882730428961

`A008292(n+1)/A256890(n)*A257613(n)`
-/

namespace A257609.P1970012882730428961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A256890 n : ℚ) * (A257613 n : ℚ)

end

end A257609.P1970012882730428961

/-! ## A257609.P11328586490115987280

`A257613(n)/A257626(n)*A257620(n)`
-/

namespace A257609.P11328586490115987280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257613 n : ℚ) / (A257626 n : ℚ) * (A257620 n : ℚ)

end

end A257609.P11328586490115987280

/-! ## A257609.P9716056284904432616

`(A101842(2*n+1)+A101842(2*(n+1)))/2`
-/

namespace A257609.P9716056284904432616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101842 (2 * n + 1) + A101842 (2 * (n + 1)) : ℚ) / 2

end

end A257609.P9716056284904432616

/-! ## A257609.P10964724087396789821

`A000010(A140513(n))*A008292(n+1)`
-/

namespace A257609.P10964724087396789821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A140513 n).toNat * A008292 (n + 1)

end

end A257609.P10964724087396789821

/-!
# A257610: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 3*x + 2.

The programs for A257610, there is no canonical definition to state claims against.
-/

/-! ## A257610.P16665747960908442533

`A154695(A004914(n+1))-A132046(n)`
-/

namespace A257610.P16665747960908442533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154695 (A004914 (n + 1)).toNat - A132046 n

end

end A257610.P16665747960908442533

/-! ## A257610.P7430958129292334816

`A082046(n)*A304848(A032555(n+1))`
-/

namespace A257610.P7430958129292334816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n * A304848 (A032555 (n + 1)).toNat

end

end A257610.P7430958129292334816

/-! ## A257610.P51437516488794224

`A082046(n)*A304848(A032559(n+1))`
-/

namespace A257610.P51437516488794224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n * A304848 (A032559 (n + 1)).toNat

end

end A257610.P51437516488794224

/-! ## A257610.P8543706243910428357

`A317368(A001350(n))`
-/

namespace A257610.P8543706243910428357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317368 (A001350 n).toNat

end

end A257610.P8543706243910428357

/-!
# A257611: Triangle, read by rows, T(n,k) = t(n-k, k) where t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1) and f(n) = 2*n + 3.

The programs for A257611, there is no canonical definition to state claims against.
-/

/-! ## A257611.P1637989917098557559

`or(A038221(n), A281989(A086645(n)))`
-/

namespace A257611.P1637989917098557559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038221 n) (A281989 (A086645 n).toNat)

end

end A257611.P1637989917098557559

/-!
# A257612: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 4*x + 2.

The programs for A257612, there is no canonical definition to state claims against.
-/

/-! ## A257612.P2032820488222380078

`A060187(n+1)*A137688(n)`
-/

namespace A257612.P2032820488222380078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) * A137688 n

end

end A257612.P2032820488222380078

/-! ## A257612.P14637812436720666264

`Δ[A007664(n)]*A060187(n+1)`
-/

namespace A257612.P14637812436720666264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A060187 (n + 1)

end

end A257612.P14637812436720666264

/-! ## A257612.P2327943834845903631

`A060187(n+1)/2*A140513(n)`
-/

namespace A257612.P2327943834845903631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) : ℚ) / 2 * (A140513 n : ℚ)

end

end A257612.P2327943834845903631

/-! ## A257612.P14869966661493858458

`A013620(A057944(n))*A060187(n+1)`
-/

namespace A257612.P14869966661493858458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A057944 n).toNat * A060187 (n + 1)

end

end A257612.P14869966661493858458

/-! ## A257612.P1052740107794575705

`A011782(A002024(n+1))*A060187(n+1)`
-/

namespace A257612.P1052740107794575705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002024 (n + 1)).toNat * A060187 (n + 1)

end

end A257612.P1052740107794575705

/-! ## A257612.P7130606586605479352

`A060187(n+1)*A130321(n)*A059268(n)`
-/

namespace A257612.P7130606586605479352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) * A130321 n * A059268 n

end

end A257612.P7130606586605479352

/-! ## A257612.P4162891472235071225

`A060187(n+1)/A256890(n)*A257613(n)`
-/

namespace A257612.P4162891472235071225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) : ℚ) / (A256890 n : ℚ) * (A257613 n : ℚ)

end

end A257612.P4162891472235071225

/-! ## A257612.P15634460906364418383

`A000010(A140513(n))*A060187(n+1)`
-/

namespace A257612.P15634460906364418383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A140513 n).toNat * A060187 (n + 1)

end

end A257612.P15634460906364418383

/-!
# A257613: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 2*x + 4.

The programs for A257613, there is no canonical definition to state claims against.
-/

/-! ## A257613.P1281786670780744546

`A137688(n)*A256890(n)`
-/

namespace A257613.P1281786670780744546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A256890 n

end

end A257613.P1281786670780744546

/-! ## A257613.P10676882353649500138

`Δ[A007664(n)]*A256890(n)`
-/

namespace A257613.P10676882353649500138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A256890 n

end

end A257613.P10676882353649500138

/-! ## A257613.P17656135673240006351

`A140513(n)/2*A256890(n)`
-/

namespace A257613.P17656135673240006351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140513 n : ℚ) / 2 * (A256890 n : ℚ)

end

end A257613.P17656135673240006351

/-! ## A257613.P8631616662709010510

`A000079(A003056(n))*A256890(n)`
-/

namespace A257613.P8631616662709010510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat * A256890 n

end

end A257613.P8631616662709010510

/-! ## A257613.P3825109264321185091

`A013620(A057944(n))*A256890(n)`
-/

namespace A257613.P3825109264321185091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A057944 n).toNat * A256890 n

end

end A257613.P3825109264321185091

/-! ## A257613.P15406415513789083712

`A038208(n)/A007318(n)*A256890(n)`
-/

namespace A257613.P15406415513789083712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A007318 n : ℚ) * (A256890 n : ℚ)

end

end A257613.P15406415513789083712

/-! ## A257613.P7102535535641922617

`A038286(n)/A038234(n)*A256890(n)`
-/

namespace A257613.P7102535535641922617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038286 n : ℚ) / (A038234 n : ℚ) * (A256890 n : ℚ)

end

end A257613.P7102535535641922617

/-! ## A257613.P12789970275550587797

`A256890(n)/A008292(n+1)*A257609(n)`
-/

namespace A257613.P12789970275550587797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256890 n : ℚ) / (A008292 (n + 1) : ℚ) * (A257609 n : ℚ)

end

end A257613.P12789970275550587797

/-! ## A257613.P5723823417606245509

`A256890(n)/A060187(n+1)*A257612(n)`
-/

namespace A257613.P5723823417606245509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256890 n : ℚ) / (A060187 (n + 1) : ℚ) * (A257612 n : ℚ)

end

end A257613.P5723823417606245509

/-! ## A257613.P9498649841065060076

`A000010(A140513(n))*A256890(n)`
-/

namespace A257613.P9498649841065060076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A140513 n).toNat * A256890 n

end

end A257613.P9498649841065060076

/-!
# A257615: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 2*x + 5.

The programs for A257615, there is no canonical definition to state claims against.
-/

/-! ## A257615.P12319367219079542259

`A062367(A118171(n))`
-/

namespace A257615.P12319367219079542259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062367 (A118171 n).toNat

end

end A257615.P12319367219079542259

/-! ## A257615.P10683186808025672795

`A228732(A222462(n+1))`
-/

namespace A257615.P10683186808025672795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (A222462 (n + 1)).toNat

end

end A257615.P10683186808025672795

/-! ## A257615.P12466998939947995380

`A360909(A085652(n+2))`
-/

namespace A257615.P12466998939947995380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360909 (A085652 (n + 2)).toNat

end

end A257615.P12466998939947995380

/-!
# A257616: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 6*x + 2.

The programs for A257616, there is no canonical definition to state claims against.
-/

/-! ## A257616.P7186092579697854524

`A137688(n)*A142458(n+1)`
-/

namespace A257616.P7186092579697854524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A142458 (n + 1)

end

end A257616.P7186092579697854524

/-! ## A257616.P260256940641790827

`Δ[A007664(n)]*A142458(n+1)`
-/

namespace A257616.P260256940641790827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A142458 (n + 1)

end

end A257616.P260256940641790827

/-! ## A257616.P283343976741177244

`A142458(n+1)/2*A140513(n)`
-/

namespace A257616.P283343976741177244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142458 (n + 1) : ℚ) / 2 * (A140513 n : ℚ)

end

end A257616.P283343976741177244

/-! ## A257616.P17698622733310396860

`A000079(A003056(n))*A142458(n+1)`
-/

namespace A257616.P17698622733310396860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat * A142458 (n + 1)

end

end A257616.P17698622733310396860

/-! ## A257616.P11070185148077779335

`A004175(A057944(n))*A142458(n+1)`
-/

namespace A257616.P11070185148077779335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (A057944 n).toNat * A142458 (n + 1)

end

end A257616.P11070185148077779335

/-! ## A257616.P10096429851695204995

`A142458(n+1)/A256890(n)*A257613(n)`
-/

namespace A257616.P10096429851695204995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142458 (n + 1) : ℚ) / (A256890 n : ℚ) * (A257613 n : ℚ)

end

end A257616.P10096429851695204995

/-! ## A257616.P2414611725627853515

`A000010(A140513(n))*A142458(n+1)`
-/

namespace A257616.P2414611725627853515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A140513 n).toNat * A142458 (n + 1)

end

end A257616.P2414611725627853515

/-!
# A257618: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 8*x + 2.

The programs for A257618, there is no canonical definition to state claims against.
-/

/-! ## A257618.P2906390378512934072

`A137688(n)*A142459(n+1)`
-/

namespace A257618.P2906390378512934072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n * A142459 (n + 1)

end

end A257618.P2906390378512934072

/-! ## A257618.P14972284583361178604

`Δ[A007664(n)]*A142459(n+1)`
-/

namespace A257618.P14972284583361178604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A142459 (n + 1)

end

end A257618.P14972284583361178604

/-! ## A257618.P13126503653187407097

`A142459(n+1)/2*A140513(n)`
-/

namespace A257618.P13126503653187407097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142459 (n + 1) : ℚ) / 2 * (A140513 n : ℚ)

end

end A257618.P13126503653187407097

/-! ## A257618.P15253834282727095683

`A000079(A003056(n))*A142459(n+1)`
-/

namespace A257618.P15253834282727095683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003056 n).toNat * A142459 (n + 1)

end

end A257618.P15253834282727095683

/-! ## A257618.P911150006437565519

`A004175(A057944(n))*A142459(n+1)`
-/

namespace A257618.P911150006437565519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (A057944 n).toNat * A142459 (n + 1)

end

end A257618.P911150006437565519

/-! ## A257618.P8178502312630731782

`A142459(n+1)/A060187(n+1)*A257612(n)`
-/

namespace A257618.P8178502312630731782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142459 (n + 1) : ℚ) / (A060187 (n + 1) : ℚ) * (A257612 n : ℚ)

end

end A257618.P8178502312630731782

/-! ## A257618.P7909060814021567462

`A000010(A140513(n))*A142459(n+1)`
-/

namespace A257618.P7909060814021567462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A140513 n).toNat * A142459 (n + 1)

end

end A257618.P7909060814021567462

/-!
# A257620: Triangle read by rows: T(n, k) = t(n-k, k), where t(0,0) = 1, t(n,m) = 0 if n < 0 or m < 0, else t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), and f(n) = 3*n + 3.

The programs for A257620, there is no canonical definition to state claims against.
-/

/-! ## A257620.P3854167352208841898

`A008292(n+1)*A098355(n)`
-/

namespace A257620.P3854167352208841898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A098355 n

end

end A257620.P3854167352208841898

/-! ## A257620.P4906252420420178233

`Δ[A259653(n)]*A008292(n+1)`
-/

namespace A257620.P4906252420420178233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008292 (n + 1)

end

end A257620.P4906252420420178233

/-! ## A257620.P12575455624105487364

`A008292(n+1)*A106516(A057944(n))`
-/

namespace A257620.P12575455624105487364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A106516 (A057944 n).toNat

end

end A257620.P12575455624105487364

/-! ## A257620.P12302921018826306436

`A098355(n)*A123125(A014132(n+1))`
-/

namespace A257620.P12302921018826306436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n * A123125 (A014132 (n + 1)).toNat

end

end A257620.P12302921018826306436

/-! ## A257620.P14764753693996919255

`A098355(n)*A173018(A007401(n+1))`
-/

namespace A257620.P14764753693996919255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n * A173018 (A007401 (n + 1)).toNat

end

end A257620.P14764753693996919255

/-! ## A257620.P9789917267886054153

`(A176200(n)+1)/2*A000244(A003056(n))`
-/

namespace A257620.P9789917267886054153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176200 n + 1 : ℚ) / 2 * (A000244 (A003056 n).toNat : ℚ)

end

end A257620.P9789917267886054153

/-! ## A257620.P17902483960869344069

`sqrt(A177823(n+1))*A098355(n)`
-/

namespace A257620.P17902483960869344069
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177823 (n + 1) : ℝ) * (A098355 n : ℝ)

end

end A257620.P17902483960869344069

/-!
# A257622: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 3*x + 4.

The programs for A257622, there is no canonical definition to state claims against.
-/

/-! ## A257622.P6868494895660930728

`A194445(A299852(n+1))*A347940(n)`
-/

namespace A257622.P6868494895660930728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194445 (A299852 (n + 1)).toNat * A347940 n

end

end A257622.P6868494895660930728

/-!
# A257624: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 3*x + 5.

The programs for A257624, there is no canonical definition to state claims against.
-/

/-! ## A257624.P4194945003288178106

`A162371(A176160(n))`
-/

namespace A257624.P4194945003288178106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (A176160 n).toNat

end

end A257624.P4194945003288178106

/-! ## A257624.P6862981457182715285

`∏{e}[A300938(n+1), A052905(#)]`
-/

namespace A257624.P6862981457182715285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A052905 (Nat.factorization (f1 n).natAbs p)

end

end A257624.P6862981457182715285

/-! ## A257624.P3305530526134950956

`A038243(n)*A333201(A264902(n))`
-/

namespace A257624.P3305530526134950956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 n * A333201 (A264902 n).toNat

end

end A257624.P3305530526134950956

/-!
# A257625: Triangle read by rows: T(n, k) = t(n-k, k), where t(0,0) = 1, t(n,m) = 0 if n < 0 or m < 0, else t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), and f(n) = 6*n + 3.

The programs for A257625, there is no canonical definition to state claims against.
-/

/-! ## A257625.P1900896355124336389

`A060187(n+1)*A098355(n)`
-/

namespace A257625.P1900896355124336389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) * A098355 n

end

end A257625.P1900896355124336389

/-! ## A257625.P3031849939117083128

`A000244(A003056(n))*A060187(n+1)`
-/

namespace A257625.P3031849939117083128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A003056 n).toNat * A060187 (n + 1)

end

end A257625.P3031849939117083128

/-! ## A257625.P18223504100848144538

`A038221(A057944(n))*A060187(n+1)`
-/

namespace A257625.P18223504100848144538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038221 (A057944 n).toNat * A060187 (n + 1)

end

end A257625.P18223504100848144538

/-! ## A257625.P7809107911434044791

`A060187(n+1)*A140303(A245300(n))`
-/

namespace A257625.P7809107911434044791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) * A140303 (A245300 n).toNat

end

end A257625.P7809107911434044791

/-! ## A257625.P2363674030830665871

`A098355(n)/A137688(n)*A257612(n)`
-/

namespace A257625.P2363674030830665871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098355 n : ℚ) / (A137688 n : ℚ) * (A257612 n : ℚ)

end

end A257625.P2363674030830665871

/-! ## A257625.P16975451346672858601

`A060187(n+1)/A038208(n)*A038260(n)`
-/

namespace A257625.P16975451346672858601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) : ℚ) / (A038208 n : ℚ) * (A038260 n : ℚ)

end

end A257625.P16975451346672858601

/-!
# A257626: Triangle read by rows: T(n,k) = t(n-k, k); t(n,m) = f(m)*t(n-1,m) + f(n)*t(n,m-1), where f(x) = 3*x + 6.

The programs for A257626, there is no canonical definition to state claims against.
-/

/-! ## A257626.P10301613735154172444

`A098355(n)*A256890(n)`
-/

namespace A257626.P10301613735154172444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n * A256890 n

end

end A257626.P10301613735154172444

/-! ## A257626.P15139965283263516292

`Δ[A259653(n)]*A256890(n)`
-/

namespace A257626.P15139965283263516292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A256890 n

end

end A257626.P15139965283263516292

/-! ## A257626.P7046281712296280872

`A000244(A003056(n))*A256890(n)`
-/

namespace A257626.P7046281712296280872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A003056 n).toNat * A256890 n

end

end A257626.P7046281712296280872

/-! ## A257626.P13030666872725494993

`A013622(A057944(n))*A256890(n)`
-/

namespace A257626.P13030666872725494993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 (A057944 n).toNat * A256890 n

end

end A257626.P13030666872725494993

/-! ## A257626.P12853855854340088326

`A038260(n)/A038208(n)*A256890(n)`
-/

namespace A257626.P12853855854340088326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038260 n : ℚ) / (A038208 n : ℚ) * (A256890 n : ℚ)

end

end A257626.P12853855854340088326

/-! ## A257626.P10998016425418044424

`A257613(n)/A257609(n)*A257620(n)`
-/

namespace A257626.P10998016425418044424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257613 n : ℚ) / (A257609 n : ℚ) * (A257620 n : ℚ)

end

end A257626.P10998016425418044424

/-!
# A257628: Expansion of 1 - f(-x) in powers of x where f() is a Ramanujan theta function.

The programs for A257628, the canonical program `A257628.P18237328773760466214` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257628 has offset 0).

The definition of A257628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257628.P18237328773760466214

`round(A147843(n)/(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A257628

/-- `round(A147843(n)/(n+1))` -/
def P18237328773760466214.Spec : Prop :=
  ∀ n, P18237328773760466214.a n = A257628 n

theorem P18237328773760466214.correct : P18237328773760466214.Spec := by
  intro n
  simp only [A257628]

end A257628

/-! ## A257628.P12113132982120960149

`C(2, n+2)-A010815(n)`
-/

namespace A257628.P12113132982120960149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - A010815 n

end

end A257628.P12113132982120960149

namespace A257628

/-- `C(2, n+2)-A010815(n)` -/
def P12113132982120960149.Spec : Prop :=
  ∀ n, P12113132982120960149.a n = A257628 n

end A257628

/-! ## A257628.P9656066273360327101

`A000007(n)-A010815(n)`
-/

namespace A257628.P9656066273360327101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A010815 n

end

end A257628.P9656066273360327101

namespace A257628

/-- `A000007(n)-A010815(n)` -/
def P9656066273360327101.Spec : Prop :=
  ∀ n, P9656066273360327101.a n = A257628 n

end A257628

/-! ## A257628.P14779474564288072645

`A010815(n)*A057428(n)`
-/

namespace A257628.P14779474564288072645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A057428 n

end

end A257628.P14779474564288072645

namespace A257628

/-- `A010815(n)*A057428(n)` -/
def P14779474564288072645.Spec : Prop :=
  ∀ n, P14779474564288072645.a n = A257628 n

end A257628

/-! ## A257628.P3458133760943726026

`A062157(n)*A121373(n)`
-/

namespace A257628.P3458133760943726026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A121373 n

end

end A257628.P3458133760943726026

namespace A257628

/-- `A062157(n)*A121373(n)` -/
def P3458133760943726026.Spec : Prop :=
  ∀ n, P3458133760943726026.a n = A257628 n

end A257628

/-! ## A257628.P17965718814402609563

`A147843(n)/A028310(n)`
-/

namespace A257628.P17965718814402609563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147843 n : ℚ) / (A028310 n : ℚ)

end

end A257628.P17965718814402609563

namespace A257628

/-- `A147843(n)/A028310(n)` -/
def P17965718814402609563.Spec : Prop :=
  ∀ n, P17965718814402609563.a n = (A257628 n : ℚ)

end A257628

/-! ## A257628.P4195947919932096692

`A000038(n)/2-A010815(n)`
-/

namespace A257628.P4195947919932096692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) / 2 - (A010815 n : ℚ)

end

end A257628.P4195947919932096692

namespace A257628

/-- `A000038(n)/2-A010815(n)` -/
def P4195947919932096692.Spec : Prop :=
  ∀ n, P4195947919932096692.a n = (A257628 n : ℚ)

end A257628

/-! ## A257628.P12367824484430608373

`and(1, A000122(n))-A010815(n)`
-/

namespace A257628.P12367824484430608373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000122 n) - A010815 n

end

end A257628.P12367824484430608373

namespace A257628

/-- `and(1, A000122(n))-A010815(n)` -/
def P12367824484430608373.Spec : Prop :=
  ∀ n, P12367824484430608373.a n = A257628 n

end A257628

/-! ## A257628.P11959431338903264979

`and(1, A000132(n))-A010815(n)`
-/

namespace A257628.P11959431338903264979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000132 n) - A010815 n

end

end A257628.P11959431338903264979

namespace A257628

/-- `and(1, A000132(n))-A010815(n)` -/
def P11959431338903264979.Spec : Prop :=
  ∀ n, P11959431338903264979.a n = A257628 n

end A257628

/-! ## A257628.P14449049564288594438

`and(1, A033716(n))-A010815(n)`
-/

namespace A257628.P14449049564288594438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A033716 n) - A010815 n

end

end A257628.P14449049564288594438

namespace A257628

/-- `and(1, A033716(n))-A010815(n)` -/
def P14449049564288594438.Spec : Prop :=
  ∀ n, P14449049564288594438.a n = A257628 n

end A257628

/-! ## A257628.P6601045401765969250

`A028310(n)-(A010815(n)+n)`
-/

namespace A257628.P6601045401765969250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (A010815 n + (n : ℤ))

end

end A257628.P6601045401765969250

namespace A257628

/-- `A028310(n)-(A010815(n)+n)` -/
def P6601045401765969250.Spec : Prop :=
  ∀ n, P6601045401765969250.a n = A257628 n

end A257628

/-! ## A257628.P15777216717147632340

`A010051(2*(n+1))-A010815(n)`
-/

namespace A257628.P15777216717147632340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) - A010815 n

end

end A257628.P15777216717147632340

namespace A257628

/-- `A010051(2*(n+1))-A010815(n)` -/
def P15777216717147632340.Spec : Prop :=
  ∀ n, P15777216717147632340.a n = A257628 n

end A257628

/-! ## A257628.P1756721879348108544

`(2-A157532(n+1))*A010815(n)`
-/

namespace A257628.P1756721879348108544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A157532 (n + 1)) * A010815 n

end

end A257628.P1756721879348108544

namespace A257628

/-- `(2-A157532(n+1))*A010815(n)` -/
def P1756721879348108544.Spec : Prop :=
  ∀ n, P1756721879348108544.a n = A257628 n

end A257628

/-! ## A257628.P10836741413785845541

`A209229(2*n+1)-A010815(n)`
-/

namespace A257628.P10836741413785845541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1) - A010815 n

end

end A257628.P10836741413785845541

namespace A257628

/-- `A209229(2*n+1)-A010815(n)` -/
def P10836741413785845541.Spec : Prop :=
  ∀ n, P10836741413785845541.a n = A257628 n

end A257628

/-! ## A257628.P6193843000355947809

`floor(1/A065188(n+1)-A010815(n))`
-/

namespace A257628.P6193843000355947809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A065188 (n + 1) : ℚ) - (A010815 n : ℚ)⌋

end

end A257628.P6193843000355947809

namespace A257628

/-- `floor(1/A065188(n+1)-A010815(n))` -/
def P6193843000355947809.Spec : Prop :=
  ∀ n, P6193843000355947809.a n = A257628 n

end A257628

/-! ## A257628.P1732420003309373284

`char[A004016(3*n+2)]-A010815(n)`
-/

namespace A257628.P1732420003309373284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A010815 n

end

end A257628.P1732420003309373284

namespace A257628

/-- `char[A004016(3*n+2)]-A010815(n)` -/
def P1732420003309373284.Spec : Prop :=
  ∀ n, P1732420003309373284.a n = A257628 n

end A257628

/-! ## A257628.P8187750489604637304

`char[A152244(3*n+2)]-A010815(n)`
-/

namespace A257628.P8187750489604637304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152244 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A010815 n

end

end A257628.P8187750489604637304

namespace A257628

/-- `char[A152244(3*n+2)]-A010815(n)` -/
def P8187750489604637304.Spec : Prop :=
  ∀ n, P8187750489604637304.a n = A257628 n

end A257628

/-! ## A257628.P4647526990752462387

`A045833(A004016(n))-A010815(n)`
-/

namespace A257628.P4647526990752462387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (A004016 n).toNat - A010815 n

end

end A257628.P4647526990752462387

namespace A257628

/-- `A045833(A004016(n))-A010815(n)` -/
def P4647526990752462387.Spec : Prop :=
  ∀ n, P4647526990752462387.a n = A257628 n

end A257628

/-!
# A257630: Near-repdigit triangular numbers.

The programs for A257630, there is no canonical definition to state claims against.
-/

/-! ## A257630.P5361317214162183859

`A062691(lt[A062691(n+1), A083555(3*n+2)])`
-/

namespace A257630.P5361317214162183859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083555 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257630.P5361317214162183859

/-!
# A257631: Near-repunit triangular numbers.

The programs for A257631, there is no canonical definition to state claims against.
-/

/-! ## A257631.P11817103592967813518

`A062691(A281111(n+1))`
-/

namespace A257631.P11817103592967813518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062691 (A281111 (n + 1)).toNat

end

end A257631.P11817103592967813518

/-!
# A257632: Expansion of eta(q^6)^3 * eta(q^10)^3 / (eta(q^2) * eta(q^3)^2 * eta(q^5)^2 * eta(q^30)) in powers of q.

The programs for A257632, there is no canonical definition to state claims against.
-/

/-! ## A257632.P14891752283699313786

`A132968(2*n)`
-/

namespace A257632.P14891752283699313786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132968 (2 * n)

end

end A257632.P14891752283699313786

/-! ## A257632.P2599521473115541618

`abs(A132968(n+n))`
-/

namespace A257632.P2599521473115541618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132968 (n + n)|

end

end A257632.P2599521473115541618

/-! ## A257632.P10029218107437617194

`abs(A132967(A004277(n)))`
-/

namespace A257632.P10029218107437617194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132967 (A004277 n).toNat|

end

end A257632.P10029218107437617194

/-! ## A257632.P14019858111314837277

`abs(A132967(A028310(2*n)))`
-/

namespace A257632.P14019858111314837277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132967 (A028310 (2 * n)).toNat|

end

end A257632.P14019858111314837277

/-! ## A257632.P8913386138788168674

`abs(A132967(A028310(n)+n))`
-/

namespace A257632.P8913386138788168674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132967 (A028310 n + (n : ℤ)).toNat|

end

end A257632.P8913386138788168674

/-! ## A257632.P16143058615786809638

`A000007(n)-A132967(2*A028310(n))`
-/

namespace A257632.P16143058615786809638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A132967 (2 * A028310 n).toNat

end

end A257632.P16143058615786809638

/-! ## A257632.P15683140277226174447

`A000038(n)-A132967(A028310(2*n))`
-/

namespace A257632.P15683140277226174447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A132967 (A028310 (2 * n)).toNat

end

end A257632.P15683140277226174447

/-! ## A257632.P7340742929610913380

`lcm(A132968(A004277(n)), A309873(n+1))`
-/

namespace A257632.P7340742929610913380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132968 (A004277 n).toNat) (A309873 (n + 1))

end

end A257632.P7340742929610913380

/-! ## A257632.P17420145264708254091

`A000038(n)-A132967(A028310(n)+n)`
-/

namespace A257632.P17420145264708254091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A132967 (A028310 n + (n : ℤ)).toNat

end

end A257632.P17420145264708254091

/-! ## A257632.P13702154750730769832

`A106458(2*n+1)-A132967(A028310(2*n))`
-/

namespace A257632.P13702154750730769832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * n + 1) - A132967 (A028310 (2 * n)).toNat

end

end A257632.P13702154750730769832

/-!
# A257633: a(n) = binomial(4*n + 2,n).

The programs for A257633, the canonical program `A257633.P3695274740093547` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257633 has offset 0).

The definition of A257633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n+2, n)` (program `A257633.P3695274740093547`, by `A257633.P3695274740093547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257633.P3695274740093547

`C(4*n+2, n)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257633

/-- `C(4*n+2, n)` -/
def P3695274740093547.Spec : Prop :=
  ∀ n, (P3695274740093547.a n : ℤ) = A257633 n

theorem P3695274740093547.correct : P3695274740093547.Spec := by
  intro n
  simp only [A257633]

end A257633

/-! ## A257633.P10780511691359819240

`A051036(4*n+2)`
-/

namespace A257633.P10780511691359819240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051036 (4 * n + 2)

end

end A257633.P10780511691359819240

namespace A257633

/-- `A051036(4*n+2)` -/
def P10780511691359819240.Spec : Prop :=
  ∀ n, P10780511691359819240.a n = A257633 n

end A257633

/-! ## A257633.P7158078589673942958

`A283799(Δ[n²])/2`
-/

namespace A257633.P7158078589673942958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283799 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A257633.P7158078589673942958

namespace A257633

/-- `A283799(Δ[n²])/2` -/
def P7158078589673942958.Spec : Prop :=
  ∀ n, P7158078589673942958.a n = (A257633 n : ℚ)

end A257633

/-! ## A257633.P10378960320143270281

`Δ[n²]*A069271(n)`
-/

namespace A257633.P10378960320143270281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A069271 n

end

end A257633.P10378960320143270281

namespace A257633

/-- `Δ[n²]*A069271(n)` -/
def P10378960320143270281.Spec : Prop :=
  ∀ n, P10378960320143270281.a n = A257633 n

end A257633

/-! ## A257633.P7632978466183535855

`(n+1)*A006632(n+1)`
-/

namespace A257633.P7632978466183535855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006632 (n + 1)

end

end A257633.P7632978466183535855

namespace A257633

/-- `(n+1)*A006632(n+1)` -/
def P7632978466183535855.Spec : Prop :=
  ∀ n, P7632978466183535855.a n = A257633 n

end A257633

/-! ## A257633.P7586103646440057046

`(n+1)*A369082(Δ[n²])`
-/

namespace A257633.P7586103646440057046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369082 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A257633.P7586103646440057046

namespace A257633

/-- `(n+1)*A369082(Δ[n²])` -/
def P7586103646440057046.Spec : Prop :=
  ∀ n, P7586103646440057046.a n = A257633 n

end A257633

/-! ## A257633.P6260385156795681244

`(n+1)*abs(A171790(n+1))`
-/

namespace A257633.P6260385156795681244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |A171790 (n + 1)|

end

end A257633.P6260385156795681244

namespace A257633

/-- `(n+1)*abs(A171790(n+1))` -/
def P6260385156795681244.Spec : Prop :=
  ∀ n, P6260385156795681244.a n = A257633 n

end A257633

/-! ## A257633.P18115140750000663579

`(n+1)*A069270(∑[n+3])`
-/

namespace A257633.P18115140750000663579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069270 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257633.P18115140750000663579

namespace A257633

/-- `(n+1)*A069270(∑[n+3])` -/
def P18115140750000663579.Spec : Prop :=
  ∀ n, P18115140750000663579.a n = A257633 n

end A257633

/-! ## A257633.P14150969697079122078

`∑[4*n+1]*A000260(n)`
-/

namespace A257633.P14150969697079122078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000260 n

end

end A257633.P14150969697079122078

namespace A257633

/-- `∑[4*n+1]*A000260(n)` -/
def P14150969697079122078.Spec : Prop :=
  ∀ n, P14150969697079122078.a n = A257633 n

end A257633

/-! ## A257633.P16383533920762512423

`(n+1)/2*A112385(n+1)`
-/

namespace A257633.P16383533920762512423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A112385 (n + 1) : ℚ)

end

end A257633.P16383533920762512423

namespace A257633

/-- `(n+1)/2*A112385(n+1)` -/
def P16383533920762512423.Spec : Prop :=
  ∀ n, P16383533920762512423.a n = (A257633 n : ℚ)

end A257633

/-! ## A257633.P18057517261203069942

`(n+1)/4*A337291(n+1)`
-/

namespace A257633.P18057517261203069942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A337291 (n + 1) : ℚ)

end

end A257633.P18057517261203069942

namespace A257633

/-- `(n+1)/4*A337291(n+1)` -/
def P18057517261203069942.Spec : Prop :=
  ∀ n, P18057517261203069942.a n = (A257633 n : ℚ)

end A257633

/-! ## A257633.P12490113793389894493

`(2*n+1)*A369472(2*n+1)`
-/

namespace A257633.P12490113793389894493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A369472 (2 * n + 1)

end

end A257633.P12490113793389894493

namespace A257633

/-- `(2*n+1)*A369472(2*n+1)` -/
def P12490113793389894493.Spec : Prop :=
  ∀ n, P12490113793389894493.a n = A257633 n

end A257633

/-! ## A257633.P7207649870807672226

`A000217(2*n+1)*A146305(A000217(n))`
-/

namespace A257633.P7207649870807672226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) * A146305 (A000217 n).toNat

end

end A257633.P7207649870807672226

namespace A257633

/-- `A000217(2*n+1)*A146305(A000217(n))` -/
def P7207649870807672226.Spec : Prop :=
  ∀ n, P7207649870807672226.a n = A257633 n

end A257633

/-!
# A257635: Triangle with n-th row polynomial equal to Product_{k = 1..n} (x + n + k).

The programs for A257635, there is no canonical definition to state claims against.
-/

/-! ## A257635.P6812932685481673838

`A248929(A114281(n))`
-/

namespace A257635.P6812932685481673838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248929 (A114281 n).toNat

end

end A257635.P6812932685481673838

/-! ## A257635.P12650608886057155076

`A135086(A293503(n)+1)`
-/

namespace A257635.P12650608886057155076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135086 (A293503 n + 1).toNat

end

end A257635.P12650608886057155076

/-! ## A257635.P15146732100636824946

`A119274(n)+A020987(A255011(n))`
-/

namespace A257635.P15146732100636824946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119274 n + A020987 (A255011 n).toNat

end

end A257635.P15146732100636824946

/-!
# A257636: Numbers n such that the base 10 reversals of n and n+1 are both prime.

The programs for A257636, there is no canonical definition to state claims against.
-/

/-! ## A257636.P11359821093546840325

`∩[A095179(n+1)-1, A095179(n+1)]`
-/

namespace A257636.P11359821093546840325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257636.P11359821093546840325

/-! ## A257636.P12751728011570015334

`∩[A095179(n+1), A023443(A095179(n+1))]`
-/

namespace A257636.P12751728011570015334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095179 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257636.P12751728011570015334

/-! ## A257636.P1878959377960471947

`∩[eq[1, A085324(n+1)], A095179(n+1)]`
-/

namespace A257636.P1878959377960471947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085324 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A257636.P1878959377960471947

/-! ## A257636.P11419483405334750056

`eq[A085324(n+1)², A284289(A004086(n))]`
-/

namespace A257636.P11419483405334750056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085324 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257636.P11419483405334750056

/-! ## A257636.P6639380122144880338

`∩[eq[1, A058998(n+1)], A095179(n+1)]`
-/

namespace A257636.P6639380122144880338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058998 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A257636.P6639380122144880338

/-!
# A257639: a(n) is the minimal position at which the maximal value of row n appears in row n of triangle A008289.

The programs for A257639, there is no canonical definition to state claims against.
-/

/-! ## A257639.P13025290866788386165

`A339276(A260732(n)+1)`
-/

namespace A257639.P13025290866788386165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A260732 n + 1).toNat

end

end A257639.P13025290866788386165

/-! ## A257639.P7088485309169857814

`A339276(or(1, A260732(n)))`
-/

namespace A257639.P7088485309169857814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (Int.lor 1 (A260732 n)).toNat

end

end A257639.P7088485309169857814

/-! ## A257639.P8471350781285990263

`A048766(∑[A167968(n+1)+A048766(n)])`
-/

namespace A257639.P8471350781285990263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167968 (n + 1) + A048766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257639.P8471350781285990263

/-! ## A257639.P7023905059702014635

`A110591(A067592(n)+A004525(n))`
-/

namespace A257639.P7023905059702014635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A067592 n + A004525 n).toNat

end

end A257639.P7023905059702014635

/-! ## A257639.P17903240016367197953

`A110591(A123108(n)+A067592(n))`
-/

namespace A257639.P17903240016367197953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A123108 n + A067592 n).toNat

end

end A257639.P17903240016367197953

/-! ## A257639.P3351096717885611938

`A084558(A000009(A213856(n+1)))`
-/

namespace A257639.P3351096717885611938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A000009 (A213856 (n + 1)).toNat).toNat

end

end A257639.P3351096717885611938

/-! ## A257639.P4378746460302331249

`A258198(A034296(n))`
-/

namespace A257639.P4378746460302331249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (A034296 n).toNat

end

end A257639.P4378746460302331249

/-! ## A257639.P9328584348749795264

`A097944(A192432(n))`
-/

namespace A257639.P9328584348749795264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A192432 n).toNat

end

end A257639.P9328584348749795264

/-!
# A257641: Central terms of triangle A103284.

The programs for A257641, there is no canonical definition to state claims against.
-/

/-! ## A257641.P11423408630092879882

`A103284(∑[4*n])`
-/

namespace A257641.P11423408630092879882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103284 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257641.P11423408630092879882

/-! ## A257641.P5496242108744426440

`A103284(A106232(n+1))+A002262(∑[n])`
-/

namespace A257641.P5496242108744426440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103284 (A106232 (n + 1)).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257641.P5496242108744426440

/-! ## A257641.P18341752073075780257

`char[A002262(n)]*A103284(A106232(n+1))`
-/

namespace A257641.P18341752073075780257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A103284 (A106232 (n + 1)).toNat

end

end A257641.P18341752073075780257

/-! ## A257641.P139870108915740664

`A103284(A106232(n+1))%A255022(n+1)`
-/

namespace A257641.P139870108915740664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103284 (A106232 (n + 1)).toNat) (A255022 (n + 1))

end

end A257641.P139870108915740664

/-! ## A257641.P4131170575205427740

`char[A239621(n+1)]*A103284(A106232(n+1))`
-/

namespace A257641.P4131170575205427740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A103284 (A106232 (n + 1)).toNat

end

end A257641.P4131170575205427740

/-! ## A257641.P6183710390508468510

`A103284(A106232(n+1))^A324535(A012883(n+1))`
-/

namespace A257641.P6183710390508468510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103284 (A106232 (n + 1)).toNat : ℚ) ^ (A324535 (A012883 (n + 1)).toNat : ℤ)

end

end A257641.P6183710390508468510

/-!
# A257642: Positive integers N such that there is a triangle with rational sides having area and perimeter both equal N.

The programs for A257642, there is no canonical definition to state claims against.
-/

/-! ## A257642.P16650337598273294311

`A337088(n+10)+A337074(6*(n+2))`
-/

namespace A257642.P16650337598273294311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337088 (n + 10) + A337074 (6 * (n + 2))

end

end A257642.P16650337598273294311

/-! ## A257642.P6676121964450100342

`A337088(A062399(n)+10)`
-/

namespace A257642.P6676121964450100342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337088 (A062399 n + 10).toNat

end

end A257642.P6676121964450100342

/-! ## A257642.P12303661256388831267

`A337088(A120126(n)+10)`
-/

namespace A257642.P12303661256388831267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337088 (A120126 n + 10).toNat

end

end A257642.P12303661256388831267

/-! ## A257642.P14865438526739358910

`A135412(A062399(n)+11)`
-/

namespace A257642.P14865438526739358910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135412 (A062399 n + 11).toNat

end

end A257642.P14865438526739358910

/-! ## A257642.P856602709892752718

`A135412(A120126(n)+11)`
-/

namespace A257642.P856602709892752718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135412 (A120126 n + 11).toNat

end

end A257642.P856602709892752718

/-!
# A257644: First differences of A264100.

The programs for A257644, the canonical program `A257644.P13767430751851982075` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257644 has offset 0).

The definition of A257644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257644.P13767430751851982075

`∑[∑{d}[n, #+1]]+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257644

/-- `∑[∑{d}[n, #+1]]+1` -/
def P13767430751851982075.Spec : Prop :=
  ∀ n, (P13767430751851982075.a n : ℤ) = A257644 n

theorem P13767430751851982075.correct : P13767430751851982075.Spec := by
  intro n
  simp only [A257644]

end A257644

/-! ## A257644.P593641433495425586

`∑{d}[n, #+1]+a(n-1)` with `a(0)=1`
-/

namespace A257644.P593641433495425586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 1) + a (n - 1)

end

end A257644.P593641433495425586

namespace A257644

/-- `∑{d}[n, #+1]+a(n-1)` -/
def P593641433495425586.Spec : Prop :=
  ∀ n, (P593641433495425586.a n : ℤ) = A257644 n

end A257644

/-! ## A257644.P2149798879990074072

`A007503(n)+a(n-1)` with `a(0)=1`
-/

namespace A257644.P2149798879990074072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007503 n + a (n - 1)

end

end A257644.P2149798879990074072

namespace A257644

/-- `A007503(n)+a(n-1)` -/
def P2149798879990074072.Spec : Prop :=
  ∀ n, P2149798879990074072.a n = A257644 n

end A257644

/-! ## A257644.P17772315092204880379

`a(n-1)+A163163(n)+n` with `a(0)=1`
-/

namespace A257644.P17772315092204880379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A163163 n + (n : ℤ))

end

end A257644.P17772315092204880379

namespace A257644

/-- `a(n-1)+A163163(n)+n` -/
def P17772315092204880379.Spec : Prop :=
  ∀ n, P17772315092204880379.a n = A257644 n

end A257644

/-! ## A257644.P16668666051853302829

`A160664(n)+A006218(n)`
-/

namespace A257644.P16668666051853302829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n + A006218 n

end

end A257644.P16668666051853302829

namespace A257644

/-- `A160664(n)+A006218(n)` -/
def P16668666051853302829.Spec : Prop :=
  ∀ n, P16668666051853302829.a n = A257644 n

end A257644

/-! ## A257644.P15822954020021887810

`A054519(n)+A160664(n)-1`
-/

namespace A257644.P15822954020021887810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n + (A160664 n - 1)

end

end A257644.P15822954020021887810

namespace A257644

/-- `A054519(n)+A160664(n)-1` -/
def P15822954020021887810.Spec : Prop :=
  ∀ n, P15822954020021887810.a n = A257644 n

end A257644

/-! ## A257644.P351732102137650948

`a(n-1)+A000203(n)+A000005(n)` with `a(0)=1`
-/

namespace A257644.P351732102137650948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000203 n + A000005 n)

end

end A257644.P351732102137650948

namespace A257644

/-- `a(n-1)+A000203(n)+A000005(n)` -/
def P351732102137650948.Spec : Prop :=
  ∀ n, P351732102137650948.a n = A257644 n

end A257644

/-! ## A257644.P11830307700538353059

`∑[A007503(n+1)]+1-A007503(n+1)`
-/

namespace A257644.P11830307700538353059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A007503 (n + 1))

end

end A257644.P11830307700538353059

namespace A257644

/-- `∑[A007503(n+1)]+1-A007503(n+1)` -/
def P11830307700538353059.Spec : Prop :=
  ∀ n, P11830307700538353059.a n = A257644 n

end A257644

/-! ## A257644.P6989836453534133972

`A024916(n+1)+A054519(n)-A000203(n+1)`
-/

namespace A257644.P6989836453534133972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A054519 n - A000203 (n + 1))

end

end A257644.P6989836453534133972

namespace A257644

/-- `A024916(n+1)+A054519(n)-A000203(n+1)` -/
def P6989836453534133972.Spec : Prop :=
  ∀ n, P6989836453534133972.a n = A257644 n

end A257644

/-! ## A257644.P8781905530055017154

`Δ[A264100(n)]`
-/

namespace A257644.P8781905530055017154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257644.P8781905530055017154

namespace A257644

/-- `Δ[A264100(n)]` -/
def P8781905530055017154.Spec : Prop :=
  ∀ n, P8781905530055017154.a n = A257644 n

end A257644

/-! ## A257644.P12440317459188866537

`A264100(n+1)-A264100(n)`
-/

namespace A257644.P12440317459188866537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264100 (n + 1) - A264100 n

end

end A257644.P12440317459188866537

namespace A257644

/-- `A264100(n+1)-A264100(n)` -/
def P12440317459188866537.Spec : Prop :=
  ∀ n, P12440317459188866537.a n = A257644 n

end A257644

/-!
# A257645: a(n) = 15*n + 14.

The programs for A257645, the canonical program `A257645.P14432218990266036054` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257645 has offset 0).

The definition of A257645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n+14` (program `A257645.P14432218990266036054`, by `A257645.P14432218990266036054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257645.P14432218990266036054

`15*n+14`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A257645

/-- `15*n+14` -/
def P14432218990266036054.Spec : Prop :=
  ∀ n, (P14432218990266036054.a n : ℤ) = A257645 n

theorem P14432218990266036054.correct : P14432218990266036054.Spec := by
  intro n
  simp only [A257645]

end A257645

/-!
# A257648: Numbers m such that both p=2*m^2+11 and q=2*p^2+11 are prime.

The programs for A257648, there is no canonical definition to state claims against.
-/

/-! ## A257648.P16365807133138962090

`lt[A191658(n+1)/6, ∑{e}[n+1, #]]`
-/

namespace A257648.P16365807133138962090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191658 (n + 1) : ℚ) / 6

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A257648.P16365807133138962090

/-! ## A257648.P10176684136375177871

`A194848(A185134(n))+n`
-/

namespace A257648.P10176684136375177871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194848 (A185134 n).toNat + (n : ℤ)

end

end A257648.P10176684136375177871

/-! ## A257648.P15817915036015886855

`∑[A374435(A061902(n+1))]`
-/

namespace A257648.P15817915036015886855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374435 (A061902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257648.P15817915036015886855

/-!
# A257649: Squares that are the concatenation of two integers (without leading zeros) the sum of which is also a square.

The programs for A257649, there is no canonical definition to state claims against.
-/

/-! ## A257649.P9574208107291703173

`A255130(record[A255129(n+6)])²`
-/

namespace A257649.P9574208107291703173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255129 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255130 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A257649.P9574208107291703173

/-! ## A257649.P11849392540380312002

`lt[A212367(n), A098050(n)²]²`
-/

namespace A257649.P11849392540380312002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098050 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A257649.P11849392540380312002

/-! ## A257649.P8233866672980819514

`eq[6, A001222(A340690(n+1))]²`
-/

namespace A257649.P8233866672980819514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A340690 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A257649.P8233866672980819514

/-!
# A257651: Expansion of chi(x)^2 * f(-x^6)^3 in powers of x where chi(), f() are Ramanujan theta functions.

The programs for A257651, there is no canonical definition to state claims against.
-/

/-! ## A257651.P14513872941216808652

`A213592(2*n+1)`
-/

namespace A257651.P14513872941216808652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213592 (2 * n + 1)

end

end A257651.P14513872941216808652

/-! ## A257651.P15108118086315302342

`char[A004442(n)]*A213592(A005408(n))`
-/

namespace A257651.P15108118086315302342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A213592 (A005408 n).toNat

end

end A257651.P15108118086315302342

/-! ## A257651.P17191878682555839734

`A304820(A328571(n+1))+A213592(n+1+n)`
-/

namespace A257651.P17191878682555839734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304820 (A328571 (n + 1)).toNat + A213592 (n + 1 + n)

end

end A257651.P17191878682555839734

/-! ## A257651.P16199681833400867848

`A005875(A016789(n))/12`
-/

namespace A257651.P16199681833400867848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (A016789 n).toNat : ℚ) / 12

end

end A257651.P16199681833400867848

/-! ## A257651.P8834476099274608957

`A005875(Δ[A005449(n)])/12`
-/

namespace A257651.P8834476099274608957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (f1 (n + 1) - f1 n).toNat : ℚ) / 12

end

end A257651.P8834476099274608957

/-!
# A257652: The semiprimes which set new records for the sum of their decimal digits.

The programs for A257652, there is no canonical definition to state claims against.
-/

/-! ## A257652.P3847419404655993482

`A213653(record[A175013(n+1)])`
-/

namespace A257652.P3847419404655993482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213653 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257652.P3847419404655993482

/-! ## A257652.P14874154404295982354

`A213653(record[A007953(A001358(n+1))])`
-/

namespace A257652.P14874154404295982354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213653 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257652.P14874154404295982354

/-! ## A257652.P186946870569531504

`A213653(record[A007953(A246569(n+1))])`
-/

namespace A257652.P186946870569531504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A246569 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213653 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257652.P186946870569531504

/-!
# A257653: Expansion of f(-x^2)^3 * phi(x^3) / f(-x^6) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A257653, there is no canonical definition to state claims against.
-/

/-! ## A257653.P5765606985397329656

`A213618(4*n)`
-/

namespace A257653.P5765606985397329656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213618 (4 * n)

end

end A257653.P5765606985397329656

/-! ## A257653.P13822532816130709268

`A213618(A008574(n))+A000007(n)`
-/

namespace A257653.P13822532816130709268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213618 (A008574 n).toNat + A000007 n

end

end A257653.P13822532816130709268

/-! ## A257653.P18140119470856829917

`A213618(A008574(n))+A000038(n)/2`
-/

namespace A257653.P18140119470856829917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213618 (A008574 n).toNat : ℚ) + (A000038 n : ℚ) / 2

end

end A257653.P18140119470856829917

/-! ## A257653.P16782200908155752266

`A213618(A008574(n))+A204843(A008578(n+1))`
-/

namespace A257653.P16782200908155752266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213618 (A008574 n).toNat + A204843 (A008578 (n + 1)).toNat

end

end A257653.P16782200908155752266

/-! ## A257653.P1169111085738466729

`A213618(A008574(n))+A003982(A000217(n))`
-/

namespace A257653.P1169111085738466729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213618 (A008574 n).toNat + A003982 (A000217 n).toNat

end

end A257653.P1169111085738466729

/-! ## A257653.P2360617789351207620

`A213618(A008574(n))+A204843(n²+1)`
-/

namespace A257653.P2360617789351207620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213618 (A008574 n).toNat + A204843 (n ^ 2 + 1)

end

end A257653.P2360617789351207620

/-!
# A257654: Number of unlabeled rooted trees with n nodes where the outdegrees (branching factors) of adjacent nodes differ by exactly one.

The programs for A257654, there is no canonical definition to state claims against.
-/

/-! ## A257654.P2283005098229861574

`A027358(n+2)-A103673(A000389(n))`
-/

namespace A257654.P2283005098229861574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027358 (n + 2) - A103673 (A000389 n).toNat

end

end A257654.P2283005098229861574

/-! ## A257654.P10552681452327979867

`val(A061885(A018321(n+1)), 3)`
-/

namespace A257654.P10552681452327979867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061885 (A018321 (n + 1)).toNat).toNat 3

end

end A257654.P10552681452327979867

/-! ## A257654.P2563637580119868709

`A043290(A153643(n))-A289813(A008612(n))`
-/

namespace A257654.P2563637580119868709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A153643 n).toNat - A289813 (A008612 n).toNat

end

end A257654.P2563637580119868709

/-! ## A257654.P1976857095677078826

`A102679(A022112(n)+11)`
-/

namespace A257654.P1976857095677078826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A022112 n + 11).toNat

end

end A257654.P1976857095677078826

/-! ## A257654.P16627646114310749594

`A001221(gcd(2*n, A010085(n)))`
-/

namespace A257654.P16627646114310749594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (2 * n : ℤ) (A010085 n))

end

end A257654.P16627646114310749594

/-!
# A257655: Expansion of f(x^3, x^9) * f(x^6, x^6) / f(-x, -x^2) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A257655, there is no canonical definition to state claims against.
-/

/-! ## A257655.P4433498460620753149

`A097196(2*n)`
-/

namespace A257655.P4433498460620753149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097196 (2 * n)

end

end A257655.P4433498460620753149

/-! ## A257655.P6213653011522588248

`A097196(n+n)+A069980(gcd(n, n+1))`
-/

namespace A257655.P6213653011522588248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097196 (n + n) + A069980 (Nat.gcd n (n + 1))

end

end A257655.P6213653011522588248

/-! ## A257655.P2869297859630521430

`lcm(A097196(A005408(n)-1), A242179(n))`
-/

namespace A257655.P2869297859630521430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097196 (A005408 n - 1).toNat) (A242179 n)

end

end A257655.P2869297859630521430

/-! ## A257655.P77133087584611937

`A097196(n+n)+A022080(A328580(n))`
-/

namespace A257655.P77133087584611937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097196 (n + n) + A022080 (A328580 n).toNat

end

end A257655.P77133087584611937

/-! ## A257655.P13917067641064322925

`-A260574(4*n+1)`
-/

namespace A257655.P13917067641064322925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A260574 (4 * n + 1)

end

end A257655.P13917067641064322925

/-! ## A257655.P4641808667777268415

`abs(A260574(A005408(2*n)))`
-/

namespace A257655.P4641808667777268415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260574 (A005408 (2 * n)).toNat|

end

end A257655.P4641808667777268415

/-! ## A257655.P16634031592802060414

`abs(A260574(A004277(2*n+1)-1))`
-/

namespace A257655.P16634031592802060414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260574 (A004277 (2 * n + 1) - 1).toNat|

end

end A257655.P16634031592802060414

/-! ## A257655.P18356859189951413786

`A097196(A005843(n))/A014963(A008458(n))`
-/

namespace A257655.P18356859189951413786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097196 (A005843 n).toNat : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A257655.P18356859189951413786

/-! ## A257655.P973413820527950579

`A179527((n+1)²)+A097196(n+n)`
-/

namespace A257655.P973413820527950579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 ((n + 1) ^ 2) + A097196 (n + n)

end

end A257655.P973413820527950579

/-!
# A257656: Expansion of f(x) * f(x^3) * f(-x^4)^2 * chi(-x^6)^2 in powers of x where chi(), f() are Ramanujan theta functions.

The programs for A257656, there is no canonical definition to state claims against.
-/

/-! ## A257656.P3837769068590916482

`(-1)^n*A109039(n)`
-/

namespace A257656.P3837769068590916482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A109039 n

end

end A257656.P3837769068590916482

/-! ## A257656.P7072392405524986524

`(A266684(n)+A260301(n))/2`
-/

namespace A257656.P7072392405524986524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266684 n + A260301 n : ℚ) / 2

end

end A257656.P7072392405524986524

/-! ## A257656.P14171281150717120785

`A109039(n)/A109039(Δ[A008619(n)])`
-/

namespace A257656.P14171281150717120785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109039 n : ℚ) / (A109039 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A257656.P14171281150717120785

/-! ## A257656.P16689279833852559513

`A109039(n)*A113417(n)/A113419(n)`
-/

namespace A257656.P16689279833852559513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109039 n * A113417 n : ℚ) / (A113419 n : ℚ)

end

end A257656.P16689279833852559513

/-! ## A257656.P2660965729829629287

`A109039(n)*A209940(n)/A258096(n)`
-/

namespace A257656.P2660965729829629287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109039 n * A209940 n : ℚ) / (A258096 n : ℚ)

end

end A257656.P2660965729829629287

/-! ## A257656.P9779719274158338593

`(A260301(A008585(n))+A260301(n))/2`
-/

namespace A257656.P9779719274158338593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260301 (A008585 n).toNat + A260301 n : ℚ) / 2

end

end A257656.P9779719274158338593

/-! ## A257656.P5449057862392190786

`(A266684(A008585(n))+A266684(n))/2`
-/

namespace A257656.P5449057862392190786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266684 (A008585 n).toNat + A266684 n : ℚ) / 2

end

end A257656.P5449057862392190786

/-! ## A257656.P16530214565287274353

`(A266684(n)+A266684(A305548(n)))/2`
-/

namespace A257656.P16530214565287274353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266684 n + A266684 (A305548 n).toNat : ℚ) / 2

end

end A257656.P16530214565287274353

/-!
# A257657: Expansion of f(-x, -x) * f(-x^6, -x^6) / f(x, x^2) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A257657, there is no canonical definition to state claims against.
-/

/-! ## A257657.P15698791308648347586

`2*A260413(n)-A053250(n)`
-/

namespace A257657.P15698791308648347586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260413 n - A053250 n

end

end A257657.P15698791308648347586

/-! ## A257657.P2621776460936715546

`2*A260412(n)-A132969(n)`
-/

namespace A257657.P2621776460936715546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260412 n - A132969 n

end

end A257657.P2621776460936715546

/-! ## A257657.P9273864484908574169

`2*A260412(n)-abs(A132970(n))`
-/

namespace A257657.P9273864484908574169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260412 n - |A132970 n|

end

end A257657.P9273864484908574169

/-! ## A257657.P17365792496516576021

`A005843(A260412(n))-A132969(n)`
-/

namespace A257657.P17365792496516576021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A260412 n).toNat - A132969 n

end

end A257657.P17365792496516576021

/-! ## A257657.P13530482282646558940

`A005843(A260412(n))-abs(A132970(n))`
-/

namespace A257657.P13530482282646558940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A260412 n).toNat - |A132970 n|

end

end A257657.P13530482282646558940

/-! ## A257657.P2450316921923205716

`A005843(A260412(n))-A033999(n)*A132970(n)`
-/

namespace A257657.P2450316921923205716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A260412 n).toNat - A033999 n * A132970 n

end

end A257657.P2450316921923205716

/-! ## A257657.P6678063752640158651

`A005843(A260412(n))-(A053250(n)+2*A053251(n))`
-/

namespace A257657.P6678063752640158651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A260412 n).toNat - (A053250 n + 2 * A053251 n)

end

end A257657.P6678063752640158651

/-!
# A257658: Primes of the form A060735(k) +- 1, where A060735 lists multiples of primorials (A002110) less than the next larger primorial.

The programs for A257658, there is no canonical definition to state claims against.
-/

/-! ## A257658.P14828036389923153108

`eq[A003415(n), A117358(A072634(n+1))]`
-/

namespace A257658.P14828036389923153108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A072634 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257658.P14828036389923153108

/-! ## A257658.P18070850776092095884

`eq[A003415(n), A368392(A008289(n+1))]`
-/

namespace A257658.P18070850776092095884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368392 (A008289 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257658.P18070850776092095884

/-! ## A257658.P11506508775910217282

`eq[A032741(n), A366906(A208330(n+1))]`
-/

namespace A257658.P11506508775910217282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366906 (A208330 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257658.P11506508775910217282

/-! ## A257658.P17452181213641780807

`eq[A003415(n), A036602(A036602(n+2))]`
-/

namespace A257658.P17452181213641780807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036602 (A036602 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257658.P17452181213641780807

/-! ## A257658.P3366682068531217198

`lt[A059590(A062584(n)), A066938(n+1)]`
-/

namespace A257658.P3366682068531217198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A062584 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257658.P3366682068531217198

/-!
# A257661: Number of n X n upper triangular matrices (m_{i,j}) of nonnegative integers with (Sum_{j=h..n} m_{h,j} - Sum_{i=1..h-1} m_{i,h}) in {-1,+1} for all h in {1,...,n}.

The programs for A257661, there is no canonical definition to state claims against.
-/

/-! ## A257661.P415722988676313034

`A072000(∑[n^n]+3)`
-/

namespace A257661.P415722988676313034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A257661.P415722988676313034

/-! ## A257661.P10705880834117822246

`A110855(∑[4*n])+∑[∑{e}[n, #]]`
-/

namespace A257661.P10705880834117822246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110855 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A257661.P10705880834117822246

/-!
# A257662: Least prime q such that p(q*n) is prime, where p(.) is the partition function given by A000041.

The programs for A257662, there is no canonical definition to state claims against.
-/

/-! ## A257662.P13568130033036636066

`A247142(A374427(n)^(n+1))`
-/

namespace A257662.P13568130033036636066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247142 (A374427 n ^ (n + 1)).toNat

end

end A257662.P13568130033036636066

/-!
# A257665: Totient of the n-th perfect number.

The programs for A257665, there is no canonical definition to state claims against.
-/

/-! ## A257665.P11329092044245167425

`A139096(n+1)/2`
-/

namespace A257665.P11329092044245167425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139096 (n + 1) : ℚ) / 2

end

end A257665.P11329092044245167425

/-! ## A257665.P13000813334632772500

`floor(A133049(n+1)/4)`
-/

namespace A257665.P13000813334632772500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133049 (n + 1) : ℚ) / 4⌋

end

end A257665.P13000813334632772500

/-! ## A257665.P9143929300776377483

`floor((A000668(n+1)/2)²)`
-/

namespace A257665.P9143929300776377483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000668 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A257665.P9143929300776377483

/-! ## A257665.P7852371201184416941

`floor((A343733(n+2)/2)²)`
-/

namespace A257665.P7852371201184416941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A343733 (n + 2) : ℚ) / 2) ^ 2⌋

end

end A257665.P7852371201184416941

/-! ## A257665.P16741608224893294070

`floor((A139257(n+1)/4)²)`
-/

namespace A257665.P16741608224893294070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A139257 (n + 1) : ℚ) / 4) ^ 2⌋

end

end A257665.P16741608224893294070

/-!
# A257666: Number of ways of placing n balls into boxes 1,2,... in such a way that any two adjacent boxes contain at least 4 balls.

The programs for A257666, there is no canonical definition to state claims against.
-/

/-! ## A257666.P16854110816381992860

`or(A263453(2*n+1), A336737(A000213(n)))`
-/

namespace A257666.P16854110816381992860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A263453 (2 * n + 1)) (A336737 (A000213 n).toNat)

end

end A257666.P16854110816381992860

/-!
# A257667: Primes containing a digit 5.

The programs for A257667, there is no canonical definition to state claims against.
-/

/-! ## A257667.P554309205195606198

`p?[A062671(n+1)]`
-/

namespace A257667.P554309205195606198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257667.P554309205195606198

/-! ## A257667.P13229703052694133680

`∩[A062671(n+1), A373789(n+1)]`
-/

namespace A257667.P13229703052694133680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P13229703052694133680

/-! ## A257667.P6394644161661252476

`∩[A015919(n+1), A062671(n+1)]`
-/

namespace A257667.P6394644161661252476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P6394644161661252476

/-! ## A257667.P11188684682809401119

`∩[A062671(n+1), A380468(n+1)]`
-/

namespace A257667.P11188684682809401119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P11188684682809401119

/-! ## A257667.P3820786594581698001

`∩[A062671(n+1), A380525(n+1)]`
-/

namespace A257667.P3820786594581698001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P3820786594581698001

/-! ## A257667.P10485700977148781590

`∩[A062671(n+1), A358673(n+1)]`
-/

namespace A257667.P10485700977148781590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P10485700977148781590

/-! ## A257667.P9059873081602872627

`∩[A062671(n+1), A179336(n+1)]`
-/

namespace A257667.P9059873081602872627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P9059873081602872627

/-! ## A257667.P17480679173783422663

`∩[A062671(n+1), A106121(n+1)]`
-/

namespace A257667.P17480679173783422663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P17480679173783422663

/-! ## A257667.P280927203380881072

`∩[A062671(n+1), A106120(n+1)]`
-/

namespace A257667.P280927203380881072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P280927203380881072

/-! ## A257667.P11949938536817127671

`∩[A062671(n+1), A106119(n+1)]`
-/

namespace A257667.P11949938536817127671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P11949938536817127671

/-! ## A257667.P9314401974847858087

`∩[A062671(n+1), A065396(n+1)]`
-/

namespace A257667.P9314401974847858087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P9314401974847858087

/-! ## A257667.P15676902941595977717

`∩[A062671(n+1), A106118(n+1)]`
-/

namespace A257667.P15676902941595977717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P15676902941595977717

/-! ## A257667.P15428565486201543669

`∩[A062671(n+1), A108719(n+1)]`
-/

namespace A257667.P15428565486201543669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P15428565486201543669

/-! ## A257667.P4477878873464807006

`∩[A062671(n+1), A138837(n+1)]`
-/

namespace A257667.P4477878873464807006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P4477878873464807006

/-! ## A257667.P6390606862739564446

`∩[A062671(n+1), A215848(n+1)]`
-/

namespace A257667.P6390606862739564446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P6390606862739564446

/-! ## A257667.P5068657379160841017

`∩[A000040(n+1), A062671(n+1)]`
-/

namespace A257667.P5068657379160841017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P5068657379160841017

/-! ## A257667.P5938502633971411518

`∩[A006005(n+1), A062671(n+1)]`
-/

namespace A257667.P5938502633971411518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P5938502633971411518

/-! ## A257667.P4046788463853129226

`∩[A008578(n+1), A062671(n+1)]`
-/

namespace A257667.P4046788463853129226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P4046788463853129226

/-! ## A257667.P4708829794889957963

`∩[A033946(n+1), A062671(n+1)]`
-/

namespace A257667.P4708829794889957963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P4708829794889957963

/-! ## A257667.P16458306594570761305

`∩[A045344(n+1), A062671(n+1)]`
-/

namespace A257667.P16458306594570761305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257667.P16458306594570761305

/-!
# A257668: Primes containing a digit 7.

The programs for A257668, there is no canonical definition to state claims against.
-/

/-! ## A257668.P17290130836536002551

`p?[A062675(n+1)]`
-/

namespace A257668.P17290130836536002551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257668.P17290130836536002551

/-! ## A257668.P16231605457923997406

`∩[A045319(n+1), A062675(n+1)]`
-/

namespace A257668.P16231605457923997406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P16231605457923997406

/-! ## A257668.P11066302946627699930

`∩[A000040(n+1), A062675(n+1)]`
-/

namespace A257668.P11066302946627699930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P11066302946627699930

/-! ## A257668.P5621366480522844548

`∩[A006005(n+1), A062675(n+1)]`
-/

namespace A257668.P5621366480522844548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P5621366480522844548

/-! ## A257668.P1188592690680213271

`∩[A062675(n+1), A093515(n+1)]`
-/

namespace A257668.P1188592690680213271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P1188592690680213271

/-! ## A257668.P11628521386216456113

`∩[A008578(n+1), A062675(n+1)]`
-/

namespace A257668.P11628521386216456113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P11628521386216456113

/-! ## A257668.P388912268720842266

`∩[A062675(n+1), A067126(n+1)]`
-/

namespace A257668.P388912268720842266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P388912268720842266

/-! ## A257668.P216387559341736528

`∩[A055977(n+1), A062675(n+1)]`
-/

namespace A257668.P216387559341736528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P216387559341736528

/-! ## A257668.P16180701569184748438

`∩[A062675(n+1), A115919(n+1)]`
-/

namespace A257668.P16180701569184748438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P16180701569184748438

/-! ## A257668.P3655429404847766851

`∩[A062675(n+1), A084111(n+1)]`
-/

namespace A257668.P3655429404847766851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P3655429404847766851

/-! ## A257668.P7374410805230680147

`filter[A062675(n+1), A010051(#)]`
-/

namespace A257668.P7374410805230680147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A257668.P7374410805230680147

/-! ## A257668.P3632713717681242952

`filter[A062675(n+1), A174897(#)]`
-/

namespace A257668.P3632713717681242952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A257668.P3632713717681242952

/-! ## A257668.P11001006439202583296

`∩[A062675(n+1), A369254(n+1)]`
-/

namespace A257668.P11001006439202583296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P11001006439202583296

/-! ## A257668.P8825222627609507098

`∩[A062675(n+1), A229125(n+1)]`
-/

namespace A257668.P8825222627609507098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P8825222627609507098

/-! ## A257668.P10702540052247820465

`∩[A062675(n+1), A111688(n+1)]`
-/

namespace A257668.P10702540052247820465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P10702540052247820465

/-! ## A257668.P17892025628254326189

`∩[A062675(n+1), A173919(n+1)]`
-/

namespace A257668.P17892025628254326189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P17892025628254326189

/-! ## A257668.P12675915525610818426

`∩[A062675(n+1), A048461(n)]`
-/

namespace A257668.P12675915525610818426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048461 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P12675915525610818426

/-! ## A257668.P4919366674272656049

`∩[A054010(n+1), A062675(n+1)]`
-/

namespace A257668.P4919366674272656049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P4919366674272656049

/-! ## A257668.P16665104327198213155

`∩[A062675(n+1), A342081(n+1)]`
-/

namespace A257668.P16665104327198213155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P16665104327198213155

/-! ## A257668.P8191362915353374471

`∩[A062675(n+1), A365406(n+1)]`
-/

namespace A257668.P8191362915353374471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257668.P8191362915353374471

/-!
# A257669: Number of terms in the sigma(x) -> x subtree whose root is n.

The programs for A257669, there is no canonical definition to state claims against.
-/

/-! ## A257669.P15926488986431738580

`1+A241954(n+1)%(n+1)`
-/

namespace A257669.P15926488986431738580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A241954 (n + 1)) (n + 1 : ℤ)

end

end A257669.P15926488986431738580

/-! ## A257669.P9250625176787542059

`A241954(n+1)+A057427(n)`
-/

namespace A257669.P9250625176787542059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1) + A057427 n

end

end A257669.P9250625176787542059

/-! ## A257669.P13630701802137156968

`A241954(n+1)-A057428(n)`
-/

namespace A257669.P13630701802137156968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1) - A057428 n

end

end A257669.P13630701802137156968

/-! ## A257669.P5785375942775433322

`A241954(n+1)+1-A000007(n)`
-/

namespace A257669.P5785375942775433322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1) + (1 - A000007 n)

end

end A257669.P5785375942775433322

/-! ## A257669.P14941810355704272498

`A241954(n+1)+and(1, A019320(a(n-1)))` with `a(0)=1`
-/

namespace A257669.P14941810355704272498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241954 (n + 1) + Int.land 1 (A019320 (a (n - 1)).toNat)

end

end A257669.P14941810355704272498

/-! ## A257669.P9389896635932784328

`A241954(n+1)+A000007(A000007(n)*A241954(n+1))`
-/

namespace A257669.P9389896635932784328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1) + A000007 (A000007 n * A241954 (n + 1)).toNat

end

end A257669.P9389896635932784328

/-! ## A257669.P1520548083699212018

`A241954(n+1)+a(A007814(A051222(n+1)+1))` with `a(0)=1`
-/

namespace A257669.P1520548083699212018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241954 (n + 1) + a (A007814 (A051222 (n + 1) + 1).toNat).toNat

end

end A257669.P1520548083699212018

/-! ## A257669.P10634281467155817223

`A241954(n+1)+and(1, A019320(A004396(n)))`
-/

namespace A257669.P10634281467155817223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1) + Int.land 1 (A019320 (A004396 n).toNat)

end

end A257669.P10634281467155817223

/-! ## A257669.P7498682628230498461

`A241954(n+1)+and(1, A019320(n))`
-/

namespace A257669.P7498682628230498461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241954 (n + 1) + Int.land 1 (A019320 n)

end

end A257669.P7498682628230498461

/-!
# A257673: Triangle T(n,k), n>=0, 0<=k<=n, read by rows: row n is the inverse binomial transform of the n-th row of array A255961, which has the Euler transform of (j->j*k) in column k.

The programs for A257673, there is no canonical definition to state claims against.
-/

/-! ## A257673.P9290945280837018622

`A206294(n)+A082503(A102365(n))`
-/

namespace A257673.P9290945280837018622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 n + A082503 (A102365 n).toNat

end

end A257673.P9290945280837018622

/-! ## A257673.P6495944580052432538

`A206294(n)+A054908(A265435(n))`
-/

namespace A257673.P6495944580052432538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 n + A054908 (A265435 n).toNat

end

end A257673.P6495944580052432538

/-! ## A257673.P11077217811866857470

`A206294(n)+A054908(A276974(n))`
-/

namespace A257673.P11077217811866857470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 n + A054908 (A276974 n).toNat

end

end A257673.P11077217811866857470

/-! ## A257673.P16038563076617643151

`A014473(n)+A122542(n)*A155586(A055645(n))`
-/

namespace A257673.P16038563076617643151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A122542 n * A155586 (A055645 n).toNat

end

end A257673.P16038563076617643151

/-! ## A257673.P1487881165826509184

`A325280(n)+A004524(A157221(n))`
-/

namespace A257673.P1487881165826509184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 n + A004524 (A157221 n).toNat

end

end A257673.P1487881165826509184

/-!
# A257674: INVERT transform of planar partitions.

The programs for A257674, there is no canonical definition to state claims against.
-/

/-! ## A257674.P17846066677445583524

`A061017(A002001(n))-n`
-/

namespace A257674.P17846066677445583524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A002001 n).toNat - (n : ℤ)

end

end A257674.P17846066677445583524

/-! ## A257674.P10887116099455092798

`A008616(A337078(2*n+3)+floor((n/2)²))`
-/

namespace A257674.P10887116099455092798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A337078 (2 * n + 3) + ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A257674.P10887116099455092798

/-!
# A257675: a(n) = A257673(2n,n).

The programs for A257675, there is no canonical definition to state claims against.
-/

/-! ## A257675.P17750733670646113811

`A257673(∑[4*n])`
-/

namespace A257675.P17750733670646113811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257675.P17750733670646113811

/-! ## A257675.P16955571096188450521

`record[A257673(n)*A286561(n+1)]`
-/

namespace A257675.P16955571096188450521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 n * A286561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257675.P16955571096188450521

/-! ## A257675.P14798116673097925725

`record[gcd(A257673(4*n), A257673(n))]`
-/

namespace A257675.P14798116673097925725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257673 (4 * n)) (A257673 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257675.P14798116673097925725

/-! ## A257675.P17169448647721446998

`lcm(A033999(n), A257673(A046092(n)))`
-/

namespace A257675.P17169448647721446998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A257673 (A046092 n).toNat)

end

end A257675.P17169448647721446998

/-!
# A257676: Permutation of nonnegative integers obtained by traversing the tendrils (finite side-trees) of the binary beanstalk in depth-first order, with also each number in the infinite trunk visited, but only after its sister branch has been traversed first.

The programs for A257676, there is no canonical definition to state claims against.
-/

/-! ## A257676.P10296386180282210317

`Δ[A127326(A028246(n+1))]+n`
-/

namespace A257676.P10296386180282210317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127326 (A028246 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A257676.P10296386180282210317

/-!
# A257677: Inverse permutation to A257676.

The programs for A257677, there is no canonical definition to state claims against.
-/

/-! ## A257677.P11907698586719592827

`A001651(n+1)-A268241(A161358(A014817(n+1)))`
-/

namespace A257677.P11907698586719592827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) - A268241 (A161358 (A014817 (n + 1)).toNat).toNat

end

end A257677.P11907698586719592827

/-! ## A257677.P5382289452100625376

`Δ[A277017(A164460(n+4))]+n`
-/

namespace A257677.P5382289452100625376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277017 (A164460 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A257677.P5382289452100625376

/-!
# A257678: Fixed points of A257676 and A257677.

The programs for A257678, there is no canonical definition to state claims against.
-/

/-! ## A257678.P17975636547602414005

`eq[n, A257676(n)]`
-/

namespace A257678.P17975636547602414005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257678.P17975636547602414005

/-! ## A257678.P7845304966769686249

`A257676(record[gcd(n, A257676(n))])`
-/

namespace A257678.P7845304966769686249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A257676 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A257678.P7845304966769686249

/-! ## A257678.P18216641219759044240

`lt[A000045(abs(n-A257676(n))), 1]`
-/

namespace A257678.P18216641219759044240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |(n : ℤ) - A257676 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A257678.P18216641219759044240

/-! ## A257678.P7668816921777624474

`eq[n, A257677(n)]`
-/

namespace A257678.P7668816921777624474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257678.P7668816921777624474

/-! ## A257678.P15189242127724132372

`record[gcd(A005843(n), A257677(n))]`
-/

namespace A257678.P15189242127724132372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A257677 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257678.P15189242127724132372

/-!
# A257679: The smallest nonzero digit present in the factorial base representation (A007623) of n, 0 if no nonzero digits present.

The programs for A257679, there is no canonical definition to state claims against.
-/

/-! ## A257679.P4217769853788499512

`a(A257685(n))+1` with `a(0)=0`
-/

namespace A257679.P4217769853788499512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A257685 n).toNat + 1

end

end A257679.P4217769853788499512

/-! ## A257679.P7688908845554626727

`A215366(a(A257685(n)))` with `a(0)=0`
-/

namespace A257679.P7688908845554626727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A215366 (a (A257685 n).toNat).toNat

end

end A257679.P7688908845554626727

/-! ## A257679.P4578417648560419370

`A276949(A225901(n))`
-/

namespace A257679.P4578417648560419370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A225901 n).toNat

end

end A257679.P4578417648560419370

/-! ## A257679.P13606283102183510034

`A276949(A275848(n))`
-/

namespace A257679.P13606283102183510034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A275848 n).toNat

end

end A257679.P13606283102183510034

/-! ## A257679.P18012177776083533129

`A276949(A275958(n))`
-/

namespace A257679.P18012177776083533129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A275958 n).toNat

end

end A257679.P18012177776083533129

/-! ## A257679.P6383491508422898510

`A276949(A255411(n)-(A153880(n)+n))`
-/

namespace A257679.P6383491508422898510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A255411 n - (A153880 n + (n : ℤ))).toNat

end

end A257679.P6383491508422898510

/-! ## A257679.P1654799649737056668

`A276949(A255411(n)-n-A153880(n))`
-/

namespace A257679.P1654799649737056668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A255411 n - (n : ℤ) - A153880 n).toNat

end

end A257679.P1654799649737056668

/-! ## A257679.P2735809580546030840

`A055396(A275735(n))`
-/

namespace A257679.P2735809580546030840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A275735 n).toNat

end

end A257679.P2735809580546030840

/-! ## A257679.P8981211204962429476

`A276949(A273668(n))`
-/

namespace A257679.P8981211204962429476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A273668 n).toNat

end

end A257679.P8981211204962429476

/-! ## A257679.P1006069065820473170

`A051904(A278236(n))`
-/

namespace A257679.P1006069065820473170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A278236 n).toNat

end

end A257679.P1006069065820473170

/-!
# A257680: Characteristic function for A256450: 1 if there is at least one 1-digit present in the factorial representation of n (A007623), otherwise 0.

The programs for A257680, the canonical program `A257680.P15970174922144783842` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257680 has offset 0).

The definition of A257680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257680.P14856487694456574626

`char[A256450(n)]`
-/

namespace A257680.P14856487694456574626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A257680.P14856487694456574626

namespace A257680

/-- `char[A256450(n)]` -/
def P14856487694456574626.Spec : Prop :=
  ∀ n, (P14856487694456574626.a n : ℤ) = A257680 n

end A257680

/-! ## A257680.P9516290677255976849

`char[comp[A255411(n)]]`
-/

namespace A257680.P9516290677255976849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A257680.P9516290677255976849

namespace A257680

/-- `char[comp[A255411(n)]]` -/
def P9516290677255976849.Spec : Prop :=
  ∀ n, (P9516290677255976849.a n : ℤ) = A257680 n

end A257680

/-! ## A257680.P15970174922144783842

`round(atan(A257511(n)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A257680

/-- `round(atan(A257511(n)))` -/
def P15970174922144783842.Spec : Prop :=
  ∀ n, P15970174922144783842.a n = A257680 n

theorem P15970174922144783842.correct : P15970174922144783842.Spec := by
  intro n
  simp only [A257680]

end A257680

/-! ## A257680.P8365033470157152189

`log2(gcd(2, A275735(n)))`
-/

namespace A257680.P8365033470157152189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A275735 n) : ℝ)

end

end A257680.P8365033470157152189

namespace A257680

/-- `log2(gcd(2, A275735(n)))` -/
def P8365033470157152189.Spec : Prop :=
  ∀ n, P8365033470157152189.a n = (A257680 n : ℝ)

end A257680

/-! ## A257680.P5534500494313251919

`char[lt[1, A257079(n)]]`
-/

namespace A257680.P5534500494313251919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A257680.P5534500494313251919

namespace A257680

/-- `char[lt[1, A257079(n)]]` -/
def P5534500494313251919.Spec : Prop :=
  ∀ n, (P5534500494313251919.a n : ℤ) = A257680 n

end A257680

/-! ## A257680.P10942844505069733977

`char[lt[1, A275732(n)]]`
-/

namespace A257680.P10942844505069733977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A257680.P10942844505069733977

namespace A257680

/-- `char[lt[1, A275732(n)]]` -/
def P10942844505069733977.Spec : Prop :=
  ∀ n, (P10942844505069733977.a n : ℤ) = A257680 n

end A257680

/-! ## A257680.P667312547218668080

`floor(sqrt(sqrt(A257261(n))))`
-/

namespace A257680.P667312547218668080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A257261 n : ℝ))⌋

end

end A257680.P667312547218668080

namespace A257680

/-- `floor(sqrt(sqrt(A257261(n))))` -/
def P667312547218668080.Spec : Prop :=
  ∀ n, P667312547218668080.a n = A257680 n

end A257680

/-! ## A257680.P8174367920442621467

`round(A257681(n)/(n+1))`
-/

namespace A257680.P8174367920442621467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A257681 n : ℚ) / (n + 1 : ℚ))

end

end A257680.P8174367920442621467

namespace A257680

/-- `round(A257681(n)/(n+1))` -/
def P8174367920442621467.Spec : Prop :=
  ∀ n, P8174367920442621467.a n = A257680 n

end A257680

/-! ## A257680.P4531138905268997395

`A057427(A257081(n))`
-/

namespace A257680.P4531138905268997395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A257081 n).toNat

end

end A257680.P4531138905268997395

namespace A257680

/-- `A057427(A257081(n))` -/
def P4531138905268997395.Spec : Prop :=
  ∀ n, P4531138905268997395.a n = A257680 n

end A257680

/-! ## A257680.P13092930434126903201

`A057427(A275736(n))`
-/

namespace A257680.P13092930434126903201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A275736 n).toNat

end

end A257680.P13092930434126903201

namespace A257680

/-- `A057427(A275736(n))` -/
def P13092930434126903201.Spec : Prop :=
  ∀ n, P13092930434126903201.a n = A257680 n

end A257680

/-! ## A257680.P5911772383033110790

`A060576(A275736(n+1))`
-/

namespace A257680.P5911772383033110790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A275736 (n + 1)).toNat

end

end A257680.P5911772383033110790

namespace A257680

/-- `A060576(A275736(n+1))` -/
def P5911772383033110790.Spec : Prop :=
  ∀ n, P5911772383033110790.a n = A257680 n

end A257680

/-! ## A257680.P383729685867265635

`char[A273670(n)-A275840(n)]`
-/

namespace A257680.P383729685867265635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - A275840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A257680.P383729685867265635

namespace A257680

/-- `char[A273670(n)-A275840(n)]` -/
def P383729685867265635.Spec : Prop :=
  ∀ n, (P383729685867265635.a n : ℤ) = A257680 n

end A257680

/-! ## A257680.P7680681284339315283

`A006687(n+1)%A257079(n)`
-/

namespace A257680.P7680681284339315283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006687 (n + 1)) (A257079 n)

end

end A257680.P7680681284339315283

namespace A257680

/-- `A006687(n+1)%A257079(n)` -/
def P7680681284339315283.Spec : Prop :=
  ∀ n, P7680681284339315283.a n = A257680 n

end A257680

/-! ## A257680.P16037472134102854381

`A230746(n+1)%A257079(n)`
-/

namespace A257680.P16037472134102854381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230746 (n + 1)) (A257079 n)

end

end A257680.P16037472134102854381

namespace A257680

/-- `A230746(n+1)%A257079(n)` -/
def P16037472134102854381.Spec : Prop :=
  ∀ n, P16037472134102854381.a n = A257680 n

end A257680

/-! ## A257680.P8512923698549700675

`A282997(n+1)%A257079(n)`
-/

namespace A257680.P8512923698549700675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282997 (n + 1)) (A257079 n)

end

end A257680.P8512923698549700675

namespace A257680

/-- `A282997(n+1)%A257079(n)` -/
def P8512923698549700675.Spec : Prop :=
  ∀ n, P8512923698549700675.a n = A257680 n

end A257680

/-! ## A257680.P15790756334371341418

`1-∏{e}[A275732(n), A289814(#)]`
-/

namespace A257680.P15790756334371341418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A289814 (Nat.factorization (f1 n).natAbs p)

end

end A257680.P15790756334371341418

namespace A257680

/-- `1-∏{e}[A275732(n), A289814(#)]` -/
def P15790756334371341418.Spec : Prop :=
  ∀ n, P15790756334371341418.a n = A257680 n

end A257680

/-! ## A257680.P6883611201952883831

`1-char[A276340(n)+A276339(n)]`
-/

namespace A257680.P6883611201952883831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276340 n + A276339 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257680.P6883611201952883831

namespace A257680

/-- `1-char[A276340(n)+A276339(n)]` -/
def P6883611201952883831.Spec : Prop :=
  ∀ n, P6883611201952883831.a n = A257680 n

end A257680

/-! ## A257680.P9639847640890725252

`A007814(A020639(A275735(n)))`
-/

namespace A257680.P9639847640890725252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A020639 (A275735 n).toNat).toNat

end

end A257680.P9639847640890725252

namespace A257680

/-- `A007814(A020639(A275735(n)))` -/
def P9639847640890725252.Spec : Prop :=
  ∀ n, P9639847640890725252.a n = A257680 n

end A257680

/-! ## A257680.P14826699687834391115

`A030308(A000120(A275736(n))²)`
-/

namespace A257680.P14826699687834391115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A000120 (A275736 n).toNat ^ 2).toNat

end

end A257680.P14826699687834391115

namespace A257680

/-- `A030308(A000120(A275736(n))²)` -/
def P14826699687834391115.Spec : Prop :=
  ∀ n, P14826699687834391115.a n = A257680 n

end A257680

/-! ## A257680.P9718683659752505399

`A060130(A257686(A257081(n)²))`
-/

namespace A257680.P9718683659752505399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A257686 (A257081 n ^ 2).toNat).toNat

end

end A257680.P9718683659752505399

namespace A257680

/-- `A060130(A257686(A257081(n)²))` -/
def P9718683659752505399.Spec : Prop :=
  ∀ n, P9718683659752505399.a n = A257680 n

end A257680

/-!
# A257681: Column index of A257503: If A257685(n) = 0, then a(n) = A257682(n), otherwise a(n) = a(A257685(n)).

The programs for A257681, there is no canonical definition to state claims against.
-/

/-! ## A257681.P17379453011599905255

`A276951(A275848(n))`
-/

namespace A257681.P17379453011599905255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276951 (A275848 n).toNat

end

end A257681.P17379453011599905255

/-! ## A257681.P2988843968972305426

`A329048(A275848(n))-A000034(A046387(n+1))`
-/

namespace A257681.P2988843968972305426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329048 (A275848 n).toNat - A000034 (A046387 (n + 1)).toNat

end

end A257681.P2988843968972305426

/-! ## A257681.P3192888129806577527

`A329048(A275848(n))-A105812(A187222(n+1))`
-/

namespace A257681.P3192888129806577527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329048 (A275848 n).toNat - A105812 (A187222 (n + 1)).toNat

end

end A257681.P3192888129806577527

/-! ## A257681.P11945339007816539649

`A329048(A275848(n))+A008683(A180422(n+4))`
-/

namespace A257681.P11945339007816539649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329048 (A275848 n).toNat + A008683 (A180422 (n + 4)).toNat

end

end A257681.P11945339007816539649

/-!
# A257682: Partial sums of A257680: a(0) = 0; for n >= 1, a(n) = A257680(n) + a(n-1).

The programs for A257682, the canonical program `A257682.P6778273375056823921` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257682 has offset 0).

The definition of A257682 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257680, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257682.P6778273375056823921

`A257680(n)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A257682

/-- `A257680(n)+a(n-1)` -/
def P6778273375056823921.Spec : Prop :=
  ∀ n, P6778273375056823921.a n = A257682 n

theorem P6778273375056823921.correct : P6778273375056823921.Spec := by
  intro n
  simp only [A257682]

end A257682

/-! ## A257682.P547767307374878404

`∑[A257680(n)]`
-/

namespace A257682.P547767307374878404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P547767307374878404

namespace A257682

/-- `∑[A257680(n)]` -/
def P547767307374878404.Spec : Prop :=
  ∀ n, P547767307374878404.a n = A257682 n

end A257682

/-! ## A257682.P3558919538985068730

`∑[char[A256450(n)]]`
-/

namespace A257682.P3558919538985068730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256450 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P3558919538985068730

namespace A257682

/-- `∑[char[A256450(n)]]` -/
def P3558919538985068730.Spec : Prop :=
  ∀ n, (P3558919538985068730.a n : ℤ) = A257682 n

end A257682

/-! ## A257682.P1954443337104090590

`∑[char[comp[A255411(n)]]]`
-/

namespace A257682.P1954443337104090590
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P1954443337104090590

namespace A257682

/-- `∑[char[comp[A255411(n)]]]` -/
def P1954443337104090590.Spec : Prop :=
  ∀ n, (P1954443337104090590.a n : ℤ) = A257682 n

end A257682

/-! ## A257682.P10718869508118999673

`∑[round(atan(A257511(n)))]`
-/

namespace A257682.P10718869508118999673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A257511 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P10718869508118999673

namespace A257682

/-- `∑[round(atan(A257511(n)))]` -/
def P10718869508118999673.Spec : Prop :=
  ∀ n, P10718869508118999673.a n = A257682 n

end A257682

/-! ## A257682.P15908235538000073137

`∑[log2(gcd(2, A275735(n)))]`
-/

namespace A257682.P15908235538000073137
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A275735 n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P15908235538000073137

namespace A257682

/-- `∑[log2(gcd(2, A275735(n)))]` -/
def P15908235538000073137.Spec : Prop :=
  ∀ n, P15908235538000073137.a n = (A257682 n : ℝ)

end A257682

/-! ## A257682.P14752094576261891457

`∑[A057427(A257081(n))]`
-/

namespace A257682.P14752094576261891457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A257081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P14752094576261891457

namespace A257682

/-- `∑[A057427(A257081(n))]` -/
def P14752094576261891457.Spec : Prop :=
  ∀ n, P14752094576261891457.a n = A257682 n

end A257682

/-! ## A257682.P17967242192780481976

`∑[char[A273670(n)-A275840(n)]]`
-/

namespace A257682.P17967242192780481976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273670 n - A275840 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P17967242192780481976

namespace A257682

/-- `∑[char[A273670(n)-A275840(n)]]` -/
def P17967242192780481976.Spec : Prop :=
  ∀ n, (P17967242192780481976.a n : ℤ) = A257682 n

end A257682

/-! ## A257682.P18109211848955897873

`A273662(n+2-A257680(n+1))`
-/

namespace A257682.P18109211848955897873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273662 ((n + 2 : ℤ) - A257680 (n + 1)).toNat

end

end A257682.P18109211848955897873

namespace A257682

/-- `A273662(n+2-A257680(n+1))` -/
def P18109211848955897873.Spec : Prop :=
  ∀ n, P18109211848955897873.a n = A257682 n

end A257682

/-! ## A257682.P9194228251810875340

`∑[A051903(A275732(n))]`
-/

namespace A257682.P9194228251810875340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A275732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P9194228251810875340

namespace A257682

/-- `∑[A051903(A275732(n))]` -/
def P9194228251810875340.Spec : Prop :=
  ∀ n, P9194228251810875340.a n = A257682 n

end A257682

/-! ## A257682.P18238904808826486394

`∑[A255565(n)%2]`
-/

namespace A257682.P18238904808826486394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255565 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P18238904808826486394

namespace A257682

/-- `∑[A255565(n)%2]` -/
def P18238904808826486394.Spec : Prop :=
  ∀ n, P18238904808826486394.a n = A257682 n

end A257682

/-! ## A257682.P13403742458651582167

`∑[A257679(n)%A257079(n)]`
-/

namespace A257682.P13403742458651582167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257679 n) (A257079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P13403742458651582167

namespace A257682

/-- `∑[A257679(n)%A257079(n)]` -/
def P13403742458651582167.Spec : Prop :=
  ∀ n, P13403742458651582167.a n = A257682 n

end A257682

/-! ## A257682.P15343673190849747546

`∑[A276950(A225901(n))]`
-/

namespace A257682.P15343673190849747546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A225901 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P15343673190849747546

namespace A257682

/-- `∑[A276950(A225901(n))]` -/
def P15343673190849747546.Spec : Prop :=
  ∀ n, P15343673190849747546.a n = A257682 n

end A257682

/-! ## A257682.P13218833468705107893

`∑[A276950(A275848(n))]`
-/

namespace A257682.P13218833468705107893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A275848 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P13218833468705107893

namespace A257682

/-- `∑[A276950(A275848(n))]` -/
def P13218833468705107893.Spec : Prop :=
  ∀ n, P13218833468705107893.a n = A257682 n

end A257682

/-! ## A257682.P18114555425710923610

`∑[A276950(A275958(n))]`
-/

namespace A257682.P18114555425710923610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A275958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P18114555425710923610

namespace A257682

/-- `∑[A276950(A275958(n))]` -/
def P18114555425710923610.Spec : Prop :=
  ∀ n, P18114555425710923610.a n = A257682 n

end A257682

/-! ## A257682.P10777590328709994697

`∑[char[A275954(n)]]`
-/

namespace A257682.P10777590328709994697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275954 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P10777590328709994697

namespace A257682

/-- `∑[char[A275954(n)]]` -/
def P10777590328709994697.Spec : Prop :=
  ∀ n, (P10777590328709994697.a n : ℤ) = A257682 n

end A257682

/-! ## A257682.P4277429412773437138

`∑[A276950(A273668(n))]`
-/

namespace A257682.P4277429412773437138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A273668 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P4277429412773437138

namespace A257682

/-- `∑[A276950(A273668(n))]` -/
def P4277429412773437138.Spec : Prop :=
  ∀ n, P4277429412773437138.a n = A257682 n

end A257682

/-! ## A257682.P1596511762616959066

`∑[A276950(A275846(n))]`
-/

namespace A257682.P1596511762616959066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (A275846 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257682.P1596511762616959066

namespace A257682

/-- `∑[A276950(A275846(n))]` -/
def P1596511762616959066.Spec : Prop :=
  ∀ n, P1596511762616959066.a n = A257682 n

end A257682

/-!
# A257683: Inverse permutation to A218252.

The programs for A257683, there is no canonical definition to state claims against.
-/

/-! ## A257683.P5267317390892377566

`A102530(n+3)-A001222(A062678(2*(n+1)))`
-/

namespace A257683.P5267317390892377566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102530 (n + 3) - A001222 (A062678 (2 * (n + 1))).toNat

end

end A257683.P5267317390892377566

/-! ## A257683.P16971670484314837108

`A080542(n+1)-A125117(A080563(n))`
-/

namespace A257683.P16971670484314837108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (n + 1) - A125117 (A080563 n).toNat

end

end A257683.P16971670484314837108

/-!
# A257684: Discard the rightmost digit from the factorial base representation of n and subtract one from all remaining nonzero digits, then convert back to decimal.

The programs for A257684, there is no canonical definition to state claims against.
-/

/-! ## A257684.P15867803621017102964

`A266193(A276009(n))`
-/

namespace A257684.P15867803621017102964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 (A276009 n).toNat

end

end A257684.P15867803621017102964

/-! ## A257684.P10023559599378996358

`A266193(n-A276008(n))`
-/

namespace A257684.P10023559599378996358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266193 ((n : ℤ) - A276008 n).toNat

end

end A257684.P10023559599378996358

/-! ## A257684.P6389371550597866189

`n-(A276952(A276009(n))+A276008(n))`
-/

namespace A257684.P6389371550597866189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A276952 (A276009 n).toNat + A276008 n)

end

end A257684.P6389371550597866189

/-! ## A257684.P15755223724363970351

`A276009(n)-A276952(n-A276008(n))`
-/

namespace A257684.P15755223724363970351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276009 n - A276952 ((n : ℤ) - A276008 n).toNat

end

end A257684.P15755223724363970351

/-! ## A257684.P12077600463653495157

`n-A059590(A275727(n))-A276952(A276009(n))`
-/

namespace A257684.P12077600463653495157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059590 (A275727 n).toNat - A276952 (A276009 n).toNat

end

end A257684.P12077600463653495157

/-! ## A257684.P16496165939305456581

`n-A266123(A225901(n)+n)-A276952(A276009(n))`
-/

namespace A257684.P16496165939305456581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A266123 (A225901 n + (n : ℤ)).toNat - A276952 (A276009 n).toNat

end

end A257684.P16496165939305456581

/-!
# A257685: Left inverse for injection A255411: a(0) = 0, after which, if n = A255411(k) for some k, then a(n) = k, otherwise a(n) = 0.

The programs for A257685, there is no canonical definition to state claims against.
-/

/-! ## A257685.P1369432411920039051

`(1-A257680(n))*A257684(n)`
-/

namespace A257685.P1369432411920039051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A257680 n) * A257684 n

end

end A257685.P1369432411920039051

/-! ## A257685.P4848642519671326749

`A257684(n*char[A255411(n)])`
-/

namespace A257685.P4848642519671326749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A257685.P4848642519671326749

/-! ## A257685.P7522756355219674565

`(1-A276950(A225901(n)))*A257684(n)`
-/

namespace A257685.P7522756355219674565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A276950 (A225901 n).toNat) * A257684 n

end

end A257685.P7522756355219674565

/-! ## A257685.P397382181689761144

`A257684(n*A000035(A275735(n)))`
-/

namespace A257685.P397382181689761144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 ((n : ℤ) * A000035 (A275735 n).toNat).toNat

end

end A257685.P397382181689761144

/-! ## A257685.P7406186021708819083

`A000035(A275735(n))*A266193(A276009(n))`
-/

namespace A257685.P7406186021708819083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A275735 n).toNat * A266193 (A276009 n).toNat

end

end A257685.P7406186021708819083

/-!
# A257686: a(0) = 0, for n >= 1: a(n) = A099563(n) * A048764(n).

The programs for A257686, the canonical program `A257686.P2460600263462736737` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257686 has offset 0).

The definition of A257686 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257686.P2460600263462736737

`n-A257687(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A257686

/-- `n-A257687(n)` -/
def P2460600263462736737.Spec : Prop :=
  ∀ n, P2460600263462736737.a n = A257686 n

theorem P2460600263462736737.correct : P2460600263462736737.Spec := by
  intro n
  simp only [A257686]

end A257686

/-! ## A257686.P18277591003322202717

`A000030(A007623(n))*A055642(A007623(n))!`
-/

namespace A257686.P18277591003322202717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A007623 n).toNat * (Nat.factorial (A055642 (A007623 n).toNat).toNat : ℤ)

end

end A257686.P18277591003322202717

namespace A257686

/-- `A000030(A007623(n))*A055642(A007623(n))!` -/
def P18277591003322202717.Spec : Prop :=
  ∀ n, P18277591003322202717.a n = A257686 n

end A257686

/-! ## A257686.P10505773991004781855

`n-n%∑[char[n!]]!`
-/

namespace A257686.P10505773991004781855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A257686.P10505773991004781855

namespace A257686

/-- `n-n%∑[char[n!]]!` -/
def P10505773991004781855.Spec : Prop :=
  ∀ n, P10505773991004781855.a n = A257686 n

end A257686

/-! ## A257686.P2750843716007766570

`∑[char[n!]]!*A099563(n)`
-/

namespace A257686.P2750843716007766570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A099563 n

end

end A257686.P2750843716007766570

namespace A257686

/-- `∑[char[n!]]!*A099563(n)` -/
def P2750843716007766570.Spec : Prop :=
  ∀ n, P2750843716007766570.a n = A257686 n

end A257686

/-! ## A257686.P4946702531457759942

`A084558(n)!*A099563(n)`
-/

namespace A257686.P4946702531457759942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A084558 n).toNat : ℤ) * A099563 n

end

end A257686.P4946702531457759942

namespace A257686

/-- `A084558(n)!*A099563(n)` -/
def P4946702531457759942.Spec : Prop :=
  ∀ n, P4946702531457759942.a n = A257686 n

end A257686

/-! ## A257686.P15069078776550211518

`∑[A316341(n)]!*A099563(n)`
-/

namespace A257686.P15069078776550211518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ) * A099563 n

end

end A257686.P15069078776550211518

namespace A257686

/-- `∑[A316341(n)]!*A099563(n)` -/
def P15069078776550211518.Spec : Prop :=
  ∀ n, P15069078776550211518.a n = A257686 n

end A257686

/-! ## A257686.P13347433468075908396

`-A257687(n)%A061222(n)+n`
-/

namespace A257686.P13347433468075908396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A257687 n) (A061222 n) + (n : ℤ)

end

end A257686.P13347433468075908396

namespace A257686

/-- `-A257687(n)%A061222(n)+n` -/
def P13347433468075908396.Spec : Prop :=
  ∀ n, P13347433468075908396.a n = A257686 n

end A257686

/-! ## A257686.P13313465579140837044

`A000142(comp[(n+1)!+n]-n)*A099563(n)`
-/

namespace A257686.P13313465579140837044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) * A099563 n

end

end A257686.P13313465579140837044

namespace A257686

/-- `A000142(comp[(n+1)!+n]-n)*A099563(n)` -/
def P13313465579140837044.Spec : Prop :=
  ∀ n, P13313465579140837044.a n = A257686 n

end A257686

/-! ## A257686.P13150731801911370987

`A276149(A225901(n))`
-/

namespace A257686.P13150731801911370987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276149 (A225901 n).toNat

end

end A257686.P13150731801911370987

namespace A257686

/-- `A276149(A225901(n))` -/
def P13150731801911370987.Spec : Prop :=
  ∀ n, P13150731801911370987.a n = A257686 n

end A257686

/-! ## A257686.P6415094168232897659

`A275957(A276149(n))`
-/

namespace A257686.P6415094168232897659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 (A276149 n).toNat

end

end A257686.P6415094168232897659

namespace A257686

/-- `A275957(A276149(n))` -/
def P6415094168232897659.Spec : Prop :=
  ∀ n, P6415094168232897659.a n = A257686 n

end A257686

/-! ## A257686.P7636014644148710888

`A275958(A276149(2*n-n))`
-/

namespace A257686.P7636014644148710888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275958 (A276149 (2 * n - n)).toNat

end

end A257686.P7636014644148710888

namespace A257686

/-- `A275958(A276149(2*n-n))` -/
def P7636014644148710888.Spec : Prop :=
  ∀ n, P7636014644148710888.a n = A257686 n

end A257686

/-! ## A257686.P7875160547643896221

`A276149(A060125(A275958(n)))`
-/

namespace A257686.P7875160547643896221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276149 (A060125 (A275958 n).toNat).toNat

end

end A257686.P7875160547643896221

namespace A257686

/-- `A276149(A060125(A275958(n)))` -/
def P7875160547643896221.Spec : Prop :=
  ∀ n, P7875160547643896221.a n = A257686 n

end A257686

/-! ## A257686.P17438381197624191564

`A276149(A276149(n)+A257687(n))`
-/

namespace A257686.P17438381197624191564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276149 (A276149 n + A257687 n).toNat

end

end A257686.P17438381197624191564

namespace A257686

/-- `A276149(A276149(n)+A257687(n))` -/
def P17438381197624191564.Spec : Prop :=
  ∀ n, P17438381197624191564.a n = A257686 n

end A257686

/-! ## A257686.P18203885317914428984

`A276149(2*A276149(n)-A276149(n))`
-/

namespace A257686.P18203885317914428984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276149 (2 * A276149 n - A276149 n).toNat

end

end A257686.P18203885317914428984

namespace A257686

/-- `A276149(2*A276149(n)-A276149(n))` -/
def P18203885317914428984.Spec : Prop :=
  ∀ n, P18203885317914428984.a n = A257686 n

end A257686

/-! ## A257686.P191957543029055719

`A276149(A276149(A004488(A004488(n))))`
-/

namespace A257686.P191957543029055719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276149 (A276149 (A004488 (A004488 n).toNat).toNat).toNat

end

end A257686.P191957543029055719

namespace A257686

/-- `A276149(A276149(A004488(A004488(n))))` -/
def P191957543029055719.Spec : Prop :=
  ∀ n, P191957543029055719.a n = A257686 n

end A257686

/-! ## A257686.P6815379301980580440

`A276149(A276149(A060125(A060125(n))))`
-/

namespace A257686.P6815379301980580440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276149 (A276149 (A060125 (A060125 n).toNat).toNat).toNat

end

end A257686.P6815379301980580440

namespace A257686

/-- `A276149(A276149(A060125(A060125(n))))` -/
def P6815379301980580440.Spec : Prop :=
  ∀ n, P6815379301980580440.a n = A257686 n

end A257686

/-! ## A257686.P10020792241762550776

`A276149(A276149(n)+A213890(2*n))`
-/

namespace A257686.P10020792241762550776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276149 (A276149 n + A213890 (2 * n)).toNat

end

end A257686.P10020792241762550776

namespace A257686

/-- `A276149(A276149(n)+A213890(2*n))` -/
def P10020792241762550776.Spec : Prop :=
  ∀ n, P10020792241762550776.a n = A257686 n

end A257686

/-! ## A257686.P8330236324051921229

`A276149(A276149(A302852(A302851(n))))`
-/

namespace A257686.P8330236324051921229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276149 (A276149 (A302852 (A302851 n).toNat).toNat).toNat

end

end A257686.P8330236324051921229

namespace A257686

/-- `A276149(A276149(A302852(A302851(n))))` -/
def P8330236324051921229.Spec : Prop :=
  ∀ n, P8330236324051921229.a n = A257686 n

end A257686

/-!
# A257687: Discard the most significant digit from factorial base representation of n, then convert back to decimal: a(n) = n - A257686(n).

The programs for A257687, the canonical program `A257687.P7012285749589745258` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257687 has offset 0).

The definition of A257687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257687.P15740283604767882924

`n-A257686(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257687.P15740283604767882924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A257686 n

end

end A257687.P15740283604767882924

namespace A257687

/-- `n-A257686(n)` -/
def P15740283604767882924.Spec : Prop :=
  ∀ n, P15740283604767882924.a n = A257687 n

end A257687

/-! ## A257687.P11916332658356225468

`n%∑[char[n!]]!`
-/

namespace A257687.P11916332658356225468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257687.P11916332658356225468

namespace A257687

/-- `n%∑[char[n!]]!` -/
def P11916332658356225468.Spec : Prop :=
  ∀ n, (P11916332658356225468.a n : ℤ) = A257687 n

end A257687

/-! ## A257687.P7012285749589745258

`n%A084558(n)!`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A257687

/-- `n%A084558(n)!` -/
def P7012285749589745258.Spec : Prop :=
  ∀ n, (P7012285749589745258.a n : ℤ) = A257687 n

theorem P7012285749589745258.correct : P7012285749589745258.Spec := by
  intro n
  simp only [A257687]

end A257687

/-! ## A257687.P13898217218212770327

`n-∑[char[n!]]!*A099563(n)`
-/

namespace A257687.P13898217218212770327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A099563 n

end

end A257687.P13898217218212770327

namespace A257687

/-- `n-∑[char[n!]]!*A099563(n)` -/
def P13898217218212770327.Spec : Prop :=
  ∀ n, P13898217218212770327.a n = A257687 n

end A257687

/-! ## A257687.P15554914355959008600

`A001489(∑[char[n!]]!*A099563(n))+n`
-/

namespace A257687.P15554914355959008600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 ((Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A099563 n).toNat + (n : ℤ)

end

end A257687.P15554914355959008600

namespace A257687

/-- `A001489(∑[char[n!]]!*A099563(n))+n` -/
def P15554914355959008600.Spec : Prop :=
  ∀ n, P15554914355959008600.a n = A257687 n

end A257687

/-! ## A257687.P11658438700520271846

`(Δ[A257686(n)]+n)%A257686(n+1)`
-/

namespace A257687.P11658438700520271846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + (n : ℤ)) (A257686 (n + 1))

end

end A257687.P11658438700520271846

namespace A257687

/-- `(Δ[A257686(n)]+n)%A257686(n+1)` -/
def P11658438700520271846.Spec : Prop :=
  ∀ n, P11658438700520271846.a n = A257687 n

end A257687

/-! ## A257687.P18435437970972499561

`n-A276149(A225901(n))`
-/

namespace A257687.P18435437970972499561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276149 (A225901 n).toNat

end

end A257687.P18435437970972499561

namespace A257687

/-- `n-A276149(A225901(n))` -/
def P18435437970972499561.Spec : Prop :=
  ∀ n, P18435437970972499561.a n = A257687 n

end A257687

/-! ## A257687.P7724013857655268042

`n-A275957(A276149(n))`
-/

namespace A257687.P7724013857655268042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A275957 (A276149 n).toNat

end

end A257687.P7724013857655268042

namespace A257687

/-- `n-A275957(A276149(n))` -/
def P7724013857655268042.Spec : Prop :=
  ∀ n, P7724013857655268042.a n = A257687 n

end A257687

/-! ## A257687.P7062987967143126019

`n-A276149(A060125(A275958(n)))`
-/

namespace A257687.P7062987967143126019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276149 (A060125 (A275958 n).toNat).toNat

end

end A257687.P7062987967143126019

namespace A257687

/-- `n-A276149(A060125(A275958(n)))` -/
def P7062987967143126019.Spec : Prop :=
  ∀ n, P7062987967143126019.a n = A257687 n

end A257687

/-! ## A257687.P6407849779411679784

`A004488(A004488(n))-A276149(A276149(n))`
-/

namespace A257687.P6407849779411679784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A004488 n).toNat - A276149 (A276149 n).toNat

end

end A257687.P6407849779411679784

namespace A257687

/-- `A004488(A004488(n))-A276149(A276149(n))` -/
def P6407849779411679784.Spec : Prop :=
  ∀ n, P6407849779411679784.a n = A257687 n

end A257687

/-! ## A257687.P11968466830930245544

`A302851(A302852(n))-A276149(A276149(n))`
-/

namespace A257687.P11968466830930245544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302851 (A302852 n).toNat - A276149 (A276149 n).toNat

end

end A257687.P11968466830930245544

namespace A257687

/-- `A302851(A302852(n))-A276149(A276149(n))` -/
def P11968466830930245544.Spec : Prop :=
  ∀ n, P11968466830930245544.a n = A257687 n

end A257687

/-!
# A257688: After 1, all numbers that are either primes in Z or whose binary representation encodes a polynomial irreducible over GF(2).

The programs for A257688, there is no canonical definition to state claims against.
-/

/-! ## A257688.P2255253758888875435

`comp[A091212(n+1)-1]+1`
-/

namespace A257688.P2255253758888875435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A257688.P2255253758888875435

/-! ## A257688.P11847183417887830245

`∪[A006005(n+1), A014580(n+1)]`
-/

namespace A257688.P11847183417887830245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257688.P11847183417887830245

/-! ## A257688.P10944481010266239111

`∪[A008578(n+1), A014580(n+1)]`
-/

namespace A257688.P10944481010266239111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257688.P10944481010266239111

/-! ## A257688.P11782030870910996893

`∪[A008578(n+1), A091214(n+1)]`
-/

namespace A257688.P11782030870910996893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257688.P11782030870910996893

/-! ## A257688.P11290404130136520457

`∪[A014580(n+1), A140475(n+1)]`
-/

namespace A257688.P11290404130136520457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257688.P11290404130136520457

/-! ## A257688.P2649044428405643781

`∪[A014580(n+1), record[A020639(n+1)]]`
-/

namespace A257688.P2649044428405643781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257688.P2649044428405643781

/-! ## A257688.P8297141606819220797

`∪[A014580(n+1), A372059(n+1)]`
-/

namespace A257688.P8297141606819220797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257688.P8297141606819220797

/-! ## A257688.P10201933739426459894

`∪[A091214(n+1), A372059(n+1)]`
-/

namespace A257688.P10201933739426459894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257688.P10201933739426459894

/-! ## A257688.P1738261967040499998

`record[or(n*A091225(n), A014963(n+1))]`
-/

namespace A257688.P1738261967040499998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) * A091225 n) (A014963 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257688.P1738261967040499998

/-!
# A257689: Numbers that are either ludic or prime.

The programs for A257689, there is no canonical definition to state claims against.
-/

/-! ## A257689.P1851057273403909952

`∪[A000040(n+1), A003309(n+1)]`
-/

namespace A257689.P1851057273403909952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257689.P1851057273403909952

/-! ## A257689.P18062185944216368985

`∪[A003309(n+1), A004139(n+1)]`
-/

namespace A257689.P18062185944216368985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257689.P18062185944216368985

/-! ## A257689.P17879556697863222782

`∪[A003309(n+1), A006005(n+1)]`
-/

namespace A257689.P17879556697863222782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257689.P17879556697863222782

/-! ## A257689.P303883023115882730

`∪[A003309(n+1), A008578(n+1)]`
-/

namespace A257689.P303883023115882730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257689.P303883023115882730

/-! ## A257689.P6323141102202965002

`∪[A003309(n+1), A045319(n+1)]`
-/

namespace A257689.P6323141102202965002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257689.P6323141102202965002

/-! ## A257689.P7632398171940509923

`∪[A003309(n+1), A045344(n+1)]`
-/

namespace A257689.P7632398171940509923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257689.P7632398171940509923

/-! ## A257689.P11485821933272734354

`∪[A003309(n+1), A065091(n+1)]`
-/

namespace A257689.P11485821933272734354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257689.P11485821933272734354

/-! ## A257689.P1026422773816571591

`∪[A065396(n+1), A003309(n+1)]`
-/

namespace A257689.P1026422773816571591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257689.P1026422773816571591

/-! ## A257689.P9455821776218629601

`record[lcm(A014963(n+1), A276440(n+1))]`
-/

namespace A257689.P9455821776218629601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (n + 1)) (A276440 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257689.P9455821776218629601

/-! ## A257689.P8328073328080002128

`record[or(A014973(n+1), A276440(n+1))]`
-/

namespace A257689.P8328073328080002128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014973 (n + 1)) (A276440 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257689.P8328073328080002128

/-! ## A257689.P17979111061778317021

`record[or(A061397(n+1), A276440(n+1))]`
-/

namespace A257689.P17979111061778317021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061397 (n + 1)) (A276440 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257689.P17979111061778317021

/-! ## A257689.P1864106941213204438

`record[A020639(n+1)*A032742(A276440(n+1))]`
-/

namespace A257689.P1864106941213204438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A032742 (A276440 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257689.P1864106941213204438

/-! ## A257689.P9014695038029271384

`eq[A051953(n+1)*A271419(n+1), A271419(n+1)]+1`
-/

namespace A257689.P9014695038029271384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) * A271419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A257689.P9014695038029271384

/-! ## A257689.P7822409132666843110

`eq[1, A051953(n+1)^A271419(n+1)]+1`
-/

namespace A257689.P7822409132666843110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (n + 1) : ℚ) ^ (A271419 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A257689.P7822409132666843110

/-!
# A257690: Permutation of natural numbers: a(1) = 1, a(lucky(n)) = (2*a(n))-1, a(unlucky(n)) = 2*n, where lucky(n) = n-th lucky number A000959, unlucky(n) = n-th unlucky number A050505.

The programs for A257690, there is no canonical definition to state claims against.
-/

/-! ## A257690.P10190176375338524279

`A257725(A257738(n+1))`
-/

namespace A257690.P10190176375338524279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257725 (A257738 (n + 1)).toNat

end

end A257690.P10190176375338524279

/-! ## A257690.P14394689679413754794

`A257736(A257725(n+1))`
-/

namespace A257690.P14394689679413754794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257736 (A257725 (n + 1)).toNat

end

end A257690.P14394689679413754794

/-! ## A257690.P4119892610241290583

`A273665(n)+A217148(n+1)!`
-/

namespace A257690.P4119892610241290583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273665 n + (Nat.factorial (A217148 (n + 1)).toNat : ℤ)

end

end A257690.P4119892610241290583

/-! ## A257690.P18433975647995101644

`A273665(n)+A217149(n+1)!`
-/

namespace A257690.P18433975647995101644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273665 n + (Nat.factorial (A217149 (n + 1)).toNat : ℤ)

end

end A257690.P18433975647995101644

/-! ## A257690.P6633169404534918312

`(A273665(n)+1)%A280182(n+1)`
-/

namespace A257690.P6633169404534918312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273665 n + 1) (A280182 (n + 1))

end

end A257690.P6633169404534918312

/-!
# A257691: Numbers that are not A000120-abundant.

The programs for A257691, there is no canonical definition to state claims against.
-/

/-! ## A257691.P16507755156726246699

`record[(n+1)*A294905(n+1)]`
-/

namespace A257691.P16507755156726246699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257691.P16507755156726246699

/-! ## A257691.P623973843891344941

`eq[1, A294905(n+1)]+1`
-/

namespace A257691.P623973843891344941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257691.P623973843891344941

/-! ## A257691.P10400274718912711212

`filter[A007964(n+1), A294905(#)]`
-/

namespace A257691.P10400274718912711212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P10400274718912711212

/-! ## A257691.P13383010954715220054

`filter[A354144(n+1), A294905(#)]`
-/

namespace A257691.P13383010954715220054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P13383010954715220054

/-! ## A257691.P15611136943577032105

`filter[A085156(n+1), A294905(#)]`
-/

namespace A257691.P15611136943577032105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P15611136943577032105

/-! ## A257691.P1506642537931950689

`filter[A091377(n+1), A294905(#)]`
-/

namespace A257691.P1506642537931950689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P1506642537931950689

/-! ## A257691.P16738369411234304306

`filter[A119885(n+1), A294905(#)]`
-/

namespace A257691.P16738369411234304306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P16738369411234304306

/-! ## A257691.P6703187769304673710

`filter[A269870(n+1), A294905(#)]`
-/

namespace A257691.P6703187769304673710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P6703187769304673710

/-! ## A257691.P17067879440026034779

`filter[A391247(n+1), A294905(#)]`
-/

namespace A257691.P17067879440026034779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P17067879440026034779

/-! ## A257691.P9530713045142258829

`filter[A053224(n+1), A294905(#)]`
-/

namespace A257691.P9530713045142258829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P9530713045142258829

/-! ## A257691.P3351026986488478649

`filter[A004280(n+1), A294905(#)]`
-/

namespace A257691.P3351026986488478649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P3351026986488478649

/-! ## A257691.P15850847551112961123

`filter[A004281(n), A294905(#)]`
-/

namespace A257691.P15850847551112961123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P15850847551112961123

/-! ## A257691.P8490921035994652356

`filter[A004274(n+1), A294905(#)]`
-/

namespace A257691.P8490921035994652356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P8490921035994652356

/-! ## A257691.P7569246106855754453

`filter[A004276(n+1), A294905(#)]`
-/

namespace A257691.P7569246106855754453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P7569246106855754453

/-! ## A257691.P12072322623374364013

`filter[A053460(n+1), A294905(#)]`
-/

namespace A257691.P12072322623374364013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P12072322623374364013

/-! ## A257691.P16489024227774511851

`filter[A070915(n+1), A294905(#)]`
-/

namespace A257691.P16489024227774511851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P16489024227774511851

/-! ## A257691.P18140989533478306520

`filter[A293205(n+1), A294905(#)]`
-/

namespace A257691.P18140989533478306520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P18140989533478306520

/-! ## A257691.P8034291304504321502

`filter[A042996(n+1), A294905(#)]`
-/

namespace A257691.P8034291304504321502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P8034291304504321502

/-! ## A257691.P9241188786712203140

`filter[A196499(n+1), A294905(#)]`
-/

namespace A257691.P9241188786712203140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P9241188786712203140

/-! ## A257691.P3279515844373447931

`filter[A073898(n+1), A294905(#)]`
-/

namespace A257691.P3279515844373447931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294905 (f1 j).toNat = 1) n)

end

end A257691.P3279515844373447931

/-!
# A257692: Numbers such that the smallest nonzero digit present (A257679) in their factorial base representation is 2.

The programs for A257692, there is no canonical definition to state claims against.
-/

/-! ## A257692.P16682735001367486369

`A255411(A256450(n))`
-/

namespace A257692.P16682735001367486369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A256450 n).toNat

end

end A257692.P16682735001367486369

/-! ## A257692.P7621024722417791262

`A255411(comp[A255411(n)])`
-/

namespace A257692.P7621024722417791262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257692.P7621024722417791262

/-! ## A257692.P1266509763348086278

`A255411(lt[1, A257079(n)])`
-/

namespace A257692.P1266509763348086278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257692.P1266509763348086278

/-! ## A257692.P2437333677666005653

`record[A255411(n+1)*A257680(n+1)]`
-/

namespace A257692.P2437333677666005653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (n + 1) * A257680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257692.P2437333677666005653

/-! ## A257692.P17761274257579184394

`record[A255411(n+1)-A255411(A257685(n+1))]`
-/

namespace A257692.P17761274257579184394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (n + 1) - A255411 (A257685 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257692.P17761274257579184394

/-! ## A257692.P447908966483365977

`A255411(eq[1, A257679(n)])`
-/

namespace A257692.P447908966483365977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257692.P447908966483365977

/-! ## A257692.P12466671231080998411

`A255411(A275847(A273670(n)))`
-/

namespace A257692.P12466671231080998411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A275847 (A273670 n).toNat).toNat

end

end A257692.P12466671231080998411

/-! ## A257692.P11373827343510262950

`A255411(A225901(A275952(A225901(n))))`
-/

namespace A257692.P11373827343510262950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A225901 (A275952 (A225901 n).toNat).toNat).toNat

end

end A257692.P11373827343510262950

/-! ## A257692.P15377054256489101431

`lt[0, A257680(A257685(n))]`
-/

namespace A257692.P15377054256489101431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A257685 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A257692.P15377054256489101431

/-! ## A257692.P7689524525067058685

`lt[A257680(n), A257680(A257684(n))]`
-/

namespace A257692.P7689524525067058685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 (A257684 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257692.P7689524525067058685

/-! ## A257692.P16801045981399600549

`eq[2, A257679(n)]`
-/

namespace A257692.P16801045981399600549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257692.P16801045981399600549

/-! ## A257692.P8144261363749330526

`A275847(A276932(n))`
-/

namespace A257692.P8144261363749330526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275847 (A276932 n).toNat

end

end A257692.P8144261363749330526

/-! ## A257692.P15388596483263920774

`A255411(A273667(A273670(A273668(n))))`
-/

namespace A257692.P15388596483263920774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A273667 (A273670 (A273668 n).toNat).toNat).toNat

end

end A257692.P15388596483263920774

/-! ## A257692.P6578935215022769073

`A255411(A275845(A273670(A275846(n))))`
-/

namespace A257692.P6578935215022769073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A275845 (A273670 (A275846 n).toNat).toNat).toNat

end

end A257692.P6578935215022769073

/-! ## A257692.P7630658965977598797

`A275847(A266193(A276933(n)))`
-/

namespace A257692.P7630658965977598797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275847 (A266193 (A276933 n).toNat).toNat

end

end A257692.P7630658965977598797

/-! ## A257692.P16943899066334104027

`A275835(A255411(A275954(A275836(n))))`
-/

namespace A257692.P16943899066334104027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275835 (A255411 (A275954 (A275836 n).toNat).toNat).toNat

end

end A257692.P16943899066334104027

/-!
# A257693: Numbers such that the smallest nonzero digit present (A257679) in their factorial base representation is 3.

The programs for A257693, there is no canonical definition to state claims against.
-/

/-! ## A257693.P1783703437475478562

`A255411(A257692(n+1))`
-/

namespace A257693.P1783703437475478562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A257692 (n + 1)).toNat

end

end A257693.P1783703437475478562

/-! ## A257693.P17144761197325629969

`A255411(A255411(A256450(n)))`
-/

namespace A257693.P17144761197325629969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A255411 (A256450 n).toNat).toNat

end

end A257693.P17144761197325629969

/-! ## A257693.P822576405788276583

`A255411(A255411(eq[1, A257679(n)]))`
-/

namespace A257693.P822576405788276583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A255411 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A257693.P822576405788276583

/-! ## A257693.P11834404955304315904

`A255411(record[A255411(n+1)*A257680(n+1)])`
-/

namespace A257693.P11834404955304315904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (n + 1) * A257680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257693.P11834404955304315904

/-! ## A257693.P13139311823913177741

`A257692(A257692(n+1)-A256450(n))+2`
-/

namespace A257693.P13139311823913177741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257692 (A257692 (n + 1) - A256450 n).toNat + 2

end

end A257693.P13139311823913177741

/-! ## A257693.P7195959256603135800

`A255411(eq[2, A257679(n)])`
-/

namespace A257693.P7195959256603135800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257693.P7195959256603135800

/-! ## A257693.P537441572563725259

`A255411(A255411(A273667(A273670(A273668(n)))))`
-/

namespace A257693.P537441572563725259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A255411 (A273667 (A273670 (A273668 n).toNat).toNat).toNat).toNat

end

end A257693.P537441572563725259

/-! ## A257693.P4849146401723878513

`A255411(A255411(A275845(A273670(A275846(n)))))`
-/

namespace A257693.P4849146401723878513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255411 (A255411 (A275845 (A273670 (A275846 n).toNat).toNat).toNat).toNat

end

end A257693.P4849146401723878513

/-! ## A257693.P16051562619431916296

`A275847(A276933(n))`
-/

namespace A257693.P16051562619431916296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275847 (A276933 n).toNat

end

end A257693.P16051562619431916296

/-! ## A257693.P373137267629505170

`A275847(A153880(A153880(A273670(n))))`
-/

namespace A257693.P373137267629505170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275847 (A153880 (A153880 (A273670 n).toNat).toNat).toNat

end

end A257693.P373137267629505170

/-!
# A257694: a(0) = 1; for n >= 1, a(n) = A060130(n) * a(A257684(n)).

The programs for A257694, there is no canonical definition to state claims against.
-/

/-! ## A257694.P15565982528211359953

`A060130(n)*a(A257684(n))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257694.P15565982528211359953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060130 n * a (A257684 n).toNat

end

end A257694.P15565982528211359953

/-! ## A257694.P9482300918450768604

`a(A257684(n))*A060130(n)` with `a(0)=1`
-/

namespace A257694.P9482300918450768604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A257684 n).toNat * A060130 n

end

end A257694.P9482300918450768604

/-! ## A257694.P12473132387537465445

`a(A276009(n))*A060130(n)` with `a(0)=1`
-/

namespace A257694.P12473132387537465445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A276009 n).toNat * A060130 n

end

end A257694.P12473132387537465445

/-! ## A257694.P16447061479672715579

`a(A257684(n))*A001222(A275735(n))` with `a(0)=1`
-/

namespace A257694.P16447061479672715579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A257684 n).toNat * A001222 (A275735 n).toNat

end

end A257694.P16447061479672715579

/-! ## A257694.P8070207089942945431

`A329382(A275735(n))`
-/

namespace A257694.P8070207089942945431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (A275735 n).toNat

end

end A257694.P8070207089942945431

/-! ## A257694.P14346188240672723733

`A329382(∏{e}[A278236(n), A209237(#)])`
-/

namespace A257694.P14346188240672723733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329382 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A209237 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A257694.P14346188240672723733

/-! ## A257694.P7119320718310674858

`∏{e}[A124859(A278236(n)), #]`
-/

namespace A257694.P7119320718310674858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (A278236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257694.P7119320718310674858

/-!
# A257695: a(0) = 1; for n >= 1, a(n) = lcm(A060130(n), a(A257684(n))).

The programs for A257695, there is no canonical definition to state claims against.
-/

/-! ## A257695.P7592443916765857627

`lcm(A060130(n), a(A257684(n)))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257695.P7592443916765857627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (A060130 n) (a (A257684 n).toNat : ℤ)

end

end A257695.P7592443916765857627

/-! ## A257695.P4061949862018104932

`A329378(A275735(n))`
-/

namespace A257695.P4061949862018104932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A275735 n).toNat

end

end A257695.P4061949862018104932

/-! ## A257695.P7583554045359806014

`lcm(a(A257684(n)), A060130(n))` with `a(0)=1`
-/

namespace A257695.P7583554045359806014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A257684 n).toNat : ℤ) (A060130 n)

end

end A257695.P7583554045359806014

/-! ## A257695.P419365582959707167

`gcd(A134324(A276094(n)), A257694(n))`
-/

namespace A257695.P419365582959707167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134324 (A276094 n).toNat) (A257694 n)

end

end A257695.P419365582959707167

/-! ## A257695.P4955705167858838023

`gcd(A134324(n), A257694(n))`
-/

namespace A257695.P4955705167858838023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134324 n) (A257694 n)

end

end A257695.P4955705167858838023

/-!
# A257696: a(0) = 0; for n >= 1, a(n) = gcd(A060130(n), a(A257684(n))).

The programs for A257696, there is no canonical definition to state claims against.
-/

/-! ## A257696.P5354321744148741630

`gcd(A060130(n), a(A257684(n)))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257696.P5354321744148741630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd (A060130 n) (a (A257684 n).toNat : ℤ)

end

end A257696.P5354321744148741630

/-! ## A257696.P13948554798865939100

`A052409(A275735(n))`
-/

namespace A257696.P13948554798865939100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A275735 n).toNat

end

end A257696.P13948554798865939100

/-! ## A257696.P9650835000140185130

`A052409(A278235(n))`
-/

namespace A257696.P9650835000140185130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A278235 n).toNat

end

end A257696.P9650835000140185130

/-! ## A257696.P11762423961205182457

`gcd(a(A257684(n)), A257511(n))` with `a(0)=0`
-/

namespace A257696.P11762423961205182457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd (a (A257684 n).toNat : ℤ) (A257511 n)

end

end A257696.P11762423961205182457

/-! ## A257696.P5046983534457992058

`gcd(A051904(A275735(n)), A060130(n))`
-/

namespace A257696.P5046983534457992058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051904 (A275735 n).toNat) (A060130 n)

end

end A257696.P5046983534457992058

/-! ## A257696.P6071363766603657486

`A253641(A275735(n))-A000007(n)`
-/

namespace A257696.P6071363766603657486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A275735 n).toNat - A000007 n

end

end A257696.P6071363766603657486

/-! ## A257696.P13506294424435687337

`A253641(A275735(n))%A000124(n)`
-/

namespace A257696.P13506294424435687337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253641 (A275735 n).toNat) (A000124 n)

end

end A257696.P13506294424435687337

/-! ## A257696.P12642797579249436426

`A253641(A275735(n)²)-A253641(A275735(n))`
-/

namespace A257696.P12642797579249436426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A275735 n ^ 2).toNat - A253641 (A275735 n).toNat

end

end A257696.P12642797579249436426

/-!
# A257697: a(n)=0 for n <= 1; for n >= 2, a(n) = largest number that can be obtained by rotating non-msb bits of binary expansion of n (with A080541 or A080542), without the most significant bit of n: a(n) = A053645(A256999(n)).

The programs for A257697, there is no canonical definition to state claims against.
-/

/-! ## A257697.P16970427717479891805

`A256999(n)-A053644(n)`
-/

namespace A257697.P16970427717479891805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n - A053644 n

end

end A257697.P16970427717479891805

/-! ## A257697.P7614617512001730759

`A053645(A256999(A000007(n)+n))`
-/

namespace A257697.P7614617512001730759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A256999 (A000007 n + (n : ℤ)).toNat).toNat

end

end A257697.P7614617512001730759

/-! ## A257697.P7076178513396023356

`A256999(n)-A072376(2*n)`
-/

namespace A257697.P7076178513396023356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n - A072376 (2 * n)

end

end A257697.P7076178513396023356

/-! ## A257697.P15676841459759359790

`A256999(n)%A072376(2*n+1)`
-/

namespace A257697.P15676841459759359790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256999 n) (A072376 (2 * n + 1))

end

end A257697.P15676841459759359790

/-! ## A257697.P9911379528569680574

`xor(A053644(A004526(2*n)), A256999(n))`
-/

namespace A257697.P9911379528569680574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053644 (A004526 (2 * n)).toNat) (A256999 n)

end

end A257697.P9911379528569680574

/-! ## A257697.P7666413371128762487

`A053645(A256999(n)+A072376(2*n+1))`
-/

namespace A257697.P7666413371128762487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A256999 n + A072376 (2 * n + 1)).toNat

end

end A257697.P7666413371128762487

