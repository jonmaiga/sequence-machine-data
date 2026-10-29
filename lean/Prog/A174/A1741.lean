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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
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
import Seq.B004.C003
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A174100: Numbers k such that both 2*k + 1 and 6*k + 1 are prime.

The programs for A174100, there is no canonical definition to state claims against.
-/

/-! ## A174100.P781352128363252243

`floor(A088878(n+1)/2)`
-/

namespace A174100.P781352128363252243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088878 (n + 1) : ℚ) / 2⌋

end

end A174100.P781352128363252243

/-! ## A174100.P6036885717922882573

`floor(A091180(n+1)/6)`
-/

namespace A174100.P6036885717922882573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091180 (n + 1) : ℚ) / 6⌋

end

end A174100.P6036885717922882573

/-! ## A174100.P18137659693128954108

`floor(p?[A001748(n+1)-2]/6)`
-/

namespace A174100.P18137659693128954108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌋

end

end A174100.P18137659693128954108

/-! ## A174100.P2946848530414214971

`floor((p?[A112773(n+1)-2]-1)/3)/2`
-/

namespace A174100.P2946848530414214971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 3⌋ : ℚ) / 2

end

end A174100.P2946848530414214971

/-! ## A174100.P10416405450543561517

`A102781(A091179(n+1))`
-/

namespace A174100.P10416405450543561517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (A091179 (n + 1)).toNat

end

end A174100.P10416405450543561517

/-! ## A174100.P6207834930278239806

`(p?[A153183(n+1)]-1)/2`
-/

namespace A174100.P6207834930278239806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A174100.P6207834930278239806

/-! ## A174100.P11942208711710726847

`floor(p?[A034936(n+1)+2]/2)`
-/

namespace A174100.P11942208711710726847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A174100.P11942208711710726847

/-! ## A174100.P13327686293226704458

`filter[A024899(n+1), A101264(#)]`
-/

namespace A174100.P13327686293226704458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A174100.P13327686293226704458

/-! ## A174100.P3800403152877515823

`∩[A005097(n+1), A024899(n+1)]`
-/

namespace A174100.P3800403152877515823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174100.P3800403152877515823

/-! ## A174100.P3268018554544645670

`∩[A024899(n+1), A102781(n+1)]`
-/

namespace A174100.P3268018554544645670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174100.P3268018554544645670

/-! ## A174100.P6719564919150533549

`(p?[ceil(A000040(n+4)/3)]-1)/2`
-/

namespace A174100.P6719564919150533549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 4) : ℚ) / 3⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A174100.P6719564919150533549

/-! ## A174100.P10667604861187110510

`A116579(A091181(n+1))`
-/

namespace A174100.P10667604861187110510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116579 (A091181 (n + 1)).toNat

end

end A174100.P10667604861187110510

/-! ## A174100.P12394667364704494234

`record[floor(A006530(A062721(n+1))/2)]`
-/

namespace A174100.P12394667364704494234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (A062721 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174100.P12394667364704494234

/-! ## A174100.P2838618195566422376

`eq[A072815(n), A193773(n)]`
-/

namespace A174100.P2838618195566422376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174100.P2838618195566422376

/-! ## A174100.P14269735370869789197

`eq[A072815(n), A281680(n)]`
-/

namespace A174100.P14269735370869789197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174100.P14269735370869789197

/-! ## A174100.P10627101180865851359

`eq[A072815(n), A340101(n)]`
-/

namespace A174100.P10627101180865851359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174100.P10627101180865851359

/-! ## A174100.P11301568837503625898

`eq[A072815(n), A352063(n)]`
-/

namespace A174100.P11301568837503625898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174100.P11301568837503625898

/-! ## A174100.P12396618268820454096

`filter[A005097(n+1), A167021(#)]`
-/

namespace A174100.P12396618268820454096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167021 (f1 j).toNat = 1) n)

end

end A174100.P12396618268820454096

/-!
# A174101: Numbers k such that 2*k+1 and 6*k+1 are both primes of the form 6*m+1.

The programs for A174101, there is no canonical definition to state claims against.
-/

/-! ## A174101.P8629052293315061446

`∩[A174100(n+1), A008585(n)]`
-/

namespace A174101.P8629052293315061446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174101.P8629052293315061446

/-! ## A174101.P6100077842644205214

`∩[A174100(n+1), A286802(n+1)]`
-/

namespace A174101.P6100077842644205214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174101.P6100077842644205214

/-! ## A174101.P8703556982160121247

`∩[A174100(n+1), A297249(n+1)]`
-/

namespace A174101.P8703556982160121247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174101.P8703556982160121247

/-! ## A174101.P424323353396725620

`∩[A026232(n+1), A174100(n+1)]`
-/

namespace A174101.P424323353396725620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174101.P424323353396725620

/-! ## A174101.P17859627173674505466

`∩[A047231(n+1), A174100(n+1)]`
-/

namespace A174101.P17859627173674505466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174101.P17859627173674505466

/-! ## A174101.P9157815650908517982

`filter[A174100(n+1), A079978(#)]`
-/

namespace A174101.P9157815650908517982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A174101.P9157815650908517982

/-! ## A174101.P360435679119536794

`filter[A174100(n+1), A189640(#)]`
-/

namespace A174101.P360435679119536794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189640 (f1 j).toNat = 1) n)

end

end A174101.P360435679119536794

/-! ## A174101.P10858066400399024507

`filter[A174100(n+2), A173857(#)]`
-/

namespace A174101.P10858066400399024507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A174101.P10858066400399024507

/-! ## A174101.P14152496825528038411

`filter[A174100(n+2), A329680(#)]`
-/

namespace A174101.P14152496825528038411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A174101.P14152496825528038411

/-! ## A174101.P12643650906254795962

`floor(p?[A007310(A002476(n+1))]/6)`
-/

namespace A174101.P12643650906254795962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A002476 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌋

end

end A174101.P12643650906254795962

/-! ## A174101.P13611769195753521476

`floor(p?[A032766(A208296(n+1))]/6)`
-/

namespace A174101.P13611769195753521476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A208296 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌋

end

end A174101.P13611769195753521476

/-! ## A174101.P18052596255288715755

`ceil(p?[A032766(A208296(n+2))]/6)-1`
-/

namespace A174101.P18052596255288715755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A208296 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌉ - 1

end

end A174101.P18052596255288715755

/-!
# A174102: Triangle read by rows: T(n, m) = floor(binomial(n+1, m)* binomial(n+2, m)/(2*m+2)), 1 <= m <= n.

The programs for A174102, the canonical program `A174102.P216040353621762505` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174102 has offset 1).

The definition of A174102 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(row(n)+2, col(n)+1)*C(row(n)+3, col(n)+1)/(2*(col(n)+1)+2))` (program `A174102.P216040353621762505`, by `A174102.P216040353621762505.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174102.P216040353621762505

`floor(C(row(n)+2, col(n)+1)*C(row(n)+3, col(n)+1)/(2*(col(n)+1)+2))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174102

/-- `floor(C(row(n)+2, col(n)+1)*C(row(n)+3, col(n)+1)/(2*(col(n)+1)+2))` -/
def P216040353621762505.Spec : Prop :=
  ∀ n, P216040353621762505.a n = A174102 (n + 1)

theorem P216040353621762505.correct : P216040353621762505.Spec := by
  intro n
  simp only [A174102, Nat.add_sub_cancel]

end A174102

/-! ## A174102.P15722752568304188998

`floor(A001263(eq[0, A103451(n)]+1)/2)`
-/

namespace A174102.P15722752568304188998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2⌋

end

end A174102.P15722752568304188998

namespace A174102

/-- `floor(A001263(eq[0, A103451(n)]+1)/2)` -/
def P15722752568304188998.Spec : Prop :=
  ∀ n, P15722752568304188998.a n = A174102 (n + 1)

end A174102

/-! ## A174102.P16183561148167660550

`floor(A001263(lt[1, A001263(n+1)]+1)/2)`
-/

namespace A174102.P16183561148167660550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / 2⌋

end

end A174102.P16183561148167660550

namespace A174102

/-- `floor(A001263(lt[1, A001263(n+1)]+1)/2)` -/
def P16183561148167660550.Spec : Prop :=
  ∀ n, P16183561148167660550.a n = A174102 (n + 1)

end A174102

/-!
# A174103: Number of distinct even values of the (n-1)st difference of permutations of 1..n.

The programs for A174103, there is no canonical definition to state claims against.
-/

/-! ## A174103.P8656371033875210563

`A130803(n+2)-A174104(n+2)`
-/

namespace A174103.P8656371033875210563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130803 (n + 2) - A174104 (n + 2)

end

end A174103.P8656371033875210563

/-!
# A174104: Number of distinct odd values of the (n-1)-st difference of permutations of 1..n.

The programs for A174104, there is no canonical definition to state claims against.
-/

/-! ## A174104.P5917524866393395341

`A130803(n+2)-A174103(n+2)`
-/

namespace A174104.P5917524866393395341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130803 (n + 2) - A174103 (n + 2)

end

end A174104.P5917524866393395341

/-!
# A174107: Expansion of (1/(1-x+x^2))c(x/(1-x+x^2)), c(x) the g.f. of A000108.

The programs for A174107, there is no canonical definition to state claims against.
-/

/-! ## A174107.P10037592636406335155

`A256502(or(1, A150051(n)))`
-/

namespace A174107.P10037592636406335155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (Int.lor 1 (A150051 n)).toNat

end

end A174107.P10037592636406335155

/-! ## A174107.P13123627344535815943

`∑[A110656(A149582(n+1))]`
-/

namespace A174107.P13123627344535815943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A149582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174107.P13123627344535815943

/-!
# A174108: Hankel transform of A174107 and A061639(n+1).

The programs for A174108, there is no canonical definition to state claims against.
-/

/-! ## A174108.P11515197878158434100

`A111815(∑[∑[or(1, n+1)]])`
-/

namespace A174108.P11515197878158434100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111815 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A174108.P11515197878158434100

/-!
# A174109: Triangle read by rows: T(n, k) = c(n, q)/(c(k, q)*c(n-k, q)), where c(n, q) = Product_{j=1..n} (j+q)!/(j-1)! and q = 8.

The programs for A174109, there is no canonical definition to state claims against.
-/

/-! ## A174109.P16348450892962390763

`A111220(A156581(n))`
-/

namespace A174109.P16348450892962390763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111220 (A156581 n).toNat

end

end A174109.P16348450892962390763

/-! ## A174109.P17442727840369969973

`A051119(A257615(n))`
-/

namespace A174109.P17442727840369969973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A257615 n).toNat

end

end A174109.P17442727840369969973

/-! ## A174109.P16614440128786814340

`A008947(A376935(n))`
-/

namespace A174109.P16614440128786814340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008947 (A376935 n).toNat

end

end A174109.P16614440128786814340

/-! ## A174109.P7773784877327653681

`A357981(A060972(n+1))`
-/

namespace A174109.P7773784877327653681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357981 (A060972 (n + 1)).toNat

end

end A174109.P7773784877327653681

/-! ## A174109.P6408524901126225335

`A111220(A329332(n)^A187783(n))`
-/

namespace A174109.P6408524901126225335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111220 (SequenceMachineLib.roundAway ((A329332 n : ℚ) ^ (A187783 n : ℤ))).toNat

end

end A174109.P6408524901126225335

/-!
# A174111: Denominators of the image of a modified Bernoulli-number sequence under the Akiyama-Tanigawa transform.

The programs for A174111, there is no canonical definition to state claims against.
-/

/-! ## A174111.P5305501151704261445

`A051717(n+1)/gcd(n+1, A051717(n+1))`
-/

namespace A174111.P5305501151704261445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051717 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A051717 (n + 1)) : ℚ)

end

end A174111.P5305501151704261445

/-! ## A174111.P14724942041306496978

`lcm(A050932(n), A109395(A027760(n+1)))`
-/

namespace A174111.P14724942041306496978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050932 n) (A109395 (A027760 (n + 1)).toNat)

end

end A174111.P14724942041306496978

/-! ## A174111.P6642142447774456438

`gcd(A051717(A187829(n+1)), A123868(n+1))`
-/

namespace A174111.P6642142447774456438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051717 (A187829 (n + 1)).toNat) (A123868 (n + 1))

end

end A174111.P6642142447774456438

/-!
# A174114: Even central polygonal numbers (A193868) divided by 2.

The programs for A174114, the canonical program `A174114.P14655313204998795187` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174114 has offset 1).

The definition of A174114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174114.P15957563226568582985

`ogf((1+x+4x^2+x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A174114.P15957563226568582985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 4, 1, 1] [1, -1, -2, 2, 1, -1] n

end

end A174114.P15957563226568582985

namespace A174114

/-- `ogf((1+x+4x^2+x^3+x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P15957563226568582985.Spec : Prop :=
  ∀ n, P15957563226568582985.a n = A174114 (n + 1)

end A174114

/-! ## A174114.P14655313204998795187

`A193868(n+1)/2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174114

/-- `A193868(n+1)/2` -/
def P14655313204998795187.Spec : Prop :=
  ∀ n, P14655313204998795187.a n = (A174114 (n + 1) : ℚ)

end A174114

/-! ## A174114.P6329988715059978390

`A170950(A002061(n+1))`
-/

namespace A174114.P6329988715059978390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170950 (A002061 (n + 1)).toNat

end

end A174114.P6329988715059978390

namespace A174114

/-- `A170950(A002061(n+1))` -/
def P6329988715059978390.Spec : Prop :=
  ∀ n, P6329988715059978390.a n = A174114 (n + 1)

end A174114

/-! ## A174114.P15128197641356986546

`ceil(record[C(or(2, n), 2)]/2)`
-/

namespace A174114.P15128197641356986546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A174114.P15128197641356986546

namespace A174114

/-- `ceil(record[C(or(2, n), 2)]/2)` -/
def P15128197641356986546.Spec : Prop :=
  ∀ n, P15128197641356986546.a n = A174114 (n + 1)

end A174114

/-! ## A174114.P10930798861390407395

`round(record[C(or(2, n), 2)]/2)`
-/

namespace A174114.P10930798861390407395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)

end

end A174114.P10930798861390407395

namespace A174114

/-- `round(record[C(or(2, n), 2)]/2)` -/
def P10930798861390407395.Spec : Prop :=
  ∀ n, P10930798861390407395.a n = A174114 (n + 1)

end A174114

/-! ## A174114.P13401914786880988896

`record[(or(2, n)²-n)/4]`
-/

namespace A174114.P13401914786880988896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 2 n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174114.P13401914786880988896

namespace A174114

/-- `record[(or(2, n)²-n)/4]` -/
def P13401914786880988896.Spec : Prop :=
  ∀ n, P13401914786880988896.a n = (A174114 (n + 1) : ℚ)

end A174114

/-! ## A174114.P2629835351346303441

`record[(xor(2, n)²-n)/4]`
-/

namespace A174114.P2629835351346303441
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 2 n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174114.P2629835351346303441

namespace A174114

/-- `record[(xor(2, n)²-n)/4]` -/
def P2629835351346303441.Spec : Prop :=
  ∀ n, P2629835351346303441.a n = (A174114 (n + 1) : ℚ)

end A174114

/-! ## A174114.P7069358317155043099

`(record[C(or(2, n), 2)]+1)/2`
-/

namespace A174114.P7069358317155043099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ) / 2

end

end A174114.P7069358317155043099

namespace A174114

/-- `(record[C(or(2, n), 2)]+1)/2` -/
def P7069358317155043099.Spec : Prop :=
  ∀ n, P7069358317155043099.a n = (A174114 (n + 1) : ℚ)

end A174114

/-! ## A174114.P9979725306001059969

`ceil((1/2+n)*or(1, n))`
-/

namespace A174114.P9979725306001059969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 2 + (n : ℚ)) * (Nat.lor 1 n : ℚ)⌉

end

end A174114.P9979725306001059969

namespace A174114

/-- `ceil((1/2+n)*or(1, n))` -/
def P9979725306001059969.Spec : Prop :=
  ∀ n, P9979725306001059969.a n = A174114 (n + 1)

end A174114

/-! ## A174114.P4833434320728169657

`round((1/2+n)*or(1, n))`
-/

namespace A174114.P4833434320728169657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 : ℚ) / 2 + (n : ℚ)) * (Nat.lor 1 n : ℚ))

end

end A174114.P4833434320728169657

namespace A174114

/-- `round((1/2+n)*or(1, n))` -/
def P4833434320728169657.Spec : Prop :=
  ∀ n, P4833434320728169657.a n = A174114 (n + 1)

end A174114

/-! ## A174114.P2252181284088249733

`∑[n*gcd(3, n%2)]+1`
-/

namespace A174114.P2252181284088249733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 3 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A174114.P2252181284088249733

namespace A174114

/-- `∑[n*gcd(3, n%2)]+1` -/
def P2252181284088249733.Spec : Prop :=
  ∀ n, (P2252181284088249733.a n : ℤ) = A174114 (n + 1)

end A174114

/-! ## A174114.P4931731486931914034

`∑[n]+ceil(or(1, n)²/2)`
-/

namespace A174114.P4931731486931914034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(Nat.lor 1 n ^ 2 : ℚ) / 2⌉

end

end A174114.P4931731486931914034

namespace A174114

/-- `∑[n]+ceil(or(1, n)²/2)` -/
def P4931731486931914034.Spec : Prop :=
  ∀ n, P4931731486931914034.a n = A174114 (n + 1)

end A174114

/-! ## A174114.P4920512507482056264

`Δ[n*ceil(n/2)]+n²`
-/

namespace A174114.P4920512507482056264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ)

end

end A174114.P4920512507482056264

namespace A174114

/-- `Δ[n*ceil(n/2)]+n²` -/
def P4920512507482056264.Spec : Prop :=
  ∀ n, P4920512507482056264.a n = A174114 (n + 1)

end A174114

/-! ## A174114.P12349841933375732850

`((2*n+1)*or(1, n)+1)/2`
-/

namespace A174114.P12349841933375732850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.lor 1 n + 1 : ℚ) / 2

end

end A174114.P12349841933375732850

namespace A174114

/-- `((2*n+1)*or(1, n)+1)/2` -/
def P12349841933375732850.Spec : Prop :=
  ∀ n, P12349841933375732850.a n = (A174114 (n + 1) : ℚ)

end A174114

/-! ## A174114.P9946065382411540932

`abs(∑[and(1, n+1)]*Δ[n²]-n)`
-/

namespace A174114.P9946065382411540932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - (n : ℤ)|

end

end A174114.P9946065382411540932

namespace A174114

/-- `abs(∑[and(1, n+1)]*Δ[n²]-n)` -/
def P9946065382411540932.Spec : Prop :=
  ∀ n, P9946065382411540932.a n = A174114 (n + 1)

end A174114

/-! ## A174114.P5181792783699840128

`∑[n*(2-(-1)^a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A174114.P5181792783699840128
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℝ) * (2 - (-1 : ℝ) ^ (f1 (n - 1)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174114.P5181792783699840128

namespace A174114

/-- `∑[n*(2-(-1)^a(n-1))]` -/
def P5181792783699840128.Spec : Prop :=
  ∀ n, P5181792783699840128.a n = (A174114 (n + 1) : ℝ)

end A174114

/-! ## A174114.P7211364502818431237

`(C(char[2*n]+2*n+1, 2)+1)/2`
-/

namespace A174114.P7211364502818431237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + (2 * n + 1)) 2 + 1 : ℚ) / 2

end

end A174114.P7211364502818431237

namespace A174114

/-- `(C(char[2*n]+2*n+1, 2)+1)/2` -/
def P7211364502818431237.Spec : Prop :=
  ∀ n, P7211364502818431237.a n = (A174114 (n + 1) : ℚ)

end A174114

/-! ## A174114.P14388263893103691950

`∑[2*n*C(n-1, a(n-1))+n]` with `a(0)=1`
-/

namespace A174114.P14388263893103691950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * n * Nat.choose ((n : ℤ) - 1).toNat (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174114.P14388263893103691950

namespace A174114

/-- `∑[2*n*C(n-1, a(n-1))+n]` -/
def P14388263893103691950.Spec : Prop :=
  ∀ n, (P14388263893103691950.a n : ℤ) = A174114 (n + 1)

end A174114

/-! ## A174114.P8150080188932899710

`(sqrt(A014736(n))+1)/2`
-/

namespace A174114.P8150080188932899710
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A014736 n : ℝ) + 1) / 2

end

end A174114.P8150080188932899710

namespace A174114

/-- `(sqrt(A014736(n))+1)/2` -/
def P8150080188932899710.Spec : Prop :=
  ∀ n, P8150080188932899710.a n = (A174114 (n + 1) : ℝ)

end A174114

/-! ## A174114.P18323594633280851563

`ceil(A014493(n+1)/2)`
-/

namespace A174114.P18323594633280851563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014493 (n + 1) : ℚ) / 2⌉

end

end A174114.P18323594633280851563

namespace A174114

/-- `ceil(A014493(n+1)/2)` -/
def P18323594633280851563.Spec : Prop :=
  ∀ n, P18323594633280851563.a n = A174114 (n + 1)

end A174114

/-!
# A174116: Triangle T(n, k) = (n/2)*binomial(n-1, k-1)*binomial(n-1, k) with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A174116, the canonical program `A174116.P4215392466505003891` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174116 has offset 0).

The definition of A174116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174116.P4215392466505003891

`ceil(A173881(n)/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174116

/-- `ceil(A173881(n)/2)` -/
def P4215392466505003891.Spec : Prop :=
  ∀ n, P4215392466505003891.a n = A174116 n

theorem P4215392466505003891.correct : P4215392466505003891.Spec := by
  intro n
  simp only [A174116]

end A174116

/-! ## A174116.P17110055452740031549

`A173881(n)/A154325(n)`
-/

namespace A174116.P17110055452740031549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173881 n : ℚ) / (A154325 n : ℚ)

end

end A174116.P17110055452740031549

namespace A174116

/-- `A173881(n)/A154325(n)` -/
def P17110055452740031549.Spec : Prop :=
  ∀ n, P17110055452740031549.a n = (A174116 n : ℚ)

end A174116

/-! ## A174116.P5022976507047319551

`A173881(n)/A020639(A132731(n))`
-/

namespace A174116.P5022976507047319551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173881 n : ℚ) / (A020639 (A132731 n).toNat : ℚ)

end

end A174116.P5022976507047319551

namespace A174116

/-- `A173881(n)/A020639(A132731(n))` -/
def P5022976507047319551.Spec : Prop :=
  ∀ n, P5022976507047319551.a n = (A174116 n : ℚ)

end A174116

/-! ## A174116.P16515540389543306165

`A173881(n)/A014963(A152716(n))`
-/

namespace A174116.P16515540389543306165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173881 n : ℚ) / (A014963 (A152716 n).toNat : ℚ)

end

end A174116.P16515540389543306165

namespace A174116

/-- `A173881(n)/A014963(A152716(n))` -/
def P16515540389543306165.Spec : Prop :=
  ∀ n, P16515540389543306165.a n = (A174116 n : ℚ)

end A174116

/-! ## A174116.P622017938080412400

`A000027(round(A173881(n)/2))`
-/

namespace A174116.P622017938080412400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A173881 n : ℚ) / 2)).toNat

end

end A174116.P622017938080412400

namespace A174116

/-- `A000027(round(A173881(n)/2))` -/
def P622017938080412400.Spec : Prop :=
  ∀ n, P622017938080412400.a n = A174116 n

end A174116

/-! ## A174116.P10101178782669599015

`A173881(n)/A020639(A174124(n))`
-/

namespace A174116.P10101178782669599015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173881 n : ℚ) / (A020639 (A174124 n).toNat : ℚ)

end

end A174116.P10101178782669599015

namespace A174116

/-- `A173881(n)/A020639(A174124(n))` -/
def P10101178782669599015.Spec : Prop :=
  ∀ n, P10101178782669599015.a n = (A174116 n : ℚ)

end A174116

/-! ## A174116.P530431925975215931

`A273943(A173881(n))`
-/

namespace A174116.P530431925975215931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A173881 n).toNat

end

end A174116.P530431925975215931

namespace A174116

/-- `A273943(A173881(n))` -/
def P530431925975215931.Spec : Prop :=
  ∀ n, P530431925975215931.a n = A174116 n

end A174116

/-! ## A174116.P2627108611203964046

`A014682(lcm(2, A173881(n)))`
-/

namespace A174116.P2627108611203964046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A173881 n))

end

end A174116.P2627108611203964046

namespace A174116

/-- `A014682(lcm(2, A173881(n)))` -/
def P2627108611203964046.Spec : Prop :=
  ∀ n, P2627108611203964046.a n = A174116 n

end A174116

/-!
# A174117: Triangle T(n, k) = (2*k/(k+1))*binomial(n-1, k)*binomial(n+1, k) with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A174117, the canonical program `A174117.P64867894725138051` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174117 has offset 0).

The definition of A174117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174117.P64867894725138051

