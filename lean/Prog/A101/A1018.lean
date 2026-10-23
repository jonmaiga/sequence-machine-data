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
import Seq.B000.C026
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
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
# A101800: a(n)= abs(det[A000166(i+j+1)]), i,j=0...n, is the absolute value of the Hankel determinant of order n+1 of the derangements numbers, cf. A000166.

The programs for A101800, the canonical program `A101800.P11975487397842622249` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101800 has offset 0).

The definition of A101800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101800.P11975487397842622249

`abs(A055209(n)*A009940(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101800

/-- `abs(A055209(n)*A009940(n+1))` -/
def P11975487397842622249.Spec : Prop :=
  ∀ n, P11975487397842622249.a n = A101800 n

theorem P11975487397842622249.correct : P11975487397842622249.Spec := by
  intro n
  simp only [A101800]

end A101800

/-!
# A101802: Primes which remain prime after operation "omit leftmost maximal digit" repeated until only one digit remains.

The programs for A101802, there is no canonical definition to state claims against.
-/

/-! ## A101802.P2328145904725401377

`∩[A101784(n+1), A217491(n+1)]`
-/

namespace A101802.P2328145904725401377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101802.P2328145904725401377

/-!
# A101803: Nearest integer to n*(phi-1), where phi is golden ratio 1.618033988749895... (A001622).

The programs for A101803, the canonical program `A101803.P17417830778840745108` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101803 has offset 0).

The definition of A101803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101803.P17417830778840745108

`round(n*(ϕ-1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101803

/-- `round(n*(ϕ-1))` -/
def P17417830778840745108.Spec : Prop :=
  ∀ n, P17417830778840745108.a n = A101803 n

theorem P17417830778840745108.correct : P17417830778840745108.Spec := by
  intro n
  simp only [A101803]

end A101803

/-! ## A101803.P12162439205601231040

`round(ϕ*n)+xor(n, -1)+1`
-/

namespace A101803.P12162439205601231040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n : ℝ)) + (Int.xor (n : ℤ) (-1) + 1)

end

end A101803.P12162439205601231040

namespace A101803

/-- `round(ϕ*n)+xor(n, -1)+1` -/
def P12162439205601231040.Spec : Prop :=
  ∀ n, P12162439205601231040.a n = A101803 n

end A101803

/-! ## A101803.P9610455992697477318

`ceil(n*sqrt(5))%comp[ceil(n*ϕ²)]`
-/

namespace A101803.P9610455992697477318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) * Real.sqrt (5 : ℝ)⌉ (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A101803.P9610455992697477318

namespace A101803

/-- `ceil(n*sqrt(5))%comp[ceil(n*ϕ²)]` -/
def P9610455992697477318.Spec : Prop :=
  ∀ n, P9610455992697477318.a n = A101803 n

end A101803

/-! ## A101803.P146449606431700679

`A007067(n)-n`
-/

namespace A101803.P146449606431700679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n - (n : ℤ)

end

end A101803.P146449606431700679

namespace A101803

/-- `A007067(n)-n` -/
def P146449606431700679.Spec : Prop :=
  ∀ n, P146449606431700679.a n = A101803 n

end A101803

/-! ## A101803.P12742240156051999028

`n-A334415(n)`
-/

namespace A101803.P12742240156051999028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A334415 n

end

end A101803.P12742240156051999028

namespace A101803

/-- `n-A334415(n)` -/
def P12742240156051999028.Spec : Prop :=
  ∀ n, P12742240156051999028.a n = A101803 n

end A101803

/-! ## A101803.P7563143203424363075

`A004937(n)-2*n`
-/

namespace A101803.P7563143203424363075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 n - (2 * n : ℤ)

end

end A101803.P7563143203424363075

namespace A101803

/-- `A004937(n)-2*n` -/
def P7563143203424363075.Spec : Prop :=
  ∀ n, P7563143203424363075.a n = A101803 n

end A101803

/-! ## A101803.P5329917304439650484

`∑[A334413(abs(1-n))]`
-/

namespace A101803.P5329917304439650484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334413 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101803.P5329917304439650484

namespace A101803

/-- `∑[A334413(abs(1-n))]` -/
def P5329917304439650484.Spec : Prop :=
  ∀ n, P5329917304439650484.a n = A101803 n

end A101803

/-! ## A101803.P2553223663069943729

`∑[char[A078796(n+1)]]`
-/

namespace A101803.P2553223663069943729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101803.P2553223663069943729

namespace A101803

/-- `∑[char[A078796(n+1)]]` -/
def P2553223663069943729.Spec : Prop :=
  ∀ n, (P2553223663069943729.a n : ℤ) = A101803 n

end A101803

/-! ## A101803.P1566291797850056781

`floor((A300763(n)+n)/2)`
-/

namespace A101803.P1566291797850056781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A300763 n + (n : ℤ) : ℚ) / 2⌋

end

end A101803.P1566291797850056781

namespace A101803

/-- `floor((A300763(n)+n)/2)` -/
def P1566291797850056781.Spec : Prop :=
  ∀ n, P1566291797850056781.a n = A101803 n

end A101803

/-! ## A101803.P11735619414036602051

`floor(n-A187329(n)/2)`
-/

namespace A101803.P11735619414036602051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (A187329 n : ℚ) / 2⌋

end

end A101803.P11735619414036602051

namespace A101803

/-- `floor(n-A187329(n)/2)` -/
def P11735619414036602051.Spec : Prop :=
  ∀ n, P11735619414036602051.a n = A101803 n

end A101803

/-! ## A101803.P9404727875225155838

`floor((A198082(n)-n)/2)`
-/

namespace A101803.P9404727875225155838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198082 n - (n : ℤ) : ℚ) / 2⌋

end

end A101803.P9404727875225155838

namespace A101803

/-- `floor((A198082(n)-n)/2)` -/
def P9404727875225155838.Spec : Prop :=
  ∀ n, P9404727875225155838.a n = A101803 n

end A101803

/-! ## A101803.P286050983905673217

`ceil(n-A195172(n)/2)`
-/

namespace A101803.P286050983905673217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (A195172 n : ℚ) / 2⌉

end

end A101803.P286050983905673217

namespace A101803

/-- `ceil(n-A195172(n)/2)` -/
def P286050983905673217.Spec : Prop :=
  ∀ n, P286050983905673217.a n = A101803 n

end A101803

/-! ## A101803.P1713394664890178935

`ceil(A276854(n)/2-n)`
-/

namespace A101803.P1713394664890178935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276854 n : ℚ) / 2 - (n : ℚ)⌉

end

end A101803.P1713394664890178935

namespace A101803

/-- `ceil(A276854(n)/2-n)` -/
def P1713394664890178935.Spec : Prop :=
  ∀ n, P1713394664890178935.a n = A101803 n

end A101803

/-! ## A101803.P16596560833029125670

`comp[A007064(n+1)]-n`
-/

namespace A101803.P16596560833029125670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A101803.P16596560833029125670

namespace A101803

/-- `comp[A007064(n+1)]-n` -/
def P16596560833029125670.Spec : Prop :=
  ∀ n, P16596560833029125670.a n = A101803 n

end A101803

/-! ## A101803.P15468837718221206536

`comp[A214990(n+1)]-n`
-/

namespace A101803.P15468837718221206536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A101803.P15468837718221206536

namespace A101803

/-- `comp[A214990(n+1)]-n` -/
def P15468837718221206536.Spec : Prop :=
  ∀ n, P15468837718221206536.a n = A101803 n

end A101803

/-! ## A101803.P8847665961017154599

`n-∑[char[A188188(2*(n+1))]]`
-/

namespace A101803.P8847665961017154599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101803.P8847665961017154599

namespace A101803

/-- `n-∑[char[A188188(2*(n+1))]]` -/
def P8847665961017154599.Spec : Prop :=
  ∀ n, P8847665961017154599.a n = A101803 n

end A101803

/-! ## A101803.P5657261484362786776

`A060143(A078588(n)+n)`
-/

namespace A101803.P5657261484362786776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A078588 n + (n : ℤ)).toNat

end

end A101803.P5657261484362786776

namespace A101803

/-- `A060143(A078588(n)+n)` -/
def P5657261484362786776.Spec : Prop :=
  ∀ n, P5657261484362786776.a n = A101803 n

end A101803

/-! ## A101803.P4427902960753386415

`A300763(n)+A060144(n)`
-/

namespace A101803.P4427902960753386415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 n + A060144 n

end

end A101803.P4427902960753386415

namespace A101803

/-- `A300763(n)+A060144(n)` -/
def P4427902960753386415.Spec : Prop :=
  ∀ n, P4427902960753386415.a n = A101803 n

end A101803

/-! ## A101803.P10665117066133591261

`A198082(n)-A004956(n)`
-/

namespace A101803.P10665117066133591261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n - A004956 n

end

end A101803.P10665117066133591261

namespace A101803

/-- `A198082(n)-A004956(n)` -/
def P10665117066133591261.Spec : Prop :=
  ∀ n, P10665117066133591261.a n = A101803 n

end A101803

/-! ## A101803.P16670777730608328125

`A195121(n)-A195172(n)`
-/

namespace A101803.P16670777730608328125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 n - A195172 n

end

end A101803.P16670777730608328125

namespace A101803

/-- `A195121(n)-A195172(n)` -/
def P16670777730608328125.Spec : Prop :=
  ∀ n, P16670777730608328125.a n = A101803 n

end A101803

/-!
# A101804: a(1) = 23. Later primes are determined by the rule that the digits of the sequence specify the lengths of the terms. The smallest prime with the specified number of digits is used each time.

The programs for A101804, there is no canonical definition to state claims against.
-/

/-! ## A101804.P5933575531142940831

`p?[A080012(∑{digits}[A080015(n), #])]`
-/

namespace A101804.P5933575531142940831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080012 ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A101804.P5933575531142940831

/-!
# A101805: Number of Ruth-Aaron numbers (with multiplicity) less than 10^n.

The programs for A101805, there is no canonical definition to state claims against.
-/

/-! ## A101805.P743919664327447094

`∑[A327445(C(n², 2)/6+1)]`
-/

namespace A101805.P743919664327447094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327445 (SequenceMachineLib.roundAway ((Nat.choose (n ^ 2) 2 : ℚ) / 6 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101805.P743919664327447094

/-! ## A101805.P18144770627084929155

`A033107(A290589(n+3))`
-/

namespace A101805.P18144770627084929155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033107 (A290589 (n + 3)).toNat

end

end A101805.P18144770627084929155

/-!
# A101806: Numbers which are the sum of two positive cubes and divisible by 23.

The programs for A101806, there is no canonical definition to state claims against.
-/

/-! ## A101806.P5579156872956066178

`∩[A003325(n+1), A008605(n)]`
-/

namespace A101806.P5579156872956066178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101806.P5579156872956066178

/-! ## A101806.P9293912133736347009

`∩[A008605(n), A338667(n+1)]`
-/

namespace A101806.P9293912133736347009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101806.P9293912133736347009

/-! ## A101806.P1391872686252861923

`∩[A338667(n+1), A008599(n)+6*n]`
-/

namespace A101806.P1391872686252861923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n + (6 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101806.P1391872686252861923

/-! ## A101806.P9512236966113871391

`∩[A008605(2*n+1), A117358(A339993(n+1))]`
-/

namespace A101806.P9512236966113871391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A339993 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101806.P9512236966113871391

/-!
# A101808: Number of primes between two consecutive even numbers.

The programs for A101808, the canonical program `A101808.P11599829099457824818` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101808 has offset 0).

The definition of A101808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101808.P11599829099457824818

`∏{p}[Δ[n²], round(#/(2*n))]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101808

/-- `∏{p}[Δ[n²], round(#/(2*n))]` -/
def P11599829099457824818.Spec : Prop :=
  ∀ n, P11599829099457824818.a n = A101808 n

theorem P11599829099457824818.correct : P11599829099457824818.Spec := by
  intro n
  simp only [A101808]

end A101808

/-! ## A101808.P8924009606544955916

`floor(∏{p}[2*n+1, (#/(2*n))²])`
-/

namespace A101808.P8924009606544955916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) / (2 * n : ℚ)) ^ 2⌋

end

end A101808.P8924009606544955916

namespace A101808

/-- `floor(∏{p}[2*n+1, (#/(2*n))²])` -/
def P8924009606544955916.Spec : Prop :=
  ∀ n, P8924009606544955916.a n = A101808 n

end A101808

/-! ## A101808.P7657316761330637730

`floor((n+1)/∏{e}[2*n+1, n*#])`
-/

namespace A101808.P7657316761330637730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), n * Nat.factorization (f1 n) p : ℕ) : ℚ)⌋

end

end A101808.P7657316761330637730

namespace A101808

/-- `floor((n+1)/∏{e}[2*n+1, n*#])` -/
def P7657316761330637730.Spec : Prop :=
  ∀ n, P7657316761330637730.a n = A101808 n

end A101808

/-! ## A101808.P14054466126944004007

`floor((n+1)/n^∑{e}[2*n+1, #])`
-/

namespace A101808.P14054466126944004007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)⌋

end

end A101808.P14054466126944004007

namespace A101808

/-- `floor((n+1)/n^∑{e}[2*n+1, #])` -/
def P14054466126944004007.Spec : Prop :=
  ∀ n, P14054466126944004007.a n = A101808 n

end A101808

/-! ## A101808.P2556383982987474924

`∑{p}[2*n+1, round(#/(2*n))]^n`
-/

namespace A101808.P2556383982987474924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway ((p : ℚ) / (2 * n : ℚ))) ^ n

end

end A101808.P2556383982987474924

namespace A101808

/-- `∑{p}[2*n+1, round(#/(2*n))]^n` -/
def P2556383982987474924.Spec : Prop :=
  ∀ n, P2556383982987474924.a n = A101808 n

end A101808

/-! ## A101808.P16399418672034468598

`round(∏{e}[2*n+1, (n+2)/(#*2*n)])`
-/

namespace A101808.P16399418672034468598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 2 : ℚ) / (Nat.factorization (f1 n) p * (2 * n) : ℚ))

end

end A101808.P16399418672034468598

namespace A101808

/-- `round(∏{e}[2*n+1, (n+2)/(#*2*n)])` -/
def P16399418672034468598.Spec : Prop :=
  ∀ n, P16399418672034468598.a n = A101808 n

end A101808

/-! ## A101808.P14617182990889176093

`floor(∏{p}[2*n+1, #/(2*n)]^(n+1))`
-/

namespace A101808.P14617182990889176093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (2 * n : ℚ)) ^ (n + 1)⌋

end

end A101808.P14617182990889176093

namespace A101808

/-- `floor(∏{p}[2*n+1, #/(2*n)]^(n+1))` -/
def P14617182990889176093.Spec : Prop :=
  ∀ n, P14617182990889176093.a n = A101808 n

end A101808

/-! ## A101808.P16298693979871382128

`round((2*n+1)/(2*n)^∑{e}[2*n+1, #])`
-/

namespace A101808.P16298693979871382128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / ((2 * n) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ))

end

end A101808.P16298693979871382128

namespace A101808

/-- `round((2*n+1)/(2*n)^∑{e}[2*n+1, #])` -/
def P16298693979871382128.Spec : Prop :=
  ∀ n, P16298693979871382128.a n = A101808 n

end A101808

/-! ## A101808.P8849837581978607569

`A168141(Δ[n²])`
-/

namespace A101808.P8849837581978607569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101808.P8849837581978607569

namespace A101808

/-- `A168141(Δ[n²])` -/
def P8849837581978607569.Spec : Prop :=
  ∀ n, P8849837581978607569.a n = A101808 n

end A101808

/-! ## A101808.P10085301563405190761

`dr(A168141(2*n+1))`
-/

namespace A101808.P10085301563405190761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A168141 (2 * n + 1))

end

end A101808.P10085301563405190761

namespace A101808

/-- `dr(A168141(2*n+1))` -/
def P10085301563405190761.Spec : Prop :=
  ∀ n, (P10085301563405190761.a n : ℤ) = A101808 n

end A101808

/-! ## A101808.P9736462555279477822

`C(2, A136107(2*n+1))`
-/

namespace A101808.P9736462555279477822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A136107 (2 * n + 1)).toNat

end

end A101808.P9736462555279477822

namespace A101808

/-- `C(2, A136107(2*n+1))` -/
def P9736462555279477822.Spec : Prop :=
  ∀ n, (P9736462555279477822.a n : ℤ) = A101808 n

end A101808

/-! ## A101808.P1650461155401743549

`C(2, A349043(2*n+1))`
-/

namespace A101808.P1650461155401743549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A349043 (2 * n + 1)).toNat

end

end A101808.P1650461155401743549

namespace A101808

/-- `C(2, A349043(2*n+1))` -/
def P1650461155401743549.Spec : Prop :=
  ∀ n, (P1650461155401743549.a n : ℤ) = A101808 n

end A101808

/-! ## A101808.P8023844505825894521

`∏{d}[2*n+1, A168141(#)]`
-/

namespace A101808.P8023844505825894521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A168141 d

end

end A101808.P8023844505825894521

namespace A101808

/-- `∏{d}[2*n+1, A168141(#)]` -/
def P8023844505825894521.Spec : Prop :=
  ∀ n, P8023844505825894521.a n = A101808 n

end A101808

/-! ## A101808.P336759772958888346

`char[1]+char[A102781(n+1)]`
-/

namespace A101808.P336759772958888346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A101808.P336759772958888346

namespace A101808

/-- `char[1]+char[A102781(n+1)]` -/
def P336759772958888346.Spec : Prop :=
  ∀ n, (P336759772958888346.a n : ℤ) = A101808 n

end A101808

/-! ## A101808.P7398737320214304567

`A168141(n+1+n)^n`
-/

namespace A101808.P7398737320214304567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (n + 1 + n) ^ n

end

end A101808.P7398737320214304567

namespace A101808

/-- `A168141(n+1+n)^n` -/
def P7398737320214304567.Spec : Prop :=
  ∀ n, P7398737320214304567.a n = A101808 n

end A101808

/-! ## A101808.P9571187025287540243

`C(a(A001222(Δ[n²])), 2)` with `a(0)=1, a(1)=2`
-/

namespace A101808.P9571187025287540243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose (a (A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat) 2

end

end A101808.P9571187025287540243

namespace A101808

/-- `C(a(A001222(Δ[n²])), 2)` -/
def P9571187025287540243.Spec : Prop :=
  ∀ n, (P9571187025287540243.a n : ℤ) = A101808 n

end A101808

/-! ## A101808.P6667616903317273168

`A370482(A130773(n))`
-/

namespace A101808.P6667616903317273168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 (A130773 n).toNat

end

end A101808.P6667616903317273168

namespace A101808

/-- `A370482(A130773(n))` -/
def P6667616903317273168.Spec : Prop :=
  ∀ n, P6667616903317273168.a n = A101808 n

end A101808

/-! ## A101808.P5185404270916326211

`xor(A101264(n), A169585(n))`
-/

namespace A101808.P5185404270916326211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A101264 n) (A169585 n)

end

end A101808.P5185404270916326211

namespace A101808

/-- `xor(A101264(n), A169585(n))` -/
def P5185404270916326211.Spec : Prop :=
  ∀ n, P5185404270916326211.a n = A101808 n

end A101808

/-! ## A101808.P7043965816678245399

`A101264(n)+A019590(n+1)`
-/

namespace A101808.P7043965816678245399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + A019590 (n + 1)

end

end A101808.P7043965816678245399

namespace A101808

/-- `A101264(n)+A019590(n+1)` -/
def P7043965816678245399.Spec : Prop :=
  ∀ n, P7043965816678245399.a n = A101808 n

end A101808

/-! ## A101808.P10656376422890199884

`A001031(n+1)-A002375(n+1)`
-/

namespace A101808.P10656376422890199884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (n + 1) - A002375 (n + 1)

end

end A101808.P10656376422890199884

namespace A101808

/-- `A001031(n+1)-A002375(n+1)` -/
def P10656376422890199884.Spec : Prop :=
  ∀ n, P10656376422890199884.a n = A101808 n

end A101808

/-!
# A101809: Sequence formed by writing out the primes, one digit at a time, prefixing each prime by the number of digits it contains (the latter number being written as a normal decimal number, not digit-by-digit).

The programs for A101809, there is no canonical definition to state claims against.
-/

/-! ## A101809.P11812438503040675510

`gcd(A081276(n), A197680(A283216(n)))`
-/

namespace A101809.P11812438503040675510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081276 n) (A197680 (A283216 n).toNat)

end

end A101809.P11812438503040675510

/-! ## A101809.P7903061354754212361

`gcd(A000008(A287079(n)), A165120(n+1))`
-/

namespace A101809.P7903061354754212361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000008 (A287079 n).toNat) (A165120 (n + 1))

end

end A101809.P7903061354754212361

/-! ## A101809.P6141091772665222863

`A356233(∑[A172431(n+1)-A131738(n)])`
-/

namespace A101809.P6141091772665222863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1) - A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101809.P6141091772665222863

/-!
# A101810: Number of compositions (ordered partitions) of the n-th prime into n nonnegative integers.

The programs for A101810, there is no canonical definition to state claims against.
-/

/-! ## A101810.P16254620819732877533

`A377537(A000040(n+1))`
-/

namespace A101810.P16254620819732877533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377537 (A000040 (n + 1)).toNat

end

end A101810.P16254620819732877533

/-! ## A101810.P14287323241432339577

`A377537(A006093(n+1)+1)`
-/

namespace A101810.P14287323241432339577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377537 (A006093 (n + 1) + 1).toNat

end

end A101810.P14287323241432339577

/-! ## A101810.P14033777536464390025

`A377537(A390375(A006450(n+1)))`
-/

namespace A101810.P14033777536464390025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377537 (A390375 (A006450 (n + 1)).toNat).toNat

end

end A101810.P14033777536464390025

/-! ## A101810.P10202444394291978522

`C(p?[comp[n²]]+n, n)`
-/

namespace A101810.P10202444394291978522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + n) n

end

end A101810.P10202444394291978522

/-! ## A101810.P12421086969701293687

`C(eq[1, ∑{e}[n, #]]+n, n)`
-/

namespace A101810.P12421086969701293687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n) n

end

end A101810.P12421086969701293687

/-! ## A101810.P14356541328126087317

`C(A095116(n+1), n)`
-/

namespace A101810.P14356541328126087317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095116 (n + 1)).toNat n

end

end A101810.P14356541328126087317

/-! ## A101810.P991289642560309127

`C(Δ[A007504(n)]+n, n)`
-/

namespace A101810.P991289642560309127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n + (n : ℤ)).toNat n

end

end A101810.P991289642560309127

/-! ## A101810.P17412197989708276380

`C(A014688(n+1)-1, n)`
-/

namespace A101810.P17412197989708276380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014688 (n + 1) - 1).toNat n

end

end A101810.P17412197989708276380

/-! ## A101810.P3524704417671718872

`C(A006005(n+1)+n, n)`
-/

namespace A101810.P3524704417671718872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 1) + (n : ℤ)).toNat n

end

end A101810.P3524704417671718872

/-!
# A101811: Numerator of the permanent of the n-th Hilbert matrix.

The programs for A101811, there is no canonical definition to state claims against.
-/

/-! ## A101811.P8734429341326896201

`A092326(n+1)/A061914(n+1)`
-/

namespace A101811.P8734429341326896201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092326 (n + 1) : ℚ) / (A061914 (n + 1) : ℚ)

end

end A101811.P8734429341326896201

/-!
# A101812: Denominator of the permanent of the n-th Hilbert matrix.

The programs for A101812, there is no canonical definition to state claims against.
-/

/-! ## A101812.P1276077554055696056

`A005249(n+1)/A061914(n+1)`
-/

namespace A101812.P1276077554055696056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005249 (n + 1) : ℚ) / (A061914 (n + 1) : ℚ)

end

end A101812.P1276077554055696056

/-!
# A101813: Odd Niven (or Harshad) numbers: odd numbers that are divisible by the sum of their digits.

The programs for A101813, there is no canonical definition to state claims against.
-/

/-! ## A101813.P8091226091345890493

`record[A000265(A005349(n+1))]`
-/

namespace A101813.P8091226091345890493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101813.P8091226091345890493

/-! ## A101813.P6560651022085956190

`A005349(eq[1, A005349(n+1)%2]+1)`
-/

namespace A101813.P6560651022085956190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005349 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A101813.P6560651022085956190

/-! ## A101813.P7499543401759637463

`A005349(eq[1, gcd(2, A005349(n+1))]+1)`
-/

namespace A101813.P7499543401759637463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A005349 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A101813.P7499543401759637463

/-! ## A101813.P10185228174841452539

`A005349(eq[1, and(1, A005349(n+1))]+1)`
-/

namespace A101813.P10185228174841452539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005349 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A101813.P10185228174841452539

/-! ## A101813.P15635339777043720177

`A005349(record[(n+1)*A005349(n+2)%2]+1)`
-/

namespace A101813.P15635339777043720177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A005349 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A101813.P15635339777043720177

/-! ## A101813.P2027904591011912911

`∩[A005349(n+1), A179085(n+1)]`
-/

namespace A101813.P2027904591011912911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101813.P2027904591011912911

/-! ## A101813.P69576411822655870

`∩[A179085(n+1), A356349(n+1)]`
-/

namespace A101813.P69576411822655870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101813.P69576411822655870

/-! ## A101813.P9220269738498781080

`∩[A005349(n+1), A005843(n)+1]`
-/

namespace A101813.P9220269738498781080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101813.P9220269738498781080

/-! ## A101813.P13487786449913976495

`∩[A005349(n+1), A016777(n)-n]`
-/

namespace A101813.P13487786449913976495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101813.P13487786449913976495

/-! ## A101813.P11894334785022086000

`record[A093178(A005349(n+2))]`
-/

namespace A101813.P11894334785022086000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A005349 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101813.P11894334785022086000

/-! ## A101813.P10308081314494133259

`∩[A005349(n+1), A004273(n)]`
-/

namespace A101813.P10308081314494133259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101813.P10308081314494133259

/-! ## A101813.P12106232773115833619

`∩[A005349(n+1), A060747(n)]`
-/

namespace A101813.P12106232773115833619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101813.P12106232773115833619

/-! ## A101813.P16179204048765022794

`∩[A356349(n+1), A004273(n)]`
-/

namespace A101813.P16179204048765022794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101813.P16179204048765022794

/-! ## A101813.P1584935909530284565

`∩[A356349(n+1), A060747(n)]`
-/

namespace A101813.P1584935909530284565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101813.P1584935909530284565

/-! ## A101813.P4795753468981643957

`∩[A005349(n+1), A023443(n)+n]`
-/

namespace A101813.P4795753468981643957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101813.P4795753468981643957

/-! ## A101813.P3114896772546307990

`record[A360074(Δ[n²])]`
-/

namespace A101813.P3114896772546307990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101813.P3114896772546307990

/-! ## A101813.P71519951853755405

`filter[2*n+1, A188641(#)]`
-/

namespace A101813.P71519951853755405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j) = 1) n)

end

end A101813.P71519951853755405

/-! ## A101813.P10989830708453726390

`record[(2*n+1)*A188641(2*n+1)]`
-/

namespace A101813.P10989830708453726390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A188641 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101813.P10989830708453726390

/-! ## A101813.P864219411682468961

`record[gcd(2*n+1, A070635(2*n+1))]`
-/

namespace A101813.P864219411682468961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A070635 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101813.P864219411682468961

/-!
# A101814: Even Niven (or Harshad) numbers: even numbers that are divisible by the sum of their digits.

The programs for A101814, there is no canonical definition to state claims against.
-/

/-! ## A101814.P2858080506022339272

`A005349(eq[0, A005349(n+1)%2]+1)`
-/

namespace A101814.P2858080506022339272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005349 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A101814.P2858080506022339272

/-! ## A101814.P4121279449733058483

`A005349(eq[2, gcd(2, A005349(n+1))]+1)`
-/

namespace A101814.P4121279449733058483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A005349 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A101814.P4121279449733058483

/-! ## A101814.P3365856764551240332

`record[A005349(n+2)%xor(1, A005349(n+2))]`
-/

