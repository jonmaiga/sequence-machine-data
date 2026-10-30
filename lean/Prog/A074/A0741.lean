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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A074100: Cubes using only digits 1, 2, 3, 5 and 7.

The programs for A074100, there is no canonical definition to state claims against.
-/

/-! ## A074100.P14521022969661461182

`∩[A052045(n+1), A083806(n+1)]`
-/

namespace A074100.P14521022969661461182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074100.P14521022969661461182

/-! ## A074100.P11556866162787242426

`∩[A083806(n+1), A000578(n)]`
-/

namespace A074100.P11556866162787242426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074100.P11556866162787242426

/-! ## A074100.P17665927803599889092

`∩[A083806(n+1), A006501(n)]`
-/

namespace A074100.P17665927803599889092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074100.P17665927803599889092

/-! ## A074100.P17429131993991106938

`∩[A083806(n+1), A109900(n)]`
-/

namespace A074100.P17429131993991106938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074100.P17429131993991106938

/-! ## A074100.P8073663895308283887

`∩[A083806(n+1), A210433(n+1)]`
-/

namespace A074100.P8073663895308283887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074100.P8073663895308283887

/-!
# A074101: Squares using no prime digit.

The programs for A074101, there is no canonical definition to state claims against.
-/

/-! ## A074101.P14635306802270188061

`∩[A084984(n+1), n²]`
-/

namespace A074101.P14635306802270188061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A074101.P14635306802270188061

/-! ## A074101.P2947005668525339399

`∩[A000290(n), A084984(n+1)]`
-/

namespace A074101.P2947005668525339399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074101.P2947005668525339399

/-! ## A074101.P10151545567824992697

`∩[A002620(2*n), A084984(n+1)]`
-/

namespace A074101.P10151545567824992697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074101.P10151545567824992697

/-! ## A074101.P10605086683007518733

`∩[n*A028310(n), A084984(n+1)]`
-/

namespace A074101.P10605086683007518733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074101.P10605086683007518733

/-! ## A074101.P8637544337984223243

`A000290(record[A056926(A084984(n+1))])`
-/

namespace A074101.P8637544337984223243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A084984 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074101.P8637544337984223243

/-!
# A074102: Cubes from which deleting a suitable digit leaves a square.

The programs for A074102, there is no canonical definition to state claims against.
-/

/-! ## A074102.P12127643873746912090

`record[A007318(A176034(n+1))^3]`
-/

namespace A074102.P12127643873746912090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A176034 (n + 1)).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074102.P12127643873746912090

/-! ## A074102.P3867167873778129528

`record[A048762(A225910(n))]`
-/

namespace A074102.P3867167873778129528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (A225910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074102.P3867167873778129528

/-! ## A074102.P7960220719585246939

`record[A008834(A155147(n+1))]`
-/

namespace A074102.P7960220719585246939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (A155147 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074102.P7960220719585246939

/-!
# A074103: a(n) = n!/A074859(n).

The programs for A074103, there is no canonical definition to state claims against.
-/

/-! ## A074103.P785159696183485030

`n!/A074859(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074103.P785159696183485030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A074859 n : ℚ)

end

end A074103.P785159696183485030

/-! ## A074103.P8221507301148886827

`A000793(n)/A074859(n)*A074115(n)`
-/

namespace A074103.P8221507301148886827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000793 n : ℚ) / (A074859 n : ℚ) * (A074115 n : ℚ)

end

end A074103.P8221507301148886827

/-! ## A074103.P12892800522066191723

`A000142(n)/A074859(n)`
-/

namespace A074103.P12892800522066191723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A074859 n : ℚ)

end

end A074103.P12892800522066191723

/-! ## A074103.P9912645757340531445

`A130534(∑[n])/A074859(n)`
-/

namespace A074103.P9912645757340531445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130534 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A074859 n : ℚ)

end

end A074103.P9912645757340531445

/-! ## A074103.P6998745930044887992

`Δ[A003422(n)]/A074859(n)`
-/

namespace A074103.P6998745930044887992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A074859 n : ℚ)

end

end A074103.P6998745930044887992

/-!
# A074104: Smallest multiple of n such that every partial sum is a prime, or 0 if no such number exists.

The programs for A074104, there is no canonical definition to state claims against.
-/

/-! ## A074104.P3388903574185913406

`(1+n)*A084665(n+1)`
-/

namespace A074104.P3388903574185913406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A084665 (n + 1)

end

end A074104.P3388903574185913406

/-!
# A074106: a(1)=1; a(n) is the minimal unused odd prime such that the sum a(1)+a(2)+...+a(n) is divisible by n.

The programs for A074106, there is no canonical definition to state claims against.
-/

/-! ## A074106.P17708028040526250596

`A321904(A008578(n+1)+∑[n])`
-/

namespace A074106.P17708028040526250596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (A008578 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A074106.P17708028040526250596

/-! ## A074106.P5450202184304746370

`A321904(record[A006530(n+1)]+∑[n])`
-/

namespace A074106.P5450202184304746370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A074106.P5450202184304746370

/-! ## A074106.P10387302929223724390

`A321904(A005180(n+1)+A000217(n))`
-/

namespace A074106.P10387302929223724390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (A005180 (n + 1) + A000217 n).toNat

end

end A074106.P10387302929223724390

/-! ## A074106.P17596901397094787266

`A321904(A000217(n)+record[A006530(n+1)])`
-/

namespace A074106.P17596901397094787266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321904 (A000217 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074106.P17596901397094787266

/-!
# A074107: a(n) = Product of (prime + 1) for first n primes - primorial (n); Sum of proper divisors of the n-th primorial.

The programs for A074107, the canonical program `A074107.P8605610893175755867` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074107 has offset 0).

The definition of A074107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074107.P8605610893175755867

`A054640(n)-A002110(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A074107

/-- `A054640(n)-A002110(n)` -/
def P8605610893175755867.Spec : Prop :=
  ∀ n, P8605610893175755867.a n = A074107 n

theorem P8605610893175755867.correct : P8605610893175755867.Spec := by
  intro n
  simp only [A074107]

end A074107

/-! ## A074107.P18384572482261174576

`A001065(A002110(n))`
-/

namespace A074107.P18384572482261174576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A002110 n).toNat

end

end A074107.P18384572482261174576

namespace A074107

/-- `A001065(A002110(n))` -/
def P18384572482261174576.Spec : Prop :=
  ∀ n, P18384572482261174576.a n = A074107 n

end A074107

/-! ## A074107.P17784439745952726139

`∑[A339360(n)]-A002110(n)`
-/

namespace A074107.P17784439745952726139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002110 n

end

end A074107.P17784439745952726139

namespace A074107

/-- `∑[A339360(n)]-A002110(n)` -/
def P17784439745952726139.Spec : Prop :=
  ∀ n, P17784439745952726139.a n = A074107 n

end A074107

/-! ## A074107.P3454257439347302118

`record[A337203(n+1)]-A002110(n)`
-/

namespace A074107.P3454257439347302118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002110 n

end

end A074107.P3454257439347302118

namespace A074107

/-- `record[A337203(n+1)]-A002110(n)` -/
def P3454257439347302118.Spec : Prop :=
  ∀ n, P3454257439347302118.a n = A074107 n

end A074107

/-! ## A074107.P1666372652420302469

`∏[A299763(n+1)]-A096334(∑[n])`
-/

namespace A074107.P1666372652420302469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A096334 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A074107.P1666372652420302469

namespace A074107

/-- `∏[A299763(n+1)]-A096334(∑[n])` -/
def P1666372652420302469.Spec : Prop :=
  ∀ n, P1666372652420302469.a n = A074107 n

end A074107

/-! ## A074107.P17293001527135528087

`∏[record[A229022(n+1)]]-A002110(n)`
-/

namespace A074107.P17293001527135528087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229022 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A002110 n

end

end A074107.P17293001527135528087

namespace A074107

/-- `∏[record[A229022(n+1)]]-A002110(n)` -/
def P17293001527135528087.Spec : Prop :=
  ∀ n, P17293001527135528087.a n = A074107 n

end A074107

/-! ## A074107.P13429030598996788711

`∏[A299763(n+1)]-record[A096334(n)]`
-/

namespace A074107.P13429030598996788711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A074107.P13429030598996788711

namespace A074107

/-- `∏[A299763(n+1)]-record[A096334(n)]` -/
def P13429030598996788711.Spec : Prop :=
  ∀ n, P13429030598996788711.a n = A074107 n

end A074107

/-! ## A074107.P9825879085743503323

`∏[A299763(n+1)]-record[A121281(n)]`
-/

namespace A074107.P9825879085743503323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A074107.P9825879085743503323

namespace A074107

/-- `∏[A299763(n+1)]-record[A121281(n)]` -/
def P9825879085743503323.Spec : Prop :=
  ∀ n, P9825879085743503323.a n = A074107 n

end A074107

/-!
# A074108: Smallest number such that the concatenation of first n terms is a proper multiple of the concatenation of first n natural numbers.

The programs for A074108, there is no canonical definition to state claims against.
-/

/-! ## A074108.P7959362540228795157

`(n+1)*A000914(A001752(A061994(n)))`
-/

namespace A074108.P7959362540228795157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000914 (A001752 (A061994 n).toNat).toNat

end

end A074108.P7959362540228795157

/-!
# A074109: Smallest n-digit squarefree number.

The programs for A074109, there is no canonical definition to state claims against.
-/

/-! ## A074109.P1938105267535343004

`A011557(n)+A001222(A019320(n))`
-/

namespace A074109.P1938105267535343004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + A001222 (A019320 n).toNat

end

end A074109.P1938105267535343004

/-! ## A074109.P11246391492865256057

`A073093(A019320(n))+A002283(n)`
-/

namespace A074109.P11246391492865256057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A019320 n).toNat + A002283 n

end

end A074109.P11246391492865256057

/-! ## A074109.P10364146674003637830

`A001222(A019320(n))+Δ[A173735(n)]`
-/

namespace A074109.P10364146674003637830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019320 n).toNat + (f1 (n + 1) - f1 n)

end

end A074109.P10364146674003637830

/-! ## A074109.P874902526382421843

`A127244(A019298(2*n))+A000533(n)`
-/

namespace A074109.P874902526382421843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 (A019298 (2 * n)).toNat + A000533 n

end

end A074109.P874902526382421843

/-! ## A074109.P10755785584929324835

`10^n-A091225(3^n)+1`
-/

namespace A074109.P10755785584929324835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - A091225 (3 ^ n) + 1

end

end A074109.P10755785584929324835

/-!
# A074110: Largest n-digit squarefree number.

The programs for A074110, there is no canonical definition to state claims against.
-/

/-! ## A074110.P1940164918652185801

`A099150(n+1)-A010054(A262924(n))`
-/

namespace A074110.P1940164918652185801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099150 (n + 1) - A010054 (A262924 n).toNat

end

end A074110.P1940164918652185801

/-! ## A074110.P2666017306144505104

`A099150(n+1)-A121373(A045991(n))`
-/

namespace A074110.P2666017306144505104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099150 (n + 1) - A121373 (A045991 n).toNat

end

end A074110.P2666017306144505104

/-! ## A074110.P1792473473482098431

`A010815(A114323(n+1))+10^(n+1)-2`
-/

namespace A074110.P1792473473482098431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A114323 (n + 1)).toNat + ((10 ^ (n + 1) : ℤ) - 2)

end

end A074110.P1792473473482098431

/-! ## A074110.P13118624097391914364

`A099150(n+1)-A281814(A026563(n))`
-/

namespace A074110.P13118624097391914364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099150 (n + 1) - A281814 (A026563 n).toNat

end

end A074110.P13118624097391914364

/-! ## A074110.P1353173055786135090

`A099150(n+1)-A253903(A099145(n+1))`
-/

namespace A074110.P1353173055786135090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099150 (n + 1) - A253903 (A099145 (n + 1)).toNat

end

end A074110.P1353173055786135090

/-!
# A074111: Smallest n-digit squarefree number with maximum number of prime divisors.

The programs for A074111, there is no canonical definition to state claims against.
-/

/-! ## A074111.P17404103396378009764

`record[A125666(A116549(2*n+1))]`
-/

namespace A074111.P17404103396378009764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125666 (A116549 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074111.P17404103396378009764

/-! ## A074111.P814297023670055177

`record[A125666(A104305(n+1)+1)]`
-/

namespace A074111.P814297023670055177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125666 (A104305 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074111.P814297023670055177

/-! ## A074111.P8575137205822101787

`A125666(A025706(n)+1)`
-/

namespace A074111.P8575137205822101787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125666 (A025706 n + 1).toNat

end

end A074111.P8575137205822101787

/-! ## A074111.P6045985676044041122

`A340316(A108923(n+1))`
-/

namespace A074111.P6045985676044041122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340316 (A108923 (n + 1)).toNat

end

end A074111.P6045985676044041122

/-!
# A074114: Largest n-digit number of the form p^a*q^b... with the maximum value of a+b+.... where p, q etc. are primes.

The programs for A074114, there is no canonical definition to state claims against.
-/

/-! ## A074114.P3794952618922582270

`A011782(3*(n+1))*A287867(A077095(2*n+5))`
-/

namespace A074114.P3794952618922582270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (3 * (n + 1)) * A287867 (A077095 (2 * n + 5)).toNat

end

end A074114.P3794952618922582270

/-!
# A074115: a(n) = n!/A000793(n).

The programs for A074115, there is no canonical definition to state claims against.
-/

/-! ## A074115.P9489661446409138921

`n!/A000793(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074115.P9489661446409138921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A000793 n : ℚ)

end

end A074115.P9489661446409138921

/-! ## A074115.P6154013334058778420

`A074103(n)/A000793(n)*A074859(n)`
-/

namespace A074115.P6154013334058778420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074103 n : ℚ) / (A000793 n : ℚ) * (A074859 n : ℚ)

end

end A074115.P6154013334058778420

/-! ## A074115.P18067929411593325257

`A002944(n+1)/A000793(n)*A025527(n+1)`
-/

namespace A074115.P18067929411593325257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A000793 n : ℚ) * (A025527 (n + 1) : ℚ)

end

end A074115.P18067929411593325257

/-! ## A074115.P4720044161802244796

`A000142(n)/A000793(n)`
-/

namespace A074115.P4720044161802244796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000793 n : ℚ)

end

end A074115.P4720044161802244796

/-! ## A074115.P17125745586616396833

`A094587(A000217(n))/A000793(n)`
-/

namespace A074115.P17125745586616396833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A000217 n).toNat : ℚ) / (A000793 n : ℚ)

end

end A074115.P17125745586616396833

/-! ## A074115.P4829092498395225186

`A002397(n)/(A000793(n)*A003418(n+1))`
-/

namespace A074115.P4829092498395225186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002397 n : ℚ) / (A000793 n * A003418 (n + 1) : ℚ)

end

end A074115.P4829092498395225186

/-!
# A074116: Largest n-digit power of 2.

The programs for A074116, the canonical program `A074116.P5873740248549221374` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074116 has offset 1).

The definition of A074116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074116.P5873740248549221374

`2^A066343(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074116

/-- `2^A066343(n+1)` -/
def P5873740248549221374.Spec : Prop :=
  ∀ n, P5873740248549221374.a n = (A074116 (n + 1) : ℚ)

end A074116

/-! ## A074116.P10225831389516557513

`2^floor((n+1)*log2(10))`
-/

namespace A074116.P10225831389516557513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n + 1 : ℝ) * Real.logb 2 (10 : ℝ)⌋ : ℤ)

end

end A074116.P10225831389516557513

namespace A074116

/-- `2^floor((n+1)*log2(10))` -/
def P10225831389516557513.Spec : Prop :=
  ∀ n, P10225831389516557513.a n = (A074116 (n + 1) : ℚ)

end A074116

/-! ## A074116.P16860714214914555272

`A000051(floor((n+1)*log2(10)))-1`
-/

namespace A074116.P16860714214914555272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 ⌊(n + 1 : ℝ) * Real.logb 2 (10 : ℝ)⌋.toNat - 1

end

end A074116.P16860714214914555272

namespace A074116

/-- `A000051(floor((n+1)*log2(10)))-1` -/
def P16860714214914555272.Spec : Prop :=
  ∀ n, P16860714214914555272.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P1312663514773673635

`A131572(floor(2*(n+1)*log2(10)))`
-/

namespace A074116.P1312663514773673635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 ⌊2 * ((n + 1 : ℝ) * Real.logb 2 (10 : ℝ))⌋.toNat

end

end A074116.P1312663514773673635

namespace A074116

/-- `A131572(floor(2*(n+1)*log2(10)))` -/
def P1312663514773673635.Spec : Prop :=
  ∀ n, P1312663514773673635.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P9520663744784202963

`A000079(A066343(n+1))`
-/

namespace A074116.P9520663744784202963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A066343 (n + 1)).toNat

end

end A074116.P9520663744784202963

namespace A074116

/-- `A000079(A066343(n+1))` -/
def P9520663744784202963.Spec : Prop :=
  ∀ n, P9520663744784202963.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P10956349656546324201

