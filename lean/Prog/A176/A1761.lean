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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C010
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A176100: Even numbers that are not semiprimes, or, twice the nonprimes.

The programs for A176100, the canonical program `A176100.P16175186196650254316` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176100 has offset 1).

The definition of A176100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176100.P16175186196650254316

`2*A141468(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176100

/-- `2*A141468(n+1)` -/
def P16175186196650254316.Spec : Prop :=
  ∀ n, P16175186196650254316.a n = A176100 (n + 1)

theorem P16175186196650254316.correct : P16175186196650254316.Spec := by
  intro n
  simp only [A176100, Nat.add_sub_cancel]

end A176100

/-! ## A176100.P4765388904564720570

`2*comp[p?[xor(1, n)]]`
-/

namespace A176100.P4765388904564720570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A176100.P4765388904564720570

namespace A176100

/-- `2*comp[p?[xor(1, n)]]` -/
def P4765388904564720570.Spec : Prop :=
  ∀ n, (P4765388904564720570.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P9832222044015524720

`2*comp[A060264(n)]`
-/

namespace A176100.P9832222044015524720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P9832222044015524720

namespace A176100

/-- `2*comp[A060264(n)]` -/
def P9832222044015524720.Spec : Prop :=
  ∀ n, (P9832222044015524720.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P10105129590399214226

`2*comp[A134204(n)]`
-/

namespace A176100.P10105129590399214226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P10105129590399214226

namespace A176100

/-- `2*comp[A134204(n)]` -/
def P10105129590399214226.Spec : Prop :=
  ∀ n, (P10105129590399214226.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P7720748531402389951

`2*comp[A151800(n)]`
-/

namespace A176100.P7720748531402389951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P7720748531402389951

namespace A176100

/-- `2*comp[A151800(n)]` -/
def P7720748531402389951.Spec : Prop :=
  ∀ n, (P7720748531402389951.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P624237058451988781

`2*comp[A162753(n)]`
-/

namespace A176100.P624237058451988781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P624237058451988781

namespace A176100

/-- `2*comp[A162753(n)]` -/
def P624237058451988781.Spec : Prop :=
  ∀ n, (P624237058451988781.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P17071800029486570991

`A176393(n+1)-1`
-/

namespace A176100.P17071800029486570991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 1) - 1

end

end A176100.P17071800029486570991

namespace A176100

/-- `A176393(n+1)-1` -/
def P17071800029486570991.Spec : Prop :=
  ∀ n, P17071800029486570991.a n = A176100 (n + 1)

theorem P17071800029486570991.correct : P17071800029486570991.Spec := by
  intro n
  simp only [A176100, Nat.add_sub_cancel, A176100.P17071800029486570991.a, A176100.P16175186196650254316.a, A141468, A141468.P3389662916050695948.f1, A141468.P3389662916050695948.a, A176393, A176393.P4613748579070152281.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176100

/-! ## A176100.P5859784418949410728

`2*comp[Δ[A007504(n)]]`
-/

namespace A176100.P5859784418949410728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P5859784418949410728

namespace A176100

/-- `2*comp[Δ[A007504(n)]]` -/
def P5859784418949410728.Spec : Prop :=
  ∀ n, (P5859784418949410728.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P14089832767399123523

`2*comp[p?[A005206(n)]]`
-/

namespace A176100.P14089832767399123523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P14089832767399123523

namespace A176100

/-- `2*comp[p?[A005206(n)]]` -/
def P14089832767399123523.Spec : Prop :=
  ∀ n, (P14089832767399123523.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P7180347685757177922

`2*sqrt(A161753(n+1))`
-/

namespace A176100.P7180347685757177922
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A161753 (n + 1) : ℝ)

end

end A176100.P7180347685757177922

namespace A176100

/-- `2*sqrt(A161753(n+1))` -/
def P7180347685757177922.Spec : Prop :=
  ∀ n, P7180347685757177922.a n = (A176100 (n + 1) : ℝ)

end A176100

/-! ## A176100.P1066953095828115404

`2*comp[A000040(n+1)]`
-/

namespace A176100.P1066953095828115404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P1066953095828115404

namespace A176100

/-- `2*comp[A000040(n+1)]` -/
def P1066953095828115404.Spec : Prop :=
  ∀ n, (P1066953095828115404.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P10456180018659776587

`2*comp[A000705(n+1)]`
-/

namespace A176100.P10456180018659776587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P10456180018659776587

namespace A176100

/-- `2*comp[A000705(n+1)]` -/
def P10456180018659776587.Spec : Prop :=
  ∀ n, (P10456180018659776587.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P17136935983481229719

`2*comp[A006530(n+2)]`
-/

namespace A176100.P17136935983481229719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P17136935983481229719

namespace A176100

/-- `2*comp[A006530(n+2)]` -/
def P17136935983481229719.Spec : Prop :=
  ∀ n, (P17136935983481229719.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P17915206017166764438

`2*comp[A020639(n+2)]`
-/

namespace A176100.P17915206017166764438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P17915206017166764438

namespace A176100

/-- `2*comp[A020639(n+2)]` -/
def P17915206017166764438.Spec : Prop :=
  ∀ n, (P17915206017166764438.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P12388175880517223922

`2*(A173073(n+1)+n)`
-/

namespace A176100.P12388175880517223922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A173073 (n + 1) + (n : ℤ))

end

end A176100.P12388175880517223922

namespace A176100

/-- `2*(A173073(n+1)+n)` -/
def P12388175880517223922.Spec : Prop :=
  ∀ n, P12388175880517223922.a n = A176100 (n + 1)

theorem P12388175880517223922.correct : P12388175880517223922.Spec := by
  intro n
  simp only [A176100, Nat.add_sub_cancel, A176100.P12388175880517223922.a, A176100.P16175186196650254316.a, A141468, A141468.P3389662916050695948.f1, A141468.P3389662916050695948.a, A173073, A173073.P16730298799530633578.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176100

/-! ## A176100.P16295437812481987017

`2*comp[A040976(n+1)+2]`
-/

namespace A176100.P16295437812481987017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176100.P16295437812481987017

namespace A176100

/-- `2*comp[A040976(n+1)+2]` -/
def P16295437812481987017.Spec : Prop :=
  ∀ n, (P16295437812481987017.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P16549328281894584339

`2*∪[A018252(n+1), n²]`
-/

namespace A176100.P16549328281894584339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A176100.P16549328281894584339

namespace A176100

/-- `2*∪[A018252(n+1), n²]` -/
def P16549328281894584339.Spec : Prop :=
  ∀ n, (P16549328281894584339.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P12697192751855016093

`A065090(n+1)*A130130(n)`
-/

namespace A176100.P12697192751855016093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1) * A130130 n

end

end A176100.P12697192751855016093

namespace A176100

/-- `A065090(n+1)*A130130(n)` -/
def P12697192751855016093.Spec : Prop :=
  ∀ n, P12697192751855016093.a n = A176100 (n + 1)

end A176100

/-! ## A176100.P6958711739862934304

`∪[A001105(n), A139270(n+1)]`
-/

namespace A176100.P6958711739862934304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176100.P6958711739862934304

namespace A176100

/-- `∪[A001105(n), A139270(n+1)]` -/
def P6958711739862934304.Spec : Prop :=
  ∀ n, (P6958711739862934304.a n : ℤ) = A176100 (n + 1)

end A176100

/-! ## A176100.P4054857064230395272

`∪[A001621(n), A139270(n+1)]`
-/

namespace A176100.P4054857064230395272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001621 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176100.P4054857064230395272

namespace A176100

/-- `∪[A001621(n), A139270(n+1)]` -/
def P4054857064230395272.Spec : Prop :=
  ∀ n, (P4054857064230395272.a n : ℤ) = A176100 (n + 1)

end A176100

/-!
# A176101: a(n) = 4^(composite(n) - 4) mod composite(n+4).

The programs for A176101, the canonical program `A176101.P13722665777164572792` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176101 has offset 1).

The definition of A176101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^(A002808(n+1)-4))%A002808(n+5)` (program `A176101.P13722665777164572792`, by `A176101.P13722665777164572792.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176101.P13722665777164572792

`(4^(A002808(n+1)-4))%A002808(n+5)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A176101

/-- `(4^(A002808(n+1)-4))%A002808(n+5)` -/
def P13722665777164572792.Spec : Prop :=
  ∀ n, P13722665777164572792.a n = A176101 (n + 1)

theorem P13722665777164572792.correct : P13722665777164572792.Spec := by
  intro n
  simp only [A176101, Nat.add_sub_cancel]

end A176101

/-!
# A176102: Decimal expansion of (3+2*sqrt(3))/2.

The programs for A176102, there is no canonical definition to state claims against.
-/

/-! ## A176102.P3003603809326425701

`A019973(2*C(n, n²)+n)`
-/

namespace A176102.P3003603809326425701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (2 * Nat.choose n (n ^ 2) + n + 1)

end

end A176102.P3003603809326425701

/-! ## A176102.P5448785079765604210

`A002194(2-2%(n+1)+n)`
-/

namespace A176102.P5448785079765604210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((2 - ((2 % (n + 1) : ℕ) : ℤ) + (n : ℤ)).toNat + 1)

end

end A176102.P5448785079765604210

/-! ## A176102.P14170426766074381727

`A019973(sqrt(C(4, ∑[n+1]))+n)`
-/

namespace A176102.P14170426766074381727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 ((SequenceMachineLib.roundAway (Real.sqrt (Nat.choose 4 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) + (n : ℝ))).toNat + 1)

end

end A176102.P14170426766074381727

/-! ## A176102.P4733295502062196277

`A019973(A016777(n)-A267872(n))`
-/

namespace A176102.P4733295502062196277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 ((A016777 n - A267872 n).toNat + 1)

end

end A176102.P4733295502062196277

/-! ## A176102.P9144656402961999

`A002194(or(n, A233583(n+1)))`
-/

namespace A176102.P9144656402961999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((Int.lor (n : ℤ) (A233583 (n + 1))).toNat + 1)

end

end A176102.P9144656402961999

/-! ## A176102.P9845160629288308803

`A019973(or(n, A233583(n+1)))`
-/

namespace A176102.P9845160629288308803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 ((Int.lor (n : ℤ) (A233583 (n + 1))).toNat + 1)

end

end A176102.P9845160629288308803

/-! ## A176102.P12107777759854227692

`A090388(or(n, A233583(n+1)))`
-/

namespace A176102.P12107777759854227692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090388 ((Int.lor (n : ℤ) (A233583 (n + 1))).toNat + 1)

end

end A176102.P12107777759854227692

/-! ## A176102.P2136223034817601200

`A165663(or(n, A233583(n+1)))`
-/

namespace A176102.P2136223034817601200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165663 ((Int.lor (n : ℤ) (A233583 (n + 1))).toNat + 1)

end

end A176102.P2136223034817601200

/-! ## A176102.P3546741376828201228

`A019973(and(2, 2^n)+n)`
-/

namespace A176102.P3546741376828201228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (Nat.land 2 (2 ^ n) + n + 1)

end

end A176102.P3546741376828201228

/-!
# A176112: Primes that take a prime number of steps to reach 1 under the Collatz function.

The programs for A176112, there is no canonical definition to state claims against.
-/

/-! ## A176112.P6450916163262598619

`p?[A066906(n+1)]`
-/

namespace A176112.P6450916163262598619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176112.P6450916163262598619

/-! ## A176112.P8637445924446283822

`filter[A066906(n+1), A010051(#)]`
-/

namespace A176112.P8637445924446283822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A176112.P8637445924446283822

/-! ## A176112.P15237787781917318302

`filter[A066906(n+1), A323153(#)]`
-/

namespace A176112.P15237787781917318302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A176112.P15237787781917318302

/-! ## A176112.P17258515438753521454

`∩[A000040(n+1), A066906(n+1)]`
-/

namespace A176112.P17258515438753521454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P17258515438753521454

/-! ## A176112.P11519171263584587414

`∩[A006005(n+1), A066906(n+1)]`
-/

namespace A176112.P11519171263584587414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P11519171263584587414

/-! ## A176112.P15306966110361050461

`∩[A008578(n+1), A066906(n+1)]`
-/

namespace A176112.P15306966110361050461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P15306966110361050461

/-! ## A176112.P12706191973282175181

`∩[A053813(n+1), A066906(n+1)]`
-/

namespace A176112.P12706191973282175181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P12706191973282175181

/-! ## A176112.P6476471868781122867

`∩[A065091(n+1), A066906(n+1)]`
-/

namespace A176112.P6476471868781122867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P6476471868781122867

/-! ## A176112.P6154402238062401660

`∩[A066906(n+1), A106118(n+1)]`
-/

namespace A176112.P6154402238062401660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P6154402238062401660

/-! ## A176112.P17678112447851622722

`∩[A066906(n+1), A116974(n+1)]`
-/

namespace A176112.P17678112447851622722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P17678112447851622722

/-! ## A176112.P8299837778943123739

`∩[A066906(n+1), A158611(n+1)]`
-/

namespace A176112.P8299837778943123739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P8299837778943123739

/-! ## A176112.P14282244876092721648

`∩[A066906(n+1), A182986(n+1)]`
-/

namespace A176112.P14282244876092721648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P14282244876092721648

/-! ## A176112.P7409107041267618580

`record[A020639(A066906(A122797(n+1)))]`
-/

namespace A176112.P7409107041267618580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066906 (A122797 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176112.P7409107041267618580

/-! ## A176112.P13611443691428161743

`record[A020639(A066906(A244224(n)))]`
-/

namespace A176112.P13611443691428161743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A066906 (A244224 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176112.P13611443691428161743

/-! ## A176112.P15136427618930781043

`filter[A066906(n+1), A080339(#)]`
-/

namespace A176112.P15136427618930781043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A176112.P15136427618930781043

/-! ## A176112.P14703052468278925466

`filter[A066906(n+1), A080545(#)]`
-/

namespace A176112.P14703052468278925466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A176112.P14703052468278925466

/-! ## A176112.P8579433544996663872

`A014963(record[A014963(A066906(n+1))])`
-/

namespace A176112.P8579433544996663872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A066906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176112.P8579433544996663872

/-! ## A176112.P16692761852054936542

`A020639(record[A061397(A066906(n+1))])`
-/

namespace A176112.P16692761852054936542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A066906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176112.P16692761852054936542

/-! ## A176112.P2052114060089345040

`∩[A066906(n+1), A166070(n+1)]`
-/

namespace A176112.P2052114060089345040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P2052114060089345040

/-! ## A176112.P8005914754211312099

`∩[A066906(n+1), A212127(n+1)]`
-/

namespace A176112.P8005914754211312099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176112.P8005914754211312099

/-!
# A176113: Determinant of n X n matrix whose (i,j)-th element is (i+j)^(n-1).

The programs for A176113, the canonical program `A176113.P6152489088873992926` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176113 has offset 1).

The definition of A176113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176113.P6152489088873992926

`(-1)^floor((n+1)/2)*n!^(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176113

/-- `(-1)^floor((n+1)/2)*n!^(n+1)` -/
def P6152489088873992926.Spec : Prop :=
  ∀ n, P6152489088873992926.a n = (A176113 (n + 1) : ℚ)

end A176113

/-! ## A176113.P10937666993949275508

`∏[(-n)^n*n!]`
-/

namespace A176113.P10937666993949275508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ n * (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176113.P10937666993949275508

namespace A176113

/-- `∏[(-n)^n*n!]` -/
def P10937666993949275508.Spec : Prop :=
  ∀ n, P10937666993949275508.a n = A176113 (n + 1)

end A176113

/-! ## A176113.P5032242419062748282

`(n-2*n)^n*n!*a(n-1)` with `a(0)=1`
-/

namespace A176113.P5032242419062748282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - (2 * n : ℤ)) ^ n * (Nat.factorial n : ℤ) * a (n - 1)

end

end A176113.P5032242419062748282

namespace A176113

/-- `(n-2*n)^n*n!*a(n-1)` -/
def P5032242419062748282.Spec : Prop :=
  ∀ n, P5032242419062748282.a n = A176113 (n + 1)

end A176113

/-! ## A176113.P7116148885575978616

`∏[n^n*A133942(n)]`
-/

namespace A176113.P7116148885575978616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A133942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176113.P7116148885575978616

namespace A176113

/-- `∏[n^n*A133942(n)]` -/
def P7116148885575978616.Spec : Prop :=
  ∀ n, P7116148885575978616.a n = A176113 (n + 1)

end A176113

/-! ## A176113.P17032554862647223725

`∏[n^n*n!*A033999(n)]`
-/

namespace A176113.P17032554862647223725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n * Nat.factorial n : ℤ) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A176113.P17032554862647223725

namespace A176113

/-- `∏[n^n*n!*A033999(n)]` -/
def P17032554862647223725.Spec : Prop :=
  ∀ n, P17032554862647223725.a n = A176113 (n + 1)

end A176113

/-!
# A176114: Numbers n such that 30*n-1, 30*n+1 are twin primes.

The programs for A176114, the canonical program `A176114.P18402214884986223106` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176114 has offset 1).

The definition of A176114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176114.P18402214884986223106

`A124518(n+1)/3`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176114

/-- `A124518(n+1)/3` -/
def P18402214884986223106.Spec : Prop :=
  ∀ n, P18402214884986223106.a n = (A176114 (n + 1) : ℚ)

end A176114

/-! ## A176114.P14033522795523072272

`(A131356(n+1)+1)/3`
-/

namespace A176114.P14033522795523072272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131356 (n + 1) + 1 : ℚ) / 3

end

end A176114.P14033522795523072272

namespace A176114

/-- `(A131356(n+1)+1)/3` -/
def P14033522795523072272.Spec : Prop :=
  ∀ n, P14033522795523072272.a n = (A176114 (n + 1) : ℚ)

end A176114

/-! ## A176114.P3955732005895245971

`floor(A282326(n+1)/5)/6`
-/

namespace A176114.P3955732005895245971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A282326 (n + 1) : ℚ) / 5⌋ : ℚ) / 6

end

end A176114.P3955732005895245971

namespace A176114

/-- `floor(A282326(n+1)/5)/6` -/
def P3955732005895245971.Spec : Prop :=
  ∀ n, P3955732005895245971.a n = (A176114 (n + 1) : ℚ)

end A176114

/-! ## A176114.P4691278734366907456

`floor((A060229(n+1)+1)/5)/6`
-/

namespace A176114.P4691278734366907456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A060229 (n + 1) + 1 : ℚ) / 5⌋ : ℚ) / 6

end

end A176114.P4691278734366907456

namespace A176114

/-- `floor((A060229(n+1)+1)/5)/6` -/
def P4691278734366907456.Spec : Prop :=
  ∀ n, P4691278734366907456.a n = (A176114 (n + 1) : ℚ)

end A176114

/-! ## A176114.P11142650933745418994

`A153877(n+1)/6`
-/

namespace A176114.P11142650933745418994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153877 (n + 1) : ℚ) / 6

end

end A176114.P11142650933745418994

namespace A176114

/-- `A153877(n+1)/6` -/
def P11142650933745418994.Spec : Prop :=
  ∀ n, P11142650933745418994.a n = (A176114 (n + 1) : ℚ)

end A176114

/-! ## A176114.P12175003432631750898

`A255588(A124518(n+1))`
-/

namespace A176114.P12175003432631750898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A124518 (n + 1)).toNat

end

end A176114.P12175003432631750898

namespace A176114

/-- `A255588(A124518(n+1))` -/
def P12175003432631750898.Spec : Prop :=
  ∀ n, P12175003432631750898.a n = A176114 (n + 1)

end A176114

/-! ## A176114.P18395479484729959

`A008611(A131356(n+1))`
-/

namespace A176114.P18395479484729959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A131356 (n + 1)).toNat

end

end A176114.P18395479484729959

namespace A176114

/-- `A008611(A131356(n+1))` -/
def P18395479484729959.Spec : Prop :=
  ∀ n, P18395479484729959.a n = A176114 (n + 1)

end A176114

/-! ## A176114.P11868916311943264367

`A002264(A124518(n+1)+1)`
-/

namespace A176114.P11868916311943264367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A124518 (n + 1) + 1).toNat

end

end A176114.P11868916311943264367

namespace A176114

/-- `A002264(A124518(n+1)+1)` -/
def P11868916311943264367.Spec : Prop :=
  ∀ n, P11868916311943264367.a n = A176114 (n + 1)

end A176114

/-! ## A176114.P6972862359541812093

`floor(A000203(A060229(n+1))/5)/6`
-/

namespace A176114.P6972862359541812093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A000203 (A060229 (n + 1)).toNat : ℚ) / 5⌋ : ℚ) / 6

end

end A176114.P6972862359541812093

namespace A176114

/-- `floor(A000203(A060229(n+1))/5)/6` -/
def P6972862359541812093.Spec : Prop :=
  ∀ n, P6972862359541812093.a n = (A176114 (n + 1) : ℚ)

end A176114

/-! ## A176114.P17877525018943692439

`A008615(A153877(n+1))`
-/

namespace A176114.P17877525018943692439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A153877 (n + 1)).toNat

end

end A176114.P17877525018943692439

namespace A176114

/-- `A008615(A153877(n+1))` -/
def P17877525018943692439.Spec : Prop :=
  ∀ n, P17877525018943692439.a n = A176114 (n + 1)

end A176114

/-!
# A176116: Primes p such that p^4+1 = 2q where q is prime.

The programs for A176116, there is no canonical definition to state claims against.
-/

/-! ## A176116.P2575738105412227919

`p?[A186689(n+1)]`
-/

namespace A176116.P2575738105412227919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176116.P2575738105412227919

/-! ## A176116.P13000583007816113904

`filter[A186689(n+1), A010051(#)]`
-/

namespace A176116.P13000583007816113904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A176116.P13000583007816113904

/-! ## A176116.P16373020382657419183

`∩[A000040(n+1), A186689(n+1)]`
-/

namespace A176116.P16373020382657419183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P16373020382657419183

/-! ## A176116.P1235154175053284836

`∩[A006005(n+1), A186689(n+1)]`
-/

namespace A176116.P1235154175053284836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P1235154175053284836

/-! ## A176116.P7691439645226116934

`∩[A008578(n+1), A186689(n+1)]`
-/

namespace A176116.P7691439645226116934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P7691439645226116934

/-! ## A176116.P12125639737700824050

`∩[A033946(n+1), A186689(n+1)]`
-/

namespace A176116.P12125639737700824050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P12125639737700824050

/-! ## A176116.P16815752140755702861

`∩[A046022(n+1), A186689(n+1)]`
-/

namespace A176116.P16815752140755702861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P16815752140755702861

/-! ## A176116.P3328723518901981996

`∩[A062972(n+1), A186689(n+1)]`
-/

namespace A176116.P3328723518901981996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P3328723518901981996

/-! ## A176116.P8585482892966931113

`∩[A065091(n+1), A186689(n+1)]`
-/

namespace A176116.P8585482892966931113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P8585482892966931113

/-! ## A176116.P17413172791992495430

`∩[A067126(n+1), A186689(n+1)]`
-/

namespace A176116.P17413172791992495430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P17413172791992495430

/-! ## A176116.P8079662883326621729

`∩[A116974(n+1), A186689(n+1)]`
-/

namespace A176116.P8079662883326621729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P8079662883326621729

/-! ## A176116.P8736170449096260005

`∩[A158611(n+1), A186689(n+1)]`
-/

namespace A176116.P8736170449096260005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P8736170449096260005

/-! ## A176116.P16940142078291240468

`∩[A161346(n+1), A186689(n+1)]`
-/

namespace A176116.P16940142078291240468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P16940142078291240468

/-! ## A176116.P12927124146324164203

`∩[A175787(n+1), A186689(n+1)]`
-/

namespace A176116.P12927124146324164203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P12927124146324164203

/-! ## A176116.P5263881602970212731

`∩[A182986(n+1), A186689(n+1)]`
-/

namespace A176116.P5263881602970212731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P5263881602970212731

/-! ## A176116.P16672823505587448863

`∩[A348283(n+1), A186689(n+1)]`
-/

namespace A176116.P16672823505587448863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176116.P16672823505587448863

/-! ## A176116.P15153713109279125726

`p?[A096169(n+1)]`
-/

namespace A176116.P15153713109279125726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176116.P15153713109279125726

/-! ## A176116.P14117363443024312918

`filter[A096169(n+1), A010051(#)]`
-/

namespace A176116.P14117363443024312918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A176116.P14117363443024312918

/-! ## A176116.P8509184633964114983

`filter[A096169(n+1), A323152(#)]`
-/

namespace A176116.P8509184633964114983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A176116.P8509184633964114983

/-! ## A176116.P151896108172926783

`filter[A096169(n+1), A323153(#)]`
-/

namespace A176116.P151896108172926783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A176116.P151896108172926783

/-!
# A176120: Triangle read by rows: Sum_{j=0..k} binomial(n, j)*binomial(k, j)*j!.

The programs for A176120, there is no canonical definition to state claims against.
-/

/-! ## A176120.P6699843688638511244

`A293985(round(sqrt(2*(n+1))+n))`
-/

namespace A176120.P6699843688638511244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293985 (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ) + (n : ℝ))).toNat

end

end A176120.P6699843688638511244

/-! ## A176120.P14722243154015341294

`A293985(A007401(n+1))^Δ[A080036(n)]`
-/

namespace A176120.P14722243154015341294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293985 (A007401 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A176120.P14722243154015341294

/-! ## A176120.P14377616313857629383

`A176080(n)/A046899(n)`
-/

namespace A176120.P14377616313857629383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176080 n : ℚ) / (A046899 n : ℚ)

end

end A176120.P14377616313857629383

/-! ## A176120.P17889597837395824681

`A176121(n)/A178300(n+1)`
-/

namespace A176120.P17889597837395824681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176121 n : ℚ) / (A178300 (n + 1) : ℚ)

end

end A176120.P17889597837395824681

/-! ## A176120.P242022733863346984

`A176080(n)/A007318(A245300(n))`
-/

namespace A176120.P242022733863346984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176080 n : ℚ) / (A007318 (A245300 n).toNat : ℚ)

