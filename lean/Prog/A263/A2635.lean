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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A263501: Expansion of phi(-x) * f(-x^2)^3 / f(-x^3) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A263501, there is no canonical definition to state claims against.
-/

/-! ## A263501.P10615465503814679445

`A263444(7*n+1+n)/2`
-/

namespace A263501.P10615465503814679445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263444 (7 * n + 1 + n) : ℚ) / 2

end

end A263501.P10615465503814679445

/-!
# A263502: Expansion of phi(q) * f(-q^2)^3 / f(-q^6) in powers of q where phi(), f() are Ramanujan theta functions.

The programs for A263502, there is no canonical definition to state claims against.
-/

/-! ## A263502.P4446836900223346598

`A263456(4*n)`
-/

namespace A263502.P4446836900223346598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263456 (4 * n)

end

end A263502.P4446836900223346598

/-! ## A263502.P14028271072717604642

`A263444(4*n)`
-/

namespace A263502.P14028271072717604642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263444 (4 * n)

end

end A263502.P14028271072717604642

/-! ## A263502.P6052444499642924868

`A263444(A008574(n))-A000007(n)`
-/

namespace A263502.P6052444499642924868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263444 (A008574 n).toNat - A000007 n

end

end A263502.P6052444499642924868

/-! ## A263502.P17916443240759554673

`A263456(A008586(n))%A004771(n)`
-/

namespace A263502.P17916443240759554673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263456 (A008586 n).toNat) (A004771 n)

end

end A263502.P17916443240759554673

/-! ## A263502.P15983037049140917313

`A263444(A008574(n))/A003557(A100484(n+1))`
-/

namespace A263502.P15983037049140917313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263444 (A008574 n).toNat : ℚ) / (A003557 (A100484 (n + 1)).toNat : ℚ)

end

end A263502.P15983037049140917313

/-!
# A263503: Number of (n+1) X (1+1) arrays of permutations of 0..n*2+1 filled by rows with each element moved a city block distance of 0 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263503, there is no canonical definition to state claims against.
-/

/-! ## A263503.P7225338112885044343

`A263506(∑[n+1])`
-/

namespace A263503.P7225338112885044343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263503.P7225338112885044343

/-! ## A263503.P16649591290693992702

`record[A263506(C(A002330(n+2), 2))]`
-/

