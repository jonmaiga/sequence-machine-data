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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A117800: Start with 1 and repeatedly reverse the digits and add 5 to get the next term.

The programs for A117800, there is no canonical definition to state claims against.
-/

/-! ## A117800.P10647391969389748168

`A004086(a(n-1))+5` with `a(0)=1`
-/

namespace A117800.P10647391969389748168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 5

end

end A117800.P10647391969389748168

/-!
# A117801: Triangular numbers for which the product of the digits is a prime number.

The programs for A117801, there is no canonical definition to state claims against.
-/

/-! ## A117801.P12799680211837445512

`∩[C(n+1, 2), A028842(n+1)]`
-/

namespace A117801.P12799680211837445512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117801.P12799680211837445512

/-!
# A117802: Numbers with an "a" in Dutch.

The programs for A117802, there is no canonical definition to state claims against.
-/

/-! ## A117802.P13930299889471935033

`∪[A011538(n+1), A265948(n+1)]`
-/

namespace A117802.P13930299889471935033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117802.P13930299889471935033

/-!
# A117803: Triangular numbers for which the sum of the digits is a cube.

The programs for A117803, there is no canonical definition to state claims against.
-/

/-! ## A117803.P14634799478488561568

`A000217(A072399(n)-A229522(n+1))`
-/

namespace A117803.P14634799478488561568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A072399 n - A229522 (n + 1)).toNat

end

end A117803.P14634799478488561568

/-!
# A117804: Natural position of n in the string 12345678910111213....

The programs for A117804, the canonical program `A117804.P13819815151096407065` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117804 has offset 1).

The definition of A117804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117804.P13819815151096407065

`1+A055642(n)*(n+1)-(10^A055642(n)-1)/9`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A117804

/-- `1+A055642(n)*(n+1)-(10^A055642(n)-1)/9` -/
def P13819815151096407065.Spec : Prop :=
  ∀ n, P13819815151096407065.a n = (A117804 (n + 1) : ℚ)

end A117804

/-! ## A117804.P9413828906351386616

`lt[log(3/(n+1))^(n+1), n]`
-/

namespace A117804.P9413828906351386616
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (3 / (n + 1 : ℚ) : ℝ) ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A117804.P9413828906351386616

namespace A117804

/-- `lt[log(3/(n+1))^(n+1), n]` -/
def P9413828906351386616.Spec : Prop :=
  ∀ n, (P9413828906351386616.a n : ℤ) = A117804 (n + 1)

end A117804

/-!
# A117805: Start with 3. Square the previous term and subtract it.

The programs for A117805, the canonical program `A117805.P9699114493244768735` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117805 has offset 0).

The definition of A117805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117805.P9699114493244768735

`a(n-1)²-a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117805

/-- `a(n-1)²-a(n-1)` -/
def P9699114493244768735.Spec : Prop :=
  ∀ n, P9699114493244768735.a n = A117805 n

theorem P9699114493244768735.correct : P9699114493244768735.Spec := by
  intro n
  simp only [A117805]

end A117805

/-! ## A117805.P204427854111243686

`2*C(a(n-1), 2)` with `a(0)=3`
-/

namespace A117805.P204427854111243686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * Nat.choose (a (n - 1)) 2

end

end A117805.P204427854111243686

namespace A117805

/-- `2*C(a(n-1), 2)` -/
def P204427854111243686.Spec : Prop :=
  ∀ n, (P204427854111243686.a n : ℤ) = A117805 n

end A117805

/-! ## A117805.P6559509049047669008

`lcm(2, C(a(n-1), 2))` with `a(0)=3`
-/

namespace A117805.P6559509049047669008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm 2 (Nat.choose (a (n - 1)) 2)

end

end A117805.P6559509049047669008

namespace A117805

/-- `lcm(2, C(a(n-1), 2))` -/
def P6559509049047669008.Spec : Prop :=
  ∀ n, (P6559509049047669008.a n : ℤ) = A117805 n

end A117805

/-! ## A117805.P16062141233454584967

`∏[A005267(n)]`
-/

namespace A117805.P16062141233454584967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117805.P16062141233454584967

namespace A117805

/-- `∏[A005267(n)]` -/
def P16062141233454584967.Spec : Prop :=
  ∀ n, P16062141233454584967.a n = A117805 n

end A117805

/-!
# A117806: n appears {a(1) + a(2) + ... + a(n-1)} times (with a(1) = 1).

The programs for A117806, the canonical program `A117806.P16597823138856235406` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117806 has offset 1).

The definition of A117806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117806.P11448504199051466259

`∑[char[∑[A084525(n)]+1]]+1`
-/

namespace A117806.P11448504199051466259
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A117806.P11448504199051466259

namespace A117806

/-- `∑[char[∑[A084525(n)]+1]]+1` -/
def P11448504199051466259.Spec : Prop :=
  ∀ n, (P11448504199051466259.a n : ℤ) = A117806 (n + 1)

end A117806

/-! ## A117806.P10327616106047340546

`∑[char[∑[A130248(n+1)]]]+1`
-/

namespace A117806.P10327616106047340546
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A117806.P10327616106047340546

namespace A117806

/-- `∑[char[∑[A130248(n+1)]]]+1` -/
def P10327616106047340546.Spec : Prop :=
  ∀ n, (P10327616106047340546.a n : ℤ) = A117806 (n + 1)

end A117806

/-! ## A117806.P5512821388514093684

`∑[char[∑[A130258(n)+1]]]+1`
-/

namespace A117806.P5512821388514093684
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130258 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A117806.P5512821388514093684

namespace A117806

/-- `∑[char[∑[A130258(n)+1]]]+1` -/
def P5512821388514093684.Spec : Prop :=
  ∀ n, (P5512821388514093684.a n : ℤ) = A117806 (n + 1)

end A117806

/-! ## A117806.P11610096458269434497

`ceil(root(A051531(5*n+1), sqrt(61)))`
-/

namespace A117806.P11610096458269434497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051531 (5 * n + 1) : ℝ) ^ (1 / Real.sqrt (61 : ℝ))⌉

end

end A117806.P11610096458269434497

namespace A117806

/-- `ceil(root(A051531(5*n+1), sqrt(61)))` -/
def P11610096458269434497.Spec : Prop :=
  ∀ n, P11610096458269434497.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P3761114964285988996

`comp[∑[A061465(n+1)]]-n+1`
-/

namespace A117806.P3761114964285988996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061465 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A117806.P3761114964285988996

namespace A117806

/-- `comp[∑[A061465(n+1)]]-n+1` -/
def P3761114964285988996.Spec : Prop :=
  ∀ n, P3761114964285988996.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P4166618687035276135

`comp[∑[A126022(n+1)]]-n+1`
-/

namespace A117806.P4166618687035276135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126022 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A117806.P4166618687035276135

namespace A117806

/-- `comp[∑[A126022(n+1)]]-n+1` -/
def P4166618687035276135.Spec : Prop :=
  ∀ n, P4166618687035276135.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P14756450222302377760

`comp[∑[A130243(n+1)]]+1-n`
-/

namespace A117806.P14756450222302377760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130243 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A117806.P14756450222302377760

namespace A117806

/-- `comp[∑[A130243(n+1)]]+1-n` -/
def P14756450222302377760.Spec : Prop :=
  ∀ n, P14756450222302377760.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P4006868371187475109

`A276611(A276611(n)+comp[3*n])`
-/

namespace A117806.P4006868371187475109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A276611 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A117806.P4006868371187475109

namespace A117806

/-- `A276611(A276611(n)+comp[3*n])` -/
def P4006868371187475109.Spec : Prop :=
  ∀ n, P4006868371187475109.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P16597823138856235406

`a(A083920(A083920(n)+1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117806

/-- `a(A083920(A083920(n)+1))+1` -/
def P16597823138856235406.Spec : Prop :=
  ∀ n, (P16597823138856235406.a n : ℤ) = A117806 (n + 1)

theorem P16597823138856235406.correct : P16597823138856235406.Spec := by
  intro n
  simp only [A117806, Nat.add_sub_cancel]

end A117806

/-! ## A117806.P500064856028642737

`A316843(A332999(n+1)+1+n)`
-/

namespace A117806.P500064856028642737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A332999 (n + 1) + 1 + (n : ℤ)).toNat

end

end A117806.P500064856028642737

namespace A117806

/-- `A316843(A332999(n+1)+1+n)` -/
def P500064856028642737.Spec : Prop :=
  ∀ n, P500064856028642737.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P7092459437543403839

`A316843(A061498(2*(n+1))+n+1)`
-/

namespace A117806.P7092459437543403839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A061498 (2 * (n + 1)) + (n : ℤ) + 1).toNat

end

end A117806.P7092459437543403839

namespace A117806

/-- `A316843(A061498(2*(n+1))+n+1)` -/
def P7092459437543403839.Spec : Prop :=
  ∀ n, P7092459437543403839.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P8317321197639906041

`A276611(A293990(n)+A276611(n))`
-/

namespace A117806.P8317321197639906041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A293990 n + A276611 n).toNat

end

end A117806.P8317321197639906041

namespace A117806

/-- `A276611(A293990(n)+A276611(n))` -/
def P8317321197639906041.Spec : Prop :=
  ∀ n, P8317321197639906041.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P10665166056555108889

`A056556(A299406(n+1)+A121149(n))`
-/

namespace A117806.P10665166056555108889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A299406 (n + 1) + A121149 n).toNat

end

end A117806.P10665166056555108889

namespace A117806

/-- `A056556(A299406(n+1)+A121149(n))` -/
def P10665166056555108889.Spec : Prop :=
  ∀ n, P10665166056555108889.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P6516809590552527756

`A056556(A307425(n+1)+A121149(n))`
-/

namespace A117806.P6516809590552527756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A307425 (n + 1) + A121149 n).toNat

end

end A117806.P6516809590552527756

namespace A117806

/-- `A056556(A307425(n+1)+A121149(n))` -/
def P6516809590552527756.Spec : Prop :=
  ∀ n, P6516809590552527756.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P18347222914613071478

`A276611(A180447(n)+A054353(n+1))`
-/

namespace A117806.P18347222914613071478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A180447 n + A054353 (n + 1)).toNat

end

end A117806.P18347222914613071478

namespace A117806

/-- `A276611(A180447(n)+A054353(n+1))` -/
def P18347222914613071478.Spec : Prop :=
  ∀ n, P18347222914613071478.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P10786446324253835403

`A316843(A316846(A316842(n+2))+n)`
-/

namespace A117806.P10786446324253835403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A316846 (A316842 (n + 2)).toNat + (n : ℤ)).toNat

end

end A117806.P10786446324253835403

namespace A117806

/-- `A316843(A316846(A316842(n+2))+n)` -/
def P10786446324253835403.Spec : Prop :=
  ∀ n, P10786446324253835403.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P2357733206739377033

`A276611(A008619(n)+A276611(n)+n)`
-/

namespace A117806.P2357733206739377033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A008619 n + (A276611 n + (n : ℤ))).toNat

end

end A117806.P2357733206739377033

namespace A117806

/-- `A276611(A008619(n)+A276611(n)+n)` -/
def P2357733206739377033.Spec : Prop :=
  ∀ n, P2357733206739377033.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P7499124344598918946

`A316843(record[A227177(n)+A226143(n+1)])`
-/

namespace A117806.P7499124344598918946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227177 n + A226143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117806.P7499124344598918946

namespace A117806

/-- `A316843(record[A227177(n)+A226143(n+1)])` -/
def P7499124344598918946.Spec : Prop :=
  ∀ n, P7499124344598918946.a n = A117806 (n + 1)

end A117806

/-! ## A117806.P7880389645077715957

`A056556(A186497(2*n+1)+C(3, A001222(n+1)))`
-/

namespace A117806.P7880389645077715957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A186497 (2 * n + 1) + (Nat.choose 3 (A001222 (n + 1)).toNat : ℤ)).toNat

end

end A117806.P7880389645077715957

namespace A117806

/-- `A056556(A186497(2*n+1)+C(3, A001222(n+1)))` -/
def P7880389645077715957.Spec : Prop :=
  ∀ n, P7880389645077715957.a n = A117806 (n + 1)

end A117806

/-!
# A117808: Primes of the form ((2 + sqrt(3))^(2*k+1) + (2 - sqrt(3))^(2*k+1))/4.

The programs for A117808, there is no canonical definition to state claims against.
-/

/-! ## A117808.P759362911088910047

`or(1, A084156(A198196(n+1)))`
-/

namespace A117808.P759362911088910047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A084156 (A198196 (n + 1)).toNat)

end

end A117808.P759362911088910047

/-! ## A117808.P2122226058763525319

`abs(A108946(A198196(n+1)-1))`
-/

namespace A117808.P2122226058763525319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108946 (A198196 (n + 1) - 1).toNat|

end

end A117808.P2122226058763525319

/-! ## A117808.P18437389543290156801

`A084156(A198196(n+1))+A000007(n)`
-/

namespace A117808.P18437389543290156801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084156 (A198196 (n + 1)).toNat + A000007 n

end

end A117808.P18437389543290156801

/-!
# A117811: Two-column table read by rows: row n (n >= 1) gives a squarefree integer x and an integer y such that n = x*y^2.

The programs for A117811, there is no canonical definition to state claims against.
-/

/-! ## A117811.P3853490130134332581

`gcd(A130747(n+1), A161680(A262431(n)))`
-/

namespace A117811.P3853490130134332581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130747 (n + 1)) (A161680 (A262431 n).toNat)

end

end A117811.P3853490130134332581

/-! ## A117811.P5115101111482514333

`gcd(A000879(A023105(n)), A008619(n))`
-/

namespace A117811.P5115101111482514333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000879 (A023105 n).toNat) (A008619 n)

end

end A117811.P5115101111482514333

/-! ## A117811.P7464489256444094850

`A336643(A066838(n+1)*A328399(n))`
-/

namespace A117811.P7464489256444094850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A066838 (n + 1) * A328399 n).toNat

end

end A117811.P7464489256444094850

/-! ## A117811.P3859373225643469156

`gcd(A000463(n+1), A255857(2*(n+1)))`
-/

namespace A117811.P3859373225643469156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000463 (n + 1)) (A255857 (2 * (n + 1)))

end

end A117811.P3859373225643469156

/-! ## A117811.P6534876586552472117

`A336643(A008619(n)*A066838(n+1))`
-/

namespace A117811.P6534876586552472117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A008619 n * A066838 (n + 1)).toNat

end

end A117811.P6534876586552472117

/-!
# A117812: a(n) = n^(2*n) - 1.

The programs for A117812, the canonical program `A117812.P6241071822087768563` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117812 has offset 0).

The definition of A117812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(2*n)-1` (program `A117812.P6241071822087768563`, by `A117812.P6241071822087768563.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117812.P14841900728183990958

`n²^n-1`
-/

namespace A117812.P14841900728183990958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ n : ℤ) - 1

end

end A117812.P14841900728183990958

namespace A117812

/-- `n²^n-1` -/
def P14841900728183990958.Spec : Prop :=
  ∀ n, P14841900728183990958.a n = A117812 n

theorem P14841900728183990958.correct : P14841900728183990958.Spec := by
  intro n
  simp only [A117812, Nat.add_sub_cancel, A117812.P14841900728183990958.a, A117812.P6241071822087768563.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A117812

/-! ## A117812.P6241071822087768563

`n^(2*n)-1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117812

/-- `n^(2*n)-1` -/
def P6241071822087768563.Spec : Prop :=
  ∀ n, P6241071822087768563.a n = A117812 n

theorem P6241071822087768563.correct : P6241071822087768563.Spec := by
  intro n
  simp only [A117812]

end A117812

/-! ## A117812.P10930236119661329649

`floor(cot(n^-n)²)`
-/

namespace A117812.P10930236119661329649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((n : ℚ) ^ (-(n : ℤ) : ℤ) : ℝ) ^ 2⌋

end

end A117812.P10930236119661329649

namespace A117812

/-- `floor(cot(n^-n)²)` -/
def P10930236119661329649.Spec : Prop :=
  ∀ n, P10930236119661329649.a n = A117812 n

end A117812

/-! ## A117812.P11359285512268321519

`xor(-1, -(n^n)²)`
-/

namespace A117812.P11359285512268321519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((n ^ n) ^ 2 : ℤ))

end

end A117812.P11359285512268321519

namespace A117812

/-- `xor(-1, -(n^n)²)` -/
def P11359285512268321519.Spec : Prop :=
  ∀ n, P11359285512268321519.a n = A117812 n

end A117812

/-! ## A117812.P4962820114720445512

`round(cot(1/n^n)²)`
-/

namespace A117812.P4962820114720445512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (1 / (n ^ n : ℚ) : ℝ) ^ 2)

end

end A117812.P4962820114720445512

namespace A117812

/-- `round(cot(1/n^n)²)` -/
def P4962820114720445512.Spec : Prop :=
  ∀ n, P4962820114720445512.a n = A117812 n

end A117812

/-!
# A117813: Consider 1-D random walk with jumps up to the third neighbor, i.e., set of possible jumps is {-3,-2,-1,+1,+2,+3}. Sequence gives number of paths of length n ending at origin.

The programs for A117813, there is no canonical definition to state claims against.
-/

/-! ## A117813.P12661900556463569481

`A030187((4^n+6^n)/2)+(2^n-2)*n*2^(n-3)`
-/

namespace A117813.P12661900556463569481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030187 (SequenceMachineLib.roundAway ((4 ^ n + 6 ^ n : ℚ) / 2)).toNat : ℚ) + ((2 ^ n : ℤ) - 2 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))

end

end A117813.P12661900556463569481

/-!
# A117814: a(n) = 1 if at least one of decimal digits of n is a prime, otherwise a(n)=0.

The programs for A117814, there is no canonical definition to state claims against.
-/

/-! ## A117814.P15170374548403322964

`floor(sqrt(A193238(n)))`
-/

namespace A117814.P15170374548403322964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A193238 n)

end

end A117814.P15170374548403322964

/-! ## A117814.P4038036423062010035

`char[comp[A019516(n)]]`
-/

namespace A117814.P4038036423062010035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019516 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A117814.P4038036423062010035

/-! ## A117814.P299388804574527577

`char[A118950(n+1)]`
-/

namespace A117814.P299388804574527577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A117814.P299388804574527577

/-! ## A117814.P2856595440999994678

`char[comp[A084984(n+1)]]`
-/

namespace A117814.P2856595440999994678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A117814.P2856595440999994678

/-! ## A117814.P17715375934778916820

`char[comp[A085558(n+1)]]`
-/

namespace A117814.P17715375934778916820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A117814.P17715375934778916820

/-! ## A117814.P3378005497864734333

`xor(1, char[A019516(n+1)])`
-/

namespace A117814.P3378005497864734333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A117814.P3378005497864734333

/-! ## A117814.P2534455504645186991

`A193238(A211396(n))`
-/

namespace A117814.P2534455504645186991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A211396 n).toNat

end

end A117814.P2534455504645186991

/-! ## A117814.P39228894108808098

`A000045(∑{digits}[n, A075053(#)])`
-/

namespace A117814.P39228894108808098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A075053 x).sum.toNat

end

end A117814.P39228894108808098

/-! ## A117814.P15271812941939535589

`A000045(∑{digits}[n, A090418(#)])`
-/

namespace A117814.P15271812941939535589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A090418 x).sum.toNat

end

end A117814.P15271812941939535589

/-! ## A117814.P4097417448784222006

`A001222(∑{digits}[n, A075053(#)]+1)`
-/

namespace A117814.P4097417448784222006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A075053 x).sum + 1).toNat

end

end A117814.P4097417448784222006

/-!
# A117815: Composite numbers at least one of whose decimal digits is prime.

The programs for A117815, the canonical program `A117815.P4799667150114690771` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117815 has offset 1).

The definition of A117815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117815.P4799667150114690771

`filter[A118950(n+1), A005171(#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A117815

/-- `filter[A118950(n+1), A005171(#)]` -/
def P4799667150114690771.Spec : Prop :=
  ∀ n, P4799667150114690771.a n = A117815 (n + 1)

theorem P4799667150114690771.correct : P4799667150114690771.Spec := by
  intro n
  simp only [A117815, Nat.add_sub_cancel]

end A117815

/-! ## A117815.P16299824356082782374

`filter[A118950(n+1), A066247(#)]`
-/

namespace A117815.P16299824356082782374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A117815.P16299824356082782374

namespace A117815

/-- `filter[A118950(n+1), A066247(#)]` -/
def P16299824356082782374.Spec : Prop :=
  ∀ n, P16299824356082782374.a n = A117815 (n + 1)

end A117815

/-! ## A117815.P2305800761724087057

`∩[A002808(n+1), A118950(n+1)]`
-/

namespace A117815.P2305800761724087057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117815.P2305800761724087057

namespace A117815

/-- `∩[A002808(n+1), A118950(n+1)]` -/
def P2305800761724087057.Spec : Prop :=
  ∀ n, (P2305800761724087057.a n : ℤ) = A117815 (n + 1)

end A117815

/-! ## A117815.P4972334783270685793

`∩[A018252(n+1), A118950(n+1)]`
-/

namespace A117815.P4972334783270685793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117815.P4972334783270685793

namespace A117815

/-- `∩[A018252(n+1), A118950(n+1)]` -/
def P4972334783270685793.Spec : Prop :=
  ∀ n, (P4972334783270685793.a n : ℤ) = A117815 (n + 1)

end A117815

/-! ## A117815.P499452927387967380

`∩[A118950(n+1), A141468(n+1)]`
-/

namespace A117815.P499452927387967380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117815.P499452927387967380

namespace A117815

/-- `∩[A118950(n+1), A141468(n+1)]` -/
def P499452927387967380.Spec : Prop :=
  ∀ n, (P499452927387967380.a n : ℤ) = A117815 (n + 1)

end A117815

/-! ## A117815.P1064478134477275359

`∩[A056653(n+1), A118950(n+1)]`
-/

namespace A117815.P1064478134477275359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117815.P1064478134477275359

namespace A117815

/-- `∩[A056653(n+1), A118950(n+1)]` -/
def P1064478134477275359.Spec : Prop :=
  ∀ n, (P1064478134477275359.a n : ℤ) = A117815 (n + 1)

end A117815

/-! ## A117815.P6780278095343000999

`eq[0, A055672(n)^A193238(n)]`
-/

namespace A117815.P6780278095343000999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055672 n : ℚ) ^ (A193238 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A117815.P6780278095343000999

namespace A117815

/-- `eq[0, A055672(n)^A193238(n)]` -/
def P6780278095343000999.Spec : Prop :=
  ∀ n, (P6780278095343000999.a n : ℤ) = A117815 (n + 1)

end A117815

/-! ## A117815.P2335734984083976944

`eq[0, A339579(n+1)^A193238(n)]`
-/

namespace A117815.P2335734984083976944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339579 (n + 1) : ℚ) ^ (A193238 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A117815.P2335734984083976944

namespace A117815

/-- `eq[0, A339579(n+1)^A193238(n)]` -/
def P2335734984083976944.Spec : Prop :=
  ∀ n, (P2335734984083976944.a n : ℤ) = A117815 (n + 1)

end A117815

/-! ## A117815.P13279883887262175690

`eq[A055671(n), A276729(A211396(n))]`
-/

namespace A117815.P13279883887262175690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A211396 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117815.P13279883887262175690

namespace A117815

/-- `eq[A055671(n), A276729(A211396(n))]` -/
def P13279883887262175690.Spec : Prop :=
  ∀ n, (P13279883887262175690.a n : ℤ) = A117815 (n + 1)

end A117815

/-! ## A117815.P15907505476582735260

`eq[A055672(n), A276729(A211396(n))]`
-/

namespace A117815.P15907505476582735260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A211396 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117815.P15907505476582735260

namespace A117815

/-- `eq[A055672(n), A276729(A211396(n))]` -/
def P15907505476582735260.Spec : Prop :=
  ∀ n, (P15907505476582735260.a n : ℤ) = A117815 (n + 1)

end A117815

/-! ## A117815.P2015926495394965914

`A026239(p?[A026239(A118950(n+1))])`
-/

namespace A117815.P2015926495394965914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A118950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A117815.P2015926495394965914

namespace A117815

/-- `A026239(p?[A026239(A118950(n+1))])` -/
def P2015926495394965914.Spec : Prop :=
  ∀ n, P2015926495394965914.a n = A117815 (n + 1)

end A117815

/-!
# A117818: a(n) = n if n is 1 or a prime, otherwise a(n) = n divided by the least prime factor of n (A032742(n)).

The programs for A117818, the canonical program `A117818.P13750499494850796856` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117818 has offset 1).

The definition of A117818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117818.P11194365696595486649

`(n+1)/A107286(n+1)`
-/

namespace A117818.P11194365696595486649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A107286 (n + 1) : ℚ)

end

end A117818.P11194365696595486649

namespace A117818

/-- `(n+1)/A107286(n+1)` -/
def P11194365696595486649.Spec : Prop :=
  ∀ n, P11194365696595486649.a n = (A117818 (n + 1) : ℚ)

end A117818

/-! ## A117818.P13750499494850796856

