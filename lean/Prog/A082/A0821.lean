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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A082100: a(n) = A001157(A002110(n)), sum of squares of divisors of primorial numbers.

The programs for A082100, the canonical program `A082100.P16114683157096946740` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082100 has offset 1).

The definition of A082100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001157(A002110(n+1))` (program `A082100.P16114683157096946740`, by `A082100.P16114683157096946740.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082100.P16114683157096946740

`A001157(A002110(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082100

/-- `A001157(A002110(n+1))` -/
def P16114683157096946740.Spec : Prop :=
  ∀ n, P16114683157096946740.a n = A082100 (n + 1)

theorem P16114683157096946740.correct : P16114683157096946740.Spec := by
  intro n
  simp only [A082100, Nat.add_sub_cancel]

end A082100

/-! ## A082100.P9862844206255323721

`∏[p?[comp[n²]]²+1]`
-/

namespace A082100.P9862844206255323721
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082100.P9862844206255323721

namespace A082100

/-- `∏[p?[comp[n²]]²+1]` -/
def P9862844206255323721.Spec : Prop :=
  ∀ n, (P9862844206255323721.a n : ℤ) = A082100 (n + 1)

end A082100

/-! ## A082100.P12017603142193577737

`∏[record[∑{p}[2*n+1, #²-4]]+5]`
-/

namespace A082100.P12017603142193577737
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ((p ^ 2 : ℤ) - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082100.P12017603142193577737

namespace A082100

/-- `∏[record[∑{p}[2*n+1, #²-4]]+5]` -/
def P12017603142193577737.Spec : Prop :=
  ∀ n, P12017603142193577737.a n = A082100 (n + 1)

end A082100

/-! ## A082100.P16061586242660908962

`∏[A066872(n+1)]`
-/

namespace A082100.P16061586242660908962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082100.P16061586242660908962

namespace A082100

/-- `∏[A066872(n+1)]` -/
def P16061586242660908962.Spec : Prop :=
  ∀ n, P16061586242660908962.a n = A082100 (n + 1)

end A082100

/-! ## A082100.P10491673870570029267

`∏[record[A323728(n+2)]]`
-/

namespace A082100.P10491673870570029267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323728 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A082100.P10491673870570029267

namespace A082100

/-- `∏[record[A323728(n+2)]]` -/
def P10491673870570029267.Spec : Prop :=
  ∀ n, P10491673870570029267.a n = A082100 (n + 1)

end A082100

/-!
# A082102: Primes of the form 2^(k-1) + 3^k.

The programs for A082102, there is no canonical definition to state claims against.
-/

/-! ## A082102.P16290577917295420214

`2^(A082103(n+1)-1)+3^A082103(n+1)`
-/

namespace A082102.P16290577917295420214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A082103 (n + 1) - 1 : ℤ) + (3 : ℚ) ^ (A082103 (n + 1) : ℤ)

end

end A082102.P16290577917295420214

/-! ## A082102.P8128188073070857983

`p?[2^n+3^(n+1)]`
-/

namespace A082102.P8128188073070857983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A082102.P8128188073070857983

/-! ## A082102.P16950566255745563642

`A119733(2*A353734(n+3)+1)`
-/

namespace A082102.P16950566255745563642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119733 (2 * A353734 (n + 3) + 1).toNat

end

end A082102.P16950566255745563642

/-!
# A082104: Number of distinct characteristic polynomials among all simple undirected graphs on n nodes.

The programs for A082104, there is no canonical definition to state claims against.
-/

/-! ## A082104.P10769795973694771975

`A076316(n+1)+A033665(A000088(n))`
-/

namespace A082104.P10769795973694771975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076316 (n + 1) + A033665 (A000088 n).toNat

end

end A082104.P10769795973694771975

/-! ## A082104.P741173266357704502

`A076316(n+1)+A003056(A184993(n))`
-/

namespace A082104.P741173266357704502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076316 (n + 1) + A003056 (A184993 n).toNat

end

end A082104.P741173266357704502

/-! ## A082104.P18041190221335547780

`A304125(n+1)+A007149(A051249(n))`
-/

namespace A082104.P18041190221335547780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304125 (n + 1) + A007149 (A051249 n).toNat

end

end A082104.P18041190221335547780

/-!
# A082105: Array A(n, k) = (k*n)^2 + 4*(k*n) + 1, read by antidiagonals.

The programs for A082105, the canonical program `A082105.P13591676068290801104` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082105 has offset 0).

The definition of A082105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)*(row(n)-col(n)))²+4*col(n)*(row(n)-col(n))+1` (program `A082105.P13591676068290801104`, by `A082105.P13591676068290801104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082105.P13591676068290801104

`(col(n)*(row(n)-col(n)))²+4*col(n)*(row(n)-col(n))+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082105

/-- `(col(n)*(row(n)-col(n)))²+4*col(n)*(row(n)-col(n))+1` -/
def P13591676068290801104.Spec : Prop :=
  ∀ n, P13591676068290801104.a n = A082105 n

theorem P13591676068290801104.correct : P13591676068290801104.Spec := by
  intro n
  simp only [A082105]

end A082105

/-! ## A082105.P8030502533712775011

`((row(n)-col(n))*col(n))²+4*(row(n)-col(n))*col(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082105.P8030502533712775011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)) ^ 2 + 4 * (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)) + 1

end

end A082105.P8030502533712775011

namespace A082105

/-- `((row(n)-col(n))*col(n))²+4*(row(n)-col(n))*col(n)+1` -/
def P8030502533712775011.Spec : Prop :=
  ∀ n, P8030502533712775011.a n = A082105 n

theorem P8030502533712775011.correct : P8030502533712775011.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P8030502533712775011.a, A082105.P13591676068290801104.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082105

/-! ## A082105.P3706632998873099175

`1+col(n)*(row(n)-col(n))*(4+col(n)*(row(n)-col(n)))`
-/

namespace A082105.P3706632998873099175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (4 + (SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)))

end

end A082105.P3706632998873099175

namespace A082105

/-- `1+col(n)*(row(n)-col(n))*(4+col(n)*(row(n)-col(n)))` -/
def P3706632998873099175.Spec : Prop :=
  ∀ n, P3706632998873099175.a n = A082105 n

theorem P3706632998873099175.correct : P3706632998873099175.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P3706632998873099175.a, A082105.P13591676068290801104.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082105

/-! ## A082105.P9895694468637578656

`(A077028(n)+1)²-3`
-/

namespace A082105.P9895694468637578656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077028 n + 1) ^ 2 - 3

end

end A082105.P9895694468637578656

namespace A082105

/-- `(A077028(n)+1)²-3` -/
def P9895694468637578656.Spec : Prop :=
  ∀ n, P9895694468637578656.a n = A082105 n

theorem P9895694468637578656.correct : P9895694468637578656.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P9895694468637578656.a, A082105.P13591676068290801104.a, A077028, A077028.P18404356772921913843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P1218410680448124864

`(A004247(n)+2)²-3`
-/

namespace A082105.P1218410680448124864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + 2) ^ 2 - 3

end

end A082105.P1218410680448124864

namespace A082105

/-- `(A004247(n)+2)²-3` -/
def P1218410680448124864.Spec : Prop :=
  ∀ n, P1218410680448124864.a n = A082105 n

theorem P1218410680448124864.correct : P1218410680448124864.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P1218410680448124864.a, A082105.P13591676068290801104.a, A004247, A004247.P2751605162508615148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P686681369173749301

`(3-A176270(n))²-3`
-/

namespace A082105.P686681369173749301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A176270 n) ^ 2 - 3

end

end A082105.P686681369173749301

namespace A082105

/-- `(3-A176270(n))²-3` -/
def P686681369173749301.Spec : Prop :=
  ∀ n, P686681369173749301.a n = A082105 n

theorem P686681369173749301.correct : P686681369173749301.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P686681369173749301.a, A082105.P13591676068290801104.a, A176270, A176270.P15264438552937889960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P1202605044853108047

`(sqrt(A082043(n))+1)²-3`
-/

namespace A082105.P1202605044853108047
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A082043 n : ℝ) + 1) ^ 2 - 3

end

end A082105.P1202605044853108047

namespace A082105

/-- `(sqrt(A082043(n))+1)²-3` -/
def P1202605044853108047.Spec : Prop :=
  ∀ n, P1202605044853108047.a n = (A082105 n : ℝ)

end A082105

/-! ## A082105.P12385979843799700642

`A028872(A077028(n)+1)`
-/

namespace A082105.P12385979843799700642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A077028 n + 1).toNat

end

end A082105.P12385979843799700642

namespace A082105

/-- `A028872(A077028(n)+1)` -/
def P12385979843799700642.Spec : Prop :=
  ∀ n, P12385979843799700642.a n = A082105 n

end A082105

/-! ## A082105.P2868440266774039542

`A004116(A130154(n+1))`
-/

namespace A082105.P2868440266774039542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004116 (A130154 (n + 1)).toNat

end

end A082105.P2868440266774039542

namespace A082105

/-- `A004116(A130154(n+1))` -/
def P2868440266774039542.Spec : Prop :=
  ∀ n, P2868440266774039542.a n = A082105 n

end A082105

/-! ## A082105.P16489562855366376513

`A123968(A077028(n)+1)`
-/

namespace A082105.P16489562855366376513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123968 (A077028 n + 1).toNat

end

end A082105.P16489562855366376513

namespace A082105

/-- `A123968(A077028(n)+1)` -/
def P16489562855366376513.Spec : Prop :=
  ∀ n, P16489562855366376513.a n = A082105 n

end A082105

/-! ## A082105.P11907258904602863688

`A028872(A004247(n)+2)`
-/

namespace A082105.P11907258904602863688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A004247 n + 2).toNat

end

end A082105.P11907258904602863688

namespace A082105

/-- `A028872(A004247(n)+2)` -/
def P11907258904602863688.Spec : Prop :=
  ∀ n, P11907258904602863688.a n = A082105 n

end A082105

/-! ## A082105.P15213009072684032917

`A082046(n)+A004247(n)`
-/

namespace A082105.P15213009072684032917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n + A004247 n

end

end A082105.P15213009072684032917

namespace A082105

/-- `A082046(n)+A004247(n)` -/
def P15213009072684032917.Spec : Prop :=
  ∀ n, P15213009072684032917.a n = A082105 n

theorem P15213009072684032917.correct : P15213009072684032917.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P15213009072684032917.a, A082105.P13591676068290801104.a, A004247, A004247.P2751605162508615148.a, A082046, A082046.P3826101076602898823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P4191586732714855770

`A082110(n)-A004247(n)`
-/

namespace A082105.P4191586732714855770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082110 n - A004247 n

end

end A082105.P4191586732714855770

namespace A082105

/-- `A082110(n)-A004247(n)` -/
def P4191586732714855770.Spec : Prop :=
  ∀ n, P4191586732714855770.a n = A082105 n

theorem P4191586732714855770.correct : P4191586732714855770.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P4191586732714855770.a, A082105.P13591676068290801104.a, A004247, A004247.P2751605162508615148.a, A082110, A082110.P2791386172549189163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P11622801289087352704

`A082043(n)+2*A004247(n)`
-/

namespace A082105.P11622801289087352704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n + 2 * A004247 n

end

end A082105.P11622801289087352704

namespace A082105

/-- `A082043(n)+2*A004247(n)` -/
def P11622801289087352704.Spec : Prop :=
  ∀ n, P11622801289087352704.a n = A082105 n

theorem P11622801289087352704.correct : P11622801289087352704.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P11622801289087352704.a, A082105.P13591676068290801104.a, A004247, A004247.P2751605162508615148.a, A082043, A082043.P1888788749395997436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P10905213043161158023

`2*A082046(n)-A082043(n)`
-/

namespace A082105.P10905213043161158023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082046 n - A082043 n

end

end A082105.P10905213043161158023

namespace A082105

/-- `2*A082046(n)-A082043(n)` -/
def P10905213043161158023.Spec : Prop :=
  ∀ n, P10905213043161158023.a n = A082105 n

theorem P10905213043161158023.correct : P10905213043161158023.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P10905213043161158023.a, A082105.P13591676068290801104.a, A082043, A082043.P1888788749395997436.a, A082046, A082046.P3826101076602898823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P6189018384839501701

`(A082110(n)+A082046(n))/2`
-/

namespace A082105.P6189018384839501701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082110 n + A082046 n : ℚ) / 2

end

end A082105.P6189018384839501701

namespace A082105

/-- `(A082110(n)+A082046(n))/2` -/
def P6189018384839501701.Spec : Prop :=
  ∀ n, P6189018384839501701.a n = (A082105 n : ℚ)

theorem P6189018384839501701.correct : P6189018384839501701.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P6189018384839501701.a, A082105.P13591676068290801104.a, A082046, A082046.P3826101076602898823.a, A082110, A082110.P2791386172549189163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P238308978933680906

`A082043(n)+A082046(n)-A082039(n)`
-/

namespace A082105.P238308978933680906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n + (A082046 n - A082039 n)

end

end A082105.P238308978933680906

namespace A082105

/-- `A082043(n)+A082046(n)-A082039(n)` -/
def P238308978933680906.Spec : Prop :=
  ∀ n, P238308978933680906.a n = A082105 n

theorem P238308978933680906.correct : P238308978933680906.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P238308978933680906.a, A082105.P13591676068290801104.a, A082039, A082039.P10289297583619271704.a, A082043, A082043.P1888788749395997436.a, A082046, A082046.P3826101076602898823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P16911188165197586547

`A082039(n)+A082110(n)-A082043(n)`
-/

namespace A082105.P16911188165197586547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082039 n + (A082110 n - A082043 n)

end

end A082105.P16911188165197586547

namespace A082105

/-- `A082039(n)+A082110(n)-A082043(n)` -/
def P16911188165197586547.Spec : Prop :=
  ∀ n, P16911188165197586547.a n = A082105 n

theorem P16911188165197586547.correct : P16911188165197586547.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P16911188165197586547.a, A082105.P13591676068290801104.a, A082039, A082039.P10289297583619271704.a, A082043, A082043.P1888788749395997436.a, A082110, A082110.P2791386172549189163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P10818074854584758476

`A082043(n)+A082110(n)-A082046(n)`
-/

namespace A082105.P10818074854584758476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n + (A082110 n - A082046 n)

end

end A082105.P10818074854584758476

namespace A082105

/-- `A082043(n)+A082110(n)-A082046(n)` -/
def P10818074854584758476.Spec : Prop :=
  ∀ n, P10818074854584758476.a n = A082105 n

theorem P10818074854584758476.correct : P10818074854584758476.Spec := by
  intro n
  simp only [A082105, Nat.add_sub_cancel, A082105.P10818074854584758476.a, A082105.P13591676068290801104.a, A082043, A082043.P1888788749395997436.a, A082046, A082046.P3826101076602898823.a, A082110, A082110.P2791386172549189163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082105

/-! ## A082105.P13080209323414940245

`(log2(A117401(n))+2)²-3`
-/

namespace A082105.P13080209323414940245
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A117401 n : ℝ) + 2) ^ 2 - 3

end

end A082105.P13080209323414940245

namespace A082105

/-- `(log2(A117401(n))+2)²-3` -/
def P13080209323414940245.Spec : Prop :=
  ∀ n, P13080209323414940245.a n = (A082105 n : ℝ)

end A082105

/-!
# A082106: Main diagonal of number array A082105.

The programs for A082106, the canonical program `A082106.P6467182335173470423` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082106 has offset 0).

The definition of A082106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082106.P6467182335173470423

`(n²+2)²-3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082106

/-- `(n²+2)²-3` -/
def P6467182335173470423.Spec : Prop :=
  ∀ n, P6467182335173470423.a n = A082106 n

theorem P6467182335173470423.correct : P6467182335173470423.Spec := by
  intro n
  simp only [A082106]

end A082106

/-! ## A082106.P13582932105535286583

`ogf((1+x+13x^2+3x^3+6x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A082106.P13582932105535286583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 13, 3, 6] [1, -5, 10, -10, 5, -1] n

end

end A082106.P13582932105535286583

namespace A082106

/-- `ogf((1+x+13x^2+3x^3+6x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13582932105535286583.Spec : Prop :=
  ∀ n, P13582932105535286583.a n = A082106 n

end A082106

/-! ## A082106.P118425275438777665

`abs(or(2, n²)²-3)`
-/

namespace A082106.P118425275438777665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 2 (n ^ 2) ^ 2 : ℤ) - 3|

end

end A082106.P118425275438777665

namespace A082106

/-- `abs(or(2, n²)²-3)` -/
def P118425275438777665.Spec : Prop :=
  ∀ n, P118425275438777665.a n = A082106 n

end A082106

/-! ## A082106.P5266244577647497451

`abs(xor(2, n²)²-3)`
-/

namespace A082106.P5266244577647497451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.xor 2 (n ^ 2) ^ 2 : ℤ) - 3|

end

end A082106.P5266244577647497451

namespace A082106

/-- `abs(xor(2, n²)²-3)` -/
def P5266244577647497451.Spec : Prop :=
  ∀ n, P5266244577647497451.a n = A082106 n

end A082106

/-! ## A082106.P17202382477643044196

`xor(8, (n²+2)²+5)`
-/

namespace A082106.P17202382477643044196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 8 ((n ^ 2 + 2) ^ 2 + 5)

end

end A082106.P17202382477643044196

namespace A082106

/-- `xor(8, (n²+2)²+5)` -/
def P17202382477643044196.Spec : Prop :=
  ∀ n, (P17202382477643044196.a n : ℤ) = A082106 n

end A082106

/-! ## A082106.P2464918012710002313

`abs(2-A304726(n))`
-/

namespace A082106.P2464918012710002313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A304726 n|

end

end A082106.P2464918012710002313

namespace A082106

/-- `abs(2-A304726(n))` -/
def P2464918012710002313.Spec : Prop :=
  ∀ n, P2464918012710002313.a n = A082106 n

end A082106

/-! ## A082106.P5621978362376982111

`abs(3-A059100(n)²)`
-/

namespace A082106.P5621978362376982111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A059100 n ^ 2|

end

end A082106.P5621978362376982111

namespace A082106

/-- `abs(3-A059100(n)²)` -/
def P5621978362376982111.Spec : Prop :=
  ∀ n, P5621978362376982111.a n = A082106 n

end A082106

/-! ## A082106.P9702334623953100906

`abs(A117950(n)-A156798(n))`
-/

namespace A082106.P9702334623953100906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117950 n - A156798 n|

end

end A082106.P9702334623953100906

namespace A082106

/-- `abs(A117950(n)-A156798(n))` -/
def P9702334623953100906.Spec : Prop :=
  ∀ n, P9702334623953100906.a n = A082106 n

end A082106

/-! ## A082106.P12149784959160745628

`A028872(n²+2)`
-/

namespace A082106.P12149784959160745628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (n ^ 2 + 2)

end

end A082106.P12149784959160745628

namespace A082106

/-- `A028872(n²+2)` -/
def P12149784959160745628.Spec : Prop :=
  ∀ n, P12149784959160745628.a n = A082106 n

theorem P12149784959160745628.correct : P12149784959160745628.Spec := by
  intro n
  simp only [A082106, Nat.add_sub_cancel, A082106.P12149784959160745628.a, A082106.P6467182335173470423.a, A028872, A028872.P167608689240179094.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082106

/-! ## A082106.P3227550888756293533

`A123968(n²+2)`
-/

namespace A082106.P3227550888756293533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123968 (n ^ 2 + 2)

end

end A082106.P3227550888756293533

namespace A082106

/-- `A123968(n²+2)` -/
def P3227550888756293533.Spec : Prop :=
  ∀ n, P3227550888756293533.a n = A082106 n

theorem P3227550888756293533.correct : P3227550888756293533.Spec := by
  intro n
  simp only [A082106, Nat.add_sub_cancel, A082106.P3227550888756293533.a, A082106.P6467182335173470423.a, A123968, A123968.P4707337920841887922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082106

/-! ## A082106.P10815826769130902110

`A152811(n²+1)/2`
-/

namespace A082106.P10815826769130902110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152811 (n ^ 2 + 1) : ℚ) / 2

end

end A082106.P10815826769130902110

namespace A082106

/-- `A152811(n²+1)/2` -/
def P10815826769130902110.Spec : Prop :=
  ∀ n, P10815826769130902110.a n = (A082106 n : ℚ)

theorem P10815826769130902110.correct : P10815826769130902110.Spec := by
  intro n
  simp only [A082106, Nat.add_sub_cancel, A082106.P10815826769130902110.a, A082106.P6467182335173470423.a, A152811, A152811.P17181245366381739844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082106

/-! ## A082106.P1262994400970942488

`A267874(∑[A004275(n)]+n)`
-/

namespace A082106.P1262994400970942488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A082106.P1262994400970942488

namespace A082106

/-- `A267874(∑[A004275(n)]+n)` -/
def P1262994400970942488.Spec : Prop :=
  ∀ n, P1262994400970942488.a n = A082106 n

end A082106

/-! ## A082106.P5193397554209668133

`abs(3-A000290(A000290(n)+2))`
-/

namespace A082106.P5193397554209668133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A000290 (A000290 n + 2).toNat|

end

end A082106.P5193397554209668133

namespace A082106

/-- `abs(3-A000290(A000290(n)+2))` -/
def P5193397554209668133.Spec : Prop :=
  ∀ n, P5193397554209668133.a n = A082106 n

end A082106

/-! ## A082106.P9275459726404857108

`abs(2-A005563(n*(A004277(n)-n)+1))`
-/

namespace A082106.P9275459726404857108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A005563 ((n : ℤ) * (A004277 n - (n : ℤ)) + 1).toNat|

end

end A082106.P9275459726404857108

namespace A082106

/-- `abs(2-A005563(n*(A004277(n)-n)+1))` -/
def P9275459726404857108.Spec : Prop :=
  ∀ n, P9275459726404857108.a n = A082106 n

end A082106

/-!
# A082107: Diagonal sums of number array A082105.

The programs for A082107, the canonical program `A082107.P6183422692788257150` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082107 has offset 0).

The definition of A082107 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082107.P16610369451763257318

`ogf((1-4x+11x^2-10x^3+6x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A082107.P16610369451763257318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 11, -10, 6] [1, -6, 15, -20, 15, -6, 1] n

end

end A082107.P16610369451763257318

namespace A082107

/-- `ogf((1-4x+11x^2-10x^3+6x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P16610369451763257318.Spec : Prop :=
  ∀ n, P16610369451763257318.a n = A082107 n

end A082107

/-! ## A082107.P6183422692788257150

`(n^5+20*n^3+9*n+30)/30`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082107

/-- `(n^5+20*n^3+9*n+30)/30` -/
def P6183422692788257150.Spec : Prop :=
  ∀ n, P6183422692788257150.a n = (A082107 n : ℚ)

end A082107

/-! ## A082107.P8249839281709985427

`A082045(n)+∑[n²-n]`
-/

namespace A082107.P8249839281709985427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082045 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082107.P8249839281709985427

namespace A082107

/-- `A082045(n)+∑[n²-n]` -/
def P8249839281709985427.Spec : Prop :=
  ∀ n, P8249839281709985427.a n = A082107 n

end A082107

/-! ## A082107.P14688511130630743872

`A069038(n)-A131176(n)`
-/

namespace A082107.P14688511130630743872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 n - A131176 n

end

end A082107.P14688511130630743872

namespace A082107

/-- `A069038(n)-A131176(n)` -/
def P14688511130630743872.Spec : Prop :=
  ∀ n, P14688511130630743872.a n = A082107 n

end A082107

/-! ## A082107.P11073437913735153523

`A082047(n)+∑[A161680(n)]`
-/

namespace A082107.P11073437913735153523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082047 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082107.P11073437913735153523

namespace A082107

/-- `A082047(n)+∑[A161680(n)]` -/
def P11073437913735153523.Spec : Prop :=
  ∀ n, P11073437913735153523.a n = A082107 n

end A082107

/-! ## A082107.P15301636353104583660

`A082114(n)-∑[A161680(n)]`
-/

namespace A082107.P15301636353104583660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082114 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082107.P15301636353104583660

namespace A082107

/-- `A082114(n)-∑[A161680(n)]` -/
def P15301636353104583660.Spec : Prop :=
  ∀ n, P15301636353104583660.a n = A082107 n

end A082107

/-! ## A082107.P2965213301451007782

`2*A082047(n)-A082045(n)`
-/

namespace A082107.P2965213301451007782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082047 n - A082045 n

end

end A082107.P2965213301451007782

namespace A082107

/-- `2*A082047(n)-A082045(n)` -/
def P2965213301451007782.Spec : Prop :=
  ∀ n, P2965213301451007782.a n = A082107 n

end A082107

/-! ## A082107.P9562354257163069772

`A004006(n)+A082047(n)-n`
-/

namespace A082107.P9562354257163069772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n + (A082047 n - (n : ℤ))

end

end A082107.P9562354257163069772

namespace A082107

/-- `A004006(n)+A082047(n)-n` -/
def P9562354257163069772.Spec : Prop :=
  ∀ n, P9562354257163069772.a n = A082107 n

end A082107

/-! ## A082107.P1819151999719465729

`∑[A006325(n)+A051890(n)-1]`
-/

namespace A082107.P1819151999719465729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n + (A051890 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082107.P1819151999719465729

namespace A082107

/-- `∑[A006325(n)+A051890(n)-1]` -/
def P1819151999719465729.Spec : Prop :=
  ∀ n, P1819151999719465729.a n = A082107 n

end A082107

/-! ## A082107.P7243168373323888996

`Δ[A006484(n)]+∑[A006325(n)]`
-/

namespace A082107.P7243168373323888996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A082107.P7243168373323888996

namespace A082107

/-- `Δ[A006484(n)]+∑[A006325(n)]` -/
def P7243168373323888996.Spec : Prop :=
  ∀ n, P7243168373323888996.a n = A082107 n

end A082107

/-!
# A082108: a(n) = 4*n^2 + 6*n + 1.

The programs for A082108, the canonical program `A082108.P8640110216624797441` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082108 has offset 0).

The definition of A082108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+6*n+1` (program `A082108.P8640110216624797441`, by `A082108.P8640110216624797441.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082108.P12357214991140139463

`ogf((1+8x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A082108.P12357214991140139463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -1] [1, -3, 3, -1] n

end

end A082108.P12357214991140139463

namespace A082108

/-- `ogf((1+8x-x^2)/(1-3x+3x^2-x^3))` -/
def P12357214991140139463.Spec : Prop :=
  ∀ n, P12357214991140139463.a n = A082108 n

end A082108

/-! ## A082108.P8640110216624797441

`4*n²+6*n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082108

/-- `4*n²+6*n+1` -/
def P8640110216624797441.Spec : Prop :=
  ∀ n, (P8640110216624797441.a n : ℤ) = A082108 n

theorem P8640110216624797441.correct : P8640110216624797441.Spec := by
  intro n
  simp only [A082108]

end A082108

/-! ## A082108.P964261336284430719

`record[xor(1, n)²+n]`
-/

namespace A082108.P964261336284430719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082108.P964261336284430719

namespace A082108

/-- `record[xor(1, n)²+n]` -/
def P964261336284430719.Spec : Prop :=
  ∀ n, (P964261336284430719.a n : ℤ) = A082108 n

end A082108

/-! ## A082108.P4193967710017575584

`∑[or(2, 8*n)]-1`
-/

namespace A082108.P4193967710017575584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A082108.P4193967710017575584

namespace A082108

/-- `∑[or(2, 8*n)]-1` -/
def P4193967710017575584.Spec : Prop :=
  ∀ n, P4193967710017575584.a n = A082108 n

end A082108

/-! ## A082108.P10403349954132572408

`∑[xor(1, 8*n)]+n`
-/

namespace A082108.P10403349954132572408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A082108.P10403349954132572408

namespace A082108

/-- `∑[xor(1, 8*n)]+n` -/
def P10403349954132572408.Spec : Prop :=
  ∀ n, (P10403349954132572408.a n : ℤ) = A082108 n

end A082108

/-! ## A082108.P9997907872971517114

`∑[a(n-1)+8]` with `a(0)=1, a(1)=10`
-/

namespace A082108.P9997907872971517114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082108.P9997907872971517114

namespace A082108

/-- `∑[a(n-1)+8]` -/
def P9997907872971517114.Spec : Prop :=
  ∀ n, (P9997907872971517114.a n : ℤ) = A082108 n

end A082108

/-! ## A082108.P16659606407789866592

`or(1, n*(4*n+6))`
-/

namespace A082108.P16659606407789866592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (4 * n + 6))

end

end A082108.P16659606407789866592

namespace A082108

/-- `or(1, n*(4*n+6))` -/
def P16659606407789866592.Spec : Prop :=
  ∀ n, (P16659606407789866592.a n : ℤ) = A082108 n

end A082108

/-! ## A082108.P16128139975350868892

`xor(1, n*(4*n+6))`
-/

namespace A082108.P16128139975350868892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (4 * n + 6))

end

end A082108.P16128139975350868892

namespace A082108

/-- `xor(1, n*(4*n+6))` -/
def P16128139975350868892.Spec : Prop :=
  ∀ n, (P16128139975350868892.a n : ℤ) = A082108 n

end A082108

/-! ## A082108.P14446554239441154425

`(record[xor(3, n)²]-5)/4`
-/

namespace A082108.P14446554239441154425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 5 : ℚ) / 4

end

end A082108.P14446554239441154425

namespace A082108

/-- `(record[xor(3, n)²]-5)/4` -/
def P14446554239441154425.Spec : Prop :=
  ∀ n, P14446554239441154425.a n = (A082108 n : ℚ)

end A082108

/-! ## A082108.P8554580948070338676

`∑[ogf((1+8x-x^2)/(1-2x+x^2))]`
-/

namespace A082108.P8554580948070338676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082108.P8554580948070338676

namespace A082108

/-- `∑[ogf((1+8x-x^2)/(1-2x+x^2))]` -/
def P8554580948070338676.Spec : Prop :=
  ∀ n, P8554580948070338676.a n = A082108 n

end A082108

/-! ## A082108.P13964944486961168669

`record[lcm(n+1, 1-n)-n]`
-/

namespace A082108.P13964944486961168669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082108.P13964944486961168669

namespace A082108

/-- `record[lcm(n+1, 1-n)-n]` -/
def P13964944486961168669.Spec : Prop :=
  ∀ n, P13964944486961168669.a n = A082108 n

end A082108

/-! ## A082108.P1917650318841838077

`record[1-(n-lcm(n, 2-n))]`
-/

namespace A082108.P1917650318841838077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (Int.lcm (n : ℤ) (2 - (n : ℤ)) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082108.P1917650318841838077

namespace A082108

/-- `record[1-(n-lcm(n, 2-n))]` -/
def P1917650318841838077.Spec : Prop :=
  ∀ n, P1917650318841838077.a n = A082108 n

end A082108

/-! ## A082108.P3909171012003936107

`Δ[2*∑[C(2*n, 2)]-n]`
-/

namespace A082108.P3909171012003936107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082108.P3909171012003936107

namespace A082108

/-- `Δ[2*∑[C(2*n, 2)]-n]` -/
def P3909171012003936107.Spec : Prop :=
  ∀ n, P3909171012003936107.a n = A082108 n

end A082108

/-! ## A082108.P1618338931362322294

`floor(8*n+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A082108.P1618338931362322294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * n + (a (n - 1) + 2)

end

end A082108.P1618338931362322294

namespace A082108

/-- `floor(8*n+a(n-1)+2)` -/
def P1618338931362322294.Spec : Prop :=
  ∀ n, (P1618338931362322294.a n : ℤ) = A082108 n

theorem P1618338931362322294.correct : P1618338931362322294.Spec := by
  intro n
  induction n with
  | zero => simp [A082108, A082108.P1618338931362322294.a, A082108.P8640110216624797441.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A082108, Nat.add_sub_cancel, A082108.P1618338931362322294.a, A082108.P8640110216624797441.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A082108

/-! ## A082108.P7663611427786908681

`record[(n+2)^gcd(2, n)-(n+3)]`
-/

namespace A082108.P7663611427786908681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ Nat.gcd 2 n : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082108.P7663611427786908681

namespace A082108

/-- `record[(n+2)^gcd(2, n)-(n+3)]` -/
def P7663611427786908681.Spec : Prop :=
  ∀ n, P7663611427786908681.a n = A082108 n

end A082108

/-! ## A082108.P16217290000665404705

`record[(n-1)^(2*and(1, n))-n]`
-/

namespace A082108.P16217290000665404705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (2 * Nat.land 1 n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082108.P16217290000665404705

namespace A082108

/-- `record[(n-1)^(2*and(1, n))-n]` -/
def P16217290000665404705.Spec : Prop :=
  ∀ n, P16217290000665404705.a n = A082108 n

end A082108

/-! ## A082108.P12665752470272982975

`record[and(n+2, -2)²-(n+3)]`
-/

namespace A082108.P12665752470272982975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-2) ^ 2 - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082108.P12665752470272982975

namespace A082108

/-- `record[and(n+2, -2)²-(n+3)]` -/
def P12665752470272982975.Spec : Prop :=
  ∀ n, P12665752470272982975.a n = A082108 n

end A082108

/-! ## A082108.P9514067109114575164

`Δ[∑[lcm(2*n-1, 2*n)]-n]`
-/

namespace A082108.P9514067109114575164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n : ℤ) - 1) (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082108.P9514067109114575164

namespace A082108

/-- `Δ[∑[lcm(2*n-1, 2*n)]-n]` -/
def P9514067109114575164.Spec : Prop :=
  ∀ n, P9514067109114575164.a n = A082108 n

end A082108

/-! ## A082108.P6661382166840991880

`abs(1-lcm(2*n+1, 2*(n+1)))`
-/

namespace A082108.P6661382166840991880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm (2 * n + 1) (2 * (n + 1)) : ℤ)|

end

end A082108.P6661382166840991880

namespace A082108

/-- `abs(1-lcm(2*n+1, 2*(n+1)))` -/
def P6661382166840991880.Spec : Prop :=
  ∀ n, P6661382166840991880.a n = A082108 n

end A082108

/-! ## A082108.P322437187607606274

`Δ[C(2*n+1, 3)+n*(n-1)]`
-/

namespace A082108.P322437187607606274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 3 : ℤ) + (n : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082108.P322437187607606274

namespace A082108

/-- `Δ[C(2*n+1, 3)+n*(n-1)]` -/
def P322437187607606274.Spec : Prop :=
  ∀ n, P322437187607606274.a n = A082108 n

theorem P322437187607606274.correct : P322437187607606274.Spec := by
  intro n
  simp only [A082108, Nat.add_sub_cancel, A082108.P322437187607606274.f1, A082108.P322437187607606274.a, A082108.P8640110216624797441.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082108

/-!
# A082109: Third row of number array A082105.

The programs for A082109, the canonical program `A082109.P15494663758169868970` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082109 has offset 0).

The definition of A082109 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082109.P2198264653513997979

`ogf((1+10x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A082109.P2198264653513997979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -3] [1, -3, 3, -1] n

end

end A082109.P2198264653513997979

namespace A082109

/-- `ogf((1+10x-3x^2)/(1-3x+3x^2-x^3))` -/
def P2198264653513997979.Spec : Prop :=
  ∀ n, P2198264653513997979.a n = A082109 n

end A082109

/-! ## A082109.P15494663758169868970

`4*n²+8*n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082109

/-- `4*n²+8*n+1` -/
def P15494663758169868970.Spec : Prop :=
  ∀ n, (P15494663758169868970.a n : ℤ) = A082109 n

theorem P15494663758169868970.correct : P15494663758169868970.Spec := by
  intro n
  simp only [A082109]

end A082109

/-! ## A082109.P17693787968983486110

`filter[n²-3, #%2]`
-/

namespace A082109.P17693787968983486110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A082109.P17693787968983486110

namespace A082109

/-- `filter[n²-3, #%2]` -/
def P17693787968983486110.Spec : Prop :=
  ∀ n, P17693787968983486110.a n = A082109 n

end A082109

/-! ## A082109.P994423985713325833

`record[xor(n, -2)²-3]`
-/

namespace A082109.P994423985713325833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082109.P994423985713325833

namespace A082109

/-- `record[xor(n, -2)²-3]` -/
def P994423985713325833.Spec : Prop :=
  ∀ n, P994423985713325833.a n = A082109 n

end A082109

/-! ## A082109.P17379211330931290236

`∑[a(n-1)+8]` with `a(0)=1, a(1)=12`
-/

namespace A082109.P17379211330931290236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082109.P17379211330931290236

namespace A082109

/-- `∑[a(n-1)+8]` -/
def P17379211330931290236.Spec : Prop :=
  ∀ n, (P17379211330931290236.a n : ℤ) = A082109 n

end A082109

/-! ## A082109.P17626967353053288315

`or(1, 4*n*(n+2))`
-/

namespace A082109.P17626967353053288315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * (n * (n + 2)))

end

end A082109.P17626967353053288315

namespace A082109

/-- `or(1, 4*n*(n+2))` -/
def P17626967353053288315.Spec : Prop :=
  ∀ n, (P17626967353053288315.a n : ℤ) = A082109 n

end A082109

/-! ## A082109.P5979697869445034078

`xor(1, 4*n*(n+2))`
-/

namespace A082109.P5979697869445034078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * (n * (n + 2)))

end

end A082109.P5979697869445034078

namespace A082109

/-- `xor(1, 4*n*(n+2))` -/
def P5979697869445034078.Spec : Prop :=
  ∀ n, (P5979697869445034078.a n : ℤ) = A082109 n

end A082109

/-! ## A082109.P924942036838449990

`xor(2*n, -2)²-3`
-/

namespace A082109.P924942036838449990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (-2) ^ 2 - 3

end

end A082109.P924942036838449990

namespace A082109

/-- `xor(2*n, -2)²-3` -/
def P924942036838449990.Spec : Prop :=
  ∀ n, P924942036838449990.a n = A082109 n

end A082109

/-! ## A082109.P1666704513325671088

`record[(2*(1-n))²-3]`
-/

namespace A082109.P1666704513325671088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (1 - (n : ℤ))) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082109.P1666704513325671088

namespace A082109

/-- `record[(2*(1-n))²-3]` -/
def P1666704513325671088.Spec : Prop :=
  ∀ n, P1666704513325671088.a n = A082109 n

end A082109

/-! ## A082109.P17893944014750492477

`∑[ogf((1+10x-3x^2)/(1-2x+x^2))]`
-/

namespace A082109.P17893944014750492477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082109.P17893944014750492477

namespace A082109

/-- `∑[ogf((1+10x-3x^2)/(1-2x+x^2))]` -/
def P17893944014750492477.Spec : Prop :=
  ∀ n, P17893944014750492477.a n = A082109 n

end A082109

/-! ## A082109.P3664896158283194753

`filter[(n+1)²-3, gcd(2, #)]`
-/

namespace A082109.P3664896158283194753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.gcd 2 (f1 j) = 1) n)

