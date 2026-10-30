import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A240400: Numbers n having a partition into distinct parts of form 3^k-2^k.

The programs for A240400, the canonical program `A240400.P15169958677244537895` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240400 has offset 1).

The definition of A240400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240400.P15169958677244537895

`n+3*a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240400

/-- `n+3*a(floor(n/2))` -/
def P15169958677244537895.Spec : Prop :=
  ∀ n, (P15169958677244537895.a n : ℤ) = A240400 (n + 1)

theorem P15169958677244537895.correct : P15169958677244537895.Spec := by
  intro n
  simp only [A240400, Nat.add_sub_cancel]

end A240400

/-! ## A240400.P9294288059650047675

`3*a(floor(n/2))+n` with `a(0)=0`
-/

namespace A240400.P9294288059650047675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * a ⌊(n : ℚ) / 2⌋.toNat + n

end

end A240400.P9294288059650047675

namespace A240400

/-- `3*a(floor(n/2))+n` -/
def P9294288059650047675.Spec : Prop :=
  ∀ n, (P9294288059650047675.a n : ℤ) = A240400 (n + 1)

end A240400

/-! ## A240400.P10259519574207323195

`n-(∑[3*a(∑[n]%n)-3]-1)` with `a(0)=1`
-/

namespace A240400.P10259519574207323195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A240400.P10259519574207323195

namespace A240400

/-- `n-(∑[3*a(∑[n]%n)-3]-1)` -/
def P10259519574207323195.Spec : Prop :=
  ∀ n, P10259519574207323195.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P1559678186732399642

`A081601(n+1)-2*n`
-/

namespace A240400.P1559678186732399642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 1) - (2 * n : ℤ)

end

end A240400.P1559678186732399642

namespace A240400

/-- `A081601(n+1)-2*n` -/
def P1559678186732399642.Spec : Prop :=
  ∀ n, P1559678186732399642.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P11899823326525139669

`A191107(n+1)-Δ[n²]`
-/

namespace A240400.P11899823326525139669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A240400.P11899823326525139669

namespace A240400

/-- `A191107(n+1)-Δ[n²]` -/
def P11899823326525139669.Spec : Prop :=
  ∀ n, P11899823326525139669.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P12464616737569537963

`A005836(Δ[n²])-2*n`
-/

namespace A240400.P12464616737569537963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (2 * n : ℤ)

end

end A240400.P12464616737569537963

namespace A240400

/-- `A005836(Δ[n²])-2*n` -/
def P12464616737569537963.Spec : Prop :=
  ∀ n, P12464616737569537963.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P376102604684355817

`A003278(Δ[n²])-Δ[n²]`
-/

namespace A240400.P376102604684355817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A240400.P376102604684355817

namespace A240400

/-- `A003278(Δ[n²])-Δ[n²]` -/
def P376102604684355817.Spec : Prop :=
  ∀ n, P376102604684355817.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P2219799877467451976

`record[A005836(n+1)-lcm(2, n)]`
-/

namespace A240400.P2219799877467451976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240400.P2219799877467451976

namespace A240400

/-- `record[A005836(n+1)-lcm(2, n)]` -/
def P2219799877467451976.Spec : Prop :=
  ∀ n, P2219799877467451976.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P16379760412283482908

`A356426(n+1)-2*(n+1)`
-/

namespace A240400.P16379760412283482908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (n + 1) - (2 * (n + 1) : ℤ)

end

end A240400.P16379760412283482908

namespace A240400

/-- `A356426(n+1)-2*(n+1)` -/
def P16379760412283482908.Spec : Prop :=
  ∀ n, P16379760412283482908.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P16062132705007844459

`A082575(2*n+1)-2*n`
-/

namespace A240400.P16062132705007844459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082575 (2 * n + 1) - (2 * n : ℤ)

end

end A240400.P16062132705007844459

namespace A240400

/-- `A082575(2*n+1)-2*n` -/
def P16062132705007844459.Spec : Prop :=
  ∀ n, P16062132705007844459.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P2671856077944264351

`A186776(2*n+1)-2*n`
-/

namespace A240400.P2671856077944264351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (2 * n + 1) - (2 * n : ℤ)

end

end A240400.P2671856077944264351

namespace A240400

/-- `A186776(2*n+1)-2*n` -/
def P2671856077944264351.Spec : Prop :=
  ∀ n, P2671856077944264351.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P12957904099721740654

`A005836(2*n+1)-n-n`
-/

namespace A240400.P12957904099721740654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (2 * n + 1) - (n : ℤ) - (n : ℤ)

end

end A240400.P12957904099721740654

namespace A240400

/-- `A005836(2*n+1)-n-n` -/
def P12957904099721740654.Spec : Prop :=
  ∀ n, P12957904099721740654.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P8344871125311149955

`A004793(2*n+1)-Δ[n²]`
-/

namespace A240400.P8344871125311149955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A240400.P8344871125311149955

namespace A240400

/-- `A004793(2*n+1)-Δ[n²]` -/
def P8344871125311149955.Spec : Prop :=
  ∀ n, P8344871125311149955.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P13651815596937044215

`A033159(2*n+1)-2*(n+1)`
-/

namespace A240400.P13651815596937044215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (2 * n + 1) - (2 * (n + 1) : ℤ)

end

end A240400.P13651815596937044215

namespace A240400

/-- `A033159(2*n+1)-2*(n+1)` -/
def P13651815596937044215.Spec : Prop :=
  ∀ n, P13651815596937044215.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P11225222799246918177

`A033160(2*n+1)-2*(n+1)`
-/

namespace A240400.P11225222799246918177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (2 * n + 1) - (2 * (n + 1) : ℤ)

end

end A240400.P11225222799246918177

namespace A240400

/-- `A033160(2*n+1)-2*(n+1)` -/
def P11225222799246918177.Spec : Prop :=
  ∀ n, P11225222799246918177.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P6936127191535603363

`A033162(2*n+1)-3-2*n`
-/

namespace A240400.P6936127191535603363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (2 * n + 1) - 3 - (2 * n : ℤ)

end

end A240400.P6936127191535603363

namespace A240400

/-- `A033162(2*n+1)-3-2*n` -/
def P6936127191535603363.Spec : Prop :=
  ∀ n, P6936127191535603363.a n = A240400 (n + 1)

end A240400

/-! ## A240400.P13145173982925107563

`A005823(2*n+1)/2-n-n`
-/

namespace A240400.P13145173982925107563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (2 * n + 1) : ℚ) / 2 - (n : ℚ) - (n : ℚ)

end

end A240400.P13145173982925107563

namespace A240400

/-- `A005823(2*n+1)/2-n-n` -/
def P13145173982925107563.Spec : Prop :=
  ∀ n, P13145173982925107563.a n = (A240400 (n + 1) : ℚ)

end A240400

/-! ## A240400.P11802735797242884969

`(A055247(2*n+1)-(4*n+1))/2`
-/

namespace A240400.P11802735797242884969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055247 (2 * n + 1) - (4 * n + 1 : ℤ) : ℚ) / 2

end

end A240400.P11802735797242884969

namespace A240400

/-- `(A055247(2*n+1)-(4*n+1))/2` -/
def P11802735797242884969.Spec : Prop :=
  ∀ n, P11802735797242884969.a n = (A240400 (n + 1) : ℚ)

end A240400

/-! ## A240400.P3615664048326626341

`(A191106(2*n+1)-(4*n+1))/2`
-/

namespace A240400.P3615664048326626341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191106 (2 * n + 1) - (4 * n + 1 : ℤ) : ℚ) / 2

end

end A240400.P3615664048326626341

namespace A240400

/-- `(A191106(2*n+1)-(4*n+1))/2` -/
def P3615664048326626341.Spec : Prop :=
  ∀ n, P3615664048326626341.a n = (A240400 (n + 1) : ℚ)

end A240400

/-! ## A240400.P11407756706181473846

`A074938(n)-A000069(n+1)`
-/

namespace A240400.P11407756706181473846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n - A000069 (n + 1)

end

end A240400.P11407756706181473846

namespace A240400

/-- `A074938(n)-A000069(n+1)` -/
def P11407756706181473846.Spec : Prop :=
  ∀ n, P11407756706181473846.a n = A240400 (n + 1)

end A240400

/-!
# A240401: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240401, there is no canonical definition to state claims against.
-/

/-! ## A240401.P17947063369915238723

`A240406(∑[n+1]+2)`
-/

namespace A240401.P17947063369915238723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240401.P17947063369915238723

/-! ## A240401.P3904663190789711624

`record[A240406(n+2)/A199656(n+1)]`
-/

namespace A240401.P3904663190789711624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240406 (n + 2) : ℚ) / (A199656 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240401.P3904663190789711624

/-! ## A240401.P8596195229841601143

`record[root(A240406(n+3), A240394(n+2))]`
-/

namespace A240401.P8596195229841601143
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240406 (n + 3) : ℝ) ^ (1 / (A240394 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240401.P8596195229841601143

/-! ## A240401.P15778298731820721458

`A240406(A000096(n)+3)+A185284(n)`
-/

namespace A240401.P15778298731820721458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A000096 n + 3).toNat + A185284 n

end

end A240401.P15778298731820721458

/-! ## A240401.P2842882513865768652

`record[A240406(A347633(n+1)+1)]`
-/

namespace A240401.P2842882513865768652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240401.P2842882513865768652

/-!
# A240402: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240402, there is no canonical definition to state claims against.
-/

/-! ## A240402.P1408046413075327678

`A240406(∑[n+2]+4)`
-/

namespace A240402.P1408046413075327678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240402.P1408046413075327678

/-! ## A240402.P3421607174753829346

`or(char[2], A240406(A167614(n+1)))`
-/

namespace A240402.P3421607174753829346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240406 (A167614 (n + 1)).toNat)

end

end A240402.P3421607174753829346

/-! ## A240402.P18289615298296463133

`A240406(A167614(n+1))+A011730(n)`
-/

namespace A240402.P18289615298296463133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A167614 (n + 1)).toNat + A011730 n

end

end A240402.P18289615298296463133

/-! ## A240402.P1727178904454436265

`A240406(A167614(n+1))+A025438(n)`
-/

namespace A240402.P1727178904454436265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A167614 (n + 1)).toNat + A025438 n

end

end A240402.P1727178904454436265

/-! ## A240402.P10228718843664359844

`A240406(A167614(n+1))+A067169(n)`
-/

namespace A240402.P10228718843664359844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A167614 (n + 1)).toNat + A067169 (n + 11)

end

end A240402.P10228718843664359844

/-!
# A240403: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240403, there is no canonical definition to state claims against.
-/

/-! ## A240403.P8258857788076097797

`A240406(∑[n+3]+7)`
-/

namespace A240403.P8258857788076097797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240403.P8258857788076097797

/-! ## A240403.P980194586314924387

`abs(1-A240406(A055999(n)+10))+1`
-/

namespace A240403.P980194586314924387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A240406 (A055999 n + 10).toNat| + 1

end

end A240403.P980194586314924387

/-! ## A240403.P8258311495910608291

`A240406(A055999(n)+10)%A257127(n+2)`
-/

namespace A240403.P8258311495910608291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240406 (A055999 n + 10).toNat) (A257127 (n + 2))

end

end A240403.P8258311495910608291

/-! ## A240403.P3365156557434843665

`A240406(A055999(n)+10)%A003392(A066846(n))`
-/

namespace A240403.P3365156557434843665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240406 (A055999 n + 10).toNat) (A003392 (A066846 n).toNat)

end

end A240403.P3365156557434843665

/-! ## A240403.P6497087521996632264

`A000105(A112344(n+3))*A240406(A055999(n)+10)`
-/

namespace A240403.P6497087521996632264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (A112344 (n + 3)).toNat * A240406 (A055999 n + 10).toNat

end

end A240403.P6497087521996632264

/-!
# A240404: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240404, there is no canonical definition to state claims against.
-/

/-! ## A240404.P8092736152639128207

`A240406(A374005(n+1))`
-/

namespace A240404.P8092736152639128207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A374005 (n + 1)).toNat

end

end A240404.P8092736152639128207

/-! ## A240404.P5903194152317127907

`A240406(A167499(n+3))`
-/

namespace A240404.P5903194152317127907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A167499 (n + 3)).toNat

end

end A240404.P5903194152317127907

/-! ## A240404.P5033692696307640124

`A240406(A155212(n)+13)`
-/

namespace A240404.P5033692696307640124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A155212 n + 13).toNat

end

end A240404.P5033692696307640124

/-! ## A240404.P8360589851393072127

`A240406(A056000(n)+15)`
-/

namespace A240404.P8360589851393072127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A056000 n + 15).toNat

end

end A240404.P8360589851393072127

/-! ## A240404.P371913522259064045

`A240406(eq[7, A066657(n)])`
-/

namespace A240404.P371913522259064045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240404.P371913522259064045

/-!
# A240405: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240405, there is no canonical definition to state claims against.
-/

/-! ## A240405.P5233246063764920458

`A240406(A374007(n+1))`
-/

namespace A240405.P5233246063764920458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A374007 (n + 1)).toNat

end

end A240405.P5233246063764920458

/-! ## A240405.P1997510405338748640

`A240406(A056115(n)+21)`
-/

namespace A240405.P1997510405338748640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A056115 n + 21).toNat

end

end A240405.P1997510405338748640

/-! ## A240405.P4622526908893781077

`A240406(Δ[A264443(n)]+10)`
-/

namespace A240405.P4622526908893781077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (f1 (n + 1) - f1 n + 10).toNat

end

end A240405.P4622526908893781077

/-! ## A240405.P17195865371587400375

`A240406(A167499(n+4)+1)`
-/

namespace A240405.P17195865371587400375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A167499 (n + 4) + 1).toNat

end

end A240405.P17195865371587400375

/-! ## A240405.P10298426329396409643

`A240406(A167614(n+4)+3)`
-/

namespace A240405.P10298426329396409643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240406 (A167614 (n + 4) + 3).toNat

end

end A240405.P10298426329396409643

/-!
# A240406: T(n,k)=Number of nXk 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240406, there is no canonical definition to state claims against.
-/

/-! ## A240406.P6747441633121714120

`or(A018253(A003991(n+1)), A059897(n+1))`
-/

namespace A240406.P6747441633121714120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018253 (A003991 (n + 1)).toNat) (A059897 (n + 1))

end

end A240406.P6747441633121714120

/-!
# A240407: Number of nX2 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240407, there is no canonical definition to state claims against.
-/

/-! ## A240407.P6252574777540958689

`A240412(∑[n+2])`
-/

namespace A240407.P6252574777540958689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240407.P6252574777540958689

/-! ## A240407.P4175903249752657321

`record[gcd(A065600(n+1), A240412(n+2))]`
-/

namespace A240407.P4175903249752657321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065600 (n + 1)) (A240412 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240407.P4175903249752657321

/-! ## A240407.P5513253609039937136

`record[A240412(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A240407.P5513253609039937136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240407.P5513253609039937136

/-! ## A240407.P981753577628738525

`A057427(n+1)*A240412(A000096(n+1))`
-/

namespace A240407.P981753577628738525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A240412 (A000096 (n + 1)).toNat

end

end A240407.P981753577628738525

/-! ## A240407.P419732144007498015

`A240412(A000096(n+1))%A334534(2*n+1)`
-/

namespace A240407.P419732144007498015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240412 (A000096 (n + 1)).toNat) (A334534 (2 * n + 1))

end

end A240407.P419732144007498015

/-!
# A240408: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240408, there is no canonical definition to state claims against.
-/

/-! ## A240408.P12577608114572587323

`A240412(∑[n+3]+1)`
-/

namespace A240408.P12577608114572587323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240408.P12577608114572587323

/-! ## A240408.P9317641715086933939

`A240412(A034856(n+2))%A240385(n+1)`
-/

namespace A240408.P9317641715086933939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240412 (A034856 (n + 2)).toNat) (A240385 (n + 1))

end

end A240408.P9317641715086933939

/-!
# A240409: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240409, there is no canonical definition to state claims against.
-/

/-! ## A240409.P11430539421799415599

`A240412(∑[n+3]+n+4)`
-/

namespace A240409.P11430539421799415599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A240409.P11430539421799415599

/-! ## A240409.P12143215630640297831

`A240412(A141214(n+1))*A269626(n)`
-/

namespace A240409.P12143215630640297831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A141214 (n + 1)).toNat * A269626 n

end

end A240409.P12143215630640297831

/-! ## A240409.P15450236481128736779

`A055640(n+1)*A240412(A141214(n+1))`
-/

namespace A240409.P15450236481128736779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (n + 1) * A240412 (A141214 (n + 1)).toNat

end

end A240409.P15450236481128736779

/-! ## A240409.P5231300731243784211

`A057427(n+1)*A240412(A141214(n+1))`
-/

namespace A240409.P5231300731243784211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A240412 (A141214 (n + 1)).toNat

end

end A240409.P5231300731243784211

/-! ## A240409.P8084359066794506765

`A240412(A141214(n+1))/A269626(n+1)`
-/

namespace A240409.P8084359066794506765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240412 (A141214 (n + 1)).toNat : ℚ) / (A269626 (n + 1) : ℚ)

end

end A240409.P8084359066794506765

/-!
# A240410: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240410, there is no canonical definition to state claims against.
-/

/-! ## A240410.P18317383853652268969

`A240412(Δ[A264443(n)])`
-/

namespace A240410.P18317383853652268969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (f1 (n + 1) - f1 n).toNat

end

end A240410.P18317383853652268969

/-! ## A240410.P11278719351466243399

`A240412(A046691(n+3))`
-/

namespace A240410.P11278719351466243399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A046691 (n + 3)).toNat

end

end A240410.P11278719351466243399

/-! ## A240410.P11887230309987515444

`A240412(A060577(n+4))`
-/

namespace A240410.P11887230309987515444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A060577 (n + 4)).toNat

end

end A240410.P11887230309987515444

/-! ## A240410.P8231381766998095700

`A240412(A056115(n)+11)`
-/

namespace A240410.P8231381766998095700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A056115 n + 11).toNat

end

end A240410.P8231381766998095700

/-! ## A240410.P6364280491930131590

`A240412(eq[2, A092921(n)])`
-/

namespace A240410.P6364280491930131590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240410.P6364280491930131590

/-!
# A240411: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240411, there is no canonical definition to state claims against.
-/

/-! ## A240411.P17844191931344469923

`A240412(A052905(n+3))`
-/

