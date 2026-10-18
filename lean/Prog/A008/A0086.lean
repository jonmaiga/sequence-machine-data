import SequenceMachineLib
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A008600: Multiples of 18.

The programs for A008600, the canonical program `A008600.P8081908058967824863` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008600 has offset 0).

The definition of A008600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008600.P8081908058967824863

`18*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008600

/-- `18*n` -/
def P8081908058967824863.Spec : Prop :=
  ∀ n, (P8081908058967824863.a n : ℤ) = A008600 n

theorem P8081908058967824863.correct : P8081908058967824863.Spec := by
  intro n
  simp only [A008600]

end A008600

/-!
# A008601: Multiples of 19.

The programs for A008601, the canonical program `A008601.P146696909524110912` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008601 has offset 0).

The definition of A008601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008601.P146696909524110912

`19*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008601

/-- `19*n` -/
def P146696909524110912.Spec : Prop :=
  ∀ n, (P146696909524110912.a n : ℤ) = A008601 n

theorem P146696909524110912.correct : P146696909524110912.Spec := by
  intro n
  simp only [A008601]

end A008601

/-!
# A008602: Multiples of 20.

The programs for A008602, the canonical program `A008602.P10803716924039054280` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008602 has offset 0).

The definition of A008602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008602.P10803716924039054280

`20*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008602

/-- `20*n` -/
def P10803716924039054280.Spec : Prop :=
  ∀ n, (P10803716924039054280.a n : ℤ) = A008602 n

theorem P10803716924039054280.correct : P10803716924039054280.Spec := by
  intro n
  simp only [A008602]

end A008602

/-!
# A008603: Multiples of 21.

The programs for A008603, the canonical program `A008603.P13373765567278526098` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008603 has offset 0).

The definition of A008603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008603.P13373765567278526098

`21*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008603

/-- `21*n` -/
def P13373765567278526098.Spec : Prop :=
  ∀ n, (P13373765567278526098.a n : ℤ) = A008603 n

theorem P13373765567278526098.correct : P13373765567278526098.Spec := by
  intro n
  simp only [A008603]

end A008603

/-!
# A008604: Multiples of 22.

The programs for A008604, the canonical program `A008604.P4469911331699551473` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008604 has offset 0).

The definition of A008604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008604.P4469911331699551473

`22*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008604

/-- `22*n` -/
def P4469911331699551473.Spec : Prop :=
  ∀ n, (P4469911331699551473.a n : ℤ) = A008604 n

theorem P4469911331699551473.correct : P4469911331699551473.Spec := by
  intro n
  simp only [A008604]

end A008604

/-!
# A008605: Multiples of 23.

The programs for A008605, the canonical program `A008605.P5066899400796399337` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008605 has offset 0).

The definition of A008605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008605.P5066899400796399337

`23*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008605

/-- `23*n` -/
def P5066899400796399337.Spec : Prop :=
  ∀ n, (P5066899400796399337.a n : ℤ) = A008605 n

theorem P5066899400796399337.correct : P5066899400796399337.Spec := by
  intro n
  simp only [A008605]

end A008605

/-!
# A008606: Multiples of 24.

The programs for A008606, the canonical program `A008606.P331422733914118461` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008606 has offset 0).

The definition of A008606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008606.P331422733914118461

`24*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008606

/-- `24*n` -/
def P331422733914118461.Spec : Prop :=
  ∀ n, (P331422733914118461.a n : ℤ) = A008606 n

theorem P331422733914118461.correct : P331422733914118461.Spec := by
  intro n
  simp only [A008606]

end A008606

/-!
# A008607: Multiples of 25.

The programs for A008607, the canonical program `A008607.P4608234580437606002` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008607 has offset 0).

The definition of A008607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008607.P4608234580437606002

`25*n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008607

/-- `25*n` -/
def P4608234580437606002.Spec : Prop :=
  ∀ n, (P4608234580437606002.a n : ℤ) = A008607 n

theorem P4608234580437606002.correct : P4608234580437606002.Spec := by
  intro n
  simp only [A008607]

end A008607

/-!
# A008608: Number of n X n upper triangular matrices A of nonnegative integers such that a_1i + a_2i + ... + a_{i-1,i} - a_ii - a_{i,i+1} - ... - a_in = -1.

The programs for A008608, there is no canonical definition to state claims against.
-/

/-! ## A008608.P864456955345904577

`A259841(C(n+3, 2))`
-/

namespace A008608.P864456955345904577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259841 (Nat.choose (n + 3) 2)

end

end A008608.P864456955345904577

/-! ## A008608.P4524843916311426131

`A259841(∑[n+2]+1)`
-/

namespace A008608.P4524843916311426131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259841 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A008608.P4524843916311426131

/-! ## A008608.P16816721660186808324

`record[gcd(A259841(n+1), A302278(n+1))]`
-/

namespace A008608.P16816721660186808324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259841 (n + 1)) (A302278 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008608.P16816721660186808324

/-! ## A008608.P2650904446737573349

`record[ratio[1/A259844(n)]]`
-/

namespace A008608.P2650904446737573349
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A259844 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008608.P2650904446737573349

/-! ## A008608.P2832866425985175746

`A259844(∑[n+3]+1)`
-/

namespace A008608.P2832866425985175746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259844 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A008608.P2832866425985175746

/-!
# A008609: a(n) = n + max_{0 <= i

The programs for A008609, there is no canonical definition to state claims against.
-/

/-! ## A008609.P79026128898354178

`∑[lt[A334507(Δ[n²]), n+2]]+1`
-/

namespace A008609.P79026128898354178
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334507 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A008609.P79026128898354178

/-! ## A008609.P1787813137774418087

`∑[A122921(A027383(n)²)]`
-/

namespace A008609.P1787813137774418087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A027383 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008609.P1787813137774418087

/-! ## A008609.P5415425367263258003

`A166387(A003945(n+2))-n`
-/

namespace A008609.P5415425367263258003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166387 (A003945 (n + 2)).toNat - (n : ℤ)

end

end A008609.P5415425367263258003

/-! ## A008609.P10540050681404740517

`∑[or(A000041(n), A291295(n+1))]`
-/

namespace A008609.P10540050681404740517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000041 n) (A291295 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008609.P10540050681404740517

/-! ## A008609.P15695619394397684885

`A070875(n)-A006666(A020714(n))`
-/

namespace A008609.P15695619394397684885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 n - A006666 (A020714 n).toNat

end

end A008609.P15695619394397684885

/-!
# A008610: Molien series of 4-dimensional representation of cyclic group of order 4 over GF(2) (not Cohen-Macaulay).

The programs for A008610, the canonical program `A008610.P17356693565736018769` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008610 has offset 0).

The definition of A008610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008610.P824327339725763021

`round(∑[∑[char[2*n]]²]/2)`
-/

namespace A008610.P824327339725763021
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A008610.P824327339725763021

namespace A008610

/-- `round(∑[∑[char[2*n]]²]/2)` -/
def P824327339725763021.Spec : Prop :=
  ∀ n, P824327339725763021.a n = A008610 n

end A008610

/-! ## A008610.P17356693565736018769

`∑[floor(∑[n/2-floor(a(n-1))])]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008610

/-- `∑[floor(∑[n/2-floor(a(n-1))])]` -/
def P17356693565736018769.Spec : Prop :=
  ∀ n, P17356693565736018769.a n = A008610 n

theorem P17356693565736018769.correct : P17356693565736018769.Spec := by
  intro n
  simp only [A008610]

end A008610

/-! ## A008610.P6283302152874119466

`ceil(∑[(ceil(and(n, -2)/2)+1)²]/2)`
-/

namespace A008610.P6283302152874119466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(Int.land (n : ℤ) (-2) : ℚ) / 2⌉ + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A008610.P6283302152874119466

namespace A008610

/-- `ceil(∑[(ceil(and(n, -2)/2)+1)²]/2)` -/
def P6283302152874119466.Spec : Prop :=
  ∀ n, P6283302152874119466.a n = A008610 n

end A008610

/-! ## A008610.P4370035727891842342

`ceil((abs(∑[∑[(n+1)%2]²]-1)+1)/2)`
-/

namespace A008610.P4370035727891842342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1| + 1 : ℚ) / 2⌉

end

end A008610.P4370035727891842342

namespace A008610

/-- `ceil((abs(∑[∑[(n+1)%2]²]-1)+1)/2)` -/
def P4370035727891842342.Spec : Prop :=
  ∀ n, P4370035727891842342.a n = A008610 n

end A008610

/-! ## A008610.P15617910181383035310

`∑[A008818(n)]`
-/

namespace A008610.P15617910181383035310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008610.P15617910181383035310

namespace A008610

/-- `∑[A008818(n)]` -/
def P15617910181383035310.Spec : Prop :=
  ∀ n, P15617910181383035310.a n = A008610 n

end A008610

/-! ## A008610.P1817792942671366049

`∑[∑[A110514(n)]]`
-/

namespace A008610.P1817792942671366049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008610.P1817792942671366049

namespace A008610

/-- `∑[∑[A110514(n)]]` -/
def P1817792942671366049.Spec : Prop :=
  ∀ n, P1817792942671366049.a n = A008610 n

end A008610

/-! ## A008610.P16761898028013370603

`ceil(A005993(n)/2)`
-/

namespace A008610.P16761898028013370603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005993 n : ℚ) / 2⌉

end

end A008610.P16761898028013370603

namespace A008610

/-- `ceil(A005993(n)/2)` -/
def P16761898028013370603.Spec : Prop :=
  ∀ n, P16761898028013370603.a n = A008610 n

end A008610

/-! ## A008610.P7377035591163488120

`∑[∑[∑[A110516(n)]]]`
-/

namespace A008610.P7377035591163488120
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008610.P7377035591163488120

namespace A008610

/-- `∑[∑[∑[A110516(n)]]]` -/
def P7377035591163488120.Spec : Prop :=
  ∀ n, P7377035591163488120.a n = A008610 n

end A008610

/-! ## A008610.P8537390063031017329

`ceil(A168380(n+1)/4)`
-/

namespace A008610.P8537390063031017329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168380 (n + 1) : ℚ) / 4⌉

end

end A008610.P8537390063031017329

namespace A008610

/-- `ceil(A168380(n+1)/4)` -/
def P8537390063031017329.Spec : Prop :=
  ∀ n, P8537390063031017329.a n = A008610 n

end A008610

/-! ## A008610.P15727216549956350531

`ceil(∑[A008619(n)²/2])`
-/

namespace A008610.P15727216549956350531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A008610.P15727216549956350531

namespace A008610

/-- `ceil(∑[A008619(n)²/2])` -/
def P15727216549956350531.Spec : Prop :=
  ∀ n, P15727216549956350531.a n = A008610 n

end A008610

/-! ## A008610.P4002708983435062324

`A212988(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008610.P4002708983435062324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A212988 n + a (n - 2)

end

end A008610.P4002708983435062324

namespace A008610

/-- `A212988(n)+a(n-2)` -/
def P4002708983435062324.Spec : Prop :=
  ∀ n, P4002708983435062324.a n = A008610 n

end A008610

/-! ## A008610.P2186865659551945840

`∑[∑[A106249(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A008610.P2186865659551945840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A106249 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008610.P2186865659551945840

namespace A008610

/-- `∑[∑[A106249(n)-a(n-1)]]` -/
def P2186865659551945840.Spec : Prop :=
  ∀ n, P2186865659551945840.a n = A008610 n

end A008610

/-! ## A008610.P9575193430392201953

`∑[A166515(A004442(n))]`
-/

namespace A008610.P9575193430392201953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008610.P9575193430392201953

namespace A008610

/-- `∑[A166515(A004442(n))]` -/
def P9575193430392201953.Spec : Prop :=
  ∀ n, P9575193430392201953.a n = A008610 n

end A008610

/-! ## A008610.P18084922444843740168

`∑[A008805(n)-A110655(n)]`
-/

namespace A008610.P18084922444843740168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008610.P18084922444843740168

namespace A008610

/-- `∑[A008805(n)-A110655(n)]` -/
def P18084922444843740168.Spec : Prop :=
  ∀ n, P18084922444843740168.a n = A008610 n

end A008610

/-! ## A008610.P5172243530081834819

`A001973(n)+2*A026810(n)`
-/

namespace A008610.P5172243530081834819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 n + 2 * A026810 n

end

end A008610.P5172243530081834819

namespace A008610

/-- `A001973(n)+2*A026810(n)` -/
def P5172243530081834819.Spec : Prop :=
  ∀ n, P5172243530081834819.a n = A008610 n

end A008610

/-! ## A008610.P5669256376133553585

`2*A005232(n)-A008805(n)`
-/

namespace A008610.P5669256376133553585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005232 n - A008805 n

end

end A008610.P5669256376133553585

namespace A008610

/-- `2*A005232(n)-A008805(n)` -/
def P5669256376133553585.Spec : Prop :=
  ∀ n, P5669256376133553585.a n = A008610 n

end A008610

/-! ## A008610.P7675362549331040146

`2*A005232(n)-A000217(A008619(n))`
-/

namespace A008610.P7675362549331040146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005232 n - A000217 (A008619 n).toNat

end

end A008610.P7675362549331040146

namespace A008610

/-- `2*A005232(n)-A000217(A008619(n))` -/
def P7675362549331040146.Spec : Prop :=
  ∀ n, P7675362549331040146.a n = A008610 n

end A008610

/-! ## A008610.P11074137237860061002

`A000292(n)+∑[A008624(n)-A001318(n)]`
-/

namespace A008610.P11074137237860061002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n - A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008610.P11074137237860061002

namespace A008610

/-- `A000292(n)+∑[A008624(n)-A001318(n)]` -/
def P11074137237860061002.Spec : Prop :=
  ∀ n, P11074137237860061002.a n = A008610 n

end A008610

/-! ## A008610.P18001886530303991111

`A008621(n)+∑[A008805(n)-A008621(n)]`
-/

namespace A008610.P18001886530303991111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008610.P18001886530303991111

namespace A008610

/-- `A008621(n)+∑[A008805(n)-A008621(n)]` -/
def P18001886530303991111.Spec : Prop :=
  ∀ n, P18001886530303991111.a n = A008610 n

end A008610

/-! ## A008610.P4835109475125857330

`A309715(2*n+1)+A266769(n)`
-/

namespace A008610.P4835109475125857330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309715 (2 * n + 1) + A266769 n

end

end A008610.P4835109475125857330

namespace A008610

/-- `A309715(2*n+1)+A266769(n)` -/
def P4835109475125857330.Spec : Prop :=
  ∀ n, P4835109475125857330.a n = A008610 n

end A008610

/-!
# A008611: a(n) = a(n-3) + 1, with a(0)=a(2)=1, a(1)=0.

The programs for A008611, the canonical program `A008611.P13529448793166959438` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008611 has offset 0).

The definition of A008611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+1` (program `A008611.P13529448793166959438`, by `A008611.P13529448793166959438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008611.P13529448793166959438

`a(n-3)+1` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008611

/-- `a(n-3)+1` -/
def P13529448793166959438.Spec : Prop :=
  ∀ n, (P13529448793166959438.a n : ℤ) = A008611 n

theorem P13529448793166959438.correct : P13529448793166959438.Spec := by
  intro n
  simp only [A008611]

end A008611

/-! ## A008611.P8585811955209249334

`n-1-2*floor((n-1)/3)`
-/

namespace A008611.P8585811955209249334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - 2 * ⌊((n : ℤ) - 1 : ℚ) / 3⌋

end

end A008611.P8585811955209249334

namespace A008611

/-- `n-1-2*floor((n-1)/3)` -/
def P8585811955209249334.Spec : Prop :=
  ∀ n, P8585811955209249334.a n = A008611 n

end A008611

/-! ## A008611.P15382360304896259386

`(n+1+2*A049347(n))/3`
-/

namespace A008611.P15382360304896259386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + (1 + 2 * A049347 n) : ℚ) / 3

end

end A008611.P15382360304896259386

namespace A008611

/-- `(n+1+2*A049347(n))/3` -/
def P15382360304896259386.Spec : Prop :=
  ∀ n, P15382360304896259386.a n = (A008611 n : ℚ)

end A008611

/-! ## A008611.P5128980448954584164

`∑[(-1)^(n%3)]`
-/

namespace A008611.P5128980448954584164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P5128980448954584164

namespace A008611

/-- `∑[(-1)^(n%3)]` -/
def P5128980448954584164.Spec : Prop :=
  ∀ n, P5128980448954584164.a n = A008611 n

end A008611

/-! ## A008611.P3602309852182726795

`∑[gcd(3, ∑[n])-2]`
-/

namespace A008611.P3602309852182726795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P3602309852182726795

namespace A008611

/-- `∑[gcd(3, ∑[n])-2]` -/
def P3602309852182726795.Spec : Prop :=
  ∀ n, P3602309852182726795.a n = A008611 n

end A008611

/-! ## A008611.P3823426876618186923

`∑[(-1)^comp[or(3, n)]]`
-/

namespace A008611.P3823426876618186923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P3823426876618186923

namespace A008611

/-- `∑[(-1)^comp[or(3, n)]]` -/
def P3823426876618186923.Spec : Prop :=
  ∀ n, P3823426876618186923.a n = A008611 n

end A008611

/-! ## A008611.P13763597495487098675

`∑[round(cos(gcd(9, n+2)))]`
-/

namespace A008611.P13763597495487098675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Nat.gcd 9 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P13763597495487098675

namespace A008611

/-- `∑[round(cos(gcd(9, n+2)))]` -/
def P13763597495487098675.Spec : Prop :=
  ∀ n, P13763597495487098675.a n = A008611 n

end A008611

/-! ## A008611.P12885967681230235681

`∑[(∑[n]+2)%3-1]`
-/

namespace A008611.P12885967681230235681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j + 2) % 3 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P12885967681230235681

namespace A008611

/-- `∑[(∑[n]+2)%3-1]` -/
def P12885967681230235681.Spec : Prop :=
  ∀ n, P12885967681230235681.a n = A008611 n

end A008611

/-! ## A008611.P13979416357617959464

`∑[1-∑[2*n]%3]`
-/

namespace A008611.P13979416357617959464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P13979416357617959464

namespace A008611

/-- `∑[1-∑[2*n]%3]` -/
def P13979416357617959464.Spec : Prop :=
  ∀ n, P13979416357617959464.a n = A008611 n

end A008611

/-! ## A008611.P17607214374692819065

`∑[Δ[lcm(3, n+1)]%2]`
-/

namespace A008611.P17607214374692819065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P17607214374692819065

namespace A008611

/-- `∑[Δ[lcm(3, n+1)]%2]` -/
def P17607214374692819065.Spec : Prop :=
  ∀ n, P17607214374692819065.a n = A008611 n

end A008611

/-! ## A008611.P1472454975390658191

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=-1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A008611.P1472454975390658191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P1472454975390658191

namespace A008611

/-- `∑[floor(a(n-3))]` -/
def P1472454975390658191.Spec : Prop :=
  ∀ n, P1472454975390658191.a n = A008611 n

end A008611

/-! ## A008611.P18022797866044684976

`floor((gcd(n, n+3)+n)/3)`
-/

namespace A008611.P18022797866044684976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd n (n + 3) + n : ℚ) / 3⌋

end

end A008611.P18022797866044684976

namespace A008611

/-- `floor((gcd(n, n+3)+n)/3)` -/
def P18022797866044684976.Spec : Prop :=
  ∀ n, P18022797866044684976.a n = A008611 n

end A008611

/-! ## A008611.P13129893681323627416

`∑[1/a(n-3)]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A008611.P13129893681323627416
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  1 / f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P13129893681323627416

namespace A008611

/-- `∑[1/a(n-3)]` -/
def P13129893681323627416.Spec : Prop :=
  ∀ n, P13129893681323627416.a n = (A008611 n : ℚ)

end A008611

/-! ## A008611.P225713895390438586

`∑[a(n-3)^3]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A008611.P225713895390438586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  f1 (n - 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P225713895390438586

namespace A008611

/-- `∑[a(n-3)^3]` -/
def P225713895390438586.Spec : Prop :=
  ∀ n, P225713895390438586.a n = A008611 n

end A008611

/-! ## A008611.P7087310051974000613

`-xor(-1, a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A008611.P7087310051974000613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  -Int.xor (-1) (a (n - 3))

end

end A008611.P7087310051974000613

namespace A008611

/-- `-xor(-1, a(n-3))` -/
def P7087310051974000613.Spec : Prop :=
  ∀ n, P7087310051974000613.a n = A008611 n

end A008611

/-! ## A008611.P15131123014078669634

`∑[(-1)^dr(2*n+n+2)]`
-/

namespace A008611.P15131123014078669634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.digitalRoot (2 * n + (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008611.P15131123014078669634

namespace A008611

/-- `∑[(-1)^dr(2*n+n+2)]` -/
def P15131123014078669634.Spec : Prop :=
  ∀ n, P15131123014078669634.a n = A008611 n

end A008611

/-! ## A008611.P14609621888042528453

`-Δ[a(n-3)-(n-1)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A008611.P14609621888042528453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  f1 (n - 3) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A008611.P14609621888042528453

namespace A008611

/-- `-Δ[a(n-3)-(n-1)]` -/
def P14609621888042528453.Spec : Prop :=
  ∀ n, P14609621888042528453.a n = A008611 n

end A008611

/-! ## A008611.P11865013672151703492

`abs(a(n-1)-(n-a(n-2)))` with `a(0)=1, a(1)=0`
-/

namespace A008611.P11865013672151703492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  |a (n - 1) - ((n : ℤ) - a (n - 2))|

end

end A008611.P11865013672151703492

namespace A008611

/-- `abs(a(n-1)-(n-a(n-2)))` -/
def P11865013672151703492.Spec : Prop :=
  ∀ n, P11865013672151703492.a n = A008611 n

end A008611

/-!
# A008612: Molien series of 2-dimensional representation of SL(2,3).

The programs for A008612, the canonical program `A008612.P16648533606768999186` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008612 has offset 0).

The definition of A008612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008612.P16648533606768999186

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008612

/-- `a(n-2)+a(n-3)-a(n-5)` -/
def P16648533606768999186.Spec : Prop :=
  ∀ n, P16648533606768999186.a n = A008612 n

theorem P16648533606768999186.correct : P16648533606768999186.Spec := by
  intro n
  simp only [A008612]

end A008612

/-! ## A008612.P9895902519695056049

`2*floor(n/3)-n/2+(3+(-1)^n)/4`
-/

namespace A008612.P9895902519695056049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ⌊(n : ℚ) / 3⌋ : ℚ) - (n : ℚ) / 2 + (3 + (-1) ^ n : ℚ) / 4

end

end A008612.P9895902519695056049

namespace A008612

/-- `2*floor(n/3)-n/2+(3+(-1)^n)/4` -/
def P9895902519695056049.Spec : Prop :=
  ∀ n, P9895902519695056049.a n = (A008612 n : ℚ)

end A008612

/-! ## A008612.P8320292970489651145

`floor(∑[floor(a(n-3))]/2)` with `a(0)=2, a(1)=-1, a(2)=-1, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A008612.P8320292970489651145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, -1, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A008612.P8320292970489651145

namespace A008612

/-- `floor(∑[floor(a(n-3))]/2)` -/
def P8320292970489651145.Spec : Prop :=
  ∀ n, P8320292970489651145.a n = A008612 n

end A008612

/-! ## A008612.P17667470778045958620

`floor(n/2-(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=0`
-/

namespace A008612.P17667470778045958620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌊(n : ℚ) / 2 - (a (n - 1) + a (n - 2) : ℚ)⌋

end

end A008612.P17667470778045958620

namespace A008612

/-- `floor(n/2-(a(n-1)+a(n-2)))` -/
def P17667470778045958620.Spec : Prop :=
  ∀ n, P17667470778045958620.a n = A008612 n

end A008612

/-! ## A008612.P9527866142924295859

`floor(n/2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A008612.P9527866142924295859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ⌊(n : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 2) : ℚ)⌋

end

end A008612.P9527866142924295859

namespace A008612

/-- `floor(n/2-a(n-1)-a(n-2))` -/
def P9527866142924295859.Spec : Prop :=
  ∀ n, P9527866142924295859.a n = A008612 n

end A008612

/-! ## A008612.P67547222294599063

`∑[a(n-3)-(-1)^a(n-1)]` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=1`
-/

namespace A008612.P67547222294599063
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, -1, 0, 1] fun n f1 =>
  f1 (n - 3) - (-1 : ℝ) ^ (f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008612.P67547222294599063

namespace A008612

/-- `∑[a(n-3)-(-1)^a(n-1)]` -/
def P67547222294599063.Spec : Prop :=
  ∀ n, P67547222294599063.a n = (A008612 n : ℝ)

end A008612

/-! ## A008612.P3462743023776746006

`ceil(A063942(n)/2)`
-/

namespace A008612.P3462743023776746006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A063942 n : ℚ) / 2⌉

end

end A008612.P3462743023776746006

namespace A008612

/-- `ceil(A063942(n)/2)` -/
def P3462743023776746006.Spec : Prop :=
  ∀ n, P3462743023776746006.a n = A008612 n

end A008612

/-! ## A008612.P6526983126317036705

`A194509(n-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A008612.P6526983126317036705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A194509 ((n : ℤ) - a (n - 1)).toNat

end

end A008612.P6526983126317036705

namespace A008612

/-- `A194509(n-a(n-1))` -/
def P6526983126317036705.Spec : Prop :=
  ∀ n, P6526983126317036705.a n = A008612 n

end A008612

/-! ## A008612.P11806268071435867636

`ceil(A047360(n+1)/2-n)`
-/

namespace A008612.P11806268071435867636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A047360 (n + 1) : ℚ) / 2 - (n : ℚ)⌉

end

end A008612.P11806268071435867636

namespace A008612

/-- `ceil(A047360(n+1)/2-n)` -/
def P11806268071435867636.Spec : Prop :=
  ∀ n, P11806268071435867636.a n = A008612 n

end A008612

/-! ## A008612.P10378402389435930884

`A004526(A063942(n)+1)`
-/

namespace A008612.P10378402389435930884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063942 n + 1).toNat

end

end A008612.P10378402389435930884

namespace A008612

/-- `A004526(A063942(n)+1)` -/
def P10378402389435930884.Spec : Prop :=
  ∀ n, P10378402389435930884.a n = A008612 n

end A008612

/-! ## A008612.P4507232777459513976

`A047484(n+1)%A075328(n)`
-/

namespace A008612.P4507232777459513976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047484 (n + 1)) (A075328 n)

end

end A008612.P4507232777459513976

namespace A008612

/-- `A047484(n+1)%A075328(n)` -/
def P4507232777459513976.Spec : Prop :=
  ∀ n, P4507232777459513976.a n = A008612 n

end A008612

/-! ## A008612.P12120177958753876888

`A063241(n+1)%A063217(n+1)`
-/

namespace A008612.P12120177958753876888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063241 (n + 1)) (A063217 (n + 1))

end

end A008612.P12120177958753876888

namespace A008612

/-- `A063241(n+1)%A063217(n+1)` -/
def P12120177958753876888.Spec : Prop :=
  ∀ n, P12120177958753876888.a n = A008612 n

end A008612

/-! ## A008612.P488091626928814282

`A113804(n+1)%A063245(n+1)`
-/

namespace A008612.P488091626928814282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113804 (n + 1)) (A063245 (n + 1))

end

end A008612.P488091626928814282

namespace A008612

/-- `A113804(n+1)%A063245(n+1)` -/
def P488091626928814282.Spec : Prop :=
  ∀ n, P488091626928814282.a n = A008612 n

end A008612

/-! ## A008612.P1013123410924450510

`A008615(A330396(n))`
-/

namespace A008612.P1013123410924450510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A330396 n).toNat

end

end A008612.P1013123410924450510

namespace A008612

/-- `A008615(A330396(n))` -/
def P1013123410924450510.Spec : Prop :=
  ∀ n, P1013123410924450510.a n = A008612 n

end A008612

/-! ## A008612.P3860440522604711864

`A059169(A272071(n+1))`
-/

namespace A008612.P3860440522604711864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A272071 (n + 1)).toNat

end

end A008612.P3860440522604711864

namespace A008612

/-- `A059169(A272071(n+1))` -/
def P3860440522604711864.Spec : Prop :=
  ∀ n, P3860440522604711864.a n = A008612 n

end A008612

/-! ## A008612.P9035504071565289538

`A242062(A047304(n+1))`
-/

namespace A008612.P9035504071565289538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A047304 (n + 1)).toNat

end

end A008612.P9035504071565289538

namespace A008612

/-- `A242062(A047304(n+1))` -/
def P9035504071565289538.Spec : Prop :=
  ∀ n, P9035504071565289538.a n = A008612 n

end A008612

/-! ## A008612.P11657771290426263964

`A194513(A049636(n+1))`
-/

namespace A008612.P11657771290426263964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194513 (A049636 (n + 1)).toNat

end

end A008612.P11657771290426263964

namespace A008612

/-- `A194513(A049636(n+1))` -/
def P11657771290426263964.Spec : Prop :=
  ∀ n, P11657771290426263964.a n = A008612 n

end A008612

/-! ## A008612.P16603970804053574888

`A194513(A147677(n+1))`
-/

namespace A008612.P16603970804053574888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194513 (A147677 (n + 1)).toNat

end

end A008612.P16603970804053574888

namespace A008612

/-- `A194513(A147677(n+1))` -/
def P16603970804053574888.Spec : Prop :=
  ∀ n, P16603970804053574888.a n = A008612 n

end A008612

/-! ## A008612.P1684085119068844727

`A194513(A168202(n+1))`
-/

namespace A008612.P1684085119068844727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194513 (A168202 (n + 1)).toNat

end

end A008612.P1684085119068844727

namespace A008612

/-- `A194513(A168202(n+1))` -/
def P1684085119068844727.Spec : Prop :=
  ∀ n, P1684085119068844727.a n = A008612 n

end A008612

/-! ## A008612.P10215138381084636793

`A194519(A063212(n+1))`
-/

namespace A008612.P10215138381084636793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194519 (A063212 (n + 1)).toNat

end

end A008612.P10215138381084636793

namespace A008612

/-- `A194519(A063212(n+1))` -/
def P10215138381084636793.Spec : Prop :=
  ∀ n, P10215138381084636793.a n = A008612 n

end A008612

/-!
# A008613: Molien series for 3-dimensional representation of A_5.

The programs for A008613, the canonical program `A008613.P5983281580237811505` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008613 has offset 0).

The definition of A008613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008613.P15567951091036062869

`A008651(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008613.P15567951091036062869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008651 n + a (n - 2)

end

end A008613.P15567951091036062869

namespace A008613

/-- `A008651(n)+a(n-2)` -/
def P15567951091036062869.Spec : Prop :=
  ∀ n, P15567951091036062869.a n = A008613 n

end A008613

/-! ## A008613.P2364334762400029027

`∑[A033999(n)*A087866(n)]`
-/

namespace A008613.P2364334762400029027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A087866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008613.P2364334762400029027

namespace A008613

/-- `∑[A033999(n)*A087866(n)]` -/
def P2364334762400029027.Spec : Prop :=
  ∀ n, P2364334762400029027.a n = A008613 n

end A008613

/-! ## A008613.P6566691806498639063

`A211524(A176415(n)+A028242(n))`
-/

namespace A008613.P6566691806498639063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A176415 n + A028242 n).toNat

end

end A008613.P6566691806498639063

namespace A008613

/-- `A211524(A176415(n)+A028242(n))` -/
def P6566691806498639063.Spec : Prop :=
  ∀ n, P6566691806498639063.a n = A008613 n

end A008613

/-! ## A008613.P5983281580237811505

`A008796(n)+A008798(n)-A008795(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008613

/-- `A008796(n)+A008798(n)-A008795(n)` -/
def P5983281580237811505.Spec : Prop :=
  ∀ n, P5983281580237811505.a n = A008613 n

theorem P5983281580237811505.correct : P5983281580237811505.Spec := by
  intro n
  simp only [A008613]

end A008613

/-! ## A008613.P1739864617576952837

`A211524(A168321(n+2))`
-/

namespace A008613.P1739864617576952837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A168321 (n + 2)).toNat

end

end A008613.P1739864617576952837

namespace A008613

/-- `A211524(A168321(n+2))` -/
def P1739864617576952837.Spec : Prop :=
  ∀ n, P1739864617576952837.a n = A008613 n

end A008613

/-! ## A008613.P6655651361217734133

`A008680(4*n)-A000217(A110654(n))`
-/

namespace A008613.P6655651361217734133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (4 * n) - A000217 (A110654 n).toNat

end

end A008613.P6655651361217734133

namespace A008613

/-- `A008680(4*n)-A000217(A110654(n))` -/
def P6655651361217734133.Spec : Prop :=
  ∀ n, P6655651361217734133.a n = A008613 n

end A008613

/-! ## A008613.P3308796935648210019

`round((A016777(A008743(n))-A005044(n))/5)`
-/

namespace A008613.P3308796935648210019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016777 (A008743 n).toNat - A005044 n : ℚ) / 5)

end

end A008613.P3308796935648210019

namespace A008613

/-- `round((A016777(A008743(n))-A005044(n))/5)` -/
def P3308796935648210019.Spec : Prop :=
  ∀ n, P3308796935648210019.a n = A008613 n

end A008613

/-! ## A008613.P2898202826186933334

`A008798(n)-A004526(A008796(n))`
-/

namespace A008613.P2898202826186933334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008798 n - A004526 (A008796 n).toNat

end

end A008613.P2898202826186933334

namespace A008613

/-- `A008798(n)-A004526(A008796(n))` -/
def P2898202826186933334.Spec : Prop :=
  ∀ n, P2898202826186933334.a n = A008613 n

end A008613

/-! ## A008613.P2049616705282183040

`A008798(n)-A002264(A008795(n))`
-/

namespace A008613.P2049616705282183040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008798 n - A002264 (A008795 n).toNat

end

end A008613.P2049616705282183040

namespace A008613

/-- `A008798(n)-A002264(A008795(n))` -/
def P2049616705282183040.Spec : Prop :=
  ∀ n, P2049616705282183040.a n = A008613 n

end A008613

/-!
# A008614: Molien series of 3-dimensional representation of group GL(3,2) (= L(2,7)); a simple group of order 168.

The programs for A008614, the canonical program `A008614.P499716109925837554` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008614 has offset 0).

The definition of A008614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008614.P499716109925837554

`A008625(n)-A005044(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008614

/-- `A008625(n)-A005044(n)` -/
def P499716109925837554.Spec : Prop :=
  ∀ n, P499716109925837554.a n = A008614 n

theorem P499716109925837554.correct : P499716109925837554.Spec := by
  intro n
  simp only [A008614]

end A008614

/-! ## A008614.P13754269781883440542

`A008625(n)-Δ[A026810(n)]`
-/

namespace A008614.P13754269781883440542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n - (f1 (n + 1) - f1 n)

end

end A008614.P13754269781883440542

namespace A008614

/-- `A008625(n)-Δ[A026810(n)]` -/
def P13754269781883440542.Spec : Prop :=
  ∀ n, P13754269781883440542.a n = A008614 n

end A008614

/-! ## A008614.P16959432101536693687

`A008625(n)-∑{d}[n, A051493(#)]`
-/

namespace A008614.P16959432101536693687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n - ∑ d ∈ Nat.divisors (f1 n), A051493 d

end

end A008614.P16959432101536693687

namespace A008614

/-- `A008625(n)-∑{d}[n, A051493(#)]` -/
def P16959432101536693687.Spec : Prop :=
  ∀ n, P16959432101536693687.a n = A008614 n

end A008614

/-! ## A008614.P7903238758643838210

`A008625(n)-A069905(n+1-round(xor(1, n)/2))`
-/

namespace A008614.P7903238758643838210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n - A069905 ((n + 1 : ℤ) - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

end

end A008614.P7903238758643838210

namespace A008614

/-- `A008625(n)-A069905(n+1-round(xor(1, n)/2))` -/
def P7903238758643838210.Spec : Prop :=
  ∀ n, P7903238758643838210.a n = A008614 n

end A008614

/-! ## A008614.P1775529313551334471

`A008625(n)-(A325691(n+1)-Δ[round(n²/12)])`
-/

namespace A008614.P1775529313551334471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n - (A325691 (n + 1) - (f1 (n + 1) - f1 n))

end

end A008614.P1775529313551334471

namespace A008614

/-- `A008625(n)-(A325691(n+1)-Δ[round(n²/12)])` -/
def P1775529313551334471.Spec : Prop :=
  ∀ n, P1775529313551334471.a n = A008614 n

end A008614

/-! ## A008614.P7019913546540144075

`A008625(n)-A069905(A030451(n))`
-/

namespace A008614.P7019913546540144075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n - A069905 (A030451 n).toNat

end

end A008614.P7019913546540144075

namespace A008614

/-- `A008625(n)-A069905(A030451(n))` -/
def P7019913546540144075.Spec : Prop :=
  ∀ n, P7019913546540144075.a n = A008614 n

end A008614

/-! ## A008614.P12120715282984066161

`A008625(n)-A211540(A060762(n+1))`
-/

namespace A008614.P12120715282984066161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n - A211540 (A060762 (n + 1)).toNat

end

end A008614.P12120715282984066161

namespace A008614

/-- `A008625(n)-A211540(A060762(n+1))` -/
def P12120715282984066161.Spec : Prop :=
  ∀ n, P12120715282984066161.a n = A008614 n

end A008614

/-! ## A008614.P6781563515537096320

`A008625(n)+A008642(n)-A001399(n)`
-/

namespace A008614.P6781563515537096320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n + (A008642 n - A001399 n)

end

end A008614.P6781563515537096320

namespace A008614

/-- `A008625(n)+A008642(n)-A001399(n)` -/
def P6781563515537096320.Spec : Prop :=
  ∀ n, P6781563515537096320.a n = A008614 n

end A008614

/-! ## A008614.P13128496857133573386

`A008625(n)+A008743(n)-A008742(n)`
-/

namespace A008614.P13128496857133573386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n + (A008743 n - A008742 n)

end

end A008614.P13128496857133573386

namespace A008614

/-- `A008625(n)+A008743(n)-A008742(n)` -/
def P13128496857133573386.Spec : Prop :=
  ∀ n, P13128496857133573386.a n = A008614 n

end A008614

/-! ## A008614.P16902621126915559249

`A008625(n)-(A026810(n+1)-A026810(n))`
-/

namespace A008614.P16902621126915559249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n - (A026810 (n + 1) - A026810 n)

end

end A008614.P16902621126915559249

namespace A008614

/-- `A008625(n)-(A026810(n+1)-A026810(n))` -/
def P16902621126915559249.Spec : Prop :=
  ∀ n, P16902621126915559249.a n = A008614 n

end A008614

/-! ## A008614.P12295992551344501190

`A008625(n)-A069905(A028242(n+1))`
-/

namespace A008614.P12295992551344501190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 n - A069905 (A028242 (n + 1)).toNat

end

end A008614.P12295992551344501190

namespace A008614

/-- `A008625(n)-A069905(A028242(n+1))` -/
def P12295992551344501190.Spec : Prop :=
  ∀ n, P12295992551344501190.a n = A008614 n

end A008614

/-!
# A008615: a(n) = floor(n/2) - floor(n/3).

The programs for A008615, the canonical program `A008615.P10410393553474300613` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008615 has offset 0).

The definition of A008615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)-floor(n/3)` (program `A008615.P10410393553474300613`, by `A008615.P10410393553474300613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008615.P10410393553474300613

`floor(n/2)-floor(n/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008615

/-- `floor(n/2)-floor(n/3)` -/
def P10410393553474300613.Spec : Prop :=
  ∀ n, P10410393553474300613.a n = A008615 n

theorem P10410393553474300613.correct : P10410393553474300613.Spec := by
  intro n
  simp only [A008615]

end A008615

/-! ## A008615.P546072782434738006

`round(xor(1, n)/6)`
-/

namespace A008615.P546072782434738006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

end

end A008615.P546072782434738006

namespace A008615

/-- `round(xor(1, n)/6)` -/
def P546072782434738006.Spec : Prop :=
  ∀ n, P546072782434738006.a n = A008615 n

end A008615

/-! ## A008615.P8637043861171303906

`ceil(xor(1, n-2)/6)`
-/

namespace A008615.P8637043861171303906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 ((n : ℤ) - 2) : ℚ) / 6⌉

end

end A008615.P8637043861171303906

namespace A008615

/-- `ceil(xor(1, n-2)/6)` -/
def P8637043861171303906.Spec : Prop :=
  ∀ n, P8637043861171303906.a n = A008615 n

end A008615

/-! ## A008615.P11000073176057565460

`∑[n²%3-n%2]`
-/

namespace A008615.P11000073176057565460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008615.P11000073176057565460

namespace A008615

/-- `∑[n²%3-n%2]` -/
def P11000073176057565460.Spec : Prop :=
  ∀ n, P11000073176057565460.a n = A008615 n

end A008615

/-! ## A008615.P16907574175654259022

`comp[3*n]%comp[4*n]`
-/

namespace A008615.P16907574175654259022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A008615.P16907574175654259022

namespace A008615

/-- `comp[3*n]%comp[4*n]` -/
def P16907574175654259022.Spec : Prop :=
  ∀ n, (P16907574175654259022.a n : ℤ) = A008615 n

end A008615

/-! ## A008615.P6279602201828596068

`floor((gcd(2, n)+n/2)/3)`
-/

namespace A008615.P6279602201828596068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.gcd 2 n : ℚ) + (n : ℚ) / 2) / 3⌋

end

end A008615.P6279602201828596068

namespace A008615

/-- `floor((gcd(2, n)+n/2)/3)` -/
def P6279602201828596068.Spec : Prop :=
  ∀ n, P6279602201828596068.a n = A008615 n

end A008615

/-! ## A008615.P8558969485319839227

`round(n/3-a(n-1))` with `a(0)=0`
-/

namespace A008615.P8558969485319839227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3 - (a (n - 1) : ℚ))

end

end A008615.P8558969485319839227

namespace A008615

/-- `round(n/3-a(n-1))` -/
def P8558969485319839227.Spec : Prop :=
  ∀ n, P8558969485319839227.a n = A008615 n

end A008615

/-! ## A008615.P10941060643508986478

`ceil((n-1)/3-a(n-1))` with `a(0)=0`
-/

namespace A008615.P10941060643508986478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈((n : ℤ) - 1 : ℚ) / 3 - (a (n - 1) : ℚ)⌉

end

end A008615.P10941060643508986478

namespace A008615

/-- `ceil((n-1)/3-a(n-1))` -/
def P10941060643508986478.Spec : Prop :=
  ∀ n, P10941060643508986478.a n = A008615 n

end A008615

/-! ## A008615.P1860418457886191914

`∑[a(n-3)+(-1)^n]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A008615.P1860418457886191914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008615.P1860418457886191914

namespace A008615

/-- `∑[a(n-3)+(-1)^n]` -/
def P1860418457886191914.Spec : Prop :=
  ∀ n, P1860418457886191914.a n = A008615 n

end A008615

/-! ## A008615.P2490013683148494184

`∑[(a(n-3)²-1)^n]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A008615.P2490013683148494184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  (f1 (n - 3) ^ 2 - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008615.P2490013683148494184

namespace A008615

/-- `∑[(a(n-3)²-1)^n]` -/
def P2490013683148494184.Spec : Prop :=
  ∀ n, P2490013683148494184.a n = A008615 n

end A008615

/-! ## A008615.P3106821159259289826

`Δ[A069905(n)]`
-/

namespace A008615.P3106821159259289826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008615.P3106821159259289826

namespace A008615

/-- `Δ[A069905(n)]` -/
def P3106821159259289826.Spec : Prop :=
  ∀ n, P3106821159259289826.a n = A008615 n

end A008615

/-! ## A008615.P36852387895394783

`∑[A117447(n)-1]`
-/

namespace A008615.P36852387895394783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117447 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008615.P36852387895394783

namespace A008615

/-- `∑[A117447(n)-1]` -/
def P36852387895394783.Spec : Prop :=
  ∀ n, P36852387895394783.a n = A008615 n

end A008615

/-! ## A008615.P13153947677335950053

`A004526(A051275(n))`
-/

namespace A008615.P13153947677335950053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A051275 n).toNat

end

end A008615.P13153947677335950053

namespace A008615

/-- `A004526(A051275(n))` -/
def P13153947677335950053.Spec : Prop :=
  ∀ n, P13153947677335950053.a n = A008615 n

end A008615

/-! ## A008615.P12251005029880038324

`A002264(A117572(n))`
-/

namespace A008615.P12251005029880038324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A117572 n).toNat

end

end A008615.P12251005029880038324

namespace A008615

/-- `A002264(A117572(n))` -/
def P12251005029880038324.Spec : Prop :=
  ∀ n, P12251005029880038324.a n = A008615 n

end A008615

/-! ## A008615.P8384625682390122839

`A026922(A130727(n))`
-/

namespace A008615.P8384625682390122839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A130727 n).toNat

end

end A008615.P8384625682390122839

namespace A008615

/-- `A026922(A130727(n))` -/
def P8384625682390122839.Spec : Prop :=
  ∀ n, P8384625682390122839.a n = A008615 n

end A008615

/-! ## A008615.P2940570344929752807

`A004526(A267806(n))`
-/

namespace A008615.P2940570344929752807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A267806 n).toNat

end

end A008615.P2940570344929752807

namespace A008615

/-- `A004526(A267806(n))` -/
def P2940570344929752807.Spec : Prop :=
  ∀ n, P2940570344929752807.a n = A008615 n

end A008615

/-! ## A008615.P9863129069126673573

`A026922(A267808(n))`
-/

namespace A008615.P9863129069126673573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A267808 n).toNat

end

end A008615.P9863129069126673573

namespace A008615

/-- `A026922(A267808(n))` -/
def P9863129069126673573.Spec : Prop :=
  ∀ n, P9863129069126673573.a n = A008615 n

end A008615

/-! ## A008615.P12876620048416959052

`A004526(A008611(n+1))`
-/

namespace A008615.P12876620048416959052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008611 (n + 1)).toNat

end

end A008615.P12876620048416959052

namespace A008615

/-- `A004526(A008611(n+1))` -/
def P12876620048416959052.Spec : Prop :=
  ∀ n, P12876620048416959052.a n = A008615 n

end A008615

/-!
# A008616: Expansion of 1/((1-x^2)(1-x^5)).

The programs for A008616, the canonical program `A008616.P2412341338087474523` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008616 has offset 0).

The definition of A008616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008616.P2412341338087474523

`floor(n/10+(3+(-1)^n)/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008616

/-- `floor(n/10+(3+(-1)^n)/4)` -/
def P2412341338087474523.Spec : Prop :=
  ∀ n, P2412341338087474523.a n = A008616 n

theorem P2412341338087474523.correct : P2412341338087474523.Spec := by
  intro n
  simp only [A008616]

end A008616

/-! ## A008616.P11482754187126226913

`a(n-10)+1` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`
-/

namespace A008616.P11482754187126226913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 1, 1, 1, 1, 1] fun n a =>
  a (n - 10) + 1

end

end A008616.P11482754187126226913

namespace A008616

/-- `a(n-10)+1` -/
def P11482754187126226913.Spec : Prop :=
  ∀ n, (P11482754187126226913.a n : ℤ) = A008616 n

end A008616

/-! ## A008616.P12161181031001990370

`ceil(∑[(-1)^(n%5)]/2)`
-/

namespace A008616.P12161181031001990370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A008616.P12161181031001990370

namespace A008616

/-- `ceil(∑[(-1)^(n%5)]/2)` -/
def P12161181031001990370.Spec : Prop :=
  ∀ n, P12161181031001990370.a n = A008616 n

end A008616

/-! ## A008616.P4854467781026073458

`char[5*n]+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008616.P4854467781026073458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 2)

end

end A008616.P4854467781026073458

namespace A008616

/-- `char[5*n]+a(n-2)` -/
def P4854467781026073458.Spec : Prop :=
  ∀ n, (P4854467781026073458.a n : ℤ) = A008616 n

end A008616

/-! ## A008616.P4996083370193955012

`round(∑[1-a(n-1)]/5)` with `a(0)=3`
-/

namespace A008616.P4996083370193955012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5)

end

end A008616.P4996083370193955012

namespace A008616

/-- `round(∑[1-a(n-1)]/5)` -/
def P4996083370193955012.Spec : Prop :=
  ∀ n, P4996083370193955012.a n = A008616 n

end A008616

/-! ## A008616.P2079570578032946196

`ceil(floor(xor(1, n)-n/2)/5)`
-/

namespace A008616.P2079570578032946196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(Nat.xor 1 n : ℚ) - (n : ℚ) / 2⌋ : ℚ) / 5⌉

end

end A008616.P2079570578032946196

namespace A008616

/-- `ceil(floor(xor(1, n)-n/2)/5)` -/
def P2079570578032946196.Spec : Prop :=
  ∀ n, P2079570578032946196.a n = A008616 n

end A008616

/-! ## A008616.P2907253525860011416

`∑[char[5*n]-a(n-1)]` with `a(0)=1`
-/

namespace A008616.P2907253525860011416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008616.P2907253525860011416

namespace A008616

/-- `∑[char[5*n]-a(n-1)]` -/
def P2907253525860011416.Spec : Prop :=
  ∀ n, P2907253525860011416.a n = A008616 n

end A008616

/-! ## A008616.P15816438044992086917

`1-(a(n-1)-floor(n/5))` with `a(0)=1`
-/

namespace A008616.P15816438044992086917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - ⌊(n : ℚ) / 5⌋)

end

end A008616.P15816438044992086917

namespace A008616

/-- `1-(a(n-1)-floor(n/5))` -/
def P15816438044992086917.Spec : Prop :=
  ∀ n, P15816438044992086917.a n = A008616 n

end A008616

/-! ## A008616.P2921757580990374819

`ceil((n+1)/5-a(n-1))` with `a(0)=1`
-/

namespace A008616.P2921757580990374819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n + 1 : ℚ) / 5 - (a (n - 1) : ℚ)⌉

end

end A008616.P2921757580990374819

namespace A008616

/-- `ceil((n+1)/5-a(n-1))` -/
def P2921757580990374819.Spec : Prop :=
  ∀ n, P2921757580990374819.a n = A008616 n

end A008616

/-! ## A008616.P4269739662801521316

`round((n+3)/5-a(n-1))` with `a(0)=1`
-/

namespace A008616.P4269739662801521316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((n + 3 : ℚ) / 5 - (a (n - 1) : ℚ))

end

end A008616.P4269739662801521316

namespace A008616

/-- `round((n+3)/5-a(n-1))` -/
def P4269739662801521316.Spec : Prop :=
  ∀ n, P4269739662801521316.a n = A008616 n

end A008616

/-! ## A008616.P3922409442514976695

`comp[6*n]-a(n-1)-n` with `a(0)=1`
-/

namespace A008616.P3922409442514976695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1) - (n : ℤ)

end

end A008616.P3922409442514976695

namespace A008616

/-- `comp[6*n]-a(n-1)-n` -/
def P3922409442514976695.Spec : Prop :=
  ∀ n, P3922409442514976695.a n = A008616 n

end A008616

/-! ## A008616.P9950299963247483311

`round(A194509(n+1)/2)`
-/

namespace A008616.P9950299963247483311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A194509 (n + 1) : ℚ) / 2)

end

end A008616.P9950299963247483311

namespace A008616

/-- `round(A194509(n+1)/2)` -/
def P9950299963247483311.Spec : Prop :=
  ∀ n, P9950299963247483311.a n = A008616 n

end A008616

/-! ## A008616.P14740380715758100090

`A047497(n+1)-A007494(n)`
-/

namespace A008616.P14740380715758100090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047497 (n + 1) - A007494 n

end

end A008616.P14740380715758100090

namespace A008616

/-- `A047497(n+1)-A007494(n)` -/
def P14740380715758100090.Spec : Prop :=
  ∀ n, P14740380715758100090.a n = A008616 n

end A008616

/-! ## A008616.P2223677145723783789

`A008619(n)+A057355(n)-n`
-/

namespace A008616.P2223677145723783789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A057355 n - (n : ℤ))

end

end A008616.P2223677145723783789

namespace A008616

/-- `A008619(n)+A057355(n)-n` -/
def P2223677145723783789.Spec : Prop :=
  ∀ n, P2223677145723783789.a n = A008616 n

end A008616

/-! ## A008616.P14050759847162653187

`A001651(n+1)-A047332(n+1)`
-/

namespace A008616.P14050759847162653187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) - A047332 (n + 1)

end

end A008616.P14050759847162653187

namespace A008616

/-- `A001651(n+1)-A047332(n+1)` -/
def P14050759847162653187.Spec : Prop :=
  ∀ n, P14050759847162653187.a n = A008616 n

end A008616

/-! ## A008616.P18044677385261529103

`A047211(n+1)-A060106(n+1)`
-/

namespace A008616.P18044677385261529103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (n + 1) - A060106 (n + 1)

end

end A008616.P18044677385261529103

namespace A008616

/-- `A047211(n+1)-A060106(n+1)` -/
def P18044677385261529103.Spec : Prop :=
  ∀ n, P18044677385261529103.a n = A008616 n

end A008616

/-! ## A008616.P920196702745987733

`A110654(A002266(n)+1-A000035(n))`
-/

namespace A008616.P920196702745987733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002266 n + (1 - A000035 n)).toNat

end

end A008616.P920196702745987733

namespace A008616

/-- `A110654(A002266(n)+1-A000035(n))` -/
def P920196702745987733.Spec : Prop :=
  ∀ n, P920196702745987733.a n = A008616 n

end A008616

/-! ## A008616.P11671985146674147228

`A110654(A110532(n)+1-A110654(n))`
-/

namespace A008616.P11671985146674147228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110532 n + (1 - A110654 n)).toNat

end

end A008616.P11671985146674147228

namespace A008616

/-- `A110654(A110532(n)+1-A110654(n))` -/
def P11671985146674147228.Spec : Prop :=
  ∀ n, P11671985146674147228.a n = A008616 n

end A008616

/-! ## A008616.P419424274420457205

`A110654(1-(A110654(n)-A110532(n)))`
-/

namespace A008616.P419424274420457205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (1 - (A110654 n - A110532 n)).toNat

end

end A008616.P419424274420457205

namespace A008616

/-- `A110654(1-(A110654(n)-A110532(n)))` -/
def P419424274420457205.Spec : Prop :=
  ∀ n, P419424274420457205.a n = A008616 n

end A008616

/-! ## A008616.P10448116263253712221

`A110654(A002266(n)+A000035(n+1))`
-/

namespace A008616.P10448116263253712221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002266 n + A000035 (n + 1)).toNat

end

end A008616.P10448116263253712221

namespace A008616

/-- `A110654(A002266(n)+A000035(n+1))` -/
def P10448116263253712221.Spec : Prop :=
  ∀ n, P10448116263253712221.a n = A008616 n

end A008616

/-!
# A008617: Expansion of 1/((1-x^2)(1-x^7)).

The programs for A008617, the canonical program `A008617.P17971077711324239794` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008617 has offset 0).

The definition of A008617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008617.P17971077711324239794

`floor((2*n+21+7*(-1)^n)/28)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008617

/-- `floor((2*n+21+7*(-1)^n)/28)` -/
def P17971077711324239794.Spec : Prop :=
  ∀ n, P17971077711324239794.a n = A008617 n

theorem P17971077711324239794.correct : P17971077711324239794.Spec := by
  intro n
  simp only [A008617]

end A008617

/-! ## A008617.P18059465574101507481

`∑[char[7*n]-a(n-1)]` with `a(0)=1`
-/

namespace A008617.P18059465574101507481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008617.P18059465574101507481

namespace A008617

/-- `∑[char[7*n]-a(n-1)]` -/
def P18059465574101507481.Spec : Prop :=
  ∀ n, P18059465574101507481.a n = A008617 n

end A008617

/-! ## A008617.P662206446209840360

`a(n-2)+8%gcd(7, n)` with `a(0)=1, a(1)=0`
-/

namespace A008617.P662206446209840360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + 8 % Nat.gcd 7 n

end

end A008617.P662206446209840360

namespace A008617

/-- `a(n-2)+8%gcd(7, n)` -/
def P662206446209840360.Spec : Prop :=
  ∀ n, (P662206446209840360.a n : ℤ) = A008617 n

end A008617

/-! ## A008617.P6562085095715249384

`1-(a(n-1)-floor(n/7))` with `a(0)=1`
-/

namespace A008617.P6562085095715249384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - ⌊(n : ℚ) / 7⌋)

end

end A008617.P6562085095715249384

namespace A008617

/-- `1-(a(n-1)-floor(n/7))` -/
def P6562085095715249384.Spec : Prop :=
  ∀ n, P6562085095715249384.a n = A008617 n

end A008617

/-! ## A008617.P824958330220261901

`ceil((n+1)/7-a(n-1))` with `a(0)=1`
-/

namespace A008617.P824958330220261901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n + 1 : ℚ) / 7 - (a (n - 1) : ℚ)⌉

end

end A008617.P824958330220261901

namespace A008617

/-- `ceil((n+1)/7-a(n-1))` -/
def P824958330220261901.Spec : Prop :=
  ∀ n, P824958330220261901.a n = A008617 n

end A008617

/-! ## A008617.P9112782236488702879

`comp[8*n]-a(n-1)-n` with `a(0)=1`
-/

namespace A008617.P9112782236488702879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1) - (n : ℤ)

end

end A008617.P9112782236488702879

namespace A008617

/-- `comp[8*n]-a(n-1)-n` -/
def P9112782236488702879.Spec : Prop :=
  ∀ n, P9112782236488702879.a n = A008617 n

end A008617

/-! ## A008617.P1195972017779112112

`A082784(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008617.P1195972017779112112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A082784 n + a (n - 2)

end

end A008617.P1195972017779112112

namespace A008617

/-- `A082784(n)+a(n-2)` -/
def P1195972017779112112.Spec : Prop :=
  ∀ n, P1195972017779112112.a n = A008617 n

end A008617

/-! ## A008617.P1914282104105986068

`A057358(n)+1-A110654(n)`
-/

namespace A008617.P1914282104105986068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 n + (1 - A110654 n)

end

end A008617.P1914282104105986068

namespace A008617

/-- `A057358(n)+1-A110654(n)` -/
def P1914282104105986068.Spec : Prop :=
  ∀ n, P1914282104105986068.a n = A008617 n

end A008617

/-! ## A008617.P9337650073410070884

`A057358(n)+1-Δ[A033638(n)]`
-/

namespace A008617.P9337650073410070884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 n + (1 - (f1 (n + 1) - f1 n))

end

end A008617.P9337650073410070884

namespace A008617

/-- `A057358(n)+1-Δ[A033638(n)]` -/
def P9337650073410070884.Spec : Prop :=
  ∀ n, P9337650073410070884.a n = A008617 n

end A008617

/-! ## A008617.P7345191386148500180

`A225875(n+2)-(A004526(n+1)+1)`
-/

namespace A008617.P7345191386148500180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225875 (n + 2) - (A004526 (n + 1) + 1)

end

end A008617.P7345191386148500180

namespace A008617

/-- `A225875(n+2)-(A004526(n+1)+1)` -/
def P7345191386148500180.Spec : Prop :=
  ∀ n, P7345191386148500180.a n = A008617 n

end A008617

/-! ## A008617.P7809821750856927675

`A008619(n)-A057357(n+2)`
-/

namespace A008617.P7809821750856927675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A057357 (n + 2)

end

end A008617.P7809821750856927675

namespace A008617

/-- `A008619(n)-A057357(n+2)` -/
def P7809821750856927675.Spec : Prop :=
  ∀ n, P7809821750856927675.a n = A008617 n

end A008617

/-! ## A008617.P10150959938005286834

`A004526(n)+1-A057357(n+2)`
-/

namespace A008617.P10150959938005286834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1 - A057357 (n + 2)

end

end A008617.P10150959938005286834

namespace A008617

/-- `A004526(n)+1-A057357(n+2)` -/
def P10150959938005286834.Spec : Prop :=
  ∀ n, P10150959938005286834.a n = A008617 n

end A008617

/-! ## A008617.P467337531849973060

`A225875(n+2)-A004526(n+3)`
-/

namespace A008617.P467337531849973060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225875 (n + 2) - A004526 (n + 3)

end

end A008617.P467337531849973060

namespace A008617

/-- `A225875(n+2)-A004526(n+3)` -/
def P467337531849973060.Spec : Prop :=
  ∀ n, P467337531849973060.a n = A008617 n

end A008617

/-! ## A008617.P6222570319623511769

`A008619(A047594(n+2))-A008619(n+1)`
-/

namespace A008617.P6222570319623511769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A047594 (n + 2)).toNat - A008619 (n + 1)

end

end A008617.P6222570319623511769

namespace A008617

/-- `A008619(A047594(n+2))-A008619(n+1)` -/
def P6222570319623511769.Spec : Prop :=
  ∀ n, P6222570319623511769.a n = A008617 n

end A008617

/-! ## A008617.P7781309698326198112

`A004526(A047594(n+2))-A004526(n+1)`
-/

namespace A008617.P7781309698326198112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047594 (n + 2)).toNat - A004526 (n + 1)

end

end A008617.P7781309698326198112

namespace A008617

/-- `A004526(A047594(n+2))-A004526(n+1)` -/
def P7781309698326198112.Spec : Prop :=
  ∀ n, P7781309698326198112.a n = A008617 n

end A008617

/-! ## A008617.P1117446285134018727

`A008619(A047592(n+2))-A008619(n+1)`
-/

namespace A008617.P1117446285134018727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A047592 (n + 2)).toNat - A008619 (n + 1)

end

end A008617.P1117446285134018727

namespace A008617

/-- `A008619(A047592(n+2))-A008619(n+1)` -/
def P1117446285134018727.Spec : Prop :=
  ∀ n, P1117446285134018727.a n = A008617 n

end A008617

/-! ## A008617.P4934812262298157662

`A008618(A272574(n))`
-/

namespace A008617.P4934812262298157662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A272574 n).toNat

end

end A008617.P4934812262298157662

namespace A008617

/-- `A008618(A272574(n))` -/
def P4934812262298157662.Spec : Prop :=
  ∀ n, P4934812262298157662.a n = A008617 n

end A008617

/-! ## A008617.P17629644273229709355

`A008618(A060464(n+1))`
-/

namespace A008617.P17629644273229709355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A060464 (n + 1)).toNat

end

end A008617.P17629644273229709355

namespace A008617

/-- `A008618(A060464(n+1))` -/
def P17629644273229709355.Spec : Prop :=
  ∀ n, P17629644273229709355.a n = A008617 n

end A008617

/-! ## A008617.P4075044108981118967

`A057356(2*n)+A008619(n)-n`
-/

namespace A008617.P4075044108981118967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057356 (2 * n) + (A008619 n - (n : ℤ))

end

end A008617.P4075044108981118967

namespace A008617

/-- `A057356(2*n)+A008619(n)-n` -/
def P4075044108981118967.Spec : Prop :=
  ∀ n, P4075044108981118967.a n = A008617 n

end A008617

/-! ## A008617.P7668190704670880838

`A008622(2*n)-A008622(2*n+1)`
-/

namespace A008617.P7668190704670880838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (2 * n) - A008622 (2 * n + 1)

end

end A008617.P7668190704670880838

namespace A008617

/-- `A008622(2*n)-A008622(2*n+1)` -/
def P7668190704670880838.Spec : Prop :=
  ∀ n, P7668190704670880838.a n = A008617 n

end A008617

/-!
# A008618: Expansion of 1/((1-x^2)(1-x^9)).

The programs for A008618, the canonical program `A008618.P1016148372834079380` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008618 has offset 0).

The definition of A008618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008618.P1016148372834079380

`floor((2*n+27+9*(-1)^n)/36)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008618

/-- `floor((2*n+27+9*(-1)^n)/36)` -/
def P1016148372834079380.Spec : Prop :=
  ∀ n, P1016148372834079380.a n = A008618 n

theorem P1016148372834079380.correct : P1016148372834079380.Spec := by
  intro n
  simp only [A008618]

end A008618

/-! ## A008618.P12748967664209933833

`∑[char[9*n]]-a(n-1)` with `a(0)=1`
-/

namespace A008618.P12748967664209933833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A008618.P12748967664209933833

namespace A008618

/-- `∑[char[9*n]]-a(n-1)` -/
def P12748967664209933833.Spec : Prop :=
  ∀ n, P12748967664209933833.a n = A008618 n

end A008618

/-! ## A008618.P7024860152644313887

`ceil((n+1)/9-a(n-1))` with `a(0)=1`
-/

namespace A008618.P7024860152644313887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n + 1 : ℚ) / 9 - (a (n - 1) : ℚ)⌉

end

end A008618.P7024860152644313887

namespace A008618

/-- `ceil((n+1)/9-a(n-1))` -/
def P7024860152644313887.Spec : Prop :=
  ∀ n, P7024860152644313887.a n = A008618 n

end A008618

/-! ## A008618.P13110851580664741679

`comp[10*n]-(a(n-1)+n)` with `a(0)=1`
-/

namespace A008618.P13110851580664741679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (a (n - 1) + (n : ℤ))

end

end A008618.P13110851580664741679

namespace A008618

/-- `comp[10*n]-(a(n-1)+n)` -/
def P13110851580664741679.Spec : Prop :=
  ∀ n, P13110851580664741679.a n = A008618 n

end A008618

/-! ## A008618.P3063843738091768692

`∑[A052382(n+1)%2-n%2]`
-/

namespace A008618.P3063843738091768692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052382 (n + 1)) 2 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008618.P3063843738091768692

namespace A008618

/-- `∑[A052382(n+1)%2-n%2]` -/
def P3063843738091768692.Spec : Prop :=
  ∀ n, P3063843738091768692.a n = A008618 n

end A008618

/-! ## A008618.P798183750220679905

`A008615(A008611(n)+1)`
-/

namespace A008618.P798183750220679905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A008611 n + 1).toNat

end

end A008618.P798183750220679905

namespace A008618

/-- `A008615(A008611(n)+1)` -/
def P798183750220679905.Spec : Prop :=
  ∀ n, P798183750220679905.a n = A008618 n

end A008618

/-! ## A008618.P2004640396526277929

`A026806(A008611(n)+1)-1`
-/

namespace A008618.P2004640396526277929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A008611 n + 1).toNat - 1

end

end A008618.P2004640396526277929

namespace A008618

/-- `A026806(A008611(n)+1)-1` -/
def P2004640396526277929.Spec : Prop :=
  ∀ n, P2004640396526277929.a n = A008618 n

end A008618

/-! ## A008618.P12702365896895917284

`A008615(A168056(n)+1-n)`
-/

namespace A008618.P12702365896895917284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A168056 n + (1 - (n : ℤ))).toNat

end

end A008618.P12702365896895917284

namespace A008618

/-- `A008615(A168056(n)+1-n)` -/
def P12702365896895917284.Spec : Prop :=
  ∀ n, P12702365896895917284.a n = A008618 n

end A008618

/-! ## A008618.P13408608621042550166

`A085268(n)+1-A110654(n)`
-/

namespace A008618.P13408608621042550166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085268 (n + 32) + (1 - A110654 n)

end

end A008618.P13408608621042550166

namespace A008618

/-- `A085268(n)+1-A110654(n)` -/
def P13408608621042550166.Spec : Prop :=
  ∀ n, P13408608621042550166.a n = A008618 n

end A008618

/-! ## A008618.P3029340692199299239

`A008615(1-(n-A168056(n)))`
-/

namespace A008618.P3029340692199299239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (1 - ((n : ℤ) - A168056 n)).toNat

end

end A008618.P3029340692199299239

namespace A008618

/-- `A008615(1-(n-A168056(n)))` -/
def P3029340692199299239.Spec : Prop :=
  ∀ n, P3029340692199299239.a n = A008618 n

end A008618

/-! ## A008618.P649973776709084750

`A008615(n+2-A302402(n))`
-/

namespace A008618.P649973776709084750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 ((n + 2 : ℤ) - A302402 n).toNat

end

end A008618.P649973776709084750

namespace A008618

/-- `A008615(n+2-A302402(n))` -/
def P649973776709084750.Spec : Prop :=
  ∀ n, P649973776709084750.a n = A008618 n

end A008618

/-! ## A008618.P3330084243319395680

`A008615(A047878(n+2))`
-/

namespace A008618.P3330084243319395680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A047878 (n + 2)).toNat

end

end A008618.P3330084243319395680

namespace A008618

/-- `A008615(A047878(n+2))` -/
def P3330084243319395680.Spec : Prop :=
  ∀ n, P3330084243319395680.a n = A008618 n

end A008618

/-! ## A008618.P18321752842118440272

`A008615(A103221(n+3)+A103221(n))`
-/

namespace A008618.P18321752842118440272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A103221 (n + 3) + A103221 n).toNat

end

end A008618.P18321752842118440272

namespace A008618

/-- `A008615(A103221(n+3)+A103221(n))` -/
def P18321752842118440272.Spec : Prop :=
  ∀ n, P18321752842118440272.a n = A008618 n

end A008618

/-! ## A008618.P13539287908286261154

`A004526(A067251(n+2))-A004526(n+1)`
-/

namespace A008618.P13539287908286261154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A067251 (n + 2)).toNat - A004526 (n + 1)

end

end A008618.P13539287908286261154

namespace A008618

/-- `A004526(A067251(n+2))-A004526(n+1)` -/
def P13539287908286261154.Spec : Prop :=
  ∀ n, P13539287908286261154.a n = A008618 n

end A008618

/-! ## A008618.P17500494127301482366

`A033183(2*n)`
-/

namespace A008618.P17500494127301482366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (2 * n)

end

end A008618.P17500494127301482366

namespace A008618

/-- `A033183(2*n)` -/
def P17500494127301482366.Spec : Prop :=
  ∀ n, P17500494127301482366.a n = A008618 n

end A008618

/-! ## A008618.P12895670605883117074

`A008615(2-A080425(n)+A008615(2*n))`
-/

namespace A008618.P12895670605883117074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 - A080425 n + A008615 (2 * n)).toNat

end

end A008618.P12895670605883117074

namespace A008618

/-- `A008615(2-A080425(n)+A008615(2*n))` -/
def P12895670605883117074.Spec : Prop :=
  ∀ n, P12895670605883117074.a n = A008618 n

end A008618

/-! ## A008618.P43857252194159713

`A008615(Δ[A001399(2*n+1)]-A008615(2*n))`
-/

namespace A008618.P43857252194159713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n - A008615 (2 * n)).toNat

end

end A008618.P43857252194159713

namespace A008618

/-- `A008615(Δ[A001399(2*n+1)]-A008615(2*n))` -/
def P43857252194159713.Spec : Prop :=
  ∀ n, P43857252194159713.a n = A008618 n

end A008618

/-! ## A008618.P1930333790863187760

`A008615(A008612(2*n)+1)`
-/

namespace A008618.P1930333790863187760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A008612 (2 * n) + 1).toNat

end

end A008618.P1930333790863187760

namespace A008618

/-- `A008615(A008612(2*n)+1)` -/
def P1930333790863187760.Spec : Prop :=
  ∀ n, P1930333790863187760.a n = A008618 n

end A008618

/-! ## A008618.P13648314983211560070

`A008615(A018838(2*n+1)-n)`
-/

namespace A008618.P13648314983211560070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A018838 (2 * n + 1) - (n : ℤ)).toNat

end

end A008618.P13648314983211560070

namespace A008618

/-- `A008615(A018838(2*n+1)-n)` -/
def P13648314983211560070.Spec : Prop :=
  ∀ n, P13648314983211560070.a n = A008618 n

end A008618

/-! ## A008618.P1816289974670326697

`A025872(2*n)-A025872(2*n+1)`
-/

namespace A008618.P1816289974670326697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (2 * n) - A025872 (2 * n + 1)

end

end A008618.P1816289974670326697

namespace A008618

/-- `A025872(2*n)-A025872(2*n+1)` -/
def P1816289974670326697.Spec : Prop :=
  ∀ n, P1816289974670326697.a n = A008618 n

end A008618

/-!
# A008619: Positive integers repeated.

The programs for A008619, the canonical program `A008619.P16053834178911111118` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008619 has offset 0).

The definition of A008619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008619.P16053834178911111118

`1+floor(n/2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008619

/-- `1+floor(n/2)` -/
def P16053834178911111118.Spec : Prop :=
  ∀ n, P16053834178911111118.a n = A008619 n

theorem P16053834178911111118.correct : P16053834178911111118.Spec := by
  intro n
  simp only [A008619]

end A008619

/-! ## A008619.P9857694277986339455

`∑[log2(gcd(2, n))]`
-/

namespace A008619.P9857694277986339455
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008619.P9857694277986339455

namespace A008619

/-- `∑[log2(gcd(2, n))]` -/
def P9857694277986339455.Spec : Prop :=
  ∀ n, P9857694277986339455.a n = (A008619 n : ℝ)

end A008619

/-! ## A008619.P17867639805452670023

`∑[(n+1)%2]`
-/

namespace A008619.P17867639805452670023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008619.P17867639805452670023

namespace A008619

/-- `∑[(n+1)%2]` -/
def P17867639805452670023.Spec : Prop :=
  ∀ n, (P17867639805452670023.a n : ℤ) = A008619 n

end A008619

/-! ## A008619.P1978688729284121359

`ceil(or(1, n)/2)`
-/

namespace A008619.P1978688729284121359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 2⌉

end

end A008619.P1978688729284121359

namespace A008619

/-- `ceil(or(1, n)/2)` -/
def P1978688729284121359.Spec : Prop :=
  ∀ n, P1978688729284121359.a n = A008619 n

end A008619

/-! ## A008619.P488188644550491194

`round(or(1, n)/2)`
-/

namespace A008619.P488188644550491194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) / 2)

end

end A008619.P488188644550491194

namespace A008619

/-- `round(or(1, n)/2)` -/
def P488188644550491194.Spec : Prop :=
  ∀ n, P488188644550491194.a n = A008619 n

end A008619

/-! ## A008619.P7097726086389262618

`floor(cosh(log(n+2)))`
-/

namespace A008619.P7097726086389262618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 2 : ℝ))⌋

end

end A008619.P7097726086389262618

namespace A008619

/-- `floor(cosh(log(n+2)))` -/
def P7097726086389262618.Spec : Prop :=
  ∀ n, P7097726086389262618.a n = A008619 n

end A008619

/-! ## A008619.P2949447139894266291

`round(cosh(log(n+1)))`
-/

namespace A008619.P2949447139894266291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (n + 1 : ℝ)))

end

end A008619.P2949447139894266291

namespace A008619

/-- `round(cosh(log(n+1)))` -/
def P2949447139894266291.Spec : Prop :=
  ∀ n, P2949447139894266291.a n = A008619 n

end A008619

/-! ## A008619.P16084786515936449805

`floor(sinh(log(n+3)))`
-/

namespace A008619.P16084786515936449805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (n + 3 : ℝ))⌋

end

end A008619.P16084786515936449805

namespace A008619

/-- `floor(sinh(log(n+3)))` -/
def P16084786515936449805.Spec : Prop :=
  ∀ n, P16084786515936449805.a n = A008619 n

end A008619

/-! ## A008619.P13513835216390396380

`round(sinh(log(n+2)))`
-/

namespace A008619.P13513835216390396380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (n + 2 : ℝ)))

end

end A008619.P13513835216390396380

namespace A008619

/-- `round(sinh(log(n+2)))` -/
def P13513835216390396380.Spec : Prop :=
  ∀ n, P13513835216390396380.a n = A008619 n

end A008619

/-! ## A008619.P12217794008707873318

`ceil(cosh(log(or(1, n))))`
-/

namespace A008619.P12217794008707873318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (Nat.lor 1 n : ℝ))⌉

end

end A008619.P12217794008707873318

namespace A008619

/-- `ceil(cosh(log(or(1, n))))` -/
def P12217794008707873318.Spec : Prop :=
  ∀ n, P12217794008707873318.a n = A008619 n

end A008619

/-! ## A008619.P15272211876475381059

`(or(1, n)+1)/2`
-/

namespace A008619.P15272211876475381059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n + 1 : ℚ) / 2

end

end A008619.P15272211876475381059

namespace A008619

/-- `(or(1, n)+1)/2` -/
def P15272211876475381059.Spec : Prop :=
  ∀ n, P15272211876475381059.a n = (A008619 n : ℚ)

end A008619

/-! ## A008619.P5400395476590417680

`abs(∑[1-n%2])`
-/

namespace A008619.P5400395476590417680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008619.P5400395476590417680

namespace A008619

/-- `abs(∑[1-n%2])` -/
def P5400395476590417680.Spec : Prop :=
  ∀ n, P5400395476590417680.a n = A008619 n

end A008619

/-! ## A008619.P8441479453045297296

`abs(∑[1-and(1, n)])`
-/

namespace A008619.P8441479453045297296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008619.P8441479453045297296

namespace A008619

/-- `abs(∑[1-and(1, n)])` -/
def P8441479453045297296.Spec : Prop :=
  ∀ n, P8441479453045297296.a n = A008619 n

end A008619

/-! ## A008619.P13838323338517901020

`-∑[and(1, n)-1]`
-/

namespace A008619.P13838323338517901020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008619.P13838323338517901020

namespace A008619

/-- `-∑[and(1, n)-1]` -/
def P13838323338517901020.Spec : Prop :=
  ∀ n, P13838323338517901020.a n = A008619 n

end A008619

/-! ## A008619.P17014314889165033232

`ceil((cos(1)+n)/2)`
-/

namespace A008619.P17014314889165033232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cos (1 : ℝ) + (n : ℝ)) / 2⌉

end

end A008619.P17014314889165033232

namespace A008619

/-- `ceil((cos(1)+n)/2)` -/
def P17014314889165033232.Spec : Prop :=
  ∀ n, P17014314889165033232.a n = A008619 n

end A008619

/-! ## A008619.P10219613458857228653

`round(cos(1)+n/2)`
-/

namespace A008619.P10219613458857228653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((n : ℚ) / 2 : ℝ))

end

end A008619.P10219613458857228653

namespace A008619

/-- `round(cos(1)+n/2)` -/
def P10219613458857228653.Spec : Prop :=
  ∀ n, P10219613458857228653.a n = A008619 n

end A008619

/-! ## A008619.P7158471005568167167

`ceil((sin(1)+n)/2)`
-/

namespace A008619.P7158471005568167167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (1 : ℝ) + (n : ℝ)) / 2⌉

end

end A008619.P7158471005568167167

namespace A008619

/-- `ceil((sin(1)+n)/2)` -/
def P7158471005568167167.Spec : Prop :=
  ∀ n, P7158471005568167167.a n = A008619 n

end A008619

/-! ## A008619.P2435282362403884203

`abs(a(n-1)-(n+1))` with `a(0)=1`
-/

namespace A008619.P2435282362403884203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - (n + 1 : ℤ)|

end

end A008619.P2435282362403884203

namespace A008619

/-- `abs(a(n-1)-(n+1))` -/
def P2435282362403884203.Spec : Prop :=
  ∀ n, P2435282362403884203.a n = A008619 n

end A008619

/-! ## A008619.P9324941631580735845

`round(n+1-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A008619.P9324941631580735845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - a (n - 1)

end

end A008619.P9324941631580735845

namespace A008619

/-- `round(n+1-a(n-1))` -/
def P9324941631580735845.Spec : Prop :=
  ∀ n, P9324941631580735845.a n = A008619 n

end A008619

/-! ## A008619.P17371904125675767869

`A110654(n+1)`
-/

namespace A008619.P17371904125675767869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

end

end A008619.P17371904125675767869

namespace A008619

/-- `A110654(n+1)` -/
def P17371904125675767869.Spec : Prop :=
  ∀ n, P17371904125675767869.a n = A008619 n

end A008619

/-!
# A008620: Positive integers repeated three times.

The programs for A008620, the canonical program `A008620.P16090772857505074278` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008620 has offset 0).

The definition of A008620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008620.P16090772857505074278

`floor(n/3)+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008620

/-- `floor(n/3)+1` -/
def P16090772857505074278.Spec : Prop :=
  ∀ n, P16090772857505074278.a n = A008620 n

theorem P16090772857505074278.correct : P16090772857505074278.Spec := by
  intro n
  simp only [A008620]

end A008620

/-! ## A008620.P15828166870320994600

`ceil((cos(1)+n)/3)`
-/

namespace A008620.P15828166870320994600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cos (1 : ℝ) + (n : ℝ)) / 3⌉

end

end A008620.P15828166870320994600

namespace A008620

/-- `ceil((cos(1)+n)/3)` -/
def P15828166870320994600.Spec : Prop :=
  ∀ n, P15828166870320994600.a n = A008620 n

end A008620

/-! ## A008620.P3884519895563728349

`round(cos(1)+n/3)`
-/

namespace A008620.P3884519895563728349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((n : ℚ) / 3 : ℝ))

end

end A008620.P3884519895563728349

namespace A008620

/-- `round(cos(1)+n/3)` -/
def P3884519895563728349.Spec : Prop :=
  ∀ n, P3884519895563728349.a n = A008620 n

end A008620

/-! ## A008620.P16478264100275201745

`ceil((sin(1)+n)/3)`
-/

namespace A008620.P16478264100275201745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (1 : ℝ) + (n : ℝ)) / 3⌉

end

end A008620.P16478264100275201745

namespace A008620

/-- `ceil((sin(1)+n)/3)` -/
def P16478264100275201745.Spec : Prop :=
  ∀ n, P16478264100275201745.a n = A008620 n

end A008620

/-! ## A008620.P14545261805685142505

`ceil((n-cos(2))/3)`
-/

namespace A008620.P14545261805685142505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.cos (2 : ℝ)) / 3⌉

end

end A008620.P14545261805685142505

namespace A008620

/-- `ceil((n-cos(2))/3)` -/
def P14545261805685142505.Spec : Prop :=
  ∀ n, P14545261805685142505.a n = A008620 n

end A008620

/-! ## A008620.P15875239162715712817

`round((acos(0)+n)/3)`
-/

namespace A008620.P15875239162715712817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arccos (0 : ℝ) + (n : ℝ)) / 3)

end

end A008620.P15875239162715712817

namespace A008620

/-- `round((acos(0)+n)/3)` -/
def P15875239162715712817.Spec : Prop :=
  ∀ n, P15875239162715712817.a n = A008620 n

end A008620

/-! ## A008620.P5003176169078938423

`round((tan(1)+n)/3)`
-/

namespace A008620.P5003176169078938423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (1 : ℝ) + (n : ℝ)) / 3)

end

end A008620.P5003176169078938423

namespace A008620

/-- `round((tan(1)+n)/3)` -/
def P5003176169078938423.Spec : Prop :=
  ∀ n, P5003176169078938423.a n = A008620 n

end A008620

/-! ## A008620.P17093332105126629260

`round((asin(1)+n)/3)`
-/

namespace A008620.P17093332105126629260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arcsin (1 : ℝ) + (n : ℝ)) / 3)

end

end A008620.P17093332105126629260

namespace A008620

/-- `round((asin(1)+n)/3)` -/
def P17093332105126629260.Spec : Prop :=
  ∀ n, P17093332105126629260.a n = A008620 n

end A008620

/-! ## A008620.P9149970731567735313

`ceil((atan(1)+n)/3)`
-/

namespace A008620.P9149970731567735313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (1 : ℝ) + (n : ℝ)) / 3⌉

end

end A008620.P9149970731567735313

namespace A008620

/-- `ceil((atan(1)+n)/3)` -/
def P9149970731567735313.Spec : Prop :=
  ∀ n, P9149970731567735313.a n = A008620 n

end A008620

/-! ## A008620.P4315237112010988031

`round((n-tan(2))/3)`
-/

namespace A008620.P4315237112010988031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.tan (2 : ℝ)) / 3)

end

end A008620.P4315237112010988031

namespace A008620

/-- `round((n-tan(2))/3)` -/
def P4315237112010988031.Spec : Prop :=
  ∀ n, P4315237112010988031.a n = A008620 n

end A008620

/-! ## A008620.P17387302829692889081

`ceil(n/3-tan(3))`
-/

namespace A008620.P17387302829692889081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 3 : ℝ) - Real.tan (3 : ℝ)⌉

end

end A008620.P17387302829692889081

namespace A008620

/-- `ceil(n/3-tan(3))` -/
def P17387302829692889081.Spec : Prop :=
  ∀ n, P17387302829692889081.a n = A008620 n

end A008620

/-! ## A008620.P4203517640554318254

`round(n/3-cos(4))`
-/

namespace A008620.P4203517640554318254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 3 : ℝ) - Real.cos (4 : ℝ))

end

end A008620.P4203517640554318254

namespace A008620

/-- `round(n/3-cos(4))` -/
def P4203517640554318254.Spec : Prop :=
  ∀ n, P4203517640554318254.a n = A008620 n

end A008620

/-! ## A008620.P4897106339426464018

`ceil((n-sin(4))/3)`
-/

namespace A008620.P4897106339426464018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.sin (4 : ℝ)) / 3⌉

end

end A008620.P4897106339426464018

namespace A008620

/-- `ceil((n-sin(4))/3)` -/
def P4897106339426464018.Spec : Prop :=
  ∀ n, P4897106339426464018.a n = A008620 n

end A008620

/-! ## A008620.P17677566352273365221

`round(atan(1)+n/3)`
-/

namespace A008620.P17677566352273365221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (1 : ℝ) + ((n : ℚ) / 3 : ℝ))

end

end A008620.P17677566352273365221

namespace A008620

/-- `round(atan(1)+n/3)` -/
def P17677566352273365221.Spec : Prop :=
  ∀ n, P17677566352273365221.a n = A008620 n

end A008620

/-! ## A008620.P134438249823548336

`(n+3-n%3)/3`
-/

namespace A008620.P134438249823548336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) + (3 - ((n % 3 : ℕ) : ℤ)) : ℚ) / 3

end

end A008620.P134438249823548336

namespace A008620

/-- `(n+3-n%3)/3` -/
def P134438249823548336.Spec : Prop :=
  ∀ n, P134438249823548336.a n = (A008620 n : ℚ)

end A008620

/-! ## A008620.P5676536316415994385

`floor(sqrt(A006446(n+1)))`
-/

namespace A008620.P5676536316415994385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A006446 (n + 1))

end

end A008620.P5676536316415994385

namespace A008620

/-- `floor(sqrt(A006446(n+1)))` -/
def P5676536316415994385.Spec : Prop :=
  ∀ n, P5676536316415994385.a n = A008620 n

end A008620

/-! ## A008620.P13978387591198771857

`A002264(n+3)`
-/

namespace A008620.P13978387591198771857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 3)

end

end A008620.P13978387591198771857

namespace A008620

/-- `A002264(n+3)` -/
def P13978387591198771857.Spec : Prop :=
  ∀ n, P13978387591198771857.a n = A008620 n

end A008620

/-!
# A008621: Expansion of 1/((1-x)*(1-x^4)).

The programs for A008621, the canonical program `A008621.P10818667795970879092` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008621 has offset 0).

The definition of A008621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008621.P10818667795970879092

`floor(n/4)+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008621

/-- `floor(n/4)+1` -/
def P10818667795970879092.Spec : Prop :=
  ∀ n, P10818667795970879092.a n = A008621 n

theorem P10818667795970879092.correct : P10818667795970879092.Spec := by
  intro n
  simp only [A008621]

end A008621

/-! ## A008621.P7443102675783417174

`ceil(or(1, n)/4)`
-/

namespace A008621.P7443102675783417174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 n : ℚ) / 4⌉

end

end A008621.P7443102675783417174

namespace A008621

/-- `ceil(or(1, n)/4)` -/
def P7443102675783417174.Spec : Prop :=
  ∀ n, P7443102675783417174.a n = A008621 n

end A008621

/-! ## A008621.P5586862660028183305

`round(or(2, n)/4)`
-/

namespace A008621.P5586862660028183305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 n : ℚ) / 4)

end

end A008621.P5586862660028183305

namespace A008621

/-- `round(or(2, n)/4)` -/
def P5586862660028183305.Spec : Prop :=
  ∀ n, P5586862660028183305.a n = A008621 n

end A008621

/-! ## A008621.P11229614679530556724

`(or(3, n)+1)/4`
-/

namespace A008621.P11229614679530556724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n + 1 : ℚ) / 4

end

end A008621.P11229614679530556724

namespace A008621

/-- `(or(3, n)+1)/4` -/
def P11229614679530556724.Spec : Prop :=
  ∀ n, P11229614679530556724.a n = (A008621 n : ℚ)

end A008621

/-! ## A008621.P15484970754075670441

`ceil((cos(1)+n)/4)`
-/

namespace A008621.P15484970754075670441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cos (1 : ℝ) + (n : ℝ)) / 4⌉

end

end A008621.P15484970754075670441

namespace A008621

/-- `ceil((cos(1)+n)/4)` -/
def P15484970754075670441.Spec : Prop :=
  ∀ n, P15484970754075670441.a n = A008621 n

end A008621

/-! ## A008621.P8672173286932682250

`round(cos(1)+n/4)`
-/

namespace A008621.P8672173286932682250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((n : ℚ) / 4 : ℝ))

end

end A008621.P8672173286932682250

namespace A008621

/-- `round(cos(1)+n/4)` -/
def P8672173286932682250.Spec : Prop :=
  ∀ n, P8672173286932682250.a n = A008621 n

end A008621

/-! ## A008621.P11861508039293974669

`ceil((sin(1)+n)/4)`
-/

namespace A008621.P11861508039293974669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sin (1 : ℝ) + (n : ℝ)) / 4⌉

end

end A008621.P11861508039293974669

namespace A008621

/-- `ceil((sin(1)+n)/4)` -/
def P11861508039293974669.Spec : Prop :=
  ∀ n, P11861508039293974669.a n = A008621 n

end A008621

/-! ## A008621.P77202397440659661

`ceil((n-cos(2))/4)`
-/

namespace A008621.P77202397440659661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.cos (2 : ℝ)) / 4⌉

end

end A008621.P77202397440659661

namespace A008621

/-- `ceil((n-cos(2))/4)` -/
def P77202397440659661.Spec : Prop :=
  ∀ n, P77202397440659661.a n = A008621 n

end A008621

/-! ## A008621.P12719184713485301767

`ceil((atan(1)+n)/4)`
-/

namespace A008621.P12719184713485301767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (1 : ℝ) + (n : ℝ)) / 4⌉

end

end A008621.P12719184713485301767

namespace A008621

/-- `ceil((atan(1)+n)/4)` -/
def P12719184713485301767.Spec : Prop :=
  ∀ n, P12719184713485301767.a n = A008621 n

end A008621

/-! ## A008621.P5279515786724358191

`round((n-tan(2))/4)`
-/

namespace A008621.P5279515786724358191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.tan (2 : ℝ)) / 4)

end

end A008621.P5279515786724358191

namespace A008621

/-- `round((n-tan(2))/4)` -/
def P5279515786724358191.Spec : Prop :=
  ∀ n, P5279515786724358191.a n = A008621 n

end A008621

/-! ## A008621.P8608792585214317288

`ceil((n-tan(3))/4)`
-/

namespace A008621.P8608792585214317288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.tan (3 : ℝ)) / 4⌉

end

end A008621.P8608792585214317288

namespace A008621

/-- `ceil((n-tan(3))/4)` -/
def P8608792585214317288.Spec : Prop :=
  ∀ n, P8608792585214317288.a n = A008621 n

end A008621

/-! ## A008621.P11480247660870605211

`round(n/4-cos(4))`
-/

namespace A008621.P11480247660870605211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 4 : ℝ) - Real.cos (4 : ℝ))

end

end A008621.P11480247660870605211

namespace A008621

/-- `round(n/4-cos(4))` -/
def P11480247660870605211.Spec : Prop :=
  ∀ n, P11480247660870605211.a n = A008621 n

end A008621

/-! ## A008621.P11735380084743658340

`ceil((n-sin(4))/4)`
-/

namespace A008621.P11735380084743658340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.sin (4 : ℝ)) / 4⌉

end

end A008621.P11735380084743658340

namespace A008621

/-- `ceil((n-sin(4))/4)` -/
def P11735380084743658340.Spec : Prop :=
  ∀ n, P11735380084743658340.a n = A008621 n

end A008621

/-! ## A008621.P5854293039317857132

`ceil((tanh(1)+n)/4)`
-/

namespace A008621.P5854293039317857132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tanh (1 : ℝ) + (n : ℝ)) / 4⌉

end

end A008621.P5854293039317857132

namespace A008621

/-- `ceil((tanh(1)+n)/4)` -/
def P5854293039317857132.Spec : Prop :=
  ∀ n, P5854293039317857132.a n = A008621 n

end A008621

/-! ## A008621.P6168868313836606976

`round(sin(7)+n/4)`
-/

namespace A008621.P6168868313836606976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (7 : ℝ) + ((n : ℚ) / 4 : ℝ))

end

end A008621.P6168868313836606976

namespace A008621

/-- `round(sin(7)+n/4)` -/
def P6168868313836606976.Spec : Prop :=
  ∀ n, P6168868313836606976.a n = A008621 n

end A008621

/-! ## A008621.P11423081239326099937

`ceil((cot(1)+n)/4)`
-/

namespace A008621.P11423081239326099937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.cot (1 : ℝ) + (n : ℝ)) / 4⌉

end

end A008621.P11423081239326099937

namespace A008621

/-- `ceil((cot(1)+n)/4)` -/
def P11423081239326099937.Spec : Prop :=
  ∀ n, P11423081239326099937.a n = A008621 n

end A008621

/-! ## A008621.P8862267924036211442

`ceil((1/2)²/acot(n))`
-/

namespace A008621.P8862267924036211442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((1 : ℚ) / 2) ^ 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌉

end

end A008621.P8862267924036211442

namespace A008621

/-- `ceil((1/2)²/acot(n))` -/
def P8862267924036211442.Spec : Prop :=
  ∀ n, P8862267924036211442.a n = A008621 n

end A008621

/-! ## A008621.P4558623190256806236

`(4-n%4+n)/4`
-/

namespace A008621.P4558623190256806236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - ((n % 4 : ℕ) : ℤ) + (n : ℤ) : ℚ) / 4

end

end A008621.P4558623190256806236

namespace A008621

/-- `(4-n%4+n)/4` -/
def P4558623190256806236.Spec : Prop :=
  ∀ n, P4558623190256806236.a n = (A008621 n : ℚ)

end A008621

/-! ## A008621.P7653592550908017648

`ceil(∑[(n+1)%2/2])`
-/

namespace A008621.P7653592550908017648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A008621.P7653592550908017648

namespace A008621

/-- `ceil(∑[(n+1)%2/2])` -/
def P7653592550908017648.Spec : Prop :=
  ∀ n, P7653592550908017648.a n = A008621 n

end A008621

/-! ## A008621.P16151081551810625064

`ceil(∑[and(1, n+1)/2])`
-/

namespace A008621.P16151081551810625064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A008621.P16151081551810625064

namespace A008621

/-- `ceil(∑[and(1, n+1)/2])` -/
def P16151081551810625064.Spec : Prop :=
  ∀ n, P16151081551810625064.a n = A008621 n

end A008621

/-!
# A008622: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)).

The programs for A008622, the canonical program `A008622.P16996189268350298708` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008622 has offset 0).

The definition of A008622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008622.P16996189268350298708

`A025813(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008622

/-- `A025813(n)-a(n-2)` -/
def P16996189268350298708.Spec : Prop :=
  ∀ n, P16996189268350298708.a n = A008622 n

theorem P16996189268350298708.correct : P16996189268350298708.Spec := by
  intro n
  simp only [A008622]

end A008622

/-! ## A008622.P16491611947901680997

`A025829(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A008622.P16491611947901680997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025829 n - a (n - 3)

end

end A008622.P16491611947901680997

namespace A008622

/-- `A025829(n)-a(n-3)` -/
def P16491611947901680997.Spec : Prop :=
  ∀ n, P16491611947901680997.a n = A008622 n

end A008622

/-! ## A008622.P7580993849150615124

`A025911(2*n)`
-/

namespace A008622.P7580993849150615124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 (2 * n)

end

end A008622.P7580993849150615124

namespace A008622

/-- `A025911(2*n)` -/
def P7580993849150615124.Spec : Prop :=
  ∀ n, P7580993849150615124.a n = A008622 n

end A008622

/-! ## A008622.P7590532572594771021

`A029416(2*n)-A029416(2*n+1)`
-/

namespace A008622.P7590532572594771021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029416 (2 * n) - A029416 (2 * n + 1)

end

end A008622.P7590532572594771021

namespace A008622

/-- `A029416(2*n)-A029416(2*n+1)` -/
def P7590532572594771021.Spec : Prop :=
  ∀ n, P7590532572594771021.a n = A008622 n

end A008622

/-! ## A008622.P7052789825713818805

`A025853(2*n)+A025882(2*n)-A025840(2*n)`
-/

namespace A008622.P7052789825713818805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 (2 * n) + (A025882 (2 * n) - A025840 (2 * n))

end

end A008622.P7052789825713818805

namespace A008622

/-- `A025853(2*n)+A025882(2*n)-A025840(2*n)` -/
def P7052789825713818805.Spec : Prop :=
  ∀ n, P7052789825713818805.a n = A008622 n

end A008622

/-! ## A008622.P6840947501766243214

`A025871(2*n)+A029214(2*n)-A029185(2*n)`
-/

namespace A008622.P6840947501766243214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 (2 * n) + (A029214 (2 * n) - A029185 (2 * n))

end

end A008622.P6840947501766243214

namespace A008622

/-- `A025871(2*n)+A029214(2*n)-A029185(2*n)` -/
def P6840947501766243214.Spec : Prop :=
  ∀ n, P6840947501766243214.a n = A008622 n

end A008622

/-! ## A008622.P14608562591080340262

`A025813(n)-Δ[A029229(2*n+1)]`
-/

namespace A008622.P14608562591080340262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025813 n - (f1 (n + 1) - f1 n)

end

end A008622.P14608562591080340262

namespace A008622

/-- `A025813(n)-Δ[A029229(2*n+1)]` -/
def P14608562591080340262.Spec : Prop :=
  ∀ n, P14608562591080340262.a n = A008622 n

end A008622

/-! ## A008622.P17109574401281871297

`A029362(2*n)-A029362(2*n+3)`
-/

namespace A008622.P17109574401281871297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029362 (2 * n) - A029362 (2 * n + 3)

end

end A008622.P17109574401281871297

namespace A008622

/-- `A029362(2*n)-A029362(2*n+3)` -/
def P17109574401281871297.Spec : Prop :=
  ∀ n, P17109574401281871297.a n = A008622 n

end A008622

/-! ## A008622.P15350012999416346092

`A029229(A005843(n))-A029229(A005818(n+1))`
-/

namespace A008622.P15350012999416346092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (A005843 n).toNat - A029229 (A005818 (n + 1)).toNat

end

end A008622.P15350012999416346092

namespace A008622

/-- `A029229(A005843(n))-A029229(A005818(n+1))` -/
def P15350012999416346092.Spec : Prop :=
  ∀ n, P15350012999416346092.a n = A008622 n

end A008622

/-! ## A008622.P4621336624738852788

`A029229(A005843(n))-A029229(A020735(n+1))`
-/

namespace A008622.P4621336624738852788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (A005843 n).toNat - A029229 (A020735 (n + 1)).toNat

end

end A008622.P4621336624738852788

namespace A008622

/-- `A029229(A005843(n))-A029229(A020735(n+1))` -/
def P4621336624738852788.Spec : Prop :=
  ∀ n, P4621336624738852788.a n = A008622 n

end A008622

/-! ## A008622.P7257173340841729976

`Δ[A029229(2*n+5)]`
-/

namespace A008622.P7257173340841729976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008622.P7257173340841729976

namespace A008622

/-- `Δ[A029229(2*n+5)]` -/
def P7257173340841729976.Spec : Prop :=
  ∀ n, P7257173340841729976.a n = A008622 n

end A008622

/-! ## A008622.P16210637572449809866

`abs(Δ[A029229(A005818(n+1))])`
-/

namespace A008622.P16210637572449809866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (A005818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A008622.P16210637572449809866

namespace A008622

/-- `abs(Δ[A029229(A005818(n+1))])` -/
def P16210637572449809866.Spec : Prop :=
  ∀ n, P16210637572449809866.a n = A008622 n

end A008622

/-! ## A008622.P15880173409431234661

`abs(Δ[A029229(A267872(n+2))])`
-/

namespace A008622.P15880173409431234661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (A267872 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A008622.P15880173409431234661

namespace A008622

/-- `abs(Δ[A029229(A267872(n+2))])` -/
def P15880173409431234661.Spec : Prop :=
  ∀ n, P15880173409431234661.a n = A008622 n

end A008622

/-!
# A008623: Molien series of 4-dimensional representation of SL(2,7).

The programs for A008623, there is no canonical definition to state claims against.
-/

/-! ## A008623.P4928504830196062302

`A034463(A055389(A028242(n)))+A026810(n)`
-/

namespace A008623.P4928504830196062302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A055389 (A028242 n).toNat).toNat + A026810 n

end

end A008623.P4928504830196062302

/-! ## A008623.P1508040288118035788

`A321379(A011782(n))+A022846(A029140(n))`
-/

namespace A008623.P1508040288118035788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (A011782 n).toNat + A022846 (A029140 n).toNat

end

end A008623.P1508040288118035788

/-! ## A008623.P8511747143226140780

`A321379(A000010(2^n))+A022846(A029140(n))`
-/

namespace A008623.P8511747143226140780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (A000010 (2 ^ n)).toNat + A022846 (A029140 n).toNat

end

end A008623.P8511747143226140780

/-! ## A008623.P14367707223690931514

`A321379(∑[A011782(n)])+A266755(n)`
-/

namespace A008623.P14367707223690931514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A266755 n

end

end A008623.P14367707223690931514

/-! ## A008623.P7695123299212921763

`A321379(record[A130321(n)])+A266755(n)`
-/

namespace A008623.P7695123299212921763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A266755 n

end

end A008623.P7695123299212921763

/-!
# A008624: Expansion of g.f. (1 + x^3)/((1 - x^2)*(1 - x^4)) = (1 - x + x^2)/((1 + x)*(1 - x)^2*(1 + x^2)).

The programs for A008624, the canonical program `A008624.P13884143058626142684` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008624 has offset 0).

The definition of A008624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008624.P16735411716076611053

`(2*n+3+2*cos(n*π/2)+3*cos(n*π)-2*sin(n*π/2))/8`
-/

namespace A008624.P16735411716076611053
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℝ) + (3 + 2 * Real.cos ((n : ℝ) * (Real.pi / 2))) + 3 * Real.cos ((n : ℝ) * Real.pi) - 2 * Real.sin ((n : ℝ) * (Real.pi / 2))) / 8

end

end A008624.P16735411716076611053

namespace A008624

/-- `(2*n+3+2*cos(n*π/2)+3*cos(n*π)-2*sin(n*π/2))/8` -/
def P16735411716076611053.Spec : Prop :=
  ∀ n, P16735411716076611053.a n = (A008624 n : ℝ)

end A008624

/-! ## A008624.P13884143058626142684

`A110654(A028242(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008624

/-- `A110654(A028242(n))` -/
def P13884143058626142684.Spec : Prop :=
  ∀ n, P13884143058626142684.a n = A008624 n

theorem P13884143058626142684.correct : P13884143058626142684.Spec := by
  intro n
  simp only [A008624]

end A008624

/-! ## A008624.P14645891956882556422

`ceil(xor(1, n)/4)`
-/

namespace A008624.P14645891956882556422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 4⌉

end

end A008624.P14645891956882556422

namespace A008624

/-- `ceil(xor(1, n)/4)` -/
def P14645891956882556422.Spec : Prop :=
  ∀ n, P14645891956882556422.a n = A008624 n

end A008624

/-! ## A008624.P14839479419844279950

`round(abs(xor(n, -2))/4)`
-/

namespace A008624.P14839479419844279950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|Int.xor (n : ℤ) (-2)| : ℚ) / 4)

end

end A008624.P14839479419844279950

namespace A008624

/-- `round(abs(xor(n, -2))/4)` -/
def P14839479419844279950.Spec : Prop :=
  ∀ n, P14839479419844279950.a n = A008624 n

end A008624

/-! ## A008624.P1247868165269294922

`round((xor(1, n)+1)/4)`
-/

namespace A008624.P1247868165269294922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n + 1 : ℚ) / 4)

end

end A008624.P1247868165269294922

namespace A008624

/-- `round((xor(1, n)+1)/4)` -/
def P1247868165269294922.Spec : Prop :=
  ∀ n, P1247868165269294922.a n = A008624 n

end A008624

/-! ## A008624.P13648983833082165305

`floor((xor(1, n)+3)/4)`
-/

namespace A008624.P13648983833082165305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n + 3 : ℚ) / 4⌋

end

end A008624.P13648983833082165305

namespace A008624

/-- `floor((xor(1, n)+3)/4)` -/
def P13648983833082165305.Spec : Prop :=
  ∀ n, P13648983833082165305.a n = A008624 n

end A008624

/-! ## A008624.P3402665898436015088

`floor((gcd(4, n)+n)/4)`
-/

namespace A008624.P3402665898436015088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 4 n + n : ℚ) / 4⌋

end

end A008624.P3402665898436015088

namespace A008624

/-- `floor((gcd(4, n)+n)/4)` -/
def P3402665898436015088.Spec : Prop :=
  ∀ n, P3402665898436015088.a n = A008624 n

end A008624

/-! ## A008624.P2723570144323018805

`round(-xor(n, -2)/4)`
-/

namespace A008624.P2723570144323018805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((Int.xor (n : ℤ) (-2) : ℚ) / 4))

end

end A008624.P2723570144323018805

namespace A008624

/-- `round(-xor(n, -2)/4)` -/
def P2723570144323018805.Spec : Prop :=
  ∀ n, P2723570144323018805.a n = A008624 n

end A008624

/-! ## A008624.P2210095409287799565

`Δ[round((n+1)²/8)]`
-/

namespace A008624.P2210095409287799565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008624.P2210095409287799565

namespace A008624

/-- `Δ[round((n+1)²/8)]` -/
def P2210095409287799565.Spec : Prop :=
  ∀ n, P2210095409287799565.a n = A008624 n

end A008624

/-! ## A008624.P229750760008128439

`ceil(and(n+1, -3)/4)`
-/

namespace A008624.P229750760008128439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land (n + 1 : ℤ) (-3) : ℚ) / 4⌉

end

end A008624.P229750760008128439

namespace A008624

/-- `ceil(and(n+1, -3)/4)` -/
def P229750760008128439.Spec : Prop :=
  ∀ n, P229750760008128439.a n = A008624 n

end A008624

/-! ## A008624.P18029479756804451739

`a(n-4)+1` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A008624.P18029479756804451739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  a (n - 4) + 1

end

end A008624.P18029479756804451739

namespace A008624

/-- `a(n-4)+1` -/
def P18029479756804451739.Spec : Prop :=
  ∀ n, (P18029479756804451739.a n : ℤ) = A008624 n

end A008624

/-! ## A008624.P7127635306508157229

`floor((or(2, n+1)+1)/4)`
-/

namespace A008624.P7127635306508157229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (n + 1) + 1 : ℚ) / 4⌋

end

end A008624.P7127635306508157229

namespace A008624

/-- `floor((or(2, n+1)+1)/4)` -/
def P7127635306508157229.Spec : Prop :=
  ∀ n, P7127635306508157229.a n = A008624 n

end A008624

/-! ## A008624.P18404984849629147339

`round((or(2, n+1)-1)/4)`
-/

namespace A008624.P18404984849629147339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor 2 (n + 1) : ℤ) - 1 : ℚ) / 4)

end

end A008624.P18404984849629147339

namespace A008624

/-- `round((or(2, n+1)-1)/4)` -/
def P18404984849629147339.Spec : Prop :=
  ∀ n, P18404984849629147339.a n = A008624 n

end A008624

/-! ## A008624.P12729623063144590897

`ceil((or(2, n+1)-2)/4)`
-/

namespace A008624.P12729623063144590897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lor 2 (n + 1) : ℤ) - 2 : ℚ) / 4⌉

end

end A008624.P12729623063144590897

namespace A008624

/-- `ceil((or(2, n+1)-2)/4)` -/
def P12729623063144590897.Spec : Prop :=
  ∀ n, P12729623063144590897.a n = A008624 n

end A008624

/-! ## A008624.P1589813064372248614

`ceil((n+2)/4-and(1, n))`
-/

namespace A008624.P1589813064372248614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℚ) / 4 - (Nat.land 1 n : ℚ)⌉

end

end A008624.P1589813064372248614

namespace A008624

/-- `ceil((n+2)/4-and(1, n))` -/
def P1589813064372248614.Spec : Prop :=
  ∀ n, P1589813064372248614.a n = A008624 n

end A008624

/-! ## A008624.P383117327907947882

`round((and(2, n-1)+n)/4)`
-/

namespace A008624.P383117327907947882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land 2 ((n : ℤ) - 1) + (n : ℤ) : ℚ) / 4)

end

end A008624.P383117327907947882

namespace A008624

/-- `round((and(2, n-1)+n)/4)` -/
def P383117327907947882.Spec : Prop :=
  ∀ n, P383117327907947882.a n = A008624 n

end A008624

/-! ## A008624.P9258597919667221152

`round((2*or(1, n)-n)/4)`
-/

namespace A008624.P9258597919667221152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * Nat.lor 1 n : ℤ) - (n : ℤ) : ℚ) / 4)

end

end A008624.P9258597919667221152

namespace A008624

/-- `round((2*or(1, n)-n)/4)` -/
def P9258597919667221152.Spec : Prop :=
  ∀ n, P9258597919667221152.a n = A008624 n

end A008624

/-! ## A008624.P18275898815768510433

`round(-or(2, -(n+2))/4)`
-/

namespace A008624.P18275898815768510433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((Int.lor 2 (-(n + 2 : ℤ)) : ℚ) / 4))

end

end A008624.P18275898815768510433

namespace A008624

/-- `round(-or(2, -(n+2))/4)` -/
def P18275898815768510433.Spec : Prop :=
  ∀ n, P18275898815768510433.a n = A008624 n

end A008624

/-! ## A008624.P6323615474166701648

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A008624.P6323615474166701648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 0] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008624.P6323615474166701648

namespace A008624

/-- `∑[floor(a(n-4))]` -/
def P6323615474166701648.Spec : Prop :=
  ∀ n, P6323615474166701648.a n = A008624 n

end A008624

/-! ## A008624.P18438981718636276475

`∑[∑[2/a(n-2)]]` with `a(0)=1, a(1)=-2`
-/

namespace A008624.P18438981718636276475
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n f2 =>
  2 / f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008624.P18438981718636276475

namespace A008624

/-- `∑[∑[2/a(n-2)]]` -/
def P18438981718636276475.Spec : Prop :=
  ∀ n, P18438981718636276475.a n = (A008624 n : ℚ)

end A008624

/-!
# A008625: G.f.: (1+x^3)*(1+x^5)*(1+x^6)/((1-x^4)*(1-x^6)*(1-x^7)) (or (1+x^5)(1+x^6)/((1-x^3)*(1-x^4)*(1-x^7))).

The programs for A008625, the canonical program `A008625.P3159672714533830312` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008625 has offset 0).

The definition of A008625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008625.P3159672714533830312

`a(n-3)+a(n-7)-a(n-10)+1` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=2, a(7)=2, a(8)=2, a(9)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008625

/-- `a(n-3)+a(n-7)-a(n-10)+1` -/
def P3159672714533830312.Spec : Prop :=
  ∀ n, P3159672714533830312.a n = A008625 n

theorem P3159672714533830312.correct : P3159672714533830312.Spec := by
  intro n
  simp only [A008625]

end A008625

/-! ## A008625.P11821193823337469539

`ceil(∑[A194515(n+1)]/3)`
-/

namespace A008625.P11821193823337469539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A008625.P11821193823337469539

namespace A008625

/-- `ceil(∑[A194515(n+1)]/3)` -/
def P11821193823337469539.Spec : Prop :=
  ∀ n, P11821193823337469539.a n = A008625 n

end A008625

/-! ## A008625.P3195360240327919125

`A008614(n)+A005044(n)`
-/

namespace A008625.P3195360240327919125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 n + A005044 n

end

end A008625.P3195360240327919125

namespace A008625

/-- `A008614(n)+A005044(n)` -/
def P3195360240327919125.Spec : Prop :=
  ∀ n, P3195360240327919125.a n = A008625 n

end A008625

/-! ## A008625.P3082404034893643720

`A008614(n)+Δ[A026810(n)]`
-/

namespace A008625.P3082404034893643720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 n + (f1 (n + 1) - f1 n)

end

end A008625.P3082404034893643720

namespace A008625

/-- `A008614(n)+Δ[A026810(n)]` -/
def P3082404034893643720.Spec : Prop :=
  ∀ n, P3082404034893643720.a n = A008625 n

end A008625

/-! ## A008625.P16619994708548873433

`A069905(n+1-round(xor(1, n)/2))+A008614(n)`
-/

namespace A008625.P16619994708548873433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 ((n + 1 : ℤ) - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat + A008614 n

end

end A008625.P16619994708548873433

namespace A008625

/-- `A069905(n+1-round(xor(1, n)/2))+A008614(n)` -/
def P16619994708548873433.Spec : Prop :=
  ∀ n, P16619994708548873433.a n = A008625 n

end A008625

/-! ## A008625.P704322167347221906

`A008614(n)+A008742(n)-A008743(n)`
-/

namespace A008625.P704322167347221906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 n + (A008742 n - A008743 n)

end

end A008625.P704322167347221906

namespace A008625

/-- `A008614(n)+A008742(n)-A008743(n)` -/
def P704322167347221906.Spec : Prop :=
  ∀ n, P704322167347221906.a n = A008625 n

end A008625

/-! ## A008625.P12197044827185398333

`A008614(n)+A026810(n+1)-A026810(n)`
-/

namespace A008625.P12197044827185398333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 n + (A026810 (n + 1) - A026810 n)

end

end A008625.P12197044827185398333

namespace A008625

/-- `A008614(n)+A026810(n+1)-A026810(n)` -/
def P12197044827185398333.Spec : Prop :=
  ∀ n, P12197044827185398333.a n = A008625 n

end A008625

/-! ## A008625.P5488878189897237807

`∑[A008611(n)-A008617(A004767(n))]`
-/

namespace A008625.P5488878189897237807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n - A008617 (A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008625.P5488878189897237807

namespace A008625

/-- `∑[A008611(n)-A008617(A004767(n))]` -/
def P5488878189897237807.Spec : Prop :=
  ∀ n, P5488878189897237807.a n = A008625 n

end A008625

/-! ## A008625.P9437806272004381202

`A008611(∑[A194515(n+1)]+1)`
-/

namespace A008625.P9437806272004381202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A008625.P9437806272004381202

namespace A008625

/-- `A008611(∑[A194515(n+1)]+1)` -/
def P9437806272004381202.Spec : Prop :=
  ∀ n, P9437806272004381202.a n = A008625 n

end A008625

/-! ## A008625.P1373643608218013798

`round(A004396(∑[A194515(n+1)])/2)`
-/

namespace A008625.P1373643608218013798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2)

end

end A008625.P1373643608218013798

namespace A008625

/-- `round(A004396(∑[A194515(n+1)])/2)` -/
def P1373643608218013798.Spec : Prop :=
  ∀ n, P1373643608218013798.a n = A008625 n

end A008625

/-! ## A008625.P10924376714038609545

`A008611(A004442(∑[A194515(n+1)]))`
-/

namespace A008625.P10924376714038609545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A004442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A008625.P10924376714038609545

namespace A008625

/-- `A008611(A004442(∑[A194515(n+1)]))` -/
def P10924376714038609545.Spec : Prop :=
  ∀ n, P10924376714038609545.a n = A008625 n

end A008625

/-! ## A008625.P5642633946127822537

`A110654(A004396(∑[A194515(n+1)]))`
-/

namespace A008625.P5642633946127822537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A008625.P5642633946127822537

namespace A008625

/-- `A110654(A004396(∑[A194515(n+1)]))` -/
def P5642633946127822537.Spec : Prop :=
  ∀ n, P5642633946127822537.a n = A008625 n

end A008625

/-! ## A008625.P1353047265618460734

`A008615(∑[2*A194515(n+1)])`
-/

namespace A008625.P1353047265618460734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008625.P1353047265618460734

namespace A008625

/-- `A008615(∑[2*A194515(n+1)])` -/
def P1353047265618460734.Spec : Prop :=
  ∀ n, P1353047265618460734.a n = A008625 n

end A008625

/-! ## A008625.P5488175519218204914

`A008612(∑[A194515(2*(n+1))]+1)`
-/

namespace A008625.P5488175519218204914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A008625.P5488175519218204914

namespace A008625

/-- `A008612(∑[A194515(2*(n+1))]+1)` -/
def P5488175519218204914.Spec : Prop :=
  ∀ n, P5488175519218204914.a n = A008625 n

end A008625

/-! ## A008625.P2178263148934057482

`A008612(A005408(∑[A194515(n+1)]))`
-/

namespace A008625.P2178263148934057482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A008625.P2178263148934057482

namespace A008625

/-- `A008612(A005408(∑[A194515(n+1)]))` -/
def P2178263148934057482.Spec : Prop :=
  ∀ n, P2178263148934057482.a n = A008625 n

end A008625

/-! ## A008625.P1904420124985047690

`A008615(A005843(∑[A194515(n+1)]))`
-/

namespace A008625.P1904420124985047690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A008625.P1904420124985047690

namespace A008625

/-- `A008615(A005843(∑[A194515(n+1)]))` -/
def P1904420124985047690.Spec : Prop :=
  ∀ n, P1904420124985047690.a n = A008625 n

end A008625

/-! ## A008625.P15557265589853052890

`A008617(A096777(n+2))`
-/

namespace A008625.P15557265589853052890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A096777 (n + 2)).toNat

end

end A008625.P15557265589853052890

namespace A008625

/-- `A008617(A096777(n+2))` -/
def P15557265589853052890.Spec : Prop :=
  ∀ n, P15557265589853052890.a n = A008625 n

end A008625

/-! ## A008625.P11411919591202289576

`A008611(A242062(A000096(n)+2))`
-/

namespace A008625.P11411919591202289576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A242062 (A000096 n + 2).toNat).toNat

end

end A008625.P11411919591202289576

namespace A008625

/-- `A008611(A242062(A000096(n)+2))` -/
def P11411919591202289576.Spec : Prop :=
  ∀ n, P11411919591202289576.a n = A008625 n

end A008625

/-! ## A008625.P6402900271369446358

`A008611(A242062(A167499(n)+2))`
-/

namespace A008625.P6402900271369446358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A242062 (A167499 n + 2).toNat).toNat

end

end A008625.P6402900271369446358

namespace A008625

/-- `A008611(A242062(A167499(n)+2))` -/
def P6402900271369446358.Spec : Prop :=
  ∀ n, P6402900271369446358.a n = A008625 n

end A008625

/-!
# A008626: Poincaré series [or Poincare series] (or Molien series) for H*(M_11, GF(3)) and H*(M_23, GF(3)).

The programs for A008626, there is no canonical definition to state claims against.
-/

/-! ## A008626.P15158142039090259058

`A279291(Δ[A176236(A008486(n))])`
-/

namespace A008626.P15158142039090259058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176236 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279291 (f1 (n + 1) - f1 n).toNat

end

end A008626.P15158142039090259058

/-! ## A008626.P3355397840368205884

`and(A282542(n), A309614(A052952(n)))`
-/

namespace A008626.P3355397840368205884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282542 n) (A309614 (A052952 n).toNat)

end

end A008626.P3355397840368205884

/-! ## A008626.P6570717927401910160

`A309797(A309813(n+1))%A106052(n)`
-/

namespace A008626.P6570717927401910160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309797 (A309813 (n + 1)).toNat) (A106052 n)

end

end A008626.P6570717927401910160

/-!
# A008627: Molien series for A_4.

The programs for A008627, the canonical program `A008627.P17336718027921360282` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008627 has offset 0).

The definition of A008627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008627.P17336718027921360282

`∑[a(n-3)+∑[n]%n]` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008627

/-- `∑[a(n-3)+∑[n]%n]` -/
def P17336718027921360282.Spec : Prop :=
  ∀ n, (P17336718027921360282.a n : ℤ) = A008627 n

theorem P17336718027921360282.correct : P17336718027921360282.Spec := by
  intro n
  simp only [A008627]

end A008627

/-! ## A008627.P8740112582083494296

`a(n-2)+ceil((n+1)²/12)` with `a(0)=1, a(1)=1`
-/

namespace A008627.P8740112582083494296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ⌈((n + 1) ^ 2 : ℚ) / 12⌉

end

end A008627.P8740112582083494296

namespace A008627

/-- `a(n-2)+ceil((n+1)²/12)` -/
def P8740112582083494296.Spec : Prop :=
  ∀ n, P8740112582083494296.a n = A008627 n

end A008627

/-! ## A008627.P12662167138151599517

`∑[a(n-3)+n-lcm(2, n)/2]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A008627.P12662167138151599517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 3) + ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008627.P12662167138151599517

namespace A008627

/-- `∑[a(n-3)+n-lcm(2, n)/2]` -/
def P12662167138151599517.Spec : Prop :=
  ∀ n, P12662167138151599517.a n = (A008627 n : ℚ)

end A008627

/-! ## A008627.P12947435987027738564

`∑[ceil(∑[n-a(n-1)]/3)]-a(n-1)` with `a(0)=1`
-/

namespace A008627.P12947435987027738564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A008627.P12947435987027738564

namespace A008627

/-- `∑[ceil(∑[n-a(n-1)]/3)]-a(n-1)` -/
def P12947435987027738564.Spec : Prop :=
  ∀ n, P12947435987027738564.a n = A008627 n

end A008627

/-! ## A008627.P12872231102807871428

`∑[A008742(n)]`
-/

namespace A008627.P12872231102807871428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008627.P12872231102807871428

namespace A008627

/-- `∑[A008742(n)]` -/
def P12872231102807871428.Spec : Prop :=
  ∀ n, P12872231102807871428.a n = A008627 n

end A008627

/-! ## A008627.P10632829092499488086

`A036410(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008627.P10632829092499488086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A036410 n + a (n - 2)

end

end A008627.P10632829092499488086

namespace A008627

/-- `A036410(n)+a(n-2)` -/
def P10632829092499488086.Spec : Prop :=
  ∀ n, P10632829092499488086.a n = A008627 n

end A008627

/-! ## A008627.P2421981910594092196

`A175831(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A008627.P2421981910594092196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175831 (n + 1) - a (n - 1)

end

end A008627.P2421981910594092196

namespace A008627

/-- `A175831(n+1)-a(n-1)` -/
def P2421981910594092196.Spec : Prop :=
  ∀ n, P2421981910594092196.a n = A008627 n

end A008627

/-! ## A008627.P17519911386478509362

`A008763(n)+A001399(n)`
-/

namespace A008627.P17519911386478509362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n + A001399 n

end

end A008627.P17519911386478509362

namespace A008627

/-- `A008763(n)+A001399(n)` -/
def P17519911386478509362.Spec : Prop :=
  ∀ n, P17519911386478509362.a n = A008627 n

end A008627

/-! ## A008627.P5620860921802107240

`∑[A058212(A052938(n+1))]`
-/

namespace A008627.P5620860921802107240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A052938 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008627.P5620860921802107240

namespace A008627

/-- `∑[A058212(A052938(n+1))]` -/
def P5620860921802107240.Spec : Prop :=
  ∀ n, P5620860921802107240.a n = A008627 n

end A008627

/-! ## A008627.P7659263036864651791

`A266769(n)-A069905(n+1)`
-/

namespace A008627.P7659263036864651791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A069905 (n + 1)

end

end A008627.P7659263036864651791

namespace A008627

/-- `A266769(n)-A069905(n+1)` -/
def P7659263036864651791.Spec : Prop :=
  ∀ n, P7659263036864651791.a n = A008627 n

end A008627

/-! ## A008627.P15445607533950243706

`A007988(n+2)-A008805(n)`
-/

namespace A008627.P15445607533950243706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007988 (n + 2) - A008805 n

end

end A008627.P15445607533950243706

namespace A008627

/-- `A007988(n+2)-A008805(n)` -/
def P15445607533950243706.Spec : Prop :=
  ∀ n, P15445607533950243706.a n = A008627 n

end A008627

/-! ## A008627.P7416406152163011416

`∑[∑[A008611(n)]]-A006918(n)`
-/

namespace A008627.P7416406152163011416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006918 n

end

end A008627.P7416406152163011416

namespace A008627

/-- `∑[∑[A008611(n)]]-A006918(n)` -/
def P7416406152163011416.Spec : Prop :=
  ∀ n, P7416406152163011416.a n = A008627 n

end A008627

/-! ## A008627.P12030953452068100631

`A014125(n)-(A006918(n)+A001840(n))`
-/

namespace A008627.P12030953452068100631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n - (A006918 n + A001840 n)

end

end A008627.P12030953452068100631

namespace A008627

/-- `A014125(n)-(A006918(n)+A001840(n))` -/
def P12030953452068100631.Spec : Prop :=
  ∀ n, P12030953452068100631.a n = A008627 n

end A008627

/-! ## A008627.P12337937974731355227

`A001400(n)+A008763(n)-A026810(n)`
-/

namespace A008627.P12337937974731355227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n + (A008763 n - A026810 n)

end

end A008627.P12337937974731355227

namespace A008627

/-- `A001400(n)+A008763(n)-A026810(n)` -/
def P12337937974731355227.Spec : Prop :=
  ∀ n, P12337937974731355227.a n = A008627 n

end A008627

/-! ## A008627.P2372216002049381031

`A001400(n)+A347586(n)-A065033(n)`
-/

namespace A008627.P2372216002049381031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n + (A347586 n - A065033 n)

end

end A008627.P2372216002049381031

namespace A008627

/-- `A001400(n)+A347586(n)-A065033(n)` -/
def P2372216002049381031.Spec : Prop :=
  ∀ n, P2372216002049381031.a n = A008627 n

end A008627

/-! ## A008627.P14133287533120511721

`A114209(n+1)+A008763(n)+A008731(n)`
-/

namespace A008627.P14133287533120511721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (n + 1) + (A008763 n + A008731 n)

end

end A008627.P14133287533120511721

namespace A008627

/-- `A114209(n+1)+A008763(n)+A008731(n)` -/
def P14133287533120511721.Spec : Prop :=
  ∀ n, P14133287533120511721.a n = A008627 n

end A008627

/-! ## A008627.P9713003221929692871

`A308266(n+1)+A001399(n)-A307872(n+1)`
-/

namespace A008627.P9713003221929692871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308266 (n + 1) + (A001399 n - A307872 (n + 1))

end

end A008627.P9713003221929692871

namespace A008627

/-- `A308266(n+1)+A001399(n)-A307872(n+1)` -/
def P9713003221929692871.Spec : Prop :=
  ∀ n, P9713003221929692871.a n = A008627 n

end A008627

/-! ## A008627.P15629243456656224577

`A114209(n+1)+A114209(n+2)+A008763(n)`
-/

namespace A008627.P15629243456656224577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (n + 1) + (A114209 (n + 2) + A008763 n)

end

end A008627.P15629243456656224577

namespace A008627

/-- `A114209(n+1)+A114209(n+2)+A008763(n)` -/
def P15629243456656224577.Spec : Prop :=
  ∀ n, P15629243456656224577.a n = A008627 n

end A008627

/-! ## A008627.P13117113872203832581

`A069905(n+3)+A008763(n)`
-/

namespace A008627.P13117113872203832581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 3) + A008763 n

end

end A008627.P13117113872203832581

namespace A008627

/-- `A069905(n+3)+A008763(n)` -/
def P13117113872203832581.Spec : Prop :=
  ∀ n, P13117113872203832581.a n = A008627 n

end A008627

/-! ## A008627.P931881800088417035

`A103221(2*n)+A008763(n+2)`
-/

namespace A008627.P931881800088417035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * n) + A008763 (n + 2)

end

end A008627.P931881800088417035

namespace A008627

/-- `A103221(2*n)+A008763(n+2)` -/
def P931881800088417035.Spec : Prop :=
  ∀ n, P931881800088417035.a n = A008627 n

end A008627

/-!
# A008628: Molien series for A_5.

The programs for A008628, the canonical program `A008628.P7907090442560408367` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008628 has offset 0).

The definition of A008628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008628.P3341037277709480144

`∑[A090492(n)]`
-/

namespace A008628.P3341037277709480144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008628.P3341037277709480144

namespace A008628

/-- `∑[A090492(n)]` -/
def P3341037277709480144.Spec : Prop :=
  ∀ n, P3341037277709480144.a n = A008628 n

end A008628

/-! ## A008628.P16475878418863427030

`2*A001401(n)-A008766(n)`
-/

namespace A008628.P16475878418863427030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001401 n - A008766 n

end

end A008628.P16475878418863427030

namespace A008628

/-- `2*A001401(n)-A008766(n)` -/
def P16475878418863427030.Spec : Prop :=
  ∀ n, P16475878418863427030.a n = A008628 n

end A008628

/-! ## A008628.P13463143202782845011

`∑[2*A008667(n)]-A008766(n)`
-/

namespace A008628.P13463143202782845011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008766 n

end

end A008628.P13463143202782845011

namespace A008628

/-- `∑[2*A008667(n)]-A008766(n)` -/
def P13463143202782845011.Spec : Prop :=
  ∀ n, P13463143202782845011.a n = A008628 n

end A008628

/-! ## A008628.P7907090442560408367

`∑[A090223(n)+∑[A008613(n)]-n]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008628

/-- `∑[A090223(n)+∑[A008613(n)]-n]` -/
def P7907090442560408367.Spec : Prop :=
  ∀ n, P7907090442560408367.a n = A008628 n

theorem P7907090442560408367.correct : P7907090442560408367.Spec := by
  intro n
  simp only [A008628]

end A008628

/-! ## A008628.P14419460999717293920

`A001401(n)+A347587(n)-A014591(n)`
-/

namespace A008628.P14419460999717293920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n + (A347587 n - A014591 n)

end

end A008628.P14419460999717293920

namespace A008628

/-- `A001401(n)+A347587(n)-A014591(n)` -/
def P14419460999717293920.Spec : Prop :=
  ∀ n, P14419460999717293920.a n = A008628 n

end A008628

/-! ## A008628.P4530441406002158971

`∑[A005843(A008667(n))]-A008766(n)`
-/

namespace A008628.P4530441406002158971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008667 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008766 n

end

end A008628.P4530441406002158971

namespace A008628

/-- `∑[A005843(A008667(n))]-A008766(n)` -/
def P4530441406002158971.Spec : Prop :=
  ∀ n, P4530441406002158971.a n = A008628 n

end A008628

/-! ## A008628.P17251718012525076102

`A060016(A000217(n+4)+5)+A001401(n)`
-/

namespace A008628.P17251718012525076102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (A000217 (n + 4) + 5).toNat + A001401 n

end

end A008628.P17251718012525076102

namespace A008628

/-- `A060016(A000217(n+4)+5)+A001401(n)` -/
def P17251718012525076102.Spec : Prop :=
  ∀ n, P17251718012525076102.a n = A008628 n

end A008628

/-! ## A008628.P1099240491856080916

`A004277(A001401(n))-A008766(n)`
-/

namespace A008628.P1099240491856080916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001401 n).toNat - A008766 n

end

end A008628.P1099240491856080916

namespace A008628

/-- `A004277(A001401(n))-A008766(n)` -/
def P1099240491856080916.Spec : Prop :=
  ∀ n, P1099240491856080916.a n = A008628 n

end A008628

/-!
# A008629: Molien series for A_6.

The programs for A008629, there is no canonical definition to state claims against.
-/

/-! ## A008629.P16726324519256388555

`A001402(n)+A347588(n)-A347586(n)`
-/

namespace A008629.P16726324519256388555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n + (A347588 n - A347586 n)

end

end A008629.P16726324519256388555

/-! ## A008629.P8322568836457705708

`A347573(n)-A118759(A026813(n))`
-/

namespace A008629.P8322568836457705708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347573 (n + 21) - A118759 (A026813 n).toNat

end

end A008629.P8322568836457705708

/-! ## A008629.P12875678169905547378

`A008636(n)-A111660(A308990(n+3))`
-/

namespace A008629.P12875678169905547378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 n - A111660 (A308990 (n + 3)).toNat

end

end A008629.P12875678169905547378

/-! ## A008629.P4021911394935114660

`A067898(A036378(n))+A001402(n)`
-/

namespace A008629.P4021911394935114660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A036378 n).toNat + A001402 n

end

end A008629.P4021911394935114660

/-!
# A008630: Molien series for A_7.

The programs for A008630, there is no canonical definition to state claims against.
-/

/-! ## A008630.P15796398750542456340

`A359474(A000045(n+4))+A008636(n)`
-/

namespace A008630.P15796398750542456340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359474 (A000045 (n + 4)).toNat + A008636 n

end

end A008630.P15796398750542456340

/-!
# A008631: Molien series for alternating group Alt_8 (or A_8).

The programs for A008631, there is no canonical definition to state claims against.
-/

/-! ## A008631.P11591879895702695139

`A060016(A167499(n+6)+3)+∑[A266776(n)]`
-/

namespace A008631.P11591879895702695139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (A167499 (n + 6) + 3).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008631.P11591879895702695139

/-! ## A008631.P12733219876119036900

`A060016(A000217(n+7)+8)+∑[A266776(n)]`
-/

namespace A008631.P12733219876119036900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (A000217 (n + 7) + 8).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008631.P12733219876119036900

/-! ## A008631.P14262832314960772132

`A060016(A000217(n+7)+8)+A008284(A000217(n+7)+8)`
-/

namespace A008631.P14262832314960772132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (A000217 (n + 7) + 8).toNat + A008284 (A000217 (n + 7) + 8).toNat

end

end A008631.P14262832314960772132

/-! ## A008631.P11244403683508820044

`A340719(n)+A001222(A340719(A034521(n+1)))`
-/

namespace A008631.P11244403683508820044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340719 (n + 36) + A001222 (A340719 ((A034521 (n + 1)).toNat + 36)).toNat

end

end A008631.P11244403683508820044

/-! ## A008631.P10928632157343024363

`A185894(A034521(n+1))+A008637(n)`
-/

namespace A008631.P10928632157343024363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185894 (A034521 (n + 1)).toNat + A008637 n

end

end A008631.P10928632157343024363

/-!
# A008632: Molien series for A_9.

The programs for A008632, there is no canonical definition to state claims against.
-/

/-! ## A008632.P14868206463446044086

`A076142(A005496(n))+A008638(n)`
-/

namespace A008632.P14868206463446044086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (A005496 n).toNat + A008638 n

end

end A008632.P14868206463446044086

/-! ## A008632.P8432314462077148630

`A185284(A109613(n))+A008638(n)`
-/

namespace A008632.P8432314462077148630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A109613 n).toNat + A008638 n

end

end A008632.P8432314462077148630

/-! ## A008632.P1692792520233213637

`A185284(A167025(n))+A008638(n)`
-/

namespace A008632.P1692792520233213637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A167025 n).toNat + A008638 n

end

end A008632.P1692792520233213637

/-! ## A008632.P10566482100060469440

`A341913(n)+A185284(A109613(n))`
-/

namespace A008632.P10566482100060469440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341913 (n + 45) + A185284 (A109613 n).toNat

end

end A008632.P10566482100060469440

/-! ## A008632.P7213170781482508178

`A008638(n)+∑[A139354(A185284(n))]`
-/

namespace A008632.P7213170781482508178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139354 (A185284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008632.P7213170781482508178

/-!
# A008633: Molien series for A_10.

The programs for A008633, there is no canonical definition to state claims against.
-/

/-! ## A008633.P11075995908427141241

`A025469(A002865(n))+A008639(n)`
-/

namespace A008633.P11075995908427141241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A002865 n).toNat + A008639 n

end

end A008633.P11075995908427141241

/-! ## A008633.P349391818043894656

`A341914(n)+A025469(A002865(n))`
-/

namespace A008633.P349391818043894656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341914 (n + 55) + A025469 (A002865 n).toNat

end

end A008633.P349391818043894656

/-!
# A008634: Molien series for A_11.

The programs for A008634, there is no canonical definition to state claims against.
-/

/-! ## A008634.P16078804319761555531

`A010054(A063108(n+4))+A008640(n)`
-/

namespace A008634.P16078804319761555531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A063108 (n + 4)).toNat + A008640 n

end

end A008634.P16078804319761555531

/-!
# A008636: Number of partitions of n into at most 7 parts.

The programs for A008636, there is no canonical definition to state claims against.
-/

/-! ## A008636.P15169892387127182532

`A026813(n+7)`
-/

namespace A008636.P15169892387127182532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026813 (n + 7)

end

end A008636.P15169892387127182532

/-! ## A008636.P2492140234654624663

`A266770(2*n)`
-/

namespace A008636.P2492140234654624663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266770 (2 * n)

end

end A008636.P2492140234654624663

/-! ## A008636.P16512024258187525188

`xor(1, xor(1, A266770(n+n)))`
-/

namespace A008636.P16512024258187525188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A266770 (n + n)))

end

end A008636.P16512024258187525188

/-! ## A008636.P18065010785685774978

`∑[A266776(n)]-A026814(n)`
-/

namespace A008636.P18065010785685774978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026814 n

end

end A008636.P18065010785685774978

/-! ## A008636.P6437785104891745646

`A026814(n+8)-A026814(n)`
-/

namespace A008636.P6437785104891745646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 8) - A026814 n

end

end A008636.P6437785104891745646

/-! ## A008636.P10774640960141683639

`A212546(n+8)-A212547(n+7)`
-/

namespace A008636.P10774640960141683639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212546 (n + 8) - A212547 (n + 7)

end

end A008636.P10774640960141683639

/-! ## A008636.P12919540345498912910

`A008637(n)-A026814(n)`
-/

namespace A008636.P12919540345498912910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008637 n - A026814 n

end

end A008636.P12919540345498912910

/-! ## A008636.P17857356181221430314

`∑[A001996(n)]`
-/

namespace A008636.P17857356181221430314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008636.P17857356181221430314

/-! ## A008636.P6938535484672719187

`A152157(A167614(n+2))`
-/

namespace A008636.P6938535484672719187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A167614 (n + 2)).toNat

end

end A008636.P6938535484672719187

/-! ## A008636.P13490317423574916263

`A152157(A052905(n)+8)`
-/

namespace A008636.P13490317423574916263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A052905 n + 8).toNat

end

end A008636.P13490317423574916263

/-! ## A008636.P2491682727837841851

`A152157(A055999(n)+9)`
-/

namespace A008636.P2491682727837841851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A055999 n + 9).toNat

end

end A008636.P2491682727837841851

/-! ## A008636.P12264775503431006629

`A152157(A340266(n+2)+1)`
-/

namespace A008636.P12264775503431006629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A340266 (n + 2) + 1).toNat

end

end A008636.P12264775503431006629

/-! ## A008636.P9673171392085633119

`A152157(A166136(n+2)-3)`
-/

namespace A008636.P9673171392085633119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A166136 (n + 2) - 3).toNat

end

end A008636.P9673171392085633119

/-! ## A008636.P3872985932015282310

`A152157(eq[4, A002260(n+1)])`
-/

namespace A008636.P3872985932015282310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008636.P3872985932015282310

/-! ## A008636.P6901204437417517453

`A152157(eq[3, A002262(n)])`
-/

namespace A008636.P6901204437417517453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008636.P6901204437417517453

/-! ## A008636.P8593424833886936283

`A072233(eq[8, A002260(n+1)])`
-/

namespace A008636.P8593424833886936283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008636.P8593424833886936283

/-!
# A008637: Number of partitions of n into at most 8 parts.

The programs for A008637, there is no canonical definition to state claims against.
-/

/-! ## A008637.P10723163317785268116

`∑[A266776(n)]`
-/

namespace A008637.P10723163317785268116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008637.P10723163317785268116

/-! ## A008637.P1321932725555864701

`A026814(n+8)`
-/

namespace A008637.P1321932725555864701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (n + 8)

end

end A008637.P1321932725555864701

/-! ## A008637.P8201528302893437993

`A008638(n)-A026815(n)`
-/

namespace A008637.P8201528302893437993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A026815 n

end

end A008637.P8201528302893437993

/-! ## A008637.P6297066371566391890

`∑[A266777(n)]-A026815(n)`
-/

namespace A008637.P6297066371566391890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026815 n

end

end A008637.P6297066371566391890

/-! ## A008637.P13370594345143682897

`A266772(2*n)-A026815(n)`
-/

namespace A008637.P13370594345143682897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (2 * n) - A026815 n

end

end A008637.P13370594345143682897

/-! ## A008637.P16353243132602499338

`A008636(n+1)-A060027(n+1)`
-/

namespace A008637.P16353243132602499338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008636 (n + 1) - A060027 (n + 1)

end

end A008637.P16353243132602499338

/-! ## A008637.P6239334247375279622

`A212547(n+9)-A212548(n+8)`
-/

namespace A008637.P6239334247375279622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212547 (n + 9) - A212548 (n + 8)

end

end A008637.P6239334247375279622

/-! ## A008637.P17767612622085417592

`A026815(A020723(n))-A026815(n)`
-/

namespace A008637.P17767612622085417592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (A020723 n).toNat - A026815 n

end

end A008637.P17767612622085417592

/-! ## A008637.P6242505553130231080

`A008639(n)-(A026816(n)+A026815(n))`
-/

namespace A008637.P6242505553130231080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n - (A026816 n + A026815 n)

end

end A008637.P6242505553130231080

/-! ## A008637.P3412432640759597136

`A152146(A167614(n+3)+1)`
-/

namespace A008637.P3412432640759597136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167614 (n + 3) + 1).toNat

end

end A008637.P3412432640759597136

/-!
# A008638: Number of partitions of n into at most 9 parts.

The programs for A008638, there is no canonical definition to state claims against.
-/

/-! ## A008638.P16102694251827673039

`a(n-9)+A008637(n)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=7, a(6)=11, a(7)=15, a(8)=22`
-/

namespace A008638.P16102694251827673039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 7, 11, 15, 22] fun n a =>
  a (n - 9) + A008637 n

end

end A008638.P16102694251827673039

/-! ## A008638.P18136651535851838291

`∑[A266777(n)]`
-/

namespace A008638.P18136651535851838291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008638.P18136651535851838291

/-! ## A008638.P11439111564581614699

`A266772(2*n)`
-/

namespace A008638.P11439111564581614699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266772 (2 * n)

end

end A008638.P11439111564581614699

/-! ## A008638.P16773663544104162791

`A026815(n+9)`
-/

namespace A008638.P16773663544104162791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026815 (n + 9)

end

end A008638.P16773663544104162791

/-! ## A008638.P13743690453427439611

`A008639(n)-A026816(n)`
-/

namespace A008638.P13743690453427439611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008639 n - A026816 n

end

end A008638.P13743690453427439611

/-! ## A008638.P9926764700832988719

`∑[A266778(n)]-A026816(n)`
-/

namespace A008638.P9926764700832988719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026816 n

end

end A008638.P9926764700832988719

/-! ## A008638.P2352697063290704060

`A026816(n+10)-A026816(n)`
-/

namespace A008638.P2352697063290704060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (n + 10) - A026816 n

end

end A008638.P2352697063290704060

/-! ## A008638.P14079990604502694069

`A212548(n+10)-A212549(n+9)`
-/

namespace A008638.P14079990604502694069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212548 (n + 10) - A212549 (n + 9)

end

end A008638.P14079990604502694069

/-! ## A008638.P14135081453257365829

`A288344(n+1)-(A288344(n)+A266777(n+1))`
-/

namespace A008638.P14135081453257365829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288344 (n + 1) - (A288344 n + A266777 (n + 1))

end

end A008638.P14135081453257365829

/-! ## A008638.P9584808452181719197

`A152157(eq[4, A002262(n)])`
-/

namespace A008638.P9584808452181719197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008638.P9584808452181719197

/-!
# A008639: Number of partitions of n into at most 10 parts.

The programs for A008639, there is no canonical definition to state claims against.
-/

/-! ## A008639.P2642685750029549705

`a(n-10)+A008638(n)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=7, a(6)=11, a(7)=15, a(8)=22, a(9)=30`
-/

namespace A008639.P2642685750029549705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 7, 11, 15, 22, 30] fun n a =>
  a (n - 10) + A008638 n

end

end A008639.P2642685750029549705

/-! ## A008639.P9633286786199453551

`∑[A266778(n)]`
-/

namespace A008639.P9633286786199453551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008639.P9633286786199453551

/-! ## A008639.P1150778426012136631

`A026816(n+10)`
-/

namespace A008639.P1150778426012136631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026816 (n + 10)

end

end A008639.P1150778426012136631

/-! ## A008639.P8946346388125167354

`A212549(n+11)-A212550(n)`
-/

namespace A008639.P8946346388125167354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212549 (n + 11) - A212550 (n + 10)

end

end A008639.P8946346388125167354

/-! ## A008639.P3702211592446030872

`Δ[A288345(n)]-A266778(n+1)`
-/

namespace A008639.P3702211592446030872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A266778 (n + 1)

end

end A008639.P3702211592446030872

/-! ## A008639.P10530841209239353594

`Δ[A288345(n)-A266778(n)]-A266778(n)`
-/

namespace A008639.P10530841209239353594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288345 n - A266778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A266778 n

end

end A008639.P10530841209239353594

/-! ## A008639.P9025698298670585033

`A288345(n+1)-(A288345(n)+A266778(n+1))`
-/

namespace A008639.P9025698298670585033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288345 (n + 1) - (A288345 n + A266778 (n + 1))

end

end A008639.P9025698298670585033

/-! ## A008639.P5008201167984690342

`A008638(n+1)-A060029(n+1)`
-/

namespace A008639.P5008201167984690342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 (n + 1) - A060029 (n + 1)

end

end A008639.P5008201167984690342

/-! ## A008639.P16816246334668898875

`A152146(A167499(n+4))`
-/

namespace A008639.P16816246334668898875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167499 (n + 4)).toNat

end

end A008639.P16816246334668898875

/-! ## A008639.P14807146946491449662

`A152146(A056115(n)+20)`
-/

namespace A008639.P14807146946491449662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A056115 n + 20).toNat

end

end A008639.P14807146946491449662

/-! ## A008639.P10359111171201824695

`A152146(A167614(n+4)+2)`
-/

namespace A008639.P10359111171201824695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167614 (n + 4) + 2).toNat

end

end A008639.P10359111171201824695

/-! ## A008639.P15659112830644899943

`A072233(eq[10, A002262(n)])`
-/

namespace A008639.P15659112830644899943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A008639.P15659112830644899943

/-!
# A008640: Number of partitions of n into at most 11 parts.

The programs for A008640, there is no canonical definition to state claims against.
-/

/-! ## A008640.P10106858446435653548

`∑[A266779(n)]`
-/

namespace A008640.P10106858446435653548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008640.P10106858446435653548

/-! ## A008640.P11613048766336648540

`A266774(2*n)`
-/

namespace A008640.P11613048766336648540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266774 (2 * n)

end

end A008640.P11613048766336648540

/-! ## A008640.P8377187205463718181

`xor(1, xor(1, A266774(n+n)))`
-/

namespace A008640.P8377187205463718181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A266774 (n + n)))

end

end A008640.P8377187205463718181

/-! ## A008640.P5068163411986367540

`A266774(A005843(n))%A138334(n)`
-/

namespace A008640.P5068163411986367540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266774 (A005843 n).toNat) (A138334 n)

end

end A008640.P5068163411986367540

/-! ## A008640.P4990242919891762692

`or(A000007(n), A266774(A005843(n)))`
-/

namespace A008640.P4990242919891762692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A266774 (A005843 n).toNat)

end

end A008640.P4990242919891762692

/-! ## A008640.P16241259793922903542

`A266774(n+n)%A077497(n+1)`
-/

namespace A008640.P16241259793922903542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266774 (n + n)) (A077497 (n + 1))

end

end A008640.P16241259793922903542

/-! ## A008640.P10767222410285423687

`A152157(A133263(n+5)+3)`
-/

namespace A008640.P10767222410285423687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A133263 (n + 5) + 3).toNat

end

end A008640.P10767222410285423687

/-! ## A008640.P161415403642068359

`A152157(A000124(n+6)-(n+2))`
-/

namespace A008640.P161415403642068359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A008640.P161415403642068359

/-! ## A008640.P2417689043802820220

`A008284(A166136(n+9)+5)`
-/

namespace A008640.P2417689043802820220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A166136 (n + 9) + 5).toNat

end

end A008640.P2417689043802820220

/-! ## A008640.P11899844867664333519

`A008634(n)%A015128(A238571(n))`
-/

namespace A008640.P11899844867664333519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008634 n) (A015128 (A238571 n).toNat)

end

end A008640.P11899844867664333519

/-!
# A008641: Number of partitions of n into at most 12 parts.

The programs for A008641, there is no canonical definition to state claims against.
-/

/-! ## A008641.P2769347811610835553

`∑[A266780(n)]`
-/

namespace A008641.P2769347811610835553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008641.P2769347811610835553

/-! ## A008641.P15467087220592775299

`A266780(n)+a(n-A054977(n))` with `a(0)=1`
-/

namespace A008641.P15467087220592775299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266780 n + a ((n : ℤ) - A054977 n).toNat

end

end A008641.P15467087220592775299

/-! ## A008641.P7220423905616869496

`a(n-1)+A266780(n)+A000007(n)` with `a(0)=1`
-/

namespace A008641.P7220423905616869496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A266780 n + A000007 n)

end

end A008641.P7220423905616869496

/-! ## A008641.P5724160472355824147

`a(n-1)+A266780(n)%A050048(n+1)` with `a(0)=1`
-/

namespace A008641.P5724160472355824147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A266780 n) (A050048 (n + 1))

end

end A008641.P5724160472355824147

/-! ## A008641.P17827546626631607799

`a(n-1)+A057427(A028233(n+1))*A266780(n)` with `a(0)=1`
-/

namespace A008641.P17827546626631607799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 (A028233 (n + 1)).toNat * A266780 n

end

end A008641.P17827546626631607799

/-! ## A008641.P10179625910422113270

`A152146(A166136(n+5))`
-/

namespace A008641.P10179625910422113270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A166136 (n + 5)).toNat

end

end A008641.P10179625910422113270

/-! ## A008641.P16083335049710914734

`A152146(A056119(n)+27)`
-/

namespace A008641.P16083335049710914734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A056119 n + 27).toNat

end

end A008641.P16083335049710914734

/-! ## A008641.P3571620441735650048

`A152146(A167499(n+5)+1)`
-/

namespace A008641.P3571620441735650048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167499 (n + 5) + 1).toNat

end

end A008641.P3571620441735650048

/-! ## A008641.P12170821699329188106

`A152146(A167614(n+5)+3)`
-/

namespace A008641.P12170821699329188106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A167614 (n + 5) + 3).toNat

end

end A008641.P12170821699329188106

/-! ## A008641.P11261458035878526046

`A152146(A000124(n+6)+5)`
-/

namespace A008641.P11261458035878526046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A000124 (n + 6) + 5).toNat

end

end A008641.P11261458035878526046

/-! ## A008641.P15733160374043999104

`A152146(A000217(n+6)+6)`
-/

namespace A008641.P15733160374043999104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A000217 (n + 6) + 6).toNat

end

end A008641.P15733160374043999104

/-! ## A008641.P4769063336061235929

`A152146(A027379(n+6)-A005843(n+3))`
-/

namespace A008641.P4769063336061235929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A027379 (n + 6) - A005843 (n + 3)).toNat

end

end A008641.P4769063336061235929

/-! ## A008641.P9602723267199403688

`A152146(A055998(n+6)-A005843(n+3))`
-/

namespace A008641.P9602723267199403688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152146 (A055998 (n + 6) - A005843 (n + 3)).toNat

end

end A008641.P9602723267199403688

/-! ## A008641.P8464545170787026726

`A008284(A000124(n+11)+11)`
-/

namespace A008641.P8464545170787026726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A000124 (n + 11) + 11).toNat

end

end A008641.P8464545170787026726

/-! ## A008641.P15785238838932776880

`A008284(A000217(n+11)+12)`
-/

namespace A008641.P15785238838932776880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A000217 (n + 11) + 12).toNat

end

end A008641.P15785238838932776880

/-! ## A008641.P16042734064652213584

`A008284(A167499(n+7)+A016777(n+12))`
-/

namespace A008641.P16042734064652213584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A167499 (n + 7) + A016777 (n + 12)).toNat

end

end A008641.P16042734064652213584

/-! ## A008641.P4432777969467213334

`A058398(A055998(n+8)+A004273(n+8))`
-/

namespace A008641.P4432777969467213334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A055998 (n + 8) + A004273 (n + 8)).toNat

end

end A008641.P4432777969467213334

/-!
# A008642: Quarter-squares repeated.

The programs for A008642, the canonical program `A008642.P566840809562218123` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008642 has offset 0).

The definition of A008642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008642.P566840809562218123

`floor((n+4)/4)*floor((n+6)/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008642

/-- `floor((n+4)/4)*floor((n+6)/4)` -/
def P566840809562218123.Spec : Prop :=
  ∀ n, P566840809562218123.a n = A008642 n

theorem P566840809562218123.correct : P566840809562218123.Spec := by
  intro n
  simp only [A008642]

end A008642

/-! ## A008642.P12343309974648066992

`∑[∑[char[4*n]]]-a(n-1)` with `a(0)=1`
-/

namespace A008642.P12343309974648066992
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A008642.P12343309974648066992

namespace A008642

/-- `∑[∑[char[4*n]]]-a(n-1)` -/
def P12343309974648066992.Spec : Prop :=
  ∀ n, P12343309974648066992.a n = A008642 n

end A008642

/-! ## A008642.P5266677228576382623

`floor(a(n-2)+n/4)+1` with `a(0)=1, a(1)=1`
-/

namespace A008642.P5266677228576382623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + (n : ℚ) / 4⌋ + 1

end

end A008642.P5266677228576382623

namespace A008642

/-- `floor(a(n-2)+n/4)+1` -/
def P5266677228576382623.Spec : Prop :=
  ∀ n, P5266677228576382623.a n = A008642 n

end A008642

/-! ## A008642.P13908183674073615231

`ceil(a(n-2)+(n+1)/4)` with `a(0)=1, a(1)=1`
-/

namespace A008642.P13908183674073615231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n + 1 : ℚ) / 4⌉

end

end A008642.P13908183674073615231

namespace A008642

/-- `ceil(a(n-2)+(n+1)/4)` -/
def P13908183674073615231.Spec : Prop :=
  ∀ n, P13908183674073615231.a n = A008642 n

end A008642

/-! ## A008642.P5151258451129724642

`round(a(n-2)+(n+2)/4)` with `a(0)=1, a(1)=1`
-/

namespace A008642.P5151258451129724642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (n + 2 : ℚ) / 4)

end

end A008642.P5151258451129724642

namespace A008642

/-- `round(a(n-2)+(n+2)/4)` -/
def P5151258451129724642.Spec : Prop :=
  ∀ n, P5151258451129724642.a n = A008642 n

end A008642

/-! ## A008642.P12938138819451464167

`∑[1-(a(n-1)-floor(n/4))]` with `a(0)=1`
-/

namespace A008642.P12938138819451464167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - (f1 (n - 1) - ⌊(n : ℚ) / 4⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008642.P12938138819451464167

namespace A008642

/-- `∑[1-(a(n-1)-floor(n/4))]` -/
def P12938138819451464167.Spec : Prop :=
  ∀ n, P12938138819451464167.a n = A008642 n

end A008642

/-! ## A008642.P9908319126315236904

`∑[a(n-4)+(n+1)%2]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A008642.P9908319126315236904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  f1 (n - 4) + (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008642.P9908319126315236904

namespace A008642

/-- `∑[a(n-4)+(n+1)%2]` -/
def P9908319126315236904.Spec : Prop :=
  ∀ n, (P9908319126315236904.a n : ℤ) = A008642 n

end A008642

/-! ## A008642.P10414556029484566389

`∑[a(n-4)+a(n-2)^a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A008642.P10414556029484566389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  f1 (n - 4) + f1 (n - 2) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008642.P10414556029484566389

namespace A008642

/-- `∑[a(n-4)+a(n-2)^a(n-1)]` -/
def P10414556029484566389.Spec : Prop :=
  ∀ n, (P10414556029484566389.a n : ℤ) = A008642 n

end A008642

/-! ## A008642.P14326911859553367386

`A173151(or(1, n))`
-/

namespace A008642.P14326911859553367386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (Nat.lor 1 n)

end

end A008642.P14326911859553367386

namespace A008642

/-- `A173151(or(1, n))` -/
def P14326911859553367386.Spec : Prop :=
  ∀ n, P14326911859553367386.a n = A008642 n

end A008642

/-! ## A008642.P7866728272355738314

`A260220(or(1, n))`
-/

namespace A008642.P7866728272355738314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260220 (Nat.lor 1 n)

end

end A008642.P7866728272355738314

namespace A008642

/-- `A260220(or(1, n))` -/
def P7866728272355738314.Spec : Prop :=
  ∀ n, P7866728272355738314.a n = A008642 n

end A008642

/-! ## A008642.P4955730137993687207

`A361202(or(1, n))`
-/

namespace A008642.P4955730137993687207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361202 (Nat.lor 1 n)

end

end A008642.P4955730137993687207

namespace A008642

/-- `A361202(or(1, n))` -/
def P4955730137993687207.Spec : Prop :=
  ∀ n, P4955730137993687207.a n = A008642 n

end A008642

/-! ## A008642.P3491707149046743731

`A008733(or(1, n)-1)`
-/

namespace A008642.P3491707149046743731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (Nat.lor 1 n - 1)

end

end A008642.P3491707149046743731

namespace A008642

/-- `A008733(or(1, n)-1)` -/
def P3491707149046743731.Spec : Prop :=
  ∀ n, P3491707149046743731.a n = A008642 n

end A008642

/-! ## A008642.P17132417005414576283

`A008797(or(1, n)-1)`
-/

namespace A008642.P17132417005414576283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (Nat.lor 1 n - 1)

end

end A008642.P17132417005414576283

namespace A008642

/-- `A008797(or(1, n)-1)` -/
def P17132417005414576283.Spec : Prop :=
  ∀ n, P17132417005414576283.a n = A008642 n

end A008642

/-! ## A008642.P13170107944528228148

`A001972(or(1, n))/2`
-/

namespace A008642.P13170107944528228148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001972 (Nat.lor 1 n) : ℚ) / 2

end

end A008642.P13170107944528228148

namespace A008642

/-- `A001972(or(1, n))/2` -/
def P13170107944528228148.Spec : Prop :=
  ∀ n, P13170107944528228148.a n = (A008642 n : ℚ)

end A008642

/-! ## A008642.P768175805079745444

`A008733(n-and(1, n))`
-/

namespace A008642.P768175805079745444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (n - Nat.land 1 n)

end

end A008642.P768175805079745444

namespace A008642

/-- `A008733(n-and(1, n))` -/
def P768175805079745444.Spec : Prop :=
  ∀ n, P768175805079745444.a n = A008642 n

end A008642

/-! ## A008642.P8194309469916751318

`A087811(∑[char[2*n]])`
-/

namespace A008642.P8194309469916751318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008642.P8194309469916751318

namespace A008642

/-- `A087811(∑[char[2*n]])` -/
def P8194309469916751318.Spec : Prop :=
  ∀ n, P8194309469916751318.a n = A008642 n

end A008642

/-! ## A008642.P8471682086717591189

`A002620(ceil((n+3)/2))`
-/

namespace A008642.P8471682086717591189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ⌈(n + 3 : ℚ) / 2⌉.toNat

end

end A008642.P8471682086717591189

namespace A008642

/-- `A002620(ceil((n+3)/2))` -/
def P8471682086717591189.Spec : Prop :=
  ∀ n, P8471682086717591189.a n = A008642 n

end A008642

/-! ## A008642.P12631411961716268101

`A078126(∑[char[2*n]]+1)+1`
-/

namespace A008642.P12631411961716268101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A008642.P12631411961716268101

namespace A008642

/-- `A078126(∑[char[2*n]]+1)+1` -/
def P12631411961716268101.Spec : Prop :=
  ∀ n, P12631411961716268101.a n = A008642 n

end A008642

/-! ## A008642.P16810470046978390869

`∑[(A002265(n)+1)*char[2*n]]`
-/

namespace A008642.P16810470046978390869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 n + 1) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008642.P16810470046978390869

namespace A008642

/-- `∑[(A002265(n)+1)*char[2*n]]` -/
def P16810470046978390869.Spec : Prop :=
  ∀ n, P16810470046978390869.a n = A008642 n

end A008642

/-! ## A008642.P11457575873310333841

`A008733(A052928(n))`
-/

namespace A008642.P11457575873310333841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (A052928 n).toNat

end

end A008642.P11457575873310333841

namespace A008642

/-- `A008733(A052928(n))` -/
def P11457575873310333841.Spec : Prop :=
  ∀ n, P11457575873310333841.a n = A008642 n

end A008642

/-!
# A008643: Molien series for group of 4 X 4 upper triangular matrices over GF(2).

The programs for A008643, the canonical program `A008643.P17356449891711495349` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008643 has offset 0).

The definition of A008643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008643.P17356449891711495349

`A008804(floor(n/2))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008643

/-- `A008804(floor(n/2))` -/
def P17356449891711495349.Spec : Prop :=
  ∀ n, P17356449891711495349.a n = A008643 n

theorem P17356449891711495349.correct : P17356449891711495349.Spec := by
  intro n
  simp only [A008643]

end A008643

/-! ## A008643.P16722437715348271718

`A092532(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008643.P16722437715348271718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A092532 n + a (n - 2)

end

end A008643.P16722437715348271718

namespace A008643

/-- `A092532(n)+a(n-2)` -/
def P16722437715348271718.Spec : Prop :=
  ∀ n, P16722437715348271718.a n = A008643 n

end A008643

/-! ## A008643.P14738146340822454252

`∑[A059841(n)*A092532(n)]`
-/

namespace A008643.P14738146340822454252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A092532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008643.P14738146340822454252

namespace A008643

/-- `∑[A059841(n)*A092532(n)]` -/
def P14738146340822454252.Spec : Prop :=
  ∀ n, P14738146340822454252.a n = A008643 n

end A008643

/-! ## A008643.P15830874977742369080

`A008804(A123108(n))/A054977(n)`
-/

namespace A008643.P15830874977742369080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008804 (A123108 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A008643.P15830874977742369080

namespace A008643

/-- `A008804(A123108(n))/A054977(n)` -/
def P15830874977742369080.Spec : Prop :=
  ∀ n, P15830874977742369080.a n = (A008643 n : ℚ)

end A008643

/-! ## A008643.P13965517513611964985

`A029029(A168237(n))`
-/

namespace A008643.P13965517513611964985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029029 (A168237 n).toNat

end

end A008643.P13965517513611964985

namespace A008643

/-- `A029029(A168237(n))` -/
def P13965517513611964985.Spec : Prop :=
  ∀ n, P13965517513611964985.a n = A008643 n

end A008643

/-! ## A008643.P1568120361246574285

`A029071(A168236(n+1))`
-/

namespace A008643.P1568120361246574285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 (A168236 (n + 1)).toNat

end

end A008643.P1568120361246574285

namespace A008643

/-- `A029071(A168236(n+1))` -/
def P1568120361246574285.Spec : Prop :=
  ∀ n, P1568120361246574285.a n = A008643 n

end A008643

/-! ## A008643.P4424544901316918471

`A008804(A002265(2*n))%A017498(n)`
-/

namespace A008643.P4424544901316918471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008804 (A002265 (2 * n)).toNat) (A017498 n)

end

end A008643.P4424544901316918471

namespace A008643

/-- `A008804(A002265(2*n))%A017498(n)` -/
def P4424544901316918471.Spec : Prop :=
  ∀ n, P4424544901316918471.a n = A008643 n

end A008643

/-! ## A008643.P13222570461677152775

`A029181(2*(n+1))-A029181(n+1)`
-/

namespace A008643.P13222570461677152775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029181 (2 * (n + 1)) - A029181 (n + 1)

end

end A008643.P13222570461677152775

namespace A008643

/-- `A029181(2*(n+1))-A029181(n+1)` -/
def P13222570461677152775.Spec : Prop :=
  ∀ n, P13222570461677152775.a n = A008643 n

end A008643

/-! ## A008643.P1252319122006606110

`A029300(3*n)`
-/

namespace A008643.P1252319122006606110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029300 (3 * n)

end

end A008643.P1252319122006606110

namespace A008643

/-- `A029300(3*n)` -/
def P1252319122006606110.Spec : Prop :=
  ∀ n, P1252319122006606110.a n = A008643 n

end A008643

/-! ## A008643.P15199692863688623395

`A029238(A168326(n+1))`
-/

namespace A008643.P15199692863688623395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 (A168326 (n + 1)).toNat

end

end A008643.P15199692863688623395

namespace A008643

/-- `A029238(A168326(n+1))` -/
def P15199692863688623395.Spec : Prop :=
  ∀ n, P15199692863688623395.a n = A008643 n

end A008643

/-! ## A008643.P1018961883825184738

`A000027(A008804(ceil((n-1)/2)))`
-/

namespace A008643.P1018961883825184738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008804 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat).toNat

end

end A008643.P1018961883825184738

namespace A008643

/-- `A000027(A008804(ceil((n-1)/2)))` -/
def P1018961883825184738.Spec : Prop :=
  ∀ n, P1018961883825184738.a n = A008643 n

end A008643

/-! ## A008643.P4633667655633799421

`A115268(A266723(n+1))`
-/

namespace A008643.P4633667655633799421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115268 (A266723 (n + 1)).toNat

end

end A008643.P4633667655633799421

namespace A008643

/-- `A115268(A266723(n+1))` -/
def P4633667655633799421.Spec : Prop :=
  ∀ n, P4633667655633799421.a n = A008643 n

end A008643

/-!
# A008644: Molien series of 5 X 5 upper triangular matrices over GF( 2 ).

The programs for A008644, the canonical program `A008644.P10444612600920938958` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008644 has offset 0).

The definition of A008644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008644.P10444612600920938958

`A088932(floor(n/2))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008644

/-- `A088932(floor(n/2))` -/
def P10444612600920938958.Spec : Prop :=
  ∀ n, P10444612600920938958.a n = A008644 n

theorem P10444612600920938958.correct : P10444612600920938958.Spec := by
  intro n
  simp only [A008644]

end A008644

/-! ## A008644.P1877243029789019523

`xor(1, xor(1, A088932(ceil((n-1)/2))))`
-/

namespace A008644.P1877243029789019523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat))

end

end A008644.P1877243029789019523

namespace A008644

/-- `xor(1, xor(1, A088932(ceil((n-1)/2))))` -/
def P1877243029789019523.Spec : Prop :=
  ∀ n, P1877243029789019523.a n = A008644 n

end A008644

/-! ## A008644.P9427394941902075691

`dr(A047979(n+1))*A088932(ceil((n-1)/2))`
-/

namespace A008644.P9427394941902075691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A047979 (n + 1)) : ℤ) * A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A008644.P9427394941902075691

namespace A008644

/-- `dr(A047979(n+1))*A088932(ceil((n-1)/2))` -/
def P9427394941902075691.Spec : Prop :=
  ∀ n, P9427394941902075691.a n = A008644 n

end A008644

/-! ## A008644.P12716085142351107572

`A007318(C(2, n)+1)*A088932(ceil((n-1)/2))`
-/

namespace A008644.P12716085142351107572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n + 1) * A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A008644.P12716085142351107572

namespace A008644

/-- `A007318(C(2, n)+1)*A088932(ceil((n-1)/2))` -/
def P12716085142351107572.Spec : Prop :=
  ∀ n, P12716085142351107572.a n = A008644 n

end A008644

/-! ## A008644.P10633818250763618673

`A020985(n)²*A088932(A004526(n))`
-/

namespace A008644.P10633818250763618673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A088932 (A004526 n).toNat

end

end A008644.P10633818250763618673

namespace A008644

/-- `A020985(n)²*A088932(A004526(n))` -/
def P10633818250763618673.Spec : Prop :=
  ∀ n, P10633818250763618673.a n = A008644 n

end A008644

/-! ## A008644.P1993280580082234647

`A001222(A105574(n+1))*A088932(ceil((n-1)/2))`
-/

namespace A008644.P1993280580082234647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A105574 (n + 1)).toNat * A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A008644.P1993280580082234647

namespace A008644

/-- `A001222(A105574(n+1))*A088932(ceil((n-1)/2))` -/
def P1993280580082234647.Spec : Prop :=
  ∀ n, P1993280580082234647.a n = A008644 n

end A008644

/-! ## A008644.P5017047000091859060

`A088932(ceil((n-1)/2))^A001222(A008578(n+1))`
-/

namespace A008644.P5017047000091859060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A008644.P5017047000091859060

namespace A008644

/-- `A088932(ceil((n-1)/2))^A001222(A008578(n+1))` -/
def P5017047000091859060.Spec : Prop :=
  ∀ n, P5017047000091859060.a n = (A008644 n : ℚ)

end A008644

/-! ## A008644.P5512510738615675354

`A088932(ceil((n-1)/2))+A008683(12*(n+1))`
-/

namespace A008644.P5512510738615675354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat + A008683 (12 * (n + 1))

end

end A008644.P5512510738615675354

namespace A008644

/-- `A088932(ceil((n-1)/2))+A008683(12*(n+1))` -/
def P5512510738615675354.Spec : Prop :=
  ∀ n, P5512510738615675354.a n = A008644 n

end A008644

/-! ## A008644.P11202834081641796807

`A028920(A005843(n+2))*A088932(ceil((n-1)/2))`
-/

namespace A008644.P11202834081641796807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A005843 (n + 2)).toNat * A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A008644.P11202834081641796807

namespace A008644

/-- `A028920(A005843(n+2))*A088932(ceil((n-1)/2))` -/
def P11202834081641796807.Spec : Prop :=
  ∀ n, P11202834081641796807.a n = A008644 n

end A008644

/-! ## A008644.P6367475233249379045

`A001222(A049078(n+1))*A088932(ceil((n-1)/2))`
-/

namespace A008644.P6367475233249379045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049078 (n + 1)).toNat * A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A008644.P6367475233249379045

namespace A008644

/-- `A001222(A049078(n+1))*A088932(ceil((n-1)/2))` -/
def P6367475233249379045.Spec : Prop :=
  ∀ n, P6367475233249379045.a n = A008644 n

end A008644

/-! ## A008644.P18047747476949610838

`A014963(12*(n+1))*A088932(ceil((n-1)/2))`
-/

namespace A008644.P18047747476949610838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A008644.P18047747476949610838

namespace A008644

/-- `A014963(12*(n+1))*A088932(ceil((n-1)/2))` -/
def P18047747476949610838.Spec : Prop :=
  ∀ n, P18047747476949610838.a n = A008644 n

end A008644

/-! ## A008644.P1496614056884980197

`A000027(A088932(ceil((n-1)/2)))`
-/

namespace A008644.P1496614056884980197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat).toNat

end

end A008644.P1496614056884980197

namespace A008644

/-- `A000027(A088932(ceil((n-1)/2)))` -/
def P1496614056884980197.Spec : Prop :=
  ∀ n, P1496614056884980197.a n = A008644 n

end A008644

/-! ## A008644.P3086359033843344833

`A028920(A087696(n+1))*A088932(ceil((n-1)/2))`
-/

namespace A008644.P3086359033843344833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A087696 (n + 1)).toNat * A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

end

end A008644.P3086359033843344833

namespace A008644

/-- `A028920(A087696(n+1))*A088932(ceil((n-1)/2))` -/
def P3086359033843344833.Spec : Prop :=
  ∀ n, P3086359033843344833.a n = A008644 n

end A008644

/-! ## A008644.P2816846362130716522

`∑{d}[A088932(ceil((n-1)/2)), A000010(#)]`
-/

namespace A008644.P2816846362130716522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A008644.P2816846362130716522

namespace A008644

/-- `∑{d}[A088932(ceil((n-1)/2)), A000010(#)]` -/
def P2816846362130716522.Spec : Prop :=
  ∀ n, P2816846362130716522.a n = A008644 n

end A008644

/-! ## A008644.P9003916429060267175

`A004442(xor(1, A088932(ceil((n-1)/2))))`
-/

namespace A008644.P9003916429060267175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor 1 (A088932 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat)).toNat

end

end A008644.P9003916429060267175

namespace A008644

/-- `A004442(xor(1, A088932(ceil((n-1)/2))))` -/
def P9003916429060267175.Spec : Prop :=
  ∀ n, P9003916429060267175.a n = A008644 n

end A008644

/-!
# A008645: Molien series of 6 X 6 upper triangular matrices over GF( 2 ).

The programs for A008645, the canonical program `A008645.P1092398872060374740` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008645 has offset 0).

The definition of A008645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008645.P1092398872060374740

`A088954(floor(n/2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008645

/-- `A088954(floor(n/2))` -/
def P1092398872060374740.Spec : Prop :=
  ∀ n, P1092398872060374740.a n = A008645 n

theorem P1092398872060374740.correct : P1092398872060374740.Spec := by
  intro n
  simp only [A008645]

end A008645

/-! ## A008645.P18260994179477977177

`gcd(A000038(n), A088954(A004526(n)))`
-/

namespace A008645.P18260994179477977177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A088954 (A004526 n).toNat)

end

end A008645.P18260994179477977177

namespace A008645

/-- `gcd(A000038(n), A088954(A004526(n)))` -/
def P18260994179477977177.Spec : Prop :=
  ∀ n, (P18260994179477977177.a n : ℤ) = A008645 n

end A008645

/-! ## A008645.P811722078959671746

`lcm(A008836(n+1), A088954(A004526(n)))`
-/

namespace A008645.P811722078959671746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A088954 (A004526 n).toNat)

end

end A008645.P811722078959671746

namespace A008645

/-- `lcm(A008836(n+1), A088954(A004526(n)))` -/
def P811722078959671746.Spec : Prop :=
  ∀ n, (P811722078959671746.a n : ℤ) = A008645 n

end A008645

/-! ## A008645.P14913441618496623513

`lcm(A088954(A004526(n)), A332433(n))`
-/

namespace A008645.P14913441618496623513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A088954 (A004526 n).toNat) (A332433 n)

end

end A008645.P14913441618496623513

namespace A008645

/-- `lcm(A088954(A004526(n)), A332433(n))` -/
def P14913441618496623513.Spec : Prop :=
  ∀ n, (P14913441618496623513.a n : ℤ) = A008645 n

end A008645

/-! ## A008645.P16517286016681180529

`A000027(A088954(ceil((n-1)/2)))`
-/

namespace A008645.P16517286016681180529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A088954 ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat).toNat

end

end A008645.P16517286016681180529

namespace A008645

/-- `A000027(A088954(ceil((n-1)/2)))` -/
def P16517286016681180529.Spec : Prop :=
  ∀ n, P16517286016681180529.a n = A008645 n

end A008645

/-!
# A008646: Molien series for cyclic group of order 5.

The programs for A008646, the canonical program `A008646.P6994689731037912610` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008646 has offset 0).

The definition of A008646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008646.P6994689731037912610

`ceil(C(n+4, 4)/5)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008646

/-- `ceil(C(n+4, 4)/5)` -/
def P6994689731037912610.Spec : Prop :=
  ∀ n, P6994689731037912610.a n = A008646 n

theorem P6994689731037912610.correct : P6994689731037912610.Spec := by
  intro n
  simp only [A008646]

end A008646

/-! ## A008646.P7826198881907107000

`ceil(∑[∑[∑[n+1]]/5])`
-/

namespace A008646.P7826198881907107000
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A008646.P7826198881907107000

namespace A008646

/-- `ceil(∑[∑[∑[n+1]]/5])` -/
def P7826198881907107000.Spec : Prop :=
  ∀ n, P7826198881907107000.a n = A008646 n

end A008646

/-! ## A008646.P2779375180452563572

`floor((C(n+4, 4)+4)/5)`
-/

namespace A008646.P2779375180452563572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 4) 4 + 4 : ℚ) / 5⌋

end

end A008646.P2779375180452563572

namespace A008646

/-- `floor((C(n+4, 4)+4)/5)` -/
def P2779375180452563572.Spec : Prop :=
  ∀ n, P2779375180452563572.a n = A008646 n

end A008646

/-! ## A008646.P12131133458461356730

`A079998(n)+A051170(n+5)`
-/

namespace A008646.P12131133458461356730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 n + A051170 (n + 5)

end

end A008646.P12131133458461356730

namespace A008646

/-- `A079998(n)+A051170(n+5)` -/
def P12131133458461356730.Spec : Prop :=
  ∀ n, P12131133458461356730.a n = A008646 n

end A008646

/-! ## A008646.P16510127506160699747

`2*A032279(n+5)-A008805(n)`
-/

namespace A008646.P16510127506160699747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032279 (n + 5) - A008805 n

end

end A008646.P16510127506160699747

namespace A008646

/-- `2*A032279(n+5)-A008805(n)` -/
def P16510127506160699747.Spec : Prop :=
  ∀ n, P16510127506160699747.a n = A008646 n

end A008646

/-! ## A008646.P11410625787067383211

`2*A032279(n+5)-A000217(A008619(n))`
-/

namespace A008646.P11410625787067383211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032279 (n + 5) - A000217 (A008619 n).toNat

end

end A008646.P11410625787067383211

namespace A008646

/-- `2*A032279(n+5)-A000217(A008619(n))` -/
def P11410625787067383211.Spec : Prop :=
  ∀ n, P11410625787067383211.a n = A008646 n

end A008646

/-! ## A008646.P6959466490967510285

`2*A032279(n+5)-Δ[A006918(n)]`
-/

namespace A008646.P6959466490967510285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032279 (n + 5) - (f1 (n + 1) - f1 n)

end

end A008646.P6959466490967510285

namespace A008646

/-- `2*A032279(n+5)-Δ[A006918(n)]` -/
def P6959466490967510285.Spec : Prop :=
  ∀ n, P6959466490967510285.a n = A008646 n

end A008646

/-! ## A008646.P14733573913623691708

`A037306(A052905(n+2))`
-/

namespace A008646.P14733573913623691708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A052905 (n + 2)).toNat

end

end A008646.P14733573913623691708

namespace A008646

/-- `A037306(A052905(n+2))` -/
def P14733573913623691708.Spec : Prop :=
  ∀ n, P14733573913623691708.a n = A008646 n

end A008646

/-!
# A008647: Expansion of g.f.: (1+x^9)/((1-x^4)*(1-x^6)).

The programs for A008647, the canonical program `A008647.P11327412960574449665` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008647 has offset 0).

The definition of A008647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008647.P11327412960574449665

`a(n-3)+a(n-4)-a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008647

/-- `a(n-3)+a(n-4)-a(n-7)` -/
def P11327412960574449665.Spec : Prop :=
  ∀ n, P11327412960574449665.a n = A008647 n

theorem P11327412960574449665.correct : P11327412960574449665.Spec := by
  intro n
  simp only [A008647]

end A008647

/-! ## A008647.P15432269776856686683

`floor((9*(-1)^n+2*(n+7)+6*(-1)^floor(n/2))/24)`
-/

namespace A008647.P15432269776856686683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((9 * (-1) ^ n + (2 * (n + 7) : ℤ) : ℚ) + 6 * (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) / 24⌋

end

end A008647.P15432269776856686683

namespace A008647

/-- `floor((9*(-1)^n+2*(n+7)+6*(-1)^floor(n/2))/24)` -/
def P15432269776856686683.Spec : Prop :=
  ∀ n, P15432269776856686683.a n = A008647 n

end A008647

/-! ## A008647.P10869348188446544026

`(6*A057077(n)+8*A057078(n)+1+2*n+9*(-1)^n)/24`
-/

namespace A008647.P10869348188446544026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A057077 n + 8 * A057078 n + (1 + 2 * n : ℤ) + 9 * (-1) ^ n : ℚ) / 24

end

end A008647.P10869348188446544026

namespace A008647

/-- `(6*A057077(n)+8*A057078(n)+1+2*n+9*(-1)^n)/24` -/
def P10869348188446544026.Spec : Prop :=
  ∀ n, P10869348188446544026.a n = (A008647 n : ℚ)

end A008647

/-! ## A008647.P12694374169965014639

`a(n%3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A008647.P12694374169965014639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  a (n % 3) + a (n - 4)

end

end A008647.P12694374169965014639

namespace A008647

/-- `a(n%3)+a(n-4)` -/
def P12694374169965014639.Spec : Prop :=
  ∀ n, (P12694374169965014639.a n : ℤ) = A008647 n

end A008647

/-! ## A008647.P15449492585789054849

`A187323(n)+1-n`
-/

namespace A008647.P15449492585789054849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187323 n + (1 - (n : ℤ))

end

end A008647.P15449492585789054849

namespace A008647

/-- `A187323(n)+1-n` -/
def P15449492585789054849.Spec : Prop :=
  ∀ n, P15449492585789054849.a n = A008647 n

end A008647

/-! ## A008647.P8484791126277054347

`a(n-1)+A083040(n)-2` with `a(0)=1`
-/

namespace A008647.P8484791126277054347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A083040 n - 2)

end

end A008647.P8484791126277054347

namespace A008647

/-- `a(n-1)+A083040(n)-2` -/
def P8484791126277054347.Spec : Prop :=
  ∀ n, P8484791126277054347.a n = A008647 n

end A008647

/-! ## A008647.P6416765948278039630

`A091972(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A008647.P6416765948278039630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091972 (n - 1) - a (n - 1)

end

end A008647.P6416765948278039630

namespace A008647

/-- `A091972(n-1)-a(n-1)` -/
def P6416765948278039630.Spec : Prop :=
  ∀ n, P6416765948278039630.a n = A008647 n

end A008647

/-! ## A008647.P1975818401852077382

`1-(∑[(n²+1)%3]-A047380(n+1))`
-/

namespace A008647.P1975818401852077382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A047380 (n + 1))

end

end A008647.P1975818401852077382

namespace A008647

/-- `1-(∑[(n²+1)%3]-A047380(n+1))` -/
def P1975818401852077382.Spec : Prop :=
  ∀ n, P1975818401852077382.a n = A008647 n

end A008647

/-! ## A008647.P452750434231078953

`A008683(gcd(n+3, n-1))+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A008647.P452750434231078953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A008683 (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1)) + a (n - 3)

end

end A008647.P452750434231078953

namespace A008647

/-- `A008683(gcd(n+3, n-1))+a(n-3)` -/
def P452750434231078953.Spec : Prop :=
  ∀ n, P452750434231078953.a n = A008647 n

end A008647

/-! ## A008647.P11429065826589044219

`A008770(n)-A175870(n)`
-/

namespace A008647.P11429065826589044219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008770 n - A175870 n

end

end A008647.P11429065826589044219

namespace A008647

/-- `A008770(n)-A175870(n)` -/
def P11429065826589044219.Spec : Prop :=
  ∀ n, P11429065826589044219.a n = A008647 n

end A008647

/-! ## A008647.P6121150093604708597

`A008679(n)-A011765(n+1)`
-/

namespace A008647.P6121150093604708597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 n - A011765 (n + 1)

end

end A008647.P6121150093604708597

namespace A008647

/-- `A008679(n)-A011765(n+1)` -/
def P6121150093604708597.Spec : Prop :=
  ∀ n, P6121150093604708597.a n = A008647 n

end A008647

/-! ## A008647.P8755623666912096660

`A008621(n)-A011960(n+1)`
-/

namespace A008647.P8755623666912096660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n - A011960 (n + 1)

end

end A008647.P8755623666912096660

namespace A008647

/-- `A008621(n)-A011960(n+1)` -/
def P8755623666912096660.Spec : Prop :=
  ∀ n, P8755623666912096660.a n = A008647 n

end A008647

/-! ## A008647.P8513994696981601793

`A002265(n)+1-Δ[A001399(n)]`
-/

namespace A008647.P8513994696981601793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + (1 - (f1 (n + 1) - f1 n))

end

end A008647.P8513994696981601793

namespace A008647

/-- `A002265(n)+1-Δ[A001399(n)]` -/
def P8513994696981601793.Spec : Prop :=
  ∀ n, P8513994696981601793.a n = A008647 n

end A008647

/-! ## A008647.P16494195242204618071

`A047380(n+1)-A047212(n+1)`
-/

namespace A008647.P16494195242204618071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047380 (n + 1) - A047212 (n + 1)

end

end A008647.P16494195242204618071

namespace A008647

/-- `A047380(n+1)-A047212(n+1)` -/
def P16494195242204618071.Spec : Prop :=
  ∀ n, P16494195242204618071.a n = A008647 n

end A008647

/-! ## A008647.P1138672808149704286

`A002265(n)+1-A103221(n+1)`
-/

namespace A008647.P1138672808149704286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + 1 - A103221 (n + 1)

end

end A008647.P1138672808149704286

namespace A008647

/-- `A002265(n)+1-A103221(n+1)` -/
def P1138672808149704286.Spec : Prop :=
  ∀ n, P1138672808149704286.a n = A008647 n

end A008647

/-! ## A008647.P16883638962336525707

`A004526(A028242(A063942(n)+1))`
-/

namespace A008647.P16883638962336525707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028242 (A063942 n + 1).toNat).toNat

end

end A008647.P16883638962336525707

namespace A008647

/-- `A004526(A028242(A063942(n)+1))` -/
def P16883638962336525707.Spec : Prop :=
  ∀ n, P16883638962336525707.a n = A008647 n

end A008647

/-! ## A008647.P8323028503891825275

`A004526(A103221(n)+A102560(n))`
-/

namespace A008647.P8323028503891825275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A103221 n + A102560 n).toNat

end

end A008647.P8323028503891825275

namespace A008647

/-- `A004526(A103221(n)+A102560(n))` -/
def P8323028503891825275.Spec : Prop :=
  ∀ n, P8323028503891825275.a n = A008647 n

end A008647

/-! ## A008647.P7994760682173707213

`A051274(n)-A004526(A004526(n)+1)`
-/

namespace A008647.P7994760682173707213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 n - A004526 (A004526 n + 1).toNat

end

end A008647.P7994760682173707213

namespace A008647

/-- `A051274(n)-A004526(A004526(n)+1)` -/
def P7994760682173707213.Spec : Prop :=
  ∀ n, P7994760682173707213.a n = A008647 n

end A008647

/-! ## A008647.P8877466284320959355

`A004526(2*A051274(n)-A004526(n))`
-/

namespace A008647.P8877466284320959355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A051274 n - A004526 n).toNat

end

end A008647.P8877466284320959355

namespace A008647

/-- `A004526(2*A051274(n)-A004526(n))` -/
def P8877466284320959355.Spec : Prop :=
  ∀ n, P8877466284320959355.a n = A008647 n

end A008647

/-! ## A008647.P1202078170597042764

`A051274(n)-A110654(n-A110654(n))`
-/

namespace A008647.P1202078170597042764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 n - A110654 ((n : ℤ) - A110654 n).toNat

end

end A008647.P1202078170597042764

namespace A008647

/-- `A051274(n)-A110654(n-A110654(n))` -/
def P1202078170597042764.Spec : Prop :=
  ∀ n, P1202078170597042764.a n = A008647 n

end A008647

/-!
# A008648: Molien series of 3 X 3 upper triangular matrices over GF( 5 ).

The programs for A008648, the canonical program `A008648.P3776347205229433194` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008648 has offset 0).

The definition of A008648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008648.P3776347205229433194

`A008732(floor(n/5))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008648

/-- `A008732(floor(n/5))` -/
def P3776347205229433194.Spec : Prop :=
  ∀ n, P3776347205229433194.a n = A008648 n

theorem P3776347205229433194.correct : P3776347205229433194.Spec := by
  intro n
  simp only [A008648]

end A008648

/-! ## A008648.P2643321031556461571

`ceil(A027379(ceil((n+1)/5))/5)`
-/

namespace A008648.P2643321031556461571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027379 ⌈(n + 1 : ℚ) / 5⌉.toNat : ℚ) / 5⌉

end

end A008648.P2643321031556461571

namespace A008648

/-- `ceil(A027379(ceil((n+1)/5))/5)` -/
def P2643321031556461571.Spec : Prop :=
  ∀ n, P2643321031556461571.a n = A008648 n

end A008648

/-! ## A008648.P8749005693989246821

`ceil(A055998(ceil((n+1)/5))/5)`
-/

namespace A008648.P8749005693989246821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055998 ⌈(n + 1 : ℚ) / 5⌉.toNat : ℚ) / 5⌉

end

end A008648.P8749005693989246821

namespace A008648

/-- `ceil(A055998(ceil((n+1)/5))/5)` -/
def P8749005693989246821.Spec : Prop :=
  ∀ n, P8749005693989246821.a n = A008648 n

end A008648

/-! ## A008648.P13364308542671602729

`ceil((A046691(ceil((n+1)/5))+1)/5)`
-/

namespace A008648.P13364308542671602729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046691 ⌈(n + 1 : ℚ) / 5⌉.toNat + 1 : ℚ) / 5⌉

end

end A008648.P13364308542671602729

namespace A008648

/-- `ceil((A046691(ceil((n+1)/5))+1)/5)` -/
def P13364308542671602729.Spec : Prop :=
  ∀ n, P13364308542671602729.a n = A008648 n

end A008648

/-! ## A008648.P9021907830625510010

`floor(A000217(floor((n+5)/5)+2)/5)`
-/

namespace A008648.P9021907830625510010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (⌊(n + 5 : ℚ) / 5⌋ + 2).toNat : ℚ) / 5⌋

end

end A008648.P9021907830625510010

namespace A008648

/-- `floor(A000217(floor((n+5)/5)+2)/5)` -/
def P9021907830625510010.Spec : Prop :=
  ∀ n, P9021907830625510010.a n = A008648 n

end A008648

/-! ## A008648.P7385101955267107498

`A008720(A130496(n))`
-/

namespace A008648.P7385101955267107498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (A130496 n).toNat

end

end A008648.P7385101955267107498

namespace A008648

/-- `A008720(A130496(n))` -/
def P7385101955267107498.Spec : Prop :=
  ∀ n, P7385101955267107498.a n = A008648 n

end A008648

/-! ## A008648.P14418657241570894367

`A008720(2*A002266(n))`
-/

namespace A008648.P14418657241570894367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (2 * A002266 n).toNat

end

end A008648.P14418657241570894367

namespace A008648

/-- `A008720(2*A002266(n))` -/
def P14418657241570894367.Spec : Prop :=
  ∀ n, P14418657241570894367.a n = A008648 n

end A008648

/-! ## A008648.P7541669521060293289

`A008803(2*A002266(n))`
-/

namespace A008648.P7541669521060293289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008803 (2 * A002266 n).toNat

end

end A008648.P7541669521060293289

namespace A008648

/-- `A008803(2*A002266(n))` -/
def P7541669521060293289.Spec : Prop :=
  ∀ n, P7541669521060293289.a n = A008648 n

end A008648

/-! ## A008648.P9690370269842034282

`A130520(A002266(n)+5)`
-/

namespace A008648.P9690370269842034282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (A002266 n + 5).toNat

end

end A008648.P9690370269842034282

namespace A008648

/-- `A130520(A002266(n)+5)` -/
def P9690370269842034282.Spec : Prop :=
  ∀ n, P9690370269842034282.a n = A008648 n

end A008648

/-! ## A008648.P4236681808689812056

`A130520(A137936(1-A010874(n)+n))`
-/

namespace A008648.P4236681808689812056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (A137936 (1 - A010874 n + (n : ℤ)).toNat).toNat

end

end A008648.P4236681808689812056

namespace A008648

/-- `A130520(A137936(1-A010874(n)+n))` -/
def P4236681808689812056.Spec : Prop :=
  ∀ n, P4236681808689812056.a n = A008648 n

end A008648

/-! ## A008648.P10872751192012723261

`A130520(Δ[A130520(n+4)]+4)`
-/

namespace A008648.P10872751192012723261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (f1 (n + 1) - f1 n + 4).toNat

end

end A008648.P10872751192012723261

namespace A008648

/-- `A130520(Δ[A130520(n+4)]+4)` -/
def P10872751192012723261.Spec : Prop :=
  ∀ n, P10872751192012723261.a n = A008648 n

end A008648

/-!
# A008649: Molien series of 3 X 3 upper triangular matrices over GF( 3 ).

The programs for A008649, the canonical program `A008649.P9304805001018961615` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008649 has offset 0).

The definition of A008649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008649.P1908973921752355459

`A001840(∑[char[3*n]])`
-/

namespace A008649.P1908973921752355459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008649.P1908973921752355459

namespace A008649

/-- `A001840(∑[char[3*n]])` -/
def P1908973921752355459.Spec : Prop :=
  ∀ n, P1908973921752355459.a n = A008649 n

end A008649

/-! ## A008649.P11559128772800654288

`A211004(∑[char[3*n]])`
-/

namespace A008649.P11559128772800654288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211004 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008649.P11559128772800654288

namespace A008649

/-- `A211004(∑[char[3*n]])` -/
def P11559128772800654288.Spec : Prop :=
  ∀ n, P11559128772800654288.a n = A008649 n

end A008649

/-! ## A008649.P9304805001018961615

`floor(A000217(floor((n+3)/3)+1)/3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008649

/-- `floor(A000217(floor((n+3)/3)+1)/3)` -/
def P9304805001018961615.Spec : Prop :=
  ∀ n, P9304805001018961615.a n = A008649 n

theorem P9304805001018961615.correct : P9304805001018961615.Spec := by
  intro n
  simp only [A008649]

end A008649

/-! ## A008649.P7080145445646309832

`A025767(2*(∑[char[3*n]]-1)+1)`
-/

namespace A008649.P7080145445646309832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) + 1).toNat

end

end A008649.P7080145445646309832

namespace A008649

/-- `A025767(2*(∑[char[3*n]]-1)+1)` -/
def P7080145445646309832.Spec : Prop :=
  ∀ n, P7080145445646309832.a n = A008649 n

end A008649

/-! ## A008649.P12969563310576064324

`A008731(2*A002264(n))`
-/

namespace A008649.P12969563310576064324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 (2 * A002264 n).toNat

end

end A008649.P12969563310576064324

namespace A008649

/-- `A008731(2*A002264(n))` -/
def P12969563310576064324.Spec : Prop :=
  ∀ n, P12969563310576064324.a n = A008649 n

end A008649

/-! ## A008649.P18317221123727208779

`A008748(A008620(n)+1)-1`
-/

namespace A008649.P18317221123727208779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 (A008620 n + 1).toNat - 1

end

end A008649.P18317221123727208779

namespace A008649

/-- `A008748(A008620(n)+1)-1` -/
def P18317221123727208779.Spec : Prop :=
  ∀ n, P18317221123727208779.a n = A008649 n

end A008649

/-! ## A008649.P15009236995439936553

`A008748(A002264(n)+2)-1`
-/

namespace A008649.P15009236995439936553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 (A002264 n + 2).toNat - 1

end

end A008649.P15009236995439936553

namespace A008649

/-- `A008748(A002264(n)+2)-1` -/
def P15009236995439936553.Spec : Prop :=
  ∀ n, P15009236995439936553.a n = A008649 n

end A008649

/-! ## A008649.P12980273573621800841

`A309683(A066481(n+3)+1)`
-/

namespace A008649.P12980273573621800841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (A066481 (n + 3) + 1).toNat

end

end A008649.P12980273573621800841

namespace A008649

/-- `A309683(A066481(n+3)+1)` -/
def P12980273573621800841.Spec : Prop :=
  ∀ n, P12980273573621800841.a n = A008649 n

end A008649

/-! ## A008649.P17413952217365976562

`A008731(n-A008611(n+1))`
-/

namespace A008649.P17413952217365976562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 ((n : ℤ) - A008611 (n + 1)).toNat

end

end A008649.P17413952217365976562

namespace A008649

/-- `A008731(n-A008611(n+1))` -/
def P17413952217365976562.Spec : Prop :=
  ∀ n, P17413952217365976562.a n = A008649 n

end A008649

/-! ## A008649.P11474497546763335092

`A008799(n-A008611(n+1))`
-/

namespace A008649.P11474497546763335092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008799 ((n : ℤ) - A008611 (n + 1)).toNat

end

end A008649.P11474497546763335092

namespace A008649

/-- `A008799(n-A008611(n+1))` -/
def P11474497546763335092.Spec : Prop :=
  ∀ n, P11474497546763335092.a n = A008649 n

end A008649

/-! ## A008649.P11634445635487914256

`A114209(n+2-A008611(n+1))`
-/

namespace A008649.P11634445635487914256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 ((n + 2 : ℤ) - A008611 (n + 1)).toNat

end

end A008649.P11634445635487914256

namespace A008649

/-- `A114209(n+2-A008611(n+1))` -/
def P11634445635487914256.Spec : Prop :=
  ∀ n, P11634445635487914256.a n = A008649 n

end A008649

/-! ## A008649.P8125467919863302258

`A008731(A002264(n)+A002264(n))`
-/

namespace A008649.P8125467919863302258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 (A002264 n + A002264 n).toNat

end

end A008649.P8125467919863302258

namespace A008649

/-- `A008731(A002264(n)+A002264(n))` -/
def P8125467919863302258.Spec : Prop :=
  ∀ n, P8125467919863302258.a n = A008649 n

end A008649

/-! ## A008649.P7411601786452306262

`A114209(A302402(n+1))`
-/

namespace A008649.P7411601786452306262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (A302402 (n + 1)).toNat

end

end A008649.P7411601786452306262

namespace A008649

/-- `A114209(A302402(n+1))` -/
def P7411601786452306262.Spec : Prop :=
  ∀ n, P7411601786452306262.a n = A008649 n

end A008649

/-! ## A008649.P1031995887816132696

`A309683(A066481(n+4))`
-/

namespace A008649.P1031995887816132696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (A066481 (n + 4)).toNat

end

end A008649.P1031995887816132696

namespace A008649

/-- `A309683(A066481(n+4))` -/
def P1031995887816132696.Spec : Prop :=
  ∀ n, P1031995887816132696.a n = A008649 n

end A008649

/-! ## A008649.P4733957198253357237

`A025765(n+1)-A025798(n+1)`
-/

namespace A008649.P4733957198253357237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025765 (n + 1) - A025798 (n + 1)

end

end A008649.P4733957198253357237

namespace A008649

/-- `A025765(n+1)-A025798(n+1)` -/
def P4733957198253357237.Spec : Prop :=
  ∀ n, P4733957198253357237.a n = A008649 n

end A008649

/-! ## A008649.P3352926178226913124

`A001840(A008620(n))%A087811(n+2)`
-/

namespace A008649.P3352926178226913124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001840 (A008620 n).toNat) (A087811 (n + 2))

end

end A008649.P3352926178226913124

namespace A008649

/-- `A001840(A008620(n))%A087811(n+2)` -/
def P3352926178226913124.Spec : Prop :=
  ∀ n, P3352926178226913124.a n = A008649 n

end A008649

/-! ## A008649.P10056888086373189075

`A114209(A008611(2*n)+1)`
-/

namespace A008649.P10056888086373189075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (A008611 (2 * n) + 1).toNat

end

end A008649.P10056888086373189075

namespace A008649

/-- `A114209(A008611(2*n)+1)` -/
def P10056888086373189075.Spec : Prop :=
  ∀ n, P10056888086373189075.a n = A008649 n

end A008649

/-! ## A008649.P1332221071504355689

`A008731(A008611(2*n)-1)`
-/

namespace A008649.P1332221071504355689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 (A008611 (2 * n) - 1).toNat

end

end A008649.P1332221071504355689

namespace A008649

/-- `A008731(A008611(2*n)-1)` -/
def P1332221071504355689.Spec : Prop :=
  ∀ n, P1332221071504355689.a n = A008649 n

end A008649

/-!
# A008651: Molien series of binary icosahedral group.

The programs for A008651, the canonical program `A008651.P17575682284106551936` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008651 has offset 0).

The definition of A008651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008651.P16526395871414056855

`∑[∑{p}[n, round(e/#)]]+1-n`
-/

namespace A008651.P16526395871414056855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.exp 1 / (p : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n : ℤ))

end

end A008651.P16526395871414056855

namespace A008651

/-- `∑[∑{p}[n, round(e/#)]]+1-n` -/
def P16526395871414056855.Spec : Prop :=
  ∀ n, P16526395871414056855.a n = A008651 n

end A008651

/-! ## A008651.P16305306240099768297

`1-(n-∑[∑{p}[n, round(e/#)]])`
-/

namespace A008651.P16305306240099768297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.exp 1 / (p : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008651.P16305306240099768297

namespace A008651

/-- `1-(n-∑[∑{p}[n, round(e/#)]])` -/
def P16305306240099768297.Spec : Prop :=
  ∀ n, P16305306240099768297.a n = A008651 n

end A008651

/-! ## A008651.P2808786854884750308

`A106006(n)+1-n`
-/

namespace A008651.P2808786854884750308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106006 n + (1 - (n : ℤ))

end

end A008651.P2808786854884750308

namespace A008651

/-- `A106006(n)+1-n` -/
def P2808786854884750308.Spec : Prop :=
  ∀ n, P2808786854884750308.a n = A008651 n

end A008651

/-! ## A008651.P17575682284106551936

`a(n-1)+A178146(n)-1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008651

/-- `a(n-1)+A178146(n)-1` -/
def P17575682284106551936.Spec : Prop :=
  ∀ n, P17575682284106551936.a n = A008651 n

theorem P17575682284106551936.correct : P17575682284106551936.Spec := by
  intro n
  simp only [A008651]

end A008651

/-! ## A008651.P535163384224525425

`A254011(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A008651.P535163384224525425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254011 (n - 1) - a (n - 1)

end

end A008651.P535163384224525425

namespace A008651

/-- `A254011(n-1)-a(n-1)` -/
def P535163384224525425.Spec : Prop :=
  ∀ n, P535163384224525425.a n = A008651 n

end A008651

/-! ## A008651.P17988554927115176001

`A002266(n)+1-A103221(n+1)`
-/

namespace A008651.P17988554927115176001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + 1 - A103221 (n + 1)

end

end A008651.P17988554927115176001

namespace A008651

/-- `A002266(n)+1-A103221(n+1)` -/
def P17988554927115176001.Spec : Prop :=
  ∀ n, P17988554927115176001.a n = A008651 n

end A008651

/-! ## A008651.P17009493941694167198

`1-n+A110532(n)+A002264(n)`
-/

namespace A008651.P17009493941694167198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) + (A110532 n + A002264 n)

end

end A008651.P17009493941694167198

namespace A008651

/-- `1-n+A110532(n)+A002264(n)` -/
def P17009493941694167198.Spec : Prop :=
  ∀ n, P17009493941694167198.a n = A008651 n

end A008651

/-! ## A008651.P11481669729122461483

`A047253(n+1)-(Δ[A001399(n)]+n)`
-/

namespace A008651.P11481669729122461483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1) - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A008651.P11481669729122461483

namespace A008651

/-- `A047253(n+1)-(Δ[A001399(n)]+n)` -/
def P11481669729122461483.Spec : Prop :=
  ∀ n, P11481669729122461483.a n = A008651 n

end A008651

/-! ## A008651.P16927762054729022196

`Δ[A369611(n)]`
-/

namespace A008651.P16927762054729022196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008651.P16927762054729022196

namespace A008651

/-- `Δ[A369611(n)]` -/
def P16927762054729022196.Spec : Prop :=
  ∀ n, P16927762054729022196.a n = A008651 n

end A008651

/-! ## A008651.P12349086859028227886

`A008616(n)-A008676(n+1)`
-/

namespace A008651.P12349086859028227886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n - A008676 (n + 1)

end

end A008651.P12349086859028227886

namespace A008651

/-- `A008616(n)-A008676(n+1)` -/
def P12349086859028227886.Spec : Prop :=
  ∀ n, P12349086859028227886.a n = A008651 n

end A008651

/-! ## A008651.P10449721087850325754

`A369611(n+1)-A369611(n)`
-/

namespace A008651.P10449721087850325754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369611 (n + 1) - A369611 n

end

end A008651.P10449721087850325754

namespace A008651

/-- `A369611(n+1)-A369611(n)` -/
def P10449721087850325754.Spec : Prop :=
  ∀ n, P10449721087850325754.a n = A008651 n

end A008651

/-! ## A008651.P8495922113752142385

`A103221(n+2)-A165640(n+2)`
-/

namespace A008651.P8495922113752142385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 2) - A165640 (n + 2)

end

end A008651.P8495922113752142385

namespace A008651

/-- `A103221(n+2)-A165640(n+2)` -/
def P8495922113752142385.Spec : Prop :=
  ∀ n, P8495922113752142385.a n = A008651 n

end A008651

/-! ## A008651.P16503682855974343686

`A002266(n)+A008620(n)-A004526(n+1)`
-/

namespace A008651.P16503682855974343686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + (A008620 n - A004526 (n + 1))

end

end A008651.P16503682855974343686

namespace A008651

/-- `A002266(n)+A008620(n)-A004526(n+1)` -/
def P16503682855974343686.Spec : Prop :=
  ∀ n, P16503682855974343686.a n = A008651 n

end A008651

/-! ## A008651.P5756509763775513857

`A103221(A047253(n+2))-A103221(n+1)`
-/

namespace A008651.P5756509763775513857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A047253 (n + 2)).toNat - A103221 (n + 1)

end

end A008651.P5756509763775513857

namespace A008651

/-- `A103221(A047253(n+2))-A103221(n+1)` -/
def P5756509763775513857.Spec : Prop :=
  ∀ n, P5756509763775513857.a n = A008651 n

end A008651

/-! ## A008651.P6707069462441130185

`A008672(n)-A008680(2*(n+1))`
-/

namespace A008651.P6707069462441130185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 n - A008680 (2 * (n + 1))

end

end A008651.P6707069462441130185

namespace A008651

/-- `A008672(n)-A008680(2*(n+1))` -/
def P6707069462441130185.Spec : Prop :=
  ∀ n, P6707069462441130185.a n = A008651 n

end A008651

/-! ## A008651.P1616360572057492080

`A008616(2*n)-A103221(n+1)`
-/

namespace A008651.P1616360572057492080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n) - A103221 (n + 1)

end

end A008651.P1616360572057492080

namespace A008651

/-- `A008616(2*n)-A103221(n+1)` -/
def P1616360572057492080.Spec : Prop :=
  ∀ n, P1616360572057492080.a n = A008651 n

end A008651

/-! ## A008651.P8734134054644168899

`A008616(2*n)-A008615(n+3)`
-/

namespace A008651.P8734134054644168899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n) - A008615 (n + 3)

end

end A008651.P8734134054644168899

namespace A008651

/-- `A008616(2*n)-A008615(n+3)` -/
def P8734134054644168899.Spec : Prop :=
  ∀ n, P8734134054644168899.a n = A008651 n

end A008651

/-! ## A008651.P11801759428148889208

`A103221(n)-A008676(2*(n+1))`
-/

namespace A008651.P11801759428148889208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A008676 (2 * (n + 1))

end

end A008651.P11801759428148889208

namespace A008651

/-- `A103221(n)-A008676(2*(n+1))` -/
def P11801759428148889208.Spec : Prop :=
  ∀ n, P11801759428148889208.a n = A008651 n

end A008651

/-! ## A008651.P3877050541538351231

`Δ[A008667(2*n+1)-A008667(2*n)]`
-/

namespace A008651.P3877050541538351231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (2 * n + 1) - A008667 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008651.P3877050541538351231

namespace A008651

/-- `Δ[A008667(2*n+1)-A008667(2*n)]` -/
def P3877050541538351231.Spec : Prop :=
  ∀ n, P3877050541538351231.a n = A008651 n

end A008651

/-! ## A008651.P15522130452681990014

`A008680(2*n+3)-A008680(2*(n+1))`
-/

namespace A008651.P15522130452681990014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (2 * n + 3) - A008680 (2 * (n + 1))

end

end A008651.P15522130452681990014

namespace A008651

/-- `A008680(2*n+3)-A008680(2*(n+1))` -/
def P15522130452681990014.Spec : Prop :=
  ∀ n, P15522130452681990014.a n = A008651 n

end A008651

/-!
# A008652: Molien series for group of 3 X 3 upper triangular matrices over GF( 4 ).

The programs for A008652, the canonical program `A008652.P12912003826069172230` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008652 has offset 0).

The definition of A008652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008652.P12912003826069172230

`floor((floor(n/4)+3)²/8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008652

/-- `floor((floor(n/4)+3)²/8)` -/
def P12912003826069172230.Spec : Prop :=
  ∀ n, P12912003826069172230.a n = A008652 n

theorem P12912003826069172230.correct : P12912003826069172230.Spec := by
  intro n
  simp only [A008652]

end A008652

/-! ## A008652.P10661642687782419412

`A001972(floor(n/4))`
-/

namespace A008652.P10661642687782419412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 ⌊(n : ℚ) / 4⌋.toNat

end

end A008652.P10661642687782419412

namespace A008652

/-- `A001972(floor(n/4))` -/
def P10661642687782419412.Spec : Prop :=
  ∀ n, P10661642687782419412.a n = A008652 n

end A008652

/-! ## A008652.P16255030311991047011

`A008734(A122461(n))`
-/

namespace A008652.P16255030311991047011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008734 (A122461 n).toNat

end

end A008652.P16255030311991047011

namespace A008652

/-- `A008734(A122461(n))` -/
def P16255030311991047011.Spec : Prop :=
  ∀ n, P16255030311991047011.a n = A008652 n

end A008652

/-! ## A008652.P5777562009853628994

`A130519(A002265(n)+4)`
-/

namespace A008652.P5777562009853628994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A002265 n + 4).toNat

end

end A008652.P5777562009853628994

namespace A008652

/-- `A130519(A002265(n)+4)` -/
def P5777562009853628994.Spec : Prop :=
  ∀ n, P5777562009853628994.a n = A008652 n

end A008652

/-! ## A008652.P3366496497605705332

`A008734(A047247(n+1)-(n+2))`
-/

namespace A008652.P3366496497605705332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008734 (A047247 (n + 1) - (n + 2 : ℤ)).toNat

end

end A008652.P3366496497605705332

namespace A008652

/-- `A008734(A047247(n+1)-(n+2))` -/
def P3366496497605705332.Spec : Prop :=
  ∀ n, P3366496497605705332.a n = A008652 n

end A008652

/-! ## A008652.P10219254619637845532

`A130519(A008621(n)-1)+A008621(n)`
-/

namespace A008652.P10219254619637845532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A008621 n - 1).toNat + A008621 n

end

end A008652.P10219254619637845532

namespace A008652

/-- `A130519(A008621(n)-1)+A008621(n)` -/
def P10219254619637845532.Spec : Prop :=
  ∀ n, P10219254619637845532.a n = A008652 n

end A008652

/-! ## A008652.P1384896184202537072

`A001972(A008621(n))-A008621(A008621(n))`
-/

namespace A008652.P1384896184202537072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (A008621 n).toNat - A008621 (A008621 n).toNat

end

end A008652.P1384896184202537072

namespace A008652

/-- `A001972(A008621(n))-A008621(A008621(n))` -/
def P1384896184202537072.Spec : Prop :=
  ∀ n, P1384896184202537072.a n = A008652 n

end A008652

/-! ## A008652.P11517515729988507080

`A130519(A274047(n+10)-1)`
-/

namespace A008652.P11517515729988507080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A274047 (n + 10) - 1).toNat

end

end A008652.P11517515729988507080

namespace A008652

/-- `A130519(A274047(n+10)-1)` -/
def P11517515729988507080.Spec : Prop :=
  ∀ n, P11517515729988507080.a n = A008652 n

end A008652

/-! ## A008652.P13255131304044883729

`A025842(A168237(n))`
-/

namespace A008652.P13255131304044883729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 (A168237 n).toNat

end

end A008652.P13255131304044883729

namespace A008652

/-- `A025842(A168237(n))` -/
def P13255131304044883729.Spec : Prop :=
  ∀ n, P13255131304044883729.a n = A008652 n

end A008652

/-! ## A008652.P11617364734075938481

`∑[A110656(Δ[A110656(2*n)²])]`
-/

namespace A008652.P11617364734075938481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008652.P11617364734075938481

namespace A008652

/-- `∑[A110656(Δ[A110656(2*n)²])]` -/
def P11617364734075938481.Spec : Prop :=
  ∀ n, P11617364734075938481.a n = A008652 n

end A008652

/-! ## A008652.P13167524145843978267

`A025888(A168209(n+2))`
-/

namespace A008652.P13167524145843978267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 (A168209 (n + 2)).toNat

end

end A008652.P13167524145843978267

namespace A008652

/-- `A025888(A168209(n+2))` -/
def P13167524145843978267.Spec : Prop :=
  ∀ n, P13167524145843978267.a n = A008652 n

end A008652

/-! ## A008652.P15583287709385437206

`A259549(A092532(n))`
-/

namespace A008652.P15583287709385437206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259549 (A092532 n).toNat

end

end A008652.P15583287709385437206

namespace A008652

/-- `A259549(A092532(n))` -/
def P15583287709385437206.Spec : Prop :=
  ∀ n, P15583287709385437206.a n = A008652 n

end A008652

/-! ## A008652.P3253955811140173727

`A110656(A008621(n)²+1+n)`
-/

namespace A008652.P3253955811140173727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A008621 n ^ 2 + 1 + (n : ℤ)).toNat

end

end A008652.P3253955811140173727

namespace A008652

/-- `A110656(A008621(n)²+1+n)` -/
def P3253955811140173727.Spec : Prop :=
  ∀ n, P3253955811140173727.a n = A008652 n

end A008652

/-! ## A008652.P15847517750081567671

`A110656(A110655(n+1)²+n+1)`
-/

namespace A008652.P15847517750081567671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A110655 (n + 1) ^ 2 + (n + 1 : ℤ)).toNat

end

end A008652.P15847517750081567671

namespace A008652

/-- `A110656(A110655(n+1)²+n+1)` -/
def P15847517750081567671.Spec : Prop :=
  ∀ n, P15847517750081567671.a n = A008652 n

end A008652

/-! ## A008652.P1186389568912557423

`A110656(n+1+A110656(2*(n+1))²)`
-/

namespace A008652.P1186389568912557423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 ((n + 1 : ℤ) + A110656 (2 * (n + 1)) ^ 2).toNat

end

end A008652.P1186389568912557423

namespace A008652

/-- `A110656(n+1+A110656(2*(n+1))²)` -/
def P1186389568912557423.Spec : Prop :=
  ∀ n, P1186389568912557423.a n = A008652 n

end A008652

/-! ## A008652.P7065042573255479708

`A110656(A000290(A008621(n))+n+1)`
-/

namespace A008652.P7065042573255479708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A000290 (A008621 n).toNat + (n + 1 : ℤ)).toNat

end

end A008652.P7065042573255479708

namespace A008652

/-- `A110656(A000290(A008621(n))+n+1)` -/
def P7065042573255479708.Spec : Prop :=
  ∀ n, P7065042573255479708.a n = A008652 n

end A008652

/-! ## A008652.P2373524934180045573

`A110656(A000290(A110655(n+1))+n+1)`
-/

namespace A008652.P2373524934180045573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A000290 (A110655 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A008652.P2373524934180045573

namespace A008652

/-- `A110656(A000290(A110655(n+1))+n+1)` -/
def P2373524934180045573.Spec : Prop :=
  ∀ n, P2373524934180045573.a n = A008652 n

end A008652

/-!
# A008653: Theta series of direct sum of 2 copies of hexagonal lattice.

The programs for A008653, there is no canonical definition to state claims against.
-/

/-! ## A008653.P6710557637808887258

`abs(2^(n%3)*A263773(n))`
-/

namespace A008653.P6710557637808887258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ (n % 3) : ℤ) * A263773 n|

end

end A008653.P6710557637808887258

/-! ## A008653.P8171319726285545489

`A132954(n)*A263773(n)`
-/

namespace A008653.P8171319726285545489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A263773 n

end

end A008653.P8171319726285545489

/-! ## A008653.P17718842622765735799

`lcm(A096726(n), A186100(n))`
-/

namespace A008653.P17718842622765735799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096726 n) (A186100 n)

end

end A008653.P17718842622765735799

/-! ## A008653.P11503339531147492904

`2*A125514(n)-A131946(n)`
-/

namespace A008653.P11503339531147492904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125514 n - A131946 n

end

end A008653.P11503339531147492904

/-! ## A008653.P18119893578292695364

`A096726(3*n)`
-/

namespace A008653.P18119893578292695364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096726 (3 * n)

end

end A008653.P18119893578292695364

/-! ## A008653.P12440554749945278214

`A000027(A096726(lcm(3, n)))`
-/

namespace A008653.P12440554749945278214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A096726 (Nat.lcm 3 n)).toNat

end

end A008653.P12440554749945278214

/-! ## A008653.P16741048003111327917

`2*A131946(2*n)-A131946(n)`
-/

namespace A008653.P16741048003111327917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131946 (2 * n) - A131946 n

end

end A008653.P16741048003111327917

/-! ## A008653.P7494020948475709818

`(A125514(2*n)+A125514(n))/2`
-/

namespace A008653.P7494020948475709818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125514 (2 * n) + A125514 n : ℚ) / 2

end

end A008653.P7494020948475709818

/-! ## A008653.P7328065604245438918

`A242874(3*n)`
-/

namespace A008653.P7328065604245438918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242874 (3 * n)

end

end A008653.P7328065604245438918

/-! ## A008653.P14370058572268317334

`A281722(3*n)`
-/

namespace A008653.P14370058572268317334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281722 (3 * n)

end

end A008653.P14370058572268317334

/-! ## A008653.P13356833372520678709

`abs(A263773(3*n))`
-/

namespace A008653.P13356833372520678709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A263773 (3 * n)|

end

end A008653.P13356833372520678709

/-! ## A008653.P4684559078712543518

`lcm(A263773(3*n), A263773(n))`
-/

namespace A008653.P4684559078712543518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A263773 (3 * n)) (A263773 n)

end

end A008653.P4684559078712543518

/-! ## A008653.P2059308481270463481

`(A034896(2*n)+A034896(4*n))/2`
-/

namespace A008653.P2059308481270463481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 (2 * n) + A034896 (4 * n) : ℚ) / 2

end

end A008653.P2059308481270463481

/-! ## A008653.P11679884467641539275

`(A131946(2*n)+A131946(4*n))/2`
-/

namespace A008653.P11679884467641539275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131946 (2 * n) + A131946 (4 * n) : ℚ) / 2

end

end A008653.P11679884467641539275

/-! ## A008653.P14396352436784895445

`lcm(A230057(n), A242874(n))`
-/

namespace A008653.P14396352436784895445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A230057 n) (A242874 n)

end

end A008653.P14396352436784895445

/-! ## A008653.P14052672000590839385

`A033668(3*n)`
-/

namespace A008653.P14052672000590839385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033668 (3 * n)

end

end A008653.P14052672000590839385

/-! ## A008653.P13624913179645984534

`A282610(9*n)`
-/

namespace A008653.P13624913179645984534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282610 (9 * n)

end

end A008653.P13624913179645984534

/-! ## A008653.P12366328599327006238

`A205967(n)/A324969(n+1)`
-/

namespace A008653.P12366328599327006238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205967 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A008653.P12366328599327006238

/-! ## A008653.P7818231372642983139

`A008655(n)/A205968(n)*A205967(n)`
-/

namespace A008653.P7818231372642983139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008655 n : ℚ) / (A205968 n : ℚ) * (A205967 n : ℚ)

end

end A008653.P7818231372642983139

/-! ## A008653.P17415356616852853574

`A209447(n)/A215928(n)`
-/

namespace A008653.P17415356616852853574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209447 n : ℚ) / (A215928 n : ℚ)

end

end A008653.P17415356616852853574

/-!
# A008654: Theta series of direct sum of 3 copies of hexagonal lattice.

The programs for A008654, there is no canonical definition to state claims against.
-/

/-! ## A008654.P5788359189404525407

`A033724(8*n)`
-/

namespace A008654.P5788359189404525407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033724 (8 * n)

end

end A008654.P5788359189404525407

/-! ## A008654.P10939535712955579737

`A033724(A022144(n))-A000007(n)`
-/

namespace A008654.P10939535712955579737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033724 (A022144 n).toNat - A000007 n

end

end A008654.P10939535712955579737

/-! ## A008654.P8633757523453540957

`A033724(A022144(n))/A000038(n)!`
-/

namespace A008654.P8633757523453540957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033724 (A022144 n).toNat : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A008654.P8633757523453540957

/-! ## A008654.P13825910738589507313

`A033724(A022144(n))/gcd(2, A004273(n))`
-/

namespace A008654.P13825910738589507313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033724 (A022144 n).toNat : ℚ) / (Int.gcd 2 (A004273 n) : ℚ)

end

end A008654.P13825910738589507313

/-! ## A008654.P9956763862520478939

`A033724(A022144(n))-A260958(A004016(n))`
-/

namespace A008654.P9956763862520478939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033724 (A022144 n).toNat - A260958 (A004016 n).toNat

end

end A008654.P9956763862520478939

/-! ## A008654.P1984298423592665732

`2*A005129(n)-A231962(n)`
-/

namespace A008654.P1984298423592665732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005129 n - A231962 n

end

end A008654.P1984298423592665732

/-! ## A008654.P18321122445280592264

`A033724(A022144(n))-A080339((n+1)²)`
-/

namespace A008654.P18321122445280592264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033724 (A022144 n).toNat - A080339 ((n + 1) ^ 2)

end

end A008654.P18321122445280592264

/-!
# A008655: Theta series of direct sum of 4 copies of hexagonal lattice.

The programs for A008655, there is no canonical definition to state claims against.
-/

/-! ## A008655.P9523301974011560230

`A215711(n)+A198956(3*n)`
-/

namespace A008655.P9523301974011560230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215711 n + A198956 (3 * n)

end

end A008655.P9523301974011560230

/-! ## A008655.P15130156472057349557

`A205968(n)/A324969(n+1)`
-/

namespace A008655.P15130156472057349557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205968 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A008655.P15130156472057349557

/-! ## A008655.P5973461081647719326

`A205968(n)/A000045(A028310(n))`
-/

namespace A008655.P5973461081647719326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205968 n : ℚ) / (A000045 (A028310 n).toNat : ℚ)

end

end A008655.P5973461081647719326

/-! ## A008655.P7551670878456692042

`A008653(n)/A205967(n)*A205968(n)`
-/

namespace A008655.P7551670878456692042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A205967 n : ℚ) * (A205968 n : ℚ)

end

end A008655.P7551670878456692042

/-! ## A008655.P8921524386000110863

`A209448(n)/A215928(n)`
-/

namespace A008655.P8921524386000110863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209448 n : ℚ) / (A215928 n : ℚ)

end

end A008655.P8921524386000110863

/-! ## A008655.P8097942381559993679

`A008653(n)/A209447(n)*A209448(n)`
-/

namespace A008655.P8097942381559993679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A209447 n : ℚ) * (A209448 n : ℚ)

end

end A008655.P8097942381559993679

/-! ## A008655.P6109537935360821947

`A209448(n)/gcd(A000129(n), A209446(n))`
-/

namespace A008655.P6109537935360821947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209448 n : ℚ) / (Int.gcd (A000129 n) (A209446 n) : ℚ)

end

end A008655.P6109537935360821947

/-! ## A008655.P4505821264321041883

`A028593(4*4*n)`
-/

namespace A008655.P4505821264321041883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028593 (4 * (4 * n))

end

end A008655.P4505821264321041883

/-!
# A008657: Theta series of direct sum of 6 copies of hexagonal lattice.

The programs for A008657, there is no canonical definition to state claims against.
-/

/-! ## A008657.P15334419349117765208

`A004010(n)+36*A007332(n)`
-/

namespace A008657.P15334419349117765208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004010 n + 36 * A007332 n

end

end A008657.P15334419349117765208

/-! ## A008657.P17225545152687170776

`2*A320676(n)-A341305(n)`
-/

namespace A008657.P17225545152687170776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320676 n - A341305 n

end

end A008657.P17225545152687170776

/-!
# A008658: Theta series of direct sum of 2 copies of D_4 lattice in powers of q^2.

The programs for A008658, there is no canonical definition to state claims against.
-/

/-! ## A008658.P13581034664860444520

`2*A008427(n)-A035016(n)`
-/

namespace A008658.P13581034664860444520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008427 n - A035016 n

end

end A008658.P13581034664860444520

/-! ## A008658.P2285935908501005612

`(A035016(n)+A008430(n))/2`
-/

namespace A008658.P2285935908501005612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035016 n + A008430 n : ℚ) / 2

end

end A008658.P2285935908501005612

/-! ## A008658.P6129959055244000723

`A035016(n)+A007331(4*n)`
-/

namespace A008658.P6129959055244000723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035016 n + A007331 (4 * n)

end

end A008658.P6129959055244000723

/-! ## A008658.P899767930070673815

`A008430(n)-A007331(4*n)`
-/

namespace A008658.P899767930070673815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008430 n - A007331 (4 * n)

end

end A008658.P899767930070673815

/-! ## A008658.P12525085259894832674

`A000143(2*n)-A007331(4*n)`
-/

namespace A008658.P12525085259894832674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 (2 * n) - A007331 (4 * n)

end

end A008658.P12525085259894832674

/-!
# A008665: Theta series of direct sum of 2 copies of b.c.c. lattice.

The programs for A008665, there is no canonical definition to state claims against.
-/

/-! ## A008665.P14155648480073032147

`A008425(A026741(n))/4^(n%2)`
-/

namespace A008665.P14155648480073032147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008425 (A026741 n).toNat : ℚ) / (4 ^ (n % 2) : ℚ)

end

end A008665.P14155648480073032147

/-!
# A008666: Expansion of g.f.: 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^6)*(1-x^9)).

The programs for A008666, the canonical program `A008666.P3874170211819793513` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008666 has offset 0).

The definition of A008666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008666.P10936488128714134228

`A029274(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008666.P10936488128714134228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029274 n + a (n - 2)

end

end A008666.P10936488128714134228

namespace A008666

/-- `A029274(n)+a(n-2)` -/
def P10936488128714134228.Spec : Prop :=
  ∀ n, P10936488128714134228.a n = A008666 n

end A008666

/-! ## A008666.P3874170211819793513

`A029195(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A008666

/-- `A029195(n)+a(n-3)` -/
def P3874170211819793513.Spec : Prop :=
  ∀ n, P3874170211819793513.a n = A008666 n

theorem P3874170211819793513.correct : P3874170211819793513.Spec := by
  intro n
  simp only [A008666]

end A008666

/-! ## A008666.P2309026026912437372

`Δ[A008584(2*n+3)]`
-/

namespace A008666.P2309026026912437372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008666.P2309026026912437372

namespace A008666

/-- `Δ[A008584(2*n+3)]` -/
def P2309026026912437372.Spec : Prop :=
  ∀ n, P2309026026912437372.a n = A008666 n

end A008666

/-! ## A008666.P317126862950797016

`abs(Δ[A008584(A267872(n+1))])`
-/

namespace A008666.P317126862950797016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (A267872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A008666.P317126862950797016

namespace A008666

/-- `abs(Δ[A008584(A267872(n+1))])` -/
def P317126862950797016.Spec : Prop :=
  ∀ n, P317126862950797016.a n = A008666 n

end A008666

/-! ## A008666.P13441597108496923473

`Δ[A008584(A267872(n+1))]%∑[A051429(n)]`
-/

namespace A008666.P13441597108496923473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (A267872 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A008666.P13441597108496923473

namespace A008666

/-- `Δ[A008584(A267872(n+1))]%∑[A051429(n)]` -/
def P13441597108496923473.Spec : Prop :=
  ∀ n, P13441597108496923473.a n = A008666 n

end A008666

/-! ## A008666.P11362812986355477347

`Δ[A008584(A267872(n+1))]/A178334(∏{e}[n+1, #+1])`
-/

namespace A008666.P11362812986355477347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (A267872 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A178334 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℚ)

end

end A008666.P11362812986355477347

namespace A008666

/-- `Δ[A008584(A267872(n+1))]/A178334(∏{e}[n+1, #+1])` -/
def P11362812986355477347.Spec : Prop :=
  ∀ n, P11362812986355477347.a n = (A008666 n : ℚ)

end A008666

/-! ## A008666.P6012756292642342515

`Δ[A008584(A267872(n+1))]^A062760(A006530(n+1))`
-/

namespace A008666.P6012756292642342515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (A267872 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A062760 (A006530 (n + 1)).toNat : ℤ)

end

end A008666.P6012756292642342515

namespace A008666

/-- `Δ[A008584(A267872(n+1))]^A062760(A006530(n+1))` -/
def P6012756292642342515.Spec : Prop :=
  ∀ n, P6012756292642342515.a n = (A008666 n : ℚ)

end A008666

/-! ## A008666.P4321069050993785307

`Δ[A008584(A267872(n+1))]%A000032(n)`
-/

namespace A008666.P4321069050993785307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008584 (A267872 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000032 n)

end

end A008666.P4321069050993785307

namespace A008666

/-- `Δ[A008584(A267872(n+1))]%A000032(n)` -/
def P4321069050993785307.Spec : Prop :=
  ∀ n, P4321069050993785307.a n = A008666 n

end A008666

/-!
# A008667: Expansion of g.f.: 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^5)).

The programs for A008667, the canonical program `A008667.P8592292575514272009` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008667 has offset 0).

The definition of A008667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008667.P8592292575514272009

`A029032(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008667

/-- `A029032(n)-a(n-1)` -/
def P8592292575514272009.Spec : Prop :=
  ∀ n, P8592292575514272009.a n = A008667 n

theorem P8592292575514272009.correct : P8592292575514272009.Spec := by
  intro n
  simp only [A008667]

end A008667

/-! ## A008667.P7469956676753198264

`A008680(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008667.P7469956676753198264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008680 n + a (n - 2)

end

end A008667.P7469956676753198264

namespace A008667

/-- `A008680(n)+a(n-2)` -/
def P7469956676753198264.Spec : Prop :=
  ∀ n, P7469956676753198264.a n = A008667 n

end A008667

/-! ## A008667.P5779373016545250374

`A025802(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A008667.P5779373016545250374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025802 n + a (n - 3)

end

end A008667.P5779373016545250374

namespace A008667

/-- `A025802(n)+a(n-3)` -/
def P5779373016545250374.Spec : Prop :=
  ∀ n, P5779373016545250374.a n = A008667 n

end A008667

/-! ## A008667.P7526215559386087359

`A060024(n)+A026811(n)`
-/

namespace A008667.P7526215559386087359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060024 n + A026811 n

end

end A008667.P7526215559386087359

namespace A008667

/-- `A060024(n)+A026811(n)` -/
def P7526215559386087359.Spec : Prop :=
  ∀ n, P7526215559386087359.a n = A008667 n

end A008667

/-! ## A008667.P15834136709740213916

`A025795(n)+Δ[A026811(n)]`
-/

namespace A008667.P15834136709740213916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 n + (f1 (n + 1) - f1 n)

end

end A008667.P15834136709740213916

namespace A008667

/-- `A025795(n)+Δ[A026811(n)]` -/
def P15834136709740213916.Spec : Prop :=
  ∀ n, P15834136709740213916.a n = A008667 n

end A008667

/-! ## A008667.P15226523110080983578

`A060025(n)+A026812(A134824(n)+n)`
-/

namespace A008667.P15226523110080983578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060025 n + A026812 (A134824 n + (n : ℤ)).toNat

end

end A008667.P15226523110080983578

namespace A008667

/-- `A060025(n)+A026812(A134824(n)+n)` -/
def P15226523110080983578.Spec : Prop :=
  ∀ n, P15226523110080983578.a n = A008667 n

end A008667

/-! ## A008667.P1548199582305784109

`A029032(n+1)+A001401(n)-A001401(n+1)`
-/

namespace A008667.P1548199582305784109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029032 (n + 1) + (A001401 n - A001401 (n + 1))

end

end A008667.P1548199582305784109

namespace A008667

/-- `A029032(n+1)+A001401(n)-A001401(n+1)` -/
def P1548199582305784109.Spec : Prop :=
  ∀ n, P1548199582305784109.a n = A008667 n

end A008667

/-! ## A008667.P375079306742925830

`A008669(n+3)-A029007(n+3)`
-/

namespace A008667.P375079306742925830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 (n + 3) - A029007 (n + 3)

end

end A008667.P375079306742925830

namespace A008667

/-- `A008669(n+3)-A029007(n+3)` -/
def P375079306742925830.Spec : Prop :=
  ∀ n, P375079306742925830.a n = A008667 n

end A008667

/-! ## A008667.P11947731360693501918

`A001401(n)-A026811(n+4)`
-/

namespace A008667.P11947731360693501918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A026811 (n + 4)

end

end A008667.P11947731360693501918

namespace A008667

/-- `A001401(n)-A026811(n+4)` -/
def P11947731360693501918.Spec : Prop :=
  ∀ n, P11947731360693501918.a n = A008667 n

end A008667

/-! ## A008667.P4017636046165984510

`Δ[A026811(n+4)]`
-/

namespace A008667.P4017636046165984510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008667.P4017636046165984510

namespace A008667

/-- `Δ[A026811(n+4)]` -/
def P4017636046165984510.Spec : Prop :=
  ∀ n, P4017636046165984510.a n = A008667 n

end A008667

/-! ## A008667.P10587663942842584677

`A029162(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A008667.P10587663942842584677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029162 (2 * n) - a (n - 1)

end

end A008667.P10587663942842584677

namespace A008667

/-- `A029162(2*n)-a(n-1)` -/
def P10587663942842584677.Spec : Prop :=
  ∀ n, P10587663942842584677.a n = A008667 n

end A008667

/-! ## A008667.P8306507855491574718

`A029263(2*n)`
-/

namespace A008667.P8306507855491574718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029263 (2 * n)

end

end A008667.P8306507855491574718

namespace A008667

/-- `A029263(2*n)` -/
def P8306507855491574718.Spec : Prop :=
  ∀ n, P8306507855491574718.a n = A008667 n

end A008667

/-! ## A008667.P6963930151155905550

`A029327(2*n)`
-/

namespace A008667.P6963930151155905550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (2 * n)

end

end A008667.P6963930151155905550

namespace A008667

/-- `A029327(2*n)` -/
def P6963930151155905550.Spec : Prop :=
  ∀ n, P6963930151155905550.a n = A008667 n

end A008667

/-! ## A008667.P9207213002803825205

`A029099(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A008667.P9207213002803825205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029099 (2 * n) - a (n - 1)

end

end A008667.P9207213002803825205

namespace A008667

/-- `A029099(2*n)-a(n-1)` -/
def P9207213002803825205.Spec : Prop :=
  ∀ n, P9207213002803825205.a n = A008667 n

end A008667

/-! ## A008667.P2357150378063139430

`A029194(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A008667.P2357150378063139430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029194 (2 * n) - a (n - 1)

end

end A008667.P2357150378063139430

namespace A008667

/-- `A029194(2*n)-a(n-1)` -/
def P2357150378063139430.Spec : Prop :=
  ∀ n, P2357150378063139430.a n = A008667 n

end A008667

/-! ## A008667.P15860921008105303814

`A001400(n)-A029140(2*n+1)`
-/

namespace A008667.P15860921008105303814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A029140 (2 * n + 1)

end

end A008667.P15860921008105303814

namespace A008667

/-- `A001400(n)-A029140(2*n+1)` -/
def P15860921008105303814.Spec : Prop :=
  ∀ n, P15860921008105303814.a n = A008667 n

end A008667

/-! ## A008667.P7414485207894770489

`∑[A266755(n)]-A029140(2*n+1)`
-/

namespace A008667.P7414485207894770489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029140 (2 * n + 1)

end

end A008667.P7414485207894770489

namespace A008667

/-- `∑[A266755(n)]-A029140(2*n+1)` -/
def P7414485207894770489.Spec : Prop :=
  ∀ n, P7414485207894770489.a n = A008667 n

end A008667

/-! ## A008667.P7307069185847684830

`A029386(2*n)+A029331(2*n+1)`
-/

namespace A008667.P7307069185847684830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (2 * n) + A029331 (2 * n + 1)

end

end A008667.P7307069185847684830

namespace A008667

/-- `A029386(2*n)+A029331(2*n+1)` -/
def P7307069185847684830.Spec : Prop :=
  ∀ n, P7307069185847684830.a n = A008667 n

end A008667

/-! ## A008667.P7977214496181748390

`A029138(2*n)-A029140(2*n+1)`
-/

namespace A008667.P7977214496181748390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (2 * n) - A029140 (2 * n + 1)

end

end A008667.P7977214496181748390

namespace A008667

/-- `A029138(2*n)-A029140(2*n+1)` -/
def P7977214496181748390.Spec : Prop :=
  ∀ n, P7977214496181748390.a n = A008667 n

end A008667

/-! ## A008667.P10071403001034791544

`A025890(2*n)+∑[A025890(2*n+1)]`
-/

namespace A008667.P10071403001034791544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008667.P10071403001034791544

namespace A008667

/-- `A025890(2*n)+∑[A025890(2*n+1)]` -/
def P10071403001034791544.Spec : Prop :=
  ∀ n, P10071403001034791544.a n = A008667 n

end A008667

/-!
# A008668: Molien series for 4-dimensional reflection group [3,3,5] of order 14400.

The programs for A008668, the canonical program `A008668.P6497470992841632482` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008668 has offset 0).

The definition of A008668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008668.P6497470992841632482

`∑[A000217(A008651(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008668

/-- `∑[A000217(A008651(n))]` -/
def P6497470992841632482.Spec : Prop :=
  ∀ n, P6497470992841632482.a n = A008668 n

theorem P6497470992841632482.correct : P6497470992841632482.Spec := by
  intro n
  simp only [A008668]

end A008668

/-! ## A008668.P673537457628509494

`∑[A161680(A008651(n)+1)]`
-/

namespace A008668.P673537457628509494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A008651 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008668.P673537457628509494

namespace A008668

/-- `∑[A161680(A008651(n)+1)]` -/
def P673537457628509494.Spec : Prop :=
  ∀ n, P673537457628509494.a n = A008668 n

end A008668

/-! ## A008668.P153137773332953192

`∑[A004525(A008651(n)+A008651(n)²)]`
-/

namespace A008668.P153137773332953192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008651 n + A008651 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008668.P153137773332953192

namespace A008668

/-- `∑[A004525(A008651(n)+A008651(n)²)]` -/
def P153137773332953192.Spec : Prop :=
  ∀ n, P153137773332953192.a n = A008668 n

end A008668

/-! ## A008668.P10275090417400616124

`∑[A004526(A008651(n)+A008651(n)²)]`
-/

namespace A008668.P10275090417400616124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008651 n + A008651 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008668.P10275090417400616124

namespace A008668

/-- `∑[A004526(A008651(n)+A008651(n)²)]` -/
def P10275090417400616124.Spec : Prop :=
  ∀ n, P10275090417400616124.a n = A008668 n

end A008668

/-! ## A008668.P12054382187973260012

`∑[A026741(A008651(n)+A008651(n)²)]`
-/

namespace A008668.P12054382187973260012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008651 n + A008651 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008668.P12054382187973260012

namespace A008668

/-- `∑[A026741(A008651(n)+A008651(n)²)]` -/
def P12054382187973260012.Spec : Prop :=
  ∀ n, P12054382187973260012.a n = A008668 n

end A008668

/-! ## A008668.P16220088823188792200

`∑[A110654(A008651(n)+A008651(n)²)]`
-/

namespace A008668.P16220088823188792200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008651 n + A008651 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008668.P16220088823188792200

namespace A008668

/-- `∑[A110654(A008651(n)+A008651(n)²)]` -/
def P16220088823188792200.Spec : Prop :=
  ∀ n, P16220088823188792200.a n = A008668 n

end A008668

/-! ## A008668.P130798832915513702

`∑[A142150(A008651(n)+A008651(n)²)]`
-/

namespace A008668.P130798832915513702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A008651 n + A008651 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008668.P130798832915513702

namespace A008668

/-- `∑[A142150(A008651(n)+A008651(n)²)]` -/
def P130798832915513702.Spec : Prop :=
  ∀ n, P130798832915513702.a n = A008668 n

end A008668

/-! ## A008668.P5210695822079646072

`A004525(∑[A002378(A008651(n))])`
-/

namespace A008668.P5210695822079646072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A008651 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008668.P5210695822079646072

namespace A008668

/-- `A004525(∑[A002378(A008651(n))])` -/
def P5210695822079646072.Spec : Prop :=
  ∀ n, P5210695822079646072.a n = A008668 n

end A008668

/-! ## A008668.P13431381015761249760

`A004526(∑[A002378(A008651(n))])`
-/

namespace A008668.P13431381015761249760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A008651 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008668.P13431381015761249760

namespace A008668

/-- `A004526(∑[A002378(A008651(n))])` -/
def P13431381015761249760.Spec : Prop :=
  ∀ n, P13431381015761249760.a n = A008668 n

end A008668

/-! ## A008668.P14702690631845299346

`A026741(∑[A002378(A008651(n))])`
-/

namespace A008668.P14702690631845299346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A008651 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008668.P14702690631845299346

namespace A008668

/-- `A026741(∑[A002378(A008651(n))])` -/
def P14702690631845299346.Spec : Prop :=
  ∀ n, P14702690631845299346.a n = A008668 n

end A008668

/-! ## A008668.P4750358720615181253

`A110654(∑[A002378(A008651(n))])`
-/

namespace A008668.P4750358720615181253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A008651 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008668.P4750358720615181253

namespace A008668

/-- `A110654(∑[A002378(A008651(n))])` -/
def P4750358720615181253.Spec : Prop :=
  ∀ n, P4750358720615181253.a n = A008668 n

end A008668

/-! ## A008668.P8063425670413231559

`A142150(∑[A002378(A008651(n))])`
-/

namespace A008668.P8063425670413231559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A008651 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008668.P8063425670413231559

namespace A008668

/-- `A142150(∑[A002378(A008651(n))])` -/
def P8063425670413231559.Spec : Prop :=
  ∀ n, P8063425670413231559.a n = A008668 n

end A008668

/-!
# A008669: Molien series for 4-dimensional complex reflection group of order 7680 (in powers of x^4).

The programs for A008669, the canonical program `A008669.P8105318438204081762` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008669 has offset 0).

The definition of A008669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008669.P8105318438204081762

`round((n+3)*(2*n+9)*(n+9)/360)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008669

/-- `round((n+3)*(2*n+9)*(n+9)/360)` -/
def P8105318438204081762.Spec : Prop :=
  ∀ n, P8105318438204081762.a n = A008669 n

theorem P8105318438204081762.correct : P8105318438204081762.Spec := by
  intro n
  simp only [A008669]

end A008669

/-! ## A008669.P16107666234596461694

`∑[A025795(n)]`
-/

namespace A008669.P16107666234596461694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008669.P16107666234596461694

namespace A008669

/-- `∑[A025795(n)]` -/
def P16107666234596461694.Spec : Prop :=
  ∀ n, P16107666234596461694.a n = A008669 n

end A008669

/-! ## A008669.P8880797039973581998

`A008672(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008669.P8880797039973581998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008672 n + a (n - 2)

end

end A008669.P8880797039973581998

namespace A008669

/-- `A008672(n)+a(n-2)` -/
def P8880797039973581998.Spec : Prop :=
  ∀ n, P8880797039973581998.a n = A008669 n

end A008669

/-! ## A008669.P10601030010226245160

`A000115(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A008669.P10601030010226245160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000115 n + a (n - 3)

end

end A008669.P10601030010226245160

namespace A008669

/-- `A000115(n)+a(n-3)` -/
def P10601030010226245160.Spec : Prop :=
  ∀ n, P10601030010226245160.a n = A008669 n

end A008669

/-! ## A008669.P18436495963010779611

`A001401(n)-A026811(n+1)`
-/

namespace A008669.P18436495963010779611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A026811 (n + 1)

end

end A008669.P18436495963010779611

namespace A008669

/-- `A001401(n)-A026811(n+1)` -/
def P18436495963010779611.Spec : Prop :=
  ∀ n, P18436495963010779611.a n = A008669 n

end A008669

/-! ## A008669.P17476126437025851584

`A001400(n)+A026811(n)-A026811(n+1)`
-/

namespace A008669.P17476126437025851584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n + (A026811 n - A026811 (n + 1))

end

end A008669.P17476126437025851584

namespace A008669

/-- `A001400(n)+A026811(n)-A026811(n+1)` -/
def P17476126437025851584.Spec : Prop :=
  ∀ n, P17476126437025851584.a n = A008669 n

end A008669

/-! ## A008669.P16260076704726480371

`A001402(n)-(A026812(n)+A026811(n+1))`
-/

namespace A008669.P16260076704726480371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - (A026812 n + A026811 (n + 1))

end

end A008669.P16260076704726480371

namespace A008669

/-- `A001402(n)-(A026812(n)+A026811(n+1))` -/
def P16260076704726480371.Spec : Prop :=
  ∀ n, P16260076704726480371.a n = A008669 n

end A008669

/-! ## A008669.P14224933389238483591

`A001401(n)-(A026929(n+1)+A026925(n+1))`
-/

namespace A008669.P14224933389238483591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - (A026929 (n + 1) + A026925 (n + 1))

end

end A008669.P14224933389238483591

namespace A008669

/-- `A001401(n)-(A026929(n+1)+A026925(n+1))` -/
def P14224933389238483591.Spec : Prop :=
  ∀ n, P14224933389238483591.a n = A008669 n

end A008669

/-! ## A008669.P12702803741707494473

`A001400(n+1)-A008667(n+1)`
-/

namespace A008669.P12702803741707494473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 1) - A008667 (n + 1)

end

end A008669.P12702803741707494473

namespace A008669

/-- `A001400(n+1)-A008667(n+1)` -/
def P12702803741707494473.Spec : Prop :=
  ∀ n, P12702803741707494473.a n = A008669 n

end A008669

/-! ## A008669.P1112721525949995536

`A001400(n+1)+A001401(n)-A001401(n+1)`
-/

namespace A008669.P1112721525949995536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 1) + (A001401 n - A001401 (n + 1))

end

end A008669.P1112721525949995536

namespace A008669

/-- `A001400(n+1)+A001401(n)-A001401(n+1)` -/
def P1112721525949995536.Spec : Prop :=
  ∀ n, P1112721525949995536.a n = A008669 n

end A008669

/-! ## A008669.P3682607952009098580

`A029032(n+1)+A029032(n)-A025772(n+1)`
-/

namespace A008669.P3682607952009098580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029032 (n + 1) + (A029032 n - A025772 (n + 1))

end

end A008669.P3682607952009098580

namespace A008669

/-- `A029032(n+1)+A029032(n)-A025772(n+1)` -/
def P3682607952009098580.Spec : Prop :=
  ∀ n, P3682607952009098580.a n = A008669 n

end A008669

/-! ## A008669.P3490150882260875520

`A029055(2*n)`
-/

namespace A008669.P3490150882260875520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029055 (2 * n)

end

end A008669.P3490150882260875520

namespace A008669

/-- `A029055(2*n)` -/
def P3490150882260875520.Spec : Prop :=
  ∀ n, P3490150882260875520.a n = A008669 n

end A008669

/-! ## A008669.P10758401325820636127

`A029069(2*n)`
-/

namespace A008669.P10758401325820636127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029069 (2 * n)

end

end A008669.P10758401325820636127

namespace A008669

/-- `A029069(2*n)` -/
def P10758401325820636127.Spec : Prop :=
  ∀ n, P10758401325820636127.a n = A008669 n

end A008669

/-! ## A008669.P6233304906677615059

`A029140(2*n)`
-/

namespace A008669.P6233304906677615059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 (2 * n)

end

end A008669.P6233304906677615059

namespace A008669

/-- `A029140(2*n)` -/
def P6233304906677615059.Spec : Prop :=
  ∀ n, P6233304906677615059.a n = A008669 n

end A008669

/-! ## A008669.P10544518949154139986

`A029171(2*n)`
-/

namespace A008669.P10544518949154139986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029171 (2 * n)

end

end A008669.P10544518949154139986

namespace A008669

/-- `A029171(2*n)` -/
def P10544518949154139986.Spec : Prop :=
  ∀ n, P10544518949154139986.a n = A008669 n

end A008669

/-! ## A008669.P2686623931408944785

`A097852(2*n)`
-/

namespace A008669.P2686623931408944785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097852 (2 * n)

end

end A008669.P2686623931408944785

namespace A008669

/-- `A097852(2*n)` -/
def P2686623931408944785.Spec : Prop :=
  ∀ n, P2686623931408944785.a n = A008669 n

end A008669

/-! ## A008669.P9370395051302656798

`A029086(Δ[n²])`
-/

namespace A008669.P9370395051302656798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029086 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A008669.P9370395051302656798

namespace A008669

/-- `A029086(Δ[n²])` -/
def P9370395051302656798.Spec : Prop :=
  ∀ n, P9370395051302656798.a n = A008669 n

end A008669

/-! ## A008669.P13613773492347069970

`∑[A008682(2*n)]`
-/

namespace A008669.P13613773492347069970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008669.P13613773492347069970

namespace A008669

/-- `∑[A008682(2*n)]` -/
def P13613773492347069970.Spec : Prop :=
  ∀ n, P13613773492347069970.a n = A008669 n

end A008669

/-! ## A008669.P514571225775270

`∑[A025832(2*n)]`
-/

namespace A008669.P514571225775270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025832 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008669.P514571225775270

namespace A008669

/-- `∑[A025832(2*n)]` -/
def P514571225775270.Spec : Prop :=
  ∀ n, P514571225775270.a n = A008669 n

end A008669

/-! ## A008669.P2359063217423747912

`A029016(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A008669.P2359063217423747912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029016 (2 * n) - a (n - 1)

end

end A008669.P2359063217423747912

namespace A008669

/-- `A029016(2*n)-a(n-1)` -/
def P2359063217423747912.Spec : Prop :=
  ∀ n, P2359063217423747912.a n = A008669 n

end A008669

/-!
# A008670: Molien series for Weyl group F_4.

The programs for A008670, the canonical program `A008670.P3248543210677387405` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008670 has offset 0).

The definition of A008670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008670.P13030221952855111425

`∑[A025828(n)]`
-/

namespace A008670.P13030221952855111425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008670.P13030221952855111425

namespace A008670

/-- `∑[A025828(n)]` -/
def P13030221952855111425.Spec : Prop :=
  ∀ n, P13030221952855111425.a n = A008670 n

end A008670

/-! ## A008670.P3213223972486985553

`A029000(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008670.P3213223972486985553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029000 n - a (n - 2)

end

end A008670.P3213223972486985553

namespace A008670

/-- `A029000(n)-a(n-2)` -/
def P3213223972486985553.Spec : Prop :=
  ∀ n, P3213223972486985553.a n = A008670 n

end A008670

/-! ## A008670.P3248543210677387405

`∑[A307018(A052938(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008670

/-- `∑[A307018(A052938(n+1))]` -/
def P3248543210677387405.Spec : Prop :=
  ∀ n, P3248543210677387405.a n = A008670 n

theorem P3248543210677387405.correct : P3248543210677387405.Spec := by
  intro n
  simp only [A008670]

end A008670

/-! ## A008670.P1803399488199471785

`∑[A307018(A028242(n)+2)]`
-/

namespace A008670.P1803399488199471785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A028242 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008670.P1803399488199471785

namespace A008670

/-- `∑[A307018(A028242(n)+2)]` -/
def P1803399488199471785.Spec : Prop :=
  ∀ n, P1803399488199471785.a n = A008670 n

end A008670

/-! ## A008670.P11448277061740603107

`∑[A024165(n+1)+A008612(n)]`
-/

namespace A008670.P11448277061740603107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (n + 1) + A008612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008670.P11448277061740603107

namespace A008670

/-- `∑[A024165(n+1)+A008612(n)]` -/
def P11448277061740603107.Spec : Prop :=
  ∀ n, P11448277061740603107.a n = A008670 n

end A008670

/-! ## A008670.P16244854002297167962

`A001400(n)-∑[A000217(A008615(n))]`
-/

namespace A008670.P16244854002297167962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008670.P16244854002297167962

namespace A008670

/-- `A001400(n)-∑[A000217(A008615(n))]` -/
def P16244854002297167962.Spec : Prop :=
  ∀ n, P16244854002297167962.a n = A008670 n

end A008670

/-! ## A008670.P9212788831286029255

`∑[(A008620(n)-A002265(n+1))*A008679(n)]`
-/

namespace A008670.P9212788831286029255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008620 n - A002265 (n + 1)) * A008679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008670.P9212788831286029255

namespace A008670

/-- `∑[(A008620(n)-A002265(n+1))*A008679(n)]` -/
def P9212788831286029255.Spec : Prop :=
  ∀ n, P9212788831286029255.a n = A008670 n

end A008670

/-! ## A008670.P7308163407379154752

`A029164(2*n)`
-/

namespace A008670.P7308163407379154752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029164 (2 * n)

end

end A008670.P7308163407379154752

namespace A008670

/-- `A029164(2*n)` -/
def P7308163407379154752.Spec : Prop :=
  ∀ n, P7308163407379154752.a n = A008670 n

end A008670

/-! ## A008670.P5251981471750007074

`∑[A025853(2*n)]`
-/

namespace A008670.P5251981471750007074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008670.P5251981471750007074

namespace A008670

/-- `∑[A025853(2*n)]` -/
def P5251981471750007074.Spec : Prop :=
  ∀ n, P5251981471750007074.a n = A008670 n

end A008670

/-! ## A008670.P9138733092994038707

`A025853(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A008670.P9138733092994038707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025853 (n + n) + a (n - 1)

end

end A008670.P9138733092994038707

namespace A008670

/-- `A025853(n+n)+a(n-1)` -/
def P9138733092994038707.Spec : Prop :=
  ∀ n, P9138733092994038707.a n = A008670 n

end A008670

/-! ## A008670.P7433308844172706081

`A008719(2*n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008670.P7433308844172706081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008719 (2 * n) - a (n - 2)

end

end A008670.P7433308844172706081

namespace A008670

/-- `A008719(2*n)-a(n-2)` -/
def P7433308844172706081.Spec : Prop :=
  ∀ n, P7433308844172706081.a n = A008670 n

end A008670

/-! ## A008670.P13679433132637860970

`∑[A307018(A110657(2*n+1)+2)]`
-/

namespace A008670.P13679433132637860970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A110657 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008670.P13679433132637860970

namespace A008670

/-- `∑[A307018(A110657(2*n+1)+2)]` -/
def P13679433132637860970.Spec : Prop :=
  ∀ n, P13679433132637860970.a n = A008670 n

end A008670

/-! ## A008670.P15897507863210109008

`A029229(2*n)+A029218(2*n+1)`
-/

namespace A008670.P15897507863210109008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029229 (2 * n) + A029218 (2 * n + 1)

end

end A008670.P15897507863210109008

namespace A008670

/-- `A029229(2*n)+A029218(2*n+1)` -/
def P15897507863210109008.Spec : Prop :=
  ∀ n, P15897507863210109008.a n = A008670 n

end A008670

/-! ## A008670.P1813788598551634981

`A029265(2*n+1)+A029265(2*n)`
-/

namespace A008670.P1813788598551634981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029265 (2 * n + 1) + A029265 (2 * n)

end

end A008670.P1813788598551634981

namespace A008670

/-- `A029265(2*n+1)+A029265(2*n)` -/
def P1813788598551634981.Spec : Prop :=
  ∀ n, P1813788598551634981.a n = A008670 n

end A008670

/-! ## A008670.P6886634343695984030

`abs(∑[A029057(2*n+1)*A033999(n+1)])`
-/

namespace A008670.P6886634343695984030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (2 * n + 1) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008670.P6886634343695984030

namespace A008670

/-- `abs(∑[A029057(2*n+1)*A033999(n+1)])` -/
def P6886634343695984030.Spec : Prop :=
  ∀ n, P6886634343695984030.a n = A008670 n

end A008670

/-! ## A008670.P12979943049573101130

`A025853(2*n)+A029155(2*n)-A029300(2*n)`
-/

namespace A008670.P12979943049573101130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025853 (2 * n) + (A029155 (2 * n) - A029300 (2 * n))

end

end A008670.P12979943049573101130

namespace A008670

/-- `A025853(2*n)+A029155(2*n)-A029300(2*n)` -/
def P12979943049573101130.Spec : Prop :=
  ∀ n, P12979943049573101130.a n = A008670 n

end A008670

/-! ## A008670.P9262160341354359836

`A029170(2*n)+A029187(2*n)-A029192(2*n)`
-/

namespace A008670.P9262160341354359836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029170 (2 * n) + (A029187 (2 * n) - A029192 (2 * n))

end

end A008670.P9262160341354359836

namespace A008670

/-- `A029170(2*n)+A029187(2*n)-A029192(2*n)` -/
def P9262160341354359836.Spec : Prop :=
  ∀ n, P9262160341354359836.a n = A008670 n

end A008670

/-!
# A008671: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^7)).

The programs for A008671, the canonical program `A008671.P15650472418453377859` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008671 has offset 0).

The definition of A008671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008671.P15650472418453377859

`A008614(2*n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008671

/-- `A008614(2*n)` -/
def P15650472418453377859.Spec : Prop :=
  ∀ n, P15650472418453377859.a n = A008671 n

theorem P15650472418453377859.correct : P15650472418453377859.Spec := by
  intro n
  simp only [A008671]

end A008671

/-! ## A008671.P12344573702800583754

`A025768(n)-a(n-1)` with `a(0)=1`
-/

namespace A008671.P12344573702800583754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025768 n - a (n - 1)

end

end A008671.P12344573702800583754

namespace A008671

/-- `A025768(n)-a(n-1)` -/
def P12344573702800583754.Spec : Prop :=
  ∀ n, P12344573702800583754.a n = A008671 n

end A008671

/-! ## A008671.P6319515688068677345

`A008617(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A008671.P6319515688068677345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A008617 n + a (n - 3)

end

end A008671.P6319515688068677345

namespace A008671

/-- `A008617(n)+a(n-3)` -/
def P6319515688068677345.Spec : Prop :=
  ∀ n, P6319515688068677345.a n = A008671 n

end A008671

/-! ## A008671.P11725612796482154065

`A008622(2*n)`
-/

namespace A008671.P11725612796482154065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (2 * n)

end

end A008671.P11725612796482154065

namespace A008671

/-- `A008622(2*n)` -/
def P11725612796482154065.Spec : Prop :=
  ∀ n, P11725612796482154065.a n = A008671 n

end A008671

/-! ## A008671.P4401767660423886216

`xor(1, xor(1, A008614(n+n)))`
-/

namespace A008671.P4401767660423886216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A008614 (n + n)))

end

end A008671.P4401767660423886216

namespace A008671

/-- `xor(1, xor(1, A008614(n+n)))` -/
def P4401767660423886216.Spec : Prop :=
  ∀ n, P4401767660423886216.a n = A008671 n

end A008671

/-! ## A008671.P567154826558478357

`xor(1, xor(1, A008622(n+n)))`
-/

namespace A008671.P567154826558478357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A008622 (n + n)))

end

end A008671.P567154826558478357

namespace A008671

/-- `xor(1, xor(1, A008622(n+n)))` -/
def P567154826558478357.Spec : Prop :=
  ∀ n, P567154826558478357.a n = A008671 n

end A008671

/-! ## A008671.P10446534565057802043

`A025813(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A008671.P10446534565057802043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025813 (2 * n) - a (n - 1)

end

end A008671.P10446534565057802043

namespace A008671

/-- `A025813(2*n)-a(n-1)` -/
def P10446534565057802043.Spec : Prop :=
  ∀ n, P10446534565057802043.a n = A008671 n

end A008671

/-! ## A008671.P5781756608112666303

`A008625(2*n)-A069905(n)`
-/

namespace A008671.P5781756608112666303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 (2 * n) - A069905 n

end

end A008671.P5781756608112666303

namespace A008671

/-- `A008625(2*n)-A069905(n)` -/
def P5781756608112666303.Spec : Prop :=
  ∀ n, P5781756608112666303.a n = A008671 n

end A008671

/-! ## A008671.P13325457084601917137

`A008622(A005843(n))%∑[n+3]`
-/

namespace A008671.P13325457084601917137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008622 (A005843 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A008671.P13325457084601917137

namespace A008671

/-- `A008622(A005843(n))%∑[n+3]` -/
def P13325457084601917137.Spec : Prop :=
  ∀ n, P13325457084601917137.a n = A008671 n

end A008671

/-! ## A008671.P4924263849493987464

`A008625(2*n)-A211540(n+2)`
-/

namespace A008671.P4924263849493987464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 (2 * n) - A211540 (n + 2)

end

end A008671.P4924263849493987464

namespace A008671

/-- `A008625(2*n)-A211540(n+2)` -/
def P4924263849493987464.Spec : Prop :=
  ∀ n, P4924263849493987464.a n = A008671 n

end A008671

/-! ## A008671.P17253376047771886482

`A008625(2*n)-A005044(2*n)`
-/

namespace A008671.P17253376047771886482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008625 (2 * n) - A005044 (2 * n)

end

end A008671.P17253376047771886482

namespace A008671

/-- `A008625(2*n)-A005044(2*n)` -/
def P17253376047771886482.Spec : Prop :=
  ∀ n, P17253376047771886482.a n = A008671 n

end A008671

/-! ## A008671.P4685830909120781075

`A025871(2*n+1)+A025871(2*n)`
-/

namespace A008671.P4685830909120781075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025871 (2 * n + 1) + A025871 (2 * n)

end

end A008671.P4685830909120781075

namespace A008671

/-- `A025871(2*n+1)+A025871(2*n)` -/
def P4685830909120781075.Spec : Prop :=
  ∀ n, P4685830909120781075.a n = A008671 n

end A008671

/-! ## A008671.P14522812192780377749

`2*A029349(2*n)-A029259(2*n)`
-/

namespace A008671.P14522812192780377749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029349 (2 * n) - A029259 (2 * n)

end

end A008671.P14522812192780377749

namespace A008671

/-- `2*A029349(2*n)-A029259(2*n)` -/
def P14522812192780377749.Spec : Prop :=
  ∀ n, P14522812192780377749.a n = A008671 n

end A008671

/-! ## A008671.P7317194528502099376

`abs(∑[A025788(2*n+1)*A033999(n+1)])`
-/

namespace A008671.P7317194528502099376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025788 (2 * n + 1) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008671.P7317194528502099376

namespace A008671

/-- `abs(∑[A025788(2*n+1)*A033999(n+1)])` -/
def P7317194528502099376.Spec : Prop :=
  ∀ n, P7317194528502099376.a n = A008671 n

end A008671

/-! ## A008671.P18198808603567227233

`Δ[A029156(Δ[n²])]`
-/

namespace A008671.P18198808603567227233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029156 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008671.P18198808603567227233

namespace A008671

/-- `Δ[A029156(Δ[n²])]` -/
def P18198808603567227233.Spec : Prop :=
  ∀ n, P18198808603567227233.a n = A008671 n

end A008671

/-! ## A008671.P3956416858279935244

`A025845(2*n+3)`
-/

namespace A008671.P3956416858279935244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 (2 * n + 3)

end

end A008671.P3956416858279935244

namespace A008671

/-- `A025845(2*n+3)` -/
def P3956416858279935244.Spec : Prop :=
  ∀ n, P3956416858279935244.a n = A008671 n

end A008671

/-! ## A008671.P10281174467385003722

`Δ[A029053(2*n)-A029261(2*n)]`
-/

namespace A008671.P10281174467385003722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (2 * n) - A029261 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008671.P10281174467385003722

namespace A008671

/-- `Δ[A029053(2*n)-A029261(2*n)]` -/
def P10281174467385003722.Spec : Prop :=
  ∀ n, P10281174467385003722.a n = A008671 n

end A008671

/-! ## A008671.P7187156883186737340

`A025897(2*n+3)+A025897(2*n)`
-/

namespace A008671.P7187156883186737340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (2 * n + 3) + A025897 (2 * n)

end

end A008671.P7187156883186737340

namespace A008671

/-- `A025897(2*n+3)+A025897(2*n)` -/
def P7187156883186737340.Spec : Prop :=
  ∀ n, P7187156883186737340.a n = A008671 n

end A008671

/-! ## A008671.P9025680725102698448

`A029049(2*n+3)-A029049(2*(n+1))`
-/

namespace A008671.P9025680725102698448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029049 (2 * n + 3) - A029049 (2 * (n + 1))

end

end A008671.P9025680725102698448

namespace A008671

/-- `A029049(2*n+3)-A029049(2*(n+1))` -/
def P9025680725102698448.Spec : Prop :=
  ∀ n, P9025680725102698448.a n = A008671 n

end A008671

/-! ## A008671.P7505238868353117728

`A029156(2*n+3)-A029156(2*n+1)`
-/

namespace A008671.P7505238868353117728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029156 (2 * n + 3) - A029156 (2 * n + 1)

end

end A008671.P7505238868353117728

namespace A008671

/-- `A029156(2*n+3)-A029156(2*n+1)` -/
def P7505238868353117728.Spec : Prop :=
  ∀ n, P7505238868353117728.a n = A008671 n

end A008671

/-!
# A008672: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)).

The programs for A008672, the canonical program `A008672.P8021438058632696791` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008672 has offset 0).

The definition of A008672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008672.P8021438058632696791

`round((n+3)*(n+6)/30)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008672

/-- `round((n+3)*(n+6)/30)` -/
def P8021438058632696791.Spec : Prop :=
  ∀ n, P8021438058632696791.a n = A008672 n

theorem P8021438058632696791.correct : P8021438058632696791.Spec := by
  intro n
  simp only [A008672]

end A008672

/-! ## A008672.P8511298195636364699

`A025799(2*n)`
-/

namespace A008672.P8511298195636364699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 (2 * n)

end

end A008672.P8511298195636364699

namespace A008672

/-- `A025799(2*n)` -/
def P8511298195636364699.Spec : Prop :=
  ∀ n, P8511298195636364699.a n = A008672 n

end A008672

/-! ## A008672.P14557583326870434701

`∑[A008676(n)]`
-/

namespace A008672.P14557583326870434701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008672.P14557583326870434701

namespace A008672

/-- `∑[A008676(n)]` -/
def P14557583326870434701.Spec : Prop :=
  ∀ n, P14557583326870434701.a n = A008672 n

end A008672

/-! ## A008672.P12254714986546523500

`A000115(n+1)-A025795(n+1)`
-/

namespace A008672.P12254714986546523500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (n + 1) - A025795 (n + 1)

end

end A008672.P12254714986546523500

namespace A008672

/-- `A000115(n+1)-A025795(n+1)` -/
def P12254714986546523500.Spec : Prop :=
  ∀ n, P12254714986546523500.a n = A008672 n

end A008672

/-! ## A008672.P15351979525381858875

`A000115(n+1)+A008669(n)-A008669(n+1)`
-/

namespace A008672.P15351979525381858875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (n + 1) + (A008669 n - A008669 (n + 1))

end

end A008672.P15351979525381858875

namespace A008672

/-- `A000115(n+1)+A008669(n)-A008669(n+1)` -/
def P15351979525381858875.Spec : Prop :=
  ∀ n, P15351979525381858875.a n = A008672 n

end A008672

/-! ## A008672.P16100820875215018326

`A173777(n+2)-1`
-/

namespace A008672.P16100820875215018326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173777 (n + 2) - 1

end

end A008672.P16100820875215018326

namespace A008672

/-- `A173777(n+2)-1` -/
def P16100820875215018326.Spec : Prop :=
  ∀ n, P16100820875215018326.a n = A008672 n

end A008672

/-! ## A008672.P9370439538719251444

`A025767(n+1)-A008680(n+1)`
-/

namespace A008672.P9370439538719251444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (n + 1) - A008680 (n + 1)

end

end A008672.P9370439538719251444

namespace A008672

/-- `A025767(n+1)-A008680(n+1)` -/
def P9370439538719251444.Spec : Prop :=
  ∀ n, P9370439538719251444.a n = A008672 n

end A008672

/-! ## A008672.P12687912112345165040

`A025795(n+1)+A025795(n)-A008676(n+1)`
-/

namespace A008672.P12687912112345165040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (n + 1) + (A025795 n - A008676 (n + 1))

end

end A008672.P12687912112345165040

namespace A008672

/-- `A025795(n+1)+A025795(n)-A008676(n+1)` -/
def P12687912112345165040.Spec : Prop :=
  ∀ n, P12687912112345165040.a n = A008672 n

end A008672

/-! ## A008672.P3795928269865983082

`A025767(n+1)+A029032(n)-A029032(n+1)`
-/

namespace A008672.P3795928269865983082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (n + 1) + (A029032 n - A029032 (n + 1))

end

end A008672.P3795928269865983082

namespace A008672

/-- `A025767(n+1)+A029032(n)-A029032(n+1)` -/
def P3795928269865983082.Spec : Prop :=
  ∀ n, P3795928269865983082.a n = A008672 n

end A008672

/-! ## A008672.P12652495625598719220

`A051263(n+1)+A051263(n)-A028288(n+1)`
-/

namespace A008672.P12652495625598719220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051263 (n + 1) + (A051263 n - A028288 (n + 1))

end

end A008672.P12652495625598719220

namespace A008672

/-- `A051263(n+1)+A051263(n)-A028288(n+1)` -/
def P12652495625598719220.Spec : Prop :=
  ∀ n, P12652495625598719220.a n = A008672 n

end A008672

/-! ## A008672.P12778181577373165014

`A266755(n+1)+A266755(n)-A008680(n+1)`
-/

namespace A008672.P12778181577373165014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (n + 1) + (A266755 n - A008680 (n + 1))

end

end A008672.P12778181577373165014

namespace A008672

/-- `A266755(n+1)+A266755(n)-A008680(n+1)` -/
def P12778181577373165014.Spec : Prop :=
  ∀ n, P12778181577373165014.a n = A008672 n

end A008672

/-! ## A008672.P10749401453765480170

`A008738(n+2)-A001840(n)`
-/

namespace A008672.P10749401453765480170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (n + 2) - A001840 n

end

end A008672.P10749401453765480170

namespace A008672

/-- `A008738(n+2)-A001840(n)` -/
def P10749401453765480170.Spec : Prop :=
  ∀ n, P10749401453765480170.a n = A008672 n

end A008672

/-! ## A008672.P1411910889498962165

`A001399(n+3)-A000115(n+3)`
-/

namespace A008672.P1411910889498962165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (n + 3) - A000115 (n + 3)

end

end A008672.P1411910889498962165

namespace A008672

/-- `A001399(n+3)-A000115(n+3)` -/
def P1411910889498962165.Spec : Prop :=
  ∀ n, P1411910889498962165.a n = A008672 n

end A008672

/-! ## A008672.P7347356701004079477

`A000212(n+3)-A227353(n+3)`
-/

namespace A008672.P7347356701004079477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 3) - A227353 (n + 3)

end

end A008672.P7347356701004079477

namespace A008672

/-- `A000212(n+3)-A227353(n+3)` -/
def P7347356701004079477.Spec : Prop :=
  ∀ n, P7347356701004079477.a n = A008672 n

end A008672

/-! ## A008672.P9252628182532268887

`A211524(n+8)`
-/

namespace A008672.P9252628182532268887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (n + 8)

end

end A008672.P9252628182532268887

namespace A008672

/-- `A211524(n+8)` -/
def P9252628182532268887.Spec : Prop :=
  ∀ n, P9252628182532268887.a n = A008672 n

end A008672

/-! ## A008672.P18064916171439827080

`∑[A033182(2*n)]`
-/

namespace A008672.P18064916171439827080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008672.P18064916171439827080

namespace A008672

/-- `∑[A033182(2*n)]` -/
def P18064916171439827080.Spec : Prop :=
  ∀ n, P18064916171439827080.a n = A008672 n

end A008672

/-! ## A008672.P16695162775436771768

`A033182(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A008672.P16695162775436771768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033182 (n + n) + a (n - 1)

end

end A008672.P16695162775436771768

namespace A008672

/-- `A033182(n+n)+a(n-1)` -/
def P16695162775436771768.Spec : Prop :=
  ∀ n, P16695162775436771768.a n = A008672 n

end A008672

/-! ## A008672.P5209389827626928737

`A008613(2*n)`
-/

namespace A008672.P5209389827626928737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008613 (2 * n)

end

end A008672.P5209389827626928737

namespace A008672

/-- `A008613(2*n)` -/
def P5209389827626928737.Spec : Prop :=
  ∀ n, P5209389827626928737.a n = A008672 n

end A008672

/-! ## A008672.P7777093802894740808

`A025781(2*n)`
-/

namespace A008672.P7777093802894740808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025781 (2 * n)

end

end A008672.P7777093802894740808

namespace A008672

/-- `A025781(2*n)` -/
def P7777093802894740808.Spec : Prop :=
  ∀ n, P7777093802894740808.a n = A008672 n

end A008672

/-! ## A008672.P7381611617933817776

`A025806(2*n)`
-/

namespace A008672.P7381611617933817776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (2 * n)

end

end A008672.P7381611617933817776

namespace A008672

/-- `A025806(2*n)` -/
def P7381611617933817776.Spec : Prop :=
  ∀ n, P7381611617933817776.a n = A008672 n

end A008672

/-!
# A008673: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^7)).

The programs for A008673, the canonical program `A008673.P17326071932607223895` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008673 has offset 0).

The definition of A008673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008673.P17326071932607223895

`floor((n^3+24*n²+171*n+630)/630)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008673

/-- `floor((n^3+24*n²+171*n+630)/630)` -/
def P17326071932607223895.Spec : Prop :=
  ∀ n, P17326071932607223895.a n = A008673 n

theorem P17326071932607223895.correct : P17326071932607223895.Spec := by
  intro n
  simp only [A008673]

end A008673

/-! ## A008673.P8353436631045650509

`∑[A008677(n)]`
-/

namespace A008673.P8353436631045650509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008673.P8353436631045650509

namespace A008673

/-- `∑[A008677(n)]` -/
def P8353436631045650509.Spec : Prop :=
  ∀ n, P8353436631045650509.a n = A008673 n

end A008673

/-! ## A008673.P1685046296308085572

`A025777(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A008673.P1685046296308085572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025777 n + a (n - 3)

end

end A008673.P1685046296308085572

namespace A008673

/-- `A025777(n)+a(n-3)` -/
def P1685046296308085572.Spec : Prop :=
  ∀ n, P1685046296308085572.a n = A008673 n

end A008673

/-! ## A008673.P4253785717821623227

`A029008(n+1)-A008667(n+1)`
-/

namespace A008673.P4253785717821623227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029008 (n + 1) - A008667 (n + 1)

end

end A008673.P4253785717821623227

namespace A008673

/-- `A029008(n+1)-A008667(n+1)` -/
def P4253785717821623227.Spec : Prop :=
  ∀ n, P4253785717821623227.a n = A008673 n

end A008673

/-! ## A008673.P6404123056137749038

`A029216(2*n)`
-/

namespace A008673.P6404123056137749038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (2 * n)

end

end A008673.P6404123056137749038

namespace A008673

/-- `A029216(2*n)` -/
def P6404123056137749038.Spec : Prop :=
  ∀ n, P6404123056137749038.a n = A008673 n

end A008673

/-! ## A008673.P17383661763743024169

`A029125(Δ[n²])`
-/

namespace A008673.P17383661763743024169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029125 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A008673.P17383661763743024169

namespace A008673

/-- `A029125(Δ[n²])` -/
def P17383661763743024169.Spec : Prop :=
  ∀ n, P17383661763743024169.a n = A008673 n

end A008673

/-! ## A008673.P1075409340511882455

`∑[A025899(2*n)]`
-/

namespace A008673.P1075409340511882455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008673.P1075409340511882455

namespace A008673

/-- `∑[A025899(2*n)]` -/
def P1075409340511882455.Spec : Prop :=
  ∀ n, P1075409340511882455.a n = A008673 n

end A008673

/-! ## A008673.P9064375616905483287

`A025899(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A008673.P9064375616905483287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025899 (n + n) + a (n - 1)

end

end A008673.P9064375616905483287

namespace A008673

/-- `A025899(n+n)+a(n-1)` -/
def P9064375616905483287.Spec : Prop :=
  ∀ n, P9064375616905483287.a n = A008673 n

end A008673

/-! ## A008673.P1871478891125801615

`A029234(Δ[n²])+A029085(n)`
-/

namespace A008673.P1871478891125801615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A029085 n

end

end A008673.P1871478891125801615

namespace A008673

/-- `A029234(Δ[n²])+A029085(n)` -/
def P1871478891125801615.Spec : Prop :=
  ∀ n, P1871478891125801615.a n = A008673 n

end A008673

/-! ## A008673.P15787090870235145388

`∑[abs(Δ[A029216(xor(1, A004273(n)))])]`
-/

namespace A008673.P15787090870235145388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (Int.xor 1 (A004273 n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008673.P15787090870235145388

namespace A008673

/-- `∑[abs(Δ[A029216(xor(1, A004273(n)))])]` -/
def P15787090870235145388.Spec : Prop :=
  ∀ n, P15787090870235145388.a n = A008673 n

end A008673

/-! ## A008673.P16999076072691485838

`A029234(2*n+1)+A029234(2*n)`
-/

namespace A008673.P16999076072691485838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (2 * n + 1) + A029234 (2 * n)

end

end A008673.P16999076072691485838

namespace A008673

/-- `A029234(2*n+1)+A029234(2*n)` -/
def P16999076072691485838.Spec : Prop :=
  ∀ n, P16999076072691485838.a n = A008673 n

end A008673

/-! ## A008673.P1533528329994663799

`A029235(2*n)+A029233(2*n+1)`
-/

namespace A008673.P1533528329994663799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029235 (2 * n) + A029233 (2 * n + 1)

end

end A008673.P1533528329994663799

namespace A008673

/-- `A029235(2*n)+A029233(2*n+1)` -/
def P1533528329994663799.Spec : Prop :=
  ∀ n, P1533528329994663799.a n = A008673 n

end A008673

/-! ## A008673.P7481905303637889380

`∑[A025916(2*n+1)+A025916(2*n)]`
-/

namespace A008673.P7481905303637889380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025916 (2 * n + 1) + A025916 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008673.P7481905303637889380

namespace A008673

/-- `∑[A025916(2*n+1)+A025916(2*n)]` -/
def P7481905303637889380.Spec : Prop :=
  ∀ n, P7481905303637889380.a n = A008673 n

end A008673

/-! ## A008673.P18200515130110354861

`A025899(2*n)+A029183(2*n)-A029349(2*n)`
-/

namespace A008673.P18200515130110354861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 (2 * n) + (A029183 (2 * n) - A029349 (2 * n))

end

end A008673.P18200515130110354861

namespace A008673

/-- `A025899(2*n)+A029183(2*n)-A029349(2*n)` -/
def P18200515130110354861.Spec : Prop :=
  ∀ n, P18200515130110354861.a n = A008673 n

end A008673

/-! ## A008673.P12520852049511521982

`A029140(2*n)-A029178(2*n+3)`
-/

namespace A008673.P12520852049511521982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 (2 * n) - A029178 (2 * n + 3)

end

end A008673.P12520852049511521982

namespace A008673

/-- `A029140(2*n)-A029178(2*n+3)` -/
def P12520852049511521982.Spec : Prop :=
  ∀ n, P12520852049511521982.a n = A008673 n

end A008673

/-! ## A008673.P17721689142550610124

`A029307(2*n+1)+A029307(2*n+3)`
-/

namespace A008673.P17721689142550610124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029307 (2 * n + 1) + A029307 (2 * n + 3)

end

end A008673.P17721689142550610124

namespace A008673

/-- `A029307(2*n+1)+A029307(2*n+3)` -/
def P17721689142550610124.Spec : Prop :=
  ∀ n, P17721689142550610124.a n = A008673 n

end A008673

/-! ## A008673.P10859247421371142144

`Δ[∑[A029125(2*n+1)]-A029125(2*n+1)]`
-/

namespace A008673.P10859247421371142144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029125 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029125 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008673.P10859247421371142144

namespace A008673

/-- `Δ[∑[A029125(2*n+1)]-A029125(2*n+1)]` -/
def P10859247421371142144.Spec : Prop :=
  ∀ n, P10859247421371142144.a n = A008673 n

end A008673

/-! ## A008673.P3319360572639819515

`A029326(2*n+5)`
-/

namespace A008673.P3319360572639819515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029326 (2 * n + 5)

end

end A008673.P3319360572639819515

namespace A008673

/-- `A029326(2*n+5)` -/
def P3319360572639819515.Spec : Prop :=
  ∀ n, P3319360572639819515.a n = A008673 n

end A008673

/-! ## A008673.P12248729485589254205

`∑[abs(Δ[A029216(A004273(n+3))])]`
-/

namespace A008673.P12248729485589254205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (A004273 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008673.P12248729485589254205

namespace A008673

/-- `∑[abs(Δ[A029216(A004273(n+3))])]` -/
def P12248729485589254205.Spec : Prop :=
  ∀ n, P12248729485589254205.a n = A008673 n

end A008673

/-! ## A008673.P1878087207107537467

`A029436(Δ[2*(n+2)²])`
-/

namespace A008673.P1878087207107537467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A008673.P1878087207107537467

namespace A008673

/-- `A029436(Δ[2*(n+2)²])` -/
def P1878087207107537467.Spec : Prop :=
  ∀ n, P1878087207107537467.a n = A008673 n

end A008673

/-!
# A008674: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^7)*(1-x^9)).

The programs for A008674, the canonical program `A008674.P13151143413591466086` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008674 has offset 0).

The definition of A008674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008674.P1814301495478482760

`∑[A008678(n)]`
-/

namespace A008674.P1814301495478482760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008674.P1814301495478482760

namespace A008674

/-- `∑[A008678(n)]` -/
def P1814301495478482760.Spec : Prop :=
  ∀ n, P1814301495478482760.a n = A008674 n

end A008674

/-! ## A008674.P13151143413591466086

`A029092(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A008674

/-- `A029092(n)+a(n-3)` -/
def P13151143413591466086.Spec : Prop :=
  ∀ n, P13151143413591466086.a n = A008674 n

theorem P13151143413591466086.correct : P13151143413591466086.Spec := by
  intro n
  simp only [A008674]

end A008674

/-! ## A008674.P7931335304711473519

`A008678(n%A294994(n))+a(n-1)` with `a(0)=1`
-/

namespace A008674.P7931335304711473519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008678 (Int.tmod (n : ℤ) (A294994 n)).toNat + a (n - 1)

end

end A008674.P7931335304711473519

namespace A008674

/-- `A008678(n%A294994(n))+a(n-1)` -/
def P7931335304711473519.Spec : Prop :=
  ∀ n, P7931335304711473519.a n = A008674 n

end A008674

/-! ## A008674.P15529923914065908101

`A029092(n)-a(n-3)*A057428(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A008674.P15529923914065908101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029092 n - a (n - 3) * A057428 n

end

end A008674.P15529923914065908101

namespace A008674

/-- `A029092(n)-a(n-3)*A057428(n)` -/
def P15529923914065908101.Spec : Prop :=
  ∀ n, P15529923914065908101.a n = A008674 n

end A008674

/-! ## A008674.P14788022833209544102

`A008678(A028242(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A008674.P14788022833209544102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008678 (A028242 (2 * n + 1)).toNat + a (n - 1)

end

end A008674.P14788022833209544102

namespace A008674

/-- `A008678(A028242(2*n+1))+a(n-1)` -/
def P14788022833209544102.Spec : Prop :=
  ∀ n, P14788022833209544102.a n = A008674 n

end A008674

/-! ## A008674.P4591339895221321294

`A259094((n+3)²-∑[n]+2)`
-/

namespace A008674.P4591339895221321294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (((n + 3) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2).toNat

end

end A008674.P4591339895221321294

namespace A008674

/-- `A259094((n+3)²-∑[n]+2)` -/
def P4591339895221321294.Spec : Prop :=
  ∀ n, P4591339895221321294.a n = A008674 n

end A008674

/-!
# A008675: Expansion of 1/( Product_{j=0..5} (1-x^(2*j+1)) ).

The programs for A008675, there is no canonical definition to state claims against.
-/

/-! ## A008675.P9602739726211340496

`A259094(A052905(n+3))`
-/

namespace A008675.P9602739726211340496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A052905 (n + 3)).toNat

end

end A008675.P9602739726211340496

/-! ## A008675.P7430040467170178568

`A259094(A056119(n)+16)`
-/

namespace A008675.P7430040467170178568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A056119 n + 16).toNat

end

end A008675.P7430040467170178568

/-! ## A008675.P15935789439228033538

`A259094(A046691(n+4)-1)`
-/

namespace A008675.P15935789439228033538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A046691 (n + 4) - 1).toNat

end

end A008675.P15935789439228033538

/-! ## A008675.P7541585019913092762

`A259094(A055998(n+4)-2)`
-/

namespace A008675.P7541585019913092762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A055998 (n + 4) - 2).toNat

end

end A008675.P7541585019913092762

/-! ## A008675.P14741577604711819301

`A259094(A000096(n+5)-4)`
-/

namespace A008675.P14741577604711819301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000096 (n + 5) - 4).toNat

end

end A008675.P14741577604711819301

/-! ## A008675.P3390305356289607698

`A259094(A000217(n+6)-5)`
-/

namespace A008675.P3390305356289607698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000217 (n + 6) - 5).toNat

end

end A008675.P3390305356289607698

/-! ## A008675.P2534704835597828142

`A259094(A000124(n+6)-6)`
-/

namespace A008675.P2534704835597828142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000124 (n + 6) - 6).toNat

end

end A008675.P2534704835597828142

/-! ## A008675.P13646578352028575515

`A259094(A152947(n+8)-6)`
-/

namespace A008675.P13646578352028575515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A152947 (n + 8) - 6).toNat

end

end A008675.P13646578352028575515

/-! ## A008675.P4053632541080513583

`A259094(Δ[A023551(n+1)]+1)`
-/

namespace A008675.P4053632541080513583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (f1 (n + 1) - f1 n + 1).toNat

end

end A008675.P4053632541080513583

/-! ## A008675.P15160842966827538646

`A259094(Δ[A023545(n+2)]-1)`
-/

namespace A008675.P15160842966827538646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (f1 (n + 1) - f1 n - 1).toNat

end

end A008675.P15160842966827538646

/-! ## A008675.P9152699350590683414

`A259094(Δ[A026054(n+3)]+1)`
-/

namespace A008675.P9152699350590683414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (f1 (n + 1) - f1 n + 1).toNat

end

end A008675.P9152699350590683414

/-!
# A008676: Expansion of 1/((1-x^3)*(1-x^5)).

The programs for A008676, the canonical program `A008676.P12916295434013551121` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008676 has offset 0).

The definition of A008676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008676.P12916295434013551121

`floor((2*n+5)/5)-floor((n+2)/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008676

/-- `floor((2*n+5)/5)-floor((n+2)/3)` -/
def P12916295434013551121.Spec : Prop :=
  ∀ n, P12916295434013551121.a n = A008676 n

theorem P12916295434013551121.correct : P12916295434013551121.Spec := by
  intro n
  simp only [A008676]

end A008676

/-! ## A008676.P11495474326673968309

`A033182(2*n)`
-/

namespace A008676.P11495474326673968309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (2 * n)

end

end A008676.P11495474326673968309

namespace A008676

/-- `A033182(2*n)` -/
def P11495474326673968309.Spec : Prop :=
  ∀ n, P11495474326673968309.a n = A008676 n

end A008676

/-! ## A008676.P261911485188891553

`A008651(2*n)`
-/

namespace A008676.P261911485188891553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (2 * n)

end

end A008676.P261911485188891553

namespace A008676

/-- `A008651(2*n)` -/
def P261911485188891553.Spec : Prop :=
  ∀ n, P261911485188891553.a n = A008676 n

end A008676

/-! ## A008676.P6062151823051909427

`A325488(2*n)`
-/

namespace A008676.P6062151823051909427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325488 (2 * n)

end

end A008676.P6062151823051909427

namespace A008676

/-- `A325488(2*n)` -/
def P6062151823051909427.Spec : Prop :=
  ∀ n, P6062151823051909427.a n = A008676 n

end A008676

/-! ## A008676.P12066695931489452715

`A008615(A058207(2*n+1)-A049347(n+1))`
-/

namespace A008676.P12066695931489452715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A058207 (2 * n + 1) - A049347 (n + 1)).toNat

end

end A008676.P12066695931489452715

namespace A008676

/-- `A008615(A058207(2*n+1)-A049347(n+1))` -/
def P12066695931489452715.Spec : Prop :=
  ∀ n, P12066695931489452715.a n = A008676 n

end A008676

/-! ## A008676.P16261570710637181293

`Δ[A008680(Δ[n²])]`
-/

namespace A008676.P16261570710637181293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008676.P16261570710637181293

namespace A008676

/-- `Δ[A008680(Δ[n²])]` -/
def P16261570710637181293.Spec : Prop :=
  ∀ n, P16261570710637181293.a n = A008676 n

end A008676

/-! ## A008676.P10484029367141497822

`Δ[A025799(Δ[n²])]`
-/

namespace A008676.P10484029367141497822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008676.P10484029367141497822

namespace A008676

/-- `Δ[A025799(Δ[n²])]` -/
def P10484029367141497822.Spec : Prop :=
  ∀ n, P10484029367141497822.a n = A008676 n

end A008676

/-! ## A008676.P210748608260620499

`Δ[A025806(2*n+3)]`
-/

namespace A008676.P210748608260620499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008676.P210748608260620499

namespace A008676

/-- `Δ[A025806(2*n+3)]` -/
def P210748608260620499.Spec : Prop :=
  ∀ n, P210748608260620499.a n = A008676 n

end A008676

/-! ## A008676.P1254620333021054742

`Δ[A025799(2*n)-Δ[A025799(2*n+1)]]`
-/

namespace A008676.P1254620333021054742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025799 (2 * n) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008676.P1254620333021054742

namespace A008676

/-- `Δ[A025799(2*n)-Δ[A025799(2*n+1)]]` -/
def P1254620333021054742.Spec : Prop :=
  ∀ n, P1254620333021054742.a n = A008676 n

end A008676

/-! ## A008676.P5135228598805559873

`A227568(A025838(n))`
-/

namespace A008676.P5135228598805559873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A025838 n).toNat

end

end A008676.P5135228598805559873

namespace A008676

/-- `A227568(A025838(n))` -/
def P5135228598805559873.Spec : Prop :=
  ∀ n, P5135228598805559873.a n = A008676 n

end A008676

/-!
# A008677: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^7)).

The programs for A008677, the canonical program `A008677.P1639926702071501283` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008677 has offset 0).

The definition of A008677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008677.P1951180294543569452

`A025899(2*n)`
-/

namespace A008677.P1951180294543569452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 (2 * n)

end

end A008677.P1951180294543569452

namespace A008677

/-- `A025899(2*n)` -/
def P1951180294543569452.Spec : Prop :=
  ∀ n, P1951180294543569452.a n = A008677 n

end A008677

/-! ## A008677.P13689271810249558867

`Δ[A029216(xor(1, A004273(n)))]`
-/

namespace A008677.P13689271810249558867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (Int.xor 1 (A004273 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008677.P13689271810249558867

namespace A008677

/-- `Δ[A029216(xor(1, A004273(n)))]` -/
def P13689271810249558867.Spec : Prop :=
  ∀ n, P13689271810249558867.a n = A008677 n

end A008677

/-! ## A008677.P16713893617926595943

`Δ[A029216(abs(1-A004273(n)))]`
-/

namespace A008677.P16713893617926595943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 |1 - A004273 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008677.P16713893617926595943

namespace A008677

/-- `Δ[A029216(abs(1-A004273(n)))]` -/
def P16713893617926595943.Spec : Prop :=
  ∀ n, P16713893617926595943.a n = A008677 n

end A008677

/-! ## A008677.P17600425676429058644

`A025916(2*n+1)+A025916(2*n)`
-/

namespace A008677.P17600425676429058644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025916 (2 * n + 1) + A025916 (2 * n)

end

end A008677.P17600425676429058644

namespace A008677

/-- `A025916(2*n+1)+A025916(2*n)` -/
def P17600425676429058644.Spec : Prop :=
  ∀ n, P17600425676429058644.a n = A008677 n

end A008677

/-! ## A008677.P11272659151580045413

`A025917(2*n)+A025915(2*n+1)`
-/

namespace A008677.P11272659151580045413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025917 (2 * n) + A025915 (2 * n + 1)

end

end A008677.P11272659151580045413

namespace A008677

/-- `A025917(2*n)+A025915(2*n+1)` -/
def P11272659151580045413.Spec : Prop :=
  ∀ n, P11272659151580045413.a n = A008677 n

end A008677

/-! ## A008677.P1639926702071501283

`A029108(2*n+1)-A029158(2*n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008677

/-- `A029108(2*n+1)-A029158(2*n+1)` -/
def P1639926702071501283.Spec : Prop :=
  ∀ n, P1639926702071501283.a n = A008677 n

theorem P1639926702071501283.correct : P1639926702071501283.Spec := by
  intro n
  simp only [A008677]

end A008677

/-! ## A008677.P17929892536904714007

`A025847(2*n)+A029193(2*n)-A029158(2*n)`
-/

namespace A008677.P17929892536904714007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025847 (2 * n) + (A029193 (2 * n) - A029158 (2 * n))

end

end A008677.P17929892536904714007

namespace A008677

/-- `A025847(2*n)+A029193(2*n)-A029158(2*n)` -/
def P17929892536904714007.Spec : Prop :=
  ∀ n, P17929892536904714007.a n = A008677 n

end A008677

/-! ## A008677.P6245916248418096748

`A029051(2*n)+A029193(2*n)-A029022(2*n)`
-/

namespace A008677.P6245916248418096748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029051 (2 * n) + (A029193 (2 * n) - A029022 (2 * n))

end

end A008677.P6245916248418096748

namespace A008677

/-- `A029051(2*n)+A029193(2*n)-A029022(2*n)` -/
def P6245916248418096748.Spec : Prop :=
  ∀ n, P6245916248418096748.a n = A008677 n

end A008677

/-! ## A008677.P4461523103373570794

`A029216(2*n)+A029349(2*n)-A029183(2*n)`
-/

namespace A008677.P4461523103373570794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (2 * n) + (A029349 (2 * n) - A029183 (2 * n))

end

end A008677.P4461523103373570794

namespace A008677

/-- `A029216(2*n)+A029349(2*n)-A029183(2*n)` -/
def P4461523103373570794.Spec : Prop :=
  ∀ n, P4461523103373570794.a n = A008677 n

end A008677

/-! ## A008677.P1975801714232529154

`A029349(2*n)-A029349(2*n+3)`
-/

namespace A008677.P1975801714232529154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 (2 * n) - A029349 (2 * n + 3)

end

end A008677.P1975801714232529154

namespace A008677

/-- `A029349(2*n)-A029349(2*n+3)` -/
def P1975801714232529154.Spec : Prop :=
  ∀ n, P1975801714232529154.a n = A008677 n

end A008677

/-! ## A008677.P1008603224127536553

`Δ[A029326(2*n+3)]`
-/

namespace A008677.P1008603224127536553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029326 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008677.P1008603224127536553

namespace A008677

/-- `Δ[A029326(2*n+3)]` -/
def P1008603224127536553.Spec : Prop :=
  ∀ n, P1008603224127536553.a n = A008677 n

end A008677

/-! ## A008677.P2832068477725066103

`Δ[A029259(2*n+1)+Δ[A029349(2*n+1)]]`
-/

namespace A008677.P2832068477725066103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029259 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008677.P2832068477725066103

namespace A008677

/-- `Δ[A029259(2*n+1)+Δ[A029349(2*n+1)]]` -/
def P2832068477725066103.Spec : Prop :=
  ∀ n, P2832068477725066103.a n = A008677 n

end A008677

/-! ## A008677.P6417000461488858055

`Δ[A029216(2*n+5)]`
-/

namespace A008677.P6417000461488858055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008677.P6417000461488858055

namespace A008677

/-- `Δ[A029216(2*n+5)]` -/
def P6417000461488858055.Spec : Prop :=
  ∀ n, P6417000461488858055.a n = A008677 n

end A008677

/-!
# A008678: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^7)*(1-x^9)).

The programs for A008678, the canonical program `A008678.P337073461788378853` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008678 has offset 0).

The definition of A008678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008678.P337073461788378853

`A025883(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A008678

/-- `A025883(n)+a(n-3)` -/
def P337073461788378853.Spec : Prop :=
  ∀ n, P337073461788378853.a n = A008678 n

theorem P337073461788378853.correct : P337073461788378853.Spec := by
  intro n
  simp only [A008678]

end A008678

/-! ## A008678.P13448830562277847621

`A029144(n)-A029383(2*n+1)`
-/

namespace A008678.P13448830562277847621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029144 n - A029383 (2 * n + 1)

end

end A008678.P13448830562277847621

namespace A008678

/-- `A029144(n)-A029383(2*n+1)` -/
def P13448830562277847621.Spec : Prop :=
  ∀ n, P13448830562277847621.a n = A008678 n

end A008678

/-! ## A008678.P12452981357295519838

`Δ[A120835(A052816(n)+4)]`
-/

namespace A008678.P12452981357295519838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A052816 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008678.P12452981357295519838

namespace A008678

/-- `Δ[A120835(A052816(n)+4)]` -/
def P12452981357295519838.Spec : Prop :=
  ∀ n, P12452981357295519838.a n = A008678 n

end A008678

/-! ## A008678.P5355532696814266602

`A043290(A026764(n))*A352129(n+3)`
-/

namespace A008678.P5355532696814266602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A026764 n).toNat * A352129 (n + 3)

end

end A008678.P5355532696814266602

namespace A008678

/-- `A043290(A026764(n))*A352129(n+3)` -/
def P5355532696814266602.Spec : Prop :=
  ∀ n, P5355532696814266602.a n = A008678 n

end A008678

/-! ## A008678.P10064535137932696527

`A352129(n+3)+A064873(A213853(2*n+3))`
-/

namespace A008678.P10064535137932696527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352129 (n + 3) + A064873 (A213853 (2 * n + 3)).toNat

end

end A008678.P10064535137932696527

namespace A008678

/-- `A352129(n+3)+A064873(A213853(2*n+3))` -/
def P10064535137932696527.Spec : Prop :=
  ∀ n, P10064535137932696527.a n = A008678 n

end A008678

/-!
# A008679: Expansion of 1/((1-x^3)*(1-x^4)).

The programs for A008679, the canonical program `A008679.P11496072477620369180` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008679 has offset 0).

The definition of A008679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008679.P11496072477620369180

`a(n-3)+a(n-4)-a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=0, a(6)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008679

/-- `a(n-3)+a(n-4)-a(n-7)` -/
def P11496072477620369180.Spec : Prop :=
  ∀ n, P11496072477620369180.a n = A008679 n

theorem P11496072477620369180.correct : P11496072477620369180.Spec := by
  intro n
  simp only [A008679]

end A008679

/-! ## A008679.P11101580598647842290

`A005044(n+3)-A005044(n+1)`
-/

namespace A008679.P11101580598647842290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 3) - A005044 (n + 1)

end

end A008679.P11101580598647842290

namespace A008679

/-- `A005044(n+3)-A005044(n+1)` -/
def P11101580598647842290.Spec : Prop :=
  ∀ n, P11101580598647842290.a n = A008679 n

end A008679

/-! ## A008679.P4463574151213500276

`ceil(Δ[ceil(n²/12)]/2)`
-/

namespace A008679.P4463574151213500276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉

end

end A008679.P4463574151213500276

namespace A008679

/-- `ceil(Δ[ceil(n²/12)]/2)` -/
def P4463574151213500276.Spec : Prop :=
  ∀ n, P4463574151213500276.a n = A008679 n

end A008679

/-! ## A008679.P1105756540380630507

`a(n%3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A008679.P1105756540380630507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  a (n % 3) + a (n - 4)

end

end A008679.P1105756540380630507

namespace A008679

/-- `a(n%3)+a(n-4)` -/
def P1105756540380630507.Spec : Prop :=
  ∀ n, (P1105756540380630507.a n : ℤ) = A008679 n

end A008679

/-! ## A008679.P9008834427191803889

`a(gcd(3, n))+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A008679.P9008834427191803889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  a (Nat.gcd 3 n) + a (n - 4)

end

end A008679.P9008834427191803889

namespace A008679

/-- `a(gcd(3, n))+a(n-4)` -/
def P9008834427191803889.Spec : Prop :=
  ∀ n, (P9008834427191803889.a n : ℤ) = A008679 n

end A008679

/-! ## A008679.P9024573062342972293

`ceil(xor(1, n)/4)-round(xor(1, n)/6)`
-/

namespace A008679.P9024573062342972293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 4⌉ - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

end

end A008679.P9024573062342972293

namespace A008679

/-- `ceil(xor(1, n)/4)-round(xor(1, n)/6)` -/
def P9024573062342972293.Spec : Prop :=
  ∀ n, P9024573062342972293.a n = A008679 n

end A008679

/-! ## A008679.P17599743877845315527

`floor(sqrt(A025828(n)))`
-/

namespace A008679.P17599743877845315527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A025828 n)

end

end A008679.P17599743877845315527

namespace A008679

/-- `floor(sqrt(A025828(n)))` -/
def P17599743877845315527.Spec : Prop :=
  ∀ n, P17599743877845315527.a n = A008679 n

end A008679

/-! ## A008679.P16121666025815356570

`abs(∑[A291983(n)])`
-/

namespace A008679.P16121666025815356570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008679.P16121666025815356570

namespace A008679

/-- `abs(∑[A291983(n)])` -/
def P16121666025815356570.Spec : Prop :=
  ∀ n, P16121666025815356570.a n = A008679 n

end A008679

/-! ## A008679.P16419298467982668451

`A103221(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008679.P16419298467982668451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A103221 n - a (n - 2)

end

end A008679.P16419298467982668451

namespace A008679

/-- `A103221(n)-a(n-2)` -/
def P16419298467982668451.Spec : Prop :=
  ∀ n, P16419298467982668451.a n = A008679 n

end A008679

/-! ## A008679.P2115312412719860903

`A011765(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A008679.P2115312412719860903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A011765 n + a (n - 3)

end

end A008679.P2115312412719860903

namespace A008679

/-- `A011765(n)+a(n-3)` -/
def P2115312412719860903.Spec : Prop :=
  ∀ n, P2115312412719860903.a n = A008679 n

end A008679

/-! ## A008679.P2359430059800086710

`A121262(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A008679.P2359430059800086710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A121262 n + a (n - 3)

end

end A008679.P2359430059800086710

namespace A008679

/-- `A121262(n)+a(n-3)` -/
def P2359430059800086710.Spec : Prop :=
  ∀ n, P2359430059800086710.a n = A008679 n

end A008679

/-! ## A008679.P6727918007175809421

`A112689(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A008679.P6727918007175809421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112689 (n + 1) - a (n - 1)

end

end A008679.P6727918007175809421

namespace A008679

/-- `A112689(n+1)-a(n-1)` -/
def P6727918007175809421.Spec : Prop :=
  ∀ n, P6727918007175809421.a n = A008679 n

end A008679

/-! ## A008679.P4689359446078636079

`∑[(∑[A002265(n)+1]+1)%3-1]`
-/

namespace A008679.P4689359446078636079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j + 1) 3 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008679.P4689359446078636079

namespace A008679

/-- `∑[(∑[A002265(n)+1]+1)%3-1]` -/
def P4689359446078636079.Spec : Prop :=
  ∀ n, P4689359446078636079.a n = A008679 n

end A008679

/-! ## A008679.P9522237141566440885

`A110654(A008612(n))`
-/

namespace A008679.P9522237141566440885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008612 n).toNat

end

end A008679.P9522237141566440885

namespace A008679

/-- `A110654(A008612(n))` -/
def P9522237141566440885.Spec : Prop :=
  ∀ n, P9522237141566440885.a n = A008679 n

end A008679

/-! ## A008679.P5263689492819353937

`A004526(A008612(n)+1)`
-/

namespace A008679.P5263689492819353937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008612 n + 1).toNat

end

end A008679.P5263689492819353937

namespace A008679

/-- `A004526(A008612(n)+1)` -/
def P5263689492819353937.Spec : Prop :=
  ∀ n, P5263689492819353937.a n = A008679 n

end A008679

/-! ## A008679.P12972714798611274305

`A008615(A028242(n)+1)`
-/

namespace A008679.P12972714798611274305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A028242 n + 1).toNat

end

end A008679.P12972714798611274305

namespace A008679

/-- `A008615(A028242(n)+1)` -/
def P12972714798611274305.Spec : Prop :=
  ∀ n, P12972714798611274305.a n = A008679 n

end A008679

/-! ## A008679.P15555030235665450087

`A131728(2*A008612(n))`
-/

namespace A008679.P15555030235665450087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131728 (2 * A008612 n).toNat

end

end A008679.P15555030235665450087

namespace A008679

/-- `A131728(2*A008612(n))` -/
def P15555030235665450087.Spec : Prop :=
  ∀ n, P15555030235665450087.a n = A008679 n

end A008679

/-! ## A008679.P8018911817324934385

`A008624(n)-A008615(n)`
-/

namespace A008679.P8018911817324934385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n - A008615 n

end

end A008679.P8018911817324934385

namespace A008679

/-- `A008624(n)-A008615(n)` -/
def P8018911817324934385.Spec : Prop :=
  ∀ n, P8018911817324934385.a n = A008679 n

end A008679

/-! ## A008679.P12924795812560476716

`A008620(n)-A110655(n)`
-/

namespace A008679.P12924795812560476716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n - A110655 n

end

end A008679.P12924795812560476716

namespace A008679

/-- `A008620(n)-A110655(n)` -/
def P12924795812560476716.Spec : Prop :=
  ∀ n, P12924795812560476716.a n = A008679 n

end A008679

/-! ## A008679.P5129735421875167889

`A008621(n)-A112689(n)`
-/

namespace A008679.P5129735421875167889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n - A112689 n

end

end A008679.P5129735421875167889

namespace A008679

/-- `A008621(n)-A112689(n)` -/
def P5129735421875167889.Spec : Prop :=
  ∀ n, P5129735421875167889.a n = A008679 n

end A008679

/-!
# A008680: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)).

The programs for A008680, the canonical program `A008680.P14411972798306793371` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008680 has offset 0).

The definition of A008680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008680.P14411972798306793371

`floor((1+(-1)^n)*(-1)^floor(n/2)/8+(n²+12*n+90)/120)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008680

/-- `floor((1+(-1)^n)*(-1)^floor(n/2)/8+(n²+12*n+90)/120)` -/
def P14411972798306793371.Spec : Prop :=
  ∀ n, P14411972798306793371.a n = A008680 n

theorem P14411972798306793371.correct : P14411972798306793371.Spec := by
  intro n
  simp only [A008680]

end A008680

/-! ## A008680.P9402670817407648942

`A025795(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008680.P9402670817407648942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025795 n - a (n - 2)

end

end A008680.P9402670817407648942

namespace A008680

/-- `A025795(n)-a(n-2)` -/
def P9402670817407648942.Spec : Prop :=
  ∀ n, P9402670817407648942.a n = A008680 n

end A008680

/-! ## A008680.P123907301659224655

`A165190(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A008680.P123907301659224655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A165190 n + a (n - 3)

end

end A008680.P123907301659224655

namespace A008680

/-- `A165190(n)+a(n-3)` -/
def P123907301659224655.Spec : Prop :=
  ∀ n, P123907301659224655.a n = A008680 n

end A008680

/-! ## A008680.P14496923904560889740

`A029007(n+1)+A008667(n)-A008669(n+1)`
-/

namespace A008680.P14496923904560889740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029007 (n + 1) + (A008667 n - A008669 (n + 1))

end

end A008680.P14496923904560889740

namespace A008680

/-- `A029007(n+1)+A008667(n)-A008669(n+1)` -/
def P14496923904560889740.Spec : Prop :=
  ∀ n, P14496923904560889740.a n = A008680 n

end A008680

/-! ## A008680.P13525788373585392788

`A025802(n+1)+A008667(n)-A008667(n+1)`
-/

namespace A008680.P13525788373585392788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (n + 1) + (A008667 n - A008667 (n + 1))

end

end A008680.P13525788373585392788

namespace A008680

/-- `A025802(n+1)+A008667(n)-A008667(n+1)` -/
def P13525788373585392788.Spec : Prop :=
  ∀ n, P13525788373585392788.a n = A008680 n

end A008680

/-! ## A008680.P5533904882617229967

`A025802(n+1)+A025802(n)-A025795(n+1)`
-/

namespace A008680.P5533904882617229967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (n + 1) + (A025802 n - A025795 (n + 1))

end

end A008680.P5533904882617229967

namespace A008680

/-- `A025802(n+1)+A025802(n)-A025795(n+1)` -/
def P5533904882617229967.Spec : Prop :=
  ∀ n, P5533904882617229967.a n = A008680 n

end A008680

/-! ## A008680.P4106069271082685945

`A008672(n+3)-A025772(n+3)`
-/

namespace A008680.P4106069271082685945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (n + 3) - A025772 (n + 3)

end

end A008680.P4106069271082685945

namespace A008680

/-- `A008672(n+3)-A025772(n+3)` -/
def P4106069271082685945.Spec : Prop :=
  ∀ n, P4106069271082685945.a n = A008680 n

end A008680

/-! ## A008680.P4199657677837861874

`A266755(n+3)-A025802(n+3)`
-/

namespace A008680.P4199657677837861874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (n + 3) - A025802 (n + 3)

end

end A008680.P4199657677837861874

namespace A008680

/-- `A266755(n+3)-A025802(n+3)` -/
def P4199657677837861874.Spec : Prop :=
  ∀ n, P4199657677837861874.a n = A008680 n

end A008680

/-! ## A008680.P12252018411663064642

`A025851(2*n)`
-/

namespace A008680.P12252018411663064642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025851 (2 * n)

end

end A008680.P12252018411663064642

namespace A008680

/-- `A025851(2*n)` -/
def P12252018411663064642.Spec : Prop :=
  ∀ n, P12252018411663064642.a n = A008680 n

end A008680

/-! ## A008680.P15008212534238345747

`A025877(2*n)`
-/

namespace A008680.P15008212534238345747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (2 * n)

end

end A008680.P15008212534238345747

namespace A008680

/-- `A025877(2*n)` -/
def P15008212534238345747.Spec : Prop :=
  ∀ n, P15008212534238345747.a n = A008680 n

end A008680

/-! ## A008680.P12658529885590262557

`A025767(n)-A025799(2*n+1)`
-/

namespace A008680.P12658529885590262557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 n - A025799 (2 * n + 1)

end

end A008680.P12658529885590262557

namespace A008680

/-- `A025767(n)-A025799(2*n+1)` -/
def P12658529885590262557.Spec : Prop :=
  ∀ n, P12658529885590262557.a n = A008680 n

end A008680

/-! ## A008680.P1198694553585929878

`A025904(2*n)+A025902(2*n+1)`
-/

namespace A008680.P1198694553585929878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (2 * n) + A025902 (2 * n + 1)

end

end A008680.P1198694553585929878

namespace A008680

/-- `A025904(2*n)+A025902(2*n+1)` -/
def P1198694553585929878.Spec : Prop :=
  ∀ n, P1198694553585929878.a n = A008680 n

end A008680

/-! ## A008680.P3232113588252999283

`A029162(2*n)-A029162(2*n+1)`
-/

namespace A008680.P3232113588252999283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029162 (2 * n) - A029162 (2 * n + 1)

end

end A008680.P3232113588252999283

namespace A008680

/-- `A029162(2*n)-A029162(2*n+1)` -/
def P3232113588252999283.Spec : Prop :=
  ∀ n, P3232113588252999283.a n = A008680 n

end A008680

/-! ## A008680.P4220031800872425766

`A029327(2*n)-A029327(2*n+1)`
-/

namespace A008680.P4220031800872425766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (2 * n) - A029327 (2 * n + 1)

end

end A008680.P4220031800872425766

namespace A008680

/-- `A029327(2*n)-A029327(2*n+1)` -/
def P4220031800872425766.Spec : Prop :=
  ∀ n, P4220031800872425766.a n = A008680 n

end A008680

/-! ## A008680.P12085658310144037993

`Δ[A029162(Δ[n²])]`
-/

namespace A008680.P12085658310144037993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029162 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008680.P12085658310144037993

namespace A008680

/-- `Δ[A029162(Δ[n²])]` -/
def P12085658310144037993.Spec : Prop :=
  ∀ n, P12085658310144037993.a n = A008680 n

end A008680

/-! ## A008680.P3120043063636867782

`Δ[A029246(Δ[n²])]`
-/

namespace A008680.P3120043063636867782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029246 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008680.P3120043063636867782

namespace A008680

/-- `Δ[A029246(Δ[n²])]` -/
def P3120043063636867782.Spec : Prop :=
  ∀ n, P3120043063636867782.a n = A008680 n

end A008680

/-! ## A008680.P16256893409199101053

`A029194(2*n)-A029194(2*n+3)`
-/

namespace A008680.P16256893409199101053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 (2 * n) - A029194 (2 * n + 3)

end

end A008680.P16256893409199101053

namespace A008680

/-- `A029194(2*n)-A029194(2*n+3)` -/
def P16256893409199101053.Spec : Prop :=
  ∀ n, P16256893409199101053.a n = A008680 n

end A008680

/-! ## A008680.P13763040922366697649

`A029055(2*n+3)-A029055(2*(n+1))`
-/

namespace A008680.P13763040922366697649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029055 (2 * n + 3) - A029055 (2 * (n + 1))

end

end A008680.P13763040922366697649

namespace A008680

/-- `A029055(2*n+3)-A029055(2*(n+1))` -/
def P13763040922366697649.Spec : Prop :=
  ∀ n, P13763040922366697649.a n = A008680 n

end A008680

/-! ## A008680.P6333903283764404961

`A029246(2*n+3)-A029246(2*n+1)`
-/

namespace A008680.P6333903283764404961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029246 (2 * n + 3) - A029246 (2 * n + 1)

end

end A008680.P6333903283764404961

namespace A008680

/-- `A029246(2*n+3)-A029246(2*n+1)` -/
def P6333903283764404961.Spec : Prop :=
  ∀ n, P6333903283764404961.a n = A008680 n

end A008680

/-! ## A008680.P17506367229382676445

`Δ[A029194(2*n+3)]`
-/

namespace A008680.P17506367229382676445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008680.P17506367229382676445

namespace A008680

/-- `Δ[A029194(2*n+3)]` -/
def P17506367229382676445.Spec : Prop :=
  ∀ n, P17506367229382676445.a n = A008680 n

end A008680

/-!
# A008681: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)*(1-x^6)).

The programs for A008681, the canonical program `A008681.P1916924578482064309` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008681 has offset 0).

The definition of A008681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008681.P1916924578482064309

`A029143(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008681

/-- `A029143(n)-a(n-2)` -/
def P1916924578482064309.Spec : Prop :=
  ∀ n, P1916924578482064309.a n = A008681 n

theorem P1916924578482064309.correct : P1916924578482064309.Spec := by
  intro n
  simp only [A008681]

end A008681

/-! ## A008681.P7754354297625160128

`A008682(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A008681.P7754354297625160128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A008682 n + a (n - 3)

end

end A008681.P7754354297625160128

namespace A008681

/-- `A008682(n)+a(n-3)` -/
def P7754354297625160128.Spec : Prop :=
  ∀ n, P7754354297625160128.a n = A008681 n

end A008681

/-! ## A008681.P1918768271669497410

`A288165(n)+A029274(n)`
-/

namespace A008681.P1918768271669497410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 n + A029274 n

end

end A008681.P1918768271669497410

namespace A008681

/-- `A288165(n)+A029274(n)` -/
def P1918768271669497410.Spec : Prop :=
  ∀ n, P1918768271669497410.a n = A008681 n

end A008681

/-! ## A008681.P16422133806846981811

`Δ[∑[A029171(n)]-A037145(n)]`
-/

namespace A008681.P16422133806846981811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029171 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008681.P16422133806846981811

namespace A008681

/-- `Δ[∑[A029171(n)]-A037145(n)]` -/
def P16422133806846981811.Spec : Prop :=
  ∀ n, P16422133806846981811.a n = A008681 n

end A008681

/-! ## A008681.P7941051640202027839

`A029171(n+1)-Δ[A037145(n)]`
-/

namespace A008681.P7941051640202027839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029171 (n + 1) - (f1 (n + 1) - f1 n)

end

end A008681.P7941051640202027839

namespace A008681

/-- `A029171(n+1)-Δ[A037145(n)]` -/
def P7941051640202027839.Spec : Prop :=
  ∀ n, P7941051640202027839.a n = A008681 n

end A008681

/-! ## A008681.P17967179173480672784

`A037145(n)-Δ[A026812(n+3)]`
-/

namespace A008681.P17967179173480672784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n - (f1 (n + 1) - f1 n)

end

end A008681.P17967179173480672784

namespace A008681

/-- `A037145(n)-Δ[A026812(n+3)]` -/
def P17967179173480672784.Spec : Prop :=
  ∀ n, P17967179173480672784.a n = A008681 n

end A008681

/-! ## A008681.P6548564165973173895

`A029000(n+3)-A029007(n+3)`
-/

namespace A008681.P6548564165973173895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029000 (n + 3) - A029007 (n + 3)

end

end A008681.P6548564165973173895

namespace A008681

/-- `A029000(n+3)-A029007(n+3)` -/
def P6548564165973173895.Spec : Prop :=
  ∀ n, P6548564165973173895.a n = A008681 n

end A008681

/-! ## A008681.P7128310942401452477

`Δ[A026812(n+5)-A026812(n+3)]`
-/

namespace A008681.P7128310942401452477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 5) - A026812 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008681.P7128310942401452477

namespace A008681

/-- `Δ[A026812(n+5)-A026812(n+3)]` -/
def P7128310942401452477.Spec : Prop :=
  ∀ n, P7128310942401452477.a n = A008681 n

end A008681

/-! ## A008681.P15529051417909506949

`Δ[Δ[A026812(n+3)+A026812(n+4)]]`
-/

namespace A008681.P15529051417909506949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 3) + A026812 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008681.P15529051417909506949

namespace A008681

/-- `Δ[Δ[A026812(n+3)+A026812(n+4)]]` -/
def P15529051417909506949.Spec : Prop :=
  ∀ n, P15529051417909506949.a n = A008681 n

end A008681

/-! ## A008681.P2456580520348715286

`A029320(2*n)`
-/

namespace A008681.P2456580520348715286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 (2 * n)

end

end A008681.P2456580520348715286

namespace A008681

/-- `A029320(2*n)` -/
def P2456580520348715286.Spec : Prop :=
  ∀ n, P2456580520348715286.a n = A008681 n

end A008681

/-! ## A008681.P3668846056610660753

`A029386(2*n)`
-/

namespace A008681.P3668846056610660753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (2 * n)

end

end A008681.P3668846056610660753

namespace A008681

/-- `A029386(2*n)` -/
def P3668846056610660753.Spec : Prop :=
  ∀ n, P3668846056610660753.a n = A008681 n

end A008681

/-! ## A008681.P8234624734937281670

`A008670(n)-A029250(2*n+1)`
-/

namespace A008681.P8234624734937281670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n - A029250 (2 * n + 1)

end

end A008681.P8234624734937281670

namespace A008681

/-- `A008670(n)-A029250(2*n+1)` -/
def P8234624734937281670.Spec : Prop :=
  ∀ n, P8234624734937281670.a n = A008681 n

end A008681

/-! ## A008681.P3097885876626857090

`A029408(2*n)+A029427(2*n)-A025922(2*n)`
-/

namespace A008681.P3097885876626857090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 (2 * n) + (A029427 (2 * n) - A025922 (2 * n))

end

end A008681.P3097885876626857090

namespace A008681

/-- `A029408(2*n)+A029427(2*n)-A025922(2*n)` -/
def P3097885876626857090.Spec : Prop :=
  ∀ n, P3097885876626857090.a n = A008681 n

end A008681

/-! ## A008681.P3425015556568771623

`A029395(2*n)+A029427(2*n)-A029437(2*n)`
-/

namespace A008681.P3425015556568771623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 (2 * n) + (A029427 (2 * n) - A029437 (2 * n))

end

end A008681.P3425015556568771623

namespace A008681

/-- `A029395(2*n)+A029427(2*n)-A029437(2*n)` -/
def P3425015556568771623.Spec : Prop :=
  ∀ n, P3425015556568771623.a n = A008681 n

end A008681

/-!
# A008682: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)).

The programs for A008682, the canonical program `A008682.P13810349883948471386` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008682 has offset 0).

The definition of A008682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008682.P10267487143202027121

`A025832(lcm(2, n)%(n+2))`
-/

namespace A008682.P10267487143202027121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025832 (Nat.lcm 2 n % (n + 2))

end

end A008682.P10267487143202027121

namespace A008682

/-- `A025832(lcm(2, n)%(n+2))` -/
def P10267487143202027121.Spec : Prop :=
  ∀ n, P10267487143202027121.a n = A008682 n

end A008682

/-! ## A008682.P13810349883948471386

`A025806(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008682

/-- `A025806(n)-a(n-2)` -/
def P13810349883948471386.Spec : Prop :=
  ∀ n, P13810349883948471386.a n = A008682 n

theorem P13810349883948471386.correct : P13810349883948471386.Spec := by
  intro n
  simp only [A008682]

end A008682

/-! ## A008682.P10396142827486575914

`A008680(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A008682.P10396142827486575914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A008680 n - a (n - 3)

end

end A008682.P10396142827486575914

namespace A008682

/-- `A008680(n)-a(n-3)` -/
def P10396142827486575914.Spec : Prop :=
  ∀ n, P10396142827486575914.a n = A008682 n

end A008682

/-! ## A008682.P7236892294781219138

`A025890(2*n)`
-/

namespace A008682.P7236892294781219138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (2 * n)

end

end A008682.P7236892294781219138

namespace A008682

/-- `A025890(2*n)` -/
def P7236892294781219138.Spec : Prop :=
  ∀ n, P7236892294781219138.a n = A008682 n

end A008682

/-! ## A008682.P7973044050902793721

`A029340(2*n)-A029340(2*n+1)`
-/

namespace A008682.P7973044050902793721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 (2 * n) - A029340 (2 * n + 1)

end

end A008682.P7973044050902793721

namespace A008682

/-- `A029340(2*n)-A029340(2*n+1)` -/
def P7973044050902793721.Spec : Prop :=
  ∀ n, P7973044050902793721.a n = A008682 n

end A008682

/-! ## A008682.P3554580823650774146

`2*A029320(2*n)-A029298(2*n)`
-/

namespace A008682.P3554580823650774146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029320 (2 * n) - A029298 (2 * n)

end

end A008682.P3554580823650774146

namespace A008682

/-- `2*A029320(2*n)-A029298(2*n)` -/
def P3554580823650774146.Spec : Prop :=
  ∀ n, P3554580823650774146.a n = A008682 n

end A008682

/-! ## A008682.P12059818688205205740

`Δ[A029207(A136320(n)-n)]`
-/

namespace A008682.P12059818688205205740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029207 (A136320 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008682.P12059818688205205740

namespace A008682

/-- `Δ[A029207(A136320(n)-n)]` -/
def P12059818688205205740.Spec : Prop :=
  ∀ n, P12059818688205205740.a n = A008682 n

end A008682

/-! ## A008682.P14124976686701943305

`A029207(2*n)-A029207(2*n+3)`
-/

namespace A008682.P14124976686701943305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029207 (2 * n) - A029207 (2 * n + 3)

end

end A008682.P14124976686701943305

namespace A008682

/-- `A029207(2*n)-A029207(2*n+3)` -/
def P14124976686701943305.Spec : Prop :=
  ∀ n, P14124976686701943305.a n = A008682 n

end A008682

/-! ## A008682.P8357005929164665031

`Δ[A029207(2*n+3)]`
-/

namespace A008682.P8357005929164665031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029207 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008682.P8357005929164665031

namespace A008682

/-- `Δ[A029207(2*n+3)]` -/
def P8357005929164665031.Spec : Prop :=
  ∀ n, P8357005929164665031.a n = A008682 n

end A008682

/-! ## A008682.P16738331639271112658

`A025924(A166542(n+1)-2)`
-/

namespace A008682.P16738331639271112658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (A166542 (n + 1) - 2).toNat

end

end A008682.P16738331639271112658

namespace A008682

/-- `A025924(A166542(n+1)-2)` -/
def P16738331639271112658.Spec : Prop :=
  ∀ n, P16738331639271112658.a n = A008682 n

end A008682

/-! ## A008682.P2558578701985333338

`A025924(A166542(n+2))`
-/

namespace A008682.P2558578701985333338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (A166542 (n + 2)).toNat

end

end A008682.P2558578701985333338

namespace A008682

/-- `A025924(A166542(n+2))` -/
def P2558578701985333338.Spec : Prop :=
  ∀ n, P2558578701985333338.a n = A008682 n

end A008682

/-!
# A008683: Möbius (or Moebius) function mu(n). mu(1) = 1; mu(n) = (-1)^k if n is the product of k different primes; otherwise mu(n) = 0.

The programs for A008683, the canonical program `A008683.P18254306604665478110` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008683 has offset 1).

The definition of A008683 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132971, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008683.P4196062366343329730

`A174725(n+1)-A174726(n+1)`
-/

namespace A008683.P4196062366343329730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174725 (n + 1) - A174726 (n + 1)

end

end A008683.P4196062366343329730

namespace A008683

/-- `A174725(n+1)-A174726(n+1)` -/
def P4196062366343329730.Spec : Prop :=
  ∀ n, P4196062366343329730.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P9549665044851643546

`A008966(n+1)*A008836(n+1)`
-/

namespace A008683.P9549665044851643546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A008836 (n + 1)

end

end A008683.P9549665044851643546

namespace A008683

/-- `A008966(n+1)*A008836(n+1)` -/
def P9549665044851643546.Spec : Prop :=
  ∀ n, P9549665044851643546.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P16485638579084450646

`A091219(A091202(n+1))`
-/

namespace A008683.P16485638579084450646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091219 (A091202 (n + 1)).toNat

end

end A008683.P16485638579084450646

namespace A008683

/-- `A091219(A091202(n+1))` -/
def P16485638579084450646.Spec : Prop :=
  ∀ n, P16485638579084450646.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P18254306604665478110

`A132971(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A008683

/-- `A132971(A156552(n+1))` -/
def P18254306604665478110.Spec : Prop :=
  ∀ n, P18254306604665478110.a n = A008683 (n + 1)

theorem P18254306604665478110.correct : P18254306604665478110.Spec := by
  intro n
  simp only [A008683, Nat.add_sub_cancel]

end A008683

/-! ## A008683.P8501665238165117454

`∏{e}[n+1, floor(log(atan(#)))]`
-/

namespace A008683.P8501665238165117454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋

end

end A008683.P8501665238165117454

namespace A008683

/-- `∏{e}[n+1, floor(log(atan(#)))]` -/
def P8501665238165117454.Spec : Prop :=
  ∀ n, P8501665238165117454.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P11015736238775945950

`round(acot(∏{e}[n+1, -#]))`
-/

namespace A008683.P11015736238775945950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ))

end

end A008683.P11015736238775945950

namespace A008683

/-- `round(acot(∏{e}[n+1, -#]))` -/
def P11015736238775945950.Spec : Prop :=
  ∀ n, P11015736238775945950.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P4852835714771379312

`∏{e}[n+1, floor(log2(atan(#)))]`
-/

namespace A008683.P4852835714771379312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.logb 2 (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋

end

end A008683.P4852835714771379312

namespace A008683

/-- `∏{e}[n+1, floor(log2(atan(#)))]` -/
def P4852835714771379312.Spec : Prop :=
  ∀ n, P4852835714771379312.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P10736294816071761024

`∏{e}[n+1, -floor(1/#)]`
-/

namespace A008683.P10736294816071761024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A008683.P10736294816071761024

namespace A008683

/-- `∏{e}[n+1, -floor(1/#)]` -/
def P10736294816071761024.Spec : Prop :=
  ∀ n, P10736294816071761024.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P10880961901516299976

`∏{e}[n+1, -#!]%2`
-/

namespace A008683.P10880961901516299976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorial (Nat.factorization (f1 n) p) : ℤ))) 2

end

end A008683.P10880961901516299976

namespace A008683

/-- `∏{e}[n+1, -#!]%2` -/
def P10880961901516299976.Spec : Prop :=
  ∀ n, P10880961901516299976.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P5035528370138810329

`round(1/∏{e}[n+1, -#²])`
-/

namespace A008683.P5035528370138810329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ))

end

end A008683.P5035528370138810329

namespace A008683

/-- `round(1/∏{e}[n+1, -#²])` -/
def P5035528370138810329.Spec : Prop :=
  ∀ n, P5035528370138810329.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P10345183324933684733

`round(∏{e}[n+1, -#^-2])`
-/

namespace A008683.P10345183324933684733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (-((Nat.factorization (f1 n) p : ℚ) ^ (-2 : ℤ))))

end

end A008683.P10345183324933684733

namespace A008683

/-- `round(∏{e}[n+1, -#^-2])` -/
def P10345183324933684733.Spec : Prop :=
  ∀ n, P10345183324933684733.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P3889936353002934626

`round(∏{p}[n+1, -#]/(n+2))`
-/

namespace A008683.P3889936353002934626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 2 : ℚ))

end

end A008683.P3889936353002934626

namespace A008683

/-- `round(∏{p}[n+1, -#]/(n+2))` -/
def P3889936353002934626.Spec : Prop :=
  ∀ n, P3889936353002934626.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P115523869281108849

`A007423(n+1)-1`
-/

namespace A008683.P115523869281108849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - 1

end

end A008683.P115523869281108849

namespace A008683

/-- `A007423(n+1)-1` -/
def P115523869281108849.Spec : Prop :=
  ∀ n, P115523869281108849.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P6807549752467484664

`A080847(n+1)-2`
-/

namespace A008683.P6807549752467484664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) - 2

end

end A008683.P6807549752467484664

namespace A008683

/-- `A080847(n+1)-2` -/
def P6807549752467484664.Spec : Prop :=
  ∀ n, P6807549752467484664.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P11634581102269533687

`2-A129979(n+1)`
-/

namespace A008683.P11634581102269533687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A129979 (n + 1)

end

end A008683.P11634581102269533687

namespace A008683

/-- `2-A129979(n+1)` -/
def P11634581102269533687.Spec : Prop :=
  ∀ n, P11634581102269533687.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P3016862492446876216

`A231821(n+1)-3`
-/

namespace A008683.P3016862492446876216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231821 (n + 1) - 3

end

end A008683.P3016862492446876216

namespace A008683

/-- `A231821(n+1)-3` -/
def P3016862492446876216.Spec : Prop :=
  ∀ n, P3016862492446876216.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P4958737378910175434

`A162512(n+1)%2`
-/

namespace A008683.P4958737378910175434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162512 (n + 1)) 2

end

end A008683.P4958737378910175434

namespace A008683

/-- `A162512(n+1)%2` -/
def P4958737378910175434.Spec : Prop :=
  ∀ n, P4958737378910175434.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P3035034823747325632

`A325891(n+1)%2`
-/

namespace A008683.P3035034823747325632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325891 (n + 1)) 2

end

end A008683.P3035034823747325632

namespace A008683

/-- `A325891(n+1)%2` -/
def P3035034823747325632.Spec : Prop :=
  ∀ n, P3035034823747325632.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P6054996948600703148

`A326415(n+1)%2`
-/

namespace A008683.P6054996948600703148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326415 (n + 1)) 2

end

end A008683.P6054996948600703148

namespace A008683

/-- `A326415(n+1)%2` -/
def P6054996948600703148.Spec : Prop :=
  ∀ n, P6054996948600703148.a n = A008683 (n + 1)

end A008683

/-! ## A008683.P5520915597403327867

`A326814(n+1)%2`
-/

namespace A008683.P5520915597403327867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326814 (n + 1)) 2

end

end A008683.P5520915597403327867

namespace A008683

/-- `A326814(n+1)%2` -/
def P5520915597403327867.Spec : Prop :=
  ∀ n, P5520915597403327867.a n = A008683 (n + 1)

end A008683

/-!
# A008685: Lengths of months in the Gregorian calendar.

The programs for A008685, there is no canonical definition to state claims against.
-/

/-! ## A008685.P6556646143535191278

`Δ[A061251(n)]`
-/

namespace A008685.P6556646143535191278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008685.P6556646143535191278

/-! ## A008685.P9389904360181056457

`A061251(n+1)-A061251(n)`
-/

namespace A008685.P9389904360181056457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061251 (n + 1) - A061251 n

end

end A008685.P9389904360181056457

/-! ## A008685.P789884738565187647

`abs(Δ[A073304(n)])`
-/

namespace A008685.P789884738565187647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A008685.P789884738565187647

/-! ## A008685.P15728197570392053591

`A008684(A061251(n+1))`
-/

namespace A008685.P15728197570392053591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (A061251 (n + 1)).toNat

end

end A008685.P15728197570392053591

/-! ## A008685.P7758980185654110409

`A000027(Δ[-A073304(n)])`
-/

namespace A008685.P7758980185654110409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A073304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A008685.P7758980185654110409

/-!
# A008686: Day-of-month at weekly intervals from Jan 01 of a non-leap year (a finite sequence with 53 terms).

The programs for A008686, there is no canonical definition to state claims against.
-/

/-! ## A008686.P17399631411168132434

`A008684(7*n+1)`
-/

namespace A008686.P17399631411168132434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008684 (7 * n + 1)

end

end A008686.P17399631411168132434

/-!
# A008687: Number of 1's in 2's complement representation of -n.

The programs for A008687, the canonical program `A008687.P7293860685937336556` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008687 has offset 0).

The definition of A008687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008687.P7293860685937336556

`n%2+a(n%2+floor(n/2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008687

/-- `n%2+a(n%2+floor(n/2))` -/
def P7293860685937336556.Spec : Prop :=
  ∀ n, (P7293860685937336556.a n : ℤ) = A008687 n

theorem P7293860685937336556.correct : P7293860685937336556.Spec := by
  intro n
  simp only [A008687]

end A008687

/-! ## A008687.P1616371058377632158

`a(∑[a(n-2)²])+n%2` with `a(0)=0, a(1)=1`
-/

namespace A008687.P1616371058377632158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j) + n % 2

end

end A008687.P1616371058377632158

namespace A008687

/-- `a(∑[a(n-2)²])+n%2` -/
def P1616371058377632158.Spec : Prop :=
  ∀ n, (P1616371058377632158.a n : ℤ) = A008687 n

end A008687

/-! ## A008687.P13677518272196002353

`val(A267584(comp[2*(n+1)]), 2)`
-/

namespace A008687.P13677518272196002353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A267584 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat 2

end

end A008687.P13677518272196002353

namespace A008687

/-- `val(A267584(comp[2*(n+1)]), 2)` -/
def P13677518272196002353.Spec : Prop :=
  ∀ n, (P13677518272196002353.a n : ℤ) = A008687 n

end A008687

/-! ## A008687.P14323715847408488917

`A290251(A004273(n))`
-/

namespace A008687.P14323715847408488917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A004273 n).toNat

end

end A008687.P14323715847408488917

namespace A008687

/-- `A290251(A004273(n))` -/
def P14323715847408488917.Spec : Prop :=
  ∀ n, P14323715847408488917.a n = A008687 n

end A008687

/-! ## A008687.P10634610111268880589

`A290251(A129343(n))`
-/

namespace A008687.P10634610111268880589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A129343 n).toNat

end

end A008687.P10634610111268880589

namespace A008687

/-- `A290251(A129343(n))` -/
def P10634610111268880589.Spec : Prop :=
  ∀ n, P10634610111268880589.a n = A008687 n

end A008687

/-! ## A008687.P3181138606106525856

`A290251(A153151(n))`
-/

namespace A008687.P3181138606106525856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A153151 n).toNat

end

end A008687.P3181138606106525856

namespace A008687

/-- `A290251(A153151(n))` -/
def P3181138606106525856.Spec : Prop :=
  ∀ n, P3181138606106525856.a n = A008687 n

end A008687

/-! ## A008687.P7912473971196535610

`A290251(A004760(n+1))`
-/

namespace A008687.P7912473971196535610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A004760 (n + 1)).toNat

end

end A008687.P7912473971196535610

namespace A008687

/-- `A290251(A004760(n+1))` -/
def P7912473971196535610.Spec : Prop :=
  ∀ n, P7912473971196535610.a n = A008687 n

end A008687

/-! ## A008687.P1211020426574068200

`A290251(n)-A089263(n)`
-/

namespace A008687.P1211020426574068200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 n - A089263 n

end

end A008687.P1211020426574068200

namespace A008687

/-- `A290251(n)-A089263(n)` -/
def P1211020426574068200.Spec : Prop :=
  ∀ n, P1211020426574068200.a n = A008687 n

end A008687

/-! ## A008687.P5302922381857372173

`A304687(A267584(comp[2*(n+1)]))`
-/

namespace A008687.P5302922381857372173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304687 (A267584 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A008687.P5302922381857372173

namespace A008687

/-- `A304687(A267584(comp[2*(n+1)]))` -/
def P5302922381857372173.Spec : Prop :=
  ∀ n, P5302922381857372173.a n = A008687 n

end A008687

/-! ## A008687.P5460698473795985486

`A080791(n-A057427(n))+A057427(n)`
-/

namespace A008687.P5460698473795985486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A008687.P5460698473795985486

namespace A008687

/-- `A080791(n-A057427(n))+A057427(n)` -/
def P5460698473795985486.Spec : Prop :=
  ∀ n, P5460698473795985486.a n = A008687 n

end A008687

/-! ## A008687.P7991292180130961804

`(A270200(n+1)+2)%(2*n+1)`
-/

namespace A008687.P7991292180130961804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270200 (n + 1) + 2) (2 * n + 1 : ℤ)

end

end A008687.P7991292180130961804

namespace A008687

/-- `(A270200(n+1)+2)%(2*n+1)` -/
def P7991292180130961804.Spec : Prop :=
  ∀ n, P7991292180130961804.a n = A008687 n

end A008687

/-! ## A008687.P1262654095837270325

`A000120(A122155(n))`
-/

namespace A008687.P1262654095837270325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A122155 n).toNat

end

end A008687.P1262654095837270325

namespace A008687

/-- `A000120(A122155(n))` -/
def P1262654095837270325.Spec : Prop :=
  ∀ n, P1262654095837270325.a n = A008687 n

end A008687

/-! ## A008687.P1556433494645634220

`A000120((A054429(n+1)+2)%∑[n+1])`
-/

namespace A008687.P1556433494645634220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A054429 (n + 1) + 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A008687.P1556433494645634220

namespace A008687

/-- `A000120((A054429(n+1)+2)%∑[n+1])` -/
def P1556433494645634220.Spec : Prop :=
  ∀ n, P1556433494645634220.a n = A008687 n

end A008687

/-! ## A008687.P1090860996783573182

`A023416(n+1-(3-n)%(n+1))`
-/

namespace A008687.P1090860996783573182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 ((n + 1 : ℤ) - Int.tmod (3 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A008687.P1090860996783573182

namespace A008687

/-- `A023416(n+1-(3-n)%(n+1))` -/
def P1090860996783573182.Spec : Prop :=
  ∀ n, P1090860996783573182.a n = A008687 n

end A008687

/-! ## A008687.P15301290765337613152

`A023416(A300576(n+1))`
-/

namespace A008687.P15301290765337613152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A300576 (n + 1)).toNat

end

end A008687.P15301290765337613152

namespace A008687

/-- `A023416(A300576(n+1))` -/
def P15301290765337613152.Spec : Prop :=
  ∀ n, P15301290765337613152.a n = A008687 n

end A008687

/-! ## A008687.P4842753228887247947

`A023416(xor(1, A004273(n)))`
-/

namespace A008687.P4842753228887247947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.xor 1 (A004273 n)).toNat

end

end A008687.P4842753228887247947

namespace A008687

/-- `A023416(xor(1, A004273(n)))` -/
def P4842753228887247947.Spec : Prop :=
  ∀ n, P4842753228887247947.a n = A008687 n

end A008687

/-! ## A008687.P9905990042031572032

`A023416(A111284(n+1)-n-n)`
-/

namespace A008687.P9905990042031572032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A111284 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A008687.P9905990042031572032

namespace A008687

/-- `A023416(A111284(n+1)-n-n)` -/
def P9905990042031572032.Spec : Prop :=
  ∀ n, P9905990042031572032.a n = A008687 n

end A008687

/-! ## A008687.P13425999001704580875

`A080791(2*n)-A089263(n)`
-/

namespace A008687.P13425999001704580875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * n) - A089263 n

end

end A008687.P13425999001704580875

namespace A008687

/-- `A080791(2*n)-A089263(n)` -/
def P13425999001704580875.Spec : Prop :=
  ∀ n, P13425999001704580875.a n = A008687 n

end A008687

/-! ## A008687.P3929511801925186210

`A256478(A233276(comp[2*(n+1)]))`
-/

namespace A008687.P3929511801925186210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256478 (A233276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A008687.P3929511801925186210

namespace A008687

/-- `A256478(A233276(comp[2*(n+1)]))` -/
def P3929511801925186210.Spec : Prop :=
  ∀ n, P3929511801925186210.a n = A008687 n

end A008687

/-! ## A008687.P5315931866395565455

`A000120(A035327(abs(1-n)+n-1)+n-1)`
-/

namespace A008687.P5315931866395565455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 (|1 - (n : ℤ)| + ((n : ℤ) - 1)).toNat + ((n : ℤ) - 1)).toNat

end

end A008687.P5315931866395565455

namespace A008687

/-- `A000120(A035327(abs(1-n)+n-1)+n-1)` -/
def P5315931866395565455.Spec : Prop :=
  ∀ n, P5315931866395565455.a n = A008687 n

end A008687

/-!
# A008688: Theta series of Niemeier lattice of type D_24.

The programs for A008688, there is no canonical definition to state claims against.
-/

/-! ## A008688.P10004752812786657914

`2*A008411(n)-A008693(n)`
-/

namespace A008688.P10004752812786657914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008411 n - A008693 n

end

end A008688.P10004752812786657914

/-! ## A008688.P2342832805574675698

`2*A008689(n)-A008702(n)`
-/

namespace A008688.P2342832805574675698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008689 n - A008702 n

end

end A008688.P2342832805574675698

/-! ## A008688.P10343030856441778095

`A008411(n)+A008692(n)-A008408(n)`
-/

namespace A008688.P10343030856441778095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008411 n + (A008692 n - A008408 n)

end

end A008688.P10343030856441778095

/-! ## A008688.P18019683235961513556

`A008411(n)+A008689(n)-A008697(n)`
-/

namespace A008688.P18019683235961513556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008411 n + (A008689 n - A008697 n)

end

end A008688.P18019683235961513556

/-! ## A008688.P6137116674028643245

`A008411(n)+A008690(n)-A008700(n)`
-/

namespace A008688.P6137116674028643245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008411 n + (A008690 n - A008700 n)

end

end A008688.P6137116674028643245

/-! ## A008688.P13340036810645499361

`2*A008704(n)-A280869(n)`
-/

namespace A008688.P13340036810645499361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008704 n - A280869 n

end

end A008688.P13340036810645499361

/-! ## A008688.P3792490140646167563

`A008411(n)+A008691(n)-A008704(n)`
-/

namespace A008688.P3792490140646167563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008411 n + (A008691 n - A008704 n)

end

end A008688.P3792490140646167563

/-!
# A008689: Theta series of Niemeier lattice of type A_24.

The programs for A008689, there is no canonical definition to state claims against.
-/

/-! ## A008689.P2333560728871022206

`A023936(25*n)`
-/

namespace A008689.P2333560728871022206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023936 (25 * n)

end

end A008689.P2333560728871022206

/-! ## A008689.P4799124226928514387

`2*A008693(n)-A008703(n)`
-/

namespace A008689.P4799124226928514387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008693 n - A008703 n

end

end A008689.P4799124226928514387

/-! ## A008689.P13238254171399348787

`A008691(n)+A008692(n)-A008697(n)`
-/

namespace A008689.P13238254171399348787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008692 n - A008697 n)

end

end A008689.P13238254171399348787

/-! ## A008689.P8473170225011331186

`(A008702(n)+A008688(n))/2`
-/

namespace A008689.P8473170225011331186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008702 n + A008688 n : ℚ) / 2

end

end A008689.P8473170225011331186

/-! ## A008689.P4001345109008734729

`2*A008692(n)-A008699(n)`
-/

namespace A008689.P4001345109008734729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008692 n - A008699 n

end

end A008689.P4001345109008734729

/-! ## A008689.P16094658474165357234

`A008690(n)+A008692(n)-A008694(n)`
-/

namespace A008689.P16094658474165357234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008692 n - A008694 n)

end

end A008689.P16094658474165357234

/-! ## A008689.P14069254824925686704

`A008690(n)+A008694(n)-A008696(n)`
-/

namespace A008689.P14069254824925686704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008694 n - A008696 n)

end

end A008689.P14069254824925686704

/-! ## A008689.P5045395052814270756

`A008690(n)+A008696(n)-A008699(n)`
-/

namespace A008689.P5045395052814270756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008696 n - A008699 n)

end

end A008689.P5045395052814270756

/-! ## A008689.P8196595798507932333

`A008690(n)+A008697(n)-A008700(n)`
-/

namespace A008689.P8196595798507932333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008697 n - A008700 n)

end

end A008689.P8196595798507932333

/-! ## A008689.P14992107080693558410

`A008690(n)+A008700(n)-A008703(n)`
-/

namespace A008689.P14992107080693558410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008700 n - A008703 n)

end

end A008689.P14992107080693558410

/-! ## A008689.P5649385232756494832

`A008693(n)+A008694(n)-A008704(n)`
-/

namespace A008689.P5649385232756494832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008694 n - A008704 n)

end

end A008689.P5649385232756494832

/-! ## A008689.P5177362064875799561

`A008690(n)+A008695(n)-A008697(n)`
-/

namespace A008689.P5177362064875799561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008695 n - A008697 n)

end

end A008689.P5177362064875799561

/-!
# A008690: Theta series of Niemeier lattice of type D_12^2.

The programs for A008690, there is no canonical definition to state claims against.
-/

/-! ## A008690.P6072707643581434016

`(A008693(n)+A008411(n))/2`
-/

namespace A008690.P6072707643581434016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008693 n + A008411 n : ℚ) / 2

end

end A008690.P6072707643581434016

/-! ## A008690.P13153321498669221711

`2*A008691(n)-A008693(n)`
-/

namespace A008690.P13153321498669221711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008691 n - A008693 n

end

end A008690.P13153321498669221711

/-! ## A008690.P10413250181345908222

`2*A008692(n)-A008696(n)`
-/

namespace A008690.P10413250181345908222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008692 n - A008696 n

end

end A008690.P10413250181345908222

/-! ## A008690.P15941977718366783307

`2*A008693(n)-A008700(n)`
-/

namespace A008690.P15941977718366783307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008693 n - A008700 n

end

end A008690.P15941977718366783307

/-! ## A008690.P6266091212801467397

`2*A008694(n)-A008702(n)`
-/

namespace A008690.P6266091212801467397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008694 n - A008702 n

end

end A008690.P6266091212801467397

/-! ## A008690.P4912339949451940774

`A008411(n)+A008696(n)-A008691(n)`
-/

namespace A008690.P4912339949451940774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008411 n + (A008696 n - A008691 n)

end

end A008690.P4912339949451940774

/-! ## A008690.P7666824819634311582

`A008691(n)+A008694(n)-A008697(n)`
-/

namespace A008690.P7666824819634311582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008694 n - A008697 n)

end

end A008690.P7666824819634311582

/-! ## A008690.P5746416316985585488

`A008692(n)+A008693(n)-A008698(n)`
-/

namespace A008690.P5746416316985585488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008693 n - A008698 n)

end

end A008690.P5746416316985585488

/-! ## A008690.P11517044411612442952

`A008693(n)+A008691(n)-A008696(n)`
-/

namespace A008690.P11517044411612442952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + A008691 n - A008696 n

end

end A008690.P11517044411612442952

/-! ## A008690.P14983323920424818157

`A008693(n)+A008696(n)-A008704(n)`
-/

namespace A008690.P14983323920424818157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008696 n - A008704 n)

end

end A008690.P14983323920424818157

/-! ## A008690.P1827857310720379346

`2*A008695(n)-A008704(n)`
-/

namespace A008690.P1827857310720379346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008695 n - A008704 n

end

end A008690.P1827857310720379346

/-! ## A008690.P14342919964775851136

`A008691(n)+A008692(n)-A008695(n)`
-/

namespace A008690.P14342919964775851136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008692 n - A008695 n)

end

end A008690.P14342919964775851136

/-! ## A008690.P7475117597727791332

`A008691(n)+A008695(n)-A008698(n)`
-/

namespace A008690.P7475117597727791332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008695 n - A008698 n)

end

end A008690.P7475117597727791332

/-!
# A008691: Theta series of Niemeier lattice of type A_17 E_7.

The programs for A008691, there is no canonical definition to state claims against.
-/

/-! ## A008691.P5764959592807248849

`2*A008692(n)-A008693(n)`
-/

namespace A008691.P5764959592807248849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008692 n - A008693 n

end

end A008691.P5764959592807248849

/-! ## A008691.P2830636456779149079

`2*A008693(n)-A008696(n)`
-/

namespace A008691.P2830636456779149079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008693 n - A008696 n

end

end A008691.P2830636456779149079

/-! ## A008691.P12185666226161486225

`(A008700(n)+A008411(n))/2`
-/

namespace A008691.P12185666226161486225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008700 n + A008411 n : ℚ) / 2

end

end A008691.P12185666226161486225

/-! ## A008691.P16312315576253104288

`2*A008694(n)-A008698(n)`
-/

namespace A008691.P16312315576253104288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008694 n - A008698 n

end

end A008691.P16312315576253104288

/-! ## A008691.P5775692128059914444

`(A008693(n)+A008690(n))/2`
-/

namespace A008691.P5775692128059914444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008693 n + A008690 n : ℚ) / 2

end

end A008691.P5775692128059914444

/-! ## A008691.P7925937171276215537

`A008411(n)+A008696(n)-A008690(n)`
-/

namespace A008691.P7925937171276215537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008411 n + (A008696 n - A008690 n)

end

end A008691.P7925937171276215537

/-! ## A008691.P14917210425665076909

`A008690(n)+A008696(n)-A008693(n)`
-/

namespace A008691.P14917210425665076909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008696 n - A008693 n)

end

end A008691.P14917210425665076909

/-! ## A008691.P7454284976832253171

`A008690(n)+A008697(n)-A008694(n)`
-/

namespace A008691.P7454284976832253171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008697 n - A008694 n)

end

end A008691.P7454284976832253171

/-! ## A008691.P10670031608039491782

`2*A008696(n)-A008704(n)`
-/

namespace A008691.P10670031608039491782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008696 n - A008704 n

end

end A008691.P10670031608039491782

/-! ## A008691.P17971712116617876396

`A008688(n)+A008704(n)-A008411(n)`
-/

namespace A008691.P17971712116617876396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008688 n + (A008704 n - A008411 n)

end

end A008691.P17971712116617876396

/-! ## A008691.P705900238297169470

`2*A008695(n)-A008700(n)`
-/

namespace A008691.P705900238297169470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008695 n - A008700 n

end

end A008691.P705900238297169470

/-! ## A008691.P12517113916157877603

`A008690(n)+A008695(n)-A008692(n)`
-/

namespace A008691.P12517113916157877603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008695 n - A008692 n)

end

end A008691.P12517113916157877603

/-! ## A008691.P16612909179438344133

`A008693(n)+A008692(n)-A008695(n)`
-/

namespace A008691.P16612909179438344133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + A008692 n - A008695 n

end

end A008691.P16612909179438344133

/-!
# A008692: Theta series of Niemeier lattice of type A_15 D_9.

The programs for A008692, there is no canonical definition to state claims against.
-/

/-! ## A008692.P3293716909707227683

`(A008693(n)+A008691(n))/2`
-/

namespace A008692.P3293716909707227683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008693 n + A008691 n : ℚ) / 2

end

end A008692.P3293716909707227683

/-! ## A008692.P9415458996330174462

`A008693(n)+A008700(n)-A008702(n)`
-/

namespace A008692.P9415458996330174462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008700 n - A008702 n)

end

end A008692.P9415458996330174462

/-! ## A008692.P13069803499931139622

`2*A008694(n)-A008696(n)`
-/

namespace A008692.P13069803499931139622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008694 n - A008696 n

end

end A008692.P13069803499931139622

/-! ## A008692.P15957754076753078705

`A008693(n)+A008697(n)-A008699(n)`
-/

namespace A008692.P15957754076753078705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008697 n - A008699 n)

end

end A008692.P15957754076753078705

/-! ## A008692.P5537530686411070948

`(A008696(n)+A008690(n))/2`
-/

namespace A008692.P5537530686411070948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008696 n + A008690 n : ℚ) / 2

end

end A008692.P5537530686411070948

/-! ## A008692.P8909369677033191486

`A008411(n)+A008698(n)-A008690(n)`
-/

namespace A008692.P8909369677033191486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008411 n + (A008698 n - A008690 n)

end

end A008692.P8909369677033191486

/-! ## A008692.P12109751587732614879

`(A008704(n)+A008411(n))/2`
-/

namespace A008692.P12109751587732614879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008704 n + A008411 n : ℚ) / 2

end

end A008692.P12109751587732614879

/-! ## A008692.P15645910657967816557

`2*A008697(n)-A008704(n)`
-/

namespace A008692.P15645910657967816557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008704 n

end

end A008692.P15645910657967816557

/-! ## A008692.P4090147941388366145

`A008696(n)+A008698(n)-A008704(n)`
-/

namespace A008692.P4090147941388366145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008696 n + (A008698 n - A008704 n)

end

end A008692.P4090147941388366145

/-! ## A008692.P13418120789656294505

`2*A008693(n)-A008695(n)`
-/

namespace A008692.P13418120789656294505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008693 n - A008695 n

end

end A008692.P13418120789656294505

/-! ## A008692.P17428624758496061368

`2*A008695(n)-A008698(n)`
-/

namespace A008692.P17428624758496061368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008695 n - A008698 n

end

end A008692.P17428624758496061368

/-! ## A008692.P14611411608932058733

`A008690(n)+A008695(n)-A008691(n)`
-/

namespace A008692.P14611411608932058733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008695 n - A008691 n)

end

end A008692.P14611411608932058733

/-! ## A008692.P5571819715736726417

`A008695(n)+A008693(n)-A008696(n)`
-/

namespace A008692.P5571819715736726417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008695 n + A008693 n - A008696 n

end

end A008692.P5571819715736726417

/-!
# A008693: Theta series of Niemeier lattice of type D_8^3.

The programs for A008693, there is no canonical definition to state claims against.
-/

/-! ## A008693.P3044972104537180727

`2*A008692(n)-A008691(n)`
-/

namespace A008693.P3044972104537180727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008692 n - A008691 n

end

end A008693.P3044972104537180727

/-! ## A008693.P8665736768164235605

`A008408(n)+A008411(n)-A008692(n)`
-/

namespace A008693.P8665736768164235605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008408 n + (A008411 n - A008692 n)

end

end A008693.P8665736768164235605

/-! ## A008693.P8777383867609946652

`(A008696(n)+A008691(n))/2`
-/

namespace A008693.P8777383867609946652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008696 n + A008691 n : ℚ) / 2

end

end A008693.P8777383867609946652

/-! ## A008693.P5494564445623651874

`2*A008696(n)-A008700(n)`
-/

namespace A008693.P5494564445623651874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008696 n - A008700 n

end

end A008693.P5494564445623651874

/-! ## A008693.P183814171759748009

`2*A008697(n)-A008702(n)`
-/

namespace A008693.P183814171759748009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008702 n

end

end A008693.P183814171759748009

/-! ## A008693.P11839445071223854841

`A008411(n)+A008697(n)-A008689(n)`
-/

namespace A008693.P11839445071223854841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008411 n + (A008697 n - A008689 n)

end

end A008693.P11839445071223854841

/-! ## A008693.P8020844049719011174

`A008691(n)+A008697(n)-A008694(n)`
-/

namespace A008693.P8020844049719011174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008697 n - A008694 n)

end

end A008693.P8020844049719011174

/-! ## A008693.P16786075056553328992

`2*A008690(n)-A008411(n)`
-/

namespace A008693.P16786075056553328992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008690 n - A008411 n

end

end A008693.P16786075056553328992

/-! ## A008693.P17967555741638238040

`2*A008691(n)-A008690(n)`
-/

namespace A008693.P17967555741638238040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008691 n - A008690 n

end

end A008693.P17967555741638238040

/-! ## A008693.P15353473832030975357

`(A008700(n)+A008690(n))/2`
-/

namespace A008693.P15353473832030975357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008700 n + A008690 n : ℚ) / 2

end

end A008693.P15353473832030975357

/-! ## A008693.P18069476669213924365

`A008700(n)+A008411(n)-A008690(n)`
-/

namespace A008693.P18069476669213924365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + A008411 n - A008690 n

end

end A008693.P18069476669213924365

/-! ## A008693.P16623170977150890476

`A008690(n)+A008696(n)-A008691(n)`
-/

namespace A008693.P16623170977150890476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008696 n - A008691 n)

end

end A008693.P16623170977150890476

/-! ## A008693.P12662637742964067285

`A008690(n)+A008698(n)-A008692(n)`
-/

namespace A008693.P12662637742964067285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008698 n - A008692 n)

end

end A008693.P12662637742964067285

/-! ## A008693.P5150475229222490713

`2*A008698(n)-A008704(n)`
-/

namespace A008693.P5150475229222490713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008704 n

end

end A008693.P5150475229222490713

/-! ## A008693.P13448343368228485386

`A008411(n)+A008704(n)-A008691(n)`
-/

namespace A008693.P13448343368228485386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008411 n + (A008704 n - A008691 n)

end

end A008693.P13448343368228485386

/-! ## A008693.P15995953846545242854

`2*A008694(n)-A008695(n)`
-/

namespace A008693.P15995953846545242854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008694 n - A008695 n

end

end A008693.P15995953846545242854

/-! ## A008693.P222620262967704685

`2*A008695(n)-A008696(n)`
-/

namespace A008693.P222620262967704685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008695 n - A008696 n

end

end A008693.P222620262967704685

/-! ## A008693.P2139496679669955514

`(A008695(n)+A008692(n))/2`
-/

namespace A008693.P2139496679669955514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008695 n + A008692 n : ℚ) / 2

end

end A008693.P2139496679669955514

/-! ## A008693.P999842900649696507

`A008691(n)+A008695(n)-A008692(n)`
-/

namespace A008693.P999842900649696507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008695 n - A008692 n)

end

end A008693.P999842900649696507

/-! ## A008693.P1338106185452204256

`A008691(n)+A008698(n)-A008695(n)`
-/

namespace A008693.P1338106185452204256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008698 n - A008695 n)

end

end A008693.P1338106185452204256

/-!
# A008694: Theta series of Niemeier lattice of type A_12^2.

The programs for A008694, there is no canonical definition to state claims against.
-/

/-! ## A008694.P927830468872627718

`(A008696(n)+A008692(n))/2`
-/

namespace A008694.P927830468872627718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008696 n + A008692 n : ℚ) / 2

end

end A008694.P927830468872627718

/-! ## A008694.P5310243882613997860

`(A008698(n)+A008691(n))/2`
-/

namespace A008694.P5310243882613997860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008698 n + A008691 n : ℚ) / 2

end

end A008694.P5310243882613997860

/-! ## A008694.P9393022995914987698

`2*A008698(n)-A008703(n)`
-/

namespace A008694.P9393022995914987698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008703 n

end

end A008694.P9393022995914987698

/-! ## A008694.P13943715664260788210

`A008691(n)+A008702(n)-A008697(n)`
-/

namespace A008694.P13943715664260788210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008702 n - A008697 n)

end

end A008694.P13943715664260788210

/-! ## A008694.P3059417937362235082

`2*A008696(n)-A008699(n)`
-/

namespace A008694.P3059417937362235082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008696 n - A008699 n

end

end A008694.P3059417937362235082

/-! ## A008694.P3404063295936977766

`A008690(n)+A008692(n)-A008689(n)`
-/

namespace A008694.P3404063295936977766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008692 n - A008689 n)

end

end A008694.P3404063295936977766

/-! ## A008694.P823620208338511555

`A008690(n)+A008697(n)-A008691(n)`
-/

namespace A008694.P823620208338511555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008697 n - A008691 n)

end

end A008694.P823620208338511555

/-! ## A008694.P9648635216212689734

`A008690(n)+A008699(n)-A008692(n)`
-/

namespace A008694.P9648635216212689734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008690 n + (A008699 n - A008692 n)

end

end A008694.P9648635216212689734

/-! ## A008694.P10029689136815510725

`A008698(n)+A008699(n)-A008704(n)`
-/

namespace A008694.P10029689136815510725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 n + (A008699 n - A008704 n)

end

end A008694.P10029689136815510725

/-! ## A008694.P13790359865252931364

`(A008695(n)+A008693(n))/2`
-/

namespace A008694.P13790359865252931364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008695 n + A008693 n : ℚ) / 2

end

end A008694.P13790359865252931364

/-! ## A008694.P11457685148045009332

`A008695(n)+A008696(n)-A008697(n)`
-/

namespace A008694.P11457685148045009332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008695 n + (A008696 n - A008697 n)

end

end A008694.P11457685148045009332

/-! ## A008694.P562325131895424773

`A008695(n)+A008697(n)-A008698(n)`
-/

namespace A008694.P562325131895424773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008695 n + (A008697 n - A008698 n)

end

end A008694.P562325131895424773

/-! ## A008694.P18355585885859460166

`A008695(n)+A008698(n)-A008699(n)`
-/

namespace A008694.P18355585885859460166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008695 n + (A008698 n - A008699 n)

end

end A008694.P18355585885859460166

/-!
# A008695: Theta series of Niemeier lattice of type A_11 D_7 E_6.

The programs for A008695, there is no canonical definition to state claims against.
-/

/-! ## A008695.P8355914226676312560

`2*A008693(n)-A008692(n)`
-/

namespace A008695.P8355914226676312560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008693 n - A008692 n

end

end A008695.P8355914226676312560

/-! ## A008695.P16131666882446327092

`2*A008694(n)-A008693(n)`
-/

namespace A008695.P16131666882446327092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008694 n - A008693 n

end

end A008695.P16131666882446327092

/-! ## A008695.P8544430414888963960

`2*A008696(n)-A008698(n)`
-/

namespace A008695.P8544430414888963960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008696 n - A008698 n

end

end A008695.P8544430414888963960

/-! ## A008695.P4618301218457583921

`(A008696(n)+A008693(n))/2`
-/

namespace A008695.P4618301218457583921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008696 n + A008693 n : ℚ) / 2

end

end A008695.P4618301218457583921

/-! ## A008695.P4246297096722470050

`(A008698(n)+A008692(n))/2`
-/

namespace A008695.P4246297096722470050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008698 n + A008692 n : ℚ) / 2

end

end A008695.P4246297096722470050

/-! ## A008695.P10799326170498140129

`2*A008697(n)-A008700(n)`
-/

namespace A008695.P10799326170498140129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008700 n

end

end A008695.P10799326170498140129

/-! ## A008695.P4531138360494971274

`(A008700(n)+A008691(n))/2`
-/

namespace A008695.P4531138360494971274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008700 n + A008691 n : ℚ) / 2

end

end A008695.P4531138360494971274

/-! ## A008695.P2151984193494393350

`2*A008698(n)-A008702(n)`
-/

namespace A008695.P2151984193494393350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008702 n

end

end A008695.P2151984193494393350

/-! ## A008695.P13796782982527446144

`(A008704(n)+A008690(n))/2`
-/

namespace A008695.P13796782982527446144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008704 n + A008690 n : ℚ) / 2

end

end A008695.P13796782982527446144

/-! ## A008695.P4037327216065234914

`2*A008699(n)-A008704(n)`
-/

namespace A008695.P4037327216065234914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008699 n - A008704 n

end

end A008695.P4037327216065234914

/-! ## A008695.P15679735708535577047

`A008691(n)+A008692(n)-A008690(n)`
-/

namespace A008695.P15679735708535577047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008692 n - A008690 n)

end

end A008695.P15679735708535577047

/-! ## A008695.P7097488873863649220

`A008692(n)+A008693(n)-A008691(n)`
-/

namespace A008695.P7097488873863649220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008693 n - A008691 n)

end

end A008695.P7097488873863649220

/-! ## A008695.P6076751362280495554

`A008692(n)+A008702(n)-A008698(n)`
-/

namespace A008695.P6076751362280495554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008702 n - A008698 n)

end

end A008695.P6076751362280495554

/-! ## A008695.P12191851133794723488

`A008693(n)+A008699(n)-A008697(n)`
-/

namespace A008695.P12191851133794723488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008699 n - A008697 n)

end

end A008695.P12191851133794723488

/-! ## A008695.P7187347817606716782

`A008693(n)+A008702(n)-A008700(n)`
-/

namespace A008695.P7187347817606716782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008702 n - A008700 n)

end

end A008695.P7187347817606716782

/-! ## A008695.P7029978020053790549

`A008698(n)+A008700(n)-A008704(n)`
-/

namespace A008695.P7029978020053790549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 n + (A008700 n - A008704 n)

end

end A008695.P7029978020053790549

/-!
# A008696: Theta series of Niemeier lattice of type D_6^4.

The programs for A008696, there is no canonical definition to state claims against.
-/

/-! ## A008696.P10753004205730218236

`2*A008693(n)-A008691(n)`
-/

namespace A008696.P10753004205730218236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008693 n - A008691 n

end

end A008696.P10753004205730218236

/-! ## A008696.P7094068269702501216

`(A008702(n)+A008692(n))/2`
-/

namespace A008696.P7094068269702501216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008702 n + A008692 n : ℚ) / 2

end

end A008696.P7094068269702501216

/-! ## A008696.P16743294288445505263

`A008692(n)+A008698(n)-A008693(n)`
-/

namespace A008696.P16743294288445505263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008698 n - A008693 n)

end

end A008696.P16743294288445505263

/-! ## A008696.P6519442138462047925

`2*A008698(n)-A008700(n)`
-/

namespace A008696.P6519442138462047925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008700 n

end

end A008696.P6519442138462047925

/-! ## A008696.P14433630817277966368

`(A008700(n)+A008693(n))/2`
-/

namespace A008696.P14433630817277966368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008700 n + A008693 n : ℚ) / 2

end

end A008696.P14433630817277966368

/-! ## A008696.P16351783626162591667

`2*A008697(n)-A008698(n)`
-/

namespace A008696.P16351783626162591667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008698 n

end

end A008696.P16351783626162591667

/-! ## A008696.P1635634322542590512

`2*A008694(n)-A008692(n)`
-/

namespace A008696.P1635634322542590512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008694 n - A008692 n

end

end A008696.P1635634322542590512

/-! ## A008696.P16040286213826862111

`2*A008699(n)-A008702(n)`
-/

namespace A008696.P16040286213826862111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008699 n - A008702 n

end

end A008696.P16040286213826862111

/-! ## A008696.P15273313107102882272

`A008697(n)+A008698(n)-A008699(n)`
-/

namespace A008696.P15273313107102882272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008697 n + (A008698 n - A008699 n)

end

end A008696.P15273313107102882272

/-! ## A008696.P16426847810911386976

`A008699(n)+A008700(n)-A008703(n)`
-/

namespace A008696.P16426847810911386976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008700 n - A008703 n)

end

end A008696.P16426847810911386976

/-! ## A008696.P12966747023891778423

`2*A008692(n)-A008690(n)`
-/

namespace A008696.P12966747023891778423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008692 n - A008690 n

end

end A008696.P12966747023891778423

/-! ## A008696.P4027707260258964217

`A008691(n)+A008693(n)-A008690(n)`
-/

namespace A008696.P4027707260258964217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008693 n - A008690 n)

end

end A008696.P4027707260258964217

/-! ## A008696.P15568648507185030997

`(A008704(n)+A008691(n))/2`
-/

namespace A008696.P15568648507185030997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008704 n + A008691 n : ℚ) / 2

end

end A008696.P15568648507185030997

/-! ## A008696.P6690292307498668167

`2*A008700(n)-A008704(n)`
-/

namespace A008696.P6690292307498668167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008700 n - A008704 n

end

end A008696.P6690292307498668167

/-! ## A008696.P13172203934418698520

`2*A008695(n)-A008693(n)`
-/

namespace A008696.P13172203934418698520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008695 n - A008693 n

end

end A008696.P13172203934418698520

/-! ## A008696.P9358285749258935574

`(A008698(n)+A008695(n))/2`
-/

namespace A008696.P9358285749258935574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008698 n + A008695 n : ℚ) / 2

end

end A008696.P9358285749258935574

/-! ## A008696.P9137937255340960021

`A008692(n)+A008695(n)-A008691(n)`
-/

namespace A008696.P9137937255340960021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008695 n - A008691 n)

end

end A008696.P9137937255340960021

/-! ## A008696.P10546774383656444690

`A008693(n)+A008695(n)-A008692(n)`
-/

namespace A008696.P10546774383656444690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008693 n + (A008695 n - A008692 n)

end

end A008696.P10546774383656444690

/-!
# A008697: Theta series of Niemeier lattice of type A_8^3.

The programs for A008697, there is no canonical definition to state claims against.
-/

/-! ## A008697.P6496315427933640792

`(A008698(n)+A008696(n))/2`
-/

namespace A008697.P6496315427933640792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008698 n + A008696 n : ℚ) / 2

end

end A008697.P6496315427933640792

/-! ## A008697.P13217802249254455557

`(A008702(n)+A008693(n))/2`
-/

namespace A008697.P13217802249254455557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008702 n + A008693 n : ℚ) / 2

end

end A008697.P13217802249254455557

/-! ## A008697.P13362005595793767385

`2*A008700(n)-A008703(n)`
-/

namespace A008697.P13362005595793767385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008700 n - A008703 n

end

end A008697.P13362005595793767385

/-! ## A008697.P16860485259917960490

`A008691(n)+A008692(n)-A008689(n)`
-/

namespace A008697.P16860485259917960490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008692 n - A008689 n)

end

end A008697.P16860485259917960490

/-! ## A008697.P883472761502615031

`2*A008698(n)-A008699(n)`
-/

namespace A008697.P883472761502615031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008699 n

end

end A008697.P883472761502615031

/-! ## A008697.P17681404969933638953

`2*A008699(n)-A008701(n)`
-/

namespace A008697.P17681404969933638953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008699 n - A008701 n

end

end A008697.P17681404969933638953

/-! ## A008697.P8877462503654449480

`A008698(n)+A008699(n)-A008700(n)`
-/

namespace A008697.P8877462503654449480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008698 n + (A008699 n - A008700 n)

end

end A008697.P8877462503654449480

/-! ## A008697.P9085129827707541224

`A008699(n)+A008700(n)-A008702(n)`
-/

namespace A008697.P9085129827707541224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008700 n - A008702 n)

end

end A008697.P9085129827707541224

/-! ## A008697.P5279708067028375400

`A008699(n)+A008701(n)-A008703(n)`
-/

namespace A008697.P5279708067028375400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008701 n - A008703 n)

end

end A008697.P5279708067028375400

/-! ## A008697.P5877846132880011545

`(A008704(n)+A008692(n))/2`
-/

namespace A008697.P5877846132880011545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008704 n + A008692 n : ℚ) / 2

end

end A008697.P5877846132880011545

/-! ## A008697.P1280686284462903095

`A008689(n)+A008704(n)-A008691(n)`
-/

namespace A008697.P1280686284462903095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008689 n + (A008704 n - A008691 n)

end

end A008697.P1280686284462903095

/-! ## A008697.P4575556083164084931

`A008700(n)+A008701(n)-A008704(n)`
-/

namespace A008697.P4575556083164084931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008701 n - A008704 n)

end

end A008697.P4575556083164084931

/-! ## A008697.P3305553353940782778

`(A008700(n)+A008695(n))/2`
-/

namespace A008697.P3305553353940782778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008700 n + A008695 n : ℚ) / 2

end

end A008697.P3305553353940782778

/-! ## A008697.P5430428276733997529

`A008695(n)+A008696(n)-A008694(n)`
-/

namespace A008697.P5430428276733997529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008695 n + (A008696 n - A008694 n)

end

end A008697.P5430428276733997529

/-!
# A008698: Theta series of Niemeier lattice of type A_7^2 D_5^2.

The programs for A008698, there is no canonical definition to state claims against.
-/

/-! ## A008698.P6061288662297739201

`(A008692(n)+A008408(n))/2`
-/

namespace A008698.P6061288662297739201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008692 n + A008408 n : ℚ) / 2

end

end A008698.P6061288662297739201

/-! ## A008698.P9198059712816606637

`2*A008702(n)-A008408(n)`
-/

namespace A008698.P9198059712816606637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008702 n - A008408 n

end

end A008698.P9198059712816606637

/-! ## A008698.P9178664640318907659

`2*A008700(n)-A008702(n)`
-/

namespace A008698.P9178664640318907659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008700 n - A008702 n

end

end A008698.P9178664640318907659

/-! ## A008698.P9430805535217565714

`(A008700(n)+A008696(n))/2`
-/

namespace A008698.P9430805535217565714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008700 n + A008696 n : ℚ) / 2

end

end A008698.P9430805535217565714

/-! ## A008698.P1334536446222124047

`2*A008697(n)-A008696(n)`
-/

namespace A008698.P1334536446222124047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008697 n - A008696 n

end

end A008698.P1334536446222124047

/-! ## A008698.P6398179817463728905

`2*A008694(n)-A008691(n)`
-/

namespace A008698.P6398179817463728905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008694 n - A008691 n

end

end A008698.P6398179817463728905

/-! ## A008698.P9241785002514638871

`A008700(n)+A008701(n)-A008703(n)`
-/

namespace A008698.P9241785002514638871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008701 n - A008703 n)

end

end A008698.P9241785002514638871

/-! ## A008698.P3900832477735841538

`2*A008699(n)-A008700(n)`
-/

namespace A008698.P3900832477735841538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008699 n - A008700 n

end

end A008698.P3900832477735841538

/-! ## A008698.P17135409395831233324

`(A008699(n)+A008697(n))/2`
-/

namespace A008698.P17135409395831233324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008699 n + A008697 n : ℚ) / 2

end

end A008698.P17135409395831233324

/-! ## A008698.P15789766248743597881

`A008699(n)+A008700(n)-A008701(n)`
-/

namespace A008698.P15789766248743597881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008700 n - A008701 n)

end

end A008698.P15789766248743597881

/-! ## A008698.P8639820433676280662

`A008699(n)+A008701(n)-A008702(n)`
-/

namespace A008698.P8639820433676280662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008701 n - A008702 n)

end

end A008698.P8639820433676280662

/-! ## A008698.P12519113302909726827

`A008699(n)+A008702(n)-A008703(n)`
-/

namespace A008698.P12519113302909726827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008699 n + (A008702 n - A008703 n)

end

end A008698.P12519113302909726827

/-! ## A008698.P13091445284797785718

`A008692(n)+A008693(n)-A008690(n)`
-/

namespace A008698.P13091445284797785718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008693 n - A008690 n)

end

end A008698.P13091445284797785718

/-! ## A008698.P8463546821984050847

`(A008704(n)+A008693(n))/2`
-/

namespace A008698.P8463546821984050847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008704 n + A008693 n : ℚ) / 2

end

end A008698.P8463546821984050847

/-! ## A008698.P8191142856326330581

`2*A008701(n)-A008704(n)`
-/

namespace A008698.P8191142856326330581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008701 n - A008704 n

end

end A008698.P8191142856326330581

/-! ## A008698.P3002785876719448655

`A008700(n)+A008702(n)-A008704(n)`
-/

namespace A008698.P3002785876719448655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008702 n - A008704 n)

end

end A008698.P3002785876719448655

/-! ## A008698.P7808980226067167114

`2*A008695(n)-A008692(n)`
-/

namespace A008698.P7808980226067167114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008695 n - A008692 n

end

end A008698.P7808980226067167114

/-! ## A008698.P12448624269042418984

`2*A008696(n)-A008695(n)`
-/

namespace A008698.P12448624269042418984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008696 n - A008695 n

end

end A008698.P12448624269042418984

/-! ## A008698.P4481890403625292633

`A008691(n)+A008695(n)-A008690(n)`
-/

namespace A008698.P4481890403625292633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008695 n - A008690 n)

end

end A008698.P4481890403625292633

/-! ## A008698.P5830936330805670510

`A008695(n)+A008696(n)-A008693(n)`
-/

namespace A008698.P5830936330805670510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008695 n + (A008696 n - A008693 n)

end

end A008698.P5830936330805670510

/-!
# A008699: Theta series of Niemeier lattice of type A_6^4.

The programs for A008699, there is no canonical definition to state claims against.
-/

/-! ## A008699.P60637035434431475

`2*A008692(n)-A008689(n)`
-/

namespace A008699.P60637035434431475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008692 n - A008689 n

end

end A008699.P60637035434431475

/-! ## A008699.P4890817850505046521

`2*A008696(n)-A008694(n)`
-/

namespace A008699.P4890817850505046521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008696 n - A008694 n

end

end A008699.P4890817850505046521

/-! ## A008699.P8713092777514429567

`2*A008698(n)-A008697(n)`
-/

namespace A008699.P8713092777514429567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008698 n - A008697 n

end

end A008699.P8713092777514429567

/-! ## A008699.P17608004226445792392

`2*A008700(n)-A008701(n)`
-/

namespace A008699.P17608004226445792392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008700 n - A008701 n

end

end A008699.P17608004226445792392

/-! ## A008699.P17822051122821170873

`2*A008701(n)-A008703(n)`
-/

namespace A008699.P17822051122821170873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008701 n - A008703 n

end

end A008699.P17822051122821170873

/-! ## A008699.P2292490830805732666

`(A008700(n)+A008698(n))/2`
-/

namespace A008699.P2292490830805732666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008700 n + A008698 n : ℚ) / 2

end

end A008699.P2292490830805732666

/-! ## A008699.P18306121988394038174

`A008691(n)+A008693(n)-A008689(n)`
-/

namespace A008699.P18306121988394038174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008691 n + (A008693 n - A008689 n)

end

end A008699.P18306121988394038174

/-! ## A008699.P12889241555277331644

`A008692(n)+A008697(n)-A008691(n)`
-/

namespace A008699.P12889241555277331644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008697 n - A008691 n)

end

end A008699.P12889241555277331644

/-! ## A008699.P3197117462221920053

`A008697(n)+A008698(n)-A008696(n)`
-/

namespace A008699.P3197117462221920053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008697 n + (A008698 n - A008696 n)

end

end A008699.P3197117462221920053

/-! ## A008699.P7311592329791209497

`A008700(n)+A008701(n)-A008702(n)`
-/

namespace A008699.P7311592329791209497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008701 n - A008702 n)

end

end A008699.P7311592329791209497

/-! ## A008699.P16856051055942895266

`A008700(n)+A008702(n)-A008703(n)`
-/

namespace A008699.P16856051055942895266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008702 n - A008703 n)

end

end A008699.P16856051055942895266

/-! ## A008699.P9070321360800131052

`A008692(n)+A008694(n)-A008690(n)`
-/

namespace A008699.P9070321360800131052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008692 n + (A008694 n - A008690 n)

end

end A008699.P9070321360800131052

/-! ## A008699.P3528536596087103917

`A008700(n)+A008703(n)-A008704(n)`
-/

namespace A008699.P3528536596087103917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008700 n + (A008703 n - A008704 n)

end

end A008699.P3528536596087103917

/-! ## A008699.P7451329851552941164

`A008701(n)+A008702(n)-A008704(n)`
-/

namespace A008699.P7451329851552941164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008701 n + (A008702 n - A008704 n)

end

end A008699.P7451329851552941164

/-! ## A008699.P8148628537275440720

`(A008704(n)+A008695(n))/2`
-/

namespace A008699.P8148628537275440720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008704 n + A008695 n : ℚ) / 2

end

end A008699.P8148628537275440720

/-! ## A008699.P2665211715564867773

`A008696(n)+A008697(n)-A008695(n)`
-/

namespace A008699.P2665211715564867773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008696 n + (A008697 n - A008695 n)

end

end A008699.P2665211715564867773

