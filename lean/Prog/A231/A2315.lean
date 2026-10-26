import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
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
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A231500: a(n) = Sum_{i=0..n} wt(i)^2, where wt(i) = A000120(i).

The programs for A231500, the canonical program `A231500.P5873829076388358965` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231500 has offset 0).

The definition of A231500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231500.P5873829076388358965

`∑[∑[∑{e}[xor(n, -n), 2-#]]²]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231500

/-- `∑[∑[∑{e}[xor(n, -n), 2-#]]²]` -/
def P5873829076388358965.Spec : Prop :=
  ∀ n, P5873829076388358965.a n = A231500 n

theorem P5873829076388358965.correct : P5873829076388358965.Spec := by
  intro n
  simp only [A231500]

end A231500

/-! ## A231500.P11801129026083309406

`∑[(n-(∑[val(n+1, 2)]-val(n+1, 2)))²]`
-/

namespace A231500.P11801129026083309406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P11801129026083309406

namespace A231500

/-- `∑[(n-(∑[val(n+1, 2)]-val(n+1, 2)))²]` -/
def P11801129026083309406.Spec : Prop :=
  ∀ n, P11801129026083309406.a n = A231500 n

end A231500

/-! ## A231500.P1755391354032230773

`∑[A000120(n)²]`
-/

namespace A231500.P1755391354032230773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P1755391354032230773

namespace A231500

/-- `∑[A000120(n)²]` -/
def P1755391354032230773.Spec : Prop :=
  ∀ n, P1755391354032230773.a n = A231500 n

end A231500

/-! ## A231500.P12293292329874320517

`∑[log2(A001316(n))²]`
-/

namespace A231500.P12293292329874320517
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P12293292329874320517

namespace A231500

/-- `∑[log2(A001316(n))²]` -/
def P12293292329874320517.Spec : Prop :=
  ∀ n, P12293292329874320517.a n = (A231500 n : ℝ)

end A231500

/-! ## A231500.P4887025802848053641

`∑[∑[A088705(n)]²]`
-/

namespace A231500.P4887025802848053641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P4887025802848053641

namespace A231500

/-- `∑[∑[A088705(n)]²]` -/
def P4887025802848053641.Spec : Prop :=
  ∀ n, P4887025802848053641.a n = A231500 n

end A231500

/-! ## A231500.P6517801760534045211

`∑[val(A102377(n), 2)²]`
-/

namespace A231500.P6517801760534045211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P6517801760534045211

namespace A231500

/-- `∑[val(A102377(n), 2)²]` -/
def P6517801760534045211.Spec : Prop :=
  ∀ n, (P6517801760534045211.a n : ℤ) = A231500 n

end A231500

/-! ## A231500.P5236298839342152046

`∑[val(A160713(n), 2)²]`
-/

namespace A231500.P5236298839342152046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160713 n).toNat 2 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P5236298839342152046

namespace A231500

/-- `∑[val(A160713(n), 2)²]` -/
def P5236298839342152046.Spec : Prop :=
  ∀ n, (P5236298839342152046.a n : ℤ) = A231500 n

end A231500

/-! ## A231500.P12830989410263530750

`∑[(n-A011371(n))²]`
-/

namespace A231500.P12830989410263530750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A011371 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P12830989410263530750

namespace A231500

/-- `∑[(n-A011371(n))²]` -/
def P12830989410263530750.Spec : Prop :=
  ∀ n, P12830989410263530750.a n = A231500 n

end A231500

/-! ## A231500.P1853069671458739199

`∑[(n-A092391(n))²]`
-/

namespace A231500.P1853069671458739199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A092391 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P1853069671458739199

namespace A231500

/-- `∑[(n-A092391(n))²]` -/
def P1853069671458739199.Spec : Prop :=
  ∀ n, P1853069671458739199.a n = A231500 n

end A231500

/-! ## A231500.P1654012635460970841

`∑[(n-A227361(n))²]`
-/

namespace A231500.P1654012635460970841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A227361 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P1654012635460970841

namespace A231500

/-- `∑[(n-A227361(n))²]` -/
def P1654012635460970841.Spec : Prop :=
  ∀ n, P1654012635460970841.a n = A231500 n

end A231500

/-! ## A231500.P9177323495227783360

`∑[log2(Δ[A006046(n)])²]`
-/

namespace A231500.P9177323495227783360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P9177323495227783360

namespace A231500

/-- `∑[log2(Δ[A006046(n)])²]` -/
def P9177323495227783360.Spec : Prop :=
  ∀ n, P9177323495227783360.a n = (A231500 n : ℝ)

end A231500

/-! ## A231500.P17979093738635411207

`∑[∑{d}[n, A297115(#)]²]`
-/

namespace A231500.P17979093738635411207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), A297115 d) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P17979093738635411207

namespace A231500

/-- `∑[∑{d}[n, A297115(#)]²]` -/
def P17979093738635411207.Spec : Prop :=
  ∀ n, P17979093738635411207.a n = A231500 n

end A231500

/-! ## A231500.P1915128051537682200

`∑[log2(A060632(2*n))²]`
-/

namespace A231500.P1915128051537682200
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060632 (2 * n) : ℝ) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P1915128051537682200

namespace A231500

/-- `∑[log2(A060632(2*n))²]` -/
def P1915128051537682200.Spec : Prop :=
  ∀ n, P1915128051537682200.a n = (A231500 n : ℝ)

end A231500

/-! ## A231500.P278589868319120906

`∑[(log2(A102376(n))/2)²]`
-/

namespace A231500.P278589868319120906
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A102376 n : ℝ) / 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P278589868319120906

namespace A231500

/-- `∑[(log2(A102376(n))/2)²]` -/
def P278589868319120906.Spec : Prop :=
  ∀ n, P278589868319120906.a n = (A231500 n : ℝ)

end A231500

/-! ## A231500.P15109469019441675509

`∑[(1-A063787(n+1))²]`
-/

namespace A231500.P15109469019441675509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A063787 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P15109469019441675509

namespace A231500

/-- `∑[(1-A063787(n+1))²]` -/
def P15109469019441675509.Spec : Prop :=
  ∀ n, P15109469019441675509.a n = A231500 n

end A231500

/-! ## A231500.P17886241883016174118

`∑[(A249154(n)/(n+1))²]`
-/

namespace A231500.P17886241883016174118
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A249154 n : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P17886241883016174118

namespace A231500

/-- `∑[(A249154(n)/(n+1))²]` -/
def P17886241883016174118.Spec : Prop :=
  ∀ n, P17886241883016174118.a n = (A231500 n : ℚ)

end A231500

/-! ## A231500.P18138565882450554591

`∑[(n+1-A230300(n+1))²]`
-/

namespace A231500.P18138565882450554591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A230300 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P18138565882450554591

namespace A231500

/-- `∑[(n+1-A230300(n+1))²]` -/
def P18138565882450554591.Spec : Prop :=
  ∀ n, P18138565882450554591.a n = A231500 n

end A231500

/-! ## A231500.P12456355252995156645

`∑[A001222(A071044(n))²]`
-/

namespace A231500.P12456355252995156645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P12456355252995156645

namespace A231500

/-- `∑[A001222(A071044(n))²]` -/
def P12456355252995156645.Spec : Prop :=
  ∀ n, P12456355252995156645.a n = A231500 n

end A231500

/-! ## A231500.P5276424447719737808

`∑[A001222(A268444(n))²]`
-/

namespace A231500.P5276424447719737808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P5276424447719737808

namespace A231500

/-- `∑[A001222(A268444(n))²]` -/
def P5276424447719737808.Spec : Prop :=
  ∀ n, P5276424447719737808.a n = A231500 n

end A231500

/-! ## A231500.P17488597104503257453

`∑[A293390(A038573(n))²]`
-/

namespace A231500.P17488597104503257453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 (A038573 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231500.P17488597104503257453

namespace A231500

/-- `∑[A293390(A038573(n))²]` -/
def P17488597104503257453.Spec : Prop :=
  ∀ n, P17488597104503257453.a n = A231500 n

end A231500

/-!
# A231501: a(n) = Sum_{i=0..n} wt(i)^3, where wt() = A000120().

The programs for A231501, the canonical program `A231501.P4998772299372782245` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231501 has offset 0).

The definition of A231501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231501.P4998772299372782245

`∑[∑[1-val(abs(1-n)+1, 2)]^3]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231501

/-- `∑[∑[1-val(abs(1-n)+1, 2)]^3]` -/
def P4998772299372782245.Spec : Prop :=
  ∀ n, P4998772299372782245.a n = A231501 n

theorem P4998772299372782245.correct : P4998772299372782245.Spec := by
  intro n
  simp only [A231501]

end A231501

/-! ## A231501.P5928293096618511112

`∑[(val(n+1, 2)+n-∑[val(n+1, 2)])^3]`
-/

namespace A231501.P5928293096618511112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P5928293096618511112

namespace A231501

/-- `∑[(val(n+1, 2)+n-∑[val(n+1, 2)])^3]` -/
def P5928293096618511112.Spec : Prop :=
  ∀ n, P5928293096618511112.a n = A231501 n

end A231501

/-! ## A231501.P2184297938459528969

`∑[A000120(n)^3]`
-/

namespace A231501.P2184297938459528969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P2184297938459528969

namespace A231501

/-- `∑[A000120(n)^3]` -/
def P2184297938459528969.Spec : Prop :=
  ∀ n, P2184297938459528969.a n = A231501 n

end A231501

/-! ## A231501.P16367849975966817752

`∑[log2(A001316(n))^3]`
-/

namespace A231501.P16367849975966817752
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P16367849975966817752

namespace A231501

/-- `∑[log2(A001316(n))^3]` -/
def P16367849975966817752.Spec : Prop :=
  ∀ n, P16367849975966817752.a n = (A231501 n : ℝ)

end A231501

/-! ## A231501.P8683536261314126555

`∑[val(A102377(n), 2)^3]`
-/

namespace A231501.P8683536261314126555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102377 n).toNat 2 ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P8683536261314126555

namespace A231501

/-- `∑[val(A102377(n), 2)^3]` -/
def P8683536261314126555.Spec : Prop :=
  ∀ n, (P8683536261314126555.a n : ℤ) = A231501 n

end A231501

/-! ## A231501.P6044612127426091271

`∑[val(A160713(n), 2)^3]`
-/

namespace A231501.P6044612127426091271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A160713 n).toNat 2 ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P6044612127426091271

namespace A231501

/-- `∑[val(A160713(n), 2)^3]` -/
def P6044612127426091271.Spec : Prop :=
  ∀ n, (P6044612127426091271.a n : ℤ) = A231501 n

end A231501

/-! ## A231501.P6655014726854286369

`∑[val(A048883(n), 3)^3]`
-/

namespace A231501.P6655014726854286369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048883 n).toNat 3 ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P6655014726854286369

namespace A231501

/-- `∑[val(A048883(n), 3)^3]` -/
def P6655014726854286369.Spec : Prop :=
  ∀ n, (P6655014726854286369.a n : ℤ) = A231501 n

end A231501

/-! ## A231501.P8113127559481762602

`∑[(n-A011371(n))^3]`
-/

namespace A231501.P8113127559481762602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A011371 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P8113127559481762602

namespace A231501

/-- `∑[(n-A011371(n))^3]` -/
def P8113127559481762602.Spec : Prop :=
  ∀ n, P8113127559481762602.a n = A231501 n

end A231501

/-! ## A231501.P16263275714807581371

`∑[(2*n-A005187(n))^3]`
-/

namespace A231501.P16263275714807581371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A005187 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P16263275714807581371

namespace A231501

/-- `∑[(2*n-A005187(n))^3]` -/
def P16263275714807581371.Spec : Prop :=
  ∀ n, P16263275714807581371.a n = A231501 n

end A231501

/-! ## A231501.P17917706255774759309

`∑[A000578(A000120(n))]`
-/

namespace A231501.P17917706255774759309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P17917706255774759309

namespace A231501

/-- `∑[A000578(A000120(n))]` -/
def P17917706255774759309.Spec : Prop :=
  ∀ n, P17917706255774759309.a n = A231501 n

end A231501

/-! ## A231501.P15038452458243316525

`∑[A000093(A000120(n)²)]`
-/

namespace A231501.P15038452458243316525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A000120 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P15038452458243316525

namespace A231501

/-- `∑[A000093(A000120(n)²)]` -/
def P15038452458243316525.Spec : Prop :=
  ∀ n, P15038452458243316525.a n = A231501 n

end A231501

/-! ## A231501.P13771224793917006267

`∑[A002821(A000120(n)²)]`
-/

namespace A231501.P13771224793917006267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A000120 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P13771224793917006267

namespace A231501

/-- `∑[A002821(A000120(n)²)]` -/
def P13771224793917006267.Spec : Prop :=
  ∀ n, P13771224793917006267.a n = A231501 n

end A231501

/-! ## A231501.P2387238182952107130

`∑[A000578(log2(A001316(n)))]`
-/

namespace A231501.P2387238182952107130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P2387238182952107130

namespace A231501

/-- `∑[A000578(log2(A001316(n)))]` -/
def P2387238182952107130.Spec : Prop :=
  ∀ n, P2387238182952107130.a n = A231501 n

end A231501

/-! ## A231501.P16393649182481233265

`∑[A000578(∑[A088705(n)])]`
-/

namespace A231501.P16393649182481233265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P16393649182481233265

namespace A231501

/-- `∑[A000578(∑[A088705(n)])]` -/
def P16393649182481233265.Spec : Prop :=
  ∀ n, P16393649182481233265.a n = A231501 n

end A231501

/-! ## A231501.P16950573212760004993

`∑[A001222(A071044(n))^3]`
-/

namespace A231501.P16950573212760004993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P16950573212760004993

namespace A231501

/-- `∑[A001222(A071044(n))^3]` -/
def P16950573212760004993.Spec : Prop :=
  ∀ n, P16950573212760004993.a n = A231501 n

end A231501

/-! ## A231501.P15626956398564665174

`∑[(n-(∑[A007814(n+1)]-A007814(n+1)))^3]`
-/

namespace A231501.P15626956398564665174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (∑ j ∈ Finset.range (n + 1), f2 j - A007814 (n + 1))) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P15626956398564665174

namespace A231501

/-- `∑[(n-(∑[A007814(n+1)]-A007814(n+1)))^3]` -/
def P15626956398564665174.Spec : Prop :=
  ∀ n, P15626956398564665174.a n = A231501 n

end A231501

/-! ## A231501.P13144102243218612741

`∑[(A288921(A288922(3*n+2))%A288933(n+1))^3]`
-/

namespace A231501.P13144102243218612741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288921 (A288922 (3 * n + 2)).toNat) (A288933 (n + 1)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P13144102243218612741

namespace A231501

/-- `∑[(A288921(A288922(3*n+2))%A288933(n+1))^3]` -/
def P13144102243218612741.Spec : Prop :=
  ∀ n, P13144102243218612741.a n = A231501 n

end A231501

/-! ## A231501.P13865473613859285177

`∑[A001222(A278222(n))^3]`
-/

namespace A231501.P13865473613859285177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P13865473613859285177

namespace A231501

/-- `∑[A001222(A278222(n))^3]` -/
def P13865473613859285177.Spec : Prop :=
  ∀ n, P13865473613859285177.a n = A231501 n

end A231501

/-! ## A231501.P6941119669647187781

`∑[A048881(2*n)²*A048881(2*n)]`
-/

namespace A231501.P6941119669647187781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * n) ^ 2 * A048881 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P6941119669647187781

namespace A231501

/-- `∑[A048881(2*n)²*A048881(2*n)]` -/
def P6941119669647187781.Spec : Prop :=
  ∀ n, P6941119669647187781.a n = A231501 n

end A231501

/-! ## A231501.P11359927183085342566

`∑[A274009(2*n+1)²*A274009(2*n+1)]`
-/

namespace A231501.P11359927183085342566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (2 * n + 1) ^ 2 * A274009 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231501.P11359927183085342566

namespace A231501

/-- `∑[A274009(2*n+1)²*A274009(2*n+1)]` -/
def P11359927183085342566.Spec : Prop :=
  ∀ n, P11359927183085342566.a n = A231501 n

end A231501

/-!
# A231502: a(n) = Sum_{i=0..n} wt(i)^4, where wt() = A000120().

The programs for A231502, the canonical program `A231502.P17696634046408221653` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231502 has offset 0).

The definition of A231502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231502.P17696634046408221653

`∑[∑[1-val(abs(1-n)+1, 2)]^4]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231502

/-- `∑[∑[1-val(abs(1-n)+1, 2)]^4]` -/
def P17696634046408221653.Spec : Prop :=
  ∀ n, P17696634046408221653.a n = A231502 n

theorem P17696634046408221653.correct : P17696634046408221653.Spec := by
  intro n
  simp only [A231502]

end A231502

/-! ## A231502.P17519794886797480772

`∑[(val(n+1, 2)+n-∑[val(n+1, 2)])^4]`
-/

namespace A231502.P17519794886797480772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P17519794886797480772

namespace A231502

/-- `∑[(val(n+1, 2)+n-∑[val(n+1, 2)])^4]` -/
def P17519794886797480772.Spec : Prop :=
  ∀ n, P17519794886797480772.a n = A231502 n

end A231502

/-! ## A231502.P5163625941058205776

`∑[(n-(∑[val(n+1, 2)]-val(n+1, 2)))²²]`
-/

namespace A231502.P5163625941058205776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P5163625941058205776

namespace A231502

/-- `∑[(n-(∑[val(n+1, 2)]-val(n+1, 2)))²²]` -/
def P5163625941058205776.Spec : Prop :=
  ∀ n, P5163625941058205776.a n = A231502 n

end A231502

/-! ## A231502.P11878759133341766398

`∑[A000120(n)^4]`
-/

namespace A231502.P11878759133341766398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P11878759133341766398

namespace A231502

/-- `∑[A000120(n)^4]` -/
def P11878759133341766398.Spec : Prop :=
  ∀ n, P11878759133341766398.a n = A231502 n

end A231502

/-! ## A231502.P16386379258826759379

`∑[log2(A001316(n))^4]`
-/

namespace A231502.P16386379258826759379
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) ^ 4

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P16386379258826759379

namespace A231502

/-- `∑[log2(A001316(n))^4]` -/
def P16386379258826759379.Spec : Prop :=
  ∀ n, P16386379258826759379.a n = (A231502 n : ℝ)

end A231502

/-! ## A231502.P10179040671917999528

`∑[∑[A088705(n)]²²]`
-/

namespace A231502.P10179040671917999528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P10179040671917999528

namespace A231502

/-- `∑[∑[A088705(n)]²²]` -/
def P10179040671917999528.Spec : Prop :=
  ∀ n, P10179040671917999528.a n = A231502 n

end A231502

/-! ## A231502.P7539744542016460203

`∑[(n-A011371(n))^4]`
-/

namespace A231502.P7539744542016460203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A011371 n) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P7539744542016460203

namespace A231502

/-- `∑[(n-A011371(n))^4]` -/
def P7539744542016460203.Spec : Prop :=
  ∀ n, P7539744542016460203.a n = A231502 n

end A231502

/-! ## A231502.P1430538109277119523

`∑[(n-A092391(n))²²]`
-/

namespace A231502.P1430538109277119523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A092391 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P1430538109277119523

namespace A231502

/-- `∑[(n-A092391(n))²²]` -/
def P1430538109277119523.Spec : Prop :=
  ∀ n, P1430538109277119523.a n = A231502 n

end A231502

/-! ## A231502.P3694282520729165106

`∑[(n-A227361(n))²²]`
-/

namespace A231502.P3694282520729165106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A227361 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P3694282520729165106

namespace A231502