namespace A240411.P17844191931344469923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A052905 (n + 3)).toNat

end

end A240411.P17844191931344469923

/-! ## A240411.P11080192685495390492

`A240412(A056119(n)+16)`
-/

namespace A240411.P11080192685495390492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A056119 n + 16).toNat

end

end A240411.P11080192685495390492

/-! ## A240411.P9314854218236012778

`A240412(eq[3, A219347(n)])`
-/

namespace A240411.P9314854218236012778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240411.P9314854218236012778

/-! ## A240411.P3733457449749763861

`A240412(eq[5, A193592(n)])`
-/

namespace A240411.P3733457449749763861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240411.P3733457449749763861

/-!
# A240413: Number of 2Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240413, there is no canonical definition to state claims against.
-/

/-! ## A240413.P7262488540936238242

`A240412(∑[n+1]+2)`
-/

namespace A240413.P7262488540936238242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240413.P7262488540936238242

/-! ## A240413.P13433999753748273567

`record[gcd(A049780(n), A240412(n+3))]`
-/

namespace A240413.P13433999753748273567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049780 n) (A240412 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240413.P13433999753748273567

/-! ## A240413.P18412723572333501874

`record[A240412(n+3)/A300342(n+2)]`
-/

namespace A240413.P18412723572333501874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240412 (n + 3) : ℚ) / (A300342 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240413.P18412723572333501874

/-! ## A240413.P4596995093815433771

`record[A240412(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A240413.P4596995093815433771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240413.P4596995093815433771

/-! ## A240413.P13031720538001872994

`A240412(A252460(2*(n+2)))+A184945(n)`
-/

namespace A240413.P13031720538001872994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A252460 (2 * (n + 2))).toNat + A184945 n

end

end A240413.P13031720538001872994

/-!
# A240414: Number of 3Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240414, there is no canonical definition to state claims against.
-/

/-! ## A240414.P16197704688336578980

`A240412(∑[n+2]+4)`
-/

namespace A240414.P16197704688336578980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240414.P16197704688336578980

/-! ## A240414.P15644335239134286727

`gcd(n, n+1)*A240412(A167614(n+1))`
-/

namespace A240414.P15644335239134286727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A240412 (A167614 (n + 1)).toNat

end

end A240414.P15644335239134286727

/-! ## A240414.P15193863488732075194

`A240412(A167614(n+1))+A011731(n)`
-/

namespace A240414.P15193863488732075194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A167614 (n + 1)).toNat + A011731 n

end

end A240414.P15193863488732075194

/-! ## A240414.P12609393587641983841

`A240412(A167614(n+1))+A025439(n)`
-/

namespace A240414.P12609393587641983841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A167614 (n + 1)).toNat + A025439 n

end

end A240414.P12609393587641983841

/-! ## A240414.P7551283966173125853

`A240412(A167614(n+1))+A025469(n)`
-/

namespace A240414.P7551283966173125853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A167614 (n + 1)).toNat + A025469 n

end

end A240414.P7551283966173125853

/-!
# A240415: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240415, there is no canonical definition to state claims against.
-/

/-! ## A240415.P14880107592101265217

`A240412(∑[n+3]+7)`
-/

namespace A240415.P14880107592101265217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240415.P14880107592101265217

/-!
# A240416: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240416, there is no canonical definition to state claims against.
-/

/-! ## A240416.P13240036760926195585

`A240412(A167499(n+3))`
-/

namespace A240416.P13240036760926195585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A167499 (n + 3)).toNat

end

end A240416.P13240036760926195585

/-! ## A240416.P16116398812346057915

`A240412(A155212(n)+13)`
-/

namespace A240416.P16116398812346057915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A155212 n + 13).toNat

end

end A240416.P16116398812346057915

/-! ## A240416.P6661139556495100044

`A240412(A056000(n)+15)`
-/

namespace A240416.P6661139556495100044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A056000 n + 15).toNat

end

end A240416.P6661139556495100044

/-! ## A240416.P10570221583029454446

`A240412(eq[7, A066657(n)])`
-/

namespace A240416.P10570221583029454446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240416.P10570221583029454446

/-! ## A240416.P1715967682647491159

`A240412(A167614(n+3)+2)`
-/

namespace A240416.P1715967682647491159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (A167614 (n + 3) + 2).toNat

end

end A240416.P1715967682647491159

/-!
# A240417: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240417, there is no canonical definition to state claims against.
-/

/-! ## A240417.P15651481895821516345

`A240412(∑[n+5]+16)`
-/

namespace A240417.P15651481895821516345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240412 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A240417.P15651481895821516345

/-! ## A240417.P15627384096988336030

`and(-1, A240412(A166136(n+4)))`
-/

namespace A240417.P15627384096988336030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A240412 (A166136 (n + 4)).toNat)

end

end A240417.P15627384096988336030

/-! ## A240417.P11128760737925415873

`A240412(A166136(n+4))/A299521(n+1)`
-/

namespace A240417.P11128760737925415873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240412 (A166136 (n + 4)).toNat : ℚ) / (A299521 (n + 1) : ℚ)

end

end A240417.P11128760737925415873

/-! ## A240417.P2173263230239159879

`A240412(A161680(n+6)+6)^A175740(n)`
-/

namespace A240417.P2173263230239159879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240412 (A161680 (n + 6) + 6).toNat : ℚ) ^ (A175740 n : ℤ)

end

end A240417.P2173263230239159879

/-! ## A240417.P11609861349216231769

`A240412(A161680(n+6)+6)^A356936(3*n+2)`
-/

namespace A240417.P11609861349216231769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240412 (A161680 (n + 6) + 6).toNat : ℚ) ^ (A356936 (3 * n + 2) : ℤ)

end

end A240417.P11609861349216231769

/-!
# A240418: Number of nX2 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240418, there is no canonical definition to state claims against.
-/

/-! ## A240418.P5250139081404586612

`A240422(∑[n+1]+2)`
-/

namespace A240418.P5250139081404586612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240418.P5250139081404586612

/-! ## A240418.P8004408844994394144

`record[A240422(A114091(n+1)+1)]`
-/

namespace A240418.P8004408844994394144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240418.P8004408844994394144

/-! ## A240418.P14033344396339724444

`record[A010054(n)*A240422(n+2)]`
-/

namespace A240418.P14033344396339724444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A240422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240418.P14033344396339724444

/-! ## A240418.P11737328479163635820

`record[root(A240422(n+2), A240394(n+1))]`
-/

namespace A240418.P11737328479163635820
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240422 (n + 2) : ℝ) ^ (1 / (A240394 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240418.P11737328479163635820

/-! ## A240418.P7537441519143772419

`record[root(A240422(n+2), A351153(n+1))]`
-/

namespace A240418.P7537441519143772419
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240422 (n + 2) : ℝ) ^ (1 / (A351153 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240418.P7537441519143772419

/-!
# A240419: Number of n X 3 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240419, there is no canonical definition to state claims against.
-/

/-! ## A240419.P13174942359158677938

`A240422(∑[n+2]+4)`
-/

namespace A240419.P13174942359158677938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240419.P13174942359158677938

/-! ## A240419.P1720053054402389

`or(1, A240422(A167614(n+1)))`
-/

namespace A240419.P1720053054402389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A240422 (A167614 (n + 1)).toNat)

end

end A240419.P1720053054402389

/-! ## A240419.P3720979700012570362

`A240422(A167614(n+1))+A035930(n)`
-/

namespace A240419.P3720979700012570362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (A167614 (n + 1)).toNat + A035930 n

end

end A240419.P3720979700012570362

/-! ## A240419.P2517554772805433163

`A240422(A167614(n+1))+A056967(n)`
-/

namespace A240419.P2517554772805433163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (A167614 (n + 1)).toNat + A056967 n

end

end A240419.P2517554772805433163

/-! ## A240419.P14091790157598778211

`A240422(A167614(n+1))+A064459(n)`
-/

namespace A240419.P14091790157598778211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (A167614 (n + 1)).toNat + A064459 n

end

end A240419.P14091790157598778211

/-!
# A240420: Number of nX4 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240420, there is no canonical definition to state claims against.
-/

/-! ## A240420.P11790807830968206645

`A240422(∑[n+3]+7)`
-/

namespace A240420.P11790807830968206645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240420.P11790807830968206645

/-!
# A240421: Number of nX5 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240421, there is no canonical definition to state claims against.
-/

/-! ## A240421.P2902644235054192049

`A240422(A374005(n+1))`
-/

namespace A240421.P2902644235054192049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (A374005 (n + 1)).toNat

end

end A240421.P2902644235054192049

/-! ## A240421.P9300643935948582083

`A240422(A167499(n+3))`
-/

namespace A240421.P9300643935948582083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (A167499 (n + 3)).toNat

end

end A240421.P9300643935948582083

/-! ## A240421.P1665671533495503517

`A240422(A155212(n)+13)`
-/

namespace A240421.P1665671533495503517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (A155212 n + 13).toNat

end

end A240421.P1665671533495503517

/-! ## A240421.P2000252472960117627

`A240422(A056000(n)+15)`
-/

namespace A240421.P2000252472960117627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (A056000 n + 15).toNat

end

end A240421.P2000252472960117627

/-! ## A240421.P15535292650668171909

`A240422(eq[7, A066657(n)])`
-/

namespace A240421.P15535292650668171909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240422 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240421.P15535292650668171909

/-!
# A240422: T(n,k)=Number of nXk 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240422, there is no canonical definition to state claims against.
-/

/-! ## A240422.P16186686770640708658

`xor(A001227(A007611(n)), A174098(n+2))`
-/

namespace A240422.P16186686770640708658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001227 (A007611 n).toNat) (A174098 (n + 2))

end

end A240422.P16186686770640708658

/-!
# A240423: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240423, there is no canonical definition to state claims against.
-/

/-! ## A240423.P14426088689193639073

`A240427(∑[n+1]+2)`
-/

namespace A240423.P14426088689193639073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240423.P14426088689193639073

/-! ## A240423.P3901918031551959462

`record[A240427(A114091(n+1)+1)]`
-/

namespace A240423.P3901918031551959462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240423.P3901918031551959462

/-! ## A240423.P772709681318109494

`record[gcd(A240427(n+2), A279433(n+1))]`
-/

namespace A240423.P772709681318109494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240427 (n + 2)) (A279433 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240423.P772709681318109494

/-! ## A240423.P10904551444376777987

`A240427(A000096(n)+3)+A185044(n)`
-/

namespace A240423.P10904551444376777987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A000096 n + 3).toNat + A185044 n

end

end A240423.P10904551444376777987

/-! ## A240423.P10933799392687717588

`A240427(A000096(n)+3)%A250509(n+1)`
-/

namespace A240423.P10933799392687717588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240427 (A000096 n + 3).toNat) (A250509 (n + 1))

end

end A240423.P10933799392687717588

/-!
# A240424: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240424, there is no canonical definition to state claims against.
-/

/-! ## A240424.P3959076023515189396

`A240427(∑[n+2]+4)`
-/

namespace A240424.P3959076023515189396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240424.P3959076023515189396

/-! ## A240424.P12363307294491697617

`A240427(A167614(n+1))+A067168(n)`
-/

namespace A240424.P12363307294491697617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A167614 (n + 1)).toNat + A067168 (n + 10)

end

end A240424.P12363307294491697617

/-! ## A240424.P5915805437999629342

`A240427(A167614(n+1))+A084904(n)`
-/

namespace A240424.P5915805437999629342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A167614 (n + 1)).toNat + A084904 n

end

end A240424.P5915805437999629342

/-! ## A240424.P9698733095578574056

`A240427(A167614(n+1))+A107846(n)`
-/

namespace A240424.P9698733095578574056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A167614 (n + 1)).toNat + A107846 n

end

end A240424.P9698733095578574056

/-! ## A240424.P12158175767626158145

`A240427(A167614(n+1))+A165656(n)`
-/

namespace A240424.P12158175767626158145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A167614 (n + 1)).toNat + A165656 n

end

end A240424.P12158175767626158145

/-!
# A240425: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240425, there is no canonical definition to state claims against.
-/

/-! ## A240425.P2337773473257964935

`A240427(∑[n+3]+7)`
-/

namespace A240425.P2337773473257964935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240425.P2337773473257964935

/-! ## A240425.P13359655717751604919

`A163551(n+1)*A240427(A167614(n+2)+1)`
-/

namespace A240425.P13359655717751604919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163551 (n + 1) * A240427 (A167614 (n + 2) + 1).toNat

end

end A240425.P13359655717751604919

/-! ## A240425.P13852129127801236076

`record[A240427(A141214(abs(1-n)))]`
-/

namespace A240425.P13852129127801236076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A141214 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240425.P13852129127801236076

/-!
# A240426: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240426, there is no canonical definition to state claims against.
-/

/-! ## A240426.P16898368187732213976

`A240427(A374005(n+1))`
-/

namespace A240426.P16898368187732213976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A374005 (n + 1)).toNat

end

end A240426.P16898368187732213976

/-! ## A240426.P7150353050683719241

`A240427(A167499(n+3))`
-/

namespace A240426.P7150353050683719241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A167499 (n + 3)).toNat

end

end A240426.P7150353050683719241

/-! ## A240426.P2816690201618704724

`A240427(A077169(n+5))`
-/

namespace A240426.P2816690201618704724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A077169 (n + 5)).toNat

end

end A240426.P2816690201618704724

/-! ## A240426.P5311154683008096966

`A240427(A155212(n)+13)`
-/

namespace A240426.P5311154683008096966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A155212 n + 13).toNat

end

end A240426.P5311154683008096966

/-! ## A240426.P6779300569356572240

`A240427(A056000(n)+15)`
-/

namespace A240426.P6779300569356572240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240427 (A056000 n + 15).toNat

end

end A240426.P6779300569356572240

/-!
# A240428: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240428, the canonical program `A240428.P18327681239105083550` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240428 has offset 1).

The definition of A240428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240428.P18327681239105083550

`ogf((2+6x-14x^3-4x^4+14x^5+4x^6-8x^7)/(1-12x^2+24x^4-31x^6+16x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240428

/-- `ogf((2+6x-14x^3-4x^4+14x^5+4x^6-8x^7)/(1-12x^2+24x^4-31x^6+16x^8))` -/
def P18327681239105083550.Spec : Prop :=
  ∀ n, P18327681239105083550.a n = A240428 (n + 1)

theorem P18327681239105083550.correct : P18327681239105083550.Spec := by
  intro n
  simp only [A240428, Nat.add_sub_cancel]

end A240428

/-! ## A240428.P1949018105155578415

`A240433(∑[n+1]+2)`
-/

namespace A240428.P1949018105155578415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240428.P1949018105155578415

namespace A240428

/-- `A240433(∑[n+1]+2)` -/
def P1949018105155578415.Spec : Prop :=
  ∀ n, P1949018105155578415.a n = A240428 (n + 1)

end A240428

/-! ## A240428.P15215123592600480736

`record[A240433(A114091(n+1)+1)]`
-/

namespace A240428.P15215123592600480736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240428.P15215123592600480736

namespace A240428

/-- `record[A240433(A114091(n+1)+1)]` -/
def P15215123592600480736.Spec : Prop :=
  ∀ n, P15215123592600480736.a n = A240428 (n + 1)

end A240428

/-! ## A240428.P3202385507586324069

`record[A240433(A343409(n+1)+2)]`
-/

namespace A240428.P3202385507586324069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A343409 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240428.P3202385507586324069

namespace A240428

/-- `record[A240433(A343409(n+1)+2)]` -/
def P3202385507586324069.Spec : Prop :=
  ∀ n, P3202385507586324069.a n = A240428 (n + 1)

end A240428

/-! ## A240428.P13629063332827816165

`record[A010054(n)*A240433(n+2)]`
-/

namespace A240428.P13629063332827816165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A240433 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240428.P13629063332827816165

namespace A240428

/-- `record[A010054(n)*A240433(n+2)]` -/
def P13629063332827816165.Spec : Prop :=
  ∀ n, P13629063332827816165.a n = A240428 (n + 1)

end A240428

/-!
# A240429: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240429, there is no canonical definition to state claims against.
-/

/-! ## A240429.P8534520792124167756

`A240433(∑[n+2]+4)`
-/

namespace A240429.P8534520792124167756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240429.P8534520792124167756

/-! ## A240429.P11738161172981296937

`lcm(2, A240433(A167614(n+1)))`
-/

namespace A240429.P11738161172981296937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240433 (A167614 (n + 1)).toNat)

end

end A240429.P11738161172981296937

/-! ## A240429.P828933717791685014

`record[A010054(n+1)*A240433(n+4)]`
-/

namespace A240429.P828933717791685014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A240433 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240429.P828933717791685014

/-! ## A240429.P11790831635896118833

`A119335(n)*A240433(A167614(n+1))`
-/

namespace A240429.P11790831635896118833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A240433 (A167614 (n + 1)).toNat

end

end A240429.P11790831635896118833

/-! ## A240429.P5960563140436415190

`A240433(A167614(n+1))%A017622(n)`
-/

namespace A240429.P5960563140436415190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240433 (A167614 (n + 1)).toNat) (A017622 n)

end

end A240429.P5960563140436415190

/-!
# A240430: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240430, there is no canonical definition to state claims against.
-/

/-! ## A240430.P897110179600882747

`A240433(A374004(n+1))`
-/

namespace A240430.P897110179600882747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A374004 (n + 1)).toNat

end

end A240430.P897110179600882747

/-! ## A240430.P8403989650927015022

`A240433(A141214(n)+7)`
-/

namespace A240430.P8403989650927015022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A141214 n + 7).toNat

end

end A240430.P8403989650927015022

/-! ## A240430.P6522010256397129919

`A240433(A052905(n)+9)`
-/

namespace A240430.P6522010256397129919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A052905 n + 9).toNat

end

end A240430.P6522010256397129919

/-! ## A240430.P12054273015121977772

`A240433(A055999(n)+10)`
-/

namespace A240430.P12054273015121977772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A055999 n + 10).toNat

end

end A240430.P12054273015121977772

/-! ## A240430.P5311424349624161086

`A240433(eq[5, A066657(n)])`
-/

namespace A240430.P5311424349624161086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240430.P5311424349624161086

/-!
# A240431: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240431, there is no canonical definition to state claims against.
-/

/-! ## A240431.P14925118903018496870

`A240433(A374005(n+1))`
-/

namespace A240431.P14925118903018496870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A374005 (n + 1)).toNat

end