`A166260(n+1)+A032742(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A117818

/-- `A166260(n+1)+A032742(n+1)` -/
def P13750499494850796856.Spec : Prop :=
  ∀ n, P13750499494850796856.a n = A117818 (n + 1)

theorem P13750499494850796856.correct : P13750499494850796856.Spec := by
  intro n
  simp only [A117818, Nat.add_sub_cancel]

end A117818

/-! ## A117818.P7503529163604774494

`A220096(n+1)+A080339(n+1)`
-/

namespace A117818.P7503529163604774494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (n + 1) + A080339 (n + 1)

end

end A117818.P7503529163604774494

namespace A117818

/-- `A220096(n+1)+A080339(n+1)` -/
def P7503529163604774494.Spec : Prop :=
  ∀ n, P7503529163604774494.a n = A117818 (n + 1)

end A117818

/-! ## A117818.P16908715884948429257

`A322982(n+1)-A166260(n+1)`
-/

namespace A117818.P16908715884948429257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (n + 1) - A166260 (n + 1)

end

end A117818.P16908715884948429257

namespace A117818

/-- `A322982(n+1)-A166260(n+1)` -/
def P16908715884948429257.Spec : Prop :=
  ∀ n, P16908715884948429257.a n = A117818 (n + 1)

end A117818

/-! ## A117818.P15395032669202646682

`A032742(n+1)*A089026(n+1)`
-/

namespace A117818.P15395032669202646682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) * A089026 (n + 1)

end

end A117818.P15395032669202646682

namespace A117818

/-- `A032742(n+1)*A089026(n+1)` -/
def P15395032669202646682.Spec : Prop :=
  ∀ n, P15395032669202646682.a n = A117818 (n + 1)

end A117818

/-! ## A117818.P2031206756193910973

`(n+1)/A020639(A005730(n+1))`
-/

namespace A117818.P2031206756193910973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A005730 (n + 1)).toNat : ℚ)

end

end A117818.P2031206756193910973

namespace A117818

/-- `(n+1)/A020639(A005730(n+1))` -/
def P2031206756193910973.Spec : Prop :=
  ∀ n, P2031206756193910973.a n = (A117818 (n + 1) : ℚ)

end A117818

/-! ## A117818.P3557657525984537273

`(n+1)/A020639(A048671(n+1))`
-/

namespace A117818.P3557657525984537273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A048671 (n + 1)).toNat : ℚ)

end

end A117818.P3557657525984537273

namespace A117818

/-- `(n+1)/A020639(A048671(n+1))` -/
def P3557657525984537273.Spec : Prop :=
  ∀ n, P3557657525984537273.a n = (A117818 (n + 1) : ℚ)

end A117818

/-! ## A117818.P1365211181402470832

`(n+1)/A020639(A052126(n+1))`
-/

namespace A117818.P1365211181402470832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A052126 (n + 1)).toNat : ℚ)

end

end A117818.P1365211181402470832

namespace A117818

/-- `(n+1)/A020639(A052126(n+1))` -/
def P1365211181402470832.Spec : Prop :=
  ∀ n, P1365211181402470832.a n = (A117818 (n + 1) : ℚ)

end A117818

/-! ## A117818.P15857485392873408873

`(n+1)/A020639(A072504(n+1))`
-/

namespace A117818.P15857485392873408873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A072504 (n + 1)).toNat : ℚ)

end

end A117818.P15857485392873408873

namespace A117818

/-- `(n+1)/A020639(A072504(n+1))` -/
def P15857485392873408873.Spec : Prop :=
  ∀ n, P15857485392873408873.a n = (A117818 (n + 1) : ℚ)

end A117818

/-! ## A117818.P13182439564942943446

`(n+1)/A020639(A144907(n+1))`
-/

namespace A117818.P13182439564942943446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A144907 (n + 1)).toNat : ℚ)

end

end A117818.P13182439564942943446

namespace A117818

/-- `(n+1)/A020639(A144907(n+1))` -/
def P13182439564942943446.Spec : Prop :=
  ∀ n, P13182439564942943446.a n = (A117818 (n + 1) : ℚ)

end A117818

/-! ## A117818.P7435654887144871904

`A130064(n+1)/A085392(n+1)`
-/

namespace A117818.P7435654887144871904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130064 (n + 1) : ℚ) / (A085392 (n + 1) : ℚ)

end

end A117818.P7435654887144871904

namespace A117818

/-- `A130064(n+1)/A085392(n+1)` -/
def P7435654887144871904.Spec : Prop :=
  ∀ n, P7435654887144871904.a n = (A117818 (n + 1) : ℚ)

end A117818

/-! ## A117818.P1330375336507747020

`(n+1)/A020639(A322820(n+1))`
-/

namespace A117818.P1330375336507747020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A322820 (n + 1)).toNat : ℚ)

end

end A117818.P1330375336507747020

namespace A117818

/-- `(n+1)/A020639(A322820(n+1))` -/
def P1330375336507747020.Spec : Prop :=
  ∀ n, P1330375336507747020.a n = (A117818 (n + 1) : ℚ)

end A117818

/-! ## A117818.P13297838339087638737

`(n+1)/A020639(A338669(n+1))`
-/

namespace A117818.P13297838339087638737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A338669 (n + 1)).toNat : ℚ)

end

end A117818.P13297838339087638737

namespace A117818

/-- `(n+1)/A020639(A338669(n+1))` -/
def P13297838339087638737.Spec : Prop :=
  ∀ n, P13297838339087638737.a n = (A117818 (n + 1) : ℚ)

end A117818

/-! ## A117818.P13562925514557205668

`gcd(A130064(n+1), A371573(n+1))`
-/

namespace A117818.P13562925514557205668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130064 (n + 1)) (A371573 (n + 1))

end

end A117818.P13562925514557205668

namespace A117818

/-- `gcd(A130064(n+1), A371573(n+1))` -/
def P13562925514557205668.Spec : Prop :=
  ∀ n, (P13562925514557205668.a n : ℤ) = A117818 (n + 1)

end A117818

/-! ## A117818.P7070404167312893632

`lcm(A006530(n+1), A032742(n+1))`
-/

namespace A117818.P7070404167312893632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (n + 1)) (A032742 (n + 1))

end

end A117818.P7070404167312893632

namespace A117818

/-- `lcm(A006530(n+1), A032742(n+1))` -/
def P7070404167312893632.Spec : Prop :=
  ∀ n, (P7070404167312893632.a n : ℤ) = A117818 (n + 1)

end A117818

/-! ## A117818.P14254046177651406399

`lcm(A063928(n+1), A072505(n+1))`
-/

namespace A117818.P14254046177651406399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063928 (n + 1)) (A072505 (n + 1))

end

end A117818.P14254046177651406399

namespace A117818

/-- `lcm(A063928(n+1), A072505(n+1))` -/
def P14254046177651406399.Spec : Prop :=
  ∀ n, (P14254046177651406399.a n : ℤ) = A117818 (n + 1)

end A117818

/-! ## A117818.P2714125161703231601

`xor(A005451(n+1), A106409(n+1))`
-/

namespace A117818.P2714125161703231601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005451 (n + 1)) (A106409 (n + 1))

end

end A117818.P2714125161703231601

namespace A117818

/-- `xor(A005451(n+1), A106409(n+1))` -/
def P2714125161703231601.Spec : Prop :=
  ∀ n, P2714125161703231601.a n = A117818 (n + 1)

end A117818

/-! ## A117818.P9524805457696971975

`(A322982(n+1)+A032742(n+1))/2`
-/

namespace A117818.P9524805457696971975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322982 (n + 1) + A032742 (n + 1) : ℚ) / 2

end

end A117818.P9524805457696971975

namespace A117818

/-- `(A322982(n+1)+A032742(n+1))/2` -/
def P9524805457696971975.Spec : Prop :=
  ∀ n, P9524805457696971975.a n = (A117818 (n + 1) : ℚ)

end A117818

/-! ## A117818.P15945669320706079280

`A089026(n+1)-A060681(n+1)+n`
-/

namespace A117818.P15945669320706079280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) - A060681 (n + 1) + (n : ℤ)

end

end A117818.P15945669320706079280

namespace A117818

/-- `A089026(n+1)-A060681(n+1)+n` -/
def P15945669320706079280.Spec : Prop :=
  ∀ n, P15945669320706079280.a n = A117818 (n + 1)

theorem P15945669320706079280.correct : P15945669320706079280.Spec := by
  intro n
  simp only [A117818, Nat.add_sub_cancel, A117818.P15945669320706079280.a, A117818.P13750499494850796856.a, A032742, A032742.P14489579072839730134.a, A060681, A060681.P11747361826650309872.a, A089026, A089026.P9133057752167928232.a, A166260, A166260.P5468160099319009475.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A014963, A014963.P5975177236000282614.a, A020639, A020639.P7578813688609615429.a, A008578, A008578.P3639467937083264764.a, A055396, A055396.P18305262754425103137.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A061395, A061395.P8431317036300486107.a, A080304, A080304.P9910366703239988167.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A117818

/-!
# A117819: Final digit d of n is in the sequence iff d is prime or n is prime.

The programs for A117819, there is no canonical definition to state claims against.
-/

/-! ## A117819.P2012180650632366585

`A118759(p?[A331097(n)])%10`
-/

namespace A117819.P2012180650632366585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 10

end

end A117819.P2012180650632366585

/-! ## A117819.P10741777681191282370

`A274206(A118759(p?[A331097(n)]))`
-/

namespace A117819.P10741777681191282370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (A118759 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A117819.P10741777681191282370

/-! ## A117819.P3432600236479950149

`A274206(p?[A331097(n)])%A254751(n+1)`
-/

namespace A117819.P3432600236479950149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A254751 (n + 1))

end

end A117819.P3432600236479950149

/-! ## A117819.P17537726487569386647

`p?[A331097(n)%A342354(n)]%10`
-/

namespace A117819.P17537726487569386647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331097 n) (A342354 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 10

end

end A117819.P17537726487569386647

/-!
# A117820: Numbers k such that UnitaryPhi(2*UnitaryPhi(k)) = k.

The programs for A117820, there is no canonical definition to state claims against.
-/

/-! ## A117820.P2708390079149785755

`A074135(∑{d}[n+1, ceil(root(2, #))]^n)`
-/

namespace A117820.P2708390079149785755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 ((∑ d ∈ Nat.divisors (f1 n), ⌈(2 : ℝ) ^ (1 / (d : ℝ))⌉) ^ n).toNat

end

end A117820.P2708390079149785755

/-!
# A117822: a(0) = a(1) = 1; for n >= 2, a(n) = a(n-1) + a(n-2) - (n-1) if that number is positive and not already in the sequence, otherwise a(n) = a(n-1) + a(n-2) + (n-1).

The programs for A117822, the canonical program `A117822.P16286227619364245073` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117822 has offset 0).

The definition of A117822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117822.P16286227619364245073

`a(n-1)+a(n-2)-n+1` with `a(0)=1, a(1)=1, a(2)=3, a(3)=2, a(4)=8, a(5)=6, a(6)=9, a(7)=21`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117822

/-- `a(n-1)+a(n-2)-n+1` -/
def P16286227619364245073.Spec : Prop :=
  ∀ n, P16286227619364245073.a n = A117822 n

theorem P16286227619364245073.correct : P16286227619364245073.Spec := by
  intro n
  simp only [A117822]

end A117822

/-!
# A117824: a(0) = 0, a(1) = 1; for n >= 2, a(n) = a(n-1) + a(n-2) - (n-1) if that number is positive and not already in the sequence, otherwise a(n) = a(n-1) + a(n-2) + (n-1).

The programs for A117824, the canonical program `A117824.P15118720807932227810` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117824 has offset 0).

The definition of A117824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117824.P15118720807932227810

`a(n-1)+a(n-2)-n+1` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=4, a(5)=13`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117824

/-- `a(n-1)+a(n-2)-n+1` -/
def P15118720807932227810.Spec : Prop :=
  ∀ n, P15118720807932227810.a n = A117824 n

theorem P15118720807932227810.correct : P15118720807932227810.Spec := by
  intro n
  simp only [A117824]

end A117824

/-! ## A117824.P6970092411678830547

`A303776(A303789(n)+A000073(n))`
-/

namespace A117824.P6970092411678830547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303776 (A303789 n + A000073 n).toNat

end

end A117824.P6970092411678830547

namespace A117824

/-- `A303776(A303789(n)+A000073(n))` -/
def P6970092411678830547.Spec : Prop :=
  ∀ n, P6970092411678830547.a n = A117824 n

end A117824

/-!
# A117826: First four terms of the sequence are doubled, then those numbers are tripled and then those numbers are quadrupled, etc.

The programs for A117826, the canonical program `A117826.P12196296091663511553` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117826 has offset 1).

The definition of A117826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117826.P11090865621211858356

`∑[char[4*n]]!*A010883(n)`
-/

namespace A117826.P11090865621211858356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A010883 n

end

end A117826.P11090865621211858356

namespace A117826

/-- `∑[char[4*n]]!*A010883(n)` -/
def P11090865621211858356.Spec : Prop :=
  ∀ n, P11090865621211858356.a n = A117826 (n + 1)

end A117826

/-! ## A117826.P12196296091663511553

`a(n-4)*A008621(n)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117826

/-- `a(n-4)*A008621(n)` -/
def P12196296091663511553.Spec : Prop :=
  ∀ n, P12196296091663511553.a n = A117826 (n + 1)

theorem P12196296091663511553.correct : P12196296091663511553.Spec := by
  intro n
  simp only [A117826, Nat.add_sub_cancel]

end A117826

/-! ## A117826.P10877521378357485020

`and(2*A008621(n)!*A010883(n), -2)/2`
-/

namespace A117826.P10877521378357485020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (2 * ((Nat.factorial (A008621 n).toNat : ℤ) * A010883 n)) (-2) : ℚ) / 2

end

end A117826.P10877521378357485020

namespace A117826

/-- `and(2*A008621(n)!*A010883(n), -2)/2` -/
def P10877521378357485020.Spec : Prop :=
  ∀ n, P10877521378357485020.a n = (A117826 (n + 1) : ℚ)

end A117826

/-! ## A117826.P5206153811020588012

`A000142(A008621(n))*A010883(n)`
-/

namespace A117826.P5206153811020588012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A008621 n).toNat * A010883 n

end

end A117826.P5206153811020588012

namespace A117826

/-- `A000142(A008621(n))*A010883(n)` -/
def P5206153811020588012.Spec : Prop :=
  ∀ n, P5206153811020588012.a n = A117826 (n + 1)

end A117826

/-! ## A117826.P15280601476982666933

`A010883(n)*A081123(A004526(n)+2)`
-/

namespace A117826.P15280601476982666933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 n * A081123 (A004526 n + 2).toNat

end

end A117826.P15280601476982666933

namespace A117826

/-- `A010883(n)*A081123(A004526(n)+2)` -/
def P15280601476982666933.Spec : Prop :=
  ∀ n, P15280601476982666933.a n = A117826 (n + 1)

end A117826

/-!
# A117827: A117830 sorted and duplicates removed.

The programs for A117827, there is no canonical definition to state claims against.
-/

/-! ## A117827.P2158869627925446231

`A055198(n+1)+4`
-/

namespace A117827.P2158869627925446231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055198 (n + 1) + 4

end

end A117827.P2158869627925446231

/-! ## A117827.P10220461751194994457

`lt[A117831(n+1), 1]+1`
-/

namespace A117827.P10220461751194994457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A117827.P10220461751194994457

/-! ## A117827.P7350574923297925229

`A020705(A055198(n+1))`
-/

namespace A117827.P7350574923297925229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A055198 (n + 1)).toNat

end

end A117827.P7350574923297925229

/-! ## A117827.P12243380946086080493

`eq[0, A117831(A028310(n))]`
-/

namespace A117827.P12243380946086080493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117827.P12243380946086080493

/-! ## A117827.P5088253869613267638

`A153152(eq[0, A117831(n+1)])`
-/

namespace A117827.P5088253869613267638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117827.P5088253869613267638

/-! ## A117827.P18194080372815983687

`eq[0, A117831(A233583(n+1))]`
-/

namespace A117827.P18194080372815983687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117827.P18194080372815983687

/-! ## A117827.P15434435656242892442

`eq[0, A117831(A000038(n)+n)]`
-/

namespace A117827.P15434435656242892442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117827.P15434435656242892442

/-! ## A117827.P17928848917436435545

`A000027(eq[0, A117831(n+1)]+1)`
-/

namespace A117827.P17928848917436435545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A117827.P17928848917436435545

/-! ## A117827.P6225969894628979129

`A008611(3*eq[0, A117831(n+1)])`
-/

namespace A117827.P6225969894628979129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117827.P6225969894628979129

/-! ## A117827.P14677796514307106352

`A008620(3*eq[0, A117831(n+1)])`
-/

namespace A117827.P14677796514307106352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117827.P14677796514307106352

/-!
# A117828: Start with 1 and repeatedly reverse the decimal digits and add 4 to get the next term.

The programs for A117828, there is no canonical definition to state claims against.
-/

/-! ## A117828.P5205760923942567928

`A004086(a(n-1))+4` with `a(0)=1`
-/

namespace A117828.P5205760923942567928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 4

end

end A117828.P5205760923942567928

/-!
# A117829: Start with 3 and repeatedly reverse the digits and add 4 to get the next term.

The programs for A117829, there is no canonical definition to state claims against.
-/

/-! ## A117829.P3151702908806077876

`A004086(a(n-1))+4` with `a(0)=3`
-/

namespace A117829.P3151702908806077876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004086 (a (n - 1)).toNat + 4

end

end A117829.P3151702908806077876

/-!
# A117830: Let S_m be the infinite sequence formed by starting with m and repeatedly reversing the digits and adding 4 to get the next term. For all m < 1015, S_m enters the cycle of length 54 whose terms are shown here.

The programs for A117830, there is no canonical definition to state claims against.
-/

/-! ## A117830.P14955043361986542466

`A117828(n+2)`
-/

namespace A117830.P14955043361986542466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117828 (n + 2)

end

end A117830.P14955043361986542466

/-!
# A117832: Triangular numbers for which the product of the digits is an octagonal number.

The programs for A117832, there is no canonical definition to state claims against.
-/

/-! ## A117832.P11741450362938002335

`A117833(A032555(n+1))`
-/

namespace A117832.P11741450362938002335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117833 (A032555 (n + 1)).toNat

end

end A117832.P11741450362938002335

/-! ## A117832.P11547406531477915083

`A117833(A032559(n+1))`
-/

namespace A117832.P11547406531477915083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117833 (A032559 (n + 1)).toNat

end

end A117832.P11547406531477915083

/-! ## A117832.P4656616730539065486

`A117833(A077739(n+1))`
-/

namespace A117832.P4656616730539065486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117833 (A077739 (n + 1)).toNat

end

end A117832.P4656616730539065486

/-! ## A117832.P17640057629376348233

`A117833(A078213(n+1))`
-/

namespace A117832.P17640057629376348233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117833 (A078213 (n + 1)).toNat

end

end A117832.P17640057629376348233

/-! ## A117832.P4975549749586968109

`A117833(A082217(n+1))`
-/

namespace A117832.P4975549749586968109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117833 (A082217 (n + 1)).toNat

end

end A117832.P4975549749586968109

/-!
# A117834: Triangular numbers with consecutive digits.

The programs for A117834, there is no canonical definition to state claims against.
-/

/-! ## A117834.P6166941573034031689

`C(A309352(n)+n, 2)`
-/

namespace A117834.P6166941573034031689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A309352 n + (n : ℤ)).toNat 2

end

end A117834.P6166941573034031689

/-! ## A117834.P7674448617230970

`C(∑[∏{e}[A249249(n), #]], 2)`
-/

namespace A117834.P7674448617230970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249249 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A117834.P7674448617230970

/-! ## A117834.P13546170977847726275

`∩[A357142(n+1), ∑[n]]`
-/

namespace A117834.P13546170977847726275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357142 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A117834.P13546170977847726275

/-! ## A117834.P4353899204995193393

`C(∑[A322391(2*(n+2))], 2)`
-/

namespace A117834.P4353899204995193393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322391 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A117834.P4353899204995193393

/-! ## A117834.P9758884727217336858

`C(∑[A033666(4*C(n+1, 5))], 2)`
-/

namespace A117834.P9758884727217336858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033666 (4 * Nat.choose (n + 1) 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A117834.P9758884727217336858

/-!
# A117835: Prime numbers for which the product of the digits is a noncomposite number.

The programs for A117835, there is no canonical definition to state claims against.
-/

/-! ## A117835.P3144389710656066542

`∩[A030291(n+1), A307714(n+1)]`
-/

namespace A117835.P3144389710656066542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117835.P3144389710656066542

/-! ## A117835.P1440431543983065691

`∪[A022011(n+1), A046703(n+1)]`
-/

namespace A117835.P1440431543983065691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117835.P1440431543983065691

/-! ## A117835.P10850196016328713515

`∪[A022545(n+1), A046703(n+1)]`
-/

namespace A117835.P10850196016328713515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117835.P10850196016328713515

/-! ## A117835.P17415530317158462031

`∪[A027569(n+1), A046703(n+1)]`
-/

namespace A117835.P17415530317158462031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117835.P17415530317158462031

/-! ## A117835.P6337017794950277837

`∪[A046703(n+1), A213647(n+1)]`
-/

namespace A117835.P6337017794950277837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A117835.P6337017794950277837

/-!
# A117836: Semiprimes of the form floor(e^k).

The programs for A117836, there is no canonical definition to state claims against.
-/

/-! ## A117836.P16026031317833895128

`A000149(lt[A201278(n+4), A147309(n+1)])`
-/

namespace A117836.P16026031317833895128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201278 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A117836.P16026031317833895128

/-!
# A117837: Smaller of two consecutive prime numbers with the same digital product.

The programs for A117837, the canonical program `A117837.P9488833130415737170` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117837 has offset 1).

The definition of A117837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117837.P9488833130415737170

`A065091(eq[A053666(n+1), A053666(n+2)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A117837

/-- `A065091(eq[A053666(n+1), A053666(n+2)])` -/
def P9488833130415737170.Spec : Prop :=
  ∀ n, P9488833130415737170.a n = A117837 (n + 1)

theorem P9488833130415737170.correct : P9488833130415737170.Spec := by
  intro n
  simp only [A117837, Nat.add_sub_cancel]

end A117837

/-! ## A117837.P3294471251066695228

`A000040(eq[A053666(n+1), A053666(n+2)]+1)`
-/

namespace A117837.P3294471251066695228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A117837.P3294471251066695228

namespace A117837

/-- `A000040(eq[A053666(n+1), A053666(n+2)]+1)` -/
def P3294471251066695228.Spec : Prop :=
  ∀ n, P3294471251066695228.a n = A117837 (n + 1)

end A117837

/-! ## A117837.P7526623703416101658

`A008578(eq[A053666(n+1), A053666(n+2)]+2)`
-/

namespace A117837.P7526623703416101658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A117837.P7526623703416101658

namespace A117837

/-- `A008578(eq[A053666(n+1), A053666(n+2)]+2)` -/
def P7526623703416101658.Spec : Prop :=
  ∀ n, P7526623703416101658.a n = A117837 (n + 1)

end A117837

/-!
# A117839: Primes of the form floor(Pi^k + e^k).

The programs for A117839, there is no canonical definition to state claims against.
-/

/-! ## A117839.P8983483573397486848

`A061675(A024629(n))`
-/

namespace A117839.P8983483573397486848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061675 (A024629 n).toNat

end

end A117839.P8983483573397486848

/-!
# A117840: Smaller of two consecutive prime numbers with the same multiplicative digital root.

The programs for A117840, there is no canonical definition to state claims against.
-/

/-! ## A117840.P3071843401904263327

`A065091(eq[A199975(n+1), A199975(n+2)])`
-/

namespace A117840.P3071843401904263327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199975 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A117840.P3071843401904263327

/-!
# A117841: Start with 1 and repeatedly reverse the digits and add 10 to get the next term.

The programs for A117841, there is no canonical definition to state claims against.
-/

/-! ## A117841.P2176159282265180810

`A004086(a(n-1))+10` with `a(0)=1`
-/

namespace A117841.P2176159282265180810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (a (n - 1)).toNat + 10

end

end A117841.P2176159282265180810

/-! ## A117841.P7347576509732659716

`A056964(a(n-1))+10-a(n-1)` with `a(0)=1`
-/

namespace A117841.P7347576509732659716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056964 (a (n - 1)).toNat + (10 - a (n - 1))

end

end A117841.P7347576509732659716

/-! ## A117841.P17782754818857380816

`A135020(2*a(n-1))+10` with `a(0)=1`
-/

namespace A117841.P17782754818857380816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135020 (2 * a (n - 1)).toNat + 10

end

end A117841.P17782754818857380816

/-! ## A117841.P363362649188101945

`∑[gcd(10, n%2)]%A355383(2*n+3)²`
-/

namespace A117841.P363362649188101945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A355383 (2 * n + 3) ^ 2)

end

end A117841.P363362649188101945

/-! ## A117841.P3626385818710487525

`∑[gcd(10, n%2)]%A250120(A002496(n+1))`
-/

namespace A117841.P3626385818710487525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A250120 (A002496 (n + 1)).toNat)

end

end A117841.P3626385818710487525

/-!
# A117842: Partial sum of smallest prime >= n (A007918).

The programs for A117842, the canonical program `A117842.P12081368974413782069` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117842 has offset 0).

The definition of A117842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117842.P12081368974413782069

`∑[A007918(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A117842

/-- `∑[A007918(n)]` -/
def P12081368974413782069.Spec : Prop :=
  ∀ n, P12081368974413782069.a n = A117842 n

theorem P12081368974413782069.correct : P12081368974413782069.Spec := by
  intro n
  simp only [A117842]

end A117842

/-! ## A117842.P10685705148370070244

`∑[A007920(n)+n]`
-/

namespace A117842.P10685705148370070244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117842.P10685705148370070244

namespace A117842

/-- `∑[A007920(n)+n]` -/
def P10685705148370070244.Spec : Prop :=
  ∀ n, P10685705148370070244.a n = A117842 n

theorem P10685705148370070244.correct : P10685705148370070244.Spec := by
  intro n
  simp only [A117842, Nat.add_sub_cancel, A117842.P10685705148370070244.f1, A117842.P10685705148370070244.a, A117842.P12081368974413782069.f1, A117842.P12081368974413782069.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A007920, A007920.P3719263903022372137.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117842

/-! ## A117842.P14488275354396344893

`∑[A151800(abs(1-n))]`
-/

namespace A117842.P14488275354396344893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117842.P14488275354396344893

namespace A117842

/-- `∑[A151800(abs(1-n))]` -/
def P14488275354396344893.Spec : Prop :=
  ∀ n, P14488275354396344893.a n = A117842 n

end A117842

/-! ## A117842.P7669941923107630831

`A151800(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A117842.P7669941923107630831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (n - 1) + a (n - 1)

end

end A117842.P7669941923107630831

namespace A117842

/-- `A151800(n-1)+a(n-1)` -/
def P7669941923107630831.Spec : Prop :=
  ∀ n, P7669941923107630831.a n = A117842 n

end A117842

/-! ## A117842.P14666798235863925920

`∑[A151800(n)]+2-A151800(n)`
-/

namespace A117842.P14666798235863925920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A151800 n)

end

end A117842.P14666798235863925920

namespace A117842

/-- `∑[A151800(n)]+2-A151800(n)` -/
def P14666798235863925920.Spec : Prop :=
  ∀ n, P14666798235863925920.a n = A117842 n

end A117842

/-! ## A117842.P5104550220485626817

`∑[A000040(∑[char[(n+1)*char[A000040(n+1)]]])]`
-/

namespace A117842.P5104550220485626817
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f4 j = (n : ℤ) then 1 else 0)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117842.P5104550220485626817

namespace A117842

/-- `∑[A000040(∑[char[(n+1)*char[A000040(n+1)]]])]` -/
def P5104550220485626817.Spec : Prop :=
  ∀ n, P5104550220485626817.a n = A117842 n

end A117842

/-! ## A117842.P2868882012815985605

`∑[A006530(2*A006530(A030664(n)))]`
-/

namespace A117842.P2868882012815985605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A006530 (A030664 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117842.P2868882012815985605

namespace A117842

/-- `∑[A006530(2*A006530(A030664(n)))]` -/
def P2868882012815985605.Spec : Prop :=
  ∀ n, P2868882012815985605.a n = A117842 n

end A117842

/-! ## A117842.P9904148694649951334

`∑[A006530(2*A030664(n))]`
-/

namespace A117842.P9904148694649951334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A030664 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117842.P9904148694649951334

namespace A117842

/-- `∑[A006530(2*A030664(n))]` -/
def P9904148694649951334.Spec : Prop :=
  ∀ n, P9904148694649951334.a n = A117842 n

end A117842

/-! ## A117842.P2528731084089387977

`∑[A230775((1-n)²+1)]`
-/

namespace A117842.P2528731084089387977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 ((1 - (n : ℤ)) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117842.P2528731084089387977

namespace A117842

/-- `∑[A230775((1-n)²+1)]` -/
def P2528731084089387977.Spec : Prop :=
  ∀ n, P2528731084089387977.a n = A117842 n

end A117842

/-! ## A117842.P3683846925111520935

`A230775(n²)+a(n-1)` with `a(0)=2`
-/

namespace A117842.P3683846925111520935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A230775 (n ^ 2) + a (n - 1)

end

end A117842.P3683846925111520935

namespace A117842

/-- `A230775(n²)+a(n-1)` -/
def P3683846925111520935.Spec : Prop :=
  ∀ n, P3683846925111520935.a n = A117842 n

end A117842

/-!
# A117843: Primes produced by a pyramidal ( three variable sequence) that is based on the Euler totient and multiperfect sigma functions.

The programs for A117843, there is no canonical definition to state claims against.
-/

/-! ## A117843.P8070121151699157763

`A124589(record[A105248(n)])`
-/

namespace A117843.P8070121151699157763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124589 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A117843.P8070121151699157763

/-! ## A117843.P3301788266312350485

`A133956(A342951(n+1))`
-/

namespace A117843.P3301788266312350485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133956 (A342951 (n + 1)).toNat

end

end A117843.P3301788266312350485

/-! ## A117843.P4271161390255551524

`A133956(∑[A208059(n+1)])`
-/

namespace A117843.P4271161390255551524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133956 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A117843.P4271161390255551524

/-! ## A117843.P15877353872757015063

`A247142(A165877(n)+1+n)`
-/

namespace A117843.P15877353872757015063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247142 (A165877 n + 1 + (n : ℤ)).toNat

end

end A117843.P15877353872757015063

/-!
# A117846: Given n, define a(n) as follows: let a sequence b(k) be defined by b(k+1)=b(k)+b(k)mod k; b(1)=2n-1. (Here b(k)mod k denotes the least nonnegative residue of b(k) modulo k). Let a(n) be the common value of b(k+1)-b(k) for all large k if such exists; otherwise let a(n) be 0.

The programs for A117846, there is no canonical definition to state claims against.
-/

/-! ## A117846.P17448794695655404531

`A253387(Δ[n²])`
-/

namespace A117846.P17448794695655404531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253387 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A117846.P17448794695655404531

/-! ## A117846.P14291718202624557833

`and(-1, A253387(2*(n+1)))`
-/

namespace A117846.P14291718202624557833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A253387 (2 * (n + 1)))

end

end A117846.P14291718202624557833

/-! ## A117846.P3661231797710222298

`A000027(A253387(2*(n+1)))`
-/

namespace A117846.P3661231797710222298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A253387 (2 * (n + 1))).toNat

end

end A117846.P3661231797710222298

/-! ## A117846.P10758500920669581525

`lcm(A033999(n), A253387(2*(n+1)))`
-/

namespace A117846.P10758500920669581525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253387 (2 * (n + 1)))

end

end A117846.P10758500920669581525

/-! ## A117846.P2936768979055821466

`or(A000007(n), A253387(2*(n+1)))`
-/

namespace A117846.P2936768979055821466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A253387 (2 * (n + 1)))

end

end A117846.P2936768979055821466

/-! ## A117846.P4520658504307872278

`filter[A253387(2*n+1), A071038(#)]`
-/

namespace A117846.P4520658504307872278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253387 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071038 (f1 j).toNat = 1) n)

end

end A117846.P4520658504307872278

/-! ## A117846.P16772648303893947352

`filter[A253387(2*n+1), A236861(#)]`
-/

namespace A117846.P16772648303893947352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253387 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A117846.P16772648303893947352

/-! ## A117846.P17260175254347087309

`filter[A253387(2*n+1), A296077(#)]`
-/

namespace A117846.P17260175254347087309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253387 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296077 (f1 j).toNat = 1) n)

end

end A117846.P17260175254347087309

/-! ## A117846.P5509230431527244479

`filter[A253387(2*n+1), A296079(#)]`
-/

namespace A117846.P5509230431527244479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253387 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A117846.P5509230431527244479

/-! ## A117846.P4238141884409077381

`filter[A253387(2*n+1), A307430(#)]`
-/

namespace A117846.P4238141884409077381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253387 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A117846.P4238141884409077381

/-!
# A117847: Numbers k such that A060256(k)*prime(k)# - 1 is a Sophie Germain prime, where prime(k)# is the k-th primorial.

The programs for A117847, there is no canonical definition to state claims against.
-/

/-! ## A117847.P6285326179665992227

`record[A275332(A029133(n))+1]`
-/

namespace A117847.P6285326179665992227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275332 (A029133 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117847.P6285326179665992227

/-! ## A117847.P9798358410252403465

`eq[A026552(n), A185215(A006530(n+1))]`
-/

namespace A117847.P9798358410252403465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117847.P9798358410252403465

/-! ## A117847.P6851690701273852643

`eq[A059317(n), A185214(A006530(n+1))]`
-/

namespace A117847.P6851690701273852643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185214 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117847.P6851690701273852643

/-! ## A117847.P16189302682582508149

`lt[A191305(n), A020639(A191316(2*n))]`
-/

namespace A117847.P16189302682582508149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A191316 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117847.P16189302682582508149

/-! ## A117847.P13844165715668156332

`lt[A350403(A350390(n+1)), A350399(n+3)]`
-/

namespace A117847.P13844165715668156332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350403 (A350390 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350399 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117847.P13844165715668156332

/-!
# A117849: a(n) = (A001359(n)^2 - 1)/4.

The programs for A117849, the canonical program `A117849.P15801158557398490809` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117849 has offset 1).

The definition of A117849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A117849.P15801158557398490809

`(A001359(n+1)²-1)/4`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A117849

/-- `(A001359(n+1)²-1)/4` -/
def P15801158557398490809.Spec : Prop :=
  ∀ n, P15801158557398490809.a n = (A117849 (n + 1) : ℚ)

end A117849

/-! ## A117849.P14699472847288552455

`2*C(A040040(n+1), 2)`
-/

namespace A117849.P14699472847288552455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A040040 (n + 1)).toNat 2

end

end A117849.P14699472847288552455

namespace A117849

/-- `2*C(A040040(n+1), 2)` -/
def P14699472847288552455.Spec : Prop :=
  ∀ n, (P14699472847288552455.a n : ℤ) = A117849 (n + 1)

end A117849

/-! ## A117849.P8196375342005801481

`floor((A001359(n+1)/2)²)`
-/

namespace A117849.P8196375342005801481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A001359 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A117849.P8196375342005801481

namespace A117849

/-- `floor((A001359(n+1)/2)²)` -/
def P8196375342005801481.Spec : Prop :=
  ∀ n, P8196375342005801481.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P3448616354140741034

`A040040(n+1)+A040040(n+1)*A243811(n+1)`
-/

namespace A117849.P3448616354140741034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) + A040040 (n + 1) * A243811 (n + 1)