/-- `∑[(n-A227361(n))²²]` -/
def P3694282520729165106.Spec : Prop :=
  ∀ n, P3694282520729165106.a n = A231502 n

end A231502

/-! ## A231502.P3329770666669027074

`∑[log2(Δ[A006046(n)])²²]`
-/

namespace A231502.P3329770666669027074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (f2 (n + 1) - f2 n : ℝ) ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P3329770666669027074

namespace A231502

/-- `∑[log2(Δ[A006046(n)])²²]` -/
def P3329770666669027074.Spec : Prop :=
  ∀ n, P3329770666669027074.a n = (A231502 n : ℝ)

end A231502

/-! ## A231502.P7096490297595425509

`∑[log2(A060632(2*n))²²]`
-/

namespace A231502.P7096490297595425509
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A060632 (2 * n) : ℝ) ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P7096490297595425509

namespace A231502

/-- `∑[log2(A060632(2*n))²²]` -/
def P7096490297595425509.Spec : Prop :=
  ∀ n, P7096490297595425509.a n = (A231502 n : ℝ)

end A231502

/-! ## A231502.P6748788718208482295

`∑[(2*n-A005187(n))^4]`
-/

namespace A231502.P6748788718208482295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A005187 n) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P6748788718208482295

namespace A231502

/-- `∑[(2*n-A005187(n))^4]` -/
def P6748788718208482295.Spec : Prop :=
  ∀ n, P6748788718208482295.a n = A231502 n

end A231502

/-! ## A231502.P1792588695526490581

`∑[(1-A063787(n+1))²²]`
-/

namespace A231502.P1792588695526490581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A063787 (n + 1)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P1792588695526490581

namespace A231502

/-- `∑[(1-A063787(n+1))²²]` -/
def P1792588695526490581.Spec : Prop :=
  ∀ n, P1792588695526490581.a n = A231502 n

end A231502

/-! ## A231502.P4707950892012749843

`∑[A000583(A000120(n))]`
-/

namespace A231502.P4707950892012749843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P4707950892012749843

namespace A231502

/-- `∑[A000583(A000120(n))]` -/
def P4707950892012749843.Spec : Prop :=
  ∀ n, P4707950892012749843.a n = A231502 n

end A231502

/-! ## A231502.P17866121826702001312

`∑[A000290(A000120(n)²)]`
-/

namespace A231502.P17866121826702001312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000120 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P17866121826702001312

namespace A231502

/-- `∑[A000290(A000120(n)²)]` -/
def P17866121826702001312.Spec : Prop :=
  ∀ n, P17866121826702001312.a n = A231502 n

end A231502

/-! ## A231502.P17118862952494407380

`∑[A000583(log2(A001316(n)))]`
-/

namespace A231502.P17118862952494407380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P17118862952494407380

namespace A231502

/-- `∑[A000583(log2(A001316(n)))]` -/
def P17118862952494407380.Spec : Prop :=
  ∀ n, P17118862952494407380.a n = A231502 n

end A231502

/-! ## A231502.P751926607266122877

`∑[A001222(A071044(n))²²]`
-/

namespace A231502.P751926607266122877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A071044 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P751926607266122877

namespace A231502

/-- `∑[A001222(A071044(n))²²]` -/
def P751926607266122877.Spec : Prop :=
  ∀ n, P751926607266122877.a n = A231502 n

end A231502

/-! ## A231502.P7856712053409879503

`∑[A001222(A268444(n))²²]`
-/

namespace A231502.P7856712053409879503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A268444 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P7856712053409879503

namespace A231502

/-- `∑[A001222(A268444(n))²²]` -/
def P7856712053409879503.Spec : Prop :=
  ∀ n, P7856712053409879503.a n = A231502 n

end A231502

/-! ## A231502.P10100858901562013672

`∑[A005811(A292601(n))²²]`
-/

