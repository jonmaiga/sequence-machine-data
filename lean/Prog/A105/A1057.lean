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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C011
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
# A105700: a(n)=1 if n is a prime, 2 if n is a semiprime, otherwise 0.

The programs for A105700, the canonical program `A105700.P11445853484209819291` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105700 has offset 0).

The definition of A105700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105700.P11445853484209819291

`∑{e}[C(7, ∑{e}[n, #]²), #]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105700

/-- `∑{e}[C(7, ∑{e}[n, #]²), #]` -/
def P11445853484209819291.Spec : Prop :=
  ∀ n, (P11445853484209819291.a n : ℤ) = A105700 n

theorem P11445853484209819291.correct : P11445853484209819291.Spec := by
  intro n
  simp only [A105700]

end A105700

/-! ## A105700.P207702901999827423

`floor(2^(∑{e}[n, #]-1))%4`
-/

namespace A105700.P207702901999827423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℤ)⌋ 4

end

end A105700.P207702901999827423

namespace A105700

/-- `floor(2^(∑{e}[n, #]-1))%4` -/
def P207702901999827423.Spec : Prop :=
  ∀ n, P207702901999827423.a n = A105700 n

end A105700

/-! ## A105700.P10558421311864107449

`A061006(∏{e}[n, 2*#])`
-/

namespace A105700.P10558421311864107449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (∏ p ∈ Nat.primeFactors (f1 n), 2 * Nat.factorization (f1 n) p)

end

end A105700.P10558421311864107449

namespace A105700

/-- `A061006(∏{e}[n, 2*#])` -/
def P10558421311864107449.Spec : Prop :=
  ∀ n, P10558421311864107449.a n = A105700 n

end A105700

/-! ## A105700.P11772458194459325297

`A061007(∏{e}[n, 2*#])`
-/

namespace A105700.P11772458194459325297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (∏ p ∈ Nat.primeFactors (f1 n), 2 * Nat.factorization (f1 n) p)

end

end A105700.P11772458194459325297

namespace A105700

/-- `A061007(∏{e}[n, 2*#])` -/
def P11772458194459325297.Spec : Prop :=
  ∀ n, P11772458194459325297.a n = A105700 n

end A105700

/-! ## A105700.P13602940405796545391

`∑{e}[C(7, A302771(∑{e}[n, #])), #]`
-/

namespace A105700.P13602940405796545391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 7 (A302771 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A105700.P13602940405796545391

namespace A105700

/-- `∑{e}[C(7, A302771(∑{e}[n, #])), #]` -/
def P13602940405796545391.Spec : Prop :=
  ∀ n, (P13602940405796545391.a n : ℤ) = A105700 n

end A105700

/-! ## A105700.P235120553640253169

`C(2, xor(3, A047269(∑{e}[n, #]+1)))`
-/

namespace A105700.P235120553640253169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.xor 3 (A047269 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1))).toNat

end

end A105700.P235120553640253169

namespace A105700

/-- `C(2, xor(3, A047269(∑{e}[n, #]+1)))` -/
def P235120553640253169.Spec : Prop :=
  ∀ n, (P235120553640253169.a n : ℤ) = A105700 n

end A105700

/-! ## A105700.P17193992141907493266

`A061006(A117010(∑{e}[n, #]+1)+1)`
-/

namespace A105700.P17193992141907493266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (A117010 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) + 1).toNat

end

end A105700.P17193992141907493266

namespace A105700

/-- `A061006(A117010(∑{e}[n, #]+1)+1)` -/
def P17193992141907493266.Spec : Prop :=
  ∀ n, P17193992141907493266.a n = A105700 n

end A105700

/-! ## A105700.P15054413911596421183

`A007814(∑{e}[∑{e}[n², #], A000217(#)]+1)`
-/

namespace A105700.P15054413911596421183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ p ∈ Nat.primeFactors (f1 n), A000217 (Nat.factorization (f1 n) p) + 1).toNat

end

end A105700.P15054413911596421183

namespace A105700

/-- `A007814(∑{e}[∑{e}[n², #], A000217(#)]+1)` -/
def P15054413911596421183.Spec : Prop :=
  ∀ n, P15054413911596421183.a n = A105700 n

end A105700

/-! ## A105700.P14449829816208822113

`val(A023707(∑{e}[2*n², #]+1)+1, 2)`
-/

namespace A105700.P14449829816208822113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A023707 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1) + 1).toNat 2

end

end A105700.P14449829816208822113

namespace A105700

/-- `val(A023707(∑{e}[2*n², #]+1)+1, 2)` -/
def P14449829816208822113.Spec : Prop :=
  ∀ n, (P14449829816208822113.a n : ℤ) = A105700 n

end A105700

/-! ## A105700.P823914162826131602

`and(∏{e}[n, #+1]-1, A074206(n)!)`
-/

namespace A105700.P823914162826131602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1) (Nat.factorial (A074206 n).toNat : ℤ)

end

end A105700.P823914162826131602

namespace A105700

/-- `and(∏{e}[n, #+1]-1, A074206(n)!)` -/
def P823914162826131602.Spec : Prop :=
  ∀ n, P823914162826131602.a n = A105700 n

end A105700

/-!
# A105702: Smallest m such that 2 is at the n-th position of the decimal representation of the m-th Fibonacci number.

The programs for A105702, there is no canonical definition to state claims against.
-/

/-! ## A105702.P2196635556275789095

`A000371(A275062(3*(n+1)))+A000201(3*n+1)`
-/

namespace A105702.P2196635556275789095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000371 (A275062 (3 * (n + 1))).toNat + A000201 (3 * n + 1)

end

end A105702.P2196635556275789095

/-!
# A105711: Smallest m such that 0 is at the n-th position of the decimal representation of the m-th Fibonacci number.

The programs for A105711, there is no canonical definition to state claims against.
-/

/-! ## A105711.P258742998107808462

`A000045(A105701(n))`
-/

namespace A105711.P258742998107808462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105701 n).toNat

end

end A105711.P258742998107808462

/-! ## A105711.P13131628055678540308

`A115338(A105701(n)²)`
-/

namespace A105711.P13131628055678540308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A105701 n ^ 2).toNat

end

end A105711.P13131628055678540308

/-! ## A105711.P11959570431605611548

`A212804(A105701(n)+1)`
-/

namespace A105711.P11959570431605611548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A105701 n + 1).toNat

end

end A105711.P11959570431605611548

/-! ## A105711.P16699356574494388897

`A053602(2*A105701(n))`
-/

namespace A105711.P16699356574494388897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A105701 n).toNat

end

end A105711.P16699356574494388897

/-! ## A105711.P15983464029834284985

`A103609(2*A105701(n))`
-/

namespace A105711.P15983464029834284985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A105701 n).toNat

end

end A105711.P15983464029834284985

/-!
# A105712: Smallest m such that 2 is at the n-th position of the decimal representation of the m-th Fibonacci number.

The programs for A105712, there is no canonical definition to state claims against.
-/

/-! ## A105712.P12665798288736034204

`A000045(A105702(n))`
-/

namespace A105712.P12665798288736034204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105702 n).toNat

end

end A105712.P12665798288736034204

/-! ## A105712.P558583394868370783

`A115338(A105702(n)²)`
-/

namespace A105712.P558583394868370783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A105702 n ^ 2).toNat

end

end A105712.P558583394868370783

/-! ## A105712.P11872034691986824722

`A212804(A105702(n)+1)`
-/

namespace A105712.P11872034691986824722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A105702 n + 1).toNat

end

end A105712.P11872034691986824722

/-! ## A105712.P18171789094873895662

`A324969(A105702(n)+1)`
-/

namespace A105712.P18171789094873895662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A105702 n + 1).toNat

end

end A105712.P18171789094873895662

/-! ## A105712.P6667361629759002985

`A053602(2*A105702(n))`
-/

namespace A105712.P6667361629759002985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A105702 n).toNat

end

end A105712.P6667361629759002985

/-!
# A105713: Smallest m such that 3 is at the n-th position of the decimal representation of the m-th Fibonacci number.

The programs for A105713, there is no canonical definition to state claims against.
-/

/-! ## A105713.P5793760401436592755

`A000045(A105703(n))`
-/

namespace A105713.P5793760401436592755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105703 n).toNat

end

end A105713.P5793760401436592755

/-! ## A105713.P18391057945106441504

`A115338(A105703(n)²)`
-/

namespace A105713.P18391057945106441504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A105703 n ^ 2).toNat

end

end A105713.P18391057945106441504

/-! ## A105713.P6096610155891994929

`A212804(A105703(n)+1)`
-/

namespace A105713.P6096610155891994929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A105703 n + 1).toNat

end

end A105713.P6096610155891994929

/-! ## A105713.P10174780779901988647

`A324969(A105703(n)+1)`
-/

namespace A105713.P10174780779901988647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A105703 n + 1).toNat

end

end A105713.P10174780779901988647

/-! ## A105713.P2036441190155782526

`A053602(2*A105703(n))`
-/

namespace A105713.P2036441190155782526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A105703 n).toNat

end

end A105713.P2036441190155782526

/-!
# A105714: Smallest m such that 4 is at the n-th position of the decimal representation of the m-th Fibonacci number.

The programs for A105714, there is no canonical definition to state claims against.
-/

/-! ## A105714.P14003020661677950681

`A000045(A105704(n))`
-/

namespace A105714.P14003020661677950681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105704 n).toNat

end

end A105714.P14003020661677950681

/-! ## A105714.P11601833072871755490

`A020695(A105704(n)-3)`
-/

namespace A105714.P11601833072871755490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (A105704 n - 3).toNat

end

end A105714.P11601833072871755490

/-! ## A105714.P3072214584787358891

`A103609(2*A105704(n))`
-/

namespace A105714.P3072214584787358891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A105704 n).toNat

end

end A105714.P3072214584787358891

/-! ## A105714.P4085688535758115493

`A105800(2*A105704(n))`
-/

namespace A105714.P4085688535758115493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (2 * A105704 n).toNat

end

end A105714.P4085688535758115493

/-! ## A105714.P13033708426868607328

`A020701(A105704(n)-4)`
-/

namespace A105714.P13033708426868607328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 (A105704 n - 4).toNat

end

end A105714.P13033708426868607328

/-!
# A105715: Smallest m such that 5 is at the n-th position of the decimal representation of the m-th Fibonacci number.

The programs for A105715, there is no canonical definition to state claims against.
-/

/-! ## A105715.P5877315699249826676

`A000045(A105705(n))`
-/

namespace A105715.P5877315699249826676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105705 n).toNat

end

end A105715.P5877315699249826676

/-! ## A105715.P7517983049764420821

`A053602(2*A105705(n))`
-/

namespace A105715.P7517983049764420821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A105705 n).toNat

end

end A105715.P7517983049764420821

/-! ## A105715.P17865555815892455420

`A103609(2*A105705(n))`
-/

namespace A105715.P17865555815892455420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A105705 n).toNat

end

end A105715.P17865555815892455420

/-! ## A105715.P6890132691675985043

`A105800(2*A105705(n))`
-/

namespace A105715.P6890132691675985043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (2 * A105705 n).toNat

end

end A105715.P6890132691675985043

/-!
# A105716: Smallest m such that 6 is at the n-th position of the decimal representation of the m-th Fibonacci number.

The programs for A105716, there is no canonical definition to state claims against.
-/

/-! ## A105716.P4294675084047250780

`A000045(A105706(n))`
-/

namespace A105716.P4294675084047250780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105706 n).toNat

end

end A105716.P4294675084047250780

/-! ## A105716.P14455597064385614710

`A103609(2*A105706(n))`
-/

namespace A105716.P14455597064385614710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A105706 n).toNat

end

end A105716.P14455597064385614710

/-! ## A105716.P1216364703487134104

`A105800(2*A105706(n))`
-/

namespace A105716.P1216364703487134104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (2 * A105706 n).toNat

end

end A105716.P1216364703487134104

/-!
# A105717: Smallest Fibonacci number that has 7 in the n-th position of the decimal representation.

The programs for A105717, there is no canonical definition to state claims against.
-/

/-! ## A105717.P9775093332088240239

`A000045(A105707(n))`
-/

namespace A105717.P9775093332088240239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105707 n).toNat

end

end A105717.P9775093332088240239

/-! ## A105717.P13418028085767923333

`A212804(A105707(n)+1)`
-/

namespace A105717.P13418028085767923333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A105707 n + 1).toNat

end

end A105717.P13418028085767923333

/-! ## A105717.P8575967473219630289

`A103609(2*A105707(n))`
-/

namespace A105717.P8575967473219630289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A105707 n).toNat

end

end A105717.P8575967473219630289

/-! ## A105717.P11845434404379257782

`A105800(2*A105707(n))`
-/

namespace A105717.P11845434404379257782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (2 * A105707 n).toNat

end

end A105717.P11845434404379257782

/-! ## A105717.P4925779272932298190

`A103609(A105707(n)+A105707(n)+1)`
-/

namespace A105717.P4925779272932298190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A105707 n + (A105707 n + 1)).toNat

end

end A105717.P4925779272932298190

/-! ## A105717.P3670968256068047813

`A049347(3*n+4)+A001611(A105707(n))`
-/

namespace A105717.P3670968256068047813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n + 4) + A001611 (A105707 n).toNat

end

end A105717.P3670968256068047813

/-!
# A105718: Smallest Fibonacci number such that 8 is at the n-th position (from the right) of its decimal representation.

The programs for A105718, there is no canonical definition to state claims against.
-/

/-! ## A105718.P6004330555008145443

`A000045(A105708(n))`
-/

namespace A105718.P6004330555008145443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105708 n).toNat

end

end A105718.P6004330555008145443

/-! ## A105718.P12860811096073693263

`A212804(A105708(n)+1)`
-/

namespace A105718.P12860811096073693263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A105708 n + 1).toNat

end

end A105718.P12860811096073693263

/-! ## A105718.P7291225936051964813

`A053602(2*A105708(n))`
-/

namespace A105718.P7291225936051964813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A105708 n).toNat

end

end A105718.P7291225936051964813

/-! ## A105718.P3666417702710845265

`A103609(2*A105708(n))`
-/

namespace A105718.P3666417702710845265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A105708 n).toNat

end

end A105718.P3666417702710845265

/-! ## A105718.P9673351165958998671

`A105800(2*A105708(n))`
-/

namespace A105718.P9673351165958998671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (2 * A105708 n).toNat

end

end A105718.P9673351165958998671

/-!
# A105719: Smallest m such that 9 is at the n-th position of the decimal representation of the m-th Fibonacci number.

The programs for A105719, there is no canonical definition to state claims against.
-/

/-! ## A105719.P9094707861056783688

`A000045(A105709(n))`
-/

namespace A105719.P9094707861056783688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105709 n).toNat

end

end A105719.P9094707861056783688

/-! ## A105719.P13266677605150722834

`A115338(A105709(n)²)`
-/

namespace A105719.P13266677605150722834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A105709 n ^ 2).toNat

end

end A105719.P13266677605150722834

/-! ## A105719.P16989940432006319443

`A212804(A105709(n)+1)`
-/

namespace A105719.P16989940432006319443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A105709 n + 1).toNat

end

end A105719.P16989940432006319443

/-! ## A105719.P4793716454227948402

`A053602(2*A105709(n))`
-/

namespace A105719.P4793716454227948402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A105709 n).toNat

end

end A105719.P4793716454227948402

/-! ## A105719.P2247179857582606596

`A103609(2*A105709(n))`
-/

namespace A105719.P2247179857582606596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A105709 n).toNat

end

end A105719.P2247179857582606596

/-!
# A105720: Triangular matchstick numbers in the class of prime numbers: sum of n-th and next n primes.

The programs for A105720, the canonical program `A105720.P12101149464658287483` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105720 has offset 1).

The definition of A105720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105720.P12101149464658287483

`a(n-1)-A000040(n)+A000040(2*(n+1)-1)+A000040(2*(n+1))` with `a(0)=5`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105720

/-- `a(n-1)-A000040(n)+A000040(2*(n+1)-1)+A000040(2*(n+1))` -/
def P12101149464658287483.Spec : Prop :=
  ∀ n, P12101149464658287483.a n = A105720 (n + 1)

theorem P12101149464658287483.correct : P12101149464658287483.Spec := by
  intro n
  simp only [A105720, Nat.add_sub_cancel]

end A105720

/-! ## A105720.P4644439095488080567

`record[Δ[A023862(n+2)]]`
-/

namespace A105720.P4644439095488080567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023862 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105720.P4644439095488080567

namespace A105720

/-- `record[Δ[A023862(n+2)]]` -/
def P4644439095488080567.Spec : Prop :=
  ∀ n, P4644439095488080567.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P13154534506016537135

`A109722(n+1)-A007504(n)`
-/

namespace A105720.P13154534506016537135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (n + 1) - A007504 n

end

end A105720.P13154534506016537135

namespace A105720

/-- `A109722(n+1)-A007504(n)` -/
def P13154534506016537135.Spec : Prop :=
  ∀ n, P13154534506016537135.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P9460754948480435983

`A131740(n+1)+Δ[A007504(n)]`
-/

namespace A105720.P9460754948480435983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131740 (n + 1) + (f1 (n + 1) - f1 n)

end

end A105720.P9460754948480435983

namespace A105720