end

end A117849.P3448616354140741034

namespace A117849

/-- `A040040(n+1)+A040040(n+1)*A243811(n+1)` -/
def P3448616354140741034.Spec : Prop :=
  ∀ n, P3448616354140741034.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P18303487851906848928

`(A001359(n+1)-A040040(n+1))*A040040(n+1)`
-/

namespace A117849.P18303487851906848928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) - A040040 (n + 1)) * A040040 (n + 1)

end

end A117849.P18303487851906848928

namespace A117849

/-- `(A001359(n+1)-A040040(n+1))*A040040(n+1)` -/
def P18303487851906848928.Spec : Prop :=
  ∀ n, P18303487851906848928.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P4697208500777032448

`A040040(n+1)*A040040(n+1)-A168497(n+2)`
-/

namespace A117849.P4697208500777032448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1) * A040040 (n + 1) - A168497 (n + 2)

end

end A117849.P4697208500777032448

namespace A117849

/-- `A040040(n+1)*A040040(n+1)-A168497(n+2)` -/
def P4697208500777032448.Spec : Prop :=
  ∀ n, P4697208500777032448.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P10325508359436104644

`A083555(A029707(n+1))`
-/

namespace A117849.P10325508359436104644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083555 (A029707 (n + 1)).toNat

end

end A117849.P10325508359436104644

namespace A117849

/-- `A083555(A029707(n+1))` -/
def P10325508359436104644.Spec : Prop :=
  ∀ n, P10325508359436104644.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P14562071651786190299

`A024701(A155752(n+1))`
-/

namespace A117849.P14562071651786190299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (A155752 (n + 1)).toNat

end

end A117849.P14562071651786190299

namespace A117849

/-- `A024701(A155752(n+1))` -/
def P14562071651786190299.Spec : Prop :=
  ∀ n, P14562071651786190299.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P8152435801125950409

`A087427(A107770(n+1))`
-/

namespace A117849.P8152435801125950409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087427 (A107770 (n + 1)).toNat

end

end A117849.P8152435801125950409

namespace A117849

/-- `A087427(A107770(n+1))` -/
def P8152435801125950409.Spec : Prop :=
  ∀ n, P8152435801125950409.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P9813321598503455849

`∩[A024701(n+1), A087427(n+3)]`
-/

namespace A117849.P9813321598503455849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087427 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117849.P9813321598503455849

namespace A117849

/-- `∩[A024701(n+1), A087427(n+3)]` -/
def P9813321598503455849.Spec : Prop :=
  ∀ n, (P9813321598503455849.a n : ℤ) = A117849 (n + 1)

end A117849

/-! ## A117849.P10782621281662608692

`floor(A108570(n+1)/4)`
-/

namespace A117849.P10782621281662608692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108570 (n + 1) : ℚ) / 4⌋

end

end A117849.P10782621281662608692

namespace A117849

/-- `floor(A108570(n+1)/4)` -/
def P10782621281662608692.Spec : Prop :=
  ∀ n, P10782621281662608692.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P10412553259542043833

`ceil(A137367(n+1)/4)`
-/

namespace A117849.P10412553259542043833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A137367 (n + 1) : ℚ) / 4⌉

end

end A117849.P10412553259542043833

namespace A117849

/-- `ceil(A137367(n+1)/4)` -/
def P10412553259542043833.Spec : Prop :=
  ∀ n, P10412553259542043833.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P13729748508181840574

`A103505(A040040(n+1))`
-/

namespace A117849.P13729748508181840574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (A040040 (n + 1)).toNat

end

end A117849.P13729748508181840574

namespace A117849

/-- `A103505(A040040(n+1))` -/
def P13729748508181840574.Spec : Prop :=
  ∀ n, P13729748508181840574.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P3544745946971126838

`A103505(A168497(n+2))`
-/

namespace A117849.P3544745946971126838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 (A168497 (n + 2)).toNat

end

end A117849.P3544745946971126838

namespace A117849

/-- `A103505(A168497(n+2))` -/
def P3544745946971126838.Spec : Prop :=
  ∀ n, P3544745946971126838.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P12962565510157014431

`A002378(A040040(n+1)-1)`
-/

namespace A117849.P12962565510157014431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A040040 (n + 1) - 1).toNat

end

end A117849.P12962565510157014431

namespace A117849

/-- `A002378(A040040(n+1)-1)` -/
def P12962565510157014431.Spec : Prop :=
  ∀ n, P12962565510157014431.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P5541878814684324612

`∩[A002378(n), A087427(n+3)]`
-/

namespace A117849.P5541878814684324612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087427 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117849.P5541878814684324612

namespace A117849

/-- `∩[A002378(n), A087427(n+3)]` -/
def P5541878814684324612.Spec : Prop :=
  ∀ n, (P5541878814684324612.a n : ℤ) = A117849 (n + 1)

end A117849

/-! ## A117849.P228533697727350639

`∩[A060798(n+1), A087427(n+3)]`
-/

namespace A117849.P228533697727350639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087427 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117849.P228533697727350639

namespace A117849

/-- `∩[A060798(n+1), A087427(n+3)]` -/
def P228533697727350639.Spec : Prop :=
  ∀ n, (P228533697727350639.a n : ℤ) = A117849 (n + 1)

end A117849

/-! ## A117849.P4434473203672735846

`∩[A028690(n+1), A087427(n+3)]`
-/

namespace A117849.P4434473203672735846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087427 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117849.P4434473203672735846

namespace A117849

/-- `∩[A028690(n+1), A087427(n+3)]` -/
def P4434473203672735846.Spec : Prop :=
  ∀ n, (P4434473203672735846.a n : ℤ) = A117849 (n + 1)

end A117849

/-! ## A117849.P6700902001343307849

`A002620(A001359(n+1))`
-/

namespace A117849.P6700902001343307849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A001359 (n + 1)).toNat

end

end A117849.P6700902001343307849

namespace A117849

/-- `A002620(A001359(n+1))` -/
def P6700902001343307849.Spec : Prop :=
  ∀ n, P6700902001343307849.a n = A117849 (n + 1)

end A117849

/-! ## A117849.P1231103518080915417

`A035106(A144834(n+1))`
-/

namespace A117849.P1231103518080915417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (A144834 (n + 1)).toNat

end

end A117849.P1231103518080915417

namespace A117849

/-- `A035106(A144834(n+1))` -/
def P1231103518080915417.Spec : Prop :=
  ∀ n, P1231103518080915417.a n = A117849 (n + 1)

end A117849

/-!
# A117851: Numbers j such that j^3 is of the form semiprime(k) + k-th composite number.

The programs for A117851, there is no canonical definition to state claims against.
-/

/-! ## A117851.P8771276064243779614

`A112662(n+1)^(1/3)`
-/

namespace A117851.P8771276064243779614
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A112662 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A117851.P8771276064243779614

/-! ## A117851.P6819953454046310927

`root(A112662(n+1), 3)`
-/

namespace A117851.P6819953454046310927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A112662 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A117851.P6819953454046310927

/-! ## A117851.P1212295611571670167

`A218347(A082743(n))+2`
-/

namespace A117851.P1212295611571670167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218347 (A082743 n).toNat + 2

end

end A117851.P1212295611571670167

/-! ## A117851.P4549691644824498228

`A218347(A032563(n+1))+2`
-/

namespace A117851.P4549691644824498228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218347 (A032563 (n + 1)).toNat + 2

end

end A117851.P4549691644824498228

/-!
# A117852: Mirror image of A098473 formatted as a triangular array.

The programs for A117852, the canonical program `A117852.P6678556264584360042` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117852 has offset 0).

The definition of A117852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117852.P6678556264584360042

`C(row(n), col(n))*A000984(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117852

/-- `C(row(n), col(n))*A000984(row(n)-col(n))` -/
def P6678556264584360042.Spec : Prop :=
  ∀ n, P6678556264584360042.a n = A117852 n

theorem P6678556264584360042.correct : P6678556264584360042.Spec := by
  intro n
  simp only [A117852]

end A117852

/-! ## A117852.P8395691399631512501

`A007318(n)*A106187(n)`
-/

namespace A117852.P8395691399631512501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A106187 n

end

end A117852.P8395691399631512501

namespace A117852

/-- `A007318(n)*A106187(n)` -/
def P8395691399631512501.Spec : Prop :=
  ∀ n, P8395691399631512501.a n = A117852 n

end A117852

/-! ## A117852.P16860103271198450946

`A106268(n)*A129994(n)`
-/

namespace A117852.P16860103271198450946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106268 n * A129994 n

end

end A117852.P16860103271198450946

namespace A117852

/-- `A106268(n)*A129994(n)` -/
def P16860103271198450946.Spec : Prop :=
  ∀ n, P16860103271198450946.a n = A117852 n

end A117852

/-! ## A117852.P3058402551268827009

`A004736(n+1)*A124644(n)`
-/

namespace A117852.P3058402551268827009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A124644 n

end

end A117852.P3058402551268827009

namespace A117852

/-- `A004736(n+1)*A124644(n)` -/
def P3058402551268827009.Spec : Prop :=
  ∀ n, P3058402551268827009.a n = A117852 n

end A117852

/-! ## A117852.P12310253135256124181

`A007318(n)*A000984(A025581(n))`
-/

namespace A117852.P12310253135256124181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000984 (A025581 n).toNat

end

end A117852.P12310253135256124181

namespace A117852

/-- `A007318(n)*A000984(A025581(n))` -/
def P12310253135256124181.Spec : Prop :=
  ∀ n, P12310253135256124181.a n = A117852 n

end A117852

/-! ## A117852.P7845112963840730168

`A007318(n)*A210736(A099375(n))`
-/

namespace A117852.P7845112963840730168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A210736 (A099375 n).toNat

end

end A117852.P7845112963840730168

namespace A117852

/-- `A007318(n)*A210736(A099375(n))` -/
def P7845112963840730168.Spec : Prop :=
  ∀ n, P7845112963840730168.a n = A117852 n

end A117852

/-! ## A117852.P3030106885766093148

`A001405(A099375(n)-1)*A007318(n)`
-/

namespace A117852.P3030106885766093148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A099375 n - 1).toNat * A007318 n

end

end A117852.P3030106885766093148

namespace A117852

/-- `A001405(A099375(n)-1)*A007318(n)` -/
def P3030106885766093148.Spec : Prop :=
  ∀ n, P3030106885766093148.a n = A117852 n

end A117852

/-! ## A117852.P177844836320603949

`A001405(2*A025581(n))*A007318(n)`
-/

namespace A117852.P177844836320603949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * A025581 n).toNat * A007318 n

end

end A117852.P177844836320603949

namespace A117852

/-- `A001405(2*A025581(n))*A007318(n)` -/
def P177844836320603949.Spec : Prop :=
  ∀ n, P177844836320603949.a n = A117852 n

end A117852

/-! ## A117852.P197575427629199176

`A007318(n)/A054142(n)*A104684(n)`
-/

namespace A117852.P197575427629199176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A054142 n : ℚ) * (A104684 n : ℚ)

end

end A117852.P197575427629199176

namespace A117852

/-- `A007318(n)/A054142(n)*A104684(n)` -/
def P197575427629199176.Spec : Prop :=
  ∀ n, P197575427629199176.a n = (A117852 n : ℚ)

end A117852

/-! ## A117852.P9857158686159968227

`A098473(A061579(n))`
-/

namespace A117852.P9857158686159968227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (A061579 n).toNat

end

end A117852.P9857158686159968227

namespace A117852

/-- `A098473(A061579(n))` -/
def P9857158686159968227.Spec : Prop :=
  ∀ n, P9857158686159968227.a n = A117852 n

end A117852

/-! ## A117852.P8297488189235968561

`A098473(A004736(n+1)-A002260(n+1)+n)`
-/

namespace A117852.P8297488189235968561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (A004736 (n + 1) - A002260 (n + 1) + (n : ℤ)).toNat

end

end A117852.P8297488189235968561

namespace A117852

/-- `A098473(A004736(n+1)-A002260(n+1)+n)` -/
def P8297488189235968561.Spec : Prop :=
  ∀ n, P8297488189235968561.a n = A117852 n

end A117852

/-! ## A117852.P14046005530664785794

`A098473(A038722(n+2))`
-/

namespace A117852.P14046005530664785794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098473 (A038722 (n + 2)).toNat

end

end A117852.P14046005530664785794

namespace A117852

/-- `A098473(A038722(n+2))` -/
def P14046005530664785794.Spec : Prop :=
  ∀ n, P14046005530664785794.a n = A117852 n

end A117852

/-! ## A117852.P6048152981796106684

`A007318(2*A095832(n+1))*A007318(n)`
-/

namespace A117852.P6048152981796106684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * A095832 (n + 1)).toNat * A007318 n

end

end A117852.P6048152981796106684

namespace A117852

/-- `A007318(2*A095832(n+1))*A007318(n)` -/
def P6048152981796106684.Spec : Prop :=
  ∀ n, P6048152981796106684.a n = A117852 n

end A117852

/-!
# A117854: Let p(n) be the n-th-prime. Sequence gives primes of the form | p(n)*p(n+2) - p(n+1)*p(n+3)| +1.

The programs for A117854, there is no canonical definition to state claims against.
-/

/-! ## A117854.P3239933097914929686

`p?[A226502(n+1)+1]`
-/

namespace A117854.P3239933097914929686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226502 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117854.P3239933097914929686

/-! ## A117854.P4535754394555067124

`p?[Δ[A090076(n+1)]+1]`
-/

namespace A117854.P4535754394555067124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117854.P4535754394555067124

/-! ## A117854.P11133747505568451814

`p?[A090076(n+2)+1-A090076(n+1)]`
-/

namespace A117854.P11133747505568451814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 2) + (1 - A090076 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117854.P11133747505568451814

/-! ## A117854.P4100159272971707942

`p?[A176098(n+4)-A176098(n+3)+1]`
-/

namespace A117854.P4100159272971707942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (n + 4) - A176098 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117854.P4100159272971707942

/-! ## A117854.P13965837171163653743

`p?[A333747(2*(n+2))-A333747(2*(n+1))+1]`
-/

namespace A117854.P13965837171163653743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (2 * (n + 2)) - A333747 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117854.P13965837171163653743

/-!
# A117855: Number of nonzero palindromes of length n (in base 3).

The programs for A117855, the canonical program `A117855.P1819085015410306680` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117855 has offset 1).

The definition of A117855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117855.P16420192915554452344

`ogf((2+2x)/(1-3x^2))`
-/

namespace A117855.P16420192915554452344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, 0, -3] n

end

end A117855.P16420192915554452344

namespace A117855

/-- `ogf((2+2x)/(1-3x^2))` -/
def P16420192915554452344.Spec : Prop :=
  ∀ n, P16420192915554452344.a n = A117855 (n + 1)

end A117855

/-! ## A117855.P1819085015410306680

`3*a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117855

/-- `3*a(n-2)` -/
def P1819085015410306680.Spec : Prop :=
  ∀ n, (P1819085015410306680.a n : ℤ) = A117855 (n + 1)

theorem P1819085015410306680.correct : P1819085015410306680.Spec := by
  intro n
  simp only [A117855, Nat.add_sub_cancel]

end A117855

/-! ## A117855.P17963201464709955210

`2*3^floor(n/2)`
-/

namespace A117855.P17963201464709955210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A117855.P17963201464709955210

namespace A117855

/-- `2*3^floor(n/2)` -/
def P17963201464709955210.Spec : Prop :=
  ∀ n, P17963201464709955210.a n = (A117855 (n + 1) : ℚ)

end A117855

/-! ## A117855.P3365104563151943946

`lcm(2, 3^floor(n/2))`
-/

namespace A117855.P3365104563151943946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A117855.P3365104563151943946

namespace A117855

/-- `lcm(2, 3^floor(n/2))` -/
def P3365104563151943946.Spec : Prop :=
  ∀ n, (P3365104563151943946.a n : ℤ) = A117855 (n + 1)

end A117855

/-! ## A117855.P10634034585054172302

`∏[4-a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A117855.P10634034585054172302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117855.P10634034585054172302

namespace A117855

/-- `∏[4-a(n-1)]` -/
def P10634034585054172302.Spec : Prop :=
  ∀ n, P10634034585054172302.a n = A117855 (n + 1)

end A117855

/-! ## A117855.P10725755915041634402

`a(n-2)/(1-2/3)` with `a(0)=2, a(1)=2`
-/

namespace A117855.P10725755915041634402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A117855.P10725755915041634402

namespace A117855

/-- `a(n-2)/(1-2/3)` -/
def P10725755915041634402.Spec : Prop :=
  ∀ n, P10725755915041634402.a n = (A117855 (n + 1) : ℚ)

end A117855

/-! ## A117855.P1290237969717648017

`a(n-2)+lcm(4, a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A117855.P1290237969717648017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 2))

end

end A117855.P1290237969717648017

namespace A117855

/-- `a(n-2)+lcm(4, a(n-2))` -/
def P1290237969717648017.Spec : Prop :=
  ∀ n, (P1290237969717648017.a n : ℤ) = A117855 (n + 1)

end A117855

/-! ## A117855.P4955996702639356285

`a(n-2)+a(n-2)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A117855.P4955996702639356285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 2))

end

end A117855.P4955996702639356285

namespace A117855

/-- `a(n-2)+a(n-2)+a(n-2)` -/
def P4955996702639356285.Spec : Prop :=
  ∀ n, (P4955996702639356285.a n : ℤ) = A117855 (n + 1)

theorem P4955996702639356285.correct : P4955996702639356285.Spec := by
  intro n
  simp only [A117855, Nat.add_sub_cancel, A117855.P4955996702639356285.a, A117855.P1819085015410306680.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A117855

/-! ## A117855.P18417478291050845141

`A038754(or(1, n))`
-/

namespace A117855.P18417478291050845141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (Nat.lor 1 n)

end

end A117855.P18417478291050845141

namespace A117855

/-- `A038754(or(1, n))` -/
def P18417478291050845141.Spec : Prop :=
  ∀ n, P18417478291050845141.a n = A117855 (n + 1)

end A117855

/-! ## A117855.P2358357419025146795

`A068911(or(1, n))`
-/

namespace A117855.P2358357419025146795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (Nat.lor 1 n)

end

end A117855.P2358357419025146795

namespace A117855

/-- `A068911(or(1, n))` -/
def P2358357419025146795.Spec : Prop :=
  ∀ n, P2358357419025146795.a n = A117855 (n + 1)

end A117855

/-! ## A117855.P13507894302121314286

`A072985(or(1, n))`
-/

namespace A117855.P13507894302121314286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072985 (Nat.lor 1 n)

end

end A117855.P13507894302121314286

namespace A117855

/-- `A072985(or(1, n))` -/
def P13507894302121314286.Spec : Prop :=
  ∀ n, P13507894302121314286.a n = A117855 (n + 1)

end A117855

/-! ## A117855.P11581763818524802170

`∏[log2(A040015(n))]`
-/

namespace A117855.P11581763818524802170
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040015 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117855.P11581763818524802170

namespace A117855

/-- `∏[log2(A040015(n))]` -/
def P11581763818524802170.Spec : Prop :=
  ∀ n, P11581763818524802170.a n = (A117855 (n + 1) : ℝ)

end A117855

/-! ## A117855.P17184894361511349439

`A008776(floor(n/2))`
-/

namespace A117855.P17184894361511349439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 ⌊(n : ℚ) / 2⌋.toNat

end

end A117855.P17184894361511349439

namespace A117855

/-- `A008776(floor(n/2))` -/
def P17184894361511349439.Spec : Prop :=
  ∀ n, P17184894361511349439.a n = A117855 (n + 1)

end A117855

/-! ## A117855.P2104587954730431109

`∏[2-A062157(n)]`
-/

namespace A117855.P2104587954730431109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117855.P2104587954730431109

namespace A117855

/-- `∏[2-A062157(n)]` -/
def P2104587954730431109.Spec : Prop :=
  ∀ n, P2104587954730431109.a n = A117855 (n + 1)

end A117855

/-! ## A117855.P17402477373950374200

`A025192(∑[char[2*n]])`
-/

namespace A117855.P17402477373950374200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117855.P17402477373950374200

namespace A117855

/-- `A025192(∑[char[2*n]])` -/
def P17402477373950374200.Spec : Prop :=
  ∀ n, P17402477373950374200.a n = A117855 (n + 1)

end A117855

/-!
# A117856: Number of palindromes of length n (in base 4).

The programs for A117856, the canonical program `A117856.P15098391357658261084` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117856 has offset 1).

The definition of A117856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117856.P14350874306092415664

`ogf((3+3x)/(1-4x^2))`
-/

namespace A117856.P14350874306092415664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3] [1, 0, -4] n

end

end A117856.P14350874306092415664

namespace A117856

/-- `ogf((3+3x)/(1-4x^2))` -/
def P14350874306092415664.Spec : Prop :=
  ∀ n, P14350874306092415664.a n = A117856 (n + 1)

end A117856

/-! ## A117856.P15098391357658261084

`4*a(n-2)` with `a(0)=3, a(1)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117856

/-- `4*a(n-2)` -/
def P15098391357658261084.Spec : Prop :=
  ∀ n, (P15098391357658261084.a n : ℤ) = A117856 (n + 1)

theorem P15098391357658261084.correct : P15098391357658261084.Spec := by
  intro n
  simp only [A117856, Nat.add_sub_cancel]

end A117856

/-! ## A117856.P9846072888828196253

`3*4^floor(n/2)`
-/

namespace A117856.P9846072888828196253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (4 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A117856.P9846072888828196253

namespace A117856

/-- `3*4^floor(n/2)` -/
def P9846072888828196253.Spec : Prop :=
  ∀ n, P9846072888828196253.a n = (A117856 (n + 1) : ℚ)

end A117856

/-! ## A117856.P582419211706837821

`3*2^and(n, -2)`
-/

namespace A117856.P582419211706837821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)

end

end A117856.P582419211706837821

namespace A117856

/-- `3*2^and(n, -2)` -/
def P582419211706837821.Spec : Prop :=
  ∀ n, P582419211706837821.a n = (A117856 (n + 1) : ℚ)

end A117856

/-! ## A117856.P2778389012053077795

`lcm(3, 2^and(n, -2))`
-/

namespace A117856.P2778389012053077795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)))

end

end A117856.P2778389012053077795

namespace A117856