`A011782(A067497(n+1))`
-/

namespace A074116.P10956349656546324201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A067497 (n + 1)).toNat

end

end A074116.P10956349656546324201

namespace A074116

/-- `A011782(A067497(n+1))` -/
def P10956349656546324201.Spec : Prop :=
  ∀ n, P10956349656546324201.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P15245885539351634295

`A011782(A123384(n+1))`
-/

namespace A074116.P15245885539351634295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A123384 (n + 1)).toNat

end

end A074116.P15245885539351634295

namespace A074116

/-- `A011782(A123384(n+1))` -/
def P15245885539351634295.Spec : Prop :=
  ∀ n, P15245885539351634295.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P15928930215083156013

`A000079(ceil(log2(A199685(n))))`
-/

namespace A074116.P15928930215083156013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ⌈Real.logb 2 (A199685 n : ℝ)⌉.toNat

end

end A074116.P15928930215083156013

namespace A074116

/-- `A000079(ceil(log2(A199685(n))))` -/
def P15928930215083156013.Spec : Prop :=
  ∀ n, P15928930215083156013.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P10225014861532071461

`A011782(∑[A129344(n+1)])`
-/

namespace A074116.P10225014861532071461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A074116.P10225014861532071461

namespace A074116

/-- `A011782(∑[A129344(n+1)])` -/
def P10225014861532071461.Spec : Prop :=
  ∀ n, P10225014861532071461.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P8349553120998783704

`A000079(A067497(n+1)-1)`
-/

namespace A074116.P8349553120998783704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A067497 (n + 1) - 1).toNat

end

end A074116.P8349553120998783704

namespace A074116

/-- `A000079(A067497(n+1)-1)` -/
def P8349553120998783704.Spec : Prop :=
  ∀ n, P8349553120998783704.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P10093510969831840777

`A000079(A123384(n+1)-1)`
-/

namespace A074116.P10093510969831840777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A123384 (n + 1) - 1).toNat

end

end A074116.P10093510969831840777

namespace A074116

/-- `A000079(A123384(n+1)-1)` -/
def P10093510969831840777.Spec : Prop :=
  ∀ n, P10093510969831840777.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P7536752687517541170

`A151821(A123384(n+1)-1)`
-/

namespace A074116.P7536752687517541170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (A123384 (n + 1) - 1).toNat

end

end A074116.P7536752687517541170

namespace A074116

/-- `A151821(A123384(n+1)-1)` -/
def P7536752687517541170.Spec : Prop :=
  ∀ n, P7536752687517541170.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P18359645222202515943

`A000079(eq[1, A008952(n+1)])`
-/

namespace A074116.P18359645222202515943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A074116.P18359645222202515943

namespace A074116

/-- `A000079(eq[1, A008952(n+1)])` -/
def P18359645222202515943.Spec : Prop :=
  ∀ n, P18359645222202515943.a n = A074116 (n + 1)

end A074116

/-! ## A074116.P2232822895601602343

`A011782(∑[A022922(n)]+n+2)`
-/

namespace A074116.P2232822895601602343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 2).toNat

end

end A074116.P2232822895601602343

namespace A074116

/-- `A011782(∑[A022922(n)]+n+2)` -/
def P2232822895601602343.Spec : Prop :=
  ∀ n, P2232822895601602343.a n = A074116 (n + 1)

end A074116

/-!
# A074117: Smallest n-digit power of 3.

The programs for A074117, the canonical program `A074117.P1869228545253990822` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074117 has offset 1).

The definition of A074117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074117.P1869228545253990822

`3^ceil(n*log(10)/log(3))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074117

/-- `3^ceil(n*log(10)/log(3))` -/
def P1869228545253990822.Spec : Prop :=
  ∀ n, P1869228545253990822.a n = (A074117 (n + 1) : ℚ)

end A074117

/-! ## A074117.P3749801639611312299

`A029618(∑[n])*A074118(n)`
-/

namespace A074117.P3749801639611312299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (∑ j ∈ Finset.range (n + 1), f1 j) * A074118 n

end

end A074117.P3749801639611312299

namespace A074117

/-- `A029618(∑[n])*A074118(n)` -/
def P3749801639611312299.Spec : Prop :=
  ∀ n, P3749801639611312299.a n = A074117 (n + 1)

end A074117

/-! ## A074117.P4884227797926601399

`A133494(A246411(n+1)+n)/A133494(n)`
-/

namespace A074117.P4884227797926601399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133494 (A246411 (n + 1) + (n : ℤ)).toNat : ℚ) / (A133494 n : ℚ)

end

end A074117.P4884227797926601399

namespace A074117

/-- `A133494(A246411(n+1)+n)/A133494(n)` -/
def P4884227797926601399.Spec : Prop :=
  ∀ n, P4884227797926601399.a n = (A074117 (n + 1) : ℚ)

end A074117

/-! ## A074117.P1860947791900473950

`A010684(A074129(n+1))*A074118(n)`
-/

namespace A074117.P1860947791900473950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (A074129 (n + 1)).toNat * A074118 n

end

end A074117.P1860947791900473950

namespace A074117

/-- `A010684(A074129(n+1))*A074118(n)` -/
def P1860947791900473950.Spec : Prop :=
  ∀ n, P1860947791900473950.a n = A074117 (n + 1)

end A074117

/-! ## A074117.P12210099647744043136

`A133494(A080682(2*(n+1))%A330233(n+1))`
-/

namespace A074117.P12210099647744043136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (Int.tmod (A080682 (2 * (n + 1))) (A330233 (n + 1))).toNat

end

end A074117.P12210099647744043136

namespace A074117

/-- `A133494(A080682(2*(n+1))%A330233(n+1))` -/
def P12210099647744043136.Spec : Prop :=
  ∀ n, P12210099647744043136.a n = A074117 (n + 1)

end A074117

/-!
# A074118: Largest power of 3 <= 10^n.

The programs for A074118, the canonical program `A074118.P8215008649170498919` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074118 has offset 0).

The definition of A074118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074118.P17847968561071703756

`3^(A158333(n)-1)`
-/

namespace A074118.P17847968561071703756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A158333 n - 1 : ℤ)

end

end A074118.P17847968561071703756

namespace A074118

/-- `3^(A158333(n)-1)` -/
def P17847968561071703756.Spec : Prop :=
  ∀ n, P17847968561071703756.a n = (A074118 n : ℚ)

end A074118

/-! ## A074118.P7218473511760900033

`A133494(A158333(n))`
-/

namespace A074118.P7218473511760900033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A158333 n).toNat

end

end A074118.P7218473511760900033

namespace A074118

/-- `A133494(A158333(n))` -/
def P7218473511760900033.Spec : Prop :=
  ∀ n, P7218473511760900033.a n = A074118 n

end A074118

/-! ## A074118.P3557892005152068034

`A000244(A158333(n)-1)`
-/

namespace A074118.P3557892005152068034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A158333 n - 1).toNat

end

end A074118.P3557892005152068034

namespace A074118

/-- `A000244(A158333(n)-1)` -/
def P3557892005152068034.Spec : Prop :=
  ∀ n, P3557892005152068034.a n = A074118 n

end A074118

/-! ## A074118.P8215008649170498919

`ceil(A074117(n+1)/3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074118

/-- `ceil(A074117(n+1)/3)` -/
def P8215008649170498919.Spec : Prop :=
  ∀ n, P8215008649170498919.a n = A074118 n

theorem P8215008649170498919.correct : P8215008649170498919.Spec := by
  intro n
  simp only [A074118]

end A074118

/-!
# A074120: Group successively larger composite numbers so that the sum of the n-th group is a multiple of n. Sequence gives the sum of the terms in the n-th group.

The programs for A074120, there is no canonical definition to state claims against.
-/

/-! ## A074120.P15491165235855640387

`(n+1)*A074123(n+1)`
-/

namespace A074120.P15491165235855640387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074123 (n + 1)

end

end A074120.P15491165235855640387

/-! ## A074120.P164435886571497198

`A074123(A077168(n))*A077168(n)`
-/

namespace A074120.P164435886571497198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074123 (A077168 n).toNat * A077168 n

end

end A074120.P164435886571497198

/-!
# A074121: Group successively larger composite numbers so that the sum of the n-th group is a multiple of n. Sequence gives the first term in each group.

The programs for A074121, there is no canonical definition to state claims against.
-/

/-! ## A074121.P6492875378011359125

`lt[A007828(n+3), A005811(A000217(n))]`
-/

namespace A074121.P6492875378011359125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007828 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074121.P6492875378011359125

/-!
# A074122: Group successively larger composite numbers so that the sum of the n-th group is a multiple of n. Sequence gives the number of terms in the n-th group.

The programs for A074122, there is no canonical definition to state claims against.
-/

/-! ## A074122.P13284358206736541541

`Δ[A022447(A074121(n+1))]`
-/

namespace A074122.P13284358206736541541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A074121 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074122.P13284358206736541541

/-!
# A074123: Group successively larger composite numbers so that the sum of the n-th group is a multiple of n. Sequence gives group sum divided by n for the n-th group.

The programs for A074123, there is no canonical definition to state claims against.
-/

/-! ## A074123.P2996573552569584615

`A074120(n+1)/(n+1)`
-/

namespace A074123.P2996573552569584615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074120 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A074123.P2996573552569584615

/-! ## A074123.P1002183652970507074

`floor(A074120(A077168(n))/A077168(n))`
-/

namespace A074123.P1002183652970507074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074120 (A077168 n).toNat : ℚ) / (A077168 n : ℚ)⌋

end

end A074123.P1002183652970507074

/-!
# A074124: Group the composite numbers so that the sum of the n-th group is a multiple of the n-th prime: (4), (6), (8, 9, 10, 12, 14, 15, 16, 18, 20, 21, 22), (24, 25), (26, 27, 28, 30, 32), (33, 34, ...), ... Sequence gives sum of n-th group.

The programs for A074124, there is no canonical definition to state claims against.
-/

/-! ## A074124.P15001402516733863835

`p?[ceil(2/acot(n))]*A074127(n+1)`
-/

namespace A074124.P15001402516733863835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A074127 (n + 1)

end

end A074124.P15001402516733863835

/-! ## A074124.P7846236612093456576

`Δ[A007504(n)]*A074127(n+1)`
-/

namespace A074124.P7846236612093456576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A074127 (n + 1)

end

end A074124.P7846236612093456576

/-! ## A074124.P9364550648464262046

`A000040(n+1)*A074127(n+1)`
-/

namespace A074124.P9364550648464262046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A074127 (n + 1)

end

end A074124.P9364550648464262046

/-! ## A074124.P12194781575626682172

`A008578(n+2)*A074127(n+1)`
-/

namespace A074124.P12194781575626682172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A074127 (n + 1)

end

end A074124.P12194781575626682172

/-! ## A074124.P9600388201401144880

`A060308(A005097(n+1))*A074127(n+1)`
-/

namespace A074124.P9600388201401144880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A005097 (n + 1)).toNat * A074127 (n + 1)

end

end A074124.P9600388201401144880

/-! ## A074124.P11300028664671948605

`A060308(A175540(n+1)-n)*A074127(n+1)`
-/

namespace A074124.P11300028664671948605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A175540 (n + 1) - (n : ℤ)).toNat * A074127 (n + 1)

end

end A074124.P11300028664671948605

/-! ## A074124.P463936994834562898

`A060308(A008507(n+1)+n+1)*A074127(n+1)`
-/

namespace A074124.P463936994834562898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A008507 (n + 1) + (n + 1 : ℤ)).toNat * A074127 (n + 1)

end

end A074124.P463936994834562898

/-!
# A074126: Group the composite numbers so that the sum of the n-th group is a multiple of the n-th prime: (4), (6), (8, 9, 10, 12, 14, 15, 16, 18, 20, 21, 22), (24, 25), (26, 27, 28, 30, 32), (33, 34, ...), ... Sequence gives the number of terms in each group.

The programs for A074126, there is no canonical definition to state claims against.
-/

/-! ## A074126.P138320063349081299

`Δ[A022447(A074125(1+n))]`
-/

namespace A074126.P138320063349081299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A074125 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074126.P138320063349081299

/-!
# A074127: Group the composite numbers so that the sum of the n-th group is a multiple of the n-th prime: (4), (6), (8, 9, 10, 12, 14, 15, 16, 18, 20, 21, 22), (24, 25), (26, 27, 28, 30, 32), (33, 34, ...), ... Sequence gives the group sum divided by n-th prime for the n-th group.

The programs for A074127, there is no canonical definition to state claims against.
-/

/-! ## A074127.P13241713233999147336

`A074124(n+1)/Δ[A007504(n)]`
-/

namespace A074127.P13241713233999147336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074124 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A074127.P13241713233999147336

/-! ## A074127.P15593693544785858749

`A074124(n+1)/A000040(n+1)`
-/

namespace A074127.P15593693544785858749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074124 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A074127.P15593693544785858749

/-! ## A074127.P5186215640057405091

`A074124(n+1)/A008472(A030078(n+1))`
-/

namespace A074127.P5186215640057405091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074124 (n + 1) : ℚ) / (A008472 (A030078 (n + 1)).toNat : ℚ)

end

end A074127.P5186215640057405091

/-!
# A074128: Group successively larger prime numbers so that the sum of the n-th group is a multiple of n. Sequence gives the sum for each group.

The programs for A074128, there is no canonical definition to state claims against.
-/

/-! ## A074128.P11038473255434948975

`(n+1)*A074131(n+1)`
-/

namespace A074128.P11038473255434948975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074131 (n + 1)

end

end A074128.P11038473255434948975

/-! ## A074128.P7782511757069925725

`(n+1)/A074131(n+1)^A008683(A003629(n+1))`
-/

namespace A074128.P7782511757069925725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A074131 (n + 1) : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A074128.P7782511757069925725

/-! ## A074128.P4191138893904585342

`Δ[A066911(A074129(n+1))]`
-/

namespace A074128.P4191138893904585342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A074129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074128.P4191138893904585342

/-! ## A074128.P16187482700806410227

`A074131(A077168(n))*A077168(n)`
-/

namespace A074128.P16187482700806410227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074131 (A077168 n).toNat * A077168 n

end

end A074128.P16187482700806410227

/-!
# A074129: Group successively larger prime numbers so that the sum of the n-th group is a multiple of n. Sequence gives the first term of each group.

The programs for A074129, there is no canonical definition to state claims against.
-/

/-! ## A074129.P1292500485465845851

`p?[A018687(n+1)+A004524(n)]`
-/

namespace A074129.P1292500485465845851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018687 (n + 1) + A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074129.P1292500485465845851

/-!
# A074130: Group successively larger prime numbers so that the sum of the n-th group is a multiple of n. Sequence gives the number of prime in each group.

The programs for A074130, there is no canonical definition to state claims against.
-/

/-! ## A074130.P12170426830051150830

`Δ[A000720(A074129(1+n))]`
-/

namespace A074130.P12170426830051150830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A074129 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074130.P12170426830051150830

/-!
# A074131: Group successively larger prime numbers so that the sum of the n-th group is a multiple of n. Sequence gives the group sum divided by n for the n-th group.

The programs for A074131, there is no canonical definition to state claims against.
-/

/-! ## A074131.P15767091016638441332

`A074128(n+1)/(n+1)`
-/

namespace A074131.P15767091016638441332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074128 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A074131.P15767091016638441332

/-! ## A074131.P5357740444718181145

`Δ[A066911(A074129(n+1))]/(n+1)`
-/

namespace A074131.P5357740444718181145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (A074129 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A074131.P5357740444718181145

/-! ## A074131.P14471355623279813524

`floor(A074128(A077168(n))/A077168(n))`
-/

namespace A074131.P14471355623279813524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074128 (A077168 n).toNat : ℚ) / (A077168 n : ℚ)⌋

end

end A074131.P14471355623279813524

/-!
# A074132: Row sums of triangle A074135.

The programs for A074132, the canonical program `A074132.P6295191419457740670` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074132 has offset 1).

The definition of A074132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074132.P6485012177074582469

`(1+n)*A074133(n+1)`
-/

namespace A074132.P6485012177074582469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A074133 (n + 1)

end

end A074132.P6485012177074582469

namespace A074132

/-- `(1+n)*A074133(n+1)` -/
def P6485012177074582469.Spec : Prop :=
  ∀ n, P6485012177074582469.a n = A074132 (n + 1)

end A074132

/-! ## A074132.P6295191419457740670

