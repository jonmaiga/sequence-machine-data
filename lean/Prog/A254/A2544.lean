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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A254400: a(n) = floor(b(n)), where b(n) = b(n-1)^(3/2), b(1) = 2.

The programs for A254400, the canonical program `A254400.P8816140618909727100` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254400 has offset 1).

The definition of A254400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254400.P8816140618909727100

`floor(2^(3/2)^n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254400

/-- `floor(2^(3/2)^n)` -/
def P8816140618909727100.Spec : Prop :=
  ∀ n, P8816140618909727100.a n = A254400 (n + 1)

theorem P8816140618909727100.correct : P8816140618909727100.Spec := by
  intro n
  simp only [A254400, Nat.add_sub_cancel]

end A254400

/-! ## A254400.P7355719276532851961

`ceil(2^(3/2)^n-A001221(A008578(n+1)))`
-/

namespace A254400.P7355719276532851961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ (((3 : ℚ) / 2) ^ n : ℝ) - (A001221 (A008578 (n + 1)).toNat : ℝ)⌉

end

end A254400.P7355719276532851961

namespace A254400

/-- `ceil(2^(3/2)^n-A001221(A008578(n+1)))` -/
def P7355719276532851961.Spec : Prop :=
  ∀ n, P7355719276532851961.a n = A254400 (n + 1)

end A254400

/-! ## A254400.P4410598788721681183

`A033999(n)²*floor(sqrt(A254403(n+1)))`
-/

namespace A254400.P4410598788721681183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * Int.sqrt (A254403 (n + 1))

end

end A254400.P4410598788721681183

namespace A254400

/-- `A033999(n)²*floor(sqrt(A254403(n+1)))` -/
def P4410598788721681183.Spec : Prop :=
  ∀ n, P4410598788721681183.a n = A254400 (n + 1)

end A254400

/-! ## A254400.P16752150706598439927

`A000007(n+1)+floor(sqrt(A254403(n+1)))`
-/

namespace A254400.P16752150706598439927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A254403 (n + 1))

end

end A254400.P16752150706598439927

namespace A254400

/-- `A000007(n+1)+floor(sqrt(A254403(n+1)))` -/
def P16752150706598439927.Spec : Prop :=
  ∀ n, P16752150706598439927.a n = A254400 (n + 1)

end A254400

/-!
# A254401: a(n) = floor(b(n)), where b(n) = b(n-1)^(3/2), b(1) = 3.

The programs for A254401, the canonical program `A254401.P16245803461338049559` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254401 has offset 1).

The definition of A254401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254401.P16245803461338049559

`floor(3^(3/2)^n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254401

/-- `floor(3^(3/2)^n)` -/
def P16245803461338049559.Spec : Prop :=
  ∀ n, P16245803461338049559.a n = A254401 (n + 1)

theorem P16245803461338049559.correct : P16245803461338049559.Spec := by
  intro n
  simp only [A254401, Nat.add_sub_cancel]

end A254401

/-!
# A254402: a(n) = floor(a(n-1)^(3/2)), a(1) = 3.

The programs for A254402, the canonical program `A254402.P11604658966529871388` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254402 has offset 1).

The definition of A254402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)^(3/2))` (program `A254402.P11604658966529871388`, by `A254402.P11604658966529871388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254402.P11604658966529871388

`floor(a(n-1)^(3/2))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254402

/-- `floor(a(n-1)^(3/2))` -/
def P11604658966529871388.Spec : Prop :=
  ∀ n, P11604658966529871388.a n = A254402 (n + 1)

theorem P11604658966529871388.correct : P11604658966529871388.Spec := by
  intro n
  simp only [A254402, Nat.add_sub_cancel]

end A254402

/-! ## A254402.P10280074297903691345

`floor(sqrt(a(n-1))^3)` with `a(0)=3`
-/

namespace A254402.P10280074297903691345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊Real.sqrt (a (n - 1) : ℝ) ^ 3⌋

end

end A254402.P10280074297903691345

namespace A254402

/-- `floor(sqrt(a(n-1))^3)` -/
def P10280074297903691345.Spec : Prop :=
  ∀ n, P10280074297903691345.a n = A254402 (n + 1)

end A254402

/-! ## A254402.P1798990319709347021

`floor(root(a(n-1), 2/3))` with `a(0)=3`
-/

namespace A254402.P1798990319709347021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℝ) ^ (1 / ((2 : ℚ) / 3 : ℝ))⌋

end

end A254402.P1798990319709347021

namespace A254402

/-- `floor(root(a(n-1), 2/3))` -/
def P1798990319709347021.Spec : Prop :=
  ∀ n, P1798990319709347021.a n = A254402 (n + 1)

theorem P1798990319709347021.correct : P1798990319709347021.Spec := by
  intro n
  simp only [A254402, Nat.add_sub_cancel, A254402.P1798990319709347021.a, A254402.P11604658966529871388.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254402

/-! ## A254402.P807683326854845976

`floor(sqrt(a(n-1))*a(n-1))` with `a(0)=3`
-/

namespace A254402.P807683326854845976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊Real.sqrt (a (n - 1) : ℝ) * (a (n - 1) : ℝ)⌋

end

end A254402.P807683326854845976

namespace A254402

/-- `floor(sqrt(a(n-1))*a(n-1))` -/
def P807683326854845976.Spec : Prop :=
  ∀ n, P807683326854845976.a n = A254402 (n + 1)

end A254402

/-! ## A254402.P13678800894265146658

`floor(sqrt(a(A023443(n))^3))` with `a(0)=3`
-/

namespace A254402.P13678800894265146658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.sqrt (a (A023443 n).toNat ^ 3)

end

end A254402.P13678800894265146658

namespace A254402

/-- `floor(sqrt(a(A023443(n))^3))` -/
def P13678800894265146658.Spec : Prop :=
  ∀ n, (P13678800894265146658.a n : ℤ) = A254402 (n + 1)

end A254402

/-!
# A254403: a(n) = floor(b(n)), where b(n) = b(n-1)^(3/2), b(1) = 4.

The programs for A254403, the canonical program `A254403.P1671765534872695393` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254403 has offset 1).

The definition of A254403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254403.P1671765534872695393

`floor(4^(3/2)^n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254403

/-- `floor(4^(3/2)^n)` -/
def P1671765534872695393.Spec : Prop :=
  ∀ n, P1671765534872695393.a n = A254403 (n + 1)

theorem P1671765534872695393.correct : P1671765534872695393.Spec := by
  intro n
  simp only [A254403, Nat.add_sub_cancel]

end A254403

/-!
# A254404: a(n) = floor(a(n-1)^(3/2)), a(1) = 4.

The programs for A254404, the canonical program `A254404.P10331077534850731240` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254404 has offset 1).

The definition of A254404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)^(3/2))` (program `A254404.P10331077534850731240`, by `A254404.P10331077534850731240.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254404.P10331077534850731240

`floor(a(n-1)^(3/2))` with `a(0)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254404

/-- `floor(a(n-1)^(3/2))` -/
def P10331077534850731240.Spec : Prop :=
  ∀ n, P10331077534850731240.a n = A254404 (n + 1)

theorem P10331077534850731240.correct : P10331077534850731240.Spec := by
  intro n
  simp only [A254404, Nat.add_sub_cancel]

end A254404

/-! ## A254404.P8775668609602683251

`floor(sqrt(a(n-1))^3)` with `a(0)=4`
-/

namespace A254404.P8775668609602683251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊Real.sqrt (a (n - 1) : ℝ) ^ 3⌋

end

end A254404.P8775668609602683251

namespace A254404

/-- `floor(sqrt(a(n-1))^3)` -/
def P8775668609602683251.Spec : Prop :=
  ∀ n, P8775668609602683251.a n = A254404 (n + 1)

end A254404

/-! ## A254404.P18163143124974227008

`floor(root(a(n-1), 2/3))` with `a(0)=4`
-/

namespace A254404.P18163143124974227008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(a (n - 1) : ℝ) ^ (1 / ((2 : ℚ) / 3 : ℝ))⌋

end

end A254404.P18163143124974227008

namespace A254404

/-- `floor(root(a(n-1), 2/3))` -/
def P18163143124974227008.Spec : Prop :=
  ∀ n, P18163143124974227008.a n = A254404 (n + 1)

theorem P18163143124974227008.correct : P18163143124974227008.Spec := by
  intro n
  simp only [A254404, Nat.add_sub_cancel, A254404.P18163143124974227008.a, A254404.P10331077534850731240.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254404

/-! ## A254404.P8051854586533360737

`floor(sqrt(a(n-1))*a(n-1))` with `a(0)=4`
-/

namespace A254404.P8051854586533360737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊Real.sqrt (a (n - 1) : ℝ) * (a (n - 1) : ℝ)⌋

end

end A254404.P8051854586533360737

namespace A254404

/-- `floor(sqrt(a(n-1))*a(n-1))` -/
def P8051854586533360737.Spec : Prop :=
  ∀ n, P8051854586533360737.a n = A254404 (n + 1)

end A254404

/-! ## A254404.P4739935454661213226

`floor(sqrt(a(A023443(n))^3))` with `a(0)=4`
-/

namespace A254404.P4739935454661213226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.sqrt (a (A023443 n).toNat ^ 3)

end

end A254404.P4739935454661213226

namespace A254404

/-- `floor(sqrt(a(A023443(n))^3))` -/
def P4739935454661213226.Spec : Prop :=
  ∀ n, (P4739935454661213226.a n : ℤ) = A254404 (n + 1)

end A254404

/-!
# A254405: a(n) = floor(b(n)), where b(n) = b(n-1)^(5/2), b(1) = 2.

The programs for A254405, the canonical program `A254405.P16376408313232959789` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254405 has offset 1).

The definition of A254405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254405.P16376408313232959789

`floor(2^(5/2)^n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254405

/-- `floor(2^(5/2)^n)` -/
def P16376408313232959789.Spec : Prop :=
  ∀ n, P16376408313232959789.a n = A254405 (n + 1)

theorem P16376408313232959789.correct : P16376408313232959789.Spec := by
  intro n
  simp only [A254405, Nat.add_sub_cancel]

end A254405

/-!
# A254406: a(n) = floor(a(n-1)^(5/2)), a(1) = 2.

The programs for A254406, the canonical program `A254406.P10979113520151818838` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254406 has offset 1).

The definition of A254406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)^(5/2))` (program `A254406.P10979113520151818838`, by `A254406.P10979113520151818838.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254406.P10979113520151818838

`floor(a(n-1)^(5/2))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254406

/-- `floor(a(n-1)^(5/2))` -/
def P10979113520151818838.Spec : Prop :=
  ∀ n, P10979113520151818838.a n = A254406 (n + 1)

theorem P10979113520151818838.correct : P10979113520151818838.Spec := by
  intro n
  simp only [A254406, Nat.add_sub_cancel]

end A254406

/-! ## A254406.P6579289943801131679

`floor(sqrt(a(n-1))^5)` with `a(0)=2`
-/

namespace A254406.P6579289943801131679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊Real.sqrt (a (n - 1) : ℝ) ^ 5⌋

end

end A254406.P6579289943801131679

namespace A254406

/-- `floor(sqrt(a(n-1))^5)` -/
def P6579289943801131679.Spec : Prop :=
  ∀ n, P6579289943801131679.a n = A254406 (n + 1)

end A254406

/-!
# A254407: a(n) = n*(n+1)*(11*n +10)/6.

The programs for A254407, the canonical program `A254407.P15507762592062136051` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254407 has offset 0).

The definition of A254407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(11*n+10)/6` (program `A254407.P4604394712767802756`, by `A254407.P4604394712767802756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254407.P4604394712767802756

`n*(n+1)*(11*n+10)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254407.P4604394712767802756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (11 * n + 10) : ℚ) / 6

end

end A254407.P4604394712767802756

namespace A254407

/-- `n*(n+1)*(11*n+10)/6` -/
def P4604394712767802756.Spec : Prop :=
  ∀ n, P4604394712767802756.a n = (A254407 n : ℚ)

