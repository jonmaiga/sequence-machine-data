import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A085101: Palindromes arising in A085100.

The programs for A085101, there is no canonical definition to state claims against.
-/

/-! ## A085101.P7350852211822579905

`A265573(A000040(3*n+1)-A123021(n))`
-/

namespace A085101.P7350852211822579905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265573 (A000040 (3 * n + 1) - A123021 n).toNat

end

end A085101.P7350852211822579905

/-!
# A085103: Indices of zeros in A085102.

The programs for A085103, there is no canonical definition to state claims against.
-/

/-! ## A085103.P18364334549334372729

`eq[0, A085102(n+1)]+1`
-/

namespace A085103.P18364334549334372729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085103.P18364334549334372729

/-! ## A085103.P4283984276185691085

`lt[A085102(round(sqrt(n²+1))), n]`
-/

namespace A085103.P4283984276185691085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085102 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A085103.P4283984276185691085

/-! ## A085103.P4821075905118451874

`record[A000027(n+1)-A085102(n+1)]`
-/

namespace A085103.P4821075905118451874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A085102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085103.P4821075905118451874

/-! ## A085103.P7930063338681642448

`lt[A085102(n+1), A330231(n)]+1`
-/

namespace A085103.P7930063338681642448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330231 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A085103.P7930063338681642448

/-!
# A085104: Primes of the form 1 + n + n^2 + n^3 + ... + n^k, n > 1, k > 1.

The programs for A085104, there is no canonical definition to state claims against.
-/

/-! ## A085104.P11247093834282666757

`∩[A053696(n+1), A206864(n+1)]`
-/

namespace A085104.P11247093834282666757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085104.P11247093834282666757

/-! ## A085104.P9102060663242548508

`∩[A053696(n+1), A206946(n+1)]`
-/

namespace A085104.P9102060663242548508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085104.P9102060663242548508

/-! ## A085104.P3611304205579651326

`∩[A206864(n+1), A308851(n+1)]`
-/

namespace A085104.P3611304205579651326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085104.P3611304205579651326

/-! ## A085104.P11906472381741623060

`∩[A206946(n+1), A308851(n+1)]`
-/

namespace A085104.P11906472381741623060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085104.P11906472381741623060

/-! ## A085104.P8917895516999124377

`p?[A053696(n+1)]`
-/

namespace A085104.P8917895516999124377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085104.P8917895516999124377

/-! ## A085104.P18169806211951355072

`p?[A308851(n+1)]`
-/

namespace A085104.P18169806211951355072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085104.P18169806211951355072

/-! ## A085104.P774022705416195264

`p?[A053696(A008619(n))-n%2]`
-/

namespace A085104.P774022705416195264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (A008619 n).toNat - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085104.P774022705416195264

/-! ## A085104.P18054871694479335913

`p?[A053696(A052938(n))-and(1, n)]`
-/

namespace A085104.P18054871694479335913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (A052938 n).toNat - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085104.P18054871694479335913

/-! ## A085104.P3314578460331483583

`p?[A053696(A008619(n))-A000035(n)]`
-/

namespace A085104.P3314578460331483583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085104.P3314578460331483583

/-! ## A085104.P2076522182216504559

`p?[A053696(A008619(n))-A010060(n)]`
-/

namespace A085104.P2076522182216504559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (A008619 n).toNat - A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085104.P2076522182216504559

/-! ## A085104.P11768323730779702106

`p?[A033999(n)*A053696(A052938(n))]`
-/

namespace A085104.P11768323730779702106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A053696 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085104.P11768323730779702106

/-! ## A085104.P9211925577742224749

`∩[A053696(n+1), A283937(n+1)]`
-/

namespace A085104.P9211925577742224749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085104.P9211925577742224749

/-! ## A085104.P1495258583694796265

`∩[A206864(n+1), A283937(n+1)]`
-/

namespace A085104.P1495258583694796265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085104.P1495258583694796265

/-! ## A085104.P10900823589957648204

`∩[A206946(n+1), A283937(n+1)]`
-/

namespace A085104.P10900823589957648204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085104.P10900823589957648204

/-! ## A085104.P17214970440184317709

`∩[A283937(n+1), A308851(n+1)]`
-/

namespace A085104.P17214970440184317709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085104.P17214970440184317709

/-! ## A085104.P1798876609112769680

`p?[A167782(n+1)]`
-/

namespace A085104.P1798876609112769680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085104.P1798876609112769680

/-! ## A085104.P12212173351288536328

`∩[A167782(n+1), A206864(n+1)]`
-/

namespace A085104.P12212173351288536328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085104.P12212173351288536328

/-! ## A085104.P8026316140789108762

`∩[A167782(n+1), A206946(n+1)]`
-/

namespace A085104.P8026316140789108762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085104.P8026316140789108762

/-! ## A085104.P7328733507278198590

`p?[A000034(n)*A053696(A008619(n))]`
-/

namespace A085104.P7328733507278198590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A053696 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085104.P7328733507278198590

/-! ## A085104.P8700943497504831295

`p?[A000034(n)*A053696(A052938(n))]`
-/

namespace A085104.P8700943497504831295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A053696 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085104.P8700943497504831295

/-!
# A085109: Palindromes with more than 3 digits in which the absolute difference of a pair of successive digits is identical.

The programs for A085109, there is no canonical definition to state claims against.
-/

/-! ## A085109.P14282928009882807750

`∑[A343038(floor(acot(n)+n))]`
-/

namespace A085109.P14282928009882807750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343038 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085109.P14282928009882807750

/-! ## A085109.P6503263028654669869

`∑[A343038(abs(1-n)+1)]`
-/

namespace A085109.P6503263028654669869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343038 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085109.P6503263028654669869

/-! ## A085109.P13616895538014433874

`A346000(n+2)-A143588(A143572(n))`
-/

namespace A085109.P13616895538014433874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346000 (n + 2) - A143588 (A143572 n).toNat

end

end A085109.P13616895538014433874

/-!
# A085110: a(1)=1, then add 1 multiply by 2 to get a(2), subtract 1 and multiply by 3 to get a(3), add 1 and multiply by 4 to get a(4) and so on.

The programs for A085110, the canonical program `A085110.P4714223032922209821` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085110 has offset 1).

The definition of A085110 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085110.P4714223032922209821

`(n+1)*(a(n-1)+(-1)^(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085110

/-- `(n+1)*(a(n-1)+(-1)^(n+1))` -/
def P4714223032922209821.Spec : Prop :=
  ∀ n, P4714223032922209821.a n = A085110 (n + 1)

theorem P4714223032922209821.correct : P4714223032922209821.Spec := by
  intro n
  simp only [A085110, Nat.add_sub_cancel]

end A085110

/-! ## A085110.P9147286932869478994

`round((n+1)!*(2-exp(-1)))+(-1)^(n+1)`
-/

namespace A085110.P9147286932869478994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℝ) * (2 - Real.exp (-1 : ℝ))) + (-1) ^ (n + 1)

end

end A085110.P9147286932869478994

namespace A085110

/-- `round((n+1)!*(2-exp(-1)))+(-1)^(n+1)` -/
def P9147286932869478994.Spec : Prop :=
  ∀ n, P9147286932869478994.a n = A085110 (n + 1)

end A085110

/-! ## A085110.P17333383008412913958

`abs((n+1)*xor(1, -a(n-1)))` with `a(0)=1`
-/

namespace A085110.P17333383008412913958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |(n + 1 : ℤ) * Int.xor 1 (-a (n - 1))|

end

end A085110.P17333383008412913958

namespace A085110

/-- `abs((n+1)*xor(1, -a(n-1)))` -/
def P17333383008412913958.Spec : Prop :=
  ∀ n, P17333383008412913958.a n = A085110 (n + 1)

end A085110

/-! ## A085110.P437557199238108927

`-((n+1)*xor(1, -a(n-1)))` with `a(0)=1`
-/

namespace A085110.P437557199238108927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -((n + 1 : ℤ) * Int.xor 1 (-a (n - 1)))

end

end A085110.P437557199238108927

namespace A085110

/-- `-((n+1)*xor(1, -a(n-1)))` -/
def P437557199238108927.Spec : Prop :=
  ∀ n, P437557199238108927.a n = A085110 (n + 1)

end A085110

/-! ## A085110.P11578636308963755189

`(a(n-1)-(-1)^n)/(n+1)^(-1)` with `a(0)=1`
-/

namespace A085110.P11578636308963755189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - ((-1) ^ n : ℚ)) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A085110.P11578636308963755189

namespace A085110

/-- `(a(n-1)-(-1)^n)/(n+1)^(-1)` -/
def P11578636308963755189.Spec : Prop :=
  ∀ n, P11578636308963755189.a n = (A085110 (n + 1) : ℚ)

end A085110

/-! ## A085110.P16934641164071680030

`(n-1)*(n+1)/n*a(n-1)+(n+1)*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A085110.P16934641164071680030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((n : ℤ) - 1 : ℚ) * ((n + 1 : ℚ) / (n : ℚ)) * a (n - 1) + (n + 1 : ℚ) * a (n - 2)

end

end A085110.P16934641164071680030

namespace A085110

/-- `(n-1)*(n+1)/n*a(n-1)+(n+1)*a(n-2)` -/
def P16934641164071680030.Spec : Prop :=
  ∀ n, P16934641164071680030.a n = (A085110 (n + 1) : ℚ)

end A085110

/-! ## A085110.P5538909469696728339

`(n+1)*A003048(n+1)`
-/

namespace A085110.P5538909469696728339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003048 (n + 1)

end

end A085110.P5538909469696728339

namespace A085110

/-- `(n+1)*A003048(n+1)` -/
def P5538909469696728339.Spec : Prop :=
  ∀ n, P5538909469696728339.a n = A085110 (n + 1)

end A085110

/-! ## A085110.P15737117802088078975

`(A002467(n)+n!)*(n+1)`
-/

namespace A085110.P15737117802088078975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002467 n + (Nat.factorial n : ℤ)) * (n + 1 : ℤ)

end

end A085110.P15737117802088078975

namespace A085110

/-- `(A002467(n)+n!)*(n+1)` -/
def P15737117802088078975.Spec : Prop :=
  ∀ n, P15737117802088078975.a n = A085110 (n + 1)

end A085110

/-! ## A085110.P8453716109864358942

`(A002467(n)+A000142(n))*(n+1)`
-/

namespace A085110.P8453716109864358942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002467 n + A000142 n) * (n + 1 : ℤ)

end

end A085110.P8453716109864358942

namespace A085110

/-- `(A002467(n)+A000142(n))*(n+1)` -/
def P8453716109864358942.Spec : Prop :=
  ∀ n, P8453716109864358942.a n = A085110 (n + 1)

end A085110

/-! ## A085110.P9725232025851475640

`A368765(n+1)+A368765(n+1)+A000240(n+1)`
-/

namespace A085110.P9725232025851475640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368765 (n + 1) + (A368765 (n + 1) + A000240 (n + 1))

end

end A085110.P9725232025851475640

namespace A085110

/-- `A368765(n+1)+A368765(n+1)+A000240(n+1)` -/
def P9725232025851475640.Spec : Prop :=
  ∀ n, P9725232025851475640.a n = A085110 (n + 1)

end A085110

/-!
# A085111: a(1) = 1; then add 1, multiply by 2, subtract 3, multiply by 4, add 5, multiply by 6, subtract 7, multiply by 8 and so on.

The programs for A085111, the canonical program `A085111.P5442241482945459638` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085111 has offset 1).

The definition of A085111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085111.P5442241482945459638

`A037223(n)+A009531(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A085111

/-- `A037223(n)+A009531(n)` -/
def P5442241482945459638.Spec : Prop :=
  ∀ n, P5442241482945459638.a n = A085111 (n + 1)

theorem P5442241482945459638.correct : P5442241482945459638.Spec := by
  intro n
  simp only [A085111, Nat.add_sub_cancel]

end A085111

/-! ## A085111.P16133943660984631143

`A009531(n)+A006882(and(n, -2))`
-/

namespace A085111.P16133943660984631143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n + A006882 (Int.land (n : ℤ) (-2)).toNat

end

end A085111.P16133943660984631143

namespace A085111

/-- `A009531(n)+A006882(and(n, -2))` -/
def P16133943660984631143.Spec : Prop :=
  ∀ n, P16133943660984631143.a n = A085111 (n + 1)

end A085111

/-! ## A085111.P14821094891563699937

`A009531(n)+A000165(floor(n/2))`
-/

namespace A085111.P14821094891563699937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n + A000165 ⌊(n : ℚ) / 2⌋.toNat

end

end A085111.P14821094891563699937

namespace A085111

/-- `A009531(n)+A000165(floor(n/2))` -/
def P14821094891563699937.Spec : Prop :=
  ∀ n, P14821094891563699937.a n = A085111 (n + 1)

end A085111

/-! ## A085111.P17711236384219907419

`A009531(n)+A006882(A052928(n))`
-/

namespace A085111.P17711236384219907419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n + A006882 (A052928 n).toNat

end

end A085111.P17711236384219907419

namespace A085111

/-- `A009531(n)+A006882(A052928(n))` -/
def P17711236384219907419.Spec : Prop :=
  ∀ n, P17711236384219907419.a n = A085111 (n + 1)

end A085111

/-!
# A085112: Palindromic primes with at least 3 digits in which the absolute difference of successive digits is identical.

The programs for A085112, there is no canonical definition to state claims against.
-/

/-! ## A085112.P7934096662012558401

`∩[A002113(n+1), A089360(n+1)]`
-/

namespace A085112.P7934096662012558401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085112.P7934096662012558401

/-! ## A085112.P12143580793658254244

`∩[A002385(n+1), A089360(n+1)]`
-/

namespace A085112.P12143580793658254244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085112.P12143580793658254244

/-! ## A085112.P8139023081085207079

`∩[A029950(n+1), A089360(n+1)]`
-/

namespace A085112.P8139023081085207079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085112.P8139023081085207079

/-! ## A085112.P15345920686347857822

`∩[A050783(n+1), A089360(n+1)]`
-/

namespace A085112.P15345920686347857822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085112.P15345920686347857822

/-! ## A085112.P6805706171535748434

`∩[A050784(n+1), A089360(n+1)]`
-/

namespace A085112.P6805706171535748434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085112.P6805706171535748434

/-!
# A085114: Binary expansion of Sum 1/(p*2^p) where p runs through the set of Artin primes (primes with primitive root 2).

The programs for A085114, there is no canonical definition to state claims against.
-/

/-! ## A085114.P2601667452166533923

`A117943(A327877((2*n+1)²))`
-/

namespace A085114.P2601667452166533923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117943 (A327877 ((2 * n + 1) ^ 2)).toNat

end

end A085114.P2601667452166533923

/-! ## A085114.P13011824485392309850

`A309162(or(2*n, A213364(n+1)))`
-/

namespace A085114.P13011824485392309850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309162 (Int.lor (2 * n : ℤ) (A213364 (n + 1))).toNat

end

end A085114.P13011824485392309850

/-! ## A085114.P1488340977804189290

`and(A066247(A261082(n)), A219648(n))`
-/

namespace A085114.P1488340977804189290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066247 (A261082 n).toNat) (A219648 n)

end

end A085114.P1488340977804189290

/-! ## A085114.P8482720284058185755

`A159684(A000700(3*n+2)*A057567(n+3))`
-/

namespace A085114.P8482720284058185755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A000700 (3 * n + 2) * A057567 (n + 3)).toNat

end

end A085114.P8482720284058185755

/-! ## A085114.P14540684660433463883

`A011772(A052250(n+3)*A052293(n+1))%2`
-/

namespace A085114.P14540684660433463883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011772 (A052250 (n + 3) * A052293 (n + 1)).toNat) 2

end

end A085114.P14540684660433463883

/-!
# A085118: Primes together with twice the odd primes.

The programs for A085118, the canonical program `A085118.P8531841881475937223` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085118 has offset 1).

The definition of A085118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085118.P15767134579398127987

`filter[A005117(n+1), A211487(#)]`
-/

namespace A085118.P15767134579398127987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A085118.P15767134579398127987

namespace A085118

/-- `filter[A005117(n+1), A211487(#)]` -/
def P15767134579398127987.Spec : Prop :=
  ∀ n, P15767134579398127987.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P8531841881475937223

`∪[A008578(n+2), A100484(n+2)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A085118

/-- `∪[A008578(n+2), A100484(n+2)]` -/
def P8531841881475937223.Spec : Prop :=
  ∀ n, (P8531841881475937223.a n : ℤ) = A085118 (n + 1)

theorem P8531841881475937223.correct : P8531841881475937223.Spec := by
  intro n
  simp only [A085118, Nat.add_sub_cancel]

end A085118

/-! ## A085118.P17519401180182126600

`record[A001221(n+2)*A006530(n+2)]`
-/

namespace A085118.P17519401180182126600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2) * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085118.P17519401180182126600

namespace A085118

/-- `record[A001221(n+2)*A006530(n+2)]` -/
def P17519401180182126600.Spec : Prop :=
  ∀ n, P17519401180182126600.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P9800417225941877712

`record[A007947(n+2)*A340371(n+2)]`
-/

namespace A085118.P9800417225941877712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) * A340371 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085118.P9800417225941877712

namespace A085118

/-- `record[A007947(n+2)*A340371(n+2)]` -/
def P9800417225941877712.Spec : Prop :=
  ∀ n, P9800417225941877712.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P9977176822839256600

`∪[record[A006530(n+2)], A100484(n+2)]`
-/

namespace A085118.P9977176822839256600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A085118.P9977176822839256600

namespace A085118

/-- `∪[record[A006530(n+2)], A100484(n+2)]` -/
def P9977176822839256600.Spec : Prop :=
  ∀ n, (P9977176822839256600.a n : ℤ) = A085118 (n + 1)

end A085118

/-! ## A085118.P9879111245423086248

`A001751(A326178(n+1))`
-/

namespace A085118.P9879111245423086248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (A326178 (n + 1)).toNat

end

end A085118.P9879111245423086248

namespace A085118

/-- `A001751(A326178(n+1))` -/
def P9879111245423086248.Spec : Prop :=
  ∀ n, P9879111245423086248.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P16505361387595736439

`record[A007947(A001751(n+1))]`
-/

namespace A085118.P16505361387595736439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085118.P16505361387595736439

namespace A085118

/-- `record[A007947(A001751(n+1))]` -/
def P16505361387595736439.Spec : Prop :=
  ∀ n, P16505361387595736439.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P1138101606106604061

`filter[A001751(n+1), A008966(#)]`
-/

namespace A085118.P1138101606106604061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A085118.P1138101606106604061

namespace A085118

/-- `filter[A001751(n+1), A008966(#)]` -/
def P1138101606106604061.Spec : Prop :=
  ∀ n, P1138101606106604061.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P3916692525792210276

`filter[A001751(n+1), A049240(#)]`
-/

namespace A085118.P3916692525792210276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A085118.P3916692525792210276

namespace A085118

/-- `filter[A001751(n+1), A049240(#)]` -/
def P3916692525792210276.Spec : Prop :=
  ∀ n, P3916692525792210276.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P5755639693788574206

`filter[A001751(n+1), A105597(#)]`
-/

namespace A085118.P5755639693788574206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A085118.P5755639693788574206

namespace A085118

/-- `filter[A001751(n+1), A105597(#)]` -/
def P5755639693788574206.Spec : Prop :=
  ∀ n, P5755639693788574206.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P15798822000800340233

`filter[A001751(n+1), A166486(#)]`
-/

namespace A085118.P15798822000800340233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A085118.P15798822000800340233

namespace A085118

/-- `filter[A001751(n+1), A166486(#)]` -/
def P15798822000800340233.Spec : Prop :=
  ∀ n, P15798822000800340233.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P12997753458914875662

`filter[A001751(n+1), A181183(#)]`
-/

namespace A085118.P12997753458914875662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A085118.P12997753458914875662

namespace A085118

/-- `filter[A001751(n+1), A181183(#)]` -/
def P12997753458914875662.Spec : Prop :=
  ∀ n, P12997753458914875662.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P10001152559119925273

`filter[A001751(n+1), A295316(#)]`
-/

namespace A085118.P10001152559119925273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A085118.P10001152559119925273

namespace A085118

/-- `filter[A001751(n+1), A295316(#)]` -/
def P10001152559119925273.Spec : Prop :=
  ∀ n, P10001152559119925273.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P12261343375160223143

`filter[A001751(n+1), A323154(#)]`
-/

namespace A085118.P12261343375160223143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A085118.P12261343375160223143

namespace A085118

/-- `filter[A001751(n+1), A323154(#)]` -/
def P12261343375160223143.Spec : Prop :=
  ∀ n, P12261343375160223143.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P17996609832585382928

`filter[A001751(n+1), A341625(#)]`
-/

namespace A085118.P17996609832585382928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A085118.P17996609832585382928

namespace A085118

/-- `filter[A001751(n+1), A341625(#)]` -/
def P17996609832585382928.Spec : Prop :=
  ∀ n, P17996609832585382928.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P60414106608723696

`filter[A001751(n+1), A348737(#)]`
-/

namespace A085118.P60414106608723696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348737 (f1 j).toNat = 1) n)

end

end A085118.P60414106608723696

namespace A085118

/-- `filter[A001751(n+1), A348737(#)]` -/
def P60414106608723696.Spec : Prop :=
  ∀ n, P60414106608723696.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P10752414442640813816

`∩[A001751(n+1), A005117(n+1)]`
-/

namespace A085118.P10752414442640813816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085118.P10752414442640813816

namespace A085118

/-- `∩[A001751(n+1), A005117(n+1)]` -/
def P10752414442640813816.Spec : Prop :=
  ∀ n, (P10752414442640813816.a n : ℤ) = A085118 (n + 1)

end A085118

/-! ## A085118.P12996109054364775821

`A001751(n+2)+A335402(n+2)-A046022(n+2)`
-/

namespace A085118.P12996109054364775821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 2) + (A335402 (n + 2) - A046022 (n + 2))

end

end A085118.P12996109054364775821

namespace A085118

/-- `A001751(n+2)+A335402(n+2)-A046022(n+2)` -/
def P12996109054364775821.Spec : Prop :=
  ∀ n, P12996109054364775821.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P8494397493443654199

`filter[A066522(n+1), A353471(#)]`
-/

namespace A085118.P8494397493443654199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A085118.P8494397493443654199

namespace A085118

/-- `filter[A066522(n+1), A353471(#)]` -/
def P8494397493443654199.Spec : Prop :=
  ∀ n, P8494397493443654199.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P17017426612752055994

`filter[A066522(n+2), A008966(#)]`
-/

namespace A085118.P17017426612752055994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A085118.P17017426612752055994

namespace A085118

/-- `filter[A066522(n+2), A008966(#)]` -/
def P17017426612752055994.Spec : Prop :=
  ∀ n, P17017426612752055994.a n = A085118 (n + 1)

end A085118

/-! ## A085118.P7317568192670348494

`lt[∑[n], ∑{p}[n, n*#]]`
-/

namespace A085118.P7317568192670348494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), n * p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A085118.P7317568192670348494

namespace A085118

/-- `lt[∑[n], ∑{p}[n, n*#]]` -/
def P7317568192670348494.Spec : Prop :=
  ∀ n, (P7317568192670348494.a n : ℤ) = A085118 (n + 1)

end A085118

/-!
# A085120: a(n) = Sum_{m=1..24} (25-m)^n*A005875(m).

The programs for A085120, there is no canonical definition to state claims against.
-/

/-! ## A085120.P5122187322436573920