/-- `A131740(n+1)+Δ[A007504(n)]` -/
def P9460754948480435983.Spec : Prop :=
  ∀ n, P9460754948480435983.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P12869004620674771408

`A131740(n+1)+A000040(n+1)`
-/

namespace A105720.P12869004620674771408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131740 (n + 1) + A000040 (n + 1)

end

end A105720.P12869004620674771408

namespace A105720

/-- `A131740(n+1)+A000040(n+1)` -/
def P12869004620674771408.Spec : Prop :=
  ∀ n, P12869004620674771408.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P13819416569370609915

`A161463(n+1)+A031215(n+1)`
-/

namespace A105720.P13819416569370609915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161463 (n + 1) + A031215 (n + 1)

end

end A105720.P13819416569370609915

namespace A105720

/-- `A161463(n+1)+A031215(n+1)` -/
def P13819416569370609915.Spec : Prop :=
  ∀ n, P13819416569370609915.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P5556608918854660099

`A131740(n+1)+A008578(n+2)`
-/

namespace A105720.P5556608918854660099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131740 (n + 1) + A008578 (n + 2)

end

end A105720.P5556608918854660099

namespace A105720

/-- `A131740(n+1)+A008578(n+2)` -/
def P5556608918854660099.Spec : Prop :=
  ∀ n, P5556608918854660099.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P16889966509207740291

`A007504(2*(n+1))-A007504(n)`
-/

namespace A105720.P16889966509207740291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * (n + 1)) - A007504 n

end

end A105720.P16889966509207740291

namespace A105720

/-- `A007504(2*(n+1))-A007504(n)` -/
def P16889966509207740291.Spec : Prop :=
  ∀ n, P16889966509207740291.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P8529148431959329377

`A131740(n+1)+p?[A131717(n+1)]`
-/

namespace A105720.P8529148431959329377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131740 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105720.P8529148431959329377

namespace A105720

/-- `A131740(n+1)+p?[A131717(n+1)]` -/
def P8529148431959329377.Spec : Prop :=
  ∀ n, P8529148431959329377.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P10049084176528798651

`A161463(n+1)+A000040(2*(n+1))`
-/

namespace A105720.P10049084176528798651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161463 (n + 1) + A000040 (2 * (n + 1))

end

end A105720.P10049084176528798651

namespace A105720

/-- `A161463(n+1)+A000040(2*(n+1))` -/
def P10049084176528798651.Spec : Prop :=
  ∀ n, P10049084176528798651.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P2627822184566300931

`A262392(2*(n+1))-A036439(n+1)`
-/

namespace A105720.P2627822184566300931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (2 * (n + 1)) - A036439 (n + 1)

end

end A105720.P2627822184566300931

namespace A105720

/-- `A262392(2*(n+1))-A036439(n+1)` -/
def P2627822184566300931.Spec : Prop :=
  ∀ n, P2627822184566300931.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P1520591132677104700

`A262392(2*(n+1))-A175965(n+2)`
-/

namespace A105720.P1520591132677104700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (2 * (n + 1)) - A175965 (n + 2)

end

end A105720.P1520591132677104700

namespace A105720

/-- `A262392(2*(n+1))-A175965(n+2)` -/
def P1520591132677104700.Spec : Prop :=
  ∀ n, P1520591132677104700.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P2739666743707383145

`A014284(2*n+3)-A014284(n+1)`
-/

namespace A105720.P2739666743707383145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (2 * n + 3) - A014284 (n + 1)

end

end A105720.P2739666743707383145

namespace A105720

/-- `A014284(2*n+3)-A014284(n+1)` -/
def P2739666743707383145.Spec : Prop :=
  ∀ n, P2739666743707383145.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P4544392983901701878

`A036439(2*n+3)-A036439(n+1)`
-/

namespace A105720.P4544392983901701878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (2 * n + 3) - A036439 (n + 1)

end

end A105720.P4544392983901701878

namespace A105720

/-- `A036439(2*n+3)-A036439(n+1)` -/
def P4544392983901701878.Spec : Prop :=
  ∀ n, P4544392983901701878.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P11850105096354595801

`A175965(2*(n+2))-A175965(n+2)`
-/

namespace A105720.P11850105096354595801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175965 (2 * (n + 2)) - A175965 (n + 2)

end

end A105720.P11850105096354595801

namespace A105720

/-- `A175965(2*(n+2))-A175965(n+2)` -/
def P11850105096354595801.Spec : Prop :=
  ∀ n, P11850105096354595801.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P15561216617845017060

`A023862(2*n+3)-A023862(2*(n+1))`
-/

namespace A105720.P15561216617845017060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023862 (2 * n + 3) - A023862 (2 * (n + 1))

end

end A105720.P15561216617845017060

namespace A105720

/-- `A023862(2*n+3)-A023862(2*(n+1))` -/
def P15561216617845017060.Spec : Prop :=
  ∀ n, P15561216617845017060.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P16467025946424965590

`A077354(n+1)+A100484(n+1)+A007504(n)`
-/

namespace A105720.P16467025946424965590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077354 (n + 1) + (A100484 (n + 1) + A007504 n)

end

end A105720.P16467025946424965590

namespace A105720

/-- `A077354(n+1)+A100484(n+1)+A007504(n)` -/
def P16467025946424965590.Spec : Prop :=
  ∀ n, P16467025946424965590.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P7572132740198512186

`A007504(n+1)+A131740(n+1)-A007504(n)`
-/

namespace A105720.P7572132740198512186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A131740 (n + 1) - A007504 n)

end

end A105720.P7572132740198512186

namespace A105720

/-- `A007504(n+1)+A131740(n+1)-A007504(n)` -/
def P7572132740198512186.Spec : Prop :=
  ∀ n, P7572132740198512186.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P15157346727358267300

`A077126(n+1)+A077131(n+1)-A007504(n)`
-/

namespace A105720.P15157346727358267300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077126 (n + 1) + (A077131 (n + 1) - A007504 n)

end

end A105720.P15157346727358267300

namespace A105720

/-- `A077126(n+1)+A077131(n+1)-A007504(n)` -/
def P15157346727358267300.Spec : Prop :=
  ∀ n, P15157346727358267300.a n = A105720 (n + 1)

end A105720

/-! ## A105720.P2154565849924671027

`A077354(n+1)+A362419(n+1)-A007504(n)`
-/

namespace A105720.P2154565849924671027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077354 (n + 1) + (A362419 (n + 1) - A007504 n)

end

end A105720.P2154565849924671027

namespace A105720

/-- `A077354(n+1)+A362419(n+1)-A007504(n)` -/
def P2154565849924671027.Spec : Prop :=
  ∀ n, P2154565849924671027.a n = A105720 (n + 1)

end A105720

/-!
# A105723: a(n) = 3^n - (-1)^n.

The programs for A105723, the canonical program `A105723.P18140863241470504792` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105723 has offset 0).

The definition of A105723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-(-1)^n` (program `A105723.P18140863241470504792`, by `A105723.P18140863241470504792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105723.P18140863241470504792

`3^n-(-1)^n`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105723

/-- `3^n-(-1)^n` -/
def P18140863241470504792.Spec : Prop :=
  ∀ n, P18140863241470504792.a n = A105723 n

theorem P18140863241470504792.correct : P18140863241470504792.Spec := by
  intro n
  simp only [A105723]

end A105723

/-! ## A105723.P10138819131659631254

`4*A015518(n)`
-/

namespace A105723.P10138819131659631254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A015518 n

end

end A105723.P10138819131659631254

namespace A105723

/-- `4*A015518(n)` -/
def P10138819131659631254.Spec : Prop :=
  ∀ n, P10138819131659631254.a n = A105723 n

end A105723

/-! ## A105723.P17694584155397564244

`lcm(4, 1-(-3)^n)`
-/

namespace A105723.P17694584155397564244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (-3) ^ n)

end

end A105723.P17694584155397564244

namespace A105723

/-- `lcm(4, 1-(-3)^n)` -/
def P17694584155397564244.Spec : Prop :=
  ∀ n, (P17694584155397564244.a n : ℤ) = A105723 n

end A105723

/-! ## A105723.P10476017589425323363

`ogf(4x/(1-2x-3x^2))`
-/

namespace A105723.P10476017589425323363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -2, -3] n

end

end A105723.P10476017589425323363

namespace A105723

/-- `ogf(4x/(1-2x-3x^2))` -/
def P10476017589425323363.Spec : Prop :=
  ∀ n, P10476017589425323363.a n = A105723 n

end A105723

/-! ## A105723.P16476680517750730362

`and(3^n+1, -3)`
-/

namespace A105723.P16476680517750730362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 ^ n + 1 : ℤ) (-3)

end

end A105723.P16476680517750730362

namespace A105723

/-- `and(3^n+1, -3)` -/
def P16476680517750730362.Spec : Prop :=
  ∀ n, P16476680517750730362.a n = A105723 n

end A105723

/-! ## A105723.P1538167357934892721

`xor(4, 3*a(n-1))` with `a(0)=0`
-/

namespace A105723.P1538167357934892721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 4 (3 * a (n - 1))

end

end A105723.P1538167357934892721

namespace A105723

/-- `xor(4, 3*a(n-1))` -/
def P1538167357934892721.Spec : Prop :=
  ∀ n, (P1538167357934892721.a n : ℤ) = A105723 n

end A105723

/-! ## A105723.P8858249242380481521

`xor(4, lcm(3, a(n-1)))` with `a(0)=0`
-/

namespace A105723.P8858249242380481521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 4 (Nat.lcm 3 (a (n - 1)))

end

end A105723.P8858249242380481521

namespace A105723

/-- `xor(4, lcm(3, a(n-1)))` -/
def P8858249242380481521.Spec : Prop :=
  ∀ n, (P8858249242380481521.a n : ℤ) = A105723 n

end A105723

/-! ## A105723.P14325611548253390753

`floor(2*a(n-1)+3*a(n-2))` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A105723.P14325611548253390753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2)

end

end A105723.P14325611548253390753

namespace A105723

/-- `floor(2*a(n-1)+3*a(n-2))` -/
def P14325611548253390753.Spec : Prop :=
  ∀ n, (P14325611548253390753.a n : ℤ) = A105723 n

theorem P14325611548253390753.correct : P14325611548253390753.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A105723, Nat.add_sub_cancel, A105723.P14325611548253390753.a, A105723.P18140863241470504792.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A105723, Nat.add_sub_cancel, A105723.P14325611548253390753.a, A105723.P18140863241470504792.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A105723

/-! ## A105723.P1384838287145520821

`2*(a(n-1)+3/2*a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A105723.P1384838287145520821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 * (a (n - 1) + (3 : ℚ) / 2 * a (n - 2))

end

end A105723.P1384838287145520821

namespace A105723

/-- `2*(a(n-1)+3/2*a(n-2))` -/
def P1384838287145520821.Spec : Prop :=
  ∀ n, P1384838287145520821.a n = (A105723 n : ℚ)

theorem P1384838287145520821.correct : P1384838287145520821.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A105723, Nat.add_sub_cancel, A105723.P1384838287145520821.a, A105723.P18140863241470504792.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A105723, Nat.add_sub_cancel, A105723.P1384838287145520821.a, A105723.P18140863241470504792.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A105723

/-! ## A105723.P11739542325478920303

`3*(a(n-1)-(a(n-1)/3-a(n-2)))` with `a(0)=0, a(1)=4`
-/

namespace A105723.P11739542325478920303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  3 * (a (n - 1) - (a (n - 1) / 3 - a (n - 2)))

end

end A105723.P11739542325478920303

namespace A105723

/-- `3*(a(n-1)-(a(n-1)/3-a(n-2)))` -/
def P11739542325478920303.Spec : Prop :=
  ∀ n, P11739542325478920303.a n = (A105723 n : ℚ)

theorem P11739542325478920303.correct : P11739542325478920303.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A105723, Nat.add_sub_cancel, A105723.P11739542325478920303.a, A105723.P18140863241470504792.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A105723, Nat.add_sub_cancel, A105723.P11739542325478920303.a, A105723.P18140863241470504792.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A105723

/-! ## A105723.P7429398242122651257

`Δ[A046717(n)]`
-/

namespace A105723.P7429398242122651257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105723.P7429398242122651257

namespace A105723

/-- `Δ[A046717(n)]` -/
def P7429398242122651257.Spec : Prop :=
  ∀ n, P7429398242122651257.a n = A105723 n

end A105723

/-! ## A105723.P15153976730938162555

`Δ[2*A122983(n)]`
-/

namespace A105723.P15153976730938162555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105723.P15153976730938162555

namespace A105723

/-- `Δ[2*A122983(n)]` -/
def P15153976730938162555.Spec : Prop :=
  ∀ n, P15153976730938162555.a n = A105723 n

end A105723

/-! ## A105723.P7782386624308835698

`Δ[or(1, A003462(n))]`
-/

namespace A105723.P7782386624308835698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003462 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105723.P7782386624308835698

namespace A105723

/-- `Δ[or(1, A003462(n))]` -/
def P7782386624308835698.Spec : Prop :=
  ∀ n, P7782386624308835698.a n = A105723 n

end A105723

/-! ## A105723.P10606923595122335453

`2*(A103425(n)-1)`
-/

namespace A105723.P10606923595122335453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A103425 n - 1)

end

end A105723.P10606923595122335453

namespace A105723

/-- `2*(A103425(n)-1)` -/
def P10606923595122335453.Spec : Prop :=
  ∀ n, P10606923595122335453.a n = A105723 n

end A105723

/-! ## A105723.P12953774850087858988

`2/3*A120471(n)`
-/

namespace A105723.P12953774850087858988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A120471 n : ℚ)

end

end A105723.P12953774850087858988

namespace A105723

/-- `2/3*A120471(n)` -/
def P12953774850087858988.Spec : Prop :=
  ∀ n, P12953774850087858988.a n = (A105723 n : ℚ)

end A105723

/-! ## A105723.P2410850314044668372

`xor(A000244(n), A010688(n))`
-/

namespace A105723.P2410850314044668372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000244 n) (A010688 n)

end

end A105723.P2410850314044668372

namespace A105723

/-- `xor(A000244(n), A010688(n))` -/
def P2410850314044668372.Spec : Prop :=
  ∀ n, P2410850314044668372.a n = A105723 n

end A105723

/-! ## A105723.P5380489924886664596

`xor(A010677(n), A024023(n))`
-/

namespace A105723.P5380489924886664596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010677 n) (A024023 n)

end

end A105723.P5380489924886664596

namespace A105723

/-- `xor(A010677(n), A024023(n))` -/
def P5380489924886664596.Spec : Prop :=
  ∀ n, P5380489924886664596.a n = A105723 n

end A105723

/-! ## A105723.P10330221089106117972

`xor(A010697(n), A052929(n))`
-/

namespace A105723.P10330221089106117972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010697 n) (A052929 n)

end

end A105723.P10330221089106117972

namespace A105723

/-- `xor(A010697(n), A052929(n))` -/
def P10330221089106117972.Spec : Prop :=
  ∀ n, P10330221089106117972.a n = A105723 n

end A105723

/-! ## A105723.P15088848343232297999

`xor(A010696(n), A102345(n))`
-/

namespace A105723.P15088848343232297999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010696 n) (A102345 n)

end

end A105723.P15088848343232297999

namespace A105723

/-- `xor(A010696(n), A102345(n))` -/
def P15088848343232297999.Spec : Prop :=
  ∀ n, P15088848343232297999.a n = A105723 n

end A105723

/-! ## A105723.P11690928561651607314

`xor(A010675(n), A141317(n))`
-/

namespace A105723.P11690928561651607314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010675 n) (A141317 n)

end

end A105723.P11690928561651607314

namespace A105723

/-- `xor(A010675(n), A141317(n))` -/
def P11690928561651607314.Spec : Prop :=
  ∀ n, P11690928561651607314.a n = A105723 n

end A105723

/-!
# A105725: Triangle read by rows: T(n,k)=(n+k)!/k! (0<=k<=n-1; n>=1).

The programs for A105725, the canonical program `A105725.P11880557678506006424` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105725 has offset 1).

The definition of A105725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105725.P11880557678506006424

`(row(n)+1+col(n))!/col(n)!`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105725

/-- `(row(n)+1+col(n))!/col(n)!` -/
def P11880557678506006424.Spec : Prop :=
  ∀ n, P11880557678506006424.a n = (A105725 (n + 1) : ℚ)

end A105725

/-! ## A105725.P17091989347092089159

`∑[char[∑[n]]]!*C(n+1-C(∑[char[∑[n+1]]], 2), ∑[char[∑[n]]])`
-/

namespace A105725.P17091989347092089159
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.choose ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat (∑ j ∈ Finset.range (n + 1), f7 j)

end

end A105725.P17091989347092089159

namespace A105725

/-- `∑[char[∑[n]]]!*C(n+1-C(∑[char[∑[n+1]]], 2), ∑[char[∑[n]]])` -/
def P17091989347092089159.Spec : Prop :=
  ∀ n, (P17091989347092089159.a n : ℤ) = A105725 (n + 1)

end A105725

/-! ## A105725.P1885685861162156544

`A156991(comp[∑[n]])`
-/

namespace A105725.P1885685861162156544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156991 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A105725.P1885685861162156544

namespace A105725

/-- `A156991(comp[∑[n]])` -/
def P1885685861162156544.Spec : Prop :=
  ∀ n, P1885685861162156544.a n = A105725 (n + 1)

end A105725

/-! ## A105725.P11728309426820992873

`∑[char[∑[n]]]!*A178300(n+1)`
-/

namespace A105725.P11728309426820992873
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A178300 (n + 1)

end

end A105725.P11728309426820992873

namespace A105725

/-- `∑[char[∑[n]]]!*A178300(n+1)` -/
def P11728309426820992873.Spec : Prop :=
  ∀ n, P11728309426820992873.a n = A105725 (n + 1)

end A105725

/-! ## A105725.P4271681899819505573

`A162608(n)*A165257(n+1)`
-/

namespace A105725.P4271681899819505573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162608 n * A165257 (n + 1)

end

end A105725.P4271681899819505573

namespace A105725

/-- `A162608(n)*A165257(n+1)` -/
def P4271681899819505573.Spec : Prop :=
  ∀ n, P4271681899819505573.a n = A105725 (n + 1)

end A105725

/-! ## A105725.P13887606531471016540

`A130493(n+1)*A178300(n+1)`
-/

namespace A105725.P13887606531471016540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130493 (n + 1) * A178300 (n + 1)

end

end A105725.P13887606531471016540

namespace A105725

/-- `A130493(n+1)*A178300(n+1)` -/
def P13887606531471016540.Spec : Prop :=
  ∀ n, P13887606531471016540.a n = A105725 (n + 1)

end A105725

/-! ## A105725.P10313722946181236211

`A347823(n)*A377660(n)`
-/

namespace A105725.P10313722946181236211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347823 n * A377660 n

end

end A105725.P10313722946181236211

namespace A105725

/-- `A347823(n)*A377660(n)` -/
def P10313722946181236211.Spec : Prop :=
  ∀ n, P10313722946181236211.a n = A105725 (n + 1)

end A105725

/-! ## A105725.P12160291976343793826

`(n+1-C(∑[char[∑[n+1]]], 2))!/(n-C(∑[char[∑[n]]], 2))!`
-/

namespace A105725.P12160291976343793826
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℚ)

end

end A105725.P12160291976343793826

namespace A105725

/-- `(n+1-C(∑[char[∑[n+1]]], 2))!/(n-C(∑[char[∑[n]]], 2))!` -/
def P12160291976343793826.Spec : Prop :=
  ∀ n, P12160291976343793826.a n = (A105725 (n + 1) : ℚ)

end A105725

/-! ## A105725.P6742892092421586784

`A077012(n+1)*A238761(n+1)`
-/

namespace A105725.P6742892092421586784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (n + 1) * A238761 (n + 1)

end

end A105725.P6742892092421586784

namespace A105725

/-- `A077012(n+1)*A238761(n+1)` -/
def P6742892092421586784.Spec : Prop :=
  ∀ n, P6742892092421586784.a n = A105725 (n + 1)

end A105725

/-!
# A105728: Triangle read by rows: T(n,1) = 1, T(n,n) = n and for 1 < k < n: T(n,k) = T(n-1,k-1) + 2*T(n-1,k).

The programs for A105728, the canonical program `A105728.P9423552014688535179` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105728 has offset 1).

The definition of A105728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105728.P9423552014688535179

`A115068(n+1)+A112857(n)-A038207(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A105728

/-- `A115068(n+1)+A112857(n)-A038207(n)` -/
def P9423552014688535179.Spec : Prop :=
  ∀ n, P9423552014688535179.a n = A105728 (n + 1)

theorem P9423552014688535179.correct : P9423552014688535179.Spec := by
  intro n
  simp only [A105728, Nat.add_sub_cancel]

end A105728

/-! ## A105728.P12070035043772465136

`A198792(comp[∑[n-1]])+A112857(n)`
-/

namespace A105728.P12070035043772465136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + A112857 n

end

end A105728.P12070035043772465136

namespace A105728

/-- `A198792(comp[∑[n-1]])+A112857(n)` -/
def P12070035043772465136.Spec : Prop :=
  ∀ n, P12070035043772465136.a n = A105728 (n + 1)

end A105728

/-! ## A105728.P10965714106429048139

`(A112857(comp[∑[n+1]])+A112857(n))/2`
-/

namespace A105728.P10965714106429048139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112857 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A112857 n : ℚ) / 2