end

end A176120.P242022733863346984

/-! ## A176120.P12094066459764199223

`A176121(n)/A046899(A007401(n+1))`
-/

namespace A176120.P12094066459764199223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176121 n : ℚ) / (A046899 (A007401 (n + 1)).toNat : ℚ)

end

end A176120.P12094066459764199223

/-! ## A176120.P10252176985484510636

`A088699(A245300(n))`
-/

namespace A176120.P10252176985484510636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A245300 n).toNat

end

end A176120.P10252176985484510636

/-! ## A176120.P14816338751859563397

`A293985(A007401(n+1))%A135264(n)`
-/

namespace A176120.P14816338751859563397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293985 (A007401 (n + 1)).toNat) (A135264 n)

end

end A176120.P14816338751859563397

/-! ## A176120.P12585190111972080473

`A038573(2^A002262(n))*A293985(A007401(n+1))`
-/

namespace A176120.P12585190111972080473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002262 n : ℤ))).toNat * A293985 (A007401 (n + 1)).toNat

end

end A176120.P12585190111972080473

/-! ## A176120.P3751733217622265857

`A293985(A007401(n+1))^A014963(A005893(n))`
-/

namespace A176120.P3751733217622265857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293985 (A007401 (n + 1)).toNat : ℚ) ^ (A014963 (A005893 n).toNat : ℤ)

end

end A176120.P3751733217622265857

/-!
# A176121: Triangle, read by rows, T(n,k) = binomial(n+k+1, n+1) * Sum_{j=0..k} j!*binomial(n,j)*binomial(k, j).

The programs for A176121, there is no canonical definition to state claims against.
-/

/-! ## A176121.P3699890935683436362

`A176120(n)*A178300(n+1)`
-/

namespace A176121.P3699890935683436362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 n * A178300 (n + 1)

end

end A176121.P3699890935683436362

/-! ## A176121.P7832934078021099266

`A176120(n)*A176992(A061579(n))`
-/

namespace A176121.P7832934078021099266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 n * A176992 (A061579 n).toNat

end

end A176121.P7832934078021099266

/-! ## A176121.P16713613360823111836

`A074909(A245300(n))*A176120(n)`
-/

namespace A176121.P16713613360823111836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A245300 n).toNat * A176120 n

end

end A176121.P16713613360823111836

/-! ## A176121.P13195947703037371742

`A046899(A007401(n+1))*A176120(n)`
-/

namespace A176121.P13195947703037371742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007401 (n + 1)).toNat * A176120 n

end

end A176121.P13195947703037371742

/-! ## A176121.P17771093826039199331

`A014462(A056537(n+1))*A176120(n)`
-/

namespace A176121.P17771093826039199331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014462 (A056537 (n + 1)).toNat * A176120 n

end

end A176121.P17771093826039199331

/-! ## A176121.P16132605182042455503

`A176120(n)/A007318(n)*A178301(n)`
-/

namespace A176121.P16132605182042455503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176120 n : ℚ) / (A007318 n : ℚ) * (A178301 n : ℚ)

end

end A176121.P16132605182042455503

/-! ## A176121.P12418292429407113926

`A178300(n+1)*A293985(A007401(n+1))`
-/

namespace A176121.P12418292429407113926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 (n + 1) * A293985 (A007401 (n + 1)).toNat

end

end A176121.P12418292429407113926

/-! ## A176121.P2686745925472675589

`A007318(A245300(n)+A111650(n+1))*A176120(n)`
-/

namespace A176121.P2686745925472675589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A245300 n + A111650 (n + 1)).toNat * A176120 n

end

end A176121.P2686745925472675589

/-! ## A176121.P16958181683605011053

`A088699(A245300(n))*A178300(n+1)`
-/

namespace A176121.P16958181683605011053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A245300 n).toNat * A178300 (n + 1)

end

end A176121.P16958181683605011053

/-! ## A176121.P16644693507173755754

`A046899(A007401(n+1))*A088699(A245300(n))`
-/

namespace A176121.P16644693507173755754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007401 (n + 1)).toNat * A088699 (A245300 n).toNat

end

end A176121.P16644693507173755754

/-!
# A176123: Irregular triangle, read by rows, T(n, k) = binomial(n-(k-1),k-1), 1 <= k <= floor(n/2-1).

The programs for A176123, the canonical program `A176123.P3152238103359249883` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176123 has offset 4).

The definition of A176123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176123.P601496782282715441

`A169803(eq[0, A100218(n+1)])`
-/

namespace A176123.P601496782282715441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169803 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176123.P601496782282715441

namespace A176123

/-- `A169803(eq[0, A100218(n+1)])` -/
def P601496782282715441.Spec : Prop :=
  ∀ n, P601496782282715441.a n = A176123 (n + 4)

end A176123

/-! ## A176123.P3152238103359249883