`A173882(n)/A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A174117

/-- `A173882(n)/A007318(n)` -/
def P64867894725138051.Spec : Prop :=
  ∀ n, P64867894725138051.a n = (A174117 n : ℚ)

end A174117

/-! ## A174117.P13789251277959456332

`abs(A173882(n)/A130595(n))`
-/

namespace A174117.P13789251277959456332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A173882 n : ℚ) / (A130595 n : ℚ)|

end

end A174117.P13789251277959456332

namespace A174117

/-- `abs(A173882(n)/A130595(n))` -/
def P13789251277959456332.Spec : Prop :=
  ∀ n, P13789251277959456332.a n = (A174117 n : ℚ)

end A174117

/-! ## A174117.P380967359809219197

`A173882(n)/Δ[A102363(n)]`
-/

namespace A174117.P380967359809219197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173882 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A174117.P380967359809219197

namespace A174117

/-- `A173882(n)/Δ[A102363(n)]` -/
def P380967359809219197.Spec : Prop :=
  ∀ n, P380967359809219197.a n = (A174117 n : ℚ)

end A174117

/-! ## A174117.P4879557703945137497

`2/A028326(n)*A173882(n)`
-/

namespace A174117.P4879557703945137497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A173882 n : ℚ)

end

end A174117.P4879557703945137497

namespace A174117

/-- `2/A028326(n)*A173882(n)` -/
def P4879557703945137497.Spec : Prop :=
  ∀ n, P4879557703945137497.a n = (A174117 n : ℚ)

end A174117

/-! ## A174117.P3248513719126797159

`A173882(n)/A004526(A028326(n))`
-/

namespace A174117.P3248513719126797159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173882 n : ℚ) / (A004526 (A028326 n).toNat : ℚ)

end

end A174117.P3248513719126797159

namespace A174117

/-- `A173882(n)/A004526(A028326(n))` -/
def P3248513719126797159.Spec : Prop :=
  ∀ n, P3248513719126797159.a n = (A174117 n : ℚ)

end A174117

/-!
# A174118: Partial sums of A000608.

The programs for A174118, there is no canonical definition to state claims against.
-/

/-! ## A174118.P12515674336742967896

`∑[A000608(n)]`
-/

namespace A174118.P12515674336742967896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174118.P12515674336742967896

/-! ## A174118.P12070516761257214192

`∑[A263864(C(n, 2)+1)]`
-/

namespace A174118.P12070516761257214192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263864 (Nat.choose n 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174118.P12070516761257214192

/-! ## A174118.P9182313213140137265

`∑[A263864(∑[abs(1-n)])]`
-/

namespace A174118.P9182313213140137265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263864 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174118.P9182313213140137265

/-! ## A174118.P2716630510558270050

`∑[A000112(n)-A349401(n)]`
-/

namespace A174118.P2716630510558270050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000112 n - A349401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174118.P2716630510558270050

/-! ## A174118.P11195178767389512752

`A173311(n)-∑[A349401(n)]`
-/

namespace A174118.P11195178767389512752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173311 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174118.P11195178767389512752

/-!
# A174119: Triangle T(n, k) = ((n-k)/6)*binomial(n-1, k-1)*binomial(2*n, 2*k) with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A174119, there is no canonical definition to state claims against.
-/

/-! ## A174119.P7829950857059726944

`A222587(A219206(n)^A326568(3*n+5))`
-/

namespace A174119.P7829950857059726944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222587 (SequenceMachineLib.roundAway ((A219206 n : ℚ) ^ (A326568 (3 * n + 5) : ℤ))).toNat

end

end A174119.P7829950857059726944

/-!
# A174120: Partial sums of A024012.

The programs for A174120, the canonical program `A174120.P11493233426163872974` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174120 has offset 1).

The definition of A174120 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174120.P11493233426163872974

`ogf((1-4x+4x^2+x^3)/(1-6x+14x^2-16x^3+9x^4-2x^5))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174120

/-- `ogf((1-4x+4x^2+x^3)/(1-6x+14x^2-16x^3+9x^4-2x^5))` -/
def P11493233426163872974.Spec : Prop :=
  ∀ n, P11493233426163872974.a n = A174120 (n + 1)

theorem P11493233426163872974.correct : P11493233426163872974.Spec := by
  intro n
  simp only [A174120, Nat.add_sub_cancel]

end A174120

/-! ## A174120.P1534613047613293424

`∑[2^n-n²]`
-/

namespace A174120.P1534613047613293424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174120.P1534613047613293424

namespace A174120

/-- `∑[2^n-n²]` -/
def P1534613047613293424.Spec : Prop :=
  ∀ n, P1534613047613293424.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P3379379142790012188

`xor(∑[2^n], ∑[n²])`
-/

namespace A174120.P3379379142790012188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A174120.P3379379142790012188

namespace A174120

/-- `xor(∑[2^n], ∑[n²])` -/
def P3379379142790012188.Spec : Prop :=
  ∀ n, (P3379379142790012188.a n : ℤ) = A174120 (n + 1)

end A174120

/-! ## A174120.P12432685017908007282

`2^n+a(n-1)-n²` with `a(0)=1`
-/

namespace A174120.P12432685017908007282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) + (a (n - 1) - (n ^ 2 : ℤ))

end

end A174120.P12432685017908007282

namespace A174120

/-- `2^n+a(n-1)-n²` -/
def P12432685017908007282.Spec : Prop :=
  ∀ n, P12432685017908007282.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P1576988506922319016

`2^n-(n²-a(n-1))` with `a(0)=1`
-/

namespace A174120.P1576988506922319016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - ((n ^ 2 : ℤ) - a (n - 1))

end

end A174120.P1576988506922319016

namespace A174120

/-- `2^n-(n²-a(n-1))` -/
def P1576988506922319016.Spec : Prop :=
  ∀ n, P1576988506922319016.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P714197572079925361

`∑[2*a(n-1)]-∑[n²]` with `a(0)=1`
-/

namespace A174120.P714197572079925361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A174120.P714197572079925361

namespace A174120

/-- `∑[2*a(n-1)]-∑[n²]` -/
def P714197572079925361.Spec : Prop :=
  ∀ n, P714197572079925361.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P8464789684746179753

`∑[a(n-1)+a(n-1)]-∑[n²]` with `a(0)=1`
-/

namespace A174120.P8464789684746179753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A174120.P8464789684746179753

namespace A174120

/-- `∑[a(n-1)+a(n-1)]-∑[n²]` -/
def P8464789684746179753.Spec : Prop :=
  ∀ n, P8464789684746179753.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P4934100444800158643

`abs(∑[A024012(n)])`
-/

namespace A174120.P4934100444800158643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A174120.P4934100444800158643

namespace A174120

/-- `abs(∑[A024012(n)])` -/
def P4934100444800158643.Spec : Prop :=
  ∀ n, P4934100444800158643.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P7172613156191233740

`A126646(n)-∑[n²]`
-/

namespace A174120.P7172613156191233740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174120.P7172613156191233740

namespace A174120

/-- `A126646(n)-∑[n²]` -/
def P7172613156191233740.Spec : Prop :=
  ∀ n, P7172613156191233740.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P12552658738952708971

`∑[A000079(n)]-∑[n²]`
-/

namespace A174120.P12552658738952708971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A174120.P12552658738952708971

namespace A174120

/-- `∑[A000079(n)]-∑[n²]` -/
def P12552658738952708971.Spec : Prop :=
  ∀ n, P12552658738952708971.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P13869259713011124449

`record[A077896(n)]-∑[n²]`
-/

namespace A174120.P13869259713011124449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A174120.P13869259713011124449

namespace A174120

/-- `record[A077896(n)]-∑[n²]` -/
def P13869259713011124449.Spec : Prop :=
  ∀ n, P13869259713011124449.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P14040794244872902155

`record[A094024(n)]-∑[n²]`
-/

namespace A174120.P14040794244872902155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A174120.P14040794244872902155

namespace A174120

/-- `record[A094024(n)]-∑[n²]` -/
def P14040794244872902155.Spec : Prop :=
  ∀ n, P14040794244872902155.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P7718243606846059389

`record[A316742(n)]-∑[n²]`
-/

namespace A174120.P7718243606846059389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316742 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A174120.P7718243606846059389

namespace A174120

/-- `record[A316742(n)]-∑[n²]` -/
def P7718243606846059389.Spec : Prop :=
  ∀ n, P7718243606846059389.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P16626946451973699214

`2^(n+1)-A056520(n)`
-/

namespace A174120.P16626946451973699214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A056520 n

end

end A174120.P16626946451973699214

namespace A174120

/-- `2^(n+1)-A056520(n)` -/
def P16626946451973699214.Spec : Prop :=
  ∀ n, P16626946451973699214.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P9377536471494716601

`A000225(n+1)-∑[n²]`
-/

namespace A174120.P9377536471494716601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174120.P9377536471494716601

namespace A174120

/-- `A000225(n+1)-∑[n²]` -/
def P9377536471494716601.Spec : Prop :=
  ∀ n, P9377536471494716601.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P13076202730284997181

`(n+1)²-∑[A071099(n)]`
-/

namespace A174120.P13076202730284997181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174120.P13076202730284997181

namespace A174120

/-- `(n+1)²-∑[A071099(n)]` -/
def P13076202730284997181.Spec : Prop :=
  ∀ n, P13076202730284997181.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P6934351907477171129

`∑[A155559(n)-n²]+1`
-/

namespace A174120.P6934351907477171129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A174120.P6934351907477171129

namespace A174120

/-- `∑[A155559(n)-n²]+1` -/
def P6934351907477171129.Spec : Prop :=
  ∀ n, P6934351907477171129.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P12439948300041050090

`A255047(n+1)-∑[n²]`
-/

namespace A174120.P12439948300041050090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174120.P12439948300041050090

namespace A174120

/-- `A255047(n+1)-∑[n²]` -/
def P12439948300041050090.Spec : Prop :=
  ∀ n, P12439948300041050090.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P15953001201837291892

`A239678(n+3)-∑[n²]`
-/

namespace A174120.P15953001201837291892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239678 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174120.P15953001201837291892

namespace A174120

/-- `A239678(n+3)-∑[n²]` -/
def P15953001201837291892.Spec : Prop :=
  ∀ n, P15953001201837291892.a n = A174120 (n + 1)

end A174120

/-! ## A174120.P1042166112076155530

`A052955(2*n)-∑[n²]`
-/

namespace A174120.P1042166112076155530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174120.P1042166112076155530

namespace A174120

/-- `A052955(2*n)-∑[n²]` -/
def P1042166112076155530.Spec : Prop :=
  ∀ n, P1042166112076155530.a n = A174120 (n + 1)

end A174120

/-!
# A174121: Partial sums of A001580.

The programs for A174121, the canonical program `A174121.P3872498058504322468` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174121 has offset 1).

The definition of A174121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174121.P3872498058504322468

`(n-1)*(2*(n+1)²+n+1+3)/6+2^(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174121

/-- `(n-1)*(2*(n+1)²+n+1+3)/6+2^(n+1)` -/
def P3872498058504322468.Spec : Prop :=
  ∀ n, P3872498058504322468.a n = (A174121 (n + 1) : ℚ)

end A174121

/-! ## A174121.P1621382257006464682

`ogf((1-2x+2x^2-3x^3)/(1-6x+14x^2-16x^3+9x^4-2x^5))`
-/

namespace A174121.P1621382257006464682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2, -3] [1, -6, 14, -16, 9, -2] n

end

end A174121.P1621382257006464682

namespace A174121

/-- `ogf((1-2x+2x^2-3x^3)/(1-6x+14x^2-16x^3+9x^4-2x^5))` -/
def P1621382257006464682.Spec : Prop :=
  ∀ n, P1621382257006464682.a n = A174121 (n + 1)

end A174121

/-! ## A174121.P8774938046392896941

`a(n-1)+2^n+n²` with `a(0)=1`
-/

namespace A174121.P8774938046392896941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 ^ n + n ^ 2

end

end A174121.P8774938046392896941

namespace A174121

/-- `a(n-1)+2^n+n²` -/
def P8774938046392896941.Spec : Prop :=
  ∀ n, (P8774938046392896941.a n : ℤ) = A174121 (n + 1)

end A174121

/-! ## A174121.P10551811936703618806

`∑[n²]+∑[2*a(n-1)]` with `a(0)=1`
-/

namespace A174121.P10551811936703618806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A174121.P10551811936703618806

namespace A174121

/-- `∑[n²]+∑[2*a(n-1)]` -/
def P10551811936703618806.Spec : Prop :=
  ∀ n, (P10551811936703618806.a n : ℤ) = A174121 (n + 1)

end A174121

/-! ## A174121.P1084878758854697148

`∑[n²]+∑[a(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A174121.P1084878758854697148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A174121.P1084878758854697148

namespace A174121

/-- `∑[n²]+∑[a(n-1)+a(n-1)]` -/
def P1084878758854697148.Spec : Prop :=
  ∀ n, (P1084878758854697148.a n : ℤ) = A174121 (n + 1)

end A174121

/-! ## A174121.P3845342286700919044

`∑[A001580(n)]`
-/

namespace A174121.P3845342286700919044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174121.P3845342286700919044

namespace A174121

/-- `∑[A001580(n)]` -/
def P3845342286700919044.Spec : Prop :=
  ∀ n, P3845342286700919044.a n = A174121 (n + 1)

end A174121

/-! ## A174121.P14637481050337135673

`∑[A131924(n)-n]`
-/

namespace A174121.P14637481050337135673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131924 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174121.P14637481050337135673

namespace A174121

/-- `∑[A131924(n)-n]` -/
def P14637481050337135673.Spec : Prop :=
  ∀ n, P14637481050337135673.a n = A174121 (n + 1)

end A174121

/-! ## A174121.P5835983571482794835

`∑[A000079(n)+n²]`
-/

namespace A174121.P5835983571482794835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174121.P5835983571482794835

namespace A174121

/-- `∑[A000079(n)+n²]` -/
def P5835983571482794835.Spec : Prop :=
  ∀ n, P5835983571482794835.a n = A174121 (n + 1)

end A174121

/-! ## A174121.P11811671430237383144

`∑[A011782(n+1)+n²]`
-/

namespace A174121.P11811671430237383144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174121.P11811671430237383144

namespace A174121

/-- `∑[A011782(n+1)+n²]` -/
def P11811671430237383144.Spec : Prop :=
  ∀ n, P11811671430237383144.a n = A174121 (n + 1)

end A174121

/-! ## A174121.P5387401799141992757

`∑[A070313(n)+(n+1)²]`
-/

namespace A174121.P5387401799141992757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070313 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174121.P5387401799141992757

namespace A174121

/-- `∑[A070313(n)+(n+1)²]` -/
def P5387401799141992757.Spec : Prop :=
  ∀ n, P5387401799141992757.a n = A174121 (n + 1)

end A174121

/-! ## A174121.P8462576640950303029

`∑[A131577(n+1)+n²]`
-/

namespace A174121.P8462576640950303029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174121.P8462576640950303029

namespace A174121

/-- `∑[A131577(n+1)+n²]` -/
def P8462576640950303029.Spec : Prop :=
  ∀ n, P8462576640950303029.a n = A174121 (n + 1)

end A174121

/-! ## A174121.P15221885474512380758

`∑[n²-A154589(n+1)]`
-/

namespace A174121.P15221885474512380758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A154589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174121.P15221885474512380758

namespace A174121

/-- `∑[n²-A154589(n+1)]` -/
def P15221885474512380758.Spec : Prop :=
  ∀ n, P15221885474512380758.a n = A174121 (n + 1)

end A174121

/-! ## A174121.P3127243258374506816

`∑[n²-A157823(n+1)]`
-/

namespace A174121.P3127243258374506816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A157823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174121.P3127243258374506816

namespace A174121

/-- `∑[n²-A157823(n+1)]` -/
def P3127243258374506816.Spec : Prop :=
  ∀ n, P3127243258374506816.a n = A174121 (n + 1)

end A174121

/-! ## A174121.P4331708173617804435

`∑[A321123(n)-(n+1)²]`
-/

namespace A174121.P4331708173617804435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321123 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174121.P4331708173617804435

namespace A174121

/-- `∑[A321123(n)-(n+1)²]` -/
def P4331708173617804435.Spec : Prop :=
  ∀ n, P4331708173617804435.a n = A174121 (n + 1)

end A174121

/-!
# A174122: Partial sums of A001831.

The programs for A174122, there is no canonical definition to state claims against.
-/

/-! ## A174122.P9612851706049837105

`∑[A001831(n)]`
-/

namespace A174122.P9612851706049837105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174122.P9612851706049837105

/-! ## A174122.P4867338551853771517

`a(n-1)+A001831(n)+A000007(n)` with `a(0)=1`
-/

namespace A174122.P4867338551853771517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001831 n + A000007 n)

end

end A174122.P4867338551853771517

/-! ## A174122.P7142945916046763612

`a(n-1)+A151933(n)+A001831(n)` with `a(0)=1`
-/

namespace A174122.P7142945916046763612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A151933 n + A001831 n)

end

end A174122.P7142945916046763612

/-! ## A174122.P6010924739744829838

`a(n-1)+or(A030101(n)%2, A001831(n))` with `a(0)=1`
-/

namespace A174122.P6010924739744829838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (Int.tmod (A030101 n) 2) (A001831 n)

end

end A174122.P6010924739744829838

/-! ## A174122.P123617029562642020

`∑[or(1, A342587(A238531(n)))]`
-/

namespace A174122.P123617029562642020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A342587 (A238531 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174122.P123617029562642020

/-!
# A174123: Partial sums of A002893.

The programs for A174123, the canonical program `A174123.P5694243228090191309` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174123 has offset 0).

The definition of A174123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174123.P5694243228090191309

`∑[A002893(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174123

/-- `∑[A002893(n)]` -/
def P5694243228090191309.Spec : Prop :=
  ∀ n, P5694243228090191309.a n = A174123 n

theorem P5694243228090191309.correct : P5694243228090191309.Spec := by
  intro n
  simp only [A174123]

end A174123

/-! ## A174123.P11278681331811047517

`A207321(n)+1`
-/

namespace A174123.P11278681331811047517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207321 n + 1

end

end A174123.P11278681331811047517

namespace A174123

/-- `A207321(n)+1` -/
def P11278681331811047517.Spec : Prop :=
  ∀ n, P11278681331811047517.a n = A174123 n

theorem P11278681331811047517.correct : P11278681331811047517.Spec := by
  intro n
  simp only [A174123, Nat.add_sub_cancel, A174123.P11278681331811047517.a, A174123.P5694243228090191309.f1, A174123.P5694243228090191309.a, A002893, A002893.P7915644095541255392.f1, A002893.P7915644095541255392.a, A207321, A207321.P7475223820928734017.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174123

/-! ## A174123.P4628212286885601846

`∑[A228514(n)+A086618(n)]`
-/

namespace A174123.P4628212286885601846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228514 n + A086618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174123.P4628212286885601846

namespace A174123

/-- `∑[A228514(n)+A086618(n)]` -/
def P4628212286885601846.Spec : Prop :=
  ∀ n, P4628212286885601846.a n = A174123 n

theorem P4628212286885601846.correct : P4628212286885601846.Spec := by
  intro n
  simp only [A174123, Nat.add_sub_cancel, A174123.P4628212286885601846.f1, A174123.P4628212286885601846.a, A174123.P5694243228090191309.f1, A174123.P5694243228090191309.a, A002893, A002893.P7915644095541255392.f1, A002893.P7915644095541255392.a, A086618, A086618.P9473914020153117651.a, A228514, A228514.P12479248012898447411.a, A087457, A087457.P600842254710248495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174123

/-! ## A174123.P8452491456465647031

`∑[A087457(n+1)-2*A228514(n)]`
-/

namespace A174123.P8452491456465647031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087457 (n + 1) - 2 * A228514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174123.P8452491456465647031

namespace A174123

/-- `∑[A087457(n+1)-2*A228514(n)]` -/
def P8452491456465647031.Spec : Prop :=
  ∀ n, P8452491456465647031.a n = A174123 n

end A174123

/-! ## A174123.P11323896943621532783

`a(n-1)+A002893(n)%A093388(n)` with `a(0)=1`
-/

namespace A174123.P11323896943621532783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A002893 n) (A093388 n)

end

end A174123.P11323896943621532783

namespace A174123

/-- `a(n-1)+A002893(n)%A093388(n)` -/
def P11323896943621532783.Spec : Prop :=
  ∀ n, P11323896943621532783.a n = A174123 n

end A174123

/-! ## A174123.P13687243266113168946

`∑[A002896(n)/A000984(n)]`
-/

namespace A174123.P13687243266113168946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / (A000984 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174123.P13687243266113168946

namespace A174123

/-- `∑[A002896(n)/A000984(n)]` -/
def P13687243266113168946.Spec : Prop :=
  ∀ n, P13687243266113168946.a n = (A174123 n : ℚ)

end A174123

/-! ## A174123.P8095153433511199256

`∑[A002896(n)/A007318((n+1)*2*n)]`
-/

namespace A174123.P8095153433511199256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002896 n : ℚ) / (A007318 ((n + 1) * (2 * n)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174123.P8095153433511199256

namespace A174123

/-- `∑[A002896(n)/A007318((n+1)*2*n)]` -/
def P8095153433511199256.Spec : Prop :=
  ∀ n, P8095153433511199256.a n = (A174123 n : ℚ)

end A174123

/-! ## A174123.P17336588333534616847

`a(n-1)+A002896(n)/A007318(A046092(n))` with `a(0)=1`
-/

namespace A174123.P17336588333534616847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A002896 n : ℚ) / (A007318 (A046092 n).toNat : ℚ)

end

end A174123.P17336588333534616847

namespace A174123

/-- `a(n-1)+A002896(n)/A007318(A046092(n))` -/
def P17336588333534616847.Spec : Prop :=
  ∀ n, P17336588333534616847.a n = (A174123 n : ℚ)

end A174123

/-!
# A174124: Triangle T(n, k, q) = (q+1)*binomial(n, k)*(Pochhammer(q+1, n)/(Pochhammer(q+1, k)*Pochhammer(q+1, n-k))), with T(n, 0) = T(n, n) = 1, and q = 1, read by rows.

The programs for A174124, the canonical program `A174124.P6351116376219015781` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174124 has offset 0).

The definition of A174124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174124.P6351116376219015781

`A001263(n+1)*A154325(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A174124

/-- `A001263(n+1)*A154325(n)` -/
def P6351116376219015781.Spec : Prop :=
  ∀ n, P6351116376219015781.a n = A174124 n

theorem P6351116376219015781.correct : P6351116376219015781.Spec := by
  intro n
  simp only [A174124]

end A174124

/-! ## A174124.P11154205499705926163

`2*A001263(n+1)-A103451(n)`
-/

namespace A174124.P11154205499705926163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001263 (n + 1) - A103451 n

end

end A174124.P11154205499705926163

namespace A174124

/-- `2*A001263(n+1)-A103451(n)` -/
def P11154205499705926163.Spec : Prop :=
  ∀ n, P11154205499705926163.a n = A174124 n

end A174124

/-! ## A174124.P2841285821756324869

`ceil(root(A007318(n), n+1))*A001263(n+1)`
-/

namespace A174124.P2841285821756324869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℝ) ^ (1 / (n + 1 : ℝ))⌉ * A001263 (n + 1)

end

end A174124.P2841285821756324869

namespace A174124

/-- `ceil(root(A007318(n), n+1))*A001263(n+1)` -/
def P2841285821756324869.Spec : Prop :=
  ∀ n, P2841285821756324869.a n = A174124 n

end A174124

/-! ## A174124.P1008790191702409307

`A001263(n+1)+A001263(n+1)%A174158(n+1)`
-/

namespace A174124.P1008790191702409307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + Int.tmod (A001263 (n + 1)) (A174158 (n + 1))

end

end A174124.P1008790191702409307

namespace A174124

/-- `A001263(n+1)+A001263(n+1)%A174158(n+1)` -/
def P1008790191702409307.Spec : Prop :=
  ∀ n, P1008790191702409307.a n = A174124 n

end A174124

/-! ## A174124.P704410595644357522

`gcd(A066667(n), A133200(n+1))`
-/

namespace A174124.P704410595644357522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066667 n) (A133200 (n + 1))

end

end A174124.P704410595644357522

namespace A174124

/-- `gcd(A066667(n), A133200(n+1))` -/
def P704410595644357522.Spec : Prop :=
  ∀ n, (P704410595644357522.a n : ℤ) = A174124 n

end A174124

/-! ## A174124.P1947300061332547369

`gcd(2, A169654(n+1))*A001263(n+1)`
-/

namespace A174124.P1947300061332547369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A169654 (n + 1)) : ℤ) * A001263 (n + 1)

end

end A174124.P1947300061332547369

namespace A174124

/-- `gcd(2, A169654(n+1))*A001263(n+1)` -/
def P1947300061332547369.Spec : Prop :=
  ∀ n, P1947300061332547369.a n = A174124 n

end A174124

/-! ## A174124.P14304449074702798927

`A173882(n)/A155865(n)`
-/