theorem P4604394712767802756.correct : P4604394712767802756.Spec := by
  intro n
  simp only [A254407, Nat.add_sub_cancel, A254407.P4604394712767802756.a, A254407.P15507762592062136051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254407

/-! ## A254407.P16980863220639837407

`∑[∑[a(n-1)+11]]` with `a(0)=0, a(1)=7`
-/

namespace A254407.P16980863220639837407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f2 =>
  f2 (n - 1) + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254407.P16980863220639837407

namespace A254407

/-- `∑[∑[a(n-1)+11]]` -/
def P16980863220639837407.Spec : Prop :=
  ∀ n, (P16980863220639837407.a n : ℤ) = A254407 n

end A254407

/-! ## A254407.P6297581357916146449

`∑[7*n²]-∑[3*C(n, 2)]`
-/

namespace A254407.P6297581357916146449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A254407.P6297581357916146449

namespace A254407

/-- `∑[7*n²]-∑[3*C(n, 2)]` -/
def P6297581357916146449.Spec : Prop :=
  ∀ n, P6297581357916146449.a n = A254407 n

end A254407

/-! ## A254407.P15507762592062136051

`2*n*(n+1)²-C(n+2, 3)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254407

/-- `2*n*(n+1)²-C(n+2, 3)` -/
def P15507762592062136051.Spec : Prop :=
  ∀ n, P15507762592062136051.a n = A254407 n

theorem P15507762592062136051.correct : P15507762592062136051.Spec := by
  intro n
  simp only [A254407]

end A254407

/-! ## A254407.P6863934584524010104

`∑[lcm(2*n+1, 2*n)]+n*∑[n]`
-/

namespace A254407.P6863934584524010104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A254407.P6863934584524010104

namespace A254407

/-- `∑[lcm(2*n+1, 2*n)]+n*∑[n]` -/
def P6863934584524010104.Spec : Prop :=
  ∀ n, (P6863934584524010104.a n : ℤ) = A254407 n

end A254407

/-! ## A254407.P14305258782171546457

`2*n*∑[2*n+1]-∑[C(n+1, 2)]`
-/

namespace A254407.P14305258782171546457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A254407.P14305258782171546457

namespace A254407

/-- `2*n*∑[2*n+1]-∑[C(n+1, 2)]` -/
def P14305258782171546457.Spec : Prop :=
  ∀ n, P14305258782171546457.a n = A254407 n

end A254407

/-! ## A254407.P1457578550547268350

`∑[A254963(n)]`
-/

namespace A254407.P1457578550547268350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254407.P1457578550547268350

namespace A254407

/-- `∑[A254963(n)]` -/
def P1457578550547268350.Spec : Prop :=
  ∀ n, P1457578550547268350.a n = A254407 n

end A254407

/-! ## A254407.P10546190848192617125

`∑[A022269(n)+n]`
-/

namespace A254407.P10546190848192617125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022269 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254407.P10546190848192617125

namespace A254407

/-- `∑[A022269(n)+n]` -/
def P10546190848192617125.Spec : Prop :=
  ∀ n, P10546190848192617125.a n = A254407 n

end A254407

/-! ## A254407.P4332584674400510318

`∑[A081266(n)+n²]`
-/

namespace A254407.P4332584674400510318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254407.P4332584674400510318

namespace A254407

/-- `∑[A081266(n)+n²]` -/
def P4332584674400510318.Spec : Prop :=
  ∀ n, P4332584674400510318.a n = A254407 n

end A254407

/-! ## A254407.P2840390286134432332

`A132112(n)+∑[3*n]`
-/

namespace A254407.P2840390286134432332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132112 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A254407.P2840390286134432332

namespace A254407

/-- `A132112(n)+∑[3*n]` -/
def P2840390286134432332.Spec : Prop :=
  ∀ n, P2840390286134432332.a n = A254407 n

end A254407

/-! ## A254407.P1413189774912534991

`A144945(n+1)+∑[∑[n]]`
-/

namespace A254407.P1413189774912534991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144945 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A254407.P1413189774912534991

namespace A254407

/-- `A144945(n+1)+∑[∑[n]]` -/
def P1413189774912534991.Spec : Prop :=
  ∀ n, P1413189774912534991.a n = A254407 n

end A254407

/-! ## A254407.P18121622285393824804

`A035006(n+1)-∑[∑[n]]`
-/

namespace A254407.P18121622285393824804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035006 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A254407.P18121622285393824804

namespace A254407

/-- `A035006(n+1)-∑[∑[n]]` -/
def P18121622285393824804.Spec : Prop :=
  ∀ n, P18121622285393824804.a n = A254407 n

end A254407

/-! ## A254407.P7025827120544576606

`∑[4*n]+∑[A226492(n)]`
-/

namespace A254407.P7025827120544576606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A254407.P7025827120544576606

namespace A254407

/-- `∑[4*n]+∑[A226492(n)]` -/
def P7025827120544576606.Spec : Prop :=
  ∀ n, P7025827120544576606.a n = A254407 n

end A254407

/-! ## A254407.P15821843781162147706

`A135036(n+1)+n*∑[n]`
-/

namespace A254407.P15821843781162147706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135036 (n + 1) + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A254407.P15821843781162147706

namespace A254407

/-- `A135036(n+1)+n*∑[n]` -/
def P15821843781162147706.Spec : Prop :=
  ∀ n, P15821843781162147706.a n = A254407 n

end A254407

/-! ## A254407.P15908183473792369371

`A100183(n+1)-∑[(n+1)²]`
-/

namespace A254407.P15908183473792369371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100183 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A254407.P15908183473792369371

namespace A254407

/-- `A100183(n+1)-∑[(n+1)²]` -/
def P15908183473792369371.Spec : Prop :=
  ∀ n, P15908183473792369371.a n = A254407 n

end A254407

/-! ## A254407.P804235872830515483

`A132117(n+1)-∑[1-n]²`
-/

namespace A254407.P804235872830515483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132117 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A254407.P804235872830515483

namespace A254407

/-- `A132117(n+1)-∑[1-n]²` -/
def P804235872830515483.Spec : Prop :=
  ∀ n, P804235872830515483.a n = A254407 n

end A254407

/-! ## A254407.P17177507389489943132

`A027480(n)+A002492(n)`
-/

namespace A254407.P17177507389489943132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n + A002492 n

end

end A254407.P17177507389489943132

namespace A254407

/-- `A027480(n)+A002492(n)` -/
def P17177507389489943132.Spec : Prop :=
  ∀ n, P17177507389489943132.a n = A254407 n

end A254407

/-! ## A254407.P6269822108584396116

`A050441(n)+A028896(n)`
-/

namespace A254407.P6269822108584396116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050441 n + A028896 n

end

end A254407.P6269822108584396116

namespace A254407

/-- `A050441(n)+A028896(n)` -/
def P6269822108584396116.Spec : Prop :=
  ∀ n, P6269822108584396116.a n = A254407 n

end A254407

/-! ## A254407.P16397710453372837921

`A134481(n)+A011379(n)`
-/

namespace A254407.P16397710453372837921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + A011379 n

end

end A254407.P16397710453372837921

namespace A254407

/-- `A134481(n)+A011379(n)` -/
def P16397710453372837921.Spec : Prop :=
  ∀ n, P16397710453372837921.a n = A254407 n

theorem P16397710453372837921.correct : P16397710453372837921.Spec := by
  intro n
  simp only [A254407, Nat.add_sub_cancel, A254407.P16397710453372837921.a, A254407.P15507762592062136051.a, A011379, A011379.P13170028565952122956.a, A134481, A134481.P3195373075799668587.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254407

/-! ## A254407.P9819872591285206564

`A092185(n)+A085490(n)`
-/

namespace A254407.P9819872591285206564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092185 n + A085490 n

end

end A254407.P9819872591285206564

namespace A254407

/-- `A092185(n)+A085490(n)` -/
def P9819872591285206564.Spec : Prop :=
  ∀ n, P9819872591285206564.a n = A254407 n

end A254407

/-!
# A254408: a(n) = 2*n^2*binomial(2*n,n)^2, a closed form for a double binomial sum involving absolute values.

The programs for A254408, the canonical program `A254408.P8515887903799995262` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254408 has offset 0).

The definition of A254408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²*C(2*n, n)²` (program `A254408.P8515887903799995262`, by `A254408.P8515887903799995262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254408.P2044276165637577758

`2*(n*C(2*n, n))²`
-/

namespace A254408.P2044276165637577758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.choose (2 * n) n) ^ 2

end

end A254408.P2044276165637577758

namespace A254408

/-- `2*(n*C(2*n, n))²` -/
def P2044276165637577758.Spec : Prop :=
  ∀ n, (P2044276165637577758.a n : ℤ) = A254408 n

theorem P2044276165637577758.correct : P2044276165637577758.Spec := by
  intro n
  simp only [A254408, Nat.add_sub_cancel, A254408.P2044276165637577758.a, A254408.P8515887903799995262.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254408

/-! ## A254408.P8515887903799995262

`2*n²*C(2*n, n)²`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254408

/-- `2*n²*C(2*n, n)²` -/
def P8515887903799995262.Spec : Prop :=
  ∀ n, (P8515887903799995262.a n : ℤ) = A254408 n

theorem P8515887903799995262.correct : P8515887903799995262.Spec := by
  intro n
  simp only [A254408]

end A254408

/-! ## A254408.P11965023941544959096

`2*A005430(n)²`
-/

namespace A254408.P11965023941544959096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005430 n ^ 2

end

end A254408.P11965023941544959096

namespace A254408

/-- `2*A005430(n)²` -/
def P11965023941544959096.Spec : Prop :=
  ∀ n, P11965023941544959096.a n = A254408 n

theorem P11965023941544959096.correct : P11965023941544959096.Spec := by
  intro n
  simp only [A254408, Nat.add_sub_cancel, A254408.P11965023941544959096.a, A254408.P8515887903799995262.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254408

/-! ## A254408.P16214199587820604495

`2*(1-A319924(n))²`
-/

namespace A254408.P16214199587820604495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A319924 n) ^ 2

end

end A254408.P16214199587820604495

namespace A254408

/-- `2*(1-A319924(n))²` -/
def P16214199587820604495.Spec : Prop :=
  ∀ n, P16214199587820604495.a n = A254408 n

theorem P16214199587820604495.correct : P16214199587820604495.Spec := by
  intro n
  simp only [A254408, Nat.add_sub_cancel, A254408.P16214199587820604495.a, A254408.P8515887903799995262.a, A319924, A319924.P4321362157346301630.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254408

/-! ## A254408.P6816475461812091417

`2*A100071(2*n)²`
-/

namespace A254408.P6816475461812091417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100071 (2 * n) ^ 2

end

end A254408.P6816475461812091417

namespace A254408

/-- `2*A100071(2*n)²` -/
def P6816475461812091417.Spec : Prop :=
  ∀ n, P6816475461812091417.a n = A254408 n

end A254408

/-! ## A254408.P7024993942231517389

`2*A212303(2*n)²`
-/

namespace A254408.P7024993942231517389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212303 (2 * n) ^ 2

end

end A254408.P7024993942231517389

namespace A254408

/-- `2*A212303(2*n)²` -/
def P7024993942231517389.Spec : Prop :=
  ∀ n, P7024993942231517389.a n = A254408 n

end A254408

/-! ## A254408.P6335829114679870770

`2*A218073(2*n)²`
-/

namespace A254408.P6335829114679870770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218073 (2 * n) ^ 2

end

end A254408.P6335829114679870770

namespace A254408

/-- `2*A218073(2*n)²` -/
def P6335829114679870770.Spec : Prop :=
  ∀ n, P6335829114679870770.a n = A254408 n

end A254408

/-! ## A254408.P5003157532926011988

`2*(n*A000984(n))²`
-/

namespace A254408.P5003157532926011988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A000984 n) ^ 2

end

end A254408.P5003157532926011988

namespace A254408

/-- `2*(n*A000984(n))²` -/
def P5003157532926011988.Spec : Prop :=
  ∀ n, P5003157532926011988.a n = A254408 n

theorem P5003157532926011988.correct : P5003157532926011988.Spec := by
  intro n
  simp only [A254408, Nat.add_sub_cancel, A254408.P5003157532926011988.a, A254408.P8515887903799995262.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254408

/-! ## A254408.P435314675972873810

`2*n²*A002894(n)`
-/

namespace A254408.P435314675972873810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n ^ 2 : ℤ) * A002894 n)

end

end A254408.P435314675972873810

namespace A254408

/-- `2*n²*A002894(n)` -/
def P435314675972873810.Spec : Prop :=
  ∀ n, P435314675972873810.a n = A254408 n

theorem P435314675972873810.correct : P435314675972873810.Spec := by
  intro n
  simp only [A254408, Nat.add_sub_cancel, A254408.P435314675972873810.a, A254408.P8515887903799995262.a, A002894, A002894.P13776530332623719589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254408

/-! ## A254408.P6825974068429777802

`(n*A028329(n))²/2`
-/

namespace A254408.P6825974068429777802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * A028329 n) ^ 2 : ℚ) / 2

end

end A254408.P6825974068429777802

namespace A254408

/-- `(n*A028329(n))²/2` -/
def P6825974068429777802.Spec : Prop :=
  ∀ n, P6825974068429777802.a n = (A254408 n : ℚ)

theorem P6825974068429777802.correct : P6825974068429777802.Spec := by
  intro n
  simp only [A254408, Nat.add_sub_cancel, A254408.P6825974068429777802.a, A254408.P8515887903799995262.a, A028329, A028329.P2723209719397665586.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254408

/-!
# A254409: a(n) is the least x such that tau(x) divides (x-1)^n but not (x-1)^(n-1), for n >= 2.

The programs for A254409, there is no canonical definition to state claims against.
-/

/-! ## A254409.P4756021130295355542

`A204086(2^(n+1))`
-/

namespace A254409.P4756021130295355542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204086 (2 ^ (n + 1))

end

end A254409.P4756021130295355542

/-! ## A254409.P4941113851603054440

`record[A204086(A135530(n))]`
-/

namespace A254409.P4941113851603054440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204086 (A135530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254409.P4941113851603054440

/-! ## A254409.P10689481018744238156

`record[A204086(A068009(n+1))]`
-/

namespace A254409.P10689481018744238156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204086 (A068009 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254409.P10689481018744238156

/-!
# A254410: Limit of f(f(f(...f(2)...))) modulo n as the number of iterations of f(x) = 2^x - 1 grows.

The programs for A254410, there is no canonical definition to state claims against.
-/

/-! ## A254410.P14597978454447205722

`A004767(31*n²)%(n+1)`
-/

namespace A254410.P14597978454447205722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 (31 * n ^ 2)) (n + 1 : ℤ)

end

end A254410.P14597978454447205722

/-! ## A254410.P4263813947963623012

`A010001(2*n^3+7)%(n+1)`
-/

namespace A254410.P4263813947963623012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010001 (2 * n ^ 3 + 7)) (n + 1 : ℤ)

end

end A254410.P4263813947963623012

/-! ## A254410.P17561015678075320677

`A003215(A212133(n))%(n+1)`
-/

namespace A254410.P17561015678075320677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 (A212133 n).toNat) (n + 1 : ℤ)

end

end A254410.P17561015678075320677

/-! ## A254410.P9636496698022924756

`A199037(A087717(n+1))%(n+1)`
-/

namespace A254410.P9636496698022924756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199037 (A087717 (n + 1)).toNat) (n + 1 : ℤ)

end

end A254410.P9636496698022924756

/-! ## A254410.P6609632570082081941

`A363371(A005106(n+1))%(n+1)`
-/

namespace A254410.P6609632570082081941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363371 (A005106 (n + 1)).toNat) (n + 1 : ℤ)

end

end A254410.P6609632570082081941

/-!
# A254411: Limit of f(f(f(...f(0)...))) modulo n as the number of iterations of f(x) = 2^x+1 grows.

The programs for A254411, there is no canonical definition to state claims against.
-/

/-! ## A254411.P15758043781689186628

`A005408(A245971(n+1))%(n+1)`
-/

namespace A254411.P15758043781689186628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A245971 (n + 1)).toNat) (n + 1 : ℤ)

end

end A254411.P15758043781689186628

/-! ## A254411.P15527232255707831699

`A087289(A230875(n+1))%(n+1)`
-/

namespace A254411.P15527232255707831699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087289 (A230875 (n + 1)).toNat) (n + 1 : ℤ)

end

end A254411.P15527232255707831699

/-! ## A254411.P8244488932772773127

`A062395(A271983(n+1))%(n+1)`
-/

namespace A254411.P8244488932772773127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062395 (A271983 (n + 1)).toNat) (n + 1 : ℤ)

end

end A254411.P8244488932772773127

/-! ## A254411.P15998216025188472699

`A070969(A105960(n+2))%(n+1)`
-/

namespace A254411.P15998216025188472699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070969 (A105960 (n + 2)).toNat) (n + 1 : ℤ)

end

end A254411.P15998216025188472699

/-!
# A254413: Primes in the 8th-order Fibonacci numbers A123526.

The programs for A254413, there is no canonical definition to state claims against.
-/

/-! ## A254413.P7783411996415898426

`A123526(A254412(n+1))`
-/

namespace A254413.P7783411996415898426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123526 (A254412 (n + 1)).toNat

end

end A254413.P7783411996415898426

/-!
# A254414: Number A(n,k) of tilings of a k X n rectangle using polyominoes of shape I; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A254414, there is no canonical definition to state claims against.
-/

/-! ## A254414.P8170422118130527708

`A062300(A008518(n)%A102145(n+1))`
-/

namespace A254414.P8170422118130527708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (Int.tmod (A008518 n) (A102145 (n + 1))).toNat

end

end A254414.P8170422118130527708

/-! ## A254414.P15909899477047019224

`A062300(A008518(n))%A027763(n+1)`
-/

namespace A254414.P15909899477047019224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062300 (A008518 n).toNat) (A027763 (n + 1))

end

end A254414.P15909899477047019224

/-! ## A254414.P5336776511711435598

`A000700(A014410(n+2)%A027763(n+1))`
-/

namespace A254414.P5336776511711435598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod (A014410 (n + 2)) (A027763 (n + 1))).toNat

end

end A254414.P5336776511711435598

/-!
# A254415: Number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254415, there is no canonical definition to state claims against.
-/

/-! ## A254415.P1397743026816250365

`A254422(∑[4*n]+1)`
-/

namespace A254415.P1397743026816250365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254415.P1397743026816250365

/-! ## A254415.P15925385037446379569

`record[A003982(n)*A254422(n+1)]`
-/

namespace A254415.P15925385037446379569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A254422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254415.P15925385037446379569

/-! ## A254415.P10827034186304069984

`or(A024362(n+1), A254422(A001844(n)))`
-/

namespace A254415.P10827034186304069984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024362 (n + 1)) (A254422 (A001844 n).toNat)

end

end A254415.P10827034186304069984

/-!
# A254416: Number of (n+1)X(2+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254416, there is no canonical definition to state claims against.
-/

/-! ## A254416.P13521193395046958678

`A254422(∑[n+2])`
-/

namespace A254416.P13521193395046958678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254416.P13521193395046958678

/-! ## A254416.P8545162141493319029

`record[A254422(A117142(n+2))]`
-/

namespace A254416.P8545162141493319029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254416.P8545162141493319029

/-! ## A254416.P16250960949691534330

`record[gcd(A025581(n+2), A254422(n+2))]`
-/

namespace A254416.P16250960949691534330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 (n + 2)) (A254422 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254416.P16250960949691534330

/-! ## A254416.P10715598987985641439

`record[lcm(A167374(n+1), A254422(n+2))]`
-/

namespace A254416.P10715598987985641439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167374 (n + 1)) (A254422 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254416.P10715598987985641439

/-! ## A254416.P16453987762270987962

`A057237(2*(n+1))*A254422(A000096(n+1))`
-/

namespace A254416.P16453987762270987962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (2 * (n + 1)) * A254422 (A000096 (n + 1)).toNat

end

end A254416.P16453987762270987962

/-!
# A254417: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254417, there is no canonical definition to state claims against.
-/

/-! ## A254417.P15872891402245653665

`A254422(∑[n+3]+1)`
-/

namespace A254417.P15872891402245653665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254417.P15872891402245653665

/-! ## A254417.P9158291528812903933

`A254422(A034856(n+2))+A185284(n)`
-/

namespace A254417.P9158291528812903933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A034856 (n + 2)).toNat + A185284 n

end

end A254417.P9158291528812903933

/-!
# A254418: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254418, there is no canonical definition to state claims against.
-/

/-! ## A254418.P97480533000418614

`A254422(A141214(n+1))`
-/

namespace A254418.P97480533000418614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A141214 (n + 1)).toNat

end

end A254418.P97480533000418614

/-! ## A254418.P10225659967535213402

`A254422(A055998(n+2))`
-/

namespace A254418.P10225659967535213402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A055998 (n + 2)).toNat

end

end A254418.P10225659967535213402

/-! ## A254418.P15039617659866862769

`A254422(A155212(n)+5)`
-/

namespace A254418.P15039617659866862769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A155212 n + 5).toNat

end

end A254418.P15039617659866862769

/-! ## A254418.P9130389778250573194

`A254422(A056000(n)+7)`
-/

namespace A254418.P9130389778250573194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A056000 n + 7).toNat

end

end A254418.P9130389778250573194

/-! ## A254418.P9474397913224687364

`A254422(A052905(n+1)+2)`
-/

namespace A254418.P9474397913224687364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A052905 (n + 1) + 2).toNat

end

end A254418.P9474397913224687364

/-!
# A254419: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254419, there is no canonical definition to state claims against.
-/

/-! ## A254419.P5220552337286085772

`A254422(A046691(n+3))`
-/

namespace A254419.P5220552337286085772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A046691 (n + 3)).toNat

end

end A254419.P5220552337286085772

/-! ## A254419.P10292176712767132069

`A254422(A056115(n)+11)`
-/

namespace A254419.P10292176712767132069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A056115 n + 11).toNat

end

end A254419.P10292176712767132069

/-! ## A254419.P17069642902524046318

`A254422(eq[4, A193592(n)])`
-/

namespace A254419.P17069642902524046318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254419.P17069642902524046318

/-! ## A254419.P8778644467035605478

`A254422(eq[8, A140996(n)])`
-/

namespace A254419.P8778644467035605478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254419.P8778644467035605478

/-! ## A254419.P6328110967180312303

`A254422(Δ[A023545(n+1)])`
-/

namespace A254419.P6328110967180312303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (f1 (n + 1) - f1 n).toNat

end

end A254419.P6328110967180312303

/-!
# A254420: Number of (n+1)X(6+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254420, there is no canonical definition to state claims against.
-/

/-! ## A254420.P13247483949089851327

`A254422(eq[5, A193592(n)])`
-/

namespace A254420.P13247483949089851327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254420.P13247483949089851327

/-! ## A254420.P3467294390926158503

`A254422(Δ[Δ[A006504(n+1)]])`
-/

namespace A254420.P3467294390926158503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (f1 (n + 1) - f1 n).toNat

end

end A254420.P3467294390926158503

/-! ## A254420.P9678865517093953347

`A254422(Δ[A023545(n+2)]-1)`
-/

namespace A254420.P9678865517093953347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (f1 (n + 1) - f1 n - 1).toNat

end

end A254420.P9678865517093953347

/-!
# A254421: Number of (n+1)X(7+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254421, there is no canonical definition to state claims against.
-/

/-! ## A254421.P2220569844749415213

`A254422(eq[6, A193592(n)])`
-/

namespace A254421.P2220569844749415213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254421.P2220569844749415213

/-! ## A254421.P3625861278170113912

`A254422(A046691(n+5)-2)`
-/

namespace A254421.P3625861278170113912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A046691 (n + 5) - 2).toNat

end

end A254421.P3625861278170113912

/-!
# A254423: Number of (2+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254423, there is no canonical definition to state claims against.
-/

/-! ## A254423.P6646304253031140853

`A254422(∑[n+1]+2)`
-/

namespace A254423.P6646304253031140853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254423.P6646304253031140853

/-! ## A254423.P17594208590032944308

`record[gcd(A025581(n), A254422(n+3))]`
-/

namespace A254423.P17594208590032944308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A254422 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254423.P17594208590032944308

/-! ## A254423.P2755022070448993582

`A254422(A133263(n+1))+A185284(n)`
-/

namespace A254423.P2755022070448993582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A133263 (n + 1)).toNat + A185284 n

end

end A254423.P2755022070448993582

/-! ## A254423.P3072024422260467359

`A254422(A133263(n+1))+A102683(2*n)`
-/

namespace A254423.P3072024422260467359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A133263 (n + 1)).toNat + A102683 (2 * n)

end

end A254423.P3072024422260467359

/-! ## A254423.P8041862193093864796

`A254422(A133263(n+1))+A055641(2*n+1)`
-/

namespace A254423.P8041862193093864796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A133263 (n + 1)).toNat + A055641 (2 * n + 1)

end

end A254423.P8041862193093864796

/-!
# A254424: Number of (3+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254424, there is no canonical definition to state claims against.
-/

/-! ## A254424.P15112904974553559296

`A254422(∑[n+2]+4)`
-/

namespace A254424.P15112904974553559296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254424.P15112904974553559296

/-! ## A254424.P17957259135238676238

`A015760(n)*A254422(A167614(n+1))`
-/

namespace A254424.P17957259135238676238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015760 n * A254422 (A167614 (n + 1)).toNat

end

end A254424.P17957259135238676238

/-! ## A254424.P5183536781193102096

`lcm(A057077(n), A254422(A167614(n+1)))`
-/

namespace A254424.P5183536781193102096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A254422 (A167614 (n + 1)).toNat)

end

end A254424.P5183536781193102096

/-! ## A254424.P14251206535075687202

`A254422(A167614(n+1))+A007394(n+1)`
-/

namespace A254424.P14251206535075687202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A167614 (n + 1)).toNat + A007394 (n + 1)

end

end A254424.P14251206535075687202

/-! ## A254424.P417306512112289140

`A254422(A167614(n+1))+A111899(n+1)`
-/

namespace A254424.P417306512112289140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A167614 (n + 1)).toNat + A111899 (n + 1)

end

end A254424.P417306512112289140

/-!
# A254425: Number of (4+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254425, there is no canonical definition to state claims against.
-/

/-! ## A254425.P12133962661350962595

`A254422(A141214(n)+7)`
-/

namespace A254425.P12133962661350962595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A141214 n + 7).toNat

end

end A254425.P12133962661350962595

/-! ## A254425.P8304766087917856553

`A254422(A052905(n)+9)`
-/

namespace A254425.P8304766087917856553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A052905 n + 9).toNat

end

end A254425.P8304766087917856553

/-! ## A254425.P11834322209663747272

`A254422(A055999(n)+10)`
-/

namespace A254425.P11834322209663747272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A055999 n + 10).toNat

end

end A254425.P11834322209663747272

/-! ## A254425.P6290190744465655920

`A254422(A167614(n+2)+1)`
-/

namespace A254425.P6290190744465655920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A167614 (n + 2) + 1).toNat

end

end A254425.P6290190744465655920

/-! ## A254425.P15882329581963995841

`A254422(A112355(n+1)+4)`
-/

namespace A254425.P15882329581963995841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A112355 (n + 1) + 4).toNat

end

end A254425.P15882329581963995841

/-!
# A254426: Number of (5+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254426, there is no canonical definition to state claims against.
-/

/-! ## A254426.P9290844663184644890

`A254422(A155212(n)+13)`
-/

namespace A254426.P9290844663184644890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A155212 n + 13).toNat

end

end A254426.P9290844663184644890

/-! ## A254426.P724761085544689118

`A254422(A056000(n)+15)`
-/

namespace A254426.P724761085544689118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A056000 n + 15).toNat

end

end A254426.P724761085544689118

/-! ## A254426.P17971405353461659914

`A254422(eq[7, A066657(n)])`
-/

namespace A254426.P17971405353461659914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254426.P17971405353461659914

/-! ## A254426.P5666233943779720749

`A254422(A055998(n+2)+8)`
-/

namespace A254426.P5666233943779720749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (A055998 (n + 2) + 8).toNat

end

end A254426.P5666233943779720749

/-! ## A254426.P15931306201965469809

`A254422(eq[6, A131818(n+1)])`
-/

namespace A254426.P15931306201965469809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254426.P15931306201965469809

/-!
# A254427: Number of (6+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254427, there is no canonical definition to state claims against.
-/

/-! ## A254427.P486225829887826469

`A254422(eq[7, A131818(n+1)])`
-/

namespace A254427.P486225829887826469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254427.P486225829887826469

/-! ## A254427.P16240622861581336997

`A254422(C(A141214(n+1)-A055999(n), 2)-n)`
-/

namespace A254427.P16240622861581336997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (Nat.choose (A141214 (n + 1) - A055999 n).toNat 2 - n)

end

end A254427.P16240622861581336997

/-!
# A254428: Number of (7+1)X(n+1) 0..2 arrays with every 2X2 subblock diagonal maximum minus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254428, there is no canonical definition to state claims against.
-/

/-! ## A254428.P15565528056532416638

`A254422(eq[8, A131818(n+1)])`
-/

namespace A254428.P15565528056532416638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254428.P15565528056532416638

/-!
# A254429: a(0) = 0; for n >= 0, a(n+1) = 2^a(n) + 1.

The programs for A254429, there is no canonical definition to state claims against.
-/

/-! ## A254429.P6824768178817830053

`1+2^a(n-1)` with `a(0)=0`
-/

namespace A254429.P6824768178817830053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + 2 ^ a (n - 1)

end

end A254429.P6824768178817830053

/-!
# A254430: Number of "feasible" partitions with n parts.

The programs for A254430, there is no canonical definition to state claims against.
-/

/-! ## A254430.P6494542287731252423

`A254442(A057198(n+1))`
-/

namespace A254430.P6494542287731252423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254442 (A057198 (n + 1)).toNat

end

end A254430.P6494542287731252423

/-!
# A254431: Number of "feasible" partitions of the smallest natural number of length n.

The programs for A254431, there is no canonical definition to state claims against.
-/

/-! ## A254431.P4625057834646686518

`A254296((3^n+1)/2)`
-/

namespace A254431.P4625057834646686518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (SequenceMachineLib.roundAway ((3 ^ n + 1 : ℚ) / 2)).toNat

end

end A254431.P4625057834646686518

/-! ## A254431.P7209550315682872718

`A254296(A007051(n))+A185246(n)`
-/

namespace A254431.P7209550315682872718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (A007051 n).toNat + A185246 n

end

end A254431.P7209550315682872718

/-! ## A254431.P12472861343173941825

`lcm(A219924(n), A254296(A007051(n)))`
-/

namespace A254431.P12472861343173941825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219924 n) (A254296 (A007051 n).toNat)

end

end A254431.P12472861343173941825

/-! ## A254431.P10697083594524376232

`A254296(A007051(n))%A322661(n+4)`
-/

namespace A254431.P10697083594524376232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254296 (A007051 n).toNat) (A322661 (n + 4))

end

end A254431.P10697083594524376232

/-! ## A254431.P16722170805536118989

`or(A215036(2*n+3), A254296(A007051(n)))`
-/

namespace A254431.P16722170805536118989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A215036 (2 * n + 3)) (A254296 (A007051 n).toNat)

end

end A254431.P16722170805536118989

/-!
# A254433: Maximum number of "feasible" partitions of length n.

The programs for A254433, there is no canonical definition to state claims against.
-/

/-! ## A254433.P17739405813516985428

`A254296((3^n+5)/2)`
-/

namespace A254433.P17739405813516985428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (SequenceMachineLib.roundAway ((3 ^ n + 5 : ℚ) / 2)).toNat

end

end A254433.P17739405813516985428

/-!
# A254434: The number of isomorphism classes of Latin keis (involutory right distributive quasigroups) of order 2n+1.

The programs for A254434, there is no canonical definition to state claims against.
-/

/-! ## A254434.P6871973896271169188

`A248908(2*n+3)`
-/

namespace A254434.P6871973896271169188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248908 (2 * n + 3)

end

end A254434.P6871973896271169188

/-! ## A254434.P2440619539384053693

`A248908(Δ[(n+1)²])%8`
-/

namespace A254434.P2440619539384053693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248908 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 8

end

end A254434.P2440619539384053693

/-! ## A254434.P7395224165509674692

`A248908(Δ[(n+1)²])^A007318(∑[n])`
-/

namespace A254434.P7395224165509674692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248908 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A254434.P7395224165509674692

/-! ## A254434.P10384694557395704840

`A014963(lcm((-1)^n, A248908(Δ[(n+1)²])))`
-/

namespace A254434.P10384694557395704840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lcm ((-1) ^ n) (A248908 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat))

end

end A254434.P10384694557395704840

/-! ## A254434.P7084051321656286558

`A248908(Δ[(n+1)²])^A014963(∑[n+1])`
-/

namespace A254434.P7084051321656286558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248908 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A254434.P7084051321656286558

/-!
# A254435: Squares in A254296.

The programs for A254435, there is no canonical definition to state claims against.
-/

/-! ## A254435.P12793542266500406900

`∩[n², A005704(n)]`
-/

namespace A254435.P12793542266500406900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254435.P12793542266500406900

/-!
# A254436: A component sequence of A254296.

The programs for A254436, there is no canonical definition to state claims against.
-/

/-! ## A254436.P18022450246057944658

`A335106(A316655(n+1)-A048614(n+1))`
-/

namespace A254436.P18022450246057944658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335106 (A316655 (n + 1) - A048614 (n + 1)).toNat

end

end A254436.P18022450246057944658

/-! ## A254436.P17001655345972128126

`A002620(A073778(n))%A274640(2*n+3)`
-/

namespace A254436.P17001655345972128126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002620 (A073778 n).toNat) (A274640 (2 * n + 3))

end

end A254436.P17001655345972128126

/-! ## A254436.P8334345453315567733

`A362610(A035648(n+1)^A001055(3*n+5))`
-/

namespace A254436.P8334345453315567733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362610 (SequenceMachineLib.roundAway ((A035648 (n + 1) : ℚ) ^ (A001055 (3 * n + 5) : ℤ))).toNat

end

end A254436.P8334345453315567733

/-! ## A254436.P5867514987604438804

`A234027(A035648(n+1)%A269240(2*(n+2)))`
-/

namespace A254436.P5867514987604438804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 (Int.tmod (A035648 (n + 1)) (A269240 (2 * (n + 2)))).toNat

end

end A254436.P5867514987604438804

/-! ## A254436.P8027129290197373157

`A031286(A383569(n))`
-/

namespace A254436.P8027129290197373157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A383569 n).toNat

end

end A254436.P8027129290197373157

/-!
# A254439: Median of terms of A254296 in the range (3^(n-1)+1)/2 to (3^n-1)/2.

The programs for A254439, there is no canonical definition to state claims against.
-/

/-! ## A254439.P9919930851354799047

`A254296(3^n)`
-/

namespace A254439.P9919930851354799047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (3 ^ n)

end

end A254439.P9919930851354799047

/-! ## A254439.P16368259251249890929

`A005704(ceil(∑[3^(n-2)])-1)`
-/

namespace A254439.P16368259251249890929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005704 (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - 1).toNat

end

end A254439.P16368259251249890929

/-! ## A254439.P22648731032829993

`A254296(A000244(n))+A000038(n+1)`
-/

namespace A254439.P22648731032829993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254296 (A000244 n).toNat + A000038 (n + 1)

end

end A254439.P22648731032829993

/-! ## A254439.P7846319559831808073

`A062051(floor(3^n/2))`
-/

namespace A254439.P7846319559831808073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 ⌊(3 ^ n : ℚ) / 2⌋.toNat

end

end A254439.P7846319559831808073

/-! ## A254439.P4346775063258732998

`A062051(∑[floor(3^(n-1))])^(1-char[1])`
-/

namespace A254439.P4346775063258732998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062051 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A254439.P4346775063258732998

/-!
# A254440: Palindromes in A254296.

The programs for A254440, there is no canonical definition to state claims against.
-/

/-! ## A254440.P15234326745233268350

`∩[A082208(n+1), A089743(n+1)]`
-/

namespace A254440.P15234326745233268350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254440.P15234326745233268350

/-! ## A254440.P268921339926876228

`∩[A089743(n+1), A117055(n+1)]`
-/

namespace A254440.P268921339926876228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254440.P268921339926876228

/-! ## A254440.P14597289424914128118

`∩[A089743(n+1), A117056(n+1)]`
-/

namespace A254440.P14597289424914128118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254440.P14597289424914128118

/-! ## A254440.P14724632025377590554

`∩[A089743(n+1), A222620(n+1)]`
-/

namespace A254440.P14724632025377590554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254440.P14724632025377590554

/-! ## A254440.P16897639520773420919

`∪[A334139(A002113(2*(n+1))), A002385(n+1)]`
-/

namespace A254440.P16897639520773420919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334139 (A002113 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254440.P16897639520773420919

/-!
# A254443: Numbers n such that T(n) + T(n+1) + ... + T(n+21) is a square, where T(m) = A000217(m) is the m-th triangular number.

The programs for A254443, the canonical program `A254443.P11446107568859895036` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254443 has offset 1).

The definition of A254443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254443.P11446107568859895036

`2*A106521(n+1)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A254443

/-- `2*A106521(n+1)-1` -/
def P11446107568859895036.Spec : Prop :=
  ∀ n, P11446107568859895036.a n = A254443 (n + 1)

theorem P11446107568859895036.correct : P11446107568859895036.Spec := by
  intro n
  simp only [A254443, Nat.add_sub_cancel]

end A254443

/-! ## A254443.P8192123205830861147

`2*(A198949(n+2)-5)-1`
-/

namespace A254443.P8192123205830861147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198949 (n + 2) - 5) - 1

end

end A254443.P8192123205830861147

namespace A254443

/-- `2*(A198949(n+2)-5)-1` -/
def P8192123205830861147.Spec : Prop :=
  ∀ n, P8192123205830861147.a n = A254443 (n + 1)

end A254443

/-! ## A254443.P3107366839273975210

`A033999(2*n+1)+2*A106521(n+1)`
-/

namespace A254443.P3107366839273975210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + 2 * A106521 (n + 1)

end

end A254443.P3107366839273975210

namespace A254443

/-- `A033999(2*n+1)+2*A106521(n+1)` -/
def P3107366839273975210.Spec : Prop :=
  ∀ n, P3107366839273975210.a n = A254443 (n + 1)

end A254443

/-! ## A254443.P1687902781977502311

`A008683(A020483(n))+2*A106521(n+1)`
-/

namespace A254443.P1687902781977502311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020483 n).toNat + 2 * A106521 (n + 1)