`∑{#}[24-1, (25-(#+1))^n*A005875(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085120.P5122187322436573920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (25 - (k + 1 : ℤ)) ^ n * A005875 (k + 1)

end

end A085120.P5122187322436573920

/-!
# A085121: Number of ways of writing n as the sum of three odd squares.

The programs for A085121, there is no canonical definition to state claims against.
-/

/-! ## A085121.P14241606812705059299

`8*A008437(n)`
-/

namespace A085121.P14241606812705059299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A008437 n

end

end A085121.P14241606812705059299

/-! ## A085121.P8314210985513523514

`n%2*A004013(n)`
-/

namespace A085121.P8314210985513523514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A004013 n

end

end A085121.P8314210985513523514

/-! ## A085121.P16406244358946723056

`char[4*n-1]*A212885(n)`
-/

namespace A085121.P16406244358946723056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212885 n

end

end A085121.P16406244358946723056

/-! ## A085121.P15413139923077897998

`A008590(A008437(n))`
-/

namespace A085121.P15413139923077897998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A008437 n).toNat

end

end A085121.P15413139923077897998

/-! ## A085121.P8872850498354325249

`A004013(A093178(n))`
-/

namespace A085121.P8872850498354325249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A093178 n).toNat

end

end A085121.P8872850498354325249

/-! ## A085121.P4189225344867482123

`A004013(A098180(n))`
-/

namespace A085121.P4189225344867482123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A098180 n).toNat

end

end A085121.P4189225344867482123

/-! ## A085121.P8102287007973214424

`A004013(A290561(n))`
-/

namespace A085121.P8102287007973214424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A290561 n).toNat

end

end A085121.P8102287007973214424

/-! ## A085121.P511326796522349917

`A004013(A133872(n)+n)`
-/

namespace A085121.P511326796522349917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A133872 n + (n : ℤ)).toNat

end

end A085121.P511326796522349917

/-! ## A085121.P4164259448392470568

`A000035(n)*A004013(n)`
-/

namespace A085121.P4164259448392470568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A004013 n

end

end A085121.P4164259448392470568

/-! ## A085121.P17679163541134143494

`A004013(n)*A007877(n)`
-/

namespace A085121.P17679163541134143494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n * A007877 n

end

end A085121.P17679163541134143494

/-! ## A085121.P4775864251607014087

`A005925(n)*A010673(n)`
-/

namespace A085121.P4775864251607014087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 n * A010673 n

end

end A085121.P4775864251607014087

/-! ## A085121.P9685262724943637064

`A004013(n)*A021913(n)`
-/

namespace A085121.P9685262724943637064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 n * A021913 n

end

end A085121.P9685262724943637064

/-! ## A085121.P4711075154920444162

`A005925(n)*A096271(n)`
-/

namespace A085121.P4711075154920444162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 n * A096271 n

end

end A085121.P4711075154920444162

/-! ## A085121.P13941104536092645247

`A004013(n)%A019304(n)`
-/

namespace A085121.P13941104536092645247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004013 n) (A019304 n)

end

end A085121.P13941104536092645247

/-! ## A085121.P4577023090697418577

`lcm(A004013(n), A008437(n))`
-/

namespace A085121.P4577023090697418577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004013 n) (A008437 n)

end

end A085121.P4577023090697418577

/-! ## A085121.P7451645487950103810

`and(A004013(n), A091337(n))`
-/

namespace A085121.P7451645487950103810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004013 n) (A091337 n)

end

end A085121.P7451645487950103810

/-! ## A085121.P5196478298258877734

`and(A004013(n), A101455(n))`
-/

namespace A085121.P5196478298258877734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004013 n) (A101455 n)

end

end A085121.P5196478298258877734

/-! ## A085121.P12793133122481171159

`and(A005875(n), A101455(n))`
-/

namespace A085121.P12793133122481171159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005875 n) (A101455 n)

end

end A085121.P12793133122481171159

/-! ## A085121.P4938142371775282990

`and(A004013(n), A258260(n))`
-/

namespace A085121.P4938142371775282990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004013 n) (A258260 n)

end

end A085121.P4938142371775282990

/-! ## A085121.P17903197181696163521

`and(A004013(n), A301850(n))`
-/

namespace A085121.P17903197181696163521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004013 n) (A301850 n)

end

end A085121.P17903197181696163521

/-!
# A085122: a(n) = PrimePi(sigma(n)-phi(n)) - (PrimePi(sigma(n)) - PrimePi(phi(n))), where PrimePi = A000720, sigma = A000203 and phi = A000010.

The programs for A085122, the canonical program `A085122.P1768509895098590735` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085122 has offset 1).

The definition of A085122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085122.P1768509895098590735

`A230980(A051612(n+1))-A085343(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085122

/-- `A230980(A051612(n+1))-A085343(n+1)` -/
def P1768509895098590735.Spec : Prop :=
  ∀ n, P1768509895098590735.a n = A085122 (n + 1)

theorem P1768509895098590735.correct : P1768509895098590735.Spec := by
  intro n
  simp only [A085122, Nat.add_sub_cancel]

end A085122

/-! ## A085122.P15309529622399521603

`A038548(n+1)-A054977(A131486(n+5))`
-/

namespace A085122.P15309529622399521603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - A054977 (A131486 (n + 5)).toNat

end

end A085122.P15309529622399521603

namespace A085122

/-- `A038548(n+1)-A054977(A131486(n+5))` -/
def P15309529622399521603.Spec : Prop :=
  ∀ n, P15309529622399521603.a n = A085122 (n + 1)

end A085122

/-! ## A085122.P6298430309542721353

`A038548(n+1)-A014963(A045656(n))`
-/

namespace A085122.P6298430309542721353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - A014963 (A045656 n).toNat

end

end A085122.P6298430309542721353

namespace A085122

/-- `A038548(n+1)-A014963(A045656(n))` -/
def P6298430309542721353.Spec : Prop :=
  ∀ n, P6298430309542721353.a n = A085122 (n + 1)

end A085122

/-! ## A085122.P8628439761275566218

`A327400(n+1)-A014963(A045656(n))`
-/

namespace A085122.P8628439761275566218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327400 (n + 1) - A014963 (A045656 n).toNat

end

end A085122.P8628439761275566218

namespace A085122

/-- `A327400(n+1)-A014963(A045656(n))` -/
def P8628439761275566218.Spec : Prop :=
  ∀ n, P8628439761275566218.a n = A085122 (n + 1)

end A085122

/-! ## A085122.P11631723053164362427

`A038548(n+1)-A167911(A284553(n))`
-/

namespace A085122.P11631723053164362427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - A167911 (A284553 n).toNat

end

end A085122.P11631723053164362427

namespace A085122

/-- `A038548(n+1)-A167911(A284553(n))` -/
def P11631723053164362427.Spec : Prop :=
  ∀ n, P11631723053164362427.a n = A085122 (n + 1)

end A085122

/-!
# A085123: Smallest member of A002473 whose digital product = A002473(n), or 0 if no such number exists.

The programs for A085123, there is no canonical definition to state claims against.
-/

/-! ## A085123.P1184662052524929252

`A131571(n+2)%366`
-/

namespace A085123.P1184662052524929252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131571 (n + 2)) 366

end

end A085123.P1184662052524929252

/-! ## A085123.P11757406125572996797

`A344325(A322298(n)+n)`
-/

namespace A085123.P11757406125572996797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344325 (A322298 n + (n : ℤ)).toNat

end

end A085123.P11757406125572996797

/-! ## A085123.P15217010326694491149

`A353907(n+1)%A353618(n+1)`
-/

namespace A085123.P15217010326694491149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353907 (n + 1)) (A353618 (n + 1))

end

end A085123.P15217010326694491149

/-! ## A085123.P2104413368232432019

`A007954(or(n+1, A032569(n+1)))`
-/

namespace A085123.P2104413368232432019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (Int.lor (n + 1 : ℤ) (A032569 (n + 1))).toNat

end

end A085123.P2104413368232432019

/-! ## A085123.P10128247831850575235

`A344325(A358021(A358021(A358129(A344325(n+1)))))`
-/

namespace A085123.P10128247831850575235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344325 (A358021 (A358021 (A358129 (A344325 (n + 1)).toNat).toNat).toNat).toNat

end

end A085123.P10128247831850575235

/-!
# A085124: Smallest multiple of n whose digital product is also a positive multiple of n, or 0 if no such number exists.

The programs for A085124, there is no canonical definition to state claims against.
-/

/-! ## A085124.P9271119557378469757

`A028303(A185254(n+1))*(n+1)`
-/

namespace A085124.P9271119557378469757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A185254 (n + 1)).toNat * (n + 1 : ℤ)

end

end A085124.P9271119557378469757

/-! ## A085124.P6649622440062083177

`(n+1)*A354465(A113019(n+1))`
-/

namespace A085124.P6649622440062083177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A354465 (A113019 (n + 1)).toNat

end

end A085124.P6649622440062083177

/-! ## A085124.P3353297464972229586

`A044822(n+1)*A359902(A000927(n+1))`
-/

namespace A085124.P3353297464972229586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044822 (n + 1) * A359902 (A000927 (n + 1)).toNat

end

end A085124.P3353297464972229586

/-! ## A085124.P16601381938439515039

`lcm(A002473(n+1), A187844(A077739(n+1)))`
-/

namespace A085124.P16601381938439515039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002473 (n + 1)) (A187844 (A077739 (n + 1)).toNat)

end

end A085124.P16601381938439515039

/-! ## A085124.P2651579273959588538

`A257554(A343050(n+1))%A230099(A257554(n+1))`
-/

namespace A085124.P2651579273959588538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257554 (A343050 (n + 1)).toNat) (A230099 (A257554 (n + 1)).toNat)

end

end A085124.P2651579273959588538

/-!
# A085125: Even numbers which are 7-smooth.

The programs for A085125, there is no canonical definition to state claims against.
-/

/-! ## A085125.P14189373527861695577

`2*A002473(n+1)`
-/

namespace A085125.P14189373527861695577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002473 (n + 1)

end

end A085125.P14189373527861695577

/-! ## A085125.P1104260660008216985

`A085127(n+1)/2`
-/

namespace A085125.P1104260660008216985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) : ℚ) / 2

end

end A085125.P1104260660008216985

/-! ## A085125.P13270644268179738557

`A085129(n+1)/3`
-/

namespace A085125.P13270644268179738557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085129 (n + 1) : ℚ) / 3

end

end A085125.P13270644268179738557

/-! ## A085125.P12547426908429716869

`A085131(n+1)/4`
-/

namespace A085125.P12547426908429716869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085131 (n + 1) : ℚ) / 4

end

end A085125.P12547426908429716869

/-! ## A085125.P2381383165267514489

`2*sqrt(A352618(1+n))`
-/

namespace A085125.P2381383165267514489
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A352618 (1 + n) : ℝ)

end

end A085125.P2381383165267514489

/-! ## A085125.P17472277642185968495

`2/3*A085126(n+1)`
-/

namespace A085125.P17472277642185968495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A085126 (n + 1) : ℚ)

end

end A085125.P17472277642185968495

/-! ## A085125.P8527284608800214786

`2/5*A085128(n+1)`
-/

namespace A085125.P8527284608800214786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (A085128 (n + 1) : ℚ)

end

end A085125.P8527284608800214786

/-! ## A085125.P4441204927022078982

`2*∏{digits}[A280249(n+1), #]`
-/

namespace A085125.P4441204927022078982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A085125.P4441204927022078982

/-! ## A085125.P1142947333219073522

`A085126(n+1)-A002473(n+1)`
-/

namespace A085125.P1142947333219073522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1) - A002473 (n + 1)

end

end A085125.P1142947333219073522

/-! ## A085125.P15638912050141507212

`A080194(n+1)-A085128(n+1)`
-/

namespace A085125.P15638912050141507212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1) - A085128 (n + 1)

end

end A085125.P15638912050141507212

/-! ## A085125.P15998087839170977946

`A085132(n+1)-A080194(n+1)`
-/

namespace A085125.P15998087839170977946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085132 (n + 1) - A080194 (n + 1)

end

end A085125.P15998087839170977946

/-! ## A085125.P18167148172685940536

`A085128(n+1)-A085126(n+1)`
-/

namespace A085125.P18167148172685940536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1) - A085126 (n + 1)

end

end A085125.P18167148172685940536

/-! ## A085125.P4013292242539158342

`A085129(n+1)-A085127(n+1)`
-/

namespace A085125.P4013292242539158342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1) - A085127 (n + 1)

end

end A085125.P4013292242539158342

/-! ## A085125.P18217703400957373508

`A085131(n+1)-A085129(n+1)`
-/

namespace A085125.P18217703400957373508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085131 (n + 1) - A085129 (n + 1)

end

end A085125.P18217703400957373508

/-! ## A085125.P9466017258430976116

`A085131(n+1)%A085126(n+1)`
-/

namespace A085125.P9466017258430976116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085131 (n + 1)) (A085126 (n + 1))

end

end A085125.P9466017258430976116

/-! ## A085125.P3304250838252269293

`A147571(n+1)%A085127(n+1)`
-/

namespace A085125.P3304250838252269293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147571 (n + 1)) (A085127 (n + 1))

end

end A085125.P3304250838252269293

/-! ## A085125.P15099896464071219166

`gcd(A085131(n+1), A147571(n+1))`
-/

namespace A085125.P15099896464071219166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085131 (n + 1)) (A147571 (n + 1))

end

end A085125.P15099896464071219166

/-! ## A085125.P12305428919580687223

`2*(A080194(n+1)-A085129(n+1))`
-/

namespace A085125.P12305428919580687223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A080194 (n + 1) - A085129 (n + 1))

end

end A085125.P12305428919580687223

/-! ## A085125.P702081101466121409

`2*(A085131(n+1)-A080194(n+1))`
-/

namespace A085125.P702081101466121409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A085131 (n + 1) - A080194 (n + 1))

end

end A085125.P702081101466121409

/-! ## A085125.P16582042216624208404

`2*A085126(n+1)-A085127(n+1)`
-/

namespace A085125.P16582042216624208404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085126 (n + 1) - A085127 (n + 1)

end

end A085125.P16582042216624208404

/-! ## A085125.P5043929009849050411

`record[gcd(2*n, ∏[dr(n+2)])]`
-/

namespace A085125.P5043929009849050411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 2 : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085125.P5043929009849050411

/-!
# A085126: Multiples of 3 which are members of A002473. Or multiples of 3 with the largest prime divisor < 10.

The programs for A085126, there is no canonical definition to state claims against.
-/

/-! ## A085126.P10039282152446096045

`3*A002473(n+1)`
-/

namespace A085126.P10039282152446096045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002473 (n + 1)

end

end A085126.P10039282152446096045

/-! ## A085126.P6292564367810920561

`A085129(n+1)/2`
-/

namespace A085126.P6292564367810920561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085129 (n + 1) : ℚ) / 2

end

end A085126.P6292564367810920561

/-! ## A085126.P17986499236927610298

`A085132(n+1)/3`
-/

namespace A085126.P17986499236927610298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085132 (n + 1) : ℚ) / 3

end

end A085126.P17986499236927610298

/-! ## A085126.P13170115556095202870

`3*sqrt(A352618(1+n))`
-/

namespace A085126.P13170115556095202870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A352618 (1 + n) : ℝ)

end

end A085126.P13170115556095202870

/-! ## A085126.P5957771348641372643

`3*A085125(1+n)/2`
-/

namespace A085126.P5957771348641372643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A085125 (1 + n) : ℚ) / 2)

end

end A085126.P5957771348641372643

/-! ## A085126.P17016672540145812192

`3/4*A085127(n+1)`
-/

namespace A085126.P17016672540145812192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A085127 (n + 1) : ℚ)

end

end A085126.P17016672540145812192

/-! ## A085126.P12303327933916744422

`3/5*A085128(n+1)`
-/

namespace A085126.P12303327933916744422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A085128 (n + 1) : ℚ)

end

end A085126.P12303327933916744422

/-! ## A085126.P17014735542346651319

`3*A080194(n+1)/7`
-/

namespace A085126.P17014735542346651319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A080194 (n + 1) : ℚ) / 7)

end

end A085126.P17014735542346651319

/-! ## A085126.P6444134347391733329

`A085125(n+1)+A002473(n+1)`
-/

namespace A085126.P6444134347391733329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1) + A002473 (n + 1)

end

end A085126.P6444134347391733329

/-! ## A085126.P15134032879131323345

`A085127(n+1)-A002473(n+1)`
-/

namespace A085126.P15134032879131323345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085127 (n + 1) - A002473 (n + 1)

end

end A085126.P15134032879131323345

/-! ## A085126.P13021496537782298144

`A080194(n+1)-A085127(n+1)`
-/

namespace A085126.P13021496537782298144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1) - A085127 (n + 1)

end

end A085126.P13021496537782298144

/-! ## A085126.P419967232052584785

`A085128(n+1)-A085125(n+1)`
-/

namespace A085126.P419967232052584785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1) - A085125 (n + 1)

end

end A085126.P419967232052584785

/-! ## A085126.P9069443655339489708

`A085131(n+1)-A085128(n+1)`
-/

namespace A085126.P9069443655339489708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085131 (n + 1) - A085128 (n + 1)

end

end A085126.P9069443655339489708

/-! ## A085126.P16757759373402515825

`A085132(n+1)-A085129(n+1)`
-/

namespace A085126.P16757759373402515825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085132 (n + 1) - A085129 (n + 1)

end

end A085126.P16757759373402515825

/-! ## A085126.P11586858680660736184

`A147571(n+1)%A085132(n+1)`
-/

namespace A085126.P11586858680660736184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147571 (n + 1)) (A085132 (n + 1))

end

end A085126.P11586858680660736184

/-! ## A085126.P775725154661958807

`(A085128(n+1)+A002473(n+1))/2`
-/

namespace A085126.P775725154661958807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085128 (n + 1) + A002473 (n + 1) : ℚ) / 2

end

end A085126.P775725154661958807

/-! ## A085126.P9937618737598022304

`A080194(n+1)-2*A085125(n+1)`
-/

namespace A085126.P9937618737598022304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1) - 2 * A085125 (n + 1)

end

end A085126.P9937618737598022304

/-! ## A085126.P16297862952626740388

`2*A085128(n+1)-A080194(n+1)`
-/

namespace A085126.P16297862952626740388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085128 (n + 1) - A080194 (n + 1)

end

end A085126.P16297862952626740388

/-! ## A085126.P11164077807987260098

`(A085127(n+1)+A085125(n+1))/2`
-/

namespace A085126.P11164077807987260098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) + A085125 (n + 1) : ℚ) / 2

end

end A085126.P11164077807987260098

/-! ## A085126.P15621558665064089732

`2*A085127(n+1)-A085128(n+1)`
-/

namespace A085126.P15621558665064089732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085127 (n + 1) - A085128 (n + 1)

end

end A085126.P15621558665064089732

/-! ## A085126.P7651203606177085677

`lt[ϕ², ∏{p}[2*n, 5/#]]`
-/

namespace A085126.P7651203606177085677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 5 / (p : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A085126.P7651203606177085677

/-!
# A085127: Multiples of 4 which are members of A002473. Or multiples of 4 with the largest prime divisor < 10.

The programs for A085127, there is no canonical definition to state claims against.
-/

/-! ## A085127.P13181485799570246174

`4*A002473(n+1)`
-/

namespace A085127.P13181485799570246174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002473 (n + 1)

end

end A085127.P13181485799570246174

/-! ## A085127.P306322507399617421

`2*A085125(n+1)`
-/

namespace A085127.P306322507399617421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085125 (n + 1)

end

end A085127.P306322507399617421

/-! ## A085127.P14070414314488166169

`A085131(n+1)/2`
-/

namespace A085127.P14070414314488166169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085131 (n + 1) : ℚ) / 2

end

end A085127.P14070414314488166169

/-! ## A085127.P4189077496566159419

`4*sqrt(A352618(1+n))`
-/

namespace A085127.P4189077496566159419
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A352618 (1 + n) : ℝ)

end

end A085127.P4189077496566159419

/-! ## A085127.P14016190923101087255

`2/3*A085129(n+1)`
-/

namespace A085127.P14016190923101087255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A085129 (n + 1) : ℚ)

end

end A085127.P14016190923101087255

/-! ## A085127.P364134524363830780

`4/3*A085126(n+1)`
-/

namespace A085127.P364134524363830780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A085126 (n + 1) : ℚ)

end

end A085127.P364134524363830780

/-! ## A085127.P3818560352664533079

`4/5*A085128(n+1)`
-/

namespace A085127.P3818560352664533079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A085128 (n + 1) : ℚ)

end

end A085127.P3818560352664533079

/-! ## A085127.P10390288522222440023

`A085126(n+1)+A002473(n+1)`
-/

namespace A085127.P10390288522222440023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1) + A002473 (n + 1)

end

end A085127.P10390288522222440023

/-! ## A085127.P11495455785629991991

`A085128(n+1)-A002473(n+1)`
-/

namespace A085127.P11495455785629991991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1) - A002473 (n + 1)

end

end A085127.P11495455785629991991

/-! ## A085127.P9730411911962082531

`A080194(n+1)-A085126(n+1)`
-/

namespace A085127.P9730411911962082531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1) - A085126 (n + 1)

end

end A085127.P9730411911962082531

/-! ## A085127.P13992521675432478830

`A085129(n+1)-A085125(n+1)`
-/

namespace A085127.P13992521675432478830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1) - A085125 (n + 1)

end

end A085127.P13992521675432478830

/-! ## A085127.P806016599453918061

`A085132(n+1)-A085128(n+1)`
-/

namespace A085127.P806016599453918061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085132 (n + 1) - A085128 (n + 1)

end

end A085127.P806016599453918061

/-! ## A085127.P2442651788745592515

`A085125(n+1)²/A002473(n+1)`
-/

namespace A085127.P2442651788745592515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085125 (n + 1) ^ 2 : ℚ) / (A002473 (n + 1) : ℚ)

end

end A085127.P2442651788745592515

/-! ## A085127.P4197489822370045551

`A085129(n+1)²/A085132(n+1)`
-/

namespace A085127.P4197489822370045551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085129 (n + 1) ^ 2 : ℚ) / (A085132 (n + 1) : ℚ)

end

end A085127.P4197489822370045551

/-! ## A085127.P7312303320519630728

`(A080194(n+1)+A002473(n+1))/2`
-/

namespace A085127.P7312303320519630728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080194 (n + 1) + A002473 (n + 1) : ℚ) / 2

end

end A085127.P7312303320519630728

/-! ## A085127.P15312519063661767261

`A002473(n+1)+A085129(n+1)/2`
-/

namespace A085127.P15312519063661767261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) + (A085129 (n + 1) : ℚ) / 2

end

end A085127.P15312519063661767261

/-! ## A085127.P6954936618324978573

`2*(A080194(n+1)-A085128(n+1))`
-/

namespace A085127.P6954936618324978573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A080194 (n + 1) - A085128 (n + 1))

end

end A085127.P6954936618324978573

/-! ## A085127.P5952522618682536125

`2*(A085132(n+1)-A080194(n+1))`
-/

namespace A085127.P5952522618682536125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A085132 (n + 1) - A080194 (n + 1))

end

end A085127.P5952522618682536125

/-! ## A085127.P17557117276541599931

`2*(A085128(n+1)-A085126(n+1))`
-/

namespace A085127.P17557117276541599931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A085128 (n + 1) - A085126 (n + 1))

end

end A085127.P17557117276541599931

/-! ## A085127.P3461036870946775500

`2*A085128(n+1)-A085129(n+1)`
-/

namespace A085127.P3461036870946775500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085128 (n + 1) - A085129 (n + 1)

end

end A085127.P3461036870946775500

/-!
# A085128: Multiples of 5 which are members of A002473. Or multiples of 5 with the largest prime divisor <= 7.

The programs for A085128, there is no canonical definition to state claims against.
-/

/-! ## A085128.P9023059243513351205

`5*A002473(n+1)`
-/

namespace A085128.P9023059243513351205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002473 (n + 1)

end

end A085128.P9023059243513351205

/-! ## A085128.P12124583578917015276

`5*sqrt(A352618(1+n))`
-/

namespace A085128.P12124583578917015276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  5 * Real.sqrt (A352618 (1 + n) : ℝ)

end

end A085128.P12124583578917015276

/-! ## A085128.P6268785537018540860

`5*A085125(1+n)/2`
-/

namespace A085128.P6268785537018540860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A085125 (1 + n) : ℚ) / 2)

end

end A085128.P6268785537018540860

/-! ## A085128.P12989137682137202882

`5*A085126(1+n)/3`
-/

namespace A085128.P12989137682137202882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A085126 (1 + n) : ℚ) / 3)

end

end A085128.P12989137682137202882

/-! ## A085128.P5942465708126818703

`5*A085127(1+n)/4`
-/

namespace A085128.P5942465708126818703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A085127 (1 + n) : ℚ) / 4)

end

end A085128.P5942465708126818703

/-! ## A085128.P6101998931114401140

`5*A080194(n+1)/7`
-/

namespace A085128.P6101998931114401140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((A080194 (n + 1) : ℚ) / 7)

end

end A085128.P6101998931114401140

/-! ## A085128.P8797598417592186309

`A085127(n+1)+A002473(n+1)`
-/

namespace A085128.P8797598417592186309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085127 (n + 1) + A002473 (n + 1)

end

end A085128.P8797598417592186309

/-! ## A085128.P5196337415319330196

`A085126(n+1)+A085125(n+1)`
-/

namespace A085128.P5196337415319330196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1) + A085125 (n + 1)

end

end A085128.P5196337415319330196

/-! ## A085128.P4379721180765187844

`A085129(n+1)-A002473(n+1)`
-/

namespace A085128.P4379721180765187844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1) - A002473 (n + 1)

end

end A085128.P4379721180765187844

/-! ## A085128.P3948498784024351139

`A080194(n+1)-A085125(n+1)`
-/

namespace A085128.P3948498784024351139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1) - A085125 (n + 1)

end

end A085128.P3948498784024351139

/-! ## A085128.P6890706605898769312

`A085131(n+1)-A085126(n+1)`
-/

namespace A085128.P6890706605898769312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085131 (n + 1) - A085126 (n + 1)