/-- `lcm(3, 2^and(n, -2))` -/
def P2778389012053077795.Spec : Prop :=
  ∀ n, (P2778389012053077795.a n : ℤ) = A117856 (n + 1)

end A117856

/-! ## A117856.P17088030046786598905

`∏[5-a(n-1)]` with `a(0)=3, a(1)=1`
-/

namespace A117856.P17088030046786598905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117856.P17088030046786598905

namespace A117856

/-- `∏[5-a(n-1)]` -/
def P17088030046786598905.Spec : Prop :=
  ∀ n, P17088030046786598905.a n = A117856 (n + 1)

end A117856

/-! ## A117856.P9420133484544692339

`a(n-2)/(1/2)²` with `a(0)=3, a(1)=3`
-/

namespace A117856.P9420133484544692339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A117856.P9420133484544692339

namespace A117856

/-- `a(n-2)/(1/2)²` -/
def P9420133484544692339.Spec : Prop :=
  ∀ n, P9420133484544692339.a n = (A117856 (n + 1) : ℚ)

end A117856

/-! ## A117856.P5862775674790569883

`floor(a(n-2)/(1-3/4))` with `a(0)=3, a(1)=3`
-/

namespace A117856.P5862775674790569883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A117856.P5862775674790569883

namespace A117856

/-- `floor(a(n-2)/(1-3/4))` -/
def P5862775674790569883.Spec : Prop :=
  ∀ n, P5862775674790569883.a n = A117856 (n + 1)

end A117856

/-! ## A117856.P6674472035489291596

`lcm(5, a(n-2))-a(n-2)` with `a(0)=3, a(1)=3`
-/

namespace A117856.P6674472035489291596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  (Int.lcm 5 (a (n - 2)) : ℤ) - a (n - 2)

end

end A117856.P6674472035489291596

namespace A117856

/-- `lcm(5, a(n-2))-a(n-2)` -/
def P6674472035489291596.Spec : Prop :=
  ∀ n, P6674472035489291596.a n = A117856 (n + 1)

end A117856

/-! ## A117856.P3059809449267253243

`a(n-2)+a(n-2)/(1-2/3)` with `a(0)=3, a(1)=3`
-/

namespace A117856.P3059809449267253243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 2) + a (n - 2) / (1 - (2 : ℚ) / 3)

end

end A117856.P3059809449267253243

namespace A117856

/-- `a(n-2)+a(n-2)/(1-2/3)` -/
def P3059809449267253243.Spec : Prop :=
  ∀ n, P3059809449267253243.a n = (A117856 (n + 1) : ℚ)

end A117856

/-! ## A117856.P12688415866933314356

`gcd(a(n-1), a(n-2))/(1-3/4)` with `a(0)=3, a(1)=3`
-/

namespace A117856.P12688415866933314356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n a =>
  (Int.gcd (SequenceMachineLib.roundAway (a (n - 1))) (SequenceMachineLib.roundAway (a (n - 2))) : ℚ) / (1 - (3 : ℚ) / 4)

end

end A117856.P12688415866933314356

namespace A117856

/-- `gcd(a(n-1), a(n-2))/(1-3/4)` -/
def P12688415866933314356.Spec : Prop :=
  ∀ n, P12688415866933314356.a n = (A117856 (n + 1) : ℚ)

end A117856

/-! ## A117856.P7167453748382560113

`a(n-2)+a(n-2)+a(n-2)+a(n-2)` with `a(0)=3, a(1)=3`
-/

namespace A117856.P7167453748382560113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))

end

end A117856.P7167453748382560113

namespace A117856

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-2)` -/
def P7167453748382560113.Spec : Prop :=
  ∀ n, (P7167453748382560113.a n : ℤ) = A117856 (n + 1)

theorem P7167453748382560113.correct : P7167453748382560113.Spec := by
  intro n
  simp only [A117856, Nat.add_sub_cancel, A117856.P7167453748382560113.a, A117856.P15098391357658261084.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A117856

/-! ## A117856.P394136294467738130

`lcm(3, A084221(n))`
-/

namespace A117856.P394136294467738130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A084221 n)

end

end A117856.P394136294467738130

namespace A117856

/-- `lcm(3, A084221(n))` -/
def P394136294467738130.Spec : Prop :=
  ∀ n, (P394136294467738130.a n : ℤ) = A117856 (n + 1)

end A117856

/-! ## A117856.P17053554648786188651

`A003945(or(1, n))`
-/

namespace A117856.P17053554648786188651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (Nat.lor 1 n)

end

end A117856.P17053554648786188651

namespace A117856

/-- `A003945(or(1, n))` -/
def P17053554648786188651.Spec : Prop :=
  ∀ n, P17053554648786188651.a n = A117856 (n + 1)

end A117856

/-! ## A117856.P15819982875851424915

`A027292(or(1, n))`
-/

namespace A117856.P15819982875851424915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027292 (Nat.lor 1 n)

end

end A117856.P15819982875851424915

namespace A117856

/-- `A027292(or(1, n))` -/
def P15819982875851424915.Spec : Prop :=
  ∀ n, P15819982875851424915.a n = A117856 (n + 1)

end A117856

/-! ## A117856.P9163932797155178843

`A042950(or(1, n))`
-/

namespace A117856.P9163932797155178843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (Nat.lor 1 n)

end

end A117856.P9163932797155178843

namespace A117856

/-- `A042950(or(1, n))` -/
def P9163932797155178843.Spec : Prop :=
  ∀ n, P9163932797155178843.a n = A117856 (n + 1)

end A117856

/-! ## A117856.P7006787257352752103

`A084221(or(1, n))`
-/

namespace A117856.P7006787257352752103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 (Nat.lor 1 n)

end

end A117856.P7006787257352752103

namespace A117856

/-- `A084221(or(1, n))` -/
def P7006787257352752103.Spec : Prop :=
  ∀ n, P7006787257352752103.a n = A117856 (n + 1)

end A117856

/-! ## A117856.P12507876038554276803

`∏[log2(A040063(n))]`
-/

namespace A117856.P12507876038554276803
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040063 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117856.P12507876038554276803

namespace A117856

/-- `∏[log2(A040063(n))]` -/
def P12507876038554276803.Spec : Prop :=
  ∀ n, P12507876038554276803.a n = (A117856 (n + 1) : ℝ)

end A117856

/-! ## A117856.P3917703077476673853

`∏[A280193(n)+2]`
-/

namespace A117856.P3917703077476673853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117856.P3917703077476673853

namespace A117856

/-- `∏[A280193(n)+2]` -/
def P3917703077476673853.Spec : Prop :=
  ∀ n, P3917703077476673853.a n = A117856 (n + 1)

end A117856

/-! ## A117856.P10231687720309119379

`A122391(or(1, n+2))`
-/

namespace A117856.P10231687720309119379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (Nat.lor 1 (n + 2))

end

end A117856.P10231687720309119379

namespace A117856

/-- `A122391(or(1, n+2))` -/
def P10231687720309119379.Spec : Prop :=
  ∀ n, P10231687720309119379.a n = A117856 (n + 1)

end A117856

/-!
# A117857: Number of palindromes of length n (in base 5).

The programs for A117857, the canonical program `A117857.P17853632650185039690` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117857 has offset 1).

The definition of A117857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117857.P13845296109357193050

`ogf((4+4x)/(1-5x^2))`
-/

namespace A117857.P13845296109357193050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4] [1, 0, -5] n

end

end A117857.P13845296109357193050

namespace A117857

/-- `ogf((4+4x)/(1-5x^2))` -/
def P13845296109357193050.Spec : Prop :=
  ∀ n, P13845296109357193050.a n = A117857 (n + 1)

end A117857

/-! ## A117857.P17853632650185039690

`5*a(n-2)` with `a(0)=4, a(1)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117857

/-- `5*a(n-2)` -/
def P17853632650185039690.Spec : Prop :=
  ∀ n, (P17853632650185039690.a n : ℤ) = A117857 (n + 1)

theorem P17853632650185039690.correct : P17853632650185039690.Spec := by
  intro n
  simp only [A117857, Nat.add_sub_cancel]

end A117857

/-! ## A117857.P13696896369935252788

`4*5^floor(n/2)`
-/

namespace A117857.P13696896369935252788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A117857.P13696896369935252788

namespace A117857

/-- `4*5^floor(n/2)` -/
def P13696896369935252788.Spec : Prop :=
  ∀ n, P13696896369935252788.a n = (A117857 (n + 1) : ℚ)

end A117857

/-! ## A117857.P12585673043918184081

`lcm(4, 5^floor(n/2))`
-/

namespace A117857.P12585673043918184081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A117857.P12585673043918184081

namespace A117857

/-- `lcm(4, 5^floor(n/2))` -/
def P12585673043918184081.Spec : Prop :=
  ∀ n, (P12585673043918184081.a n : ℤ) = A117857 (n + 1)

end A117857

/-! ## A117857.P13614019310104024947

`∏[6-a(n-1)]` with `a(0)=4, a(1)=1`
-/

namespace A117857.P13614019310104024947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117857.P13614019310104024947

namespace A117857

/-- `∏[6-a(n-1)]` -/
def P13614019310104024947.Spec : Prop :=
  ∀ n, P13614019310104024947.a n = A117857 (n + 1)

end A117857

/-! ## A117857.P18356467309480777909

`floor(a(n-2)/(1-4/5))` with `a(0)=4, a(1)=4`
-/

namespace A117857.P18356467309480777909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (4 : ℚ) / 5)⌋

end

end A117857.P18356467309480777909

namespace A117857

/-- `floor(a(n-2)/(1-4/5))` -/
def P18356467309480777909.Spec : Prop :=
  ∀ n, P18356467309480777909.a n = A117857 (n + 1)

end A117857

/-! ## A117857.P17968550004813871422

`a(n-2)+a(n-2)/(1/2)²` with `a(0)=4, a(1)=4`
-/

namespace A117857.P17968550004813871422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 4] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A117857.P17968550004813871422

namespace A117857

/-- `a(n-2)+a(n-2)/(1/2)²` -/
def P17968550004813871422.Spec : Prop :=
  ∀ n, P17968550004813871422.a n = (A117857 (n + 1) : ℚ)

end A117857

/-! ## A117857.P7311308900731703823

`A163141(or(1, n))`
-/

namespace A117857.P7311308900731703823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163141 (Nat.lor 1 n)

end

end A117857.P7311308900731703823

namespace A117857

/-- `A163141(or(1, n))` -/
def P7311308900731703823.Spec : Prop :=
  ∀ n, P7311308900731703823.a n = A117857 (n + 1)

end A117857

/-! ## A117857.P14182513911863552128

`∏[log2(A040255(n))]`
-/

namespace A117857.P14182513911863552128
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040255 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117857.P14182513911863552128

namespace A117857

/-- `∏[log2(A040255(n))]` -/
def P14182513911863552128.Spec : Prop :=
  ∀ n, P14182513911863552128.a n = (A117857 (n + 1) : ℝ)

end A117857

/-! ## A117857.P16694379511381213813

`∏[round(sqrt(A040224(n)))]`
-/

namespace A117857.P16694379511381213813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A040224 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117857.P16694379511381213813

namespace A117857

/-- `∏[round(sqrt(A040224(n)))]` -/
def P16694379511381213813.Spec : Prop :=
  ∀ n, P16694379511381213813.a n = A117857 (n + 1)

end A117857

/-! ## A117857.P17094839201942249389

`A133632(or(1, n)+1)`
-/

namespace A117857.P17094839201942249389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (Nat.lor 1 n + 1)

end

end A117857.P17094839201942249389

namespace A117857

/-- `A133632(or(1, n)+1)` -/
def P17094839201942249389.Spec : Prop :=
  ∀ n, P17094839201942249389.a n = A117857 (n + 1)

end A117857

/-! ## A117857.P7031744884117180800

`A140730(or(3, 2*n))`
-/

namespace A117857.P7031744884117180800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (Nat.lor 3 (2 * n))

end

end A117857.P7031744884117180800

namespace A117857

/-- `A140730(or(3, 2*n))` -/
def P7031744884117180800.Spec : Prop :=
  ∀ n, P7031744884117180800.a n = A117857 (n + 1)

end A117857

/-! ## A117857.P18283323103259957689

`∏[Δ[A244151(n+3)]]`
-/

namespace A117857.P18283323103259957689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244151 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117857.P18283323103259957689

namespace A117857

/-- `∏[Δ[A244151(n+3)]]` -/
def P18283323103259957689.Spec : Prop :=
  ∀ n, P18283323103259957689.a n = A117857 (n + 1)

end A117857

/-! ## A117857.P5179739952364383960

`A005054(∑[char[2*n]])`
-/

namespace A117857.P5179739952364383960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117857.P5179739952364383960

namespace A117857

/-- `A005054(∑[char[2*n]])` -/
def P5179739952364383960.Spec : Prop :=
  ∀ n, P5179739952364383960.a n = A117857 (n + 1)

end A117857

/-!
# A117858: Number of palindromes of length n (in base 6).

The programs for A117858, the canonical program `A117858.P11806047756206413182` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117858 has offset 1).

The definition of A117858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117858.P11806047756206413182