end

end A105728.P10965714106429048139

namespace A105728

/-- `(A112857(comp[∑[n+1]])+A112857(n))/2` -/
def P10965714106429048139.Spec : Prop :=
  ∀ n, P10965714106429048139.a n = (A105728 (n + 1) : ℚ)

end A105728

/-! ## A105728.P12524624351684940589

`A233777(2*A046803(n+1))-1`
-/

namespace A105728.P12524624351684940589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233777 (2 * A046803 (n + 1)).toNat - 1

end

end A105728.P12524624351684940589

namespace A105728

/-- `A233777(2*A046803(n+1))-1` -/
def P12524624351684940589.Spec : Prop :=
  ∀ n, P12524624351684940589.a n = A105728 (n + 1)

end A105728

/-! ## A105728.P9290170803243320050

`A093697(A157177(n)+A051340(n))`
-/

namespace A105728.P9290170803243320050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A157177 n + A051340 n).toNat

end

end A105728.P9290170803243320050

namespace A105728

/-- `A093697(A157177(n)+A051340(n))` -/
def P9290170803243320050.Spec : Prop :=
  ∀ n, P9290170803243320050.a n = A105728 (n + 1)

end A105728

/-!
# A105730: Number of different initial values for 3x+1 trajectories in which the largest term appearing in the iteration is 2^(6n+4).

The programs for A105730, there is no canonical definition to state claims against.
-/

/-! ## A105730.P4753468927401017392

`A087256(6*n+4)`
-/

namespace A105730.P4753468927401017392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087256 (6 * n + 4)

end

end A105730.P4753468927401017392

/-! ## A105730.P5833336735628018608

`A087256(A016957(n))%A005032(n)`
-/

namespace A105730.P5833336735628018608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087256 (A016957 n).toNat) (A005032 n)

end

end A105730.P5833336735628018608

/-! ## A105730.P9590069373947635392

`or(A000038(n), A087256(A016957(n)))`
-/

namespace A105730.P9590069373947635392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A087256 (A016957 n).toNat)

end

end A105730.P9590069373947635392

/-! ## A105730.P5430847159762776091

`A087256(A016957(n))+A000038(n+3)`
-/

namespace A105730.P5430847159762776091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087256 (A016957 n).toNat + A000038 (n + 3)

end

end A105730.P5430847159762776091

/-! ## A105730.P3154048651603972801

`A102683(A306100(n))+A087256(A016957(n))`
-/

namespace A105730.P3154048651603972801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A306100 n).toNat + A087256 (A016957 n).toNat

end

end A105730.P3154048651603972801

/-!
# A105731: Odd numbers k such that A105658(k) != k.

The programs for A105731, there is no canonical definition to state claims against.
-/

/-! ## A105731.P1778189799798078331

`lt[n^(n%2), A105658(n*n%2)]`
-/