end

end A082109.P3664896158283194753

namespace A082109

/-- `filter[(n+1)²-3, gcd(2, #)]` -/
def P3664896158283194753.Spec : Prop :=
  ∀ n, P3664896158283194753.a n = A082109 n

end A082109

/-! ## A082109.P4306494198319600016

`filter[(n+1)²-3, and(1, #)]`
-/

namespace A082109.P4306494198319600016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.land 1 (f1 j) = 1) n)

end

end A082109.P4306494198319600016

namespace A082109

/-- `filter[(n+1)²-3, and(1, #)]` -/
def P4306494198319600016.Spec : Prop :=
  ∀ n, P4306494198319600016.a n = A082109 n

end A082109

/-! ## A082109.P15545752369296809037

`floor((2/tan(1/(n+1)))²)`
-/

namespace A082109.P15545752369296809037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 / Real.tan (1 / (n + 1 : ℚ) : ℝ)) ^ 2⌋

end

end A082109.P15545752369296809037

namespace A082109

/-- `floor((2/tan(1/(n+1)))²)` -/
def P15545752369296809037.Spec : Prop :=
  ∀ n, P15545752369296809037.a n = A082109 n

end A082109

/-! ## A082109.P17990067138086067800

`abs(or(3, -(n+2+n)²))`
-/

namespace A082109.P17990067138086067800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 3 (-((n + 2 + n) ^ 2 : ℤ))|

end

end A082109.P17990067138086067800

namespace A082109

/-- `abs(or(3, -(n+2+n)²))` -/
def P17990067138086067800.Spec : Prop :=
  ∀ n, P17990067138086067800.a n = A082109 n

end A082109

/-! ## A082109.P4592535194489180130

`-or(3, -(n+2+n)²)`
-/

namespace A082109.P4592535194489180130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 3 (-((n + 2 + n) ^ 2 : ℤ))

end

end A082109.P4592535194489180130

namespace A082109

/-- `-or(3, -(n+2+n)²)` -/
def P4592535194489180130.Spec : Prop :=
  ∀ n, P4592535194489180130.a n = A082109 n

end A082109

/-! ## A082109.P4762118318212505088

`abs(xor(3, -(n+2+n)²))`
-/

namespace A082109.P4762118318212505088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 3 (-((n + 2 + n) ^ 2 : ℤ))|

end

end A082109.P4762118318212505088

namespace A082109

/-- `abs(xor(3, -(n+2+n)²))` -/
def P4762118318212505088.Spec : Prop :=
  ∀ n, P4762118318212505088.a n = A082109 n

end A082109

/-! ## A082109.P14925534739152700524

`-xor(3, -(n+2+n)²)`
-/

namespace A082109.P14925534739152700524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 3 (-((n + 2 + n) ^ 2 : ℤ))

end

end A082109.P14925534739152700524

namespace A082109

/-- `-xor(3, -(n+2+n)²)` -/
def P14925534739152700524.Spec : Prop :=
  ∀ n, P14925534739152700524.a n = A082109 n

end A082109

/-! ## A082109.P17520365952249001977

`abs(3-record[(n-2+n)²])`
-/

namespace A082109.P17520365952249001977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A082109.P17520365952249001977

namespace A082109

/-- `abs(3-record[(n-2+n)²])` -/
def P17520365952249001977.Spec : Prop :=
  ∀ n, P17520365952249001977.a n = A082109 n

end A082109

/-! ## A082109.P764018900520667089

`floor(8*n+a(n-1)+4)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A082109.P764018900520667089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * n + (a (n - 1) + 4)

end

end A082109.P764018900520667089

namespace A082109

/-- `floor(8*n+a(n-1)+4)` -/
def P764018900520667089.Spec : Prop :=
  ∀ n, (P764018900520667089.a n : ℤ) = A082109 n

theorem P764018900520667089.correct : P764018900520667089.Spec := by
  intro n
  induction n with
  | zero => simp [A082109, A082109.P764018900520667089.a, A082109.P15494663758169868970.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A082109, Nat.add_sub_cancel, A082109.P764018900520667089.a, A082109.P15494663758169868970.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A082109

/-! ## A082109.P1665431723331943722

`Δ[(2*n)²-(3-a(n-1))]` with `a(0)=0`
-/

namespace A082109.P1665431723331943722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((2 * n) ^ 2 : ℤ) - (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082109.P1665431723331943722

namespace A082109

/-- `Δ[(2*n)²-(3-a(n-1))]` -/
def P1665431723331943722.Spec : Prop :=
  ∀ n, P1665431723331943722.a n = A082109 n

end A082109

/-!
# A082110: Array A(n,k) = (k*n)^2 + 5*(k*n) + 1, read by antidiagonals.

The programs for A082110, the canonical program `A082110.P2791386172549189163` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082110 has offset 0).

The definition of A082110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)*(row(n)-col(n)))²+5*col(n)*(row(n)-col(n))+1` (program `A082110.P2791386172549189163`, by `A082110.P2791386172549189163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082110.P2791386172549189163

`(col(n)*(row(n)-col(n)))²+5*col(n)*(row(n)-col(n))+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082110

/-- `(col(n)*(row(n)-col(n)))²+5*col(n)*(row(n)-col(n))+1` -/
def P2791386172549189163.Spec : Prop :=
  ∀ n, P2791386172549189163.a n = A082110 n

theorem P2791386172549189163.correct : P2791386172549189163.Spec := by
  intro n
  simp only [A082110]

end A082110

/-! ## A082110.P9204872988994123597

`((row(n)-col(n))*col(n))²+5*(row(n)-col(n))*col(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082110.P9204872988994123597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)) ^ 2 + 5 * (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ)) + 1

end

end A082110.P9204872988994123597

namespace A082110

/-- `((row(n)-col(n))*col(n))²+5*(row(n)-col(n))*col(n)+1` -/
def P9204872988994123597.Spec : Prop :=
  ∀ n, P9204872988994123597.a n = A082110 n

theorem P9204872988994123597.correct : P9204872988994123597.Spec := by
  intro n
  simp only [A082110, Nat.add_sub_cancel, A082110.P9204872988994123597.a, A082110.P2791386172549189163.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A082110

/-! ## A082110.P17811097944550227352

`A082111(A004247(n))`
-/

namespace A082110.P17811097944550227352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A004247 n).toNat

end

end A082110.P17811097944550227352

namespace A082110

/-- `A082111(A004247(n))` -/
def P17811097944550227352.Spec : Prop :=
  ∀ n, P17811097944550227352.a n = A082110 n

end A082110

/-! ## A082110.P7991824022038488508

`A338041(A130154(n+1))`
-/

namespace A082110.P7991824022038488508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338041 (A130154 (n + 1)).toNat

end

end A082110.P7991824022038488508

namespace A082110

/-- `A338041(A130154(n+1))` -/
def P7991824022038488508.Spec : Prop :=
  ∀ n, P7991824022038488508.a n = A082110 n

end A082110

/-! ## A082110.P6293977683659293583

`A082111(A077028(n)-1)`
-/

namespace A082110.P6293977683659293583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A077028 n - 1).toNat

end

end A082110.P6293977683659293583

namespace A082110

/-- `A082111(A077028(n)-1)` -/
def P6293977683659293583.Spec : Prop :=
  ∀ n, P6293977683659293583.a n = A082110 n

end A082110

/-! ## A082110.P11097636053542565825

`A082105(n)+A004247(n)`
-/

namespace A082110.P11097636053542565825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082105 n + A004247 n

end

end A082110.P11097636053542565825

namespace A082110

/-- `A082105(n)+A004247(n)` -/
def P11097636053542565825.Spec : Prop :=
  ∀ n, P11097636053542565825.a n = A082110 n

theorem P11097636053542565825.correct : P11097636053542565825.Spec := by
  intro n
  simp only [A082110, Nat.add_sub_cancel, A082110.P11097636053542565825.a, A082110.P2791386172549189163.a, A004247, A004247.P2751605162508615148.a, A082105, A082105.P13591676068290801104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082110

/-! ## A082110.P4782646372289794319

`A028552(A004247(n)+1)-3`
-/

namespace A082110.P4782646372289794319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (A004247 n + 1).toNat - 3

end

end A082110.P4782646372289794319

namespace A082110

/-- `A028552(A004247(n)+1)-3` -/
def P4782646372289794319.Spec : Prop :=
  ∀ n, P4782646372289794319.a n = A082110 n

end A082110

/-! ## A082110.P3891033799296105400

`A002378(A004247(n)+2)-5`
-/

namespace A082110.P3891033799296105400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A004247 n + 2).toNat - 5

end

end A082110.P3891033799296105400

namespace A082110

/-- `A002378(A004247(n)+2)-5` -/
def P3891033799296105400.Spec : Prop :=
  ∀ n, P3891033799296105400.a n = A082110 n

end A082110

/-! ## A082110.P2095813624993260437

`A082046(n)+2*A004247(n)`
-/

namespace A082110.P2095813624993260437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n + 2 * A004247 n

end

end A082110.P2095813624993260437

namespace A082110

/-- `A082046(n)+2*A004247(n)` -/
def P2095813624993260437.Spec : Prop :=
  ∀ n, P2095813624993260437.a n = A082110 n

theorem P2095813624993260437.correct : P2095813624993260437.Spec := by
  intro n
  simp only [A082110, Nat.add_sub_cancel, A082110.P2095813624993260437.a, A082110.P2791386172549189163.a, A004247, A004247.P2751605162508615148.a, A082046, A082046.P3826101076602898823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082110

/-! ## A082110.P18228545179154140627

`2*A082046(n)-A082039(n)`
-/

namespace A082110.P18228545179154140627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082046 n - A082039 n

end

end A082110.P18228545179154140627

namespace A082110

/-- `2*A082046(n)-A082039(n)` -/
def P18228545179154140627.Spec : Prop :=
  ∀ n, P18228545179154140627.a n = A082110 n

theorem P18228545179154140627.correct : P18228545179154140627.Spec := by
  intro n
  simp only [A082110, Nat.add_sub_cancel, A082110.P18228545179154140627.a, A082110.P2791386172549189163.a, A082039, A082039.P10289297583619271704.a, A082046, A082046.P3826101076602898823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082110

/-! ## A082110.P12108986721702764977

`2*A082105(n)-A082046(n)`
-/

namespace A082110.P12108986721702764977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082105 n - A082046 n

end

end A082110.P12108986721702764977

namespace A082110

/-- `2*A082105(n)-A082046(n)` -/
def P12108986721702764977.Spec : Prop :=
  ∀ n, P12108986721702764977.a n = A082110 n

theorem P12108986721702764977.correct : P12108986721702764977.Spec := by
  intro n
  simp only [A082110, Nat.add_sub_cancel, A082110.P12108986721702764977.a, A082110.P2791386172549189163.a, A082046, A082046.P3826101076602898823.a, A082105, A082105.P13591676068290801104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082110

/-! ## A082110.P5165913880121543801

`A077028(n)²+A296180(n)-1`
-/

namespace A082110.P5165913880121543801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n ^ 2 + (A296180 n - 1)

end

end A082110.P5165913880121543801

namespace A082110

/-- `A077028(n)²+A296180(n)-1` -/
def P5165913880121543801.Spec : Prop :=
  ∀ n, P5165913880121543801.a n = A082110 n

theorem P5165913880121543801.correct : P5165913880121543801.Spec := by
  intro n
  simp only [A082110, Nat.add_sub_cancel, A082110.P5165913880121543801.a, A082110.P2791386172549189163.a, A077028, A077028.P18404356772921913843.a, A296180, A296180.P14152267377895258393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082110

/-! ## A082110.P12288921651690140651

`A004116(A130154(n+1)+1)-2`
-/

namespace A082110.P12288921651690140651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004116 (A130154 (n + 1) + 1).toNat - 2

end

end A082110.P12288921651690140651

namespace A082110

/-- `A004116(A130154(n+1)+1)-2` -/
def P12288921651690140651.Spec : Prop :=
  ∀ n, P12288921651690140651.a n = A082110 n

end A082110

/-! ## A082110.P7937347692311343935

`A082111(A082043(n)-A082039(n))`
-/

namespace A082110.P7937347692311343935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A082043 n - A082039 n).toNat

end

end A082110.P7937347692311343935

namespace A082110

/-- `A082111(A082043(n)-A082039(n))` -/
def P7937347692311343935.Spec : Prop :=
  ∀ n, P7937347692311343935.a n = A082110 n

end A082110

/-! ## A082110.P15242326938270158208

`A082111(A082105(n)-A082046(n))`
-/

namespace A082110.P15242326938270158208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (A082105 n - A082046 n).toNat

end

end A082110.P15242326938270158208

namespace A082110

/-- `A082111(A082105(n)-A082046(n))` -/
def P15242326938270158208.Spec : Prop :=
  ∀ n, P15242326938270158208.a n = A082110 n

end A082110

/-! ## A082110.P16981218648537999877

`A028872(A004247(n)+2)+A004247(n)`
-/

namespace A082110.P16981218648537999877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028872 (A004247 n + 2).toNat + A004247 n

end

end A082110.P16981218648537999877

namespace A082110

/-- `A028872(A004247(n)+2)+A004247(n)` -/
def P16981218648537999877.Spec : Prop :=
  ∀ n, P16981218648537999877.a n = A082110 n

end A082110

/-! ## A082110.P1681812308594279250

`A082043(n)+A082105(n)-A082039(n)`
-/

namespace A082110.P1681812308594279250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082043 n + (A082105 n - A082039 n)

end

end A082110.P1681812308594279250

namespace A082110

/-- `A082043(n)+A082105(n)-A082039(n)` -/
def P1681812308594279250.Spec : Prop :=
  ∀ n, P1681812308594279250.a n = A082110 n

theorem P1681812308594279250.correct : P1681812308594279250.Spec := by
  intro n
  simp only [A082110, Nat.add_sub_cancel, A082110.P1681812308594279250.a, A082110.P2791386172549189163.a, A082039, A082039.P10289297583619271704.a, A082043, A082043.P1888788749395997436.a, A082105, A082105.P13591676068290801104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082110

/-! ## A082110.P2930303700675999200

`A082046(n)+A082105(n)-A082043(n)`
-/

namespace A082110.P2930303700675999200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n + (A082105 n - A082043 n)

end

end A082110.P2930303700675999200

namespace A082110

/-- `A082046(n)+A082105(n)-A082043(n)` -/
def P2930303700675999200.Spec : Prop :=
  ∀ n, P2930303700675999200.a n = A082110 n

theorem P2930303700675999200.correct : P2930303700675999200.Spec := by
  intro n
  simp only [A082110, Nat.add_sub_cancel, A082110.P2930303700675999200.a, A082110.P2791386172549189163.a, A082043, A082043.P1888788749395997436.a, A082046, A082046.P3826101076602898823.a, A082105, A082105.P13591676068290801104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082110

/-! ## A082110.P6025324782947121053

`A082111(log2(A117401(n)))`
-/

namespace A082110.P6025324782947121053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (SequenceMachineLib.roundAway (Real.logb 2 (A117401 n : ℝ))).toNat

end

end A082110.P6025324782947121053

namespace A082110

/-- `A082111(log2(A117401(n)))` -/
def P6025324782947121053.Spec : Prop :=
  ∀ n, P6025324782947121053.a n = A082110 n

end A082110

/-! ## A082110.P6417788398848138973

`A027170(A285192(n))+2*A285192(n)`
-/

namespace A082110.P6417788398848138973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 (A285192 n).toNat + 2 * A285192 n

end

end A082110.P6417788398848138973

namespace A082110

/-- `A027170(A285192(n))+2*A285192(n)` -/
def P6417788398848138973.Spec : Prop :=
  ∀ n, P6417788398848138973.a n = A082110 n

end A082110

/-!
# A082111: a(n) = n^2 + 5*n + 1.

The programs for A082111, the canonical program `A082111.P6693655869700550753` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082111 has offset 0).

The definition of A082111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+5*n+1` (program `A082111.P6693655869700550753`, by `A082111.P6693655869700550753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082111.P6693655869700550753

`n²+5*n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082111

/-- `n²+5*n+1` -/
def P6693655869700550753.Spec : Prop :=
  ∀ n, (P6693655869700550753.a n : ℤ) = A082111 n

theorem P6693655869700550753.correct : P6693655869700550753.Spec := by
  intro n
  simp only [A082111]

end A082111

/-! ## A082111.P5184451542468483208

`ogf((1+4x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A082111.P5184451542468483208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3] [1, -3, 3, -1] n

end

end A082111.P5184451542468483208

namespace A082111

/-- `ogf((1+4x-3x^2)/(1-3x+3x^2-x^3))` -/
def P5184451542468483208.Spec : Prop :=
  ∀ n, P5184451542468483208.a n = A082111 n

end A082111

/-! ## A082111.P2750124620739298957

`A338041(2*n+1)`
-/

namespace A082111.P2750124620739298957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338041 (2 * n + 1)

end

end A082111.P2750124620739298957

namespace A082111

/-- `A338041(2*n+1)` -/
def P2750124620739298957.Spec : Prop :=
  ∀ n, P2750124620739298957.a n = A082111 n

end A082111

/-! ## A082111.P11509267622611808335

`or(1, (n+5)*n)`
-/

namespace A082111.P11509267622611808335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 5) * n)

end

end A082111.P11509267622611808335

namespace A082111

/-- `or(1, (n+5)*n)` -/
def P11509267622611808335.Spec : Prop :=
  ∀ n, (P11509267622611808335.a n : ℤ) = A082111 n

end A082111

/-! ## A082111.P1549045149774644406

`xor(1, (5+n)*n)`
-/

namespace A082111.P1549045149774644406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((5 + n) * n)

end

end A082111.P1549045149774644406

namespace A082111

/-- `xor(1, (5+n)*n)` -/
def P1549045149774644406.Spec : Prop :=
  ∀ n, (P1549045149774644406.a n : ℤ) = A082111 n

end A082111

/-! ## A082111.P9236544606618637221

`record[1-n*(5-n)]`
-/

namespace A082111.P9236544606618637221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * (5 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082111.P9236544606618637221

namespace A082111

/-- `record[1-n*(5-n)]` -/
def P9236544606618637221.Spec : Prop :=
  ∀ n, P9236544606618637221.a n = A082111 n

end A082111

/-! ## A082111.P4051638471251636911

`∑[a(n-1)+2]` with `a(0)=1, a(1)=6`
-/

namespace A082111.P4051638471251636911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082111.P4051638471251636911

namespace A082111

/-- `∑[a(n-1)+2]` -/
def P4051638471251636911.Spec : Prop :=
  ∀ n, (P4051638471251636911.a n : ℤ) = A082111 n

end A082111

/-! ## A082111.P12633766083635970853

`∑[ogf((1+4x-3x^2)/(1-2x+x^2))]`
-/

namespace A082111.P12633766083635970853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082111.P12633766083635970853

namespace A082111

/-- `∑[ogf((1+4x-3x^2)/(1-2x+x^2))]` -/
def P12633766083635970853.Spec : Prop :=
  ∀ n, P12633766083635970853.a n = A082111 n

end A082111

/-! ## A082111.P13914534520452329363

`abs(5-lcm(n+2, n+3))`
-/

namespace A082111.P13914534520452329363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - (Nat.lcm (n + 2) (n + 3) : ℤ)|

end

end A082111.P13914534520452329363

namespace A082111

/-- `abs(5-lcm(n+2, n+3))` -/
def P13914534520452329363.Spec : Prop :=
  ∀ n, P13914534520452329363.a n = A082111 n

end A082111

/-! ## A082111.P4149970609616153646

`abs(record[(2-n)²-(n+3)])`
-/

namespace A082111.P4149970609616153646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A082111.P4149970609616153646

namespace A082111

/-- `abs(record[(2-n)²-(n+3)])` -/
def P4149970609616153646.Spec : Prop :=
  ∀ n, P4149970609616153646.a n = A082111 n

end A082111

/-! ## A082111.P88380946253764987

`abs(3-record[(2-n)²-n])`
-/

namespace A082111.P88380946253764987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A082111.P88380946253764987

namespace A082111

/-- `abs(3-record[(2-n)²-n])` -/
def P88380946253764987.Spec : Prop :=
  ∀ n, P88380946253764987.a n = A082111 n

end A082111

/-! ## A082111.P16802665896015320759

`∑[2*(a(n-1)-n)]` with `a(0)=1, a(1)=6`
-/

namespace A082111.P16802665896015320759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  2 * (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082111.P16802665896015320759

namespace A082111

/-- `∑[2*(a(n-1)-n)]` -/
def P16802665896015320759.Spec : Prop :=
  ∀ n, P16802665896015320759.a n = A082111 n

end A082111

/-! ## A082111.P9625799270500607914

`lcm(4, (n+2)²+n-3)/4`
-/

namespace A082111.P9625799270500607914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (((n + 2) ^ 2 : ℤ) + ((n : ℤ) - 3)) : ℚ) / 4

end

end A082111.P9625799270500607914

namespace A082111

/-- `lcm(4, (n+2)²+n-3)/4` -/
def P9625799270500607914.Spec : Prop :=
  ∀ n, P9625799270500607914.a n = (A082111 n : ℚ)

end A082111

/-! ## A082111.P8932196355459929472

`∑[3%(n+3)+2*n+1]`
-/

namespace A082111.P8932196355459929472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (n + 3) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082111.P8932196355459929472

namespace A082111

/-- `∑[3%(n+3)+2*n+1]` -/
def P8932196355459929472.Spec : Prop :=
  ∀ n, (P8932196355459929472.a n : ℤ) = A082111 n

end A082111

/-! ## A082111.P16396068350997582858

`floor(a(n-1)+4+n+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A082111.P16396068350997582858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 + n + n

end

end A082111.P16396068350997582858

namespace A082111

/-- `floor(a(n-1)+4+n+n)` -/
def P16396068350997582858.Spec : Prop :=
  ∀ n, (P16396068350997582858.a n : ℤ) = A082111 n

theorem P16396068350997582858.correct : P16396068350997582858.Spec := by
  intro n
  induction n with
  | zero => simp [A082111, A082111.P16396068350997582858.a, A082111.P6693655869700550753.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A082111, Nat.add_sub_cancel, A082111.P16396068350997582858.a, A082111.P6693655869700550753.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A082111

/-! ## A082111.P9785442583976460377

`floor(n-1+record[(n-2)²]-ϕ)`
-/

namespace A082111.P9785442583976460377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) + ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ) - Real.goldenRatio)⌋

end

end A082111.P9785442583976460377

namespace A082111

/-- `floor(n-1+record[(n-2)²]-ϕ)` -/
def P9785442583976460377.Spec : Prop :=
  ∀ n, P9785442583976460377.a n = A082111 n

end A082111

/-! ## A082111.P17423880500791364908

`ceil(record[(2-n)²-(n+2+ϕ)])`
-/

namespace A082111.P17423880500791364908
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 : ℝ) - ((n + 2 : ℝ) + Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A082111.P17423880500791364908

namespace A082111

/-- `ceil(record[(2-n)²-(n+2+ϕ)])` -/
def P17423880500791364908.Spec : Prop :=
  ∀ n, P17423880500791364908.a n = A082111 n

end A082111

/-! ## A082111.P2852983742706240252

`floor(n-1-(ϕ-record[(n-2)²]))`
-/

namespace A082111.P2852983742706240252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) - (Real.goldenRatio - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))⌋

end

end A082111.P2852983742706240252

namespace A082111

/-- `floor(n-1-(ϕ-record[(n-2)²]))` -/
def P2852983742706240252.Spec : Prop :=
  ∀ n, P2852983742706240252.a n = A082111 n

end A082111

/-! ## A082111.P5098765828996227229

`Δ[∑[lcm(n, n+1)]+(n-1)²]`
-/

namespace A082111.P5098765828996227229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082111.P5098765828996227229

namespace A082111

/-- `Δ[∑[lcm(n, n+1)]+(n-1)²]` -/
def P5098765828996227229.Spec : Prop :=
  ∀ n, P5098765828996227229.a n = A082111 n

end A082111

/-! ## A082111.P628902364464079897

`2*(a(n-1)/2+n+2)` with `a(0)=1`
-/

namespace A082111.P628902364464079897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) / 2 + (n + 2 : ℚ))

end

end A082111.P628902364464079897

namespace A082111

/-- `2*(a(n-1)/2+n+2)` -/
def P628902364464079897.Spec : Prop :=
  ∀ n, P628902364464079897.a n = (A082111 n : ℚ)

theorem P628902364464079897.correct : P628902364464079897.Spec := by
  intro n
  induction n with
  | zero => simp [A082111, A082111.P628902364464079897.a, A082111.P6693655869700550753.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A082111, Nat.add_sub_cancel, A082111.P628902364464079897.a, A082111.P6693655869700550753.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A082111

/-!
# A082112: a(n) = 4*n^2 + 10*n + 1.

The programs for A082112, the canonical program `A082112.P18049472820534468049` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082112 has offset 0).

The definition of A082112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+10*n+1` (program `A082112.P18049472820534468049`, by `A082112.P18049472820534468049.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082112.P13335796403433106001

`ogf((1+12x-5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A082112.P13335796403433106001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, -5] [1, -3, 3, -1] n

end

end A082112.P13335796403433106001

namespace A082112

/-- `ogf((1+12x-5x^2)/(1-3x+3x^2-x^3))` -/
def P13335796403433106001.Spec : Prop :=
  ∀ n, P13335796403433106001.a n = A082112 n

end A082112

/-! ## A082112.P18049472820534468049

`4*n²+10*n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082112

/-- `4*n²+10*n+1` -/
def P18049472820534468049.Spec : Prop :=
  ∀ n, (P18049472820534468049.a n : ℤ) = A082112 n

theorem P18049472820534468049.correct : P18049472820534468049.Spec := by
  intro n
  simp only [A082112]

end A082112

/-! ## A082112.P17749644792487629421

`∑[8+a(n-1)]` with `a(0)=1, a(1)=14`
-/

namespace A082112.P17749644792487629421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  8 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082112.P17749644792487629421

namespace A082112

/-- `∑[8+a(n-1)]` -/
def P17749644792487629421.Spec : Prop :=
  ∀ n, (P17749644792487629421.a n : ℤ) = A082112 n

end A082112

/-! ## A082112.P5194529690056978736

`or(1, n*(4*n+10))`
-/

namespace A082112.P5194529690056978736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (4 * n + 10))

end

end A082112.P5194529690056978736

namespace A082112

/-- `or(1, n*(4*n+10))` -/
def P5194529690056978736.Spec : Prop :=
  ∀ n, (P5194529690056978736.a n : ℤ) = A082112 n

end A082112

/-! ## A082112.P5813138523391040485

`xor(1, n*(4*n+10))`
-/

namespace A082112.P5813138523391040485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (4 * n + 10))

end

end A082112.P5813138523391040485

namespace A082112

/-- `xor(1, n*(4*n+10))` -/
def P5813138523391040485.Spec : Prop :=
  ∀ n, (P5813138523391040485.a n : ℤ) = A082112 n

end A082112

/-! ## A082112.P8479850542328868524

`abs(5-∑[or(6, 8*n)])`
-/

namespace A082112.P8479850542328868524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A082112.P8479850542328868524

namespace A082112

/-- `abs(5-∑[or(6, 8*n)])` -/
def P8479850542328868524.Spec : Prop :=
  ∀ n, P8479850542328868524.a n = A082112 n

end A082112

/-! ## A082112.P4159007866186004682

`record[xor(n, -2)²+n-3]`
-/

namespace A082112.P4159007866186004682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2) ^ 2 + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082112.P4159007866186004682

namespace A082112

/-- `record[xor(n, -2)²+n-3]` -/
def P4159007866186004682.Spec : Prop :=
  ∀ n, P4159007866186004682.a n = A082112 n

end A082112

/-! ## A082112.P12039521757848983028