`6*a(n-2)` with `a(0)=5, a(1)=5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117858

/-- `6*a(n-2)` -/
def P11806047756206413182.Spec : Prop :=
  ∀ n, (P11806047756206413182.a n : ℤ) = A117858 (n + 1)

theorem P11806047756206413182.correct : P11806047756206413182.Spec := by
  intro n
  simp only [A117858, Nat.add_sub_cancel]

end A117858

/-! ## A117858.P17006076914625982257

`5*6^floor(n/2)`
-/

namespace A117858.P17006076914625982257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (6 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A117858.P17006076914625982257

namespace A117858

/-- `5*6^floor(n/2)` -/
def P17006076914625982257.Spec : Prop :=
  ∀ n, P17006076914625982257.a n = (A117858 (n + 1) : ℚ)

end A117858

/-! ## A117858.P2936458891866923268

`ogf((5+5x)/(1-6x^2))`
-/

namespace A117858.P2936458891866923268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 5] [1, 0, -6] n

end

end A117858.P2936458891866923268

namespace A117858

/-- `ogf((5+5x)/(1-6x^2))` -/
def P2936458891866923268.Spec : Prop :=
  ∀ n, P2936458891866923268.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P11463449494400951884

`lcm(5, 6^floor(n/2))`
-/

namespace A117858.P11463449494400951884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A117858.P11463449494400951884

namespace A117858

/-- `lcm(5, 6^floor(n/2))` -/
def P11463449494400951884.Spec : Prop :=
  ∀ n, (P11463449494400951884.a n : ℤ) = A117858 (n + 1)

end A117858

/-! ## A117858.P7614355305192244544

`∏[7-a(n-1)]` with `a(0)=5, a(1)=1`
-/

namespace A117858.P7614355305192244544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P7614355305192244544

namespace A117858

/-- `∏[7-a(n-1)]` -/
def P7614355305192244544.Spec : Prop :=
  ∀ n, P7614355305192244544.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P12256912625563584848

`A052934(∑[char[2*n]])`
-/

namespace A117858.P12256912625563584848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117858.P12256912625563584848

namespace A117858

/-- `A052934(∑[char[2*n]])` -/
def P12256912625563584848.Spec : Prop :=
  ∀ n, P12256912625563584848.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P15854894849118092336

`∏[A002950(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P15854894849118092336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A002950 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P15854894849118092336

namespace A117858

/-- `∏[A002950(a(n-1))]` -/
def P15854894849118092336.Spec : Prop :=
  ∀ n, P15854894849118092336.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P13490681091394357451

`∏[A023406(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P13490681091394357451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A023406 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P13490681091394357451

namespace A117858

/-- `∏[A023406(a(n-1))]` -/
def P13490681091394357451.Spec : Prop :=
  ∀ n, P13490681091394357451.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P12829413789792119158

`∏[A033326(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P12829413789792119158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A033326 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P12829413789792119158

namespace A117858

/-- `∏[A033326(a(n-1))]` -/
def P12829413789792119158.Spec : Prop :=
  ∀ n, P12829413789792119158.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P221260986496179179

`∏[A040347(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P221260986496179179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A040347 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P221260986496179179

namespace A117858

/-- `∏[A040347(a(n-1))]` -/
def P221260986496179179.Spec : Prop :=
  ∀ n, P221260986496179179.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P8576050564901145466

`∏[A040468(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P8576050564901145466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A040468 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P8576050564901145466

namespace A117858

/-- `∏[A040468(a(n-1))]` -/
def P8576050564901145466.Spec : Prop :=
  ∀ n, P8576050564901145466.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P5472431056419007375

`∏[A040657(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P5472431056419007375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A040657 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P5472431056419007375

namespace A117858

/-- `∏[A040657(a(n-1))]` -/
def P5472431056419007375.Spec : Prop :=
  ∀ n, P5472431056419007375.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P11420314856356627689

`∏[A073223(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P11420314856356627689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A073223 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P11420314856356627689

namespace A117858

/-- `∏[A073223(a(n-1))]` -/
def P11420314856356627689.Spec : Prop :=
  ∀ n, P11420314856356627689.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P15210163712681646415

`∏[A084539(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P15210163712681646415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A084539 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P15210163712681646415

namespace A117858

/-- `∏[A084539(a(n-1))]` -/
def P15210163712681646415.Spec : Prop :=
  ∀ n, P15210163712681646415.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P1923926828370685853

`∏[A089078(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P1923926828370685853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A089078 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P1923926828370685853

namespace A117858

/-- `∏[A089078(a(n-1))]` -/
def P1923926828370685853.Spec : Prop :=
  ∀ n, P1923926828370685853.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P7933595502848932698

`∏[A097606(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P7933595502848932698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A097606 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P7933595502848932698

namespace A117858

/-- `∏[A097606(a(n-1))]` -/
def P7933595502848932698.Spec : Prop :=
  ∀ n, P7933595502848932698.a n = A117858 (n + 1)

end A117858

/-! ## A117858.P11106545969369992428

`∏[A127142(a(n-1))]` with `a(0)=5`
-/

namespace A117858.P11106545969369992428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A127142 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117858.P11106545969369992428

namespace A117858

/-- `∏[A127142(a(n-1))]` -/
def P11106545969369992428.Spec : Prop :=
  ∀ n, P11106545969369992428.a n = A117858 (n + 1)

end A117858

/-!
# A117859: Number of palindromes of length n (in base 7).

The programs for A117859, the canonical program `A117859.P4923714532842479083` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117859 has offset 1).

The definition of A117859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117859.P14771536731878372676

`ogf((6+6x)/(1-7x^2))`
-/

namespace A117859.P14771536731878372676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 6] [1, 0, -7] n

end

end A117859.P14771536731878372676

namespace A117859

/-- `ogf((6+6x)/(1-7x^2))` -/
def P14771536731878372676.Spec : Prop :=
  ∀ n, P14771536731878372676.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P4923714532842479083

`7*a(n-2)` with `a(0)=6, a(1)=6`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117859

/-- `7*a(n-2)` -/
def P4923714532842479083.Spec : Prop :=
  ∀ n, (P4923714532842479083.a n : ℤ) = A117859 (n + 1)

theorem P4923714532842479083.correct : P4923714532842479083.Spec := by
  intro n
  simp only [A117859, Nat.add_sub_cancel]

end A117859

/-! ## A117859.P9545283084885773681

`6*7^floor(n/2)`
-/

namespace A117859.P9545283084885773681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (7 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A117859.P9545283084885773681

namespace A117859

/-- `6*7^floor(n/2)` -/
def P9545283084885773681.Spec : Prop :=
  ∀ n, P9545283084885773681.a n = (A117859 (n + 1) : ℚ)

end A117859

/-! ## A117859.P13118006521341672812

`lcm(6, 7^floor(n/2))`
-/

namespace A117859.P13118006521341672812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A117859.P13118006521341672812

namespace A117859

/-- `lcm(6, 7^floor(n/2))` -/
def P13118006521341672812.Spec : Prop :=
  ∀ n, (P13118006521341672812.a n : ℤ) = A117859 (n + 1)

end A117859

/-! ## A117859.P3724777904092351331

`∏[8-a(n-1)]` with `a(0)=6, a(1)=1`
-/

namespace A117859.P3724777904092351331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P3724777904092351331

namespace A117859

/-- `∏[8-a(n-1)]` -/
def P3724777904092351331.Spec : Prop :=
  ∀ n, P3724777904092351331.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P6305503680412931930

`a(n-2)/(1-6/7)` with `a(0)=6, a(1)=6`
-/

namespace A117859.P6305503680412931930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6, 6] fun n a =>
  a (n - 2) / (1 - (6 : ℚ) / 7)

end

end A117859.P6305503680412931930

namespace A117859

/-- `a(n-2)/(1-6/7)` -/
def P6305503680412931930.Spec : Prop :=
  ∀ n, P6305503680412931930.a n = (A117859 (n + 1) : ℚ)

end A117859

/-! ## A117859.P3434600166697897314

`∏[dr(A091307(n+1))]`
-/

namespace A117859.P3434600166697897314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A091307 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P3434600166697897314

namespace A117859

/-- `∏[dr(A091307(n+1))]` -/
def P3434600166697897314.Spec : Prop :=
  ∀ n, (P3434600166697897314.a n : ℤ) = A117859 (n + 1)

end A117859

/-! ## A117859.P9406101642420017452

`A055272(∑[char[2*n]])`
-/

namespace A117859.P9406101642420017452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117859.P9406101642420017452

namespace A117859

/-- `A055272(∑[char[2*n]])` -/
def P9406101642420017452.Spec : Prop :=
  ∀ n, P9406101642420017452.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P12497698640794241249

`∏[A001203(a(n-1))]` with `a(0)=6`
-/

namespace A117859.P12497698640794241249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A001203 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P12497698640794241249

namespace A117859

/-- `∏[A001203(a(n-1))]` -/
def P12497698640794241249.Spec : Prop :=
  ∀ n, P12497698640794241249.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P8383405777507183912

`∏[A008461(a(n-1))]` with `a(0)=6`
-/

namespace A117859.P8383405777507183912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A008461 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P8383405777507183912

namespace A117859

/-- `∏[A008461(a(n-1))]` -/
def P8383405777507183912.Spec : Prop :=
  ∀ n, P8383405777507183912.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P9065340308694073008

`∏[A010260(a(n-1))]` with `a(0)=6`
-/

namespace A117859.P9065340308694073008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A010260 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P9065340308694073008

namespace A117859

/-- `∏[A010260(a(n-1))]` -/
def P9065340308694073008.Spec : Prop :=
  ∀ n, P9065340308694073008.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P10366203576660697247

`∏[A016536(a(n-1))]` with `a(0)=6`
-/

namespace A117859.P10366203576660697247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A016536 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P10366203576660697247

namespace A117859

/-- `∏[A016536(a(n-1))]` -/
def P10366203576660697247.Spec : Prop :=
  ∀ n, P10366203576660697247.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P7663573442690875983

`∏[A024584(a(n-1))]` with `a(0)=6`
-/

namespace A117859.P7663573442690875983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A024584 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P7663573442690875983

namespace A117859

/-- `∏[A024584(a(n-1))]` -/
def P7663573442690875983.Spec : Prop :=
  ∀ n, P7663573442690875983.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P16836802464827702523

`∏[A033327(a(n-1))]` with `a(0)=6`
-/

namespace A117859.P16836802464827702523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A033327 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P16836802464827702523

namespace A117859

/-- `∏[A033327(a(n-1))]` -/
def P16836802464827702523.Spec : Prop :=
  ∀ n, P16836802464827702523.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P14675058372145114586

`∏[A040937(a(n-1))]` with `a(0)=6`
-/

namespace A117859.P14675058372145114586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A040937 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P14675058372145114586

namespace A117859

/-- `∏[A040937(a(n-1))]` -/
def P14675058372145114586.Spec : Prop :=
  ∀ n, P14675058372145114586.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P12013422039001849960

`∏[A051655(a(n-1))]` with `a(0)=6`
-/

namespace A117859.P12013422039001849960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A051655 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P12013422039001849960

namespace A117859

/-- `∏[A051655(a(n-1))]` -/
def P12013422039001849960.Spec : Prop :=
  ∀ n, P12013422039001849960.a n = A117859 (n + 1)

end A117859

/-! ## A117859.P15634342653737175691

`∏[A114137(a(n-1))]` with `a(0)=6`
-/

namespace A117859.P15634342653737175691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A114137 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117859.P15634342653737175691

namespace A117859

/-- `∏[A114137(a(n-1))]` -/
def P15634342653737175691.Spec : Prop :=
  ∀ n, P15634342653737175691.a n = A117859 (n + 1)

end A117859

/-!
# A117860: Number of palindromes of length n (in base 8).

The programs for A117860, the canonical program `A117860.P18190573548228665715` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117860 has offset 1).

The definition of A117860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117860.P12692112385928283132

`ogf((7+7x)/(1-8x^2))`
-/

namespace A117860.P12692112385928283132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 7] [1, 0, -8] n

end

end A117860.P12692112385928283132

namespace A117860

/-- `ogf((7+7x)/(1-8x^2))` -/
def P12692112385928283132.Spec : Prop :=
  ∀ n, P12692112385928283132.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P18190573548228665715

`8*a(n-2)` with `a(0)=7, a(1)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117860

/-- `8*a(n-2)` -/
def P18190573548228665715.Spec : Prop :=
  ∀ n, (P18190573548228665715.a n : ℤ) = A117860 (n + 1)

theorem P18190573548228665715.correct : P18190573548228665715.Spec := by
  intro n
  simp only [A117860, Nat.add_sub_cancel]

end A117860

/-! ## A117860.P12640380615733985002

`7*8^floor(n/2)`
-/

namespace A117860.P12640380615733985002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (8 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A117860.P12640380615733985002

namespace A117860

/-- `7*8^floor(n/2)` -/
def P12640380615733985002.Spec : Prop :=
  ∀ n, P12640380615733985002.a n = (A117860 (n + 1) : ℚ)

end A117860

/-! ## A117860.P11037665490181187918

`lcm(7, 8^floor(n/2))`
-/

namespace A117860.P11037665490181187918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A117860.P11037665490181187918

namespace A117860

/-- `lcm(7, 8^floor(n/2))` -/
def P11037665490181187918.Spec : Prop :=
  ∀ n, (P11037665490181187918.a n : ℤ) = A117860 (n + 1)

end A117860

/-! ## A117860.P755264371429877212

`∏[9-a(n-1)]` with `a(0)=7, a(1)=1`
-/

namespace A117860.P755264371429877212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117860.P755264371429877212

namespace A117860

/-- `∏[9-a(n-1)]` -/
def P755264371429877212.Spec : Prop :=
  ∀ n, P755264371429877212.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P4971073239525896356

`a(n-2)/(1/2)^3` with `a(0)=7, a(1)=7`
-/

namespace A117860.P4971073239525896356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7, 7] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 3

end

end A117860.P4971073239525896356

namespace A117860

/-- `a(n-2)/(1/2)^3` -/
def P4971073239525896356.Spec : Prop :=
  ∀ n, P4971073239525896356.a n = (A117860 (n + 1) : ℚ)

end A117860

/-! ## A117860.P5314002424516655234

`A135536(n-and(1, n))`
-/

namespace A117860.P5314002424516655234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135536 (n - Nat.land 1 n)

end

end A117860.P5314002424516655234

namespace A117860

/-- `A135536(n-and(1, n))` -/
def P5314002424516655234.Spec : Prop :=
  ∀ n, P5314002424516655234.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P10632831997602432235

`A055274(∑[char[2*n]])`
-/

namespace A117860.P10632831997602432235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117860.P10632831997602432235

namespace A117860

/-- `A055274(∑[char[2*n]])` -/
def P10632831997602432235.Spec : Prop :=
  ∀ n, P10632831997602432235.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P8954042584967434273

`∏[A033328(a(n-1))]` with `a(0)=7`
-/

namespace A117860.P8954042584967434273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A033328 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117860.P8954042584967434273

namespace A117860

/-- `∏[A033328(a(n-1))]` -/
def P8954042584967434273.Spec : Prop :=
  ∀ n, P8954042584967434273.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P6008003437282531616

`∏[A040275(a(n-1))]` with `a(0)=7`
-/

namespace A117860.P6008003437282531616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A040275 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117860.P6008003437282531616

namespace A117860

/-- `∏[A040275(a(n-1))]` -/
def P6008003437282531616.Spec : Prop :=
  ∀ n, P6008003437282531616.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P333789609212626154

`∏[A076444(a(n-1))]` with `a(0)=7`
-/

namespace A117860.P333789609212626154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A076444 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117860.P333789609212626154

namespace A117860

/-- `∏[A076444(a(n-1))]` -/
def P333789609212626154.Spec : Prop :=
  ∀ n, P333789609212626154.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P4577093900018874419

`∏[A103953(a(n-1))]` with `a(0)=7`
-/

namespace A117860.P4577093900018874419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A103953 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117860.P4577093900018874419

namespace A117860

/-- `∏[A103953(a(n-1))]` -/
def P4577093900018874419.Spec : Prop :=
  ∀ n, P4577093900018874419.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P14619900982487939561

`∏[A189090(a(n-1))]` with `a(0)=7`
-/

namespace A117860.P14619900982487939561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A189090 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117860.P14619900982487939561

namespace A117860

/-- `∏[A189090(a(n-1))]` -/
def P14619900982487939561.Spec : Prop :=
  ∀ n, P14619900982487939561.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P8429379578589342498

`∏[dr(A040764(2*n)+6)]`
-/

namespace A117860.P8429379578589342498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040764 (2 * n) + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117860.P8429379578589342498

namespace A117860

/-- `∏[dr(A040764(2*n)+6)]` -/
def P8429379578589342498.Spec : Prop :=
  ∀ n, (P8429379578589342498.a n : ℤ) = A117860 (n + 1)

end A117860

/-! ## A117860.P15499464443907618112

`A005009(A168237(n))`
-/

namespace A117860.P15499464443907618112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 (A168237 n).toNat

end

end A117860.P15499464443907618112

namespace A117860

/-- `A005009(A168237(n))` -/
def P15499464443907618112.Spec : Prop :=
  ∀ n, P15499464443907618112.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P16019110570190607065

`A135536(A052928(n))`
-/

namespace A117860.P16019110570190607065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135536 (A052928 n).toNat

end

end A117860.P16019110570190607065

namespace A117860

/-- `A135536(A052928(n))` -/
def P16019110570190607065.Spec : Prop :=
  ∀ n, P16019110570190607065.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P17764614083849730646

`A029746(A168329(n+1))`
-/

namespace A117860.P17764614083849730646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (A168329 (n + 1)).toNat

end

end A117860.P17764614083849730646

namespace A117860

/-- `A029746(A168329(n+1))` -/
def P17764614083849730646.Spec : Prop :=
  ∀ n, P17764614083849730646.a n = A117860 (n + 1)

end A117860

/-! ## A117860.P9809054915295507624

`A029748(A168418(n+1))`
-/

namespace A117860.P9809054915295507624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 (A168418 (n + 1)).toNat

end

end A117860.P9809054915295507624

namespace A117860

/-- `A029748(A168418(n+1))` -/
def P9809054915295507624.Spec : Prop :=
  ∀ n, P9809054915295507624.a n = A117860 (n + 1)

end A117860

/-!
# A117861: Number of palindromes of length n (in base 9).

The programs for A117861, the canonical program `A117861.P15067139360688960759` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117861 has offset 1).

The definition of A117861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117861.P7683116015304538499

`ogf((8+8x)/(1-9x^2))`
-/

namespace A117861.P7683116015304538499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8] [1, 0, -9] n

end

end A117861.P7683116015304538499

namespace A117861

/-- `ogf((8+8x)/(1-9x^2))` -/
def P7683116015304538499.Spec : Prop :=
  ∀ n, P7683116015304538499.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P15067139360688960759

`8*9^floor(n/2)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117861

/-- `8*9^floor(n/2)` -/
def P15067139360688960759.Spec : Prop :=
  ∀ n, P15067139360688960759.a n = (A117861 (n + 1) : ℚ)

end A117861

/-! ## A117861.P4946524033956030942

`9*a(n-2)` with `a(0)=8, a(1)=8`
-/

namespace A117861.P4946524033956030942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 8] fun n a =>
  9 * a (n - 2)

end

end A117861.P4946524033956030942

namespace A117861

/-- `9*a(n-2)` -/
def P4946524033956030942.Spec : Prop :=
  ∀ n, (P4946524033956030942.a n : ℤ) = A117861 (n + 1)

end A117861

/-! ## A117861.P6327294671502702783

`lcm(8, 9^floor(n/2))`
-/

namespace A117861.P6327294671502702783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A117861.P6327294671502702783

namespace A117861

/-- `lcm(8, 9^floor(n/2))` -/
def P6327294671502702783.Spec : Prop :=
  ∀ n, (P6327294671502702783.a n : ℤ) = A117861 (n + 1)

end A117861

/-! ## A117861.P16108636927932399737

`∏[10-a(n-1)]` with `a(0)=8, a(1)=1`
-/

namespace A117861.P16108636927932399737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 1] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117861.P16108636927932399737

namespace A117861

/-- `∏[10-a(n-1)]` -/
def P16108636927932399737.Spec : Prop :=
  ∀ n, P16108636927932399737.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P13596273391754570238

`a(n-2)/(1/3)²` with `a(0)=8, a(1)=8`
-/

namespace A117861.P13596273391754570238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8, 8] fun n a =>
  a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A117861.P13596273391754570238

namespace A117861

/-- `a(n-2)/(1/3)²` -/
def P13596273391754570238.Spec : Prop :=
  ∀ n, P13596273391754570238.a n = (A117861 (n + 1) : ℚ)

end A117861

/-! ## A117861.P17809658256958746157

`A083583(or(1, n))`
-/

namespace A117861.P17809658256958746157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083583 (Nat.lor 1 n)

end

end A117861.P17809658256958746157

namespace A117861

/-- `A083583(or(1, n))` -/
def P17809658256958746157.Spec : Prop :=
  ∀ n, P17809658256958746157.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P13188746269721009595

`A026097(or(1, n+2))`
-/

namespace A117861.P13188746269721009595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026097 (Nat.lor 1 (n + 2))

end

end A117861.P13188746269721009595

namespace A117861

/-- `A026097(or(1, n+2))` -/
def P13188746269721009595.Spec : Prop :=
  ∀ n, P13188746269721009595.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P15098875890064586465

`A118264(or(1, n+2))`
-/

namespace A117861.P15098875890064586465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 (Nat.lor 1 (n + 2))

end

end A117861.P15098875890064586465

namespace A117861

/-- `A118264(or(1, n+2))` -/
def P15098875890064586465.Spec : Prop :=
  ∀ n, P15098875890064586465.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P17114946151850601827

`A153339(or(3, 2*n))`
-/

namespace A117861.P17114946151850601827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153339 (Nat.lor 3 (2 * n))

end

end A117861.P17114946151850601827

namespace A117861

/-- `A153339(or(3, 2*n))` -/
def P17114946151850601827.Spec : Prop :=
  ∀ n, P17114946151850601827.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P412921304230659979

`A090993(xor(1, n)+n)`
-/

namespace A117861.P412921304230659979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090993 (Nat.xor 1 n + n)

end

end A117861.P412921304230659979

namespace A117861

/-- `A090993(xor(1, n)+n)` -/
def P412921304230659979.Spec : Prop :=
  ∀ n, P412921304230659979.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P4596073384790906647

`A055275(∑[char[2*n]])`
-/

namespace A117861.P4596073384790906647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117861.P4596073384790906647

namespace A117861

/-- `A055275(∑[char[2*n]])` -/
def P4596073384790906647.Spec : Prop :=
  ∀ n, P4596073384790906647.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P14195287037754187814

`∏[A010237(a(n-1))]` with `a(0)=8`
-/

namespace A117861.P14195287037754187814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A010237 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117861.P14195287037754187814

namespace A117861

/-- `∏[A010237(a(n-1))]` -/
def P14195287037754187814.Spec : Prop :=
  ∀ n, P14195287037754187814.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P3467780947209517297

`∏[A033329(a(n-1))]` with `a(0)=8`
-/

namespace A117861.P3467780947209517297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A033329 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117861.P3467780947209517297

namespace A117861

/-- `∏[A033329(a(n-1))]` -/
def P3467780947209517297.Spec : Prop :=
  ∀ n, P3467780947209517297.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P4291626096313669594

`∏[A037478(a(n-1))]` with `a(0)=8`
-/

namespace A117861.P4291626096313669594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A037478 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117861.P4291626096313669594

namespace A117861

/-- `∏[A037478(a(n-1))]` -/
def P4291626096313669594.Spec : Prop :=
  ∀ n, P4291626096313669594.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P13324359899409746009

`∏[A097326(a(n-1))]` with `a(0)=8`
-/

namespace A117861.P13324359899409746009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A097326 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117861.P13324359899409746009

namespace A117861

/-- `∏[A097326(a(n-1))]` -/
def P13324359899409746009.Spec : Prop :=
  ∀ n, P13324359899409746009.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P12016178472767507009

`∏[A272232(a(n-1))]` with `a(0)=8`
-/

namespace A117861.P12016178472767507009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A272232 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A117861.P12016178472767507009

namespace A117861

/-- `∏[A272232(a(n-1))]` -/
def P12016178472767507009.Spec : Prop :=
  ∀ n, P12016178472767507009.a n = A117861 (n + 1)

end A117861

/-! ## A117861.P9709607764116265281

`Δ[A153339(n+2)]²/2`
-/

namespace A117861.P9709607764116265281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153339 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2

end

end A117861.P9709607764116265281

namespace A117861

/-- `Δ[A153339(n+2)]²/2` -/
def P9709607764116265281.Spec : Prop :=
  ∀ n, P9709607764116265281.a n = (A117861 (n + 1) : ℚ)

end A117861

/-! ## A117861.P16610929724755477282

`A005051(A052928(n))`
-/

namespace A117861.P16610929724755477282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005051 (A052928 n).toNat

end

end A117861.P16610929724755477282

namespace A117861

/-- `A005051(A052928(n))` -/
def P16610929724755477282.Spec : Prop :=
  ∀ n, P16610929724755477282.a n = A117861 (n + 1)

end A117861

/-!
# A117862: Number of palindromes (in base 3) below 3^n.

The programs for A117862, the canonical program `A117862.P11480622739178208132` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117862 has offset 0).

The definition of A117862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117862.P11480622739178208132

`ogf((2x+2x^2)/(1-x-3x^2+3x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117862

/-- `ogf((2x+2x^2)/(1-x-3x^2+3x^3))` -/
def P11480622739178208132.Spec : Prop :=
  ∀ n, P11480622739178208132.a n = A117862 n

theorem P11480622739178208132.correct : P11480622739178208132.Spec := by
  intro n
  simp only [A117862]

end A117862

/-! ## A117862.P9127179804690646929

`∑[ogf((2x+2x^2)/(1-3x^2))]`
-/

namespace A117862.P9127179804690646929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2] [1, 0, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117862.P9127179804690646929

namespace A117862

/-- `∑[ogf((2x+2x^2)/(1-3x^2))]` -/
def P9127179804690646929.Spec : Prop :=
  ∀ n, P9127179804690646929.a n = A117862 n

end A117862

/-! ## A117862.P12209052001713455096

`3*a(n-2)+4` with `a(0)=0, a(1)=2`
-/

namespace A117862.P12209052001713455096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  3 * a (n - 2) + 4

end

end A117862.P12209052001713455096

namespace A117862

/-- `3*a(n-2)+4` -/
def P12209052001713455096.Spec : Prop :=
  ∀ n, (P12209052001713455096.a n : ℤ) = A117862 n

end A117862

/-! ## A117862.P9517846981259926779

`lcm(3, a(n-2))+4` with `a(0)=0, a(1)=2`
-/

namespace A117862.P9517846981259926779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Nat.lcm 3 (a (n - 2)) + 4

end

end A117862.P9517846981259926779

namespace A117862

/-- `lcm(3, a(n-2))+4` -/
def P9517846981259926779.Spec : Prop :=
  ∀ n, (P9517846981259926779.a n : ℤ) = A117862 n

end A117862

/-! ## A117862.P1850945034690198697

`∑[3*a(n-2)]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A117862.P1850945034690198697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117862.P1850945034690198697

namespace A117862

/-- `∑[3*a(n-2)]` -/
def P1850945034690198697.Spec : Prop :=
  ∀ n, (P1850945034690198697.a n : ℤ) = A117862 n

end A117862

/-! ## A117862.P9825070796536434451

`∏[3/a(n-1)]-2` with `a(0)=2, a(1)=2`
-/

namespace A117862.P9825070796536434451
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 2

end

end A117862.P9825070796536434451

namespace A117862

/-- `∏[3/a(n-1)]-2` -/
def P9825070796536434451.Spec : Prop :=
  ∀ n, P9825070796536434451.a n = (A117862 n : ℚ)

end A117862

/-! ## A117862.P2259121108269346653

`7-3*(1-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A117862.P2259121108269346653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  7 - 3 * (1 - a (n - 2))

end

end A117862.P2259121108269346653

namespace A117862

/-- `7-3*(1-a(n-2))` -/
def P2259121108269346653.Spec : Prop :=
  ∀ n, P2259121108269346653.a n = A117862 n

end A117862

/-! ## A117862.P2603102861181297924

`2*∑[round(3^(ceil(n/2)-1))]`
-/

namespace A117862.P2603102861181297924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117862.P2603102861181297924

namespace A117862

/-- `2*∑[round(3^(ceil(n/2)-1))]` -/
def P2603102861181297924.Spec : Prop :=
  ∀ n, P2603102861181297924.a n = A117862 n

end A117862

/-! ## A117862.P13175071723939829442

`a(n-2)/(1-2/3)+4` with `a(0)=0, a(1)=2`
-/

namespace A117862.P13175071723939829442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) / (1 - (2 : ℚ) / 3) + 4

end

end A117862.P13175071723939829442

namespace A117862

/-- `a(n-2)/(1-2/3)+4` -/
def P13175071723939829442.Spec : Prop :=
  ∀ n, P13175071723939829442.a n = (A117862 n : ℚ)

end A117862

/-! ## A117862.P5436404206767286223

`4-a(n-2)/(2/3-1)` with `a(0)=0, a(1)=2`
-/

namespace A117862.P5436404206767286223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  4 - a (n - 2) / ((2 : ℚ) / 3 - 1)

end

end A117862.P5436404206767286223

namespace A117862

/-- `4-a(n-2)/(2/3-1)` -/
def P5436404206767286223.Spec : Prop :=
  ∀ n, P5436404206767286223.a n = (A117862 n : ℚ)

end A117862

/-! ## A117862.P10549070383534569005

`a(n-1)+a(n-gcd(2, n))+2` with `a(0)=0`
-/

namespace A117862.P10549070383534569005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - Nat.gcd 2 n) + 2)

end

end A117862.P10549070383534569005

namespace A117862

/-- `a(n-1)+a(n-gcd(2, n))+2` -/
def P10549070383534569005.Spec : Prop :=
  ∀ n, (P10549070383534569005.a n : ℤ) = A117862 n

end A117862

/-! ## A117862.P18382297689412329838

`a(n-2)+a(n-2)+a(n-2)+4` with `a(0)=0, a(1)=2`
-/

namespace A117862.P18382297689412329838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + 4))

end

end A117862.P18382297689412329838

namespace A117862

/-- `a(n-2)+a(n-2)+a(n-2)+4` -/
def P18382297689412329838.Spec : Prop :=
  ∀ n, (P18382297689412329838.a n : ℤ) = A117862 n

end A117862

/-! ## A117862.P11119835203993669516

`A060647(n)-1`
-/

namespace A117862.P11119835203993669516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 n - 1

end

end A117862.P11119835203993669516

namespace A117862

/-- `A060647(n)-1` -/
def P11119835203993669516.Spec : Prop :=
  ∀ n, P11119835203993669516.a n = A117862 n

end A117862

/-! ## A117862.P11008833457600169544

`∑[lcm(2, A287479(n))]`
-/

namespace A117862.P11008833457600169544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A287479 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117862.P11008833457600169544

namespace A117862

/-- `∑[lcm(2, A287479(n))]` -/
def P11008833457600169544.Spec : Prop :=
  ∀ n, (P11008833457600169544.a n : ℤ) = A117862 n

end A117862

/-! ## A117862.P13402237106839978977

`A068911(n+1)-2`
-/

namespace A117862.P13402237106839978977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (n + 1) - 2

end

end A117862.P13402237106839978977

namespace A117862

/-- `A068911(n+1)-2` -/
def P13402237106839978977.Spec : Prop :=
  ∀ n, P13402237106839978977.a n = A117862 n

end A117862

/-! ## A117862.P3065312573642312620

`2*A038754(n)-2`
-/

namespace A117862.P3065312573642312620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038754 n - 2

end

end A117862.P3065312573642312620

namespace A117862

/-- `2*A038754(n)-2` -/
def P3065312573642312620.Spec : Prop :=
  ∀ n, P3065312573642312620.a n = A117862 n

end A117862

/-! ## A117862.P12275698624381522809

`A133463(2*n)-2`
-/

namespace A117862.P12275698624381522809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133463 (2 * n) - 2

end

end A117862.P12275698624381522809

namespace A117862

/-- `A133463(2*n)-2` -/
def P12275698624381522809.Spec : Prop :=
  ∀ n, P12275698624381522809.a n = A117862 n

end A117862

/-! ## A117862.P5620470815712601321

`∑[abs(Δ[A068911(n)])]-1`
-/

namespace A117862.P5620470815712601321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A117862.P5620470815712601321

namespace A117862

/-- `∑[abs(Δ[A068911(n)])]-1` -/
def P5620470815712601321.Spec : Prop :=
  ∀ n, P5620470815712601321.a n = A117862 n

end A117862

/-! ## A117862.P3387973445986314464

`2*A182522(n+1)-2`
-/

namespace A117862.P3387973445986314464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A182522 (n + 1) - 2

end

end A117862.P3387973445986314464

namespace A117862

/-- `2*A182522(n+1)-2` -/
def P3387973445986314464.Spec : Prop :=
  ∀ n, P3387973445986314464.a n = A117862 n

end A117862

/-! ## A117862.P625950425224804599

`A000792(A001651(n+2))-2`
-/

namespace A117862.P625950425224804599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A001651 (n + 2)).toNat - 2

end

end A117862.P625950425224804599

namespace A117862

/-- `A000792(A001651(n+2))-2` -/
def P625950425224804599.Spec : Prop :=
  ∀ n, P625950425224804599.a n = A117862 n

end A117862

/-!
# A117863: Number of palindromes (in base 4) below 4^n.

The programs for A117863, the canonical program `A117863.P13409218007360653114` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117863 has offset 1).

The definition of A117863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117863.P136394846066200761

`ogf((3+3x)/(1-x-4x^2+4x^3))`
-/

namespace A117863.P136394846066200761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3] [1, -1, -4, 4] n

end

end A117863.P136394846066200761

namespace A117863

/-- `ogf((3+3x)/(1-x-4x^2+4x^3))` -/
def P136394846066200761.Spec : Prop :=
  ∀ n, P136394846066200761.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P13409218007360653114

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=3, a(1)=6, a(2)=18`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117863

/-- `a(n-1)+4*a(n-2)-4*a(n-3)` -/
def P13409218007360653114.Spec : Prop :=
  ∀ n, P13409218007360653114.a n = A117863 (n + 1)

theorem P13409218007360653114.correct : P13409218007360653114.Spec := by
  intro n
  simp only [A117863, Nat.add_sub_cancel]

end A117863

/-! ## A117863.P15376101030505778612

`3*A061547(n+2)`
-/

namespace A117863.P15376101030505778612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061547 (n + 2)

end

end A117863.P15376101030505778612

namespace A117863

/-- `3*A061547(n+2)` -/
def P15376101030505778612.Spec : Prop :=
  ∀ n, P15376101030505778612.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P17749943774655117439

`(9*2^(n+1)-(-2)^(n+1)-8)/4`
-/

namespace A117863.P17749943774655117439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 2 ^ (n + 1) : ℤ) - (-2) ^ (n + 1) - 8 : ℚ) / 4

end

end A117863.P17749943774655117439

namespace A117863

/-- `(9*2^(n+1)-(-2)^(n+1)-8)/4` -/
def P17749943774655117439.Spec : Prop :=
  ∀ n, P17749943774655117439.a n = (A117863 (n + 1) : ℚ)

theorem P17749943774655117439.correct : P17749943774655117439.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A117863, Nat.add_sub_cancel, A117863.P17749943774655117439.a, A117863.P13409218007360653114.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A117863, Nat.add_sub_cancel, A117863.P17749943774655117439.a, A117863.P13409218007360653114.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A117863

/-! ## A117863.P14478749602022608702

`∑[ogf((3+3x)/(1-4x^2))]`
-/

namespace A117863.P14478749602022608702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3] [1, 0, -4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117863.P14478749602022608702

namespace A117863

/-- `∑[ogf((3+3x)/(1-4x^2))]` -/
def P14478749602022608702.Spec : Prop :=
  ∀ n, P14478749602022608702.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P1681189820642387845

`∑[4*a(n-2)]` with `a(0)=3, a(1)=3`
-/

namespace A117863.P1681189820642387845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117863.P1681189820642387845

namespace A117863

/-- `∑[4*a(n-2)]` -/
def P1681189820642387845.Spec : Prop :=
  ∀ n, (P1681189820642387845.a n : ℤ) = A117863 (n + 1)

end A117863

/-! ## A117863.P16596148494123702715

`4*a(n-2)+6` with `a(0)=3, a(1)=6`
-/

namespace A117863.P16596148494123702715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  4 * a (n - 2) + 6

end

end A117863.P16596148494123702715

namespace A117863

/-- `4*a(n-2)+6` -/
def P16596148494123702715.Spec : Prop :=
  ∀ n, (P16596148494123702715.a n : ℤ) = A117863 (n + 1)

end A117863

/-! ## A117863.P4758174992565131327

`∑[∏[(a(n-1)-3)²]]` with `a(0)=3, a(1)=1`
-/

namespace A117863.P4758174992565131327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  (f2 (n - 1) - 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117863.P4758174992565131327

namespace A117863

/-- `∑[∏[(a(n-1)-3)²]]` -/
def P4758174992565131327.Spec : Prop :=
  ∀ n, P4758174992565131327.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P18392198368417001951

`∑[a(n-2)/(1/2)²]` with `a(0)=3, a(1)=3`
-/

namespace A117863.P18392198368417001951
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117863.P18392198368417001951

namespace A117863

/-- `∑[a(n-2)/(1/2)²]` -/
def P18392198368417001951.Spec : Prop :=
  ∀ n, P18392198368417001951.a n = (A117863 (n + 1) : ℚ)

end A117863

/-! ## A117863.P7772838127400544167

`6-(a(n-2)-5*a(n-2))` with `a(0)=3, a(1)=6`
-/

namespace A117863.P7772838127400544167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  6 - (a (n - 2) - 5 * a (n - 2))

end

end A117863.P7772838127400544167

namespace A117863

/-- `6-(a(n-2)-5*a(n-2))` -/
def P7772838127400544167.Spec : Prop :=
  ∀ n, P7772838127400544167.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P6597468073046535635

`a(n-1)+2+a(n-1)+(-2)^n` with `a(0)=3`
-/

namespace A117863.P6597468073046535635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + (-2) ^ n)

end

end A117863.P6597468073046535635

namespace A117863

/-- `a(n-1)+2+a(n-1)+(-2)^n` -/
def P6597468073046535635.Spec : Prop :=
  ∀ n, P6597468073046535635.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P16246729538872817040

`∑[A117856(n+1)]`
-/

namespace A117863.P16246729538872817040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117863.P16246729538872817040

namespace A117863

/-- `∑[A117856(n+1)]` -/
def P16246729538872817040.Spec : Prop :=
  ∀ n, P16246729538872817040.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P3625546268156767836

`3*∑[A213173(n)]`
-/

namespace A117863.P3625546268156767836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117863.P3625546268156767836

namespace A117863

/-- `3*∑[A213173(n)]` -/
def P3625546268156767836.Spec : Prop :=
  ∀ n, P3625546268156767836.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P7351285969411374736

`A084568(n+1)-2`
-/

namespace A117863.P7351285969411374736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084568 (n + 1) - 2

end

end A117863.P7351285969411374736

namespace A117863

/-- `A084568(n+1)-2` -/
def P7351285969411374736.Spec : Prop :=
  ∀ n, P7351285969411374736.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P10287335740308237787

`A104721(n+2)-2`
-/

namespace A117863.P10287335740308237787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 (n + 2) - 2

end

end A117863.P10287335740308237787

namespace A117863

/-- `A104721(n+2)-2` -/
def P10287335740308237787.Spec : Prop :=
  ∀ n, P10287335740308237787.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P13000670127176079978

`3*∑[A016116(n)²]`
-/

namespace A117863.P13000670127176079978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117863.P13000670127176079978

namespace A117863

/-- `3*∑[A016116(n)²]` -/
def P13000670127176079978.Spec : Prop :=
  ∀ n, P13000670127176079978.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P13883806276699187377

`3*∑[A320770(n)²]`
-/

namespace A117863.P13883806276699187377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320770 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117863.P13883806276699187377

namespace A117863

/-- `3*∑[A320770(n)²]` -/
def P13883806276699187377.Spec : Prop :=
  ∀ n, P13883806276699187377.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P14973648137872929006

`Δ[A136326(n+2)]-2`
-/

namespace A117863.P14973648137872929006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A117863.P14973648137872929006

namespace A117863

/-- `Δ[A136326(n+2)]-2` -/
def P14973648137872929006.Spec : Prop :=
  ∀ n, P14973648137872929006.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P6809635640883098706

`3*(A305750(n+2)-1)`
-/

namespace A117863.P6809635640883098706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A305750 (n + 2) - 1)

end

end A117863.P6809635640883098706

namespace A117863

/-- `3*(A305750(n+2)-1)` -/
def P6809635640883098706.Spec : Prop :=
  ∀ n, P6809635640883098706.a n = A117863 (n + 1)

end A117863

/-! ## A117863.P2963351980331660510

`A056486(n+2)/2-2`
-/

namespace A117863.P2963351980331660510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056486 (n + 2) : ℚ) / 2 - 2

end

end A117863.P2963351980331660510

namespace A117863

/-- `A056486(n+2)/2-2` -/
def P2963351980331660510.Spec : Prop :=
  ∀ n, P2963351980331660510.a n = (A117863 (n + 1) : ℚ)

end A117863

/-!
# A117864: Number of palindromes (in base 5) below 5^n.

The programs for A117864, the canonical program `A117864.P12083211651731204858` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117864 has offset 1).

The definition of A117864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117864.P7822912732471231040

`ogf((4+4x)/(1-x-5x^2+5x^3))`
-/

namespace A117864.P7822912732471231040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4] [1, -1, -5, 5] n

end

end A117864.P7822912732471231040

namespace A117864

/-- `ogf((4+4x)/(1-x-5x^2+5x^3))` -/
def P7822912732471231040.Spec : Prop :=
  ∀ n, P7822912732471231040.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P12083211651731204858

`a(n-1)+5*a(n-2)-5*a(n-3)` with `a(0)=4, a(1)=8, a(2)=28`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117864

/-- `a(n-1)+5*a(n-2)-5*a(n-3)` -/
def P12083211651731204858.Spec : Prop :=
  ∀ n, P12083211651731204858.a n = A117864 (n + 1)

theorem P12083211651731204858.correct : P12083211651731204858.Spec := by
  intro n
  simp only [A117864, Nat.add_sub_cancel]

end A117864

/-! ## A117864.P5963502144094086618

`4*A238366(n)`
-/

namespace A117864.P5963502144094086618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A238366 n

end

end A117864.P5963502144094086618

namespace A117864

/-- `4*A238366(n)` -/
def P5963502144094086618.Spec : Prop :=
  ∀ n, P5963502144094086618.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P3755329402737955487

`∑[ogf((4+4x)/(1-5x^2))]`
-/

namespace A117864.P3755329402737955487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4] [1, 0, -5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117864.P3755329402737955487

namespace A117864

/-- `∑[ogf((4+4x)/(1-5x^2))]` -/
def P3755329402737955487.Spec : Prop :=
  ∀ n, P3755329402737955487.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P16947766158670585113

`∑[5*a(n-2)]` with `a(0)=4, a(1)=4`
-/

namespace A117864.P16947766158670585113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  5 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117864.P16947766158670585113

namespace A117864

/-- `∑[5*a(n-2)]` -/
def P16947766158670585113.Spec : Prop :=
  ∀ n, (P16947766158670585113.a n : ℤ) = A117864 (n + 1)

end A117864

/-! ## A117864.P15165989047699869895

`∑[4*5^floor(n/2)]`
-/

namespace A117864.P15165989047699869895
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117864.P15165989047699869895

namespace A117864

/-- `∑[4*5^floor(n/2)]` -/
def P15165989047699869895.Spec : Prop :=
  ∀ n, P15165989047699869895.a n = (A117864 (n + 1) : ℚ)

end A117864

/-! ## A117864.P1529334594657121558

`5*a(n-2)+8` with `a(0)=4, a(1)=8`
-/

namespace A117864.P1529334594657121558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 8] fun n a =>
  5 * a (n - 2) + 8

end

end A117864.P1529334594657121558

namespace A117864

/-- `5*a(n-2)+8` -/
def P1529334594657121558.Spec : Prop :=
  ∀ n, (P1529334594657121558.a n : ℤ) = A117864 (n + 1)

end A117864

/-! ## A117864.P16639558131259080692

`lcm(5, a(n-2))+8` with `a(0)=4, a(1)=8`
-/

namespace A117864.P16639558131259080692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 8] fun n a =>
  Nat.lcm 5 (a (n - 2)) + 8

end

end A117864.P16639558131259080692

namespace A117864

/-- `lcm(5, a(n-2))+8` -/
def P16639558131259080692.Spec : Prop :=
  ∀ n, (P16639558131259080692.a n : ℤ) = A117864 (n + 1)

end A117864

/-! ## A117864.P17671486309295324863

`8-(a(n-2)-6*a(n-2))` with `a(0)=4, a(1)=8`
-/

namespace A117864.P17671486309295324863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8] fun n a =>
  8 - (a (n - 2) - 6 * a (n - 2))

end

end A117864.P17671486309295324863

namespace A117864

/-- `8-(a(n-2)-6*a(n-2))` -/
def P17671486309295324863.Spec : Prop :=
  ∀ n, P17671486309295324863.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P768594886469772357

`Δ[A026395(n+2)]-2`
-/

namespace A117864.P768594886469772357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A117864.P768594886469772357

namespace A117864

/-- `Δ[A026395(n+2)]-2` -/
def P768594886469772357.Spec : Prop :=
  ∀ n, P768594886469772357.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P1757529337499845793

`4*∑[A074872(n+1)]`
-/

namespace A117864.P1757529337499845793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117864.P1757529337499845793

namespace A117864

/-- `4*∑[A074872(n+1)]` -/
def P1757529337499845793.Spec : Prop :=
  ∀ n, P1757529337499845793.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P15034691920433799059

`2*(A056487(n+1)-1)`
-/

namespace A117864.P15034691920433799059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056487 (n + 1) - 1)

end

end A117864.P15034691920433799059

namespace A117864

/-- `2*(A056487(n+1)-1)` -/
def P15034691920433799059.Spec : Prop :=
  ∀ n, P15034691920433799059.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P9571020383456419224

`2*(A163114(n+1)-1)`
-/

namespace A117864.P9571020383456419224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A163114 (n + 1) - 1)

end

end A117864.P9571020383456419224

namespace A117864

/-- `2*(A163114(n+1)-1)` -/
def P9571020383456419224.Spec : Prop :=
  ∀ n, P9571020383456419224.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P16119571373726607025

`2*A181287(2*n+3)`
-/

namespace A117864.P16119571373726607025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181287 (2 * n + 3)

end

end A117864.P16119571373726607025

namespace A117864

/-- `2*A181287(2*n+3)` -/
def P16119571373726607025.Spec : Prop :=
  ∀ n, P16119571373726607025.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P16669021308278494258

`2*(Δ[A162963(n+1)]-1)`
-/

namespace A117864.P16669021308278494258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A117864.P16669021308278494258

namespace A117864

/-- `2*(Δ[A162963(n+1)]-1)` -/
def P16669021308278494258.Spec : Prop :=
  ∀ n, P16669021308278494258.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P271706375024160412

`lcm(A059159(n+1), A238366(n))`
-/

namespace A117864.P271706375024160412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059159 (n + 1)) (A238366 n)

end

end A117864.P271706375024160412

namespace A117864

/-- `lcm(A059159(n+1), A238366(n))` -/
def P271706375024160412.Spec : Prop :=
  ∀ n, (P271706375024160412.a n : ℤ) = A117864 (n + 1)

end A117864

/-! ## A117864.P9656422448732792222

`A198306(n+3)-(A238366(n)+2)`
-/

namespace A117864.P9656422448732792222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198306 (n + 3) - (A238366 n + 2)

end

end A117864.P9656422448732792222

namespace A117864

/-- `A198306(n+3)-(A238366(n)+2)` -/
def P9656422448732792222.Spec : Prop :=
  ∀ n, P9656422448732792222.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P16035639441344207446

`A056451(n+1)+A074872(n+2)-2`
-/

namespace A117864.P16035639441344207446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (n + 1) + (A074872 (n + 2) - 2)

end

end A117864.P16035639441344207446

namespace A117864

/-- `A056451(n+1)+A074872(n+2)-2` -/
def P16035639441344207446.Spec : Prop :=
  ∀ n, P16035639441344207446.a n = A117864 (n + 1)

end A117864

/-! ## A117864.P2348898525376320876

`2*(A056449(n+1)/A056449(n)*A056451(n)-1)`
-/

namespace A117864.P2348898525376320876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A056449 (n + 1) : ℚ) / (A056449 n : ℚ) * (A056451 n : ℚ) - 1)

end

end A117864.P2348898525376320876

namespace A117864

/-- `2*(A056449(n+1)/A056449(n)*A056451(n)-1)` -/
def P2348898525376320876.Spec : Prop :=
  ∀ n, P2348898525376320876.a n = (A117864 (n + 1) : ℚ)

end A117864

/-! ## A117864.P4909786610712354222

`A024049(A008624(2*n+1))+A024049(A008624(2*n))`
-/

namespace A117864.P4909786610712354222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024049 (A008624 (2 * n + 1)).toNat + A024049 (A008624 (2 * n)).toNat

end

end A117864.P4909786610712354222

namespace A117864

/-- `A024049(A008624(2*n+1))+A024049(A008624(2*n))` -/
def P4909786610712354222.Spec : Prop :=
  ∀ n, P4909786610712354222.a n = A117864 (n + 1)

end A117864

/-!
# A117865: Number of palindromes (in base 6) below 6^n.

The programs for A117865, the canonical program `A117865.P4406382685512650747` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117865 has offset 1).

The definition of A117865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117865.P4406382685512650747

`ogf((5+5x)/(1-x-6x^2+6x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117865

/-- `ogf((5+5x)/(1-x-6x^2+6x^3))` -/
def P4406382685512650747.Spec : Prop :=
  ∀ n, P4406382685512650747.a n = A117865 (n + 1)

theorem P4406382685512650747.correct : P4406382685512650747.Spec := by
  intro n
  simp only [A117865, Nat.add_sub_cancel]

end A117865

/-! ## A117865.P7352347518181533609

`∑[ogf((5+5x)/(1-6x^2))]`
-/

namespace A117865.P7352347518181533609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 5] [1, 0, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117865.P7352347518181533609

namespace A117865

/-- `∑[ogf((5+5x)/(1-6x^2))]` -/
def P7352347518181533609.Spec : Prop :=
  ∀ n, P7352347518181533609.a n = A117865 (n + 1)

end A117865

/-! ## A117865.P13413820955184447289

`∑[6*a(n-2)]` with `a(0)=5, a(1)=5`
-/

namespace A117865.P13413820955184447289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 5] fun n f1 =>
  6 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117865.P13413820955184447289

namespace A117865

/-- `∑[6*a(n-2)]` -/
def P13413820955184447289.Spec : Prop :=
  ∀ n, (P13413820955184447289.a n : ℤ) = A117865 (n + 1)

end A117865

/-! ## A117865.P16644259919439659764

`∑[5*6^floor(n/2)]`
-/

namespace A117865.P16644259919439659764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (6 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117865.P16644259919439659764

namespace A117865

/-- `∑[5*6^floor(n/2)]` -/
def P16644259919439659764.Spec : Prop :=
  ∀ n, P16644259919439659764.a n = (A117865 (n + 1) : ℚ)

end A117865

/-! ## A117865.P8144999016225857909

`6*a(n-2)+10` with `a(0)=5, a(1)=10`
-/

namespace A117865.P8144999016225857909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 10] fun n a =>
  6 * a (n - 2) + 10

end

end A117865.P8144999016225857909

namespace A117865

/-- `6*a(n-2)+10` -/
def P8144999016225857909.Spec : Prop :=
  ∀ n, (P8144999016225857909.a n : ℤ) = A117865 (n + 1)

end A117865

/-! ## A117865.P2872545406695070972

`A056452(n+1)+A056452(n)-2`
-/

namespace A117865.P2872545406695070972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056452 (n + 1) + (A056452 n - 2)

end

end A117865.P2872545406695070972

namespace A117865

/-- `A056452(n+1)+A056452(n)-2` -/
def P2872545406695070972.Spec : Prop :=
  ∀ n, P2872545406695070972.a n = A117865 (n + 1)

end A117865

/-! ## A117865.P3145965625609826473

`A026532(n+2)+A164532(n+2)-2`
-/

namespace A117865.P3145965625609826473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (n + 2) + (A164532 (n + 2) - 2)

end

end A117865.P3145965625609826473

namespace A117865

/-- `A026532(n+2)+A164532(n+2)-2` -/
def P3145965625609826473.Spec : Prop :=
  ∀ n, P3145965625609826473.a n = A117865 (n + 1)

end A117865

/-! ## A117865.P15993643101522313143

`A056488(n+2)/3-2`
-/

namespace A117865.P15993643101522313143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056488 (n + 2) : ℚ) / 3 - 2

end

end A117865.P15993643101522313143

namespace A117865

/-- `A056488(n+2)/3-2` -/
def P15993643101522313143.Spec : Prop :=
  ∀ n, P15993643101522313143.a n = (A117865 (n + 1) : ℚ)

end A117865

/-!
# A117866: Number of palindromes (in base 7) below 7^n.

The programs for A117866, the canonical program `A117866.P3338665221511929972` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117866 has offset 1).

The definition of A117866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117866.P9441255772954552725

`ogf((6+6x)/(1-x-7x^2+7x^3))`
-/

namespace A117866.P9441255772954552725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 6] [1, -1, -7, 7] n

end

end A117866.P9441255772954552725

namespace A117866

/-- `ogf((6+6x)/(1-x-7x^2+7x^3))` -/
def P9441255772954552725.Spec : Prop :=
  ∀ n, P9441255772954552725.a n = A117866 (n + 1)

end A117866

/-! ## A117866.P3338665221511929972

`a(n-1)+7*a(n-2)-7*a(n-3)` with `a(0)=6, a(1)=12, a(2)=54`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117866

/-- `a(n-1)+7*a(n-2)-7*a(n-3)` -/
def P3338665221511929972.Spec : Prop :=
  ∀ n, P3338665221511929972.a n = A117866 (n + 1)

theorem P3338665221511929972.correct : P3338665221511929972.Spec := by
  intro n
  simp only [A117866, Nat.add_sub_cancel]

end A117866

/-! ## A117866.P6464255731824000548

`∑[ogf((6+6x)/(1-7x^2))]`
-/

namespace A117866.P6464255731824000548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 6] [1, 0, -7] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117866.P6464255731824000548