`(n+1)*∑[A003188(A171960(n))%2+n]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074132

/-- `(n+1)*∑[A003188(A171960(n))%2+n]` -/
def P6295191419457740670.Spec : Prop :=
  ∀ n, P6295191419457740670.a n = A074132 (n + 1)

theorem P6295191419457740670.correct : P6295191419457740670.Spec := by
  intro n
  simp only [A074132, Nat.add_sub_cancel]

end A074132

/-! ## A074132.P18176748799068522446

`A074133(A080513(2*n))*A080513(2*n)`
-/

namespace A074132.P18176748799068522446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074133 (A080513 (2 * n)).toNat * A080513 (2 * n)

end

end A074132.P18176748799068522446

namespace A074132

/-- `A074133(A080513(2*n))*A080513(2*n)` -/
def P18176748799068522446.Spec : Prop :=
  ∀ n, P18176748799068522446.a n = A074132 (n + 1)

end A074132

/-! ## A074132.P14078702203499587395

`(n+1)*A115384(A187829(n+1)²)`
-/

namespace A074132.P14078702203499587395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A115384 (A187829 (n + 1) ^ 2).toNat

end

end A074132.P14078702203499587395

namespace A074132

/-- `(n+1)*A115384(A187829(n+1)²)` -/
def P14078702203499587395.Spec : Prop :=
  ∀ n, P14078702203499587395.a n = A074132 (n + 1)

end A074132

/-! ## A074132.P12320646980061241582

`(n+1)*∑[A003188(A008998(n))%2+n]`
-/

namespace A074132.P12320646980061241582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A008998 n).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074132.P12320646980061241582

namespace A074132

/-- `(n+1)*∑[A003188(A008998(n))%2+n]` -/
def P12320646980061241582.Spec : Prop :=
  ∀ n, P12320646980061241582.a n = A074132 (n + 1)

end A074132

/-!
# A074133: Average of the n-th group, if positive integers are rearranged in groups of k=1,2,3,... numbers whose sum is a multiple of k.

The programs for A074133, the canonical program `A074133.P15112670593807680285` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074133 has offset 1).

The definition of A074133 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074132, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A074133.P15112670593807680285

`A074132(n+1)/(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A074133

/-- `A074132(n+1)/(n+1)` -/
def P15112670593807680285.Spec : Prop :=
  ∀ n, P15112670593807680285.a n = (A074133 (n + 1) : ℚ)

end A074133

/-! ## A074133.P2611701329226154818

`∑[A003188(A171960(n))%2+n]`
-/

namespace A074133.P2611701329226154818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A171960 n).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074133.P2611701329226154818

namespace A074133

/-- `∑[A003188(A171960(n))%2+n]` -/
def P2611701329226154818.Spec : Prop :=
  ∀ n, P2611701329226154818.a n = A074133 (n + 1)

end A074133

/-! ## A074133.P1087616044733486720

`record[A074132(A141256(n))/A141256(n)]`
-/

namespace A074133.P1087616044733486720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074132 (A141256 n).toNat : ℚ) / (A141256 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074133.P1087616044733486720

namespace A074133

/-- `record[A074132(A141256(n))/A141256(n)]` -/
def P1087616044733486720.Spec : Prop :=
  ∀ n, P1087616044733486720.a n = (A074133 (n + 1) : ℚ)

end A074133

/-! ## A074133.P1749695312820649407

`record[A074132(A065648(n))/A065648(n)]`
-/

namespace A074133.P1749695312820649407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074132 (A065648 n).toNat : ℚ) / (A065648 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074133.P1749695312820649407

namespace A074133

/-- `record[A074132(A065648(n))/A065648(n)]` -/
def P1749695312820649407.Spec : Prop :=
  ∀ n, P1749695312820649407.a n = (A074133 (n + 1) : ℚ)

end A074133

/-! ## A074133.P7418162405255642174

`or(A000982(n+1), A014577(A261050(n)))`
-/

namespace A074133.P7418162405255642174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000982 (n + 1)) (A014577 (A261050 n).toNat)

end

end A074133.P7418162405255642174

namespace A074133

/-- `or(A000982(n+1), A014577(A261050(n)))` -/
def P7418162405255642174.Spec : Prop :=
  ∀ n, P7418162405255642174.a n = A074133 (n + 1)

end A074133

/-!
# A074134: First column of triangle A074135.

The programs for A074134, the canonical program `A074134.P14482655219537014998` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074134 has offset 1).

The definition of A074134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074134.P8451254459334298553

`∑[floor(acot(A256293(n)-1)+n)]`
-/

namespace A074134.P8451254459334298553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A256293 n - 1 : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074134.P8451254459334298553

namespace A074134

/-- `∑[floor(acot(A256293(n)-1)+n)]` -/
def P8451254459334298553.Spec : Prop :=
  ∀ n, P8451254459334298553.a n = A074134 (n + 1)

end A074134

/-! ## A074134.P14482655219537014998

`A113047(A008619(n))+∑[n]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074134

/-- `A113047(A008619(n))+∑[n]` -/
def P14482655219537014998.Spec : Prop :=
  ∀ n, P14482655219537014998.a n = A074134 (n + 1)

theorem P14482655219537014998.correct : P14482655219537014998.Spec := by
  intro n
  simp only [A074134, Nat.add_sub_cancel]

end A074134

/-! ## A074134.P7799386831986207446

`A065333(or(1, n+2))+∑[n]`
-/

namespace A074134.P7799386831986207446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (Nat.lor 1 (n + 2)) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074134.P7799386831986207446

namespace A074134

/-- `A065333(or(1, n+2))+∑[n]` -/
def P7799386831986207446.Spec : Prop :=
  ∀ n, P7799386831986207446.a n = A074134 (n + 1)

end A074134

/-! ## A074134.P17870135422814788424

`∑[n]+val(A014963(or(1, n+2)), 3)`
-/

namespace A074134.P17870135422814788424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.valuation (A014963 (Nat.lor 1 (n + 2))).toNat 3

end

end A074134.P17870135422814788424

namespace A074134

/-- `∑[n]+val(A014963(or(1, n+2)), 3)` -/
def P17870135422814788424.Spec : Prop :=
  ∀ n, (P17870135422814788424.a n : ℤ) = A074134 (n + 1)

end A074134

/-! ## A074134.P12425555291762286251

`A128760(A109613(n)+1)+∑[n]`
-/

namespace A074134.P12425555291762286251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 (A109613 n + 1).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074134.P12425555291762286251

namespace A074134

/-- `A128760(A109613(n)+1)+∑[n]` -/
def P12425555291762286251.Spec : Prop :=
  ∀ n, P12425555291762286251.a n = A074134 (n + 1)

end A074134

/-! ## A074134.P17343838011857626501

`A074135(∑[n]+1)`
-/

namespace A074134.P17343838011857626501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074134.P17343838011857626501

namespace A074134

/-- `A074135(∑[n]+1)` -/
def P17343838011857626501.Spec : Prop :=
  ∀ n, P17343838011857626501.a n = A074134 (n + 1)

end A074134

/-!
# A074135: Triangle read by rows: for 1 <= k < n, a(n, k) is the least positive integer not already used. a(n, n) is the least positive integer not already used that makes the row sum a multiple of n.

The programs for A074135, there is no canonical definition to state claims against.
-/

/-! ## A074135.P5250385440333458863

`A137512(or(A137513(n+1), A344154(n+1)))`
-/

namespace A074135.P5250385440333458863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (Int.lor (A137513 (n + 1)) (A344154 (n + 1))).toNat

end

end A074135.P5250385440333458863

/-!
# A074136: Main diagonal of triangle A074135.

The programs for A074136, the canonical program `A074136.P12410601121504154144` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074136 has offset 1).

The definition of A074136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074136.P12410601121504154144

`∑[n+1]+a(n-1)%(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074136

/-- `∑[n+1]+a(n-1)%(n+1)` -/
def P12410601121504154144.Spec : Prop :=
  ∀ n, (P12410601121504154144.a n : ℤ) = A074136 (n + 1)

theorem P12410601121504154144.correct : P12410601121504154144.Spec := by
  intro n
  simp only [A074136, Nat.add_sub_cancel]

end A074136

/-! ## A074136.P8576863547798247230

`A008344(ceil(n/2)+1)+∑[n+1]`
-/

namespace A074136.P8576863547798247230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008344 (⌈(n : ℚ) / 2⌉ + 1).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074136.P8576863547798247230

namespace A074136

/-- `A008344(ceil(n/2)+1)+∑[n+1]` -/
def P8576863547798247230.Spec : Prop :=
  ∀ n, P8576863547798247230.a n = A074136 (n + 1)

end A074136

/-! ## A074136.P8759160143426979560

`A082017(n+1)+A082018(n+1)-A074134(n+1)`
-/

namespace A074136.P8759160143426979560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082017 (n + 1) + (A082018 (n + 1) - A074134 (n + 1))

end

end A074136.P8759160143426979560

namespace A074136

/-- `A082017(n+1)+A082018(n+1)-A074134(n+1)` -/
def P8759160143426979560.Spec : Prop :=
  ∀ n, P8759160143426979560.a n = A074136 (n + 1)

end A074136

/-! ## A074136.P14989726085291373762

`∑[Δ[A085059(A110654(n+1))]+n+1]`
-/

namespace A074136.P14989726085291373762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085059 (A110654 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074136.P14989726085291373762

namespace A074136

/-- `∑[Δ[A085059(A110654(n+1))]+n+1]` -/
def P14989726085291373762.Spec : Prop :=
  ∀ n, P14989726085291373762.a n = A074136 (n + 1)

end A074136

/-! ## A074136.P9185200014898418316

`A074135(∑[n+1])`
-/

namespace A074136.P9185200014898418316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074136.P9185200014898418316

namespace A074136

/-- `A074135(∑[n+1])` -/
def P9185200014898418316.Spec : Prop :=
  ∀ n, P9185200014898418316.a n = A074136 (n + 1)

end A074136

/-! ## A074136.P15153397403229154653

`∑[2*(n+1)]-A333068(n+1)`
-/

namespace A074136.P15153397403229154653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A333068 (n + 1)

end

end A074136.P15153397403229154653

namespace A074136

/-- `∑[2*(n+1)]-A333068(n+1)` -/
def P15153397403229154653.Spec : Prop :=
  ∀ n, P15153397403229154653.a n = A074136 (n + 1)

end A074136

/-! ## A074136.P10495122958414462328

`A038722(A333068(n+1))+n`
-/

namespace A074136.P10495122958414462328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A333068 (n + 1)).toNat + (n : ℤ)

end

end A074136.P10495122958414462328

namespace A074136

/-- `A038722(A333068(n+1))+n` -/
def P10495122958414462328.Spec : Prop :=
  ∀ n, P10495122958414462328.a n = A074136 (n + 1)

end A074136

/-! ## A074136.P2167586512238856121

`A061579(A333068(n+1)+1+n)`
-/

namespace A074136.P2167586512238856121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A333068 (n + 1) + 1 + (n : ℤ)).toNat

end

end A074136.P2167586512238856121

namespace A074136

/-- `A061579(A333068(n+1)+1+n)` -/
def P2167586512238856121.Spec : Prop :=
  ∀ n, P2167586512238856121.a n = A074136 (n + 1)

end A074136

/-! ## A074136.P6739389631538692992

`A028387(n)+1-A333068(n+1)`
-/

namespace A074136.P6739389631538692992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (1 - A333068 (n + 1))

end

end A074136.P6739389631538692992

namespace A074136

/-- `A028387(n)+1-A333068(n+1)` -/
def P6739389631538692992.Spec : Prop :=
  ∀ n, P6739389631538692992.a n = A074136 (n + 1)

end A074136

/-! ## A074136.P12679054963298708011

`A000217(n+1)+A000217(n+1)-A333068(n+1)`
-/

namespace A074136.P12679054963298708011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 (n + 1) - A333068 (n + 1))

end

end A074136.P12679054963298708011

namespace A074136

/-- `A000217(n+1)+A000217(n+1)-A333068(n+1)` -/
def P12679054963298708011.Spec : Prop :=
  ∀ n, P12679054963298708011.a n = A074136 (n + 1)

end A074136

/-!
# A074137: a(1) = 1; then append numbers greater than the previous term so that the n-th term a(n) divides the sum of next a(n) terms.

The programs for A074137, there is no canonical definition to state claims against.
-/

/-! ## A074137.P15682969924669908142

`eq[char[A074138(n+1)], A151933(n)]`
-/

namespace A074137.P15682969924669908142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074138 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074137.P15682969924669908142

/-! ## A074137.P5487655331412827548

`lt[char[A074138(n+1)], n/A145175(n)]`
-/

namespace A074137.P5487655331412827548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074138 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A145175 (n + 10) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A074137.P5487655331412827548

/-! ## A074137.P1174038852348868440

`lt[A225812(3*n+1), A098670(n+1)]+1`
-/

namespace A074137.P1174038852348868440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225812 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074137.P1174038852348868440

/-! ## A074137.P261881771300293166

`eq[char[A074138(n+1)], A151622(n)]`
-/

namespace A074137.P261881771300293166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074138 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074137.P261881771300293166

/-! ## A074137.P4224413675374861084

`lt[A217020(n+2), A217367(2*n)]`
-/

namespace A074137.P4224413675374861084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217020 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217367 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074137.P4224413675374861084

/-!
# A074138: Numbers which are not members of A074137.

The programs for A074138, there is no canonical definition to state claims against.
-/

/-! ## A074138.P3957594668056453326

`comp[A074137(n+1)-1]+1`
-/

namespace A074138.P3957594668056453326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074137 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A074138.P3957594668056453326

/-! ## A074138.P10097344685629847178

`eq[char[A074137(n+1)], A151933(n)]`
-/

namespace A074138.P10097344685629847178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074137 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A074138.P10097344685629847178

/-! ## A074138.P493656109455977970

`lt[char[A074137(n+1)], n/A145175(n)]`
-/

namespace A074138.P493656109455977970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074137 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A145175 (n + 10) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A074138.P493656109455977970

/-! ## A074138.P17887067210646868819

`lt[A125636(n+1), A002144(A186754(n+4))]`
-/

namespace A074138.P17887067210646868819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (A186754 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074138.P17887067210646868819

/-!
# A074139: Number of divisors of A036035(n,k).

The programs for A074139, there is no canonical definition to state claims against.
-/

/-! ## A074139.P15981358764341348488

`A000005(A036035(n))`
-/

namespace A074139.P15981358764341348488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036035 n).toNat

end

end A074139.P15981358764341348488

/-! ## A074139.P3027049418001800884

`A238958(n)+A238957(n)`
-/

namespace A074139.P3027049418001800884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238958 n + A238957 n

end

end A074139.P3027049418001800884

/-! ## A074139.P15270248958156692979

`A064553(A185974(n))`
-/

namespace A074139.P15270248958156692979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A185974 n).toNat

end

end A074139.P15270248958156692979

/-! ## A074139.P8102027969823894135

`A329605(A334434(n))`
-/

namespace A074139.P8102027969823894135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329605 (A334434 n).toNat

end

end A074139.P8102027969823894135

/-! ## A074139.P6665344825286424918

`A003963(A000265(A344122(n+2)))`
-/

namespace A074139.P6665344825286424918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A000265 (A344122 (n + 2)).toNat).toNat

end

end A074139.P6665344825286424918

/-! ## A074139.P6878590480253045361

`A003963(A344122(n+2)/4)`
-/

namespace A074139.P6878590480253045361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((A344122 (n + 2) : ℚ) / 4)).toNat

end

end A074139.P6878590480253045361

/-! ## A074139.P6533599671973589808

`∏{e}[A059901(n), #+1]`
-/

namespace A074139.P6533599671973589808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A074139.P6533599671973589808

/-! ## A074139.P784813802863029984

`A355026(n)%record[A355066(n+2)]`
-/

namespace A074139.P784813802863029984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355066 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355026 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A074139.P784813802863029984

/-!
# A074140: Sum of least integers of prime signatures over all partitions of n.

The programs for A074140, there is no canonical definition to state claims against.
-/

/-! ## A074140.P5140407937132430210

`A222251(A172109(n+1))+A052841(n)`
-/

namespace A074140.P5140407937132430210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A172109 (n + 1)).toNat + A052841 n

end

end A074140.P5140407937132430210

/-!
# A074141: Sum of products of parts increased by 1 in all partitions of n.

The programs for A074141, there is no canonical definition to state claims against.
-/

/-! ## A074141.P5705588683649658701

`A368091(C(2*n+1, 2)+n)`
-/

namespace A074141.P5705588683649658701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368091 (Nat.choose (2 * n + 1) 2 + n)

end

end A074141.P5705588683649658701

/-! ## A074141.P10151459256804776309

`A079308(∑[n]+1)/2`
-/

namespace A074141.P10151459256804776309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079308 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A074141.P10151459256804776309

/-! ## A074141.P2904517529454771200

`record[A079308(n+1)/2]`
-/

namespace A074141.P2904517529454771200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079308 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074141.P2904517529454771200

/-! ## A074141.P7368583282019126949

`A368091(∑[4*n])`
-/

namespace A074141.P7368583282019126949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368091 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074141.P7368583282019126949

/-! ## A074141.P11217092919557038448

`A261718(∑[n+3])`
-/

namespace A074141.P11217092919557038448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074141.P11217092919557038448

/-! ## A074141.P16056080730669192778

`record[A261718(A027379(A057979(n)))]`
-/

namespace A074141.P16056080730669192778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A027379 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074141.P16056080730669192778

/-! ## A074141.P11377566223341278983

`record[A261718(A027379(A106249(n)))]`
-/