`floor(8*n+a(n-1)+6)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A082112.P12039521757848983028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * n + (a (n - 1) + 6)

end

end A082112.P12039521757848983028

namespace A082112

/-- `floor(8*n+a(n-1)+6)` -/
def P12039521757848983028.Spec : Prop :=
  ∀ n, (P12039521757848983028.a n : ℤ) = A082112 n

theorem P12039521757848983028.correct : P12039521757848983028.Spec := by
  intro n
  induction n with
  | zero => simp [A082112, A082112.P12039521757848983028.a, A082112.P18049472820534468049.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A082112, Nat.add_sub_cancel, A082112.P12039521757848983028.a, A082112.P18049472820534468049.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A082112

/-! ## A082112.P1308861513480661050

`record[lcm(n+2, 2-n)-(n+1)]`
-/

namespace A082112.P1308861513480661050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (2 - (n : ℤ)) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082112.P1308861513480661050

namespace A082112

/-- `record[lcm(n+2, 2-n)-(n+1)]` -/
def P1308861513480661050.Spec : Prop :=
  ∀ n, P1308861513480661050.a n = A082112 n

end A082112

/-! ## A082112.P6185005430340830833

`record[(n+2)^gcd(2, n)+n-3]`
-/

namespace A082112.P6185005430340830833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ Nat.gcd 2 n : ℤ) + ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082112.P6185005430340830833

namespace A082112

/-- `record[(n+2)^gcd(2, n)+n-3]` -/
def P6185005430340830833.Spec : Prop :=
  ∀ n, P6185005430340830833.a n = A082112 n

end A082112

/-! ## A082112.P13144410133077387812

`abs(3-(n+2)*lcm(2, 2*n+1))`
-/

namespace A082112.P13144410133077387812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ((n + 2) * Nat.lcm 2 (2 * n + 1) : ℤ)|

end

end A082112.P13144410133077387812

namespace A082112

/-- `abs(3-(n+2)*lcm(2, 2*n+1))` -/
def P13144410133077387812.Spec : Prop :=
  ∀ n, P13144410133077387812.a n = A082112 n

end A082112

/-! ## A082112.P7551939995594170804

`(A161617(n)+1)/2`
-/

namespace A082112.P7551939995594170804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161617 n + 1 : ℚ) / 2

end

end A082112.P7551939995594170804

namespace A082112

/-- `(A161617(n)+1)/2` -/
def P7551939995594170804.Spec : Prop :=
  ∀ n, P7551939995594170804.a n = (A082112 n : ℚ)

theorem P7551939995594170804.correct : P7551939995594170804.Spec := by
  intro n
  simp only [A082112, Nat.add_sub_cancel, A082112.P7551939995594170804.a, A082112.P18049472820534468049.a, A161617, A161617.P6959847450103032667.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082112

/-! ## A082112.P366107934545305377

`∑[Δ[abs(3-A004277(n)²)]+2]`
-/

namespace A082112.P366107934545305377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A004277 n ^ 2|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082112.P366107934545305377

namespace A082112

/-- `∑[Δ[abs(3-A004277(n)²)]+2]` -/
def P366107934545305377.Spec : Prop :=
  ∀ n, P366107934545305377.a n = A082112 n

end A082112

/-! ## A082112.P17423503786051549981

`A102094(n+1)%A108099(n)`
-/

namespace A082112.P17423503786051549981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102094 (n + 1)) (A108099 n)

end

end A082112.P17423503786051549981

namespace A082112

/-- `A102094(n+1)%A108099(n)` -/
def P17423503786051549981.Spec : Prop :=
  ∀ n, P17423503786051549981.a n = A082112 n

end A082112

/-! ## A082112.P16884235570309460824

`A237516(n+1)%A027575(n)`
-/

namespace A082112.P16884235570309460824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237516 (n + 1)) (A027575 n)

end

end A082112.P16884235570309460824

namespace A082112

/-- `A237516(n+1)%A027575(n)` -/
def P16884235570309460824.Spec : Prop :=
  ∀ n, P16884235570309460824.a n = A082112 n

end A082112

/-! ## A082112.P14506309328735671198

`A158443(n+1)%A154106(n)`
-/

namespace A082112.P14506309328735671198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158443 (n + 1)) (A154106 n)

end

end A082112.P14506309328735671198

namespace A082112

/-- `A158443(n+1)%A154106(n)` -/
def P14506309328735671198.Spec : Prop :=
  ∀ n, P14506309328735671198.a n = A082112 n

end A082112

/-! ## A082112.P7529717783723714753

`A082111(2*n)`
-/

namespace A082112.P7529717783723714753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 (2 * n)

end

end A082112.P7529717783723714753

namespace A082112

/-- `A082111(2*n)` -/
def P7529717783723714753.Spec : Prop :=
  ∀ n, P7529717783723714753.a n = A082112 n

theorem P7529717783723714753.correct : P7529717783723714753.Spec := by
  intro n
  simp only [A082112, Nat.add_sub_cancel, A082112.P7529717783723714753.a, A082112.P18049472820534468049.a, A082111, A082111.P6693655869700550753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082112

/-! ## A082112.P625499558862681439

`(A152813(2*n)-1)/2`
-/

namespace A082112.P625499558862681439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152813 (2 * n) - 1 : ℚ) / 2

end

end A082112.P625499558862681439

namespace A082112

/-- `(A152813(2*n)-1)/2` -/
def P625499558862681439.Spec : Prop :=
  ∀ n, P625499558862681439.a n = (A082112 n : ℚ)

theorem P625499558862681439.correct : P625499558862681439.Spec := by
  intro n
  simp only [A082112, Nat.add_sub_cancel, A082112.P625499558862681439.a, A082112.P18049472820534468049.a, A152813, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082112

/-! ## A082112.P2765807308762333423

`record[A317314(n+1)+n²]`
-/

namespace A082112.P2765807308762333423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317314 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082112.P2765807308762333423

namespace A082112

/-- `record[A317314(n+1)+n²]` -/
def P2765807308762333423.Spec : Prop :=
  ∀ n, P2765807308762333423.a n = A082112 n

end A082112

/-! ## A082112.P12839617797370196154

`A090197(2*n)/(2*n+1)`
-/

namespace A082112.P12839617797370196154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090197 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A082112.P12839617797370196154

namespace A082112

/-- `A090197(2*n)/(2*n+1)` -/
def P12839617797370196154.Spec : Prop :=
  ∀ n, P12839617797370196154.a n = (A082112 n : ℚ)

theorem P12839617797370196154.correct : P12839617797370196154.Spec := by
  intro n
  simp only [A082112, Nat.add_sub_cancel, A082112.P12839617797370196154.a, A082112.P18049472820534468049.a, A090197, A090197.P16054348597824220922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082112

/-!
# A082113: a(n) = n^4 + 5*n^2 + 1.

The programs for A082113, the canonical program `A082113.P7246514355658076769` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082113 has offset 0).

The definition of A082113 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+5*n²+1` (program `A082113.P7246514355658076769`, by `A082113.P7246514355658076769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082113.P7246514355658076769

`n^4+5*n²+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082113

/-- `n^4+5*n²+1` -/
def P7246514355658076769.Spec : Prop :=
  ∀ n, (P7246514355658076769.a n : ℤ) = A082113 n

theorem P7246514355658076769.correct : P7246514355658076769.Spec := by
  intro n
  simp only [A082113]

end A082113

/-! ## A082113.P9808100915214802543

`ogf((1+2x+12x^2+2x^3+7x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A082113.P9808100915214802543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 12, 2, 7] [1, -5, 10, -10, 5, -1] n

end

end A082113.P9808100915214802543

namespace A082113

/-- `ogf((1+2x+12x^2+2x^3+7x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P9808100915214802543.Spec : Prop :=
  ∀ n, P9808100915214802543.a n = A082113 n

end A082113

/-! ## A082113.P9537288728355427245

`abs(xor(5*n², -1)-n²²)`
-/

namespace A082113.P9537288728355427245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (5 * n ^ 2 : ℤ) (-1) - ((n ^ 2) ^ 2 : ℤ)|

end

end A082113.P9537288728355427245

namespace A082113

/-- `abs(xor(5*n², -1)-n²²)` -/
def P9537288728355427245.Spec : Prop :=
  ∀ n, P9537288728355427245.a n = A082113 n

end A082113

/-! ## A082113.P8607925423613871825

`abs(3-A156798(n))`
-/

namespace A082113.P8607925423613871825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A156798 n|

end

end A082113.P8607925423613871825

namespace A082113

/-- `abs(3-A156798(n))` -/
def P8607925423613871825.Spec : Prop :=
  ∀ n, P8607925423613871825.a n = A082113 n

end A082113

/-! ## A082113.P10446484494020760818

`xor(1, n²*A117951(n))`
-/

namespace A082113.P10446484494020760818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n ^ 2 : ℤ) * A117951 n)

end

end A082113.P10446484494020760818

namespace A082113

/-- `xor(1, n²*A117951(n))` -/
def P10446484494020760818.Spec : Prop :=
  ∀ n, P10446484494020760818.a n = A082113 n

end A082113

/-! ## A082113.P17080276007127549043

`record[A156798(A273943(n))-3]`
-/

namespace A082113.P17080276007127549043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156798 (A273943 n).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082113.P17080276007127549043

namespace A082113

/-- `record[A156798(A273943(n))-3]` -/
def P17080276007127549043.Spec : Prop :=
  ∀ n, P17080276007127549043.a n = A082113 n

end A082113

/-! ## A082113.P4553762619994865293

`abs(A139098(n)+A057722(n))`
-/

namespace A082113.P4553762619994865293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139098 n + A057722 n|

end

end A082113.P4553762619994865293

namespace A082113

/-- `abs(A139098(n)+A057722(n))` -/
def P4553762619994865293.Spec : Prop :=
  ∀ n, P4553762619994865293.a n = A082113 n

end A082113

/-! ## A082113.P14544665932377311047

`xor(1, A008486(n)*A033547(n))`
-/

namespace A082113.P14544665932377311047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A008486 n * A033547 n)

end

end A082113.P14544665932377311047

namespace A082113

/-- `xor(1, A008486(n)*A033547(n))` -/
def P14544665932377311047.Spec : Prop :=
  ∀ n, P14544665932377311047.a n = A082113 n

end A082113

/-! ## A082113.P8312264240255255728

`abs(5-A059100(n)*A117950(n))`
-/

namespace A082113.P8312264240255255728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A059100 n * A117950 n|

end

end A082113.P8312264240255255728

namespace A082113

/-- `abs(5-A059100(n)*A117950(n))` -/
def P8312264240255255728.Spec : Prop :=
  ∀ n, P8312264240255255728.a n = A082113 n

end A082113

/-! ## A082113.P3474677891375916487

`abs(4-(A002522(n)+A059100(n)²))`
-/

namespace A082113.P3474677891375916487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (A002522 n + A059100 n ^ 2)|

end

end A082113.P3474677891375916487

namespace A082113

/-- `abs(4-(A002522(n)+A059100(n)²))` -/
def P3474677891375916487.Spec : Prop :=
  ∀ n, P3474677891375916487.a n = A082113 n

end A082113

/-! ## A082113.P18168334848046910808

`gcd(A139098(n)+A057722(n), A000038(n))`
-/

namespace A082113.P18168334848046910808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139098 n + A057722 n) (A000038 n)

end

end A082113.P18168334848046910808

namespace A082113

/-- `gcd(A139098(n)+A057722(n), A000038(n))` -/
def P18168334848046910808.Spec : Prop :=
  ∀ n, (P18168334848046910808.a n : ℤ) = A082113 n

end A082113

/-! ## A082113.P613591896377064779

`or(A139098(n)+A057722(n), A000007(n))`
-/

namespace A082113.P613591896377064779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A139098 n + A057722 n) (A000007 n)

end

end A082113.P613591896377064779

namespace A082113

/-- `or(A139098(n)+A057722(n), A000007(n))` -/
def P613591896377064779.Spec : Prop :=
  ∀ n, P613591896377064779.a n = A082113 n

end A082113

/-! ## A082113.P18194960462937489435

`gcd(3-A156798(n), A008683(A002246(n+1)))`
-/

namespace A082113.P18194960462937489435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - A156798 n) (A008683 (A002246 (n + 1)).toNat)

end

end A082113.P18194960462937489435

namespace A082113

/-- `gcd(3-A156798(n), A008683(A002246(n+1)))` -/
def P18194960462937489435.Spec : Prop :=
  ∀ n, (P18194960462937489435.a n : ℤ) = A082113 n

end A082113

/-! ## A082113.P5054638386374889555

`(A139098(n)+A057722(n))*A007318(C(2, n))`
-/

namespace A082113.P5054638386374889555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139098 n + A057722 n) * A007318 (Nat.choose 2 n)

end

end A082113.P5054638386374889555

namespace A082113

/-- `(A139098(n)+A057722(n))*A007318(C(2, n))` -/
def P5054638386374889555.Spec : Prop :=
  ∀ n, P5054638386374889555.a n = A082113 n

end A082113

/-! ## A082113.P1698714469964302825

`(A139098(n)+A057722(n))*A211005(A105321(n))`
-/

namespace A082113.P1698714469964302825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139098 n + A057722 n) * A211005 (A105321 n).toNat

end

end A082113.P1698714469964302825

namespace A082113

/-- `(A139098(n)+A057722(n))*A211005(A105321(n))` -/
def P1698714469964302825.Spec : Prop :=
  ∀ n, P1698714469964302825.a n = A082113 n

end A082113

/-! ## A082113.P14075360530761003676

`(3-A156798(n))*A008683(A271043(n+1))`
-/

namespace A082113.P14075360530761003676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A156798 n) * A008683 (A271043 (n + 1)).toNat

end

end A082113.P14075360530761003676

namespace A082113

/-- `(3-A156798(n))*A008683(A271043(n+1))` -/
def P14075360530761003676.Spec : Prop :=
  ∀ n, P14075360530761003676.a n = A082113 n

end A082113

/-! ## A082113.P6189014127196371253

`-((3-A156798(n))*A001221(A241659(n+1)))`
-/

namespace A082113.P6189014127196371253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((3 - A156798 n) * A001221 (A241659 (n + 1)).toNat)

end

end A082113.P6189014127196371253

namespace A082113

/-- `-((3-A156798(n))*A001221(A241659(n+1)))` -/
def P6189014127196371253.Spec : Prop :=
  ∀ n, P6189014127196371253.a n = A082113 n

end A082113

/-! ## A082113.P4755978168647494019

`(3-A156798(n))*A008683(A046132(n+1))`
-/

namespace A082113.P4755978168647494019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A156798 n) * A008683 (A046132 (n + 1)).toNat

end

end A082113.P4755978168647494019

namespace A082113

/-- `(3-A156798(n))*A008683(A046132(n+1))` -/
def P4755978168647494019.Spec : Prop :=
  ∀ n, P4755978168647494019.a n = A082113 n

end A082113

/-! ## A082113.P14512885757096033033

`(3-A156798(n))*A008683(A164566(n+1))`
-/

namespace A082113.P14512885757096033033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A156798 n) * A008683 (A164566 (n + 1)).toNat

end

end A082113.P14512885757096033033

namespace A082113

/-- `(3-A156798(n))*A008683(A164566(n+1))` -/
def P14512885757096033033.Spec : Prop :=
  ∀ n, P14512885757096033033.a n = A082113 n

end A082113

/-! ## A082113.P14347436695758020727

`-(A178333(∑[n+1]+2)+3-A156798(n))`
-/

namespace A082113.P14347436695758020727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A178333 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + (3 - A156798 n))

end

end A082113.P14347436695758020727

namespace A082113

/-- `-(A178333(∑[n+1]+2)+3-A156798(n))` -/
def P14347436695758020727.Spec : Prop :=
  ∀ n, P14347436695758020727.a n = A082113 n

end A082113

/-!
# A082114: Diagonal sums of number array A082110.

The programs for A082114, the canonical program `A082114.P5459742565425732256` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082114 has offset 0).

The definition of A082114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082114.P3899548458834920556

`ogf((1-4x+12x^2-12x^3+7x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A082114.P3899548458834920556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 12, -12, 7] [1, -6, 15, -20, 15, -6, 1] n

end

end A082114.P3899548458834920556

namespace A082114

/-- `ogf((1-4x+12x^2-12x^3+7x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P3899548458834920556.Spec : Prop :=
  ∀ n, P3899548458834920556.a n = A082114 n

end A082114

/-! ## A082114.P5459742565425732256

`(n+1)*(n^4-n^3+26*n²-26*n+30)/30`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082114

/-- `(n+1)*(n^4-n^3+26*n²-26*n+30)/30` -/
def P5459742565425732256.Spec : Prop :=
  ∀ n, P5459742565425732256.a n = (A082114 n : ℚ)

end A082114

/-! ## A082114.P783230614088159224

`A082047(n)+∑[n²-n]`
-/

namespace A082114.P783230614088159224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082047 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082114.P783230614088159224

namespace A082114

/-- `A082047(n)+∑[n²-n]` -/
def P783230614088159224.Spec : Prop :=
  ∀ n, P783230614088159224.a n = A082114 n

end A082114

/-! ## A082114.P16661492803245311220

`A103290(n)+C(2*n, 2)-(n-1-a(n-1))` with `a(0)=1`
-/

namespace A082114.P16661492803245311220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103290 n + ((Nat.choose (2 * n) 2 : ℤ) - ((n : ℤ) - 1 - a (n - 1)))

end

end A082114.P16661492803245311220

namespace A082114

/-- `A103290(n)+C(2*n, 2)-(n-1-a(n-1))` -/
def P16661492803245311220.Spec : Prop :=
  ∀ n, P16661492803245311220.a n = A082114 n

end A082114

/-! ## A082114.P1326777141326282960

`A135503(n)+A082045(n)`
-/

namespace A082114.P1326777141326282960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A082045 n

end

end A082114.P1326777141326282960

namespace A082114

/-- `A135503(n)+A082045(n)` -/
def P1326777141326282960.Spec : Prop :=
  ∀ n, P1326777141326282960.a n = A082114 n

end A082114

/-! ## A082114.P1204249127822127672

`A082107(n)+∑[A161680(n)]`
-/

namespace A082114.P1204249127822127672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082107 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082114.P1204249127822127672

namespace A082114

/-- `A082107(n)+∑[A161680(n)]` -/
def P1204249127822127672.Spec : Prop :=
  ∀ n, P1204249127822127672.a n = A082114 n

end A082114

/-! ## A082114.P4636460629086689199

`A082045(n)+Δ[A050534(n)]`
-/

namespace A082114.P4636460629086689199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082045 n + (f1 (n + 1) - f1 n)

end

end A082114.P4636460629086689199

namespace A082114

/-- `A082045(n)+Δ[A050534(n)]` -/
def P4636460629086689199.Spec : Prop :=
  ∀ n, P4636460629086689199.a n = A082114 n

end A082114

/-! ## A082114.P14419795872236469991

`2*A082107(n)-A082047(n)`
-/

namespace A082114.P14419795872236469991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082107 n - A082047 n

end

end A082114.P14419795872236469991

namespace A082114

/-- `2*A082107(n)-A082047(n)` -/
def P14419795872236469991.Spec : Prop :=
  ∀ n, P14419795872236469991.a n = A082114 n

end A082114

/-! ## A082114.P15918892377780869259

`A082107(n)+A082047(n)-A082045(n)`
-/

namespace A082114.P15918892377780869259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082107 n + A082047 n - A082045 n

end

end A082114.P15918892377780869259

namespace A082114

/-- `A082107(n)+A082047(n)-A082045(n)` -/
def P15918892377780869259.Spec : Prop :=
  ∀ n, P15918892377780869259.a n = A082114 n

end A082114

/-! ## A082114.P16153396138730126590

`A034263(n)-A059845(A000217(n))`
-/

namespace A082114.P16153396138730126590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n - A059845 (A000217 n).toNat

end

end A082114.P16153396138730126590

namespace A082114

/-- `A034263(n)-A059845(A000217(n))` -/
def P16153396138730126590.Spec : Prop :=
  ∀ n, P16153396138730126590.a n = A082114 n

end A082114

/-!
# A082115: Fibonacci sequence (mod 3).

The programs for A082115, the canonical program `A082115.P4579423308237318174` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082115 has offset 0).

The definition of A082115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082115.P4579423308237318174

`ogf((x+x^2+2x^3+2x^5+2x^6+x^7)/(1-x^8))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082115

/-- `ogf((x+x^2+2x^3+2x^5+2x^6+x^7)/(1-x^8))` -/
def P4579423308237318174.Spec : Prop :=
  ∀ n, P4579423308237318174.a n = A082115 n

theorem P4579423308237318174.correct : P4579423308237318174.Spec := by
  intro n
  simp only [A082115]

end A082115

/-!
# A082116: Fibonacci sequence (mod 5).

The programs for A082116, the canonical program `A082116.P17575535962491823712` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082116 has offset 0).

The definition of A082116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082116.P17575535962491823712

`ogf((x+x^2+x^3+2x^4-x^5+3x^7-x^8-2x^9+x^10+4x^11+x^12)/(1-x^2+x^4-x^5-x^6+x^7+x^8-x^9+x^11-x^13))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082116

/-- `ogf((x+x^2+x^3+2x^4-x^5+3x^7-x^8-2x^9+x^10+4x^11+x^12)/(1-x^2+x^4-x^5-x^6+x^7+x^8-x^9+x^11-x^13))` -/
def P17575535962491823712.Spec : Prop :=
  ∀ n, P17575535962491823712.a n = A082116 n

theorem P17575535962491823712.correct : P17575535962491823712.Spec := by
  intro n
  simp only [A082116]

end A082116

/-!
# A082117: Fibonacci sequence (mod 6).

The programs for A082117, the canonical program `A082117.P5135438573677291304` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082117 has offset 0).

The definition of A082117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082117.P5135438573677291304

`A000045(n)%6`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082117

/-- `A000045(n)%6` -/
def P5135438573677291304.Spec : Prop :=
  ∀ n, P5135438573677291304.a n = A082117 n

theorem P5135438573677291304.correct : P5135438573677291304.Spec := by
  intro n
  simp only [A082117]

end A082117

/-! ## A082117.P2792394426095597007

`(a(n-1)+a(n-2))%6` with `a(0)=0, a(1)=1`
-/

namespace A082117.P2792394426095597007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) % 6

end

end A082117.P2792394426095597007

namespace A082117

/-- `(a(n-1)+a(n-2))%6` -/
def P2792394426095597007.Spec : Prop :=
  ∀ n, (P2792394426095597007.a n : ℤ) = A082117 n

end A082117

/-!
# A082119: Smallest positive difference between d and n/d for any divisor d of n.

The programs for A082119, there is no canonical definition to state claims against.
-/

/-! ## A082119.P7187287861097631609

`(n+1)%(A140271(n+2)+1)`
-/

namespace A082119.P7187287861097631609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A140271 (n + 2) + 1)

end

end A082119.P7187287861097631609

/-! ## A082119.P5329393475583655783

`sqrt(A342553(n+2)-2*(n+2))`
-/

namespace A082119.P5329393475583655783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A342553 (n + 2) - (2 * (n + 2) : ℤ) : ℝ)

end

end A082119.P5329393475583655783

/-! ## A082119.P15642371681064870591

`A140271(n+2)-A060775(n+2)`
-/

namespace A082119.P15642371681064870591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (n + 2) - A060775 (n + 2)

end

end A082119.P15642371681064870591

/-! ## A082119.P380565779521521496

`A140271(n+2)-A000027(n+2)/A140271(n+2)`
-/

namespace A082119.P380565779521521496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140271 (n + 2) : ℚ) - (A000027 (n + 2) : ℚ) / (A140271 (n + 2) : ℚ)

end

end A082119.P380565779521521496

/-! ## A082119.P6016160230779072670

`A000196(A342553(n+2)-2*(n+1))`
-/

namespace A082119.P6016160230779072670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A342553 (n + 2) - (2 * (n + 1) : ℤ)).toNat

end

end A082119.P6016160230779072670

/-! ## A082119.P6372004043223901867

`A000194(A342553(n+2)-(2*n+3))`
-/

namespace A082119.P6372004043223901867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A342553 (n + 2) - (2 * n + 3 : ℤ)).toNat

end

end A082119.P6372004043223901867

/-!
# A082121: Smallest difference > 1 between d and p/d for any divisor d of the partial product p of the sequence, starting with 7.

The programs for A082121, there is no canonical definition to state claims against.
-/

/-! ## A082121.P16746520451632675876

`A102179(A216062(n+1))+A055089(2*n+1)`
-/

namespace A082121.P16746520451632675876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102179 (A216062 (n + 1)).toNat + A055089 (2 * n + 1)

end

end A082121.P16746520451632675876

/-! ## A082121.P6117801379838402428

`A154804(A218153(3*n+4)+A017449(2*(n+1)))+1`
-/

namespace A082121.P6117801379838402428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154804 (A218153 (3 * n + 4) + A017449 (2 * (n + 1))).toNat + 1

end

end A082121.P6117801379838402428

/-!
# A082125: Smallest difference>1 between d and p/d for any divisor d of the partial product p of the sequence, starting with 4.

The programs for A082125, there is no canonical definition to state claims against.
-/

/-! ## A082125.P13010907299093851720

`A084301(A143932(n+1))^A143951(n)`
-/

namespace A082125.P13010907299093851720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084301 (A143932 (n + 1)).toNat : ℚ) ^ (A143951 n : ℤ)

end

end A082125.P13010907299093851720

/-!
# A082129: Rounded base-2 logarithm of A082128(n).

The programs for A082129, there is no canonical definition to state claims against.
-/

/-! ## A082129.P3907585117238162470

`round(log2(A082128(n+1)))`
-/

namespace A082129.P3907585117238162470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A082128 (n + 1) : ℝ))

end

end A082129.P3907585117238162470

/-!
# A082130: Numbers k such that 2*k-1 and 2*k+1 are semiprimes.

The programs for A082130, the canonical program `A082130.P5668457322223937576` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082130 has offset 1).

The definition of A082130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082130.P6092597057591817371

`A124936(n+2)/2`
-/

namespace A082130.P6092597057591817371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124936 (n + 2) : ℚ) / 2

end

end A082130.P6092597057591817371

namespace A082130

/-- `A124936(n+2)/2` -/
def P6092597057591817371.Spec : Prop :=
  ∀ n, P6092597057591817371.a n = (A082130 (n + 1) : ℚ)

end A082130

/-! ## A082130.P5668457322223937576