namespace A101814.P3365856764551240332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005349 (n + 2)) (Int.xor 1 (A005349 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101814.P3365856764551240332

/-! ## A101814.P5371467859555991899

`∩[2*n, A005349(n+1)]`
-/

namespace A101814.P5371467859555991899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101814.P5371467859555991899

/-! ## A101814.P14163593493347785953

`∩[∪[A051004(n+1), A087141(n+1)], 2*n]`
-/

namespace A101814.P14163593493347785953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087141 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = x) n

end

end A101814.P14163593493347785953

/-! ## A101814.P9263156106362333667

`∩[A005349(n+1), A005843(n)]`
-/

namespace A101814.P9263156106362333667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101814.P9263156106362333667

/-! ## A101814.P8328591269946056610

`record[A360074(2*(n+1))]`
-/

namespace A101814.P8328591269946056610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101814.P8328591269946056610

/-! ## A101814.P14767459933189800648

`2*(lt[A065518(2*(n+1)), 2]+1)`
-/

namespace A101814.P14767459933189800648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A101814.P14767459933189800648

/-! ## A101814.P14257906016867049233

`filter[A004277(n+1), A188641(#)]`
-/

namespace A101814.P14257906016867049233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A101814.P14257906016867049233

/-! ## A101814.P18210632646526792624

`filter[A005843(n+1), A188641(#)]`
-/

namespace A101814.P18210632646526792624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A101814.P18210632646526792624

/-! ## A101814.P1860674902660160221

`filter[A005349(n+2), A135528(#)]`
-/

namespace A101814.P1860674902660160221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A101814.P1860674902660160221

/-! ## A101814.P3858155641952023875

`filter[A004275(n+2), A188641(#)]`
-/

namespace A101814.P3858155641952023875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A101814.P3858155641952023875

/-! ## A101814.P10291318281796365980

`filter[A300576(n+3), A188641(#)]`
-/

namespace A101814.P10291318281796365980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A101814.P10291318281796365980

/-! ## A101814.P559360206728904986

`filter[A321220(2*n), A188641(#)]`
-/

namespace A101814.P559360206728904986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A101814.P559360206728904986

/-! ## A101814.P15837737014577445152

`record[A133265(A005349(n+1)-1)]`
-/

namespace A101814.P15837737014577445152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (A005349 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101814.P15837737014577445152

/-! ## A101814.P1407994763422534019

`filter[A014681(2*n+1), A188641(#)]`
-/

namespace A101814.P1407994763422534019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A101814.P1407994763422534019

/-! ## A101814.P12481068055976774018

`filter[A015906(2*n+1), A188641(#)]`
-/

namespace A101814.P12481068055976774018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A101814.P12481068055976774018

/-! ## A101814.P10019186035722193091

`filter[A084432(2*n+1), A188641(#)]`
-/

namespace A101814.P10019186035722193091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084432 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A101814.P10019186035722193091

/-! ## A101814.P13729256353273875886

`filter[A092486(2*n+1), A188641(#)]`
-/

namespace A101814.P13729256353273875886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A101814.P13729256353273875886

/-!
# A101817: Triangle read by rows: T(n,h) = number of functions f:{1,2,...,n}->{1,2,...,n} such that |Image(f)|=h; h=1,2,...,n, n=1,2,3,... . Essentially A090657, but without zeros.

The programs for A101817, there is no canonical definition to state claims against.
-/

/-! ## A101817.P16689891324836737740

`A090657(comp[∑[n]])`
-/

namespace A101817.P16689891324836737740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090657 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A101817.P16689891324836737740

/-! ## A101817.P1073786002244196684

`∑[char[∑[n]]]*A101818(n+1)`
-/

namespace A101817.P1073786002244196684
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A101818 (n + 1)

end

end A101817.P1073786002244196684

/-! ## A101817.P3805897578369716121

`(C(comp[∑[n]]-n, 2)-n)*A141618(n+1)`
-/

namespace A101817.P3805897578369716121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A141618 (n + 1)

end

end A101817.P3805897578369716121

/-! ## A101817.P10894715066657443330

`A219859(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A101817.P10894715066657443330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219859 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A101817.P10894715066657443330

/-! ## A101817.P2614665254225680138

`A219859(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A101817.P2614665254225680138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219859 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A101817.P2614665254225680138

/-!
# A101818: Triangle read by rows: (1/n)*T(n,h), where T(n,h) is the array in A101817.

The programs for A101818, there is no canonical definition to state claims against.
-/

/-! ## A101818.P4054409033414326345

`A233543(n)*A363849(n)`
-/

namespace A101818.P4054409033414326345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A363849 n

end

end A101818.P4054409033414326345

/-! ## A101818.P8959854021094809734

`abs(A007318(n)*A163626(n))`
-/

namespace A101818.P8959854021094809734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007318 n * A163626 n|

end

end A101818.P8959854021094809734

/-! ## A101818.P11872951001834273167

`abs(A117440(n)*A163626(n))`
-/

namespace A101818.P11872951001834273167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A163626 n|

end

end A101818.P11872951001834273167

/-! ## A101818.P10980239463416956705

`abs(A130595(n)*A163626(n))`
-/

namespace A101818.P10980239463416956705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A163626 n|

end

end A101818.P10980239463416956705

/-! ## A101818.P12615945001052829740

`A008277(n+1)*A008279(n)`
-/

namespace A101818.P12615945001052829740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A008279 n

end

end A101818.P12615945001052829740

/-!
# A101819: Triangle read by rows: T(n,h) = number of functions f:{1,2,...,n}->{1,2,...,n-1} such that |Image(f)|=h, h=1,2,...,n-1, n=2,3,...

The programs for A101819, there is no canonical definition to state claims against.
-/

/-! ## A101819.P15846571044054892870

`round(sqrt(2*(n+1)))*A338782(A101820(n))`
-/

namespace A101819.P15846571044054892870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * A338782 (A101820 n).toNat

end

end A101819.P15846571044054892870

/-! ## A101819.P17466221020198310919

`∑[A023533(A101820(n))]*A101820(n)`
-/

namespace A101819.P17466221020198310919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A101820 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A101820 n

end

end A101819.P17466221020198310919

/-! ## A101819.P12710841902160724517

`A002024(n+1)*A028310(A101820(n))`
-/

namespace A101819.P12710841902160724517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A028310 (A101820 n).toNat

end

end A101819.P12710841902160724517

/-! ## A101819.P9524701032394105683

`A002024(n+1)*A338782(A007318(n)*A028246(comp[C(n, 2)]))`
-/

namespace A101819.P9524701032394105683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A338782 (A007318 n * A028246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A101819.P9524701032394105683

/-!
# A101820: Triangle read by rows: T(n,h)/(n-1), where T is the array in A101819.

The programs for A101820, there is no canonical definition to state claims against.
-/

/-! ## A101820.P7081954661920485346

`A008277(comp[∑[n]])*A008279(n)`
-/

namespace A101820.P7081954661920485346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A008279 n

end

end A101820.P7081954661920485346

/-! ## A101820.P14384929948777068761

`A007318(n)*A028246(comp[∑[n]])`
-/

namespace A101820.P14384929948777068761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A028246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A101820.P14384929948777068761

/-! ## A101820.P8696802548626550662

`(A014473(n)+1)*A028246(comp[C(n, 2)])`
-/

namespace A101820.P8696802548626550662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A028246 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A101820.P8696802548626550662

/-! ## A101820.P15386150125147761459

`abs(A028246(A014132(n+1))*A108086(n))`
-/

namespace A101820.P15386150125147761459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028246 (A014132 (n + 1)).toNat * A108086 n|

end

end A101820.P15386150125147761459

/-! ## A101820.P14536054592753770239

`A008277(A014132(n+1))*A233543(n)*A007318(n)`
-/

namespace A101820.P14536054592753770239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A014132 (n + 1)).toNat * A233543 n * A007318 n

end

end A101820.P14536054592753770239

/-!
# A101821: Triangle read by rows: T(n,h) = number of functions f:{1,2,...,n}->{1,2,...,n-2} such that |Image(f)|=h, h=1,2,...,n-2; n=3,4,....

The programs for A101821, there is no canonical definition to state claims against.
-/

/-! ## A101821.P15928516465770724052

`A101819(comp[∑[n-1]]%A101819(3*n+2))`
-/

namespace A101821.P15928516465770724052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101819 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A101819 (3 * n + 2))).toNat

end

end A101821.P15928516465770724052

/-! ## A101821.P6987353783231909532

`A101819(comp[∑[n-1]]%A101799(n))`
-/

namespace A101821.P6987353783231909532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101819 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A101799 n)).toNat

end

end A101821.P6987353783231909532

/-! ## A101821.P16328525881144016316

`A101819(∑[A101873(2*n)!])`
-/

namespace A101821.P16328525881144016316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A101873 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101819 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101821.P16328525881144016316

/-! ## A101821.P11223429710109578012

`A101819(A056525(n+1)+A003056(n))`
-/

namespace A101821.P11223429710109578012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101819 (A056525 (n + 1) + A003056 n).toNat

end

end A101821.P11223429710109578012

/-!
# A101822: Expansion of 1/(1-x-2*x^2-3*x^3).

The programs for A101822, the canonical program `A101822.P51753854648545821` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101822 has offset 0).

The definition of A101822 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2-3x^3))` (program `A101822.P51753854648545821`, by `A101822.P51753854648545821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101822.P51753854648545821

`ogf(1/(1-x-2x^2-3x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101822

/-- `ogf(1/(1-x-2x^2-3x^3))` -/
def P51753854648545821.Spec : Prop :=
  ∀ n, P51753854648545821.a n = A101822 n

theorem P51753854648545821.correct : P51753854648545821.Spec := by
  intro n
  simp only [A101822]

end A101822

/-! ## A101822.P1075139976774693735

`a(n-1)+2*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A101822.P1075139976774693735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 3 * a (n - 3)

end

end A101822.P1075139976774693735

namespace A101822

/-- `a(n-1)+2*a(n-2)+3*a(n-3)` -/
def P1075139976774693735.Spec : Prop :=
  ∀ n, (P1075139976774693735.a n : ℤ) = A101822 n

end A101822

/-! ## A101822.P12622382183190033684

`A100550(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A101822.P12622382183190033684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100550 (n + 1) - a (n - 1)

end

end A101822.P12622382183190033684

namespace A101822

/-- `A100550(n+1)-a(n-1)` -/
def P12622382183190033684.Spec : Prop :=
  ∀ n, P12622382183190033684.a n = A101822 n

end A101822

/-! ## A101822.P2768674965380931980

`abs(∑[A033999(n)*A100550(n+1)])`
-/

namespace A101822.P2768674965380931980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A100550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A101822.P2768674965380931980

namespace A101822

/-- `abs(∑[A033999(n)*A100550(n+1)])` -/
def P2768674965380931980.Spec : Prop :=
  ∀ n, P2768674965380931980.a n = A101822 n

end A101822

/-! ## A101822.P77569697735012017

`∑[A033999(n)*A100550(n+1)]*A009001(2*n)`
-/

namespace A101822.P77569697735012017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A100550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A101822.P77569697735012017

namespace A101822

/-- `∑[A033999(n)*A100550(n+1)]*A009001(2*n)` -/
def P77569697735012017.Spec : Prop :=
  ∀ n, P77569697735012017.a n = A101822 n

end A101822

/-! ## A101822.P2011164899996576310

`∑[A033999(n)*A100550(n+1)]*A057077(2*n)`
-/

namespace A101822.P2011164899996576310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A100550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A101822.P2011164899996576310

namespace A101822

/-- `∑[A033999(n)*A100550(n+1)]*A057077(2*n)` -/
def P2011164899996576310.Spec : Prop :=
  ∀ n, P2011164899996576310.a n = A101822 n

end A101822

/-!
# A101823: Indices of primes in sequence defined by A(0) = 31, A(n) = 10*A(n-1) - 9 for n > 0.

The programs for A101823, there is no canonical definition to state claims against.
-/

/-! ## A101823.P9040814296423965822

`A056807(n+1)-1`
-/

namespace A101823.P9040814296423965822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056807 (n + 1) - 1

end

end A101823.P9040814296423965822

/-! ## A101823.P17377323940139052136

`abs(A056807(Δ[n²]-n)-1)`
-/

namespace A101823.P17377323940139052136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056807 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1|

end

end A101823.P17377323940139052136

/-! ## A101823.P9768849648527417546

`record[Δ[A056807(A152271(n))]]`
-/

namespace A101823.P9768849648527417546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056807 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101823.P9768849648527417546

/-! ## A101823.P17258064743811863299

`record[A056807(A193592(n))-1]`
-/

namespace A101823.P17258064743811863299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056807 (A193592 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101823.P17258064743811863299

/-! ## A101823.P8617385555590467449

`A057428(n+1)+A056807(n+1)`
-/

namespace A101823.P8617385555590467449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A056807 (n + 1)

end

end A101823.P8617385555590467449

/-!
# A101824: Indices of primes in sequence defined by A(0) = 37, A(n) = 10*A(n-1) - 63 for n > 0.

The programs for A101824, there is no canonical definition to state claims against.
-/

/-! ## A101824.P1344318369939110976

`A100501(n+1)-1`
-/

namespace A101824.P1344318369939110976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100501 (n + 1) - 1

end

end A101824.P1344318369939110976

/-! ## A101824.P18060691842972610173

`record[Δ[A100501(A158416(n))]]`
-/

namespace A101824.P18060691842972610173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100501 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101824.P18060691842972610173

/-! ## A101824.P3991317779599762818

`A134824(n+2)+A100501(n+1)`
-/

namespace A101824.P3991317779599762818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A100501 (n + 1)

end

end A101824.P3991317779599762818

/-! ## A101824.P3527453379644759562

`abs(A100501(n+1)+A057428(n+1))`
-/

namespace A101824.P3527453379644759562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100501 (n + 1) + A057428 (n + 1)|

end

end A101824.P3527453379644759562

/-! ## A101824.P4614698280843247474

`xor(-A100501(n+1), A057428(n+3))`
-/

namespace A101824.P4614698280843247474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A100501 (n + 1)) (A057428 (n + 3))

end

end A101824.P4614698280843247474

/-!
# A101825: G.f.: x*(1+x)^2/(1-x^3).

The programs for A101825, the canonical program `A101825.P14202810856863923713` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101825 has offset 0).

The definition of A101825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101825.P14202810856863923713

`a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101825

/-- `a(n-3)` -/
def P14202810856863923713.Spec : Prop :=
  ∀ n, (P14202810856863923713.a n : ℤ) = A101825 n

theorem P14202810856863923713.correct : P14202810856863923713.Spec := by
  intro n
  simp only [A101825]

end A101825

/-!
# A101826: Indices of primes in sequence defined by A(0) = 37, A(n) = 10*A(n-1) - 53 for n > 0.

The programs for A101826, there is no canonical definition to state claims against.
-/

/-! ## A101826.P382004490918472248

`A101393(n+1)-1`
-/

namespace A101826.P382004490918472248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101393 (n + 1) - 1

end

end A101826.P382004490918472248

/-! ## A101826.P8583189924100008348

`record[Δ[A101393(A038568(n))]]`
-/

namespace A101826.P8583189924100008348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101393 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101826.P8583189924100008348

/-! ## A101826.P1024582073355340173

`record[Δ[A101393(A100727(n))]]`
-/

namespace A101826.P1024582073355340173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101393 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101826.P1024582073355340173

/-! ## A101826.P15596260096575152069

`record[Δ[A101393(A158416(n))]]`
-/

namespace A101826.P15596260096575152069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101393 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101826.P15596260096575152069

/-!
# A101827: Indices of primes in sequence defined by A(0) = 39, A(n) = 10*A(n-1) - 71 for n > 0.

The programs for A101827, there is no canonical definition to state claims against.
-/

/-! ## A101827.P6353928064185761985

`A102965(n+2)-1`
-/

namespace A101827.P6353928064185761985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102965 (n + 2) - 1

end

end A101827.P6353928064185761985

/-! ## A101827.P12010007322759330652

`xor(1, A102965(A305732(n+1)))`
-/

namespace A101827.P12010007322759330652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A102965 (A305732 (n + 1)).toNat)

end

end A101827.P12010007322759330652

/-! ## A101827.P14487422101191262117

`xor(A056474(n+1)!, A102965(n+2))`
-/

namespace A101827.P14487422101191262117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A056474 (n + 1)).toNat : ℤ) (A102965 (n + 2))

end

end A101827.P14487422101191262117

/-!
# A101828: Indices of primes in sequence defined by A(0) = 31, A(n) = 10*A(n-1) + 11 for n > 0.

The programs for A101828, there is no canonical definition to state claims against.
-/

/-! ## A101828.P8386920317150473036

`A102966(n+2)-1`
-/

namespace A101828.P8386920317150473036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102966 (n + 2) - 1

end

end A101828.P8386920317150473036

/-! ## A101828.P8478600534171056443

`A182034(gcd(n, n+1))+A102966(n+2)`
-/

namespace A101828.P8478600534171056443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182034 (Nat.gcd n (n + 1)) + A102966 (n + 2)

end

end A101828.P8478600534171056443

/-! ## A101828.P16214412947800286092

`A183011(A264668(n))+A102966(n+2)`
-/

namespace A101828.P16214412947800286092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183011 (A264668 n).toNat + A102966 (n + 2)

end

end A101828.P16214412947800286092

/-! ## A101828.P11999328441860057713

`A183011(A112316(n+1))+A102966(n+2)`
-/

namespace A101828.P11999328441860057713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183011 (A112316 (n + 1)).toNat + A102966 (n + 2)

end

end A101828.P11999328441860057713

/-!
# A101831: Indices of primes in sequence defined by A(0) = 39, A(n) = 10*A(n-1) - 61 for n > 0.

The programs for A101831, there is no canonical definition to state claims against.
-/

/-! ## A101831.P1279275806821726315

`A102968(n+1)-1`
-/

namespace A101831.P1279275806821726315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102968 (n + 1) - 1

end

end A101831.P1279275806821726315

/-! ## A101831.P9215299807405212982

`abs(1-A102968(A348553(n)))`
-/

namespace A101831.P9215299807405212982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A102968 (A348553 n).toNat|

end

end A101831.P9215299807405212982

/-! ## A101831.P8697484397531646792

`record[A102968(A344180(n))-1]`
-/

namespace A101831.P8697484397531646792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102968 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101831.P8697484397531646792

/-! ## A101831.P2149094136043486713

`A260196(n+2)+A102968(n+1)`
-/

namespace A101831.P2149094136043486713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A102968 (n + 1)

end

end A101831.P2149094136043486713

/-! ## A101831.P16816425095174262145

`A126930(A254730(n))+A102968(n+1)`
-/

namespace A101831.P16816425095174262145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (A254730 n).toNat + A102968 (n + 1)

end

end A101831.P16816425095174262145

/-!
# A101833: Indices of primes in sequence defined by A(0) = 37, A(n) = 10*A(n-1) - 23 for n > 0.

The programs for A101833, there is no canonical definition to state claims against.
-/

/-! ## A101833.P6040751707021466182

`A102969(n+1)-1`
-/

namespace A101833.P6040751707021466182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102969 (n + 1) - 1

end

end A101833.P6040751707021466182

/-! ## A101833.P8739262380849125774

`record[Δ[A102969(A116188(n))]]`
-/

namespace A101833.P8739262380849125774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102969 (A116188 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101833.P8739262380849125774

/-! ## A101833.P15089195810138039063

`record[Δ[A102969(A152271(n))]]`
-/

namespace A101833.P15089195810138039063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102969 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101833.P15089195810138039063

/-! ## A101833.P8011737414542751570

`record[Δ[A102969(A158416(n))]]`
-/

namespace A101833.P8011737414542751570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102969 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101833.P8011737414542751570

/-! ## A101833.P972988693859531777

`record[A102969(A284548(n))-1]`
-/

namespace A101833.P972988693859531777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102969 (A284548 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101833.P972988693859531777

/-!
# A101834: Indices of primes in sequence defined by A(0) = 39, A(n) = 10*A(n-1) - 41 for n > 0.

The programs for A101834, there is no canonical definition to state claims against.
-/

/-! ## A101834.P10045713142368422888

`A102970(n+1)-1`
-/

namespace A101834.P10045713142368422888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102970 (n + 1) - 1

end

end A101834.P10045713142368422888

/-! ## A101834.P8004929139838686804

`record[A102970(A344180(n))-1]`
-/

namespace A101834.P8004929139838686804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102970 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101834.P8004929139838686804

/-! ## A101834.P5958445308199952776

`A134824(n+2)+A102970(n+1)`
-/

namespace A101834.P5958445308199952776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A102970 (n + 1)

end

end A101834.P5958445308199952776

/-! ## A101834.P10152175272828814089

`A131379(4*n+2)+A102970(n+1)`
-/

namespace A101834.P10152175272828814089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 (4 * n + 2) + A102970 (n + 1)

end

end A101834.P10152175272828814089

/-! ## A101834.P3487740402547361253

`A001478(n+1)+A102970(n+1)+n`
-/

namespace A101834.P3487740402547361253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A102970 (n + 1) + (n : ℤ))

end

end A101834.P3487740402547361253

/-!
# A101835: Indices of primes in sequence defined by A(0) = 31, A(n) = 10*A(n-1) + 41 for n > 0.

The programs for A101835, there is no canonical definition to state claims against.
-/

/-! ## A101835.P10985956015443426053

`A102971(n+1)-1`
-/

namespace A101835.P10985956015443426053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102971 (n + 1) - 1

end

end A101835.P10985956015443426053

/-!
# A101836: a(n) = 2^n - A143658(n).

The programs for A101836, there is no canonical definition to state claims against.
-/

/-! ## A101836.P16947471476196486253

`2^n-A143658(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101836.P16947471476196486253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A143658 n

end

end A101836.P16947471476196486253

/-! ## A101836.P15305998277500331442

`(2^n)%A143658(n%(n+1))`
-/

namespace A101836.P15305998277500331442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A143658 (n % (n + 1)))

end

end A101836.P15305998277500331442

/-! ## A101836.P16497714947719013634

`A000079(n)%A143658(n)`
-/

namespace A101836.P16497714947719013634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A143658 n)

end

end A101836.P16497714947719013634

/-! ## A101836.P17123304286433144271

`A155559(n)%A143658(n)`
-/

namespace A101836.P17123304286433144271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (A143658 n)

end

end A101836.P17123304286433144271

/-! ## A101836.P13257006899379457621

`A171449(n)%A143658(n)`
-/

namespace A101836.P13257006899379457621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A143658 n)

end

end A101836.P13257006899379457621

/-! ## A101836.P2341812557839753166

`A171559(n)%A143658(n)`
-/

namespace A101836.P2341812557839753166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A143658 n)

end

end A101836.P2341812557839753166

/-! ## A101836.P10118545333790178055

`A186949(n)%A143658(n)`
-/

namespace A101836.P10118545333790178055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186949 n) (A143658 n)

end

end A101836.P10118545333790178055

/-! ## A101836.P17453426880521927329

`and(-A143658(n), A000225(n))`
-/

namespace A101836.P17453426880521927329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A143658 n) (A000225 n)

end

end A101836.P17453426880521927329

/-! ## A101836.P5501167045450941379

`A143096(n+1)%A372540(n)`
-/

namespace A101836.P5501167045450941379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143096 (n + 1)) (A372540 n)

end

end A101836.P5501167045450941379

/-!
# A101837: Indices of primes in sequence defined by A(0) = 37, A(n) = 10*A(n-1) - 13 for n > 0.

The programs for A101837, there is no canonical definition to state claims against.
-/

/-! ## A101837.P7142421804059968635

`A102972(n+2)-1`
-/

namespace A101837.P7142421804059968635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102972 (n + 2) - 1

end

end A101837.P7142421804059968635

/-! ## A101837.P17070179464959042234

`∑[Δ[A102972(n+1)]%(5^n)]`
-/

namespace A101837.P17070179464959042234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102972 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (5 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101837.P17070179464959042234

/-! ## A101837.P7593598408242078837

`∑[Δ[A102972(n+1)]*A057427(n)]`
-/

namespace A101837.P7593598408242078837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102972 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101837.P7593598408242078837

/-! ## A101837.P7738951625873848241

`∑[A011594(n²)*Δ[A102972(n+1)]]`
-/

namespace A101837.P7738951625873848241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102972 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011594 (n ^ 2) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101837.P7738951625873848241

/-! ## A101837.P12754666033320856050

`∑[A062157(n)²*Δ[A102972(n+1)]]`
-/

namespace A101837.P12754666033320856050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102972 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101837.P12754666033320856050

/-!
# A101838: Indices of primes in sequence defined by A(0) = 39, A(n) = 10*A(n-1) - 31 for n > 0.

The programs for A101838, there is no canonical definition to state claims against.
-/

/-! ## A101838.P9778708204978090839

`A102973(n+2)-1`
-/

namespace A101838.P9778708204978090839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102973 (n + 2) - 1

end

end A101838.P9778708204978090839

/-! ## A101838.P397886815344457394

`record[A260196(n)+A102973(n+1)]`
-/

namespace A101838.P397886815344457394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A102973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101838.P397886815344457394

/-! ## A101838.P15579844771710714900

`A292359(A002635(n))+A102973(n+2)`
-/

namespace A101838.P15579844771710714900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292359 (A002635 n).toNat + A102973 (n + 2)

end

end A101838.P15579844771710714900

/-! ## A101838.P9229918936392019126

`A252748(A196929(n+1))+A102973(n+2)`
-/

namespace A101838.P9229918936392019126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A196929 (n + 1)).toNat + A102973 (n + 2)

end

end A101838.P9229918936392019126

/-! ## A101838.P14673597297113483579

`A131531(6*A007318(n))+A102973(n+2)`
-/

namespace A101838.P14673597297113483579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (6 * A007318 n).toNat + A102973 (n + 2)

end

end A101838.P14673597297113483579

/-!
# A101839: Indices of primes in sequence defined by A(0) = 31, A(n) = 10*A(n-1) + 51 for n > 0.

The programs for A101839, there is no canonical definition to state claims against.
-/

/-! ## A101839.P15372363870781410160

`A102974(n+1)-1`
-/

namespace A101839.P15372363870781410160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102974 (n + 1) - 1

end

end A101839.P15372363870781410160

/-! ## A101839.P7590683500746942829

`record[Δ[A102974(A152271(n))]]`
-/

namespace A101839.P7590683500746942829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102974 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101839.P7590683500746942829

/-! ## A101839.P15735257941687531088

`record[A102974(A133310(n))-1]`
-/

namespace A101839.P15735257941687531088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102974 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101839.P15735257941687531088

/-! ## A101839.P10752101600441519128

`record[A102974(A344180(n))-1]`
-/

namespace A101839.P10752101600441519128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102974 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101839.P10752101600441519128

/-! ## A101839.P6195932121266578416

`A331430(∑[n])+A102974(n+1)`
-/

namespace A101839.P6195932121266578416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331430 (∑ j ∈ Finset.range (n + 1), f1 j) + A102974 (n + 1)

end

end A101839.P6195932121266578416

/-!
# A101840: Indices of primes in sequence defined by A(0) = 37, A(n) = 10*A(n-1) - 3 for n > 0.

The programs for A101840, there is no canonical definition to state claims against.
-/

/-! ## A101840.P2509069201897325477

`A102975(n+1)-1`
-/

namespace A101840.P2509069201897325477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102975 (n + 1) - 1

end

end A101840.P2509069201897325477

/-! ## A101840.P4384001323532608087

`record[A102975(A133310(n))-1]`
-/

namespace A101840.P4384001323532608087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102975 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101840.P4384001323532608087

/-! ## A101840.P12464953575012258800

`record[A102975(A193592(n))-1]`
-/

namespace A101840.P12464953575012258800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102975 (A193592 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101840.P12464953575012258800

/-! ## A101840.P1391277912269139320

`A105812(∑[and(n+3, -2)])+A102975(n+1)`
-/

namespace A101840.P1391277912269139320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A102975 (n + 1)

end

end A101840.P1391277912269139320

/-! ## A101840.P2728221945104131355

`A217549(A271954(n))+A102975(n+1)`
-/

namespace A101840.P2728221945104131355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217549 (A271954 n).toNat + A102975 (n + 1)

end

end A101840.P2728221945104131355

/-!
# A101841: Indices of primes in sequence defined by A(0) = 31, A(n) = 10*A(n-1) + 61 for n > 0.

The programs for A101841, there is no canonical definition to state claims against.
-/

/-! ## A101841.P3168039801715190692

`A102976(n+1)-1`
-/

namespace A101841.P3168039801715190692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102976 (n + 1) - 1

end

end A101841.P3168039801715190692

/-! ## A101841.P10730178545149895564

`record[A102976(A344180(n))-1]`
-/

namespace A101841.P10730178545149895564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102976 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101841.P10730178545149895564

/-! ## A101841.P2921517590653678181

`A115638((n²+1+n)%(comp[C(n, 2)]+1))+A102976(n+1)`
-/

namespace A101841.P2921517590653678181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 ((n ^ 2 + 1 + n) % (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)) + A102976 (n + 1)

end

end A101841.P2921517590653678181

/-! ## A101841.P16872327469617483407

`A152805((n+1)/∏{p}[n+1, gcd((n+1)*(n+2), #²)])+A102976(n+1)`
-/

namespace A101841.P16872327469617483407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152805 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd ((n + 1) * (n + 2)) (p ^ 2) : ℕ) : ℚ))).toNat + A102976 (n + 1)