namespace A231502.P10100858901562013672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005811 (A292601 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P10100858901562013672

namespace A231502

/-- `∑[A005811(A292601(n))²²]` -/
def P10100858901562013672.Spec : Prop :=
  ∀ n, P10100858901562013672.a n = A231502 n

end A231502

/-! ## A231502.P2715912798061017791

`∑[A293390(A038573(n))²²]`
-/

namespace A231502.P2715912798061017791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293390 (A038573 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231502.P2715912798061017791

namespace A231502

/-- `∑[A293390(A038573(n))²²]` -/
def P2715912798061017791.Spec : Prop :=
  ∀ n, P2715912798061017791.a n = A231502 n

end A231502

/-!
# A231503: a(n) = Sum_{i=0..n} digsum_3(i)^2, where digsum_3(i) = A053735(i).

The programs for A231503, the canonical program `A231503.P10981626765520953398` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231503 has offset 0).

The definition of A231503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231503.P10981626765520953398

`∑[(n-2*∑[val(abs(1-n)+1, 3)])²]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231503

/-- `∑[(n-2*∑[val(abs(1-n)+1, 3)])²]` -/
def P10981626765520953398.Spec : Prop :=
  ∀ n, P10981626765520953398.a n = A231503 n

theorem P10981626765520953398.correct : P10981626765520953398.Spec := by
  intro n
  simp only [A231503]

end A231503

/-! ## A231503.P2133618537781339028

`∑[A053735(n)²]`
-/

namespace A231503.P2133618537781339028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P2133618537781339028

namespace A231503

/-- `∑[A053735(n)²]` -/
def P2133618537781339028.Spec : Prop :=
  ∀ n, P2133618537781339028.a n = A231503 n

end A231503

/-! ## A231503.P13871227627394480097

`∑[A365722(3*n)²]`
-/

namespace A231503.P13871227627394480097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P13871227627394480097

namespace A231503

/-- `∑[A365722(3*n)²]` -/
def P13871227627394480097.Spec : Prop :=
  ∀ n, P13871227627394480097.a n = A231503 n

end A231503

/-! ## A231503.P18417085854522534780

`∑[(n-A230641(n))²]`
-/

namespace A231503.P18417085854522534780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A230641 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P18417085854522534780

namespace A231503

/-- `∑[(n-A230641(n))²]` -/
def P18417085854522534780.Spec : Prop :=
  ∀ n, P18417085854522534780.a n = A231503 n

end A231503

/-! ## A231503.P872525349842417383

`∑[(n-A344853(n))²]`
-/

namespace A231503.P872525349842417383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A344853 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P872525349842417383

namespace A231503

/-- `∑[(n-A344853(n))²]` -/
def P872525349842417383.Spec : Prop :=
  ∀ n, P872525349842417383.a n = A231503 n

end A231503

/-! ## A231503.P11645734669052135705

`∑[∑{digits}[A007089(n), #]²]`
-/

namespace A231503.P11645734669052135705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P11645734669052135705

namespace A231503

/-- `∑[∑{digits}[A007089(n), #]²]` -/
def P11645734669052135705.Spec : Prop :=
  ∀ n, (P11645734669052135705.a n : ℤ) = A231503 n

end A231503

/-! ## A231503.P14589710005434712721

`∑[(1-A173523(n+1))²]`
-/

namespace A231503.P14589710005434712721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A173523 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P14589710005434712721

namespace A231503

/-- `∑[(1-A173523(n+1))²]` -/
def P14589710005434712721.Spec : Prop :=
  ∀ n, P14589710005434712721.a n = A231503 n

end A231503

/-! ## A231503.P10947317389279457347

`∑[A003313(A006047(n))²]`
-/

namespace A231503.P10947317389279457347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A006047 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P10947317389279457347

namespace A231503

/-- `∑[A003313(A006047(n))²]` -/
def P10947317389279457347.Spec : Prop :=
  ∀ n, P10947317389279457347.a n = A231503 n

end A231503

/-! ## A231503.P10252453840438559301

`∑[A056239(A331279(n))²]`
-/

namespace A231503.P10252453840438559301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A331279 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P10252453840438559301

namespace A231503

/-- `∑[A056239(A331279(n))²]` -/
def P10252453840438559301.Spec : Prop :=
  ∀ n, P10252453840438559301.a n = A231503 n

end A231503

/-! ## A231503.P855302834012251881

`∑[(n-A344853(n))^A020639(A004277(n))]`
-/

namespace A231503.P855302834012251881
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A344853 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P855302834012251881

namespace A231503

/-- `∑[(n-A344853(n))^A020639(A004277(n))]` -/
def P855302834012251881.Spec : Prop :=
  ∀ n, P855302834012251881.a n = (A231503 n : ℚ)

end A231503

/-! ## A231503.P17552945651989132876

`∑[A053735(n)*A053735(A263272(n))]`
-/

namespace A231503.P17552945651989132876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n * A053735 (A263272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P17552945651989132876

namespace A231503

/-- `∑[A053735(n)*A053735(A263272(n))]` -/
def P17552945651989132876.Spec : Prop :=
  ∀ n, P17552945651989132876.a n = A231503 n

end A231503

/-! ## A231503.P11777448821279747882

`∑[A078458(A120879(n))²]`
-/

namespace A231503.P11777448821279747882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078458 (A120879 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P11777448821279747882

namespace A231503

/-- `∑[A078458(A120879(n))²]` -/
def P11777448821279747882.Spec : Prop :=
  ∀ n, P11777448821279747882.a n = A231503 n

end A231503

/-! ## A231503.P17940771943447959712

`∑[A053735(3*n)^2]`
-/

namespace A231503.P17940771943447959712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P17940771943447959712

namespace A231503

/-- `∑[A053735(3*n)^2]` -/
def P17940771943447959712.Spec : Prop :=
  ∀ n, P17940771943447959712.a n = A231503 n

end A231503

/-! ## A231503.P14273335299047233759

`∑[A053735(3*n)*A053735(n)]`
-/

namespace A231503.P14273335299047233759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (3 * n) * A053735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P14273335299047233759

namespace A231503

/-- `∑[A053735(3*n)*A053735(n)]` -/
def P14273335299047233759.Spec : Prop :=
  ∀ n, P14273335299047233759.a n = A231503 n

end A231503

/-! ## A231503.P17436862482378087650

`∑[A027615(A023717(n))²]`
-/

namespace A231503.P17436862482378087650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A023717 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P17436862482378087650

namespace A231503

/-- `∑[A027615(A023717(n))²]` -/
def P17436862482378087650.Spec : Prop :=
  ∀ n, P17436862482378087650.a n = A231503 n

end A231503

/-! ## A231503.P1744692842561635750

`∑[A000120(A325985(n))²]`
-/

namespace A231503.P1744692842561635750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A325985 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P1744692842561635750

namespace A231503

/-- `∑[A000120(A325985(n))²]` -/
def P1744692842561635750.Spec : Prop :=
  ∀ n, P1744692842561635750.a n = A231503 n

end A231503

/-! ## A231503.P4686867799644118765

`∑[A000120(A006288(n))²]`
-/

namespace A231503.P4686867799644118765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006288 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P4686867799644118765

namespace A231503

/-- `∑[A000120(A006288(n))²]` -/
def P4686867799644118765.Spec : Prop :=
  ∀ n, P4686867799644118765.a n = A231503 n

end A231503

/-! ## A231503.P13019853690209516942

`∑[A000120(record[A006015(n)])²]`
-/

namespace A231503.P13019853690209516942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P13019853690209516942

namespace A231503

/-- `∑[A000120(record[A006015(n)])²]` -/
def P13019853690209516942.Spec : Prop :=
  ∀ n, P13019853690209516942.a n = A231503 n

end A231503

/-! ## A231503.P8956883981219570906

`∑[A000120(A023709(n+1))²]`
-/

namespace A231503.P8956883981219570906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A023709 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P8956883981219570906

namespace A231503

/-- `∑[A000120(A023709(n+1))²]` -/
def P8956883981219570906.Spec : Prop :=
  ∀ n, P8956883981219570906.a n = A231503 n

end A231503

/-! ## A231503.P15257222784766186906

`∑[A053827(A037454(n))²]`
-/

namespace A231503.P15257222784766186906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A037454 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231503.P15257222784766186906

namespace A231503

/-- `∑[A053827(A037454(n))²]` -/
def P15257222784766186906.Spec : Prop :=
  ∀ n, P15257222784766186906.a n = A231503 n

end A231503

/-!
# A231504: a(n) = Sum_{i=0..n} digsum_3(i)^3, where digsum_3(i) = A053735(i).

The programs for A231504, the canonical program `A231504.P11023071593568426479` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231504 has offset 0).

The definition of A231504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231504.P11023071593568426479

`∑[(n-2*∑[val(abs(1-n)+1, 3)])^3]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231504

/-- `∑[(n-2*∑[val(abs(1-n)+1, 3)])^3]` -/
def P11023071593568426479.Spec : Prop :=
  ∀ n, P11023071593568426479.a n = A231504 n

theorem P11023071593568426479.correct : P11023071593568426479.Spec := by
  intro n
  simp only [A231504]

end A231504

/-! ## A231504.P18006257782042693200

`∑[A053735(n)^3]`
-/

namespace A231504.P18006257782042693200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231504.P18006257782042693200

namespace A231504

/-- `∑[A053735(n)^3]` -/
def P18006257782042693200.Spec : Prop :=
  ∀ n, P18006257782042693200.a n = A231504 n

end A231504

/-! ## A231504.P18282625417313170675

`∑[(A230641(n)-n)^3]`
-/

namespace A231504.P18282625417313170675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230641 n - (n : ℤ)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231504.P18282625417313170675

namespace A231504

/-- `∑[(A230641(n)-n)^3]` -/
def P18282625417313170675.Spec : Prop :=
  ∀ n, P18282625417313170675.a n = A231504 n

end A231504

/-! ## A231504.P15945945346552523787

`∑[(n-A344853(n))^3]`
-/

namespace A231504.P15945945346552523787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A344853 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231504.P15945945346552523787

namespace A231504

/-- `∑[(n-A344853(n))^3]` -/
def P15945945346552523787.Spec : Prop :=
  ∀ n, P15945945346552523787.a n = A231504 n

end A231504

/-! ## A231504.P6691690817393913342

`∑[A000578(A053735(n))]`
-/

namespace A231504.P6691690817393913342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231504.P6691690817393913342

namespace A231504

/-- `∑[A000578(A053735(n))]` -/
def P6691690817393913342.Spec : Prop :=
  ∀ n, P6691690817393913342.a n = A231504 n

end A231504

/-! ## A231504.P8442119840111070635

`∑[A000093(A053735(n)²)]`
-/

namespace A231504.P8442119840111070635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A053735 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231504.P8442119840111070635

namespace A231504

/-- `∑[A000093(A053735(n)²)]` -/
def P8442119840111070635.Spec : Prop :=
  ∀ n, P8442119840111070635.a n = A231504 n

end A231504

/-! ## A231504.P1419002718383271603

`∑[A002821(A053735(n)²)]`
-/

namespace A231504.P1419002718383271603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002821 (A053735 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231504.P1419002718383271603

namespace A231504

/-- `∑[A002821(A053735(n)²)]` -/
def P1419002718383271603.Spec : Prop :=
  ∀ n, P1419002718383271603.a n = A231504 n

end A231504

/-! ## A231504.P3244133412827329751

`∑[A166447(A053735(n)²)]`
-/

namespace A231504.P3244133412827329751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166447 (A053735 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231504.P3244133412827329751

namespace A231504

/-- `∑[A166447(A053735(n)²)]` -/
def P3244133412827329751.Spec : Prop :=
  ∀ n, P3244133412827329751.a n = A231504 n

end A231504

/-! ## A231504.P14441965490786208083

`∑[A185549(A053735(n)²)]`
-/

namespace A231504.P14441965490786208083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 (A053735 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231504.P14441965490786208083

namespace A231504

/-- `∑[A185549(A053735(n)²)]` -/
def P14441965490786208083.Spec : Prop :=
  ∀ n, P14441965490786208083.a n = A231504 n

end A231504

/-! ## A231504.P12836152149735450246

`∑[A003313(A006047(n))^3]`
-/

namespace A231504.P12836152149735450246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A006047 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231504.P12836152149735450246

namespace A231504

/-- `∑[A003313(A006047(n))^3]` -/
def P12836152149735450246.Spec : Prop :=
  ∀ n, P12836152149735450246.a n = A231504 n

end A231504

/-! ## A231504.P14405810300906118837

`∑[A000578(A001222(A101278(n)))]`
-/

namespace A231504.P14405810300906118837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A001222 (A101278 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231504.P14405810300906118837

namespace A231504

/-- `∑[A000578(A001222(A101278(n)))]` -/
def P14405810300906118837.Spec : Prop :=
  ∀ n, P14405810300906118837.a n = A231504 n

end A231504

/-!
# A231505: a(n) = Sum_{i=0..n} digsum_3(i)^4, where digsum_3(i) = A053735(i).

The programs for A231505, the canonical program `A231505.P6389063671961009489` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231505 has offset 0).

The definition of A231505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231505.P6389063671961009489

`∑[(n-2*∑[val(abs(1-n)+1, 3)])^4]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231505

/-- `∑[(n-2*∑[val(abs(1-n)+1, 3)])^4]` -/
def P6389063671961009489.Spec : Prop :=
  ∀ n, P6389063671961009489.a n = A231505 n

theorem P6389063671961009489.correct : P6389063671961009489.Spec := by
  intro n
  simp only [A231505]

end A231505

/-! ## A231505.P6677090079041417921

`∑[(n-2*∑[val(abs(1-n)+1, 3)])²²]`
-/

namespace A231505.P6677090079041417921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - ((2 * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P6677090079041417921

namespace A231505

/-- `∑[(n-2*∑[val(abs(1-n)+1, 3)])²²]` -/
def P6677090079041417921.Spec : Prop :=
  ∀ n, P6677090079041417921.a n = A231505 n

theorem P6677090079041417921.correct : P6677090079041417921.Spec := by
  intro n
  simp only [A231505, Nat.add_sub_cancel, A231505.P6677090079041417921.f2, A231505.P6677090079041417921.f1, A231505.P6677090079041417921.a, A231505.P6389063671961009489.f2, A231505.P6389063671961009489.f1, A231505.P6389063671961009489.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A231505

/-! ## A231505.P5512233823843495821

`∑[A053735(n)^4]`
-/

namespace A231505.P5512233823843495821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P5512233823843495821

namespace A231505

/-- `∑[A053735(n)^4]` -/
def P5512233823843495821.Spec : Prop :=
  ∀ n, P5512233823843495821.a n = A231505 n

end A231505

/-! ## A231505.P18311450040807472754

`∑[(n-A230641(n))^4]`
-/

namespace A231505.P18311450040807472754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A230641 n) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P18311450040807472754

namespace A231505

/-- `∑[(n-A230641(n))^4]` -/
def P18311450040807472754.Spec : Prop :=
  ∀ n, P18311450040807472754.a n = A231505 n

end A231505

/-! ## A231505.P12437653033756651873

`∑[∑{digits}[A007089(n), #]^4]`
-/

namespace A231505.P12437653033756651873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P12437653033756651873

namespace A231505

/-- `∑[∑{digits}[A007089(n), #]^4]` -/
def P12437653033756651873.Spec : Prop :=
  ∀ n, (P12437653033756651873.a n : ℤ) = A231505 n

end A231505

/-! ## A231505.P9083818545917675163

`∑[(n-A344853(n))²²]`
-/

namespace A231505.P9083818545917675163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A344853 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P9083818545917675163

namespace A231505

/-- `∑[(n-A344853(n))²²]` -/
def P9083818545917675163.Spec : Prop :=
  ∀ n, P9083818545917675163.a n = A231505 n

end A231505

/-! ## A231505.P11160921336809027109

`∑[A000583(A053735(n))]`
-/

namespace A231505.P11160921336809027109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A053735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P11160921336809027109

namespace A231505

/-- `∑[A000583(A053735(n))]` -/
def P11160921336809027109.Spec : Prop :=
  ∀ n, P11160921336809027109.a n = A231505 n

end A231505

/-! ## A231505.P3840231505116808251

`∑[A000290(A053735(n)²)]`
-/

namespace A231505.P3840231505116808251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A053735 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P3840231505116808251

namespace A231505

/-- `∑[A000290(A053735(n)²)]` -/
def P3840231505116808251.Spec : Prop :=
  ∀ n, P3840231505116808251.a n = A231505 n

end A231505

/-! ## A231505.P11854732757943463686

`∑[A003313(A006047(n))^4]`
-/

namespace A231505.P11854732757943463686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A006047 n).toNat ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P11854732757943463686

namespace A231505

/-- `∑[A003313(A006047(n))^4]` -/
def P11854732757943463686.Spec : Prop :=
  ∀ n, P11854732757943463686.a n = A231505 n

end A231505

/-! ## A231505.P14872654965186172687

`∑[A056239(A331279(n))²²]`
-/

namespace A231505.P14872654965186172687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056239 (A331279 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P14872654965186172687

namespace A231505

/-- `∑[A056239(A331279(n))²²]` -/
def P14872654965186172687.Spec : Prop :=
  ∀ n, P14872654965186172687.a n = A231505 n

end A231505

/-! ## A231505.P9111688544957461951

`∑[A078458(A120879(n))²²]`
-/

namespace A231505.P9111688544957461951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078458 (A120879 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P9111688544957461951

namespace A231505

/-- `∑[A078458(A120879(n))²²]` -/
def P9111688544957461951.Spec : Prop :=
  ∀ n, P9111688544957461951.a n = A231505 n

end A231505

/-! ## A231505.P13761886878871248670

`∑[A053735(3*n)²²]`
-/

namespace A231505.P13761886878871248670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053735 (3 * n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P13761886878871248670

namespace A231505

/-- `∑[A053735(3*n)²²]` -/
def P13761886878871248670.Spec : Prop :=
  ∀ n, P13761886878871248670.a n = A231505 n

end A231505

/-! ## A231505.P12593780405145872549

`∑[A027615(A023717(n))²²]`
-/

namespace A231505.P12593780405145872549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027615 (A023717 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P12593780405145872549

namespace A231505

/-- `∑[A027615(A023717(n))²²]` -/
def P12593780405145872549.Spec : Prop :=
  ∀ n, P12593780405145872549.a n = A231505 n

end A231505

/-! ## A231505.P8411999774081252590

`∑[A000120(A325985(n))²²]`
-/

namespace A231505.P8411999774081252590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 (A325985 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P8411999774081252590

namespace A231505

/-- `∑[A000120(A325985(n))²²]` -/
def P8411999774081252590.Spec : Prop :=
  ∀ n, P8411999774081252590.a n = A231505 n

end A231505

/-! ## A231505.P5971009406701222371

`∑[A000583(A000120(A325985(n)))]`
-/

namespace A231505.P5971009406701222371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000120 (A325985 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P5971009406701222371

namespace A231505

/-- `∑[A000583(A000120(A325985(n)))]` -/
def P5971009406701222371.Spec : Prop :=
  ∀ n, P5971009406701222371.a n = A231505 n

end A231505

/-! ## A231505.P992678605719363145

`∑[A000120(A006288(n))²²]`
-/

namespace A231505.P992678605719363145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 (A006288 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P992678605719363145

namespace A231505

/-- `∑[A000120(A006288(n))²²]` -/
def P992678605719363145.Spec : Prop :=
  ∀ n, P992678605719363145.a n = A231505 n

end A231505

/-! ## A231505.P17216742570173836048

`∑[A000120(record[A006015(n)])²²]`
-/

namespace A231505.P17216742570173836048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P17216742570173836048

namespace A231505

/-- `∑[A000120(record[A006015(n)])²²]` -/
def P17216742570173836048.Spec : Prop :=
  ∀ n, P17216742570173836048.a n = A231505 n

end A231505

/-! ## A231505.P16545342654047334526

`∑[A000120(A023709(n+1))²²]`
-/

namespace A231505.P16545342654047334526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 (A023709 (n + 1)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P16545342654047334526

namespace A231505

/-- `∑[A000120(A023709(n+1))²²]` -/
def P16545342654047334526.Spec : Prop :=
  ∀ n, P16545342654047334526.a n = A231505 n

end A231505

/-! ## A231505.P13859675780888069146

`∑[A053827(A037454(n))²²]`
-/

namespace A231505.P13859675780888069146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053827 (A037454 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P13859675780888069146

namespace A231505

/-- `∑[A053827(A037454(n))²²]` -/
def P13859675780888069146.Spec : Prop :=
  ∀ n, P13859675780888069146.a n = A231505 n

end A231505

/-! ## A231505.P1155813553225961047

`∑[A053830(A037314(n))²²]`
-/

namespace A231505.P1155813553225961047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053830 (A037314 n).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231505.P1155813553225961047

namespace A231505

/-- `∑[A053830(A037314(n))²²]` -/
def P1155813553225961047.Spec : Prop :=
  ∀ n, P1155813553225961047.a n = A231505 n

end A231505

/-!
# A231506: Primes p such that p + 3*k and p - 3*k, both are primes, where p is k-th prime.

The programs for A231506, there is no canonical definition to state claims against.
-/

/-! ## A231506.P3675705274161427195

`∩[A231383(n+1), A231432(n+1)]`
-/

namespace A231506.P3675705274161427195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231506.P3675705274161427195

/-! ## A231506.P13075209109762009318

`∩[A000040(A076298(n+1)), A231432(n+1)]`
-/

namespace A231506.P13075209109762009318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076298 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231506.P13075209109762009318

/-! ## A231506.P16946480234020950238

`∩[A008578(A076298(n+1)+1), A231432(n+1)]`
-/

namespace A231506.P16946480234020950238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A076298 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231506.P16946480234020950238

/-! ## A231506.P14076228966151982568

`∩[A219606(2*A076298(n+1)), A231432(n+1)]`
-/

namespace A231506.P14076228966151982568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A076298 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231506.P14076228966151982568

/-! ## A231506.P16464688638035532674

`∩[A207790(2*A076298(n+1)), A231432(n+1)]`
-/

namespace A231506.P16464688638035532674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A076298 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231506.P16464688638035532674

/-!
# A231507: a(n) is smallest number greater than a(n-1) such that a(n)+a(n-1) is composite.

The programs for A231507, the canonical program `A231507.P7530821481580684819` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231507 has offset 1).

The definition of A231507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231507.P3712488896497336063

`lt[Δ[A128059(n)], n]+1`
-/

namespace A231507.P3712488896497336063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A231507.P3712488896497336063

namespace A231507

/-- `lt[Δ[A128059(n)], n]+1` -/
def P3712488896497336063.Spec : Prop :=
  ∀ n, (P3712488896497336063.a n : ℤ) = A231507 (n + 1)

end A231507

/-! ## A231507.P7530821481580684819

`record[A113646(2*n+1)-n]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A231507

/-- `record[A113646(2*n+1)-n]` -/
def P7530821481580684819.Spec : Prop :=
  ∀ n, P7530821481580684819.a n = A231507 (n + 1)

theorem P7530821481580684819.correct : P7530821481580684819.Spec := by
  intro n
  simp only [A231507, Nat.add_sub_cancel]

end A231507

/-! ## A231507.P9487640255187874937

`lt[Δ[A006530(2*n+1)], n+1]+2`
-/

namespace A231507.P9487640255187874937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A231507.P9487640255187874937

namespace A231507

/-- `lt[Δ[A006530(2*n+1)], n+1]+2` -/
def P9487640255187874937.Spec : Prop :=
  ∀ n, (P9487640255187874937.a n : ℤ) = A231507 (n + 1)

end A231507

/-! ## A231507.P11923141930088050716

`lt[Δ[A051664(2*n+1)], n+1]+2`
-/

namespace A231507.P11923141930088050716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A231507.P11923141930088050716

namespace A231507

/-- `lt[Δ[A051664(2*n+1)], n+1]+2` -/
def P11923141930088050716.Spec : Prop :=
  ∀ n, (P11923141930088050716.a n : ℤ) = A231507 (n + 1)

end A231507

/-! ## A231507.P2341560825839271352

`A245511(2*a(n-1)+2)+a(n-1)` with `a(0)=4`
-/

namespace A231507.P2341560825839271352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A245511 (2 * a (n - 1) + 2).toNat + a (n - 1)

end

end A231507.P2341560825839271352

namespace A231507

/-- `A245511(2*a(n-1)+2)+a(n-1)` -/
def P2341560825839271352.Spec : Prop :=
  ∀ n, P2341560825839271352.a n = A231507 (n + 1)

end A231507

/-! ## A231507.P9391220873426045136

`record[A010051(a(n-1)+n+1)+n+1]` with `a(0)=4`
-/

namespace A231507.P9391220873426045136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A010051 (f1 (n - 1) + (n : ℤ) + 1).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231507.P9391220873426045136

namespace A231507

/-- `record[A010051(a(n-1)+n+1)+n+1]` -/
def P9391220873426045136.Spec : Prop :=
  ∀ n, P9391220873426045136.a n = A231507 (n + 1)

end A231507

/-! ## A231507.P4813737785041380493

`lt[Δ[A089026(2*n+1)], A212831(n+1)]+2`
-/

namespace A231507.P4813737785041380493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 2

end

end A231507.P4813737785041380493

namespace A231507

/-- `lt[Δ[A089026(2*n+1)], A212831(n+1)]+2` -/
def P4813737785041380493.Spec : Prop :=
  ∀ n, (P4813737785041380493.a n : ℤ) = A231507 (n + 1)

end A231507

/-! ## A231507.P5534297034197891173

`A000005(A089026(a(n-1)+a(n-1)+1))+a(n-1)` with `a(0)=4`
-/

namespace A231507.P5534297034197891173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A000005 (A089026 (a (n - 1) + a (n - 1) + 1).toNat).toNat + a (n - 1)

end

end A231507.P5534297034197891173

namespace A231507

/-- `A000005(A089026(a(n-1)+a(n-1)+1))+a(n-1)` -/
def P5534297034197891173.Spec : Prop :=
  ∀ n, P5534297034197891173.a n = A231507 (n + 1)

end A231507

/-! ## A231507.P10234451922434954086

`A000005(A061006(a(n-1)+a(n-1)+1)+1)+a(n-1)` with `a(0)=4`
-/

namespace A231507.P10234451922434954086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A000005 (A061006 (a (n - 1) + a (n - 1) + 1).toNat + 1).toNat + a (n - 1)

end

end A231507.P10234451922434954086

namespace A231507

/-- `A000005(A061006(a(n-1)+a(n-1)+1)+1)+a(n-1)` -/
def P10234451922434954086.Spec : Prop :=
  ∀ n, P10234451922434954086.a n = A231507 (n + 1)

end A231507

/-! ## A231507.P7476405227816287961

`record[A082928(A082928(2*(n+1)))-A028242(n+1)]`
-/

namespace A231507.P7476405227816287961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (A082928 (2 * (n + 1))).toNat - A028242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231507.P7476405227816287961

namespace A231507

/-- `record[A082928(A082928(2*(n+1)))-A028242(n+1)]` -/
def P7476405227816287961.Spec : Prop :=
  ∀ n, P7476405227816287961.a n = A231507 (n + 1)

end A231507

/-! ## A231507.P14567386706055622569

`record[A082928(A082928(2*(n+1)))-A123108(n+1)]`
-/

namespace A231507.P14567386706055622569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (A082928 (2 * (n + 1))).toNat - A123108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231507.P14567386706055622569

namespace A231507

/-- `record[A082928(A082928(2*(n+1)))-A123108(n+1)]` -/
def P14567386706055622569.Spec : Prop :=
  ∀ n, P14567386706055622569.a n = A231507 (n + 1)

end A231507

/-! ## A231507.P13107200830754069514

`record[A082928(A082928(2*(n+1)))-A008624(2*n+1)]`
-/

namespace A231507.P13107200830754069514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (A082928 (2 * (n + 1))).toNat - A008624 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231507.P13107200830754069514

namespace A231507

/-- `record[A082928(A082928(2*(n+1)))-A008624(2*n+1)]` -/
def P13107200830754069514.Spec : Prop :=
  ∀ n, P13107200830754069514.a n = A231507 (n + 1)

end A231507

/-! ## A231507.P689055103886115240

`record[A082928(A082928(2*(n+1)))-A110659(2*(n+1))]`
-/

namespace A231507.P689055103886115240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082928 (A082928 (2 * (n + 1))).toNat - A110659 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231507.P689055103886115240

namespace A231507

/-- `record[A082928(A082928(2*(n+1)))-A110659(2*(n+1))]` -/
def P689055103886115240.Spec : Prop :=
  ∀ n, P689055103886115240.a n = A231507 (n + 1)

end A231507

/-!
# A231508: Number of n X n 0..1 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231508, there is no canonical definition to state claims against.
-/

/-! ## A231508.P14198889088960177278

`A231515(∑[4*n]+1)`
-/

namespace A231508.P14198889088960177278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231508.P14198889088960177278

/-! ## A231508.P3115883519311730978

`record[A003982(n)*A231515(n+1)]`
-/

namespace A231508.P3115883519311730978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231508.P3115883519311730978

/-! ## A231508.P10826565454834895423

`record[root(A231515(n+1), A143182(n))]`
-/

namespace A231508.P10826565454834895423
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231515 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231508.P10826565454834895423

/-! ## A231508.P7141971539833866308

`record[gcd(A114327(n), A231515(n+1))]`
-/

namespace A231508.P7141971539833866308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A231515 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231508.P7141971539833866308

/-! ## A231508.P7436859900106985519

`record[root(A231515(n+1), A089913(n+1))]`
-/

namespace A231508.P7436859900106985519
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231515 (n + 1) : ℝ) ^ (1 / (A089913 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231508.P7436859900106985519

/-!
# A231509: Number of n X 2 0..1 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231509, there is no canonical definition to state claims against.
-/

/-! ## A231509.P16081454678884479463

`A231515(∑[n+1]+2)`
-/

namespace A231509.P16081454678884479463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231509.P16081454678884479463

/-! ## A231509.P9685410858162961417

`record[A231515(A133263(A025483(n)))]`
-/

namespace A231509.P9685410858162961417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A133263 (A025483 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231509.P9685410858162961417

/-! ## A231509.P5571048032581217130

`record[A231515(A238531(A002262(n)))]`
-/

namespace A231509.P5571048032581217130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A238531 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231509.P5571048032581217130

/-! ## A231509.P1258910749279438336

`A231515(A133263(n+1))%A196790(n)`
-/

namespace A231509.P1258910749279438336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231515 (A133263 (n + 1)).toNat) (A196790 (n + 10))

end

end A231509.P1258910749279438336

/-! ## A231509.P2625555201130396235

`A014963(A260955(n))*A231515(A133263(n+1))`
-/

namespace A231509.P2625555201130396235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A260955 n).toNat * A231515 (A133263 (n + 1)).toNat

end

end A231509.P2625555201130396235

/-!
# A231510: Number of nX3 0..1 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231510, there is no canonical definition to state claims against.
-/

/-! ## A231510.P315040441063131422

`A231515(∑[n+2]+4)`
-/

namespace A231510.P315040441063131422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231510.P315040441063131422

/-! ## A231510.P8711333751190759113

`A231515(A167614(n+1))+A011737(n)`
-/

namespace A231510.P8711333751190759113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A167614 (n + 1)).toNat + A011737 n

end

end A231510.P8711333751190759113

/-! ## A231510.P125998533618936167

`A231515(A167614(n+1))+A025469(n)`
-/

namespace A231510.P125998533618936167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A167614 (n + 1)).toNat + A025469 n

end

end A231510.P125998533618936167

/-! ## A231510.P14988492855348547134

`A231515(A167614(n+1))+A185284(n)`
-/

namespace A231510.P14988492855348547134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A167614 (n + 1)).toNat + A185284 n

end

end A231510.P14988492855348547134

/-! ## A231510.P10729821838037042610

`A015720(n)*A231515(A167614(n+1))`
-/

namespace A231510.P10729821838037042610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015720 n * A231515 (A167614 (n + 1)).toNat

end

end A231510.P10729821838037042610

/-!
# A231511: Number of nX4 0..1 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231511, there is no canonical definition to state claims against.
-/

/-! ## A231511.P9513163156648949643

`A231515(A374004(n+1))`
-/

namespace A231511.P9513163156648949643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A374004 (n + 1)).toNat

end

end A231511.P9513163156648949643

/-! ## A231511.P15197472541247764650

`A231515(A141214(n)+7)`
-/

namespace A231511.P15197472541247764650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A141214 n + 7).toNat

end

end A231511.P15197472541247764650

/-! ## A231511.P7954701632764914504

`A231515(A052905(n)+9)`
-/

namespace A231511.P7954701632764914504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A052905 n + 9).toNat

end

end A231511.P7954701632764914504

/-! ## A231511.P1312120467131903665

`A231515(A055999(n)+10)`
-/

namespace A231511.P1312120467131903665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A055999 n + 10).toNat

end

end A231511.P1312120467131903665

/-! ## A231511.P14006901114446879819

`A231515(A167614(n+2)+1)`
-/

namespace A231511.P14006901114446879819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A167614 (n + 2) + 1).toNat

end

end A231511.P14006901114446879819

/-!
# A231512: Number of nX5 0..1 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231512, there is no canonical definition to state claims against.
-/

/-! ## A231512.P17208658576841684051

`A231515(A374005(n+1))`
-/

namespace A231512.P17208658576841684051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A374005 (n + 1)).toNat

end

end A231512.P17208658576841684051

/-! ## A231512.P9324551177444869660

`A231515(A155212(n)+13)`
-/

namespace A231512.P9324551177444869660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A155212 n + 13).toNat

end

end A231512.P9324551177444869660

/-! ## A231512.P1891572739400783186

`A231515(eq[6, A131818(n+1)])`
-/

namespace A231512.P1891572739400783186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231512.P1891572739400783186

/-! ## A231512.P14787549629211112885

`A231515(A038722(Δ[A264443(n)]))`
-/

namespace A231512.P14787549629211112885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A231512.P14787549629211112885

/-! ## A231512.P13778009133354865828

`A231515(Δ[A264443(n)])`
-/

namespace A231512.P13778009133354865828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (f1 (n + 1) - f1 n).toNat

end

end A231512.P13778009133354865828

/-!
# A231513: Number of nX6 0..1 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231513, there is no canonical definition to state claims against.
-/

/-! ## A231513.P4765551933711281868

`A231515(A374007(n+1))`
-/

namespace A231513.P4765551933711281868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A374007 (n + 1)).toNat

end

end A231513.P4765551933711281868

/-! ## A231513.P22947631243730267

`A231515(eq[7, A131818(n+1)])`
-/

namespace A231513.P22947631243730267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231513.P22947631243730267

/-! ## A231513.P11772532050202598245

`A231515(A052905(n+3))`
-/

namespace A231513.P11772532050202598245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A052905 (n + 3)).toNat

end

end A231513.P11772532050202598245

/-! ## A231513.P1283628944865348432

`A231515(eq[3, A219347(n)])`
-/

namespace A231513.P1283628944865348432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231513.P1283628944865348432

/-! ## A231513.P1312098121932693530

`A231515(eq[6, A200370(n+1)])`
-/

namespace A231513.P1312098121932693530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231513.P1312098121932693530

/-!
# A231514: Number of nX7 0..1 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231514, there is no canonical definition to state claims against.
-/

/-! ## A231514.P15361682201958732239

`A231515(A374008(n+1))`
-/

namespace A231514.P15361682201958732239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A374008 (n + 1)).toNat

end

end A231514.P15361682201958732239

/-! ## A231514.P9138119150691352459

`A231515(eq[8, A131818(n+1)])`
-/

namespace A231514.P9138119150691352459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231514.P9138119150691352459

/-! ## A231514.P14911638502544263750

`A231515(A055999(n+4))`
-/

namespace A231514.P14911638502544263750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (A055999 (n + 4)).toNat

end

end A231514.P14911638502544263750

/-! ## A231514.P11176977186454510885

`A231515(eq[4, A219347(n)])`
-/

namespace A231514.P11176977186454510885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231514.P11176977186454510885

/-! ## A231514.P8626915228432289691

`A231515(eq[7, A200370(n+1)])`
-/

namespace A231514.P8626915228432289691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231514.P8626915228432289691

/-!
# A231516: Number of ways to write n = x + y with 0 < x <= y such that x!*y + 1 is prime.

The programs for A231516, there is no canonical definition to state claims against.
-/

/-! ## A231516.P16741740259752651413

`∑{p}[A096748(n), A020639(A019538(#))]`
-/

namespace A231516.P16741740259752651413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 (A019538 p).toNat

end

end A231516.P16741740259752651413

/-! ## A231516.P16703984686774213187

`∑{p}[A096748(n), A005811(A156042(#))]`
-/

namespace A231516.P16703984686774213187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A005811 (A156042 p).toNat

end

end A231516.P16703984686774213187

/-! ## A231516.P14743934475702823317

`A001221(A027718(n+1)+A026736(n))`
-/

namespace A231516.P14743934475702823317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A027718 (n + 1) + A026736 n).toNat

end

end A231516.P14743934475702823317

/-! ## A231516.P5629021841631328390

`A001221(or(A161532(n), A280839(n)))`
-/

namespace A231516.P5629021841631328390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A161532 n) (A280839 n)).toNat

end

end A231516.P5629021841631328390

/-! ## A231516.P6962032848086000839

`A001222(or(A161532(n), A280839(n)))`
-/

namespace A231516.P6962032848086000839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A161532 n) (A280839 n)).toNat

end

end A231516.P6962032848086000839

/-!
# A231517: Number of n X n 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231517, there is no canonical definition to state claims against.
-/

/-! ## A231517.P3565779078009645264

`A231523(∑[4*n]+1)`
-/

namespace A231517.P3565779078009645264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231517.P3565779078009645264

/-! ## A231517.P4647760059109500004

`record[A003982(n)*A231523(n+1)]`
-/

namespace A231517.P4647760059109500004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A231523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231517.P4647760059109500004

/-! ## A231517.P15726463617638157685

`A231523(A001844(n))+A034512(n+1)`
-/

namespace A231517.P15726463617638157685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A001844 n).toNat + A034512 (n + 1)

end

end A231517.P15726463617638157685

/-! ## A231517.P10042394212839987585

`A231523(A001844(n))+A162781(n+1)`
-/

namespace A231517.P10042394212839987585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A001844 n).toNat + A162781 (n + 1)

end

end A231517.P10042394212839987585

/-! ## A231517.P9171315067969015247

`A231523(A001844(n))*A272917(n+1)`
-/

namespace A231517.P9171315067969015247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A001844 n).toNat * A272917 (n + 1)

end

end A231517.P9171315067969015247

/-!
# A231518: Number of nX3 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231518, there is no canonical definition to state claims against.
-/

/-! ## A231518.P13408705194295537266

`A231523(∑[n+3]+1)`
-/

namespace A231518.P13408705194295537266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231518.P13408705194295537266

/-! ## A231518.P9056008918729053513

`A231523(A034856(n+2))^A266724(2*n+1)`
-/

namespace A231518.P9056008918729053513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231523 (A034856 (n + 2)).toNat : ℚ) ^ (A266724 (2 * n + 1) : ℤ)

end

end A231518.P9056008918729053513

/-! ## A231518.P8101194783328705264

`A346392(2^val(n+1, 2))+A231523(A034856(n+2))`
-/

namespace A231518.P8101194783328705264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (2 ^ SequenceMachineLib.valuation (n + 1) 2) + A231523 (A034856 (n + 2)).toNat

end

end A231518.P8101194783328705264

/-! ## A231518.P6221596218937721499

`A231523(A034856(n+2))%A053112(A033552(n))`
-/

namespace A231518.P6221596218937721499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231523 (A034856 (n + 2)).toNat) (A053112 (A033552 n).toNat)

end

end A231518.P6221596218937721499

/-! ## A231518.P7735592739261273403

`A231523(A034856(n+2))-A346392(A000005(n+1))`
-/

namespace A231518.P7735592739261273403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A034856 (n + 2)).toNat - A346392 (A000005 (n + 1)).toNat

end

end A231518.P7735592739261273403

/-!
# A231519: Number of n X 4 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231519, there is no canonical definition to state claims against.
-/

/-! ## A231519.P120751474324057447

`A231523(A141214(n+1))`
-/

namespace A231519.P120751474324057447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A141214 (n + 1)).toNat

end

end A231519.P120751474324057447

/-! ## A231519.P2488999907509411326

`A231523(A155212(n)+5)`
-/

namespace A231519.P2488999907509411326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A155212 n + 5).toNat

end

end A231519.P2488999907509411326

/-! ## A231519.P15376603531774780170

`A231523(A056000(n)+7)`
-/

namespace A231519.P15376603531774780170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A056000 n + 7).toNat

end

end A231519.P15376603531774780170

/-! ## A231519.P7349307746840875921

`A231523(eq[2, A054123(n)])`
-/

namespace A231519.P7349307746840875921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231519.P7349307746840875921

/-! ## A231519.P14452220626025348206

`A231523(A052905(n+1)+2)`
-/

namespace A231519.P14452220626025348206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A052905 (n + 1) + 2).toNat

end

end A231519.P14452220626025348206

/-!
# A231520: Number of nX5 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231520, there is no canonical definition to state claims against.
-/

/-! ## A231520.P11173173085642080787

`A231523(Δ[A264443(n)])`
-/

namespace A231520.P11173173085642080787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (f1 (n + 1) - f1 n).toNat

end

end A231520.P11173173085642080787

/-! ## A231520.P15269175162183819885

`A231523(A046691(n+3))`
-/

namespace A231520.P15269175162183819885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A046691 (n + 3)).toNat