`floor(A198327(n+2)/2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A082130

/-- `floor(A198327(n+2)/2)` -/
def P5668457322223937576.Spec : Prop :=
  ∀ n, P5668457322223937576.a n = A082130 (n + 1)

theorem P5668457322223937576.correct : P5668457322223937576.Spec := by
  intro n
  simp only [A082130, Nat.add_sub_cancel]

end A082130

/-! ## A082130.P10515215962637012031

`(A092207(2+n)+1)/2`
-/

namespace A082130.P10515215962637012031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092207 (2 + n) + 1 : ℚ) / 2

end

end A082130.P10515215962637012031

namespace A082130

/-- `(A092207(2+n)+1)/2` -/
def P10515215962637012031.Spec : Prop :=
  ∀ n, P10515215962637012031.a n = (A082130 (n + 1) : ℚ)

end A082130

/-! ## A082130.P7473298713979702172

`∩[A088707(n+2), A186621(n+2)]/2`
-/

namespace A082130.P7473298713979702172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A082130.P7473298713979702172

namespace A082130

/-- `∩[A088707(n+2), A186621(n+2)]/2` -/
def P7473298713979702172.Spec : Prop :=
  ∀ n, P7473298713979702172.a n = (A082130 (n + 1) : ℚ)

end A082130

/-! ## A082130.P1523313281633170565

`∩[A088707(n+2), A280382(n+2)]/2`
-/

namespace A082130.P1523313281633170565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A082130.P1523313281633170565

namespace A082130

/-- `∩[A088707(n+2), A280382(n+2)]/2` -/
def P1523313281633170565.Spec : Prop :=
  ∀ n, P1523313281633170565.a n = (A082130 (n + 1) : ℚ)

end A082130

/-! ## A082130.P3540802062749045184

`A000217(A124936(n+2)-1)%A124936(n+2)`
-/

namespace A082130.P3540802062749045184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A124936 (n + 2) - 1).toNat) (A124936 (n + 2))

end

end A082130.P3540802062749045184

namespace A082130

/-- `A000217(A124936(n+2)-1)%A124936(n+2)` -/
def P3540802062749045184.Spec : Prop :=
  ∀ n, P3540802062749045184.a n = A082130 (n + 1)

end A082130

/-! ## A082130.P2198996890156505660

`A023890(A092207(n+2))/2`
-/

namespace A082130.P2198996890156505660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023890 (A092207 (n + 2)).toNat : ℚ) / 2

end

end A082130.P2198996890156505660

namespace A082130

/-- `A023890(A092207(n+2))/2` -/
def P2198996890156505660.Spec : Prop :=
  ∀ n, P2198996890156505660.a n = (A082130 (n + 1) : ℚ)

end A082130

/-! ## A082130.P7399374371698071807

`A080513(∩[A176406(n+1)-2, A176406(n+1)])`
-/

namespace A082130.P7399374371698071807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A082130.P7399374371698071807

namespace A082130

/-- `A080513(∩[A176406(n+1)-2, A176406(n+1)])` -/
def P7399374371698071807.Spec : Prop :=
  ∀ n, P7399374371698071807.a n = A082130 (n + 1)

end A082130

/-! ## A082130.P11745215981488929181

`A000463(A092207(n+2))`
-/

namespace A082130.P11745215981488929181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A092207 (n + 2)).toNat

end

end A082130.P11745215981488929181

namespace A082130

/-- `A000463(A092207(n+2))` -/
def P11745215981488929181.Spec : Prop :=
  ∀ n, P11745215981488929181.a n = A082130 (n + 1)

end A082130

/-! ## A082130.P6513210107704638865

`A001281(A124936(n+2))`
-/

namespace A082130.P6513210107704638865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A124936 (n + 2)).toNat

end

end A082130.P6513210107704638865

namespace A082130

/-- `A001281(A124936(n+2))` -/
def P6513210107704638865.Spec : Prop :=
  ∀ n, P6513210107704638865.a n = A082130 (n + 1)

end A082130

/-! ## A082130.P4141680097974479936

`A004524(A198327(n+2))`
-/

namespace A082130.P4141680097974479936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A198327 (n + 2)).toNat

end

end A082130.P4141680097974479936

namespace A082130

/-- `A004524(A198327(n+2))` -/
def P4141680097974479936.Spec : Prop :=
  ∀ n, P4141680097974479936.a n = A082130 (n + 1)

end A082130

/-! ## A082130.P13619773277566796012

`A004525(A092207(n+2)+1)`
-/

namespace A082130.P13619773277566796012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A092207 (n + 2) + 1).toNat

end

end A082130.P13619773277566796012

namespace A082130

/-- `A004525(A092207(n+2)+1)` -/
def P13619773277566796012.Spec : Prop :=
  ∀ n, P13619773277566796012.a n = A082130 (n + 1)

end A082130

/-! ## A082130.P2544035125598869642

`A004526(A092207(n+2)+1)`
-/

namespace A082130.P2544035125598869642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A092207 (n + 2) + 1).toNat

end

end A082130.P2544035125598869642

namespace A082130

/-- `A004526(A092207(n+2)+1)` -/
def P2544035125598869642.Spec : Prop :=
  ∀ n, P2544035125598869642.a n = A082130 (n + 1)

end A082130

/-! ## A082130.P12409725586957724982

`A028242(A124936(n+2)+1)`
-/

namespace A082130.P12409725586957724982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A124936 (n + 2) + 1).toNat

end

end A082130.P12409725586957724982

namespace A082130

/-- `A028242(A124936(n+2)+1)` -/
def P12409725586957724982.Spec : Prop :=
  ∀ n, P12409725586957724982.a n = A082130 (n + 1)

end A082130

/-! ## A082130.P9904783437005040798

`A025480(A198327(n+2)-1)`
-/

namespace A082130.P9904783437005040798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A198327 (n + 2) - 1).toNat

end

end A082130.P9904783437005040798

namespace A082130

/-- `A025480(A198327(n+2)-1)` -/
def P9904783437005040798.Spec : Prop :=
  ∀ n, P9904783437005040798.a n = A082130 (n + 1)

end A082130

/-! ## A082130.P7480807815070753577

`A140106(A124936(n+2)+2)`
-/

namespace A082130.P7480807815070753577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A124936 (n + 2) + 2).toNat

end

end A082130.P7480807815070753577

namespace A082130

/-- `A140106(A124936(n+2)+2)` -/
def P7480807815070753577.Spec : Prop :=
  ∀ n, P7480807815070753577.a n = A082130 (n + 1)

end A082130

/-! ## A082130.P7832775845486330115

`eq[A193511(2*n+1), A340101(n+1)]+1`
-/

namespace A082130.P7832775845486330115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193511 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A082130.P7832775845486330115

namespace A082130

/-- `eq[A193511(2*n+1), A340101(n+1)]+1` -/
def P7832775845486330115.Spec : Prop :=
  ∀ n, (P7832775845486330115.a n : ℤ) = A082130 (n + 1)

end A082130

/-!
# A082131: Middle of semiprime triple: n-2, n, n+2 are semiprimes.

The programs for A082131, the canonical program `A082131.P17826163516499445993` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082131 has offset 1).

The definition of A082131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082131.P14911663636518244917

`∩[A092207(n+1), A198327(n+1)]`
-/

namespace A082131.P14911663636518244917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P14911663636518244917

namespace A082131

/-- `∩[A092207(n+1), A198327(n+1)]` -/
def P14911663636518244917.Spec : Prop :=
  ∀ n, (P14911663636518244917.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P17826163516499445993

`record[gcd(A092207(n+7), A198327(n+6))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A082131

/-- `record[gcd(A092207(n+7), A198327(n+6))]` -/
def P17826163516499445993.Spec : Prop :=
  ∀ n, (P17826163516499445993.a n : ℤ) = A082131 (n + 1)

theorem P17826163516499445993.correct : P17826163516499445993.Spec := by
  intro n
  simp only [A082131, Nat.add_sub_cancel]

end A082131

/-! ## A082131.P802281856040827335

`∩[A092207(n+1), A105571(n+1)]`
-/

namespace A082131.P802281856040827335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P802281856040827335

namespace A082131

/-- `∩[A092207(n+1), A105571(n+1)]` -/
def P802281856040827335.Spec : Prop :=
  ∀ n, (P802281856040827335.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P18218708589991400617

`∩[A105571(n+1), A198327(n+1)]`
-/

namespace A082131.P18218708589991400617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P18218708589991400617

namespace A082131

/-- `∩[A105571(n+1), A198327(n+1)]` -/
def P18218708589991400617.Spec : Prop :=
  ∀ n, (P18218708589991400617.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P8298235625392751727

`∩[A001358(n+1), A105571(n+1)]`
-/

namespace A082131.P8298235625392751727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P8298235625392751727

namespace A082131

/-- `∩[A001358(n+1), A105571(n+1)]` -/
def P8298235625392751727.Spec : Prop :=
  ∀ n, (P8298235625392751727.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P17199919217617903871

`filter[A105571(n+1), A064911(#)]`
-/

namespace A082131.P17199919217617903871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A082131.P17199919217617903871

namespace A082131

/-- `filter[A105571(n+1), A064911(#)]` -/
def P17199919217617903871.Spec : Prop :=
  ∀ n, P17199919217617903871.a n = A082131 (n + 1)

end A082131

/-! ## A082131.P15743830333846315350

`filter[A105571(n+1), A353480(#)]`
-/

namespace A082131.P15743830333846315350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A082131.P15743830333846315350

namespace A082131

/-- `filter[A105571(n+1), A353480(#)]` -/
def P15743830333846315350.Spec : Prop :=
  ∀ n, P15743830333846315350.a n = A082131 (n + 1)

end A082131

/-! ## A082131.P18048620827997349475

`∩[A089268(n+1), A105571(n+1)]`
-/

namespace A082131.P18048620827997349475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P18048620827997349475

namespace A082131

/-- `∩[A089268(n+1), A105571(n+1)]` -/
def P18048620827997349475.Spec : Prop :=
  ∀ n, (P18048620827997349475.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P1476702010508110157

`∩[A092207(n+1), A200925(n+1)]`
-/

namespace A082131.P1476702010508110157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P1476702010508110157

namespace A082131

/-- `∩[A092207(n+1), A200925(n+1)]` -/
def P1476702010508110157.Spec : Prop :=
  ∀ n, (P1476702010508110157.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P11161101267325686541

`∩[A046315(n+1), A105571(n+1)]`
-/

namespace A082131.P11161101267325686541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P11161101267325686541

namespace A082131

/-- `∩[A046315(n+1), A105571(n+1)]` -/
def P11161101267325686541.Spec : Prop :=
  ∀ n, (P11161101267325686541.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P1930739364239516472

`∩[A176406(n+1), A198327(n+1)]`
-/

namespace A082131.P1930739364239516472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P1930739364239516472

namespace A082131

/-- `∩[A176406(n+1), A198327(n+1)]` -/
def P1930739364239516472.Spec : Prop :=
  ∀ n, (P1930739364239516472.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P13369029154198098618

`∩[A175648(n+1), A176406(n+1)]+2`
-/

namespace A082131.P13369029154198098618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A082131.P13369029154198098618

namespace A082131

/-- `∩[A175648(n+1), A176406(n+1)]+2` -/
def P13369029154198098618.Spec : Prop :=
  ∀ n, (P13369029154198098618.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P14287712701197415329

`∩[A092207(n+1), A371656(n+1)]`
-/

namespace A082131.P14287712701197415329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P14287712701197415329

namespace A082131

/-- `∩[A092207(n+1), A371656(n+1)]` -/
def P14287712701197415329.Spec : Prop :=
  ∀ n, (P14287712701197415329.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P13260366290254140436

`∩[A198327(n+1), A371656(n+1)]`
-/

namespace A082131.P13260366290254140436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P13260366290254140436

namespace A082131

/-- `∩[A198327(n+1), A371656(n+1)]` -/
def P13260366290254140436.Spec : Prop :=
  ∀ n, (P13260366290254140436.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P13117342018975172934

`A092125(n+1)+2`
-/

namespace A082131.P13117342018975172934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1) + 2

end

end A082131.P13117342018975172934

namespace A082131

/-- `A092125(n+1)+2` -/
def P13117342018975172934.Spec : Prop :=
  ∀ n, P13117342018975172934.a n = A082131 (n + 1)

theorem P13117342018975172934.correct : P13117342018975172934.Spec := by
  intro n
  simp only [A082131, Nat.add_sub_cancel, A082131.P13117342018975172934.a, A082131.P17826163516499445993.f1, A082131.P17826163516499445993.a, A092125, A092125.P10354082193665829780.a, A092207, A092207.P2317231063323524439.f1, A092207.P2317231063323524439.f2, A092207.P2317231063323524439.a, A198327, A198327.P891835078259736494.a, A001358, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A082131

/-! ## A082131.P7841063882480873990

`∩[A105571(n+1), A131368(n+1)]`
-/

namespace A082131.P7841063882480873990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P7841063882480873990

namespace A082131

/-- `∩[A105571(n+1), A131368(n+1)]` -/
def P7841063882480873990.Spec : Prop :=
  ∀ n, (P7841063882480873990.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P11784598783833057695

`∩[A105571(n+1), A176540(n+1)]`
-/

namespace A082131.P11784598783833057695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082131.P11784598783833057695

namespace A082131

/-- `∩[A105571(n+1), A176540(n+1)]` -/
def P11784598783833057695.Spec : Prop :=
  ∀ n, (P11784598783833057695.a n : ℤ) = A082131 (n + 1)

end A082131

/-! ## A082131.P4537316621907854829

`filter[A328359(n+1), A064911(#)]`
-/

namespace A082131.P4537316621907854829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A082131.P4537316621907854829

namespace A082131

/-- `filter[A328359(n+1), A064911(#)]` -/
def P4537316621907854829.Spec : Prop :=
  ∀ n, P4537316621907854829.a n = A082131 (n + 1)

end A082131

/-! ## A082131.P10913847376770258665

`filter[A328359(n+1), A353480(#)]`
-/

namespace A082131.P10913847376770258665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A082131.P10913847376770258665

namespace A082131

/-- `filter[A328359(n+1), A353480(#)]` -/
def P10913847376770258665.Spec : Prop :=
  ∀ n, P10913847376770258665.a n = A082131 (n + 1)

end A082131

/-! ## A082131.P3625771611375188928

`filter[A328359(n+2), A101040(#)]`
-/

namespace A082131.P3625771611375188928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328359 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A082131.P3625771611375188928

namespace A082131

/-- `filter[A328359(n+2), A101040(#)]` -/
def P3625771611375188928.Spec : Prop :=
  ∀ n, P3625771611375188928.a n = A082131 (n + 1)

end A082131

/-!
# A082133: Expansion of e.g.f. x*exp(2*x)*cosh(x).

The programs for A082133, the canonical program `A082133.P6488610623601259447` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082133 has offset 0).

The definition of A082133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082133.P6488610623601259447

`ogf((x-4x^2+5x^3)/(1-8x+22x^2-24x^3+9x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082133

/-- `ogf((x-4x^2+5x^3)/(1-8x+22x^2-24x^3+9x^4))` -/
def P6488610623601259447.Spec : Prop :=
  ∀ n, P6488610623601259447.a n = A082133 n

theorem P6488610623601259447.correct : P6488610623601259447.Spec := by
  intro n
  simp only [A082133]

end A082133

/-! ## A082133.P16372809157769298685

`n*ceil(3^n/6)`
-/

namespace A082133.P16372809157769298685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(3 ^ n : ℚ) / 6⌉

end

end A082133.P16372809157769298685

namespace A082133

/-- `n*ceil(3^n/6)` -/
def P16372809157769298685.Spec : Prop :=
  ∀ n, P16372809157769298685.a n = A082133 n

end A082133

/-! ## A082133.P16041371051639149429

`floor(n*∑[3*a(n-1)])` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A082133.P16041371051639149429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082133.P16041371051639149429

namespace A082133

/-- `floor(n*∑[3*a(n-1)])` -/
def P16041371051639149429.Spec : Prop :=
  ∀ n, (P16041371051639149429.a n : ℤ) = A082133 n

end A082133

/-! ## A082133.P8594172080125936270

`abs(n*or(2, -ceil(∑[3^(n-2)])))`
-/

namespace A082133.P8594172080125936270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.lor 2 (-⌈∑ j ∈ Finset.range (n + 1), f1 j⌉)|

end

end A082133.P8594172080125936270

namespace A082133

/-- `abs(n*or(2, -ceil(∑[3^(n-2)])))` -/
def P8594172080125936270.Spec : Prop :=
  ∀ n, P8594172080125936270.a n = A082133 n

end A082133

/-! ## A082133.P14957371499185141061

`-(n*or(2, -ceil(∑[3^(n-2)])))`
-/

namespace A082133.P14957371499185141061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.lor 2 (-⌈∑ j ∈ Finset.range (n + 1), f1 j⌉))

end

end A082133.P14957371499185141061

namespace A082133

/-- `-(n*or(2, -ceil(∑[3^(n-2)])))` -/
def P14957371499185141061.Spec : Prop :=
  ∀ n, P14957371499185141061.a n = A082133 n

end A082133

/-! ## A082133.P8980392170126874824

`abs(n*(1-or(2, ∑[floor(3^(n-2))])))`
-/

namespace A082133.P8980392170126874824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (1 - Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j))|

end

end A082133.P8980392170126874824

namespace A082133

/-- `abs(n*(1-or(2, ∑[floor(3^(n-2))])))` -/
def P8980392170126874824.Spec : Prop :=
  ∀ n, P8980392170126874824.a n = A082133 n

end A082133

/-! ## A082133.P15062739966557457669

`-(n*(1-or(2, ∑[floor(3^(n-2))])))`
-/

namespace A082133.P15062739966557457669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (1 - Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A082133.P15062739966557457669

namespace A082133

/-- `-(n*(1-or(2, ∑[floor(3^(n-2))])))` -/
def P15062739966557457669.Spec : Prop :=
  ∀ n, P15062739966557457669.a n = A082133 n

end A082133

/-! ## A082133.P15931229353755840351

`ceil(n*∑[a(n-1)/sqrt(1/9)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A082133.P15931229353755840351
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j)⌉

end

end A082133.P15931229353755840351

namespace A082133

/-- `ceil(n*∑[a(n-1)/sqrt(1/9)])` -/
def P15931229353755840351.Spec : Prop :=
  ∀ n, P15931229353755840351.a n = A082133 n

end A082133

/-! ## A082133.P13989865739850888475

`round(n*∑[a(n-1)/sqrt(1/9)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A082133.P13989865739850888475
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A082133.P13989865739850888475

namespace A082133

/-- `round(n*∑[a(n-1)/sqrt(1/9)])` -/
def P13989865739850888475.Spec : Prop :=
  ∀ n, P13989865739850888475.a n = A082133 n

end A082133

/-! ## A082133.P3910411473091654568

`∑{d}[n, n*A056274(#)]`
-/

namespace A082133.P3910411473091654568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A056274 d

end

end A082133.P3910411473091654568

namespace A082133

/-- `∑{d}[n, n*A056274(#)]` -/
def P3910411473091654568.Spec : Prop :=
  ∀ n, P3910411473091654568.a n = A082133 n

end A082133

/-! ## A082133.P14068392400777752965

`abs(n*A123183(n+1))`
-/

namespace A082133.P14068392400777752965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A123183 (n + 1)|

end

end A082133.P14068392400777752965

namespace A082133

/-- `abs(n*A123183(n+1))` -/
def P14068392400777752965.Spec : Prop :=
  ∀ n, P14068392400777752965.a n = A082133 n

end A082133

/-! ## A082133.P1101620843753862403

`∑{#}[n, C(n, #)*A057711(#)]`
-/

namespace A082133.P1101620843753862403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A057711 k

end

end A082133.P1101620843753862403

namespace A082133

/-- `∑{#}[n, C(n, #)*A057711(#)]` -/
def P1101620843753862403.Spec : Prop :=
  ∀ n, P1101620843753862403.a n = A082133 n

end A082133

/-! ## A082133.P269221103201318572

`A360035(n)+A360023(n)`
-/

namespace A082133.P269221103201318572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360035 n + A360023 n

end

end A082133.P269221103201318572

namespace A082133

/-- `A360035(n)+A360023(n)` -/
def P269221103201318572.Spec : Prop :=
  ∀ n, P269221103201318572.a n = A082133 n

end A082133

/-! ## A082133.P4067804562121469430

`A082306(n)-A007051(n)`
-/

namespace A082133.P4067804562121469430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082306 n - A007051 n

end

end A082133.P4067804562121469430

namespace A082133

/-- `A082306(n)-A007051(n)` -/
def P4067804562121469430.Spec : Prop :=
  ∀ n, P4067804562121469430.a n = A082133 n

end A082133

/-! ## A082133.P16681472042470018594

`record[A001057(n)*A056504(n)]`
-/

namespace A082133.P16681472042470018594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A056504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082133.P16681472042470018594

namespace A082133

/-- `record[A001057(n)*A056504(n)]` -/
def P16681472042470018594.Spec : Prop :=
  ∀ n, P16681472042470018594.a n = A082133 n

end A082133

/-! ## A082133.P15465066415642707025

`n*∑[3*a(n-1)]/3` with `a(0)=2, a(1)=1`
-/

namespace A082133.P15465066415642707025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 3

end

end A082133.P15465066415642707025

namespace A082133

/-- `n*∑[3*a(n-1)]/3` -/
def P15465066415642707025.Spec : Prop :=
  ∀ n, P15465066415642707025.a n = (A082133 n : ℚ)

end A082133

/-! ## A082133.P11729621269318259080

`n*A094388(n)/2`
-/

namespace A082133.P11729621269318259080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A094388 n : ℚ) / 2

end

end A082133.P11729621269318259080

namespace A082133

/-- `n*A094388(n)/2` -/
def P11729621269318259080.Spec : Prop :=
  ∀ n, P11729621269318259080.a n = (A082133 n : ℚ)

end A082133

/-! ## A082133.P16770239733840934164

`n*A115098(n)/3`
-/

namespace A082133.P16770239733840934164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A115098 n : ℚ) / 3

end

end A082133.P16770239733840934164

namespace A082133

/-- `n*A115098(n)/3` -/
def P16770239733840934164.Spec : Prop :=
  ∀ n, P16770239733840934164.a n = (A082133 n : ℚ)

end A082133

/-! ## A082133.P1033262310274068911

`(A027471(n+1)+n)/2`
-/

namespace A082133.P1033262310274068911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027471 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A082133.P1033262310274068911

namespace A082133

/-- `(A027471(n+1)+n)/2` -/
def P1033262310274068911.Spec : Prop :=
  ∀ n, P1033262310274068911.a n = (A082133 n : ℚ)

end A082133

/-! ## A082133.P10558885428326566004

`n*(A133494(n)+1)/2`
-/

namespace A082133.P10558885428326566004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (A133494 n + 1) : ℚ) / 2

end

end A082133.P10558885428326566004

namespace A082133

/-- `n*(A133494(n)+1)/2` -/
def P10558885428326566004.Spec : Prop :=
  ∀ n, P10558885428326566004.a n = (A082133 n : ℚ)

end A082133

/-!
# A082134: Expansion of e.g.f. x*exp(3*x)*cosh(x).

The programs for A082134, the canonical program `A082134.P2549787548527765533` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082134 has offset 0).

The definition of A082134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082134.P2549787548527765533

`n*2^(n-2)*(1+2^(n-1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082134

/-- `n*2^(n-2)*(1+2^(n-1))` -/
def P2549787548527765533.Spec : Prop :=
  ∀ n, P2549787548527765533.a n = (A082134 n : ℚ)

end A082134

/-! ## A082134.P4551823305738171449

`ogf((x-6x^2+10x^3)/(1-12x+52x^2-96x^3+64x^4))`
-/

namespace A082134.P4551823305738171449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -6, 10] [1, -12, 52, -96, 64] n

end

end A082134.P4551823305738171449

namespace A082134

/-- `ogf((x-6x^2+10x^3)/(1-12x+52x^2-96x^3+64x^4))` -/
def P4551823305738171449.Spec : Prop :=
  ∀ n, P4551823305738171449.a n = A082134 n

end A082134

/-! ## A082134.P5762986303118485888

`n*C(floor(2^(n-1))+1, 2)`
-/

namespace A082134.P5762986303118485888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat 2

end

end A082134.P5762986303118485888

namespace A082134

/-- `n*C(floor(2^(n-1))+1, 2)` -/
def P5762986303118485888.Spec : Prop :=
  ∀ n, (P5762986303118485888.a n : ℤ) = A082134 n

end A082134

/-! ## A082134.P3201895780431732073

`A215149(n)/2^(2-n)`
-/

namespace A082134.P3201895780431732073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215149 n : ℚ) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ)

end

end A082134.P3201895780431732073

namespace A082134

/-- `A215149(n)/2^(2-n)` -/
def P3201895780431732073.Spec : Prop :=
  ∀ n, P3201895780431732073.a n = (A082134 n : ℚ)

end A082134

/-! ## A082134.P17535928911073347208

`∑{#}[n, C(n, #)*A082133(#)]`
-/

namespace A082134.P17535928911073347208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A082133 k

end

end A082134.P17535928911073347208

namespace A082134

/-- `∑{#}[n, C(n, #)*A082133(#)]` -/
def P17535928911073347208.Spec : Prop :=
  ∀ n, P17535928911073347208.a n = A082134 n

end A082134

/-! ## A082134.P2054090544220975841

`A308700(n)+A001787(n)`
-/

namespace A082134.P2054090544220975841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308700 n + A001787 n

end

end A082134.P2054090544220975841

namespace A082134

/-- `A308700(n)+A001787(n)` -/
def P2054090544220975841.Spec : Prop :=
  ∀ n, P2054090544220975841.a n = A082134 n

end A082134

/-! ## A082134.P8122169244373909953

`A082307(n)-A007582(n)`
-/

namespace A082134.P8122169244373909953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082307 n - A007582 n

end

end A082134.P8122169244373909953

namespace A082134

/-- `A082307(n)-A007582(n)` -/
def P8122169244373909953.Spec : Prop :=
  ∀ n, P8122169244373909953.a n = A082134 n

end A082134

/-! ## A082134.P1339893358631697801

`A133224(n)-A002697(n)`
-/

namespace A082134.P1339893358631697801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133224 n - A002697 n

end

end A082134.P1339893358631697801

namespace A082134

/-- `A133224(n)-A002697(n)` -/
def P1339893358631697801.Spec : Prop :=
  ∀ n, P1339893358631697801.a n = A082134 n

end A082134

/-! ## A082134.P9519660786839593026

`A002697(n)-A308700(n)`
-/

namespace A082134.P9519660786839593026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n - A308700 n

end

end A082134.P9519660786839593026

namespace A082134

/-- `A002697(n)-A308700(n)` -/
def P9519660786839593026.Spec : Prop :=
  ∀ n, P9519660786839593026.a n = A082134 n

end A082134

/-! ## A082134.P9489638522067002371

`A292044(n+1)-A000431(n)`
-/

namespace A082134.P9489638522067002371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292044 (n + 1) - A000431 n

end

end A082134.P9489638522067002371

namespace A082134

/-- `A292044(n+1)-A000431(n)` -/
def P9489638522067002371.Spec : Prop :=
  ∀ n, P9489638522067002371.a n = A082134 n

end A082134

/-! ## A082134.P18123164271868794495

`(A002697(n)+A001787(n))/2`
-/

namespace A082134.P18123164271868794495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002697 n + A001787 n : ℚ) / 2

end

end A082134.P18123164271868794495

namespace A082134

/-- `(A002697(n)+A001787(n))/2` -/
def P18123164271868794495.Spec : Prop :=
  ∀ n, P18123164271868794495.a n = (A082134 n : ℚ)

end A082134

/-! ## A082134.P3168602238697314121

`(A133224(n)-A308700(n))/2`
-/

namespace A082134.P3168602238697314121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133224 n - A308700 n : ℚ) / 2

end

end A082134.P3168602238697314121

namespace A082134

/-- `(A133224(n)-A308700(n))/2` -/
def P3168602238697314121.Spec : Prop :=
  ∀ n, P3168602238697314121.a n = (A082134 n : ℚ)

end A082134

/-! ## A082134.P637542650727310572

`A308700(n)-n*A157823(n)`
-/

namespace A082134.P637542650727310572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308700 n - (n : ℤ) * A157823 n

end

end A082134.P637542650727310572

namespace A082134

/-- `A308700(n)-n*A157823(n)` -/
def P637542650727310572.Spec : Prop :=
  ∀ n, P637542650727310572.a n = A082134 n

end A082134

/-! ## A082134.P5140057893635483685

`(A097067(n+1)+A049610(2*n))/2`
-/

namespace A082134.P5140057893635483685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097067 (n + 1) + A049610 (2 * n) : ℚ) / 2

end

end A082134.P5140057893635483685

namespace A082134

/-- `(A097067(n+1)+A049610(2*n))/2` -/
def P5140057893635483685.Spec : Prop :=
  ∀ n, P5140057893635483685.a n = (A082134 n : ℚ)

end A082134

/-! ## A082134.P8271779581634981448

`(A097067(n+1)-A168150(2*n))/2`
-/

namespace A082134.P8271779581634981448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097067 (n + 1) - A168150 (2 * n) : ℚ) / 2

end

end A082134.P8271779581634981448

namespace A082134

/-- `(A097067(n+1)-A168150(2*n))/2` -/
def P8271779581634981448.Spec : Prop :=
  ∀ n, P8271779581634981448.a n = (A082134 n : ℚ)

end A082134

/-! ## A082134.P8366780444972609002

`(A139756(n+1)-A168150(2*n))/2`
-/

namespace A082134.P8366780444972609002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139756 (n + 1) - A168150 (2 * n) : ℚ) / 2

end

end A082134.P8366780444972609002

namespace A082134

/-- `(A139756(n+1)-A168150(2*n))/2` -/
def P8366780444972609002.Spec : Prop :=
  ∀ n, P8366780444972609002.a n = (A082134 n : ℚ)

end A082134

/-! ## A082134.P5976841064767928800

`A057711(n)+A000079(n)*A049610(n)`
-/

namespace A082134.P5976841064767928800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + A000079 n * A049610 n

end

end A082134.P5976841064767928800

namespace A082134

/-- `A057711(n)+A000079(n)*A049610(n)` -/
def P5976841064767928800.Spec : Prop :=
  ∀ n, P5976841064767928800.a n = A082134 n

end A082134

/-! ## A082134.P12152163800469219375

`A133224(n)-A002699(n)/2`
-/

namespace A082134.P12152163800469219375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133224 n : ℚ) - (A002699 n : ℚ) / 2

end

end A082134.P12152163800469219375

namespace A082134

/-- `A133224(n)-A002699(n)/2` -/
def P12152163800469219375.Spec : Prop :=
  ∀ n, P12152163800469219375.a n = (A082134 n : ℚ)

end A082134

/-! ## A082134.P11789437768756544099

`A002699(n)/2-A308700(n)`
-/

namespace A082134.P11789437768756544099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002699 n : ℚ) / 2 - (A308700 n : ℚ)

end

end A082134.P11789437768756544099

namespace A082134

/-- `A002699(n)/2-A308700(n)` -/
def P11789437768756544099.Spec : Prop :=
  ∀ n, P11789437768756544099.a n = (A082134 n : ℚ)

end A082134

/-!
# A082135: Expansion of e.g.f. x*exp(4*x)*cosh(x).

The programs for A082135, the canonical program `A082135.P12226867960076448181` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082135 has offset 0).

The definition of A082135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082135.P12226867960076448181

`n*(3^(n-1)+5^(n-1))/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082135

/-- `n*(3^(n-1)+5^(n-1))/2` -/
def P12226867960076448181.Spec : Prop :=
  ∀ n, P12226867960076448181.a n = (A082135 n : ℚ)

end A082135

/-! ## A082135.P4995828798113892257

`∑{#}[n, C(n, #)*A082134(#)]`
-/

namespace A082135.P4995828798113892257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A082134 k

end

end A082135.P4995828798113892257

namespace A082135

/-- `∑{#}[n, C(n, #)*A082134(#)]` -/
def P4995828798113892257.Spec : Prop :=
  ∀ n, P4995828798113892257.a n = A082135 n

end A082135

/-! ## A082135.P2105890726717668248

`A082308(n)-A081186(n)`
-/

namespace A082135.P2105890726717668248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082308 n - A081186 n

end

end A082135.P2105890726717668248

namespace A082135

/-- `A082308(n)-A081186(n)` -/
def P2105890726717668248.Spec : Prop :=
  ∀ n, P2105890726717668248.a n = A082135 n

end A082135

/-! ## A082135.P14687073872554177480

`A082308(n)-Δ[A233106(n+1)]`
-/

namespace A082135.P14687073872554177480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082308 n - (f1 (n + 1) - f1 n)

end

end A082135.P14687073872554177480

namespace A082135

/-- `A082308(n)-Δ[A233106(n+1)]` -/
def P14687073872554177480.Spec : Prop :=
  ∀ n, P14687073872554177480.a n = A082135 n

end A082135

/-! ## A082135.P12461565281839233759

`-(A001489(n)*A081186(log2(A011782(n))))`
-/

namespace A082135.P12461565281839233759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001489 n * A081186 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat)

end

end A082135.P12461565281839233759

namespace A082135

/-- `-(A001489(n)*A081186(log2(A011782(n))))` -/
def P12461565281839233759.Spec : Prop :=
  ∀ n, P12461565281839233759.a n = A082135 n

end A082135

/-! ## A082135.P13100363332440709745

`∑{#}[n, (-1)^(n-#)*C(n, #)*A082136(#)]`
-/

namespace A082135.P13100363332440709745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A082136 k : ℚ)

end

end A082135.P13100363332440709745

namespace A082135

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A082136(#)]` -/
def P13100363332440709745.Spec : Prop :=
  ∀ n, P13100363332440709745.a n = (A082135 n : ℚ)

end A082135

/-!
# A082136: Expansion of e.g.f. x*exp(5*x)*cosh(x).

The programs for A082136, the canonical program `A082136.P8247109038121067077` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082136 has offset 0).

The definition of A082136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082136.P8247109038121067077

`n*(4^(n-1)+6^(n-1))/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082136

/-- `n*(4^(n-1)+6^(n-1))/2` -/
def P8247109038121067077.Spec : Prop :=
  ∀ n, P8247109038121067077.a n = (A082136 n : ℚ)

end A082136

/-! ## A082136.P10046730073771040622

`∑{#}[n, C(n, #)*A082135(#)]`
-/

namespace A082136.P10046730073771040622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A082135 k

end

end A082136.P10046730073771040622

namespace A082136

/-- `∑{#}[n, C(n, #)*A082135(#)]` -/
def P10046730073771040622.Spec : Prop :=
  ∀ n, P10046730073771040622.a n = A082136 n

end A082136

/-! ## A082136.P18034271438600506726

`record[A001057(n)*A081187(A004526(n))]`
-/

namespace A082136.P18034271438600506726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n * A081187 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082136.P18034271438600506726

namespace A082136

/-- `record[A001057(n)*A081187(A004526(n))]` -/
def P18034271438600506726.Spec : Prop :=
  ∀ n, P18034271438600506726.a n = A082136 n

end A082136

/-! ## A082136.P11238280106079880905

`A308700(n)-A082133(n)*A157823(n)`
-/

namespace A082136.P11238280106079880905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308700 n - A082133 n * A157823 n

end

end A082136.P11238280106079880905

namespace A082136

/-- `A308700(n)-A082133(n)*A157823(n)` -/
def P11238280106079880905.Spec : Prop :=
  ∀ n, P11238280106079880905.a n = A082136 n

end A082136

/-!
# A082137: Square array of transforms of binomial coefficients, read by antidiagonals.

The programs for A082137, the canonical program `A082137.P9305893376067395032` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082137 has offset 0).

The definition of A082137 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082137.P9305893376067395032

`2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)-2*T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082137

/-- `2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)-2*T(n-2,k-1)` -/
def P9305893376067395032.Spec : Prop :=
  ∀ n, P9305893376067395032.a n = A082137 n

theorem P9305893376067395032.correct : P9305893376067395032.Spec := by
  intro n
  simp only [A082137]

end A082137

/-! ## A082137.P868168173350154451

`2*(T(n-1,k-1)+T(n-1,k)-T(n-2,k-1))-T(n-2,k)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A082137.P868168173350154451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n) - SequenceMachineLib.triUp2 a n

end

end A082137.P868168173350154451

namespace A082137

/-- `2*(T(n-1,k-1)+T(n-1,k)-T(n-2,k-1))-T(n-2,k)` -/
def P868168173350154451.Spec : Prop :=
  ∀ n, P868168173350154451.a n = A082137 n

end A082137

/-! ## A082137.P8314191926525451656

`ceil(C(row(n), col(n))*2^col(n)/2)`
-/

namespace A082137.P8314191926525451656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * 2 ^ SequenceMachineLib.triCol n : ℚ) / 2⌉

end

end A082137.P8314191926525451656

namespace A082137

/-- `ceil(C(row(n), col(n))*2^col(n)/2)` -/
def P8314191926525451656.Spec : Prop :=
  ∀ n, P8314191926525451656.a n = A082137 n

end A082137

/-! ## A082137.P5681857390717778776

`T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)-char[∑[char[1]+n]]` with `a(0)=1`
-/

namespace A082137.P5681857390717778776
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A082137.P5681857390717778776

namespace A082137

/-- `T(n-1,k-1)+T(n-1,k)+T(n-1,k-1)-char[∑[char[1]+n]]` -/
def P5681857390717778776.Spec : Prop :=
  ∀ n, P5681857390717778776.a n = A082137 n

end A082137

/-! ## A082137.P1226764939271365693

`T(n-1,k)+(2-T(1, col(n)))*T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A082137.P1226764939271365693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triUp a n + (2 - SequenceMachineLib.triAt a 1 (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUpLeft a n

end

end A082137.P1226764939271365693

namespace A082137

/-- `T(n-1,k)+(2-T(1, col(n)))*T(n-1,k-1)` -/
def P1226764939271365693.Spec : Prop :=
  ∀ n, P1226764939271365693.a n = A082137 n

end A082137

/-! ## A082137.P11012181913679873398

`T(n-1,k)-(T(1, col(n))-2)*T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A082137.P11012181913679873398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triUp a n - (SequenceMachineLib.triAt a 1 (SequenceMachineLib.triCol n : ℤ) - 2) * SequenceMachineLib.triUpLeft a n

end

end A082137.P11012181913679873398

namespace A082137

/-- `T(n-1,k)-(T(1, col(n))-2)*T(n-1,k-1)` -/
def P11012181913679873398.Spec : Prop :=
  ∀ n, P11012181913679873398.a n = A082137 n

end A082137

/-! ## A082137.P12048545405797502236

`ceil(A013609(n)/2)`
-/

namespace A082137.P12048545405797502236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A013609 n : ℚ) / 2⌉

end

end A082137.P12048545405797502236

namespace A082137

/-- `ceil(A013609(n)/2)` -/
def P12048545405797502236.Spec : Prop :=
  ∀ n, P12048545405797502236.a n = A082137 n

end A082137

/-! ## A082137.P2629204805499350996

`lcm(2, A303872(n))/2`
-/

namespace A082137.P2629204805499350996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A303872 n) : ℚ) / 2

end

end A082137.P2629204805499350996

namespace A082137

/-- `lcm(2, A303872(n))/2` -/
def P2629204805499350996.Spec : Prop :=
  ∀ n, P2629204805499350996.a n = (A082137 n : ℚ)

end A082137

/-! ## A082137.P10270881115263055743

`ceil(A210196(n+1)/4)`
-/

namespace A082137.P10270881115263055743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210196 (n + 1) : ℚ) / 4⌉

end

end A082137.P10270881115263055743

namespace A082137

/-- `ceil(A210196(n+1)/4)` -/
def P10270881115263055743.Spec : Prop :=
  ∀ n, P10270881115263055743.a n = A082137 n

end A082137

/-! ## A082137.P5929283980265880059

`A007318(n)*A232089(n)`
-/

namespace A082137.P5929283980265880059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A232089 n

end

end A082137.P5929283980265880059

namespace A082137

/-- `A007318(n)*A232089(n)` -/
def P5929283980265880059.Spec : Prop :=
  ∀ n, P5929283980265880059.a n = A082137 n

end A082137

/-! ## A082137.P12488668185427597252

`A013609(n)/A238303(n)`
-/

namespace A082137.P12488668185427597252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A238303 n : ℚ)

end

end A082137.P12488668185427597252

namespace A082137

/-- `A013609(n)/A238303(n)` -/
def P12488668185427597252.Spec : Prop :=
  ∀ n, P12488668185427597252.a n = (A082137 n : ℚ)

end A082137

/-! ## A082137.P18127338848652955888

`A134308(n)/A130321(n)`
-/

namespace A082137.P18127338848652955888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134308 n : ℚ) / (A130321 n : ℚ)

end

end A082137.P18127338848652955888

namespace A082137

/-- `A134308(n)/A130321(n)` -/
def P18127338848652955888.Spec : Prop :=
  ∀ n, P18127338848652955888.a n = (A082137 n : ℚ)

end A082137

/-! ## A082137.P15703693859988774384

`(A013609(n)+A010054(n))/2`
-/

namespace A082137.P15703693859988774384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n + A010054 n : ℚ) / 2

end

end A082137.P15703693859988774384

namespace A082137

/-- `(A013609(n)+A010054(n))/2` -/
def P15703693859988774384.Spec : Prop :=
  ∀ n, P15703693859988774384.a n = (A082137 n : ℚ)

end A082137

/-! ## A082137.P6023327323572683912

`A013609(n)/2*A035214(n)`
-/

namespace A082137.P6023327323572683912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / 2 * (A035214 n : ℚ)

end

end A082137.P6023327323572683912

namespace A082137

/-- `A013609(n)/2*A035214(n)` -/
def P6023327323572683912.Spec : Prop :=
  ∀ n, P6023327323572683912.a n = (A082137 n : ℚ)

end A082137

/-! ## A082137.P7920049411922432706

`A210196(n+1)/A238303(n)²`
-/

namespace A082137.P7920049411922432706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210196 (n + 1) : ℚ) / (A238303 n ^ 2 : ℚ)