`A052553(lt[n, A052553(n+1)²])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176123

/-- `A052553(lt[n, A052553(n+1)²])` -/
def P3152238103359249883.Spec : Prop :=
  ∀ n, P3152238103359249883.a n = A176123 (n + 4)

theorem P3152238103359249883.correct : P3152238103359249883.Spec := by
  intro n
  simp only [A176123, Nat.add_sub_cancel]

end A176123

/-! ## A176123.P14108651657568428579

`A011973(2*A049068(n+1)-n)`
-/

namespace A176123.P14108651657568428579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (2 * A049068 (n + 1) - (n : ℤ)).toNat

end

end A176123.P14108651657568428579

namespace A176123

/-- `A011973(2*A049068(n+1)-n)` -/
def P14108651657568428579.Spec : Prop :=
  ∀ n, P14108651657568428579.a n = A176123 (n + 4)

end A176123

/-! ## A176123.P4612927773986709787

`A011973(lt[n+1, A011973(n+1)²])`
-/

namespace A176123.P4612927773986709787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A176123.P4612927773986709787

namespace A176123

/-- `A011973(lt[n+1, A011973(n+1)²])` -/
def P4612927773986709787.Spec : Prop :=
  ∀ n, P4612927773986709787.a n = A176123 (n + 4)

end A176123

/-! ## A176123.P10034223262321079524

`A011973(eq[n+1, (n+1)%A011973(n+1)²])`
-/

namespace A176123.P10034223262321079524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A011973 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176123.P10034223262321079524

namespace A176123

/-- `A011973(eq[n+1, (n+1)%A011973(n+1)²])` -/
def P10034223262321079524.Spec : Prop :=
  ∀ n, P10034223262321079524.a n = A176123 (n + 4)

end A176123

/-! ## A176123.P8212413472980067012

`A011973(A049068(n+1)+A049068(n+1)-n)`
-/

namespace A176123.P8212413472980067012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A049068 (n + 1) + (A049068 (n + 1) - (n : ℤ))).toNat

end

end A176123.P8212413472980067012

namespace A176123

/-- `A011973(A049068(n+1)+A049068(n+1)-n)` -/
def P8212413472980067012.Spec : Prop :=
  ∀ n, P8212413472980067012.a n = A176123 (n + 4)

end A176123

/-!
# A176125: Triangle, read by rows, T(n, k) = 1 - floor(n*(n-1)/4) + floor(binomial(n-1,k-1) * binomial(n, k-1)/(2*k)).

The programs for A176125, there is no canonical definition to state claims against.
-/

/-! ## A176125.P12481674406132794072

`A035057(A082046(n))`
-/

namespace A176125.P12481674406132794072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035057 (A082046 n).toNat

end

end A176125.P12481674406132794072

/-! ## A176125.P9519814910244391070

`A035057(A119307(n))`
-/

namespace A176125.P9519814910244391070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035057 (A119307 n).toNat

end

end A176125.P9519814910244391070

/-! ## A176125.P10965071639816424075

`A127428(A056940(n))`
-/

namespace A176125.P10965071639816424075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127428 (A056940 n).toNat

end

end A176125.P10965071639816424075

/-! ## A176125.P2848763738703363576

`A053784(A168551(n))`
-/

namespace A176125.P2848763738703363576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053784 (A168551 n).toNat

end

end A176125.P2848763738703363576

/-! ## A176125.P6932249983442681760

`A088611(A157177(n))`
-/

namespace A176125.P6932249983442681760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088611 (A157177 n).toNat

end

end A176125.P6932249983442681760

/-!
# A176126: Numerator of -A127276(n)/A001788(n).

The programs for A176126, the canonical program `A176126.P10682719046826631091` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176126 has offset 0).

The definition of A176126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176126.P5662699678222602472

`(∑[n]-2)/gcd(2, ∑[n])`
-/

namespace A176126.P5662699678222602472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A176126.P5662699678222602472

namespace A176126

/-- `(∑[n]-2)/gcd(2, ∑[n])` -/
def P5662699678222602472.Spec : Prop :=
  ∀ n, P5662699678222602472.a n = (A176126 n : ℚ)

end A176126

/-! ## A176126.P14751855294938296500

`lcm(2, ∑[n])/2-and(2, -n)!`
-/

namespace A176126.P14751855294938296500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 - (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat : ℚ)

end

end A176126.P14751855294938296500

namespace A176126

/-- `lcm(2, ∑[n])/2-and(2, -n)!` -/
def P14751855294938296500.Spec : Prop :=
  ∀ n, P14751855294938296500.a n = (A176126 n : ℚ)

end A176126

/-! ## A176126.P3513057230281023815

`lcm(2, ∑[n])/2-A014695(n)`
-/

namespace A176126.P3513057230281023815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 - (A014695 n : ℚ)

end

end A176126.P3513057230281023815

namespace A176126

/-- `lcm(2, ∑[n])/2-A014695(n)` -/
def P3513057230281023815.Spec : Prop :=
  ∀ n, P3513057230281023815.a n = (A176126 n : ℚ)

end A176126

/-! ## A176126.P10682719046826631091

`A064038(n+1)-and(2, -n)!`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A176126

/-- `A064038(n+1)-and(2, -n)!` -/
def P10682719046826631091.Spec : Prop :=
  ∀ n, P10682719046826631091.a n = A176126 n

theorem P10682719046826631091.correct : P10682719046826631091.Spec := by
  intro n
  simp only [A176126]

end A176126

/-! ## A176126.P7366128157788661571

`(∑[n]-2)/A000041(and(2, n-1))`
-/

namespace A176126.P7366128157788661571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / (A000041 (Int.land 2 ((n : ℤ) - 1)).toNat : ℚ)

end

end A176126.P7366128157788661571

namespace A176126

/-- `(∑[n]-2)/A000041(and(2, n-1))` -/
def P7366128157788661571.Spec : Prop :=
  ∀ n, P7366128157788661571.a n = (A176126 n : ℚ)

end A176126

/-! ## A176126.P14297466859121251834

`A064038(n+1)-A014695(n)`
-/

namespace A176126.P14297466859121251834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (n + 1) - A014695 n

end

end A176126.P14297466859121251834

namespace A176126

/-- `A064038(n+1)-A014695(n)` -/
def P14297466859121251834.Spec : Prop :=
  ∀ n, P14297466859121251834.a n = A176126 n

end A176126

/-! ## A176126.P15466269828040235487

`gcd(∑[n], A236770(n))-A014695(n)`
-/

namespace A176126.P15466269828040235487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A236770 n) : ℤ) - A014695 n

end

end A176126.P15466269828040235487

namespace A176126

/-- `gcd(∑[n], A236770(n))-A014695(n)` -/
def P15466269828040235487.Spec : Prop :=
  ∀ n, P15466269828040235487.a n = A176126 n

end A176126

/-! ## A176126.P7561812371057633294

`A064038(n+1)-A222740(n)/A016754(n)`
-/

namespace A176126.P7561812371057633294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064038 (n + 1) : ℚ) - (A222740 n : ℚ) / (A016754 n : ℚ)

end

end A176126.P7561812371057633294

namespace A176126

/-- `A064038(n+1)-A222740(n)/A016754(n)` -/
def P7561812371057633294.Spec : Prop :=
  ∀ n, P7561812371057633294.a n = (A176126 n : ℚ)

end A176126

/-! ## A176126.P8480134375828108965

`A064038(n+1)-A130658(n+1)`
-/

namespace A176126.P8480134375828108965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (n + 1) - A130658 (n + 1)

end

end A176126.P8480134375828108965

namespace A176126

/-- `A064038(n+1)-A130658(n+1)` -/
def P8480134375828108965.Spec : Prop :=
  ∀ n, P8480134375828108965.a n = A176126 n

end A176126

/-! ## A176126.P2358707519022613200

`A064038(n+1)+A178242(n)-A160050(n+2)`
-/

namespace A176126.P2358707519022613200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (n + 1) + (A178242 n - A160050 (n + 2))

end

end A176126.P2358707519022613200

namespace A176126

/-- `A064038(n+1)+A178242(n)-A160050(n+2)` -/
def P2358707519022613200.Spec : Prop :=
  ∀ n, P2358707519022613200.a n = A176126 n

end A176126

/-! ## A176126.P4683493204623613328

`A064038(n+1)+A160050(n+2)-A226089(n+2)`
-/

namespace A176126.P4683493204623613328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (n + 1) + (A160050 (n + 2) - A226089 (n + 2))

end

end A176126.P4683493204623613328

namespace A176126

/-- `A064038(n+1)+A160050(n+2)-A226089(n+2)` -/
def P4683493204623613328.Spec : Prop :=
  ∀ n, P4683493204623613328.a n = A176126 n

end A176126

/-! ## A176126.P18134734927850923896

`A064038(n+1)-A002378(n+1)/A227316(n+1)`
-/

namespace A176126.P18134734927850923896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064038 (n + 1) : ℚ) - (A002378 (n + 1) : ℚ) / (A227316 (n + 1) : ℚ)

end

end A176126.P18134734927850923896

namespace A176126

/-- `A064038(n+1)-A002378(n+1)/A227316(n+1)` -/
def P18134734927850923896.Spec : Prop :=
  ∀ n, P18134734927850923896.a n = (A176126 n : ℚ)

end A176126

/-! ## A176126.P6444354229142476457

`A029578(∑[n])-1`
-/

namespace A176126.P6444354229142476457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A176126.P6444354229142476457

namespace A176126

/-- `A029578(∑[n])-1` -/
def P6444354229142476457.Spec : Prop :=
  ∀ n, P6444354229142476457.a n = A176126 n

end A176126

/-! ## A176126.P13952693485395485497

`A029579(∑[n])-2`
-/

namespace A176126.P13952693485395485497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A176126.P13952693485395485497

namespace A176126

/-- `A029579(∑[n])-2` -/
def P13952693485395485497.Spec : Prop :=
  ∀ n, P13952693485395485497.a n = A176126 n

end A176126

/-! ## A176126.P11166963085025808710

`(∑[n]-2)/A000034(∑[n]+1)`
-/

namespace A176126.P11166963085025808710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2 : ℚ) / (A000034 (∑ j ∈ Finset.range (n + 1), f2 j + 1) : ℚ)

end

end A176126.P11166963085025808710

namespace A176126

/-- `(∑[n]-2)/A000034(∑[n]+1)` -/
def P11166963085025808710.Spec : Prop :=
  ∀ n, P11166963085025808710.a n = (A176126 n : ℚ)

end A176126

/-! ## A176126.P11775659700275624473

`A026741(∑[n])-A000034(∑[n])`
-/

namespace A176126.P11775659700275624473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j) - A000034 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A176126.P11775659700275624473

namespace A176126

/-- `A026741(∑[n])-A000034(∑[n])` -/
def P11775659700275624473.Spec : Prop :=
  ∀ n, P11775659700275624473.a n = A176126 n

end A176126

/-! ## A176126.P9162361303371388285

`A000217(n)-(A057979(A000124(n))+1)`
-/

namespace A176126.P9162361303371388285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A057979 (A000124 n).toNat + 1)

end

end A176126.P9162361303371388285

namespace A176126

/-- `A000217(n)-(A057979(A000124(n))+1)` -/
def P9162361303371388285.Spec : Prop :=
  ∀ n, P9162361303371388285.a n = A176126 n

end A176126

/-! ## A176126.P13813914623201088184

`A146306(n²+n+2)`
-/

namespace A176126.P13813914623201088184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146306 (n ^ 2 + n + 2)

end

end A176126.P13813914623201088184

namespace A176126

/-- `A146306(n²+n+2)` -/
def P13813914623201088184.Spec : Prop :=
  ∀ n, P13813914623201088184.a n = A176126 n

end A176126

/-!
# A176127: The number of permutations of {1,2,...,n,1,2,...,n} with the property that there are k numbers between the two k's in the set for k=1,...,n.

The programs for A176127, there is no canonical definition to state claims against.
-/

/-! ## A176127.P11499743745073095443

`2*A014552(n+1)`
-/

namespace A176127.P11499743745073095443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014552 (n + 1)

end

end A176127.P11499743745073095443

/-! ## A176127.P6321981489581714287

`A014552(A000027(n+1))+A014552(n+1)`
-/

namespace A176127.P6321981489581714287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014552 (A000027 (n + 1)).toNat + A014552 (n + 1)

end

end A176127.P6321981489581714287

/-! ## A176127.P5995910368378635941

`A014552(n+1)+A014552(A028310(n+1))`
-/

namespace A176127.P5995910368378635941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014552 (n + 1) + A014552 (A028310 (n + 1)).toNat

end

end A176127.P5995910368378635941

/-! ## A176127.P16088651384161806708

`A014552(n+1)+A014552(∑[A098190(n+1)])`
-/

namespace A176127.P16088651384161806708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014552 (n + 1) + A014552 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176127.P16088651384161806708

/-! ## A176127.P15495952408641377037

`A014552(n+1)+A014552(A098190(n+1)+n)`
-/

namespace A176127.P15495952408641377037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014552 (n + 1) + A014552 (A098190 (n + 1) + (n : ℤ)).toNat

end

end A176127.P15495952408641377037

/-!
# A176128: a(n) = (n*n!)^2.

The programs for A176128, the canonical program `A176128.P9247581949313575719` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176128 has offset 1).

The definition of A176128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)*(n+1)!)²` (program `A176128.P9247581949313575719`, by `A176128.P9247581949313575719.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176128.P9247581949313575719

`((n+1)*(n+1)!)²`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176128

/-- `((n+1)*(n+1)!)²` -/
def P9247581949313575719.Spec : Prop :=
  ∀ n, (P9247581949313575719.a n : ℤ) = A176128 (n + 1)

theorem P9247581949313575719.correct : P9247581949313575719.Spec := by
  intro n
  simp only [A176128, Nat.add_sub_cancel]

end A176128

/-! ## A176128.P18446616668652623567

`A001563(n+1)²`
-/

namespace A176128.P18446616668652623567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (n + 1) ^ 2

end

end A176128.P18446616668652623567

namespace A176128

/-- `A001563(n+1)²` -/
def P18446616668652623567.Spec : Prop :=
  ∀ n, P18446616668652623567.a n = A176128 (n + 1)

theorem P18446616668652623567.correct : P18446616668652623567.Spec := by
  intro n
  simp only [A176128, Nat.add_sub_cancel, A176128.P18446616668652623567.a, A176128.P9247581949313575719.a, A001563, A001563.P7265670906522758193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176128

/-! ## A176128.P18284191794362668478

`Δ[(n+1)!]²`
-/

namespace A176128.P18284191794362668478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A176128.P18284191794362668478

namespace A176128

/-- `Δ[(n+1)!]²` -/
def P18284191794362668478.Spec : Prop :=
  ∀ n, P18284191794362668478.a n = A176128 (n + 1)

theorem P18284191794362668478.correct : P18284191794362668478.Spec := by
  intro n
  simp only [A176128, Nat.add_sub_cancel, A176128.P18284191794362668478.f1, A176128.P18284191794362668478.a, A176128.P9247581949313575719.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A176128

/-! ## A176128.P11852233281965755807

`Δ[∏[n+1]]²`
-/

namespace A176128.P11852233281965755807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A176128.P11852233281965755807

namespace A176128

/-- `Δ[∏[n+1]]²` -/
def P11852233281965755807.Spec : Prop :=
  ∀ n, P11852233281965755807.a n = A176128 (n + 1)

theorem P11852233281965755807.correct : P11852233281965755807.Spec := by
  intro n
  simp only [A176128, Nat.add_sub_cancel, A176128.P11852233281965755807.f2, A176128.P11852233281965755807.f1, A176128.P11852233281965755807.a, A176128.P9247581949313575719.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A176128

/-! ## A176128.P6552113161145905905

`Δ[(n+1)!]^2`
-/

namespace A176128.P6552113161145905905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A176128.P6552113161145905905

namespace A176128

/-- `Δ[(n+1)!]^2` -/
def P6552113161145905905.Spec : Prop :=
  ∀ n, P6552113161145905905.a n = A176128 (n + 1)

theorem P6552113161145905905.correct : P6552113161145905905.Spec := by
  intro n
  simp only [A176128, Nat.add_sub_cancel, A176128.P6552113161145905905.f1, A176128.P6552113161145905905.a, A176128.P9247581949313575719.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A176128

/-!
# A176129: Number A(n,k) of solid standard Young tableaux of shape [[n*k,n],[n]]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A176129, there is no canonical definition to state claims against.
-/

/-! ## A176129.P1147977340741603768

`A000001(A323836(n))`
-/

namespace A176129.P1147977340741603768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A323836 n).toNat

end

end A176129.P1147977340741603768

/-! ## A176129.P14263374672222424079

`A342238(n+1)^A326474(n)²`
-/

namespace A176129.P14263374672222424079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342238 (n + 1) : ℚ) ^ (A326474 n ^ 2 : ℤ)

end

end A176129.P14263374672222424079

/-! ## A176129.P1866228981481766016

`A304485(n+1)^A288972(n)!`
-/

namespace A176129.P1866228981481766016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304485 (n + 1) ^ Nat.factorial (A288972 n).toNat

end

end A176129.P1866228981481766016

/-! ## A176129.P5785115322982350486

`A304485(n+1)^A291883(n)!`
-/

namespace A176129.P5785115322982350486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304485 (n + 1) ^ Nat.factorial (A291883 n).toNat

end

end A176129.P5785115322982350486

/-! ## A176129.P17078617671000865185

`A304485(n+1)^A326474(n)!`
-/

namespace A176129.P17078617671000865185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304485 (n + 1) ^ Nat.factorial (A326474 n).toNat

end

end A176129.P17078617671000865185

/-!
# A176130: Lesser of a pair (p,p+4) of cousin primes whose arithmetic mean p+2 is a square number.

The programs for A176130, there is no canonical definition to state claims against.
-/

/-! ## A176130.P3308528966955676294

`A144938(n+1)-2`
-/

namespace A176130.P3308528966955676294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144938 (n + 1) - 2

end

end A176130.P3308528966955676294

/-! ## A176130.P6606250291122778620

`A108701(n+1)²-2`
-/

namespace A176130.P6606250291122778620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1) ^ 2 - 2

end

end A176130.P6606250291122778620

/-! ## A176130.P9406899211109358281

`A226177(p?[A008619(n)])+A144938(n+1)`
-/

namespace A176130.P9406899211109358281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A144938 (n + 1)

end

end A176130.P9406899211109358281

/-! ## A176130.P9778692977611877422

`∩[A067201(n+1), A075190(n+1)]²-2`
-/

namespace A176130.P9778692977611877422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 : ℤ) - 2

end

end A176130.P9778692977611877422

/-! ## A176130.P14571319927728790373

`∩[A201860(n+1), A242380(n+1)]`
-/

namespace A176130.P14571319927728790373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P14571319927728790373

/-! ## A176130.P6538621090017734449

`∩[A028871(n+1), A242380(n+1)]`
-/

namespace A176130.P6538621090017734449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P6538621090017734449

/-! ## A176130.P7415963771638395221

`∩[A028870(n+1), A067201(n+1)]²-2`
-/

namespace A176130.P7415963771638395221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 : ℤ) - 2

end

end A176130.P7415963771638395221

/-! ## A176130.P8668892104971417064

`A226177(p?[A054238(n)])+A144938(n+1)`
-/

namespace A176130.P8668892104971417064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A144938 (n + 1)

end

end A176130.P8668892104971417064

/-! ## A176130.P11248268698869737480

`A226177(p?[A016813(n)])+A144938(n+1)`
-/

namespace A176130.P11248268698869737480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226177 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A144938 (n + 1)

end

end A176130.P11248268698869737480

/-! ## A176130.P11219915980728987556

`∩[A028871(n+1), A225195(n+1)]`
-/

namespace A176130.P11219915980728987556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P11219915980728987556

/-! ## A176130.P11747681301007578549

`∩[A201860(n+1), A225195(n+1)]`
-/

namespace A176130.P11747681301007578549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P11747681301007578549

/-! ## A176130.P5894301644585446885

`∩[A179273(n+1), A225195(n+1)]`
-/

namespace A176130.P5894301644585446885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P5894301644585446885

/-! ## A176130.P2696379195658889986

`∩[A179273(n+1), A242380(n+1)]`
-/

namespace A176130.P2696379195658889986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P2696379195658889986

/-! ## A176130.P12909505825548506684

`∩[A225195(n+1), A259055(n)]`
-/

namespace A176130.P12909505825548506684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P12909505825548506684

/-! ## A176130.P5838736888381160740

`∩[A242380(n+1), A259055(n)]`
-/

namespace A176130.P5838736888381160740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259055 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P5838736888381160740

/-! ## A176130.P8903260549542129055

`∩[A073577(n+1), A225195(n+1)]`
-/

namespace A176130.P8903260549542129055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P8903260549542129055

/-! ## A176130.P8324410914308130718

`∩[A073577(n+1), A242380(n+1)]`
-/

namespace A176130.P8324410914308130718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P8324410914308130718

/-! ## A176130.P10875366574473884858

`A008865(A108701(n+1))`
-/

namespace A176130.P10875366574473884858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (A108701 (n + 1)).toNat

end

end A176130.P10875366574473884858

/-! ## A176130.P202995745876027777

`∩[A214345(n), A225195(n+1)]`
-/

namespace A176130.P202995745876027777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P202995745876027777

/-! ## A176130.P6483399124150219993

`∩[A242380(n+1), A214345(n)]`
-/

namespace A176130.P6483399124150219993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176130.P6483399124150219993

/-!
# A176131: Lesser of twin primes p such that 6*p+1 is greater of twin primes.

The programs for A176131, the canonical program `A176131.P13429544879791265934` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176131 has offset 1).

The definition of A176131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 771 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176131.P13429544879791265934

`∩[A001359(n+1), A386724(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176131

/-- `∩[A001359(n+1), A386724(n+1)]` -/
def P13429544879791265934.Spec : Prop :=
  ∀ n, (P13429544879791265934.a n : ℤ) = A176131 (n + 1)

theorem P13429544879791265934.correct : P13429544879791265934.Spec := by
  intro n
  simp only [A176131, Nat.add_sub_cancel]

end A176131

/-! ## A176131.P15013532343251506744

`∩[A001359(n+1), A060212(n+1)]`
-/

namespace A176131.P15013532343251506744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P15013532343251506744

namespace A176131

/-- `∩[A001359(n+1), A060212(n+1)]` -/
def P15013532343251506744.Spec : Prop :=
  ∀ n, (P15013532343251506744.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P1675184541187960020

`∩[A054799(n+1), A060212(n+1)]`
-/

namespace A176131.P1675184541187960020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P1675184541187960020

namespace A176131

/-- `∩[A054799(n+1), A060212(n+1)]` -/
def P1675184541187960020.Spec : Prop :=
  ∀ n, (P1675184541187960020.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P6809733674385148972

`∩[A060212(n+1), A063700(n+1)]`
-/

namespace A176131.P6809733674385148972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P6809733674385148972

namespace A176131

/-- `∩[A060212(n+1), A063700(n+1)]` -/
def P6809733674385148972.Spec : Prop :=
  ∀ n, (P6809733674385148972.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P5329989719218956938

`∩[A060212(n+1), A181747(n+1)]`
-/

namespace A176131.P5329989719218956938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P5329989719218956938

namespace A176131

/-- `∩[A060212(n+1), A181747(n+1)]` -/
def P5329989719218956938.Spec : Prop :=
  ∀ n, (P5329989719218956938.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P18288725175593602816

`∩[A054799(n+1), A386724(n+1)]`
-/

namespace A176131.P18288725175593602816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P18288725175593602816

namespace A176131

/-- `∩[A054799(n+1), A386724(n+1)]` -/
def P18288725175593602816.Spec : Prop :=
  ∀ n, (P18288725175593602816.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P14883310239348685581

`∩[A063700(n+1), A386724(n+1)]`
-/

namespace A176131.P14883310239348685581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P14883310239348685581

namespace A176131

/-- `∩[A063700(n+1), A386724(n+1)]` -/
def P14883310239348685581.Spec : Prop :=
  ∀ n, (P14883310239348685581.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P9883661788243700996

`∩[A124588(n+1), A386724(n+1)]`
-/

namespace A176131.P9883661788243700996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P9883661788243700996

namespace A176131

/-- `∩[A124588(n+1), A386724(n+1)]` -/
def P9883661788243700996.Spec : Prop :=
  ∀ n, (P9883661788243700996.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P4403292643389913454

`∩[A060212(n+1), A063693(n+1)]`
-/

namespace A176131.P4403292643389913454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P4403292643389913454

namespace A176131

/-- `∩[A060212(n+1), A063693(n+1)]` -/
def P4403292643389913454.Spec : Prop :=
  ∀ n, (P4403292643389913454.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P3825363551858356352

`∩[A060212(n+1), A280255(n+1)]`
-/

namespace A176131.P3825363551858356352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P3825363551858356352

namespace A176131

/-- `∩[A060212(n+1), A280255(n+1)]` -/
def P3825363551858356352.Spec : Prop :=
  ∀ n, (P3825363551858356352.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P2719889412052578495

`∩[A063693(n+1), A386724(n+1)]`
-/

namespace A176131.P2719889412052578495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P2719889412052578495

namespace A176131

/-- `∩[A063693(n+1), A386724(n+1)]` -/
def P2719889412052578495.Spec : Prop :=
  ∀ n, (P2719889412052578495.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P1301757564961240451

`∩[A073534(n+1), A386724(n+1)]`
-/

namespace A176131.P1301757564961240451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P1301757564961240451

namespace A176131

/-- `∩[A073534(n+1), A386724(n+1)]` -/
def P1301757564961240451.Spec : Prop :=
  ∀ n, (P1301757564961240451.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P4421278830990329215

`∩[A395788(n+1), A386724(n+1)]`
-/

namespace A176131.P4421278830990329215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P4421278830990329215

namespace A176131

/-- `∩[A395788(n+1), A386724(n+1)]` -/
def P4421278830990329215.Spec : Prop :=
  ∀ n, (P4421278830990329215.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P137082906664248386

`∩[A060212(n+1), A280590(n+1)]`
-/

namespace A176131.P137082906664248386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P137082906664248386

namespace A176131

/-- `∩[A060212(n+1), A280590(n+1)]` -/
def P137082906664248386.Spec : Prop :=
  ∀ n, (P137082906664248386.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P4834234963197410762

`∩[A001838(n+1), A060212(n+1)]`
-/

namespace A176131.P4834234963197410762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P4834234963197410762

namespace A176131

/-- `∩[A001838(n+1), A060212(n+1)]` -/
def P4834234963197410762.Spec : Prop :=
  ∀ n, (P4834234963197410762.a n : ℤ) = A176131 (n + 1)

end A176131

/-! ## A176131.P727366498452691958

`∩[A001838(n+1), A386724(n+1)]`
-/

namespace A176131.P727366498452691958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P727366498452691958

namespace A176131

/-- `∩[A001838(n+1), A386724(n+1)]` -/
def P727366498452691958.Spec : Prop :=
  ∀ n, (P727366498452691958.a n : ℤ) = A176131 (n + 1)

end A176131

/-!
# A176133: Pythagorean primes p (primes of form 4*k + 1) such that 6*p -+ 1 are twin primes.

The programs for A176133, the canonical program `A176133.P12380913063741606072` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176133 has offset 1).

The definition of A176133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176133.P5323865280266642924

`∩[A060212(n+1), A188131(n+1)]`
-/

namespace A176133.P5323865280266642924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P5323865280266642924

namespace A176133

/-- `∩[A060212(n+1), A188131(n+1)]` -/
def P5323865280266642924.Spec : Prop :=
  ∀ n, (P5323865280266642924.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P8088532105443525986

`∩[A164134(n+1), A188131(n+1)]`
-/

namespace A176133.P8088532105443525986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P8088532105443525986

namespace A176133

/-- `∩[A164134(n+1), A188131(n+1)]` -/
def P8088532105443525986.Spec : Prop :=
  ∀ n, (P8088532105443525986.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P12380913063741606072

`p?[ceil(A205172(n+1)/6)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176133

/-- `p?[ceil(A205172(n+1)/6)]` -/
def P12380913063741606072.Spec : Prop :=
  ∀ n, P12380913063741606072.a n = A176133 (n + 1)

theorem P12380913063741606072.correct : P12380913063741606072.Spec := by
  intro n
  simp only [A176133, Nat.add_sub_cancel]

end A176133

/-! ## A176133.P4972125227087213127

`∩[A158015(n+1), A188131(n+1)]`
-/

namespace A176133.P4972125227087213127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P4972125227087213127

namespace A176133

/-- `∩[A158015(n+1), A188131(n+1)]` -/
def P4972125227087213127.Spec : Prop :=
  ∀ n, (P4972125227087213127.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P17867450765130673014

`∩[A008846(n+1), A060212(n+1)]`
-/

namespace A176133.P17867450765130673014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P17867450765130673014

namespace A176133

/-- `∩[A008846(n+1), A060212(n+1)]` -/
def P17867450765130673014.Spec : Prop :=
  ∀ n, (P17867450765130673014.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P16213175047300610120

`∩[A188131(n+1), A355846(n+1)]`
-/

namespace A176133.P16213175047300610120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P16213175047300610120

namespace A176133

/-- `∩[A188131(n+1), A355846(n+1)]` -/
def P16213175047300610120.Spec : Prop :=
  ∀ n, (P16213175047300610120.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P12805912019437570825

`∩[A188131(n+1), A283809(n+1)]`
-/

namespace A176133.P12805912019437570825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P12805912019437570825

namespace A176133

/-- `∩[A188131(n+1), A283809(n+1)]` -/
def P12805912019437570825.Spec : Prop :=
  ∀ n, (P12805912019437570825.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P3282055409847725473

`∩[A053028(n+1), A060212(n+1)]`
-/

namespace A176133.P3282055409847725473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P3282055409847725473

namespace A176133

/-- `∩[A053028(n+1), A060212(n+1)]` -/
def P3282055409847725473.Spec : Prop :=
  ∀ n, (P3282055409847725473.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P7612575968778194775

`∩[A053028(n+1), A283809(n+1)]`
-/

namespace A176133.P7612575968778194775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P7612575968778194775

namespace A176133

/-- `∩[A053028(n+1), A283809(n+1)]` -/
def P7612575968778194775.Spec : Prop :=
  ∀ n, (P7612575968778194775.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P18352067704927264225

`∩[A053028(n+1), A355846(n+1)]`
-/

namespace A176133.P18352067704927264225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P18352067704927264225

namespace A176133

/-- `∩[A053028(n+1), A355846(n+1)]` -/
def P18352067704927264225.Spec : Prop :=
  ∀ n, (P18352067704927264225.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P14662142306053228177

`∩[A060212(n+1), A191218(n+1)]`
-/

namespace A176133.P14662142306053228177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P14662142306053228177

namespace A176133

/-- `∩[A060212(n+1), A191218(n+1)]` -/
def P14662142306053228177.Spec : Prop :=
  ∀ n, (P14662142306053228177.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P3492457879112134438

`∩[A191218(n+1), A283809(n+1)]`
-/

namespace A176133.P3492457879112134438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P3492457879112134438

namespace A176133

/-- `∩[A191218(n+1), A283809(n+1)]` -/
def P3492457879112134438.Spec : Prop :=
  ∀ n, (P3492457879112134438.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P7064297100315476035

`∩[A191218(n+1), A355846(n+1)]`
-/

namespace A176133.P7064297100315476035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P7064297100315476035

namespace A176133

/-- `∩[A191218(n+1), A355846(n+1)]` -/
def P7064297100315476035.Spec : Prop :=
  ∀ n, (P7064297100315476035.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P9499249251352445818

`∩[A053028(n+1), A182521(n+1)]`
-/

namespace A176133.P9499249251352445818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P9499249251352445818

namespace A176133

/-- `∩[A053028(n+1), A182521(n+1)]` -/
def P9499249251352445818.Spec : Prop :=
  ∀ n, (P9499249251352445818.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P12755458178119812561

`∩[A182521(n+1), A188131(n+1)]`
-/

namespace A176133.P12755458178119812561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P12755458178119812561

namespace A176133

/-- `∩[A182521(n+1), A188131(n+1)]` -/
def P12755458178119812561.Spec : Prop :=
  ∀ n, (P12755458178119812561.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P8185971845192306710

`∩[A002144(n+1), A060212(n+1)]`
-/

namespace A176133.P8185971845192306710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P8185971845192306710

namespace A176133

/-- `∩[A002144(n+1), A060212(n+1)]` -/
def P8185971845192306710.Spec : Prop :=
  ∀ n, (P8185971845192306710.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P6029356374589092224

`∩[A060212(n+1), A120960(n+1)]`
-/

namespace A176133.P6029356374589092224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P6029356374589092224

namespace A176133

/-- `∩[A060212(n+1), A120960(n+1)]` -/
def P6029356374589092224.Spec : Prop :=
  ∀ n, (P6029356374589092224.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P6653515622443102922

`∩[A002144(n+1), A182521(n+1)]`
-/

namespace A176133.P6653515622443102922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P6653515622443102922

namespace A176133

/-- `∩[A002144(n+1), A182521(n+1)]` -/
def P6653515622443102922.Spec : Prop :=
  ∀ n, (P6653515622443102922.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P15169530860875519682

`∩[A002144(n+1), A283809(n+1)]`
-/

namespace A176133.P15169530860875519682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P15169530860875519682

namespace A176133

/-- `∩[A002144(n+1), A283809(n+1)]` -/
def P15169530860875519682.Spec : Prop :=
  ∀ n, (P15169530860875519682.a n : ℤ) = A176133 (n + 1)

end A176133

/-! ## A176133.P9357541375405841204

`∩[A060212(n+1), A280084(n+1)]`
-/

namespace A176133.P9357541375405841204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176133.P9357541375405841204

namespace A176133

/-- `∩[A060212(n+1), A280084(n+1)]` -/
def P9357541375405841204.Spec : Prop :=
  ∀ n, (P9357541375405841204.a n : ℤ) = A176133 (n + 1)

end A176133

/-!
# A176134: Primes p of the form |prime(n+2)^2-prime(n+1)^2-prime(n)^2|, (absolute values).

The programs for A176134, there is no canonical definition to state claims against.
-/

/-! ## A176134.P1501992528158171809

`p?[abs(A069482(n+1)-A280076(n+1))]`
-/

namespace A176134.P1501992528158171809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069482 (n + 1) - A280076 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176134.P1501992528158171809

/-! ## A176134.P17019764085534636732

`p?[abs(A069484(n+1)-A001248(n+3))]`
-/

namespace A176134.P17019764085534636732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069484 (n + 1) - A001248 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176134.P17019764085534636732

/-!
# A176135: Primes p in the sequence prime(k+1)^3-prime(k)^3-1.

The programs for A176135, there is no canonical definition to state claims against.
-/

/-! ## A176135.P1228120860116404463

`p?[A129701(n+1)-1]`
-/

namespace A176135.P1228120860116404463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129701 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176135.P1228120860116404463

/-! ## A176135.P4605020268486765454

`p?[Δ[A030078(n+1)]-1]`
-/

namespace A176135.P4605020268486765454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176135.P4605020268486765454

/-!
# A176136: Primes p of the form prime(n+1)^3-prime(n)^3+1.

The programs for A176136, there is no canonical definition to state claims against.
-/

/-! ## A176136.P7080003924816461078

`p?[A129701(n+1)+1]`
-/

namespace A176136.P7080003924816461078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129701 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176136.P7080003924816461078

/-! ## A176136.P17398296535349113389

`p?[Δ[A030078(n+1)]+1]`
-/

namespace A176136.P17398296535349113389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176136.P17398296535349113389

/-! ## A176136.P7010481263236811424

`p?[Δ[A000040(n+1)^3]+1]`
-/

namespace A176136.P7010481263236811424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176136.P7010481263236811424

/-! ## A176136.P11885327220835853079

`p?[Δ[record[A020639(n+1)^3]]+1]`
-/

namespace A176136.P11885327220835853079
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176136.P11885327220835853079

/-!
# A176137: Number of partitions of n into distinct Catalan numbers, cf. A000108.

The programs for A176137, there is no canonical definition to state claims against.
-/

/-! ## A176137.P16636279087763419321

`char[A197433(n)]`
-/

namespace A176137.P16636279087763419321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A176137.P16636279087763419321

/-! ## A176137.P8196484672601784896

`A244231(n)!%2`
-/

namespace A176137.P8196484672601784896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A244231 n).toNat % 2

end

end A176137.P8196484672601784896

/-! ## A176137.P931713770708155079

`∏{digits}[A244159(n), C(#, #²)]`
-/

namespace A176137.P931713770708155079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose x (x ^ 2)).prod

end

end A176137.P931713770708155079

/-! ## A176137.P11231675451739537595

`A014043(A244231(n))`
-/

namespace A176137.P11231675451739537595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014043 (A244231 n).toNat

end

end A176137.P11231675451739537595

/-! ## A176137.P2258186976174918858

`char[A244155(A001068(n))]`
-/

namespace A176137.P2258186976174918858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244155 (A001068 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A176137.P2258186976174918858

/-! ## A176137.P16530455426297290523

`C(A239903(n), A014418(n))`
-/

namespace A176137.P16530455426297290523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A239903 n).toNat (A014418 n).toNat

end

end A176137.P16530455426297290523

/-! ## A176137.P3262699875797730902

`∏{digits}[A244159(n), 1-A004526(#)]`
-/

namespace A176137.P3262699875797730902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A004526 x).prod

end

end A176137.P3262699875797730902

/-! ## A176137.P3034840505711811899

`A244233(A197433(A244231(n)²))`
-/

namespace A176137.P3034840505711811899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 (A197433 (A244231 n ^ 2).toNat).toNat

end

end A176137.P3034840505711811899

/-! ## A176137.P1059955346274193845

`1-A057427(A244231(n)-A057427(n))`
-/

namespace A176137.P1059955346274193845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (A244231 n - A057427 n).toNat

end

end A176137.P1059955346274193845

/-! ## A176137.P7492096847051223363

`A004530((A244231(n)-1)*A244231(n))`
-/

namespace A176137.P7492096847051223363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 ((A244231 n - 1) * A244231 n).toNat

end

end A176137.P7492096847051223363

/-! ## A176137.P11643603908155075899

`A004530(A244231(n)!)`
-/

namespace A176137.P11643603908155075899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (Nat.factorial (A244231 n).toNat)

end

end A176137.P11643603908155075899

/-! ## A176137.P12340348468474649709

`C(n, A197433(A244230(n)))`
-/

namespace A176137.P12340348468474649709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A197433 (A244230 n).toNat).toNat

end

end A176137.P12340348468474649709

/-! ## A176137.P7544584997139058244

`Δ[A244230(n)]`
-/

namespace A176137.P7544584997139058244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176137.P7544584997139058244

/-! ## A176137.P7588074791725746105

`A244230(n+1)-A244230(n)`
-/

namespace A176137.P7588074791725746105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (n + 1) - A244230 n

end

end A176137.P7588074791725746105

/-! ## A176137.P15696195990152061317

`A000035(A244230(n+1)+A244230(n))`
-/

namespace A176137.P15696195990152061317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244230 (n + 1) + A244230 n).toNat

end

end A176137.P15696195990152061317

/-! ## A176137.P6481123814481777178

`A244233(A197432(A244231(n)²))`
-/

namespace A176137.P6481123814481777178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244233 (A197432 (A244231 n ^ 2).toNat).toNat

end

end A176137.P6481123814481777178

/-! ## A176137.P16922826011939699060

`A085357(A085195(n))`
-/

namespace A176137.P16922826011939699060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 (A085195 n).toNat

end

end A176137.P16922826011939699060

/-! ## A176137.P16692254198887893650

`A151666(A244161(n))`
-/

namespace A176137.P16692254198887893650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 (A244161 n).toNat

end

end A176137.P16692254198887893650

/-! ## A176137.P12000757544237490486

`A039966(A014419(n))`
-/

namespace A176137.P12000757544237490486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A014419 n).toNat

end

end A176137.P12000757544237490486

/-!
# A176138: Primes p of the form prime(n+1)^3+prime(n)^3-1.

The programs for A176138, there is no canonical definition to state claims against.
-/

/-! ## A176138.P18055890250565203486

`p?[A133534(n+1)-1]`
-/

namespace A176138.P18055890250565203486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133534 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176138.P18055890250565203486

/-! ## A176138.P12523798234347988600

`p?[∑{p}[A006094(n+1), #^3]-1]`
-/

namespace A176138.P12523798234347988600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, p ^ 3 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176138.P12523798234347988600

/-!
# A176140: Semiprimes s such that both s + 3 and s - 3 are primes.

The programs for A176140, there is no canonical definition to state claims against.
-/

/-! ## A176140.P11371069216530580116

`2*A092110(n+1)`
-/

namespace A176140.P11371069216530580116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092110 (n + 1)

end

end A176140.P11371069216530580116

/-! ## A176140.P353361937993186616

`2*p?[A088763(n+1)]`
-/

namespace A176140.P353361937993186616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176140.P353361937993186616

/-! ## A176140.P7229765514745754631

`p?[A015782(n+1)-3]+3`
-/

namespace A176140.P7229765514745754631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015782 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3

end

end A176140.P7229765514745754631

/-!
# A176142: Number of nonequivalent monoids of order n in which the action of the unit group on the maximal ideal is nontrivial.

The programs for A176142, there is no canonical definition to state claims against.
-/

/-! ## A176142.P6957926611370355690

`A002264(A293906(n))/A095144(n)`
-/

namespace A176142.P6957926611370355690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002264 (A293906 n).toNat : ℚ) / (A095144 n : ℚ)

end

end A176142.P6957926611370355690

/-! ## A176142.P15092709612900694376

`A061357(A006125(n)+∏[A000929(n)])`
-/

namespace A176142.P15092709612900694376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A006125 n + ∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176142.P15092709612900694376

/-! ## A176142.P16140480916391148036

`A243055(n+1)+A036414(A270666(n))`
-/

namespace A176142.P16140480916391148036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1) + A036414 (A270666 n).toNat

end

end A176142.P16140480916391148036

/-!
# A176144: a(2n) = A164555(n). a(2n+1) = A027641(n).

The programs for A176144, there is no canonical definition to state claims against.
-/

/-! ## A176144.P3746158867030079419

`A027641(char[2]+floor(n/2))`
-/

namespace A176144.P3746158867030079419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A176144.P3746158867030079419

/-! ## A176144.P9488057976471599586

`A027641(floor(n/2))^n^C(2, n)`
-/

namespace A176144.P9488057976471599586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 ⌊(n : ℚ) / 2⌋.toNat ^ n ^ Nat.choose 2 n

end

end A176144.P9488057976471599586

/-! ## A176144.P6322688981722285075

`A176184(A113638(n))`
-/

namespace A176144.P6322688981722285075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176184 (A113638 n).toNat

end

end A176144.P6322688981722285075

/-! ## A176144.P16458657818224570700

`A057077(n)*A176184(n)`
-/

namespace A176144.P16458657818224570700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A176184 n

end

end A176144.P16458657818224570700

/-! ## A176144.P214076127151058034

`A027641(floor(n/2))^A000005((n+1)*and(2, n)+1)`
-/

namespace A176144.P214076127151058034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027641 ⌊(n : ℚ) / 2⌋.toNat : ℚ) ^ (A000005 ((n + 1) * Nat.land 2 n + 1) : ℤ)

end

end A176144.P214076127151058034

/-! ## A176144.P17046400765634389649

`A176184(xor(1, n))`
-/

namespace A176144.P17046400765634389649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176184 (Nat.xor 1 n)

end

end A176144.P17046400765634389649

/-! ## A176144.P11549555334775338909

`A176184((-1)^n+n)`
-/

namespace A176144.P11549555334775338909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176184 ((-1) ^ n + (n : ℤ)).toNat

end

end A176144.P11549555334775338909

/-!
# A176145: a(n) = n*(n-3)*(n^2-7*n+14)/8.

The programs for A176145, the canonical program `A176145.P8711913731725986993` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176145 has offset 3).

The definition of A176145 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+3)*n*((n+3)²-7*(n+3)+14)/8` (program `A176145.P6064593230287151613`, by `A176145.P6064593230287151613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176145.P6064593230287151613

`(n+3)*n*((n+3)²-7*(n+3)+14)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176145.P6064593230287151613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) * n : ℤ) * (((n + 3) ^ 2 : ℤ) - (7 * (n + 3) : ℤ) + 14) : ℚ) / 8

end

end A176145.P6064593230287151613

namespace A176145

/-- `(n+3)*n*((n+3)²-7*(n+3)+14)/8` -/
def P6064593230287151613.Spec : Prop :=
  ∀ n, P6064593230287151613.a n = (A176145 (n + 3) : ℚ)

theorem P6064593230287151613.correct : P6064593230287151613.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A176145, Nat.add_sub_cancel, A176145.P6064593230287151613.a, A176145.P8711913731725986993.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A176145, Nat.add_sub_cancel, A176145.P6064593230287151613.a, A176145.P8711913731725986993.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A176145

/-! ## A176145.P8711913731725986993

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=18, a(4)=49`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176145

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8711913731725986993.Spec : Prop :=
  ∀ n, P8711913731725986993.a n = A176145 (n + 3)

theorem P8711913731725986993.correct : P8711913731725986993.Spec := by
  intro n
  simp only [A176145, Nat.add_sub_cancel]

end A176145

/-! ## A176145.P9581788942240616664

`C(∑[n], 2)+n`
-/

namespace A176145.P9581788942240616664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n

end

end A176145.P9581788942240616664

namespace A176145

/-- `C(∑[n], 2)+n` -/
def P9581788942240616664.Spec : Prop :=
  ∀ n, (P9581788942240616664.a n : ℤ) = A176145 (n + 3)

end A176145

/-! ## A176145.P15325989457972021031

`3*C(n+2, 4)+n`
-/

namespace A176145.P15325989457972021031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 2) 4 + n

end

end A176145.P15325989457972021031

namespace A176145

/-- `3*C(n+2, 4)+n` -/
def P15325989457972021031.Spec : Prop :=
  ∀ n, (P15325989457972021031.a n : ℤ) = A176145 (n + 3)

end A176145

/-! ## A176145.P10605450557106677732

`floor(C(C(n, 2), 2)+(n^3+n)/2)`
-/

namespace A176145.P10605450557106677732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (Nat.choose n 2) 2 : ℚ) + (n ^ 3 + n : ℚ) / 2⌋

end

end A176145.P10605450557106677732

namespace A176145

/-- `floor(C(C(n, 2), 2)+(n^3+n)/2)` -/
def P10605450557106677732.Spec : Prop :=
  ∀ n, P10605450557106677732.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P5389085116536181070

`ceil(C(C(n, 2), 2)+(n^3+n)/2)`
-/

namespace A176145.P5389085116536181070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (Nat.choose n 2) 2 : ℚ) + (n ^ 3 + n : ℚ) / 2⌉

end

end A176145.P5389085116536181070

namespace A176145

/-- `ceil(C(C(n, 2), 2)+(n^3+n)/2)` -/
def P5389085116536181070.Spec : Prop :=
  ∀ n, P5389085116536181070.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P16419751453552723614

`∑[A158842(n)]-1`
-/

namespace A176145.P16419751453552723614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A176145.P16419751453552723614

namespace A176145

/-- `∑[A158842(n)]-1` -/
def P16419751453552723614.Spec : Prop :=
  ∀ n, P16419751453552723614.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P7078725822031355627

`A086602(n)+∑[n]`
-/

namespace A176145.P7078725822031355627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A176145.P7078725822031355627

namespace A176145

/-- `A086602(n)+∑[n]` -/
def P7078725822031355627.Spec : Prop :=
  ∀ n, P7078725822031355627.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P14213413716436924136

`∑[A135503(n)]+n`
-/

namespace A176145.P14213413716436924136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A176145.P14213413716436924136

namespace A176145

/-- `∑[A135503(n)]+n` -/
def P14213413716436924136.Spec : Prop :=
  ∀ n, P14213413716436924136.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P5264048407112908251

`A050534(n+1)+n`
-/

namespace A176145.P5264048407112908251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 (n + 1) + (n : ℤ)

end

end A176145.P5264048407112908251

namespace A176145

/-- `A050534(n+1)+n` -/
def P5264048407112908251.Spec : Prop :=
  ∀ n, P5264048407112908251.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P14847381776207720678

`∑[A229183(n)]-n²`
-/

namespace A176145.P14847381776207720678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A176145.P14847381776207720678

namespace A176145

/-- `∑[A229183(n)]-n²` -/
def P14847381776207720678.Spec : Prop :=
  ∀ n, P14847381776207720678.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P12267858314713128186

`abs(C(n, 2)-A002817(n))`
-/

namespace A176145.P12267858314713128186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose n 2 : ℤ) - A002817 n|

end

end A176145.P12267858314713128186

namespace A176145

/-- `abs(C(n, 2)-A002817(n))` -/
def P12267858314713128186.Spec : Prop :=
  ∀ n, P12267858314713128186.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P8733633066221598382

`∑[(n^4)%A081423(n)]`
-/

namespace A176145.P8733633066221598382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 4 : ℤ) (A081423 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176145.P8733633066221598382

namespace A176145

/-- `∑[(n^4)%A081423(n)]` -/
def P8733633066221598382.Spec : Prop :=
  ∀ n, P8733633066221598382.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P3992462759568158681

`abs(A004255(n+1)-(∑[n]+1))`
-/

namespace A176145.P3992462759568158681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004255 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)|

end

end A176145.P3992462759568158681

namespace A176145

/-- `abs(A004255(n+1)-(∑[n]+1))` -/
def P3992462759568158681.Spec : Prop :=
  ∀ n, P3992462759568158681.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P1180545142853231492

`∑[∑[3*C(n, 2)]-A057428(n)]`
-/

namespace A176145.P1180545142853231492
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176145.P1180545142853231492

namespace A176145

/-- `∑[∑[3*C(n, 2)]-A057428(n)]` -/
def P1180545142853231492.Spec : Prop :=
  ∀ n, P1180545142853231492.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P3497258427404800803

`A294259(n)+A161680(n)`
-/

namespace A176145.P3497258427404800803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294259 n + A161680 n

end

end A176145.P3497258427404800803

namespace A176145

/-- `A294259(n)+A161680(n)` -/
def P3497258427404800803.Spec : Prop :=
  ∀ n, P3497258427404800803.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P14589607630509607985

`A001296(n)-A005581(n)`
-/

namespace A176145.P14589607630509607985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n - A005581 n

end

end A176145.P14589607630509607985

namespace A176145

/-- `A001296(n)-A005581(n)` -/
def P14589607630509607985.Spec : Prop :=
  ∀ n, P14589607630509607985.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P17386967248301759751

`A002817(n)-A161680(n)`
-/

namespace A176145.P17386967248301759751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A161680 n

end

end A176145.P17386967248301759751

namespace A176145

/-- `A002817(n)-A161680(n)` -/
def P17386967248301759751.Spec : Prop :=
  ∀ n, P17386967248301759751.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P545367089897055053

`A133252(n)-A047732(n)`
-/

namespace A176145.P545367089897055053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133252 n - A047732 n

end

end A176145.P545367089897055053

namespace A176145

/-- `A133252(n)-A047732(n)` -/
def P545367089897055053.Spec : Prop :=
  ∀ n, P545367089897055053.a n = A176145 (n + 3)

end A176145

/-! ## A176145.P9533172963240570422

`A257055(n)-A000332(n)`
-/

namespace A176145.P9533172963240570422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n - A000332 n

end

end A176145.P9533172963240570422

namespace A176145

/-- `A257055(n)-A000332(n)` -/
def P9533172963240570422.Spec : Prop :=
  ∀ n, P9533172963240570422.a n = A176145 (n + 3)

end A176145

/-!
# A176146: a(n) = n-th-semiprime without last digit.

The programs for A176146, the canonical program `A176146.P2950127790383552285` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176146 has offset 1).

The definition of A176146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176146.P2950127790383552285

`floor(A001358(n+1)/10)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176146

/-- `floor(A001358(n+1)/10)` -/
def P2950127790383552285.Spec : Prop :=
  ∀ n, P2950127790383552285.a n = A176146 (n + 1)

theorem P2950127790383552285.correct : P2950127790383552285.Spec := by
  intro n
  simp only [A176146, Nat.add_sub_cancel]

end A176146

/-! ## A176146.P17695087999994327169

`floor(A075818(n+1)/20)`
-/

namespace A176146.P17695087999994327169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075818 (n + 1) : ℚ) / 20⌋

end

end A176146.P17695087999994327169

namespace A176146

/-- `floor(A075818(n+1)/20)` -/
def P17695087999994327169.Spec : Prop :=
  ∀ n, P17695087999994327169.a n = A176146 (n + 1)

theorem P17695087999994327169.correct : P17695087999994327169.Spec := by
  intro n
  simp only [A176146, Nat.add_sub_cancel, A176146.P17695087999994327169.a, A176146.P2950127790383552285.a, A001358, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176146

/-! ## A176146.P3597424641618218654

`floor((eq[2, A001222(n+1)]+1)/10)`
-/

namespace A176146.P3597424641618218654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 10⌋

end

end A176146.P3597424641618218654

namespace A176146

/-- `floor((eq[2, A001222(n+1)]+1)/10)` -/
def P3597424641618218654.Spec : Prop :=
  ∀ n, P3597424641618218654.a n = A176146 (n + 1)

end A176146

/-! ## A176146.P10777514836564796784

`floor(record[n/a(A001222(n))]/10)` with `a(0)=4, a(1)=2`
-/

namespace A176146.P10777514836564796784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  (n : ℚ) / f1 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 10⌋

end

end A176146.P10777514836564796784

namespace A176146

/-- `floor(record[n/a(A001222(n))]/10)` -/
def P10777514836564796784.Spec : Prop :=
  ∀ n, P10777514836564796784.a n = A176146 (n + 1)

end A176146

/-! ## A176146.P16905322401095321978

`floor(lt[1, A105700(n)]/10)`
-/

namespace A176146.P16905322401095321978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 10⌋

end

end A176146.P16905322401095321978

namespace A176146

/-- `floor(lt[1, A105700(n)]/10)` -/
def P16905322401095321978.Spec : Prop :=
  ∀ n, P16905322401095321978.a n = A176146 (n + 1)

end A176146

/-! ## A176146.P15775921929632938679

`floor(eq[2, A226378(n)]/10)`
-/

namespace A176146.P15775921929632938679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 10⌋

end

end A176146.P15775921929632938679

namespace A176146

/-- `floor(eq[2, A226378(n)]/10)` -/
def P15775921929632938679.Spec : Prop :=
  ∀ n, P15775921929632938679.a n = A176146 (n + 1)

end A176146

/-! ## A176146.P6423623950556266829

`floor(eq[2, A284289(n)]/10)`
-/

namespace A176146.P6423623950556266829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 10⌋

end

end A176146.P6423623950556266829

namespace A176146

/-- `floor(eq[2, A284289(n)]/10)` -/
def P6423623950556266829.Spec : Prop :=
  ∀ n, P6423623950556266829.a n = A176146 (n + 1)

end A176146

/-! ## A176146.P10764489056334062436

`A059995(A001358(n+1))`
-/

namespace A176146.P10764489056334062436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A001358 (n + 1)).toNat

end

end A176146.P10764489056334062436

namespace A176146

/-- `A059995(A001358(n+1))` -/
def P10764489056334062436.Spec : Prop :=
  ∀ n, P10764489056334062436.a n = A176146 (n + 1)

end A176146

/-! ## A176146.P11385850768942225121

`A059995(A176540(n+2))`
-/

namespace A176146.P11385850768942225121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A176540 (n + 2)).toNat

end

end A176146.P11385850768942225121

namespace A176146

/-- `A059995(A176540(n+2))` -/
def P11385850768942225121.Spec : Prop :=
  ∀ n, P11385850768942225121.a n = A176146 (n + 1)

end A176146

/-! ## A176146.P8061009909867189189

`floor(eq[2, A166974(n)]/10)`
-/

namespace A176146.P8061009909867189189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 10⌋

end

end A176146.P8061009909867189189

namespace A176146

/-- `floor(eq[2, A166974(n)]/10)` -/
def P8061009909867189189.Spec : Prop :=
  ∀ n, P8061009909867189189.a n = A176146 (n + 1)

end A176146

/-!
# A176147: a(n) = n^sopf(n), where sopf(n) is the sum of the distinct primes dividing n (A008472).

The programs for A176147, the canonical program `A176147.P5594787546737527152` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176147 has offset 1).

The definition of A176147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176147.P5594787546737527152

`(n+1)^A008472(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176147

/-- `(n+1)^A008472(n+1)` -/
def P5594787546737527152.Spec : Prop :=
  ∀ n, P5594787546737527152.a n = (A176147 (n + 1) : ℚ)

end A176147

/-! ## A176147.P8082455739834776450

`(n+1)^∑{p}[n+1, #]`
-/

namespace A176147.P8082455739834776450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A176147.P8082455739834776450

namespace A176147

/-- `(n+1)^∑{p}[n+1, #]` -/
def P8082455739834776450.Spec : Prop :=
  ∀ n, (P8082455739834776450.a n : ℤ) = A176147 (n + 1)

end A176147

/-! ## A176147.P877081727988857765

`∏{p}[n+1, (n+1)^#]`
-/

namespace A176147.P877081727988857765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (n + 1) ^ p

end

end A176147.P877081727988857765

namespace A176147

/-- `∏{p}[n+1, (n+1)^#]` -/
def P877081727988857765.Spec : Prop :=
  ∀ n, (P877081727988857765.a n : ℤ) = A176147 (n + 1)

end A176147

/-! ## A176147.P1430020803813757227

`∏{p}[n+1, root(n+1, 2/#)]²`
-/

namespace A176147.P1430020803813757227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℝ) ^ (1 / (2 / (p : ℚ) : ℝ))) ^ 2

end

end A176147.P1430020803813757227

namespace A176147

/-- `∏{p}[n+1, root(n+1, 2/#)]²` -/
def P1430020803813757227.Spec : Prop :=
  ∀ n, P1430020803813757227.a n = (A176147 (n + 1) : ℝ)

end A176147

/-! ## A176147.P11485675533389135957

`(n+1)^Δ[A024924(n)]`
-/

namespace A176147.P11485675533389135957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A176147.P11485675533389135957

namespace A176147

/-- `(n+1)^Δ[A024924(n)]` -/
def P11485675533389135957.Spec : Prop :=
  ∀ n, P11485675533389135957.a n = (A176147 (n + 1) : ℚ)

end A176147

/-! ## A176147.P2550037691703509270

`(n+1)^A063958((n+1)²)`
-/

namespace A176147.P2550037691703509270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A063958 ((n + 1) ^ 2) : ℤ)

end

end A176147.P2550037691703509270

namespace A176147

/-- `(n+1)^A063958((n+1)²)` -/
def P2550037691703509270.Spec : Prop :=
  ∀ n, P2550037691703509270.a n = (A176147 (n + 1) : ℚ)

end A176147

/-! ## A176147.P14842020323461590781

`(n+1)^A097974((n+1)²)`
-/

namespace A176147.P14842020323461590781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A097974 ((n + 1) ^ 2) : ℤ)