end

end A231520.P15269175162183819885

/-! ## A231520.P14274272644485897996

`A231523(A056115(n)+11)`
-/

namespace A231520.P14274272644485897996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A056115 n + 11).toNat

end

end A231520.P14274272644485897996

/-! ## A231520.P15640253763928641797

`A231523(eq[4, A193592(n)])`
-/

namespace A231520.P15640253763928641797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231520.P15640253763928641797

/-! ## A231520.P9398281371008486634

`A231523(eq[8, A166065(n)])`
-/

namespace A231520.P9398281371008486634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231520.P9398281371008486634

/-!
# A231521: Number of nX6 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231521, there is no canonical definition to state claims against.
-/

/-! ## A231521.P16027782302052122833

`A231523(A052905(n+3))`
-/

namespace A231521.P16027782302052122833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A052905 (n + 3)).toNat

end

end A231521.P16027782302052122833

/-! ## A231521.P1736719755496499409

`A231523(eq[3, A219347(n)])`
-/

namespace A231521.P1736719755496499409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231521.P1736719755496499409

/-! ## A231521.P6587912745062085409

`A231523(eq[5, A193592(n)])`
-/

namespace A231521.P6587912745062085409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231521.P6587912745062085409

/-! ## A231521.P13368970169287117675

`A231523(eq[8, A258709(n)])`
-/

namespace A231521.P13368970169287117675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231521.P13368970169287117675

/-! ## A231521.P6506566293635914762

`A231523(A000124(n+6)-6)`
-/

namespace A231521.P6506566293635914762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A000124 (n + 6) - 6).toNat

end

end A231521.P6506566293635914762

/-!
# A231522: Number of n X 7 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231522, there is no canonical definition to state claims against.
-/

/-! ## A231522.P4963524769852190419

`A231523(eq[4, A219347(n)])`
-/

namespace A231522.P4963524769852190419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231522.P4963524769852190419

/-! ## A231522.P1638683148626659290

`A231523(eq[6, A193592(n)])`
-/

namespace A231522.P1638683148626659290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231522.P1638683148626659290

/-! ## A231522.P17374370545968005493

`A231523(A000124(n+7)-7)`
-/

namespace A231522.P17374370545968005493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A000124 (n + 7) - 7).toNat

end

end A231522.P17374370545968005493

/-! ## A231522.P5590809623932628997

`A231523(eq[7, A200370(n+1)])`
-/

namespace A231522.P5590809623932628997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231522.P5590809623932628997

/-! ## A231522.P10523596870739263237

`A231523(eq[10, A185782(n+1)])`
-/

namespace A231522.P10523596870739263237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231522.P10523596870739263237

/-!
# A231524: Number of 2 X n 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231524, the canonical program `A231524.P11680244468638570778` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231524 has offset 1).

The definition of A231524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231524.P11680244468638570778

`4*a(n-1)-3*a(n-2)+a(n-3)+6*a(n-4)-18*a(n-5)` with `a(0)=4, a(1)=10, a(2)=34, a(3)=107, a(4)=342`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231524

/-- `4*a(n-1)-3*a(n-2)+a(n-3)+6*a(n-4)-18*a(n-5)` -/
def P11680244468638570778.Spec : Prop :=
  ∀ n, P11680244468638570778.a n = A231524 (n + 1)

theorem P11680244468638570778.correct : P11680244468638570778.Spec := by
  intro n
  simp only [A231524, Nat.add_sub_cancel]

end A231524

/-! ## A231524.P15274385969777654403

`A231523(∑[n+1]+2)`
-/

namespace A231524.P15274385969777654403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231524.P15274385969777654403

namespace A231524

/-- `A231523(∑[n+1]+2)` -/
def P15274385969777654403.Spec : Prop :=
  ∀ n, P15274385969777654403.a n = A231524 (n + 1)

end A231524

/-! ## A231524.P12420203711304314257

`record[A231523(n+3)/A142459(n+2)]`
-/

namespace A231524.P12420203711304314257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231523 (n + 3) : ℚ) / (A142459 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231524.P12420203711304314257

namespace A231524

/-- `record[A231523(n+3)/A142459(n+2)]` -/
def P12420203711304314257.Spec : Prop :=
  ∀ n, P12420203711304314257.a n = (A231524 (n + 1) : ℚ)

end A231524

/-! ## A231524.P1722336694368825232

`record[root(A231523(n+3), A144151(n+1))]`
-/

namespace A231524.P1722336694368825232
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231523 (n + 3) : ℝ) ^ (1 / (A144151 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231524.P1722336694368825232

namespace A231524

/-- `record[root(A231523(n+3), A144151(n+1))]` -/
def P1722336694368825232.Spec : Prop :=
  ∀ n, P1722336694368825232.a n = (A231524 (n + 1) : ℝ)

end A231524

/-! ## A231524.P17242139114082443893

`lcm(or(1, -n)%2, A231523(A255128(2*(n+2))))`
-/

namespace A231524.P17242139114082443893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (Int.lor 1 (-(n : ℤ))) 2) (A231523 (A255128 (2 * (n + 2))).toNat)

end

end A231524.P17242139114082443893

namespace A231524

/-- `lcm(or(1, -n)%2, A231523(A255128(2*(n+2))))` -/
def P17242139114082443893.Spec : Prop :=
  ∀ n, (P17242139114082443893.a n : ℤ) = A231524 (n + 1)

end A231524

/-!
# A231525: Number of 3Xn 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231525, there is no canonical definition to state claims against.
-/

/-! ## A231525.P6339797066724603218

`A231523(∑[n+2]+4)`
-/

namespace A231525.P6339797066724603218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231525.P6339797066724603218

/-! ## A231525.P1136696623880655241

`A152851(n)*A231523(A167614(n+1))`
-/

namespace A231525.P1136696623880655241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A231523 (A167614 (n + 1)).toNat

end

end A231525.P1136696623880655241

/-! ## A231525.P11591941215377838890

`lcm(A033999(n), A231523(A167614(n+1)))`
-/

namespace A231525.P11591941215377838890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A231523 (A167614 (n + 1)).toNat)

end

end A231525.P11591941215377838890

/-! ## A231525.P10784416557539537722

`A033999(2*n)*A231523(A167614(n+1))`
-/

namespace A231525.P10784416557539537722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A231523 (A167614 (n + 1)).toNat

end

end A231525.P10784416557539537722

/-! ## A231525.P8627569598764290124

`A231523(A167614(n+1))%A016224(n+1)`
-/

namespace A231525.P8627569598764290124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231523 (A167614 (n + 1)).toNat) (A016224 (n + 1))

end

end A231525.P8627569598764290124

/-!
# A231526: Number of 4Xn 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231526, there is no canonical definition to state claims against.
-/

/-! ## A231526.P17088322467213533621

`A231523(A141214(n)+7)`
-/

namespace A231526.P17088322467213533621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A141214 n + 7).toNat

end

end A231526.P17088322467213533621

/-! ## A231526.P14600905560793171540

`A231523(A052905(n)+9)`
-/

namespace A231526.P14600905560793171540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A052905 n + 9).toNat

end

end A231526.P14600905560793171540

/-! ## A231526.P3456929488647506728

`A231523(A055999(n)+10)`
-/

namespace A231526.P3456929488647506728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A055999 n + 10).toNat

end

end A231526.P3456929488647506728

/-! ## A231526.P7829582647191531787

`A231523(A167614(n+2)+1)`
-/

namespace A231526.P7829582647191531787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A167614 (n + 2) + 1).toNat

end

end A231526.P7829582647191531787

/-! ## A231526.P16647268266327288205

`A231523(eq[5, A131818(n+1)])`
-/

namespace A231526.P16647268266327288205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231526.P16647268266327288205

/-!
# A231527: Number of 5Xn 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231527, there is no canonical definition to state claims against.
-/

/-! ## A231527.P6472364012455315012

`A231523(A167499(n+3))`
-/

namespace A231527.P6472364012455315012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A167499 (n + 3)).toNat

end

end A231527.P6472364012455315012

/-! ## A231527.P12645393841271306417

`A231523(A155212(n)+13)`
-/

namespace A231527.P12645393841271306417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A155212 n + 13).toNat

end

end A231527.P12645393841271306417

/-! ## A231527.P11281048514788667289

`A231523(A056000(n)+15)`
-/

namespace A231527.P11281048514788667289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A056000 n + 15).toNat

end

end A231527.P11281048514788667289

/-! ## A231527.P2328717970447376134

`A231523(eq[7, A066657(n)])`
-/

namespace A231527.P2328717970447376134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231527.P2328717970447376134

/-! ## A231527.P15795939082926736992

`A231523(eq[6, A131818(n+1)])`
-/

namespace A231527.P15795939082926736992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231527.P15795939082926736992

/-!
# A231528: Number of 6Xn 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231528, there is no canonical definition to state claims against.
-/

/-! ## A231528.P16643878425454819870

`A231523(A056115(n)+21)`
-/

namespace A231528.P16643878425454819870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A056115 n + 21).toNat

end

end A231528.P16643878425454819870

/-! ## A231528.P14089521089292803143

`A231523(A167499(n+4)+1)`
-/

namespace A231528.P14089521089292803143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A167499 (n + 4) + 1).toNat

end

end A231528.P14089521089292803143

/-! ## A231528.P10610528401713729530

`A231523(A000217(n+5)+6)`
-/

namespace A231528.P10610528401713729530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A000217 (n + 5) + 6).toNat

end

end A231528.P10610528401713729530

/-! ## A231528.P15504768311158724507

`A231523(eq[7, A131818(n+1)])`
-/

namespace A231528.P15504768311158724507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231528.P15504768311158724507

/-! ## A231528.P7553121950847901853

`A231523(A000124(n+6)-(n+1))`
-/

namespace A231528.P7553121950847901853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A231528.P7553121950847901853

/-!
# A231529: Number of 7Xn 0..1 arrays with no element less than a strict majority of its horizontal, diagonal and antidiagonal neighbors.

The programs for A231529, there is no canonical definition to state claims against.
-/

/-! ## A231529.P14706415593875656371

`A231523(A167487(n+5))`
-/

namespace A231529.P14706415593875656371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A167487 (n + 5)).toNat

end

end A231529.P14706415593875656371

/-! ## A231529.P17728709247451238356

`A231523(A056119(n)+28)`
-/

namespace A231529.P17728709247451238356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A056119 n + 28).toNat

end

end A231529.P17728709247451238356

/-! ## A231529.P4999241617251740880

`A231523(eq[11, A066657(n)])`
-/

namespace A231529.P4999241617251740880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231529.P4999241617251740880

/-! ## A231529.P16650309171015877388

`A231523(A000124(n+6)+6)`
-/

namespace A231529.P16650309171015877388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A000124 (n + 6) + 6).toNat

end

end A231529.P16650309171015877388

/-! ## A231529.P2657383581760790645

`A231523(A000096(n+5)+8)`
-/

namespace A231529.P2657383581760790645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231523 (A000096 (n + 5) + 8).toNat

end

end A231529.P2657383581760790645

/-!
# A231530: Real part of Product_{k=1..n} (k+i), where i is the imaginary unit.

The programs for A231530, there is no canonical definition to state claims against.
-/

/-! ## A231530.P6172443568677403622

`(-1)^n*A009454(n+1)`
-/

namespace A231530.P6172443568677403622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A009454 (n + 1)

end

end A231530.P6172443568677403622

/-! ## A231530.P7813227550439782530

`A242652(n)/(-1)^n`
-/

namespace A231530.P7813227550439782530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242652 n : ℚ) / ((-1) ^ n : ℚ)

end

end A231530.P7813227550439782530

/-! ## A231530.P16759198553592899998

`A009454(n+1)/(-1)^n`
-/

namespace A231530.P16759198553592899998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009454 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A231530.P16759198553592899998

/-! ## A231530.P3700770341675417683

`A033999(n)*A242652(n)`
-/

namespace A231530.P3700770341675417683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A242652 n

end

end A231530.P3700770341675417683

/-! ## A231530.P13269196491653619168

`A009454(n+1)*A101455(2*n+1)`
-/

namespace A231530.P13269196491653619168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009454 (n + 1) * A101455 (2 * n + 1)

end

end A231530.P13269196491653619168

/-! ## A231530.P2598031342862746176

`A009454(n+1)*A117569(2*n+1)`
-/

namespace A231530.P2598031342862746176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009454 (n + 1) * A117569 (2 * n + 1)

end

end A231530.P2598031342862746176

/-! ## A231530.P5960488691685232443

`A009454(n+1)/A105750(n+1)*A220449(n+1)`
-/

namespace A231530.P5960488691685232443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009454 (n + 1) : ℚ) / (A105750 (n + 1) : ℚ) * (A220449 (n + 1) : ℚ)

end

end A231530.P5960488691685232443

/-! ## A231530.P11355467177535519513

`Δ[A231531(n)]-n*A231531(n)`
-/

namespace A231530.P11355467177535519513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) * A231531 n

end

end A231530.P11355467177535519513

/-!
# A231531: Imaginary part of Product_{k = 1..n} (k + i), i = sqrt(-1).

The programs for A231531, the canonical program `A231531.P4690013620675057081` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231531 has offset 0).

The definition of A231531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231531.P4690013620675057081

