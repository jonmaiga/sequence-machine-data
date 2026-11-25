import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C051
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A091300: Nonprimes of the form 6k + 1.

The programs for A091300, the canonical program `A091300.P2475382498501044560` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091300 has offset 1).

The definition of A091300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091300.P12720052205712313619

`record[A171435(1+6*n)]`
-/

namespace A091300.P12720052205712313619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (1 + 6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091300.P12720052205712313619

namespace A091300

/-- `record[A171435(1+6*n)]` -/
def P12720052205712313619.Spec : Prop :=
  ∀ n, P12720052205712313619.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P2475382498501044560

`6*A046954(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091300

/-- `6*A046954(n+1)+1` -/
def P2475382498501044560.Spec : Prop :=
  ∀ n, P2475382498501044560.a n = A091300 (n + 1)

theorem P2475382498501044560.correct : P2475382498501044560.Spec := by
  intro n
  simp only [A091300, Nat.add_sub_cancel]

end A091300

/-! ## A091300.P7249815823651811937

`filter[1+2*n, A373977(#)]`
-/

namespace A091300.P7249815823651811937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j) = 1) n)

end

end A091300.P7249815823651811937

namespace A091300

/-- `filter[1+2*n, A373977(#)]` -/
def P7249815823651811937.Spec : Prop :=
  ∀ n, (P7249815823651811937.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P9752673031816336158

`filter[6*n+1, A005171(#)]`
-/

namespace A091300.P9752673031816336158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j) = 1) n)

end

end A091300.P9752673031816336158

namespace A091300

/-- `filter[6*n+1, A005171(#)]` -/
def P9752673031816336158.Spec : Prop :=
  ∀ n, (P9752673031816336158.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P13885984027310833935

`filter[a(n-1)+6, A292438(#)]` with `a(0)=1`
-/

namespace A091300.P13885984027310833935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j) = 1) n)

end

end A091300.P13885984027310833935

namespace A091300

/-- `filter[a(n-1)+6, A292438(#)]` -/
def P13885984027310833935.Spec : Prop :=
  ∀ n, (P13885984027310833935.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P13330989092826189588

`A016921(A046954(n+1))`
-/

namespace A091300.P13330989092826189588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A046954 (n + 1)).toNat

end

end A091300.P13330989092826189588

namespace A091300

/-- `A016921(A046954(n+1))` -/
def P13330989092826189588.Spec : Prop :=
  ∀ n, P13330989092826189588.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P17660889219513879640

`filter[A016921(n), A292438(#)]`
-/

namespace A091300.P17660889219513879640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091300.P17660889219513879640

namespace A091300

/-- `filter[A016921(n), A292438(#)]` -/
def P17660889219513879640.Spec : Prop :=
  ∀ n, P17660889219513879640.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P4239781290618717365

`filter[A308196(n), A292438(#)]`
-/

namespace A091300.P4239781290618717365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091300.P4239781290618717365

namespace A091300

/-- `filter[A308196(n), A292438(#)]` -/
def P4239781290618717365.Spec : Prop :=
  ∀ n, P4239781290618717365.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P17132697739187749127

`filter[A100764(n+1), A292438(#)]`
-/

namespace A091300.P17132697739187749127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091300.P17132697739187749127

namespace A091300

/-- `filter[A100764(n+1), A292438(#)]` -/
def P17132697739187749127.Spec : Prop :=
  ∀ n, P17132697739187749127.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P43967764632966069

`∩[2*n+1, A172182(n+1)]`
-/

namespace A091300.P43967764632966069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091300.P43967764632966069

namespace A091300

/-- `∩[2*n+1, A172182(n+1)]` -/
def P43967764632966069.Spec : Prop :=
  ∀ n, (P43967764632966069.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P1627003761219439472

`∩[2*n+1, A291745(n+1)]`
-/

namespace A091300.P1627003761219439472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091300.P1627003761219439472

namespace A091300

/-- `∩[2*n+1, A291745(n+1)]` -/
def P1627003761219439472.Spec : Prop :=
  ∀ n, (P1627003761219439472.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P6228735375332409148

`filter[A172182(n+1), A093719(#)]`
-/

namespace A091300.P6228735375332409148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A091300.P6228735375332409148

namespace A091300

/-- `filter[A172182(n+1), A093719(#)]` -/
def P6228735375332409148.Spec : Prop :=
  ∀ n, P6228735375332409148.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P11836138868441574780

`filter[A172182(n+1), A320106(#)]`
-/

namespace A091300.P11836138868441574780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A091300.P11836138868441574780

namespace A091300

/-- `filter[A172182(n+1), A320106(#)]` -/
def P11836138868441574780.Spec : Prop :=
  ∀ n, P11836138868441574780.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P4697827470911559956

`∩[A172182(n+1), A308196(n)]`
-/

namespace A091300.P4697827470911559956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091300.P4697827470911559956

namespace A091300

/-- `∩[A172182(n+1), A308196(n)]` -/
def P4697827470911559956.Spec : Prop :=
  ∀ n, (P4697827470911559956.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P4663092540316199856

`∩[A291745(n+1), A308196(n)]`
-/

namespace A091300.P4663092540316199856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091300.P4663092540316199856

namespace A091300

/-- `∩[A291745(n+1), A308196(n)]` -/
def P4663092540316199856.Spec : Prop :=
  ∀ n, (P4663092540316199856.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P11184321108256461702

`∩[A172182(n+1), A242660(n+1)]`
-/

namespace A091300.P11184321108256461702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091300.P11184321108256461702

namespace A091300

/-- `∩[A172182(n+1), A242660(n+1)]` -/
def P11184321108256461702.Spec : Prop :=
  ∀ n, (P11184321108256461702.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P11413317746095581726

`∩[A016921(n), A090818(n+1)]`
-/

namespace A091300.P11413317746095581726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091300.P11413317746095581726

namespace A091300

/-- `∩[A016921(n), A090818(n+1)]` -/
def P11413317746095581726.Spec : Prop :=
  ∀ n, (P11413317746095581726.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P5350206867108743588

`∩[A090818(n+1), A308196(n)]`
-/

namespace A091300.P5350206867108743588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091300.P5350206867108743588

namespace A091300

/-- `∩[A090818(n+1), A308196(n)]` -/
def P5350206867108743588.Spec : Prop :=
  ∀ n, (P5350206867108743588.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P17510052552001860167

`∩[A172182(n+1), A276283(n)]`
-/

namespace A091300.P17510052552001860167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091300.P17510052552001860167

namespace A091300

/-- `∩[A172182(n+1), A276283(n)]` -/
def P17510052552001860167.Spec : Prop :=
  ∀ n, (P17510052552001860167.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P2865074694744080492

`∩[A291745(n+1), A381035(n+1)]`
-/

namespace A091300.P2865074694744080492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091300.P2865074694744080492

namespace A091300

/-- `∩[A291745(n+1), A381035(n+1)]` -/
def P2865074694744080492.Spec : Prop :=
  ∀ n, (P2865074694744080492.a n : ℤ) = A091300 (n + 1)

end A091300

/-!
# A091301: Primes of the form p*q + p - q, where p and q are distinct primes.

The programs for A091301, there is no canonical definition to state claims against.
-/

/-! ## A091301.P455175645927029118

`p?[eq[1, A151692(n+3)]]`
-/

namespace A091301.P455175645927029118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A091301.P455175645927029118

/-! ## A091301.P13202340409409758997

`p?[(n-3)*A151692(n)]`
-/

namespace A091301.P13202340409409758997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * A151692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091301.P13202340409409758997

/-! ## A091301.P4658672397984192794

`A000188(record[A277312(n+3)])`
-/

namespace A091301.P4658672397984192794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277312 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091301.P4658672397984192794

/-! ## A091301.P15040269552944357127

`A000196(record[A277312(n+3)])`
-/

namespace A091301.P15040269552944357127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277312 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091301.P15040269552944357127

/-! ## A091301.P14231890734197985399

`filter[A109997(n+3), A368281(#)]`
-/

namespace A091301.P14231890734197985399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109997 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368281 (f1 j).toNat = 1) n)

end

end A091301.P14231890734197985399

/-!
# A091302: Number of equivalence classes of directed Hamiltonian cycles (or Gray codes) in the binary n-cube with one node marked.

The programs for A091302, there is no canonical definition to state claims against.
-/

/-! ## A091302.P7177062982357869935

`A003042(n+1)/(n+1)!`
-/

namespace A091302.P7177062982357869935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003042 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A091302.P7177062982357869935

/-!
# A091303: Third diagonal of A008970 (after A000111 and A000708).

The programs for A091303, there is no canonical definition to state claims against.
-/

/-! ## A091303.P2467567546099390395

`A001759(n+4)/2`
-/

namespace A091303.P2467567546099390395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001759 (n + 4) : ℚ) / 2

end

end A091303.P2467567546099390395

/-! ## A091303.P723969469729038580

`A008970(∑[n+3]+2)`
-/

namespace A091303.P723969469729038580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A091303.P723969469729038580

/-! ## A091303.P11358213282778005330

`A059427(∑[n+3]+2)/2`
-/

namespace A091303.P11358213282778005330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059427 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 2

end

end A091303.P11358213282778005330

/-! ## A091303.P12854221342416255970

`record[A008970(A198455(n+1))]`
-/

namespace A091303.P12854221342416255970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091303.P12854221342416255970

/-! ## A091303.P2223994658174995836

`(A226436(n+4)-A226435(n+4))/2`
-/

namespace A091303.P2223994658174995836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226436 (n + 4) - A226435 (n + 4) : ℚ) / 2

end

end A091303.P2223994658174995836

/-!
# A091304: a(n) = Omega(2n-1) (number of prime factors of the n-th odd number, counted with multiplicity).

The programs for A091304, the canonical program `A091304.P2772183700605411101` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091304 has offset 1).

The definition of A091304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001222(2*n+1)` (program `A091304.P2772183700605411101`, by `A091304.P2772183700605411101.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091304.P2772183700605411101

`A001222(2*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A091304

/-- `A001222(2*n+1)` -/
def P2772183700605411101.Spec : Prop :=
  ∀ n, P2772183700605411101.a n = A091304 (n + 1)

theorem P2772183700605411101.correct : P2772183700605411101.Spec := by
  intro n
  simp only [A091304, Nat.add_sub_cancel]

end A091304

/-! ## A091304.P4008332963977275323

`A001222(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A091304.P4008332963977275323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1) - 1)

end

end A091304.P4008332963977275323

namespace A091304

/-- `A001222(2*(n+1)-1)` -/
def P4008332963977275323.Spec : Prop :=
  ∀ n, P4008332963977275323.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P7469349756423617019

`A000120(A244153(n+1))`
-/

namespace A091304.P7469349756423617019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A244153 (n + 1)).toNat

end

end A091304.P7469349756423617019

namespace A091304

/-- `A000120(A244153(n+1))` -/
def P7469349756423617019.Spec : Prop :=
  ∀ n, P7469349756423617019.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P16798689435427905211

`∑{e}[Δ[n²], #]`
-/

namespace A091304.P16798689435427905211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A091304.P16798689435427905211

namespace A091304

/-- `∑{e}[Δ[n²], #]` -/
def P16798689435427905211.Spec : Prop :=
  ∀ n, (P16798689435427905211.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P11580723665200708459

`log(∏{e}[Δ[n²], exp(#)])`
-/

namespace A091304.P11580723665200708459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Real.exp (Nat.factorization (f1 n).natAbs p : ℝ))

end

end A091304.P11580723665200708459

namespace A091304

/-- `log(∏{e}[Δ[n²], exp(#)])` -/
def P11580723665200708459.Spec : Prop :=
  ∀ n, P11580723665200708459.a n = (A091304 (n + 1) : ℝ)

end A091304

/-! ## A091304.P2600762737619904906

`dr(∑{e}[2*n+1, #])`
-/

namespace A091304.P2600762737619904906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A091304.P2600762737619904906

namespace A091304

/-- `dr(∑{e}[2*n+1, #])` -/
def P2600762737619904906.Spec : Prop :=
  ∀ n, (P2600762737619904906.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P1579451597789621361

`∑{e}[4*n+2, #]-1`
-/

namespace A091304.P1579451597789621361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1

end

end A091304.P1579451597789621361

namespace A091304

/-- `∑{e}[4*n+2, #]-1` -/
def P1579451597789621361.Spec : Prop :=
  ∀ n, P1579451597789621361.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P5414065224035769661

`log2(∏{e}[2*n+1, 2^#])`
-/

namespace A091304.P5414065224035769661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A091304.P5414065224035769661

namespace A091304

/-- `log2(∏{e}[2*n+1, 2^#])` -/
def P5414065224035769661.Spec : Prop :=
  ∀ n, P5414065224035769661.a n = (A091304 (n + 1) : ℝ)

end A091304

/-! ## A091304.P11423065896662744397

`or(char[1], ∑{e}[2*n+1, #])`
-/

namespace A091304.P11423065896662744397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A091304.P11423065896662744397

namespace A091304

/-- `or(char[1], ∑{e}[2*n+1, #])` -/
def P11423065896662744397.Spec : Prop :=
  ∀ n, (P11423065896662744397.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P16478849978367700641

`ceil(log(cosh(∑{e}[2*n+1, #])))`
-/

namespace A091304.P16478849978367700641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.cosh ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))⌉

end

end A091304.P16478849978367700641

namespace A091304

/-- `ceil(log(cosh(∑{e}[2*n+1, #])))` -/
def P16478849978367700641.Spec : Prop :=
  ∀ n, P16478849978367700641.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P560671683904414776

`2*∑{e}[2*n+1, #/2]`
-/

namespace A091304.P560671683904414776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / 2)

end

end A091304.P560671683904414776

namespace A091304

/-- `2*∑{e}[2*n+1, #/2]` -/
def P560671683904414776.Spec : Prop :=
  ∀ n, P560671683904414776.a n = (A091304 (n + 1) : ℚ)

end A091304

/-! ## A091304.P2827214866881563388

`val(∏{e}[2*n+1, 2^#], 2)`
-/

namespace A091304.P2827214866881563388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) 2

end

end A091304.P2827214866881563388

namespace A091304

/-- `val(∏{e}[2*n+1, 2^#], 2)` -/
def P2827214866881563388.Spec : Prop :=
  ∀ n, (P2827214866881563388.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P5701205300568251764

`val(6^∑{e}[2*n+1, #], 2)`
-/

namespace A091304.P5701205300568251764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (6 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2

end

end A091304.P5701205300568251764

namespace A091304

/-- `val(6^∑{e}[2*n+1, #], 2)` -/
def P5701205300568251764.Spec : Prop :=
  ∀ n, (P5701205300568251764.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P3550208089607208400

`∑{e}[2*n+1, #]%(n+1)`
-/

namespace A091304.P3550208089607208400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % (n + 1)

end

end A091304.P3550208089607208400

namespace A091304

/-- `∑{e}[2*n+1, #]%(n+1)` -/
def P3550208089607208400.Spec : Prop :=
  ∀ n, (P3550208089607208400.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P15454929941922813929

`∑{p}[2*n+1, val(2*n+1, #)]`
-/

namespace A091304.P15454929941922813929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (2 * n + 1) p

end

end A091304.P15454929941922813929

namespace A091304

/-- `∑{p}[2*n+1, val(2*n+1, #)]` -/
def P15454929941922813929.Spec : Prop :=
  ∀ n, (P15454929941922813929.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P12572365892555071184

`A087436(Δ[n²])`
-/

namespace A091304.P12572365892555071184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091304.P12572365892555071184

namespace A091304

/-- `A087436(Δ[n²])` -/
def P12572365892555071184.Spec : Prop :=
  ∀ n, P12572365892555071184.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P16374965104733116955

`A257988(Δ[n²])`
-/

namespace A091304.P16374965104733116955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257988 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091304.P16374965104733116955

namespace A091304

/-- `A257988(Δ[n²])` -/
def P16374965104733116955.Spec : Prop :=
  ∀ n, P16374965104733116955.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P8325255123742291273

`A317531(Δ[n²])`
-/

namespace A091304.P8325255123742291273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091304.P8325255123742291273

namespace A091304

/-- `A317531(Δ[n²])` -/
def P8325255123742291273.Spec : Prop :=
  ∀ n, P8325255123742291273.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P2980598229062426880

`A358218(Δ[n²])`
-/

namespace A091304.P2980598229062426880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358218 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091304.P2980598229062426880

namespace A091304

/-- `A358218(Δ[n²])` -/
def P2980598229062426880.Spec : Prop :=
  ∀ n, P2980598229062426880.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P1272977355734128593

`dr(A372960(n+1))`
-/

namespace A091304.P1272977355734128593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A372960 (n + 1))

end

end A091304.P1272977355734128593

namespace A091304

/-- `dr(A372960(n+1))` -/
def P1272977355734128593.Spec : Prop :=
  ∀ n, (P1272977355734128593.a n : ℤ) = A091304 (n + 1)

end A091304

/-!
# A091305: Primes of the form p*q - p - q, where p and q are primes.

The programs for A091305, there is no canonical definition to state claims against.
-/

/-! ## A091305.P12325983514210479267

`p?[lt[0, A157187(n)]]`
-/

namespace A091305.P12325983514210479267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A091305.P12325983514210479267

/-! ## A091305.P17962231217992861844

`lt[(1-A003415(n))², A157187(n)]`
-/

namespace A091305.P17962231217992861844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003415 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091305.P17962231217992861844

/-! ## A091305.P4447013903255381026

`lt[A072480(n)², n*A157187(n)]`
-/

namespace A091305.P4447013903255381026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A157187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091305.P4447013903255381026

/-! ## A091305.P11830979933331574192

`lt[A072480(n+1), A157187(n+1)]+1`
-/

namespace A091305.P11830979933331574192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091305.P11830979933331574192

/-! ## A091305.P7314896895407113361

`lt[A072480(A028310(n)), A157187(n)]`
-/

namespace A091305.P7314896895407113361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091305.P7314896895407113361

/-! ## A091305.P14116237383188120680

`lt[(A053989(n+1)-1)*A027802(n+2), A157187(n)]`
-/

namespace A091305.P14116237383188120680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053989 (n + 1) - 1) * A027802 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091305.P14116237383188120680

/-! ## A091305.P4477425187510001236

`lt[A147787(A003415(n)), A157187(n)]`
-/

namespace A091305.P4477425187510001236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147787 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091305.P4477425187510001236

/-!
# A091306: Sum of squares of unitary, squarefree divisors of n, including 1.

The programs for A091306, the canonical program `A091306.P16197052664333274561` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091306 has offset 1).

The definition of A091306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091306.P9499807741250983265

`∑{d}[∏{p}[n+1, lcm(n+1, #²)/(n+1)], #²]`
-/

namespace A091306.P9499807741250983265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A091306.P9499807741250983265

namespace A091306

/-- `∑{d}[∏{p}[n+1, lcm(n+1, #²)/(n+1)], #²]` -/
def P9499807741250983265.Spec : Prop :=
  ∀ n, (P9499807741250983265.a n : ℤ) = A091306 (n + 1)

end A091306

/-! ## A091306.P16197052664333274561

`∑{d}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], #²]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091306

/-- `∑{d}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], #²]` -/
def P16197052664333274561.Spec : Prop :=
  ∀ n, (P16197052664333274561.a n : ℤ) = A091306 (n + 1)

theorem P16197052664333274561.correct : P16197052664333274561.Spec := by
  intro n
  simp only [A091306, Nat.add_sub_cancel]

end A091306

/-! ## A091306.P4950223937665131631

`∑{d}[A055231(1+n), #²]`
-/

namespace A091306.P4950223937665131631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A091306.P4950223937665131631

namespace A091306

/-- `∑{d}[A055231(1+n), #²]` -/
def P4950223937665131631.Spec : Prop :=
  ∀ n, (P4950223937665131631.a n : ℤ) = A091306 (n + 1)

end A091306

/-! ## A091306.P16870082575489784906

`∑{d}[(n+1)/A057521(n+1), #²]`
-/

namespace A091306.P16870082575489784906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057521 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A091306.P16870082575489784906

namespace A091306

/-- `∑{d}[(n+1)/A057521(n+1), #²]` -/
def P16870082575489784906.Spec : Prop :=
  ∀ n, (P16870082575489784906.a n : ℤ) = A091306 (n + 1)

end A091306

/-! ## A091306.P3366070124456382623

`A001157(∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A091306.P3366070124456382623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A091306.P3366070124456382623

namespace A091306

/-- `A001157(∏{p}[n+1, lcm(n+1, #²)/(n+1)])` -/
def P3366070124456382623.Spec : Prop :=
  ∀ n, P3366070124456382623.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P12385768811771063325

`A076598((n+1)/gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))`
-/

namespace A091306.P12385768811771063325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076598 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ))).toNat

end

end A091306.P12385768811771063325

namespace A091306

/-- `A076598((n+1)/gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))` -/
def P12385768811771063325.Spec : Prop :=
  ∀ n, P12385768811771063325.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P16711656373175192655

`A374538(A007948(n+1))`
-/

namespace A091306.P16711656373175192655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374538 (A007948 (n + 1)).toNat

end

end A091306.P16711656373175192655

namespace A091306

/-- `A374538(A007948(n+1))` -/
def P16711656373175192655.Spec : Prop :=
  ∀ n, P16711656373175192655.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P2026707433722645343

`A369718(A055231(n+1))`
-/

namespace A091306.P2026707433722645343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369718 (A055231 (n + 1)).toNat

end

end A091306.P2026707433722645343

namespace A091306

/-- `A369718(A055231(n+1))` -/
def P2026707433722645343.Spec : Prop :=
  ∀ n, P2026707433722645343.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P11990113260392663314

`A198286((n+1)/A057521(n+1))`
-/

namespace A091306.P11990113260392663314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198286 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A091306.P11990113260392663314

namespace A091306

/-- `A198286((n+1)/A057521(n+1))` -/
def P11990113260392663314.Spec : Prop :=
  ∀ n, P11990113260392663314.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P12204575157055829067

`A351265((n+1)/A057521(n+1))`
-/

namespace A091306.P12204575157055829067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A091306.P12204575157055829067

namespace A091306

/-- `A351265((n+1)/A057521(n+1))` -/
def P12204575157055829067.Spec : Prop :=
  ∀ n, P12204575157055829067.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P2052366227167465048

`A351265(n+1)/A370239(n+1)`
-/

namespace A091306.P2052366227167465048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351265 (n + 1) : ℚ) / (A370239 (n + 1) : ℚ)

end

end A091306.P2052366227167465048

namespace A091306

/-- `A351265(n+1)/A370239(n+1)` -/
def P2052366227167465048.Spec : Prop :=
  ∀ n, P2052366227167465048.a n = (A091306 (n + 1) : ℚ)

end A091306

/-! ## A091306.P16229304664301968934

`A369718(n+1)/A360720(n+1)`
-/

namespace A091306.P16229304664301968934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369718 (n + 1) : ℚ) / (A360720 (n + 1) : ℚ)

end

end A091306.P16229304664301968934

namespace A091306

/-- `A369718(n+1)/A360720(n+1)` -/
def P16229304664301968934.Spec : Prop :=
  ∀ n, P16229304664301968934.a n = (A091306 (n + 1) : ℚ)

end A091306

/-! ## A091306.P13795493425604250005

`A369758(n+1)/A365349(n+1)`
-/

namespace A091306.P13795493425604250005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369758 (n + 1) : ℚ) / (A365349 (n + 1) : ℚ)

end

end A091306.P13795493425604250005

namespace A091306

/-- `A369758(n+1)/A365349(n+1)` -/
def P13795493425604250005.Spec : Prop :=
  ∀ n, P13795493425604250005.a n = (A091306 (n + 1) : ℚ)

end A091306

/-! ## A091306.P12736801582041380655

`A351265(n+1)/A351265(A000188(n+1))`
-/

namespace A091306.P12736801582041380655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351265 (n + 1) : ℚ) / (A351265 (A000188 (n + 1)).toNat : ℚ)

end

end A091306.P12736801582041380655

namespace A091306

/-- `A351265(n+1)/A351265(A000188(n+1))` -/
def P12736801582041380655.Spec : Prop :=
  ∀ n, P12736801582041380655.a n = (A091306 (n + 1) : ℚ)

end A091306

/-! ## A091306.P15925285428553629327

`A369758(n+1)/A000203(A356191(n+1))`
-/

namespace A091306.P15925285428553629327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369758 (n + 1) : ℚ) / (A000203 (A356191 (n + 1)).toNat : ℚ)

end

end A091306.P15925285428553629327

namespace A091306

/-- `A369758(n+1)/A000203(A356191(n+1))` -/
def P15925285428553629327.Spec : Prop :=
  ∀ n, P15925285428553629327.a n = (A091306 (n + 1) : ℚ)

end A091306

/-! ## A091306.P5102037447386793828

`A091051(A365298(n+1))`
-/

namespace A091306.P5102037447386793828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091051 (A365298 (n + 1)).toNat

end

end A091306.P5102037447386793828

namespace A091306

/-- `A091051(A365298(n+1))` -/
def P5102037447386793828.Spec : Prop :=
  ∀ n, P5102037447386793828.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P15927504280305539604

`A371242((n+1)²)`
-/

namespace A091306.P15927504280305539604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371242 ((n + 1) ^ 2)

end

end A091306.P15927504280305539604

namespace A091306

/-- `A371242((n+1)²)` -/
def P15927504280305539604.Spec : Prop :=
  ∀ n, P15927504280305539604.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P11854201726426557131

`A385049((n+1)²)`
-/

namespace A091306.P11854201726426557131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385049 ((n + 1) ^ 2)

end

end A091306.P11854201726426557131

namespace A091306

/-- `A385049((n+1)²)` -/
def P11854201726426557131.Spec : Prop :=
  ∀ n, P11854201726426557131.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P18025364029436069689

`A035316(A360541(n+1))`
-/

namespace A091306.P18025364029436069689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A360541 (n + 1)).toNat

end

end A091306.P18025364029436069689

namespace A091306

/-- `A035316(A360541(n+1))` -/
def P18025364029436069689.Spec : Prop :=
  ∀ n, P18025364029436069689.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P7838946651292521874

`A384554(A007948(n+1)²)`
-/

namespace A091306.P7838946651292521874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384554 (A007948 (n + 1) ^ 2).toNat