namespace A074141.P11377566223341278983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A027379 (A106249 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074141.P11377566223341278983

/-! ## A074141.P4638654677196905697

`record[A261718(A027379(A324105(n+1)))]`
-/

namespace A074141.P4638654677196905697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 (A027379 (A324105 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074141.P4638654677196905697

/-! ## A074141.P4186435333040282612

`A209666(A089071(n+1))`
-/

namespace A074141.P4186435333040282612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209666 (A089071 (n + 1)).toNat

end

end A074141.P4186435333040282612

/-!
# A074143: a(1) = 1; a(n) = n * Sum_{k=1..n-1} a(k).

The programs for A074143, the canonical program `A074143.P3675676496706827447` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074143 has offset 1).

The definition of A074143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074143.P3675676496706827447

`(n+1)*ceil((n+1)!/2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074143

/-- `(n+1)*ceil((n+1)!/2)` -/
def P3675676496706827447.Spec : Prop :=
  ∀ n, P3675676496706827447.a n = A074143 (n + 1)

theorem P3675676496706827447.correct : P3675676496706827447.Spec := by
  intro n
  simp only [A074143, Nat.add_sub_cancel]

end A074143

/-! ## A074143.P17254282016251105882

`(n+3)*a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A074143.P17254282016251105882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9] fun n a =>
  (n + 3 : ℤ) * a (n - 1) - (n : ℤ) * a (n - 2)

end

end A074143.P17254282016251105882

namespace A074143

/-- `(n+3)*a(n-1)-n*a(n-2)` -/
def P17254282016251105882.Spec : Prop :=
  ∀ n, P17254282016251105882.a n = A074143 (n + 1)

end A074143

/-! ## A074143.P8836282006129858456

`(n+1)*A001710(n+1)`
-/

namespace A074143.P8836282006129858456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001710 (n + 1)

end

end A074143.P8836282006129858456

namespace A074143

/-- `(n+1)*A001710(n+1)` -/
def P8836282006129858456.Spec : Prop :=
  ∀ n, P8836282006129858456.a n = A074143 (n + 1)

end A074143

/-! ## A074143.P3447944430186556

`(n+1)²*a(n-1)/n` with `a(0)=1, a(1)=2`
-/

namespace A074143.P3447944430186556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n + 1) ^ 2 : ℚ) * a (n - 1) / (n : ℚ)

end

end A074143.P3447944430186556

namespace A074143

/-- `(n+1)²*a(n-1)/n` -/
def P3447944430186556.Spec : Prop :=
  ∀ n, P3447944430186556.a n = (A074143 (n + 1) : ℚ)

end A074143

/-! ## A074143.P8406279223972164887

`ceil(A001563(n+1)/2)`
-/

namespace A074143.P8406279223972164887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001563 (n + 1) : ℚ) / 2⌉

end

end A074143.P8406279223972164887

namespace A074143

/-- `ceil(A001563(n+1)/2)` -/
def P8406279223972164887.Spec : Prop :=
  ∀ n, P8406279223972164887.a n = A074143 (n + 1)

end A074143

/-! ## A074143.P8540155296187787397

`ceil((n+1)²/2*n!)`
-/

namespace A074143.P8540155296187787397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℚ) / 2 * (Nat.factorial n : ℚ)⌉

end

end A074143.P8540155296187787397

namespace A074143

/-- `ceil((n+1)²/2*n!)` -/
def P8540155296187787397.Spec : Prop :=
  ∀ n, P8540155296187787397.a n = A074143 (n + 1)

end A074143

/-! ## A074143.P8566122714615382700

`round((n+1)²/2*n!)`
-/

namespace A074143.P8566122714615382700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / 2 * (Nat.factorial n : ℚ))

end

end A074143.P8566122714615382700

namespace A074143

/-- `round((n+1)²/2*n!)` -/
def P8566122714615382700.Spec : Prop :=
  ∀ n, P8566122714615382700.a n = A074143 (n + 1)

end A074143

/-! ## A074143.P18374009525035788639

`Δ[floor((n+1)/2*n!)]`
-/

namespace A074143.P18374009525035788639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * (Nat.factorial n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074143.P18374009525035788639

namespace A074143

/-- `Δ[floor((n+1)/2*n!)]` -/
def P18374009525035788639.Spec : Prop :=
  ∀ n, P18374009525035788639.a n = A074143 (n + 1)

end A074143

/-! ## A074143.P16442379556004470206

`Δ[(n+1)*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A074143.P16442379556004470206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A074143.P16442379556004470206

namespace A074143

/-- `Δ[(n+1)*a(n-1)]` -/
def P16442379556004470206.Spec : Prop :=
  ∀ n, P16442379556004470206.a n = A074143 (n + 1)

end A074143

/-! ## A074143.P8772517507707521883

`record[Δ[n*a(n-1)]]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A074143.P8772517507707521883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074143.P8772517507707521883

namespace A074143

/-- `record[Δ[n*a(n-1)]]` -/
def P8772517507707521883.Spec : Prop :=
  ∀ n, P8772517507707521883.a n = A074143 (n + 1)

end A074143

/-!
# A074144: The differences arising in A075275.

The programs for A074144, there is no canonical definition to state claims against.
-/

/-! ## A074144.P4829139628222899832

`A075410(A075275(n+1))`
-/

namespace A074144.P4829139628222899832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075410 (A075275 (n + 1)).toNat

end

end A074144.P4829139628222899832

/-!
# A074147: (2n-1) odd numbers followed by 2n even numbers.

The programs for A074147, the canonical program `A074147.P10637095346269023434` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074147 has offset 1).

The definition of A074147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074147.P15147608282300508069

`A116941(n)+1`
-/

namespace A074147.P15147608282300508069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116941 n + 1

end

end A074147.P15147608282300508069

namespace A074147

/-- `A116941(n)+1` -/
def P15147608282300508069.Spec : Prop :=
  ∀ n, P15147608282300508069.a n = A074147 (n + 1)