end

end A085128.P6890706605898769312

/-! ## A085128.P18113954543048196267

`A085132(n+1)-A085127(n+1)`
-/

namespace A085128.P18113954543048196267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085132 (n + 1) - A085127 (n + 1)

end

end A085128.P18113954543048196267

/-! ## A085128.P13165459208042443714

`A002473(n+1)+A085131(n+1)/2`
-/

namespace A085128.P13165459208042443714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002473 (n + 1) : ℚ) + (A085131 (n + 1) : ℚ) / 2

end

end A085128.P13165459208042443714

/-! ## A085128.P13845944034498096458

`(A085132(n+1)+A002473(n+1))/2`
-/

namespace A085128.P13845944034498096458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085132 (n + 1) + A002473 (n + 1) : ℚ) / 2

end

end A085128.P13845944034498096458

/-! ## A085128.P14717222625225246588

`(A085126(n+1)+A080194(n+1))/2`
-/

namespace A085128.P14717222625225246588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085126 (n + 1) + A080194 (n + 1) : ℚ) / 2

end

end A085128.P14717222625225246588

/-! ## A085128.P1178034972062733921

`2*A085129(n+1)-A080194(n+1)`
-/

namespace A085128.P1178034972062733921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085129 (n + 1) - A080194 (n + 1)

end

end A085128.P1178034972062733921

/-! ## A085128.P14157181948132416297

`2*A080194(n+1)-A085132(n+1)`
-/

namespace A085128.P14157181948132416297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080194 (n + 1) - A085132 (n + 1)

end

end A085128.P14157181948132416297

/-! ## A085128.P15678566416364628382

`A085127(n+1)+A085125(n+1)/2`
-/

namespace A085128.P15678566416364628382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) : ℚ) + (A085125 (n + 1) : ℚ) / 2

end

end A085128.P15678566416364628382

/-! ## A085128.P14029043265149741787

`2*A085127(n+1)-A085126(n+1)`
-/

namespace A085128.P14029043265149741787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085127 (n + 1) - A085126 (n + 1)

end

end A085128.P14029043265149741787

/-! ## A085128.P11328342186420521449

`A085125(n+1)+A085129(n+1)/2`
-/

namespace A085128.P11328342186420521449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085125 (n + 1) : ℚ) + (A085129 (n + 1) : ℚ) / 2

end

end A085128.P11328342186420521449

/-!
# A085129: Multiples of 6 which are 7-smooth.

The programs for A085129, there is no canonical definition to state claims against.
-/

/-! ## A085129.P9573269806690278755

`6*A002473(n+1)`
-/

namespace A085129.P9573269806690278755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002473 (n + 1)

end

end A085129.P9573269806690278755

/-! ## A085129.P17985011797139817129

`2*A085126(1+n)`
-/

namespace A085129.P17985011797139817129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085126 (1 + n)

end

end A085129.P17985011797139817129

/-! ## A085129.P1971747783198387786

`3*A085125(n+1)`
-/

namespace A085129.P1971747783198387786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A085125 (n + 1)

end

end A085129.P1971747783198387786

/-! ## A085129.P7289076271574931283

`6*sqrt(A352618(n+1))`
-/

namespace A085129.P7289076271574931283
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  6 * Real.sqrt (A352618 (n + 1) : ℝ)

end

end A085129.P7289076271574931283

/-! ## A085129.P8755873271687272117

`3/2*A085127(n+1)`
-/

namespace A085129.P8755873271687272117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A085127 (n + 1) : ℚ)

end

end A085129.P8755873271687272117

/-! ## A085129.P16729014705149671060

`2/3*A085132(n+1)`
-/

namespace A085129.P16729014705149671060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A085132 (n + 1) : ℚ)

end

end A085129.P16729014705149671060

/-! ## A085129.P8180311752757692074

`3/4*A085131(n+1)`
-/

namespace A085129.P8180311752757692074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A085131 (n + 1) : ℚ)

end

end A085129.P8180311752757692074

/-! ## A085129.P7920420322561032531

`A085128(n+1)+A002473(n+1)`
-/

namespace A085129.P7920420322561032531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1) + A002473 (n + 1)

end

end A085129.P7920420322561032531

/-! ## A085129.P13922956377563721836

`A085127(n+1)+A085125(n+1)`
-/

namespace A085129.P13922956377563721836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085127 (n + 1) + A085125 (n + 1)

end

end A085129.P13922956377563721836

/-! ## A085129.P12733118715988464831

`A080194(n+1)-A002473(n+1)`
-/

namespace A085129.P12733118715988464831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1) - A002473 (n + 1)

end

end A085129.P12733118715988464831

/-! ## A085129.P5418595900865049711

`A085131(n+1)-A085125(n+1)`
-/

namespace A085129.P5418595900865049711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085131 (n + 1) - A085125 (n + 1)

end

end A085129.P5418595900865049711

/-! ## A085129.P14100498383148707338

`A085132(n+1)-A085126(n+1)`
-/

namespace A085129.P14100498383148707338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085132 (n + 1) - A085126 (n + 1)

end

end A085129.P14100498383148707338

/-! ## A085129.P15143645686455653189

`lcm(A085125(n+1), A085126(n+1))`
-/

namespace A085129.P15143645686455653189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A085125 (n + 1)) (A085126 (n + 1))

end

end A085129.P15143645686455653189

/-! ## A085129.P2129531332255355095

`2*(A080194(n+1)-A085127(n+1))`
-/

namespace A085129.P2129531332255355095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A080194 (n + 1) - A085127 (n + 1))

end

end A085129.P2129531332255355095

/-! ## A085129.P6026417958647787006

`(A085128(n+1)+A080194(n+1))/2`
-/

namespace A085129.P6026417958647787006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085128 (n + 1) + A080194 (n + 1) : ℚ) / 2

end

end A085129.P6026417958647787006

/-! ## A085129.P4593508958519191388

`2*A080194(n+1)-A085131(n+1)`
-/

namespace A085129.P4593508958519191388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080194 (n + 1) - A085131 (n + 1)

end

end A085129.P4593508958519191388

/-! ## A085129.P7332146700200871710

`2*A085128(n+1)-A085127(n+1)`
-/

namespace A085129.P7332146700200871710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085128 (n + 1) - A085127 (n + 1)

end

end A085129.P7332146700200871710

/-! ## A085129.P8867890140534188093

`(A085131(n+1)+A085127(n+1))/2`
-/

namespace A085129.P8867890140534188093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085131 (n + 1) + A085127 (n + 1) : ℚ) / 2

end

end A085129.P8867890140534188093

/-! ## A085129.P18339783332235795340

`2*(A085131(n+1)-A085128(n+1))`
-/

namespace A085129.P18339783332235795340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A085131 (n + 1) - A085128 (n + 1))

end

end A085129.P18339783332235795340

/-! ## A085129.P14788036228479942515

`A080194(n+1)-A085125(n+1)/2`
-/

namespace A085129.P14788036228479942515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080194 (n + 1) : ℚ) - (A085125 (n + 1) : ℚ) / 2

end

end A085129.P14788036228479942515

/-!
# A085131: Multiples of 8 which are 7-smooth.

The programs for A085131, there is no canonical definition to state claims against.
-/

/-! ## A085131.P8373145801131373824

`8*A002473(n+1)`
-/

namespace A085131.P8373145801131373824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002473 (n + 1)

end

end A085131.P8373145801131373824

/-! ## A085131.P9859446001194994884

`2*A085127(n+1)`
-/

namespace A085131.P9859446001194994884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085127 (n + 1)

end

end A085131.P9859446001194994884

/-! ## A085131.P8539965908516110442

`4*A085125(n+1)`
-/

namespace A085131.P8539965908516110442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085125 (n + 1)

end

end A085131.P8539965908516110442

/-! ## A085131.P4823694128348729866

`8*sqrt(A352618(n+1))`
-/

namespace A085131.P4823694128348729866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  8 * Real.sqrt (A352618 (n + 1) : ℝ)

end

end A085131.P4823694128348729866

/-! ## A085131.P9021977062828666930

`4/3*A085129(n+1)`
-/

namespace A085131.P9021977062828666930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A085129 (n + 1) : ℚ)

end

end A085131.P9021977062828666930

/-! ## A085131.P13375379710940261139

`8*A085128(n+1)/5`
-/

namespace A085131.P13375379710940261139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A085128 (n + 1) : ℚ) / 5)

end

end A085131.P13375379710940261139

/-! ## A085131.P1600724618121599761

`A080194(n+1)+A002473(n+1)`
-/

namespace A085131.P1600724618121599761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1) + A002473 (n + 1)

end

end A085131.P1600724618121599761

/-! ## A085131.P6818268485681819762

`A085128(n+1)+A085126(n+1)`
-/

namespace A085131.P6818268485681819762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1) + A085126 (n + 1)

end

end A085131.P6818268485681819762

/-! ## A085131.P8877223801390293706

`A085129(n+1)+A085125(n+1)`
-/

namespace A085131.P8877223801390293706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1) + A085125 (n + 1)

end

end A085131.P8877223801390293706

/-! ## A085131.P349979717141984538

`A085132(n+1)-A002473(n+1)`
-/

namespace A085131.P349979717141984538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085132 (n + 1) - A002473 (n + 1)

end

end A085131.P349979717141984538

/-! ## A085131.P8458492207441325562

`A085127(n+1)²/A085125(n+1)`
-/

namespace A085131.P8458492207441325562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) ^ 2 : ℚ) / (A085125 (n + 1) : ℚ)

end

end A085131.P8458492207441325562

/-! ## A085131.P2848601642682256278

`A080194(n+1)+A085125(n+1)/2`
-/

namespace A085131.P2848601642682256278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080194 (n + 1) : ℚ) + (A085125 (n + 1) : ℚ) / 2

end

end A085131.P2848601642682256278

/-! ## A085131.P17805484051939042367

`2*(A080194(n+1)-A085126(n+1))`
-/

namespace A085131.P17805484051939042367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A080194 (n + 1) - A085126 (n + 1))

end

end A085131.P17805484051939042367

/-! ## A085131.P18325792222139430664

`2*A080194(n+1)-A085129(n+1)`
-/

namespace A085131.P18325792222139430664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080194 (n + 1) - A085129 (n + 1)

end

end A085131.P18325792222139430664

/-! ## A085131.P2314653593130305274

`(A085132(n+1)+A080194(n+1))/2`
-/

namespace A085131.P2314653593130305274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085132 (n + 1) + A080194 (n + 1) : ℚ) / 2

end

end A085131.P2314653593130305274

/-! ## A085131.P13283963917965488454

`A085128(n+1)+A085129(n+1)/2`
-/

namespace A085131.P13283963917965488454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085128 (n + 1) : ℚ) + (A085129 (n + 1) : ℚ) / 2

end

end A085131.P13283963917965488454

/-! ## A085131.P13938951580377388351

`2*(A085132(n+1)-A085128(n+1))`
-/

namespace A085131.P13938951580377388351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A085132 (n + 1) - A085128 (n + 1))

end

end A085131.P13938951580377388351

/-! ## A085131.P2130772036227998328

`A085132(n+1)-A085125(n+1)/2`
-/

namespace A085131.P2130772036227998328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085132 (n + 1) : ℚ) - (A085125 (n + 1) : ℚ) / 2

end

end A085131.P2130772036227998328

/-! ## A085131.P18138045961316996805

`A002473(n+1)+A085129(n+1)+A002473(n+1)`
-/

namespace A085131.P18138045961316996805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) + (A085129 (n + 1) + A002473 (n + 1))

end

end A085131.P18138045961316996805

/-! ## A085131.P11907638628754286308

`A085126(n+1)+A085126(n+1)+A085125(n+1)`
-/

namespace A085131.P11907638628754286308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1) + (A085126 (n + 1) + A085125 (n + 1))

end

end A085131.P11907638628754286308

/-!
# A085132: Multiples of 9 which are 7-smooth.

The programs for A085132, there is no canonical definition to state claims against.
-/

/-! ## A085132.P7769567091651724186

`9*A002473(n+1)`
-/

namespace A085132.P7769567091651724186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A002473 (n + 1)

end

end A085132.P7769567091651724186

/-! ## A085132.P3075775357830758627

`3*A085126(n+1)`
-/

namespace A085132.P3075775357830758627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A085126 (n + 1)

end

end A085132.P3075775357830758627

/-! ## A085132.P2088627715831470060

`9*sqrt(A352618(n+1))`
-/

namespace A085132.P2088627715831470060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  9 * Real.sqrt (A352618 (n + 1) : ℝ)

end

end A085132.P2088627715831470060

/-! ## A085132.P3358812412554586811

`3/2*A085129(n+1)`
-/

namespace A085132.P3358812412554586811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A085129 (n + 1) : ℚ)

end

end A085132.P3358812412554586811

/-! ## A085132.P14183551957464922432

`9*A085125(1+n)/2`
-/

namespace A085132.P14183551957464922432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((A085125 (1 + n) : ℚ) / 2)

end

end A085132.P14183551957464922432

/-! ## A085132.P4562345669584236934

`9*A085127(n+1)/4`
-/

namespace A085132.P4562345669584236934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((A085127 (n + 1) : ℚ) / 4)

end

end A085132.P4562345669584236934

/-! ## A085132.P17169627320401886211

`A085131(n+1)+A002473(n+1)`
-/

namespace A085132.P17169627320401886211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085131 (n + 1) + A002473 (n + 1)

end

end A085132.P17169627320401886211

/-! ## A085132.P14529024207051339060

`A085125(n+1)+A080194(n+1)`
-/

namespace A085132.P14529024207051339060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1) + A080194 (n + 1)

end

end A085132.P14529024207051339060

/-! ## A085132.P12609141314303752003

`A085128(n+1)+A085127(n+1)`
-/

namespace A085132.P12609141314303752003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1) + A085127 (n + 1)

end

end A085132.P12609141314303752003

/-! ## A085132.P16133276921000609359

`A085129(n+1)+A085126(n+1)`
-/

namespace A085132.P16133276921000609359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1) + A085126 (n + 1)

end

end A085132.P16133276921000609359

/-! ## A085132.P15802618056819312738

`A085131(n+1)+sqrt(A352618(n+1))`
-/

namespace A085132.P15802618056819312738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A085131 (n + 1) : ℝ) + Real.sqrt (A352618 (n + 1) : ℝ)

end

end A085132.P15802618056819312738

/-! ## A085132.P17897060189692814995

`A085126(n+1)²/A002473(n+1)`
-/

namespace A085132.P17897060189692814995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085126 (n + 1) ^ 2 : ℚ) / (A002473 (n + 1) : ℚ)

end

end A085132.P17897060189692814995

/-! ## A085132.P14931870266883652318

`A085129(n+1)²/A085127(n+1)`
-/

namespace A085132.P14931870266883652318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085129 (n + 1) ^ 2 : ℚ) / (A085127 (n + 1) : ℚ)

end

end A085132.P14931870266883652318

/-! ## A085132.P15557183742686877751

`A085128(n+1)+2*A085125(n+1)`
-/

namespace A085132.P15557183742686877751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1) + 2 * A085125 (n + 1)

end

end A085132.P15557183742686877751

/-! ## A085132.P10724713295383759236

`A080194(n+1)+A085127(n+1)/2`
-/

namespace A085132.P10724713295383759236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080194 (n + 1) : ℚ) + (A085127 (n + 1) : ℚ) / 2

end

end A085132.P10724713295383759236

/-! ## A085132.P4686451168590151161

`2*A080194(n+1)-A085128(n+1)`
-/

namespace A085132.P4686451168590151161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080194 (n + 1) - A085128 (n + 1)

end

end A085132.P4686451168590151161

/-! ## A085132.P11269897250665156097

`2*A085131(n+1)-A080194(n+1)`
-/

namespace A085132.P11269897250665156097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085131 (n + 1) - A080194 (n + 1)

end

end A085132.P11269897250665156097

/-! ## A085132.P9195636470096499631

`A085131(n+1)+A085125(n+1)/2`
-/

namespace A085132.P9195636470096499631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085131 (n + 1) : ℚ) + (A085125 (n + 1) : ℚ) / 2

end

end A085132.P9195636470096499631

/-! ## A085132.P10962985526831524148

`A085128(n+1)+A085131(n+1)/2`
-/

namespace A085132.P10962985526831524148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085128 (n + 1) : ℚ) + (A085131 (n + 1) : ℚ) / 2

end

end A085132.P10962985526831524148

/-! ## A085132.P69051949660481007

`A002473(n+1)+A080194(n+1)+A002473(n+1)`
-/

namespace A085132.P69051949660481007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) + (A080194 (n + 1) + A002473 (n + 1))

end

end A085132.P69051949660481007

/-!
# A085133: Numbers k such that k and its digit reversal are both 7-smooth (A002473).

The programs for A085133, there is no canonical definition to state claims against.
-/

/-! ## A085133.P16926006666561580249

`A225782(∑[A000322(A034535(n+1))])`
-/

namespace A085133.P16926006666561580249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 (A034535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085133.P16926006666561580249

/-! ## A085133.P766360385750321338

`A264668(eq[1, A110030(n+1)]+1)+A005349(n+1)`
-/

namespace A085133.P766360385750321338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + A005349 (n + 1)

end

end A085133.P766360385750321338

/-! ## A085133.P6615254109750285871

`A264668(eq[1, A110030(n+1)]+1)+A234474(n+1)`
-/

namespace A085133.P6615254109750285871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + A234474 (n + 1)

end

end A085133.P6615254109750285871

/-! ## A085133.P14050578586346085156

`A285829(n+1)+A264668(eq[1, A110030(n+1)]+1)`
-/

namespace A085133.P14050578586346085156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1) + A264668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A085133.P14050578586346085156

/-!
# A085134: Palindromes in A002473, that is, palindromes with the largest prime divisor < 10.

The programs for A085134, there is no canonical definition to state claims against.
-/

/-! ## A085134.P14193973067334376092

`∩[A002113(n+1), A002473(n+1)]`
-/

namespace A085134.P14193973067334376092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085134.P14193973067334376092

/-! ## A085134.P2750123074386682950

`∩[A002473(n+1), A050783(n+1)]`
-/

namespace A085134.P2750123074386682950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085134.P2750123074386682950

/-! ## A085134.P4456673810943204539

`∩[A002473(n+1), A056525(n+1)]`
-/

namespace A085134.P4456673810943204539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085134.P4456673810943204539

/-! ## A085134.P1499931531393804641

`∩[A002473(n+1), A083851(n+1)]`
-/

namespace A085134.P1499931531393804641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085134.P1499931531393804641

/-! ## A085134.P11071191932148305752

`∩[A002113(n+1), A085133(n+1)]`
-/

namespace A085134.P11071191932148305752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085134.P11071191932148305752

/-!
# A085137: Binary expansion of largest Stoneham number S(3,2).

The programs for A085137, there is no canonical definition to state claims against.
-/

/-! ## A085137.P13458626759011616092

`A003849(lcm(A038575(n), A124575(n)))`
-/

namespace A085137.P13458626759011616092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (Int.lcm (A038575 n) (A124575 n))

end

end A085137.P13458626759011616092

/-! ## A085137.P17688067135374820349

`A225793(A008619((n+1)*∑[n]))%2`
-/

namespace A085137.P17688067135374820349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225793 (A008619 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat) 2

end

end A085137.P17688067135374820349

/-! ## A085137.P8223822488877485944

`A107279(∑[A309515(n)]+1)`
-/

namespace A085137.P8223822488877485944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A085137.P8223822488877485944

/-! ## A085137.P4522057062503534641

`and(A249336(A259448(2*(n+2))), A276799(n+1))`
-/

namespace A085137.P4522057062503534641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249336 (A259448 (2 * (n + 2))).toNat) (A276799 (n + 1))

end

end A085137.P4522057062503534641

/-!
# A085139: a(n) = Sum_{i=0..n-1} (1 + (-1)^(n-1-i))/2 * Sum_{j=0..i} a(j)*a(i-j) for n > 0, with a(0) = 1.

The programs for A085139, the canonical program `A085139.P10097873364966234401` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085139 has offset 0).

The definition of A085139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085139.P14593478380441070182

`2*A247172(n)*a(floor(acot(n)))` with `a(0)=1, a(1)=1`
-/

namespace A085139.P14593478380441070182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A247172 n * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A085139.P14593478380441070182

namespace A085139

/-- `2*A247172(n)*a(floor(acot(n)))` -/
def P14593478380441070182.Spec : Prop :=
  ∀ n, P14593478380441070182.a n = A085139 n

end A085139

/-! ## A085139.P10097873364966234401

`2*A247172(n*a(and(1, n+1)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A085139

/-- `2*A247172(n*a(and(1, n+1)))` -/
def P10097873364966234401.Spec : Prop :=
  ∀ n, P10097873364966234401.a n = A085139 n

theorem P10097873364966234401.correct : P10097873364966234401.Spec := by
  intro n
  simp only [A085139]

end A085139

/-! ## A085139.P16166275468652495741

`A128750(abs(1-n))+A128750(n)`
-/

namespace A085139.P16166275468652495741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128750 |1 - (n : ℤ)|.toNat + A128750 n

end

end A085139.P16166275468652495741

namespace A085139

/-- `A128750(abs(1-n))+A128750(n)` -/
def P16166275468652495741.Spec : Prop :=
  ∀ n, P16166275468652495741.a n = A085139 n

end A085139

/-! ## A085139.P1667302890389635054

`2*A247172(n)*a(A000038(n))` with `a(0)=1, a(1)=1`
-/

namespace A085139.P1667302890389635054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A247172 n * a (A000038 n).toNat

end

end A085139.P1667302890389635054

namespace A085139

/-- `2*A247172(n)*a(A000038(n))` -/
def P1667302890389635054.Spec : Prop :=
  ∀ n, P1667302890389635054.a n = A085139 n

end A085139

/-! ## A085139.P11573844422762404057

`2*A247172(n)*a(val(A000040(n+1), 2))` with `a(0)=1, a(1)=1`
-/

namespace A085139.P11573844422762404057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A247172 n * a (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2)

end

end A085139.P11573844422762404057

namespace A085139

/-- `2*A247172(n)*a(val(A000040(n+1), 2))` -/
def P11573844422762404057.Spec : Prop :=
  ∀ n, P11573844422762404057.a n = A085139 n

end A085139

/-!
# A085140: Expansion of q^(-1/6) * eta(q^2)^3 / eta(q)^2 in powers of q.

The programs for A085140, there is no canonical definition to state claims against.
-/

/-! ## A085140.P13679380722584693356

`A053254(2*n)`
-/

namespace A085140.P13679380722584693356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053254 (2 * n)

end

end A085140.P13679380722584693356

/-! ## A085140.P17362111835015581947

`A260574(2*n)`
-/

namespace A085140.P17362111835015581947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260574 (2 * n)

end

end A085140.P17362111835015581947

/-! ## A085140.P11890511809311490673

`abs(A260574(A004277(n)))`
-/

namespace A085140.P11890511809311490673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260574 (A004277 n).toNat|

end

end A085140.P11890511809311490673

/-! ## A085140.P9715684571354450749

`abs(A260574(record[A124625(n)]))`
-/

namespace A085140.P9715684571354450749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260574 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A085140.P9715684571354450749

/-! ## A085140.P17796125635022649052

`A376628(2*n+1)+A376628(2*n)`
-/

namespace A085140.P17796125635022649052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376628 (2 * n + 1) + A376628 (2 * n)

end

end A085140.P17796125635022649052

/-! ## A085140.P2251309351404491747

`A067357(2*n)`
-/

namespace A085140.P2251309351404491747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067357 (2 * n)

end

end A085140.P2251309351404491747

/-! ## A085140.P4271522565655364487

`xor(1, xor(1, A067357(n+n)))`
-/

namespace A085140.P4271522565655364487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A067357 (n + n)))

end

end A085140.P4271522565655364487

/-! ## A085140.P6555633242542587741

`abs(A053254(A005843(n)))`
-/

namespace A085140.P6555633242542587741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053254 (A005843 n).toNat|

end

end A085140.P6555633242542587741

/-! ## A085140.P1055221642628494006

`A053254(A005843(n))%A214309(n+4)`
-/

namespace A085140.P1055221642628494006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053254 (A005843 n).toNat) (A214309 (n + 4))

end

end A085140.P1055221642628494006

/-!
# A085141: Greatest nonnegative integer k such that k(3k+1)/2 <= n.

The programs for A085141, the canonical program `A085141.P2552504133626541575` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085141 has offset 0).

The definition of A085141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085141.P2552504133626541575

`floor((sqrt(24*n+1)-1)/6)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085141

/-- `floor((sqrt(24*n+1)-1)/6)` -/
def P2552504133626541575.Spec : Prop :=
  ∀ n, P2552504133626541575.a n = A085141 n

theorem P2552504133626541575.correct : P2552504133626541575.Spec := by
  intro n
  simp only [A085141]