end A240431.P14925118903018496870

/-! ## A240431.P12944321493762737777

`A240433(A167499(n+3))`
-/

namespace A240431.P12944321493762737777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A167499 (n + 3)).toNat

end

end A240431.P12944321493762737777

/-! ## A240431.P6509700718137532515

`A240433(A155212(n)+13)`
-/

namespace A240431.P6509700718137532515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A155212 n + 13).toNat

end

end A240431.P6509700718137532515

/-! ## A240431.P13285883287183498312

`A240433(A056000(n)+15)`
-/

namespace A240431.P13285883287183498312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A056000 n + 15).toNat

end

end A240431.P13285883287183498312

/-! ## A240431.P1210665456809357618

`A240433(eq[7, A066657(n)])`
-/

namespace A240431.P1210665456809357618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240431.P1210665456809357618

/-!
# A240432: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240432, there is no canonical definition to state claims against.
-/

/-! ## A240432.P10397023843940831273

`A240433(A374007(n+1))`
-/

namespace A240432.P10397023843940831273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A374007 (n + 1)).toNat

end

end A240432.P10397023843940831273

/-! ## A240432.P18404081677396598314

`A240433(A056115(n)+21)`
-/

namespace A240432.P18404081677396598314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A056115 n + 21).toNat

end

end A240432.P18404081677396598314

/-! ## A240432.P15222523124566311812

`A240433(A167487(n+4)-1)`
-/

namespace A240432.P15222523124566311812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A167487 (n + 4) - 1).toNat

end

end A240432.P15222523124566311812

/-! ## A240432.P13079782301839729557

`A240433(eq[7, A131818(n+1)])`
-/

namespace A240432.P13079782301839729557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240432.P13079782301839729557

/-! ## A240432.P1755218983595919124

`A240433(A052905(n+3))`
-/

namespace A240432.P1755218983595919124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240433 (A052905 (n + 3)).toNat

end

end A240432.P1755218983595919124

/-!
# A240434: Binomial transform of the sum of the first n even squares (A002492).

The programs for A240434, the canonical program `A240434.P12849352123746436374` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240434 has offset 0).

The definition of A240434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240434.P12849352123746436374

`(-1)^n*∑{#}[floor(n/2), C(n-#, #)*(-4)^(n-#)*(n-#)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240434

/-- `(-1)^n*∑{#}[floor(n/2), C(n-#, #)*(-4)^(n-#)*(n-#)]` -/
def P12849352123746436374.Spec : Prop :=
  ∀ n, P12849352123746436374.a n = (A240434 n : ℚ)

end A240434

/-! ## A240434.P2954670085939969015

`2^n*∑[∑[n]+n]`
-/

namespace A240434.P2954670085939969015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240434.P2954670085939969015

namespace A240434

/-- `2^n*∑[∑[n]+n]` -/
def P2954670085939969015.Spec : Prop :=
  ∀ n, (P2954670085939969015.a n : ℤ) = A240434 n

end A240434

/-! ## A240434.P9744983540842341806

`∑[A001794(n)-A001792(n)]`
-/

namespace A240434.P9744983540842341806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 n - A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240434.P9744983540842341806

namespace A240434

/-- `∑[A001794(n)-A001792(n)]` -/
def P9744983540842341806.Spec : Prop :=
  ∀ n, P9744983540842341806.a n = A240434 n

end A240434

/-! ## A240434.P14875245827349785525

`A001789(n+3)-∑[A001792(n)]`
-/

namespace A240434.P14875245827349785525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240434.P14875245827349785525

namespace A240434

/-- `A001789(n+3)-∑[A001792(n)]` -/
def P14875245827349785525.Spec : Prop :=
  ∀ n, P14875245827349785525.a n = A240434 n

end A240434

/-! ## A240434.P13287113268854307421

`A001789(n+3)-A001787(n+1)`
-/

namespace A240434.P13287113268854307421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (n + 3) - A001787 (n + 1)

end

end A240434.P13287113268854307421

namespace A240434

/-- `A001789(n+3)-A001787(n+1)` -/
def P13287113268854307421.Spec : Prop :=
  ∀ n, P13287113268854307421.a n = A240434 n

end A240434

/-! ## A240434.P10320763988429026938

`A001789(n+3)-A139756(n+2)`
-/

namespace A240434.P10320763988429026938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (n + 3) - A139756 (n + 2)

end

end A240434.P10320763988429026938

namespace A240434

/-- `A001789(n+3)-A139756(n+2)` -/
def P10320763988429026938.Spec : Prop :=
  ∀ n, P10320763988429026938.a n = A240434 n

end A240434

/-! ## A240434.P5811088142484307527

`A331408(2*n+1)+A330592(2*(n+1))`
-/

namespace A240434.P5811088142484307527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331408 (2 * n + 1) + A330592 (2 * (n + 1))

end

end A240434.P5811088142484307527

namespace A240434

/-- `A331408(2*n+1)+A330592(2*(n+1))` -/
def P5811088142484307527.Spec : Prop :=
  ∀ n, P5811088142484307527.a n = A240434 n

end A240434

/-! ## A240434.P18362267617256902822

`A085385(n+1)-(A001788(n)+A001787(n+1))`
-/

namespace A240434.P18362267617256902822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085385 (n + 1) - (A001788 n + A001787 (n + 1))

end

end A240434.P18362267617256902822

namespace A240434

/-- `A085385(n+1)-(A001788(n)+A001787(n+1))` -/
def P18362267617256902822.Spec : Prop :=
  ∀ n, P18362267617256902822.a n = A240434 n

end A240434

/-! ## A240434.P16585827014857057131

`A085385(n+1)+A001788(n)-A001788(n+1)`
-/

namespace A240434.P16585827014857057131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085385 (n + 1) + (A001788 n - A001788 (n + 1))

end

end A240434.P16585827014857057131

namespace A240434

/-- `A085385(n+1)+A001788(n)-A001788(n+1)` -/
def P16585827014857057131.Spec : Prop :=
  ∀ n, P16585827014857057131.a n = A240434 n

end A240434

/-! ## A240434.P16517262950889851000

`Δ[2^n*∑[C(n, 2)]]`
-/

namespace A240434.P16517262950889851000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A240434.P16517262950889851000

namespace A240434

/-- `Δ[2^n*∑[C(n, 2)]]` -/
def P16517262950889851000.Spec : Prop :=
  ∀ n, P16517262950889851000.a n = A240434 n

end A240434

/-! ## A240434.P10307215264778717695

`Δ[2^n*C(n+1, 3)]`
-/

namespace A240434.P10307215264778717695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A240434.P10307215264778717695

namespace A240434

/-- `Δ[2^n*C(n+1, 3)]` -/
def P10307215264778717695.Spec : Prop :=
  ∀ n, P10307215264778717695.a n = A240434 n

end A240434

/-! ## A240434.P2084718950969135966

`Δ[A290026(n+1)]`
-/

namespace A240434.P2084718950969135966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240434.P2084718950969135966

namespace A240434

/-- `Δ[A290026(n+1)]` -/
def P2084718950969135966.Spec : Prop :=
  ∀ n, P2084718950969135966.a n = A240434 n

end A240434

/-! ## A240434.P11598365304158838803

`Δ[A331408(Δ[n²])]`
-/

namespace A240434.P11598365304158838803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331408 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240434.P11598365304158838803

namespace A240434

/-- `Δ[A331408(Δ[n²])]` -/
def P11598365304158838803.Spec : Prop :=
  ∀ n, P11598365304158838803.a n = A240434 n

end A240434

/-! ## A240434.P1133984984695452705

`A290026(n+2)-A290026(n+1)`
-/

namespace A240434.P1133984984695452705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290026 (n + 2) - A290026 (n + 1)

end

end A240434.P1133984984695452705

namespace A240434

/-- `A290026(n+2)-A290026(n+1)` -/
def P1133984984695452705.Spec : Prop :=
  ∀ n, P1133984984695452705.a n = A240434 n

end A240434

/-! ## A240434.P7799013261689349555

`Δ[Δ[A000332(n+1)]*A011782(n+1)]`
-/

namespace A240434.P7799013261689349555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240434.P7799013261689349555

namespace A240434

/-- `Δ[Δ[A000332(n+1)]*A011782(n+1)]` -/
def P7799013261689349555.Spec : Prop :=
  ∀ n, P7799013261689349555.a n = A240434 n

end A240434

/-! ## A240434.P16109320130590335069

`A331408(2*n+3)-A331408(2*n+1)`
-/

namespace A240434.P16109320130590335069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331408 (2 * n + 3) - A331408 (2 * n + 1)

end

end A240434.P16109320130590335069

namespace A240434

/-- `A331408(2*n+3)-A331408(2*n+1)` -/
def P16109320130590335069.Spec : Prop :=
  ∀ n, P16109320130590335069.a n = A240434 n

end A240434

/-! ## A240434.P13599011427941430356

`A014483(n)-(A087076(n)+A001793(n+1))`
-/

namespace A240434.P13599011427941430356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014483 n - (A087076 n + A001793 (n + 1))

end

end A240434.P13599011427941430356

namespace A240434

/-- `A014483(n)-(A087076(n)+A001793(n+1))` -/
def P13599011427941430356.Spec : Prop :=
  ∀ n, P13599011427941430356.a n = A240434 n

end A240434

/-! ## A240434.P17983362931067728220

`A087076(n+1)-(A087076(n)+A001793(n+1))`
-/

namespace A240434.P17983362931067728220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087076 (n + 1) - (A087076 n + A001793 (n + 1))

end

end A240434.P17983362931067728220

namespace A240434

/-- `A087076(n+1)-(A087076(n)+A001793(n+1))` -/
def P17983362931067728220.Spec : Prop :=
  ∀ n, P17983362931067728220.a n = A240434 n

end A240434

/-! ## A240434.P13085230096827763887

`ogf((4x-4x^2)/(1-8x+24x^2-32x^3+16x^4))`
-/

namespace A240434.P13085230096827763887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -4] [1, -8, 24, -32, 16] n

end

end A240434.P13085230096827763887

namespace A240434

/-- `ogf((4x-4x^2)/(1-8x+24x^2-32x^3+16x^4))` -/
def P13085230096827763887.Spec : Prop :=
  ∀ n, P13085230096827763887.a n = A240434 n

end A240434

/-! ## A240434.P17291724152552189063

`Δ[A331408(2*(n+1))/2]`
-/

namespace A240434.P17291724152552189063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331408 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240434.P17291724152552189063

namespace A240434

/-- `Δ[A331408(2*(n+1))/2]` -/
def P17291724152552189063.Spec : Prop :=
  ∀ n, P17291724152552189063.a n = (A240434 n : ℚ)

end A240434

/-!
# A240435: Catalan numbers whose sum of digits is a prime.

The programs for A240435, there is no canonical definition to state claims against.
-/

/-! ## A240435.P1831204037404829567

`A000108(A351505(n)+A222085(n+1))`
-/

namespace A240435.P1831204037404829567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A351505 n + A222085 (n + 1)).toNat

end

end A240435.P1831204037404829567

/-!
# A240436: Semiprimes of the form n^3 - 2*n.

The programs for A240436, there is no canonical definition to state claims against.
-/

/-! ## A240436.P3827398094650787521

`A062326(n+1)*(A062326(n+1)²-2)`
-/

namespace A240436.P3827398094650787521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1) * (A062326 (n + 1) ^ 2 - 2)

end

end A240436.P3827398094650787521

/-! ## A240436.P17096289514288816610

`A049002(n+1)*A062326(n+1)`
-/

namespace A240436.P17096289514288816610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049002 (n + 1) * A062326 (n + 1)

end

end A240436.P17096289514288816610

/-! ## A240436.P4585124607874987983

`sqrt(A146981(n+1))*A049002(n+1)`
-/

namespace A240436.P4585124607874987983
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A146981 (n + 1) : ℝ) * (A049002 (n + 1) : ℝ)

end

end A240436.P4585124607874987983

/-! ## A240436.P13260487938240105398

`A000040(A137291(n+1))*A049002(n+1)`
-/

namespace A240436.P13260487938240105398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A137291 (n + 1)).toNat * A049002 (n + 1)

end

end A240436.P13260487938240105398

/-! ## A240436.P3888636809015880630

`A049001(A137291(n+1))*A062326(n+1)`
-/

namespace A240436.P3888636809015880630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (A137291 (n + 1)).toNat * A062326 (n + 1)

end

end A240436.P3888636809015880630

/-! ## A240436.P3125707963554384175

`A242135(A062326(n+1))`
-/

namespace A240436.P3125707963554384175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 (A062326 (n + 1)).toNat

end

end A240436.P3125707963554384175

/-! ## A240436.P17420335516044579958

`record[A014963(A028870(n+1))*A028871(n+1)]`
-/

namespace A240436.P17420335516044579958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A028870 (n + 1)).toNat * A028871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240436.P17420335516044579958

/-! ## A240436.P2162315043364910753

`record[A000040(n+1)*A164314(A000040(n+1))]`
-/

namespace A240436.P2162315043364910753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A164314 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240436.P2162315043364910753

/-! ## A240436.P9492636820507773873

`record[A006530(n+2)*A164314(A006530(n+2))]`
-/

namespace A240436.P9492636820507773873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A164314 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240436.P9492636820507773873

/-! ## A240436.P3322646755137690844

`record[A020639(n+2)*A164314(A020639(n+2))]`
-/

namespace A240436.P3322646755137690844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) * A164314 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240436.P3322646755137690844

/-!
# A240437: Number of non-palindromic n-tuples of 5 distinct elements.

The programs for A240437, the canonical program `A240437.P129852118433053929` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240437 has offset 1).

The definition of A240437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240437.P15895507346525840118

`ogf(20x/(1-5x-5x^2+25x^3))`
-/

namespace A240437.P15895507346525840118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 20] [1, -5, -5, 25] n

end

end A240437.P15895507346525840118

namespace A240437

/-- `ogf(20x/(1-5x-5x^2+25x^3))` -/
def P15895507346525840118.Spec : Prop :=
  ∀ n, P15895507346525840118.a n = A240437 (n + 1)

end A240437

/-! ## A240437.P129852118433053929