namespace A174124.P14304449074702798927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173882 n : ℚ) / (A155865 n : ℚ)

end

end A174124.P14304449074702798927

namespace A174124

/-- `A173882(n)/A155865(n)` -/
def P14304449074702798927.Spec : Prop :=
  ∀ n, P14304449074702798927.a n = (A174124 n : ℚ)

end A174124

/-! ## A174124.P1218208588752665192

`gcd(2*A001263(n+1), A173882(n))`
-/

namespace A174124.P1218208588752665192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A001263 (n + 1)) (A173882 n)

end

end A174124.P1218208588752665192

namespace A174124

/-- `gcd(2*A001263(n+1), A173882(n))` -/
def P1218208588752665192.Spec : Prop :=
  ∀ n, (P1218208588752665192.a n : ℤ) = A174124 n

end A174124

/-! ## A174124.P13939807530946731242

`gcd(2*A174346(n+1), A174345(n+1))`
-/

namespace A174124.P13939807530946731242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A174346 (n + 1)) (A174345 (n + 1))

end

end A174124.P13939807530946731242

namespace A174124

/-- `gcd(2*A174346(n+1), A174345(n+1))` -/
def P13939807530946731242.Spec : Prop :=
  ∀ n, (P13939807530946731242.a n : ℤ) = A174124 n

end A174124

/-!
# A174125: Triangle T(n, k, q) = (q+1)*binomial(n, k)*(Pochhammer(q+1, n)/(Pochhammer(q+1, k)*Pochhammer(q+1, n-k))), with T(n, 0) = T(n, n) = 1, and q = 2, read by rows.

The programs for A174125, there is no canonical definition to state claims against.
-/

/-! ## A174125.P8998215343774947712

`A154325(n)/A174117(n)*A174151(n)`
-/

namespace A174125.P8998215343774947712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154325 n : ℚ) / (A174117 n : ℚ) * (A174151 n : ℚ)

end

end A174125.P8998215343774947712

/-! ## A174125.P10735286333281910020

`A042948(A174151(n))/A174117(n)`
-/

namespace A174125.P10735286333281910020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042948 (A174151 n).toNat : ℚ) / (A174117 n : ℚ)

end

end A174125.P10735286333281910020

/-! ## A174125.P18094479872379867839

`A042948(A174151(n))/(2/A028326(n)*A173882(n))`
-/

namespace A174125.P18094479872379867839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042948 (A174151 n).toNat : ℚ) / (2 / (A028326 n : ℚ) * (A173882 n : ℚ))

end

end A174125.P18094479872379867839

/-! ## A174125.P6977702683838679665

`A186053(A174151(n))`
-/

namespace A174125.P6977702683838679665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186053 (A174151 n).toNat

end

end A174125.P6977702683838679665

/-!
# A174126: Triangle T(n, k) = (n-k)^2 * binomial(n-1, k-1)^2 with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A174126, the canonical program `A174126.P13474313142427055093` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174126 has offset 0).

The definition of A174126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174126.P13474313142427055093

`A155865(n)²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174126

/-- `A155865(n)²` -/
def P13474313142427055093.Spec : Prop :=
  ∀ n, P13474313142427055093.a n = A174126 n

theorem P13474313142427055093.correct : P13474313142427055093.Spec := by
  intro n
  simp only [A174126]

end A174126

/-! ## A174126.P5857234799178917227

`A174127(n)^(2/3)`
-/

namespace A174126.P5857234799178917227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A174127 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A174126.P5857234799178917227

namespace A174126

/-- `A174127(n)^(2/3)` -/
def P5857234799178917227.Spec : Prop :=
  ∀ n, P5857234799178917227.a n = (A174126 n : ℝ)

end A174126

/-! ## A174126.P1624639163705114135

`A134399(A056943(n))²`
-/

namespace A174126.P1624639163705114135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 (A056943 n).toNat ^ 2

end

end A174126.P1624639163705114135

namespace A174126

/-- `A134399(A056943(n))²` -/
def P1624639163705114135.Spec : Prop :=
  ∀ n, P1624639163705114135.a n = A174126 n

end A174126

/-! ## A174126.P16340087374728214763

`A134399(A083920(n))²`
-/

namespace A174126.P16340087374728214763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 (A083920 n).toNat ^ 2

end

end A174126.P16340087374728214763

namespace A174126

/-- `A134399(A083920(n))²` -/
def P16340087374728214763.Spec : Prop :=
  ∀ n, P16340087374728214763.a n = A174126 n

end A174126

/-! ## A174126.P2054225454809159471

`A134399(A271439(n))²`
-/

namespace A174126.P2054225454809159471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 (A271439 n).toNat ^ 2

end

end A174126.P2054225454809159471

namespace A174126

/-- `A134399(A271439(n))²` -/
def P2054225454809159471.Spec : Prop :=
  ∀ n, P2054225454809159471.a n = A174126 n

end A174126

/-! ## A174126.P7171492815180861554

`A174127(n)/A155865(n)`
-/

namespace A174126.P7171492815180861554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174127 n : ℚ) / (A155865 n : ℚ)

end

end A174126.P7171492815180861554

namespace A174126

/-- `A174127(n)/A155865(n)` -/
def P7171492815180861554.Spec : Prop :=
  ∀ n, P7171492815180861554.a n = (A174126 n : ℚ)

end A174126

/-! ## A174126.P1778388064062129713

`(A155864(n)/A318274(n))²`
-/

namespace A174126.P1778388064062129713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A155864 n : ℚ) / (A318274 n : ℚ)) ^ 2

end

end A174126.P1778388064062129713

namespace A174126

/-- `(A155864(n)/A318274(n))²` -/
def P1778388064062129713.Spec : Prop :=
  ∀ n, P1778388064062129713.a n = (A174126 n : ℚ)

end A174126

/-! ## A174126.P6025570230890133094

`A155865(n)^A207949(C(n, ∑[n])+1)`
-/

namespace A174126.P6025570230890133094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155865 n : ℚ) ^ (A207949 (Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) + 1) : ℤ)

end

end A174126.P6025570230890133094

namespace A174126

/-- `A155865(n)^A207949(C(n, ∑[n])+1)` -/
def P6025570230890133094.Spec : Prop :=
  ∀ n, P6025570230890133094.a n = (A174126 n : ℚ)

end A174126

/-! ## A174126.P5601242593431551153

`A174116(n)/A001263(n+1)*A174117(n)`
-/

namespace A174126.P5601242593431551153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174116 n : ℚ) / (A001263 (n + 1) : ℚ) * (A174117 n : ℚ)

end

end A174126.P5601242593431551153

namespace A174126

/-- `A174116(n)/A001263(n+1)*A174117(n)` -/
def P5601242593431551153.Spec : Prop :=
  ∀ n, P5601242593431551153.a n = (A174126 n : ℚ)

end A174126

/-! ## A174126.P13986244996053654256

`(A173881(n)/A007318(n))²`
-/

namespace A174126.P13986244996053654256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A173881 n : ℚ) / (A007318 n : ℚ)) ^ 2

end

end A174126.P13986244996053654256

namespace A174126

/-- `(A173881(n)/A007318(n))²` -/
def P13986244996053654256.Spec : Prop :=
  ∀ n, P13986244996053654256.a n = (A174126 n : ℚ)

end A174126

/-! ## A174126.P9846394774983684645

`(A173881(n)/A130595(n))²`
-/

namespace A174126.P9846394774983684645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A173881 n : ℚ) / (A130595 n : ℚ)) ^ 2

end

end A174126.P9846394774983684645

namespace A174126

/-- `(A173881(n)/A130595(n))²` -/
def P9846394774983684645.Spec : Prop :=
  ∀ n, P9846394774983684645.a n = (A174126 n : ℚ)

end A174126

/-! ## A174126.P2173644970866315970

`(A173882(n)/A174124(n))²`
-/

namespace A174126.P2173644970866315970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A173882 n : ℚ) / (A174124 n : ℚ)) ^ 2

end

end A174126.P2173644970866315970

namespace A174126

/-- `(A173882(n)/A174124(n))²` -/
def P2173644970866315970.Spec : Prop :=
  ∀ n, P2173644970866315970.a n = (A174126 n : ℚ)

end A174126

/-! ## A174126.P7402913739376002729

`(A173881(n)/Δ[A102363(n)])²`
-/

namespace A174126.P7402913739376002729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A173881 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)) ^ 2

end

end A174126.P7402913739376002729

namespace A174126

/-- `(A173881(n)/Δ[A102363(n)])²` -/
def P7402913739376002729.Spec : Prop :=
  ∀ n, P7402913739376002729.a n = (A174126 n : ℚ)

end A174126

/-! ## A174126.P4930424698407553522

`A028310(A025581(n)*A097805(n))²`
-/

namespace A174126.P4930424698407553522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A025581 n * A097805 n).toNat ^ 2

end

end A174126.P4930424698407553522

namespace A174126

/-- `A028310(A025581(n)*A097805(n))²` -/
def P4930424698407553522.Spec : Prop :=
  ∀ n, P4930424698407553522.a n = A174126 n

end A174126

/-! ## A174126.P3903447144526161601

`A000290((A155865(n)-1)%A319308(n)+1)`
-/

namespace A174126.P3903447144526161601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A155865 n - 1) (A319308 n) + 1).toNat

end

end A174126.P3903447144526161601

namespace A174126

/-- `A000290((A155865(n)-1)%A319308(n)+1)` -/
def P3903447144526161601.Spec : Prop :=
  ∀ n, P3903447144526161601.a n = A174126 n

end A174126

/-!
# A174127: Triangle T(n, k) = (n-k)^3 * binomial(n-1, k-1)^3 with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A174127, the canonical program `A174127.P6296285191855407287` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174127 has offset 0).

The definition of A174127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174127.P6296285191855407287

`A155865(n)^3`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174127

/-- `A155865(n)^3` -/
def P6296285191855407287.Spec : Prop :=
  ∀ n, P6296285191855407287.a n = A174127 n

theorem P6296285191855407287.correct : P6296285191855407287.Spec := by
  intro n
  simp only [A174127]

end A174127

/-! ## A174127.P15306305486185358691

`A155865(n)*A174126(n)`
-/

namespace A174127.P15306305486185358691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 n * A174126 n

end

end A174127.P15306305486185358691

namespace A174127

/-- `A155865(n)*A174126(n)` -/
def P15306305486185358691.Spec : Prop :=
  ∀ n, P15306305486185358691.a n = A174127 n

theorem P15306305486185358691.correct : P15306305486185358691.Spec := by
  intro n
  simp only [A174127, Nat.add_sub_cancel, A174127.P15306305486185358691.a, A174127.P6296285191855407287.a, A155865, A155865.P6741079026207357977.a, A174126, A174126.P13474313142427055093.a, A056943, A056943.P2657344456391598982.a, A134399, A134399.P11389715286082548429.a, A124927, A124927.P17604735258477923132.a, A128710, A128710.P2966919769106220333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A174127

/-! ## A174127.P10625078220230698985

`(A155864(n)/A318274(n))^3`
-/

namespace A174127.P10625078220230698985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A155864 n : ℚ) / (A318274 n : ℚ)) ^ 3

end

end A174127.P10625078220230698985

namespace A174127

/-- `(A155864(n)/A318274(n))^3` -/
def P10625078220230698985.Spec : Prop :=
  ∀ n, P10625078220230698985.a n = (A174127 n : ℚ)

end A174127

/-! ## A174127.P5390802231160975843

`(A174116(n)/A001263(n+1)*A174124(n)/A007318(n))^3`
-/

namespace A174127.P5390802231160975843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A174116 n : ℚ) / (A001263 (n + 1) : ℚ) * (A174124 n : ℚ) / (A007318 n : ℚ)) ^ 3

end

end A174127.P5390802231160975843

namespace A174127

/-- `(A174116(n)/A001263(n+1)*A174124(n)/A007318(n))^3` -/
def P5390802231160975843.Spec : Prop :=
  ∀ n, P5390802231160975843.a n = (A174127 n : ℚ)

end A174127

/-! ## A174127.P8182537304969693112

`sqrt(A174126(n)^3)`
-/

namespace A174127.P8182537304969693112
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174126 n ^ 3 : ℝ)

end

end A174127.P8182537304969693112

namespace A174127

/-- `sqrt(A174126(n)^3)` -/
def P8182537304969693112.Spec : Prop :=
  ∀ n, P8182537304969693112.a n = (A174127 n : ℝ)

end A174127

/-! ## A174127.P2564397808261542683

`(A173881(n)/A007318(n))^3`
-/

namespace A174127.P2564397808261542683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A173881 n : ℚ) / (A007318 n : ℚ)) ^ 3

end

end A174127.P2564397808261542683

namespace A174127

/-- `(A173881(n)/A007318(n))^3` -/
def P2564397808261542683.Spec : Prop :=
  ∀ n, P2564397808261542683.a n = (A174127 n : ℚ)

end A174127

/-! ## A174127.P17583778770311154861

`(A004525(A028326(n))*A174117(n)/A174124(n))^3`
-/

namespace A174127.P17583778770311154861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004525 (A028326 n).toNat * A174117 n : ℚ) / (A174124 n : ℚ)) ^ 3

end

end A174127.P17583778770311154861

namespace A174127

/-- `(A004525(A028326(n))*A174117(n)/A174124(n))^3` -/
def P17583778770311154861.Spec : Prop :=
  ∀ n, P17583778770311154861.a n = (A174127 n : ℚ)

end A174127

/-! ## A174127.P16550892829167066951

`A000578(A155865(n))`
-/

namespace A174127.P16550892829167066951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A155865 n).toNat

end

end A174127.P16550892829167066951

namespace A174127

/-- `A000578(A155865(n))` -/
def P16550892829167066951.Spec : Prop :=
  ∀ n, P16550892829167066951.a n = A174127 n

end A174127

/-!
# A174129: Numerators of the first column of the table of fractions generated by the Akiyama-Tanigawa transform from a first row A164555(k)/A027642(k).

The programs for A174129, there is no canonical definition to state claims against.
-/

/-! ## A174129.P3415274129897391777

`A174182(n)-A000225(n)*A141056(n)`
-/

namespace A174129.P3415274129897391777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174182 n - A000225 n * A141056 n

end

end A174129.P3415274129897391777

/-!
# A174131: Either 2*n^2-+11 is a prime.

The programs for A174131, there is no canonical definition to state claims against.
-/

/-! ## A174131.P6188001876633813400

`lt[A272369(A238189(3*n+2)), A052217(3*n+5)]`
-/

namespace A174131.P6188001876633813400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272369 (A238189 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052217 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174131.P6188001876633813400

/-! ## A174131.P18369097263831072307

`lt[A091048(n+3), A091008(A091010(2*n+1))]`
-/

namespace A174131.P18369097263831072307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091048 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091008 (A091010 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174131.P18369097263831072307

/-! ## A174131.P15352497377379598839

`eq[A340555(A340621(n)), A340599(n+1)]`
-/

namespace A174131.P15352497377379598839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340555 (A340621 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174131.P15352497377379598839

/-! ## A174131.P8602085126889240021

`A303547(A132740(3*n+2))+A002479(n+1)`
-/

namespace A174131.P8602085126889240021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303547 (A132740 (3 * n + 2)).toNat + A002479 (n + 1)

end

end A174131.P8602085126889240021

/-! ## A174131.P2467938419882841779

`eq[A097798(n), A389717(n)]`
-/

namespace A174131.P2467938419882841779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174131.P2467938419882841779

/-!
# A174132: a(n) = 2*3^(n-1) - (-1)^n.

The programs for A174132, the canonical program `A174132.P14414292469521708599` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174132 has offset 1).

The definition of A174132 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-(-1)^(n+1)` (program `A174132.P14414292469521708599`, by `A174132.P14414292469521708599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174132.P16311893396776191320

`ogf((3-x)/(1-2x-3x^2))`
-/

namespace A174132.P16311893396776191320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1] [1, -2, -3] n

end

end A174132.P16311893396776191320

namespace A174132

/-- `ogf((3-x)/(1-2x-3x^2))` -/
def P16311893396776191320.Spec : Prop :=
  ∀ n, P16311893396776191320.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P14414292469521708599

`2*3^n-(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174132

/-- `2*3^n-(-1)^(n+1)` -/
def P14414292469521708599.Spec : Prop :=
  ∀ n, P14414292469521708599.a n = A174132 (n + 1)

theorem P14414292469521708599.correct : P14414292469521708599.Spec := by
  intro n
  simp only [A174132, Nat.add_sub_cancel]

end A174132

/-! ## A174132.P8699177768048753836

`A062547(A042963(n+1))`
-/

namespace A174132.P8699177768048753836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (A042963 (n + 1)).toNat

end

end A174132.P8699177768048753836

namespace A174132

/-- `A062547(A042963(n+1))` -/
def P8699177768048753836.Spec : Prop :=
  ∀ n, P8699177768048753836.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P4996076969317281221

`Δ[n%2+3^n]`
-/

namespace A174132.P4996076969317281221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A174132.P4996076969317281221

namespace A174132

/-- `Δ[n%2+3^n]` -/
def P4996076969317281221.Spec : Prop :=
  ∀ n, P4996076969317281221.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P8911753122753169208

`Δ[3^n-gcd(2, n)]`
-/

namespace A174132.P8911753122753169208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174132.P8911753122753169208

namespace A174132

/-- `Δ[3^n-gcd(2, n)]` -/
def P8911753122753169208.Spec : Prop :=
  ∀ n, P8911753122753169208.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P14694164134958250848

`Δ[and(1, n)+3^n]`
-/

namespace A174132.P14694164134958250848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A174132.P14694164134958250848

namespace A174132

/-- `Δ[and(1, n)+3^n]` -/
def P14694164134958250848.Spec : Prop :=
  ∀ n, P14694164134958250848.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P13974966756357761361

`Δ[and(3^n, or(n, -2))]`
-/

namespace A174132.P13974966756357761361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 ^ n : ℤ) (Int.lor (n : ℤ) (-2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174132.P13974966756357761361

namespace A174132

/-- `Δ[and(3^n, or(n, -2))]` -/
def P13974966756357761361.Spec : Prop :=
  ∀ n, P13974966756357761361.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P5181876179626241894

`Δ[3^n-and(1, n-1)]`
-/

namespace A174132.P5181876179626241894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - Int.land 1 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174132.P5181876179626241894

namespace A174132

/-- `Δ[3^n-and(1, n-1)]` -/
def P5181876179626241894.Spec : Prop :=
  ∀ n, P5181876179626241894.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P14404238929817461514

`xor(6, 3*xor(2, a(n-1)))` with `a(0)=3`
-/

namespace A174132.P14404238929817461514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 6 (3 * Nat.xor 2 (a (n - 1)))

end

end A174132.P14404238929817461514

namespace A174132

/-- `xor(6, 3*xor(2, a(n-1)))` -/
def P14404238929817461514.Spec : Prop :=
  ∀ n, (P14404238929817461514.a n : ℤ) = A174132 (n + 1)

end A174132

/-! ## A174132.P4130430408002356431

`Δ[gcd(n+1, n+3)+3^n]`
-/

namespace A174132.P4130430408002356431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n + 3) + 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A174132.P4130430408002356431

namespace A174132

/-- `Δ[gcd(n+1, n+3)+3^n]` -/
def P4130430408002356431.Spec : Prop :=
  ∀ n, P4130430408002356431.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P17144948314661539719

`xor(2, A081632(n))`
-/

namespace A174132.P17144948314661539719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A081632 n)

end

end A174132.P17144948314661539719

namespace A174132

/-- `xor(2, A081632(n))` -/
def P17144948314661539719.Spec : Prop :=
  ∀ n, P17144948314661539719.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P1045679069332098554

`abs(Δ[A165553(n)]+1)`
-/

namespace A174132.P1045679069332098554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 1|

end

end A174132.P1045679069332098554

namespace A174132

/-- `abs(Δ[A165553(n)]+1)` -/
def P1045679069332098554.Spec : Prop :=
  ∀ n, P1045679069332098554.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P5882435183211402240

`abs(2*A352779(n)+1)`
-/

namespace A174132.P5882435183211402240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A352779 n + 1|

end

end A174132.P5882435183211402240

namespace A174132

/-- `abs(2*A352779(n)+1)` -/
def P5882435183211402240.Spec : Prop :=
  ∀ n, P5882435183211402240.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P11472041367753019377

`Δ[A000035(n)+3^n]`
-/

namespace A174132.P11472041367753019377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174132.P11472041367753019377

namespace A174132

/-- `Δ[A000035(n)+3^n]` -/
def P11472041367753019377.Spec : Prop :=
  ∀ n, P11472041367753019377.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P13644409937390650219

`xor(A008776(n), A010684(n))`
-/

namespace A174132.P13644409937390650219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008776 n) (A010684 n)

end

end A174132.P13644409937390650219

namespace A174132

/-- `xor(A008776(n), A010684(n))` -/
def P13644409937390650219.Spec : Prop :=
  ∀ n, P13644409937390650219.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P17640087519921698287

`xor(A100774(n), A176040(n))`
-/

namespace A174132.P17640087519921698287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100774 n) (A176040 n)

end

end A174132.P17640087519921698287

namespace A174132

/-- `xor(A100774(n), A176040(n))` -/
def P17640087519921698287.Spec : Prop :=
  ∀ n, P17640087519921698287.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P14082971541533265060

`xor(2*A000244(n), A010684(n))`
-/

namespace A174132.P14082971541533265060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A000244 n) (A010684 n)

end

end A174132.P14082971541533265060

namespace A174132

/-- `xor(2*A000244(n), A010684(n))` -/
def P14082971541533265060.Spec : Prop :=
  ∀ n, P14082971541533265060.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P2396608373718479579

`Δ[A000034(n)+Δ[A003462(n)]]`
-/

namespace A174132.P2396608373718479579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174132.P2396608373718479579

namespace A174132

/-- `Δ[A000034(n)+Δ[A003462(n)]]` -/
def P2396608373718479579.Spec : Prop :=
  ∀ n, P2396608373718479579.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P11221530788850167274

`Δ[A000244(n)+Δ[A004526(n)]]`
-/

namespace A174132.P11221530788850167274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174132.P11221530788850167274

namespace A174132

/-- `Δ[A000244(n)+Δ[A004526(n)]]` -/
def P11221530788850167274.Spec : Prop :=
  ∀ n, P11221530788850167274.a n = A174132 (n + 1)

end A174132

/-! ## A174132.P2708321834991526600

`Δ[Δ[A007051(n)+A004526(n)]]`
-/

namespace A174132.P2708321834991526600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174132.P2708321834991526600

namespace A174132

/-- `Δ[Δ[A007051(n)+A004526(n)]]` -/
def P2708321834991526600.Spec : Prop :=
  ∀ n, P2708321834991526600.a n = A174132 (n + 1)

end A174132

/-!
# A174133: Integers of the form (a^2-1)*(b^2+1) where a >= 1 and b >= 0.

The programs for A174133, there is no canonical definition to state claims against.
-/

/-! ## A174133.P2190063628364187482

`record[(∏{p}[n+1, #^val(n+1, #²)]²-1)*A339887(2*n+1)]`
-/

namespace A174133.P2190063628364187482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) - 1) * A339887 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174133.P2190063628364187482

/-! ## A174133.P4584766665663102283

`A276573(A285189(n²))`
-/

namespace A174133.P4584766665663102283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (A285189 (n ^ 2)).toNat

end

end A174133.P4584766665663102283

/-! ## A174133.P14639730991140881399

`eq[1, A000045(A067721(n))]`
-/

namespace A174133.P14639730991140881399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A067721 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174133.P14639730991140881399

/-! ## A174133.P12631725891558183088

`record[A326128(A326441(n)+2)]`
-/

namespace A174133.P12631725891558183088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A326441 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174133.P12631725891558183088

/-! ## A174133.P10549045106748060618

`eq[A049241(n+1), A129168(n)]`
-/

namespace A174133.P10549045106748060618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129168 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174133.P10549045106748060618

/-!
# A174134: Nonnegative integers m such that m^2 = (a^2-1)*(b^2+1) for some integers a,b.

The programs for A174134, there is no canonical definition to state claims against.
-/

/-! ## A174134.P15636347332705142284

`record[A141554(∑[A078812(2*n)])]`
-/

namespace A174134.P15636347332705142284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141554 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174134.P15636347332705142284

/-! ## A174134.P10689295640156902014

`record[and(A057114(2*(n+2)), A216246(n))]`
-/