end A085141

/-! ## A085141.P830579313956175987

`comp[∑[3*n]]%(n+1)`
-/

namespace A085141.P830579313956175987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 1)

end

end A085141.P830579313956175987

namespace A085141

/-- `comp[∑[3*n]]%(n+1)` -/
def P830579313956175987.Spec : Prop :=
  ∀ n, (P830579313956175987.a n : ℤ) = A085141 n

end A085141

/-! ## A085141.P10343504130535588953

`floor(row(3*n+1)/3)`
-/

namespace A085141.P10343504130535588953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triRow (3 * n + 1) : ℚ) / 3⌋

end

end A085141.P10343504130535588953

namespace A085141

/-- `floor(row(3*n+1)/3)` -/
def P10343504130535588953.Spec : Prop :=
  ∀ n, P10343504130535588953.a n = A085141 n

end A085141

/-! ## A085141.P12999218434079481460

`comp[3*C(n, 2)]-(n+1)`
-/

namespace A085141.P12999218434079481460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A085141.P12999218434079481460

namespace A085141

/-- `comp[3*C(n, 2)]-(n+1)` -/
def P12999218434079481460.Spec : Prop :=
  ∀ n, P12999218434079481460.a n = A085141 n

end A085141

/-! ## A085141.P17038863836211253839

`comp[3*C(n, 2)-1]-n`
-/

namespace A085141.P17038863836211253839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A085141.P17038863836211253839

namespace A085141

/-- `comp[3*C(n, 2)-1]-n` -/
def P17038863836211253839.Spec : Prop :=
  ∀ n, P17038863836211253839.a n = A085141 n

end A085141

/-! ## A085141.P10604691010486055575

`∑[char[∑[3+a(n-1)]]]` with `a(0)=2`
-/

namespace A085141.P10604691010486055575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f3 =>
  3 + f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085141.P10604691010486055575

namespace A085141

/-- `∑[char[∑[3+a(n-1)]]]` -/
def P10604691010486055575.Spec : Prop :=
  ∀ n, (P10604691010486055575.a n : ℤ) = A085141 n

end A085141

/-! ## A085141.P15388389078845169979

`comp[∑[3*n-floor(acot(n))]]-n`
-/

namespace A085141.P15388389078845169979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A085141.P15388389078845169979

namespace A085141

/-- `comp[∑[3*n-floor(acot(n))]]-n` -/
def P15388389078845169979.Spec : Prop :=
  ∀ n, P15388389078845169979.a n = A085141 n

end A085141

/-! ## A085141.P15072687345363838977

`∑[char[C(n+1, 2)+n²]]-1`
-/

namespace A085141.P15072687345363838977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A085141.P15072687345363838977

namespace A085141

/-- `∑[char[C(n+1, 2)+n²]]-1` -/
def P15072687345363838977.Spec : Prop :=
  ∀ n, P15072687345363838977.a n = A085141 n

end A085141

/-! ## A085141.P2006500292225528560

`comp[∑[a(n-1)+3]]-(n+1)` with `a(0)=0`
-/

namespace A085141.P2006500292225528560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A085141.P2006500292225528560

namespace A085141

/-- `comp[∑[a(n-1)+3]]-(n+1)` -/
def P2006500292225528560.Spec : Prop :=
  ∀ n, P2006500292225528560.a n = A085141 n

end A085141

/-! ## A085141.P6601235338921320454

`round(A073188(n)/3)`
-/

namespace A085141.P6601235338921320454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A073188 n : ℚ) / 3)

end

end A085141.P6601235338921320454

namespace A085141

/-- `round(A073188(n)/3)` -/
def P6601235338921320454.Spec : Prop :=
  ∀ n, P6601235338921320454.a n = A085141 n

end A085141

/-! ## A085141.P7586763440185857327

`∑[char[A005449(n+1)]]`
-/

namespace A085141.P7586763440185857327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085141.P7586763440185857327

namespace A085141

/-- `∑[char[A005449(n+1)]]` -/
def P7586763440185857327.Spec : Prop :=
  ∀ n, (P7586763440185857327.a n : ℤ) = A085141 n

end A085141

/-! ## A085141.P3792109462691622036

`∑[char[A005449(n)]]-1`
-/

namespace A085141.P3792109462691622036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A085141.P3792109462691622036

namespace A085141

/-- `∑[char[A005449(n)]]-1` -/
def P3792109462691622036.Spec : Prop :=
  ∀ n, P3792109462691622036.a n = A085141 n

end A085141

/-! ## A085141.P15169205875104742502

`comp[A045943(n)]-(n+1)`
-/

namespace A085141.P15169205875104742502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A085141.P15169205875104742502

namespace A085141

/-- `comp[A045943(n)]-(n+1)` -/
def P15169205875104742502.Spec : Prop :=
  ∀ n, P15169205875104742502.a n = A085141 n

end A085141

/-! ## A085141.P13828281938348429674

`A004526(A235963(n))`
-/

namespace A085141.P13828281938348429674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A235963 n).toNat

end

end A085141.P13828281938348429674

namespace A085141

/-- `A004526(A235963(n))` -/
def P13828281938348429674.Spec : Prop :=
  ∀ n, P13828281938348429674.a n = A085141 n

end A085141

/-! ## A085141.P573255799591088596

`A180447(A180446(n))`
-/

namespace A085141.P573255799591088596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A180446 n).toNat

end

end A085141.P573255799591088596

namespace A085141

/-- `A180447(A180446(n))` -/
def P573255799591088596.Spec : Prop :=
  ∀ n, P573255799591088596.a n = A085141 n

end A085141

/-! ## A085141.P5560170824523725201

`A002264(A073188(n)+1)`
-/

namespace A085141.P5560170824523725201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A073188 n + 1).toNat

end

end A085141.P5560170824523725201

namespace A085141

/-- `A002264(A073188(n)+1)` -/
def P5560170824523725201.Spec : Prop :=
  ∀ n, P5560170824523725201.a n = A085141 n

end A085141

/-! ## A085141.P14320094249575803407

`A180447(n-A180447(n))`
-/

namespace A085141.P14320094249575803407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 ((n : ℤ) - A180447 n).toNat

end

end A085141.P14320094249575803407

namespace A085141

/-- `A180447(n-A180447(n))` -/
def P14320094249575803407.Spec : Prop :=
  ∀ n, P14320094249575803407.a n = A085141 n

end A085141

/-! ## A085141.P13097809136977610237

`A193832(n+1)-A083277(n+1)`
-/

namespace A085141.P13097809136977610237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (n + 1) - A083277 (n + 1)

end

end A085141.P13097809136977610237

namespace A085141

/-- `A193832(n+1)-A083277(n+1)` -/
def P13097809136977610237.Spec : Prop :=
  ∀ n, P13097809136977610237.a n = A085141 n

end A085141

/-! ## A085141.P6877024256372134477

`A111651(A183217(n+1))-1`
-/

namespace A085141.P6877024256372134477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A183217 (n + 1)).toNat - 1

end

end A085141.P6877024256372134477

namespace A085141

/-- `A111651(A183217(n+1))-1` -/
def P6877024256372134477.Spec : Prop :=
  ∀ n, P6877024256372134477.a n = A085141 n

end A085141

/-! ## A085141.P2258208602609020648

`A387644(2*n+1)-(2*n+1)`
-/

namespace A085141.P2258208602609020648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387644 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A085141.P2258208602609020648

namespace A085141

/-- `A387644(2*n+1)-(2*n+1)` -/
def P2258208602609020648.Spec : Prop :=
  ∀ n, P2258208602609020648.a n = A085141 n

end A085141

/-!
# A085144: a(0)=0, a(2n) = a(n)+1, a(2n+1) = -a(n).

The programs for A085144, the canonical program `A085144.P12304076021569329000` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085144 has offset 0).

The definition of A085144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085144.P224162240776520912

`(a(floor(n/2))+log2(gcd(2, n)))*(-1)^n` with `a(0)=0`
-/

namespace A085144.P224162240776520912
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + Real.logb 2 (Nat.gcd 2 n : ℝ)) * ((-1) ^ n : ℝ)

end

end A085144.P224162240776520912

namespace A085144

/-- `(a(floor(n/2))+log2(gcd(2, n)))*(-1)^n` -/
def P224162240776520912.Spec : Prop :=
  ∀ n, P224162240776520912.a n = (A085144 n : ℝ)

end A085144

/-! ## A085144.P11538985009174681919

`((n+1)%2+a(floor(n/2)))*(-1)^n` with `a(0)=0`
-/

namespace A085144.P11538985009174681919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((((n + 1) % 2 : ℕ) : ℤ) + a ⌊(n : ℚ) / 2⌋.toNat) * (-1) ^ n

end

end A085144.P11538985009174681919

namespace A085144

/-- `((n+1)%2+a(floor(n/2)))*(-1)^n` -/
def P11538985009174681919.Spec : Prop :=
  ∀ n, P11538985009174681919.a n = A085144 n

end A085144

/-! ## A085144.P5927995162595128969

`A004718(n-A006257(n))`
-/

namespace A085144.P5927995162595128969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 ((n : ℤ) - A006257 n).toNat

end

end A085144.P5927995162595128969

namespace A085144

/-- `A004718(n-A006257(n))` -/
def P5927995162595128969.Spec : Prop :=
  ∀ n, P5927995162595128969.a n = A085144 n

end A085144

/-! ## A085144.P11790712507072698827

`A004718(floor(A261693(n)/2))`
-/

namespace A085144.P11790712507072698827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 ⌊(A261693 n : ℚ) / 2⌋.toNat

end

end A085144.P11790712507072698827

namespace A085144

/-- `A004718(floor(A261693(n)/2))` -/
def P11790712507072698827.Spec : Prop :=
  ∀ n, P11790712507072698827.a n = A085144 n

end A085144

/-! ## A085144.P14702435387159107808

`A004718(A062383(n)-(n+1))`
-/

namespace A085144.P14702435387159107808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A062383 n - (n + 1 : ℤ)).toNat

end

end A085144.P14702435387159107808

namespace A085144

/-- `A004718(A062383(n)-(n+1))` -/
def P14702435387159107808.Spec : Prop :=
  ∀ n, P14702435387159107808.a n = A085144 n

end A085144

/-! ## A085144.P2072294360797069173

`A004718(A062383(n)-1-n)`
-/

namespace A085144.P2072294360797069173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A062383 n - 1 - (n : ℤ)).toNat

end

end A085144.P2072294360797069173

namespace A085144

/-- `A004718(A062383(n)-1-n)` -/
def P2072294360797069173.Spec : Prop :=
  ∀ n, P2072294360797069173.a n = A085144 n

end A085144

/-! ## A085144.P8760647833780139886

`A004718(A062383(n)%(n+1))`
-/

namespace A085144.P8760647833780139886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (Int.tmod (A062383 n) (n + 1 : ℤ)).toNat

end

end A085144.P8760647833780139886

namespace A085144

/-- `A004718(A062383(n)%(n+1))` -/
def P8760647833780139886.Spec : Prop :=
  ∀ n, P8760647833780139886.a n = A085144 n

end A085144

/-! ## A085144.P12304076021569329000

