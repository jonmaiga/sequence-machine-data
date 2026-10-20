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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A025700: Index of 3^n within the sequence of the numbers of the form 3^i * 10^j.

The programs for A025700, the canonical program `A025700.P7343268444154168773` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025700 has offset 0).

The definition of A025700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025700.P1509591750088886284

`∑[floor(n*log(3)/log(10))+1]`
-/

namespace A025700.P1509591750088886284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log (3 : ℝ) / Real.log (10 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025700.P1509591750088886284

namespace A025700

/-- `∑[floor(n*log(3)/log(10))+1]` -/
def P1509591750088886284.Spec : Prop :=
  ∀ n, P1509591750088886284.a n = A025700 n

end A025700

/-! ## A025700.P4897020962501921824

`ceil(a(n-1)+n*log(3)/log(10))` with `a(0)=1`
-/

namespace A025700.P4897020962501921824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.log (3 : ℝ) / Real.log (10 : ℝ)⌉

end

end A025700.P4897020962501921824

namespace A025700

/-- `ceil(a(n-1)+n*log(3)/log(10))` -/
def P4897020962501921824.Spec : Prop :=
  ∀ n, P4897020962501921824.a n = A025700 n

end A025700

/-! ## A025700.P3244040553514392827

`a(n-1)+floor(n*log(3)/log(10))+1` with `a(0)=1`
-/

namespace A025700.P3244040553514392827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) * Real.log (3 : ℝ) / Real.log (10 : ℝ)⌋ + 1)

end

end A025700.P3244040553514392827

namespace A025700

/-- `a(n-1)+floor(n*log(3)/log(10))+1` -/
def P3244040553514392827.Spec : Prop :=
  ∀ n, P3244040553514392827.a n = A025700 n

end A025700

/-! ## A025700.P3739297778820318968

`or(∑[A034888(n)], char[22])`
-/

namespace A025700.P3739297778820318968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A025700.P3739297778820318968

namespace A025700

/-- `or(∑[A034888(n)], char[22])` -/
def P3739297778820318968.Spec : Prop :=
  ∀ n, P3739297778820318968.a n = A025700 n

end A025700

/-! ## A025700.P7343268444154168773

`∑[A034888(n)]%A017511(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025700

/-- `∑[A034888(n)]%A017511(n)` -/
def P7343268444154168773.Spec : Prop :=
  ∀ n, P7343268444154168773.a n = A025700 n

theorem P7343268444154168773.correct : P7343268444154168773.Spec := by
  intro n
  simp only [A025700]

end A025700

/-! ## A025700.P7614395857469035809

`∑[A034888(n)]*A057427(n+2)`
-/

namespace A025700.P7614395857469035809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 (n + 2)

end

end A025700.P7614395857469035809

namespace A025700

/-- `∑[A034888(n)]*A057427(n+2)` -/
def P7614395857469035809.Spec : Prop :=
  ∀ n, P7614395857469035809.a n = A025700 n

end A025700

/-! ## A025700.P10390466141370513793

`A000027(∑[A034888(n)])`
-/

namespace A025700.P10390466141370513793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025700.P10390466141370513793

namespace A025700

/-- `A000027(∑[A034888(n)])` -/
def P10390466141370513793.Spec : Prop :=
  ∀ n, P10390466141370513793.a n = A025700 n

end A025700

/-! ## A025700.P12497416147045857610

`lt[A025685(n+1), 1]+1`
-/

namespace A025700.P12497416147045857610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025700.P12497416147045857610

namespace A025700

/-- `lt[A025685(n+1), 1]+1` -/
def P12497416147045857610.Spec : Prop :=
  ∀ n, (P12497416147045857610.a n : ℤ) = A025700 n

end A025700

/-!
# A025701: Index of 4^n within the sequence of the numbers of the form 3^i*4^j.

The programs for A025701, the canonical program `A025701.P4726638053084744775` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025701 has offset 0).

The definition of A025701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025701.P4726638053084744775

`∑[∑[A022929(abs(1-n))]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025701

/-- `∑[∑[A022929(abs(1-n))]]` -/
def P4726638053084744775.Spec : Prop :=
  ∀ n, P4726638053084744775.a n = A025701 n

theorem P4726638053084744775.correct : P4726638053084744775.Spec := by
  intro n
  simp only [A025701]

end A025701

/-! ## A025701.P1381187156085561159

`∑[A020915(2*n)]`
-/

namespace A025701.P1381187156085561159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025701.P1381187156085561159

namespace A025701

/-- `∑[A020915(2*n)]` -/
def P1381187156085561159.Spec : Prop :=
  ∀ n, P1381187156085561159.a n = A025701 n

end A025701

/-! ## A025701.P6001941365534795836

`∑[A136409(2*n)+1]`
-/

namespace A025701.P6001941365534795836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025701.P6001941365534795836

namespace A025701

/-- `∑[A136409(2*n)+1]` -/
def P6001941365534795836.Spec : Prop :=
  ∀ n, P6001941365534795836.a n = A025701 n

end A025701

/-! ## A025701.P356233344938748820

`∑[A156301(2*n)]+1`
-/

namespace A025701.P356233344938748820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025701.P356233344938748820

namespace A025701

/-- `∑[A156301(2*n)]+1` -/
def P356233344938748820.Spec : Prop :=
  ∀ n, P356233344938748820.a n = A025701 n

end A025701

/-! ## A025701.P8284325475284945823

`∑[record[A020915(A014681(n))]]`
-/

namespace A025701.P8284325475284945823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A014681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025701.P8284325475284945823

namespace A025701

/-- `∑[record[A020915(A014681(n))]]` -/
def P8284325475284945823.Spec : Prop :=
  ∀ n, P8284325475284945823.a n = A025701 n

end A025701

/-! ## A025701.P709035591527034116

`∑[record[A020915(A131452(n))]]`
-/

namespace A025701.P709035591527034116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A131452 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025701.P709035591527034116

namespace A025701

/-- `∑[record[A020915(A131452(n))]]` -/
def P709035591527034116.Spec : Prop :=
  ∀ n, P709035591527034116.a n = A025701 n

end A025701

/-! ## A025701.P3333621399220335841

`∑[A156301(A008486(n)-n)]`
-/

namespace A025701.P3333621399220335841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A008486 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025701.P3333621399220335841

namespace A025701

/-- `∑[A156301(A008486(n)-n)]` -/
def P3333621399220335841.Spec : Prop :=
  ∀ n, P3333621399220335841.a n = A025701 n

end A025701

/-! ## A025701.P14761842406822927309

`∑[record[A020915(A114112(n+1))]]`
-/

namespace A025701.P14761842406822927309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A114112 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025701.P14761842406822927309

namespace A025701

/-- `∑[record[A020915(A114112(n+1))]]` -/
def P14761842406822927309.Spec : Prop :=
  ∀ n, P14761842406822927309.a n = A025701 n

end A025701

/-! ## A025701.P902366283801404695

`∑[record[A020915(A153733(n))]]`
-/

namespace A025701.P902366283801404695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A153733 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025701.P902366283801404695

namespace A025701

/-- `∑[record[A020915(A153733(n))]]` -/
def P902366283801404695.Spec : Prop :=
  ∀ n, P902366283801404695.a n = A025701 n

end A025701

/-! ## A025701.P15687145676501147880

`∑[A008619(2*A136409(2*n))]`
-/

namespace A025701.P15687145676501147880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A136409 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025701.P15687145676501147880

namespace A025701

/-- `∑[A008619(2*A136409(2*n))]` -/
def P15687145676501147880.Spec : Prop :=
  ∀ n, P15687145676501147880.a n = A025701 n

end A025701

/-! ## A025701.P1932321651187032784

`∑[record[A020915(A270743(n+1))]]`
-/

namespace A025701.P1932321651187032784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A270743 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025701.P1932321651187032784

namespace A025701

/-- `∑[record[A020915(A270743(n+1))]]` -/
def P1932321651187032784.Spec : Prop :=
  ∀ n, P1932321651187032784.a n = A025701 n

end A025701

/-! ## A025701.P15321851158494075403

`∑[A206805(A004277(n))]-n²`
-/

namespace A025701.P15321851158494075403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206805 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A025701.P15321851158494075403

namespace A025701

/-- `∑[A206805(A004277(n))]-n²` -/
def P15321851158494075403.Spec : Prop :=
  ∀ n, P15321851158494075403.a n = A025701 n

end A025701

/-! ## A025701.P2455474385187754701

`eq[1, A025640(n+1)]-n`
-/

namespace A025701.P2455474385187754701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025701.P2455474385187754701

namespace A025701

/-- `eq[1, A025640(n+1)]-n` -/
def P2455474385187754701.Spec : Prop :=
  ∀ n, P2455474385187754701.a n = A025701 n

end A025701

/-! ## A025701.P18144768712547425300

`A156301(A020914(∑[A156301(2*n)]))`
-/

namespace A025701.P18144768712547425300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A020914 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A025701.P18144768712547425300

namespace A025701

/-- `A156301(A020914(∑[A156301(2*n)]))` -/
def P18144768712547425300.Spec : Prop :=
  ∀ n, P18144768712547425300.a n = A025701 n

end A025701

/-!
# A025702: Index of 4^n within the sequence of the numbers of the form 4^i*5^j.

The programs for A025702, there is no canonical definition to state claims against.
-/

/-! ## A025702.P9976749903673475694

`∑[A034887(a(n-1)+2*n)]` with `a(0)=1`
-/

namespace A025702.P9976749903673475694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A034887 (f1 (n - 1) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025702.P9976749903673475694

/-! ## A025702.P5317350822269736883

`∑[A034887(A228295(n)+n)]`
-/

namespace A025702.P5317350822269736883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A228295 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025702.P5317350822269736883

/-!
# A025703: Index of 4^n within the sequence of the numbers of the form 4^i*6^j.

The programs for A025703, the canonical program `A025703.P4827319123818908847` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025703 has offset 0).

The definition of A025703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025703.P4827319123818908847

`∑[floor(2*n/log2(6))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025703

/-- `∑[floor(2*n/log2(6))+1]` -/
def P4827319123818908847.Spec : Prop :=
  ∀ n, P4827319123818908847.a n = A025703 n

theorem P4827319123818908847.correct : P4827319123818908847.Spec := by
  intro n
  simp only [A025703]

end A025703

/-! ## A025703.P5072533517207364043

`(n+1)²-∑[comp[A054414(2*n)]]`
-/

namespace A025703.P5072533517207364043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025703.P5072533517207364043

namespace A025703

/-- `(n+1)²-∑[comp[A054414(2*n)]]` -/
def P5072533517207364043.Spec : Prop :=
  ∀ n, P5072533517207364043.a n = A025703 n

end A025703

/-! ## A025703.P15479859195013018436

`∑[ceil(2*n/log2(6-A000007(n)))]+1`
-/

namespace A025703.P15479859195013018436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / Real.logb 2 (6 - A000007 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025703.P15479859195013018436

namespace A025703

/-- `∑[ceil(2*n/log2(6-A000007(n)))]+1` -/
def P15479859195013018436.Spec : Prop :=
  ∀ n, P15479859195013018436.a n = A025703 n

end A025703

/-! ## A025703.P4405487616729206986

`record[gcd(n+1, A025658(n+1))]`
-/

namespace A025703.P4405487616729206986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025658 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025703.P4405487616729206986

namespace A025703

/-- `record[gcd(n+1, A025658(n+1))]` -/
def P4405487616729206986.Spec : Prop :=
  ∀ n, (P4405487616729206986.a n : ℤ) = A025703 n

end A025703

/-! ## A025703.P2116080271584033336

`∑[n-A048766(A309690(n))]+1`
-/

namespace A025703.P2116080271584033336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048766 (A309690 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025703.P2116080271584033336

namespace A025703

/-- `∑[n-A048766(A309690(n))]+1` -/
def P2116080271584033336.Spec : Prop :=
  ∀ n, P2116080271584033336.a n = A025703 n

end A025703

/-! ## A025703.P15439949850307240384

`A000124(n)-∑[A048766(A309690(n))]`
-/

namespace A025703.P15439949850307240384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A309690 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025703.P15439949850307240384

namespace A025703

/-- `A000124(n)-∑[A048766(A309690(n))]` -/
def P15439949850307240384.Spec : Prop :=
  ∀ n, P15439949850307240384.a n = A025703 n

end A025703

/-! ## A025703.P14602508865868570654

`A025709(n)%A002189(n)`
-/

namespace A025703.P14602508865868570654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025709 n) (A002189 n)

end

end A025703.P14602508865868570654

namespace A025703

/-- `A025709(n)%A002189(n)` -/
def P14602508865868570654.Spec : Prop :=
  ∀ n, P14602508865868570654.a n = A025703 n

end A025703

/-! ## A025703.P2112923533975678379

`∩[A080907(n+1), A025709(n)]`
-/

namespace A025703.P2112923533975678379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025703.P2112923533975678379

namespace A025703

/-- `∩[A080907(n+1), A025709(n)]` -/
def P2112923533975678379.Spec : Prop :=
  ∀ n, (P2112923533975678379.a n : ℤ) = A025703 n

end A025703

/-!
# A025704: Index of 4^n within the sequence of the numbers of the form 4^i*7^j.

The programs for A025704, the canonical program `A025704.P15505086806640260930` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025704 has offset 0).

The definition of A025704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025704.P15505086806640260930

`∑[floor(2*n/log2(7))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025704

/-- `∑[floor(2*n/log2(7))+1]` -/
def P15505086806640260930.Spec : Prop :=
  ∀ n, P15505086806640260930.a n = A025704 n

theorem P15505086806640260930.correct : P15505086806640260930.Spec := by
  intro n
  simp only [A025704]

end A025704

/-! ## A025704.P8291280134092328334

`∑[ceil(A005843(n)/log2(7))]+1`
-/

namespace A025704.P8291280134092328334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005843 n : ℝ) / Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025704.P8291280134092328334

namespace A025704

/-- `∑[ceil(A005843(n)/log2(7))]+1` -/
def P8291280134092328334.Spec : Prop :=
  ∀ n, P8291280134092328334.a n = A025704 n

end A025704

/-! ## A025704.P13637404767383882432

`∑[ceil(2*n/log2(7))%A080036(n)]+1`
-/

namespace A025704.P13637404767383882432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 * n : ℝ) / Real.logb 2 (7 : ℝ)⌉ (A080036 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025704.P13637404767383882432

namespace A025704

/-- `∑[ceil(2*n/log2(7))%A080036(n)]+1` -/
def P13637404767383882432.Spec : Prop :=
  ∀ n, P13637404767383882432.a n = A025704 n

end A025704

/-! ## A025704.P8671044105700468144

`∑[ceil(A276331(2*n+1)/log2(7))]+1`
-/

namespace A025704.P8671044105700468144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276331 (2 * n + 1) : ℝ) / Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025704.P8671044105700468144

namespace A025704

/-- `∑[ceil(A276331(2*n+1)/log2(7))]+1` -/
def P8671044105700468144.Spec : Prop :=
  ∀ n, P8671044105700468144.a n = A025704 n

end A025704

/-! ## A025704.P9553134644378382203

`A000027(∑[ceil(2*n/log2(7))]+1)`
-/

namespace A025704.P9553134644378382203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A025704.P9553134644378382203

namespace A025704

/-- `A000027(∑[ceil(2*n/log2(7))]+1)` -/
def P9553134644378382203.Spec : Prop :=
  ∀ n, P9553134644378382203.a n = A025704 n

end A025704

/-! ## A025704.P4765247377643560857

`eq[0, A025666(n+1)]+1`
-/

namespace A025704.P4765247377643560857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A025704.P4765247377643560857

namespace A025704

/-- `eq[0, A025666(n+1)]+1` -/
def P4765247377643560857.Spec : Prop :=
  ∀ n, (P4765247377643560857.a n : ℤ) = A025704 n

end A025704

/-! ## A025704.P2927364056278172575

`record[gcd(A000027(n+1), A025666(n+1))]`
-/

namespace A025704.P2927364056278172575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A025666 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025704.P2927364056278172575

namespace A025704

/-- `record[gcd(A000027(n+1), A025666(n+1))]` -/
def P2927364056278172575.Spec : Prop :=
  ∀ n, (P2927364056278172575.a n : ℤ) = A025704 n

end A025704

/-! ## A025704.P14429437878211131517

`record[2*(n+1)/A034008(A025666(n+1)+3)]`
-/

namespace A025704.P14429437878211131517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A034008 (A025666 (n + 1) + 3).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025704.P14429437878211131517

namespace A025704

/-- `record[2*(n+1)/A034008(A025666(n+1)+3)]` -/
def P14429437878211131517.Spec : Prop :=
  ∀ n, P14429437878211131517.a n = (A025704 n : ℚ)

end A025704

/-! ## A025704.P10367368964188778134

`eq[A000007(n), A025666(A028310(n))]`
-/

namespace A025704.P10367368964188778134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025666 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025704.P10367368964188778134

namespace A025704

/-- `eq[A000007(n), A025666(A028310(n))]` -/
def P10367368964188778134.Spec : Prop :=
  ∀ n, (P10367368964188778134.a n : ℤ) = A025704 n

end A025704

/-! ## A025704.P2122161672331442312

`A138999(∑[4*(n+1)]+C(n, 2))`
-/

namespace A025704.P2122161672331442312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2)

end

end A025704.P2122161672331442312

namespace A025704

/-- `A138999(∑[4*(n+1)]+C(n, 2))` -/
def P2122161672331442312.Spec : Prop :=
  ∀ n, P2122161672331442312.a n = A025704 n

end A025704

/-!
# A025705: Index of 4^n within the sequence of the numbers of the form 4^i*10^j.

The programs for A025705, the canonical program `A025705.P3415323721020212063` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025705 has offset 0).

The definition of A025705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025705.P3415323721020212063

`∑[A210434(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025705

/-- `∑[A210434(n)]` -/
def P3415323721020212063.Spec : Prop :=
  ∀ n, P3415323721020212063.a n = A025705 n

theorem P3415323721020212063.correct : P3415323721020212063.Spec := by
  intro n
  simp only [A025705]

end A025705

/-! ## A025705.P1858822844619110038

`∑[A034887(2*n)]`
-/

namespace A025705.P1858822844619110038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025705.P1858822844619110038

namespace A025705

/-- `∑[A034887(2*n)]` -/
def P1858822844619110038.Spec : Prop :=
  ∀ n, P1858822844619110038.a n = A025705 n

end A025705

/-! ## A025705.P2293312538381767990

`∑[A192543(2*n+1)]+1`
-/

namespace A025705.P2293312538381767990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025705.P2293312538381767990

namespace A025705

/-- `∑[A192543(2*n+1)]+1` -/
def P2293312538381767990.Spec : Prop :=
  ∀ n, P2293312538381767990.a n = A025705 n

end A025705

/-! ## A025705.P11661119040573496687

`∑[A192543(A004274(n+2))]`
-/

namespace A025705.P11661119040573496687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A004274 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025705.P11661119040573496687

namespace A025705

/-- `∑[A192543(A004274(n+2))]` -/
def P11661119040573496687.Spec : Prop :=
  ∀ n, P11661119040573496687.a n = A025705 n

end A025705

/-! ## A025705.P4020556148799011969

`∑[A192543(record[A026741(n)+2])]`
-/

namespace A025705.P4020556148799011969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025705.P4020556148799011969

namespace A025705

/-- `∑[A192543(record[A026741(n)+2])]` -/
def P4020556148799011969.Spec : Prop :=
  ∀ n, P4020556148799011969.a n = A025705 n

end A025705

/-! ## A025705.P8588953774468061845

`∑[A028310(A192543(2*n+1))]`
-/

namespace A025705.P8588953774468061845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A192543 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025705.P8588953774468061845

namespace A025705

/-- `∑[A028310(A192543(2*n+1))]` -/
def P8588953774468061845.Spec : Prop :=
  ∀ n, P8588953774468061845.a n = A025705 n

end A025705

/-! ## A025705.P6442191751456362143

`∑[A192543(A233583(2*(n+1)))]`
-/

namespace A025705.P6442191751456362143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A233583 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025705.P6442191751456362143

namespace A025705

/-- `∑[A192543(A233583(2*(n+1)))]` -/
def P6442191751456362143.Spec : Prop :=
  ∀ n, P6442191751456362143.a n = A025705 n

end A025705

/-! ## A025705.P16746503864911635593

`A254667(a(n-1))+A210434(n)` with `a(0)=1, a(1)=2`
-/

namespace A025705.P16746503864911635593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A254667 (a (n - 1)).toNat + A210434 n

end

end A025705.P16746503864911635593

namespace A025705

/-- `A254667(a(n-1))+A210434(n)` -/
def P16746503864911635593.Spec : Prop :=
  ∀ n, P16746503864911635593.a n = A025705 n

end A025705

/-! ## A025705.P5191253317085501704

`record[(n+1)/∏{p}[A025686(n+1)+1, #]]`
-/

namespace A025705.P5191253317085501704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025686 (n + 1) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025705.P5191253317085501704

namespace A025705

/-- `record[(n+1)/∏{p}[A025686(n+1)+1, #]]` -/
def P5191253317085501704.Spec : Prop :=
  ∀ n, P5191253317085501704.a n = (A025705 n : ℚ)

end A025705

/-! ## A025705.P3693339081159657859

`eq[1, A005129(A025686(n+1))]+1`
-/

namespace A025705.P3693339081159657859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005129 (A025686 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A025705.P3693339081159657859

namespace A025705

/-- `eq[1, A005129(A025686(n+1))]+1` -/
def P3693339081159657859.Spec : Prop :=
  ∀ n, (P3693339081159657859.a n : ℤ) = A025705 n

end A025705

/-! ## A025705.P14544521573999630489

`eq[1, A025686(n+2)]-n`
-/

namespace A025705.P14544521573999630489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025686 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025705.P14544521573999630489

namespace A025705

/-- `eq[1, A025686(n+2)]-n` -/
def P14544521573999630489.Spec : Prop :=
  ∀ n, P14544521573999630489.a n = A025705 n

end A025705

/-! ## A025705.P12994059705399629088

`∑[∑{digits}[4^n, A036370(#)]]`
-/

namespace A025705.P12994059705399629088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A036370 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025705.P12994059705399629088

namespace A025705

/-- `∑[∑{digits}[4^n, A036370(#)]]` -/
def P12994059705399629088.Spec : Prop :=
  ∀ n, P12994059705399629088.a n = A025705 n

end A025705

/-!
# A025706: Index of 5^n within the sequence of the numbers of the form 4^i*5^j.

The programs for A025706, the canonical program `A025706.P564595113623936684` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025706 has offset 0).

The definition of A025706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025706.P564595113623936684

`∑[floor(n/2*log2(5))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025706

/-- `∑[floor(n/2*log2(5))+1]` -/
def P564595113623936684.Spec : Prop :=
  ∀ n, P564595113623936684.a n = A025706 n

theorem P564595113623936684.correct : P564595113623936684.Spec := by
  intro n
  simp only [A025706]

end A025706

/-! ## A025706.P8005182435993859382

`eq[1, A025646(n+1)]-n`
-/

namespace A025706.P8005182435993859382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025706.P8005182435993859382

namespace A025706

/-- `eq[1, A025646(n+1)]-n` -/
def P8005182435993859382.Spec : Prop :=
  ∀ n, P8005182435993859382.a n = A025706 n

end A025706

/-! ## A025706.P6414269059753880397

`A162288(A352543(n+1))+A025730(n)`
-/

namespace A025706.P6414269059753880397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162288 (A352543 (n + 1)).toNat + A025730 n

end

end A025706.P6414269059753880397

namespace A025706

/-- `A162288(A352543(n+1))+A025730(n)` -/
def P6414269059753880397.Spec : Prop :=
  ∀ n, P6414269059753880397.a n = A025706 n

end A025706

/-! ## A025706.P14958721255244253482

`A025730(n)+A000007(A194001(n))`
-/

namespace A025706.P14958721255244253482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025730 n + A000007 (A194001 n).toNat

end

end A025706.P14958721255244253482

namespace A025706

/-- `A025730(n)+A000007(A194001(n))` -/
def P14958721255244253482.Spec : Prop :=
  ∀ n, P14958721255244253482.a n = A025706 n

end A025706

/-! ## A025706.P10329223490060808120

`A335510(A276971(n+1))+A025730(n)`
-/

namespace A025706.P10329223490060808120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335510 (A276971 (n + 1)).toNat + A025730 n

end

end A025706.P10329223490060808120

namespace A025706

/-- `A335510(A276971(n+1))+A025730(n)` -/
def P10329223490060808120.Spec : Prop :=
  ∀ n, P10329223490060808120.a n = A025706 n

end A025706

/-! ## A025706.P5762953344125086509

`A025730(n)+A000007(A125127(3*n+2))`
-/

namespace A025706.P5762953344125086509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025730 n + A000007 (A125127 (3 * n + 2)).toNat

end

end A025706.P5762953344125086509

namespace A025706

/-- `A025730(n)+A000007(A125127(3*n+2))` -/
def P5762953344125086509.Spec : Prop :=
  ∀ n, P5762953344125086509.a n = A025706 n

end A025706

/-!
# A025707: Index of 5^n within the sequence of the numbers of the form 5^i*6^j.

The programs for A025707, the canonical program `A025707.P4187545652726333253` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025707 has offset 0).

The definition of A025707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025707.P9214588165893317917

`eq[1, A025659(n+2)]-n`
-/

namespace A025707.P9214588165893317917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025659 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025707.P9214588165893317917

namespace A025707

/-- `eq[1, A025659(n+2)]-n` -/
def P9214588165893317917.Spec : Prop :=
  ∀ n, P9214588165893317917.a n = A025707 n

end A025707

/-! ## A025707.P4187545652726333253

`∑[A000196(∑[A184732(n+1)])]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025707

/-- `∑[A000196(∑[A184732(n+1)])]` -/
def P4187545652726333253.Spec : Prop :=
  ∀ n, P4187545652726333253.a n = A025707 n

theorem P4187545652726333253.correct : P4187545652726333253.Spec := by
  intro n
  simp only [A025707]

end A025707

/-! ## A025707.P4663267992758389418

`∑[A028904(n)+A008683(A161415(n+1))]`
-/

namespace A025707.P4663267992758389418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 n + A008683 (A161415 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025707.P4663267992758389418

namespace A025707

/-- `∑[A028904(n)+A008683(A161415(n+1))]` -/
def P4663267992758389418.Spec : Prop :=
  ∀ n, P4663267992758389418.a n = A025707 n

end A025707

/-! ## A025707.P7265402521757626880

`A033442(n+1)+A000035(A088377(2*n+5))`
-/

namespace A025707.P7265402521757626880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033442 (n + 1) + A000035 (A088377 (2 * n + 5)).toNat

end

end A025707.P7265402521757626880

namespace A025707

/-- `A033442(n+1)+A000035(A088377(2*n+5))` -/
def P7265402521757626880.Spec : Prop :=
  ∀ n, P7265402521757626880.a n = A025707 n

end A025707

/-! ## A025707.P16982898670275460460

`A356161(A052166(n+1))+A033442(n+1)`
-/

namespace A025707.P16982898670275460460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356161 (A052166 (n + 1)).toNat + A033442 (n + 1)

end

end A025707.P16982898670275460460

namespace A025707

/-- `A356161(A052166(n+1))+A033442(n+1)` -/
def P16982898670275460460.Spec : Prop :=
  ∀ n, P16982898670275460460.a n = A025707 n

end A025707

/-!
# A025708: Index of 5^n within the sequence of the numbers of the form 5^i*7^j.

The programs for A025708, there is no canonical definition to state claims against.
-/

/-! ## A025708.P8564774105217667740

`record[gcd(n+1, A025667(n+1))]`
-/

namespace A025708.P8564774105217667740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025667 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025708.P8564774105217667740

/-! ## A025708.P784848137780408651

`eq[A000007(n), A025667(A028310(n))]`
-/

namespace A025708.P784848137780408651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025708.P784848137780408651

/-! ## A025708.P18384309480034844004

`eq[A000007(n), A025667(A000007(n)+n)]`
-/

namespace A025708.P18384309480034844004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025667 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025708.P18384309480034844004

/-! ## A025708.P9447862578862491822

`eq[1, A025667(n+2)]-n`
-/

namespace A025708.P9447862578862491822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025667 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025708.P9447862578862491822

/-! ## A025708.P9845905534179182007

`A289508(A346002(2*(n+2)))+A033438(n+1)`
-/

namespace A025708.P9845905534179182007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A346002 (2 * (n + 2))).toNat + A033438 (n + 1)

end

end A025708.P9845905534179182007

/-!
# A025709: Index of 5^n within the sequence of the numbers of the form 5^i*8^j.

The programs for A025709, the canonical program `A025709.P7345086092402394338` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025709 has offset 0).

The definition of A025709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025709.P7345086092402394338

`∑[ceil(n*log2(5)/3)]+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025709

/-- `∑[ceil(n*log2(5)/3)]+1` -/
def P7345086092402394338.Spec : Prop :=
  ∀ n, P7345086092402394338.a n = A025709 n

theorem P7345086092402394338.correct : P7345086092402394338.Spec := by
  intro n
  simp only [A025709]

end A025709

/-! ## A025709.P8094224713858771911

`∑[A008620(A061785(A028310(n)))]`
-/

namespace A025709.P8094224713858771911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A061785 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025709.P8094224713858771911

namespace A025709

/-- `∑[A008620(A061785(A028310(n)))]` -/
def P8094224713858771911.Spec : Prop :=
  ∀ n, P8094224713858771911.a n = A025709 n

end A025709

/-! ## A025709.P10035844308806260164

`∑[floor(A210435(A123384(n)+2)/3)]`
-/

namespace A025709.P10035844308806260164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210435 (A123384 n + 2).toNat : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025709.P10035844308806260164

namespace A025709

/-- `∑[floor(A210435(A123384(n)+2)/3)]` -/
def P10035844308806260164.Spec : Prop :=
  ∀ n, P10035844308806260164.a n = A025709 n

end A025709

/-! ## A025709.P4787832557400985556

`A004526(A025706(n)+A025692(n))`
-/

namespace A025709.P4787832557400985556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A025706 n + A025692 n).toNat

end

end A025709.P4787832557400985556

namespace A025709

/-- `A004526(A025706(n)+A025692(n))` -/
def P4787832557400985556.Spec : Prop :=
  ∀ n, P4787832557400985556.a n = A025709 n

end A025709

/-! ## A025709.P4975736913322062466

`A065033(A025692(n)+A025706(n)-1)`
-/

namespace A025709.P4975736913322062466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A025692 n + (A025706 n - 1)).toNat

end

end A025709.P4975736913322062466

namespace A025709

/-- `A065033(A025692(n)+A025706(n)-1)` -/
def P4975736913322062466.Spec : Prop :=
  ∀ n, P4975736913322062466.a n = A025709 n

end A025709

/-! ## A025709.P10261890063342702154

`A110654(A025692(n)+A025706(n)-1)`
-/

namespace A025709.P10261890063342702154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A025692 n + (A025706 n - 1)).toNat

end

end A025709.P10261890063342702154

namespace A025709

/-- `A110654(A025692(n)+A025706(n)-1)` -/
def P10261890063342702154.Spec : Prop :=
  ∀ n, P10261890063342702154.a n = A025709 n

end A025709

/-! ## A025709.P10260449292410937700

`A065033(A025692(n)-(1-A025706(n)))`
-/

namespace A025709.P10260449292410937700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A025692 n - (1 - A025706 n)).toNat

end

end A025709.P10260449292410937700

namespace A025709

/-- `A065033(A025692(n)-(1-A025706(n)))` -/
def P10260449292410937700.Spec : Prop :=
  ∀ n, P10260449292410937700.a n = A025709 n

end A025709

/-! ## A025709.P7468162615036623067

`A110654(A025692(n)-(1-A025706(n)))`
-/

namespace A025709.P7468162615036623067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A025692 n - (1 - A025706 n)).toNat

end

end A025709.P7468162615036623067

namespace A025709

/-- `A110654(A025692(n)-(1-A025706(n)))` -/
def P7468162615036623067.Spec : Prop :=
  ∀ n, P7468162615036623067.a n = A025709 n

end A025709

/-!
# A025710: Index of 5^n within the sequence of the numbers of the form 5^i*9^j.

The programs for A025710, the canonical program `A025710.P12530225791585977841` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025710 has offset 0).

The definition of A025710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025710.P2779563947525816737

`record[gcd(n+1, A025679(n+1))]`
-/

namespace A025710.P2779563947525816737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025679 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025710.P2779563947525816737

namespace A025710

/-- `record[gcd(n+1, A025679(n+1))]` -/
def P2779563947525816737.Spec : Prop :=
  ∀ n, (P2779563947525816737.a n : ℤ) = A025710 n

end A025710

/-! ## A025710.P12530225791585977841

`∑[A011262(A011262(floor(n/γ-n)+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A025710

/-- `∑[A011262(A011262(floor(n/γ-n)+1))]` -/
def P12530225791585977841.Spec : Prop :=
  ∀ n, P12530225791585977841.a n = A025710 n

theorem P12530225791585977841.correct : P12530225791585977841.Spec := by
  intro n
  simp only [A025710]

end A025710

/-! ## A025710.P3381331669271320124

`floor(∑[A138251(n+1)]/2)+1`
-/

namespace A025710.P3381331669271320124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ + 1

end

end A025710.P3381331669271320124

namespace A025710

/-- `floor(∑[A138251(n+1)]/2)+1` -/
def P3381331669271320124.Spec : Prop :=
  ∀ n, P3381331669271320124.a n = A025710 n

end A025710

/-! ## A025710.P2898544493187081418

`A008619(∑[A138251(n+1)])`
-/

namespace A025710.P2898544493187081418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025710.P2898544493187081418

namespace A025710

/-- `A008619(∑[A138251(n+1)])` -/
def P2898544493187081418.Spec : Prop :=
  ∀ n, P2898544493187081418.a n = A025710 n

end A025710

/-! ## A025710.P14409283317447546092

`A004526(∑[A138251(n+1)])+1`
-/

namespace A025710.P14409283317447546092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A025710.P14409283317447546092

namespace A025710

/-- `A004526(∑[A138251(n+1)])+1` -/
def P14409283317447546092.Spec : Prop :=
  ∀ n, P14409283317447546092.a n = A025710 n

end A025710

/-! ## A025710.P3656771945203455861

`ceil(∑[A138251(A028310(n)+1)]/2)`
-/

namespace A025710.P3656771945203455861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138251 (A028310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A025710.P3656771945203455861

namespace A025710

/-- `ceil(∑[A138251(A028310(n)+1)]/2)` -/
def P3656771945203455861.Spec : Prop :=
  ∀ n, P3656771945203455861.a n = A025710 n

end A025710

/-! ## A025710.P13841167574863186495

`ceil((A020639(2*(n+1))*∑[A138251(n+1)]+1)/4)`
-/

namespace A025710.P13841167574863186495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A020639 (2 * (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℤ) : ℚ) / 4⌉

end

end A025710.P13841167574863186495

namespace A025710

/-- `ceil((A020639(2*(n+1))*∑[A138251(n+1)]+1)/4)` -/
def P13841167574863186495.Spec : Prop :=
  ∀ n, P13841167574863186495.a n = A025710 n

end A025710

/-! ## A025710.P17701525949444698830

`A075249(A398059(n+1))`
-/

namespace A025710.P17701525949444698830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075249 (A398059 (n + 1)).toNat

end

end A025710.P17701525949444698830

namespace A025710

/-- `A075249(A398059(n+1))` -/
def P17701525949444698830.Spec : Prop :=
  ∀ n, P17701525949444698830.a n = A025710 n

end A025710

/-!
# A025711: Index of 5^n within the sequence of the numbers of the form 5^i*10^j.

The programs for A025711, the canonical program `A025711.P7026910914097367224` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025711 has offset 0).

The definition of A025711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025711.P10637273678389585845

`∑[n+1-ceil(n/log2(10))]`
-/

namespace A025711.P10637273678389585845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈(n : ℝ) / Real.logb 2 (10 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025711.P10637273678389585845

namespace A025711

/-- `∑[n+1-ceil(n/log2(10))]` -/
def P10637273678389585845.Spec : Prop :=
  ∀ n, P10637273678389585845.a n = A025711 n

end A025711

/-! ## A025711.P17205761511983878298

`2*∑[A210435(n)/2]`
-/

namespace A025711.P17205761511983878298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210435 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025711.P17205761511983878298

namespace A025711

/-- `2*∑[A210435(n)/2]` -/
def P17205761511983878298.Spec : Prop :=
  ∀ n, P17205761511983878298.a n = (A025711 n : ℚ)

end A025711

/-! ## A025711.P7026910914097367224

`∑[1-A034887(n)+n]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025711

/-- `∑[1-A034887(n)+n]+1` -/
def P7026910914097367224.Spec : Prop :=
  ∀ n, P7026910914097367224.a n = A025711 n

theorem P7026910914097367224.correct : P7026910914097367224.Spec := by
  intro n
  simp only [A025711]

end A025711

/-! ## A025711.P14020580567552532408

`A000124(n)-∑[floor(n/log2(10))]`
-/

namespace A025711.P14020580567552532408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (10 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025711.P14020580567552532408

namespace A025711

/-- `A000124(n)-∑[floor(n/log2(10))]` -/
def P14020580567552532408.Spec : Prop :=
  ∀ n, P14020580567552532408.a n = A025711 n

end A025711

/-! ## A025711.P6804335515985106405

`abs(∑[n+1-A192543(n+1)])`
-/

namespace A025711.P6804335515985106405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A192543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A025711.P6804335515985106405

namespace A025711

/-- `abs(∑[n+1-A192543(n+1)])` -/
def P6804335515985106405.Spec : Prop :=
  ∀ n, P6804335515985106405.a n = A025711 n

end A025711

/-! ## A025711.P14394263457008317070

`-∑[A001489(A210435(n))]`
-/

namespace A025711.P14394263457008317070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A210435 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025711.P14394263457008317070

namespace A025711

/-- `-∑[A001489(A210435(n))]` -/
def P14394263457008317070.Spec : Prop :=
  ∀ n, P14394263457008317070.a n = A025711 n

end A025711

/-! ## A025711.P15881660008530950684

`∑[A210435(n)]%A001539(n)`
-/

namespace A025711.P15881660008530950684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001539 n)

end

end A025711.P15881660008530950684

namespace A025711

/-- `∑[A210435(n)]%A001539(n)` -/
def P15881660008530950684.Spec : Prop :=
  ∀ n, P15881660008530950684.a n = A025711 n

end A025711

/-! ## A025711.P1751634561953098508

`gcd(∑[A210435(n)], A000038(n))`
-/

namespace A025711.P1751634561953098508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A025711.P1751634561953098508

namespace A025711

/-- `gcd(∑[A210435(n)], A000038(n))` -/
def P1751634561953098508.Spec : Prop :=
  ∀ n, (P1751634561953098508.a n : ℤ) = A025711 n

end A025711

/-! ## A025711.P1147758741550445208

`or(∑[A210435(n)], A000007(n))`
-/

namespace A025711.P1147758741550445208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A025711.P1147758741550445208

namespace A025711

/-- `or(∑[A210435(n)], A000007(n))` -/
def P1147758741550445208.Spec : Prop :=
  ∀ n, P1147758741550445208.a n = A025711 n

end A025711

/-! ## A025711.P15799720498275730887

`A000038(n+1)+∑[A210435(n)]`
-/

namespace A025711.P15799720498275730887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025711.P15799720498275730887

namespace A025711

/-- `A000038(n+1)+∑[A210435(n)]` -/
def P15799720498275730887.Spec : Prop :=
  ∀ n, P15799720498275730887.a n = A025711 n

end A025711

/-! ## A025711.P8195072174532937993

`A000217(n+1)-∑[A192543(n+1)]`
-/

namespace A025711.P8195072174532937993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025711.P8195072174532937993

namespace A025711

/-- `A000217(n+1)-∑[A192543(n+1)]` -/
def P8195072174532937993.Spec : Prop :=
  ∀ n, P8195072174532937993.a n = A025711 n

end A025711

/-! ## A025711.P6215992173309876683

`∑[n+1-(A055254(n)+A055253(n))]+1`
-/

namespace A025711.P6215992173309876683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A055254 n + A055253 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025711.P6215992173309876683

namespace A025711

/-- `∑[n+1-(A055254(n)+A055253(n))]+1` -/
def P6215992173309876683.Spec : Prop :=
  ∀ n, P6215992173309876683.a n = A025711 n

end A025711

/-! ## A025711.P13890298320488519295

`record[gcd(n+1, A025687(n+1))]`
-/

namespace A025711.P13890298320488519295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025687 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025711.P13890298320488519295

namespace A025711

/-- `record[gcd(n+1, A025687(n+1))]` -/
def P13890298320488519295.Spec : Prop :=
  ∀ n, (P13890298320488519295.a n : ℤ) = A025711 n

end A025711

/-! ## A025711.P14585114374235426486

`A028310(∑[A210435(n)])`
-/

namespace A025711.P14585114374235426486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025711.P14585114374235426486

namespace A025711

/-- `A028310(∑[A210435(n)])` -/
def P14585114374235426486.Spec : Prop :=
  ∀ n, P14585114374235426486.a n = A025711 n

end A025711

/-!
# A025712: Index of 6^n within the sequence of the numbers of the form 2^i*6^j.

The programs for A025712, the canonical program `A025712.P16211301659653551124` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025712 has offset 0).

The definition of A025712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025712.P11071514379299428925

`∑[floor(n*log2(6))+1]`
-/

namespace A025712.P11071514379299428925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (6 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025712.P11071514379299428925

namespace A025712

/-- `∑[floor(n*log2(6))+1]` -/
def P11071514379299428925.Spec : Prop :=
  ∀ n, P11071514379299428925.a n = A025712 n

end A025712

/-! ## A025712.P7766470554927257898

`a(n-1)+floor(n*log2(3)+n+1)` with `a(0)=1`
-/

namespace A025712.P7766470554927257898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(n : ℝ) * Real.logb 2 (3 : ℝ) + (n + 1 : ℝ)⌋

end

end A025712.P7766470554927257898

namespace A025712

/-- `a(n-1)+floor(n*log2(3)+n+1)` -/
def P7766470554927257898.Spec : Prop :=
  ∀ n, P7766470554927257898.a n = A025712 n

end A025712

/-! ## A025712.P13160298478866869193

`A022330(n)+∑[n]`
-/

namespace A025712.P13160298478866869193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022330 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025712.P13160298478866869193

namespace A025712

/-- `A022330(n)+∑[n]` -/
def P13160298478866869193.Spec : Prop :=
  ∀ n, P13160298478866869193.a n = A025712 n

end A025712

/-! ## A025712.P16211301659653551124

`∑[A020914(n)]+∑[n]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025712

/-- `∑[A020914(n)]+∑[n]` -/
def P16211301659653551124.Spec : Prop :=
  ∀ n, P16211301659653551124.a n = A025712 n

theorem P16211301659653551124.correct : P16211301659653551124.Spec := by
  intro n
  simp only [A025712]

end A025712

/-! ## A025712.P12097582903097031541

`∑[A204399(n)+n]+1`
-/

namespace A025712.P12097582903097031541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025712.P12097582903097031541

namespace A025712

/-- `∑[A204399(n)+n]+1` -/
def P12097582903097031541.Spec : Prop :=
  ∀ n, P12097582903097031541.a n = A025712 n

end A025712

/-! ## A025712.P2683210908516424399

`∑[n+1]+∑[A056576(n)]`
-/

namespace A025712.P2683210908516424399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A025712.P2683210908516424399

namespace A025712

/-- `∑[n+1]+∑[A056576(n)]` -/
def P2683210908516424399.Spec : Prop :=
  ∀ n, P2683210908516424399.a n = A025712 n

end A025712

/-! ## A025712.P9944734953252490395

`A122437(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A025712.P9944734953252490395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122437 (n + 1) + a (n - 1)

end

end A025712.P9944734953252490395

namespace A025712

/-- `A122437(n+1)+a(n-1)` -/
def P9944734953252490395.Spec : Prop :=
  ∀ n, P9944734953252490395.a n = A025712 n

end A025712

/-! ## A025712.P9727449772260983704

`A000096(n)+A022330(n)-n`
-/

namespace A025712.P9727449772260983704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (A022330 n - (n : ℤ))

end

end A025712.P9727449772260983704

namespace A025712

/-- `A000096(n)+A022330(n)-n` -/
def P9727449772260983704.Spec : Prop :=
  ∀ n, P9727449772260983704.a n = A025712 n

end A025712

/-! ## A025712.P15398797850535184696

`∑[1-(n-A322533(n+1))]-A322533(n+1)`
-/

namespace A025712.P15398797850535184696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - A322533 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A322533 (n + 1)

end

end A025712.P15398797850535184696

namespace A025712

/-- `∑[1-(n-A322533(n+1))]-A322533(n+1)` -/
def P15398797850535184696.Spec : Prop :=
  ∀ n, P15398797850535184696.a n = A025712 n

end A025712

/-! ## A025712.P7182463991542346553

`∑[A122437(n+1)]-A133100(3*n+2)`
-/

namespace A025712.P7182463991542346553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133100 (3 * n + 2)

end

end A025712.P7182463991542346553

namespace A025712

/-- `∑[A122437(n+1)]-A133100(3*n+2)` -/
def P7182463991542346553.Spec : Prop :=
  ∀ n, P7182463991542346553.a n = A025712 n

end A025712

/-! ## A025712.P12128119224578851251

`A247714(A000096(n))+A000217(n)`
-/

namespace A025712.P12128119224578851251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (A000096 n).toNat + A000217 n

end

end A025712.P12128119224578851251

namespace A025712

/-- `A247714(A000096(n))+A000217(n)` -/
def P12128119224578851251.Spec : Prop :=
  ∀ n, P12128119224578851251.a n = A025712 n

end A025712

/-! ## A025712.P5672945758973381665

`A247714(A000217(n)+n)+A000217(n)`
-/

namespace A025712.P5672945758973381665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (A000217 n + (n : ℤ)).toNat + A000217 n

end

end A025712.P5672945758973381665

namespace A025712

/-- `A247714(A000217(n)+n)+A000217(n)` -/
def P5672945758973381665.Spec : Prop :=
  ∀ n, P5672945758973381665.a n = A025712 n

end A025712

/-! ## A025712.P14398066439169236421

`∑[ceil(log2(A000400(n)))]+1`
-/

namespace A025712.P14398066439169236421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A000400 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025712.P14398066439169236421

namespace A025712

/-- `∑[ceil(log2(A000400(n)))]+1` -/
def P14398066439169236421.Spec : Prop :=
  ∀ n, P14398066439169236421.a n = A025712 n

end A025712

/-! ## A025712.P18019589029027705198

`∑[ceil(log2(A026549(2*n)))]+1`
-/

namespace A025712.P18019589029027705198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A026549 (2 * n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025712.P18019589029027705198

namespace A025712

/-- `∑[ceil(log2(A026549(2*n)))]+1` -/
def P18019589029027705198.Spec : Prop :=
  ∀ n, P18019589029027705198.a n = A025712 n

end A025712

/-!
# A025713: Index of 6^n within the sequence of the numbers of the form 3^i*6^j.

The programs for A025713, the canonical program `A025713.P720326762363745122` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025713 has offset 0).

The definition of A025713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025713.P11794424104651916877

`∑[comp[ceil(n*log2(6))]]`
-/

namespace A025713.P11794424104651916877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (6 : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025713.P11794424104651916877

namespace A025713

/-- `∑[comp[ceil(n*log2(6))]]` -/
def P11794424104651916877.Spec : Prop :=
  ∀ n, (P11794424104651916877.a n : ℤ) = A025713 n

end A025713

/-! ## A025713.P1817006225677106723

`∑[floor(n/log2(3))]+C(n+2, 2)`
-/

namespace A025713.P1817006225677106723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 2) 2 : ℤ)

end

end A025713.P1817006225677106723

namespace A025713

/-- `∑[floor(n/log2(3))]+C(n+2, 2)` -/
def P1817006225677106723.Spec : Prop :=
  ∀ n, P1817006225677106723.a n = A025713 n

end A025713

/-! ## A025713.P16331717522608816684

`comp[ceil(n*log2(6))]+a(n-1)` with `a(0)=1`
-/

namespace A025713.P16331717522608816684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (6 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + a (n - 1)

end

end A025713.P16331717522608816684

namespace A025713

/-- `comp[ceil(n*log2(6))]+a(n-1)` -/
def P16331717522608816684.Spec : Prop :=
  ∀ n, (P16331717522608816684.a n : ℤ) = A025713 n

end A025713

/-! ## A025713.P13982271668785102792

`A022331(n)+∑[n]`
-/

namespace A025713.P13982271668785102792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022331 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025713.P13982271668785102792

namespace A025713

/-- `A022331(n)+∑[n]` -/
def P13982271668785102792.Spec : Prop :=
  ∀ n, P13982271668785102792.a n = A025713 n

end A025713

/-! ## A025713.P15366495507557273595

`∑[A156301(n)+n]+1`
-/

namespace A025713.P15366495507557273595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025713.P15366495507557273595

namespace A025713

/-- `∑[A156301(n)+n]+1` -/
def P15366495507557273595.Spec : Prop :=
  ∀ n, P15366495507557273595.a n = A025713 n

end A025713

/-! ## A025713.P15857077525330894039

`A000124(n)+∑[ceil(n/log2(3))]`
-/

namespace A025713.P15857077525330894039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.logb 2 (3 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025713.P15857077525330894039

namespace A025713

/-- `A000124(n)+∑[ceil(n/log2(3))]` -/
def P15857077525330894039.Spec : Prop :=
  ∀ n, P15857077525330894039.a n = A025713 n

end A025713

/-! ## A025713.P720326762363745122

`a(n-1)+A020915(n)+n` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025713

/-- `a(n-1)+A020915(n)+n` -/
def P720326762363745122.Spec : Prop :=
  ∀ n, P720326762363745122.a n = A025713 n

theorem P720326762363745122.correct : P720326762363745122.Spec := by
  intro n
  simp only [A025713]

end A025713

/-! ## A025713.P7608757015115070350

`∑[comp[A056576(n)+1+n]]+1`
-/

namespace A025713.P7608757015115070350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025713.P7608757015115070350

namespace A025713

/-- `∑[comp[A056576(n)+1+n]]+1` -/
def P7608757015115070350.Spec : Prop :=
  ∀ n, (P7608757015115070350.a n : ℤ) = A025713 n

end A025713

/-! ## A025713.P8753142291411045895

`A000217(n+1)+∑[floor(n/log2(3))]`
-/

namespace A025713.P8753142291411045895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025713.P8753142291411045895

namespace A025713

/-- `A000217(n+1)+∑[floor(n/log2(3))]` -/
def P8753142291411045895.Spec : Prop :=
  ∀ n, P8753142291411045895.a n = A025713 n

end A025713

/-! ## A025713.P16246250828912041480

`A000096(n)-(n-∑[A020915(n)])`
-/

namespace A025713.P16246250828912041480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025713.P16246250828912041480

namespace A025713

/-- `A000096(n)-(n-∑[A020915(n)])` -/
def P16246250828912041480.Spec : Prop :=
  ∀ n, P16246250828912041480.a n = A025713 n

end A025713

/-! ## A025713.P15376008508215013399

`a(n-1)+A206805(n)+1` with `a(0)=1`
-/

namespace A025713.P15376008508215013399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A206805 n + 1)

end

end A025713.P15376008508215013399

namespace A025713

/-- `a(n-1)+A206805(n)+1` -/
def P15376008508215013399.Spec : Prop :=
  ∀ n, P15376008508215013399.a n = A025713 n

end A025713

/-! ## A025713.P11883652243660915237

`∑[A206805(n+1)+1]-A206805(n+1)`
-/

namespace A025713.P11883652243660915237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206805 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A206805 (n + 1)

end

end A025713.P11883652243660915237

namespace A025713

/-- `∑[A206805(n+1)+1]-A206805(n+1)` -/
def P11883652243660915237.Spec : Prop :=
  ∀ n, P11883652243660915237.a n = A025713 n

end A025713

/-! ## A025713.P10822333638256571011

`A247714(∑[n])+∑[n]`
-/

namespace A025713.P10822333638256571011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A025713.P10822333638256571011

namespace A025713

/-- `A247714(∑[n])+∑[n]` -/
def P10822333638256571011.Spec : Prop :=
  ∀ n, P10822333638256571011.a n = A025713 n

end A025713

/-! ## A025713.P11932030898114334239

`record[gcd(A002262(n), A247714(n))+n]`
-/

namespace A025713.P11932030898114334239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A247714 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025713.P11932030898114334239

namespace A025713

/-- `record[gcd(A002262(n), A247714(n))+n]` -/
def P11932030898114334239.Spec : Prop :=
  ∀ n, (P11932030898114334239.a n : ℤ) = A025713 n

end A025713

/-! ## A025713.P18095317206801332600

`A000096(n)-(n-A247714(A000217(n)))`
-/

namespace A025713.P18095317206801332600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - ((n : ℤ) - A247714 (A000217 n).toNat)

end

end A025713.P18095317206801332600

namespace A025713

/-- `A000096(n)-(n-A247714(A000217(n)))` -/
def P18095317206801332600.Spec : Prop :=
  ∀ n, P18095317206801332600.a n = A025713 n

end A025713

/-! ## A025713.P10543430504717407894

`eq[1, A025641(n+1)]-n`
-/

namespace A025713.P10543430504717407894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025713.P10543430504717407894

namespace A025713

/-- `eq[1, A025641(n+1)]-n` -/
def P10543430504717407894.Spec : Prop :=
  ∀ n, P10543430504717407894.a n = A025713 n

end A025713

/-!
# A025714: Index of 6^n within the sequence of the numbers of the form 4^i*6^j.

The programs for A025714, the canonical program `A025714.P4233854037151897518` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025714 has offset 0).

The definition of A025714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025714.P4233854037151897518

`∑[ceil(A122437(n+1)/2)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025714

/-- `∑[ceil(A122437(n+1)/2)]` -/
def P4233854037151897518.Spec : Prop :=
  ∀ n, P4233854037151897518.a n = A025714 n

theorem P4233854037151897518.correct : P4233854037151897518.Spec := by
  intro n
  simp only [A025714]

end A025714

/-! ## A025714.P11984636014327612475

`∑[A065033(ceil(n*log2(6)))]`
-/

namespace A025714.P11984636014327612475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌈(n : ℝ) * Real.logb 2 (6 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025714.P11984636014327612475

namespace A025714

/-- `∑[A065033(ceil(n*log2(6)))]` -/
def P11984636014327612475.Spec : Prop :=
  ∀ n, P11984636014327612475.a n = A025714 n

end A025714

/-! ## A025714.P17621311807602016041

`∑[A110654(A122437(n+1))]`
-/

namespace A025714.P17621311807602016041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A122437 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025714.P17621311807602016041

namespace A025714

/-- `∑[A110654(A122437(n+1))]` -/
def P17621311807602016041.Spec : Prop :=
  ∀ n, P17621311807602016041.a n = A025714 n

end A025714

/-! ## A025714.P15793180561559701660

`∑[A110654(A020914(n)+n)]`
-/

namespace A025714.P15793180561559701660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A020914 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025714.P15793180561559701660

namespace A025714

/-- `∑[A110654(A020914(n)+n)]` -/
def P15793180561559701660.Spec : Prop :=
  ∀ n, P15793180561559701660.a n = A025714 n

end A025714

/-! ## A025714.P3988035663932213872

`∑[A004526(A020914(n)+1+n)]`
-/

namespace A025714.P3988035663932213872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A020914 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025714.P3988035663932213872

namespace A025714

/-- `∑[A004526(A020914(n)+1+n)]` -/
def P3988035663932213872.Spec : Prop :=
  ∀ n, P3988035663932213872.a n = A025714 n

end A025714

/-! ## A025714.P7682007066738858195

`∑[ceil((log2(A062547(2*n))+n-1)/2)]+1`
-/

namespace A025714.P7682007066738858195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.logb 2 (A062547 (2 * n) : ℝ) + ((n : ℤ) - 1 : ℝ)) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025714.P7682007066738858195

namespace A025714

/-- `∑[ceil((log2(A062547(2*n))+n-1)/2)]+1` -/
def P7682007066738858195.Spec : Prop :=
  ∀ n, P7682007066738858195.a n = A025714 n

end A025714

/-! ## A025714.P17960979946475311620

`∑[floor((ceil(log2(2*6^n+1))-2)/2)+1]`
-/

namespace A025714.P17960979946475311620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈Real.logb 2 (2 * 6 ^ n + 1 : ℝ)⌉ - 2 : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025714.P17960979946475311620

namespace A025714

/-- `∑[floor((ceil(log2(2*6^n+1))-2)/2)+1]` -/
def P17960979946475311620.Spec : Prop :=
  ∀ n, P17960979946475311620.a n = A025714 n

end A025714

/-! ## A025714.P7305627178142953186

`eq[1, A025647(n+1)]-n`
-/

namespace A025714.P7305627178142953186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025714.P7305627178142953186

namespace A025714

/-- `eq[1, A025647(n+1)]-n` -/
def P7305627178142953186.Spec : Prop :=
  ∀ n, P7305627178142953186.a n = A025714 n

end A025714

/-!
# A025715: Index of 6^n within the sequence of the numbers of the form 5^i*6^j (A025622).

The programs for A025715, the canonical program `A025715.P12380202038219117915` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025715 has offset 0).

The definition of A025715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1578 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025715.P12380202038219117915

`∑[A008620(A056576(4*n))-n]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025715

/-- `∑[A008620(A056576(4*n))-n]` -/
def P12380202038219117915.Spec : Prop :=
  ∀ n, P12380202038219117915.a n = A025715 n

theorem P12380202038219117915.correct : P12380202038219117915.Spec := by
  intro n
  simp only [A025715]

end A025715

/-! ## A025715.P2051759408908794192

`eq[1, A025651(n+1)]-n`
-/

namespace A025715.P2051759408908794192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025715.P2051759408908794192

namespace A025715

/-- `eq[1, A025651(n+1)]-n` -/
def P2051759408908794192.Spec : Prop :=
  ∀ n, P2051759408908794192.a n = A025715 n

end A025715

/-! ## A025715.P3198559268515888877

`∑[A185284(A062830(n+1))+A052382(n+1)]`
-/

namespace A025715.P3198559268515888877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A062830 (n + 1)).toNat + A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025715.P3198559268515888877

namespace A025715

/-- `∑[A185284(A062830(n+1))+A052382(n+1)]` -/
def P3198559268515888877.Spec : Prop :=
  ∀ n, P3198559268515888877.a n = A025715 n

end A025715

/-! ## A025715.P5244421888930026667

`∑[comp[10*n]%A117149(n)]`
-/

namespace A025715.P5244421888930026667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) (A117149 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025715.P5244421888930026667

namespace A025715

/-- `∑[comp[10*n]%A117149(n)]` -/
def P5244421888930026667.Spec : Prop :=
  ∀ n, P5244421888930026667.a n = A025715 n

end A025715

/-! ## A025715.P9980122287153963829

`∑[comp[10*n]]%A051728(n+3)`
-/

namespace A025715.P9980122287153963829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A051728 (n + 3))

end

end A025715.P9980122287153963829

namespace A025715

/-- `∑[comp[10*n]]%A051728(n+3)` -/
def P9980122287153963829.Spec : Prop :=
  ∀ n, P9980122287153963829.a n = A025715 n

end A025715

/-! ## A025715.P7726984348164995556

`∑[lt[A113010(n), A069877(n)]]`
-/

namespace A025715.P7726984348164995556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113010 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025715.P7726984348164995556

namespace A025715

/-- `∑[lt[A113010(n), A069877(n)]]` -/
def P7726984348164995556.Spec : Prop :=
  ∀ n, (P7726984348164995556.a n : ℤ) = A025715 n

end A025715

/-! ## A025715.P2692555231664498446

`∑[record[A004151(A003003(n+1))]]`
-/

namespace A025715.P2692555231664498446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A003003 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025715.P2692555231664498446

namespace A025715

/-- `∑[record[A004151(A003003(n+1))]]` -/
def P2692555231664498446.Spec : Prop :=
  ∀ n, P2692555231664498446.a n = A025715 n

end A025715

/-!
# A025716: Index of 6^n within the sequence of the numbers of the form 6^i*7^j.

The programs for A025716, there is no canonical definition to state claims against.
-/

/-! ## A025716.P8884333526002787579

`lt[A025668(n+1), 1]+1`
-/

namespace A025716.P8884333526002787579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025716.P8884333526002787579

/-! ## A025716.P15939272247208138379

`record[(n+1)/A015768(A025668(n+1)+1)]`
-/

namespace A025716.P15939272247208138379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A015768 (A025668 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025716.P15939272247208138379

/-! ## A025716.P9532231786522413042

`record[(n+1)/A034738(A025668(n+1)+1)]`
-/

namespace A025716.P9532231786522413042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A034738 (A025668 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025716.P9532231786522413042

/-! ## A025716.P7249777641147425061

`record[2*(n+1)/A000040(A025668(n+1)+1)]`
-/

namespace A025716.P7249777641147425061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A000040 (A025668 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025716.P7249777641147425061

/-! ## A025716.P15056576640253178885

`eq[A000007(n), A025668(A028310(n))]`
-/

namespace A025716.P15056576640253178885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025716.P15056576640253178885

/-! ## A025716.P5021402597616145510

`eq[A000007(n), A025668(A000007(n)+n)]`
-/

namespace A025716.P5021402597616145510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025716.P5021402597616145510

/-! ## A025716.P12058420934063182239

`eq[1, A025668(n+2)]-n`
-/

namespace A025716.P12058420934063182239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025716.P12058420934063182239

/-! ## A025716.P4464651873894420670

`record[A008611(3*n)/(A025668(n+1)+1)]`
-/

namespace A025716.P4464651873894420670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) : ℚ) / (A025668 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025716.P4464651873894420670

/-!
# A025717: Index of 6^n within the sequence of the numbers of the form 6^i*8^j.

The programs for A025717, the canonical program `A025717.P3561920199479937855` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025717 has offset 0).

The definition of A025717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025717.P18378197808007078114

`∑[ceil(n*log2(6)/3)]+1`
-/

namespace A025717.P18378197808007078114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (6 : ℝ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025717.P18378197808007078114

namespace A025717

/-- `∑[ceil(n*log2(6)/3)]+1` -/
def P18378197808007078114.Spec : Prop :=
  ∀ n, P18378197808007078114.a n = A025717 n

end A025717

/-! ## A025717.P3561920199479937855

`∑[ceil(A122437(n+1)/3)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025717

/-- `∑[ceil(A122437(n+1)/3)]` -/
def P3561920199479937855.Spec : Prop :=
  ∀ n, P3561920199479937855.a n = A025717 n

theorem P3561920199479937855.correct : P3561920199479937855.Spec := by
  intro n
  simp only [A025717]

end A025717

/-! ## A025717.P10457242061311095290

`∑[A008620(A056576(n)+n)]`
-/

namespace A025717.P10457242061311095290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A056576 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025717.P10457242061311095290

namespace A025717

/-- `∑[A008620(A056576(n)+n)]` -/
def P10457242061311095290.Spec : Prop :=
  ∀ n, P10457242061311095290.a n = A025717 n

end A025717

/-! ## A025717.P15624473052933240246

`∑[A008620(A122437(n+1)-1)]`
-/

namespace A025717.P15624473052933240246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A122437 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025717.P15624473052933240246

namespace A025717

/-- `∑[A008620(A122437(n+1)-1)]` -/
def P15624473052933240246.Spec : Prop :=
  ∀ n, P15624473052933240246.a n = A025717 n

end A025717

/-! ## A025717.P10650777084655897345

`∑[A002264(A020914(n)-1+n)+1]`
-/

namespace A025717.P10650777084655897345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A020914 n - 1 + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025717.P10650777084655897345

namespace A025717

/-- `∑[A002264(A020914(n)-1+n)+1]` -/
def P10650777084655897345.Spec : Prop :=
  ∀ n, P10650777084655897345.a n = A025717 n

end A025717

/-!
# A025718: Index of 6^n within the sequence of the numbers of the form 6^i*9^j.

The programs for A025718, the canonical program `A025718.P898795046028977700` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025718 has offset 0).

The definition of A025718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025718.P4117768835003362479

`∑[A008619(A136409(n)+n)]`
-/

namespace A025718.P4117768835003362479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A136409 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025718.P4117768835003362479

namespace A025718

/-- `∑[A008619(A136409(n)+n)]` -/
def P4117768835003362479.Spec : Prop :=
  ∀ n, P4117768835003362479.a n = A025718 n

end A025718

/-! ## A025718.P898795046028977700

`∑[A008619(A020915(n)-1+n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025718

/-- `∑[A008619(A020915(n)-1+n)]` -/
def P898795046028977700.Spec : Prop :=
  ∀ n, P898795046028977700.a n = A025718 n

theorem P898795046028977700.correct : P898795046028977700.Spec := by
  intro n
  simp only [A025718]

end A025718

/-! ## A025718.P18087101143455660526

`∑[A008619(A020915(n)-(1-n))]`
-/

namespace A025718.P18087101143455660526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A020915 n - (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025718.P18087101143455660526

namespace A025718

/-- `∑[A008619(A020915(n)-(1-n))]` -/
def P18087101143455660526.Spec : Prop :=
  ∀ n, P18087101143455660526.a n = A025718 n

theorem P18087101143455660526.correct : P18087101143455660526.Spec := by
  intro n
  simp only [A025718, Nat.add_sub_cancel, A025718.P18087101143455660526.f1, A025718.P18087101143455660526.a, A025718.P898795046028977700.f1, A025718.P898795046028977700.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A025718

/-! ## A025718.P1401454783471276328

`∑[A110654(A020915(n)+n)]`
-/

namespace A025718.P1401454783471276328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A020915 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025718.P1401454783471276328

namespace A025718

/-- `∑[A110654(A020915(n)+n)]` -/
def P1401454783471276328.Spec : Prop :=
  ∀ n, P1401454783471276328.a n = A025718 n

end A025718

/-! ## A025718.P8427622026371161405

`∑[A065033(A020915(n)+n)]`
-/

namespace A025718.P8427622026371161405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A020915 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025718.P8427622026371161405

namespace A025718

/-- `∑[A065033(A020915(n)+n)]` -/
def P8427622026371161405.Spec : Prop :=
  ∀ n, P8427622026371161405.a n = A025718 n

end A025718

/-! ## A025718.P10216855582085743655

`∑[A123108(A020915(n)+1+n)]`
-/

namespace A025718.P10216855582085743655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A020915 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025718.P10216855582085743655

namespace A025718

/-- `∑[A123108(A020915(n)+1+n)]` -/
def P10216855582085743655.Spec : Prop :=
  ∀ n, P10216855582085743655.a n = A025718 n

end A025718

/-! ## A025718.P18329668021053083810

`∑[A008621(A206805(A004277(n)))]`
-/

namespace A025718.P18329668021053083810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A206805 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025718.P18329668021053083810

namespace A025718

/-- `∑[A008621(A206805(A004277(n)))]` -/
def P18329668021053083810.Spec : Prop :=
  ∀ n, P18329668021053083810.a n = A025718 n

end A025718

/-! ## A025718.P6352334705156313167

`lt[A025680(n+1), 1]+1`
-/

namespace A025718.P6352334705156313167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025680 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025718.P6352334705156313167

namespace A025718

/-- `lt[A025680(n+1), 1]+1` -/
def P6352334705156313167.Spec : Prop :=
  ∀ n, (P6352334705156313167.a n : ℤ) = A025718 n

end A025718

/-! ## A025718.P17968284597068687705

`∑[A008620(A003056(A049451(n)))]`
-/

namespace A025718.P17968284597068687705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A003056 (A049451 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025718.P17968284597068687705

namespace A025718

/-- `∑[A008620(A003056(A049451(n)))]` -/
def P17968284597068687705.Spec : Prop :=
  ∀ n, P17968284597068687705.a n = A025718 n

end A025718

/-!
# A025719: Index of 6^n within the sequence of the numbers of the form 6^i*10^j.

The programs for A025719, the canonical program `A025719.P9903689236373906164` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025719 has offset 0).

The definition of A025719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025719.P9903689236373906164

`∑[A210436(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025719

/-- `∑[A210436(n)]` -/
def P9903689236373906164.Spec : Prop :=
  ∀ n, P9903689236373906164.a n = A025719 n

theorem P9903689236373906164.correct : P9903689236373906164.Spec := by
  intro n
  simp only [A025719]

end A025719

/-! ## A025719.P12856227010046827186

`a(n-1)+A210436(n)%A158740(n)` with `a(0)=1`
-/

namespace A025719.P12856227010046827186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A210436 n) (A158740 n)

end

end A025719.P12856227010046827186

namespace A025719

/-- `a(n-1)+A210436(n)%A158740(n)` -/
def P12856227010046827186.Spec : Prop :=
  ∀ n, P12856227010046827186.a n = A025719 n

end A025719

/-! ## A025719.P14286397710445350601

`a(n-1)+A210436(n)+A000038(n+1)` with `a(0)=1`
-/

namespace A025719.P14286397710445350601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A210436 n + A000038 (n + 1))

end

end A025719.P14286397710445350601

namespace A025719

/-- `a(n-1)+A210436(n)+A000038(n+1)` -/
def P14286397710445350601.Spec : Prop :=
  ∀ n, P14286397710445350601.a n = A025719 n

end A025719

/-! ## A025719.P10009341677265167142

`∑[∑[A049347(A006446(n+1))²]]`
-/

namespace A025719.P10009341677265167142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A006446 (n + 1)).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025719.P10009341677265167142

namespace A025719

/-- `∑[∑[A049347(A006446(n+1))²]]` -/
def P10009341677265167142.Spec : Prop :=
  ∀ n, P10009341677265167142.a n = A025719 n

end A025719

/-! ## A025719.P2257469522925352219

`∑[∑[A011655(A274583(n+1))]]`
-/

namespace A025719.P2257469522925352219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A274583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025719.P2257469522925352219

namespace A025719

/-- `∑[∑[A011655(A274583(n+1))]]` -/
def P2257469522925352219.Spec : Prop :=
  ∀ n, P2257469522925352219.a n = A025719 n

end A025719

/-! ## A025719.P4370279386036256972

`∑[∑[A204418(A001840(n))]]`
-/

namespace A025719.P4370279386036256972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (A001840 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025719.P4370279386036256972

namespace A025719

/-- `∑[∑[A204418(A001840(n))]]` -/
def P4370279386036256972.Spec : Prop :=
  ∀ n, P4370279386036256972.a n = A025719 n

end A025719

/-! ## A025719.P6690465688006574562

`∑[∑[A011655(A096777(n+2))]]`
-/

namespace A025719.P6690465688006574562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A096777 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025719.P6690465688006574562

namespace A025719

/-- `∑[∑[A011655(A096777(n+2))]]` -/
def P6690465688006574562.Spec : Prop :=
  ∀ n, P6690465688006574562.a n = A025719 n

end A025719

/-! ## A025719.P15261948176408244551

`∑[∑[A010892(A001399(2*n))²]]`
-/

namespace A025719.P15261948176408244551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A001399 (2 * n)).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025719.P15261948176408244551

namespace A025719

/-- `∑[∑[A010892(A001399(2*n))²]]` -/
def P15261948176408244551.Spec : Prop :=
  ∀ n, P15261948176408244551.a n = A025719 n

end A025719

/-! ## A025719.P13252758656079908382

`A008615(A007980(n+1))+A000212(n+1)`
-/

namespace A025719.P13252758656079908382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A007980 (n + 1)).toNat + A000212 (n + 1)

end

end A025719.P13252758656079908382

namespace A025719

/-- `A008615(A007980(n+1))+A000212(n+1)` -/
def P13252758656079908382.Spec : Prop :=
  ∀ n, P13252758656079908382.a n = A025719 n

end A025719

/-! ## A025719.P11536269398559909866

`A000217(n+1)-A002264(A007980(n+1))`
-/

namespace A025719.P11536269398559909866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A002264 (A007980 (n + 1)).toNat

end

end A025719.P11536269398559909866

namespace A025719

/-- `A000217(n+1)-A002264(A007980(n+1))` -/
def P11536269398559909866.Spec : Prop :=
  ∀ n, P11536269398559909866.a n = A025719 n

end A025719

/-! ## A025719.P3578617637899410882

`A260220(2*n)-A002264(A007980(n+1))`
-/

namespace A025719.P3578617637899410882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260220 (2 * n) - A002264 (A007980 (n + 1)).toNat

end

end A025719.P3578617637899410882

namespace A025719

/-- `A260220(2*n)-A002264(A007980(n+1))` -/
def P3578617637899410882.Spec : Prop :=
  ∀ n, P3578617637899410882.a n = A025719 n

end A025719

/-! ## A025719.P12155593070895961416

`record[gcd(n+1, A025688(n+1))]`
-/

namespace A025719.P12155593070895961416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025688 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025719.P12155593070895961416

namespace A025719

/-- `record[gcd(n+1, A025688(n+1))]` -/
def P12155593070895961416.Spec : Prop :=
  ∀ n, (P12155593070895961416.a n : ℤ) = A025719 n

end A025719

/-! ## A025719.P8366151565205533287

`∑[A033183(A174312(2*n))-n]`
-/

namespace A025719.P8366151565205533287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A174312 (2 * n)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025719.P8366151565205533287

namespace A025719

/-- `∑[A033183(A174312(2*n))-n]` -/
def P8366151565205533287.Spec : Prop :=
  ∀ n, P8366151565205533287.a n = A025719 n

end A025719

/-! ## A025719.P9803524278480480218

`∑[∑{digits}[A248216(n), A055642(#)]]`
-/

namespace A025719.P9803524278480480218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A055642 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025719.P9803524278480480218

namespace A025719

/-- `∑[∑{digits}[A248216(n), A055642(#)]]` -/
def P9803524278480480218.Spec : Prop :=
  ∀ n, P9803524278480480218.a n = A025719 n

end A025719

/-! ## A025719.P15321460096369274711

`∑[∑[A049347(A194275(n+1))²]]`
-/

namespace A025719.P15321460096369274711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A194275 (n + 1)).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025719.P15321460096369274711

namespace A025719

/-- `∑[∑[A049347(A194275(n+1))²]]` -/
def P15321460096369274711.Spec : Prop :=
  ∀ n, P15321460096369274711.a n = A025719 n

end A025719

/-!
# A025720: Index of 7^n within the sequence of the numbers of the form 2^i*7^j.

The programs for A025720, the canonical program `A025720.P5061171883572474865` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025720 has offset 0).

The definition of A025720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025720.P5061171883572474865

`∑[floor(n*log2(7))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025720

/-- `∑[floor(n*log2(7))+1]` -/
def P5061171883572474865.Spec : Prop :=
  ∀ n, P5061171883572474865.a n = A025720 n

theorem P5061171883572474865.correct : P5061171883572474865.Spec := by
  intro n
  simp only [A025720]

end A025720

/-! ## A025720.P681063242208363783

`ceil(a(n-1)+n*log2(7))` with `a(0)=1`
-/

namespace A025720.P681063242208363783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.logb 2 (7 : ℝ)⌉

end

end A025720.P681063242208363783

namespace A025720

/-- `ceil(a(n-1)+n*log2(7))` -/
def P681063242208363783.Spec : Prop :=
  ∀ n, P681063242208363783.a n = A025720 n

end A025720

/-! ## A025720.P1489468137658238388

`∑[floor(n*log2(7))]-xor(n, -1)`
-/

namespace A025720.P1489468137658238388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (7 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A025720.P1489468137658238388

namespace A025720

/-- `∑[floor(n*log2(7))]-xor(n, -1)` -/
def P1489468137658238388.Spec : Prop :=
  ∀ n, P1489468137658238388.a n = A025720 n

end A025720

/-! ## A025720.P8663480987825237327

`∑[ceil(n*log2(7))]+gcd(n, n+1)`
-/

namespace A025720.P8663480987825237327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd n (n + 1) : ℤ)

end

end A025720.P8663480987825237327

namespace A025720

/-- `∑[ceil(n*log2(7))]+gcd(n, n+1)` -/
def P8663480987825237327.Spec : Prop :=
  ∀ n, P8663480987825237327.a n = A025720 n

end A025720

/-! ## A025720.P12888867045854695306

`a(n-1)+floor(n*log2(7))+1` with `a(0)=1`
-/

namespace A025720.P12888867045854695306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) * Real.logb 2 (7 : ℝ)⌋ + 1)

end

end A025720.P12888867045854695306

namespace A025720

/-- `a(n-1)+floor(n*log2(7))+1` -/
def P12888867045854695306.Spec : Prop :=
  ∀ n, P12888867045854695306.a n = A025720 n

end A025720

/-! ## A025720.P3345702218073894958

`∑[ceil(n*log2(7))]+(1-and(2, n))²`
-/

namespace A025720.P3345702218073894958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (Nat.land 2 n : ℤ)) ^ 2

end

end A025720.P3345702218073894958

namespace A025720

/-- `∑[ceil(n*log2(7))]+(1-and(2, n))²` -/
def P3345702218073894958.Spec : Prop :=
  ∀ n, P3345702218073894958.a n = A025720 n

end A025720

/-! ## A025720.P13174698555786052730

`∑[ceil(n*log2(7))]+A033999(n)²`
-/

namespace A025720.P13174698555786052730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A033999 n ^ 2

end

end A025720.P13174698555786052730

namespace A025720

/-- `∑[ceil(n*log2(7))]+A033999(n)²` -/
def P13174698555786052730.Spec : Prop :=
  ∀ n, P13174698555786052730.a n = A025720 n

end A025720

/-! ## A025720.P5077713548570466434

`A237271(A165827(2*n+1))+∑[ceil(n*log2(7))]`
-/

namespace A025720.P5077713548570466434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (7 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A165827 (2 * n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025720.P5077713548570466434

namespace A025720

/-- `A237271(A165827(2*n+1))+∑[ceil(n*log2(7))]` -/
def P5077713548570466434.Spec : Prop :=
  ∀ n, P5077713548570466434.a n = A025720 n

end A025720

/-! ## A025720.P4859367397629898289

`∑[ceil(log2(A155598(n)))+1]-n`
-/

namespace A025720.P4859367397629898289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A155598 n : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A025720.P4859367397629898289

namespace A025720

/-- `∑[ceil(log2(A155598(n)))+1]-n` -/
def P4859367397629898289.Spec : Prop :=
  ∀ n, P4859367397629898289.a n = A025720 n

end A025720

/-! ## A025720.P17799831191116742981

`eq[1, A025637(n+1)]-n`
-/

namespace A025720.P17799831191116742981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025720.P17799831191116742981

namespace A025720

/-- `eq[1, A025637(n+1)]-n` -/
def P17799831191116742981.Spec : Prop :=
  ∀ n, P17799831191116742981.a n = A025720 n

end A025720

/-!
# A025721: Index of 7^n within the sequence of the numbers of the form 3^i*7^j.

The programs for A025721, there is no canonical definition to state claims against.
-/

/-! ## A025721.P12757622436520458000

`record[gcd(n+1, A025642(n+1))]`
-/

namespace A025721.P12757622436520458000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025642 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025721.P12757622436520458000

/-! ## A025721.P12632665324384523104

`record[(n+1)/val(A033850(n+1), 3)]`
-/

namespace A025721.P12632665324384523104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.valuation (A033850 (n + 1)).toNat 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025721.P12632665324384523104

/-!
# A025722: Index of 7^n within the sequence of the numbers of the form 4^i*7^j.

The programs for A025722, the canonical program `A025722.P1497867512381759668` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025722 has offset 0).

The definition of A025722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025722.P1497867512381759668

`∑[floor(n*log2(7)/2)+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025722

/-- `∑[floor(n*log2(7)/2)+1]` -/
def P1497867512381759668.Spec : Prop :=
  ∀ n, P1497867512381759668.a n = A025722 n

theorem P1497867512381759668.correct : P1497867512381759668.Spec := by
  intro n
  simp only [A025722]

end A025722

/-! ## A025722.P552182196894185492

`∑[A004526(floor(n*log2(7)))]+n+1`
-/

namespace A025722.P552182196894185492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌊(n : ℝ) * Real.logb 2 (7 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A025722.P552182196894185492

namespace A025722

/-- `∑[A004526(floor(n*log2(7)))]+n+1` -/
def P552182196894185492.Spec : Prop :=
  ∀ n, P552182196894185492.a n = A025722 n

end A025722

/-! ## A025722.P17274795870974905865

`lt[A025648(n+1), 1]+1`
-/

namespace A025722.P17274795870974905865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025648 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025722.P17274795870974905865

namespace A025722

/-- `lt[A025648(n+1), 1]+1` -/
def P17274795870974905865.Spec : Prop :=
  ∀ n, (P17274795870974905865.a n : ℤ) = A025722 n

end A025722

/-! ## A025722.P17357001489734655068

`record[(1-A025648(n+1))*A000027(n+1)]`
-/

namespace A025722.P17357001489734655068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025648 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025722.P17357001489734655068

namespace A025722

/-- `record[(1-A025648(n+1))*A000027(n+1)]` -/
def P17357001489734655068.Spec : Prop :=
  ∀ n, P17357001489734655068.a n = A025722 n

end A025722

/-! ## A025722.P7975373713366282848

`eq[A000038(n), A025648(A000038(n)+n)]`
-/

namespace A025722.P7975373713366282848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025648 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025722.P7975373713366282848

namespace A025722

/-- `eq[A000038(n), A025648(A000038(n)+n)]` -/
def P7975373713366282848.Spec : Prop :=
  ∀ n, (P7975373713366282848.a n : ℤ) = A025722 n

end A025722

/-! ## A025722.P12707268672202238212

`eq[n, A028310(n)+A025648(A028310(n))]`
-/

namespace A025722.P12707268672202238212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A025648 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025722.P12707268672202238212

namespace A025722

/-- `eq[n, A028310(n)+A025648(A028310(n))]` -/
def P12707268672202238212.Spec : Prop :=
  ∀ n, (P12707268672202238212.a n : ℤ) = A025722 n

end A025722

/-! ## A025722.P16344127472467769069

`∑[floor(7*n/5)+1]%A338607(n+1)`
-/

namespace A025722.P16344127472467769069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 5)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A338607 (n + 1))

end

end A025722.P16344127472467769069

namespace A025722

/-- `∑[floor(7*n/5)+1]%A338607(n+1)` -/
def P16344127472467769069.Spec : Prop :=
  ∀ n, P16344127472467769069.a n = A025722 n

end A025722

/-! ## A025722.P97691409652150613

`A002266(∑[7*n+2]+n)+1`
-/

namespace A025722.P97691409652150613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1

end

end A025722.P97691409652150613

namespace A025722

/-- `A002266(∑[7*n+2]+n)+1` -/
def P97691409652150613.Spec : Prop :=
  ∀ n, P97691409652150613.a n = A025722 n

end A025722

/-! ## A025722.P6716749481268342546

`A134119(A140063(n+1))`
-/

namespace A025722.P6716749481268342546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A140063 (n + 1)).toNat

end

end A025722.P6716749481268342546

namespace A025722

/-- `A134119(A140063(n+1))` -/
def P6716749481268342546.Spec : Prop :=
  ∀ n, P6716749481268342546.a n = A025722 n

end A025722

/-! ## A025722.P8708715972079518185

`round(A028310(A022264(n+1))/5)`
-/

namespace A025722.P8708715972079518185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A028310 (A022264 (n + 1)).toNat : ℚ) / 5)

end

end A025722.P8708715972079518185

namespace A025722

/-- `round(A028310(A022264(n+1))/5)` -/
def P8708715972079518185.Spec : Prop :=
  ∀ n, P8708715972079518185.a n = A025722 n

end A025722

/-!
# A025723: Index of 7^n within the sequence of the numbers of the form 5^i*7^j.

The programs for A025723, there is no canonical definition to state claims against.
-/

/-! ## A025723.P18312795889691754817

`record[gcd(n+1, A025652(n+1))]`
-/

namespace A025723.P18312795889691754817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025652 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025723.P18312795889691754817

/-! ## A025723.P11613699773576310987

`eq[1, A025652(n+1)]-n`
-/

namespace A025723.P11613699773576310987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025723.P11613699773576310987

/-! ## A025723.P3056280900243170573

`record[(n+1)/val(A033851(n+1), 5)]`
-/

namespace A025723.P3056280900243170573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.valuation (A033851 (n + 1)).toNat 5 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025723.P3056280900243170573

/-! ## A025723.P11510494656690105441

`∑[A280814(2*n+1)]`
-/

namespace A025723.P11510494656690105441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025723.P11510494656690105441

/-! ## A025723.P17139960749088616053

`∑[record[A191610(A379630(n+1))]+1]`
-/

namespace A025723.P17139960749088616053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (A379630 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025723.P17139960749088616053

/-!
# A025724: Index of 7^n within the sequence of the numbers of the form 6^i*7^j.

The programs for A025724, there is no canonical definition to state claims against.
-/

/-! ## A025724.P4909594292915107837

`record[gcd(n+1, A025660(n+1))]`
-/

namespace A025724.P4909594292915107837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025660 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025724.P4909594292915107837

/-! ## A025724.P10489932786393155355

`eq[A000007(n), A025660(A028310(n))]`
-/

namespace A025724.P10489932786393155355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025724.P10489932786393155355

/-! ## A025724.P4631405559910701671

`eq[A000038(n), A025660(A028310(n))]`
-/

namespace A025724.P4631405559910701671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025724.P4631405559910701671

/-! ## A025724.P3436652523728891623

`eq[A000007(n), A025660(A000007(n)+n)]`
-/

namespace A025724.P3436652523728891623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025724.P3436652523728891623

/-! ## A025724.P6352244788315564107

`eq[A000038(n), A025660(A000038(n)+n)]`
-/

namespace A025724.P6352244788315564107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025724.P6352244788315564107

/-! ## A025724.P2356379709004183488

`eq[1, A025660(n+1)]-n`
-/

namespace A025724.P2356379709004183488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025724.P2356379709004183488

/-!
# A025725: Index of 7^n within the sequence of the numbers of the form 7^i*8^j.

The programs for A025725, the canonical program `A025725.P5798204122826050427` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025725 has offset 0).

The definition of A025725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025725.P5798204122826050427

`∑[floor(n/3*log2(7))]+n+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025725

/-- `∑[floor(n/3*log2(7))]+n+1` -/
def P5798204122826050427.Spec : Prop :=
  ∀ n, P5798204122826050427.a n = A025725 n

theorem P5798204122826050427.correct : P5798204122826050427.Spec := by
  intro n
  simp only [A025725]

end A025725

/-! ## A025725.P14773339213109500228

`∑[A008620(floor(n*log2(7)))]`
-/

namespace A025725.P14773339213109500228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ⌊(n : ℝ) * Real.logb 2 (7 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025725.P14773339213109500228

namespace A025725

/-- `∑[A008620(floor(n*log2(7)))]` -/
def P14773339213109500228.Spec : Prop :=
  ∀ n, P14773339213109500228.a n = A025725 n

end A025725

/-! ## A025725.P12947057817817288774

`∑[A257639(A176346(n)+A045943(n))]`
-/

namespace A025725.P12947057817817288774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A176346 n + A045943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025725.P12947057817817288774

namespace A025725

/-- `∑[A257639(A176346(n)+A045943(n))]` -/
def P12947057817817288774.Spec : Prop :=
  ∀ n, P12947057817817288774.a n = A025725 n

end A025725

/-! ## A025725.P15784320889219145958

`record[gcd(n+1, A025675(n+1))]`
-/

namespace A025725.P15784320889219145958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025675 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025725.P15784320889219145958

namespace A025725

/-- `record[gcd(n+1, A025675(n+1))]` -/
def P15784320889219145958.Spec : Prop :=
  ∀ n, (P15784320889219145958.a n : ℤ) = A025725 n

end A025725

/-! ## A025725.P1753820397701053550

`record[(n+1)/A000045(A025675(n+1)+2)]`
-/

namespace A025725.P1753820397701053550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000045 (A025675 (n + 1) + 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025725.P1753820397701053550

namespace A025725

/-- `record[(n+1)/A000045(A025675(n+1)+2)]` -/
def P1753820397701053550.Spec : Prop :=
  ∀ n, P1753820397701053550.a n = (A025725 n : ℚ)

end A025725

/-!
# A025726: Index of 7^n within the sequence of the numbers of the form 7^i*9^j.

The programs for A025726, there is no canonical definition to state claims against.
-/

/-! ## A025726.P9194922126235755735

`record[gcd(n+1, A025681(n+1))]`
-/

namespace A025726.P9194922126235755735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025681 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025726.P9194922126235755735

/-! ## A025726.P5512726603216968485

`(A033441(n+1)+1)%A187463(n+6)`
-/

namespace A025726.P5512726603216968485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033441 (n + 1) + 1) (A187463 (n + 6))

end

end A025726.P5512726603216968485

/-! ## A025726.P14250616717831188344

`A033441(n+1)+A091808(n+1)^and(3, 2^n)`
-/

namespace A025726.P14250616717831188344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033441 (n + 1) + A091808 (n + 1) ^ Nat.land 3 (2 ^ n)

end

end A025726.P14250616717831188344

/-! ## A025726.P16717604785421381101

`A033441(n+1)-A057428(A005987(n))`
-/

namespace A025726.P16717604785421381101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033441 (n + 1) - A057428 (A005987 n).toNat

end

end A025726.P16717604785421381101

/-!
# A025727: Index of 7^n within the sequence of the numbers of the form 7^i*10^j.

The programs for A025727, there is no canonical definition to state claims against.
-/

/-! ## A025727.P7446212357109464567

`∑[A210062(n)]`
-/

namespace A025727.P7446212357109464567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025727.P7446212357109464567

/-! ## A025727.P16730971686117676125

`record[gcd(n+1, A025689(n+1))]`
-/

namespace A025727.P16730971686117676125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025689 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025727.P16730971686117676125

/-! ## A025727.P13490550664344619395

`eq[A000007(n), A025689(A000007(n)+n)]`
-/

namespace A025727.P13490550664344619395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025689 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025727.P13490550664344619395

/-! ## A025727.P6906901075093062783

`∑[∑{digits}[7^n, A036370(#)]]`
-/

namespace A025727.P6906901075093062783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A036370 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025727.P6906901075093062783

/-! ## A025727.P1948521424718306926

`∑[∑{digits}[A226199(n), A063062(#)]]`
-/

namespace A025727.P1948521424718306926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A063062 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025727.P1948521424718306926

/-!
# A025728: Index of 8^n within the sequence of the numbers of the form 3^i*8^j (A025615).

The programs for A025728, the canonical program `A025728.P278276760953338744` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025728 has offset 0).

The definition of A025728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025728.P278276760953338744

`∑[A020915(3*n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025728

/-- `∑[A020915(3*n)]` -/
def P278276760953338744.Spec : Prop :=
  ∀ n, P278276760953338744.a n = A025728 n

theorem P278276760953338744.correct : P278276760953338744.Spec := by
  intro n
  simp only [A025728]

end A025728

/-! ## A025728.P12234178349106683719

`∑[A156301(3*n)]+1`
-/

namespace A025728.P12234178349106683719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025728.P12234178349106683719

namespace A025728

/-- `∑[A156301(3*n)]+1` -/
def P12234178349106683719.Spec : Prop :=
  ∀ n, P12234178349106683719.a n = A025728 n

end A025728

/-! ## A025728.P13093337886234243874

`∑[A156301(A008486(n))]`
-/

namespace A025728.P13093337886234243874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025728.P13093337886234243874

namespace A025728

/-- `∑[A156301(A008486(n))]` -/
def P13093337886234243874.Spec : Prop :=
  ∀ n, P13093337886234243874.a n = A025728 n

end A025728

/-! ## A025728.P9130570007464288941

`∑[record[A020915(A006368(n))]]`
-/

namespace A025728.P9130570007464288941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A006368 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025728.P9130570007464288941

namespace A025728

/-- `∑[record[A020915(A006368(n))]]` -/
def P9130570007464288941.Spec : Prop :=
  ∀ n, P9130570007464288941.a n = A025728 n

end A025728

/-! ## A025728.P7567870591969465447

`∑[record[A020915(n)/A270743(n+1)]]`
-/

namespace A025728.P7567870591969465447
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020915 n : ℚ) / (A270743 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025728.P7567870591969465447

namespace A025728

/-- `∑[record[A020915(n)/A270743(n+1)]]` -/
def P7567870591969465447.Spec : Prop :=
  ∀ n, P7567870591969465447.a n = (A025728 n : ℚ)

end A025728

/-! ## A025728.P11365836178666513823

`∑[A020915(A008585(n))%A076924(n+1)]`
-/

namespace A025728.P11365836178666513823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020915 (A008585 n).toNat) (A076924 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025728.P11365836178666513823

namespace A025728

/-- `∑[A020915(A008585(n))%A076924(n+1)]` -/
def P11365836178666513823.Spec : Prop :=
  ∀ n, P11365836178666513823.a n = A025728 n

end A025728

/-! ## A025728.P11603165652271715450

`∑[A020915(A008585(n))]%A157998(n+1)`
-/

namespace A025728.P11603165652271715450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A008585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A157998 (n + 1))

end

end A025728.P11603165652271715450

namespace A025728

/-- `∑[A020915(A008585(n))]%A157998(n+1)` -/
def P11603165652271715450.Spec : Prop :=
  ∀ n, P11603165652271715450.a n = A025728 n

end A025728

/-! ## A025728.P5571280951223284044

`record[gcd(n+1, A025643(n+1))]`
-/

namespace A025728.P5571280951223284044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025643 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025728.P5571280951223284044

namespace A025728

/-- `record[gcd(n+1, A025643(n+1))]` -/
def P5571280951223284044.Spec : Prop :=
  ∀ n, (P5571280951223284044.a n : ℤ) = A025728 n

end A025728

/-! ## A025728.P13593258379544029714

`eq[1, A025643(n+1)]-n`
-/

namespace A025728.P13593258379544029714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025728.P13593258379544029714

namespace A025728

/-- `eq[1, A025643(n+1)]-n` -/
def P13593258379544029714.Spec : Prop :=
  ∀ n, P13593258379544029714.a n = A025728 n

end A025728

/-!
# A025729: Index of 8^n within the sequence of the numbers of the form 5^i*8^j.

The programs for A025729, the canonical program `A025729.P17133188574506928141` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025729 has offset 0).

The definition of A025729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025729.P17133188574506928141

`∑[floor(n/(1/3*log2(5)))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025729

/-- `∑[floor(n/(1/3*log2(5)))+1]` -/
def P17133188574506928141.Spec : Prop :=
  ∀ n, P17133188574506928141.a n = A025729 n

theorem P17133188574506928141.correct : P17133188574506928141.Spec := by
  intro n
  simp only [A025729]

end A025729

/-!
# A025730: Index of 8^n within the sequence of the numbers of the form 6^i*8^j.

The programs for A025730, the canonical program `A025730.P973148326299083720` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025730 has offset 0).

The definition of A025730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025730.P973148326299083720

`∑[floor(3*n/log2(6))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025730

/-- `∑[floor(3*n/log2(6))+1]` -/
def P973148326299083720.Spec : Prop :=
  ∀ n, P973148326299083720.a n = A025730 n

theorem P973148326299083720.correct : P973148326299083720.Spec := by
  intro n
  simp only [A025730]

end A025730

/-! ## A025730.P5403969151914873259

`∑[ceil(3*n/log2(6-A000007(n)))]+1`
-/

namespace A025730.P5403969151914873259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * n : ℝ) / Real.logb 2 (6 - A000007 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025730.P5403969151914873259

namespace A025730

/-- `∑[ceil(3*n/log2(6-A000007(n)))]+1` -/
def P5403969151914873259.Spec : Prop :=
  ∀ n, P5403969151914873259.a n = A025730 n

end A025730

/-!
# A025731: Index of 8^n within the sequence of the numbers of the form 7^i*8^j.

The programs for A025731, the canonical program `A025731.P9362809939900514646` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025731 has offset 0).

The definition of A025731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025731.P9362809939900514646

`∑[floor(3*n/log2(7))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025731

/-- `∑[floor(3*n/log2(7))+1]` -/
def P9362809939900514646.Spec : Prop :=
  ∀ n, P9362809939900514646.a n = A025731 n

theorem P9362809939900514646.correct : P9362809939900514646.Spec := by
  intro n
  simp only [A025731]

end A025731

/-! ## A025731.P17512384793479846081

`record[gcd(n+1, A025669(n+1))]`
-/

namespace A025731.P17512384793479846081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025669 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025731.P17512384793479846081

namespace A025731

/-- `record[gcd(n+1, A025669(n+1))]` -/
def P17512384793479846081.Spec : Prop :=
  ∀ n, (P17512384793479846081.a n : ℤ) = A025731 n

end A025731

/-! ## A025731.P7115889362883224672

`eq[A000007(n), A025669(A028310(n))]`
-/

namespace A025731.P7115889362883224672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025731.P7115889362883224672

namespace A025731

/-- `eq[A000007(n), A025669(A028310(n))]` -/
def P7115889362883224672.Spec : Prop :=
  ∀ n, (P7115889362883224672.a n : ℤ) = A025731 n

end A025731

/-! ## A025731.P15610747714224611989

`eq[A000038(n), A025669(A028310(n))]`
-/

namespace A025731.P15610747714224611989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025731.P15610747714224611989

namespace A025731

/-- `eq[A000038(n), A025669(A028310(n))]` -/
def P15610747714224611989.Spec : Prop :=
  ∀ n, (P15610747714224611989.a n : ℤ) = A025731 n

end A025731

/-! ## A025731.P2076282925007198897

`eq[A000007(n), A025669(A000007(n)+n)]`
-/

namespace A025731.P2076282925007198897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025731.P2076282925007198897

namespace A025731

/-- `eq[A000007(n), A025669(A000007(n)+n)]` -/
def P2076282925007198897.Spec : Prop :=
  ∀ n, (P2076282925007198897.a n : ℤ) = A025731 n

end A025731

/-! ## A025731.P16567420295845574617

`eq[A000038(n), A025669(A000038(n)+n)]`
-/

namespace A025731.P16567420295845574617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025731.P16567420295845574617

namespace A025731

/-- `eq[A000038(n), A025669(A000038(n)+n)]` -/
def P16567420295845574617.Spec : Prop :=
  ∀ n, (P16567420295845574617.a n : ℤ) = A025731 n

end A025731

/-! ## A025731.P3745395725846876208

`eq[1, A025669(n+1)]-n`
-/

namespace A025731.P3745395725846876208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025731.P3745395725846876208

namespace A025731

/-- `eq[1, A025669(n+1)]-n` -/
def P3745395725846876208.Spec : Prop :=
  ∀ n, P3745395725846876208.a n = A025731 n

end A025731

/-!
# A025732: Index of 8^n within the sequence of the numbers of the form 8^i*9^j.

The programs for A025732, the canonical program `A025732.P1317098271309809510` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025732 has offset 0).

The definition of A025732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025732.P1317098271309809510

`∑[floor(3*n/log2(9))+1]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025732

/-- `∑[floor(3*n/log2(9))+1]` -/
def P1317098271309809510.Spec : Prop :=
  ∀ n, P1317098271309809510.a n = A025732 n

theorem P1317098271309809510.correct : P1317098271309809510.Spec := by
  intro n
  simp only [A025732]

end A025732

/-!
# A025733: Index of 8^n within the sequence of the numbers of the form 8^i*10^j.

The programs for A025733, the canonical program `A025733.P17661610688919653550` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025733 has offset 0).

The definition of A025733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025733.P17661610688919653550

`∑[A034887(3*n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025733

/-- `∑[A034887(3*n)]` -/
def P17661610688919653550.Spec : Prop :=
  ∀ n, P17661610688919653550.a n = A025733 n

theorem P17661610688919653550.correct : P17661610688919653550.Spec := by
  intro n
  simp only [A025733]

end A025733

/-! ## A025733.P14356501444971622875

`∑[A192543(3*n+1)]+1`
-/

namespace A025733.P14356501444971622875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025733.P14356501444971622875

namespace A025733

/-- `∑[A192543(3*n+1)]+1` -/
def P14356501444971622875.Spec : Prop :=
  ∀ n, P14356501444971622875.a n = A025733 n

end A025733

/-! ## A025733.P10882330907742026508

`∑[A192543(A008486(n)+1)]`
-/

namespace A025733.P10882330907742026508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A008486 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025733.P10882330907742026508

namespace A025733

/-- `∑[A192543(A008486(n)+1)]` -/
def P10882330907742026508.Spec : Prop :=
  ∀ n, P10882330907742026508.a n = A025733 n

end A025733

/-! ## A025733.P12804858430854141511

`∑[A065033(A210434(3*n))]`
-/

namespace A025733.P12804858430854141511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A210434 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025733.P12804858430854141511

namespace A025733

/-- `∑[A065033(A210434(3*n))]` -/
def P12804858430854141511.Spec : Prop :=
  ∀ n, P12804858430854141511.a n = A025733 n

end A025733

/-! ## A025733.P4388224734938262107

`∑[A034887(A008585(n))%A017029(n)]`
-/

namespace A025733.P4388224734938262107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034887 (A008585 n).toNat) (A017029 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025733.P4388224734938262107

namespace A025733

/-- `∑[A034887(A008585(n))%A017029(n)]` -/
def P4388224734938262107.Spec : Prop :=
  ∀ n, P4388224734938262107.a n = A025733 n

end A025733

/-! ## A025733.P7153952992263203027

`lt[A025690(n+1), 1]+1`
-/

namespace A025733.P7153952992263203027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025690 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A025733.P7153952992263203027

namespace A025733

/-- `lt[A025690(n+1), 1]+1` -/
def P7153952992263203027.Spec : Prop :=
  ∀ n, (P7153952992263203027.a n : ℤ) = A025733 n

end A025733

/-! ## A025733.P14080697470109185064

`eq[1, A025690(n+2)]-n`
-/

namespace A025733.P14080697470109185064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025690 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025733.P14080697470109185064

namespace A025733

/-- `eq[1, A025690(n+2)]-n` -/
def P14080697470109185064.Spec : Prop :=
  ∀ n, P14080697470109185064.a n = A025733 n

end A025733

/-!
# A025734: Index of 9^n within the sequence of the numbers of the form 2^i*9^j.

The programs for A025734, the canonical program `A025734.P14576003427585486542` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025734 has offset 0).

The definition of A025734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025734.P5024891285009891164

`∑[floor(n*log2(9))+1]`
-/

namespace A025734.P5024891285009891164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (9 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025734.P5024891285009891164

namespace A025734

/-- `∑[floor(n*log2(9))+1]` -/
def P5024891285009891164.Spec : Prop :=
  ∀ n, P5024891285009891164.a n = A025734 n

end A025734

/-! ## A025734.P10041794587385823823

`ceil(a(n-1)+n*log2(9))` with `a(0)=1`
-/

namespace A025734.P10041794587385823823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.logb 2 (9 : ℝ)⌉

end

end A025734.P10041794587385823823

namespace A025734

/-- `ceil(a(n-1)+n*log2(9))` -/
def P10041794587385823823.Spec : Prop :=
  ∀ n, P10041794587385823823.a n = A025734 n

end A025734

/-! ## A025734.P4599776638856301794

`root(∑[A020914(2*n)], 2)²`
-/

namespace A025734.P4599776638856301794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (2 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A025734.P4599776638856301794

namespace A025734

/-- `root(∑[A020914(2*n)], 2)²` -/
def P4599776638856301794.Spec : Prop :=
  ∀ n, P4599776638856301794.a n = (A025734 n : ℝ)

end A025734

/-! ## A025734.P14576003427585486542

`∑[A020914(A004277(n))]-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025734

/-- `∑[A020914(A004277(n))]-1` -/
def P14576003427585486542.Spec : Prop :=
  ∀ n, P14576003427585486542.a n = A025734 n

theorem P14576003427585486542.correct : P14576003427585486542.Spec := by
  intro n
  simp only [A025734]

end A025734

/-! ## A025734.P5393606724202331301

`char[A017501(n)]+∑[A020914(2*n)]`
-/

namespace A025734.P5393606724202331301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A025734.P5393606724202331301

namespace A025734

/-- `char[A017501(n)]+∑[A020914(2*n)]` -/
def P5393606724202331301.Spec : Prop :=
  ∀ n, P5393606724202331301.a n = A025734 n

end A025734

/-! ## A025734.P11580802388009406388

`∑[A056576(2*n)]+n+1`
-/

namespace A025734.P11580802388009406388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A025734.P11580802388009406388

namespace A025734

/-- `∑[A056576(2*n)]+n+1` -/
def P11580802388009406388.Spec : Prop :=
  ∀ n, P11580802388009406388.a n = A025734 n

end A025734

/-! ## A025734.P8782936713179410596

`∑[A204399(2*n)]+1`
-/

namespace A025734.P8782936713179410596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025734.P8782936713179410596

namespace A025734

/-- `∑[A204399(2*n)]+1` -/
def P8782936713179410596.Spec : Prop :=
  ∀ n, P8782936713179410596.a n = A025734 n

end A025734

/-! ## A025734.P17763812468182227267

`∑[A020914(2*n)]*char[A014681(n)]`
-/

namespace A025734.P17763812468182227267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A025734.P17763812468182227267

namespace A025734

/-- `∑[A020914(2*n)]*char[A014681(n)]` -/
def P17763812468182227267.Spec : Prop :=
  ∀ n, P17763812468182227267.a n = A025734 n

end A025734

/-! ## A025734.P11778129419352884328

`A000027(∑[A020914(2*n)])`
-/

namespace A025734.P11778129419352884328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025734.P11778129419352884328

namespace A025734

/-- `A000027(∑[A020914(2*n)])` -/
def P11778129419352884328.Spec : Prop :=
  ∀ n, P11778129419352884328.a n = A025734 n

end A025734

/-!
# A025735: Index of 9^n within the sequence of the numbers of the form 5^i*9^j.

The programs for A025735, there is no canonical definition to state claims against.
-/

/-! ## A025735.P5249444084033667185

`record[gcd(n+1, A025654(n+1))]`
-/

namespace A025735.P5249444084033667185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025654 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025735.P5249444084033667185

/-! ## A025735.P15321392069950318207

`eq[0, A025654(A000038(n)+n)]`
-/

namespace A025735.P15321392069950318207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025654 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025735.P15321392069950318207

/-! ## A025735.P8338800764411391469

`eq[0, A025654(abs(n-A000038(n)))]`
-/

namespace A025735.P8338800764411391469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025654 |(n : ℤ) - A000038 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025735.P8338800764411391469

/-! ## A025735.P2977391060988022209

`eq[A000038(n), A025654(A028310(n))]`
-/

namespace A025735.P2977391060988022209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025654 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025735.P2977391060988022209

/-! ## A025735.P17936774971068567085

`eq[A000007(n), A025654(A000007(n)+n)]`
-/

namespace A025735.P17936774971068567085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025654 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025735.P17936774971068567085

/-! ## A025735.P17925815768744479478

`eq[1, A025654(n+1)]-n`
-/

namespace A025735.P17925815768744479478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025735.P17925815768744479478

/-!
# A025736: Index of 9^n within the sequence of the numbers of the form 6^i*9^j.

The programs for A025736, the canonical program `A025736.P786731760103273081` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025736 has offset 0).

The definition of A025736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025736.P17469512909796841597

`∑[floor(Δ[n²]-2*n/log2(6))]`
-/

namespace A025736.P17469512909796841597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℝ) - (2 * n : ℝ) / Real.logb 2 (6 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025736.P17469512909796841597

namespace A025736

/-- `∑[floor(Δ[n²]-2*n/log2(6))]` -/
def P17469512909796841597.Spec : Prop :=
  ∀ n, P17469512909796841597.a n = A025736 n

end A025736

/-! ## A025736.P2226551033309639101

`∑[comp[A054414(2*n)]]+1`
-/

namespace A025736.P2226551033309639101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025736.P2226551033309639101

namespace A025736

/-- `∑[comp[A054414(2*n)]]+1` -/
def P2226551033309639101.Spec : Prop :=
  ∀ n, (P2226551033309639101.a n : ℤ) = A025736 n

end A025736

/-! ## A025736.P786731760103273081

`(n+1)²+1-A025703(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025736

/-- `(n+1)²+1-A025703(n)` -/
def P786731760103273081.Spec : Prop :=
  ∀ n, P786731760103273081.a n = A025736 n

theorem P786731760103273081.correct : P786731760103273081.Spec := by
  intro n
  simp only [A025736]

end A025736

/-! ## A025736.P13007665505115573813

`A002378(n)+1-(A025703(n)+A001478(n+1))`
-/

namespace A025736.P13007665505115573813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + 1 - (A025703 n + A001478 (n + 1))

end

end A025736.P13007665505115573813

namespace A025736

/-- `A002378(n)+1-(A025703(n)+A001478(n+1))` -/
def P13007665505115573813.Spec : Prop :=
  ∀ n, P13007665505115573813.a n = A025736 n

end A025736

/-! ## A025736.P4403065779137143441

`A038572(A103517(n))+A002378(n)+1-A025703(n)`
-/

namespace A025736.P4403065779137143441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A103517 n).toNat + (A002378 n + 1 - A025703 n)

end

end A025736.P4403065779137143441

namespace A025736

/-- `A038572(A103517(n))+A002378(n)+1-A025703(n)` -/
def P4403065779137143441.Spec : Prop :=
  ∀ n, P4403065779137143441.a n = A025736 n

end A025736

/-! ## A025736.P16945388655605119614

`record[gcd(n+1, A025662(n+1))]`
-/

namespace A025736.P16945388655605119614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025662 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025736.P16945388655605119614

namespace A025736

/-- `record[gcd(n+1, A025662(n+1))]` -/
def P16945388655605119614.Spec : Prop :=
  ∀ n, (P16945388655605119614.a n : ℤ) = A025736 n

end A025736

/-! ## A025736.P4794499941075205978

`eq[1, A025662(n+1)]-n`
-/

namespace A025736.P4794499941075205978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025736.P4794499941075205978

namespace A025736

/-- `eq[1, A025662(n+1)]-n` -/
def P4794499941075205978.Spec : Prop :=
  ∀ n, P4794499941075205978.a n = A025736 n

end A025736

/-!
# A025737: Index of 9^n within the sequence of the numbers of the form 7^i*9^j.

The programs for A025737, there is no canonical definition to state claims against.
-/

/-! ## A025737.P8665631739813254881

`record[gcd(n+1, A025670(n+1))]`
-/

namespace A025737.P8665631739813254881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025670 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025737.P8665631739813254881

/-! ## A025737.P7639448006951315804

`∑[A276611(∑[A080827(n+1)])]`
-/

namespace A025737.P7639448006951315804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025737.P7639448006951315804

/-! ## A025737.P7399225494260517994

`∑[A276611(∑[A061925(n)+n])]`
-/

namespace A025737.P7399225494260517994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025737.P7399225494260517994

/-! ## A025737.P6357609025761127940

`∑[∑[A198293(A281873(n+1))]]`
-/

namespace A025737.P6357609025761127940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198293 (A281873 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025737.P6357609025761127940

/-! ## A025737.P4704673618821122694

`∑[∑[A357138(A034781(n+2))]]`
-/

namespace A025737.P4704673618821122694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 (A034781 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025737.P4704673618821122694

/-!
# A025738: Index of 9^n within the sequence of the numbers of the form 8^i*9^j.

The programs for A025738, the canonical program `A025738.P10852758917869831015` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025738 has offset 0).

The definition of A025738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025738.P14017697921897729884

`∑[ceil(n*log2(9)/3)]+1`
-/

namespace A025738.P14017697921897729884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (9 : ℝ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025738.P14017697921897729884

namespace A025738

/-- `∑[ceil(n*log2(9)/3)]+1` -/
def P14017697921897729884.Spec : Prop :=
  ∀ n, P14017697921897729884.a n = A025738 n

end A025738

/-! ## A025738.P10852758917869831015

`∑[ceil(A020914(2*n)/3)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025738

/-- `∑[ceil(A020914(2*n)/3)]` -/
def P10852758917869831015.Spec : Prop :=
  ∀ n, P10852758917869831015.a n = A025738 n

theorem P10852758917869831015.correct : P10852758917869831015.Spec := by
  intro n
  simp only [A025738]

end A025738

/-! ## A025738.P1087924699178470000

`∑[A008620(A056576(2*n))]`
-/

namespace A025738.P1087924699178470000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A056576 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025738.P1087924699178470000

namespace A025738

/-- `∑[A008620(A056576(2*n))]` -/
def P1087924699178470000.Spec : Prop :=
  ∀ n, P1087924699178470000.a n = A025738 n

end A025738

/-! ## A025738.P8849284087756361799

`∑[A002264(A020914(2*n)+2)]`
-/

namespace A025738.P8849284087756361799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A020914 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025738.P8849284087756361799

namespace A025738

/-- `∑[A002264(A020914(2*n)+2)]` -/
def P8849284087756361799.Spec : Prop :=
  ∀ n, P8849284087756361799.a n = A025738 n

end A025738

/-! ## A025738.P10394189730921230130

`∑[A008620(A020914(2*n)-1)]`
-/

namespace A025738.P10394189730921230130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A020914 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025738.P10394189730921230130

namespace A025738

/-- `∑[A008620(A020914(2*n)-1)]` -/
def P10394189730921230130.Spec : Prop :=
  ∀ n, P10394189730921230130.a n = A025738 n

end A025738

/-! ## A025738.P7383011732267199652

`∑[A008615(2*A020914(2*n))]`
-/

namespace A025738.P7383011732267199652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A020914 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025738.P7383011732267199652

namespace A025738

/-- `∑[A008615(2*A020914(2*n))]` -/
def P7383011732267199652.Spec : Prop :=
  ∀ n, P7383011732267199652.a n = A025738 n

end A025738

/-! ## A025738.P907888173027045722

`∑[∑[A102683(A088479(n+1))]]`
-/

namespace A025738.P907888173027045722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A088479 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025738.P907888173027045722

namespace A025738

/-- `∑[∑[A102683(A088479(n+1))]]` -/
def P907888173027045722.Spec : Prop :=
  ∀ n, P907888173027045722.a n = A025738 n

end A025738

/-!
# A025739: Index of 9^n within the sequence of the numbers of the form 9^i*10^j.

The programs for A025739, the canonical program `A025739.P357740640930675729` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025739 has offset 0).

The definition of A025739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025739.P357740640930675729

`∑[A034888(2*n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025739

/-- `∑[A034888(2*n)]` -/
def P357740640930675729.Spec : Prop :=
  ∀ n, P357740640930675729.a n = A025739 n

theorem P357740640930675729.correct : P357740640930675729.Spec := by
  intro n
  simp only [A025739]

end A025739

/-! ## A025739.P12502622898018543295

`a(n-1)+A034888(2*n)*A057427(n)` with `a(0)=1`
-/

namespace A025739.P12502622898018543295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A034888 (2 * n) * A057427 n

end

end A025739.P12502622898018543295

namespace A025739

/-- `a(n-1)+A034888(2*n)*A057427(n)` -/
def P12502622898018543295.Spec : Prop :=
  ∀ n, P12502622898018543295.a n = A025739 n

end A025739

/-! ## A025739.P10688310485710652400

`A000007(n+1)+∑[A034888(A005843(n))]`
-/

namespace A025739.P10688310485710652400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025739.P10688310485710652400

namespace A025739

/-- `A000007(n+1)+∑[A034888(A005843(n))]` -/
def P10688310485710652400.Spec : Prop :=
  ∀ n, P10688310485710652400.a n = A025739 n

end A025739

/-! ## A025739.P13253412088661635401

`∑[A034888(A005843(n))%A008864(n+1)]`
-/

namespace A025739.P13253412088661635401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034888 (A005843 n).toNat) (A008864 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025739.P13253412088661635401

namespace A025739

/-- `∑[A034888(A005843(n))%A008864(n+1)]` -/
def P13253412088661635401.Spec : Prop :=
  ∀ n, P13253412088661635401.a n = A025739 n

end A025739

/-! ## A025739.P6421029701364202147

`∑[A034888(A005843(n))]%A065119(n+1)`
-/

namespace A025739.P6421029701364202147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A065119 (n + 1))

end

end A025739.P6421029701364202147

namespace A025739

/-- `∑[A034888(A005843(n))]%A065119(n+1)` -/
def P6421029701364202147.Spec : Prop :=
  ∀ n, P6421029701364202147.a n = A025739 n

end A025739

/-! ## A025739.P1916729254809951341

`∑[∑[A000035(A205701(n+5))]]`
-/

namespace A025739.P1916729254809951341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A205701 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025739.P1916729254809951341

namespace A025739

/-- `∑[∑[A000035(A205701(n+5))]]` -/
def P1916729254809951341.Spec : Prop :=
  ∀ n, P1916729254809951341.a n = A025739 n

end A025739

/-!
# A025740: Index of 10^n within the sequence of the numbers of the form 2^i*10^j.

The programs for A025740, the canonical program `A025740.P9912005015493539794` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025740 has offset 0).

The definition of A025740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025740.P15706307860340071985

`∑[floor(n*log2(10))+1]`
-/

namespace A025740.P15706307860340071985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025740.P15706307860340071985

namespace A025740

/-- `∑[floor(n*log2(10))+1]` -/
def P15706307860340071985.Spec : Prop :=
  ∀ n, P15706307860340071985.a n = A025740 n

end A025740

/-! ## A025740.P17209183911875136605

`ceil(a(n-1)+n*log2(10))` with `a(0)=1`
-/

namespace A025740.P17209183911875136605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.logb 2 (10 : ℝ)⌉

end

end A025740.P17209183911875136605

namespace A025740

/-- `ceil(a(n-1)+n*log2(10))` -/
def P17209183911875136605.Spec : Prop :=
  ∀ n, P17209183911875136605.a n = A025740 n

end A025740

/-! ## A025740.P13557330052291608939

`∑[floor(n*log2(10))]-xor(n, -1)`
-/

namespace A025740.P13557330052291608939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A025740.P13557330052291608939

namespace A025740

/-- `∑[floor(n*log2(10))]-xor(n, -1)` -/
def P13557330052291608939.Spec : Prop :=
  ∀ n, P13557330052291608939.a n = A025740 n

end A025740

/-! ## A025740.P9912005015493539794

`A022334(n)+∑[n]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A025740

/-- `A022334(n)+∑[n]` -/
def P9912005015493539794.Spec : Prop :=
  ∀ n, P9912005015493539794.a n = A025740 n

theorem P9912005015493539794.correct : P9912005015493539794.Spec := by
  intro n
  simp only [A025740]

end A025740

/-! ## A025740.P1897966117404450568

`∑[A066343(n+1)+1]-A066343(n+1)`
-/

namespace A025740.P1897966117404450568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A066343 (n + 1)

end

end A025740.P1897966117404450568

namespace A025740

/-- `∑[A066343(n+1)+1]-A066343(n+1)` -/
def P1897966117404450568.Spec : Prop :=
  ∀ n, P1897966117404450568.a n = A025740 n

end A025740

/-! ## A025740.P7822738445415767864

`∑[A067497(n)]+1`
-/

namespace A025740.P7822738445415767864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025740.P7822738445415767864

namespace A025740

/-- `∑[A067497(n)]+1` -/
def P7822738445415767864.Spec : Prop :=
  ∀ n, P7822738445415767864.a n = A025740 n

end A025740

/-! ## A025740.P17195811350551897352

`2*∑[A123384(n)/2]`
-/

namespace A025740.P17195811350551897352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123384 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025740.P17195811350551897352

namespace A025740

/-- `2*∑[A123384(n)/2]` -/
def P17195811350551897352.Spec : Prop :=
  ∀ n, P17195811350551897352.a n = (A025740 n : ℚ)

end A025740

/-! ## A025740.P14683849660698103488

`∑[ceil(log2(A104745(n)))+n]+1`
-/

namespace A025740.P14683849660698103488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A104745 n : ℝ)⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025740.P14683849660698103488

namespace A025740

/-- `∑[ceil(log2(A104745(n)))+n]+1` -/
def P14683849660698103488.Spec : Prop :=
  ∀ n, P14683849660698103488.a n = A025740 n

end A025740

/-! ## A025740.P11263919209774656843

`∑[floor(log2(A198973(n)))-2]+1`
-/

namespace A025740.P11263919209774656843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A198973 n).toNat : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025740.P11263919209774656843

namespace A025740

/-- `∑[floor(log2(A198973(n)))-2]+1` -/
def P11263919209774656843.Spec : Prop :=
  ∀ n, P11263919209774656843.a n = A025740 n

end A025740

/-!
# A025741: Index of 10^n within the sequence of the numbers of the form 3^i*10^j.

The programs for A025741, the canonical program `A025741.P2343215750119213576` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025741 has offset 0).

The definition of A025741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025741.P6558160779970781357

`∑[A158333(n)]`
-/

namespace A025741.P6558160779970781357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025741.P6558160779970781357

namespace A025741

/-- `∑[A158333(n)]` -/
def P6558160779970781357.Spec : Prop :=
  ∀ n, P6558160779970781357.a n = A025741 n

end A025741

/-! ## A025741.P2343215750119213576

`a(n-1)+A054965(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025741

/-- `a(n-1)+A054965(n)+1` -/
def P2343215750119213576.Spec : Prop :=
  ∀ n, P2343215750119213576.a n = A025741 n

theorem P2343215750119213576.correct : P2343215750119213576.Spec := by
  intro n
  simp only [A025741]

end A025741

/-! ## A025741.P6044331191063915838

`∑[A054965(A028310(n))+1]-2`
-/

namespace A025741.P6044331191063915838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054965 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A025741.P6044331191063915838

namespace A025741

/-- `∑[A054965(A028310(n))+1]-2` -/
def P6044331191063915838.Spec : Prop :=
  ∀ n, P6044331191063915838.a n = A025741 n

end A025741

/-! ## A025741.P6124158157800499959

`∑[A054965(A000007(n)+n)+1]-2`
-/

namespace A025741.P6124158157800499959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054965 (A000007 n + (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A025741.P6124158157800499959

namespace A025741

/-- `∑[A054965(A000007(n)+n)+1]-2` -/
def P6124158157800499959.Spec : Prop :=
  ∀ n, P6124158157800499959.a n = A025741 n

end A025741

/-! ## A025741.P7715574301702220976

`∑[A054965(n+1)+1]-A054965(n+1)`
-/

namespace A025741.P7715574301702220976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054965 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054965 (n + 1)

end

end A025741.P7715574301702220976

namespace A025741

/-- `∑[A054965(n+1)+1]-A054965(n+1)` -/
def P7715574301702220976.Spec : Prop :=
  ∀ n, P7715574301702220976.a n = A025741 n

end A025741

/-! ## A025741.P9975377196863526589

`∑[A054965(A123108(2*n))+1]-2`
-/

namespace A025741.P9975377196863526589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054965 (A123108 (2 * n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A025741.P9975377196863526589

namespace A025741

/-- `∑[A054965(A123108(2*n))+1]-2` -/
def P9975377196863526589.Spec : Prop :=
  ∀ n, P9975377196863526589.a n = A025741 n

end A025741

/-! ## A025741.P7576122396213557266

`eq[1, A025644(n+1)]-n`
-/

namespace A025741.P7576122396213557266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025741.P7576122396213557266

namespace A025741

/-- `eq[1, A025644(n+1)]-n` -/
def P7576122396213557266.Spec : Prop :=
  ∀ n, P7576122396213557266.a n = A025741 n

end A025741

/-!
# A025742: Index of 10^n within the sequence of the numbers of the form 4^i*10^j.

The programs for A025742, the canonical program `A025742.P10336602055490751642` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025742 has offset 0).

The definition of A025742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3011 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025742.P9614799500974754984

`∑[A008619(floor(n*log2(10)))]`
-/

namespace A025742.P9614799500974754984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊(n : ℝ) * Real.logb 2 (10 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025742.P9614799500974754984

namespace A025742

/-- `∑[A008619(floor(n*log2(10)))]` -/
def P9614799500974754984.Spec : Prop :=
  ∀ n, P9614799500974754984.a n = A025742 n

end A025742

/-! ## A025742.P8211896193194084989

`∑[A110654(A123384(n))]`
-/

namespace A025742.P8211896193194084989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A123384 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025742.P8211896193194084989

namespace A025742

/-- `∑[A110654(A123384(n))]` -/
def P8211896193194084989.Spec : Prop :=
  ∀ n, P8211896193194084989.a n = A025742 n

end A025742

/-! ## A025742.P10336602055490751642

`∑[A110654(A067497(n))]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025742

/-- `∑[A110654(A067497(n))]+1` -/
def P10336602055490751642.Spec : Prop :=
  ∀ n, P10336602055490751642.a n = A025742 n

theorem P10336602055490751642.correct : P10336602055490751642.Spec := by
  intro n
  simp only [A025742]

end A025742

/-! ## A025742.P2120814393526868965

`∑[A065033(A067497(n))]`
-/

namespace A025742.P2120814393526868965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A067497 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025742.P2120814393526868965

namespace A025742

/-- `∑[A065033(A067497(n))]` -/
def P2120814393526868965.Spec : Prop :=
  ∀ n, P2120814393526868965.a n = A025742 n

end A025742

/-! ## A025742.P12925851937319834547

`∑[record[A065033(n)/A008952(n)]]`
-/

namespace A025742.P12925851937319834547
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A008952 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025742.P12925851937319834547

namespace A025742

/-- `∑[record[A065033(n)/A008952(n)]]` -/
def P12925851937319834547.Spec : Prop :=
  ∀ n, P12925851937319834547.a n = (A025742 n : ℚ)

end A025742

/-! ## A025742.P10327654394024506271

`∑[A123108(A067497(n)+1)]+1`
-/

namespace A025742.P10327654394024506271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A067497 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025742.P10327654394024506271

namespace A025742

/-- `∑[A123108(A067497(n)+1)]+1` -/
def P10327654394024506271.Spec : Prop :=
  ∀ n, P10327654394024506271.a n = A025742 n

end A025742

/-! ## A025742.P8674593692228702851

`∑[A004526(A067497(n)+A054977(n))]`
-/

namespace A025742.P8674593692228702851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A067497 n + A054977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025742.P8674593692228702851

namespace A025742

/-- `∑[A004526(A067497(n)+A054977(n))]` -/
def P8674593692228702851.Spec : Prop :=
  ∀ n, P8674593692228702851.a n = A025742 n

end A025742

/-! ## A025742.P1709703791065431826

`∑[A110655(A067497(A004277(n)))]`
-/

namespace A025742.P1709703791065431826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A067497 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025742.P1709703791065431826

namespace A025742

/-- `∑[A110655(A067497(A004277(n)))]` -/
def P1709703791065431826.Spec : Prop :=
  ∀ n, P1709703791065431826.a n = A025742 n

end A025742

/-! ## A025742.P12824710029581491259

`∑[A110656(A067497(A008574(n)))]`
-/

namespace A025742.P12824710029581491259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A067497 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025742.P12824710029581491259

namespace A025742

/-- `∑[A110656(A067497(A008574(n)))]` -/
def P12824710029581491259.Spec : Prop :=
  ∀ n, P12824710029581491259.a n = A025742 n

end A025742

/-! ## A025742.P2438208074696307691

`eq[1, A025649(n+1)]-n`
-/

namespace A025742.P2438208074696307691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025742.P2438208074696307691

namespace A025742

/-- `eq[1, A025649(n+1)]-n` -/
def P2438208074696307691.Spec : Prop :=
  ∀ n, P2438208074696307691.a n = A025742 n

end A025742

/-!
# A025743: Index of 10^n within the sequence of the numbers of the form 5^i*10^j.

The programs for A025743, the canonical program `A025743.P16932314400444451753` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025743 has offset 0).

The definition of A025743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025743.P9472623321710860835

`∑[comp[ceil(n*log2(10))]]`
-/

namespace A025743.P9472623321710860835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (10 : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025743.P9472623321710860835

namespace A025743

/-- `∑[comp[ceil(n*log2(10))]]` -/
def P9472623321710860835.Spec : Prop :=
  ∀ n, (P9472623321710860835.a n : ℤ) = A025743 n

end A025743

/-! ## A025743.P16234020950051541793

`and(∑[floor(n/log2(5))+n+1], -1)`
-/

namespace A025743.P16234020950051541793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (5 : ℝ)⌋ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A025743.P16234020950051541793

namespace A025743

/-- `and(∑[floor(n/log2(5))+n+1], -1)` -/
def P16234020950051541793.Spec : Prop :=
  ∀ n, P16234020950051541793.a n = A025743 n

end A025743

/-! ## A025743.P16932314400444451753

`A022335(n)+∑[n]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A025743

/-- `A022335(n)+∑[n]` -/
def P16932314400444451753.Spec : Prop :=
  ∀ n, P16932314400444451753.a n = A025743 n

theorem P16932314400444451753.correct : P16932314400444451753.Spec := by
  intro n
  simp only [A025743]

end A025743

/-! ## A025743.P13167560931806539180

`A226721(n)+a(n-1)` with `a(0)=1`
-/

namespace A025743.P13167560931806539180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226721 n + a (n - 1)

end

end A025743.P13167560931806539180

namespace A025743

/-- `A226721(n)+a(n-1)` -/
def P13167560931806539180.Spec : Prop :=
  ∀ n, P13167560931806539180.a n = A025743 n

end A025743

/-! ## A025743.P10134468859315263260

`a(n-1)+A066344(n)+1` with `a(0)=1`
-/

namespace A025743.P10134468859315263260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A066344 n + 1)

end

end A025743.P10134468859315263260

namespace A025743

/-- `a(n-1)+A066344(n)+1` -/
def P10134468859315263260.Spec : Prop :=
  ∀ n, P10134468859315263260.a n = A025743 n

end A025743

/-! ## A025743.P13780520031937448475

`∑[A066344(A028310(n))]+n`
-/

namespace A025743.P13780520031937448475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066344 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A025743.P13780520031937448475

namespace A025743

/-- `∑[A066344(A028310(n))]+n` -/
def P13780520031937448475.Spec : Prop :=
  ∀ n, P13780520031937448475.a n = A025743 n

end A025743

/-! ## A025743.P14290695933200575557

`∑[A226721(n+1)]-A066344(n+1)`
-/

namespace A025743.P14290695933200575557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A066344 (n + 1)

end

end A025743.P14290695933200575557

namespace A025743

/-- `∑[A226721(n+1)]-A066344(n+1)` -/
def P14290695933200575557.Spec : Prop :=
  ∀ n, P14290695933200575557.a n = A025743 n

end A025743

/-! ## A025743.P17873285406845153226

`∑[A226721(A065033(2*n))]-1`
-/

namespace A025743.P17873285406845153226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226721 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A025743.P17873285406845153226

namespace A025743

/-- `∑[A226721(A065033(2*n))]-1` -/
def P17873285406845153226.Spec : Prop :=
  ∀ n, P17873285406845153226.a n = A025743 n

end A025743

/-! ## A025743.P8080705993149587769

`eq[1, A025655(n+1)]-n`
-/

namespace A025743.P8080705993149587769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025743.P8080705993149587769

namespace A025743

/-- `eq[1, A025655(n+1)]-n` -/
def P8080705993149587769.Spec : Prop :=
  ∀ n, P8080705993149587769.a n = A025743 n

end A025743

/-! ## A025743.P1607256620827834567

`A333348(A140066(n+2))`
-/

namespace A025743.P1607256620827834567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333348 (A140066 (n + 2)).toNat

end

end A025743.P1607256620827834567

namespace A025743

/-- `A333348(A140066(n+2))` -/
def P1607256620827834567.Spec : Prop :=
  ∀ n, P1607256620827834567.a n = A025743 n

end A025743

/-!
# A025744: Index of 10^n within the sequence of the numbers of the form 6^i*10^j.

The programs for A025744, the canonical program `A025744.P4861181896630295727` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025744 has offset 0).

The definition of A025744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025744.P3658468803601495285

`∑[A057357(3*n+2)%A108569(2*n+1)]+1`
-/

namespace A025744.P3658468803601495285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057357 (3 * n + 2)) (A108569 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025744.P3658468803601495285

namespace A025744

/-- `∑[A057357(3*n+2)%A108569(2*n+1)]+1` -/
def P3658468803601495285.Spec : Prop :=
  ∀ n, P3658468803601495285.a n = A025744 n

end A025744

/-! ## A025744.P4861181896630295727

`A005408(∑[n])-∑[A057359(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A025744

/-- `A005408(∑[n])-∑[A057359(n)]` -/
def P4861181896630295727.Spec : Prop :=
  ∀ n, P4861181896630295727.a n = A025744 n

theorem P4861181896630295727.correct : P4861181896630295727.Spec := by
  intro n
  simp only [A025744]

end A025744

/-! ## A025744.P5588435623376263120

`A145569(A000124(n))+∑[ceil(3*n/7)]`
-/

namespace A025744.P5588435623376263120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 7)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A000124 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025744.P5588435623376263120

namespace A025744

/-- `A145569(A000124(n))+∑[ceil(3*n/7)]` -/
def P5588435623376263120.Spec : Prop :=
  ∀ n, P5588435623376263120.a n = A025744 n

end A025744

/-! ## A025744.P3347449474911495887

`A194229(n+1)+A145569(A000124(n))`
-/

namespace A025744.P3347449474911495887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194229 (n + 1) + A145569 (A000124 n).toNat

end

end A025744.P3347449474911495887

namespace A025744

/-- `A194229(n+1)+A145569(A000124(n))` -/
def P3347449474911495887.Spec : Prop :=
  ∀ n, P3347449474911495887.a n = A025744 n

end A025744

/-! ## A025744.P5292996141229718351

`A194229(n+1)+A145569(∑[A028310(n)])`
-/

namespace A025744.P5292996141229718351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194229 (n + 1) + A145569 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025744.P5292996141229718351

namespace A025744

/-- `A194229(n+1)+A145569(∑[A028310(n)])` -/
def P5292996141229718351.Spec : Prop :=
  ∀ n, P5292996141229718351.a n = A025744 n

end A025744

/-! ## A025744.P1932863169268973772

`eq[1, A025663(n+1)]-n`
-/

namespace A025744.P1932863169268973772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025744.P1932863169268973772

namespace A025744

/-- `eq[1, A025663(n+1)]-n` -/
def P1932863169268973772.Spec : Prop :=
  ∀ n, P1932863169268973772.a n = A025744 n

end A025744

/-! ## A025744.P8465391951815526813

`A028310(floor((A000124(3*n+2)+9)/7))`
-/

namespace A025744.P8465391951815526813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(A000124 (3 * n + 2) + 9 : ℚ) / 7⌋.toNat

end

end A025744.P8465391951815526813

namespace A025744

/-- `A028310(floor((A000124(3*n+2)+9)/7))` -/
def P8465391951815526813.Spec : Prop :=
  ∀ n, P8465391951815526813.a n = A025744 n

end A025744

/-! ## A025744.P17652334013927537107

`∑[A168201(A053743(n)-n)]+1`
-/

namespace A025744.P17652334013927537107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A053743 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A025744.P17652334013927537107

namespace A025744

/-- `∑[A168201(A053743(n)-n)]+1` -/
def P17652334013927537107.Spec : Prop :=
  ∀ n, P17652334013927537107.a n = A025744 n

end A025744

/-! ## A025744.P8800664373222942864

`A008619(A008739(3*n))`
-/

namespace A025744.P8800664373222942864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008739 (3 * n)).toNat

end

end A025744.P8800664373222942864

namespace A025744

/-- `A008619(A008739(3*n))` -/
def P8800664373222942864.Spec : Prop :=
  ∀ n, P8800664373222942864.a n = A025744 n

end A025744

/-! ## A025744.P15042311074718548679

`A080513(A011860(3*(n+1)))`
-/

namespace A025744.P15042311074718548679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A011860 (3 * (n + 1))).toNat

end

end A025744.P15042311074718548679

namespace A025744

/-- `A080513(A011860(3*(n+1)))` -/
def P15042311074718548679.Spec : Prop :=
  ∀ n, P15042311074718548679.a n = A025744 n

end A025744

/-!
# A025745: Index of 10^n within the sequence of the numbers of the form 7^i*10^j.

The programs for A025745, there is no canonical definition to state claims against.
-/

/-! ## A025745.P14534861160998939581

`record[gcd(n+1, A025671(n+1))]`
-/

namespace A025745.P14534861160998939581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025671 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025745.P14534861160998939581

/-! ## A025745.P4896571760839092632

`record[(1-A025671(n+1))*A000027(n+1)]`
-/

namespace A025745.P4896571760839092632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025671 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025745.P4896571760839092632

/-! ## A025745.P4496081794257220157

`eq[A000007(n), A025671(A028310(n))]`
-/

namespace A025745.P4496081794257220157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025671 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025745.P4496081794257220157

/-! ## A025745.P1168022597921508852

`eq[A000007(n), A025671(A000007(n)+n)]`
-/

namespace A025745.P1168022597921508852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025671 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025745.P1168022597921508852

/-! ## A025745.P12116363392127758539

`record[A000027(n+1)/A193862(A025671(n+1))]`
-/

namespace A025745.P12116363392127758539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A193862 (A025671 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025745.P12116363392127758539

/-! ## A025745.P18217149140985952787

`eq[1, A025671(n+1)]-n`
-/

namespace A025745.P18217149140985952787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025745.P18217149140985952787

/-! ## A025745.P6977173966892792900

`∑[A032798(n+1)]%A233433(n+1)`
-/

namespace A025745.P6977173966892792900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A233433 (n + 1))

end

end A025745.P6977173966892792900

/-!
# A025746: Index of 10^n within the sequence of the numbers of the form 8^i*10^j.

The programs for A025746, the canonical program `A025746.P1897533381081178561` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025746 has offset 0).

The definition of A025746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025746.P1897533381081178561

`∑[ceil((floor(n*log2(10))+1)/3)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025746

/-- `∑[ceil((floor(n*log2(10))+1)/3)]` -/
def P1897533381081178561.Spec : Prop :=
  ∀ n, P1897533381081178561.a n = A025746 n

theorem P1897533381081178561.correct : P1897533381081178561.Spec := by
  intro n
  simp only [A025746]

end A025746

/-! ## A025746.P12992222155007836307

`∑[floor(A028310(n)/3*log2(10))]+n`
-/

namespace A025746.P12992222155007836307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A028310 n : ℚ) / 3 : ℝ) * Real.logb 2 (10 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A025746.P12992222155007836307

namespace A025746

/-- `∑[floor(A028310(n)/3*log2(10))]+n` -/
def P12992222155007836307.Spec : Prop :=
  ∀ n, P12992222155007836307.a n = A025746 n

end A025746

/-! ## A025746.P7944143674147729858

`record[gcd(n+1, A025677(n+1))]`
-/

namespace A025746.P7944143674147729858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025677 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025746.P7944143674147729858

namespace A025746

/-- `record[gcd(n+1, A025677(n+1))]` -/
def P7944143674147729858.Spec : Prop :=
  ∀ n, (P7944143674147729858.a n : ℤ) = A025746 n

end A025746

/-! ## A025746.P485927138414813958

`eq[A000007(n), A025677(A028310(n))]`
-/

namespace A025746.P485927138414813958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025677 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025746.P485927138414813958

namespace A025746

/-- `eq[A000007(n), A025677(A028310(n))]` -/
def P485927138414813958.Spec : Prop :=
  ∀ n, (P485927138414813958.a n : ℤ) = A025746 n

end A025746

/-! ## A025746.P11302701606726052539

`eq[A000038(n), A025677(A028310(n))]`
-/

namespace A025746.P11302701606726052539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025677 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025746.P11302701606726052539

namespace A025746

/-- `eq[A000038(n), A025677(A028310(n))]` -/
def P11302701606726052539.Spec : Prop :=
  ∀ n, (P11302701606726052539.a n : ℤ) = A025746 n

end A025746

/-! ## A025746.P3998270869276177563

`eq[A000007(n), A025677(A000007(n)+n)]`
-/

namespace A025746.P3998270869276177563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025677 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025746.P3998270869276177563

namespace A025746

/-- `eq[A000007(n), A025677(A000007(n)+n)]` -/
def P3998270869276177563.Spec : Prop :=
  ∀ n, (P3998270869276177563.a n : ℤ) = A025746 n

end A025746

/-! ## A025746.P8430240822440104017

`eq[A000038(n), A025677(A000038(n)+n)]`
-/

namespace A025746.P8430240822440104017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025677 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025746.P8430240822440104017

namespace A025746

/-- `eq[A000038(n), A025677(A000038(n)+n)]` -/
def P8430240822440104017.Spec : Prop :=
  ∀ n, (P8430240822440104017.a n : ℤ) = A025746 n

end A025746

/-! ## A025746.P17330618440315737781

`eq[1, A025677(n+1)]-n`
-/

namespace A025746.P17330618440315737781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A025746.P17330618440315737781

namespace A025746

/-- `eq[1, A025677(n+1)]-n` -/
def P17330618440315737781.Spec : Prop :=
  ∀ n, P17330618440315737781.a n = A025746 n

end A025746

/-!
# A025747: Index of 10^n within the sequence of the numbers of the form 9^i*10^j.

The programs for A025747, there is no canonical definition to state claims against.
-/

/-! ## A025747.P7128064516685149788

`∑[comp[A135391(n+1)]+1]`
-/

namespace A025747.P7128064516685149788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135391 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025747.P7128064516685149788

/-! ## A025747.P14659696416480171688

`∑[comp[22*n]]%A006530(A208177(n+1))`
-/

namespace A025747.P14659696416480171688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A006530 (A208177 (n + 1)).toNat)

end

end A025747.P14659696416480171688

/-! ## A025747.P14119935558796761203

`∑[comp[22*n]]*A047999(A266259(n))`
-/

namespace A025747.P14119935558796761203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A047999 (A266259 n).toNat

end

end A025747.P14119935558796761203

/-! ## A025747.P246311398203341455

`∑[comp[22*n]]-A004197(∑[n])`
-/

namespace A025747.P246311398203341455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004197 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A025747.P246311398203341455

/-! ## A025747.P10306632040610636167

`A000007(∑[n+1])+∑[comp[22*n]]`
-/

namespace A025747.P10306632040610636167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A025747.P10306632040610636167

/-! ## A025747.P4278407130101420197

`A028310(∑[comp[22*n]])`
-/

namespace A025747.P4278407130101420197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025747.P4278407130101420197

/-! ## A025747.P17404904866803433001

`A022144(∑[comp[22*n]])/8`
-/

namespace A025747.P17404904866803433001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 8

end

end A025747.P17404904866803433001

/-! ## A025747.P17151144380932458273

`∑[comp[22*n]]-A000007(∑[comp[22*n]])`
-/

namespace A025747.P17151144380932458273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000007 (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A025747.P17151144380932458273

/-! ## A025747.P413630752968835449

`A061579(A061579(∑[comp[22*n]]))`
-/

namespace A025747.P413630752968835449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A025747.P413630752968835449

/-! ## A025747.P9822091926398192452

`∑[A274399(n+1)]%A058945((2*n+1)²)`
-/

namespace A025747.P9822091926398192452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A058945 ((2 * n + 1) ^ 2))

end

end A025747.P9822091926398192452

/-! ## A025747.P1693734161029759085

`∑[A274399(n+1)]*A057979(A028326(n))`
-/

namespace A025747.P1693734161029759085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057979 (A028326 n).toNat

end

end A025747.P1693734161029759085

/-! ## A025747.P14194596678238797024

`∑[A274399(n+1)]*A000190(A053685(n+1))`
-/

namespace A025747.P14194596678238797024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000190 (A053685 (n + 1)).toNat

end

end A025747.P14194596678238797024

/-! ## A025747.P2580360960218411367

`A092569(A092569(∑[A274399(n+1)]))`
-/

namespace A025747.P2580360960218411367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A092569 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A025747.P2580360960218411367

/-! ## A025747.P10118875411000207526

`∑[A274399(n+1)]*A040005(A138642(n+1))`
-/

namespace A025747.P10118875411000207526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A040005 (A138642 (n + 1)).toNat

end

end A025747.P10118875411000207526

/-! ## A025747.P1567413098390920041

`∑[A274399(n+1)]%p?[A077169(n)]`
-/

namespace A025747.P1567413098390920041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A025747.P1567413098390920041

/-! ## A025747.P7741625319051741602

`A066328(A000040(∑[A274399(n+1)]))`
-/

namespace A025747.P7741625319051741602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A025747.P7741625319051741602

/-!
# A025748: 3rd-order Patalan numbers (generalization of Catalan numbers).

The programs for A025748, the canonical program `A025748.P12390695211921138720` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025748 has offset 0).

The definition of A025748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025748.P12390695211921138720

`3*(3-4/n)*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025748

/-- `3*(3-4/n)*a(n-1)` -/
def P12390695211921138720.Spec : Prop :=
  ∀ n, P12390695211921138720.a n = (A025748 n : ℚ)

end A025748

/-! ## A025748.P1708345549616381347

`A048966(C(n, 2)+1)`
-/

namespace A025748.P1708345549616381347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048966 (Nat.choose n 2 + 1)

end

end A025748.P1708345549616381347

namespace A025748

/-- `A048966(C(n, 2)+1)` -/
def P1708345549616381347.Spec : Prop :=
  ∀ n, P1708345549616381347.a n = A025748 n

end A025748

/-! ## A025748.P16460971250205588066

`A048966(∑[abs(1-n)])`
-/

namespace A025748.P16460971250205588066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048966 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025748.P16460971250205588066

namespace A025748

/-- `A048966(∑[abs(1-n)])` -/
def P16460971250205588066.Spec : Prop :=
  ∀ n, P16460971250205588066.a n = A025748 n

end A025748

/-! ## A025748.P3186803505628644869

`A097188((n-1)%(n+1))`
-/

namespace A025748.P3186803505628644869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097188 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A025748.P3186803505628644869

namespace A025748

/-- `A097188((n-1)%(n+1))` -/
def P3186803505628644869.Spec : Prop :=
  ∀ n, P3186803505628644869.a n = A025748 n

end A025748

/-! ## A025748.P5388529359671338562

`A097188(A004273(n)-n)`
-/

namespace A025748.P5388529359671338562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097188 (A004273 n - (n : ℤ)).toNat

end

end A025748.P5388529359671338562

namespace A025748

/-- `A097188(A004273(n)-n)` -/
def P5388529359671338562.Spec : Prop :=
  ∀ n, P5388529359671338562.a n = A025748 n

end A025748

/-! ## A025748.P6217177424486060498

`A097188(n-A057427(n))`
-/

namespace A025748.P6217177424486060498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097188 ((n : ℤ) - A057427 n).toNat

end

end A025748.P6217177424486060498

namespace A025748

/-- `A097188(n-A057427(n))` -/
def P6217177424486060498.Spec : Prop :=
  ∀ n, P6217177424486060498.a n = A025748 n

end A025748

/-! ## A025748.P13142620326968139101

`A108411(n)*A218540(n)`
-/

namespace A025748.P13142620326968139101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n * A218540 n

end

end A025748.P13142620326968139101

namespace A025748

/-- `A108411(n)*A218540(n)` -/
def P13142620326968139101.Spec : Prop :=
  ∀ n, P13142620326968139101.a n = A025748 n

end A025748

/-! ## A025748.P13247256051858258044

`A111575(2*n)*A218540(n)`
-/

namespace A025748.P13247256051858258044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111575 (2 * n) * A218540 n

end

end A025748.P13247256051858258044

namespace A025748

/-- `A111575(2*n)*A218540(n)` -/
def P13247256051858258044.Spec : Prop :=
  ∀ n, P13247256051858258044.a n = A025748 n

end A025748

/-!
# A025749: 4th-order Patalan numbers (generalization of Catalan numbers).

The programs for A025749, there is no canonical definition to state claims against.
-/

/-! ## A025749.P7801345540447818234

`2*(8-10/n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A025749.P7801345540447818234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ((8 - 10 / (n : ℚ)) * a (n - 1))

end

end A025749.P7801345540447818234

/-! ## A025749.P5644196825384423311

`A049213(C(n, 2)+1)`
-/

namespace A025749.P5644196825384423311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049213 (Nat.choose n 2 + 1)

end

end A025749.P5644196825384423311

/-! ## A025749.P11121673858064558384

`A049213(∑[abs(1-n)])`
-/

namespace A025749.P11121673858064558384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049213 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025749.P11121673858064558384

/-! ## A025749.P7912870312544385742

`A011782(n)*A048779(A028310(n))`
-/

namespace A025749.P7912870312544385742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A048779 (A028310 n).toNat

end

end A025749.P7912870312544385742

/-! ## A025749.P4014716973826300202

`A011782(n)*A048779(A065033(2*n))`
-/

namespace A025749.P4014716973826300202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A048779 (A065033 (2 * n)).toNat

end

end A025749.P4014716973826300202

/-! ## A025749.P13101888174032497512

`ceil(A034256(n)/4)`
-/

namespace A025749.P13101888174032497512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034256 n : ℚ) / 4⌉

end

end A025749.P13101888174032497512

/-! ## A025749.P8597615088377500534

`A034256(A028310(n))/4`
-/

namespace A025749.P8597615088377500534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034256 (A028310 n).toNat : ℚ) / 4

end

end A025749.P8597615088377500534

/-! ## A025749.P15017460072337395965

`A034256(n)/(A178334(n)+1)²`
-/

namespace A025749.P15017460072337395965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034256 n : ℚ) / ((A178334 n + 1) ^ 2 : ℚ)

end

end A025749.P15017460072337395965

/-! ## A025749.P3611345119348315663

`A034256(n)/A008574(A178334(n))`
-/

namespace A025749.P3611345119348315663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034256 n : ℚ) / (A008574 (A178334 n).toNat : ℚ)

end

end A025749.P3611345119348315663

/-!
# A025750: 5th-order Patalan numbers (generalization of Catalan numbers).

The programs for A025750, there is no canonical definition to state claims against.
-/

/-! ## A025750.P11714400312894712165

`3*(3-4/n)*a(n-1)+(16-18/n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A025750.P11714400312894712165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * ((3 - 4 / (n : ℚ)) * a (n - 1)) + (16 - 18 / (n : ℚ)) * a (n - 1)

end

end A025750.P11714400312894712165

/-! ## A025750.P424550679630464225

`A049223(C(n, 2)+1)`
-/

namespace A025750.P424550679630464225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049223 (Nat.choose n 2 + 1)

end

end A025750.P424550679630464225

/-! ## A025750.P14996695487591057172

`A049223(∑[abs(1-n)])`
-/

namespace A025750.P14996695487591057172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025750.P14996695487591057172

/-! ## A025750.P3564511679850353265

`lcm(5, A049393(n))/5`
-/

namespace A025750.P3564511679850353265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A049393 n) : ℚ) / 5

end

end A025750.P3564511679850353265

/-! ## A025750.P2239065258526260821

`A049393(n)/A049393(A178334(n))`
-/

namespace A025750.P2239065258526260821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049393 n : ℚ) / (A049393 (A178334 n).toNat : ℚ)

end

end A025750.P2239065258526260821

/-!
# A025751: 6th-order Patalan numbers (generalization of Catalan numbers).

The programs for A025751, there is no canonical definition to state claims against.
-/

/-! ## A025751.P6220278088720891450

`A049224(C(n, 2)+1)`
-/

namespace A025751.P6220278088720891450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049224 (Nat.choose n 2 + 1)

end

end A025751.P6220278088720891450

/-! ## A025751.P10607878919596273443

`A049224(∑[abs(1-n)])`
-/

namespace A025751.P10607878919596273443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049224 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025751.P10607878919596273443

/-! ## A025751.P11652253982868798724

`abs(A004996(n)/A020793(n))`
-/

namespace A025751.P11652253982868798724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A004996 n : ℚ) / (A020793 n : ℚ)|

end

end A025751.P11652253982868798724

/-! ## A025751.P10063123556978990494

`A004996(n)/A004996(A178334(n))`
-/

namespace A025751.P10063123556978990494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004996 n : ℚ) / (A004996 (A178334 n).toNat : ℚ)

end

end A025751.P10063123556978990494

/-! ## A025751.P10021306842926842954

`A000038(n)-A004996(n)/A020793(n)`
-/

namespace A025751.P10021306842926842954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) - (A004996 n : ℚ) / (A020793 n : ℚ)

end

end A025751.P10021306842926842954

/-! ## A025751.P13075862181350703239

`6*(6*n-7)*a(n-1)/n` with `a(0)=1, a(1)=1`
-/

namespace A025751.P13075862181350703239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (6 * ((6 * n : ℤ) - 7) : ℚ) * a (n - 1) / (n : ℚ)

end

end A025751.P13075862181350703239

/-!
# A025753: 8th-order Patalan numbers (generalization of Catalan numbers).

The programs for A025753, there is no canonical definition to state claims against.
-/

/-! ## A025753.P16293777511963197296

`(16-18/n)*a(n-1)*2^ceil(atan(n))` with `a(0)=1, a(1)=1`
-/

namespace A025753.P16293777511963197296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (16 - 18 / (n : ℚ)) * a (n - 1) * (2 : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A025753.P16293777511963197296

/-!
# A025756: 3rd-order Vatalan numbers (generalization of Catalan numbers).

The programs for A025756, there is no canonical definition to state claims against.
-/

/-! ## A025756.P1247278564962318083

`A200731(n)-A184955(3*n)`
-/

namespace A025756.P1247278564962318083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200731 n - A184955 (3 * n)

end

end A025756.P1247278564962318083

/-! ## A025756.P849744426449971771

`A193116(n)-A185274((1-n)²)`
-/

namespace A025756.P849744426449971771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193116 n - A185274 ((1 - (n : ℤ)) ^ 2).toNat

end

end A025756.P849744426449971771

/-!
# A025757: 4th-order Vatalan numbers (generalization of Catalan numbers).

The programs for A025757, there is no canonical definition to state claims against.
-/

/-! ## A025757.P3915964904074351292

`or(n^(n+1)-(n-1)*(n-1)^n, A052126(n^(n+1)-(n-1)*(n-1)^n))`
-/

namespace A025757.P3915964904074351292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n ^ (n + 1) : ℤ) - ((n : ℤ) - 1) * ((n : ℤ) - 1) ^ n) (A052126 ((n ^ (n + 1) : ℤ) - ((n : ℤ) - 1) * ((n : ℤ) - 1) ^ n).toNat)

end

end A025757.P3915964904074351292

/-!
# A025758: 5th-order Vatalan numbers (generalization of Catalan numbers).

The programs for A025758, there is no canonical definition to state claims against.
-/

/-! ## A025758.P997830920594993541

`A023721(A318007(n+1)-n)`
-/

namespace A025758.P997830920594993541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (A318007 (n + 1) - (n : ℤ)).toNat

end

end A025758.P997830920594993541

/-!
# A025759: 6th-order Vatalan numbers (generalization of Catalan numbers).

The programs for A025759, there is no canonical definition to state claims against.
-/

/-! ## A025759.P10658171202235410734

`A287774(A162326(n)*A357161(n))`
-/

namespace A025759.P10658171202235410734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287774 (A162326 n * A357161 n).toNat

end

end A025759.P10658171202235410734

/-!
# A025764: Expansion of 1/((1-x)(1-x^2)(1-x^7)).

The programs for A025764, the canonical program `A025764.P7743846989133063708` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025764 has offset 0).

The definition of A025764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^7+x^8+x^9-x^10))` (program `A025764.P7743846989133063708`, by `A025764.P7743846989133063708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025764.P8365552230269281048

`round((n+3)*(n+7)/28)`
-/

namespace A025764.P8365552230269281048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) * (n + 7) : ℚ) / 28)

end

end A025764.P8365552230269281048

namespace A025764

/-- `round((n+3)*(n+7)/28)` -/
def P8365552230269281048.Spec : Prop :=
  ∀ n, P8365552230269281048.a n = A025764 n

end A025764

/-! ## A025764.P7743846989133063708

`ogf(1/(1-x-x^2+x^3-x^7+x^8+x^9-x^10))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025764

/-- `ogf(1/(1-x-x^2+x^3-x^7+x^8+x^9-x^10))` -/
def P7743846989133063708.Spec : Prop :=
  ∀ n, P7743846989133063708.a n = A025764 n

theorem P7743846989133063708.correct : P7743846989133063708.Spec := by
  intro n
  simp only [A025764]

end A025764

/-! ## A025764.P12804790388956157043

`∑[∑[char[7*n]-a(n-1)]]` with `a(0)=1`
-/

namespace A025764.P12804790388956157043
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025764.P12804790388956157043

namespace A025764

/-- `∑[∑[char[7*n]-a(n-1)]]` -/
def P12804790388956157043.Spec : Prop :=
  ∀ n, P12804790388956157043.a n = A025764 n

end A025764

/-! ## A025764.P11701297689404168492

`floor(a(n-2)+n/7+1)` with `a(0)=1, a(1)=1`
-/

namespace A025764.P11701297689404168492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℚ) / 7 + 1)⌋

end

end A025764.P11701297689404168492

namespace A025764

/-- `floor(a(n-2)+n/7+1)` -/
def P11701297689404168492.Spec : Prop :=
  ∀ n, P11701297689404168492.a n = A025764 n

end A025764

/-! ## A025764.P2949597972641553453

`a(n-2)+ceil((n+1)/7)` with `a(0)=1, a(1)=1`
-/

namespace A025764.P2949597972641553453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ⌈(n + 1 : ℚ) / 7⌉

end

end A025764.P2949597972641553453

namespace A025764

/-- `a(n-2)+ceil((n+1)/7)` -/
def P2949597972641553453.Spec : Prop :=
  ∀ n, P2949597972641553453.a n = A025764 n

end A025764

/-! ## A025764.P11780877765141054763

`∑[A008617(n)]`
-/

namespace A025764.P11780877765141054763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025764.P11780877765141054763

namespace A025764

/-- `∑[A008617(n)]` -/
def P11780877765141054763.Spec : Prop :=
  ∀ n, P11780877765141054763.a n = A025764 n

end A025764

/-! ## A025764.P7466270726009716274

`A008725(n)-a(n-1)` with `a(0)=1`
-/

namespace A025764.P7466270726009716274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008725 n - a (n - 1)

end

end A025764.P7466270726009716274

namespace A025764

/-- `A008725(n)-a(n-1)` -/
def P7466270726009716274.Spec : Prop :=
  ∀ n, P7466270726009716274.a n = A025764 n

end A025764

/-! ## A025764.P15235397216104797681

`A087811(n+1)-A194229(n+1)`
-/

namespace A025764.P15235397216104797681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - A194229 (n + 1)

end

end A025764.P15235397216104797681

namespace A025764

/-- `A087811(n+1)-A194229(n+1)` -/
def P15235397216104797681.Spec : Prop :=
  ∀ n, P15235397216104797681.a n = A025764 n

end A025764

/-! ## A025764.P3737355338859318336

`A025803(2*n)`
-/

namespace A025764.P3737355338859318336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025803 (2 * n)

end

end A025764.P3737355338859318336

namespace A025764

/-- `A025803(2*n)` -/
def P3737355338859318336.Spec : Prop :=
  ∀ n, P3737355338859318336.a n = A025764 n

end A025764

/-! ## A025764.P4433092494613721897

`A008721(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025764.P4433092494613721897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008721 (2 * n) - a (n - 1)

end

end A025764.P4433092494613721897

namespace A025764

/-- `A008721(2*n)-a(n-1)` -/
def P4433092494613721897.Spec : Prop :=
  ∀ n, P4433092494613721897.a n = A025764 n

end A025764

/-! ## A025764.P7038402619346083513

`A029001(n)-A029178(2*n+1)`
-/

namespace A025764.P7038402619346083513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029001 n - A029178 (2 * n + 1)

end

end A025764.P7038402619346083513

namespace A025764

/-- `A029001(n)-A029178(2*n+1)` -/
def P7038402619346083513.Spec : Prop :=
  ∀ n, P7038402619346083513.a n = A025764 n

end A025764

/-! ## A025764.P4123533803125047945

`A029178(2*n)-A029178(2*n+1)`
-/

namespace A025764.P4123533803125047945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (2 * n) - A029178 (2 * n + 1)

end

end A025764.P4123533803125047945

namespace A025764

/-- `A029178(2*n)-A029178(2*n+1)` -/
def P4123533803125047945.Spec : Prop :=
  ∀ n, P4123533803125047945.a n = A025764 n

end A025764

/-! ## A025764.P5386267253849520096

`∑[A008622(2*n)-A008622(2*n+1)]`
-/

namespace A025764.P5386267253849520096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (2 * n) - A008622 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025764.P5386267253849520096

namespace A025764

/-- `∑[A008622(2*n)-A008622(2*n+1)]` -/
def P5386267253849520096.Spec : Prop :=
  ∀ n, P5386267253849520096.a n = A025764 n

end A025764

/-! ## A025764.P14728933033633794587

`ceil(∑[3*(A002265(2*n)+1)-A028310(n)]/7)`
-/

namespace A025764.P14728933033633794587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A002265 (2 * n) + 1) - A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 7⌉

end

end A025764.P14728933033633794587

namespace A025764

/-- `ceil(∑[3*(A002265(2*n)+1)-A028310(n)]/7)` -/
def P14728933033633794587.Spec : Prop :=
  ∀ n, P14728933033633794587.a n = A025764 n

end A025764

/-! ## A025764.P17853705714732817341

`A025816(2*n+3)+A025816(2*n)`
-/

namespace A025764.P17853705714732817341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025816 (2 * n + 3) + A025816 (2 * n)

end

end A025764.P17853705714732817341

namespace A025764

/-- `A025816(2*n+3)+A025816(2*n)` -/
def P17853705714732817341.Spec : Prop :=
  ∀ n, P17853705714732817341.a n = A025764 n

end A025764

/-! ## A025764.P34207425719832681

`A025841(3*n)`
-/

namespace A025764.P34207425719832681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025841 (3 * n)

end

end A025764.P34207425719832681

namespace A025764

/-- `A025841(3*n)` -/
def P34207425719832681.Spec : Prop :=
  ∀ n, P34207425719832681.a n = A025764 n

end A025764

/-! ## A025764.P11895566548142048907

`A025867(4*n)`
-/

namespace A025764.P11895566548142048907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025867 (4 * n)

end

end A025764.P11895566548142048907

namespace A025764

/-- `A025867(4*n)` -/
def P11895566548142048907.Spec : Prop :=
  ∀ n, P11895566548142048907.a n = A025764 n

end A025764

/-! ## A025764.P4196877318526854240

`A025884(5*n)`
-/

namespace A025764.P4196877318526854240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025884 (5 * n)

end

end A025764.P4196877318526854240

namespace A025764

/-- `A025884(5*n)` -/
def P4196877318526854240.Spec : Prop :=
  ∀ n, P4196877318526854240.a n = A025764 n

end A025764

/-! ## A025764.P15617389990543654778

`A025901(6*n)`
-/

namespace A025764.P15617389990543654778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (6 * n)

end

end A025764.P15617389990543654778

namespace A025764

/-- `A025901(6*n)` -/
def P15617389990543654778.Spec : Prop :=
  ∀ n, P15617389990543654778.a n = A025764 n

end A025764

/-! ## A025764.P8124314294696510465

`A029348(6*n+8)-A029348(6*n+5)`
-/

namespace A025764.P8124314294696510465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029348 (6 * n + 8) - A029348 (6 * n + 5)

end

end A025764.P8124314294696510465

namespace A025764

/-- `A029348(6*n+8)-A029348(6*n+5)` -/
def P8124314294696510465.Spec : Prop :=
  ∀ n, P8124314294696510465.a n = A025764 n

end A025764

/-!
# A025765: Expansion of 1/((1-x)(1-x^2)(1-x^9)).

The programs for A025765, the canonical program `A025765.P14998929785698395979` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025765 has offset 0).

The definition of A025765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^9+x^10+x^11-x^12))` (program `A025765.P14998929785698395979`, by `A025765.P14998929785698395979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025765.P10229672660226962561

`1+floor((n²+12*n+9)/36)`
-/

namespace A025765.P10229672660226962561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n ^ 2 + 12 * n + 9 : ℚ) / 36⌋

end

end A025765.P10229672660226962561

namespace A025765

/-- `1+floor((n²+12*n+9)/36)` -/
def P10229672660226962561.Spec : Prop :=
  ∀ n, P10229672660226962561.a n = A025765 n

end A025765

/-! ## A025765.P14998929785698395979

`ogf(1/(1-x-x^2+x^3-x^9+x^10+x^11-x^12))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025765

/-- `ogf(1/(1-x-x^2+x^3-x^9+x^10+x^11-x^12))` -/
def P14998929785698395979.Spec : Prop :=
  ∀ n, P14998929785698395979.a n = A025765 n

theorem P14998929785698395979.correct : P14998929785698395979.Spec := by
  intro n
  simp only [A025765]

end A025765

/-! ## A025765.P16181389412265461494

`∑[∑[dr(n+1)%2-n%2]]`
-/

namespace A025765.P16181389412265461494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot (n + 1 : ℤ) % 2 : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025765.P16181389412265461494

namespace A025765

/-- `∑[∑[dr(n+1)%2-n%2]]` -/
def P16181389412265461494.Spec : Prop :=
  ∀ n, P16181389412265461494.a n = A025765 n

end A025765

/-! ## A025765.P17072666398843445169

`∑[∑[char[9*n]]-a(n-1)]` with `a(0)=1`
-/

namespace A025765.P17072666398843445169
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025765.P17072666398843445169

namespace A025765

/-- `∑[∑[char[9*n]]-a(n-1)]` -/
def P17072666398843445169.Spec : Prop :=
  ∀ n, P17072666398843445169.a n = A025765 n

end A025765

/-! ## A025765.P13209997035726033905

`∑[A008618(n)]`
-/

namespace A025765.P13209997035726033905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025765.P13209997035726033905

namespace A025765

/-- `∑[A008618(n)]` -/
def P13209997035726033905.Spec : Prop :=
  ∀ n, P13209997035726033905.a n = A025765 n

end A025765

/-! ## A025765.P4601629464300449838

`∑[A008615(A008611(n)+1)]`
-/

namespace A025765.P4601629464300449838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A008611 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025765.P4601629464300449838

namespace A025765

/-- `∑[A008615(A008611(n)+1)]` -/
def P4601629464300449838.Spec : Prop :=
  ∀ n, P4601629464300449838.a n = A025765 n

end A025765

/-! ## A025765.P13844521007634223099

`round(A014616(n+3)/9)`
-/

namespace A025765.P13844521007634223099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014616 (n + 3) : ℚ) / 9)

end

end A025765.P13844521007634223099

namespace A025765

/-- `round(A014616(n+3)/9)` -/
def P13844521007634223099.Spec : Prop :=
  ∀ n, P13844521007634223099.a n = A025765 n

end A025765

/-! ## A025765.P5014510651920522640

`∑[A033183(2*n)]`
-/

namespace A025765.P5014510651920522640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025765.P5014510651920522640

namespace A025765

/-- `∑[A033183(2*n)]` -/
def P5014510651920522640.Spec : Prop :=
  ∀ n, P5014510651920522640.a n = A025765 n

end A025765

/-! ## A025765.P11303004827836200835

`A025804(2*n)`
-/

namespace A025765.P11303004827836200835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025804 (2 * n)

end

end A025765.P11303004827836200835

namespace A025765

/-- `A025804(2*n)` -/
def P11303004827836200835.Spec : Prop :=
  ∀ n, P11303004827836200835.a n = A025765 n

end A025765

/-! ## A025765.P5056624140954799847

`∑[A008615(A008612(2*n)+1)]`
-/

namespace A025765.P5056624140954799847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A008612 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025765.P5056624140954799847

namespace A025765

/-- `∑[A008615(A008612(2*n)+1)]` -/
def P5056624140954799847.Spec : Prop :=
  ∀ n, P5056624140954799847.a n = A025765 n

end A025765

/-! ## A025765.P7305459058515366769

`(A033183(2*n)+A008722(2*n))/2`
-/

namespace A025765.P7305459058515366769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033183 (2 * n) + A008722 (2 * n) : ℚ) / 2

end

end A025765.P7305459058515366769

namespace A025765

/-- `(A033183(2*n)+A008722(2*n))/2` -/
def P7305459058515366769.Spec : Prop :=
  ∀ n, P7305459058515366769.a n = (A025765 n : ℚ)

end A025765

/-! ## A025765.P5043833382685222402

`∑[A025872(2*n)-A025872(2*n+1)]`
-/

namespace A025765.P5043833382685222402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (2 * n) - A025872 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025765.P5043833382685222402

namespace A025765

/-- `∑[A025872(2*n)-A025872(2*n+1)]` -/
def P5043833382685222402.Spec : Prop :=
  ∀ n, P5043833382685222402.a n = A025765 n

end A025765

/-! ## A025765.P1197250268040254546

`A025872(4*n)`
-/

namespace A025765.P1197250268040254546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 (4 * n)

end

end A025765.P1197250268040254546

namespace A025765

/-- `A025872(4*n)` -/
def P1197250268040254546.Spec : Prop :=
  ∀ n, P1197250268040254546.a n = A025765 n

end A025765

/-! ## A025765.P1300942935302556892

`A025891(5*n)`
-/

namespace A025765.P1300942935302556892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025891 (5 * n)

end

end A025765.P1300942935302556892

namespace A025765

/-- `A025891(5*n)` -/
def P1300942935302556892.Spec : Prop :=
  ∀ n, P1300942935302556892.a n = A025765 n

end A025765

/-! ## A025765.P8747158092947120639

`A014682(A033183(2*n)+A008722(2*n))`
-/

namespace A025765.P8747158092947120639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A033183 (2 * n) + A008722 (2 * n)).toNat

end

end A025765.P8747158092947120639

namespace A025765

/-- `A014682(A033183(2*n)+A008722(2*n))` -/
def P8747158092947120639.Spec : Prop :=
  ∀ n, P8747158092947120639.a n = A025765 n

end A025765

/-! ## A025765.P4568607143107624940

`A001281(A033183(2*n)+A008722(2*n))`
-/

namespace A025765.P4568607143107624940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033183 (2 * n) + A008722 (2 * n)).toNat

end

end A025765.P4568607143107624940

namespace A025765

/-- `A001281(A033183(2*n)+A008722(2*n))` -/
def P4568607143107624940.Spec : Prop :=
  ∀ n, P4568607143107624940.a n = A025765 n

end A025765

/-! ## A025765.P16224512462755967315

`A004525(A033183(2*n)+A008722(2*n))`
-/

namespace A025765.P16224512462755967315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A033183 (2 * n) + A008722 (2 * n)).toNat

end

end A025765.P16224512462755967315

namespace A025765

/-- `A004525(A033183(2*n)+A008722(2*n))` -/
def P16224512462755967315.Spec : Prop :=
  ∀ n, P16224512462755967315.a n = A025765 n

end A025765

/-! ## A025765.P1273718458622474235

`A006370(A033183(2*n)+A008722(2*n))`
-/

namespace A025765.P1273718458622474235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A033183 (2 * n) + A008722 (2 * n)).toNat

end

end A025765.P1273718458622474235

namespace A025765

/-- `A006370(A033183(2*n)+A008722(2*n))` -/
def P1273718458622474235.Spec : Prop :=
  ∀ n, P1273718458622474235.a n = A025765 n

end A025765

/-! ## A025765.P10374238261092320909

`A054846(A029000(n))`
-/

namespace A025765.P10374238261092320909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A029000 n).toNat

end

end A025765.P10374238261092320909

namespace A025765

/-- `A054846(A029000(n))` -/
def P10374238261092320909.Spec : Prop :=
  ∀ n, P10374238261092320909.a n = A025765 n

end A025765

/-!
# A025766: Expansion of 1/((1-x)*(1-x^2)*(1-x^11)).

The programs for A025766, the canonical program `A025766.P12685729113510011781` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025766 has offset 0).

The definition of A025766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^11+x^12+x^13-x^14))` (program `A025766.P12685729113510011781`, by `A025766.P12685729113510011781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025766.P12685729113510011781

`ogf(1/(1-x-x^2+x^3-x^11+x^12+x^13-x^14))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025766

/-- `ogf(1/(1-x-x^2+x^3-x^11+x^12+x^13-x^14))` -/
def P12685729113510011781.Spec : Prop :=
  ∀ n, P12685729113510011781.a n = A025766 n

theorem P12685729113510011781.correct : P12685729113510011781.Spec := by
  intro n
  simp only [A025766]

end A025766

/-! ## A025766.P10948010663804235912

`∑[∑[char[11*n]]-a(n-1)]` with `a(0)=1`
-/

namespace A025766.P10948010663804235912
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025766.P10948010663804235912

namespace A025766

/-- `∑[∑[char[11*n]]-a(n-1)]` -/
def P10948010663804235912.Spec : Prop :=
  ∀ n, P10948010663804235912.a n = A025766 n

end A025766

/-! ## A025766.P4178322416013647756

`ceil(a(n-2)+(n+1)/11)` with `a(0)=1, a(1)=1`
-/

namespace A025766.P4178322416013647756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n + 1 : ℚ) / 11⌉

end

end A025766.P4178322416013647756

namespace A025766

/-- `ceil(a(n-2)+(n+1)/11)` -/
def P4178322416013647756.Spec : Prop :=
  ∀ n, P4178322416013647756.a n = A025766 n

end A025766

/-! ## A025766.P10273031158853359559

`A008729(n)-a(n-1)` with `a(0)=1`
-/

namespace A025766.P10273031158853359559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008729 n - a (n - 1)

end

end A025766.P10273031158853359559

namespace A025766

/-- `A008729(n)-a(n-1)` -/
def P10273031158853359559.Spec : Prop :=
  ∀ n, P10273031158853359559.a n = A025766 n

end A025766

/-! ## A025766.P6802730505783229525

`A025805(2*n)`
-/

namespace A025766.P6802730505783229525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025805 (2 * n)

end

end A025766.P6802730505783229525

namespace A025766

/-- `A025805(2*n)` -/
def P6802730505783229525.Spec : Prop :=
  ∀ n, P6802730505783229525.a n = A025766 n

end A025766

/-! ## A025766.P6836868222489493973

`A029191(2*n)-A029191(2*n+1)`
-/

namespace A025766.P6836868222489493973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029191 (2 * n) - A029191 (2 * n + 1)

end

end A025766.P6836868222489493973

namespace A025766

/-- `A029191(2*n)-A029191(2*n+1)` -/
def P6836868222489493973.Spec : Prop :=
  ∀ n, P6836868222489493973.a n = A025766 n

end A025766

/-! ## A025766.P11942509704353995087

`A029192(2*n)-A029192(abs(A023443(2*n)))`
-/

namespace A025766.P11942509704353995087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 (2 * n) - A029192 |A023443 (2 * n)|.toNat

end

end A025766.P11942509704353995087

namespace A025766

/-- `A029192(2*n)-A029192(abs(A023443(2*n)))` -/
def P11942509704353995087.Spec : Prop :=
  ∀ n, P11942509704353995087.a n = A025766 n

end A025766

/-! ## A025766.P8342133831773634191

`A025775(2*n+1)+A029010(2*n)-A029010(2*n+1)`
-/

namespace A025766.P8342133831773634191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025775 (2 * n + 1) + (A029010 (2 * n) - A029010 (2 * n + 1))

end

end A025766.P8342133831773634191

namespace A025766

/-- `A025775(2*n+1)+A029010(2*n)-A029010(2*n+1)` -/
def P8342133831773634191.Spec : Prop :=
  ∀ n, P8342133831773634191.a n = A025766 n

end A025766

/-! ## A025766.P13974470673191055514

`A025875(2*n+1)+A029192(2*n)-A029192(2*n+1)`
-/

namespace A025766.P13974470673191055514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (2 * n + 1) + (A029192 (2 * n) - A029192 (2 * n + 1))

end

end A025766.P13974470673191055514

namespace A025766

/-- `A025875(2*n+1)+A029192(2*n)-A029192(2*n+1)` -/
def P13974470673191055514.Spec : Prop :=
  ∀ n, P13974470673191055514.a n = A025766 n

end A025766

/-! ## A025766.P12658095243770921038

`A029187(2*n)-A029187(2*n+3)`
-/

namespace A025766.P12658095243770921038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029187 (2 * n) - A029187 (2 * n + 3)

end

end A025766.P12658095243770921038

namespace A025766

/-- `A029187(2*n)-A029187(2*n+3)` -/
def P12658095243770921038.Spec : Prop :=
  ∀ n, P12658095243770921038.a n = A025766 n

end A025766

/-! ## A025766.P7739507524501781103

`∑[A110655(A168186(2*n+1))-A110655(2*n)]`
-/

namespace A025766.P7739507524501781103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A168186 (2 * n + 1)).toNat - A110655 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025766.P7739507524501781103

namespace A025766

/-- `∑[A110655(A168186(2*n+1))-A110655(2*n)]` -/
def P7739507524501781103.Spec : Prop :=
  ∀ n, P7739507524501781103.a n = A025766 n

end A025766

/-! ## A025766.P1313394877496160231

`A025844(3*n)`
-/

namespace A025766.P1313394877496160231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025844 (3 * n)

end

end A025766.P1313394877496160231

namespace A025766

/-- `A025844(3*n)` -/
def P1313394877496160231.Spec : Prop :=
  ∀ n, P1313394877496160231.a n = A025766 n

end A025766

/-! ## A025766.P7461163382694593640

`A025873(4*n)`
-/

namespace A025766.P7461163382694593640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025873 (4 * n)

end

end A025766.P7461163382694593640

namespace A025766

/-- `A025873(4*n)` -/
def P7461163382694593640.Spec : Prop :=
  ∀ n, P7461163382694593640.a n = A025766 n

end A025766

/-! ## A025766.P7385362875730195814

`A025894(5*n)`
-/

namespace A025766.P7385362875730195814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025894 (5 * n)

end

end A025766.P7385362875730195814

namespace A025766

/-- `A025894(5*n)` -/
def P7385362875730195814.Spec : Prop :=
  ∀ n, P7385362875730195814.a n = A025766 n

end A025766

/-! ## A025766.P18345293205765004460

`A025907(6*n)`
-/

namespace A025766.P18345293205765004460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (6 * n)

end

end A025766.P18345293205765004460

namespace A025766

/-- `A025907(6*n)` -/
def P18345293205765004460.Spec : Prop :=
  ∀ n, P18345293205765004460.a n = A025766 n

end A025766

/-!
# A025767: Expansion of 1/((1-x)*(1-x^3)*(1-x^4)).

The programs for A025767, the canonical program `A025767.P1204197701344899179` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025767 has offset 0).

The definition of A025767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^3+x^5+x^7-x^8))` (program `A025767.P1204197701344899179`, by `A025767.P1204197701344899179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025767.P556025640702674813

`round(((n+4)²-1)/24)`
-/

namespace A025767.P556025640702674813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 4) ^ 2 : ℤ) - 1 : ℚ) / 24)

end

end A025767.P556025640702674813

namespace A025767

/-- `round(((n+4)²-1)/24)` -/
def P556025640702674813.Spec : Prop :=
  ∀ n, P556025640702674813.a n = A025767 n

end A025767

/-! ## A025767.P1204197701344899179

`ogf(1/(1-x-x^3+x^5+x^7-x^8))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025767

/-- `ogf(1/(1-x-x^3+x^5+x^7-x^8))` -/
def P1204197701344899179.Spec : Prop :=
  ∀ n, P1204197701344899179.a n = A025767 n

theorem P1204197701344899179.correct : P1204197701344899179.Spec := by
  intro n
  simp only [A025767]

end A025767

/-! ## A025767.P3287852223516138184

`a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=3, a(6)=4, a(7)=5`
-/

namespace A025767.P3287852223516138184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 3, 4, 5] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 5) - a (n - 7) + a (n - 8)

end

end A025767.P3287852223516138184

namespace A025767

/-- `a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` -/
def P3287852223516138184.Spec : Prop :=
  ∀ n, P3287852223516138184.a n = A025767 n

end A025767

/-! ## A025767.P7759204542429397534

`n²/24+n/3+83/144+(-1)^n/16+A061347(n+1)/9+A056594(n)/4`
-/

namespace A025767.P7759204542429397534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 24 + (n : ℚ) / 3 + (83 : ℚ) / 144 + ((-1) ^ n : ℚ) / 16 + (A061347 (n + 1) : ℚ) / 9 + (A056594 n : ℚ) / 4

end

end A025767.P7759204542429397534

namespace A025767

/-- `n²/24+n/3+83/144+(-1)^n/16+A061347(n+1)/9+A056594(n)/4` -/
def P7759204542429397534.Spec : Prop :=
  ∀ n, P7759204542429397534.a n = (A025767 n : ℚ)

end A025767

/-! ## A025767.P4069512818937401951

`∑[A008679(n)]`
-/

namespace A025767.P4069512818937401951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025767.P4069512818937401951

namespace A025767

/-- `∑[A008679(n)]` -/
def P4069512818937401951.Spec : Prop :=
  ∀ n, P4069512818937401951.a n = A025767 n

end A025767

/-! ## A025767.P17075802513200622293

`A001399(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A025767.P17075802513200622293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001399 n - a (n - 2)

end

end A025767.P17075802513200622293

namespace A025767

/-- `A001399(n)-a(n-2)` -/
def P17075802513200622293.Spec : Prop :=
  ∀ n, P17075802513200622293.a n = A025767 n

end A025767

/-! ## A025767.P2585323583986196692

`A008621(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A025767.P2585323583986196692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A008621 n + a (n - 3)

end

end A025767.P2585323583986196692

namespace A025767

/-- `A008621(n)+a(n-3)` -/
def P2585323583986196692.Spec : Prop :=
  ∀ n, P2585323583986196692.a n = A025767 n

end A025767

/-! ## A025767.P3397787887454807682

`A008747(n)-A001971(n)`
-/

namespace A025767.P3397787887454807682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008747 n - A001971 n

end

end A025767.P3397787887454807682

namespace A025767

/-- `A008747(n)-A001971(n)` -/
def P3397787887454807682.Spec : Prop :=
  ∀ n, P3397787887454807682.a n = A025767 n

end A025767

/-! ## A025767.P2019203063948339620

`A008642(n)-A005044(n+1)`
-/

namespace A025767.P2019203063948339620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n - A005044 (n + 1)

end

end A025767.P2019203063948339620

namespace A025767

/-- `A008642(n)-A005044(n+1)` -/
def P2019203063948339620.Spec : Prop :=
  ∀ n, P2019203063948339620.a n = A025767 n

end A025767

/-! ## A025767.P15135920493101762713

`2*A001400(n)-A266769(n)`
-/

namespace A025767.P15135920493101762713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001400 n - A266769 n

end

end A025767.P15135920493101762713

namespace A025767

/-- `2*A001400(n)-A266769(n)` -/
def P15135920493101762713.Spec : Prop :=
  ∀ n, P15135920493101762713.a n = A025767 n

end A025767

/-! ## A025767.P12793016017603866384

`A266755(abs(1-n))+A266755(n)`
-/

namespace A025767.P12793016017603866384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 |1 - (n : ℤ)|.toNat + A266755 n

end

end A025767.P12793016017603866384

namespace A025767

/-- `A266755(abs(1-n))+A266755(n)` -/
def P12793016017603866384.Spec : Prop :=
  ∀ n, P12793016017603866384.a n = A025767 n

end A025767

/-! ## A025767.P15422759437600472283

`A001972(n+1)-A001399(n+1)`
-/

namespace A025767.P15422759437600472283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (n + 1) - A001399 (n + 1)

end

end A025767.P15422759437600472283

namespace A025767

/-- `A001972(n+1)-A001399(n+1)` -/
def P15422759437600472283.Spec : Prop :=
  ∀ n, P15422759437600472283.a n = A025767 n

end A025767

/-! ## A025767.P12995835336689204301

`A001399(n)-(A005044(n+1)+A005044(n))`
-/

namespace A025767.P12995835336689204301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - (A005044 (n + 1) + A005044 n)

end

end A025767.P12995835336689204301

namespace A025767

/-- `A001399(n)-(A005044(n+1)+A005044(n))` -/
def P12995835336689204301.Spec : Prop :=
  ∀ n, P12995835336689204301.a n = A025767 n

end A025767

/-! ## A025767.P1598783535996863122

`A005044(n+1)+A112689(n+1)+A005044(n)`
-/

namespace A025767.P1598783535996863122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + (A112689 (n + 1) + A005044 n)

end

end A025767.P1598783535996863122

namespace A025767

/-- `A005044(n+1)+A112689(n+1)+A005044(n)` -/
def P1598783535996863122.Spec : Prop :=
  ∀ n, P1598783535996863122.a n = A025767 n

end A025767

/-! ## A025767.P6916223873367211541

`A001972(n+1)+A000601(n)-A000601(n+1)`
-/

namespace A025767.P6916223873367211541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (n + 1) + (A000601 n - A000601 (n + 1))

end

end A025767.P6916223873367211541

namespace A025767

/-- `A001972(n+1)+A000601(n)-A000601(n+1)` -/
def P6916223873367211541.Spec : Prop :=
  ∀ n, P6916223873367211541.a n = A025767 n

end A025767

/-! ## A025767.P7067554997713018669

`ceil(∑[A002265(n+1)+1]/3)`
-/

namespace A025767.P7067554997713018669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A025767.P7067554997713018669

namespace A025767

/-- `ceil(∑[A002265(n+1)+1]/3)` -/
def P7067554997713018669.Spec : Prop :=
  ∀ n, P7067554997713018669.a n = A025767 n

end A025767

/-! ## A025767.P5182598617359496676

`A266755(n)+A005044(n+2)`
-/

namespace A025767.P5182598617359496676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n + A005044 (n + 2)

end

end A025767.P5182598617359496676

namespace A025767

/-- `A266755(n)+A005044(n+2)` -/
def P5182598617359496676.Spec : Prop :=
  ∀ n, P5182598617359496676.a n = A025767 n

end A025767

/-! ## A025767.P7311047696376503846

`A001400(n)-A026810(n+2)`
-/

namespace A025767.P7311047696376503846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A026810 (n + 2)

end

end A025767.P7311047696376503846

namespace A025767

/-- `A001400(n)-A026810(n+2)` -/
def P7311047696376503846.Spec : Prop :=
  ∀ n, P7311047696376503846.a n = A025767 n

end A025767

/-! ## A025767.P6808711467670356047

`A008762(n+1)-A008764(n+1)`
-/

namespace A025767.P6808711467670356047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008762 (n + 1) - A008764 (n + 1)

end

end A025767.P6808711467670356047

namespace A025767

/-- `A008762(n+1)-A008764(n+1)` -/
def P6808711467670356047.Spec : Prop :=
  ∀ n, P6808711467670356047.a n = A025767 n

end A025767

/-! ## A025767.P11123297140278501568

`A008642(n+1)-A266755(n+1)`
-/

namespace A025767.P11123297140278501568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (n + 1) - A266755 (n + 1)

end

end A025767.P11123297140278501568

namespace A025767

/-- `A008642(n+1)-A266755(n+1)` -/
def P11123297140278501568.Spec : Prop :=
  ∀ n, P11123297140278501568.a n = A025767 n

end A025767

/-!
# A025768: Expansion of 1/((1-x)*(1-x^3)*(1-x^7)).

The programs for A025768, the canonical program `A025768.P11169046664726415632` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025768 has offset 0).

The definition of A025768 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^3+x^4-x^7+x^8+x^10-x^11))` (program `A025768.P11169046664726415632`, by `A025768.P11169046664726415632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025768.P3343966188068254414

`round((n+3)*(n+8)/42)`
-/

namespace A025768.P3343966188068254414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) * (n + 8) : ℚ) / 42)

end

end A025768.P3343966188068254414

namespace A025768

/-- `round((n+3)*(n+8)/42)` -/
def P3343966188068254414.Spec : Prop :=
  ∀ n, P3343966188068254414.a n = A025768 n

end A025768

/-! ## A025768.P11169046664726415632

`ogf(1/(1-x-x^3+x^4-x^7+x^8+x^10-x^11))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025768

/-- `ogf(1/(1-x-x^3+x^4-x^7+x^8+x^10-x^11))` -/
def P11169046664726415632.Spec : Prop :=
  ∀ n, P11169046664726415632.a n = A025768 n

theorem P11169046664726415632.correct : P11169046664726415632.Spec := by
  intro n
  simp only [A025768]

end A025768

/-! ## A025768.P8108544160575262509

`floor((A000217(n+5)+6)/21)`
-/

namespace A025768.P8108544160575262509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (n + 5) + 6 : ℚ) / 21⌋

end

end A025768.P8108544160575262509

namespace A025768

/-- `floor((A000217(n+5)+6)/21)` -/
def P8108544160575262509.Spec : Prop :=
  ∀ n, P8108544160575262509.a n = A025768 n

end A025768

/-! ## A025768.P12706180371592806302

`floor((Δ[A023545(n+1)]+10)/21)`
-/

namespace A025768.P12706180371592806302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n + 10 : ℚ) / 21⌋

end

end A025768.P12706180371592806302

namespace A025768

/-- `floor((Δ[A023545(n+1)]+10)/21)` -/
def P12706180371592806302.Spec : Prop :=
  ∀ n, P12706180371592806302.a n = A025768 n

end A025768

/-! ## A025768.P8896714634900428834

`floor(A166136(n+4)/21)`
-/

namespace A025768.P8896714634900428834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166136 (n + 4) : ℚ) / 21⌋

end

end A025768.P8896714634900428834

namespace A025768

/-- `floor(A166136(n+4)/21)` -/
def P8896714634900428834.Spec : Prop :=
  ∀ n, P8896714634900428834.a n = A025768 n

end A025768

/-! ## A025768.P7698433114614144555

`floor((A000096(n+4)+7)/21)`
-/

namespace A025768.P7698433114614144555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000096 (n + 4) + 7 : ℚ) / 21⌋

end

end A025768.P7698433114614144555

namespace A025768

/-- `floor((A000096(n+4)+7)/21)` -/
def P7698433114614144555.Spec : Prop :=
  ∀ n, P7698433114614144555.a n = A025768 n

end A025768

/-! ## A025768.P9943294825366927416

`floor((A046691(n+3)+10)/21)`
-/

namespace A025768.P9943294825366927416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046691 (n + 3) + 10 : ℚ) / 21⌋

end

end A025768.P9943294825366927416

namespace A025768

/-- `floor((A046691(n+3)+10)/21)` -/
def P9943294825366927416.Spec : Prop :=
  ∀ n, P9943294825366927416.a n = A025768 n

end A025768

/-! ## A025768.P9514733102648043900

`floor((A167499(n+4)+1)/21)`
-/

namespace A025768.P9514733102648043900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167499 (n + 4) + 1 : ℚ) / 21⌋

end

end A025768.P9514733102648043900

namespace A025768

/-- `floor((A167499(n+4)+1)/21)` -/
def P9514733102648043900.Spec : Prop :=
  ∀ n, P9514733102648043900.a n = A025768 n

end A025768

/-! ## A025768.P8708820088033128503

`floor((A000124(n+5)+5)/21)`
-/

namespace A025768.P8708820088033128503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000124 (n + 5) + 5 : ℚ) / 21⌋

end

end A025768.P8708820088033128503

namespace A025768

/-- `floor((A000124(n+5)+5)/21)` -/
def P8708820088033128503.Spec : Prop :=
  ∀ n, P8708820088033128503.a n = A025768 n

end A025768

/-! ## A025768.P2133373386638744670

`A025813(2*n)`
-/

namespace A025768.P2133373386638744670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025813 (2 * n)

end

end A025768.P2133373386638744670

namespace A025768

/-- `A025813(2*n)` -/
def P2133373386638744670.Spec : Prop :=
  ∀ n, P2133373386638744670.a n = A025768 n

end A025768

/-! ## A025768.P17100584090287774626

`A025788(Δ[n²])`
-/

namespace A025768.P17100584090287774626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025788 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A025768.P17100584090287774626

namespace A025768

/-- `A025788(Δ[n²])` -/
def P17100584090287774626.Spec : Prop :=
  ∀ n, P17100584090287774626.a n = A025768 n

end A025768

/-! ## A025768.P15378611128527395161

`∑[A008615(A194515(2*n+1)+1)]`
-/

namespace A025768.P15378611128527395161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A194515 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025768.P15378611128527395161

namespace A025768

/-- `∑[A008615(A194515(2*n+1)+1)]` -/
def P15378611128527395161.Spec : Prop :=
  ∀ n, P15378611128527395161.a n = A025768 n

end A025768

/-! ## A025768.P16172701179062675439

`A025845(2*n+1)+A008622(2*n)`
-/

namespace A025768.P16172701179062675439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 (2 * n + 1) + A008622 (2 * n)

end

end A025768.P16172701179062675439

namespace A025768

/-- `A025845(2*n+1)+A008622(2*n)` -/
def P16172701179062675439.Spec : Prop :=
  ∀ n, P16172701179062675439.a n = A025768 n

end A025768

/-! ## A025768.P925797509966249783

`A025820(2*n+1)+A025820(2*n)`
-/

namespace A025768.P925797509966249783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025820 (2 * n + 1) + A025820 (2 * n)

end

end A025768.P925797509966249783

namespace A025768

/-- `A025820(2*n+1)+A025820(2*n)` -/
def P925797509966249783.Spec : Prop :=
  ∀ n, P925797509966249783.a n = A025768 n

end A025768

/-! ## A025768.P425550713231695113

`A025829(2*n+1)+A008622(2*n)-A008622(2*n+1)`
-/

namespace A025768.P425550713231695113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025829 (2 * n + 1) + (A008622 (2 * n) - A008622 (2 * n + 1))

end

end A025768.P425550713231695113

namespace A025768

/-- `A025829(2*n+1)+A008622(2*n)-A008622(2*n+1)` -/
def P425550713231695113.Spec : Prop :=
  ∀ n, P425550713231695113.a n = A025768 n

end A025768

/-! ## A025768.P18003650200623869996

`A025897(2*n+1)+A029214(2*n)-A029214(2*n+1)`
-/

namespace A025768.P18003650200623869996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (2 * n + 1) + (A029214 (2 * n) - A029214 (2 * n + 1))

end

end A025768.P18003650200623869996

namespace A025768

/-- `A025897(2*n+1)+A029214(2*n)-A029214(2*n+1)` -/
def P18003650200623869996.Spec : Prop :=
  ∀ n, P18003650200623869996.a n = A025768 n

end A025768

/-! ## A025768.P571548141445145973

`A029347(2*n+1)+A029214(2*n)-A029181(2*n+1)`
-/

namespace A025768.P571548141445145973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (2 * n + 1) + (A029214 (2 * n) - A029181 (2 * n + 1))

end

end A025768.P571548141445145973

namespace A025768

/-- `A029347(2*n+1)+A029214(2*n)-A029181(2*n+1)` -/
def P571548141445145973.Spec : Prop :=
  ∀ n, P571548141445145973.a n = A025768 n

end A025768

/-! ## A025768.P8049034451533151251

`∑[A008617(n)]-A008622(2*n+3)`
-/

namespace A025768.P8049034451533151251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008622 (2 * n + 3)

end

end A025768.P8049034451533151251

namespace A025768

/-- `∑[A008617(n)]-A008622(2*n+3)` -/
def P8049034451533151251.Spec : Prop :=
  ∀ n, P8049034451533151251.a n = A025768 n

end A025768

/-! ## A025768.P3916650618307960550

`A029178(2*n)-A029178(2*n+3)`
-/

namespace A025768.P3916650618307960550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029178 (2 * n) - A029178 (2 * n + 3)

end

end A025768.P3916650618307960550

namespace A025768

/-- `A029178(2*n)-A029178(2*n+3)` -/
def P3916650618307960550.Spec : Prop :=
  ∀ n, P3916650618307960550.a n = A025768 n

end A025768

/-! ## A025768.P3514022918737601104

`A025845(2*n+1)+A025845(2*n+3)`
-/

namespace A025768.P3514022918737601104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 (2 * n + 1) + A025845 (2 * n + 3)

end

end A025768.P3514022918737601104

namespace A025768

/-- `A025845(2*n+1)+A025845(2*n+3)` -/
def P3514022918737601104.Spec : Prop :=
  ∀ n, P3514022918737601104.a n = A025768 n

end A025768

/-!
# A025769: Expansion of 1/((1-x)*(1-x^3)*(1-x^8)).

The programs for A025769, the canonical program `A025769.P8103409677694595409` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025769 has offset 0).

The definition of A025769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^3+x^4-x^8+x^9+x^11-x^12))` (program `A025769.P8103409677694595409`, by `A025769.P8103409677694595409.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025769.P17267705515429198856

`floor(((n+6)²/16+1)/3)`
-/

namespace A025769.P17267705515429198856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 6) ^ 2 : ℚ) / 16 + 1) / 3⌋

end

end A025769.P17267705515429198856

namespace A025769

/-- `floor(((n+6)²/16+1)/3)` -/
def P17267705515429198856.Spec : Prop :=
  ∀ n, P17267705515429198856.a n = A025769 n

end A025769

/-! ## A025769.P8103409677694595409

`ogf(1/(1-x-x^3+x^4-x^8+x^9+x^11-x^12))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025769

/-- `ogf(1/(1-x-x^3+x^4-x^8+x^9+x^11-x^12))` -/
def P8103409677694595409.Spec : Prop :=
  ∀ n, P8103409677694595409.a n = A025769 n

theorem P8103409677694595409.correct : P8103409677694595409.Spec := by
  intro n
  simp only [A025769]

end A025769

/-! ## A025769.P962011487605129731

`a(n-3)+floor(n/8)+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A025769.P962011487605129731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + (⌊(n : ℚ) / 8⌋ + 1)

end

end A025769.P962011487605129731

namespace A025769

/-- `a(n-3)+floor(n/8)+1` -/
def P962011487605129731.Spec : Prop :=
  ∀ n, P962011487605129731.a n = A025769 n

end A025769

/-! ## A025769.P14173925438585325673

`∑[floor(sqrt(A025853(n)))]`
-/

namespace A025769.P14173925438585325673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A025853 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025769.P14173925438585325673

namespace A025769

/-- `∑[floor(sqrt(A025853(n)))]` -/
def P14173925438585325673.Spec : Prop :=
  ∀ n, P14173925438585325673.a n = A025769 n

end A025769

/-! ## A025769.P10392816407061982208

`∑[abs(∑[A291984(n)])]`
-/

namespace A025769.P10392816407061982208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025769.P10392816407061982208

namespace A025769

/-- `∑[abs(∑[A291984(n)])]` -/
def P10392816407061982208.Spec : Prop :=
  ∀ n, P10392816407061982208.a n = A025769 n

end A025769

/-! ## A025769.P1649783977271837017

`round(A024206(n+5)/12)`
-/

namespace A025769.P1649783977271837017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024206 (n + 5) : ℚ) / 12)

end

end A025769.P1649783977271837017

namespace A025769

/-- `round(A024206(n+5)/12)` -/
def P1649783977271837017.Spec : Prop :=
  ∀ n, P1649783977271837017.a n = A025769 n

end A025769

/-! ## A025769.P17176484670218524122

`∑[A033183(∑[char[2*n]]+n-1)]`
-/

namespace A025769.P17176484670218524122
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025769.P17176484670218524122

namespace A025769

/-- `∑[A033183(∑[char[2*n]]+n-1)]` -/
def P17176484670218524122.Spec : Prop :=
  ∀ n, P17176484670218524122.a n = A025769 n

end A025769

/-! ## A025769.P3863894241308624043

`A025850(3*n)`
-/

namespace A025769.P3863894241308624043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025850 (3 * n)

end

end A025769.P3863894241308624043

namespace A025769

/-- `A025850(3*n)` -/
def P3863894241308624043.Spec : Prop :=
  ∀ n, P3863894241308624043.a n = A025769 n

end A025769

/-! ## A025769.P14933228293492944148

`∑[A000196(A025853(n))]`
-/

namespace A025769.P14933228293492944148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A025853 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025769.P14933228293492944148

namespace A025769

/-- `∑[A000196(A025853(n))]` -/
def P14933228293492944148.Spec : Prop :=
  ∀ n, P14933228293492944148.a n = A025769 n

end A025769

/-! ## A025769.P7777573194773194327

`A004526(Δ[A008764(n+2)])`
-/

namespace A025769.P7777573194773194327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008764 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A025769.P7777573194773194327

namespace A025769

/-- `A004526(Δ[A008764(n+2)])` -/
def P7777573194773194327.Spec : Prop :=
  ∀ n, P7777573194773194327.a n = A025769 n

end A025769

/-! ## A025769.P18397993049733213055

`A008620(A008726(n+1)-2)`
-/

namespace A025769.P18397993049733213055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008726 (n + 1) - 2).toNat

end

end A025769.P18397993049733213055

namespace A025769

/-- `A008620(A008726(n+1)-2)` -/
def P18397993049733213055.Spec : Prop :=
  ∀ n, P18397993049733213055.a n = A025769 n

end A025769

/-! ## A025769.P14418508485085422826

`A002264(A008726(n+1)+1)`
-/

namespace A025769.P14418508485085422826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008726 (n + 1) + 1).toNat

end

end A025769.P14418508485085422826

namespace A025769

/-- `A002264(A008726(n+1)+1)` -/
def P14418508485085422826.Spec : Prop :=
  ∀ n, P14418508485085422826.a n = A025769 n

end A025769

/-! ## A025769.P5981953226850006221

`A002264(A118729(n+1)+n+3)`
-/

namespace A025769.P5981953226850006221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A118729 (n + 1) + (n + 3 : ℤ)).toNat

end

end A025769.P5981953226850006221

namespace A025769

/-- `A002264(A118729(n+1)+n+3)` -/
def P5981953226850006221.Spec : Prop :=
  ∀ n, P5981953226850006221.a n = A025769 n

end A025769

/-! ## A025769.P4419673627061946062

`A008621(round(n²/12)+n)`
-/

namespace A025769.P4419673627061946062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) + (n : ℤ)).toNat

end

end A025769.P4419673627061946062

namespace A025769

/-- `A008621(round(n²/12)+n)` -/
def P4419673627061946062.Spec : Prop :=
  ∀ n, P4419673627061946062.a n = A025769 n

end A025769

/-! ## A025769.P14470415587259151008

`A002265(round(n²/12)+n)+1`
-/

namespace A025769.P14470415587259151008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) + (n : ℤ)).toNat + 1

end

end A025769.P14470415587259151008

namespace A025769

/-- `A002265(round(n²/12)+n)+1` -/
def P14470415587259151008.Spec : Prop :=
  ∀ n, P14470415587259151008.a n = A025769 n

end A025769

/-! ## A025769.P855911895636424905

`A110655(∑[A103221(n+3)])`
-/

namespace A025769.P855911895636424905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025769.P855911895636424905

namespace A025769

/-- `A110655(∑[A103221(n+3)])` -/
def P855911895636424905.Spec : Prop :=
  ∀ n, P855911895636424905.a n = A025769 n

end A025769

/-! ## A025769.P18365475507852476759

`A110655(A005044(2*n)+n+1)`
-/

namespace A025769.P18365475507852476759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A005044 (2 * n) + (n + 1 : ℤ)).toNat

end

end A025769.P18365475507852476759

namespace A025769

/-- `A110655(A005044(2*n)+n+1)` -/
def P18365475507852476759.Spec : Prop :=
  ∀ n, P18365475507852476759.a n = A025769 n

end A025769

/-! ## A025769.P18025124141188171481

`A065033(A065033(A014591(n)+n))`
-/

namespace A025769.P18025124141188171481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 (A014591 n + (n : ℤ)).toNat).toNat

end

end A025769.P18025124141188171481

namespace A025769

/-- `A065033(A065033(A014591(n)+n))` -/
def P18025124141188171481.Spec : Prop :=
  ∀ n, P18025124141188171481.a n = A025769 n

end A025769

/-! ## A025769.P7145106309994416953

`A110654(A110654(A005044(2*n)+n+1))`
-/

namespace A025769.P7145106309994416953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (A005044 (2 * n) + (n + 1 : ℤ)).toNat).toNat

end

end A025769.P7145106309994416953

namespace A025769

/-- `A110654(A110654(A005044(2*n)+n+1))` -/
def P7145106309994416953.Spec : Prop :=
  ∀ n, P7145106309994416953.a n = A025769 n

end A025769

/-! ## A025769.P13902860031058549816

`A008615(∑[floor((n+3)/4)]+n+2)`
-/

namespace A025769.P13902860031058549816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)).toNat

end

end A025769.P13902860031058549816

namespace A025769

/-- `A008615(∑[floor((n+3)/4)]+n+2)` -/
def P13902860031058549816.Spec : Prop :=
  ∀ n, P13902860031058549816.a n = A025769 n

end A025769

/-!
# A025770: Expansion of 1/((1-x)*(1-x^3)*(1-x^10)).

The programs for A025770, the canonical program `A025770.P11701162177145403894` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025770 has offset 0).

The definition of A025770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^3+x^4-x^10+x^11+x^13-x^14))` (program `A025770.P11701162177145403894`, by `A025770.P11701162177145403894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025770.P11701162177145403894

`ogf(1/(1-x-x^3+x^4-x^10+x^11+x^13-x^14))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025770

/-- `ogf(1/(1-x-x^3+x^4-x^10+x^11+x^13-x^14))` -/
def P11701162177145403894.Spec : Prop :=
  ∀ n, P11701162177145403894.a n = A025770 n

theorem P11701162177145403894.correct : P11701162177145403894.Spec := by
  intro n
  simp only [A025770]

end A025770

/-! ## A025770.P9671219565476953868

`floor((3*n²+42*n+196-40*cos(2*(n+1)*π/3))/180)`
-/

namespace A025770.P9671219565476953868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * n ^ 2 + 42 * n + 196 : ℝ) - 40 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 180⌋

end

end A025770.P9671219565476953868

namespace A025770

/-- `floor((3*n²+42*n+196-40*cos(2*(n+1)*π/3))/180)` -/
def P9671219565476953868.Spec : Prop :=
  ∀ n, P9671219565476953868.a n = A025770 n

end A025770

/-! ## A025770.P13938798705328441078

`a(n-3)+ceil((n+1)/10)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A025770.P13938798705328441078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + ⌈(n + 1 : ℚ) / 10⌉

end

end A025770.P13938798705328441078

namespace A025770

/-- `a(n-3)+ceil((n+1)/10)` -/
def P13938798705328441078.Spec : Prop :=
  ∀ n, P13938798705328441078.a n = A025770 n

end A025770

/-! ## A025770.P17522714753798623194

`∑[A008676(abs(A097140(n)))]`
-/

namespace A025770.P17522714753798623194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 |A097140 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025770.P17522714753798623194

namespace A025770

/-- `∑[A008676(abs(A097140(n)))]` -/
def P17522714753798623194.Spec : Prop :=
  ∀ n, P17522714753798623194.a n = A025770 n

end A025770

/-! ## A025770.P4631366455316034789

`floor((A008728(n+1)+1)/3)`
-/

namespace A025770.P4631366455316034789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008728 (n + 1) + 1 : ℚ) / 3⌋

end

end A025770.P4631366455316034789

namespace A025770

/-- `floor((A008728(n+1)+1)/3)` -/
def P4631366455316034789.Spec : Prop :=
  ∀ n, P4631366455316034789.a n = A025770 n

end A025770

/-! ## A025770.P4368551392525558709

`∑[A033182(A004442(n+1))]`
-/

namespace A025770.P4368551392525558709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A004442 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025770.P4368551392525558709

namespace A025770

/-- `∑[A033182(A004442(n+1))]` -/
def P4368551392525558709.Spec : Prop :=
  ∀ n, P4368551392525558709.a n = A025770 n

end A025770

/-! ## A025770.P15712994594126947228

`∑[A033182(A010673(n)+n)]`
-/

namespace A025770.P15712994594126947228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A010673 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025770.P15712994594126947228

namespace A025770

/-- `∑[A033182(A010673(n)+n)]` -/
def P15712994594126947228.Spec : Prop :=
  ∀ n, P15712994594126947228.a n = A025770 n

end A025770

/-! ## A025770.P6771920225454079214

`∑[A033182(A165754(A004442(n)))]`
-/

namespace A025770.P6771920225454079214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A165754 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025770.P6771920225454079214

namespace A025770

/-- `∑[A033182(A165754(A004442(n)))]` -/
def P6771920225454079214.Spec : Prop :=
  ∀ n, P6771920225454079214.a n = A025770 n

end A025770

/-! ## A025770.P12562098791046708746

`∑[A033183(A004442(A304804(n)))]`
-/

namespace A025770.P12562098791046708746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A004442 (A304804 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025770.P12562098791046708746

namespace A025770

/-- `∑[A033183(A004442(A304804(n)))]` -/
def P12562098791046708746.Spec : Prop :=
  ∀ n, P12562098791046708746.a n = A025770 n

end A025770

/-! ## A025770.P1372917459825572247

`A025854(3*n)`
-/

namespace A025770.P1372917459825572247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025854 (3 * n)

end

end A025770.P1372917459825572247

namespace A025770

/-- `A025854(3*n)` -/
def P1372917459825572247.Spec : Prop :=
  ∀ n, P1372917459825572247.a n = A025770 n

end A025770

/-! ## A025770.P8661163426435857965

`A214772(6*n)`
-/

namespace A025770.P8661163426435857965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (6 * n)

end

end A025770.P8661163426435857965

namespace A025770

/-- `A214772(6*n)` -/
def P8661163426435857965.Spec : Prop :=
  ∀ n, P8661163426435857965.a n = A025770 n

end A025770

/-! ## A025770.P4140685346094181811

`A214772(A008458(n))+A000007(n)`
-/

namespace A025770.P4140685346094181811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (A008458 n).toNat + A000007 n

end

end A025770.P4140685346094181811

namespace A025770

/-- `A214772(A008458(n))+A000007(n)` -/
def P4140685346094181811.Spec : Prop :=
  ∀ n, P4140685346094181811.a n = A025770 n

end A025770

/-! ## A025770.P14528893983759656800

`A002264(A008728(n+1)+1)`
-/

namespace A025770.P14528893983759656800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008728 (n + 1) + 1).toNat

end

end A025770.P14528893983759656800

namespace A025770

/-- `A002264(A008728(n+1)+1)` -/
def P14528893983759656800.Spec : Prop :=
  ∀ n, P14528893983759656800.a n = A025770 n

end A025770

/-! ## A025770.P5367476696573905668

`A008620(A008728(n+1)-2)`
-/

namespace A025770.P5367476696573905668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008728 (n + 1) - 2).toNat

end

end A025770.P5367476696573905668

namespace A025770

/-- `A008620(A008728(n+1)-2)` -/
def P5367476696573905668.Spec : Prop :=
  ∀ n, P5367476696573905668.a n = A025770 n

end A025770

/-! ## A025770.P9612177504685200993

`A033182(A017041(n)+A007590(n))`
-/

namespace A025770.P9612177504685200993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A017041 n + A007590 n).toNat

end

end A025770.P9612177504685200993

namespace A025770

/-- `A033182(A017041(n)+A007590(n))` -/
def P9612177504685200993.Spec : Prop :=
  ∀ n, P9612177504685200993.a n = A025770 n

end A025770

/-!
# A025771: Expansion of 1/((1-x)*(1-x^3)*(1-x^11)).

The programs for A025771, the canonical program `A025771.P4156115615613275506` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025771 has offset 0).

The definition of A025771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^3+x^4-x^11+x^12+x^14-x^15))` (program `A025771.P4156115615613275506`, by `A025771.P4156115615613275506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025771.P17220864365066845860

`floor((n²+15*n+78)/66)`
-/

namespace A025771.P17220864365066845860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 + 15 * n + 78 : ℚ) / 66⌋

end

end A025771.P17220864365066845860

namespace A025771

/-- `floor((n²+15*n+78)/66)` -/
def P17220864365066845860.Spec : Prop :=
  ∀ n, P17220864365066845860.a n = A025771 n

end A025771

/-! ## A025771.P4156115615613275506

`ogf(1/(1-x-x^3+x^4-x^11+x^12+x^14-x^15))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025771

/-- `ogf(1/(1-x-x^3+x^4-x^11+x^12+x^14-x^15))` -/
def P4156115615613275506.Spec : Prop :=
  ∀ n, P4156115615613275506.a n = A025771 n

theorem P4156115615613275506.correct : P4156115615613275506.Spec := by
  intro n
  simp only [A025771]

end A025771

/-! ## A025771.P15905321429084953895

`round(n²/66+5*n/22+68/99+A099837(n+3)/9)`
-/

namespace A025771.P15905321429084953895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 66 + (5 * n : ℚ) / 22 + (68 : ℚ) / 99 + (A099837 (n + 3) : ℚ) / 9)

end

end A025771.P15905321429084953895

namespace A025771

/-- `round(n²/66+5*n/22+68/99+A099837(n+3)/9)` -/
def P15905321429084953895.Spec : Prop :=
  ∀ n, P15905321429084953895.a n = A025771 n

end A025771

/-! ## A025771.P6760937997089023198

`A025815(2*n)`
-/

namespace A025771.P6760937997089023198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025815 (2 * n)

end

end A025771.P6760937997089023198

namespace A025771

/-- `A025815(2*n)` -/
def P6760937997089023198.Spec : Prop :=
  ∀ n, P6760937997089023198.a n = A025771 n

end A025771

/-! ## A025771.P9365610103096862499

`A029043(n)-A029224(2*n+1)`
-/

namespace A025771.P9365610103096862499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029043 n - A029224 (2 * n + 1)

end

end A025771.P9365610103096862499

namespace A025771

/-- `A029043(n)-A029224(2*n+1)` -/
def P9365610103096862499.Spec : Prop :=
  ∀ n, P9365610103096862499.a n = A025771 n

end A025771

/-! ## A025771.P2404454570765433632

`∑[A025839(n)]-A029224(2*n+1)`
-/

namespace A025771.P2404454570765433632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029224 (2 * n + 1)

end

end A025771.P2404454570765433632

namespace A025771

/-- `∑[A025839(n)]-A029224(2*n+1)` -/
def P2404454570765433632.Spec : Prop :=
  ∀ n, P2404454570765433632.a n = A025771 n

end A025771

/-! ## A025771.P12360009126665784920

`A029224(2*n)-A029224(2*n+1)`
-/

namespace A025771.P12360009126665784920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (2 * n) - A029224 (2 * n + 1)

end

end A025771.P12360009126665784920

namespace A025771

/-- `A029224(2*n)-A029224(2*n+1)` -/
def P12360009126665784920.Spec : Prop :=
  ∀ n, P12360009126665784920.a n = A025771 n

end A025771

/-! ## A025771.P11815002025147362039

`∑[A025906(2*n)-A025906(2*n+1)]`
-/

namespace A025771.P11815002025147362039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 (2 * n) - A025906 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025771.P11815002025147362039

namespace A025771

/-- `∑[A025906(2*n)-A025906(2*n+1)]` -/
def P11815002025147362039.Spec : Prop :=
  ∀ n, P11815002025147362039.a n = A025771 n

end A025771

/-! ## A025771.P11955455602343159735

`A025907(2*n+1)+A029225(2*n)-A029225(2*n+1)`
-/

namespace A025771.P11955455602343159735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (2 * n + 1) + (A029225 (2 * n) - A029225 (2 * n + 1))

end

end A025771.P11955455602343159735

namespace A025771

/-- `A025907(2*n+1)+A029225(2*n)-A029225(2*n+1)` -/
def P11955455602343159735.Spec : Prop :=
  ∀ n, P11955455602343159735.a n = A025771 n

end A025771

/-! ## A025771.P10497924189555263078

`A029220(2*n)-A029220(2*n+3)`
-/

namespace A025771.P10497924189555263078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 (2 * n) - A029220 (2 * n + 3)

end

end A025771.P10497924189555263078

namespace A025771

/-- `A029220(2*n)-A029220(2*n+3)` -/
def P10497924189555263078.Spec : Prop :=
  ∀ n, P10497924189555263078.a n = A025771 n

end A025771

/-! ## A025771.P1789090108073618532

`A025855(3*n)`
-/

namespace A025771.P1789090108073618532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025855 (3 * n)

end

end A025771.P1789090108073618532

namespace A025771

/-- `A025855(3*n)` -/
def P1789090108073618532.Spec : Prop :=
  ∀ n, P1789090108073618532.a n = A025771 n

end A025771

/-! ## A025771.P16653196598303996051

`A025875(4*n)`
-/

namespace A025771.P16653196598303996051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 (4 * n)

end

end A025771.P16653196598303996051

namespace A025771

/-- `A025875(4*n)` -/
def P16653196598303996051.Spec : Prop :=
  ∀ n, P16653196598303996051.a n = A025771 n

end A025771

/-! ## A025771.P6990527418108316010

`A002264(A008729(n+1)+1)`
-/

namespace A025771.P6990527418108316010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008729 (n + 1) + 1).toNat

end

end A025771.P6990527418108316010

namespace A025771

/-- `A002264(A008729(n+1)+1)` -/
def P6990527418108316010.Spec : Prop :=
  ∀ n, P6990527418108316010.a n = A025771 n

end A025771

/-! ## A025771.P1279203079592014627

`A002264(A218530(n+1)+n+3)`
-/

namespace A025771.P1279203079592014627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A218530 (n + 1) + (n + 3 : ℤ)).toNat

end

end A025771.P1279203079592014627

namespace A025771

/-- `A002264(A218530(n+1)+n+3)` -/
def P1279203079592014627.Spec : Prop :=
  ∀ n, P1279203079592014627.a n = A025771 n

end A025771

/-!
# A025772: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)).

The programs for A025772, the canonical program `A025772.P5408896600384688520` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025772 has offset 0).

The definition of A025772 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^4+x^6+x^9-x^10))` (program `A025772.P5408896600384688520`, by `A025772.P5408896600384688520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025772.P5408896600384688520

`ogf(1/(1-x-x^4+x^6+x^9-x^10))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025772

/-- `ogf(1/(1-x-x^4+x^6+x^9-x^10))` -/
def P5408896600384688520.Spec : Prop :=
  ∀ n, P5408896600384688520.a n = A025772 n

theorem P5408896600384688520.correct : P5408896600384688520.Spec := by
  intro n
  simp only [A025772]

end A025772

/-! ## A025772.P10384289127980782795

`∑[floor(floor(n/4)+1-n/5)]`
-/

namespace A025772.P10384289127980782795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 4⌋ + 1 : ℚ) - (n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025772.P10384289127980782795

namespace A025772

/-- `∑[floor(floor(n/4)+1-n/5)]` -/
def P10384289127980782795.Spec : Prop :=
  ∀ n, P10384289127980782795.a n = A025772 n

end A025772

/-! ## A025772.P16168503166677225340

`a(n-1)+floor(floor(n/4)+1-n/5)` with `a(0)=1`
-/

namespace A025772.P16168503166677225340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(⌊(n : ℚ) / 4⌋ + 1 : ℚ) - (n : ℚ) / 5⌋

end

end A025772.P16168503166677225340

namespace A025772

/-- `a(n-1)+floor(floor(n/4)+1-n/5)` -/
def P16168503166677225340.Spec : Prop :=
  ∀ n, P16168503166677225340.a n = A025772 n

end A025772

/-! ## A025772.P17359291053330085362

`2*∑[A165190(n)/2]`
-/

namespace A025772.P17359291053330085362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165190 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025772.P17359291053330085362

namespace A025772

/-- `2*∑[A165190(n)/2]` -/
def P17359291053330085362.Spec : Prop :=
  ∀ n, P17359291053330085362.a n = (A025772 n : ℚ)

end A025772

/-! ## A025772.P10121614231371739906

`A000115(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A025772.P10121614231371739906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000115 n - a (n - 2)

end

end A025772.P10121614231371739906

namespace A025772

/-- `A000115(n)-a(n-2)` -/
def P10121614231371739906.Spec : Prop :=
  ∀ n, P10121614231371739906.a n = A025772 n

end A025772

/-! ## A025772.P465623582858665475

`∑[A165190(n)]%A024700(n+1)`
-/

namespace A025772.P465623582858665475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A024700 (n + 1))

end

end A025772.P465623582858665475

namespace A025772

/-- `∑[A165190(n)]%A024700(n+1)` -/
def P465623582858665475.Spec : Prop :=
  ∀ n, P465623582858665475.a n = A025772 n

end A025772

/-! ## A025772.P14781442856029875019

`A008672(n+1)-A008680(n+1)`
-/

namespace A025772.P14781442856029875019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (n + 1) - A008680 (n + 1)

end

end A025772.P14781442856029875019

namespace A025772

/-- `A008672(n+1)-A008680(n+1)` -/
def P14781442856029875019.Spec : Prop :=
  ∀ n, P14781442856029875019.a n = A025772 n

end A025772

/-! ## A025772.P16392929856751259980

`A025795(n+1)+A025795(n)-A008680(n+1)`
-/

namespace A025772.P16392929856751259980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (n + 1) + (A025795 n - A008680 (n + 1))

end

end A025772.P16392929856751259980

namespace A025772

/-- `A025795(n+1)+A025795(n)-A008680(n+1)` -/
def P16392929856751259980.Spec : Prop :=
  ∀ n, P16392929856751259980.a n = A025772 n

end A025772

/-! ## A025772.P10819903206871609843

`A008672(n+1)+A029032(n)-A029032(n+1)`
-/

namespace A025772.P10819903206871609843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (n + 1) + (A029032 n - A029032 (n + 1))

end

end A025772.P10819903206871609843

namespace A025772

/-- `A008672(n+1)+A029032(n)-A029032(n+1)` -/
def P10819903206871609843.Spec : Prop :=
  ∀ n, P10819903206871609843.a n = A025772 n

end A025772

/-! ## A025772.P8225771676688805643

`A001972(n)+A122047(n)-A122047(n+1)`
-/

namespace A025772.P8225771676688805643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n + (A122047 n - A122047 (n + 1))

end

end A025772.P8225771676688805643

namespace A025772

/-- `A001972(n)+A122047(n)-A122047(n+1)` -/
def P8225771676688805643.Spec : Prop :=
  ∀ n, P8225771676688805643.a n = A025772 n

end A025772

/-! ## A025772.P6597182940400529440

`A008672(n+1)+A008672(n)-A025767(n+1)`
-/

namespace A025772.P6597182940400529440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (n + 1) + (A008672 n - A025767 (n + 1))

end

end A025772.P6597182940400529440

namespace A025772

/-- `A008672(n+1)+A008672(n)-A025767(n+1)` -/
def P6597182940400529440.Spec : Prop :=
  ∀ n, P6597182940400529440.a n = A025772 n

end A025772

/-! ## A025772.P7113368551163505837

`A008720(n+1)+A025802(n)-A025802(n+1)`
-/

namespace A025772.P7113368551163505837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 (n + 1) + (A025802 n - A025802 (n + 1))

end

end A025772.P7113368551163505837

namespace A025772

/-- `A008720(n+1)+A025802(n)-A025802(n+1)` -/
def P7113368551163505837.Spec : Prop :=
  ∀ n, P7113368551163505837.a n = A025772 n

end A025772

/-! ## A025772.P1146664516794589558

`A025802(n+1)+A025802(n)-A165190(n+1)`
-/

namespace A025772.P1146664516794589558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 (n + 1) + (A025802 n - A165190 (n + 1))

end

end A025772.P1146664516794589558

namespace A025772

/-- `A025802(n+1)+A025802(n)-A165190(n+1)` -/
def P1146664516794589558.Spec : Prop :=
  ∀ n, P1146664516794589558.a n = A025772 n

end A025772

/-! ## A025772.P975816475245257186

`A211535(n+9)`
-/

namespace A025772.P975816475245257186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211535 (n + 9)

end

end A025772.P975816475245257186

namespace A025772

/-- `A211535(n+9)` -/
def P975816475245257186.Spec : Prop :=
  ∀ n, P975816475245257186.a n = A025772 n

end A025772

/-! ## A025772.P3812881691667407702

`A008680(2*n)+A103221(n+1)-A008680(n+1)`
-/

namespace A025772.P3812881691667407702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (2 * n) + (A103221 (n + 1) - A008680 (n + 1))

end

end A025772.P3812881691667407702

namespace A025772

/-- `A008680(2*n)+A103221(n+1)-A008680(n+1)` -/
def P3812881691667407702.Spec : Prop :=
  ∀ n, P3812881691667407702.a n = A025772 n

end A025772

/-! ## A025772.P9328815556891488454

`A025808(2*n)`
-/

namespace A025772.P9328815556891488454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025808 (2 * n)

end

end A025772.P9328815556891488454

namespace A025772

/-- `A025808(2*n)` -/
def P9328815556891488454.Spec : Prop :=
  ∀ n, P9328815556891488454.a n = A025772 n

end A025772

/-! ## A025772.P15613968648918981569

`A029173(2*n)-A029173(2*n+1)`
-/

namespace A025772.P15613968648918981569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029173 (2 * n) - A029173 (2 * n + 1)

end

end A025772.P15613968648918981569

namespace A025772

/-- `A029173(2*n)-A029173(2*n+1)` -/
def P15613968648918981569.Spec : Prop :=
  ∀ n, P15613968648918981569.a n = A025772 n

end A025772

/-! ## A025772.P930740563646023482

`(A025791(2*n)+A025789(2*n+1))/2`
-/

namespace A025772.P930740563646023482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025791 (2 * n) + A025789 (2 * n + 1) : ℚ) / 2

end

end A025772.P930740563646023482

namespace A025772

/-- `(A025791(2*n)+A025789(2*n+1))/2` -/
def P930740563646023482.Spec : Prop :=
  ∀ n, P930740563646023482.a n = (A025772 n : ℚ)

end A025772

/-! ## A025772.P8399434472918526198

`A025860(2*n+3)+A025860(2*n)`
-/

namespace A025772.P8399434472918526198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025860 (2 * n + 3) + A025860 (2 * n)

end

end A025772.P8399434472918526198

namespace A025772

/-- `A025860(2*n+3)+A025860(2*n)` -/
def P8399434472918526198.Spec : Prop :=
  ∀ n, P8399434472918526198.a n = A025772 n

end A025772

/-! ## A025772.P13284136770635199587

`A008680(A062545(n+1))-A008680(n+1)`
-/

namespace A025772.P13284136770635199587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (A062545 (n + 1)).toNat - A008680 (n + 1)

end

end A025772.P13284136770635199587

namespace A025772

/-- `A008680(A062545(n+1))-A008680(n+1)` -/
def P13284136770635199587.Spec : Prop :=
  ∀ n, P13284136770635199587.a n = A025772 n

end A025772

/-!
# A025773: Expansion of 1/((1-x)(1-x^4)(1-x^7)).

The programs for A025773, the canonical program `A025773.P11594786033480299543` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025773 has offset 0).

The definition of A025773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^4+x^5-x^7+x^8+x^11-x^12))` (program `A025773.P11594786033480299543`, by `A025773.P11594786033480299543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025773.P11594786033480299543

`ogf(1/(1-x-x^4+x^5-x^7+x^8+x^11-x^12))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025773

/-- `ogf(1/(1-x-x^4+x^5-x^7+x^8+x^11-x^12))` -/
def P11594786033480299543.Spec : Prop :=
  ∀ n, P11594786033480299543.a n = A025773 n

theorem P11594786033480299543.correct : P11594786033480299543.Spec := by
  intro n
  simp only [A025773]

end A025773

/-! ## A025773.P595649473076448291

`floor((n²+12*n+50+14*cos(n*π/2))/56)`
-/

namespace A025773.P595649473076448291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 12 * n + 50 : ℝ) + 14 * Real.cos ((n : ℝ) * Real.pi / 2)) / 56⌋

end

end A025773.P595649473076448291

namespace A025773

/-- `floor((n²+12*n+50+14*cos(n*π/2))/56)` -/
def P595649473076448291.Spec : Prop :=
  ∀ n, P595649473076448291.a n = A025773 n

end A025773

/-! ## A025773.P7208053204947255252

`A025764(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A025773.P7208053204947255252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025764 n - a (n - 2)

end

end A025773.P7208053204947255252

namespace A025773

/-- `A025764(n)-a(n-2)` -/
def P7208053204947255252.Spec : Prop :=
  ∀ n, P7208053204947255252.a n = A025773 n

end A025773

/-! ## A025773.P2311347225833514988

`A008739(n)-∑[floor((n+3)/4)]`
-/

namespace A025773.P2311347225833514988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008739 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025773.P2311347225833514988

namespace A025773

/-- `A008739(n)-∑[floor((n+3)/4)]` -/
def P2311347225833514988.Spec : Prop :=
  ∀ n, P2311347225833514988.a n = A025773 n

end A025773

/-! ## A025773.P17568578998010502268

`A025803(abs(1-n))+A025803(n)`
-/

namespace A025773.P17568578998010502268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025803 |1 - (n : ℤ)|.toNat + A025803 n

end

end A025773.P17568578998010502268

namespace A025773

/-- `A025803(abs(1-n))+A025803(n)` -/
def P17568578998010502268.Spec : Prop :=
  ∀ n, P17568578998010502268.a n = A025773 n

end A025773

/-! ## A025773.P11631483758660871119

`A025816(2*n)`
-/

namespace A025773.P11631483758660871119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025816 (2 * n)

end

end A025773.P11631483758660871119

namespace A025773

/-- `A025816(2*n)` -/
def P11631483758660871119.Spec : Prop :=
  ∀ n, P11631483758660871119.a n = A025773 n

end A025773

/-! ## A025773.P12687083109705487565

`A029214(2*n)-A029214(2*n+1)`
-/

namespace A025773.P12687083109705487565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029214 (2 * n) - A029214 (2 * n + 1)

end

end A025773.P12687083109705487565

namespace A025773

/-- `A029214(2*n)-A029214(2*n+1)` -/
def P12687083109705487565.Spec : Prop :=
  ∀ n, P12687083109705487565.a n = A025773 n

end A025773

/-! ## A025773.P14004396254367921478

`∑[A025845(2*n)-A008622(2*n+1)]`
-/

namespace A025773.P14004396254367921478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 (2 * n) - A008622 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025773.P14004396254367921478

namespace A025773

/-- `∑[A025845(2*n)-A008622(2*n+1)]` -/
def P14004396254367921478.Spec : Prop :=
  ∀ n, P14004396254367921478.a n = A025773 n

end A025773

/-! ## A025773.P18340996080077558218

`∑[A025897(2*n)-A025897(2*n+1)]`
-/

namespace A025773.P18340996080077558218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (2 * n) - A025897 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025773.P18340996080077558218

namespace A025773

/-- `∑[A025897(2*n)-A025897(2*n+1)]` -/
def P18340996080077558218.Spec : Prop :=
  ∀ n, P18340996080077558218.a n = A025773 n

end A025773

/-! ## A025773.P9252095548631648765

`A025785(2*n)-A025821(abs(A023443(2*n)))`
-/

namespace A025773.P9252095548631648765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 (2 * n) - A025821 |A023443 (2 * n)|.toNat

end

end A025773.P9252095548631648765

namespace A025773

/-- `A025785(2*n)-A025821(abs(A023443(2*n)))` -/
def P9252095548631648765.Spec : Prop :=
  ∀ n, P9252095548631648765.a n = A025773 n

end A025773

/-! ## A025773.P8464060070238408382

`A025785(2*n)-A025821(abs(A024000(2*n)))`
-/

namespace A025773.P8464060070238408382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 (2 * n) - A025821 |A024000 (2 * n)|.toNat

end

end A025773.P8464060070238408382

namespace A025773

/-- `A025785(2*n)-A025821(abs(A024000(2*n)))` -/
def P8464060070238408382.Spec : Prop :=
  ∀ n, P8464060070238408382.a n = A025773 n

end A025773

/-! ## A025773.P2660122026399659933

`A025859(2*n+3)+A025859(n)`
-/

namespace A025773.P2660122026399659933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025859 (2 * n + 3) + A025859 n

end

end A025773.P2660122026399659933

namespace A025773

/-- `A025859(2*n+3)+A025859(n)` -/
def P2660122026399659933.Spec : Prop :=
  ∀ n, P2660122026399659933.a n = A025773 n

end A025773

/-! ## A025773.P17162004829840386101

`A029181(2*n)-A029181(2*n+3)`
-/

namespace A025773.P17162004829840386101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029181 (2 * n) - A029181 (2 * n + 3)

end

end A025773.P17162004829840386101

namespace A025773

/-- `A029181(2*n)-A029181(2*n+3)` -/
def P17162004829840386101.Spec : Prop :=
  ∀ n, P17162004829840386101.a n = A025773 n

end A025773

/-! ## A025773.P4821679797106407944

`A025849(3*n)`
-/

namespace A025773.P4821679797106407944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025849 (3 * n)

end

end A025773.P4821679797106407944

namespace A025773

/-- `A025849(3*n)` -/
def P4821679797106407944.Spec : Prop :=
  ∀ n, P4821679797106407944.a n = A025773 n

end A025773

/-! ## A025773.P9623392732594602

`A025914(3*n+4)+A025898(3*n)`
-/

namespace A025773.P9623392732594602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025914 (3 * n + 4) + A025898 (3 * n)

end

end A025773.P9623392732594602

namespace A025773

/-- `A025914(3*n+4)+A025898(3*n)` -/
def P9623392732594602.Spec : Prop :=
  ∀ n, P9623392732594602.a n = A025773 n

end A025773

/-! ## A025773.P9227569683343319406

`Δ[A029258(3*n+5)]`
-/

namespace A025773.P9227569683343319406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029258 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025773.P9227569683343319406

namespace A025773

/-- `Δ[A029258(3*n+5)]` -/
def P9227569683343319406.Spec : Prop :=
  ∀ n, P9227569683343319406.a n = A025773 n

end A025773

/-! ## A025773.P15397072363630957231

`A025868(3*(n+2)+2)`
-/

namespace A025773.P15397072363630957231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (3 * (n + 2) + 2)

end

end A025773.P15397072363630957231

namespace A025773

/-- `A025868(3*(n+2)+2)` -/
def P15397072363630957231.Spec : Prop :=
  ∀ n, P15397072363630957231.a n = A025773 n

end A025773

/-!
# A025774: Expansion of 1/((1-x)(1-x^4)(1-x^9)).

The programs for A025774, the canonical program `A025774.P4657478444629202590` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025774 has offset 0).

The definition of A025774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^4+x^5-x^9+x^10+x^13-x^14))` (program `A025774.P4657478444629202590`, by `A025774.P4657478444629202590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025774.P4657478444629202590

`ogf(1/(1-x-x^4+x^5-x^9+x^10+x^13-x^14))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025774

/-- `ogf(1/(1-x-x^4+x^5-x^9+x^10+x^13-x^14))` -/
def P4657478444629202590.Spec : Prop :=
  ∀ n, P4657478444629202590.a n = A025774 n

theorem P4657478444629202590.correct : P4657478444629202590.Spec := by
  intro n
  simp only [A025774]

end A025774

/-! ## A025774.P9801716501468399308

`floor((n²+14*n+76+18*cos((n-1)*π/2))/72)`
-/

namespace A025774.P9801716501468399308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 14 * n + 76 : ℝ) + 18 * Real.cos (((n : ℤ) - 1 : ℝ) * Real.pi / 2)) / 72⌋

end

end A025774.P9801716501468399308

namespace A025774

/-- `floor((n²+14*n+76+18*cos((n-1)*π/2))/72)` -/
def P9801716501468399308.Spec : Prop :=
  ∀ n, P9801716501468399308.a n = A025774 n

end A025774

/-! ## A025774.P15334496519299661066

`∑[A033183(n)]`
-/

namespace A025774.P15334496519299661066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025774.P15334496519299661066

namespace A025774

/-- `∑[A033183(n)]` -/
def P15334496519299661066.Spec : Prop :=
  ∀ n, P15334496519299661066.a n = A025774 n

end A025774

/-! ## A025774.P8976874424392201480

`A025765(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A025774.P8976874424392201480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025765 n - a (n - 2)

end

end A025774.P8976874424392201480

namespace A025774

/-- `A025765(n)-a(n-2)` -/
def P8976874424392201480.Spec : Prop :=
  ∀ n, P8976874424392201480.a n = A025774 n

end A025774

/-! ## A025774.P602335529900191251

`∑[A008618(n)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A025774.P602335529900191251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A008618 n - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025774.P602335529900191251

namespace A025774

/-- `∑[A008618(n)-a(n-2)]` -/
def P602335529900191251.Spec : Prop :=
  ∀ n, P602335529900191251.a n = A025774 n

end A025774

/-! ## A025774.P2482030615452463144

`a(n-1)+A033183(n)%A056942(n)` with `a(0)=1`
-/

namespace A025774.P2482030615452463144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A033183 n) (A056942 n)

end

end A025774.P2482030615452463144

namespace A025774

/-- `a(n-1)+A033183(n)%A056942(n)` -/
def P2482030615452463144.Spec : Prop :=
  ∀ n, P2482030615452463144.a n = A025774 n

end A025774

/-! ## A025774.P6036537712616500644

`A025821(2*n)`
-/

namespace A025774.P6036537712616500644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025821 (2 * n)

end

end A025774.P6036537712616500644

namespace A025774

/-- `A025821(2*n)` -/
def P6036537712616500644.Spec : Prop :=
  ∀ n, P6036537712616500644.a n = A025774 n

end A025774

/-! ## A025774.P938510401487422467

`A025821(A005843(n))%∑[n+3]`
-/

namespace A025774.P938510401487422467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025821 (A005843 n).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A025774.P938510401487422467

namespace A025774

/-- `A025821(A005843(n))%∑[n+3]` -/
def P938510401487422467.Spec : Prop :=
  ∀ n, P938510401487422467.a n = A025774 n

end A025774

/-! ## A025774.P5309187064676284679

`A025785(2*n+1)-A025816(2*n+1)`
-/

namespace A025774.P5309187064676284679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 (2 * n + 1) - A025816 (2 * n + 1)

end

end A025774.P5309187064676284679

namespace A025774

/-- `A025785(2*n+1)-A025816(2*n+1)` -/
def P5309187064676284679.Spec : Prop :=
  ∀ n, P5309187064676284679.a n = A025774 n

end A025774

/-! ## A025774.P5630326237902369691

`A025821(A004277(n))+A000007(n)`
-/

namespace A025774.P5630326237902369691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025821 (A004277 n).toNat + A000007 n

end

end A025774.P5630326237902369691

namespace A025774

/-- `A025821(A004277(n))+A000007(n)` -/
def P5630326237902369691.Spec : Prop :=
  ∀ n, P5630326237902369691.a n = A025774 n

end A025774

/-! ## A025774.P16568226147411552785

`A029219(2*n)-A029219(2*n+3)`
-/

namespace A025774.P16568226147411552785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029219 (2 * n) - A029219 (2 * n + 3)

end

end A025774.P16568226147411552785

namespace A025774

/-- `A029219(2*n)-A029219(2*n+3)` -/
def P16568226147411552785.Spec : Prop :=
  ∀ n, P16568226147411552785.a n = A025774 n

end A025774

/-! ## A025774.P16418014355382533517

`A008618(A190091(n+1))`
-/

namespace A025774.P16418014355382533517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A190091 (n + 1)).toNat

end

end A025774.P16418014355382533517

namespace A025774

/-- `A008618(A190091(n+1))` -/
def P16418014355382533517.Spec : Prop :=
  ∀ n, P16418014355382533517.a n = A025774 n

end A025774

/-! ## A025774.P7250533305809229735

`A008618(A036573(n+3))`
-/

namespace A025774.P7250533305809229735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A036573 (n + 3)).toNat

end

end A025774.P7250533305809229735

namespace A025774

/-- `A008618(A036573(n+3))` -/
def P7250533305809229735.Spec : Prop :=
  ∀ n, P7250533305809229735.a n = A025774 n

end A025774

/-! ## A025774.P3536874104184002935

`A008615(A008615(∑[and(1, n)+n])+n+2)`
-/

namespace A025774.P3536874104184002935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A008615 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 2 : ℤ)).toNat

end

end A025774.P3536874104184002935

namespace A025774

/-- `A008615(A008615(∑[and(1, n)+n])+n+2)` -/
def P3536874104184002935.Spec : Prop :=
  ∀ n, P3536874104184002935.a n = A025774 n

end A025774

/-!
# A025775: Expansion of 1/((1-x)(1-x^4)(1-x^11)).

The programs for A025775, the canonical program `A025775.P12854386993340083008` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025775 has offset 0).

The definition of A025775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^4+x^5-x^11+x^12+x^15-x^16))` (program `A025775.P12854386993340083008`, by `A025775.P12854386993340083008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025775.P3011456173551162176

`floor((n²+16*n+90+22*cos(n*π/2))/88)`
-/

namespace A025775.P3011456173551162176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 16 * n + 90 : ℝ) + 22 * Real.cos ((n : ℝ) * Real.pi / 2)) / 88⌋

end

end A025775.P3011456173551162176

namespace A025775

/-- `floor((n²+16*n+90+22*cos(n*π/2))/88)` -/
def P3011456173551162176.Spec : Prop :=
  ∀ n, P3011456173551162176.a n = A025775 n

end A025775

/-! ## A025775.P12854386993340083008

`ogf(1/(1-x-x^4+x^5-x^11+x^12+x^15-x^16))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025775

/-- `ogf(1/(1-x-x^4+x^5-x^11+x^12+x^15-x^16))` -/
def P12854386993340083008.Spec : Prop :=
  ∀ n, P12854386993340083008.a n = A025775 n

theorem P12854386993340083008.correct : P12854386993340083008.Spec := by
  intro n
  simp only [A025775]

end A025775

/-! ## A025775.P7391391933502581498

`A025766(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A025775.P7391391933502581498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A025766 n - a (n - 2)

end

end A025775.P7391391933502581498

namespace A025775

/-- `A025766(n)-a(n-2)` -/
def P7391391933502581498.Spec : Prop :=
  ∀ n, P7391391933502581498.a n = A025775 n

end A025775

/-! ## A025775.P14996011791816877726

`∑[A110655(A168186(n+1))-A110655(n)]`
-/

namespace A025775.P14996011791816877726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A168186 (n + 1)).toNat - A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025775.P14996011791816877726

namespace A025775

/-- `∑[A110655(A168186(n+1))-A110655(n)]` -/
def P14996011791816877726.Spec : Prop :=
  ∀ n, P14996011791816877726.a n = A025775 n

end A025775

/-! ## A025775.P13333866826339112200

`A025822(2*n)`
-/

namespace A025775.P13333866826339112200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 (2 * n)

end

end A025775.P13333866826339112200

namespace A025775

/-- `A025822(2*n)` -/
def P13333866826339112200.Spec : Prop :=
  ∀ n, P13333866826339112200.a n = A025775 n

end A025775

/-! ## A025775.P3685491398539874111

`A029068(n)-A029239(2*n+1)`
-/

namespace A025775.P3685491398539874111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029068 n - A029239 (2 * n + 1)

end

end A025775.P3685491398539874111

namespace A025775

/-- `A029068(n)-A029239(2*n+1)` -/
def P3685491398539874111.Spec : Prop :=
  ∀ n, P3685491398539874111.a n = A025775 n

end A025775

/-! ## A025775.P1819158616703978456

`A029239(2*n)-A029239(2*n+1)`
-/

namespace A025775.P1819158616703978456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (2 * n) - A029239 (2 * n + 1)

end

end A025775.P1819158616703978456

namespace A025775

/-- `A029239(2*n)-A029239(2*n+1)` -/
def P1819158616703978456.Spec : Prop :=
  ∀ n, P1819158616703978456.a n = A025775 n

end A025775

/-! ## A025775.P17229158335850956691

`∑[A025921(2*n)-A025921(2*n+1)]`
-/

namespace A025775.P17229158335850956691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 (2 * n) - A025921 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025775.P17229158335850956691

namespace A025775

/-- `∑[A025921(2*n)-A025921(2*n+1)]` -/
def P17229158335850956691.Spec : Prop :=
  ∀ n, P17229158335850956691.a n = A025775 n

end A025775

/-! ## A025775.P1795562643138888470

`A025858(3*n)`
-/

namespace A025775.P1795562643138888470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025858 (3 * n)

end

end A025775.P1795562643138888470

namespace A025775

/-- `A025858(3*n)` -/
def P1795562643138888470.Spec : Prop :=
  ∀ n, P1795562643138888470.a n = A025775 n

end A025775

/-!
# A025776: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)).

The programs for A025776, the canonical program `A025776.P15688555447340387499` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025776 has offset 0).

The definition of A025776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^5+x^7+x^11-x^12))` (program `A025776.P15688555447340387499`, by `A025776.P15688555447340387499.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025776.P15688555447340387499

`ogf(1/(1-x-x^5+x^7+x^11-x^12))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025776

/-- `ogf(1/(1-x-x^5+x^7+x^11-x^12))` -/
def P15688555447340387499.Spec : Prop :=
  ∀ n, P15688555447340387499.a n = A025776 n

theorem P15688555447340387499.correct : P15688555447340387499.Spec := by
  intro n
  simp only [A025776]

end A025776

/-! ## A025776.P8359795053057250279

`∑[floor(n/5)-floor((n-1)/6)]`
-/

namespace A025776.P8359795053057250279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋ - ⌊((n : ℤ) - 1 : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025776.P8359795053057250279

namespace A025776

/-- `∑[floor(n/5)-floor((n-1)/6)]` -/
def P8359795053057250279.Spec : Prop :=
  ∀ n, P8359795053057250279.a n = A025776 n

end A025776

/-! ## A025776.P8511497865384489726

`a(n-1)+floor(n/5)-floor((n-1)/6)` with `a(0)=1`
-/

namespace A025776.P8511497865384489726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℚ) / 5⌋ - ⌊((n : ℤ) - 1 : ℚ) / 6⌋)

end

end A025776.P8511497865384489726

namespace A025776

/-- `a(n-1)+floor(n/5)-floor((n-1)/6)` -/
def P8511497865384489726.Spec : Prop :=
  ∀ n, P8511497865384489726.a n = A025776 n

end A025776

/-! ## A025776.P1961356629644736111

`2*∑[A033182(n)/2]`
-/

namespace A025776.P1961356629644736111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033182 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025776.P1961356629644736111

namespace A025776

/-- `2*∑[A033182(n)/2]` -/
def P1961356629644736111.Spec : Prop :=
  ∀ n, P1961356629644736111.a n = (A025776 n : ℚ)

end A025776

/-! ## A025776.P11219399210249335173

`A008672(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A025776.P11219399210249335173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A008672 n - a (n - 3)

end

end A025776.P11219399210249335173

namespace A025776

/-- `A008672(n)-a(n-3)` -/
def P11219399210249335173.Spec : Prop :=
  ∀ n, P11219399210249335173.a n = A025776 n

end A025776

/-! ## A025776.P11815199468624359360

`∑[A033182(n)]%A017054(n)`
-/

namespace A025776.P11815199468624359360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017054 n)

end

end A025776.P11815199468624359360

namespace A025776

/-- `∑[A033182(n)]%A017054(n)` -/
def P11815199468624359360.Spec : Prop :=
  ∀ n, P11815199468624359360.a n = A025776 n

end A025776

/-! ## A025776.P11093233139239691983

`gcd(∑[A033182(n)], A000038(n))`
-/

namespace A025776.P11093233139239691983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A025776.P11093233139239691983

namespace A025776

/-- `gcd(∑[A033182(n)], A000038(n))` -/
def P11093233139239691983.Spec : Prop :=
  ∀ n, (P11093233139239691983.a n : ℤ) = A025776 n

end A025776

/-! ## A025776.P12619901471035626686

`lcm(∑[A033182(n)], A033999(n))`
-/

namespace A025776.P12619901471035626686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A025776.P12619901471035626686

namespace A025776

/-- `lcm(∑[A033182(n)], A033999(n))` -/
def P12619901471035626686.Spec : Prop :=
  ∀ n, (P12619901471035626686.a n : ℤ) = A025776 n

end A025776

/-! ## A025776.P1401701503316690085

`or(∑[A033182(n)], A000007(n))`
-/

namespace A025776.P1401701503316690085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A025776.P1401701503316690085

namespace A025776

/-- `or(∑[A033182(n)], A000007(n))` -/
def P1401701503316690085.Spec : Prop :=
  ∀ n, P1401701503316690085.a n = A025776 n

end A025776

/-! ## A025776.P11149740902048280188

`∑[A033182(n)]+A001222(C(n, n²)!)`
-/

namespace A025776.P11149740902048280188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A001222 (Nat.factorial (Nat.choose n (n ^ 2)))

end

end A025776.P11149740902048280188

namespace A025776

/-- `∑[A033182(n)]+A001222(C(n, n²)!)` -/
def P11149740902048280188.Spec : Prop :=
  ∀ n, P11149740902048280188.a n = A025776 n

end A025776

/-! ## A025776.P7071503711392748049

`A008724(n)+A008732(n)-A001840(n)`
-/

namespace A025776.P7071503711392748049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 n + (A008732 n - A001840 n)

end

end A025776.P7071503711392748049

namespace A025776

/-- `A008724(n)+A008732(n)-A001840(n)` -/
def P7071503711392748049.Spec : Prop :=
  ∀ n, P7071503711392748049.a n = A025776 n

end A025776

/-! ## A025776.P4879910977573121217

`A008732(n)-A008724(n+3)`
-/

namespace A025776.P4879910977573121217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 n - A008724 (n + 3)

end

end A025776.P4879910977573121217

namespace A025776

/-- `A008732(n)-A008724(n+3)` -/
def P4879910977573121217.Spec : Prop :=
  ∀ n, P4879910977573121217.a n = A025776 n

end A025776

/-! ## A025776.P5555485717271486304

`A000027(∑[A033182(n)])`
-/

namespace A025776.P5555485717271486304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025776.P5555485717271486304

namespace A025776

/-- `A000027(∑[A033182(n)])` -/
def P5555485717271486304.Spec : Prop :=
  ∀ n, P5555485717271486304.a n = A025776 n

end A025776

/-! ## A025776.P17515691295489577374

`A025812(2*n)`
-/

namespace A025776.P17515691295489577374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025812 (2 * n)

end

end A025776.P17515691295489577374

namespace A025776

/-- `A025812(2*n)` -/
def P17515691295489577374.Spec : Prop :=
  ∀ n, P17515691295489577374.a n = A025776 n

end A025776

/-! ## A025776.P15961046640090445311

`A025826(2*n+1)+A025783(n)`
-/

namespace A025776.P15961046640090445311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 (2 * n + 1) + A025783 n

end

end A025776.P15961046640090445311

namespace A025776

/-- `A025826(2*n+1)+A025783(n)` -/
def P15961046640090445311.Spec : Prop :=
  ∀ n, P15961046640090445311.a n = A025776 n

end A025776

/-! ## A025776.P10381198518558128538

`A029011(n)-A029177(2*n+1)`
-/

namespace A025776.P10381198518558128538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029011 n - A029177 (2 * n + 1)

end

end A025776.P10381198518558128538

namespace A025776

/-- `A029011(n)-A029177(2*n+1)` -/
def P10381198518558128538.Spec : Prop :=
  ∀ n, P10381198518558128538.a n = A025776 n

end A025776

/-! ## A025776.P5272961955266913224

`A025857(2*n)+A025840(2*n+1)`
-/

namespace A025776.P5272961955266913224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (2 * n) + A025840 (2 * n + 1)

end

end A025776.P5272961955266913224

namespace A025776

/-- `A025857(2*n)+A025840(2*n+1)` -/
def P5272961955266913224.Spec : Prop :=
  ∀ n, P5272961955266913224.a n = A025776 n

end A025776

/-! ## A025776.P11147313169683848725

`A029177(2*n)-A029177(2*n+1)`
-/

namespace A025776.P11147313169683848725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 (2 * n) - A029177 (2 * n + 1)

end

end A025776.P11147313169683848725

namespace A025776

/-- `A029177(2*n)-A029177(2*n+1)` -/
def P11147313169683848725.Spec : Prop :=
  ∀ n, P11147313169683848725.a n = A025776 n

end A025776

/-! ## A025776.P8193906628117971417

`A029198(2*n)-A029198(abs(1-2*n))`
-/

namespace A025776.P8193906628117971417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 (2 * n) - A029198 |1 - (2 * n : ℤ)|.toNat

end

end A025776.P8193906628117971417

namespace A025776

/-- `A029198(2*n)-A029198(abs(1-2*n))` -/
def P8193906628117971417.Spec : Prop :=
  ∀ n, P8193906628117971417.a n = A025776 n

end A025776

/-! ## A025776.P15600871464497816542

`A029044(2*n+1)+A025857(2*n)-A029044(2*n)`
-/

namespace A025776.P15600871464497816542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029044 (2 * n + 1) + (A025857 (2 * n) - A029044 (2 * n))

end

end A025776.P15600871464497816542

namespace A025776

/-- `A029044(2*n+1)+A025857(2*n)-A029044(2*n)` -/
def P15600871464497816542.Spec : Prop :=
  ∀ n, P15600871464497816542.a n = A025776 n

end A025776

/-!
# A025777: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)).

The programs for A025777, the canonical program `A025777.P6327002252763104657` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025777 has offset 0).

The definition of A025777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^5+x^6-x^7+x^8+x^12-x^13))` (program `A025777.P6327002252763104657`, by `A025777.P6327002252763104657.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025777.P5655596362769635152

`round((n²+13*n+36)/70)`
-/

namespace A025777.P5655596362769635152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 + 13 * n + 36 : ℚ) / 70)

end

end A025777.P5655596362769635152

namespace A025777

/-- `round((n²+13*n+36)/70)` -/
def P5655596362769635152.Spec : Prop :=
  ∀ n, P5655596362769635152.a n = A025777 n

end A025777

/-! ## A025777.P6327002252763104657

`ogf(1/(1-x-x^5+x^6-x^7+x^8+x^12-x^13))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025777

/-- `ogf(1/(1-x-x^5+x^6-x^7+x^8+x^12-x^13))` -/
def P6327002252763104657.Spec : Prop :=
  ∀ n, P6327002252763104657.a n = A025777 n

theorem P6327002252763104657.correct : P6327002252763104657.Spec := by
  intro n
  simp only [A025777]

end A025777

/-! ## A025777.P10189716929366059469

`ceil(A186386(n+1)/7)`
-/

namespace A025777.P10189716929366059469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A186386 (n + 1) : ℚ) / 7⌉

end

end A025777.P10189716929366059469

namespace A025777

/-- `ceil(A186386(n+1)/7)` -/
def P10189716929366059469.Spec : Prop :=
  ∀ n, P10189716929366059469.a n = A025777 n

end A025777

/-! ## A025777.P7356278840119091398

`A025818(2*n)`
-/

namespace A025777.P7356278840119091398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 (2 * n)

end

end A025777.P7356278840119091398

namespace A025777

/-- `A025818(2*n)` -/
def P7356278840119091398.Spec : Prop :=
  ∀ n, P7356278840119091398.a n = A025777 n

end A025777

/-! ## A025777.P13349982076159184124

`A008673(n)-A029216(2*n+1)`
-/

namespace A025777.P13349982076159184124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008673 n - A029216 (2 * n + 1)

end

end A025777.P13349982076159184124

namespace A025777

/-- `A008673(n)-A029216(2*n+1)` -/
def P13349982076159184124.Spec : Prop :=
  ∀ n, P13349982076159184124.a n = A025777 n

end A025777

/-! ## A025777.P7886295566239890477

`A029216(2*n)-A029216(2*n+1)`
-/

namespace A025777.P7886295566239890477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (2 * n) - A029216 (2 * n + 1)

end

end A025777.P7886295566239890477

namespace A025777

/-- `A029216(2*n)-A029216(2*n+1)` -/
def P7886295566239890477.Spec : Prop :=
  ∀ n, P7886295566239890477.a n = A025777 n

end A025777

/-! ## A025777.P1200061430773402867

`∑[A025899(2*n)-A025899(2*n+1)]`
-/

namespace A025777.P1200061430773402867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 (2 * n) - A025899 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025777.P1200061430773402867

namespace A025777

/-- `∑[A025899(2*n)-A025899(2*n+1)]` -/
def P1200061430773402867.Spec : Prop :=
  ∀ n, P1200061430773402867.a n = A025777 n

end A025777

/-! ## A025777.P11685702607032881651

`2*A029125(2*n+1)-A029108(2*n+1)`
-/

namespace A025777.P11685702607032881651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029125 (2 * n + 1) - A029108 (2 * n + 1)

end

end A025777.P11685702607032881651

namespace A025777

/-- `2*A029125(2*n+1)-A029108(2*n+1)` -/
def P11685702607032881651.Spec : Prop :=
  ∀ n, P11685702607032881651.a n = A025777 n

end A025777

/-! ## A025777.P14968959209119660678

`A029108(2*n)-A029193(abs(A023443(2*n)))`
-/

namespace A025777.P14968959209119660678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 (2 * n) - A029193 |A023443 (2 * n)|.toNat

end

end A025777.P14968959209119660678

namespace A025777

/-- `A029108(2*n)-A029193(abs(A023443(2*n)))` -/
def P14968959209119660678.Spec : Prop :=
  ∀ n, P14968959209119660678.a n = A025777 n

end A025777

/-! ## A025777.P3280301824204760609

`A025786(2*n+1)+A029022(2*n)-A029022(2*n+1)`
-/

namespace A025777.P3280301824204760609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025786 (2 * n + 1) + (A029022 (2 * n) - A029022 (2 * n + 1))

end

end A025777.P3280301824204760609

namespace A025777

/-- `A025786(2*n+1)+A029022(2*n)-A029022(2*n+1)` -/
def P3280301824204760609.Spec : Prop :=
  ∀ n, P3280301824204760609.a n = A025777 n

end A025777

/-! ## A025777.P16237213615989611228

`A029183(2*n)-A029183(2*n+3)`
-/

namespace A025777.P16237213615989611228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029183 (2 * n) - A029183 (2 * n + 3)

end

end A025777.P16237213615989611228

namespace A025777

/-- `A029183(2*n)-A029183(2*n+3)` -/
def P16237213615989611228.Spec : Prop :=
  ∀ n, P16237213615989611228.a n = A025777 n

end A025777

/-! ## A025777.P7352011601190697386

`A025859(2*n+5)`
-/

namespace A025777.P7352011601190697386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025859 (2 * n + 5)

end

end A025777.P7352011601190697386

namespace A025777

/-- `A025859(2*n+5)` -/
def P7352011601190697386.Spec : Prop :=
  ∀ n, P7352011601190697386.a n = A025777 n

end A025777

/-! ## A025777.P1721355389635460942

`Δ[A029172(2*n+3)]`
-/

namespace A025777.P1721355389635460942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029172 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025777.P1721355389635460942

namespace A025777

/-- `Δ[A029172(2*n+3)]` -/
def P1721355389635460942.Spec : Prop :=
  ∀ n, P1721355389635460942.a n = A025777 n

end A025777

/-! ## A025777.P11997036674881374207

`A025909(Δ[2*(n+2)²])`
-/

namespace A025777.P11997036674881374207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A025777.P11997036674881374207

namespace A025777

/-- `A025909(Δ[2*(n+2)²])` -/
def P11997036674881374207.Spec : Prop :=
  ∀ n, P11997036674881374207.a n = A025777 n

end A025777

/-! ## A025777.P8201338503985320540

`A002266(A008725(n+2)+2)`
-/

namespace A025777.P8201338503985320540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A008725 (n + 2) + 2).toNat

end

end A025777.P8201338503985320540

namespace A025777

/-- `A002266(A008725(n+2)+2)` -/
def P8201338503985320540.Spec : Prop :=
  ∀ n, P8201338503985320540.a n = A025777 n

end A025777

/-!
# A025778: Expansion of 1/((1-x)(1-x^5)(1-x^8)).

The programs for A025778, the canonical program `A025778.P9952141694196571112` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025778 has offset 0).

The definition of A025778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^5+x^6-x^8+x^9+x^13-x^14))` (program `A025778.P9952141694196571112`, by `A025778.P9952141694196571112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025778.P9952141694196571112

`ogf(1/(1-x-x^5+x^6-x^8+x^9+x^13-x^14))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025778

/-- `ogf(1/(1-x-x^5+x^6-x^8+x^9+x^13-x^14))` -/
def P9952141694196571112.Spec : Prop :=
  ∀ n, P9952141694196571112.a n = A025778 n

theorem P9952141694196571112.correct : P9952141694196571112.Spec := by
  intro n
  simp only [A025778]

end A025778

/-! ## A025778.P8790388259332097540

`ceil(A035104(n)/20)`
-/

namespace A025778.P8790388259332097540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035104 n : ℚ) / 20⌉

end

end A025778.P8790388259332097540

namespace A025778

/-- `ceil(A035104(n)/20)` -/
def P8790388259332097540.Spec : Prop :=
  ∀ n, P8790388259332097540.a n = A025778 n

end A025778

/-! ## A025778.P7724847780472083370

`A025887(3*n+10)`
-/

namespace A025778.P7724847780472083370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025887 (3 * n + 10)

end

end A025778.P7724847780472083370

namespace A025778

/-- `A025887(3*n+10)` -/
def P7724847780472083370.Spec : Prop :=
  ∀ n, P7724847780472083370.a n = A025778 n

end A025778

/-! ## A025778.P859002994740047751

`A008619(floor(A035104(n)/10))`
-/

namespace A025778.P859002994740047751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊(A035104 n : ℚ) / 10⌋.toNat

end

end A025778.P859002994740047751

namespace A025778

/-- `A008619(floor(A035104(n)/10))` -/
def P859002994740047751.Spec : Prop :=
  ∀ n, P859002994740047751.a n = A025778 n

end A025778

/-! ## A025778.P4491994498727535734

`A008616(floor(A035104(n)/2))`
-/

namespace A025778.P4491994498727535734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ⌊(A035104 n : ℚ) / 2⌋.toNat

end

end A025778.P4491994498727535734

namespace A025778

/-- `A008616(floor(A035104(n)/2))` -/
def P4491994498727535734.Spec : Prop :=
  ∀ n, P4491994498727535734.a n = A025778 n

end A025778

/-! ## A025778.P7721266579601071694

`A008616(∑[A262672(n)]-1)`
-/

namespace A025778.P7721266579601071694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A025778.P7721266579601071694

namespace A025778

/-- `A008616(∑[A262672(n)]-1)` -/
def P7721266579601071694.Spec : Prop :=
  ∀ n, P7721266579601071694.a n = A025778 n

end A025778

/-! ## A025778.P2995008353374885310

`A008616(A001972(n+4)-6)`
-/

namespace A025778.P2995008353374885310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A001972 (n + 4) - 6).toNat

end

end A025778.P2995008353374885310

namespace A025778

/-- `A008616(A001972(n+4)-6)` -/
def P2995008353374885310.Spec : Prop :=
  ∀ n, P2995008353374885310.a n = A025778 n

end A025778

/-! ## A025778.P2713640183525046709

`A008616(n-(1-A001972(n)))`
-/

namespace A025778.P2713640183525046709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ((n : ℤ) - (1 - A001972 n)).toNat

end

end A025778.P2713640183525046709

namespace A025778

/-- `A008616(n-(1-A001972(n)))` -/
def P2713640183525046709.Spec : Prop :=
  ∀ n, P2713640183525046709.a n = A025778 n

end A025778

/-! ## A025778.P2429202261257489711

`A008616(A004442(∑[A262672(n)]))`
-/

namespace A025778.P2429202261257489711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A004442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A025778.P2429202261257489711

namespace A025778

/-- `A008616(A004442(∑[A262672(n)]))` -/
def P2429202261257489711.Spec : Prop :=
  ∀ n, P2429202261257489711.a n = A025778 n

end A025778

/-! ## A025778.P8517666705121555465

`A008616(∑[A262672(A028310(n))])`
-/

namespace A025778.P8517666705121555465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262672 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025778.P8517666705121555465

namespace A025778

/-- `A008616(∑[A262672(A028310(n))])` -/
def P8517666705121555465.Spec : Prop :=
  ∀ n, P8517666705121555465.a n = A025778 n

end A025778

/-! ## A025778.P2051613356289349482

`A008616(A004442(A001972(n)+n))`
-/

namespace A025778.P2051613356289349482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A004442 (A001972 n + (n : ℤ)).toNat).toNat

end

end A025778.P2051613356289349482

namespace A025778

/-- `A008616(A004442(A001972(n)+n))` -/
def P2051613356289349482.Spec : Prop :=
  ∀ n, P2051613356289349482.a n = A025778 n

end A025778

/-! ## A025778.P3663056889149230194

`A165190(A036573(n+3))`
-/

namespace A025778.P3663056889149230194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A036573 (n + 3)).toNat

end

end A025778.P3663056889149230194

namespace A025778

/-- `A165190(A036573(n+3))` -/
def P3663056889149230194.Spec : Prop :=
  ∀ n, P3663056889149230194.a n = A025778 n

end A025778

/-!
# A025779: Expansion of 1/((1-x)*(1-x^5)*(1-x^9)).

The programs for A025779, the canonical program `A025779.P1601463652445095158` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025779 has offset 0).

The definition of A025779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^5+x^6-x^9+x^10+x^14-x^15))` (program `A025779.P1601463652445095158`, by `A025779.P1601463652445095158.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025779.P1601463652445095158

`ogf(1/(1-x-x^5+x^6-x^9+x^10+x^14-x^15))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025779

/-- `ogf(1/(1-x-x^5+x^6-x^9+x^10+x^14-x^15))` -/
def P1601463652445095158.Spec : Prop :=
  ∀ n, P1601463652445095158.a n = A025779 n

theorem P1601463652445095158.correct : P1601463652445095158.Spec := by
  intro n
  simp only [A025779]

end A025779

/-! ## A025779.P5342029654356109085

`ceil((A008825(n)-A008738(n))/2)`
-/

namespace A025779.P5342029654356109085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008825 n - A008738 n : ℚ) / 2⌉

end

end A025779.P5342029654356109085

namespace A025779

/-- `ceil((A008825(n)-A008738(n))/2)` -/
def P5342029654356109085.Spec : Prop :=
  ∀ n, P5342029654356109085.a n = A025779 n

end A025779

/-! ## A025779.P661281084410371793

`A025823(2*n)`
-/

namespace A025779.P661281084410371793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 (2 * n)

end

end A025779.P661281084410371793

namespace A025779

/-- `A025823(2*n)` -/
def P661281084410371793.Spec : Prop :=
  ∀ n, P661281084410371793.a n = A025779 n

end A025779

/-! ## A025779.P6639111938800981501

`A029014(n)-A029204(2*n+1)`
-/

namespace A025779.P6639111938800981501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029014 n - A029204 (2 * n + 1)

end

end A025779.P6639111938800981501

namespace A025779

/-- `A029014(n)-A029204(2*n+1)` -/
def P6639111938800981501.Spec : Prop :=
  ∀ n, P6639111938800981501.a n = A025779 n

end A025779

/-! ## A025779.P18132266678491713922

`A029236(2*n)-A029236(2*n+1)`
-/

namespace A025779.P18132266678491713922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (2 * n) - A029236 (2 * n + 1)

end

end A025779.P18132266678491713922

namespace A025779

/-- `A029236(2*n)-A029236(2*n+1)` -/
def P18132266678491713922.Spec : Prop :=
  ∀ n, P18132266678491713922.a n = A025779 n

end A025779

/-! ## A025779.P10455065169926473768

`∑[A025918(2*n)-A025918(2*n+1)]`
-/

namespace A025779.P10455065169926473768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 (2 * n) - A025918 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025779.P10455065169926473768

namespace A025779

/-- `∑[A025918(2*n)-A025918(2*n+1)]` -/
def P10455065169926473768.Spec : Prop :=
  ∀ n, P10455065169926473768.a n = A025779 n

end A025779

/-! ## A025779.P9906099124044980793

`A029080(2*n+1)-A029174(2*n+1)`
-/

namespace A025779.P9906099124044980793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029080 (2 * n + 1) - A029174 (2 * n + 1)

end

end A025779.P9906099124044980793

namespace A025779

/-- `A029080(2*n+1)-A029174(2*n+1)` -/
def P9906099124044980793.Spec : Prop :=
  ∀ n, P9906099124044980793.a n = A025779 n

end A025779

/-! ## A025779.P16264605762835559957

`A025792(2*n)-A025826(abs(A023443(2*n)))`
-/

namespace A025779.P16264605762835559957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025792 (2 * n) - A025826 |A023443 (2 * n)|.toNat

end

end A025779.P16264605762835559957

namespace A025779

/-- `A025792(2*n)-A025826(abs(A023443(2*n)))` -/
def P16264605762835559957.Spec : Prop :=
  ∀ n, P16264605762835559957.a n = A025779 n

end A025779

/-! ## A025779.P5640269367200116994

`A025924(2*n)+A005044(A194960(2*n+1))`
-/

namespace A025779.P5640269367200116994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (2 * n) + A005044 (A194960 (2 * n + 1)).toNat

end

end A025779.P5640269367200116994

namespace A025779

/-- `A025924(2*n)+A005044(A194960(2*n+1))` -/
def P5640269367200116994.Spec : Prop :=
  ∀ n, P5640269367200116994.a n = A025779 n

end A025779

/-! ## A025779.P12292339840840681870

`A029165(2*n)+A029221(2*n)-A029153(2*n)`
-/

namespace A025779.P12292339840840681870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029165 (2 * n) + (A029221 (2 * n) - A029153 (2 * n))

end

end A025779.P12292339840840681870

namespace A025779

/-- `A029165(2*n)+A029221(2*n)-A029153(2*n)` -/
def P12292339840840681870.Spec : Prop :=
  ∀ n, P12292339840840681870.a n = A025779 n

end A025779

/-! ## A025779.P2619987573564795344

`A029221(2*n)-A029221(2*n+3)`
-/

namespace A025779.P2619987573564795344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (2 * n) - A029221 (2 * n + 3)

end

end A025779.P2619987573564795344

namespace A025779

/-- `A029221(2*n)-A029221(2*n+3)` -/
def P2619987573564795344.Spec : Prop :=
  ∀ n, P2619987573564795344.a n = A025779 n

end A025779

/-! ## A025779.P1375811283124919330

`A065033(A008825(n)-A008738(n))`
-/

namespace A025779.P1375811283124919330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A008825 n - A008738 n).toNat

end

end A025779.P1375811283124919330

namespace A025779

/-- `A065033(A008825(n)-A008738(n))` -/
def P1375811283124919330.Spec : Prop :=
  ∀ n, P1375811283124919330.a n = A025779 n

end A025779

/-! ## A025779.P13765680164794826186

`A008676(A001840(n+6)-6)`
-/

namespace A025779.P13765680164794826186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A001840 (n + 6) - 6).toNat

end

end A025779.P13765680164794826186

namespace A025779

/-- `A008676(A001840(n+6)-6)` -/
def P13765680164794826186.Spec : Prop :=
  ∀ n, P13765680164794826186.a n = A025779 n

end A025779

/-! ## A025779.P3261620035125266060

`A008676(A062545(n)+A001840(n))`
-/

namespace A025779.P3261620035125266060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A062545 n + A001840 n).toNat

end

end A025779.P3261620035125266060

namespace A025779

/-- `A008676(A062545(n)+A001840(n))` -/
def P3261620035125266060.Spec : Prop :=
  ∀ n, P3261620035125266060.a n = A025779 n

end A025779

/-! ## A025779.P1479009580364902049

`A008676(A008620(∑[n+7]))`
-/

namespace A025779.P1479009580364902049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A008620 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A025779.P1479009580364902049

namespace A025779

/-- `A008676(A008620(∑[n+7]))` -/
def P1479009580364902049.Spec : Prop :=
  ∀ n, P1479009580364902049.a n = A025779 n

end A025779

/-!
# A025780: Expansion of 1/((1-x)(1-x^5)(1-x^11)).

The programs for A025780, the canonical program `A025780.P4400399345179869432` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025780 has offset 0).

The definition of A025780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^5+x^6-x^11+x^12+x^16-x^17))` (program `A025780.P4400399345179869432`, by `A025780.P4400399345179869432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025780.P4400399345179869432

`ogf(1/(1-x-x^5+x^6-x^11+x^12+x^16-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025780

/-- `ogf(1/(1-x-x^5+x^6-x^11+x^12+x^16-x^17))` -/
def P4400399345179869432.Spec : Prop :=
  ∀ n, P4400399345179869432.a n = A025780 n

theorem P4400399345179869432.correct : P4400399345179869432.Spec := by
  intro n
  simp only [A025780]

end A025780

/-! ## A025780.P10333408410863326626

`A025811(abs(1-n))+A025811(n)`
-/

namespace A025780.P10333408410863326626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025811 |1 - (n : ℤ)|.toNat + A025811 n

end

end A025780.P10333408410863326626

namespace A025780

/-- `A025811(abs(1-n))+A025811(n)` -/
def P10333408410863326626.Spec : Prop :=
  ∀ n, P10333408410863326626.a n = A025780 n

end A025780

/-! ## A025780.P9399699744541758219

`A025826(2*n)`
-/

namespace A025780.P9399699744541758219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 (2 * n)

end

end A025780.P9399699744541758219

namespace A025780

/-- `A025826(2*n)` -/
def P9399699744541758219.Spec : Prop :=
  ∀ n, P9399699744541758219.a n = A025780 n

end A025780

/-! ## A025780.P9534437746661570304

`A025775(n+1)-Δ[A029239(2*n)]`
-/

namespace A025780.P9534437746661570304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025775 (n + 1) - (f1 (n + 1) - f1 n)

end

end A025780.P9534437746661570304

namespace A025780

/-- `A025775(n+1)-Δ[A029239(2*n)]` -/
def P9534437746661570304.Spec : Prop :=
  ∀ n, P9534437746661570304.a n = A025780 n

end A025780

/-! ## A025780.P9480972579009528298

`A029239(2*n)-A029239(2*n+3)`
-/

namespace A025780.P9480972579009528298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 (2 * n) - A029239 (2 * n + 3)

end

end A025780.P9480972579009528298

namespace A025780

/-- `A029239(2*n)-A029239(2*n+3)` -/
def P9480972579009528298.Spec : Prop :=
  ∀ n, P9480972579009528298.a n = A025780 n

end A025780

/-! ## A025780.P1610276242568046091

`A029068(n)-A029239(A005408(n+1))`
-/

namespace A025780.P1610276242568046091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029068 n - A029239 (A005408 (n + 1)).toNat

end

end A025780.P1610276242568046091

namespace A025780

/-- `A029068(n)-A029239(A005408(n+1))` -/
def P1610276242568046091.Spec : Prop :=
  ∀ n, P1610276242568046091.a n = A025780 n

end A025780

/-! ## A025780.P6007519057450142612

`∑[A025839(n)]-A029224(A020735(n+1))`
-/

namespace A025780.P6007519057450142612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029224 (A020735 (n + 1)).toNat

end

end A025780.P6007519057450142612

namespace A025780

/-- `∑[A025839(n)]-A029224(A020735(n+1))` -/
def P6007519057450142612.Spec : Prop :=
  ∀ n, P6007519057450142612.a n = A025780 n

end A025780

/-! ## A025780.P590680989045599813

`A029224(A005843(n))-A029224(A020735(n+1))`
-/

namespace A025780.P590680989045599813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (A005843 n).toNat - A029224 (A020735 (n + 1)).toNat

end

end A025780.P590680989045599813

namespace A025780

/-- `A029224(A005843(n))-A029224(A020735(n+1))` -/
def P590680989045599813.Spec : Prop :=
  ∀ n, P590680989045599813.a n = A025780 n

end A025780

/-! ## A025780.P4354722483265667418

`∑[A002828(A017887(2*n)²)]`
-/

namespace A025780.P4354722483265667418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A017887 (2 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025780.P4354722483265667418

namespace A025780

/-- `∑[A002828(A017887(2*n)²)]` -/
def P4354722483265667418.Spec : Prop :=
  ∀ n, P4354722483265667418.a n = A025780 n

end A025780

/-! ## A025780.P3739776096556323465

`∑[A089309(A017887(2*n)²)]`
-/

namespace A025780.P3739776096556323465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A017887 (2 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025780.P3739776096556323465

namespace A025780

/-- `∑[A089309(A017887(2*n)²)]` -/
def P3739776096556323465.Spec : Prop :=
  ∀ n, P3739776096556323465.a n = A025780 n

end A025780

/-!
# A025781: Expansion of 1/((1-x)(1-x^5)(1-x^12)).

The programs for A025781, the canonical program `A025781.P7662789883593314095` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025781 has offset 0).

The definition of A025781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^5+x^6-x^12+x^13+x^17-x^18))` (program `A025781.P7662789883593314095`, by `A025781.P7662789883593314095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025781.P7662789883593314095

`ogf(1/(1-x-x^5+x^6-x^12+x^13+x^17-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025781

/-- `ogf(1/(1-x-x^5+x^6-x^12+x^13+x^17-x^18))` -/
def P7662789883593314095.Spec : Prop :=
  ∀ n, P7662789883593314095.a n = A025781 n

theorem P7662789883593314095.correct : P7662789883593314095.Spec := by
  intro n
  simp only [A025781]

end A025781

/-! ## A025781.P13748719297176958204

`A002266(A008730(n+2)+2)`
-/

namespace A025781.P13748719297176958204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A008730 (n + 2) + 2).toNat

end

end A025781.P13748719297176958204

namespace A025781

/-- `A002266(A008730(n+2)+2)` -/
def P13748719297176958204.Spec : Prop :=
  ∀ n, P13748719297176958204.a n = A025781 n

end A025781

/-! ## A025781.P17528644025889222900

`A000115(n)-A004526(A001399(n))`
-/

namespace A025781.P17528644025889222900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n - A004526 (A001399 n).toNat

end

end A025781.P17528644025889222900

namespace A025781

/-- `A000115(n)-A004526(A001399(n))` -/
def P17528644025889222900.Spec : Prop :=
  ∀ n, P17528644025889222900.a n = A025781 n

end A025781

/-! ## A025781.P9419128642634204494

`A008616(A001399(n)+or(1, n))`
-/

namespace A025781.P9419128642634204494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A001399 n + (Nat.lor 1 n : ℤ)).toNat

end

end A025781.P9419128642634204494

namespace A025781

/-- `A008616(A001399(n)+or(1, n))` -/
def P9419128642634204494.Spec : Prop :=
  ∀ n, P9419128642634204494.a n = A025781 n

end A025781

/-! ## A025781.P10913361294941112146

`A000115(n)-A002264(A001972(n))`
-/

namespace A025781.P10913361294941112146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n - A002264 (A001972 n).toNat

end

end A025781.P10913361294941112146

namespace A025781

/-- `A000115(n)-A002264(A001972(n))` -/
def P10913361294941112146.Spec : Prop :=
  ∀ n, P10913361294941112146.a n = A025781 n

end A025781

/-! ## A025781.P187797760831155073

`A000115(n)-A002264(∑[A008621(n)])`
-/

namespace A025781.P187797760831155073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n - A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025781.P187797760831155073

namespace A025781

/-- `A000115(n)-A002264(∑[A008621(n)])` -/
def P187797760831155073.Spec : Prop :=
  ∀ n, P187797760831155073.a n = A025781 n

end A025781

/-!
# A025782: Expansion of 1/((1-x)*(1-x^6)*(1-x^7)).

The programs for A025782, the canonical program `A025782.P15385393036337444119` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025782 has offset 0).

The definition of A025782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^6+x^8+x^13-x^14))` (program `A025782.P15385393036337444119`, by `A025782.P15385393036337444119.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025782.P15385393036337444119

`ogf(1/(1-x-x^6+x^8+x^13-x^14))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025782

/-- `ogf(1/(1-x-x^6+x^8+x^13-x^14))` -/
def P15385393036337444119.Spec : Prop :=
  ∀ n, P15385393036337444119.a n = A025782 n

theorem P15385393036337444119.correct : P15385393036337444119.Spec := by
  intro n
  simp only [A025782]

end A025782

/-! ## A025782.P1196101976419527682

`A025768(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A025782.P1196101976419527682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025768 n - a (n - 3)

end

end A025782.P1196101976419527682

namespace A025782

/-- `A025768(n)-a(n-3)` -/
def P1196101976419527682.Spec : Prop :=
  ∀ n, P1196101976419527682.a n = A025782 n

end A025782

/-! ## A025782.P11455623208411398318

`A025897(n)+A025797(A004442(n))`
-/

namespace A025782.P11455623208411398318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 n + A025797 (A004442 n).toNat

end

end A025782.P11455623208411398318

namespace A025782

/-- `A025897(n)+A025797(A004442(n))` -/
def P11455623208411398318.Spec : Prop :=
  ∀ n, P11455623208411398318.a n = A025782 n

end A025782

/-! ## A025782.P10953562250555802191

`A025820(2*n)`
-/

namespace A025782.P10953562250555802191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025820 (2 * n)

end

end A025782.P10953562250555802191

namespace A025782

/-- `A025820(2*n)` -/
def P10953562250555802191.Spec : Prop :=
  ∀ n, P10953562250555802191.a n = A025782 n

end A025782

/-! ## A025782.P2690863238721684105

`∑[A025841(n)]-A029218(Δ[n²])`
-/

namespace A025782.P2690863238721684105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025841 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029218 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A025782.P2690863238721684105

namespace A025782

/-- `∑[A025841(n)]-A029218(Δ[n²])` -/
def P2690863238721684105.Spec : Prop :=
  ∀ n, P2690863238721684105.a n = A025782 n

end A025782

/-! ## A025782.P5135671860793907242

`A029218(2*n)-A029218(2*n+1)`
-/

namespace A025782.P5135671860793907242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (2 * n) - A029218 (2 * n + 1)

end

end A025782.P5135671860793907242

namespace A025782

/-- `A029218(2*n)-A029218(2*n+1)` -/
def P5135671860793907242.Spec : Prop :=
  ∀ n, P5135671860793907242.a n = A025782 n

end A025782

/-! ## A025782.P12501271681558039408

`∑[A025901(2*n)-A025901(2*n+1)]`
-/

namespace A025782.P12501271681558039408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025901 (2 * n) - A025901 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025782.P12501271681558039408

namespace A025782

/-- `∑[A025901(2*n)-A025901(2*n+1)]` -/
def P12501271681558039408.Spec : Prop :=
  ∀ n, P12501271681558039408.a n = A025782 n

end A025782

/-! ## A025782.P16854887442930928406

`A025825(2*n)+A025883(2*n)-A025893(2*n)`
-/

namespace A025782.P16854887442930928406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025825 (2 * n) + (A025883 (2 * n) - A025893 (2 * n))

end

end A025782.P16854887442930928406

namespace A025782

/-- `A025825(2*n)+A025883(2*n)-A025893(2*n)` -/
def P16854887442930928406.Spec : Prop :=
  ∀ n, P16854887442930928406.a n = A025782 n

end A025782

/-! ## A025782.P12969029264948823266

`A029160(2*n)+A029185(2*n)-A029142(2*n)`
-/

namespace A025782.P12969029264948823266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029160 (2 * n) + (A029185 (2 * n) - A029142 (2 * n))

end

end A025782.P12969029264948823266

namespace A025782

/-- `A029160(2*n)+A029185(2*n)-A029142(2*n)` -/
def P12969029264948823266.Spec : Prop :=
  ∀ n, P12969029264948823266.a n = A025782 n

end A025782

/-! ## A025782.P9638968889448228384

`A025788(2*n+1)+A029024(2*n)-A029024(2*n+1)`
-/

namespace A025782.P9638968889448228384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025788 (2 * n + 1) + (A029024 (2 * n) - A029024 (2 * n + 1))

end

end A025782.P9638968889448228384

namespace A025782

/-- `A025788(2*n+1)+A029024(2*n)-A029024(2*n+1)` -/
def P9638968889448228384.Spec : Prop :=
  ∀ n, P9638968889448228384.a n = A025782 n

end A025782

/-! ## A025782.P12611702108200412776

`A025819(2*n+1)+A029235(2*n)-A029235(2*n+1)`
-/

namespace A025782.P12611702108200412776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 (2 * n + 1) + (A029235 (2 * n) - A029235 (2 * n + 1))

end

end A025782.P12611702108200412776

namespace A025782

/-- `A025819(2*n+1)+A029235(2*n)-A029235(2*n+1)` -/
def P12611702108200412776.Spec : Prop :=
  ∀ n, P12611702108200412776.a n = A025782 n

end A025782

/-! ## A025782.P13418855021163486998

`A029185(2*n)-A029185(2*n+3)`
-/

namespace A025782.P13418855021163486998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029185 (2 * n) - A029185 (2 * n + 3)

end

end A025782.P13418855021163486998

namespace A025782

/-- `A029185(2*n)-A029185(2*n+3)` -/
def P13418855021163486998.Spec : Prop :=
  ∀ n, P13418855021163486998.a n = A025782 n

end A025782

/-! ## A025782.P4848414644106066969

`∑[A075993(A056115(n)+21)]`
-/

namespace A025782.P4848414644106066969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075993 (A056115 n + 21).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025782.P4848414644106066969

namespace A025782

/-- `∑[A075993(A056115(n)+21)]` -/
def P4848414644106066969.Spec : Prop :=
  ∀ n, P4848414644106066969.a n = A025782 n

end A025782

/-!
# A025783: Expansion of 1/((1-x)(1-x^6)(1-x^11)).

The programs for A025783, the canonical program `A025783.P15062552760523704649` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025783 has offset 0).

The definition of A025783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^6+x^7-x^11+x^12+x^17-x^18))` (program `A025783.P15062552760523704649`, by `A025783.P15062552760523704649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025783.P15062552760523704649

`ogf(1/(1-x-x^6+x^7-x^11+x^12+x^17-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025783

/-- `ogf(1/(1-x-x^6+x^7-x^11+x^12+x^17-x^18))` -/
def P15062552760523704649.Spec : Prop :=
  ∀ n, P15062552760523704649.a n = A025783 n

theorem P15062552760523704649.correct : P15062552760523704649.Spec := by
  intro n
  simp only [A025783]

end A025783

/-! ## A025783.P12467581854795835454

`A025771(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A025783.P12467581854795835454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025771 n - a (n - 3)

end

end A025783.P12467581854795835454

namespace A025783

/-- `A025771(n)-a(n-3)` -/
def P12467581854795835454.Spec : Prop :=
  ∀ n, P12467581854795835454.a n = A025783 n

end A025783

/-! ## A025783.P11990601753488937641

`A025827(2*n)`
-/

namespace A025783.P11990601753488937641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 (2 * n)

end

end A025783.P11990601753488937641

namespace A025783

/-- `A025827(2*n)` -/
def P11990601753488937641.Spec : Prop :=
  ∀ n, P11990601753488937641.a n = A025783 n

end A025783

/-! ## A025783.P6952253106151145799

`A025812(2*n)-A025826(2*n+1)`
-/

namespace A025783.P6952253106151145799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025812 (2 * n) - A025826 (2 * n + 1)

end

end A025783.P6952253106151145799

namespace A025783

/-- `A025812(2*n)-A025826(2*n+1)` -/
def P6952253106151145799.Spec : Prop :=
  ∀ n, P6952253106151145799.a n = A025783 n

end A025783

/-! ## A025783.P2493826773281033721

`A029213(2*n)-A029224(2*n+1)`
-/

namespace A025783.P2493826773281033721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029213 (2 * n) - A029224 (2 * n + 1)

end

end A025783.P2493826773281033721

namespace A025783

/-- `A029213(2*n)-A029224(2*n+1)` -/
def P2493826773281033721.Spec : Prop :=
  ∀ n, P2493826773281033721.a n = A025783 n

end A025783

/-! ## A025783.P13845866756695964601

`A029244(2*n)-A029244(2*n+1)`
-/

namespace A025783.P13845866756695964601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (2 * n) - A029244 (2 * n + 1)

end

end A025783.P13845866756695964601

namespace A025783

/-- `A029244(2*n)-A029244(2*n+1)` -/
def P13845866756695964601.Spec : Prop :=
  ∀ n, P13845866756695964601.a n = A025783 n

end A025783

/-! ## A025783.P11052864266316914966

`∑[A025926(2*n)-A025926(2*n+1)]`
-/

namespace A025783.P11052864266316914966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (2 * n) - A025926 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025783.P11052864266316914966

namespace A025783

/-- `∑[A025926(2*n)-A025926(2*n+1)]` -/
def P11052864266316914966.Spec : Prop :=
  ∀ n, P11052864266316914966.a n = A025783 n

end A025783

/-! ## A025783.P14449466534562144367

`A029105(2*n+1)-A029197(2*n+1)`
-/

namespace A025783.P14449466534562144367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029105 (2 * n + 1) - A029197 (2 * n + 1)

end

end A025783.P14449466534562144367

namespace A025783

/-- `A029105(2*n+1)-A029197(2*n+1)` -/
def P14449466534562144367.Spec : Prop :=
  ∀ n, P14449466534562144367.a n = A025783 n

end A025783

/-! ## A025783.P15670049564338280663

`A025827(A004277(n))+A000007(n)`
-/

namespace A025783.P15670049564338280663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 (A004277 n).toNat + A000007 n

end

end A025783.P15670049564338280663

namespace A025783

/-- `A025827(A004277(n))+A000007(n)` -/
def P15670049564338280663.Spec : Prop :=
  ∀ n, P15670049564338280663.a n = A025783 n

end A025783

/-! ## A025783.P7323883267504018221

`A029072(n)-A029240(2*n+3)`
-/

namespace A025783.P7323883267504018221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029072 n - A029240 (2 * n + 3)

end

end A025783.P7323883267504018221

namespace A025783

/-- `A029072(n)-A029240(2*n+3)` -/
def P7323883267504018221.Spec : Prop :=
  ∀ n, P7323883267504018221.a n = A025783 n

end A025783

/-! ## A025783.P7460029593144619298

`A029240(2*n)-A029240(2*n+3)`
-/

namespace A025783.P7460029593144619298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (2 * n) - A029240 (2 * n + 3)

end

end A025783.P7460029593144619298

namespace A025783

/-- `A029240(2*n)-A029240(2*n+3)` -/
def P7460029593144619298.Spec : Prop :=
  ∀ n, P7460029593144619298.a n = A025783 n

end A025783

/-! ## A025783.P285806923568372478

`A025827(A005843(n))%A000051(n)`
-/

namespace A025783.P285806923568372478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025827 (A005843 n).toNat) (A000051 n)

end

end A025783.P285806923568372478

namespace A025783

/-- `A025827(A005843(n))%A000051(n)` -/
def P285806923568372478.Spec : Prop :=
  ∀ n, P285806923568372478.a n = A025783 n

end A025783

/-!
# A025784: Expansion of 1/((1-x)*(1-x^7)*(1-x^8)).

The programs for A025784, the canonical program `A025784.P15730580995061682361` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025784 has offset 0).

The definition of A025784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^7+x^9+x^15-x^16))` (program `A025784.P15730580995061682361`, by `A025784.P15730580995061682361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025784.P15730580995061682361

`ogf(1/(1-x-x^7+x^9+x^15-x^16))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025784

/-- `ogf(1/(1-x-x^7+x^9+x^15-x^16))` -/
def P15730580995061682361.Spec : Prop :=
  ∀ n, P15730580995061682361.a n = A025784 n

theorem P15730580995061682361.correct : P15730580995061682361.Spec := by
  intro n
  simp only [A025784]

end A025784

/-! ## A025784.P614315129234418828

`A008725(n)-∑[ceil(n/8)]`
-/

namespace A025784.P614315129234418828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008725 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025784.P614315129234418828

namespace A025784

/-- `A008725(n)-∑[ceil(n/8)]` -/
def P614315129234418828.Spec : Prop :=
  ∀ n, P614315129234418828.a n = A025784 n

end A025784

/-! ## A025784.P12898679594871314862

`A025816(abs(1-n))+A025816(n)`
-/

namespace A025784.P12898679594871314862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025816 |1 - (n : ℤ)|.toNat + A025816 n

end

end A025784.P12898679594871314862

namespace A025784

/-- `A025816(abs(1-n))+A025816(n)` -/
def P12898679594871314862.Spec : Prop :=
  ∀ n, P12898679594871314862.a n = A025784 n

end A025784

/-! ## A025784.P10772052623387710717

`A033440(n)+n+1-A033439(n+1)`
-/

namespace A025784.P10772052623387710717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033440 n + ((n + 1 : ℤ) - A033439 (n + 1))

end

end A025784.P10772052623387710717

namespace A025784

/-- `A033440(n)+n+1-A033439(n+1)` -/
def P10772052623387710717.Spec : Prop :=
  ∀ n, P10772052623387710717.a n = A025784 n

end A025784

/-! ## A025784.P17388616811656082389

`∑[A004777(n+8)-A248375(n+7)]`
-/

namespace A025784.P17388616811656082389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004777 (n + 8) - A248375 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025784.P17388616811656082389

namespace A025784

/-- `∑[A004777(n+8)-A248375(n+7)]` -/
def P17388616811656082389.Spec : Prop :=
  ∀ n, P17388616811656082389.a n = A025784 n

end A025784

/-! ## A025784.P2012559397178342819

`A033440(n+8)-A033439(n+8)`
-/

namespace A025784.P2012559397178342819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033440 (n + 8) - A033439 (n + 8)

end

end A025784.P2012559397178342819

namespace A025784

/-- `A033440(n+8)-A033439(n+8)` -/
def P2012559397178342819.Spec : Prop :=
  ∀ n, P2012559397178342819.a n = A025784 n

end A025784

/-! ## A025784.P1341025649391773841

`∑[A008617(2*n)-A110656(n)]`
-/

namespace A025784.P1341025649391773841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * n) - A110656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025784.P1341025649391773841

namespace A025784

/-- `∑[A008617(2*n)-A110656(n)]` -/
def P1341025649391773841.Spec : Prop :=
  ∀ n, P1341025649391773841.a n = A025784 n

end A025784

/-!
# A025785: Expansion of 1/((1-x)(1-x^7)(1-x^9)).

The programs for A025785, the canonical program `A025785.P9469827334799471386` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025785 has offset 0).

The definition of A025785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^7+x^8-x^9+x^10+x^16-x^17))` (program `A025785.P9469827334799471386`, by `A025785.P9469827334799471386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025785.P9469827334799471386

`ogf(1/(1-x-x^7+x^8-x^9+x^10+x^16-x^17))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025785

/-- `ogf(1/(1-x-x^7+x^8-x^9+x^10+x^16-x^17))` -/
def P9469827334799471386.Spec : Prop :=
  ∀ n, P9469827334799471386.a n = A025785 n

theorem P9469827334799471386.correct : P9469827334799471386.Spec := by
  intro n
  simp only [A025785]

end A025785

/-! ## A025785.P4392221314753301487

`A025817(abs(1-n))+A025817(n)`
-/

namespace A025785.P4392221314753301487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025817 |1 - (n : ℤ)|.toNat + A025817 n

end

end A025785.P4392221314753301487

namespace A025785

/-- `A025817(abs(1-n))+A025817(n)` -/
def P4392221314753301487.Spec : Prop :=
  ∀ n, P4392221314753301487.a n = A025785 n

end A025785

/-! ## A025785.P12688131732497984269

`A025821(abs(1-n))+A025816(n)`
-/

namespace A025785.P12688131732497984269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025821 |1 - (n : ℤ)|.toNat + A025816 n

end

end A025785.P12688131732497984269

namespace A025785

/-- `A025821(abs(1-n))+A025816(n)` -/
def P12688131732497984269.Spec : Prop :=
  ∀ n, P12688131732497984269.a n = A025785 n

end A025785

/-! ## A025785.P5175919609352315944

`A025868(2*n+7)`
-/

namespace A025785.P5175919609352315944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025868 (2 * n + 7)

end

end A025785.P5175919609352315944

namespace A025785

/-- `A025868(2*n+7)` -/
def P5175919609352315944.Spec : Prop :=
  ∀ n, P5175919609352315944.a n = A025785 n

end A025785

/-! ## A025785.P3091045954342967370

`Δ[A029182(2*n+5)]`
-/

namespace A025785.P3091045954342967370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029182 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025785.P3091045954342967370

namespace A025785

/-- `Δ[A029182(2*n+5)]` -/
def P3091045954342967370.Spec : Prop :=
  ∀ n, P3091045954342967370.a n = A025785 n

end A025785

/-! ## A025785.P7737109278852038485

`A025868(A308602(n+3))%A054017(n+1)`
-/

namespace A025785.P7737109278852038485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025868 (A308602 (n + 3)).toNat) (A054017 (n + 1))

end

end A025785.P7737109278852038485

namespace A025785

/-- `A025868(A308602(n+3))%A054017(n+1)` -/
def P7737109278852038485.Spec : Prop :=
  ∀ n, P7737109278852038485.a n = A025785 n

end A025785

/-! ## A025785.P4916140347641793289

`A029348(A005818(n+2))-A029348(2*n+1)`
-/

namespace A025785.P4916140347641793289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029348 (A005818 (n + 2)).toNat - A029348 (2 * n + 1)

end

end A025785.P4916140347641793289

namespace A025785

/-- `A029348(A005818(n+2))-A029348(2*n+1)` -/
def P4916140347641793289.Spec : Prop :=
  ∀ n, P4916140347641793289.a n = A025785 n

end A025785

/-! ## A025785.P1037133074389710635

`∑[A055640(A116377(n+7))^A321903(n+1)]`
-/

namespace A025785.P1037133074389710635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055640 (A116377 (n + 7)).toNat : ℚ) ^ (A321903 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025785.P1037133074389710635

namespace A025785

/-- `∑[A055640(A116377(n+7))^A321903(n+1)]` -/
def P1037133074389710635.Spec : Prop :=
  ∀ n, P1037133074389710635.a n = (A025785 n : ℚ)

end A025785

/-! ## A025785.P16499862017497591449

`∑[A055640(A116377(n+7))^A237494(n+1)]`
-/

namespace A025785.P16499862017497591449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055640 (A116377 (n + 7)).toNat : ℚ) ^ (A237494 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025785.P16499862017497591449

namespace A025785

/-- `∑[A055640(A116377(n+7))^A237494(n+1)]` -/
def P16499862017497591449.Spec : Prop :=
  ∀ n, P16499862017497591449.a n = (A025785 n : ℚ)

end A025785

/-!
# A025786: Expansion of 1/((1-x)(1-x^7)(1-x^10)).

The programs for A025786, the canonical program `A025786.P5399834391578465460` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025786 has offset 0).

The definition of A025786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^7+x^8-x^10+x^11+x^17-x^18))` (program `A025786.P5399834391578465460`, by `A025786.P5399834391578465460.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025786.P5399834391578465460

`ogf(1/(1-x-x^7+x^8-x^10+x^11+x^17-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025786

/-- `ogf(1/(1-x-x^7+x^8-x^10+x^11+x^17-x^18))` -/
def P5399834391578465460.Spec : Prop :=
  ∀ n, P5399834391578465460.a n = A025786 n

theorem P5399834391578465460.correct : P5399834391578465460.Spec := by
  intro n
  simp only [A025786]

end A025786

/-! ## A025786.P7132858397673449593

`A025818(abs(1-n))+A025818(n)`
-/

namespace A025786.P7132858397673449593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 |1 - (n : ℤ)|.toNat + A025818 n

end

end A025786.P7132858397673449593

namespace A025786

/-- `A025818(abs(1-n))+A025818(n)` -/
def P7132858397673449593.Spec : Prop :=
  ∀ n, P7132858397673449593.a n = A025786 n

end A025786

/-! ## A025786.P802177740473510780

`A029075(n)+A029108(n)-A029070(n)`
-/

namespace A025786.P802177740473510780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029075 n + (A029108 n - A029070 n)

end

end A025786.P802177740473510780

namespace A025786

/-- `A029075(n)+A029108(n)-A029070(n)` -/
def P802177740473510780.Spec : Prop :=
  ∀ n, P802177740473510780.a n = A025786 n

end A025786

/-! ## A025786.P2000521033761067398

`A025912(3*n+14)`
-/

namespace A025786.P2000521033761067398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025912 (3 * n + 14)

end

end A025786.P2000521033761067398

namespace A025786

/-- `A025912(3*n+14)` -/
def P2000521033761067398.Spec : Prop :=
  ∀ n, P2000521033761067398.a n = A025786 n

end A025786

/-! ## A025786.P16949667074394130833

`∑[∑[A016428(8*n)]]`
-/

namespace A025786.P16949667074394130833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016428 (8 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025786.P16949667074394130833

namespace A025786

/-- `∑[∑[A016428(8*n)]]` -/
def P16949667074394130833.Spec : Prop :=
  ∀ n, P16949667074394130833.a n = A025786 n

end A025786

/-!
# A025787: Expansion of 1/((1-x)(1-x^7)(1-x^11)).

The programs for A025787, the canonical program `A025787.P5684849545966850858` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025787 has offset 0).

The definition of A025787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^7+x^8-x^11+x^12+x^18-x^19))` (program `A025787.P5684849545966850858`, by `A025787.P5684849545966850858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025787.P5684849545966850858

`ogf(1/(1-x-x^7+x^8-x^11+x^12+x^18-x^19))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025787

/-- `ogf(1/(1-x-x^7+x^8-x^11+x^12+x^18-x^19))` -/
def P5684849545966850858.Spec : Prop :=
  ∀ n, P5684849545966850858.a n = A025787 n

theorem P5684849545966850858.correct : P5684849545966850858.Spec := by
  intro n
  simp only [A025787]

end A025787

/-! ## A025787.P3809630708604853053

`∑[A168201(n)]`
-/

namespace A025787.P3809630708604853053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025787.P3809630708604853053

namespace A025787

/-- `∑[A168201(n)]` -/
def P3809630708604853053.Spec : Prop :=
  ∀ n, P3809630708604853053.a n = A025787 n

end A025787

/-! ## A025787.P15287660197517465360

`A168201(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A025787.P15287660197517465360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168201 n + a (A023443 n).toNat

end

end A025787.P15287660197517465360

namespace A025787

/-- `A168201(n)+a(A023443(n))` -/
def P15287660197517465360.Spec : Prop :=
  ∀ n, P15287660197517465360.a n = A025787 n

end A025787

/-! ## A025787.P9020564211015333637

`A025819(abs(1-n))+A025819(n)`
-/

namespace A025787.P9020564211015333637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 |1 - (n : ℤ)|.toNat + A025819 n

end

end A025787.P9020564211015333637

namespace A025787

/-- `A025819(abs(1-n))+A025819(n)` -/
def P9020564211015333637.Spec : Prop :=
  ∀ n, P9020564211015333637.a n = A025787 n

end A025787

/-! ## A025787.P3027080298753918792

`A029094(n)+A029109(n)-A029085(n)`
-/

namespace A025787.P3027080298753918792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029094 n + (A029109 n - A029085 n)

end

end A025787.P3027080298753918792

namespace A025787

/-- `A029094(n)+A029109(n)-A029085(n)` -/
def P3027080298753918792.Spec : Prop :=
  ∀ n, P3027080298753918792.a n = A025787 n

end A025787

/-! ## A025787.P6598011237300275667

`∑[A025885(n)+A025900(n)-A025876(n)]`
-/

namespace A025787.P6598011237300275667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 n + (A025900 n - A025876 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025787.P6598011237300275667

namespace A025787

/-- `∑[A025885(n)+A025900(n)-A025876(n)]` -/
def P6598011237300275667.Spec : Prop :=
  ∀ n, P6598011237300275667.a n = A025787 n

end A025787

/-! ## A025787.P14743887776328834918

`A168201(A000217(n+9)-27)`
-/

namespace A025787.P14743887776328834918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A000217 (n + 9) - 27).toNat

end

end A025787.P14743887776328834918

namespace A025787

/-- `A168201(A000217(n+9)-27)` -/
def P14743887776328834918.Spec : Prop :=
  ∀ n, P14743887776328834918.a n = A025787 n

end A025787

/-! ## A025787.P1674314999431200204

`A168201(A155212(n+4)+n+1)`
-/

namespace A025787.P1674314999431200204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A155212 (n + 4) + (n + 1 : ℤ)).toNat

end

end A025787.P1674314999431200204

namespace A025787

/-- `A168201(A155212(n+4)+n+1)` -/
def P1674314999431200204.Spec : Prop :=
  ∀ n, P1674314999431200204.a n = A025787 n

end A025787

/-! ## A025787.P10610341067475664841

`A168201(A046691(n+3)+4*n)`
-/

namespace A025787.P10610341067475664841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A046691 (n + 3) + (4 * n : ℤ)).toNat

end

end A025787.P10610341067475664841

namespace A025787

/-- `A168201(A046691(n+3)+4*n)` -/
def P10610341067475664841.Spec : Prop :=
  ∀ n, P10610341067475664841.a n = A025787 n

end A025787

/-! ## A025787.P9226555717549486985

`A168201(2*n+A000124(n+7)-7)`
-/

namespace A025787.P9226555717549486985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 ((2 * n : ℤ) + (A000124 (n + 7) - 7)).toNat

end

end A025787.P9226555717549486985

namespace A025787

/-- `A168201(2*n+A000124(n+7)-7)` -/
def P9226555717549486985.Spec : Prop :=
  ∀ n, P9226555717549486985.a n = A025787 n

end A025787

/-! ## A025787.P6093294383765607424

`A168201(A061570(n+2)+A167499(n+5)+1)`
-/

namespace A025787.P6093294383765607424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A061570 (n + 2) + (A167499 (n + 5) + 1)).toNat

end

end A025787.P6093294383765607424

namespace A025787

/-- `A168201(A061570(n+2)+A167499(n+5)+1)` -/
def P6093294383765607424.Spec : Prop :=
  ∀ n, P6093294383765607424.a n = A025787 n

end A025787

/-! ## A025787.P11561638746632813125

`A168201(A052905(n+6))`
-/

namespace A025787.P11561638746632813125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A052905 (n + 6)).toNat

end

end A025787.P11561638746632813125

namespace A025787

/-- `A168201(A052905(n+6))` -/
def P11561638746632813125.Spec : Prop :=
  ∀ n, P11561638746632813125.a n = A025787 n

end A025787

/-! ## A025787.P8675414488103644241

`A168201(A056000(n+6)-(n+2))`
-/

namespace A025787.P8675414488103644241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A056000 (n + 6) - (n + 2 : ℤ)).toNat

end

end A025787.P8675414488103644241

namespace A025787

/-- `A168201(A056000(n+6)-(n+2))` -/
def P8675414488103644241.Spec : Prop :=
  ∀ n, P8675414488103644241.a n = A025787 n

end A025787

/-! ## A025787.P15979253710240922168

`A168201(A000124(n+8)+n-1)`
-/

namespace A025787.P15979253710240922168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A025787.P15979253710240922168

namespace A025787

/-- `A168201(A000124(n+8)+n-1)` -/
def P15979253710240922168.Spec : Prop :=
  ∀ n, P15979253710240922168.a n = A025787 n

end A025787

/-!
# A025788: Expansion of 1/((1-x)(1-x^7)(1-x^12)).

The programs for A025788, the canonical program `A025788.P1148932659813533873` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025788 has offset 0).

The definition of A025788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^7+x^8-x^12+x^13+x^19-x^20))` (program `A025788.P1148932659813533873`, by `A025788.P1148932659813533873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025788.P1148932659813533873

`ogf(1/(1-x-x^7+x^8-x^12+x^13+x^19-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025788

/-- `ogf(1/(1-x-x^7+x^8-x^12+x^13+x^19-x^20))` -/
def P1148932659813533873.Spec : Prop :=
  ∀ n, P1148932659813533873.a n = A025788 n

theorem P1148932659813533873.correct : P1148932659813533873.Spec := by
  intro n
  simp only [A025788]

end A025788

/-! ## A025788.P4064732391598923676

`A025820(abs(1-n))+A025820(n)`
-/

namespace A025788.P4064732391598923676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025820 |1 - (n : ℤ)|.toNat + A025820 n

end

end A025788.P4064732391598923676

namespace A025788

/-- `A025820(abs(1-n))+A025820(n)` -/
def P4064732391598923676.Spec : Prop :=
  ∀ n, P4064732391598923676.a n = A025788 n

end A025788

/-! ## A025788.P15228830867718846261

`A110654(∑[A008615(n)-A194511(n+1)])`
-/

namespace A025788.P15228830867718846261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n - A194511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025788.P15228830867718846261

namespace A025788

/-- `A110654(∑[A008615(n)-A194511(n+1)])` -/
def P15228830867718846261.Spec : Prop :=
  ∀ n, P15228830867718846261.a n = A025788 n

end A025788

/-! ## A025788.P7388130268296348801

`A008617(A211540(n+12)-6)`
-/

namespace A025788.P7388130268296348801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A211540 (n + 12) - 6).toNat

end

end A025788.P7388130268296348801

namespace A025788

/-- `A008617(A211540(n+12)-6)` -/
def P7388130268296348801.Spec : Prop :=
  ∀ n, P7388130268296348801.a n = A025788 n

end A025788

/-! ## A025788.P7979290617394651868

`A008617(A266755(2*(n+1))+n+1)`
-/

namespace A025788.P7979290617394651868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A266755 (2 * (n + 1)) + (n + 1 : ℤ)).toNat

end

end A025788.P7979290617394651868

namespace A025788

/-- `A008617(A266755(2*(n+1))+n+1)` -/
def P7979290617394651868.Spec : Prop :=
  ∀ n, P7979290617394651868.a n = A025788 n

end A025788

/-!
# A025789: Expansion of 1/((1-x)*(1-x^8)*(1-x^9)).

The programs for A025789, the canonical program `A025789.P16363436827359869825` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025789 has offset 0).

The definition of A025789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^8+x^10+x^17-x^18))` (program `A025789.P16363436827359869825`, by `A025789.P16363436827359869825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025789.P16363436827359869825

`ogf(1/(1-x-x^8+x^10+x^17-x^18))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025789

/-- `ogf(1/(1-x-x^8+x^10+x^17-x^18))` -/
def P16363436827359869825.Spec : Prop :=
  ∀ n, P16363436827359869825.a n = A025789 n

theorem P16363436827359869825.correct : P16363436827359869825.Spec := by
  intro n
  simp only [A025789]

end A025789

/-! ## A025789.P4543356228258914998

`A025774(n)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A025789.P4543356228258914998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A025774 n - a (n - 4)

end

end A025789.P4543356228258914998

namespace A025789

/-- `A025774(n)-a(n-4)` -/
def P4543356228258914998.Spec : Prop :=
  ∀ n, P4543356228258914998.a n = A025789 n

end A025789

/-! ## A025789.P5797353827193388653

`A025821(abs(1-n))+A025821(n)`
-/

namespace A025789.P5797353827193388653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025821 |1 - (n : ℤ)|.toNat + A025821 n

end

end A025789.P5797353827193388653

namespace A025789

/-- `A025821(abs(1-n))+A025821(n)` -/
def P5797353827193388653.Spec : Prop :=
  ∀ n, P5797353827193388653.a n = A025789 n

end A025789

/-! ## A025789.P1167257007481069934

`∑[A132292(n+9)-ceil(n/9)]`
-/

namespace A025789.P1167257007481069934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (n + 9) - ⌈(n : ℚ) / 9⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025789.P1167257007481069934

namespace A025789

/-- `∑[A132292(n+9)-ceil(n/9)]` -/
def P1167257007481069934.Spec : Prop :=
  ∀ n, P1167257007481069934.a n = A025789 n

end A025789

/-! ## A025789.P3905502437350118213

`∑[A075993(A167614(n+6)+5)]`
-/

namespace A025789.P3905502437350118213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075993 (A167614 (n + 6) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025789.P3905502437350118213

namespace A025789

/-- `∑[A075993(A167614(n+6)+5)]` -/
def P3905502437350118213.Spec : Prop :=
  ∀ n, P3905502437350118213.a n = A025789 n

end A025789

/-! ## A025789.P465583263681824098

`∑[A179801(A101594(n+1))]`
-/

namespace A025789.P465583263681824098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (A101594 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025789.P465583263681824098

namespace A025789

/-- `∑[A179801(A101594(n+1))]` -/
def P465583263681824098.Spec : Prop :=
  ∀ n, P465583263681824098.a n = A025789 n

end A025789

/-! ## A025789.P17633833000070597345

`∑[A179801(A125290(n+1))]`
-/

namespace A025789.P17633833000070597345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (A125290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025789.P17633833000070597345

namespace A025789

/-- `∑[A179801(A125290(n+1))]` -/
def P17633833000070597345.Spec : Prop :=
  ∀ n, P17633833000070597345.a n = A025789 n

end A025789

/-! ## A025789.P7933672566731587056

`A025791(A037477(n))%A062054(A266750(n))`
-/

namespace A025789.P7933672566731587056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025791 (A037477 n).toNat) (A062054 (A266750 n).toNat)

end

end A025789.P7933672566731587056

namespace A025789

/-- `A025791(A037477(n))%A062054(A266750(n))` -/
def P7933672566731587056.Spec : Prop :=
  ∀ n, P7933672566731587056.a n = A025789 n

end A025789

/-! ## A025789.P5824918981359959639

`A025791(A037477(n))*A033999(A224666(n+1))`
-/

namespace A025789.P5824918981359959639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025791 (A037477 n).toNat * A033999 (A224666 (n + 1)).toNat

end

end A025789.P5824918981359959639

namespace A025789

/-- `A025791(A037477(n))*A033999(A224666(n+1))` -/
def P5824918981359959639.Spec : Prop :=
  ∀ n, P5824918981359959639.a n = A025789 n

end A025789

/-!
# A025790: Expansion of 1/((1-x)(1-x^8)(1-x^11)).

The programs for A025790, the canonical program `A025790.P11498567106841941704` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025790 has offset 0).

The definition of A025790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^8+x^9-x^11+x^12+x^19-x^20))` (program `A025790.P11498567106841941704`, by `A025790.P11498567106841941704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025790.P11498567106841941704

`ogf(1/(1-x-x^8+x^9-x^11+x^12+x^19-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025790

/-- `ogf(1/(1-x-x^8+x^9-x^11+x^12+x^19-x^20))` -/
def P11498567106841941704.Spec : Prop :=
  ∀ n, P11498567106841941704.a n = A025790 n

theorem P11498567106841941704.correct : P11498567106841941704.Spec := by
  intro n
  simp only [A025790]

end A025790

/-! ## A025790.P12026998922626050715

`A025822(abs(1-n))+A025822(n)`
-/

namespace A025790.P12026998922626050715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 |1 - (n : ℤ)|.toNat + A025822 n

end

end A025790.P12026998922626050715

namespace A025790

/-- `A025822(abs(1-n))+A025822(n)` -/
def P12026998922626050715.Spec : Prop :=
  ∀ n, P12026998922626050715.a n = A025790 n

end A025790

/-! ## A025790.P3684720810396376299

`A029098(n)+A029112(n)-A029086(n)`
-/

namespace A025790.P3684720810396376299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029098 n + (A029112 n - A029086 n)

end

end A025790.P3684720810396376299

namespace A025790

/-- `A029098(n)+A029112(n)-A029086(n)` -/
def P3684720810396376299.Spec : Prop :=
  ∀ n, P3684720810396376299.a n = A025790 n

end A025790

/-! ## A025790.P1690682582779987641

`A025805(n+3)+A025822(n)-A025822(n+3)`
-/

namespace A025790.P1690682582779987641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025805 (n + 3) + (A025822 n - A025822 (n + 3))

end

end A025790.P1690682582779987641

namespace A025790

/-- `A025805(n+3)+A025822(n)-A025822(n+3)` -/
def P1690682582779987641.Spec : Prop :=
  ∀ n, P1690682582779987641.a n = A025790 n

end A025790

/-! ## A025790.P6977924829000180690

`A025919(A075683(n+2))`
-/

namespace A025790.P6977924829000180690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 (A075683 (n + 2)).toNat

end

end A025790.P6977924829000180690

namespace A025790

/-- `A025919(A075683(n+2))` -/
def P6977924829000180690.Spec : Prop :=
  ∀ n, P6977924829000180690.a n = A025790 n

end A025790

/-! ## A025790.P7666981015295225329

`A025919(A008486(n)+16)`
-/

namespace A025790.P7666981015295225329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 (A008486 n + 16).toNat

end

end A025790.P7666981015295225329

namespace A025790

/-- `A025919(A008486(n)+16)` -/
def P7666981015295225329.Spec : Prop :=
  ∀ n, P7666981015295225329.a n = A025790 n

end A025790

/-! ## A025790.P6045626569698868387

`Δ[record[A029317(A123684(n+1))]]`
-/

namespace A025790.P6045626569698868387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029317 (A123684 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025790.P6045626569698868387

namespace A025790

/-- `Δ[record[A029317(A123684(n+1))]]` -/
def P6045626569698868387.Spec : Prop :=
  ∀ n, P6045626569698868387.a n = A025790 n

end A025790

/-! ## A025790.P8173595100970071405

`∑[A000035(∑[A029010(n)])]`
-/

namespace A025790.P8173595100970071405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025790.P8173595100970071405

namespace A025790

/-- `∑[A000035(∑[A029010(n)])]` -/
def P8173595100970071405.Spec : Prop :=
  ∀ n, P8173595100970071405.a n = A025790 n

end A025790

/-!
# A025791: Expansion of 1/((1-x)*(1-x^9)*(1-x^10)).

The programs for A025791, the canonical program `A025791.P1999245402082995601` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025791 has offset 0).

The definition of A025791 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^9+x^11+x^19-x^20))` (program `A025791.P1999245402082995601`, by `A025791.P1999245402082995601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025791.P1999245402082995601

`ogf(1/(1-x-x^9+x^11+x^19-x^20))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025791

/-- `ogf(1/(1-x-x^9+x^11+x^19-x^20))` -/
def P1999245402082995601.Spec : Prop :=
  ∀ n, P1999245402082995601.a n = A025791 n

theorem P1999245402082995601.correct : P1999245402082995601.Spec := by
  intro n
  simp only [A025791]

end A025791

/-! ## A025791.P3758099405769562848

`A025823(abs(1-n))+A025823(n)`
-/

namespace A025791.P3758099405769562848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 |1 - (n : ℤ)|.toNat + A025823 n

end

end A025791.P3758099405769562848

namespace A025791

/-- `A025823(abs(1-n))+A025823(n)` -/
def P3758099405769562848.Spec : Prop :=
  ∀ n, P3758099405769562848.a n = A025791 n

end A025791

/-! ## A025791.P7929984364252260661

`A025823(n)+A029080(n)-A029174(n)`
-/

namespace A025791.P7929984364252260661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 n + (A029080 n - A029174 n)

end

end A025791.P7929984364252260661

namespace A025791

/-- `A025823(n)+A029080(n)-A029174(n)` -/
def P7929984364252260661.Spec : Prop :=
  ∀ n, P7929984364252260661.a n = A025791 n

end A025791

/-! ## A025791.P10638500980640695787

`A029080(n)+A029100(n)-A029067(n)`
-/

namespace A025791.P10638500980640695787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029080 n + (A029100 n - A029067 n)

end

end A025791.P10638500980640695787

namespace A025791

/-- `A029080(n)+A029100(n)-A029067(n)` -/
def P10638500980640695787.Spec : Prop :=
  ∀ n, P10638500980640695787.a n = A025791 n

end A025791

/-! ## A025791.P12206523194647390011

`∑[A025854(n)-A214772(2*n+3)]`
-/

namespace A025791.P12206523194647390011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025854 n - A214772 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025791.P12206523194647390011

namespace A025791

/-- `∑[A025854(n)-A214772(2*n+3)]` -/
def P12206523194647390011.Spec : Prop :=
  ∀ n, P12206523194647390011.a n = A025791 n

end A025791

/-! ## A025791.P7123282410956635204

`A029058(n)-∑[A214772(2*n+3)]`
-/

namespace A025791.P7123282410956635204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029058 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025791.P7123282410956635204

namespace A025791

/-- `A029058(n)-∑[A214772(2*n+3)]` -/
def P7123282410956635204.Spec : Prop :=
  ∀ n, P7123282410956635204.a n = A025791 n

end A025791

/-! ## A025791.P9942910195298487998

`∑[A214772(2*n)]-∑[A214772(2*n+3)]`
-/

namespace A025791.P9942910195298487998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214772 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A025791.P9942910195298487998

namespace A025791

/-- `∑[A214772(2*n)]-∑[A214772(2*n+3)]` -/
def P9942910195298487998.Spec : Prop :=
  ∀ n, P9942910195298487998.a n = A025791 n

end A025791

/-! ## A025791.P15000322714677079852

`A028310(a(n-1))+A025854(n)-A214772(2*n+3)` with `a(0)=1`
-/

namespace A025791.P15000322714677079852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A025854 n - A214772 (2 * n + 3)

end

end A025791.P15000322714677079852

namespace A025791

/-- `A028310(a(n-1))+A025854(n)-A214772(2*n+3)` -/
def P15000322714677079852.Spec : Prop :=
  ∀ n, P15000322714677079852.a n = A025791 n

end A025791

/-! ## A025791.P12637563202681576272

`∑[A075993(A000096(n+7)+10)]`
-/

namespace A025791.P12637563202681576272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075993 (A000096 (n + 7) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025791.P12637563202681576272

namespace A025791

/-- `∑[A075993(A000096(n+7)+10)]` -/
def P12637563202681576272.Spec : Prop :=
  ∀ n, P12637563202681576272.a n = A025791 n

end A025791

/-! ## A025791.P682929248614505017

`A025793(A160542(n+1)+A151878(n))`
-/

namespace A025791.P682929248614505017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025793 (A160542 (n + 1) + A151878 n).toNat

end

end A025791.P682929248614505017

namespace A025791

/-- `A025793(A160542(n+1)+A151878(n))` -/
def P682929248614505017.Spec : Prop :=
  ∀ n, P682929248614505017.a n = A025791 n

end A025791

/-!
# A025792: Expansion of 1/((1-x)*(1-x^9)*(1-x^11)).

The programs for A025792, the canonical program `A025792.P5303570265873773889` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025792 has offset 0).

The definition of A025792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^9+x^10-x^11+x^12+x^20-x^21))` (program `A025792.P5303570265873773889`, by `A025792.P5303570265873773889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025792.P5303570265873773889

`ogf(1/(1-x-x^9+x^10-x^11+x^12+x^20-x^21))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025792

/-- `ogf(1/(1-x-x^9+x^10-x^11+x^12+x^20-x^21))` -/
def P5303570265873773889.Spec : Prop :=
  ∀ n, P5303570265873773889.a n = A025792 n

theorem P5303570265873773889.correct : P5303570265873773889.Spec := by
  intro n
  simp only [A025792]

end A025792

/-! ## A025792.P9769894626943963731

`A025824(abs(1-n))+A025824(n)`
-/

namespace A025792.P9769894626943963731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025824 |1 - (n : ℤ)|.toNat + A025824 n

end

end A025792.P9769894626943963731

namespace A025792

/-- `A025824(abs(1-n))+A025824(n)` -/
def P9769894626943963731.Spec : Prop :=
  ∀ n, P9769894626943963731.a n = A025792 n

end A025792

/-! ## A025792.P10414081824493770489

`A025826(abs(1-n))+A025823(n)`
-/

namespace A025792.P10414081824493770489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 |1 - (n : ℤ)|.toNat + A025823 n

end

end A025792.P10414081824493770489

namespace A025792

/-- `A025826(abs(1-n))+A025823(n)` -/
def P10414081824493770489.Spec : Prop :=
  ∀ n, P10414081824493770489.a n = A025792 n

end A025792

/-! ## A025792.P15059314155598859428

`A029101(n)+A029114(n)-A029087(n)`
-/

namespace A025792.P15059314155598859428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029101 n + (A029114 n - A029087 n)

end

end A025792.P15059314155598859428

namespace A025792

/-- `A029101(n)+A029114(n)-A029087(n)` -/
def P15059314155598859428.Spec : Prop :=
  ∀ n, P15059314155598859428.a n = A025792 n

end A025792

/-! ## A025792.P1993305075892967676

`Δ[A029189(2*n+7)]`
-/

namespace A025792.P1993305075892967676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029189 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025792.P1993305075892967676

namespace A025792

/-- `Δ[A029189(2*n+7)]` -/
def P1993305075892967676.Spec : Prop :=
  ∀ n, P1993305075892967676.a n = A025792 n

end A025792

/-! ## A025792.P8488647684492892054

`Δ[record[A029189(A093178(n))]]`
-/

namespace A025792.P8488647684492892054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029189 (A093178 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025792.P8488647684492892054

namespace A025792

/-- `Δ[record[A029189(A093178(n))]]` -/
def P8488647684492892054.Spec : Prop :=
  ∀ n, P8488647684492892054.a n = A025792 n

end A025792

/-! ## A025792.P14165667473257451183

`Δ[record[A029189(A000265(n+1))]]`
-/

namespace A025792.P14165667473257451183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029189 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025792.P14165667473257451183

namespace A025792

/-- `Δ[record[A029189(A000265(n+1))]]` -/
def P14165667473257451183.Spec : Prop :=
  ∀ n, P14165667473257451183.a n = A025792 n

end A025792

/-!
# A025793: Expansion of 1/((1-x)*(1-x^10)*(1-x^11)).

The programs for A025793, the canonical program `A025793.P4367400417196970955` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025793 has offset 0).

The definition of A025793 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^10+x^12+x^21-x^22))` (program `A025793.P4367400417196970955`, by `A025793.P4367400417196970955.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025793.P4367400417196970955

`ogf(1/(1-x-x^10+x^12+x^21-x^22))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025793

/-- `ogf(1/(1-x-x^10+x^12+x^21-x^22))` -/
def P4367400417196970955.Spec : Prop :=
  ∀ n, P4367400417196970955.a n = A025793 n

theorem P4367400417196970955.correct : P4367400417196970955.Spec := by
  intro n
  simp only [A025793]

end A025793

/-! ## A025793.P2370461195334222504

`A025826(abs(1-n))+A025826(n)`
-/

namespace A025793.P2370461195334222504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 |1 - (n : ℤ)|.toNat + A025826 n

end

end A025793.P2370461195334222504

namespace A025793

/-- `A025826(abs(1-n))+A025826(n)` -/
def P2370461195334222504.Spec : Prop :=
  ∀ n, P2370461195334222504.a n = A025793 n

end A025793

/-! ## A025793.P17482771302027184557

`A029103(n)+A029115(n)-A029088(n)`
-/

namespace A025793.P17482771302027184557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 n + (A029115 n - A029088 n)

end

end A025793.P17482771302027184557

namespace A025793

/-- `A029103(n)+A029115(n)-A029088(n)` -/
def P17482771302027184557.Spec : Prop :=
  ∀ n, P17482771302027184557.a n = A025793 n

end A025793

/-! ## A025793.P2605598490901383801

`A025792(n)+A025826(n)-(A029080(n+1)-A029174(n+1))`
-/

namespace A025793.P2605598490901383801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025792 n + (A025826 n - (A029080 (n + 1) - A029174 (n + 1)))

end

end A025793.P2605598490901383801

namespace A025793

/-- `A025792(n)+A025826(n)-(A029080(n+1)-A029174(n+1))` -/
def P2605598490901383801.Spec : Prop :=
  ∀ n, P2605598490901383801.a n = A025793 n

end A025793

/-! ## A025793.P9948994393110429220

`A002260(A033443(n)+∑[(floor(n/10)+1)%(n+1)]+1)`
-/

namespace A025793.P9948994393110429220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / 10⌋ + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A033443 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A025793.P9948994393110429220

namespace A025793

/-- `A002260(A033443(n)+∑[(floor(n/10)+1)%(n+1)]+1)` -/
def P9948994393110429220.Spec : Prop :=
  ∀ n, P9948994393110429220.a n = A025793 n

end A025793

/-! ## A025793.P2588013253571655519

`∑[A002828(A017887(n)²)]`
-/

namespace A025793.P2588013253571655519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A017887 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025793.P2588013253571655519

namespace A025793

/-- `∑[A002828(A017887(n)²)]` -/
def P2588013253571655519.Spec : Prop :=
  ∀ n, P2588013253571655519.a n = A025793 n

end A025793

/-! ## A025793.P15373355669643145656

`∑[A089309(A017887(n)²)]`
-/

namespace A025793.P15373355669643145656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A017887 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025793.P15373355669643145656

namespace A025793

/-- `∑[A089309(A017887(n)²)]` -/
def P15373355669643145656.Spec : Prop :=
  ∀ n, P15373355669643145656.a n = A025793 n

end A025793

/-! ## A025793.P10588945935353766378

`∑[A165481(A017887(n)²)]`
-/

namespace A025793.P10588945935353766378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 (A017887 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025793.P10588945935353766378

namespace A025793

/-- `∑[A165481(A017887(n)²)]` -/
def P10588945935353766378.Spec : Prop :=
  ∀ n, P10588945935353766378.a n = A025793 n

end A025793

/-! ## A025793.P6213520273458221531

`∑[A011582(A017887(n)²)]`
-/

namespace A025793.P6213520273458221531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A017887 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025793.P6213520273458221531

namespace A025793

/-- `∑[A011582(A017887(n)²)]` -/
def P6213520273458221531.Spec : Prop :=
  ∀ n, P6213520273458221531.a n = A025793 n

end A025793

/-! ## A025793.P3117547729667783998

`∑[A057427(A017887(n)²)]`
-/

namespace A025793.P3117547729667783998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A017887 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025793.P3117547729667783998

namespace A025793

/-- `∑[A057427(A017887(n)²)]` -/
def P3117547729667783998.Spec : Prop :=
  ∀ n, P3117547729667783998.a n = A025793 n

end A025793

/-!
# A025794: Expansion of 1/((1-x)*(1-x^11)*(1-x^12)).

The programs for A025794, the canonical program `A025794.P15369230838676668450` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025794 has offset 0).

The definition of A025794 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^11+x^13+x^23-x^24))` (program `A025794.P15369230838676668450`, by `A025794.P15369230838676668450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025794.P15369230838676668450

`ogf(1/(1-x-x^11+x^13+x^23-x^24))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025794

/-- `ogf(1/(1-x-x^11+x^13+x^23-x^24))` -/
def P15369230838676668450.Spec : Prop :=
  ∀ n, P15369230838676668450.a n = A025794 n

theorem P15369230838676668450.correct : P15369230838676668450.Spec := by
  intro n
  simp only [A025794]

end A025794

/-! ## A025794.P8906580433664012021

`A025827(abs(1-n))+A025827(n)`
-/

namespace A025794.P8906580433664012021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 |1 - (n : ℤ)|.toNat + A025827 n

end

end A025794.P8906580433664012021

namespace A025794

/-- `A025827(abs(1-n))+A025827(n)` -/
def P8906580433664012021.Spec : Prop :=
  ∀ n, P8906580433664012021.a n = A025794 n

end A025794

/-! ## A025794.P7571407614557299353

`1-∑[A025827(abs(2-n))-A025827(n)]`
-/

namespace A025794.P7571407614557299353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025827 |2 - (n : ℤ)|.toNat - A025827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025794.P7571407614557299353

namespace A025794

/-- `1-∑[A025827(abs(2-n))-A025827(n)]` -/
def P7571407614557299353.Spec : Prop :=
  ∀ n, P7571407614557299353.a n = A025794 n

end A025794

/-! ## A025794.P5363201826795673251

`A029084(n)+A029126(n)-A029077(n)`
-/

namespace A025794.P5363201826795673251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029084 n + (A029126 n - A029077 n)

end

end A025794.P5363201826795673251

namespace A025794

/-- `A029084(n)+A029126(n)-A029077(n)` -/
def P5363201826795673251.Spec : Prop :=
  ∀ n, P5363201826795673251.a n = A025794 n

end A025794

/-! ## A025794.P7435056115902801948

`A029105(n)+A029116(n)-A029090(n)`
-/

namespace A025794.P7435056115902801948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029105 n + (A029116 n - A029090 n)

end

end A025794.P7435056115902801948

namespace A025794

/-- `A029105(n)+A029116(n)-A029090(n)` -/
def P7435056115902801948.Spec : Prop :=
  ∀ n, P7435056115902801948.a n = A025794 n

end A025794

/-! ## A025794.P12415552279449029844

`A029105(n)+A029126(n)-A029094(n)`
-/

namespace A025794.P12415552279449029844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029105 n + (A029126 n - A029094 n)

end

end A025794.P12415552279449029844

namespace A025794

/-- `A029105(n)+A029126(n)-A029094(n)` -/
def P12415552279449029844.Spec : Prop :=
  ∀ n, P12415552279449029844.a n = A025794 n

end A025794

/-! ## A025794.P16983279121212047332

`A029105(2*n-n)-abs(A029116(n)-A029090(n))`
-/

namespace A025794.P16983279121212047332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029105 (2 * n - n) - |A029116 n - A029090 n|

end

end A025794.P16983279121212047332

namespace A025794

/-- `A029105(2*n-n)-abs(A029116(n)-A029090(n))` -/
def P16983279121212047332.Spec : Prop :=
  ∀ n, P16983279121212047332.a n = A025794 n

end A025794

/-! ## A025794.P12776570716276802597

`A025793(A324161(n))%A106410(n+1)`
-/

namespace A025794.P12776570716276802597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025793 (A324161 n).toNat) (A106410 (n + 1))

end

end A025794.P12776570716276802597

namespace A025794

/-- `A025793(A324161(n))%A106410(n+1)` -/
def P12776570716276802597.Spec : Prop :=
  ∀ n, P12776570716276802597.a n = A025794 n

end A025794

/-!
# A025795: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)).

The programs for A025795, the canonical program `A025795.P10302089686575887336` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025795 has offset 0).

The definition of A025795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^7+x^8-x^10))` (program `A025795.P10302089686575887336`, by `A025795.P10302089686575887336.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025795.P10302089686575887336

`ogf(1/(1-x^2-x^3+x^7+x^8-x^10))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025795

/-- `ogf(1/(1-x^2-x^3+x^7+x^8-x^10))` -/
def P10302089686575887336.Spec : Prop :=
  ∀ n, P10302089686575887336.a n = A025795 n

theorem P10302089686575887336.correct : P10302089686575887336.Spec := by
  intro n
  simp only [A025795]

end A025795

/-! ## A025795.P9831183617099123242

`floor((n²+10*n+6*(9+(-1)^n))/60)`
-/

namespace A025795.P9831183617099123242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 10 * n : ℤ) + 6 * (9 + (-1) ^ n) : ℚ) / 60⌋

end

end A025795.P9831183617099123242

namespace A025795

/-- `floor((n²+10*n+6*(9+(-1)^n))/60)` -/
def P9831183617099123242.Spec : Prop :=
  ∀ n, P9831183617099123242.a n = A025795 n

end A025795

/-! ## A025795.P14739199508607002421

`a(n-2)+a(n-3)-a(n-7)-a(n-8)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=2, a(7)=2, a(8)=3, a(9)=3`
-/

namespace A025795.P14739199508607002421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 1, 2, 2, 2, 3, 3] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 7) - a (n - 8) + a (n - 10)

end

end A025795.P14739199508607002421

namespace A025795

/-- `a(n-2)+a(n-3)-a(n-7)-a(n-8)+a(n-10)` -/
def P14739199508607002421.Spec : Prop :=
  ∀ n, P14739199508607002421.a n = A025795 n

end A025795

/-! ## A025795.P16066284349622035145

`A008672(n)-a(n-1)` with `a(0)=1`
-/

namespace A025795.P16066284349622035145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008672 n - a (n - 1)

end

end A025795.P16066284349622035145

namespace A025795

/-- `A008672(n)-a(n-1)` -/
def P16066284349622035145.Spec : Prop :=
  ∀ n, P16066284349622035145.a n = A025795 n

end A025795

/-! ## A025795.P1303028389908508706

`A008676(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025795.P1303028389908508706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008676 n + a (n - 2)

end

end A025795.P1303028389908508706

namespace A025795

/-- `A008676(n)+a(n-2)` -/
def P1303028389908508706.Spec : Prop :=
  ∀ n, P1303028389908508706.a n = A025795 n

end A025795

/-! ## A025795.P7561517789020746268

`A008616(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A025795.P7561517789020746268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A008616 n + a (n - 3)

end

end A025795.P7561517789020746268

namespace A025795

/-- `A008616(n)+a(n-3)` -/
def P7561517789020746268.Spec : Prop :=
  ∀ n, P7561517789020746268.a n = A025795 n

end A025795

/-! ## A025795.P5514781644504074

`A008667(n)-Δ[A026811(n)]`
-/

namespace A025795.P5514781644504074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n - (f1 (n + 1) - f1 n)

end

end A025795.P5514781644504074

namespace A025795

/-- `A008667(n)-Δ[A026811(n)]` -/
def P5514781644504074.Spec : Prop :=
  ∀ n, P5514781644504074.a n = A025795 n

end A025795

/-! ## A025795.P11790896381939825200

`2*A008669(n)-∑[A008672(n)]`
-/

namespace A025795.P11790896381939825200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008669 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025795.P11790896381939825200

namespace A025795

/-- `2*A008669(n)-∑[A008672(n)]` -/
def P11790896381939825200.Spec : Prop :=
  ∀ n, P11790896381939825200.a n = A025795 n

end A025795

/-! ## A025795.P18173676277769786904

`A008667(n)+A008669(n)-A001400(n)`
-/

namespace A025795.P18173676277769786904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n + (A008669 n - A001400 n)

end

end A025795.P18173676277769786904

namespace A025795

/-- `A008667(n)+A008669(n)-A001400(n)` -/
def P18173676277769786904.Spec : Prop :=
  ∀ n, P18173676277769786904.a n = A025795 n

end A025795

/-! ## A025795.P13293380204166064929

`A008667(n)+A026811(n)-A026811(n+1)`
-/

namespace A025795.P13293380204166064929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n + (A026811 n - A026811 (n + 1))

end

end A025795.P13293380204166064929

namespace A025795

/-- `A008667(n)+A026811(n)-A026811(n+1)` -/
def P13293380204166064929.Spec : Prop :=
  ∀ n, P13293380204166064929.a n = A025795 n

end A025795

/-! ## A025795.P4000296487392867794

`Δ[A001400(n)-A008667(n)]`
-/

namespace A025795.P4000296487392867794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025795.P4000296487392867794

namespace A025795

/-- `Δ[A001400(n)-A008667(n)]` -/
def P4000296487392867794.Spec : Prop :=
  ∀ n, P4000296487392867794.a n = A025795 n

end A025795

/-! ## A025795.P16551261304230184876

`A000115(n+2)-A008672(n+2)`
-/

namespace A025795.P16551261304230184876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 (n + 2) - A008672 (n + 2)

end

end A025795.P16551261304230184876

namespace A025795

/-- `A000115(n+2)-A008672(n+2)` -/
def P16551261304230184876.Spec : Prop :=
  ∀ n, P16551261304230184876.a n = A025795 n

end A025795

/-! ## A025795.P17800876127612032034

`A008672(n+1)+A008680(n)-A025772(n+1)`
-/

namespace A025795.P17800876127612032034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008672 (n + 1) + (A008680 n - A025772 (n + 1))

end

end A025795.P17800876127612032034

namespace A025795

/-- `A008672(n+1)+A008680(n)-A025772(n+1)` -/
def P17800876127612032034.Spec : Prop :=
  ∀ n, P17800876127612032034.a n = A025795 n

end A025795

/-! ## A025795.P12948323394916163806

`A266755(n+1)+A008667(n)-A008667(n+1)`
-/

namespace A025795.P12948323394916163806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (n + 1) + (A008667 n - A008667 (n + 1))

end

end A025795.P12948323394916163806

namespace A025795

/-- `A266755(n+1)+A008667(n)-A008667(n+1)` -/
def P12948323394916163806.Spec : Prop :=
  ∀ n, P12948323394916163806.a n = A025795 n

end A025795

/-! ## A025795.P6989033537541740051

`A211533(n+2)-A211522(n+2)`
-/

namespace A025795.P6989033537541740051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211533 (n + 2) - A211522 (n + 2)

end

end A025795.P6989033537541740051

namespace A025795

/-- `A211533(n+2)-A211522(n+2)` -/
def P6989033537541740051.Spec : Prop :=
  ∀ n, P6989033537541740051.a n = A025795 n

end A025795

/-! ## A025795.P17687808296788460871

`A025799(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025795.P17687808296788460871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025799 (2 * n) - a (n - 1)

end

end A025795.P17687808296788460871

namespace A025795

/-- `A025799(2*n)-a(n-1)` -/
def P17687808296788460871.Spec : Prop :=
  ∀ n, P17687808296788460871.a n = A025795 n

end A025795

/-! ## A025795.P17249054422896060309

`A008682(2*n)`
-/

namespace A025795.P17249054422896060309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (2 * n)

end

end A025795.P17249054422896060309

namespace A025795

/-- `A008682(2*n)` -/
def P17249054422896060309.Spec : Prop :=
  ∀ n, P17249054422896060309.a n = A025795 n

end A025795

/-! ## A025795.P10847840850703226239

`A025832(2*n)`
-/

namespace A025795.P10847840850703226239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025832 (2 * n)

end

end A025795.P10847840850703226239

namespace A025795

/-- `A025832(2*n)` -/
def P10847840850703226239.Spec : Prop :=
  ∀ n, P10847840850703226239.a n = A025795 n

end A025795

/-! ## A025795.P6086510173498038667

`A008613(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025795.P6086510173498038667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008613 (2 * n) - a (n - 1)

end

end A025795.P6086510173498038667

namespace A025795

/-- `A008613(2*n)-a(n-1)` -/
def P6086510173498038667.Spec : Prop :=
  ∀ n, P6086510173498038667.a n = A025795 n

end A025795

/-! ## A025795.P2562240610505725969

`A025781(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025795.P2562240610505725969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025781 (2 * n) - a (n - 1)

end

end A025795.P2562240610505725969

namespace A025795

/-- `A025781(2*n)-a(n-1)` -/
def P2562240610505725969.Spec : Prop :=
  ∀ n, P2562240610505725969.a n = A025795 n

end A025795

/-!
# A025796: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)).

The programs for A025796, the canonical program `A025796.P17123033237818759149` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025796 has offset 0).

The definition of A025796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^5-x^6+x^8+x^9-x^11))` (program `A025796.P17123033237818759149`, by `A025796.P17123033237818759149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025796.P17123033237818759149

`ogf(1/(1-x^2-x^3+x^5-x^6+x^8+x^9-x^11))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025796

/-- `ogf(1/(1-x^2-x^3+x^5-x^6+x^8+x^9-x^11))` -/
def P17123033237818759149.Spec : Prop :=
  ∀ n, P17123033237818759149.a n = A025796 n

theorem P17123033237818759149.correct : P17123033237818759149.Spec := by
  intro n
  simp only [A025796]

end A025796

/-! ## A025796.P12749002238643305260

`C(ceil(xor(1, n)/6)+1, 2)`
-/

namespace A025796.P12749002238643305260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(Nat.xor 1 n : ℚ) / 6⌉ + 1).toNat 2

end

end A025796.P12749002238643305260

namespace A025796

/-- `C(ceil(xor(1, n)/6)+1, 2)` -/
def P12749002238643305260.Spec : Prop :=
  ∀ n, (P12749002238643305260.a n : ℤ) = A025796 n

end A025796

/-! ## A025796.P17340251133882870665

`C(A103221(n)+1, 2)`
-/

namespace A025796.P17340251133882870665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A103221 n + 1).toNat 2

end

end A025796.P17340251133882870665

namespace A025796

/-- `C(A103221(n)+1, 2)` -/
def P17340251133882870665.Spec : Prop :=
  ∀ n, (P17340251133882870665.a n : ℤ) = A025796 n

end A025796

/-! ## A025796.P5108024222975491610

`C(∑[A115360(n)]+1, 2)`
-/

namespace A025796.P5108024222975491610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A025796.P5108024222975491610

namespace A025796

/-- `C(∑[A115360(n)]+1, 2)` -/
def P5108024222975491610.Spec : Prop :=
  ∀ n, (P5108024222975491610.a n : ℤ) = A025796 n

end A025796

/-! ## A025796.P16433819492594059349

`A000217(ceil(xor(1, n)/6))`
-/

namespace A025796.P16433819492594059349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈(Nat.xor 1 n : ℚ) / 6⌉.toNat

end

end A025796.P16433819492594059349

namespace A025796

/-- `A000217(ceil(xor(1, n)/6))` -/
def P16433819492594059349.Spec : Prop :=
  ∀ n, P16433819492594059349.a n = A025796 n

end A025796

/-! ## A025796.P868198115932767269

`A086159(n)-a(n-1)` with `a(0)=1`
-/

namespace A025796.P868198115932767269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086159 n - a (n - 1)

end

end A025796.P868198115932767269

namespace A025796

/-- `A086159(n)-a(n-1)` -/
def P868198115932767269.Spec : Prop :=
  ∀ n, P868198115932767269.a n = A025796 n

end A025796

/-! ## A025796.P6875188132339371250

`A000124(ceil(xor(1, n)/6))-1`
-/

namespace A025796.P6875188132339371250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ⌈(Nat.xor 1 n : ℚ) / 6⌉.toNat - 1

end

end A025796.P6875188132339371250

namespace A025796

/-- `A000124(ceil(xor(1, n)/6))-1` -/
def P6875188132339371250.Spec : Prop :=
  ∀ n, P6875188132339371250.a n = A025796 n

end A025796

/-! ## A025796.P5889823252888241147

`A002378(ceil(xor(1, n)/6))/2`
-/

namespace A025796.P5889823252888241147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 ⌈(Nat.xor 1 n : ℚ) / 6⌉.toNat : ℚ) / 2

end

end A025796.P5889823252888241147

namespace A025796

/-- `A002378(ceil(xor(1, n)/6))/2` -/
def P5889823252888241147.Spec : Prop :=
  ∀ n, P5889823252888241147.a n = (A025796 n : ℚ)

end A025796

/-! ## A025796.P15376361668174410384

`A000217(∑[round(sin(4)^(n%6))])`
-/

namespace A025796.P15376361668174410384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (4 : ℝ) ^ (n % 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025796.P15376361668174410384

namespace A025796

/-- `A000217(∑[round(sin(4)^(n%6))])` -/
def P15376361668174410384.Spec : Prop :=
  ∀ n, P15376361668174410384.a n = A025796 n

end A025796

/-! ## A025796.P14622444123029744800

`C(floor((A008611(n)+1)/2)+1, 2)`
-/

namespace A025796.P14622444123029744800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(A008611 n + 1 : ℚ) / 2⌋ + 1).toNat 2

end

end A025796.P14622444123029744800

namespace A025796

/-- `C(floor((A008611(n)+1)/2)+1, 2)` -/
def P14622444123029744800.Spec : Prop :=
  ∀ n, (P14622444123029744800.a n : ℤ) = A025796 n

end A025796

/-! ## A025796.P1839553345426677227

`A000217(floor(n/2)-floor((n-1)/3))`
-/

namespace A025796.P1839553345426677227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (⌊(n : ℚ) / 2⌋ - ⌊((n : ℤ) - 1 : ℚ) / 3⌋).toNat

end

end A025796.P1839553345426677227

namespace A025796

/-- `A000217(floor(n/2)-floor((n-1)/3))` -/
def P1839553345426677227.Spec : Prop :=
  ∀ n, P1839553345426677227.a n = A025796 n

end A025796

/-! ## A025796.P2781504720160170507

`A161680(A103221(n)+1)`
-/

namespace A025796.P2781504720160170507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A103221 n + 1).toNat

end

end A025796.P2781504720160170507

namespace A025796

/-- `A161680(A103221(n)+1)` -/
def P2781504720160170507.Spec : Prop :=
  ∀ n, P2781504720160170507.a n = A025796 n

end A025796

/-! ## A025796.P10029559965432986730

`A110660(A008611(n)+1)/2`
-/

namespace A025796.P10029559965432986730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110660 (A008611 n + 1).toNat : ℚ) / 2

end

end A025796.P10029559965432986730

namespace A025796

/-- `A110660(A008611(n)+1)/2` -/
def P10029559965432986730.Spec : Prop :=
  ∀ n, P10029559965432986730.a n = (A025796 n : ℚ)

end A025796

/-! ## A025796.P4468714238204111840

`C(A026806(n+2), 2)`
-/

namespace A025796.P4468714238204111840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026806 (n + 2)).toNat 2

end

end A025796.P4468714238204111840

namespace A025796

/-- `C(A026806(n+2), 2)` -/
def P4468714238204111840.Spec : Prop :=
  ∀ n, (P4468714238204111840.a n : ℤ) = A025796 n

end A025796

/-! ## A025796.P4606663165037209241

`A161680(A026806(n+2))`
-/

namespace A025796.P4606663165037209241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A026806 (n + 2)).toNat

end

end A025796.P4606663165037209241

namespace A025796

/-- `A161680(A026806(n+2))` -/
def P4606663165037209241.Spec : Prop :=
  ∀ n, P4606663165037209241.a n = A025796 n

end A025796

/-! ## A025796.P14026297142619676931

`Δ[A001400(n+1)-A008670(n+1)]`
-/

namespace A025796.P14026297142619676931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 1) - A008670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025796.P14026297142619676931

namespace A025796

/-- `Δ[A001400(n+1)-A008670(n+1)]` -/
def P14026297142619676931.Spec : Prop :=
  ∀ n, P14026297142619676931.a n = A025796 n

end A025796

/-! ## A025796.P3205486731382293374

`A024163(n+11)`
-/

namespace A025796.P3205486731382293374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024163 (n + 11)

end

end A025796.P3205486731382293374

namespace A025796

/-- `A024163(n+11)` -/
def P3205486731382293374.Spec : Prop :=
  ∀ n, P3205486731382293374.a n = A025796 n

end A025796

/-! ## A025796.P2556733772069752848

`A025810(A008854(n+1))`
-/

namespace A025796.P2556733772069752848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 (A008854 (n + 1)).toNat

end

end A025796.P2556733772069752848

namespace A025796

/-- `A025810(A008854(n+1))` -/
def P2556733772069752848.Spec : Prop :=
  ∀ n, P2556733772069752848.a n = A025796 n

end A025796

/-! ## A025796.P2047458935899824496

`A025810(A047202(n+1))`
-/

namespace A025796.P2047458935899824496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 (A047202 (n + 1)).toNat

end

end A025796.P2047458935899824496

namespace A025796

/-- `A025810(A047202(n+1))` -/
def P2047458935899824496.Spec : Prop :=
  ∀ n, P2047458935899824496.a n = A025796 n

end A025796

/-! ## A025796.P11944162991792247160

`A025810(A047205(n+1))`
-/

namespace A025796.P11944162991792247160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025810 (A047205 (n + 1)).toNat

end

end A025796.P11944162991792247160

namespace A025796

/-- `A025810(A047205(n+1))` -/
def P11944162991792247160.Spec : Prop :=
  ∀ n, P11944162991792247160.a n = A025796 n

end A025796

/-!
# A025797: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^8)).

The programs for A025797, the canonical program `A025797.P6180207363370074142` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025797 has offset 0).

The definition of A025797 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^5-x^8+x^10+x^11-x^13))` (program `A025797.P6180207363370074142`, by `A025797.P6180207363370074142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025797.P6180207363370074142

`ogf(1/(1-x^2-x^3+x^5-x^8+x^10+x^11-x^13))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025797

/-- `ogf(1/(1-x^2-x^3+x^5-x^8+x^10+x^11-x^13))` -/
def P6180207363370074142.Spec : Prop :=
  ∀ n, P6180207363370074142.a n = A025797 n

theorem P6180207363370074142.correct : P6180207363370074142.Spec := by
  intro n
  simp only [A025797]

end A025797

/-! ## A025797.P17545130096647265686

`floor((n²+(13+3*(-1)^n)*n+77+19*(-1)^n)/96)`
-/

namespace A025797.P17545130096647265686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) + (13 + 3 * (-1) ^ n) * (n : ℤ) + 77 + 19 * (-1) ^ n : ℚ) / 96⌋

end

end A025797.P17545130096647265686

namespace A025797

/-- `floor((n²+(13+3*(-1)^n)*n+77+19*(-1)^n)/96)` -/
def P17545130096647265686.Spec : Prop :=
  ∀ n, P17545130096647265686.a n = A025797 n

end A025797

/-! ## A025797.P18204956925491993211

`A025769(n)-a(n-1)` with `a(0)=1`
-/

namespace A025797.P18204956925491993211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025769 n - a (n - 1)

end

end A025797.P18204956925491993211

namespace A025797

/-- `A025769(n)-a(n-1)` -/
def P18204956925491993211.Spec : Prop :=
  ∀ n, P18204956925491993211.a n = A025797 n

end A025797

/-! ## A025797.P14179656623783440773

`round(A001972(A028242(n))/3)`
-/

namespace A025797.P14179656623783440773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001972 (A028242 n).toNat : ℚ) / 3)

end

end A025797.P14179656623783440773

namespace A025797

/-- `round(A001972(A028242(n))/3)` -/
def P14179656623783440773.Spec : Prop :=
  ∀ n, P14179656623783440773.a n = A025797 n

end A025797

/-! ## A025797.P18437262345542072659

`round((A266755(n+4)+A266755(n)-1)/4)`
-/

namespace A025797.P18437262345542072659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A266755 (n + 4) + A266755 n - 1 : ℚ) / 4)

end

end A025797.P18437262345542072659

namespace A025797

/-- `round((A266755(n+4)+A266755(n)-1)/4)` -/
def P18437262345542072659.Spec : Prop :=
  ∀ n, P18437262345542072659.a n = A025797 n

end A025797

/-! ## A025797.P12345115497156560155

`A025831(A032766(n))`
-/

namespace A025797.P12345115497156560155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025831 (A032766 n).toNat

end

end A025797.P12345115497156560155

namespace A025797

/-- `A025831(A032766(n))` -/
def P12345115497156560155.Spec : Prop :=
  ∀ n, P12345115497156560155.a n = A025797 n

end A025797

/-! ## A025797.P15677282439890816764

`A025902(3*n)`
-/

namespace A025797.P15677282439890816764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (3 * n)

end

end A025797.P15677282439890816764

namespace A025797

/-- `A025902(3*n)` -/
def P15677282439890816764.Spec : Prop :=
  ∀ n, P15677282439890816764.a n = A025797 n

end A025797

/-! ## A025797.P7993871110141494167

`∑[A000196(A025853(n))-a(n-1)]` with `a(0)=1`
-/

namespace A025797.P7993871110141494167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000196 (A025853 n).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025797.P7993871110141494167

namespace A025797

/-- `∑[A000196(A025853(n))-a(n-1)]` -/
def P7993871110141494167.Spec : Prop :=
  ∀ n, P7993871110141494167.a n = A025797 n

end A025797

/-! ## A025797.P17028517116168681838

`A004525(A008724(A052938(n+3)))`
-/

namespace A025797.P17028517116168681838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008724 (A052938 (n + 3)).toNat).toNat

end

end A025797.P17028517116168681838

namespace A025797

/-- `A004525(A008724(A052938(n+3)))` -/
def P17028517116168681838.Spec : Prop :=
  ∀ n, P17028517116168681838.a n = A025797 n

end A025797

/-! ## A025797.P5924616947759262433

`A004526(A026806(n+2)+A005044(n+1))`
-/

namespace A025797.P5924616947759262433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026806 (n + 2) + A005044 (n + 1)).toNat

end

end A025797.P5924616947759262433

namespace A025797

/-- `A004526(A026806(n+2)+A005044(n+1))` -/
def P5924616947759262433.Spec : Prop :=
  ∀ n, P5924616947759262433.a n = A025797 n

end A025797

/-! ## A025797.P7934340161347078317

`A004526(A008615(n+8)+A005044(n+1))`
-/

namespace A025797.P7934340161347078317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008615 (n + 8) + A005044 (n + 1)).toNat

end

end A025797.P7934340161347078317

namespace A025797

/-- `A004526(A008615(n+8)+A005044(n+1))` -/
def P7934340161347078317.Spec : Prop :=
  ∀ n, P7934340161347078317.a n = A025797 n

end A025797

/-! ## A025797.P1987578659166493448

`A110655(A008731(n)+A002265(n))`
-/

namespace A025797.P1987578659166493448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A008731 n + A002265 n).toNat

end

end A025797.P1987578659166493448

namespace A025797

/-- `A110655(A008731(n)+A002265(n))` -/
def P1987578659166493448.Spec : Prop :=
  ∀ n, P1987578659166493448.a n = A025797 n

end A025797

/-! ## A025797.P11955767293993333646

`A008731(n)-A004526(A008733(n))`
-/

namespace A025797.P11955767293993333646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n - A004526 (A008733 n).toNat

end

end A025797.P11955767293993333646

namespace A025797

/-- `A008731(n)-A004526(A008733(n))` -/
def P11955767293993333646.Spec : Prop :=
  ∀ n, P11955767293993333646.a n = A025797 n

end A025797

/-! ## A025797.P699312569572029235

`A008615(A008733(n+4)-2)`
-/

namespace A025797.P699312569572029235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A008733 (n + 4) - 2).toNat

end

end A025797.P699312569572029235

namespace A025797

/-- `A008615(A008733(n+4)-2)` -/
def P699312569572029235.Spec : Prop :=
  ∀ n, P699312569572029235.a n = A025797 n

end A025797

/-! ## A025797.P15430345304391994474

`A008615(A028242(n)+A008733(n))`
-/

namespace A025797.P15430345304391994474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A028242 n + A008733 n).toNat

end

end A025797.P15430345304391994474

namespace A025797

/-- `A008615(A028242(n)+A008733(n))` -/
def P15430345304391994474.Spec : Prop :=
  ∀ n, P15430345304391994474.a n = A025797 n

end A025797

/-! ## A025797.P8500517650579404994

`A112689(A028242(n)+A008733(n))`
-/

namespace A025797.P8500517650579404994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A028242 n + A008733 n).toNat

end

end A025797.P8500517650579404994

namespace A025797

/-- `A112689(A028242(n)+A008733(n))` -/
def P8500517650579404994.Spec : Prop :=
  ∀ n, P8500517650579404994.a n = A025797 n

end A025797

/-!
# A025798: Expansion of g.f. 1/((1 - x^2)*(1 - x^3)*(1 - x^9)).

The programs for A025798, the canonical program `A025798.P17010884159598631053` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025798 has offset 0).

The definition of A025798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^5-x^9+x^11+x^12-x^14))` (program `A025798.P17010884159598631053`, by `A025798.P17010884159598631053.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025798.P17010884159598631053

`ogf(1/(1-x^2-x^3+x^5-x^9+x^11+x^12-x^14))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025798

/-- `ogf(1/(1-x^2-x^3+x^5-x^9+x^11+x^12-x^14))` -/
def P17010884159598631053.Spec : Prop :=
  ∀ n, P17010884159598631053.a n = A025798 n

theorem P17010884159598631053.correct : P17010884159598631053.Spec := by
  intro n
  simp only [A025798]

end A025798

/-! ## A025798.P6201180506434480700

`A008649(n)-a(n-1)` with `a(0)=1`
-/

namespace A025798.P6201180506434480700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008649 n - a (n - 1)

end

end A025798.P6201180506434480700

namespace A025798

/-- `A008649(n)-a(n-1)` -/
def P6201180506434480700.Spec : Prop :=
  ∀ n, P6201180506434480700.a n = A025798 n

end A025798

/-! ## A025798.P10679898733522310897

`A008618(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A025798.P10679898733522310897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A008618 n + a (n - 3)

end

end A025798.P10679898733522310897

namespace A025798

/-- `A008618(n)+a(n-3)` -/
def P10679898733522310897.Spec : Prop :=
  ∀ n, P10679898733522310897.a n = A025798 n

end A025798

/-! ## A025798.P1777893028009884055

`A069905(A008611(n)+2)`
-/

namespace A025798.P1777893028009884055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A008611 n + 2).toNat

end

end A025798.P1777893028009884055

namespace A025798

/-- `A069905(A008611(n)+2)` -/
def P1777893028009884055.Spec : Prop :=
  ∀ n, P1777893028009884055.a n = A025798 n

end A025798

/-! ## A025798.P11552327578333432998

`A005044(A133310(n)+2)`
-/

namespace A025798.P11552327578333432998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A133310 n + 2).toNat

end

end A025798.P11552327578333432998

namespace A025798

/-- `A005044(A133310(n)+2)` -/
def P11552327578333432998.Spec : Prop :=
  ∀ n, P11552327578333432998.a n = A025798 n

end A025798

/-! ## A025798.P6964735505493525934

`A211540(A008611(n)+4)`
-/

namespace A025798.P6964735505493525934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A008611 n + 4).toNat

end

end A025798.P6964735505493525934

namespace A025798

/-- `A211540(A008611(n)+4)` -/
def P6964735505493525934.Spec : Prop :=
  ∀ n, P6964735505493525934.a n = A025798 n

end A025798

/-! ## A025798.P5577723395621551912

`A005044(2*A008611(n)+1)`
-/

namespace A025798.P5577723395621551912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * A008611 n + 1).toNat

end

end A025798.P5577723395621551912

namespace A025798

/-- `A005044(2*A008611(n)+1)` -/
def P5577723395621551912.Spec : Prop :=
  ∀ n, P5577723395621551912.a n = A025798 n

end A025798

/-! ## A025798.P10869903530271483358

`A266755(2*A008611(n)+1)`
-/

namespace A025798.P10869903530271483358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (2 * A008611 n + 1).toNat

end

end A025798.P10869903530271483358

namespace A025798

/-- `A266755(2*A008611(n)+1)` -/
def P10869903530271483358.Spec : Prop :=
  ∀ n, P10869903530271483358.a n = A025798 n

end A025798

/-! ## A025798.P14571753225262009535

`A005044(A008611(n)+A008611(n)+1)`
-/

namespace A025798.P14571753225262009535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008611 n + (A008611 n + 1)).toNat

end

end A025798.P14571753225262009535

namespace A025798

/-- `A005044(A008611(n)+A008611(n)+1)` -/
def P14571753225262009535.Spec : Prop :=
  ∀ n, P14571753225262009535.a n = A025798 n

end A025798

/-! ## A025798.P7829393826202895180

`A266755(A008611(n)+A008611(n)+1)`
-/

namespace A025798.P7829393826202895180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (A008611 n + (A008611 n + 1)).toNat

end

end A025798.P7829393826202895180

namespace A025798

/-- `A266755(A008611(n)+A008611(n)+1)` -/
def P7829393826202895180.Spec : Prop :=
  ∀ n, P7829393826202895180.a n = A025798 n

end A025798

/-! ## A025798.P1731611712994499250

`A025830(A004772(n+1))`
-/

namespace A025798.P1731611712994499250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (A004772 (n + 1)).toNat

end

end A025798.P1731611712994499250

namespace A025798

/-- `A025830(A004772(n+1))` -/
def P1731611712994499250.Spec : Prop :=
  ∀ n, P1731611712994499250.a n = A025798 n

end A025798

/-! ## A025798.P10689750801282307290

`A025830(2*(A133310(n)-1))`
-/

namespace A025798.P10689750801282307290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (2 * (A133310 n - 1)).toNat

end

end A025798.P10689750801282307290

namespace A025798

/-- `A025830(2*(A133310(n)-1))` -/
def P10689750801282307290.Spec : Prop :=
  ∀ n, P10689750801282307290.a n = A025798 n

end A025798

/-! ## A025798.P15416994543811840758

`A025830(A133310(n)+A133310(n)-2)`
-/

namespace A025798.P15416994543811840758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (A133310 n + (A133310 n - 2)).toNat

end

end A025798.P15416994543811840758

namespace A025798

/-- `A025830(A133310(n)+A133310(n)-2)` -/
def P15416994543811840758.Spec : Prop :=
  ∀ n, P15416994543811840758.a n = A025798 n

end A025798

/-! ## A025798.P3470847417243286633

`A025830(A133310(n)-(2-A133310(n)))`
-/

namespace A025798.P3470847417243286633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (A133310 n - (2 - A133310 n)).toNat

end

end A025798.P3470847417243286633

namespace A025798

/-- `A025830(A133310(n)-(2-A133310(n)))` -/
def P3470847417243286633.Spec : Prop :=
  ∀ n, P3470847417243286633.a n = A025798 n

end A025798

/-! ## A025798.P9495441343549241492

`A025830(2*A133310(n)+1)`
-/

namespace A025798.P9495441343549241492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 (2 * A133310 n + 1).toNat

end

end A025798.P9495441343549241492

namespace A025798

/-- `A025830(2*A133310(n)+1)` -/
def P9495441343549241492.Spec : Prop :=
  ∀ n, P9495441343549241492.a n = A025798 n

end A025798

/-! ## A025798.P11028214384443921276

`A025838(A047220(n+1))`
-/

namespace A025798.P11028214384443921276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 (A047220 (n + 1)).toNat

end

end A025798.P11028214384443921276

namespace A025798

/-- `A025838(A047220(n+1))` -/
def P11028214384443921276.Spec : Prop :=
  ∀ n, P11028214384443921276.a n = A025798 n

end A025798

/-! ## A025798.P14685195789124650667

`A025838(A047206(n+2))`
-/

namespace A025798.P14685195789124650667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 (A047206 (n + 2)).toNat

end

end A025798.P14685195789124650667

namespace A025798

/-- `A025838(A047206(n+2))` -/
def P14685195789124650667.Spec : Prop :=
  ∀ n, P14685195789124650667.a n = A025798 n

end A025798

/-! ## A025798.P17533514168616140611

`A025865(2*n)`
-/

namespace A025798.P17533514168616140611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (2 * n)

end

end A025798.P17533514168616140611

namespace A025798

/-- `A025865(2*n)` -/
def P17533514168616140611.Spec : Prop :=
  ∀ n, P17533514168616140611.a n = A025798 n

end A025798

/-! ## A025798.P17280285321816529936

`A025814(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A025798.P17280285321816529936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025814 (2 * n) - a (n - 1)

end

end A025798.P17280285321816529936

namespace A025798

/-- `A025814(2*n)-a(n-1)` -/
def P17280285321816529936.Spec : Prop :=
  ∀ n, P17280285321816529936.a n = A025798 n

end A025798

/-! ## A025798.P14594443978587719028

`A025825(A047228(n+1))`
-/

namespace A025798.P14594443978587719028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025825 (A047228 (n + 1)).toNat

end

end A025798.P14594443978587719028

namespace A025798

/-- `A025825(A047228(n+1))` -/
def P14594443978587719028.Spec : Prop :=
  ∀ n, P14594443978587719028.a n = A025798 n

end A025798

/-!
# A025799: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^10)).

The programs for A025799, the canonical program `A025799.P17219604111138688371` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025799 has offset 0).

The definition of A025799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^5-x^10+x^12+x^13-x^15))` (program `A025799.P17219604111138688371`, by `A025799.P17219604111138688371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A025799.P17219604111138688371

`ogf(1/(1-x^2-x^3+x^5-x^10+x^12+x^13-x^15))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A025799

/-- `ogf(1/(1-x^2-x^3+x^5-x^10+x^12+x^13-x^15))` -/
def P17219604111138688371.Spec : Prop :=
  ∀ n, P17219604111138688371.a n = A025799 n

theorem P17219604111138688371.correct : P17219604111138688371.Spec := by
  intro n
  simp only [A025799]

end A025799

/-! ## A025799.P5415809205571005130

`floor((n²+15*n+3*(-1)^n*(n+7)+99)/120)`
-/

namespace A025799.P5415809205571005130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 15 * n : ℤ) + 3 * (-1) ^ n * (n + 7 : ℤ) + 99 : ℚ) / 120⌋

end

end A025799.P5415809205571005130

namespace A025799

/-- `floor((n²+15*n+3*(-1)^n*(n+7)+99)/120)` -/
def P5415809205571005130.Spec : Prop :=
  ∀ n, P5415809205571005130.a n = A025799 n

end A025799

/-! ## A025799.P3398258281434226775

`A025770(n)-a(n-1)` with `a(0)=1`
-/

namespace A025799.P3398258281434226775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025770 n - a (n - 1)

end

end A025799.P3398258281434226775

namespace A025799

/-- `A025770(n)-a(n-1)` -/
def P3398258281434226775.Spec : Prop :=
  ∀ n, P3398258281434226775.a n = A025799 n

end A025799

/-! ## A025799.P11983691889075883368

`A211524(A028242(n)+7)`
-/

namespace A025799.P11983691889075883368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A028242 n + 7).toNat

end

end A025799.P11983691889075883368

namespace A025799

/-- `A211524(A028242(n)+7)` -/
def P11983691889075883368.Spec : Prop :=
  ∀ n, P11983691889075883368.a n = A025799 n

end A025799

/-! ## A025799.P5092558985451848029

`A025806(xor(1, n+1))`
-/

namespace A025799.P5092558985451848029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (Nat.xor 1 (n + 1))

end

end A025799.P5092558985451848029

namespace A025799

/-- `A025806(xor(1, n+1))` -/
def P5092558985451848029.Spec : Prop :=
  ∀ n, P5092558985451848029.a n = A025799 n

end A025799

/-! ## A025799.P9816017461728412080

`A025806(A004442(n+1))`
-/

namespace A025799.P9816017461728412080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (A004442 (n + 1)).toNat

end

end A025799.P9816017461728412080

namespace A025799

/-- `A025806(A004442(n+1))` -/
def P9816017461728412080.Spec : Prop :=
  ∀ n, P9816017461728412080.a n = A025799 n

end A025799

/-! ## A025799.P15232041681107793818

`A008680(A097062(n+2))`
-/

namespace A025799.P15232041681107793818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (A097062 (n + 2)).toNat

end

end A025799.P15232041681107793818

namespace A025799

/-- `A008680(A097062(n+2))` -/
def P15232041681107793818.Spec : Prop :=
  ∀ n, P15232041681107793818.a n = A025799 n

end A025799

/-! ## A025799.P11771390050318321687

`A008680(abs(Δ[A059029(n)]))`
-/

namespace A025799.P11771390050318321687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 |f1 (n + 1) - f1 n|.toNat

end

end A025799.P11771390050318321687

namespace A025799

/-- `A008680(abs(Δ[A059029(n)]))` -/
def P11771390050318321687.Spec : Prop :=
  ∀ n, P11771390050318321687.a n = A025799 n

end A025799

/-! ## A025799.P13448243943059600796

`A008680(2*A028242(n)+1)`
-/

namespace A025799.P13448243943059600796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (2 * A028242 n + 1).toNat

end

end A025799.P13448243943059600796

namespace A025799

/-- `A008680(2*A028242(n)+1)` -/
def P13448243943059600796.Spec : Prop :=
  ∀ n, P13448243943059600796.a n = A025799 n

end A025799

/-! ## A025799.P11790103442518762728

`A008680(A004442(n)+gcd(2, n))`
-/

namespace A025799.P11790103442518762728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (A004442 n + (Nat.gcd 2 n : ℤ)).toNat

end

end A025799.P11790103442518762728

namespace A025799

/-- `A008680(A004442(n)+gcd(2, n))` -/
def P11790103442518762728.Spec : Prop :=
  ∀ n, P11790103442518762728.a n = A025799 n

end A025799

/-! ## A025799.P4710489582945677013

`A008680(abs(Δ[A022998(n+1)]))`
-/

namespace A025799.P4710489582945677013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 |f1 (n + 1) - f1 n|.toNat

end

end A025799.P4710489582945677013

namespace A025799

/-- `A008680(abs(Δ[A022998(n+1)]))` -/
def P4710489582945677013.Spec : Prop :=
  ∀ n, P4710489582945677013.a n = A025799 n

end A025799

/-! ## A025799.P16199629824028892591

`A008680(A028242(n)+A028242(n)+1)`
-/

namespace A025799.P16199629824028892591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 (A028242 n + (A028242 n + 1)).toNat

end

end A025799.P16199629824028892591

namespace A025799

/-- `A008680(A028242(n)+A028242(n)+1)` -/
def P16199629824028892591.Spec : Prop :=
  ∀ n, P16199629824028892591.a n = A025799 n

end A025799

/-! ## A025799.P7313398123575022487

`A008682(n)+A008682(A109613(n+2))`
-/

namespace A025799.P7313398123575022487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 n + A008682 (A109613 (n + 2)).toNat

end

end A025799.P7313398123575022487

namespace A025799

/-- `A008682(n)+A008682(A109613(n+2))` -/
def P7313398123575022487.Spec : Prop :=
  ∀ n, P7313398123575022487.a n = A025799 n

end A025799

/-! ## A025799.P2502398468521173447

`A025837(ceil(3*n/2))`
-/

namespace A025799.P2502398468521173447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 ⌈3 * ((n : ℚ) / 2)⌉.toNat

end

end A025799.P2502398468521173447

namespace A025799

/-- `A025837(ceil(3*n/2))` -/
def P2502398468521173447.Spec : Prop :=
  ∀ n, P2502398468521173447.a n = A025799 n

end A025799

/-! ## A025799.P5692364482827841504

`A025806(A004442(2*n)-A004442(n))`
-/

namespace A025799.P5692364482827841504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025806 (A004442 (2 * n) - A004442 n).toNat

end

end A025799.P5692364482827841504

namespace A025799

/-- `A025806(A004442(2*n)-A004442(n))` -/
def P5692364482827841504.Spec : Prop :=
  ∀ n, P5692364482827841504.a n = A025799 n

end A025799

/-! ## A025799.P6094102859326647440

`A025864(A042948(n))`
-/

namespace A025799.P6094102859326647440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 (A042948 n).toNat

end

end A025799.P6094102859326647440

namespace A025799

/-- `A025864(A042948(n))` -/
def P6094102859326647440.Spec : Prop :=
  ∀ n, P6094102859326647440.a n = A025799 n

end A025799

/-! ## A025799.P3220299594597301941

`A025864(xor(2, 2*(n+1)))`
-/

namespace A025799.P3220299594597301941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 (Nat.xor 2 (2 * (n + 1)))

end

end A025799.P3220299594597301941

namespace A025799

/-- `A025864(xor(2, 2*(n+1)))` -/
def P3220299594597301941.Spec : Prop :=
  ∀ n, P3220299594597301941.a n = A025799 n

end A025799

/-! ## A025799.P4905773599698508526

`A025864(A142954(n+2))`
-/

namespace A025799.P4905773599698508526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025864 (A142954 (n + 2)).toNat

end

end A025799.P4905773599698508526

namespace A025799

/-- `A025864(A142954(n+2))` -/
def P4905773599698508526.Spec : Prop :=
  ∀ n, P4905773599698508526.a n = A025799 n

end A025799

/-! ## A025799.P15569729621156728120

`A025904(3*n)`
-/

namespace A025799.P15569729621156728120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (3 * n)

end

end A025799.P15569729621156728120

namespace A025799

/-- `A025904(3*n)` -/
def P15569729621156728120.Spec : Prop :=
  ∀ n, P15569729621156728120.a n = A025799 n

end A025799

/-! ## A025799.P4276852136021182466

`A025893(2*A168202(n+1)-1)`
-/

namespace A025799.P4276852136021182466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (2 * A168202 (n + 1) - 1).toNat

end

end A025799.P4276852136021182466

namespace A025799

/-- `A025893(2*A168202(n+1)-1)` -/
def P4276852136021182466.Spec : Prop :=
  ∀ n, P4276852136021182466.a n = A025799 n

end A025799