end

end A176147.P14842020323461590781

namespace A176147

/-- `(n+1)^A097974((n+1)²)` -/
def P14842020323461590781.Spec : Prop :=
  ∀ n, P14842020323461590781.a n = (A176147 (n + 1) : ℚ)

end A176147

/-! ## A176147.P17889342009165156134

`(n+1)^A105221((n+1)²)`
-/

namespace A176147.P17889342009165156134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A105221 ((n + 1) ^ 2) : ℤ)

end

end A176147.P17889342009165156134

namespace A176147

/-- `(n+1)^A105221((n+1)²)` -/
def P17889342009165156134.Spec : Prop :=
  ∀ n, P17889342009165156134.a n = (A176147 (n + 1) : ℚ)

end A176147

/-! ## A176147.P6352896873784211005

`(n+1)^A345266((n+1)²)`
-/

namespace A176147.P6352896873784211005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A345266 ((n + 1) ^ 2) : ℤ)

end

end A176147.P6352896873784211005

namespace A176147

/-- `(n+1)^A345266((n+1)²)` -/
def P6352896873784211005.Spec : Prop :=
  ∀ n, P6352896873784211005.a n = (A176147 (n + 1) : ℚ)

end A176147

/-! ## A176147.P15739173970938369858

`(n+1)^sqrt(A235323(n+1))`
-/

namespace A176147.P15739173970938369858
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.sqrt (A235323 (n + 1) : ℝ))

end

end A176147.P15739173970938369858

namespace A176147

/-- `(n+1)^sqrt(A235323(n+1))` -/
def P15739173970938369858.Spec : Prop :=
  ∀ n, P15739173970938369858.a n = (A176147 (n + 1) : ℝ)

end A176147

/-!
# A176148: The number of words of length n created with the letters a, b, c with at least as many a's as b's and at least as many b's as c's and no adjacent letters forming the pattern aba or bab.

The programs for A176148, there is no canonical definition to state claims against.
-/

/-! ## A176148.P18252886920828717658

`∑[A353398(∑[A147991(n+1)])]`
-/

namespace A176148.P18252886920828717658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147991 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353398 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176148.P18252886920828717658

/-! ## A176148.P17910927045122882200

`A185216(A002384(2*(n+1))+floor(2/acot(n)))`
-/

namespace A176148.P17910927045122882200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 (A002384 (2 * (n + 1)) + ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A176148.P17910927045122882200

/-! ## A176148.P18427601633213454645

`A051282(A047864(n))+A000108(n)`
-/

namespace A176148.P18427601633213454645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (A047864 n).toNat + A000108 n

end

end A176148.P18427601633213454645

/-!
# A176149: Triangle T(n, k) = n + 1 - mod(n, k+1) - mod(n, n-k+1), read by rows.

The programs for A176149, the canonical program `A176149.P14564465024406072141` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176149 has offset 0).

The definition of A176149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+1-row(n)%(col(n)+1)-row(n)%(row(n)-col(n)+1)` (program `A176149.P14564465024406072141`, by `A176149.P14564465024406072141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176149.P14564465024406072141

`row(n)+1-row(n)%(col(n)+1)-row(n)%(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176149

/-- `row(n)+1-row(n)%(col(n)+1)-row(n)%(row(n)-col(n)+1)` -/
def P14564465024406072141.Spec : Prop :=
  ∀ n, P14564465024406072141.a n = A176149 n

theorem P14564465024406072141.correct : P14564465024406072141.Spec := by
  intro n
  simp only [A176149]

end A176149

/-! ## A176149.P9149935039507551518

`(A176151(n)+A155170(n))/2`
-/

namespace A176149.P9149935039507551518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176151 n + A155170 n : ℚ) / 2

end

end A176149.P9149935039507551518

namespace A176149

/-- `(A176151(n)+A155170(n))/2` -/
def P9149935039507551518.Spec : Prop :=
  ∀ n, P9149935039507551518.a n = (A176149 n : ℚ)

theorem P9149935039507551518.correct : P9149935039507551518.Spec := by
  intro n
  simp only [A176149, Nat.add_sub_cancel, A176149.P9149935039507551518.a, A176149.P14564465024406072141.a, A155170, A155170.P4565705859408288920.a, A176151, A176151.P12606577983657268496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176149

/-! ## A176149.P2905127920208343421

`A004526(A176151(n)+A155170(n))`
-/

namespace A176149.P2905127920208343421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A176151 n + A155170 n).toNat

end

end A176149.P2905127920208343421

namespace A176149

/-- `A004526(A176151(n)+A155170(n))` -/
def P2905127920208343421.Spec : Prop :=
  ∀ n, P2905127920208343421.a n = A176149 n

end A176149

/-! ## A176149.P1304815408730668450

`A026741(A176151(n)+A155170(n))`
-/

namespace A176149.P1304815408730668450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A176151 n + A155170 n).toNat

end

end A176149.P1304815408730668450

namespace A176149

/-- `A026741(A176151(n)+A155170(n))` -/
def P1304815408730668450.Spec : Prop :=
  ∀ n, P1304815408730668450.a n = A176149 n

end A176149

/-! ## A176149.P16631313719885891526

`A110654(A176151(n)+A155170(n))`
-/

namespace A176149.P16631313719885891526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A176151 n + A155170 n).toNat

end

end A176149.P16631313719885891526

namespace A176149

/-- `A110654(A176151(n)+A155170(n))` -/
def P16631313719885891526.Spec : Prop :=
  ∀ n, P16631313719885891526.a n = A176149 n

end A176149

/-! ## A176149.P16825963976148176991

`A116447(A176151(n)+A155170(n))`
-/

namespace A176149.P16825963976148176991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A176151 n + A155170 n).toNat

end

end A176149.P16825963976148176991

namespace A176149

/-- `A116447(A176151(n)+A155170(n))` -/
def P16825963976148176991.Spec : Prop :=
  ∀ n, P16825963976148176991.a n = A176149 n

end A176149

/-! ## A176149.P12157925077753092558

`A123108(A176151(n)+A155170(n))`
-/

namespace A176149.P12157925077753092558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A176151 n + A155170 n).toNat

end

end A176149.P12157925077753092558

namespace A176149

/-- `A123108(A176151(n)+A155170(n))` -/
def P12157925077753092558.Spec : Prop :=
  ∀ n, P12157925077753092558.a n = A176149 n

end A176149

/-! ## A176149.P3878225775745371128

`A008619(A176151(n)-A156045(n))`
-/

namespace A176149.P3878225775745371128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A176151 n - A156045 n).toNat

end

end A176149.P3878225775745371128

namespace A176149

/-- `A008619(A176151(n)-A156045(n))` -/
def P3878225775745371128.Spec : Prop :=
  ∀ n, P3878225775745371128.a n = A176149 n

end A176149

/-! ## A176149.P10225865829056161571

`A028242(A176151(n)-A156045(n))`
-/

namespace A176149.P10225865829056161571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A176151 n - A156045 n).toNat

end

end A176149.P10225865829056161571

namespace A176149

/-- `A028242(A176151(n)-A156045(n))` -/
def P10225865829056161571.Spec : Prop :=
  ∀ n, P10225865829056161571.a n = A176149 n

end A176149

/-! ## A176149.P5322792124072214969

`A110514(A176151(n)-A156045(n))`
-/

namespace A176149.P5322792124072214969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A176151 n - A156045 n).toNat

end

end A176149.P5322792124072214969

namespace A176149

/-- `A110514(A176151(n)-A156045(n))` -/
def P5322792124072214969.Spec : Prop :=
  ∀ n, P5322792124072214969.a n = A176149 n

end A176149

/-! ## A176149.P15054866389477110923

`A110654(A155170(n)-(1-A176151(n)))`
-/

namespace A176149.P15054866389477110923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A155170 n - (1 - A176151 n)).toNat

end

end A176149.P15054866389477110923

namespace A176149

/-- `A110654(A155170(n)-(1-A176151(n)))` -/
def P15054866389477110923.Spec : Prop :=
  ∀ n, P15054866389477110923.a n = A176149 n

end A176149

/-!
# A176151: Triangle T(n, k) = 2*(n+1 - mod(n, k+1) - mod(n, n-k+1) ) + (n! - k! - (n-k)!) read by rows.

The programs for A176151, the canonical program `A176151.P12606577983657268496` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176151 has offset 0).

The definition of A176151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176151.P12606577983657268496

`2*A176149(n)-A155170(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176151

/-- `2*A176149(n)-A155170(n)` -/
def P12606577983657268496.Spec : Prop :=
  ∀ n, P12606577983657268496.a n = A176151 n

theorem P12606577983657268496.correct : P12606577983657268496.Spec := by
  intro n
  simp only [A176151]

end A176151

/-! ## A176151.P11050721049638051686

`A005843(A176149(n))-A155170(n)`
-/

namespace A176151.P11050721049638051686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A176149 n).toNat - A155170 n