`(A010060(n)-A124754(n))*A106400(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085144

/-- `(A010060(n)-A124754(n))*A106400(n)` -/
def P12304076021569329000.Spec : Prop :=
  ∀ n, P12304076021569329000.a n = A085144 n

theorem P12304076021569329000.correct : P12304076021569329000.Spec := by
  intro n
  simp only [A085144]

end A085144

/-! ## A085144.P10643602135904901906

`A004718(A004760(n+2)-(2*n+1))`
-/

namespace A085144.P10643602135904901906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A004760 (n + 2) - (2 * n + 1 : ℤ)).toNat

end

end A085144.P10643602135904901906

namespace A085144

/-- `A004718(A004760(n+2)-(2*n+1))` -/
def P10643602135904901906.Spec : Prop :=
  ∀ n, P10643602135904901906.a n = A085144 n

end A085144

/-! ## A085144.P14434367496607755981

`A010060(2*n+1)+A106400(2*n+1)*A124754(2*n+1)`
-/

namespace A085144.P14434367496607755981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * n + 1) + A106400 (2 * n + 1) * A124754 (2 * n + 1)

end

end A085144.P14434367496607755981

namespace A085144

/-- `A010060(2*n+1)+A106400(2*n+1)*A124754(2*n+1)` -/
def P14434367496607755981.Spec : Prop :=
  ∀ n, P14434367496607755981.a n = A085144 n

end A085144

/-! ## A085144.P13248080040545897979

`1-A004718(A261693(2*n+1))`
-/

namespace A085144.P13248080040545897979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004718 (A261693 (2 * n + 1)).toNat

end

end A085144.P13248080040545897979

namespace A085144

/-- `1-A004718(A261693(2*n+1))` -/
def P13248080040545897979.Spec : Prop :=
  ∀ n, P13248080040545897979.a n = A085144 n

end A085144

/-!
# A085145: Positions of 0 in A085144.

The programs for A085145, the canonical program `A085145.P15264563296604716477` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085145 has offset 1).

The definition of A085145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085145.P15264563296604716477

`eq[A010060(n), A124754(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A085145

/-- `eq[A010060(n), A124754(n)]` -/
def P15264563296604716477.Spec : Prop :=
  ∀ n, (P15264563296604716477.a n : ℤ) = A085145 (n + 1)

theorem P15264563296604716477.correct : P15264563296604716477.Spec := by
  intro n
  simp only [A085145, Nat.add_sub_cancel]

end A085145

/-! ## A085145.P11655853608733370612

`eq[0, A004718(n-A006257(n))]`
-/

namespace A085145.P11655853608733370612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 ((n : ℤ) - A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085145.P11655853608733370612

namespace A085145

/-- `eq[0, A004718(n-A006257(n))]` -/
def P11655853608733370612.Spec : Prop :=
  ∀ n, (P11655853608733370612.a n : ℤ) = A085145 (n + 1)

end A085145

/-! ## A085145.P5441134190715037011

`eq[A124754(A001316(n)-1), A124754(n)]`
-/

namespace A085145.P5441134190715037011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A001316 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085145.P5441134190715037011

namespace A085145

/-- `eq[A124754(A001316(n)-1), A124754(n)]` -/
def P5441134190715037011.Spec : Prop :=
  ∀ n, (P5441134190715037011.a n : ℤ) = A085145 (n + 1)

end A085145

/-! ## A085145.P2978152756364340050

`eq[0, A085144(n)]`
-/

namespace A085145.P2978152756364340050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085145.P2978152756364340050

namespace A085145

/-- `eq[0, A085144(n)]` -/
def P2978152756364340050.Spec : Prop :=
  ∀ n, (P2978152756364340050.a n : ℤ) = A085145 (n + 1)

end A085145

/-! ## A085145.P14456139961679079569

`record[gcd(A085144(n), A199969(n+1))]`
-/

namespace A085145.P14456139961679079569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085144 n) (A199969 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085145.P14456139961679079569

namespace A085145

/-- `record[gcd(A085144(n), A199969(n+1))]` -/
def P14456139961679079569.Spec : Prop :=
  ∀ n, (P14456139961679079569.a n : ℤ) = A085145 (n + 1)

end A085145

/-! ## A085145.P1534705631576659466

`eq[1, A124754(2*n+1)+A124754(n)]`
-/

namespace A085145.P1534705631576659466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (2 * n + 1) + A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085145.P1534705631576659466

namespace A085145

/-- `eq[1, A124754(2*n+1)+A124754(n)]` -/
def P1534705631576659466.Spec : Prop :=
  ∀ n, (P1534705631576659466.a n : ℤ) = A085145 (n + 1)

end A085145

/-! ## A085145.P16876839598880239647

`lt[1, acot(A085144(2*n+1))]`
-/

namespace A085145.P16876839598880239647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A085144 (2 * n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A085145.P16876839598880239647

namespace A085145

/-- `lt[1, acot(A085144(2*n+1))]` -/
def P16876839598880239647.Spec : Prop :=
  ∀ n, (P16876839598880239647.a n : ℤ) = A085145 (n + 1)

end A085145

/-!
# A085147: Numbers k such that k!!!! - 1 is prime.

The programs for A085147, there is no canonical definition to state claims against.
-/

/-! ## A085147.P6994741236752141204

`A325611(A117347(n+1)-A027434(n+1))`
-/

namespace A085147.P6994741236752141204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325611 (A117347 (n + 1) - A027434 (n + 1)).toNat

end

end A085147.P6994741236752141204

/-!
# A085148: Numbers k such that k!!!!! + 1 is prime.

The programs for A085148, there is no canonical definition to state claims against.
-/

/-! ## A085148.P17646830098463098836

`lt[A354749(n+5), A138342(A247592(n+1))]`
-/

namespace A085148.P17646830098463098836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354749 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (A247592 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085148.P17646830098463098836

/-!
# A085150: Numbers k such that k!!!!!! + 1 is prime.

The programs for A085150, there is no canonical definition to state claims against.
-/

/-! ## A085150.P717350336654542071

`eq[A033630(A341870(n)), A130675(n+1)]`
-/

namespace A085150.P717350336654542071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A341870 (n + 21)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085150.P717350336654542071

/-! ## A085150.P11836713362430955817

`lt[A000040(A166590(n+1)), A073053(n)]`
-/

namespace A085150.P11836713362430955817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A166590 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085150.P11836713362430955817

/-! ## A085150.P15414629032570576205

`eq[A008683(A193179(n+2)), A319992(n+1)]`
-/

namespace A085150.P15414629032570576205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A193179 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085150.P15414629032570576205

/-! ## A085150.P4777670001417184928

`lt[∑[A084904(n)], A084929(n+2)]`
-/

namespace A085150.P4777670001417184928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084904 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084929 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A085150.P4777670001417184928

/-! ## A085150.P5356144958614283656

`eq[A193179(n+2), A319992(n+1)]`
-/

namespace A085150.P5356144958614283656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193179 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085150.P5356144958614283656

/-!
# A085151: Numbers generated by the Fibonacci polynomial x^4 + 3x^2 + 1.

The programs for A085151, the canonical program `A085151.P7977199148537130674` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085151 has offset 1).

The definition of A085151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085151.P9396570423718202902

`ogf((5+4x+14x^2+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A085151.P9396570423718202902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4, 14, 0, 1] [1, -5, 10, -10, 5, -1] n

end

end A085151.P9396570423718202902

namespace A085151

/-- `ogf((5+4x+14x^2+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P9396570423718202902.Spec : Prop :=
  ∀ n, P9396570423718202902.a n = A085151 (n + 1)

end A085151

/-! ## A085151.P7977199148537130674

`(n+1)^4+3*(n+1)²+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085151

/-- `(n+1)^4+3*(n+1)²+1` -/
def P7977199148537130674.Spec : Prop :=
  ∀ n, (P7977199148537130674.a n : ℤ) = A085151 (n + 1)

theorem P7977199148537130674.correct : P7977199148537130674.Spec := by
  intro n
  simp only [A085151, Nat.add_sub_cancel]

end A085151

/-! ## A085151.P10528152060300969416

`A057721(n+1)`
-/

namespace A085151.P10528152060300969416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057721 (n + 1)

end

end A085151.P10528152060300969416

namespace A085151

/-- `A057721(n+1)` -/
def P10528152060300969416.Spec : Prop :=
  ∀ n, P10528152060300969416.a n = A085151 (n + 1)

end A085151

/-! ## A085151.P3556687651153037171

`∑[∑[round(12/acot(n)²)]]`
-/

namespace A085151.P3556687651153037171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (12 / SequenceMachineLib.acot (n : ℝ) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085151.P3556687651153037171

namespace A085151

/-- `∑[∑[round(12/acot(n)²)]]` -/
def P3556687651153037171.Spec : Prop :=
  ∀ n, P3556687651153037171.a n = A085151 (n + 1)

end A085151

/-! ## A085151.P6121662334078840021

`record[A057721(abs(1-n))]`
-/

namespace A085151.P6121662334078840021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057721 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085151.P6121662334078840021

namespace A085151

/-- `record[A057721(abs(1-n))]` -/
def P6121662334078840021.Spec : Prop :=
  ∀ n, P6121662334078840021.a n = A085151 (n + 1)

end A085151

/-! ## A085151.P8816960617489119166

`A028387((n+1)²)`
-/

namespace A085151.P8816960617489119166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 ((n + 1) ^ 2)

end

end A085151.P8816960617489119166

namespace A085151

/-- `A028387((n+1)²)` -/
def P8816960617489119166.Spec : Prop :=
  ∀ n, P8816960617489119166.a n = A085151 (n + 1)

theorem P8816960617489119166.correct : P8816960617489119166.Spec := by
  intro n
  simp only [A085151, Nat.add_sub_cancel, A085151.P8816960617489119166.a, A085151.P7977199148537130674.a, A028387, A028387.P5954590561330899546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085151

/-! ## A085151.P3874365579590279712

`sqrt(A062938((n+1)²))`
-/

namespace A085151.P3874365579590279712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062938 ((n + 1) ^ 2) : ℝ)

end

end A085151.P3874365579590279712

namespace A085151

/-- `sqrt(A062938((n+1)²))` -/
def P3874365579590279712.Spec : Prop :=
  ∀ n, P3874365579590279712.a n = (A085151 (n + 1) : ℝ)

end A085151

/-! ## A085151.P10461662637489732700

`record[A028387((1-n)²)]`
-/

namespace A085151.P10461662637489732700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085151.P10461662637489732700

namespace A085151

/-- `record[A028387((1-n)²)]` -/
def P10461662637489732700.Spec : Prop :=
  ∀ n, P10461662637489732700.a n = A085151 (n + 1)

end A085151

/-! ## A085151.P14571925581884029901

`A165900((n+1)²+2)`
-/

namespace A085151.P14571925581884029901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 ((n + 1) ^ 2 + 2)

end

end A085151.P14571925581884029901

namespace A085151

/-- `A165900((n+1)²+2)` -/
def P14571925581884029901.Spec : Prop :=
  ∀ n, P14571925581884029901.a n = A085151 (n + 1)

theorem P14571925581884029901.correct : P14571925581884029901.Spec := by
  intro n
  simp only [A085151, Nat.add_sub_cancel, A085151.P14571925581884029901.a, A085151.P7977199148537130674.a, A165900, A165900.P16246243669433487557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085151

/-! ## A085151.P9026081279823487046

`A090288((n+1)²)/2`
-/

namespace A085151.P9026081279823487046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090288 ((n + 1) ^ 2) : ℚ) / 2

end

end A085151.P9026081279823487046

namespace A085151

/-- `A090288((n+1)²)/2` -/
def P9026081279823487046.Spec : Prop :=
  ∀ n, P9026081279823487046.a n = (A085151 (n + 1) : ℚ)

theorem P9026081279823487046.correct : P9026081279823487046.Spec := by
  intro n
  simp only [A085151, Nat.add_sub_cancel, A085151.P9026081279823487046.a, A085151.P7977199148537130674.a, A090288, A090288.P18129157653264208824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A085151

/-!
# A085152: All prime factors of n and n+1 are <= 5. (Related to the abc conjecture.)

The programs for A085152, there is no canonical definition to state claims against.
-/

/-! ## A085152.P1042587671991182557

`A138180(n+6)`
-/

namespace A085152.P1042587671991182557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138180 (n + 6)

end

end A085152.P1042587671991182557

/-! ## A085152.P1999279094759457644

`eq[2, A141256(n²+n)]`
-/

namespace A085152.P1999279094759457644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (n ^ 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085152.P1999279094759457644

/-! ## A085152.P16820895811850386361

`lt[A252489(n+1), 4]+1`
-/

namespace A085152.P16820895811850386361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A085152.P16820895811850386361

/-! ## A085152.P6379978811854180827

`lt[A074399(n+1), 6]+1`
-/

namespace A085152.P6379978811854180827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A085152.P6379978811854180827

/-! ## A085152.P4458536284657820981

`lt[A069902(n+1), 7]+1`
-/

namespace A085152.P4458536284657820981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A085152.P4458536284657820981

/-!
# A085153: All prime factors of n and n+1 are <= 7. (Related to the abc conjecture.)

The programs for A085153, there is no canonical definition to state claims against.
-/

/-! ## A085153.P14538786928683625960

`A138180(n+16)`
-/

namespace A085153.P14538786928683625960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138180 (n + 16)

end

end A085153.P14538786928683625960

/-! ## A085153.P12151727832538219924

`A392635(A348553(n))`
-/

namespace A085153.P12151727832538219924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392635 (A348553 n).toNat

end

end A085153.P12151727832538219924

/-! ## A085153.P2327537186349683963

`A392635(A387108(n))`
-/

namespace A085153.P2327537186349683963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392635 (A387108 n).toNat

end

end A085153.P2327537186349683963

/-! ## A085153.P2292735240277792325

`A392635(A387109(n))`
-/

namespace A085153.P2292735240277792325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392635 (A387109 n).toNat

end

end A085153.P2292735240277792325

/-! ## A085153.P4902755190850925778

`A003964(A392635(n+1))`
-/

namespace A085153.P4902755190850925778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A392635 (n + 1)).toNat

end

end A085153.P4902755190850925778

/-!
# A085154: a(n+1) = smallest number >a(n) having more prime factors than a(n), with or without repetitions; a(1)=1.

The programs for A085154, there is no canonical definition to state claims against.
-/

/-! ## A085154.P4597257433477550325

`A015926(n+1)+Δ[A016389(A022166(n))]²`
-/

namespace A085154.P4597257433477550325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A022166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015926 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A085154.P4597257433477550325

/-! ## A085154.P705940560772147366

`A101637(A085134(n+1))+A015926(n+1)`
-/

namespace A085154.P705940560772147366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A085134 (n + 1)).toNat + A015926 (n + 1)

end

end A085154.P705940560772147366

/-! ## A085154.P345837417837534859

`record[and(A107079(n+1), A166161(n+1))]`
-/

namespace A085154.P345837417837534859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107079 (n + 1)) (A166161 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085154.P345837417837534859

/-! ## A085154.P5986058923190858407

`∪[A055932(n+1), A318283(A275208(3*n+2))]`
-/

namespace A085154.P5986058923190858407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A275208 (3 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085154.P5986058923190858407

/-! ## A085154.P12313031709243123794

`record[A000005(A247913(2*n+1))]`
-/

namespace A085154.P12313031709243123794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A247913 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085154.P12313031709243123794

/-!
# A085155: Powers of semiprimes.

The programs for A085155, the canonical program `A085155.P45423891283562747` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085155 has offset 1).

The definition of A085155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085155.P4689124202588000972

`filter[A085156(n+1), A065043(#)]`
-/

namespace A085155.P4689124202588000972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A085155.P4689124202588000972

namespace A085155

/-- `filter[A085156(n+1), A065043(#)]` -/
def P4689124202588000972.Spec : Prop :=
  ∀ n, P4689124202588000972.a n = A085155 (n + 1)

end A085155

/-! ## A085155.P45423891283562747

`∩[A028260(n+1), A085156(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A085155

/-- `∩[A028260(n+1), A085156(n+1)]` -/
def P45423891283562747.Spec : Prop :=
  ∀ n, (P45423891283562747.a n : ℤ) = A085155 (n + 1)

theorem P45423891283562747.correct : P45423891283562747.Spec := by
  intro n
  simp only [A085155, Nat.add_sub_cancel]

end A085155

/-! ## A085155.P3720037855326083931

`∩[A085156(n+1), A233182(n+1)]`
-/

namespace A085155.P3720037855326083931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085155.P3720037855326083931

namespace A085155

/-- `∩[A085156(n+1), A233182(n+1)]` -/
def P3720037855326083931.Spec : Prop :=
  ∀ n, (P3720037855326083931.a n : ℤ) = A085155 (n + 1)

end A085155

/-! ## A085155.P18007921785473072151

`∪[A001358(n+1), A249327(A000124(n))]`
-/

namespace A085155.P18007921785473072151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249327 (A000124 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A085155.P18007921785473072151

namespace A085155

/-- `∪[A001358(n+1), A249327(A000124(n))]` -/
def P18007921785473072151.Spec : Prop :=
  ∀ n, (P18007921785473072151.a n : ℤ) = A085155 (n + 1)

end A085155

/-! ## A085155.P15385798751230664614

`record[A350388(n+1)+n*A010054(A076078(n+1))]`
-/

namespace A085155.P15385798751230664614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (n + 1) + (n : ℤ) * A010054 (A076078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085155.P15385798751230664614

namespace A085155

/-- `record[A350388(n+1)+n*A010054(A076078(n+1))]` -/
def P15385798751230664614.Spec : Prop :=
  ∀ n, P15385798751230664614.a n = A085155 (n + 1)

end A085155

/-!
# A085156: Powers of primes or powers of semiprimes.

The programs for A085156, the canonical program `A085156.P15156798092046619024` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085156 has offset 1).

The definition of A085156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A085156.P5166675675717405933

`lt[A351945(n+1), 3]+1`
-/

namespace A085156.P5166675675717405933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351945 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A085156.P5166675675717405933

namespace A085156

/-- `lt[A351945(n+1), 3]+1` -/
def P5166675675717405933.Spec : Prop :=
  ∀ n, (P5166675675717405933.a n : ℤ) = A085156 (n + 1)

end A085156

/-! ## A085156.P15156798092046619024

`lt[C(A328830(n+1), 3), 3]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A085156

/-- `lt[C(A328830(n+1), 3), 3]+1` -/
def P15156798092046619024.Spec : Prop :=
  ∀ n, (P15156798092046619024.a n : ℤ) = A085156 (n + 1)

theorem P15156798092046619024.correct : P15156798092046619024.Spec := by
  intro n
  simp only [A085156, Nat.add_sub_cancel]

end A085156

/-! ## A085156.P13529961937008467191

`lt[A062298(A328830(n+1)), 2]+1`
-/

namespace A085156.P13529961937008467191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A328830 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A085156.P13529961937008467191

namespace A085156

/-- `lt[A062298(A328830(n+1)), 2]+1` -/
def P13529961937008467191.Spec : Prop :=
  ∀ n, (P13529961937008467191.a n : ℤ) = A085156 (n + 1)

end A085156

/-! ## A085156.P13208797356186182749

`eq[3, or(3, A182860(n+1))]+1`
-/

namespace A085156.P13208797356186182749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A182860 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085156.P13208797356186182749

namespace A085156

/-- `eq[3, or(3, A182860(n+1))]+1` -/
def P13208797356186182749.Spec : Prop :=
  ∀ n, (P13208797356186182749.a n : ℤ) = A085156 (n + 1)

end A085156

/-! ## A085156.P8077112244902839343

`record[A062759(A070915(n+1))]`
-/

namespace A085156.P8077112244902839343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A070915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085156.P8077112244902839343

namespace A085156

/-- `record[A062759(A070915(n+1))]` -/
def P8077112244902839343.Spec : Prop :=
  ∀ n, P8077112244902839343.a n = A085156 (n + 1)

end A085156

/-! ## A085156.P11573494260221536215

`filter[A070915(n+1), A384667(#)]`
-/

namespace A085156.P11573494260221536215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A085156.P11573494260221536215

namespace A085156

/-- `filter[A070915(n+1), A384667(#)]` -/
def P11573494260221536215.Spec : Prop :=
  ∀ n, P11573494260221536215.a n = A085156 (n + 1)

end A085156

/-! ## A085156.P16960089374282229270

`lt[A000005(A181819(n+1)), 4]+1`
-/

namespace A085156.P16960089374282229270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A181819 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A085156.P16960089374282229270

namespace A085156

/-- `lt[A000005(A181819(n+1)), 4]+1` -/
def P16960089374282229270.Spec : Prop :=
  ∀ n, (P16960089374282229270.a n : ℤ) = A085156 (n + 1)

end A085156

/-! ## A085156.P10535949048236157295

`record[A088835(n+1)^A051904(n+1)]`
-/

namespace A085156.P10535949048236157295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088835 (n + 1) : ℚ) ^ (A051904 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085156.P10535949048236157295

namespace A085156

/-- `record[A088835(n+1)^A051904(n+1)]` -/
def P10535949048236157295.Spec : Prop :=
  ∀ n, P10535949048236157295.a n = (A085156 (n + 1) : ℚ)

end A085156

/-! ## A085156.P13705880264325684437

`record[A088835(n+1)^A052409(n+1)]`
-/

namespace A085156.P13705880264325684437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088835 (n + 1) : ℚ) ^ (A052409 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085156.P13705880264325684437

namespace A085156

/-- `record[A088835(n+1)^A052409(n+1)]` -/
def P13705880264325684437.Spec : Prop :=
  ∀ n, P13705880264325684437.a n = (A085156 (n + 1) : ℚ)

end A085156

/-! ## A085156.P6492343835318825342

`record[A062759(n+1)/A051119(A051119(n+1))]`
-/

namespace A085156.P6492343835318825342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062759 (n + 1) : ℚ) / (A051119 (A051119 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085156.P6492343835318825342

namespace A085156

/-- `record[A062759(n+1)/A051119(A051119(n+1))]` -/
def P6492343835318825342.Spec : Prop :=
  ∀ n, P6492343835318825342.a n = (A085156 (n + 1) : ℚ)

end A085156

/-! ## A085156.P10086008676316266563

`lt[A326843(A048785(n)), A048785(n)+1]`
-/

namespace A085156.P10086008676316266563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 (A048785 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085156.P10086008676316266563

namespace A085156

/-- `lt[A326843(A048785(n)), A048785(n)+1]` -/
def P10086008676316266563.Spec : Prop :=
  ∀ n, (P10086008676316266563.a n : ℤ) = A085156 (n + 1)

end A085156

/-! ## A085156.P18260135289516577573

`lt[A326843(A048785(n)), A048785(2*n)]`
-/

namespace A085156.P18260135289516577573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 (A048785 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A085156.P18260135289516577573

namespace A085156

/-- `lt[A326843(A048785(n)), A048785(2*n)]` -/
def P18260135289516577573.Spec : Prop :=
  ∀ n, (P18260135289516577573.a n : ℤ) = A085156 (n + 1)

end A085156

/-!
# A085157: Quintuple factorials, 5-factorials, n!!!!!, n!5.

The programs for A085157, the canonical program `A085157.P6075407064572541314` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085157 has offset 0).

The definition of A085157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085157.P6075407064572541314

`n*a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085157

/-- `n*a(n-5)` -/
def P6075407064572541314.Spec : Prop :=
  ∀ n, (P6075407064572541314.a n : ℤ) = A085157 n

theorem P6075407064572541314.correct : P6075407064572541314.Spec := by
  intro n
  simp only [A085157]

end A085157

/-! ## A085157.P8711142223867495676

`A129116(A167499(n)+A008486(n))`
-/

namespace A085157.P8711142223867495676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A167499 n + A008486 n).toNat

end

end A085157.P8711142223867495676

namespace A085157

/-- `A129116(A167499(n)+A008486(n))` -/
def P8711142223867495676.Spec : Prop :=
  ∀ n, P8711142223867495676.a n = A085157 n

end A085157

/-! ## A085157.P3123863282751010855

`A129116(A167614(n+1)+A004277(n))`
-/

namespace A085157.P3123863282751010855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A167614 (n + 1) + A004277 n).toNat

end

end A085157.P3123863282751010855

namespace A085157

/-- `A129116(A167614(n+1)+A004277(n))` -/
def P3123863282751010855.Spec : Prop :=
  ∀ n, P3123863282751010855.a n = A085157 n

end A085157

/-! ## A085157.P12502942039739404093

`A129116(A027379(n+2)-A178334(n))`
-/

namespace A085157.P12502942039739404093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A027379 (n + 2) - A178334 n).toNat

end

end A085157.P12502942039739404093

namespace A085157

/-- `A129116(A027379(n+2)-A178334(n))` -/
def P12502942039739404093.Spec : Prop :=
  ∀ n, P12502942039739404093.a n = A085157 n

end A085157

/-! ## A085157.P1125053602653060343

`A129116(A253145(n+3)-4-A000038(n))`
-/

namespace A085157.P1125053602653060343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A253145 (n + 3) - 4 - A000038 n).toNat

end

end A085157.P1125053602653060343

namespace A085157

/-- `A129116(A253145(n+3)-4-A000038(n))` -/
def P1125053602653060343.Spec : Prop :=
  ∀ n, P1125053602653060343.a n = A085157 n

end A085157

/-! ## A085157.P8229629139845888919

`A129116(A027379(n+2)-A070750(n+1)²)`
-/

namespace A085157.P8229629139845888919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A027379 (n + 2) - A070750 (n + 1) ^ 2).toNat

end

end A085157.P8229629139845888919

namespace A085157

/-- `A129116(A027379(n+2)-A070750(n+1)²)` -/
def P8229629139845888919.Spec : Prop :=
  ∀ n, P8229629139845888919.a n = A085157 n

end A085157

/-! ## A085157.P9487666853844021102

`A129116((A253145(n+3)-4)%A001248(n+1))`
-/

namespace A085157.P9487666853844021102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (Int.tmod (A253145 (n + 3) - 4) (A001248 (n + 1))).toNat

end

end A085157.P9487666853844021102

namespace A085157

/-- `A129116((A253145(n+3)-4)%A001248(n+1))` -/
def P9487666853844021102.Spec : Prop :=
  ∀ n, P9487666853844021102.a n = A085157 n

end A085157

/-!
# A085158: Sextuple factorials, 6-factorials, n!!!!!!, n!6.

The programs for A085158, the canonical program `A085158.P16017821733097522706` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A085158 has offset 0).

The definition of A085158 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A085158.P16017821733097522706

`n*a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A085158

/-- `n*a(n-6)` -/
def P16017821733097522706.Spec : Prop :=
  ∀ n, (P16017821733097522706.a n : ℤ) = A085158 n

theorem P16017821733097522706.correct : P16017821733097522706.Spec := by
  intro n
  simp only [A085158]

end A085158

/-! ## A085158.P13049164752231337177

`A129116(record[A052905(n)%A051890(n)])`
-/

namespace A085158.P13049164752231337177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052905 n) (A051890 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085158.P13049164752231337177

namespace A085158

/-- `A129116(record[A052905(n)%A051890(n)])` -/
def P13049164752231337177.Spec : Prop :=
  ∀ n, P13049164752231337177.a n = A085158 n

end A085158

/-! ## A085158.P2325121120108499731

`A129116(A028310(n)+A000217(n+4))`
-/

namespace A085158.P2325121120108499731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (A028310 n + A000217 (n + 4)).toNat

end

end A085158.P2325121120108499731

namespace A085158

/-- `A129116(A028310(n)+A000217(n+4))` -/
def P2325121120108499731.Spec : Prop :=
  ∀ n, P2325121120108499731.a n = A085158 n

end A085158

/-! ## A085158.P6201105470812249001

`gcd(A007661(n), A129116(A052905(n+2)))`
-/

namespace A085158.P6201105470812249001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007661 n) (A129116 (A052905 (n + 2)).toNat)

end

end A085158.P6201105470812249001

namespace A085158

/-- `gcd(A007661(n), A129116(A052905(n+2)))` -/
def P6201105470812249001.Spec : Prop :=
  ∀ n, (P6201105470812249001.a n : ℤ) = A085158 n

end A085158

/-! ## A085158.P17424260095808773123

`A129116(A052905(n+2)%A051890(n+2))`
-/

namespace A085158.P17424260095808773123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (Int.tmod (A052905 (n + 2)) (A051890 (n + 2))).toNat

end

end A085158.P17424260095808773123

namespace A085158

/-- `A129116(A052905(n+2)%A051890(n+2))` -/
def P17424260095808773123.Spec : Prop :=
  ∀ n, P17424260095808773123.a n = A085158 n

end A085158

/-!
# A085159: Permutation of natural numbers induced by the Catalan bijection gma085159 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085159, there is no canonical definition to state claims against.
-/

/-! ## A085159.P9175477385586437727

`A085163(A085160(A085163(n)))`
-/

namespace A085159.P9175477385586437727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085163 (A085160 (A085163 n).toNat).toNat

end

end A085159.P9175477385586437727

/-! ## A085159.P318872848801718795

`A085161(A085175(n))`
-/

namespace A085159.P318872848801718795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085175 n).toNat

end

end A085159.P318872848801718795

/-! ## A085159.P381523217086558499

`A057164(A086429(A057164(n)))`
-/

namespace A085159.P381523217086558499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086429 (A057164 n).toNat).toNat

end

end A085159.P381523217086558499

/-! ## A085159.P5223386381904617273

`A085161(A085160(A085161(n)))`
-/

namespace A085159.P5223386381904617273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085160 (A085161 n).toNat).toNat

end

end A085159.P5223386381904617273

/-! ## A085159.P3733854327361695667

`A085161(A085169(A057164(A085170(n))))`
-/

namespace A085159.P3733854327361695667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085169 (A057164 (A085170 n).toNat).toNat).toNat

end

end A085159.P3733854327361695667

/-! ## A085159.P15563014158899081890

`A082313(A082315(A086429(A082313(A082315(n)))))`
-/

namespace A085159.P15563014158899081890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A082315 (A086429 (A082313 (A082315 n).toNat).toNat).toNat).toNat

end

end A085159.P15563014158899081890

/-! ## A085159.P12191282906474453956

`A085175(A085160(A085160(A085175(A085160(n)))))`
-/

namespace A085159.P12191282906474453956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085175 (A085160 (A085160 (A085175 (A085160 n).toNat).toNat).toNat).toNat

end

end A085159.P12191282906474453956

/-! ## A085159.P13877688269151995617

`A085167(A069770(n))`
-/

namespace A085159.P13877688269151995617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085167 (A069770 n).toNat

end

end A085159.P13877688269151995617

/-! ## A085159.P2092892008019917998

`A085173(A085173(n))`
-/

namespace A085159.P2092892008019917998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085173 (A085173 n).toNat

end

end A085159.P2092892008019917998

/-! ## A085159.P2890935787214069751

`A057164(A069773(A069889(n)))`
-/

namespace A085159.P2890935787214069751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A069773 (A069889 n).toNat).toNat

end

end A085159.P2890935787214069751

/-! ## A085159.P16688597963682872007

`A057163(A085165(A057163(n)))`
-/

namespace A085159.P16688597963682872007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A085165 (A057163 n).toNat).toNat

end

end A085159.P16688597963682872007

/-! ## A085159.P11588653487183580797

`A085167(A085160(A085167(n)))`
-/

namespace A085159.P11588653487183580797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085167 (A085160 (A085167 n).toNat).toNat

end

end A085159.P11588653487183580797

/-! ## A085159.P15871456439891925760

`A057505(A057501(A057506(A057501(n))))`
-/

namespace A085159.P15871456439891925760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057501 (A057506 (A057501 n).toNat).toNat).toNat

end

end A085159.P15871456439891925760

/-! ## A085159.P14066203087687544275

`A074684(A057501(A057501(A074683(n))))`
-/

namespace A085159.P14066203087687544275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A057501 (A057501 (A074683 n).toNat).toNat).toNat

end

end A085159.P14066203087687544275

/-! ## A085159.P13542760656222284850

`A057164(A086427(A086427(A074684(A086426(n)))))`
-/

namespace A085159.P13542760656222284850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086427 (A086427 (A074684 (A086426 n).toNat).toNat).toNat).toNat

end

end A085159.P13542760656222284850

/-! ## A085159.P18389133365202392888

`A085175(A085160(A085175(A082853(A081291(n)))))`
-/

namespace A085159.P18389133365202392888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085175 (A085160 (A085175 (A082853 (A081291 n).toNat).toNat).toNat).toNat

end

end A085159.P18389133365202392888

/-! ## A085159.P10075338953015345181

`A131163(A057509(A131164(A057509(n))))`
-/

namespace A085159.P10075338953015345181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131163 (A057509 (A131164 (A057509 n).toNat).toNat).toNat

end

end A085159.P10075338953015345181

/-! ## A085159.P4994668594429702492

`A057164(A086427(A086427(A074683(A130921(n)))))`
-/

namespace A085159.P4994668594429702492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086427 (A086427 (A074683 (A130921 n).toNat).toNat).toNat).toNat

end

end A085159.P4994668594429702492

/-! ## A085159.P6902133264470190540

`A057164(A086427(A086427(A130922(A074684(n)))))`
-/

namespace A085159.P6902133264470190540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086427 (A086427 (A130922 (A074684 n).toNat).toNat).toNat).toNat

end

end A085159.P6902133264470190540

/-! ## A085159.P8345454048740580241

`A130921(A086426(A086430(A086425(A130922(n)))))`
-/

namespace A085159.P8345454048740580241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A086426 (A086430 (A086425 (A130922 n).toNat).toNat).toNat).toNat

end

end A085159.P8345454048740580241

/-!
# A085160: Permutation of natural numbers induced by the Catalan bijection gma085160 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085160, there is no canonical definition to state claims against.
-/

/-! ## A085160.P12800769106635911133

`A085175(A085161(n))`
-/

namespace A085160.P12800769106635911133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085175 (A085161 n).toNat

end

end A085160.P12800769106635911133

/-! ## A085160.P14141174874920583220

`A057164(A086430(A057164(n)))`
-/

namespace A085160.P14141174874920583220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086430 (A057164 n).toNat).toNat

end

end A085160.P14141174874920583220

/-! ## A085160.P16396834014127587297

`A085175(A085159(A085175(n)))`
-/

namespace A085160.P16396834014127587297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085175 (A085159 (A085175 n).toNat).toNat

end

end A085160.P16396834014127587297

/-! ## A085160.P5437911301821047573

`A085161(A085159(A085159(A085161(A085159(n)))))`
-/

namespace A085160.P5437911301821047573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085159 (A085159 (A085161 (A085159 n).toNat).toNat).toNat).toNat

end

end A085160.P5437911301821047573

/-! ## A085160.P15405877424680960658

`A069770(A085168(n))`
-/

namespace A085160.P15405877424680960658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A085168 n).toNat

end

end A085160.P15405877424680960658

/-! ## A085160.P5476415405187078331

`A085174(A085174(n))`
-/

namespace A085160.P5476415405187078331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A085174 n).toNat

end

end A085160.P5476415405187078331

/-! ## A085160.P17707932892819027757

`A057163(A085166(A057163(n)))`
-/

namespace A085160.P17707932892819027757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A085166 (A057163 n).toNat).toNat

end

end A085160.P17707932892819027757

/-! ## A085160.P9672948580223686856

`A057502(A057505(A057502(A057506(n))))`
-/

namespace A085160.P9672948580223686856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A057505 (A057502 (A057506 n).toNat).toNat).toNat

end

end A085160.P9672948580223686856

/-! ## A085160.P365183185460630336

`A085169(A074683(A085169(A074683(n))))`
-/

namespace A085160.P365183185460630336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (A074683 (A085169 (A074683 n).toNat).toNat).toNat

end

end A085160.P365183185460630336

/-! ## A085160.P610835955149297928

`A069889(A082331(A082313(A082331(A057501(n)))))`
-/

namespace A085160.P610835955149297928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 (A082331 (A082313 (A082331 (A057501 n).toNat).toNat).toNat).toNat

end

end A085160.P610835955149297928

/-! ## A085160.P1185429969018803516

`A085168(A085159(A085168(A074680(A074679(n)))))`
-/

namespace A085160.P1185429969018803516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085168 (A085159 (A085168 (A074680 (A074679 n).toNat).toNat).toNat).toNat

end

end A085160.P1185429969018803516

/-! ## A085160.P8858365630194860699

`A074684(A086426(A086430(A074684(A086426(n)))))`
-/

namespace A085160.P8858365630194860699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A086426 (A086430 (A074684 (A086426 n).toNat).toNat).toNat).toNat

end

end A085160.P8858365630194860699

/-! ## A085160.P10238819010662227657

`A085168(A085159(A085168(A085168(A085167(n)))))`
-/

namespace A085160.P10238819010662227657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085168 (A085159 (A085168 (A085168 (A085167 n).toNat).toNat).toNat).toNat

end

end A085160.P10238819010662227657

/-! ## A085160.P8993516350909588461

`A130921(A057501(A057501(A130922(n))))`
-/

namespace A085160.P8993516350909588461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A057501 (A057501 (A130922 n).toNat).toNat).toNat

end

end A085160.P8993516350909588461

/-! ## A085160.P8016300193990027444

`A086425(A074683(A086430(A074683(A130921(n)))))`
-/

namespace A085160.P8016300193990027444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086425 (A074683 (A086430 (A074683 (A130921 n).toNat).toNat).toNat).toNat

end

end A085160.P8016300193990027444

/-!
# A085161: Involution of natural numbers induced by Catalan Automorphism *A085161 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085161, there is no canonical definition to state claims against.
-/

/-! ## A085161.P16296456609583646014

`A085171(A057164(n))`
-/

namespace A085161.P16296456609583646014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085171 (A057164 n).toNat

end

end A085161.P16296456609583646014

/-! ## A085161.P15781005224151597968

`A057164(A085172(n))`
-/

namespace A085161.P15781005224151597968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A085172 n).toNat

end

end A085161.P15781005224151597968

/-! ## A085161.P15585876103402024182

`A085163(A057508(n))`
-/

namespace A085161.P15585876103402024182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085163 (A057508 n).toNat

end

end A085161.P15585876103402024182

/-! ## A085161.P6339628085976128360

`A057508(A085164(n))`
-/

namespace A085161.P6339628085976128360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A085164 n).toNat

end

end A085161.P6339628085976128360

/-! ## A085161.P2399123980298883704

`A085159(A085175(n))`
-/

namespace A085161.P2399123980298883704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085159 (A085175 n).toNat

end

end A085161.P2399123980298883704