end

end A254443.P1687902781977502311

namespace A254443

/-- `A008683(A020483(n))+2*A106521(n+1)` -/
def P1687902781977502311.Spec : Prop :=
  ∀ n, P1687902781977502311.a n = A254443 (n + 1)

end A254443

/-! ## A254443.P4544402483093123486

`A008683(A007821(n+1))+2*A106521(n+1)`
-/

namespace A254443.P4544402483093123486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007821 (n + 1)).toNat + 2 * A106521 (n + 1)

end

end A254443.P4544402483093123486

namespace A254443

/-- `A008683(A007821(n+1))+2*A106521(n+1)` -/
def P4544402483093123486.Spec : Prop :=
  ∀ n, P4544402483093123486.a n = A254443 (n + 1)

end A254443

/-! ## A254443.P5933022993554815690

`A319116(A319150(n))+2*A106521(n+1)`
-/

namespace A254443.P5933022993554815690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319116 (A319150 n).toNat + 2 * A106521 (n + 1)

end

end A254443.P5933022993554815690

namespace A254443

/-- `A319116(A319150(n))+2*A106521(n+1)` -/
def P5933022993554815690.Spec : Prop :=
  ∀ n, P5933022993554815690.a n = A254443 (n + 1)

end A254443

/-!
# A254444: Largest k such that p = prime(n) satisfies b^(p-1) == 1 (mod p^k) for some base b with 1 < b < p.

The programs for A254444, there is no canonical definition to state claims against.
-/

/-! ## A254444.P3126097094734062115

`A143811((A143811(n+2)^4)^A143811(n+1)+1)`
-/

namespace A254444.P3126097094734062115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143811 (SequenceMachineLib.roundAway ((A143811 (n + 2) ^ 4 : ℚ) ^ (A143811 (n + 1) : ℤ) + 1)).toNat

end

end A254444.P3126097094734062115

/-! ## A254444.P1328359119005792700

`A226378(A143811(n+2)*A217065(n+1))`
-/

namespace A254444.P1328359119005792700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A143811 (n + 2) * A217065 (n + 1)).toNat

end

end A254444.P1328359119005792700

/-! ## A254444.P12687507374110205608

`A001222(A138536(2*n+1)*A143811(n+2))`
-/

namespace A254444.P12687507374110205608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A138536 (2 * n + 1) * A143811 (n + 2)).toNat

end

end A254444.P12687507374110205608

/-! ## A254444.P17089877458441962464

`A000005(A143811(n+2)%A292874(2*(n+1)))`
-/

namespace A254444.P17089877458441962464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A143811 (n + 2)) (A292874 (2 * (n + 1)))).toNat

end

end A254444.P17089877458441962464

/-!
# A254448: a(n) is the smallest nonnegative integer such that a(n)! contains a string of exactly n consecutive 3's.

The programs for A254448, there is no canonical definition to state claims against.
-/

/-! ## A254448.P389250199806969543

`A273876(A131851(n)+A010001(n))`
-/

namespace A254448.P389250199806969543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273876 (A131851 n + A010001 n).toNat

end

end A254448.P389250199806969543

/-!
# A254449: a(n) is the smallest nonnegative integer such that a(n)! contains a string of exactly n consecutive 4's.

The programs for A254449, there is no canonical definition to state claims against.
-/

/-! ## A254449.P4925456674764438825

`A095274(C(3*n, 2))+n`
-/

namespace A254449.P4925456674764438825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 (Nat.choose (3 * n) 2) + (n : ℤ)

end

end A254449.P4925456674764438825

/-!
# A254450: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254450, there is no canonical definition to state claims against.
-/

/-! ## A254450.P13780631871042827139

`A254457(∑[4*n]+1)`
-/

namespace A254450.P13780631871042827139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254450.P13780631871042827139

/-!
# A254451: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254451, there is no canonical definition to state claims against.
-/

/-! ## A254451.P9572312603212623971

`A254457(∑[n+1]+2)`
-/

namespace A254451.P9572312603212623971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254451.P9572312603212623971

/-! ## A254451.P7414167559239570575

`A254457(A089071(n+3))%A198686(2*(n+2))`
-/

namespace A254451.P7414167559239570575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254457 (A089071 (n + 3)).toNat) (A198686 (2 * (n + 2)))

end

end A254451.P7414167559239570575

/-! ## A254451.P9251937811948085958

`record[A254457(abs(A201163(n)))]`
-/

namespace A254451.P9251937811948085958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254451.P9251937811948085958

/-! ## A254451.P818069302387934196

`record[A254457(Δ[A003453(n+5)])]`
-/

namespace A254451.P818069302387934196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254451.P818069302387934196

/-! ## A254451.P12446983782225151640

`A001250(A049084(2*(n+1)))*A254457(A055998(n)+2)`
-/

namespace A254451.P12446983782225151640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (A049084 (2 * (n + 1))).toNat * A254457 (A055998 n + 2).toNat

end

end A254451.P12446983782225151640

/-!
# A254452: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254452, there is no canonical definition to state claims against.
-/

/-! ## A254452.P2389270046605084693

`A254457(∑[n+2]+4)`
-/

namespace A254452.P2389270046605084693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254452.P2389270046605084693

/-! ## A254452.P8153262311510524552

`lcm(2, A254457(A167614(n+1)))`
-/

namespace A254452.P8153262311510524552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254457 (A167614 (n + 1)).toNat)

end

end A254452.P8153262311510524552

/-! ## A254452.P2574348922206219905

`A254457(A167614(n+1))+A025443(n)`
-/

namespace A254452.P2574348922206219905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (A167614 (n + 1)).toNat + A025443 n

end

end A254452.P2574348922206219905

/-! ## A254452.P2827149582769530153

`A254457(A167614(n+1))+A185238(n)`
-/

namespace A254452.P2827149582769530153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (A167614 (n + 1)).toNat + A185238 n

end

end A254452.P2827149582769530153

/-! ## A254452.P10506565195210169503

`A254457(A167614(n+1))%A186060(n+1)`
-/