end

end A176151.P11050721049638051686

namespace A176151

/-- `A005843(A176149(n))-A155170(n)` -/
def P11050721049638051686.Spec : Prop :=
  ∀ n, P11050721049638051686.a n = A176151 n

end A176151

/-! ## A176151.P1252234446138364869

`A156045(n)+A004277(A176149(n))-2`
-/

namespace A176151.P1252234446138364869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 n + (A004277 (A176149 n).toNat - 2)

end

end A176151.P1252234446138364869

namespace A176151

/-- `A156045(n)+A004277(A176149(n))-2` -/
def P1252234446138364869.Spec : Prop :=
  ∀ n, P1252234446138364869.a n = A176151 n

end A176151

/-! ## A176151.P1357619174248384542

`A155451(n)+A004277(A176149(n))-A028326(n)`
-/

namespace A176151.P1357619174248384542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155451 n + (A004277 (A176149 n).toNat - A028326 n)

end

end A176151.P1357619174248384542

namespace A176151

/-- `A155451(n)+A004277(A176149(n))-A028326(n)` -/
def P1357619174248384542.Spec : Prop :=
  ∀ n, P1357619174248384542.a n = A176151 n

end A176151

/-! ## A176151.P1499263805288378395

`A004277(A176149(n))-(2*A001263(n+1)-A176152(n))`
-/

namespace A176151.P1499263805288378395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A176149 n).toNat - (2 * A001263 (n + 1) - A176152 n)

end

end A176151.P1499263805288378395

namespace A176151

/-- `A004277(A176149(n))-(2*A001263(n+1)-A176152(n))` -/
def P1499263805288378395.Spec : Prop :=
  ∀ n, P1499263805288378395.a n = A176151 n

end A176151

/-! ## A176151.P7245916044781871124

`A004277(A176149(n))-(A156044(n)+2-A156046(n))`
-/

namespace A176151.P7245916044781871124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A176149 n).toNat - (A156044 n + (2 - A156046 n))

end

end A176151.P7245916044781871124

namespace A176151

/-- `A004277(A176149(n))-(A156044(n)+2-A156046(n))` -/
def P7245916044781871124.Spec : Prop :=
  ∀ n, P7245916044781871124.a n = A176151 n

end A176151

/-!
# A176152: Triangle, read by rows, T(n, k) = 2*binomial(n, k)*binomial(n+1, k)/(k+1) - (k! - n! + (n-k)!).

The programs for A176152, the canonical program `A176152.P825431386111767278` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176152 has offset 0).

The definition of A176152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176152.P825431386111767278

`2*A001263(n+1)-A155170(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176152

/-- `2*A001263(n+1)-A155170(n)` -/
def P825431386111767278.Spec : Prop :=
  ∀ n, P825431386111767278.a n = A176152 n

theorem P825431386111767278.correct : P825431386111767278.Spec := by
  intro n
  simp only [A176152]

end A176152

/-! ## A176152.P15108459747120274752

`A004277(A001263(n+1))-A155170(n)`
-/

namespace A176152.P15108459747120274752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001263 (n + 1)).toNat - A155170 n

end

end A176152.P15108459747120274752

namespace A176152

/-- `A004277(A001263(n+1))-A155170(n)` -/
def P15108459747120274752.Spec : Prop :=
  ∀ n, P15108459747120274752.a n = A176152 n

end A176152

/-! ## A176152.P10390643178263186135

`A004277(A001263(n+1))+A156045(n)-2`
-/

namespace A176152.P10390643178263186135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001263 (n + 1)).toNat + (A156045 n - 2)

end

end A176152.P10390643178263186135

namespace A176152

/-- `A004277(A001263(n+1))+A156045(n)-2` -/
def P10390643178263186135.Spec : Prop :=
  ∀ n, P10390643178263186135.a n = A176152 n

end A176152

/-! ## A176152.P14413683800701618801

`A004277(A001263(n+1))+A155451(n)-A028326(n)`
-/

namespace A176152.P14413683800701618801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001263 (n + 1)).toNat + (A155451 n - A028326 n)

end

end A176152.P14413683800701618801

namespace A176152

/-- `A004277(A001263(n+1))+A155451(n)-A028326(n)` -/
def P14413683800701618801.Spec : Prop :=
  ∀ n, P14413683800701618801.a n = A176152 n

end A176152

/-! ## A176152.P11554234279826629737

`A004277(A001263(n+1))-(2*A176149(n)-A176151(n))`
-/

namespace A176152.P11554234279826629737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001263 (n + 1)).toNat - (2 * A176149 n - A176151 n)

end

end A176152.P11554234279826629737

namespace A176152

/-- `A004277(A001263(n+1))-(2*A176149(n)-A176151(n))` -/
def P11554234279826629737.Spec : Prop :=
  ∀ n, P11554234279826629737.a n = A176152 n

end A176152

/-! ## A176152.P14966722662459786936

`A004277(A001263(n+1))-(A156044(n)+2-A156046(n))`
-/

namespace A176152.P14966722662459786936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001263 (n + 1)).toNat - (A156044 n + (2 - A156046 n))

end

end A176152.P14966722662459786936

namespace A176152

/-- `A004277(A001263(n+1))-(A156044(n)+2-A156046(n))` -/
def P14966722662459786936.Spec : Prop :=
  ∀ n, P14966722662459786936.a n = A176152 n

end A176152

/-!
# A176154: Triangle T(n,k) = Sum_{j=0..k} Stirling1(n, n-j)*binomial(n,j) + Sum_{j=0..n-k} Stirling1(n, n-j)*binomial(n,j), read by rows.

The programs for A176154, there is no canonical definition to state claims against.
-/

/-! ## A176154.P6439641409294425805

`A317274(A003056(n))+A176155(n)`
-/

namespace A176154.P6439641409294425805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317274 (A003056 n).toNat + A176155 n

end

end A176154.P6439641409294425805

/-! ## A176154.P12778949370985678126

`A176153(A061579(n))+A176153(n)`
-/

namespace A176154.P12778949370985678126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176153 (A061579 n).toNat + A176153 n

end

end A176154.P12778949370985678126

/-! ## A176154.P18245094862359688032

`A176153(A114327(n)+n)+A176153(n)`
-/

namespace A176154.P18245094862359688032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176153 (A114327 n + (n : ℤ)).toNat + A176153 n

end

end A176154.P18245094862359688032

/-! ## A176154.P1031107211471061234

`A176153(A057944(n)+A025581(n))+A176153(n)`
-/

namespace A176154.P1031107211471061234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176153 (A057944 n + A025581 n).toNat + A176153 n

end

end A176154.P1031107211471061234

/-! ## A176154.P12266336685985074642

`A176153(A038722(n+2))+A176153(n)`
-/

namespace A176154.P12266336685985074642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176153 (A038722 (n + 2)).toNat + A176153 n

end

end A176154.P12266336685985074642

/-!
# A176155: Regular triangle, T(n, k) = f(n, k) - f(n, 0) + 1, where f(n, k) = Sum_{j=0..k} StirlingS1(n, n-j)*binomial(n,j) + Sum_{j=0..n-k} StirlingS1(n, n-j)*binomial(n, j), read by rows.

The programs for A176155, there is no canonical definition to state claims against.
-/

/-! ## A176155.P6315803086179532695

`A176154(n)-A317274(A003056(n))`
-/

namespace A176155.P6315803086179532695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176154 n - A317274 (A003056 n).toNat

end

end A176155.P6315803086179532695

/-!
# A176156: Regular triangle, T(n, k) = f(n, k) - f(n, 0) + 1, where f(n, k) = Sum_{j=0..k} (-1)^j*StirlingS2(n, n-j)*binomial(n,j) + Sum_{j=0..n-k} (-1)^j*StirlingS2(n, n-j)*binomial(n, j), read by rows.

The programs for A176156, there is no canonical definition to state claims against.
-/

/-! ## A176156.P6219896295722259798

`A176157(n)+A325649(A126770(n))²`
-/

namespace A176156.P6219896295722259798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176157 n + A325649 (A126770 n).toNat ^ 2

end

end A176156.P6219896295722259798

/-! ## A176156.P7323339049158580142

`A318958(A269939(n))+A176157(n)`
-/

namespace A176156.P7323339049158580142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318958 (A269939 n).toNat + A176157 n

end

end A176156.P7323339049158580142

/-! ## A176156.P3528073381243987055

`A080085(A001263(n+1)^A085731(n+3))`
-/

namespace A176156.P3528073381243987055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080085 (SequenceMachineLib.roundAway ((A001263 (n + 1) : ℚ) ^ (A085731 (n + 3) : ℤ))).toNat

end

end A176156.P3528073381243987055

/-!
# A176157: Regular triangle, T(n, k) = f(n, k) - f(n, 0) + 1, where f(n, k) = Sum_{j=0..k} StirlingS2(n, n-j)*binomial(n,j) + Sum_{j=0..n-k} StirlingS2(n, n-j)*binomial(n, j), read by rows.

The programs for A176157, there is no canonical definition to state claims against.
-/

/-! ## A176157.P3595644200193878109

`A176156(n)-A325649(A126770(n))²`
-/

namespace A176157.P3595644200193878109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176156 n - A325649 (A126770 n).toNat ^ 2

end

end A176157.P3595644200193878109

/-! ## A176157.P13020791888836934812

`A000006(A296548(n*A324563(n)))`
-/

namespace A176157.P13020791888836934812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A296548 ((n : ℤ) * A324563 n).toNat).toNat

end

end A176157.P13020791888836934812

/-! ## A176157.P9707615172626800974

`A004396(A157523(n)^A324563(n))`
-/

namespace A176157.P9707615172626800974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway ((A157523 n : ℚ) ^ (A324563 n : ℤ))).toNat

end

end A176157.P9707615172626800974

/-! ## A176157.P11525328803400401083

`A000006(A296548(n)^A324563(n))`
-/

namespace A176157.P11525328803400401083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (SequenceMachineLib.roundAway ((A296548 n : ℚ) ^ (A324563 n : ℤ))).toNat

end

end A176157.P11525328803400401083

/-! ## A176157.P6387669892946110796

`A000006(A296548(n)^A050603(n+1))`
-/

namespace A176157.P6387669892946110796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (SequenceMachineLib.roundAway ((A296548 n : ℚ) ^ (A050603 (n + 1) : ℤ))).toNat

end

end A176157.P6387669892946110796

/-!
# A176158: Triangle read by rows: T(n,m) = (1 + 2 * binomial(n,m))^n for 0 <= m <= n, n >= 0.

The programs for A176158, the canonical program `A176158.P17849435353907312896` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176158 has offset 0).

The definition of A176158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+2*C(row(n), col(n)))^row(n)` (program `A176158.P17849435353907312896`, by `A176158.P17849435353907312896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176158.P17849435353907312896

`(1+2*C(row(n), col(n)))^row(n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176158

/-- `(1+2*C(row(n), col(n)))^row(n)` -/
def P17849435353907312896.Spec : Prop :=
  ∀ n, (P17849435353907312896.a n : ℤ) = A176158 n

theorem P17849435353907312896.correct : P17849435353907312896.Spec := by
  intro n
  simp only [A176158]

end A176158

/-! ## A176158.P5532509396106361184

`(A028326(n)+1)^∑[char[∑[n+1]]]`
-/

namespace A176158.P5532509396106361184
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028326 n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176158.P5532509396106361184

namespace A176158

/-- `(A028326(n)+1)^∑[char[∑[n+1]]]` -/
def P5532509396106361184.Spec : Prop :=
  ∀ n, P5532509396106361184.a n = A176158 n

end A176158

/-! ## A176158.P4866499276746087303

`(A134058(n)+1)^∑[char[∑[n+1]]]`
-/

namespace A176158.P4866499276746087303
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134058 n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176158.P4866499276746087303

namespace A176158

/-- `(A134058(n)+1)^∑[char[∑[n+1]]]` -/
def P4866499276746087303.Spec : Prop :=
  ∀ n, P4866499276746087303.a n = A176158 n

end A176158

/-! ## A176158.P5672265462694472781

`(A109128(n)+2)^∑[char[∑[n+1]]]`
-/

namespace A176158.P5672265462694472781
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109128 n + 2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176158.P5672265462694472781

namespace A176158

/-- `(A109128(n)+2)^∑[char[∑[n+1]]]` -/
def P5672265462694472781.Spec : Prop :=
  ∀ n, P5672265462694472781.a n = A176158 n

end A176158

/-! ## A176158.P10612201933852642883

`(2*A007318(n)+1)^∑[char[∑[n+1]]]`
-/

namespace A176158.P10612201933852642883
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A007318 n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176158.P10612201933852642883

namespace A176158

/-- `(2*A007318(n)+1)^∑[char[∑[n+1]]]` -/
def P10612201933852642883.Spec : Prop :=
  ∀ n, P10612201933852642883.a n = A176158 n

end A176158

/-!
# A176159: Triangle T(n,m) = (1 + binomial(n, m))^n, n>=0, 0<=m<=n.

The programs for A176159, the canonical program `A176159.P15865239639042592610` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176159 has offset 0).

The definition of A176159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+C(row(n), col(n)))^row(n)` (program `A176159.P15865239639042592610`, by `A176159.P15865239639042592610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176159.P15865239639042592610

`(1+C(row(n), col(n)))^row(n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176159

/-- `(1+C(row(n), col(n)))^row(n)` -/
def P15865239639042592610.Spec : Prop :=
  ∀ n, (P15865239639042592610.a n : ℤ) = A176159 n

theorem P15865239639042592610.correct : P15865239639042592610.Spec := by
  intro n
  simp only [A176159]

end A176159

/-! ## A176159.P2348856004182814854

`(A007318(n)+1)^∑[char[∑[n+1]]]`
-/

namespace A176159.P2348856004182814854
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176159.P2348856004182814854

namespace A176159

/-- `(A007318(n)+1)^∑[char[∑[n+1]]]` -/
def P2348856004182814854.Spec : Prop :=
  ∀ n, P2348856004182814854.a n = A176159 n

end A176159

/-! ## A176159.P12265655108381796564

`(A014473(n)+2)^∑[char[∑[n+1]]]`
-/

namespace A176159.P12265655108381796564
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176159.P12265655108381796564

namespace A176159

/-- `(A014473(n)+2)^∑[char[∑[n+1]]]` -/
def P12265655108381796564.Spec : Prop :=
  ∀ n, P12265655108381796564.a n = A176159 n

end A176159

/-! ## A176159.P3424818341665265119

`((A131060(n)+2)/3+1)^∑[char[∑[n+1]]]`
-/

namespace A176159.P3424818341665265119
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A131060 n + 2 : ℚ) / 3 + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176159.P3424818341665265119

namespace A176159

/-- `((A131060(n)+2)/3+1)^∑[char[∑[n+1]]]` -/
def P3424818341665265119.Spec : Prop :=
  ∀ n, P3424818341665265119.a n = (A176159 n : ℚ)

end A176159

/-! ## A176159.P10646191867914674547

`((A131061(n)+3)/4+1)^∑[char[∑[n+1]]]`
-/

namespace A176159.P10646191867914674547
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A131061 n + 3 : ℚ) / 4 + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176159.P10646191867914674547

namespace A176159

/-- `((A131061(n)+3)/4+1)^∑[char[∑[n+1]]]` -/
def P10646191867914674547.Spec : Prop :=
  ∀ n, P10646191867914674547.a n = (A176159 n : ℚ)

end A176159

/-!
# A176160: Triangle read by rows: T(n,k) = (1 + 4*binomial(n, k))^n.

The programs for A176160, the canonical program `A176160.P1540415798575431117` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176160 has offset 0).

The definition of A176160 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+4*C(row(n), col(n)))^row(n)` (program `A176160.P1540415798575431117`, by `A176160.P1540415798575431117.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176160.P1540415798575431117

`(1+4*C(row(n), col(n)))^row(n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176160

/-- `(1+4*C(row(n), col(n)))^row(n)` -/
def P1540415798575431117.Spec : Prop :=
  ∀ n, (P1540415798575431117.a n : ℤ) = A176160 n

theorem P1540415798575431117.correct : P1540415798575431117.Spec := by
  intro n
  simp only [A176160]

end A176160

/-! ## A176160.P15303842787062289385

`(A131061(n)+4)^∑[char[∑[n+1]]]`
-/

namespace A176160.P15303842787062289385
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131061 n + 4) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176160.P15303842787062289385

namespace A176160

/-- `(A131061(n)+4)^∑[char[∑[n+1]]]` -/
def P15303842787062289385.Spec : Prop :=
  ∀ n, P15303842787062289385.a n = A176160 n

end A176160

/-! ## A176160.P8781206818225556840

`(A132200(n)+1)^A003056(n)`
-/

namespace A176160.P8781206818225556840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132200 n + 1 : ℚ) ^ (A003056 n : ℤ)

end

end A176160.P8781206818225556840

namespace A176160

/-- `(A132200(n)+1)^A003056(n)` -/
def P8781206818225556840.Spec : Prop :=
  ∀ n, P8781206818225556840.a n = (A176160 n : ℚ)

end A176160

/-! ## A176160.P5922424892180622

`(4*A007318(n)+1)^A003056(n)`
-/

namespace A176160.P5922424892180622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A007318 n + 1 : ℚ) ^ (A003056 n : ℤ)

end

end A176160.P5922424892180622

namespace A176160

/-- `(4*A007318(n)+1)^A003056(n)` -/
def P5922424892180622.Spec : Prop :=
  ∀ n, P5922424892180622.a n = (A176160 n : ℚ)

end A176160

/-! ## A176160.P2568467211942897403

`A004766(A007318(n))^A003056(n)`
-/

namespace A176160.P2568467211942897403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004766 (A007318 n).toNat : ℚ) ^ (A003056 n : ℤ)

end

end A176160.P2568467211942897403

namespace A176160

/-- `A004766(A007318(n))^A003056(n)` -/
def P2568467211942897403.Spec : Prop :=
  ∀ n, P2568467211942897403.a n = (A176160 n : ℚ)

end A176160

/-! ## A176160.P7936503271319189035

`A223134(A134058(n))^(comp[C(n, 2)]-(n+2))`
-/

namespace A176160.P7936503271319189035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223134 (A134058 n).toNat : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 2 : ℤ) : ℤ)

end

end A176160.P7936503271319189035

namespace A176160

/-- `A223134(A134058(n))^(comp[C(n, 2)]-(n+2))` -/
def P7936503271319189035.Spec : Prop :=
  ∀ n, P7936503271319189035.a n = (A176160 n : ℚ)

end A176160

/-!
# A176161: Triangle read by rows: T(n,k) = (1 + Eulerian(n+1, k))^n.

The programs for A176161, there is no canonical definition to state claims against.
-/

/-! ## A176161.P11219251601809919575

`(A008292(n+1)+1)^∑[char[∑[n+1]]]`
-/

namespace A176161.P11219251601809919575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176161.P11219251601809919575

/-! ## A176161.P17914838261739642199

`((A176204(n)+3)/4+1)^∑[char[∑[n+1]]]`
-/

namespace A176161.P17914838261739642199
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A176204 n + 3 : ℚ) / 4 + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176161.P17914838261739642199

/-! ## A176161.P7190570432986367936

`(ceil(A176200(n)/2)+1)^A003056(n)`
-/

namespace A176161.P7190570432986367936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A176200 n : ℚ) / 2⌉ + 1 : ℚ) ^ (A003056 n : ℤ)

end

end A176161.P7190570432986367936

/-! ## A176161.P16529833944916469282

`(A141686(n+1)/A007318(n)+1)^A003056(n)`
-/

namespace A176161.P16529833944916469282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141686 (n + 1) : ℚ) / (A007318 n : ℚ) + 1) ^ (A003056 n : ℤ)

end

end A176161.P16529833944916469282

/-! ## A176161.P2371576208561040698

`((A141690(n)+A007318(n))/2+1)^A003056(n)`
-/

namespace A176161.P2371576208561040698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141690 n + A007318 n : ℚ) / 2 + 1) ^ (A003056 n : ℤ)

end

end A176161.P2371576208561040698

/-!
# A176162: Primes p such that (p-2)/5 is not a prime number.

The programs for A176162, there is no canonical definition to state claims against.
-/

/-! ## A176162.P14776069487368792180

`eq[A003415(n), A183097(A029939(2*(n+2)))]`
-/

namespace A176162.P14776069487368792180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (A029939 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176162.P14776069487368792180

/-! ## A176162.P5752949632096238421

`A000040(A039216(n+1)%A319902(n+1))`
-/

namespace A176162.P5752949632096238421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A039216 (n + 1)) (A319902 (n + 1))).toNat

end

end A176162.P5752949632096238421

/-! ## A176162.P18104550737770192259

`eq[A086376(A346875(n+1)), A325830(n)]`
-/

namespace A176162.P18104550737770192259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086376 (A346875 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176162.P18104550737770192259

/-! ## A176162.P14500277824899296216

`eq[A097794(n+1), A379127(n+1)]`
-/

namespace A176162.P14500277824899296216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176162.P14500277824899296216

/-! ## A176162.P17150814423195708568

`eq[A102299(n+1), A282460(n)]`
-/

namespace A176162.P17150814423195708568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176162.P17150814423195708568

/-!
# A176163: a(n) = floor(1/(n-1)^2 * a(n-1)^2), with a(1) = 3.

The programs for A176163, there is no canonical definition to state claims against.
-/

/-! ## A176163.P11237071266322213233

`(n-1)^a(n-1)²` with `a(0)=3, a(1)=9, a(2)=20, a(3)=44, a(4)=121`
-/

namespace A176163.P11237071266322213233
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 9, 20, 44, 121] fun n a =>
  ((n : ℤ) - 1 : ℝ) ^ (a (n - 1) ^ 2)

end

end A176163.P11237071266322213233

/-!
# A176164: Primes p such that (p-2)/7 is not a prime number.