end

end A091306.P7838946651292521874

namespace A091306

/-- `A384554(A007948(n+1)²)` -/
def P7838946651292521874.Spec : Prop :=
  ∀ n, P7838946651292521874.a n = A091306 (n + 1)

end A091306

/-!
# A091307: a(n) = 6*2^n + 4 (Bode Number A003461(n+2)) except for a(1)=6.

The programs for A091307, the canonical program `A091307.P15355924008426632866` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091307 has offset 1).

The definition of A091307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091307.P3133069151902351440

`ogf((6+10x-20x^2)/(1-3x+2x^2))`
-/

namespace A091307.P3133069151902351440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 10, -20] [1, -3, 2] n

end

end A091307.P3133069151902351440

namespace A091307

/-- `ogf((6+10x-20x^2)/(1-3x+2x^2))` -/
def P3133069151902351440.Spec : Prop :=
  ∀ n, P3133069151902351440.a n = A091307 (n + 1)

end A091307

/-! ## A091307.P15355924008426632866

`2*a(n-1)-4` with `a(0)=6, a(1)=28`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091307

/-- `2*a(n-1)-4` -/
def P15355924008426632866.Spec : Prop :=
  ∀ n, P15355924008426632866.a n = A091307 (n + 1)

theorem P15355924008426632866.correct : P15355924008426632866.Spec := by
  intro n
  simp only [A091307, Nat.add_sub_cancel]

end A091307

/-! ## A091307.P45082046932299834

`2*(a(n-1)-2)` with `a(0)=6, a(1)=28`
-/

namespace A091307.P45082046932299834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 28] fun n a =>
  2 * (a (n - 1) - 2)

end

end A091307.P45082046932299834

namespace A091307

/-- `2*(a(n-1)-2)` -/
def P45082046932299834.Spec : Prop :=
  ∀ n, P45082046932299834.a n = A091307 (n + 1)

theorem P45082046932299834.correct : P45082046932299834.Spec := by
  intro n
  simp only [A091307, Nat.add_sub_cancel, A091307.P45082046932299834.a, A091307.P15355924008426632866.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091307

/-! ## A091307.P13511774923577238591

`lcm(6, 1-a(n-1))-2` with `a(0)=6`
-/

namespace A091307.P13511774923577238591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (Int.lcm 6 (1 - a (n - 1)) : ℤ) - 2

end

end A091307.P13511774923577238591

namespace A091307

/-- `lcm(6, 1-a(n-1))-2` -/
def P13511774923577238591.Spec : Prop :=
  ∀ n, P13511774923577238591.a n = A091307 (n + 1)

end A091307

/-! ## A091307.P4376466847222091732

`a(n-1)+a(n-1)-4` with `a(0)=6, a(1)=28`
-/

namespace A091307.P4376466847222091732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 28] fun n a =>
  a (n - 1) + (a (n - 1) - 4)

end

end A091307.P4376466847222091732

namespace A091307

/-- `a(n-1)+a(n-1)-4` -/
def P4376466847222091732.Spec : Prop :=
  ∀ n, P4376466847222091732.a n = A091307 (n + 1)

theorem P4376466847222091732.correct : P4376466847222091732.Spec := by
  intro n
  simp only [A091307, Nat.add_sub_cancel, A091307.P4376466847222091732.a, A091307.P15355924008426632866.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091307

/-! ## A091307.P10048389690559946814

`a(n-1)-(4-a(n-1))` with `a(0)=6, a(1)=28`
-/

namespace A091307.P10048389690559946814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 28] fun n a =>
  a (n - 1) - (4 - a (n - 1))

end

end A091307.P10048389690559946814

namespace A091307

/-- `a(n-1)-(4-a(n-1))` -/
def P10048389690559946814.Spec : Prop :=
  ∀ n, P10048389690559946814.a n = A091307 (n + 1)

theorem P10048389690559946814.correct : P10048389690559946814.Spec := by
  intro n
  simp only [A091307, Nat.add_sub_cancel, A091307.P10048389690559946814.a, A091307.P15355924008426632866.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091307

/-! ## A091307.P5900114119947766094

`or(1, 3*A146541(n))+3`
-/

namespace A091307.P5900114119947766094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A146541 n) + 3

end

end A091307.P5900114119947766094

namespace A091307

/-- `or(1, 3*A146541(n))+3` -/
def P5900114119947766094.Spec : Prop :=
  ∀ n, P5900114119947766094.a n = A091307 (n + 1)

end A091307

/-! ## A091307.P882072652793959090

`xor(A005015(n), A083686(n))+3`
-/

namespace A091307.P882072652793959090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005015 n) (A083686 n) + 3

end

end A091307.P882072652793959090

namespace A091307

/-- `xor(A005015(n), A083686(n))+3` -/
def P882072652793959090.Spec : Prop :=
  ∀ n, P882072652793959090.a n = A091307 (n + 1)

end A091307

/-! ## A091307.P5656434559580696072

`2*(A003945(A114637(n+1))+2)`
-/

namespace A091307.P5656434559580696072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003945 (A114637 (n + 1)).toNat + 2)

end

end A091307.P5656434559580696072

namespace A091307

/-- `2*(A003945(A114637(n+1))+2)` -/
def P5656434559580696072.Spec : Prop :=
  ∀ n, P5656434559580696072.a n = A091307 (n + 1)

end A091307

/-! ## A091307.P13226996135820370060

`A000079(n+1)*A093563(∑[n])+4`
-/

namespace A091307.P13226996135820370060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A093563 (∑ j ∈ Finset.range (n + 1), f1 j) + 4

end

end A091307.P13226996135820370060

namespace A091307

/-- `A000079(n+1)*A093563(∑[n])+4` -/
def P13226996135820370060.Spec : Prop :=
  ∀ n, P13226996135820370060.a n = A091307 (n + 1)

end A091307

/-!
# A091309: Partial sums of A091316.

The programs for A091309, there is no canonical definition to state claims against.
-/

/-! ## A091309.P11963898497512455256

`∑[A091316(1+n)]`
-/

namespace A091309.P11963898497512455256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091316 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091309.P11963898497512455256

/-! ## A091309.P10423111381076458819

`A091316(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A091309.P10423111381076458819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091316 (n + 1) + a (n - 1)

end

end A091309.P10423111381076458819

/-!
# A091311: Partial sums of 3^A007814(n).

The programs for A091311, the canonical program `A091311.P3576469723642197269` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091311 has offset 0).

The definition of A091311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091311.P3576469723642197269

`2*A005836(n+1)-n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A091311

/-- `2*A005836(n+1)-n` -/
def P3576469723642197269.Spec : Prop :=
  ∀ n, P3576469723642197269.a n = A091311 n

theorem P3576469723642197269.correct : P3576469723642197269.Spec := by
  intro n
  simp only [A091311]

end A091311

/-! ## A091311.P13035143086655157755

`∑[and(n, -n)^log2(3)]`
-/

namespace A091311.P13035143086655157755
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091311.P13035143086655157755

namespace A091311

/-- `∑[and(n, -n)^log2(3)]` -/
def P13035143086655157755.Spec : Prop :=
  ∀ n, P13035143086655157755.a n = (A091311 n : ℝ)

end A091311

/-! ## A091311.P8476616214359078412

`3^val(n, 2)+a(n-1)` with `a(0)=0`
-/

namespace A091311.P8476616214359078412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 ^ SequenceMachineLib.valuation n 2 + a (n - 1)

end

end A091311.P8476616214359078412

namespace A091311

/-- `3^val(n, 2)+a(n-1)` -/
def P8476616214359078412.Spec : Prop :=
  ∀ n, (P8476616214359078412.a n : ℤ) = A091311 n

end A091311

/-! ## A091311.P952533801548209595

`∑[3^∑{e}[and(n, -n), #]]-1`
-/

namespace A091311.P952533801548209595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A091311.P952533801548209595

namespace A091311

/-- `∑[3^∑{e}[and(n, -n), #]]-1` -/
def P952533801548209595.Spec : Prop :=
  ∀ n, P952533801548209595.a n = A091311 n

end A091311

/-! ## A091311.P13722075136777638328

`∑[3^∑{e}[or(n, -n), #]]-1`
-/

namespace A091311.P13722075136777638328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A091311.P13722075136777638328

namespace A091311

/-- `∑[3^∑{e}[or(n, -n), #]]-1` -/
def P13722075136777638328.Spec : Prop :=
  ∀ n, P13722075136777638328.a n = A091311 n

end A091311

/-! ## A091311.P17217218978875962155

`∑[(3*a(n-1))^val(n, 2)]` with `a(0)=0`
-/

namespace A091311.P17217218978875962155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (3 * f1 (n - 1)) ^ SequenceMachineLib.valuation n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091311.P17217218978875962155

namespace A091311

/-- `∑[(3*a(n-1))^val(n, 2)]` -/
def P17217218978875962155.Spec : Prop :=
  ∀ n, (P17217218978875962155.a n : ℤ) = A091311 n

end A091311

/-! ## A091311.P4794392191972288107

`∑[(4-a(n-1))^val(n, 2)]` with `a(0)=0`
-/

namespace A091311.P4794392191972288107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (4 - f1 (n - 1)) ^ SequenceMachineLib.valuation n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091311.P4794392191972288107

namespace A091311

/-- `∑[(4-a(n-1))^val(n, 2)]` -/
def P4794392191972288107.Spec : Prop :=
  ∀ n, P4794392191972288107.a n = A091311 n

end A091311

/-! ## A091311.P7218526866326161908

`a(n-1)+and(n, -n)^log2(3)` with `a(0)=0`
-/

namespace A091311.P7218526866326161908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

end

end A091311.P7218526866326161908

namespace A091311

/-- `a(n-1)+and(n, -n)^log2(3)` -/
def P7218526866326161908.Spec : Prop :=
  ∀ n, P7218526866326161908.a n = (A091311 n : ℝ)

end A091311

/-! ## A091311.P4380995380227734647

`∑[3^val(n+1, 2)]-3^val(n+1, 2)`
-/

namespace A091311.P4380995380227734647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A091311.P4380995380227734647

namespace A091311

/-- `∑[3^val(n+1, 2)]-3^val(n+1, 2)` -/
def P4380995380227734647.Spec : Prop :=
  ∀ n, P4380995380227734647.a n = A091311 n

end A091311

/-! ## A091311.P12290702203500303227

`∑[A061393(n)-1]`
-/

namespace A091311.P12290702203500303227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091311.P12290702203500303227

namespace A091311

/-- `∑[A061393(n)-1]` -/
def P12290702203500303227.Spec : Prop :=
  ∀ n, P12290702203500303227.a n = A091311 n

end A091311

/-! ## A091311.P7298576097279193808

`A005823(n+1)-n`
-/

namespace A091311.P7298576097279193808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1) - (n : ℤ)

end

end A091311.P7298576097279193808

namespace A091311

/-- `A005823(n+1)-n` -/
def P7298576097279193808.Spec : Prop :=
  ∀ n, P7298576097279193808.a n = A091311 n

end A091311

/-! ## A091311.P10263960600521652387

`A191106(n+1)-(n+1)`
-/

namespace A091311.P10263960600521652387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (n + 1) - (n + 1 : ℤ)

end

end A091311.P10263960600521652387

namespace A091311

/-- `A191106(n+1)-(n+1)` -/
def P10263960600521652387.Spec : Prop :=
  ∀ n, P10263960600521652387.a n = A091311 n

theorem P10263960600521652387.correct : P10263960600521652387.Spec := by
  intro n
  simp only [A091311, Nat.add_sub_cancel, A091311.P10263960600521652387.a, A091311.P3576469723642197269.a, A005836, A005836.P12367569128854000442.a, A191106, A191106.P14318960782642290276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091311

/-! ## A091311.P6020757229299815102

`A055247(n+1)-or(1, n)`
-/

namespace A091311.P6020757229299815102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A091311.P6020757229299815102

namespace A091311

/-- `A055247(n+1)-or(1, n)` -/
def P6020757229299815102.Spec : Prop :=
  ∀ n, P6020757229299815102.a n = A091311 n

end A091311

/-! ## A091311.P14897597665674746887

`A055247(n+1)-A109613(n)`
-/

namespace A091311.P14897597665674746887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (n + 1) - A109613 n

end

end A091311.P14897597665674746887

namespace A091311

/-- `A055247(n+1)-A109613(n)` -/
def P14897597665674746887.Spec : Prop :=
  ∀ n, P14897597665674746887.a n = A091311 n

end A091311

/-! ## A091311.P12277510252074950760

`record[A004488(n)]-n`
-/

namespace A091311.P12277510252074950760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A091311.P12277510252074950760

namespace A091311

/-- `record[A004488(n)]-n` -/
def P12277510252074950760.Spec : Prop :=
  ∀ n, P12277510252074950760.a n = A091311 n

end A091311

/-! ## A091311.P6646580888701027100

`record[A300222(n)]-n`
-/

namespace A091311.P6646580888701027100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A091311.P6646580888701027100

namespace A091311

/-- `record[A300222(n)]-n` -/
def P6646580888701027100.Spec : Prop :=
  ∀ n, P6646580888701027100.a n = A091311 n

end A091311

/-! ## A091311.P10576371438631066923

`A004488(A005836(n+1))-n`
-/

namespace A091311.P10576371438631066923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A005836 (n + 1)).toNat - (n : ℤ)

end

end A091311.P10576371438631066923

namespace A091311

/-- `A004488(A005836(n+1))-n` -/
def P10576371438631066923.Spec : Prop :=
  ∀ n, P10576371438631066923.a n = A091311 n

end A091311

/-! ## A091311.P9821722607470913231

`eq[1, A088917(n)]-n`
-/

namespace A091311.P9821722607470913231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A091311.P9821722607470913231

namespace A091311

/-- `eq[1, A088917(n)]-n` -/
def P9821722607470913231.Spec : Prop :=
  ∀ n, P9821722607470913231.a n = A091311 n

end A091311

/-! ## A091311.P1044871369338140852

`eq[1, A105220(n)]-n`
-/

namespace A091311.P1044871369338140852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A091311.P1044871369338140852

namespace A091311

/-- `eq[1, A105220(n)]-n` -/
def P1044871369338140852.Spec : Prop :=
  ∀ n, P1044871369338140852.a n = A091311 n

end A091311

/-! ## A091311.P18432544512245138523

`eq[1, A290091(n)]-n`
-/

namespace A091311.P18432544512245138523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A091311.P18432544512245138523

namespace A091311

/-- `eq[1, A290091(n)]-n` -/
def P18432544512245138523.Spec : Prop :=
  ∀ n, P18432544512245138523.a n = A091311 n

end A091311

/-!
# A091313: Smallest prime x > n such that x (mod n) = x (mod prime(n)).

The programs for A091313, there is no canonical definition to state claims against.
-/

/-! ## A091313.P2996862789351530275

`A007918(A033286(n+1)*A349542(n))`
-/

namespace A091313.P2996862789351530275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A033286 (n + 1) * A349542 n).toNat

end

end A091313.P2996862789351530275

/-! ## A091313.P14124302288946166206

`A159477(A033286(n+1)*A349542(n))`
-/

namespace A091313.P14124302288946166206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A033286 (n + 1) * A349542 n).toNat

end

end A091313.P14124302288946166206

/-!
# A091316: a(1)=1, a(2)=2, then a(a(1)+a(2)+...+a(k))=a(k), fill in any undefined places with the rule a(n+1)=a(n)+1.

The programs for A091316, there is no canonical definition to state claims against.
-/

/-! ## A091316.P9468471370893064848

`Δ[A091309(A028310(n))%(n+1)²]`
-/

namespace A091316.P9468471370893064848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091309 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091316.P9468471370893064848

/-! ## A091316.P4699841512515799300

`Δ[∪[A091309(n+1), A318986(3*n+2)]]`
-/

namespace A091316.P4699841512515799300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091309 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318986 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A091316.P4699841512515799300

/-! ## A091316.P17641384143173815464

`A028310(Δ[A091309(A028310(n))])`
-/

namespace A091316.P17641384143173815464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091309 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A091316.P17641384143173815464

/-! ## A091316.P5046743166430987056

`runs[fp[A091309(n+1)]]`
-/

namespace A091316.P5046743166430987056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091309 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A091316.P5046743166430987056

/-! ## A091316.P3043417016278804742

`A023514(∑[A050363(n+1)!])`
-/

namespace A091316.P3043417016278804742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A050363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091316.P3043417016278804742

/-!
# A091317: Primes p that divide 2^n+1 for some n.

The programs for A091317, there is no canonical definition to state claims against.
-/

/-! ## A091317.P9096752365983800575

`A014662(n%a(n-1))` with `a(0)=2`
-/

namespace A091317.P9096752365983800575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A014662 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A091317.P9096752365983800575

/-! ## A091317.P648326097793773850

`∪[A007352(n+1), A014662(n+1)]`
-/

namespace A091317.P648326097793773850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P648326097793773850

/-! ## A091317.P11922187956859229764

`p?[A014657(n+1)]`
-/

namespace A091317.P11922187956859229764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091317.P11922187956859229764

/-! ## A091317.P4118032116129383548

`record[A006530(A014657(2+n))]`
-/

namespace A091317.P4118032116129383548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014657 (2 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091317.P4118032116129383548

/-! ## A091317.P7421487267427246262

`filter[A014657(n+1), A001222(#)]`
-/

namespace A091317.P7421487267427246262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A091317.P7421487267427246262

/-! ## A091317.P17144641851335735540

`filter[A014657(n+1), A010051(#)]`
-/

namespace A091317.P17144641851335735540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A091317.P17144641851335735540

/-! ## A091317.P16323769016125785904

`filter[A014657(n+2), A365716(#)]`
-/

namespace A091317.P16323769016125785904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A091317.P16323769016125785904

/-! ## A091317.P9927776562719138652

`filter[A014657(n+2), A380467(#)]`
-/

namespace A091317.P9927776562719138652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A091317.P9927776562719138652

/-! ## A091317.P2326773486884667208

`∩[A000040(n+1), A014657(n+1)]`
-/

namespace A091317.P2326773486884667208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P2326773486884667208

/-! ## A091317.P17660967032892519385

`∩[A014657(n+1), A042998(n+1)]`
-/

namespace A091317.P17660967032892519385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P17660967032892519385

/-! ## A091317.P8764723674740103946

`∩[A014657(n+1), A051948(n+1)]`
-/

namespace A091317.P8764723674740103946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P8764723674740103946

/-! ## A091317.P12157705286261191828

`∩[A014657(n+1), A053813(n+1)]`
-/

namespace A091317.P12157705286261191828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P12157705286261191828

/-! ## A091317.P8248226162398908931

`∩[A014657(n+1), A066191(n+1)]`
-/

namespace A091317.P8248226162398908931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P8248226162398908931

/-! ## A091317.P8599786303620677520

`∩[A014657(n+1), A093515(n+1)]`
-/

namespace A091317.P8599786303620677520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P8599786303620677520

/-! ## A091317.P1335759259571678440

`∩[A182140(n+1), A014657(n+1)]`
-/

namespace A091317.P1335759259571678440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P1335759259571678440

/-! ## A091317.P15766435425738775752

`∩[A014657(n+1), A182986(n+1)]`
-/

namespace A091317.P15766435425738775752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P15766435425738775752

/-! ## A091317.P15152966617498889213

`filter[A014657(n+1), A323153(#)]`
-/

namespace A091317.P15152966617498889213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A091317.P15152966617498889213

/-! ## A091317.P10257091656996945407

`filter[A014657(n+2), A323152(#)]`
-/

namespace A091317.P10257091656996945407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A091317.P10257091656996945407

/-! ## A091317.P9221643494603193803

`filter[A014657(n+2), A340371(#)]`
-/

namespace A091317.P9221643494603193803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A091317.P9221643494603193803

/-! ## A091317.P13450280253106040340

`∩[A001751(n+1), A014657(n+1)]`
-/

namespace A091317.P13450280253106040340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P13450280253106040340

/-!
# A091318: Lengths of runs of 1's in A039702.

The programs for A091318, the canonical program `A091318.P7056967124292507603` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091318 has offset 1).

The definition of A091318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091318.P16861742521023362441

`runs[A080147(n+1)-n]`
-/

namespace A091318.P16861742521023362441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080147 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A091318.P16861742521023362441

namespace A091318

/-- `runs[A080147(n+1)-n]` -/
def P16861742521023362441.Spec : Prop :=
  ∀ n, (P16861742521023362441.a n : ℤ) = A091318 (n + 1)

end A091318

/-! ## A091318.P7056967124292507603