namespace A105731.P1778189799798078331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 (n * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105731.P1778189799798078331

/-! ## A105731.P13995425015409257295

`lt[A116570(n)², n*A105658(n)]`
-/

namespace A105731.P13995425015409257295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105731.P13995425015409257295

/-! ## A105731.P2809820470185463322

`lt[n+1, A105658(A133265(n)-1)]`
-/

namespace A105731.P2809820470185463322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 (A133265 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105731.P2809820470185463322

/-! ## A105731.P14298969985139781154

`lt[A001358(n+2), A105658(n*n%2)]`
-/

namespace A105731.P14298969985139781154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 (n * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105731.P14298969985139781154

/-! ## A105731.P15131681919805036506

`lt[A116570(n), A105658(A026741(n))]`
-/

namespace A105731.P15131681919805036506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 (A026741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105731.P15131681919805036506

/-!
# A105732: Even numbers k such that A105658(k) != k/2.

The programs for A105732, there is no canonical definition to state claims against.
-/

/-! ## A105732.P5260862258223991024

`2*lt[2*n+1, A105658(2*n)]`
-/

namespace A105732.P5260862258223991024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105732.P5260862258223991024

/-! ## A105732.P1352439560179014593

`lt[A026741(n), n%A105658(n)]`
-/

namespace A105732.P1352439560179014593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A105658 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105732.P1352439560179014593

/-! ## A105732.P12025308403629242582

`lt[A116570(A144433(n+2)), A105658(n)]`
-/

namespace A105732.P12025308403629242582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (A144433 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105732.P12025308403629242582

/-! ## A105732.P4129091026192355424

`lt[A016921(n), A105658(A257844(2*(n+1)))]`
-/

namespace A105732.P4129091026192355424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105658 (A257844 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105732.P4129091026192355424

/-!
# A105733: Numbers k such that A105658(2k-1) != 2k-1 and A105658(2k) != k.

The programs for A105733, there is no canonical definition to state claims against.
-/

/-! ## A105733.P10453938963282097694

`lt[A393027(n+1), A330348(A000837(n))]`
-/

namespace A105733.P10453938963282097694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (A000837 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105733.P10453938963282097694

/-!
# A105734: For n>2, a(n) > 0 is such that a(n-1)^2+4*a(n-2)*a(n) is a minimal square, with a(1)=1, a(2)=1.

The programs for A105734, there is no canonical definition to state claims against.
-/

/-! ## A105734.P11576165817175124205

`2-floor(∑[cos(5*n)])`
-/

namespace A105734.P11576165817175124205
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (5 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A105734.P11576165817175124205

/-! ## A105734.P16773558994967294902

`round(ϕ-sin(5*(n+3)))`
-/

namespace A105734.P16773558994967294902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio - Real.sin (5 * (n + 3) : ℝ))

end

end A105734.P16773558994967294902

/-! ## A105734.P17675634394409241758

`val(C((n+2)², 2), 5)+1`
-/

namespace A105734.P17675634394409241758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose ((n + 2) ^ 2) 2) 5 + 1

end

end A105734.P17675634394409241758

/-! ## A105734.P6945189321921416480

`val(∑[∑[30*(n+1)²]], 5)`
-/

namespace A105734.P6945189321921416480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 5

end

end A105734.P6945189321921416480

/-! ## A105734.P15613499334439573791

`gcd(6, n%5)%5*∑{digits}[n, C(#, 9)]!`
-/

namespace A105734.P15613499334439573791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n % 5) % 5 * Nat.factorial ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum

end

end A105734.P15613499334439573791

/-!
# A105736: For n>2, a(n) > 0 is such that a(n-1)^2+4*a(n-2)*a(n) is a minimal square, a(1)=1,a(2)=3.

The programs for A105736, the canonical program `A105736.P4546621188575961269` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105736 has offset 1).

The definition of A105736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105736.P4546621188575961269

`a(n-5)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=4, a(4)=3, a(5)=1, a(6)=2, a(7)=3, a(8)=2, a(9)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105736

/-- `a(n-5)` -/
def P4546621188575961269.Spec : Prop :=
  ∀ n, (P4546621188575961269.a n : ℤ) = A105736 (n + 1)

theorem P4546621188575961269.correct : P4546621188575961269.Spec := by
  intro n
  simp only [A105736, Nat.add_sub_cancel]

end A105736

/-!
# A105737: For n>2, a(n) > 0 is such that a(n-1)^2+4*a(n-2)*a(n) is a minimal square, a(1)=1,a(2)=4.

The programs for A105737, there is no canonical definition to state claims against.
-/

/-! ## A105737.P18088506319593221061

`A105743(n+6)`
-/

namespace A105737.P18088506319593221061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105743 (n + 6)

end

end A105737.P18088506319593221061

/-!
# A105738: For n>2, a(n) > 0 is such that a(n-1)^2+4*a(n-2)*a(n) is a minimal square, a(1)=1,a(2)=5.

The programs for A105738, there is no canonical definition to state claims against.
-/

/-! ## A105738.P15689190027803768083

`A105737(A065475(n+1))`
-/

namespace A105738.P15689190027803768083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105737 (A065475 (n + 1)).toNat

end

end A105738.P15689190027803768083

/-!
# A105740: For n>2, a(n) > 0 is such that a(n-1)^2+4*a(n-2)*a(n) is a minimal square, a(1)=1,a(2)=7.

The programs for A105740, there is no canonical definition to state claims against.
-/

/-! ## A105740.P12378336114911981580

`A105744(n+6)`
-/

namespace A105740.P12378336114911981580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105744 (n + 6)

end

end A105740.P12378336114911981580

/-!
# A105746: a(n) = minimal c>0 such that (n+1)^2+4*n*c = d^2 is a square.

The programs for A105746, there is no canonical definition to state claims against.
-/

/-! ## A105746.P2970106049130243946

`A344006(n+1)+A344005(n+1)`
-/

namespace A105746.P2970106049130243946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (n + 1) + A344005 (n + 1)

end

end A105746.P2970106049130243946

/-! ## A105746.P13996751471979941256

`A344005(n+1)+A076942(4*(n+1))`
-/

namespace A105746.P13996751471979941256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) + A076942 (4 * (n + 1))

end

end A105746.P13996751471979941256

/-! ## A105746.P11444485148319987242

`A002260((2*n+3)*A344006(n+1))`
-/

namespace A105746.P11444485148319987242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((2 * n + 3 : ℤ) * A344006 (n + 1)).toNat

end

end A105746.P11444485148319987242

/-! ## A105746.P12072893218933771758

`floor(A344006(n+1)+sqrt(A345988(n+1)))`
-/

namespace A105746.P12072893218933771758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344006 (n + 1) : ℝ) + Real.sqrt (A345988 (n + 1) : ℝ)⌋

end

end A105746.P12072893218933771758

/-! ## A105746.P6277439296975279860

`A344006(n+1)+A011772(gcd(n+1, ∑[n]))`
-/

namespace A105746.P6277439296975279860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (n + 1) + A011772 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A105746.P6277439296975279860

/-! ## A105746.P17314235245939715314

`A344006(n+1)+1-A182665(n+1)+n`
-/

namespace A105746.P17314235245939715314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (n + 1) + (1 - A182665 (n + 1) + (n : ℤ))

end

end A105746.P17314235245939715314

/-! ## A105746.P1692004267513336705

`A344005(n+1)+A345988(n+1)/(n+1)`
-/

namespace A105746.P1692004267513336705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344005 (n + 1) : ℚ) + (A345988 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A105746.P1692004267513336705

/-! ## A105746.P11325548363715009802

`A344006(n+1)+A011772(Δ[A001318(n)])`
-/

namespace A105746.P11325548363715009802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (n + 1) + A011772 (f1 (n + 1) - f1 n).toNat

end

end A105746.P11325548363715009802

/-! ## A105746.P6444734950406308572

`A344006(n+1)+A011772(A026741(n+1))`
-/

namespace A105746.P6444734950406308572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (n + 1) + A011772 (A026741 (n + 1)).toNat

end

end A105746.P6444734950406308572

/-! ## A105746.P9807159148929334491

`A344006(n+1)+A000196(A345988(n+1))`
-/

namespace A105746.P9807159148929334491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344006 (n + 1) + A000196 (A345988 (n + 1)).toNat

end

end A105746.P9807159148929334491

/-!
# A105747: Number of ways to use the elements of {1,..,k}, 0<=k<=2n, once each to form a collection of n (possibly empty) lists, each of length at most 2.

The programs for A105747, there is no canonical definition to state claims against.
-/

/-! ## A105747.P2553229877845724032

`∑[A001517(n)]`
-/

namespace A105747.P2553229877845724032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105747.P2553229877845724032

/-! ## A105747.P1424217490433859316

`∑[record[A316773(n)]]`
-/

namespace A105747.P1424217490433859316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316773 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105747.P1424217490433859316

/-! ## A105747.P406711085375574622

`∑[A080893(n+1)]`
-/

namespace A105747.P406711085375574622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105747.P406711085375574622

/-! ## A105747.P1215934950251771498

`∑[A113873(3*n)]`
-/

namespace A105747.P1215934950251771498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113873 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105747.P1215934950251771498

/-! ## A105747.P1072448830440304108

`∑[A316773(∑[n+1])]`
-/

namespace A105747.P1072448830440304108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316773 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105747.P1072448830440304108

/-!
# A105748: Number of ways to use the elements of {1,..,k}, 0<=k<=2n, once each to form a collection of n (possibly empty) sets, each with at most 2 elements.

The programs for A105748, the canonical program `A105748.P10419138704974745632` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105748 has offset 0).

The definition of A105748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105748.P10419138704974745632

`2*n*a(n-1)-(2*n-2)*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105748

/-- `2*n*a(n-1)-(2*n-2)*a(n-2)-a(n-3)` -/
def P10419138704974745632.Spec : Prop :=
  ∀ n, P10419138704974745632.a n = A105748 n

theorem P10419138704974745632.correct : P10419138704974745632.Spec := by
  intro n
  simp only [A105748]

end A105748

/-! ## A105748.P686478921358560083

`∑[a(n-2)+(2*n-1)*a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A105748.P686478921358560083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + ((2 * n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105748.P686478921358560083

namespace A105748

/-- `∑[a(n-2)+(2*n-1)*a(n-1)]` -/
def P686478921358560083.Spec : Prop :=
  ∀ n, P686478921358560083.a n = A105748 n

end A105748

/-! ## A105748.P17397060765034590416

`∑[A001515(n)]`
-/

namespace A105748.P17397060765034590416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105748.P17397060765034590416

namespace A105748

/-- `∑[A001515(n)]` -/
def P17397060765034590416.Spec : Prop :=
  ∀ n, P17397060765034590416.a n = A105748 n

end A105748

/-! ## A105748.P18321541989229060659

`∑[record[A144502(n)]]`
-/

namespace A105748.P18321541989229060659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105748.P18321541989229060659

namespace A105748

/-- `∑[record[A144502(n)]]` -/
def P18321541989229060659.Spec : Prop :=
  ∀ n, P18321541989229060659.a n = A105748 n

end A105748

/-! ## A105748.P10958411024916185885

`∑[A144301(n+1)]`
-/

namespace A105748.P10958411024916185885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105748.P10958411024916185885

namespace A105748

/-- `∑[A144301(n+1)]` -/
def P10958411024916185885.Spec : Prop :=
  ∀ n, P10958411024916185885.a n = A105748 n

end A105748

/-! ## A105748.P13906483413314543325

`∑[A144502(∑[n+1])]`
-/

namespace A105748.P13906483413314543325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105748.P13906483413314543325

namespace A105748

/-- `∑[A144502(∑[n+1])]` -/
def P13906483413314543325.Spec : Prop :=
  ∀ n, P13906483413314543325.a n = A105748 n

end A105748

/-! ## A105748.P1861863130090321365

`∑[A144505(∑[n+1])]`
-/

namespace A105748.P1861863130090321365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144505 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105748.P1861863130090321365

namespace A105748

/-- `∑[A144505(∑[n+1])]` -/
def P1861863130090321365.Spec : Prop :=
  ∀ n, P1861863130090321365.a n = A105748 n

end A105748

/-! ## A105748.P11429478162879118183

`∑[A144513(n)-A144499(n)]`
-/

namespace A105748.P11429478162879118183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144513 n - A144499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105748.P11429478162879118183

namespace A105748

/-- `∑[A144513(n)-A144499(n)]` -/
def P11429478162879118183.Spec : Prop :=
  ∀ n, P11429478162879118183.a n = A105748 n

end A105748

/-!
# A105749: Number of ways to use the elements of {1,...,k}, 0 <= k <= 2n, once each to form a sequence of n sets, each having 1 or 2 elements.

The programs for A105749, the canonical program `A105749.P9613092289233268434` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105749 has offset 0).

The definition of A105749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105749.P9613092289233268434

`n*(2*n-1)*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105749

/-- `n*(2*n-1)*a(n-1)+n*(n-1)*a(n-2)` -/
def P9613092289233268434.Spec : Prop :=
  ∀ n, P9613092289233268434.a n = A105749 n

theorem P9613092289233268434.correct : P9613092289233268434.Spec := by
  intro n
  simp only [A105749]

end A105749

/-! ## A105749.P12623308232484529487

`n!*A001515(n)`
-/

namespace A105749.P12623308232484529487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001515 n

end

end A105749.P12623308232484529487

namespace A105749

/-- `n!*A001515(n)` -/
def P12623308232484529487.Spec : Prop :=
  ∀ n, P12623308232484529487.a n = A105749 n

end A105749

/-! ## A105749.P8358094505173028845

`n*((2*n-1)*a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A105749.P8358094505173028845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * (((2 * n : ℤ) - 1) * a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A105749.P8358094505173028845

namespace A105749

/-- `n*((2*n-1)*a(n-1)+(n-1)*a(n-2))` -/
def P8358094505173028845.Spec : Prop :=
  ∀ n, P8358094505173028845.a n = A105749 n

theorem P8358094505173028845.correct : P8358094505173028845.Spec := by
  intro n
  simp only [A105749, Nat.add_sub_cancel, A105749.P8358094505173028845.a, A105749.P9613092289233268434.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A105749

/-! ## A105749.P9504166680977795615

`n!*record[A144502(n)]`
-/

namespace A105749.P9504166680977795615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105749.P9504166680977795615

namespace A105749

/-- `n!*record[A144502(n)]` -/
def P9504166680977795615.Spec : Prop :=
  ∀ n, P9504166680977795615.a n = A105749 n

end A105749

/-! ## A105749.P3303335031853231543

`A143990(n+1)/(n+1)`
-/

namespace A105749.P3303335031853231543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143990 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A105749.P3303335031853231543

namespace A105749

/-- `A143990(n+1)/(n+1)` -/
def P3303335031853231543.Spec : Prop :=
  ∀ n, P3303335031853231543.a n = (A105749 n : ℚ)

end A105749

/-!
# A105750: Real part of Product_{k = 0..n} (1 + k*i), i = sqrt(-1).

The programs for A105750, there is no canonical definition to state claims against.
-/

/-! ## A105750.P10416776816769793627

`A165326(n)*A220449(A028310(n))`
-/

namespace A105750.P10416776816769793627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A220449 (A028310 n).toNat

end

end A105750.P10416776816769793627

/-! ## A105750.P16174453960253014242

`A165326(n)*A220449(A233583(n+1))`
-/

namespace A105750.P16174453960253014242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A220449 (A233583 (n + 1)).toNat

end

end A105750.P16174453960253014242

/-! ## A105750.P9132387946772703021

`((2*n-1)*a(n-1)-((1-n)²+1)*n*a(n-2))/(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A105750.P9132387946772703021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (((2 * n : ℤ) - 1 : ℚ) * a (n - 1) - ((1 - (n : ℤ)) ^ 2 + 1 : ℚ) * ((n : ℚ) * a (n - 2))) / ((n : ℤ) - 1 : ℚ)

end

end A105750.P9132387946772703021

/-! ## A105750.P3867722037138214729

`Δ[A105751(n)]/(n+1)`
-/

namespace A105750.P3867722037138214729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105751 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A105750.P3867722037138214729

/-!
# A105751: Imaginary part of Product_{k=0..n} (1 + k*i), i = sqrt(-1).

The programs for A105751, the canonical program `A105751.P5827615492169924941` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105751 has offset 0).

The definition of A105751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105751.P5827615492169924941

`((2*n-1)*a(n-1)-(n²-2*n+2)*n*a(n-2))/(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105751

/-- `((2*n-1)*a(n-1)-(n²-2*n+2)*n*a(n-2))/(n-1)` -/
def P5827615492169924941.Spec : Prop :=
  ∀ n, P5827615492169924941.a n = (A105751 n : ℚ)

end A105751

/-! ## A105751.P619928269252586207

`Δ[A105750(n)]/xor(n, -1)`
-/

namespace A105751.P619928269252586207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105750 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ)

end

end A105751.P619928269252586207

namespace A105751

/-- `Δ[A105750(n)]/xor(n, -1)` -/
def P619928269252586207.Spec : Prop :=
  ∀ n, P619928269252586207.a n = (A105751 n : ℚ)

end A105751

/-! ## A105751.P2794605968132406987

`Δ[A105750(n)]/A001478(n+1)`
-/

namespace A105751.P2794605968132406987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105750 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A001478 (n + 1) : ℚ)

end

end A105751.P2794605968132406987

namespace A105751

/-- `Δ[A105750(n)]/A001478(n+1)` -/
def P2794605968132406987.Spec : Prop :=
  ∀ n, P2794605968132406987.a n = (A105751 n : ℚ)

end A105751

/-! ## A105751.P2674639056727918035

`Δ[A105750(n)]/(A000038(n)-(n+1))`
-/

namespace A105751.P2674639056727918035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105750 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000038 n - (n + 1 : ℤ) : ℚ)

end

end A105751.P2674639056727918035

namespace A105751

/-- `Δ[A105750(n)]/(A000038(n)-(n+1))` -/
def P2674639056727918035.Spec : Prop :=
  ∀ n, P2674639056727918035.a n = (A105751 n : ℚ)

end A105751

/-! ## A105751.P15217359534074648779

`Δ[A105750(n)]/(A057427(n)-(n+2))`
-/

namespace A105751.P15217359534074648779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105750 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A057427 n - (n + 2 : ℤ) : ℚ)

end

end A105751.P15217359534074648779

namespace A105751

/-- `Δ[A105750(n)]/(A057427(n)-(n+2))` -/
def P15217359534074648779.Spec : Prop :=
  ∀ n, P15217359534074648779.a n = (A105751 n : ℚ)

end A105751

/-! ## A105751.P8471341200591995373

`(A105750(n)-A105750(n+1))/(n+1)`
-/

namespace A105751.P8471341200591995373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105750 n - A105750 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A105751.P8471341200591995373

namespace A105751

/-- `(A105750(n)-A105750(n+1))/(n+1)` -/
def P8471341200591995373.Spec : Prop :=
  ∀ n, P8471341200591995373.a n = (A105751 n : ℚ)

end A105751

/-!
# A105752: Expansion of e.g.f. cos(i*log(1 + x)), i = sqrt(-1).

The programs for A105752, there is no canonical definition to state claims against.
-/

/-! ## A105752.P16234398168989661769

`-(n*a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A105752.P16234398168989661769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  -((n : ℤ) * a (n - 1))

end

end A105752.P16234398168989661769

/-! ## A105752.P12816039013999157049

`char[2]-n*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A105752.P12816039013999157049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ) * a (n - 1)

end

end A105752.P12816039013999157049

/-! ## A105752.P15522125618374817743

`-(a(n-1)/tan(acot(n)))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A105752.P15522125618374817743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  -(a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ)))

end

end A105752.P15522125618374817743

/-! ## A105752.P17589339959498267128

`-(a(n-1)/cot(atan(n)))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A105752.P17589339959498267128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  -(a (n - 1) / Real.cot (Real.arctan (n : ℝ)))

end

end A105752.P17589339959498267128

/-! ## A105752.P7446574895248563905

`-(a(n-1)/n^(-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A105752.P7446574895248563905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  -(a (n - 1) / (n : ℚ) ^ (-1 : ℤ))

end

end A105752.P7446574895248563905

/-! ## A105752.P18249187150300240750

`n-n*(a(n-1)+1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A105752.P18249187150300240750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (n : ℤ) - (n : ℤ) * (a (n - 1) + 1)

end

end A105752.P18249187150300240750

/-! ## A105752.P16054212214367613071

`n*(1-a(n-1))-n` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A105752.P16054212214367613071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (n : ℤ) * (1 - a (n - 1)) - (n : ℤ)

end

end A105752.P16054212214367613071

/-! ## A105752.P17312172764784371848

`a(n-1)/(1-(n+1)/n)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A105752.P17312172764784371848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) / (1 - (n + 1 : ℚ) / (n : ℚ))

end

end A105752.P17312172764784371848

/-! ## A105752.P11769676704008284317

`ceil(∏[floor(acot(n)-n)]/2)`
-/

namespace A105752.P11769676704008284317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A105752.P11769676704008284317

/-! ## A105752.P1139326158102483620

`ceil(∏[floor(1/(n+1)-n)]/2)`
-/

namespace A105752.P1139326158102483620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ) - (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A105752.P1139326158102483620

/-!
# A105754: Lucas 8-step numbers.

The programs for A105754, there is no canonical definition to state claims against.
-/

/-! ## A105754.P12786456585863890948

`A125127(A000124(n+8)-8)`
-/

namespace A105754.P12786456585863890948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A000124 (n + 8) - 8).toNat

end

end A105754.P12786456585863890948

/-! ## A105754.P11398549062048232238

`record[A125127(∑[A009005(n+1)])]`
-/

namespace A105754.P11398549062048232238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105754.P11398549062048232238

/-! ## A105754.P16409431098241621975

`A125127(A000217(n+7)+n+1)`
-/

namespace A105754.P16409431098241621975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A105754.P16409431098241621975

/-! ## A105754.P2525085908969465225

`A125127(A133263(n+6)+A005843(n+3))`
-/

namespace A105754.P2525085908969465225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A133263 (n + 6) + A005843 (n + 3)).toNat

end

end A105754.P2525085908969465225

/-! ## A105754.P10159675538437303799

`A125127(A179865(n+7)+A005843(n+4))`
-/

namespace A105754.P10159675538437303799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A179865 (n + 7) + A005843 (n + 4)).toNat

end

end A105754.P10159675538437303799

/-!
# A105755: Lucas 9-step numbers.

The programs for A105755, the canonical program `A105755.P6113369147391080611` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105755 has offset 1).

The definition of A105755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105755.P6113369147391080611

`A104144(n+10)+A104144(n)-A127193(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105755

/-- `A104144(n+10)+A104144(n)-A127193(n+1)` -/
def P6113369147391080611.Spec : Prop :=
  ∀ n, P6113369147391080611.a n = A105755 (n + 1)

theorem P6113369147391080611.correct : P6113369147391080611.Spec := by
  intro n
  simp only [A105755, Nat.add_sub_cancel]

end A105755

/-! ## A105755.P2288025280133518347

`A251749(n+5)+A251749(n+10)-A127193(n+1)`
-/

namespace A105755.P2288025280133518347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (n + 5) + (A251749 (n + 10) - A127193 (n + 1))

end

end A105755.P2288025280133518347

namespace A105755

/-- `A251749(n+5)+A251749(n+10)-A127193(n+1)` -/
def P2288025280133518347.Spec : Prop :=
  ∀ n, P2288025280133518347.a n = A105755 (n + 1)

end A105755

/-! ## A105755.P2613731449396162861

`A125127(A155212(n+5))`
-/

namespace A105755.P2613731449396162861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A155212 (n + 5)).toNat

end

end A105755.P2613731449396162861

namespace A105755

/-- `A125127(A155212(n+5))` -/
def P2613731449396162861.Spec : Prop :=
  ∀ n, P2613731449396162861.a n = A105755 (n + 1)

end A105755

/-! ## A105755.P18330127377342084026

`A125127(A027379(n+7)-5)`
-/

namespace A105755.P18330127377342084026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A027379 (n + 7) - 5).toNat

end

end A105755.P18330127377342084026

namespace A105755

/-- `A125127(A027379(n+7)-5)` -/
def P18330127377342084026.Spec : Prop :=
  ∀ n, P18330127377342084026.a n = A105755 (n + 1)

end A105755

/-! ## A105755.P13609147868884711797

`A125127(A000124(n+9)-9)`
-/

namespace A105755.P13609147868884711797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A000124 (n + 9) - 9).toNat

end

end A105755.P13609147868884711797

namespace A105755

/-- `A125127(A000124(n+9)-9)` -/
def P13609147868884711797.Spec : Prop :=
  ∀ n, P13609147868884711797.a n = A105755 (n + 1)

end A105755

/-!
# A105756: Indices of prime Fibonacci 5-step numbers, A001591.

The programs for A105756, there is no canonical definition to state claims against.
-/

/-! ## A105756.P17753107390585769756

`A248757(n+1)-3`
-/

namespace A105756.P17753107390585769756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248757 (n + 1) - 3

end

end A105756.P17753107390585769756

/-!
# A105757: 

The programs for A105757, there is no canonical definition to state claims against.
-/

/-! ## A105757.P12092926073676106125

`A001591(A105756(n+1)+3)`
-/

namespace A105757.P12092926073676106125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (A105756 (n + 1) + 3).toNat

end

end A105757.P12092926073676106125

/-!
# A105758: Indices of prime hexanacci (or Fibonacci 6-step) numbers A001592 (using offset -4).

The programs for A105758, there is no canonical definition to state claims against.
-/

/-! ## A105758.P9309451100762279919

`A249635(n+1)-4`
-/

namespace A105758.P9309451100762279919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249635 (n + 1) - 4

end

end A105758.P9309451100762279919

/-! ## A105758.P3531489019541296306

`record[A249635(A324347(n))-4]`
-/

namespace A105758.P3531489019541296306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249635 (A324347 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105758.P3531489019541296306

/-! ## A105758.P12803285205986570837

`record[A249635(A328399(n))-4]`
-/

namespace A105758.P12803285205986570837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249635 (A328399 n).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105758.P12803285205986570837

/-!
# A105760: Nonnegative numbers k such that 2k+7 is prime.

The programs for A105760, the canonical program `A105760.P15649417677939537676` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105760 has offset 1).

The definition of A105760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105760.P15649417677939537676

`floor(A086304(n+1)/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A105760

/-- `floor(A086304(n+1)/2)` -/
def P15649417677939537676.Spec : Prop :=
  ∀ n, P15649417677939537676.a n = A105760 (n + 1)

theorem P15649417677939537676.correct : P15649417677939537676.Spec := by
  intro n
  simp only [A105760, Nat.add_sub_cancel]

end A105760

/-! ## A105760.P15924546290051710688

`∑[A001223(n+3)]/2-1`
-/

namespace A105760.P15924546290051710688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 - 1

end

end A105760.P15924546290051710688

namespace A105760

/-- `∑[A001223(n+3)]/2-1` -/
def P15924546290051710688.Spec : Prop :=
  ∀ n, P15924546290051710688.a n = (A105760 (n + 1) : ℚ)

end A105760

/-! ## A105760.P9837801797378494793

`record[1-A305901(n+1)+n]`
-/

namespace A105760.P9837801797378494793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A305901 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105760.P9837801797378494793

namespace A105760

/-- `record[1-A305901(n+1)+n]` -/
def P9837801797378494793.Spec : Prop :=
  ∀ n, P9837801797378494793.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P7806146868599600920

`A161720(n+4)`
-/

namespace A105760.P7806146868599600920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 4)