namespace A117866

/-- `∑[ogf((6+6x)/(1-7x^2))]` -/
def P6464255731824000548.Spec : Prop :=
  ∀ n, P6464255731824000548.a n = A117866 (n + 1)

end A117866

/-! ## A117866.P8889680696075164580

`∑[7*a(n-2)]` with `a(0)=6, a(1)=6`
-/

namespace A117866.P8889680696075164580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 6] fun n f1 =>
  7 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117866.P8889680696075164580

namespace A117866

/-- `∑[7*a(n-2)]` -/
def P8889680696075164580.Spec : Prop :=
  ∀ n, (P8889680696075164580.a n : ℤ) = A117866 (n + 1)

end A117866

/-! ## A117866.P16988243109856509360

`∑[6*7^floor(n/2)]`
-/

namespace A117866.P16988243109856509360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (7 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117866.P16988243109856509360

namespace A117866

/-- `∑[6*7^floor(n/2)]` -/
def P16988243109856509360.Spec : Prop :=
  ∀ n, P16988243109856509360.a n = (A117866 (n + 1) : ℚ)

end A117866

/-! ## A117866.P3463787813250598133

`7*a(n-2)+12` with `a(0)=6, a(1)=12`
-/

namespace A117866.P3463787813250598133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 12] fun n a =>
  7 * a (n - 2) + 12

end

end A117866.P3463787813250598133

namespace A117866

/-- `7*a(n-2)+12` -/
def P3463787813250598133.Spec : Prop :=
  ∀ n, (P3463787813250598133.a n : ℤ) = A117866 (n + 1)

end A117866

/-! ## A117866.P6164755699832091745

`lcm(2, ∑[A117859(n+1)])`
-/

namespace A117866.P6164755699832091745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117859 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117866.P6164755699832091745

namespace A117866

/-- `lcm(2, ∑[A117859(n+1)])` -/
def P6164755699832091745.Spec : Prop :=
  ∀ n, (P6164755699832091745.a n : ℤ) = A117866 (n + 1)

end A117866

/-! ## A117866.P10687969853821607093

`A055258(A101881(n))-2`
-/

namespace A117866.P10687969853821607093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055258 (A101881 n).toNat - 2

end

end A117866.P10687969853821607093

namespace A117866

/-- `A055258(A101881(n))-2` -/
def P10687969853821607093.Spec : Prop :=
  ∀ n, P10687969853821607093.a n = A117866 (n + 1)

end A117866

/-! ## A117866.P10751335856918659468

`∑[A198688(A004526(n))]+n+1`
-/

namespace A117866.P10751335856918659468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198688 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A117866.P10751335856918659468

namespace A117866

/-- `∑[A198688(A004526(n))]+n+1` -/
def P10751335856918659468.Spec : Prop :=
  ∀ n, P10751335856918659468.a n = A117866 (n + 1)

end A117866

/-!
# A117867: Number of palindromes (in base 8) below 8^n.

The programs for A117867, the canonical program `A117867.P2057922221138345553` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117867 has offset 1).

The definition of A117867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117867.P13615468346810294183

`ogf((7+7x)/(1-x-8x^2+8x^3))`
-/

namespace A117867.P13615468346810294183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 7] [1, -1, -8, 8] n

end

end A117867.P13615468346810294183

namespace A117867

/-- `ogf((7+7x)/(1-x-8x^2+8x^3))` -/
def P13615468346810294183.Spec : Prop :=
  ∀ n, P13615468346810294183.a n = A117867 (n + 1)

end A117867

/-! ## A117867.P2057922221138345553

`a(n-1)+8*a(n-2)-8*a(n-3)` with `a(0)=7, a(1)=14, a(2)=70`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117867

/-- `a(n-1)+8*a(n-2)-8*a(n-3)` -/
def P2057922221138345553.Spec : Prop :=
  ∀ n, P2057922221138345553.a n = A117867 (n + 1)

theorem P2057922221138345553.correct : P2057922221138345553.Spec := by
  intro n
  simp only [A117867, Nat.add_sub_cancel]

end A117867

/-! ## A117867.P15618621594073427423

`∑[ogf((7+7x)/(1-8x^2))]`
-/

namespace A117867.P15618621594073427423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 7] [1, 0, -8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117867.P15618621594073427423

namespace A117867

/-- `∑[ogf((7+7x)/(1-8x^2))]` -/
def P15618621594073427423.Spec : Prop :=
  ∀ n, P15618621594073427423.a n = A117867 (n + 1)

end A117867

/-! ## A117867.P15446620913261862000

`∑[8*a(n-2)]` with `a(0)=7, a(1)=7`
-/

namespace A117867.P15446620913261862000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 7] fun n f1 =>
  8 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117867.P15446620913261862000

namespace A117867

/-- `∑[8*a(n-2)]` -/
def P15446620913261862000.Spec : Prop :=
  ∀ n, (P15446620913261862000.a n : ℤ) = A117867 (n + 1)

end A117867

/-! ## A117867.P588700630778957939

`∑[7*8^floor(n/2)]`
-/

namespace A117867.P588700630778957939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (8 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117867.P588700630778957939

namespace A117867

/-- `∑[7*8^floor(n/2)]` -/
def P588700630778957939.Spec : Prop :=
  ∀ n, P588700630778957939.a n = (A117867 (n + 1) : ℚ)

end A117867

/-! ## A117867.P16351576601845063134

`8*a(n-2)+14` with `a(0)=7, a(1)=14`
-/

namespace A117867.P16351576601845063134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 14] fun n a =>
  8 * a (n - 2) + 14

end

end A117867.P16351576601845063134

namespace A117867

/-- `8*a(n-2)+14` -/
def P16351576601845063134.Spec : Prop :=
  ∀ n, (P16351576601845063134.a n : ℤ) = A117867 (n + 1)

end A117867

/-! ## A117867.P9385537910773747500

`7*∑[8^A004526(n)]`
-/

namespace A117867.P9385537910773747500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A004526 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117867.P9385537910773747500

namespace A117867

/-- `7*∑[8^A004526(n)]` -/
def P9385537910773747500.Spec : Prop :=
  ∀ n, P9385537910773747500.a n = (A117867 (n + 1) : ℚ)

end A117867

/-! ## A117867.P3542651583712214864

`A070875(3*n)+A112032(3*n)-2`
-/

namespace A117867.P3542651583712214864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070875 (3 * n) + (A112032 (3 * n) - 2)

end

end A117867.P3542651583712214864

namespace A117867

/-- `A070875(3*n)+A112032(3*n)-2` -/
def P3542651583712214864.Spec : Prop :=
  ∀ n, P3542651583712214864.a n = A117867 (n + 1)

end A117867

/-! ## A117867.P8947141398747782853

`A000038(n+1)+∑[A055274(A008619(n))]`
-/

namespace A117867.P8947141398747782853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117867.P8947141398747782853

namespace A117867

/-- `A000038(n+1)+∑[A055274(A008619(n))]` -/
def P8947141398747782853.Spec : Prop :=
  ∀ n, P8947141398747782853.a n = A117867 (n + 1)

end A117867

/-!
# A117868: Number of palindromes (in base 9) below 9^n.

The programs for A117868, the canonical program `A117868.P6242398759922463825` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117868 has offset 1).

The definition of A117868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117868.P18072864154631743008

`ogf((8+8x)/(1-x-9x^2+9x^3))`
-/

namespace A117868.P18072864154631743008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8] [1, -1, -9, 9] n

end

end A117868.P18072864154631743008

namespace A117868

/-- `ogf((8+8x)/(1-x-9x^2+9x^3))` -/
def P18072864154631743008.Spec : Prop :=
  ∀ n, P18072864154631743008.a n = A117868 (n + 1)

end A117868

/-! ## A117868.P6242398759922463825

`8*3^n+2*(-3)^n-2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117868

/-- `8*3^n+2*(-3)^n-2` -/
def P6242398759922463825.Spec : Prop :=
  ∀ n, P6242398759922463825.a n = A117868 (n + 1)

theorem P6242398759922463825.correct : P6242398759922463825.Spec := by
  intro n
  simp only [A117868, Nat.add_sub_cancel]

end A117868

/-! ## A117868.P10914391980911485948

`∑[ogf((8+8x)/(1-9x^2))]`
-/

namespace A117868.P10914391980911485948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8] [1, 0, -9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117868.P10914391980911485948

namespace A117868

/-- `∑[ogf((8+8x)/(1-9x^2))]` -/
def P10914391980911485948.Spec : Prop :=
  ∀ n, P10914391980911485948.a n = A117868 (n + 1)

end A117868

/-! ## A117868.P1856219203015301543

`∑[9*a(n-2)]` with `a(0)=8, a(1)=8`
-/

namespace A117868.P1856219203015301543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 8] fun n f1 =>
  9 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117868.P1856219203015301543

namespace A117868

/-- `∑[9*a(n-2)]` -/
def P1856219203015301543.Spec : Prop :=
  ∀ n, (P1856219203015301543.a n : ℤ) = A117868 (n + 1)

end A117868

/-! ## A117868.P17575799170193323339

`8*∑[3^and(n, -2)]`
-/

namespace A117868.P17575799170193323339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (Int.land (n : ℤ) (-2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117868.P17575799170193323339

namespace A117868

/-- `8*∑[3^and(n, -2)]` -/
def P17575799170193323339.Spec : Prop :=
  ∀ n, P17575799170193323339.a n = (A117868 (n + 1) : ℚ)

end A117868

/-! ## A117868.P8445161283709292675

`9*a(n-2)+16` with `a(0)=8, a(1)=16`
-/

namespace A117868.P8445161283709292675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 16] fun n a =>
  9 * a (n - 2) + 16

end

end A117868.P8445161283709292675

namespace A117868

/-- `9*a(n-2)+16` -/
def P8445161283709292675.Spec : Prop :=
  ∀ n, (P8445161283709292675.a n : ℤ) = A117868 (n + 1)

theorem P8445161283709292675.correct : P8445161283709292675.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A117868, Nat.add_sub_cancel, A117868.P8445161283709292675.a, A117868.P6242398759922463825.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A117868, Nat.add_sub_cancel, A117868.P8445161283709292675.a, A117868.P6242398759922463825.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A117868

/-! ## A117868.P16130618613608718197

`∑[a(n-2)/(1/3)²]` with `a(0)=8, a(1)=8`
-/

namespace A117868.P16130618613608718197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [8, 8] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117868.P16130618613608718197

namespace A117868

/-- `∑[a(n-2)/(1/3)²]` -/
def P16130618613608718197.Spec : Prop :=
  ∀ n, P16130618613608718197.a n = (A117868 (n + 1) : ℚ)

end A117868

/-! ## A117868.P17025944217736707109

`∑[A117861(n+1)]`
-/

namespace A117868.P17025944217736707109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117868.P17025944217736707109

namespace A117868

/-- `∑[A117861(n+1)]` -/
def P17025944217736707109.Spec : Prop :=
  ∀ n, P17025944217736707109.a n = A117868 (n + 1)

end A117868

/-! ## A117868.P11176285608255059577

`8*∑[A108411(n)²]`
-/

namespace A117868.P11176285608255059577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117868.P11176285608255059577

namespace A117868

/-- `8*∑[A108411(n)²]` -/
def P11176285608255059577.Spec : Prop :=
  ∀ n, P11176285608255059577.a n = A117868 (n + 1)

end A117868

/-! ## A117868.P8100066458564405339

`2*∑[A003946(or(1, n))]`
-/

namespace A117868.P8100066458564405339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117868.P8100066458564405339

namespace A117868

/-- `2*∑[A003946(or(1, n))]` -/
def P8100066458564405339.Spec : Prop :=
  ∀ n, P8100066458564405339.a n = A117868 (n + 1)

end A117868

/-! ## A117868.P9988060005916233592

`4*A329774(or(1, 3*n))`
-/

namespace A117868.P9988060005916233592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A329774 (Nat.lor 1 (3 * n))

end

end A117868.P9988060005916233592

namespace A117868

/-- `4*A329774(or(1, 3*n))` -/
def P9988060005916233592.Spec : Prop :=
  ∀ n, P9988060005916233592.a n = A117868 (n + 1)

end A117868

/-! ## A117868.P5004383662505244040

`∑[2*A117855(n+1)²]`
-/

namespace A117868.P5004383662505244040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A117855 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117868.P5004383662505244040

namespace A117868

/-- `∑[2*A117855(n+1)²]` -/
def P5004383662505244040.Spec : Prop :=
  ∀ n, P5004383662505244040.a n = A117868 (n + 1)

end A117868

/-!
# A117869: Partial sums of A000149.

The programs for A117869, the canonical program `A117869.P18256498155837451709` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117869 has offset 0).

The definition of A117869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117869.P12245627348145292237

`∑[floor(exp(n))]`
-/

namespace A117869.P12245627348145292237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117869.P12245627348145292237

namespace A117869

/-- `∑[floor(exp(n))]` -/
def P12245627348145292237.Spec : Prop :=
  ∀ n, P12245627348145292237.a n = A117869 n

end A117869

/-! ## A117869.P4262352581217989852

`or(∑[floor(e^n)], char[1])`
-/

namespace A117869.P4262352581217989852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 ^ n⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A117869.P4262352581217989852

namespace A117869

/-- `or(∑[floor(e^n)], char[1])` -/
def P4262352581217989852.Spec : Prop :=
  ∀ n, P4262352581217989852.a n = A117869 n

end A117869

/-! ## A117869.P10101119090665022752

`floor(a(n-1)+exp(n))` with `a(0)=1`
-/

namespace A117869.P10101119090665022752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.exp (n : ℝ)⌋

end

end A117869.P10101119090665022752

namespace A117869

/-- `floor(a(n-1)+exp(n))` -/
def P10101119090665022752.Spec : Prop :=
  ∀ n, P10101119090665022752.a n = A117869 n

end A117869

/-! ## A117869.P18256498155837451709

`∑[A001671(n)]-n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A117869

/-- `∑[A001671(n)]-n` -/
def P18256498155837451709.Spec : Prop :=
  ∀ n, P18256498155837451709.a n = A117869 n

theorem P18256498155837451709.correct : P18256498155837451709.Spec := by
  intro n
  simp only [A117869]

end A117869

/-! ## A117869.P17436142908157586643

`∑[2*A000149(n)]/2`
-/

namespace A117869.P17436142908157586643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000149 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A117869.P17436142908157586643

namespace A117869

/-- `∑[2*A000149(n)]/2` -/
def P17436142908157586643.Spec : Prop :=
  ∀ n, P17436142908157586643.a n = (A117869 n : ℚ)

end A117869

/-! ## A117869.P15781558559702941542

`∑[A005181(2*n+1)]-n`
-/

namespace A117869.P15781558559702941542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A117869.P15781558559702941542

namespace A117869

/-- `∑[A005181(2*n+1)]-n` -/
def P15781558559702941542.Spec : Prop :=
  ∀ n, P15781558559702941542.a n = A117869 n

end A117869

/-! ## A117869.P8606292535137106373

`A214077(3*n)+a(n-1)` with `a(0)=1`
-/

namespace A117869.P8606292535137106373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214077 (3 * n) + a (n - 1)

end

end A117869.P8606292535137106373