namespace A174134.P10689295640156902014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057114 (2 * (n + 2))) (A216246 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174134.P10689295640156902014

/-!
# A174135: Irregular triangle read by rows: T(n,k), n >= 2, 1 <= k <= n/2, = number of rooted forests with n nodes and k trees, with at least two nodes in each tree.

The programs for A174135, there is no canonical definition to state claims against.
-/

/-! ## A174135.P16362606651793984404

`filter[A106235(n+1), A276398(#)]`
-/

namespace A174135.P16362606651793984404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A174135.P16362606651793984404

/-!
# A174136: Partial sums of A003087.

The programs for A174136, there is no canonical definition to state claims against.
-/

/-! ## A174136.P18129720430810877166

`∑[A003087(n)]`
-/

namespace A174136.P18129720430810877166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174136.P18129720430810877166

/-! ## A174136.P4539976173103299560

`A003087(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A174136.P4539976173103299560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003087 n + a (A023443 n).toNat

end

end A174136.P4539976173103299560

/-! ## A174136.P9016070975478567979

`∑[∑[A361589(n)]]`
-/

namespace A174136.P9016070975478567979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361589 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174136.P9016070975478567979

/-! ## A174136.P7122490044478702988

`A003087(A004917(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A174136.P7122490044478702988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003087 (A004917 (n + 1)).toNat + a (n - 1)

end

end A174136.P7122490044478702988

/-! ## A174136.P915466206436759391

`A003087(A004905(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A174136.P915466206436759391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003087 (A004905 (n + 1)).toNat + a (n - 1)

end

end A174136.P915466206436759391

/-!
# A174137: Partial sums of A006905.

The programs for A174137, there is no canonical definition to state claims against.
-/

/-! ## A174137.P5477881394859452197

`∑[A006905(n)]`
-/

namespace A174137.P5477881394859452197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174137.P5477881394859452197

/-! ## A174137.P15286946558880179349

`∑[A348151(n)+a(n-1)]` with `a(0)=1`
-/

namespace A174137.P15286946558880179349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A348151 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174137.P15286946558880179349

/-! ## A174137.P7988670017245676516

`∑[∑[A348151(A028310(n))]]`
-/

namespace A174137.P7988670017245676516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348151 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174137.P7988670017245676516

/-! ## A174137.P599609791383392831

`∑[∑[A348151(A000007(n)+n)]]`
-/

namespace A174137.P599609791383392831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348151 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174137.P599609791383392831

/-! ## A174137.P5095817930238925371

`a(n-1)+A006905(n)+A007318(n)%((-1)^n)` with `a(0)=1`
-/

namespace A174137.P5095817930238925371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006905 n + Int.tmod (A007318 n) ((-1) ^ n))

end

end A174137.P5095817930238925371

/-!
# A174138: Numbers congruent to {5,6,7,8,9,15,16,17,18,19} mod 25.

The programs for A174138, the canonical program `A174138.P10082789459203428470` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174138 has offset 1).

The definition of A174138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174138.P10082789459203428470

`n+10+5*floor((floor(n/5)-1)/2)+10*floor(floor(n/5)/2)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174138

/-- `n+10+5*floor((floor(n/5)-1)/2)+10*floor(floor(n/5)/2)` -/
def P10082789459203428470.Spec : Prop :=
  ∀ n, P10082789459203428470.a n = A174138 (n + 1)

theorem P10082789459203428470.correct : P10082789459203428470.Spec := by
  intro n
  simp only [A174138, Nat.add_sub_cancel]

end A174138

/-! ## A174138.P9144104561435216467

`ogf((5+x+x^2+x^3+x^4+6x^5+x^6+x^7+x^8+x^9+6x^10)/(1-x-x^10+x^11))`
-/

namespace A174138.P9144104561435216467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1, 1, 1, 1, 6, 1, 1, 1, 1, 6] [1, -1, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1] n

end

end A174138.P9144104561435216467

namespace A174138

/-- `ogf((5+x+x^2+x^3+x^4+6x^5+x^6+x^7+x^8+x^9+6x^10)/(1-x-x^10+x^11))` -/
def P9144104561435216467.Spec : Prop :=
  ∀ n, P9144104561435216467.a n = A174138 (n + 1)

end A174138

/-! ## A174138.P14537811661935289621

`comp[A174139(n+1)]`
-/

namespace A174138.P14537811661935289621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174138.P14537811661935289621

namespace A174138

/-- `comp[A174139(n+1)]` -/
def P14537811661935289621.Spec : Prop :=
  ∀ n, (P14537811661935289621.a n : ℤ) = A174138 (n + 1)

end A174138

/-! ## A174138.P2039876173975393562

`eq[1, A001204(A130497(n))]`
-/

namespace A174138.P2039876173975393562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 (A130497 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174138.P2039876173975393562

namespace A174138

/-- `eq[1, A001204(A130497(n))]` -/
def P2039876173975393562.Spec : Prop :=
  ∀ n, (P2039876173975393562.a n : ℤ) = A174138 (n + 1)

end A174138

/-! ## A174138.P731054713614419160

`lt[A163818(A002266(n)), A209229(3*n+4)]`
-/

namespace A174138.P731054713614419160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163818 (A002266 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174138.P731054713614419160

namespace A174138

/-- `lt[A163818(A002266(n)), A209229(3*n+4)]` -/
def P731054713614419160.Spec : Prop :=
  ∀ n, (P731054713614419160.a n : ℤ) = A174138 (n + 1)

end A174138

/-! ## A174138.P7638031537322536436

`lt[A033999(A027868(n)), A103582(n)]`
-/

namespace A174138.P7638031537322536436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A027868 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103582 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174138.P7638031537322536436

namespace A174138

/-- `lt[A033999(A027868(n)), A103582(n)]` -/
def P7638031537322536436.Spec : Prop :=
  ∀ n, (P7638031537322536436.a n : ℤ) = A174138 (n + 1)

end A174138

/-!
# A174139: Numbers congruent to {0,1,2,3,4,10,11,12,13,14,20,21,22,23,24} mod 25.

The programs for A174139, the canonical program `A174139.P12345827715275463118` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174139 has offset 1).

The definition of A174139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174139.P12345827715275463118

`comp[A174138(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174139

/-- `comp[A174138(n+1)]` -/
def P12345827715275463118.Spec : Prop :=
  ∀ n, (P12345827715275463118.a n : ℤ) = A174139 (n + 1)

theorem P12345827715275463118.correct : P12345827715275463118.Spec := by
  intro n
  simp only [A174139, Nat.add_sub_cancel]

end A174139

/-! ## A174139.P18334221207142803252

`eq[0, val(A008421(n), 5)]`
-/

namespace A174139.P18334221207142803252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008421 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174139.P18334221207142803252

namespace A174139

/-- `eq[0, val(A008421(n), 5)]` -/
def P18334221207142803252.Spec : Prop :=
  ∀ n, (P18334221207142803252.a n : ℤ) = A174139 (n + 1)

end A174139

/-! ## A174139.P12611580240670026170

`lt[1, A001204(A130497(n))]`
-/

namespace A174139.P12611580240670026170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001204 (A130497 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174139.P12611580240670026170

namespace A174139

/-- `lt[1, A001204(A130497(n))]` -/
def P12611580240670026170.Spec : Prop :=
  ∀ n, (P12611580240670026170.a n : ℤ) = A174139 (n + 1)

end A174139

/-! ## A174139.P183640011894902971

`eq[30, or(30, A027868(n))]`
-/

namespace A174139.P183640011894902971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 30 (A027868 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174139.P183640011894902971

namespace A174139

/-- `eq[30, or(30, A027868(n))]` -/
def P183640011894902971.Spec : Prop :=
  ∀ n, (P183640011894902971.a n : ℤ) = A174139 (n + 1)

end A174139

/-! ## A174139.P6204611247826008541

`eq[0, A060356(a(n-1)+val(n, 5))]` with `a(0)=0`
-/

namespace A174139.P6204611247826008541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A060356 (f2 (n - 1) + (SequenceMachineLib.valuation n 5 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174139.P6204611247826008541

namespace A174139

/-- `eq[0, A060356(a(n-1)+val(n, 5))]` -/
def P6204611247826008541.Spec : Prop :=
  ∀ n, (P6204611247826008541.a n : ℤ) = A174139 (n + 1)

end A174139

/-! ## A174139.P8749910691466172889

`lt[A283104(A027868(n)), A016389(n)]`
-/

namespace A174139.P8749910691466172889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283104 (A027868 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174139.P8749910691466172889

namespace A174139

/-- `lt[A283104(A027868(n)), A016389(n)]` -/
def P8749910691466172889.Spec : Prop :=
  ∀ n, (P8749910691466172889.a n : ℤ) = A174139 (n + 1)

end A174139

/-! ## A174139.P1959056352742028836

`lt[A151755(n), A261988(A027868(n))]`
-/

namespace A174139.P1959056352742028836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261988 (A027868 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174139.P1959056352742028836

namespace A174139

/-- `lt[A151755(n), A261988(A027868(n))]` -/
def P1959056352742028836.Spec : Prop :=
  ∀ n, (P1959056352742028836.a n : ℤ) = A174139 (n + 1)

end A174139

/-!
# A174140: Numbers congruent to k mod 25, where 10 <= k <= 24.

The programs for A174140, the canonical program `A174140.P11114160364900289592` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174140 has offset 1).

The definition of A174140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174140.P11114160364900289592

`record[10%gcd(25, n)+n]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174140

/-- `record[10%gcd(25, n)+n]` -/
def P11114160364900289592.Spec : Prop :=
  ∀ n, (P11114160364900289592.a n : ℤ) = A174140 (n + 1)

theorem P11114160364900289592.correct : P11114160364900289592.Spec := by
  intro n
  simp only [A174140, Nat.add_sub_cancel]

end A174140

/-! ## A174140.P13829144755751686161

`10*ceil((n+1)/15)+n`
-/

namespace A174140.P13829144755751686161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ⌈(n + 1 : ℚ) / 15⌉ + (n : ℤ)

end

end A174140.P13829144755751686161

namespace A174140

/-- `10*ceil((n+1)/15)+n` -/
def P13829144755751686161.Spec : Prop :=
  ∀ n, P13829144755751686161.a n = A174140 (n + 1)

end A174140

/-! ## A174140.P15300367104366042687

`comp[A174141(n+1)]`
-/

namespace A174140.P15300367104366042687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174140.P15300367104366042687

namespace A174140

/-- `comp[A174141(n+1)]` -/
def P15300367104366042687.Spec : Prop :=
  ∀ n, (P15300367104366042687.a n : ℤ) = A174140 (n + 1)

end A174140

/-! ## A174140.P18184134417717116482

`lt[A003823(floor(n/5)), 1]`
-/

namespace A174140.P18184134417717116482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003823 ⌊(n : ℚ) / 5⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A174140.P18184134417717116482

namespace A174140

/-- `lt[A003823(floor(n/5)), 1]` -/
def P18184134417717116482.Spec : Prop :=
  ∀ n, (P18184134417717116482.a n : ℤ) = A174140 (n + 1)

end A174140

/-! ## A174140.P12280128130315302502

`comp[A007494(n-n%10)+n]`
-/

namespace A174140.P12280128130315302502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n - n % 10) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174140.P12280128130315302502

namespace A174140

/-- `comp[A007494(n-n%10)+n]` -/
def P12280128130315302502.Spec : Prop :=
  ∀ n, (P12280128130315302502.a n : ℤ) = A174140 (n + 1)

end A174140

/-!
# A174141: Numbers congruent to k mod 25, where 0 <= k <= 9.

The programs for A174141, the canonical program `A174141.P7404785314974589776` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174141 has offset 1).

The definition of A174141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174141.P7404785314974589776

`ogf((x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+16x^10)/(1-x-x^10+x^11))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174141

/-- `ogf((x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9+16x^10)/(1-x-x^10+x^11))` -/
def P7404785314974589776.Spec : Prop :=
  ∀ n, P7404785314974589776.a n = A174141 (n + 1)

theorem P7404785314974589776.correct : P7404785314974589776.Spec := by
  intro n
  simp only [A174141, Nat.add_sub_cancel]

end A174141

/-! ## A174141.P3649070814873083278

`A007494(n-n%10)+n`
-/

namespace A174141.P3649070814873083278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n - n % 10) + (n : ℤ)

end

end A174141.P3649070814873083278

namespace A174141

/-- `A007494(n-n%10)+n` -/
def P3649070814873083278.Spec : Prop :=
  ∀ n, P3649070814873083278.a n = A174141 (n + 1)

end A174141

/-! ## A174141.P6902369094834223306

`A008597(A059995(n))+n`
-/

namespace A174141.P6902369094834223306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A059995 n).toNat + (n : ℤ)

end

end A174141.P6902369094834223306

namespace A174141

/-- `A008597(A059995(n))+n` -/
def P6902369094834223306.Spec : Prop :=
  ∀ n, P6902369094834223306.a n = A174141 (n + 1)

end A174141

/-! ## A174141.P14553129766450004957

`A026430(A169932(n))+n`
-/

namespace A174141.P14553129766450004957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (A169932 n).toNat + (n : ℤ)

end

end A174141.P14553129766450004957

namespace A174141

/-- `A026430(A169932(n))+n` -/
def P14553129766450004957.Spec : Prop :=
  ∀ n, P14553129766450004957.a n = A174141 (n + 1)

end A174141

/-! ## A174141.P8929032055314094033

`comp[A174140(n+1)]`
-/

namespace A174141.P8929032055314094033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A174141.P8929032055314094033

namespace A174141

/-- `comp[A174140(n+1)]` -/
def P8929032055314094033.Spec : Prop :=
  ∀ n, (P8929032055314094033.a n : ℤ) = A174141 (n + 1)

end A174141

/-!
# A174142: Either 2*k^2+-3 is a prime.

The programs for A174142, there is no canonical definition to state claims against.
-/

/-! ## A174142.P15705837930560987884

`eq[1, A257196(A239288(n))]`
-/

namespace A174142.P15705837930560987884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257196 (A239288 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174142.P15705837930560987884

/-! ## A174142.P13380135364383473841

`Δ[n²]-A127440(A000101(n+1))`
-/

namespace A174142.P13380135364383473841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A127440 (A000101 (n + 1)).toNat

end

end A174142.P13380135364383473841

/-! ## A174142.P2963932791205647459

`lt[1, A007318(A020639(n*(a(n-1)+1)+9))]` with `a(0)=7, a(1)=7`
-/

namespace A174142.P2963932791205647459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 7] fun n f2 =>
  A007318 (A020639 ((n : ℤ) * (f2 (n - 1) + 1) + 9).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A174142.P2963932791205647459

/-! ## A174142.P3217197224774450006

`lt[A111573(n), A000010(A111574(n+2))]`
-/

namespace A174142.P3217197224774450006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A111574 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174142.P3217197224774450006

/-! ## A174142.P5018122810053108561

`lt[A132356(n), A113184(A155506(2*n+1))]`
-/

namespace A174142.P5018122810053108561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (A155506 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174142.P5018122810053108561

/-!
# A174143: Partials sums of A002794.

The programs for A174143, there is no canonical definition to state claims against.
-/

/-! ## A174143.P8237310929326566135

`∑[A002794(n)]`
-/

namespace A174143.P8237310929326566135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174143.P8237310929326566135

/-! ## A174143.P5611459681122491457

`A002794(A007953(n))+a(n-1)` with `a(0)=1`
-/

namespace A174143.P5611459681122491457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002794 (A007953 n).toNat + a (n - 1)

end

end A174143.P5611459681122491457

/-! ## A174143.P9120251987479317998

`A002794(A087087(n))+a(n-1)` with `a(0)=1`
-/

namespace A174143.P9120251987479317998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002794 (A087087 n).toNat + a (n - 1)

end

end A174143.P9120251987479317998

/-! ## A174143.P13745848643066809122

`A002794(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A174143.P13745848643066809122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002794 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A174143.P13745848643066809122

/-!
# A174144: Primes of the form 2^p*3^q*5^r*7^s + 1.

The programs for A174144, there is no canonical definition to state claims against.
-/

/-! ## A174144.P8892070035234009876

`∪[A002200(n+1), A061638(n+1)]`
-/

namespace A174144.P8892070035234009876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174144.P8892070035234009876

/-! ## A174144.P10215096212695267065

`p?[A002473(n+1)+1]`
-/

namespace A174144.P10215096212695267065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174144.P10215096212695267065

/-! ## A174144.P2034720533856821803

`∩[A000040(n+1), A002473(n+1)+1]`
-/

namespace A174144.P2034720533856821803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174144.P2034720533856821803

/-! ## A174144.P11329568390854518256

`∩[A002473(n+1)+1, A008578(n+1)]`
-/

namespace A174144.P11329568390854518256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174144.P11329568390854518256

/-! ## A174144.P13706112028201901542

`record[A006530(A002473(n+1)+1)]`
-/

namespace A174144.P13706112028201901542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002473 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P13706112028201901542

/-! ## A174144.P16976809755284287444

`record[A008472(A002473(n+1)+1)]`
-/

namespace A174144.P16976809755284287444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A002473 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P16976809755284287444

/-! ## A174144.P4250284903404282712

`record[A020639(A002473(n+1)+1)]`
-/

namespace A174144.P4250284903404282712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002473 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P4250284903404282712

/-! ## A174144.P6700198178820698450

`record[A006530(A118541(n)+1)]`
-/

namespace A174144.P6700198178820698450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A118541 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P6700198178820698450

/-! ## A174144.P11231470987431460504

`record[A014963(A118541(n)+1)]`
-/

namespace A174144.P11231470987431460504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A118541 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P11231470987431460504

/-! ## A174144.P4052783138402362378

`record[A020639(A118541(n)+1)]`
-/

namespace A174144.P4052783138402362378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A118541 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P4052783138402362378

/-! ## A174144.P4160051525310945525

`record[A006530(A071785(n+1)+1)]`
-/

namespace A174144.P4160051525310945525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071785 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P4160051525310945525

/-! ## A174144.P1947241147474241309

`record[A008472(A071785(n+1)+1)]`
-/

namespace A174144.P1947241147474241309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A071785 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P1947241147474241309

/-! ## A174144.P1473020313549961410

`record[A014963(A071785(n+1)+1)]`
-/

namespace A174144.P1473020313549961410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A071785 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P1473020313549961410

/-! ## A174144.P892104712761090802

`record[A020639(A071785(n+1)+1)]`
-/

namespace A174144.P892104712761090802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A071785 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P892104712761090802

/-! ## A174144.P541526332928952237

`record[A061397(A071785(n+1)+1)]`
-/

namespace A174144.P541526332928952237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A071785 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P541526332928952237

/-! ## A174144.P2991686627712068033

`record[A006530(A262401(n+1)+1)]`
-/

namespace A174144.P2991686627712068033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A262401 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P2991686627712068033

/-! ## A174144.P7579674350968375133

`record[A014963(A262401(n+1)+1)]`
-/

namespace A174144.P7579674350968375133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A262401 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P7579674350968375133

/-! ## A174144.P14125095815088996877

`record[A020639(A262401(n+1)+1)]`
-/

namespace A174144.P14125095815088996877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A262401 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174144.P14125095815088996877

/-!
# A174145: Number of rooted forests with n nodes in which each component contains at least two nodes.

The programs for A174145, there is no canonical definition to state claims against.
-/

/-! ## A174145.P14901568053183425752

`A000081(n+1)-A000081(n)`
-/

namespace A174145.P14901568053183425752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A000081 n

end

end A174145.P14901568053183425752

/-! ## A174145.P1970400148847330656

`Δ[A222379(n)]+Δ[A222380(n)]`
-/

namespace A174145.P1970400148847330656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A174145.P1970400148847330656

/-! ## A174145.P4240295117123737018

`Δ[A000081(n)]`
-/

namespace A174145.P4240295117123737018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174145.P4240295117123737018

/-! ## A174145.P13509604212367299404

`Δ[A222380(n)+A222379(n)]`
-/

namespace A174145.P13509604212367299404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222380 n + A222379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174145.P13509604212367299404

/-! ## A174145.P17721188783069873540

`A038001(A005408(n))-A000081(n)`
-/

namespace A174145.P17721188783069873540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038001 (A005408 n).toNat - A000081 n

end

end A174145.P17721188783069873540

/-! ## A174145.P3947039095631506778

`Δ[A095341(n+1)/(n+1)]`
-/

namespace A174145.P3947039095631506778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095341 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174145.P3947039095631506778

/-! ## A174145.P4690521254777940531

`Δ[A213674(n)-A213683(n)]`
-/

namespace A174145.P4690521254777940531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - A213683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174145.P4690521254777940531

/-! ## A174145.P13060150009511535830

`Δ[A106234(∑[n]+2)]`
-/

namespace A174145.P13060150009511535830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174145.P13060150009511535830

/-! ## A174145.P9687190106254221690

`Δ[A318753(2*n²)]`
-/

namespace A174145.P9687190106254221690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174145.P9687190106254221690

/-! ## A174145.P1883848663814908657

`Δ[A318757(2*n²)]`
-/

namespace A174145.P1883848663814908657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174145.P1883848663814908657

/-!
# A174146: Partial sums of A000238.

The programs for A174146, there is no canonical definition to state claims against.
-/

/-! ## A174146.P9499225017422551116

`∑[A000238(n+1)]`
-/

namespace A174146.P9499225017422551116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174146.P9499225017422551116

/-! ## A174146.P6218193956900542679

`∑[A038056(n+1)-A000060(n+1)]`
-/

namespace A174146.P6218193956900542679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038056 (n + 1) - A000060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174146.P6218193956900542679

/-! ## A174146.P15415172482427684888

`∑[2*A005751(n+1)-A007748(n+1)]`
-/

namespace A174146.P15415172482427684888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005751 (n + 1) - A007748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174146.P15415172482427684888

/-! ## A174146.P7373015563620257155

`∑[A139621(∑[n]+n)]`
-/

namespace A174146.P7373015563620257155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139621 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174146.P7373015563620257155

/-! ## A174146.P14196851491130417734

`∑[A350789(∑[n]+n)]`
-/

namespace A174146.P14196851491130417734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350789 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174146.P14196851491130417734

/-! ## A174146.P2380688799830327404

`∑[A350914(∑[n]+n)]`
-/

namespace A174146.P2380688799830327404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350914 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174146.P2380688799830327404

/-! ## A174146.P14846148169722207946

`∑[A335362(∑[n+1])]`
-/

namespace A174146.P14846148169722207946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335362 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174146.P14846148169722207946

/-!
# A174147: a(n) = n-th sum{p-1|p is prime and divisor of n} plus n-th product{p-1|p is prime and divisor of n}.

The programs for A174147, the canonical program `A174147.P5805914630021460573` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174147 has offset 1).

The definition of A174147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174147.P16983256181144325618

`A300718(A007947(n+1))+A055631(n+1)`
-/

namespace A174147.P16983256181144325618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300718 (A007947 (n + 1)).toNat + A055631 (n + 1)

end

end A174147.P16983256181144325618

namespace A174147

/-- `A300718(A007947(n+1))+A055631(n+1)` -/
def P16983256181144325618.Spec : Prop :=
  ∀ n, P16983256181144325618.a n = A174147 (n + 1)

end A174147

/-! ## A174147.P13003423680028576351

`A055631(n+1)+A173557(n+1)-A000007(n)`
-/

namespace A174147.P13003423680028576351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1) + (A173557 (n + 1) - A000007 n)

end

end A174147.P13003423680028576351

namespace A174147

/-- `A055631(n+1)+A173557(n+1)-A000007(n)` -/
def P13003423680028576351.Spec : Prop :=
  ∀ n, P13003423680028576351.a n = A174147 (n + 1)

end A174147

/-! ## A174147.P15642563024886809162

`A055631(n+1)+A173557(n+1)%A003215(n)`
-/

namespace A174147.P15642563024886809162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1) + Int.tmod (A173557 (n + 1)) (A003215 n)

end

end A174147.P15642563024886809162

namespace A174147

/-- `A055631(n+1)+A173557(n+1)%A003215(n)` -/
def P15642563024886809162.Spec : Prop :=
  ∀ n, P15642563024886809162.a n = A174147 (n + 1)

end A174147

/-! ## A174147.P5805914630021460573

`A087156(∏{p}[n+1, #-1]+∑{p}[n+1, #-1])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174147

/-- `A087156(∏{p}[n+1, #-1]+∑{p}[n+1, #-1])` -/
def P5805914630021460573.Spec : Prop :=
  ∀ n, P5805914630021460573.a n = A174147 (n + 1)

theorem P5805914630021460573.correct : P5805914630021460573.Spec := by
  intro n
  simp only [A174147, Nat.add_sub_cancel]

end A174147

/-! ## A174147.P4147229430667676190

`A087156(∑{p}[n+1, #-1]+abs(A023900(n+1)))`
-/

namespace A174147.P4147229430667676190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) + |A023900 (n + 1)|).toNat

end

end A174147.P4147229430667676190

namespace A174147

/-- `A087156(∑{p}[n+1, #-1]+abs(A023900(n+1)))` -/
def P4147229430667676190.Spec : Prop :=
  ∀ n, P4147229430667676190.a n = A174147 (n + 1)

end A174147

/-! ## A174147.P7385294095675756258

`A087156(A173557(n+1)+A055631(n+1))`
-/

namespace A174147.P7385294095675756258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A173557 (n + 1) + A055631 (n + 1)).toNat

end

end A174147.P7385294095675756258

namespace A174147

/-- `A087156(A173557(n+1)+A055631(n+1))` -/
def P7385294095675756258.Spec : Prop :=
  ∀ n, P7385294095675756258.a n = A174147 (n + 1)