/-! ## A085161.P13009125215878241420

`A085175(A085160(n))`
-/

namespace A085161.P13009125215878241420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085175 (A085160 n).toNat

end

end A085161.P13009125215878241420

/-! ## A085161.P127227740414694124

`A057163(A085162(A057163(n)))`
-/

namespace A085161.P127227740414694124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A085162 (A057163 n).toNat).toNat

end

end A085161.P127227740414694124

/-! ## A085161.P7298462380886573964

`A130921(A074683(n))`
-/

namespace A085161.P7298462380886573964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A074683 n).toNat

end

end A085161.P7298462380886573964

/-! ## A085161.P885922819737468513

`A074684(A130922(n))`
-/

namespace A085161.P885922819737468513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A130922 n).toNat

end

end A085161.P885922819737468513

/-! ## A085161.P12437657768401849807

`A130921(A086426(A074684(A086426(n))))`
-/

namespace A085161.P12437657768401849807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A086426 (A074684 (A086426 n).toNat).toNat).toNat

end

end A085161.P12437657768401849807

/-! ## A085161.P451947557162340899

`A057164(A086425(A130922(A086426(A086425(n)))))`
-/

namespace A085161.P451947557162340899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086425 (A130922 (A086426 (A086425 n).toNat).toNat).toNat).toNat

end

end A085161.P451947557162340899

/-! ## A085161.P10760062324899176195

`A057164(A086425(A130922(A130922(A130921(n)))))`
-/

namespace A085161.P10760062324899176195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086425 (A130922 (A130922 (A130921 n).toNat).toNat).toNat).toNat

end

end A085161.P10760062324899176195

/-!
# A085162: Permutation of natural numbers induced by Catalan Automorphism *A085162.

The programs for A085162, there is no canonical definition to state claims against.
-/

/-! ## A085162.P7047104514564277176

`A069787(A057164(A085175(A057164(A069787(n)))))`
-/

namespace A085162.P7047104514564277176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A057164 (A085175 (A057164 (A069787 n).toNat).toNat).toNat).toNat

end

end A085162.P7047104514564277176

/-! ## A085162.P10522034380466503312

`A057163(A085161(A057163(n)))`
-/

namespace A085162.P10522034380466503312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A085161 (A057163 n).toNat).toNat

end

end A085162.P10522034380466503312

/-! ## A085162.P7188865313258760778

`A086431(A086427(A085161(A086431(A086427(n)))))`
-/

namespace A085162.P7188865313258760778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A086427 (A085161 (A086431 (A086427 n).toNat).toNat).toNat).toNat

end

end A085162.P7188865313258760778

/-! ## A085162.P15785678721441081903

`A086428(A086431(A085161(A086428(A086431(n)))))`
-/

namespace A085162.P15785678721441081903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086428 (A086431 (A085161 (A086428 (A086431 n).toNat).toNat).toNat).toNat

end

end A085162.P15785678721441081903

/-! ## A085162.P2754205412647883998

`A125976(A125985(n)%p?[3*n^3+5])`
-/

namespace A085162.P2754205412647883998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3 + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125976 (Int.tmod (A125985 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)).toNat

end

end A085162.P2754205412647883998

/-!
# A085163: Permutation of natural numbers induced by the Catalan bijection gma085163 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085163, there is no canonical definition to state claims against.
-/

/-! ## A085163.P10408416472557245873

`A085159(A085164(A085159(n)))`
-/

namespace A085163.P10408416472557245873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085159 (A085164 (A085159 n).toNat).toNat

end

end A085163.P10408416472557245873

/-! ## A085163.P3962572168800309354

`A085171(A085164(A085171(n)))`
-/

namespace A085163.P3962572168800309354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085171 (A085164 (A085171 n).toNat).toNat

end

end A085163.P3962572168800309354

/-! ## A085163.P17294054045417153456

`A085161(A057508(n))`
-/

namespace A085163.P17294054045417153456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A057508 n).toNat

end

end A085163.P17294054045417153456

/-! ## A085163.P12842823960955494423

`A085161(A085164(A085161(n)))`
-/

namespace A085163.P12842823960955494423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085164 (A085161 n).toNat).toNat

end

end A085163.P12842823960955494423

/-! ## A085163.P11988302694363800738

`A057508(A085164(A085164(A057508(A085164(n)))))`
-/

namespace A085163.P11988302694363800738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A085164 (A085164 (A057508 (A085164 n).toNat).toNat).toNat).toNat

end

end A085163.P11988302694363800738

/-! ## A085163.P2024912635316287484

`A085173(A085173(A085164(A085173(A085173(n)))))`
-/

namespace A085163.P2024912635316287484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085173 (A085173 (A085164 (A085173 (A085173 n).toNat).toNat).toNat).toNat

end

end A085163.P2024912635316287484

/-! ## A085163.P13497492734416998529

`A085159(A123719(n))`
-/

namespace A085163.P13497492734416998529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085159 (A123719 n).toNat

end

end A085163.P13497492734416998529

/-! ## A085163.P6867721645634278014

`A085161(A123719(A085175(n)))`
-/

namespace A085163.P6867721645634278014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A123719 (A085175 n).toNat).toNat

end

end A085163.P6867721645634278014

/-!
# A085164: Inverse permutation to A085163.

The programs for A085164, there is no canonical definition to state claims against.
-/

/-! ## A085164.P11105340336167264362

`A057508(A085161(n))`
-/

namespace A085164.P11105340336167264362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A085161 n).toNat

end

end A085164.P11105340336167264362

/-! ## A085164.P8660210408935810474

`A057508(A085163(A057508(n)))`
-/

namespace A085164.P8660210408935810474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A085163 (A057508 n).toNat).toNat

end

end A085164.P8660210408935810474

/-! ## A085164.P16377574275923313758

`A085160(A085163(A085160(n)))`
-/

namespace A085164.P16377574275923313758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085160 (A085163 (A085160 n).toNat).toNat

end

end A085164.P16377574275923313758

/-! ## A085164.P9800962166576282612

`A085172(A085163(A085172(n)))`
-/

namespace A085164.P9800962166576282612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085172 (A085163 (A085172 n).toNat).toNat

end

end A085164.P9800962166576282612

/-! ## A085164.P11731522896070997177

`A085161(A085163(A085163(A085161(A085163(n)))))`
-/

namespace A085164.P11731522896070997177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085163 (A085163 (A085161 (A085163 n).toNat).toNat).toNat).toNat

end

end A085164.P11731522896070997177

/-! ## A085164.P2798788067137603133

`A123719(A085160(n))`
-/

namespace A085164.P2798788067137603133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (A085160 n).toNat

end

end A085164.P2798788067137603133

/-! ## A085164.P15195269284639743971

`A123719(A085174(A085174(n)))`
-/

namespace A085164.P15195269284639743971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (A085174 (A085174 n).toNat).toNat

end

end A085164.P15195269284639743971

/-! ## A085164.P11058485942883709760

`A123719(A085168(A085159(A085168(n))))`
-/

namespace A085164.P11058485942883709760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (A085168 (A085159 (A085168 n).toNat).toNat).toNat

end

end A085164.P11058485942883709760

/-! ## A085164.P4587837333217672724

`A123719(A085175(A085159(A085175(n))))`
-/

namespace A085164.P4587837333217672724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (A085175 (A085159 (A085175 n).toNat).toNat).toNat

end

end A085164.P4587837333217672724

/-! ## A085164.P7147919807111621806

`A123719(A085175(A085161(A057164(A057164(n)))))`
-/

namespace A085164.P7147919807111621806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123719 (A085175 (A085161 (A057164 (A057164 n).toNat).toNat).toNat).toNat

end

end A085164.P7147919807111621806

/-!
# A085165: A057163-conjugate of A085159.

The programs for A085165, there is no canonical definition to state claims against.
-/

/-! ## A085165.P924139772597035254

`A069787(A057509(A069787(A069775(n))))`
-/

namespace A085165.P924139772597035254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A057509 (A069787 (A069775 n).toNat).toNat).toNat

end

end A085165.P924139772597035254

/-! ## A085165.P11887728497186615714

`A069787(A057509(A069776(A069787(n))))`
-/

namespace A085165.P11887728497186615714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A057509 (A069776 (A069787 n).toNat).toNat).toNat

end

end A085165.P11887728497186615714

/-! ## A085165.P2550811151758484734

`A085162(A085166(A085162(n)))`
-/

namespace A085165.P2550811151758484734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085162 (A085166 (A085162 n).toNat).toNat

end

end A085165.P2550811151758484734

/-! ## A085165.P12475022457990445533

`A057163(A085159(A057163(n)))`
-/

namespace A085165.P12475022457990445533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A085159 (A057163 n).toNat).toNat

end

end A085165.P12475022457990445533

/-! ## A085165.P10883177268758223716

`A057506(A086427(A086427(A057505(n))))`
-/

namespace A085165.P10883177268758223716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A086427 (A086427 (A057505 n).toNat).toNat).toNat

end

end A085165.P10883177268758223716

/-! ## A085165.P13209174680476013333

`A057163(A085167(A057163(A085160(A085167(n)))))`
-/

namespace A085165.P13209174680476013333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A085167 (A057163 (A085160 (A085167 n).toNat).toNat).toNat).toNat

end

end A085165.P13209174680476013333

/-!
# A085166: A057163-conjugate of A085160.

The programs for A085166, there is no canonical definition to state claims against.
-/

/-! ## A085166.P9065996802029059909

`A085162(A085165(A085162(n)))`
-/

namespace A085166.P9065996802029059909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085162 (A085165 (A085162 n).toNat).toNat

end

end A085166.P9065996802029059909

/-! ## A085166.P11506278768183745088

`A069787(A069775(A057510(A069787(n))))`
-/

namespace A085166.P11506278768183745088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 (A069775 (A057510 (A069787 n).toNat).toNat).toNat

end

end A085166.P11506278768183745088

/-! ## A085166.P6058123226644867228

`A057163(A085160(A057163(n)))`
-/

namespace A085166.P6058123226644867228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A085160 (A057163 n).toNat).toNat

end

end A085166.P6058123226644867228

/-! ## A085166.P3337723186684060951

`A069776(A057506(A069776(A057505(n))))`
-/

namespace A085166.P3337723186684060951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069776 (A057506 (A069776 (A057505 n).toNat).toNat).toNat

end

end A085166.P3337723186684060951

/-! ## A085166.P118205002128604333

`A127287(A073198(n)%A103915(n))`
-/

namespace A085166.P118205002128604333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (Int.tmod (A073198 n) (A103915 n)).toNat

end

end A085166.P118205002128604333

/-!
# A085167: Permutation of natural numbers induced by the Catalan bijection gma085167 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085167, there is no canonical definition to state claims against.
-/

/-! ## A085167.P2695753148282609691

`A085159(A069770(n))`
-/

namespace A085167.P2695753148282609691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085159 (A069770 n).toNat

end

end A085167.P2695753148282609691

/-! ## A085167.P12844403534166883002

`A085159(A085168(A085159(n)))`
-/

namespace A085167.P12844403534166883002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085159 (A085168 (A085159 n).toNat).toNat

end

end A085167.P12844403534166883002

/-! ## A085167.P1674632192808483679

`A057505(A057509(A057506(A057501(n))))`
-/

namespace A085167.P1674632192808483679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057509 (A057506 (A057501 n).toNat).toNat).toNat

end

end A085167.P1674632192808483679

/-! ## A085167.P8821629826795172761

`A085159(A083927(A072796(A057123(n))))`
-/

namespace A085167.P8821629826795172761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085159 (A083927 (A072796 (A057123 n).toNat).toNat).toNat

end

end A085167.P8821629826795172761

/-! ## A085167.P12625413096337390323

`A085159(A073200(∑[n]))`
-/

namespace A085167.P12625413096337390323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085159 (A073200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A085167.P12625413096337390323

/-!
# A085168: Inverse permutation to A085167.

The programs for A085168, there is no canonical definition to state claims against.
-/

/-! ## A085168.P9879776060032083923

`A069770(A085160(n))`
-/

namespace A085168.P9879776060032083923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A085160 n).toNat

end

end A085168.P9879776060032083923

/-! ## A085168.P4660946148324579765

`A085160(A085167(A085160(A085160(A085159(n)))))`
-/

namespace A085168.P4660946148324579765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085160 (A085167 (A085160 (A085160 (A085159 n).toNat).toNat).toNat).toNat

end

end A085168.P4660946148324579765

/-! ## A085168.P8291840135220193366

`A069770(A085174(A085174(n)))`
-/

namespace A085168.P8291840135220193366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A085174 (A085174 n).toNat).toNat

end

end A085168.P8291840135220193366

/-! ## A085168.P17831362991845548619

`A057502(A131003(A057510(A131004(n))))`
-/

namespace A085168.P17831362991845548619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A131003 (A057510 (A131004 n).toNat).toNat).toNat

end

end A085168.P17831362991845548619

/-! ## A085168.P4177179638205947914

`A057502(A131163(A057510(A131164(n))))`
-/

namespace A085168.P4177179638205947914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057502 (A131163 (A057510 (A131164 n).toNat).toNat).toNat

end

end A085168.P4177179638205947914

/-!
# A085169: Permutation of natural numbers induced by the Catalan bijection gma085169 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085169, there is no canonical definition to state claims against.
-/

/-! ## A085169.P18016555667148378080

`A086433(A082853(n))+A082852(n)`
-/

namespace A085169.P18016555667148378080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086433 (A082853 n).toNat + A082852 n

end

end A085169.P18016555667148378080

/-! ## A085169.P13202232877827223645

`A086433(A082854(n)-1)+A082852(n)`
-/

namespace A085169.P13202232877827223645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086433 (A082854 n - 1).toNat + A082852 n

end

end A085169.P13202232877827223645

/-! ## A085169.P7444968047656681178

`A086433(n-A082852(n))+A082852(n)`
-/

namespace A085169.P7444968047656681178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086433 ((n : ℤ) - A082852 n).toNat + A082852 n

end

end A085169.P7444968047656681178

/-! ## A085169.P13323049105553623170

`A074684(A057502(n))`
-/

namespace A085169.P13323049105553623170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A057502 n).toNat

end

end A085169.P13323049105553623170

/-! ## A085169.P7709784343832032058

`A085174(A074684(n))`
-/

namespace A085169.P7709784343832032058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A074684 n).toNat

end

end A085169.P7709784343832032058

/-! ## A085169.P3783661614149513712

`A085174(A057164(A086425(n)))`
-/

namespace A085169.P3783661614149513712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A057164 (A086425 n).toNat).toNat

end

end A085169.P3783661614149513712

/-! ## A085169.P15074366529390534944

`A085174(A082360(A074683(A082360(n))))`
-/

namespace A085169.P15074366529390534944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A082360 (A074683 (A082360 n).toNat).toNat).toNat

end

end A085169.P15074366529390534944

/-! ## A085169.P18441836765291094048

`A057164(A086428(A086425(A057164(A057164(n)))))`
-/

namespace A085169.P18441836765291094048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086428 (A086425 (A057164 (A057164 n).toNat).toNat).toNat).toNat

end

end A085169.P18441836765291094048

/-! ## A085169.P13678536667366000789

`A057505(A125982(n))`
-/

namespace A085169.P13678536667366000789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A125982 n).toNat

end

end A085169.P13678536667366000789

/-! ## A085169.P6937654625508403268

`A130921(A069888(n))`
-/

namespace A085169.P6937654625508403268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A069888 n).toNat

end

end A085169.P6937654625508403268

/-! ## A085169.P628751811363002090

`A057505(A057164(A130921(n)))`
-/

namespace A085169.P628751811363002090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A057164 (A130921 n).toNat).toNat

end

end A085169.P628751811363002090

/-!
# A085170: Permutation of natural numbers induced by the Catalan bijection gma085170 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085170, there is no canonical definition to state claims against.
-/

/-! ## A085170.P4641673693207430700

`A086434(A082853(n))+A082852(n)`
-/

namespace A085170.P4641673693207430700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086434 (A082853 n).toNat + A082852 n

end

end A085170.P4641673693207430700

/-! ## A085170.P10634083512177289152

`A086434(n-A082852(n))+A082852(n)`
-/

namespace A085170.P10634083512177289152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086434 ((n : ℤ) - A082852 n).toNat + A082852 n

end

end A085170.P10634083512177289152

/-! ## A085170.P3517867136547049155

`A057501(A074683(n))`
-/

namespace A085170.P3517867136547049155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A074683 n).toNat

end

end A085170.P3517867136547049155

/-! ## A085170.P9322798452600853549

`A074683(A085173(n))`
-/

namespace A085170.P9322798452600853549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A085173 n).toNat

end

end A085170.P9322798452600853549

/-! ## A085170.P908099990154208035

`A057501(A086426(A057164(n)))`
-/

namespace A085170.P908099990154208035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A086426 (A057164 n).toNat).toNat

end

end A085170.P908099990154208035

/-! ## A085170.P11987129140727078648

`A074683(A085174(A085159(n)))`
-/

namespace A085170.P11987129140727078648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074683 (A085174 (A085159 n).toNat).toNat

end

end A085170.P11987129140727078648

/-! ## A085170.P16312971616076838627

`A086426(A086427(A074684(A086426(n))))`
-/

namespace A085170.P16312971616076838627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086426 (A086427 (A074684 (A086426 n).toNat).toNat).toNat

end

end A085170.P16312971616076838627

/-! ## A085170.P8255717529027631760

`A086426(A086427(A057164(A086426(A086425(n)))))`
-/

namespace A085170.P8255717529027631760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086426 (A086427 (A057164 (A086426 (A086425 n).toNat).toNat).toNat).toNat

end

end A085170.P8255717529027631760

/-! ## A085170.P13971014359812001382

`A125981(A057506(n))`
-/

namespace A085170.P13971014359812001382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125981 (A057506 n).toNat

end

end A085170.P13971014359812001382

/-! ## A085170.P7755777885347135879

`A069888(A130922(n))`
-/

namespace A085170.P7755777885347135879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069888 (A130922 n).toNat

end

end A085170.P7755777885347135879

/-! ## A085170.P15724511270513614066

`A086426(A086427(A074683(A130921(n))))`
-/

namespace A085170.P15724511270513614066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086426 (A086427 (A074683 (A130921 n).toNat).toNat).toNat

end

end A085170.P15724511270513614066

/-!
# A085171: Permutation of natural numbers induced by the Catalan bijection gma085171 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085171, there is no canonical definition to state claims against.
-/

/-! ## A085171.P3895633305433349207

`A085163(A085172(A085163(n)))`
-/

namespace A085171.P3895633305433349207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085163 (A085172 (A085163 n).toNat).toNat

end

end A085171.P3895633305433349207

/-! ## A085171.P4806001828001839157

`A057164(A086431(n))`
-/

namespace A085171.P4806001828001839157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086431 n).toNat

end

end A085171.P4806001828001839157

/-! ## A085171.P12637984204982214418

`A085161(A057164(n))`
-/

namespace A085171.P12637984204982214418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A057164 n).toNat

end

end A085171.P12637984204982214418

/-! ## A085171.P2672185235151021540

`A085161(A085172(A085161(n)))`
-/

namespace A085171.P2672185235151021540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085172 (A085161 n).toNat).toNat

end

end A085171.P2672185235151021540

/-! ## A085171.P2378704416171094963

`A085161(A085170(A085175(A085169(n))))`
-/

namespace A085171.P2378704416171094963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085170 (A085175 (A085169 n).toNat).toNat).toNat

end

end A085171.P2378704416171094963

/-! ## A085171.P2314044475184387388

`A057508(A085164(A085172(A057508(A085164(n)))))`
-/

namespace A085171.P2314044475184387388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A085164 (A085172 (A057508 (A085164 n).toNat).toNat).toNat).toNat

end

end A085171.P2314044475184387388

/-! ## A085171.P5501861402742460919

`A085173(A057505(n))`
-/

namespace A085171.P5501861402742460919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085173 (A057505 n).toNat

end

end A085171.P5501861402742460919

/-! ## A085171.P13443645851694043814

`A057505(A086428(n))`
-/

namespace A085171.P13443645851694043814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A086428 n).toNat

end

end A085171.P13443645851694043814

/-! ## A085171.P503691058007746253

`A057163(A085162(A057506(n)))`
-/

namespace A085171.P503691058007746253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A085162 (A057506 n).toNat).toNat

end

end A085171.P503691058007746253

/-! ## A085171.P1037262598122995403

`A085161(A086426(A086431(A086425(n))))`
-/

namespace A085171.P1037262598122995403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A086426 (A086431 (A086425 n).toNat).toNat).toNat

end

end A085171.P1037262598122995403

/-! ## A085171.P5825798550296872088

`A074684(A125981(n))`
-/

namespace A085171.P5825798550296872088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A125981 n).toNat

end

end A085171.P5825798550296872088

/-! ## A085171.P16483592485417045515

`A130921(A086426(n))`
-/

namespace A085171.P16483592485417045515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A086426 n).toNat

end

end A085171.P16483592485417045515

/-! ## A085171.P780953239833287851

`A130921(A074683(A086425(A074683(n))))`
-/

namespace A085171.P780953239833287851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A074683 (A086425 (A074683 n).toNat).toNat).toNat

end

end A085171.P780953239833287851

/-! ## A085171.P12797307588044245357

`A130921(A074683(A074683(A130921(n))))`
-/

namespace A085171.P12797307588044245357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A074683 (A074683 (A130921 n).toNat).toNat).toNat

end

end A085171.P12797307588044245357

/-! ## A085171.P4067294636474355674

`A074684(A130922(A130922(A074684(n))))`
-/

namespace A085171.P4067294636474355674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A130922 (A130922 (A074684 n).toNat).toNat).toNat

end

end A085171.P4067294636474355674

/-!
# A085172: Inverse permutation to A085171.

The programs for A085172, there is no canonical definition to state claims against.
-/

/-! ## A085172.P9467862233171220981

`A057506(A085174(n))`
-/

namespace A085172.P9467862233171220981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A085174 n).toNat

end

end A085172.P9467862233171220981

/-! ## A085172.P6090124310113006139

`A057164(A085161(n))`
-/

namespace A085172.P6090124310113006139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A085161 n).toNat

end

end A085172.P6090124310113006139

/-! ## A085172.P1012881227538044875

`A086431(A057164(n))`
-/

namespace A085172.P1012881227538044875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A057164 n).toNat

end

end A085172.P1012881227538044875

/-! ## A085172.P17453386658471090688

`A085164(A085171(A085164(n)))`
-/

namespace A085172.P17453386658471090688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085164 (A085171 (A085164 n).toNat).toNat

end

end A085172.P17453386658471090688

/-! ## A085172.P558478186905932872

`A085161(A085171(A085163(A057508(n))))`
-/

namespace A085172.P558478186905932872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085171 (A085163 (A057508 n).toNat).toNat).toNat

end

end A085172.P558478186905932872

/-! ## A085172.P11435511918235179154

`A085161(A085171(A085163(A085161(A085163(n)))))`
-/

namespace A085172.P11435511918235179154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085171 (A085163 (A085161 (A085163 n).toNat).toNat).toNat).toNat

end

end A085172.P11435511918235179154

/-! ## A085172.P6844713901852523739

`A085161(A085171(A085171(A085161(A085171(n)))))`
-/

namespace A085172.P6844713901852523739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085171 (A085171 (A085161 (A085171 n).toNat).toNat).toNat).toNat

end

end A085172.P6844713901852523739

/-! ## A085172.P2445442494068343524

`A085170(A085175(A085169(A085159(A085175(n)))))`
-/

namespace A085172.P2445442494068343524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (A085175 (A085169 (A085159 (A085175 n).toNat).toNat).toNat).toNat

end

end A085172.P2445442494068343524

/-! ## A085172.P8500337478761455285

`A086427(A057506(n))`
-/

namespace A085172.P8500337478761455285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086427 (A057506 n).toNat

end

end A085172.P8500337478761455285

/-! ## A085172.P12506720397478394470

`A086431(A086426(A086431(A086425(n))))`
-/

namespace A085172.P12506720397478394470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A086426 (A086431 (A086425 n).toNat).toNat).toNat

end

end A085172.P12506720397478394470

/-! ## A085172.P10958013647980282907

`A057163(A057506(A057163(A085162(A057163(n)))))`
-/

namespace A085172.P10958013647980282907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057506 (A057163 (A085162 (A057163 n).toNat).toNat).toNat).toNat

end

end A085172.P10958013647980282907

/-! ## A085172.P15083865762835006998

`A125982(A074683(n))`
-/

namespace A085172.P15083865762835006998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125982 (A074683 n).toNat

end

end A085172.P15083865762835006998

/-! ## A085172.P11147513370426378346

`A086425(A130922(n))`
-/

namespace A085172.P11147513370426378346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086425 (A130922 n).toNat

end

end A085172.P11147513370426378346

/-! ## A085172.P1631523114888350901