namespace A263503.P16649591290693992702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (Nat.choose (A002330 (n + 2)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263503.P16649591290693992702

/-! ## A263503.P13492391240461241158

`record[A263506(C(A005245(n+2), 2))]`
-/

namespace A263503.P13492391240461241158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (Nat.choose (A005245 (n + 2)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263503.P13492391240461241158

/-! ## A263503.P15601405590454355665

`record[A023531(n)*A263506(n+1)]`
-/

namespace A263503.P15601405590454355665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A263506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263503.P15601405590454355665

/-!
# A263504: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 filled by rows with each element moved a city block distance of 0 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263504, there is no canonical definition to state claims against.
-/

/-! ## A263504.P10510509825367549100

`A263506(∑[n+2])`
-/

namespace A263504.P10510509825367549100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263504.P10510509825367549100

/-! ## A263504.P16297896026878556296

`record[root(A263506(n+2), A107867(n+2))]`
-/

namespace A263504.P16297896026878556296
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263506 (n + 2) : ℝ) ^ (1 / (A107867 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263504.P16297896026878556296

/-! ## A263504.P3678875786133081557

`record[root(A263506(n+2), A247500(n+2))]`
-/

namespace A263504.P3678875786133081557
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263506 (n + 2) : ℝ) ^ (1 / (A247500 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263504.P3678875786133081557

/-!
# A263505: Number of (n+1) X (3+1) arrays of permutations of 0..n*4+3 filled by rows with each element moved a city block distance of 0 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263505, there is no canonical definition to state claims against.
-/

/-! ## A263505.P9725285016597940128

`A263506(∑[n+3]+1)`
-/

namespace A263505.P9725285016597940128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263505.P9725285016597940128

/-!
# A263507: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 filled by rows with each element moved a city block distance of 0 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263507, there is no canonical definition to state claims against.
-/

/-! ## A263507.P6164461540398813540

`A263506(∑[n]+1)`
-/

namespace A263507.P6164461540398813540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263507.P6164461540398813540

/-! ## A263507.P11441639340232463558

`A263506(A000124(n))+char[9]`
-/

namespace A263507.P11441639340232463558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263507.P11441639340232463558

/-! ## A263507.P12038853804915125536

`record[A263506(A000124(val(n+1, 2)))]`
-/

namespace A263507.P12038853804915125536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (A000124 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263507.P12038853804915125536

/-! ## A263507.P4528032352136577361

`record[A010054(n)*A263506(n+1)]`
-/

namespace A263507.P4528032352136577361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263507.P4528032352136577361

/-! ## A263507.P9323000831700798463

`record[A033806(n)*A263506(n+1)]`
-/

namespace A263507.P9323000831700798463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033806 n * A263506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263507.P9323000831700798463

/-!
# A263508: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 filled by rows with each element moved a city block distance of 0 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263508, there is no canonical definition to state claims against.
-/

/-! ## A263508.P11329615025139258347

`A263506(∑[n+1]+2)`
-/

namespace A263508.P11329615025139258347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263508.P11329615025139258347

/-! ## A263508.P2836611345637266773

`record[root(A263506(n+3), A107867(n))]`
-/

namespace A263508.P2836611345637266773
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263506 (n + 3) : ℝ) ^ (1 / (A107867 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263508.P2836611345637266773

/-! ## A263508.P6366080543256997826

`record[gcd(A122202(n), A263506(n+3))]`
-/

namespace A263508.P6366080543256997826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122202 n) (A263506 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263508.P6366080543256997826

/-! ## A263508.P1285831230317235650

`record[root(A263506(n+3), A004736(n+1))]`
-/

namespace A263508.P1285831230317235650
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263506 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263508.P1285831230317235650

/-!
# A263509: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 filled by rows with each element moved a city block distance of 0 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263509, there is no canonical definition to state claims against.
-/

/-! ## A263509.P3990515083879479412

`A263506(∑[n+2]+4)`
-/

namespace A263509.P3990515083879479412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263509.P3990515083879479412

/-! ## A263509.P10354319575517501792

`A263506(A167614(n+1))+char[7]`
-/

namespace A263509.P10354319575517501792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263506 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263509.P10354319575517501792

/-! ## A263509.P1244966327789039725

`A299905(n)+A263506(A167614(n+1))`
-/

namespace A263509.P1244966327789039725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A263506 (A167614 (n + 1)).toNat

end

end A263509.P1244966327789039725

/-!
# A263511: Total number of ON (black) cells after n iterations of the "Rule 155" elementary cellular automaton starting with a single ON (black) cell.

The programs for A263511, the canonical program `A263511.P8251928001348103464` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263511 has offset 0).

The definition of A263511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263511.P8251928001348103464

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263511

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P8251928001348103464.Spec : Prop :=
  ∀ n, P8251928001348103464.a n = A263511 n

theorem P8251928001348103464.correct : P8251928001348103464.Spec := by
  intro n
  simp only [A263511]

end A263511

/-! ## A263511.P11592784562502295331

`A171769(n+1)-A042963(n+1)`
-/

namespace A263511.P11592784562502295331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171769 (n + 1) - A042963 (n + 1)

end

end A263511.P11592784562502295331

namespace A263511

/-- `A171769(n+1)-A042963(n+1)` -/
def P11592784562502295331.Spec : Prop :=
  ∀ n, P11592784562502295331.a n = A263511 n

end A263511

/-! ## A263511.P17495197290786969754

`∑[record[abs(or(2, n-1))]]`
-/

namespace A263511.P17495197290786969754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P17495197290786969754

namespace A263511

/-- `∑[record[abs(or(2, n-1))]]` -/
def P17495197290786969754.Spec : Prop :=
  ∀ n, P17495197290786969754.a n = A263511 n

end A263511

/-! ## A263511.P4964154961095338723

`∑[abs(record[xor(2, n-3)])]`
-/

namespace A263511.P4964154961095338723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P4964154961095338723

namespace A263511

/-- `∑[abs(record[xor(2, n-3)])]` -/
def P4964154961095338723.Spec : Prop :=
  ∀ n, P4964154961095338723.a n = A263511 n

end A263511

/-! ## A263511.P322012005501206143

`∑[abs(or(1, -n))+n]`
-/

namespace A263511.P322012005501206143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P322012005501206143

namespace A263511

/-- `∑[abs(or(1, -n))+n]` -/
def P322012005501206143.Spec : Prop :=
  ∀ n, P322012005501206143.a n = A263511 n

end A263511

/-! ## A263511.P3419833215524505211

`∑[comp[or(2, n)+1]+1]`
-/

namespace A263511.P3419833215524505211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P3419833215524505211

namespace A263511

/-- `∑[comp[or(2, n)+1]+1]` -/
def P3419833215524505211.Spec : Prop :=
  ∀ n, (P3419833215524505211.a n : ℤ) = A263511 n

end A263511

/-! ## A263511.P693895615969611922

`ceil(n/2)+n²+1`
-/

namespace A263511.P693895615969611922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + (n ^ 2 + 1 : ℤ)

end

end A263511.P693895615969611922

namespace A263511

/-- `ceil(n/2)+n²+1` -/
def P693895615969611922.Spec : Prop :=
  ∀ n, P693895615969611922.a n = A263511 n

end A263511

/-! ## A263511.P919398014456103254

`∑[a(n-2)+4]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A263511.P919398014456103254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P919398014456103254

namespace A263511

/-- `∑[a(n-2)+4]` -/
def P919398014456103254.Spec : Prop :=
  ∀ n, (P919398014456103254.a n : ℤ) = A263511 n

end A263511

/-! ## A263511.P17333311656917845480

`∑[(1-n)%2+2*n]`
-/

namespace A263511.P17333311656917845480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2 + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P17333311656917845480

namespace A263511

/-- `∑[(1-n)%2+2*n]` -/
def P17333311656917845480.Spec : Prop :=
  ∀ n, P17333311656917845480.a n = A263511 n

end A263511

/-! ## A263511.P12952377668694437322

`∑[2*n-(n-1)%2]`
-/

namespace A263511.P12952377668694437322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P12952377668694437322

namespace A263511

/-- `∑[2*n-(n-1)%2]` -/
def P12952377668694437322.Spec : Prop :=
  ∀ n, P12952377668694437322.a n = A263511 n

end A263511

/-! ## A263511.P13043213219267114877

`∑[∑[gcd(3, (2-n²)%4)]]`
-/

namespace A263511.P13043213219267114877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (Int.tmod (2 - (n ^ 2 : ℤ)) 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P13043213219267114877

namespace A263511

/-- `∑[∑[gcd(3, (2-n²)%4)]]` -/
def P13043213219267114877.Spec : Prop :=
  ∀ n, (P13043213219267114877.a n : ℤ) = A263511 n

end A263511

/-! ## A263511.P16483459705141334037

`∑[∑[4-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A263511.P16483459705141334037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P16483459705141334037

namespace A263511

/-- `∑[∑[4-a(n-1)]]` -/
def P16483459705141334037.Spec : Prop :=
  ∀ n, P16483459705141334037.a n = A263511 n

end A263511

/-! ## A263511.P4630750063517526536

`round((2*n+1)/acot(n/2))`
-/

namespace A263511.P4630750063517526536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ))

end

end A263511.P4630750063517526536

namespace A263511

/-- `round((2*n+1)/acot(n/2))` -/
def P4630750063517526536.Spec : Prop :=
  ∀ n, P4630750063517526536.a n = A263511 n

end A263511

/-! ## A263511.P11323683626714895818

`∑[∑[ogf((1+x+2x^3)/(1-x^2))]]`
-/

namespace A263511.P11323683626714895818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2] [1, 0, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P11323683626714895818

namespace A263511

/-- `∑[∑[ogf((1+x+2x^3)/(1-x^2))]]` -/
def P11323683626714895818.Spec : Prop :=
  ∀ n, P11323683626714895818.a n = A263511 n

end A263511

/-! ## A263511.P9739400951140854678

`ogf((1+x+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A263511.P9739400951140854678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 2] [1, -2, 0, 2, -1] n

end

end A263511.P9739400951140854678

namespace A263511

/-- `ogf((1+x+2x^3)/(1-2x+2x^3-x^4))` -/
def P9739400951140854678.Spec : Prop :=
  ∀ n, P9739400951140854678.a n = A263511 n

end A263511

/-! ## A263511.P13775171136519956311

`ceil((C(2*n+1, 2)+2)/2)`
-/

namespace A263511.P13775171136519956311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n + 1) 2 + 2 : ℚ) / 2⌉

end

end A263511.P13775171136519956311

namespace A263511

/-- `ceil((C(2*n+1, 2)+2)/2)` -/
def P13775171136519956311.Spec : Prop :=
  ∀ n, P13775171136519956311.a n = A263511 n

end A263511

/-! ## A263511.P2674755731998701578

`floor((C(2*n+1, 2)+3)/2)`
-/

namespace A263511.P2674755731998701578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) 2 + 3 : ℚ) / 2⌋

end

end A263511.P2674755731998701578

namespace A263511

/-- `floor((C(2*n+1, 2)+3)/2)` -/
def P2674755731998701578.Spec : Prop :=
  ∀ n, P2674755731998701578.a n = A263511 n

end A263511

/-! ## A263511.P8776060907154237052

`round((C(2*n+1, 2)+2)/2)`
-/

namespace A263511.P8776060907154237052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 1) 2 + 2 : ℚ) / 2)

end

end A263511.P8776060907154237052

namespace A263511

/-- `round((C(2*n+1, 2)+2)/2)` -/
def P8776060907154237052.Spec : Prop :=
  ∀ n, P8776060907154237052.a n = A263511 n

end A263511

/-! ## A263511.P13548177467614293522

`ceil((lcm(n, 2*n+1)+2)/2)`
-/

namespace A263511.P13548177467614293522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm n (2 * n + 1) + 2 : ℚ) / 2⌉

end

end A263511.P13548177467614293522

namespace A263511

/-- `ceil((lcm(n, 2*n+1)+2)/2)` -/
def P13548177467614293522.Spec : Prop :=
  ∀ n, P13548177467614293522.a n = A263511 n

end A263511

/-! ## A263511.P13187419648993187776

`∑[eq[0, (n-1)*and(2, n+2)]]`
-/

namespace A263511.P13187419648993187776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 2 (n + 2) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263511.P13187419648993187776

namespace A263511

/-- `∑[eq[0, (n-1)*and(2, n+2)]]` -/
def P13187419648993187776.Spec : Prop :=
  ∀ n, (P13187419648993187776.a n : ℤ) = A263511 n

end A263511

/-!
# A263512: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 filled by rows with each element moved a city block distance of 0 or 1.

The programs for A263512, there is no canonical definition to state claims against.
-/

/-! ## A263512.P18415855046899763491

`A263519((n+1)²+n²)`
-/

namespace A263512.P18415855046899763491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 ((n + 1) ^ 2 + n ^ 2)

end

end A263512.P18415855046899763491

/-!
# A263513: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263513, there is no canonical definition to state claims against.
-/

/-! ## A263513.P16351792794863243188

`A263519(∑[n+2])`
-/

namespace A263513.P16351792794863243188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263513.P16351792794863243188

/-! ## A263513.P4503591857846060095

`record[A263519(abs(A201163(n)))]`
-/

namespace A263513.P4503591857846060095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263513.P4503591857846060095

/-! ## A263513.P17723032594045295886

`A263519(A132336(n+2))+A010872(3*n)`
-/

namespace A263513.P17723032594045295886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A132336 (n + 2)).toNat + A010872 (3 * n)

end

end A263513.P17723032594045295886

/-!
# A263514: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263514, there is no canonical definition to state claims against.
-/

/-! ## A263514.P16129362506699649947

`A263519(∑[n+3]+1)`
-/

namespace A263514.P16129362506699649947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263514.P16129362506699649947

/-! ## A263514.P14477090264045843991

`A263519(A034856(n+2))+A097946(2*n+3)`
-/

namespace A263514.P14477090264045843991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A034856 (n + 2)).toNat + A097946 (2 * n + 3)

end

end A263514.P14477090264045843991

/-!
# A263515: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263515, there is no canonical definition to state claims against.
-/

/-! ## A263515.P5656224423158371250

`A263519(A141214(n+1))`
-/

namespace A263515.P5656224423158371250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A141214 (n + 1)).toNat

end

end A263515.P5656224423158371250

/-! ## A263515.P8439986419093573111

`A263519(A155212(n)+5)`
-/

namespace A263515.P8439986419093573111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A155212 n + 5).toNat

end

end A263515.P8439986419093573111

/-! ## A263515.P12401840241274553525

`A263519(A056000(n)+7)`
-/

namespace A263515.P12401840241274553525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A056000 n + 7).toNat

end

end A263515.P12401840241274553525

/-! ## A263515.P10881369298937537822

`A263519(eq[3, A193592(n)])`
-/

namespace A263515.P10881369298937537822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263515.P10881369298937537822

/-! ## A263515.P5441277363689018297

`A263519(A052905(n+1)+2)`
-/

namespace A263515.P5441277363689018297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A052905 (n + 1) + 2).toNat

end

end A263515.P5441277363689018297

/-!
# A263516: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263516, there is no canonical definition to state claims against.
-/

/-! ## A263516.P6499957415270057815

`A263519(A056115(n)+11)`
-/

namespace A263516.P6499957415270057815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A056115 n + 11).toNat

end

end A263516.P6499957415270057815

/-! ## A263516.P11938863143439579579

`A263519(eq[4, A193592(n)])`
-/

namespace A263516.P11938863143439579579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263516.P11938863143439579579

/-! ## A263516.P6190715926462509065

`A263519(Δ[A023545(n+1)])`
-/

namespace A263516.P6190715926462509065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (f1 (n + 1) - f1 n).toNat

end

end A263516.P6190715926462509065

/-! ## A263516.P15242177114601139796

`A263519(eq[3, A144018(n+1)])`
-/

namespace A263516.P15242177114601139796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263516.P15242177114601139796

/-! ## A263516.P16288630051148873866

`A263519(eq[10, A239829(n+1)])`
-/

namespace A263516.P16288630051148873866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263516.P16288630051148873866

/-!
# A263517: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263517, there is no canonical definition to state claims against.
-/

/-! ## A263517.P4744514297027904773

`A263519(A052905(n+3))`
-/

namespace A263517.P4744514297027904773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A052905 (n + 3)).toNat

end

end A263517.P4744514297027904773

/-! ## A263517.P17067155321644053397

`A263519(eq[3, A219347(n)])`
-/

namespace A263517.P17067155321644053397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263517.P17067155321644053397

/-! ## A263517.P15333548707347501652

`A263519(A055999(n+3)+1)`
-/

namespace A263517.P15333548707347501652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A055999 (n + 3) + 1).toNat

end

end A263517.P15333548707347501652

/-! ## A263517.P16191752386191353620

`A263519(A000217(n+6)-5)`
-/

namespace A263517.P16191752386191353620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A000217 (n + 6) - 5).toNat

end

end A263517.P16191752386191353620

/-! ## A263517.P6322799000412836450

`A263519(Δ[Δ[A006504(n+1)]])`
-/

namespace A263517.P6322799000412836450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (f1 (n + 1) - f1 n).toNat

end

end A263517.P6322799000412836450

/-!
# A263518: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263518, there is no canonical definition to state claims against.
-/

/-! ## A263518.P2534589875649869320

`A263519(A055999(n+4))`
-/

namespace A263518.P2534589875649869320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A055999 (n + 4)).toNat

end

end A263518.P2534589875649869320

/-! ## A263518.P12236282559379891459

`A263519(eq[2, A219347(n)-2])`
-/

namespace A263518.P12236282559379891459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263518.P12236282559379891459

/-!
# A263520: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263520, there is no canonical definition to state claims against.
-/

/-! ## A263520.P9165997511930606710

`A263519(∑[n+1]+2)`
-/

namespace A263520.P9165997511930606710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263520.P9165997511930606710

/-!
# A263521: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263521, there is no canonical definition to state claims against.
-/

/-! ## A263521.P5052449325473283696

`A263519(∑[n+2]+4)`
-/

namespace A263521.P5052449325473283696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263521.P5052449325473283696

/-! ## A263521.P9667862951099130772

`lcm((-1)^n, A263519(A167614(n+1)))`
-/

namespace A263521.P9667862951099130772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A263519 (A167614 (n + 1)).toNat)

end

end A263521.P9667862951099130772

/-! ## A263521.P18086154593813582442

`A263519(A167614(n+1))+A025439(n)`
-/

namespace A263521.P18086154593813582442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A167614 (n + 1)).toNat + A025439 n

end

end A263521.P18086154593813582442

/-! ## A263521.P13505044221573468177

`A263519(A167614(n+1))+A178798(n)`
-/

namespace A263521.P13505044221573468177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A167614 (n + 1)).toNat + A178798 n

end

end A263521.P13505044221573468177

/-! ## A263521.P6295285707511757765

`or(A025428(n), A263519(A167614(n+1)))`
-/

namespace A263521.P6295285707511757765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025428 n) (A263519 (A167614 (n + 1)).toNat)

end

end A263521.P6295285707511757765

/-!
# A263522: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263522, there is no canonical definition to state claims against.
-/

/-! ## A263522.P14770167822202723977

`A263519(A141214(n)+7)`
-/

namespace A263522.P14770167822202723977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A141214 n + 7).toNat

end

end A263522.P14770167822202723977

/-! ## A263522.P3295759151015036138

`A263519(A052905(n)+9)`
-/

namespace A263522.P3295759151015036138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A052905 n + 9).toNat

end

end A263522.P3295759151015036138

/-! ## A263522.P11702483173415881801

`A263519(A055999(n)+10)`
-/

namespace A263522.P11702483173415881801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A055999 n + 10).toNat

end

end A263522.P11702483173415881801

/-! ## A263522.P17410957414339292773

`A263519(A167614(n+2)+1)`
-/

namespace A263522.P17410957414339292773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A167614 (n + 2) + 1).toNat

end

end A263522.P17410957414339292773

/-! ## A263522.P11778725921718123177

`A263519(eq[5, A131818(n+1)])`
-/

namespace A263522.P11778725921718123177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263522.P11778725921718123177

/-!
# A263523: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263523, there is no canonical definition to state claims against.
-/

/-! ## A263523.P5292986612621359929

`A263519(A167499(n+3))`
-/

namespace A263523.P5292986612621359929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A167499 (n + 3)).toNat

end

end A263523.P5292986612621359929

/-! ## A263523.P9629512206895231354

`A263519(A155212(n)+13)`
-/

namespace A263523.P9629512206895231354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A155212 n + 13).toNat

end

end A263523.P9629512206895231354

/-! ## A263523.P1938849588779129254

`A263519(A056000(n)+15)`
-/

namespace A263523.P1938849588779129254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A056000 n + 15).toNat

end

end A263523.P1938849588779129254

/-! ## A263523.P1388549511403634817

`A263519(eq[7, A066657(n)])`
-/

namespace A263523.P1388549511403634817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263523.P1388549511403634817

/-! ## A263523.P1802072533475757719

`A263519(A167614(n+3)+2)`
-/

namespace A263523.P1802072533475757719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A167614 (n + 3) + 2).toNat

end

end A263523.P1802072533475757719

/-!
# A263524: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263524, there is no canonical definition to state claims against.
-/

/-! ## A263524.P9078136337803619981

`A263519(A056115(n)+21)`
-/

namespace A263524.P9078136337803619981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A056115 n + 21).toNat

end

end A263524.P9078136337803619981

/-! ## A263524.P14585699897404055345

`A263519(A167499(n+4)+1)`
-/

namespace A263524.P14585699897404055345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A167499 (n + 4) + 1).toNat

end

end A263524.P14585699897404055345

/-! ## A263524.P5984927913304325660

`A263519(A000217(n+5)+6)`
-/

namespace A263524.P5984927913304325660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A000217 (n + 5) + 6).toNat

end

end A263524.P5984927913304325660

/-! ## A263524.P7190861125913348144

`A263519(A141214(n+2)+9)`
-/

namespace A263524.P7190861125913348144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (A141214 (n + 2) + 9).toNat

end

end A263524.P7190861125913348144

/-! ## A263524.P16279956883386002043

`A263519(eq[7, A131818(n+1)])`
-/

namespace A263524.P16279956883386002043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263524.P16279956883386002043

/-!
# A263525: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 filled by rows with each element moved a city block distance of 0 or 1, and rows and columns in increasing lexicographic order.

The programs for A263525, there is no canonical definition to state claims against.
-/

/-! ## A263525.P12755739127686936724

`A263519(eq[8, A131818(n+1)])`
-/

namespace A263525.P12755739127686936724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263525.P12755739127686936724

/-!
# A263526: Expansion of f(x, x)^2 / (f(x^3, x^3) * f(x, x^5)) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A263526, there is no canonical definition to state claims against.
-/

/-! ## A263526.P18169555036544901545

`(-1)^n*A132301(n)`
-/

namespace A263526.P18169555036544901545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132301 n

end

end A263526.P18169555036544901545

/-! ## A263526.P15950804388826462067

`A010684(n)*A062242(n)`
-/

namespace A263526.P15950804388826462067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A062242 n

end

end A263526.P15950804388826462067

/-! ## A263526.P6229943732499724164

`A132301(n)/A033999(n)`
-/

namespace A263526.P6229943732499724164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132301 n : ℚ) / (A033999 n : ℚ)

end

end A263526.P6229943732499724164

/-! ## A263526.P598850095487617017

`(2-A033999(n))*A062242(n)`
-/

namespace A263526.P598850095487617017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A062242 n

end

end A263526.P598850095487617017

/-! ## A263526.P13641850423185956679

`2*A062242(n)-A062244(n)`
-/

namespace A263526.P13641850423185956679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062242 n - A062244 n

end

end A263526.P13641850423185956679

/-! ## A263526.P11168753762174433167

`A062242(n)-(A132301(n)-A062244(n))`
-/

namespace A263526.P11168753762174433167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 n - (A132301 n - A062244 n)

end

end A263526.P11168753762174433167

/-! ## A263526.P1626846229582642299

`A132301(n)/A145977(n)*A213267(n)`
-/

namespace A263526.P1626846229582642299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132301 n : ℚ) / (A145977 n : ℚ) * (A213267 n : ℚ)

end

end A263526.P1626846229582642299

/-! ## A263526.P17914612711192015423

`A132301(n)/A261325(n)*A261446(n)`
-/

namespace A263526.P17914612711192015423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132301 n : ℚ) / (A261325 n : ℚ) * (A261446 n : ℚ)

end

end A263526.P17914612711192015423

/-! ## A263526.P10609150570991215041

`A038712(n²+1)*A062242(n)`
-/

namespace A263526.P10609150570991215041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n ^ 2 + 1) * A062242 n

end

end A263526.P10609150570991215041

/-!
# A263527: Expansion of phi(-x^3) * f(-x^6)^3 / f(-x^2) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A263527, there is no canonical definition to state claims against.
-/

/-! ## A263527.P8336734678039904814

`(-1)^n*A261444(n)`
-/

namespace A263527.P8336734678039904814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A261444 n

end

end A263527.P8336734678039904814

/-! ## A263527.P226577795013127535

`A261444(n)/A033999(n)`
-/

namespace A263527.P226577795013127535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261444 n : ℚ) / (A033999 n : ℚ)

end

end A263527.P226577795013127535

/-! ## A263527.P13231020775640335768

`A261444(n)/A009001(2*n)`
-/

namespace A263527.P13231020775640335768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261444 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A263527.P13231020775640335768

/-! ## A263527.P10358249174068328675

`A261444(n)/A057077(A057077(n)+n)`
-/

namespace A263527.P10358249174068328675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261444 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A263527.P10358249174068328675

/-! ## A263527.P1066627780719384427

`A261444(n)/A057077(2*n)`
-/

namespace A263527.P1066627780719384427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261444 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A263527.P1066627780719384427

/-! ## A263527.P7034838305827189472

`A033999(n)*A261426(2*n+1)`
-/

namespace A263527.P7034838305827189472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261426 (2 * n + 1)

end

end A263527.P7034838305827189472

/-!
# A263528: Expansion of (psi(x) * psi(x^3) / f(-x^3)^2)^2 in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A263528, there is no canonical definition to state claims against.
-/

/-! ## A263528.P4231997681743121699

`A293387(Δ[n²])/2`
-/

namespace A263528.P4231997681743121699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293387 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A263528.P4231997681743121699

/-! ## A263528.P4035671442108732788

`abs(A262930(2*n+1)/2)`
-/

namespace A263528.P4035671442108732788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A262930 (2 * n + 1) : ℚ) / 2|

end

end A263528.P4035671442108732788

/-! ## A263528.P17358008587995270705

`gcd(A262930(2*n+1)/2, A000038(n))`
-/

namespace A263528.P17358008587995270705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A262930 (2 * n + 1) : ℚ) / 2)) (A000038 n)

end

end A263528.P17358008587995270705

/-! ## A263528.P13796811572956635595

`A261154(2*n+1)/A061347(n+1)²`
-/

namespace A263528.P13796811572956635595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261154 (2 * n + 1) : ℚ) / (A061347 (n + 1) ^ 2 : ℚ)

end

end A263528.P13796811572956635595

/-! ## A263528.P1077201694829617508

`A262930(2*n+1)/(A000038(n+1)-2)`
-/

namespace A263528.P1077201694829617508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262930 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A263528.P1077201694829617508

/-! ## A263528.P10382696367790418170

`lcm(A000034(n+1), A262930(2*n+1))/2`
-/

namespace A263528.P10382696367790418170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A262930 (2 * n + 1)) : ℚ) / 2

end

end A263528.P10382696367790418170

/-! ## A263528.P11329033350179842969

`A262930(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A263528.P11329033350179842969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262930 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A263528.P11329033350179842969

/-! ## A263528.P17468791910332209771

`A262930(2*n+1)/(A166698(2*(n+1))-2)`
-/

namespace A263528.P17468791910332209771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262930 (2 * n + 1) : ℚ) / (A166698 (2 * (n + 1)) - 2 : ℚ)

end

end A263528.P17468791910332209771

/-! ## A263528.P1285596460882407015

`2*A123649(2*n+1)/A132954(2*n+1)`
-/

namespace A263528.P1285596460882407015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A123649 (2 * n + 1) : ℚ) / (A132954 (2 * n + 1) : ℚ))

end

end A263528.P1285596460882407015

/-! ## A263528.P14878820441728800889

`2/A132954(2*n+1)*A213265(2*n+1)`
-/

namespace A263528.P14878820441728800889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A132954 (2 * n + 1) : ℚ) * (A213265 (2 * n + 1) : ℚ)

end

end A263528.P14878820441728800889

/-! ## A263528.P13331350576676977806

`A261321(2*n+1)/(2*A132954(2*n+1))`
-/

namespace A263528.P13331350576676977806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 (2 * n + 1) : ℚ) / (2 * A132954 (2 * n + 1) : ℚ)

end

end A263528.P13331350576676977806

/-! ## A263528.P5011907677746608601

`A262930(2*n+1)/A000034(2*n+1)-A262930(2*n+1)`
-/

namespace A263528.P5011907677746608601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262930 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A262930 (2 * n + 1) : ℚ)

end

end A263528.P5011907677746608601

/-!
# A263529: Binomial transform of double factorial n!! (A006882).

The programs for A263529, the canonical program `A263529.P3881219160965345252` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263529 has offset 0).

The definition of A263529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263529.P3881219160965345252

`Δ[A187044(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263529

/-- `Δ[A187044(n)]` -/
def P3881219160965345252.Spec : Prop :=
  ∀ n, P3881219160965345252.a n = A263529 n

theorem P3881219160965345252.correct : P3881219160965345252.Spec := by
  intro n
  simp only [A263529]

end A263529

/-! ## A263529.P1415930376733540097

`Δ[A193361(n+2)]`
-/

namespace A263529.P1415930376733540097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263529.P1415930376733540097

namespace A263529

/-- `Δ[A193361(n+2)]` -/
def P1415930376733540097.Spec : Prop :=
  ∀ n, P1415930376733540097.a n = A263529 n

end A263529

/-! ## A263529.P18302672272171850794

`n*A193361(n+1)+1`
-/

namespace A263529.P18302672272171850794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A193361 (n + 1) + 1

end

end A263529.P18302672272171850794

namespace A263529

/-- `n*A193361(n+1)+1` -/
def P18302672272171850794.Spec : Prop :=
  ∀ n, P18302672272171850794.a n = A263529 n

end A263529

/-! ## A263529.P6043277196372723033

`Δ[A186738(n)+A122031(n)]`
-/

namespace A263529.P6043277196372723033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186738 n + A122031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263529.P6043277196372723033

namespace A263529

/-- `Δ[A186738(n)+A122031(n)]` -/
def P6043277196372723033.Spec : Prop :=
  ∀ n, P6043277196372723033.a n = A263529 n

end A263529

/-! ## A263529.P7162981123833837531

`A187044(n+1)-A187044(n)`
-/

namespace A263529.P7162981123833837531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187044 (n + 1) - A187044 n

end

end A263529.P7162981123833837531

namespace A263529

/-- `A187044(n+1)-A187044(n)` -/
def P7162981123833837531.Spec : Prop :=
  ∀ n, P7162981123833837531.a n = A263529 n

theorem P7162981123833837531.correct : P7162981123833837531.Spec := by
  intro n
  simp only [A263529, Nat.add_sub_cancel, A263529.P7162981123833837531.a, A263529.P3881219160965345252.f1, A263529.P3881219160965345252.a, SequenceMachineLib.memo_apply]

end A263529

/-! ## A263529.P9940937197605136513

`Δ[A186739(n+1)+A000085(n)]`
-/

namespace A263529.P9940937197605136513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 (n + 1) + A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263529.P9940937197605136513

namespace A263529

/-- `Δ[A186739(n+1)+A000085(n)]` -/
def P9940937197605136513.Spec : Prop :=
  ∀ n, P9940937197605136513.a n = A263529 n

end A263529

/-! ## A263529.P8492660432656852374

`A193361(n+3)-A193361(n+2)`
-/

namespace A263529.P8492660432656852374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193361 (n + 3) - A193361 (n + 2)

end

end A263529.P8492660432656852374

namespace A263529

/-- `A193361(n+3)-A193361(n+2)` -/
def P8492660432656852374.Spec : Prop :=
  ∀ n, P8492660432656852374.a n = A263529 n

end A263529

/-!
# A263532: G.f. A(x) satisfies: A(x) = x + B(A(x))^2 such that B(x) = x + A(B(x))^3, where B(x) is the g.f. of A263533.

The programs for A263532, there is no canonical definition to state claims against.
-/

/-! ## A263532.P5903479231589267896

`A115384(A284716(n+1))`
-/

namespace A263532.P5903479231589267896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A284716 (n + 1)).toNat

end

end A263532.P5903479231589267896

/-! ## A263532.P15014952406149267533

`A194920(A300442(Δ[n²]))`
-/

namespace A263532.P15014952406149267533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A300442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A263532.P15014952406149267533

/-! ## A263532.P1819642738570600764

`A008620(A206639(n)+A000930(n))`
-/

namespace A263532.P1819642738570600764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A206639 n + A000930 n).toNat

end

end A263532.P1819642738570600764

/-!
# A263533: G.f. B(x) satisfies: B(x) = x + A(B(x))^3 such that A(x) = x + B(A(x))^2, where A(x) is the g.f. of A263532.

The programs for A263533, there is no canonical definition to state claims against.
-/

/-! ## A263533.P16165243942530996928

`n*A122347(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A263533.P16165243942530996928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (n : ℤ) * A122347 (a (n - 1)).toNat

end

end A263533.P16165243942530996928

/-! ## A263533.P16593801081601000934

`A192512(A304788(n))-n`
-/

namespace A263533.P16593801081601000934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192512 (A304788 n).toNat - (n : ℤ)

end

end A263533.P16593801081601000934

/-! ## A263533.P14525791006956015568

`A008676(n*A200222(n))`
-/

namespace A263533.P14525791006956015568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 ((n : ℤ) * A200222 n).toNat

end

end A263533.P14525791006956015568

/-!
# A263536: Row sum of an equilateral triangle tiled with the 3,4,5 Pythagorean triple.

The programs for A263536, the canonical program `A263536.P14833480112042374292` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263536 has offset 1).

The definition of A263536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263536.P14833480112042374292

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=5, a(1)=7, a(2)=12, a(3)=17`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263536

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P14833480112042374292.Spec : Prop :=
  ∀ n, P14833480112042374292.a n = A263536 (n + 1)

theorem P14833480112042374292.correct : P14833480112042374292.Spec := by
  intro n
  simp only [A263536, Nat.add_sub_cancel]

end A263536

/-! ## A263536.P7216405636833766458

`record[xor(3, 3*n)+2]`
-/

namespace A263536.P7216405636833766458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (3 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263536.P7216405636833766458

namespace A263536

/-- `record[xor(3, 3*n)+2]` -/
def P7216405636833766458.Spec : Prop :=
  ∀ n, (P7216405636833766458.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P15783808238065902161

`a(n-3)+12` with `a(0)=5, a(1)=7, a(2)=12`
-/

namespace A263536.P15783808238065902161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 7, 12] fun n a =>
  a (n - 3) + 12

end

end A263536.P15783808238065902161

namespace A263536

/-- `a(n-3)+12` -/
def P15783808238065902161.Spec : Prop :=
  ∀ n, (P15783808238065902161.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P7839781221421875375

`∑[abs(a(n-3))]` with `a(0)=5, a(1)=2, a(2)=5`
-/

namespace A263536.P7839781221421875375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P7839781221421875375

namespace A263536

/-- `∑[abs(a(n-3))]` -/
def P7839781221421875375.Spec : Prop :=
  ∀ n, (P7839781221421875375.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P10209050326911034678

`∑[dr(a(n-3))]` with `a(0)=5, a(1)=2, a(2)=5`
-/

namespace A263536.P10209050326911034678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2, 5] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P10209050326911034678

namespace A263536

/-- `∑[dr(a(n-3))]` -/
def P10209050326911034678.Spec : Prop :=
  ∀ n, (P10209050326911034678.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P2041348173869078313

`∑[floor(a(n-3))]` with `a(0)=5, a(1)=2, a(2)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A263536.P2041348173869078313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P2041348173869078313

namespace A263536

/-- `∑[floor(a(n-3))]` -/
def P2041348173869078313.Spec : Prop :=
  ∀ n, (P2041348173869078313.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P7312277097623694748

`∑[ceil(a(n-3))]` with `a(0)=5, a(1)=2, a(2)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A263536.P7312277097623694748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P7312277097623694748

namespace A263536

/-- `∑[ceil(a(n-3))]` -/
def P7312277097623694748.Spec : Prop :=
  ∀ n, (P7312277097623694748.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P9436105276719624287

`∑[round(a(n-3))]` with `a(0)=5, a(1)=2, a(2)=5`

`round` is left out, it is the identity on integers.
-/

namespace A263536.P9436105276719624287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P9436105276719624287

namespace A263536

/-- `∑[round(a(n-3))]` -/
def P9436105276719624287.Spec : Prop :=
  ∀ n, (P9436105276719624287.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P14158095133823182811

`∑[gcd(2, n%3)²+1]`
-/

namespace A263536.P14158095133823182811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n % 3) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P14158095133823182811

namespace A263536

/-- `∑[gcd(2, n%3)²+1]` -/
def P14158095133823182811.Spec : Prop :=
  ∀ n, (P14158095133823182811.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P9151646883322755672

`∑[5%dr(3*(n+3))]`
-/

namespace A263536.P9151646883322755672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 % SequenceMachineLib.digitalRoot (3 * (n + 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P9151646883322755672

namespace A263536

/-- `∑[5%dr(3*(n+3))]` -/
def P9151646883322755672.Spec : Prop :=
  ∀ n, (P9151646883322755672.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P2665395502354854588

`∑[5-3*∑[n]%3]`
-/

namespace A263536.P2665395502354854588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((3 * ((∑ j ∈ Finset.range (n + 1), f2 j) % 3) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P2665395502354854588

namespace A263536

/-- `∑[5-3*∑[n]%3]` -/
def P2665395502354854588.Spec : Prop :=
  ∀ n, P2665395502354854588.a n = A263536 (n + 1)

end A263536

/-! ## A263536.P16942282346376619306

`∑[a(n-3)%6]` with `a(0)=5, a(1)=2, a(2)=5`
-/

namespace A263536.P16942282346376619306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2, 5] fun n f1 =>
  f1 (n - 3) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P16942282346376619306

namespace A263536

/-- `∑[a(n-3)%6]` -/
def P16942282346376619306.Spec : Prop :=
  ∀ n, (P16942282346376619306.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P4248650708245561819

`∑[gcd(10, a(n-3))]` with `a(0)=5, a(1)=2, a(2)=5`
-/

namespace A263536.P4248650708245561819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2, 5] fun n f1 =>
  Nat.gcd 10 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P4248650708245561819

namespace A263536

/-- `∑[gcd(10, a(n-3))]` -/
def P4248650708245561819.Spec : Prop :=
  ∀ n, (P4248650708245561819.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P222131705128258667

`∑[dr(3*(1-n)²+2)]`
-/

namespace A263536.P222131705128258667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * (1 - (n : ℤ)) ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P222131705128258667

namespace A263536

/-- `∑[dr(3*(1-n)²+2)]` -/
def P222131705128258667.Spec : Prop :=
  ∀ n, (P222131705128258667.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P1169774099957948171

`∑[∑[ogf((5+2x+5x^2)/(1+x+x^2))]]`
-/

namespace A263536.P1169774099957948171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2, 5] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P1169774099957948171

namespace A263536

/-- `∑[∑[ogf((5+2x+5x^2)/(1+x+x^2))]]` -/
def P1169774099957948171.Spec : Prop :=
  ∀ n, P1169774099957948171.a n = A263536 (n + 1)

end A263536

/-! ## A263536.P18018898928164559110

`ogf((5+2x+5x^2)/(1-x-x^3+x^4))`
-/

namespace A263536.P18018898928164559110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2, 5] [1, -1, 0, -1, 1] n

end

end A263536.P18018898928164559110

namespace A263536

/-- `ogf((5+2x+5x^2)/(1-x-x^3+x^4))` -/
def P18018898928164559110.Spec : Prop :=
  ∀ n, P18018898928164559110.a n = A263536 (n + 1)

end A263536

/-! ## A263536.P10869011227146284716

`4*n+3+(n+2)%3`
-/

namespace A263536.P10869011227146284716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3 + (n + 2) % 3

end

end A263536.P10869011227146284716

namespace A263536

/-- `4*n+3+(n+2)%3` -/
def P10869011227146284716.Spec : Prop :=
  ∀ n, (P10869011227146284716.a n : ℤ) = A263536 (n + 1)

end A263536

/-! ## A263536.P14140334503872972959

`∑[(a(n-3)^(1/2))²]` with `a(0)=5, a(1)=2, a(2)=5`
-/

namespace A263536.P14140334503872972959
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [5, 2, 5] fun n f1 =>
  (f1 (n - 3) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P14140334503872972959

namespace A263536

/-- `∑[(a(n-3)^(1/2))²]` -/
def P14140334503872972959.Spec : Prop :=
  ∀ n, P14140334503872972959.a n = (A263536 (n + 1) : ℝ)

end A263536

/-! ## A263536.P7245952925626979711

`∑[2*a(n-3)-a(n-3)]` with `a(0)=5, a(1)=2, a(2)=5`
-/

namespace A263536.P7245952925626979711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2, 5] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263536.P7245952925626979711

namespace A263536

/-- `∑[2*a(n-3)-a(n-3)]` -/
def P7245952925626979711.Spec : Prop :=
  ∀ n, P7245952925626979711.a n = A263536 (n + 1)

end A263536

/-! ## A263536.P472951266746943952

`Δ[(gcd(n+2, n-1)+(2*n+1)²)/2]`
-/

namespace A263536.P472951266746943952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) + (2 * n + 1) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263536.P472951266746943952

namespace A263536

/-- `Δ[(gcd(n+2, n-1)+(2*n+1)²)/2]` -/
def P472951266746943952.Spec : Prop :=
  ∀ n, P472951266746943952.a n = (A263536 (n + 1) : ℚ)

end A263536

/-!
# A263537: Integers k such that A098531(k) is divisible by A000071(k+2).

The programs for A263537, the canonical program `A263537.P2106141700558598649` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263537 has offset 1).

The definition of A263537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263537.P2106141700558598649

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=13, a(3)=25, a(4)=31, a(5)=43`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263537

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P2106141700558598649.Spec : Prop :=
  ∀ n, P2106141700558598649.a n = A263537 (n + 1)

theorem P2106141700558598649.correct : P2106141700558598649.Spec := by
  intro n
  simp only [A263537, Nat.add_sub_cancel]

end A263537

/-! ## A263537.P16536814351924590253

`A033627(A143051(3*n)+A008612(2*n))`
-/

namespace A263537.P16536814351924590253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A143051 (3 * n) + A008612 (2 * n)).toNat

end

end A263537.P16536814351924590253

namespace A263537

/-- `A033627(A143051(3*n)+A008612(2*n))` -/
def P16536814351924590253.Spec : Prop :=
  ∀ n, P16536814351924590253.a n = A263537 (n + 1)

end A263537

/-! ## A263537.P11801790411620653995

`record[A019426(A032742(n+1)+A008611(n))]`
-/

namespace A263537.P11801790411620653995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A032742 (n + 1) + A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263537.P11801790411620653995

namespace A263537

/-- `record[A019426(A032742(n+1)+A008611(n))]` -/
def P11801790411620653995.Spec : Prop :=
  ∀ n, P11801790411620653995.a n = A263537 (n + 1)

end A263537

/-! ## A263537.P14117278745947480917

`A004280(A236348(n)+A130824(n))`
-/

namespace A263537.P14117278745947480917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A236348 n + A130824 n).toNat