end A174147

/-! ## A174147.P14594553684968787818

`A087156(∏{p}[n+1, #-1]+A008472(n+1)-A001221(n+1))`
-/

namespace A174147.P14594553684968787818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1) + (A008472 (n + 1) - A001221 (n + 1))).toNat

end

end A174147.P14594553684968787818

namespace A174147

/-- `A087156(∏{p}[n+1, #-1]+A008472(n+1)-A001221(n+1))` -/
def P14594553684968787818.Spec : Prop :=
  ∀ n, P14594553684968787818.a n = A174147 (n + 1)

end A174147

/-!
# A174148: Triangle read by rows: T(n,k) = binomial(n,k)*(binomial(n-1,k-1)*binomial(n+1,k+1) + binomial(n-1,k)*binomial(n+1,k)), with T(0,0) = 1.

The programs for A174148, there is no canonical definition to state claims against.
-/

/-! ## A174148.P1773032886998703493

`A001263(n+1)*A350512(n)`
-/

namespace A174148.P1773032886998703493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A350512 n

end

end A174148.P1773032886998703493

/-! ## A174148.P368700579436158841

`sqrt(A174158(n+1))*A350512(n)`
-/

namespace A174148.P368700579436158841
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174158 (n + 1) : ℝ) * (A350512 n : ℝ)

end

end A174148.P368700579436158841

/-! ## A174148.P10261488331077018379

`ceil(A132787(n+1)/2)*A350512(n)`
-/

namespace A174148.P10261488331077018379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132787 (n + 1) : ℚ) / 2⌉ * A350512 n

end

end A174148.P10261488331077018379

/-! ## A174148.P690077565034895683

`A001263(n+1)*A175948(A081577(n))`
-/

namespace A174148.P690077565034895683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A175948 (A081577 n).toNat

end

end A174148.P690077565034895683

/-! ## A174148.P2229221096074129978

`A133700(A176644(n))`
-/

namespace A174148.P2229221096074129978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A176644 n).toNat

end

end A174148.P2229221096074129978

/-!
# A174149: A symmetrical binomial product triangle sequence:q=4; t(n,m,q)=If[n == 0 || n == 1, 1, Product[Binomial[n + i, m + i], {i, -Floor[q/2], Floor[q/2]}] + Product[Binomial[n + i, n - m + i], {i, -Floor[q/2], Floor[q/2]}]].

The programs for A174149, there is no canonical definition to state claims against.
-/

/-! ## A174149.P7255794531936252720

`A169890(A028275(n)!)`
-/

namespace A174149.P7255794531936252720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169890 (Nat.factorial (A028275 n).toNat)

end

end A174149.P7255794531936252720

/-! ## A174149.P46817990516425317

`A276837(4*A157212(n))`
-/

namespace A174149.P46817990516425317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276837 (4 * A157212 n).toNat

end

end A174149.P46817990516425317

/-! ## A174149.P5028806454606200969

`A267328(7*A167040(n))`
-/

namespace A174149.P5028806454606200969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (7 * A167040 n).toNat

end

end A174149.P5028806454606200969

/-! ## A174149.P17833355456719929035

`A267617(A174449(n)+15)`
-/

namespace A174149.P17833355456719929035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267617 (A174449 n + 15).toNat

end

end A174149.P17833355456719929035

/-! ## A174149.P13785245692238281836

`A267328(lcm(7, A167040(n)))`
-/

namespace A174149.P13785245692238281836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267328 (Int.lcm 7 (A167040 n))

end

end A174149.P13785245692238281836

/-!
# A174150: Triangle T(n, k) = round(c(n)/(c(k)*c(n-k))) where c(n) = ((n-1)! * n! * (n+1)!)/ 2^(n-1) if n >= 2, otherwise 1, read by rows.

The programs for A174150, there is no canonical definition to state claims against.
-/

/-! ## A174150.P13215006276741676874

`A001263(n+1)*A097688(A225910(n))`
-/

namespace A174150.P13215006276741676874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A097688 (A225910 n).toNat

end

end A174150.P13215006276741676874

/-! ## A174150.P4474991895758471567

`A225369(A022167(n))`
-/

namespace A174150.P4474991895758471567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225369 (A022167 n).toNat

end

end A174150.P4474991895758471567

/-! ## A174150.P8883265146050625285

`A225369(A147565(n))`
-/

namespace A174150.P8883265146050625285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225369 (A147565 n).toNat

end

end A174150.P8883265146050625285

/-! ## A174150.P18390133578767216394

`A047726(A176204(n)²)`
-/

namespace A174150.P18390133578767216394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A176204 n ^ 2).toNat

end

end A174150.P18390133578767216394

/-! ## A174150.P2257651291032000122

`A123088(A136126(n+1))`
-/

namespace A174150.P2257651291032000122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123088 (A136126 (n + 1)).toNat

end

end A174150.P2257651291032000122

/-!
# A174151: Triangle T(n, k) = c(n)/(c(k)*c(n-k)) where c(n) = 12*Product_{j=3..n} ( 12 * binomial(j+2, 4) ) with c(0) = c(1) = 1, read by rows.

The programs for A174151, there is no canonical definition to state claims against.
-/

/-! ## A174151.P7049782566198291120

`ceil(A174117(n)/2*A174125(n))`
-/

namespace A174151.P7049782566198291120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174117 n : ℚ) / 2 * (A174125 n : ℚ)⌉

end

end A174151.P7049782566198291120

/-! ## A174151.P2868338377409394863

`A174117(n)/A154325(n)*A174125(n)`
-/

namespace A174151.P2868338377409394863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174117 n : ℚ) / (A154325 n : ℚ) * (A174125 n : ℚ)

end

end A174151.P2868338377409394863

/-! ## A174151.P16019366265244775693

`round(A174117(A061579(n))*A174125(n)/2)`
-/

namespace A174151.P16019366265244775693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A174117 (A061579 n).toNat * A174125 n : ℚ) / 2)

end

end A174151.P16019366265244775693

/-! ## A174151.P17350397777929511434

`A097807(n)²*round(A174117(n)*A174125(n)/2)`
-/

namespace A174151.P17350397777929511434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * SequenceMachineLib.roundAway ((A174117 n * A174125 n : ℚ) / 2)

end

end A174151.P17350397777929511434

/-! ## A174151.P10644294287007543880

`round(A174117(n)*A174125(n)/2)%A056236(n)`
-/

namespace A174151.P10644294287007543880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A174117 n * A174125 n : ℚ) / 2)) (A056236 n)

end

end A174151.P10644294287007543880

/-!
# A174152: Primes p such that p^2+p+9 is also prime.

The programs for A174152, there is no canonical definition to state claims against.
-/

/-! ## A174152.P9154179514936068366

`p?[A027757(n+1)]`
-/

namespace A174152.P9154179514936068366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174152.P9154179514936068366

/-! ## A174152.P11603407314628791331

`∩[A002476(n+1), A027757(n+1)]`
-/

namespace A174152.P11603407314628791331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P11603407314628791331

/-! ## A174152.P10279799151104269286

`∩[A007645(n+1), A027757(n+1)]`
-/

namespace A174152.P10279799151104269286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P10279799151104269286

/-! ## A174152.P4316407660935861749

`∩[A027757(n+1), A045331(n+1)]`
-/

namespace A174152.P4316407660935861749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P4316407660935861749

/-! ## A174152.P2781924074820922722

`∩[A027757(n+1), A045375(n+1)]`
-/

namespace A174152.P2781924074820922722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P2781924074820922722

/-! ## A174152.P566492438904230651

`∩[A027757(n+1), A164318(n+1)]`
-/

namespace A174152.P566492438904230651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P566492438904230651

/-! ## A174152.P6829905900471879718

`∩[A027757(n+1), A040116(n+1)]`
-/

namespace A174152.P6829905900471879718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P6829905900471879718

/-! ## A174152.P10996545209158841091

`∩[A027757(n+1), A045405(n+1)]`
-/

namespace A174152.P10996545209158841091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P10996545209158841091

/-! ## A174152.P11655991550110463271

`∩[A027757(n+1), A045428(n+1)]`
-/

namespace A174152.P11655991550110463271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P11655991550110463271

/-! ## A174152.P9520579087653157714

`∩[A027757(n+1), A229947(n+1)]`
-/

namespace A174152.P9520579087653157714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P9520579087653157714

/-! ## A174152.P8452627946895555840

`∩[A027757(n+1), A325143(n+1)]`
-/

namespace A174152.P8452627946895555840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P8452627946895555840

/-! ## A174152.P11116758351923092543

`∩[A027757(n+1), A059500(n+1)]`
-/

namespace A174152.P11116758351923092543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P11116758351923092543

/-! ## A174152.P4386684247387077314

`∩[A027757(n+1), A045346(n+1)]`
-/

namespace A174152.P4386684247387077314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P4386684247387077314

/-! ## A174152.P170041524002074731

`∩[A027757(n+1), A045360(n+1)]`
-/

namespace A174152.P170041524002074731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P170041524002074731

/-! ## A174152.P11583586031829708930

`∩[A027757(n+1), A140557(n+1)]`
-/

namespace A174152.P11583586031829708930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P11583586031829708930

/-! ## A174152.P7644283099273099134

`∩[A027757(n+1), A167464(n+1)]`
-/

namespace A174152.P7644283099273099134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P7644283099273099134

/-! ## A174152.P15873267886071608972

`∩[A027757(n+1), A140562(n+1)]`
-/

namespace A174152.P15873267886071608972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P15873267886071608972

/-! ## A174152.P12374201664048950393

`∩[A027757(n+1), A140563(n+1)]`
-/

namespace A174152.P12374201664048950393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P12374201664048950393

/-! ## A174152.P17516222571768022813

`∩[A027757(n+1), A049591(n+1)]`
-/

namespace A174152.P17516222571768022813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P17516222571768022813

/-! ## A174152.P8567972508515383700

`∩[A027757(n+1), A067774(n+1)]`
-/

namespace A174152.P8567972508515383700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174152.P8567972508515383700

/-!
# A174156: Numbers n such that n^32+(n+1)^32 is a prime.

The programs for A174156, there is no canonical definition to state claims against.
-/

/-! ## A174156.P3889264756178090666

`eq[n+2, A244948(n+1)]+1`
-/

namespace A174156.P3889264756178090666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174156.P3889264756178090666

/-! ## A174156.P2657778778843724178

`eq[n+1, A244948(A028310(n))]`
-/

namespace A174156.P2657778778843724178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244948 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174156.P2657778778843724178

/-! ## A174156.P14562081191753558789

`A020725(eq[n+2, A244948(n+1)])`
-/

namespace A174156.P14562081191753558789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174156.P14562081191753558789

/-! ## A174156.P2227531169710253479

`lt[A244948(A028310(n))+A001489(n), 2]`
-/

namespace A174156.P2227531169710253479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244948 (A028310 n).toNat + A001489 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A174156.P2227531169710253479

/-! ## A174156.P7870865821228122581

`eq[n+1, A244948(A233583(n+1))]`
-/

namespace A174156.P7870865821228122581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244948 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174156.P7870865821228122581

/-!
# A174158: Triangle read by rows: T(n,m) = (binomial(n - 1, m - 1)*binomial(n, m - 1)/m)^2.

The programs for A174158, the canonical program `A174158.P4598955516773709472` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174158 has offset 1).

The definition of A174158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(C(row(n), col(n))*C(row(n)+1, col(n))/(col(n)+1))²` (program `A174158.P14880240798963859627`, by `A174158.P14880240798963859627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174158.P14880240798963859627

`(C(row(n), col(n))*C(row(n)+1, col(n))/(col(n)+1))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174158.P14880240798963859627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)) ^ 2

end

end A174158.P14880240798963859627

namespace A174158

/-- `(C(row(n), col(n))*C(row(n)+1, col(n))/(col(n)+1))²` -/
def P14880240798963859627.Spec : Prop :=
  ∀ n, P14880240798963859627.a n = (A174158 (n + 1) : ℚ)

theorem P14880240798963859627.correct : P14880240798963859627.Spec := by
  intro n
  simp only [A174158, Nat.add_sub_cancel, A174158.P14880240798963859627.a, A174158.P4598955516773709472.a, A001263, A001263.P115983165618393794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174158

/-! ## A174158.P4598955516773709472

`A001263(n+1)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174158

/-- `A001263(n+1)²` -/
def P4598955516773709472.Spec : Prop :=
  ∀ n, P4598955516773709472.a n = A174158 (n + 1)

theorem P4598955516773709472.correct : P4598955516773709472.Spec := by
  intro n
  simp only [A174158, Nat.add_sub_cancel]

end A174158

/-! ## A174158.P15027988968358539314

`A090181(comp[∑[n]])²`
-/

namespace A174158.P15027988968358539314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2

end

end A174158.P15027988968358539314

namespace A174158

/-- `A090181(comp[∑[n]])²` -/
def P15027988968358539314.Spec : Prop :=
  ∀ n, P15027988968358539314.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P3245220517976182250

`ceil((A174124(n)/2)²)`
-/

namespace A174158.P3245220517976182250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A174124 n : ℚ) / 2) ^ 2⌉

end

end A174158.P3245220517976182250

namespace A174158

/-- `ceil((A174124(n)/2)²)` -/
def P3245220517976182250.Spec : Prop :=
  ∀ n, P3245220517976182250.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P12661694835841662924

`ceil(A132787(n+1)/2)²`
-/

namespace A174158.P12661694835841662924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132787 (n + 1) : ℚ) / 2⌉ ^ 2

end

end A174158.P12661694835841662924

namespace A174158

/-- `ceil(A132787(n+1)/2)²` -/
def P12661694835841662924.Spec : Prop :=
  ∀ n, P12661694835841662924.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P2757341810887351268

`A001263(C(2, n)+1+n)^2`
-/

namespace A174158.P2757341810887351268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (Nat.choose 2 n + 1 + n) ^ 2

end

end A174158.P2757341810887351268

namespace A174158

/-- `A001263(C(2, n)+1+n)^2` -/
def P2757341810887351268.Spec : Prop :=
  ∀ n, P2757341810887351268.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P17572330399880617862

`A131198(A007401(n+1))²`
-/

namespace A174158.P17572330399880617862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 (A007401 (n + 1)).toNat ^ 2

end

end A174158.P17572330399880617862

namespace A174158

/-- `A131198(A007401(n+1))²` -/
def P17572330399880617862.Spec : Prop :=
  ∀ n, P17572330399880617862.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P12554828552508868204

`A132808(A132119(n+1))²`
-/

namespace A174158.P12554828552508868204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132808 (A132119 (n + 1)).toNat ^ 2

end

end A174158.P12554828552508868204

namespace A174158

/-- `A132808(A132119(n+1))²` -/
def P12554828552508868204.Spec : Prop :=
  ∀ n, P12554828552508868204.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P8213287067039182113

`(A174124(n)/A154325(n))²`
-/

namespace A174158.P8213287067039182113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A174124 n : ℚ) / (A154325 n : ℚ)) ^ 2

end

end A174158.P8213287067039182113

namespace A174158

/-- `(A174124(n)/A154325(n))²` -/
def P8213287067039182113.Spec : Prop :=
  ∀ n, P8213287067039182113.a n = (A174158 (n + 1) : ℚ)

end A174158

/-! ## A174158.P14614790625578288444

`A131198(A014132(n+1)-1)²`
-/

namespace A174158.P14614790625578288444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 (A014132 (n + 1) - 1).toNat ^ 2

end

end A174158.P14614790625578288444

namespace A174158

/-- `A131198(A014132(n+1)-1)²` -/
def P14614790625578288444.Spec : Prop :=
  ∀ n, P14614790625578288444.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P17142141245918484758

`(A132789(n+1)-A014473(n))²`
-/

namespace A174158.P17142141245918484758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132789 (n + 1) - A014473 n) ^ 2

end

end A174158.P17142141245918484758

namespace A174158

/-- `(A132789(n+1)-A014473(n))²` -/
def P17142141245918484758.Spec : Prop :=
  ∀ n, P17142141245918484758.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P14306652663108089825

`(A108838(n+2)-A119308(n))²`
-/

namespace A174158.P14306652663108089825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108838 (n + 2) - A119308 n) ^ 2

end

end A174158.P14306652663108089825

namespace A174158

/-- `(A108838(n+2)-A119308(n))²` -/
def P14306652663108089825.Spec : Prop :=
  ∀ n, P14306652663108089825.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P15685364546104139102

`(A103371(n)/A004736(n+1))²`
-/

namespace A174158.P15685364546104139102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A103371 n : ℚ) / (A004736 (n + 1) : ℚ)) ^ 2

end

end A174158.P15685364546104139102

namespace A174158

/-- `(A103371(n)/A004736(n+1))²` -/
def P15685364546104139102.Spec : Prop :=
  ∀ n, P15685364546104139102.a n = (A174158 (n + 1) : ℚ)

end A174158

/-! ## A174158.P13257457313573502505

`(A132813(n)/A002260(n+1))²`
-/

namespace A174158.P13257457313573502505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A132813 n : ℚ) / (A002260 (n + 1) : ℚ)) ^ 2

end

end A174158.P13257457313573502505

namespace A174158

/-- `(A132813(n)/A002260(n+1))²` -/
def P13257457313573502505.Spec : Prop :=
  ∀ n, P13257457313573502505.a n = (A174158 (n + 1) : ℚ)

theorem P13257457313573502505.correct : P13257457313573502505.Spec := by
  intro n
  simp only [A174158, Nat.add_sub_cancel, A174158.P13257457313573502505.a, A174158.P4598955516773709472.a, A001263, A001263.P115983165618393794.a, A002260, A002260.P9170571874073898642.a, A132813, A132813.P7242134249665991509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174158

/-! ## A174158.P18020226077912156077

`(A114687(n+1)/A059268(n))²`
-/

namespace A174158.P18020226077912156077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A114687 (n + 1) : ℚ) / (A059268 n : ℚ)) ^ 2

end

end A174158.P18020226077912156077

namespace A174158

/-- `(A114687(n+1)/A059268(n))²` -/
def P18020226077912156077.Spec : Prop :=
  ∀ n, P18020226077912156077.a n = (A174158 (n + 1) : ℚ)

end A174158

/-! ## A174158.P3268037057467091597

`(A114656(n+1)/A130321(n))²`
-/

namespace A174158.P3268037057467091597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A114656 (n + 1) : ℚ) / (A130321 n : ℚ)) ^ 2

end

end A174158.P3268037057467091597

namespace A174158

/-- `(A114656(n+1)/A130321(n))²` -/
def P3268037057467091597.Spec : Prop :=
  ∀ n, P3268037057467091597.a n = (A174158 (n + 1) : ℚ)

end A174158

/-! ## A174158.P3546822413403294176

`A001263(n+1)*A090181(comp[∑[n]])`
-/

namespace A174158.P3546822413403294176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A090181 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A174158.P3546822413403294176

namespace A174158

/-- `A001263(n+1)*A090181(comp[∑[n]])` -/
def P3546822413403294176.Spec : Prop :=
  ∀ n, P3546822413403294176.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P10852894037881100266

`(A132812(n+1)/A002024(n+1))²`
-/

namespace A174158.P10852894037881100266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A132812 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)) ^ 2

end

end A174158.P10852894037881100266

namespace A174158

/-- `(A132812(n+1)/A002024(n+1))²` -/
def P10852894037881100266.Spec : Prop :=
  ∀ n, P10852894037881100266.a n = (A174158 (n + 1) : ℚ)

end A174158

/-! ## A174158.P18067067980863786642

`A001263(char[1]+1+n)*A001263(n+1)`
-/

namespace A174158.P18067067980863786642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) * A001263 (n + 1)

end

end A174158.P18067067980863786642

namespace A174158

/-- `A001263(char[1]+1+n)*A001263(n+1)` -/
def P18067067980863786642.Spec : Prop :=
  ∀ n, P18067067980863786642.a n = A174158 (n + 1)

end A174158

/-! ## A174158.P15113612343060493847

`A001263(n+1)^A020639(or(3, n+1)+7)`
-/

namespace A174158.P15113612343060493847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) ^ (A020639 (Nat.lor 3 (n + 1) + 7) : ℤ)

end

end A174158.P15113612343060493847

namespace A174158

/-- `A001263(n+1)^A020639(or(3, n+1)+7)` -/
def P15113612343060493847.Spec : Prop :=
  ∀ n, P15113612343060493847.a n = (A174158 (n + 1) : ℚ)

end A174158

/-!
# A174159: Triangle read by rows. T(n, k) = 2 * Eulerian(n, k - 1) - binomial(n - 1, k - 1)* binomial(n, k - 1) / k.

The programs for A174159, the canonical program `A174159.P9873712142150513935` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174159 has offset 1).

The definition of A174159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174159.P14172793879665489891

`A176200(n)+1-A001263(n+1)`
-/

namespace A174159.P14172793879665489891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A001263 (n + 1))

end

end A174159.P14172793879665489891

namespace A174159

/-- `A176200(n)+1-A001263(n+1)` -/
def P14172793879665489891.Spec : Prop :=
  ∀ n, P14172793879665489891.a n = A174159 (n + 1)

theorem P14172793879665489891.correct : P14172793879665489891.Spec := by
  intro n
  simp only [A174159, Nat.add_sub_cancel, A174159.P14172793879665489891.a, A174159.P9873712142150513935.a, A001263, A001263.P115983165618393794.a, A008292, A008292.P18172958035633294905.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174159

/-! ## A174159.P3661964915373465453

`A176200(n)+1-sqrt(A174158(n+1))`
-/

namespace A174159.P3661964915373465453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A176200 n : ℝ) + (1 - Real.sqrt (A174158 (n + 1) : ℝ))

end

end A174159.P3661964915373465453

namespace A174159

/-- `A176200(n)+1-sqrt(A174158(n+1))` -/
def P3661964915373465453.Spec : Prop :=
  ∀ n, P3661964915373465453.a n = (A174159 (n + 1) : ℝ)

end A174159

/-! ## A174159.P14150194231435236501

`ceil(A176200(n)-A132787(n+1)/2)`
-/

namespace A174159.P14150194231435236501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176200 n : ℚ) - (A132787 (n + 1) : ℚ) / 2⌉

end

end A174159.P14150194231435236501

namespace A174159

/-- `ceil(A176200(n)-A132787(n+1)/2)` -/
def P14150194231435236501.Spec : Prop :=
  ∀ n, P14150194231435236501.a n = A174159 (n + 1)

end A174159

/-! ## A174159.P9873712142150513935