namespace A254452.P10506565195210169503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254457 (A167614 (n + 1)).toNat) (A186060 (n + 1))

end

end A254452.P10506565195210169503

/-!
# A254453: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254453, there is no canonical definition to state claims against.
-/

/-! ## A254453.P277960009714620870

`A254457(A374004(n+1))`
-/

namespace A254453.P277960009714620870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (A374004 (n + 1)).toNat

end

end A254453.P277960009714620870

/-! ## A254453.P17969909500681758391

`A254457(A141214(n)+7)`
-/

namespace A254453.P17969909500681758391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (A141214 n + 7).toNat

end

end A254453.P17969909500681758391

/-! ## A254453.P18221064338028951702

`A254457(A052905(n)+9)`
-/

namespace A254453.P18221064338028951702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (A052905 n + 9).toNat

end

end A254453.P18221064338028951702

/-! ## A254453.P1426939864051768294

`A254457(A167614(n+2)+1)`
-/

namespace A254453.P1426939864051768294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (A167614 (n + 2) + 1).toNat

end

end A254453.P1426939864051768294

/-! ## A254453.P14129359330447164578

`A254457(Δ[A264443(n)-n²])`
-/

namespace A254453.P14129359330447164578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (f1 (n + 1) - f1 n).toNat

end

end A254453.P14129359330447164578

/-!
# A254454: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254454, there is no canonical definition to state claims against.
-/

/-! ## A254454.P606018707975321606

`A254457(A374005(n+1))`
-/

namespace A254454.P606018707975321606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (A374005 (n + 1)).toNat

end

end A254454.P606018707975321606

/-! ## A254454.P17821194253773607104

`A254457(eq[7, A066657(n)])`
-/

namespace A254454.P17821194253773607104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254454.P17821194253773607104

/-! ## A254454.P15149545630622614810

`A254457(Δ[A264443(n)])`
-/

namespace A254454.P15149545630622614810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (f1 (n + 1) - f1 n).toNat

end

end A254454.P15149545630622614810

/-! ## A254454.P377225495866530843

`A254457(eq[2, A092921(n)])`
-/

namespace A254454.P377225495866530843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254454.P377225495866530843

/-! ## A254454.P10230376142732838502

`A254457(eq[4, A193592(n)])`
-/

namespace A254454.P10230376142732838502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254454.P10230376142732838502

/-!
# A254455: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254455, there is no canonical definition to state claims against.
-/

/-! ## A254455.P17121955350425803952

`A254457(A374007(n+1))`
-/

namespace A254455.P17121955350425803952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (A374007 (n + 1)).toNat

end

end A254455.P17121955350425803952

/-! ## A254455.P6978060871124197884

`A254457(A167499(n+4)+1)`
-/

namespace A254455.P6978060871124197884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (A167499 (n + 4) + 1).toNat

end

end A254455.P6978060871124197884

/-! ## A254455.P1037822866962065565

`A254457(eq[7, A131818(n+1)])`
-/

namespace A254455.P1037822866962065565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254455.P1037822866962065565

/-! ## A254455.P11806743389893518080

`A254457(eq[5, A193592(n)])`
-/

namespace A254455.P11806743389893518080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254455.P11806743389893518080

/-! ## A254455.P11501882861119282036

`A254457(eq[6, A200370(n+1)])`
-/

namespace A254455.P11501882861119282036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254455.P11501882861119282036

/-!
# A254456: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A254456, there is no canonical definition to state claims against.
-/

/-! ## A254456.P10107433186224181642

`A254457(A374008(n+1))`
-/

namespace A254456.P10107433186224181642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (A374008 (n + 1)).toNat

end

end A254456.P10107433186224181642

/-! ## A254456.P13000875196703710708

`A254457(eq[8, A131818(n+1)])`
-/

namespace A254456.P13000875196703710708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254456.P13000875196703710708

/-! ## A254456.P7996755425774469079

`A254457(eq[6, A193592(n)])`
-/

namespace A254456.P7996755425774469079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254456.P7996755425774469079

/-!
# A254458: Number of tilings of a 6 X n rectangle using polyominoes of shape I.

The programs for A254458, there is no canonical definition to state claims against.
-/

/-! ## A254458.P9508432039511075924

`A254414(eq[6, A002262(n)])`
-/

namespace A254458.P9508432039511075924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254458.P9508432039511075924

/-! ## A254458.P11933327584647943731

`A254414(eq[11, A140207(n)])`
-/

namespace A254458.P11933327584647943731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254458.P11933327584647943731

/-! ## A254458.P14178080548572814154

`A254414(eq[6, A025581(n)])`
-/

namespace A254458.P14178080548572814154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254458.P14178080548572814154

/-! ## A254458.P4988779880451618255

`A254414(eq[7, A193739(n)])`
-/

namespace A254458.P4988779880451618255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254458.P4988779880451618255

/-! ## A254458.P3504758486222008714

`A254414(eq[13, A099375(n)])`
-/

namespace A254458.P3504758486222008714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254458.P3504758486222008714

/-!
# A254460: a(n) is the number of predecessors of the all-ones state of the binary cellular automaton on the n X n grid graph with edges joining diagonal neighbors as well as vertical and horizontal neighbors, whose local rule is f(i,j) = sum of the state at vertex (i,j) and the states at all of its neighbors mod 2.

The programs for A254460, the canonical program `A254460.P14155362609445488413` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254460 has offset 1).

The definition of A254460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254460.P3414618371857460925

`8^Δ[round(n/3)²]`
-/

namespace A254460.P3414618371857460925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A254460.P3414618371857460925

namespace A254460

/-- `8^Δ[round(n/3)²]` -/
def P3414618371857460925.Spec : Prop :=
  ∀ n, P3414618371857460925.a n = (A254460 (n + 1) : ℚ)

end A254460

/-! ## A254460.P13254849265699770936

`floor(C(2, n%3)^Δ[n²])`
-/

namespace A254460.P13254849265699770936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose 2 (n % 3) : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)⌋

end

end A254460.P13254849265699770936

namespace A254460

/-- `floor(C(2, n%3)^Δ[n²])` -/
def P13254849265699770936.Spec : Prop :=
  ∀ n, P13254849265699770936.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P18213470444736753672

`abs(((-2)^(∑[n]%3))^Δ[n²])`
-/

namespace A254460.P18213470444736753672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((-2) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)|

end

end A254460.P18213470444736753672

namespace A254460

/-- `abs(((-2)^(∑[n]%3))^Δ[n²])` -/
def P18213470444736753672.Spec : Prop :=
  ∀ n, P18213470444736753672.a n = (A254460 (n + 1) : ℚ)

end A254460

/-! ## A254460.P14155362609445488413

`∏{p}[2*n+1, ceil(4/#)^(2*n+1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254460

/-- `∏{p}[2*n+1, ceil(4/#)^(2*n+1)]` -/
def P14155362609445488413.Spec : Prop :=
  ∀ n, P14155362609445488413.a n = A254460 (n + 1)

theorem P14155362609445488413.correct : P14155362609445488413.Spec := by
  intro n
  simp only [A254460, Nat.add_sub_cancel]

end A254460

/-! ## A254460.P11997887194659399776

`A135520(A078689(n))`
-/

namespace A254460.P11997887194659399776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135520 (A078689 n).toNat

end

end A254460.P11997887194659399776

namespace A254460

/-- `A135520(A078689(n))` -/
def P11997887194659399776.Spec : Prop :=
  ∀ n, P11997887194659399776.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P1636718394059341918

`A066532(A047249(n+1))`
-/

namespace A254460.P1636718394059341918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (A047249 (n + 1)).toNat

end

end A254460.P1636718394059341918

namespace A254460

/-- `A066532(A047249(n+1))` -/
def P1636718394059341918.Spec : Prop :=
  ∀ n, P1636718394059341918.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P12342317263462185773

`A066532(A047259(n+1))`
-/

namespace A254460.P12342317263462185773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (A047259 (n + 1)).toNat

end

end A254460.P12342317263462185773

namespace A254460

/-- `A066532(A047259(n+1))` -/
def P12342317263462185773.Spec : Prop :=
  ∀ n, P12342317263462185773.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P11856329143562411626

`A066532(A061891(n+1))`
-/

namespace A254460.P11856329143562411626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (A061891 (n + 1)).toNat

end

end A254460.P11856329143562411626

namespace A254460

/-- `A066532(A061891(n+1))` -/
def P11856329143562411626.Spec : Prop :=
  ∀ n, P11856329143562411626.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P10437935332300955221

`A066532(A029739(n+2))`
-/

namespace A254460.P10437935332300955221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (A029739 (n + 2)).toNat

end

end A254460.P10437935332300955221

namespace A254460

/-- `A066532(A029739(n+2))` -/
def P10437935332300955221.Spec : Prop :=
  ∀ n, P10437935332300955221.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P2810650910765511509

`A066532(A144430(n+2))`
-/

namespace A254460.P2810650910765511509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (A144430 (n + 2)).toNat

end

end A254460.P2810650910765511509

namespace A254460

/-- `A066532(A144430(n+2))` -/
def P2810650910765511509.Spec : Prop :=
  ∀ n, P2810650910765511509.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P10068753899979601818

`gcd(A004171(n), A057078(n))`
-/

namespace A254460.P10068753899979601818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004171 n) (A057078 n)

end

end A254460.P10068753899979601818

namespace A254460

/-- `gcd(A004171(n), A057078(n))` -/
def P10068753899979601818.Spec : Prop :=
  ∀ n, (P10068753899979601818.a n : ℤ) = A254460 (n + 1)

end A254460

/-! ## A254460.P5742217706243756276

`gcd(A081654(n), A260190(n))`
-/

namespace A254460.P5742217706243756276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081654 n) (A260190 n)

end

end A254460.P5742217706243756276

namespace A254460

/-- `gcd(A081654(n), A260190(n))` -/
def P5742217706243756276.Spec : Prop :=
  ∀ n, (P5742217706243756276.a n : ℤ) = A254460 (n + 1)

end A254460

/-! ## A254460.P6952466386860250681

`and(A087289(n), A131713(n))`
-/

namespace A254460.P6952466386860250681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087289 n) (A131713 n)

end

end A254460.P6952466386860250681

namespace A254460

/-- `and(A087289(n), A131713(n))` -/
def P6952466386860250681.Spec : Prop :=
  ∀ n, P6952466386860250681.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P4239997142966284954

`and(A087289(n), A138187(n))`
-/

namespace A254460.P4239997142966284954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087289 n) (A138187 n)

end

end A254460.P4239997142966284954

namespace A254460

/-- `and(A087289(n), A138187(n))` -/
def P4239997142966284954.Spec : Prop :=
  ∀ n, P4239997142966284954.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P10028075634509394371

`A000079((2*n+1)*A022003(n+1))`
-/

namespace A254460.P10028075634509394371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((2 * n + 1 : ℤ) * A022003 (n + 1)).toNat

end

end A254460.P10028075634509394371

namespace A254460

/-- `A000079((2*n+1)*A022003(n+1))` -/
def P10028075634509394371.Spec : Prop :=
  ∀ n, P10028075634509394371.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P1449149806630889923

`A141775((2*n+1)*A022003(n+1))`
-/

namespace A254460.P1449149806630889923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 ((2 * n + 1 : ℤ) * A022003 (n + 1)).toNat

end

end A254460.P1449149806630889923

namespace A254460

/-- `A141775((2*n+1)*A022003(n+1))` -/
def P1449149806630889923.Spec : Prop :=
  ∀ n, P1449149806630889923.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P5257349745222041218

`A104537((2*n+1)*A079978(n+2))`
-/

namespace A254460.P5257349745222041218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104537 ((2 * n + 1 : ℤ) * A079978 (n + 2)).toNat

end

end A254460.P5257349745222041218

namespace A254460

/-- `A104537((2*n+1)*A079978(n+2))` -/
def P5257349745222041218.Spec : Prop :=
  ∀ n, P5257349745222041218.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P14067896463342899429

`A087462(2*n+1)-A087464(2*n+1)`
-/

namespace A254460.P14067896463342899429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087462 (2 * n + 1) - A087464 (2 * n + 1)

end

end A254460.P14067896463342899429

namespace A254460

/-- `A087462(2*n+1)-A087464(2*n+1)` -/
def P14067896463342899429.Spec : Prop :=
  ∀ n, P14067896463342899429.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P12213102605341393875

`A000079((2*n+1)*A131531(2*n+1))`
-/

namespace A254460.P12213102605341393875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((2 * n + 1 : ℤ) * A131531 (2 * n + 1)).toNat

end

end A254460.P12213102605341393875

namespace A254460

/-- `A000079((2*n+1)*A131531(2*n+1))` -/
def P12213102605341393875.Spec : Prop :=
  ∀ n, P12213102605341393875.a n = A254460 (n + 1)

end A254460

/-! ## A254460.P8237917865134924914

`A141775((2*n+1)*A131531(2*n+1))`
-/

namespace A254460.P8237917865134924914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141775 ((2 * n + 1 : ℤ) * A131531 (2 * n + 1)).toNat

end

end A254460.P8237917865134924914

namespace A254460

/-- `A141775((2*n+1)*A131531(2*n+1))` -/
def P8237917865134924914.Spec : Prop :=
  ∀ n, P8237917865134924914.a n = A254460 (n + 1)

end A254460

/-!
# A254461: Prime(n) is included iff prime(n) + n^3 is also prime.

The programs for A254461, there is no canonical definition to state claims against.
-/

/-! ## A254461.P4261762678254914556

`A000040(A141526(n+1))`
-/

namespace A254461.P4261762678254914556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A141526 (n + 1)).toNat

end

end A254461.P4261762678254914556

/-! ## A254461.P9262946343780516556

`A008578(A141526(n+1)+1)`
-/

namespace A254461.P9262946343780516556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A141526 (n + 1) + 1).toNat

end

end A254461.P9262946343780516556

/-! ## A254461.P755935211428262351

`A182986(A141526(n+1)+1)`
-/

namespace A254461.P755935211428262351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A141526 (n + 1) + 1).toNat

end

end A254461.P755935211428262351

/-! ## A254461.P14342286876894776622

`A158611(A141526(n+1)+2)`
-/

namespace A254461.P14342286876894776622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A141526 (n + 1) + 2).toNat

end

end A254461.P14342286876894776622

/-! ## A254461.P15764624664708286495

`A073846(2*A141526(n+1))`
-/

namespace A254461.P15764624664708286495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A141526 (n + 1)).toNat

end

end A254461.P15764624664708286495

/-!
# A254462: Primes prime(n) such that prime(n) + 5*n is also prime.

The programs for A254462, the canonical program `A254462.P9385117643881402940` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254462 has offset 1).

The definition of A254462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254462.P9385117643881402940

`A000040(A076300(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A254462

/-- `A000040(A076300(n+1))` -/
def P9385117643881402940.Spec : Prop :=
  ∀ n, P9385117643881402940.a n = A254462 (n + 1)

theorem P9385117643881402940.correct : P9385117643881402940.Spec := by
  intro n
  simp only [A254462, Nat.add_sub_cancel]

end A254462

/-! ## A254462.P7910018546884595591

`A008578(A076300(n+1)+1)`
-/

namespace A254462.P7910018546884595591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A076300 (n + 1) + 1).toNat

end

end A254462.P7910018546884595591

namespace A254462

/-- `A008578(A076300(n+1)+1)` -/
def P7910018546884595591.Spec : Prop :=
  ∀ n, P7910018546884595591.a n = A254462 (n + 1)

end A254462

/-! ## A254462.P10178845370641196043

`A182986(A076300(n+1)+1)`
-/

namespace A254462.P10178845370641196043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A076300 (n + 1) + 1).toNat

end

end A254462.P10178845370641196043

namespace A254462

/-- `A182986(A076300(n+1)+1)` -/
def P10178845370641196043.Spec : Prop :=
  ∀ n, P10178845370641196043.a n = A254462 (n + 1)

end A254462

/-! ## A254462.P10320533795878574347

`A158611(A076300(n+1)+2)`
-/

namespace A254462.P10320533795878574347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A076300 (n + 1) + 2).toNat

end

end A254462.P10320533795878574347

namespace A254462

/-- `A158611(A076300(n+1)+2)` -/
def P10320533795878574347.Spec : Prop :=
  ∀ n, P10320533795878574347.a n = A254462 (n + 1)

end A254462

/-! ## A254462.P7445136580922874871

`∑{d}[A076300(n+1), A007444(#)]`
-/

namespace A254462.P7445136580922874871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A254462.P7445136580922874871

namespace A254462

/-- `∑{d}[A076300(n+1), A007444(#)]` -/
def P7445136580922874871.Spec : Prop :=
  ∀ n, P7445136580922874871.a n = A254462 (n + 1)

end A254462

/-! ## A254462.P13675268243918345749

`record[A000040(A076300(ceil(C(or(1, n), n)/2)))]`
-/

namespace A254462.P13675268243918345749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076300 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254462.P13675268243918345749

namespace A254462

/-- `record[A000040(A076300(ceil(C(or(1, n), n)/2)))]` -/
def P13675268243918345749.Spec : Prop :=
  ∀ n, P13675268243918345749.a n = A254462 (n + 1)

end A254462

/-! ## A254462.P9335457809959983814

`A073846(2*A076300(n+1))`
-/

namespace A254462.P9335457809959983814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A076300 (n + 1)).toNat

end

end A254462.P9335457809959983814

namespace A254462

/-- `A073846(2*A076300(n+1))` -/
def P9335457809959983814.Spec : Prop :=
  ∀ n, P9335457809959983814.a n = A254462 (n + 1)

end A254462

/-! ## A254462.P12846162662394551467

`A082500(2*A076300(n+1))`
-/

namespace A254462.P12846162662394551467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A076300 (n + 1)).toNat

end

end A254462.P12846162662394551467

namespace A254462

/-- `A082500(2*A076300(n+1))` -/
def P12846162662394551467.Spec : Prop :=
  ∀ n, P12846162662394551467.a n = A254462 (n + 1)

end A254462

/-! ## A254462.P15811301187734981432

`A219606(2*A076300(n+1))`
-/

namespace A254462.P15811301187734981432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A076300 (n + 1)).toNat

end

end A254462.P15811301187734981432

namespace A254462

/-- `A219606(2*A076300(n+1))` -/
def P15811301187734981432.Spec : Prop :=
  ∀ n, P15811301187734981432.a n = A254462 (n + 1)

end A254462

/-! ## A254462.P3889743036426480092

`A207790(2*A076300(n+1))`
-/

namespace A254462.P3889743036426480092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A076300 (n + 1)).toNat

end

end A254462.P3889743036426480092

namespace A254462

/-- `A207790(2*A076300(n+1))` -/
def P3889743036426480092.Spec : Prop :=
  ∀ n, P3889743036426480092.a n = A254462 (n + 1)

end A254462

/-!
# A254463: a(n) = 15*2^n + 6*4^n + 10*3^n + 3*5^n + 6^n + 21.