The programs for A176164, there is no canonical definition to state claims against.
-/

/-! ## A176164.P17682119082628159899

`eq[A003415(n), A109004(A215304(2*(n+2)))]`
-/

namespace A176164.P17682119082628159899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (A215304 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176164.P17682119082628159899

/-! ## A176164.P4517205683847261169

`A133956(A347520(n+1))`
-/

namespace A176164.P4517205683847261169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133956 (A347520 (n + 1)).toNat

end

end A176164.P4517205683847261169

/-! ## A176164.P9939972338173253957

`A008578(A099649(n+1)%A109098(n+1))`
-/

namespace A176164.P9939972338173253957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.tmod (A099649 (n + 1)) (A109098 (n + 1))).toNat

end

end A176164.P9939972338173253957

/-!
# A176165: Primes p such that (p-2)/11 is not a prime number.

The programs for A176165, there is no canonical definition to state claims against.
-/

/-! ## A176165.P14389097128135064550

`∪[A153591(n+1), A156312(n+1)]`
-/

namespace A176165.P14389097128135064550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176165.P14389097128135064550

/-! ## A176165.P10438117453371485824

`A000040(lt[A103340(n+3), A127797(3*n)])`
-/

namespace A176165.P10438117453371485824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103340 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127797 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176165.P10438117453371485824

/-! ## A176165.P3813377154407175183

`A000040(lt[A058013(n+1), A280107(n+5)]+1)`
-/

namespace A176165.P3813377154407175183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280107 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A176165.P3813377154407175183

/-! ## A176165.P12902349352322385671

`A000040(lt[A031241(n+3), A329142(n+1)])`
-/

namespace A176165.P12902349352322385671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031241 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176165.P12902349352322385671

/-! ## A176165.P2111586744727675602

`∩[A003172(n+1), A363727(n+1)]`
-/

namespace A176165.P2111586744727675602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176165.P2111586744727675602

/-!
# A176166: a(n) is the maximum exponent in the prime factorization of the n-th triangular number.

The programs for A176166, the canonical program `A176166.P6692841945889221809` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176166 has offset 1).

The definition of A176166 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176166.P6692841945889221809

`A051903(A000217(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176166

/-- `A051903(A000217(n+1))` -/
def P6692841945889221809.Spec : Prop :=
  ∀ n, P6692841945889221809.a n = A176166 (n + 1)

theorem P6692841945889221809.correct : P6692841945889221809.Spec := by
  intro n
  simp only [A176166, Nat.add_sub_cancel]

end A176166

/-! ## A176166.P566815516184770805

`val(A278253(n+1), 2)`
-/

namespace A176166.P566815516184770805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278253 (n + 1)).toNat 2

end

end A176166.P566815516184770805

namespace A176166

/-- `val(A278253(n+1), 2)` -/
def P566815516184770805.Spec : Prop :=
  ∀ n, (P566815516184770805.a n : ℤ) = A176166 (n + 1)

end A176166

/-! ## A176166.P15071982212983083537

`A051903(∑[n+1])`
-/

namespace A176166.P15071982212983083537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176166.P15071982212983083537

namespace A176166

/-- `A051903(∑[n+1])` -/
def P15071982212983083537.Spec : Prop :=
  ∀ n, P15071982212983083537.a n = A176166 (n + 1)

end A176166

/-! ## A176166.P14056191263446445212

`A051903(A008805(2*n+1))%11`
-/

namespace A176166.P14056191263446445212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (A008805 (2 * n + 1)).toNat) 11

end

end A176166.P14056191263446445212

namespace A176166

/-- `A051903(A008805(2*n+1))%11` -/
def P14056191263446445212.Spec : Prop :=
  ∀ n, P14056191263446445212.a n = A176166 (n + 1)

end A176166

/-! ## A176166.P16265269072375153108

`A329885(∑[n+1])`
-/

namespace A176166.P16265269072375153108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329885 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176166.P16265269072375153108

namespace A176166

/-- `A329885(∑[n+1])` -/
def P16265269072375153108.Spec : Prop :=
  ∀ n, P16265269072375153108.a n = A176166 (n + 1)

end A176166

/-! ## A176166.P6882065053990333675

`A007814(A278253(n+1))`
-/

namespace A176166.P6882065053990333675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A278253 (n + 1)).toNat

end

end A176166.P6882065053990333675

namespace A176166

/-- `A007814(A278253(n+1))` -/
def P6882065053990333675.Spec : Prop :=
  ∀ n, P6882065053990333675.a n = A176166 (n + 1)

end A176166

/-! ## A176166.P7812606504994959193

`A157754(∑[n+1])`
-/

namespace A176166.P7812606504994959193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176166.P7812606504994959193

namespace A176166

/-- `A157754(∑[n+1])` -/
def P7812606504994959193.Spec : Prop :=
  ∀ n, P7812606504994959193.a n = A176166 (n + 1)

end A176166

/-! ## A176166.P15002797897555274010

`A067132(∑[n+1])-1`
-/

namespace A176166.P15002797897555274010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A176166.P15002797897555274010

namespace A176166

/-- `A067132(∑[n+1])-1` -/
def P15002797897555274010.Spec : Prop :=
  ∀ n, P15002797897555274010.a n = A176166 (n + 1)

end A176166

/-! ## A176166.P12445262644131525915

`A007814(A046523(A000217(n)+n+1))`
-/

namespace A176166.P12445262644131525915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (A000217 n + (n + 1 : ℤ)).toNat).toNat

end

end A176166.P12445262644131525915

namespace A176166

/-- `A007814(A046523(A000217(n)+n+1))` -/
def P12445262644131525915.Spec : Prop :=
  ∀ n, P12445262644131525915.a n = A176166 (n + 1)

end A176166

/-!
# A176167: First of a triple of consecutive integers, each the product of 4 distinct primes.

The programs for A176167, there is no canonical definition to state claims against.
-/

/-! ## A176167.P13973634055389348639

`A248203(n+1)-1`
-/

namespace A176167.P13973634055389348639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248203 (n + 1) - 1

end

end A176167.P13973634055389348639

/-! ## A176167.P11463097073065447686

`xor(3, A248203(A000027(n+1)))`
-/

namespace A176167.P11463097073065447686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A248203 (A000027 (n + 1)).toNat)

end

end A176167.P11463097073065447686

/-! ## A176167.P7947671150063155551

`xor(A038712(4*n+2), A248203(n+1))`
-/

namespace A176167.P7947671150063155551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038712 (4 * n + 2)) (A248203 (n + 1))

end

end A176167.P7947671150063155551

/-! ## A176167.P872314334875058426

`xor(3, A248203(n+1)%A259349(n+1))`
-/

namespace A176167.P872314334875058426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (Int.tmod (A248203 (n + 1)) (A259349 (n + 1)))

end

end A176167.P872314334875058426

/-! ## A176167.P16213161178528843996

`xor(A001359(gcd(n, n+1)), A248203(n+1))`
-/

namespace A176167.P16213161178528843996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001359 (Nat.gcd n (n + 1))) (A248203 (n + 1))

end

end A176167.P16213161178528843996

/-! ## A176167.P1570288968442701880

`A321800(A332550(n))+A248203(n+1)`
-/

namespace A176167.P1570288968442701880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A332550 n).toNat + A248203 (n + 1)

end

end A176167.P1570288968442701880

/-! ## A176167.P13584466436057010517

`xor(A001221(A007304(n+1)), A248203(n+1))`
-/

namespace A176167.P13584466436057010517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A007304 (n + 1)).toNat) (A248203 (n + 1))

end

end A176167.P13584466436057010517

/-! ## A176167.P13899028030933182151

`xor(A001222(A066509(n+1)), A248203(n+1))`
-/

namespace A176167.P13899028030933182151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A066509 (n + 1)).toNat) (A248203 (n + 1))

end

end A176167.P13899028030933182151

/-! ## A176167.P12184140388720508160

`xor(A001221(A215217(n+1)), A248203(n+1))`
-/

namespace A176167.P12184140388720508160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A215217 (n + 1)).toNat) (A248203 (n + 1))

end

end A176167.P12184140388720508160

/-! ## A176167.P13574699685308478155

`xor(A001221(A242606(n+1)), A248203(n+1))`
-/

namespace A176167.P13574699685308478155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A242606 (n + 1)).toNat) (A248203 (n + 1))

end

end A176167.P13574699685308478155

/-! ## A176167.P5135893487356484786

`xor(A001222(A248202(n+1)), A248203(n+1))`
-/

namespace A176167.P5135893487356484786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A248202 (n + 1)).toNat) (A248203 (n + 1))

end

end A176167.P5135893487356484786

/-! ## A176167.P2703748435005062878

`xor(A001222(A173969(n+1)), A248203(n+1))`
-/

namespace A176167.P2703748435005062878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A173969 (n + 1)).toNat) (A248203 (n + 1))

end

end A176167.P2703748435005062878

/-!
# A176169: Binary encoding of shortest and then lexicographically earliest series s(1..A176168(n)), with bits left to right indicating add (1) or subtract (0), to reproduce the series.

The programs for A176169, there is no canonical definition to state claims against.
-/

/-! ## A176169.P15850025544043852980

`A003195(3*(n+1))%A003238(A003230(n))`
-/

namespace A176169.P15850025544043852980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003195 (3 * (n + 1))) (A003238 (A003230 n).toNat)

end

end A176169.P15850025544043852980

/-!
# A176170: Smallest prime-factor of n-th product of 4 distinct primes.

The programs for A176170, there is no canonical definition to state claims against.
-/

/-! ## A176170.P16758026756888870105

`A020639(A046386(n+1))`
-/

namespace A176170.P16758026756888870105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046386 (n + 1)).toNat

end

end A176170.P16758026756888870105

/-! ## A176170.P3235234059365183981

`A020639(sqrt(A190377(n+1)))`
-/

namespace A176170.P3235234059365183981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A190377 (n + 1) : ℝ))).toNat

end

end A176170.P3235234059365183981

/-! ## A176170.P2880360006964962622

`A020639(A014613(A253919(n+1)))`
-/

namespace A176170.P2880360006964962622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014613 (A253919 (n + 1)).toNat).toNat

end

end A176170.P2880360006964962622

/-! ## A176170.P2864202289591985619

`A028233(A046386(n+1))%A167499(n)`
-/

namespace A176170.P2864202289591985619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028233 (A046386 (n + 1)).toNat) (A167499 n)

end

end A176170.P2864202289591985619

/-! ## A176170.P17946155170834270454

`A014673(2*A046386(n+1))`
-/

namespace A176170.P17946155170834270454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A046386 (n + 1)).toNat

end

end A176170.P17946155170834270454

/-! ## A176170.P5809124108675494527

`A014673(2*sqrt(A190377(n+1)))`
-/

namespace A176170.P5809124108675494527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (SequenceMachineLib.roundAway (2 * Real.sqrt (A190377 (n + 1) : ℝ))).toNat

end

end A176170.P5809124108675494527

/-! ## A176170.P12226360588415526141

`6/A001511(2*A046386(n+1))`
-/

namespace A176170.P12226360588415526141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A001511 (2 * A046386 (n + 1)).toNat : ℚ)

end

end A176170.P12226360588415526141

/-! ## A176170.P17139505068974041469

`A014673(A046386(n+1)+A046386(n+1))`
-/

namespace A176170.P17139505068974041469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A046386 (n + 1) + A046386 (n + 1)).toNat

end

end A176170.P17139505068974041469

/-! ## A176170.P2284459903078346304

`and(A002260(∑[n]+1), A190377(n+1))+2`
-/

namespace A176170.P2284459903078346304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (A190377 (n + 1)) + 2

end

end A176170.P2284459903078346304

/-!
# A176171: Second prime-factor of n-th product of 4 distinct primes.

The programs for A176171, there is no canonical definition to state claims against.
-/

/-! ## A176171.P2480019139692235808

`A014673(A046386(n+1))`
-/

namespace A176171.P2480019139692235808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A046386 (n + 1)).toNat

end

end A176171.P2480019139692235808

/-! ## A176171.P2050947447344489407

`A014673(sqrt(A190377(n+1)))`
-/

namespace A176171.P2050947447344489407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (SequenceMachineLib.roundAway (Real.sqrt (A190377 (n + 1) : ℝ))).toNat

end

end A176171.P2050947447344489407

/-! ## A176171.P6095576132889085125

`A079879(sqrt(A190377(n+1)))`
-/

namespace A176171.P6095576132889085125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (SequenceMachineLib.roundAway (Real.sqrt (A190377 (n + 1) : ℝ))).toNat

end

end A176171.P6095576132889085125

/-! ## A176171.P2432520372122879664

`A119288(sqrt(A190377(n+1)))`
-/

namespace A176171.P2432520372122879664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (SequenceMachineLib.roundAway (Real.sqrt (A190377 (n + 1) : ℝ))).toNat

end

end A176171.P2432520372122879664

/-! ## A176171.P1148467557378503378

`A292269(sqrt(A190377(n+1)))`
-/

namespace A176171.P1148467557378503378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (SequenceMachineLib.roundAway (Real.sqrt (A190377 (n + 1) : ℝ))).toNat

end

end A176171.P1148467557378503378

/-! ## A176171.P12080423925261843454

`A073753(2*A046386(n+1))`
-/

namespace A176171.P12080423925261843454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073753 (2 * A046386 (n + 1)).toNat

end

end A176171.P12080423925261843454

/-! ## A176171.P3144784266214251293

`A079879(2*A046386(n+1))`
-/

namespace A176171.P3144784266214251293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (2 * A046386 (n + 1)).toNat

end

end A176171.P3144784266214251293

/-! ## A176171.P3749195119330876073

`A115561(2*A046386(n+1))`
-/

namespace A176171.P3749195119330876073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (2 * A046386 (n + 1)).toNat

end

end A176171.P3749195119330876073

/-! ## A176171.P1379071221039643694

`A273288(2*A046386(n+1))`
-/

namespace A176171.P1379071221039643694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273288 (2 * A046386 (n + 1)).toNat

end

end A176171.P1379071221039643694

/-! ## A176171.P10744658074186741580

`A020639(A046386(n+1)/A176170(n+1))`
-/

namespace A176171.P10744658074186741580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A046386 (n + 1) : ℚ) / (A176170 (n + 1) : ℚ))).toNat

end

end A176171.P10744658074186741580

/-! ## A176171.P11848943434055841206

`A020639(A046386(n+1)/A020639(A046386(n+1)))`
-/

namespace A176171.P11848943434055841206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A046386 (n + 1) : ℚ) / (A020639 (A046386 (n + 1)).toNat : ℚ))).toNat

end

end A176171.P11848943434055841206

/-!
# A176172: 3rd prime-factor of n-th product of 4 distinct primes.

The programs for A176172, the canonical program `A176172.P13651353445178749655` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176172 has offset 1).

The definition of A176172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176172.P13651353445178749655

`A006530(A046386(n+1)/A006530(A046386(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A176172

/-- `A006530(A046386(n+1)/A006530(A046386(n+1)))` -/
def P13651353445178749655.Spec : Prop :=
  ∀ n, P13651353445178749655.a n = A176172 (n + 1)

theorem P13651353445178749655.correct : P13651353445178749655.Spec := by
  intro n
  simp only [A176172, Nat.add_sub_cancel]

end A176172

/-! ## A176172.P8997920972789852833

`A076820(A046386(n+1))`
-/

namespace A176172.P8997920972789852833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A046386 (n + 1)).toNat

end

end A176172.P8997920972789852833

namespace A176172

/-- `A076820(A046386(n+1))` -/
def P8997920972789852833.Spec : Prop :=
  ∀ n, P8997920972789852833.a n = A176172 (n + 1)

end A176172

/-! ## A176172.P15454778778501887916

`A087039(A046386(n+1))%A016827(n)`
-/

namespace A176172.P15454778778501887916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087039 (A046386 (n + 1)).toNat) (A016827 n)

end

end A176172.P15454778778501887916

namespace A176172

/-- `A087039(A046386(n+1))%A016827(n)` -/
def P15454778778501887916.Spec : Prop :=
  ∀ n, P15454778778501887916.a n = A176172 (n + 1)

end A176172

/-! ## A176172.P5642780597681515040

`A115561(2*A046386(n+1)-A046386(n+1))`
-/

namespace A176172.P5642780597681515040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (2 * A046386 (n + 1) - A046386 (n + 1)).toNat

end

end A176172.P5642780597681515040

namespace A176172

/-- `A115561(2*A046386(n+1)-A046386(n+1))` -/
def P5642780597681515040.Spec : Prop :=
  ∀ n, P5642780597681515040.a n = A176172 (n + 1)

end A176172

/-! ## A176172.P5956255820159835899

`A115561(A046386(n+1))*A115561(A115561(n+1))`
-/

namespace A176172.P5956255820159835899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (A046386 (n + 1)).toNat * A115561 (A115561 (n + 1)).toNat

end

end A176172.P5956255820159835899

namespace A176172

/-- `A115561(A046386(n+1))*A115561(A115561(n+1))` -/
def P5956255820159835899.Spec : Prop :=
  ∀ n, P5956255820159835899.a n = A176172 (n + 1)

end A176172

/-! ## A176172.P5790988200266164839

`A115561(A046386(n+1))/A115561(A115561(n+1)²)`
-/

namespace A176172.P5790988200266164839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115561 (A046386 (n + 1)).toNat : ℚ) / (A115561 (A115561 (n + 1) ^ 2).toNat : ℚ)

end

end A176172.P5790988200266164839

namespace A176172

/-- `A115561(A046386(n+1))/A115561(A115561(n+1)²)` -/
def P5790988200266164839.Spec : Prop :=
  ∀ n, P5790988200266164839.a n = (A176172 (n + 1) : ℚ)

end A176172

/-! ## A176172.P4754422939112945661

`A087039(A043542(n+1)*A046386(n+1))`
-/

namespace A176172.P4754422939112945661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A043542 (n + 1) * A046386 (n + 1)).toNat

end

end A176172.P4754422939112945661

namespace A176172

/-- `A087039(A043542(n+1)*A046386(n+1))` -/
def P4754422939112945661.Spec : Prop :=
  ∀ n, P4754422939112945661.a n = A176172 (n + 1)

end A176172

/-! ## A176172.P12122864573304110305

`A087039(2*A046386(n+1))`
-/

namespace A176172.P12122864573304110305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (2 * A046386 (n + 1)).toNat

end

end A176172.P12122864573304110305

namespace A176172

/-- `A087039(2*A046386(n+1))` -/
def P12122864573304110305.Spec : Prop :=
  ∀ n, P12122864573304110305.a n = A176172 (n + 1)

end A176172

/-!
# A176173: 4th|largest prime-factor of n-th product of 4 distinct primes.

The programs for A176173, there is no canonical definition to state claims against.
-/

/-! ## A176173.P9763900154795117407

`A002034(A046386(n+1))`
-/

namespace A176173.P9763900154795117407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A046386 (n + 1)).toNat

end

end A176173.P9763900154795117407

/-! ## A176173.P4482213206685939711

`A002034(sqrt(A190377(n+1)))`
-/

namespace A176173.P4482213206685939711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (SequenceMachineLib.roundAway (Real.sqrt (A190377 (n + 1) : ℝ))).toNat

end

end A176173.P4482213206685939711

/-! ## A176173.P14601874319606197127

`A006530(sqrt(A190377(n+1)))`
-/

namespace A176173.P14601874319606197127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A190377 (n + 1) : ℝ))).toNat

end

end A176173.P14601874319606197127

/-! ## A176173.P18435830108020342999

`A085392(sqrt(A190377(n+1)))`
-/

namespace A176173.P18435830108020342999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (SequenceMachineLib.roundAway (Real.sqrt (A190377 (n + 1) : ℝ))).toNat

end

end A176173.P18435830108020342999

/-! ## A176173.P1347393951432635045

`A006530(2*A046386(n+1))`
-/

namespace A176173.P1347393951432635045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A046386 (n + 1)).toNat

end

end A176173.P1347393951432635045

/-! ## A176173.P13807818707838351257

`A006530(root(A190377(n+1), 2))`
-/

namespace A176173.P13807818707838351257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A190377 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A176173.P13807818707838351257

/-! ## A176173.P5057179945249607170

`A006530(A046386(n+1)/A176170(n+1))`
-/

namespace A176173.P5057179945249607170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A046386 (n + 1) : ℚ) / (A176170 (n + 1) : ℚ))).toNat

end

end A176173.P5057179945249607170

/-!
# A176174: Starting with 1, multiply the n-th term by 10, then subtract the sum of all terms up to and including the n-th, to make the (n+1)th term.

The programs for A176174, the canonical program `A176174.P8282517703020926126` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176174 has offset 1).

The definition of A176174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176174.P8282517703020926126