theorem P15147608282300508069.correct : P15147608282300508069.Spec := by
  intro n
  simp only [A074147, Nat.add_sub_cancel, A074147.P15147608282300508069.a, A074147.P10637095346269023434.a, A061925, A061925.P12870392969338772725.a, A116941, A116941.P12886605417078057976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A074147

/-! ## A074147.P10637095346269023434

`A061925(row(n))+2*col(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074147

/-- `A061925(row(n))+2*col(n)` -/
def P10637095346269023434.Spec : Prop :=
  ∀ n, P10637095346269023434.a n = A074147 (n + 1)

theorem P10637095346269023434.correct : P10637095346269023434.Spec := by
  intro n
  simp only [A074147, Nat.add_sub_cancel]

end A074147

/-! ## A074147.P2119550860388449642

`n-ceil(∑[char[∑[n]]]²/2)+n+2`
-/

namespace A074147.P2119550860388449642
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌈(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2⌉ + (n + 2 : ℤ)

end

end A074147.P2119550860388449642

namespace A074147

/-- `n-ceil(∑[char[∑[n]]]²/2)+n+2` -/
def P2119550860388449642.Spec : Prop :=
  ∀ n, P2119550860388449642.a n = A074147 (n + 1)

end A074147

/-! ## A074147.P7997719059614469365

`ceil((n²+(n+1)²)/(row(n)+1)²)`
-/

namespace A074147.P7997719059614469365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 + (n + 1) ^ 2 : ℚ) / ((SequenceMachineLib.triRow n + 1) ^ 2 : ℚ)⌉

end

end A074147.P7997719059614469365

namespace A074147

/-- `ceil((n²+(n+1)²)/(row(n)+1)²)` -/
def P7997719059614469365.Spec : Prop :=
  ∀ n, P7997719059614469365.a n = A074147 (n + 1)

end A074147

/-! ## A074147.P12488486586248132664

`∑[T(n-2,k)+T(n-1,k-1)+(2-T(n-1,k-1))*col(n)-T(n-1,k+1)]` with `a(0)=1, a(1)=1`
-/

namespace A074147.P12488486586248132664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  SequenceMachineLib.triUp2 f1 n + SequenceMachineLib.triUpLeft f1 n + (2 - SequenceMachineLib.triUpLeft f1 n) * (SequenceMachineLib.triCol n : ℤ) - SequenceMachineLib.triUpRight f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074147.P12488486586248132664

namespace A074147

/-- `∑[T(n-2,k)+T(n-1,k-1)+(2-T(n-1,k-1))*col(n)-T(n-1,k+1)]` -/
def P12488486586248132664.Spec : Prop :=
  ∀ n, P12488486586248132664.a n = A074147 (n + 1)

end A074147

/-! ## A074147.P16699189592433911745

`ceil(((2*n+1)/A002024(n+1))²/2)`
-/

namespace A074147.P16699189592433911745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1 : ℚ) / (A002024 (n + 1) : ℚ)) ^ 2 / 2⌉

end

end A074147.P16699189592433911745

namespace A074147

/-- `ceil(((2*n+1)/A002024(n+1))²/2)` -/
def P16699189592433911745.Spec : Prop :=
  ∀ n, P16699189592433911745.a n = A074147 (n + 1)

end A074147

/-! ## A074147.P11185463686917895007

`A109857(A038722(n+1))`
-/

namespace A074147.P11185463686917895007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109857 (A038722 (n + 1)).toNat

end

end A074147.P11185463686917895007

namespace A074147

/-- `A109857(A038722(n+1))` -/
def P11185463686917895007.Spec : Prop :=
  ∀ n, P11185463686917895007.a n = A074147 (n + 1)

end A074147

/-! ## A074147.P7048218824427980404

`A008619(3*n+1-A061579(n))`
-/

namespace A074147.P7048218824427980404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ((3 * n + 1 : ℤ) - A061579 n).toNat

end

end A074147.P7048218824427980404

namespace A074147

/-- `A008619(3*n+1-A061579(n))` -/
def P7048218824427980404.Spec : Prop :=
  ∀ n, P7048218824427980404.a n = A074147 (n + 1)

end A074147

/-! ## A074147.P17177202326102704876

`A008619(A005408(n)-A114327(n))`
-/

namespace A074147.P17177202326102704876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005408 n - A114327 n).toNat

end

end A074147.P17177202326102704876

namespace A074147

/-- `A008619(A005408(n)-A114327(n))` -/
def P17177202326102704876.Spec : Prop :=
  ∀ n, P17177202326102704876.a n = A074147 (n + 1)

end A074147

/-! ## A074147.P15789475455652259508

`A073898(A083197(n+1))`
-/

namespace A074147.P15789475455652259508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (A083197 (n + 1)).toNat

end

end A074147.P15789475455652259508

namespace A074147

/-- `A073898(A083197(n+1))` -/
def P15789475455652259508.Spec : Prop :=
  ∀ n, P15789475455652259508.a n = A074147 (n + 1)

end A074147

/-!
# A074148: a(n) = n + floor(n^2/2).

The programs for A074148, the canonical program `A074148.P3638171255618992210` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074148 has offset 1).

The definition of A074148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor((n+1)²/2)` (program `A074148.P3638171255618992210`, by `A074148.P3638171255618992210.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A074148.P7662557628428658131

`ogf((1+2x-x^2)/(1-2x+2x^3-x^4))`
-/

namespace A074148.P7662557628428658131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -2, 0, 2, -1] n

end

end A074148.P7662557628428658131

namespace A074148

/-- `ogf((1+2x-x^2)/(1-2x+2x^3-x^4))` -/
def P7662557628428658131.Spec : Prop :=
  ∀ n, P7662557628428658131.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P3638171255618992210

`n+1+floor((n+1)²/2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074148

/-- `n+1+floor((n+1)²/2)` -/
def P3638171255618992210.Spec : Prop :=
  ∀ n, P3638171255618992210.a n = A074148 (n + 1)

theorem P3638171255618992210.correct : P3638171255618992210.Spec := by
  intro n
  simp only [A074148, Nat.add_sub_cancel]

end A074148

/-! ## A074148.P8647415012394585711

`∑[or(1, 1+n)]`
-/

namespace A074148.P8647415012394585711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P8647415012394585711

namespace A074148

/-- `∑[or(1, 1+n)]` -/
def P8647415012394585711.Spec : Prop :=
  ∀ n, (P8647415012394585711.a n : ℤ) = A074148 (n + 1)

end A074148

/-! ## A074148.P14386095099241700184

`∑[2-or(1, -n)]`
-/

namespace A074148.P14386095099241700184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P14386095099241700184

namespace A074148

/-- `∑[2-or(1, -n)]` -/
def P14386095099241700184.Spec : Prop :=
  ∀ n, P14386095099241700184.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P1670919012784368297

`∑[1+n%2+n]`
-/

namespace A074148.P1670919012784368297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (n % 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P1670919012784368297

namespace A074148

/-- `∑[1+n%2+n]` -/
def P1670919012784368297.Spec : Prop :=
  ∀ n, (P1670919012784368297.a n : ℤ) = A074148 (n + 1)

end A074148

/-! ## A074148.P1893635242003796452

`∑[gcd(2, n+1)+n]`
-/

namespace A074148.P1893635242003796452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P1893635242003796452

namespace A074148

/-- `∑[gcd(2, n+1)+n]` -/
def P1893635242003796452.Spec : Prop :=
  ∀ n, (P1893635242003796452.a n : ℤ) = A074148 (n + 1)

end A074148

/-! ## A074148.P6799155906435906035

`∑[and(1, n)+1+n]`
-/

namespace A074148.P6799155906435906035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P6799155906435906035

namespace A074148

/-- `∑[and(1, n)+1+n]` -/
def P6799155906435906035.Spec : Prop :=
  ∀ n, (P6799155906435906035.a n : ℤ) = A074148 (n + 1)

end A074148

/-! ## A074148.P14008347990602364163

`Δ[∑[∑[or(1, n)]]-n]`
-/

namespace A074148.P14008347990602364163
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074148.P14008347990602364163

namespace A074148

/-- `Δ[∑[∑[or(1, n)]]-n]` -/
def P14008347990602364163.Spec : Prop :=
  ∀ n, P14008347990602364163.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P15637656290814674882

`∑[a(n-2)+2]` with `a(0)=1, a(1)=3`
-/

namespace A074148.P15637656290814674882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P15637656290814674882

namespace A074148

/-- `∑[a(n-2)+2]` -/
def P15637656290814674882.Spec : Prop :=
  ∀ n, (P15637656290814674882.a n : ℤ) = A074148 (n + 1)

end A074148

/-! ## A074148.P11451665402289810524

`∑[∑[2-a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A074148.P11451665402289810524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P11451665402289810524

namespace A074148

/-- `∑[∑[2-a(n-1)]]` -/
def P11451665402289810524.Spec : Prop :=
  ∀ n, P11451665402289810524.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P12316600884043449999

`ceil(C(n+2, 2)+n/2)`
-/

namespace A074148.P12316600884043449999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 : ℚ) + (n : ℚ) / 2⌉

end

end A074148.P12316600884043449999

namespace A074148

/-- `ceil(C(n+2, 2)+n/2)` -/
def P12316600884043449999.Spec : Prop :=
  ∀ n, P12316600884043449999.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P12132134301081300193

`round(C(n+2, 2)+n/2)`
-/

namespace A074148.P12132134301081300193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 2 : ℚ) + (n : ℚ) / 2)

end

end A074148.P12132134301081300193

namespace A074148

/-- `round(C(n+2, 2)+n/2)` -/
def P12132134301081300193.Spec : Prop :=
  ∀ n, P12132134301081300193.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P17252291516316199812

`∑[2-(and(1, n-1)-n)]`
-/

namespace A074148.P17252291516316199812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.land 1 ((n : ℤ) - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P17252291516316199812

namespace A074148

/-- `∑[2-(and(1, n-1)-n)]` -/
def P17252291516316199812.Spec : Prop :=
  ∀ n, P17252291516316199812.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P11851782436357731858

`∑[2-(or(1, n)-2*n)]`
-/

namespace A074148.P11851782436357731858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.lor 1 n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P11851782436357731858

namespace A074148

/-- `∑[2-(or(1, n)-2*n)]` -/
def P11851782436357731858.Spec : Prop :=
  ∀ n, P11851782436357731858.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P10178739351765557325

`∑[(xor(1, n+3)+n)/2]`
-/

namespace A074148.P10178739351765557325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 3) + n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P10178739351765557325

namespace A074148

/-- `∑[(xor(1, n+3)+n)/2]` -/
def P10178739351765557325.Spec : Prop :=
  ∀ n, P10178739351765557325.a n = (A074148 (n + 1) : ℚ)

end A074148

/-! ## A074148.P4596241982790812573

`record[floor(((2-n)²-1)/2)]`
-/

namespace A074148.P4596241982790812573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 - (n : ℤ)) ^ 2 - 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074148.P4596241982790812573

namespace A074148

/-- `record[floor(((2-n)²-1)/2)]` -/
def P4596241982790812573.Spec : Prop :=
  ∀ n, P4596241982790812573.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P18088295681491843821

`ceil(record[(2-n)²/2-1])`
-/

namespace A074148.P18088295681491843821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 : ℚ) / 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A074148.P18088295681491843821

namespace A074148

/-- `ceil(record[(2-n)²/2-1])` -/
def P18088295681491843821.Spec : Prop :=
  ∀ n, P18088295681491843821.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P8489661198881016532

`round(record[(2-n)²/2-1])`
-/

namespace A074148.P8489661198881016532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 : ℚ) / 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A074148.P8489661198881016532

namespace A074148

/-- `round(record[(2-n)²/2-1])` -/
def P8489661198881016532.Spec : Prop :=
  ∀ n, P8489661198881016532.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P2135797413280145032

`∑[n-(gcd(n, n-2)-3)]`
-/

namespace A074148.P2135797413280145032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Int.gcd (n : ℤ) ((n : ℤ) - 2) : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P2135797413280145032

namespace A074148

/-- `∑[n-(gcd(n, n-2)-3)]` -/
def P2135797413280145032.Spec : Prop :=
  ∀ n, P2135797413280145032.a n = A074148 (n + 1)

end A074148

/-! ## A074148.P12670840618995830951

`∑[n+2-C(n, lcm(2, n))]`
-/

namespace A074148.P12670840618995830951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.choose n (Nat.lcm 2 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074148.P12670840618995830951

namespace A074148

/-- `∑[n+2-C(n, lcm(2, n))]` -/
def P12670840618995830951.Spec : Prop :=
  ∀ n, P12670840618995830951.a n = A074148 (n + 1)

end A074148

/-!
# A074149: Sum of terms in each group in A074147.

The programs for A074149, the canonical program `A074149.P157135183158828516` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074149 has offset 1).

The definition of A074149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074149.P9738795167365219013

`ogf((1+4x+2x^2+4x^3+x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A074149.P9738795167365219013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 2, 4, 1] [1, -2, -1, 4, -1, -2, 1] n

end

end A074149.P9738795167365219013

namespace A074149

/-- `ogf((1+4x+2x^2+4x^3+x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P9738795167365219013.Spec : Prop :=
  ∀ n, P9738795167365219013.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P157135183158828516

`(n+1)^3/2+(n+1)*(3+(-1)^(n+1))/4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074149

/-- `(n+1)^3/2+(n+1)*(3+(-1)^(n+1))/4` -/
def P157135183158828516.Spec : Prop :=
  ∀ n, P157135183158828516.a n = (A074149 (n + 1) : ℚ)

end A074149

/-! ## A074149.P344153287757081311

`∑[∑[2*lcm(2, n)]+1]`
-/

namespace A074149.P344153287757081311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074149.P344153287757081311

namespace A074149

/-- `∑[∑[2*lcm(2, n)]+1]` -/
def P344153287757081311.Spec : Prop :=
  ∀ n, (P344153287757081311.a n : ℤ) = A074149 (n + 1)

end A074149

/-! ## A074149.P8719329874062065103

`(n+1)*or(1, ∑[or(1, n)])`
-/

namespace A074149.P8719329874062065103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074149.P8719329874062065103

namespace A074149

/-- `(n+1)*or(1, ∑[or(1, n)])` -/
def P8719329874062065103.Spec : Prop :=
  ∀ n, (P8719329874062065103.a n : ℤ) = A074149 (n + 1)

end A074149

/-! ## A074149.P16353530367407875925

`lcm(n+1, or(1, ∑[or(1, n)]))`
-/

namespace A074149.P16353530367407875925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A074149.P16353530367407875925

namespace A074149

/-- `lcm(n+1, or(1, ∑[or(1, n)]))` -/
def P16353530367407875925.Spec : Prop :=
  ∀ n, (P16353530367407875925.a n : ℤ) = A074149 (n + 1)

end A074149

/-! ## A074149.P26421477869734401

`∑[∑[4*gcd(n, ∑[n])]+1]`
-/

namespace A074149.P26421477869734401
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074149.P26421477869734401

namespace A074149

/-- `∑[∑[4*gcd(n, ∑[n])]+1]` -/
def P26421477869734401.Spec : Prop :=
  ∀ n, (P26421477869734401.a n : ℤ) = A074149 (n + 1)

end A074149

/-! ## A074149.P8532094209737547695

`(n+1)*∑[a(n-2)+2]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A074149.P8532094209737547695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074149.P8532094209737547695

namespace A074149

/-- `(n+1)*∑[a(n-2)+2]` -/
def P8532094209737547695.Spec : Prop :=
  ∀ n, (P8532094209737547695.a n : ℤ) = A074149 (n + 1)

end A074149

/-! ## A074149.P16826235690619395210

`(n+1)*∑[∑[2*and(1, n)]]+n+1`
-/

namespace A074149.P16826235690619395210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A074149.P16826235690619395210

namespace A074149

/-- `(n+1)*∑[∑[2*and(1, n)]]+n+1` -/
def P16826235690619395210.Spec : Prop :=
  ∀ n, (P16826235690619395210.a n : ℤ) = A074149 (n + 1)

end A074149

/-! ## A074149.P14294909442005489692

`∑[A319384(n)]`
-/

namespace A074149.P14294909442005489692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074149.P14294909442005489692

namespace A074149

/-- `∑[A319384(n)]` -/
def P14294909442005489692.Spec : Prop :=
  ∀ n, P14294909442005489692.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P6198834519891828365

`∑[∑[A382154(n)]]`
-/

namespace A074149.P6198834519891828365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382154 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074149.P6198834519891828365

namespace A074149

/-- `∑[∑[A382154(n)]]` -/
def P6198834519891828365.Spec : Prop :=
  ∀ n, P6198834519891828365.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P5863185640813410026

`A124350(n+1)/4`
-/

namespace A074149.P5863185640813410026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124350 (n + 1) : ℚ) / 4

end

end A074149.P5863185640813410026

namespace A074149

/-- `A124350(n+1)/4` -/
def P5863185640813410026.Spec : Prop :=
  ∀ n, P5863185640813410026.a n = (A074149 (n + 1) : ℚ)

end A074149

/-! ## A074149.P11549358025627960177

`∑[A062717(n+1)+1]`
-/

namespace A074149.P11549358025627960177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074149.P11549358025627960177

namespace A074149

/-- `∑[A062717(n+1)+1]` -/
def P11549358025627960177.Spec : Prop :=
  ∀ n, P11549358025627960177.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P14391822852469964649

`∑[A354594(n+1)-n]`
-/

namespace A074149.P14391822852469964649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354594 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074149.P14391822852469964649

namespace A074149

/-- `∑[A354594(n+1)-n]` -/
def P14391822852469964649.Spec : Prop :=
  ∀ n, P14391822852469964649.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P8597763792540826673

`(n+1)*A080827(n+1)`
-/

namespace A074149.P8597763792540826673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080827 (n + 1)

end

end A074149.P8597763792540826673

namespace A074149

/-- `(n+1)*A080827(n+1)` -/
def P8597763792540826673.Spec : Prop :=
  ∀ n, P8597763792540826673.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P2844244625815934651

`(n+1)*A099392(n+2)`
-/

namespace A074149.P2844244625815934651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099392 (n + 2)

end

end A074149.P2844244625815934651

namespace A074149

/-- `(n+1)*A099392(n+2)` -/
def P2844244625815934651.Spec : Prop :=
  ∀ n, P2844244625815934651.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P2288736132103870765

`(n+1)*(A061925(n)+n)`
-/

namespace A074149.P2288736132103870765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061925 n + (n : ℤ))

end

end A074149.P2288736132103870765

namespace A074149

/-- `(n+1)*(A061925(n)+n)` -/
def P2288736132103870765.Spec : Prop :=
  ∀ n, P2288736132103870765.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P12976396355089959351

`(n+1)*∑[A131055(n+1)]`
-/

namespace A074149.P12976396355089959351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074149.P12976396355089959351

namespace A074149

/-- `(n+1)*∑[A131055(n+1)]` -/
def P12976396355089959351.Spec : Prop :=
  ∀ n, P12976396355089959351.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P10414405246772497479

`(n+1)*(A000982(n)+1+n)`
-/

namespace A074149.P10414405246772497479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000982 n + 1 + (n : ℤ))

end

end A074149.P10414405246772497479

namespace A074149

/-- `(n+1)*(A000982(n)+1+n)` -/
def P10414405246772497479.Spec : Prop :=
  ∀ n, P10414405246772497479.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P8672681859077026216

`(n+1)*(A074148(n+1)-n)`
-/

namespace A074149.P8672681859077026216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A074148 (n + 1) - (n : ℤ))

end

end A074149.P8672681859077026216

namespace A074149

/-- `(n+1)*(A074148(n+1)-n)` -/
def P8672681859077026216.Spec : Prop :=
  ∀ n, P8672681859077026216.a n = A074149 (n + 1)

end A074149

/-! ## A074149.P1631985445127462212

`lcm(A000027(n+1), A080827(n+1))`
-/

namespace A074149.P1631985445127462212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A080827 (n + 1))

end

end A074149.P1631985445127462212

namespace A074149

/-- `lcm(A000027(n+1), A080827(n+1))` -/
def P1631985445127462212.Spec : Prop :=
  ∀ n, (P1631985445127462212.a n : ℤ) = A074149 (n + 1)

end A074149

/-!
# A074151: Least power of 2 > 2^n with initial digits matching the digits of 2^n.

The programs for A074151, there is no canonical definition to state claims against.
-/

/-! ## A074151.P4064421887726404796

`2^A363873(2^n)`
-/

namespace A074151.P4064421887726404796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A363873 (2 ^ n) : ℤ)

end

end A074151.P4064421887726404796

/-! ## A074151.P4658875121475657241

`A000079(A363873(A000079(n)))`
-/

namespace A074151.P4658875121475657241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A363873 (A000079 n).toNat).toNat

end

end A074151.P4658875121475657241

/-!
# A074153: Smallest n-digit power of n; or 0 if no such number exists.

The programs for A074153, there is no canonical definition to state claims against.
-/

/-! ## A074153.P6472521568242500542

`(n+1)^A000523(A092265(3*n+5))`
-/

namespace A074153.P6472521568242500542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000523 (A092265 (3 * n + 5)).toNat : ℤ)

end

end A074153.P6472521568242500542

/-! ## A074153.P17784741185535591173

`A336358(n+1)^A088519(A097269(n+1))`
-/

namespace A074153.P17784741185535591173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336358 (n + 1) : ℚ) ^ (A088519 (A097269 (n + 1)).toNat : ℤ)

end

end A074153.P17784741185535591173

/-! ## A074153.P6620140726025382290

`A246093(n+1)^A244160(A176509(n+1))`
-/

namespace A074153.P6620140726025382290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246093 (n + 1) : ℚ) ^ (A244160 (A176509 (n + 1)).toNat : ℤ)

end

end A074153.P6620140726025382290

/-! ## A074153.P9437912749592984411

`A373230(n+1)^A072643(A225323(2*(n+1)))`
-/

namespace A074153.P9437912749592984411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373230 (n + 1) : ℚ) ^ (A072643 (A225323 (2 * (n + 1))).toNat : ℤ)

end

end A074153.P9437912749592984411

/-! ## A074153.P9847339175587933530

`A002377(n+1)^A134021(A342528(2*(n+2)))`
-/

namespace A074153.P9847339175587933530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002377 (n + 1) : ℚ) ^ (A134021 (A342528 (2 * (n + 2))).toNat : ℤ)

end

end A074153.P9847339175587933530

/-!
# A074154: Largest n-digit power of n; or 0 if no such number exists.

The programs for A074154, there is no canonical definition to state claims against.
-/

/-! ## A074154.P15702320603901771459

`(n+1)^A075355(A045918(n))`
-/

namespace A074154.P15702320603901771459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A075355 (A045918 n).toNat : ℤ)

end

end A074154.P15702320603901771459

/-! ## A074154.P7198622122758409499

`(n+1)^A075355(A047842(n))`
-/

namespace A074154.P7198622122758409499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A075355 (A047842 n).toNat : ℤ)

end

end A074154.P7198622122758409499

/-! ## A074154.P8470404887403276099

`(n+1)^A075355(A244112(n))`
-/

namespace A074154.P8470404887403276099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A075355 (A244112 n).toNat : ℤ)

end

end A074154.P8470404887403276099

/-! ## A074154.P11911292757529702510

`(n+1)^A195072(A045918(n)+1)`
-/

namespace A074154.P11911292757529702510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A195072 (A045918 n + 1).toNat : ℤ)

end

end A074154.P11911292757529702510

/-! ## A074154.P17551848541125330072

`A002473(n+1)^A095048(A000079(n+4))`
-/

namespace A074154.P17551848541125330072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) ^ (A095048 (A000079 (n + 4)).toNat : ℤ)

end

end A074154.P17551848541125330072

/-!
# A074155: Group the natural numbers so that the product of members of a group is a multiple of the sum: (1),(2,3,4,5,6),(7,8,9),(10,11,12),(13,14,15),(16,17,18),(19,20,21),(22,23,24),.... This is the sequence of the ratio of product /sum.

The programs for A074155, the canonical program `A074155.P15347540932136368247` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074155 has offset 1).

The definition of A074155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074155.P15347540932136368247

`A000567(n)+lcm(A016921(n), A308196(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A074155

/-- `A000567(n)+lcm(A016921(n), A308196(n))` -/
def P15347540932136368247.Spec : Prop :=
  ∀ n, P15347540932136368247.a n = A074155 (n + 1)

theorem P15347540932136368247.correct : P15347540932136368247.Spec := by
  intro n
  simp only [A074155, Nat.add_sub_cancel]

end A074155

/-! ## A074155.P9275018610588449377

`A000567(n+1)+7*(n+1)*A049084(A096726(n))`
-/

namespace A074155.P9275018610588449377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1) + (7 * (n + 1) : ℤ) * A049084 (A096726 n).toNat

end

end A074155.P9275018610588449377

namespace A074155

/-- `A000567(n+1)+7*(n+1)*A049084(A096726(n))` -/
def P9275018610588449377.Spec : Prop :=
  ∀ n, P9275018610588449377.a n = A074155 (n + 1)

end A074155

/-! ## A074155.P8882687550793163380

`A000567(n+1)+A049084(A096726(n))*A159920(n+2)`
-/

namespace A074155.P8882687550793163380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1) + A049084 (A096726 n).toNat * A159920 (n + 2)

end

end A074155.P8882687550793163380

namespace A074155

/-- `A000567(n+1)+A049084(A096726(n))*A159920(n+2)` -/
def P8882687550793163380.Spec : Prop :=
  ∀ n, P8882687550793163380.a n = A074155 (n + 1)

end A074155

/-! ## A074155.P17159268998029658131

`C(Δ[n^3], A014963(A000217(n+1)))+n`
-/

namespace A074155.P17159268998029658131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (A014963 (A000217 (n + 1)).toNat).toNat + n

end

end A074155.P17159268998029658131

namespace A074155

/-- `C(Δ[n^3], A014963(A000217(n+1)))+n` -/
def P17159268998029658131.Spec : Prop :=
  ∀ n, (P17159268998029658131.a n : ℤ) = A074155 (n + 1)

end A074155

/-! ## A074155.P10012983378922996942

`A046092(n)+(n+1)^A000040(A014963(∑[n+1]))`
-/

namespace A074155.P10012983378922996942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046092 n : ℚ) + (n + 1 : ℚ) ^ (A000040 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℤ)

end

end A074155.P10012983378922996942

namespace A074155

/-- `A046092(n)+(n+1)^A000040(A014963(∑[n+1]))` -/
def P10012983378922996942.Spec : Prop :=
  ∀ n, P10012983378922996942.a n = (A074155 (n + 1) : ℚ)

end A074155

/-! ## A074155.P3163139221513614893

`A014963(A000326(n+1))*A003215(n)+n`
-/

namespace A074155.P3163139221513614893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000326 (n + 1)).toNat * A003215 n + (n : ℤ)

end

end A074155.P3163139221513614893

namespace A074155

/-- `A014963(A000326(n+1))*A003215(n)+n` -/
def P3163139221513614893.Spec : Prop :=
  ∀ n, P3163139221513614893.a n = A074155 (n + 1)

end A074155

/-!
# A074156: Smallest multiple of n with initial digits that of the reversal of n, deleting the leading zeros wherever required.

The programs for A074156, there is no canonical definition to state claims against.
-/

/-! ## A074156.P10813567243510173378

`∑{d}[A001273(A006927(n+1)), #*(n+1)]`
-/

namespace A074156.P10813567243510173378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001273 (A006927 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * (n + 1)

end

end A074156.P10813567243510173378

/-! ## A074156.P15182737091170617007

`A193457(A300819(n+1))`
-/

namespace A074156.P15182737091170617007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193457 (A300819 (n + 1)).toNat

end

end A074156.P15182737091170617007

/-! ## A074156.P6868834343853842605

`A107589(A011855(n))+n`
-/

namespace A074156.P6868834343853842605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107589 (A011855 n).toNat + (n : ℤ)

end

end A074156.P6868834343853842605

/-! ## A074156.P3306685786220991559

`A143952(A094665(n))+n`
-/

namespace A074156.P3306685786220991559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143952 (A094665 n).toNat + (n : ℤ)

end

end A074156.P3306685786220991559

/-! ## A074156.P5998182697983581662

`A140734(A206503(n+1))+n`
-/

namespace A074156.P5998182697983581662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140734 (A206503 (n + 1)).toNat + (n : ℤ)

end

end A074156.P5998182697983581662

/-!
# A074157: Smallest multiple of n which uses no digits of n, or 0 if no such number exists.

The programs for A074157, there is no canonical definition to state claims against.
-/

/-! ## A074157.P12335669356411152444

`(n+1)*A378865(n+1)`
-/

namespace A074157.P12335669356411152444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A378865 (n + 1)

end

end A074157.P12335669356411152444

/-! ## A074157.P5048739645033274441

`(n+1)*(A330348(A092524(n+1))+A165596(A085206(n)))`
-/

namespace A074157.P5048739645033274441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A330348 (A092524 (n + 1)).toNat + A165596 (A085206 n).toNat)

end

end A074157.P5048739645033274441

/-! ## A074157.P3567925402674872342

`(n+1)*A195022(A275063(n))`
-/

namespace A074157.P3567925402674872342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A195022 (A275063 n).toNat

end

end A074157.P3567925402674872342

/-! ## A074157.P18262676240160878546

`(n+1)*A084740(A010026(n+2))`
-/

namespace A074157.P18262676240160878546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A084740 (A010026 (n + 2)).toNat

end

end A074157.P18262676240160878546

/-! ## A074157.P14878534149465090231

`A005843(A083116(n+1))%A016969(n)`
-/

namespace A074157.P14878534149465090231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A083116 (n + 1)).toNat) (A016969 n)

end

end A074157.P14878534149465090231

/-!
# A074158: Smallest multiple of n which begins with the concatenation of first n natural numbers.

The programs for A074158, there is no canonical definition to state claims against.
-/

/-! ## A074158.P16015393054739783063

`A007879(A007788(n))*A007908(n+1)`
-/

namespace A074158.P16015393054739783063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007879 (A007788 n).toNat * A007908 (n + 1)

end

end A074158.P16015393054739783063

/-! ## A074158.P17869915011809306294

`A007879(A007788(n))*A035239(n+1)`
-/

namespace A074158.P17869915011809306294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007879 (A007788 n).toNat * A035239 (n + 1)

end

end A074158.P17869915011809306294

/-!
# A074163: Smallest k, not divisible by 10, such that R(k) > n*k, where R(k) is the digit reversal of k (A004086).

The programs for A074163, there is no canonical definition to state claims against.
-/

/-! ## A074163.P13901042150054077757

`A340835((n+1)*A340835((n+5)²))`
-/

namespace A074163.P13901042150054077757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340835 ((n + 1 : ℤ) * A340835 ((n + 5) ^ 2)).toNat

end

end A074163.P13901042150054077757

/-! ## A074163.P13860238793898441446

`A074164(n+1)%(A074148(2*(n+2))+3)`
-/

namespace A074163.P13860238793898441446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074164 (n + 1)) (A074148 (2 * (n + 2)) + 3)