`(2*n-1)*a(n-1)-(n²-2*n+2)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231531

/-- `(2*n-1)*a(n-1)-(n²-2*n+2)*a(n-2)` -/
def P4690013620675057081.Spec : Prop :=
  ∀ n, P4690013620675057081.a n = A231531 n

theorem P4690013620675057081.correct : P4690013620675057081.Spec := by
  intro n
  simp only [A231531]

end A231531

/-! ## A231531.P10178022954158727404

`(-1)^n*A003703(n+1)`
-/

namespace A231531.P10178022954158727404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A003703 (n + 1)

end

end A231531.P10178022954158727404

namespace A231531

/-- `(-1)^n*A003703(n+1)` -/
def P10178022954158727404.Spec : Prop :=
  ∀ n, P10178022954158727404.a n = A231531 n

end A231531

/-! ## A231531.P3309669823045789061

`A003703(n+1)*A033999(n)`
-/

namespace A231531.P3309669823045789061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003703 (n + 1) * A033999 n

end

end A231531.P3309669823045789061

namespace A231531

/-- `A003703(n+1)*A033999(n)` -/
def P3309669823045789061.Spec : Prop :=
  ∀ n, P3309669823045789061.a n = A231531 n

end A231531

/-! ## A231531.P14614437483938470377

`n*A231530(n)-Δ[A231530(n)]`
-/

namespace A231531.P14614437483938470377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A231530 n - (f1 (n + 1) - f1 n)

end

end A231531.P14614437483938470377

namespace A231531

/-- `n*A231530(n)-Δ[A231530(n)]` -/
def P14614437483938470377.Spec : Prop :=
  ∀ n, P14614437483938470377.a n = A231531 n

end A231531

/-! ## A231531.P4415394814526199132

`A003703(n+1)/A105750(n+1)*A220449(n+1)`
-/

namespace A231531.P4415394814526199132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003703 (n + 1) : ℚ) / (A105750 (n + 1) : ℚ) * (A220449 (n + 1) : ℚ)

end

end A231531.P4415394814526199132

namespace A231531

/-- `A003703(n+1)/A105750(n+1)*A220449(n+1)` -/
def P4415394814526199132.Spec : Prop :=
  ∀ n, P4415394814526199132.a n = (A231531 n : ℚ)

end A231531

/-!
# A231536: Triangular array read by rows. T(n,k) is the number of functions f:{1,2,...,n}->{1,2,...,n} whose functional digraph has exactly k nodes such that no nonrecurrent element is mapped into it. n >= 1, 1 <= k <= n.

The programs for A231536, there is no canonical definition to state claims against.
-/

/-! ## A231536.P7290156721180085614

`A054255(A032559(n+1))*A135278(n)`
-/

namespace A231536.P7290156721180085614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054255 (A032559 (n + 1)).toNat * A135278 n

end

end A231536.P7290156721180085614

/-! ## A231536.P6130138603143352889

`A095858(A306276(n))+A071208(n+1)`
-/

namespace A231536.P6130138603143352889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095858 (A306276 n).toNat + A071208 (n + 1)

end

end A231536.P6130138603143352889

/-! ## A231536.P4691533461300924229

`A002024(n+1)*A219347(A183608(n))`
-/

namespace A231536.P4691533461300924229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A219347 (A183608 n).toNat

end

end A231536.P4691533461300924229

/-!
# A231537: Number of n X n 0..1 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231537, there is no canonical definition to state claims against.
-/

/-! ## A231537.P4693575232274167242

`A231544(∑[4*n]+1)`
-/

namespace A231537.P4693575232274167242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A231537.P4693575232274167242

/-! ## A231537.P17885319085965157330

`A231544(A001844(n))+char[18]`
-/

namespace A231537.P17885319085965157330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A231537.P17885319085965157330

/-! ## A231537.P3878349793847588977

`record[gcd(A114327(n), A231544(n+1))]`
-/

namespace A231537.P3878349793847588977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A231544 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231537.P3878349793847588977

/-! ## A231537.P18388204022952015722

`A231544(A001844(n))*A279758(n)`
-/

namespace A231537.P18388204022952015722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A001844 n).toNat * A279758 n

end

end A231537.P18388204022952015722

/-! ## A231537.P12225960023465456

`A007318(C(n, 2))*A231544(A001844(n))`
-/

namespace A231537.P12225960023465456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A231544 (A001844 n).toNat

end

end A231537.P12225960023465456

/-!
# A231538: Number of n X 2 0..1 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231538, there is no canonical definition to state claims against.
-/

/-! ## A231538.P16327469090279259763

`A231544(∑[n+1]+2)`
-/

namespace A231538.P16327469090279259763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231538.P16327469090279259763

/-! ## A231538.P17240150240341864544

`record[A231544(A133263(A002262(n)))]`
-/

namespace A231538.P17240150240341864544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A133263 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231538.P17240150240341864544

/-! ## A231538.P920418940610014103

`record[A231544(A117142(n+1))]`
-/

namespace A231538.P920418940610014103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231538.P920418940610014103

/-! ## A231538.P3120065208583482212

`record[A097806(n)*A231544(n+1)]`
-/

namespace A231538.P3120065208583482212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A231544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231538.P3120065208583482212

/-! ## A231538.P10397491456279531986

`record[root(A231544(n+1), A230698(n))]`
-/

namespace A231538.P10397491456279531986
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231544 (n + 1) : ℝ) ^ (1 / (A230698 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231538.P10397491456279531986

/-!
# A231539: Number of nX3 0..1 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231539, there is no canonical definition to state claims against.
-/

/-! ## A231539.P1378096208106122486

`A231544(∑[n+2]+4)`
-/

namespace A231539.P1378096208106122486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231539.P1378096208106122486

/-! ## A231539.P10820899195249671166

`lcm((-1)^n, A231544(A167614(n+1)))`
-/

namespace A231539.P10820899195249671166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A231544 (A167614 (n + 1)).toNat)

end

end A231539.P10820899195249671166

/-! ## A231539.P16017932677257957026

`A231544(A167614(n+1))+A185284(n)`
-/

namespace A231539.P16017932677257957026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A167614 (n + 1)).toNat + A185284 n

end

end A231539.P16017932677257957026

/-! ## A231539.P14412617222326988874

`A231544(A167614(n+1))%A231540(n+1)`
-/

namespace A231539.P14412617222326988874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231544 (A167614 (n + 1)).toNat) (A231540 (n + 1))

end

end A231539.P14412617222326988874

/-! ## A231539.P11347032118091639319

`or(A024362(n+1), A231544(A167614(n+1)))`
-/

namespace A231539.P11347032118091639319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024362 (n + 1)) (A231544 (A167614 (n + 1)).toNat)

end

end A231539.P11347032118091639319

/-!
# A231540: Number of nX4 0..1 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231540, there is no canonical definition to state claims against.
-/

/-! ## A231540.P53210402526205759

`A231544(∑[n+3]+7)`
-/

namespace A231540.P53210402526205759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A231540.P53210402526205759

/-! ## A231540.P589714922354451072

`A231544(A141214(n+1))%A198282(n+1)`
-/

namespace A231540.P589714922354451072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231544 (A141214 (n + 1)).toNat) (A198282 (n + 1))

end

end A231540.P589714922354451072

/-!
# A231541: Number of nX5 0..1 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231541, there is no canonical definition to state claims against.
-/

/-! ## A231541.P3885642103334232458

`A231544(A374005(n+1))`
-/

namespace A231541.P3885642103334232458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A374005 (n + 1)).toNat

end

end A231541.P3885642103334232458

/-! ## A231541.P1814177375726650407

`A231544(A056000(n)+15)`
-/

namespace A231541.P1814177375726650407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A056000 n + 15).toNat

end

end A231541.P1814177375726650407

/-! ## A231541.P10283020971929438175

`A231544(eq[6, A131818(n+1)])`
-/

namespace A231541.P10283020971929438175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231541.P10283020971929438175

/-! ## A231541.P15735021591044575483

`A231544(Δ[A023545(n+1)])`
-/

namespace A231541.P15735021591044575483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (f1 (n + 1) - f1 n).toNat

end

end A231541.P15735021591044575483

/-! ## A231541.P5193600493082027543

`A231544(eq[6, A185782(n+1)])`
-/

namespace A231541.P5193600493082027543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231541.P5193600493082027543

/-!
# A231542: Number of nX6 0..1 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231542, there is no canonical definition to state claims against.
-/

/-! ## A231542.P5957347141762224052

`A231544(A374007(n+1))`
-/

namespace A231542.P5957347141762224052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A374007 (n + 1)).toNat

end

end A231542.P5957347141762224052

/-! ## A231542.P2965827774105601525

`A231544(A167614(n+4)+3)`
-/

namespace A231542.P2965827774105601525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A167614 (n + 4) + 3).toNat

end

end A231542.P2965827774105601525

/-! ## A231542.P13700670858617411793

`A231544(eq[7, A131818(n+1)])`
-/

namespace A231542.P13700670858617411793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231542.P13700670858617411793

/-! ## A231542.P2056888552258674311

`A231544(eq[8, A185782(n+1)])`
-/

namespace A231542.P2056888552258674311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231542.P2056888552258674311

/-! ## A231542.P6221065273354300466

`A231544(eq[16, A057728(n+1)])`
-/

namespace A231542.P6221065273354300466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231542.P6221065273354300466

/-!
# A231543: Number of nX7 0..1 arrays with no element less than a strict majority of its horizontal, vertical and antidiagonal neighbors.

The programs for A231543, there is no canonical definition to state claims against.
-/

/-! ## A231543.P11637527932929355159

`A231544(A374008(n+1))`
-/

namespace A231543.P11637527932929355159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A374008 (n + 1)).toNat

end

end A231543.P11637527932929355159

/-! ## A231543.P13367359751059060075

`A231544(A167487(n+5))`
-/

namespace A231543.P13367359751059060075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A167487 (n + 5)).toNat

end

end A231543.P13367359751059060075

/-! ## A231543.P1429487296332440090

`A231544(A167499(n+5)+2)`
-/

namespace A231543.P1429487296332440090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A167499 (n + 5) + 2).toNat

end

end A231543.P1429487296332440090

/-! ## A231543.P420850834080054697

`A231544(eq[8, A131818(n+1)])`
-/

namespace A231543.P420850834080054697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231543.P420850834080054697

/-! ## A231543.P5897859989923860134

`A231544(A055999(n+4))`
-/

namespace A231543.P5897859989923860134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231544 (A055999 (n + 4)).toNat

end

end A231543.P5897859989923860134

/-!
# A231545: Numbers n such that n = sigma(n) - sigma(n-1).

The programs for A231545, there is no canonical definition to state claims against.
-/

/-! ## A231545.P13739750309920221747

`A067816(n+1)+1`
-/

namespace A231545.P13739750309920221747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067816 (n + 1) + 1

end

end A231545.P13739750309920221747

/-!
# A231546: Numbers k such that sigma(k) = sigma(k-1).

The programs for A231546, there is no canonical definition to state claims against.
-/

/-! ## A231546.P12226611452436151507

`A002961(n+1)+1`
-/

namespace A231546.P12226611452436151507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1) + 1

end

end A231546.P12226611452436151507

/-! ## A231546.P17296286641399840401

`∩[A058072(n+1), A058073(n+1)]+1`
-/

namespace A231546.P17296286641399840401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A231546.P17296286641399840401

/-! ## A231546.P11377868937918932136

`∩[A058073(n+1), A223136(n+1)]+1`
-/

namespace A231546.P11377868937918932136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A231546.P11377868937918932136

/-! ## A231546.P13969461186262578060

`A225757(2*(n+1))`
-/

namespace A231546.P13969461186262578060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (2 * (n + 1))

end

end A231546.P13969461186262578060

/-! ## A231546.P10458514249292351782

`A225757(Δ[n²])+1`
-/

namespace A231546.P10458514249292351782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A231546.P10458514249292351782

/-! ## A231546.P4006467314516431971

`record[A225757(n+1)+(-1)^n]`
-/

namespace A231546.P4006467314516431971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231546.P4006467314516431971

/-! ## A231546.P1296844938829726724

`record[A225757(A029578(n+3))]`
-/

namespace A231546.P1296844938829726724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (A029578 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231546.P1296844938829726724

/-! ## A231546.P5270912368065432012

`record[A225757(2*A065648(n))]`
-/

namespace A231546.P5270912368065432012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (2 * A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231546.P5270912368065432012

/-! ## A231546.P12719713688546121021

`record[A225757(A000265(n+1)+1)]`
-/

namespace A231546.P12719713688546121021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231546.P12719713688546121021

/-! ## A231546.P16206968014066016558

`∩[A225757(n+1), A227307(n+1)]`
-/

namespace A231546.P16206968014066016558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231546.P16206968014066016558

/-! ## A231546.P10612222802118377284

`∩[A058072(n+1)+1, A225757(n+1)]`
-/

namespace A231546.P10612222802118377284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231546.P10612222802118377284

/-! ## A231546.P9366093439037170451

`∩[A058073(n+1)+1, A225757(n+1)]`
-/

namespace A231546.P9366093439037170451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231546.P9366093439037170451

/-! ## A231546.P7647974752588537530

`∩[A072611(n+1)+1, A225757(n+1)]`
-/

namespace A231546.P7647974752588537530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231546.P7647974752588537530

/-! ## A231546.P13030085149137222874

`∩[A223136(n+1)+1, A225757(n+1)]`
-/

namespace A231546.P13030085149137222874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231546.P13030085149137222874

/-! ## A231546.P2058459450978538715

`∩[A066025(n+1), A223136(n+1)]+1`
-/

namespace A231546.P2058459450978538715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A231546.P2058459450978538715

/-! ## A231546.P12993117413420303039

`∩[A066025(n+1)+1, A225757(n+1)]`
-/

namespace A231546.P12993117413420303039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066025 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231546.P12993117413420303039

/-!
# A231547: Numbers n such that n < sigma(n) - sigma(n-1).

The programs for A231547, the canonical program `A231547.P1957663487271201341` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231547 has offset 1).

The definition of A231547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1785 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231547.P918462809877644234

`lt[n², A335153(n+1)]+1`
-/

namespace A231547.P918462809877644234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A231547.P918462809877644234

namespace A231547

/-- `lt[n², A335153(n+1)]+1` -/
def P918462809877644234.Spec : Prop :=
  ∀ n, (P918462809877644234.a n : ℤ) = A231547 (n + 1)

end A231547

/-! ## A231547.P16820586408207832582

`lt[n+1, A053246(n+1)]+2`
-/

namespace A231547.P16820586408207832582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A231547.P16820586408207832582

namespace A231547

/-- `lt[n+1, A053246(n+1)]+2` -/
def P16820586408207832582.Spec : Prop :=
  ∀ n, (P16820586408207832582.a n : ℤ) = A231547 (n + 1)

end A231547

/-! ## A231547.P1432532071767031151

`lt[A039653(n), A048050(n+1)]+1`
-/

namespace A231547.P1432532071767031151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A231547.P1432532071767031151

namespace A231547

/-- `lt[A039653(n), A048050(n+1)]+1` -/
def P1432532071767031151.Spec : Prop :=
  ∀ n, (P1432532071767031151.a n : ℤ) = A231547 (n + 1)

end A231547

/-! ## A231547.P13245030043919797914

`A020725(lt[n+1, A340793(n+1)])`
-/

namespace A231547.P13245030043919797914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A231547.P13245030043919797914

namespace A231547

/-- `A020725(lt[n+1, A340793(n+1)])` -/
def P13245030043919797914.Spec : Prop :=
  ∀ n, P13245030043919797914.a n = A231547 (n + 1)

end A231547

/-! ## A231547.P5435202804001168651

`lt[A024816(n+2), A024816(n+1)]+2`
-/

namespace A231547.P5435202804001168651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A231547.P5435202804001168651

namespace A231547

/-- `lt[A024816(n+2), A024816(n+1)]+2` -/
def P5435202804001168651.Spec : Prop :=
  ∀ n, (P5435202804001168651.a n : ℤ) = A231547 (n + 1)

end A231547

/-! ## A231547.P12878154529557990803

`lt[A294888(n+1), A033880(n+2)]+2`
-/

namespace A231547.P12878154529557990803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A231547.P12878154529557990803

namespace A231547

/-- `lt[A294888(n+1), A033880(n+2)]+2` -/
def P12878154529557990803.Spec : Prop :=
  ∀ n, (P12878154529557990803.a n : ℤ) = A231547 (n + 1)

end A231547

/-! ## A231547.P15186517704969504701

`lt[A028310(n), A340793(A028310(n))]`
-/

namespace A231547.P15186517704969504701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231547.P15186517704969504701

namespace A231547

/-- `lt[A028310(n), A340793(A028310(n))]` -/
def P15186517704969504701.Spec : Prop :=
  ∀ n, (P15186517704969504701.a n : ℤ) = A231547 (n + 1)

end A231547

/-! ## A231547.P3852784922392603287

`A014681(lt[A039653(n), A048050(n+1)])`
-/

namespace A231547.P3852784922392603287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A231547.P3852784922392603287

namespace A231547

/-- `A014681(lt[A039653(n), A048050(n+1)])` -/
def P3852784922392603287.Spec : Prop :=
  ∀ n, P3852784922392603287.a n = A231547 (n + 1)

end A231547

/-! ## A231547.P10135124618108967201

`A020725(lt[A039653(n), A048050(n+1)])`
-/

namespace A231547.P10135124618108967201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A231547.P10135124618108967201

namespace A231547

/-- `A020725(lt[A039653(n), A048050(n+1)])` -/
def P10135124618108967201.Spec : Prop :=
  ∀ n, P10135124618108967201.a n = A231547 (n + 1)

end A231547

/-! ## A231547.P15303866679396711312

`A092486(lt[A039653(n), A048050(n+1)])`
-/

namespace A231547.P15303866679396711312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A231547.P15303866679396711312

namespace A231547

/-- `A092486(lt[A039653(n), A048050(n+1)])` -/
def P15303866679396711312.Spec : Prop :=
  ∀ n, P15303866679396711312.a n = A231547 (n + 1)

end A231547

/-! ## A231547.P17844960010716232438

`A153152(lt[A039653(n), A048050(n+1)])`
-/

namespace A231547.P17844960010716232438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A231547.P17844960010716232438

namespace A231547

/-- `A153152(lt[A039653(n), A048050(n+1)])` -/
def P17844960010716232438.Spec : Prop :=
  ∀ n, P17844960010716232438.a n = A231547 (n + 1)

end A231547

/-! ## A231547.P1957663487271201341

`lt[A039653(A014681(n))+n, A039653(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A231547

/-- `lt[A039653(A014681(n))+n, A039653(n)]` -/
def P1957663487271201341.Spec : Prop :=
  ∀ n, (P1957663487271201341.a n : ℤ) = A231547 (n + 1)

theorem P1957663487271201341.correct : P1957663487271201341.Spec := by
  intro n
  simp only [A231547, Nat.add_sub_cancel]

end A231547

/-! ## A231547.P4559150329310391375

`lt[A000203(A028310(n)), A048050(n+1)]+1`
-/

namespace A231547.P4559150329310391375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A231547.P4559150329310391375

namespace A231547

/-- `lt[A000203(A028310(n)), A048050(n+1)]+1` -/
def P4559150329310391375.Spec : Prop :=
  ∀ n, (P4559150329310391375.a n : ℤ) = A231547 (n + 1)

end A231547

/-! ## A231547.P15287755246184531113

`lt[A138153(n+1), A340793(A138153(n+1))]`
-/

namespace A231547.P15287755246184531113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231547.P15287755246184531113

namespace A231547

/-- `lt[A138153(n+1), A340793(A138153(n+1))]` -/
def P15287755246184531113.Spec : Prop :=
  ∀ n, (P15287755246184531113.a n : ℤ) = A231547 (n + 1)

end A231547

/-!
# A231550: Permutation of nonnegative integers: for each bit[i] in the binary representation, except the most and the least significant bits, set bit[i] = bit[i] XOR bit[i-1], where bit[i-1] is the less significant bit, XOR is the binary logical exclusive or operator.

The programs for A231550, the canonical program `A231550.P13029068904856309270` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231550 has offset 0).

The definition of A231550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231550.P13029068904856309270

`A229763(n)+2*A292944(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A231550

/-- `A229763(n)+2*A292944(n)` -/
def P13029068904856309270.Spec : Prop :=
  ∀ n, P13029068904856309270.a n = A231550 n

theorem P13029068904856309270.correct : P13029068904856309270.Spec := by
  intro n
  simp only [A231550]

end A231550

/-! ## A231550.P9398157116311551594

`A229763(n)+A213064(n-A292264(n))`
-/

namespace A231550.P9398157116311551594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + A213064 ((n : ℤ) - A292264 n).toNat

end

end A231550.P9398157116311551594

namespace A231550

/-- `A229763(n)+A213064(n-A292264(n))` -/
def P9398157116311551594.Spec : Prop :=
  ∀ n, P9398157116311551594.a n = A231550 n

end A231550

/-! ## A231550.P15183287887164870719

`A292272(2*n)-A292264(2*n)+n`
-/

namespace A231550.P15183287887164870719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (2 * n) - A292264 (2 * n) + (n : ℤ)

end

end A231550.P15183287887164870719

namespace A231550

/-- `A292272(2*n)-A292264(2*n)+n` -/
def P15183287887164870719.Spec : Prop :=
  ∀ n, P15183287887164870719.a n = A231550 n

end A231550

/-! ## A231550.P17535493810067504712

`A292272(2*n)+A292944(2*n)-n`
-/

namespace A231550.P17535493810067504712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (2 * n) + (A292944 (2 * n) - (n : ℤ))

end

end A231550.P17535493810067504712

namespace A231550

/-- `A292272(2*n)+A292944(2*n)-n` -/
def P17535493810067504712.Spec : Prop :=
  ∀ n, P17535493810067504712.a n = A231550 n

end A231550

/-! ## A231550.P5949308961598409612

`A341915(A231551(A341915(n)))`
-/

namespace A231550.P5949308961598409612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A231551 (A341915 n).toNat).toNat

end

end A231550.P5949308961598409612

namespace A231550

/-- `A341915(A231551(A341915(n)))` -/
def P5949308961598409612.Spec : Prop :=
  ∀ n, P5949308961598409612.a n = A231550 n

end A231550

/-! ## A231550.P16967000995258595223

`A341915(A056539(2*n)/2)`
-/

namespace A231550.P16967000995258595223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (SequenceMachineLib.roundAway ((A056539 (2 * n) : ℚ) / 2)).toNat

end

end A231550.P16967000995258595223

namespace A231550

/-- `A341915(A056539(2*n)/2)` -/
def P16967000995258595223.Spec : Prop :=
  ∀ n, P16967000995258595223.a n = A231550 n

end A231550

/-! ## A231550.P1244569255528226399

`or(A038554(2*n), A053644(n))`
-/

namespace A231550.P1244569255528226399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038554 (2 * n)) (A053644 n)

end

end A231550.P1244569255528226399

namespace A231550

/-- `or(A038554(2*n), A053644(n))` -/
def P1244569255528226399.Spec : Prop :=
  ∀ n, P1244569255528226399.a n = A231550 n

end A231550

/-! ## A231550.P3028253028662430877

`A292944(2*n)+A229762(2*n)`
-/

namespace A231550.P3028253028662430877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292944 (2 * n) + A229762 (2 * n)

end

end A231550.P3028253028662430877

namespace A231550

/-- `A292944(2*n)+A229762(2*n)` -/
def P3028253028662430877.Spec : Prop :=
  ∀ n, P3028253028662430877.a n = A231550 n

end A231550

/-! ## A231550.P254585008470845582

`A269170(2*n)-A292264(2*n)`
-/

namespace A231550.P254585008470845582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (2 * n) - A292264 (2 * n)

end

end A231550.P254585008470845582

namespace A231550

/-- `A269170(2*n)-A292264(2*n)` -/
def P254585008470845582.Spec : Prop :=
  ∀ n, P254585008470845582.a n = A231550 n

end A231550

/-! ## A231550.P17606900698395170664

`A292944(2*n)-A048735(2*n)+n`
-/

namespace A231550.P17606900698395170664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292944 (2 * n) - A048735 (2 * n) + (n : ℤ)

end

end A231550.P17606900698395170664

namespace A231550

/-- `A292944(2*n)-A048735(2*n)+n` -/
def P17606900698395170664.Spec : Prop :=
  ∀ n, P17606900698395170664.a n = A231550 n

end A231550

/-! ## A231550.P11538089970922341749

`A213064(2*n)-(A292264(2*n)+A229762(2*n))`
-/

namespace A231550.P11538089970922341749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 (2 * n) - (A292264 (2 * n) + A229762 (2 * n))

end

end A231550.P11538089970922341749

namespace A231550

/-- `A213064(2*n)-(A292264(2*n)+A229762(2*n))` -/
def P11538089970922341749.Spec : Prop :=
  ∀ n, P11538089970922341749.a n = A231550 n

end A231550

/-! ## A231550.P11195284076737837355

`A030109(or(1, A341915(2*n)))`
-/

namespace A231550.P11195284076737837355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (Int.lor 1 (A341915 (2 * n))).toNat

end

end A231550.P11195284076737837355

namespace A231550

/-- `A030109(or(1, A341915(2*n)))` -/
def P11195284076737837355.Spec : Prop :=
  ∀ n, P11195284076737837355.a n = A231550 n

end A231550

/-! ## A231550.P6922300841415711173

`xor(A153153(n), A157928(n))`
-/

namespace A231550.P6922300841415711173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153153 n) (A157928 n)

end

end A231550.P6922300841415711173

namespace A231550

/-- `xor(A153153(n), A157928(n))` -/
def P6922300841415711173.Spec : Prop :=
  ∀ n, P6922300841415711173.a n = A231550 n

end A231550

/-! ## A231550.P15760726977209099220

`A153153(A092569(2*n)/2)`
-/

namespace A231550.P15760726977209099220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153153 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A231550.P15760726977209099220

namespace A231550

/-- `A153153(A092569(2*n)/2)` -/
def P15760726977209099220.Spec : Prop :=
  ∀ n, P15760726977209099220.a n = A231550 n

end A231550

/-! ## A231550.P16552393680310323861

`A092569(2*A154438(n))/2`
-/

namespace A231550.P16552393680310323861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * A154438 n).toNat : ℚ) / 2

end

end A231550.P16552393680310323861

namespace A231550

/-- `A092569(2*A154438(n))/2` -/
def P16552393680310323861.Spec : Prop :=
  ∀ n, P16552393680310323861.a n = (A231550 n : ℚ)

end A231550

/-! ## A231550.P12395541859617014378

`A153153(A231551(A153153(n)))`
-/

namespace A231550.P12395541859617014378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153153 (A231551 (A153153 n).toNat).toNat

end

end A231550.P12395541859617014378

namespace A231550

/-- `A153153(A231551(A153153(n)))` -/
def P12395541859617014378.Spec : Prop :=
  ∀ n, P12395541859617014378.a n = A231550 n

end A231550

/-! ## A231550.P5402662955317906439

`A154438(A231551(A154438(n)))`
-/

namespace A231550.P5402662955317906439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154438 (A231551 (A154438 n).toNat).toNat

end

end A231550.P5402662955317906439

namespace A231550

/-- `A154438(A231551(A154438(n)))` -/
def P5402662955317906439.Spec : Prop :=
  ∀ n, P5402662955317906439.a n = A231550 n

end A231550

/-! ## A231550.P8986287928363916445

`floor(A153153(2*n)/2)`
-/

namespace A231550.P8986287928363916445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153153 (2 * n) : ℚ) / 2⌋

end

end A231550.P8986287928363916445

namespace A231550

/-- `floor(A153153(2*n)/2)` -/
def P8986287928363916445.Spec : Prop :=
  ∀ n, P8986287928363916445.a n = A231550 n

end A231550

/-! ## A231550.P17016811287943166799

`A004526(A153153(2*n))`
-/

namespace A231550.P17016811287943166799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A153153 (2 * n)).toNat

end

end A231550.P17016811287943166799

namespace A231550

/-- `A004526(A153153(2*n))` -/
def P17016811287943166799.Spec : Prop :=
  ∀ n, P17016811287943166799.a n = A231550 n

end A231550

/-! ## A231550.P4068973128847519277

`(A153153(2*n)-A157928(n+1))/2`
-/

namespace A231550.P4068973128847519277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153153 (2 * n) - A157928 (n + 1) : ℚ) / 2

end

end A231550.P4068973128847519277

namespace A231550

/-- `(A153153(2*n)-A157928(n+1))/2` -/
def P4068973128847519277.Spec : Prop :=
  ∀ n, P4068973128847519277.a n = (A231550 n : ℚ)

end A231550

/-!
# A231551: Position of n in A231550.

The programs for A231551, the canonical program `A231551.P13473308692949281143` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231551 has offset 0).

The definition of A231551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231551.P13473308692949281143

`A154437(A231550(A154437(n)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A231551

/-- `A154437(A231550(A154437(n)))` -/
def P13473308692949281143.Spec : Prop :=
  ∀ n, P13473308692949281143.a n = A231551 n

theorem P13473308692949281143.correct : P13473308692949281143.Spec := by
  intro n
  simp only [A231551]

end A231551

/-! ## A231551.P15404730723233570602

`A233280(A335858(A335858(A233280(A180200(n)))))`
-/

namespace A231551.P15404730723233570602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A335858 (A335858 (A233280 (A180200 n).toNat).toNat).toNat).toNat

end

end A231551.P15404730723233570602

namespace A231551

/-- `A233280(A335858(A335858(A233280(A180200(n)))))` -/
def P15404730723233570602.Spec : Prop :=
  ∀ n, P15404730723233570602.a n = A231551 n

end A231551

/-! ## A231551.P6049729072097662534

`A154437(A092569(2*n)/2)`
-/

namespace A231551.P6049729072097662534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A231551.P6049729072097662534

namespace A231551

/-- `A154437(A092569(2*n)/2)` -/
def P6049729072097662534.Spec : Prop :=
  ∀ n, P6049729072097662534.a n = A231551 n

end A231551

/-! ## A231551.P5323172666050779072

`A056539(2*A341916(n))/2`
-/

namespace A231551.P5323172666050779072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056539 (2 * A341916 n).toNat : ℚ) / 2

end

end A231551.P5323172666050779072

namespace A231551

/-- `A056539(2*A341916(n))/2` -/
def P5323172666050779072.Spec : Prop :=
  ∀ n, P5323172666050779072.a n = (A231551 n : ℚ)

end A231551

/-! ## A231551.P16950782120170990702

`A092569(2*A153154(n))/2`
-/

namespace A231551.P16950782120170990702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (2 * A153154 n).toNat : ℚ) / 2