namespace A117869

/-- `A214077(3*n)+a(n-1)` -/
def P8606292535137106373.Spec : Prop :=
  ∀ n, P8606292535137106373.a n = A117869 n

end A117869

/-! ## A117869.P8891707478421183325

`∑[A000149(n)]%A000149(n+3)`
-/

namespace A117869.P8891707478421183325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000149 (n + 3))

end

end A117869.P8891707478421183325

namespace A117869

/-- `∑[A000149(n)]%A000149(n+3)` -/
def P8891707478421183325.Spec : Prop :=
  ∀ n, P8891707478421183325.a n = A117869 n

end A117869

/-! ## A117869.P7644691398689814004

`∑[floor(2*sinh(n))]+1`
-/

namespace A117869.P7644691398689814004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sinh (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A117869.P7644691398689814004

namespace A117869

/-- `∑[floor(2*sinh(n))]+1` -/
def P7644691398689814004.Spec : Prop :=
  ∀ n, P7644691398689814004.a n = A117869 n

end A117869

/-!
# A117870: Square board sizes for which the lights out problem does not have a unique solution (counting solutions differing only by rotation and reflection as distinct).

The programs for A117870, there is no canonical definition to state claims against.
-/

/-! ## A117870.P11727448098980355656

`A093614(n+1)-1`
-/

namespace A117870.P11727448098980355656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093614 (n + 1) - 1

end

end A117870.P11727448098980355656

/-! ## A117870.P16857322941922468816

`lt[0, A159257(n+1)]+1`
-/

namespace A117870.P16857322941922468816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A117870.P16857322941922468816

/-! ## A117870.P15112610301165550164

`A023443(A093614(n+1))`
-/

namespace A117870.P15112610301165550164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A093614 (n + 1)).toNat

end

end A117870.P15112610301165550164

/-! ## A117870.P596266212447946852

`A134824(n+2)+A093614(n+1)`
-/

namespace A117870.P596266212447946852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A093614 (n + 1)

end

end A117870.P596266212447946852

/-! ## A117870.P11655365040075173551

`A158856(A093614(gcd(n, n+1)))+A093614(n+1)`
-/

namespace A117870.P11655365040075173551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158856 (A093614 (Nat.gcd n (n + 1))).toNat + A093614 (n + 1)

end

end A117870.P11655365040075173551

/-! ## A117870.P9877526768388059912

`lt[4, A165738(n+1)]`
-/

namespace A117870.P9877526768388059912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A117870.P9877526768388059912

/-! ## A117870.P7779206457306066801

`A233583(A093614(n+1)%A017341(n))`
-/

namespace A117870.P7779206457306066801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.tmod (A093614 (n + 1)) (A017341 n)).toNat

end

end A117870.P7779206457306066801

/-! ## A117870.P12229302290382778155

`lcm(A054977(n), A233583(A093614(n+1)))`
-/

namespace A117870.P12229302290382778155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A233583 (A093614 (n + 1)).toNat)

end

end A117870.P12229302290382778155

/-! ## A117870.P15551142848674902655

`lt[1, A075462(n+1)]+1`
-/

namespace A117870.P15551142848674902655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A117870.P15551142848674902655

/-! ## A117870.P5063960745266596730

`lt[1, A075463(2*n+1)]`
-/

namespace A117870.P5063960745266596730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075463 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A117870.P5063960745266596730

/-!
# A117871: Decimal expansion of Sum_{i>=1} 1/A092143(i).

The programs for A117871, there is no canonical definition to state claims against.
-/

/-! ## A117871.P10006563539580089921

`A129635(n)-floor(acot(n))`
-/

namespace A117871.P10006563539580089921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129635 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A117871.P10006563539580089921

/-!
# A117872: Parity of the iterated triangular numbers, using "2" as a seed.

The programs for A117872, there is no canonical definition to state claims against.
-/

/-! ## A117872.P10426097796188550781

`floor(acot(A275342(n+1)))`
-/

namespace A117872.P10426097796188550781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A275342 (n + 1) : ℝ)⌋

end

end A117872.P10426097796188550781

/-! ## A117872.P307021895482646944

`floor(acot(A275342(n-log2(1/2))²))`
-/

namespace A117872.P307021895482646944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A275342 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2 : ℝ)⌋

end

end A117872.P307021895482646944

/-! ## A117872.P3925045376671404636

`A002483(n)^A275342(n+1)`
-/

namespace A117872.P3925045376671404636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002483 n : ℚ) ^ (A275342 (n + 1) : ℤ)

end

end A117872.P3925045376671404636

/-! ## A117872.P15724432491049676842

`C(A037213(n), A275342(n+1))`
-/

namespace A117872.P15724432491049676842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A037213 n).toNat (A275342 (n + 1)).toNat

end

end A117872.P15724432491049676842

/-! ## A117872.P2377391195092736918

`A000007(a(A275342(n+1)²))` with `a(0)=0`
-/

namespace A117872.P2377391195092736918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000007 (a (A275342 (n + 1) ^ 2).toNat).toNat

end

end A117872.P2377391195092736918

/-! ## A117872.P7653652570653012773

`A000586(a(A275342(n+1)²))` with `a(0)=0`
-/

namespace A117872.P7653652570653012773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000586 (a (A275342 (n + 1) ^ 2).toNat).toNat

end

end A117872.P7653652570653012773

/-! ## A117872.P10628732985654287665

`A003982(a(A275342(n+1)²))` with `a(0)=0`
-/

namespace A117872.P10628732985654287665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A003982 (a (A275342 (n + 1) ^ 2).toNat).toNat

end

end A117872.P10628732985654287665

/-! ## A117872.P7365303236113676902

`A007599(a(A275342(n+1)²))` with `a(0)=0`
-/

namespace A117872.P7365303236113676902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007599 (a (A275342 (n + 1) ^ 2).toNat).toNat

end

end A117872.P7365303236113676902

/-! ## A117872.P13604588093450348361

`A008290(a(A275342(n+1)²))` with `a(0)=0`
-/

namespace A117872.P13604588093450348361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008290 (a (A275342 (n + 1) ^ 2).toNat).toNat

end

end A117872.P13604588093450348361

/-! ## A117872.P5630971180197715138

`A010059(a(A275342(n+1)²))` with `a(0)=0`
-/

namespace A117872.P5630971180197715138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010059 (a (A275342 (n + 1) ^ 2).toNat).toNat

end

end A117872.P5630971180197715138

/-! ## A117872.P9897330900619229904

`atan(A033684(n))^A275342(n+1)`
-/

namespace A117872.P9897330900619229904
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A033684 n : ℝ) ^ (A275342 (n + 1) : ℤ)

end

end A117872.P9897330900619229904

/-! ## A117872.P2636905274721864962

`A000007((n+1)*A275342(n+1))`
-/

namespace A117872.P2636905274721864962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1 : ℤ) * A275342 (n + 1)).toNat

end

end A117872.P2636905274721864962

/-! ## A117872.P3458806467167345913

`A000038(n+1)^A275342(n+1)`
-/

namespace A117872.P3458806467167345913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) ^ (A275342 (n + 1) : ℤ)

end

end A117872.P3458806467167345913

/-! ## A117872.P11796776461086976784

`A000032(a(A275342(n+1)²))-1` with `a(0)=0`
-/

namespace A117872.P11796776461086976784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000032 (a (A275342 (n + 1) ^ 2).toNat).toNat - 1

end

end A117872.P11796776461086976784

/-! ## A117872.P3466601125179662398

`A008683(4*(n+1))^A275342(n+1)`
-/

namespace A117872.P3466601125179662398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (4 * (n + 1)) : ℚ) ^ (A275342 (n + 1) : ℤ)

end

end A117872.P3466601125179662398

/-! ## A117872.P3640470596678269144

`val(A006530(n+1), 4)^A275342(n+1)`
-/

namespace A117872.P3640470596678269144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A006530 (n + 1)).toNat 4 : ℚ) ^ (A275342 (n + 1) : ℤ)

end

end A117872.P3640470596678269144

/-! ## A117872.P12202533487885776731

`C(A008683(28*(n+1)), A275342(n+1))`
-/

namespace A117872.P12202533487885776731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008683 (28 * (n + 1))).toNat (A275342 (n + 1)).toNat

end

end A117872.P12202533487885776731

/-! ## A117872.P4356589980945172813

`C(A001221(n+1), (2*A275342(n+1))²)`
-/

namespace A117872.P4356589980945172813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001221 (n + 1)).toNat ((2 * A275342 (n + 1)) ^ 2).toNat

end

end A117872.P4356589980945172813

/-! ## A117872.P3010066042170106308

`A001222(gcd(n, n+1))^A275342(n+1)²`
-/

namespace A117872.P3010066042170106308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (Nat.gcd n (n + 1)) : ℚ) ^ (A275342 (n + 1) ^ 2 : ℤ)

end

end A117872.P3010066042170106308

/-! ## A117872.P10582470514853236596

`abs(a(A275342(n+1)²)-A000040(n+1)%2)` with `a(0)=0`
-/

namespace A117872.P10582470514853236596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (A275342 (n + 1) ^ 2).toNat - Int.tmod (A000040 (n + 1)) 2|

end

end A117872.P10582470514853236596

/-!
# A117873: Primes for which the level as defined in A117563 is 3.

The programs for A117873, there is no canonical definition to state claims against.
-/

/-! ## A117873.P11693835937401450653

`A045319(eq[3, A117563(n+1)])`
-/

namespace A117873.P11693835937401450653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117873.P11693835937401450653

/-! ## A117873.P3473522659972652343

`A045344(eq[3, A117563(n+1)])`
-/

namespace A117873.P3473522659972652343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117873.P3473522659972652343

/-! ## A117873.P3561804810526730030

`A065091(eq[3, A117563(n+1)])`
-/

namespace A117873.P3561804810526730030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117873.P3561804810526730030

/-! ## A117873.P14597693997748101339

`A000040(eq[3, A117563(n+1)]+1)`
-/

namespace A117873.P14597693997748101339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A117873.P14597693997748101339

/-! ## A117873.P7074343468976353146

`p?[(4-A117563(n+1))*A000040(n+1)]`
-/

namespace A117873.P7074343468976353146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A117563 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117873.P7074343468976353146

/-! ## A117873.P1604395990904910023

`p?[(4-A117563(n+1))*A008578(n+2)]`
-/

namespace A117873.P1604395990904910023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A117563 (n + 1)) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A117873.P1604395990904910023

/-!
# A117874: Primes for which the level is equal to 5 in A117563.

The programs for A117874, there is no canonical definition to state claims against.
-/

/-! ## A117874.P9383289195879445653

`A045319(eq[5, A117563(n+1)])`
-/

namespace A117874.P9383289195879445653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117874.P9383289195879445653

/-! ## A117874.P8092012481294093416

`A045344(eq[5, A117563(n+1)])`
-/

namespace A117874.P8092012481294093416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117874.P8092012481294093416

/-! ## A117874.P16787281282512281006

`A065091(eq[5, A117563(n+1)])`
-/

namespace A117874.P16787281282512281006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A117874.P16787281282512281006

/-! ## A117874.P6884205319567813502

`A000040(eq[5, A117563(n+1)]+1)`
-/

namespace A117874.P6884205319567813502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A117874.P6884205319567813502

/-! ## A117874.P6987425694356375957

`A008578(eq[5, A117563(n+1)]+2)`
-/

namespace A117874.P6987425694356375957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A117874.P6987425694356375957

/-!
# A117875: Triangle a(n,m) = (A000045(m) mod 3)+ (A000045(n) mod 7) read by rows.

The programs for A117875, the canonical program `A117875.P2046713325385521954` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117875 has offset 0).

The definition of A117875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(col(n))%3+A000045(row(n))%7` (program `A117875.P2046713325385521954`, by `A117875.P2046713325385521954.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117875.P14033398215935441694

`A082115(col(n))+A105870(row(n))`
-/

namespace A117875.P14033398215935441694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082115 (SequenceMachineLib.triCol n) + A105870 (SequenceMachineLib.triRow n)

end

end A117875.P14033398215935441694

namespace A117875

/-- `A082115(col(n))+A105870(row(n))` -/
def P14033398215935441694.Spec : Prop :=
  ∀ n, P14033398215935441694.a n = A117875 n

end A117875

/-! ## A117875.P2046713325385521954

`A000045(col(n))%3+A000045(row(n))%7`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117875

/-- `A000045(col(n))%3+A000045(row(n))%7` -/
def P2046713325385521954.Spec : Prop :=
  ∀ n, P2046713325385521954.a n = A117875 n

theorem P2046713325385521954.correct : P2046713325385521954.Spec := by
  intro n
  simp only [A117875]

end A117875

/-! ## A117875.P1789275000757403598

`A206498(or(2*n, A214282(n+1)))`
-/

namespace A117875.P1789275000757403598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206498 (Int.lor (2 * n : ℤ) (A214282 (n + 1))).toNat

end

end A117875.P1789275000757403598

namespace A117875

/-- `A206498(or(2*n, A214282(n+1)))` -/
def P1789275000757403598.Spec : Prop :=
  ∀ n, P1789275000757403598.a n = A117875 n

end A117875

/-! ## A117875.P12068172193254907901

`A007302(A164391(n)-A057681(n))`
-/

namespace A117875.P12068172193254907901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A164391 n - A057681 n).toNat

end

end A117875.P12068172193254907901

namespace A117875

/-- `A007302(A164391(n)-A057681(n))` -/
def P12068172193254907901.Spec : Prop :=
  ∀ n, P12068172193254907901.a n = A117875 n

end A117875

/-! ## A117875.P7788300852771894827

`A051265(A295960(n)+A141285(n+1))`
-/

namespace A117875.P7788300852771894827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A295960 n + A141285 (n + 1)).toNat

end

end A117875.P7788300852771894827

namespace A117875

/-- `A051265(A295960(n)+A141285(n+1))` -/
def P7788300852771894827.Spec : Prop :=
  ∀ n, P7788300852771894827.a n = A117875 n

end A117875

/-!
# A117876: Primes p=prime(k) of level (1,2), i.e., such that A118534(k) = prime(k-2).

The programs for A117876, there is no canonical definition to state claims against.
-/

/-! ## A117876.P2367906703078239746

`A000040(A066495(n+2))`
-/

namespace A117876.P2367906703078239746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A066495 (n + 2)).toNat

end

end A117876.P2367906703078239746

/-! ## A117876.P17740130565355715613

`∩[A098029(n+1), A125830(n+1)]`
-/

namespace A117876.P17740130565355715613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117876.P17740130565355715613

/-! ## A117876.P7910416297814287572

`A004139(A138042(n+2))`
-/

namespace A117876.P7910416297814287572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A138042 (n + 2)).toNat

end

end A117876.P7910416297814287572

/-! ## A117876.P10639837944894321586

`A065091(A138042(n+2)+1)`
-/

namespace A117876.P10639837944894321586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A138042 (n + 2) + 1).toNat

end

end A117876.P10639837944894321586

/-! ## A117876.P3468540521003341087

`A000040(A138042(n+2)+2)`
-/

namespace A117876.P3468540521003341087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A138042 (n + 2) + 2).toNat

end

end A117876.P3468540521003341087

/-! ## A117876.P13402438047123974081

`A008578(A138042(n+2)+3)`
-/

namespace A117876.P13402438047123974081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A138042 (n + 2) + 3).toNat

end

end A117876.P13402438047123974081

/-! ## A117876.P17720779400935897824

`A006093(A138042(n+2)+2)+1`
-/

namespace A117876.P17720779400935897824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A138042 (n + 2) + 2).toNat + 1

end

end A117876.P17720779400935897824

/-!
# A117877: Least p=prime(k) for which A118123(k)=n.

The programs for A117877, there is no canonical definition to state claims against.
-/

/-! ## A117877.P11985047907156973233

`A179632(n+1)+A117886(A117916(n+1))`
-/

namespace A117877.P11985047907156973233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179632 (n + 1) + A117886 (A117916 (n + 1)).toNat

end

end A117877.P11985047907156973233

/-! ## A117877.P14534778571588118891

`A179632(n+1)-A218867(A078538(n+1))`
-/

namespace A117877.P14534778571588118891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179632 (n + 1) - A218867 (A078538 (n + 1)).toNat

end

end A117877.P14534778571588118891

/-!
# A117878: Triangle T(n,k) = A034386(n)*A049614(k) - 1 read by rows.

The programs for A117878, the canonical program `A117878.P3731936021544780756` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117878 has offset 1).

The definition of A117878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A117878.P3731936021544780756

`A034386(row(n)+1)*A049614(col(n)+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A117878

/-- `A034386(row(n)+1)*A049614(col(n)+1)-1` -/
def P3731936021544780756.Spec : Prop :=
  ∀ n, P3731936021544780756.a n = A117878 (n + 1)

theorem P3731936021544780756.correct : P3731936021544780756.Spec := by
  intro n
  simp only [A117878, Nat.add_sub_cancel]

end A117878

/-! ## A117878.P13319165797324332341

`(col(n)+1)!*A034386(row(n)+1)/A034386(col(n)+1)-1`
-/

namespace A117878.P13319165797324332341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (SequenceMachineLib.triCol n + 1) : ℤ) * A034386 (SequenceMachineLib.triRow n + 1) : ℚ) / (A034386 (SequenceMachineLib.triCol n + 1) : ℚ) - 1

end

end A117878.P13319165797324332341

namespace A117878

/-- `(col(n)+1)!*A034386(row(n)+1)/A034386(col(n)+1)-1` -/
def P13319165797324332341.Spec : Prop :=
  ∀ n, P13319165797324332341.a n = (A117878 (n + 1) : ℚ)

end A117878

/-! ## A117878.P7663230426135784034

`(row(n)+1)!*A049614(col(n)+1)/A049614(row(n)+1)-1`
-/

namespace A117878.P7663230426135784034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (SequenceMachineLib.triRow n + 1) : ℤ) * A049614 (SequenceMachineLib.triCol n + 1) : ℚ) / (A049614 (SequenceMachineLib.triRow n + 1) : ℚ) - 1

end

end A117878.P7663230426135784034

namespace A117878

/-- `(row(n)+1)!*A049614(col(n)+1)/A049614(row(n)+1)-1` -/
def P7663230426135784034.Spec : Prop :=
  ∀ n, P7663230426135784034.a n = (A117878 (n + 1) : ℚ)

end A117878

/-!
# A117879: First semiprime after e^n.

The programs for A117879, there is no canonical definition to state claims against.
-/

/-! ## A117879.P778385459700436841

`A201144(ceil(ϕ*a(n-1))+1)` with `a(0)=4, a(1)=4`
-/

namespace A117879.P778385459700436841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  A201144 (⌈Real.goldenRatio * (a (n - 1) : ℝ)⌉ + 1).toNat

end

end A117879.P778385459700436841

/-! ## A117879.P18329695890771687891

`A057062(2*∏[C(2, C(3, n²))+n])`
-/

namespace A117879.P18329695890771687891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057062 (2 * (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A117879.P18329695890771687891

/-!
# A117880: a(1) = 4; a(n) is smallest semiprime > 2*a(n-1).

The programs for A117880, there is no canonical definition to state claims against.
-/

/-! ## A117880.P7404391156454029766

`A276625(A265076(n))+A265076(n+1)`
-/

namespace A117880.P7404391156454029766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A265076 n).toNat + A265076 (n + 1)

end

end A117880.P7404391156454029766

/-! ## A117880.P6275734172687886113

`A248355(A273603(n)-n)`
-/

namespace A117880.P6275734172687886113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248355 (A273603 n - (n : ℤ)).toNat

end

end A117880.P6275734172687886113

/-!
# A117881: First semiprime after Pi^n.

The programs for A117881, there is no canonical definition to state claims against.
-/

/-! ## A117881.P16301466045856965714

`A072292(∑[4^n+11*a(n-1)])` with `a(0)=17, a(1)=3`
-/

namespace A117881.P16301466045856965714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17, 3] fun n f1 =>
  4 ^ n + 11 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117881.P16301466045856965714

/-!
# A117882: Partial sums of floor(Pi^n).

The programs for A117882, the canonical program `A117882.P6858586493466054488` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117882 has offset 0).

The definition of A117882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117882.P3678863227916836702

`∑[floor(π^n)]`
-/

namespace A117882.P3678863227916836702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi ^ n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117882.P3678863227916836702

namespace A117882

/-- `∑[floor(π^n)]` -/
def P3678863227916836702.Spec : Prop :=
  ∀ n, P3678863227916836702.a n = A117882 n

end A117882

/-! ## A117882.P8905926042050767559

`floor(a(n-1)+π^n)` with `a(0)=1`
-/

namespace A117882.P8905926042050767559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + Real.pi ^ n⌋

end

end A117882.P8905926042050767559

namespace A117882

/-- `floor(a(n-1)+π^n)` -/
def P8905926042050767559.Spec : Prop :=
  ∀ n, P8905926042050767559.a n = A117882 n

end A117882

/-! ## A117882.P6858586493466054488

`∑[A001673(n)]-n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A117882

/-- `∑[A001673(n)]-n` -/
def P6858586493466054488.Spec : Prop :=
  ∀ n, P6858586493466054488.a n = A117882 n

theorem P6858586493466054488.correct : P6858586493466054488.Spec := by
  intro n
  simp only [A117882]

end A117882

/-! ## A117882.P2915268992048973212

`root(∑[A001672(n)], 2)²`
-/

namespace A117882.P2915268992048973212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A117882.P2915268992048973212

namespace A117882

/-- `root(∑[A001672(n)], 2)²` -/
def P2915268992048973212.Spec : Prop :=
  ∀ n, P2915268992048973212.a n = (A117882 n : ℝ)

end A117882

/-! ## A117882.P14940903570091581201

`∑[A102477(2*n)]-n`
-/

namespace A117882.P14940903570091581201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102477 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A117882.P14940903570091581201

namespace A117882

/-- `∑[A102477(2*n)]-n` -/
def P14940903570091581201.Spec : Prop :=
  ∀ n, P14940903570091581201.a n = A117882 n

end A117882

/-! ## A117882.P584060188291236730

`A102475(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A117882.P584060188291236730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102475 (2 * n) + a (n - 1)

end

end A117882.P584060188291236730

namespace A117882

/-- `A102475(2*n)+a(n-1)` -/
def P584060188291236730.Spec : Prop :=
  ∀ n, P584060188291236730.a n = A117882 n

end A117882

/-! ## A117882.P334020741846306754

`A212464(3*n)+a(n-1)` with `a(0)=1`
-/

namespace A117882.P334020741846306754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212464 (3 * n) + a (n - 1)

end

end A117882.P334020741846306754

namespace A117882

/-- `A212464(3*n)+a(n-1)` -/
def P334020741846306754.Spec : Prop :=
  ∀ n, P334020741846306754.a n = A117882 n

end A117882

/-!
# A117884: Numbers at which the average multiplicative persistence of the interval (0,n) sets a new record.

The programs for A117884, there is no canonical definition to state claims against.
-/

/-! ## A117884.P17737731702707014513

`lt[A225486(n+1)², A325271(n+3)]`
-/

namespace A117884.P17737731702707014513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225486 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325271 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117884.P17737731702707014513

/-! ## A117884.P7066719218439425743

`lt[dr(A329193(n+1)), A029837(3*n+2)]`
-/

namespace A117884.P7066719218439425743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A329193 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A117884.P7066719218439425743

/-! ## A117884.P871727354759740248

`lt[A274088(n), A327126(A194204(n+1))]`
-/

namespace A117884.P871727354759740248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327126 (A194204 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117884.P871727354759740248

/-! ## A117884.P4689272272440243207

`lt[A177894(n), A221529(A080858(n+1))]`
-/

namespace A117884.P4689272272440243207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221529 (A080858 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117884.P4689272272440243207

/-! ## A117884.P15210399142166001370

`lt[A244538(A364912(n)), A244539(n)]`
-/

namespace A117884.P15210399142166001370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244538 ((A364912 n).toNat + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244539 (n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117884.P15210399142166001370

/-!
# A117885: Numbers k such that a regular (k^3-k)-gon can be constructed by means of a ruler and compass.

The programs for A117885, there is no canonical definition to state claims against.
-/

/-! ## A117885.P11705392688377864920

`a(n-1)²` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=16`
-/

namespace A117885.P11705392688377864920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 5, 16] fun n a =>
  a (n - 1) ^ 2

end

end A117885.P11705392688377864920

/-! ## A117885.P6316133559245749503

`2^2^a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A117885.P6316133559245749503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 5] fun n a =>
  2 ^ 2 ^ a (n - 4)

end

end A117885.P6316133559245749503

/-! ## A117885.P17929324114089555615

`record[A059900(2^n)]`
-/

namespace A117885.P17929324114089555615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059900 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117885.P17929324114089555615

/-!
# A117886: Expansion of q^(-2/3)eta(q)eta(q^10)^2/eta(q^5) in powers of q.

The programs for A117886, there is no canonical definition to state claims against.
-/

/-! ## A117886.P13459476550139765737

`A056594(2*n)*A123858(2*n+1)`
-/

namespace A117886.P13459476550139765737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A123858 (2 * n + 1)

end

end A117886.P13459476550139765737

/-! ## A117886.P6461258165234924016

`(2-A135481(2*n+1))*A123858(2*n+1)`
-/

namespace A117886.P6461258165234924016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A135481 (2 * n + 1)) * A123858 (2 * n + 1)

end

end A117886.P6461258165234924016

/-! ## A117886.P11829601678783337726

`A114006(A135481(2*n+1))*A123858(2*n+1)`
-/

namespace A117886.P11829601678783337726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (A135481 (2 * n + 1)).toNat * A123858 (2 * n + 1)

end

end A117886.P11829601678783337726

/-! ## A117886.P16470776850994326714

`A123858(5*n+3)`
-/

namespace A117886.P16470776850994326714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123858 (5 * n + 3)

end

end A117886.P16470776850994326714

/-! ## A117886.P10636732154910777696

`A145466(n)%A001918(A196172(3*n+5))`
-/

namespace A117886.P10636732154910777696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145466 n) (A001918 (A196172 (3 * n + 5)).toNat)

end

end A117886.P10636732154910777696

/-!
# A117887: Number of labeled trees on <= n nodes.

The programs for A117887, there is no canonical definition to state claims against.
-/

/-! ## A117887.P2025319882288698693

`∑[(n+2)^n]`
-/

namespace A117887.P2025319882288698693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117887.P2025319882288698693

/-! ## A117887.P5686829081861141096

`a(n-1)+(n+2)^n` with `a(0)=1`
-/

namespace A117887.P5686829081861141096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 2) ^ n

end

end A117887.P5686829081861141096

/-! ## A117887.P17618280707590477082

`abs(∑[record[A244134(n)]])`
-/

namespace A117887.P17618280707590477082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244134 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A117887.P17618280707590477082

/-! ## A117887.P5854316505583838737

`A173249(n+2)-2`
-/

namespace A117887.P5854316505583838737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173249 (n + 2) - 2

end

end A117887.P5854316505583838737

/-! ## A117887.P12757852640563125727

`record[abs(2-A173249(n))]`
-/

namespace A117887.P12757852640563125727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173249 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A117887.P12757852640563125727

/-!
# A117888: Period of sequence {Kronecker(n,k), k = 1, 2, 3, ...}, or 0 if the sequence is not periodic.

The programs for A117888, there is no canonical definition to state claims against.
-/

/-! ## A117888.P3954154306757817100

`A117889(A289398(n+1))/7`
-/

namespace A117888.P3954154306757817100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117889 (A289398 (n + 1)).toNat : ℚ) / 7

end

end A117888.P3954154306757817100

/-! ## A117888.P13988522635465815443

`(val(n+1, 2)%2+1)²*∏{p}[n+1, #]*A011558(A149558(n))`
-/

namespace A117888.P13988522635465815443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) * A011558 (A149558 n).toNat