`5^(n+1)-5^ceil((n+1)/2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240437

/-- `5^(n+1)-5^ceil((n+1)/2)` -/
def P129852118433053929.Spec : Prop :=
  ∀ n, P129852118433053929.a n = (A240437 (n + 1) : ℚ)

end A240437

/-! ## A240437.P5659357236228498936

`record[Δ[A056451(A029579(n))]]`
-/

namespace A240437.P5659357236228498936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (A029579 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240437.P5659357236228498936

namespace A240437

/-- `record[Δ[A056451(A029579(n))]]` -/
def P5659357236228498936.Spec : Prop :=
  ∀ n, P5659357236228498936.a n = A240437 (n + 1)

end A240437

/-! ## A240437.P3404148219035287133

`record[Δ[A000351(A178804(n+1))]]`
-/

namespace A240437.P3404148219035287133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A178804 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240437.P3404148219035287133

namespace A240437

/-- `record[Δ[A000351(A178804(n+1))]]` -/
def P3404148219035287133.Spec : Prop :=
  ∀ n, P3404148219035287133.a n = A240437 (n + 1)

end A240437

/-! ## A240437.P11964669059090756355

`2*(A000351(n+1)-A032122(n+1))`
-/

namespace A240437.P11964669059090756355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000351 (n + 1) - A032122 (n + 1))

end

end A240437.P11964669059090756355

namespace A240437

/-- `2*(A000351(n+1)-A032122(n+1))` -/
def P11964669059090756355.Spec : Prop :=
  ∀ n, P11964669059090756355.a n = A240437 (n + 1)

end A240437

/-! ## A240437.P8568257119018195572

`2*(A032122(n+1)-A056451(n+1))`
-/

namespace A240437.P8568257119018195572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032122 (n + 1) - A056451 (n + 1))

end

end A240437.P8568257119018195572

namespace A240437

/-- `2*(A032122(n+1)-A056451(n+1))` -/
def P8568257119018195572.Spec : Prop :=
  ∀ n, P8568257119018195572.a n = A240437 (n + 1)

end A240437

/-! ## A240437.P16342812971510783755

`Δ[5*A121102(n+2)]`
-/

namespace A240437.P16342812971510783755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A121102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240437.P16342812971510783755

namespace A240437

/-- `Δ[5*A121102(n+2)]` -/
def P16342812971510783755.Spec : Prop :=
  ∀ n, P16342812971510783755.a n = A240437 (n + 1)

end A240437

/-!
# A240438: Greatest minimal difference between numbers of adjacent cells in a regular hexagonal honeycomb of order n with cells numbered from 1 through the total number of cells, the order n corresponding to the number of cells on one side of the honeycomb.

The programs for A240438, the canonical program `A240438.P8752435431995714173` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240438 has offset 1).

The definition of A240438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240438.P8752435431995714173

`(n+1)*n-floor((n+2)/3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240438

/-- `(n+1)*n-floor((n+2)/3)` -/
def P8752435431995714173.Spec : Prop :=
  ∀ n, P8752435431995714173.a n = A240438 (n + 1)

theorem P8752435431995714173.correct : P8752435431995714173.Spec := by
  intro n
  simp only [A240438, Nat.add_sub_cancel]

end A240438

/-! ## A240438.P6953392914924651835

`ogf((x+3x^2+2x^3)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A240438.P6953392914924651835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 2] [1, -2, 1, -1, 2, -1] n

end

end A240438.P6953392914924651835

namespace A240438

/-- `ogf((x+3x^2+2x^3)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P6953392914924651835.Spec : Prop :=
  ∀ n, P6953392914924651835.a n = A240438 (n + 1)

end A240438

/-! ## A240438.P12775227679079183219

`∑[2*n-∑[n]%3]`
-/

namespace A240438.P12775227679079183219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P12775227679079183219

namespace A240438

/-- `∑[2*n-∑[n]%3]` -/
def P12775227679079183219.Spec : Prop :=
  ∀ n, P12775227679079183219.a n = A240438 (n + 1)

end A240438

/-! ## A240438.P12083962820475481660

`∑[char[∑[gcd(2, n)]]]+n²`
-/

namespace A240438.P12083962820475481660
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A240438.P12083962820475481660

namespace A240438

/-- `∑[char[∑[gcd(2, n)]]]+n²` -/
def P12083962820475481660.Spec : Prop :=
  ∀ n, (P12083962820475481660.a n : ℤ) = A240438 (n + 1)

end A240438

/-! ## A240438.P10889043618091061769

`∑[a(n-3)+6]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A240438.P10889043618091061769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P10889043618091061769

namespace A240438

/-- `∑[a(n-3)+6]` -/
def P10889043618091061769.Spec : Prop :=
  ∀ n, (P10889043618091061769.a n : ℤ) = A240438 (n + 1)

end A240438

/-! ## A240438.P17835644609735238530

`lcm(n, n+1)-ceil(n/3)`
-/

namespace A240438.P17835644609735238530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℤ) - ⌈(n : ℚ) / 3⌉

end

end A240438.P17835644609735238530

namespace A240438

/-- `lcm(n, n+1)-ceil(n/3)` -/
def P17835644609735238530.Spec : Prop :=
  ∀ n, P17835644609735238530.a n = A240438 (n + 1)

end A240438

/-! ## A240438.P10780129052355267966

`∑[n-(n%3)%2+n]`
-/

namespace A240438.P10780129052355267966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 3 % 2 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P10780129052355267966

namespace A240438

/-- `∑[n-(n%3)%2+n]` -/
def P10780129052355267966.Spec : Prop :=
  ∀ n, P10780129052355267966.a n = A240438 (n + 1)

end A240438

/-! ## A240438.P10088662952568132475

`∑[n-(∑[n]²%3-n)]`
-/

namespace A240438.P10088662952568132475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 % 3 : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P10088662952568132475

namespace A240438

/-- `∑[n-(∑[n]²%3-n)]` -/
def P10088662952568132475.Spec : Prop :=
  ∀ n, P10088662952568132475.a n = A240438 (n + 1)

end A240438

/-! ## A240438.P9275796310910915320

`∑[∑[abs(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A240438.P9275796310910915320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P9275796310910915320

namespace A240438

/-- `∑[∑[abs(a(n-3))]]` -/
def P9275796310910915320.Spec : Prop :=
  ∀ n, (P9275796310910915320.a n : ℤ) = A240438 (n + 1)

end A240438

/-! ## A240438.P3941498581499976278

`∑[∑[dr(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A240438.P3941498581499976278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P3941498581499976278

namespace A240438

/-- `∑[∑[dr(a(n-3))]]` -/
def P3941498581499976278.Spec : Prop :=
  ∀ n, (P3941498581499976278.a n : ℤ) = A240438 (n + 1)

end A240438

/-! ## A240438.P5802075849215131397

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A240438.P5802075849215131397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P5802075849215131397

namespace A240438

/-- `∑[∑[floor(a(n-3))]]` -/
def P5802075849215131397.Spec : Prop :=
  ∀ n, (P5802075849215131397.a n : ℤ) = A240438 (n + 1)

end A240438

/-! ## A240438.P5911897624253917426

`∑[∑[ceil(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A240438.P5911897624253917426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P5911897624253917426

namespace A240438

/-- `∑[∑[ceil(a(n-3))]]` -/
def P5911897624253917426.Spec : Prop :=
  ∀ n, (P5911897624253917426.a n : ℤ) = A240438 (n + 1)

end A240438

/-! ## A240438.P15577965898475953562

`∑[∑[round(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A240438.P15577965898475953562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P15577965898475953562

namespace A240438

/-- `∑[∑[round(a(n-3))]]` -/
def P15577965898475953562.Spec : Prop :=
  ∀ n, (P15577965898475953562.a n : ℤ) = A240438 (n + 1)

end A240438

/-! ## A240438.P14355439142765246526

`∑[∑[a(n-3)%4]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A240438.P14355439142765246526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f2 =>
  f2 (n - 3) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P14355439142765246526

namespace A240438

/-- `∑[∑[a(n-3)%4]]` -/
def P14355439142765246526.Spec : Prop :=
  ∀ n, (P14355439142765246526.a n : ℤ) = A240438 (n + 1)

end A240438

/-! ## A240438.P3752247835260034670

`∑[∑[gcd(6, a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A240438.P3752247835260034670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f2 =>
  Nat.gcd 6 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P3752247835260034670

namespace A240438

/-- `∑[∑[gcd(6, a(n-3))]]` -/
def P3752247835260034670.Spec : Prop :=
  ∀ n, (P3752247835260034670.a n : ℤ) = A240438 (n + 1)

end A240438

/-! ## A240438.P2616170908458812406

`∑[∪[2*n+1+n, 6*n]]`
-/

namespace A240438.P2616170908458812406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P2616170908458812406

namespace A240438

/-- `∑[∪[2*n+1+n, 6*n]]` -/
def P2616170908458812406.Spec : Prop :=
  ∀ n, (P2616170908458812406.a n : ℤ) = A240438 (n + 1)

end A240438

/-! ## A240438.P10378977069268915004

`∑[∑[∑[ogf((x+3x^2+2x^3)/(1+x+x^2))]]]`
-/

namespace A240438.P10378977069268915004
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 2] [1, 1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P10378977069268915004

namespace A240438

/-- `∑[∑[∑[ogf((x+3x^2+2x^3)/(1+x+x^2))]]]` -/
def P10378977069268915004.Spec : Prop :=
  ∀ n, P10378977069268915004.a n = A240438 (n + 1)

end A240438

/-! ## A240438.P9690305654961531178

`∑[∑[4-a(a(n-1))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A240438.P9690305654961531178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2] fun n f2 =>
  4 - f2 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P9690305654961531178

namespace A240438

/-- `∑[∑[4-a(a(n-1))]]` -/
def P9690305654961531178.Spec : Prop :=
  ∀ n, P9690305654961531178.a n = A240438 (n + 1)

end A240438

/-! ## A240438.P16637433803423760179

`∑[A047234(n+1)]`
-/

namespace A240438.P16637433803423760179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240438.P16637433803423760179

namespace A240438

/-- `∑[A047234(n+1)]` -/
def P16637433803423760179.Spec : Prop :=
  ∀ n, P16637433803423760179.a n = A240438 (n + 1)

end A240438

/-!
# A240439: Triangle T(n, k) = Numbers of ways to place k points on a triangular grid of side n so that no three of them are vertices of an equilateral triangle of any orientation. Triangle read by rows.

The programs for A240439, there is no canonical definition to state claims against.
-/

/-! ## A240439.P5572499152348500117

`A057944(A243211(n+1)%A219627(∑[n+1]+2))`
-/

namespace A240439.P5572499152348500117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (Int.tmod (A243211 (n + 1)) (A219627 (∑ j ∈ Finset.range (n + 1), f1 j + 2))).toNat

end

end A240439.P5572499152348500117

/-! ## A240439.P5730568503629016387

`A243211(A043318(n+1))`
-/

namespace A240439.P5730568503629016387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243211 (A043318 (n + 1)).toNat

end

end A240439.P5730568503629016387

/-! ## A240439.P14187517002827588048

`A243211(A044915(n+1))`
-/

namespace A240439.P14187517002827588048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243211 (A044915 (n + 1)).toNat

end

end A240439.P14187517002827588048

/-! ## A240439.P15593843741772311759

`A085736(A243211(n+1))`
-/

namespace A240439.P15593843741772311759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A243211 (n + 1)).toNat

end

end A240439.P15593843741772311759

/-! ## A240439.P6153278330170152611

`A243211(A161951(n+1))`
-/

namespace A240439.P6153278330170152611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243211 (A161951 (n + 1)).toNat

end

end A240439.P6153278330170152611

/-!
# A240440: Number of ways to place 3 points on a triangular grid of side n so that they are not vertices of an equilateral triangle of any orientation.

The programs for A240440, the canonical program `A240440.P13847665072072513550` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240440 has offset 1).

The definition of A240440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240440.P540851481537901440

`ogf(15x^2/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A240440.P540851481537901440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 15] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A240440.P540851481537901440

namespace A240440

/-- `ogf(15x^2/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P540851481537901440.Spec : Prop :=
  ∀ n, P540851481537901440.a n = A240440 (n + 1)

end A240440

/-! ## A240440.P6960659249499474047

`((n+1)²-1)*((n+1)²-4)*(n+4)*(n+1)/48`
-/

namespace A240440.P6960659249499474047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 1) ^ 2 : ℤ) - 1) * (((n + 1) ^ 2 : ℤ) - 4) * (n + 4 : ℤ) * (n + 1 : ℤ) : ℚ) / 48

end

end A240440.P6960659249499474047

namespace A240440

/-- `((n+1)²-1)*((n+1)²-4)*(n+4)*(n+1)/48` -/
def P6960659249499474047.Spec : Prop :=
  ∀ n, P6960659249499474047.a n = (A240440 (n + 1) : ℚ)

theorem P6960659249499474047.correct : P6960659249499474047.Spec := by
  intro n
  simp only [A240440, Nat.add_sub_cancel, A240440.P6960659249499474047.a, A240440.P13847665072072513550.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240440

/-! ## A240440.P13847665072072513550

`15*A000579(n+4)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A240440

/-- `15*A000579(n+4)` -/
def P13847665072072513550.Spec : Prop :=
  ∀ n, P13847665072072513550.a n = A240440 (n + 1)

theorem P13847665072072513550.correct : P13847665072072513550.Spec := by
  intro n
  simp only [A240440, Nat.add_sub_cancel]

end A240440

/-! ## A240440.P8104490772459186818

`15*C(n+4, 6)`
-/

namespace A240440.P8104490772459186818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * Nat.choose (n + 4) 6

end

end A240440.P8104490772459186818

namespace A240440

/-- `15*C(n+4, 6)` -/
def P8104490772459186818.Spec : Prop :=
  ∀ n, (P8104490772459186818.a n : ℤ) = A240440 (n + 1)

theorem P8104490772459186818.correct : P8104490772459186818.Spec := by
  intro n
  simp only [A240440, Nat.add_sub_cancel, A240440.P8104490772459186818.a, A240440.P13847665072072513550.a, A000579, A000579.P13663713855180125612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240440

/-! ## A240440.P3784367160114499764

`∑[∑[5*C(∑[n], 2)]]`
-/

namespace A240440.P3784367160114499764
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240440.P3784367160114499764

namespace A240440

/-- `∑[∑[5*C(∑[n], 2)]]` -/
def P3784367160114499764.Spec : Prop :=
  ∀ n, (P3784367160114499764.a n : ℤ) = A240440 (n + 1)

end A240440

/-! ## A240440.P2995970814825503248

`∑[(n+3)*A050534(n+1)]`
-/

namespace A240440.P2995970814825503248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A050534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240440.P2995970814825503248

namespace A240440

/-- `∑[(n+3)*A050534(n+1)]` -/
def P2995970814825503248.Spec : Prop :=
  ∀ n, P2995970814825503248.a n = A240440 (n + 1)

end A240440

/-! ## A240440.P6711300348986882377

`∑[A151974(n)]-A151974(n)`
-/

namespace A240440.P6711300348986882377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A151974 n

end

end A240440.P6711300348986882377

namespace A240440

/-- `∑[A151974(n)]-A151974(n)` -/
def P6711300348986882377.Spec : Prop :=
  ∀ n, P6711300348986882377.a n = A240440 (n + 1)

end A240440

/-! ## A240440.P1537901915571322808

`A198833(n+1)-A006323(n+1)`
-/

namespace A240440.P1537901915571322808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198833 (n + 1) - A006323 (n + 1)

end

end A240440.P1537901915571322808

namespace A240440

/-- `A198833(n+1)-A006323(n+1)` -/
def P1537901915571322808.Spec : Prop :=
  ∀ n, P1537901915571322808.a n = A240440 (n + 1)

end A240440

/-! ## A240440.P16275093156940139567

`∑[∑[A266395(n+3)]]`
-/

namespace A240440.P16275093156940139567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266395 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240440.P16275093156940139567

namespace A240440

/-- `∑[∑[A266395(n+3)]]` -/
def P16275093156940139567.Spec : Prop :=
  ∀ n, P16275093156940139567.a n = A240440 (n + 1)

end A240440

/-! ## A240440.P15786015010839385356

`A093566(n+3)-A000332(n+3)`
-/

namespace A240440.P15786015010839385356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (n + 3) - A000332 (n + 3)

end

end A240440.P15786015010839385356

namespace A240440

/-- `A093566(n+3)-A000332(n+3)` -/
def P15786015010839385356.Spec : Prop :=
  ∀ n, P15786015010839385356.a n = A240440 (n + 1)

theorem P15786015010839385356.correct : P15786015010839385356.Spec := by
  intro n
  simp only [A240440, Nat.add_sub_cancel, A240440.P15786015010839385356.a, A240440.P13847665072072513550.a, A000332, A000332.P5946310388023661265.a, A000579, A000579.P13663713855180125612.a, A093566, A093566.P17843622386652552832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A240440

/-! ## A240440.P3609082386152580855

`∑[(n-1)*A000217(∑[n]+n)]`
-/

namespace A240440.P3609082386152580855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000217 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240440.P3609082386152580855

namespace A240440

/-- `∑[(n-1)*A000217(∑[n]+n)]` -/
def P3609082386152580855.Spec : Prop :=
  ∀ n, P3609082386152580855.a n = A240440 (n + 1)

end A240440

/-! ## A240440.P4101139639934342541

`∑[(n+3)*A161680(A161680(n+1))]`
-/

namespace A240440.P4101139639934342541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A161680 (A161680 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240440.P4101139639934342541

namespace A240440

/-- `∑[(n+3)*A161680(A161680(n+1))]` -/
def P4101139639934342541.Spec : Prop :=
  ∀ n, P4101139639934342541.a n = A240440 (n + 1)

end A240440

/-! ## A240440.P8048695206460781168

`A050407(A000124(n+1))-A145126(n)`
-/

namespace A240440.P8048695206460781168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (A000124 (n + 1)).toNat - A145126 n

end

end A240440.P8048695206460781168

namespace A240440

/-- `A050407(A000124(n+1))-A145126(n)` -/
def P8048695206460781168.Spec : Prop :=
  ∀ n, P8048695206460781168.a n = A240440 (n + 1)

end A240440

/-! ## A240440.P14714289637990197448

`A000292(A028552(n)/2)-A033488(n)`
-/

namespace A240440.P14714289637990197448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (SequenceMachineLib.roundAway ((A028552 n : ℚ) / 2)).toNat - A033488 n

end

end A240440.P14714289637990197448

namespace A240440

/-- `A000292(A028552(n)/2)-A033488(n)` -/
def P14714289637990197448.Spec : Prop :=
  ∀ n, P14714289637990197448.a n = A240440 (n + 1)

end A240440

/-! ## A240440.P17427707561149045119

`∑[∑[A338544(∑[2*n])]]`
-/

namespace A240440.P17427707561149045119
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338544 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240440.P17427707561149045119

namespace A240440

/-- `∑[∑[A338544(∑[2*n])]]` -/
def P17427707561149045119.Spec : Prop :=
  ∀ n, P17427707561149045119.a n = A240440 (n + 1)

end A240440

/-!
# A240441: Number of ways to place 4 points on a triangular grid of side n so that no three of these points are vertices of an equilateral triangle of any orientation.

The programs for A240441, the canonical program `A240441.P6502028946126697877` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240441 has offset 1).

The definition of A240441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240441.P6502028946126697877

`ogf((3x^2+93x^3+228x^4+93x^5+3x^6)/(1-7x+19x^2-21x^3-6x^4+42x^5-42x^6+6x^7+21x^8-19x^9+7x^10-x^11))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240441

/-- `ogf((3x^2+93x^3+228x^4+93x^5+3x^6)/(1-7x+19x^2-21x^3-6x^4+42x^5-42x^6+6x^7+21x^8-19x^9+7x^10-x^11))` -/
def P6502028946126697877.Spec : Prop :=
  ∀ n, P6502028946126697877.a n = A240441 (n + 1)

theorem P6502028946126697877.correct : P6502028946126697877.Spec := by
  intro n
  simp only [A240441, Nat.add_sub_cancel]

end A240441

/-!
# A240443: Maximal number of points that can be placed on an n X n square grid so that no four of them are vertices of a square with any orientation.

The programs for A240443, there is no canonical definition to state claims against.
-/

/-! ## A240443.P3838707069419836056

`floor((n+1)^(29/17))`
-/

namespace A240443.P3838707069419836056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((29 : ℚ) / 17 : ℝ)⌋

end

end A240443.P3838707069419836056

/-! ## A240443.P8735931288335809203

`∑[ceil(∑[∏{p}[n, 2/#]])]`
-/

namespace A240443.P8735931288335809203
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 2 / (p : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240443.P8735931288335809203

/-! ## A240443.P9148896827720445399

`∑[round(∑[sin(log(n+3))])]`
-/

namespace A240443.P9148896827720445399
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.log (n + 3 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240443.P9148896827720445399

/-! ## A240443.P8230606839677931379

`∑[floor(∑[1/acot(acot(n))])]`
-/

namespace A240443.P8230606839677931379
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / SequenceMachineLib.acot (SequenceMachineLib.acot (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240443.P8230606839677931379

/-! ## A240443.P1312147605361225195

`∑[ceil(∑[cos(cos(n^n))])]`
-/

namespace A240443.P1312147605361225195
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.cos (n ^ n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A240443.P1312147605361225195

/-!
# A240444: Triangle T(n, k) = Number of ways to arrange k indistinguishable points on an n X n square grid so that no four of them are vertices of a square of any orientation.

The programs for A240444, there is no canonical definition to state claims against.
-/

/-! ## A240444.P14106011972613378212

`A217285(∑[A217653(n)!])`
-/

namespace A240444.P14106011972613378212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A217653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240444.P14106011972613378212

/-! ## A240444.P404408139091903486

`filter[A227436(n+1), A225181(#)]`
-/

namespace A240444.P404408139091903486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A240444.P404408139091903486

/-! ## A240444.P14182073834341007555

`A244081(lt[A051593(n), A000203(n+1)])`
-/

namespace A240444.P14182073834341007555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051593 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244081 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240444.P14182073834341007555

/-! ## A240444.P5783808160003228924

`A217285(lt[A120042(n), A341969(n+1)])`
-/

namespace A240444.P5783808160003228924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217285 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240444.P5783808160003228924

/-! ## A240444.P2107464929704507640

`A279445(A037143(n+1)%A299378(n+3))`
-/

namespace A240444.P2107464929704507640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279445 (Int.tmod (A037143 (n + 1)) (A299378 (n + 3))).toNat

end

end A240444.P2107464929704507640

/-!
# A240445: Numbers of ways to place five indistinguishable points on an n X n square grid so that no four of them are vertices of a square of any orientation.

The programs for A240445, the canonical program `A240445.P14029249501003185447` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240445 has offset 3).

The definition of A240445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240445.P14029249501003185447

`((n+3)^10-10*(n+3)^8+25*(n+3)^6-16*(n+3)²)/120`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240445

/-- `((n+3)^10-10*(n+3)^8+25*(n+3)^6-16*(n+3)²)/120` -/
def P14029249501003185447.Spec : Prop :=
  ∀ n, P14029249501003185447.a n = (A240445 (n + 3) : ℚ)

end A240445

/-!
# A240447: Number of partitions of 2n such that (sum of parts having multiplicity 1) = sum of all other parts.

The programs for A240447, there is no canonical definition to state claims against.
-/

/-! ## A240447.P12080026248928215240

`A264403(C(2*n+1, 2)+n)`
-/

namespace A240447.P12080026248928215240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (Nat.choose (2 * n + 1) 2 + n)

end

end A240447.P12080026248928215240

/-! ## A240447.P12522123458328136696

`A264403(∑[4*n])`
-/

namespace A240447.P12522123458328136696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240447.P12522123458328136696

/-! ## A240447.P16551746217043780823

`or(char[2], A264403(A046092(n)))`
-/

namespace A240447.P16551746217043780823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A264403 (A046092 n).toNat)

end

end A240447.P16551746217043780823

/-! ## A240447.P7524552926695287702

`A264403(A046092(char[1]+n))-char[1]`
-/

namespace A240447.P7524552926695287702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264403 (A046092 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A240447.P7524552926695287702

/-! ## A240447.P12050368821053762541

`Δ[A264403(A046092(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A240447.P12050368821053762541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A264403 (A046092 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240447.P12050368821053762541

/-! ## A240447.P514172365929223538

`A264403(A046092(n))%A086880(n)`
-/

namespace A240447.P514172365929223538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264403 (A046092 n).toNat) (A086880 n)

end

end A240447.P514172365929223538

/-! ## A240447.P5498369245755258151

`gcd(A000038(n), A264403(A046092(n)))`
-/

namespace A240447.P5498369245755258151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A264403 (A046092 n).toNat)

end

end A240447.P5498369245755258151

/-! ## A240447.P9299840171923641267

`A057427(n+1)*A264403(A046092(n))`
-/

namespace A240447.P9299840171923641267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A264403 (A046092 n).toNat

end

end A240447.P9299840171923641267

/-! ## A240447.P14961090528381530562

`A007318(C(2, n))*A264403(A046092(n))`
-/

namespace A240447.P14961090528381530562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A264403 (A046092 n).toNat

end

end A240447.P14961090528381530562

/-! ## A240447.P5387121128047831925

`A264403(A046092(n))/A002260(∑[n]+1)`
-/

namespace A240447.P5387121128047831925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264403 (A046092 n).toNat : ℚ) / (A002260 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ)

end

end A240447.P5387121128047831925

/-! ## A240447.P3758852477415775260

`A264403(A046092(n))/A014963(∑[n+1])`
-/

namespace A240447.P3758852477415775260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264403 (A046092 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A240447.P3758852477415775260

/-! ## A240447.P9950569757232729121

`A014963(10*(n+1))*A264403(A046092(n))`
-/

namespace A240447.P9950569757232729121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A264403 (A046092 n).toNat

end

end A240447.P9950569757232729121

/-! ## A240447.P11572460502485012752

`A007318(gcd(n, n+1))*A264403(A046092(n))`
-/

namespace A240447.P11572460502485012752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd n (n + 1)) * A264403 (A046092 n).toNat

end

end A240447.P11572460502485012752

/-! ## A240447.P15938645180037575566

`A008683(A020484(n))²*A264403(A046092(n))`
-/

namespace A240447.P15938645180037575566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat ^ 2 * A264403 (A046092 n).toNat

end

end A240447.P15938645180037575566

/-! ## A240447.P9727484771092112261

`A264403(A046092(n))^A001221(A000015(n+1))`
-/

namespace A240447.P9727484771092112261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264403 (A046092 n).toNat : ℚ) ^ (A001221 (A000015 (n + 1)).toNat : ℤ)

end

end A240447.P9727484771092112261

/-! ## A240447.P16534355678357527427

`A264403(A046092(n))^A001221(A000961(n+1))`
-/

namespace A240447.P16534355678357527427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264403 (A046092 n).toNat : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A240447.P16534355678357527427

/-! ## A240447.P13827985240904055867

`A001055(A020639(4*n+5))*A264403(A046092(n))`
-/

namespace A240447.P13827985240904055867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A020639 (4 * n + 5)).toNat * A264403 (A046092 n).toNat

end

end A240447.P13827985240904055867

/-!
# A240448: Number of partitions p of n such that (sum of parts with multiplicity 1) < (sum of all other parts).

The programs for A240448, there is no canonical definition to state claims against.
-/

/-! ## A240448.P16461918762849639315

`A000041(n)-A240452(n)`
-/

namespace A240448.P16461918762849639315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240452 n

end

end A240448.P16461918762849639315

/-! ## A240448.P803989510539857750

`A213598(n)-A240452(n)`
-/

namespace A240448.P803989510539857750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240452 n

end

end A240448.P803989510539857750

/-! ## A240448.P16939014540668359179

`sqrt(A001255(n))-A240452(n)`
-/

namespace A240448.P16939014540668359179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240452 n : ℝ)

end

end A240448.P16939014540668359179

/-! ## A240448.P6508157784091924588

`∑[A002865(n)]-A240452(n)`
-/

namespace A240448.P6508157784091924588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240452 n

end

end A240448.P6508157784091924588

/-! ## A240448.P6453415709227891781

`A000065(n)+1-A240452(n)`
-/

namespace A240448.P6453415709227891781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A240452 n)

end

end A240448.P6453415709227891781

/-!
# A240449: Number of partitions p of n such that (sum of parts with multiplicity 1) <= (sum of all other parts).

The programs for A240449, there is no canonical definition to state claims against.
-/

/-! ## A240449.P2370386463956899678

`A000041(n)-A240451(n)`
-/

namespace A240449.P2370386463956899678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240451 n

end

end A240449.P2370386463956899678

/-! ## A240449.P8855684232743191212

`A213598(n)-A240451(n)`
-/

namespace A240449.P8855684232743191212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240451 n

end

end A240449.P8855684232743191212

/-! ## A240449.P11746814857845605047

`sqrt(A001255(n))-A240451(n)`
-/

namespace A240449.P11746814857845605047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240451 n : ℝ)

end

end A240449.P11746814857845605047

/-! ## A240449.P5528612370124093467

`∑[A002865(n)]-A240451(n)`
-/

namespace A240449.P5528612370124093467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240451 n

end

end A240449.P5528612370124093467

/-! ## A240449.P2319184167570069033

`A000065(n)+1-A240451(n)`
-/

namespace A240449.P2319184167570069033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A240451 n)

end

end A240449.P2319184167570069033

/-!
# A240450: Greatest number of distinct numbers in the intersection of p and its conjugate, as p ranges through the partitions of n.

The programs for A240450, there is no canonical definition to state claims against.
-/

/-! ## A240450.P9525107976460454088

`A067731(n+1)+1`
-/

namespace A240450.P9525107976460454088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067731 (n + 1) + 1

end

end A240450.P9525107976460454088

/-! ## A240450.P13752285067582138156

`A067731(comp[abs(∑[1-n])])`
-/

namespace A240450.P13752285067582138156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067731 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A240450.P13752285067582138156

/-! ## A240450.P12271119260566198869

`A116939(comp[C(floor(n²/2), n%2)])`
-/

namespace A240450.P12271119260566198869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n ^ 2 : ℚ) / 2⌋.toNat (n % 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A240450.P12271119260566198869

/-! ## A240450.P5676606027880237837

`A177990(n+1)+∑[char[∑[n-1]]]`
-/

namespace A240450.P5676606027880237837
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177990 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A240450.P5676606027880237837

/-! ## A240450.P12356239819185635449

`∑[char[∑[n-1]]]+A002260(n+2)%2`
-/

namespace A240450.P12356239819185635449
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A002260 (n + 2)) 2

end

end A240450.P12356239819185635449

/-!
# A240451: Number of partitions p of n such that (sum of parts with multiplicity 1) > (sum of all other parts).

The programs for A240451, there is no canonical definition to state claims against.
-/

/-! ## A240451.P9846882899634635139

`A000041(n)-A240449(n)`
-/

namespace A240451.P9846882899634635139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240449 n

end

end A240451.P9846882899634635139

/-! ## A240451.P12832195351462409872

`A213598(n)-A240449(n)`
-/

namespace A240451.P12832195351462409872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240449 n

end

end A240451.P12832195351462409872

/-! ## A240451.P8130033520393672780

`sqrt(A001255(n))-A240449(n)`
-/

namespace A240451.P8130033520393672780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240449 n : ℝ)

end

end A240451.P8130033520393672780

/-! ## A240451.P3173665765650168647

`∑[A002865(n)]-A240449(n)`
-/

namespace A240451.P3173665765650168647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240449 n

end

end A240451.P3173665765650168647

/-! ## A240451.P11119508990091113397

`A239830(∑[n])-A240449(n)`
-/

namespace A240451.P11119508990091113397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (∑ j ∈ Finset.range (n + 1), f1 j) - A240449 n

end

end A240451.P11119508990091113397

/-!
# A240452: Number of partitions p of n such that (sum of parts with multiplicity 1) >= (sum of all other parts).

The programs for A240452, there is no canonical definition to state claims against.
-/

/-! ## A240452.P14668590280850284776

`A000041(n)-A240448(n)`
-/

namespace A240452.P14668590280850284776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240448 n

end

end A240452.P14668590280850284776

/-! ## A240452.P5597080277116352495

`A213598(n)-A240448(n)`
-/

namespace A240452.P5597080277116352495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240448 n

end

end A240452.P5597080277116352495

/-! ## A240452.P768160913095687257

`sqrt(A001255(n))-A240448(n)`
-/

namespace A240452.P768160913095687257
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240448 n : ℝ)

end

end A240452.P768160913095687257

/-! ## A240452.P13287458659449214190

`∑[A002865(n)]-A240448(n)`
-/

namespace A240452.P13287458659449214190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240448 n

end

end A240452.P13287458659449214190

/-! ## A240452.P11318085737238994952

`A000065(n)+1-A240448(n)`
-/

namespace A240452.P11318085737238994952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A240448 n)

end

end A240452.P11318085737238994952

/-!
# A240453: Greatest prime divisors of the palindromes with an even number of digits.

The programs for A240453, there is no canonical definition to state claims against.
-/

/-! ## A240453.P8492794924062100444

`A006530(A056524(n+1))`
-/

namespace A240453.P8492794924062100444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056524 (n + 1)).toNat

end

end A240453.P8492794924062100444

/-! ## A240453.P14172670776632613566

`A006530(A110745(n+1))`
-/

namespace A240453.P14172670776632613566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A110745 (n + 1)).toNat

end

end A240453.P14172670776632613566

/-! ## A240453.P17071206369322541693

`A284695(record[A110745(n+1)])`
-/

namespace A240453.P17071206369322541693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240453.P17071206369322541693

/-! ## A240453.P10703227062364156148

`A006530(11*A066492(n+1))`
-/

namespace A240453.P10703227062364156148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (11 * A066492 (n + 1)).toNat

end

end A240453.P10703227062364156148

/-! ## A240453.P14219174679511580659

`A284695(11*A066492(n+1))`
-/

namespace A240453.P14219174679511580659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (11 * A066492 (n + 1)).toNat

end

end A240453.P14219174679511580659

/-! ## A240453.P6855652516031774933

`A006530(lcm(11, A066492(n+1)))`
-/

namespace A240453.P6855652516031774933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 11 (A066492 (n + 1)))

end

end A240453.P6855652516031774933

/-! ## A240453.P10466175146508628562

`A223491(∏{p}[A056524(n+1), #])`
-/

namespace A240453.P10466175146508628562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A240453.P10466175146508628562

/-! ## A240453.P9429868253788164812

`A223491(∏{p}[A110745(n+1), #])`
-/

namespace A240453.P9429868253788164812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223491 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A240453.P9429868253788164812

/-! ## A240453.P5799564052205274036

`A006530(∩[A002113(n+1), A272655(n+1)])`
-/

namespace A240453.P5799564052205274036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A240453.P5799564052205274036

/-! ## A240453.P12636613372253618882

`A006530(∩[A068062(n+1), A272655(n+1)])`
-/

namespace A240453.P12636613372253618882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A240453.P12636613372253618882

/-!
# A240454: Smallest prime divisors of the palindromes with an even number of digits.

The programs for A240454, there is no canonical definition to state claims against.
-/

/-! ## A240454.P8132596216424190878

`A020639(A056524(n+1))`
-/

namespace A240454.P8132596216424190878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A056524 (n + 1)).toNat

end

end A240454.P8132596216424190878

/-! ## A240454.P17726811348960926724

`A020639(gcd(11*A066492(n+1), A147575(n+2)))`
-/

namespace A240454.P17726811348960926724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (11 * A066492 (n + 1)) (A147575 (n + 2)))

end

end A240454.P17726811348960926724

/-! ## A240454.P8191295739956501894

`A020639(A110745(n+1))`
-/

namespace A240454.P8191295739956501894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A110745 (n + 1)).toNat

end

end A240454.P8191295739956501894

/-! ## A240454.P12844542920903460978

`A092067(A056524(n+1)-1)`
-/

namespace A240454.P12844542920903460978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (A056524 (n + 1) - 1).toNat

end

end A240454.P12844542920903460978

/-! ## A240454.P9787889513303296789

`A020639(11*A066492(n+1))`
-/

namespace A240454.P9787889513303296789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (11 * A066492 (n + 1)).toNat

end

end A240454.P9787889513303296789

/-! ## A240454.P12256170608431214726

`A020639(lcm(11, A066492(n+1)))`
-/

namespace A240454.P12256170608431214726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm 11 (A066492 (n + 1)))

end

end A240454.P12256170608431214726

/-!
# A240456: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240456, there is no canonical definition to state claims against.
-/

/-! ## A240456.P5284106727388707702

`A240460(∑[2+n])`
-/

namespace A240456.P5284106727388707702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240456.P5284106727388707702

/-!
# A240457: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240457, there is no canonical definition to state claims against.
-/

/-! ## A240457.P7140439905362616457

`A240460(∑[n+3]+1)`
-/

namespace A240457.P7140439905362616457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240457.P7140439905362616457

/-! ## A240457.P8536672439279708250

`record[A240460(A198464(n+1))]`
-/

namespace A240457.P8536672439279708250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240457.P8536672439279708250

/-!
# A240458: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240458, there is no canonical definition to state claims against.
-/

/-! ## A240458.P14558286961666174534

`A240460(Δ[n²]+∑[n+2]+4)`
-/

namespace A240458.P14558286961666174534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A240458.P14558286961666174534

/-! ## A240458.P11977928111615235505

`record[A240460(A141214(val(n+1, 2)+1))]`
-/

namespace A240458.P11977928111615235505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A141214 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240458.P11977928111615235505

/-! ## A240458.P14462071533344255709

`record[A240460(A027379(val(n+1, 2)+2))]`
-/

namespace A240458.P14462071533344255709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A027379 (SequenceMachineLib.valuation (n + 1) 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240458.P14462071533344255709

/-! ## A240458.P6764129727573346756

`A015082(n)*A240460(A141214(n+1))`
-/

namespace A240458.P6764129727573346756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 n * A240460 (A141214 (n + 1)).toNat

end

end A240458.P6764129727573346756

/-! ## A240458.P7267704506813303342

`A240460(A141214(n+1))*A361239(n)`
-/

namespace A240458.P7267704506813303342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A141214 (n + 1)).toNat * A361239 n

end

end A240458.P7267704506813303342

/-!
# A240459: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240459, there is no canonical definition to state claims against.
-/

/-! ## A240459.P1619836357967844247

`A240460(Δ[A264443(n)])`
-/

namespace A240459.P1619836357967844247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (f1 (n + 1) - f1 n).toNat

end

end A240459.P1619836357967844247

/-! ## A240459.P6589480608354643186

`A240460(A046691(n+3))`
-/

namespace A240459.P6589480608354643186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A046691 (n + 3)).toNat

end

end A240459.P6589480608354643186

/-! ## A240459.P4481045733985628609

`A240460(A056115(n)+11)`
-/

namespace A240459.P4481045733985628609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A056115 n + 11).toNat

end

end A240459.P4481045733985628609

/-! ## A240459.P16898418303269829157

`A240460(eq[3, A152157(n)])`
-/

namespace A240459.P16898418303269829157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240459.P16898418303269829157

/-!
# A240461: Number of 2 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240461, the canonical program `A240461.P18321958472803225871` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240461 has offset 1).

The definition of A240461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240461.P1235563944793345248

`ogf((5-9x-2x^2+8x^3)/(1-6x+7x^2+4x^3-8x^4))`
-/

namespace A240461.P1235563944793345248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -9, -2, 8] [1, -6, 7, 4, -8] n

end

end A240461.P1235563944793345248

namespace A240461

/-- `ogf((5-9x-2x^2+8x^3)/(1-6x+7x^2+4x^3-8x^4))` -/
def P1235563944793345248.Spec : Prop :=
  ∀ n, P1235563944793345248.a n = A240461 (n + 1)

end A240461

/-! ## A240461.P18321958472803225871

`6*a(n-1)-7*a(n-2)-4*a(n-3)+8*a(n-4)` with `a(0)=5, a(1)=21, a(2)=89, a(3)=375`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240461

/-- `6*a(n-1)-7*a(n-2)-4*a(n-3)+8*a(n-4)` -/
def P18321958472803225871.Spec : Prop :=
  ∀ n, P18321958472803225871.a n = A240461 (n + 1)

theorem P18321958472803225871.correct : P18321958472803225871.Spec := by
  intro n
  simp only [A240461, Nat.add_sub_cancel]

end A240461

/-! ## A240461.P1274817502992524868

`A240342(n+2)/2-A240342(n+1)`
-/

namespace A240461.P1274817502992524868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240342 (n + 2) : ℚ) / 2 - (A240342 (n + 1) : ℚ)

end

end A240461.P1274817502992524868

namespace A240461

/-- `A240342(n+2)/2-A240342(n+1)` -/
def P1274817502992524868.Spec : Prop :=
  ∀ n, P1274817502992524868.a n = (A240461 (n + 1) : ℚ)

end A240461

/-! ## A240461.P8622514271588255244

`A240460(∑[n+1]+2)`
-/

namespace A240461.P8622514271588255244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240461.P8622514271588255244

namespace A240461

/-- `A240460(∑[n+1]+2)` -/
def P8622514271588255244.Spec : Prop :=
  ∀ n, P8622514271588255244.a n = A240461 (n + 1)

end A240461

/-! ## A240461.P6393293561508144493

`record[A240460(n+3)/A051141(n+1)]`
-/

namespace A240461.P6393293561508144493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240460 (n + 3) : ℚ) / (A051141 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240461.P6393293561508144493

namespace A240461

/-- `record[A240460(n+3)/A051141(n+1)]` -/
def P6393293561508144493.Spec : Prop :=
  ∀ n, P6393293561508144493.a n = (A240461 (n + 1) : ℚ)

end A240461

/-!
# A240462: Number of 3Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240462, there is no canonical definition to state claims against.
-/

/-! ## A240462.P2758755656292614055

`A240460(∑[n+2]+4)`
-/

namespace A240462.P2758755656292614055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240462.P2758755656292614055

/-! ## A240462.P2595580714994719729

`and(-1, A240460(A167614(n+1)))`
-/

namespace A240462.P2595580714994719729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A240460 (A167614 (n + 1)).toNat)

end

end A240462.P2595580714994719729

/-! ## A240462.P221308998739728759

`A240460(A167614(n+1))+A025437(n)`
-/

namespace A240462.P221308998739728759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A167614 (n + 1)).toNat + A025437 n

end

end A240462.P221308998739728759

/-! ## A240462.P6338092117207098019

`A240460(A167614(n+1))+A025466(n)`
-/

namespace A240462.P6338092117207098019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A167614 (n + 1)).toNat + A025466 n

end

end A240462.P6338092117207098019

/-! ## A240462.P7490269921513431803

`A240460(A167614(n+1))+A067169(n)`
-/

namespace A240462.P7490269921513431803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A167614 (n + 1)).toNat + A067169 (n + 11)