end

end A074163.P13860238793898441446

/-! ## A074163.P6423306944584406022

`A074164(n+1)%A017509(A003064(n))`
-/

namespace A074163.P6423306944584406022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074164 (n + 1)) (A017509 (A003064 n).toNat)

end

end A074163.P6423306944584406022

/-! ## A074163.P9865092677121620965

`lt[A332144(A038550(2*n+3)), A338829(n)]`
-/

namespace A074163.P9865092677121620965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332144 (A038550 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A074163.P9865092677121620965

/-!
# A074164: Smallest k such that R(k) > n*k, where R(k) is the digit reversal of k (A004086) (the reversal of 10 is taken to be 01 = 1, etc.).

The programs for A074164, there is no canonical definition to state claims against.
-/

/-! ## A074164.P11089104303316018501

`A104212(n+1)+A104198(A104138(n))`
-/

namespace A074164.P11089104303316018501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104212 (n + 1) + A104198 (A104138 n).toNat

end

end A074164.P11089104303316018501

/-! ## A074164.P13565191967593212291

`A074163(A074177(n+1))-A008763(n)`
-/

namespace A074164.P13565191967593212291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074163 (A074177 (n + 1)).toNat - A008763 n

end

end A074164.P13565191967593212291

/-!
# A074166: Product of first n palindromes.

The programs for A074166, there is no canonical definition to state claims against.
-/

/-! ## A074166.P5673324814968921427

`∏[A110751(n+1)]`
-/

namespace A074166.P5673324814968921427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074166.P5673324814968921427

/-! ## A074166.P14858384907525604972

`∏[A147882(n+1)]`
-/

namespace A074166.P14858384907525604972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074166.P14858384907525604972

/-! ## A074166.P3273207361388717859

`∏[A227858(n+1)]`
-/

namespace A074166.P3273207361388717859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074166.P3273207361388717859

/-! ## A074166.P12015635577157949443

`∏[A342826(n+1)]`
-/

namespace A074166.P12015635577157949443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074166.P12015635577157949443

/-! ## A074166.P17506158653108574093

`∏[A002113(n+2)]`
-/

namespace A074166.P17506158653108574093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074166.P17506158653108574093

/-! ## A074166.P2494029241093055097

`∏[A240601(n+2)]`
-/

namespace A074166.P2494029241093055097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074166.P2494029241093055097

/-! ## A074166.P2262081062792862028

`∏[A266140(n+2)]`
-/

namespace A074166.P2262081062792862028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266140 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074166.P2262081062792862028

/-! ## A074166.P11694535034669430110

`∏[eq[1, A050782(n)]]`
-/

namespace A074166.P11694535034669430110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074166.P11694535034669430110

/-! ## A074166.P13013281327200347860

`∏[∑[A086862(n+1)]]`
-/

namespace A074166.P13013281327200347860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A074166.P13013281327200347860

/-!
# A074167: Product of prime divisors of composite numbers between consecutive primes.

The programs for A074167, there is no canonical definition to state claims against.
-/

/-! ## A074167.P3117244351773959381

`A076978(A032559(n+1))*A181816(n+1)`
-/

namespace A074167.P3117244351773959381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076978 (A032559 (n + 1)).toNat * A181816 (n + 1)

end

end A074167.P3117244351773959381

/-! ## A074167.P13730874574049028007

`lcm(A076976(A032559(n+1)), A076977(n+1))`
-/

namespace A074167.P13730874574049028007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076976 (A032559 (n + 1)).toNat) (A076977 (n + 1))

end

end A074167.P13730874574049028007

/-! ## A074167.P11603055538254258013

`A355263(A061214(n+1))`
-/

namespace A074167.P11603055538254258013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355263 (A061214 (n + 1)).toNat

end

end A074167.P11603055538254258013

/-! ## A074167.P7469188831031755236

`A022300(A022322(2*(n+1)))*A076978(n+1)`
-/

namespace A074167.P7469188831031755236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (A022322 (2 * (n + 1))).toNat * A076978 (n + 1)

end

end A074167.P7469188831031755236

/-!
# A074169: Number of representations of n as a sum of two primes that are not congruent modulo 3.

The programs for A074169, there is no canonical definition to state claims against.
-/

/-! ## A074169.P13808542417228651881

`A004396(A275768(n+1))+A000007(A178762(n+1))`
-/

namespace A074169.P13808542417228651881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A275768 (n + 1)).toNat + A000007 (A178762 (n + 1)).toNat

end

end A074169.P13808542417228651881

/-! ## A074169.P386562608005254840

`A004396(A275768(n+1))*A010051(A000978(n+1))`
-/

namespace A074169.P386562608005254840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A275768 (n + 1)).toNat * A010051 (A000978 (n + 1)).toNat

end

end A074169.P386562608005254840

/-! ## A074169.P5457203739692384314

`A000035(A188358(n+1))*A004396(A275768(n+1))`
-/

namespace A074169.P5457203739692384314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A188358 (n + 1)).toNat * A004396 (A275768 (n + 1)).toNat

end

end A074169.P5457203739692384314

/-! ## A074169.P18359298409212996049

`A124764(A180196(n+3)+1)`
-/

namespace A074169.P18359298409212996049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A180196 (n + 3) + 1).toNat

end

end A074169.P18359298409212996049

/-! ## A074169.P12419874441508357026

`A125203(or(A007947(n+1), A108700(n+1)))`
-/

namespace A074169.P12419874441508357026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (Int.lor (A007947 (n + 1)) (A108700 (n + 1))).toNat

end

end A074169.P12419874441508357026

/-!
# A074170: Start with 1, add the next number if one gets a prime then add the next number else subtract the next...

The programs for A074170, there is no canonical definition to state claims against.
-/

/-! ## A074170.P7536204435140185267

`A076543(A084192(∑[n]))`
-/

namespace A074170.P7536204435140185267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076543 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A074170.P7536204435140185267

/-! ## A074170.P9403857252788547013

`A076543(A327487(∑[n]))`
-/

namespace A074170.P9403857252788547013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076543 (A327487 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A074170.P9403857252788547013

/-! ## A074170.P6351446083184498346

`A076543(n+1)*A122510(∑[n]+1)`
-/

namespace A074170.P6351446083184498346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076543 (n + 1) * A122510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A074170.P6351446083184498346

/-! ## A074170.P11784368209400357230

`∑[A062157(A347379(n+1))*(n+1)]`
-/

namespace A074170.P11784368209400357230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A347379 (n + 1)).toNat * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074170.P11784368209400357230

/-! ## A074170.P10854460187083673777

`A339872(A076491(n))+A076543(n+1)`
-/

namespace A074170.P10854460187083673777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339872 (A076491 n).toNat + A076543 (n + 1)

end

end A074170.P10854460187083673777

/-!
# A074171: a(1) = 1. For n >= 2, a(n) is either a(n-1)+n or a(n-1)-n; we use the minus sign only if a(n-1) is prime. E.g., since a(2)=3 is prime, a(3)=a(2)-3=0.

The programs for A074171, the canonical program `A074171.P10327579986648501021` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074171 has offset 1).

The definition of A074171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074171.P13045245068164935352

`∑[1-6*char[2]+n]`
-/

namespace A074171.P13045245068164935352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((6 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074171.P13045245068164935352

namespace A074171

/-- `∑[1-6*char[2]+n]` -/
def P13045245068164935352.Spec : Prop :=
  ∀ n, P13045245068164935352.a n = A074171 (n + 1)

end A074171

/-! ## A074171.P1859497724399167633

`∑[n+1]-6*floor(atan(n))`
-/

namespace A074171.P1859497724399167633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 6 * ⌊Real.arctan (n : ℝ)⌋

end

end A074171.P1859497724399167633

namespace A074171

/-- `∑[n+1]-6*floor(atan(n))` -/
def P1859497724399167633.Spec : Prop :=
  ∀ n, P1859497724399167633.a n = A074171 (n + 1)

end A074171

/-! ## A074171.P3690342880485411144

`∑[n+1]-lcm(6, floor(atan(n)))`
-/

namespace A074171.P3690342880485411144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Int.lcm 6 ⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A074171.P3690342880485411144

namespace A074171

/-- `∑[n+1]-lcm(6, floor(atan(n)))` -/
def P3690342880485411144.Spec : Prop :=
  ∀ n, P3690342880485411144.a n = A074171 (n + 1)

end A074171

/-! ## A074171.P10920618973749071533

`gcd(6-∑[n+1], floor(acot(n)))`
-/

namespace A074171.P10920618973749071533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (6 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A074171.P10920618973749071533

namespace A074171

/-- `gcd(6-∑[n+1], floor(acot(n)))` -/
def P10920618973749071533.Spec : Prop :=
  ∀ n, (P10920618973749071533.a n : ℤ) = A074171 (n + 1)

end A074171

/-! ## A074171.P10327579986648501021

`1+a(n-1)+n` with `a(0)=1, a(1)=3, a(2)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074171

/-- `1+a(n-1)+n` -/
def P10327579986648501021.Spec : Prop :=
  ∀ n, (P10327579986648501021.a n : ℤ) = A074171 (n + 1)

theorem P10327579986648501021.correct : P10327579986648501021.Spec := by
  intro n
  simp only [A074171, Nat.add_sub_cancel]

end A074171

/-! ## A074171.P7771320443642653016

`∑[n+1]-3*2%(n+1)`
-/

namespace A074171.P7771320443642653016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((3 * (2 % (n + 1)) : ℕ) : ℤ)

end

end A074171.P7771320443642653016

namespace A074171

/-- `∑[n+1]-3*2%(n+1)` -/
def P7771320443642653016.Spec : Prop :=
  ∀ n, P7771320443642653016.a n = A074171 (n + 1)

end A074171

/-! ## A074171.P17698011949034843554

`2-floor(1-a(n-1)-n)` with `a(0)=1, a(1)=3, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A074171.P17698011949034843554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  2 - (1 - a (n - 1) - (n : ℤ))

end

end A074171.P17698011949034843554

namespace A074171

/-- `2-floor(1-a(n-1)-n)` -/
def P17698011949034843554.Spec : Prop :=
  ∀ n, P17698011949034843554.a n = A074171 (n + 1)

end A074171

/-! ## A074171.P11796996937855205199

`2*n-(n-1-a(n-1))` with `a(0)=1, a(1)=3, a(2)=0`
-/

namespace A074171.P11796996937855205199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - a (n - 1))

end

end A074171.P11796996937855205199

namespace A074171

/-- `2*n-(n-1-a(n-1))` -/
def P11796996937855205199.Spec : Prop :=
  ∀ n, P11796996937855205199.a n = A074171 (n + 1)

end A074171

/-! ## A074171.P4146692666628681123

`A134479(n)%A117951(n)`
-/

namespace A074171.P4146692666628681123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134479 n) (A117951 n)

end

end A074171.P4146692666628681123

namespace A074171

/-- `A134479(n)%A117951(n)` -/
def P4146692666628681123.Spec : Prop :=
  ∀ n, P4146692666628681123.a n = A074171 (n + 1)

end A074171

/-! ## A074171.P13470732868394704322

`A131895(n)%A183199(n+1)`
-/

namespace A074171.P13470732868394704322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131895 n) (A183199 (n + 1))

end

end A074171.P13470732868394704322

namespace A074171

/-- `A131895(n)%A183199(n+1)` -/
def P13470732868394704322.Spec : Prop :=
  ∀ n, P13470732868394704322.a n = A074171 (n + 1)

end A074171

/-! ## A074171.P9178873688666450020

`A126274(n)%A087645(n+2)`
-/

namespace A074171.P9178873688666450020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126274 n) (A087645 (n + 2))

end

end A074171.P9178873688666450020

namespace A074171

/-- `A126274(n)%A087645(n+2)` -/
def P9178873688666450020.Spec : Prop :=
  ∀ n, P9178873688666450020.a n = A074171 (n + 1)

end A074171

/-! ## A074171.P6964547623295335383

`A134869(n+1)-A186684(n+1)`
-/

namespace A074171.P6964547623295335383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) - A186684 (n + 1)

end

end A074171.P6964547623295335383

namespace A074171

/-- `A134869(n+1)-A186684(n+1)` -/
def P6964547623295335383.Spec : Prop :=
  ∀ n, P6964547623295335383.a n = A074171 (n + 1)

end A074171

/-! ## A074171.P2216511192151049607

`∑[n+1]-6%(3^n)`
-/

namespace A074171.P2216511192151049607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((6 % 3 ^ n : ℕ) : ℤ)

end

end A074171.P2216511192151049607

namespace A074171

/-- `∑[n+1]-6%(3^n)` -/
def P2216511192151049607.Spec : Prop :=
  ∀ n, P2216511192151049607.a n = A074171 (n + 1)

end A074171

/-!
# A074172: Smaller of two consecutive numbers of the form p^2*q where p and q are distinct primes.

The programs for A074172, there is no canonical definition to state claims against.
-/

/-! ## A074172.P1304379034032046147

`∩[A049103(n+1), A348076(n+1)]`
-/

namespace A074172.P1304379034032046147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P1304379034032046147

/-! ## A074172.P15211411528381423884

`∩[A049103(n+1), A348098(n+1)]`
-/

namespace A074172.P15211411528381423884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P15211411528381423884

/-! ## A074172.P5773520702043056649

`∩[A049103(n+1), A085651(n+1)]`
-/

namespace A074172.P5773520702043056649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P5773520702043056649

/-! ## A074172.P10595641405213290342

`∩[A085651(n+1), A348076(n+1)]`
-/

namespace A074172.P10595641405213290342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P10595641405213290342

/-! ## A074172.P12967909702741065771

`∩[A085651(n+1), A348098(n+1)]`
-/

namespace A074172.P12967909702741065771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P12967909702741065771

/-! ## A074172.P7596515112551407980

`∩[A049103(n+1), A071318(n+1)]`
-/

namespace A074172.P7596515112551407980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P7596515112551407980

/-! ## A074172.P8271328697927925936

`∩[A054753(n+1)-1, A054753(n+1)]`
-/

namespace A074172.P8271328697927925936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P8271328697927925936

/-! ## A074172.P12250192425900977239