end

end A101841.P16872327469617483407

/-! ## A101841.P6595872657215714617

`A355689(A000040(n+1))+A102976(n+1)`
-/

namespace A101841.P6595872657215714617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A000040 (n + 1)).toNat + A102976 (n + 1)

end

end A101841.P6595872657215714617

/-!
# A101843: Indices of primes in sequence defined by A(0) = 39, A(n) = 10*A(n-1) - 11 for n > 0.

The programs for A101843, there is no canonical definition to state claims against.
-/

/-! ## A101843.P9732277365631818127

`A102977(n+2)-1`
-/

namespace A101843.P9732277365631818127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102977 (n + 2) - 1

end

end A101843.P9732277365631818127

/-! ## A101843.P3144663810535015759

`A108086(gcd(n, n+1))+A102977(n+2)`
-/

namespace A101843.P3144663810535015759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 (Nat.gcd n (n + 1)) + A102977 (n + 2)

end

end A101843.P3144663810535015759

/-! ## A101843.P15461733928771624298

`A162512(A002313(n+1))+A102977(n+2)`
-/

namespace A101843.P15461733928771624298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (A002313 (n + 1)).toNat + A102977 (n + 2)

end

end A101843.P15461733928771624298

/-! ## A101843.P449807469136696249

`A103137(A103159(n+1))+A102977(n+2)`
-/

namespace A101843.P449807469136696249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103137 (A103159 (n + 1)).toNat + A102977 (n + 2)

end

end A101843.P449807469136696249

/-! ## A101843.P17453188569226882874

`A151763(A071696(n+1))+A102977(n+2)`
-/

namespace A101843.P17453188569226882874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (A071696 (n + 1)).toNat + A102977 (n + 2)

end

end A101843.P17453188569226882874

/-!
# A101844: Indices of primes in the sequence defined by A(0) = 31, A(n) = 10*A(n-1) + 71 for n > 0.

The programs for A101844, there is no canonical definition to state claims against.
-/

/-! ## A101844.P1255714173595412476

`A102978(n+1)-1`
-/

namespace A101844.P1255714173595412476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102978 (n + 1) - 1

end

end A101844.P1255714173595412476

/-! ## A101844.P3229623383201252983

`record[A102978(A344180(n))-1]`
-/

namespace A101844.P3229623383201252983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102978 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101844.P3229623383201252983

/-! ## A101844.P4034966594131127727

`A001478(n+1)+A102978(n+1)+n`
-/

namespace A101844.P4034966594131127727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A102978 (n + 1) + (n : ℤ))

end

end A101844.P4034966594131127727

/-! ## A101844.P13050677180944725600

`A255642(A177849(n))+A102978(n+1)`
-/

namespace A101844.P13050677180944725600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255642 (A177849 n).toNat + A102978 (n + 1)

end

end A101844.P13050677180944725600

/-! ## A101844.P382879562310009948

`A153881(A000040(n+1))+A102978(n+1)`
-/

namespace A101844.P382879562310009948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A000040 (n + 1)).toNat + A102978 (n + 1)

end

end A101844.P382879562310009948

/-!
# A101845: Triangle formed by left half of A101842, read by rows.

The programs for A101845, there is no canonical definition to state claims against.
-/

/-! ## A101845.P5369886872328923336

`A101842(C(∑[char[∑[n]]], 2)+n+1)`
-/

namespace A101845.P5369886872328923336
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + (n + 1))

end

end A101845.P5369886872328923336

/-! ## A101845.P15793460637967008359

`A101842(A004201(n+1))`
-/

namespace A101845.P15793460637967008359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (A004201 (n + 1)).toNat

end

end A101845.P15793460637967008359

/-! ## A101845.P7467508033554630726

`A101842(A061885(n)+1)`
-/

namespace A101845.P7467508033554630726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (A061885 n + 1).toNat

end

end A101845.P7467508033554630726

/-! ## A101845.P13401812727389621538

`A101842(2*A059399(n+1))`
-/

namespace A101845.P13401812727389621538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (2 * A059399 (n + 1)).toNat

end

end A101845.P13401812727389621538

/-! ## A101845.P14200207419488136717

`A101842(A057944(n)+1+n)`
-/

namespace A101845.P14200207419488136717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (A057944 n + 1 + (n : ℤ)).toNat

end

end A101845.P14200207419488136717

/-!
# A101847: Indices of primes in sequence defined by A(0) = 39, A(n) = 10*A(n-1) - 1 for n > 0.

The programs for A101847, there is no canonical definition to state claims against.
-/

/-! ## A101847.P7036379991373136346

`A102980(n+1)-1`
-/

namespace A101847.P7036379991373136346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102980 (n + 1) - 1

end

end A101847.P7036379991373136346

/-! ## A101847.P3234349110694451684

`record[A102980(A133310(n))-1]`
-/

namespace A101847.P3234349110694451684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102980 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101847.P3234349110694451684

/-! ## A101847.P10461142841755100756

`record[A102980(A344180(n))-1]`
-/

namespace A101847.P10461142841755100756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102980 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101847.P10461142841755100756

/-! ## A101847.P14804792612722800255

`A321804(A007318(n))+A102980(n+1)`
-/

namespace A101847.P14804792612722800255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A007318 n).toNat + A102980 (n + 1)

end

end A101847.P14804792612722800255

/-! ## A101847.P4260419555864583721

`A278400(A051699(n))+A102980(n+1)`
-/

namespace A101847.P4260419555864583721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (A051699 n).toNat + A102980 (n + 1)

end

end A101847.P4260419555864583721

/-!
# A101848: Indices of primes in sequence defined by A(0) = 31, A(n) = 10*A(n-1) + 81 for n > 0.

The programs for A101848, there is no canonical definition to state claims against.
-/

/-! ## A101848.P7107370368083577062

`A101396(n+1)-1`
-/

namespace A101848.P7107370368083577062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101396 (n + 1) - 1

end

end A101848.P7107370368083577062

/-! ## A101848.P17183870135633229865

`xor(1, A101396(A077168(n)))`
-/

namespace A101848.P17183870135633229865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A101396 (A077168 n).toNat)

end

end A101848.P17183870135633229865

/-! ## A101848.P1367159116388979202

`xor(1, A101396(A291769(n)))`
-/

namespace A101848.P1367159116388979202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A101396 (A291769 n).toNat)

end

end A101848.P1367159116388979202

/-! ## A101848.P18049641238807552874

`xor(1, A101396(A348553(n)))`
-/

namespace A101848.P18049641238807552874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A101396 (A348553 n).toNat)

end

end A101848.P18049641238807552874

/-! ## A101848.P16091861744779848346

`xor(1, A101396(A000027(n+1)))`
-/

namespace A101848.P16091861744779848346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A101396 (A000027 (n + 1)).toNat)

end

end A101848.P16091861744779848346

/-!
# A101849: Indices of primes in sequence defined by A(0) = 37, A(n) = 10*A(n-1) + 27 for n > 0.

The programs for A101849, there is no canonical definition to state claims against.
-/

/-! ## A101849.P2920507882640100917

`A101398(n+1)-1`
-/

namespace A101849.P2920507882640100917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101398 (n + 1) - 1

end

end A101849.P2920507882640100917

/-! ## A101849.P17470261963225471246

`record[Δ[A101398(A152271(n))]]`
-/

namespace A101849.P17470261963225471246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101398 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101849.P17470261963225471246

/-! ## A101849.P4792197775829133256

`record[Δ[A101398(A158416(n))]]`
-/

namespace A101849.P4792197775829133256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101398 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101849.P4792197775829133256

/-! ## A101849.P17730383600274114215

`record[A101398(A028920(n))-1]`
-/

namespace A101849.P17730383600274114215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101398 (A028920 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101849.P17730383600274114215

/-! ## A101849.P14240556449461113701

`record[A101398(A328396(n))-1]`
-/

namespace A101849.P14240556449461113701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101398 (A328396 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101849.P14240556449461113701

/-!
# A101850: A Catalan transform of Pell(n+1).

The programs for A101850, there is no canonical definition to state claims against.
-/

/-! ## A101850.P5687310936068384404

`3*A143464(n)-a(n-1)` with `a(0)=1`
-/

namespace A101850.P5687310936068384404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A143464 n - a (n - 1)

end

end A101850.P5687310936068384404

/-! ## A101850.P5817922554126213809

`A027925(A245904(n+1))`
-/

namespace A101850.P5817922554126213809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027925 (A245904 (n + 1)).toNat

end

end A101850.P5817922554126213809

/-! ## A101850.P18076678929145152888

`Δ[Δ[A070321(A367414(n))]]`
-/

namespace A101850.P18076678929145152888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A367414 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101850.P18076678929145152888

/-!
# A101851: a(n) = Sum_{k=0..n} (-1)^(n-k)*k*Stirling2(n,k).

The programs for A101851, there is no canonical definition to state claims against.
-/

/-! ## A101851.P13035314542954244813

`(-1)^n*(A000587(n)+A000587(n+1))`
-/

namespace A101851.P13035314542954244813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A000587 n + A000587 (n + 1))

end

end A101851.P13035314542954244813

/-! ## A101851.P13058405290463417714

`Δ[A000587(n)*A033999(n+1)]`
-/

namespace A101851.P13058405290463417714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101851.P13058405290463417714

/-! ## A101851.P11244174258964373950

`A014182(A289207(n+1))-A014182(n)`
-/

namespace A101851.P11244174258964373950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014182 (A289207 (n + 1)).toNat - A014182 n

end

end A101851.P11244174258964373950

/-! ## A101851.P7146555768794457751

`A014182(A004273(n)-n)-A014182(n)`
-/

namespace A101851.P7146555768794457751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014182 (A004273 n - (n : ℤ)).toNat - A014182 n

end

end A101851.P7146555768794457751

/-! ## A101851.P17656999687114738109

`A000587(n)*A033999(n)-A014182(n)`
-/

namespace A101851.P17656999687114738109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000587 n * A033999 n - A014182 n

end

end A101851.P17656999687114738109

/-! ## A101851.P1378097224217342158

`(A000587(n+1)+A000587(n))*A033999(n)`
-/

namespace A101851.P1378097224217342158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000587 (n + 1) + A000587 n) * A033999 n

end

end A101851.P1378097224217342158

/-! ## A101851.P9676228751317150204

`A109747(n+1)-(A109747(n)+A014182(n))`
-/

namespace A101851.P9676228751317150204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109747 (n + 1) - (A109747 n + A014182 n)

end

end A101851.P9676228751317150204

/-! ## A101851.P13100103256875318836

`Δ[Δ[n-A109747(n)]]`
-/

namespace A101851.P13100103256875318836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A109747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101851.P13100103256875318836

/-!
# A101852: Numbers which are the sum of two positive cubes and divisible by 11.

The programs for A101852, there is no canonical definition to state claims against.
-/

/-! ## A101852.P15631728916224988440

`∩[A003325(n+1), 11*n]`
-/

namespace A101852.P15631728916224988440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A101852.P15631728916224988440

/-! ## A101852.P4014173398753313887

`∩[A338667(n+1), 11*n]`
-/

namespace A101852.P4014173398753313887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A101852.P4014173398753313887

/-! ## A101852.P14946633458437043263

`∩[A008593(n), A003325(n+1)]`
-/

namespace A101852.P14946633458437043263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101852.P14946633458437043263

/-! ## A101852.P1175367044639052395

`∩[A301708(A005843(n)), A003325(n+1)]`
-/

namespace A101852.P1175367044639052395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 (A005843 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101852.P1175367044639052395

/-!
# A101853: a(n) = n*(20 + 15*n + n^2)/6.

The programs for A101853, the canonical program `A101853.P7519071076366296963` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101853 has offset 1).

The definition of A101853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(20+15*(n+1)+(n+1)²)/6` (program `A101853.P1823351163228622173`, by `A101853.P1823351163228622173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101853.P1823351163228622173

`(n+1)*(20+15*(n+1)+(n+1)²)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101853.P1823351163228622173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (20 + 15 * (n + 1) + (n + 1) ^ 2) : ℚ) / 6

end

end A101853.P1823351163228622173

namespace A101853

/-- `(n+1)*(20+15*(n+1)+(n+1)²)/6` -/
def P1823351163228622173.Spec : Prop :=
  ∀ n, P1823351163228622173.a n = (A101853 (n + 1) : ℚ)

theorem P1823351163228622173.correct : P1823351163228622173.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A101853, Nat.add_sub_cancel, A101853.P1823351163228622173.a, A101853.P7519071076366296963.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A101853, Nat.add_sub_cancel, A101853.P1823351163228622173.a, A101853.P7519071076366296963.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101853

/-! ## A101853.P7519071076366296963

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=18, a(2)=37, a(3)=64`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101853

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7519071076366296963.Spec : Prop :=
  ∀ n, P7519071076366296963.a n = A101853 (n + 1)

theorem P7519071076366296963.correct : P7519071076366296963.Spec := by
  intro n
  simp only [A101853, Nat.add_sub_cancel]

end A101853

/-! ## A101853.P15268898847289000417

`ogf((6-6x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A101853.P15268898847289000417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -6, 1] [1, -4, 6, -4, 1] n

end

end A101853.P15268898847289000417

namespace A101853

/-- `ogf((6-6x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P15268898847289000417.Spec : Prop :=
  ∀ n, P15268898847289000417.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P329152555101162221

`C(n+3, 3)+(2*n+5)*(n+1)`
-/

namespace A101853.P329152555101162221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + (2 * n + 5) * (n + 1)

end

end A101853.P329152555101162221

namespace A101853

/-- `C(n+3, 3)+(2*n+5)*(n+1)` -/
def P329152555101162221.Spec : Prop :=
  ∀ n, (P329152555101162221.a n : ℤ) = A101853 (n + 1)

end A101853

/-! ## A101853.P9908167104675412507

`A096957(n)-∑[n]`
-/

namespace A101853.P9908167104675412507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096957 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101853.P9908167104675412507

namespace A101853

/-- `A096957(n)-∑[n]` -/
def P9908167104675412507.Spec : Prop :=
  ∀ n, P9908167104675412507.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P11848345340307249721

`A096941(n)+1+n`
-/

namespace A101853.P11848345340307249721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096941 n + 1 + (n : ℤ)

end

end A101853.P11848345340307249721

namespace A101853

/-- `A096941(n)+1+n` -/
def P11848345340307249721.Spec : Prop :=
  ∀ n, P11848345340307249721.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P1445304159290673171

`A394185(n)+2*n+3`
-/

namespace A101853.P1445304159290673171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394185 n + (2 * n + 3 : ℤ)

end

end A101853.P1445304159290673171

namespace A101853

/-- `A394185(n)+2*n+3` -/
def P1445304159290673171.Spec : Prop :=
  ∀ n, P1445304159290673171.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P13488974101451831717

`A087863(n)-n*(n+2)`
-/

namespace A101853.P13488974101451831717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087863 n - (n * (n + 2) : ℤ)

end

end A101853.P13488974101451831717

namespace A101853

/-- `A087863(n)-n*(n+2)` -/
def P13488974101451831717.Spec : Prop :=
  ∀ n, P13488974101451831717.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P15220813861642608612

`A023551(n+1)-3*(n+1)`
-/

namespace A101853.P15220813861642608612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) - (3 * (n + 1) : ℤ)

end

end A101853.P15220813861642608612

namespace A101853

/-- `A023551(n+1)-3*(n+1)` -/
def P15220813861642608612.Spec : Prop :=
  ∀ n, P15220813861642608612.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P18418061394627382543

`a(n-1)+A056115(n)+6` with `a(0)=6`
-/

namespace A101853.P18418061394627382543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (A056115 n + 6)

end

end A101853.P18418061394627382543

namespace A101853

/-- `a(n-1)+A056115(n)+6` -/
def P18418061394627382543.Spec : Prop :=
  ∀ n, P18418061394627382543.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P2105915818822127962

`A143058(n)+A016969(n)`
-/

namespace A101853.P2105915818822127962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n + A016969 n

end

end A101853.P2105915818822127962

namespace A101853

/-- `A143058(n)+A016969(n)` -/
def P2105915818822127962.Spec : Prop :=
  ∀ n, P2105915818822127962.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P12935821863679940966

`A023545(n+1)+A000217(n)`
-/

namespace A101853.P12935821863679940966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) + A000217 n

end

end A101853.P12935821863679940966

namespace A101853

/-- `A023545(n+1)+A000217(n)` -/
def P12935821863679940966.Spec : Prop :=
  ∀ n, P12935821863679940966.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P2450616313595596272

`A028387(n)+A008778(n+1)`
-/

namespace A101853.P2450616313595596272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + A008778 (n + 1)

end

end A101853.P2450616313595596272

namespace A101853

/-- `A028387(n)+A008778(n+1)` -/
def P2450616313595596272.Spec : Prop :=
  ∀ n, P2450616313595596272.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P3454733842720450496

`A222001(n+1)+A140091(n)`
-/

namespace A101853.P3454733842720450496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 1) + A140091 n

end

end A101853.P3454733842720450496

namespace A101853

/-- `A222001(n+1)+A140091(n)` -/
def P3454733842720450496.Spec : Prop :=
  ∀ n, P3454733842720450496.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P16448738629904618924

`A224141(n+1)-A006000(n)`
-/

namespace A101853.P16448738629904618924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224141 (n + 1) - A006000 n

end

end A101853.P16448738629904618924

namespace A101853

/-- `A224141(n+1)-A006000(n)` -/
def P16448738629904618924.Spec : Prop :=
  ∀ n, P16448738629904618924.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P7997045811282261415

`A026054(n+3)-A112414(n)`
-/

namespace A101853.P7997045811282261415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - A112414 n

end

end A101853.P7997045811282261415

namespace A101853

/-- `A026054(n+3)-A112414(n)` -/
def P7997045811282261415.Spec : Prop :=
  ∀ n, P7997045811282261415.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P13931051791805472982

`A051941(n+8)-A045943(n)`
-/

namespace A101853.P13931051791805472982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051941 (n + 8) - A045943 n

end

end A101853.P13931051791805472982

namespace A101853

/-- `A051941(n+8)-A045943(n)` -/
def P13931051791805472982.Spec : Prop :=
  ∀ n, P13931051791805472982.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P10578502558325275583

`A167499(n)+A264443(n)-n`
-/

namespace A101853.P10578502558325275583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n + (A264443 n - (n : ℤ))

end

end A101853.P10578502558325275583

namespace A101853

/-- `A167499(n)+A264443(n)-n` -/
def P10578502558325275583.Spec : Prop :=
  ∀ n, P10578502558325275583.a n = A101853 (n + 1)

end A101853

/-! ## A101853.P4488969455470426100

`A223833(n+1)-A006004(n+1)`
-/

namespace A101853.P4488969455470426100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223833 (n + 1) - A006004 (n + 1)

end

end A101853.P4488969455470426100

namespace A101853

/-- `A223833(n+1)-A006004(n+1)` -/
def P4488969455470426100.Spec : Prop :=
  ∀ n, P4488969455470426100.a n = A101853 (n + 1)

end A101853

/-!
# A101854: a(n) = n*(n+1)*(n^2 + 21*n + 50)/24.

The programs for A101854, the canonical program `A101854.P4493583514324300332` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101854 has offset 1).

The definition of A101854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*((n+1)²+21*(n+1)+50)/24` (program `A101854.P3247958869238430504`, by `A101854.P3247958869238430504.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101854.P3247958869238430504

`(n+1)*(n+2)*((n+1)²+21*(n+1)+50)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101854.P3247958869238430504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * ((n + 1) ^ 2 + 21 * (n + 1) + 50) : ℚ) / 24

end

end A101854.P3247958869238430504

namespace A101854

/-- `(n+1)*(n+2)*((n+1)²+21*(n+1)+50)/24` -/
def P3247958869238430504.Spec : Prop :=
  ∀ n, P3247958869238430504.a n = (A101854 (n + 1) : ℚ)

theorem P3247958869238430504.correct : P3247958869238430504.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A101854, Nat.add_sub_cancel, A101854.P3247958869238430504.a, A101854.P4493583514324300332.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A101854, Nat.add_sub_cancel, A101854.P3247958869238430504.a, A101854.P4493583514324300332.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101854

/-! ## A101854.P4493583514324300332

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=6, a(1)=24, a(2)=61, a(3)=125, a(4)=225`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101854

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P4493583514324300332.Spec : Prop :=
  ∀ n, P4493583514324300332.a n = A101854 (n + 1)

theorem P4493583514324300332.correct : P4493583514324300332.Spec := by
  intro n
  simp only [A101854, Nat.add_sub_cancel]

end A101854

/-! ## A101854.P7662164285608444208

`A096958(n)-∑[∑[n]]`
-/

namespace A101854.P7662164285608444208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096958 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101854.P7662164285608444208

namespace A101854

/-- `A096958(n)-∑[∑[n]]` -/
def P7662164285608444208.Spec : Prop :=
  ∀ n, P7662164285608444208.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P4064505393120755967

`A096942(n)+∑[n+1]`
-/

namespace A101854.P4064505393120755967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101854.P4064505393120755967

namespace A101854

/-- `A096942(n)+∑[n+1]` -/
def P4064505393120755967.Spec : Prop :=
  ∀ n, P4064505393120755967.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P16657464392314401814

`abs(A000292(n)-A096958(n))`
-/

namespace A101854.P16657464392314401814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000292 n - A096958 n|

end

end A101854.P16657464392314401814

namespace A101854

/-- `abs(A000292(n)-A096958(n))` -/
def P16657464392314401814.Spec : Prop :=
  ∀ n, P16657464392314401814.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P5956228755605147230

`A027482(n+2)-A055268(n)`
-/

namespace A101854.P5956228755605147230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027482 (n + 2) - A055268 n

end

end A101854.P5956228755605147230

namespace A101854

/-- `A027482(n+2)-A055268(n)` -/
def P5956228755605147230.Spec : Prop :=
  ∀ n, P5956228755605147230.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P7229602231316475625

`A047732(n)+A005287(n+4)`
-/

namespace A101854.P7229602231316475625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 n + A005287 (n + 4)

end

end A101854.P7229602231316475625

namespace A101854

/-- `A047732(n)+A005287(n+4)` -/
def P7229602231316475625.Spec : Prop :=
  ∀ n, P7229602231316475625.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P8123967538173271708

`A393148(n+4)+A096941(n)`
-/

namespace A101854.P8123967538173271708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393148 (n + 4) + A096941 n

end

end A101854.P8123967538173271708

namespace A101854

/-- `A393148(n+4)+A096941(n)` -/
def P8123967538173271708.Spec : Prop :=
  ∀ n, P8123967538173271708.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P3962078934737980207

`2*A095661(n)-A005582(n)`
-/

namespace A101854.P3962078934737980207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095661 n - A005582 n

end

end A101854.P3962078934737980207

namespace A101854

/-- `2*A095661(n)-A005582(n)` -/
def P3962078934737980207.Spec : Prop :=
  ∀ n, P3962078934737980207.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P16041477048308902106

`A136105(n+8)-A027480(n)`
-/

namespace A101854.P16041477048308902106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136105 (n + 8) - A027480 n

end

end A101854.P16041477048308902106

namespace A101854

/-- `A136105(n+8)-A027480(n)` -/
def P16041477048308902106.Spec : Prop :=
  ∀ n, P16041477048308902106.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P2540117146945898231

`A006504(n+1)+A000292(n+1)`
-/

namespace A101854.P2540117146945898231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1) + A000292 (n + 1)

end

end A101854.P2540117146945898231

namespace A101854

/-- `A006504(n+1)+A000292(n+1)` -/
def P2540117146945898231.Spec : Prop :=
  ∀ n, P2540117146945898231.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P16338527144257698043

`A227121(n+1)+A144640(n+1)`
-/

namespace A101854.P16338527144257698043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227121 (n + 1) + A144640 (n + 1)

end

end A101854.P16338527144257698043

namespace A101854

/-- `A227121(n+1)+A144640(n+1)` -/
def P16338527144257698043.Spec : Prop :=
  ∀ n, P16338527144257698043.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P10765845933045013582

`A034856(n+1)+A096942(n)-n`
-/

namespace A101854.P10765845933045013582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) + (A096942 n - (n : ℤ))

end

end A101854.P10765845933045013582

namespace A101854

/-- `A034856(n+1)+A096942(n)-n` -/
def P10765845933045013582.Spec : Prop :=
  ∀ n, P10765845933045013582.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P12473126387024500647

`A000292(n+1)+A096942(n)-A000292(n)`
-/

namespace A101854.P12473126387024500647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A096942 n - A000292 n)

end

end A101854.P12473126387024500647

namespace A101854

/-- `A000292(n+1)+A096942(n)-A000292(n)` -/
def P12473126387024500647.Spec : Prop :=
  ∀ n, P12473126387024500647.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P14896900411107181186

`A005582(n+1)+A095667(n)-A005582(n)`
-/

namespace A101854.P14896900411107181186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1) + (A095667 n - A005582 n)

end

end A101854.P14896900411107181186

namespace A101854

/-- `A005582(n+1)+A095667(n)-A005582(n)` -/
def P14896900411107181186.Spec : Prop :=
  ∀ n, P14896900411107181186.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P4292122311438375726

`A000292(n+1)+A024191(n+1)+A000292(n)`
-/

namespace A101854.P4292122311438375726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A024191 (n + 1) + A000292 n)

end

end A101854.P4292122311438375726

namespace A101854

/-- `A000292(n+1)+A024191(n+1)+A000292(n)` -/
def P4292122311438375726.Spec : Prop :=
  ∀ n, P4292122311438375726.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P8004666677590081493

`Δ[A022816(n+1)]-(n+2)²`
-/

namespace A101854.P8004666677590081493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n + 2) ^ 2 : ℤ)

end

end A101854.P8004666677590081493

namespace A101854

/-- `Δ[A022816(n+1)]-(n+2)²` -/
def P8004666677590081493.Spec : Prop :=
  ∀ n, P8004666677590081493.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P12100509817723727547

`A129936(n+1)+A022815(n+2)+1`
-/

namespace A101854.P12100509817723727547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129936 (n + 1) + (A022815 (n + 2) + 1)

end

end A101854.P12100509817723727547

namespace A101854

/-- `A129936(n+1)+A022815(n+2)+1` -/
def P12100509817723727547.Spec : Prop :=
  ∀ n, P12100509817723727547.a n = A101854 (n + 1)

end A101854

/-! ## A101854.P14889299014113440132

`A084990(n+1)+A005712(n+3)-1`
-/

namespace A101854.P14889299014113440132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 (n + 1) + (A005712 (n + 3) - 1)

end

end A101854.P14889299014113440132

namespace A101854

/-- `A084990(n+1)+A005712(n+3)-1` -/
def P14889299014113440132.Spec : Prop :=
  ∀ n, P14889299014113440132.a n = A101854 (n + 1)

end A101854

/-!
# A101855: a(n) = n*(n+1)*(n+2)*(n+4)*(n+23)/120.

The programs for A101855, the canonical program `A101855.P1880001832728636457` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101855 has offset 1).

The definition of A101855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101855.P1880001832728636457

`(n+1)*(n+2)*(n+3)*(n+5)*(n+24)/120`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101855

/-- `(n+1)*(n+2)*(n+3)*(n+5)*(n+24)/120` -/
def P1880001832728636457.Spec : Prop :=
  ∀ n, P1880001832728636457.a n = (A101855 (n + 1) : ℚ)

end A101855

/-! ## A101855.P10064661272627038247

`A096959(n)-∑[∑[∑[n]]]`
-/

namespace A101855.P10064661272627038247
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096959 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A101855.P10064661272627038247

namespace A101855

/-- `A096959(n)-∑[∑[∑[n]]]` -/
def P10064661272627038247.Spec : Prop :=
  ∀ n, P10064661272627038247.a n = A101855 (n + 1)

end A101855

/-! ## A101855.P12031271636752906541

`or(∑[A101854(n+1)], char[2])`
-/

namespace A101855.P12031271636752906541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A101855.P12031271636752906541

namespace A101855

/-- `or(∑[A101854(n+1)], char[2])` -/
def P12031271636752906541.Spec : Prop :=
  ∀ n, P12031271636752906541.a n = A101855 (n + 1)

end A101855

/-! ## A101855.P2677119504099716752

`A096943(n)+A000292(n+1)`
-/