`2*A008292(n+1)-A001263(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A174159

/-- `2*A008292(n+1)-A001263(n+1)` -/
def P9873712142150513935.Spec : Prop :=
  ∀ n, P9873712142150513935.a n = A174159 (n + 1)

theorem P9873712142150513935.correct : P9873712142150513935.Spec := by
  intro n
  simp only [A174159, Nat.add_sub_cancel]

end A174159

/-! ## A174159.P9016571144799715483

`2*A008292(n+1)-A090181(comp[∑[n]])`
-/

namespace A174159.P9016571144799715483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A090181 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A174159.P9016571144799715483

namespace A174159

/-- `2*A008292(n+1)-A090181(comp[∑[n]])` -/
def P9016571144799715483.Spec : Prop :=
  ∀ n, P9016571144799715483.a n = A174159 (n + 1)

end A174159

/-! ## A174159.P11986717888895727351

`A356116(n+1)+A008292(n+1)`
-/

namespace A174159.P11986717888895727351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356116 (n + 1) + A008292 (n + 1)

end

end A174159.P11986717888895727351

namespace A174159

/-- `A356116(n+1)+A008292(n+1)` -/
def P11986717888895727351.Spec : Prop :=
  ∀ n, P11986717888895727351.a n = A174159 (n + 1)

end A174159

/-! ## A174159.P12638129839967503505

`A356116(n+1)+A123125(comp[∑[n]])`
-/

namespace A174159.P12638129839967503505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356116 (n + 1) + A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A174159.P12638129839967503505

namespace A174159

/-- `A356116(n+1)+A123125(comp[∑[n]])` -/
def P12638129839967503505.Spec : Prop :=
  ∀ n, P12638129839967503505.a n = A174159 (n + 1)

end A174159

/-! ## A174159.P17255908801918716421

`A356116(n+1)+sqrt(A177823(n+1))`
-/

namespace A174159.P17255908801918716421
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A356116 (n + 1) : ℝ) + Real.sqrt (A177823 (n + 1) : ℝ)

end

end A174159.P17255908801918716421

namespace A174159

/-- `A356116(n+1)+sqrt(A177823(n+1))` -/
def P17255908801918716421.Spec : Prop :=
  ∀ n, P17255908801918716421.a n = (A174159 (n + 1) : ℝ)

end A174159

/-! ## A174159.P6640209859136185313

`ceil(A356116(n+1)+A176200(n)/2)`
-/

namespace A174159.P6640209859136185313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A356116 (n + 1) : ℚ) + (A176200 n : ℚ) / 2⌉

end

end A174159.P6640209859136185313

namespace A174159

/-- `ceil(A356116(n+1)+A176200(n)/2)` -/
def P6640209859136185313.Spec : Prop :=
  ∀ n, P6640209859136185313.a n = A174159 (n + 1)

end A174159

/-! ## A174159.P15736890776667315835

`A001263(n+1)+2*A356116(n+1)`
-/

namespace A174159.P15736890776667315835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + 2 * A356116 (n + 1)

end

end A174159.P15736890776667315835

namespace A174159

/-- `A001263(n+1)+2*A356116(n+1)` -/
def P15736890776667315835.Spec : Prop :=
  ∀ n, P15736890776667315835.a n = A174159 (n + 1)

end A174159

/-!
# A174160: Triangle read by rows: T(n,m) = 2*Eulerian(n, m-1) - (binomial(n-1, m-1) * binomial(n, m-1) / m)^2.

The programs for A174160, the canonical program `A174160.P13574911793730813180` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174160 has offset 1).

The definition of A174160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174160.P17572978284595147669

`A176200(n)+1-A174158(n+1)`
-/

namespace A174160.P17572978284595147669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A174158 (n + 1))

end

end A174160.P17572978284595147669

namespace A174160

/-- `A176200(n)+1-A174158(n+1)` -/
def P17572978284595147669.Spec : Prop :=
  ∀ n, P17572978284595147669.a n = A174160 (n + 1)

theorem P17572978284595147669.correct : P17572978284595147669.Spec := by
  intro n
  simp only [A174160, Nat.add_sub_cancel, A174160.P17572978284595147669.a, A174160.P13574911793730813180.a, A008292, A008292.P18172958035633294905.a, A174158, A174158.P4598955516773709472.a, A176200, A176200.P6006487728366513129.a, A001263, A001263.P115983165618393794.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174160

/-! ## A174160.P9515967542083048871

`A176200(n)+1-A001263(n+1)²`
-/

namespace A174160.P9515967542083048871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A001263 (n + 1) ^ 2)

end

end A174160.P9515967542083048871

namespace A174160

/-- `A176200(n)+1-A001263(n+1)²` -/
def P9515967542083048871.Spec : Prop :=
  ∀ n, P9515967542083048871.a n = A174160 (n + 1)

theorem P9515967542083048871.correct : P9515967542083048871.Spec := by
  intro n
  simp only [A174160, Nat.add_sub_cancel, A174160.P9515967542083048871.a, A174160.P13574911793730813180.a, A001263, A001263.P115983165618393794.a, A008292, A008292.P18172958035633294905.a, A174158, A174158.P4598955516773709472.a, A176200, A176200.P6006487728366513129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174160

/-! ## A174160.P13574911793730813180

`2*A008292(n+1)-A174158(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A174160

/-- `2*A008292(n+1)-A174158(n+1)` -/
def P13574911793730813180.Spec : Prop :=
  ∀ n, P13574911793730813180.a n = A174160 (n + 1)

theorem P13574911793730813180.correct : P13574911793730813180.Spec := by
  intro n
  simp only [A174160, Nat.add_sub_cancel]

end A174160

/-! ## A174160.P5869457801382572734

`2*A008292(n+1)-A001263(n+1)²`
-/

namespace A174160.P5869457801382572734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A001263 (n + 1) ^ 2

end

end A174160.P5869457801382572734

namespace A174160

/-- `2*A008292(n+1)-A001263(n+1)²` -/
def P5869457801382572734.Spec : Prop :=
  ∀ n, P5869457801382572734.a n = A174160 (n + 1)

end A174160

/-! ## A174160.P8728090883522067551

`A007318(n)+A141690(n)-A001263(n+1)²`
-/

namespace A174160.P8728090883522067551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A141690 n - A001263 (n + 1) ^ 2)

end

end A174160.P8728090883522067551

namespace A174160

/-- `A007318(n)+A141690(n)-A001263(n+1)²` -/
def P8728090883522067551.Spec : Prop :=
  ∀ n, P8728090883522067551.a n = A174160 (n + 1)

theorem P8728090883522067551.correct : P8728090883522067551.Spec := by
  intro n
  simp only [A174160, Nat.add_sub_cancel, A174160.P8728090883522067551.a, A174160.P13574911793730813180.a, A001263, A001263.P115983165618393794.a, A007318, A007318.P11755526479805562006.a, A008292, A008292.P18172958035633294905.a, A141690, A141690.P1589277232017455012.a, A174158, A174158.P4598955516773709472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174160

/-!
# A174163: a(n) = (A173919(k)*A173919(k+1))/2.

The programs for A174163, there is no canonical definition to state claims against.
-/

/-! ## A174163.P4848929340748740980

`record[floor((A030664(n)+A024000(n))/2)]`
-/

namespace A174163.P4848929340748740980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030664 n + A024000 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174163.P4848929340748740980

/-! ## A174163.P2672590213027617543

`A173919(n+1)/2*A173919(n+2)`
-/

namespace A174163.P2672590213027617543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173919 (n + 1) : ℚ) / 2 * (A173919 (n + 2) : ℚ)

end

end A174163.P2672590213027617543

/-! ## A174163.P6693468961141259816

`A063934(n+1)*A173919(n+1)-A147846(n+1)`
-/

namespace A174163.P6693468961141259816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (n + 1) * A173919 (n + 1) - A147846 (n + 1)

end

end A174163.P6693468961141259816

/-! ## A174163.P8255763674019440671

`record[A110654(A030664(n)-n)]`
-/

namespace A174163.P8255763674019440671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A030664 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174163.P8255763674019440671

/-! ## A174163.P2701450268574559276

`record[A004526(A030664(n)+A024000(n))]`
-/

namespace A174163.P2701450268574559276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A030664 n + A024000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174163.P2701450268574559276

/-!
# A174164: Numbers k such that 1 = abs(sum{p-1|p is prime and divisor of k} - product{p-1|p is prime and divisor of k}).

The programs for A174164, there is no canonical definition to state claims against.
-/

/-! ## A174164.P17941265714826411729

`∪[A100367(n+1), A143204(n+1)]`
-/

namespace A174164.P17941265714826411729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174164.P17941265714826411729

/-! ## A174164.P17022544654392183197

`∪[A100367(n+1), A143207(n+1)]`
-/

namespace A174164.P17022544654392183197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174164.P17022544654392183197

/-! ## A174164.P10199357739188559093

`∪[2*A080193(n+1), A100367(n+1)]`
-/

namespace A174164.P10199357739188559093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174164.P10199357739188559093

/-! ## A174164.P14356773383274068344

`∪[30*A051037(n+1), A100367(n+1)]`
-/

namespace A174164.P14356773383274068344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174164.P14356773383274068344

/-! ## A174164.P9762529284494179417

`lt[A039649(∏{p}[n, #]), ∑{p}[n, #]]`
-/

namespace A174164.P9762529284494179417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (∏ p ∈ Nat.primeFactors (f2 n), p)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A174164.P9762529284494179417

/-!
# A174165: Numbers k for which (prime(k) - 1)^2 +1 is prime.

The programs for A174165, there is no canonical definition to state claims against.
-/

/-! ## A174165.P11276458264909597201

`eq[1, A260869(n+1)]+1`
-/

namespace A174165.P11276458264909597201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A174165.P11276458264909597201

/-! ## A174165.P8194275416177021317

`A036234(A070689(n+1))`
-/

namespace A174165.P8194275416177021317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A070689 (n + 1)).toNat

end

end A174165.P8194275416177021317

/-! ## A174165.P12129651453089955125

`A000720(A127435(n+1))`
-/

namespace A174165.P12129651453089955125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A127435 (n + 1)).toNat

end

end A174165.P12129651453089955125

/-! ## A174165.P4881793982934639694

`record[A049084(A090693(n+1))]`
-/

namespace A174165.P4881793982934639694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A090693 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174165.P4881793982934639694

/-! ## A174165.P2564198302165236791

`record[A252489(A005574(n+1))]`
-/

namespace A174165.P2564198302165236791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (A005574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174165.P2564198302165236791

/-! ## A174165.P2499972689338222680

`A000720(p?[A090693(n+1)])`
-/

namespace A174165.P2499972689338222680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174165.P2499972689338222680

/-! ## A174165.P261212568377222

`A003963(p?[A090693(n+1)])`
-/

namespace A174165.P261212568377222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174165.P261212568377222

/-! ## A174165.P3891608523240422918

`A026233(p?[A090693(n+1)])`
-/

namespace A174165.P3891608523240422918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174165.P3891608523240422918

/-! ## A174165.P4506808710939162078

`A049084(p?[A090693(n+1)])`
-/

namespace A174165.P4506808710939162078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174165.P4506808710939162078

/-! ## A174165.P7671532561551366380

`A055396(p?[A090693(n+1)])`
-/

namespace A174165.P7671532561551366380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174165.P7671532561551366380

/-!
# A174166: Composites n such that 2*n-1 is prime.

The programs for A174166, the canonical program `A174166.P8885773317569641825` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174166 has offset 1).

The definition of A174166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174166.P8885773317569641825

`A034784(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174166

/-- `A034784(n+1)+1` -/
def P8885773317569641825.Spec : Prop :=
  ∀ n, P8885773317569641825.a n = A174166 (n + 1)

theorem P8885773317569641825.correct : P8885773317569641825.Spec := by
  intro n
  simp only [A174166, Nat.add_sub_cancel]

end A174166

/-! ## A174166.P8411438995731853559

`ceil(A034849(n+1)/2)`
-/

namespace A174166.P8411438995731853559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034849 (n + 1) : ℚ) / 2⌉

end

end A174166.P8411438995731853559

namespace A174166

/-- `ceil(A034849(n+1)/2)` -/
def P8411438995731853559.Spec : Prop :=
  ∀ n, P8411438995731853559.a n = A174166 (n + 1)

end A174166

/-! ## A174166.P4955341175676938765

`filter[A006254(n+1), A005171(#)]`
-/

namespace A174166.P4955341175676938765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A174166.P4955341175676938765

namespace A174166

/-- `filter[A006254(n+1), A005171(#)]` -/
def P4955341175676938765.Spec : Prop :=
  ∀ n, P4955341175676938765.a n = A174166 (n + 1)

end A174166

/-! ## A174166.P5047675240498624619

`filter[A006254(n+1), A066247(#)]`
-/

namespace A174166.P5047675240498624619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A174166.P5047675240498624619

namespace A174166

/-- `filter[A006254(n+1), A066247(#)]` -/
def P5047675240498624619.Spec : Prop :=
  ∀ n, P5047675240498624619.a n = A174166 (n + 1)

end A174166

/-! ## A174166.P11328459886302436620

`filter[A130291(n+1), A005171(#)]`
-/

namespace A174166.P11328459886302436620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A174166.P11328459886302436620

namespace A174166

/-- `filter[A130291(n+1), A005171(#)]` -/
def P11328459886302436620.Spec : Prop :=
  ∀ n, P11328459886302436620.a n = A174166 (n + 1)

end A174166

/-! ## A174166.P14104646278431129024

`filter[A111333(n+1), A066247(#)]`
-/

namespace A174166.P14104646278431129024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A174166.P14104646278431129024

namespace A174166

/-- `filter[A111333(n+1), A066247(#)]` -/
def P14104646278431129024.Spec : Prop :=
  ∀ n, P14104646278431129024.a n = A174166 (n + 1)

end A174166

/-! ## A174166.P13348499624865890461

`filter[A130291(n+1), A066247(#)]`
-/

namespace A174166.P13348499624865890461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A174166.P13348499624865890461

namespace A174166

/-- `filter[A130291(n+1), A066247(#)]` -/
def P13348499624865890461.Spec : Prop :=
  ∀ n, P13348499624865890461.a n = A174166 (n + 1)

end A174166

/-! ## A174166.P12522266512695809641

`filter[A111333(n+2), A005171(#)]`
-/

namespace A174166.P12522266512695809641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A174166.P12522266512695809641

namespace A174166

/-- `filter[A111333(n+2), A005171(#)]` -/
def P12522266512695809641.Spec : Prop :=
  ∀ n, P12522266512695809641.a n = A174166 (n + 1)

end A174166

/-! ## A174166.P11763940002186266094

`lt[A010051(n+1), A101264(n)]+1`
-/

namespace A174166.P11763940002186266094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A174166.P11763940002186266094

namespace A174166

/-- `lt[A010051(n+1), A101264(n)]+1` -/
def P11763940002186266094.Spec : Prop :=
  ∀ n, (P11763940002186266094.a n : ℤ) = A174166 (n + 1)

theorem P11763940002186266094.correct : P11763940002186266094.Spec := by
  intro n
  simp only [A174166, Nat.add_sub_cancel, A174166.P11763940002186266094.f1, A174166.P11763940002186266094.f2, A174166.P11763940002186266094.a, A174166.P8885773317569641825.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A034784, A034784.P9791422119006832211.f1, A034784.P9791422119006832211.f2, A034784.P9791422119006832211.a, A101264, A101264.P9977125953316836564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A174166

/-! ## A174166.P16182334617249867054

`eq[A066247(n+1), A340101(n)]+1`
-/

namespace A174166.P16182334617249867054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A174166.P16182334617249867054

namespace A174166

/-- `eq[A066247(n+1), A340101(n)]+1` -/
def P16182334617249867054.Spec : Prop :=
  ∀ n, (P16182334617249867054.a n : ℤ) = A174166 (n + 1)

end A174166

/-! ## A174166.P6538508677254101922

`ceil(p?[2*A018252(n+1)-1]/2)`
-/

namespace A174166.P6538508677254101922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018252 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A174166.P6538508677254101922

namespace A174166

/-- `ceil(p?[2*A018252(n+1)-1]/2)` -/
def P6538508677254101922.Spec : Prop :=
  ∀ n, P6538508677254101922.a n = A174166 (n + 1)

end A174166

/-! ## A174166.P16486228198871508482

`∩[A002808(n+1), A006254(n+1)]`
-/

namespace A174166.P16486228198871508482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174166.P16486228198871508482

namespace A174166

/-- `∩[A002808(n+1), A006254(n+1)]` -/
def P16486228198871508482.Spec : Prop :=
  ∀ n, (P16486228198871508482.a n : ℤ) = A174166 (n + 1)

end A174166

/-! ## A174166.P9694875540522306715

`∩[A006254(n+1), A018252(n+1)]`
-/

namespace A174166.P9694875540522306715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174166.P9694875540522306715

namespace A174166

/-- `∩[A006254(n+1), A018252(n+1)]` -/
def P9694875540522306715.Spec : Prop :=
  ∀ n, (P9694875540522306715.a n : ℤ) = A174166 (n + 1)

end A174166

/-! ## A174166.P9169995219853306844

`∩[A002808(n+1), A111333(n+1)]`
-/

namespace A174166.P9169995219853306844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174166.P9169995219853306844

namespace A174166

/-- `∩[A002808(n+1), A111333(n+1)]` -/
def P9169995219853306844.Spec : Prop :=
  ∀ n, (P9169995219853306844.a n : ℤ) = A174166 (n + 1)

end A174166

/-! ## A174166.P16911657395966159825

`∩[A006254(n+1), A141468(n+1)]`
-/

namespace A174166.P16911657395966159825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174166.P16911657395966159825

namespace A174166

/-- `∩[A006254(n+1), A141468(n+1)]` -/
def P16911657395966159825.Spec : Prop :=
  ∀ n, (P16911657395966159825.a n : ℤ) = A174166 (n + 1)

end A174166

/-! ## A174166.P10782688033912145275

`∩[A005097(n+1)+1, A018252(n+1)]`
-/

namespace A174166.P10782688033912145275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174166.P10782688033912145275

namespace A174166

/-- `∩[A005097(n+1)+1, A018252(n+1)]` -/
def P10782688033912145275.Spec : Prop :=
  ∀ n, (P10782688033912145275.a n : ℤ) = A174166 (n + 1)

end A174166

/-! ## A174166.P5729696078588234626

`∩[A005097(n+1)+1, A141468(n+1)]`
-/

namespace A174166.P5729696078588234626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174166.P5729696078588234626

namespace A174166

/-- `∩[A005097(n+1)+1, A141468(n+1)]` -/
def P5729696078588234626.Spec : Prop :=
  ∀ n, (P5729696078588234626.a n : ℤ) = A174166 (n + 1)

end A174166

/-! ## A174166.P9147392318984723711

`∩[A005097(n+1), A072668(n+1)]+1`
-/

namespace A174166.P9147392318984723711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A174166.P9147392318984723711

namespace A174166

/-- `∩[A005097(n+1), A072668(n+1)]+1` -/
def P9147392318984723711.Spec : Prop :=
  ∀ n, (P9147392318984723711.a n : ℤ) = A174166 (n + 1)

end A174166

/-! ## A174166.P1146422035031479942

`∩[A072668(n+1), A102781(n+1)]+1`
-/

namespace A174166.P1146422035031479942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A174166.P1146422035031479942

namespace A174166

/-- `∩[A072668(n+1), A102781(n+1)]+1` -/
def P1146422035031479942.Spec : Prop :=
  ∀ n, (P1146422035031479942.a n : ℤ) = A174166 (n + 1)

end A174166

/-! ## A174166.P5903735633959551971

`∩[A006254(n+1), A389838(n+1)]`
-/

namespace A174166.P5903735633959551971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174166.P5903735633959551971

namespace A174166

/-- `∩[A006254(n+1), A389838(n+1)]` -/
def P5903735633959551971.Spec : Prop :=
  ∀ n, (P5903735633959551971.a n : ℤ) = A174166 (n + 1)

end A174166

/-!
# A174167: Number of safe primes between squares of consecutive primes.

The programs for A174167, there is no canonical definition to state claims against.
-/

/-! ## A174167.P10369237917007625961

`Δ[A156875(A001248(n+1))]`
-/

namespace A174167.P10369237917007625961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (A001248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174167.P10369237917007625961

/-! ## A174167.P1546103082789069467

`Δ[A156875(A000040(n+1)²)]`
-/

namespace A174167.P1546103082789069467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (A000040 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174167.P1546103082789069467

/-! ## A174167.P6011003414039623708

`Δ[A156875(A058853(n+1)²)]`
-/

namespace A174167.P6011003414039623708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (A058853 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174167.P6011003414039623708

/-! ## A174167.P13169520484268052483

`Δ[record[A156875(A066048(n+1))]]`
-/

namespace A174167.P13169520484268052483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (A066048 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174167.P13169520484268052483

/-! ## A174167.P9588483323258284819

`Δ[record[A156875(A006530(n+1)²)]]`
-/

namespace A174167.P9588483323258284819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156875 (A006530 (n + 1) ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174167.P9588483323258284819

/-!
# A174168: A (1,3) Somos-4 sequence.

The programs for A174168, the canonical program `A174168.P7216156156001894241` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174168 has offset 0).

The definition of A174168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174168.P7216156156001894241

`(a(n-1)*a(n-3)+3*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=17`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174168

/-- `(a(n-1)*a(n-3)+3*a(n-2)²)/a(n-4)` -/
def P7216156156001894241.Spec : Prop :=
  ∀ n, P7216156156001894241.a n = (A174168 n : ℚ)

end A174168

/-! ## A174168.P13476325710920665000

`A302600(A166952(n))`
-/

namespace A174168.P13476325710920665000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302600 (A166952 n).toNat

end

end A174168.P13476325710920665000

namespace A174168

/-- `A302600(A166952(n))` -/
def P13476325710920665000.Spec : Prop :=
  ∀ n, P13476325710920665000.a n = A174168 n

end A174168

/-!
# A174170: A (1,3) Somos-4 sequence.

The programs for A174170, the canonical program `A174170.P4326736974108524028` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174170 has offset 0).

The definition of A174170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174170.P4326736974108524028

`(a(n-1)*a(n-3)+3*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=13`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174170

/-- `(a(n-1)*a(n-3)+3*a(n-2)²)/a(n-4)` -/
def P4326736974108524028.Spec : Prop :=
  ∀ n, P4326736974108524028.a n = (A174170 n : ℚ)

end A174170

/-!
# A174171: A generalized Chebyshev transform of the Motzkin numbers A001006.

The programs for A174171, there is no canonical definition to state claims against.
-/

/-! ## A174171.P12955645164440677179

`A325363(A158568(n+1))`
-/

namespace A174171.P12955645164440677179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (A158568 (n + 1)).toNat

end

end A174171.P12955645164440677179

/-! ## A174171.P13457969386318340280

`A001055(A005817(n+4))-1`
-/

namespace A174171.P13457969386318340280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A005817 (n + 4)).toNat - 1

end

end A174171.P13457969386318340280

/-! ## A174171.P16625491419541522395

`A093555(2*n+5)+record[A122301(n)]`
-/

namespace A174171.P16625491419541522395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093555 (2 * n + 5) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174171.P16625491419541522395

/-!
# A174172: Partials sums of A001694.

The programs for A174172, there is no canonical definition to state claims against.
-/

/-! ## A174172.P4555855003854560182

`∑[A001694(n+1)]`
-/

namespace A174172.P4555855003854560182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P4555855003854560182

/-! ## A174172.P16373686909631779383

`∑[sqrt(A374291(n+1))]`
-/

namespace A174172.P16373686909631779383
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374291 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P16373686909631779383

/-! ## A174172.P5250814998184822594

`∑[A224866(n+1)-1]`
-/

namespace A174172.P5250814998184822594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P5250814998184822594

/-! ## A174172.P7983324508454488027

`∑[record[A001694(A324343(n))]]`
-/

namespace A174172.P7983324508454488027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P7983324508454488027

/-! ## A174172.P17215134972440025250

`∑[record[A001694(A324347(n))]]`
-/

namespace A174172.P17215134972440025250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P17215134972440025250

/-! ## A174172.P7680798689221970566

`∑[A084371(n+1)*A306458(n+1)]`
-/

namespace A174172.P7680798689221970566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1) * A306458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P7680798689221970566

/-! ## A174172.P15417204671287366846

`∑[record[A001694(A133310(n))]]`
-/

namespace A174172.P15417204671287366846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P15417204671287366846

/-! ## A174172.P9684442746183208173

`∑[record[A001694(A293428(n))]]`
-/

namespace A174172.P9684442746183208173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A293428 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P9684442746183208173

/-! ## A174172.P11920045984008203304

`∑[record[A001694(A106466(n))]]`
-/

namespace A174172.P11920045984008203304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P11920045984008203304

/-! ## A174172.P5189614643215307806

`∑[record[A001694(A126759(n))]]`
-/

namespace A174172.P5189614643215307806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P5189614643215307806

/-! ## A174172.P11216299706411308652

`∑[record[A001694(A117910(n))]]`
-/

namespace A174172.P11216299706411308652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P11216299706411308652

/-! ## A174172.P3241650996795320029

`∑[A064549(A306458(n+1))]`
-/

namespace A174172.P3241650996795320029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A306458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P3241650996795320029

/-! ## A174172.P14799492832654885139

`∑[record[(n+1)/A055231(n+1)]]`
-/

namespace A174172.P14799492832654885139
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055231 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P14799492832654885139

/-! ## A174172.P14986374197311500731

`∑[lt[n, A183097(n+1)]+1]`
-/

namespace A174172.P14986374197311500731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P14986374197311500731

/-! ## A174172.P9906310673463681742

`∑[record[A057521(n+1)]]`
-/

namespace A174172.P9906310673463681742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P9906310673463681742

/-! ## A174172.P1227106309578610809

`∑[A057521(lt[n, A057521(n+1)]+1)]`
-/

namespace A174172.P1227106309578610809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P1227106309578610809

/-! ## A174172.P10514315062184889048

`∑[A057521(eq[n+1, A057521(n+1)]+1)]`
-/

namespace A174172.P10514315062184889048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P10514315062184889048

/-! ## A174172.P9752372248972614464

`∑[eq[1, A134194(n+1)]+1]`
-/

namespace A174172.P9752372248972614464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134194 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P9752372248972614464

/-! ## A174172.P14839006948051893882

`∑[lt[A134193(n+1), 2]+1]`
-/

namespace A174172.P14839006948051893882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134193 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P14839006948051893882

/-! ## A174172.P11695189060694448267

`∑[eq[n, A057521(A028310(n))]]`
-/

namespace A174172.P11695189060694448267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174172.P11695189060694448267

/-!
# A174174: Floor(Pi^n-n^Pi).

The programs for A174174, the canonical program `A174174.P15499978993565074530` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174174 has offset 1).

The definition of A174174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174174.P15499978993565074530

`floor(π^(n+1)-(n+1)^π)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174174

/-- `floor(π^(n+1)-(n+1)^π)` -/
def P15499978993565074530.Spec : Prop :=
  ∀ n, P15499978993565074530.a n = A174174 (n + 1)

theorem P15499978993565074530.correct : P15499978993565074530.Spec := by
  intro n
  simp only [A174174, Nat.add_sub_cancel]

end A174174

/-!
# A174175: Numbers n such that 10^n + 2*n - 1 is prime.

The programs for A174175, there is no canonical definition to state claims against.
-/

/-! ## A174175.P11011710419752978947

`∑[A211990(∑[A211977(2*n+1)])]`
-/

namespace A174175.P11011710419752978947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211977 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211990 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174175.P11011710419752978947

/-!
# A174179: Numbers k such that 10^k - 2^k - 1 is prime.

The programs for A174179, there is no canonical definition to state claims against.
-/

/-! ## A174179.P13736415861381154304

`∑[A239675(7^n)]`
-/

namespace A174179.P13736415861381154304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239675 (7 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174179.P13736415861381154304

/-!
# A174181: Numbers k such that 2^k+2*k-1 is prime.

The programs for A174181, there is no canonical definition to state claims against.
-/

/-! ## A174181.P3332936129785426114

`A105330(n+1)+1`
-/

namespace A174181.P3332936129785426114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105330 (n + 1) + 1

end

end A174181.P3332936129785426114

/-! ## A174181.P8214268739183417492

`floor(log2(A173168(n+1)))`
-/

namespace A174181.P8214268739183417492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A173168 (n + 1)).toNat

end

end A174181.P8214268739183417492

/-! ## A174181.P2165333489530859921

`A023443(ceil(log2(A173168(n+1))))`
-/

namespace A174181.P2165333489530859921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈Real.logb 2 (A173168 (n + 1) : ℝ)⌉.toNat

end

end A174181.P2165333489530859921

/-! ## A174181.P18083406440470706526

`ceil(log2(A173168(n+1)))-A014963(6*(n+1))`
-/

namespace A174181.P18083406440470706526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A173168 (n + 1) : ℝ)⌉ - A014963 (6 * (n + 1))

end

end A174181.P18083406440470706526

/-! ## A174181.P6044814372914869057

`ceil(log2(A173168(n+1))-A008683(n+1)²!)`
-/

namespace A174181.P6044814372914869057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A173168 (n + 1) : ℝ) - (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℝ)⌉

end

end A174181.P6044814372914869057

/-!
# A174182: Numerator of the first column, n-th row of the table of the Akiyama-Tanigawa transform starting from a top row of Bernoulli numbers.

The programs for A174182, there is no canonical definition to state claims against.
-/

/-! ## A174182.P10802972170740971911

`A174129(n)+A000225(n)*A141056(n)`
-/

namespace A174182.P10802972170740971911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174129 n + A000225 n * A141056 n

end

end A174182.P10802972170740971911

/-!
# A174183: a(n) is the period k such that binomial(m, n) (mod 10) = binomial(m + k, n) (mod 10).

The programs for A174183, there is no canonical definition to state claims against.
-/

/-! ## A174183.P14907892882742511984

`n*a(n-1)` with `a(0)=1, a(1)=10`
-/

namespace A174183.P14907892882742511984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  n * a (n - 1)

end

end A174183.P14907892882742511984

/-! ## A174183.P787063385612886264

`∏[C(9, 8*n)+n]`
-/

namespace A174183.P787063385612886264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 9 (8 * n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A174183.P787063385612886264

/-! ## A174183.P4831008705522474353

`∏[C(3, n²)²+n]`
-/

namespace A174183.P4831008705522474353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (n ^ 2) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A174183.P4831008705522474353

/-! ## A174183.P4346583317018607843

`gcd(10*n!, floor(acot(n)))`
-/

namespace A174183.P4346583317018607843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (10 * Nat.factorial n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A174183.P4346583317018607843

/-! ## A174183.P7717697620358500803

`n!+lcm(n, 9*n!)`
-/

namespace A174183.P7717697620358500803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + Nat.lcm n (9 * Nat.factorial n)

end

end A174183.P7717697620358500803

/-! ## A174183.P4695135237531076416

`∏[a(n-1)+1]` with `a(0)=1, a(1)=10, a(2)=2`
-/

namespace A174183.P4695135237531076416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 2] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A174183.P4695135237531076416

/-! ## A174183.P14145432525143714382

`∏[C(n, a(n-1))]` with `a(0)=1, a(1)=10, a(2)=2`
-/

namespace A174183.P14145432525143714382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 2] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A174183.P14145432525143714382

/-! ## A174183.P9514585372489879138

`a(n-1)/n^(-1)` with `a(0)=1, a(1)=10`
-/

namespace A174183.P9514585372489879138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A174183.P9514585372489879138

/-! ## A174183.P18171370434907719539

`A028329(abs(n+2-abs(1-n)))/4*n!`
-/

namespace A174183.P18171370434907719539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028329 |((n + 2 : ℤ) - |1 - (n : ℤ)|)|.toNat : ℚ) / 4 * (Nat.factorial n : ℚ)

end

end A174183.P18171370434907719539

/-! ## A174183.P17580001455571964362

`A295473(n)+A000142(n)`
-/

namespace A174183.P17580001455571964362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295473 n + A000142 n

end

end A174183.P17580001455571964362

/-!
# A174184: Prime(n)+even nonprime(n) is prime.

The programs for A174184, there is no canonical definition to state claims against.
-/

/-! ## A174184.P6650859214675011802

`∪[A076297(n+1), n^3+1]`
-/

namespace A174184.P6650859214675011802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076297 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A174184.P6650859214675011802

/-! ## A174184.P10516012485957869253

`A076297((n-1)%a(n-1)+1)` with `a(0)=1`
-/

namespace A174184.P10516012485957869253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076297 (Int.tmod ((n : ℤ) - 1) (a (n - 1)) + 1).toNat

end

end A174184.P10516012485957869253

/-! ## A174184.P11075349345987284646

`A076297(abs(1-n)+1)%∑[n+2]`
-/

namespace A174184.P11075349345987284646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076297 (|1 - (n : ℤ)| + 1).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174184.P11075349345987284646

/-! ## A174184.P3430707426599441351

`A076297(n-a(3*5*char[1])+1)` with `a(0)=1, a(1)=2`
-/

namespace A174184.P3430707426599441351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A076297 ((n : ℤ) - a (3 * (5 * (if ∃ j, f1 j = n then 1 else 0))) + 1).toNat

end

end A174184.P3430707426599441351

/-! ## A174184.P15921308574974547005

`∪[A001287(n), A076297(n+1)]`
-/

namespace A174184.P15921308574974547005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174184.P15921308574974547005

/-! ## A174184.P5730523568636313199

`∪[A001496(n), A076297(n+1)]`
-/

namespace A174184.P5730523568636313199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001496 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174184.P5730523568636313199

/-! ## A174184.P5728169363349570074

`∪[A002310(n), A076297(n+1)]`
-/

namespace A174184.P5728169363349570074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174184.P5728169363349570074

/-! ## A174184.P7607422811977411726

`∪[A002604(n), A076297(n+1)]`
-/

namespace A174184.P7607422811977411726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174184.P7607422811977411726

/-! ## A174184.P15437134312274684339

`∪[A004660(n), A076297(n+1)]`
-/

namespace A174184.P15437134312274684339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174184.P15437134312274684339

/-! ## A174184.P8106735790422753562

`∪[A005758(n), A076297(n+1)]`
-/

namespace A174184.P8106735790422753562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005758 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174184.P8106735790422753562

/-!
# A174185: Numbers k such that the k-th prime minus the k-th even nonprime is prime.

The programs for A174185, there is no canonical definition to state claims against.
-/

/-! ## A174185.P5864488261558681162

`∪[38*n²+1, A000720(A231326(n+1))]`
-/

namespace A174185.P5864488261558681162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38 * n ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231326 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174185.P5864488261558681162

/-! ## A174185.P12635575585682765714

`A000720(A231326((n-1)%a(n-1)²+1))` with `a(0)=1`
-/

namespace A174185.P12635575585682765714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000720 (A231326 (Int.tmod ((n : ℤ) - 1) (a (n - 1) ^ 2) + 1).toNat).toNat

end

end A174185.P12635575585682765714

/-! ## A174185.P9234902992086256409

`∪[A000720(A231326(n+1)), A008340(n)]`
-/

namespace A174185.P9234902992086256409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231326 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174185.P9234902992086256409

/-! ## A174185.P11321690239518640373

`∪[A000720(A231326(n+1)), A008393(n)]`
-/

namespace A174185.P11321690239518640373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231326 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008393 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174185.P11321690239518640373

/-! ## A174185.P16387303280795225169

`∪[A000720(A231326(n+1)), A008397(n)]`
-/

namespace A174185.P16387303280795225169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231326 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008397 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174185.P16387303280795225169

/-! ## A174185.P9225873461278571848

`∪[A000720(A231326(n+1)), A014795(n)]`
-/

namespace A174185.P9225873461278571848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231326 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014795 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174185.P9225873461278571848

/-! ## A174185.P4289287764789407066

`∪[A000720(A231326(n+1)), A014799(n)]`
-/

namespace A174185.P4289287764789407066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231326 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174185.P4289287764789407066

/-! ## A174185.P17598102033152875925

`∪[A000720(A231326(n+1)), A016759(n)]`
-/

namespace A174185.P17598102033152875925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A231326 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174185.P17598102033152875925

/-! ## A174185.P10060551245658052053

`A003963(∪[A231326(n+1), A014795(n)])`
-/

namespace A174185.P10060551245658052053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014795 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A174185.P10060551245658052053

/-!
# A174186: A four product triangle sequence based on :a=1;f(n,a)=f(n - 1, a) + a*f(n - 2, a).

The programs for A174186, there is no canonical definition to state claims against.
-/

/-! ## A174186.P919531178643879301

`A003963(A174187(n))`
-/

namespace A174186.P919531178643879301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A174187 n).toNat

end

end A174186.P919531178643879301

/-! ## A174186.P10790122172487795661

`A103360(A081581(n))`
-/

namespace A174186.P10790122172487795661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103360 (A081581 n).toNat

end

end A174186.P10790122172487795661

/-! ## A174186.P15444256064671708709

`A067759(A176791(n))`
-/

namespace A174186.P15444256064671708709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067759 (A176791 n).toNat

end

end A174186.P15444256064671708709

/-! ## A174186.P7164137148990090915

`A099566(A157243(n))`
-/

namespace A174186.P7164137148990090915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099566 (A157243 n).toNat

end

end A174186.P7164137148990090915

/-! ## A174186.P3351508334853849606

`A103360(A157170(n))`
-/

namespace A174186.P3351508334853849606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103360 (A157170 n).toNat

end

end A174186.P3351508334853849606

/-!
# A174187: A four product triangle sequence based on :a=2;f(n,a)=f(n - 1, a) + a*f(n - 2, a).

The programs for A174187, there is no canonical definition to state claims against.
-/

/-! ## A174187.P43581716173356334

`∏{p}[A156742(n), A004525(#)]`
-/

namespace A174187.P43581716173356334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004525 p

end

end A174187.P43581716173356334

/-! ## A174187.P11047714556285270824

`A286417(11^A338756(n+1))`
-/

namespace A174187.P11047714556285270824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286417 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A338756 (n + 1) : ℤ))).toNat

end

end A174187.P11047714556285270824

/-! ## A174187.P2524668327387693158

`A032742(A247433(floor(n/ϕ)!))`
-/

namespace A174187.P2524668327387693158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A247433 (Nat.factorial ⌊(n : ℝ) / Real.goldenRatio⌋.toNat)).toNat

end

end A174187.P2524668327387693158

/-! ## A174187.P4130502553487877666

`A318668(A105939(n)+A053200(n))`
-/

namespace A174187.P4130502553487877666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318668 (A105939 n + A053200 n).toNat

end

end A174187.P4130502553487877666

/-!
# A174188: A four product triangle sequence based on :a=3;f(n,a)=f(n - 1, a) + a*f(n - 2, a).

The programs for A174188, there is no canonical definition to state claims against.
-/

/-! ## A174188.P12669769610214835441

`A110731(A110712(n+1)²)`
-/

namespace A174188.P12669769610214835441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110731 (A110712 (n + 1) ^ 2).toNat

end

end A174188.P12669769610214835441

/-! ## A174188.P5894859824318242073

`A110731(∑[A083054(n+1)]²)`
-/

namespace A174188.P5894859824318242073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110731 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A174188.P5894859824318242073

/-! ## A174188.P13936417925087410307

`A110731(A110712(n+1)*A110712(n+1))`
-/

namespace A174188.P13936417925087410307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110731 (A110712 (n + 1) * A110712 (n + 1)).toNat

end

end A174188.P13936417925087410307

/-! ## A174188.P10866740921456556282

`A070089(A022180(n))%A104744(3*n+4)`
-/

namespace A174188.P10866740921456556282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070089 (A022180 n).toNat) (A104744 (3 * n + 4))