end

end A117888.P13988522635465815443

/-! ## A117888.P15013579549177945432

`(and(n+1, -(n+1))%3)²*∏{p}[n+1, #]*A154957(A243506(3*n+1))`
-/

namespace A117888.P15013579549177945432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) 3 ^ 2 * ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A154957 (A243506 (3 * n + 1)).toNat

end

end A117888.P15013579549177945432

/-! ## A117888.P1249586933832415479

`A011558(A149558(n))*A302138(n+1)`
-/

namespace A117888.P1249586933832415479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A149558 n).toNat * A302138 (n + 1)

end

end A117888.P1249586933832415479

/-! ## A117888.P10559086622301600285

`lcm(A008683(A193059(n+1)), A302138(n+1))`
-/

namespace A117888.P10559086622301600285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A193059 (n + 1)).toNat) (A302138 (n + 1))

end

end A117888.P10559086622301600285

/-!
# A117889: Period of sequence {Kronecker(-n,k), k = 1, 2, 3, ...}, or 0 if the sequence is not periodic.

The programs for A117889, there is no canonical definition to state claims against.
-/

/-! ## A117889.P10083199040938019671

`(n+1)*A152890(A081253(n+4))`
-/

namespace A117889.P10083199040938019671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A152890 (A081253 (n + 4)).toNat

end

end A117889.P10083199040938019671

/-! ## A117889.P415140926042909863

`A000035(A351990(n+1))*A204993(n+1)`
-/

namespace A117889.P415140926042909863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A351990 (n + 1)).toNat * A204993 (n + 1)

end

end A117889.P415140926042909863

/-!
# A117890: Numbers k such that number of non-leading 0's in binary representation of k divides k.

The programs for A117890, the canonical program `A117890.P14438909283196248010` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117890 has offset 1).

The definition of A117890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117890.P14438909283196248010

`eq[n+1, lcm(n+1, A023416(n+1))]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A117890

/-- `eq[n+1, lcm(n+1, A023416(n+1))]+1` -/
def P14438909283196248010.Spec : Prop :=
  ∀ n, (P14438909283196248010.a n : ℤ) = A117890 (n + 1)

theorem P14438909283196248010.correct : P14438909283196248010.Spec := by
  intro n
  simp only [A117890, Nat.add_sub_cancel]

end A117890

/-! ## A117890.P14435994406664538282

`eq[gcd(n, A023416(n)), A080791(n)]`
-/

namespace A117890.P14435994406664538282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A023416 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117890.P14435994406664538282

namespace A117890

/-- `eq[gcd(n, A023416(n)), A080791(n)]` -/
def P14435994406664538282.Spec : Prop :=
  ∀ n, (P14435994406664538282.a n : ℤ) = A117890 (n + 1)

end A117890

/-! ## A117890.P12763891604451095826

`eq[n, lcm(A023416(n), A028310(n))]`
-/

namespace A117890.P12763891604451095826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023416 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117890.P12763891604451095826

namespace A117890

/-- `eq[n, lcm(A023416(n), A028310(n))]` -/
def P12763891604451095826.Spec : Prop :=
  ∀ n, (P12763891604451095826.a n : ℤ) = A117890 (n + 1)

end A117890

/-! ## A117890.P12116524571267069567

`eq[lcm(n, A080791(n)), A028310(n)]`
-/

namespace A117890.P12116524571267069567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A080791 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A117890.P12116524571267069567

namespace A117890

/-- `eq[lcm(n, A080791(n)), A028310(n)]` -/
def P12116524571267069567.Spec : Prop :=
  ∀ n, (P12116524571267069567.a n : ℤ) = A117890 (n + 1)

end A117890

/-! ## A117890.P699603515341172268

`lt[A093968(A169814(n+1)), A208479(n+1)]`
-/

namespace A117890.P699603515341172268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (A169814 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208479 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117890.P699603515341172268

namespace A117890

/-- `lt[A093968(A169814(n+1)), A208479(n+1)]` -/
def P699603515341172268.Spec : Prop :=
  ∀ n, (P699603515341172268.a n : ℤ) = A117890 (n + 1)

end A117890

/-!
# A117891: Numbers k such that both the number of non-leading 0's in the binary representation of k and the number of 1's in the binary representation of k divide k.

The programs for A117891, the canonical program `A117891.P16841022737502782817` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117891 has offset 1).

The definition of A117891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3058 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117891.P16841022737502782817

`∩[A049445(n+1), A117890(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A117891

/-- `∩[A049445(n+1), A117890(n+1)]` -/
def P16841022737502782817.Spec : Prop :=
  ∀ n, (P16841022737502782817.a n : ℤ) = A117891 (n + 1)

theorem P16841022737502782817.correct : P16841022737502782817.Spec := by
  intro n
  simp only [A117891, Nat.add_sub_cancel]

end A117891

/-! ## A117891.P876279241018538527

`∩[A117890(n+1), lt[A199238(n+1), 1]+1]`
-/

namespace A117891.P876279241018538527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117890 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199238 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A117891.P876279241018538527

namespace A117891

/-- `∩[A117890(n+1), lt[A199238(n+1), 1]+1]` -/
def P876279241018538527.Spec : Prop :=
  ∀ n, (P876279241018538527.a n : ℤ) = A117891 (n + 1)

end A117891

/-! ## A117891.P56979268647222060

`∩[eq[0, (n+1)%A000120(n+1)]+1, A117890(n+1)]`
-/

namespace A117891.P56979268647222060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000120 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A117891.P56979268647222060

namespace A117891

/-- `∩[eq[0, (n+1)%A000120(n+1)]+1, A117890(n+1)]` -/
def P56979268647222060.Spec : Prop :=
  ∀ n, (P56979268647222060.a n : ℤ) = A117891 (n + 1)

end A117891

/-! ## A117891.P17819080510316922965

`eq[A073097(A333218(n+1)), A111008(n)]`
-/

namespace A117891.P17819080510316922965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A333218 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A117891.P17819080510316922965

namespace A117891

/-- `eq[A073097(A333218(n+1)), A111008(n)]` -/
def P17819080510316922965.Spec : Prop :=
  ∀ n, (P17819080510316922965.a n : ℤ) = A117891 (n + 1)

end A117891

/-! ## A117891.P9420950766402126682

`lt[A227005(A000005(n+1)), A357621(n)]`
-/

namespace A117891.P9420950766402126682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227005 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A117891.P9420950766402126682

namespace A117891

/-- `lt[A227005(A000005(n+1)), A357621(n)]` -/
def P9420950766402126682.Spec : Prop :=
  ∀ n, (P9420950766402126682.a n : ℤ) = A117891 (n + 1)

end A117891

/-!
# A117895: Triangle T(n, k) = (k-n)*A000129(k+1) + (3*n-3*k+1)*A000129(k) with T(n,0) = 1, for 0 <= k <= n-1, read by rows.

The programs for A117895, there is no canonical definition to state claims against.
-/

/-! ## A117895.P14199729252340306771

`A117894(comp[∑[n-1]])`
-/

namespace A117895.P14199729252340306771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117894 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A117895.P14199729252340306771

/-! ## A117895.P13632998467138015287

`gcd(A000038(n), A117894(A007401(n+1)))`
-/

namespace A117895.P13632998467138015287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A117894 (A007401 (n + 1)).toNat)

end

end A117895.P13632998467138015287

/-! ## A117895.P5393485080099599002

`lcm(A033999(n), A117894(A007401(n+1)))`
-/

namespace A117895.P5393485080099599002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A117894 (A007401 (n + 1)).toNat)

end

end A117895.P5393485080099599002

/-! ## A117895.P16212781794268327921

`or(A000007(n), A117894(A007401(n+1)))`
-/

namespace A117895.P16212781794268327921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A117894 (A007401 (n + 1)).toNat)

end

end A117895.P16212781794268327921

/-! ## A117895.P13840988782251178872

`and(A117894(A007401(n+1)), A153881(n+1))`
-/

namespace A117895.P13840988782251178872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117894 (A007401 (n + 1)).toNat) (A153881 (n + 1))

end

end A117895.P13840988782251178872

/-! ## A117895.P2393244967452334117

`A117894(A007401(n+1))%∑[A266504(n)]`
-/

namespace A117895.P2393244967452334117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117894 (A007401 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A117895.P2393244967452334117

/-! ## A117895.P300885691446219331

`A117894(A007401(n+1))%A000051(n)`
-/

namespace A117895.P300885691446219331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117894 (A007401 (n + 1)).toNat) (A000051 n)

end

end A117895.P300885691446219331

/-! ## A117895.P14058436571333293019

`A117894(A007401(n+1))+A000007(A117894(n))`
-/

namespace A117895.P14058436571333293019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117894 (A007401 (n + 1)).toNat + A000007 (A117894 n).toNat

end

end A117895.P14058436571333293019

/-! ## A117895.P18127742309989055878

`A117894(A007401(n+1))+A000038(A007401(n+1)²)`
-/

namespace A117895.P18127742309989055878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117894 (A007401 (n + 1)).toNat + A000038 (A007401 (n + 1) ^ 2).toNat

end

end A117895.P18127742309989055878

/-!
# A117896: Number of perfect powers between consecutive squares n^2 and (n+1)^2.

The programs for A117896, there is no canonical definition to state claims against.
-/

/-! ## A117896.P115277373816730375

`Δ[A340698(n+1)]-1`
-/

namespace A117896.P115277373816730375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A117896.P115277373816730375

/-! ## A117896.P17109580543845121408

`A000720(Δ[A340698(n+1)])`
-/

namespace A117896.P17109580543845121408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A117896.P17109580543845121408

/-! ## A117896.P5610363955710818600

`A002620(Δ[A340698(n+1)])`
-/

namespace A117896.P5610363955710818600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f1 (n + 1) - f1 n).toNat

end

end A117896.P5610363955710818600

/-! ## A117896.P1630864692412556363

`A004523(Δ[A340698(n+1)])`
-/

namespace A117896.P1630864692412556363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (f1 (n + 1) - f1 n).toNat

end

end A117896.P1630864692412556363

/-! ## A117896.P7289071000226508542

`A029953(Δ[A340698(n+1)])`
-/

namespace A117896.P7289071000226508542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (f1 (n + 1) - f1 n).toNat

end

end A117896.P7289071000226508542

/-! ## A117896.P16476710998916177061

`A067076(Δ[A340698(n+1)])`
-/

namespace A117896.P16476710998916177061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (f1 (n + 1) - f1 n).toNat

end

end A117896.P16476710998916177061

/-! ## A117896.P8152627566134573413

`A124625(Δ[A340698(n+1)])`
-/

namespace A117896.P8152627566134573413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (f1 (n + 1) - f1 n).toNat

end

end A117896.P8152627566134573413

/-! ## A117896.P9441274801111490148

`A340659(Δ[A340698(n+1)])`
-/

namespace A117896.P9441274801111490148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340659 (f1 (n + 1) - f1 n).toNat

end

end A117896.P9441274801111490148

/-! ## A117896.P6402967479496326588

`A340668(Δ[A340698(n+1)])`
-/

namespace A117896.P6402967479496326588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340668 (f1 (n + 1) - f1 n).toNat

end

end A117896.P6402967479496326588

/-! ## A117896.P3900982853657177510

`A004917(A340698(n+2)-A340698(n+1))`
-/

namespace A117896.P3900982853657177510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (A340698 (n + 2) - A340698 (n + 1)).toNat

end

end A117896.P3900982853657177510

/-! ## A117896.P11677961570061768800

`A111662(A340698(n+2)-A340698(n+1))`
-/

namespace A117896.P11677961570061768800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111662 (A340698 (n + 2) - A340698 (n + 1)).toNat

end

end A117896.P11677961570061768800

/-! ## A117896.P3374994928151727508

`A048298(A340698(n+2)%(A340698(n+1)+1))`
-/

namespace A117896.P3374994928151727508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (Int.tmod (A340698 (n + 2)) (A340698 (n + 1) + 1)).toNat

end

end A117896.P3374994928151727508

/-!
# A117897: Number of labeled trees on prime numbers of nodes through n-th prime.

The programs for A117897, there is no canonical definition to state claims against.
-/

/-! ## A117897.P10480447881274921953

`∑[A130614(n+1)]`
-/

namespace A117897.P10480447881274921953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117897.P10480447881274921953

/-! ## A117897.P9020503209762872033

`∑[record[(n+1)^(A006530(n+1)-2)]]`
-/

namespace A117897.P9020503209762872033
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A006530 (n + 1) - 2 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117897.P9020503209762872033

/-! ## A117897.P4587001106427099582

`∑[record[(n+1)^(A020639(n+1)-2)]]`
-/

namespace A117897.P4587001106427099582
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A020639 (n + 1) - 2 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117897.P4587001106427099582

/-! ## A117897.P1875690904746675307

`∑[A000272(A000040(n+1))]`
-/

namespace A117897.P1875690904746675307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117897.P1875690904746675307

/-! ## A117897.P7969619466844849428

`∑[record[A076931(n+1)]]`
-/

namespace A117897.P7969619466844849428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076931 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117897.P7969619466844849428

/-!
# A117898: Number triangle 2^abs(L(C(n,2)/3) - L(C(k,2)/3))*[k<=n] where L(j/p) is the Legendre symbol of j and p.

The programs for A117898, the canonical program `A117898.P14652855978870179501` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117898 has offset 0).

The definition of A117898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A117898.P14493613125449931200

`2-A117904(n)`
-/

namespace A117898.P14493613125449931200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A117904 n

end

end A117898.P14493613125449931200

namespace A117898

/-- `2-A117904(n)` -/
def P14493613125449931200.Spec : Prop :=
  ∀ n, P14493613125449931200.a n = A117898 n

theorem P14493613125449931200.correct : P14493613125449931200.Spec := by
  intro n
  simp only [A117898, Nat.add_sub_cancel, A117898.P14493613125449931200.a, A117898.P14652855978870179501.a, A070216, A070216.P6220204723387715079.a, A117904, A117904.P18293457615269671848.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A117898

/-! ## A117898.P11682462819764570757

`gcd(2, A131411(n+1))`
-/

namespace A117898.P11682462819764570757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A131411 (n + 1))

end

end A117898.P11682462819764570757

namespace A117898

/-- `gcd(2, A131411(n+1))` -/
def P11682462819764570757.Spec : Prop :=
  ∀ n, (P11682462819764570757.a n : ℤ) = A117898 n

end A117898

/-! ## A117898.P14652855978870179501

`(A070216(n+1)%3)%2+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A117898

/-- `(A070216(n+1)%3)%2+1` -/
def P14652855978870179501.Spec : Prop :=
  ∀ n, P14652855978870179501.a n = A117898 n

theorem P14652855978870179501.correct : P14652855978870179501.Spec := by
  intro n
  simp only [A117898]

end A117898

/-! ## A117898.P10818041565262686703

`((A049777(n+1)+n-1)%3)!`
-/

namespace A117898.P10818041565262686703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A049777 (n + 1) + ((n : ℤ) - 1)) 3).toNat

end

end A117898.P10818041565262686703

namespace A117898

/-- `((A049777(n+1)+n-1)%3)!` -/
def P10818041565262686703.Spec : Prop :=
  ∀ n, (P10818041565262686703.a n : ℤ) = A117898 n

end A117898

/-! ## A117898.P4224294584500230413

`A117899((n+1)%(A117904(n)+n))`
-/

namespace A117898.P4224294584500230413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117899 (Int.tmod (n + 1 : ℤ) (A117904 n + (n : ℤ))).toNat

end

end A117898.P4224294584500230413

namespace A117898

/-- `A117899((n+1)%(A117904(n)+n))` -/
def P4224294584500230413.Spec : Prop :=
  ∀ n, P4224294584500230413.a n = A117898 n

end A117898

/-! ## A117898.P14681415705636771166

`A117909((n+1)²%(A117904(n)+n))`
-/

namespace A117898.P14681415705636771166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 (Int.tmod ((n + 1) ^ 2 : ℤ) (A117904 n + (n : ℤ))).toNat

end

end A117898.P14681415705636771166

namespace A117898

/-- `A117909((n+1)²%(A117904(n)+n))` -/
def P14681415705636771166.Spec : Prop :=
  ∀ n, P14681415705636771166.a n = A117898 n

end A117898

/-! ## A117898.P3326582321037951165

`A117899(val(n+1, A117904(n)+1+n))`
-/

namespace A117898.P3326582321037951165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117899 (SequenceMachineLib.valuation (n + 1) (A117904 n + 1 + (n : ℤ)).toNat)

end

end A117898.P3326582321037951165

namespace A117898

/-- `A117899(val(n+1, A117904(n)+1+n))` -/
def P3326582321037951165.Spec : Prop :=
  ∀ n, P3326582321037951165.a n = A117898 n

end A117898

/-! ## A117898.P6357088986116481275

`A131412(or(1, A131411(n+1))-A131411(n+1)+1)`
-/

namespace A117898.P6357088986116481275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131412 (Int.lor 1 (A131411 (n + 1)) - A131411 (n + 1) + 1).toNat

end

end A117898.P6357088986116481275

namespace A117898

/-- `A131412(or(1, A131411(n+1))-A131411(n+1)+1)` -/
def P6357088986116481275.Spec : Prop :=
  ∀ n, P6357088986116481275.a n = A117898 n

end A117898

/-! ## A117898.P3336624786281290100

`A131534(A070216(n+1))`
-/

namespace A117898.P3336624786281290100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (A070216 (n + 1)).toNat

end

end A117898.P3336624786281290100

namespace A117898

/-- `A131534(A070216(n+1))` -/
def P3336624786281290100.Spec : Prop :=
  ∀ n, P3336624786281290100.a n = A117898 n

end A117898

/-! ## A117898.P17124194426096508685

`A040001(A131411(n+1))`
-/

namespace A117898.P17124194426096508685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A131411 (n + 1)).toNat

end

end A117898.P17124194426096508685

namespace A117898

/-- `A040001(A131411(n+1))` -/
def P17124194426096508685.Spec : Prop :=
  ∀ n, P17124194426096508685.a n = A117898 n

end A117898

/-! ## A117898.P10907234325975696205

`A000035(A131411(n+1)+1)+1`
-/

namespace A117898.P10907234325975696205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A131411 (n + 1) + 1).toNat + 1

end

end A117898.P10907234325975696205

namespace A117898

/-- `A000035(A131411(n+1)+1)+1` -/
def P10907234325975696205.Spec : Prop :=
  ∀ n, P10907234325975696205.a n = A117898 n

end A117898

/-! ## A117898.P1635010613280239281

`2-A130657(A099627(n))`
-/

namespace A117898.P1635010613280239281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130657 (A099627 n).toNat

end

end A117898.P1635010613280239281

namespace A117898

/-- `2-A130657(A099627(n))` -/
def P1635010613280239281.Spec : Prop :=
  ∀ n, P1635010613280239281.a n = A117898 n

end A117898

/-!
# A117899: Expansion of (1 + 2*x + 5*x^2 + 3*x^3 + 2*x^4)/(1-x^3)^2.

The programs for A117899, the canonical program `A117899.P7939438747471050341` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A117899 has offset 0).

The definition of A117899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+5x^2+3x^3+2x^4)/(1-2x^3+x^6))` (program `A117899.P7939438747471050341`, by `A117899.P7939438747471050341.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A117899.P7939438747471050341

`ogf((1+2x+5x^2+3x^3+2x^4)/(1-2x^3+x^6))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A117899

/-- `ogf((1+2x+5x^2+3x^3+2x^4)/(1-2x^3+x^6))` -/
def P7939438747471050341.Spec : Prop :=
  ∀ n, P7939438747471050341.a n = A117899 n

theorem P7939438747471050341.correct : P7939438747471050341.Spec := by
  intro n
  simp only [A117899]

end A117899

/-! ## A117899.P15405189546031583579

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=5, a(4)=6, a(5)=10`
-/

namespace A117899.P15405189546031583579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 5, 6, 10] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A117899.P15405189546031583579

namespace A117899

/-- `2*a(n-3)-a(n-6)` -/
def P15405189546031583579.Spec : Prop :=
  ∀ n, P15405189546031583579.a n = A117899 n

end A117899

/-! ## A117899.P7444008532213496823

`A004773(n+1)+∑[∑[n+1]]%(n+1)`
-/

namespace A117899.P7444008532213496823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A117899.P7444008532213496823

namespace A117899

/-- `A004773(n+1)+∑[∑[n+1]]%(n+1)` -/
def P7444008532213496823.Spec : Prop :=
  ∀ n, P7444008532213496823.a n = A117899 n

end A117899

/-! ## A117899.P1640607901962618053

`A026741(A004523(n)+2)+n`
-/

namespace A117899.P1640607901962618053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004523 n + 2).toNat + (n : ℤ)

end

end A117899.P1640607901962618053

namespace A117899

/-- `A026741(A004523(n)+2)+n` -/
def P1640607901962618053.Spec : Prop :=
  ∀ n, P1640607901962618053.a n = A117899 n

end A117899

/-! ## A117899.P5525422899168080958

`A026741(A004396(n+1)+1)+n`
-/

namespace A117899.P5525422899168080958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A004396 (n + 1) + 1).toNat + (n : ℤ)

end

end A117899.P5525422899168080958

namespace A117899

/-- `A026741(A004396(n+1)+1)+n` -/
def P5525422899168080958.Spec : Prop :=
  ∀ n, P5525422899168080958.a n = A117899 n

end A117899

/-! ## A117899.P13538402949423188229

`A175676(n+1)+A086161(n)+n`
-/

namespace A117899.P13538402949423188229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 1) + (A086161 n + (n : ℤ))

end

end A117899.P13538402949423188229

namespace A117899

/-- `A175676(n+1)+A086161(n)+n` -/
def P13538402949423188229.Spec : Prop :=
  ∀ n, P13538402949423188229.a n = A117899 n

end A117899

/-! ## A117899.P3707574880424674223

`abs(A099254(n+1)-A099254(n))+n`
-/

namespace A117899.P3707574880424674223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099254 (n + 1) - A099254 n| + (n : ℤ)

end

end A117899.P3707574880424674223

namespace A117899

/-- `abs(A099254(n+1)-A099254(n))+n` -/
def P3707574880424674223.Spec : Prop :=
  ∀ n, P3707574880424674223.a n = A117899 n

end A117899

/-! ## A117899.P5457591115513506499

`A151842(n+2)+n`
-/

namespace A117899.P5457591115513506499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151842 (n + 2) + (n : ℤ)

end

end A117899.P5457591115513506499

namespace A117899

/-- `A151842(n+2)+n` -/
def P5457591115513506499.Spec : Prop :=
  ∀ n, P5457591115513506499.a n = A117899 n

end A117899

/-! ## A117899.P14204043449577422822

`abs(Δ[Δ[A099471(n)]])+n`
-/

namespace A117899.P14204043449577422822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + (n : ℤ)

end

end A117899.P14204043449577422822

namespace A117899

/-- `abs(Δ[Δ[A099471(n)]])+n` -/
def P14204043449577422822.Spec : Prop :=
  ∀ n, P14204043449577422822.a n = A117899 n

end A117899

/-! ## A117899.P2081828761582956071

`abs(Δ[A099470(n+1)])+n`
-/

namespace A117899.P2081828761582956071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + (n : ℤ)

end

end A117899.P2081828761582956071

namespace A117899

/-- `abs(Δ[A099470(n+1)])+n` -/
def P2081828761582956071.Spec : Prop :=
  ∀ n, P2081828761582956071.a n = A117899 n

end A117899

/-! ## A117899.P4325740435960310075

`A089598(A047254(n+1)-n)+n`
-/

namespace A117899.P4325740435960310075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 (A047254 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A117899.P4325740435960310075

namespace A117899

/-- `A089598(A047254(n+1)-n)+n` -/
def P4325740435960310075.Spec : Prop :=
  ∀ n, P4325740435960310075.a n = A117899 n

end A117899

/-! ## A117899.P8190245643425918180

`∑[A131358(n+2)+1]`
-/

namespace A117899.P8190245643425918180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A117899.P8190245643425918180

namespace A117899

/-- `∑[A131358(n+2)+1]` -/
def P8190245643425918180.Spec : Prop :=
  ∀ n, P8190245643425918180.a n = A117899 n

end A117899

/-! ## A117899.P4864466228633837242

`Δ[A082667(n+2)]+n`
-/

namespace A117899.P4864466228633837242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A117899.P4864466228633837242

namespace A117899

/-- `Δ[A082667(n+2)]+n` -/
def P4864466228633837242.Spec : Prop :=
  ∀ n, P4864466228633837242.a n = A117899 n

end A117899

/-! ## A117899.P8001192178626760782

`2*(n+1)-A009947(n+2)`
-/

namespace A117899.P8001192178626760782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A009947 (n + 2)

end

end A117899.P8001192178626760782

namespace A117899

/-- `2*(n+1)-A009947(n+2)` -/
def P8001192178626760782.Spec : Prop :=
  ∀ n, P8001192178626760782.a n = A117899 n

end A117899

/-! ## A117899.P6061601607433800199

`A011655(n+2)+A186731(n+1)+n`
-/

namespace A117899.P6061601607433800199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 2) + (A186731 (n + 1) + (n : ℤ))

end

end A117899.P6061601607433800199

namespace A117899

/-- `A011655(n+2)+A186731(n+1)+n` -/
def P6061601607433800199.Spec : Prop :=
  ∀ n, P6061601607433800199.a n = A117899 n

end A117899

/-! ## A117899.P4882694070057122892

`A130507(A004773(n))+A004773(n+1)`
-/

namespace A117899.P4882694070057122892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 (A004773 n).toNat + A004773 (n + 1)

end

end A117899.P4882694070057122892

namespace A117899

/-- `A130507(A004773(n))+A004773(n+1)` -/
def P4882694070057122892.Spec : Prop :=
  ∀ n, P4882694070057122892.a n = A117899 n

end A117899

/-! ## A117899.P11328676855099626067

`A117910(2*n)+A079978(n+1)+n`
-/

namespace A117899.P11328676855099626067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (2 * n) + (A079978 (n + 1) + (n : ℤ))

end

end A117899.P11328676855099626067

namespace A117899

/-- `A117910(2*n)+A079978(n+1)+n` -/
def P11328676855099626067.Spec : Prop :=
  ∀ n, P11328676855099626067.a n = A117899 n

end A117899

/-! ## A117899.P3194555397183965574

`A214090(2*n+1)+A117910(2*n)+n`
-/

namespace A117899.P3194555397183965574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214090 (2 * n + 1) + (A117910 (2 * n) + (n : ℤ))

end

end A117899.P3194555397183965574

namespace A117899

/-- `A214090(2*n+1)+A117910(2*n)+n` -/
def P3194555397183965574.Spec : Prop :=
  ∀ n, P3194555397183965574.a n = A117899 n

end A117899

/-! ## A117899.P10860087220509570685

`A027656(A004396(n+1))+A004396(2*n+1)`
-/

namespace A117899.P10860087220509570685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A004396 (n + 1)).toNat + A004396 (2 * n + 1)

end

end A117899.P10860087220509570685

namespace A117899

/-- `A027656(A004396(n+1))+A004396(2*n+1)` -/
def P10860087220509570685.Spec : Prop :=
  ∀ n, P10860087220509570685.a n = A117899 n

end A117899

/-! ## A117899.P3111129070909938629

`A117910(2*n+3)+n`
-/

namespace A117899.P3111129070909938629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (2 * n + 3) + (n : ℤ)

end

end A117899.P3111129070909938629

namespace A117899

/-- `A117910(2*n+3)+n` -/
def P3111129070909938629.Spec : Prop :=
  ∀ n, P3111129070909938629.a n = A117899 n

end A117899