end

end A082137.P7920049411922432706

namespace A082137

/-- `A210196(n+1)/A238303(n)²` -/
def P7920049411922432706.Spec : Prop :=
  ∀ n, P7920049411922432706.a n = (A082137 n : ℚ)

end A082137

/-! ## A082137.P9706241317256047801

`ceil(A007318(n)/2*A059268(n))`
-/

namespace A082137.P9706241317256047801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℚ) / 2 * (A059268 n : ℚ)⌉

end

end A082137.P9706241317256047801

namespace A082137

/-- `ceil(A007318(n)/2*A059268(n))` -/
def P9706241317256047801.Spec : Prop :=
  ∀ n, P9706241317256047801.a n = A082137 n

end A082137

/-! ## A082137.P7451287066886206628

`A210196(n+1)/(2-A010054(n))²`
-/

namespace A082137.P7451287066886206628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210196 (n + 1) : ℚ) / ((2 - A010054 n) ^ 2 : ℚ)

end

end A082137.P7451287066886206628

namespace A082137

/-- `A210196(n+1)/(2-A010054(n))²` -/
def P7451287066886206628.Spec : Prop :=
  ∀ n, P7451287066886206628.a n = (A082137 n : ℚ)

end A082137

/-! ## A082137.P1874899430022842719

`(A035214(n)/2)²*A210196(n+1)`
-/

namespace A082137.P1874899430022842719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A035214 n : ℚ) / 2) ^ 2 * (A210196 (n + 1) : ℚ)

end

end A082137.P1874899430022842719

namespace A082137

/-- `(A035214(n)/2)²*A210196(n+1)` -/
def P1874899430022842719.Spec : Prop :=
  ∀ n, P1874899430022842719.a n = (A082137 n : ℚ)

end A082137

/-! ## A082137.P17212556216250774872

`A007318(n)*A011782(A002262(n))`
-/

namespace A082137.P17212556216250774872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011782 (A002262 n).toNat

end

end A082137.P17212556216250774872

namespace A082137

/-- `A007318(n)*A011782(A002262(n))` -/
def P17212556216250774872.Spec : Prop :=
  ∀ n, P17212556216250774872.a n = A082137 n

end A082137

/-! ## A082137.P4843994498094061250

`(A014473(n)+1)*A011782(A002262(n))`
-/

namespace A082137.P4843994498094061250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A011782 (A002262 n).toNat

end

end A082137.P4843994498094061250

namespace A082137

/-- `(A014473(n)+1)*A011782(A002262(n))` -/
def P4843994498094061250.Spec : Prop :=
  ∀ n, P4843994498094061250.a n = A082137 n

end A082137

/-!
# A082138: A transform of C(n,3).

The programs for A082138, the canonical program `A082138.P4620835146460353895` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082138 has offset 0).

The definition of A082138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082138.P974435981350621603

`ceil(C(n+3, 3)*2^(n-1))`
-/

namespace A082138.P974435981350621603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 3) 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A082138.P974435981350621603

namespace A082138

/-- `ceil(C(n+3, 3)*2^(n-1))` -/
def P974435981350621603.Spec : Prop :=
  ∀ n, P974435981350621603.a n = A082138 n

end A082138

/-! ## A082138.P14032638533640929394

`ogf((1-4x+12x^2-16x^3+8x^4)/(1-8x+24x^2-32x^3+16x^4))`
-/

namespace A082138.P14032638533640929394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 12, -16, 8] [1, -8, 24, -32, 16] n

end

end A082138.P14032638533640929394

namespace A082138

/-- `ogf((1-4x+12x^2-16x^3+8x^4)/(1-8x+24x^2-32x^3+16x^4))` -/
def P14032638533640929394.Spec : Prop :=
  ∀ n, P14032638533640929394.a n = A082138 n

end A082138

/-! ## A082138.P4620835146460353895

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=4, a(2)=20, a(3)=80, a(4)=280`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082138

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P4620835146460353895.Spec : Prop :=
  ∀ n, P4620835146460353895.a n = A082138 n

theorem P4620835146460353895.correct : P4620835146460353895.Spec := by
  intro n
  simp only [A082138]

end A082138

/-! ## A082138.P11229368118192847428

`∑{#}[n, C(n+3, #+3)*C(#+3, 3)*(1+(-1)^#)/2]`
-/

namespace A082138.P11229368118192847428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((Nat.choose (n + 3) (k + 3) * Nat.choose (k + 3) 3 : ℤ) * (1 + (-1) ^ k) : ℚ) / 2

end

end A082138.P11229368118192847428

namespace A082138

/-- `∑{#}[n, C(n+3, #+3)*C(#+3, 3)*(1+(-1)^#)/2]` -/
def P11229368118192847428.Spec : Prop :=
  ∀ n, P11229368118192847428.a n = (A082138 n : ℚ)

end A082138

/-! ## A082138.P18133536287984595377

`(6/n+2)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A082138.P18133536287984595377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (6 / (n : ℚ) + 2) * a (n - 1)

end

end A082138.P18133536287984595377

namespace A082138

/-- `(6/n+2)*a(n-1)` -/
def P18133536287984595377.Spec : Prop :=
  ∀ n, P18133536287984595377.a n = (A082138 n : ℚ)

end A082138

/-! ## A082138.P14627318209676265520

`ceil(2^(n-1)*C(n+3, 3))`
-/

namespace A082138.P14627318209676265520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 3) 3 : ℚ)⌉

end

end A082138.P14627318209676265520

namespace A082138

/-- `ceil(2^(n-1)*C(n+3, 3))` -/
def P14627318209676265520.Spec : Prop :=
  ∀ n, P14627318209676265520.a n = A082138 n

end A082138

/-! ## A082138.P6152536008151586041

`round(2^(n-1)*C(n+3, 3))`
-/

namespace A082138.P6152536008151586041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 3) 3 : ℚ))

end

end A082138.P6152536008151586041

namespace A082138

/-- `round(2^(n-1)*C(n+3, 3))` -/
def P6152536008151586041.Spec : Prop :=
  ∀ n, P6152536008151586041.a n = A082138 n

end A082138

/-! ## A082138.P15894017247193008316

`ceil(2^(n-1)*∑[∑[n+1]])`
-/

namespace A082138.P15894017247193008316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A082138.P15894017247193008316

namespace A082138

/-- `ceil(2^(n-1)*∑[∑[n+1]])` -/
def P15894017247193008316.Spec : Prop :=
  ∀ n, P15894017247193008316.a n = A082138 n

end A082138

/-! ## A082138.P6436432691706935810

`∑[∑[n+1]]*A011782(n)`
-/

namespace A082138.P6436432691706935810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011782 n

end

end A082138.P6436432691706935810

namespace A082138

/-- `∑[∑[n+1]]*A011782(n)` -/
def P6436432691706935810.Spec : Prop :=
  ∀ n, P6436432691706935810.a n = A082138 n

end A082138

/-! ## A082138.P10216468778383608496

`∑[∑[n+1]]*A166444(n+1)`
-/

namespace A082138.P10216468778383608496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A166444 (n + 1)

end

end A082138.P10216468778383608496

namespace A082138

/-- `∑[∑[n+1]]*A166444(n+1)` -/
def P10216468778383608496.Spec : Prop :=
  ∀ n, P10216468778383608496.a n = A082138 n

end A082138

/-! ## A082138.P8654347450499671187

`∑[∑[n+1]]*A158780(2*n+1)`
-/

namespace A082138.P8654347450499671187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A158780 (2 * n + 1)

end

end A082138.P8654347450499671187

namespace A082138

/-- `∑[∑[n+1]]*A158780(2*n+1)` -/
def P8654347450499671187.Spec : Prop :=
  ∀ n, P8654347450499671187.a n = A082138 n

end A082138

/-! ## A082138.P15471040577405335280

`A085385(n)+A084266(n)`
-/

namespace A082138.P15471040577405335280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085385 n + A084266 n

end

end A082138.P15471040577405335280

namespace A082138

/-- `A085385(n)+A084266(n)` -/
def P15471040577405335280.Spec : Prop :=
  ∀ n, P15471040577405335280.a n = A082138 n

end A082138

/-! ## A082138.P11340811293432667126

`A067046(n+1)*A158302(n)`
-/

namespace A082138.P11340811293432667126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067046 (n + 1) * A158302 n

end

end A082138.P11340811293432667126

namespace A082138

/-- `A067046(n+1)*A158302(n)` -/
def P11340811293432667126.Spec : Prop :=
  ∀ n, P11340811293432667126.a n = A082138 n

end A082138

/-! ## A082138.P16948991018834785481

`A011782(n)*A058187(2*n)`
-/

namespace A082138.P16948991018834785481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A058187 (2 * n)

end

end A082138.P16948991018834785481

namespace A082138

/-- `A011782(n)*A058187(2*n)` -/
def P16948991018834785481.Spec : Prop :=
  ∀ n, P16948991018834785481.a n = A082138 n

end A082138

/-! ## A082138.P1250376868966228092

`Δ[A131577(n)]*A000292(n+1)`
-/

namespace A082138.P1250376868966228092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000292 (n + 1)

end

end A082138.P1250376868966228092

namespace A082138

/-- `Δ[A131577(n)]*A000292(n+1)` -/
def P1250376868966228092.Spec : Prop :=
  ∀ n, P1250376868966228092.a n = A082138 n

end A082138

/-! ## A082138.P9757442980724279549

`round(A000292(n+1)/4*A000079(n+1))`
-/

namespace A082138.P9757442980724279549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000292 (n + 1) : ℚ) / 4 * (A000079 (n + 1) : ℚ))

end

end A082138.P9757442980724279549

namespace A082138

/-- `round(A000292(n+1)/4*A000079(n+1))` -/
def P9757442980724279549.Spec : Prop :=
  ∀ n, P9757442980724279549.a n = A082138 n

end A082138

/-! ## A082138.P11976129448106621774

`A057711(n+1)+A001794(n)-A001793(n+1)`
-/

namespace A082138.P11976129448106621774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 1) + (A001794 n - A001793 (n + 1))

end

end A082138.P11976129448106621774

namespace A082138

/-- `A057711(n+1)+A001794(n)-A001793(n+1)` -/
def P11976129448106621774.Spec : Prop :=
  ∀ n, P11976129448106621774.a n = A082138 n

end A082138

/-! ## A082138.P12419837454460534985

`round(2^n*C(n+3, 3)/2)`
-/

namespace A082138.P12419837454460534985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n * Nat.choose (n + 3) 3 : ℚ) / 2)

end

end A082138.P12419837454460534985

namespace A082138

/-- `round(2^n*C(n+3, 3)/2)` -/
def P12419837454460534985.Spec : Prop :=
  ∀ n, P12419837454460534985.a n = A082138 n

end A082138

/-! ## A082138.P15597862747730909365

`A001789(n+3)/A040000(n)`
-/

namespace A082138.P15597862747730909365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (n + 3) : ℚ) / (A040000 n : ℚ)

end

end A082138.P15597862747730909365

namespace A082138

/-- `A001789(n+3)/A040000(n)` -/
def P15597862747730909365.Spec : Prop :=
  ∀ n, P15597862747730909365.a n = (A082138 n : ℚ)

end A082138

/-! ## A082138.P6979996891453593663

`A001789(n+3)/A036453(n+1)`
-/

namespace A082138.P6979996891453593663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (n + 3) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A082138.P6979996891453593663

namespace A082138

/-- `A001789(n+3)/A036453(n+1)` -/
def P6979996891453593663.Spec : Prop :=
  ∀ n, P6979996891453593663.a n = (A082138 n : ℚ)

end A082138

/-!
# A082139: A transform of binomial(n,5).

The programs for A082139, the canonical program `A082139.P6465493219301077864` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082139 has offset 0).

The definition of A082139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082139.P6465493219301077864

`ceil(C(n+5, 5)*2^(n-1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082139

/-- `ceil(C(n+5, 5)*2^(n-1))` -/
def P6465493219301077864.Spec : Prop :=
  ∀ n, P6465493219301077864.a n = A082139 n

theorem P6465493219301077864.correct : P6465493219301077864.Spec := by
  intro n
  simp only [A082139]

end A082139

/-! ## A082139.P9533642590521155004

`∑{#}[n, C(n+5, #+5)*C(#+5, 5)*(1+(-1)^#)/2]`
-/

namespace A082139.P9533642590521155004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((Nat.choose (n + 5) (k + 5) * Nat.choose (k + 5) 5 : ℤ) * (1 + (-1) ^ k) : ℚ) / 2

end

end A082139.P9533642590521155004

namespace A082139

/-- `∑{#}[n, C(n+5, #+5)*C(#+5, 5)*(1+(-1)^#)/2]` -/
def P9533642590521155004.Spec : Prop :=
  ∀ n, P9533642590521155004.a n = (A082139 n : ℚ)

end A082139

/-! ## A082139.P17537257483256040412

`(10/n+2)*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A082139.P17537257483256040412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (10 / (n : ℚ) + 2) * a (n - 1)

end

end A082139.P17537257483256040412

namespace A082139

/-- `(10/n+2)*a(n-1)` -/
def P17537257483256040412.Spec : Prop :=
  ∀ n, P17537257483256040412.a n = (A082139 n : ℚ)

end A082139

/-! ## A082139.P14105566406766235082

`C(n+5, 5)*A011782(n)`
-/

namespace A082139.P14105566406766235082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 : ℤ) * A011782 n

end

end A082139.P14105566406766235082

namespace A082139

/-- `C(n+5, 5)*A011782(n)` -/
def P14105566406766235082.Spec : Prop :=
  ∀ n, P14105566406766235082.a n = A082139 n

end A082139

/-! ## A082139.P18387023024611140283

`ceil(2^(n-1))*∑[∑[A000292(n+1)]]`
-/

namespace A082139.P18387023024611140283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082139.P18387023024611140283

namespace A082139

/-- `ceil(2^(n-1))*∑[∑[A000292(n+1)]]` -/
def P18387023024611140283.Spec : Prop :=
  ∀ n, P18387023024611140283.a n = A082139 n

end A082139

/-! ## A082139.P15041355757501386282

`∑[∑[A000292(n+1)]]*A011782(n)`
-/

namespace A082139.P15041355757501386282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 n

end

end A082139.P15041355757501386282

namespace A082139

/-- `∑[∑[A000292(n+1)]]*A011782(n)` -/
def P15041355757501386282.Spec : Prop :=
  ∀ n, P15041355757501386282.a n = A082139 n

end A082139

/-! ## A082139.P15418282673176566564

`ceil(A054849(n+5)/2)`
-/

namespace A082139.P15418282673176566564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054849 (n + 5) : ℚ) / 2⌉

end

end A082139.P15418282673176566564

namespace A082139

/-- `ceil(A054849(n+5)/2)` -/
def P15418282673176566564.Spec : Prop :=
  ∀ n, P15418282673176566564.a n = A082139 n

end A082139

/-! ## A082139.P2747478927899787190

`A054849(n+5)/A040000(n)`
-/

namespace A082139.P2747478927899787190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (n + 5) : ℚ) / (A040000 n : ℚ)

end

end A082139.P2747478927899787190

namespace A082139

/-- `A054849(n+5)/A040000(n)` -/
def P2747478927899787190.Spec : Prop :=
  ∀ n, P2747478927899787190.a n = (A082139 n : ℚ)

end A082139

/-! ## A082139.P8938705880888325687

`A054849(n+5)/A036453(n+1)`
-/

namespace A082139.P8938705880888325687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (n + 5) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A082139.P8938705880888325687

namespace A082139

/-- `A054849(n+5)/A036453(n+1)` -/
def P8938705880888325687.Spec : Prop :=
  ∀ n, P8938705880888325687.a n = (A082139 n : ℚ)

end A082139

/-! ## A082139.P13082207936947987496

`A054849(n+5)/A003484(A077066(n+1))`
-/

namespace A082139.P13082207936947987496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (n + 5) : ℚ) / (A003484 (A077066 (n + 1)).toNat : ℚ)

end

end A082139.P13082207936947987496

namespace A082139

/-- `A054849(n+5)/A003484(A077066(n+1))` -/
def P13082207936947987496.Spec : Prop :=
  ∀ n, P13082207936947987496.a n = (A082139 n : ℚ)

end A082139

/-! ## A082139.P7670028158473576571

`∑[A261721(∑[n+1])]*A011782(n)`
-/

namespace A082139.P7670028158473576571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261721 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 n

end

end A082139.P7670028158473576571

namespace A082139

/-- `∑[A261721(∑[n+1])]*A011782(n)` -/
def P7670028158473576571.Spec : Prop :=
  ∀ n, P7670028158473576571.a n = A082139 n

end A082139

/-!
# A082140: A transform of binomial(n,6).

The programs for A082140, the canonical program `A082140.P16794663921063539145` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082140 has offset 0).

The definition of A082140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082140.P16794663921063539145

`ceil(C(n+6, 6)*2^(n-1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082140

/-- `ceil(C(n+6, 6)*2^(n-1))` -/
def P16794663921063539145.Spec : Prop :=
  ∀ n, P16794663921063539145.a n = A082140 n

theorem P16794663921063539145.correct : P16794663921063539145.Spec := by
  intro n
  simp only [A082140]

end A082140

/-! ## A082140.P4137500323597030866

`∑{#}[n, C(n+6, #+6)*C(#+6, 6)*(1+(-1)^#)/2]`
-/

namespace A082140.P4137500323597030866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((Nat.choose (n + 6) (k + 6) * Nat.choose (k + 6) 6 : ℤ) * (1 + (-1) ^ k) : ℚ) / 2

end

end A082140.P4137500323597030866

namespace A082140

/-- `∑{#}[n, C(n+6, #+6)*C(#+6, 6)*(1+(-1)^#)/2]` -/
def P4137500323597030866.Spec : Prop :=
  ∀ n, P4137500323597030866.a n = (A082140 n : ℚ)

end A082140

/-! ## A082140.P4820957983311518851

`(12/n+2)*a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A082140.P4820957983311518851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  (12 / (n : ℚ) + 2) * a (n - 1)

end

end A082140.P4820957983311518851

namespace A082140

/-- `(12/n+2)*a(n-1)` -/
def P4820957983311518851.Spec : Prop :=
  ∀ n, P4820957983311518851.a n = (A082140 n : ℚ)

end A082140

/-! ## A082140.P16875489594168843538

`ceil(∑[A006976(n)/2])`
-/

namespace A082140.P16875489594168843538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006976 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A082140.P16875489594168843538

namespace A082140

/-- `ceil(∑[A006976(n)/2])` -/
def P16875489594168843538.Spec : Prop :=
  ∀ n, P16875489594168843538.a n = A082140 n

end A082140

/-! ## A082140.P11108003418156754953

`C(n+6, 6)*A011782(n)`
-/

namespace A082140.P11108003418156754953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℤ) * A011782 n

end

end A082140.P11108003418156754953

namespace A082140

/-- `C(n+6, 6)*A011782(n)` -/
def P11108003418156754953.Spec : Prop :=
  ∀ n, P11108003418156754953.a n = A082140 n

end A082140

/-! ## A082140.P1723423855812305176

`A000579(n+6)*A011782(n)`
-/

namespace A082140.P1723423855812305176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6) * A011782 n

end

end A082140.P1723423855812305176

namespace A082140

/-- `A000579(n+6)*A011782(n)` -/
def P1723423855812305176.Spec : Prop :=
  ∀ n, P1723423855812305176.a n = A082140 n

end A082140

/-! ## A082140.P14628489617590479015

`A080952(n)/A080929(n+1)*A082138(n)`
-/

namespace A082140.P14628489617590479015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080952 n : ℚ) / (A080929 (n + 1) : ℚ) * (A082138 n : ℚ)

end

end A082140.P14628489617590479015

namespace A082140

/-- `A080952(n)/A080929(n+1)*A082138(n)` -/
def P14628489617590479015.Spec : Prop :=
  ∀ n, P14628489617590479015.a n = (A082140 n : ℚ)

end A082140

/-! ## A082140.P18040242215365980666

`ceil(A002409(n)/2)`
-/

namespace A082140.P18040242215365980666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002409 n : ℚ) / 2⌉

end

end A082140.P18040242215365980666

namespace A082140

/-- `ceil(A002409(n)/2)` -/
def P18040242215365980666.Spec : Prop :=
  ∀ n, P18040242215365980666.a n = A082140 n

end A082140

/-! ## A082140.P7857170023513520343

`A002409(n)/A040000(n)`
-/

namespace A082140.P7857170023513520343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n : ℚ) / (A040000 n : ℚ)

end

end A082140.P7857170023513520343

namespace A082140

/-- `A002409(n)/A040000(n)` -/
def P7857170023513520343.Spec : Prop :=
  ∀ n, P7857170023513520343.a n = (A082140 n : ℚ)

end A082140

/-! ## A082140.P13148123409693327994

`A002409(n)/A036453(n+1)`
-/

namespace A082140.P13148123409693327994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A082140.P13148123409693327994

namespace A082140

/-- `A002409(n)/A036453(n+1)` -/
def P13148123409693327994.Spec : Prop :=
  ∀ n, P13148123409693327994.a n = (A082140 n : ℚ)

end A082140

/-! ## A082140.P17943216165064546767

`∑[A006976(n)]/gcd(2, A000079(n))`
-/

namespace A082140.P17943216165064546767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006976 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Int.gcd 2 (A000079 n) : ℚ)

end

end A082140.P17943216165064546767

namespace A082140

/-- `∑[A006976(n)]/gcd(2, A000079(n))` -/
def P17943216165064546767.Spec : Prop :=
  ∀ n, P17943216165064546767.a n = (A082140 n : ℚ)

end A082140

/-! ## A082140.P2167640339720169557

`A002409(n)/(A137866(A020639(n+1))+1)`
-/

namespace A082140.P2167640339720169557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n : ℚ) / (A137866 (A020639 (n + 1)).toNat + 1 : ℚ)

end

end A082140.P2167640339720169557

namespace A082140

/-- `A002409(n)/(A137866(A020639(n+1))+1)` -/
def P2167640339720169557.Spec : Prop :=
  ∀ n, P2167640339720169557.a n = (A082140 n : ℚ)

end A082140

/-! ## A082140.P5280695577770022172

`A002409(n)/A341721(A323238(2*n+1))`
-/

namespace A082140.P5280695577770022172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n : ℚ) / (A341721 (A323238 (2 * n + 1)).toNat : ℚ)

end

end A082140.P5280695577770022172

namespace A082140

/-- `A002409(n)/A341721(A323238(2*n+1))` -/
def P5280695577770022172.Spec : Prop :=
  ∀ n, P5280695577770022172.a n = (A082140 n : ℚ)

end A082140

/-! ## A082140.P2382451006742559051

`A002409(n)/A011782(n+1)*A011782(n)`
-/

namespace A082140.P2382451006742559051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n : ℚ) / (A011782 (n + 1) : ℚ) * (A011782 n : ℚ)

end

end A082140.P2382451006742559051

namespace A082140

/-- `A002409(n)/A011782(n+1)*A011782(n)` -/
def P2382451006742559051.Spec : Prop :=
  ∀ n, P2382451006742559051.a n = (A082140 n : ℚ)

end A082140

/-!
# A082141: A transform of C(n,7).

The programs for A082141, the canonical program `A082141.P17442927547365470321` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082141 has offset 0).

The definition of A082141 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082141.P17442927547365470321

`ceil(C(n+7, 7)*2^(n-1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082141

/-- `ceil(C(n+7, 7)*2^(n-1))` -/
def P17442927547365470321.Spec : Prop :=
  ∀ n, P17442927547365470321.a n = A082141 n

theorem P17442927547365470321.correct : P17442927547365470321.Spec := by
  intro n
  simp only [A082141]

end A082141

/-! ## A082141.P3323430180276067676

`∑{#}[n, C(n+7, #+7)*C(#+7, 7)*(1+(-1)^#)/2]`
-/

namespace A082141.P3323430180276067676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((Nat.choose (n + 7) (k + 7) * Nat.choose (k + 7) 7 : ℤ) * (1 + (-1) ^ k) : ℚ) / 2

end

end A082141.P3323430180276067676

namespace A082141

/-- `∑{#}[n, C(n+7, #+7)*C(#+7, 7)*(1+(-1)^#)/2]` -/
def P3323430180276067676.Spec : Prop :=
  ∀ n, P3323430180276067676.a n = (A082141 n : ℚ)

end A082141

/-! ## A082141.P11431073520185043995

`(14/n+2)*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A082141.P11431073520185043995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  (14 / (n : ℚ) + 2) * a (n - 1)

end

end A082141.P11431073520185043995

namespace A082141

/-- `(14/n+2)*a(n-1)` -/
def P11431073520185043995.Spec : Prop :=
  ∀ n, P11431073520185043995.a n = (A082141 n : ℚ)

end A082141

/-! ## A082141.P4694493333058183950

`C(n+7, 7)*A011782(n)`
-/

namespace A082141.P4694493333058183950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * A011782 n

end

end A082141.P4694493333058183950

namespace A082141

/-- `C(n+7, 7)*A011782(n)` -/
def P4694493333058183950.Spec : Prop :=
  ∀ n, P4694493333058183950.a n = A082141 n

end A082141

/-! ## A082141.P6453374200876644711

`ceil(2^(n-1))*A000580(n+7)`
-/

namespace A082141.P6453374200876644711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A000580 (n + 7)

end

end A082141.P6453374200876644711

namespace A082141

/-- `ceil(2^(n-1))*A000580(n+7)` -/
def P6453374200876644711.Spec : Prop :=
  ∀ n, P6453374200876644711.a n = A082141 n

end A082141

/-! ## A082141.P7252592172125731104

`A000580(n+7)*A011782(n)`
-/

namespace A082141.P7252592172125731104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A011782 n

end

end A082141.P7252592172125731104

namespace A082141

/-- `A000580(n+7)*A011782(n)` -/
def P7252592172125731104.Spec : Prop :=
  ∀ n, P7252592172125731104.a n = A082141 n

end A082141

/-! ## A082141.P18243113419769486957

`∑[A000579(n+6)]*A011782(n)`
-/

namespace A082141.P18243113419769486957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 n

end

end A082141.P18243113419769486957

namespace A082141

/-- `∑[A000579(n+6)]*A011782(n)` -/
def P18243113419769486957.Spec : Prop :=
  ∀ n, P18243113419769486957.a n = A082141 n

end A082141

/-! ## A082141.P15826941387097255523

`ceil(A054851(n+7)/2)`
-/

namespace A082141.P15826941387097255523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054851 (n + 7) : ℚ) / 2⌉

end

end A082141.P15826941387097255523

namespace A082141

/-- `ceil(A054851(n+7)/2)` -/
def P15826941387097255523.Spec : Prop :=
  ∀ n, P15826941387097255523.a n = A082141 n

end A082141

/-! ## A082141.P1472514810653308715

`A054851(n+7)/A040000(n)`
-/

namespace A082141.P1472514810653308715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (n + 7) : ℚ) / (A040000 n : ℚ)

end

end A082141.P1472514810653308715

namespace A082141

/-- `A054851(n+7)/A040000(n)` -/
def P1472514810653308715.Spec : Prop :=
  ∀ n, P1472514810653308715.a n = (A082141 n : ℚ)

end A082141

/-! ## A082141.P18057737476320807487

`A054851(n+7)/A036453(n+1)`
-/

namespace A082141.P18057737476320807487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (n + 7) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A082141.P18057737476320807487

namespace A082141

/-- `A054851(n+7)/A036453(n+1)` -/
def P18057737476320807487.Spec : Prop :=
  ∀ n, P18057737476320807487.a n = (A082141 n : ℚ)

end A082141

/-! ## A082141.P8409923537852664103

`A054851(n+7)/A011782(n+1)*A011782(n)`
-/

namespace A082141.P8409923537852664103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (n + 7) : ℚ) / (A011782 (n + 1) : ℚ) * (A011782 n : ℚ)

end

end A082141.P8409923537852664103

namespace A082141

/-- `A054851(n+7)/A011782(n+1)*A011782(n)` -/
def P8409923537852664103.Spec : Prop :=
  ∀ n, P8409923537852664103.a n = (A082141 n : ℚ)

end A082141

/-!
# A082143: First subdiagonal of number array A082137.

The programs for A082143, the canonical program `A082143.P16250136075714900251` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082143 has offset 0).

The definition of A082143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082143.P16250136075714900251

`C(Δ[n²], n)*ceil(2^(n-1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082143

/-- `C(Δ[n²], n)*ceil(2^(n-1))` -/
def P16250136075714900251.Spec : Prop :=
  ∀ n, P16250136075714900251.a n = A082143 n

theorem P16250136075714900251.correct : P16250136075714900251.Spec := by
  intro n
  simp only [A082143]

end A082143

/-! ## A082143.P14627788079165176119

`(8-4/(n+1))*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A082143.P14627788079165176119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (8 - 4 / (n + 1 : ℚ)) * a (n - 1)

end

end A082143.P14627788079165176119

namespace A082143

/-- `(8-4/(n+1))*a(n-1)` -/
def P14627788079165176119.Spec : Prop :=
  ∀ n, P14627788079165176119.a n = (A082143 n : ℚ)

end A082143

/-! ## A082143.P7400077002259144600

`ceil(2^(n-1)*C(2*n+1, n))`
-/

namespace A082143.P7400077002259144600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n + 1) n : ℚ)⌉

end

end A082143.P7400077002259144600

namespace A082143

/-- `ceil(2^(n-1)*C(2*n+1, n))` -/
def P7400077002259144600.Spec : Prop :=
  ∀ n, P7400077002259144600.a n = A082143 n

end A082143

/-! ## A082143.P9839603356409556251

`round(2^(n-1)*C(2*n+1, n))`
-/

namespace A082143.P9839603356409556251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n + 1) n : ℚ))

end

end A082143.P9839603356409556251

namespace A082143

/-- `round(2^(n-1)*C(2*n+1, n))` -/
def P9839603356409556251.Spec : Prop :=
  ∀ n, P9839603356409556251.a n = A082143 n

end A082143

/-! ## A082143.P2684203355409980414

`∏[4-2/(n+1)]/2*ceil(2^(n-1))`
-/

namespace A082143.P2684203355409980414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A082143.P2684203355409980414

namespace A082143

/-- `∏[4-2/(n+1)]/2*ceil(2^(n-1))` -/
def P2684203355409980414.Spec : Prop :=
  ∀ n, P2684203355409980414.a n = (A082143 n : ℚ)

end A082143

/-! ## A082143.P17918945272204577772

`record[A034008(n)*A088218(n)]`
-/

namespace A082143.P17918945272204577772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082143.P17918945272204577772

namespace A082143

/-- `record[A034008(n)*A088218(n)]` -/
def P17918945272204577772.Spec : Prop :=
  ∀ n, P17918945272204577772.a n = A082143 n

end A082143

/-! ## A082143.P7948580178851919260

`A011782(n)*A260878(n+1)-A011782(n)`
-/

namespace A082143.P7948580178851919260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A260878 (n + 1) - A011782 n

end

end A082143.P7948580178851919260

namespace A082143

/-- `A011782(n)*A260878(n+1)-A011782(n)` -/
def P7948580178851919260.Spec : Prop :=
  ∀ n, P7948580178851919260.a n = A082143 n

end A082143

/-! ## A082143.P6805592320788481334

`ceil(A098660(2*n+1)/2)`
-/

namespace A082143.P6805592320788481334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098660 (2 * n + 1) : ℚ) / 2⌉

end

end A082143.P6805592320788481334

namespace A082143

/-- `ceil(A098660(2*n+1)/2)` -/
def P6805592320788481334.Spec : Prop :=
  ∀ n, P6805592320788481334.a n = A082143 n

end A082143

/-! ## A082143.P3138547842905810315

`A098660(2*n+1)/(4*n+2-A004277(2*n))`
-/

namespace A082143.P3138547842905810315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098660 (2 * n + 1) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A082143.P3138547842905810315

namespace A082143

/-- `A098660(2*n+1)/(4*n+2-A004277(2*n))` -/
def P3138547842905810315.Spec : Prop :=
  ∀ n, P3138547842905810315.a n = (A082143 n : ℚ)

end A082143

/-! ## A082143.P16567744215292174377

`A081294(n)*A088218(n+1)/A011782(n+1)`
-/

namespace A082143.P16567744215292174377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081294 n * A088218 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A082143.P16567744215292174377

namespace A082143

/-- `A081294(n)*A088218(n+1)/A011782(n+1)` -/
def P16567744215292174377.Spec : Prop :=
  ∀ n, P16567744215292174377.a n = (A082143 n : ℚ)

end A082143

/-!
# A082144: A subdiagonal of number array A082137.

The programs for A082144, the canonical program `A082144.P10387579398973332344` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082144 has offset 0).

The definition of A082144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082144.P10387579398973332344

`C(2*(n+1), n)*ceil(2^(n-1))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082144

/-- `C(2*(n+1), n)*ceil(2^(n-1))` -/
def P10387579398973332344.Spec : Prop :=
  ∀ n, P10387579398973332344.a n = A082144 n

theorem P10387579398973332344.correct : P10387579398973332344.Spec := by
  intro n
  simp only [A082144]

end A082144

/-! ## A082144.P6552669296636240555

`ceil(A245391(n)/2)`
-/

namespace A082144.P6552669296636240555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245391 n : ℚ) / 2⌉

end

end A082144.P6552669296636240555

namespace A082144

/-- `ceil(A245391(n)/2)` -/
def P6552669296636240555.Spec : Prop :=
  ∀ n, P6552669296636240555.a n = A082144 n

end A082144

/-! ## A082144.P1467904260947171576

`ceil(2^(n-1))*A001791(n+1)`
-/

namespace A082144.P1467904260947171576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A001791 (n + 1)

end

end A082144.P1467904260947171576

namespace A082144

/-- `ceil(2^(n-1))*A001791(n+1)` -/
def P1467904260947171576.Spec : Prop :=
  ∀ n, P1467904260947171576.a n = A082144 n

end A082144

/-! ## A082144.P901415513671706380

`A001791(n+1)*A011782(n)`
-/

namespace A082144.P901415513671706380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1) * A011782 n

end

end A082144.P901415513671706380

namespace A082144

/-- `A001791(n+1)*A011782(n)` -/
def P901415513671706380.Spec : Prop :=
  ∀ n, P901415513671706380.a n = A082144 n

end A082144

/-! ## A082144.P10834618604396962773

`A000108(n+1)*A057711(n+1)`
-/

namespace A082144.P10834618604396962773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A057711 (n + 1)

end

end A082144.P10834618604396962773

namespace A082144

/-- `A000108(n+1)*A057711(n+1)` -/
def P10834618604396962773.Spec : Prop :=
  ∀ n, P10834618604396962773.a n = A082144 n

end A082144

/-! ## A082144.P11166351612374720142

`A000108(n+1)*A129952(n+1)`
-/

namespace A082144.P11166351612374720142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A129952 (n + 1)

end

end A082144.P11166351612374720142

namespace A082144

/-- `A000108(n+1)*A129952(n+1)` -/
def P11166351612374720142.Spec : Prop :=
  ∀ n, P11166351612374720142.a n = A082144 n

end A082144

/-! ## A082144.P7371812711125750928

`A000108(n+1)*A262258(2*n+1)`
-/

namespace A082144.P7371812711125750928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A262258 (2 * n + 1)

end

end A082144.P7371812711125750928

namespace A082144

/-- `A000108(n+1)*A262258(2*n+1)` -/
def P7371812711125750928.Spec : Prop :=
  ∀ n, P7371812711125750928.a n = A082144 n

end A082144

/-! ## A082144.P233573847747314147

`(n+1)*A000108(n+1)*A011782(n)`
-/

namespace A082144.P233573847747314147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 (n + 1) * A011782 n

end

end A082144.P233573847747314147

namespace A082144

/-- `(n+1)*A000108(n+1)*A011782(n)` -/
def P233573847747314147.Spec : Prop :=
  ∀ n, P233573847747314147.a n = A082144 n

end A082144

/-! ## A082144.P8572061982637892730

`A011782(n)*A037952(A103517(n))`
-/

namespace A082144.P8572061982637892730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A037952 (A103517 n).toNat

end

end A082144.P8572061982637892730

namespace A082144

/-- `A011782(n)*A037952(A103517(n))` -/
def P8572061982637892730.Spec : Prop :=
  ∀ n, P8572061982637892730.a n = A082144 n

end A082144

/-! ## A082144.P5137039776072142723

`A011782(n)*A037952(A005843(n+1))`
-/

namespace A082144.P5137039776072142723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A037952 (A005843 (n + 1)).toNat

end

end A082144.P5137039776072142723

namespace A082144

/-- `A011782(n)*A037952(A005843(n+1))` -/
def P5137039776072142723.Spec : Prop :=
  ∀ n, P5137039776072142723.a n = A082144 n

end A082144

/-! ## A082144.P9704396817759194109

`(A011782(n)+A001787(n))*A000108(n+1)`
-/

namespace A082144.P9704396817759194109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 n + A001787 n) * A000108 (n + 1)

end

end A082144.P9704396817759194109

namespace A082144

/-- `(A011782(n)+A001787(n))*A000108(n+1)` -/
def P9704396817759194109.Spec : Prop :=
  ∀ n, P9704396817759194109.a n = A082144 n

end A082144

/-! ## A082144.P13534945658279375826

`A000108(n+1)/A000108(n)*A069723(n+1)`
-/

namespace A082144.P13534945658279375826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A000108 n : ℚ) * (A069723 (n + 1) : ℚ)

end

end A082144.P13534945658279375826

namespace A082144

/-- `A000108(n+1)/A000108(n)*A069723(n+1)` -/
def P13534945658279375826.Spec : Prop :=
  ∀ n, P13534945658279375826.a n = (A082144 n : ℚ)

end A082144

/-! ## A082144.P4295954718867939427

`ceil(A115902(n)/(n+2))`
-/

namespace A082144.P4295954718867939427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A115902 n : ℚ) / (n + 2 : ℚ)⌉

end

end A082144.P4295954718867939427

namespace A082144

/-- `ceil(A115902(n)/(n+2))` -/
def P4295954718867939427.Spec : Prop :=
  ∀ n, P4295954718867939427.a n = A082144 n

end A082144

/-!
# A082145: A subdiagonal of number array A082137.

The programs for A082145, the canonical program `A082145.P2096171870735177110` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082145 has offset 0).

The definition of A082145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082145.P2096171870735177110

`C(2*n+3, n)*A011782(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082145

/-- `C(2*n+3, n)*A011782(n)` -/
def P2096171870735177110.Spec : Prop :=
  ∀ n, P2096171870735177110.a n = A082145 n

theorem P2096171870735177110.correct : P2096171870735177110.Spec := by
  intro n
  simp only [A082145]

end A082145

/-! ## A082145.P13952510969168234553

`ceil(2^(n-1))*A002054(n+1)`
-/

namespace A082145.P13952510969168234553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A002054 (n + 1)

end

end A082145.P13952510969168234553

namespace A082145

/-- `ceil(2^(n-1))*A002054(n+1)` -/
def P13952510969168234553.Spec : Prop :=
  ∀ n, P13952510969168234553.a n = A082145 n

theorem P13952510969168234553.correct : P13952510969168234553.Spec := by
  intro n
  simp only [A082145, Nat.add_sub_cancel, A082145.P13952510969168234553.a, A082145.P2096171870735177110.a, A002054, A002054.P2149703825712078038.a, A011782, A011782.P7461078519819856082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082145

/-! ## A082145.P8940343064605580764

`A002054(n+1)*A011782(n)`
-/

namespace A082145.P8940343064605580764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) * A011782 n

end

end A082145.P8940343064605580764

namespace A082145

/-- `A002054(n+1)*A011782(n)` -/
def P8940343064605580764.Spec : Prop :=
  ∀ n, P8940343064605580764.a n = A082145 n

theorem P8940343064605580764.correct : P8940343064605580764.Spec := by
  intro n
  simp only [A082145, Nat.add_sub_cancel, A082145.P8940343064605580764.a, A082145.P2096171870735177110.a, A002054, A002054.P2149703825712078038.a, A011782, A011782.P7461078519819856082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A082145

/-! ## A082145.P14397167584268704181

`A002054(n+1)*A166444(n+1)`
-/

namespace A082145.P14397167584268704181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002054 (n + 1) * A166444 (n + 1)

end

end A082145.P14397167584268704181

namespace A082145

/-- `A002054(n+1)*A166444(n+1)` -/
def P14397167584268704181.Spec : Prop :=
  ∀ n, P14397167584268704181.a n = A082145 n

end A082145

/-! ## A082145.P9373993045486815252

`A011782(n)*A037951(2*n+3)`
-/

namespace A082145.P9373993045486815252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A037951 (2 * n + 3)

end

end A082145.P9373993045486815252

namespace A082145

/-- `A011782(n)*A037951(2*n+3)` -/
def P9373993045486815252.Spec : Prop :=
  ∀ n, P9373993045486815252.a n = A082145 n

end A082145

/-! ## A082145.P1572910252568960061

`A011782(n)*A037955(A004280(n+3))`
-/

namespace A082145.P1572910252568960061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A037955 (A004280 (n + 3)).toNat

end

end A082145.P1572910252568960061

namespace A082145

/-- `A011782(n)*A037955(A004280(n+3))` -/
def P1572910252568960061.Spec : Prop :=
  ∀ n, P1572910252568960061.a n = A082145 n

end A082145

/-! ## A082145.P702917163207870740

`(A265610(n+1)+A088218(n+1))*A011782(n)`
-/

namespace A082145.P702917163207870740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A265610 (n + 1) + A088218 (n + 1)) * A011782 n

end

end A082145.P702917163207870740

namespace A082145

/-- `(A265610(n+1)+A088218(n+1))*A011782(n)` -/
def P702917163207870740.Spec : Prop :=
  ∀ n, P702917163207870740.a n = A082145 n

end A082145

/-! ## A082145.P9792337023682170443

`A082144(n+1)/A069722(n+2)*A082144(n)`
-/

namespace A082145.P9792337023682170443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082144 (n + 1) : ℚ) / (A069722 (n + 2) : ℚ) * (A082144 n : ℚ)

end

end A082145.P9792337023682170443

namespace A082145

/-- `A082144(n+1)/A069722(n+2)*A082144(n)` -/
def P9792337023682170443.Spec : Prop :=
  ∀ n, P9792337023682170443.a n = (A082145 n : ℚ)

end A082145

/-! ## A082145.P2167761500932803695

`A011782(n)*A111418(eq[3, A094250(n)])`
-/

namespace A082145.P2167761500932803695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A111418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082145.P2167761500932803695

namespace A082145

/-- `A011782(n)*A111418(eq[3, A094250(n)])` -/
def P2167761500932803695.Spec : Prop :=
  ∀ n, P2167761500932803695.a n = A082145 n

end A082145

/-! ## A082145.P3974482940032853426

`A011782(n)*A193635(eq[1, A193632(n+2)])`
-/

namespace A082145.P3974482940032853426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193632 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A193635 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082145.P3974482940032853426

namespace A082145

/-- `A011782(n)*A193635(eq[1, A193632(n+2)])` -/
def P3974482940032853426.Spec : Prop :=
  ∀ n, P3974482940032853426.a n = A082145 n

end A082145

/-!
# A082146: Expansion of g.f.: (1+x^5)/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^6)).

The programs for A082146, the canonical program `A082146.P17599279144877486662` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082146 has offset 0).

The definition of A082146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^5)/(1-x^2-x^3-x^4+x^5+x^7+x^8+x^10-x^11-x^12-x^13+x^15))` (program `A082146.P17599279144877486662`, by `A082146.P17599279144877486662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082146.P2137872650715537425

`ogf((1-x+x^2-x^3+x^4)/(1-x-x^3+x^5-x^6+2x^7-x^8+x^9-x^11-x^13+x^14))`
-/

namespace A082146.P2137872650715537425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, -1, 1] [1, -1, 0, -1, 0, 1, -1, 2, -1, 1, 0, -1, 0, -1, 1] n

end

end A082146.P2137872650715537425

namespace A082146

/-- `ogf((1-x+x^2-x^3+x^4)/(1-x-x^3+x^5-x^6+2x^7-x^8+x^9-x^11-x^13+x^14))` -/
def P2137872650715537425.Spec : Prop :=
  ∀ n, P2137872650715537425.a n = A082146 n

end A082146

/-! ## A082146.P17599279144877486662

`ogf((1+x^5)/(1-x^2-x^3-x^4+x^5+x^7+x^8+x^10-x^11-x^12-x^13+x^15))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082146

/-- `ogf((1+x^5)/(1-x^2-x^3-x^4+x^5+x^7+x^8+x^10-x^11-x^12-x^13+x^15))` -/
def P17599279144877486662.Spec : Prop :=
  ∀ n, P17599279144877486662.a n = A082146 n

theorem P17599279144877486662.correct : P17599279144877486662.Spec := by
  intro n
  simp only [A082146]

end A082146

/-! ## A082146.P295525890987733699

`A029143(n)+Δ[A026811(n)]`
-/

namespace A082146.P295525890987733699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 n + (f1 (n + 1) - f1 n)

end

end A082146.P295525890987733699

namespace A082146

/-- `A029143(n)+Δ[A026811(n)]` -/
def P295525890987733699.Spec : Prop :=
  ∀ n, P295525890987733699.a n = A082146 n

end A082146

/-! ## A082146.P14965789870019576079

`A008670(n)-A161680(A026806(n+1))`
-/

namespace A082146.P14965789870019576079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n - A161680 (A026806 (n + 1)).toNat

end

end A082146.P14965789870019576079

namespace A082146

/-- `A008670(n)-A161680(A026806(n+1))` -/
def P14965789870019576079.Spec : Prop :=
  ∀ n, P14965789870019576079.a n = A082146 n

end A082146

/-! ## A082146.P10703368038877929453

`A001400(n)-∑[A000217(A008615(n+1))]`
-/

namespace A082146.P10703368038877929453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082146.P10703368038877929453

namespace A082146

/-- `A001400(n)-∑[A000217(A008615(n+1))]` -/
def P10703368038877929453.Spec : Prop :=
  ∀ n, P10703368038877929453.a n = A082146 n

end A082146

/-! ## A082146.P11310800772008744632

`A001400(n)-∑[A161680(A026806(n+1))]`
-/

namespace A082146.P11310800772008744632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A026806 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082146.P11310800772008744632

namespace A082146

/-- `A001400(n)-∑[A161680(A026806(n+1))]` -/
def P11310800772008744632.Spec : Prop :=
  ∀ n, P11310800772008744632.a n = A082146 n

end A082146

/-! ## A082146.P10914640253904144315

`Δ[∑[A008670(n)]-A001400(n)]`
-/

namespace A082146.P10914640253904144315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082146.P10914640253904144315

namespace A082146

/-- `Δ[∑[A008670(n)]-A001400(n)]` -/
def P10914640253904144315.Spec : Prop :=
  ∀ n, P10914640253904144315.a n = A082146 n

end A082146

/-! ## A082146.P18218360631944165244

`A008670(n+1)-Δ[A001400(n)]`
-/

namespace A082146.P18218360631944165244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 (n + 1) - (f1 (n + 1) - f1 n)

end

end A082146.P18218360631944165244

namespace A082146

/-- `A008670(n+1)-Δ[A001400(n)]` -/
def P18218360631944165244.Spec : Prop :=
  ∀ n, P18218360631944165244.a n = A082146 n

end A082146

/-!
# A082147: a(0)=1; for n >= 1, a(n) = Sum_{k=0..n} 8^k*N(n,k) where N(n,k) = (1/n)*C(n,k)*C(n,k+1) are the Narayana numbers (A001263).

The programs for A082147, the canonical program `A082147.P9039369218405614679` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082147 has offset 0).

The definition of A082147 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082147.P9039369218405614679

`(9*(2*n-1)*a(n-1)-49*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082147

/-- `(9*(2*n-1)*a(n-1)-49*(n-2)*a(n-2))/(n+1)` -/
def P9039369218405614679.Spec : Prop :=
  ∀ n, P9039369218405614679.a n = (A082147 n : ℚ)

end A082147

/-! ## A082147.P11511124224134239436

`∑{#}[n, A088617(C(n+1, 2)+#)*8^#*(-7)^(n-#)]`
-/

namespace A082147.P11511124224134239436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A088617 (Nat.choose (n + 1) 2 + k) * (8 ^ k : ℤ) : ℚ) * (-7 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A082147.P11511124224134239436

namespace A082147

/-- `∑{#}[n, A088617(C(n+1, 2)+#)*8^#*(-7)^(n-#)]` -/
def P11511124224134239436.Spec : Prop :=
  ∀ n, P11511124224134239436.a n = (A082147 n : ℚ)

end A082147

/-! ## A082147.P5328481622833281920

`ceil(A082366(n)/8)`
-/

namespace A082147.P5328481622833281920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082366 n : ℚ) / 8⌉

end

end A082147.P5328481622833281920

namespace A082147

/-- `ceil(A082366(n)/8)` -/
def P5328481622833281920.Spec : Prop :=
  ∀ n, P5328481622833281920.a n = A082147 n

end A082147

/-! ## A082147.P4848619071629422172

`A082366(n^(val(a(n-1), 2)+1))/8` with `a(0)=1`
-/

namespace A082147.P4848619071629422172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A082366 (n ^ (SequenceMachineLib.valuation (SequenceMachineLib.roundAway (a (n - 1))).toNat 2 + 1)) : ℚ) / 8

end

end A082147.P4848619071629422172

namespace A082147

/-- `A082366(n^(val(a(n-1), 2)+1))/8` -/
def P4848619071629422172.Spec : Prop :=
  ∀ n, P4848619071629422172.a n = (A082147 n : ℚ)

end A082147

/-! ## A082147.P17395928819381977705

`A008550(A000096(n+7)+9)`
-/

namespace A082147.P17395928819381977705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000096 (n + 7) + 9).toNat

end

end A082147.P17395928819381977705

namespace A082147

/-- `A008550(A000096(n+7)+9)` -/
def P17395928819381977705.Spec : Prop :=
  ∀ n, P17395928819381977705.a n = A082147 n

end A082147

/-! ## A082147.P18164220845637508085

`A008550(A000217(n+8)+8)`
-/

namespace A082147.P18164220845637508085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000217 (n + 8) + 8).toNat