namespace A101855.P2677119504099716752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096943 n + A000292 (n + 1)

end

end A101855.P2677119504099716752

namespace A101855

/-- `A096943(n)+A000292(n+1)` -/
def P2677119504099716752.Spec : Prop :=
  ∀ n, P2677119504099716752.a n = A101855 (n + 1)

end A101855

/-! ## A101855.P16579632936402717610

`A257199(n+1)+A154286(n)`
-/

namespace A101855.P16579632936402717610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257199 (n + 1) + A154286 n

end

end A101855.P16579632936402717610

namespace A101855

/-- `A257199(n+1)+A154286(n)` -/
def P16579632936402717610.Spec : Prop :=
  ∀ n, P16579632936402717610.a n = A101855 (n + 1)

end A101855

/-! ## A101855.P12763371917607313917

`A005701(n)+A000574(n+3)`
-/

namespace A101855.P12763371917607313917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n + A000574 (n + 3)

end

end A101855.P12763371917607313917

namespace A101855

/-- `A005701(n)+A000574(n+3)` -/
def P12763371917607313917.Spec : Prop :=
  ∀ n, P12763371917607313917.a n = A101855 (n + 1)

end A101855

/-! ## A101855.P17512839883545447943

`∑[A027482(n+2)]-A056118(n)`
-/

namespace A101855.P17512839883545447943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056118 n

end

end A101855.P17512839883545447943

namespace A101855

/-- `∑[A027482(n+2)]-A056118(n)` -/
def P17512839883545447943.Spec : Prop :=
  ∀ n, P17512839883545447943.a n = A101855 (n + 1)

end A101855

/-! ## A101855.P9953719016939808362

`∑[A005582(n)]+2*A005701(n)`
-/

namespace A101855.P9953719016939808362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A005701 n

end

end A101855.P9953719016939808362

namespace A101855

/-- `∑[A005582(n)]+2*A005701(n)` -/
def P9953719016939808362.Spec : Prop :=
  ∀ n, P9953719016939808362.a n = A101855 (n + 1)

end A101855

/-! ## A101855.P17357729878882704192

`A024191(n+1)+A022816(n+1)`
-/

namespace A101855.P17357729878882704192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1) + A022816 (n + 1)

end

end A101855.P17357729878882704192

namespace A101855

/-- `A024191(n+1)+A022816(n+1)` -/
def P17357729878882704192.Spec : Prop :=
  ∀ n, P17357729878882704192.a n = A101855 (n + 1)

end A101855

/-! ## A101855.P10122460764988590346

`A139798(n+1)-(A000292(n+1)+A000292(n+1))`
-/

namespace A101855.P10122460764988590346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139798 (n + 1) - (A000292 (n + 1) + A000292 (n + 1))

end

end A101855.P10122460764988590346

namespace A101855

/-- `A139798(n+1)-(A000292(n+1)+A000292(n+1))` -/
def P10122460764988590346.Spec : Prop :=
  ∀ n, P10122460764988590346.a n = A101855 (n + 1)

end A101855

/-! ## A101855.P1110240499192344578

`A022816(n+2)-A000330(n+2)`
-/

namespace A101855.P1110240499192344578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022816 (n + 2) - A000330 (n + 2)

end

end A101855.P1110240499192344578

namespace A101855

/-- `A022816(n+2)-A000330(n+2)` -/
def P1110240499192344578.Spec : Prop :=
  ∀ n, P1110240499192344578.a n = A101855 (n + 1)

end A101855

/-! ## A101855.P17413094798634071616

`A033487(n+1)+A000389(n+3)`
-/

namespace A101855.P17413094798634071616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (n + 1) + A000389 (n + 3)

end

end A101855.P17413094798634071616

namespace A101855

/-- `A033487(n+1)+A000389(n+3)` -/
def P17413094798634071616.Spec : Prop :=
  ∀ n, P17413094798634071616.a n = A101855 (n + 1)

end A101855

/-!
# A101858: Array read by antidiagonals: T(n,k) = Porta-Stolarsky star product T(n,k) = n * k = nk + floor(phi n) floor(phi k) where phi = (1 + sqrt(5))/2.

The programs for A101858, there is no canonical definition to state claims against.
-/

/-! ## A101858.P11900450558169042739

`ceil(ϕ*A340429(n+1))`
-/

namespace A101858.P11900450558169042739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A340429 (n + 1) : ℝ)⌉

end

end A101858.P11900450558169042739

/-! ## A101858.P4878962734370003665

`A004956(A340429(n+1))`
-/

namespace A101858.P4878962734370003665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A340429 (n + 1)).toNat

end

end A101858.P4878962734370003665

/-! ## A101858.P3351020358412116140

`A026351(root(A340429(n+1), 2)²)`
-/

namespace A101858.P3351020358412116140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (SequenceMachineLib.roundAway (((A340429 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A101858.P3351020358412116140

/-! ## A101858.P11914101815567964426

`A026351(or(char[1], A340429(n+1)))`
-/

namespace A101858.P11914101815567964426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A340429 (n + 1))).toNat

end

end A101858.P11914101815567964426

/-! ## A101858.P8097621307282808031

`A026351(A340429(n+1)%(2*(n+1)))`
-/

namespace A101858.P8097621307282808031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (Int.tmod (A340429 (n + 1)) (2 * (n + 1) : ℤ)).toNat

end

end A101858.P8097621307282808031

/-! ## A101858.P5340720152889247744

`floor(A005117(abs((-1)^n))+ϕ*A340429(n+1))`
-/

namespace A101858.P5340720152889247744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005117 |(-1) ^ n|.toNat : ℝ) + Real.goldenRatio * (A340429 (n + 1) : ℝ)⌋

end

end A101858.P5340720152889247744

/-! ## A101858.P5284504009162614180

`∑{d}[A026351(A340429(n+1)), A000010(#)]`
-/

namespace A101858.P5284504009162614180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A340429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A101858.P5284504009162614180

/-! ## A101858.P16008526887748343755

`A295573(n+1)-A000201(A004736(n+1))`
-/

namespace A101858.P16008526887748343755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295573 (n + 1) - A000201 (A004736 (n + 1)).toNat

end

end A101858.P16008526887748343755

/-! ## A101858.P2911832585380813165

`A295573(-xor(n, -1))-A292644(A004736(n+1))`
-/

namespace A101858.P2911832585380813165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295573 (-Int.xor (n : ℤ) (-1)).toNat - A292644 (A004736 (n + 1)).toNat

end

end A101858.P2911832585380813165

/-! ## A101858.P18406853976732715713

`A295573(n-log2(1/2))-A292644(A004736(n+1))`
-/

namespace A101858.P18406853976732715713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295573 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - A292644 (A004736 (n + 1)).toNat

end

end A101858.P18406853976732715713

/-!
# A101859: a(n) = 11 + (23*n)/2 + n^2/2.

The programs for A101859, there is no canonical definition to state claims against.
-/

/-! ## A101859.P16900114021219288066

`n*(n+21)/2`
-/

namespace A101859.P16900114021219288066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 21) : ℚ) / 2

end

end A101859.P16900114021219288066

/-! ## A101859.P14593927561736388162

`n-1+a(n-1)+11` with `a(0)=0`
-/

namespace A101859.P14593927561736388162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 1 + a (n - 1) + 11

end

end A101859.P14593927561736388162

/-! ## A101859.P7471487666978694860

`11+23*(n-1)/2+(n-1)²/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101859.P7471487666978694860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  11 + (23 * ((n : ℤ) - 1) : ℚ) / 2 + (((n : ℤ) - 1) ^ 2 : ℚ) / 2

end

end A101859.P7471487666978694860

/-! ## A101859.P5246750650224631843

`record[(n-21)*n/2]`
-/

namespace A101859.P5246750650224631843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 21 : ℚ) * ((n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101859.P5246750650224631843

/-! ## A101859.P11536010827605292467

`∑[5*ceil(atan(2*n))+n]`
-/

namespace A101859.P11536010827605292467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌈Real.arctan (2 * n : ℝ)⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101859.P11536010827605292467

/-!
# A101860: a(n) = (3+n)*(2 + 33*n + n^2)/6.

The programs for A101860, the canonical program `A101860.P17270686072231412779` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101860 has offset 0).

The definition of A101860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3+n)*(2+33*n+n²)/6` (program `A101860.P10575539576774653038`, by `A101860.P10575539576774653038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101860.P10575539576774653038

`(3+n)*(2+33*n+n²)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101860.P10575539576774653038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 + n) * (2 + 33 * n + n ^ 2) : ℚ) / 6

end

end A101860.P10575539576774653038

namespace A101860

/-- `(3+n)*(2+33*n+n²)/6` -/
def P10575539576774653038.Spec : Prop :=
  ∀ n, P10575539576774653038.a n = (A101860 n : ℚ)

theorem P10575539576774653038.correct : P10575539576774653038.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A101860, Nat.add_sub_cancel, A101860.P10575539576774653038.a, A101860.P17270686072231412779.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A101860, Nat.add_sub_cancel, A101860.P10575539576774653038.a, A101860.P17270686072231412779.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A101860

/-! ## A101860.P17270686072231412779

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=24, a(2)=60, a(3)=110`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101860

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17270686072231412779.Spec : Prop :=
  ∀ n, P17270686072231412779.a n = A101860 n

theorem P17270686072231412779.correct : P17270686072231412779.Spec := by
  intro n
  simp only [A101860]

end A101860

/-! ## A101860.P1799774426445780029

`Δ[(2*n+1)²]+∑[n+3]+a(n-1)` with `a(0)=1`
-/

namespace A101860.P1799774426445780029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + a (n - 1))

end

end A101860.P1799774426445780029

namespace A101860

/-- `Δ[(2*n+1)²]+∑[n+3]+a(n-1)` -/
def P1799774426445780029.Spec : Prop :=
  ∀ n, P1799774426445780029.a n = A101860 n

end A101860

/-! ## A101860.P3854317607032060138

`∑[gcd(∑[n+11], A000038(n))]`
-/

namespace A101860.P3854317607032060138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A000038 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101860.P3854317607032060138

namespace A101860

/-- `∑[gcd(∑[n+11], A000038(n))]` -/
def P3854317607032060138.Spec : Prop :=
  ∀ n, (P3854317607032060138.a n : ℤ) = A101860 n

end A101860

/-! ## A101860.P8405845507945528582

`A131874(n)+A111396(n)`
-/

namespace A101860.P8405845507945528582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131874 n + A111396 n

end

end A101860.P8405845507945528582

namespace A101860

/-- `A131874(n)+A111396(n)` -/
def P8405845507945528582.Spec : Prop :=
  ∀ n, P8405845507945528582.a n = A101860 n

end A101860

/-! ## A101860.P6142504437634974319

`A143058(n)+A140679(n)`
-/

namespace A101860.P6142504437634974319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143058 n + A140679 n

end

end A101860.P6142504437634974319

namespace A101860

/-- `A143058(n)+A140679(n)` -/
def P6142504437634974319.Spec : Prop :=
  ∀ n, P6142504437634974319.a n = A101860 n

end A101860

/-! ## A101860.P460170142746786185

`A264444(n)+A116668(n)`
-/

namespace A101860.P460170142746786185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 n + A116668 n

end

end A101860.P460170142746786185

namespace A101860

/-- `A264444(n)+A116668(n)` -/
def P460170142746786185.Spec : Prop :=
  ∀ n, P460170142746786185.a n = A101860 n

end A101860

/-! ## A101860.P3954860714922691578

`A166144(n+1)+A000292(n)`
-/

namespace A101860.P3954860714922691578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166144 (n + 1) + A000292 n

end

end A101860.P3954860714922691578

namespace A101860

/-- `A166144(n+1)+A000292(n)` -/
def P3954860714922691578.Spec : Prop :=
  ∀ n, P3954860714922691578.a n = A101860 n

end A101860

/-! ## A101860.P10821371991349278531

`A166148(n+1)+A005586(n)`
-/

namespace A101860.P10821371991349278531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166148 (n + 1) + A005586 n

end

end A101860.P10821371991349278531

namespace A101860

/-- `A166148(n+1)+A005586(n)` -/
def P10821371991349278531.Spec : Prop :=
  ∀ n, P10821371991349278531.a n = A101860 n

end A101860

/-! ## A101860.P14863344644954994452

`A332519(n+1)+A006416(n+2)`
-/

namespace A101860.P14863344644954994452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332519 (n + 1) + A006416 (n + 2)

end

end A101860.P14863344644954994452

namespace A101860

/-- `A332519(n+1)+A006416(n+2)` -/
def P14863344644954994452.Spec : Prop :=
  ∀ n, P14863344644954994452.a n = A101860 n

end A101860

/-! ## A101860.P16187830587842066086

`A201975(n+1)-A290768(n+1)`
-/

namespace A101860.P16187830587842066086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201975 (n + 1) - A290768 (n + 1)

end

end A101860.P16187830587842066086

namespace A101860

/-- `A201975(n+1)-A290768(n+1)` -/
def P16187830587842066086.Spec : Prop :=
  ∀ n, P16187830587842066086.a n = A101860 n

end A101860

/-! ## A101860.P15110417993925543514

`A332519(n+1)+A005286(n)+A000096(n)`
-/

namespace A101860.P15110417993925543514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332519 (n + 1) + (A005286 n + A000096 n)

end

end A101860.P15110417993925543514

namespace A101860

/-- `A332519(n+1)+A005286(n)+A000096(n)` -/
def P15110417993925543514.Spec : Prop :=
  ∀ n, P15110417993925543514.a n = A101860 n

end A101860

/-! ## A101860.P152309148829673003

`A256645(n+1)-(A256716(n)+A051865(n))`
-/

namespace A101860.P152309148829673003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256645 (n + 1) - (A256716 n + A051865 n)

end

end A101860.P152309148829673003

namespace A101860

/-- `A256645(n+1)-(A256716(n)+A051865(n))` -/
def P152309148829673003.Spec : Prop :=
  ∀ n, P152309148829673003.a n = A101860 n

end A101860

/-! ## A101860.P8183628038094585301

`∑[∑[n+11]^A001221(A000961(n+1))]`
-/

namespace A101860.P8183628038094585301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 11

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101860.P8183628038094585301

namespace A101860

/-- `∑[∑[n+11]^A001221(A000961(n+1))]` -/
def P8183628038094585301.Spec : Prop :=
  ∀ n, P8183628038094585301.a n = (A101860 n : ℚ)

end A101860

/-! ## A101860.P8782843447608468726

`∑[A317311(A103517(n))+∑[n]]`
-/

namespace A101860.P8782843447608468726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 (A103517 n).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101860.P8782843447608468726

namespace A101860

/-- `∑[A317311(A103517(n))+∑[n]]` -/
def P8782843447608468726.Spec : Prop :=
  ∀ n, P8782843447608468726.a n = A101860 n

end A101860

/-! ## A101860.P3291791981966932539

`∑[∑[n+11]%A276387(n+1)]`
-/

namespace A101860.P3291791981966932539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 11

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A276387 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101860.P3291791981966932539

namespace A101860

/-- `∑[∑[n+11]%A276387(n+1)]` -/
def P3291791981966932539.Spec : Prop :=
  ∀ n, P3291791981966932539.a n = A101860 n

end A101860

/-!
# A101861: a(n) = n*(n+5)*(50+45*n+n^2)/24.

The programs for A101861, the canonical program `A101861.P10845603065436546558` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101861 has offset 1).

The definition of A101861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101861.P10845603065436546558

`(n+1)*(n+6)*(50+45*(n+1)+(n+1)²)/24`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101861

/-- `(n+1)*(n+6)*(50+45*(n+1)+(n+1)²)/24` -/
def P10845603065436546558.Spec : Prop :=
  ∀ n, P10845603065436546558.a n = (A101861 (n + 1) : ℚ)

end A101861

/-! ## A101861.P7854767654899397705

`A101860(n+1)+a(n-1)` with `a(0)=24`
-/

namespace A101861.P7854767654899397705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24] fun n a =>
  A101860 (n + 1) + a (n - 1)

end

end A101861.P7854767654899397705

namespace A101861

/-- `A101860(n+1)+a(n-1)` -/
def P7854767654899397705.Spec : Prop :=
  ∀ n, P7854767654899397705.a n = A101861 (n + 1)

end A101861

/-! ## A101861.P17432858778193238552

`∑[A101860(n+1)]%A247851(n)`
-/

namespace A101861.P17432858778193238552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A247851 n)

end

end A101861.P17432858778193238552

namespace A101861

/-- `∑[A101860(n+1)]%A247851(n)` -/
def P17432858778193238552.Spec : Prop :=
  ∀ n, P17432858778193238552.a n = A101861 (n + 1)

end A101861

/-! ## A101861.P7278879188322406172

`A000007(n+1)+∑[A101860(n+1)]`
-/

namespace A101861.P7278879188322406172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101861.P7278879188322406172

namespace A101861

/-- `A000007(n+1)+∑[A101860(n+1)]` -/
def P7278879188322406172.Spec : Prop :=
  ∀ n, P7278879188322406172.a n = A101861 (n + 1)

end A101861

/-! ## A101861.P10381027523429700601

`char[A247830(n+1)]+∑[A101860(n+1)]`
-/

namespace A101861.P10381027523429700601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A101861.P10381027523429700601

namespace A101861

/-- `char[A247830(n+1)]+∑[A101860(n+1)]` -/
def P10381027523429700601.Spec : Prop :=
  ∀ n, P10381027523429700601.a n = A101861 (n + 1)

end A101861

/-! ## A101861.P8735477247573647387

`A010054(3*n+2)+∑[A101860(n+1)]`
-/

namespace A101861.P8735477247573647387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101861.P8735477247573647387

namespace A101861

/-- `A010054(3*n+2)+∑[A101860(n+1)]` -/
def P8735477247573647387.Spec : Prop :=
  ∀ n, P8735477247573647387.a n = A101861 (n + 1)

end A101861

/-! ## A101861.P13247091465329400661

`A267883(4*n)+∑[A101860(n+1)]`
-/

namespace A101861.P13247091465329400661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267883 (4 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101861.P13247091465329400661

namespace A101861

/-- `A267883(4*n)+∑[A101860(n+1)]` -/
def P13247091465329400661.Spec : Prop :=
  ∀ n, P13247091465329400661.a n = A101861 (n + 1)

end A101861

/-!
# A101862: a(n) = n*(n+1)*(n+7)*(122+57*n+n^2)/120.

The programs for A101862, the canonical program `A101862.P172999482734186496` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101862 has offset 1).

The definition of A101862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101862.P172999482734186496

`(n+1)*(n+2)*(n+8)*(122+57*(n+1)+(n+1)²)/120`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101862

/-- `(n+1)*(n+2)*(n+8)*(122+57*(n+1)+(n+1)²)/120` -/
def P172999482734186496.Spec : Prop :=
  ∀ n, P172999482734186496.a n = (A101862 (n + 1) : ℚ)

end A101862

/-! ## A101862.P8415185855325034551

`lcm(∑[A101861(n+1)], A054977(n))`
-/

namespace A101862.P8415185855325034551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101861 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A054977 n)

end

end A101862.P8415185855325034551

namespace A101862

/-- `lcm(∑[A101861(n+1)], A054977(n))` -/
def P8415185855325034551.Spec : Prop :=
  ∀ n, (P8415185855325034551.a n : ℤ) = A101862 (n + 1)

end A101862

/-! ## A101862.P2472556157054933494

`A063524(A101868(n+1))+∑[A101861(n+1)]`
-/

namespace A101862.P2472556157054933494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A101868 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101862.P2472556157054933494

namespace A101862

/-- `A063524(A101868(n+1))+∑[A101861(n+1)]` -/
def P2472556157054933494.Spec : Prop :=
  ∀ n, P2472556157054933494.a n = A101862 (n + 1)

end A101862

/-! ## A101862.P5094144272464944493

`A063524(A101876(n+1))+∑[A101861(n+1)]`
-/

namespace A101862.P5094144272464944493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A101876 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101862.P5094144272464944493

namespace A101862

/-- `A063524(A101876(n+1))+∑[A101861(n+1)]` -/
def P5094144272464944493.Spec : Prop :=
  ∀ n, P5094144272464944493.a n = A101862 (n + 1)

end A101862

/-! ## A101862.P14433603640152358096

`∑[∑[A101860(n+1)]]%A247851(n)`
-/

namespace A101862.P14433603640152358096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A247851 n)

end

end A101862.P14433603640152358096

namespace A101862

/-- `∑[∑[A101860(n+1)]]%A247851(n)` -/
def P14433603640152358096.Spec : Prop :=
  ∀ n, P14433603640152358096.a n = A101862 (n + 1)

end A101862

/-! ## A101862.P2359967575798706656

`∑[A101861(n+1)]%A101852(n+1)²`
-/

namespace A101862.P2359967575798706656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A101852 (n + 1) ^ 2)

end

end A101862.P2359967575798706656

namespace A101862

/-- `∑[A101861(n+1)]%A101852(n+1)²` -/
def P2359967575798706656.Spec : Prop :=
  ∀ n, P2359967575798706656.a n = A101862 (n + 1)

end A101862

/-!
# A101863: Main diagonal of A101858.

The programs for A101863, the canonical program `A101863.P9016374371745522862` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101863 has offset 1).

The definition of A101863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101863.P9016374371745522862

`(n+1)²+floor((n+1)*(1+sqrt(5))/2)²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101863

/-- `(n+1)²+floor((n+1)*(1+sqrt(5))/2)²` -/
def P9016374371745522862.Spec : Prop :=
  ∀ n, P9016374371745522862.a n = A101863 (n + 1)

theorem P9016374371745522862.correct : P9016374371745522862.Spec := by
  intro n
  simp only [A101863, Nat.add_sub_cancel]

end A101863

/-! ## A101863.P14631270369391181911

`abs(A075312(n+1)-A293688(n))`
-/

namespace A101863.P14631270369391181911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075312 (n + 1) - A293688 n|

end

end A101863.P14631270369391181911

namespace A101863

/-- `abs(A075312(n+1)-A293688(n))` -/
def P14631270369391181911.Spec : Prop :=
  ∀ n, P14631270369391181911.a n = A101863 (n + 1)

end A101863

/-! ## A101863.P13899441542777546203

`A371381(A000201(n+1))`
-/

namespace A101863.P13899441542777546203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371381 (A000201 (n + 1)).toNat

end

end A101863.P13899441542777546203

namespace A101863

/-- `A371381(A000201(n+1))` -/
def P13899441542777546203.Spec : Prop :=
  ∀ n, P13899441542777546203.a n = A101863 (n + 1)

end A101863

/-! ## A101863.P17274892444794669027

`A371381(A066096(n+1))`
-/

namespace A101863.P17274892444794669027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371381 (A066096 (n + 1)).toNat

end

end A101863.P17274892444794669027

namespace A101863

/-- `A371381(A066096(n+1))` -/
def P17274892444794669027.Spec : Prop :=
  ∀ n, P17274892444794669027.a n = A101863 (n + 1)

end A101863

/-! ## A101863.P16900901754103552470

`A371381(A004956(n+1)-1)`
-/

namespace A101863.P16900901754103552470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371381 (A004956 (n + 1) - 1).toNat

end

end A101863.P16900901754103552470

namespace A101863

/-- `A371381(A004956(n+1)-1)` -/
def P16900901754103552470.Spec : Prop :=
  ∀ n, P16900901754103552470.a n = A101863 (n + 1)

end A101863

/-! ## A101863.P9483818759871819194

`A371381(A026351(n+1)-1)`
-/

namespace A101863.P9483818759871819194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371381 (A026351 (n + 1) - 1).toNat

end

end A101863.P9483818759871819194

namespace A101863

/-- `A371381(A026351(n+1)-1)` -/
def P9483818759871819194.Spec : Prop :=
  ∀ n, P9483818759871819194.a n = A101863 (n + 1)

end A101863

/-! ## A101863.P8316029392996597052

`A371381(A019446(n+1)+n)`
-/

namespace A101863.P8316029392996597052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371381 (A019446 (n + 1) + (n : ℤ)).toNat

end

end A101863.P8316029392996597052

namespace A101863

/-- `A371381(A019446(n+1)+n)` -/
def P8316029392996597052.Spec : Prop :=
  ∀ n, P8316029392996597052.a n = A101863 (n + 1)

end A101863

/-! ## A101863.P10041740013873936718

`A000027(A000201(n+1)²+(n+1)²)`
-/

namespace A101863.P10041740013873936718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000201 (n + 1) ^ 2 + ((n + 1) ^ 2 : ℤ)).toNat

end

end A101863.P10041740013873936718

namespace A101863

/-- `A000027(A000201(n+1)²+(n+1)²)` -/
def P10041740013873936718.Spec : Prop :=
  ∀ n, P10041740013873936718.a n = A101863 (n + 1)

end A101863

/-! ## A101863.P15152210416631929563

`A004956(A371388(n+1))`
-/

namespace A101863.P15152210416631929563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A371388 (n + 1)).toNat

end

end A101863.P15152210416631929563

namespace A101863

/-- `A004956(A371388(n+1))` -/
def P15152210416631929563.Spec : Prop :=
  ∀ n, P15152210416631929563.a n = A101863 (n + 1)

end A101863

/-! ## A101863.P8740648184733152703

`A004956((n+1)*A050140(n+1))`
-/

namespace A101863.P8740648184733152703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 ((n + 1 : ℤ) * A050140 (n + 1)).toNat

end

end A101863.P8740648184733152703

namespace A101863

/-- `A004956((n+1)*A050140(n+1))` -/
def P8740648184733152703.Spec : Prop :=
  ∀ n, P8740648184733152703.a n = A101863 (n + 1)

end A101863

/-!
# A101864: Wythoff BB numbers.

The programs for A101864, the canonical program `A101864.P594561568129511261` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101864 has offset 1).

The definition of A101864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101864.P15055161963483972466

`3*comp[floor(ϕ*n)]-(n+1)`
-/

namespace A101864.P15055161963483972466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A101864.P15055161963483972466

namespace A101864

/-- `3*comp[floor(ϕ*n)]-(n+1)` -/
def P15055161963483972466.Spec : Prop :=
  ∀ n, P15055161963483972466.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P10913385284182191949

`∩[floor(ϕ*(n+2)+n), ceil(ϕ*n)]`
-/

namespace A101864.P10913385284182191949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101864.P10913385284182191949

namespace A101864

/-- `∩[floor(ϕ*(n+2)+n), ceil(ϕ*n)]` -/
def P10913385284182191949.Spec : Prop :=
  ∀ n, (P10913385284182191949.a n : ℤ) = A101864 (n + 1)

end A101864

/-! ## A101864.P8249332111941942973

`comp[∪[2*floor(ϕ*(n+1))+n, floor(ϕ*n)]]`
-/

namespace A101864.P8249332111941942973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A101864.P8249332111941942973

namespace A101864

/-- `comp[∪[2*floor(ϕ*(n+1))+n, floor(ϕ*n)]]` -/
def P8249332111941942973.Spec : Prop :=
  ∀ n, (P8249332111941942973.a n : ℤ) = A101864 (n + 1)

end A101864

/-! ## A101864.P14483764826091766462

`A187949(2*(n+1))`
-/

namespace A101864.P14483764826091766462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187949 (2 * (n + 1))

end

end A101864.P14483764826091766462

namespace A101864

/-- `A187949(2*(n+1))` -/
def P14483764826091766462.Spec : Prop :=
  ∀ n, P14483764826091766462.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P10502341207018966072

`A188261(2*(n+1))`
-/

namespace A101864.P10502341207018966072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188261 (2 * (n + 1))

end

end A101864.P10502341207018966072

namespace A101864

/-- `A188261(2*(n+1))` -/
def P10502341207018966072.Spec : Prop :=
  ∀ n, P10502341207018966072.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P594561568129511261