end

end A240462.P7490269921513431803

/-!
# A240463: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240463, there is no canonical definition to state claims against.
-/

/-! ## A240463.P15780136526662192439

`A240460(∑[n+3]+7)`
-/

namespace A240463.P15780136526662192439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240463.P15780136526662192439

/-! ## A240463.P15543687307314111422

`lcm(A240460(A052905(n)+9), A366902(n+1))`
-/

namespace A240463.P15543687307314111422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A240460 (A052905 n + 9).toNat) (A366902 (n + 1))

end

end A240463.P15543687307314111422

/-!
# A240464: Number of 5Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or three plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240464, there is no canonical definition to state claims against.
-/

/-! ## A240464.P694997897764100982

`A240460(A167499(n+3))`
-/

namespace A240464.P694997897764100982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A167499 (n + 3)).toNat

end

end A240464.P694997897764100982

/-! ## A240464.P8383592375658861300

`A240460(A155212(n)+13)`
-/

namespace A240464.P8383592375658861300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A155212 n + 13).toNat

end

end A240464.P8383592375658861300

/-! ## A240464.P16998567432526893233

`A240460(A056000(n)+15)`
-/

namespace A240464.P16998567432526893233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (A056000 n + 15).toNat

end

end A240464.P16998567432526893233

/-! ## A240464.P606507133111935747