The programs for A254463, the canonical program `A254463.P7377881334045121171` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254463 has offset 0).

The definition of A254463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*2^n+6*4^n+10*3^n+3*5^n+6^n+21` (program `A254463.P7377881334045121171`, by `A254463.P7377881334045121171.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254463.P7377881334045121171

`15*2^n+6*4^n+10*3^n+3*5^n+6^n+21`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254463

/-- `15*2^n+6*4^n+10*3^n+3*5^n+6^n+21` -/
def P7377881334045121171.Spec : Prop :=
  ∀ n, (P7377881334045121171.a n : ℤ) = A254463 n

theorem P7377881334045121171.correct : P7377881334045121171.Spec := by
  intro n
  simp only [A254463]

end A254463

/-! ## A254463.P4724982526815563946

`abs(A254367(n)-A254465(n))`
-/

namespace A254463.P4724982526815563946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254367 n - A254465 n|

end

end A254463.P4724982526815563946

namespace A254463

/-- `abs(A254367(n)-A254465(n))` -/
def P4724982526815563946.Spec : Prop :=
  ∀ n, P4724982526815563946.a n = A254463 n

end A254463

/-! ## A254463.P10398647795947151046

`(A254367(n)-A254465(n))*A008683(A213521(n+1))`
-/

namespace A254463.P10398647795947151046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254367 n - A254465 n) * A008683 (A213521 (n + 1)).toNat

end

end A254463.P10398647795947151046

namespace A254463

/-- `(A254367(n)-A254465(n))*A008683(A213521(n+1))` -/
def P10398647795947151046.Spec : Prop :=
  ∀ n, P10398647795947151046.a n = A254463 n

end A254463

/-! ## A254463.P14648709611638023555

`abs(A254145(n)-A254464(n))`
-/

namespace A254463.P14648709611638023555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254145 n - A254464 n|

end

end A254463.P14648709611638023555

namespace A254463

/-- `abs(A254145(n)-A254464(n))` -/
def P14648709611638023555.Spec : Prop :=
  ∀ n, P14648709611638023555.a n = A254463 n

end A254463

/-! ## A254463.P4301426277575976718

`lcm(A254145(n)-A254464(n), A000034(n))`
-/

namespace A254463.P4301426277575976718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A254145 n - A254464 n) (A000034 n)

end

end A254463.P4301426277575976718

namespace A254463

/-- `lcm(A254145(n)-A254464(n), A000034(n))` -/
def P4301426277575976718.Spec : Prop :=
  ∀ n, (P4301426277575976718.a n : ℤ) = A254463 n

end A254463

/-!
# A254464: a(n) = 21*2^n + 10*4^n + 15*3^n + 3*6^n + 6*5^n + 7^n + 28.

The programs for A254464, the canonical program `A254464.P2241084014738837999` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254464 has offset 0).

The definition of A254464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254464.P2241084014738837999

`A254463(n)+A254145(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A254464

/-- `A254463(n)+A254145(n)` -/
def P2241084014738837999.Spec : Prop :=
  ∀ n, P2241084014738837999.a n = A254464 n

theorem P2241084014738837999.correct : P2241084014738837999.Spec := by
  intro n
  simp only [A254464]

end A254464

/-! ## A254464.P9313109184118393076

`A254466(n)-A254465(n)`
-/

namespace A254464.P9313109184118393076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254466 n - A254465 n

end

end A254464.P9313109184118393076

namespace A254464

/-- `A254466(n)-A254465(n)` -/
def P9313109184118393076.Spec : Prop :=
  ∀ n, P9313109184118393076.a n = A254464 n

theorem P9313109184118393076.correct : P9313109184118393076.Spec := by
  intro n
  simp only [A254464, Nat.add_sub_cancel, A254464.P9313109184118393076.a, A254464.P2241084014738837999.a, A254145, A254145.P1687355752389577353.a, A254463, A254463.P7377881334045121171.a, A254465, A254465.P2742439347687762003.a, A254466, A254466.P1393730528840118816.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254464

/-! ## A254464.P17381819795504558453

`A254144(n)+A254364(n)+A254145(n)`
-/

namespace A254464.P17381819795504558453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254144 n + (A254364 n + A254145 n)

end

end A254464.P17381819795504558453

namespace A254464

/-- `A254144(n)+A254364(n)+A254145(n)` -/
def P17381819795504558453.Spec : Prop :=
  ∀ n, P17381819795504558453.a n = A254464 n

theorem P17381819795504558453.correct : P17381819795504558453.Spec := by
  intro n
  simp only [A254464, Nat.add_sub_cancel, A254464.P17381819795504558453.a, A254464.P2241084014738837999.a, A254144, A254144.P2458627174334544638.a, A254145, A254145.P1687355752389577353.a, A254364, A254364.P14624624773670493864.a, A254463, A254463.P7377881334045121171.a, A001554, A001554.P2025650633643354615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254464

/-! ## A254464.P4169870201400682646

`A254370(n)+A254466(n)-A254467(n)`
-/

namespace A254464.P4169870201400682646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254370 n + (A254466 n - A254467 n)

end

end A254464.P4169870201400682646

namespace A254464

/-- `A254370(n)+A254466(n)-A254467(n)` -/
def P4169870201400682646.Spec : Prop :=
  ∀ n, P4169870201400682646.a n = A254464 n

theorem P4169870201400682646.correct : P4169870201400682646.Spec := by
  intro n
  simp only [A254464, Nat.add_sub_cancel, A254464.P4169870201400682646.a, A254464.P2241084014738837999.a, A254145, A254145.P1687355752389577353.a, A254370, A254370.P3940876685834326084.a, A254463, A254463.P7377881334045121171.a, A254466, A254466.P1393730528840118816.a, A254467, A254467.P1536968296623787480.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, A254465, A254465.P2742439347687762003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254464

/-! ## A254464.P630350046386853022

`A254466(n)-(A254463(n)+A254367(n))`
-/

namespace A254464.P630350046386853022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254466 n - (A254463 n + A254367 n)

end

end A254464.P630350046386853022

namespace A254464

/-- `A254466(n)-(A254463(n)+A254367(n))` -/
def P630350046386853022.Spec : Prop :=
  ∀ n, P630350046386853022.a n = A254464 n

end A254464

/-!
# A254465: a(n) = 35*2^n + 10*4^n + 20*3^n + 4*5^n + 6^n + 56.

The programs for A254465, the canonical program `A254465.P2742439347687762003` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254465 has offset 0).

The definition of A254465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `35*2^n+10*4^n+20*3^n+4*5^n+6^n+56` (program `A254465.P2742439347687762003`, by `A254465.P2742439347687762003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254465.P2742439347687762003

`35*2^n+10*4^n+20*3^n+4*5^n+6^n+56`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254465

/-- `35*2^n+10*4^n+20*3^n+4*5^n+6^n+56` -/
def P2742439347687762003.Spec : Prop :=
  ∀ n, (P2742439347687762003.a n : ℤ) = A254465 n

theorem P2742439347687762003.correct : P2742439347687762003.Spec := by
  intro n
  simp only [A254465]

end A254465

/-! ## A254465.P7061630936746122901

`abs(A254370(n)-A254467(n))`
-/

namespace A254465.P7061630936746122901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254370 n - A254467 n|

end

end A254465.P7061630936746122901

namespace A254465

/-- `abs(A254370(n)-A254467(n))` -/
def P7061630936746122901.Spec : Prop :=
  ∀ n, P7061630936746122901.a n = A254465 n

end A254465

/-! ## A254465.P4375098958248767163

`lcm(2, A254463(n)+A254367(n))`
-/

namespace A254465.P4375098958248767163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254463 n + A254367 n)

end

end A254465.P4375098958248767163

namespace A254465

/-- `lcm(2, A254463(n)+A254367(n))` -/
def P4375098958248767163.Spec : Prop :=
  ∀ n, (P4375098958248767163.a n : ℤ) = A254465 n

end A254465

/-! ## A254465.P3989836589109785661

`(A254463(n)+A254367(n))*A028920(2*n)`
-/

namespace A254465.P3989836589109785661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254463 n + A254367 n) * A028920 (2 * n)

end

end A254465.P3989836589109785661

namespace A254465

/-- `(A254463(n)+A254367(n))*A028920(2*n)` -/
def P3989836589109785661.Spec : Prop :=
  ∀ n, P3989836589109785661.a n = A254465 n

end A254465

/-! ## A254465.P2920260269475258109

`(A254463(n)+A254367(n))*A001222(A008578(n+2))`
-/

namespace A254465.P2920260269475258109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254463 n + A254367 n) * A001222 (A008578 (n + 2)).toNat

end

end A254465.P2920260269475258109

namespace A254465

/-- `(A254463(n)+A254367(n))*A001222(A008578(n+2))` -/
def P2920260269475258109.Spec : Prop :=
  ∀ n, P2920260269475258109.a n = A254465 n

end A254465

/-! ## A254465.P17615177584747119722

`abs(A254464(n)-A254466(n))`
-/

namespace A254465.P17615177584747119722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254464 n - A254466 n|

end

end A254465.P17615177584747119722

namespace A254465

/-- `abs(A254464(n)-A254466(n))` -/
def P17615177584747119722.Spec : Prop :=
  ∀ n, P17615177584747119722.a n = A254465 n

end A254465

/-! ## A254465.P12828034369781229529

`(A254463(n)+A254367(n))%A254466(n)`
-/

namespace A254465.P12828034369781229529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254463 n + A254367 n) (A254466 n)

end

end A254465.P12828034369781229529

namespace A254465

/-- `(A254463(n)+A254367(n))%A254466(n)` -/
def P12828034369781229529.Spec : Prop :=
  ∀ n, P12828034369781229529.a n = A254465 n

end A254465

/-!
# A254466: a(n) = 56*2^n + 20*4^n + 35*3^n + 4*6^n + 10*5^n + 7^n + 84.

The programs for A254466, the canonical program `A254466.P1393730528840118816` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254466 has offset 0).

The definition of A254466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254466.P1393730528840118816