`abs(3-A188438(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A101864

/-- `abs(3-A188438(n+1))` -/
def P594561568129511261.Spec : Prop :=
  ∀ n, P594561568129511261.a n = A101864 (n + 1)

theorem P594561568129511261.correct : P594561568129511261.Spec := by
  intro n
  simp only [A101864, Nat.add_sub_cancel]

end A101864

/-! ## A101864.P12057287665799981261

`∑[abs(Δ[A188018(2*(n+1))])]`
-/

namespace A101864.P12057287665799981261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101864.P12057287665799981261

namespace A101864

/-- `∑[abs(Δ[A188018(2*(n+1))])]` -/
def P12057287665799981261.Spec : Prop :=
  ∀ n, P12057287665799981261.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P5540312526275542232

`A001950(A001950(n+1))`
-/

namespace A101864.P5540312526275542232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A001950 (n + 1)).toNat

end

end A101864.P5540312526275542232

namespace A101864

/-- `A001950(A001950(n+1))` -/
def P5540312526275542232.Spec : Prop :=
  ∀ n, P5540312526275542232.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P11761961769600818723

`A002251(A003623(n+1))`
-/

namespace A101864.P11761961769600818723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A003623 (n + 1)).toNat

end

end A101864.P11761961769600818723

namespace A101864

/-- `A002251(A003623(n+1))` -/
def P11761961769600818723.Spec : Prop :=
  ∀ n, P11761961769600818723.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P11069167201570565421

`A022413(A003622(n+1))`
-/

namespace A101864.P11069167201570565421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A003622 (n + 1)).toNat

end

end A101864.P11069167201570565421

namespace A101864

/-- `A022413(A003622(n+1))` -/
def P11069167201570565421.Spec : Prop :=
  ∀ n, P11069167201570565421.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P10706886649354254901

`A101345(A000201(n+1))`
-/

namespace A101864.P10706886649354254901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (A000201 (n + 1)).toNat

end

end A101864.P10706886649354254901

namespace A101864

/-- `A101345(A000201(n+1))` -/
def P10706886649354254901.Spec : Prop :=
  ∀ n, P10706886649354254901.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P16213075270653797462

`A022342(A089910(n+1))`
-/

namespace A101864.P16213075270653797462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A089910 (n + 1)).toNat

end

end A101864.P16213075270653797462

namespace A101864

/-- `A022342(A089910(n+1))` -/
def P16213075270653797462.Spec : Prop :=
  ∀ n, P16213075270653797462.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P17604595326328454563

`A101345(A066096(n+1))`
-/

namespace A101864.P17604595326328454563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101345 (A066096 (n + 1)).toNat

end

end A101864.P17604595326328454563

namespace A101864

/-- `A101345(A066096(n+1))` -/
def P17604595326328454563.Spec : Prop :=
  ∀ n, P17604595326328454563.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P16133972751874860508

`A187951(A003231(n+1))`
-/

namespace A101864.P16133972751874860508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187951 (A003231 (n + 1)).toNat

end

end A101864.P16133972751874860508

namespace A101864

/-- `A187951(A003231(n+1))` -/
def P16133972751874860508.Spec : Prop :=
  ∀ n, P16133972751874860508.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P6353565999000945254

`A188434(A004956(n+1))`
-/

namespace A101864.P6353565999000945254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (A004956 (n + 1)).toNat

end

end A101864.P6353565999000945254

namespace A101864

/-- `A188434(A004956(n+1))` -/
def P6353565999000945254.Spec : Prop :=
  ∀ n, P6353565999000945254.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P17876802870206234702

`A188434(A026351(n+1))`
-/

namespace A101864.P17876802870206234702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (A026351 (n + 1)).toNat

end

end A101864.P17876802870206234702

namespace A101864

/-- `A188434(A026351(n+1))` -/
def P17876802870206234702.Spec : Prop :=
  ∀ n, P17876802870206234702.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P14470034626571748355

`A022342(A276885(n+2))`
-/

namespace A101864.P14470034626571748355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A276885 (n + 2)).toNat

end

end A101864.P14470034626571748355

namespace A101864

/-- `A022342(A276885(n+2))` -/
def P14470034626571748355.Spec : Prop :=
  ∀ n, P14470034626571748355.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P15443599623135871634

`A001950(A307295(2*n))`
-/

namespace A101864.P15443599623135871634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A307295 (2 * n)).toNat

end

end A101864.P15443599623135871634

namespace A101864

/-- `A001950(A307295(2*n))` -/
def P15443599623135871634.Spec : Prop :=
  ∀ n, P15443599623135871634.a n = A101864 (n + 1)

end A101864

/-! ## A101864.P2095639751750593090

`A004937(A003622(n+1)+1)`
-/

namespace A101864.P2095639751750593090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A003622 (n + 1) + 1).toNat

end

end A101864.P2095639751750593090

namespace A101864

/-- `A004937(A003622(n+1)+1)` -/
def P2095639751750593090.Spec : Prop :=
  ∀ n, P2095639751750593090.a n = A101864 (n + 1)

end A101864

/-!
# A101865: Third row of A101858.

The programs for A101865, there is no canonical definition to state claims against.
-/

/-! ## A101865.P18035308079180246780

`∑[4*Δ[floor(ϕ*n)]+3]`
-/

namespace A101865.P18035308079180246780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101865.P18035308079180246780

/-! ## A101865.P9010552678785388259

`∑[Δ[ceil(n*ϕ²)]!+4]+n-3`
-/

namespace A101865.P9010552678785388259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 3)

end

end A101865.P9010552678785388259

/-! ## A101865.P4794635990932988462

`round((ϕ+2)*floor(ϕ*ϕ*C(n+1, n)))`
-/

namespace A101865.P4794635990932988462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio + 2) * (⌊Real.goldenRatio * (Real.goldenRatio * (Nat.choose (n + 1) n : ℝ))⌋ : ℝ))

end

end A101865.P4794635990932988462

/-! ## A101865.P7955872932350978849

`round((ϕ+2)*ceil(ϕ*C(n+1, n)+n))`
-/

namespace A101865.P7955872932350978849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio + 2) * (⌈Real.goldenRatio * (Nat.choose (n + 1) n : ℝ) + (n : ℝ)⌉ : ℝ))

end

end A101865.P7955872932350978849

/-! ## A101865.P2648671925944373057

`∩[ceil(n*sqrt(5)), floor((n+ϕ)*ϕ²+n)]`
-/

namespace A101865.P2648671925944373057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (5 : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) + Real.goldenRatio) * Real.goldenRatio ^ 2 + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101865.P2648671925944373057

/-! ## A101865.P4000610785369653161

`round((ϕ+2)*ceil(xor(1, 2*n)+(n+1)/ϕ))`
-/

namespace A101865.P4000610785369653161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.goldenRatio + 2) * (⌈(Nat.xor 1 (2 * n) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌉ : ℝ))

end

end A101865.P4000610785369653161

/-! ## A101865.P10929281644411904217

`floor((4*ϕ+3)*(n+1))-floor(4*ϕ*(n+1))%4`
-/

namespace A101865.P10929281644411904217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * Real.goldenRatio + 3) * (n + 1 : ℝ)⌋ - Int.tmod ⌊4 * (Real.goldenRatio * (n + 1 : ℝ))⌋ 4

end

end A101865.P10929281644411904217

/-! ## A101865.P14009070932600727914

`∩[floor(n*ϕ²)-6, floor(n*ϕ²)]+1-floor(ϕ*(n+1))`
-/

namespace A101865.P14009070932600727914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1 : ℤ) - ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A101865.P14009070932600727914

/-! ## A101865.P7159382882474090260

`ceil(ϕ*A190509(n+1))`
-/

namespace A101865.P7159382882474090260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A190509 (n + 1) : ℝ)⌉

end

end A101865.P7159382882474090260

/-! ## A101865.P2005252076535378390

`A075319(n+1)+3+n`
-/

namespace A101865.P2005252076535378390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075319 (n + 1) + 3 + (n : ℤ)

end

end A101865.P2005252076535378390

/-!
# A101866: Array read by antidiagonals: Arnoux's product T(n,k) = n * k = nk + ceiling(phi n) ceiling(phi k), where phi = (1 + sqrt(5))/2 ; n, k >= 1.

The programs for A101866, there is no canonical definition to state claims against.
-/

/-! ## A101866.P15544289634270231637

`floor(ϕ*(A340429(n+1)+comp[∑[n]]-n))+1`
-/

namespace A101866.P15544289634270231637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A340429 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) : ℝ)⌋ + 1

end

end A101866.P15544289634270231637

/-! ## A101866.P9764995764824473053

`A295573(n+1)+A004956(A002260(n+1))`
-/

namespace A101866.P9764995764824473053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295573 (n + 1) + A004956 (A002260 (n + 1)).toNat

end

end A101866.P9764995764824473053

/-! ## A101866.P14561330276218964528

`A022413(A340429(n+1))-A135090(n)`
-/

namespace A101866.P14561330276218964528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 (A340429 (n + 1)).toNat - A135090 n

end

end A101866.P14561330276218964528

/-! ## A101866.P16056456555806176092

`A004956(A340429(n+1)+A003057(n+2))`
-/

namespace A101866.P16056456555806176092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A340429 (n + 1) + A003057 (n + 2)).toNat

end

end A101866.P16056456555806176092

/-! ## A101866.P314604187639145102

`A026351(A340429(n+1)+A003057(n+2))`
-/

namespace A101866.P314604187639145102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A340429 (n + 1) + A003057 (n + 2)).toNat

end

end A101866.P314604187639145102

/-!
# A101867: Main diagonal of A101866.

The programs for A101867, the canonical program `A101867.P4553084332382583682` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101867 has offset 1).

The definition of A101867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101867.P4553084332382583682

`(n+1)²+ceil((n+1)*(1+sqrt(5))/2)²`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101867

/-- `(n+1)²+ceil((n+1)*(1+sqrt(5))/2)²` -/
def P4553084332382583682.Spec : Prop :=
  ∀ n, P4553084332382583682.a n = A101867 (n + 1)

theorem P4553084332382583682.correct : P4553084332382583682.Spec := by
  intro n
  simp only [A101867, Nat.add_sub_cancel]

end A101867

/-! ## A101867.P13171861211728745963

`A101866((n+1)²+n²)`
-/

namespace A101867.P13171861211728745963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101866 ((n + 1) ^ 2 + n ^ 2)

end

end A101867.P13171861211728745963

namespace A101867

/-- `A101866((n+1)²+n²)` -/
def P13171861211728745963.Spec : Prop :=
  ∀ n, P13171861211728745963.a n = A101867 (n + 1)

end A101867

/-! ## A101867.P17139043361009707889

`A004956((n+1)*A195121(A004956(n+1)))`
-/

namespace A101867.P17139043361009707889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 ((n + 1 : ℤ) * A195121 (A004956 (n + 1)).toNat).toNat

end

end A101867.P17139043361009707889

namespace A101867

/-- `A004956((n+1)*A195121(A004956(n+1)))` -/
def P17139043361009707889.Spec : Prop :=
  ∀ n, P17139043361009707889.a n = A101867 (n + 1)

end A101867

/-!
# A101868: a(n) = n + 2*ceiling(phi*n), where phi = (1 + sqrt(5))/2. Row 1 of A101866.

The programs for A101868, the canonical program `A101868.P15548519126891121661` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101868 has offset 1).

The definition of A101868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+2*ceil(ϕ*(n+1))` (program `A101868.P15548519126891121661`, by `A101868.P15548519126891121661.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101868.P15548519126891121661

`n+1+2*ceil(ϕ*(n+1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101868

/-- `n+1+2*ceil(ϕ*(n+1))` -/
def P15548519126891121661.Spec : Prop :=
  ∀ n, P15548519126891121661.a n = A101868 (n + 1)

theorem P15548519126891121661.correct : P15548519126891121661.Spec := by
  intro n
  simp only [A101868, Nat.add_sub_cancel]

end A101868

/-! ## A101868.P16492765022511862855

`∩[ceil(ϕ*n)+1, ceil(ϕ*n)]`
-/

namespace A101868.P16492765022511862855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101868.P16492765022511862855

namespace A101868

/-- `∩[ceil(ϕ*n)+1, ceil(ϕ*n)]` -/
def P16492765022511862855.Spec : Prop :=
  ∀ n, (P16492765022511862855.a n : ℤ) = A101868 (n + 1)

end A101868

/-! ## A101868.P8376511818246990757

`A101869(n+1)/2`
-/

namespace A101868.P8376511818246990757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101869 (n + 1) : ℚ) / 2

end

end A101868.P8376511818246990757

namespace A101868

/-- `A101869(n+1)/2` -/
def P8376511818246990757.Spec : Prop :=
  ∀ n, P8376511818246990757.a n = (A101868 (n + 1) : ℚ)

end A101868

/-! ## A101868.P1050832967786412469

`A001950(A000201(n+1)+1)`
-/

namespace A101868.P1050832967786412469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A000201 (n + 1) + 1).toNat

end

end A101868.P1050832967786412469

namespace A101868

/-- `A001950(A000201(n+1)+1)` -/
def P1050832967786412469.Spec : Prop :=
  ∀ n, P1050832967786412469.a n = A101868 (n + 1)

end A101868

/-!
# A101869: Row 2 of A101866.

The programs for A101869, the canonical program `A101869.P4540326533018528395` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101869 has offset 1).

The definition of A101869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101869.P4540326533018528395

`2*(n+1)+4*ceil((n+1)*(1+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101869

/-- `2*(n+1)+4*ceil((n+1)*(1+sqrt(5))/2)` -/
def P4540326533018528395.Spec : Prop :=
  ∀ n, P4540326533018528395.a n = A101869 (n + 1)

theorem P4540326533018528395.correct : P4540326533018528395.Spec := by
  intro n
  simp only [A101869, Nat.add_sub_cancel]

end A101869

/-! ## A101869.P11343109566625565287

`2*∩[ceil(ϕ*n)+1, ceil(ϕ*n)]`
-/

namespace A101869.P11343109566625565287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101869.P11343109566625565287

namespace A101869

/-- `2*∩[ceil(ϕ*n)+1, ceil(ϕ*n)]` -/
def P11343109566625565287.Spec : Prop :=
  ∀ n, (P11343109566625565287.a n : ℤ) = A101869 (n + 1)

end A101869

/-! ## A101869.P1170407561579999031

`∩[2*n, floor((ϕ+2)*(n+1))-floor(n/ϕ²)]`
-/

namespace A101869.P1170407561579999031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio + 2) * (n + 1 : ℝ)⌋ - ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101869.P1170407561579999031

namespace A101869

/-- `∩[2*n, floor((ϕ+2)*(n+1))-floor(n/ϕ²)]` -/
def P1170407561579999031.Spec : Prop :=
  ∀ n, (P1170407561579999031.a n : ℤ) = A101869 (n + 1)

end A101869

/-! ## A101869.P15553761438771268588

`2*A101868(n+1)`
-/

namespace A101869.P15553761438771268588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101868 (n + 1)

end

end A101869.P15553761438771268588

namespace A101869

/-- `2*A101868(n+1)` -/
def P15553761438771268588.Spec : Prop :=
  ∀ n, P15553761438771268588.a n = A101869 (n + 1)

end A101869

/-! ## A101869.P9527450231446912424

`2*(A089910(n+1)+1)`
-/

namespace A101869.P9527450231446912424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089910 (n + 1) + 1)

end

end A101869.P9527450231446912424

namespace A101869

/-- `2*(A089910(n+1)+1)` -/
def P9527450231446912424.Spec : Prop :=
  ∀ n, P9527450231446912424.a n = A101869 (n + 1)

end A101869

/-! ## A101869.P5378196234335823810

`2*(A003623(n+1)+2)`
-/

namespace A101869.P5378196234335823810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003623 (n + 1) + 2)

end

end A101869.P5378196234335823810

namespace A101869

/-- `2*(A003623(n+1)+2)` -/
def P5378196234335823810.Spec : Prop :=
  ∀ n, P5378196234335823810.a n = A101869 (n + 1)

end A101869

/-! ## A101869.P4608942535599646184

`2*(A035336(n+1)+3)`
-/

namespace A101869.P4608942535599646184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A035336 (n + 1) + 3)

end

end A101869.P4608942535599646184

namespace A101869

/-- `2*(A035336(n+1)+3)` -/
def P4608942535599646184.Spec : Prop :=
  ∀ n, P4608942535599646184.a n = A101869 (n + 1)

end A101869

/-! ## A101869.P6387364527302132271

`2*(A134859(n+1)+4)`
-/

namespace A101869.P6387364527302132271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134859 (n + 1) + 4)

end

end A101869.P6387364527302132271

namespace A101869

/-- `2*(A134859(n+1)+4)` -/
def P6387364527302132271.Spec : Prop :=
  ∀ n, P6387364527302132271.a n = A101869 (n + 1)

end A101869

/-! ## A101869.P49042179214762211

`2*A188434(n+2)`
-/

namespace A101869.P49042179214762211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188434 (n + 2)

end

end A101869.P49042179214762211

namespace A101869

/-- `2*A188434(n+2)` -/
def P49042179214762211.Spec : Prop :=
  ∀ n, P49042179214762211.a n = A101869 (n + 1)

end A101869

/-! ## A101869.P2068906964131680412

`2*(A047924(n+1)-1)`
-/

namespace A101869.P2068906964131680412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047924 (n + 1) - 1)

end

end A101869.P2068906964131680412

namespace A101869

/-- `2*(A047924(n+1)-1)` -/
def P2068906964131680412.Spec : Prop :=
  ∀ n, P2068906964131680412.a n = A101869 (n + 1)

end A101869

/-! ## A101869.P8093886271325301660

`A283234(A004956(n+1))`
-/

namespace A101869.P8093886271325301660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (A004956 (n + 1)).toNat

end

end A101869.P8093886271325301660

namespace A101869

/-- `A283234(A004956(n+1))` -/
def P8093886271325301660.Spec : Prop :=
  ∀ n, P8093886271325301660.a n = A101869 (n + 1)

end A101869

/-! ## A101869.P1804076162476997539

`A283234(A026351(n+1))`
-/

namespace A101869.P1804076162476997539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283234 (A026351 (n + 1)).toNat

end

end A101869.P1804076162476997539

namespace A101869

/-- `A283234(A026351(n+1))` -/
def P1804076162476997539.Spec : Prop :=
  ∀ n, P1804076162476997539.a n = A101869 (n + 1)

end A101869

/-! ## A101869.P8757286224948362471

`2*A022413(∑[A001468(n)])`
-/

namespace A101869.P8757286224948362471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022413 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A101869.P8757286224948362471

namespace A101869

/-- `2*A022413(∑[A001468(n)])` -/
def P8757286224948362471.Spec : Prop :=
  ∀ n, P8757286224948362471.a n = A101869 (n + 1)

end A101869

/-!
# A101870: Row 3 of A101866.

The programs for A101870, the canonical program `A101870.P16516673199282475784` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101870 has offset 1).

The definition of A101870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101870.P16516673199282475784

`3*(n+1)+5*ceil((n+1)*(1+sqrt(5))/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101870

/-- `3*(n+1)+5*ceil((n+1)*(1+sqrt(5))/2)` -/
def P16516673199282475784.Spec : Prop :=
  ∀ n, P16516673199282475784.a n = A101870 (n + 1)

theorem P16516673199282475784.correct : P16516673199282475784.Spec := by
  intro n
  simp only [A101870, Nat.add_sub_cancel]

end A101870

/-! ## A101870.P3118655031465920468

`∑[xor(9, Δ[ceil(ϕ*n)]²)]`
-/

namespace A101870.P3118655031465920468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 9 ((f2 (n + 1) - f2 n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101870.P3118655031465920468

namespace A101870

/-- `∑[xor(9, Δ[ceil(ϕ*n)]²)]` -/
def P3118655031465920468.Spec : Prop :=
  ∀ n, P3118655031465920468.a n = A101870 (n + 1)

end A101870

/-! ## A101870.P11145019654213075309

`∩[floor(n*ϕ²)+6, floor(n*ϕ²)]`
-/

namespace A101870.P11145019654213075309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A101870.P11145019654213075309

namespace A101870

/-- `∩[floor(n*ϕ²)+6, floor(n*ϕ²)]` -/
def P11145019654213075309.Spec : Prop :=
  ∀ n, (P11145019654213075309.a n : ℤ) = A101870 (n + 1)

end A101870

/-! ## A101870.P10124809098138399764

`A188471(n+2)`
-/

namespace A101870.P10124809098138399764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188471 (n + 2)

end

end A101870.P10124809098138399764

namespace A101870

/-- `A188471(n+2)` -/
def P10124809098138399764.Spec : Prop :=
  ∀ n, P10124809098138399764.a n = A101870 (n + 1)

end A101870

/-! ## A101870.P15823836236022684197

`A188030(2*(n+1))`
-/

namespace A101870.P15823836236022684197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188030 (2 * (n + 1))

end

end A101870.P15823836236022684197

namespace A101870

/-- `A188030(2*(n+1))` -/
def P15823836236022684197.Spec : Prop :=
  ∀ n, P15823836236022684197.a n = A101870 (n + 1)

end A101870

/-! ## A101870.P6816648764146561230

`A188220(2*(n+1))`
-/

namespace A101870.P6816648764146561230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188220 (2 * (n + 1))

end

end A101870.P6816648764146561230

namespace A101870

/-- `A188220(2*(n+1))` -/
def P6816648764146561230.Spec : Prop :=
  ∀ n, P6816648764146561230.a n = A101870 (n + 1)

end A101870

/-! ## A101870.P37125906616449737

`A004958(A004957(n+1))`
-/

namespace A101870.P37125906616449737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (A004957 (n + 1)).toNat

end

end A101870.P37125906616449737

namespace A101870

/-- `A004958(A004957(n+1))` -/
def P37125906616449737.Spec : Prop :=
  ∀ n, P37125906616449737.a n = A101870 (n + 1)

end A101870

/-! ## A101870.P6994104375256102445

`A004958(A026352(n+1))`
-/

namespace A101870.P6994104375256102445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (A026352 (n + 1)).toNat

end

end A101870.P6994104375256102445

namespace A101870

/-- `A004958(A026352(n+1))` -/
def P6994104375256102445.Spec : Prop :=
  ∀ n, P6994104375256102445.a n = A101870 (n + 1)

end A101870

/-! ## A101870.P10806225238749498949

`A188434(A026356(n+2))`
-/

namespace A101870.P10806225238749498949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (A026356 (n + 2)).toNat

end

end A101870.P10806225238749498949

namespace A101870

/-- `A188434(A026356(n+2))` -/
def P10806225238749498949.Spec : Prop :=
  ∀ n, P10806225238749498949.a n = A101870 (n + 1)

end A101870

/-! ## A101870.P15006993397948441253

`A004958(record[A019444(n+2)])`
-/

namespace A101870.P15006993397948441253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A101870.P15006993397948441253

namespace A101870

/-- `A004958(record[A019444(n+2)])` -/
def P15006993397948441253.Spec : Prop :=
  ∀ n, P15006993397948441253.a n = A101870 (n + 1)

end A101870

/-! ## A101870.P8978456823280478913

`A101868(A001950(n+1)+1)`
-/

namespace A101870.P8978456823280478913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (A001950 (n + 1) + 1).toNat

end

end A101870.P8978456823280478913

namespace A101870

/-- `A101868(A001950(n+1)+1)` -/
def P8978456823280478913.Spec : Prop :=
  ∀ n, P8978456823280478913.a n = A101870 (n + 1)

end A101870

/-!
# A101871: Number of Abelian groups of order 2n+1.

The programs for A101871, there is no canonical definition to state claims against.
-/

/-! ## A101871.P10421406589715805871

`A000688(2*n+1)`
-/

namespace A101871.P10421406589715805871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (2 * n + 1)

end

end A101871.P10421406589715805871

/-! ## A101871.P14121028223870887036

`A101872(Δ[n²])`
-/

namespace A101871.P14121028223870887036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101871.P14121028223870887036

/-! ## A101871.P3580788473976111240

`A101876(Δ[n²])/2`
-/

namespace A101871.P3580788473976111240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101876 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A101871.P3580788473976111240

/-! ## A101871.P3086513995885066430

`A050360(A101296(2*n+1))`
-/

namespace A101871.P3086513995885066430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050360 (A101296 (2 * n + 1)).toNat

end

end A101871.P3086513995885066430

/-! ## A101871.P571222092749632250

`A104404(Δ[n²])`
-/

namespace A101871.P571222092749632250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101871.P571222092749632250

/-! ## A101871.P8642869281038670829

`A238877(3*n+n+1)`
-/

namespace A101871.P8642869281038670829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (3 * n + (n + 1))

end

end A101871.P8642869281038670829

/-! ## A101871.P8375896483095646202

`A104488(8*(2*n+1))`
-/

namespace A101871.P8375896483095646202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (8 * (2 * n + 1))

end

end A101871.P8375896483095646202

/-! ## A101871.P15428566479513481620

`and(A166118(n+2), A295879(2*n+1))`
-/

namespace A101871.P15428566479513481620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A166118 (n + 2)) (A295879 (2 * n + 1))

end

end A101871.P15428566479513481620

/-! ## A101871.P1613623511896678

`and(A026917(n), A295879(2*n+1))`
-/

namespace A101871.P1613623511896678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026917 n) (A295879 (2 * n + 1))

end

end A101871.P1613623511896678

/-! ## A101871.P5483984847436788354

`and(A295879(2*n+1), A304516(n+2))`
-/

namespace A101871.P5483984847436788354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295879 (2 * n + 1)) (A304516 (n + 2))

end

end A101871.P5483984847436788354

/-! ## A101871.P15518035627695237101

`A295879(2*n+1)*A331188(A045458(n+2))`
-/

namespace A101871.P15518035627695237101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 (2 * n + 1) * A331188 (A045458 (n + 2)).toNat

end

end A101871.P15518035627695237101

/-! ## A101871.P10478977009285689925

`and(A291776(n+3), A295879(2*n+1))`
-/

namespace A101871.P10478977009285689925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A291776 (n + 3)) (A295879 (2 * n + 1))

end

end A101871.P10478977009285689925

/-! ## A101871.P14988362268610139034

`A255231(4*n+2)`
-/

namespace A101871.P14988362268610139034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255231 (4 * n + 2)

end

end A101871.P14988362268610139034

/-!
# A101872: Number of Abelian groups of order 2n.

The programs for A101872, there is no canonical definition to state claims against.
-/

/-! ## A101872.P16309739532749319819

`A000688(2*(n+1))`
-/

namespace A101872.P16309739532749319819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (2 * (n + 1))

end

end A101872.P16309739532749319819

/-! ## A101872.P16521902820014399444

`∏{e}[2*(n+1), A000041(#)]`
-/

namespace A101872.P16521902820014399444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p)

end

end A101872.P16521902820014399444

/-! ## A101872.P18085372369354205587

`∏{e}[2*(n+1), A242699(#)]`
-/

namespace A101872.P18085372369354205587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A242699 (Nat.factorization (f1 n) p + 64)

end

end A101872.P18085372369354205587

/-! ## A101872.P715753324224538991

`A050360(A101296(2*(n+1)))`
-/

namespace A101872.P715753324224538991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050360 (A101296 (2 * (n + 1))).toNat

end

end A101872.P715753324224538991

/-! ## A101872.P2371700469310751970

`A394390(2*(n+1))+A380578(2*(n+1))`
-/

namespace A101872.P2371700469310751970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394390 (2 * (n + 1)) + A380578 (2 * (n + 1))

end

end A101872.P2371700469310751970

/-! ## A101872.P729965551456216422

`A063966(2*(n+1))-A063966(2*n+1)`
-/

namespace A101872.P729965551456216422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063966 (2 * (n + 1)) - A063966 (2 * n + 1)

end

end A101872.P729965551456216422

/-! ## A101872.P6897014368207026702

`A104404(2*(n+1))-A104488(2*(n+1))`
-/

namespace A101872.P6897014368207026702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (2 * (n + 1)) - A104488 (2 * (n + 1))

end

end A101872.P6897014368207026702

/-! ## A101872.P18362113009182436853

`A370897(2*n+1)-A370897(2*(n+1))`
-/

namespace A101872.P18362113009182436853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370897 (2 * n + 1) - A370897 (2 * (n + 1))

end

end A101872.P18362113009182436853

/-! ## A101872.P13612631185714735704

`A101113(2*(n+1))/A034444(2*(n+1))`
-/

namespace A101872.P13612631185714735704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101113 (2 * (n + 1)) : ℚ) / (A034444 (2 * (n + 1)) : ℚ)

end

end A101872.P13612631185714735704

/-! ## A101872.P16625365540837001913

`A066295(2*(n+1))+A060689(2*(n+1))`
-/

namespace A101872.P16625365540837001913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066295 (2 * (n + 1)) + A060689 (2 * (n + 1))

end

end A101872.P16625365540837001913

/-! ## A101872.P5589165029415467378

`A066060(2*(n+1))-A088806(2*(n+1))`
-/

namespace A101872.P5589165029415467378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (2 * (n + 1)) - A088806 (2 * (n + 1))

end

end A101872.P5589165029415467378

/-! ## A101872.P1029656532522774538

`A238877(4*n+3)`
-/

namespace A101872.P1029656532522774538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (4 * n + 3)

end

end A101872.P1029656532522774538

/-! ## A101872.P16805903471331560546

`A104404(A003961(2*(n+1)))`
-/

namespace A101872.P16805903471331560546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (A003961 (2 * (n + 1))).toNat

end

end A101872.P16805903471331560546