`A240460(eq[7, A066657(n)])`
-/

namespace A240464.P606507133111935747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240464.P606507133111935747

/-! ## A240464.P18359889101360080664

`A240460(∑[A020705(n)]+11)`
-/

namespace A240464.P18359889101360080664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240460 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A240464.P18359889101360080664

/-!
# A240465: Inverse of 76th cyclotomic polynomial.

The programs for A240465, there is no canonical definition to state claims against.
-/

/-! ## A240465.P17254379500836290329

`A240467(2*n)`
-/

namespace A240465.P17254379500836290329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (2 * n)

end

end A240465.P17254379500836290329

/-!
# A240466: Palindromes for which both the numerator (A017665) and the denominator (A017666) of sigma(n)/n are palindromes, where sigma is the sum of divisors (A000203).

The programs for A240466, there is no canonical definition to state claims against.
-/

/-! ## A240466.P15724834984314894030

`A072482(A303368(n+1))`
-/

namespace A240466.P15724834984314894030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072482 (A303368 (n + 1)).toNat

end

end A240466.P15724834984314894030

/-! ## A240466.P3658834562182788228

`A377228(A165305(n+1))`
-/

namespace A240466.P3658834562182788228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377228 (A165305 (n + 1)).toNat

end

end A240466.P3658834562182788228

/-! ## A240466.P3004457708623778072

`A383609(A056823(n))+n`
-/

namespace A240466.P3004457708623778072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383609 (A056823 n).toNat + (n : ℤ)

end

end A240466.P3004457708623778072

/-! ## A240466.P9638750124957102748

`A113370(A242523(n+1))+n`
-/

namespace A240466.P9638750124957102748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 (A242523 (n + 1)).toNat + (n : ℤ)

end

end A240466.P9638750124957102748

/-!
# A240467: Inverse of 152nd cyclotomic polynomial.

The programs for A240467, there is no canonical definition to state claims against.
-/

/-! ## A240467.P10633011803897063875

`A240465(gcd(n, ∑[n]))`
-/

namespace A240467.P10633011803897063875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A240467.P10633011803897063875

/-!
# A240468: Sum of the distinct prime divisors of the palindromes having an even number of digits.

The programs for A240468, there is no canonical definition to state claims against.
-/

/-! ## A240468.P2114883343696730504

`∑{p}[A056524(n+1), #]`
-/

namespace A240468.P2114883343696730504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A240468.P2114883343696730504

/-! ## A240468.P18141970950191756861

`∑{p}[11*A066492(n+1), #]`
-/

namespace A240468.P18141970950191756861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A066492 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A240468.P18141970950191756861

/-! ## A240468.P464256221193554834

`∑{p}[record[11*A066492(A152271(n))], #]`
-/

namespace A240468.P464256221193554834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A066492 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A240468.P464256221193554834

/-! ## A240468.P7936316822051813436

`∑{p}[A020338(n+1)-A056965(n+1), #]`
-/

namespace A240468.P7936316822051813436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1) - A056965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A240468.P7936316822051813436

/-! ## A240468.P11651956014486492488

`∑{p}[∩[A002113(n+1), A272655(n+1)], #]`
-/

namespace A240468.P11651956014486492488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A240468.P11651956014486492488

/-! ## A240468.P11434033581731780975

`∑{p}[∩[A068062(n+1), A272655(n+1)], #]`
-/

namespace A240468.P11434033581731780975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A240468.P11434033581731780975

/-! ## A240468.P832789747438208554

`∑{p}[A020338(n+1)-n-(1-A004086(n+1)), #]`
-/

namespace A240468.P832789747438208554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1) - (n : ℤ) - (1 - A004086 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A240468.P832789747438208554

/-! ## A240468.P16164182298828042806

`∑{p}[A008593(A066492(n+1)), #]`
-/

namespace A240468.P16164182298828042806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A066492 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A240468.P16164182298828042806

/-! ## A240468.P5484765671249422753

`∑{p}[A110745(A000188((n+1)²)), #]`
-/

namespace A240468.P5484765671249422753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110745 (A000188 ((n + 1) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A240468.P5484765671249422753

/-! ## A240468.P12981308142126068936

`∑{p}[A110745(A000196((n+1)²)), #]`
-/

namespace A240468.P12981308142126068936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110745 (A000196 ((n + 1) ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A240468.P12981308142126068936

/-! ## A240468.P1938541352120457421

`∑{p}[A110745(n+1)%A344737(n+1), #]`
-/

namespace A240468.P1938541352120457421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110745 (n + 1)) (A344737 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A240468.P1938541352120457421

/-!
# A240471: Integer part of (n * A000005(n) / A000203(n)).

The programs for A240471, the canonical program `A240471.P16559691401638773445` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240471 has offset 1).

The definition of A240471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240471.P16559691401638773445

`(A038040(n+1)-A106315(n+1))/A000203(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A240471

/-- `(A038040(n+1)-A106315(n+1))/A000203(n+1)` -/
def P16559691401638773445.Spec : Prop :=
  ∀ n, P16559691401638773445.a n = (A240471 (n + 1) : ℚ)

end A240471

/-! ## A240471.P6311366891950941056

`floor(∑{d}[n+1, lcm(#, n+1)]/∑{d}[n+1, #])`
-/

namespace A240471.P6311366891950941056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)⌋

end

end A240471.P6311366891950941056

namespace A240471

/-- `floor(∑{d}[n+1, lcm(#, n+1)]/∑{d}[n+1, #])` -/
def P6311366891950941056.Spec : Prop :=
  ∀ n, P6311366891950941056.a n = A240471 (n + 1)

end A240471

/-! ## A240471.P10594551149927182870

`floor((n+1)*∏{e}[n+1, #+1]/∑{d}[n+1, #])`
-/

namespace A240471.P10594551149927182870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℕ) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)⌋

end

end A240471.P10594551149927182870

namespace A240471

/-- `floor((n+1)*∏{e}[n+1, #+1]/∑{d}[n+1, #])` -/
def P10594551149927182870.Spec : Prop :=
  ∀ n, P10594551149927182870.a n = A240471 (n + 1)

end A240471

/-! ## A240471.P17500622094341019743

`floor(A038040(n+1)/∑{d}[n+1, #])`
-/

namespace A240471.P17500622094341019743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038040 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌋

end

end A240471.P17500622094341019743

namespace A240471

/-- `floor(A038040(n+1)/∑{d}[n+1, #])` -/
def P17500622094341019743.Spec : Prop :=
  ∀ n, P17500622094341019743.a n = A240471 (n + 1)

end A240471

/-! ## A240471.P17188766160929700002

`floor(∑{d}[n+1, lcm(#, n+1)]/A000203(n+1))`
-/

namespace A240471.P17188766160929700002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A240471.P17188766160929700002

namespace A240471

/-- `floor(∑{d}[n+1, lcm(#, n+1)]/A000203(n+1))` -/
def P17188766160929700002.Spec : Prop :=
  ∀ n, P17188766160929700002.a n = A240471 (n + 1)

end A240471

/-! ## A240471.P3952303175495932311

`floor(A038040(n+1)/A000203(n+1))`
-/

namespace A240471.P3952303175495932311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038040 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A240471.P3952303175495932311

namespace A240471

/-- `floor(A038040(n+1)/A000203(n+1))` -/
def P3952303175495932311.Spec : Prop :=
  ∀ n, P3952303175495932311.a n = A240471 (n + 1)

end A240471

/-! ## A240471.P6743656429983156403

`floor(A034714(n+1)/A064987(n+1))`
-/

namespace A240471.P6743656429983156403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034714 (n + 1) : ℚ) / (A064987 (n + 1) : ℚ)⌋

end

end A240471.P6743656429983156403

namespace A240471

/-- `floor(A034714(n+1)/A064987(n+1))` -/
def P6743656429983156403.Spec : Prop :=
  ∀ n, P6743656429983156403.a n = A240471 (n + 1)

end A240471

/-! ## A240471.P1179722529574446548

`floor(A099377(n+1)/A099378(n+1))`
-/

namespace A240471.P1179722529574446548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099377 (n + 1) : ℚ) / (A099378 (n + 1) : ℚ)⌋

end

end A240471.P1179722529574446548

namespace A240471

/-- `floor(A099377(n+1)/A099378(n+1))` -/
def P1179722529574446548.Spec : Prop :=
  ∀ n, P1179722529574446548.a n = A240471 (n + 1)

end A240471

/-! ## A240471.P14659526314764473572

`floor((n+1)*A000005(n+1)/A000203(n+1))`
-/

namespace A240471.P14659526314764473572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((A000005 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ))⌋

end

end A240471.P14659526314764473572

namespace A240471

/-- `floor((n+1)*A000005(n+1)/A000203(n+1))` -/
def P14659526314764473572.Spec : Prop :=
  ∀ n, P14659526314764473572.a n = A240471 (n + 1)

end A240471

/-!
# A240473: Distance from prime(n) to the closest smaller squarefree number.

The programs for A240473, the canonical program `A240473.P18421913364524954093` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240473 has offset 1).

The definition of A240473 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112925, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240473.P18421913364524954093

`A000040(n+1)-A112925(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A240473

/-- `A000040(n+1)-A112925(n+1)` -/
def P18421913364524954093.Spec : Prop :=
  ∀ n, P18421913364524954093.a n = A240473 (n + 1)

theorem P18421913364524954093.correct : P18421913364524954093.Spec := by
  intro n
  simp only [A240473, Nat.add_sub_cancel]

end A240473

/-! ## A240473.P7039949753140583780

`A006093(n+1)+1-A112925(n+1)`
-/

namespace A240473.P7039949753140583780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A112925 (n + 1))

end

end A240473.P7039949753140583780

namespace A240473

/-- `A006093(n+1)+1-A112925(n+1)` -/
def P7039949753140583780.Spec : Prop :=
  ∀ n, P7039949753140583780.a n = A240473 (n + 1)

theorem P7039949753140583780.correct : P7039949753140583780.Spec := by
  intro n
  simp only [A240473, Nat.add_sub_cancel, A240473.P7039949753140583780.a, A240473.P18421913364524954093.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A112925, A112925.P3128036367507799297.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240473

/-! ## A240473.P8680888963740932589

`A112926(n+1)-(A240474(n+1)+A112925(n+1))`
-/

namespace A240473.P8680888963740932589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1) - (A240474 (n + 1) + A112925 (n + 1))

end

end A240473.P8680888963740932589

namespace A240473

/-- `A112926(n+1)-(A240474(n+1)+A112925(n+1))` -/
def P8680888963740932589.Spec : Prop :=
  ∀ n, P8680888963740932589.a n = A240473 (n + 1)

theorem P8680888963740932589.correct : P8680888963740932589.Spec := by
  intro n
  simp only [A240473, Nat.add_sub_cancel, A240473.P8680888963740932589.a, A240473.P18421913364524954093.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A112925, A112925.P3128036367507799297.a, A112926, A112926.P6586575153116633314.a, A240474, A240474.P10629987593546331261.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A112930, A112930.P7126053726691172401.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A112929, A112929.P128816744454326581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240473

/-! ## A240473.P14227125491754893996

`A182986(n+2)-A112925(n+1)`
-/

namespace A240473.P14227125491754893996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A112925 (n + 1)

end

end A240473.P14227125491754893996

namespace A240473

/-- `A182986(n+2)-A112925(n+1)` -/
def P14227125491754893996.Spec : Prop :=
  ∀ n, P14227125491754893996.a n = A240473 (n + 1)

end A240473

/-! ## A240473.P14111659095508534525

`record[A000010(n+1)+1]-A112925(n+1)`
-/

namespace A240473.P14111659095508534525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A112925 (n + 1)

end

end A240473.P14111659095508534525

namespace A240473

/-- `record[A000010(n+1)+1]-A112925(n+1)` -/
def P14111659095508534525.Spec : Prop :=
  ∀ n, P14111659095508534525.a n = A240473 (n + 1)

end A240473

/-! ## A240473.P11119800382573859132

`A076259(A112929(n+1))`
-/

namespace A240473.P11119800382573859132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A112929 (n + 1)).toNat

end

end A240473.P11119800382573859132

namespace A240473

/-- `A076259(A112929(n+1))` -/
def P11119800382573859132.Spec : Prop :=
  ∀ n, P11119800382573859132.a n = A240473 (n + 1)

end A240473

/-! ## A240473.P1153824663913876150

`A076259(A071403(n+1)-1)`
-/

namespace A240473.P1153824663913876150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A071403 (n + 1) - 1).toNat

end

end A240473.P1153824663913876150

namespace A240473

/-- `A076259(A071403(n+1)-1)` -/
def P1153824663913876150.Spec : Prop :=
  ∀ n, P1153824663913876150.a n = A240473 (n + 1)

end A240473

/-! ## A240473.P1439873773170481959

`A013632(A112925(n+1))`
-/

namespace A240473.P1439873773170481959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A112925 (n + 1)).toNat

end

end A240473.P1439873773170481959

namespace A240473

/-- `A013632(A112925(n+1))` -/
def P1439873773170481959.Spec : Prop :=
  ∀ n, P1439873773170481959.a n = A240473 (n + 1)

end A240473

/-! ## A240473.P14350743165764711094

`A378085(A006093(n+1))`
-/

namespace A240473.P14350743165764711094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378085 (A006093 (n + 1)).toNat

end

end A240473.P14350743165764711094

namespace A240473

/-- `A378085(A006093(n+1))` -/
def P14350743165764711094.Spec : Prop :=
  ∀ n, P14350743165764711094.a n = A240473 (n + 1)

end A240473

/-! ## A240473.P7235494341741325671

`A378085(A156037(n+1))`
-/

namespace A240473.P7235494341741325671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378085 (A156037 (n + 1)).toNat

end

end A240473.P7235494341741325671

namespace A240473

/-- `A378085(A156037(n+1))` -/
def P7235494341741325671.Spec : Prop :=
  ∀ n, P7235494341741325671.a n = A240473 (n + 1)

end A240473

/-! ## A240473.P12982326342862471249

`A378085(A000040(n+1)-1)`
-/

namespace A240473.P12982326342862471249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378085 (A000040 (n + 1) - 1).toNat

end

end A240473.P12982326342862471249

namespace A240473

/-- `A378085(A000040(n+1)-1)` -/
def P12982326342862471249.Spec : Prop :=
  ∀ n, P12982326342862471249.a n = A240473 (n + 1)

end A240473

/-! ## A240473.P16553540709052496756

`A378085(A008578(n+2)-1)`
-/

namespace A240473.P16553540709052496756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378085 (A008578 (n + 2) - 1).toNat

end

end A240473.P16553540709052496756

namespace A240473

/-- `A378085(A008578(n+2)-1)` -/
def P16553540709052496756.Spec : Prop :=
  ∀ n, P16553540709052496756.a n = A240473 (n + 1)

end A240473

/-! ## A240473.P4750870497803392903

`A000040(n+1)-A070321(A000040(n+1)-1)`
-/

namespace A240473.P4750870497803392903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A070321 (A000040 (n + 1) - 1).toNat

end

end A240473.P4750870497803392903

namespace A240473

/-- `A000040(n+1)-A070321(A000040(n+1)-1)` -/
def P4750870497803392903.Spec : Prop :=
  ∀ n, P4750870497803392903.a n = A240473 (n + 1)

end A240473

/-! ## A240473.P30837139021180937

`runs[p?[A067535(n+1)]]`
-/

namespace A240473.P30837139021180937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A240473.P30837139021180937

namespace A240473

/-- `runs[p?[A067535(n+1)]]` -/
def P30837139021180937.Spec : Prop :=
  ∀ n, (P30837139021180937.a n : ℤ) = A240473 (n + 1)

end A240473

/-! ## A240473.P13869964050769377522

`p?[A049084(n+1)]-A112925(n+1)`
-/

namespace A240473.P13869964050769377522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A112925 (n + 1)

end

end A240473.P13869964050769377522

namespace A240473

/-- `p?[A049084(n+1)]-A112925(n+1)` -/
def P13869964050769377522.Spec : Prop :=
  ∀ n, P13869964050769377522.a n = A240473 (n + 1)

end A240473

/-!
# A240474: Distance from prime(n) to the closest larger squarefree number.

The programs for A240474, the canonical program `A240474.P10629987593546331261` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240474 has offset 1).

The definition of A240474 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112926, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A240474.P10629987593546331261

`A112926(n+1)-A000040(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A240474

/-- `A112926(n+1)-A000040(n+1)` -/
def P10629987593546331261.Spec : Prop :=
  ∀ n, P10629987593546331261.a n = A240474 (n + 1)

theorem P10629987593546331261.correct : P10629987593546331261.Spec := by
  intro n
  simp only [A240474, Nat.add_sub_cancel]

end A240474

/-! ## A240474.P17662101960219840068

`A112926(n+1)-(A006093(n+1)+1)`
-/

namespace A240474.P17662101960219840068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1) - (A006093 (n + 1) + 1)

end

end A240474.P17662101960219840068

namespace A240474

/-- `A112926(n+1)-(A006093(n+1)+1)` -/
def P17662101960219840068.Spec : Prop :=
  ∀ n, P17662101960219840068.a n = A240474 (n + 1)

theorem P17662101960219840068.correct : P17662101960219840068.Spec := by
  intro n
  simp only [A240474, Nat.add_sub_cancel, A240474.P17662101960219840068.a, A240474.P10629987593546331261.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A112926, A112926.P6586575153116633314.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A112930, A112930.P7126053726691172401.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A112929, A112929.P128816744454326581.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240474

/-! ## A240474.P4670428837551902452

`A112926(n+1)+1-A008864(n+1)`
-/

namespace A240474.P4670428837551902452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1) + (1 - A008864 (n + 1))

end

end A240474.P4670428837551902452

namespace A240474

/-- `A112926(n+1)+1-A008864(n+1)` -/
def P4670428837551902452.Spec : Prop :=
  ∀ n, P4670428837551902452.a n = A240474 (n + 1)

theorem P4670428837551902452.correct : P4670428837551902452.Spec := by
  intro n
  simp only [A240474, Nat.add_sub_cancel, A240474.P4670428837551902452.a, A240474.P10629987593546331261.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A112926, A112926.P6586575153116633314.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A112930, A112930.P7126053726691172401.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A112929, A112929.P128816744454326581.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240474

/-! ## A240474.P156968517978437410

`A153671(A112926(n+1)%A000040(n+1))`
-/

namespace A240474.P156968517978437410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (Int.tmod (A112926 (n + 1)) (A000040 (n + 1))).toNat

end

end A240474.P156968517978437410

namespace A240474

/-- `A153671(A112926(n+1)%A000040(n+1))` -/
def P156968517978437410.Spec : Prop :=
  ∀ n, P156968517978437410.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P2333919615390889974

`A112926(n+1)-(A240473(n+1)+A112925(n+1))`
-/

namespace A240474.P2333919615390889974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1) - (A240473 (n + 1) + A112925 (n + 1))

end

end A240474.P2333919615390889974

namespace A240474

/-- `A112926(n+1)-(A240473(n+1)+A112925(n+1))` -/
def P2333919615390889974.Spec : Prop :=
  ∀ n, P2333919615390889974.a n = A240474 (n + 1)

theorem P2333919615390889974.correct : P2333919615390889974.Spec := by
  intro n
  simp only [A240474, Nat.add_sub_cancel, A240474.P2333919615390889974.a, A240474.P10629987593546331261.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A112925, A112925.P3128036367507799297.a, A112926, A112926.P6586575153116633314.a, A240473, A240473.P18421913364524954093.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A013928, A013928.P10879382919085182663.f1, A013928.P10879382919085182663.a, A112930, A112930.P7126053726691172401.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A112929, A112929.P128816744454326581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A240474

/-! ## A240474.P11261258162760718041

`A112926(n+1)-A008578(n+2)`
-/

namespace A240474.P11261258162760718041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1) - A008578 (n + 2)

end

end A240474.P11261258162760718041

namespace A240474

/-- `A112926(n+1)-A008578(n+2)` -/
def P11261258162760718041.Spec : Prop :=
  ∀ n, P11261258162760718041.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P17110349602569825532

`A076259(A071403(n+1))`
-/

namespace A240474.P17110349602569825532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A071403 (n + 1)).toNat