`∩[A080258(n+1)-1, A080258(n+1)]`
-/

namespace A074172.P12250192425900977239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P12250192425900977239

/-! ## A074172.P10664478891160007424

`A054753(eq[1, A054753(n+2)-A054753(n+1)]+1)`
-/

namespace A074172.P10664478891160007424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 2) - A054753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074172.P10664478891160007424

/-! ## A074172.P3328768509788975252

`A054753(eq[1, A054753(n+2)%A054753(n+1)]+1)`
-/

namespace A074172.P3328768509788975252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054753 (n + 2)) (A054753 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A074172.P3328768509788975252

/-! ## A074172.P11779029786180660056

`∩[A049103(n+1), A398821(n+1)]`
-/

namespace A074172.P11779029786180660056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P11779029786180660056

/-! ## A074172.P9516870915210448970

`∩[A049103(n+1), A342187(n+1)]`
-/

namespace A074172.P9516870915210448970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P9516870915210448970

/-! ## A074172.P17439523239673232461

`∩[A049103(n+1), A259504(n+1)]`
-/

namespace A074172.P17439523239673232461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P17439523239673232461

/-! ## A074172.P13673523657508503364

`∩[A071318(n+1), A259504(n+1)]`
-/

namespace A074172.P13673523657508503364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P13673523657508503364

/-! ## A074172.P17060182648364687839

`∩[A085651(n+1), A259504(n+1)]`
-/

namespace A074172.P17060182648364687839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P17060182648364687839

/-! ## A074172.P6835802856308215368

`∩[A259504(n+1), A342187(n+1)]`
-/

namespace A074172.P6835802856308215368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P6835802856308215368

/-! ## A074172.P581185303754377286

`∩[A259504(n+1), A348076(n+1)]`
-/

namespace A074172.P581185303754377286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P581185303754377286

/-! ## A074172.P13256110726945138307

`∩[A259504(n+1), A348098(n+1)]`
-/

namespace A074172.P13256110726945138307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P13256110726945138307

/-! ## A074172.P9492666400342287957

`∩[A259504(n+1), A348345(n+1)]`
-/

namespace A074172.P9492666400342287957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P9492666400342287957

/-! ## A074172.P10677642241104993602

`∩[A259504(n+1), A391396(n+1)]`
-/

namespace A074172.P10677642241104993602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074172.P10677642241104993602

/-!
# A074173: Numbers n such that n and n+2 are of the form p^2*q where p and q are distinct primes.

The programs for A074173, the canonical program `A074173.P5413134121168354343` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074173 has offset 1).

The definition of A074173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074173.P5413134121168354343

`∩[A054753(n+1)-2, A054753(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A074173

/-- `∩[A054753(n+1)-2, A054753(n+1)]` -/
def P5413134121168354343.Spec : Prop :=
  ∀ n, (P5413134121168354343.a n : ℤ) = A074173 (n + 1)

theorem P5413134121168354343.correct : P5413134121168354343.Spec := by
  intro n
  simp only [A074173, Nat.add_sub_cancel]

end A074173

/-! ## A074173.P12068880346649457472

`filter[A279767(n+1), A353798(#)]`
-/

namespace A074173.P12068880346649457472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A074173.P12068880346649457472

namespace A074173

/-- `filter[A279767(n+1), A353798(#)]` -/
def P12068880346649457472.Spec : Prop :=
  ∀ n, P12068880346649457472.a n = A074173 (n + 1)

end A074173

/-! ## A074173.P14292578647247977668

`∩[A030515(n+1), A279767(n+1)]`
-/

namespace A074173.P14292578647247977668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P14292578647247977668

namespace A074173

/-- `∩[A030515(n+1), A279767(n+1)]` -/
def P14292578647247977668.Spec : Prop :=
  ∀ n, (P14292578647247977668.a n : ℤ) = A074173 (n + 1)

end A074173

/-! ## A074173.P15898772935830027291

`∩[A054753(n+1), A279767(n+1)]`
-/

namespace A074173.P15898772935830027291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P15898772935830027291

namespace A074173

/-- `∩[A054753(n+1), A279767(n+1)]` -/
def P15898772935830027291.Spec : Prop :=
  ∀ n, (P15898772935830027291.a n : ℤ) = A074173 (n + 1)

end A074173

/-! ## A074173.P14834286731055056544

`∩[A080258(n+1), A279767(n+1)]`
-/

namespace A074173.P14834286731055056544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P14834286731055056544

namespace A074173

/-- `∩[A080258(n+1), A279767(n+1)]` -/
def P14834286731055056544.Spec : Prop :=
  ∀ n, (P14834286731055056544.a n : ℤ) = A074173 (n + 1)

end A074173

/-! ## A074173.P16351846580829330511

`∩[A253388(n+1), A279767(n+1)]`
-/

namespace A074173.P16351846580829330511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P16351846580829330511

namespace A074173

/-- `∩[A253388(n+1), A279767(n+1)]` -/
def P16351846580829330511.Spec : Prop :=
  ∀ n, (P16351846580829330511.a n : ℤ) = A074173 (n + 1)

end A074173

/-! ## A074173.P14328525111643003645

`∩[A279767(n+1), A285508(n+1)]`
-/

namespace A074173.P14328525111643003645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P14328525111643003645

namespace A074173

/-- `∩[A279767(n+1), A285508(n+1)]` -/
def P14328525111643003645.Spec : Prop :=
  ∀ n, (P14328525111643003645.a n : ℤ) = A074173 (n + 1)

end A074173

/-! ## A074173.P7692372393392659617

`∩[A279767(n+1), A286228(n+1)]`
-/

namespace A074173.P7692372393392659617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P7692372393392659617

namespace A074173

/-- `∩[A279767(n+1), A286228(n+1)]` -/
def P7692372393392659617.Spec : Prop :=
  ∀ n, (P7692372393392659617.a n : ℤ) = A074173 (n + 1)

end A074173

/-! ## A074173.P5014985643525905206

`∩[A279767(n+1), A356743(n+1)]`
-/

namespace A074173.P5014985643525905206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P5014985643525905206

namespace A074173

/-- `∩[A279767(n+1), A356743(n+1)]` -/
def P5014985643525905206.Spec : Prop :=
  ∀ n, (P5014985643525905206.a n : ℤ) = A074173 (n + 1)

end A074173

/-! ## A074173.P6494166602362637358

`∩[A279767(n+1), A393940(n+1)]`
-/

namespace A074173.P6494166602362637358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A074173.P6494166602362637358

namespace A074173

/-- `∩[A279767(n+1), A393940(n+1)]` -/
def P6494166602362637358.Spec : Prop :=
  ∀ n, (P6494166602362637358.a n : ℤ) = A074173 (n + 1)

end A074173

/-! ## A074173.P7555266894157471118

`filter[A279767(n+1), A353472(#)]`
-/

namespace A074173.P7555266894157471118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353472 (f1 j).toNat = 1) n)

end

end A074173.P7555266894157471118

namespace A074173

/-- `filter[A279767(n+1), A353472(#)]` -/
def P7555266894157471118.Spec : Prop :=
  ∀ n, P7555266894157471118.a n = A074173 (n + 1)

end A074173

/-!
# A074177: Where records occur in A064413.

The programs for A074177, there is no canonical definition to state claims against.
-/

/-! ## A074177.P5509209122767374448

`A064421(A064424(n+1))+1`
-/

namespace A074177.P5509209122767374448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064421 (A064424 (n + 1)).toNat + 1

end

end A074177.P5509209122767374448

/-! ## A074177.P1084248844557668183

`∑{d}[A064424(n+1), A304526(#)]`
-/

namespace A074177.P1084248844557668183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A074177.P1084248844557668183

/-! ## A074177.P7810068229489133123

`∑{d}[record[A064413(n+1)], A304526(#)]`
-/

namespace A074177.P7810068229489133123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304526 d

end

end A074177.P7810068229489133123

/-! ## A074177.P6166392788509498468

`A064664(A064424(n+1))`
-/

namespace A074177.P6166392788509498468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A064424 (n + 1)).toNat

end

end A074177.P6166392788509498468

/-! ## A074177.P15597785760961000448

`A064664(record[A064413(n+1)])`
-/

namespace A074177.P15597785760961000448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074177.P15597785760961000448

/-! ## A074177.P10712871130747807719

`A064664(record[sqrt(A104125(n+1))])`
-/

namespace A074177.P10712871130747807719
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A104125 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A074177.P10712871130747807719

/-! ## A074177.P4192590771142549314

`A064664(record[A065519(n+1)+n+1])`
-/

namespace A074177.P4192590771142549314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065519 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074177.P4192590771142549314

/-! ## A074177.P12676252180808591062

`A064664(record[A169847(n+1)%A064665(n+1)])`
-/

namespace A074177.P12676252180808591062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169847 (n + 1)) (A064665 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A074177.P12676252180808591062

/-!
# A074178: Records of the coefficients of the continued fraction for the Product_{p prime} (1 - 2/p^2).

The programs for A074178, there is no canonical definition to state claims against.
-/

/-! ## A074178.P15716021209909556782

`record[A074893(n)]`
-/

namespace A074178.P15716021209909556782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074178.P15716021209909556782

/-!
# A074179: a(1) = 1, a(n) = smallest multiple of n divisible by the sum of all previous terms.

The programs for A074179, the canonical program `A074179.P10891325546263500208` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074179 has offset 1).

The definition of A074179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A074179.P10891325546263500208

`Δ[a(n-1)+lcm(n, a(n-1))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074179

/-- `Δ[a(n-1)+lcm(n, a(n-1))]` -/
def P10891325546263500208.Spec : Prop :=
  ∀ n, P10891325546263500208.a n = A074179 (n + 1)

theorem P10891325546263500208.correct : P10891325546263500208.Spec := by
  intro n
  simp only [A074179, Nat.add_sub_cancel]

end A074179

/-! ## A074179.P2450447879333844017

`lcm(n+1, A135504(round(sqrt(n²+1))))`
-/

namespace A074179.P2450447879333844017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A135504 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A074179.P2450447879333844017

namespace A074179

/-- `lcm(n+1, A135504(round(sqrt(n²+1))))` -/
def P2450447879333844017.Spec : Prop :=
  ∀ n, (P2450447879333844017.a n : ℤ) = A074179 (n + 1)

end A074179

/-! ## A074179.P3904904484716502053

`A000007(n)+Δ[A135504(A028310(n))]`
-/

namespace A074179.P3904904484716502053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A074179.P3904904484716502053

namespace A074179

/-- `A000007(n)+Δ[A135504(A028310(n))]` -/
def P3904904484716502053.Spec : Prop :=
  ∀ n, P3904904484716502053.a n = A074179 (n + 1)

end A074179

/-! ## A074179.P2790474938373916569

`Δ[A135504(A028310(n))+A040000(n)]`
-/

namespace A074179.P2790474938373916569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (A028310 n).toNat + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074179.P2790474938373916569

namespace A074179

/-- `Δ[A135504(A028310(n))+A040000(n)]` -/
def P2790474938373916569.Spec : Prop :=
  ∀ n, P2790474938373916569.a n = A074179 (n + 1)

end A074179

/-! ## A074179.P5491677949652879829

`Δ[A135504(A028310(n))+A057427(n)]`
-/

namespace A074179.P5491677949652879829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074179.P5491677949652879829

namespace A074179

/-- `Δ[A135504(A028310(n))+A057427(n)]` -/
def P5491677949652879829.Spec : Prop :=
  ∀ n, P5491677949652879829.a n = A074179 (n + 1)

end A074179

/-! ## A074179.P14131330345999889528

`Δ[A135504(A028310(n))-A057428(n)]`
-/

namespace A074179.P14131330345999889528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074179.P14131330345999889528

namespace A074179

/-- `Δ[A135504(A028310(n))-A057428(n)]` -/
def P14131330345999889528.Spec : Prop :=
  ∀ n, P14131330345999889528.a n = A074179 (n + 1)

end A074179

/-! ## A074179.P11240397935047494209

`A135504(n+1)+A000007(n)-A135504(A028310(n))`
-/

namespace A074179.P11240397935047494209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (n + 1) + (A000007 n - A135504 (A028310 n).toNat)

end

end A074179.P11240397935047494209

namespace A074179

/-- `A135504(n+1)+A000007(n)-A135504(A028310(n))` -/
def P11240397935047494209.Spec : Prop :=
  ∀ n, P11240397935047494209.a n = A074179 (n + 1)

end A074179

/-! ## A074179.P10279921549146204958

`A135504(n+1)+A057428(n)*A135504(A028310(n))`
-/

namespace A074179.P10279921549146204958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (n + 1) + A057428 n * A135504 (A028310 n).toNat

end

end A074179.P10279921549146204958

namespace A074179

/-- `A135504(n+1)+A057428(n)*A135504(A028310(n))` -/
def P10279921549146204958.Spec : Prop :=
  ∀ n, P10279921549146204958.a n = A074179 (n + 1)

end A074179

/-! ## A074179.P11221896753022716330

`A135504(n+1)-A057427(n)*A135504(A028310(n))`
-/

namespace A074179.P11221896753022716330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135504 (n + 1) - A057427 n * A135504 (A028310 n).toNat

end

end A074179.P11221896753022716330

namespace A074179

/-- `A135504(n+1)-A057427(n)*A135504(A028310(n))` -/
def P11221896753022716330.Spec : Prop :=
  ∀ n, P11221896753022716330.a n = A074179 (n + 1)

end A074179

/-!
# A074180: a(1) = 1, a(n) = smallest multiple of n divisible by the product of all previous terms.

The programs for A074180, there is no canonical definition to state claims against.
-/

/-! ## A074180.P5101478584120290096

`ratio[lcm(n, a(n-1)²)]` with `a(0)=1`
-/

namespace A074180.P5101478584120290096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm n (f1 (n - 1) ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A074180.P5101478584120290096

/-! ## A074180.P5346808117698276362

`6*A034882(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A074180.P5346808117698276362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  6 * A034882 (a (n - 2)).toNat

end

end A074180.P5346808117698276362

/-!
# A074181: Smallest power of n >= n!.

The programs for A074181, there is no canonical definition to state claims against.
-/

/-! ## A074181.P3158156534137145908

`(n+1)^A074184(n+1)`
-/

namespace A074181.P3158156534137145908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A074184 (n + 1) : ℤ)

end

end A074181.P3158156534137145908

/-! ## A074181.P3758168773118155830

`(1-char[1]+n)*A074182(n+1)`
-/

namespace A074181.P3758168773118155830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)) * A074182 (n + 1)

end

end A074181.P3758168773118155830

/-! ## A074181.P14202255498510711661

`record[A246277(n+1)^A108611(2*n+1)]`
-/

namespace A074181.P14202255498510711661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246277 (n + 1) : ℚ) ^ (A108611 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074181.P14202255498510711661

/-! ## A074181.P4408303746321499940

`(n+1)^∑[A004534(A035444(n))]`
-/

namespace A074181.P4408303746321499940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004534 (A035444 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A074181.P4408303746321499940

/-! ## A074181.P10356100147446532741

`(n+1)^A378445(2^n)`
-/

namespace A074181.P10356100147446532741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A378445 (2 ^ n) : ℤ)

end

end A074181.P10356100147446532741

/-!
# A074182: Largest power of n <= n!.

The programs for A074182, there is no canonical definition to state claims against.
-/

/-! ## A074182.P14260045190953113728

`(n+1)^A039960(n+1)`
-/

namespace A074182.P14260045190953113728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A039960 (n + 1) : ℤ)

end

end A074182.P14260045190953113728

/-! ## A074182.P4235525636742175290

`(n+1)^(A060151(n+1)-1)`
-/

namespace A074182.P4235525636742175290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A060151 (n + 1) - 1 : ℤ)

end

end A074182.P4235525636742175290

/-! ## A074182.P2776481151316506911

`record[A028242(n)^A039960(A028242(n))]`
-/

namespace A074182.P2776481151316506911
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 n : ℚ) ^ (A039960 (A028242 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074182.P2776481151316506911

/-! ## A074182.P2774934380253210972

`record[A133310(n)^A039960(A133310(n))]`
-/

namespace A074182.P2774934380253210972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133310 n : ℚ) ^ (A039960 (A133310 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074182.P2774934380253210972

/-! ## A074182.P12548811818779141992

`record[A236858(n)^A039960(A236858(n))]`
-/

namespace A074182.P12548811818779141992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236858 n : ℚ) ^ (A039960 (A236858 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074182.P12548811818779141992

/-! ## A074182.P2691730585524150844

`lcm(n+1, A074181(n+1)/(n+1))`
-/

namespace A074182.P2691730585524150844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A074181 (n + 1) : ℚ) / (n + 1 : ℚ)))

end

end A074182.P2691730585524150844

/-! ## A074182.P15491440745375573807

`A069782(n+1)^A060151(n+1)/A069782(n+1)`
-/

namespace A074182.P15491440745375573807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069782 (n + 1) : ℚ) ^ (A060151 (n + 1) : ℤ) / (A069782 (n + 1) : ℚ)

end

end A074182.P15491440745375573807