end

end A174188.P10866740921456556282

/-! ## A174188.P1908899533378783373

`A157224(A176642(n))+A040111(A298054(n+1))^A300776(n+1)`
-/

namespace A174188.P1908899533378783373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157224 (A176642 n).toNat : ℚ) + (A040111 (A298054 (n + 1)).toNat : ℚ) ^ (A300776 (n + 1) : ℤ)

end

end A174188.P1908899533378783373

/-!
# A174189: Numbers k such that A000040(k) +/ - A163300(k) are both prime.

The programs for A174189, there is no canonical definition to state claims against.
-/

/-! ## A174189.P17882116049423169598

`A112529(n)%(9*a(n-1))` with `a(0)=1`
-/

namespace A174189.P17882116049423169598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A112529 n) (9 * a (n - 1))

end

end A174189.P17882116049423169598

/-! ## A174189.P1848961651726068767

`∪[A112529(n+1), A008378(n)]`
-/

namespace A174189.P1848961651726068767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174189.P1848961651726068767

/-! ## A174189.P11856043990488598583

`∪[A112529(n+1), A008393(n)]`
-/

namespace A174189.P11856043990488598583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008393 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174189.P11856043990488598583

/-! ## A174189.P2832792850886663684

`∪[A112529(n+1), A008397(n)]`
-/

namespace A174189.P2832792850886663684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008397 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174189.P2832792850886663684

/-! ## A174189.P3625034665500835066

`∪[A112529(n+1), A014795(n)]`
-/

namespace A174189.P3625034665500835066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014795 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174189.P3625034665500835066

/-! ## A174189.P15061891323592969951

`∪[A112529(n+1), A014799(n)]`
-/

namespace A174189.P15061891323592969951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174189.P15061891323592969951

/-! ## A174189.P10369232011637657211

`∪[A112529(n+1), A016759(n)]`
-/

namespace A174189.P10369232011637657211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174189.P10369232011637657211

/-! ## A174189.P2066607433087772003

`∪[A112529(n+1), A016760(n)]`
-/

namespace A174189.P2066607433087772003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016760 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174189.P2066607433087772003

/-! ## A174189.P3510876867348568450

`∪[A016761(n), A112529(n+1)]`
-/

namespace A174189.P3510876867348568450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174189.P3510876867348568450

/-! ## A174189.P4397135367000081065

`∪[A016781(n), A112529(n+1)]`
-/

namespace A174189.P4397135367000081065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016781 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174189.P4397135367000081065

/-!
# A174190: Triangle T(n,m) = numerator of 1/n^2-1/(n-m)^2, read by rows.

The programs for A174190, there is no canonical definition to state claims against.
-/

/-! ## A174190.P9072965930608520837

`-A061035(n+1)`
-/

namespace A174190.P9072965930608520837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A061035 (n + 1)

end

end A174190.P9072965930608520837

/-! ## A174190.P11757091374113916206

`-A175779(comp[∑[n-1]])`
-/

namespace A174190.P11757091374113916206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A175779 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A174190.P11757091374113916206

/-! ## A174190.P14626323654981687172

`Δ[a(n-1)-A061035(n)]` with `a(0)=0`
-/

namespace A174190.P14626323654981687172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A061035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174190.P14626323654981687172

/-! ## A174190.P4372157337493070790

`A174233(lt[(ceil(sqrt(n))²-n)², n])`
-/

namespace A174190.P4372157337493070790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174233 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A174190.P4372157337493070790

/-! ## A174190.P11603216818551963570

`A174233(A004201(n+1))`
-/

namespace A174190.P11603216818551963570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174233 (A004201 (n + 1)).toNat

end

end A174190.P11603216818551963570

/-! ## A174190.P6310641204433941647

`A174390(2*A061035(n+1))`
-/

namespace A174190.P6310641204433941647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174390 (2 * A061035 (n + 1)).toNat

end

end A174190.P6310641204433941647

/-! ## A174190.P16794983250868304090

`A243836(n)-A061035(n+1)`
-/

namespace A174190.P16794983250868304090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n - A061035 (n + 1)

end

end A174190.P16794983250868304090

/-! ## A174190.P8901228934168553767

`A264668(n)-A061035(n+1)`
-/

namespace A174190.P8901228934168553767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n - A061035 (n + 1)

end

end A174190.P8901228934168553767

/-! ## A174190.P13644803027799971890

`A057428(n)*A061035(n+1)`
-/

namespace A174190.P13644803027799971890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A061035 (n + 1)

end

end A174190.P13644803027799971890

/-! ## A174190.P17393084747783776145

`A061035(n+1)*A134824(n)`
-/

namespace A174190.P17393084747783776145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (n + 1) * A134824 n

end

end A174190.P17393084747783776145

/-!
# A174191: Expansion of (1+x)*(2*x-1)/((1-x)*(x^2+2*x-1)).

The programs for A174191, the canonical program `A174191.P2126176400558335772` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174191 has offset 0).

The definition of A174191 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2)/(1-3x+x^2+x^3))` (program `A174191.P2126176400558335772`, by `A174191.P2126176400558335772.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174191.P2126176400558335772