end

end A240474.P17110349602569825532

namespace A240474

/-- `A076259(A071403(n+1))` -/
def P17110349602569825532.Spec : Prop :=
  ∀ n, P17110349602569825532.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P18445927067169590210

`A076259(A112929(n+1)+1)`
-/

namespace A240474.P18445927067169590210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A112929 (n + 1) + 1).toNat

end

end A240474.P18445927067169590210

namespace A240474

/-- `A076259(A112929(n+1)+1)` -/
def P18445927067169590210.Spec : Prop :=
  ∀ n, P18445927067169590210.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P4459873739485273011

`A079115(Δ[A007504(n)])`
-/

namespace A240474.P4459873739485273011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (f1 (n + 1) - f1 n).toNat

end

end A240474.P4459873739485273011

namespace A240474

/-- `A079115(Δ[A007504(n)])` -/
def P4459873739485273011.Spec : Prop :=
  ∀ n, P4459873739485273011.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P2265060245856103866

`A079115(A000040(n+1))`
-/

namespace A240474.P2265060245856103866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (A000040 (n + 1)).toNat

end

end A240474.P2265060245856103866

namespace A240474

/-- `A079115(A000040(n+1))` -/
def P2265060245856103866.Spec : Prop :=
  ∀ n, P2265060245856103866.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P17936716499412593841

`A079115(eq[1, A302055(n)])`
-/

namespace A240474.P17936716499412593841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240474.P17936716499412593841

namespace A240474

/-- `A079115(eq[1, A302055(n)])` -/
def P17936716499412593841.Spec : Prop :=
  ∀ n, P17936716499412593841.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P11362513672924300277

`A079115(record[A006530(n+2)])`
-/

namespace A240474.P11362513672924300277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240474.P11362513672924300277

namespace A240474

/-- `A079115(record[A006530(n+2)])` -/
def P11362513672924300277.Spec : Prop :=
  ∀ n, P11362513672924300277.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P13008535953401823866

`A079115(record[A020639(n+2)])`
-/

namespace A240474.P13008535953401823866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240474.P13008535953401823866

namespace A240474

/-- `A079115(record[A020639(n+2)])` -/
def P13008535953401823866.Spec : Prop :=
  ∀ n, P13008535953401823866.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P1005535672435152134

`A072909(p?[comp[n²]])`
-/

namespace A240474.P1005535672435152134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A240474.P1005535672435152134

namespace A240474

/-- `A072909(p?[comp[n²]])` -/
def P1005535672435152134.Spec : Prop :=
  ∀ n, P1005535672435152134.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P11881495046882010426

`A079229(p?[comp[n²]])`
-/

namespace A240474.P11881495046882010426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079229 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A240474.P11881495046882010426

namespace A240474

/-- `A079229(p?[comp[n²]])` -/
def P11881495046882010426.Spec : Prop :=
  ∀ n, P11881495046882010426.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P1938653075110617337

`A378087(Δ[A007504(n)])`
-/

namespace A240474.P1938653075110617337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378087 (f1 (n + 1) - f1 n).toNat

end

end A240474.P1938653075110617337

namespace A240474

/-- `A378087(Δ[A007504(n)])` -/
def P1938653075110617337.Spec : Prop :=
  ∀ n, P1938653075110617337.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P362506883423745263

`A072909(A000040(n+1))`
-/

namespace A240474.P362506883423745263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (A000040 (n + 1)).toNat

end

end A240474.P362506883423745263

namespace A240474

/-- `A072909(A000040(n+1))` -/
def P362506883423745263.Spec : Prop :=
  ∀ n, P362506883423745263.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P17899830621839566565

`A072909(A006005(n+1))`
-/

namespace A240474.P17899830621839566565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (A006005 (n + 1)).toNat

end

end A240474.P17899830621839566565

namespace A240474

/-- `A072909(A006005(n+1))` -/
def P17899830621839566565.Spec : Prop :=
  ∀ n, P17899830621839566565.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P3431979758954006518

`A049711(A112926(n+1))`
-/

namespace A240474.P3431979758954006518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A112926 (n + 1)).toNat

end

end A240474.P3431979758954006518

namespace A240474

/-- `A049711(A112926(n+1))` -/
def P3431979758954006518.Spec : Prop :=
  ∀ n, P3431979758954006518.a n = A240474 (n + 1)

end A240474

/-! ## A240474.P4536186434052064310

`A072909(A161847(n+1))`
-/

namespace A240474.P4536186434052064310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (A161847 (n + 1)).toNat

end

end A240474.P4536186434052064310

namespace A240474

/-- `A072909(A161847(n+1))` -/
def P4536186434052064310.Spec : Prop :=
  ∀ n, P4536186434052064310.a n = A240474 (n + 1)

end A240474

/-!
# A240475: Primes that are midway between the closest flanking squarefree numbers.

The programs for A240475, the canonical program `A240475.P16814413565336914401` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240475 has offset 1).

The definition of A240475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240475.P16814413565336914401

`p?[A240474(n+1)+A112925(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A240475

/-- `p?[A240474(n+1)+A112925(n+1)]` -/
def P16814413565336914401.Spec : Prop :=
  ∀ n, P16814413565336914401.a n = A240475 (n + 1)

theorem P16814413565336914401.correct : P16814413565336914401.Spec := by
  intro n
  simp only [A240475, Nat.add_sub_cancel]

end A240475

/-! ## A240475.P6151819233140848816

`p?[A112926(n+1)-A240473(n+1)]`
-/

namespace A240475.P6151819233140848816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1) - A240473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240475.P6151819233140848816

namespace A240475

/-- `p?[A112926(n+1)-A240473(n+1)]` -/
def P6151819233140848816.Spec : Prop :=
  ∀ n, P6151819233140848816.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P16986039599524430688

`p?[A245289(n+1)]`
-/

namespace A240475.P16986039599524430688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240475.P16986039599524430688

namespace A240475

/-- `p?[A245289(n+1)]` -/
def P16986039599524430688.Spec : Prop :=
  ∀ n, P16986039599524430688.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P6915763405024166424

`record[A020639(A245289(n+2))]`
-/

namespace A240475.P6915763405024166424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A245289 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240475.P6915763405024166424

namespace A240475

/-- `record[A020639(A245289(n+2))]` -/
def P6915763405024166424.Spec : Prop :=
  ∀ n, P6915763405024166424.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P5637866670353132077

`filter[A245289(n+1), A010051(#)]`
-/

namespace A240475.P5637866670353132077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A240475.P5637866670353132077

namespace A240475

/-- `filter[A245289(n+1), A010051(#)]` -/
def P5637866670353132077.Spec : Prop :=
  ∀ n, P5637866670353132077.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P7574584616214791910

`filter[A245289(n+1), A069513(#)]`
-/

namespace A240475.P7574584616214791910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A240475.P7574584616214791910

namespace A240475

/-- `filter[A245289(n+1), A069513(#)]` -/
def P7574584616214791910.Spec : Prop :=
  ∀ n, P7574584616214791910.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P461424607140700577

`filter[A245289(n+1), A091862(#)]`
-/

namespace A240475.P461424607140700577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A240475.P461424607140700577

namespace A240475

/-- `filter[A245289(n+1), A091862(#)]` -/
def P461424607140700577.Spec : Prop :=
  ∀ n, P461424607140700577.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P17887239425372875590

`filter[A245289(n+1), A174897(#)]`
-/

namespace A240475.P17887239425372875590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A240475.P17887239425372875590

namespace A240475

/-- `filter[A245289(n+1), A174897(#)]` -/
def P17887239425372875590.Spec : Prop :=
  ∀ n, P17887239425372875590.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P13010785295824696188

`filter[A245289(n+1), A302777(#)]`
-/

namespace A240475.P13010785295824696188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A240475.P13010785295824696188

namespace A240475

/-- `filter[A245289(n+1), A302777(#)]` -/
def P13010785295824696188.Spec : Prop :=
  ∀ n, P13010785295824696188.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P7070982154744980979

`filter[A245289(n+1), A342004(#)]`
-/

namespace A240475.P7070982154744980979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A240475.P7070982154744980979

namespace A240475

/-- `filter[A245289(n+1), A342004(#)]` -/
def P7070982154744980979.Spec : Prop :=
  ∀ n, P7070982154744980979.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P2730781187933052525

`filter[A245289(n+1), A345064(#)]`
-/

namespace A240475.P2730781187933052525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A240475.P2730781187933052525

namespace A240475

/-- `filter[A245289(n+1), A345064(#)]` -/
def P2730781187933052525.Spec : Prop :=
  ∀ n, P2730781187933052525.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P2864083239858470905

`filter[A245289(n+1), A345950(#)]`
-/

namespace A240475.P2864083239858470905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A240475.P2864083239858470905

namespace A240475

/-- `filter[A245289(n+1), A345950(#)]` -/
def P2864083239858470905.Spec : Prop :=
  ∀ n, P2864083239858470905.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P3919415481906043675

`filter[A245289(n+1), A351564(#)]`
-/

namespace A240475.P3919415481906043675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A240475.P3919415481906043675

namespace A240475

/-- `filter[A245289(n+1), A351564(#)]` -/
def P3919415481906043675.Spec : Prop :=
  ∀ n, P3919415481906043675.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P5909621782553805381

`filter[A245289(n+1), A353787(#)]`
-/

namespace A240475.P5909621782553805381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A240475.P5909621782553805381

namespace A240475

/-- `filter[A245289(n+1), A353787(#)]` -/
def P5909621782553805381.Spec : Prop :=
  ∀ n, P5909621782553805381.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P9090596527625839969

`filter[A245289(n+1), A353817(#)]`
-/

namespace A240475.P9090596527625839969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A240475.P9090596527625839969

namespace A240475

/-- `filter[A245289(n+1), A353817(#)]` -/
def P9090596527625839969.Spec : Prop :=
  ∀ n, P9090596527625839969.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P18381921351346427754

`filter[A245289(n+1), A355937(#)]`
-/

namespace A240475.P18381921351346427754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A240475.P18381921351346427754

namespace A240475

/-- `filter[A245289(n+1), A355937(#)]` -/
def P18381921351346427754.Spec : Prop :=
  ∀ n, P18381921351346427754.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P2637386969226613720

`filter[A245289(n+1), A358769(#)]`
-/

namespace A240475.P2637386969226613720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A240475.P2637386969226613720

namespace A240475

/-- `filter[A245289(n+1), A358769(#)]` -/
def P2637386969226613720.Spec : Prop :=
  ∀ n, P2637386969226613720.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P15365616173971734569

`filter[A245289(n+1), A369253(#)]`
-/

namespace A240475.P15365616173971734569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A240475.P15365616173971734569

namespace A240475

/-- `filter[A245289(n+1), A369253(#)]` -/
def P15365616173971734569.Spec : Prop :=
  ∀ n, P15365616173971734569.a n = A240475 (n + 1)

end A240475

/-! ## A240475.P1184906402895593431

`∩[A000040(n+1), A245289(n+1)]`
-/

namespace A240475.P1184906402895593431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240475.P1184906402895593431

namespace A240475

/-- `∩[A000040(n+1), A245289(n+1)]` -/
def P1184906402895593431.Spec : Prop :=
  ∀ n, (P1184906402895593431.a n : ℤ) = A240475 (n + 1)

end A240475

/-! ## A240475.P18057541350605611643

`∩[A000430(n+1), A245289(n+1)]`
-/

namespace A240475.P18057541350605611643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240475.P18057541350605611643

namespace A240475

/-- `∩[A000430(n+1), A245289(n+1)]` -/
def P18057541350605611643.Spec : Prop :=
  ∀ n, (P18057541350605611643.a n : ℤ) = A240475 (n + 1)

end A240475

/-!
# A240476: Primes that are not midway between the closest flanking squarefree numbers.

The programs for A240476, there is no canonical definition to state claims against.
-/

/-! ## A240476.P4472515553942479390

`p?[A071912(∑[A315340(n)])]`
-/

namespace A240476.P4472515553942479390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315340 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240476.P4472515553942479390

/-! ## A240476.P334767143472102816

`A065091(lt[A231924(2*n+1), A057265(2*n+1)])`
-/

namespace A240476.P334767143472102816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231924 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240476.P334767143472102816

/-! ## A240476.P9336532409097429434

`p?[A119024(n+1)-16]`
-/

namespace A240476.P9336532409097429434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119024 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240476.P9336532409097429434

/-! ## A240476.P17290598375036744626

`p?[eq[n%2, A309913(n)]]`
-/

namespace A240476.P17290598375036744626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309913 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A240476.P17290598375036744626

/-! ## A240476.P3997379350610146701

`eq[A014060(n), A393137(n)]`
-/

namespace A240476.P3997379350610146701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240476.P3997379350610146701

/-!
# A240477: Number of n X n 0..1 arrays with no element equal to more than two horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240477, there is no canonical definition to state claims against.
-/

/-! ## A240477.P1454593142450191708

`A240484(∑[4*n]+1)`
-/

namespace A240477.P1454593142450191708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240477.P1454593142450191708

/-! ## A240477.P3589120142714006806

`A240484(A001844(n))*A304042(n)`
-/

namespace A240477.P3589120142714006806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A001844 n).toNat * A304042 n

end

end A240477.P3589120142714006806

/-! ## A240477.P17467209936416303617

`lcm(A033999(n), A240484(A001844(n)))`
-/

namespace A240477.P17467209936416303617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A240484 (A001844 n).toNat)