end

end A263537.P14117278745947480917

namespace A263537

/-- `A004280(A236348(n)+A130824(n))` -/
def P14117278745947480917.Spec : Prop :=
  ∀ n, P14117278745947480917.a n = A263537 (n + 1)

end A263537

/-! ## A263537.P4201263906706313192

`record[A111701(∑[A168400(n)])]`
-/

namespace A263537.P4201263906706313192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263537.P4201263906706313192

namespace A263537

/-- `record[A111701(∑[A168400(n)])]` -/
def P4201263906706313192.Spec : Prop :=
  ∀ n, P4201263906706313192.a n = A263537 (n + 1)

end A263537

/-! ## A263537.P14250968893603794808

`record[A014681(A001281(A065187(n+1)))]`
-/

namespace A263537.P14250968893603794808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A001281 (A065187 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263537.P14250968893603794808

namespace A263537

/-- `record[A014681(A001281(A065187(n+1)))]` -/
def P14250968893603794808.Spec : Prop :=
  ∀ n, P14250968893603794808.a n = A263537 (n + 1)

end A263537

/-!
# A263538: Expansion of 3 * a(q^2) * b(q^2) * c(q^2) / (b(q) * c(q)^2) in powers of q where a(), b(), c() are cubic AGM theta functions.

The programs for A263538, there is no canonical definition to state claims against.
-/

/-! ## A263538.P2485889660532222788

`A262930(2*n)`
-/

namespace A263538.P2485889660532222788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262930 (2 * n)

end

end A263538.P2485889660532222788

/-! ## A263538.P3522204565411263431

`A293387(2*n)`
-/

namespace A263538.P3522204565411263431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293387 (2 * n)

end

end A263538.P3522204565411263431

/-! ## A263538.P3520771626663467084

`xor(1, xor(1, A262930(n+n)))`
-/

namespace A263538.P3520771626663467084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A262930 (n + n)))