end

end A105760.P7806146868599600920

namespace A105760

/-- `A161720(n+4)` -/
def P7806146868599600920.Spec : Prop :=
  ∀ n, P7806146868599600920.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P10116478585350220682

`A089038(n+2)-1`
-/

namespace A105760.P10116478585350220682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 2) - 1

end

end A105760.P10116478585350220682

namespace A105760

/-- `A089038(n+2)-1` -/
def P10116478585350220682.Spec : Prop :=
  ∀ n, P10116478585350220682.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P1267669946764677637

`∑[A028334(n+3)]-1`
-/

namespace A105760.P1267669946764677637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A105760.P1267669946764677637

namespace A105760

/-- `∑[A028334(n+3)]-1` -/
def P1267669946764677637.Spec : Prop :=
  ∀ n, P1267669946764677637.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P6484716332734588848

`A173064(n+4)/2-1`
-/

namespace A105760.P6484716332734588848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173064 (n + 4) : ℚ) / 2 - 1

end

end A105760.P6484716332734588848

namespace A105760

/-- `A173064(n+4)/2-1` -/
def P6484716332734588848.Spec : Prop :=
  ∀ n, P6484716332734588848.a n = (A105760 (n + 1) : ℚ)

end A105760

/-! ## A105760.P5222208967848776847

`A073273(n+2)-A089253(n+1)`
-/

namespace A105760.P5222208967848776847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 2) - A089253 (n + 1)

end

end A105760.P5222208967848776847

namespace A105760

/-- `A073273(n+2)-A089253(n+1)` -/
def P5222208967848776847.Spec : Prop :=
  ∀ n, P5222208967848776847.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P58050255607057450

`A024675(n+2)-A089192(n+2)`
-/

namespace A105760.P58050255607057450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2) - A089192 (n + 2)

end

end A105760.P58050255607057450

namespace A105760

/-- `A024675(n+2)-A089192(n+2)` -/
def P58050255607057450.Spec : Prop :=
  ∀ n, P58050255607057450.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P10494775947682116690

`A024678(n+2)-A177018(n+2)`
-/

namespace A105760.P10494775947682116690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024678 (n + 2) - A177018 (n + 2)

end

end A105760.P10494775947682116690

namespace A105760

/-- `A024678(n+2)-A177018(n+2)` -/
def P10494775947682116690.Spec : Prop :=
  ∀ n, P10494775947682116690.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P4360994386509297295

`A067076(n+3)-2`
-/

namespace A105760.P4360994386509297295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 3) - 2

end

end A105760.P4360994386509297295

namespace A105760

/-- `A067076(n+3)-2` -/
def P4360994386509297295.Spec : Prop :=
  ∀ n, P4360994386509297295.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P6497647185958540269

`A005097(n+3)-3`
-/

namespace A105760.P6497647185958540269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 3) - 3

end

end A105760.P6497647185958540269

namespace A105760

/-- `A005097(n+3)-3` -/
def P6497647185958540269.Spec : Prop :=
  ∀ n, P6497647185958540269.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P17470861165972586713

`A006254(n+3)-4`
-/

namespace A105760.P17470861165972586713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 3) - 4

end

end A105760.P17470861165972586713

namespace A105760

/-- `A006254(n+3)-4` -/
def P17470861165972586713.Spec : Prop :=
  ∀ n, P17470861165972586713.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P188563666929005284

`A098090(n+3)-5`
-/

namespace A105760.P188563666929005284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 3) - 5

end

end A105760.P188563666929005284

namespace A105760

/-- `A098090(n+3)-5` -/
def P188563666929005284.Spec : Prop :=
  ∀ n, P188563666929005284.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P12616692443406375190

`A089253(n+3)-6`
-/

namespace A105760.P12616692443406375190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 3) - 6

end

end A105760.P12616692443406375190

namespace A105760

/-- `A089253(n+3)-6` -/
def P12616692443406375190.Spec : Prop :=
  ∀ n, P12616692443406375190.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P1426347186475669754

`A089192(n+3)-7`
-/

namespace A105760.P1426347186475669754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 3) - 7

end

end A105760.P1426347186475669754

namespace A105760

/-- `A089192(n+3)-7` -/
def P1426347186475669754.Spec : Prop :=
  ∀ n, P1426347186475669754.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P16289885395759362959

`A097069(n+3)-8`
-/

namespace A105760.P16289885395759362959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 3) - 8

end

end A105760.P16289885395759362959

namespace A105760

/-- `A097069(n+3)-8` -/
def P16289885395759362959.Spec : Prop :=
  ∀ n, P16289885395759362959.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P15515978397777828700

`A097338(n+3)-9`
-/

namespace A105760.P15515978397777828700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 3) - 9

end

end A105760.P15515978397777828700

namespace A105760

/-- `A097338(n+3)-9` -/
def P15515978397777828700.Spec : Prop :=
  ∀ n, P15515978397777828700.a n = A105760 (n + 1)

end A105760

/-! ## A105760.P10459554662033680369

`(A000040(n+4)-7)/2`
-/

namespace A105760.P10459554662033680369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 4) - 7 : ℚ) / 2

end

end A105760.P10459554662033680369

namespace A105760

/-- `(A000040(n+4)-7)/2` -/
def P10459554662033680369.Spec : Prop :=
  ∀ n, P10459554662033680369.a n = (A105760 (n + 1) : ℚ)

end A105760

/-! ## A105760.P5695907494665834088

`record[(A006530(2*n+1)-3)%(n+1)]`
-/

namespace A105760.P5695907494665834088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (2 * n + 1) - 3) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105760.P5695907494665834088

namespace A105760

/-- `record[(A006530(2*n+1)-3)%(n+1)]` -/
def P5695907494665834088.Spec : Prop :=
  ∀ n, P5695907494665834088.a n = A105760 (n + 1)

end A105760

/-!
# A105762: Primes in A001644 (the Lucas 3-step numbers).

The programs for A105762, there is no canonical definition to state claims against.
-/

/-! ## A105762.P3912270952973398111

`A001644(A104576(n+1))`
-/

namespace A105762.P3912270952973398111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (A104576 (n + 1)).toNat

end

end A105762.P3912270952973398111

/-! ## A105762.P1241952533114703266

`∩[A001644(n+1), A227885(n+1)]`
-/

namespace A105762.P1241952533114703266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105762.P1241952533114703266

/-! ## A105762.P13229399142240048616

`A306357(A104576(n+1))+A057427(n)`
-/

namespace A105762.P13229399142240048616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306357 (A104576 (n + 1)).toNat + A057427 n

end

end A105762.P13229399142240048616

/-! ## A105762.P11276608849319641262

`p?[a(n-gcd(2, n))+a(n-3)]` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A105762.P11276608849319641262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3] fun n f1 =>
  f1 (n - Nat.gcd 2 n) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A105762.P11276608849319641262

/-! ## A105762.P10014187936436913441

`p?[record[2*a(n-1)-a(n-4)]]` with `a(0)=3, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A105762.P10014187936436913441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 3, 7] fun n f2 =>
  2 * f2 (n - 1) - f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105762.P10014187936436913441

/-!
# A105763: Prime Lucas 4-step numbers, A073817.

The programs for A105763, there is no canonical definition to state claims against.
-/

/-! ## A105763.P13697547892325620275

`A001648(A104577(n+1))`
-/

namespace A105763.P13697547892325620275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (A104577 (n + 1)).toNat

end

end A105763.P13697547892325620275

/-! ## A105763.P5138361657178297549

`A073817(A104577(2*n+1-n))`
-/

namespace A105763.P5138361657178297549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (A104577 (2 * n + 1 - n)).toNat

end

end A105763.P5138361657178297549

/-! ## A105763.P15821301074753485696

`∩[A001648(n+1), A227885(n+1)]`
-/

namespace A105763.P15821301074753485696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105763.P15821301074753485696

/-! ## A105763.P2604560812786095331

`A073817(A104577(n+1)%A077239(n))`
-/

namespace A105763.P2604560812786095331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 (Int.tmod (A104577 (n + 1)) (A077239 n)).toNat

end

end A105763.P2604560812786095331

/-! ## A105763.P15901774233106958415

`or(A000007(n), A073817(A104577(n+1)))`
-/

namespace A105763.P15901774233106958415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A073817 (A104577 (n + 1)).toNat)

end

end A105763.P15901774233106958415

/-!
# A105765: Prime Lucas 5-step numbers, A074048.

The programs for A105765, there is no canonical definition to state claims against.
-/

/-! ## A105765.P1065637117037515454

`A074048(A105764(n+1))`
-/

namespace A105765.P1065637117037515454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (A105764 (n + 1)).toNat

end

end A105765.P1065637117037515454

/-! ## A105765.P10348563590438546660

`A023424(A105764(n+1)-1)`
-/

namespace A105765.P10348563590438546660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 (A105764 (n + 1) - 1).toNat

end

end A105765.P10348563590438546660

/-! ## A105765.P7366156076431255427

`∩[A227885(n+1), A023424(n)]`
-/

namespace A105765.P7366156076431255427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105765.P7366156076431255427

/-! ## A105765.P16120679680966766010

`∩[A074048(n+1), A227885(n+1)]`
-/

namespace A105765.P16120679680966766010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105765.P16120679680966766010

/-!
# A105767: Prime Lucas 6-step numbers, A074584.

The programs for A105767, there is no canonical definition to state claims against.
-/

/-! ## A105767.P4921591675708540729

`A074584(A105766(n+1))`
-/

namespace A105767.P4921591675708540729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074584 (A105766 (n + 1)).toNat

end

end A105767.P4921591675708540729

/-! ## A105767.P10298239272445324259

`∩[A074584(n+1), A227885(n+1)]`
-/

namespace A105767.P10298239272445324259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105767.P10298239272445324259

/-!
# A105768: Prime Lucas 7-step numbers, A104621.

The programs for A105768, there is no canonical definition to state claims against.
-/

/-! ## A105768.P12128062223343352724

`A104621(A104622(n+2))`
-/

namespace A105768.P12128062223343352724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104621 (A104622 (n + 2)).toNat

end

end A105768.P12128062223343352724

/-! ## A105768.P4790226390553833157

`∩[A104621(n+1), A227885(n+1)]`
-/

namespace A105768.P4790226390553833157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105768.P4790226390553833157

/-!
# A105769: a(n) = A105658(n)/k, where k=n if n is odd, else k=n/2.

The programs for A105769, there is no canonical definition to state claims against.
-/

/-! ## A105769.P17113635085544974610

`A105658(n+1)/Δ[A001318(n)]`
-/

namespace A105769.P17113635085544974610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105658 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A105769.P17113635085544974610

/-! ## A105769.P7476430405741305056

`A105658(n+1)/A026741(n+1)`
-/

namespace A105769.P7476430405741305056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105658 (n + 1) : ℚ) / (A026741 (n + 1) : ℚ)

end

end A105769.P7476430405741305056

/-! ## A105769.P2817696740792245182

`A105658(n+1)/A060819(2*(n+1))`
-/

namespace A105769.P2817696740792245182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105658 (n + 1) : ℚ) / (A060819 (2 * (n + 1)) : ℚ)

end

end A105769.P2817696740792245182

/-! ## A105769.P6274928640559432800

`A000265(A105658(n+1)/A000265(n+1))`
-/

namespace A105769.P6274928640559432800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A105658 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ))).toNat

end

end A105769.P6274928640559432800

/-! ## A105769.P10295980551490973339

`A106609(A105658(n+1)/A106609(n+1))`
-/

namespace A105769.P10295980551490973339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.roundAway ((A105658 (n + 1) : ℚ) / (A106609 (n + 1) : ℚ))).toNat

end

end A105769.P10295980551490973339

/-!
# A105770: Expansion of (x^2-x+1)*(4*x^2+x+1) / ((1+x+x^2)*(1-x)^3).

The programs for A105770, the canonical program `A105770.P3209256717439315754` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105770 has offset 0).

The definition of A105770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x^2-3x^3+4x^4)/(1-2x+x^2-x^3+2x^4-x^5))` (program `A105770.P3209256717439315754`, by `A105770.P3209256717439315754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105770.P3209256717439315754

`ogf((1+4x^2-3x^3+4x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105770

/-- `ogf((1+4x^2-3x^3+4x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P3209256717439315754.Spec : Prop :=
  ∀ n, P3209256717439315754.a n = A105770 n

theorem P3209256717439315754.correct : P3209256717439315754.Spec := by
  intro n
  simp only [A105770]

end A105770

/-! ## A105770.P653019696359054755

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=10, a(4)=17`
-/

namespace A105770.P653019696359054755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 10, 17] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A105770.P653019696359054755

namespace A105770

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P653019696359054755.Spec : Prop :=
  ∀ n, P653019696359054755.a n = A105770 n

end A105770

/-! ## A105770.P14369229225297595843

`gcd(3, n+1)+n²`
-/

namespace A105770.P14369229225297595843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1) + n ^ 2

end

end A105770.P14369229225297595843

namespace A105770

/-- `gcd(3, n+1)+n²` -/
def P14369229225297595843.Spec : Prop :=
  ∀ n, (P14369229225297595843.a n : ℤ) = A105770 n

end A105770

/-! ## A105770.P8372217150500121346

`or(1, n%3)+n²`
-/

namespace A105770.P8372217150500121346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n % 3) + n ^ 2

end

end A105770.P8372217150500121346

namespace A105770

/-- `or(1, n%3)+n²` -/
def P8372217150500121346.Spec : Prop :=
  ∀ n, (P8372217150500121346.a n : ℤ) = A105770 n

end A105770

/-! ## A105770.P10698294872810450180

`∑[a(n-3)+6]` with `a(0)=1, a(1)=1, a(2)=5, a(3)=3`
-/

namespace A105770.P10698294872810450180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5, 3] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105770.P10698294872810450180

namespace A105770

/-- `∑[a(n-3)+6]` -/
def P10698294872810450180.Spec : Prop :=
  ∀ n, (P10698294872810450180.a n : ℤ) = A105770 n

end A105770

/-! ## A105770.P6583014557508259780

`∑[(2*n)%6]+(n-1)²`
-/

namespace A105770.P6583014557508259780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1) ^ 2

end

end A105770.P6583014557508259780

namespace A105770

/-- `∑[(2*n)%6]+(n-1)²` -/
def P6583014557508259780.Spec : Prop :=
  ∀ n, P6583014557508259780.a n = A105770 n

end A105770

/-! ## A105770.P13510756985615711276

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=4, a(3)=-2, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A105770.P13510756985615711276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4, -2, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105770.P13510756985615711276

namespace A105770

/-- `∑[∑[floor(a(n-3))]]` -/
def P13510756985615711276.Spec : Prop :=
  ∀ n, P13510756985615711276.a n = A105770 n

end A105770

/-! ## A105770.P5599837622701647098

`(a(n-1)+a(n-2))%4+n²` with `a(0)=1, a(1)=2`
-/

namespace A105770.P5599837622701647098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) % 4 + n ^ 2

end

end A105770.P5599837622701647098

namespace A105770

/-- `(a(n-1)+a(n-2))%4+n²` -/
def P5599837622701647098.Spec : Prop :=
  ∀ n, (P5599837622701647098.a n : ℤ) = A105770 n

end A105770

/-! ## A105770.P7526326053146491377

`n²+2-A131561(n)`
-/

namespace A105770.P7526326053146491377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (2 - A131561 n)

end

end A105770.P7526326053146491377

namespace A105770

/-- `n²+2-A131561(n)` -/
def P7526326053146491377.Spec : Prop :=
  ∀ n, P7526326053146491377.a n = A105770 n

end A105770

/-! ## A105770.P8237900342663710246

`n²+gcd(3, A270710(n))`
-/

namespace A105770.P8237900342663710246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + Int.gcd 3 (A270710 n)

end

end A105770.P8237900342663710246

namespace A105770

/-- `n²+gcd(3, A270710(n))` -/
def P8237900342663710246.Spec : Prop :=
  ∀ n, (P8237900342663710246.a n : ℤ) = A105770 n

end A105770

/-! ## A105770.P12344983343244403583

`or(1, A010872(n))+n²`
-/

namespace A105770.P12344983343244403583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010872 n) + (n ^ 2 : ℤ)

end

end A105770.P12344983343244403583

namespace A105770

/-- `or(1, A010872(n))+n²` -/
def P12344983343244403583.Spec : Prop :=
  ∀ n, P12344983343244403583.a n = A105770 n

end A105770

/-! ## A105770.P16741905092931761225

`or(1, A101000(n))+n²`
-/

namespace A105770.P16741905092931761225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101000 n) + (n ^ 2 : ℤ)

end

end A105770.P16741905092931761225

namespace A105770

/-- `or(1, A101000(n))+n²` -/
def P16741905092931761225.Spec : Prop :=
  ∀ n, P16741905092931761225.a n = A105770 n

end A105770

/-! ## A105770.P11162171015183850773

`or(1, A101825(n))+n²`
-/

namespace A105770.P11162171015183850773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A101825 n) + (n ^ 2 : ℤ)

end

end A105770.P11162171015183850773

namespace A105770

/-- `or(1, A101825(n))+n²` -/
def P11162171015183850773.Spec : Prop :=
  ∀ n, P11162171015183850773.a n = A105770 n