end

end A231551.P16950782120170990702

namespace A231551

/-- `A092569(2*A153154(n))/2` -/
def P16950782120170990702.Spec : Prop :=
  ∀ n, P16950782120170990702.a n = (A231551 n : ℚ)

end A231551

/-! ## A231551.P17285246142269722082

`A153154(A231550(A153154(n)))`
-/

namespace A231551.P17285246142269722082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A231550 (A153154 n).toNat).toNat

end

end A231551.P17285246142269722082

namespace A231551

/-- `A153154(A231550(A153154(n)))` -/
def P17285246142269722082.Spec : Prop :=
  ∀ n, P17285246142269722082.a n = A231551 n

end A231551

/-! ## A231551.P6799312238127150416

`A154437(A154436(A233279(n)))`
-/

namespace A231551.P6799312238127150416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154437 (A154436 (A233279 n).toNat).toNat

end

end A231551.P6799312238127150416

namespace A231551

/-- `A154437(A154436(A233279(n)))` -/
def P6799312238127150416.Spec : Prop :=
  ∀ n, P6799312238127150416.a n = A231551 n

end A231551

/-! ## A231551.P8946970198912206038

`A006068(n)+A233279(n)-A153154(n)`
-/

namespace A231551.P8946970198912206038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n + (A233279 n - A153154 n)

end

end A231551.P8946970198912206038

namespace A231551

/-- `A006068(n)+A233279(n)-A153154(n)` -/
def P8946970198912206038.Spec : Prop :=
  ∀ n, P8946970198912206038.a n = A231551 n

end A231551

/-! ## A231551.P17968608041742872404

`A154436(A233279(A153154(A154436(A154435(n)))))`
-/

namespace A231551.P17968608041742872404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A233279 (A153154 (A154436 (A154435 n).toNat).toNat).toNat).toNat

end

end A231551.P17968608041742872404

namespace A231551

/-- `A154436(A233279(A153154(A154436(A154435(n)))))` -/
def P17968608041742872404.Spec : Prop :=
  ∀ n, P17968608041742872404.a n = A231551 n

end A231551

/-! ## A231551.P593744985808186470

`floor(A153154(2*n+1)/2)`
-/

namespace A231551.P593744985808186470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153154 (2 * n + 1) : ℚ) / 2⌋

end

end A231551.P593744985808186470

namespace A231551

/-- `floor(A153154(2*n+1)/2)` -/
def P593744985808186470.Spec : Prop :=
  ∀ n, P593744985808186470.a n = A231551 n

end A231551

/-! ## A231551.P6552401330293311078

`A153154(A153152(2*n))/2`
-/

namespace A231551.P6552401330293311078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153154 (A153152 (2 * n)).toNat : ℚ) / 2

end

end A231551.P6552401330293311078

namespace A231551

/-- `A153154(A153152(2*n))/2` -/
def P6552401330293311078.Spec : Prop :=
  ∀ n, P6552401330293311078.a n = (A231551 n : ℚ)

end A231551

/-! ## A231551.P15269495673509384924

`A008619(A153154(n+1+n))-1`
-/

namespace A231551.P15269495673509384924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A153154 (n + 1 + n)).toNat - 1

end

end A231551.P15269495673509384924

namespace A231551

/-- `A008619(A153154(n+1+n))-1` -/
def P15269495673509384924.Spec : Prop :=
  ∀ n, P15269495673509384924.a n = A231551 n

end A231551

/-! ## A231551.P14873582401825336314

`xor(A092323(2*n+1), A153154(2*n))/2`
-/

namespace A231551.P14873582401825336314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A092323 (2 * n + 1)) (A153154 (2 * n)) : ℚ) / 2

end

end A231551.P14873582401825336314

namespace A231551

/-- `xor(A092323(2*n+1), A153154(2*n))/2` -/
def P14873582401825336314.Spec : Prop :=
  ∀ n, P14873582401825336314.a n = (A231551 n : ℚ)

end A231551

/-! ## A231551.P8244344841861689397

`(A153154(2*n+1)-A209229(2*n+1))/2`
-/

namespace A231551.P8244344841861689397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153154 (2 * n + 1) - A209229 (2 * n + 1) : ℚ) / 2

end

end A231551.P8244344841861689397

namespace A231551

/-- `(A153154(2*n+1)-A209229(2*n+1))/2` -/
def P8244344841861689397.Spec : Prop :=
  ∀ n, P8244344841861689397.a n = (A231551 n : ℚ)

end A231551

/-! ## A231551.P14011735655319817931

`n/A065190(2*n+1)*A153154(2*n+1)`
-/

namespace A231551.P14011735655319817931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A065190 (2 * n + 1) : ℚ) * (A153154 (2 * n + 1) : ℚ)

end

end A231551.P14011735655319817931

namespace A231551

/-- `n/A065190(2*n+1)*A153154(2*n+1)` -/
def P14011735655319817931.Spec : Prop :=
  ∀ n, P14011735655319817931.a n = (A231551 n : ℚ)

end A231551

/-!
# A231554: G.f. satisfies: A(x) = (1 + 2*x*A(x))^2 * (2 + A(x)) / 3.

The programs for A231554, there is no canonical definition to state claims against.
-/

/-! ## A231554.P11583448940265252713

`A186375(n)+A058276(A251177(n))`
-/

namespace A231554.P11583448940265252713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186375 n + A058276 (A251177 n).toNat

end

end A231554.P11583448940265252713

/-!
# A231556: G.f. satisfies: A(x) = (1 - x*A(x))^2 * (2*A(x) - 1).

The programs for A231556, there is no canonical definition to state claims against.
-/

/-! ## A231556.P5452086935686014000

`A136250(A150914(n))`
-/

namespace A231556.P5452086935686014000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136250 (A150914 n).toNat

end

end A231556.P5452086935686014000

/-!
# A231557: Least positive integer k <= n such that 2^k + (n - k) is prime, or 0 if such an integer k does not exist.

The programs for A231557, there is no canonical definition to state claims against.
-/

/-! ## A231557.P9770579654398465601

`gcd(Δ[A129944(n+1)], A014601(n))`
-/

namespace A231557.P9770579654398465601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A014601 n)

end

end A231557.P9770579654398465601

/-! ## A231557.P9306314257052613332

`A051699(A345020(n+2))+A013632(n+1)`
-/

namespace A231557.P9306314257052613332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A345020 (n + 2)).toNat + A013632 (n + 1)

end

end A231557.P9306314257052613332

/-! ## A231557.P311406692099180985

`A013632(A341090(n+1)%A088872(n+1))`
-/

namespace A231557.P311406692099180985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (Int.tmod (A341090 (n + 1)) (A088872 (n + 1))).toNat

end

end A231557.P311406692099180985

/-! ## A231557.P15372875589265498516

`gcd(A014601(n), A135559(A008574(n)))`
-/

namespace A231557.P15372875589265498516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014601 n) (A135559 (A008574 n).toNat)

end

end A231557.P15372875589265498516

/-! ## A231557.P14884526719088163395

`gcd(A014688(n+1), A054541(A092049(n+1)))`
-/

namespace A231557.P14884526719088163395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014688 (n + 1)) (A054541 (A092049 (n + 1)).toNat)

end

end A231557.P14884526719088163395

/-!
# A231559: a(n) = floor( A000326(n)/2 ).

The programs for A231559, the canonical program `A231559.P16072688482660807086` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231559 has offset 0).

The definition of A231559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000326(n)/2)` (program `A231559.P16072688482660807086`, by `A231559.P16072688482660807086.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A231559.P2416976071703213104

`floor(n*(3*n-1)/4)`
-/

namespace A231559.P2416976071703213104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((3 * n : ℤ) - 1) : ℚ) / 4⌋

end

end A231559.P2416976071703213104

namespace A231559

/-- `floor(n*(3*n-1)/4)` -/
def P2416976071703213104.Spec : Prop :=
  ∀ n, P2416976071703213104.a n = A231559 n

end A231559

/-! ## A231559.P16072688482660807086

`floor(A000326(n)/2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A231559

/-- `floor(A000326(n)/2)` -/
def P16072688482660807086.Spec : Prop :=
  ∀ n, P16072688482660807086.a n = A231559 n

theorem P16072688482660807086.correct : P16072688482660807086.Spec := by
  intro n
  simp only [A231559]

end A231559

/-! ## A231559.P2287245253009471147

`floor(∑[n/2])+C(n, 2)`
-/

namespace A231559.P2287245253009471147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (Nat.choose n 2 : ℤ)

end

end A231559.P2287245253009471147

namespace A231559

/-- `floor(∑[n/2])+C(n, 2)` -/
def P2287245253009471147.Spec : Prop :=
  ∀ n, P2287245253009471147.a n = A231559 n

end A231559

/-! ## A231559.P13678313618619148634

`∑[∑[and(2, n)!]-1]-n`
-/

namespace A231559.P13678313618619148634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A231559.P13678313618619148634

namespace A231559

/-- `∑[∑[and(2, n)!]-1]-n` -/
def P13678313618619148634.Spec : Prop :=
  ∀ n, P13678313618619148634.a n = A231559 n

end A231559

/-! ## A231559.P15466530810390110783

`∑[∑[a(n-4)!]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A231559.P15466530810390110783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 2] fun n f2 =>
  Nat.factorial (f2 (n - 4))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231559.P15466530810390110783