`ogf((1-x-2x^2)/(1-3x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174191

/-- `ogf((1-x-2x^2)/(1-3x+x^2+x^3))` -/
def P2126176400558335772.Spec : Prop :=
  ∀ n, P2126176400558335772.a n = A174191 n

theorem P2126176400558335772.correct : P2126176400558335772.Spec := by
  intro n
  simp only [A174191]

end A174191

/-! ## A174191.P238847641268888533

`2*a(n-1)+a(n-2)-2` with `a(0)=1, a(1)=2`
-/

namespace A174191.P238847641268888533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2

end

end A174191.P238847641268888533

namespace A174191

/-- `2*a(n-1)+a(n-2)-2` -/
def P238847641268888533.Spec : Prop :=
  ∀ n, P238847641268888533.a n = A174191 n

end A174191

/-! ## A174191.P17575459104907885471

`∑[ogf((-1+x+2x^2)/(-1+2x+x^2))]`
-/

namespace A174191.P17575459104907885471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174191.P17575459104907885471

namespace A174191

/-- `∑[ogf((-1+x+2x^2)/(-1+2x+x^2))]` -/
def P17575459104907885471.Spec : Prop :=
  ∀ n, P17575459104907885471.a n = A174191 n

end A174191

/-! ## A174191.P944712325038050620

`floor((sqrt(2)+1)*a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A174191.P944712325038050620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌋ - 1

end

end A174191.P944712325038050620

namespace A174191

/-- `floor((sqrt(2)+1)*a(n-1))-1` -/
def P944712325038050620.Spec : Prop :=
  ∀ n, P944712325038050620.a n = A174191 n

end A174191

/-! ## A174191.P15524773186763546420

`ceil((sqrt(2)+1)*a(n-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A174191.P15524773186763546420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌉ - 2

end

end A174191.P15524773186763546420

namespace A174191

/-- `ceil((sqrt(2)+1)*a(n-1))-2` -/
def P15524773186763546420.Spec : Prop :=
  ∀ n, P15524773186763546420.a n = A174191 n

end A174191

/-! ## A174191.P10025144379559100046

`floor(a(n-1)/(sqrt(2)-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A174191.P10025144379559100046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℝ) / (Real.sqrt (2 : ℝ) - 1)⌋ - 1

end

end A174191.P10025144379559100046

namespace A174191

/-- `floor(a(n-1)/(sqrt(2)-1))-1` -/
def P10025144379559100046.Spec : Prop :=
  ∀ n, P10025144379559100046.a n = A174191 n

end A174191

/-! ## A174191.P3610072032872726896

`ceil(a(n-1)/(sqrt(2)-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A174191.P3610072032872726896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(a (n - 1) : ℝ) / (Real.sqrt (2 : ℝ) - 1)⌉ - 2

end

end A174191.P3610072032872726896

namespace A174191

/-- `ceil(a(n-1)/(sqrt(2)-1))-2` -/
def P3610072032872726896.Spec : Prop :=
  ∀ n, P3610072032872726896.a n = A174191 n

end A174191

/-! ## A174191.P17942077263632639213

`a(n-2)+2*(a(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A174191.P17942077263632639213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 * (a (n - 1) - 1)

end

end A174191.P17942077263632639213

namespace A174191

/-- `a(n-2)+2*(a(n-1)-1)` -/
def P17942077263632639213.Spec : Prop :=
  ∀ n, P17942077263632639213.a n = A174191 n

end A174191

/-! ## A174191.P17426027733110417529

`a(n-2)-2*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A174191.P17426027733110417529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - 2 * (1 - a (n - 1))

end

end A174191.P17426027733110417529

namespace A174191

/-- `a(n-2)-2*(1-a(n-1))` -/
def P17426027733110417529.Spec : Prop :=
  ∀ n, P17426027733110417529.a n = A174191 n

end A174191

/-! ## A174191.P2745421141385571508

`a(n-1)-2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A174191.P2745421141385571508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 2 + (a (n - 1) + a (n - 2))

end

end A174191.P2745421141385571508

namespace A174191

/-- `a(n-1)-2+a(n-1)+a(n-2)` -/
def P2745421141385571508.Spec : Prop :=
  ∀ n, P2745421141385571508.a n = A174191 n

end A174191

/-! ## A174191.P3506694739341097095

`a(n-1)-(2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A174191.P3506694739341097095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (2 - a (n - 1) - a (n - 2))

end

end A174191.P3506694739341097095

namespace A174191

/-- `a(n-1)-(2-a(n-1)-a(n-2))` -/
def P3506694739341097095.Spec : Prop :=
  ∀ n, P3506694739341097095.a n = A174191 n

end A174191

/-! ## A174191.P14598513059364432048

`1+A000129(n)`
-/

namespace A174191.P14598513059364432048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000129 n

end

end A174191.P14598513059364432048

namespace A174191

/-- `1+A000129(n)` -/
def P14598513059364432048.Spec : Prop :=
  ∀ n, P14598513059364432048.a n = A174191 n

end A174191

/-! ## A174191.P4093963906023608994

`∑[abs(Δ[A176981(n)])]`
-/

namespace A174191.P4093963906023608994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174191.P4093963906023608994

namespace A174191

/-- `∑[abs(Δ[A176981(n)])]` -/
def P4093963906023608994.Spec : Prop :=
  ∀ n, P4093963906023608994.a n = A174191 n

end A174191

/-! ## A174191.P17875807883569987530

`1-A176981(n+1)`
-/

namespace A174191.P17875807883569987530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A176981 (n + 1)

end

end A174191.P17875807883569987530

namespace A174191

/-- `1-A176981(n+1)` -/
def P17875807883569987530.Spec : Prop :=
  ∀ n, P17875807883569987530.a n = A174191 n

end A174191

/-! ## A174191.P3640021554340277927

`A002965(2*n)+1`
-/

namespace A174191.P3640021554340277927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n) + 1

end

end A174191.P3640021554340277927

namespace A174191

/-- `A002965(2*n)+1` -/
def P3640021554340277927.Spec : Prop :=
  ∀ n, P3640021554340277927.a n = A174191 n

end A174191

/-! ## A174191.P14081909165017645554

`A135153(2*n)+1`
-/

namespace A174191.P14081909165017645554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (2 * n) + 1

end

end A174191.P14081909165017645554

namespace A174191

/-- `A135153(2*n)+1` -/
def P14081909165017645554.Spec : Prop :=
  ∀ n, P14081909165017645554.a n = A174191 n

end A174191

/-! ## A174191.P18319183583023178167

`A249576(3*n)+1`
-/

namespace A174191.P18319183583023178167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n) + 1

end

end A174191.P18319183583023178167

namespace A174191

/-- `A249576(3*n)+1` -/
def P18319183583023178167.Spec : Prop :=
  ∀ n, P18319183583023178167.a n = A174191 n

end A174191

/-! ## A174191.P4752806532173204311

`xor(1, A111954(n))+1`
-/

namespace A174191.P4752806532173204311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111954 n) + 1

end

end A174191.P4752806532173204311

namespace A174191

/-- `xor(1, A111954(n))+1` -/
def P4752806532173204311.Spec : Prop :=
  ∀ n, P4752806532173204311.a n = A174191 n

end A174191

/-! ## A174191.P5775865001970212332

`A209971(n)+1-n`
-/

namespace A174191.P5775865001970212332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209971 n + (1 - (n : ℤ))

end

end A174191.P5775865001970212332

namespace A174191

/-- `A209971(n)+1-n` -/
def P5775865001970212332.Spec : Prop :=
  ∀ n, P5775865001970212332.a n = A174191 n

end A174191

/-! ## A174191.P10430083062985927419

`∑[A001333(abs(1-n))]`
-/

namespace A174191.P10430083062985927419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174191.P10430083062985927419

namespace A174191

/-- `∑[A001333(abs(1-n))]` -/
def P10430083062985927419.Spec : Prop :=
  ∀ n, P10430083062985927419.a n = A174191 n

end A174191

/-!
# A174192: Expansion of g.f. (1-x+2*x^2)/((1-x)*(1-2*x-x^2)).

The programs for A174192, the canonical program `A174192.P12176646823665587248` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174192 has offset 0).

The definition of A174192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+2x^2)/(1-3x+x^2+x^3))` (program `A174192.P12176646823665587248`, by `A174192.P12176646823665587248.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174192.P12176646823665587248

`ogf((1-x+2x^2)/(1-3x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174192

/-- `ogf((1-x+2x^2)/(1-3x+x^2+x^3))` -/
def P12176646823665587248.Spec : Prop :=
  ∀ n, P12176646823665587248.a n = A174192 n

theorem P12176646823665587248.correct : P12176646823665587248.Spec := by
  intro n
  simp only [A174192]

end A174192

/-! ## A174192.P10295054300371384825

`2*a(n-1)+a(n-2)+2` with `a(0)=1, a(1)=2`
-/

namespace A174192.P10295054300371384825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) + 2

end

end A174192.P10295054300371384825

namespace A174192

/-- `2*a(n-1)+a(n-2)+2` -/
def P10295054300371384825.Spec : Prop :=
  ∀ n, (P10295054300371384825.a n : ℤ) = A174192 n

end A174192

/-! ## A174192.P2033975488868160299

`a(n-2)+2*(a(n-1)+1)` with `a(0)=1, a(1)=2`
-/

namespace A174192.P2033975488868160299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + 1)

end

end A174192.P2033975488868160299

namespace A174192

/-- `a(n-2)+2*(a(n-1)+1)` -/
def P2033975488868160299.Spec : Prop :=
  ∀ n, (P2033975488868160299.a n : ℤ) = A174192 n

end A174192

/-! ## A174192.P5487385766673269446

`a(n-2)-2*xor(-1, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A174192.P5487385766673269446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - 2 * Int.xor (-1) (a (n - 1))

end

end A174192.P5487385766673269446

namespace A174192

/-- `a(n-2)-2*xor(-1, a(n-1))` -/
def P5487385766673269446.Spec : Prop :=
  ∀ n, P5487385766673269446.a n = A174192 n

end A174192

/-! ## A174192.P16530133496145934295

`4-(2*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A174192.P16530133496145934295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (2 * (1 - a (n - 1)) - a (n - 2))

end

end A174192.P16530133496145934295

namespace A174192

/-- `4-(2*(1-a(n-1))-a(n-2))` -/
def P16530133496145934295.Spec : Prop :=
  ∀ n, P16530133496145934295.a n = A174192 n

end A174192

/-! ## A174192.P1763398720569895698

`a(n-1)+2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A174192.P1763398720569895698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 2 + (a (n - 1) + a (n - 2))

end

end A174192.P1763398720569895698

namespace A174192

/-- `a(n-1)+2+a(n-1)+a(n-2)` -/
def P1763398720569895698.Spec : Prop :=
  ∀ n, (P1763398720569895698.a n : ℤ) = A174192 n

end A174192

/-! ## A174192.P2522204252660535761

`2-(a(n-1)/(1/2-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A174192.P2522204252660535761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 - (a (n - 1) / ((1 : ℚ) / 2 - 1) - a (n - 2))

end

end A174192.P2522204252660535761

namespace A174192

/-- `2-(a(n-1)/(1/2-1)-a(n-2))` -/
def P2522204252660535761.Spec : Prop :=
  ∀ n, P2522204252660535761.a n = (A174192 n : ℚ)

end A174192

/-! ## A174192.P646593890375007798

`A078343(n+1)-1`
-/

namespace A174192.P646593890375007798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (n + 1) - 1

end

end A174192.P646593890375007798

namespace A174192

/-- `A078343(n+1)-1` -/
def P646593890375007798.Spec : Prop :=
  ∀ n, P646593890375007798.a n = A174192 n

end A174192

/-! ## A174192.P16184652559682330964

`A266504(Δ[n²])-1`
-/

namespace A174192.P16184652559682330964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A174192.P16184652559682330964

namespace A174192

/-- `A266504(Δ[n²])-1` -/
def P16184652559682330964.Spec : Prop :=
  ∀ n, P16184652559682330964.a n = A174192 n

end A174192

/-! ## A174192.P10616072379218430938

`Δ[∑[A078343(n)]-n]`
-/

namespace A174192.P10616072379218430938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174192.P10616072379218430938

namespace A174192

/-- `Δ[∑[A078343(n)]-n]` -/
def P10616072379218430938.Spec : Prop :=
  ∀ n, P10616072379218430938.a n = A174192 n

end A174192

/-! ## A174192.P18020745903090870524

`xor(1, A111955(n+1)-1)`
-/

namespace A174192.P18020745903090870524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111955 (n + 1) - 1)

end

end A174192.P18020745903090870524

namespace A174192

/-- `xor(1, A111955(n+1)-1)` -/
def P18020745903090870524.Spec : Prop :=
  ∀ n, P18020745903090870524.a n = A174192 n

end A174192

/-! ## A174192.P16834773565064764575

`A048655(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A174192.P16834773565064764575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048655 (n - 1) + a (n - 1)

end

end A174192.P16834773565064764575

namespace A174192

/-- `A048655(n-1)+a(n-1)` -/
def P16834773565064764575.Spec : Prop :=
  ∀ n, P16834773565064764575.a n = A174192 n

end A174192

/-! ## A174192.P801956981860856052

`A100227(n)+A000129(n)`
-/

namespace A174192.P801956981860856052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n + A000129 n

end

end A174192.P801956981860856052

namespace A174192

/-- `A100227(n)+A000129(n)` -/
def P801956981860856052.Spec : Prop :=
  ∀ n, P801956981860856052.a n = A174192 n

end A174192

/-! ## A174192.P1327538477627200823

`∑[abs(A266505(A004273(n)))]`
-/

namespace A174192.P1327538477627200823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266505 (A004273 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174192.P1327538477627200823

namespace A174192

/-- `∑[abs(A266505(A004273(n)))]` -/
def P1327538477627200823.Spec : Prop :=
  ∀ n, P1327538477627200823.a n = A174192 n

end A174192

/-! ## A174192.P2066260217290290004

`∑[A048655(A004273(n)-n)]`
-/

namespace A174192.P2066260217290290004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174192.P2066260217290290004

namespace A174192

/-- `∑[A048655(A004273(n)-n)]` -/
def P2066260217290290004.Spec : Prop :=
  ∀ n, P2066260217290290004.a n = A174192 n

end A174192

/-! ## A174192.P15896388948822562406

`A100227(n)+Δ[A171842(n)]`
-/

namespace A174192.P15896388948822562406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n + (f1 (n + 1) - f1 n)

end

end A174192.P15896388948822562406

namespace A174192

/-- `A100227(n)+Δ[A171842(n)]` -/
def P15896388948822562406.Spec : Prop :=
  ∀ n, P15896388948822562406.a n = A174192 n

end A174192

/-! ## A174192.P15557810493992203505

`A266506(A111284(n+2))-1`
-/

namespace A174192.P15557810493992203505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A111284 (n + 2)).toNat - 1

end

end A174192.P15557810493992203505

namespace A174192

/-- `A266506(A111284(n+2))-1` -/
def P15557810493992203505.Spec : Prop :=
  ∀ n, P15557810493992203505.a n = A174192 n

end A174192

/-! ## A174192.P946246267819920537

`A293004(n)+A000129(n+1)`
-/

namespace A174192.P946246267819920537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + A000129 (n + 1)

end

end A174192.P946246267819920537

namespace A174192

/-- `A293004(n)+A000129(n+1)` -/
def P946246267819920537.Spec : Prop :=
  ∀ n, P946246267819920537.a n = A174192 n

end A174192

/-! ## A174192.P10324809161072522125

`A293004(n)+A215928(n+1)`
-/

namespace A174192.P10324809161072522125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n + A215928 (n + 1)

end

end A174192.P10324809161072522125

namespace A174192

/-- `A293004(n)+A215928(n+1)` -/
def P10324809161072522125.Spec : Prop :=
  ∀ n, P10324809161072522125.a n = A174192 n

end A174192

/-! ## A174192.P17907522105472561646

`A000129(n)+A002203(n)-1`
-/

namespace A174192.P17907522105472561646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (A002203 n - 1)

end

end A174192.P17907522105472561646

namespace A174192

/-- `A000129(n)+A002203(n)-1` -/
def P17907522105472561646.Spec : Prop :=
  ∀ n, P17907522105472561646.a n = A174192 n

end A174192

/-!
# A174193: Expansion of the conjectured generating function for the number of "almost avoiding" permutations in the set Av(321)^{+1}.

The programs for A174193, there is no canonical definition to state claims against.
-/

/-! ## A174193.P6059323252303736167

`A054041(A038747(n+1))`
-/

namespace A174193.P6059323252303736167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054041 (A038747 (n + 1)).toNat

end

end A174193.P6059323252303736167

/-! ## A174193.P10814463691292549248

`A097992(Δ[A000041(∑[n])])`
-/

namespace A174193.P10814463691292549248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (f1 (n + 1) - f1 n).toNat

end

end A174193.P10814463691292549248

/-! ## A174193.P8332742809860420494

`A174407(2*A000088(n)+1)`
-/

namespace A174193.P8332742809860420494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174407 (2 * A000088 n + 1).toNat

end

end A174193.P8332742809860420494

/-!
# A174194: 10n-7 and 10n-3 are both primes.

The programs for A174194, there is no canonical definition to state claims against.
-/

/-! ## A174194.P611148834710707994

`A162410(n+1)+1`
-/

namespace A174194.P611148834710707994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162410 (n + 1) + 1

end

end A174194.P611148834710707994

/-! ## A174194.P14647175081614369875

`ceil(A289413(n+1)/10)`
-/

namespace A174194.P14647175081614369875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A289413 (n + 1) : ℚ) / 10⌉

end

end A174194.P14647175081614369875

/-! ## A174194.P14275856053084485992

`ceil(A076746(Δ[n²])/10)`
-/

namespace A174194.P14275856053084485992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076746 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 10⌉

end

end A174194.P14275856053084485992

/-! ## A174194.P13554088859793488270

`round(A076746(2*(n+1))/10)`
-/

namespace A174194.P13554088859793488270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A076746 (2 * (n + 1)) : ℚ) / 10)

end

end A174194.P13554088859793488270

/-! ## A174194.P1096013306610321830

`ceil(p?[A030431(n+1)+4]/10)`
-/

namespace A174194.P1096013306610321830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 10⌉

end

end A174194.P1096013306610321830

/-! ## A174194.P7238419953829659335

`A004482(A162410(n+1))`
-/

namespace A174194.P7238419953829659335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A162410 (n + 1)).toNat

end

end A174194.P7238419953829659335

/-! ## A174194.P6856183604728785970

`A194518(A289413(n+1))`
-/

namespace A174194.P6856183604728785970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194518 (A289413 (n + 1)).toNat

end

end A174194.P6856183604728785970

/-! ## A174194.P7320796575727831067

`A008616(A289413(n+1)+1)`
-/

namespace A174194.P7320796575727831067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A289413 (n + 1) + 1).toNat

end

end A174194.P7320796575727831067

/-! ## A174194.P14766590971129187947

`∩[A024913(n+1), A024914(n+1)]`
-/

namespace A174194.P14766590971129187947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174194.P14766590971129187947

/-!
# A174195: Number of permutations of 1..n that almost avoid 231.

The programs for A174195, there is no canonical definition to state claims against.
-/

/-! ## A174195.P1698113883279295781

`A349536(A367413(n))`
-/

namespace A174195.P1698113883279295781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A367413 n).toNat

end

end A174195.P1698113883279295781

/-! ## A174195.P12017356080849207579

`A008679(A151231(n)+5)`
-/

namespace A174195.P12017356080849207579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A151231 n + 5).toNat

end

end A174195.P12017356080849207579

/-!
# A174197: Sequence that arises in connection with the number of primes between consecutive squares.

The programs for A174197, there is no canonical definition to state claims against.
-/

/-! ## A174197.P16873698594365381303

`A178863(A259939(n+2)+A066417(n+1))`
-/

namespace A174197.P16873698594365381303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178863 (A259939 (n + 2) + A066417 (n + 1)).toNat

end

end A174197.P16873698594365381303

/-!
# A174198: Floor of inverse of Minkowski's constant.

The programs for A174198, the canonical program `A174198.P2295683822746986741` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174198 has offset 1).

The definition of A174198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174198.P2295683822746986741

`floor((n+1)^(n+1)*π/(4*(n+1)!))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A174198

/-- `floor((n+1)^(n+1)*π/(4*(n+1)!))` -/
def P2295683822746986741.Spec : Prop :=
  ∀ n, P2295683822746986741.a n = A174198 (n + 1)

theorem P2295683822746986741.correct : P2295683822746986741.Spec := by
  intro n
  simp only [A174198, Nat.add_sub_cancel]

end A174198

/-! ## A174198.P8456294470162014769

`floor(π/4*A000312(n+1)/A000142(n+1))`
-/

namespace A174198.P8456294470162014769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi / 4 * (A000312 (n + 1) : ℝ) / (A000142 (n + 1) : ℝ)⌋

end

end A174198.P8456294470162014769

namespace A174198

/-- `floor(π/4*A000312(n+1)/A000142(n+1))` -/
def P8456294470162014769.Spec : Prop :=
  ∀ n, P8456294470162014769.a n = A174198 (n + 1)

end A174198

/-! ## A174198.P17029277506513515087

`A004526(A089068(n)+A000045(2*n+1))`
-/

namespace A174198.P17029277506513515087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A089068 n + A000045 (2 * n + 1)).toNat

end

end A174198.P17029277506513515087

namespace A174198

/-- `A004526(A089068(n)+A000045(2*n+1))` -/
def P17029277506513515087.Spec : Prop :=
  ∀ n, P17029277506513515087.a n = A174198 (n + 1)

end A174198

/-! ## A174198.P13517859355997003400

`A140106(A157725(2*n+1)+A089068(n))`
-/

namespace A174198.P13517859355997003400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A157725 (2 * n + 1) + A089068 n).toNat

end

end A174198.P13517859355997003400

namespace A174198

/-- `A140106(A157725(2*n+1)+A089068(n))` -/
def P13517859355997003400.Spec : Prop :=
  ∀ n, P13517859355997003400.a n = A174198 (n + 1)

end A174198

/-! ## A174198.P2897307949271735746

`A123108(A212804(2*(n+1))+A089068(n))`
-/

namespace A174198.P2897307949271735746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A212804 (2 * (n + 1)) + A089068 n).toNat

end

end A174198.P2897307949271735746

namespace A174198

/-- `A123108(A212804(2*(n+1))+A089068(n))` -/
def P2897307949271735746.Spec : Prop :=
  ∀ n, P2897307949271735746.a n = A174198 (n + 1)

end A174198

/-!
# A174199: Bisection of A137921.

The programs for A174199, the canonical program `A174199.P10669363603211169854` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174199 has offset 1).

The definition of A174199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174199.P10669363603211169854

`A137921(2*(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A174199

/-- `A137921(2*(n+1))` -/
def P10669363603211169854.Spec : Prop :=
  ∀ n, P10669363603211169854.a n = A174199 (n + 1)

theorem P10669363603211169854.correct : P10669363603211169854.Spec := by
  intro n
  simp only [A174199, Nat.add_sub_cancel]

end A174199

/-! ## A174199.P17067700019300313585

`A002260(A337362(2*(n+1)))`
-/

namespace A174199.P17067700019300313585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A337362 (2 * (n + 1))).toNat

end

end A174199.P17067700019300313585

namespace A174199

/-- `A002260(A337362(2*(n+1)))` -/
def P17067700019300313585.Spec : Prop :=
  ∀ n, P17067700019300313585.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P1436285746108315039

`A003984(A337363(2*(n+1))+1)`
-/

namespace A174199.P1436285746108315039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A337363 (2 * (n + 1)) + 1).toNat

end

end A174199.P1436285746108315039

namespace A174199

/-- `A003984(A337363(2*(n+1))+1)` -/
def P1436285746108315039.Spec : Prop :=
  ∀ n, P1436285746108315039.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P12848620308386437998

`A099777(n+1)-A007862(n+1)`
-/

namespace A174199.P12848620308386437998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - A007862 (n + 1)

end

end A174199.P12848620308386437998

namespace A174199

/-- `A099777(n+1)-A007862(n+1)` -/
def P12848620308386437998.Spec : Prop :=
  ∀ n, P12848620308386437998.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P15472769411050972655

`A000005(2*(n+1))-A007862(n+1)`
-/

namespace A174199.P15472769411050972655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A007862 (n + 1)

end

end A174199.P15472769411050972655

namespace A174199

/-- `A000005(2*(n+1))-A007862(n+1)` -/
def P15472769411050972655.Spec : Prop :=
  ∀ n, P15472769411050972655.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P10618516848496478792

`A337362(2*(n+1))-A066446(2*(n+1))`
-/

namespace A174199.P10618516848496478792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337362 (2 * (n + 1)) - A066446 (2 * (n + 1))

end

end A174199.P10618516848496478792

namespace A174199

/-- `A337362(2*(n+1))-A066446(2*(n+1))` -/
def P10618516848496478792.Spec : Prop :=
  ∀ n, P10618516848496478792.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P11279197454929566468

`A195150(2*(n+1))+1`
-/

namespace A174199.P11279197454929566468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (2 * (n + 1)) + 1

end

end A174199.P11279197454929566468

namespace A174199

/-- `A195150(2*(n+1))+1` -/
def P11279197454929566468.Spec : Prop :=
  ∀ n, P11279197454929566468.a n = A174199 (n + 1)

theorem P11279197454929566468.correct : P11279197454929566468.Spec := by
  intro n
  simp only [A174199, Nat.add_sub_cancel, A174199.P11279197454929566468.a, A174199.P10669363603211169854.a, A137921, A137921.P4123784932500151371.a, A195150, A195150.P8159304006399446490.a, A000005, A000005.P16091521709108585461.a, A129308, A129308.P17478066813720494724.f1, A129308.P17478066813720494724.a, A005369, A005369.P10796159359873341658.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A174199

/-! ## A174199.P1500416588286038466

`A328511(n+1)+A132881(2*(n+1))`
-/

namespace A174199.P1500416588286038466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328511 (n + 1) + A132881 (2 * (n + 1))

end

end A174199.P1500416588286038466

namespace A174199

/-- `A328511(n+1)+A132881(2*(n+1))` -/
def P1500416588286038466.Spec : Prop :=
  ∀ n, P1500416588286038466.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P16460872086118230530

`A000005(2*(n+1))-A129308(2*(n+1))`
-/

namespace A174199.P16460872086118230530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - A129308 (2 * (n + 1))

end

end A174199.P16460872086118230530

namespace A174199

/-- `A000005(2*(n+1))-A129308(2*(n+1))` -/
def P16460872086118230530.Spec : Prop :=
  ∀ n, P16460872086118230530.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P7796198072732732350

`A076984(2*(n+1))-A088722(2*(n+1))`
-/

namespace A174199.P7796198072732732350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (2 * (n + 1)) - A088722 (2 * (n + 1))

end

end A174199.P7796198072732732350

namespace A174199

/-- `A076984(2*(n+1))-A088722(2*(n+1))` -/
def P7796198072732732350.Spec : Prop :=
  ∀ n, P7796198072732732350.a n = A174199 (n + 1)

theorem P7796198072732732350.correct : P7796198072732732350.Spec := by
  intro n
  simp only [A174199, Nat.add_sub_cancel, A174199.P7796198072732732350.a, A174199.P10669363603211169854.a, A076984, A076984.P13104546406193990713.a, A088722, A088722.P11633874598815869364.a, A137921, A137921.P4123784932500151371.a, A000005, A000005.P16091521709108585461.a, A023645, A023645.P14181426108447540437.a, A059841, A059841.P7264174615531153985.a, A129308, A129308.P17478066813720494724.f1, A129308.P17478066813720494724.a, A005369, A005369.P10796159359873341658.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A174199

/-! ## A174199.P10041719081107604582

`A334954(2*(n+1))-A195155(2*(n+1))`
-/

namespace A174199.P10041719081107604582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (2 * (n + 1)) - A195155 (2 * (n + 1))

end

end A174199.P10041719081107604582

namespace A174199

/-- `A334954(2*(n+1))-A195155(2*(n+1))` -/
def P10041719081107604582.Spec : Prop :=
  ∀ n, P10041719081107604582.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P8862993512715824257

`A000005(2*(n+1))-(A088722(2*(n+1))+1)`
-/

namespace A174199.P8862993512715824257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - (A088722 (2 * (n + 1)) + 1)

end

end A174199.P8862993512715824257

namespace A174199

/-- `A000005(2*(n+1))-(A088722(2*(n+1))+1)` -/
def P8862993512715824257.Spec : Prop :=
  ∀ n, P8862993512715824257.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P3562883154427593409

`A023645(2*(n+1))+1-A088722(2*(n+1))`
-/

namespace A174199.P3562883154427593409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (2 * (n + 1)) + (1 - A088722 (2 * (n + 1)))

end

end A174199.P3562883154427593409

namespace A174199

/-- `A023645(2*(n+1))+1-A088722(2*(n+1))` -/
def P3562883154427593409.Spec : Prop :=
  ∀ n, P3562883154427593409.a n = A174199 (n + 1)

theorem P3562883154427593409.correct : P3562883154427593409.Spec := by
  intro n
  simp only [A174199, Nat.add_sub_cancel, A174199.P3562883154427593409.a, A174199.P10669363603211169854.a, A023645, A023645.P14181426108447540437.a, A088722, A088722.P11633874598815869364.a, A137921, A137921.P4123784932500151371.a, A000005, A000005.P16091521709108585461.a, A059841, A059841.P7264174615531153985.a, A129308, A129308.P17478066813720494724.f1, A129308.P17478066813720494724.a, A005369, A005369.P10796159359873341658.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A174199

/-! ## A174199.P12924404369838734953

`A000005(2*(n+1))+1-A195155(2*(n+1))`
-/

namespace A174199.P12924404369838734953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) + (1 - A195155 (2 * (n + 1)))

end

end A174199.P12924404369838734953

namespace A174199

/-- `A000005(2*(n+1))+1-A195155(2*(n+1))` -/
def P12924404369838734953.Spec : Prop :=
  ∀ n, P12924404369838734953.a n = A174199 (n + 1)

theorem P12924404369838734953.correct : P12924404369838734953.Spec := by
  intro n
  simp only [A174199, Nat.add_sub_cancel, A174199.P12924404369838734953.a, A174199.P10669363603211169854.a, A000005, A000005.P16091521709108585461.a, A137921, A137921.P4123784932500151371.a, A195155, A195155.P6480177575131545009.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A129308, A129308.P17478066813720494724.f1, A129308.P17478066813720494724.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A174199

/-! ## A174199.P2572161069324066723

`A132747(2*(n+1))+A132881(2*(n+1))-A129308(2*(n+1))`
-/

namespace A174199.P2572161069324066723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (2 * (n + 1)) + (A132881 (2 * (n + 1)) - A129308 (2 * (n + 1)))

end

end A174199.P2572161069324066723

namespace A174199

/-- `A132747(2*(n+1))+A132881(2*(n+1))-A129308(2*(n+1))` -/
def P2572161069324066723.Spec : Prop :=
  ∀ n, P2572161069324066723.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P13865648430539740822

`A243865(2*(n+1))+A243917(2*(n+1))-A129308(2*(n+1))`
-/

namespace A174199.P13865648430539740822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (2 * (n + 1)) + (A243917 (2 * (n + 1)) - A129308 (2 * (n + 1)))

end

end A174199.P13865648430539740822

namespace A174199

/-- `A243865(2*(n+1))+A243917(2*(n+1))-A129308(2*(n+1))` -/
def P13865648430539740822.Spec : Prop :=
  ∀ n, P13865648430539740822.a n = A174199 (n + 1)

end A174199

/-! ## A174199.P10542758575939960960

`∑{e}[A328166(2*(n+1)), #]`
-/

namespace A174199.P10542758575939960960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328166 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A174199.P10542758575939960960

namespace A174199

/-- `∑{e}[A328166(2*(n+1)), #]` -/
def P10542758575939960960.Spec : Prop :=
  ∀ n, (P10542758575939960960.a n : ℤ) = A174199 (n + 1)

end A174199

/-! ## A174199.P2219330847193131739

`A001222(A328166(2*(n+1)))`
-/

namespace A174199.P2219330847193131739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328166 (2 * (n + 1))).toNat

end

end A174199.P2219330847193131739

namespace A174199

/-- `A001222(A328166(2*(n+1)))` -/
def P2219330847193131739.Spec : Prop :=
  ∀ n, P2219330847193131739.a n = A174199 (n + 1)

end A174199