end

end A263538.P3520771626663467084

/-! ## A263538.P882599794101803848

`xor(1, xor(1, A293387(n+n)))`
-/

namespace A263538.P882599794101803848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A293387 (n + n)))

end

end A263538.P882599794101803848

/-! ## A263538.P5735943255714458332

`A217771(2*n)/A132954(2*n)`
-/

namespace A263538.P5735943255714458332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217771 (2 * n) : ℚ) / (A132954 (2 * n) : ℚ)

end

end A263538.P5735943255714458332

/-! ## A263538.P17605361045474480086

`A261321(2*n)/A132954(2*n)`
-/

namespace A263538.P17605361045474480086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 (2 * n) : ℚ) / (A132954 (2 * n) : ℚ)

end

end A263538.P17605361045474480086

/-! ## A263538.P13028825676187804113

`A262930(n+n)%A000041(A286666(n+2))`
-/

namespace A263538.P13028825676187804113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262930 (n + n)) (A000041 (A286666 (n + 2)).toNat)

end

end A263538.P13028825676187804113

/-!
# A263543: Number of (n+2)X(1+2) arrays of permutations of 0..n*3+5 with each element moved 0 or 1 knight moves and no more than 3 elements left unmoved.

The programs for A263543, there is no canonical definition to state claims against.
-/

/-! ## A263543.P9450170656746012300

`A263545(∑[n]+1)`
-/

namespace A263543.P9450170656746012300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263545 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263543.P9450170656746012300

/-! ## A263543.P14666528947452032769

`lcm(2, A263545(A000124(n)))`
-/

namespace A263543.P14666528947452032769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263545 (A000124 n).toNat)

end

end A263543.P14666528947452032769

/-! ## A263543.P5284310747399256381

`record[root(A263545(n+1), A007318(n))]`
-/

namespace A263543.P5284310747399256381
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263545 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263543.P5284310747399256381

/-!
# A263544: Number of (n+2) X (2+2) arrays of permutations of 0..n*4+7 with each element moved 0 or 1 knight moves and no more than 3 elements left unmoved.

The programs for A263544, there is no canonical definition to state claims against.
-/

/-! ## A263544.P15749193244164279587

`A263545(∑[n+1]+2)`
-/

namespace A263544.P15749193244164279587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263545 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263544.P15749193244164279587

/-!
# A263548: Expansion of f(x, x) * f(x^2, x^10) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A263548, there is no canonical definition to state claims against.
-/

/-! ## A263548.P14396058157177810877

`A000377(3*n+2)`
-/

namespace A263548.P14396058157177810877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (3 * n + 2)

end

end A263548.P14396058157177810877

/-! ## A263548.P11786149498966106099

`A192013(3*n+2)`
-/

namespace A263548.P11786149498966106099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (3 * n + 2)

end

end A263548.P11786149498966106099

/-! ## A263548.P10693670256337841659

`A115660(6*n+4)`
-/

namespace A263548.P10693670256337841659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (6 * n + 4)

end

end A263548.P10693670256337841659

/-! ## A263548.P15629212468921476941

`abs(A258587(n))`
-/

namespace A263548.P15629212468921476941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258587 n|

end

end A263548.P15629212468921476941

/-! ## A263548.P2995198216658288623

`A033999(n)*A258587(n)`
-/

namespace A263548.P2995198216658288623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258587 n

end

end A263548.P2995198216658288623

/-! ## A263548.P13460278504202332734

`gcd(A000038(n), A258587(n))`
-/

namespace A263548.P13460278504202332734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258587 n)

end

end A263548.P13460278504202332734

/-! ## A263548.P4074507490972656382

`lcm(A000034(n), A258587(n))`
-/

namespace A263548.P4074507490972656382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A258587 n)

end

end A263548.P4074507490972656382

/-! ## A263548.P13249872227832882926

`A129402(A173732(n))`
-/

namespace A263548.P13249872227832882926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (A173732 n).toNat

end

end A263548.P13249872227832882926

/-! ## A263548.P159936899521839282

`A263571(Δ[n²])`
-/

namespace A263548.P159936899521839282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263571 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A263548.P159936899521839282

/-! ## A263548.P7596313218532004955

`abs(A279947(2*n+1))`
-/

namespace A263548.P7596313218532004955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279947 (2 * n + 1)|

end

end A263548.P7596313218532004955

/-! ## A263548.P7611130798439185808

`filter[A263571(2*n+1), A071374(#)]`
-/

namespace A263548.P7611130798439185808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263571 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071374 (f1 j).toNat = 1) n)

end

end A263548.P7611130798439185808

/-! ## A263548.P2549446281893776480

`filter[A263571(2*n+1), A102609(#)]`
-/

namespace A263548.P2549446281893776480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263571 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A263548.P2549446281893776480

/-! ## A263548.P17433252244320094567

`∑{d}[A279947(2*n+1), A000010(#)]`
-/

namespace A263548.P17433252244320094567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A263548.P17433252244320094567

/-! ## A263548.P18091360259587881793

`A263571(2*n+1)+A109017(2*n)`
-/

namespace A263548.P18091360259587881793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263571 (2 * n + 1) + A109017 (2 * n)

end

end A263548.P18091360259587881793

/-! ## A263548.P4336090566150774974

`A000035(2*n)-A279947(2*n+1)`
-/

namespace A263548.P4336090566150774974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A279947 (2 * n + 1)

end

end A263548.P4336090566150774974

/-! ## A263548.P2848320607579810530

`abs(A128581(3*n+2))`
-/

namespace A263548.P2848320607579810530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128581 (3 * n + 2)|

end

end A263548.P2848320607579810530

/-! ## A263548.P12506795489391136831