namespace A231559

/-- `∑[∑[a(n-4)!]]` -/
def P15466530810390110783.Spec : Prop :=
  ∀ n, (P15466530810390110783.a n : ℤ) = A231559 n

end A231559

/-! ## A231559.P11422531849236261058

`and(-2, ∑[3*n])/2-n`
-/

namespace A231559.P11422531849236261058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2 - (n : ℚ)

end

end A231559.P11422531849236261058

namespace A231559

/-- `and(-2, ∑[3*n])/2-n` -/
def P11422531849236261058.Spec : Prop :=
  ∀ n, P11422531849236261058.a n = (A231559 n : ℚ)

end A231559

/-! ## A231559.P1876590700456133543

`∑[a(n-4)+6]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4, a(4)=5`
-/

namespace A231559.P1876590700456133543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 4, 5] fun n f1 =>
  f1 (n - 4) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231559.P1876590700456133543

namespace A231559

/-- `∑[a(n-4)+6]` -/
def P1876590700456133543.Spec : Prop :=
  ∀ n, (P1876590700456133543.a n : ℤ) = A231559 n

end A231559

/-! ## A231559.P7773632158527273215

`∑[∑[3-a(n-2)]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A231559.P7773632158527273215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 2] fun n f2 =>
  3 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231559.P7773632158527273215

namespace A231559

/-- `∑[∑[3-a(n-2)]]` -/
def P7773632158527273215.Spec : Prop :=
  ∀ n, P7773632158527273215.a n = A231559 n

end A231559

/-! ## A231559.P10341139475782411966

`and(3*C(n, 2)+n, -2)/2`
-/

namespace A231559.P10341139475782411966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (3 * Nat.choose n 2 + n : ℤ) (-2) : ℚ) / 2

end

end A231559.P10341139475782411966

namespace A231559

/-- `and(3*C(n, 2)+n, -2)/2` -/
def P10341139475782411966.Spec : Prop :=
  ∀ n, P10341139475782411966.a n = (A231559 n : ℚ)

end A231559

/-! ## A231559.P1690276517559094733

`(or(1, ∑[3*n])-1)/2-n`
-/

namespace A231559.P1690276517559094733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1 : ℚ) / 2 - (n : ℚ)

end

end A231559.P1690276517559094733

namespace A231559

/-- `(or(1, ∑[3*n])-1)/2-n` -/
def P1690276517559094733.Spec : Prop :=
  ∀ n, P1690276517559094733.a n = (A231559 n : ℚ)

end A231559

/-! ## A231559.P17441378384506521999

`∑[∑[gcd(2, ∑[n+1])]-2]+1`
-/

namespace A231559.P17441378384506521999
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A231559.P17441378384506521999

namespace A231559

/-- `∑[∑[gcd(2, ∑[n+1])]-2]+1` -/
def P17441378384506521999.Spec : Prop :=
  ∀ n, P17441378384506521999.a n = A231559 n

end A231559

/-! ## A231559.P7954201301361613172

`∑[∪[2*n+1, 3*n]]-n`
-/

namespace A231559.P7954201301361613172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A231559.P7954201301361613172

namespace A231559

/-- `∑[∪[2*n+1, 3*n]]-n` -/
def P7954201301361613172.Spec : Prop :=
  ∀ n, P7954201301361613172.a n = A231559 n

end A231559

/-! ## A231559.P12194960891347851687

`∑[ogf((x+x^2+x^3)/(1-2x+2x^2-2x^3+x^4))]-n`
-/

namespace A231559.P12194960891347851687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A231559.P12194960891347851687

namespace A231559

/-- `∑[ogf((x+x^2+x^3)/(1-2x+2x^2-2x^3+x^4))]-n` -/
def P12194960891347851687.Spec : Prop :=
  ∀ n, P12194960891347851687.a n = A231559 n

end A231559

/-! ## A231559.P1403435773179542672

`∪[2*n, 2*n+n-1]+a(n-1)` with `a(0)=0`
-/

namespace A231559.P1403435773179542672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n + a (n - 1)

end

end A231559.P1403435773179542672

namespace A231559

/-- `∪[2*n, 2*n+n-1]+a(n-1)` -/
def P1403435773179542672.Spec : Prop :=
  ∀ n, (P1403435773179542672.a n : ℤ) = A231559 n

end A231559

/-! ## A231559.P5498263131717084640

`A281026(n)-n`
-/

namespace A231559.P5498263131717084640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n - (n : ℤ)

end

end A231559.P5498263131717084640

namespace A231559

/-- `A281026(n)-n` -/
def P5498263131717084640.Spec : Prop :=
  ∀ n, P5498263131717084640.a n = A231559 n

end A231559

/-! ## A231559.P4492457114169444436

`∑[A301729(n)-1]`
-/

namespace A231559.P4492457114169444436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231559.P4492457114169444436

namespace A231559

/-- `∑[A301729(n)-1]` -/
def P4492457114169444436.Spec : Prop :=
  ∀ n, P4492457114169444436.a n = A231559 n

end A231559

/-! ## A231559.P14549132216860220020

`A397978(n)-∑[n]`
-/

namespace A231559.P14549132216860220020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A231559.P14549132216860220020

namespace A231559

/-- `A397978(n)-∑[n]` -/
def P14549132216860220020.Spec : Prop :=
  ∀ n, P14549132216860220020.a n = A231559 n

end A231559

/-! ## A231559.P1532662942410797538

`A268810(n)/2-n`
-/

namespace A231559.P1532662942410797538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268810 n : ℚ) / 2 - (n : ℚ)

end

end A231559.P1532662942410797538

namespace A231559

/-- `A268810(n)/2-n` -/
def P1532662942410797538.Spec : Prop :=
  ∀ n, P1532662942410797538.a n = (A231559 n : ℚ)

end A231559

/-! ## A231559.P11183179472431570305

`n²-∑[A004525(n)]`
-/

namespace A231559.P11183179472431570305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231559.P11183179472431570305

namespace A231559

/-- `n²-∑[A004525(n)]` -/
def P11183179472431570305.Spec : Prop :=
  ∀ n, P11183179472431570305.a n = A231559 n

end A231559

/-!
# A231560: Floor(sum_{i=2..n} 1/(i*log(i))).

The programs for A231560, the canonical program `A231560.P16492411364051430344` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231560 has offset 2).

The definition of A231560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231560.P16492411364051430344

`round(sqrt(sqrt(sqrt(n))))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231560

/-- `round(sqrt(sqrt(sqrt(n))))` -/
def P16492411364051430344.Spec : Prop :=
  ∀ n, P16492411364051430344.a n = A231560 (n + 2)

theorem P16492411364051430344.correct : P16492411364051430344.Spec := by
  intro n
  simp only [A231560, Nat.add_sub_cancel]

end A231560

/-!
# A231563: a(n) = f(1)^n + ... + f(n)^n (mod n) where f(i)=i if gcd(i,n)=1 and f(i)=0 otherwise.

The programs for A231563, there is no canonical definition to state claims against.
-/

/-! ## A231563.P2393007790296112260

`A308481(n+1)%(n+1)`
-/

namespace A231563.P2393007790296112260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308481 (n + 1)) (n + 1 : ℤ)

end

end A231563.P2393007790296112260

/-! ## A231563.P12278206502274013663

`Δ[A002088(n)]%A293515(A075180(n))`
-/

namespace A231563.P12278206502274013663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A293515 (A075180 n).toNat)

end

end A231563.P12278206502274013663

/-! ## A231563.P7758293579790094947

`A000010(n+1)%A293515(A075180(n))`
-/

namespace A231563.P7758293579790094947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A293515 (A075180 n).toNat)

end

end A231563.P7758293579790094947

/-! ## A231563.P3451425589914294221

`A055034(n+1)%A293515(A075180(n))`
-/

namespace A231563.P3451425589914294221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055034 (n + 1)) (A293515 (A075180 n).toNat)

end

end A231563.P3451425589914294221

/-! ## A231563.P7134653695887529135

`A132952(n+1)%A293515(A075180(n))`
-/

namespace A231563.P7134653695887529135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132952 (n + 1)) (A293515 (A075180 n).toNat)

end

end A231563.P7134653695887529135

/-!
# A231564: Numbers such that A231563(n)=0.

The programs for A231564, there is no canonical definition to state claims against.
-/

/-! ## A231564.P9639766834912310724

`eq[0, A231563(n+1)]+1`
-/

namespace A231564.P9639766834912310724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231564.P9639766834912310724

/-! ## A231564.P10023328994705713288

`record[n+2-A231563(n+2)]`
-/

namespace A231564.P10023328994705713288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A231563 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231564.P10023328994705713288

/-! ## A231564.P18430085469269211231

`eq[0, A231563(or(n, a(n-1)))]` with `a(0)=1`
-/

namespace A231564.P18430085469269211231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A231563 (Int.lor (n : ℤ) (f2 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A231564.P18430085469269211231

/-! ## A231564.P14232868450759719113

`comp[lt[1/π, A231563(abs(1-n)+1)]]`
-/

namespace A231564.P14232868450759719113
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.pi

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231563 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A231564.P14232868450759719113

/-! ## A231564.P9333962547353586992

`lt[A231563(n+1), A001221(n+2)]+1`
-/

namespace A231564.P9333962547353586992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A231564.P9333962547353586992

/-!
# A231565: Numbers such that A231563(n)>0.

The programs for A231565, there is no canonical definition to state claims against.
-/

/-! ## A231565.P3692064225358390943

`lt[0, A231563(n+1)]+1`
-/

namespace A231565.P3692064225358390943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231563 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A231565.P3692064225358390943

/-! ## A231565.P7802216099321805893

`lt[0, A231563(A028310(n))]`
-/

namespace A231565.P7802216099321805893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231563 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A231565.P7802216099321805893

/-! ## A231565.P11426703708654289742

`eq[0, A068638(A231563(n+1)+1)%2]+1`
-/

namespace A231565.P11426703708654289742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068638 (A231563 (n + 1) + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231565.P11426703708654289742

/-! ## A231565.P11972273104469806131

`eq[1, A266364(A231563(n+1)²)]+1`
-/

namespace A231565.P11972273104469806131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 (A231563 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231565.P11972273104469806131

/-! ## A231565.P17387433264583672336

`∩[A111905(n+1), A390626(n+1)]`
-/

namespace A231565.P17387433264583672336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231565.P17387433264583672336

/-!
# A231568: Number T(n,k) of equivalence classes of ways of placing k 4 X 4 tiles in an n X 5 rectangle under all symmetry operations of the rectangle; irregular triangle T(n,k), n>=4, 0<=k<=floor(n/4), read by rows.

The programs for A231568, there is no canonical definition to state claims against.
-/

/-! ## A231568.P15409064784695694071

`A001222(A258007(n+1)^A228572(n+4))`
-/

namespace A231568.P15409064784695694071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A258007 (n + 1) : ℚ) ^ (A228572 (n + 4) : ℤ))).toNat

end

end A231568.P15409064784695694071

/-! ## A231568.P14954138198786193398

`A285879(A238552(n+4)%A270929(2*n+3))`
-/

namespace A231568.P14954138198786193398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285879 (Int.tmod (A238552 (n + 4)) (A270929 (2 * n + 3))).toNat

end

end A231568.P14954138198786193398

/-! ## A231568.P17303084788758155643

`A097508(A238552(n+4))+A001222(A095692(n+1))`
-/

namespace A231568.P17303084788758155643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A238552 (n + 4)).toNat + A001222 (A095692 (n + 1)).toNat

end

end A231568.P17303084788758155643

/-! ## A231568.P5626609924778379602

`A054071(A238552(n+4)%A055161(n))`
-/

namespace A231568.P5626609924778379602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (Int.tmod (A238552 (n + 4)) (A055161 n)).toNat

end

end A231568.P5626609924778379602

/-! ## A231568.P8455536208632154310

`A134021(A263683(∑[A000931(n)]))`
-/

namespace A231568.P8455536208632154310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (A263683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A231568.P8455536208632154310

/-!
# A231569: Composite numbers n such that lambda(n) divides 2n-2, where lambda is the Carmichael lambda function (A002322).

The programs for A231569, there is no canonical definition to state claims against.
-/

/-! ## A231569.P10964253374056313097

`∩[A231571(n+1), A231573(n+1)]`
-/

namespace A231569.P10964253374056313097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231569.P10964253374056313097

/-!
# A231570: Composite numbers n such that lambda(n) divides 3n-3, where lambda is the Carmichael lambda function (A002322).

The programs for A231570, there is no canonical definition to state claims against.
-/

/-! ## A231570.P12044254889976420071

`filter[A231573(n+1), A360113(#)]`
-/

namespace A231570.P12044254889976420071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A231570.P12044254889976420071

/-! ## A231570.P10128135734691042124

`∩[A231573(n+1), A345330(n+1)]`
-/

namespace A231570.P10128135734691042124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231570.P10128135734691042124

/-! ## A231570.P10877222467008142045

`A020137(∑[A326474(n)!])`
-/

namespace A231570.P10877222467008142045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A326474 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A231570.P10877222467008142045

/-! ## A231570.P2474666250800337530

`A020137(∑[A003557(3*n+4)^A308996(n)])`
-/

namespace A231570.P2474666250800337530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (3 * n + 4) : ℚ) ^ (A308996 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A231570.P2474666250800337530

/-! ## A231570.P14546124827870701807

`A020137(A037479(n+1)%A270929(3*n+5))`
-/

namespace A231570.P14546124827870701807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (Int.tmod (A037479 (n + 1)) (A270929 (3 * n + 5))).toNat

end

end A231570.P14546124827870701807

/-!
# A231572: Composite numbers n such that lambda(n) divides 5n-5, where lambda is the Carmichael lambda function (A002322).

The programs for A231572, there is no canonical definition to state claims against.
-/

/-! ## A231572.P7248636519262682659

`A020258(n+1)-A231563(A231466(n+1))`
-/

namespace A231572.P7248636519262682659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020258 (n + 1) - A231563 (A231466 (n + 1)).toNat

end

end A231572.P7248636519262682659

/-!
# A231574: Primes in A001590.

The programs for A231574, there is no canonical definition to state claims against.
-/

/-! ## A231574.P16785668599969776662

`A001590(A231575(n+1))`
-/

namespace A231574.P16785668599969776662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A231575 (n + 1)).toNat

end

end A231574.P16785668599969776662

/-! ## A231574.P4792109230170162396

`A114952(2*A231575(n+1))`
-/

namespace A231574.P4792109230170162396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (2 * A231575 (n + 1)).toNat

end

end A231574.P4792109230170162396

/-! ## A231574.P10486222692513981249

`A114952(A231575(n+1)+A231575(n+1))`
-/

namespace A231574.P10486222692513981249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (A231575 (n + 1) + A231575 (n + 1)).toNat

end

end A231574.P10486222692513981249

/-! ## A231574.P8470344889398918066

`A027052(A231575(n+1)²-A231575(n+1))`
-/

namespace A231574.P8470344889398918066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A231575 (n + 1) ^ 2 - A231575 (n + 1)).toNat

end

end A231574.P8470344889398918066

/-!
# A231579: a(1) = 7; for n > 1, a(n) is the hypotenuse of the right triangle with legs a(n) - 1 and a(n-1).

The programs for A231579, the canonical program `A231579.P4777455326472340107` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231579 has offset 1).

The definition of A231579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A231579.P4777455326472340107