/-! ## A074182.P11309424487330976367

`A090108(n+1)^A060151(n+1)/A090108(n+1)`
-/

namespace A074182.P11309424487330976367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090108 (n + 1) : ℚ) ^ (A060151 (n + 1) : ℤ) / (A090108 (n + 1) : ℚ)

end

end A074182.P11309424487330976367

/-!
# A074184: Index of the smallest power of n >= n!.

The programs for A074184, there is no canonical definition to state claims against.
-/

/-! ## A074184.P13673079637869352726

`A060151(1-char[1]+n)`
-/

namespace A074184.P13673079637869352726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A074184.P13673079637869352726

/-! ## A074184.P16375411267470538295

`A159075(n)+A060151(n+1)`
-/

namespace A074184.P16375411267470538295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A060151 (n + 1)

end

end A074184.P16375411267470538295

/-! ## A074184.P12892129118318906411

`A060151(n+1)-A063524(n)`
-/

namespace A074184.P12892129118318906411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (n + 1) - A063524 n

end

end A074184.P12892129118318906411

/-! ## A074184.P13927535076471550557

`A060151(n+1)/A373565(n)`
-/

namespace A074184.P13927535076471550557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060151 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A074184.P13927535076471550557

/-! ## A074184.P506471062083641469

`gcd(A060151(n+1), A130779(n))`
-/

namespace A074184.P506471062083641469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060151 (n + 1)) (A130779 n)

end

end A074184.P506471062083641469

/-! ## A074184.P10203506173104213104

`A039960(n+1)+and(1, ∑[A074845(n+1)])`
-/

namespace A074184.P10203506173104213104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (n + 1) + Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074184.P10203506173104213104

/-! ## A074184.P8637663828614785499

`floor(A039960(n+1)+n/A060151(n+1))`
-/

namespace A074184.P8637663828614785499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039960 (n + 1) : ℚ) + (n : ℚ) / (A060151 (n + 1) : ℚ)⌋

end

end A074184.P8637663828614785499

/-! ## A074184.P3482491226428836981

`a(n-1)-A197870(A230319(a(n-1))-n)` with `a(0)=1`
-/

namespace A074184.P3482491226428836981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A197870 (A230319 (a (n - 1)).toNat - (n : ℤ)).toNat

end

end A074184.P3482491226428836981

/-! ## A074184.P18009114163797471702

`A039960(n+1)+A000040(A003558(n))%2`
-/

namespace A074184.P18009114163797471702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (n + 1) + Int.tmod (A000040 (A003558 n).toNat) 2

end

end A074184.P18009114163797471702

/-! ## A074184.P4939307954780650476

`A039960(n+1)%A000194(n+1)²+1`
-/

namespace A074184.P4939307954780650476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039960 (n + 1)) (A000194 (n + 1) ^ 2) + 1

end

end A074184.P4939307954780650476

/-! ## A074184.P9361997764374529168

`gcd(A003418(n), A060151(n+1))`
-/

namespace A074184.P9361997764374529168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A060151 (n + 1))

end

end A074184.P9361997764374529168

/-! ## A074184.P7307855578126753750

`A000194(A039960(n+1)²+n)`
-/

namespace A074184.P7307855578126753750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A039960 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A074184.P7307855578126753750

/-!
# A074185: a(1) = 1, for n > 1 a(n) is the smallest number such that the product of all previous terms is > n^n.

The programs for A074185, there is no canonical definition to state claims against.
-/

/-! ## A074185.P4480841288948092365

`A022852(n)+A006928(A353503(n+1))`
-/

namespace A074185.P4480841288948092365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 n + A006928 (A353503 (n + 1)).toNat

end

end A074185.P4480841288948092365

/-! ## A074185.P18242355014555069409

`A014709(A286202(n))+round(e*n)`
-/

namespace A074185.P18242355014555069409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A286202 n).toNat + SequenceMachineLib.roundAway (Real.exp 1 * (n : ℝ))

end

end A074185.P18242355014555069409

/-! ## A074185.P2049022357966845349

`A156243(n+1)-A109301(A000011(n))`
-/

namespace A074185.P2049022357966845349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) - A109301 (A000011 n).toNat

end

end A074185.P2049022357966845349

/-! ## A074185.P15615775352467392037

`or(A285207(n+1)-1, A051023(A000085(n)))`
-/

namespace A074185.P15615775352467392037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285207 (n + 1) - 1) (A051023 (A000085 n).toNat)

end

end A074185.P15615775352467392037

/-!
# A074187: Largest power (>=2) <= n!.

The programs for A074187, there is no canonical definition to state claims against.
-/

/-! ## A074187.P13471059050780196921

`(n+1)!-A240940(n+1)`
-/

namespace A074187.P13471059050780196921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A240940 (n + 1)

end

end A074187.P13471059050780196921

/-! ## A074187.P12954929235586008500

`record[A047920(n)]-A240940(n+1)`
-/

namespace A074187.P12954929235586008500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240940 (n + 1)

end

end A074187.P12954929235586008500

/-! ## A074187.P10848880906548158067

`A000142(n+1)-A240940(n+1)`
-/

namespace A074187.P10848880906548158067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A240940 (n + 1)

end

end A074187.P10848880906548158067

/-! ## A074187.P13561352009127772241

`A081123(2*(n+1))-A240940(n+1)`
-/

namespace A074187.P13561352009127772241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * (n + 1)) - A240940 (n + 1)

end

end A074187.P13561352009127772241

/-!
# A074188: Smallest power (>=2) >= n!.

The programs for A074188, there is no canonical definition to state claims against.
-/

/-! ## A074188.P5241674221700713893

`ceil(sqrt((n+1)!))²-char[2]`
-/

namespace A074188.P5241674221700713893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.factorial (n + 1) : ℝ)⌉ ^ 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A074188.P5241674221700713893

/-! ## A074188.P7896590984377466866

`A087374(n+1)-char[2]`
-/

namespace A074188.P7896590984377466866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087374 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A074188.P7896590984377466866

/-! ## A074188.P8208727640128953393

`A055228(n+1)²-char[2]`
-/

namespace A074188.P8208727640128953393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 (n + 1) ^ 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A074188.P8208727640128953393

/-! ## A074188.P14854859960581761483

`A240939(n+1)+(n+1)!`
-/

namespace A074188.P14854859960581761483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240939 (n + 1) + (Nat.factorial (n + 1) : ℤ)

end

end A074188.P14854859960581761483

/-! ## A074188.P6283281809796651703

`A240939(n+1)+record[A094587(n)]`
-/

namespace A074188.P6283281809796651703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240939 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A074188.P6283281809796651703

/-!
# A074189: a(1) = 1, a(2) = 2; for n > 2, a(n) = {a(n-1) +a(n+1)}/n or a(n+1) = n*a(n)-a(n-1).

The programs for A074189, there is no canonical definition to state claims against.
-/

/-! ## A074189.P4248462672042158793

`-∏[n-1-1/a(n-1)]` with `a(0)=1`
-/

namespace A074189.P4248462672042158793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) - 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A074189.P4248462672042158793

/-! ## A074189.P13124789845457452944

`(n-1)*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=1`
-/

namespace A074189.P13124789845457452944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) - a (n - 2)

end

end A074189.P13124789845457452944

/-! ## A074189.P8634368847253647586

`lcm(n, a(n-1))-(a(n-1)+a(n-2))` with `a(0)=-1, a(1)=1`
-/

namespace A074189.P8634368847253647586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  (Int.lcm (n : ℤ) (a (n - 1)) : ℤ) - (a (n - 1) + a (n - 2))

end

end A074189.P8634368847253647586

/-! ## A074189.P4677813365837809548

`a(n-1)/n^(-1)-(a(n-1)+a(n-2))` with `a(0)=-1, a(1)=1`
-/

namespace A074189.P4677813365837809548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (a (n - 1) + a (n - 2))

end

end A074189.P4677813365837809548

/-! ## A074189.P15858573607148054505

`a(n-1)/n^(-1)-(a(n-1)-floor(-a(n-2)))` with `a(0)=-1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A074189.P15858573607148054505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (a (n - 1) - (⌊-a (n - 2)⌋ : ℚ))

end

end A074189.P15858573607148054505

/-! ## A074189.P214886632698674684

`a(n-1)/n^(-1)-(a(n-1)-round(-a(n-2)))` with `a(0)=-1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A074189.P214886632698674684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (a (n - 1) - (SequenceMachineLib.roundAway (-a (n - 2)) : ℚ))

end

end A074189.P214886632698674684

/-! ## A074189.P922169662322863906

`a(n-1)/n^(-1)-(a(n-1)-(char[1]-a(n-2)))` with `a(0)=-1, a(1)=1`
-/

namespace A074189.P922169662322863906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) - a (n - 2)))

end

end A074189.P922169662322863906

/-! ## A074189.P16433333744989774903

`a(n-1)/n^(-1)-(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=-1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A074189.P16433333744989774903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (1 - ⌊1 - a (n - 1) - a (n - 2)⌋ : ℚ)

end

end A074189.P16433333744989774903

/-! ## A074189.P10841020799044898716

`a(n-1)/n^(-1)-(2-(4/2-a(n-1)-a(n-2)))` with `a(0)=-1, a(1)=1`
-/

namespace A074189.P10841020799044898716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2)))

end

end A074189.P10841020799044898716

/-!
# A074190: Let the index of the largest prime power that divides n! be k then the smallest number such that n!*a(n) is a perfect k-th power.

The programs for A074190, there is no canonical definition to state claims against.
-/

/-! ## A074190.P497707564925480129

`A066636((n+1)!)`
-/

namespace A074190.P497707564925480129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (Nat.factorial (n + 1))

end

end A074190.P497707564925480129

/-! ## A074190.P1264296534680158446

`A066638((n+1)!)/(n+1)!`
-/

namespace A074190.P1264296534680158446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (Nat.factorial (n + 1)) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A074190.P1264296534680158446

/-! ## A074190.P660779540222279396

`A066636(A000142(1+n))`
-/

namespace A074190.P660779540222279396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (A000142 (1 + n)).toNat

end

end A074190.P660779540222279396

/-!
# A074193: Sum of determinants of 2nd order principal minors of powers of the matrix ((1,1,0,0),(1,0,1,0),(1,0,0,1),(1,0,0,0)).

The programs for A074193, the canonical program `A074193.P8732192768357926785` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A074193 has offset 0).

The definition of A074193 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A074193.P8732192768357926785

`ogf((6+5x+8x^2+6x^3-4x^4+x^5)/(1+x+2x^2+2x^3-2x^4+x^5-x^6))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A074193

/-- `ogf((6+5x+8x^2+6x^3-4x^4+x^5)/(1+x+2x^2+2x^3-2x^4+x^5-x^6))` -/
def P8732192768357926785.Spec : Prop :=
  ∀ n, P8732192768357926785.a n = A074193 n

theorem P8732192768357926785.correct : P8732192768357926785.Spec := by
  intro n
  simp only [A074193]

end A074193

/-! ## A074193.P5628067953013131790

`(-1)^n*A074453(n)`
-/

namespace A074193.P5628067953013131790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A074453 n

end

end A074193.P5628067953013131790

namespace A074193

/-- `(-1)^n*A074453(n)` -/
def P5628067953013131790.Spec : Prop :=
  ∀ n, P5628067953013131790.a n = A074193 n

end A074193

/-! ## A074193.P6111181480583383007

`A074453(n)/A033999(n)`
-/

namespace A074193.P6111181480583383007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074453 n : ℚ) / (A033999 n : ℚ)

end

end A074193.P6111181480583383007

namespace A074193

/-- `A074453(n)/A033999(n)` -/
def P6111181480583383007.Spec : Prop :=
  ∀ n, P6111181480583383007.a n = (A074193 n : ℚ)

end A074193

/-! ## A074193.P2872752843753162626

`A074453(n)/A009001(2*n)`
-/

namespace A074193.P2872752843753162626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074453 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A074193.P2872752843753162626

namespace A074193

/-- `A074453(n)/A009001(2*n)` -/
def P2872752843753162626.Spec : Prop :=
  ∀ n, P2872752843753162626.a n = (A074193 n : ℚ)

end A074193

/-! ## A074193.P9849410611074763217

`A074453(n)/A057077(2*n)`
-/

namespace A074193.P9849410611074763217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074453 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A074193.P9849410611074763217

namespace A074193

/-- `A074453(n)/A057077(2*n)` -/
def P9849410611074763217.Spec : Prop :=
  ∀ n, P9849410611074763217.a n = (A074193 n : ℚ)

end A074193

/-! ## A074193.P10858584033713307044

`A073937(n)*A074453(n)/A074058(n)`
-/

namespace A074193.P10858584033713307044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073937 n * A074453 n : ℚ) / (A074058 n : ℚ)

end

end A074193.P10858584033713307044

namespace A074193

/-- `A073937(n)*A074453(n)/A074058(n)` -/
def P10858584033713307044.Spec : Prop :=
  ∀ n, P10858584033713307044.a n = (A074193 n : ℚ)

end A074193

/-! ## A074193.P1315882183356954777

`A073817(n)*A074453(n)/A074081(n)`
-/

namespace A074193.P1315882183356954777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 n * A074453 n : ℚ) / (A074081 n : ℚ)

end

end A074193.P1315882183356954777

namespace A074193

/-- `A073817(n)*A074453(n)/A074081(n)` -/
def P1315882183356954777.Spec : Prop :=
  ∀ n, P1315882183356954777.a n = (A074193 n : ℚ)

end A074193

/-!
# A074196: Sum of palindromes from the smallest prime factor of n to the largest prime factor of n.

The programs for A074196, there is no canonical definition to state claims against.
-/

/-! ## A074196.P4932570571183833329

`∑{p}[n+1, #]*A007877(A182976(n+1))`
-/

namespace A074196.P4932570571183833329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A007877 (A182976 (n + 1)).toNat

end

end A074196.P4932570571183833329

/-! ## A074196.P9668008216120008456

`A008472(n+1)*A083093(A278073(n))`
-/

namespace A074196.P9668008216120008456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) * A083093 (A278073 n).toNat

end

end A074196.P9668008216120008456

/-! ## A074196.P16804098778049921514

`∑{d}[n+1, A061397(#)]*A007877(A182976(n+1))`
-/

namespace A074196.P16804098778049921514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A061397 d) * A007877 (A182976 (n + 1)).toNat

end

end A074196.P16804098778049921514

/-! ## A074196.P3663200197365148694

`∑{p}[n+1, #]*A101872(∏[n%2+2]-1)`
-/

namespace A074196.P3663200197365148694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A101872 (∏ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A074196.P3663200197365148694

/-! ## A074196.P9099797587514618977

`∑{p}[n+1, #]*A257679(A033960(n))`
-/

namespace A074196.P9099797587514618977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A257679 (A033960 n).toNat

end

end A074196.P9099797587514618977

/-!
# A074198: Largest k such that 1!*2!*3!*...*k! divides n!.

The programs for A074198, there is no canonical definition to state claims against.
-/

/-! ## A074198.P15379918326878257705

`∑[char[A093886(n+2)-1]]+1`
-/

namespace A074198.P15379918326878257705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093886 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A074198.P15379918326878257705

/-! ## A074198.P7743213326655232143

`A055642(A141038(n))+floor(log2(n+1))`
-/

namespace A074198.P7743213326655232143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A141038 n).toNat + (Nat.log 2 (n + 1) : ℤ)

end

end A074198.P7743213326655232143

/-! ## A074198.P13347651525613402288

`A055642(A003520(n+2))+A000523(n+1)`
-/

namespace A074198.P13347651525613402288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A003520 (n + 2)).toNat + A000523 (n + 1)

end

end A074198.P13347651525613402288

/-! ## A074198.P6825064494432225113

`A055642(A064628(n))+A000523(n+1)`
-/

namespace A074198.P6825064494432225113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A064628 n).toNat + A000523 (n + 1)

end

end A074198.P6825064494432225113

/-! ## A074198.P6789894358109994384

`A135664(A360552(2*n+3)+A038554(n+1))`
-/

namespace A074198.P6789894358109994384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A360552 (2 * n + 3) + A038554 (n + 1)).toNat

end

end A074198.P6789894358109994384

/-!
# A074199: a(n) = n!/(1!*2!*3!*...*k!) where k is the largest integer such that 1!*2!*3!*...*k! divides n!.

The programs for A074199, there is no canonical definition to state claims against.
-/

/-! ## A074199.P9316271365201087785

`(n+1)!/A000178(A074198(n+1))`
-/

namespace A074199.P9316271365201087785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A000178 (A074198 (n + 1)).toNat : ℚ)

end

end A074199.P9316271365201087785

/-! ## A074199.P4915074327399605120

`A000142(n+1)/A000178(A074198(n+1))`
-/

namespace A074199.P4915074327399605120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A000178 (A074198 (n + 1)).toNat : ℚ)

end

end A074199.P4915074327399605120

/-! ## A074199.P11432679219101608272

`A060819(record[n*a(n-1)])` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`
-/

namespace A074199.P11432679219101608272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 2] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A074199.P11432679219101608272