end A105770

/-! ## A105770.P5114238896861651450

`or(1, A177702(n))+n²`
-/

namespace A105770.P5114238896861651450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A177702 n) + (n ^ 2 : ℤ)

end

end A105770.P5114238896861651450

namespace A105770

/-- `or(1, A177702(n))+n²` -/
def P5114238896861651450.Spec : Prop :=
  ∀ n, P5114238896861651450.a n = A105770 n

end A105770

/-! ## A105770.P5283303703143557993

`dr(A318624(n+1))+n²`
-/

namespace A105770.P5283303703143557993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A318624 (n + 1)) + n ^ 2

end

end A105770.P5283303703143557993

namespace A105770

/-- `dr(A318624(n+1))+n²` -/
def P5283303703143557993.Spec : Prop :=
  ∀ n, (P5283303703143557993.a n : ℤ) = A105770 n

end A105770

/-! ## A105770.P17364792663159416854

`4-A144437(n+1)+n²`
-/

namespace A105770.P17364792663159416854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A144437 (n + 1) + (n ^ 2 : ℤ)

end

end A105770.P17364792663159416854

namespace A105770

/-- `4-A144437(n+1)+n²` -/
def P17364792663159416854.Spec : Prop :=
  ∀ n, P17364792663159416854.a n = A105770 n

end A105770

/-! ## A105770.P8111916275949334815

`A059100(n)-A131561(n)`
-/

namespace A105770.P8111916275949334815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n - A131561 n

end

end A105770.P8111916275949334815

namespace A105770

/-- `A059100(n)-A131561(n)` -/
def P8111916275949334815.Spec : Prop :=
  ∀ n, P8111916275949334815.a n = A105770 n

end A105770

/-! ## A105770.P1199241540251575478

`A087475(n)-A144437(n+1)`
-/

namespace A105770.P1199241540251575478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n - A144437 (n + 1)

end

end A105770.P1199241540251575478

namespace A105770

/-- `A087475(n)-A144437(n+1)` -/
def P1199241540251575478.Spec : Prop :=
  ∀ n, P1199241540251575478.a n = A105770 n

end A105770

/-! ## A105770.P15221712521747907611

`A006530(A038500(n+1))+n²`
-/

namespace A105770.P15221712521747907611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A038500 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A105770.P15221712521747907611

namespace A105770

/-- `A006530(A038500(n+1))+n²` -/
def P15221712521747907611.Spec : Prop :=
  ∀ n, P15221712521747907611.a n = A105770 n

end A105770

/-! ## A105770.P11646591309654806220

`A109007(A007947(n+1))+n²`
-/

namespace A105770.P11646591309654806220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 (A007947 (n + 1)).toNat + (n ^ 2 : ℤ)

end

end A105770.P11646591309654806220

namespace A105770

/-- `A109007(A007947(n+1))+n²` -/
def P11646591309654806220.Spec : Prop :=
  ∀ n, P11646591309654806220.a n = A105770 n

end A105770

/-!
# A105771: Slowest increasing sequence which self-describes its succession of odd and even digits.

The programs for A105771, there is no canonical definition to state claims against.
-/

/-! ## A105771.P17256446237901495788

`eq[A029202(n), A102706(n)]`
-/

namespace A105771.P17256446237901495788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029202 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105771.P17256446237901495788

/-! ## A105771.P4362442370879256130

`A305079(A309087(n))+∑[A002865(n)]`
-/

namespace A105771.P4362442370879256130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A309087 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105771.P4362442370879256130

/-! ## A105771.P4603869541841705831

`∑[A220280(A090150(n+1))+A090173(n)]`
-/

namespace A105771.P4603869541841705831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220280 (A090150 (n + 1)).toNat + A090173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105771.P4603869541841705831

/-! ## A105771.P3688284064787241572

`A305079(A309087(n))+∑[A085811(n+3)]`
-/

namespace A105771.P3688284064787241572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A309087 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105771.P3688284064787241572

/-! ## A105771.P17627008839619761456

`eq[A050873(n+1), A242498(A239240(n))]+1`
-/

namespace A105771.P17627008839619761456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 (A239240 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105771.P17627008839619761456

/-!
# A105772: Numbers k such that 7*k + 2 is prime.

The programs for A105772, the canonical program `A105772.P13562742460051906180` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105772 has offset 1).

The definition of A105772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105772.P18020122181207969177

`A024904(n+1)-1`
-/

namespace A105772.P18020122181207969177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024904 (n + 1) - 1

end

end A105772.P18020122181207969177

namespace A105772

/-- `A024904(n+1)-1` -/
def P18020122181207969177.Spec : Prop :=
  ∀ n, P18020122181207969177.a n = A105772 (n + 1)

theorem P18020122181207969177.correct : P18020122181207969177.Spec := by
  intro n
  simp only [A105772, Nat.add_sub_cancel, A105772.P18020122181207969177.a, A105772.P13562742460051906180.a, A024904, A024904.P10212136767260610074.a, A045392, A045392.P2782067895504260616.a, A045383, A045383.P18310772843528433582.f1, A045383.P18310772843528433582.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105772

/-! ## A105772.P13562742460051906180

`round(A045392(n+1)/7)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105772

/-- `round(A045392(n+1)/7)` -/
def P13562742460051906180.Spec : Prop :=
  ∀ n, P13562742460051906180.a n = A105772 (n + 1)

theorem P13562742460051906180.correct : P13562742460051906180.Spec := by
  intro n
  simp only [A105772, Nat.add_sub_cancel]

end A105772

/-! ## A105772.P5088443272591795802

`ceil(p?[a(n-1)+7]/7)-1` with `a(0)=5, a(1)=9`
-/

namespace A105772.P5088443272591795802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 9] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 7⌉ - 1

end

end A105772.P5088443272591795802

namespace A105772

/-- `ceil(p?[a(n-1)+7]/7)-1` -/
def P5088443272591795802.Spec : Prop :=
  ∀ n, P5088443272591795802.a n = A105772 (n + 1)

end A105772

/-! ## A105772.P17919046007465574444

`eq[1, A001222(7*n+2)]`
-/

namespace A105772.P17919046007465574444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105772.P17919046007465574444

namespace A105772

/-- `eq[1, A001222(7*n+2)]` -/
def P17919046007465574444.Spec : Prop :=
  ∀ n, (P17919046007465574444.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P17622480236658014463

`eq[2, A000005(7*n+2)]`
-/

namespace A105772.P17622480236658014463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105772.P17622480236658014463

namespace A105772

/-- `eq[2, A000005(7*n+2)]` -/
def P17622480236658014463.Spec : Prop :=
  ∀ n, (P17622480236658014463.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P8098062923545215087

`lt[A001222(6*n+2+n), 2]`
-/

namespace A105772.P8098062923545215087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 2 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105772.P8098062923545215087

namespace A105772

/-- `lt[A001222(6*n+2+n), 2]` -/
def P8098062923545215087.Spec : Prop :=
  ∀ n, (P8098062923545215087.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P15555727947554018687

`lt[A000005(6*n+n+2), 3]`
-/

namespace A105772.P15555727947554018687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * n + (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105772.P15555727947554018687

namespace A105772

/-- `lt[A000005(6*n+n+2), 3]` -/
def P15555727947554018687.Spec : Prop :=
  ∀ n, (P15555727947554018687.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P6493462328217503912

`lt[4*n, A006530(7*n+2)]`
-/

namespace A105772.P6493462328217503912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105772.P6493462328217503912

namespace A105772

/-- `lt[4*n, A006530(7*n+2)]` -/
def P6493462328217503912.Spec : Prop :=
  ∀ n, (P6493462328217503912.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P15232058945195749261

`lt[2*n+1, A020639(7*n+2)]`
-/

namespace A105772.P15232058945195749261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105772.P15232058945195749261

namespace A105772

/-- `lt[2*n+1, A020639(7*n+2)]` -/
def P15232058945195749261.Spec : Prop :=
  ∀ n, (P15232058945195749261.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P8510601285691283830

`comp[A153351(n+1)]`
-/

namespace A105772.P8510601285691283830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A105772.P8510601285691283830

namespace A105772

/-- `comp[A153351(n+1)]` -/
def P8510601285691283830.Spec : Prop :=
  ∀ n, (P8510601285691283830.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P9552177467705265313

`lt[∏{e}[7*n+2, #+1], 3]`
-/

namespace A105772.P9552177467705265313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A105772.P9552177467705265313

namespace A105772

/-- `lt[∏{e}[7*n+2, #+1], 3]` -/
def P9552177467705265313.Spec : Prop :=
  ∀ n, (P9552177467705265313.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P16408418861889310111

`A023443(A024904(n+1))`
-/

namespace A105772.P16408418861889310111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A024904 (n + 1)).toNat

end

end A105772.P16408418861889310111

namespace A105772

/-- `A023443(A024904(n+1))` -/
def P16408418861889310111.Spec : Prop :=
  ∀ n, P16408418861889310111.a n = A105772 (n + 1)

end A105772

/-! ## A105772.P7788926399952985251

`A196438(A024904(n+1)+1)`
-/

namespace A105772.P7788926399952985251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196438 (A024904 (n + 1) + 1).toNat

end

end A105772.P7788926399952985251

namespace A105772

/-- `A196438(A024904(n+1)+1)` -/
def P7788926399952985251.Spec : Prop :=
  ∀ n, P7788926399952985251.a n = A105772 (n + 1)

end A105772

/-! ## A105772.P13062216457217692922

`eq[1, A033273(A016993(n)+1)]`
-/

namespace A105772.P13062216457217692922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A016993 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105772.P13062216457217692922

namespace A105772

/-- `eq[1, A033273(A016993(n)+1)]` -/
def P13062216457217692922.Spec : Prop :=
  ∀ n, (P13062216457217692922.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P8100412084711021028

`eq[1, A317141(A016993(n)+1)]`
-/

namespace A105772.P8100412084711021028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A016993 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105772.P8100412084711021028

namespace A105772

/-- `eq[1, A317141(A016993(n)+1)]` -/
def P8100412084711021028.Spec : Prop :=
  ∀ n, (P8100412084711021028.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P2952242974926616625

`eq[A239614(n+1), A276682(n+1)]`
-/

namespace A105772.P2952242974926616625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105772.P2952242974926616625

namespace A105772

/-- `eq[A239614(n+1), A276682(n+1)]` -/
def P2952242974926616625.Spec : Prop :=
  ∀ n, (P2952242974926616625.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P10103926386044251347

`lt[2*n+1, A014963(7*n+2)]`
-/

namespace A105772.P10103926386044251347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105772.P10103926386044251347

namespace A105772

/-- `lt[2*n+1, A014963(7*n+2)]` -/
def P10103926386044251347.Spec : Prop :=
  ∀ n, (P10103926386044251347.a n : ℤ) = A105772 (n + 1)

end A105772

/-! ## A105772.P17912736194890063007

`A132270(A045392(n+1))`
-/

namespace A105772.P17912736194890063007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A045392 (n + 1)).toNat

end

end A105772.P17912736194890063007

namespace A105772

/-- `A132270(A045392(n+1))` -/
def P17912736194890063007.Spec : Prop :=
  ∀ n, P17912736194890063007.a n = A105772 (n + 1)

end A105772

/-! ## A105772.P17364340445466591424

`A132270(A045383(n+2))`
-/

namespace A105772.P17364340445466591424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (A045383 (n + 2)).toNat

end

end A105772.P17364340445466591424

namespace A105772

/-- `A132270(A045383(n+2))` -/
def P17364340445466591424.Spec : Prop :=
  ∀ n, P17364340445466591424.a n = A105772 (n + 1)

end A105772

/-! ## A105772.P4327493185812014777

`record[n-A191558(A017005(n))]`
-/

namespace A105772.P4327493185812014777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A191558 (A017005 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105772.P4327493185812014777

namespace A105772

/-- `record[n-A191558(A017005(n))]` -/
def P4327493185812014777.Spec : Prop :=
  ∀ n, P4327493185812014777.a n = A105772 (n + 1)

end A105772

/-!
# A105773: Numbers n such that 11*n + 97 is prime.

The programs for A105773, the canonical program `A105773.P5284159350981166347` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105773 has offset 1).

The definition of A105773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105773.P5284159350981166347

`A108727(n+3)-6`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A105773

/-- `A108727(n+3)-6` -/
def P5284159350981166347.Spec : Prop :=
  ∀ n, P5284159350981166347.a n = A105773 (n + 1)

theorem P5284159350981166347.correct : P5284159350981166347.Spec := by
  intro n
  simp only [A105773, Nat.add_sub_cancel]

end A105773

/-! ## A105773.P13844115073168234676

`A107994(n+3)-9`
-/

namespace A105773.P13844115073168234676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107994 (n + 3) - 9

end

end A105773.P13844115073168234676

namespace A105773

/-- `A107994(n+3)-9` -/
def P13844115073168234676.Spec : Prop :=
  ∀ n, P13844115073168234676.a n = A105773 (n + 1)

theorem P13844115073168234676.correct : P13844115073168234676.Spec := by
  intro n
  simp only [A105773, Nat.add_sub_cancel, A105773.P13844115073168234676.a, A105773.P5284159350981166347.a, A107994, A107994.P14297671034442261939.a, A108727, A108727.P5195277566401287610.a, A141856, A141856.P2432058376377571299.f1, A141856.P2432058376377571299.f2, A141856.P2432058376377571299.a, A142061, A142061.P17231929898932925675.f1, A142061.P17231929898932925675.a, A142067, A142067.P2316696778376834968.f1, A142067.P2316696778376834968.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105773

/-! ## A105773.P12785928594073490620

`A107305(n+3)-10`
-/

namespace A105773.P12785928594073490620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107305 (n + 3) - 10

end

end A105773.P12785928594073490620

namespace A105773

/-- `A107305(n+3)-10` -/
def P12785928594073490620.Spec : Prop :=
  ∀ n, P12785928594073490620.a n = A105773 (n + 1)

end A105773

/-! ## A105773.P2668600752954410510

`∑[Δ[A107305(n+2)]%A107305(2*n+1)]`
-/

namespace A105773.P2668600752954410510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107305 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A107305 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105773.P2668600752954410510

namespace A105773

/-- `∑[Δ[A107305(n+2)]%A107305(2*n+1)]` -/
def P2668600752954410510.Spec : Prop :=
  ∀ n, P2668600752954410510.a n = A105773 (n + 1)

end A105773

/-! ## A105773.P10526144843365778219

`eq[2, A000005(A017497(n+8))]`
-/

namespace A105773.P10526144843365778219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017497 (n + 8)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105773.P10526144843365778219

namespace A105773

/-- `eq[2, A000005(A017497(n+8))]` -/
def P10526144843365778219.Spec : Prop :=
  ∀ n, (P10526144843365778219.a n : ℤ) = A105773 (n + 1)

end A105773

/-! ## A105773.P10796877793614419301

`eq[A000010(A017497(n+8)), A017485(n+8)]`
-/

namespace A105773.P10796877793614419301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017497 (n + 8)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105773.P10796877793614419301

namespace A105773

/-- `eq[A000010(A017497(n+8)), A017485(n+8)]` -/
def P10796877793614419301.Spec : Prop :=
  ∀ n, (P10796877793614419301.a n : ℤ) = A105773 (n + 1)

end A105773

/-!
# A105774: A "fractal" transform of the Fibonacci numbers: a(1)=1; then if F(n) < k <= F(n+1), a(k) = F(n+1) - a(k - F(n)) where F(n) = A000045(n).

The programs for A105774, the canonical program `A105774.P16927579740594688494` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105774 has offset 1).

The definition of A105774 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A105774.P16927579740594688494

`A000045(2+A072649(n))-a(n-A000045(1+A072649(n)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A105774

/-- `A000045(2+A072649(n))-a(n-A000045(1+A072649(n)))` -/
def P16927579740594688494.Spec : Prop :=
  ∀ n, P16927579740594688494.a n = A105774 (n + 1)

theorem P16927579740594688494.correct : P16927579740594688494.Spec := by
  intro n
  simp only [A105774, Nat.add_sub_cancel]

end A105774

/-! ## A105774.P11247532835540923590

`A343647(n)+A095111(n)`
-/

namespace A105774.P11247532835540923590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n + A095111 n

end

end A105774.P11247532835540923590

namespace A105774

/-- `A343647(n)+A095111(n)` -/
def P11247532835540923590.Spec : Prop :=
  ∀ n, P11247532835540923590.a n = A105774 (n + 1)

theorem P11247532835540923590.correct : P11247532835540923590.Spec := by
  intro n
  simp only [A105774, Nat.add_sub_cancel, A105774.P11247532835540923590.a, A105774.P16927579740594688494.a, A000045, A000045.P11838749114346432762.a, A072649, A072649.P9617326913925617377.a, A095111, A095111.P18387562347158701288.a, A343647, A343647.P9354644187600228966.a, A095076, A095076.P3589875723574390605.a, A108852, A108852.P14747039251510576692.a, A003714, A003714.P565032106299634425.a, A010060, A010060.P3080921269106500717.a, A022341, A022341.P2847779761458071812.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105774

/-! ## A105774.P17627005138211863588

`A105669(A120613(n+2))`
-/

namespace A105774.P17627005138211863588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105669 (A120613 (n + 2)).toNat

end

end A105774.P17627005138211863588

namespace A105774

/-- `A105669(A120613(n+2))` -/
def P17627005138211863588.Spec : Prop :=
  ∀ n, P17627005138211863588.a n = A105774 (n + 1)

end A105774

/-! ## A105774.P8451322444232549704

`A105669(n+2-A001468(n+2))`
-/

namespace A105774.P8451322444232549704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105669 ((n + 2 : ℤ) - A001468 (n + 2)).toNat

end

end A105774.P8451322444232549704

namespace A105774

/-- `A105669(n+2-A001468(n+2))` -/
def P8451322444232549704.Spec : Prop :=
  ∀ n, P8451322444232549704.a n = A105774 (n + 1)

end A105774

/-! ## A105774.P9346372884805905663

`A343647(n)+A059841(A288625(n+1))`
-/

namespace A105774.P9346372884805905663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n + A059841 (A288625 (n + 1)).toNat

end

end A105774.P9346372884805905663

namespace A105774

/-- `A343647(n)+A059841(A288625(n+1))` -/
def P9346372884805905663.Spec : Prop :=
  ∀ n, P9346372884805905663.a n = A105774 (n + 1)

end A105774

/-! ## A105774.P3841054360212860469

`A343647(n)+A010059(A048679(n))`
-/

namespace A105774.P3841054360212860469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n + A010059 (A048679 n).toNat

end

end A105774.P3841054360212860469

namespace A105774

/-- `A343647(n)+A010059(A048679(n))` -/
def P3841054360212860469.Spec : Prop :=
  ∀ n, P3841054360212860469.a n = A105774 (n + 1)

end A105774

/-! ## A105774.P11642371961022342801

`A343647(n)+A010059(A003714(n))`
-/

namespace A105774.P11642371961022342801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n + A010059 (A003714 n).toNat

end

end A105774.P11642371961022342801

namespace A105774

/-- `A343647(n)+A010059(A003714(n))` -/
def P11642371961022342801.Spec : Prop :=
  ∀ n, P11642371961022342801.a n = A105774 (n + 1)

theorem P11642371961022342801.correct : P11642371961022342801.Spec := by
  intro n
  simp only [A105774, Nat.add_sub_cancel, A105774.P11642371961022342801.a, A105774.P16927579740594688494.a, A000045, A000045.P11838749114346432762.a, A003714, A003714.P565032106299634425.a, A010059, A010059.P6338678923093357896.a, A072649, A072649.P9617326913925617377.a, A343647, A343647.P9354644187600228966.a, A003849, A003849.P15070805603138295355.a, A010060, A010060.P3080921269106500717.a, A095111, A095111.P18387562347158701288.a, A108852, A108852.P14747039251510576692.a, A193564, A193564.P10859496068576138660.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A022341, A022341.P2847779761458071812.a, A026242, A026242.P14627616473925988182.a, A095076, A095076.P3589875723574390605.a, A002251, A002251.P8899938186717577679.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105774

/-! ## A105774.P9747636249488283301

`A343647(n)+A010059(A022340(n)/2)`
-/

namespace A105774.P9747636249488283301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n + A010059 (SequenceMachineLib.roundAway ((A022340 n : ℚ) / 2)).toNat

end

end A105774.P9747636249488283301

namespace A105774

/-- `A343647(n)+A010059(A022340(n)/2)` -/
def P9747636249488283301.Spec : Prop :=
  ∀ n, P9747636249488283301.a n = A105774 (n + 1)

end A105774

/-! ## A105774.P4056871321386750143

`A343647(n)+A010060(A118113(n))`
-/

namespace A105774.P4056871321386750143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n + A010060 (A118113 n).toNat

end

end A105774.P4056871321386750143

namespace A105774

/-- `A343647(n)+A010060(A118113(n))` -/
def P4056871321386750143.Spec : Prop :=
  ∀ n, P4056871321386750143.a n = A105774 (n + 1)

end A105774

/-! ## A105774.P900279560492261383

`A343647(n)+A059841(A227351(n))`
-/

namespace A105774.P900279560492261383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n + A059841 (A227351 n).toNat

end

end A105774.P900279560492261383

namespace A105774

/-- `A343647(n)+A059841(A227351(n))` -/
def P900279560492261383.Spec : Prop :=
  ∀ n, P900279560492261383.a n = A105774 (n + 1)

end A105774

/-! ## A105774.P11563703179694155324

`A343647(n)+A010059(A022340(n))`
-/

namespace A105774.P11563703179694155324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n + A010059 (A022340 n).toNat

end

end A105774.P11563703179694155324

namespace A105774

/-- `A343647(n)+A010059(A022340(n))` -/
def P11563703179694155324.Spec : Prop :=
  ∀ n, P11563703179694155324.a n = A105774 (n + 1)

end A105774

/-! ## A105774.P15706447144380651120

`A343647(n)+A010060(A022341(n))`
-/

namespace A105774.P15706447144380651120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343647 n + A010060 (A022341 n).toNat

end

end A105774.P15706447144380651120

namespace A105774

/-- `A343647(n)+A010060(A022341(n))` -/
def P15706447144380651120.Spec : Prop :=
  ∀ n, P15706447144380651120.a n = A105774 (n + 1)

end A105774

/-! ## A105774.P8462669403889101519

`A382112(A005206(n+1))`
-/

namespace A105774.P8462669403889101519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382112 (A005206 (n + 1)).toNat

end

end A105774.P8462669403889101519

namespace A105774

/-- `A382112(A005206(n+1))` -/
def P8462669403889101519.Spec : Prop :=
  ∀ n, P8462669403889101519.a n = A105774 (n + 1)

end A105774

/-! ## A105774.P14356961152104765831

`A382112(A019446(n+2)-1)`
-/

namespace A105774.P14356961152104765831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382112 (A019446 (n + 2) - 1).toNat

end

end A105774.P14356961152104765831

namespace A105774

/-- `A382112(A019446(n+2)-1)` -/
def P14356961152104765831.Spec : Prop :=
  ∀ n, P14356961152104765831.a n = A105774 (n + 1)

end A105774

/-!
# A105776: Self-describing integers with the rule: if the digit d, part of the integer i, is odd then there are d odd digits in this integer; if the digit d is even there are d even digits.

The programs for A105776, there is no canonical definition to state claims against.
-/

/-! ## A105776.P574576925075495663

`record[gcd(A008574(n), A139337(2*n))]`
-/

namespace A105776.P574576925075495663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008574 n) (A139337 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105776.P574576925075495663

/-! ## A105776.P2833676627061524054

`eq[n, A139337(A065031(n))]`
-/

namespace A105776.P2833676627061524054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A065031 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105776.P2833676627061524054

/-! ## A105776.P1854685232194381658

`filter[A108571(n+1), A285083(#)]`
-/

namespace A105776.P1854685232194381658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285083 (f1 j).toNat = 1) n)

end

end A105776.P1854685232194381658

/-!
# A105778: Trajectory of 1 under the morphism 1->{1,2,1,2,1}, 2->{4,3,4,3,4}, 3->{2,1,1,1,2}, 4->{3,4,3,4,3}.

The programs for A105778, there is no canonical definition to state claims against.
-/

/-! ## A105778.P13704686133175637317

`gcd(24, A271751(∑[a(n-1)+36]))` with `a(0)=1, a(1)=1`
-/

namespace A105778.P13704686133175637317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 24 (A271751 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A105778.P13704686133175637317

/-! ## A105778.P15519960453271046116

`A203571(A282850(n)+1)`
-/

namespace A105778.P15519960453271046116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203571 (A282850 n + 1).toNat

end

end A105778.P15519960453271046116

/-! ## A105778.P8777258114264489745

`A271751(A282850(n)+1)`
-/

namespace A105778.P8777258114264489745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271751 (A282850 n + 1).toNat

end

end A105778.P8777258114264489745

/-! ## A105778.P15298880382642741375

`A203571(A001844(3*n+4)-n)`
-/

namespace A105778.P15298880382642741375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203571 (A001844 (3 * n + 4) - (n : ℤ)).toNat

end

end A105778.P15298880382642741375

/-! ## A105778.P17946555112076019442

`A271751(A069125(2*(n+2))+2)`
-/

namespace A105778.P17946555112076019442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271751 (A069125 (2 * (n + 2)) + 2).toNat

end

end A105778.P17946555112076019442

/-!
# A105779: Numbers n such that n + (sum of prime factors of n) = next prime after n.

The programs for A105779, there is no canonical definition to state claims against.
-/

/-! ## A105779.P2710911219309114947

`∩[A105651(n+1), A269804(n+1)]`
-/

namespace A105779.P2710911219309114947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105779.P2710911219309114947

/-! ## A105779.P12280300407988190831

`∩[A105651(n+1), A361181(n+1)]`
-/

namespace A105779.P12280300407988190831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105779.P12280300407988190831

/-! ## A105779.P646382484243777876

`∩[2*A356940(n+1), A105651(n+1)]`
-/

namespace A105779.P646382484243777876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105779.P646382484243777876

/-!
# A105780: Coefficients of the A-Rogers mod 14 identity.

The programs for A105780, there is no canonical definition to state claims against.
-/

/-! ## A105780.P16541796218126281380

`A003114(2*n+1)-A001878(A185037(n+3))`
-/

namespace A105780.P16541796218126281380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (2 * n + 1) - A001878 (A185037 (n + 3)).toNat

end

end A105780.P16541796218126281380

/-! ## A105780.P12597965232506384167

`A003114(2*n+1)-A185284(A008484(n))`
-/

namespace A105780.P12597965232506384167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (2 * n + 1) - A185284 (A008484 n).toNat

end

end A105780.P12597965232506384167

/-! ## A105780.P10722244086380896376

`A003114(record[A379288(n+1)])`
-/

namespace A105780.P10722244086380896376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105780.P10722244086380896376

/-! ## A105780.P17470042446198731060

`A003114(record[A360005(n+2)-1])`
-/

namespace A105780.P17470042446198731060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360005 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105780.P17470042446198731060

/-!
# A105781: Coefficients of the B-Rogers mod 14 identity.

The programs for A105781, there is no canonical definition to state claims against.
-/

/-! ## A105781.P10037869779136055258

`A003056(A225197(n))`
-/

namespace A105781.P10037869779136055258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A225197 n).toNat

end

end A105781.P10037869779136055258

/-! ## A105781.P13961304127489958684

`A002024(A225197(n)+1)-1`
-/

namespace A105781.P13961304127489958684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A225197 n + 1).toNat - 1

end

end A105781.P13961304127489958684

/-! ## A105781.P314042895298334598

`A118759(A027193(n))+A060028(n)`
-/

namespace A105781.P314042895298334598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A027193 n).toNat + A060028 n

end

end A105781.P314042895298334598

/-! ## A105781.P10073203584122069076

`A111654(A151897(n)+A000219(n))`
-/

namespace A105781.P10073203584122069076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A151897 n + A000219 n).toNat

end

end A105781.P10073203584122069076

/-! ## A105781.P10693840354465485167

`A318274(A225197(n)+A117274(n))`
-/

namespace A105781.P10693840354465485167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (A225197 n + A117274 n).toNat

end

end A105781.P10693840354465485167

/-!
# A105782: Coefficients of the C-Rogers mod 14 identity.

The programs for A105782, there is no canonical definition to state claims against.
-/

/-! ## A105782.P6682694709703378998

`A035956(n+1)-A118759(Δ[A027336(n)])`
-/

namespace A105782.P6682694709703378998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035956 (n + 1) - A118759 (f1 (n + 1) - f1 n).toNat

end

end A105782.P6682694709703378998

/-! ## A105782.P18052360419157639533

`A185284(2*n+1)+A115671(n)`
-/

namespace A105782.P18052360419157639533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A115671 n

end

end A105782.P18052360419157639533

/-! ## A105782.P781027458989657841

`A178798(A008279(n))+A115671(n)`
-/

namespace A105782.P781027458989657841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A008279 n).toNat + A115671 n

end

end A105782.P781027458989657841

/-! ## A105782.P8391380493690456133

`A144600(A124753(n))+A115671(n)`
-/

namespace A105782.P8391380493690456133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144600 (A124753 n).toNat + A115671 n

end

end A105782.P8391380493690456133

/-!
# A105783: Number of terms among the first n primes that are divisors of the sum of the first n primes.

The programs for A105783, the canonical program `A105783.P9077009907461393133` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105783 has offset 1).