`A108563(A016789(n))/2`
-/

namespace A263548.P12506795489391136831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108563 (A016789 n).toNat : ℚ) / 2

end

end A263548.P12506795489391136831

/-! ## A263548.P1696991554562316276

`A258587(4*n+2)`
-/

namespace A263548.P1696991554562316276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258587 (4 * n + 2)

end

end A263548.P1696991554562316276

/-! ## A263548.P14903205682593685808

`A046113(A016969(n)-1)/2`
-/

namespace A263548.P14903205682593685808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046113 (A016969 n - 1).toNat : ℚ) / 2

end

end A263548.P14903205682593685808

/-! ## A263548.P6424003221525205750

`abs(A229723(2*(2*(n+1)+n)))`
-/

namespace A263548.P6424003221525205750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A229723 (2 * (2 * (n + 1) + n))|

end

end A263548.P6424003221525205750

/-!
# A263549: Numbers k such that k divides the sum of the first k primes with odd indices.

The programs for A263549, there is no canonical definition to state claims against.
-/

/-! ## A263549.P17944927633183547122

`A341292(A006566(n)*A060538(n+1))`
-/

namespace A263549.P17944927633183547122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341292 (A006566 n * A060538 (n + 1)).toNat

end

end A263549.P17944927633183547122

/-!
# A263550: Number of (n+1)X(n+1) 0..4 arrays with each row and column divisible by 7, read as a base-5 number with top and left being the most significant digits.

The programs for A263550, there is no canonical definition to state claims against.
-/

/-! ## A263550.P8812577676184683239

`A263558((n+1)²+n²)`
-/

namespace A263550.P8812577676184683239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 ((n + 1) ^ 2 + n ^ 2)

end

end A263550.P8812577676184683239

/-!
# A263551: Number of (n+1) X (1+1) 0..4 arrays with each row and column divisible by 7, read as a base-5 number with top and left being the most significant digits.

The programs for A263551, the canonical program `A263551.P2640014884476669566` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263551 has offset 1).

The definition of A263551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263551.P3379801412479414085

`ogf((-4+6x+8x^2)/(-1+4x+2x^2-8x^3))`
-/

namespace A263551.P3379801412479414085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, -8] [1, -4, -2, 8] n

end

end A263551.P3379801412479414085

namespace A263551

/-- `ogf((-4+6x+8x^2)/(-1+4x+2x^2-8x^3))` -/
def P3379801412479414085.Spec : Prop :=
  ∀ n, P3379801412479414085.a n = A263551 (n + 1)

end A263551

/-! ## A263551.P2640014884476669566