/-! ## A101872.P7686125591590421337

`A104404(A045965(2*(n+1)))`
-/

namespace A101872.P7686125591590421337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (A045965 (2 * (n + 1))).toNat

end

end A101872.P7686125591590421337

/-! ## A101872.P77497246746124680

`A104404(A064988(2*(n+1)))`
-/

namespace A101872.P77497246746124680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (A064988 (2 * (n + 1))).toNat

end

end A101872.P77497246746124680

/-!
# A101873: Number of Abelian groups of order 4n+1.

The programs for A101873, there is no canonical definition to state claims against.
-/

/-! ## A101873.P16523180127801571329

`A101872(4*n+1)`
-/

namespace A101873.P16523180127801571329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (4 * n + 1)

end

end A101873.P16523180127801571329

/-! ## A101873.P9190949523520560507

`A000688(A278223(2*n+1))`
-/

namespace A101873.P9190949523520560507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A278223 (2 * n + 1)).toNat

end

end A101873.P9190949523520560507

/-! ## A101873.P7090579199170318635

`A050360(A101296(2*n+2*n+1))`
-/

namespace A101873.P7090579199170318635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050360 (A101296 (2 * n + (2 * n + 1))).toNat

end

end A101873.P7090579199170318635

/-! ## A101873.P1221912986842336835

`A101871(2*n)`
-/

namespace A101873.P1221912986842336835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101871 (2 * n)

end

end A101873.P1221912986842336835

/-! ## A101873.P10891618583527516986

`A000688(A057521(2*n+2*n+1))`
-/

namespace A101873.P10891618583527516986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A057521 (2 * n + (2 * n + 1))).toNat

end

end A101873.P10891618583527516986

/-! ## A101873.P3069237782374484797

`A000688(4*n+1)`
-/

namespace A101873.P3069237782374484797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (4 * n + 1)

end

end A101873.P3069237782374484797

/-! ## A101873.P883904143612347795

`A104404(4*n+1)`
-/

namespace A101873.P883904143612347795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (4 * n + 1)

end

end A101873.P883904143612347795

/-! ## A101873.P14825359371668954472

`A238877(A017077(n))`
-/

namespace A101873.P14825359371668954472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (A017077 n).toNat

end

end A101873.P14825359371668954472

/-! ## A101873.P15380259623161419124

`A238877(A133655(n)+2)`
-/

namespace A101873.P15380259623161419124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (A133655 n + 2).toNat

end

end A101873.P15380259623161419124

/-! ## A101873.P18231995767356409091

`A238877(A017101(n)-2)`
-/

namespace A101873.P18231995767356409091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (A017101 n - 2).toNat

end

end A101873.P18231995767356409091

/-! ## A101873.P14216430759467199064

`A238877(A016813(2*n))`
-/

namespace A101873.P14216430759467199064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (A016813 (2 * n)).toNat

end

end A101873.P14216430759467199064

/-! ## A101873.P4216023354667289287

`A104488(A305075(n+1))`
-/

namespace A101873.P4216023354667289287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (A305075 (n + 1)).toNat

end

end A101873.P4216023354667289287

/-! ## A101873.P8168994801049231464

`A104488(A051062(2*n))`
-/

namespace A101873.P8168994801049231464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (A051062 (2 * n)).toNat

end

end A101873.P8168994801049231464

/-! ## A101873.P4180892543934452446

`A238877(A017101(2*n))`
-/

namespace A101873.P4180892543934452446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (A017101 (2 * n)).toNat

end

end A101873.P4180892543934452446

/-! ## A101873.P7326388041262415953

`A238877(A004770(2*n+1)-2)`
-/

namespace A101873.P7326388041262415953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (A004770 (2 * n + 1) - 2).toNat

end

end A101873.P7326388041262415953

/-! ## A101873.P12133038963165812362

`A143156(A046643(2*n+2*n+1))`
-/

namespace A101873.P12133038963165812362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143156 (A046643 (2 * n + (2 * n + 1))).toNat

end

end A101873.P12133038963165812362

/-!
# A101874: Number of Abelian groups of order 4n+3.

The programs for A101874, there is no canonical definition to state claims against.
-/

/-! ## A101874.P4752007800373681457

`A101872(record[xor(3, n)])`
-/

namespace A101874.P4752007800373681457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A101874.P4752007800373681457

/-! ## A101874.P9855787921302095967

`∏{e}[record[xor(3, n)], A000041(#)]`
-/

namespace A101874.P9855787921302095967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p)

end

end A101874.P9855787921302095967

/-! ## A101874.P12060841733967833115

`A101872(3*(n+1)+n)`
-/

namespace A101874.P12060841733967833115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (3 * (n + 1) + n)

end

end A101874.P12060841733967833115

/-! ## A101874.P4975694764276270352

`A000688(A278223(2*(n+1)))`
-/

namespace A101874.P4975694764276270352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A278223 (2 * (n + 1))).toNat

end

end A101874.P4975694764276270352

/-! ## A101874.P6719503485340574379

`A101871(Δ[n²])`
-/

namespace A101874.P6719503485340574379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101871 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101874.P6719503485340574379

/-! ## A101874.P14427830618579070620

`A000688(record[xor(3, n)])`
-/

namespace A101874.P14427830618579070620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A101874.P14427830618579070620

/-! ## A101874.P4859873488305260576

`A104404(record[xor(3, n)])`
-/

namespace A101874.P4859873488305260576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A101874.P4859873488305260576

/-! ## A101874.P12372832063701912670

`A000688(4*n+3)`
-/

namespace A101874.P12372832063701912670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (4 * n + 3)

end

end A101874.P12372832063701912670

/-! ## A101874.P10212763372921242151

`A104404(3*(n+1)+n)`
-/

namespace A101874.P10212763372921242151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104404 (3 * (n + 1) + n)

end

end A101874.P10212763372921242151

/-! ## A101874.P8167239942422992365

`A238877(8*n+5)`
-/

namespace A101874.P8167239942422992365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (8 * n + 5)

end

end A101874.P8167239942422992365

/-!
# A101875: Number of Abelian groups of order 4n+2.

The programs for A101875, the canonical program `A101875.P2083392782665870718` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101875 has offset 0).

The definition of A101875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101875.P11015625180463139677

`ceil(sqrt(∏{e}[Δ[n²], #!]))`
-/

namespace A101875.P11015625180463139677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℝ)⌉

end

end A101875.P11015625180463139677

namespace A101875

/-- `ceil(sqrt(∏{e}[Δ[n²], #!]))` -/
def P11015625180463139677.Spec : Prop :=
  ∀ n, P11015625180463139677.a n = A101875 n

end A101875

/-! ## A101875.P10967601163003095710

`∏{e}[2*n+1, ceil(sqrt(#!))]`
-/

namespace A101875.P10967601163003095710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.sqrt (Nat.factorial (Nat.factorization (f1 n) p) : ℝ)⌉

end

end A101875.P10967601163003095710

namespace A101875

/-- `∏{e}[2*n+1, ceil(sqrt(#!))]` -/
def P10967601163003095710.Spec : Prop :=
  ∀ n, P10967601163003095710.a n = A101875 n

end A101875

/-! ## A101875.P3934025424151099566

`round(sqrt(cosh(∏{e}[2*n+1, #])))`
-/

namespace A101875.P3934025424151099566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.cosh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A101875.P3934025424151099566

namespace A101875

/-- `round(sqrt(cosh(∏{e}[2*n+1, #])))` -/
def P3934025424151099566.Spec : Prop :=
  ∀ n, P3934025424151099566.a n = A101875 n

end A101875

/-! ## A101875.P10991510720545262330

`round(sqrt(sinh(∏{e}[2*n+1, #])))`
-/

namespace A101875.P10991510720545262330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sinh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A101875.P10991510720545262330

namespace A101875

/-- `round(sqrt(sinh(∏{e}[2*n+1, #])))` -/
def P10991510720545262330.Spec : Prop :=
  ∀ n, P10991510720545262330.a n = A101875 n

end A101875

/-! ## A101875.P15424875296952526764

`round(log2(cosh(∏{e}[2*n+1, #])))`
-/

namespace A101875.P15424875296952526764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.cosh ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)))

end

end A101875.P15424875296952526764

namespace A101875

/-- `round(log2(cosh(∏{e}[2*n+1, #])))` -/
def P15424875296952526764.Spec : Prop :=
  ∀ n, P15424875296952526764.a n = A101875 n

end A101875

/-! ## A101875.P2083392782665870718

`floor(log2(∏{e}[Δ[n²], #!]))+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101875

/-- `floor(log2(∏{e}[Δ[n²], #!]))+1` -/
def P2083392782665870718.Spec : Prop :=
  ∀ n, (P2083392782665870718.a n : ℤ) = A101875 n

theorem P2083392782665870718.correct : P2083392782665870718.Spec := by
  intro n
  simp only [A101875]

end A101875

/-! ## A101875.P13647161646061168012

`∏{e}[2*n+1, val(#, 4)+#]`
-/

namespace A101875.P13647161646061168012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 4 + Nat.factorization (f1 n) p)

end

end A101875.P13647161646061168012

namespace A101875

/-- `∏{e}[2*n+1, val(#, 4)+#]` -/
def P13647161646061168012.Spec : Prop :=
  ∀ n, (P13647161646061168012.a n : ℤ) = A101875 n

end A101875

/-! ## A101875.P15970467620868985858

`∏{e}[2*n+1, C(#, 4)+#]`
-/

namespace A101875.P15970467620868985858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.choose (Nat.factorization (f1 n) p) 4 + Nat.factorization (f1 n) p)

end

end A101875.P15970467620868985858

namespace A101875

/-- `∏{e}[2*n+1, C(#, 4)+#]` -/
def P15970467620868985858.Spec : Prop :=
  ∀ n, (P15970467620868985858.a n : ℤ) = A101875 n

end A101875

/-! ## A101875.P11604332698829912086

`∏{e}[2*n+1, or(#, #%3)]`
-/

namespace A101875.P11604332698829912086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lor (Nat.factorization (f1 n) p) (Nat.factorization (f1 n) p % 3)

end

end A101875.P11604332698829912086

namespace A101875

/-- `∏{e}[2*n+1, or(#, #%3)]` -/
def P11604332698829912086.Spec : Prop :=
  ∀ n, (P11604332698829912086.a n : ℤ) = A101875 n

end A101875

/-! ## A101875.P2252632206418720603

`∏{e}[2*n+1, floor(5*#/4)]`
-/

namespace A101875.P2252632206418720603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊5 * ((Nat.factorization (f1 n) p : ℚ) / 4)⌋

end

end A101875.P2252632206418720603

namespace A101875

/-- `∏{e}[2*n+1, floor(5*#/4)]` -/
def P2252632206418720603.Spec : Prop :=
  ∀ n, P2252632206418720603.a n = A101875 n

end A101875

/-! ## A101875.P7649457748514031165

`round(5^(∏{e}[2*n+1, #]/4))`
-/

namespace A101875.P7649457748514031165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 : ℝ) ^ (((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) / 4 : ℝ))

end

end A101875.P7649457748514031165

namespace A101875

/-- `round(5^(∏{e}[2*n+1, #]/4))` -/
def P7649457748514031165.Spec : Prop :=
  ∀ n, P7649457748514031165.a n = A101875 n

end A101875

/-! ## A101875.P537375260343786991

`ceil(ϕ^∑{e}[2*n+1, #-1])`
-/

namespace A101875.P537375260343786991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ)⌉

end

end A101875.P537375260343786991

namespace A101875

/-- `ceil(ϕ^∑{e}[2*n+1, #-1])` -/
def P537375260343786991.Spec : Prop :=
  ∀ n, P537375260343786991.a n = A101875 n

end A101875

/-! ## A101875.P1574335232382663856

`ceil(∏{e}[2*n+1, ϕ^(#-1)])`
-/

namespace A101875.P1574335232382663856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), Real.goldenRatio ^ ((Nat.factorization (f1 n) p : ℤ) - 1 : ℤ)⌉

end

end A101875.P1574335232382663856

namespace A101875

/-- `ceil(∏{e}[2*n+1, ϕ^(#-1)])` -/
def P1574335232382663856.Spec : Prop :=
  ∀ n, P1574335232382663856.a n = A101875 n

end A101875

/-! ## A101875.P834169947445268449

`ceil(∏{e}[2*n+1, #^ϕ]/2)`
-/

namespace A101875.P834169947445268449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ Real.goldenRatio) / 2⌉

end

end A101875.P834169947445268449

namespace A101875

/-- `ceil(∏{e}[2*n+1, #^ϕ]/2)` -/
def P834169947445268449.Spec : Prop :=
  ∀ n, P834169947445268449.a n = A101875 n

end A101875

/-! ## A101875.P10890972969777344832

`∑{e}[∏{e}[2*n+1, #!], #]+1`
-/

namespace A101875.P10890972969777344832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1

end

end A101875.P10890972969777344832

namespace A101875

/-- `∑{e}[∏{e}[2*n+1, #!], #]+1` -/
def P10890972969777344832.Spec : Prop :=
  ∀ n, (P10890972969777344832.a n : ℤ) = A101875 n

end A101875

/-! ## A101875.P1286946150922766148

`A295879(Δ[n²])`
-/

namespace A101875.P1286946150922766148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295879 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101875.P1286946150922766148

namespace A101875

/-- `A295879(Δ[n²])` -/
def P1286946150922766148.Spec : Prop :=
  ∀ n, P1286946150922766148.a n = A101875 n

end A101875

/-! ## A101875.P3007180446548343210

`A322453(Δ[n²])`
-/

namespace A101875.P3007180446548343210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322453 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101875.P3007180446548343210

namespace A101875

/-- `A322453(Δ[n²])` -/
def P3007180446548343210.Spec : Prop :=
  ∀ n, P3007180446548343210.a n = A101875 n

end A101875

/-! ## A101875.P1922556466475599259

`A351219(Δ[n²])`
-/

namespace A101875.P1922556466475599259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101875.P1922556466475599259

namespace A101875

/-- `A351219(Δ[n²])` -/
def P1922556466475599259.Spec : Prop :=
  ∀ n, P1922556466475599259.a n = A101875 n

end A101875

/-! ## A101875.P1092049516659856202

`A358780(Δ[n²])`
-/

namespace A101875.P1092049516659856202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358780 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101875.P1092049516659856202

namespace A101875

/-- `A358780(Δ[n²])` -/
def P1092049516659856202.Spec : Prop :=
  ∀ n, P1092049516659856202.a n = A101875 n

end A101875

/-! ## A101875.P9622915096542230142

`A381455(Δ[n²])`
-/

namespace A101875.P9622915096542230142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A101875.P9622915096542230142

namespace A101875

/-- `A381455(Δ[n²])` -/
def P9622915096542230142.Spec : Prop :=
  ∀ n, P9622915096542230142.a n = A101875 n

end A101875

/-!
# A101876: Number of Abelian groups of order 4n.

The programs for A101876, there is no canonical definition to state claims against.
-/

/-! ## A101876.P15080132040623187886

`A000688(4*(n+1))`
-/

namespace A101876.P15080132040623187886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (4 * (n + 1))

end

end A101876.P15080132040623187886

/-! ## A101876.P6655910573615241599

`A101872(2*(n+1))`
-/

namespace A101876.P6655910573615241599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (2 * (n + 1))

end

end A101876.P6655910573615241599

/-! ## A101876.P9649059886479890225

`∏{e}[4*(n+1), A000041(#)]`
-/

namespace A101876.P9649059886479890225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p)

end

end A101876.P9649059886479890225

/-! ## A101876.P17188353628090958434

`∏{e}[4*(n+1), A242699(#)]`
-/

namespace A101876.P17188353628090958434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A242699 (Nat.factorization (f1 n) p + 64)

end

end A101876.P17188353628090958434

/-! ## A101876.P14096700788346378839

`A101872(Δ[n²+n])%(n+3)`
-/

namespace A101876.P14096700788346378839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (n + 3 : ℤ)

end

end A101876.P14096700788346378839

/-! ## A101876.P1047125731036006893

`A028310(A101872(n+2+n))`
-/

namespace A101876.P1047125731036006893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A101872 (n + 2 + n)).toNat

end

end A101876.P1047125731036006893

/-! ## A101876.P3159392260710695164

`A101872(A103517(n))+A000007(n)`
-/

namespace A101876.P3159392260710695164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A103517 n).toNat + A000007 n

end

end A101876.P3159392260710695164

/-! ## A101876.P17284366936734594878

`∏{e}[A008574(n+1), A213598(#)]`
-/

namespace A101876.P17284366936734594878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A213598 (Nat.factorization (f1 n).natAbs p)

end

end A101876.P17284366936734594878

/-! ## A101876.P3127553970310070230

`A101872(A004277(n+1))/A101872(A002144(n+2))`
-/

namespace A101876.P3127553970310070230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101872 (A004277 (n + 1)).toNat : ℚ) / (A101872 (A002144 (n + 2)).toNat : ℚ)

end

end A101876.P3127553970310070230

/-! ## A101876.P7425138545067260799

`A028310(A000688(Δ[(n+1)²+n²]))`
-/

namespace A101876.P7425138545067260799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000688 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A101876.P7425138545067260799

/-! ## A101876.P16937214496520324320

`A238877(8*n+7)`
-/

namespace A101876.P16937214496520324320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (8 * n + 7)

end

end A101876.P16937214496520324320

/-!
# A101877: a(n) = k implies that there exists a set S of positive integers such that Sum_{ s_i in S } 1/s_i = n, max(S) = k and no set S' exists with the same sum and a smaller maximal element.

The programs for A101877, there is no canonical definition to state claims against.
-/

/-! ## A101877.P13534093583756185387

`A079952((n²+1)²)+(n+1)*∏{p}[n+1, #]`
-/

namespace A101877.P13534093583756185387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079952 ((n ^ 2 + 1) ^ 2) + (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ)

end

end A101877.P13534093583756185387

/-!
# A101878: Expansion of e.g.f. -LambertW(LambertW(-x))/x.

The programs for A101878, there is no canonical definition to state claims against.
-/

/-! ## A101878.P13386761390588440557

`A207833(n+1)/(n+1)`
-/

namespace A101878.P13386761390588440557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207833 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A101878.P13386761390588440557

/-! ## A101878.P13523789749625369367

`A274390(∑[n+3])/(n+1)`
-/

namespace A101878.P13523789749625369367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274390 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A101878.P13523789749625369367

/-! ## A101878.P1997565847271445027

`A274740(A046691(n)+6)/(n+1)`
-/

namespace A101878.P1997565847271445027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274740 (A046691 n + 6).toNat : ℚ) / (n + 1 : ℚ)

end

end A101878.P1997565847271445027

/-! ## A101878.P2335759810125194554

`A274740(A167614(n+1)-1)/(n+1)`
-/

namespace A101878.P2335759810125194554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274740 (A167614 (n + 1) - 1).toNat : ℚ) / (n + 1 : ℚ)

end

end A101878.P2335759810125194554

/-!
# A101879: a(0) = 1, a(1) = 1, a(2) = 2; for n > 2, a(n) = 5*a(n-1) - 5*a(n-2) + a(n-3).

The programs for A101879, the canonical program `A101879.P8864909696960729645` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101879 has offset 0).

The definition of A101879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-5*a(n-2)+a(n-3)` (program `A101879.P8864909696960729645`, by `A101879.P8864909696960729645.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A101879.P1816660417786141180

`4*a(n-1)-a(n-2)-1` with `a(0)=1, a(1)=1`
-/

namespace A101879.P1816660417786141180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) - a (n - 2) - 1

end

end A101879.P1816660417786141180

namespace A101879

/-- `4*a(n-1)-a(n-2)-1` -/
def P1816660417786141180.Spec : Prop :=
  ∀ n, P1816660417786141180.a n = A101879 n

end A101879

/-! ## A101879.P8864909696960729645

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101879

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P8864909696960729645.Spec : Prop :=
  ∀ n, P8864909696960729645.a n = A101879 n

theorem P8864909696960729645.correct : P8864909696960729645.Spec := by
  intro n
  simp only [A101879]

end A101879

/-! ## A101879.P14479919704471150666

`(1+A001835(n))/2`
-/

namespace A101879.P14479919704471150666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A001835 n : ℚ) / 2

end

end A101879.P14479919704471150666

namespace A101879

/-- `(1+A001835(n))/2` -/
def P14479919704471150666.Spec : Prop :=
  ∀ n, P14479919704471150666.a n = (A101879 n : ℚ)

end A101879

/-! ## A101879.P14263176607491805971

`A005246(n)*A005246(n+1)`
-/

namespace A101879.P14263176607491805971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 n * A005246 (n + 1)

end

end A101879.P14263176607491805971

namespace A101879

/-- `A005246(n)*A005246(n+1)` -/
def P14263176607491805971.Spec : Prop :=
  ∀ n, P14263176607491805971.a n = A101879 n

end A101879

/-! ## A101879.P16413288474494755491

`A079935(n+1)-A001571(n)`
-/

namespace A101879.P16413288474494755491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 1) - A001571 n

end

end A101879.P16413288474494755491

namespace A101879

/-- `A079935(n+1)-A001571(n)` -/
def P16413288474494755491.Spec : Prop :=
  ∀ n, P16413288474494755491.a n = A101879 n

end A101879

/-! ## A101879.P16689714506303066585

`(6+(3-sqrt(3))*(2+sqrt(3))^n+(2-sqrt(3))^n*(3+sqrt(3)))/12`
-/

namespace A101879.P16689714506303066585
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 + (3 - Real.sqrt (3 : ℝ)) * (2 + Real.sqrt (3 : ℝ)) ^ n + (2 - Real.sqrt (3 : ℝ)) ^ n * (3 + Real.sqrt (3 : ℝ))) / 12

end

end A101879.P16689714506303066585

namespace A101879

/-- `(6+(3-sqrt(3))*(2+sqrt(3))^n+(2-sqrt(3))^n*(3+sqrt(3)))/12` -/
def P16689714506303066585.Spec : Prop :=
  ∀ n, P16689714506303066585.a n = (A101879 n : ℝ)

end A101879

/-! ## A101879.P2500063411025951353

`∑[ogf((1-4x+2x^2)/(1-4x+x^2))]`
-/

namespace A101879.P2500063411025951353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 2] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101879.P2500063411025951353

namespace A101879

/-- `∑[ogf((1-4x+2x^2)/(1-4x+x^2))]` -/
def P2500063411025951353.Spec : Prop :=
  ∀ n, P2500063411025951353.a n = A101879 n

end A101879

/-! ## A101879.P17222408684992975327

`ogf((1-4x+2x^2)/(1-5x+5x^2-x^3))`
-/

namespace A101879.P17222408684992975327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 2] [1, -5, 5, -1] n

end

end A101879.P17222408684992975327

namespace A101879

/-- `ogf((1-4x+2x^2)/(1-5x+5x^2-x^3))` -/
def P17222408684992975327.Spec : Prop :=
  ∀ n, P17222408684992975327.a n = A101879 n

end A101879

/-! ## A101879.P11376990270959666264

`floor((sqrt(3)+2)*a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A101879.P11376990270959666264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ - 1

end

end A101879.P11376990270959666264

namespace A101879

/-- `floor((sqrt(3)+2)*a(n-1))-1` -/
def P11376990270959666264.Spec : Prop :=
  ∀ n, P11376990270959666264.a n = A101879 n

end A101879

/-! ## A101879.P11757520069828304397

`ceil((sqrt(3)+2)*a(n-1))-2` with `a(0)=1, a(1)=1`
-/

namespace A101879.P11757520069828304397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ - 2

end

end A101879.P11757520069828304397

namespace A101879

/-- `ceil((sqrt(3)+2)*a(n-1))-2` -/
def P11757520069828304397.Spec : Prop :=
  ∀ n, P11757520069828304397.a n = A101879 n

end A101879

/-! ## A101879.P8705985413577519064

`a(n-1)/(1/2)²-a(n-2)-1` with `a(0)=1, a(1)=1`
-/

namespace A101879.P8705985413577519064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2) - 1

end

end A101879.P8705985413577519064

namespace A101879

/-- `a(n-1)/(1/2)²-a(n-2)-1` -/
def P8705985413577519064.Spec : Prop :=
  ∀ n, P8705985413577519064.a n = (A101879 n : ℚ)

end A101879

/-! ## A101879.P13024556349895690434

`ceil(A001835(n)/2)`
-/

namespace A101879.P13024556349895690434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001835 n : ℚ) / 2⌉

end

end A101879.P13024556349895690434

namespace A101879

/-- `ceil(A001835(n)/2)` -/
def P13024556349895690434.Spec : Prop :=
  ∀ n, P13024556349895690434.a n = A101879 n

end A101879

/-! ## A101879.P8968110628779741330

`∑[A001353(abs(1-n))]`
-/

namespace A101879.P8968110628779741330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101879.P8968110628779741330

namespace A101879

/-- `∑[A001353(abs(1-n))]` -/
def P8968110628779741330.Spec : Prop :=
  ∀ n, P8968110628779741330.a n = A101879 n

end A101879

/-! ## A101879.P17851228941762716103

`ceil(A005246(2*n)/2)`
-/

namespace A101879.P17851228941762716103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005246 (2 * n) : ℚ) / 2⌉

end

end A101879.P17851228941762716103

namespace A101879

/-- `ceil(A005246(2*n)/2)` -/
def P17851228941762716103.Spec : Prop :=
  ∀ n, P17851228941762716103.a n = A101879 n

end A101879

/-! ## A101879.P16670616944221328245

`ceil(A122573(2*(n+1))/2)`
-/

namespace A101879.P16670616944221328245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A122573 (2 * (n + 1)) : ℚ) / 2⌉

end

end A101879.P16670616944221328245

namespace A101879

/-- `ceil(A122573(2*(n+1))/2)` -/
def P16670616944221328245.Spec : Prop :=
  ∀ n, P16670616944221328245.a n = A101879 n

end A101879

/-! ## A101879.P4595003877946016120

`A001353(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A101879.P4595003877946016120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001353 (n - 1) + a (n - 1)

end

end A101879.P4595003877946016120

namespace A101879

/-- `A001353(n-1)+a(n-1)` -/
def P4595003877946016120.Spec : Prop :=
  ∀ n, P4595003877946016120.a n = A101879 n

end A101879

/-! ## A101879.P12384677231959149589

`a(n-1)-A106707(n-1)` with `a(0)=1`
-/

namespace A101879.P12384677231959149589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A106707 (n - 1)

end

end A101879.P12384677231959149589

namespace A101879

/-- `a(n-1)-A106707(n-1)` -/
def P12384677231959149589.Spec : Prop :=
  ∀ n, P12384677231959149589.a n = A101879 n

end A101879

/-! ## A101879.P11845855785932404620

`A121401(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A101879.P11845855785932404620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121401 (n - 1) - a (n - 1)

end

end A101879.P11845855785932404620

namespace A101879

/-- `A121401(n-1)-a(n-1)` -/
def P11845855785932404620.Spec : Prop :=
  ∀ n, P11845855785932404620.a n = A101879 n

end A101879

/-! ## A101879.P3533477854049227331

`A102206(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A101879.P3533477854049227331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A102206 (n - 2) - a (n - 1)

end

end A101879.P3533477854049227331

namespace A101879

/-- `A102206(n-2)-a(n-1)` -/
def P3533477854049227331.Spec : Prop :=
  ∀ n, P3533477854049227331.a n = A101879 n

end A101879

/-! ## A101879.P6322514084485710790

`A101265(A028310(n))`
-/

namespace A101879.P6322514084485710790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101265 (A028310 n).toNat

end

end A101879.P6322514084485710790

namespace A101879

/-- `A101265(A028310(n))` -/
def P6322514084485710790.Spec : Prop :=
  ∀ n, P6322514084485710790.a n = A101879 n

end A101879

/-!
# A101880: Number of arrangements of the partitions of n (e.g., 111 counts for 6).

The programs for A101880, there is no canonical definition to state claims against.
-/

/-! ## A101880.P13409225642361165145

`A260883(∑[n+1])`
-/

namespace A101880.P13409225642361165145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260883 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A101880.P13409225642361165145

/-! ## A101880.P1641800207052391072

`or(1, A260883(A261422(n)))`
-/

namespace A101880.P1641800207052391072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A260883 (A261422 n).toNat)

end

end A101880.P1641800207052391072

/-! ## A101880.P2417970787765634405

`A260883(A000217(n+1))+A052036(n)`
-/

namespace A101880.P2417970787765634405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260883 (A000217 (n + 1)).toNat + A052036 n

end

end A101880.P2417970787765634405

/-! ## A101880.P6441311196871812266

`A046213(n+1)*A260883(A261422(n))`
-/

namespace A101880.P6441311196871812266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (n + 1) * A260883 (A261422 n).toNat

end

end A101880.P6441311196871812266

/-! ## A101880.P1675439056948095749

`A259022(3*n)*A260883(A261422(n))`
-/

namespace A101880.P1675439056948095749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259022 (3 * n) * A260883 (A261422 n).toNat

end

end A101880.P1675439056948095749

/-!
# A101881: Write two numbers, skip one, write two, skip two, write two, skip three ... and so on.

The programs for A101881, the canonical program `A101881.P17067363437095494865` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101881 has offset 0).