`A057164(A130921(A074683(2*n-n)))`
-/

namespace A085172.P1631523114888350901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130921 (A074683 (2 * n - n)).toNat).toNat

end

end A085172.P1631523114888350901

/-! ## A085172.P8489010698521003398

`A057164(A130921(A074683(n)%A031443(n+1)))`
-/

namespace A085172.P8489010698521003398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130921 (Int.tmod (A074683 n) (A031443 (n + 1))).toNat).toNat

end

end A085172.P8489010698521003398

/-! ## A085172.P5591568895113670363

`A057164(A130921(A086426(A074684(A086426(n)))))`
-/

namespace A085172.P5591568895113670363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130921 (A086426 (A074684 (A086426 n).toNat).toNat).toNat).toNat

end

end A085172.P5591568895113670363

/-! ## A085172.P16849563926506298784

`A057164(A130921(A086426(A074683(A130921(n)))))`
-/

namespace A085172.P16849563926506298784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A130921 (A086426 (A074683 (A130921 n).toNat).toNat).toNat).toNat

end

end A085172.P16849563926506298784

/-!
# A085173: Permutation of natural numbers induced by the Catalan bijection gma085173 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085173, there is no canonical definition to state claims against.
-/

/-! ## A085173.P610230321703841356

`A074684(A085170(n))`
-/

namespace A085173.P610230321703841356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A085170 n).toNat

end

end A085173.P610230321703841356

/-! ## A085173.P16378888043222505824

`A085174(A085159(n))`
-/

namespace A085173.P16378888043222505824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A085159 n).toNat

end

end A085173.P16378888043222505824

/-! ## A085173.P5589357337773245665

`A085174(A085163(A085160(A085163(n))))`
-/

namespace A085173.P5589357337773245665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A085163 (A085160 (A085163 n).toNat).toNat).toNat

end

end A085173.P5589357337773245665

/-! ## A085173.P13601457174661353544

`A057163(A085162(A057506(A057506(n))))`
-/

namespace A085173.P13601457174661353544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A085162 (A057506 (A057506 n).toNat).toNat).toNat

end

end A085173.P13601457174661353544

/-! ## A085173.P16768065879532723416

`A085171(A057506(n))`
-/

namespace A085173.P16768065879532723416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085171 (A057506 n).toNat

end

end A085173.P16768065879532723416

/-! ## A085173.P7767148264281170813

`A057164(A086427(A057164(n)))`
-/

namespace A085173.P7767148264281170813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086427 (A057164 n).toNat).toNat

end

end A085173.P7767148264281170813

/-! ## A085173.P2649178622944900332

`A074684(A057501(A074683(n)))`
-/

namespace A085173.P2649178622944900332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A057501 (A074683 n).toNat).toNat

end

end A085173.P2649178622944900332

/-! ## A085173.P14680600978926940928

`A074684(A086426(A086427(A074684(A086426(n)))))`
-/

namespace A085173.P14680600978926940928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A086426 (A086427 (A074684 (A086426 n).toNat).toNat).toNat).toNat

end

end A085173.P14680600978926940928

/-! ## A085173.P16731737987319155520

`A086425(A074683(A086427(A074683(A130921(n)))))`
-/

namespace A085173.P16731737987319155520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086425 (A074683 (A086427 (A074683 (A130921 n).toNat).toNat).toNat).toNat

end

end A085173.P16731737987319155520

/-! ## A085173.P92901163899876334

`A074684(A130922(A085174(A074684(A130922(n)))))`
-/

namespace A085173.P92901163899876334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074684 (A130922 (A085174 (A074684 (A130922 n).toNat).toNat).toNat).toNat

end

end A085173.P92901163899876334

/-!
# A085174: Permutation of natural numbers induced by the Catalan bijection gma085174 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085174, there is no canonical definition to state claims against.
-/

/-! ## A085174.P3647079959894445074

`A057505(A085172(n))`
-/

namespace A085174.P3647079959894445074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057505 (A085172 n).toNat

end

end A085174.P3647079959894445074

/-! ## A085174.P12365538035393532242

`A085173(A085160(n))`
-/

namespace A085174.P12365538035393532242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085173 (A085160 n).toNat

end

end A085174.P12365538035393532242

/-! ## A085174.P7992734139154796549

`A085173(A085164(A085159(A085164(n))))`
-/

namespace A085174.P7992734139154796549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085173 (A085164 (A085159 (A085164 n).toNat).toNat).toNat

end

end A085174.P7992734139154796549

/-! ## A085174.P12412975773283468026

`A085169(A074683(n))`
-/

namespace A085174.P12412975773283468026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (A074683 n).toNat

end

end A085174.P12412975773283468026

/-! ## A085174.P5829666276935996710

`A057164(A086428(A057164(n)))`
-/

namespace A085174.P5829666276935996710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086428 (A057164 n).toNat).toNat

end

end A085174.P5829666276935996710

/-! ## A085174.P16486020530667372514

`A085173(A069770(A085168(n)))`
-/

namespace A085174.P16486020530667372514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085173 (A069770 (A085168 n).toNat).toNat

end

end A085174.P16486020530667372514

/-! ## A085174.P7663526470576604191

`A085160(A074684(A085170(n)))`
-/

namespace A085174.P7663526470576604191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085160 (A074684 (A085170 n).toNat).toNat

end

end A085174.P7663526470576604191

/-! ## A085174.P17807974153588454394

`A085161(A085173(A085161(n)))`
-/

namespace A085174.P17807974153588454394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085173 (A085161 n).toNat).toNat

end

end A085174.P17807974153588454394

/-! ## A085174.P10468347384033078372

`A085168(A085159(A085168(A085173(n))))`
-/

namespace A085174.P10468347384033078372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085168 (A085159 (A085168 (A085173 n).toNat).toNat).toNat

end

end A085174.P10468347384033078372

/-! ## A085174.P8081360933991079074

`A057164(A086430(A086427(A074684(A086426(n)))))`
-/

namespace A085174.P8081360933991079074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086430 (A086427 (A074684 (A086426 n).toNat).toNat).toNat).toNat

end

end A085174.P8081360933991079074

/-! ## A085174.P4234113935333914983

`A130921(A057501(A130922(n)))`
-/

namespace A085174.P4234113935333914983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130921 (A057501 (A130922 n).toNat).toNat

end

end A085174.P4234113935333914983

/-! ## A085174.P9525654808562572455

`A057164(A086430(A086427(A074683(A130921(n)))))`
-/

namespace A085174.P9525654808562572455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086430 (A086427 (A074683 (A130921 n).toNat).toNat).toNat).toNat

end

end A085174.P9525654808562572455

/-! ## A085174.P5062568561084847373

`A057164(A086430(A086427(A130922(A074684(n)))))`
-/

namespace A085174.P5062568561084847373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086430 (A086427 (A130922 (A074684 n).toNat).toNat).toNat).toNat

end

end A085174.P5062568561084847373

/-!
# A085175: Involution of natural numbers induced by the Catalan bijection gma085175 acting on symbolless S-expressions encoded by A014486/A063171.

The programs for A085175, there is no canonical definition to state claims against.
-/

/-! ## A085175.P3757067012337155672

`A085161(A085159(n))`
-/

namespace A085175.P3757067012337155672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085159 n).toNat

end

end A085175.P3757067012337155672

/-! ## A085175.P760816027413362838

`A085160(A085161(n))`
-/

namespace A085175.P760816027413362838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085160 (A085161 n).toNat

end

end A085175.P760816027413362838

/-! ## A085175.P1928590186504629807

`A085169(A057164(A085170(n)))`
-/

namespace A085175.P1928590186504629807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085169 (A057164 (A085170 n).toNat).toNat

end

end A085175.P1928590186504629807

/-! ## A085175.P18150981860516459185

`A057164(A086431(A086429(A057164(n))))`
-/

namespace A085175.P18150981860516459185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086431 (A086429 (A057164 n).toNat).toNat).toNat

end

end A085175.P18150981860516459185

/-! ## A085175.P5780509869852606241

`A085161(A085173(A085173(n)))`
-/

namespace A085175.P5780509869852606241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085161 (A085173 (A085173 n).toNat).toNat

end

end A085175.P5780509869852606241

/-! ## A085175.P13338950438124400190

`A085160(A057163(A085162(A057163(n))))`
-/

namespace A085175.P13338950438124400190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085160 (A057163 (A085162 (A057163 n).toNat).toNat).toNat

end

end A085175.P13338950438124400190

/-! ## A085175.P11473686269579217131

`A057164(A086430(A086425(A130922(n))))`
-/

namespace A085175.P11473686269579217131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A086430 (A086425 (A130922 n).toNat).toNat).toNat

end

end A085175.P11473686269579217131

/-! ## A085175.P16992430877316709718

`A085174(A085174(A130921(A074683(n))))`
-/

namespace A085175.P16992430877316709718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A085174 (A130921 (A074683 n).toNat).toNat).toNat

end

end A085175.P16992430877316709718

/-! ## A085175.P10600867687682261291

`A057508(A123719(n))`
-/

namespace A085175.P10600867687682261291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A123719 n).toNat

end

end A085175.P10600867687682261291

/-! ## A085175.P6838832826055552973

`A085174(A126320(n))`
-/

namespace A085175.P6838832826055552973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085174 (A126320 n).toNat

end

end A085175.P6838832826055552973

/-!
# A085176: Transpose of A085178.

The programs for A085176, there is no canonical definition to state claims against.
-/

/-! ## A085176.P11065694645056925163

`A085178(∑[char[∑[n]]]²-n)`
-/

namespace A085176.P11065694645056925163
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085178 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A085176.P11065694645056925163

/-! ## A085176.P13669273566782975846

`or(char[2], A085178(A038722(n+1)))`
-/

namespace A085176.P13669273566782975846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A085178 (A038722 (n + 1)).toNat)

end

end A085176.P13669273566782975846

/-! ## A085176.P10553701633767557432

`abs(1-A085178(A038722(C(n+1, n))))+1`
-/

namespace A085176.P10553701633767557432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A085178 (A038722 (Nat.choose (n + 1) n)).toNat| + 1

end

end A085176.P10553701633767557432

/-! ## A085176.P7776550172587681787

`A264668(n)+A085178(A038722(n+1))`
-/

namespace A085176.P7776550172587681787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A085178 (A038722 (n + 1)).toNat

end

end A085176.P7776550172587681787

/-! ## A085176.P1555552084388117913

`A085178(A038722(n+1))%A001512(n)`
-/

namespace A085176.P1555552084388117913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085178 (A038722 (n + 1)).toNat) (A001512 n)

end

end A085176.P1555552084388117913

/-! ## A085176.P16505829657334430114

`gcd(A000038(n), A085178(A038722(n+1)))`
-/

namespace A085176.P16505829657334430114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A085178 (A038722 (n + 1)).toNat)

end

end A085176.P16505829657334430114

/-! ## A085176.P8500557316840243822

`lcm(A057077(n), A085178(A038722(n+1)))`
-/

namespace A085176.P8500557316840243822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A085178 (A038722 (n + 1)).toNat)

end

end A085176.P8500557316840243822

/-! ## A085176.P6074827944340155415

`A007318(∑[n])*A085178(A038722(n+1))`
-/

namespace A085176.P6074827944340155415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A085178 (A038722 (n + 1)).toNat

end

end A085176.P6074827944340155415

/-! ## A085176.P12129989169456478485

`A085178(A038722(n+1))+(14*A000045(n))%2`
-/

namespace A085176.P12129989169456478485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085178 (A038722 (n + 1)).toNat + Int.tmod (14 * A000045 n) 2

end

end A085176.P12129989169456478485

/-!
# A085177: Inverse permutation to A085176.

The programs for A085177, there is no canonical definition to state claims against.
-/

/-! ## A085177.P14722793502821962283

`A038722(A085179(n+1))`
-/

namespace A085177.P14722793502821962283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A085179 (n + 1)).toNat

end

end A085177.P14722793502821962283

/-!
# A085178: Array A(x,y) giving the position of the y-th x in A080237 listed by rising antidiagonals.

The programs for A085178, there is no canonical definition to state claims against.
-/

/-! ## A085178.P170668734050776868

`A085176(∑[char[∑[n]]]²-n)`
-/

namespace A085178.P170668734050776868
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085176 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A085178.P170668734050776868

/-! ## A085178.P4027844097329508504

`or(char[1], A085176(A038722(n+1)))`
-/

namespace A085178.P4027844097329508504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A085176 (A038722 (n + 1)).toNat)

end

end A085178.P4027844097329508504

/-! ## A085178.P11209259824543188996

`A085176(A038722(n+1-and(1, 2*n)))-and(1, 2*n)`
-/

namespace A085178.P11209259824543188996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085176 (A038722 (n + 1 - Nat.land 1 (2 * n))).toNat - (Nat.land 1 (2 * n) : ℤ)

end

end A085178.P11209259824543188996

/-! ## A085178.P10832202436050846128

`A264668(n)+A085176(A038722(n+1))`
-/

namespace A085178.P10832202436050846128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A085176 (A038722 (n + 1)).toNat

end

end A085178.P10832202436050846128

/-! ## A085178.P12622793145096942826

`A085176(A038722(n+1))%A001512(n)`
-/

namespace A085178.P12622793145096942826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085176 (A038722 (n + 1)).toNat) (A001512 n)

end

end A085178.P12622793145096942826

/-! ## A085178.P65749905422202592

`gcd(A000038(n), A085176(A038722(n+1)))`
-/

namespace A085178.P65749905422202592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A085176 (A038722 (n + 1)).toNat)

end

end A085178.P65749905422202592

/-! ## A085178.P6227228451788427716

`lcm(A057077(n), A085176(A038722(n+1)))`
-/

namespace A085178.P6227228451788427716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A085176 (A038722 (n + 1)).toNat)

end

end A085178.P6227228451788427716

/-! ## A085178.P5058685560719546117

`A085176(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A085178.P5058685560719546117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085176 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A085178.P5058685560719546117

/-! ## A085178.P15833038550830032077

`A000040(n+2)%2*A085176(A038722(n+1))`
-/

namespace A085178.P15833038550830032077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A085176 (A038722 (n + 1)).toNat

end

end A085178.P15833038550830032077

/-!
# A085179: Inverse permutation to A085178.

The programs for A085179, there is no canonical definition to state claims against.
-/

/-! ## A085179.P12037881008004771251

`A038722(A085177(n+1))`
-/

namespace A085179.P12037881008004771251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A085177 (n + 1)).toNat

end

end A085179.P12037881008004771251

/-!
# A085182: n occurs A076050(n) (= A007001(n)+1) times.

The programs for A085182, there is no canonical definition to state claims against.
-/

/-! ## A085182.P6731187573248550354

`∑[C(2, A085190(n))]`
-/

namespace A085182.P6731187573248550354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A085190 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085182.P6731187573248550354

/-! ## A085182.P13159121046123570903

`∑[C(2, A085193(n))]`
-/

namespace A085182.P13159121046123570903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A085193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085182.P13159121046123570903

/-! ## A085182.P9128341514003643963

`∑[round(acot(A085189(n)))]`
-/

namespace A085182.P9128341514003643963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A085189 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085182.P9128341514003643963

/-! ## A085182.P6595322124383828608

`∑[round(acot(A085194(n)))]`
-/

namespace A085182.P6595322124383828608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A085194 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085182.P6595322124383828608

/-! ## A085182.P13619606412057189723

`∑[char[A080336(n)+n]]`
-/

namespace A085182.P13619606412057189723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085182.P13619606412057189723

/-! ## A085182.P16178776375489115825

`∑[C(2, A076050(n+1))]`
-/

namespace A085182.P16178776375489115825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A076050 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085182.P16178776375489115825

/-! ## A085182.P6282713095586198829

`∑[round(acot(A007001(n+1)))]`
-/

namespace A085182.P6282713095586198829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A007001 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085182.P6282713095586198829

/-! ## A085182.P10912615109632826916

`∑[A105348(A085190(n)-2)]`
-/

namespace A085182.P10912615109632826916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (A085190 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085182.P10912615109632826916

/-! ## A085182.P6335109682265544756

`∑[A000007(A085190(n)-2)]`
-/

namespace A085182.P6335109682265544756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A085190 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085182.P6335109682265544756

/-! ## A085182.P3873187525473616304

`∑[A008683(A085194(n)²)]`
-/

namespace A085182.P3873187525473616304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A085194 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085182.P3873187525473616304

/-!
# A085183: a(n) = A053645(A057520(n)), i.e., the terms of A014486 without their most significant bit (1) and the least significant bit (0).

The programs for A085183, there is no canonical definition to state claims against.
-/

/-! ## A085183.P8657936510918490583

`A053645(A057520(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085183.P8657936510918490583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A057520 (n + 1)).toNat

end

end A085183.P8657936510918490583

/-! ## A085183.P1695498956910080011

`A273943(∩[A036990(n+1), A089648(n+1)])`
-/

namespace A085183.P1695498956910080011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089648 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A085183.P1695498956910080011

/-! ## A085183.P16974322066854987039

`A053645(∑[A226478(n+1)])`
-/

namespace A085183.P16974322066854987039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085183.P16974322066854987039

/-! ## A085183.P8306296964903107189

`A053645(∑[A085192(n)/2])`
-/

namespace A085183.P8306296964903107189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085192 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A085183.P8306296964903107189

/-! ## A085183.P10345070883425276169

`A053645(A014486(n+1)/2)`
-/

namespace A085183.P10345070883425276169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.roundAway ((A014486 (n + 1) : ℚ) / 2)).toNat

end

end A085183.P10345070883425276169

/-! ## A085183.P4041723572759108632

`A164089(∑[A085192(n)])`
-/

namespace A085183.P4041723572759108632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A085183.P4041723572759108632

/-! ## A085183.P16067781353259659695

`A164089(A014486(n+1))`
-/

namespace A085183.P16067781353259659695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A014486 (n + 1)).toNat

end

end A085183.P16067781353259659695

/-! ## A085183.P1101847626741859400

`A053645(A004526(∑[A085192(n)]))`
-/

namespace A085183.P1101847626741859400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A085183.P1101847626741859400

/-! ## A085183.P6235482221886740090

`A028899(A085184(n+1))`
-/

namespace A085183.P6235482221886740090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A085184 (n + 1)).toNat

end

end A085183.P6235482221886740090

/-! ## A085183.P16523236564109868601

`A115379(∑[A085192(n)])/2`
-/

namespace A085183.P16523236564109868601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115379 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A085183.P16523236564109868601

/-!
# A085184: Sequence A085183 shown in base 4. Quaternary code for binary trees.

The programs for A085184, there is no canonical definition to state claims against.
-/

/-! ## A085184.P3702773228122113992

`A007090(A085183(n+1))`
-/

namespace A085184.P3702773228122113992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A085183 (n + 1)).toNat

end

end A085184.P3702773228122113992

/-! ## A085184.P18313017496708046781

`A007090(A053645(A057520(n+1)))`
-/

namespace A085184.P18313017496708046781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A053645 (A057520 (n + 1)).toNat).toNat

end

end A085184.P18313017496708046781

/-! ## A085184.P16945835331682577232

`∑[A163575(A130279(n+1))]-A037954(n)`
-/

namespace A085184.P16945835331682577232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (A130279 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037954 n

end

end A085184.P16945835331682577232

/-! ## A085184.P4912651159237768941

`∑[A163575(A005179(n+1)²)]-A037954(n)`
-/

namespace A085184.P4912651159237768941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (A005179 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037954 n

end

end A085184.P4912651159237768941

/-!
# A085185: Sequence A014486 shown in base 4.

The programs for A085185, there is no canonical definition to state claims against.
-/

/-! ## A085185.P8017376320825432292

`A007090(A014486(n))`
-/

namespace A085185.P8017376320825432292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A014486 n).toNat

end

end A085185.P8017376320825432292

/-! ## A085185.P4814605893348684475

`A085184(A057548(n))`
-/

namespace A085185.P4814605893348684475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085184 (A057548 n).toNat

end

end A085185.P4814605893348684475

/-! ## A085185.P6525028966272035981

`A007090(2*A057520(n))`
-/

namespace A085185.P6525028966272035981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (2 * A057520 n).toNat

end

end A085185.P6525028966272035981

/-! ## A085185.P14544708049564706393

`A007090(A194045(n)/2)`
-/

namespace A085185.P14544708049564706393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 2)).toNat

end

end A085185.P14544708049564706393

/-! ## A085185.P15984985596286579089

`A007090(lt[0, A080116(n)])`
-/

namespace A085185.P15984985596286579089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A085185.P15984985596286579089

/-! ## A085185.P6935754725903654635

`A007090(eq[1, A080116(n)])`
-/

namespace A085185.P6935754725903654635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A085185.P6935754725903654635

/-! ## A085185.P17249544484233522708

`A007090(record[n*A080116(n)])`
-/

namespace A085185.P17249544484233522708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085185.P17249544484233522708

/-! ## A085185.P1678631812136583506

`A007090(A005843(A057520(n)))`
-/

namespace A085185.P1678631812136583506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A005843 (A057520 n).toNat).toNat

end

end A085185.P1678631812136583506

/-! ## A085185.P18444660339690573702

`A007090(A057520(n)+A057520(n))`
-/

namespace A085185.P18444660339690573702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A057520 n + A057520 n).toNat

end

end A085185.P18444660339690573702

/-!
# A085186: Sequence A085195 shown in base 4.

The programs for A085186, there is no canonical definition to state claims against.
-/

/-! ## A085186.P7983990062283688775

`A007090(A085195(n))`
-/

namespace A085186.P7983990062283688775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A085195 n).toNat

end

end A085186.P7983990062283688775

/-! ## A085186.P17577085751571665613

`A007090(∑[A085194(abs(1-n))]-3)`
-/

namespace A085186.P17577085751571665613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085194 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (∑ j ∈ Finset.range (n + 1), f1 j - 3).toNat

end

end A085186.P17577085751571665613

/-! ## A085186.P14913000877431858271

`A007090((∑[A085193(n)]-A085193(n))/2)`
-/

namespace A085186.P14913000877431858271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A085193 n : ℤ) : ℚ) / 2)).toNat

end

end A085186.P14913000877431858271

/-! ## A085186.P16677721841663582817

`∩[A169939(n+1), A102236(n)]`
-/

namespace A085186.P16677721841663582817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102236 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085186.P16677721841663582817

/-! ## A085186.P16099721086481042906

`A244159(n)+A010054(A078355(n+5))`
-/

namespace A085186.P16099721086481042906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n + A010054 (A078355 (n + 5)).toNat

end

end A085186.P16099721086481042906

/-!
# A085187: Sequence A085188 shown in factorial base. (The longest prefix which can be shown with digits < 10.)

The programs for A085187, there is no canonical definition to state claims against.
-/

/-! ## A085187.P5536558377250360962

`A007623(A085188(n))`
-/

namespace A085187.P5536558377250360962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A085188 n).toNat

end

end A085187.P5536558377250360962

/-! ## A085187.P13350570088433271677

`A007623(∑[A085189(n)]-A085189(n))`
-/

namespace A085187.P13350570088433271677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (∑ j ∈ Finset.range (n + 1), f1 j - A085189 n).toNat

end

end A085187.P13350570088433271677

/-! ## A085187.P12852026271522048654

`A007623((∑[A085190(n)]-A085190(n))/2)`
-/

namespace A085187.P12852026271522048654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A085190 n : ℤ) : ℚ) / 2)).toNat

end

end A085187.P12852026271522048654

/-!
# A085188: Partial sums of A085189.

The programs for A085188, there is no canonical definition to state claims against.
-/

/-! ## A085188.P3561313223508531409

`a(n-1)+A085189(n-1)` with `a(0)=0`
-/

namespace A085188.P3561313223508531409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A085189 (n - 1)

end

end A085188.P3561313223508531409

/-! ## A085188.P11227757215116632513

`∑[A085190(floor(acot(n)+n)-1)]/2-1`
-/

namespace A085188.P11227757215116632513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085190 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ - 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 - 1

end

end A085188.P11227757215116632513

/-! ## A085188.P5434750085665748893

`∑[A085189(n)]-A085189(n)`
-/

namespace A085188.P5434750085665748893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A085189 n

end

end A085188.P5434750085665748893

/-! ## A085188.P13416388479886744621

`(∑[A085190(n)]-A085190(n))/2`
-/

namespace A085188.P13416388479886744621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085190 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A085190 n : ℤ) : ℚ) / 2

end

end A085188.P13416388479886744621

/-! ## A085188.P6861677753869549232

`A001057(A085190(n))+∑[A085189(n)]`
-/

namespace A085188.P6861677753869549232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A085190 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085188.P6861677753869549232

/-!
# A085189: Terms of A085190 halved.

The programs for A085189, there is no canonical definition to state claims against.
-/

/-! ## A085189.P2589865456191153504

`A085190(n)/2`
-/