`A091237(2*n+3)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A091318

/-- `A091237(2*n+3)` -/
def P7056967124292507603.Spec : Prop :=
  ∀ n, P7056967124292507603.a n = A091318 (n + 1)

theorem P7056967124292507603.correct : P7056967124292507603.Spec := by
  intro n
  simp only [A091318, Nat.add_sub_cancel]

end A091318

/-! ## A091318.P12157194906725936700

`runs[A061395(A002144(n+1))-n]`
-/

namespace A091318.P12157194906725936700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A002144 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A091318.P12157194906725936700

namespace A091318

/-- `runs[A061395(A002144(n+1))-n]` -/
def P12157194906725936700.Spec : Prop :=
  ∀ n, (P12157194906725936700.a n : ℤ) = A091318 (n + 1)

end A091318

/-! ## A091318.P8674671223113020253

`Δ[record[A292375(4*n+3)]]`
-/

namespace A091318.P8674671223113020253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (4 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091318.P8674671223113020253

namespace A091318

/-- `Δ[record[A292375(4*n+3)]]` -/
def P8674671223113020253.Spec : Prop :=
  ∀ n, P8674671223113020253.a n = A091318 (n + 1)

end A091318

/-! ## A091318.P17617379716392010903

`runs[A056239(A002144(n+1))-n]`
-/

namespace A091318.P17617379716392010903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A002144 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A091318.P17617379716392010903

namespace A091318

/-- `runs[A056239(A002144(n+1))-n]` -/
def P17617379716392010903.Spec : Prop :=
  ∀ n, (P17617379716392010903.a n : ℤ) = A091318 (n + 1)

end A091318

/-!
# A091319: Number of orientable hyperbolic 3-manifolds of cusp type 1 obtained from n ideal tetrahedra.

The programs for A091319, there is no canonical definition to state claims against.
-/

/-! ## A091319.P325354524801244395

`A064989(6^n+10*a(n-1))` with `a(0)=0, a(1)=2, a(2)=9`
-/

namespace A091319.P325354524801244395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 9] fun n a =>
  A064989 ((6 ^ n : ℤ) + 10 * a (n - 1)).toNat

end

end A091319.P325354524801244395

/-!
# A091321: OU-Sigma multiperfect numbers.

The programs for A091321, there is no canonical definition to state claims against.
-/

/-! ## A091321.P4295512943902631969

`∪[A007691(n+1), A125310(n+1)]`
-/

namespace A091321.P4295512943902631969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091321.P4295512943902631969

/-! ## A091321.P14918527493905869125

`∪[A007691(n+1), A353038(n+1)]`
-/

namespace A091321.P14918527493905869125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091321.P14918527493905869125

/-! ## A091321.P11239901365689555072

`∪[A125310(n+1), A348035(n+1)]`
-/

namespace A091321.P11239901365689555072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091321.P11239901365689555072

/-! ## A091321.P17654619485566878177

`∪[A348035(n+1), A353038(n+1)]`
-/

namespace A091321.P17654619485566878177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091321.P17654619485566878177

/-!
# A091322: k-values associated with A091321.

The programs for A091322, there is no canonical definition to state claims against.
-/

/-! ## A091322.P10271167976251784932

`A252229(lt[A182949(n+1), A347067(n+1)])`
-/

namespace A091322.P10271167976251784932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091322.P10271167976251784932

/-! ## A091322.P12218986508861682390

`A212632(A325388(2*n+1)+A227737(n+1))`
-/

namespace A091322.P12218986508861682390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (A325388 (2 * n + 1) + A227737 (n + 1)).toNat

end

end A091322.P12218986508861682390

/-! ## A091322.P16795802117740826047

`A212632(A014612(n+1)-round(sqrt(3*n+1)))`
-/

namespace A091322.P16795802117740826047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (A014612 (n + 1) - SequenceMachineLib.roundAway (Real.sqrt (3 * n + 1 : ℝ))).toNat

end

end A091322.P16795802117740826047

/-! ## A091322.P11273578884590931354

`A072491(A245869(n+1)+A055389(n))`
-/

namespace A091322.P11273578884590931354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A245869 (n + 1) + A055389 n).toNat

end

end A091322.P11273578884590931354

/-! ## A091322.P16799639495239396567

`A182576(A182598(5*n+2)+A182576(n))`
-/

namespace A091322.P16799639495239396567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182576 (A182598 (5 * n + 2) + A182576 n).toNat

end

end A091322.P16799639495239396567

/-!
# A091324: a(n) = (2^n)^(2^n)-(2^n-1)^(2^n).

The programs for A091324, there is no canonical definition to state claims against.
-/

/-! ## A091324.P1445356680027364131

`(2^n)^2^n-(2^n-1)^2^n`
-/

namespace A091324.P1445356680027364131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n) ^ 2 ^ n : ℤ) - ((2 ^ n : ℤ) - 1) ^ 2 ^ n

end

end A091324.P1445356680027364131

/-!
# A091325: Triangle T(n,k) read by rows giving number of inequivalent even binary linear [n,k] codes (n >= 1, 0 <= k <= n-1).

The programs for A091325, there is no canonical definition to state claims against.
-/

/-! ## A091325.P423362363007722181

`A048766(A134059(n)+A034254(n+1)²)`
-/

namespace A091325.P423362363007722181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A134059 n + A034254 (n + 1) ^ 2).toNat

end

end A091325.P423362363007722181

/-! ## A091325.P14328451149952632352

`A001462(A034254(n+1)%A014224(n+1))`
-/

namespace A091325.P14328451149952632352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.tmod (A034254 (n + 1)) (A014224 (n + 1))).toNat

end

end A091325.P14328451149952632352

/-! ## A091325.P4358806144620026739

`A392698(A011847(n+1)%A011251(n+1))`
-/

namespace A091325.P4358806144620026739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392698 (Int.tmod (A011847 (n + 1)) (A011251 (n + 1))).toNat

end

end A091325.P4358806144620026739

/-! ## A091325.P118535374203634323

`A001462(A034254(n+1))`
-/

namespace A091325.P118535374203634323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A034254 (n + 1)).toNat

end

end A091325.P118535374203634323

/-! ## A091325.P1090085399847989960

`A285189(A132729(n))`
-/

namespace A091325.P1090085399847989960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A132729 n).toNat

end

end A091325.P1090085399847989960

/-!
# A091326: Total number of inequivalent even binary linear codes of length n and any dimension k = 0, 1, ..., n-1.

The programs for A091326, there is no canonical definition to state claims against.
-/

/-! ## A091326.P9289101191360715685

`∑[A091328(n+1)]+1`
-/

namespace A091326.P9289101191360715685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A091326.P9289101191360715685

/-! ## A091326.P12204351071916270552

`∑[lcm(16, n)/16+2*A308994(2*n)]+1`
-/

namespace A091326.P12204351071916270552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 16 n : ℚ) / 16 + (2 * A308994 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A091326.P12204351071916270552

/-! ## A091326.P16428706799387512367

`A045687(n)+A008815(n)`
-/

namespace A091326.P16428706799387512367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045687 n + A008815 n

end

end A091326.P16428706799387512367

/-! ## A091326.P16070213339169462817

`A298434(n)+A045687(n)`
-/

namespace A091326.P16070213339169462817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298434 n + A045687 n

end

end A091326.P16070213339169462817

/-! ## A091326.P12485018691103481391

`A348268(n)+A045687(n)`
-/

namespace A091326.P12485018691103481391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348268 n + A045687 n

end

end A091326.P12485018691103481391

/-!
# A091327: Triangle T(n,k) read by rows giving number of inequivalent even binary linear [n,k] codes containing no zero columns (n >= 2, 1 <= k <= n-1).

The programs for A091327, there is no canonical definition to state claims against.
-/

/-! ## A091327.P11226400458528961068

`A287272(A097807(n)+A001263(n+1))`
-/

namespace A091327.P11226400458528961068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A097807 n + A001263 (n + 1)).toNat

end

end A091327.P11226400458528961068

/-! ## A091327.P4270862512851643829

`A241926(n+1)-A059841(A066121(n+1))`
-/

namespace A091327.P4270862512851643829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241926 (n + 1) - A059841 (A066121 (n + 1)).toNat

end

end A091327.P4270862512851643829

/-! ## A091327.P10204144987010288223

`A008616(A131061(n)-1)%A253382(A116389(n))`
-/

namespace A091327.P10204144987010288223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008616 (A131061 n - 1).toNat) (A253382 (A116389 n).toNat)

end

end A091327.P10204144987010288223

/-!
# A091328: Total number of inequivalent even binary linear codes of length n and any dimension k = 0, 1, ..., n-1, with no column of zeros.

The programs for A091328, there is no canonical definition to state claims against.
-/

/-! ## A091328.P11370575651471929006

`ogf((-x+2x^4+2x^6-2x^7)/(-1+x+2x^2))`
-/

namespace A091328.P11370575651471929006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, -2, 0, -2, 2] [1, -1, -2] n

end

end A091328.P11370575651471929006

/-! ## A091328.P8474895612286032619

`Δ[floor((n+A365046(n))/2)]`
-/

namespace A091328.P8474895612286032619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) + A365046 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091328.P8474895612286032619

/-! ## A091328.P6586635465383063771

`Δ[A091326(round(sqrt(n²+1)))]`
-/

namespace A091328.P6586635465383063771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091326 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091328.P6586635465383063771

/-! ## A091328.P10620224304521223143

`lcm(16, n)/16+2*A308994(2*n)`
-/

namespace A091328.P10620224304521223143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 16 n : ℚ) / 16 + (2 * A308994 (2 * n) : ℚ)

end

end A091328.P10620224304521223143

/-! ## A091328.P1351048191818901611

`A266123(A383806(n+1))`
-/

namespace A091328.P1351048191818901611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266123 (A383806 (n + 1)).toNat

end

end A091328.P1351048191818901611

/-!
# A091330: a(n) = ((p-1)!/p) - ((p-1)*(p-1)!/p!), where p is the n-th prime.

The programs for A091330, there is no canonical definition to state claims against.
-/

/-! ## A091330.P18346490776126102450

`A007619(1+n)-1`
-/

namespace A091330.P18346490776126102450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007619 (1 + n) - 1

end

end A091330.P18346490776126102450

/-! ## A091330.P11302807479569564590

`xor(1, A007619(n+1))`
-/

namespace A091330.P11302807479569564590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A007619 (n + 1))

end

end A091330.P11302807479569564590

/-! ## A091330.P8832119841318225707

`2*floor(A157249(p?[comp[n²]])/2)`
-/

namespace A091330.P8832119841318225707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A157249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌋

end

end A091330.P8832119841318225707

/-! ## A091330.P4818172114741175377

`A064852(Δ[A007504(n)])`
-/

namespace A091330.P4818172114741175377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064852 (f1 (n + 1) - f1 n).toNat

end

end A091330.P4818172114741175377

/-! ## A091330.P4628985412733434535

`A226198(Δ[A007504(n)])`
-/

namespace A091330.P4628985412733434535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226198 (f1 (n + 1) - f1 n).toNat

end

end A091330.P4628985412733434535

/-!
# A091331: Natural numbers written out with their digits grouped in triples (leading zeros omitted).

The programs for A091331, there is no canonical definition to state claims against.
-/

/-! ## A091331.P8570895452799751179

`A193431(3*n+1)`
-/

namespace A091331.P8570895452799751179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193431 (3 * n + 1)

end

end A091331.P8570895452799751179

/-! ## A091331.P15809968895516147951

`floor(A193492(3*n+1)/10)`
-/

namespace A091331.P15809968895516147951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193492 (3 * n + 1) : ℚ) / 10⌋

end

end A091331.P15809968895516147951

/-! ## A091331.P2903960373266507700

`floor(floor(A193493(3*n+1)/10)/10)`
-/

namespace A091331.P2903960373266507700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A193493 (3 * n + 1) : ℚ) / 10⌋ : ℚ) / 10⌋

end

end A091331.P2903960373266507700

/-! ## A091331.P12090018937292110480

`A224841(A129863(n))`
-/

namespace A091331.P12090018937292110480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224841 (A129863 n).toNat

end

end A091331.P12090018937292110480

/-!
# A091332: Natural numbers written out with their digits grouped in sets of four (leading zeros omitted).

The programs for A091332, there is no canonical definition to state claims against.
-/

/-! ## A091332.P2662235218907460928

`A193492(1+n*4)`
-/

namespace A091332.P2662235218907460928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193492 (1 + n * 4)

end

end A091332.P2662235218907460928

/-! ## A091332.P9874668774456857286

`floor(A193493(1+4*n)/10)`
-/

namespace A091332.P9874668774456857286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193493 (1 + 4 * n) : ℚ) / 10⌋

end

end A091332.P9874668774456857286

/-!
# A091333: Number of 1's required to build n using +, -, *, and parentheses.

The programs for A091333, there is no canonical definition to state claims against.
-/

/-! ## A091333.P12845668153381777947

`ceil(A005245((1+n)²)/2)`
-/

namespace A091333.P12845668153381777947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005245 ((1 + n) ^ 2) : ℚ) / 2⌉

end

end A091333.P12845668153381777947

/-! ## A091333.P7661270582515708994

`round(A005245((n+1)²)/2)`
-/

namespace A091333.P7661270582515708994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005245 ((n + 1) ^ 2) : ℚ) / 2)

end

end A091333.P7661270582515708994

/-! ## A091333.P5733701201125431777

`ceil(A213923((1+n)²)/4)`
-/

namespace A091333.P5733701201125431777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213923 ((1 + n) ^ 2) : ℚ) / 4⌉

end

end A091333.P5733701201125431777

/-! ## A091333.P12264398861956197450

`floor(A213923((n+1)²)/4)+1`
-/

namespace A091333.P12264398861956197450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213923 ((n + 1) ^ 2) : ℚ) / 4⌋ + 1

end

end A091333.P12264398861956197450

/-! ## A091333.P6324145777654258052

`A065033(A005245((n+1)²))`
-/

namespace A091333.P6324145777654258052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005245 ((n + 1) ^ 2)).toNat

end

end A091333.P6324145777654258052

/-! ## A091333.P15477141731631256333

`A008621(A213923((n+1)²))`
-/

namespace A091333.P15477141731631256333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A213923 ((n + 1) ^ 2)).toNat

end

end A091333.P15477141731631256333

/-! ## A091333.P4660300687240075944

`A004526(A005245((n+1)²)+1)`
-/

namespace A091333.P4660300687240075944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005245 ((n + 1) ^ 2) + 1).toNat

end

end A091333.P4660300687240075944

/-! ## A091333.P15952381724146531421

`A008619(A005245((n+1)²)-1)`
-/

namespace A091333.P15952381724146531421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005245 ((n + 1) ^ 2) - 1).toNat

end

end A091333.P15952381724146531421

/-! ## A091333.P18067454034600865610

`A110654(A005245(Δ[A153057(n)]))`
-/

namespace A091333.P18067454034600865610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005245 (f1 (n + 1) - f1 n).toNat).toNat

end

end A091333.P18067454034600865610

/-!
# A091334: Number of 1's required to build n using +, -, *, ^, and parentheses.

The programs for A091334, there is no canonical definition to state claims against.
-/

/-! ## A091334.P12391233124960659481

`or(A324099(A323727(n+1)), A348089(n+1))`
-/

namespace A091334.P12391233124960659481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324099 (A323727 (n + 1)).toNat) (A348089 (n + 1))

end

end A091334.P12391233124960659481

/-! ## A091334.P15225329976064592738

`or(A010054(18*(8*n+1)), A348089(n+1))`
-/

namespace A091334.P15225329976064592738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (18 * (8 * n + 1))) (A348089 (n + 1))

end

end A091334.P15225329976064592738

/-! ## A091334.P15035420354024921609

`or(A262693(A165631(n+1)), A348089(n+1))`
-/

namespace A091334.P15035420354024921609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A262693 (A165631 (n + 1)).toNat) (A348089 (n + 1))

end

end A091334.P15035420354024921609

/-! ## A091334.P5589614608631617445

`A348089(n+1)+A010051(A329853(n+1))`
-/

namespace A091334.P5589614608631617445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348089 (n + 1) + A010051 (A329853 (n + 1)).toNat

end

end A091334.P5589614608631617445

/-! ## A091334.P2298633713613448715

`A348089(n+1)+A326291(A333159(n))`
-/

namespace A091334.P2298633713613448715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348089 (n + 1) + A326291 (A333159 n).toNat

end

end A091334.P2298633713613448715

/-!
# A091337: a(n) = (2/n), where (k/n) is the Kronecker symbol.

The programs for A091337, the canonical program `A091337.P17405591351380119363` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091337 has offset 0).

The definition of A091337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091337.P17405591351380119363

`ogf((x-x^3)/(1+x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091337

/-- `ogf((x-x^3)/(1+x^4))` -/
def P17405591351380119363.Spec : Prop :=
  ∀ n, P17405591351380119363.a n = A091337 n

theorem P17405591351380119363.correct : P17405591351380119363.Spec := by
  intro n
  simp only [A091337]

end A091337

/-!
# A091338: a(n) = (3/n), where (k/n) is the Kronecker symbol.

The programs for A091338, the canonical program `A091338.P7387993790083234101` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091338 has offset 1).

The definition of A091338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091338.P8259748434504197283

`((n+2)%3-1)*Δ[xor(2*n, n)]%2`
-/

namespace A091338.P8259748434504197283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 2) % 3 : ℕ) : ℤ) - 1) * Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A091338.P8259748434504197283

namespace A091338

/-- `((n+2)%3-1)*Δ[xor(2*n, n)]%2` -/
def P8259748434504197283.Spec : Prop :=
  ∀ n, P8259748434504197283.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P6492121879562822435

`Δ[xor(n, 2*n)]%2*∑[(-2)^(∑[n]%3)]`
-/

namespace A091338.P6492121879562822435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((∑ j ∈ Finset.range (n + 1), f3 j) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A091338.P6492121879562822435

namespace A091338

/-- `Δ[xor(n, 2*n)]%2*∑[(-2)^(∑[n]%3)]` -/
def P6492121879562822435.Spec : Prop :=
  ∀ n, P6492121879562822435.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P7387993790083234101

`Δ[A005811(n)]*A049347(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091338

/-- `Δ[A005811(n)]*A049347(n)` -/
def P7387993790083234101.Spec : Prop :=
  ∀ n, P7387993790083234101.a n = A091338 (n + 1)

theorem P7387993790083234101.correct : P7387993790083234101.Spec := by
  intro n
  simp only [A091338, Nat.add_sub_cancel]

end A091338

/-! ## A091338.P5468712461484181752

`A034947(n+1)*A049347(n)`
-/

namespace A091338.P5468712461484181752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A049347 n

end

end A091338.P5468712461484181752

namespace A091338

/-- `A034947(n+1)*A049347(n)` -/
def P5468712461484181752.Spec : Prop :=
  ∀ n, P5468712461484181752.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P8293547293905862228

`A162397(n+1)/A119972(n+1)`
-/

namespace A091338.P8293547293905862228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162397 (n + 1) : ℚ) / (A119972 (n + 1) : ℚ)

end

end A091338.P8293547293905862228

namespace A091338

/-- `A162397(n+1)/A119972(n+1)` -/
def P8293547293905862228.Spec : Prop :=
  ∀ n, P8293547293905862228.a n = (A091338 (n + 1) : ℚ)

end A091338

/-! ## A091338.P4252889230574906381

`∑{d}[n+1, A008683(#)*A035186((n+1)/#)]`
-/

namespace A091338.P4252889230574906381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A035186 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091338.P4252889230574906381

namespace A091338

/-- `∑{d}[n+1, A008683(#)*A035186((n+1)/#)]` -/
def P4252889230574906381.Spec : Prop :=
  ∀ n, P4252889230574906381.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P17827334415270130967

`A033999(A025480(n))*A049347(n)`
-/

namespace A091338.P17827334415270130967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025480 n).toNat * A049347 n

end

end A091338.P17827334415270130967

namespace A091338

/-- `A033999(A025480(n))*A049347(n)` -/
def P17827334415270130967.Spec : Prop :=
  ∀ n, P17827334415270130967.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P14751793236700482571

`A034947(n+1)*A102283(n+1)`
-/

namespace A091338.P14751793236700482571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A102283 (n + 1)

end

end A091338.P14751793236700482571

namespace A091338

/-- `A034947(n+1)*A102283(n+1)` -/
def P14751793236700482571.Spec : Prop :=
  ∀ n, P14751793236700482571.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P14428838707423742292

`A106510(n+1)*A112347(n+1)`
-/

namespace A091338.P14428838707423742292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (n + 1) * A112347 (n + 1)

end

end A091338.P14428838707423742292

namespace A091338

/-- `A106510(n+1)*A112347(n+1)` -/
def P14428838707423742292.Spec : Prop :=
  ∀ n, P14428838707423742292.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P12245142155385245549

`A102283(n+1)*A121238(n+1)`
-/

namespace A091338.P12245142155385245549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (n + 1) * A121238 (n + 1)

end

end A091338.P12245142155385245549

namespace A091338

/-- `A102283(n+1)*A121238(n+1)` -/
def P12245142155385245549.Spec : Prop :=
  ∀ n, P12245142155385245549.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P139536177879025252

`A049347(A322015(n)+n)`
-/

namespace A091338.P139536177879025252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A322015 n + (n : ℤ)).toNat

end

end A091338.P139536177879025252

namespace A091338

/-- `A049347(A322015(n)+n)` -/
def P139536177879025252.Spec : Prop :=
  ∀ n, P139536177879025252.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P8721931019132861986

`A010892(2*n+1)/Δ[xor(2*n, n)]%2`
-/

namespace A091338.P8721931019132861986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010892 (2 * n + 1) : ℚ) / (Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 : ℚ)

end

end A091338.P8721931019132861986

namespace A091338

/-- `A010892(2*n+1)/Δ[xor(2*n, n)]%2` -/
def P8721931019132861986.Spec : Prop :=
  ∀ n, P8721931019132861986.a n = (A091338 (n + 1) : ℚ)

end A091338

/-! ## A091338.P7006194842069664051

`A010892(2*n+1)*A034947(2*(n+1))`
-/

namespace A091338.P7006194842069664051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A034947 (2 * (n + 1))

end

end A091338.P7006194842069664051

namespace A091338

/-- `A010892(2*n+1)*A034947(2*(n+1))` -/
def P7006194842069664051.Spec : Prop :=
  ∀ n, P7006194842069664051.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P14896220379271224714

`A163810(A081769(n+1))`
-/

namespace A091338.P14896220379271224714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A081769 (n + 1)).toNat

end

end A091338.P14896220379271224714

namespace A091338

/-- `A163810(A081769(n+1))` -/
def P14896220379271224714.Spec : Prop :=
  ∀ n, P14896220379271224714.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P11516967095509692453

`A260192(A317332(n+1))`
-/

namespace A091338.P11516967095509692453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260192 (A317332 (n + 1)).toNat

end

end A091338.P11516967095509692453

namespace A091338

/-- `A260192(A317332(n+1))` -/
def P11516967095509692453.Spec : Prop :=
  ∀ n, P11516967095509692453.a n = A091338 (n + 1)

end A091338

/-!
# A091339: a(n) = a(n-1)*a(n-2) + (n-2); a(1) = 1, a(2) = 2.

The programs for A091339, the canonical program `A091339.P14890267995267948632` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091339 has offset 1).

The definition of A091339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+n-1` (program `A091339.P14890267995267948632`, by `A091339.P14890267995267948632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091339.P14890267995267948632

`a(n-1)*a(n-2)+n-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091339

/-- `a(n-1)*a(n-2)+n-1` -/
def P14890267995267948632.Spec : Prop :=
  ∀ n, P14890267995267948632.a n = A091339 (n + 1)

theorem P14890267995267948632.correct : P14890267995267948632.Spec := by
  intro n
  simp only [A091339, Nat.add_sub_cancel]

end A091339

/-! ## A091339.P17325974185335770530

`n-(1-a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A091339.P17325974185335770530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - (1 - a (n - 1) * a (n - 2))

end

end A091339.P17325974185335770530

namespace A091339

/-- `n-(1-a(n-1)*a(n-2))` -/
def P17325974185335770530.Spec : Prop :=
  ∀ n, P17325974185335770530.a n = A091339 (n + 1)

end A091339

/-! ## A091339.P3888731542603140840

`a(n-1)/tan(acot(a(n-2)))-1+n` with `a(0)=1, a(1)=2`
-/

namespace A091339.P3888731542603140840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (a (n - 2))) - 1 + (n : ℝ)

end

end A091339.P3888731542603140840

namespace A091339

/-- `a(n-1)/tan(acot(a(n-2)))-1+n` -/
def P3888731542603140840.Spec : Prop :=
  ∀ n, P3888731542603140840.a n = (A091339 (n + 1) : ℝ)

end A091339

/-! ## A091339.P10910288059592029941

`a(n-1)/abs(1/a(n-2))-1+n` with `a(0)=1, a(1)=2`
-/

namespace A091339.P10910288059592029941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / |1 / a (n - 2)| - 1 + (n : ℚ)

end

end A091339.P10910288059592029941

namespace A091339

/-- `a(n-1)/abs(1/a(n-2))-1+n` -/
def P10910288059592029941.Spec : Prop :=
  ∀ n, P10910288059592029941.a n = (A091339 (n + 1) : ℚ)

end A091339

/-!
# A091341: Natural numbers written out with their digits grouped in sets of 5 (leading zeros omitted).

The programs for A091341, there is no canonical definition to state claims against.
-/

/-! ## A091341.P7848482990013973536

`A193493(5*n+1)`
-/

namespace A091341.P7848482990013973536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193493 (5 * n + 1)

end

end A091341.P7848482990013973536

/-!
# A091342: Given (1) f(h,j,a) = ( [ ((a/gcd(a,h)) / gcd(j+1,(a/gcd(a,h)))) * (h(j+1)) ] - [ ((a/gcd(a,h)) / gcd(j+1,(a/gcd(a,h)))) * (ja) ] ) / a then let (2) a(h) = d(h,j) = lcm( f(h,j,1) ... f(h,j,h) ).

The programs for A091342, there is no canonical definition to state claims against.
-/

/-! ## A091342.P14436717139325236629

`lcm(n*lcm(n+1, a(n-1))/(n+1), Δ[n²])` with `a(0)=1`
-/

namespace A091342.P14436717139325236629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((n : ℚ) * ((Nat.lcm (n + 1) (a (n - 1)) : ℚ) / (n + 1 : ℚ)))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091342.P14436717139325236629

/-! ## A091342.P6535575907110602401

`A002944(2*(1+n))`
-/

namespace A091342.P6535575907110602401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (2 * (1 + n))

end

end A091342.P6535575907110602401

/-! ## A091342.P11280499086890376499

`A082690(n+1)/2`
-/

namespace A091342.P11280499086890376499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082690 (n + 1) : ℚ) / 2

end

end A091342.P11280499086890376499

/-! ## A091342.P10774314768240939113

`lcm(2, A025535(n))/2`
-/

namespace A091342.P10774314768240939113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A025535 n) : ℚ) / 2

end

end A091342.P10774314768240939113

/-! ## A091342.P17176727749017751450

`A119634(n)/(n+1)`
-/

namespace A091342.P17176727749017751450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119634 n : ℚ) / (n + 1 : ℚ)

end

end A091342.P17176727749017751450

/-!
# A091344: a(n) = 2*3^n - 3*2^n + 1.

The programs for A091344, the canonical program `A091344.P9314832849917747821` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091344 has offset 0).

The definition of A091344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-3*2^n+1` (program `A091344.P9314832849917747821`, by `A091344.P9314832849917747821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091344.P9314832849917747821

`2*3^n-3*2^n+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091344

/-- `2*3^n-3*2^n+1` -/
def P9314832849917747821.Spec : Prop :=
  ∀ n, P9314832849917747821.a n = A091344 n

theorem P9314832849917747821.correct : P9314832849917747821.Spec := by
  intro n
  simp only [A091344]

end A091344

/-! ## A091344.P2441796899733752559

`5*a(n-1)-6*a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A091344.P2441796899733752559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2) + 2

end

end A091344.P2441796899733752559

namespace A091344

/-- `5*a(n-1)-6*a(n-2)+2` -/
def P2441796899733752559.Spec : Prop :=
  ∀ n, P2441796899733752559.a n = A091344 n

theorem P2441796899733752559.correct : P2441796899733752559.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A091344, Nat.add_sub_cancel, A091344.P2441796899733752559.a, A091344.P9314832849917747821.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A091344, Nat.add_sub_cancel, A091344.P2441796899733752559.a, A091344.P9314832849917747821.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A091344

/-! ## A091344.P7000033698057447955

`∑[ogf((x+x^2)/(1-5x+6x^2))]`
-/

namespace A091344.P7000033698057447955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P7000033698057447955

namespace A091344

/-- `∑[ogf((x+x^2)/(1-5x+6x^2))]` -/
def P7000033698057447955.Spec : Prop :=
  ∀ n, P7000033698057447955.a n = A091344 n

end A091344

/-! ## A091344.P3592018711315973306

`xor(1, Δ[3^n-abs(4-3*2^n)])`
-/