`(a(n-1)²+1)/2` with `a(0)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A231579

/-- `(a(n-1)²+1)/2` -/
def P4777455326472340107.Spec : Prop :=
  ∀ n, P4777455326472340107.a n = (A231579 (n + 1) : ℚ)

end A231579

/-! ## A231579.P7403347198502836530

`ceil(a(n-1)²/2)` with `a(0)=7`
-/

namespace A231579.P7403347198502836530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / 2⌉

end

end A231579.P7403347198502836530

namespace A231579

/-- `ceil(a(n-1)²/2)` -/
def P7403347198502836530.Spec : Prop :=
  ∀ n, P7403347198502836530.a n = A231579 (n + 1)

end A231579

/-! ## A231579.P1595960571267752086

`round(a(n-1)²/2)` with `a(0)=7`
-/

namespace A231579.P1595960571267752086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) ^ 2 : ℚ) / 2)

end

end A231579.P1595960571267752086

namespace A231579

/-- `round(a(n-1)²/2)` -/
def P1595960571267752086.Spec : Prop :=
  ∀ n, P1595960571267752086.a n = A231579 (n + 1)

end A231579

/-! ## A231579.P14426638223302197732

`ceil(cosh(log(a(n-1)²)))` with `a(0)=7`
-/

namespace A231579.P14426638223302197732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  ⌈Real.cosh (Real.log (a (n - 1) ^ 2 : ℝ))⌉

end

end A231579.P14426638223302197732

namespace A231579

/-- `ceil(cosh(log(a(n-1)²)))` -/
def P14426638223302197732.Spec : Prop :=
  ∀ n, P14426638223302197732.a n = A231579 (n + 1)

end A231579

/-!
# A231580: a(n) is the numerator of the probability that n segments of length 2, each placed randomly on a line segment of length 2n, will completely cover the line segment.

The programs for A231580, there is no canonical definition to state claims against.
-/

/-! ## A231580.P13501059870077426849

`A097198(A084481(n+1))`
-/

namespace A231580.P13501059870077426849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097198 (A084481 (n + 1)).toNat

end

end A231580.P13501059870077426849

/-!
# A231581: Number of n X 2 0..3 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231581, there is no canonical definition to state claims against.
-/

/-! ## A231581.P800991226667568868

`A231586(∑[n+1]+2)`
-/

namespace A231581.P800991226667568868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A231581.P800991226667568868

/-! ## A231581.P106080952910291266

`record[A231586(∑[A152271(n)])]`
-/

namespace A231581.P106080952910291266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231581.P106080952910291266

/-! ## A231581.P4349013277599651868

`record[A231586(A117142(n+1))]`
-/

namespace A231581.P4349013277599651868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231581.P4349013277599651868

/-! ## A231581.P7490742694163753235

`record[root(A231586(n+1), A061554(n))]`
-/

namespace A231581.P7490742694163753235
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231586 (n + 1) : ℝ) ^ (1 / (A061554 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231581.P7490742694163753235

/-! ## A231581.P11111337284871932836

`record[root(A231586(n+1), A066633(n+1))]`
-/

namespace A231581.P11111337284871932836
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A231586 (n + 1) : ℝ) ^ (1 / (A066633 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231581.P11111337284871932836

/-!
# A231582: Number of nX3 0..3 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231582, there is no canonical definition to state claims against.
-/

/-! ## A231582.P2081220856428965195

`A231586(∑[n+2]+4)`
-/

namespace A231582.P2081220856428965195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A231582.P2081220856428965195

/-! ## A231582.P11466015673195985141

`A231586(A167614(n+1))+A185238(n)`
-/

namespace A231582.P11466015673195985141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A167614 (n + 1)).toNat + A185238 n

end

end A231582.P11466015673195985141

/-! ## A231582.P17085530029724196580

`A231586(A167614(n+1))+A141097(n+1)`
-/

namespace A231582.P17085530029724196580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A167614 (n + 1)).toNat + A141097 (n + 1)

end

end A231582.P17085530029724196580

/-! ## A231582.P5365380480558854163

`A337917(n+1)+A231586(A167614(n+1))`
-/

namespace A231582.P5365380480558854163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337917 (n + 1) + A231586 (A167614 (n + 1)).toNat

end

end A231582.P5365380480558854163

/-! ## A231582.P5739934126352952848

`A231600(2*n)+A231586(A034856(n+2))`
-/

namespace A231582.P5739934126352952848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231600 (2 * n) + A231586 (A034856 (n + 2)).toNat

end

end A231582.P5739934126352952848

/-!
# A231583: Number of n X 4 0..3 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231583, there is no canonical definition to state claims against.
-/

/-! ## A231583.P7359487237121753117

`A231586(A141214(n)+7)`
-/

namespace A231583.P7359487237121753117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A141214 n + 7).toNat

end

end A231583.P7359487237121753117

/-! ## A231583.P1947461771672686196

`A231586(A052905(n)+9)`
-/

namespace A231583.P1947461771672686196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A052905 n + 9).toNat

end

end A231583.P1947461771672686196

/-! ## A231583.P9017903517586408726

`A231586(eq[5, A066657(n)])`
-/

namespace A231583.P9017903517586408726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231583.P9017903517586408726

/-! ## A231583.P15910745279240581967

`A231586(Δ[A008778(n)]+6)`
-/

namespace A231583.P15910745279240581967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (f1 (n + 1) - f1 n + 6).toNat

end

end A231583.P15910745279240581967

/-! ## A231583.P6870091716041208227

`A231586(A167614(n+2)+1)`
-/

namespace A231583.P6870091716041208227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A167614 (n + 2) + 1).toNat

end

end A231583.P6870091716041208227

/-!
# A231584: Number of nX5 0..3 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231584, there is no canonical definition to state claims against.
-/

/-! ## A231584.P7202172539746435179

`A231586(A056000(n)+15)`
-/

namespace A231584.P7202172539746435179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A056000 n + 15).toNat

end

end A231584.P7202172539746435179

/-! ## A231584.P6111171641964214520

`A231586(eq[7, A066657(n)])`
-/

namespace A231584.P6111171641964214520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231584.P6111171641964214520

/-! ## A231584.P565957813920693688

`A231586(Δ[A264443(n)])`
-/

namespace A231584.P565957813920693688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (f1 (n + 1) - f1 n).toNat

end

end A231584.P565957813920693688

/-! ## A231584.P8583305717061102753

`A231586(A374005(n+1))`
-/

namespace A231584.P8583305717061102753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A374005 (n + 1)).toNat

end

end A231584.P8583305717061102753

/-! ## A231584.P12065632818907686161

`A231586(eq[4, A193592(n)])`
-/

namespace A231584.P12065632818907686161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231584.P12065632818907686161

/-!
# A231585: Number of nX6 0..3 arrays with no element less than a strict majority of its horizontal, vertical, diagonal and antidiagonal neighbors.

The programs for A231585, there is no canonical definition to state claims against.
-/

/-! ## A231585.P7830744725189458374

`A231586(A374007(n+1))`
-/

namespace A231585.P7830744725189458374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A374007 (n + 1)).toNat

end

end A231585.P7830744725189458374

/-! ## A231585.P11852513630645190198

`A231586(A052905(n+3))`
-/

namespace A231585.P11852513630645190198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A052905 (n + 3)).toNat

end

end A231585.P11852513630645190198

/-! ## A231585.P10754396090616028227

`A231586(eq[5, A193592(n)])`
-/

namespace A231585.P10754396090616028227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A231585.P10754396090616028227

/-! ## A231585.P11771999521912914653

`A231586(A141214(n+3)-2)`
-/

namespace A231585.P11771999521912914653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231586 (A141214 (n + 3) - 2).toNat

end

end A231585.P11771999521912914653

/-!
# A231587: Numbers k such that sigma(sigma(k)) - sigma(k) + 1 is prime.

The programs for A231587, the canonical program `A231587.P4482613944097138198` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A231587 has offset 1).

The definition of A231587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A231587.P355074319240024746

`eq[1, A001222(A001065(∑{d}[n+1, #])+1)]+1`
-/

namespace A231587.P355074319240024746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001065 (∑ d ∈ Nat.divisors (f3 n), d) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A231587.P355074319240024746

namespace A231587

/-- `eq[1, A001222(A001065(∑{d}[n+1, #])+1)]+1` -/
def P355074319240024746.Spec : Prop :=
  ∀ n, (P355074319240024746.a n : ℤ) = A231587 (n + 1)

end A231587

/-! ## A231587.P4482613944097138198

`eq[1, A010051(A001065(∑{d}[n+1, #])+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A231587

/-- `eq[1, A010051(A001065(∑{d}[n+1, #])+1)]+1` -/
def P4482613944097138198.Spec : Prop :=
  ∀ n, (P4482613944097138198.a n : ℤ) = A231587 (n + 1)

theorem P4482613944097138198.correct : P4482613944097138198.Spec := by
  intro n
  simp only [A231587, Nat.add_sub_cancel]

end A231587

/-!
# A231588: Primes with decimal digits in arithmetic progression mod 10.

The programs for A231588, there is no canonical definition to state claims against.
-/

/-! ## A231588.P2015364813099994164

`p?[A130734(A130734(n+2))]`
-/

namespace A231588.P2015364813099994164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A130734 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A231588.P2015364813099994164

/-! ## A231588.P9407696419491096151

`record[A093819(A118759(n+2))+1]`
-/

namespace A231588.P9407696419491096151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (A118759 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A231588.P9407696419491096151

/-! ## A231588.P15571547495756735982

`A238852(n+1)%A175229(n+1)`
-/

namespace A231588.P15571547495756735982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238852 (n + 1)) (A175229 (n + 1))

end

end A231588.P15571547495756735982

/-! ## A231588.P5816230065231048933

`∩[A049585(n+1), A130734(n+1)]`
-/

namespace A231588.P5816230065231048933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231588.P5816230065231048933

/-! ## A231588.P4817881681797047715

`∩[A052085(n+1), A346724(n+1)]`
-/

namespace A231588.P4817881681797047715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A231588.P4817881681797047715

/-!
# A231589: a(n) = sum_{k=1..(n-1)/2} (k^2 mod n).

The programs for A231589, there is no canonical definition to state claims against.
-/

/-! ## A231589.P10000512444880285996

`A048153(n+1)-A230366(n+1)`
-/

namespace A231589.P10000512444880285996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048153 (n + 1) - A230366 (n + 1)

end

end A231589.P10000512444880285996

/-! ## A231589.P6613775487695224862

`A230366(n+1)-A195938(n+1)`
-/

namespace A231589.P6613775487695224862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230366 (n + 1) - A195938 (n + 1)

end

end A231589.P6613775487695224862

/-! ## A231589.P12674216287245195932

`(A048153(n+1)-A195938(n+1))/2`
-/

namespace A231589.P12674216287245195932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048153 (n + 1) - A195938 (n + 1) : ℚ) / 2

end

end A231589.P12674216287245195932

/-! ## A231589.P968179030959634689

`(∑[(n+1)²]-(n+1)*A014817(n+1)-A195938(n+1))/2`
-/

namespace A231589.P968179030959634689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ) * A014817 (n + 1) - A195938 (n + 1) : ℚ) / 2

end

end A231589.P968179030959634689

/-! ## A231589.P12473589240212611116

`(A049768(n+1)-A049760(n+1)-A195938(n+1))/2`
-/

namespace A231589.P12473589240212611116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049768 (n + 1) - A049760 (n + 1) - A195938 (n + 1) : ℚ) / 2

end

end A231589.P12473589240212611116

/-! ## A231589.P11925407675258212658

`A014682(A048153(n+1)-A195938(n+1))`
-/

namespace A231589.P11925407675258212658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A048153 (n + 1) - A195938 (n + 1)).toNat

end

end A231589.P11925407675258212658

/-! ## A231589.P4943418928773005250

`A014682(∑[(n+1)²]-(n+1)*A014817(n+1)-A195938(n+1))`
-/

namespace A231589.P4943418928773005250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ) * A014817 (n + 1) - A195938 (n + 1)).toNat

end

end A231589.P4943418928773005250

/-! ## A231589.P1585486999547334663

`A014682(A049768(n+1)-(A195938(n+1)+A049760(n+1)))`
-/

namespace A231589.P1585486999547334663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A049768 (n + 1) - (A195938 (n + 1) + A049760 (n + 1))).toNat

end

end A231589.P1585486999547334663

/-! ## A231589.P14624329332754108038

`A175126(A048153(n+1)-A195938(n+1))`
-/

namespace A231589.P14624329332754108038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A048153 (n + 1) - A195938 (n + 1)).toNat

end

end A231589.P14624329332754108038

/-! ## A231589.P12792076169287872667

`A004525(A048153(n+1)-A195938(n+1))`
-/

namespace A231589.P12792076169287872667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A048153 (n + 1) - A195938 (n + 1)).toNat

end

end A231589.P12792076169287872667

/-! ## A231589.P11457559140598022181

`A004526(A048153(n+1)-A195938(n+1))`
-/

namespace A231589.P11457559140598022181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A048153 (n + 1) - A195938 (n + 1)).toNat

end

end A231589.P11457559140598022181

/-! ## A231589.P647199229739202288

`A026741(A048153(n+1)-A195938(n+1))`
-/

namespace A231589.P647199229739202288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A048153 (n + 1) - A195938 (n + 1)).toNat

end

end A231589.P647199229739202288

/-!
# A231590: Total number of 1's digits in primes less than 10^n.

The programs for A231590, there is no canonical definition to state claims against.
-/

/-! ## A231590.P9619993872983673782

`∑[A152273(n+1)]`
-/

namespace A231590.P9619993872983673782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231590.P9619993872983673782

/-! ## A231590.P16780898952409548428

`∑[record[A152273(A000119(n))]]`
-/

namespace A231590.P16780898952409548428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152273 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231590.P16780898952409548428

/-! ## A231590.P10781290061221917212

`∑[record[A152273(A000121(n))]]`
-/

namespace A231590.P10781290061221917212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152273 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231590.P10781290061221917212

/-! ## A231590.P1409661068290924928

`∑[record[A152273(A000174(n))]]`
-/

namespace A231590.P1409661068290924928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152273 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231590.P1409661068290924928

/-! ## A231590.P2682292480316891684

`∑[record[A152273(A020986(n))]]`
-/

namespace A231590.P2682292480316891684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152273 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231590.P2682292480316891684

/-!
# A231591: Total number of 2's digits in primes less than 10^n.

The programs for A231591, there is no canonical definition to state claims against.
-/

/-! ## A231591.P15995842991751604690

`∑[A152274(n+1)]`
-/

namespace A231591.P15995842991751604690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231591.P15995842991751604690

/-! ## A231591.P8848557875666806973

`∑[record[A152274(A000119(n))]]`
-/

namespace A231591.P8848557875666806973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152274 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231591.P8848557875666806973

/-! ## A231591.P11063557865425562098

`∑[record[A152274(A000121(n))]]`
-/

namespace A231591.P11063557865425562098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152274 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231591.P11063557865425562098

/-! ## A231591.P11896658977562679509

`∑[record[A152274(A000174(n))]]`
-/

namespace A231591.P11896658977562679509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152274 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231591.P11896658977562679509

/-! ## A231591.P283980883147223653

`∑[record[A152274(A020986(n))]]`
-/

namespace A231591.P283980883147223653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152274 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231591.P283980883147223653

/-!
# A231592: Total number of 3's digits in primes less than 10^n.

The programs for A231592, there is no canonical definition to state claims against.
-/

/-! ## A231592.P17048633979901100097

`∑[A152275(n+1)]`
-/

namespace A231592.P17048633979901100097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231592.P17048633979901100097

/-! ## A231592.P10330507649266028494

`∑[record[A152275(A000119(n))]]`
-/

namespace A231592.P10330507649266028494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152275 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231592.P10330507649266028494

/-! ## A231592.P2684198946418729404

`∑[record[A152275(A000121(n))]]`
-/

namespace A231592.P2684198946418729404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152275 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231592.P2684198946418729404

/-! ## A231592.P15337768931086259627

`∑[record[A152275(A000174(n))]]`
-/

namespace A231592.P15337768931086259627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152275 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231592.P15337768931086259627

/-! ## A231592.P9077760652423044542

`∑[record[A152275(A020986(n))]]`
-/

namespace A231592.P9077760652423044542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152275 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231592.P9077760652423044542

/-!
# A231593: Total number of 4's digits in primes less than 10^n.

The programs for A231593, there is no canonical definition to state claims against.
-/

/-! ## A231593.P10424014807262520838

`∑[A152276(n+1)]`
-/

namespace A231593.P10424014807262520838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231593.P10424014807262520838

/-! ## A231593.P5721545487427823854

`∑[record[A152276(A000119(n))]]`
-/

namespace A231593.P5721545487427823854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152276 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231593.P5721545487427823854

/-! ## A231593.P13225116764600382980

`∑[record[A152276(A000121(n))]]`
-/

namespace A231593.P13225116764600382980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152276 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231593.P13225116764600382980

/-! ## A231593.P18276397069836741361

`∑[record[A152276(A000174(n))]]`
-/

namespace A231593.P18276397069836741361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152276 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231593.P18276397069836741361

/-! ## A231593.P6561413285479873667

`∑[record[A152276(A020986(n))]]`
-/

namespace A231593.P6561413285479873667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152276 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231593.P6561413285479873667

/-!
# A231594: Total number of 5's digits in primes less than 10^n.

The programs for A231594, there is no canonical definition to state claims against.
-/

/-! ## A231594.P12766850525187723694

`∑[A152277(n+1)]`
-/

namespace A231594.P12766850525187723694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231594.P12766850525187723694

/-! ## A231594.P18108649778490673685

`∑[record[A152277(A000119(n))]]`
-/

namespace A231594.P18108649778490673685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152277 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231594.P18108649778490673685

/-! ## A231594.P13885600448595740099

`∑[record[A152277(A000121(n))]]`
-/

namespace A231594.P13885600448595740099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152277 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231594.P13885600448595740099

/-! ## A231594.P7421618729796115937

`∑[record[A152277(A000174(n))]]`
-/

namespace A231594.P7421618729796115937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152277 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231594.P7421618729796115937

/-! ## A231594.P15396706949161950532

`∑[record[A152277(A020986(n))]]`
-/

namespace A231594.P15396706949161950532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152277 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231594.P15396706949161950532

/-!
# A231595: Total number of 6's digits in primes less than 10^n.

The programs for A231595, there is no canonical definition to state claims against.
-/

/-! ## A231595.P13391437780374598547

`∑[A152278(n+1)]`
-/

namespace A231595.P13391437780374598547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231595.P13391437780374598547

/-! ## A231595.P8833800985052743674

`∑[record[A152278(A000119(n))]]`
-/

namespace A231595.P8833800985052743674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152278 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231595.P8833800985052743674

/-! ## A231595.P9831170071817857193

`∑[record[A152278(A000121(n))]]`
-/

namespace A231595.P9831170071817857193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152278 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231595.P9831170071817857193

/-! ## A231595.P4575491635224182494

`∑[record[A152278(A000174(n))]]`
-/

namespace A231595.P4575491635224182494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152278 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231595.P4575491635224182494

/-! ## A231595.P1259824947275236791

`∑[record[A152278(A020986(n))]]`
-/

namespace A231595.P1259824947275236791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152278 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231595.P1259824947275236791

/-!
# A231596: Total number of 7's digits in primes less than 10^n.

The programs for A231596, there is no canonical definition to state claims against.
-/

/-! ## A231596.P15468689500747618858

`∑[A152279(n+1)]`
-/

namespace A231596.P15468689500747618858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231596.P15468689500747618858

/-! ## A231596.P10742169292606684349

`∑[record[A152279(A000119(n))]]`
-/

namespace A231596.P10742169292606684349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152279 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231596.P10742169292606684349

/-! ## A231596.P13536351111029787504

`∑[record[A152279(A000121(n))]]`
-/

namespace A231596.P13536351111029787504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152279 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231596.P13536351111029787504

/-! ## A231596.P12293105146461789853

`∑[record[A152279(A000174(n))]]`
-/

namespace A231596.P12293105146461789853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152279 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231596.P12293105146461789853

/-! ## A231596.P13808441054455938190

`∑[record[A152279(A020986(n))]]`
-/

namespace A231596.P13808441054455938190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152279 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231596.P13808441054455938190

/-!
# A231597: Total number of 8's digits in primes less than 10^n.

The programs for A231597, there is no canonical definition to state claims against.
-/

/-! ## A231597.P11836610409199741482

`∑[A152280(n+1)]`
-/

namespace A231597.P11836610409199741482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231597.P11836610409199741482

/-! ## A231597.P6336744677787395903

`∑[record[A152280(gcd(xor(1, n²), ∑[n]))]]`
-/

namespace A231597.P6336744677787395903
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152280 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231597.P6336744677787395903

/-! ## A231597.P11721699219639769135

`∑[record[A152280(A000119(n))]]`
-/

namespace A231597.P11721699219639769135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152280 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231597.P11721699219639769135

/-! ## A231597.P14631709950821268010

`∑[record[A152280(A000121(n))]]`
-/

namespace A231597.P14631709950821268010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152280 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231597.P14631709950821268010

/-! ## A231597.P5669326565853849172

`∑[record[A152280(A000174(n))]]`
-/

namespace A231597.P5669326565853849172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152280 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231597.P5669326565853849172

/-!
# A231598: Total number of 9's digits in primes less than 10^n.

The programs for A231598, there is no canonical definition to state claims against.
-/

/-! ## A231598.P4983502647790734733

`∑[A152281(n+1)]`
-/

namespace A231598.P4983502647790734733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231598.P4983502647790734733

/-! ## A231598.P13537016158966568103

`∑[record[A152281(A000119(n))]]`
-/

namespace A231598.P13537016158966568103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152281 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231598.P13537016158966568103

/-! ## A231598.P18429974669299450611

`∑[record[A152281(A000121(n))]]`
-/

namespace A231598.P18429974669299450611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152281 (A000121 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231598.P18429974669299450611

/-! ## A231598.P16226409770355649716

`∑[record[A152281(A000174(n))]]`
-/

namespace A231598.P16226409770355649716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152281 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231598.P16226409770355649716

/-! ## A231598.P13875297555633981050

`∑[record[A152281(A020986(n))]]`
-/

namespace A231598.P13875297555633981050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152281 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A231598.P13875297555633981050

/-!
# A231599: T(n,k) is the coefficient of x^k in Product_{i=1..n} (1-x^i); triangle T(n,k), n >= 0, 0 <= k <= A000217(n), read by rows.

The programs for A231599, there is no canonical definition to state claims against.
-/

/-! ## A231599.P13855974203927209356

`A333290(n+1)`
-/

namespace A231599.P13855974203927209356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333290 (n + 1)

end

end A231599.P13855974203927209356

/-! ## A231599.P7204194851373048984

`A333290(1-(n-2*n))%3`
-/

namespace A231599.P7204194851373048984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333290 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) 3

end

end A231599.P7204194851373048984

/-! ## A231599.P13071379102463627580

`A333290(A348553(n))^A001844(n)`
-/

namespace A231599.P13071379102463627580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333290 (A348553 n).toNat : ℚ) ^ (A001844 n : ℤ)

end

end A231599.P13071379102463627580

/-! ## A231599.P15213901377222080542

`A333290(A348553(n))^A049454(n)`
-/

namespace A231599.P15213901377222080542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333290 (A348553 n).toNat : ℚ) ^ (A049454 n : ℤ)

end

end A231599.P15213901377222080542

/-! ## A231599.P7821648474712634895

`A333290(A348553(n))^A083329(n)`
-/

namespace A231599.P7821648474712634895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333290 (A348553 n).toNat : ℚ) ^ (A083329 n : ℤ)

end

end A231599.P7821648474712634895