`2*(a(n-2)+4^n)` with `a(0)=4, a(1)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263551

/-- `2*(a(n-2)+4^n)` -/
def P2640014884476669566.Spec : Prop :=
  ∀ n, (P2640014884476669566.a n : ℤ) = A263551 (n + 1)

theorem P2640014884476669566.correct : P2640014884476669566.Spec := by
  intro n
  simp only [A263551, Nat.add_sub_cancel]

end A263551

/-! ## A263551.P6316640017769056690

`4*a(n-1)+2*a(n-2)-8*a(n-3)` with `a(0)=4, a(1)=10, a(2)=40`
-/

namespace A263551.P6316640017769056690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10, 40] fun n a =>
  4 * a (n - 1) + 2 * a (n - 2) - 8 * a (n - 3)

end

end A263551.P6316640017769056690

namespace A263551

/-- `4*a(n-1)+2*a(n-2)-8*a(n-3)` -/
def P6316640017769056690.Spec : Prop :=
  ∀ n, P6316640017769056690.a n = A263551 (n + 1)

end A263551

/-! ## A263551.P2787488349239091206

`2*or(a(n-2), A000302(n))` with `a(0)=4, a(1)=10`
-/

namespace A263551.P2787488349239091206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  2 * Int.lor (a (n - 2)) (A000302 n)

end

end A263551.P2787488349239091206

namespace A263551

/-- `2*or(a(n-2), A000302(n))` -/
def P2787488349239091206.Spec : Prop :=
  ∀ n, P2787488349239091206.a n = A263551 (n + 1)

end A263551

/-! ## A263551.P5560129633701690391

`A263558(∑[n]+1)`
-/

namespace A263551.P5560129633701690391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263551.P5560129633701690391

namespace A263551

/-- `A263558(∑[n]+1)` -/
def P5560129633701690391.Spec : Prop :=
  ∀ n, P5560129633701690391.a n = A263551 (n + 1)

end A263551

/-!
# A263552: Number of (n+1)X(2+1) 0..4 arrays with each row and column divisible by 7, read as a base-5 number with top and left being the most significant digits.

The programs for A263552, there is no canonical definition to state claims against.
-/

/-! ## A263552.P844784523798833909

`A263558(∑[n+1]+2)`
-/

namespace A263552.P844784523798833909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263552.P844784523798833909

/-! ## A263552.P5242267565843940469

`record[gcd(A053616(n), A263558(n+2))]`
-/

namespace A263552.P5242267565843940469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053616 n) (A263558 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263552.P5242267565843940469

/-! ## A263552.P10636416613050887388

`record[gcd(A051933(n), A263558(n+3))]`
-/

namespace A263552.P10636416613050887388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051933 n) (A263558 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263552.P10636416613050887388

/-! ## A263552.P5807226063280957929

`record[A174557(n+1)*A263558(n+3)]`
-/

namespace A263552.P5807226063280957929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174557 (n + 1) * A263558 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263552.P5807226063280957929

/-! ## A263552.P2231857894063732899

`record[A129186(n+1)*A263558(n+2)]`
-/

namespace A263552.P2231857894063732899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 (n + 1) * A263558 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263552.P2231857894063732899

/-!
# A263553: Number of (n+1)X(3+1) 0..4 arrays with each row and column divisible by 7, read as a base-5 number with top and left being the most significant digits.

The programs for A263553, there is no canonical definition to state claims against.
-/

/-! ## A263553.P1988876602353533396

`A263558(∑[n+2]+4)`
-/

namespace A263553.P1988876602353533396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263553.P1988876602353533396

/-! ## A263553.P3202201599198218218

`A043566(n)*A263558(A167614(n+1))`
-/

namespace A263553.P3202201599198218218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 n * A263558 (A167614 (n + 1)).toNat

end

end A263553.P3202201599198218218

/-! ## A263553.P12751966161428458635

`A263558(A167614(n+1))/A043566(n+1)`
-/

namespace A263553.P12751966161428458635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263558 (A167614 (n + 1)).toNat : ℚ) / (A043566 (n + 1) : ℚ)

end

end A263553.P12751966161428458635

/-! ## A263553.P9727061743202399083

`A263558(A167614(n+1))+A135481(2*n)`
-/

namespace A263553.P9727061743202399083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (A167614 (n + 1)).toNat + A135481 (2 * n)

end

end A263553.P9727061743202399083

/-! ## A263553.P15911655418622507434

`A263558(A167614(n+1))%A263554(n+1)`
-/

namespace A263553.P15911655418622507434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263558 (A167614 (n + 1)).toNat) (A263554 (n + 1))

end

end A263553.P15911655418622507434

/-!
# A263554: Number of (n+1)X(4+1) 0..4 arrays with each row and column divisible by 7, read as a base-5 number with top and left being the most significant digits.

The programs for A263554, there is no canonical definition to state claims against.
-/

/-! ## A263554.P17422274961111556539

`A263558(A167614(n+2)+1)`
-/

namespace A263554.P17422274961111556539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (A167614 (n + 2) + 1).toNat

end

end A263554.P17422274961111556539

/-! ## A263554.P14228133044653332138

`A263558(Δ[A264443(n)-n²])`
-/

namespace A263554.P14228133044653332138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (f1 (n + 1) - f1 n).toNat

end

end A263554.P14228133044653332138

/-! ## A263554.P9126471918499164752

`A263558(eq[3, A193592(n)])`
-/

namespace A263554.P9126471918499164752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263554.P9126471918499164752

/-! ## A263554.P2555142510241050182

`A263558(A167499(n)+A016777(n))`
-/

namespace A263554.P2555142510241050182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (A167499 n + A016777 n).toNat

end

end A263554.P2555142510241050182

/-!
# A263555: Number of (n+1) X (5+1) 0..4 arrays with each row and column divisible by 7, read as a base-5 number with top and left being the most significant digits.

The programs for A263555, there is no canonical definition to state claims against.
-/

/-! ## A263555.P12288763813820666306

`A263558(A374005(n+1))`
-/

namespace A263555.P12288763813820666306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (A374005 (n + 1)).toNat

end

end A263555.P12288763813820666306

/-! ## A263555.P3522557699537929543

`A263558(Δ[A264443(n)])`
-/

namespace A263555.P3522557699537929543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (f1 (n + 1) - f1 n).toNat

end

end A263555.P3522557699537929543

/-! ## A263555.P2123303061058326134

`A263558(A056115(n)+11)`
-/

namespace A263555.P2123303061058326134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (A056115 n + 11).toNat

end

end A263555.P2123303061058326134

/-! ## A263555.P14448247854449375845

`A263558(eq[4, A193592(n)])`
-/

namespace A263555.P14448247854449375845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263555.P14448247854449375845

/-! ## A263555.P13117781861050652480

`A263558(A264443(n+1)-A264443(n))`
-/

namespace A263555.P13117781861050652480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (A264443 (n + 1) - A264443 n).toNat

end

end A263555.P13117781861050652480

/-!
# A263556: 

The programs for A263556, there is no canonical definition to state claims against.
-/

/-! ## A263556.P16999526971233117215

`A263558(eq[5, A193592(n)])`
-/

namespace A263556.P16999526971233117215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263556.P16999526971233117215

/-!
# A263557: 

The programs for A263557, there is no canonical definition to state claims against.
-/

/-! ## A263557.P11232602327545508164

`A263558(A167614(n+5)+4)`
-/

namespace A263557.P11232602327545508164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (A167614 (n + 5) + 4).toNat

end

end A263557.P11232602327545508164

/-! ## A263557.P14637125864415538106

`A263558(eq[6, A193592(n)])`
-/

namespace A263557.P14637125864415538106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263558 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263557.P14637125864415538106

/-!
# A263558: T(n,k)=Number of (n+1)X(k+1) 0..4 arrays with each row and column divisible by 7, read as a base-5 number with top and left being the most significant digits.

The programs for A263558, there is no canonical definition to state claims against.
-/

/-! ## A263558.P11591151808351289223

`A155445(a(n-2))` with `a(0)=4, a(1)=10, a(2)=10, a(3)=40`
-/

namespace A263558.P11591151808351289223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10, 10, 40] fun n a =>
  A155445 (a (n - 2)).toNat

end

end A263558.P11591151808351289223

/-!
# A263559: a(n) = A083186(n) mod A007504(n).

The programs for A263559, the canonical program `A263559.P8053390118549948923` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263559 has offset 1).

The definition of A263559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263559.P8053390118549948923

`A083186(n+1)%A007504(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A263559

/-- `A083186(n+1)%A007504(n+1)` -/
def P8053390118549948923.Spec : Prop :=
  ∀ n, P8053390118549948923.a n = A263559 (n + 1)

theorem P8053390118549948923.correct : P8053390118549948923.Spec := by
  intro n
  simp only [A263559, Nat.add_sub_cancel]

end A263559

/-! ## A263559.P14288621427915423982

`∑[A006450(n+1)]%A007504(n+1)`
-/

namespace A263559.P14288621427915423982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A263559.P14288621427915423982

namespace A263559

/-- `∑[A006450(n+1)]%A007504(n+1)` -/
def P14288621427915423982.Spec : Prop :=
  ∀ n, P14288621427915423982.a n = A263559 (n + 1)

end A263559

/-! ## A263559.P6460055759903503446

`∑[A168152(n+1)]%A007504(n+1)`
-/

namespace A263559.P6460055759903503446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A263559.P6460055759903503446

namespace A263559

/-- `∑[A168152(n+1)]%A007504(n+1)` -/
def P6460055759903503446.Spec : Prop :=
  ∀ n, P6460055759903503446.a n = A263559 (n + 1)

end A263559

/-! ## A263559.P1535267961530626405

`∑[A073136(n+1)]%∑[A000040(n+1)]`
-/

namespace A263559.P1535267961530626405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A263559.P1535267961530626405

namespace A263559

/-- `∑[A073136(n+1)]%∑[A000040(n+1)]` -/
def P1535267961530626405.Spec : Prop :=
  ∀ n, P1535267961530626405.a n = A263559 (n + 1)

end A263559

/-! ## A263559.P7430274261049785206

`∑[A000040(A000040(n+1))]%A007504(n+1)`
-/

namespace A263559.P7430274261049785206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A263559.P7430274261049785206

namespace A263559

/-- `∑[A000040(A000040(n+1))]%A007504(n+1)` -/
def P7430274261049785206.Spec : Prop :=
  ∀ n, P7430274261049785206.a n = A263559 (n + 1)

end A263559

/-!
# A263563: A self-describing sequence: when the sequence is read as a string of decimal digits, a(n) can be read from position n (ignoring leading zeros). This sequence is the lexicographically earliest sequence of distinct terms with this property.

The programs for A263563, there is no canonical definition to state claims against.
-/

/-! ## A263563.P9210979437799870003

`record[round(sqrt(A115350(n+1)))]`
-/

namespace A263563.P9210979437799870003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A115350 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263563.P9210979437799870003

/-! ## A263563.P4915215327996993004

`A250266(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A263563.P4915215327996993004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A250266 (a (n - 1) + 1).toNat + 1

end

end A263563.P4915215327996993004

/-! ## A263563.P7453705274368777428

`record[or(n+1, A285698(2*n+3))]`
-/

namespace A263563.P7453705274368777428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A285698 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263563.P7453705274368777428

/-! ## A263563.P7305452237821035367

`C(A001744(2*(n+1)), 97)+n+1`
-/

namespace A263563.P7305452237821035367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001744 (2 * (n + 1))).toNat 97 + n + 1

end

end A263563.P7305452237821035367

/-! ## A263563.P13451252859505660849

`A329655(∑[A118541(n)])`
-/

namespace A263563.P13451252859505660849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263563.P13451252859505660849

/-!
# A263564: Putative inverse of A263563.

The programs for A263564, there is no canonical definition to state claims against.
-/

/-! ## A263564.P2707595254581838928

`lt[A050026(gcd(n, ∑[n]²)+1), n+1]`
-/

namespace A263564.P2707595254581838928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050026 (Nat.gcd n ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A263564.P2707595254581838928

/-! ## A263564.P13611997260596045007

`lt[A292475(n+3), dr(C(n, 2)+n²)²]`
-/

namespace A263564.P13611997260596045007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292475 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose n 2 + n ^ 2 : ℤ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263564.P13611997260596045007

/-! ## A263564.P4331483354870832925

`lt[A351002(n), p?[round(8*n/7)]-2]-1`
-/

namespace A263564.P4331483354870832925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351002 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A263564.P4331483354870832925

/-! ## A263564.P15904289343175205642

`∑[A113311(A309439(n)²)]`
-/

namespace A263564.P15904289343175205642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 (A309439 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263564.P15904289343175205642

/-! ## A263564.P4832314121391917286

`lt[A261734(A002620(n)), A270831(n+1)]`
-/

namespace A263564.P4832314121391917286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261734 (A002620 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A263564.P4832314121391917286

/-!
# A263565: Number of (n+2)X(1+2) arrays of permutations of 0..n*3+5 with each element moved 0 or 1 knight moves and no more than 1 element left unmoved.

The programs for A263565, there is no canonical definition to state claims against.
-/

/-! ## A263565.P15267773896218550067

`A263568(∑[n]+1)`
-/

namespace A263565.P15267773896218550067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263568 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263565.P15267773896218550067

/-! ## A263565.P17006678986649406533

`lcm(2, A263568(A000124(n)))`
-/

namespace A263565.P17006678986649406533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263568 (A000124 n).toNat)

end

end A263565.P17006678986649406533

/-! ## A263565.P6878153932969344914

`record[A263568(A166017(n+1))]`
-/

namespace A263565.P6878153932969344914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263568 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263565.P6878153932969344914

/-! ## A263565.P8946158163445636252

`lcm(4, A263568(∑[A028310(n)]))`
-/

namespace A263565.P8946158163445636252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A263568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A263565.P8946158163445636252

/-!
# A263566: Number of (n+2)X(2+2) arrays of permutations of 0..n*4+7 with each element moved 0 or 1 knight moves and no more than 1 element left unmoved.

The programs for A263566, there is no canonical definition to state claims against.
-/

/-! ## A263566.P2481872147173308615

`A263385(n+2)²`
-/

namespace A263566.P2481872147173308615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263385 (n + 2) ^ 2

end

end A263566.P2481872147173308615

/-! ## A263566.P1568307507253991863

`A033305(n+3)^4`
-/

namespace A263566.P1568307507253991863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 (n + 3) ^ 4

end

end A263566.P1568307507253991863

/-! ## A263566.P10775348472009029547

`A033305(A009056(n+1))²²`
-/

namespace A263566.P10775348472009029547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033305 (A009056 (n + 1)).toNat ^ 2) ^ 2

end

end A263566.P10775348472009029547

/-! ## A263566.P2606742370079824344

`A033305(A000027(n+1)+2)²²`
-/

namespace A263566.P2606742370079824344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033305 (A000027 (n + 1) + 2).toNat ^ 2) ^ 2

end

end A263566.P2606742370079824344

/-! ## A263566.P11247730713338842240

`(A321048(n+3)+A059841(n+1))²²`
-/

namespace A263566.P11247730713338842240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A321048 (n + 3) + A059841 (n + 1)) ^ 2) ^ 2

end

end A263566.P11247730713338842240

/-! ## A263566.P13466214283744782607

`A263385(n+2)^A003600(A053381(2*n))`
-/

namespace A263566.P13466214283744782607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263385 (n + 2) : ℚ) ^ (A003600 (A053381 (2 * n)).toNat : ℤ)

end

end A263566.P13466214283744782607

/-!
# A263567: Number of (n+2) X (3+2) arrays of permutations of 0..n*5+9 with each element moved 0 or 1 knight moves and no more than 1 element left unmoved.

The programs for A263567, there is no canonical definition to state claims against.
-/

/-! ## A263567.P8955608902067964311

`A263568(∑[n+2]+4)`
-/

namespace A263567.P8955608902067964311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263568 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263567.P8955608902067964311

/-! ## A263567.P6867923195902616834

`lcm(2, A263568(A167614(n+1)))`
-/

namespace A263567.P6867923195902616834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A263568 (A167614 (n + 1)).toNat)

end

end A263567.P6867923195902616834

/-!
# A263568: T(n,k)=Number of (n+2)X(k+2) arrays of permutations of 0..(n+2)*(k+2)-1 with each element moved 0 or 1 knight moves and no more than 1 element left unmoved.

The programs for A263568, there is no canonical definition to state claims against.
-/

/-! ## A263568.P4489419684056999530

`A066813(4^A051597(n))`
-/

namespace A263568.P4489419684056999530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066813 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A051597 n : ℤ))).toNat

end

end A263568.P4489419684056999530

/-! ## A263568.P10184275713216811337

`A078683(A363948(n+1))-1`
-/

namespace A263568.P10184275713216811337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078683 (A363948 (n + 1)).toNat - 1

end

end A263568.P10184275713216811337

/-!
# A263569: Number of distinct prime divisors p of 2*n such that lpf(2*n - p) = p, where lpf = least prime factor (A020639).

The programs for A263569, there is no canonical definition to state claims against.
-/

/-! ## A263569.P2029790351689092752

`A270417(n+1)+A023416(A083416(n+1))`
-/

namespace A263569.P2029790351689092752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1) + A023416 (A083416 (n + 1)).toNat

end

end A263569.P2029790351689092752

/-! ## A263569.P703728919089661560

`A285718(∑[A114278(n)]²)`
-/

namespace A263569.P703728919089661560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A263569.P703728919089661560

/-! ## A263569.P15146604578377433983

`A001221(A277698(n+1)*A318692(n+1))`
-/

namespace A263569.P15146604578377433983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A277698 (n + 1) * A318692 (n + 1)).toNat

end

end A263569.P15146604578377433983

/-! ## A263569.P226264347751384585

`A001221(2*(n+1))-A079998(A196036(3*(n+1)))`
-/

namespace A263569.P226264347751384585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1)) - A079998 (A196036 (3 * (n + 1))).toNat

end

end A263569.P226264347751384585

/-! ## A263569.P18131240455338969618

`A000040(A205483(n+1))%A006530(n+1)`
-/

namespace A263569.P18131240455338969618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A205483 (n + 1)).toNat) (A006530 (n + 1))

end

end A263569.P18131240455338969618

/-!
# A263570: Smallest positive integer such that n iterations of A073846 are required to reach an even number.

The programs for A263570, there is no canonical definition to state claims against.
-/

/-! ## A263570.P1462649571293996641

`A271363(A000096(n*A046854(n)))`
-/

namespace A263570.P1462649571293996641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271363 (A000096 ((n : ℤ) * A046854 n).toNat).toNat

end

end A263570.P1462649571293996641

/-! ## A263570.P7433954186235699058

`A271363(lt[A094443(n), A156743(3*n+4)])`
-/

namespace A263570.P7433954186235699058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156743 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271363 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A263570.P7433954186235699058

/-!
# A263571: Expansion of f(x^2, x^2) * f(x, x^5) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A263571, there is no canonical definition to state claims against.
-/

/-! ## A263571.P3050703588609963927

`A115660(3*n+1)`
-/

namespace A263571.P3050703588609963927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (3 * n + 1)

end

end A263571.P3050703588609963927

/-! ## A263571.P16011491440306678864

`A192013(3*n+1)`
-/

namespace A263571.P16011491440306678864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192013 (3 * n + 1)

end

end A263571.P16011491440306678864

/-! ## A263571.P5608047170425329706

`A128581(6*n+2)`
-/

namespace A263571.P5608047170425329706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (6 * n + 2)

end

end A263571.P5608047170425329706

/-! ## A263571.P16103427653166671811

`abs(A279947(n))`
-/

namespace A263571.P16103427653166671811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279947 n|

end

end A263571.P16103427653166671811

/-! ## A263571.P11682472639054486531

`A033999(n)*A279947(n)`
-/

namespace A263571.P11682472639054486531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A279947 n

end

end A263571.P11682472639054486531

/-! ## A263571.P13130251200843120807

`gcd(A000038(n), A279947(n))`
-/

namespace A263571.P13130251200843120807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A279947 n)

end

end A263571.P13130251200843120807

/-! ## A263571.P437030719830819159

`lcm(A006466(n), A279947(n))`
-/

namespace A263571.P437030719830819159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A279947 n)

end

end A263571.P437030719830819159

/-! ## A263571.P1022535777940813200

`∑{d}[A279947(n), A000010(#)]`
-/

namespace A263571.P1022535777940813200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A263571.P1022535777940813200

/-! ## A263571.P4552915425164703108

`(A000035(n+1)-A000035(n))*A279947(n)`
-/

namespace A263571.P4552915425164703108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A279947 n

end

end A263571.P4552915425164703108

/-! ## A263571.P4500261223910082463

`A129402(A173732(2*n))`
-/

namespace A263571.P4500261223910082463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (A173732 (2 * n)).toNat

end

end A263571.P4500261223910082463

/-! ## A263571.P8413668398435344872

`A258587(2*n)`
-/

namespace A263571.P8413668398435344872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258587 (2 * n)

end

end A263571.P8413668398435344872

/-! ## A263571.P10758098006340514346

`A263548(2*n)`
-/

namespace A263571.P10758098006340514346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263548 (2 * n)

end

end A263571.P10758098006340514346

/-! ## A263571.P7503611203549686822

`A000377(3*n+1)`
-/

namespace A263571.P7503611203549686822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (3 * n + 1)

end

end A263571.P7503611203549686822

/-! ## A263571.P6773638212914444995

`A263649(3*n+1)`
-/

namespace A263571.P6773638212914444995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263649 (3 * n + 1)

end

end A263571.P6773638212914444995

/-! ## A263571.P16050768433571702606

`A129402(A025480(3*n))`
-/

namespace A263571.P16050768433571702606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (A025480 (3 * n)).toNat

end

end A263571.P16050768433571702606

/-! ## A263571.P14549653306483670220

`A004526(A046113(2*n+1+n))`
-/

namespace A263571.P14549653306483670220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A046113 (2 * n + 1 + n)).toNat

end

end A263571.P14549653306483670220

/-! ## A263571.P7946003690865589455

`A261122(A016957(2*n))`
-/

namespace A263571.P7946003690865589455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (A016957 (2 * n)).toNat

end

end A263571.P7946003690865589455

/-! ## A263571.P13012984283759975382

`A108563(A017617(2*n))/2`
-/

namespace A263571.P13012984283759975382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108563 (A017617 (2 * n)).toNat : ℚ) / 2

end

end A263571.P13012984283759975382

/-! ## A263571.P12859985059496960967

`A261122(A019557(2*n+1))`
-/

namespace A263571.P12859985059496960967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (A019557 (2 * n + 1)).toNat

end

end A263571.P12859985059496960967

/-!
# A263572: Numbers n that minimize sigma(n) / (n^(1-delta) d(n)) for some delta > 0, where d = divisor count = A000005, sigma = divisor sum = A000203.

The programs for A263572, there is no canonical definition to state claims against.
-/

/-! ## A263572.P6190180510823956125

`A002201(A028310(n))^A055396(A262501(n+1))`
-/

namespace A263572.P6190180510823956125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002201 (A028310 n).toNat : ℚ) ^ (A055396 (A262501 (n + 1)).toNat : ℤ)

end

end A263572.P6190180510823956125

/-! ## A263572.P8267791392683343056

`A121373(A324587(2*n+3))+A002201(A028310(n))`
-/

namespace A263572.P8267791392683343056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A324587 (2 * n + 3)).toNat + A002201 (A028310 n).toNat

end

end A263572.P8267791392683343056

/-! ## A263572.P10209888599968839765

`A002201(A028310(n))-A010054(A054242(11*n+5))`
-/

namespace A263572.P10209888599968839765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002201 (A028310 n).toNat - A010054 (A054242 (11 * n + 5)).toNat

end

end A263572.P10209888599968839765

/-! ## A263572.P8535369685761948597

`∏{e}[2^n, A002201(#)]`
-/

namespace A263572.P8535369685761948597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002201 (Nat.factorization (f1 n) p)

end

end A263572.P8535369685761948597

/-! ## A263572.P139068635468382180

`A002201(n+1)/gcd(A000705(n+1), A224078(n+1))`
-/

namespace A263572.P139068635468382180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002201 (n + 1) : ℚ) / (Int.gcd (A000705 (n + 1)) (A224078 (n + 1)) : ℚ)