namespace A085189.P2589865456191153504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085190 n : ℚ) / 2

end

end A085189.P2589865456191153504

/-! ## A085189.P14344463968170087498

`Δ[A085188(n)]`
-/

namespace A085189.P14344463968170087498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085189.P14344463968170087498

/-! ## A085189.P12316635801421197495

`A085188(n+1)-A085188(n)`
-/

namespace A085189.P12316635801421197495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085188 (n + 1) - A085188 n

end

end A085189.P12316635801421197495

/-! ## A085189.P10983857791570686384

`A085188(n+1)+A085188(n)/A153881(n+2)`
-/

namespace A085189.P10983857791570686384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085188 (n + 1) : ℚ) + (A085188 n : ℚ) / (A153881 (n + 2) : ℚ)

end

end A085189.P10983857791570686384

/-! ## A085189.P10906266331704116869

`A085191(A244216(n+1))/2`
-/

namespace A085189.P10906266331704116869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085191 (A244216 (n + 1)).toNat : ℚ) / 2

end

end A085189.P10906266331704116869

/-! ## A085189.P17560940490256415526

`A001281(A085190(n))`
-/

namespace A085189.P17560940490256415526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A085190 n).toNat

end

end A085189.P17560940490256415526

/-! ## A085189.P1288329002715199593

`A004524(A085190(n)+1)`
-/

namespace A085189.P1288329002715199593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A085190 n + 1).toNat

end

end A085189.P1288329002715199593

/-! ## A085189.P2763148971903083112

`A004526(A085190(n)+1)`
-/

namespace A085189.P2763148971903083112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A085190 n + 1).toNat

end

end A085189.P2763148971903083112

/-! ## A085189.P8410564220891704237

`A000463(A085190(n)-1)`
-/

namespace A085189.P8410564220891704237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A085190 n - 1).toNat

end

end A085189.P8410564220891704237

/-! ## A085189.P17436350942959580687

`A001057(A085190(n)-1)`
-/

namespace A085189.P17436350942959580687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A085190 n - 1).toNat

end

end A085189.P17436350942959580687

/-!
# A085190: Repeating part of A085191.

The programs for A085190, there is no canonical definition to state claims against.
-/

/-! ## A085190.P17240299454679943557

`A085191(A081291(n+1)-1)`
-/

namespace A085190.P17240299454679943557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085191 (A081291 (n + 1) - 1).toNat

end

end A085190.P17240299454679943557

/-! ## A085190.P12185667655589707983

`2*A085189(n)`
-/

namespace A085190.P12185667655589707983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085189 n

end

end A085190.P12185667655589707983

/-! ## A085190.P10178989209043925465

`Δ[2*A085188(n)]`
-/

namespace A085190.P10178989209043925465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085190.P10178989209043925465

/-! ## A085190.P11362571934875477620

`A085188(n+1)+A085189(n)-A085188(n)`
-/

namespace A085190.P11362571934875477620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085188 (n + 1) + (A085189 n - A085188 n)

end

end A085190.P11362571934875477620

/-! ## A085190.P12883573782697251433

`A085191(A244216(n+1))`
-/

namespace A085190.P12883573782697251433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085191 (A244216 (n + 1)).toNat

end

end A085190.P12883573782697251433

/-! ## A085190.P6805657564241049347

`A004277(A085189(n))`
-/

namespace A085190.P6805657564241049347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A085189 n).toNat

end

end A085190.P6805657564241049347

/-! ## A085190.P5156359076694981492

`A004277(Δ[A085188(n)])`
-/

namespace A085190.P5156359076694981492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (n + 1) - f1 n).toNat

end

end A085190.P5156359076694981492

/-! ## A085190.P13908936376208604604

`A005843(Δ[A085188(n)])`
-/

namespace A085190.P13908936376208604604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n).toNat

end

end A085190.P13908936376208604604

/-! ## A085190.P4881389221322322619

`A004275(A085189(n)+1)`
-/

namespace A085190.P4881389221322322619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A085189 n + 1).toNat

end

end A085190.P4881389221322322619

/-!
# A085191: First differences of A071156.

The programs for A085191, there is no canonical definition to state claims against.
-/

/-! ## A085191.P362814453584466014

`A071156(n+1)-A071156(n)`
-/

namespace A085191.P362814453584466014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 (n + 1) - A071156 n

end

end A085191.P362814453584466014

/-! ## A085191.P9619383896515594861

`A085190(A082853(n))-A000007(n)`
-/

namespace A085191.P9619383896515594861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085190 (A082853 n).toNat - A000007 n

end

end A085191.P9619383896515594861

/-! ## A085191.P975021987585642973

`A040000(n)*A085189(A082853(n))`
-/

namespace A085191.P975021987585642973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A085189 (A082853 n).toNat

end

end A085191.P975021987585642973

/-! ## A085191.P10299299600876136969

`A085190(A082853(n))/A054977(n)`
-/

namespace A085191.P10299299600876136969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085190 (A082853 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A085191.P10299299600876136969

/-! ## A085191.P15027389770361030579

`(A085190(A082853(n))-1)%A016754(n)+1`
-/

namespace A085191.P15027389770361030579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085190 (A082853 n).toNat - 1) (A016754 n) + 1

end

end A085191.P15027389770361030579

/-! ## A085191.P16319106808601469437

`A000032(C(2, n+2))*A085189(A082853(n))`
-/

namespace A085191.P16319106808601469437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A085189 (A082853 n).toNat

end

end A085191.P16319106808601469437

/-! ## A085191.P12052477139848263145

`A085190(A082853(n))^(A000040(n+1)%2)`
-/

namespace A085191.P12052477139848263145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085190 (A082853 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A085191.P12052477139848263145

/-! ## A085191.P17719243927147511989

`Δ[A071156(n)]`
-/

namespace A085191.P17719243927147511989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085191.P17719243927147511989

/-! ## A085191.P16515712127277516537

`runs[∑[A085199(n)]]`
-/

namespace A085191.P16515712127277516537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A085191.P16515712127277516537

/-! ## A085191.P15680703567850443847

`runs[∑[A085200(n)]]`
-/

namespace A085191.P15680703567850443847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085200 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A085191.P15680703567850443847

/-! ## A085191.P4778709585488743335

`A085190(A082853(n))+A008683(2*(n+1)²)`
-/

namespace A085191.P4778709585488743335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085190 (A082853 n).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A085191.P4778709585488743335

/-!
# A085192: First differences of A014486.

The programs for A085192, there is no canonical definition to state claims against.
-/

/-! ## A085192.P1770919730052003276

`A014486(n+1)-A014486(n)`
-/

namespace A085192.P1770919730052003276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 1) - A014486 n

end

end A085192.P1770919730052003276

/-! ## A085192.P17114312828178067514

`Δ[A014486(n)]`
-/

namespace A085192.P17114312828178067514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085192.P17114312828178067514

/-! ## A085192.P18033725683030218296

`2*A226478(n+1)`
-/

namespace A085192.P18033725683030218296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226478 (n + 1)

end

end A085192.P18033725683030218296

/-! ## A085192.P16556579897529551133

`Δ[2*A057520(n)]`
-/

namespace A085192.P16556579897529551133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085192.P16556579897529551133

/-! ## A085192.P9309277566744458906

`Δ[A194045(n)/2]`
-/

namespace A085192.P9309277566744458906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194045 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085192.P9309277566744458906

/-! ## A085192.P1789767425881510558

`Δ[A085224(n)/4]`
-/

namespace A085192.P1789767425881510558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085224 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085192.P1789767425881510558

/-! ## A085192.P10052284551167002550

`A226478(n+1)+A226478(n+1)/A014963(A008458(n))`
-/

namespace A085192.P10052284551167002550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226478 (n + 1) : ℚ) + (A226478 (n + 1) : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A085192.P10052284551167002550

/-! ## A085192.P6663108567387799816

`Δ[lt[0, A080116(n)]]`
-/

namespace A085192.P6663108567387799816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A085192.P6663108567387799816

/-! ## A085192.P2897062671507311822

`A005843(Δ[A057520(n)])`
-/

namespace A085192.P2897062671507311822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n).toNat

end

end A085192.P2897062671507311822

/-! ## A085192.P12425165801763595371

`A004277(A226478(n+1))`
-/

namespace A085192.P12425165801763595371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A226478 (n + 1)).toNat

end

end A085192.P12425165801763595371

/-! ## A085192.P16332697240730215006

`A274611(A226478(n+1)+1)-2`
-/

namespace A085192.P16332697240730215006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274611 (A226478 (n + 1) + 1).toNat - 2

end

end A085192.P16332697240730215006

/-! ## A085192.P3687144072729791634

`A005843(A057520(n+1)-A057520(n))`
-/

namespace A085192.P3687144072729791634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A057520 (n + 1) - A057520 n).toNat

end

end A085192.P3687144072729791634

/-! ## A085192.P15891805585073914004

`Δ[A173237(A194045(n)+1)]`
-/

namespace A085192.P15891805585073914004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173237 (A194045 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085192.P15891805585073914004

/-! ## A085192.P4492370782187160855

`A173237(Δ[A194045(n)]-1)`
-/

namespace A085192.P4492370782187160855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173237 (f1 (n + 1) - f1 n - 1).toNat

end

end A085192.P4492370782187160855

/-! ## A085192.P7057743257876455314

`A001281(A194045(n+1)-A194045(n))`
-/

namespace A085192.P7057743257876455314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A194045 (n + 1) - A194045 n).toNat

end

end A085192.P7057743257876455314

/-!
# A085193: Repeating part of A085192.

The programs for A085193, there is no canonical definition to state claims against.
-/

/-! ## A085193.P6810962504498680577

`A085192(A081291(n+1)-1)`
-/

namespace A085193.P6810962504498680577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 (A081291 (n + 1) - 1).toNat

end

end A085193.P6810962504498680577

/-! ## A085193.P18434464590457664076

`2*A085194(n)`
-/

namespace A085193.P18434464590457664076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085194 n

end

end A085193.P18434464590457664076

/-! ## A085193.P14579100688029483736

`Δ[2*A085195(n)]`
-/

namespace A085193.P14579100688029483736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085193.P14579100688029483736

/-! ## A085193.P7126958050824779777

`A085195(n+1)+A085194(n)-A085195(n)`
-/

namespace A085193.P7126958050824779777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085195 (n + 1) + (A085194 n - A085195 n)

end

end A085193.P7126958050824779777

/-! ## A085193.P4190421915769358448

`A085192(A244216(n+1))`
-/

namespace A085193.P4190421915769358448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 (A244216 (n + 1)).toNat

end

end A085193.P4190421915769358448

/-! ## A085193.P8576596630141606815

`A004277(A085194(n))`
-/

namespace A085193.P8576596630141606815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A085194 n).toNat

end

end A085193.P8576596630141606815

/-! ## A085193.P15672726615583696878

`A004275(A085194(n)+1)`
-/

namespace A085193.P15672726615583696878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A085194 n + 1).toNat

end

end A085193.P15672726615583696878

/-! ## A085193.P12904465904828298376

`2*A226478(lt[A057501(n), n])`
-/

namespace A085193.P12904465904828298376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226478 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085193.P12904465904828298376

/-! ## A085193.P7646315180744461684

`2*A226478(lt[A074680(n), n])`
-/

namespace A085193.P7646315180744461684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226478 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085193.P7646315180744461684

/-! ## A085193.P8286775593111463237

`2*A226478(A244216(n+2))`
-/

namespace A085193.P8286775593111463237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226478 (A244216 (n + 2)).toNat

end

end A085193.P8286775593111463237

/-! ## A085193.P5923928687105961483

`2*A226478(lt[A129610(n), n])`
-/

namespace A085193.P5923928687105961483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129610 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226478 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085193.P5923928687105961483

/-!
# A085194: Terms of A085193 halved. The repeating part in the first differences of A057520.

The programs for A085194, there is no canonical definition to state claims against.
-/

/-! ## A085194.P1685514600012667987

`A085193(n)/2`
-/

namespace A085194.P1685514600012667987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085193 n : ℚ) / 2

end

end A085194.P1685514600012667987

/-! ## A085194.P14295681506447024139

`Δ[A085195(n)]`
-/

namespace A085194.P14295681506447024139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085194.P14295681506447024139

/-! ## A085194.P10633878708797149171

`A085195(n+1)-A085195(n)`
-/

namespace A085194.P10633878708797149171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085195 (n + 1) - A085195 n

end

end A085194.P10633878708797149171

/-! ## A085194.P11616709769371617677

`A085192(A244216(n+1))/2`
-/

namespace A085194.P11616709769371617677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085192 (A244216 (n + 1)).toNat : ℚ) / 2

end

end A085194.P11616709769371617677

/-! ## A085194.P5234385750584163702

`A226478(A081291(n+1))`
-/

namespace A085194.P5234385750584163702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (A081291 (n + 1)).toNat

end

end A085194.P5234385750584163702

/-! ## A085194.P9106992341020372173

`A226478(lt[A057501(n), n])`
-/

namespace A085194.P9106992341020372173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085194.P9106992341020372173

/-! ## A085194.P5414341559845521775

`A226478(lt[A074680(n), n])`
-/

namespace A085194.P5414341559845521775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085194.P5414341559845521775

/-! ## A085194.P6069233727315305024

`A226478(record[A074679(n+2)])`
-/

namespace A085194.P6069233727315305024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A085194.P6069233727315305024

/-! ## A085194.P6416770786641701916

`A226478(A244216(n+2))`
-/

namespace A085194.P6416770786641701916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (A244216 (n + 2)).toNat

end

end A085194.P6416770786641701916

/-! ## A085194.P17191037383680109275

`A001281(A085193(n))`
-/

namespace A085194.P17191037383680109275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A085193 n).toNat

end

end A085194.P17191037383680109275

/-! ## A085194.P13655805665422464444

`A001057(A085193(n)-1)`
-/

namespace A085194.P13655805665422464444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A085193 n - 1).toNat

end

end A085194.P13655805665422464444

/-! ## A085194.P12328012030061131039

`A226478(lt[A129610(n), n])`
-/

namespace A085194.P12328012030061131039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129610 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085194.P12328012030061131039

/-! ## A085194.P8775250552086969973

`A226478(lt[A130370(n), n])`
-/

namespace A085194.P8775250552086969973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226478 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A085194.P8775250552086969973

/-! ## A085194.P13504800135691243570

`Δ[A001281(A014486(n+65))]`
-/

namespace A085194.P13504800135691243570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A014486 (n + 65)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A085194.P13504800135691243570

/-! ## A085194.P7646143414775184933

`A002265(2*Δ[A014486(n+65)])`
-/

namespace A085194.P7646143414775184933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 65)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (f1 (n + 1) - f1 n)).toNat

end

end A085194.P7646143414775184933

/-! ## A085194.P495743170500195775

`A025480(2*Δ[A014486(n+65)]+1)`
-/

namespace A085194.P495743170500195775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 65)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * (f1 (n + 1) - f1 n) + 1).toNat

end

end A085194.P495743170500195775

/-! ## A085194.P66627454381893774

`A004526(2*Δ[A014486(n+65)])/2`
-/

namespace A085194.P66627454381893774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 65)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (2 * (f1 (n + 1) - f1 n)).toNat : ℚ) / 2

end

end A085194.P66627454381893774

/-!
# A085195: Partial sums of A085194.

The programs for A085195, there is no canonical definition to state claims against.
-/

/-! ## A085195.P13614039377409147893

`a(n-1)+A085194(n-1)` with `a(0)=0`
-/

namespace A085195.P13614039377409147893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A085194 (n - 1)

end

end A085195.P13614039377409147893

/-! ## A085195.P7919718078398243997

`∑[A085194(abs(1-n))]-3`
-/

namespace A085195.P7919718078398243997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085194 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A085195.P7919718078398243997

/-! ## A085195.P13049383739355959868

`∪[∑[A085194(n)], A000695(n)]`
-/

namespace A085195.P13049383739355959868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085194 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A085195.P13049383739355959868

/-! ## A085195.P18172583764212144050

`(∑[A085193(n)]-A085193(n))/2`
-/

namespace A085195.P18172583764212144050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085193 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A085193 n : ℤ) : ℚ) / 2

end

end A085195.P18172583764212144050

/-! ## A085195.P4116675376656279579

`A000027(∑[A085194(n)])-A085194(n)`
-/

namespace A085195.P4116675376656279579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A085194 n

end

end A085195.P4116675376656279579

/-! ## A085195.P6035108032844188866

`∑{d}[A085194(n)-∑[A085194(n)], A000010(#)]`
-/

namespace A085195.P6035108032844188866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085194 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085194 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A085195.P6035108032844188866

/-! ## A085195.P9174258177370917413

`A001281(∑[A085193(n)]-A085193(n))`
-/

namespace A085195.P9174258177370917413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ j ∈ Finset.range (n + 1), f1 j - A085193 n).toNat

end

end A085195.P9174258177370917413

/-! ## A085195.P11115961799793667918

`A004525(∑[A085193(n)]-A085193(n))`
-/

namespace A085195.P11115961799793667918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j - A085193 n).toNat

end

end A085195.P11115961799793667918

/-! ## A085195.P5531324639742304415

`A004526(∑[A085193(n)]-A085193(n))`
-/

namespace A085195.P5531324639742304415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j - A085193 n).toNat

end

end A085195.P5531324639742304415

/-!
# A085196: Difference of row 1 and column 1 of the array A085201.

The programs for A085196, there is no canonical definition to state claims against.
-/

/-! ## A085196.P8342246728486345648

`A085223(n)-A072795(n)`
-/

namespace A085196.P8342246728486345648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085223 n - A072795 n

end

end A085196.P8342246728486345648

/-! ## A085196.P15363459916663032518

`A080336(A082853(n))`
-/

namespace A085196.P15363459916663032518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 (A082853 n).toNat

end

end A085196.P15363459916663032518

/-! ## A085196.P10352263909045495930

`A080336(A082854(n)-1)`
-/

namespace A085196.P10352263909045495930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 (A082854 n - 1).toNat

end

end A085196.P10352263909045495930

/-! ## A085196.P18347925623065646153

`A080336(n-A082852(n))`
-/

namespace A085196.P18347925623065646153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 ((n : ℤ) - A082852 n).toNat

end

end A085196.P18347925623065646153

/-! ## A085196.P11314027375639497782

`A085223(n)-eq[1, A072800(n)%4]`
-/

namespace A085196.P11314027375639497782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072800 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085223 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A085196.P11314027375639497782

/-! ## A085196.P4649996702781559684

`A085223(n)-lt[and(n, -2), A074680(n)]`
-/

namespace A085196.P4649996702781559684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085223 n - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A085196.P4649996702781559684

/-! ## A085196.P14272762809067121041

`lt[1, A057551(n)]+1-A072795(n)`
-/

namespace A085196.P14272762809067121041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - A072795 n

end

end A085196.P14272762809067121041

/-! ## A085196.P13215801546360793173

`A082853(lt[1, A057551(n)]+1-A082853(n))`
-/

namespace A085196.P13215801546360793173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - A082853 n).toNat

end

end A085196.P13215801546360793173

/-! ## A085196.P18350950632224643565

`A057503(A057548(n))-A072795(n)`
-/

namespace A085196.P18350950632224643565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057503 (A057548 n).toNat - A072795 n

end

end A085196.P18350950632224643565

/-! ## A085196.P6948559559325712027

`lt[1, A057551(n)]+1-A069770(A057548(n))`
-/

namespace A085196.P6948559559325712027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - A069770 (A057548 n).toNat

end

end A085196.P6948559559325712027

/-! ## A085196.P1906128756021707188

`A057501(A057548(n))-(lt[n, A057501(n+1)]+1)`
-/

namespace A085196.P1906128756021707188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 (A057548 n).toNat - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A085196.P1906128756021707188

/-!
# A085197: Positions of ones in A007001. Repeating part in each sub-permutation A082315[A014137(n-1)..A014138(n-1)] normalized to begin from 1.

The programs for A085197, there is no canonical definition to state claims against.
-/

/-! ## A085197.P11270545361363926057

`A080336(n)+n+1`
-/

namespace A085197.P11270545361363926057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 n + (n + 1 : ℤ)

end

end A085197.P11270545361363926057

/-! ## A085197.P12623785015830812281

`a(n-1)+A076050(n)` with `a(0)=1`
-/

namespace A085197.P12623785015830812281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A076050 n

end

end A085197.P12623785015830812281

/-! ## A085197.P11398022484729850108

`A082854(A082315(A072795(A081291(n))))`
-/

namespace A085197.P11398022484729850108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082854 (A082315 (A072795 (A081291 n).toNat).toNat).toNat

end

end A085197.P11398022484729850108

/-! ## A085197.P13943020448633180506

`a(n-1)+A007001(n)+1` with `a(0)=1`
-/

namespace A085197.P13943020448633180506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A007001 n + 1)

end

end A085197.P13943020448633180506

/-! ## A085197.P259883266921592068

`∑[∑[A133912(A028310(n))]]`
-/

namespace A085197.P259883266921592068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133912 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085197.P259883266921592068

/-! ## A085197.P3743267823739758617

`∑[A007001(A000007(n)+n)+1]-1`
-/

namespace A085197.P3743267823739758617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A000007 n + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A085197.P3743267823739758617

/-! ## A085197.P8400157208494658857

`∑[A076050(n+1)]-A007001(n+1)`
-/

namespace A085197.P8400157208494658857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007001 (n + 1)

end

end A085197.P8400157208494658857

/-! ## A085197.P3131167155200073681

`∑[A076050(n+1)-A133912(n+1)]`
-/

namespace A085197.P3131167155200073681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076050 (n + 1) - A133912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085197.P3131167155200073681

/-! ## A085197.P4051149216705502002

`A085196(A081291(n))+n+1`
-/

namespace A085197.P4051149216705502002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085196 (A081291 n).toNat + (n + 1 : ℤ)

end

end A085197.P4051149216705502002

/-! ## A085197.P10016857836972588532

`eq[1, A085189(n)]+1`
-/

namespace A085197.P10016857836972588532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085197.P10016857836972588532

/-! ## A085197.P9167740834131000812

`eq[1, A085194(n)]+1`
-/

namespace A085197.P9167740834131000812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085194 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085197.P9167740834131000812

/-! ## A085197.P11105705311074469149

`eq[1, A085194(abs(1-n))]`
-/

namespace A085197.P11105705311074469149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085194 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085197.P11105705311074469149

/-! ## A085197.P4271613710578567487

`record[(n+1)/A007001(n+1)]`
-/

namespace A085197.P4271613710578567487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007001 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A085197.P4271613710578567487

/-! ## A085197.P8553727121700588004

`eq[A007001(n+1), A165063(n+1)]`
-/

namespace A085197.P8553727121700588004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085197.P8553727121700588004

/-! ## A085197.P294117213007852185

`eq[A007001(n+1), A236213(n+1)]`
-/

namespace A085197.P294117213007852185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085197.P294117213007852185

/-! ## A085197.P5436871483102112546

`eq[3, runs[A237449(n)]]`
-/

namespace A085197.P5436871483102112546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237449 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A085197.P5436871483102112546

/-! ## A085197.P8151355132737153661

`eq[2, A000115(A085194(n))]`
-/

namespace A085197.P8151355132737153661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (A085194 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085197.P8151355132737153661

/-! ## A085197.P149361509029386247

`eq[1, A005206(A085189(n)-1)]`
-/

namespace A085197.P149361509029386247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A085189 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085197.P149361509029386247

/-! ## A085197.P5087563626874401336

`eq[2, A000115(A085189(n))]`
-/

namespace A085197.P5087563626874401336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (A085189 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A085197.P5087563626874401336

/-!
# A085199: Inverse function of N -> N injection A071156.

The programs for A085199, there is no canonical definition to state claims against.
-/

/-! ## A085199.P12072217715339600078

`A057164(A085200(n))`
-/

namespace A085199.P12072217715339600078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A085200 n).toNat

end

end A085199.P12072217715339600078

/-! ## A085199.P1110054619606450138

`A085200(A071156(A085200(A085200(A071155(n)))))`
-/

namespace A085199.P1110054619606450138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085200 (A071156 (A085200 (A085200 (A071155 n).toNat).toNat).toNat).toNat

end

end A085199.P1110054619606450138

/-! ## A085199.P13930356362337648872

`A057508(A085200(n)^A304042(n))`
-/

namespace A085199.P13930356362337648872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (SequenceMachineLib.roundAway ((A085200 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A085199.P13930356362337648872

/-! ## A085199.P14637822899289741730

`A275849(A321907(n+2))`
-/

namespace A085199.P14637822899289741730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A321907 (n + 2)).toNat

end

end A085199.P14637822899289741730

/-! ## A085199.P2434438957372264811

`A224458(A007097(A049084(n+2)))`
-/

namespace A085199.P2434438957372264811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224458 (A007097 (A049084 (n + 2)).toNat).toNat

end

end A085199.P2434438957372264811