end

end A082147.P18164220845637508085

namespace A082147

/-- `A008550(A000217(n+8)+8)` -/
def P18164220845637508085.Spec : Prop :=
  ∀ n, P18164220845637508085.a n = A082147 n

end A082147

/-! ## A082147.P1165447314318925038

`A008550(A271114(n+7)+A034856(n+1))`
-/

namespace A082147.P1165447314318925038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A271114 (n + 7) + A034856 (n + 1)).toNat

end

end A082147.P1165447314318925038

namespace A082147

/-- `A008550(A271114(n+7)+A034856(n+1))` -/
def P1165447314318925038.Spec : Prop :=
  ∀ n, P1165447314318925038.a n = A082147 n

end A082147

/-! ## A082147.P9590828197536468303

`A243631(A055999(n+6)-3)`
-/

namespace A082147.P9590828197536468303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A055999 (n + 6) - 3).toNat

end

end A082147.P9590828197536468303

namespace A082147

/-- `A243631(A055999(n+6)-3)` -/
def P9590828197536468303.Spec : Prop :=
  ∀ n, P9590828197536468303.a n = A082147 n

end A082147

/-! ## A082147.P15489928263404575937

`A243631(A253145(n+8)-9)`
-/

namespace A082147.P15489928263404575937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A253145 (n + 8) - 9).toNat

end

end A082147.P15489928263404575937

namespace A082147

/-- `A243631(A253145(n+8)-9)` -/
def P15489928263404575937.Spec : Prop :=
  ∀ n, P15489928263404575937.a n = A082147 n

end A082147

/-! ## A082147.P9348049593259454262

`A243631(A016825(2*(n+4))+A000124(n+1))`
-/

namespace A082147.P9348049593259454262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A016825 (2 * (n + 4)) + A000124 (n + 1)).toNat

end

end A082147.P9348049593259454262

namespace A082147

/-- `A243631(A016825(2*(n+4))+A000124(n+1))` -/
def P9348049593259454262.Spec : Prop :=
  ∀ n, P9348049593259454262.a n = A082147 n

end A082147

/-!
# A082148: a(0)=1; for n >= 1, a(n) = Sum_{k=0..n} 10^k*N(n,k), where N(n,k) = (1/n)*C(n,k)*C(n,k+1) are the Narayana numbers (A001263).

The programs for A082148, the canonical program `A082148.P14081661011851475488` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082148 has offset 0).

The definition of A082148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082148.P14081661011851475488

`(11*(2*n-1)*a(n-1)-81*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082148

/-- `(11*(2*n-1)*a(n-1)-81*(n-2)*a(n-2))/(n+1)` -/
def P14081661011851475488.Spec : Prop :=
  ∀ n, P14081661011851475488.a n = (A082148 n : ℚ)

end A082148

/-! ## A082148.P13005812718868470739

`∑{#}[n, A088617(C(n+1, 2)+#)*10^#*(-9)^(n-#)]`
-/

namespace A082148.P13005812718868470739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A088617 (Nat.choose (n + 1) 2 + k) * (10 ^ k : ℤ) : ℚ) * (-9 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A082148.P13005812718868470739

namespace A082148

/-- `∑{#}[n, A088617(C(n+1, 2)+#)*10^#*(-9)^(n-#)]` -/
def P13005812718868470739.Spec : Prop :=
  ∀ n, P13005812718868470739.a n = (A082148 n : ℚ)

end A082148

/-! ## A082148.P13315832268847451412

`A143749(A254667(1+n))/10`
-/

namespace A082148.P13315832268847451412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143749 (A254667 (1 + n)).toNat : ℚ) / 10

end

end A082148.P13315832268847451412

namespace A082148

/-- `A143749(A254667(1+n))/10` -/
def P13315832268847451412.Spec : Prop :=
  ∀ n, P13315832268847451412.a n = (A082148 n : ℚ)

end A082148

/-! ## A082148.P16174478253312333201

`A204057(A056000(6+n))`
-/

namespace A082148.P16174478253312333201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (A056000 (6 + n)).toNat

end

end A082148.P16174478253312333201

namespace A082148

/-- `A204057(A056000(6+n))` -/
def P16174478253312333201.Spec : Prop :=
  ∀ n, P16174478253312333201.a n = A082148 n

end A082148

/-! ## A082148.P3177283277175657534

`A204057(A000217(n+10)-10)`
-/

namespace A082148.P3177283277175657534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (A000217 (n + 10) - 10).toNat

end

end A082148.P3177283277175657534

namespace A082148

/-- `A204057(A000217(n+10)-10)` -/
def P3177283277175657534.Spec : Prop :=
  ∀ n, P3177283277175657534.a n = A082148 n

end A082148

/-! ## A082148.P2036013770385041413

`A243631(A253145(n+10)-11)`
-/

namespace A082148.P2036013770385041413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A253145 (n + 10) - 11).toNat

end

end A082148.P2036013770385041413

namespace A082148

/-- `A243631(A253145(n+10)-11)` -/
def P2036013770385041413.Spec : Prop :=
  ∀ n, P2036013770385041413.a n = A082148 n

end A082148

/-! ## A082148.P3006979514281625875

`A243631(A000124(n+11)-12)`
-/

namespace A082148.P3006979514281625875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A000124 (n + 11) - 12).toNat

end

end A082148.P3006979514281625875

namespace A082148

/-- `A243631(A000124(n+11)-12)` -/
def P3006979514281625875.Spec : Prop :=
  ∀ n, P3006979514281625875.a n = A082148 n

end A082148

/-! ## A082148.P15328135584613037804

`A243631(A179865(n+12)-11)`
-/

namespace A082148.P15328135584613037804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A179865 (n + 12) - 11).toNat

end

end A082148.P15328135584613037804

namespace A082148

/-- `A243631(A179865(n+12)-11)` -/
def P15328135584613037804.Spec : Prop :=
  ∀ n, P15328135584613037804.a n = A082148 n

end A082148

/-! ## A082148.P12811322604657390296

`A243631(A167499(n+6)+A016825(n+5))`
-/

namespace A082148.P12811322604657390296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A167499 (n + 6) + A016825 (n + 5)).toNat

end

end A082148.P12811322604657390296

namespace A082148

/-- `A243631(A167499(n+6)+A016825(n+5))` -/
def P12811322604657390296.Spec : Prop :=
  ∀ n, P12811322604657390296.a n = A082148 n

end A082148

/-! ## A082148.P10216844348473283553

`A243631(A016825(n+6)+A000124(n+7))`
-/

namespace A082148.P10216844348473283553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A016825 (n + 6) + A000124 (n + 7)).toNat

end

end A082148.P10216844348473283553

namespace A082148

/-- `A243631(A016825(n+6)+A000124(n+7))` -/
def P10216844348473283553.Spec : Prop :=
  ∀ n, P10216844348473283553.a n = A082148 n

end A082148

/-!
# A082149: A transform of C(n,2).

The programs for A082149, the canonical program `A082149.P11484573972770276347` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082149 has offset 0).

The definition of A082149 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082149.P11484573972770276347

`C(n, 2)*(1+3^(n-2))/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082149

/-- `C(n, 2)*(1+3^(n-2))/2` -/
def P11484573972770276347.Spec : Prop :=
  ∀ n, P11484573972770276347.a n = (A082149 n : ℚ)

end A082149

/-! ## A082149.P189611349789594466

`(n-1)/2*A229472(n+1)`
-/

namespace A082149.P189611349789594466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 * (A229472 (n + 1) : ℚ)

end

end A082149.P189611349789594466

namespace A082149

/-- `(n-1)/2*A229472(n+1)` -/
def P189611349789594466.Spec : Prop :=
  ∀ n, P189611349789594466.a n = (A082149 n : ℚ)

end A082149

/-! ## A082149.P9874836904137581287

`(n-1)/(n+1)*A229665(n+2)`
-/

namespace A082149.P9874836904137581287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / (n + 1 : ℚ) * (A229665 (n + 2) : ℚ)

end

end A082149.P9874836904137581287

namespace A082149

/-- `(n-1)/(n+1)*A229665(n+2)` -/
def P9874836904137581287.Spec : Prop :=
  ∀ n, P9874836904137581287.a n = (A082149 n : ℚ)

end A082149

/-! ## A082149.P8291203276877245640

`A007051(A289207(n))*A161680(n)`
-/

namespace A082149.P8291203276877245640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A289207 n).toNat * A161680 n

end

end A082149.P8291203276877245640

namespace A082149

/-- `A007051(A289207(n))*A161680(n)` -/
def P8291203276877245640.Spec : Prop :=
  ∀ n, P8291203276877245640.a n = A082149 n

end A082149

/-! ## A082149.P17578163606632754363

`∑{#}[n, (-1)^(n-#)*C(n, #)*A082150(#)]`
-/

namespace A082149.P17578163606632754363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A082150 k : ℚ)

end

end A082149.P17578163606632754363

namespace A082149

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A082150(#)]` -/
def P17578163606632754363.Spec : Prop :=
  ∀ n, P17578163606632754363.a n = (A082149 n : ℚ)

end A082149

/-! ## A082149.P50430189529962662

`A080934(A052905(n+1))*A161680(n)`
-/

namespace A082149.P50430189529962662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (A052905 (n + 1)).toNat * A161680 n

end

end A082149.P50430189529962662

namespace A082149

/-- `A080934(A052905(n+1))*A161680(n)` -/
def P50430189529962662.Spec : Prop :=
  ∀ n, P50430189529962662.a n = A082149 n

end A082149

/-! ## A082149.P10135887538946082468

`A322620(A133263(n))%A084136(n)`
-/

namespace A082149.P10135887538946082468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322620 (A133263 n).toNat) (A084136 n)

end

end A082149.P10135887538946082468

namespace A082149

/-- `A322620(A133263(n))%A084136(n)` -/
def P10135887538946082468.Spec : Prop :=
  ∀ n, P10135887538946082468.a n = A082149 n

end A082149

/-! ## A082149.P4045777297100553415

`lcm(A004526(n), A322620(A133263(n)))`
-/

namespace A082149.P4045777297100553415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004526 n) (A322620 (A133263 n).toNat)

end

end A082149.P4045777297100553415

namespace A082149

/-- `lcm(A004526(n), A322620(A133263(n)))` -/
def P4045777297100553415.Spec : Prop :=
  ∀ n, (P4045777297100553415.a n : ℤ) = A082149 n

end A082149

/-!
# A082150: A transform of C(n,2).

The programs for A082150, the canonical program `A082150.P3962546839464528427` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082150 has offset 0).

The definition of A082150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082150.P3962546839464528427

`C(n, 2)*(2^(n-2)+4^(n-2))/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082150

/-- `C(n, 2)*(2^(n-2)+4^(n-2))/2` -/
def P3962546839464528427.Spec : Prop :=
  ∀ n, P3962546839464528427.a n = (A082150 n : ℚ)

end A082150

/-! ## A082150.P13546055240589071107

`2^(n-4)*(2^(n-2)+1)*(n-1)*n`
-/

namespace A082150.P13546055240589071107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 1) * ((n : ℤ) - 1 : ℚ) * (n : ℚ)

end

end A082150.P13546055240589071107

namespace A082150

/-- `2^(n-4)*(2^(n-2)+1)*(n-1)*n` -/
def P13546055240589071107.Spec : Prop :=
  ∀ n, P13546055240589071107.a n = (A082150 n : ℚ)

end A082150

/-! ## A082150.P16634355914385997936

`∑{#}[n, C(n, #)*A082149(#)]`
-/

namespace A082150.P16634355914385997936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A082149 k

end

end A082150.P16634355914385997936

namespace A082150

/-- `∑{#}[n, C(n, #)*A082149(#)]` -/
def P16634355914385997936.Spec : Prop :=
  ∀ n, P16634355914385997936.a n = A082150 n

end A082150

/-! ## A082150.P2678437811252605848

`n*A082134(abs(1-n))/2`
-/

namespace A082150.P2678437811252605848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A082134 |1 - (n : ℤ)|.toNat : ℚ) / 2

end

end A082150.P2678437811252605848

namespace A082150

/-- `n*A082134(abs(1-n))/2` -/
def P2678437811252605848.Spec : Prop :=
  ∀ n, P2678437811252605848.a n = (A082150 n : ℚ)

end A082150

/-! ## A082150.P18177435101239679075

`(A052780(n)+A001815(n))/4`
-/

namespace A082150.P18177435101239679075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052780 n + A001815 n : ℚ) / 4

end

end A082150.P18177435101239679075

namespace A082150

/-- `(A052780(n)+A001815(n))/4` -/
def P18177435101239679075.Spec : Prop :=
  ∀ n, P18177435101239679075.a n = (A082150 n : ℚ)

end A082150

/-! ## A082150.P1788854317131093799

`∑{#}[n, (-1)^(n-#)*C(n, #)*A082151(#)]`
-/

namespace A082150.P1788854317131093799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A082151 k : ℚ)

end

end A082150.P1788854317131093799

namespace A082150

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A082151(#)]` -/
def P1788854317131093799.Spec : Prop :=
  ∀ n, P1788854317131093799.a n = (A082150 n : ℚ)

end A082150

/-!
# A082151: A transform of C(n,2).

The programs for A082151, the canonical program `A082151.P10036763664535425951` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082151 has offset 0).

The definition of A082151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082151.P10036763664535425951

`C(n, 2)*(3^(n-2)+5^(n-2))/2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A082151

/-- `C(n, 2)*(3^(n-2)+5^(n-2))/2` -/
def P10036763664535425951.Spec : Prop :=
  ∀ n, P10036763664535425951.a n = (A082151 n : ℚ)

end A082151

/-! ## A082151.P15625840044964224305

`∑{#}[n, C(n, #)*A082150(#)]`
-/

namespace A082151.P15625840044964224305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A082150 k

end

end A082151.P15625840044964224305

namespace A082151

/-- `∑{#}[n, C(n, #)*A082150(#)]` -/
def P15625840044964224305.Spec : Prop :=
  ∀ n, P15625840044964224305.a n = A082151 n

end A082151

/-! ## A082151.P1857226842550691896

`A081186(A289207(n))*A161680(n)`
-/

namespace A082151.P1857226842550691896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 (A289207 n).toNat * A161680 n

end

end A082151.P1857226842550691896

namespace A082151

/-- `A081186(A289207(n))*A161680(n)` -/
def P1857226842550691896.Spec : Prop :=
  ∀ n, P1857226842550691896.a n = A082151 n

end A082151

/-!
# A082152: Dispersion of the complement of the pentagonal numbers.

The programs for A082152, there is no canonical definition to state claims against.
-/

/-! ## A082152.P29576440140003454

`A082153(∑[char[∑[n]]]²-n)`
-/

namespace A082152.P29576440140003454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082153 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A082152.P29576440140003454

/-! ## A082152.P1917601500437507196

`and(-1, A082153(A038722(n+1)))`
-/

namespace A082152.P1917601500437507196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082153 (A038722 (n + 1)).toNat)

end

end A082152.P1917601500437507196

/-! ## A082152.P9965747837474829379

`A082153(A038722(n+1))%A001513(n)`
-/

namespace A082152.P9965747837474829379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082153 (A038722 (n + 1)).toNat) (A001513 n)

end

end A082152.P9965747837474829379

/-! ## A082152.P4390219082216924433

`gcd(A000038(n), A082153(A038722(n+1)))`
-/

namespace A082152.P4390219082216924433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A082153 (A038722 (n + 1)).toNat)

end

end A082152.P4390219082216924433

/-! ## A082152.P4434108591457637639

`or(A000007(n), A082153(A038722(n+1)))`
-/

namespace A082152.P4434108591457637639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A082153 (A038722 (n + 1)).toNat)

end

end A082152.P4434108591457637639

/-! ## A082152.P5000744628121420830

`lcm(Δ[A010751(n)], A082153(A038722(n+1)))`
-/

namespace A082152.P5000744628121420830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A082153 (A038722 (n + 1)).toNat)

end

end A082152.P5000744628121420830

/-! ## A082152.P3320926119933373240

`A057427(n+1)*A082153(A038722(n+1))`
-/

namespace A082152.P3320926119933373240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A082153 (A038722 (n + 1)).toNat

end

end A082152.P3320926119933373240

/-! ## A082152.P15506443282796293135

`A000040(n+2)%2*A082153(A038722(n+1))`
-/

namespace A082152.P15506443282796293135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A082153 (A038722 (n + 1)).toNat

end

end A082152.P15506443282796293135

/-! ## A082152.P6261259528404920289

`A082153(A038722(n+1))^(A000040(n+8)%2)`
-/

namespace A082152.P6261259528404920289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082153 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 8)) 2 : ℤ)

end

end A082152.P6261259528404920289

/-! ## A082152.P5723293931172976612

`A082153(A038722(n+1))+n*A000045(C(2, n+2))`
-/

namespace A082152.P5723293931172976612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082153 (A038722 (n + 1)).toNat + (n : ℤ) * A000045 (Nat.choose 2 (n + 2))

end

end A082152.P5723293931172976612

/-!
# A082153: Dispersion of the complement of row 1 of A082152.

The programs for A082153, there is no canonical definition to state claims against.
-/

/-! ## A082153.P5862282442802982212

`A082152(∑[char[∑[n]]]²-n)`
-/

namespace A082153.P5862282442802982212
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082152 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A082153.P5862282442802982212

/-! ## A082153.P1668009821575008619

`and(-1, A082152(A038722(1+n)))`
-/