The definition of A105783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105783.P9077009907461393133

`∑{e}[A132995(n+1), #]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A105783

/-- `∑{e}[A132995(n+1), #]` -/
def P9077009907461393133.Spec : Prop :=
  ∀ n, (P9077009907461393133.a n : ℤ) = A105783 (n + 1)

theorem P9077009907461393133.correct : P9077009907461393133.Spec := by
  intro n
  simp only [A105783, Nat.add_sub_cancel]

end A105783

/-! ## A105783.P6908102213571541005

`∑{p}[A132995(n+1), A010051(#)]`
-/

namespace A105783.P6908102213571541005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A105783.P6908102213571541005

namespace A105783

/-- `∑{p}[A132995(n+1), A010051(#)]` -/
def P6908102213571541005.Spec : Prop :=
  ∀ n, P6908102213571541005.a n = A105783 (n + 1)

end A105783

/-! ## A105783.P8654407999936651055

`∑{p}[A132995(n+1), A166486(#)]`
-/

namespace A105783.P8654407999936651055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A166486 p

end

end A105783.P8654407999936651055

namespace A105783

/-- `∑{p}[A132995(n+1), A166486(#)]` -/
def P8654407999936651055.Spec : Prop :=
  ∀ n, P8654407999936651055.a n = A105783 (n + 1)

end A105783

/-! ## A105783.P11771458146413520160

`∑{p}[A132995(n+1), A309892(#)]`
-/

namespace A105783.P11771458146413520160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A309892 p

end

end A105783.P11771458146413520160

namespace A105783

/-- `∑{p}[A132995(n+1), A309892(#)]` -/
def P11771458146413520160.Spec : Prop :=
  ∀ n, P11771458146413520160.a n = A105783 (n + 1)

end A105783

/-! ## A105783.P6446377455826237636

`A037916(∏{p}[A132995(n+1), A037916(#)+1])`
-/

namespace A105783.P6446377455826237636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A037916 p + 1)).toNat

end

end A105783.P6446377455826237636

namespace A105783

/-- `A037916(∏{p}[A132995(n+1), A037916(#)+1])` -/
def P6446377455826237636.Spec : Prop :=
  ∀ n, P6446377455826237636.a n = A105783 (n + 1)

end A105783

/-! ## A105783.P13678177578702144994

`A001221(A132995(n+1))`
-/

namespace A105783.P13678177578702144994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A132995 (n + 1)).toNat

end

end A105783.P13678177578702144994

namespace A105783

/-- `A001221(A132995(n+1))` -/
def P13678177578702144994.Spec : Prop :=
  ∀ n, P13678177578702144994.a n = A105783 (n + 1)

end A105783

/-! ## A105783.P14353701406281261197

`A001222(A132995(n+1))%A089894(n)`
-/

namespace A105783.P14353701406281261197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A132995 (n + 1)).toNat) (A089894 n)

end

end A105783.P14353701406281261197

namespace A105783

/-- `A001222(A132995(n+1))%A089894(n)` -/
def P14353701406281261197.Spec : Prop :=
  ∀ n, P14353701406281261197.a n = A105783 (n + 1)

end A105783

/-! ## A105783.P1623989736463468286

`A001221(A007504(n+1)/A121755(n+1))`
-/

namespace A105783.P1623989736463468286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A007504 (n + 1) : ℚ) / (A121755 (n + 1) : ℚ))).toNat

end

end A105783.P1623989736463468286

namespace A105783

/-- `A001221(A007504(n+1)/A121755(n+1))` -/
def P1623989736463468286.Spec : Prop :=
  ∀ n, P1623989736463468286.a n = A105783 (n + 1)

end A105783

/-! ## A105783.P3820537878655164096

`A001222(A007504(n+1)/A121755(n+1))`
-/

namespace A105783.P3820537878655164096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A007504 (n + 1) : ℚ) / (A121755 (n + 1) : ℚ))).toNat

end

end A105783.P3820537878655164096

namespace A105783

/-- `A001222(A007504(n+1)/A121755(n+1))` -/
def P3820537878655164096.Spec : Prop :=
  ∀ n, P3820537878655164096.a n = A105783 (n + 1)

end A105783

/-! ## A105783.P3980543668882295571

`A001222(∑[A000040(n+1)]/A121755(n+1))`
-/

namespace A105783.P3980543668882295571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A121755 (n + 1) : ℚ))).toNat

end

end A105783.P3980543668882295571

namespace A105783

/-- `A001222(∑[A000040(n+1)]/A121755(n+1))` -/
def P3980543668882295571.Spec : Prop :=
  ∀ n, P3980543668882295571.a n = A105783 (n + 1)

end A105783

/-!
# A105784: Number of different forests of unrooted trees, without isolated vertices, on n labeled nodes.

The programs for A105784, there is no canonical definition to state claims against.
-/

/-! ## A105784.P18146360317046018845

`A004525(xor(A001316(n), A109253(n)))`
-/

namespace A105784.P18146360317046018845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor (A001316 n) (A109253 n)).toNat

end

end A105784.P18146360317046018845

/-! ## A105784.P8495281885013452826