`A254465(n)+A254464(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A254466

/-- `A254465(n)+A254464(n)` -/
def P1393730528840118816.Spec : Prop :=
  ∀ n, P1393730528840118816.a n = A254466 n

theorem P1393730528840118816.correct : P1393730528840118816.Spec := by
  intro n
  simp only [A254466]

end A254466

/-! ## A254466.P11815084011358924411

`A254468(n)-A254467(n)`
-/

namespace A254466.P11815084011358924411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254468 n - A254467 n

end

end A254466.P11815084011358924411

namespace A254466

/-- `A254468(n)-A254467(n)` -/
def P11815084011358924411.Spec : Prop :=
  ∀ n, P11815084011358924411.a n = A254466 n

theorem P11815084011358924411.correct : P11815084011358924411.Spec := by
  intro n
  simp only [A254466, Nat.add_sub_cancel, A254466.P11815084011358924411.a, A254466.P1393730528840118816.a, A254464, A254464.P2241084014738837999.a, A254465, A254465.P2742439347687762003.a, A254467, A254467.P1536968296623787480.a, A254468, A254468.P17164874337159960283.a, A254145, A254145.P1687355752389577353.a, A254463, A254463.P7377881334045121171.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254466

/-! ## A254466.P11691433534931060584

`A254367(n)+A254464(n)+A254463(n)`
-/

namespace A254466.P11691433534931060584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254367 n + (A254464 n + A254463 n)

end

end A254466.P11691433534931060584

namespace A254466

/-- `A254367(n)+A254464(n)+A254463(n)` -/
def P11691433534931060584.Spec : Prop :=
  ∀ n, P11691433534931060584.a n = A254466 n

end A254466

/-! ## A254466.P9026237256055134633

`A254464(n)+A254467(n)-A254370(n)`
-/

namespace A254466.P9026237256055134633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254464 n + (A254467 n - A254370 n)

end

end A254466.P9026237256055134633

namespace A254466

/-- `A254464(n)+A254467(n)-A254370(n)` -/
def P9026237256055134633.Spec : Prop :=
  ∀ n, P9026237256055134633.a n = A254466 n

theorem P9026237256055134633.correct : P9026237256055134633.Spec := by
  intro n
  simp only [A254466, Nat.add_sub_cancel, A254466.P9026237256055134633.a, A254466.P1393730528840118816.a, A254370, A254370.P3940876685834326084.a, A254464, A254464.P2241084014738837999.a, A254465, A254465.P2742439347687762003.a, A254467, A254467.P1536968296623787480.a, A254145, A254145.P1687355752389577353.a, A254463, A254463.P7377881334045121171.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254466

/-! ## A254466.P3656071084122608857

`A254468(n)-(A254465(n)+A254370(n))`
-/

namespace A254466.P3656071084122608857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254468 n - (A254465 n + A254370 n)

end

end A254466.P3656071084122608857

namespace A254466

/-- `A254468(n)-(A254465(n)+A254370(n))` -/
def P3656071084122608857.Spec : Prop :=
  ∀ n, P3656071084122608857.a n = A254466 n

theorem P3656071084122608857.correct : P3656071084122608857.Spec := by
  intro n
  simp only [A254466, Nat.add_sub_cancel, A254466.P3656071084122608857.a, A254466.P1393730528840118816.a, A254370, A254370.P3940876685834326084.a, A254464, A254464.P2241084014738837999.a, A254465, A254465.P2742439347687762003.a, A254468, A254468.P17164874337159960283.a, A254145, A254145.P1687355752389577353.a, A254463, A254463.P7377881334045121171.a, A254467, A254467.P1536968296623787480.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254466

/-!
# A254467: a(n) = 15*4^n + 70*2^n + 35*3^n + 5^(n+1) + 6^n + 126.

The programs for A254467, the canonical program `A254467.P1536968296623787480` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254467 has offset 0).

The definition of A254467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*4^n+70*2^n+35*3^n+5^(n+1)+6^n+126` (program `A254467.P1536968296623787480`, by `A254467.P1536968296623787480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254467.P1536968296623787480

`15*4^n+70*2^n+35*3^n+5^(n+1)+6^n+126`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254467

/-- `15*4^n+70*2^n+35*3^n+5^(n+1)+6^n+126` -/
def P1536968296623787480.Spec : Prop :=
  ∀ n, (P1536968296623787480.a n : ℤ) = A254467 n

theorem P1536968296623787480.correct : P1536968296623787480.Spec := by
  intro n
  simp only [A254467]

end A254467

/-!
# A254468: a(n) = 35*4^n + 126*2^n + 70*3^n + 15*5^n + 5*6^n + 7^n + 210.

The programs for A254468, the canonical program `A254468.P17164874337159960283` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254468 has offset 0).

The definition of A254468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254468.P17164874337159960283

`A254467(n)+A254466(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A254468

/-- `A254467(n)+A254466(n)` -/
def P17164874337159960283.Spec : Prop :=
  ∀ n, P17164874337159960283.a n = A254468 n

theorem P17164874337159960283.correct : P17164874337159960283.Spec := by
  intro n
  simp only [A254468]

end A254468

/-! ## A254468.P5391302275870711160

`A254370(n)+A254466(n)+A254465(n)`
-/

namespace A254468.P5391302275870711160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254370 n + (A254466 n + A254465 n)

end

end A254468.P5391302275870711160

namespace A254468

/-- `A254370(n)+A254466(n)+A254465(n)` -/
def P5391302275870711160.Spec : Prop :=
  ∀ n, P5391302275870711160.a n = A254468 n

theorem P5391302275870711160.correct : P5391302275870711160.Spec := by
  intro n
  simp only [A254468, Nat.add_sub_cancel, A254468.P5391302275870711160.a, A254468.P17164874337159960283.a, A254370, A254370.P3940876685834326084.a, A254465, A254465.P2742439347687762003.a, A254466, A254466.P1393730528840118816.a, A254467, A254467.P1536968296623787480.a, A254464, A254464.P2241084014738837999.a, A254145, A254145.P1687355752389577353.a, A254463, A254463.P7377881334045121171.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254468

/-! ## A254468.P16433955845679288973

`A254464(n)+A254467(n)+A254465(n)`
-/

namespace A254468.P16433955845679288973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254464 n + (A254467 n + A254465 n)

end

end A254468.P16433955845679288973

namespace A254468

/-- `A254464(n)+A254467(n)+A254465(n)` -/
def P16433955845679288973.Spec : Prop :=
  ∀ n, P16433955845679288973.a n = A254468 n

theorem P16433955845679288973.correct : P16433955845679288973.Spec := by
  intro n
  simp only [A254468, Nat.add_sub_cancel, A254468.P16433955845679288973.a, A254468.P17164874337159960283.a, A254464, A254464.P2241084014738837999.a, A254465, A254465.P2742439347687762003.a, A254466, A254466.P1393730528840118816.a, A254467, A254467.P1536968296623787480.a, A254145, A254145.P1687355752389577353.a, A254463, A254463.P7377881334045121171.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254468

/-! ## A254468.P2070734330555524442

`A254466(n)+A254367(n)+A254465(n)+A254369(n)`
-/

namespace A254468.P2070734330555524442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254466 n + (A254367 n + (A254465 n + A254369 n))

end

end A254468.P2070734330555524442

namespace A254468

/-- `A254466(n)+A254367(n)+A254465(n)+A254369(n)` -/
def P2070734330555524442.Spec : Prop :=
  ∀ n, P2070734330555524442.a n = A254468 n

end A254468

/-! ## A254468.P3681581213367658041

`A254465(n)+A254370(n)+A254465(n)+A254464(n)`
-/

namespace A254468.P3681581213367658041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254465 n + A254370 n + (A254465 n + A254464 n)

end

end A254468.P3681581213367658041

namespace A254468

/-- `A254465(n)+A254370(n)+A254465(n)+A254464(n)` -/
def P3681581213367658041.Spec : Prop :=
  ∀ n, P3681581213367658041.a n = A254468 n

theorem P3681581213367658041.correct : P3681581213367658041.Spec := by
  intro n
  simp only [A254468, Nat.add_sub_cancel, A254468.P3681581213367658041.a, A254468.P17164874337159960283.a, A254370, A254370.P3940876685834326084.a, A254464, A254464.P2241084014738837999.a, A254465, A254465.P2742439347687762003.a, A254466, A254466.P1393730528840118816.a, A254467, A254467.P1536968296623787480.a, A254145, A254145.P1687355752389577353.a, A254463, A254463.P7377881334045121171.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254468

/-! ## A254468.P7228838541367281191

`A254467(n)+A254367(n)+A254464(n)+A254463(n)`
-/

namespace A254468.P7228838541367281191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254467 n + (A254367 n + (A254464 n + A254463 n))

end

end A254468.P7228838541367281191

namespace A254468

/-- `A254467(n)+A254367(n)+A254464(n)+A254463(n)` -/
def P7228838541367281191.Spec : Prop :=
  ∀ n, P7228838541367281191.a n = A254468 n

end A254468

/-! ## A254468.P13546547026176788507

`A254466(n)+A254370(n)+A254466(n)-A254464(n)`
-/

namespace A254468.P13546547026176788507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254466 n + (A254370 n + (A254466 n - A254464 n))

end

end A254468.P13546547026176788507

namespace A254468

/-- `A254466(n)+A254370(n)+A254466(n)-A254464(n)` -/
def P13546547026176788507.Spec : Prop :=
  ∀ n, P13546547026176788507.a n = A254468 n

theorem P13546547026176788507.correct : P13546547026176788507.Spec := by
  intro n
  simp only [A254468, Nat.add_sub_cancel, A254468.P13546547026176788507.a, A254468.P17164874337159960283.a, A254370, A254370.P3940876685834326084.a, A254464, A254464.P2241084014738837999.a, A254466, A254466.P1393730528840118816.a, A254467, A254467.P1536968296623787480.a, A254145, A254145.P1687355752389577353.a, A254463, A254463.P7377881334045121171.a, A254465, A254465.P2742439347687762003.a, A001554, A001554.P2025650633643354615.a, A254144, A254144.P2458627174334544638.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254468

/-!
# A254469: Sixth partial sums of cubes (A000578).

The programs for A254469, the canonical program `A254469.P7854503111252176703` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254469 has offset 1).

The definition of A254469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254469.P7854503111252176703

`∑[∑[∑[∑[∑[∑[n+1]²]]]]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254469

/-- `∑[∑[∑[∑[∑[∑[n+1]²]]]]]` -/
def P7854503111252176703.Spec : Prop :=
  ∀ n, (P7854503111252176703.a n : ℤ) = A254469 (n + 1)

theorem P7854503111252176703.correct : P7854503111252176703.Spec := by
  intro n
  simp only [A254469, Nat.add_sub_cancel]

end A254469

/-! ## A254469.P3555551132542639127

`A101102(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A254469.P3555551132542639127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101102 (n + 1) + a (n - 1)

end

end A254469.P3555551132542639127

namespace A254469

/-- `A101102(n+1)+a(n-1)` -/
def P3555551132542639127.Spec : Prop :=
  ∀ n, P3555551132542639127.a n = A254469 (n + 1)

end A254469

/-! ## A254469.P6172960223076440942

`2*A053310(n)-A053347(n)`
-/

namespace A254469.P6172960223076440942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053310 n - A053347 n

end

end A254469.P6172960223076440942

namespace A254469

/-- `2*A053310(n)-A053347(n)` -/
def P6172960223076440942.Spec : Prop :=
  ∀ n, P6172960223076440942.a n = A254469 (n + 1)

end A254469

/-! ## A254469.P14532317491481811495

`∑[2*A053367(n)]-A053347(n)`
-/

namespace A254469.P14532317491481811495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053347 n

end

end A254469.P14532317491481811495

namespace A254469

/-- `∑[2*A053367(n)]-A053347(n)` -/
def P14532317491481811495.Spec : Prop :=
  ∀ n, P14532317491481811495.a n = A254469 (n + 1)

end A254469

/-! ## A254469.P16398754194361446652

`gcd(∑[A101102(n+1)], A000038(n))`
-/

namespace A254469.P16398754194361446652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A254469.P16398754194361446652

namespace A254469

/-- `gcd(∑[A101102(n+1)], A000038(n))` -/
def P16398754194361446652.Spec : Prop :=
  ∀ n, (P16398754194361446652.a n : ℤ) = A254469 (n + 1)

end A254469

/-! ## A254469.P2412255049736102310

`lcm(∑[A101102(n+1)], A000034(n))`
-/

namespace A254469.P2412255049736102310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A254469.P2412255049736102310

namespace A254469

/-- `lcm(∑[A101102(n+1)], A000034(n))` -/
def P2412255049736102310.Spec : Prop :=
  ∀ n, (P2412255049736102310.a n : ℤ) = A254469 (n + 1)

end A254469

/-! ## A254469.P13770988388446168146

`or(∑[A101102(n+1)], A000007(n))`
-/

namespace A254469.P13770988388446168146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A254469.P13770988388446168146

namespace A254469

/-- `or(∑[A101102(n+1)], A000007(n))` -/
def P13770988388446168146.Spec : Prop :=
  ∀ n, P13770988388446168146.a n = A254469 (n + 1)

end A254469

/-! ## A254469.P4427403831073576450

`(A006542(n+4)/A047819(n))²*A140901(n)`
-/

namespace A254469.P4427403831073576450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A006542 (n + 4) : ℚ) / (A047819 n : ℚ)) ^ 2 * (A140901 n : ℚ)

end

end A254469.P4427403831073576450

namespace A254469

/-- `(A006542(n+4)/A047819(n))²*A140901(n)` -/
def P4427403831073576450.Spec : Prop :=
  ∀ n, P4427403831073576450.a n = (A254469 (n + 1) : ℚ)

end A254469

/-! ## A254469.P596713596653584000

`A254869(n+2)-(A254869(n+1)+A101102(n+2))`
-/

namespace A254469.P596713596653584000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254869 (n + 2) - (A254869 (n + 1) + A101102 (n + 2))

end

end A254469.P596713596653584000

namespace A254469

/-- `A254869(n+2)-(A254869(n+1)+A101102(n+2))` -/
def P596713596653584000.Spec : Prop :=
  ∀ n, P596713596653584000.a n = A254469 (n + 1)

end A254469

/-! ## A254469.P2832621560232061690

`∑[A101102(n+1)]%A042454(n)`
-/

namespace A254469.P2832621560232061690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A042454 n)

end

end A254469.P2832621560232061690

namespace A254469

/-- `∑[A101102(n+1)]%A042454(n)` -/
def P2832621560232061690.Spec : Prop :=
  ∀ n, P2832621560232061690.a n = A254469 (n + 1)

end A254469

/-!
# A254470: Sixth partial sums of fourth powers (A000583).

The programs for A254470, the canonical program `A254470.P18045822916155875585` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254470 has offset 1).

The definition of A254470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254470.P18045822916155875585

`∑[∑[∑[∑[∑[∑[(n+1)^4]]]]]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254470

/-- `∑[∑[∑[∑[∑[∑[(n+1)^4]]]]]]` -/
def P18045822916155875585.Spec : Prop :=
  ∀ n, (P18045822916155875585.a n : ℤ) = A254470 (n + 1)

theorem P18045822916155875585.correct : P18045822916155875585.Spec := by
  intro n
  simp only [A254470, Nat.add_sub_cancel]

end A254470

/-! ## A254470.P4326589142079561688

`A254681(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A254470.P4326589142079561688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254681 (n + 1) + a (n - 1)

end

end A254470.P4326589142079561688

namespace A254470

/-- `A254681(n+1)+a(n-1)` -/
def P4326589142079561688.Spec : Prop :=
  ∀ n, P4326589142079561688.a n = A254470 (n + 1)

end A254470

/-! ## A254470.P9142695392397328644

`or(∑[A254681(n+1)], A000007(n))`
-/

namespace A254470.P9142695392397328644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A254470.P9142695392397328644

namespace A254470

/-- `or(∑[A254681(n+1)], A000007(n))` -/
def P9142695392397328644.Spec : Prop :=
  ∀ n, P9142695392397328644.a n = A254470 (n + 1)

end A254470

/-! ## A254470.P1661498824605521611

`A020985(n)²*∑[∑[A101091(n+1)]]`
-/

namespace A254470.P1661498824605521611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101091 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254470.P1661498824605521611

namespace A254470

/-- `A020985(n)²*∑[∑[A101091(n+1)]]` -/
def P1661498824605521611.Spec : Prop :=
  ∀ n, P1661498824605521611.a n = A254470 (n + 1)

end A254470

/-! ## A254470.P18214992925723200825

`∑[A254681(n+1)]*A003484(2*n+1)`
-/

namespace A254470.P18214992925723200825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A003484 (2 * n + 1)

end

end A254470.P18214992925723200825

namespace A254470

/-- `∑[A254681(n+1)]*A003484(2*n+1)` -/
def P18214992925723200825.Spec : Prop :=
  ∀ n, P18214992925723200825.a n = A254470 (n + 1)

end A254470

/-! ## A254470.P9448763969546828003

`∑[A254681(n+1)]%A207371(n+1)`
-/

namespace A254470.P9448763969546828003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A207371 (n + 1))

end

end A254470.P9448763969546828003

namespace A254470

/-- `∑[A254681(n+1)]%A207371(n+1)` -/
def P9448763969546828003.Spec : Prop :=
  ∀ n, P9448763969546828003.a n = A254470 (n + 1)

end A254470

/-! ## A254470.P12017335637983673382

`and(1, A164291(n+2))*∑[A254681(n+1)]`
-/

namespace A254470.P12017335637983673382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A164291 (n + 2)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254470.P12017335637983673382

namespace A254470

/-- `and(1, A164291(n+2))*∑[A254681(n+1)]` -/
def P12017335637983673382.Spec : Prop :=
  ∀ n, P12017335637983673382.a n = A254470 (n + 1)

end A254470

/-! ## A254470.P14117952951600981079

`∑[A254681(n+1)]%A331898(n)²`
-/

namespace A254470.P14117952951600981079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A331898 n ^ 2)

end

end A254470.P14117952951600981079

namespace A254470

/-- `∑[A254681(n+1)]%A331898(n)²` -/
def P14117952951600981079.Spec : Prop :=
  ∀ n, P14117952951600981079.a n = A254470 (n + 1)

end A254470

/-!
# A254471: Sixth partial sums of fifth powers (A000584).

The programs for A254471, the canonical program `A254471.P15689595551624122579` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254471 has offset 1).

The definition of A254471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254471.P15689595551624122579

`∑[∑[∑[∑[∑[∑[(n+1)^5]]]]]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254471

/-- `∑[∑[∑[∑[∑[∑[(n+1)^5]]]]]]` -/
def P15689595551624122579.Spec : Prop :=
  ∀ n, (P15689595551624122579.a n : ℤ) = A254471 (n + 1)

theorem P15689595551624122579.correct : P15689595551624122579.Spec := by
  intro n
  simp only [A254471, Nat.add_sub_cancel]

end A254471

/-! ## A254471.P11761745570252031159

`A254682(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A254471.P11761745570252031159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254682 (n + 1) + a (n - 1)

end

end A254471.P11761745570252031159

namespace A254471

/-- `A254682(n+1)+a(n-1)` -/
def P11761745570252031159.Spec : Prop :=
  ∀ n, P11761745570252031159.a n = A254471 (n + 1)

end A254471

/-! ## A254471.P6250905402002274862

`lcm(∑[A254682(n+1)], A177704(n))`
-/

namespace A254471.P6250905402002274862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A177704 n)

end

end A254471.P6250905402002274862

namespace A254471

/-- `lcm(∑[A254682(n+1)], A177704(n))` -/
def P6250905402002274862.Spec : Prop :=
  ∀ n, (P6250905402002274862.a n : ℤ) = A254471 (n + 1)

end A254471

/-! ## A254471.P11756727491877420816

`or(∑[A254682(n+1)], A000007(n))`
-/

namespace A254471.P11756727491877420816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A254471.P11756727491877420816

namespace A254471

/-- `or(∑[A254682(n+1)], A000007(n))` -/
def P11756727491877420816.Spec : Prop :=
  ∀ n, P11756727491877420816.a n = A254471 (n + 1)

end A254471

/-! ## A254471.P1682984442830439775

`A254871(n+2)-(A254871(n+1)+A254682(n+2))`
-/

namespace A254471.P1682984442830439775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254871 (n + 2) - (A254871 (n + 1) + A254682 (n + 2))

end

end A254471.P1682984442830439775

namespace A254471

/-- `A254871(n+2)-(A254871(n+1)+A254682(n+2))` -/
def P1682984442830439775.Spec : Prop :=
  ∀ n, P1682984442830439775.a n = A254471 (n + 1)

end A254471

/-! ## A254471.P6908583796339220615

`A000122(A020639(7*n+3))+∑[A254682(n+1)]`
-/

namespace A254471.P6908583796339220615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A020639 (7 * n + 3)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254471.P6908583796339220615

namespace A254471

/-- `A000122(A020639(7*n+3))+∑[A254682(n+1)]` -/
def P6908583796339220615.Spec : Prop :=
  ∀ n, P6908583796339220615.a n = A254471 (n + 1)

end A254471

/-!
# A254472: Sixth partial sums of sixth powers (A001014).

The programs for A254472, the canonical program `A254472.P10604385469955686908` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254472 has offset 1).

The definition of A254472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254472.P10604385469955686908

`∑[∑[∑[∑[∑[∑[(n+1)^6]]]]]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254472

/-- `∑[∑[∑[∑[∑[∑[(n+1)^6]]]]]]` -/
def P10604385469955686908.Spec : Prop :=
  ∀ n, (P10604385469955686908.a n : ℤ) = A254472 (n + 1)

theorem P10604385469955686908.correct : P10604385469955686908.Spec := by
  intro n
  simp only [A254472, Nat.add_sub_cancel]

end A254472

/-! ## A254472.P6454024944561132113

`A254683(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A254472.P6454024944561132113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254683 (n + 1) + a (n - 1)

end

end A254472.P6454024944561132113

namespace A254472

/-- `A254683(n+1)+a(n-1)` -/
def P6454024944561132113.Spec : Prop :=
  ∀ n, P6454024944561132113.a n = A254472 (n + 1)

end A254472

/-! ## A254472.P4831569763963576556

`lcm(∑[A254683(n+1)], A177704(n))`
-/

namespace A254472.P4831569763963576556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A177704 n)

end

end A254472.P4831569763963576556

namespace A254472

/-- `lcm(∑[A254683(n+1)], A177704(n))` -/
def P4831569763963576556.Spec : Prop :=
  ∀ n, (P4831569763963576556.a n : ℤ) = A254472 (n + 1)

end A254472

/-! ## A254472.P10970136522332539060

`or(∑[A254683(n+1)], A000007(n))`
-/

namespace A254472.P10970136522332539060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A254472.P10970136522332539060

namespace A254472

/-- `or(∑[A254683(n+1)], A000007(n))` -/
def P10970136522332539060.Spec : Prop :=
  ∀ n, P10970136522332539060.a n = A254472 (n + 1)

end A254472

/-! ## A254472.P5237911434668171923

`A254872(n+2)-(A254872(n+1)+A254683(n+2))`
-/

namespace A254472.P5237911434668171923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254872 (n + 2) - (A254872 (n + 1) + A254683 (n + 2))

end

end A254472.P5237911434668171923

namespace A254472

/-- `A254872(n+2)-(A254872(n+1)+A254683(n+2))` -/
def P5237911434668171923.Spec : Prop :=
  ∀ n, P5237911434668171923.a n = A254472 (n + 1)

end A254472

/-! ## A254472.P6435277502686515153

`∑[A254683(n+1)]%A204303(n+1)`
-/

namespace A254472.P6435277502686515153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A204303 (n + 1))

end

end A254472.P6435277502686515153

namespace A254472

/-- `∑[A254683(n+1)]%A204303(n+1)` -/
def P6435277502686515153.Spec : Prop :=
  ∀ n, P6435277502686515153.a n = A254472 (n + 1)

end A254472

/-! ## A254472.P8793177251174793831

`∑[A254683(n+1)]*A144064(∑[n])`
-/

namespace A254472.P8793177251174793831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A144064 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A254472.P8793177251174793831

namespace A254472

/-- `∑[A254683(n+1)]*A144064(∑[n])` -/
def P8793177251174793831.Spec : Prop :=
  ∀ n, P8793177251174793831.a n = A254472 (n + 1)

end A254472

/-!
# A254473: 24-hedral numbers: a(n) = (2*n + 1)*(8*n^2 + 14*n + 7).

The programs for A254473, the canonical program `A254473.P9352682138429531850` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254473 has offset 0).

The definition of A254473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(8*n²+14*n+7)` (program `A254473.P9352682138429531850`, by `A254473.P9352682138429531850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254473.P9352682138429531850

`(2*n+1)*(8*n²+14*n+7)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254473

/-- `(2*n+1)*(8*n²+14*n+7)` -/
def P9352682138429531850.Spec : Prop :=
  ∀ n, (P9352682138429531850.a n : ℤ) = A254473 n

theorem P9352682138429531850.correct : P9352682138429531850.Spec := by
  intro n
  simp only [A254473]

end A254473

/-! ## A254473.P11296468009606701838

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=7, a(1)=87, a(2)=335, a(3)=847`
-/

namespace A254473.P11296468009606701838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 87, 335, 847] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A254473.P11296468009606701838

namespace A254473

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11296468009606701838.Spec : Prop :=
  ∀ n, P11296468009606701838.a n = A254473 n

theorem P11296468009606701838.correct : P11296468009606701838.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A254473, Nat.add_sub_cancel, A254473.P11296468009606701838.a, A254473.P9352682138429531850.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A254473, Nat.add_sub_cancel, A254473.P11296468009606701838.a, A254473.P9352682138429531850.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A254473

/-! ## A254473.P945209841900507776

`floor(Δ[C((2*n+1)*2*n, 2)/2])`
-/

namespace A254473.P945209841900507776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((2 * n + 1) * (2 * n)) 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A254473.P945209841900507776

namespace A254473

/-- `floor(Δ[C((2*n+1)*2*n, 2)/2])` -/
def P945209841900507776.Spec : Prop :=
  ∀ n, P945209841900507776.a n = A254473 n

end A254473

/-! ## A254473.P4078436266422151948

`Δ[A000217(2*n)²]-2*(n+1)`
-/

namespace A254473.P4078436266422151948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 * (n + 1) : ℤ)

end

end A254473.P4078436266422151948

namespace A254473

/-- `Δ[A000217(2*n)²]-2*(n+1)` -/
def P4078436266422151948.Spec : Prop :=
  ∀ n, P4078436266422151948.a n = A254473 n

theorem P4078436266422151948.correct : P4078436266422151948.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P4078436266422151948.f1, A254473.P4078436266422151948.a, A254473.P9352682138429531850.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P11902967762317861350

`Δ[2*((n+1)*(n-1)+1)*A046092(n)]-1`
-/

namespace A254473.P11902967762317861350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * ((n : ℤ) - 1) + 1) * A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A254473.P11902967762317861350

namespace A254473

/-- `Δ[2*((n+1)*(n-1)+1)*A046092(n)]-1` -/
def P11902967762317861350.Spec : Prop :=
  ∀ n, P11902967762317861350.a n = A254473 n

theorem P11902967762317861350.correct : P11902967762317861350.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P11902967762317861350.f1, A254473.P11902967762317861350.a, A254473.P9352682138429531850.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P12102086588063700479

`A016755(n)+A069072(n)`
-/

namespace A254473.P12102086588063700479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n + A069072 n

end

end A254473.P12102086588063700479

namespace A254473

/-- `A016755(n)+A069072(n)` -/
def P12102086588063700479.Spec : Prop :=
  ∀ n, P12102086588063700479.a n = A254473 n