namespace A082153.P1668009821575008619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082152 (A038722 (1 + n)).toNat)

end

end A082153.P1668009821575008619

/-! ## A082153.P3518505490827800794

`A082152(A038722(n+1))%A001513(n)`
-/

namespace A082153.P3518505490827800794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082152 (A038722 (n + 1)).toNat) (A001513 n)

end

end A082153.P3518505490827800794

/-! ## A082153.P15233214063561851929

`A082152(A061579(n)+1)%A096958(n)`
-/

namespace A082153.P15233214063561851929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082152 (A061579 n + 1).toNat) (A096958 n)

end

end A082153.P15233214063561851929

/-! ## A082153.P7557999680003043794

`gcd(A000038(n), A082152(A038722(n+1)))`
-/

namespace A082153.P7557999680003043794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A082152 (A038722 (n + 1)).toNat)

end

end A082153.P7557999680003043794

/-! ## A082153.P3985909727870350498

`A082152(A038722(n+1))+val(A000040(n+3), 2)`
-/

namespace A082153.P3985909727870350498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082152 (A038722 (n + 1)).toNat + (SequenceMachineLib.valuation (A000040 (n + 3)).toNat 2 : ℤ)

end

end A082153.P3985909727870350498

/-! ## A082153.P7693884725676408144

`A020639(2*(n+1))+A082152(A038722(n+1))-2`
-/

namespace A082153.P7693884725676408144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A082152 (A038722 (n + 1)).toNat - 2)

end

end A082153.P7693884725676408144

/-! ## A082153.P3566984595096271708

`A000005(gcd(n, n+1))%2*A082152(A038722(n+1))`
-/

namespace A082153.P3566984595096271708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (Nat.gcd n (n + 1))) 2 * A082152 (A038722 (n + 1)).toNat

end

end A082153.P3566984595096271708

/-! ## A082153.P6750385506313371757

`A082152(A038722(n+1))*A106597(∑[n])`
-/

namespace A082153.P6750385506313371757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082152 (A038722 (n + 1)).toNat * A106597 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082153.P6750385506313371757

/-!
# A082154: Dispersion of the complement of the hexagonal numbers.

The programs for A082154, there is no canonical definition to state claims against.
-/

/-! ## A082154.P12924415793097082619

`A082155(∑[char[∑[n]]]²-n)`
-/

namespace A082154.P12924415793097082619
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082155 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A082154.P12924415793097082619

/-! ## A082154.P493907861478130725

`xor(1, xor(1, A082155(A038722(n+1))))`
-/

namespace A082154.P493907861478130725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A082155 (A038722 (n + 1)).toNat))

end

end A082154.P493907861478130725

/-! ## A082154.P17637082821900478572

`Δ[A082155(A038722(n))+a(n-1)]` with `a(0)=0`
-/

namespace A082154.P17637082821900478572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A082155 (A038722 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082154.P17637082821900478572

/-! ## A082154.P6496036962430030247

`lcm(A033999(n), A082155(A038722(n+1)))`
-/

namespace A082154.P6496036962430030247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A082155 (A038722 (n + 1)).toNat)

end

end A082154.P6496036962430030247

/-! ## A082154.P17231823006262540902

`A007318(C(2, n))*A082155(A038722(n+1))`
-/

namespace A082154.P17231823006262540902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A082155 (A038722 (n + 1)).toNat

end

end A082154.P17231823006262540902

/-! ## A082154.P13750776160778934690

`A082155(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A082154.P13750776160778934690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082155 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A082154.P13750776160778934690

/-!
# A082155: Dispersion of the complement of row 1 of A082154.

The programs for A082155, there is no canonical definition to state claims against.
-/

/-! ## A082155.P1464058876405511403

`A082154(∑[char[∑[n]]]²-n)`
-/

namespace A082155.P1464058876405511403
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082154 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A082155.P1464058876405511403

/-! ## A082155.P3168499036347893887

`lcm(A033999(n), A082154(A038722(n+1)))`
-/

namespace A082155.P3168499036347893887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A082154 (A038722 (n + 1)).toNat)

end

end A082155.P3168499036347893887

/-! ## A082155.P9307142134827998809

`or(A000007(n), A082154(A038722(n+1)))`
-/

namespace A082155.P9307142134827998809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A082154 (A038722 (n + 1)).toNat)

end

end A082155.P9307142134827998809

/-! ## A082155.P4792278483903891476

`A007318(C(2, n))*A082154(A038722(n+1))`
-/

namespace A082155.P4792278483903891476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A082154 (A038722 (n + 1)).toNat

end

end A082155.P4792278483903891476

/-! ## A082155.P554150944746654597

`A082154(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A082155.P554150944746654597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082154 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A082155.P554150944746654597

/-! ## A082155.P11857988229902827913

`A000040(2*(n+1))%2*A082154(A038722(n+1))`
-/

namespace A082155.P11857988229902827913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * (n + 1))) 2 * A082154 (A038722 (n + 1)).toNat

end

end A082155.P11857988229902827913

/-! ## A082155.P1194881987901881310

`A082154(A038722(n+1))%A014364(n)`
-/

namespace A082155.P1194881987901881310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082154 (A038722 (n + 1)).toNat) (A014364 n)

end

end A082155.P1194881987901881310

/-!
# A082156: Dispersion of the complement of row 1 of A056536.

The programs for A082156, the canonical program `A082156.P1891690113207071663` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082156 has offset 1).

The definition of A082156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082156.P1891690113207071663

`A004736(n+1)+A002620(A128076(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A082156

/-- `A004736(n+1)+A002620(A128076(n+1))` -/
def P1891690113207071663.Spec : Prop :=
  ∀ n, P1891690113207071663.a n = A082156 (n + 1)

theorem P1891690113207071663.correct : P1891690113207071663.Spec := by
  intro n
  simp only [A082156, Nat.add_sub_cancel]

end A082156

/-! ## A082156.P2795594003846769058

`A056537(∑[char[∑[n]]]²-n)`
-/

namespace A082156.P2795594003846769058
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056537 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A082156.P2795594003846769058

namespace A082156

/-- `A056537(∑[char[∑[n]]]²-n)` -/
def P2795594003846769058.Spec : Prop :=
  ∀ n, P2795594003846769058.a n = A082156 (n + 1)

end A082156

/-! ## A082156.P14369005087642750453

`and(-1, A056537(A038722(n+1)))`
-/

namespace A082156.P14369005087642750453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A056537 (A038722 (n + 1)).toNat)

end

end A082156.P14369005087642750453

namespace A082156

/-- `and(-1, A056537(A038722(n+1)))` -/
def P14369005087642750453.Spec : Prop :=
  ∀ n, P14369005087642750453.a n = A082156 (n + 1)

end A082156

/-! ## A082156.P12179400817917238975

`A056537(A002024(n+1)²-n)%(∑[n+3]+1)`
-/

namespace A082156.P12179400817917238975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056537 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A082156.P12179400817917238975

namespace A082156

/-- `A056537(A002024(n+1)²-n)%(∑[n+3]+1)` -/
def P12179400817917238975.Spec : Prop :=
  ∀ n, P12179400817917238975.a n = A082156 (n + 1)

end A082156

/-! ## A082156.P1075257358343724290

`gcd(A000038(n), A056537(A038722(n+1)))`
-/

namespace A082156.P1075257358343724290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A056537 (A038722 (n + 1)).toNat)

end

end A082156.P1075257358343724290

namespace A082156

/-- `gcd(A000038(n), A056537(A038722(n+1)))` -/
def P1075257358343724290.Spec : Prop :=
  ∀ n, (P1075257358343724290.a n : ℤ) = A082156 (n + 1)

end A082156

/-! ## A082156.P11906502795638669598

`lcm(A033999(n), A056537(A038722(n+1)))`
-/

namespace A082156.P11906502795638669598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A056537 (A038722 (n + 1)).toNat)

end

end A082156.P11906502795638669598

namespace A082156

/-- `lcm(A033999(n), A056537(A038722(n+1)))` -/
def P11906502795638669598.Spec : Prop :=
  ∀ n, (P11906502795638669598.a n : ℤ) = A082156 (n + 1)

end A082156

/-! ## A082156.P723272308584902404

`A056537(A038722(n+1))+A000007(n+1)`
-/

namespace A082156.P723272308584902404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056537 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A082156.P723272308584902404

namespace A082156

/-- `A056537(A038722(n+1))+A000007(n+1)` -/
def P723272308584902404.Spec : Prop :=
  ∀ n, P723272308584902404.a n = A082156 (n + 1)

end A082156

/-! ## A082156.P17922343580394920891

`A056537(A061579(n)+1)%(2*A000040(n+1))`
-/

namespace A082156.P17922343580394920891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056537 (A061579 n + 1).toNat) (2 * A000040 (n + 1))

end

end A082156.P17922343580394920891

namespace A082156

/-- `A056537(A061579(n)+1)%(2*A000040(n+1))` -/
def P17922343580394920891.Spec : Prop :=
  ∀ n, P17922343580394920891.a n = A082156 (n + 1)

end A082156

/-! ## A082156.P7408240455444567071

`A056537(A038722(n+1))%A000954(n)`
-/

namespace A082156.P7408240455444567071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056537 (A038722 (n + 1)).toNat) (A000954 n)

end

end A082156.P7408240455444567071

namespace A082156

/-- `A056537(A038722(n+1))%A000954(n)` -/
def P7408240455444567071.Spec : Prop :=
  ∀ n, P7408240455444567071.a n = A082156 (n + 1)

end A082156

/-!
# A082157: Number of deterministic completely defined acyclic automata with 2 inputs and n transient labeled states (and a unique absorbing state).

The programs for A082157, there is no canonical definition to state claims against.
-/

/-! ## A082157.P4371134530935060727

`A082169(∑[n]+n)`
-/

namespace A082157.P4371134530935060727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082169 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A082157.P4371134530935060727

/-! ## A082157.P15780515822310812252

`and(-1, A082169(A000096(n)))`
-/

namespace A082157.P15780515822310812252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082169 (A000096 n).toNat)

end

end A082157.P15780515822310812252

/-! ## A082157.P14036333947015338376

`A082169(A000096(n))*A262681(n)`
-/

namespace A082157.P14036333947015338376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082169 (A000096 n).toNat * A262681 n

end

end A082157.P14036333947015338376

/-! ## A082157.P17482836623621932384

`A195736(n+1)/(n+1)`
-/

namespace A082157.P17482836623621932384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195736 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A082157.P17482836623621932384

/-! ## A082157.P16573436804362524618

`gcd(A082169(A000096(n)), A195736(n+1))`
-/

namespace A082157.P16573436804362524618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082169 (A000096 n).toNat) (A195736 (n + 1))

end

end A082157.P16573436804362524618

/-!
# A082158: Number of deterministic completely defined acyclic automata with 3 inputs and n transient labeled states (and a unique absorbing state).

The programs for A082158, there is no canonical definition to state claims against.
-/

/-! ## A082158.P15935073592800716270

`A082170(∑[n]+n)`
-/

namespace A082158.P15935073592800716270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082170 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A082158.P15935073592800716270

/-! ## A082158.P9519118577388229422

`A103241(∑[n]+1)`
-/

namespace A082158.P9519118577388229422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103241 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082158.P9519118577388229422

/-! ## A082158.P13576239574075378209

`∑{digits}[n, A103241(A000124(#))]`
-/

namespace A082158.P13576239574075378209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A103241 (A000124 x).toNat).sum

end

end A082158.P13576239574075378209

/-! ## A082158.P8047532105162934176

`and(-1, A103241(A000124(n)))`
-/

namespace A082158.P8047532105162934176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A103241 (A000124 n).toNat)

end

end A082158.P8047532105162934176

/-!
# A082159: Number of deterministic completely defined acyclic automata with 2 inputs and n+1 transient labeled states including a unique state having all transitions to the absorbing state.

The programs for A082159, there is no canonical definition to state claims against.
-/

/-! ## A082159.P8292933613509923713

`A082171(∑[n]+n)`
-/

namespace A082159.P8292933613509923713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082171 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A082159.P8292933613509923713

/-! ## A082159.P13431226158165584902

`record[A082171(∑[2*n]%comp[∑[n]])]`
-/

namespace A082159.P13431226158165584902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082171 ((∑ j ∈ Finset.range (n + 1), f2 j) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082159.P13431226158165584902

/-! ## A082159.P5858360692313142173

`record[A082171(A056943(n))]`
-/

namespace A082159.P5858360692313142173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082171 (A056943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082159.P5858360692313142173

/-! ## A082159.P17582603858711828937

`A103242(∑[n]+1)`
-/

namespace A082159.P17582603858711828937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103242 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082159.P17582603858711828937

/-! ## A082159.P10024343807049358207

`record[A103242(n+1)]`
-/

namespace A082159.P10024343807049358207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082159.P10024343807049358207

/-!
# A082160: Deterministic completely defined acyclic automata with 3 inputs and n+1 transient labeled states including a unique state having all transitions to the absorbing state.

The programs for A082160, there is no canonical definition to state claims against.
-/

/-! ## A082160.P6371649944825085933

`A082172(∑[n]+n)`
-/

namespace A082160.P6371649944825085933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082172 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A082160.P6371649944825085933

/-! ## A082160.P13449859745986896370

`record[ratio[1/A082172(n)]]`
-/

namespace A082160.P13449859745986896370
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A082172 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082160.P13449859745986896370

/-! ## A082160.P5337278612138773706

`record[A082172(A061579(n))]`
-/

namespace A082160.P5337278612138773706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082172 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082160.P5337278612138773706

/-! ## A082160.P17115161590374021813

`record[A082172(n)/A156539(n+1)]`
-/

namespace A082160.P17115161590374021813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082172 n : ℚ) / (A156539 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082160.P17115161590374021813

/-! ## A082160.P15897877009472722868

`record[A082172(n)/A221290(n+1)]`
-/

namespace A082160.P15897877009472722868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082172 n : ℚ) / (A221290 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082160.P15897877009472722868

/-!
# A082161: Number of deterministic completely defined initially connected acyclic automata with 2 inputs and n transient unlabeled states (and a unique absorbing state).

The programs for A082161, the canonical program `A082161.P10537796340930290528` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082161 has offset 1).

The definition of A082161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082161.P10537796340930290528

`A102316(C(n+2, 2)+n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A082161

/-- `A102316(C(n+2, 2)+n+1)` -/
def P10537796340930290528.Spec : Prop :=
  ∀ n, P10537796340930290528.a n = A082161 (n + 1)

theorem P10537796340930290528.correct : P10537796340930290528.Spec := by
  intro n
  simp only [A082161, Nat.add_sub_cancel]

end A082161

/-! ## A082161.P4052984388704527196

`record[A104417(n)]`
-/

namespace A082161.P4052984388704527196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082161.P4052984388704527196

namespace A082161

/-- `record[A104417(n)]` -/
def P4052984388704527196.Spec : Prop :=
  ∀ n, P4052984388704527196.a n = A082161 (n + 1)

end A082161

/-! ## A082161.P15877225317153491858

`record[A106208(n)]`
-/

namespace A082161.P15877225317153491858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082161.P15877225317153491858

namespace A082161

/-- `record[A106208(n)]` -/
def P15877225317153491858.Spec : Prop :=
  ∀ n, P15877225317153491858.a n = A082161 (n + 1)

end A082161

/-! ## A082161.P2553115995316405288

`record[A106210(n)]`
-/

namespace A082161.P2553115995316405288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082161.P2553115995316405288

namespace A082161

/-- `record[A106210(n)]` -/
def P2553115995316405288.Spec : Prop :=
  ∀ n, P2553115995316405288.a n = A082161 (n + 1)

end A082161

/-! ## A082161.P6417897604713344825

`A102086(∑[1+n])`
-/

namespace A082161.P6417897604713344825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082161.P6417897604713344825

namespace A082161

/-- `A102086(∑[1+n])` -/
def P6417897604713344825.Spec : Prop :=
  ∀ n, P6417897604713344825.a n = A082161 (n + 1)

end A082161

/-!
# A082162: Number of deterministic completely defined initially connected acyclic automata with 3 inputs and n transient unlabeled states (and a unique absorbing state).

The programs for A082162, there is no canonical definition to state claims against.
-/

/-! ## A082162.P14471516692842185317

`A102400(C(n+2, 2)+n+1)`
-/

namespace A082162.P14471516692842185317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102400 (Nat.choose (n + 2) 2 + (n + 1))

end

end A082162.P14471516692842185317

/-! ## A082162.P13433082245057654852

`A102917(2*(n+1))`
-/

namespace A082162.P13433082245057654852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102917 (2 * (n + 1))

end

end A082162.P13433082245057654852

/-! ## A082162.P14545000890610571602

`record[A102917(A004442(n)+1)]`
-/

namespace A082162.P14545000890610571602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102917 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082162.P14545000890610571602

/-! ## A082162.P2654129414845050778

`record[A102917(A102899(n)+1)]`
-/

namespace A082162.P2654129414845050778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102917 (A102899 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082162.P2654129414845050778

/-! ## A082162.P7101230425491299549

`record[A102917(2*A007954(n))]`
-/

namespace A082162.P7101230425491299549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102917 (2 * A007954 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082162.P7101230425491299549

/-!
# A082163: Number of deterministic completely defined initially connected acyclic automata with 2 inputs and n+1 transient unlabeled states including a unique state having all transitions to the absorbing state.

The programs for A082163, there is no canonical definition to state claims against.
-/

/-! ## A082163.P7134830491848609725

`A103236(∑[n])`
-/

namespace A082163.P7134830491848609725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103236 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082163.P7134830491848609725

/-! ## A082163.P8719817681075883737

`record[A103236(n)]`
-/

namespace A082163.P8719817681075883737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082163.P8719817681075883737

/-! ## A082163.P16849506998740071780

`∏{digits}[n, A103236(A000217(#))]`
-/

namespace A082163.P16849506998740071780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A103236 (A000217 x).toNat).prod

end

end A082163.P16849506998740071780

/-! ## A082163.P17381042693662746144

`and(-1, A103236(A000217(n)))`
-/

namespace A082163.P17381042693662746144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A103236 (A000217 n).toNat)

end

end A082163.P17381042693662746144

/-! ## A082163.P16158009414494377203

`or(A000007(n), A103236(C(n+1, 2)))`
-/

namespace A082163.P16158009414494377203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A103236 (Nat.choose (n + 1) 2))

end

end A082163.P16158009414494377203

/-!
# A082164: Deterministic completely defined initially connected acyclic automata with 3 inputs and n+1 transient unlabeled states including a unique state having all transitions to the absorbing state.

The programs for A082164, there is no canonical definition to state claims against.
-/

/-! ## A082164.P9405376826114247253

`A103237(∑[n])`
-/

namespace A082164.P9405376826114247253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103237 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082164.P9405376826114247253

/-! ## A082164.P4983794382922346884

`record[A103237(n)]`
-/

namespace A082164.P4983794382922346884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082164.P4983794382922346884

/-! ## A082164.P9370212623218729462

`A103237((n²+n)/2)+char[8]`
-/

namespace A082164.P9370212623218729462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103237 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A082164.P9370212623218729462

/-! ## A082164.P14296521198209107173

`and(-1, A103237(A000217(n)))`
-/

namespace A082164.P14296521198209107173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A103237 (A000217 n).toNat)

end

end A082164.P14296521198209107173

/-!
# A082166: a(n) = A006689(n)/n^2.

The programs for A082166, there is no canonical definition to state claims against.
-/

/-! ## A082166.P8648022751527310953

`A006689(n+1)/(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082166.P8648022751527310953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006689 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A082166.P8648022751527310953

/-! ## A082166.P14180957231758146648

`A006689(n+1)/A107668(n)*A107669(n)`
-/

namespace A082166.P14180957231758146648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006689 (n + 1) : ℚ) / (A107668 n : ℚ) * (A107669 n : ℚ)

end

end A082166.P14180957231758146648

/-! ## A082166.P7738967649156307504

`floor(A006689(n+1)/record[A163990(n+1)])`
-/

namespace A082166.P7738967649156307504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006689 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A082166.P7738967649156307504

/-! ## A082166.P8690496107464434968

`floor(A006689(n+1)/A163990(A000124(n)))`
-/

namespace A082166.P8690496107464434968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006689 (n + 1) : ℚ) / (A163990 (A000124 n).toNat : ℚ)⌋

end

end A082166.P8690496107464434968

/-!
# A082168: a(n) = A006690(n)/n^3.

The programs for A082168, there is no canonical definition to state claims against.
-/

/-! ## A082168.P9097234427429216495

`A006690(n+1)/(n+1)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082168.P9097234427429216495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006690 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A082168.P9097234427429216495

/-! ## A082168.P8239657195968167715

`A006690(n+1)/A107672(n)*A107673(n)`
-/

namespace A082168.P8239657195968167715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006690 (n + 1) : ℚ) / (A107672 n : ℚ) * (A107673 n : ℚ)

end

end A082168.P8239657195968167715

/-!
# A082169: Deterministic completely defined quasi-acyclic automata with 2 inputs, n transient and k absorbing labeled states.

The programs for A082169, there is no canonical definition to state claims against.
-/

/-! ## A082169.P10271748983195599972

`A103240(gcd(A010816(n), A038722(n+1)))`
-/

namespace A082169.P10271748983195599972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103240 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A082169.P10271748983195599972

/-! ## A082169.P12604611808915574130

`A103240(A038722(n+1)%A104824(n+1))`
-/

namespace A082169.P12604611808915574130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103240 (Int.tmod (A038722 (n + 1)) (A104824 (n + 1))).toNat

end

end A082169.P12604611808915574130

/-! ## A082169.P3704430828661001258

`A103240(∑[char[∑[n]]]²-n)`
-/

namespace A082169.P3704430828661001258
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103240 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A082169.P3704430828661001258

/-! ## A082169.P11698001000672193886

`and(-1, A103240(A038722(n+1)))`
-/

namespace A082169.P11698001000672193886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A103240 (A038722 (n + 1)).toNat)

end

end A082169.P11698001000672193886

/-! ## A082169.P6193111394182557880

`A103240(A038722(n+1))*A262681(n)`
-/

namespace A082169.P6193111394182557880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103240 (A038722 (n + 1)).toNat * A262681 n

end

end A082169.P6193111394182557880

/-!
# A082170: Deterministic completely defined quasi-acyclic automata with 3 inputs, n transient and k absorbing labeled states.

The programs for A082170, there is no canonical definition to state claims against.
-/

/-! ## A082170.P14743012071759518247

`A103241(A002378(n)%A080036(n)+1)`
-/

namespace A082170.P14743012071759518247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103241 (Int.tmod (A002378 n) (A080036 n) + 1).toNat

end

end A082170.P14743012071759518247

/-! ## A082170.P5338344355698452185

`A103241(gcd(A010816(n), A038722(n+1)))`
-/

namespace A082170.P5338344355698452185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103241 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A082170.P5338344355698452185

/-! ## A082170.P3836410538788619415

`A103241(A038722(n+1)%A350159(n+1))`
-/

namespace A082170.P3836410538788619415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103241 (Int.tmod (A038722 (n + 1)) (A350159 (n + 1))).toNat

end

end A082170.P3836410538788619415

/-! ## A082170.P9774535438796756174

`A103241((A061579(n)+1)%A350159(n+1))`
-/

namespace A082170.P9774535438796756174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103241 (Int.tmod (A061579 n + 1) (A350159 (n + 1))).toNat

end

end A082170.P9774535438796756174

/-! ## A082170.P8272421915384273726

`A103241(∑[char[∑[n]]]²-n)`
-/

namespace A082170.P8272421915384273726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103241 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A082170.P8272421915384273726

/-!
# A082171: A subclass of quasi-acyclic automata with 2 inputs, n transient and k absorbing labeled states; square array T(n,k) read by descending antidiagonals (n >= 0 and k >= 1).

The programs for A082171, there is no canonical definition to state claims against.
-/

/-! ## A082171.P10463160010158653374

`A103242(A061579(n)%A063007(n)+1)`
-/

namespace A082171.P10463160010158653374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103242 (Int.tmod (A061579 n) (A063007 n) + 1).toNat

end

end A082171.P10463160010158653374

/-! ## A082171.P3909123893896800330

`A103242(gcd(A010816(n), A038722(n+1)))`
-/

namespace A082171.P3909123893896800330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103242 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A082171.P3909123893896800330

/-! ## A082171.P2872853584171479388

`A103242(A038722(n+1)%A104824(n+1))`
-/

namespace A082171.P2872853584171479388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103242 (Int.tmod (A038722 (n + 1)) (A104824 (n + 1))).toNat

end

end A082171.P2872853584171479388

/-! ## A082171.P18349043236953282387

`A103242(∑[char[∑[n]]]²-n)`
-/

namespace A082171.P18349043236953282387
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103242 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A082171.P18349043236953282387

/-! ## A082171.P7144319728962758186

`A103242(A038722(n+1))*A262681(n)`
-/

namespace A082171.P7144319728962758186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103242 (A038722 (n + 1)).toNat * A262681 n

end

end A082171.P7144319728962758186

/-!
# A082172: A subclass of quasi-acyclic automata with 3 inputs, n transient and k absorbing labeled states.

The programs for A082172, there is no canonical definition to state claims against.
-/

/-! ## A082172.P13851977604187818472

`A103243(A061579(n)%A063007(n)+1)`
-/

namespace A082172.P13851977604187818472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103243 (Int.tmod (A061579 n) (A063007 n) + 1).toNat

end

end A082172.P13851977604187818472

/-! ## A082172.P16917009335279255218

`A103243(gcd(A010816(n), A038722(n+1)))`
-/

namespace A082172.P16917009335279255218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103243 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A082172.P16917009335279255218

/-! ## A082172.P783239788615570641

`A103243(A028310(A038722(n+1)%A080036(n)))`
-/

namespace A082172.P783239788615570641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103243 (A028310 (Int.tmod (A038722 (n + 1)) (A080036 n)).toNat).toNat

end

end A082172.P783239788615570641

/-! ## A082172.P3772103816891063831

`A103243(∑[char[∑[n]]]²-n)`
-/

namespace A082172.P3772103816891063831
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103243 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A082172.P3772103816891063831

/-! ## A082172.P12332342178068002412

`A103243(A038722(n+1))*A262681(n)`
-/

namespace A082172.P12332342178068002412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103243 (A038722 (n + 1)).toNat * A262681 n

end

end A082172.P12332342178068002412

/-!
# A082173: a(0)=1; for n >= 1, a(n) = Sum_{k=0..n} 11^k*N(n,k) where N(n,k) = (1/n)*C(n,k)*C(n,k+1) are the Narayana numbers (A001263).

The programs for A082173, the canonical program `A082173.P12174132467420197195` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082173 has offset 0).

The definition of A082173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082173.P12174132467420197195

`(12*(2*n-1)*a(n-1)-100*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A082173

/-- `(12*(2*n-1)*a(n-1)-100*(n-2)*a(n-2))/(n+1)` -/
def P12174132467420197195.Spec : Prop :=
  ∀ n, P12174132467420197195.a n = (A082173 n : ℚ)

end A082173

/-! ## A082173.P930403899485279257

`∑{#}[n, A088617(C(n+1, 2)+#)*11^#*(-10)^(n-#)]`
-/

namespace A082173.P930403899485279257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A088617 (Nat.choose (n + 1) 2 + k) * (11 ^ k : ℤ) : ℚ) * (-10 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A082173.P930403899485279257

namespace A082173

/-- `∑{#}[n, A088617(C(n+1, 2)+#)*11^#*(-10)^(n-#)]` -/
def P930403899485279257.Spec : Prop :=
  ∀ n, P930403899485279257.a n = (A082173 n : ℚ)

end A082173

/-! ## A082173.P5355401295473816063

`A008550(eq[11, A002262(n)])`
-/

namespace A082173.P5355401295473816063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082173.P5355401295473816063

namespace A082173

/-- `A008550(eq[11, A002262(n)])` -/
def P5355401295473816063.Spec : Prop :=
  ∀ n, P5355401295473816063.a n = A082173 n

end A082173

/-! ## A082173.P14371521847646679221

`A008550(eq[12, A002260(n+1)])`
-/

namespace A082173.P14371521847646679221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082173.P14371521847646679221

namespace A082173

/-- `A008550(eq[12, A002260(n+1)])` -/
def P14371521847646679221.Spec : Prop :=
  ∀ n, P14371521847646679221.a n = A082173 n

end A082173

/-! ## A082173.P9674090711163400688

`A204057(eq[10, A025581(n)])`
-/

namespace A082173.P9674090711163400688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082173.P9674090711163400688

namespace A082173

/-- `A204057(eq[10, A025581(n)])` -/
def P9674090711163400688.Spec : Prop :=
  ∀ n, P9674090711163400688.a n = A082173 n

end A082173

/-! ## A082173.P9730089580138491606

`A243631(eq[11, A025581(n)])`
-/

namespace A082173.P9730089580138491606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082173.P9730089580138491606

namespace A082173

/-- `A243631(eq[11, A025581(n)])` -/
def P9730089580138491606.Spec : Prop :=
  ∀ n, P9730089580138491606.a n = A082173 n

end A082173

/-! ## A082173.P3251245389600374973

`A204057(eq[11, A004736(n+1)])`
-/

namespace A082173.P3251245389600374973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082173.P3251245389600374973

namespace A082173

/-- `A204057(eq[11, A004736(n+1)])` -/
def P3251245389600374973.Spec : Prop :=
  ∀ n, P3251245389600374973.a n = A082173 n

end A082173

/-! ## A082173.P6144378497541251804

`A243631(eq[12, A004736(n+1)])`
-/

namespace A082173.P6144378497541251804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082173.P6144378497541251804

namespace A082173

/-- `A243631(eq[12, A004736(n+1)])` -/
def P6144378497541251804.Spec : Prop :=
  ∀ n, P6144378497541251804.a n = A082173 n

end A082173

/-!
# A082174: Number of primitive reduced indefinite quadratic forms over the integers in two variables with discriminants D(n)=A079896(n).

The programs for A082174, there is no canonical definition to state claims against.
-/

/-! ## A082174.P1573641100520846447

`A000005(or(A119706(n+1), A254764(n+1)))`
-/

namespace A082174.P1573641100520846447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A119706 (n + 1)) (A254764 (n + 1))).toNat

end

end A082174.P1573641100520846447

/-! ## A082174.P18117479115788637476

`A000005(xor(A093107(n+1), A127294(n)))`
-/

namespace A082174.P18117479115788637476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor (A093107 (n + 1)) (A127294 n)).toNat

end

end A082174.P18117479115788637476

/-! ## A082174.P13074708614604997186

`A001227(A184637(n+1)+A141685(n+1))`
-/

namespace A082174.P13074708614604997186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A184637 (n + 1) + A141685 (n + 1)).toNat

end

end A082174.P13074708614604997186

/-! ## A082174.P11482516417794284956

`A001222(xor(A072883(n+1), A153974(n+1))²)`
-/

namespace A082174.P11482516417794284956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A072883 (n + 1)) (A153974 (n + 1)) ^ 2).toNat

end

end A082174.P11482516417794284956

/-! ## A082174.P1003937490938013939

`A000005(∑[A000040(n+1)^A248736(n+1)])`
-/

namespace A082174.P1003937490938013939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A248736 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A082174.P1003937490938013939

/-!
# A082175: Number of reduced indefinite quadratic forms over the integers in two variables with discriminants D(n)=A079896(n).

The programs for A082175, there is no canonical definition to state claims against.
-/

/-! ## A082175.P771047957358672638

`A105681(A255582(n+1)+A035382(n))`
-/

namespace A082175.P771047957358672638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105681 (A255582 (n + 1) + A035382 n).toNat

end

end A082175.P771047957358672638

/-! ## A082175.P12982792180461503937

`A000005(A054408(n+1)+A038041(n+1))`
-/

namespace A082175.P12982792180461503937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054408 (n + 1) + A038041 (n + 1)).toNat

end

end A082175.P12982792180461503937

/-! ## A082175.P787284796248658110

`A000005(or(A081973(n+2), A081978(n+2)))`
-/

namespace A082175.P787284796248658110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A081973 (n + 2)) (A081978 (n + 2))).toNat

end

end A082175.P787284796248658110

/-!
# A082177: Professor Umbugio's sequence A082176 divided by 1946.

The programs for A082177, there is no canonical definition to state claims against.
-/

/-! ## A082177.P3637849955770362343

`53*A082178(n)`
-/

namespace A082177.P3637849955770362343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  53 * A082178 n

end

end A082177.P3637849955770362343

/-!
# A082178: Professor Umbugio's sequence A082176 divided by 2*7*53*139 = 103138.

The programs for A082178, there is no canonical definition to state claims against.
-/

/-! ## A082178.P6307115929131336067

`A082177(n)/53`
-/

namespace A082178.P6307115929131336067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082177 n : ℚ) / 53

end

end A082178.P6307115929131336067

/-!
# A082179: (c(p)-2)/p where p runs through the primes and where c(p) denotes the p-th Catalan number = binomial(2*p,p)/(p+1).

The programs for A082179, there is no canonical definition to state claims against.
-/

/-! ## A082179.P16830724503750959572

`A054358(p?[comp[n²]])`
-/

namespace A082179.P16830724503750959572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054358 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A082179.P16830724503750959572

/-! ## A082179.P2684674916930604076

`A054358(Δ[A007504(n)])`
-/

namespace A082179.P2684674916930604076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054358 (f1 (n + 1) - f1 n).toNat

end

end A082179.P2684674916930604076

/-! ## A082179.P12516954389446310776

`A054358(A000040(n+1))`
-/

namespace A082179.P12516954389446310776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054358 (A000040 (n + 1)).toNat

end

end A082179.P12516954389446310776

/-! ## A082179.P16136715630172601026

`A054358(A049551(n+1))`
-/

namespace A082179.P16136715630172601026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054358 (A049551 (n + 1)).toNat

end

end A082179.P16136715630172601026