`xor(A004525(A109253(n)), A317239(n))`
-/

namespace A105784.P8495281885013452826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004525 (A109253 n).toNat) (A317239 n)

end

end A105784.P8495281885013452826

/-!
# A105785: Number of different forests of rooted trees, without isolated vertices, on n labeled nodes.

The programs for A105785, there is no canonical definition to state claims against.
-/

/-! ## A105785.P12157805963946778039

`A219034(∑[n])`
-/

namespace A105785.P12157805963946778039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105785.P12157805963946778039

/-! ## A105785.P10803729111698356658

`A219034(A000217(n))*A304042(n)`
-/

namespace A105785.P10803729111698356658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219034 (A000217 n).toNat * A304042 n

end

end A105785.P10803729111698356658

/-! ## A105785.P5431232961781957551

`A219034(A000217(n))^A178334(n)`
-/

namespace A105785.P5431232961781957551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219034 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A105785.P5431232961781957551

/-! ## A105785.P10398923732642387651

`lcm(A028310(n), A219034(A000217(n)))`
-/

namespace A105785.P10398923732642387651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A219034 (A000217 n).toNat)

end

end A105785.P10398923732642387651

/-! ## A105785.P7510551048889129637

`log2(A010694(2*n))*A219034(A000217(n))`
-/

namespace A105785.P7510551048889129637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A010694 (2 * n) : ℝ) * (A219034 (A000217 n).toNat : ℝ)

end

end A105785.P7510551048889129637

/-! ## A105785.P14768973053927137943

`A219034(A000217(n))+char[A233016(n+1)]`
-/

namespace A105785.P14768973053927137943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233016 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219034 (A000217 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105785.P14768973053927137943

/-! ## A105785.P13794693848029679738

`A219034(A000217(n))+char[A233017(n+1)]`
-/

namespace A105785.P13794693848029679738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233017 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219034 (A000217 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105785.P13794693848029679738

/-! ## A105785.P11631680161770340837

`A219034(A000217(n))+char[A233023(n+1)]`
-/

namespace A105785.P11631680161770340837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233023 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219034 (A000217 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A105785.P11631680161770340837

/-! ## A105785.P6076590282451931357

`A219034(A000217(n))+A004530(A155212(n))`
-/

namespace A105785.P6076590282451931357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219034 (A000217 n).toNat + A004530 (A155212 n).toNat

end

end A105785.P6076590282451931357

/-! ## A105785.P17048425326187148615

`A219034(A000217(n))+A004530(A167499(n))`
-/

namespace A105785.P17048425326187148615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219034 (A000217 n).toNat + A004530 (A167499 n).toNat

end

end A105785.P17048425326187148615

/-!
# A105786: Triangle of the numbers of different forests of m unrooted trees of smallest order 2, i.e., without isolated vertices, on N labeled nodes.

The programs for A105786, there is no canonical definition to state claims against.
-/

/-! ## A105786.P9072088462009302898

`A105819(n+1)/∑[A265333(A068912(n))]`
-/

namespace A105786.P9072088462009302898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265333 (A068912 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105819 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A105786.P9072088462009302898

/-! ## A105786.P2491093713096400216

`A105819(n+1)/A001511(A106241(n+1))`
-/

namespace A105786.P2491093713096400216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105819 (n + 1) : ℚ) / (A001511 (A106241 (n + 1)).toNat : ℚ)

end

end A105786.P2491093713096400216

/-! ## A105786.P4317132975186983440

`A105819(A077168(n))/A026405(n+4)`
-/

namespace A105786.P4317132975186983440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105819 (A077168 n).toNat : ℚ) / (A026405 (n + 4) : ℚ)

end

end A105786.P4317132975186983440

/-! ## A105786.P1394891599134198506

`A105819(n+1)/A213251(A026906(n+1))`
-/

namespace A105786.P1394891599134198506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105819 (n + 1) : ℚ) / (A213251 (A026906 (n + 1)).toNat : ℚ)

end

end A105786.P1394891599134198506

/-!
# A105787: a(1) = 1; a(m) = maximum numerator possible with a continued fraction [b(1);b(2),b(3),...b(m-1)], where (b(1),b(2),b(3),...b(m-1)) is a permutation of (a(1),a(2),a(3),...a(m-1)).

The programs for A105787, there is no canonical definition to state claims against.
-/

/-! ## A105787.P9443360836938969265

`A110497(n+2)`
-/

namespace A105787.P9443360836938969265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110497 (n + 2)

end

end A105787.P9443360836938969265

/-! ## A105787.P10740605917853360808

`A376745(a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A105787.P10740605917853360808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A376745 (a (n - 1) ^ 2).toNat

end

end A105787.P10740605917853360808

/-!
# A105788: a(1) = 1; a(m) = minimum numerator possible with a continued fraction [b(1);b(2),b(3),...b(m-1)], where (b(1),b(2),b(3),...b(m-1)) is a permutation of (a(1),a(2),a(3),...a(m-1)).

The programs for A105788, there is no canonical definition to state claims against.
-/

/-! ## A105788.P14438239950502364724

`∏{p}[((n-a(n-3))²+n)²+1, #-1]` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A105788.P14438239950502364724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9] fun n f1 =>
  (((n : ℤ) - f1 (n - 3)) ^ 2 + (n : ℤ)) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A105788.P14438239950502364724

/-! ## A105788.P11494318039633406778

`∏[Δ[A018253(n+2)]]`
-/

namespace A105788.P11494318039633406778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018253 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A105788.P11494318039633406778

/-!
# A105790: Number of bisections to an inscribed triangle to approximate Pi (A000796) to n decimal digits of accuracy.

The programs for A105790, there is no canonical definition to state claims against.
-/

/-! ## A105790.P6381173007093780287

`A331349(A323243(n+1))+A007067(n)`
-/

namespace A105790.P6381173007093780287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331349 (A323243 (n + 1)).toNat + A007067 n

end

end A105790.P6381173007093780287

/-! ## A105790.P1193754923972508203

`A188009(A257414(n+1))+A000201(n+1)`
-/

namespace A105790.P1193754923972508203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (A257414 (n + 1)).toNat + A000201 (n + 1)

end

end A105790.P1193754923972508203

/-!
# A105791: Trajectory of 1 under the morphism 1->{1, 2, 4, 2, 1}, 2->{4, 3, 1, 3, 4}, 3->{2, 1, 3, 1, 2}, 4->{3, 4, 2, 4, 3}.

The programs for A105791, there is no canonical definition to state claims against.
-/

/-! ## A105791.P10054629814406352771

`A316340(A156552(n+1)+A001605(2*(n+2)))`
-/

namespace A105791.P10054629814406352771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316340 (A156552 (n + 1) + A001605 (2 * (n + 2))).toNat

end

end A105791.P10054629814406352771

/-!
# A105792: Largest prime <= numbers congruent (2,4) mod 6 (duplicates removed).

The programs for A105792, there is no canonical definition to state claims against.
-/

/-! ## A105792.P17587615496953332521

`record[p?[A072026(n+1)]]`
-/

namespace A105792.P17587615496953332521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072026 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105792.P17587615496953332521

/-! ## A105792.P10201959523787515974

`record[p?[A263824(n)-2]]`
-/

namespace A105792.P10201959523787515974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263824 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105792.P10201959523787515974

/-! ## A105792.P986793362292952434

`p?[comp[A001359(n+2)]]`
-/

namespace A105792.P986793362292952434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A105792.P986793362292952434

/-! ## A105792.P9648215413511847090

`record[A210957(3*n+2)]`
-/

namespace A105792.P9648215413511847090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105792.P9648215413511847090

/-! ## A105792.P16090221165294415129

`A105399(n%a(n-1))` with `a(0)=2`
-/

namespace A105792.P16090221165294415129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A105399 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A105792.P16090221165294415129

/-! ## A105792.P14875874393232838960

`p?[comp[A053176(n+1)-2]]`
-/

namespace A105792.P14875874393232838960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A105792.P14875874393232838960

/-! ## A105792.P15302523292757253143

`p?[comp[A001097(2*(n+1))]]`
-/

namespace A105792.P15302523292757253143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A105792.P15302523292757253143

/-! ## A105792.P2925874273966128994

`p?[gcd(n, A076973(n+1)²)]`
-/

namespace A105792.P2925874273966128994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A076973 (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A105792.P2925874273966128994

/-! ## A105792.P4079761179085377655

`p?[A292438(n+1)+n-2]`
-/

namespace A105792.P4079761179085377655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (n + 1) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105792.P4079761179085377655

/-! ## A105792.P5806557783078654961

`p?[lcm(xor(1, -n), A135681(n+1))]`
-/

namespace A105792.P5806557783078654961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor 1 (-(n : ℤ))) (A135681 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A105792.P5806557783078654961

/-!
# A105793: Expansion of e.g.f. (1 + y)^(1 + x).

The programs for A105793, the canonical program `A105793.P5024239462731972011` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105793 has offset 0).

The definition of A105793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105793.P15038139298840857822

`(and(2, comp[∑[n]]+n)-1)*A094645(n)`
-/

namespace A105793.P15038139298840857822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A094645 n

end

end A105793.P15038139298840857822

namespace A105793

/-- `(and(2, comp[∑[n]]+n)-1)*A094645(n)` -/
def P15038139298840857822.Spec : Prop :=
  ∀ n, P15038139298840857822.a n = A105793 n

end A105793

/-! ## A105793.P5024239462731972011

`A094645(n)*A097807(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105793

/-- `A094645(n)*A097807(n)` -/
def P5024239462731972011.Spec : Prop :=
  ∀ n, P5024239462731972011.a n = A105793 n

theorem P5024239462731972011.correct : P5024239462731972011.Spec := by
  intro n
  simp only [A105793]

end A105793

/-! ## A105793.P14613635547724836181

`A033999(A025581(n))*A094645(n)`
-/

namespace A105793.P14613635547724836181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A094645 n

end

end A105793.P14613635547724836181

namespace A105793

/-- `A033999(A025581(n))*A094645(n)` -/
def P14613635547724836181.Spec : Prop :=
  ∀ n, P14613635547724836181.a n = A105793 n

end A105793

/-! ## A105793.P2908353131055627407

`A009531(A099375(n))*A094645(n)`
-/

namespace A105793.P2908353131055627407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A094645 n

end

end A105793.P2908353131055627407

namespace A105793

/-- `A009531(A099375(n))*A094645(n)` -/
def P2908353131055627407.Spec : Prop :=
  ∀ n, P2908353131055627407.a n = A105793 n

end A105793

/-! ## A105793.P16005617809246579611

`A136124(n+2)/A049444(n)*A094645(n)`
-/

namespace A105793.P16005617809246579611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136124 (n + 2) : ℚ) / (A049444 n : ℚ) * (A094645 n : ℚ)

end

end A105793.P16005617809246579611

namespace A105793

/-- `A136124(n+2)/A049444(n)*A094645(n)` -/
def P16005617809246579611.Spec : Prop :=
  ∀ n, P16005617809246579611.a n = (A105793 n : ℚ)

end A105793

/-! ## A105793.P16924613961641538696

`A094645(n)*A165586(A130321(n))`
-/

namespace A105793.P16924613961641538696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094645 n * A165586 (A130321 n).toNat

end

end A105793.P16924613961641538696

namespace A105793

/-- `A094645(n)*A165586(A130321(n))` -/
def P16924613961641538696.Spec : Prop :=
  ∀ n, P16924613961641538696.a n = A105793 n

end A105793

/-! ## A105793.P14902059629506629477

`2*A048994(n)-A227342(n)`
-/

namespace A105793.P14902059629506629477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048994 n - A227342 n

end

end A105793.P14902059629506629477

namespace A105793

/-- `2*A048994(n)-A227342(n)` -/
def P14902059629506629477.Spec : Prop :=
  ∀ n, P14902059629506629477.a n = A105793 n

end A105793

/-!
# A105794: Inverse of a generalized Stirling number triangle of first kind.

The programs for A105794, the canonical program `A105794.P14976097638747590652` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105794 has offset 0).

The definition of A105794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105794.P14976097638747590652

`(col(n)-1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A105794

/-- `(col(n)-1)*T(n-1,k)+T(n-1,k-1)` -/
def P14976097638747590652.Spec : Prop :=
  ∀ n, P14976097638747590652.a n = A105794 n

theorem P14976097638747590652.correct : P14976097638747590652.Spec := by
  intro n
  simp only [A105794]

end A105794

/-! ## A105794.P16975356313713561847

`A348687(A274391(n))-A000038(A114525(n))`
-/

namespace A105794.P16975356313713561847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348687 (A274391 n).toNat - A000038 (A114525 n).toNat

end

end A105794.P16975356313713561847

namespace A105794

/-- `A348687(A274391(n))-A000038(A114525(n))` -/
def P16975356313713561847.Spec : Prop :=
  ∀ n, P16975356313713561847.a n = A105794 n

end A105794

/-! ## A105794.P17657948312423939294

`A065359(gcd(A087127(n+5), A338586(2*(n+2))))`
-/

namespace A105794.P17657948312423939294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (Int.gcd (A087127 (n + 5)) (A338586 (2 * (n + 2))))

end

end A105794.P17657948312423939294

namespace A105794

/-- `A065359(gcd(A087127(n+5), A338586(2*(n+2))))` -/
def P17657948312423939294.Spec : Prop :=
  ∀ n, P17657948312423939294.a n = A105794 n

end A105794

/-! ## A105794.P7479897853318134154

`A202480(A038722(n+1)-1)^A273712(n)^A030109(n+1)`
-/

namespace A105794.P7479897853318134154
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A202480 (A038722 (n + 1) - 1).toNat : ℝ) ^ ((A273712 n : ℚ) ^ (A030109 (n + 1) : ℤ) : ℝ)

end

end A105794.P7479897853318134154

namespace A105794

/-- `A202480(A038722(n+1)-1)^A273712(n)^A030109(n+1)` -/
def P7479897853318134154.Spec : Prop :=
  ∀ n, P7479897853318134154.a n = (A105794 n : ℝ)

end A105794

/-! ## A105794.P2386918295653627055

`A344118(A126182(n))+A097807(n)`
-/

namespace A105794.P2386918295653627055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344118 (A126182 n).toNat + A097807 n

end

end A105794.P2386918295653627055

namespace A105794

/-- `A344118(A126182(n))+A097807(n)` -/
def P2386918295653627055.Spec : Prop :=
  ∀ n, P2386918295653627055.a n = A105794 n

end A105794

/-!
# A105795: Shallow diagonal sums of the triangle k!*Stirling2(n,k): a(n) = Sum_{k=0..floor(n/2)} T(n-k,k) where T is A019538.

The programs for A105795, there is no canonical definition to state claims against.
-/

/-! ## A105795.P17985997505413991208

`A229046(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A105795.P17985997505413991208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229046 (n - 1) - a (n - 1)

end

end A105795.P17985997505413991208

/-! ## A105795.P9397305866518351809

`A065719(11*A025270(n+1))`
-/

namespace A105795.P9397305866518351809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (11 * A025270 (n + 1)).toNat

end

end A105795.P9397305866518351809

/-! ## A105795.P14861914907593972622

`A065719(lcm(11, A025270(n+1)))`
-/

namespace A105795.P14861914907593972622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (Int.lcm 11 (A025270 (n + 1)))

end

end A105795.P14861914907593972622

/-!
# A105796: "Stirling-Bernoulli transform" of Jacobsthal numbers.

The programs for A105796, there is no canonical definition to state claims against.
-/

/-! ## A105796.P14285100187787915261

`floor(A000670(n)/A176040(n))`
-/

namespace A105796.P14285100187787915261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000670 n : ℚ) / (A176040 n : ℚ)⌋

end

end A105796.P14285100187787915261

/-! ## A105796.P13749533309070635892

`floor(A000670(n)/Δ[A014601(n)])`
-/

namespace A105796.P13749533309070635892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000670 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A105796.P13749533309070635892

/-! ## A105796.P8671513832918749797

`floor(A000670(n)/A010684(n+1))`
-/

namespace A105796.P8671513832918749797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000670 n : ℚ) / (A010684 (n + 1) : ℚ)⌋

end

end A105796.P8671513832918749797

/-! ## A105796.P15179505047927315169

`round(A076726(n)/A010696(n+1))`
-/

namespace A105796.P15179505047927315169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A076726 n : ℚ) / (A010696 (n + 1) : ℚ))

end

end A105796.P15179505047927315169

/-! ## A105796.P10183439811156138941

`floor(A000670(n)/A000032(gcd(n, n+2)))`
-/

namespace A105796.P10183439811156138941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000670 n : ℚ) / (A000032 (Nat.gcd n (n + 2)) : ℚ)⌋

end

end A105796.P10183439811156138941

/-!
# A105797: "Stirling-Bernoulli transform" of Pell numbers.

The programs for A105797, there is no canonical definition to state claims against.
-/

/-! ## A105797.P16203024205575886866

`A091346(n)+A002264(A056322(n+1))`
-/

namespace A105797.P16203024205575886866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091346 n + A002264 (A056322 (n + 1)).toNat

end

end A105797.P16203024205575886866

/-! ## A105797.P11291752639392370819

`A004396(A332711(n))`
-/

namespace A105797.P11291752639392370819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A332711 n).toNat

end

end A105797.P11291752639392370819