end

end A240477.P17467209936416303617

/-! ## A240477.P3235302949727045036

`A020985(n)²*A240484(A001844(n))`
-/

namespace A240477.P3235302949727045036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A240484 (A001844 n).toNat

end

end A240477.P3235302949727045036

/-! ## A240477.P13371962525134373103

`A240484(A001844(n))/A007318(∑[n+2])`
-/

namespace A240477.P13371962525134373103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240484 (A001844 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A240477.P13371962525134373103

/-!
# A240478: Number of n X 2 0..1 arrays with no element equal to more than two horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240478, the canonical program `A240478.P8953745881626807929` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240478 has offset 1).

The definition of A240478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240478.P1904969465434587503

`ogf((2+2x-x^2-2x^3)/(1-3x-x^2+2x^4))`
-/

namespace A240478.P1904969465434587503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -1, -2] [1, -3, -1, 0, 2] n

end

end A240478.P1904969465434587503

namespace A240478

/-- `ogf((2+2x-x^2-2x^3)/(1-3x-x^2+2x^4))` -/
def P1904969465434587503.Spec : Prop :=
  ∀ n, P1904969465434587503.a n = A240478 (n + 1)

end A240478

/-! ## A240478.P8953745881626807929

`3*a(n-1)+a(n-2)-2*a(n-4)` with `a(0)=2, a(1)=8, a(2)=25, a(3)=81`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240478

/-- `3*a(n-1)+a(n-2)-2*a(n-4)` -/
def P8953745881626807929.Spec : Prop :=
  ∀ n, P8953745881626807929.a n = A240478 (n + 1)

theorem P8953745881626807929.correct : P8953745881626807929.Spec := by
  intro n
  simp only [A240478, Nat.add_sub_cancel]

end A240478

/-! ## A240478.P16564039259100264114

`A180762(n+1)+Δ[A220726(n+1)]`
-/

namespace A240478.P16564039259100264114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180762 (n + 1) + (f1 (n + 1) - f1 n)

end

end A240478.P16564039259100264114

namespace A240478

/-- `A180762(n+1)+Δ[A220726(n+1)]` -/
def P16564039259100264114.Spec : Prop :=
  ∀ n, P16564039259100264114.a n = A240478 (n + 1)

end A240478

/-! ## A240478.P17987585482473487370

`A281469(∑[n+2])`
-/

namespace A240478.P17987585482473487370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240478.P17987585482473487370

namespace A240478

/-- `A281469(∑[n+2])` -/
def P17987585482473487370.Spec : Prop :=
  ∀ n, P17987585482473487370.a n = A240478 (n + 1)

end A240478

/-! ## A240478.P14892813094588258449

`record[A281469(abs(A201163(n)))]`
-/

namespace A240478.P14892813094588258449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281469 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240478.P14892813094588258449

namespace A240478

/-- `record[A281469(abs(A201163(n)))]` -/
def P14892813094588258449.Spec : Prop :=
  ∀ n, P14892813094588258449.a n = A240478 (n + 1)

end A240478

/-!
# A240479: Number of n X 3 0..1 arrays with no element equal to more than two horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240479, the canonical program `A240479.P6579448328805096251` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240479 has offset 1).

The definition of A240479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240479.P6579448328805096251

`ogf((4+9x+10x^2+7x^3+x^4-x^5)/(1-4x-3x^2-2x^3-6x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A240479

/-- `ogf((4+9x+10x^2+7x^3+x^4-x^5)/(1-4x-3x^2-2x^3-6x^4-2x^5+x^6))` -/
def P6579448328805096251.Spec : Prop :=
  ∀ n, P6579448328805096251.a n = A240479 (n + 1)

theorem P6579448328805096251.correct : P6579448328805096251.Spec := by
  intro n
  simp only [A240479, Nat.add_sub_cancel]

end A240479

/-! ## A240479.P15862199146522610377

`A240484(∑[n+2]+4)`
-/

namespace A240479.P15862199146522610377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240479.P15862199146522610377

namespace A240479

/-- `A240484(∑[n+2]+4)` -/
def P15862199146522610377.Spec : Prop :=
  ∀ n, P15862199146522610377.a n = A240479 (n + 1)

end A240479

/-! ## A240479.P3146982877044017322

`lcm(A026492(n), A240484(A167614(n+1)))`
-/

namespace A240479.P3146982877044017322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026492 n) (A240484 (A167614 (n + 1)).toNat)

end

end A240479.P3146982877044017322

namespace A240479

/-- `lcm(A026492(n), A240484(A167614(n+1)))` -/
def P3146982877044017322.Spec : Prop :=
  ∀ n, (P3146982877044017322.a n : ℤ) = A240479 (n + 1)

end A240479

/-! ## A240479.P10173350902867449142

`A062513(n+1)*A240484(A167614(n+1))`
-/

namespace A240479.P10173350902867449142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A240484 (A167614 (n + 1)).toNat

end

end A240479.P10173350902867449142

namespace A240479

/-- `A062513(n+1)*A240484(A167614(n+1))` -/
def P10173350902867449142.Spec : Prop :=
  ∀ n, P10173350902867449142.a n = A240479 (n + 1)

end A240479

/-! ## A240479.P5784503238653053605

`A240484(A167614(n+1))%A208037(n+1)`
-/

namespace A240479.P5784503238653053605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240484 (A167614 (n + 1)).toNat) (A208037 (n + 1))

end

end A240479.P5784503238653053605

namespace A240479

/-- `A240484(A167614(n+1))%A208037(n+1)` -/
def P5784503238653053605.Spec : Prop :=
  ∀ n, P5784503238653053605.a n = A240479 (n + 1)

end A240479

/-!
# A240480: Number of nX4 0..1 arrays with no element equal to more than two horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240480, there is no canonical definition to state claims against.
-/

/-! ## A240480.P4569128561058411850

`A240484(A374004(n+1))`
-/

namespace A240480.P4569128561058411850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A374004 (n + 1)).toNat

end

end A240480.P4569128561058411850

/-! ## A240480.P8212775448520725375

`A240484(A141214(n)+7)`
-/

namespace A240480.P8212775448520725375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A141214 n + 7).toNat

end

end A240480.P8212775448520725375

/-! ## A240480.P4159654942315785854

`A240484(A052905(n)+9)`
-/

namespace A240480.P4159654942315785854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A052905 n + 9).toNat

end

end A240480.P4159654942315785854

/-! ## A240480.P12060628685856320652

`A240484(A055999(n)+10)`
-/

namespace A240480.P12060628685856320652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A055999 n + 10).toNat

end

end A240480.P12060628685856320652

/-! ## A240480.P5950814390405489797

`A240484(A167614(n+2)+1)`
-/

namespace A240480.P5950814390405489797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A167614 (n + 2) + 1).toNat

end

end A240480.P5950814390405489797

/-!
# A240481: Number of nX5 0..1 arrays with no element equal to more than two horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240481, there is no canonical definition to state claims against.
-/

/-! ## A240481.P12904357584340650094

`A240484(A374005(n+1))`
-/

namespace A240481.P12904357584340650094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A374005 (n + 1)).toNat

end

end A240481.P12904357584340650094

/-! ## A240481.P8953068038206329250

`A240484(A167499(n+3))`
-/

namespace A240481.P8953068038206329250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A167499 (n + 3)).toNat

end

end A240481.P8953068038206329250

/-! ## A240481.P8706831556942359303

`A240484(A155212(n)+13)`
-/

namespace A240481.P8706831556942359303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A155212 n + 13).toNat

end

end A240481.P8706831556942359303

/-! ## A240481.P4286800872613450167

`A240484(A141214(n+1)+8)`
-/

namespace A240481.P4286800872613450167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A141214 (n + 1) + 8).toNat

end

end A240481.P4286800872613450167

/-! ## A240481.P8709811930591233575

`A240484(eq[6, A131818(n+1)])`
-/

namespace A240481.P8709811930591233575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240481.P8709811930591233575

/-!
# A240482: Number of nX6 0..1 arrays with no element equal to more than two horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240482, there is no canonical definition to state claims against.
-/

/-! ## A240482.P5038539506831227754

`A240484(A374007(n+1))`
-/

namespace A240482.P5038539506831227754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A374007 (n + 1)).toNat

end

end A240482.P5038539506831227754

/-! ## A240482.P4579182006462444964

`A240484(eq[7, A131818(n+1)])`
-/

namespace A240482.P4579182006462444964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240482.P4579182006462444964

/-! ## A240482.P558074738159399297

`A240484(A052905(n+3))`
-/

namespace A240482.P558074738159399297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A052905 (n + 3)).toNat

end

end A240482.P558074738159399297

/-! ## A240482.P16924113048424855551

`A240484(A056119(n)+16)`
-/

namespace A240482.P16924113048424855551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A056119 n + 16).toNat

end

end A240482.P16924113048424855551

/-! ## A240482.P18030252412645168823

`A240484(eq[3, A219347(n)])`
-/

namespace A240482.P18030252412645168823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240482.P18030252412645168823

/-!
# A240483: Number of nX7 0..1 arrays with no element equal to more than two horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240483, there is no canonical definition to state claims against.
-/

/-! ## A240483.P15198169228254762358

`A240484(A374008(n+1))`
-/

namespace A240483.P15198169228254762358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A374008 (n + 1)).toNat

end

end A240483.P15198169228254762358

/-! ## A240483.P9321912317211733931

`A240484(eq[8, A131818(n+1)])`
-/

namespace A240483.P9321912317211733931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240483.P9321912317211733931

/-! ## A240483.P17933533811546381323

`A240484(A055999(n+4))`
-/

namespace A240483.P17933533811546381323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (A055999 (n + 4)).toNat

end

end A240483.P17933533811546381323

/-! ## A240483.P3358411142848348366

`A240484(eq[4, A219347(n)])`
-/

namespace A240483.P3358411142848348366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240483.P3358411142848348366

/-! ## A240483.P7952482690172364250

`A240484(eq[6, A193592(n)])`
-/

namespace A240483.P7952482690172364250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240483.P7952482690172364250

/-!
# A240484: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than two horizontal or vertical neighbors, with new values 0..1 introduced in row major order.

The programs for A240484, there is no canonical definition to state claims against.
-/

/-! ## A240484.P10974412061366869785

`A366187(A038208(n))`
-/

namespace A240484.P10974412061366869785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366187 (A038208 n).toNat

end

end A240484.P10974412061366869785

/-! ## A240484.P1864821796879340942

`A240636(A084193(∑[n]))`
-/

namespace A240484.P1864821796879340942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A240484.P1864821796879340942

/-! ## A240484.P13072985399708177655

`A240636(A062003(n)+1)`
-/

namespace A240484.P13072985399708177655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A062003 n + 1).toNat

end

end A240484.P13072985399708177655

/-! ## A240484.P5538439322010785192

`A240636(A004885(n+2))`
-/

namespace A240484.P5538439322010785192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A004885 (n + 2)).toNat

end

end A240484.P5538439322010785192

/-! ## A240484.P1121649928505470904

`A240636(A004896(n+2))`
-/

namespace A240484.P1121649928505470904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240636 (A004896 (n + 2)).toNat

end

end A240484.P1121649928505470904

/-!
# A240485: a(n) = -Zeta(1-n)*n*(2^(n+1) - 4) - Zeta(-n)*(n+1)*(2^(n+2) - 2), for n = 0 the limit is understood.

The programs for A240485, there is no canonical definition to state claims against.
-/

/-! ## A240485.P2686307759942057186

`A240677(n)-5*A226158(n)`
-/

namespace A240485.P2686307759942057186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240677 n - 5 * A226158 n

end

end A240485.P2686307759942057186

/-! ## A240485.P7977120244179774683

`-(A226158(n+1)+2*A226158(n))`
-/

namespace A240485.P7977120244179774683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A226158 (n + 1) + 2 * A226158 n)

end

end A240485.P7977120244179774683

/-! ## A240485.P4897409516456015412

`A230324(n)-A240677(n)`
-/

namespace A240485.P4897409516456015412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230324 n - A240677 n

end

end A240485.P4897409516456015412

/-! ## A240485.P15154279720643320122

`A230324(n)-(3*A226158(n)-A226158(n+1))`
-/

namespace A240485.P15154279720643320122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230324 n - (3 * A226158 n - A226158 (n + 1))

end

end A240485.P15154279720643320122

/-! ## A240485.P8326721194116867231

`Δ[A109573(n)]/2^(n-1)-A240677(n)`
-/

namespace A240485.P8326721194116867231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109573 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A240677 n : ℚ)

end

end A240485.P8326721194116867231

/-!
# A240486: Number of partitions of n containing m(1) as a part, where m denotes multiplicity.

The programs for A240486, there is no canonical definition to state claims against.
-/

/-! ## A240486.P7427548052504096998

`A182712(n)+Δ[A085811(n+1)]`
-/

namespace A240486.P7427548052504096998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 n + (f1 (n + 1) - f1 n)

end

end A240486.P7427548052504096998

/-! ## A240486.P11674268766859705033

`A182712(n)+Δ[A002865(1-(3-n)%(n+1))]`
-/

namespace A240486.P11674268766859705033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (1 - Int.tmod (3 - (n : ℤ)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 n + (f1 (n + 1) - f1 n)

end

end A240486.P11674268766859705033

/-! ## A240486.P13336635766802915689

`A182712(A289207(n))+A085811(n+2)`
-/

namespace A240486.P13336635766802915689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (A289207 n).toNat + A085811 (n + 2)

end

end A240486.P13336635766802915689

/-! ## A240486.P17746614384049565692

`Δ[A085811(n+1)]+A087787(n)-A002865(n)`
-/

namespace A240486.P17746614384049565692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A087787 n - A002865 n)

end

end A240486.P17746614384049565692

/-! ## A240486.P2202580711154102385

`A241506(n)+A241507(n)`
-/

namespace A240486.P2202580711154102385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241506 n + A241507 n

end

end A240486.P2202580711154102385

/-! ## A240486.P12899034474757039331

`A000041(n)-(A241509(n)+A241508(n))`
-/

namespace A240486.P12899034474757039331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241509 n + A241508 n)

end

end A240486.P12899034474757039331

/-! ## A240486.P17157646789064208355

`sqrt(A001255(n))-(A241509(n)+A241508(n))`
-/

namespace A240486.P17157646789064208355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241509 n + A241508 n : ℝ)

end

end A240486.P17157646789064208355

/-! ## A240486.P16742031502360002130

`A000041(n)-A241509(n)-A241508(A028310(n))`
-/

namespace A240486.P16742031502360002130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241509 n - A241508 (A028310 n).toNat

end

end A240486.P16742031502360002130

/-! ## A240486.P18077156416364677876

`A241510(n)-A241508(n)`
-/

namespace A240486.P18077156416364677876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241510 n - A241508 n

end

end A240486.P18077156416364677876

/-! ## A240486.P3423274982679003467

`Δ[A212551(A001844(n))+A085811(n+1)]`
-/

namespace A240486.P3423274982679003467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A001844 n).toNat + A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240486.P3423274982679003467

/-!
# A240491: Number of partitions p of n such that the multiplicity of the mean of p is a part of p.

The programs for A240491, there is no canonical definition to state claims against.
-/

/-! ## A240491.P6610316894389477739

`A300705(A000124(n)-A175126(n))`
-/

namespace A240491.P6610316894389477739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300705 (A000124 n - A175126 n).toNat

end

end A240491.P6610316894389477739

/-! ## A240491.P6164888006301689686

`and(A146115(A146129(n+1)), A319432(n+1))`
-/

namespace A240491.P6164888006301689686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146115 (A146129 (n + 1)).toNat) (A319432 (n + 1))

end

end A240491.P6164888006301689686

/-! ## A240491.P2566875962613323454

`and(A069359(A294529(n)), A224909(n+1))`
-/

namespace A240491.P2566875962613323454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069359 (A294529 n).toNat) (A224909 (n + 1))

end

end A240491.P2566875962613323454

/-! ## A240491.P892644686879793972

`and(A373378(A326083(2*n)), A387110(n+1))`
-/

namespace A240491.P892644686879793972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A373378 (A326083 (2 * n)).toNat) (A387110 (n + 1))

end

end A240491.P892644686879793972

/-!
# A240494: Number of partitions of n such that the multiplicity of the greatest part is a part.

The programs for A240494, there is no canonical definition to state claims against.
-/

/-! ## A240494.P13243453054934218182

`2*A039900(n)-A039899(n+1)`
-/

namespace A240494.P13243453054934218182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039900 n - A039899 (n + 1)

end

end A240494.P13243453054934218182

/-! ## A240494.P15957803599448677021

`A006141(n+1)+A039900(n)-Δ[A039900(n)]`
-/

namespace A240494.P15957803599448677021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006141 (n + 1) + (A039900 n - (f1 (n + 1) - f1 n))

end

end A240494.P15957803599448677021

/-! ## A240494.P13415110599573637798

`A005843(A039900(n))-A039899(n+1)`
-/

namespace A240494.P13415110599573637798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A039900 n).toNat - A039899 (n + 1)

end

end A240494.P13415110599573637798

/-!
# A240496: Number of partitions p of n such that the multiplicity of 2*min(p) is a part.

The programs for A240496, there is no canonical definition to state claims against.
-/

/-! ## A240496.P17501772928214254171

`A320278(A063834(n)-A337223(n))`
-/

namespace A240496.P17501772928214254171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A063834 n - A337223 n).toNat

end

end A240496.P17501772928214254171

/-! ## A240496.P15516348734045014985

`A320278(A063834(n)-A136655(n+1))`
-/

namespace A240496.P15516348734045014985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A063834 n - A136655 (n + 1)).toNat

end

end A240496.P15516348734045014985

/-! ## A240496.P17832723956256979468

`A320278(A063834(n)-A204455(n+1))`
-/

namespace A240496.P17832723956256979468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A063834 n - A204455 (n + 1)).toNat

end

end A240496.P17832723956256979468

/-!
# A240498: Number of partitions p of n such that the multiplicity of min(p)*max(p) is a part.

The programs for A240498, there is no canonical definition to state claims against.
-/

/-! ## A240498.P4295545371277935511

`A321728(n+1)-A001221(A000041(n))`
-/

namespace A240498.P4295545371277935511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (n + 1) - A001221 (A000041 n).toNat

end

end A240498.P4295545371277935511