namespace A091344.P3592018711315973306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - |4 - (3 * 2 ^ n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A091344.P3592018711315973306

namespace A091344

/-- `xor(1, Δ[3^n-abs(4-3*2^n)])` -/
def P3592018711315973306.Spec : Prop :=
  ∀ n, P3592018711315973306.a n = A091344 n

end A091344

/-! ## A091344.P16854694438600250225

`or(2, 5*a(n-1)-6*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A091344.P16854694438600250225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor 2 (5 * a (n - 1) - 6 * a (n - 2))

end

end A091344.P16854694438600250225

namespace A091344

/-- `or(2, 5*a(n-1)-6*a(n-2))` -/
def P16854694438600250225.Spec : Prop :=
  ∀ n, P16854694438600250225.a n = A091344 n

end A091344

/-! ## A091344.P16035015403062356370

`(4*3^n+1)%Δ[3^n+3*2^n]`
-/

namespace A091344.P16035015403062356370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 3 * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * 3 ^ n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091344.P16035015403062356370

namespace A091344

/-- `(4*3^n+1)%Δ[3^n+3*2^n]` -/
def P16035015403062356370.Spec : Prop :=
  ∀ n, P16035015403062356370.a n = A091344 n

end A091344

/-! ## A091344.P6762923520460134386

`∑[floor(4*3^(n-1))-or(2^n, floor(2^(n-1)))]`
-/

namespace A091344.P6762923520460134386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - Int.lor (2 ^ n : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P6762923520460134386

namespace A091344

/-- `∑[floor(4*3^(n-1))-or(2^n, floor(2^(n-1)))]` -/
def P6762923520460134386.Spec : Prop :=
  ∀ n, P6762923520460134386.a n = A091344 n

end A091344

/-! ## A091344.P6694550526640871514

`Δ[A001117(n)+n]`
-/

namespace A091344.P6694550526640871514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091344.P6694550526640871514

namespace A091344

/-- `Δ[A001117(n)+n]` -/
def P6694550526640871514.Spec : Prop :=
  ∀ n, P6694550526640871514.a n = A091344 n

theorem P6694550526640871514.correct : P6694550526640871514.Spec := by
  intro n
  simp only [A091344, Nat.add_sub_cancel, A091344.P6694550526640871514.f1, A091344.P6694550526640871514.a, A091344.P9314832849917747821.a, A001117, A001117.P5586515972310678558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091344

/-! ## A091344.P13537852719862470217

`∑[A169651(n+1)-1]`
-/

namespace A091344.P13537852719862470217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169651 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P13537852719862470217

namespace A091344

/-- `∑[A169651(n+1)-1]` -/
def P13537852719862470217.Spec : Prop :=
  ∀ n, P13537852719862470217.a n = A091344 n

end A091344

/-! ## A091344.P18379975909927855814

`Δ[A001047(n)-(2^(n+1)-n)]`
-/

namespace A091344.P18379975909927855814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n - ((2 ^ (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091344.P18379975909927855814

namespace A091344

/-- `Δ[A001047(n)-(2^(n+1)-n)]` -/
def P18379975909927855814.Spec : Prop :=
  ∀ n, P18379975909927855814.a n = A091344 n

theorem P18379975909927855814.correct : P18379975909927855814.Spec := by
  intro n
  simp only [A091344, Nat.add_sub_cancel, A091344.P18379975909927855814.f1, A091344.P18379975909927855814.a, A091344.P9314832849917747821.a, A001047, A001047.P13659031121335709313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091344

/-! ## A091344.P1463524492271039532

`abs(A000079(n)-A002783(n))`
-/

namespace A091344.P1463524492271039532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A002783 n|

end

end A091344.P1463524492271039532

namespace A091344

/-- `abs(A000079(n)-A002783(n))` -/
def P1463524492271039532.Spec : Prop :=
  ∀ n, P1463524492271039532.a n = A091344 n

end A091344

/-! ## A091344.P313217786044242212

`∑[A003946(n)-A003945(n)]`
-/

namespace A091344.P313217786044242212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P313217786044242212

namespace A091344

/-- `∑[A003946(n)-A003945(n)]` -/
def P313217786044242212.Spec : Prop :=
  ∀ n, P313217786044242212.a n = A091344 n

end A091344

/-! ## A091344.P15572489545449731596

`∑[A053581(n)-A000079(n)]`
-/

namespace A091344.P15572489545449731596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P15572489545449731596

namespace A091344

/-- `∑[A053581(n)-A000079(n)]` -/
def P15572489545449731596.Spec : Prop :=
  ∀ n, P15572489545449731596.a n = A091344 n

end A091344

/-! ## A091344.P16188623784526436273

`Δ[A034472(n)-A079583(n)]`
-/

namespace A091344.P16188623784526436273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n - A079583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091344.P16188623784526436273

namespace A091344

/-- `Δ[A034472(n)-A079583(n)]` -/
def P16188623784526436273.Spec : Prop :=
  ∀ n, P16188623784526436273.a n = A091344 n

theorem P16188623784526436273.correct : P16188623784526436273.Spec := by
  intro n
  simp only [A091344, Nat.add_sub_cancel, A091344.P16188623784526436273.f1, A091344.P16188623784526436273.a, A091344.P9314832849917747821.a, A034472, A034472.P6935477064191477456.a, A079583, A079583.P17690850374586656008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091344

/-! ## A091344.P3768469950618427409

`(A166060(n)-A033484(n))/2`
-/

namespace A091344.P3768469950618427409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166060 n - A033484 n : ℚ) / 2

end

end A091344.P3768469950618427409

namespace A091344

/-- `(A166060(n)-A033484(n))/2` -/
def P3768469950618427409.Spec : Prop :=
  ∀ n, P3768469950618427409.a n = (A091344 n : ℚ)

theorem P3768469950618427409.correct : P3768469950618427409.Spec := by
  intro n
  simp only [A091344, Nat.add_sub_cancel, A091344.P3768469950618427409.a, A091344.P9314832849917747821.a, A033484, A033484.P10856640375789116383.a, A166060, A166060.P1727466123413902011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091344

/-! ## A091344.P3278338674973958822

`∑[A000392(n+2)-A000392(n)]`
-/

namespace A091344.P3278338674973958822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 2) - A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P3278338674973958822

namespace A091344

/-- `∑[A000392(n+2)-A000392(n)]` -/
def P3278338674973958822.Spec : Prop :=
  ∀ n, P3278338674973958822.a n = A091344 n

end A091344

/-! ## A091344.P10066859910597817502

`A056489(2*(n+1))/3`
-/

namespace A091344.P10066859910597817502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056489 (2 * (n + 1)) : ℚ) / 3

end

end A091344.P10066859910597817502

namespace A091344

/-- `A056489(2*(n+1))/3` -/
def P10066859910597817502.Spec : Prop :=
  ∀ n, P10066859910597817502.a n = (A091344 n : ℚ)

end A091344

/-!
# A091345: Exponential convolution of A069321(n) with itself, where we set A069321(0)=0.

The programs for A091345, there is no canonical definition to state claims against.
-/

/-! ## A091345.P13942458058938913347

`A226738(n)-A083410(n+1)`
-/

namespace A091345.P13942458058938913347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226738 n - A083410 (n + 1)

end

end A091345.P13942458058938913347

/-! ## A091345.P6134425777796855156

`A226738(n)-A005649(n+1)/2`
-/

namespace A091345.P6134425777796855156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226738 n : ℚ) - (A005649 (n + 1) : ℚ) / 2

end

end A091345.P6134425777796855156

/-! ## A091345.P2650654292458017418

`A226738(n)-A327868(2*(n+1))/2`
-/

namespace A091345.P2650654292458017418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226738 n : ℚ) - (A327868 (2 * (n + 1)) : ℚ) / 2

end

end A091345.P2650654292458017418

/-! ## A091345.P12052724594962505953

`A226513(∑[n+4]+2)-A083410(n+1)`
-/

namespace A091345.P12052724594962505953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A083410 (n + 1)

end

end A091345.P12052724594962505953

/-! ## A091345.P1571084547007722886

`A226738(n)-(A091346(n+1)+A091346(n))`
-/

namespace A091345.P1571084547007722886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226738 n - (A091346 (n + 1) + A091346 n)

end

end A091345.P1571084547007722886

/-!
# A091346: Binomial convolution of A069321(n), where A069321(0)=0, with the sequence of all 1's alternating in sign.

The programs for A091346, the canonical program `A091346.P824417771314519066` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091346 has offset 0).

The definition of A091346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091346.P824417771314519066

`(A000670(n+1)+(-1)^(n+1))/4`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091346

/-- `(A000670(n+1)+(-1)^(n+1))/4` -/
def P824417771314519066.Spec : Prop :=
  ∀ n, P824417771314519066.a n = (A091346 n : ℚ)

end A091346

/-! ## A091346.P7003154838070722755

`A052841(1+n)/2`
-/

namespace A091346.P7003154838070722755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052841 (1 + n) : ℚ) / 2

end

end A091346.P7003154838070722755

namespace A091346

/-- `A052841(1+n)/2` -/
def P7003154838070722755.Spec : Prop :=
  ∀ n, P7003154838070722755.a n = (A091346 n : ℚ)

end A091346

/-! ## A091346.P12101278007237471337

`floor(∑[A069321(n)/2])`
-/

namespace A091346.P12101278007237471337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069321 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A091346.P12101278007237471337

namespace A091346

/-- `floor(∑[A069321(n)/2])` -/
def P12101278007237471337.Spec : Prop :=
  ∀ n, P12101278007237471337.a n = A091346 n

end A091346

/-! ## A091346.P11906905145870052049

`Δ[floor(A217389(n)/4)]`
-/

namespace A091346.P11906905145870052049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217389 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091346.P11906905145870052049

namespace A091346

/-- `Δ[floor(A217389(n)/4)]` -/
def P11906905145870052049.Spec : Prop :=
  ∀ n, P11906905145870052049.a n = A091346 n

end A091346

/-! ## A091346.P5216663892611185969

`floor(record[A052841(n)/2])`
-/

namespace A091346.P5216663892611185969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052841 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A091346.P5216663892611185969

namespace A091346

/-- `floor(record[A052841(n)/2])` -/
def P5216663892611185969.Spec : Prop :=
  ∀ n, P5216663892611185969.a n = A091346 n

end A091346

/-! ## A091346.P17121973616170473293

`record[round(A154921(n)/4)]`
-/

namespace A091346.P17121973616170473293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154921 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091346.P17121973616170473293

namespace A091346

/-- `record[round(A154921(n)/4)]` -/
def P17121973616170473293.Spec : Prop :=
  ∀ n, P17121973616170473293.a n = A091346 n

end A091346

/-! ## A091346.P4951973885507417906

`floor(A052856(n+1)/4)`
-/

namespace A091346.P4951973885507417906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052856 (n + 1) : ℚ) / 4⌋

end

end A091346.P4951973885507417906

namespace A091346

/-- `floor(A052856(n+1)/4)` -/
def P4951973885507417906.Spec : Prop :=
  ∀ n, P4951973885507417906.a n = A091346 n

end A091346

/-! ## A091346.P11324010984214107013

`ceil(A052875(n+1)/4)`
-/

namespace A091346.P11324010984214107013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052875 (n + 1) : ℚ) / 4⌉

end

end A091346.P11324010984214107013

namespace A091346

/-- `ceil(A052875(n+1)/4)` -/
def P11324010984214107013.Spec : Prop :=
  ∀ n, P11324010984214107013.a n = A091346 n

end A091346

/-! ## A091346.P8116964213169541973

`round(A000670(n+1)/4)`
-/

namespace A091346.P8116964213169541973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000670 (n + 1) : ℚ) / 4)

end

end A091346.P8116964213169541973

namespace A091346

/-- `round(A000670(n+1)/4)` -/
def P8116964213169541973.Spec : Prop :=
  ∀ n, P8116964213169541973.a n = A091346 n

end A091346

/-! ## A091346.P3206370726437679568

`round(A000629(n+1)/8)`
-/

namespace A091346.P3206370726437679568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000629 (n + 1) : ℚ) / 8)

end

end A091346.P3206370726437679568

namespace A091346

/-- `round(A000629(n+1)/8)` -/
def P3206370726437679568.Spec : Prop :=
  ∀ n, P3206370726437679568.a n = A091346 n

end A091346

/-!
# A091347: a(n) = 6*4^n - 12*3^n + 7*2^n - 1.

The programs for A091347, the canonical program `A091347.P9446160002068488150` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091347 has offset 0).

The definition of A091347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*4^n-12*3^n+7*2^n-1` (program `A091347.P9446160002068488150`, by `A091347.P9446160002068488150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091347.P12113585382773657577

`ogf((x+5x^2)/(1-10x+35x^2-50x^3+24x^4))`
-/

namespace A091347.P12113585382773657577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5] [1, -10, 35, -50, 24] n

end

end A091347.P12113585382773657577

namespace A091347

/-- `ogf((x+5x^2)/(1-10x+35x^2-50x^3+24x^4))` -/
def P12113585382773657577.Spec : Prop :=
  ∀ n, P12113585382773657577.a n = A091347 n

end A091347

/-! ## A091347.P9446160002068488150

`6*4^n-12*3^n+7*2^n-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091347

/-- `6*4^n-12*3^n+7*2^n-1` -/
def P9446160002068488150.Spec : Prop :=
  ∀ n, P9446160002068488150.a n = A091347 n

theorem P9446160002068488150.correct : P9446160002068488150.Spec := by
  intro n
  simp only [A091347]

end A091347

/-! ## A091347.P6952285454958853500

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=1, a(2)=15, a(3)=115`
-/

namespace A091347.P6952285454958853500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 15, 115] fun n a =>
  10 * a (n - 1) - 35 * a (n - 2) + 50 * a (n - 3) - 24 * a (n - 4)

end

end A091347.P6952285454958853500

namespace A091347

/-- `10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` -/
def P6952285454958853500.Spec : Prop :=
  ∀ n, P6952285454958853500.a n = A091347 n

theorem P6952285454958853500.correct : P6952285454958853500.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A091347, Nat.add_sub_cancel, A091347.P6952285454958853500.a, A091347.P9446160002068488150.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A091347, Nat.add_sub_cancel, A091347.P6952285454958853500.a, A091347.P9446160002068488150.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A091347

/-! ## A091347.P12106050534621977407

`∑[abs(Δ[A162723(n)])]`
-/

namespace A091347.P12106050534621977407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162723 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091347.P12106050534621977407

namespace A091347

/-- `∑[abs(Δ[A162723(n)])]` -/
def P12106050534621977407.Spec : Prop :=
  ∀ n, P12106050534621977407.a n = A091347 n

end A091347

/-! ## A091347.P2729756021461148369

`abs(1-A162723(n+1))`
-/

namespace A091347.P2729756021461148369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A162723 (n + 1)|

end

end A091347.P2729756021461148369

namespace A091347

/-- `abs(1-A162723(n+1))` -/
def P2729756021461148369.Spec : Prop :=
  ∀ n, P2729756021461148369.a n = A091347 n

end A091347

/-! ## A091347.P8715550636726803556

`record[Δ[A162723(∑[n+1]%(n+2))]]`
-/

namespace A091347.P8715550636726803556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162723 ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091347.P8715550636726803556

namespace A091347

/-- `record[Δ[A162723(∑[n+1]%(n+2))]]` -/
def P8715550636726803556.Spec : Prop :=
  ∀ n, P8715550636726803556.a n = A091347 n

end A091347

/-! ## A091347.P17124621652857175279

`∑[A162723(n+1)-A162723(n)]`
-/

namespace A091347.P17124621652857175279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162723 (n + 1) - A162723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091347.P17124621652857175279

namespace A091347

/-- `∑[A162723(n+1)-A162723(n)]` -/
def P17124621652857175279.Spec : Prop :=
  ∀ n, P17124621652857175279.a n = A091347 n

end A091347

/-!
# A091348: a(n) = 24*5^n - 60*4^n + 50*3^n - 15*2^n + 1.

The programs for A091348, the canonical program `A091348.P15282774004803408470` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091348 has offset 0).

The definition of A091348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*5^n-60*4^n+50*3^n-15*2^n+1` (program `A091348.P15282774004803408470`, by `A091348.P15282774004803408470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091348.P15282774004803408470

`24*5^n-60*4^n+50*3^n-15*2^n+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091348

/-- `24*5^n-60*4^n+50*3^n-15*2^n+1` -/
def P15282774004803408470.Spec : Prop :=
  ∀ n, P15282774004803408470.a n = A091348 n

theorem P15282774004803408470.correct : P15282774004803408470.Spec := by
  intro n
  simp only [A091348]

end A091348

/-! ## A091348.P18234295567768701805

`A057427(n)*A136126(A046691(n+2))`
-/

namespace A091348.P18234295567768701805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A136126 (A046691 (n + 2)).toNat

end

end A091348.P18234295567768701805

namespace A091348

/-- `A057427(n)*A136126(A046691(n+2))` -/
def P18234295567768701805.Spec : Prop :=
  ∀ n, P18234295567768701805.a n = A091348 n

end A091348

/-! ## A091348.P17337100629883770651

`A136126(A046691(n+2))*A178334(n)`
-/

namespace A091348.P17337100629883770651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A046691 (n + 2)).toNat * A178334 n

end

end A091348.P17337100629883770651

namespace A091348

/-- `A136126(A046691(n+2))*A178334(n)` -/
def P17337100629883770651.Spec : Prop :=
  ∀ n, P17337100629883770651.a n = A091348 n

end A091348

/-! ## A091348.P711752939455046802

`char[A014430(n)]*A136126(A046691(n+2))`
-/

namespace A091348.P711752939455046802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A136126 (A046691 (n + 2)).toNat

end

end A091348.P711752939455046802

namespace A091348

/-- `char[A014430(n)]*A136126(A046691(n+2))` -/
def P711752939455046802.Spec : Prop :=
  ∀ n, P711752939455046802.a n = A091348 n

end A091348

/-!
# A091351: Triangle T, read by rows, such that T(n,k) equals the (n-k)-th row sum of T^k, where T^k is the k-th power of T as a lower triangular matrix.

The programs for A091351, there is no canonical definition to state claims against.
-/

/-! ## A091351.P17627529743273858156

`A098446(A061579(n%A173046(n)))`
-/

namespace A091351.P17627529743273858156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 (A061579 (Int.tmod (n : ℤ) (A173046 n)).toNat).toNat

end

end A091351.P17627529743273858156

/-! ## A091351.P15783950233318960371

`A098446(∑[2*n]%comp[∑[n]])`
-/

namespace A091351.P15783950233318960371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A091351.P15783950233318960371

/-! ## A091351.P8075069575251458205

`A104445(C(row(n)+2, 2)+col(n))`
-/

namespace A091351.P8075069575251458205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104445 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + SequenceMachineLib.triCol n)

end

end A091351.P8075069575251458205

/-! ## A091351.P2968437830321140059

`A167662(A091150(n))`
-/

namespace A091351.P2968437830321140059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (A091150 n).toNat

end

end A091351.P2968437830321140059

/-! ## A091351.P13202750591633305568

`A091150(n)`
-/

namespace A091351.P13202750591633305568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091150 n

end

end A091351.P13202750591633305568

/-!
# A091352: Row sums of triangle A091351, in which the k-th column lists the row sums of the k-th power of A091351 (when considered as a lower triangular matrix).

The programs for A091352, there is no canonical definition to state claims against.
-/

/-! ## A091352.P4097726130403026372

`record[ratio[A091351(n)]]`
-/

namespace A091352.P4097726130403026372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091352.P4097726130403026372

/-! ## A091352.P7133243270264522652

`A091351(1+∑[1+n])`
-/

namespace A091352.P7133243270264522652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091352.P7133243270264522652

/-! ## A091352.P9491230892573606157

`record[A091351(A254052(1+n))]`
-/

namespace A091352.P9491230892573606157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (A254052 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091352.P9491230892573606157

/-! ## A091352.P292402604086767324

`record[A127420(n)]`
-/

namespace A091352.P292402604086767324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091352.P292402604086767324

/-! ## A091352.P17917044032435089671

`A127420(∑[A127419(n)])`
-/

namespace A091352.P17917044032435089671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127419 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127420 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091352.P17917044032435089671

/-!
# A091353: Row sums of the matrix square of triangle A091351, in which the k-th column lists the row sums of A091351^k (the k-th power of A091351 when considered as a lower triangular matrix).

The programs for A091353, there is no canonical definition to state claims against.
-/

/-! ## A091353.P13355395223935739516

`A091351(3+∑[n+2])`
-/

namespace A091353.P13355395223935739516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (3 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091353.P13355395223935739516

/-! ## A091353.P1975562745820206592

`record[A091351(A254052(2*n+n+2))]`
-/

namespace A091353.P1975562745820206592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (A254052 (2 * n + (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091353.P1975562745820206592

/-! ## A091353.P707071054010149661

`A104447(n+1)-A091352(n)`
-/

namespace A091353.P707071054010149661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104447 (n + 1) - A091352 n

end

end A091353.P707071054010149661

/-! ## A091353.P11049429858349738751

`A098446(∑[n+3])`
-/

namespace A091353.P11049429858349738751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091353.P11049429858349738751

/-! ## A091353.P1224328992943946668

`A104445(A340266(n+2))`
-/

namespace A091353.P1224328992943946668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104445 (A340266 (n + 2)).toNat

end

end A091353.P1224328992943946668

/-!
# A091354: Row sums of the matrix cube of triangle A091351, in which the k-th column lists the row sums of A091351^k (the k-th power of A091351 when considered as a lower triangular matrix).

The programs for A091354, there is no canonical definition to state claims against.
-/

/-! ## A091354.P8416538999130831012

`A091351(6+∑[n+3])`
-/

namespace A091354.P8416538999130831012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (6 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091354.P8416538999130831012

/-! ## A091354.P5022289089299302012

`A098446(∑[n+4]+2)`
-/

namespace A091354.P5022289089299302012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A091354.P5022289089299302012

/-!
# A091355: Triangle read by rows: T(n,k) = number of planar partitions of n with k rows.

The programs for A091355, there is no canonical definition to state claims against.
-/

/-! ## A091355.P17128699630768950212

`A343265(A185945(n))`
-/

namespace A091355.P17128699630768950212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343265 (A185945 n).toNat

end

end A091355.P17128699630768950212

/-! ## A091355.P17098743805780763717

`A100144(A336769(n+1))/2`
-/

namespace A091355.P17098743805780763717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100144 (A336769 (n + 1)).toNat : ℚ) / 2

end

end A091355.P17098743805780763717

/-! ## A091355.P5716242051151478507

`A124762(A244136(n))+A038497(n+1)`
-/

namespace A091355.P5716242051151478507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A244136 n).toNat + A038497 (n + 1)

end

end A091355.P5716242051151478507

/-! ## A091355.P13071500572474713818

`A307598(A281446(n))+A038497(n+1)`
-/

namespace A091355.P13071500572474713818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A281446 n).toNat + A038497 (n + 1)

end

end A091355.P13071500572474713818

/-! ## A091355.P9912707123721094175

`or(A024316(A026547(n)), A038497(n+1))`
-/

namespace A091355.P9912707123721094175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024316 (A026547 n).toNat) (A038497 (n + 1))

end

end A091355.P9912707123721094175

/-!
# A091356: Number of planar partitions of n with exactly 2 rows.

The programs for A091356, there is no canonical definition to state claims against.
-/

/-! ## A091356.P13329698449895389261

`A000990(n+2)-A000041(n+2)`
-/

namespace A091356.P13329698449895389261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 (n + 2) - A000041 (n + 2)

end

end A091356.P13329698449895389261

/-! ## A091356.P14271956367595708114

`A000990(n+2)-Δ[A000070(n+1)]`
-/

namespace A091356.P14271956367595708114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 (n + 2) - (f1 (n + 1) - f1 n)

end

end A091356.P14271956367595708114

/-! ## A091356.P8599509483814609534

`A122768(n+2)-A000712(n+1)`
-/

namespace A091356.P8599509483814609534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (n + 2) - A000712 (n + 1)

end

end A091356.P8599509483814609534

/-! ## A091356.P8399494505832028439

`Δ[A000712(n+1)-A000070(n+1)]`
-/

namespace A091356.P8399494505832028439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 1) - A000070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091356.P8399494505832028439

/-! ## A091356.P4698889726656529700

`Δ[A000712(n+1)]-A000041(n+2)`
-/

namespace A091356.P4698889726656529700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000041 (n + 2)

end

end A091356.P4698889726656529700

/-! ## A091356.P14499807667966072201

`A091355(∑[n+1]+2)`
-/

namespace A091356.P14499807667966072201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A091356.P14499807667966072201

/-!
# A091357: Number of planar partitions of n with exactly 3 rows.

The programs for A091357, there is no canonical definition to state claims against.
-/

/-! ## A091357.P5291097171364224431

`A000991(n+3)-A000990(n+3)`
-/

namespace A091357.P5291097171364224431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000991 (n + 3) - A000990 (n + 3)

end

end A091357.P5291097171364224431

/-! ## A091357.P13413188148256731141

`A091355(∑[n+2]+4)`
-/

namespace A091357.P13413188148256731141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A091357.P13413188148256731141

/-! ## A091357.P17305300735316420913

`A000267(A320907(n))`
-/

namespace A091357.P17305300735316420913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A320907 n).toNat

end

end A091357.P17305300735316420913

/-!
# A091358: Number of planar partitions of n with exactly 4 rows.

The programs for A091358, there is no canonical definition to state claims against.
-/

/-! ## A091358.P2816866545932755242

`A002799(n+4)-A000991(n+4)`
-/

namespace A091358.P2816866545932755242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002799 (n + 4) - A000991 (n + 4)

end

end A091358.P2816866545932755242

/-! ## A091358.P9547775736296993709

`A091355(∑[n+3]+7)`
-/

namespace A091358.P9547775736296993709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A091358.P9547775736296993709

/-!
# A091359: Number of planar partitions of n with exactly 5 rows.

The programs for A091359, there is no canonical definition to state claims against.
-/

/-! ## A091359.P3681891710101413922

`A001452(n+5)-A002799(n+5)`
-/

namespace A091359.P3681891710101413922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001452 (n + 5) - A002799 (n + 5)

end

end A091359.P3681891710101413922

/-! ## A091359.P12689429885322047601

`A091355(A167499(n+3))`
-/

namespace A091359.P12689429885322047601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (A167499 (n + 3)).toNat

end

end A091359.P12689429885322047601

/-!
# A091360: Partial sums of A000219.

The programs for A091360, there is no canonical definition to state claims against.
-/

/-! ## A091360.P3187585757415048837

`∑[A000219(n)]`
-/

namespace A091360.P3187585757415048837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P3187585757415048837

/-! ## A091360.P18167494914469656565

`A309267(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A091360.P18167494914469656565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A309267 n + a (n - 2)

end

end A091360.P18167494914469656565

/-! ## A091360.P15519178098066022208

`∑[A191659(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A091360.P15519178098066022208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A191659 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P15519178098066022208

/-! ## A091360.P5995102476933425709

`∑[∑[A191659(n)]+1-A191659(n)]`
-/

namespace A091360.P5995102476933425709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1 - A191659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P5995102476933425709

/-! ## A091360.P2033297686750456403

`A000219(A110654(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A091360.P2033297686750456403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000219 (A110654 (2 * n)).toNat + a (n - 1)

end

end A091360.P2033297686750456403

/-! ## A091360.P13413154822011502257

`Δ[A360489(n)]`
-/

namespace A091360.P13413154822011502257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091360.P13413154822011502257

/-! ## A091360.P8265778110410522958

`A360489(n+1)-A360489(n)`
-/

namespace A091360.P8265778110410522958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360489 (n + 1) - A360489 n

end

end A091360.P8265778110410522958

/-! ## A091360.P17695113489638374302

`∑{#}[n, A000219(n-#)]`
-/

namespace A091360.P17695113489638374302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000219 (n - k)

end

end A091360.P17695113489638374302

/-! ## A091360.P16295355667050129282

`∑[sqrt(A383354(n))]`
-/

namespace A091360.P16295355667050129282
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A383354 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P16295355667050129282

/-! ## A091360.P8823338692312715409

`∑[A000712(n)+A116600(n)-A011782(n)]`
-/

namespace A091360.P8823338692312715409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n + (A116600 n - A011782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P8823338692312715409

/-! ## A091360.P788804139333933545

`∑[A242642(A179865(n+1))]`
-/

namespace A091360.P788804139333933545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P788804139333933545

/-! ## A091360.P15213143214553156359

`∑[A242642(A000007(n)+∑[n])]`
-/

namespace A091360.P15213143214553156359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P15213143214553156359

/-! ## A091360.P8455638566935487145

`∑[A257673(A133263(n)-1)]`
-/

namespace A091360.P8455638566935487145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A133263 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P8455638566935487145

/-! ## A091360.P7036065939475985697

`∑[A255961(∑[n+2]-1)]`
-/

namespace A091360.P7036065939475985697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P7036065939475985697

/-! ## A091360.P12631441434773221831

`∑[A293551(∑[n+3])]`
-/

namespace A091360.P12631441434773221831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P12631441434773221831

/-! ## A091360.P5917842792780769329

`∑[A242641(A058331(n))]`
-/

namespace A091360.P5917842792780769329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A058331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P5917842792780769329

/-! ## A091360.P10279479471560150306

`∑[A242641(2*(n+1)²)]`
-/

namespace A091360.P10279479471560150306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P10279479471560150306

/-!
# A091361: Numbers n such that A001840(n) == 0 (mod n).

The programs for A091361, the canonical program `A091361.P4619264413993641148` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091361 has offset 1).

The definition of A091361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091361.P4619264413993641148

`6+a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091361

/-- `6+a(n-1)` -/
def P4619264413993641148.Spec : Prop :=
  ∀ n, (P4619264413993641148.a n : ℤ) = A091361 (n + 1)

theorem P4619264413993641148.correct : P4619264413993641148.Spec := by
  intro n
  simp only [A091361, Nat.add_sub_cancel]

end A091361

/-!
# A091362: Primes p such that the sum of the digits of p is not prime, but the sum of the squares of the digits of p is prime.

The programs for A091362, the canonical program `A091362.P6318580456760933466` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091362 has offset 1).

The definition of A091362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091362.P6318580456760933466

`∩[A052034(n+1), A247122(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A091362

/-- `∩[A052034(n+1), A247122(n+1)]` -/
def P6318580456760933466.Spec : Prop :=
  ∀ n, (P6318580456760933466.a n : ℤ) = A091362 (n + 1)

theorem P6318580456760933466.correct : P6318580456760933466.Spec := by
  intro n
  simp only [A091362, Nat.add_sub_cancel]

end A091362

/-! ## A091362.P17967395642650190087

`∩[A000040(A177149(n+1)), A247122(n+1)]`
-/

namespace A091362.P17967395642650190087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A177149 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091362.P17967395642650190087

namespace A091362

/-- `∩[A000040(A177149(n+1)), A247122(n+1)]` -/
def P17967395642650190087.Spec : Prop :=
  ∀ n, (P17967395642650190087.a n : ℤ) = A091362 (n + 1)

end A091362

/-! ## A091362.P8178716242356404255

`p?[A121614(n+1)]`
-/

namespace A091362.P8178716242356404255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091362.P8178716242356404255

namespace A091362

/-- `p?[A121614(n+1)]` -/
def P8178716242356404255.Spec : Prop :=
  ∀ n, P8178716242356404255.a n = A091362 (n + 1)

end A091362

/-! ## A091362.P2732743962994793183

`filter[A121614(n+1), A010051(#)]`
-/

namespace A091362.P2732743962994793183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A091362.P2732743962994793183

namespace A091362

/-- `filter[A121614(n+1), A010051(#)]` -/
def P2732743962994793183.Spec : Prop :=
  ∀ n, P2732743962994793183.a n = A091362 (n + 1)

end A091362

/-! ## A091362.P278606616338603919

`filter[A121614(n+1), A302777(#)]`
-/

namespace A091362.P278606616338603919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A091362.P278606616338603919

namespace A091362

/-- `filter[A121614(n+1), A302777(#)]` -/
def P278606616338603919.Spec : Prop :=
  ∀ n, P278606616338603919.a n = A091362 (n + 1)

end A091362

/-!
# A091363: a(n) = n!*n^3.

The programs for A091363, the canonical program `A091363.P12255685773322272690` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091363 has offset 0).

The definition of A091363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*n^3` (program `A091363.P12255685773322272690`, by `A091363.P12255685773322272690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091363.P12255685773322272690

`n!*n^3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091363

/-- `n!*n^3` -/
def P12255685773322272690.Spec : Prop :=
  ∀ n, (P12255685773322272690.a n : ℤ) = A091363 n

theorem P12255685773322272690.correct : P12255685773322272690.Spec := by
  intro n
  simp only [A091363]

end A091363

/-! ## A091363.P12542945329542600398

`n²*Δ[n!]`
-/

namespace A091363.P12542945329542600398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091363.P12542945329542600398

namespace A091363

/-- `n²*Δ[n!]` -/
def P12542945329542600398.Spec : Prop :=
  ∀ n, P12542945329542600398.a n = A091363 n

theorem P12542945329542600398.correct : P12542945329542600398.Spec := by
  intro n
  simp only [A091363, Nat.add_sub_cancel, A091363.P12542945329542600398.f1, A091363.P12542945329542600398.a, A091363.P12255685773322272690.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A091363

/-! ## A091363.P6478712847796868574

`n*n²*n!`
-/

namespace A091363.P6478712847796868574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 * Nat.factorial n)

end

end A091363.P6478712847796868574

namespace A091363

/-- `n*n²*n!` -/
def P6478712847796868574.Spec : Prop :=
  ∀ n, (P6478712847796868574.a n : ℤ) = A091363 n

theorem P6478712847796868574.correct : P6478712847796868574.Spec := by
  intro n
  simp only [A091363, Nat.add_sub_cancel, A091363.P6478712847796868574.a, A091363.P12255685773322272690.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091363

/-! ## A091363.P4223939857134944183

`n*n*Δ[n!]`
-/

namespace A091363.P4223939857134944183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A091363.P4223939857134944183

namespace A091363

/-- `n*n*Δ[n!]` -/
def P4223939857134944183.Spec : Prop :=
  ∀ n, P4223939857134944183.a n = A091363 n

theorem P4223939857134944183.correct : P4223939857134944183.Spec := by
  intro n
  simp only [A091363, Nat.add_sub_cancel, A091363.P4223939857134944183.f1, A091363.P4223939857134944183.a, A091363.P12255685773322272690.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A091363

/-! ## A091363.P15269736863233826706

`n*n*n*n!`
-/

namespace A091363.P15269736863233826706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * (n * Nat.factorial n))

end

end A091363.P15269736863233826706

namespace A091363

/-- `n*n*n*n!` -/
def P15269736863233826706.Spec : Prop :=
  ∀ n, (P15269736863233826706.a n : ℤ) = A091363 n

theorem P15269736863233826706.correct : P15269736863233826706.Spec := by
  intro n
  simp only [A091363, Nat.add_sub_cancel, A091363.P15269736863233826706.a, A091363.P12255685773322272690.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091363

/-! ## A091363.P8706123288256689851

`n²*Δ[n*a(n-1)]` with `a(0)=1`
-/

namespace A091363.P8706123288256689851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091363.P8706123288256689851

namespace A091363

/-- `n²*Δ[n*a(n-1)]` -/
def P8706123288256689851.Spec : Prop :=
  ∀ n, P8706123288256689851.a n = A091363 n

end A091363

/-! ## A091363.P2038187776556704107

`∏[n+1]/(n+1)*n^3`
-/

namespace A091363.P2038187776556704107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) * (n ^ 3 : ℚ)

end

end A091363.P2038187776556704107

namespace A091363

/-- `∏[n+1]/(n+1)*n^3` -/
def P2038187776556704107.Spec : Prop :=
  ∀ n, P2038187776556704107.a n = (A091363 n : ℚ)

end A091363

/-! ## A091363.P15532885392688259349

`A002776(n)-A001563(n+1)`
-/

namespace A091363.P15532885392688259349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002776 n - A001563 (n + 1)

end

end A091363.P15532885392688259349

namespace A091363

/-- `A002776(n)-A001563(n+1)` -/
def P15532885392688259349.Spec : Prop :=
  ∀ n, P15532885392688259349.a n = A091363 n

end A091363

/-! ## A091363.P10541593589842660575

`A000578(n)*A038507(n)-A000578(n)`
-/

namespace A091363.P10541593589842660575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A038507 n - A000578 n

end

end A091363.P10541593589842660575

namespace A091363

/-- `A000578(n)*A038507(n)-A000578(n)` -/
def P10541593589842660575.Spec : Prop :=
  ∀ n, P10541593589842660575.a n = A091363 n

theorem P10541593589842660575.correct : P10541593589842660575.Spec := by
  intro n
  simp only [A091363, Nat.add_sub_cancel, A091363.P10541593589842660575.a, A091363.P12255685773322272690.a, A000578, A000578.P12162961755414704816.a, A038507, A038507.P6297172410669872132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091363

/-!
# A091364: a(n) = n! * n^4.

The programs for A091364, the canonical program `A091364.P9476798777241005949` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091364 has offset 0).

The definition of A091364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*n^4` (program `A091364.P9476798777241005949`, by `A091364.P9476798777241005949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091364.P9476798777241005949

`n!*n^4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091364

/-- `n!*n^4` -/
def P9476798777241005949.Spec : Prop :=
  ∀ n, (P9476798777241005949.a n : ℤ) = A091364 n

theorem P9476798777241005949.correct : P9476798777241005949.Spec := by
  intro n
  simp only [A091364]

end A091364

/-! ## A091364.P11543823506353253166

`n²²*n!`
-/

namespace A091364.P11543823506353253166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 * Nat.factorial n

end

end A091364.P11543823506353253166

namespace A091364

/-- `n²²*n!` -/
def P11543823506353253166.Spec : Prop :=
  ∀ n, (P11543823506353253166.a n : ℤ) = A091364 n

theorem P11543823506353253166.correct : P11543823506353253166.Spec := by
  intro n
  simp only [A091364, Nat.add_sub_cancel, A091364.P11543823506353253166.a, A091364.P9476798777241005949.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091364

/-! ## A091364.P16921684985094229523

`n²²/n!^-1`
-/

namespace A091364.P16921684985094229523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℚ) / (Nat.factorial n : ℚ) ^ (-1 : ℤ)

end

end A091364.P16921684985094229523

namespace A091364

/-- `n²²/n!^-1` -/
def P16921684985094229523.Spec : Prop :=
  ∀ n, P16921684985094229523.a n = (A091364 n : ℚ)

theorem P16921684985094229523.correct : P16921684985094229523.Spec := by
  intro n
  simp only [A091364, Nat.add_sub_cancel, A091364.P16921684985094229523.a, A091364.P9476798777241005949.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A091364

/-! ## A091364.P17289630503760407013

`Δ[n!]*n*n*n`
-/

namespace A091364.P17289630503760407013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (n : ℤ) * (n : ℤ) * (n : ℤ)

end

end A091364.P17289630503760407013

namespace A091364

/-- `Δ[n!]*n*n*n` -/
def P17289630503760407013.Spec : Prop :=
  ∀ n, P17289630503760407013.a n = A091364 n

theorem P17289630503760407013.correct : P17289630503760407013.Spec := by
  intro n
  simp only [A091364, Nat.add_sub_cancel, A091364.P17289630503760407013.f1, A091364.P17289630503760407013.a, A091364.P9476798777241005949.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A091364

/-! ## A091364.P2518748657407949489

`n*n*n!*n*n`
-/

namespace A091364.P2518748657407949489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * Nat.factorial n) * n * n

end

end A091364.P2518748657407949489

namespace A091364

/-- `n*n*n!*n*n` -/
def P2518748657407949489.Spec : Prop :=
  ∀ n, (P2518748657407949489.a n : ℤ) = A091364 n

theorem P2518748657407949489.correct : P2518748657407949489.Spec := by
  intro n
  simp only [A091364, Nat.add_sub_cancel, A091364.P2518748657407949489.a, A091364.P9476798777241005949.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091364

/-! ## A091364.P1450798037567450446

`abs(n^4*∏[floor(acot(n)-n)])`
-/

namespace A091364.P1450798037567450446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 4 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)|

end

end A091364.P1450798037567450446

namespace A091364

/-- `abs(n^4*∏[floor(acot(n)-n)])` -/
def P1450798037567450446.Spec : Prop :=
  ∀ n, P1450798037567450446.a n = A091364 n

end A091364

/-! ## A091364.P9479323318676410082

`n*A091363(n)`
-/

namespace A091364.P9479323318676410082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091363 n

end

end A091364.P9479323318676410082

namespace A091364

/-- `n*A091363(n)` -/
def P9479323318676410082.Spec : Prop :=
  ∀ n, P9479323318676410082.a n = A091364 n

theorem P9479323318676410082.correct : P9479323318676410082.Spec := by
  intro n
  simp only [A091364, Nat.add_sub_cancel, A091364.P9479323318676410082.a, A091364.P9476798777241005949.a, A091363, A091363.P12255685773322272690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091364

/-! ## A091364.P9255457543317330337

`n²*A002775(n)`
-/

namespace A091364.P9255457543317330337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002775 n

end

end A091364.P9255457543317330337

namespace A091364

/-- `n²*A002775(n)` -/
def P9255457543317330337.Spec : Prop :=
  ∀ n, P9255457543317330337.a n = A091364 n

theorem P9255457543317330337.correct : P9255457543317330337.Spec := by
  intro n
  simp only [A091364, Nat.add_sub_cancel, A091364.P9255457543317330337.a, A091364.P9476798777241005949.a, A002775, A002775.P5567253749503335915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091364

/-! ## A091364.P272688507942818229

`A000142(n)*n²²`
-/

namespace A091364.P272688507942818229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * ((n ^ 2) ^ 2 : ℤ)

end

end A091364.P272688507942818229

namespace A091364

/-- `A000142(n)*n²²` -/
def P272688507942818229.Spec : Prop :=
  ∀ n, P272688507942818229.a n = A091364 n

theorem P272688507942818229.correct : P272688507942818229.Spec := by
  intro n
  simp only [A091364, Nat.add_sub_cancel, A091364.P272688507942818229.a, A091364.P9476798777241005949.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091364

/-! ## A091364.P16567767835201226107

`abs(n²²*A133942(n))`
-/

namespace A091364.P16567767835201226107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) * A133942 n|

end

end A091364.P16567767835201226107

namespace A091364

/-- `abs(n²²*A133942(n))` -/
def P16567767835201226107.Spec : Prop :=
  ∀ n, P16567767835201226107.a n = A091364 n

end A091364

/-!
# A091365: Primes p such that the sum of the digits of p is not prime, but the sum of the cubes of the digits of p is prime.

The programs for A091365, the canonical program `A091365.P13821145231187876511` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091365 has offset 1).

The definition of A091365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091365.P13821145231187876511

`∩[A091366(n+1), A247122(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A091365

/-- `∩[A091366(n+1), A247122(n+1)]` -/
def P13821145231187876511.Spec : Prop :=
  ∀ n, (P13821145231187876511.a n : ℤ) = A091365 (n + 1)

theorem P13821145231187876511.correct : P13821145231187876511.Spec := by
  intro n
  simp only [A091365, Nat.add_sub_cancel]

end A091365

/-! ## A091365.P1625289506451507128

`p?[A121642(n+1)]`
-/

namespace A091365.P1625289506451507128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091365.P1625289506451507128

namespace A091365

/-- `p?[A121642(n+1)]` -/
def P1625289506451507128.Spec : Prop :=
  ∀ n, P1625289506451507128.a n = A091365 (n + 1)

end A091365

/-!
# A091366: Primes p such that the sum of the cubes of the digits of p is prime.

The programs for A091366, the canonical program `A091366.P2947392388403710140` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091366 has offset 1).

The definition of A091366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091366.P2947392388403710140

`p?[A225534(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091366

/-- `p?[A225534(n+1)]` -/
def P2947392388403710140.Spec : Prop :=
  ∀ n, P2947392388403710140.a n = A091366 (n + 1)

theorem P2947392388403710140.correct : P2947392388403710140.Spec := by
  intro n
  simp only [A091366, Nat.add_sub_cancel]

end A091366

/-! ## A091366.P8236479596011319058

`filter[A225534(1+n), A010051(#)]`
-/

namespace A091366.P8236479596011319058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A091366.P8236479596011319058

namespace A091366

/-- `filter[A225534(1+n), A010051(#)]` -/
def P8236479596011319058.Spec : Prop :=
  ∀ n, P8236479596011319058.a n = A091366 (n + 1)

end A091366

/-! ## A091366.P3748286395246187135

`record[A006530(2*A225534(n+1))]`
-/

namespace A091366.P3748286395246187135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A225534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091366.P3748286395246187135

namespace A091366

/-- `record[A006530(2*A225534(n+1))]` -/
def P3748286395246187135.Spec : Prop :=
  ∀ n, P3748286395246187135.a n = A091366 (n + 1)

end A091366

/-! ## A091366.P16590881408582922542

`∩[A000040(n+1), A225534(n+1)]`
-/

namespace A091366.P16590881408582922542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P16590881408582922542

namespace A091366

/-- `∩[A000040(n+1), A225534(n+1)]` -/
def P16590881408582922542.Spec : Prop :=
  ∀ n, (P16590881408582922542.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P1845753996091281360

`∩[A004139(n+1), A225534(n+1)]`
-/

namespace A091366.P1845753996091281360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P1845753996091281360

namespace A091366

/-- `∩[A004139(n+1), A225534(n+1)]` -/
def P1845753996091281360.Spec : Prop :=
  ∀ n, (P1845753996091281360.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P9653674967177919561

`∩[A006005(n+1), A225534(n+1)]`
-/

namespace A091366.P9653674967177919561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P9653674967177919561

namespace A091366

/-- `∩[A006005(n+1), A225534(n+1)]` -/
def P9653674967177919561.Spec : Prop :=
  ∀ n, (P9653674967177919561.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P14540147700431986533

`∩[A008578(n+1), A225534(n+1)]`
-/

namespace A091366.P14540147700431986533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P14540147700431986533

namespace A091366

/-- `∩[A008578(n+1), A225534(n+1)]` -/
def P14540147700431986533.Spec : Prop :=
  ∀ n, (P14540147700431986533.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P13415659106397811147

`∩[A033946(n+1), A225534(n+1)]`
-/

namespace A091366.P13415659106397811147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P13415659106397811147

namespace A091366

/-- `∩[A033946(n+1), A225534(n+1)]` -/
def P13415659106397811147.Spec : Prop :=
  ∀ n, (P13415659106397811147.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P194379272443523211

`∩[A045319(n+1), A225534(n+1)]`
-/

namespace A091366.P194379272443523211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P194379272443523211

namespace A091366

/-- `∩[A045319(n+1), A225534(n+1)]` -/
def P194379272443523211.Spec : Prop :=
  ∀ n, (P194379272443523211.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P15067872798894209181

`∩[A045344(n+1), A225534(n+1)]`
-/

namespace A091366.P15067872798894209181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P15067872798894209181

namespace A091366

/-- `∩[A045344(n+1), A225534(n+1)]` -/
def P15067872798894209181.Spec : Prop :=
  ∀ n, (P15067872798894209181.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P6613500075557283085

`∩[A046022(n+1), A225534(n+1)]`
-/

namespace A091366.P6613500075557283085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P6613500075557283085

namespace A091366

/-- `∩[A046022(n+1), A225534(n+1)]` -/
def P6613500075557283085.Spec : Prop :=
  ∀ n, (P6613500075557283085.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P472042228530315763

`∩[A051948(n+1), A225534(n+1)]`
-/

namespace A091366.P472042228530315763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P472042228530315763

namespace A091366

/-- `∩[A051948(n+1), A225534(n+1)]` -/
def P472042228530315763.Spec : Prop :=
  ∀ n, (P472042228530315763.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P11924023672375596901

`∩[A062972(n+1), A225534(n+1)]`
-/

namespace A091366.P11924023672375596901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P11924023672375596901

namespace A091366

/-- `∩[A062972(n+1), A225534(n+1)]` -/
def P11924023672375596901.Spec : Prop :=
  ∀ n, (P11924023672375596901.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P12580627010968078516

`∩[A064728(n+1), A225534(n+1)]`
-/

namespace A091366.P12580627010968078516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P12580627010968078516

namespace A091366

/-- `∩[A064728(n+1), A225534(n+1)]` -/
def P12580627010968078516.Spec : Prop :=
  ∀ n, (P12580627010968078516.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P16828357760287139664

`∩[A065091(n+1), A225534(n+1)]`
-/

namespace A091366.P16828357760287139664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P16828357760287139664

namespace A091366

/-- `∩[A065091(n+1), A225534(n+1)]` -/
def P16828357760287139664.Spec : Prop :=
  ∀ n, (P16828357760287139664.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P15887639445592958841

`∩[A065396(n+1), A225534(n+1)]`
-/

namespace A091366.P15887639445592958841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P15887639445592958841

namespace A091366

/-- `∩[A065396(n+1), A225534(n+1)]` -/
def P15887639445592958841.Spec : Prop :=
  ∀ n, (P15887639445592958841.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P8264834134035571334

`∩[A067126(n+1), A225534(n+1)]`
-/

namespace A091366.P8264834134035571334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P8264834134035571334

namespace A091366

/-- `∩[A067126(n+1), A225534(n+1)]` -/
def P8264834134035571334.Spec : Prop :=
  ∀ n, (P8264834134035571334.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P11284538117779520240

`∩[A075763(n+1), A225534(n+1)]`
-/

namespace A091366.P11284538117779520240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P11284538117779520240

namespace A091366

/-- `∩[A075763(n+1), A225534(n+1)]` -/
def P11284538117779520240.Spec : Prop :=
  ∀ n, (P11284538117779520240.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P6468152062826880767

`∩[A116974(n+1), A225534(n+1)]`
-/

namespace A091366.P6468152062826880767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P6468152062826880767

namespace A091366

/-- `∩[A116974(n+1), A225534(n+1)]` -/
def P6468152062826880767.Spec : Prop :=
  ∀ n, (P6468152062826880767.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P10205606636605982425

`∩[A161346(n+1), A225534(n+1)]`
-/

namespace A091366.P10205606636605982425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P10205606636605982425

namespace A091366

/-- `∩[A161346(n+1), A225534(n+1)]` -/
def P10205606636605982425.Spec : Prop :=
  ∀ n, (P10205606636605982425.a n : ℤ) = A091366 (n + 1)

end A091366

/-!
# A091367: Primes p such that the sum of the digits raised to the 4th power is prime.

The programs for A091367, there is no canonical definition to state claims against.
-/

/-! ## A091367.P2481431351493124852

`p?[A210767(n+1)]`
-/

namespace A091367.P2481431351493124852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091367.P2481431351493124852

/-! ## A091367.P3275106927336281117

`∩[A169802(n+1), A210767(n+1)]`
-/

namespace A091367.P3275106927336281117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091367.P3275106927336281117

/-! ## A091367.P7759572141769152768

`∩[A100725(n+1), A210767(n+1)]`
-/

namespace A091367.P7759572141769152768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091367.P7759572141769152768

/-! ## A091367.P9009840363510259762

`∩[A210767(n+1), A331417(n)]`
-/

namespace A091367.P9009840363510259762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331417 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091367.P9009840363510259762

/-! ## A091367.P11463347240550532263

`∩[A090417(n+1), A210767(n+1)]`
-/

namespace A091367.P11463347240550532263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091367.P11463347240550532263

/-!
# A091368: Primes p such that the sum of the digits of p is not prime, but the sum of each digit raised to the 4th power is prime.

The programs for A091368, there is no canonical definition to state claims against.
-/

/-! ## A091368.P8495292372870136423

`∩[A091367(n+1), A247122(n+1)]`
-/

namespace A091368.P8495292372870136423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091368.P8495292372870136423

/-!
# A091369: a(n) = Sum_{i=1..n} phi(i)*ceiling(n/i).

The programs for A091369, the canonical program `A091369.P1856684225925382334` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091369 has offset 1).

The definition of A091369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000010(#+1)*ceil((n+1)/(#+1))]` (program `A091369.P1856684225925382334`, by `A091369.P1856684225925382334.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091369.P3969440163011087150

`(n+1)²-A063985(n+1)`
-/

namespace A091369.P3969440163011087150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A063985 (n + 1)

end

end A091369.P3969440163011087150

namespace A091369

/-- `(n+1)²-A063985(n+1)` -/
def P3969440163011087150.Spec : Prop :=
  ∀ n, P3969440163011087150.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P1856684225925382334

`∑{#}[n, A000010(#+1)*ceil((n+1)/(#+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091369

/-- `∑{#}[n, A000010(#+1)*ceil((n+1)/(#+1))]` -/
def P1856684225925382334.Spec : Prop :=
  ∀ n, P1856684225925382334.a n = A091369 (n + 1)

theorem P1856684225925382334.correct : P1856684225925382334.Spec := by
  intro n
  simp only [A091369, Nat.add_sub_cancel]

end A091369

/-! ## A091369.P9319201115118771429

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n]`
-/

namespace A091369.P9319201115118771429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P9319201115118771429

namespace A091369

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n]` -/
def P9319201115118771429.Spec : Prop :=
  ∀ n, P9319201115118771429.a n = (A091369 (n + 1) : ℚ)

end A091369

/-! ## A091369.P14131854518884878605

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+a(n-1)+n` with `a(0)=1`
-/

namespace A091369.P14131854518884878605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (a (n - 1) + (n : ℚ))

end

end A091369.P14131854518884878605

namespace A091369

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+a(n-1)+n` -/
def P14131854518884878605.Spec : Prop :=
  ∀ n, P14131854518884878605.a n = (A091369 (n + 1) : ℚ)

end A091369

/-! ## A091369.P11737104042067131594

`∑[n+Δ[A002088(n)]]`
-/

namespace A091369.P11737104042067131594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P11737104042067131594

namespace A091369

/-- `∑[n+Δ[A002088(n)]]` -/
def P11737104042067131594.Spec : Prop :=
  ∀ n, P11737104042067131594.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P8122119316349693162

`∑[Δ[A005728(n)]+n]`
-/

namespace A091369.P8122119316349693162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P8122119316349693162

namespace A091369

/-- `∑[Δ[A005728(n)]+n]` -/
def P8122119316349693162.Spec : Prop :=
  ∀ n, P8122119316349693162.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P17324921987988594166

`∑[A121048(n+1)-1]`
-/

namespace A091369.P17324921987988594166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P17324921987988594166

namespace A091369

/-- `∑[A121048(n+1)-1]` -/
def P17324921987988594166.Spec : Prop :=
  ∀ n, P17324921987988594166.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P2542234955954826145

`∑[A000010(n+1)+n]`
-/

namespace A091369.P2542234955954826145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P2542234955954826145

namespace A091369

/-- `∑[A000010(n+1)+n]` -/
def P2542234955954826145.Spec : Prop :=
  ∀ n, P2542234955954826145.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P15765664816090771925

`A002088(n+1)+∑[n]`
-/

namespace A091369.P15765664816090771925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A091369.P15765664816090771925

namespace A091369

/-- `A002088(n+1)+∑[n]` -/
def P15765664816090771925.Spec : Prop :=
  ∀ n, P15765664816090771925.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P16651129490103981204

`A092249(n+1)+∑[n]`
-/

namespace A091369.P16651129490103981204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A091369.P16651129490103981204

namespace A091369

/-- `A092249(n+1)+∑[n]` -/
def P16651129490103981204.Spec : Prop :=
  ∀ n, P16651129490103981204.a n = A091369 (n + 1)

theorem P16651129490103981204.correct : P16651129490103981204.Spec := by
  intro n
  simp only [A091369, Nat.add_sub_cancel, A091369.P16651129490103981204.f1, A091369.P16651129490103981204.a, A091369.P1856684225925382334.f1, A091369.P1856684225925382334.a, A000010, A000010.P4673923239450215316.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091369

/-! ## A091369.P5478204545723395934

`∑[sqrt(A127473(n+1))+n]`
-/

namespace A091369.P5478204545723395934
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) + (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P5478204545723395934

namespace A091369

/-- `∑[sqrt(A127473(n+1))+n]` -/
def P5478204545723395934.Spec : Prop :=
  ∀ n, P5478204545723395934.a n = (A091369 (n + 1) : ℝ)

end A091369

/-! ## A091369.P17707364932399134121

`∑[Δ[A100449(n)/4]+n]`
-/

namespace A091369.P17707364932399134121
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P17707364932399134121

namespace A091369

/-- `∑[Δ[A100449(n)/4]+n]` -/
def P17707364932399134121.Spec : Prop :=
  ∀ n, P17707364932399134121.a n = (A091369 (n + 1) : ℚ)

end A091369

/-! ## A091369.P4061034390952137304

`A015613(n+1)+∑[n+1]`
-/

namespace A091369.P4061034390952137304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A091369.P4061034390952137304

namespace A091369

/-- `A015613(n+1)+∑[n+1]` -/
def P4061034390952137304.Spec : Prop :=
  ∀ n, P4061034390952137304.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P15413270215956089551

`A015614(n+1)+∑[n]+1`
-/

namespace A091369.P15413270215956089551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A091369.P15413270215956089551

namespace A091369

/-- `A015614(n+1)+∑[n]+1` -/
def P15413270215956089551.Spec : Prop :=
  ∀ n, P15413270215956089551.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P16129951693642959896

`∑[A109606(n+1)+1+n]`
-/

namespace A091369.P16129951693642959896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P16129951693642959896

namespace A091369

/-- `∑[A109606(n+1)+1+n]` -/
def P16129951693642959896.Spec : Prop :=
  ∀ n, P16129951693642959896.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P6316456341589122648

`∑[A039649(n+1)-1+n]`
-/

namespace A091369.P6316456341589122648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P6316456341589122648

namespace A091369

/-- `∑[A039649(n+1)-1+n]` -/
def P6316456341589122648.Spec : Prop :=
  ∀ n, P6316456341589122648.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P17609073823868692482

`∑[A349137(2*n+1)+n]`
-/

namespace A091369.P17609073823868692482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P17609073823868692482

namespace A091369

/-- `∑[A349137(2*n+1)+n]` -/
def P17609073823868692482.Spec : Prop :=
  ∀ n, P17609073823868692482.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P12873187462881465192

`(n+1)²-∑[A051953(n+1)]`
-/

namespace A091369.P12873187462881465192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P12873187462881465192

namespace A091369

/-- `(n+1)²-∑[A051953(n+1)]` -/
def P12873187462881465192.Spec : Prop :=
  ∀ n, P12873187462881465192.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P9014014035975165558

`A000010(lcm(2, n+1))+a(n-1)+n` with `a(0)=1`
-/

namespace A091369.P9014014035975165558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (Nat.lcm 2 (n + 1)) + (a (n - 1) + (n : ℤ))

end

end A091369.P9014014035975165558

namespace A091369

/-- `A000010(lcm(2, n+1))+a(n-1)+n` -/
def P9014014035975165558.Spec : Prop :=
  ∀ n, P9014014035975165558.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P13315810444064424749

`A000010(C(n+1, n))+a(n-1)+n` with `a(0)=1`
-/

namespace A091369.P13315810444064424749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (Nat.choose (n + 1) n) + (a (n - 1) + (n : ℤ))

end

end A091369.P13315810444064424749

namespace A091369

/-- `A000010(C(n+1, n))+a(n-1)+n` -/
def P13315810444064424749.Spec : Prop :=
  ∀ n, P13315810444064424749.a n = A091369 (n + 1)

end A091369

/-!
# A091370: Triangle read by rows: T(n,k) is the number of dissections of a convex n-gon by nonintersecting diagonals, having a k-gon over a fixed edge (base).

The programs for A091370, the canonical program `A091370.P11714173664932252478` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091370 has offset 3).

The definition of A091370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091370.P11714173664932252478

`A104219(comp[∑[n]])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A091370

/-- `A104219(comp[∑[n]])` -/
def P11714173664932252478.Spec : Prop :=
  ∀ n, P11714173664932252478.a n = A091370 (n + 3)

theorem P11714173664932252478.correct : P11714173664932252478.Spec := by
  intro n
  simp only [A091370, Nat.add_sub_cancel]

end A091370

/-! ## A091370.P10139763435695491295

`A011117(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A091370.P10139763435695491295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A091370.P10139763435695491295

namespace A091370

/-- `A011117(∑[2*n]%(comp[∑[n]]+1)+1+n)` -/
def P10139763435695491295.Spec : Prop :=
  ∀ n, P10139763435695491295.a n = A091370 (n + 3)

end A091370

/-!
# A091371: Smallest prime factor of n - number of prime factors of n with multiplicity.

The programs for A091371, the canonical program `A091371.P17578851718721117187` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091371 has offset 1).

The definition of A091371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091371.P16265073679182817074

`A020639(1+n)-∑{e}[n+1, #]`
-/

namespace A091371.P16265073679182817074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 + n) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A091371.P16265073679182817074

namespace A091371

/-- `A020639(1+n)-∑{e}[n+1, #]` -/
def P16265073679182817074.Spec : Prop :=
  ∀ n, P16265073679182817074.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P2756903378315783504

`sqrt(A088377(n+1))-∑{e}[n+1, #]`
-/

namespace A091371.P2756903378315783504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 1) : ℝ) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A091371.P2756903378315783504

namespace A091371

/-- `sqrt(A088377(n+1))-∑{e}[n+1, #]` -/
def P2756903378315783504.Spec : Prop :=
  ∀ n, P2756903378315783504.a n = (A091371 (n + 1) : ℝ)

end A091371

/-! ## A091371.P1125063016670732406

`sqrt(sqrt(A088379(n+1)))-∑{e}[n+1, #]`
-/

namespace A091371.P1125063016670732406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A088379 (n + 1) : ℝ)) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A091371.P1125063016670732406

namespace A091371

/-- `sqrt(sqrt(A088379(n+1)))-∑{e}[n+1, #]` -/
def P1125063016670732406.Spec : Prop :=
  ∀ n, P1125063016670732406.a n = (A091371 (n + 1) : ℝ)

end A091371

/-! ## A091371.P8353095891486993794

`A020639(n+1)-log(∏{e}[n+1, exp(#)])`
-/

namespace A091371.P8353095891486993794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℝ) - Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ))

end

end A091371.P8353095891486993794

namespace A091371

/-- `A020639(n+1)-log(∏{e}[n+1, exp(#)])` -/
def P8353095891486993794.Spec : Prop :=
  ∀ n, P8353095891486993794.a n = (A091371 (n + 1) : ℝ)

end A091371

/-! ## A091371.P4110601042742429939

`A028233(∏{p}[n+1, #])-∑{e}[n+1, #]`
-/

namespace A091371.P4110601042742429939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n), p) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A091371.P4110601042742429939

namespace A091371

/-- `A028233(∏{p}[n+1, #])-∑{e}[n+1, #]` -/
def P4110601042742429939.Spec : Prop :=
  ∀ n, P4110601042742429939.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P8581562223041029592

`A034684(∏{p}[n+1, #])-∑{e}[n+1, #]`
-/

namespace A091371.P8581562223041029592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (∏ p ∈ Nat.primeFactors (f1 n), p) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A091371.P8581562223041029592

namespace A091371

/-- `A034684(∏{p}[n+1, #])-∑{e}[n+1, #]` -/
def P8581562223041029592.Spec : Prop :=
  ∀ n, P8581562223041029592.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P4597304111437979180

`∏{p}[A068794(n+1), #]-∑{e}[n+1, #]`
-/

namespace A091371.P4597304111437979180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A091371.P4597304111437979180

namespace A091371

/-- `∏{p}[A068794(n+1), #]-∑{e}[n+1, #]` -/
def P4597304111437979180.Spec : Prop :=
  ∀ n, P4597304111437979180.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P295004739967765327

`A020639(n+1)-Δ[A022559(n)]`
-/

namespace A091371.P295004739967765327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - (f1 (n + 1) - f1 n)

end

end A091371.P295004739967765327

namespace A091371

/-- `A020639(n+1)-Δ[A022559(n)]` -/
def P295004739967765327.Spec : Prop :=
  ∀ n, P295004739967765327.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P5352571392957638224

`A020639(1+n)-A001222(n+1)`
-/

namespace A091371.P5352571392957638224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 + n) - A001222 (n + 1)

end

end A091371.P5352571392957638224

namespace A091371

/-- `A020639(1+n)-A001222(n+1)` -/
def P5352571392957638224.Spec : Prop :=
  ∀ n, P5352571392957638224.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P17578851718721117187

`A061228(n+1)-A064800(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A091371

/-- `A061228(n+1)-A064800(n+1)` -/
def P17578851718721117187.Spec : Prop :=
  ∀ n, P17578851718721117187.a n = A091371 (n + 1)

theorem P17578851718721117187.correct : P17578851718721117187.Spec := by
  intro n
  simp only [A091371, Nat.add_sub_cancel]

end A091371

/-! ## A091371.P2175350917903806908

`A057237(n+1)-A252736(n+1)`
-/

namespace A091371.P2175350917903806908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) - A252736 (n + 1)

end

end A091371.P2175350917903806908

namespace A091371

/-- `A057237(n+1)-A252736(n+1)` -/
def P2175350917903806908.Spec : Prop :=
  ∀ n, P2175350917903806908.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P4211379436517618471

`A020639(n+1)+1-A073093(n+1)`
-/

namespace A091371.P4211379436517618471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (1 - A073093 (n + 1))

end

end A091371.P4211379436517618471

namespace A091371

/-- `A020639(n+1)+1-A073093(n+1)` -/
def P4211379436517618471.Spec : Prop :=
  ∀ n, P4211379436517618471.a n = A091371 (n + 1)

theorem P4211379436517618471.correct : P4211379436517618471.Spec := by
  intro n
  simp only [A091371, Nat.add_sub_cancel, A091371.P4211379436517618471.a, A091371.P17578851718721117187.a, A020639, A020639.P7578813688609615429.a, A061228, A061228.P15642375842617063633.a, A064800, A064800.P9178262813478475092.a, A073093, A073093.P258081957281391684.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A008578, A008578.P3639467937083264764.a, A055396, A055396.P18305262754425103137.a, A061395, A061395.P8431317036300486107.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A117371, A117371.P4056547519332773392.a, A297155, A297155.P1611206963555320167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091371

/-! ## A091371.P18051852258540607464

`A020639(n+1)-val(A061142(n+1), 2)`
-/

namespace A091371.P18051852258540607464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - (SequenceMachineLib.valuation (A061142 (n + 1)).toNat 2 : ℤ)

end

end A091371.P18051852258540607464

namespace A091371

/-- `A020639(n+1)-val(A061142(n+1), 2)` -/
def P18051852258540607464.Spec : Prop :=
  ∀ n, P18051852258540607464.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P12663592473197884007

`(n+1)/A032742(n+1)-A001222(n+1)`
-/

namespace A091371.P12663592473197884007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ) - (A001222 (n + 1) : ℚ)

end

end A091371.P12663592473197884007

namespace A091371

/-- `(n+1)/A032742(n+1)-A001222(n+1)` -/
def P12663592473197884007.Spec : Prop :=
  ∀ n, P12663592473197884007.a n = (A091371 (n + 1) : ℚ)

end A091371

/-! ## A091371.P12247033005088737983

`A006530(A028233(n+1))-A001222(n+1)`
-/

namespace A091371.P12247033005088737983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat - A001222 (n + 1)

end

end A091371.P12247033005088737983

namespace A091371

/-- `A006530(A028233(n+1))-A001222(n+1)` -/
def P12247033005088737983.Spec : Prop :=
  ∀ n, P12247033005088737983.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P3111685537498842434

`A006530(A068794(n+1))-A001222(n+1)`
-/

namespace A091371.P3111685537498842434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A068794 (n + 1)).toNat - A001222 (n + 1)

end

end A091371.P3111685537498842434

namespace A091371

/-- `A006530(A068794(n+1))-A001222(n+1)` -/
def P3111685537498842434.Spec : Prop :=
  ∀ n, P3111685537498842434.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P798744483242686376

`A006530(A074828(n+1))-A001222(n+1)`
-/

namespace A091371.P798744483242686376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat - A001222 (n + 1)

end

end A091371.P798744483242686376

namespace A091371

/-- `A006530(A074828(n+1))-A001222(n+1)` -/
def P798744483242686376.Spec : Prop :=
  ∀ n, P798744483242686376.a n = A091371 (n + 1)

end A091371

/-! ## A091371.P7059346869246093229

`A020639(n+1)-A056239(A181819(n+1))`
-/

namespace A091371.P7059346869246093229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - A056239 (A181819 (n + 1)).toNat

end

end A091371.P7059346869246093229

namespace A091371

/-- `A020639(n+1)-A056239(A181819(n+1))` -/
def P7059346869246093229.Spec : Prop :=
  ∀ n, P7059346869246093229.a n = A091371 (n + 1)

end A091371

/-!
# A091372: Number of numbers <= n having more prime factors than the value of their smallest prime factor.

The programs for A091372, the canonical program `A091372.P320932747397892225` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091372 has offset 1).

The definition of A091372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091372.P320932747397892225

`fp[A091375(n+1)-1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A091372

/-- `fp[A091375(n+1)-1]` -/
def P320932747397892225.Spec : Prop :=
  ∀ n, (P320932747397892225.a n : ℤ) = A091372 (n + 1)

theorem P320932747397892225.correct : P320932747397892225.Spec := by
  intro n
  simp only [A091372, Nat.add_sub_cancel]

end A091372

/-! ## A091372.P3849337708809458230

`∑[char[A091375(1+n)-1]]`
-/

namespace A091372.P3849337708809458230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091375 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P3849337708809458230

namespace A091372

/-- `∑[char[A091375(1+n)-1]]` -/
def P3849337708809458230.Spec : Prop :=
  ∀ n, (P3849337708809458230.a n : ℤ) = A091372 (n + 1)

end A091372

/-! ## A091372.P1853423940541906396

`∑[1-A340369(A079097(n))]`
-/

namespace A091372.P1853423940541906396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340369 (A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P1853423940541906396

namespace A091372

/-- `∑[1-A340369(A079097(n))]` -/
def P1853423940541906396.Spec : Prop :=
  ∀ n, P1853423940541906396.a n = A091372 (n + 1)

end A091372

/-! ## A091372.P3869882598545997268

`A000027(n+1)%∑[A340369(A079097(n))]`
-/

namespace A091372.P3869882598545997268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091372.P3869882598545997268

namespace A091372

/-- `A000027(n+1)%∑[A340369(A079097(n))]` -/
def P3869882598545997268.Spec : Prop :=
  ∀ n, P3869882598545997268.a n = A091372 (n + 1)

end A091372

/-! ## A091372.P14353178400773764927

`(A028310(n)+1)%∑[A340369(A079097(n))]`
-/

namespace A091372.P14353178400773764927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091372.P14353178400773764927

namespace A091372

/-- `(A028310(n)+1)%∑[A340369(A079097(n))]` -/
def P14353178400773764927.Spec : Prop :=
  ∀ n, P14353178400773764927.a n = A091372 (n + 1)

end A091372

/-! ## A091372.P3170819988487194182

`A233583(2+n)%∑[A340369(A079097(n))]`
-/

namespace A091372.P3170819988487194182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (2 + n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091372.P3170819988487194182

namespace A091372

/-- `A233583(2+n)%∑[A340369(A079097(n))]` -/
def P3170819988487194182.Spec : Prop :=
  ∀ n, P3170819988487194182.a n = A091372 (n + 1)

end A091372

/-! ## A091372.P8076203033213296172

`A008619(2*n)%∑[A340369(A079097(n))]`
-/

namespace A091372.P8076203033213296172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091372.P8076203033213296172

namespace A091372

/-- `A008619(2*n)%∑[A340369(A079097(n))]` -/
def P8076203033213296172.Spec : Prop :=
  ∀ n, P8076203033213296172.a n = A091372 (n + 1)

end A091372

/-! ## A091372.P17321398802407406689

`A008611(3*n)%∑[A340369(A079097(n))]`
-/

namespace A091372.P17321398802407406689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008611 (3 * n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091372.P17321398802407406689

namespace A091372

/-- `A008611(3*n)%∑[A340369(A079097(n))]` -/
def P17321398802407406689.Spec : Prop :=
  ∀ n, P17321398802407406689.a n = A091372 (n + 1)

end A091372

/-! ## A091372.P9701618541432519847

`∑[A175801(A001222((n+1)*xor(n, n+1))+1)]`
-/

namespace A091372.P9701618541432519847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175801 (A001222 ((n + 1) * Nat.xor n (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P9701618541432519847

namespace A091372

/-- `∑[A175801(A001222((n+1)*xor(n, n+1))+1)]` -/
def P9701618541432519847.Spec : Prop :=
  ∀ n, P9701618541432519847.a n = A091372 (n + 1)

end A091372

/-! ## A091372.P9488067422831543044

`∑[A057427(A321379(A079097(n)))]`
-/

namespace A091372.P9488067422831543044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A321379 (A079097 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P9488067422831543044

namespace A091372

/-- `∑[A057427(A321379(A079097(n)))]` -/
def P9488067422831543044.Spec : Prop :=
  ∀ n, P9488067422831543044.a n = A091372 (n + 1)

end A091372

/-! ## A091372.P3495664278075453491

`∑[A002265(A007814(n²+1)+A001222(n+1))]`
-/

namespace A091372.P3495664278075453491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A007814 (n ^ 2 + 1) + A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P3495664278075453491

namespace A091372

/-- `∑[A002265(A007814(n²+1)+A001222(n+1))]` -/
def P3495664278075453491.Spec : Prop :=
  ∀ n, P3495664278075453491.a n = A091372 (n + 1)

end A091372

/-!
# A091373: Number of numbers <= n having exactly as many prime factors as the value of their smallest prime factor.

The programs for A091373, the canonical program `A091373.P9373009586987433351` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091373 has offset 1).

The definition of A091373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091373.P145483685820183134

`fp[A091376(n+1)-1]`
-/

namespace A091373.P145483685820183134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A091373.P145483685820183134

namespace A091373

/-- `fp[A091376(n+1)-1]` -/
def P145483685820183134.Spec : Prop :=
  ∀ n, (P145483685820183134.a n : ℤ) = A091373 (n + 1)

end A091373

/-! ## A091373.P8585414345298786884

`∑[char[A091376(1+n)-1]]`
-/

namespace A091373.P8585414345298786884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091373.P8585414345298786884

namespace A091373

/-- `∑[char[A091376(1+n)-1]]` -/
def P8585414345298786884.Spec : Prop :=
  ∀ n, (P8585414345298786884.a n : ℤ) = A091373 (n + 1)

end A091373

/-! ## A091373.P14346401804904407883

`char[A091376(xor(1, n)+1)-1]+a(n-1)` with `a(0)=0`
-/

namespace A091373.P14346401804904407883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A091373.P14346401804904407883

namespace A091373

/-- `char[A091376(xor(1, n)+1)-1]+a(n-1)` -/
def P14346401804904407883.Spec : Prop :=
  ∀ n, (P14346401804904407883.a n : ℤ) = A091373 (n + 1)

end A091373

/-! ## A091373.P353016667775115056

`∑[C(3, (2*(A001222(n+1)-A020639(n+1)))²)]`
-/

namespace A091373.P353016667775115056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((2 * (A001222 (n + 1) - A020639 (n + 1))) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091373.P353016667775115056

namespace A091373

/-- `∑[C(3, (2*(A001222(n+1)-A020639(n+1)))²)]` -/
def P353016667775115056.Spec : Prop :=
  ∀ n, (P353016667775115056.a n : ℤ) = A091373 (n + 1)

end A091373

/-! ## A091373.P9373009586987433351

`∑[char[eq[0, A091371(n+1)]]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A091373

/-- `∑[char[eq[0, A091371(n+1)]]]` -/
def P9373009586987433351.Spec : Prop :=
  ∀ n, (P9373009586987433351.a n : ℤ) = A091373 (n + 1)

theorem P9373009586987433351.correct : P9373009586987433351.Spec := by
  intro n
  simp only [A091373, Nat.add_sub_cancel]

end A091373

/-! ## A091373.P17070933711634702401

`∑[val(A006530(A091371(n+1)²+2), 2)]`
-/

namespace A091373.P17070933711634702401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (A091371 (n + 1) ^ 2 + 2).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091373.P17070933711634702401

namespace A091373

/-- `∑[val(A006530(A091371(n+1)²+2), 2)]` -/
def P17070933711634702401.Spec : Prop :=
  ∀ n, (P17070933711634702401.a n : ℤ) = A091373 (n + 1)

end A091373

/-!
# A091374: Number of numbers <= n having fewer prime factors than the value of their smallest prime factor.

The programs for A091374, the canonical program `A091374.P8677467661644598186` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091374 has offset 1).

The definition of A091374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091374.P15036248156436332544

`fp[A091377(n+1)-1]`
-/

namespace A091374.P15036248156436332544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A091374.P15036248156436332544

namespace A091374

/-- `fp[A091377(n+1)-1]` -/
def P15036248156436332544.Spec : Prop :=
  ∀ n, (P15036248156436332544.a n : ℤ) = A091374 (n + 1)

end A091374

/-! ## A091374.P2370438279578843302

`∑[char[A091377(1+n)-1]]`
-/

namespace A091374.P2370438279578843302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091374.P2370438279578843302

namespace A091374

/-- `∑[char[A091377(1+n)-1]]` -/
def P2370438279578843302.Spec : Prop :=
  ∀ n, (P2370438279578843302.a n : ℤ) = A091374 (n + 1)

end A091374

/-! ## A091374.P8677467661644598186

`∑[ceil(A091371(1+n)/(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A091374

/-- `∑[ceil(A091371(1+n)/(n+1))]` -/
def P8677467661644598186.Spec : Prop :=
  ∀ n, P8677467661644598186.a n = A091374 (n + 1)

theorem P8677467661644598186.correct : P8677467661644598186.Spec := by
  intro n
  simp only [A091374, Nat.add_sub_cancel]

end A091374

/-! ## A091374.P14700405346152216012

`∑[A340369(A079097(4*(n+1)+n))]`
-/

namespace A091374.P14700405346152216012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A079097 (4 * (n + 1) + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091374.P14700405346152216012

namespace A091374

/-- `∑[A340369(A079097(4*(n+1)+n))]` -/
def P14700405346152216012.Spec : Prop :=
  ∀ n, P14700405346152216012.a n = A091374 (n + 1)

end A091374

/-! ## A091374.P10116736243298708841

`∑[A327276(gcd(n+1, ∏{p}[n+1, (n+1)/#])²)]`
-/

namespace A091374.P10116736243298708841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091374.P10116736243298708841

namespace A091374

/-- `∑[A327276(gcd(n+1, ∏{p}[n+1, (n+1)/#])²)]` -/
def P10116736243298708841.Spec : Prop :=
  ∀ n, P10116736243298708841.a n = A091374 (n + 1)

end A091374

/-! ## A091374.P4004373951389303069

`∑[A000007(A383097(n+1))]`
-/

namespace A091374.P4004373951389303069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A383097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091374.P4004373951389303069

namespace A091374

/-- `∑[A000007(A383097(n+1))]` -/
def P4004373951389303069.Spec : Prop :=
  ∀ n, P4004373951389303069.a n = A091374 (n + 1)

end A091374

/-! ## A091374.P7536512764246468688

`∑[C(A124766(2*n+1), A063658(2*(n+1)))]`
-/

namespace A091374.P7536512764246468688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124766 (2 * n + 1)).toNat (A063658 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091374.P7536512764246468688

namespace A091374

/-- `∑[C(A124766(2*n+1), A063658(2*(n+1)))]` -/
def P7536512764246468688.Spec : Prop :=
  ∀ n, (P7536512764246468688.a n : ℤ) = A091374 (n + 1)

end A091374

/-!
# A091375: Numbers k with property that the number of prime factors of k (counted with repetition) exceeds the smallest prime factor of k.

The programs for A091375, the canonical program `A091375.P9196329194725387790` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091375 has offset 1).

The definition of A091375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9923 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091375.P13443211633193169939

`lt[A020639(n+1), A001222(n+1)]+1`
-/

namespace A091375.P13443211633193169939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P13443211633193169939

namespace A091375

/-- `lt[A020639(n+1), A001222(n+1)]+1` -/
def P13443211633193169939.Spec : Prop :=
  ∀ n, (P13443211633193169939.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P9196329194725387790

`lt[A074828(n+1), A001222(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A091375

/-- `lt[A074828(n+1), A001222(n+1)]+1` -/
def P9196329194725387790.Spec : Prop :=
  ∀ n, (P9196329194725387790.a n : ℤ) = A091375 (n + 1)

theorem P9196329194725387790.correct : P9196329194725387790.Spec := by
  intro n
  simp only [A091375, Nat.add_sub_cancel]

end A091375

/-! ## A091375.P9906046933791774134

`lt[A102457(n+2), A001222(n+1)]+1`
-/

namespace A091375.P9906046933791774134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P9906046933791774134

namespace A091375

/-- `lt[A102457(n+2), A001222(n+1)]+1` -/
def P9906046933791774134.Spec : Prop :=
  ∀ n, (P9906046933791774134.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P15603795936456530183

`fp[A091372(n+1)]+1`
-/

namespace A091375.P15603795936456530183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A091375.P15603795936456530183

namespace A091375

/-- `fp[A091372(n+1)]+1` -/
def P15603795936456530183.Spec : Prop :=
  ∀ n, (P15603795936456530183.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P17251416637662937111

`lt[A091371(n+1), 0]+1`
-/

namespace A091375.P17251416637662937111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091375.P17251416637662937111

namespace A091375

/-- `lt[A091371(n+1), 0]+1` -/
def P17251416637662937111.Spec : Prop :=
  ∀ n, (P17251416637662937111.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P10543444703412182170

`lt[A020639(n+1), Δ[A022559(n)]]+1`
-/

namespace A091375.P10543444703412182170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P10543444703412182170

namespace A091375

/-- `lt[A020639(n+1), Δ[A022559(n)]]+1` -/
def P10543444703412182170.Spec : Prop :=
  ∀ n, (P10543444703412182170.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P9568381577718421414

`lt[A020639(n+1), A086436(n+1)]+1`
-/

namespace A091375.P9568381577718421414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P9568381577718421414

namespace A091375

/-- `lt[A020639(n+1), A086436(n+1)]+1` -/
def P9568381577718421414.Spec : Prop :=
  ∀ n, (P9568381577718421414.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P18352820572291914966

`lt[A107286(n), A001222(A028310(n))]`
-/

namespace A091375.P18352820572291914966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091375.P18352820572291914966

namespace A091375

/-- `lt[A107286(n), A001222(A028310(n))]` -/
def P18352820572291914966.Spec : Prop :=
  ∀ n, (P18352820572291914966.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P701804535526731491

`A020725(lt[A074828(n+1), A001222(n+1)])`
-/

namespace A091375.P701804535526731491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091375.P701804535526731491

namespace A091375

/-- `A020725(lt[A074828(n+1), A001222(n+1)])` -/
def P701804535526731491.Spec : Prop :=
  ∀ n, P701804535526731491.a n = A091375 (n + 1)

end A091375

/-! ## A091375.P266173826721976877

`lt[A102457(n+2), A302037(A302025(n+1))]+1`
-/

namespace A091375.P266173826721976877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A302025 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P266173826721976877

namespace A091375

/-- `lt[A102457(n+2), A302037(A302025(n+1))]+1` -/
def P266173826721976877.Spec : Prop :=
  ∀ n, (P266173826721976877.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P10340803186138781200

`lt[A091371(A233583(n+1)), 0]`
-/

namespace A091375.P10340803186138781200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091375.P10340803186138781200

namespace A091375

/-- `lt[A091371(A233583(n+1)), 0]` -/
def P10340803186138781200.Spec : Prop :=
  ∀ n, (P10340803186138781200.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P9958082198220437766

`eq[0, A340369(A079097(n))]+1`
-/

namespace A091375.P9958082198220437766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A079097 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091375.P9958082198220437766

namespace A091375

/-- `eq[0, A340369(A079097(n))]+1` -/
def P9958082198220437766.Spec : Prop :=
  ∀ n, (P9958082198220437766.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P18219744063086525125

`lt[A010712(n), A001222(n^ceil(atan(n)))]`
-/

namespace A091375.P18219744063086525125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091375.P18219744063086525125

namespace A091375

/-- `lt[A010712(n), A001222(n^ceil(atan(n)))]` -/
def P18219744063086525125.Spec : Prop :=
  ∀ n, (P18219744063086525125.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P11569510814913519587

`lt[A010717(n), A001222(n^ceil(atan(n)))]`
-/

namespace A091375.P11569510814913519587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091375.P11569510814913519587

namespace A091375

/-- `lt[A010717(n), A001222(n^ceil(atan(n)))]` -/
def P11569510814913519587.Spec : Prop :=
  ∀ n, (P11569510814913519587.a n : ℤ) = A091375 (n + 1)

end A091375

/-! ## A091375.P5170305065608999791

`lt[A010718(n), A001222(n^ceil(atan(n)))]`
-/

namespace A091375.P5170305065608999791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091375.P5170305065608999791

namespace A091375

/-- `lt[A010718(n), A001222(n^ceil(atan(n)))]` -/
def P5170305065608999791.Spec : Prop :=
  ∀ n, (P5170305065608999791.a n : ℤ) = A091375 (n + 1)

end A091375

/-!
# A091376: Numbers k with property that the number of prime factors of k (counted with repetition) equals the smallest prime factor of k.

The programs for A091376, the canonical program `A091376.P15693337225525266427` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091376 has offset 1).

The definition of A091376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6063 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091376.P15693337225525266427

`eq[A001222(n+2), A020639(n+2)]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A091376

/-- `eq[A001222(n+2), A020639(n+2)]+2` -/
def P15693337225525266427.Spec : Prop :=
  ∀ n, (P15693337225525266427.a n : ℤ) = A091376 (n + 1)

theorem P15693337225525266427.correct : P15693337225525266427.Spec := by
  intro n
  simp only [A091376, Nat.add_sub_cancel]

end A091376

/-! ## A091376.P9462504775625181344

`fp[A091373(n+1)]+1`
-/

namespace A091376.P9462504775625181344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A091376.P9462504775625181344

namespace A091376

/-- `fp[A091373(n+1)]+1` -/
def P9462504775625181344.Spec : Prop :=
  ∀ n, (P9462504775625181344.a n : ℤ) = A091376 (n + 1)

end A091376

/-! ## A091376.P5874675589379966479

`eq[0, A091371(n+1)]+1`
-/

namespace A091376.P5874675589379966479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091376.P5874675589379966479

namespace A091376

/-- `eq[0, A091371(n+1)]+1` -/
def P5874675589379966479.Spec : Prop :=
  ∀ n, (P5874675589379966479.a n : ℤ) = A091376 (n + 1)

end A091376

/-! ## A091376.P408334072452398466

`eq[A020639(n+1), ∑{e}[n+1, #]]+1`
-/

namespace A091376.P408334072452398466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A091376.P408334072452398466

namespace A091376

/-- `eq[A020639(n+1), ∑{e}[n+1, #]]+1` -/
def P408334072452398466.Spec : Prop :=
  ∀ n, (P408334072452398466.a n : ℤ) = A091376 (n + 1)

end A091376

/-! ## A091376.P18325817813087338455

`eq[A105560(n+1), A105574(n+1)]+1`
-/

namespace A091376.P18325817813087338455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091376.P18325817813087338455

namespace A091376

/-- `eq[A105560(n+1), A105574(n+1)]+1` -/
def P18325817813087338455.Spec : Prop :=
  ∀ n, (P18325817813087338455.a n : ℤ) = A091376 (n + 1)

end A091376

/-! ## A091376.P6710467014697931375

`eq[A057237(n+1), A252736(n+1)]+1`
-/

namespace A091376.P6710467014697931375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091376.P6710467014697931375

namespace A091376

/-- `eq[A057237(n+1), A252736(n+1)]+1` -/
def P6710467014697931375.Spec : Prop :=
  ∀ n, (P6710467014697931375.a n : ℤ) = A091376 (n + 1)

end A091376

/-! ## A091376.P13351906067659828773

`A020725(eq[A001222(n+1), A020639(n+1)])`
-/

namespace A091376.P13351906067659828773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091376.P13351906067659828773

namespace A091376

/-- `A020725(eq[A001222(n+1), A020639(n+1)])` -/
def P13351906067659828773.Spec : Prop :=
  ∀ n, P13351906067659828773.a n = A091376 (n + 1)

end A091376

/-! ## A091376.P6830033198161461292

`lt[A091371(A233583(n+1))², 1]`
-/

namespace A091376.P6830033198161461292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (A233583 (n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091376.P6830033198161461292

namespace A091376

/-- `lt[A091371(A233583(n+1))², 1]` -/
def P6830033198161461292.Spec : Prop :=
  ∀ n, (P6830033198161461292.a n : ℤ) = A091376 (n + 1)

end A091376

/-!
# A091377: Numbers having fewer prime factors than the value of their smallest prime factor.

The programs for A091377, the canonical program `A091377.P7351627192632326884` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091377 has offset 1).

The definition of A091377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091377.P295625741799147140

`lt[A001222(1+n), A020639(n+1)]+1`
-/

namespace A091377.P295625741799147140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091377.P295625741799147140

namespace A091377

/-- `lt[A001222(1+n), A020639(n+1)]+1` -/
def P295625741799147140.Spec : Prop :=
  ∀ n, (P295625741799147140.a n : ℤ) = A091377 (n + 1)

end A091377

/-! ## A091377.P7351627192632326884

`lt[A001222(n+1), A074828(n+1)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A091377

/-- `lt[A001222(n+1), A074828(n+1)]+1` -/
def P7351627192632326884.Spec : Prop :=
  ∀ n, (P7351627192632326884.a n : ℤ) = A091377 (n + 1)

theorem P7351627192632326884.correct : P7351627192632326884.Spec := by
  intro n
  simp only [A091377, Nat.add_sub_cancel]

end A091377

/-! ## A091377.P11120110511740766364

`A141310(lt[A001222(n+1), A020639(n+1)])`
-/

namespace A091377.P11120110511740766364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091377.P11120110511740766364

namespace A091377

/-- `A141310(lt[A001222(n+1), A020639(n+1)])` -/
def P11120110511740766364.Spec : Prop :=
  ∀ n, P11120110511740766364.a n = A091377 (n + 1)

end A091377

/-! ## A091377.P3311487811781268346

`lt[A001222(n+1), A102457(n+2)]+1`
-/

namespace A091377.P3311487811781268346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091377.P3311487811781268346

namespace A091377

/-- `lt[A001222(n+1), A102457(n+2)]+1` -/
def P3311487811781268346.Spec : Prop :=
  ∀ n, (P3311487811781268346.a n : ℤ) = A091377 (n + 1)

end A091377

/-! ## A091377.P11825149896257036374

`fp[A091374(n+1)]+1`
-/

namespace A091377.P11825149896257036374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A091377.P11825149896257036374

namespace A091377

/-- `fp[A091374(n+1)]+1` -/
def P11825149896257036374.Spec : Prop :=
  ∀ n, (P11825149896257036374.a n : ℤ) = A091377 (n + 1)

end A091377

/-! ## A091377.P2141721586390355304

`lt[0, A091371(n+1)]+1`
-/

namespace A091377.P2141721586390355304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A091377.P2141721586390355304

namespace A091377

/-- `lt[0, A091371(n+1)]+1` -/
def P2141721586390355304.Spec : Prop :=
  ∀ n, (P2141721586390355304.a n : ℤ) = A091377 (n + 1)

end A091377

/-! ## A091377.P14681469383264967317

`lt[∑{e}[n+1, #], A020639(∏{p}[n+1, #])]+1`
-/

namespace A091377.P14681469383264967317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f4 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A091377.P14681469383264967317

namespace A091377

/-- `lt[∑{e}[n+1, #], A020639(∏{p}[n+1, #])]+1` -/
def P14681469383264967317.Spec : Prop :=
  ∀ n, (P14681469383264967317.a n : ℤ) = A091377 (n + 1)

end A091377

/-! ## A091377.P10940923363919368967

`eq[1, A342007(A068794(n+1))]+1`
-/

namespace A091377.P10940923363919368967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (A068794 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091377.P10940923363919368967

namespace A091377

/-- `eq[1, A342007(A068794(n+1))]+1` -/
def P10940923363919368967.Spec : Prop :=
  ∀ n, (P10940923363919368967.a n : ℤ) = A091377 (n + 1)

end A091377

/-! ## A091377.P11080618394564889735

`lt[Δ[A022559(n)], A020639(n+1)]+1`
-/

namespace A091377.P11080618394564889735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A091377.P11080618394564889735

namespace A091377

/-- `lt[Δ[A022559(n)], A020639(n+1)]+1` -/
def P11080618394564889735.Spec : Prop :=
  ∀ n, (P11080618394564889735.a n : ℤ) = A091377 (n + 1)

end A091377

/-! ## A091377.P11518824850657196184

`lt[A302037(A302025(n+1)), A102457(n+2)]+1`
-/

namespace A091377.P11518824850657196184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A302025 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091377.P11518824850657196184

namespace A091377

/-- `lt[A302037(A302025(n+1)), A102457(n+2)]+1` -/
def P11518824850657196184.Spec : Prop :=
  ∀ n, (P11518824850657196184.a n : ℤ) = A091377 (n + 1)

end A091377

/-! ## A091377.P16427693636716335052

`eq[A008574(A304442(n)), A145154(n)]`
-/

namespace A091377.P16427693636716335052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A304442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091377.P16427693636716335052

namespace A091377

/-- `eq[A008574(A304442(n)), A145154(n)]` -/
def P16427693636716335052.Spec : Prop :=
  ∀ n, (P16427693636716335052.a n : ℤ) = A091377 (n + 1)

end A091377

/-!
# A091378: Triangle read by rows: T(m,n) = number of weak factorization systems (trivial Quillen model structures) on the poset of order-preserving maps from [m] to [n+1] (where [m] denotes the total order on m objects), viewed as a category.

The programs for A091378, there is no canonical definition to state claims against.
-/

/-! ## A091378.P2277292533159273540

`A264978(A000108(A007318(n)))`
-/

namespace A091378.P2277292533159273540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A000108 (A007318 n).toNat).toNat

end

end A091378.P2277292533159273540

/-! ## A091378.P11055005916261016471

`A060854(n+1)+A004247(A007318(A009963(n)))`
-/

namespace A091378.P11055005916261016471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (n + 1) + A004247 (A007318 (A009963 n).toNat).toNat

end

end A091378.P11055005916261016471

/-!
# A091379: a(n) = Product_{ p | n } (1 + Legendre(-1,p) ).

The programs for A091379, the canonical program `A091379.P16306344978850964276` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091379 has offset 1).

The definition of A091379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091379.P16306344978850964276

`∏{p}[1+n, and(2, -#)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091379

/-- `∏{p}[1+n, and(2, -#)]` -/
def P16306344978850964276.Spec : Prop :=
  ∀ n, P16306344978850964276.a n = A091379 (n + 1)

theorem P16306344978850964276.correct : P16306344978850964276.Spec := by
  intro n
  simp only [A091379, Nat.add_sub_cancel]

end A091379

/-! ## A091379.P8388461131369610

`∏{p}[n+1, (#²+#)%4]`
-/

namespace A091379.P8388461131369610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p ^ 2 + p) % 4

end

end A091379.P8388461131369610

namespace A091379

/-- `∏{p}[n+1, (#²+#)%4]` -/
def P8388461131369610.Spec : Prop :=
  ∀ n, (P8388461131369610.a n : ℤ) = A091379 (n + 1)

end A091379

/-! ## A091379.P11744329804828147251

`(1+n%2)*∏{p}[n+1, 3-#%4]`
-/

namespace A091379.P11744329804828147251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 + n % 2 : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), (3 - ((p % 4 : ℕ) : ℤ)))

end

end A091379.P11744329804828147251

namespace A091379

/-- `(1+n%2)*∏{p}[n+1, 3-#%4]` -/
def P11744329804828147251.Spec : Prop :=
  ∀ n, P11744329804828147251.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P15626235050162085917

`A000095(∏{p}[1+n, #])`
-/

namespace A091379.P15626235050162085917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091379.P15626235050162085917

namespace A091379

/-- `A000095(∏{p}[1+n, #])` -/
def P15626235050162085917.Spec : Prop :=
  ∀ n, P15626235050162085917.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P3868233110605426032

`A035184(∏{p}[n+1, #])`
-/

namespace A091379.P3868233110605426032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091379.P3868233110605426032

namespace A091379

/-- `A035184(∏{p}[n+1, #])` -/
def P3868233110605426032.Spec : Prop :=
  ∀ n, P3868233110605426032.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P5052792975264612828

`A134013(∏{p}[n+1, #])`
-/

namespace A091379.P5052792975264612828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134013 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091379.P5052792975264612828

namespace A091379

/-- `A134013(∏{p}[n+1, #])` -/
def P5052792975264612828.Spec : Prop :=
  ∀ n, P5052792975264612828.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P12022094086525635601

`A000034(n)*A091400(n+1)`
-/

namespace A091379.P12022094086525635601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A091400 (n + 1)

end

end A091379.P12022094086525635601

namespace A091379

/-- `A000034(n)*A091400(n+1)` -/
def P12022094086525635601.Spec : Prop :=
  ∀ n, P12022094086525635601.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P2705298319612930803

`A068073(n)*A091400(n+1)`
-/

namespace A091379.P2705298319612930803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 n * A091400 (n + 1)

end

end A091379.P2705298319612930803

namespace A091379

/-- `A068073(n)*A091400(n+1)` -/
def P2705298319612930803.Spec : Prop :=
  ∀ n, P2705298319612930803.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P12895410242410226638

`A071222(n)*A091400(n+1)`
-/

namespace A091379.P12895410242410226638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n * A091400 (n + 1)

end

end A091379.P12895410242410226638

namespace A091379

/-- `A071222(n)*A091400(n+1)` -/
def P12895410242410226638.Spec : Prop :=
  ∀ n, P12895410242410226638.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P12145511383855958781

`A091400(n+1)*A177002(n)`
-/

namespace A091379.P12145511383855958781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1) * A177002 n

end

end A091379.P12145511383855958781

namespace A091379

/-- `A091400(n+1)*A177002(n)` -/
def P12145511383855958781.Spec : Prop :=
  ∀ n, P12145511383855958781.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P4003126436914331031

`A091400(n+1)*A343180(n)`
-/

namespace A091379.P4003126436914331031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1) * A343180 n

end

end A091379.P4003126436914331031

namespace A091379

/-- `A091400(n+1)*A343180(n)` -/
def P4003126436914331031.Spec : Prop :=
  ∀ n, P4003126436914331031.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P6103987531813369529

`∏{p}[n+1, A078458(A078458(#))]`
-/

namespace A091379.P6103987531813369529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A078458 (A078458 p).toNat

end

end A091379.P6103987531813369529

namespace A091379

/-- `∏{p}[n+1, A078458(A078458(#))]` -/
def P6103987531813369529.Spec : Prop :=
  ∀ n, P6103987531813369529.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P7593707755631973269

`A053589(n+1)*A091400(n+1)`
-/

namespace A091379.P7593707755631973269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (n + 1) * A091400 (n + 1)

end

end A091379.P7593707755631973269

namespace A091379

/-- `A053589(n+1)*A091400(n+1)` -/
def P7593707755631973269.Spec : Prop :=
  ∀ n, P7593707755631973269.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P9226565827190254595

`A055770(n+1)*A091400(n+1)`
-/

namespace A091379.P9226565827190254595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055770 (n + 1) * A091400 (n + 1)

end

end A091379.P9226565827190254595

namespace A091379

/-- `A055770(n+1)*A091400(n+1)` -/
def P9226565827190254595.Spec : Prop :=
  ∀ n, P9226565827190254595.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P5582164135063735000

`A055874(n+1)*A091400(n+1)`
-/

namespace A091379.P5582164135063735000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (n + 1) * A091400 (n + 1)

end

end A091379.P5582164135063735000

namespace A091379

/-- `A055874(n+1)*A091400(n+1)` -/
def P5582164135063735000.Spec : Prop :=
  ∀ n, P5582164135063735000.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P4824303863823344208

`A055881(n+1)*A091400(n+1)`
-/

namespace A091379.P4824303863823344208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1) * A091400 (n + 1)

end

end A091379.P4824303863823344208

namespace A091379

/-- `A055881(n+1)*A091400(n+1)` -/
def P4824303863823344208.Spec : Prop :=
  ∀ n, P4824303863823344208.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P17666780474235773106

`A062356(n+1)*A091400(n+1)`
-/

namespace A091379.P17666780474235773106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062356 (n + 1) * A091400 (n + 1)

end

end A091379.P17666780474235773106

namespace A091379

/-- `A062356(n+1)*A091400(n+1)` -/
def P17666780474235773106.Spec : Prop :=
  ∀ n, P17666780474235773106.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P13807668033256510110

`A083039(n+1)*A091400(n+1)`
-/

namespace A091379.P13807668033256510110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083039 (n + 1) * A091400 (n + 1)

end

end A091379.P13807668033256510110

namespace A091379

/-- `A083039(n+1)*A091400(n+1)` -/
def P13807668033256510110.Spec : Prop :=
  ∀ n, P13807668033256510110.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P6624612082965302832

`A091400(n+1)*A232098(n+1)`
-/

namespace A091379.P6624612082965302832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1) * A232098 (n + 1)

end

end A091379.P6624612082965302832

namespace A091379

/-- `A091400(n+1)*A232098(n+1)` -/
def P6624612082965302832.Spec : Prop :=
  ∀ n, P6624612082965302832.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P15640807281495665258

`A091400(n+1)*A235918(n+1)`
-/

namespace A091379.P15640807281495665258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1) * A235918 (n + 1)

end

end A091379.P15640807281495665258

namespace A091379

/-- `A091400(n+1)*A235918(n+1)` -/
def P15640807281495665258.Spec : Prop :=
  ∀ n, P15640807281495665258.a n = A091379 (n + 1)

end A091379

/-!
# A091380: Largest quadratic "mixed" residue modulo the n-th prime (LQxR(p_n)).

The programs for A091380, there is no canonical definition to state claims against.
-/

/-! ## A091380.P3602618231802238938

`A091381(n)+a(n-1)` with `a(0)=1`
-/

namespace A091380.P3602618231802238938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091381 n + a (n - 1)

end

end A091380.P3602618231802238938

/-! ## A091380.P5500277137400219537

`A000040(n+1)-A091382(n+1)`
-/

namespace A091380.P5500277137400219537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A091382 (n + 1)

end

end A091380.P5500277137400219537

/-! ## A091380.P18050955285652802443

`A216883(1+n)-A091382(n+1)`
-/

namespace A091380.P18050955285652802443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (1 + n) - A091382 (n + 1)

end

end A091380.P18050955285652802443

/-! ## A091380.P15660978443181586797

`A216884(n+1)-A091382(n+1)`
-/

namespace A091380.P15660978443181586797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1) - A091382 (n + 1)

end

end A091380.P15660978443181586797

/-! ## A091380.P5107806272937874105

`A216886(n+1)-A091382(n+1)`
-/

namespace A091380.P5107806272937874105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216886 (n + 1) - A091382 (n + 1)

end

end A091380.P5107806272937874105

/-! ## A091380.P7390811988055910384

`A385492(n+1)-A091382(n+1)`
-/

namespace A091380.P7390811988055910384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1) - A091382 (n + 1)

end

end A091380.P7390811988055910384

/-! ## A091380.P2304359084084988712

`A088192(n+1)+A088190(n+1)-A091382(n+1)`
-/

namespace A091380.P2304359084084988712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088192 (n + 1) + A088190 (n + 1) - A091382 (n + 1)

end

end A091380.P2304359084084988712

/-!
# A091381: First differences of A091380.

The programs for A091381, there is no canonical definition to state claims against.
-/

/-! ## A091381.P12432796987474864857

`Δ[A000040(n+1)-A091382(n+1)]`
-/

namespace A091381.P12432796987474864857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P12432796987474864857

/-! ## A091381.P10812146371429786531

`A001223(n+1)-Δ[A091382(n+1)]`
-/

namespace A091381.P10812146371429786531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (f1 (n + 1) - f1 n)

end

end A091381.P10812146371429786531

/-! ## A091381.P18011358149356220616

`Δ[A006093(n+1)-A091382(n+1)]`
-/

namespace A091381.P18011358149356220616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P18011358149356220616

/-! ## A091381.P6593474019551903879

`Δ[A008864(n+1)-A091382(n+1)]`
-/

namespace A091381.P6593474019551903879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P6593474019551903879

/-! ## A091381.P11063985630461907302

`Δ[A028815(n+1)-A091382(n+1)]`
-/

namespace A091381.P11063985630461907302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P11063985630461907302

/-! ## A091381.P8110593154195439534

`Δ[A040976(n+1)-A091382(n+1)]`
-/

namespace A091381.P8110593154195439534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P8110593154195439534

/-! ## A091381.P7399905449721722633

`Δ[A052147(n+1)-A091382(n+1)]`
-/

namespace A091381.P7399905449721722633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P7399905449721722633

/-! ## A091381.P430063868791841005

`Δ[A139049(n+1)-A091382(n+1)]`
-/

namespace A091381.P430063868791841005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P430063868791841005

/-! ## A091381.P5024142933668822305

`Δ[A140353(n+1)-A091382(n+1)]`
-/

namespace A091381.P5024142933668822305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P5024142933668822305

/-! ## A091381.P9312181718860667165

`Δ[A000040(n+1)-(A053760(n+1)-C(2, n+2))]`
-/

namespace A091381.P9312181718860667165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A053760 (n + 1) - (Nat.choose 2 (n + 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P9312181718860667165

/-!
# A091382: Distance between the sequence of primes and the largest "mixed" quadratic residues modulo the primes (A091380).

The programs for A091382, there is no canonical definition to state claims against.
-/

/-! ## A091382.P11487245853779965273

`min(A053760(n+1), n+1)`
-/

namespace A091382.P11487245853779965273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A053760 (n + 1)) (n + 1 : ℤ)

end

end A091382.P11487245853779965273

/-! ## A091382.P10313647690890847861

`A053760(a(2%n)+n-1)` with `a(0)=1`
-/

namespace A091382.P10313647690890847861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053760 (a (2 % n) + (n : ℤ) - 1).toNat

end

end A091382.P10313647690890847861

/-! ## A091382.P2741385602373207774

`A053760(1+n)-A000007(n)`
-/

namespace A091382.P2741385602373207774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (1 + n) - A000007 n

end

end A091382.P2741385602373207774

/-! ## A091382.P7498879780657678382

`A053760(n+1)/A054977(n)`
-/

namespace A091382.P7498879780657678382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A091382.P7498879780657678382

/-! ## A091382.P18267561198128947455

`A053760(n+1)/A000038(n)!`
-/

namespace A091382.P18267561198128947455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A091382.P18267561198128947455

/-! ## A091382.P12703035230497699130

`A053760(n+1)-A036987(2*n)`
-/

namespace A091382.P12703035230497699130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A036987 (2 * n)

end

end A091382.P12703035230497699130

/-! ## A091382.P152720084468945719

`A053760(n+1)-A010051(2*(n+1))`
-/

namespace A091382.P152720084468945719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A010051 (2 * (n + 1))

end

end A091382.P152720084468945719

/-! ## A091382.P4488636512532042365

`A053760(n+1)-A008683(A008574(n))`
-/

namespace A091382.P4488636512532042365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A008683 (A008574 n).toNat

end

end A091382.P4488636512532042365

/-! ## A091382.P11011159806233270613

`A053760(n+1)^A001221(A001316(n))`
-/

namespace A091382.P11011159806233270613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 1) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A091382.P11011159806233270613

/-! ## A091382.P17639750930506014883

`A053760(n+1)+A008683(2*A008574(n))`
-/

namespace A091382.P17639750930506014883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) + A008683 (2 * A008574 n).toNat

end

end A091382.P17639750930506014883

/-! ## A091382.P7819678811448366247

`A053760(n+1)-A010052(A010052(n)+n)`
-/

namespace A091382.P7819678811448366247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A010052 (A010052 n + (n : ℤ)).toNat

end

end A091382.P7819678811448366247

/-! ## A091382.P6594434649179989997

`A053760(n+1)-A008683(A000118(n))`
-/

namespace A091382.P6594434649179989997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A008683 (A000118 n).toNat

end

end A091382.P6594434649179989997

/-! ## A091382.P7971749460751389745

`A053760(n+1)/A014963(4*n+2)`
-/

namespace A091382.P7971749460751389745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 1) : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A091382.P7971749460751389745

/-! ## A091382.P5071502145556056299

`A053760(n+1)+A008683(2*A000118(n))`
-/

namespace A091382.P5071502145556056299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) + A008683 (2 * A000118 n).toNat

end

end A091382.P5071502145556056299

/-! ## A091382.P14387651827717129762

`A227196(A000040(n+1))-A000007(n)`
-/

namespace A091382.P14387651827717129762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A000040 (n + 1)).toNat - A000007 n

end

end A091382.P14387651827717129762

/-! ## A091382.P6894910250946754453

`A402416(A000040(n+1))`
-/

namespace A091382.P6894910250946754453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402416 (A000040 (n + 1)).toNat

end

end A091382.P6894910250946754453

/-! ## A091382.P4447545094787241220

`∑{p}[A001749(n+1), A227195(#)]`
-/

namespace A091382.P4447545094787241220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A227195 p

end

end A091382.P4447545094787241220

/-! ## A091382.P4607311566006095090

`∑{p}[A100484(n+1), A227195(#)]`
-/

namespace A091382.P4607311566006095090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A227195 p

end

end A091382.P4607311566006095090

/-! ## A091382.P15927962288825970624

`∏{p}[A073579(n+1), A020649(#)]`
-/

namespace A091382.P15927962288825970624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020649 p

end

end A091382.P15927962288825970624

/-! ## A091382.P9120553648112260238

`gcd(A053760(n+1), A364878(n))`
-/

namespace A091382.P9120553648112260238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053760 (n + 1)) (A364878 n)

end

end A091382.P9120553648112260238

/-!
# A091383: Prime numbers where the sequence of largest quadratic "mixed" residues modulo the primes (A091380) is non-monotonic.

The programs for A091383, there is no canonical definition to state claims against.
-/

/-! ## A091383.P17100282605243047370

`A088193(n+1)`
-/

namespace A091383.P17100282605243047370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088193 (n + 1)

end

end A091383.P17100282605243047370

/-!
# A091386: Solution to the merit factor problem.

The programs for A091386, there is no canonical definition to state claims against.
-/

/-! ## A091386.P9408258111794640003

`A102780(n+2)+(n+2)²`
-/

namespace A091386.P9408258111794640003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102780 (n + 2) + ((n + 2) ^ 2 : ℤ)

end

end A091386.P9408258111794640003

/-! ## A091386.P3581766196500367233

`A005563(n+1)+A102780(n+2)+1`
-/

namespace A091386.P3581766196500367233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) + (A102780 (n + 2) + 1)

end

end A091386.P3581766196500367233

/-! ## A091386.P7311819764271917737

`A396834(2*(n+2))+A102780(n+2)`
-/

namespace A091386.P7311819764271917737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396834 (2 * (n + 2)) + A102780 (n + 2)

end

end A091386.P7311819764271917737

/-! ## A091386.P13876960707138065989

`∑[A144396(n+1)]+A102780(n+2)+1`
-/

namespace A091386.P13876960707138065989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A102780 (n + 2) + 1)

end

end A091386.P13876960707138065989

/-! ## A091386.P18006977297805494788

`A054000(n+2)/2+A102780(n+2)+1`
-/

namespace A091386.P18006977297805494788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054000 (n + 2) : ℚ) / 2 + (A102780 (n + 2) + 1 : ℚ)

end

end A091386.P18006977297805494788

/-! ## A091386.P1625409466428245162

`A120070(A000217(n)+2)+A102780(n+2)+1`
-/

namespace A091386.P1625409466428245162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A000217 n + 2).toNat + (A102780 (n + 2) + 1)

end

end A091386.P1625409466428245162

/-! ## A091386.P15873145024737041054

`A000217(n+1)+A102780(n+2)+A000217(n+2)`
-/

namespace A091386.P15873145024737041054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A102780 (n + 2) + A000217 (n + 2))

end

end A091386.P15873145024737041054

/-!
# A091392: Product_{ p | n } (1 + Legendre(-2,p) ).

The programs for A091392, the canonical program `A091392.P8226475476831796896` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091392 has offset 1).

The definition of A091392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091392.P8226475476831796896

`∏{p}[1+n, C(2, and(5, #))]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091392

/-- `∏{p}[1+n, C(2, and(5, #))]` -/
def P8226475476831796896.Spec : Prop :=
  ∀ n, (P8226475476831796896.a n : ℤ) = A091392 (n + 1)

theorem P8226475476831796896.correct : P8226475476831796896.Spec := by
  intro n
  simp only [A091392, Nat.add_sub_cancel]

end A091392

/-! ## A091392.P3608139376257352573

`A002325(∏{p}[1+n, #])`
-/

namespace A091392.P3608139376257352573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091392.P3608139376257352573

namespace A091392

/-- `A002325(∏{p}[1+n, #])` -/
def P3608139376257352573.Spec : Prop :=
  ∀ n, P3608139376257352573.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P3831188890326093949

`A352564(∏{p}[n+1, #])`
-/

namespace A091392.P3831188890326093949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352564 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091392.P3831188890326093949

namespace A091392

/-- `A352564(∏{p}[n+1, #])` -/
def P3831188890326093949.Spec : Prop :=
  ∀ n, P3831188890326093949.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P4940694157447503214

`∑{d}[∏{p}[n+1, #], A188510(#)]`
-/

namespace A091392.P4940694157447503214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188510 d

end

end A091392.P4940694157447503214

namespace A091392

/-- `∑{d}[∏{p}[n+1, #], A188510(#)]` -/
def P4940694157447503214.Spec : Prop :=
  ∀ n, P4940694157447503214.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P10787215540872345180

`A125096(A204455(n+1))`
-/

namespace A091392.P10787215540872345180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A204455 (n + 1)).toNat

end

end A091392.P10787215540872345180

namespace A091392

/-- `A125096(A204455(n+1))` -/
def P10787215540872345180.Spec : Prop :=
  ∀ n, P10787215540872345180.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P5646308273025328978

`A129134(A099985(n+1))`
-/

namespace A091392.P5646308273025328978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (A099985 (n + 1)).toNat

end

end A091392.P5646308273025328978

namespace A091392

/-- `A129134(A099985(n+1))` -/
def P5646308273025328978.Spec : Prop :=
  ∀ n, P5646308273025328978.a n = A091392 (n + 1)

end A091392

/-!
# A091393: a(n) = Product_{ p | n } (1 + Legendre(-3,p) ).

The programs for A091393, the canonical program `A091393.P16381459764746264708` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091393 has offset 1).

The definition of A091393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091393.P16381459764746264708

`∏{p}[1+n, (#+1)%3]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091393

/-- `∏{p}[1+n, (#+1)%3]` -/
def P16381459764746264708.Spec : Prop :=
  ∀ n, (P16381459764746264708.a n : ℤ) = A091393 (n + 1)

theorem P16381459764746264708.correct : P16381459764746264708.Spec := by
  intro n
  simp only [A091393, Nat.add_sub_cancel]

end A091393

/-! ## A091393.P11611392243247397010

`A351266(n+1)%9`
-/

namespace A091393.P11611392243247397010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351266 (n + 1)) 9

end

end A091393.P11611392243247397010

namespace A091393

/-- `A351266(n+1)%9` -/
def P11611392243247397010.Spec : Prop :=
  ∀ n, P11611392243247397010.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P16607585762881302329

`∑{d}[1+n, A319448(#)]`
-/

namespace A091393.P16607585762881302329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319448 d

end

end A091393.P16607585762881302329

namespace A091393

/-- `∑{d}[1+n, A319448(#)]` -/
def P16607585762881302329.Spec : Prop :=
  ∀ n, P16607585762881302329.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P5953091294393181285

`A000086(∏{p}[n+1, #])`
-/

namespace A091393.P5953091294393181285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091393.P5953091294393181285

namespace A091393

/-- `A000086(∏{p}[n+1, #])` -/
def P5953091294393181285.Spec : Prop :=
  ∀ n, P5953091294393181285.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P1543959251824665790

`A002324(∏{p}[1+n, #])`
-/

namespace A091393.P1543959251824665790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091393.P1543959251824665790

namespace A091393

/-- `A002324(∏{p}[1+n, #])` -/
def P1543959251824665790.Spec : Prop :=
  ∀ n, P1543959251824665790.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P12704067199233345127

`∏{p}[n+1, A055668(#)]`
-/

namespace A091393.P12704067199233345127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A055668 p

end

end A091393.P12704067199233345127

namespace A091393

/-- `∏{p}[n+1, A055668(#)]` -/
def P12704067199233345127.Spec : Prop :=
  ∀ n, P12704067199233345127.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P12773760451406343405

`∏{p}[n+1, A074941(#)]`
-/

namespace A091393.P12773760451406343405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A074941 p

end

end A091393.P12773760451406343405

namespace A091393

/-- `∏{p}[n+1, A074941(#)]` -/
def P12773760451406343405.Spec : Prop :=
  ∀ n, P12773760451406343405.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P1793110662334138030

`A096936(∏{p}[n+1, #])`
-/

namespace A091393.P1793110662334138030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091393.P1793110662334138030

namespace A091393

/-- `A096936(∏{p}[n+1, #])` -/
def P1793110662334138030.Spec : Prop :=
  ∀ n, P1793110662334138030.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P294442018741871663

`A115979(∏{p}[n+1, #])`
-/

namespace A091393.P294442018741871663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091393.P294442018741871663

namespace A091393

/-- `A115979(∏{p}[n+1, #])` -/
def P294442018741871663.Spec : Prop :=
  ∀ n, P294442018741871663.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P15666823089893744681

`A352561(∏{p}[n+1, #])`
-/

namespace A091393.P15666823089893744681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352561 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091393.P15666823089893744681

namespace A091393

/-- `A352561(∏{p}[n+1, #])` -/
def P15666823089893744681.Spec : Prop :=
  ∀ n, P15666823089893744681.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P1426134381155223558

`∏{p}[n+1, A374088(#)]`
-/

namespace A091393.P1426134381155223558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A374088 p

end

end A091393.P1426134381155223558

namespace A091393

/-- `∏{p}[n+1, A374088(#)]` -/
def P1426134381155223558.Spec : Prop :=
  ∀ n, P1426134381155223558.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P9416667051584958225

`ceil((A033716(∏{p}[n+1, #])+1)/2)-1`
-/

namespace A091393.P9416667051584958225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033716 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1 : ℚ) / 2⌉ - 1

end

end A091393.P9416667051584958225

namespace A091393

/-- `ceil((A033716(∏{p}[n+1, #])+1)/2)-1` -/
def P9416667051584958225.Spec : Prop :=
  ∀ n, P9416667051584958225.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P10366520145201575250

`∑{d}[n+1, A343785(#)*A359377((n+1)/#)]`
-/

namespace A091393.P10366520145201575250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343785 d * A359377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091393.P10366520145201575250

namespace A091393

/-- `∑{d}[n+1, A343785(#)*A359377((n+1)/#)]` -/
def P10366520145201575250.Spec : Prop :=
  ∀ n, P10366520145201575250.a n = A091393 (n + 1)

end A091393

/-!
# A091394: a(n) = Product_{ p | n } (1 + Legendre(-5,p) ).

The programs for A091394, the canonical program `A091394.P523604458239879830` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091394 has offset 1).

The definition of A091394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091394.P523604458239879830

`A035183(∏{p}[1+n, #])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A091394

/-- `A035183(∏{p}[1+n, #])` -/
def P523604458239879830.Spec : Prop :=
  ∀ n, P523604458239879830.a n = A091394 (n + 1)

theorem P523604458239879830.correct : P523604458239879830.Spec := by
  intro n
  simp only [A091394, Nat.add_sub_cancel]

end A091394

/-! ## A091394.P278719308489298224

`∏{p}[xor(n, -1), A035183(#)]`
-/

namespace A091394.P278719308489298224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A035183 p

end

end A091394.P278719308489298224

namespace A091394

/-- `∏{p}[xor(n, -1), A035183(#)]` -/
def P278719308489298224.Spec : Prop :=
  ∀ n, P278719308489298224.a n = A091394 (n + 1)

end A091394

/-! ## A091394.P11236288926764893976

`A035170(A007947(n+1))*A059841(n)`
-/

namespace A091394.P11236288926764893976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (A007947 (n + 1)).toNat * A059841 n

end

end A091394.P11236288926764893976

namespace A091394

/-- `A035170(A007947(n+1))*A059841(n)` -/
def P11236288926764893976.Spec : Prop :=
  ∀ n, P11236288926764893976.a n = A091394 (n + 1)

end A091394

/-! ## A091394.P16004171133252585595

`A000035(n+1)*A035170(A007947(n+1))`
-/

namespace A091394.P16004171133252585595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A035170 (A007947 (n + 1)).toNat

end

end A091394.P16004171133252585595

namespace A091394

/-- `A000035(n+1)*A035170(A007947(n+1))` -/
def P16004171133252585595.Spec : Prop :=
  ∀ n, P16004171133252585595.a n = A091394 (n + 1)

end A091394

/-! ## A091394.P18445892774142029023

`A122865(A358126(n))`
-/

namespace A091394.P18445892774142029023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (A358126 n).toNat

end

end A091394.P18445892774142029023

namespace A091394

/-- `A122865(A358126(n))` -/
def P18445892774142029023.Spec : Prop :=
  ∀ n, P18445892774142029023.a n = A091394 (n + 1)

end A091394

/-!
# A091395: a(n) = Product_{ p | n } (1 + Legendre(-7,p) ).

The programs for A091395, the canonical program `A091395.P4279214809057582604` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091395 has offset 1).

The definition of A091395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091395.P4279214809057582604

`A035182(∏{p}[1+n, #])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A091395

/-- `A035182(∏{p}[1+n, #])` -/
def P4279214809057582604.Spec : Prop :=
  ∀ n, P4279214809057582604.a n = A091395 (n + 1)

theorem P4279214809057582604.correct : P4279214809057582604.Spec := by
  intro n
  simp only [A091395, Nat.add_sub_cancel]

end A091395

/-! ## A091395.P7956820409858965262

`A352563(∏{p}[1+n, #])`
-/

namespace A091395.P7956820409858965262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352563 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091395.P7956820409858965262

namespace A091395

/-- `A352563(∏{p}[1+n, #])` -/
def P7956820409858965262.Spec : Prop :=
  ∀ n, P7956820409858965262.a n = A091395 (n + 1)

end A091395

/-! ## A091395.P9536057584863494349

`A002652(∏{p}[1+n, #])/2`
-/

namespace A091395.P9536057584863494349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002652 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) / 2

end

end A091395.P9536057584863494349

namespace A091395

/-- `A002652(∏{p}[1+n, #])/2` -/
def P9536057584863494349.Spec : Prop :=
  ∀ n, P9536057584863494349.a n = (A091395 (n + 1) : ℚ)

end A091395

/-! ## A091395.P12340471055677412360

`A110399(4*A007947(n+1))`
-/

namespace A091395.P12340471055677412360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (4 * A007947 (n + 1)).toNat

end

end A091395.P12340471055677412360

namespace A091395

/-- `A110399(4*A007947(n+1))` -/
def P12340471055677412360.Spec : Prop :=
  ∀ n, P12340471055677412360.a n = A091395 (n + 1)

end A091395

/-! ## A091395.P15442681664894612579

`∏{p}[(n+1)*A000265(n+1), A000701(A002652(#))]`
-/

namespace A091395.P15442681664894612579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000701 (A002652 p).toNat

end

end A091395.P15442681664894612579

namespace A091395

/-- `∏{p}[(n+1)*A000265(n+1), A000701(A002652(#))]` -/
def P15442681664894612579.Spec : Prop :=
  ∀ n, P15442681664894612579.a n = A091395 (n + 1)

end A091395

/-!
# A091396: a(n) = Product_{ p | n } (1 + Legendre(2,p) ).

The programs for A091396, the canonical program `A091396.P7294152822202267081` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091396 has offset 1).

The definition of A091396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091396.P7097042022436338775

`∑{d}[n+1, A091069(#)]`
-/

namespace A091396.P7097042022436338775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091069 d

end

end A091396.P7097042022436338775

namespace A091396

/-- `∑{d}[n+1, A091069(#)]` -/
def P7097042022436338775.Spec : Prop :=
  ∀ n, P7097042022436338775.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P7170954365259231116

`A035185(∏{p}[1+n, #])`
-/

namespace A091396.P7170954365259231116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091396.P7170954365259231116

namespace A091396

/-- `A035185(∏{p}[1+n, #])` -/
def P7170954365259231116.Spec : Prop :=
  ∀ n, P7170954365259231116.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P17290990834758123797

`A087780(∏{p}[1+n, #])`
-/

namespace A091396.P17290990834758123797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091396.P17290990834758123797

namespace A091396

/-- `A087780(∏{p}[1+n, #])` -/
def P17290990834758123797.Spec : Prop :=
  ∀ n, P17290990834758123797.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P8885061387159086956

`∏{p}[n+1, A118917(#)]`
-/

namespace A091396.P8885061387159086956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A118917 p

end

end A091396.P8885061387159086956

namespace A091396

/-- `∏{p}[n+1, A118917(#)]` -/
def P8885061387159086956.Spec : Prop :=
  ∀ n, P8885061387159086956.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P17424129002285894061

`A352551(∏{p}[n+1, #])`
-/

namespace A091396.P17424129002285894061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352551 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091396.P17424129002285894061

namespace A091396

/-- `A352551(∏{p}[n+1, #])` -/
def P17424129002285894061.Spec : Prop :=
  ∀ n, P17424129002285894061.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P7294152822202267081

`∑{d}[∏{p}[n+1, #], A091337(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A091396

/-- `∑{d}[∏{p}[n+1, #], A091337(#)]` -/
def P7294152822202267081.Spec : Prop :=
  ∀ n, P7294152822202267081.a n = A091396 (n + 1)

theorem P7294152822202267081.correct : P7294152822202267081.Spec := by
  intro n
  simp only [A091396, Nat.add_sub_cancel]

end A091396

/-! ## A091396.P12908572830382087161

`∑{d}[n+1, A091337(#)*A353627((n+1)/#)]`
-/

namespace A091396.P12908572830382087161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091337 d * A353627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091396.P12908572830382087161

namespace A091396

/-- `∑{d}[n+1, A091337(#)*A353627((n+1)/#)]` -/
def P12908572830382087161.Spec : Prop :=
  ∀ n, P12908572830382087161.a n = A091396 (n + 1)

end A091396

/-!
# A091397: a(n) = Product_{ p | n } (1 + Legendre(3,p) ).

The programs for A091397, the canonical program `A091397.P17743936242826003512` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091397 has offset 1).

The definition of A091397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091397.P13559661331476554620

`A035186(∏{p}[1+n, #])`
-/

namespace A091397.P13559661331476554620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091397.P13559661331476554620

namespace A091397

/-- `A035186(∏{p}[1+n, #])` -/
def P13559661331476554620.Spec : Prop :=
  ∀ n, P13559661331476554620.a n = A091397 (n + 1)

end A091397

/-! ## A091397.P17743936242826003512

`∑{d}[∏{p}[1+n, #], A091338(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A091397

/-- `∑{d}[∏{p}[1+n, #], A091338(#)]` -/
def P17743936242826003512.Spec : Prop :=
  ∀ n, P17743936242826003512.a n = A091397 (n + 1)

theorem P17743936242826003512.correct : P17743936242826003512.Spec := by
  intro n
  simp only [A091397, Nat.add_sub_cancel]

end A091397

/-! ## A091397.P8981405924541731685

`A000035(n+1)*A035194(abs(∏{p}[2*n-(n-1), -#]))`
-/

namespace A091397.P8981405924541731685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A035194 |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))|.toNat

end

end A091397.P8981405924541731685

namespace A091397

/-- `A000035(n+1)*A035194(abs(∏{p}[2*n-(n-1), -#]))` -/
def P8981405924541731685.Spec : Prop :=
  ∀ n, P8981405924541731685.a n = A091397 (n + 1)

end A091397

/-! ## A091397.P3207797453381206075

`A000035(n+1)*A035194(sqrt(∏{p}[2*n-(n-1), #²]))`
-/

namespace A091397.P3207797453381206075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A035194 (SequenceMachineLib.roundAway (Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2 : ℕ) : ℝ))).toNat

end

end A091397.P3207797453381206075

namespace A091397

/-- `A000035(n+1)*A035194(sqrt(∏{p}[2*n-(n-1), #²]))` -/
def P3207797453381206075.Spec : Prop :=
  ∀ n, P3207797453381206075.a n = A091397 (n + 1)

end A091397

/-! ## A091397.P7214335201969073161

`A000035(n+1)*A035194(∏{d}[n+1, A089026(#)])`
-/

namespace A091397.P7214335201969073161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A035194 (∏ d ∈ Nat.divisors (f1 n), A089026 d).toNat

end

end A091397.P7214335201969073161

namespace A091397

/-- `A000035(n+1)*A035194(∏{d}[n+1, A089026(#)])` -/
def P7214335201969073161.Spec : Prop :=
  ∀ n, P7214335201969073161.a n = A091397 (n + 1)

end A091397

/-!
# A091398: a(n) = Product_{ p | n } (1 + Legendre(5,p) ).

The programs for A091398, the canonical program `A091398.P4964007732348013414` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091398 has offset 1).

The definition of A091398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091398.P4964007732348013414

`∏{p}[n+1, (#²+1)%5]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A091398

/-- `∏{p}[n+1, (#²+1)%5]` -/
def P4964007732348013414.Spec : Prop :=
  ∀ n, (P4964007732348013414.a n : ℤ) = A091398 (n + 1)

theorem P4964007732348013414.correct : P4964007732348013414.Spec := by
  intro n
  simp only [A091398, Nat.add_sub_cancel]

end A091398

/-! ## A091398.P11100733278453410849

`A035187(∏{p}[1+n, #])`
-/

namespace A091398.P11100733278453410849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091398.P11100733278453410849

namespace A091398

/-- `A035187(∏{p}[1+n, #])` -/
def P11100733278453410849.Spec : Prop :=
  ∀ n, P11100733278453410849.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P17899165710558080467

`A087781(∏{p}[1+n, #])`
-/

namespace A091398.P17899165710558080467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087781 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091398.P17899165710558080467

namespace A091398

/-- `A087781(∏{p}[1+n, #])` -/
def P17899165710558080467.Spec : Prop :=
  ∀ n, P17899165710558080467.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P387256264958396475

`A352550(∏{p}[n+1, #])`
-/

namespace A091398.P387256264958396475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352550 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091398.P387256264958396475

namespace A091398

/-- `A352550(∏{p}[n+1, #])` -/
def P387256264958396475.Spec : Prop :=
  ∀ n, P387256264958396475.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P9715117786021912965

`∏{p}[n+1, A374089(#)]`
-/

namespace A091398.P9715117786021912965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A374089 p

end

end A091398.P9715117786021912965

namespace A091398

/-- `∏{p}[n+1, A374089(#)]` -/
def P9715117786021912965.Spec : Prop :=
  ∀ n, P9715117786021912965.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P14485781739234390064

`A010874(A167356(n+1))`
-/

namespace A091398.P14485781739234390064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A167356 (n + 1)).toNat

end

end A091398.P14485781739234390064

namespace A091398

/-- `A010874(A167356(n+1))` -/
def P14485781739234390064.Spec : Prop :=
  ∀ n, P14485781739234390064.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P5895373949190478094

`A010874(A167355(n+1))`
-/

namespace A091398.P5895373949190478094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A167355 (n + 1)).toNat

end

end A091398.P5895373949190478094

namespace A091398

/-- `A010874(A167355(n+1))` -/
def P5895373949190478094.Spec : Prop :=
  ∀ n, P5895373949190478094.a n = A091398 (n + 1)

end A091398

/-!
# A091399: a(n) = Product_{ p | n } (1 + Legendre(7,p) ).

The programs for A091399, the canonical program `A091399.P11724698457450440594` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091399 has offset 1).

The definition of A091399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091399.P15900176021700205576

`A035189(∏{p}[1+n, #])`
-/

namespace A091399.P15900176021700205576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091399.P15900176021700205576

namespace A091399

/-- `A035189(∏{p}[1+n, #])` -/
def P15900176021700205576.Spec : Prop :=
  ∀ n, P15900176021700205576.a n = A091399 (n + 1)

end A091399

/-! ## A091399.P11724698457450440594

`∑{d}[A007947(n+1), A089509(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A091399

/-- `∑{d}[A007947(n+1), A089509(#)]` -/
def P11724698457450440594.Spec : Prop :=
  ∀ n, P11724698457450440594.a n = A091399 (n + 1)

theorem P11724698457450440594.correct : P11724698457450440594.Spec := by
  intro n
  simp only [A091399, Nat.add_sub_cancel]

end A091399