The definition of A101881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101881.P17067363437095494865

`1/16*(2*n²+18*n+15+(2*n+1)*(-1)^n)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101881

/-- `1/16*(2*n²+18*n+15+(2*n+1)*(-1)^n)` -/
def P17067363437095494865.Spec : Prop :=
  ∀ n, P17067363437095494865.a n = (A101881 n : ℚ)

end A101881

/-! ## A101881.P805887430249584069

`∑[ceil(C(or(1, n), n)/2)]`
-/

namespace A101881.P805887430249584069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P805887430249584069

namespace A101881

/-- `∑[ceil(C(or(1, n), n)/2)]` -/
def P805887430249584069.Spec : Prop :=
  ∀ n, P805887430249584069.a n = A101881 n

end A101881

/-! ## A101881.P15673958221904146199

`∑[1-gcd(n, ∑[n])+n]`
-/

namespace A101881.P15673958221904146199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P15673958221904146199

namespace A101881

/-- `∑[1-gcd(n, ∑[n])+n]` -/
def P15673958221904146199.Spec : Prop :=
  ∀ n, P15673958221904146199.a n = A101881 n

end A101881

/-! ## A101881.P7138667721208126883

`∑[1-lcm(2, n)/2+n]`
-/

namespace A101881.P7138667721208126883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (Nat.lcm 2 n : ℚ) / 2 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P7138667721208126883

namespace A101881

/-- `∑[1-lcm(2, n)/2+n]` -/
def P7138667721208126883.Spec : Prop :=
  ∀ n, P7138667721208126883.a n = (A101881 n : ℚ)

end A101881

/-! ## A101881.P8032950784860206352

`∑[n%or(1, n)/2+1]`
-/

namespace A101881.P8032950784860206352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % Nat.lor 1 n : ℕ) : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P8032950784860206352

namespace A101881

/-- `∑[n%or(1, n)/2+1]` -/
def P8032950784860206352.Spec : Prop :=
  ∀ n, P8032950784860206352.a n = (A101881 n : ℚ)

end A101881

/-! ## A101881.P12397705702793781033

`∑[gcd(n+2, ∑[char[2*n]])]`
-/

namespace A101881.P12397705702793781033
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P12397705702793781033

namespace A101881

/-- `∑[gcd(n+2, ∑[char[2*n]])]` -/
def P12397705702793781033.Spec : Prop :=
  ∀ n, (P12397705702793781033.a n : ℤ) = A101881 n

end A101881

/-! ## A101881.P11161370521991874163

`C(∑[char[2*n]], 2)+1+n`
-/

namespace A101881.P11161370521991874163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1 + n

end

end A101881.P11161370521991874163

namespace A101881

/-- `C(∑[char[2*n]], 2)+1+n` -/
def P11161370521991874163.Spec : Prop :=
  ∀ n, (P11161370521991874163.a n : ℤ) = A101881 n

end A101881

/-! ## A101881.P12668126367552412403

`∪[∑[n+2]-1, ∑[n+2]]`
-/

namespace A101881.P12668126367552412403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A101881.P12668126367552412403

namespace A101881

/-- `∪[∑[n+2]-1, ∑[n+2]]` -/
def P12668126367552412403.Spec : Prop :=
  ∀ n, (P12668126367552412403.a n : ℤ) = A101881 n

end A101881

/-! ## A101881.P16860467711951046278

`C(floor(n/2)+1, 2)+n+1`
-/

namespace A101881.P16860467711951046278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 1).toNat 2 + (n + 1)

end

end A101881.P16860467711951046278

namespace A101881

/-- `C(floor(n/2)+1, 2)+n+1` -/
def P16860467711951046278.Spec : Prop :=
  ∀ n, (P16860467711951046278.a n : ℤ) = A101881 n

end A101881

/-! ## A101881.P6068977011840243975

`∑[((n+2)/2)^((n+1)%2)]`
-/

namespace A101881.P6068977011840243975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / 2) ^ ((n + 1) % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P6068977011840243975

namespace A101881

/-- `∑[((n+2)/2)^((n+1)%2)]` -/
def P6068977011840243975.Spec : Prop :=
  ∀ n, P6068977011840243975.a n = (A101881 n : ℚ)

end A101881

/-! ## A101881.P9366256073564908716

`∑[((n+2)/2)^and(1, n+1)]`
-/

namespace A101881.P9366256073564908716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) / 2) ^ Nat.land 1 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P9366256073564908716

namespace A101881

/-- `∑[((n+2)/2)^and(1, n+1)]` -/
def P9366256073564908716.Spec : Prop :=
  ∀ n, P9366256073564908716.a n = (A101881 n : ℚ)

end A101881

/-! ## A101881.P2728094204809765877

`a(n-1)+∑[n]%n+1` with `a(0)=1`
-/

namespace A101881.P2728094204809765877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∑ j ∈ Finset.range (n + 1), f1 j) % n + 1)

end

end A101881.P2728094204809765877

namespace A101881

/-- `a(n-1)+∑[n]%n+1` -/
def P2728094204809765877.Spec : Prop :=
  ∀ n, (P2728094204809765877.a n : ℤ) = A101881 n

end A101881

/-! ## A101881.P3807549483952408595

`floor(a(n-2)+n/2+2)` with `a(0)=1, a(1)=2`
-/

namespace A101881.P3807549483952408595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℚ) / 2 + 2)⌋

end

end A101881.P3807549483952408595

namespace A101881

/-- `floor(a(n-2)+n/2+2)` -/
def P3807549483952408595.Spec : Prop :=
  ∀ n, P3807549483952408595.a n = A101881 n

end A101881

/-! ## A101881.P5949662294861367772

`ceil(a(n-2)+(n+3)/2)` with `a(0)=1, a(1)=2`
-/

namespace A101881.P5949662294861367772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n + 3 : ℚ) / 2⌉

end

end A101881.P5949662294861367772

namespace A101881

/-- `ceil(a(n-2)+(n+3)/2)` -/
def P5949662294861367772.Spec : Prop :=
  ∀ n, P5949662294861367772.a n = A101881 n

end A101881

/-! ## A101881.P10224429562939538743

`round(a(n-2)+(n+3)/2)` with `a(0)=1, a(1)=2`
-/

namespace A101881.P10224429562939538743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (n + 3 : ℚ) / 2)

end

end A101881.P10224429562939538743

namespace A101881

/-- `round(a(n-2)+(n+3)/2)` -/
def P10224429562939538743.Spec : Prop :=
  ∀ n, P10224429562939538743.a n = A101881 n

end A101881

/-! ## A101881.P1064793387346516066

`∑[a(n-2)+and(1, n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A101881.P1064793387346516066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P1064793387346516066

namespace A101881

/-- `∑[a(n-2)+and(1, n+1)]` -/
def P1064793387346516066.Spec : Prop :=
  ∀ n, (P1064793387346516066.a n : ℤ) = A101881 n

end A101881

/-! ## A101881.P2538025295412473057

`∑[2-(a(n-1)-floor(n/2))]` with `a(0)=1`
-/

namespace A101881.P2538025295412473057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 - (f1 (n - 1) - ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P2538025295412473057

namespace A101881

/-- `∑[2-(a(n-1)-floor(n/2))]` -/
def P2538025295412473057.Spec : Prop :=
  ∀ n, P2538025295412473057.a n = A101881 n

end A101881

/-! ## A101881.P1914518420883420013

`∑[C(n+3, gcd(2, n²))/(n+3)]`
-/

namespace A101881.P1914518420883420013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) (Nat.gcd 2 (n ^ 2)) : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P1914518420883420013

namespace A101881

/-- `∑[C(n+3, gcd(2, n²))/(n+3)]` -/
def P1914518420883420013.Spec : Prop :=
  ∀ n, P1914518420883420013.a n = (A101881 n : ℚ)

end A101881

/-! ## A101881.P14836642534417832812

`∑[∑[1-a(n-1)]/a(n-1)]` with `a(0)=1`
-/

namespace A101881.P14836642534417832812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P14836642534417832812

namespace A101881

/-- `∑[∑[1-a(n-1)]/a(n-1)]` -/
def P14836642534417832812.Spec : Prop :=
  ∀ n, P14836642534417832812.a n = (A101881 n : ℚ)

end A101881

/-! ## A101881.P15674706062057762850

`∑[C(∑[1-a(n-1)], a(n-1))]` with `a(0)=1`
-/

namespace A101881.P15674706062057762850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101881.P15674706062057762850

namespace A101881

/-- `∑[C(∑[1-a(n-1)], a(n-1))]` -/
def P15674706062057762850.Spec : Prop :=
  ∀ n, (P15674706062057762850.a n : ℤ) = A101881 n

end A101881

/-!
# A101882: Write three numbers, skip one, write three, skip two, write three, skip three... and so on.

The programs for A101882, the canonical program `A101882.P8942969414078229061` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101882 has offset 1).

The definition of A101882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101882.P5337650180510565675

`∑[n*char[3*n]+3]/3`
-/

namespace A101882.P5337650180510565675
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A101882.P5337650180510565675

namespace A101882

/-- `∑[n*char[3*n]+3]/3` -/
def P5337650180510565675.Spec : Prop :=
  ∀ n, P5337650180510565675.a n = (A101882 (n + 1) : ℚ)

end A101882

/-! ## A101882.P9549371228669423694

`C(∑[char[3*n]], 2)+1+n`
-/

namespace A101882.P9549371228669423694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1 + n

end

end A101882.P9549371228669423694

namespace A101882

/-- `C(∑[char[3*n]], 2)+1+n` -/
def P9549371228669423694.Spec : Prop :=
  ∀ n, (P9549371228669423694.a n : ℤ) = A101882 (n + 1)

end A101882

/-! ## A101882.P815479863949244012

`∑[gcd(n²%3, ∑[char[3*n]])]`
-/

namespace A101882.P815479863949244012
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2 % 3) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101882.P815479863949244012

namespace A101882

/-- `∑[gcd(n²%3, ∑[char[3*n]])]` -/
def P815479863949244012.Spec : Prop :=
  ∀ n, (P815479863949244012.a n : ℤ) = A101882 (n + 1)

end A101882

/-! ## A101882.P8942969414078229061

`C(ceil((n+1)/3), 2)+n+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101882

/-- `C(ceil((n+1)/3), 2)+n+1` -/
def P8942969414078229061.Spec : Prop :=
  ∀ n, (P8942969414078229061.a n : ℤ) = A101882 (n + 1)

theorem P8942969414078229061.correct : P8942969414078229061.Spec := by
  intro n
  simp only [A101882, Nat.add_sub_cancel]

end A101882

/-! ## A101882.P12035336758301166791

`a(n-1)+∑[∑[n]]%n+1` with `a(0)=1`
-/

namespace A101882.P12035336758301166791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∑ j ∈ Finset.range (n + 1), f1 j) % n + 1)

end

end A101882.P12035336758301166791

namespace A101882

/-- `a(n-1)+∑[∑[n]]%n+1` -/
def P12035336758301166791.Spec : Prop :=
  ∀ n, (P12035336758301166791.a n : ℤ) = A101882 (n + 1)

end A101882

/-! ## A101882.P1099500543051965884

`∑[(A101443(n)+1)/2]`
-/

namespace A101882.P1099500543051965884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101443 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101882.P1099500543051965884

namespace A101882

/-- `∑[(A101443(n)+1)/2]` -/
def P1099500543051965884.Spec : Prop :=
  ∀ n, P1099500543051965884.a n = (A101882 (n + 1) : ℚ)

end A101882

/-! ## A101882.P16060250042386979582

`∑[1-A186101(n)+n]`
-/

namespace A101882.P16060250042386979582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A186101 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101882.P16060250042386979582

namespace A101882

/-- `∑[1-A186101(n)+n]` -/
def P16060250042386979582.Spec : Prop :=
  ∀ n, P16060250042386979582.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P5009124345427244077

`∑[A257174(n)-n]+n`
-/

namespace A101882.P5009124345427244077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A101882.P5009124345427244077

namespace A101882

/-- `∑[A257174(n)-n]+n` -/
def P5009124345427244077.Spec : Prop :=
  ∀ n, P5009124345427244077.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P428561243435593914

`a(n-1)+A175676(n)+1` with `a(0)=1`
-/

namespace A101882.P428561243435593914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A175676 n + 1)

end

end A101882.P428561243435593914

namespace A101882

/-- `a(n-1)+A175676(n)+1` -/
def P428561243435593914.Spec : Prop :=
  ∀ n, P428561243435593914.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P9394794133838897465

`A000217(ceil((n-2)/3))+n+1`
-/

namespace A101882.P9394794133838897465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈((n : ℤ) - 2 : ℚ) / 3⌉.toNat + (n : ℤ) + 1

end

end A101882.P9394794133838897465

namespace A101882

/-- `A000217(ceil((n-2)/3))+n+1` -/
def P9394794133838897465.Spec : Prop :=
  ∀ n, P9394794133838897465.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P10659440016580861874

`∑[A008620(A088439(n))]`
-/

namespace A101882.P10659440016580861874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A088439 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101882.P10659440016580861874

namespace A101882

/-- `∑[A008620(A088439(n))]` -/
def P10659440016580861874.Spec : Prop :=
  ∀ n, P10659440016580861874.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P1328406300503720326

`A000124(A002264(n))+n`
-/

namespace A101882.P1328406300503720326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002264 n).toNat + (n : ℤ)

end

end A101882.P1328406300503720326

namespace A101882

/-- `A000124(A002264(n))+n` -/
def P1328406300503720326.Spec : Prop :=
  ∀ n, P1328406300503720326.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P4016190374754595144

`∑[A142150(A004396(n))+1]`
-/

namespace A101882.P4016190374754595144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A004396 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101882.P4016190374754595144

namespace A101882

/-- `∑[A142150(A004396(n))+1]` -/
def P4016190374754595144.Spec : Prop :=
  ∀ n, P4016190374754595144.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P6509276927531821330

`∑[A152271(A004396(n)+1)]`
-/

namespace A101882.P6509276927531821330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A004396 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101882.P6509276927531821330

namespace A101882

/-- `∑[A152271(A004396(n)+1)]` -/
def P6509276927531821330.Spec : Prop :=
  ∀ n, P6509276927531821330.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P10974062454468913248

`A152947(A008620(n)+1)+n`
-/

namespace A101882.P10974062454468913248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A008620 n + 1).toNat + (n : ℤ)

end

end A101882.P10974062454468913248

namespace A101882

/-- `A152947(A008620(n)+1)+n` -/
def P10974062454468913248.Spec : Prop :=
  ∀ n, P10974062454468913248.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P16845669214621476884

`A211534(n)+A042968(n+1)`
-/

namespace A101882.P16845669214621476884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211534 n + A042968 (n + 1)

end

end A101882.P16845669214621476884

namespace A101882

/-- `A211534(n)+A042968(n+1)` -/
def P16845669214621476884.Spec : Prop :=
  ∀ n, P16845669214621476884.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P10636467453136901437

`A000124(A008620(n)-1)+n`
-/

namespace A101882.P10636467453136901437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A008620 n - 1).toNat + (n : ℤ)

end

end A101882.P10636467453136901437

namespace A101882

/-- `A000124(A008620(n)-1)+n` -/
def P10636467453136901437.Spec : Prop :=
  ∀ n, P10636467453136901437.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P762630851178674509

`A000124(A004773(n)-n)+n`
-/

namespace A101882.P762630851178674509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A004773 n - (n : ℤ)).toNat + (n : ℤ)

end

end A101882.P762630851178674509

namespace A101882

/-- `A000124(A004773(n)-n)+n` -/
def P762630851178674509.Spec : Prop :=
  ∀ n, P762630851178674509.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P5808347305275894711

`∑[A008620(n*∑[A049347(n)])]`
-/

namespace A101882.P5808347305275894711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101882.P5808347305275894711

namespace A101882

/-- `∑[A008620(n*∑[A049347(n)])]` -/
def P5808347305275894711.Spec : Prop :=
  ∀ n, P5808347305275894711.a n = A101882 (n + 1)

end A101882

/-! ## A101882.P18005160147753622291

`∑[A051176(n*A079978(n))+1]`
-/

namespace A101882.P18005160147753622291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 ((n : ℤ) * A079978 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101882.P18005160147753622291

namespace A101882

/-- `∑[A051176(n*A079978(n))+1]` -/
def P18005160147753622291.Spec : Prop :=
  ∀ n, P18005160147753622291.a n = A101882 (n + 1)

end A101882

/-!
# A101883: Write four numbers, skip one, write four, skip two, write four, skip three... and so on.

The programs for A101883, the canonical program `A101883.P17479493655049085436` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101883 has offset 1).

The definition of A101883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A101883.P8264832292028857680

`C(∑[char[4*n]], 2)+1+n`
-/

namespace A101883.P8264832292028857680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1 + n

end

end A101883.P8264832292028857680

namespace A101883

/-- `C(∑[char[4*n]], 2)+1+n` -/
def P8264832292028857680.Spec : Prop :=
  ∀ n, (P8264832292028857680.a n : ℤ) = A101883 (n + 1)

end A101883

/-! ## A101883.P17479493655049085436

`C(ceil((n+1)/4), 2)+n+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101883

/-- `C(ceil((n+1)/4), 2)+n+1` -/
def P17479493655049085436.Spec : Prop :=
  ∀ n, (P17479493655049085436.a n : ℤ) = A101883 (n + 1)

theorem P17479493655049085436.correct : P17479493655049085436.Spec := by
  intro n
  simp only [A101883, Nat.add_sub_cancel]

end A101883

/-! ## A101883.P15884436620803513498

`∑[A158416(gcd(n, ∑[n]))]`
-/

namespace A101883.P15884436620803513498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P15884436620803513498

namespace A101883

/-- `∑[A158416(gcd(n, ∑[n]))]` -/
def P15884436620803513498.Spec : Prop :=
  ∀ n, P15884436620803513498.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P15072308196078090527

`A000124(floor(n/4))+n`
-/

namespace A101883.P15072308196078090527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ⌊(n : ℚ) / 4⌋.toNat + (n : ℤ)

end

end A101883.P15072308196078090527

namespace A101883

/-- `A000124(floor(n/4))+n` -/
def P15072308196078090527.Spec : Prop :=
  ∀ n, P15072308196078090527.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P4186835723410658529

`A038714(n)/2+1+n`
-/

namespace A101883.P4186835723410658529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038714 n : ℚ) / 2 + 1 + (n : ℚ)

end

end A101883.P4186835723410658529

namespace A101883

/-- `A038714(n)/2+1+n` -/
def P4186835723410658529.Spec : Prop :=
  ∀ n, P4186835723410658529.a n = (A101883 (n + 1) : ℚ)

end A101883

/-! ## A101883.P9434536007761789377

`A000217(floor(n/4))+n+1`
-/

namespace A101883.P9434536007761789377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊(n : ℚ) / 4⌋.toNat + (n + 1 : ℤ)

end

end A101883.P9434536007761789377

namespace A101883

/-- `A000217(floor(n/4))+n+1` -/
def P9434536007761789377.Spec : Prop :=
  ∀ n, P9434536007761789377.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P17024178241957724462

`sqrt(A000537(floor(n/4)))+n+1`
-/

namespace A101883.P17024178241957724462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 ⌊(n : ℚ) / 4⌋.toNat : ℝ) + (n + 1 : ℝ)

end

end A101883.P17024178241957724462

namespace A101883

/-- `sqrt(A000537(floor(n/4)))+n+1` -/
def P17024178241957724462.Spec : Prop :=
  ∀ n, P17024178241957724462.a n = (A101883 (n + 1) : ℝ)

end A101883

/-! ## A101883.P14106002513715407667

`∑[A002265(n*char[4*n])+1]`
-/

namespace A101883.P14106002513715407667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n * (if ∃ j, f2 j = n then 1 else 0)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P14106002513715407667

namespace A101883

/-- `∑[A002265(n*char[4*n])+1]` -/
def P14106002513715407667.Spec : Prop :=
  ∀ n, P14106002513715407667.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P11654723913384441636

`∑[A158416(A142150(n))]`
-/

namespace A101883.P11654723913384441636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P11654723913384441636

namespace A101883

/-- `∑[A158416(A142150(n))]` -/
def P11654723913384441636.Spec : Prop :=
  ∀ n, P11654723913384441636.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P16596598834322686737

`∑[A152271(A158416(n))]`
-/

namespace A101883.P16596598834322686737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P16596598834322686737

namespace A101883

/-- `∑[A152271(A158416(n))]` -/
def P16596598834322686737.Spec : Prop :=
  ∀ n, P16596598834322686737.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P11094455322866122833

`∑[A057979(A027656(n)+2)]`
-/

namespace A101883.P11094455322866122833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A027656 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P11094455322866122833

namespace A101883

/-- `∑[A057979(A027656(n)+2)]` -/
def P11094455322866122833.Spec : Prop :=
  ∀ n, P11094455322866122833.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P8823933291177063364

`∑[A057979(A158416(n)+2)]`
-/

namespace A101883.P8823933291177063364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A158416 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P8823933291177063364

namespace A101883

/-- `∑[A057979(A158416(n)+2)]` -/
def P8823933291177063364.Spec : Prop :=
  ∀ n, P8823933291177063364.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P10806999263262708865

`∑[A158416(A158416(n)-1)]`
-/

namespace A101883.P10806999263262708865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A158416 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P10806999263262708865

namespace A101883

/-- `∑[A158416(A158416(n)-1)]` -/
def P10806999263262708865.Spec : Prop :=
  ∀ n, P10806999263262708865.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P163039194419772311

`A000217(A002265(n))+1+n`
-/

namespace A101883.P163039194419772311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002265 n).toNat + 1 + (n : ℤ)

end

end A101883.P163039194419772311

namespace A101883

/-- `A000217(A002265(n))+1+n` -/
def P163039194419772311.Spec : Prop :=
  ∀ n, P163039194419772311.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P9142916693796078613

`A152947(A008621(n)+1)+n`
-/

namespace A101883.P9142916693796078613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (A008621 n + 1).toNat + (n : ℤ)

end

end A101883.P9142916693796078613

namespace A101883

/-- `A152947(A008621(n)+1)+n` -/
def P9142916693796078613.Spec : Prop :=
  ∀ n, P9142916693796078613.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P11903192184939191691

`∑[gcd(A131730(n)+1, A131729(n))]`
-/

namespace A101883.P11903192184939191691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131730 n + 1) (A131729 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P11903192184939191691

namespace A101883

/-- `∑[gcd(A131730(n)+1, A131729(n))]` -/
def P11903192184939191691.Spec : Prop :=
  ∀ n, (P11903192184939191691.a n : ℤ) = A101883 (n + 1)

end A101883

/-! ## A101883.P15037563002168716864

`∑[C(A174571(n+4), A174571(n))]`
-/

namespace A101883.P15037563002168716864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A174571 (n + 4)).toNat (A174571 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P15037563002168716864

namespace A101883

/-- `∑[C(A174571(n+4), A174571(n))]` -/
def P15037563002168716864.Spec : Prop :=
  ∀ n, (P15037563002168716864.a n : ℤ) = A101883 (n + 1)

end A101883

/-! ## A101883.P16139772881643997054

`A000217(A001068(n)-n)+n+1`
-/

namespace A101883.P16139772881643997054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001068 n - (n : ℤ)).toNat + (n : ℤ) + 1

end

end A101883.P16139772881643997054

namespace A101883

/-- `A000217(A001068(n)-n)+n+1` -/
def P16139772881643997054.Spec : Prop :=
  ∀ n, P16139772881643997054.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P18438886348742766129

`∑[A140472(A093178(A140472(n+1)))]`
-/

namespace A101883.P18438886348742766129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A093178 (A140472 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P18438886348742766129

namespace A101883

/-- `∑[A140472(A093178(A140472(n+1)))]` -/
def P18438886348742766129.Spec : Prop :=
  ∀ n, P18438886348742766129.a n = A101883 (n + 1)

end A101883

/-! ## A101883.P2403587799387943062

`∑[A008619(A008619(n*A121262(n)))]`
-/

namespace A101883.P2403587799387943062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 ((n : ℤ) * A121262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101883.P2403587799387943062

namespace A101883

/-- `∑[A008619(A008619(n*A121262(n)))]` -/
def P2403587799387943062.Spec : Prop :=
  ∀ n, P2403587799387943062.a n = A101883 (n + 1)

end A101883

/-!
# A101884: Smallest increasing natural number sequence without any length 3 equidistant arithmetic subsequences.

The programs for A101884, there is no canonical definition to state claims against.
-/

/-! ## A101884.P4127218535780022691

`A242921(n)+1`
-/

namespace A101884.P4127218535780022691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242921 n + 1

end

end A101884.P4127218535780022691

/-! ## A101884.P8714658211019293020

`A242923(n)+a(n-1)` with `a(0)=1`
-/

namespace A101884.P8714658211019293020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242923 n + a (n - 1)

end

end A101884.P8714658211019293020

/-! ## A101884.P4603350492488287363

`∑[A242923(n+1)]+1-A242923(n+1)`
-/

namespace A101884.P4603350492488287363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A242923 (n + 1))

end

end A101884.P4603350492488287363

/-! ## A101884.P321855188510372008

`A008619(2*A242921(n))`
-/

namespace A101884.P321855188510372008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A242921 n).toNat

end

end A101884.P321855188510372008

/-! ## A101884.P9808232333344074156

`A052938(2*A242921(n))`
-/

namespace A101884.P9808232333344074156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A242921 n).toNat

end

end A101884.P9808232333344074156

/-! ## A101884.P9140694035663441867

`A131732(2*A242921(n))`
-/

namespace A101884.P9140694035663441867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A242921 n).toNat

end

end A101884.P9140694035663441867

/-!
# A101885: Natural numbers excluding A101884.

The programs for A101885, there is no canonical definition to state claims against.
-/

/-! ## A101885.P15967744139333073268

`comp[A242921(n)]+1`
-/

namespace A101885.P15967744139333073268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A101885.P15967744139333073268

/-! ## A101885.P1566279286807170866

`comp[A101884(n+1)-1]+1`
-/

namespace A101885.P1566279286807170866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101884 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A101885.P1566279286807170866

/-! ## A101885.P17682033553687479251

`comp[∑[A242923(n+1)]-1]+2`
-/

namespace A101885.P17682033553687479251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242923 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A101885.P17682033553687479251

/-! ## A101885.P3667747280346508651

`A020725(comp[A242921(n)])`
-/

namespace A101885.P3667747280346508651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242921 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A101885.P3667747280346508651

/-! ## A101885.P16789990095578596256

`A008619(2*comp[A242921(n)])`
-/

namespace A101885.P16789990095578596256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242921 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A101885.P16789990095578596256

/-! ## A101885.P5075982030460856435

`comp[A023443(A101884(n+1))]+1`
-/

namespace A101885.P5075982030460856435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A101884 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A101885.P5075982030460856435

/-! ## A101885.P6800187106245147374

`eq[char[A101884(n+1)], A000007(n)]`
-/

namespace A101885.P6800187106245147374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101884 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A101885.P6800187106245147374

/-! ## A101885.P15921847080139685093

`eq[char[A101884(n+1)], A000038(n)]`
-/

namespace A101885.P15921847080139685093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101884 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A101885.P15921847080139685093

/-! ## A101885.P1924611627606320747

`eq[char[A101884(n+1)], A169585(n)]`
-/

namespace A101885.P1924611627606320747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101884 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A101885.P1924611627606320747

/-! ## A101885.P7303624515816230375

`comp[A289207(A101884(n+1)+1)]+1`
-/

namespace A101885.P7303624515816230375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A101884 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A101885.P7303624515816230375

/-!
# A101886: Smallest natural number sequence without any length 4 equidistant arithmetic subsequences.

The programs for A101886, there is no canonical definition to state claims against.
-/

/-! ## A101886.P251852417422737128

`comp[A101887(n+1)-1]+1`
-/

namespace A101886.P251852417422737128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101887 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A101886.P251852417422737128

/-! ## A101886.P17482584263621345655

`eq[char[A101887(n+1)], A151933(n)]`
-/