end

end A263572.P139068635468382180

/-!
# A263573: Intersection of A024365 and A129912.

The programs for A263573, there is no canonical definition to state claims against.
-/

/-! ## A263573.P8031480412010574838

`∩[A024365(n+1), A129912(n+1)]`
-/

namespace A263573.P8031480412010574838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263573.P8031480412010574838

/-! ## A263573.P3374194005092702716

`∩[A024365(n+1), A220423(n+1)]`
-/

namespace A263573.P3374194005092702716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263573.P3374194005092702716

/-! ## A263573.P15571938877523850148

`∩[A073120(n+1), A220423(n+1)]`
-/

namespace A263573.P15571938877523850148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263573.P15571938877523850148

/-! ## A263573.P17662521235715430281

`∩[A147778(n+1), A220423(n+1)]`
-/

namespace A263573.P17662521235715430281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263573.P17662521235715430281

/-!
# A263575: Stirling transform of Lucas numbers (A000032).

The programs for A263575, there is no canonical definition to state claims against.
-/

/-! ## A263575.P3007277859269746360

`A340019(a(n-1))+A008805(n)` with `a(0)=2, a(1)=1`
-/

namespace A263575.P3007277859269746360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A340019 (a (n - 1)).toNat + A008805 n

end

end A263575.P3007277859269746360

/-! ## A263575.P1448827186116250123

`A107112(n)+A057077(A107104(n))`
-/

namespace A263575.P1448827186116250123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107112 n + A057077 (A107104 n).toNat

end

end A263575.P1448827186116250123

/-!
# A263576: Stirling transform of Fibonacci numbers (A000045).

The programs for A263576, there is no canonical definition to state claims against.
-/

/-! ## A263576.P12736549948617376375

`record[A008616(∑[A221585(n)])]`
-/

namespace A263576.P12736549948617376375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263576.P12736549948617376375

/-! ## A263576.P3389098210833709405

`A273884(A001181(n)+A000196(n))`
-/

namespace A263576.P3389098210833709405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273884 (A001181 n + A000196 n).toNat

end

end A263576.P3389098210833709405

/-! ## A263576.P14319988623546517129

`A103221(A061419(n+1)*A356783(n))`
-/

namespace A263576.P14319988623546517129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A061419 (n + 1) * A356783 n).toNat

end

end A263576.P14319988623546517129

/-!
# A263577: Expansion of psi(-x^2) * psi(x^3)^2 / f(-x^24) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A263577, there is no canonical definition to state claims against.
-/

/-! ## A263577.P15777336946064621494

`A108563(n)/A061347(n+1)`
-/

namespace A263577.P15777336946064621494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108563 n : ℚ) / (A061347 (n + 1) : ℚ)

end

end A263577.P15777336946064621494

/-! ## A263577.P159009062838619038

`A108563(n)/Δ[A117967(n)]`
-/

namespace A263577.P159009062838619038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108563 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A263577.P159009062838619038

/-! ## A263577.P17102464316745062425

`A046113(2*n)/(A087204(n)²-3)`
-/

namespace A263577.P17102464316745062425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046113 (2 * n) : ℚ) / (A087204 n ^ 2 - 3 : ℚ)

end

end A263577.P17102464316745062425

/-! ## A263577.P6900690413433995422

`A033999(n)*A229723(2*n)`
-/

namespace A263577.P6900690413433995422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A229723 (2 * n)

end

end A263577.P6900690413433995422

/-! ## A263577.P1282667081267855258

`A057079(n)*A229723(2*n)`
-/

namespace A263577.P1282667081267855258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A229723 (2 * n)

end

end A263577.P1282667081267855258

/-! ## A263577.P9629714778486404448

`A260309(2*n)/A100051(n+1)`
-/

namespace A263577.P9629714778486404448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260309 (2 * n) : ℚ) / (A100051 (n + 1) : ℚ)

end

end A263577.P9629714778486404448

/-! ## A263577.P17457398856026099147

`A260309(2*n)/2*A057079(n+1)`
-/

namespace A263577.P17457398856026099147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260309 (2 * n) : ℚ) / 2 * (A057079 (n + 1) : ℚ)

end

end A263577.P17457398856026099147

/-! ## A263577.P4603731442809846052

`A260309(2*n)/2*A132954(n+1)`
-/

namespace A263577.P4603731442809846052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260309 (2 * n) : ℚ) / 2 * (A132954 (n + 1) : ℚ)

end

end A263577.P4603731442809846052

/-! ## A263577.P2892149004727467053

`A046113(2*n)/(A087204(2*n)-1)`
-/

namespace A263577.P2892149004727467053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046113 (2 * n) : ℚ) / (A087204 (2 * n) - 1 : ℚ)

end

end A263577.P2892149004727467053

/-! ## A263577.P12643004016378192445

`A229723(4*A064680(n))`
-/

namespace A263577.P12643004016378192445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229723 (4 * A064680 n).toNat

end

end A263577.P12643004016378192445

/-! ## A263577.P11199405584198363

`A229723(8*n)`
-/

namespace A263577.P11199405584198363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229723 (8 * n)

end

end A263577.P11199405584198363

/-! ## A263577.P12814717226804385343

`A108563(n)/A101675(A135628(n))`
-/

namespace A263577.P12814717226804385343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108563 n : ℚ) / (A101675 (A135628 n).toNat : ℚ)

end

end A263577.P12814717226804385343

/-! ## A263577.P11549628141157965264

`A108563(n)/A089812(A161680(n))`
-/

namespace A263577.P11549628141157965264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108563 n : ℚ) / (A089812 (A161680 n).toNat : ℚ)

end

end A263577.P11549628141157965264

/-! ## A263577.P17369682415971985361

`A260309(2*n)/A057079(n²)`
-/

namespace A263577.P17369682415971985361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260309 (2 * n) : ℚ) / (A057079 (n ^ 2) : ℚ)

end

end A263577.P17369682415971985361

/-! ## A263577.P12539030239696873291

`A260309(2*n)/A132954(n²)`
-/

namespace A263577.P12539030239696873291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260309 (2 * n) : ℚ) / (A132954 (n ^ 2) : ℚ)

end

end A263577.P12539030239696873291

/-!
# A263578: Positive values of k such that A014286(k) is divisible by k.

The programs for A263578, there is no canonical definition to state claims against.
-/

/-! ## A263578.P719957984918036642

`record[A014453(3*n)%A070165(A057143(3*n+5))]`
-/