/-! ## A082179.P12009341801313101107

`A054358(A182986(n+2))`
-/

namespace A082179.P12009341801313101107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054358 (A182986 (n + 2)).toNat

end

end A082179.P12009341801313101107

/-!
# A082180: Composite integers k such that binomial(2*k, k) == 2 (mod k).

The programs for A082180, there is no canonical definition to state claims against.
-/

/-! ## A082180.P4922486448737380102

`filter[A373410(n+1), A353799(#)]`
-/

namespace A082180.P4922486448737380102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A082180.P4922486448737380102

/-! ## A082180.P6126947156509022145

`lt[A008621(A243501(n+1)), A057521(n+1)]+1`
-/

namespace A082180.P6126947156509022145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A243501 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A082180.P6126947156509022145

/-! ## A082180.P16554423070295049549

`A168363(lt[A134685(n+1), A241703(n+1)])`
-/

namespace A082180.P16554423070295049549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168363 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082180.P16554423070295049549

/-! ## A082180.P2459180750173365253

`∩[A032515(n), A168363(n+1)]`
-/

namespace A082180.P2459180750173365253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082180.P2459180750173365253

/-!
# A082181: a(0) = 1, for n>=1, a(n) = Sum_{k=0..n} 9^k*N(n,k), where N(n,k) = (1/n)*C(n,k)*C(n,k+1) are the Narayana numbers (A001263).

The programs for A082181, the canonical program `A082181.P4383415118396081554` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082181 has offset 0).

The definition of A082181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082181.P4383415118396081554

`(10*(2*n-1)*a(n-1)-64*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A082181

/-- `(10*(2*n-1)*a(n-1)-64*(n-2)*a(n-2))/(n+1)` -/
def P4383415118396081554.Spec : Prop :=
  ∀ n, P4383415118396081554.a n = (A082181 n : ℚ)

end A082181

/-! ## A082181.P4501372383004881434

`∑{#}[n, A088617(C(n+1, 2)+#)*9^#*(-8)^(n-#)]`
-/

namespace A082181.P4501372383004881434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A088617 (Nat.choose (n + 1) 2 + k) * (9 ^ k : ℤ) : ℚ) * (-8 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A082181.P4501372383004881434

namespace A082181

/-- `∑{#}[n, A088617(C(n+1, 2)+#)*9^#*(-8)^(n-#)]` -/
def P4501372383004881434.Spec : Prop :=
  ∀ n, P4501372383004881434.a n = (A082181 n : ℚ)

end A082181

/-! ## A082181.P9223834711950944333

`ceil(A082367(n)/9)`
-/

namespace A082181.P9223834711950944333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082367 n : ℚ) / 9⌉

end

end A082181.P9223834711950944333

namespace A082181

/-- `ceil(A082367(n)/9)` -/
def P9223834711950944333.Spec : Prop :=
  ∀ n, P9223834711950944333.a n = A082181 n

end A082181

/-! ## A082181.P4367891266534531891

`A008550(A000096(n+8)+10)`
-/

namespace A082181.P4367891266534531891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000096 (n + 8) + 10).toNat

end

end A082181.P4367891266534531891

namespace A082181

/-- `A008550(A000096(n+8)+10)` -/
def P4367891266534531891.Spec : Prop :=
  ∀ n, P4367891266534531891.a n = A082181 n

end A082181

/-! ## A082181.P11190746055610187667

`A008550(A000217(n+9)+9)`
-/

namespace A082181.P11190746055610187667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A000217 (n + 9) + 9).toNat

end

end A082181.P11190746055610187667

namespace A082181

/-- `A008550(A000217(n+9)+9)` -/
def P11190746055610187667.Spec : Prop :=
  ∀ n, P11190746055610187667.a n = A082181 n

end A082181

/-! ## A082181.P16573975251094631761

`A008550(A052905(n+8)-A317439(n+4))`
-/

namespace A082181.P16573975251094631761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A052905 (n + 8) - A317439 (n + 4)).toNat

end

end A082181.P16573975251094631761

namespace A082181

/-- `A008550(A052905(n+8)-A317439(n+4))` -/
def P16573975251094631761.Spec : Prop :=
  ∀ n, P16573975251094631761.a n = A082181 n

end A082181

/-! ## A082181.P913305648126961907

`A243631(A055999(n+7)-4)`
-/

namespace A082181.P913305648126961907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A055999 (n + 7) - 4).toNat

end

end A082181.P913305648126961907

namespace A082181

/-- `A243631(A055999(n+7)-4)` -/
def P913305648126961907.Spec : Prop :=
  ∀ n, P913305648126961907.a n = A082181 n

end A082181

/-! ## A082181.P16929818274059721352

`A243631(A253145(n+9)-10)`
-/

namespace A082181.P16929818274059721352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 (A253145 (n + 9) - 10).toNat

end

end A082181.P16929818274059721352

namespace A082181

/-- `A243631(A253145(n+9)-10)` -/
def P16929818274059721352.Spec : Prop :=
  ∀ n, P16929818274059721352.a n = A082181 n

end A082181

/-!
# A082182: Numbers k such that (5^k - 2^k)/3 is prime.

The programs for A082182, there is no canonical definition to state claims against.
-/

/-! ## A082182.P8003735338024320743

`p?[A075518(record[A122386(n+1)])]`
-/

namespace A082182.P8003735338024320743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122386 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082182.P8003735338024320743

/-! ## A082182.P16373696931154054473

`p?[A352800(A238369(p?[n%3+n]))]`
-/

namespace A082182.P16373696931154054473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352800 (A238369 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082182.P16373696931154054473

/-! ## A082182.P9900438671601618947

`p?[A352800(A238369(p?[n-(-1)^n]))]`
-/

namespace A082182.P9900438671601618947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352800 (A238369 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082182.P9900438671601618947

/-! ## A082182.P4299589230333409594

`p?[lt[A179801(n+1), A327974(n+1)]]`
-/

namespace A082182.P4299589230333409594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327974 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A082182.P4299589230333409594

/-! ## A082182.P8285791586185312061

`A000040(A058871(n+1)+1-A020639(n!))`
-/

namespace A082182.P8285791586185312061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A058871 (n + 1) + (1 - A020639 (Nat.factorial n))).toNat

end

end A082182.P8285791586185312061

/-!
# A082183: Smallest k > 0 such that T(n) + T(k) = T(m), for some m, T(i) being the triangular numbers, n > 1.

The programs for A082183, there is no canonical definition to state claims against.
-/

/-! ## A082183.P10036311389283120768

`A082184(n+2)-A332552(n+2)`
-/

namespace A082183.P10036311389283120768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082184 (n + 2) - A332552 (n + 2)

end

end A082183.P10036311389283120768

/-! ## A082183.P1484204473271109017

`A332542(n+3)-A379697(n+3)`
-/

namespace A082183.P1484204473271109017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332542 (n + 3) - A379697 (n + 3)

end

end A082183.P1484204473271109017

/-! ## A082183.P6432718341163503187

`A332544(n+3)/A332543(n+3)`
-/

namespace A082183.P6432718341163503187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332544 (n + 3) : ℚ) / (A332543 (n + 3) : ℚ)

end

end A082183.P6432718341163503187

/-! ## A082183.P6573039524731059568

`A332543(n+3)-(A082184(n+2)+1)`
-/

namespace A082183.P6573039524731059568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332543 (n + 3) - (A082184 (n + 2) + 1)

end

end A082183.P6573039524731059568

/-! ## A082183.P11230088879134228437

`n+3-(A082184(n+2)-A332542(n+3))`
-/

namespace A082183.P11230088879134228437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (A082184 (n + 2) - A332542 (n + 3))

end

end A082183.P11230088879134228437

/-! ## A082183.P13075929124946384341

`A332543(n+3)%(A082184(n+2)+A106400(n)²)`
-/

namespace A082183.P13075929124946384341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332543 (n + 3)) (A082184 (n + 2) + A106400 n ^ 2)

end

end A082183.P13075929124946384341

/-! ## A082183.P7084688546999071599

`A332544(n+3)%(A332543(n+3)-A007318(A000217(n)))`
-/

namespace A082183.P7084688546999071599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332544 (n + 3)) (A332543 (n + 3) - A007318 (A000217 n).toNat)

end

end A082183.P7084688546999071599

/-! ## A082183.P15081065847312363246

`A004524(A332543(n+3)-A332552(n+2))`
-/

namespace A082183.P15081065847312363246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A332543 (n + 3) - A332552 (n + 2)).toNat

end

end A082183.P15081065847312363246

/-! ## A082183.P7094935959704101826

`A004526(A332543(n+3)-A332552(n+2))`
-/

namespace A082183.P7094935959704101826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A332543 (n + 3) - A332552 (n + 2)).toNat

end

end A082183.P7094935959704101826

/-! ## A082183.P8517529355980200129

`A028242(A332543(n+3)-A332552(n+2))`
-/

namespace A082183.P8517529355980200129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A332543 (n + 3) - A332552 (n + 2)).toNat

end

end A082183.P8517529355980200129

/-! ## A082183.P14988901365346535202

`A057979(A332543(n+3)-A332552(n+2))`
-/

namespace A082183.P14988901365346535202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A332543 (n + 3) - A332552 (n + 2)).toNat

end

end A082183.P14988901365346535202

/-! ## A082183.P5254358134073250181

`A123108(A332543(n+3)-A332552(n+2))`
-/

namespace A082183.P5254358134073250181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A332543 (n + 3) - A332552 (n + 2)).toNat

end

end A082183.P5254358134073250181

/-!
# A082184: The a(n)-th triangular number is the sum of the n-th triangular number and the smallest triangular number possible.

The programs for A082184, there is no canonical definition to state claims against.
-/

/-! ## A082184.P6629635720030087432

`A332552(n+2)+A082183(n+2)`
-/

namespace A082184.P6629635720030087432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332552 (n + 2) + A082183 (n + 2)

end

end A082184.P6629635720030087432

/-! ## A082184.P14365774520183669327

`A379697(3+n)+3+n`
-/

namespace A082184.P14365774520183669327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379697 (3 + n) + 3 + (n : ℤ)

end

end A082184.P14365774520183669327

/-! ## A082184.P506594948037405402

`A332543(n+3)-(A082183(n+2)+1)`
-/

namespace A082184.P506594948037405402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332543 (n + 3) - (A082183 (n + 2) + 1)

end

end A082184.P506594948037405402

/-! ## A082184.P3356897129395398822

`n+3-(A082183(n+2)-A332542(n+3))`
-/

namespace A082184.P3356897129395398822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (A082183 (n + 2) - A332542 (n + 3))

end

end A082184.P3356897129395398822

/-! ## A082184.P17787274005974268052

`A332552(n+2)+A332544(n+3)/A332543(n+3)`
-/

namespace A082184.P17787274005974268052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332552 (n + 2) : ℚ) + (A332544 (n + 3) : ℚ) / (A332543 (n + 3) : ℚ)

end

end A082184.P17787274005974268052

/-! ## A082184.P2409221374308022742

`A082183(n+2)+n+2-A332553(n+2)`
-/

namespace A082184.P2409221374308022742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082183 (n + 2) + ((n + 2 : ℤ) - A332553 (n + 2))

end

end A082184.P2409221374308022742

/-! ## A082184.P2809243378023269481

`A023443(A332543(n+3)-A082183(n+2))`
-/

namespace A082184.P2809243378023269481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A332543 (n + 3) - A082183 (n + 2)).toNat

end

end A082184.P2809243378023269481

/-! ## A082184.P6735044617149711836

`A004524(A332552(n+2)+A332543(n+3))`
-/

namespace A082184.P6735044617149711836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A332552 (n + 2) + A332543 (n + 3)).toNat

end

end A082184.P6735044617149711836

/-! ## A082184.P507029377203927846

`A004526(A332552(n+2)+A332543(n+3))`
-/

namespace A082184.P507029377203927846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A332552 (n + 2) + A332543 (n + 3)).toNat

end

end A082184.P507029377203927846

/-! ## A082184.P6469641177434901833

`A028242(A332552(n+2)+A332543(n+3))`
-/

namespace A082184.P6469641177434901833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A332552 (n + 2) + A332543 (n + 3)).toNat

end

end A082184.P6469641177434901833

/-! ## A082184.P4429533009948978644

`A057979(A332552(n+2)+A332543(n+3))`
-/

namespace A082184.P4429533009948978644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A332552 (n + 2) + A332543 (n + 3)).toNat

end

end A082184.P4429533009948978644

/-! ## A082184.P9972882918134951485

`A123108(A332552(n+2)+A332543(n+3))`
-/

namespace A082184.P9972882918134951485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A332552 (n + 2) + A332543 (n + 3)).toNat

end

end A082184.P9972882918134951485

/-! ## A082184.P10540202137619134185

`A233583(A332543(n+3)-A082183(n+2))`
-/

namespace A082184.P10540202137619134185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A332543 (n + 3) - A082183 (n + 2)).toNat

end

end A082184.P10540202137619134185

/-!
# A082186: 1 + sum of first n terms of A001221.

The programs for A082186, the canonical program `A082186.P8574342287794827093` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082186 has offset 1).

The definition of A082186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082186.P8574342287794827093

`∑[∑{p}[1+n, gcd(n, #)]]+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A082186

/-- `∑[∑{p}[1+n, gcd(n, #)]]+1` -/
def P8574342287794827093.Spec : Prop :=
  ∀ n, (P8574342287794827093.a n : ℤ) = A082186 (n + 1)

theorem P8574342287794827093.correct : P8574342287794827093.Spec := by
  intro n
  simp only [A082186, Nat.add_sub_cancel]

end A082186

/-! ## A082186.P13183951495369596904

`∑[∑{e}[∏{p}[n+1, #], #]]+1`
-/

namespace A082186.P13183951495369596904
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082186.P13183951495369596904

namespace A082186

/-- `∑[∑{e}[∏{p}[n+1, #], #]]+1` -/
def P13183951495369596904.Spec : Prop :=
  ∀ n, (P13183951495369596904.a n : ℤ) = A082186 (n + 1)

end A082186

/-! ## A082186.P13764828275881005605

`∑[∑{p}[n+1, ceil(1/#)]]+1`
-/

namespace A082186.P13764828275881005605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈1 / (p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082186.P13764828275881005605

namespace A082186

/-- `∑[∑{p}[n+1, ceil(1/#)]]+1` -/
def P13764828275881005605.Spec : Prop :=
  ∀ n, P13764828275881005605.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P16351675747327932586

`∑[floor(∑{p}[n+1, root(2, #)])]+1`
-/

namespace A082186.P16351675747327932586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f2 n), (2 : ℝ) ^ (1 / (p : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082186.P16351675747327932586

namespace A082186

/-- `∑[floor(∑{p}[n+1, root(2, #)])]+1` -/
def P16351675747327932586.Spec : Prop :=
  ∀ n, P16351675747327932586.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P14986972745168431414

`∑[ceil(∑{p}[n+1, root(γ, #)])]+1`
-/

namespace A082186.P14986972745168431414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f2 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082186.P14986972745168431414

namespace A082186

/-- `∑[ceil(∑{p}[n+1, root(γ, #)])]+1` -/
def P14986972745168431414.Spec : Prop :=
  ∀ n, P14986972745168431414.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P722170419847088740

`∑[∏{e}[∏{e}[∏{p}[n+1, #], 2^#], #]]`
-/

namespace A082186.P722170419847088740
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 2 ^ Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082186.P722170419847088740

namespace A082186

/-- `∑[∏{e}[∏{e}[∏{p}[n+1, #], 2^#], #]]` -/
def P722170419847088740.Spec : Prop :=
  ∀ n, (P722170419847088740.a n : ℤ) = A082186 (n + 1)

end A082186

/-! ## A082186.P7728380685035168918

`∑[∏{e}[∏{e}[n+1, 2*(-1)^#], #]]`
-/

namespace A082186.P7728380685035168918
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), 2 * (-1) ^ Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082186.P7728380685035168918

namespace A082186

/-- `∑[∏{e}[∏{e}[n+1, 2*(-1)^#], #]]` -/
def P7728380685035168918.Spec : Prop :=
  ∀ n, (P7728380685035168918.a n : ℤ) = A082186 (n + 1)

end A082186

/-! ## A082186.P11905373313678635559

`a(n-1)+∑{p}[n+1, 2%#²]/2` with `a(0)=1`
-/

namespace A082186.P11905373313678635559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∑ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 : ℕ) : ℚ) / 2

end

end A082186.P11905373313678635559

namespace A082186

/-- `a(n-1)+∑{p}[n+1, 2%#²]/2` -/
def P11905373313678635559.Spec : Prop :=
  ∀ n, P11905373313678635559.a n = (A082186 (n + 1) : ℚ)

end A082186

/-! ## A082186.P10849590253570369655

`A013939(1+n)+1`
-/

namespace A082186.P10849590253570369655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (1 + n) + 1

end

end A082186.P10849590253570369655

namespace A082186

/-- `A013939(1+n)+1` -/
def P10849590253570369655.Spec : Prop :=
  ∀ n, P10849590253570369655.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P5973338362050249861

`A082767(n+1)-n`
-/

namespace A082186.P5973338362050249861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082767 (n + 1) - (n : ℤ)

end

end A082186.P5973338362050249861

namespace A082186

/-- `A082767(n+1)-n` -/
def P5973338362050249861.Spec : Prop :=
  ∀ n, P5973338362050249861.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P18258401770449923980

`∑[A001221(n+1)]+1`
-/

namespace A082186.P18258401770449923980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082186.P18258401770449923980

namespace A082186

/-- `∑[A001221(n+1)]+1` -/
def P18258401770449923980.Spec : Prop :=
  ∀ n, P18258401770449923980.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P13995368051628045075

`∑[A297155(n+1)+1]`
-/

namespace A082186.P13995368051628045075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082186.P13995368051628045075

namespace A082186

/-- `∑[A297155(n+1)+1]` -/
def P13995368051628045075.Spec : Prop :=
  ∀ n, P13995368051628045075.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P15987220048752693439

`∑[A083399(n+1)]-n`
-/

namespace A082186.P15987220048752693439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A082186.P15987220048752693439

namespace A082186

/-- `∑[A083399(n+1)]-n` -/
def P15987220048752693439.Spec : Prop :=
  ∀ n, P15987220048752693439.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P17384277331392632543

`A355538(n+1)+1+n`
-/

namespace A082186.P17384277331392632543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355538 (n + 1) + 1 + (n : ℤ)

end

end A082186.P17384277331392632543

namespace A082186

/-- `A355538(n+1)+1+n` -/
def P17384277331392632543.Spec : Prop :=
  ∀ n, P17384277331392632543.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P8496332525457471555

`∑[abs(A158210(n+1))]+1`
-/

namespace A082186.P8496332525457471555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158210 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082186.P8496332525457471555

namespace A082186

/-- `∑[abs(A158210(n+1))]+1` -/
def P8496332525457471555.Spec : Prop :=
  ∀ n, P8496332525457471555.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P12415223233571853686

`∑[log2(A007875(n+1))+1]`
-/

namespace A082186.P12415223233571853686
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A007875 (n + 1) : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082186.P12415223233571853686

namespace A082186

/-- `∑[log2(A007875(n+1))+1]` -/
def P12415223233571853686.Spec : Prop :=
  ∀ n, P12415223233571853686.a n = (A082186 (n + 1) : ℝ)

end A082186

/-! ## A082186.P15304745282018262778

`∑[log2(A034444(n+1))]+1`
-/

namespace A082186.P15304745282018262778
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034444 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082186.P15304745282018262778

namespace A082186

/-- `∑[log2(A034444(n+1))]+1` -/
def P15304745282018262778.Spec : Prop :=
  ∀ n, P15304745282018262778.a n = (A082186 (n + 1) : ℝ)

end A082186

/-! ## A082186.P18093498157911321236

`∑[A001222(∏{p}[n+1, #])]+1`
-/

namespace A082186.P18093498157911321236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082186.P18093498157911321236

namespace A082186

/-- `∑[A001222(∏{p}[n+1, #])]+1` -/
def P18093498157911321236.Spec : Prop :=
  ∀ n, P18093498157911321236.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P3265870770944287063

`1-∑[∑{p}[n+1, A008683(#)]]`
-/

namespace A082186.P3265870770944287063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A008683 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082186.P3265870770944287063

namespace A082186

/-- `1-∑[∑{p}[n+1, A008683(#)]]` -/
def P3265870770944287063.Spec : Prop :=
  ∀ n, P3265870770944287063.a n = A082186 (n + 1)

end A082186

/-! ## A082186.P16296754623449106408

`A001221(2*n+1-n)+a(n-1)` with `a(0)=1`
-/

namespace A082186.P16296754623449106408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001221 (2 * n + 1 - n) + a (n - 1)

end

end A082186.P16296754623449106408

namespace A082186

/-- `A001221(2*n+1-n)+a(n-1)` -/
def P16296754623449106408.Spec : Prop :=
  ∀ n, P16296754623449106408.a n = A082186 (n + 1)

end A082186

/-!
# A082187: First row of square array A082025.

The programs for A082187, there is no canonical definition to state claims against.
-/

/-! ## A082187.P5417147732575643571

`A082025(A128918(1+n))`
-/

namespace A082187.P5417147732575643571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A128918 (1 + n)).toNat

end

end A082187.P5417147732575643571

/-! ## A082187.P10418338086658068815

`A082025(A266304(n)+1)`
-/

namespace A082187.P10418338086658068815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A266304 n + 1).toNat

end

end A082187.P10418338086658068815

/-! ## A082187.P12657467523053894945

`A082025(A056011(∑[n+1]))`
-/

namespace A082187.P12657467523053894945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A056011 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A082187.P12657467523053894945

/-! ## A082187.P3609414317067898517

`A082025(A056023(∑[n]+1))`
-/

namespace A082187.P3609414317067898517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A056023 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A082187.P3609414317067898517

/-! ## A082187.P10103872023196335430

`A082025(A237420(n)+A000124(n))`
-/

namespace A082187.P10103872023196335430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A237420 n + A000124 n).toNat

end

end A082187.P10103872023196335430

/-! ## A082187.P10575987015436202906

`A082025(A131179(Δ[A000982(n)])+n)`
-/

namespace A082187.P10575987015436202906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A131179 (f1 (n + 1) - f1 n).toNat + (n : ℤ)).toNat

end

end A082187.P10575987015436202906

/-! ## A082187.P6224279197977504708

`A082025(A131179(n)+A004525(2*n+1))`
-/

namespace A082187.P6224279197977504708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A131179 n + A004525 (2 * n + 1)).toNat

end

end A082187.P6224279197977504708

/-! ## A082187.P10103335566643906785

`A082025(A194280(n²+1))`
-/

namespace A082187.P10103335566643906785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A194280 (n ^ 2 + 1)).toNat

end

end A082187.P10103335566643906785

/-!
# A082188: First column of square array A082025.

The programs for A082188, there is no canonical definition to state claims against.
-/

/-! ## A082188.P5312244218838493135

`A082025(∑[A266303(n)])`
-/

namespace A082188.P5312244218838493135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082188.P5312244218838493135

/-! ## A082188.P16637849499298603836

`A082025(A131179(1+n))`
-/

namespace A082188.P16637849499298603836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A131179 (1 + n)).toNat

end

end A082188.P16637849499298603836

/-! ## A082188.P18190193060214638973

`A082025(A056011(∑[n]+1))`
-/

namespace A082188.P18190193060214638973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A056011 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A082188.P18190193060214638973

/-! ## A082188.P7752862104145548341

`A082025((n+1)²-A266304(n))`
-/

namespace A082188.P7752862104145548341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (((n + 1) ^ 2 : ℤ) - A266304 n).toNat

end

end A082188.P7752862104145548341

/-! ## A082188.P4392790963854388574

`A082025(∑[n+1]-A237420(n))`
-/

namespace A082188.P4392790963854388574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A237420 n).toNat

end

end A082188.P4392790963854388574

/-! ## A082188.P4873492134680836457

`A082025(∑[A008619(A019427(n))])`
-/

namespace A082188.P4873492134680836457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A019427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082188.P4873492134680836457

/-! ## A082188.P743074641702284061

`A082025(∑[A008620(A019429(n))])`
-/

namespace A082188.P743074641702284061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A019429 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082188.P743074641702284061

/-! ## A082188.P9468673080302989366

`A082025(A000124(n)+n-A237420(n))`
-/

namespace A082188.P9468673080302989366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A000124 n + ((n : ℤ) - A237420 n)).toNat

end

end A082188.P9468673080302989366

/-! ## A082188.P14196042094987617704

`A082025(A056023(∑[n+1]))`
-/

namespace A082188.P14196042094987617704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A056023 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A082188.P14196042094987617704

/-! ## A082188.P13553050960470585380

`A082025(A194280((n+1)²))`
-/

namespace A082188.P13553050960470585380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A194280 ((n + 1) ^ 2)).toNat

end

end A082188.P13553050960470585380

/-!
# A082189: Main diagonal of square array A082025.

The programs for A082189, there is no canonical definition to state claims against.
-/

/-! ## A082189.P6077916377706599739

`A082025(∑[4*n]+1)`
-/

namespace A082189.P6077916377706599739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082189.P6077916377706599739

/-! ## A082189.P5824271439716271149

`and(-1, A082025(A001844(n)))`
-/

namespace A082189.P5824271439716271149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082025 (A001844 n).toNat)

end

end A082189.P5824271439716271149

/-! ## A082189.P15614238419462464417

`A082025(A001844(n))%A017030(n)`
-/

namespace A082189.P15614238419462464417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082025 (A001844 n).toNat) (A017030 n)

end

end A082189.P15614238419462464417

/-! ## A082189.P5591904146114622550

`A007318(∑[n])*A082025(A001844(n))`
-/

namespace A082189.P5591904146114622550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A082025 (A001844 n).toNat

end

end A082189.P5591904146114622550

/-! ## A082189.P11674981247569956722

`A082025(A001844(n))*A108561(∑[n])`
-/

namespace A082189.P11674981247569956722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A001844 n).toNat * A108561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082189.P11674981247569956722

/-! ## A082189.P7679064896499833228

`A082025(A001844(n))/A007318(C(2, n))`
-/

namespace A082189.P7679064896499833228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082025 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A082189.P7679064896499833228

/-! ## A082189.P8473335044023612962

`A082025(A001844(n))^A007318(C(n, 2))`
-/

namespace A082189.P8473335044023612962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082025 (A001844 n).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A082189.P8473335044023612962

/-! ## A082189.P6835000688649634351

`A082025(A001844(n))+A008683(8*n+4)`
-/

namespace A082189.P6835000688649634351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A001844 n).toNat + A008683 (8 * n + 4)

end

end A082189.P6835000688649634351

/-! ## A082189.P5636834681036050548

`A082025(A001844(n))+floor(n/(n+1))*A000045(n)`
-/

namespace A082189.P5636834681036050548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082025 (A001844 n).toNat + ⌊(n : ℚ) / (n + 1 : ℚ)⌋ * A000045 n

end

end A082189.P5636834681036050548

/-!
# A082190: Antidiagonal sums of square array A082025.

The programs for A082190, there is no canonical definition to state claims against.
-/

/-! ## A082190.P12435320467259880317

`A328668(∑[∑[A181819(3*n+1)]])`
-/

namespace A082190.P12435320467259880317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328668 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082190.P12435320467259880317

/-! ## A082190.P18352133401839948302

`A353744(A000664(n))+A005894(n)`
-/

namespace A082190.P18352133401839948302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353744 (A000664 n).toNat + A005894 n

end

end A082190.P18352133401839948302

/-!
# A082192: First row of array in A082191.

The programs for A082192, there is no canonical definition to state claims against.
-/

/-! ## A082192.P87343775774362576

`A082191(A128918(n+1))`
-/

namespace A082192.P87343775774362576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082191 (A128918 (n + 1)).toNat

end

end A082192.P87343775774362576

/-! ## A082192.P2388831479388839744

`A082191(A266304(n)+1)`
-/

namespace A082192.P2388831479388839744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082191 (A266304 n + 1).toNat

end

end A082192.P2388831479388839744

/-!
# A082193: First column of array in A082191.

The programs for A082193, there is no canonical definition to state claims against.
-/

/-! ## A082193.P12244862716770837324

`A082191(A131179(n+1))`
-/

namespace A082193.P12244862716770837324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082191 (A131179 (n + 1)).toNat

end

end A082193.P12244862716770837324

/-!
# A082194: Main diagonal of array in A082191.

The programs for A082194, there is no canonical definition to state claims against.
-/

/-! ## A082194.P8336316460955323284

`A082191((n+1)²+n²)`
-/

namespace A082194.P8336316460955323284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082191 ((n + 1) ^ 2 + n ^ 2)

end

end A082194.P8336316460955323284

/-!
# A082196: Triangle read by rows in which the n-th row contains n distinct numbers (not occurring earlier) such that every entry is coprime to its neighbor in all directions.

The programs for A082196, there is no canonical definition to state claims against.
-/

/-! ## A082196.P2068396515052925453

`A098284(lt[A000931(n), A003961(3*n+1)])`
-/

namespace A082196.P2068396515052925453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098284 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A082196.P2068396515052925453

/-! ## A082196.P13869733516718918849

`A098284(n+1)+A000038(A049411(n+1))`
-/

namespace A082196.P13869733516718918849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098284 (n + 1) + A000038 (A049411 (n + 1)).toNat

end

end A082196.P13869733516718918849

/-! ## A082196.P9487729230754645524

`A141213(A098284(n+1))-3`
-/

namespace A082196.P9487729230754645524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A098284 (n + 1)).toNat - 3

end

end A082196.P9487729230754645524

/-! ## A082196.P144440139903787773

`A098284(n+1)%A131581(n+4)`
-/

namespace A082196.P144440139903787773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098284 (n + 1)) (A131581 (n + 4))

end

end A082196.P144440139903787773

/-! ## A082196.P3744562257914431662

`A098287(A098285(A098284(n+1)))`
-/

namespace A082196.P3744562257914431662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098287 (A098285 (A098284 (n + 1)).toNat).toNat

end

end A082196.P3744562257914431662

/-!
# A082197: Diagonal of triangle in A082196.

The programs for A082197, there is no canonical definition to state claims against.
-/

/-! ## A082197.P13191265725948251185

`A082196(∑[1+n])`
-/

namespace A082197.P13191265725948251185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082196 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082197.P13191265725948251185

/-! ## A082197.P4291068575302424138

`or(char[1], A082196(A000217(n+1)))`
-/

namespace A082197.P4291068575302424138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A082196 (A000217 (n + 1)).toNat)

end

end A082197.P4291068575302424138

/-! ## A082197.P10830998395905245612

`A082196(A000217(n+1))%A022379(n)`
-/

namespace A082197.P10830998395905245612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082196 (A000217 (n + 1)).toNat) (A022379 n)

end

end A082197.P10830998395905245612

/-! ## A082197.P13425071109903173213

`lcm(A033999(n), A082196(A000217(n+1)))`
-/

namespace A082197.P13425071109903173213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A082196 (A000217 (n + 1)).toNat)

end

end A082197.P13425071109903173213

/-! ## A082197.P3264287292810907442

`A057427(n+1)*A082196(A000217(n+1))`
-/

namespace A082197.P3264287292810907442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A082196 (A000217 (n + 1)).toNat

end

end A082197.P3264287292810907442

/-! ## A082197.P10431429968277762899

`A007318(C(2, n))*A082196(A000217(n+1))`
-/

namespace A082197.P10431429968277762899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A082196 (A000217 (n + 1)).toNat

end

end A082197.P10431429968277762899

/-! ## A082197.P16372789486814583765

`A082196(A000217(n+1))/A007318(C(n, 2))`
-/

namespace A082197.P16372789486814583765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082196 (A000217 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A082197.P16372789486814583765

/-!
# A082198: First column of triangle in A082196.

The programs for A082198, there is no canonical definition to state claims against.
-/

/-! ## A082198.P8218331855945729181

`A082196(∑[n]+1)`
-/

namespace A082198.P8218331855945729181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082196 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082198.P8218331855945729181

/-! ## A082198.P7779988367010474575

`or(char[2], A082196(A000124(n)))`
-/

namespace A082198.P7779988367010474575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A082196 (A000124 n).toNat)

end

end A082198.P7779988367010474575

/-! ## A082198.P7993349110566760965

`A082196(A000124(n))%A016826(n)`
-/

namespace A082198.P7993349110566760965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082196 (A000124 n).toNat) (A016826 n)

end

end A082198.P7993349110566760965

/-! ## A082198.P5544594692840512412

`gcd(A000038(n), A082196(A000124(n)))`
-/

namespace A082198.P5544594692840512412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A082196 (A000124 n).toNat)

end

end A082198.P5544594692840512412

/-! ## A082198.P9887072362849118844

`A007318(∑[n])*A082196(A000124(n))`
-/

namespace A082198.P9887072362849118844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A082196 (A000124 n).toNat

end

end A082198.P9887072362849118844

/-! ## A082198.P486582300256267493

`A082196(A000124(n))+A000007(n+1)`
-/

namespace A082198.P486582300256267493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082196 (A000124 n).toNat + A000007 (n + 1)

end

end A082198.P486582300256267493

/-! ## A082198.P13517845859441853701

`A000041(C(2, n+2))*A082196(A000124(n))`
-/

namespace A082198.P13517845859441853701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A082196 (A000124 n).toNat

end

end A082198.P13517845859441853701

/-!
# A082199: Sum of n-th row of triangle in A082196.

The programs for A082199, there is no canonical definition to state claims against.
-/

/-! ## A082199.P15431294695561409214

`record[Δ[A224937(2*n)]-n]`
-/

namespace A082199.P15431294695561409214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224937 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082199.P15431294695561409214

/-! ## A082199.P13156740374631630320

`∑[A299703(A301076(n))]`
-/

namespace A082199.P13156740374631630320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299703 (A301076 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082199.P13156740374631630320