theorem P12102086588063700479.correct : P12102086588063700479.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P12102086588063700479.a, A254473.P9352682138429531850.a, A016755, A016755.P5941101717872313811.a, A069072, A069072.P4524255164454282767.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P17948039955682093777

`A280059(n)+A256833(n)`
-/

namespace A254473.P17948039955682093777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280059 n + A256833 n

end

end A254473.P17948039955682093777

namespace A254473

/-- `A280059(n)+A256833(n)` -/
def P17948039955682093777.Spec : Prop :=
  ∀ n, P17948039955682093777.a n = A254473 n

theorem P17948039955682093777.correct : P17948039955682093777.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P17948039955682093777.a, A254473.P9352682138429531850.a, A256833, A256833.P10297936977861740275.a, A280059, A280059.P842335069521915048.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P9088459206155630108

`A260955(n)+A046142(n+1)`
-/

namespace A254473.P9088459206155630108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260955 n + A046142 (n + 1)

end

end A254473.P9088459206155630108

namespace A254473

/-- `A260955(n)+A046142(n+1)` -/
def P9088459206155630108.Spec : Prop :=
  ∀ n, P9088459206155630108.a n = A254473 n

end A254473

/-! ## A254473.P12287735684167521472

`A144965(n+1)-A158480(n+1)`
-/

namespace A254473.P12287735684167521472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144965 (n + 1) - A158480 (n + 1)

end

end A254473.P12287735684167521472

namespace A254473

/-- `A144965(n+1)-A158480(n+1)` -/
def P12287735684167521472.Spec : Prop :=
  ∀ n, P12287735684167521472.a n = A254473 n

theorem P12287735684167521472.correct : P12287735684167521472.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P12287735684167521472.a, A254473.P9352682138429531850.a, A144965, A144965.P16257968433978150562.a, A158480, A158480.P3708911020539906385.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P3223951395860837154

`A008586(n+1)*A054552(n+1)-1`
-/

namespace A254473.P3223951395860837154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) * A054552 (n + 1) - 1

end

end A254473.P3223951395860837154

namespace A254473

/-- `A008586(n+1)*A054552(n+1)-1` -/
def P3223951395860837154.Spec : Prop :=
  ∀ n, P3223951395860837154.a n = A254473 n

theorem P3223951395860837154.correct : P3223951395860837154.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P3223951395860837154.a, A254473.P9352682138429531850.a, A008586, A008586.P15642444062404201100.a, A054552, A054552.P9181386657183712970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P9024517478667211074

`A144965(n+1)-A010014(n+1)/2`
-/

namespace A254473.P9024517478667211074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144965 (n + 1) : ℚ) - (A010014 (n + 1) : ℚ) / 2

end

end A254473.P9024517478667211074

namespace A254473

/-- `A144965(n+1)-A010014(n+1)/2` -/
def P9024517478667211074.Spec : Prop :=
  ∀ n, P9024517478667211074.a n = (A254473 n : ℚ)

end A254473

/-! ## A254473.P4844811135870630436

`A046142(n+2)-2*A158480(n+1)`
-/

namespace A254473.P4844811135870630436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046142 (n + 2) - 2 * A158480 (n + 1)

end

end A254473.P4844811135870630436

namespace A254473

/-- `A046142(n+2)-2*A158480(n+1)` -/
def P4844811135870630436.Spec : Prop :=
  ∀ n, P4844811135870630436.a n = A254473 n

end A254473

/-! ## A254473.P15370649393016957982

`A008589(n+1)+n*A082041(n+1)`
-/

namespace A254473.P15370649393016957982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n + 1) + (n : ℤ) * A082041 (n + 1)

end

end A254473.P15370649393016957982

namespace A254473

/-- `A008589(n+1)+n*A082041(n+1)` -/
def P15370649393016957982.Spec : Prop :=
  ∀ n, P15370649393016957982.a n = A254473 n

theorem P15370649393016957982.correct : P15370649393016957982.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P15370649393016957982.a, A254473.P9352682138429531850.a, A008589, A008589.P8963889148823201939.a, A082041, A082041.P4769740866210431926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P6900892160785078773

`A000466(n+1)*A016825(n)-A000466(n)`
-/

namespace A254473.P6900892160785078773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (n + 1) * A016825 n - A000466 n

end

end A254473.P6900892160785078773

namespace A254473

/-- `A000466(n+1)*A016825(n)-A000466(n)` -/
def P6900892160785078773.Spec : Prop :=
  ∀ n, P6900892160785078773.a n = A254473 n

theorem P6900892160785078773.correct : P6900892160785078773.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P6900892160785078773.a, A254473.P9352682138429531850.a, A000466, A000466.P5626493666969552810.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P14344219032733437212

`A016742(n+1)*A016825(n)-A016754(n)`
-/

namespace A254473.P14344219032733437212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (n + 1) * A016825 n - A016754 n

end

end A254473.P14344219032733437212

namespace A254473

/-- `A016742(n+1)*A016825(n)-A016754(n)` -/
def P14344219032733437212.Spec : Prop :=
  ∀ n, P14344219032733437212.a n = A254473 n

theorem P14344219032733437212.correct : P14344219032733437212.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P14344219032733437212.a, A254473.P9352682138429531850.a, A016742, A016742.P17821809754172938154.a, A016754, A016754.P2987865549988322084.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P9097928280210362289

`A000466(n+1)+A008586(n+1)*A016754(n)`
-/

namespace A254473.P9097928280210362289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (n + 1) + A008586 (n + 1) * A016754 n

end

end A254473.P9097928280210362289

namespace A254473

/-- `A000466(n+1)+A008586(n+1)*A016754(n)` -/
def P9097928280210362289.Spec : Prop :=
  ∀ n, P9097928280210362289.a n = A254473 n

theorem P9097928280210362289.correct : P9097928280210362289.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P9097928280210362289.a, A254473.P9352682138429531850.a, A000466, A000466.P5626493666969552810.a, A008586, A008586.P15642444062404201100.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P17299951344227973782

`A046142(n+2)+A016755(n)-A016755(n+1)`
-/

namespace A254473.P17299951344227973782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046142 (n + 2) + (A016755 n - A016755 (n + 1))

end

end A254473.P17299951344227973782

namespace A254473

/-- `A046142(n+2)+A016755(n)-A016755(n+1)` -/
def P17299951344227973782.Spec : Prop :=
  ∀ n, P17299951344227973782.a n = A254473 n

end A254473

/-! ## A254473.P14175679485078391519

`A185438(n+1)+A005843(n)*A185438(n+1)`
-/

namespace A254473.P14175679485078391519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185438 (n + 1) + A005843 n * A185438 (n + 1)

end

end A254473.P14175679485078391519

namespace A254473

/-- `A185438(n+1)+A005843(n)*A185438(n+1)` -/
def P14175679485078391519.Spec : Prop :=
  ∀ n, P14175679485078391519.a n = A254473 n

theorem P14175679485078391519.correct : P14175679485078391519.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P14175679485078391519.a, A254473.P9352682138429531850.a, A005843, A005843.P3167286115683555970.a, A185438, A185438.P17362725107201576435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P76074696824181052

`A033567(n+1)*A185438(n+1)/A004767(n)`
-/

namespace A254473.P76074696824181052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033567 (n + 1) * A185438 (n + 1) : ℚ) / (A004767 n : ℚ)

end

end A254473.P76074696824181052

namespace A254473

/-- `A033567(n+1)*A185438(n+1)/A004767(n)` -/
def P76074696824181052.Spec : Prop :=
  ∀ n, P76074696824181052.a n = (A254473 n : ℚ)

theorem P76074696824181052.correct : P76074696824181052.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P76074696824181052.a, A254473.P9352682138429531850.a, A004767, A004767.P13352534504447192883.a, A033567, A033567.P4876348831150855649.a, A185438, A185438.P17362725107201576435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-! ## A254473.P6532054188464825001

`A008586(n+1)*A054554(n+2)-A053755(n+1)`
-/

namespace A254473.P6532054188464825001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) * A054554 (n + 2) - A053755 (n + 1)

end

end A254473.P6532054188464825001

namespace A254473

/-- `A008586(n+1)*A054554(n+2)-A053755(n+1)` -/
def P6532054188464825001.Spec : Prop :=
  ∀ n, P6532054188464825001.a n = A254473 n

theorem P6532054188464825001.correct : P6532054188464825001.Spec := by
  intro n
  simp only [A254473, Nat.add_sub_cancel, A254473.P6532054188464825001.a, A254473.P9352682138429531850.a, A008586, A008586.P15642444062404201100.a, A053755, A053755.P11748163540145338459.a, A054554, A054554.P10059529129339584182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254473

/-!
# A254474: 30-gonal numbers: a(n) = n*(14*n-13).

The programs for A254474, the canonical program `A254474.P15703138997127178640` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254474 has offset 0).

The definition of A254474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(14*n-13)` (program `A254474.P15703138997127178640`, by `A254474.P15703138997127178640.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254474.P15703138997127178640

`n*(14*n-13)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A254474

/-- `n*(14*n-13)` -/
def P15703138997127178640.Spec : Prop :=
  ∀ n, P15703138997127178640.a n = A254474 n

theorem P15703138997127178640.correct : P15703138997127178640.Spec := by
  intro n
  simp only [A254474]

end A254474

/-! ## A254474.P17074238698357047847

`n²+26*C(n, 2)`
-/

namespace A254474.P17074238698357047847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 26 * Nat.choose n 2

end

end A254474.P17074238698357047847

namespace A254474

/-- `n²+26*C(n, 2)` -/
def P17074238698357047847.Spec : Prop :=
  ∀ n, (P17074238698357047847.a n : ℤ) = A254474 n

theorem P17074238698357047847.correct : P17074238698357047847.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P17074238698357047847.a, A254474.P15703138997127178640.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P14925534484099210310

`∑[a(n-1)+28]` with `a(0)=0, a(1)=1`
-/

namespace A254474.P14925534484099210310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254474.P14925534484099210310

namespace A254474

/-- `∑[a(n-1)+28]` -/
def P14925534484099210310.Spec : Prop :=
  ∀ n, (P14925534484099210310.a n : ℤ) = A254474 n

end A254474

/-! ## A254474.P8382565123710351553

`A263226(n)-n²`
-/

namespace A254474.P8382565123710351553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263226 n - (n ^ 2 : ℤ)

end

end A254474.P8382565123710351553

namespace A254474

/-- `A263226(n)-n²` -/
def P8382565123710351553.Spec : Prop :=
  ∀ n, P8382565123710351553.a n = A254474 n

theorem P8382565123710351553.correct : P8382565123710351553.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P8382565123710351553.a, A254474.P15703138997127178640.a, A263226, A263226.P10219769499938942172.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P15441160411056953977

`2*A051868(n)-n`
-/

namespace A254474.P15441160411056953977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051868 n - (n : ℤ)

end

end A254474.P15441160411056953977

namespace A254474

/-- `2*A051868(n)-n` -/
def P15441160411056953977.Spec : Prop :=
  ∀ n, P15441160411056953977.a n = A254474 n

theorem P15441160411056953977.correct : P15441160411056953977.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P15441160411056953977.a, A254474.P15703138997127178640.a, A051868, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P12139685293170935478

`A195021(n)-2*n`
-/

namespace A254474.P12139685293170935478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195021 n - (2 * n : ℤ)

end

end A254474.P12139685293170935478

namespace A254474

/-- `A195021(n)-2*n` -/
def P12139685293170935478.Spec : Prop :=
  ∀ n, P12139685293170935478.a n = A254474 n

theorem P12139685293170935478.correct : P12139685293170935478.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P12139685293170935478.a, A254474.P15703138997127178640.a, A195021, A195021.P8547858062426879313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P2099980898677717463

`A152760(n)-3*n`
-/

namespace A254474.P2099980898677717463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152760 n - (3 * n : ℤ)

end

end A254474.P2099980898677717463

namespace A254474

/-- `A152760(n)-3*n` -/
def P2099980898677717463.Spec : Prop :=
  ∀ n, P2099980898677717463.a n = A254474 n

theorem P2099980898677717463.correct : P2099980898677717463.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P2099980898677717463.a, A254474.P15703138997127178640.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P11209735743074618500

`A153448(n)-(n²+n)`
-/

namespace A254474.P11209735743074618500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153448 n - (n ^ 2 + n : ℤ)

end

end A254474.P11209735743074618500

namespace A254474

/-- `A153448(n)-(n²+n)` -/
def P11209735743074618500.Spec : Prop :=
  ∀ n, P11209735743074618500.a n = A254474 n

theorem P11209735743074618500.correct : P11209735743074618500.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P11209735743074618500.a, A254474.P15703138997127178640.a, A153448, A153448.P13695387970658973347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P8280286088270949423

`n²+A161935(n)-n`
-/

namespace A254474.P8280286088270949423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A161935 n - (n : ℤ))

end

end A254474.P8280286088270949423

namespace A254474

/-- `n²+A161935(n)-n` -/
def P8280286088270949423.Spec : Prop :=
  ∀ n, P8280286088270949423.a n = A254474 n

theorem P8280286088270949423.correct : P8280286088270949423.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P8280286088270949423.a, A254474.P15703138997127178640.a, A161935, A161935.P14335868775891492350.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P520842945801247897

`∑[n]+A255187(n)-n`
-/

namespace A254474.P520842945801247897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A255187 n - (n : ℤ))

end

end A254474.P520842945801247897

namespace A254474

/-- `∑[n]+A255187(n)-n` -/
def P520842945801247897.Spec : Prop :=
  ∀ n, P520842945801247897.a n = A254474 n

end A254474

/-! ## A254474.P9905962123819408248

`A064200(n)+A000384(n)`
-/

namespace A254474.P9905962123819408248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + A000384 n

end

end A254474.P9905962123819408248

namespace A254474

/-- `A064200(n)+A000384(n)` -/
def P9905962123819408248.Spec : Prop :=
  ∀ n, P9905962123819408248.a n = A254474 n

theorem P9905962123819408248.correct : P9905962123819408248.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P9905962123819408248.a, A254474.P15703138997127178640.a, A000384, A000384.P5392390561999168282.a, A064200, A064200.P18272209519029569283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P17407643213532810150

`A125201(n)+A103115(n)`
-/

namespace A254474.P17407643213532810150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125201 n + A103115 n

end

end A254474.P17407643213532810150

namespace A254474

/-- `A125201(n)+A103115(n)` -/
def P17407643213532810150.Spec : Prop :=
  ∀ n, P17407643213532810150.a n = A254474 n

theorem P17407643213532810150.correct : P17407643213532810150.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P17407643213532810150.a, A254474.P15703138997127178640.a, A103115, A103115.P1586163232865090376.a, A125201, A125201.P9072291273738928373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P836202094462208644

`A263231(n)+A140672(n)`
-/

namespace A254474.P836202094462208644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263231 n + A140672 n

end

end A254474.P836202094462208644

namespace A254474

/-- `A263231(n)+A140672(n)` -/
def P836202094462208644.Spec : Prop :=
  ∀ n, P836202094462208644.a n = A254474 n

end A254474

/-! ## A254474.P5414915723212813914

`A255187(n)+A161680(n)`
-/

namespace A254474.P5414915723212813914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255187 n + A161680 n

end

end A254474.P5414915723212813914

namespace A254474

/-- `A255187(n)+A161680(n)` -/
def P5414915723212813914.Spec : Prop :=
  ∀ n, P5414915723212813914.a n = A254474 n

theorem P5414915723212813914.correct : P5414915723212813914.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P5414915723212813914.a, A254474.P15703138997127178640.a, A161680, A161680.P17206074215489759881.a, A255187, A255187.P5987633574955875604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P8272931173992194357

`A144555(n)-A008595(n)`
-/

namespace A254474.P8272931173992194357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n - A008595 n

end

end A254474.P8272931173992194357

namespace A254474

/-- `A144555(n)-A008595(n)` -/
def P8272931173992194357.Spec : Prop :=
  ∀ n, P8272931173992194357.a n = A254474 n

theorem P8272931173992194357.correct : P8272931173992194357.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P8272931173992194357.a, A254474.P15703138997127178640.a, A008595, A008595.P16021929412859907016.a, A144555, A144555.P7867283677367482726.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P5889978430497504622

`A022286(n)-A132755(n)`
-/

namespace A254474.P5889978430497504622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022286 n - A132755 n

end

end A254474.P5889978430497504622

namespace A254474

/-- `A022286(n)-A132755(n)` -/
def P5889978430497504622.Spec : Prop :=
  ∀ n, P5889978430497504622.a n = A254474 n

end A254474

/-! ## A254474.P13258745133236046100

`A022287(n)-A132756(n)`
-/

namespace A254474.P13258745133236046100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022287 n - A132756 n

end

end A254474.P13258745133236046100

namespace A254474

/-- `A022287(n)-A132756(n)` -/
def P13258745133236046100.Spec : Prop :=
  ∀ n, P13258745133236046100.a n = A254474 n

end A254474

/-! ## A254474.P16216368035410671767

`A016802(n)-A139578(n)`
-/

namespace A254474.P16216368035410671767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016802 n - A139578 n

end

end A254474.P16216368035410671767

namespace A254474

/-- `A016802(n)-A139578(n)` -/
def P16216368035410671767.Spec : Prop :=
  ∀ n, P16216368035410671767.a n = A254474 n

theorem P16216368035410671767.correct : P16216368035410671767.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P16216368035410671767.a, A254474.P15703138997127178640.a, A016802, A016802.P8146297889048034948.a, A139578, A139578.P1798970913824919969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-! ## A254474.P17780493025773506045

`A153875(n)-A005476(n)`
-/

namespace A254474.P17780493025773506045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153875 n - A005476 n

end

end A254474.P17780493025773506045

namespace A254474

/-- `A153875(n)-A005476(n)` -/
def P17780493025773506045.Spec : Prop :=
  ∀ n, P17780493025773506045.a n = A254474 n

end A254474

/-! ## A254474.P6385830234867909285

`A153796(n)-A007742(n)`
-/

namespace A254474.P6385830234867909285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 n - A007742 n

end

end A254474.P6385830234867909285

namespace A254474

/-- `A153796(n)-A007742(n)` -/
def P6385830234867909285.Spec : Prop :=
  ∀ n, P6385830234867909285.a n = A254474 n

theorem P6385830234867909285.correct : P6385830234867909285.Spec := by
  intro n
  simp only [A254474, Nat.add_sub_cancel, A254474.P6385830234867909285.a, A254474.P15703138997127178640.a, A007742, A007742.P14173437786459717136.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A254474

/-!
# A254475: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254475, there is no canonical definition to state claims against.
-/

/-! ## A254475.P10782938668794651510

`A254483(∑[4*n]+1)`
-/

namespace A254475.P10782938668794651510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254475.P10782938668794651510

/-! ## A254475.P15208908220469414532

`and(-1, A254483(A001844(n)))`
-/

namespace A254475.P15208908220469414532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A254483 (A001844 n).toNat)

end

end A254475.P15208908220469414532

/-! ## A254475.P8285844575462402433

`record[A254483(A330613(n+1))]`
-/

namespace A254475.P8285844575462402433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254475.P8285844575462402433

/-! ## A254475.P3796892710088718737

`record[A254483(A001844(∑{digits}[n, #]))]`
-/

namespace A254475.P3796892710088718737
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254475.P3796892710088718737

/-! ## A254475.P5864391684418508578

`record[A214505(n)*A254483(n+1)]`
-/

namespace A254475.P5864391684418508578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A254483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254475.P5864391684418508578

/-!
# A254476: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254476, there is no canonical definition to state claims against.
-/

/-! ## A254476.P5410521423054671573

`A254553(∑[n]+1)`
-/

namespace A254476.P5410521423054671573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254476.P5410521423054671573

/-! ## A254476.P8835821092760308626

`record[A254553(n+1)]`
-/

namespace A254476.P8835821092760308626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254476.P8835821092760308626

/-! ## A254476.P3151303513915292489

`lcm(2, A254553(A000124(n)))`
-/

namespace A254476.P3151303513915292489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254553 (A000124 n).toNat)

end

end A254476.P3151303513915292489

/-! ## A254476.P12370403629894025600

`A007318(∑[n])*A254553(A000124(n))`
-/

namespace A254476.P12370403629894025600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A254553 (A000124 n).toNat

end

end A254476.P12370403629894025600

/-! ## A254476.P1027804646244194945

`A161618(n+1)*A254553(A000124(n))`
-/

namespace A254476.P1027804646244194945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1) * A254553 (A000124 n).toNat

end

end A254476.P1027804646244194945

/-!
# A254477: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254477, there is no canonical definition to state claims against.
-/

/-! ## A254477.P14356559105174542731

`A254483(∑[n+1]+2)`
-/

namespace A254477.P14356559105174542731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254477.P14356559105174542731

/-! ## A254477.P5581470810553862798

`record[root(A254483(n+2), A271206(n+1))]`
-/

namespace A254477.P5581470810553862798
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254483 (n + 2) : ℝ) ^ (1 / (A271206 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254477.P5581470810553862798

/-! ## A254477.P5649983519449450519

`A161618(n+1)*A254483(A133263(n+1))`
-/

namespace A254477.P5649983519449450519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1) * A254483 (A133263 (n + 1)).toNat

end

end A254477.P5649983519449450519

/-! ## A254477.P4804717165519208200

`A254483(A133263(n+1))%A254478(n+1)`
-/

namespace A254477.P4804717165519208200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254483 (A133263 (n + 1)).toNat) (A254478 (n + 1))

end

end A254477.P4804717165519208200

/-! ## A254477.P3728614303919111645

`and(-1, A254483(A000096(n+1)))`
-/

namespace A254477.P3728614303919111645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A254483 (A000096 (n + 1)).toNat)