`10*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176174

/-- `10*a(n-1)-10*a(n-2)` -/
def P8282517703020926126.Spec : Prop :=
  ∀ n, P8282517703020926126.a n = A176174 (n + 1)

theorem P8282517703020926126.correct : P8282517703020926126.Spec := by
  intro n
  simp only [A176174, Nat.add_sub_cancel]

end A176174

/-! ## A176174.P6249075355584808179

`ogf((1-x)/(1-10x+10x^2))`
-/

namespace A176174.P6249075355584808179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -10, 10] n

end

end A176174.P6249075355584808179

namespace A176174

/-- `ogf((1-x)/(1-10x+10x^2))` -/
def P6249075355584808179.Spec : Prop :=
  ∀ n, P6249075355584808179.a n = A176174 (n + 1)

end A176174

/-! ## A176174.P15207093690796944021

`10*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=9`
-/

namespace A176174.P15207093690796944021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  10 * (a (n - 1) - a (n - 2))

end

end A176174.P15207093690796944021

namespace A176174

/-- `10*(a(n-1)-a(n-2))` -/
def P15207093690796944021.Spec : Prop :=
  ∀ n, P15207093690796944021.a n = A176174 (n + 1)

theorem P15207093690796944021.correct : P15207093690796944021.Spec := by
  intro n
  simp only [A176174, Nat.add_sub_cancel, A176174.P15207093690796944021.a, A176174.P8282517703020926126.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A176174

/-! ## A176174.P4999207899449445004

`A057086(n+1)/10`
-/

namespace A176174.P4999207899449445004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057086 (n + 1) : ℚ) / 10

end

end A176174.P4999207899449445004

namespace A176174

/-- `A057086(n+1)/10` -/
def P4999207899449445004.Spec : Prop :=
  ∀ n, P4999207899449445004.a n = (A176174 (n + 1) : ℚ)

end A176174

/-! ## A176174.P3682574928671645099

`a(n-1)*ratio[A057086(n)]` with `a(0)=1`
-/

namespace A176174.P3682574928671645099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057086 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A176174.P3682574928671645099

namespace A176174

/-- `a(n-1)*ratio[A057086(n)]` -/
def P3682574928671645099.Spec : Prop :=
  ∀ n, P3682574928671645099.a n = (A176174 (n + 1) : ℚ)

end A176174

/-! ## A176174.P13090769296084899433

`record[A057086(A328397(n))/10]`
-/

namespace A176174.P13090769296084899433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057086 (A328397 n).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176174.P13090769296084899433

namespace A176174

/-- `record[A057086(A328397(n))/10]` -/
def P13090769296084899433.Spec : Prop :=
  ∀ n, P13090769296084899433.a n = (A176174 (n + 1) : ℚ)

end A176174

/-! ## A176174.P3564661775960015559

`A206819(∑[n+1])/10`
-/

namespace A176174.P3564661775960015559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206819 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 10

end

end A176174.P3564661775960015559

namespace A176174

/-- `A206819(∑[n+1])/10` -/
def P3564661775960015559.Spec : Prop :=
  ∀ n, P3564661775960015559.a n = (A176174 (n + 1) : ℚ)

end A176174

/-!
# A176175: Numbers k such that (2^(k-1) mod k) = number of prime divisors of k (counted with multiplicity).

The programs for A176175, there is no canonical definition to state claims against.
-/

/-! ## A176175.P331718936640580136

`eq[n, xor(n-1, A074206(n))]`
-/

namespace A176175.P331718936640580136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (A074206 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176175.P331718936640580136

/-! ## A176175.P15014446192888575496

`eq[xor(1, n), A318678(n+1)]+1`
-/

namespace A176175.P15014446192888575496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176175.P15014446192888575496

/-! ## A176175.P13771582928039307402

`eq[xor(n, n+1), A002033(n)]+1`
-/

namespace A176175.P13771582928039307402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176175.P13771582928039307402

/-! ## A176175.P6793714118808909128

`eq[1, A104725(n)-((-1)^n+1)]`
-/

namespace A176175.P6793714118808909128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n - ((-1) ^ n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176175.P6793714118808909128

/-! ## A176175.P9589141444568784763

`A085118(n+1)-floor(1/(n+1))`
-/

namespace A176175.P9589141444568784763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1) - ⌊1 / (n + 1 : ℚ)⌋

end

end A176175.P9589141444568784763

/-! ## A176175.P15282420809869817336

`A181440(A085118(n+1))`
-/

namespace A176175.P15282420809869817336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A085118 (n + 1)).toNat

end

end A176175.P15282420809869817336

/-! ## A176175.P4164114278661482938

`eq[A010167(n), A074206(n)]`
-/

namespace A176175.P4164114278661482938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010167 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176175.P4164114278661482938

/-! ## A176175.P17927378856714793931

`eq[A040204(n), A074206(n)]`
-/

namespace A176175.P17927378856714793931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176175.P17927378856714793931

/-! ## A176175.P8201671356079523767

`eq[A040372(n), A074206(n)]`
-/

namespace A176175.P8201671356079523767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176175.P8201671356079523767

/-! ## A176175.P8575642240736136719

`eq[A040411(n), A074206(n)]`
-/

namespace A176175.P8575642240736136719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040411 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176175.P8575642240736136719

/-!
# A176176: Numbers k such that 2^(k-1) == 4^(k-1) (mod k).

The programs for A176176, the canonical program `A176176.P17500551997501977256` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176176 has offset 1).

The definition of A176176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176176.P8025000994273627570

`eq[0, n%A007733(n+1)]+1`
-/

namespace A176176.P8025000994273627570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A007733 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176176.P8025000994273627570

namespace A176176

/-- `eq[0, n%A007733(n+1)]+1` -/
def P8025000994273627570.Spec : Prop :=
  ∀ n, (P8025000994273627570.a n : ℤ) = A176176 (n + 1)

end A176176

/-! ## A176176.P16062752729382472895

`record[A160467(n+1)*A214606(n+1)]`
-/

namespace A176176.P16062752729382472895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) * A214606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176176.P16062752729382472895

namespace A176176

/-- `record[A160467(n+1)*A214606(n+1)]` -/
def P16062752729382472895.Spec : Prop :=
  ∀ n, P16062752729382472895.a n = A176176 (n + 1)

end A176176

/-! ## A176176.P6205916930670555112

`record[A214606(n+1)*A292589(n+1)]`
-/

namespace A176176.P6205916930670555112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (n + 1) * A292589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176176.P6205916930670555112

namespace A176176

/-- `record[A214606(n+1)*A292589(n+1)]` -/
def P6205916930670555112.Spec : Prop :=
  ∀ n, P6205916930670555112.a n = A176176 (n + 1)

end A176176

/-! ## A176176.P4543816514185349672

`record[(n+1)/A000120(A159353(n+1))]`
-/

namespace A176176.P4543816514185349672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000120 (A159353 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176176.P4543816514185349672

namespace A176176

/-- `record[(n+1)/A000120(A159353(n+1))]` -/
def P4543816514185349672.Spec : Prop :=
  ∀ n, P4543816514185349672.a n = (A176176 (n + 1) : ℚ)

end A176176

/-! ## A176176.P10790685830436956708

`record[lcm(A006519(n+1), A214606(n+1))]`
-/

namespace A176176.P10790685830436956708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 1)) (A214606 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176176.P10790685830436956708

namespace A176176

/-- `record[lcm(A006519(n+1), A214606(n+1))]` -/
def P10790685830436956708.Spec : Prop :=
  ∀ n, (P10790685830436956708.a n : ℤ) = A176176 (n + 1)

end A176176

/-! ## A176176.P17500551997501977256

`eq[A062173(n+1), A062175(n+1)]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176176

/-- `eq[A062173(n+1), A062175(n+1)]+1` -/
def P17500551997501977256.Spec : Prop :=
  ∀ n, (P17500551997501977256.a n : ℤ) = A176176 (n + 1)

theorem P17500551997501977256.correct : P17500551997501977256.Spec := by
  intro n
  simp only [A176176, Nat.add_sub_cancel]

end A176176

/-! ## A176176.P15431118155988412996

`eq[A159353(n+1), A160467(n+1)]+1`
-/

namespace A176176.P15431118155988412996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176176.P15431118155988412996

namespace A176176

/-- `eq[A159353(n+1), A160467(n+1)]+1` -/
def P15431118155988412996.Spec : Prop :=
  ∀ n, (P15431118155988412996.a n : ℤ) = A176176 (n + 1)

end A176176

/-! ## A176176.P259824585293821452

`record[A006519(A159353(n+1))*A214606(n+1)]`
-/

namespace A176176.P259824585293821452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A159353 (n + 1)).toNat * A214606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176176.P259824585293821452

namespace A176176

/-- `record[A006519(A159353(n+1))*A214606(n+1)]` -/
def P259824585293821452.Spec : Prop :=
  ∀ n, P259824585293821452.a n = A176176 (n + 1)

end A176176

/-! ## A176176.P14182552836974792036

`∪[A000040(n+1), A176817(n+1)]`
-/

namespace A176176.P14182552836974792036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176176.P14182552836974792036

namespace A176176

/-- `∪[A000040(n+1), A176817(n+1)]` -/
def P14182552836974792036.Spec : Prop :=
  ∀ n, (P14182552836974792036.a n : ℤ) = A176176 (n + 1)

end A176176

/-! ## A176176.P13678149185395404208

`∪[A008578(n+1), A176817(n+1)]`
-/

namespace A176176.P13678149185395404208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176176.P13678149185395404208

namespace A176176

/-- `∪[A008578(n+1), A176817(n+1)]` -/
def P13678149185395404208.Spec : Prop :=
  ∀ n, (P13678149185395404208.a n : ℤ) = A176176 (n + 1)

end A176176

/-! ## A176176.P9655895625845370274

`∪[A015919(n+1), A176817(n+1)]`
-/

namespace A176176.P9655895625845370274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176176.P9655895625845370274

namespace A176176

/-- `∪[A015919(n+1), A176817(n+1)]` -/
def P9655895625845370274.Spec : Prop :=
  ∀ n, (P9655895625845370274.a n : ℤ) = A176176 (n + 1)

end A176176

/-! ## A176176.P7853008293915893697

`∪[A046022(n+1), A176817(n+1)]`
-/

namespace A176176.P7853008293915893697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176176.P7853008293915893697

namespace A176176

/-- `∪[A046022(n+1), A176817(n+1)]` -/
def P7853008293915893697.Spec : Prop :=
  ∀ n, (P7853008293915893697.a n : ℤ) = A176176 (n + 1)

end A176176

/-! ## A176176.P1002523746948721037

`∪[A174090(n+1), A176817(n+1)]`
-/

namespace A176176.P1002523746948721037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176176.P1002523746948721037

namespace A176176

/-- `∪[A174090(n+1), A176817(n+1)]` -/
def P1002523746948721037.Spec : Prop :=
  ∀ n, (P1002523746948721037.a n : ℤ) = A176176 (n + 1)

end A176176

/-!
# A176177: a(n) = 2*n*3^(n-1) - (3^n-1)/2.

The programs for A176177, the canonical program `A176177.P4580230579269476160` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176177 has offset 0).

The definition of A176177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176177.P4580230579269476160

`2*n*3^(n-1)-(3^n-1)/2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A176177

/-- `2*n*3^(n-1)-(3^n-1)/2` -/
def P4580230579269476160.Spec : Prop :=
  ∀ n, P4580230579269476160.a n = (A176177 n : ℚ)

end A176177

/-! ## A176177.P2934968640531046574

`∑[ogf((x+x^2)/(1-6x+9x^2))]`
-/

namespace A176177.P2934968640531046574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -6, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176177.P2934968640531046574

namespace A176177

/-- `∑[ogf((x+x^2)/(1-6x+9x^2))]` -/
def P2934968640531046574.Spec : Prop :=
  ∀ n, P2934968640531046574.a n = A176177 n

end A176177

/-! ## A176177.P14767823515428236586

`∑[3*a(n-1)+4*3^(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A176177.P14767823515428236586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1) + 4 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176177.P14767823515428236586

namespace A176177

/-- `∑[3*a(n-1)+4*3^(n-2)]` -/
def P14767823515428236586.Spec : Prop :=
  ∀ n, P14767823515428236586.a n = (A176177 n : ℚ)

end A176177

/-! ## A176177.P16408107906015112123

`∑[A120926(n+1)-3^n]`
-/

namespace A176177.P16408107906015112123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120926 (n + 1) - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176177.P16408107906015112123

namespace A176177

/-- `∑[A120926(n+1)-3^n]` -/
def P16408107906015112123.Spec : Prop :=
  ∀ n, P16408107906015112123.a n = A176177 n

end A176177

/-! ## A176177.P15800180485102996889

`∑[A052156(n)+3*a(n-1)]` with `a(0)=0`
-/

namespace A176177.P15800180485102996889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A052156 n + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176177.P15800180485102996889

namespace A176177

/-- `∑[A052156(n)+3*a(n-1)]` -/
def P15800180485102996889.Spec : Prop :=
  ∀ n, P15800180485102996889.a n = A176177 n

end A176177

/-! ## A176177.P16112654700617287243

`∑[A027471(n+1)+A027471(A028310(n))]`
-/

namespace A176177.P16112654700617287243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + A027471 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176177.P16112654700617287243

namespace A176177

/-- `∑[A027471(n+1)+A027471(A028310(n))]` -/
def P16112654700617287243.Spec : Prop :=
  ∀ n, P16112654700617287243.a n = A176177 n

end A176177

/-! ## A176177.P4061284533169665111

`abs(A006234(n+3)-∑[A027261(n)])`
-/

namespace A176177.P4061284533169665111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006234 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A176177.P4061284533169665111

namespace A176177

/-- `abs(A006234(n+3)-∑[A027261(n)])` -/
def P4061284533169665111.Spec : Prop :=
  ∀ n, P4061284533169665111.a n = A176177 n

end A176177

/-! ## A176177.P11129431195875750586

`Δ[A121365(n+1)+A121365(n+2)]`
-/

namespace A176177.P11129431195875750586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121365 (n + 1) + A121365 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176177.P11129431195875750586

namespace A176177

/-- `Δ[A121365(n+1)+A121365(n+2)]` -/
def P11129431195875750586.Spec : Prop :=
  ∀ n, P11129431195875750586.a n = A176177 n

end A176177

/-! ## A176177.P2010883671285504458

`∑[A203230(2*n+1)]%A203230(2*n+1)`
-/

namespace A176177.P2010883671285504458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203230 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A203230 (2 * n + 1))

end

end A176177.P2010883671285504458

namespace A176177

/-- `∑[A203230(2*n+1)]%A203230(2*n+1)` -/
def P2010883671285504458.Spec : Prop :=
  ∀ n, P2010883671285504458.a n = A176177 n

end A176177

/-! ## A176177.P17982681657956604079

`∑[A086951(n)/A028310(n)]`
-/

namespace A176177.P17982681657956604079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086951 n : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176177.P17982681657956604079

namespace A176177

/-- `∑[A086951(n)/A028310(n)]` -/
def P17982681657956604079.Spec : Prop :=
  ∀ n, P17982681657956604079.a n = (A176177 n : ℚ)

end A176177

/-! ## A176177.P16185213214082181694

`∑[A086951(n)/(A000007(n)+n)]`
-/

namespace A176177.P16185213214082181694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086951 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176177.P16185213214082181694

namespace A176177

/-- `∑[A086951(n)/(A000007(n)+n)]` -/
def P16185213214082181694.Spec : Prop :=
  ∀ n, P16185213214082181694.a n = (A176177 n : ℚ)

end A176177

/-!
# A176178: Concatenation of perfect numbers written in base 2.

The programs for A176178, there is no canonical definition to state claims against.
-/

/-! ## A176178.P16284650821224401590

`∑[A139246(n+1)]%2`
-/

namespace A176178.P16284650821224401590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A176178.P16284650821224401590

/-! ## A176178.P3991465373564249153

`and(1, -∑[A139246(-xor(n, -1))])`
-/

namespace A176178.P3991465373564249153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-(∑ j ∈ Finset.range (n + 1), f1 j))

end

end A176178.P3991465373564249153

/-! ## A176178.P6802390559537376324

`and(1, ∑[A139246(Δ[n²]-n)]-2)`
-/

namespace A176178.P6802390559537376324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A176178.P6802390559537376324

/-! ## A176178.P511029460980492736

`A000007(val(∑[A139246(n+1)], 2))`
-/

namespace A176178.P511029460980492736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2)

end

end A176178.P511029460980492736

/-! ## A176178.P6849303638441114977

`A189389(val(∑[A139246(n+1)], 2))`
-/

namespace A176178.P6849303638441114977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189389 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2)

end

end A176178.P6849303638441114977

/-! ## A176178.P15069214001048886482

`and(∑[A139246(n+1)], A158388(n))`
-/

namespace A176178.P15069214001048886482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A158388 n)

end

end A176178.P15069214001048886482

/-! ## A176178.P16263111386946550300

`and(A020985(n)², ∑[A139246(n+1)])`
-/

namespace A176178.P16263111386946550300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020985 n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176178.P16263111386946550300

/-! ## A176178.P15589128190281717875

`A000045(and(1, ∑[A139246(n+1)]-2))`
-/

namespace A176178.P15589128190281717875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j - 2)).toNat

end

end A176178.P15589128190281717875

/-! ## A176178.P220434276183503137

`and(1, ∑[A139246(n+1)]-2)^A001221(n+1)`
-/

namespace A176178.P220434276183503137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 1 (∑ j ∈ Finset.range (n + 1), f1 j - 2) : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A176178.P220434276183503137

/-! ## A176178.P11100496510643872588

`A008683(12*(n+1))^val(∑[A139246(n+1)], 2)`
-/

namespace A176178.P11100496510643872588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (12 * (n + 1)) ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A176178.P11100496510643872588

/-!
# A176179: Primes such that the sum of digits, the sum of the squares of digits and the sum of 3rd powers of their digits is also a prime.

The programs for A176179, there is no canonical definition to state claims against.
-/

/-! ## A176179.P1466295065570509996

`p?[A245475(n+1)]`
-/

namespace A176179.P1466295065570509996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176179.P1466295065570509996

/-! ## A176179.P6764070254002898158

`∩[A046704(n+1), A245475(n+1)]`
-/

namespace A176179.P6764070254002898158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P6764070254002898158

/-! ## A176179.P10488199404372703285

`∩[A052034(n+1), A245475(n+1)]`
-/

namespace A176179.P10488199404372703285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P10488199404372703285

/-! ## A176179.P13181968269553109896

`∩[A122259(n+1), A245475(n+1)]`
-/

namespace A176179.P13181968269553109896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P13181968269553109896

/-! ## A176179.P15326640893558613557

`∩[A000040(n+1), A245475(n+1)]`
-/

namespace A176179.P15326640893558613557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P15326640893558613557

/-! ## A176179.P619262499474287063

`∩[A004139(n+1), A245475(n+1)]`
-/

namespace A176179.P619262499474287063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P619262499474287063

/-! ## A176179.P10067581075633359051

`∩[A006005(n+1), A245475(n+1)]`
-/

namespace A176179.P10067581075633359051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P10067581075633359051

/-! ## A176179.P13599954520583559722

`∩[A008578(n+1), A245475(n+1)]`
-/

namespace A176179.P13599954520583559722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P13599954520583559722

/-! ## A176179.P11659109543923557943

`∩[A045319(n+1), A245475(n+1)]`
-/

namespace A176179.P11659109543923557943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P11659109543923557943

/-! ## A176179.P16235583595679981987

`∩[A045344(n+1), A245475(n+1)]`
-/

namespace A176179.P16235583595679981987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P16235583595679981987

/-! ## A176179.P8958308050890841997

`∩[A065091(n+1), A245475(n+1)]`
-/

namespace A176179.P8958308050890841997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P8958308050890841997

/-! ## A176179.P12861972906664854706

`∩[A065396(n+1), A245475(n+1)]`
-/

namespace A176179.P12861972906664854706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P12861972906664854706

/-! ## A176179.P8128336311041253324

`∩[A033946(n+1), A245475(n+1)]`
-/

namespace A176179.P8128336311041253324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P8128336311041253324

/-! ## A176179.P9029919463927596381

`∩[A046022(n+1), A245475(n+1)]`
-/

namespace A176179.P9029919463927596381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P9029919463927596381

/-! ## A176179.P16580011630783808293

`∩[A051948(n+1), A245475(n+1)]`
-/

namespace A176179.P16580011630783808293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P16580011630783808293

/-! ## A176179.P18228175379651993034

`∩[A053813(n+1), A245475(n+1)]`
-/

namespace A176179.P18228175379651993034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P18228175379651993034

/-! ## A176179.P16838980145093065680

`∩[A062972(n+1), A245475(n+1)]`
-/

namespace A176179.P16838980145093065680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P16838980145093065680

/-! ## A176179.P3199402296103263101

`∩[A064728(n+1), A245475(n+1)]`
-/

namespace A176179.P3199402296103263101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P3199402296103263101

/-! ## A176179.P7315869617667210127

`∩[A162903(n+1), A245475(n+1)]`
-/

namespace A176179.P7315869617667210127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P7315869617667210127

/-! ## A176179.P4276647454528540650

`∩[A174090(n+1), A245475(n+1)]`
-/

namespace A176179.P4276647454528540650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176179.P4276647454528540650

/-!
# A176180: Primes p such that gcd(p(n)-1, p(n+1)-1) != gcd(p(n)+1, p(n+1)+1).

The programs for A176180, there is no canonical definition to state claims against.
-/

/-! ## A176180.P16437383030524416620

`∪[A176181(n+1), A176182(n+1)]`
-/

namespace A176180.P16437383030524416620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176180.P16437383030524416620

/-! ## A176180.P3386353657190035682

`A049591(lt[A065936(n+1), A119715(n+5)]+1)`
-/

namespace A176180.P3386353657190035682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119715 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A176180.P3386353657190035682

/-!
# A176181: Primes p(n) such that gcd(p(n)-1, p(n+1)-1) > gcd(p(n)+1, p(n+1)+1).

The programs for A176181, the canonical program `A176181.P2660284483944872761` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176181 has offset 1).

The definition of A176181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176181.P2660284483944872761

`A065091(lt[A063086(n+1), A058263(n+1)])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A176181

/-- `A065091(lt[A063086(n+1), A058263(n+1)])` -/
def P2660284483944872761.Spec : Prop :=
  ∀ n, P2660284483944872761.a n = A176181 (n + 1)

theorem P2660284483944872761.correct : P2660284483944872761.Spec := by
  intro n
  simp only [A176181, Nat.add_sub_cancel]

end A176181

/-! ## A176181.P12628766504487822807

`A000040(lt[A063086(n+1), A058263(n+1)]+1)`
-/

namespace A176181.P12628766504487822807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A176181.P12628766504487822807

namespace A176181

/-- `A000040(lt[A063086(n+1), A058263(n+1)]+1)` -/
def P12628766504487822807.Spec : Prop :=
  ∀ n, P12628766504487822807.a n = A176181 (n + 1)

end A176181

/-! ## A176181.P15590577278237793878

`∩[A389618(n+1), A391006(n+1)]`
-/

namespace A176181.P15590577278237793878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176181.P15590577278237793878

namespace A176181

/-- `∩[A389618(n+1), A391006(n+1)]` -/
def P15590577278237793878.Spec : Prop :=
  ∀ n, (P15590577278237793878.a n : ℤ) = A176181 (n + 1)

end A176181

/-!
# A176182: Primes p(n) such that gcd(p(n)-1, p(n+1)-1) < gcd(p(n)+1, p(n+1)+1).

The programs for A176182, there is no canonical definition to state claims against.
-/

/-! ## A176182.P15171599963307043981

`A065091(lt[A058263(n+1), A063086(n+1)])`
-/

namespace A176182.P15171599963307043981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176182.P15171599963307043981

/-! ## A176182.P15631178075748672875

`A065091(lt[A079083(n+1), A063086(n+1)])`
-/

namespace A176182.P15631178075748672875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176182.P15631178075748672875

/-! ## A176182.P16568157707799312774

`A000040(lt[A058263(n+1), A063086(n+1)]+1)`
-/

namespace A176182.P16568157707799312774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A176182.P16568157707799312774

/-! ## A176182.P1835600645716725392

`A000040(lt[A079083(n+1), A063086(n+1)]+1)`
-/

namespace A176182.P1835600645716725392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A176182.P1835600645716725392

/-! ## A176182.P7493999507281328153

`∩[A141831(n+1), A162566(n+1)]`
-/

namespace A176182.P7493999507281328153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176182.P7493999507281328153

/-!
# A176184: a(2n) = A027641(n). a(2n+1) = A164555(n).

The programs for A176184, there is no canonical definition to state claims against.
-/

/-! ## A176184.P10995536047956891623

`(1-and(2, n))*A176144(n)`
-/

namespace A176184.P10995536047956891623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A176144 n

end

end A176184.P10995536047956891623

/-! ## A176184.P6314312269134638983

`A057077(n)*A176144(n)`
-/

namespace A176184.P6314312269134638983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A176144 n

end

end A176184.P6314312269134638983

/-! ## A176184.P13922554272586230019

`A176144(xor(1, n))`
-/

namespace A176184.P13922554272586230019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176144 (Nat.xor 1 n)

end

end A176184.P13922554272586230019

/-! ## A176184.P3409765173064651240

`A176144(char[3]+or(1, n))`
-/

namespace A176184.P3409765173064651240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176144 ((if ∃ j, f1 j = n then 1 else 0) + Nat.lor 1 n)

end

end A176184.P3409765173064651240

/-! ## A176184.P15783223646132596400

`A176144(or(1, n)-char[3])`
-/

namespace A176184.P15783223646132596400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176144 (Nat.lor 1 n - (if ∃ j, f1 j = n then 1 else 0))

end

end A176184.P15783223646132596400

/-! ## A176184.P683005016999623249

`A176144((-1)^n+n)`
-/

namespace A176184.P683005016999623249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176144 ((-1) ^ n + (n : ℤ)).toNat

end

end A176184.P683005016999623249

/-!
# A176186: Number of ways to place 6 nonattacking queens on an n X n board.

The programs for A176186, there is no canonical definition to state claims against.
-/

/-! ## A176186.P5454379374912106166

`A348129(eq[6, A002262(n)])`
-/

namespace A176186.P5454379374912106166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176186.P5454379374912106166

/-!
# A176187: Least period of sequence {f^(m)(n)},m=1,2,3,..., where f^(m) is the m-th iteration of A002326 (f^(1)=f), after possibly dropping some finite number of iterations.

The programs for A176187, there is no canonical definition to state claims against.
-/

/-! ## A176187.P12474114260826256117

`gcd(A007736(A007736(2*n+1)), A128681(n+1))`
-/

namespace A176187.P12474114260826256117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007736 (A007736 (2 * n + 1)).toNat) (A128681 (n + 1))

end

end A176187.P12474114260826256117

/-! ## A176187.P10467041649116500441

`gcd(A010554(2*n+1), A246035(A161772(n+2)))`
-/

namespace A176187.P10467041649116500441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010554 (2 * n + 1)) (A246035 (A161772 (n + 2)).toNat)

end

end A176187.P10467041649116500441

/-! ## A176187.P1717065277008530229

`gcd(A109139(A256608(2*n+1)), A256608(2*n+1))`
-/

namespace A176187.P1717065277008530229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109139 (A256608 (2 * n + 1)).toNat) (A256608 (2 * n + 1))

end

end A176187.P1717065277008530229

/-! ## A176187.P11714020870647686886

`gcd(3, A334487(A152609(n+1)%2*A137605(n+1)+1))`
-/

namespace A176187.P11714020870647686886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A334487 (Int.tmod (A152609 (n + 1)) 2 * A137605 (n + 1) + 1).toNat)

end

end A176187.P11714020870647686886

/-! ## A176187.P1843123392882773828

`A326057(A173745(A000010(A000010(2*n+1))))`
-/

namespace A176187.P1843123392882773828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326057 (A173745 (A000010 (A000010 (2 * n + 1)).toNat).toNat).toNat

end

end A176187.P1843123392882773828

/-!
# A176188: Positions m for which A176187(m)=3.

The programs for A176188, there is no canonical definition to state claims against.
-/

/-! ## A176188.P3841379819876723941

`lt[1, A176187(n)]`
-/

namespace A176188.P3841379819876723941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176188.P3841379819876723941

/-! ## A176188.P18315590530431481423

`eq[3, A176187(n+1)]+1`
-/

namespace A176188.P18315590530431481423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176188.P18315590530431481423

/-! ## A176188.P15759753647276066896

`A000027(eq[3, A176187(n)])`
-/

namespace A176188.P15759753647276066896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176188.P15759753647276066896

/-! ## A176188.P3644443967233914068

`eq[3, A176187(A028310(n))]`
-/

namespace A176188.P3644443967233914068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176187 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176188.P3644443967233914068

/-! ## A176188.P5531742293151902762

`eq[3, A176187(A106618(n))]`
-/

namespace A176188.P5531742293151902762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176187 (A106618 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176188.P5531742293151902762

/-!
# A176189: Natural numbers whose squares have only 0's and 1's in base 3.

The programs for A176189, there is no canonical definition to state claims against.
-/

/-! ## A176189.P16737456317412902525

`sqrt(A363408(n+2))`
-/

namespace A176189.P16737456317412902525
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A363408 (n + 2) : ℝ)

end

end A176189.P16737456317412902525

/-! ## A176189.P12613712220799276295

`eq[A000007(n), A276204(A000212(n))]`
-/

namespace A176189.P12613712220799276295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276204 (A000212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176189.P12613712220799276295

/-! ## A176189.P1837403417268350717

`eq[A000038(n), A276204(A000212(n))]`
-/

namespace A176189.P1837403417268350717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276204 (A000212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176189.P1837403417268350717

/-! ## A176189.P16516723189552810432

`eq[A000007(n), A276204(n²)]`
-/

namespace A176189.P16516723189552810432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276204 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176189.P16516723189552810432

/-! ## A176189.P9597977602595817833

`eq[A000038(n), A276204(n²)]`
-/

namespace A176189.P9597977602595817833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276204 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176189.P9597977602595817833

/-!
# A176190: Triangle T(n,m) read by rows: (1 + binomial(n, m)*binomial(n + 1, m)/(m + 1) )^n, 0<=m<=n.

The programs for A176190, the canonical program `A176190.P17056815295521249194` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176190 has offset 0).

The definition of A176190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176190.P17056815295521249194

`(A001263(n+1)+1)^∑[char[∑[n+1]]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176190

/-- `(A001263(n+1)+1)^∑[char[∑[n+1]]]` -/
def P17056815295521249194.Spec : Prop :=
  ∀ n, P17056815295521249194.a n = A176190 n

theorem P17056815295521249194.correct : P17056815295521249194.Spec := by
  intro n
  simp only [A176190]

end A176190

/-! ## A176190.P4400090686263166693

`(sqrt(A001263(n+1)+1)^A003056(n))²`
-/

namespace A176190.P4400090686263166693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A001263 (n + 1) + 1 : ℝ) ^ (A003056 n : ℤ)) ^ 2