namespace A263578.P719957984918036642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014453 (3 * n)) (A070165 (A057143 (3 * n + 5)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263578.P719957984918036642

/-!
# A263579: Numbers n such that n and Fibonacci(n) have no common digits.

The programs for A263579, there is no canonical definition to state claims against.
-/

/-! ## A263579.P15511632648645314735

`comp[A263580(n)%A214462(n+1)]`
-/

namespace A263579.P15511632648645314735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263580 n) (A214462 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A263579.P15511632648645314735

/-!
# A263580: Numbers n such that n and Fibonacci(n) have at least one common digit.

The programs for A263580, there is no canonical definition to state claims against.
-/

/-! ## A263580.P13917687580423767578

`comp[A263579(n)]`
-/

namespace A263580.P13917687580423767578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263579 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A263580.P13917687580423767578

/-!
# A263581: Prime powers (p^k, p prime, k >= 1) such that k*p^k - 1 is also a power of a prime.

The programs for A263581, there is no canonical definition to state claims against.
-/

/-! ## A263581.P7941842392267856986

`A274935(n)+A005086(A113179(n))`
-/

namespace A263581.P7941842392267856986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274935 n + A005086 (A113179 n).toNat

end

end A263581.P7941842392267856986

/-! ## A263581.P13993943040688461532

`eq[A106609(A052928(n)), A119963(n)]`
-/

namespace A263581.P13993943040688461532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A052928 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263581.P13993943040688461532

/-! ## A263581.P17636499928592229717

`A161856(n+1)+A018261(A018412(n+1))`
-/

namespace A263581.P17636499928592229717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161856 (n + 1) + A018261 (A018412 (n + 1)).toNat

end

end A263581.P17636499928592229717

/-!
# A263582: Number of (n+1)X(1+1) arrays of permutations of 0..n*2+1 filled by rows with each element moved a city block distance of 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263582, the canonical program `A263582.P14494078114461863132` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263582 has offset 1).

The definition of A263582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263582.P14494078114461863132

`4*a(n-1)+2*a(n-3)+4*a(n-4)-8*a(n-5)` with `a(0)=1, a(1)=4, a(2)=18, a(3)=70, a(4)=292`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263582

/-- `4*a(n-1)+2*a(n-3)+4*a(n-4)-8*a(n-5)` -/
def P14494078114461863132.Spec : Prop :=
  ∀ n, P14494078114461863132.a n = A263582 (n + 1)

theorem P14494078114461863132.correct : P14494078114461863132.Spec := by
  intro n
  simp only [A263582, Nat.add_sub_cancel]

end A263582

/-! ## A263582.P5520005830684954818

`A263586(∑[n+1])`
-/

namespace A263582.P5520005830684954818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263582.P5520005830684954818

namespace A263582

/-- `A263586(∑[n+1])` -/
def P5520005830684954818.Spec : Prop :=
  ∀ n, P5520005830684954818.a n = A263582 (n + 1)

end A263582

/-! ## A263582.P4706866734331330933

`record[A023531(n)*A263586(n+1)]`
-/

namespace A263582.P4706866734331330933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A263586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263582.P4706866734331330933

namespace A263582

/-- `record[A023531(n)*A263586(n+1)]` -/
def P4706866734331330933.Spec : Prop :=
  ∀ n, P4706866734331330933.a n = A263582 (n + 1)

end A263582

/-! ## A263582.P4052716257696055868

`record[A055137(n)*A263586(n+1)]`
-/

namespace A263582.P4052716257696055868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055137 n * A263586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263582.P4052716257696055868

namespace A263582

/-- `record[A055137(n)*A263586(n+1)]` -/
def P4052716257696055868.Spec : Prop :=
  ∀ n, P4052716257696055868.a n = A263582 (n + 1)

end A263582

/-!
# A263583: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 filled by rows with each element moved a city block distance of 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263583, there is no canonical definition to state claims against.
-/

/-! ## A263583.P15312652430516970410

`A263586(∑[n+2])`
-/

namespace A263583.P15312652430516970410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263583.P15312652430516970410

/-! ## A263583.P958564003397445530

`record[A263586(Δ[A003453(n+5)])]`
-/

namespace A263583.P958564003397445530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263583.P958564003397445530

/-! ## A263583.P5449888751140757912

`A326152(n)+A263586(A000096(n+1))`
-/

namespace A263583.P5449888751140757912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326152 n + A263586 (A000096 (n + 1)).toNat

end

end A263583.P5449888751140757912

/-!
# A263584: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 filled by rows with each element moved a city block distance of 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263584, there is no canonical definition to state claims against.
-/

/-! ## A263584.P15305429173921227442

`A263586(∑[n+3]+1)`
-/

namespace A263584.P15305429173921227442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263584.P15305429173921227442

/-!
# A263585: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 filled by rows with each element moved a city block distance of 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263585, there is no canonical definition to state claims against.
-/

/-! ## A263585.P17846586514791312027

`A263586(∑[n+4]+3)`
-/

namespace A263585.P17846586514791312027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263585.P17846586514791312027

/-!
# A263586: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 filled by rows with each element moved a city block distance of 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263586, there is no canonical definition to state claims against.
-/

/-! ## A263586.P7545179839066531481

`A143591(a(n-1)+a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A263586.P7545179839066531481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A143591 (a (n - 1) + a (n - 2)).toNat

end

end A263586.P7545179839066531481

/-!
# A263587: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 filled by rows with each element moved a city block distance of 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263587, there is no canonical definition to state claims against.
-/

/-! ## A263587.P16799431867290695814

`A263586(∑[n]+1)`
-/

namespace A263587.P16799431867290695814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263587.P16799431867290695814

/-! ## A263587.P9569976856033359146

`record[A263586(A257504(n+1))]`
-/

namespace A263587.P9569976856033359146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263587.P9569976856033359146

/-! ## A263587.P13259467581240690829

`A263586(A000124(n))+char[9]`
-/

namespace A263587.P13259467581240690829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263587.P13259467581240690829

/-! ## A263587.P10546672449005908562

`record[A010054(n)*A263586(n+1)]`
-/

namespace A263587.P10546672449005908562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A263586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263587.P10546672449005908562

/-! ## A263587.P17322491639157595339

`record[gcd(A002262(n), A263586(n+1))]`
-/

namespace A263587.P17322491639157595339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A263586 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263587.P17322491639157595339

/-!
# A263588: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 filled by rows with each element moved a city block distance of 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263588, there is no canonical definition to state claims against.
-/

/-! ## A263588.P12308001670261708973

`A263586(∑[n+1]+2)`
-/

namespace A263588.P12308001670261708973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263588.P12308001670261708973

/-! ## A263588.P5634427614349600201

`record[A023531(n)*A263586(n+3)]`
-/

namespace A263588.P5634427614349600201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A263586 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263588.P5634427614349600201

/-! ## A263588.P10277671425024579444

`record[root(A263586(n+3), A004736(n+1))]`
-/

namespace A263588.P10277671425024579444
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A263586 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263588.P10277671425024579444

/-! ## A263588.P87834705946086018

`A053632(n)*A263586(A167487(n)-5)`
-/

namespace A263588.P87834705946086018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 n * A263586 (A167487 n - 5).toNat

end

end A263588.P87834705946086018

/-!
# A263589: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 filled by rows with each element moved a city block distance of 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263589, there is no canonical definition to state claims against.
-/

/-! ## A263589.P7452189704187354188

`A263586(∑[n+2]+4)`
-/

namespace A263589.P7452189704187354188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263589.P7452189704187354188

/-! ## A263589.P17862575196734647009

`lcm((-1)^n, A263586(A167614(n+1)))`
-/

namespace A263589.P17862575196734647009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A263586 (A167614 (n + 1)).toNat)

end

end A263589.P17862575196734647009

/-! ## A263589.P7891536247583649359

`A263586(A167614(n+1))+A025437(n)`
-/

namespace A263589.P7891536247583649359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (A167614 (n + 1)).toNat + A025437 n

end

end A263589.P7891536247583649359

/-!
# A263590: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 filled by rows with each element moved a city block distance of 1 or 2, and rows and columns in increasing lexicographic order.

The programs for A263590, there is no canonical definition to state claims against.
-/

/-! ## A263590.P2194937517742024975

`A263586(∑[n+3]+7)`
-/

namespace A263590.P2194937517742024975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263586 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A263590.P2194937517742024975

/-!
# A263591: Number of length n arrays of permutations of 0..n-1 with each element moved by -n to n places and the median of every three consecutive elements nondecreasing.

The programs for A263591, there is no canonical definition to state claims against.
-/

/-! ## A263591.P17368077188718317171

`A263597(2*n²+1)`
-/

namespace A263591.P17368077188718317171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (2 * n ^ 2 + 1)

end

end A263591.P17368077188718317171

/-! ## A263591.P3067642870244960864

`A007318(∑[n])*A263597(A058331(n))`
-/

namespace A263591.P3067642870244960864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A263597 (A058331 n).toNat

end

end A263591.P3067642870244960864

/-! ## A263591.P5357485207110714789

`A263597(A058331(n))/A007318(∑[n+1])`
-/

namespace A263591.P5357485207110714789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263597 (A058331 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A263591.P5357485207110714789

/-! ## A263591.P6688145192421806191

`A263597(A058331(n))^A007318(∑[n+2])`
-/

namespace A263591.P6688145192421806191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263597 (A058331 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A263591.P6688145192421806191

/-! ## A263591.P16618811737881539249

`A014963(4*n+6)*A263597(A058331(n))`
-/

namespace A263591.P16618811737881539249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A263597 (A058331 n).toNat

end

end A263591.P16618811737881539249

/-!
# A263592: Number of length n arrays of permutations of 0..n-1 with each element moved by -3 to 3 places and the median of every three consecutive elements nondecreasing.

The programs for A263592, there is no canonical definition to state claims against.
-/

/-! ## A263592.P7901393580813061427

`A263597(∑[n+3]+1)`
-/

namespace A263592.P7901393580813061427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263592.P7901393580813061427

/-! ## A263592.P10631746509249211793

`record[A263597(A347633(n+1))]`
-/

namespace A263592.P10631746509249211793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263592.P10631746509249211793

/-! ## A263592.P8560486889900577899

`or(char[4], A263597(A034856(n+2)))`
-/

namespace A263592.P8560486889900577899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263597 (A034856 (n + 2)).toNat)

end

end A263592.P8560486889900577899

/-! ## A263592.P1528258014687263437

`or(char[4], A263597(A055999(n)+4))`
-/

namespace A263592.P1528258014687263437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A263597 (A055999 n + 4).toNat)

end

end A263592.P1528258014687263437

/-! ## A263592.P10435718529109599797

`record[A263597(gcd(n, A276837(n+1)))]`
-/

namespace A263592.P10435718529109599797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (Int.gcd (n : ℤ) (A276837 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263592.P10435718529109599797

/-!
# A263593: Number of length n arrays of permutations of 0..n-1 with each element moved by -4 to 4 places and the median of every three consecutive elements nondecreasing.

The programs for A263593, there is no canonical definition to state claims against.
-/

/-! ## A263593.P16882151425932600717

`A263597(∑[n+4]+3)`
-/

namespace A263593.P16882151425932600717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263593.P16882151425932600717

/-! ## A263593.P14367633746690393163

`record[A263597(A027379(n))]`
-/

namespace A263593.P14367633746690393163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263593.P14367633746690393163

/-! ## A263593.P16049471271818220003

`record[A263597(A060577(n)+1)]`
-/

namespace A263593.P16049471271818220003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (A060577 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263593.P16049471271818220003

/-! ## A263593.P15795504671441258778

`record[A263597(Δ[A116721(n+1)])]`
-/

namespace A263593.P15795504671441258778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263593.P15795504671441258778

/-! ## A263593.P15405141726031022191

`(n%2)!*A263597(A055998(n+2))`
-/

namespace A263593.P15405141726031022191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A263597 (A055998 (n + 2)).toNat

end

end A263593.P15405141726031022191

/-!
# A263594: Number of length n arrays of permutations of 0..n-1 with each element moved by -5 to 5 places and the median of every three consecutive elements nondecreasing.

The programs for A263594, there is no canonical definition to state claims against.
-/

/-! ## A263594.P11137416584943568366

`A263597(Δ[A264443(n)])`
-/

namespace A263594.P11137416584943568366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (f1 (n + 1) - f1 n).toNat

end

end A263594.P11137416584943568366

/-! ## A263594.P11209825750983534249

`A263597(A046691(n+3))`
-/

namespace A263594.P11209825750983534249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (A046691 (n + 3)).toNat

end

end A263594.P11209825750983534249

/-! ## A263594.P4228399913046649794

`A263597(eq[3, A152157(n)])`
-/

namespace A263594.P4228399913046649794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263594.P4228399913046649794

/-! ## A263594.P13432885948986697629

`A263597(eq[4, A054123(n)])`
-/

namespace A263594.P13432885948986697629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263594.P13432885948986697629

/-! ## A263594.P16370318731365212115

`A263597(eq[4, A193592(n)])`
-/

namespace A263594.P16370318731365212115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263594.P16370318731365212115

/-!
# A263595: Number of length n arrays of permutations of 0..n-1 with each element moved by -6 to 6 places and the median of every three consecutive elements nondecreasing.

The programs for A263595, there is no canonical definition to state claims against.
-/

/-! ## A263595.P1161924453973705984

`A263597(A052905(n+3))`
-/

namespace A263595.P1161924453973705984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (A052905 (n + 3)).toNat

end

end A263595.P1161924453973705984

/-! ## A263595.P14729039799076129785

`A263597(A056119(n)+16)`
-/

namespace A263595.P14729039799076129785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (A056119 n + 16).toNat

end

end A263595.P14729039799076129785

/-! ## A263595.P10035411263533185010

`A263597(eq[3, A219347(n)])`
-/

namespace A263595.P10035411263533185010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263595.P10035411263533185010

/-! ## A263595.P15422572056475229778

`A263597(eq[5, A152157(n)])`
-/

namespace A263595.P15422572056475229778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263595.P15422572056475229778

/-! ## A263595.P8212974002862637479

`A263597(eq[5, A193592(n)])`
-/

namespace A263595.P8212974002862637479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263595.P8212974002862637479

/-!
# A263596: Number of length n arrays of permutations of 0..n-1 with each element moved by -7 to 7 places and the median of every three consecutive elements nondecreasing.

The programs for A263596, there is no canonical definition to state claims against.
-/

/-! ## A263596.P2584287839613648594

`A263597(A055999(n+4))`
-/

namespace A263596.P2584287839613648594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (A055999 (n + 4)).toNat

end

end A263596.P2584287839613648594

/-! ## A263596.P4017113781915911636

`A263597(eq[4, A219347(n)])`
-/

namespace A263596.P4017113781915911636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263596.P4017113781915911636

/-! ## A263596.P16745798727614234278

`A263597(eq[6, A193592(n)])`
-/

namespace A263596.P16745798727614234278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263596.P16745798727614234278

/-! ## A263596.P14951702045902321110

`A263597(eq[7, A152157(n)])`
-/

namespace A263596.P14951702045902321110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263596.P14951702045902321110

/-! ## A263596.P10174969737191928749

`A263597(Δ[A023551(n+2)])`
-/

namespace A263596.P10174969737191928749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263597 (f1 (n + 1) - f1 n).toNat

end

end A263596.P10174969737191928749

/-!
# A263597: T(n,k)=Number of length n arrays of permutations of 0..n-1 with each element moved by -k to k places and the median of every three consecutive elements nondecreasing.

The programs for A263597, there is no canonical definition to state claims against.
-/

/-! ## A263597.P16575485610338236184

`and(A256221(A263703(n+1)), A263703(n+1))`
-/

namespace A263597.P16575485610338236184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256221 (A263703 (n + 1)).toNat) (A263703 (n + 1))

end

end A263597.P16575485610338236184

/-! ## A263597.P10115697141566639483

`and(A256221(A263752(n+1)), A263752(n+1))`
-/

namespace A263597.P10115697141566639483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256221 (A263752 (n + 1)).toNat) (A263752 (n + 1))

end

end A263597.P10115697141566639483

/-! ## A263597.P3460102335818001812

`A263905(n+1)-A082859(A102480(n))²`
-/

namespace A263597.P3460102335818001812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 (n + 1) - A082859 (A102480 n).toNat ^ 2

end

end A263597.P3460102335818001812

/-! ## A263597.P14315850535352981178

`and(A263703(A242474(n+1)), A263905(n+1))`
-/

namespace A263597.P14315850535352981178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263703 (A242474 (n + 1)).toNat) (A263905 (n + 1))

end

end A263597.P14315850535352981178

/-! ## A263597.P9444662229856985104

`and(A263714(n+1), A263905(A242474(n+1)))`
-/

namespace A263597.P9444662229856985104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A263714 (n + 1)) (A263905 (A242474 (n + 1)).toNat)

end

end A263597.P9444662229856985104

/-!
# A263598: Number of (n+1) X (1+1) arrays of permutations of 0..n*2+1 filled by rows with each element moved a city block distance of 0 or 2, and rows and columns in increasing lexicographic order.

The programs for A263598, the canonical program `A263598.P7975137693439402646` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263598 has offset 1).

The definition of A263598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263598.P7975137693439402646

`2*a(n-1)+4*a(n-3)+4*a(n-4)` with `a(0)=2, a(1)=8, a(2)=24, a(3)=60`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263598

/-- `2*a(n-1)+4*a(n-3)+4*a(n-4)` -/
def P7975137693439402646.Spec : Prop :=
  ∀ n, (P7975137693439402646.a n : ℤ) = A263598 (n + 1)

theorem P7975137693439402646.correct : P7975137693439402646.Spec := by
  intro n
  simp only [A263598, Nat.add_sub_cancel]

end A263598

/-! ## A263598.P16344805282518055325

`A028859(n+1)-A077966(n)`
-/

namespace A263598.P16344805282518055325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (n + 1) - A077966 n

end

end A263598.P16344805282518055325

namespace A263598

/-- `A028859(n+1)-A077966(n)` -/
def P16344805282518055325.Spec : Prop :=
  ∀ n, P16344805282518055325.a n = A263598 (n + 1)

end A263598

/-! ## A263598.P5708175612004382365

`A160444(n+4)*A160444(n+5)`
-/

namespace A263598.P5708175612004382365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (n + 4) * A160444 (n + 5)

end

end A263598.P5708175612004382365

namespace A263598

/-- `A160444(n+4)*A160444(n+5)` -/
def P5708175612004382365.Spec : Prop :=
  ∀ n, P5708175612004382365.a n = A263598 (n + 1)

end A263598

/-! ## A263598.P2019837651393322678

`A028859(n+1)-A077959(A007494(n))`
-/

namespace A263598.P2019837651393322678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (n + 1) - A077959 (A007494 n).toNat

end

end A263598.P2019837651393322678

namespace A263598

/-- `A028859(n+1)-A077959(A007494(n))` -/
def P2019837651393322678.Spec : Prop :=
  ∀ n, P2019837651393322678.a n = A263598 (n + 1)

end A263598

/-! ## A263598.P10851632883677255495

`A155020(n+2)-A077959(A007494(n))`
-/

namespace A263598.P10851632883677255495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 (n + 2) - A077959 (A007494 n).toNat

end

end A263598.P10851632883677255495

namespace A263598

/-- `A155020(n+2)-A077959(A007494(n))` -/
def P10851632883677255495.Spec : Prop :=
  ∀ n, P10851632883677255495.a n = A263598 (n + 1)

end A263598

/-!
# A263599: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 filled by rows with each element moved a city block distance of 0 or 2, and rows and columns in increasing lexicographic order.

The programs for A263599, there is no canonical definition to state claims against.
-/

/-! ## A263599.P18375340310931343785

`A263602(∑[n+2])`
-/

namespace A263599.P18375340310931343785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263599.P18375340310931343785

/-! ## A263599.P18141464566852389333

`record[Δ[A010054(n+2)*A263602(n+1)]]`
-/

namespace A263599.P18141464566852389333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 2) * A263602 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263599.P18141464566852389333

/-! ## A263599.P14441306804774736184

`A263602(A000096(n+1))+A102683(n)`
-/

namespace A263599.P14441306804774736184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263602 (A000096 (n + 1)).toNat + A102683 n

end

end A263599.P14441306804774736184

/-! ## A263599.P975461720200282224

`A093178(2*n)*A263602(A000096(n+1))`
-/

namespace A263599.P975461720200282224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A263602 (A000096 (n + 1)).toNat

end

end A263599.P975461720200282224