end

end A254477.P3728614303919111645

/-!
# A254478: Number of (n+2) X (3+2) 0..1 arrays with every 3 X 3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254478, there is no canonical definition to state claims against.
-/

/-! ## A254478.P2020504328872784126

`A254483(∑[n+2]+4)`
-/

namespace A254478.P2020504328872784126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254478.P2020504328872784126

/-! ## A254478.P17322187839955333649

`and(-1, A254483(A167614(n+1)))`
-/

namespace A254478.P17322187839955333649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A254483 (A167614 (n + 1)).toNat)

end

end A254478.P17322187839955333649

/-! ## A254478.P2312629916512763400

`A254483(A034856(n+1)+5)+char[24]`
-/

namespace A254478.P2312629916512763400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254478.P2312629916512763400

/-! ## A254478.P14621580245253430860

`lcm((-1)^n, A254483(A046691(n)+7))`
-/

namespace A254478.P14621580245253430860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A254483 (A046691 n + 7).toNat)

end

end A254478.P14621580245253430860

/-! ## A254478.P13480885202452703967

`A161618(n+1)*A254483(A167614(n+1))`
-/

namespace A254478.P13480885202452703967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1) * A254483 (A167614 (n + 1)).toNat

end

end A254478.P13480885202452703967

/-!
# A254479: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254479, there is no canonical definition to state claims against.
-/

/-! ## A254479.P18020841848911542574

`A254483(∑[n+3]+7)`
-/

namespace A254479.P18020841848911542574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254479.P18020841848911542574

/-! ## A254479.P6425177880204065519

`A254483(A167614(n+2)+1)%A254482(n+1)`
-/

namespace A254479.P6425177880204065519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254483 (A167614 (n + 2) + 1).toNat) (A254482 (n + 1))

end

end A254479.P6425177880204065519

/-!
# A254480: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254480, there is no canonical definition to state claims against.
-/

/-! ## A254480.P1625097346853326725

`A254483(A167499(n+3))`
-/

namespace A254480.P1625097346853326725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A167499 (n + 3)).toNat

end

end A254480.P1625097346853326725

/-! ## A254480.P11670925138025892590

`A254483(A155212(n)+13)`
-/

namespace A254480.P11670925138025892590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A155212 n + 13).toNat

end

end A254480.P11670925138025892590

/-! ## A254480.P5781840665278218996

`A254483(A056000(n)+15)`
-/

namespace A254480.P5781840665278218996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A056000 n + 15).toNat

end

end A254480.P5781840665278218996

/-! ## A254480.P7073428514716315360

`A254483(eq[7, A066657(n)])`
-/

namespace A254480.P7073428514716315360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254480.P7073428514716315360

/-! ## A254480.P6320783115280166284

`A254483(A166136(n+3)-1)`
-/

namespace A254480.P6320783115280166284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A166136 (n + 3) - 1).toNat

end

end A254480.P6320783115280166284

/-!
# A254481: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254481, there is no canonical definition to state claims against.
-/

/-! ## A254481.P708898586173256083

`A254483(A166136(n+4))`
-/

namespace A254481.P708898586173256083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A166136 (n + 4)).toNat

end

end A254481.P708898586173256083

/-! ## A254481.P8999479908251134234

`A254483(A167499(n+4)+1)`
-/

namespace A254481.P8999479908251134234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A167499 (n + 4) + 1).toNat

end

end A254481.P8999479908251134234

/-! ## A254481.P16605845764557688174

`A254483(A167614(n+4)+3)`
-/

namespace A254481.P16605845764557688174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A167614 (n + 4) + 3).toNat

end

end A254481.P16605845764557688174

/-! ## A254481.P16142921853833078900

`A254483(A000124(n+5)+5)`
-/

namespace A254481.P16142921853833078900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A000124 (n + 5) + 5).toNat

end

end A254481.P16142921853833078900

/-! ## A254481.P592807927898175769

`A254483(A000217(n+5)+6)`
-/

namespace A254481.P592807927898175769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A000217 (n + 5) + 6).toNat

end

end A254481.P592807927898175769

/-!
# A254482: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A254482, there is no canonical definition to state claims against.
-/

/-! ## A254482.P16785611683526720582

`A254483(A056119(n)+28)`
-/

namespace A254482.P16785611683526720582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A056119 n + 28).toNat

end

end A254482.P16785611683526720582

/-! ## A254482.P13237788297385430545

`A254483(A166136(n+5)+1)`
-/

namespace A254482.P13237788297385430545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A166136 (n + 5) + 1).toNat

end

end A254482.P13237788297385430545

/-! ## A254482.P7458235768244846423

`A254483(A167499(n+5)+2)`
-/

namespace A254482.P7458235768244846423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A167499 (n + 5) + 2).toNat

end

end A254482.P7458235768244846423

/-! ## A254482.P7039714190465800769

`A254483(A167614(n+5)+4)`
-/

namespace A254482.P7039714190465800769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A167614 (n + 5) + 4).toNat

end

end A254482.P7039714190465800769

/-! ## A254482.P18123275328757625622

`A254483(A133263(n+6)+5)`
-/

namespace A254482.P18123275328757625622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254483 (A133263 (n + 6) + 5).toNat

end

end A254482.P18123275328757625622

/-!
# A254484: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254484, there is no canonical definition to state claims against.
-/

/-! ## A254484.P973049821553108336

`A254491((n+1)²+n²)`
-/

namespace A254484.P973049821553108336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 ((n + 1) ^ 2 + n ^ 2)

end

end A254484.P973049821553108336

/-!
# A254485: Number of (n+2) X (2+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254485, there is no canonical definition to state claims against.
-/

/-! ## A254485.P7943790520540116369

`A254491(∑[n+2])`
-/

namespace A254485.P7943790520540116369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254485.P7943790520540116369

/-! ## A254485.P17310310013829758435

`record[A254491(abs(A201163(n)))]`
-/

namespace A254485.P17310310013829758435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254485.P17310310013829758435

/-! ## A254485.P9666075106507504357

`lcm(2, A254491(A000096(n+1)))`
-/

namespace A254485.P9666075106507504357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254491 (A000096 (n + 1)).toNat)

end

end A254485.P9666075106507504357

/-! ## A254485.P7791833917095947805

`record[A254491(Δ[A003453(n+5)])]`
-/

namespace A254485.P7791833917095947805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254485.P7791833917095947805

/-! ## A254485.P9284255116616497426

`A254491(A000096(n+1))+A079981(2*n+1)`
-/

namespace A254485.P9284255116616497426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A000096 (n + 1)).toNat + A079981 (2 * n + 1)

end

end A254485.P9284255116616497426

/-!
# A254486: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254486, there is no canonical definition to state claims against.
-/

/-! ## A254486.P17500356011710496025

`A254491(∑[n+3]+1)`
-/

namespace A254486.P17500356011710496025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254486.P17500356011710496025

/-! ## A254486.P17517415391897705001

`lcm(2, A254491(A034856(n+2)))`
-/

namespace A254486.P17517415391897705001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254491 (A034856 (n + 2)).toNat)

end

end A254486.P17517415391897705001

/-! ## A254486.P15291013762254039259

`A254491(A055999(n)+4)%A253859(n+1)`
-/

namespace A254486.P15291013762254039259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254491 (A055999 n + 4).toNat) (A253859 (n + 1))

end

end A254486.P15291013762254039259

/-!
# A254487: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254487, there is no canonical definition to state claims against.
-/

/-! ## A254487.P17382919109841961138

`A254491(A141214(n+1))`
-/

namespace A254487.P17382919109841961138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A141214 (n + 1)).toNat

end

end A254487.P17382919109841961138

/-! ## A254487.P3498177930418652916

`A254491(A055998(n+2))`
-/

namespace A254487.P3498177930418652916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A055998 (n + 2)).toNat

end

end A254487.P3498177930418652916

/-! ## A254487.P14250089735083344987

`A254491(A155212(n)+5)`
-/

namespace A254487.P14250089735083344987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A155212 n + 5).toNat

end

end A254487.P14250089735083344987

/-! ## A254487.P8947777093526997909

`A254491(A056000(n)+7)`
-/

namespace A254487.P8947777093526997909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A056000 n + 7).toNat

end

end A254487.P8947777093526997909

/-! ## A254487.P10494789243353526749

`A254491(eq[4, A140996(n)])`
-/

namespace A254487.P10494789243353526749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254487.P10494789243353526749

/-!
# A254488: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254488, there is no canonical definition to state claims against.
-/

/-! ## A254488.P3857343715873658484

`A254491(Δ[A264443(n)])`
-/

namespace A254488.P3857343715873658484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (f1 (n + 1) - f1 n).toNat

end

end A254488.P3857343715873658484

/-! ## A254488.P12191930557852372976

`A254491(A046691(n+3))`
-/

namespace A254488.P12191930557852372976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A046691 (n + 3)).toNat

end

end A254488.P12191930557852372976

/-! ## A254488.P16361013708706419109

`A254491(eq[4, A193592(n)])`
-/

namespace A254488.P16361013708706419109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254488.P16361013708706419109

/-! ## A254488.P3483548996345634251

`A254491(eq[8, A140996(n)])`
-/

namespace A254488.P3483548996345634251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254488.P3483548996345634251

/-! ## A254488.P2593390522279479129

`A254491(Δ[A023545(n+1)])`
-/

namespace A254488.P2593390522279479129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (f1 (n + 1) - f1 n).toNat

end

end A254488.P2593390522279479129

/-!
# A254489: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254489, there is no canonical definition to state claims against.
-/

/-! ## A254489.P9206485914474766462

`A254491(A052905(n+3))`
-/

namespace A254489.P9206485914474766462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A052905 (n + 3)).toNat

end

end A254489.P9206485914474766462

/-! ## A254489.P8725514380081471669

`A254491(Δ[A264443(n+1)]-1)`
-/

namespace A254489.P8725514380081471669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (f1 (n + 1) - f1 n - 1).toNat

end

end A254489.P8725514380081471669

/-! ## A254489.P16958235366226150303

`A254491(Δ[A026054(n+3)]+1)`
-/

namespace A254489.P16958235366226150303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (f1 (n + 1) - f1 n + 1).toNat

end

end A254489.P16958235366226150303

/-!
# A254490: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254490, there is no canonical definition to state claims against.
-/

/-! ## A254490.P523258974828677370

`A254491(Δ[A026054(n+4)])`
-/

namespace A254490.P523258974828677370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (f1 (n + 1) - f1 n).toNat

end

end A254490.P523258974828677370

/-! ## A254490.P576724865093995511

`A254491(A155212(n+3)+2)`
-/

namespace A254490.P576724865093995511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A155212 (n + 3) + 2).toNat

end

end A254490.P576724865093995511

/-! ## A254490.P14882806266762153456

`A254491(eq[10, A185782(n+1)])`
-/

namespace A254490.P14882806266762153456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254490.P14882806266762153456

/-! ## A254490.P11191326696839966589

`A254491(eq[5, A332954(n)])`
-/

namespace A254490.P11191326696839966589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254490.P11191326696839966589

/-!
# A254492: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254492, there is no canonical definition to state claims against.
-/

/-! ## A254492.P9113831579721130098

`A254491(∑[n+1]+2)`
-/

namespace A254492.P9113831579721130098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254492.P9113831579721130098

/-! ## A254492.P508021206850444631

`lcm(2, A254491(A000096(n)+3))`
-/

namespace A254492.P508021206850444631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254491 (A000096 n + 3).toNat)

end

end A254492.P508021206850444631

/-! ## A254492.P15688632882893007430

`record[gcd(A002262(n), A254491(n+2))]`
-/

namespace A254492.P15688632882893007430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254491 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254492.P15688632882893007430

/-! ## A254492.P16239949029796468134

`record[root(A254491(n+2), A271206(n+1))]`
-/

namespace A254492.P16239949029796468134
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254491 (n + 2) : ℝ) ^ (1 / (A271206 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254492.P16239949029796468134

/-! ## A254492.P15901842938973572445

`A254491(A000096(n)+3)*A291168(n)`
-/

namespace A254492.P15901842938973572445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A000096 n + 3).toNat * A291168 n

end

end A254492.P15901842938973572445

/-!
# A254493: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254493, there is no canonical definition to state claims against.
-/

/-! ## A254493.P3264227053848681874

`A254491(∑[n+2]+4)`
-/

namespace A254493.P3264227053848681874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254493.P3264227053848681874

/-! ## A254493.P12749397229933230559

`lcm(2, A254491(A167614(n+1)))`
-/

namespace A254493.P12749397229933230559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254491 (A167614 (n + 1)).toNat)

end

end A254493.P12749397229933230559

/-! ## A254493.P7752516570101657985

`A254491(A167614(n+1))*A291168(n)`
-/

namespace A254493.P7752516570101657985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A167614 (n + 1)).toNat * A291168 n

end

end A254493.P7752516570101657985

/-! ## A254493.P14409224869344666096

`A007318(C(n, 2))*A254491(A167614(n+1))`
-/

namespace A254493.P14409224869344666096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A254491 (A167614 (n + 1)).toNat

end

end A254493.P14409224869344666096

/-!
# A254494: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254494, there is no canonical definition to state claims against.
-/

/-! ## A254494.P9952512577456312401

`A254491(A141214(n)+7)`
-/

namespace A254494.P9952512577456312401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A141214 n + 7).toNat

end

end A254494.P9952512577456312401

/-! ## A254494.P2752615670020129146

`A254491(A052905(n)+9)`
-/

namespace A254494.P2752615670020129146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A052905 n + 9).toNat

end

end A254494.P2752615670020129146

/-! ## A254494.P13300681761149500010

`A254491(A055999(n)+10)`
-/

namespace A254494.P13300681761149500010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A055999 n + 10).toNat

end

end A254494.P13300681761149500010

/-! ## A254494.P6052646997855387330

`A254491(A167614(n+2)+1)`
-/

namespace A254494.P6052646997855387330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A167614 (n + 2) + 1).toNat

end

end A254494.P6052646997855387330

/-! ## A254494.P17732587045838569370

`A254491(A000096(n+2)+5)`
-/

namespace A254494.P17732587045838569370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A000096 (n + 2) + 5).toNat

end

end A254494.P17732587045838569370

/-!
# A254495: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254495, there is no canonical definition to state claims against.
-/

/-! ## A254495.P12537120447958942415

`A254491(A155212(n)+13)`
-/

namespace A254495.P12537120447958942415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A155212 n + 13).toNat

end

end A254495.P12537120447958942415

/-! ## A254495.P3095057767875688197

`A254491(A056000(n)+15)`
-/

namespace A254495.P3095057767875688197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A056000 n + 15).toNat

end

end A254495.P3095057767875688197

/-! ## A254495.P1407412940021298600

`A254491(A000217(n+4)+5)`
-/

namespace A254495.P1407412940021298600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A000217 (n + 4) + 5).toNat

end

end A254495.P1407412940021298600

/-! ## A254495.P1596431392268153066

`A254491(eq[6, A131818(n+1)])`
-/

namespace A254495.P1596431392268153066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254495.P1596431392268153066

/-! ## A254495.P4050900893061737532

`A254491(A167614(n+2)+n+6)`
-/

namespace A254495.P4050900893061737532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A254495.P4050900893061737532

/-!
# A254496: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254496, there is no canonical definition to state claims against.
-/

/-! ## A254496.P8950166406897865657

`A254491(A056115(n)+21)`
-/

namespace A254496.P8950166406897865657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A056115 n + 21).toNat

end

end A254496.P8950166406897865657

/-!
# A254497: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254497, there is no canonical definition to state claims against.
-/

/-! ## A254497.P12046855132387375713

`A254491(A000124(n+6)+6)`
-/

namespace A254497.P12046855132387375713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (A000124 (n + 6) + 6).toNat

end

end A254497.P12046855132387375713

/-!
# A254499: Amicable factorions.

The programs for A254499, there is no canonical definition to state claims against.
-/

/-! ## A254499.P5478233900156513787

`A188284(comp[3*2^n]+1)`
-/

namespace A254499.P5478233900156513787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188284 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A254499.P5478233900156513787