end

end A176190.P4400090686263166693

namespace A176190

/-- `(sqrt(A001263(n+1)+1)^A003056(n))²` -/
def P4400090686263166693.Spec : Prop :=
  ∀ n, P4400090686263166693.a n = (A176190 n : ℝ)

end A176190

/-! ## A176190.P12139480299789535161

`A080513(A174124(n))^A003056(n)`
-/

namespace A176190.P12139480299789535161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 (A174124 n).toNat : ℚ) ^ (A003056 n : ℤ)

end

end A176190.P12139480299789535161

namespace A176190

/-- `A080513(A174124(n))^A003056(n)` -/
def P12139480299789535161.Spec : Prop :=
  ∀ n, P12139480299789535161.a n = (A176190 n : ℚ)

end A176190

/-! ## A176190.P10406731893504656146

`A080513(A132787(n+1))^A003056(n)`
-/

namespace A176190.P10406731893504656146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 (A132787 (n + 1)).toNat : ℚ) ^ (A003056 n : ℤ)

end

end A176190.P10406731893504656146

namespace A176190

/-- `A080513(A132787(n+1))^A003056(n)` -/
def P10406731893504656146.Spec : Prop :=
  ∀ n, P10406731893504656146.a n = (A176190 n : ℚ)

end A176190

/-! ## A176190.P9429825970650640401

`A080513(A133200(n+1))^A003056(n)`
-/

namespace A176190.P9429825970650640401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 (A133200 (n + 1)).toNat : ℚ) ^ (A003056 n : ℤ)

end

end A176190.P9429825970650640401

namespace A176190

/-- `A080513(A133200(n+1))^A003056(n)` -/
def P9429825970650640401.Spec : Prop :=
  ∀ n, P9429825970650640401.a n = (A176190 n : ℚ)

end A176190

/-!
# A176191: Numbers n such that semiprime(n)-1 is prime, where semiprime(n) is A001358.

The programs for A176191, there is no canonical definition to state claims against.
-/

/-! ## A176191.P5873722639025725555

`A058933(A077068(n+1))`
-/

namespace A176191.P5873722639025725555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A077068 (n + 1)).toNat

end

end A176191.P5873722639025725555

/-! ## A176191.P193680270526454634

`A115392(A137288(n+1))`
-/

namespace A176191.P193680270526454634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115392 (A137288 (n + 1)).toNat

end

end A176191.P193680270526454634

/-! ## A176191.P2773780934306187218

`record[A174956(A008864(n+2))]`
-/

namespace A176191.P2773780934306187218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A008864 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176191.P2773780934306187218

/-! ## A176191.P9725251001596388161

`A058933(A005383(n+1)+1)`
-/

namespace A176191.P9725251001596388161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A005383 (n + 1) + 1).toNat

end

end A176191.P9725251001596388161

/-! ## A176191.P16605155304586502693

`A072000(A005383(n+1)+1)`
-/

namespace A176191.P16605155304586502693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A005383 (n + 1) + 1).toNat

end

end A176191.P16605155304586502693

/-! ## A176191.P9038417504933518648

`A058933(2*A005382(n+1))`
-/

namespace A176191.P9038417504933518648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (2 * A005382 (n + 1)).toNat

end

end A176191.P9038417504933518648

/-! ## A176191.P8716713786324455840

`A072000(2*A005382(n+1))`
-/

namespace A176191.P8716713786324455840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (2 * A005382 (n + 1)).toNat

end

end A176191.P8716713786324455840

/-! ## A176191.P15014111739687205350

`record[A174956(A000040(n+2)+1)]`
-/

namespace A176191.P15014111739687205350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (A000040 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176191.P15014111739687205350

/-! ## A176191.P8015721174460309167

`eq[1, A001222(A186621(n+1))]+1`
-/

namespace A176191.P8015721174460309167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A186621 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A176191.P8015721174460309167

/-! ## A176191.P10670625600090252462

`lt[A000005(A001358(n+1)-1), 3]+1`
-/

namespace A176191.P10670625600090252462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001358 (n + 1) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A176191.P10670625600090252462

/-!
# A176193: The positions of semiprimes in A002808.

The programs for A176193, the canonical program `A176193.P9374032312984906973` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176193 has offset 1).

The definition of A176193 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176193.P9374032312984906973

`A001358(n+1)-A000720(A001358(n+1))-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A176193

/-- `A001358(n+1)-A000720(A001358(n+1))-1` -/
def P9374032312984906973.Spec : Prop :=
  ∀ n, P9374032312984906973.a n = A176193 (n + 1)

theorem P9374032312984906973.correct : P9374032312984906973.Spec := by
  intro n
  simp only [A176193, Nat.add_sub_cancel]

end A176193

/-! ## A176193.P8645573685957192123

`A186621(n+1)-A111939(n+1)`
-/

namespace A176193.P8645573685957192123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) - A111939 (n + 1)

end

end A176193.P8645573685957192123

namespace A176193

/-- `A186621(n+1)-A111939(n+1)` -/
def P8645573685957192123.Spec : Prop :=
  ∀ n, P8645573685957192123.a n = A176193 (n + 1)

theorem P8645573685957192123.correct : P8645573685957192123.Spec := by
  intro n
  simp only [A176193, Nat.add_sub_cancel, A176193.P8645573685957192123.a, A176193.P9374032312984906973.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001358, A001358.P632087320844056370.a, A111939, A111939.P7541202206482791046.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176193

/-! ## A176193.P10230566011775205794

`A175708(n+1)-A111939(n+1)+n`
-/

namespace A176193.P10230566011775205794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) - A111939 (n + 1) + (n : ℤ)

end

end A176193.P10230566011775205794

namespace A176193

/-- `A175708(n+1)-A111939(n+1)+n` -/
def P10230566011775205794.Spec : Prop :=
  ∀ n, P10230566011775205794.a n = A176193 (n + 1)

theorem P10230566011775205794.correct : P10230566011775205794.Spec := by
  intro n
  simp only [A176193, Nat.add_sub_cancel, A176193.P10230566011775205794.a, A176193.P9374032312984906973.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001358, A001358.P632087320844056370.a, A111939, A111939.P7541202206482791046.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176193

/-! ## A176193.P3510975087146307195

`A065855(A001358(n+1))`
-/

namespace A176193.P3510975087146307195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A001358 (n + 1)).toNat

end

end A176193.P3510975087146307195

namespace A176193

/-- `A065855(A001358(n+1))` -/
def P3510975087146307195.Spec : Prop :=
  ∀ n, P3510975087146307195.a n = A176193 (n + 1)

end A176193

/-! ## A176193.P10426522000293522522

`A065855(sqrt(A074985(n+1)))`
-/

namespace A176193.P10426522000293522522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A176193.P10426522000293522522

namespace A176193

/-- `A065855(sqrt(A074985(n+1)))` -/
def P10426522000293522522.Spec : Prop :=
  ∀ n, P10426522000293522522.a n = A176193 (n + 1)

end A176193

/-! ## A176193.P15378747407836362318

`eq[2, A001222(A018252(n+1))]`
-/

namespace A176193.P15378747407836362318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A018252 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176193.P15378747407836362318

namespace A176193

/-- `eq[2, A001222(A018252(n+1))]` -/
def P15378747407836362318.Spec : Prop :=
  ∀ n, (P15378747407836362318.a n : ℤ) = A176193 (n + 1)

end A176193

/-! ## A176193.P943964383456883116

`eq[2, A001222(A141468(n+2))]`
-/

namespace A176193.P943964383456883116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A141468 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176193.P943964383456883116

namespace A176193

/-- `eq[2, A001222(A141468(n+2))]` -/
def P943964383456883116.Spec : Prop :=
  ∀ n, (P943964383456883116.a n : ℤ) = A176193 (n + 1)

end A176193

/-! ## A176193.P10989296348873523474

`eq[2, A062502(n+1)]`
-/

namespace A176193.P10989296348873523474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176193.P10989296348873523474

namespace A176193

/-- `eq[2, A062502(n+1)]` -/
def P10989296348873523474.Spec : Prop :=
  ∀ n, (P10989296348873523474.a n : ℤ) = A176193 (n + 1)

end A176193

/-! ## A176193.P4074490213774327436

`eq[2, ∑{e}[comp[A020639(n+1)], #]]`
-/

namespace A176193.P4074490213774327436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176193.P4074490213774327436

namespace A176193

/-- `eq[2, ∑{e}[comp[A020639(n+1)], #]]` -/
def P4074490213774327436.Spec : Prop :=
  ∀ n, (P4074490213774327436.a n : ℤ) = A176193 (n + 1)

end A176193

/-! ## A176193.P8942326114590072806

`A062298(A186621(n+1))`
-/

namespace A176193.P8942326114590072806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A186621 (n + 1)).toNat

end

end A176193.P8942326114590072806

namespace A176193

/-- `A062298(A186621(n+1))` -/
def P8942326114590072806.Spec : Prop :=
  ∀ n, P8942326114590072806.a n = A176193 (n + 1)

end A176193

/-! ## A176193.P17127283128000601202

`A026238(A176540(n+2))`
-/

namespace A176193.P17127283128000601202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A176540 (n + 2)).toNat

end

end A176193.P17127283128000601202

namespace A176193

/-- `A026238(A176540(n+2))` -/
def P17127283128000601202.Spec : Prop :=
  ∀ n, P17127283128000601202.a n = A176193 (n + 1)

end A176193

/-! ## A176193.P1848469460330900367

`A062298(A001358(n+1)-1)`
-/

namespace A176193.P1848469460330900367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A001358 (n + 1) - 1).toNat

end

end A176193.P1848469460330900367

namespace A176193

/-- `A062298(A001358(n+1)-1)` -/
def P1848469460330900367.Spec : Prop :=
  ∀ n, P1848469460330900367.a n = A176193 (n + 1)

end A176193

/-! ## A176193.P13021501627658897611

`A062298(A088707(n+1)-2)`
-/

namespace A176193.P13021501627658897611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A088707 (n + 1) - 2).toNat

end

end A176193.P13021501627658897611

namespace A176193

/-- `A062298(A088707(n+1)-2)` -/
def P13021501627658897611.Spec : Prop :=
  ∀ n, P13021501627658897611.a n = A176193 (n + 1)

end A176193

/-! ## A176193.P17260131304377956390

`A026238(∪[A001358(2*n+1), A001358(n+2)])`
-/

namespace A176193.P17260131304377956390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A176193.P17260131304377956390

namespace A176193

/-- `A026238(∪[A001358(2*n+1), A001358(n+2)])` -/
def P17260131304377956390.Spec : Prop :=
  ∀ n, P17260131304377956390.a n = A176193 (n + 1)

end A176193

/-! ## A176193.P9133748774112197960

`lt[A105700(n), A105700(A018252(n+1))²]`
-/

namespace A176193.P9133748774112197960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A018252 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176193.P9133748774112197960

namespace A176193

/-- `lt[A105700(n), A105700(A018252(n+1))²]` -/
def P9133748774112197960.Spec : Prop :=
  ∀ n, (P9133748774112197960.a n : ℤ) = A176193 (n + 1)

end A176193

/-! ## A176193.P492411158526040711

`lt[n+2, A088740(n+1)]+1`
-/

namespace A176193.P492411158526040711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A176193.P492411158526040711

namespace A176193

/-- `lt[n+2, A088740(n+1)]+1` -/
def P492411158526040711.Spec : Prop :=
  ∀ n, (P492411158526040711.a n : ℤ) = A176193 (n + 1)

end A176193

/-!
# A176195: Largest prime factor of A174562(n).

The programs for A176195, there is no canonical definition to state claims against.
-/

/-! ## A176195.P12405310917298714987

`A006530(A174562(n+1))`
-/

namespace A176195.P12405310917298714987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A174562 (n + 1)).toNat

end

end A176195.P12405310917298714987

/-! ## A176195.P13008077979126721126

`A006530(A013655(ceil(xor(1, n)/2)))`
-/

namespace A176195.P13008077979126721126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013655 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat).toNat

end

end A176195.P13008077979126721126

/-! ## A176195.P12057946424347988523

`A006530(A013655(xor(1, n)-floor(n/2)))`
-/

namespace A176195.P12057946424347988523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013655 ((Nat.xor 1 n : ℤ) - ⌊(n : ℚ) / 2⌋).toNat).toNat

end

end A176195.P12057946424347988523

/-! ## A176195.P15180831395016368063

`A006530(A013655(∑[1-a(n-1)]-1))` with `a(0)=2`
-/

namespace A176195.P15180831395016368063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013655 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat).toNat

end

end A176195.P15180831395016368063

/-! ## A176195.P2197161521268594948

`A006530(A013655(A028242(n)))`
-/

namespace A176195.P2197161521268594948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A013655 (A028242 n).toNat).toNat

end

end A176195.P2197161521268594948

/-!
# A176196: Primes such that the sum of k-th powers of digits, for each of k = 1, 2, 3, and 4, is also a prime.

The programs for A176196, there is no canonical definition to state claims against.
-/

/-! ## A176196.P5255527883859804945

`∩[A091367(n+1), A176179(n+1)]`
-/

namespace A176196.P5255527883859804945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176196.P5255527883859804945

/-! ## A176196.P5168215611694643745

`∩[A091367(n+1), A245475(n+1)]`
-/

namespace A176196.P5168215611694643745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176196.P5168215611694643745

/-! ## A176196.P18336447884101325414

`∩[A176179(n+1), A210767(n+1)]`
-/

namespace A176196.P18336447884101325414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176196.P18336447884101325414

/-! ## A176196.P11356439515997741539

`p?[∩[A210767(n+1), A245475(n+1)]]`
-/

namespace A176196.P11356439515997741539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245475 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176196.P11356439515997741539

/-!
# A176197: Sum of 4 distinct nonzero fourth powers.

The programs for A176197, there is no canonical definition to state claims against.
-/

/-! ## A176197.P16427073202510267088

`A003999(A014312(n+1)%A094491(n+1))`
-/

namespace A176197.P16427073202510267088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003999 (Int.tmod (A014312 (n + 1)) (A094491 (n + 1))).toNat

end

end A176197.P16427073202510267088

/-! ## A176197.P506422452464418158

`A003999(A151935(3*n+1)+A014312(n+1))`
-/

namespace A176197.P506422452464418158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003999 (A151935 (3 * n + 1) + A014312 (n + 1)).toNat

end

end A176197.P506422452464418158

/-! ## A176197.P13980505741930388816

`A003999(A014312(n+1)%A075978(n))`
-/

namespace A176197.P13980505741930388816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003999 (Int.tmod (A014312 (n + 1)) (A075978 n)).toNat

end

end A176197.P13980505741930388816

/-!
# A176198: Triangle, read by rows, T(n, k) = f(n,k,q) - f(n,0,q) + 1, where f(n, k, q) = [x^k](p(x,n,q)), p(x, n, q) = (1-x)^(n+1)*Sum_{k >= 0} ( (q*k+1)^n + (q*(k+1)-1)^n )*x^k, and q = 2.

The programs for A176198, the canonical program `A176198.P12571243224360878516` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176198 has offset 0).

The definition of A176198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176198.P12571243224360878516

`2*A060187(n+1)-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A176198

/-- `2*A060187(n+1)-1` -/
def P12571243224360878516.Spec : Prop :=
  ∀ n, P12571243224360878516.a n = A176198 n

theorem P12571243224360878516.correct : P12571243224360878516.Spec := by
  intro n
  simp only [A176198]

end A176198

/-! ## A176198.P3072992425219884474

`A168517(n)+A168551(n)-1`
-/

namespace A176198.P3072992425219884474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168517 n + (A168551 n - 1)

end

end A176198.P3072992425219884474

namespace A176198

/-- `A168517(n)+A168551(n)-1` -/
def P3072992425219884474.Spec : Prop :=
  ∀ n, P3072992425219884474.a n = A176198 n

theorem P3072992425219884474.correct : P3072992425219884474.Spec := by
  intro n
  simp only [A176198, Nat.add_sub_cancel, A176198.P3072992425219884474.a, A176198.P12571243224360878516.a, A060187, A060187.P2858299442381557721.a, A168517, A168517.P3987419255871127776.a, A168551, A168551.P16251001762095970515.a, A008292, A008292.P18172958035633294905.a, A141689, A141689.P17765687442390039653.a, A014473, A014473.P9301799580602651200.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176198

/-! ## A176198.P8015624314267685669

`2*(2*A262226(A061579(n))-A130595(n))-1`
-/

namespace A176198.P8015624314267685669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A262226 (A061579 n).toNat - A130595 n) - 1

end

end A176198.P8015624314267685669

namespace A176198

/-- `2*(2*A262226(A061579(n))-A130595(n))-1` -/
def P8015624314267685669.Spec : Prop :=
  ∀ n, P8015624314267685669.a n = A176198 n

end A176198

/-! ## A176198.P6171854386693622083

`A154334(n)+A154337(n)-1`
-/

namespace A176198.P6171854386693622083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154334 n + (A154337 n - 1)

end

end A176198.P6171854386693622083

namespace A176198

/-- `A154334(n)+A154337(n)-1` -/
def P6171854386693622083.Spec : Prop :=
  ∀ n, P6171854386693622083.a n = A176198 n

theorem P6171854386693622083.correct : P6171854386693622083.Spec := by
  intro n
  simp only [A176198, Nat.add_sub_cancel, A176198.P6171854386693622083.a, A176198.P12571243224360878516.a, A060187, A060187.P2858299442381557721.a, A154334, A154334.P4393523931861115202.a, A154337, A154337.P2678158000755905541.a, A007318, A007318.P11755526479805562006.a, A168523, A168523.P2818392945840428829.a, A008292, A008292.P18172958035633294905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A176198

/-! ## A176198.P10329535869395189134

`A154336(n)+A154338(n)-1`
-/

namespace A176198.P10329535869395189134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154336 n + (A154338 n - 1)

end

end A176198.P10329535869395189134

namespace A176198

/-- `A154336(n)+A154338(n)-1` -/
def P10329535869395189134.Spec : Prop :=
  ∀ n, P10329535869395189134.a n = A176198 n

theorem P10329535869395189134.correct : P10329535869395189134.Spec := by
  intro n
  simp only [A176198, Nat.add_sub_cancel, A176198.P10329535869395189134.a, A176198.P12571243224360878516.a, A060187, A060187.P2858299442381557721.a, A154336, A154336.P13527652642687108654.a, A154338, A154338.P12998775636047877976.a, A154335, A154335.P1248576058103309358.a, A008292, A008292.P18172958035633294905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176198

/-! ## A176198.P15863036269556016448

`A008292(n+1)+A154335(n)-1`
-/

namespace A176198.P15863036269556016448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) + (A154335 n - 1)

end

end A176198.P15863036269556016448

namespace A176198

/-- `A008292(n+1)+A154335(n)-1` -/
def P15863036269556016448.Spec : Prop :=
  ∀ n, P15863036269556016448.a n = A176198 n

theorem P15863036269556016448.correct : P15863036269556016448.Spec := by
  intro n
  simp only [A176198, Nat.add_sub_cancel, A176198.P15863036269556016448.a, A176198.P12571243224360878516.a, A008292, A008292.P18172958035633294905.a, A060187, A060187.P2858299442381557721.a, A154335, A154335.P1248576058103309358.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A176198

/-!
# A176199: Triangle, read by rows, T(n, k) = f(n,k,q) - f(n,0,q) + 1, where f(n, k, q) = [x^k](p(x,n,q)), p(x, n, q) = (1-x)^(n+1)*Sum_{k >= 0} ( (q*k+1)^n + (q*(k+1)-1)^n )*x^k, and q = 4.

The programs for A176199, there is no canonical definition to state claims against.
-/

/-! ## A176199.P14808111739197779633

`2*A154647(n)-A098355(n)`
-/

namespace A176199.P14808111739197779633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154647 n - A098355 n

end

end A176199.P14808111739197779633

/-! ## A176199.P6952154046380444854

`2*A174678(n)-1`
-/

namespace A176199.P6952154046380444854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174678 n - 1

end

end A176199.P6952154046380444854

/-! ## A176199.P15520353223857051583

`A014107(A007318(∑[n]))+2*A174678(n)`
-/

namespace A176199.P15520353223857051583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 2 * A174678 n

end

end A176199.P15520353223857051583

/-! ## A176199.P10662105746221427536

`A316441(A000040(n+1))+2*A174678(n)`
-/

namespace A176199.P10662105746221427536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + 2 * A174678 n

end

end A176199.P10662105746221427536

/-! ## A176199.P8701465929111885957

`A008683(record[A014963(n+2)])+2*A174678(n)`
-/

namespace A176199.P8701465929111885957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2 * A174678 n

end

end A176199.P8701465929111885957