namespace A101886.P17482584263621345655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101887 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A101886.P17482584263621345655

/-! ## A101886.P3467040429116966181

`record[A120514(n+1)%A055458(n+1)]`
-/

namespace A101886.P3467040429116966181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120514 (n + 1)) (A055458 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101886.P3467040429116966181

/-! ## A101886.P1037976572918667646

`∑[A265917(2*A071679(n+1)+1)]`
-/

namespace A101886.P1037976572918667646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (2 * A071679 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101886.P1037976572918667646

/-! ## A101886.P13457120409949196621

`∑[A265917(2*A000045(n+3)+1)]`
-/

namespace A101886.P13457120409949196621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (2 * A000045 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101886.P13457120409949196621

/-!
# A101887: Natural numbers excluding A101886.

The programs for A101887, there is no canonical definition to state claims against.
-/

/-! ## A101887.P1873469302812146765

`eq[char[A101886(n+1)], A151933(n)]`
-/

namespace A101887.P1873469302812146765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A101887.P1873469302812146765

/-!
# A101888: Smallest natural number sequence without any length 5 equidistant arithmetic subsequences.

The programs for A101888, there is no canonical definition to state claims against.
-/

/-! ## A101888.P5843689560920862810

`comp[A101889(n+1)-1]+1`
-/

namespace A101888.P5843689560920862810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101889 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A101888.P5843689560920862810

/-! ## A101888.P1329971575654927934

`A087069(n)+A000005(A304042(n))`
-/

namespace A101888.P1329971575654927934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n + A000005 (A304042 n).toNat

end

end A101888.P1329971575654927934

/-! ## A101888.P5305129028009575809

`A087069(n)+A049419(A304042(n)²)`
-/

namespace A101888.P5305129028009575809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n + A049419 (A304042 n ^ 2).toNat

end

end A101888.P5305129028009575809

/-! ## A101888.P9460514061251398981

`A087069(n)+A020639(A304042(n)!)`
-/

namespace A101888.P9460514061251398981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n + A020639 (Nat.factorial (A304042 n).toNat)

end

end A101888.P9460514061251398981

/-! ## A101888.P15558385013548564878

`A087069(n)+A000010(A304042(n)+1)`
-/

namespace A101888.P15558385013548564878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n + A000010 (A304042 n + 1).toNat

end

end A101888.P15558385013548564878

/-! ## A101888.P2544661591750996860

`A087069(n)+A001221(A304042(n)+1)`
-/

namespace A101888.P2544661591750996860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n + A001221 (A304042 n + 1).toNat

end

end A101888.P2544661591750996860

/-! ## A101888.P13384691353195710368

`A087069(n)+A001222(A304042(n)+1)`
-/

namespace A101888.P13384691353195710368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n + A001222 (A304042 n + 1).toNat

end

end A101888.P13384691353195710368

/-! ## A101888.P12994593902704863143

`A087069(n)+A003602(A304042(n)+1)`
-/

namespace A101888.P12994593902704863143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n + A003602 (A304042 n + 1).toNat

end

end A101888.P12994593902704863143

/-! ## A101888.P1420817829872105946

`A087069(n)+A049107(A302551(n+1))`
-/

namespace A101888.P1420817829872105946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n + A049107 (A302551 (n + 1)).toNat

end

end A101888.P1420817829872105946

/-!
# A101889: Natural numbers excluding A101888.

The programs for A101889, there is no canonical definition to state claims against.
-/

/-! ## A101889.P5262316872566952599

`filter[A007095(n+1), A093957(#)]`
-/

namespace A101889.P5262316872566952599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093957 (f1 j).toNat = 1) n)

end

end A101889.P5262316872566952599

/-! ## A101889.P14566437511870901899

`filter[A037479(n+1), A093957(#)]`
-/

namespace A101889.P14566437511870901899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093957 (f1 j).toNat = 1) n)

end

end A101889.P14566437511870901899

/-! ## A101889.P2258475258694739971

`filter[A056018(n+1), A093957(#)]`
-/

namespace A101889.P2258475258694739971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093957 (f1 j).toNat = 1) n)

end

end A101889.P2258475258694739971

/-! ## A101889.P14232542163279054222

`eq[A093957(A028310(n)), A294335(n)]`
-/

namespace A101889.P14232542163279054222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093957 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294335 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A101889.P14232542163279054222

/-! ## A101889.P15997927131546234614

`∑[gcd(5, A010936(n+1))]`
-/

namespace A101889.P15997927131546234614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A010936 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101889.P15997927131546234614

/-!
# A101890: a(n) = Sum_{k=0..floor(n/2)} binomial(n,2*k)*Fibonacci(k).

The programs for A101890, the canonical program `A101890.P17149930955366476143` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101890 has offset 0).

The definition of A101890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101890.P17149930955366476143

`4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101890

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)` -/
def P17149930955366476143.Spec : Prop :=
  ∀ n, P17149930955366476143.a n = A101890 n

theorem P17149930955366476143.correct : P17149930955366476143.Spec := by
  intro n
  simp only [A101890]

end A101890

/-! ## A101890.P3721877363974006805

`ogf((-x^2+x^3)/(-1+4x-5x^2+2x^3+x^4))`
-/

namespace A101890.P3721877363974006805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -4, 5, -2, -1] n

end

end A101890.P3721877363974006805

namespace A101890

/-- `ogf((-x^2+x^3)/(-1+4x-5x^2+2x^3+x^4))` -/
def P3721877363974006805.Spec : Prop :=
  ∀ n, P3721877363974006805.a n = A101890 n

end A101890

/-! ## A101890.P1669827815936744343

`A129984(n)-A131577(n)`
-/

namespace A101890.P1669827815936744343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 n - A131577 n

end

end A101890.P1669827815936744343

namespace A101890

/-- `A129984(n)-A131577(n)` -/
def P1669827815936744343.Spec : Prop :=
  ∀ n, P1669827815936744343.a n = A101890 n

end A101890

/-! ## A101890.P12965179475989980723

`Δ[A129988(n)-A129986(n)]`
-/

namespace A101890.P12965179475989980723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - A129986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101890.P12965179475989980723

namespace A101890

/-- `Δ[A129988(n)-A129986(n)]` -/
def P12965179475989980723.Spec : Prop :=
  ∀ n, P12965179475989980723.a n = A101890 n

end A101890

/-! ## A101890.P16053000002964816722

`Δ[A129988(n)]-A129987(n)`
-/

namespace A101890.P16053000002964816722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A129987 n

end

end A101890.P16053000002964816722

namespace A101890

/-- `Δ[A129988(n)]-A129987(n)` -/
def P16053000002964816722.Spec : Prop :=
  ∀ n, P16053000002964816722.a n = A101890 n

end A101890

/-! ## A101890.P17271123654941699162

`Δ[A290990(n)]-A101891(n)`
-/

namespace A101890.P17271123654941699162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A101891 n

end

end A101890.P17271123654941699162

namespace A101890

/-- `Δ[A290990(n)]-A101891(n)` -/
def P17271123654941699162.Spec : Prop :=
  ∀ n, P17271123654941699162.a n = A101890 n

end A101890

/-! ## A101890.P4176947382757281578

`Δ[A129988(n)-Δ[A129984(n)]]`
-/

namespace A101890.P4176947382757281578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101890.P4176947382757281578

namespace A101890

/-- `Δ[A129988(n)-Δ[A129984(n)]]` -/
def P4176947382757281578.Spec : Prop :=
  ∀ n, P4176947382757281578.a n = A101890 n

end A101890

/-! ## A101890.P13167322055090317720

`A129988(n+1)-A129987(n+1)`
-/

namespace A101890.P13167322055090317720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (n + 1) - A129987 (n + 1)

end

end A101890.P13167322055090317720

namespace A101890

/-- `A129988(n+1)-A129987(n+1)` -/
def P13167322055090317720.Spec : Prop :=
  ∀ n, P13167322055090317720.a n = A101890 n

end A101890

/-! ## A101890.P10132838903221001561

`A290990(n+1)-A101891(n+1)`
-/

namespace A101890.P10132838903221001561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 (n + 1) - A101891 (n + 1)

end

end A101890.P10132838903221001561

namespace A101890

/-- `A290990(n+1)-A101891(n+1)` -/
def P10132838903221001561.Spec : Prop :=
  ∀ n, P10132838903221001561.a n = A101890 n

end A101890

/-! ## A101890.P10264770553608276730

`Δ[Δ[A114199(n)]-A114199(n)]`
-/

namespace A101890.P10264770553608276730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A114199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101890.P10264770553608276730

namespace A101890

/-- `Δ[Δ[A114199(n)]-A114199(n)]` -/
def P10264770553608276730.Spec : Prop :=
  ∀ n, P10264770553608276730.a n = A101890 n

end A101890

/-! ## A101890.P10823784253795521624

`Δ[A114199(n+1)%A114199(n)]`
-/

namespace A101890.P10823784253795521624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114199 (n + 1)) (A114199 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101890.P10823784253795521624

namespace A101890

/-- `Δ[A114199(n+1)%A114199(n)]` -/
def P10823784253795521624.Spec : Prop :=
  ∀ n, P10823784253795521624.a n = A101890 n

end A101890

/-! ## A101890.P12461634520429803471

`A129987(n+2)%A129987(n+1)`
-/

namespace A101890.P12461634520429803471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129987 (n + 2)) (A129987 (n + 1))

end

end A101890.P12461634520429803471

namespace A101890

/-- `A129987(n+2)%A129987(n+1)` -/
def P12461634520429803471.Spec : Prop :=
  ∀ n, P12461634520429803471.a n = A101890 n

end A101890

/-! ## A101890.P5229882427079966138

`Δ[Δ[A129986(n+1)]-A129986(n+1)]`
-/

namespace A101890.P5229882427079966138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A129986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101890.P5229882427079966138

namespace A101890

/-- `Δ[Δ[A129986(n+1)]-A129986(n+1)]` -/
def P5229882427079966138.Spec : Prop :=
  ∀ n, P5229882427079966138.a n = A101890 n

end A101890

/-!
# A101891: a(n) = Sum_{k=0..floor(n/2)} binomial(n,2*k)*Fibonacci(k+1).

The programs for A101891, the canonical program `A101891.P16469557365833413668` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101891 has offset 0).

The definition of A101891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101891.P16469557365833413668

`4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101891

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)+a(n-4)` -/
def P16469557365833413668.Spec : Prop :=
  ∀ n, P16469557365833413668.a n = A101891 n

theorem P16469557365833413668.correct : P16469557365833413668.Spec := by
  intro n
  simp only [A101891]

end A101891

/-! ## A101891.P6903566641010166950

`ogf((-1+3x-3x^2+x^3)/(-1+4x-5x^2+2x^3+x^4))`
-/

namespace A101891.P6903566641010166950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -4, 5, -2, -1] n

end

end A101891.P6903566641010166950

namespace A101891

/-- `ogf((-1+3x-3x^2+x^3)/(-1+4x-5x^2+2x^3+x^4))` -/
def P6903566641010166950.Spec : Prop :=
  ∀ n, P6903566641010166950.a n = A101891 n

end A101891

/-! ## A101891.P13498259528900239592

`∑[A290990(abs(1-n))]`
-/

namespace A101891.P13498259528900239592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101891.P13498259528900239592

namespace A101891

/-- `∑[A290990(abs(1-n))]` -/
def P13498259528900239592.Spec : Prop :=
  ∀ n, P13498259528900239592.a n = A101891 n

end A101891

/-! ## A101891.P16864511855986370467

`A290990(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A101891.P16864511855986370467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290990 (n - 1) + a (n - 1)

end

end A101891.P16864511855986370467

namespace A101891

/-- `A290990(n-1)+a(n-1)` -/
def P16864511855986370467.Spec : Prop :=
  ∀ n, P16864511855986370467.a n = A101891 n

end A101891

/-! ## A101891.P3820076600382821545

`round(Δ[A129986(n)]-2^(n-1))`
-/

namespace A101891.P3820076600382821545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A101891.P3820076600382821545

namespace A101891

/-- `round(Δ[A129986(n)]-2^(n-1))` -/
def P3820076600382821545.Spec : Prop :=
  ∀ n, P3820076600382821545.a n = A101891 n

end A101891

/-! ## A101891.P16597004526162232986

`A129987(n)-A131577(n)`
-/

namespace A101891.P16597004526162232986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n - A131577 n

end

end A101891.P16597004526162232986

namespace A101891

/-- `A129987(n)-A131577(n)` -/
def P16597004526162232986.Spec : Prop :=
  ∀ n, P16597004526162232986.a n = A101891 n

end A101891

/-! ## A101891.P1002845448730193382

`A129987(n)-Δ[A011782(n)]`
-/

namespace A101891.P1002845448730193382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n - (f1 (n + 1) - f1 n)

end

end A101891.P1002845448730193382

namespace A101891

/-- `A129987(n)-Δ[A011782(n)]` -/
def P1002845448730193382.Spec : Prop :=
  ∀ n, P1002845448730193382.a n = A101891 n

end A101891

/-! ## A101891.P8061323015534336215

`A129987(n)+1-A094373(n)`
-/

namespace A101891.P8061323015534336215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n + (1 - A094373 n)

end

end A101891.P8061323015534336215

namespace A101891

/-- `A129987(n)+1-A094373(n)` -/
def P8061323015534336215.Spec : Prop :=
  ∀ n, P8061323015534336215.a n = A101891 n

end A101891

/-! ## A101891.P7900784892787744560

`A129987(n)+2-A056469(n)`
-/

namespace A101891.P7900784892787744560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n + (2 - A056469 n)

end

end A101891.P7900784892787744560

namespace A101891

/-- `A129987(n)+2-A056469(n)` -/
def P7900784892787744560.Spec : Prop :=
  ∀ n, P7900784892787744560.a n = A101891 n

end A101891

/-! ## A101891.P12027158968832680267

`A129987(n)-record[A048675(n+1)]`
-/

namespace A101891.P12027158968832680267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101891.P12027158968832680267

namespace A101891

/-- `A129987(n)-record[A048675(n+1)]` -/
def P12027158968832680267.Spec : Prop :=
  ∀ n, P12027158968832680267.a n = A101891 n

end A101891

/-! ## A101891.P5668742821623951076

`A129987(n)-record[A087207(n+1)]`
-/

namespace A101891.P5668742821623951076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129987 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A101891.P5668742821623951076

namespace A101891

/-- `A129987(n)-record[A087207(n+1)]` -/
def P5668742821623951076.Spec : Prop :=
  ∀ n, P5668742821623951076.a n = A101891 n

end A101891

/-! ## A101891.P13880362841778096237

`Δ[Δ[A101890(n)]]`
-/

namespace A101891.P13880362841778096237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101891.P13880362841778096237

namespace A101891

/-- `Δ[Δ[A101890(n)]]` -/
def P13880362841778096237.Spec : Prop :=
  ∀ n, P13880362841778096237.a n = A101891 n

end A101891

/-! ## A101891.P16784969089522422776

`Δ[A129988(n)-A129983(n)]`
-/

namespace A101891.P16784969089522422776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n - A129983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101891.P16784969089522422776

namespace A101891

/-- `Δ[A129988(n)-A129983(n)]` -/
def P16784969089522422776.Spec : Prop :=
  ∀ n, P16784969089522422776.a n = A101891 n

end A101891

/-! ## A101891.P4949804446135114704

`Δ[A129988(n)]-A129984(n)`
-/

namespace A101891.P4949804446135114704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A129984 n

end

end A101891.P4949804446135114704

namespace A101891

/-- `Δ[A129988(n)]-A129984(n)` -/
def P4949804446135114704.Spec : Prop :=
  ∀ n, P4949804446135114704.a n = A101891 n

end A101891

/-! ## A101891.P9123648783101641398

`Δ[Δ[A129984(n)-A131577(n)]]`
-/

namespace A101891.P9123648783101641398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129984 n - A131577 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101891.P9123648783101641398

namespace A101891

/-- `Δ[Δ[A129984(n)-A131577(n)]]` -/
def P9123648783101641398.Spec : Prop :=
  ∀ n, P9123648783101641398.a n = A101891 n

end A101891

/-! ## A101891.P5930391903417573681

`∑[A290990(n)]+1-A290990(n)`
-/

namespace A101891.P5930391903417573681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A290990 n)

end

end A101891.P5930391903417573681

namespace A101891

/-- `∑[A290990(n)]+1-A290990(n)` -/
def P5930391903417573681.Spec : Prop :=
  ∀ n, P5930391903417573681.a n = A101891 n

end A101891

/-! ## A101891.P17666602773332690080

`A129988(n+1)-(A129988(n)+A129984(n))`
-/

namespace A101891.P17666602773332690080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (n + 1) - (A129988 n + A129984 n)

end

end A101891.P17666602773332690080

namespace A101891

/-- `A129988(n+1)-(A129988(n)+A129984(n))` -/
def P17666602773332690080.Spec : Prop :=
  ∀ n, P17666602773332690080.a n = A101891 n

end A101891

/-! ## A101891.P15535516705467935237

`Δ[Δ[A129988(n+1)-A129987(n+1)]]`
-/

namespace A101891.P15535516705467935237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129988 (n + 1) - A129987 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101891.P15535516705467935237

namespace A101891

/-- `Δ[Δ[A129988(n+1)-A129987(n+1)]]` -/
def P15535516705467935237.Spec : Prop :=
  ∀ n, P15535516705467935237.a n = A101891 n

end A101891

/-! ## A101891.P15564968208328949269

`Δ[Δ[A290990(n+1)]-A290990(n+1)]`
-/

namespace A101891.P15564968208328949269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290990 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A290990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101891.P15564968208328949269

namespace A101891

/-- `Δ[Δ[A290990(n+1)]-A290990(n+1)]` -/
def P15564968208328949269.Spec : Prop :=
  ∀ n, P15564968208328949269.a n = A101891 n

end A101891

/-!
# A101892: a(n) = Sum_{k=0..floor(n/2)} binomial(n,2*k)*J(k), where J = A001045.

The programs for A101892, the canonical program `A101892.P15812653183657537113` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101892 has offset 0).

The definition of A101892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101892.P15812653183657537113

`4*a(n-1)-5*a(n-2)+2*a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101892

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)+2*a(n-4)` -/
def P15812653183657537113.Spec : Prop :=
  ∀ n, P15812653183657537113.a n = A101892 n

theorem P15812653183657537113.correct : P15812653183657537113.Spec := by
  intro n
  simp only [A101892]

end A101892

/-! ## A101892.P12256597776719957980

`1/6*(2*A001333(n)-A009545(n+2))`
-/

namespace A101892.P12256597776719957980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (2 * A001333 n - A009545 (n + 2) : ℚ)

end

end A101892.P12256597776719957980

namespace A101892

/-- `1/6*(2*A001333(n)-A009545(n+2))` -/
def P12256597776719957980.Spec : Prop :=
  ∀ n, P12256597776719957980.a n = (A101892 n : ℚ)

end A101892

/-! ## A101892.P14451815275356590336

`ogf((-x^2+x^3)/(-1+4x-5x^2+2x^3+2x^4))`
-/

namespace A101892.P14451815275356590336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -4, 5, -2, -2] n

end

end A101892.P14451815275356590336

namespace A101892

/-- `ogf((-x^2+x^3)/(-1+4x-5x^2+2x^3+2x^4))` -/
def P14451815275356590336.Spec : Prop :=
  ∀ n, P14451815275356590336.a n = A101892 n

end A101892

/-! ## A101892.P6711027888365856362

`Δ[A373358(abs(1-n))]`
-/

namespace A101892.P6711027888365856362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373358 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101892.P6711027888365856362

namespace A101892

/-- `Δ[A373358(abs(1-n))]` -/
def P6711027888365856362.Spec : Prop :=
  ∀ n, P6711027888365856362.a n = A101892 n

end A101892

/-! ## A101892.P4761066610750534235

`(A001333(n)-A146559(n))/3`
-/

namespace A101892.P4761066610750534235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n - A146559 n : ℚ) / 3

end

end A101892.P4761066610750534235

namespace A101892

/-- `(A001333(n)-A146559(n))/3` -/
def P4761066610750534235.Spec : Prop :=
  ∀ n, P4761066610750534235.a n = (A101892 n : ℚ)

end A101892

/-! ## A101892.P2362030481054196566

`(A001333(n)-A146559(n))*3^A008683(A038888(n+1))`
-/

namespace A101892.P2362030481054196566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 n - A146559 n : ℚ) * (3 : ℚ) ^ (A008683 (A038888 (n + 1)).toNat : ℤ)

end

end A101892.P2362030481054196566

namespace A101892

/-- `(A001333(n)-A146559(n))*3^A008683(A038888(n+1))` -/
def P2362030481054196566.Spec : Prop :=
  ∀ n, P2362030481054196566.a n = (A101892 n : ℚ)

end A101892

/-! ## A101892.P8527311034426772304

`A000129(n+1)-A373245(n)`
-/

namespace A101892.P8527311034426772304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - A373245 n

end

end A101892.P8527311034426772304

namespace A101892

/-- `A000129(n+1)-A373245(n)` -/
def P8527311034426772304.Spec : Prop :=
  ∀ n, P8527311034426772304.a n = A101892 n

end A101892

/-! ## A101892.P13337672681465316440

`Δ[(A000129(n)-A009545(n))/3]`
-/

namespace A101892.P13337672681465316440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 n - A009545 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101892.P13337672681465316440

namespace A101892

/-- `Δ[(A000129(n)-A009545(n))/3]` -/
def P13337672681465316440.Spec : Prop :=
  ∀ n, P13337672681465316440.a n = (A101892 n : ℚ)

end A101892

/-! ## A101892.P12387731789399128806

`A114203(n)+A373358(n)-A373245(n)`
-/

namespace A101892.P12387731789399128806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114203 n + (A373358 n - A373245 n)

end

end A101892.P12387731789399128806

namespace A101892

/-- `A114203(n)+A373358(n)-A373245(n)` -/
def P12387731789399128806.Spec : Prop :=
  ∀ n, P12387731789399128806.a n = A101892 n

end A101892

/-! ## A101892.P13548200709140998871

`A000129(n+1)-(A373358(n+1)+A146559(n))`
-/

namespace A101892.P13548200709140998871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) - (A373358 (n + 1) + A146559 n)

end

end A101892.P13548200709140998871

namespace A101892

/-- `A000129(n+1)-(A373358(n+1)+A146559(n))` -/
def P13548200709140998871.Spec : Prop :=
  ∀ n, P13548200709140998871.a n = A101892 n

end A101892

/-!
# A101893: a(n) = Sum_{k=0..floor(n/2)} C(n,2k)*Pell(k).

The programs for A101893, the canonical program `A101893.P11891652196750623991` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A101893 has offset 0).

The definition of A101893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A101893.P11891652196750623991

`4*a(n-1)-4*a(n-2)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A101893

/-- `4*a(n-1)-4*a(n-2)+2*a(n-4)` -/
def P11891652196750623991.Spec : Prop :=
  ∀ n, P11891652196750623991.a n = A101893 n

theorem P11891652196750623991.correct : P11891652196750623991.Spec := by
  intro n
  simp only [A101893]

end A101893

/-! ## A101893.P16334633978930611795

`ogf((x^2-x^3)/(1-4x+4x^2-2x^4))`
-/

namespace A101893.P16334633978930611795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -4, 4, 0, -2] n

end

end A101893.P16334633978930611795

namespace A101893

/-- `ogf((x^2-x^3)/(1-4x+4x^2-2x^4))` -/
def P16334633978930611795.Spec : Prop :=
  ∀ n, P16334633978930611795.a n = A101893 n

end A101893

/-! ## A101893.P13004392079502668903

`Δ[A135248(n)]`
-/

namespace A101893.P13004392079502668903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A101893.P13004392079502668903

namespace A101893

/-- `Δ[A135248(n)]` -/
def P13004392079502668903.Spec : Prop :=
  ∀ n, P13004392079502668903.a n = A101893 n

end A101893

/-! ## A101893.P18275148654362620322

`A135248(n+1)-A135248(n)`
-/

namespace A101893.P18275148654362620322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135248 (n + 1) - A135248 n

end

end A101893.P18275148654362620322

namespace A101893

/-- `A135248(n+1)-A135248(n)` -/
def P18275148654362620322.Spec : Prop :=
  ∀ n, P18275148654362620322.a n = A101893 n

end A101893

/-! ## A101893.P6666752887537027574

`Δ[A209230(n)]%A209230(n)`
-/

namespace A101893.P6666752887537027574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A209230 n)

end

end A101893.P6666752887537027574

namespace A101893

/-- `Δ[A209230(n)]%A209230(n)` -/
def P6666752887537027574.Spec : Prop :=
  ∀ n, P6666752887537027574.a n = A101893 n

end A101893

/-! ## A101893.P17140369470179040092

`A209230(n+1)%A209230(n)`
-/

namespace A101893.P17140369470179040092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209230 (n + 1)) (A209230 n)

end

end A101893.P17140369470179040092

namespace A101893

/-- `A209230(n+1)%A209230(n)` -/
def P17140369470179040092.Spec : Prop :=
  ∀ n, P17140369470179040092.a n = A101893 n

end A101893

/-!
# A101894: Triangle read by rows: T(n,k) is the number of Schroeder paths of length 2n and having k peaks at odd height.

The programs for A101894, there is no canonical definition to state claims against.
-/

/-! ## A101894.P12298500274396460671

`A140297(A237596(n))-1`
-/

namespace A101894.P12298500274396460671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140297 (A237596 n).toNat - 1

end

end A101894.P12298500274396460671

/-! ## A101894.P10598718997889914464

`A323191(2*n+1)+A140297(A237596(n))`
-/

namespace A101894.P10598718997889914464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323191 (2 * n + 1) + A140297 (A237596 n).toNat

end

end A101894.P10598718997889914464

/-! ## A101894.P15172635234193910619

`A318656(A002148(n))+A140297(A237596(n))`
-/

namespace A101894.P15172635234193910619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318656 (A002148 n).toNat + A140297 (A237596 n).toNat

end

end A101894.P15172635234193910619

/-! ## A101894.P16551508003405911887

`A004525(A110681(n*A109014(n)))`
-/

namespace A101894.P16551508003405911887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A110681 ((n : ℤ) * A109014 n).toNat).toNat

end

end A101894.P16551508003405911887

/-! ## A101894.P13191579862980558331

`A004525(A110681(n)^A109014(n))`
-/

namespace A101894.P13191579862980558331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A110681 n : ℚ) ^ (A109014 n : ℤ))).toNat

end

end A101894.P13191579862980558331

/-!
# A101896: Primes obtained if 2^j for some suitable j is written backward.

The programs for A101896, there is no canonical definition to state claims against.
-/

/-! ## A101896.P5520997769702971730

`A004094(A057708(n+1))`
-/

namespace A101896.P5520997769702971730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 (A057708 (n + 1)).toNat

end

end A101896.P5520997769702971730

/-! ## A101896.P5654250196408011969

`A004094(eq[1, A102383(n)])`
-/

namespace A101896.P5654250196408011969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A101896.P5654250196408011969

/-! ## A101896.P15289519381208674928

`A102384(A057708(2*n+1-n))`
-/

namespace A101896.P15289519381208674928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102384 (A057708 (2 * n + 1 - n)).toNat

end

end A101896.P15289519381208674928

/-! ## A101896.P9189550662371141672

`A004094(eq[A102382(n), A267537(n)])`
-/

namespace A101896.P9189550662371141672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A101896.P9189550662371141672

/-! ## A101896.P3138193345518928744

`A004094(eq[A102382(n), A267683(n)])`
-/

namespace A101896.P3138193345518928744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A101896.P3138193345518928744

/-!
# A101898: Column 1 of triangular matrix A101897, in which column k equals column 0 of A101897^(k+1) and where the n-th row sums are zero for n>0.

The programs for A101898, there is no canonical definition to state claims against.
-/

/-! ## A101898.P14898363792386734154

`A101897(∑[n+1]+1)`
-/

namespace A101898.P14898363792386734154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101897 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A101898.P14898363792386734154

/-!
# A101899: Column 2 of triangular matrix A101897, in which column k equals column 0 of A101897^(k+1) and where the n-th row sums are zero for n>0.

The programs for A101899, there is no canonical definition to state claims against.
-/

/-! ## A101899.P16150128730007488790

`A101900(n+1)-A101898(n+1)`
-/

namespace A101899.P16150128730007488790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101900 (n + 1) - A101898 (n + 1)

end

end A101899.P16150128730007488790

/-! ## A101899.P5069594794567428446

`A101897(∑[n+2]+3)`
-/

namespace A101899.P5069594794567428446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101897 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A101899.P5069594794567428446

