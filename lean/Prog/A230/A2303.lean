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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A230300: a(n) = n + wt(n-1), where wt() = A000120() is the binary weight.

The programs for A230300, the canonical program `A230300.P756127149429480426` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230300 has offset 1).

The definition of A230300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230300.P756127149429480426

`n+1+A000120(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230300

/-- `n+1+A000120(n)` -/
def P756127149429480426.Spec : Prop :=
  ∀ n, P756127149429480426.a n = A230300 (n + 1)

theorem P756127149429480426.correct : P756127149429480426.Spec := by
  intro n
  simp only [A230300, Nat.add_sub_cancel]

end A230300

/-! ## A230300.P7924208946140478219

`a(n-1)+2-val(n, 2)` with `a(0)=1`
-/

namespace A230300.P7924208946140478219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 - (SequenceMachineLib.valuation n 2 : ℤ))

end

end A230300.P7924208946140478219

namespace A230300

/-- `a(n-1)+2-val(n, 2)` -/
def P7924208946140478219.Spec : Prop :=
  ∀ n, P7924208946140478219.a n = A230300 (n + 1)

end A230300

/-! ## A230300.P10552594538700447092

`2-(val(n, 2)-a(n-1))` with `a(0)=1`
-/

namespace A230300.P10552594538700447092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((SequenceMachineLib.valuation n 2 : ℤ) - a (n - 1))

end

end A230300.P10552594538700447092

namespace A230300

/-- `2-(val(n, 2)-a(n-1))` -/
def P10552594538700447092.Spec : Prop :=
  ∀ n, P10552594538700447092.a n = A230300 (n + 1)

end A230300

/-! ## A230300.P2700245917084533433

`∑[2-val(abs(1-n)+1, 2)]`
-/

namespace A230300.P2700245917084533433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230300.P2700245917084533433

namespace A230300

/-- `∑[2-val(abs(1-n)+1, 2)]` -/
def P2700245917084533433.Spec : Prop :=
  ∀ n, P2700245917084533433.a n = A230300 (n + 1)

end A230300

/-! ## A230300.P6058180162451392991

`∑[a(∑[n]%n)-1]-2` with `a(0)=3`
-/

namespace A230300.P6058180162451392991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A230300.P6058180162451392991

namespace A230300

/-- `∑[a(∑[n]%n)-1]-2` -/
def P6058180162451392991.Spec : Prop :=
  ∀ n, P6058180162451392991.a n = A230300 (n + 1)

end A230300

/-! ## A230300.P6530369947663976687

`∑[1-∑{e}[or(n, -n), #]]+n`
-/

namespace A230300.P6530369947663976687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A230300.P6530369947663976687

namespace A230300

/-- `∑[1-∑{e}[or(n, -n), #]]+n` -/
def P6530369947663976687.Spec : Prop :=
  ∀ n, P6530369947663976687.a n = A230300 (n + 1)

end A230300

/-! ## A230300.P15382679215077885722

`∑{e}[2*a(and(n, n-1)), #]+n` with `a(0)=2`
-/

namespace A230300.P15382679215077885722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + n

end

end A230300.P15382679215077885722

namespace A230300

/-- `∑{e}[2*a(and(n, n-1)), #]+n` -/
def P15382679215077885722.Spec : Prop :=
  ∀ n, (P15382679215077885722.a n : ℤ) = A230300 (n + 1)

end A230300

/-! ## A230300.P13231884200625787021

`A092391(n)+1`
-/

namespace A230300.P13231884200625787021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n + 1

end

end A230300.P13231884200625787021

namespace A230300

/-- `A092391(n)+1` -/
def P13231884200625787021.Spec : Prop :=
  ∀ n, P13231884200625787021.a n = A230300 (n + 1)

theorem P13231884200625787021.correct : P13231884200625787021.Spec := by
  intro n
  simp only [A230300, Nat.add_sub_cancel, A230300.P13231884200625787021.a, A230300.P756127149429480426.a, A000120, A000120.P2816527436160941581.a, A092391, A092391.P1831081500129819331.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230300

/-! ## A230300.P8772609842576823249

`∑[A088705(n)+1]`
-/

namespace A230300.P8772609842576823249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230300.P8772609842576823249

namespace A230300

/-- `∑[A088705(n)+1]` -/
def P8772609842576823249.Spec : Prop :=
  ∀ n, P8772609842576823249.a n = A230300 (n + 1)

end A230300

/-! ## A230300.P9744127626186311334

`log2(A117973(n))+n`
-/

namespace A230300.P9744127626186311334
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117973 n : ℝ) + (n : ℝ)

end

end A230300.P9744127626186311334

namespace A230300

/-- `log2(A117973(n))+n` -/
def P9744127626186311334.Spec : Prop :=
  ∀ n, P9744127626186311334.a n = (A230300 (n + 1) : ℝ)

end A230300

/-! ## A230300.P5917074241826643580

`A063787(n+1)+n`
-/

namespace A230300.P5917074241826643580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1) + (n : ℤ)

end

end A230300.P5917074241826643580

namespace A230300

/-- `A063787(n+1)+n` -/
def P5917074241826643580.Spec : Prop :=
  ∀ n, P5917074241826643580.a n = A230300 (n + 1)

theorem P5917074241826643580.correct : P5917074241826643580.Spec := by
  intro n
  simp only [A230300, Nat.add_sub_cancel, A230300.P5917074241826643580.a, A230300.P756127149429480426.a, A000120, A000120.P2816527436160941581.a, A063787, A063787.P13236937262237871159.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230300

/-! ## A230300.P2445719337345664229

`val(A256257(n), 2)+n`
-/

namespace A230300.P2445719337345664229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A256257 n).toNat 2 + n

end

end A230300.P2445719337345664229

namespace A230300

/-- `val(A256257(n), 2)+n` -/
def P2445719337345664229.Spec : Prop :=
  ∀ n, (P2445719337345664229.a n : ℤ) = A230300 (n + 1)

end A230300

/-! ## A230300.P4139916756572326287

`floor(log2(A160713(n))+n)`
-/

namespace A230300.P4139916756572326287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A160713 n : ℝ) + (n : ℝ)⌋

end

end A230300.P4139916756572326287

namespace A230300

/-- `floor(log2(A160713(n))+n)` -/
def P4139916756572326287.Spec : Prop :=
  ∀ n, P4139916756572326287.a n = A230300 (n + 1)

end A230300

/-! ## A230300.P187426272726507856

`Δ[n²]-A011371(n)`
-/

namespace A230300.P187426272726507856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A011371 n

end

end A230300.P187426272726507856

namespace A230300

/-- `Δ[n²]-A011371(n)` -/
def P187426272726507856.Spec : Prop :=
  ∀ n, P187426272726507856.a n = A230300 (n + 1)

end A230300

/-! ## A230300.P99590447100025722

`(n+1)²-A134467(n)`
-/

namespace A230300.P99590447100025722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A134467 n

end

end A230300.P99590447100025722

namespace A230300

/-- `(n+1)²-A134467(n)` -/
def P99590447100025722.Spec : Prop :=
  ∀ n, P99590447100025722.a n = A230300 (n + 1)

theorem P99590447100025722.correct : P99590447100025722.Spec := by
  intro n
  simp only [A230300, Nat.add_sub_cancel, A230300.P99590447100025722.a, A230300.P756127149429480426.a, A000120, A000120.P2816527436160941581.a, A134467, A134467.P13825419003851249081.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230300

/-! ## A230300.P9686794395203534048

`log2(A001316(2*n+1))+n`
-/

namespace A230300.P9686794395203534048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (2 * n + 1) : ℝ) + (n : ℝ)

end

end A230300.P9686794395203534048

namespace A230300

/-- `log2(A001316(2*n+1))+n` -/
def P9686794395203534048.Spec : Prop :=
  ∀ n, P9686794395203534048.a n = (A230300 (n + 1) : ℝ)

end A230300

/-! ## A230300.P5627948332600530742

`A249154(n)/(n+1)+n+1`
-/

namespace A230300.P5627948332600530742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249154 n : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A230300.P5627948332600530742

namespace A230300

/-- `A249154(n)/(n+1)+n+1` -/
def P5627948332600530742.Spec : Prop :=
  ∀ n, P5627948332600530742.a n = (A230300 (n + 1) : ℚ)

theorem P5627948332600530742.correct : P5627948332600530742.Spec := by
  intro n
  simp only [A230300, Nat.add_sub_cancel, A230300.P5627948332600530742.a, A230300.P756127149429480426.a, A000120, A000120.P2816527436160941581.a, A249154, A249154.P2345966816674260141.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230300

/-! ## A230300.P13682284039533767899

`A000005(A001316(n))+n`
-/

namespace A230300.P13682284039533767899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 n).toNat + (n : ℤ)

end

end A230300.P13682284039533767899

namespace A230300

/-- `A000005(A001316(n))+n` -/
def P13682284039533767899.Spec : Prop :=
  ∀ n, P13682284039533767899.a n = A230300 (n + 1)

end A230300

/-! ## A230300.P10640615522937856561

`A304106(A057334(n))+n`
-/

namespace A230300.P10640615522937856561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304106 (A057334 n).toNat + (n : ℤ)

end

end A230300.P10640615522937856561

namespace A230300

/-- `A304106(A057334(n))+n` -/
def P10640615522937856561.Spec : Prop :=
  ∀ n, P10640615522937856561.a n = A230300 (n + 1)

end A230300

/-! ## A230300.P914393331323076440

`A233272(n)+A145037(n)`
-/

namespace A230300.P914393331323076440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n + A145037 n

end

end A230300.P914393331323076440

namespace A230300

/-- `A233272(n)+A145037(n)` -/
def P914393331323076440.Spec : Prop :=
  ∀ n, P914393331323076440.a n = A230300 (n + 1)

end A230300

/-!
# A230301: Positive numbers not of the form m + wt(m-1), m >= 1.

The programs for A230301, the canonical program `A230301.P11949614508306179088` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230301 has offset 1).

The definition of A230301 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010061, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230301.P11949614508306179088

`A010061(n+1)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230301

/-- `A010061(n+1)+1` -/
def P11949614508306179088.Spec : Prop :=
  ∀ n, P11949614508306179088.a n = A230301 (n + 1)

theorem P11949614508306179088.correct : P11949614508306179088.Spec := by
  intro n
  simp only [A230301, Nat.add_sub_cancel]

end A230301

/-! ## A230301.P254038765855608197

`record[(A228082(n+1)+1)%A228082(n+2)]+1`
-/

namespace A230301.P254038765855608197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228082 (n + 1) + 1) (A228082 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A230301.P254038765855608197

namespace A230301

/-- `record[(A228082(n+1)+1)%A228082(n+2)]+1` -/
def P254038765855608197.Spec : Prop :=
  ∀ n, P254038765855608197.a n = A230301 (n + 1)

end A230301

/-! ## A230301.P3067850015922527643

`A347438(A006881(3*n+1))+comp[A228082(n+1)]+1`
-/

namespace A230301.P3067850015922527643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (A006881 (3 * n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + 1

end

end A230301.P3067850015922527643

namespace A230301

/-- `A347438(A006881(3*n+1))+comp[A228082(n+1)]+1` -/
def P3067850015922527643.Spec : Prop :=
  ∀ n, P3067850015922527643.a n = A230301 (n + 1)

end A230301

/-! ## A230301.P5335707807445049154

`A010872(3*n+1)+comp[A228082(n+1)]`
-/

namespace A230301.P5335707807445049154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (3 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A230301.P5335707807445049154

namespace A230301

/-- `A010872(3*n+1)+comp[A228082(n+1)]` -/
def P5335707807445049154.Spec : Prop :=
  ∀ n, P5335707807445049154.a n = A230301 (n + 1)

end A230301

/-! ## A230301.P1179326553348724909

`A011655(3*n+2)+comp[A228082(n+1)]`
-/

namespace A230301.P1179326553348724909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (3 * n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A230301.P1179326553348724909

namespace A230301

/-- `A011655(3*n+2)+comp[A228082(n+1)]` -/
def P1179326553348724909.Spec : Prop :=
  ∀ n, P1179326553348724909.a n = A230301 (n + 1)

end A230301

/-! ## A230301.P7171269456113588931

`A047996(A240668(3*n+4))+comp[A228082(n+1)]`
-/

namespace A230301.P7171269456113588931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228082 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A240668 (3 * n + 4)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A230301.P7171269456113588931

namespace A230301

/-- `A047996(A240668(3*n+4))+comp[A228082(n+1)]` -/
def P7171269456113588931.Spec : Prop :=
  ∀ n, P7171269456113588931.a n = A230301 (n + 1)

end A230301

/-! ## A230301.P12213845221195533416

`eq[1, A227643(n+1)]+2`
-/

namespace A230301.P12213845221195533416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A230301.P12213845221195533416

namespace A230301

/-- `eq[1, A227643(n+1)]+2` -/
def P12213845221195533416.Spec : Prop :=
  ∀ n, (P12213845221195533416.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P8595123065477291799

`A020725(A010061(n+1))`
-/

namespace A230301.P8595123065477291799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A010061 (n + 1)).toNat

end

end A230301.P8595123065477291799

namespace A230301

/-- `A020725(A010061(n+1))` -/
def P8595123065477291799.Spec : Prop :=
  ∀ n, P8595123065477291799.a n = A230301 (n + 1)

end A230301

/-! ## A230301.P9885980569584422283

`eq[0, A228085(n)]+1`
-/

namespace A230301.P9885980569584422283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230301.P9885980569584422283

namespace A230301

/-- `eq[0, A228085(n)]+1` -/
def P9885980569584422283.Spec : Prop :=
  ∀ n, (P9885980569584422283.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P6603947512677326576

`lt[A228086(n+1), 1]+2`
-/

namespace A230301.P6603947512677326576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A230301.P6603947512677326576

namespace A230301

/-- `lt[A228086(n+1), 1]+2` -/
def P6603947512677326576.Spec : Prop :=
  ∀ n, (P6603947512677326576.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P12945638868550073797

`lt[A228087(n+1), 1]+2`
-/

namespace A230301.P12945638868550073797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A230301.P12945638868550073797

namespace A230301

/-- `lt[A228087(n+1), 1]+2` -/
def P12945638868550073797.Spec : Prop :=
  ∀ n, (P12945638868550073797.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P3197034266106678687

`eq[A000007(n), A228086(n)]+1`
-/

namespace A230301.P3197034266106678687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230301.P3197034266106678687

namespace A230301

/-- `eq[A000007(n), A228086(n)]+1` -/
def P3197034266106678687.Spec : Prop :=
  ∀ n, (P3197034266106678687.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P3599154370734565389

`eq[A000007(n), A228087(n)]+1`
-/

namespace A230301.P3599154370734565389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230301.P3599154370734565389

namespace A230301

/-- `eq[A000007(n), A228087(n)]+1` -/
def P3599154370734565389.Spec : Prop :=
  ∀ n, (P3599154370734565389.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P11721672228154127830

`eq[A000038(n), A228086(n)]+1`
-/

namespace A230301.P11721672228154127830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230301.P11721672228154127830

namespace A230301

/-- `eq[A000038(n), A228086(n)]+1` -/
def P11721672228154127830.Spec : Prop :=
  ∀ n, (P11721672228154127830.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P1378871453662277961

`eq[A000038(n), A228087(n)]+1`
-/

namespace A230301.P1378871453662277961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230301.P1378871453662277961

namespace A230301

/-- `eq[A000038(n), A228087(n)]+1` -/
def P1378871453662277961.Spec : Prop :=
  ∀ n, (P1378871453662277961.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P17802913301416087063

`eq[A154281(n+1), A228086(n)]+1`
-/

namespace A230301.P17802913301416087063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230301.P17802913301416087063

namespace A230301

/-- `eq[A154281(n+1), A228086(n)]+1` -/
def P17802913301416087063.Spec : Prop :=
  ∀ n, (P17802913301416087063.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P11922771587752022888

`eq[A156297(n+1), A228086(n)]+1`
-/

namespace A230301.P11922771587752022888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230301.P11922771587752022888

namespace A230301

/-- `eq[A156297(n+1), A228086(n)]+1` -/
def P11922771587752022888.Spec : Prop :=
  ∀ n, (P11922771587752022888.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P8572949569328825940

`lt[char[A092391(n)], 1]+1`
-/

namespace A230301.P8572949569328825940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A230301.P8572949569328825940

namespace A230301

/-- `lt[char[A092391(n)], 1]+1` -/
def P8572949569328825940.Spec : Prop :=
  ∀ n, (P8572949569328825940.a n : ℤ) = A230301 (n + 1)

end A230301

/-! ## A230301.P8722995866991198463

`1-A001489(comp[A092391(n)])`
-/

namespace A230301.P8722995866991198463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A230301.P8722995866991198463

namespace A230301

/-- `1-A001489(comp[A092391(n)])` -/
def P8722995866991198463.Spec : Prop :=
  ∀ n, P8722995866991198463.a n = A230301 (n + 1)

end A230301

/-!
# A230305: Iterate A080670 starting at n; a(n) = number of steps to reach a prime, or -1 if no prime is ever reached.

The programs for A230305, there is no canonical definition to state claims against.
-/

/-! ## A230305.P15860444578375034698

`A008347(and(A005187(n), A345058(n+1)))`
-/

namespace A230305.P15860444578375034698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (Int.land (A005187 n) (A345058 (n + 1))).toNat

end

end A230305.P15860444578375034698

/-! ## A230305.P1996088615555708467

`(A004736(A188792(n+1)+1)*A346700(n+2))%(n+1)`
-/

namespace A230305.P1996088615555708467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (A188792 (n + 1) + 1).toNat * A346700 (n + 2)) (n + 1 : ℤ)

end

end A230305.P1996088615555708467

/-! ## A230305.P8315306738873478487

`(3%comp[∑[n]]+n)%A095955(A002624(2*n))`
-/

namespace A230305.P8315306738873478487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℕ) : ℤ) (A095955 (A002624 (2 * n)).toNat)

end

end A230305.P8315306738873478487

/-! ## A230305.P2679573094019481684

`A123310(n)%A255238(A341949(2*(n+4)))`
-/

namespace A230305.P2679573094019481684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123310 n) (A255238 (A341949 (2 * (n + 4))).toNat)

end

end A230305.P2679573094019481684

/-! ## A230305.P1926659196455253118

`A122202(A153787(n+2)%A316656(2*(n+2)))`
-/

namespace A230305.P1926659196455253118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 (Int.tmod (A153787 (n + 2)) (A316656 (2 * (n + 2)))).toNat

end

end A230305.P1926659196455253118

/-!
# A230306: Evil numbers (A001969) which can be written as a product of two evil numbers > 1.

The programs for A230306, there is no canonical definition to state claims against.
-/

/-! ## A230306.P2751774558535546899

`A351870(3*A080307(n+1))`
-/

namespace A230306.P2751774558535546899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (3 * A080307 (n + 1)).toNat

end

end A230306.P2751774558535546899

/-! ## A230306.P553967493729444911

`A351870(3*A165740(n+1))`
-/

namespace A230306.P553967493729444911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (3 * A165740 (n + 1)).toNat

end

end A230306.P553967493729444911

/-! ## A230306.P17658325624254623928

`eq[1, A038194(A173458(n+1))]`
-/

namespace A230306.P17658325624254623928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (A173458 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230306.P17658325624254623928

/-! ## A230306.P16820433750750868863

`filter[A066385(2*(n+2)), A104108(#)]`
-/

namespace A230306.P16820433750750868863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066385 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104108 (f1 j).toNat = 1) n)

end

end A230306.P16820433750750868863

/-! ## A230306.P11652128743428590037

`A000120(A110288(n))*A001969(n+2)`
-/

namespace A230306.P11652128743428590037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A110288 n).toNat * A001969 (n + 2)

end

end A230306.P11652128743428590037

/-!
# A230308: Numbers k such that the sum over the k-th powers of all Gaussian integers in the k X k base square in the first quadrant is == 0 (mod k).

The programs for A230308, there is no canonical definition to state claims against.
-/

/-! ## A230308.P2692521269100991295

`lt[A004601(A024785(n+1)), A257695(n)]`
-/

namespace A230308.P2692521269100991295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (A024785 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230308.P2692521269100991295

/-! ## A230308.P6230474870172184966

`lt[n, A030105(A105638(n+3))]`
-/

namespace A230308.P6230474870172184966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A105638 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A230308.P6230474870172184966

/-! ## A230308.P10161834026975292421

`lt[A020725(A027113(n+1)), A276076(n)]`
-/

namespace A230308.P10161834026975292421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A027113 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230308.P10161834026975292421

/-! ## A230308.P6676985929005606618

`lt[A074206(n), A240708(A191119(n+1))]`
-/

namespace A230308.P6676985929005606618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240708 (A191119 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230308.P6676985929005606618

/-! ## A230308.P10902486593593787020

`lt[A004396(n), A277012(A277012(n))]`
-/

namespace A230308.P10902486593593787020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277012 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230308.P10902486593593787020

/-! ## A230308.P6282345006961741281

`lt[A004525(n), A277012(A277012(n))]`
-/

namespace A230308.P6282345006961741281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277012 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230308.P6282345006961741281

/-! ## A230308.P4388616175759412242

`lt[A006257(n), A277012(A277012(n))]`
-/

namespace A230308.P4388616175759412242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277012 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230308.P4388616175759412242

/-! ## A230308.P2609895016390496584

`lt[A064770(n), A277012(A277012(n))]`
-/

namespace A230308.P2609895016390496584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277012 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230308.P2609895016390496584

/-! ## A230308.P422970364596994738

`lt[A065033(n), A277012(A277012(n))]`
-/

namespace A230308.P422970364596994738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277012 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230308.P422970364596994738

/-! ## A230308.P766996952126887286

`lt[A072480(n), A277012(A277012(n))]`
-/

namespace A230308.P766996952126887286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277012 (A277012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230308.P766996952126887286

/-!
# A230309: Sum_{0<=a<24*n, 0<=b<24*n} (a+b*i)^(24*n) (mod 24*n), where i is the imaginary unit.

The programs for A230309, there is no canonical definition to state claims against.
-/

/-! ## A230309.P15509146420967539790

`8*(n+1)*A140084(A126646(n))`
-/

namespace A230309.P15509146420967539790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℤ) * A140084 (A126646 n).toNat

end

end A230309.P15509146420967539790

/-! ## A230309.P3899371091927186605

`A022144((8*(n+1))²)%A022144(3*(n+1))`
-/

namespace A230309.P3899371091927186605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 ((8 * (n + 1)) ^ 2)) (A022144 (3 * (n + 1)))

end

end A230309.P3899371091927186605

/-! ## A230309.P2906324270581253159

`A010872(n+1)*A022144(A077741(n+1))`
-/

namespace A230309.P2906324270581253159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (n + 1) * A022144 (A077741 (n + 1)).toNat

end

end A230309.P2906324270581253159

/-! ## A230309.P15194816669498750344

`A010872(A000292(3*(n+1)))*A022144(n+1)`
-/

namespace A230309.P15194816669498750344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000292 (3 * (n + 1))).toNat * A022144 (n + 1)

end

end A230309.P15194816669498750344

/-! ## A230309.P3726810054478090490

`A007814(A000792(2*(n+1)))*A276573(3*(n+1))`
-/

namespace A230309.P3726810054478090490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000792 (2 * (n + 1))).toNat * A276573 (3 * (n + 1))

end

end A230309.P3726810054478090490

/-!
# A230310: Numbers k such that Sum_{a=0..72*k-1, b=0..72*k-1} (a+b*i)^(72*k) !== 0 (mod 72*k), where i is the imaginary unit.

The programs for A230310, there is no canonical definition to state claims against.
-/

/-! ## A230310.P4274970868480346372

`lt[1, A230309(3*(n+1))]+1`
-/

namespace A230310.P4274970868480346372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230309 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A230310.P4274970868480346372

/-!
# A230311: Numbers n such that 1^(k*n) + 2^(k*n) + ... + (k*n)^(k*n) == k (mod k*n) for some k; that is, numbers n such that A031971(k*n) == k (mod k*n) for some k.

The programs for A230311, there is no canonical definition to state claims against.
-/

/-! ## A230311.P13595132202775239303

`A226963(n+3)/5`
-/

namespace A230311.P13595132202775239303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226963 (n + 3) : ℚ) / 5

end

end A230311.P13595132202775239303

/-! ## A230311.P7035445168418681970

`A349193(A037406(n+1))`
-/

namespace A230311.P7035445168418681970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349193 (A037406 (n + 1)).toNat

end

end A230311.P7035445168418681970

/-! ## A230311.P13493365673420597767

`A349193(record[A262747(n+1)])`
-/

namespace A230311.P13493365673420597767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349193 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230311.P13493365673420597767

/-!
# A230312: Squares which cannot be written as the sum of a smaller nonzero square and twice a triangular number.

The programs for A230312, there is no canonical definition to state claims against.
-/

/-! ## A230312.P11849466257394219181

`floor(p?[or(1, n²)]/4)`
-/

namespace A230312.P11849466257394219181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4⌋

end

end A230312.P11849466257394219181

/-! ## A230312.P9838870565154542520

`floor(p?[xor(1, n²)]/4)`
-/

namespace A230312.P9838870565154542520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4⌋

end

end A230312.P9838870565154542520

/-! ## A230312.P8954796895589959442

`round(p?[or(1, n²)]/4)`
-/

namespace A230312.P8954796895589959442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4)

end

end A230312.P8954796895589959442

/-! ## A230312.P16679313247791443689

`round(p?[xor(1, n²)]/4)`
-/

namespace A230312.P16679313247791443689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4)

end

end A230312.P16679313247791443689

/-! ## A230312.P18270293729155863562

`(p?[or(1, n²)]-1)/4`
-/

namespace A230312.P18270293729155863562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 4

end

end A230312.P18270293729155863562

/-!
# A230313: Numbers n such that A031971(47058*n) <> n (mod 47058*n).

The programs for A230313, there is no canonical definition to state claims against.
-/

/-! ## A230313.P15751990395830265014

`comp[(5*n)^gcd(28, n)]`
-/

namespace A230313.P15751990395830265014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * n) ^ Nat.gcd 28 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230313.P15751990395830265014

/-! ## A230313.P1806211864072802440

`lt[lcm(14, n)/14, lcm(5, n)]`
-/

namespace A230313.P1806211864072802440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 14 n : ℚ) / 14

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A230313.P1806211864072802440

/-! ## A230313.P6076299668411142802

`comp[5*(∏{p}[n, #]-1+n)]`
-/

namespace A230313.P6076299668411142802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1 + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230313.P6076299668411142802

/-! ## A230313.P18048418681498535540

`comp[∑[2*a(gcd(3, n+1))]]` with `a(0)=0, a(1)=5, a(2)=0`
-/

namespace A230313.P18048418681498535540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 0] fun n f2 =>
  2 * f2 (Nat.gcd 3 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230313.P18048418681498535540

/-! ## A230313.P12642684527291829858

`comp[5*(2*and(n, a(n-1))+1)]` with `a(0)=0`
-/

namespace A230313.P12642684527291829858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  5 * (2 * Nat.land n (f1 (n - 1)) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230313.P12642684527291829858

/-! ## A230313.P3406826101855408026

`comp[A060320(n)-15]`
-/

namespace A230313.P3406826101855408026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060320 n - 15

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230313.P3406826101855408026

/-! ## A230313.P758269445983294454

`comp[lcm(5, A151917(n))]`
-/

namespace A230313.P758269445983294454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A151917 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230313.P758269445983294454

/-! ## A230313.P13680880669395488925

`comp[5*A104195(n+1)]`
-/

namespace A230313.P13680880669395488925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A104195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230313.P13680880669395488925

/-! ## A230313.P16836411557658241049

`∪[A358849(n+1), A004277(n)]`
-/

namespace A230313.P16836411557658241049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230313.P16836411557658241049

/-!
# A230314: Numbers that are simultaneously the sum of two nonnegative squares and the sum of two nonnegative cubes.

The programs for A230314, there is no canonical definition to state claims against.
-/

/-! ## A230314.P12665729910675294265

`filter[A004999(n+1), A229062(#)]`
-/

namespace A230314.P12665729910675294265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A230314.P12665729910675294265

/-! ## A230314.P10393303418931728589

`∩[A001481(n+1), A004999(n+1)]`
-/

namespace A230314.P10393303418931728589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230314.P10393303418931728589

/-! ## A230314.P4239087039271651538

`eq[0, A351338(n)+A070176(n)]`
-/

namespace A230314.P4239087039271651538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351338 n + A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230314.P4239087039271651538

/-! ## A230314.P4358940009402221166

`eq[0, A351376(n)+A070176(n)]`
-/

namespace A230314.P4358940009402221166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351376 n + A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230314.P4358940009402221166

/-! ## A230314.P5053938011447364563

`eq[0, A351338(n)^A000161(n)]`
-/

namespace A230314.P5053938011447364563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351338 n : ℚ) ^ (A000161 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A230314.P5053938011447364563

/-! ## A230314.P12379359548204339612

`eq[0, A351376(n)^A000161(n)]`
-/

namespace A230314.P12379359548204339612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351376 n : ℚ) ^ (A000161 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A230314.P12379359548204339612

/-! ## A230314.P1221281348731947026

`eq[0, A351338(n)^A000925(n)]`
-/

namespace A230314.P1221281348731947026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351338 n : ℚ) ^ (A000925 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A230314.P1221281348731947026

/-! ## A230314.P4826741257841151584

`eq[0, A351376(n)^A000925(n)]`
-/

namespace A230314.P4826741257841151584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351376 n : ℚ) ^ (A000925 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A230314.P4826741257841151584

/-!
# A230316: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Product_{k=1..n} A(2^k*x).

The programs for A230316, there is no canonical definition to state claims against.
-/

/-! ## A230316.P5885883856684915694

`or(A008619(n), A039219(A159592(n)))`
-/

namespace A230316.P5885883856684915694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008619 n) (A039219 (A159592 n).toNat)

end

end A230316.P5885883856684915694

/-! ## A230316.P15049409453574982445

`or(A039219(A159592(n)), A071542(n))`
-/

namespace A230316.P15049409453574982445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A039219 (A159592 n).toNat) (A071542 n)

end

end A230316.P15049409453574982445

/-!
# A230317: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n/n! * Product_{k=1..n} A(k*x).

The programs for A230317, there is no canonical definition to state claims against.
-/

/-! ## A230317.P6905431597559910113

`A189717(A203320(∑[n]))+1`
-/

namespace A230317.P6905431597559910113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189717 (A203320 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A230317.P6905431597559910113

/-! ## A230317.P9428902858840547448

`xor(A004525(A298694(n)), A033440(n))`
-/

namespace A230317.P9428902858840547448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004525 (A298694 n).toNat) (A033440 n)

end

end A230317.P9428902858840547448

/-!
# A230318: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n/n! * Product_{k=1..n} A(k*x)^(1/k).

The programs for A230318, there is no canonical definition to state claims against.
-/

/-! ## A230318.P11061492151391431712

`A025429(A042272(n)+A005568(n))`
-/

namespace A230318.P11061492151391431712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 (A042272 n + A005568 n).toNat

end

end A230318.P11061492151391431712

/-! ## A230318.P12363657219044788665

`A004526(A331316(n))+A003242(n)`
-/

namespace A230318.P12363657219044788665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A331316 n).toNat + A003242 n

end

end A230318.P12363657219044788665

/-!
# A230319: Least positive k such that k! > k^n.

The programs for A230319, there is no canonical definition to state claims against.
-/

/-! ## A230319.P18192796853882100604

`A135664(A000267(∑[∑[n]+1]))+1+n`
-/

namespace A230319.P18192796853882100604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A000267 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1 + (n : ℤ)

end

end A230319.P18192796853882100604

/-! ## A230319.P7160411278261081636

`A097992(A183990(2*n+3)-1)`
-/

namespace A230319.P7160411278261081636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A183990 (2 * n + 3) - 1).toNat

end

end A230319.P7160411278261081636

/-! ## A230319.P11572645851400894270

`A341969(A300831(n+5))+A164087(n+1)`
-/

namespace A230319.P11572645851400894270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341969 (A300831 (n + 5)).toNat + A164087 (n + 1)

end

end A230319.P11572645851400894270

/-!
# A230320: E.g.f.: Sum_{n>=0} x^n/n! * Product_{k=1..n} ( LambertW(-k*x)/(-k*x) )^(1/k).

The programs for A230320, there is no canonical definition to state claims against.
-/

/-! ## A230320.P10903936644573848696

`A011371(A020554(n)+2)`
-/

namespace A230320.P10903936644573848696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A020554 n + 2).toNat

end

end A230320.P10903936644573848696

/-! ## A230320.P6558891314862811118

`A395121(n^(2-Δ[A269757(n)]))`
-/

namespace A230320.P6558891314862811118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269757 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395121 (SequenceMachineLib.roundAway ((n : ℚ) ^ (2 - (f1 (n + 1) - f1 n) : ℤ))).toNat

end

end A230320.P6558891314862811118

/-!
# A230321: E.g.f.: Sum_{n>=0} x^n/n! * Product_{k=1..n} LambertW(-k*x)/(-k*x).

The programs for A230321, there is no canonical definition to state claims against.
-/

/-! ## A230321.P10861957937153333544

`A147309(3*n)+A000720(A351143(2*n))`
-/

namespace A230321.P10861957937153333544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147309 (3 * n) + A000720 (A351143 (2 * n)).toNat

end

end A230321.P10861957937153333544

/-!
# A230322: Expansion of f(-x^3, -x^4) / f(-x^2,-x^5) in powers of x where f(,) is Ramanujan's two-variable theta function.

The programs for A230322, there is no canonical definition to state claims against.
-/

/-! ## A230322.P12801549175806245531

`-A229894(7*n+1)`
-/

namespace A230322.P12801549175806245531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A229894 (7 * n + 1)

end

end A230322.P12801549175806245531

/-! ## A230322.P9799595707340885048

`A000038(n+1)-A229894(A016993(n))`
-/

namespace A230322.P9799595707340885048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A229894 (A016993 n).toNat

end

end A230322.P9799595707340885048

/-! ## A230322.P396360225506015638

`A000007(n+4)-A229894(A016993(n))`
-/

namespace A230322.P396360225506015638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 4) - A229894 (A016993 n).toNat

end

end A230322.P396360225506015638

/-! ## A230322.P12265698947607337546

`A000038(n)%2-A229894(A016993(n))`
-/

namespace A230322.P12265698947607337546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000038 n) 2 - A229894 (A016993 n).toNat

end

end A230322.P12265698947607337546

/-! ## A230322.P4565750497964542759

`A001504(n)%2-A229894(A016993(n))`
-/

namespace A230322.P4565750497964542759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001504 n) 2 - A229894 (A016993 n).toNat

end

end A230322.P4565750497964542759

/-! ## A230322.P78755274659968047

`A002378(n)%2-A229894(A016993(n))`
-/

namespace A230322.P78755274659968047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 n) 2 - A229894 (A016993 n).toNat

end

end A230322.P78755274659968047

/-! ## A230322.P11258892484643037850

`A002448(A002476(n+1))-A229894(A016993(n))`
-/

namespace A230322.P11258892484643037850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (A002476 (n + 1)).toNat - A229894 (A016993 n).toNat

end

end A230322.P11258892484643037850

/-!
# A230324: a(n) = A226158(n) - 2*A226158(n+1).

The programs for A230324, there is no canonical definition to state claims against.
-/

/-! ## A230324.P16296787048206725586

`A226158(n)-2*A226158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230324.P16296787048206725586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 n - 2 * A226158 (n + 1)

end

end A230324.P16296787048206725586

/-! ## A230324.P6670571629237884514

`A240677(n)+A240485(n)`
-/

namespace A230324.P6670571629237884514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240677 n + A240485 n

end

end A230324.P6670571629237884514

/-! ## A230324.P2057216154688349566

`Δ[∑[-A226158(n)]-A226158(n)]`
-/

namespace A230324.P2057216154688349566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226158 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A226158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230324.P2057216154688349566

/-! ## A230324.P12928846469728029905

`Δ[Δ[A226158(n)]]-A226158(n+2)`
-/

namespace A230324.P12928846469728029905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A226158 (n + 2)

end

end A230324.P12928846469728029905

/-! ## A230324.P8164511452850182062

`A240485(n)+A240485(n)+5*A226158(n)`
-/

namespace A230324.P8164511452850182062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240485 n + (A240485 n + 5 * A226158 n)

end

end A230324.P8164511452850182062

/-! ## A230324.P1725815767000441936

`Δ[A109573(n)]/2^(n-1)`
-/

namespace A230324.P1725815767000441936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109573 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A230324.P1725815767000441936

/-!
# A230325: (prime(n)^2 -1)*(prime(n)^2 - prime(n))/2.

The programs for A230325, the canonical program `A230325.P14663863721190125391` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230325 has offset 1).

The definition of A230325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230325.P14663863721190125391

`(A000040(n+1)²-1)*(A000040(n+1)²-A000040(n+1))/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230325

/-- `(A000040(n+1)²-1)*(A000040(n+1)²-A000040(n+1))/2` -/
def P14663863721190125391.Spec : Prop :=
  ∀ n, P14663863721190125391.a n = (A230325 (n + 1) : ℚ)

end A230325

/-! ## A230325.P15336097709603332894

`A244509(n+1)/2`
-/

namespace A230325.P15336097709603332894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244509 (n + 1) : ℚ) / 2

end

end A230325.P15336097709603332894

namespace A230325

/-- `A244509(n+1)/2` -/
def P15336097709603332894.Spec : Prop :=
  ∀ n, P15336097709603332894.a n = (A230325 (n + 1) : ℚ)

end A230325

/-! ## A230325.P914527918563684609

`A138423(n+1)-A008837(n+1)`
-/

namespace A230325.P914527918563684609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138423 (n + 1) - A008837 (n + 1)

end

end A230325.P914527918563684609

namespace A230325

/-- `A138423(n+1)-A008837(n+1)` -/
def P914527918563684609.Spec : Prop :=
  ∀ n, P914527918563684609.a n = A230325 (n + 1)

end A230325

/-! ## A230325.P374591715794321092

`A138418(n+1)-A127918(n+1)`
-/

namespace A230325.P374591715794321092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) - A127918 (n + 1)

end

end A230325.P374591715794321092

namespace A230325

/-- `A138418(n+1)-A127918(n+1)` -/
def P374591715794321092.Spec : Prop :=
  ∀ n, P374591715794321092.a n = A230325 (n + 1)

end A230325

/-! ## A230325.P5499304582046352972

`A005722(n+1)*A034953(n+1)`
-/

namespace A230325.P5499304582046352972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005722 (n + 1) * A034953 (n + 1)

end

end A230325.P5499304582046352972

namespace A230325

/-- `A005722(n+1)*A034953(n+1)` -/
def P5499304582046352972.Spec : Prop :=
  ∀ n, P5499304582046352972.a n = A230325 (n + 1)

end A230325

/-! ## A230325.P10376840823463300684

`A008837(n+1)*A084920(n+1)`
-/

namespace A230325.P10376840823463300684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) * A084920 (n + 1)

end

end A230325.P10376840823463300684

namespace A230325

/-- `A008837(n+1)*A084920(n+1)` -/
def P10376840823463300684.Spec : Prop :=
  ∀ n, P10376840823463300684.a n = A230325 (n + 1)

end A230325

/-! ## A230325.P389009560854508476

`A006093(n+1)*A127918(n+1)`
-/

namespace A230325.P389009560854508476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A127918 (n + 1)

end

end A230325.P389009560854508476

namespace A230325

/-- `A006093(n+1)*A127918(n+1)` -/
def P389009560854508476.Spec : Prop :=
  ∀ n, P389009560854508476.a n = A230325 (n + 1)

end A230325

/-! ## A230325.P1735424996306114128

`A034953(n+1)*A036689(n+1)-A127918(n+1)`
-/

namespace A230325.P1735424996306114128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) * A036689 (n + 1) - A127918 (n + 1)

end

end A230325.P1735424996306114128

namespace A230325

/-- `A034953(n+1)*A036689(n+1)-A127918(n+1)` -/
def P1735424996306114128.Spec : Prop :=
  ∀ n, P1735424996306114128.a n = A230325 (n + 1)

end A230325

/-! ## A230325.P13283999603791641856

`A000040(n+1)*A127918(n+1)-A127918(n+1)`
-/

namespace A230325.P13283999603791641856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A127918 (n + 1) - A127918 (n + 1)

end

end A230325.P13283999603791641856

namespace A230325

/-- `A000040(n+1)*A127918(n+1)-A127918(n+1)` -/
def P13283999603791641856.Spec : Prop :=
  ∀ n, P13283999603791641856.a n = A230325 (n + 1)

end A230325

/-! ## A230325.P7218447990943010315

`A047927(p?[round(8*n/7)]+1)/2`
-/

namespace A230325.P7218447990943010315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047927 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat : ℚ) / 2

end

end A230325.P7218447990943010315

namespace A230325

/-- `A047927(p?[round(8*n/7)]+1)/2` -/
def P7218447990943010315.Spec : Prop :=
  ∀ n, P7218447990943010315.a n = (A230325 (n + 1) : ℚ)

end A230325

/-! ## A230325.P14373011819480444404

`A000252(Δ[A007504(n)])/2`
-/

namespace A230325.P14373011819480444404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A230325.P14373011819480444404

namespace A230325

/-- `A000252(Δ[A007504(n)])/2` -/
def P14373011819480444404.Spec : Prop :=
  ∀ n, P14373011819480444404.a n = (A230325 (n + 1) : ℚ)

end A230325

/-! ## A230325.P7057298129079441507

`A005353(Δ[A007504(n)])/2`
-/

namespace A230325.P7057298129079441507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005353 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A230325.P7057298129079441507

namespace A230325

/-- `A005353(Δ[A007504(n)])/2` -/
def P7057298129079441507.Spec : Prop :=
  ∀ n, P7057298129079441507.a n = (A230325 (n + 1) : ℚ)

end A230325

/-! ## A230325.P15240756735549367092

`A000252(A000040(n+1))/2`
-/

namespace A230325.P15240756735549367092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (A000040 (n + 1)).toNat : ℚ) / 2

end

end A230325.P15240756735549367092

namespace A230325

/-- `A000252(A000040(n+1))/2` -/
def P15240756735549367092.Spec : Prop :=
  ∀ n, P15240756735549367092.a n = (A230325 (n + 1) : ℚ)

end A230325

/-!
# A230327: Index of smallest prime such that the sum of n consecutive primes starting with this specific prime is a square.

The programs for A230327, there is no canonical definition to state claims against.
-/

/-! ## A230327.P5910065093131975596

`A000720(A073887(n+2))`
-/

namespace A230327.P5910065093131975596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073887 (n + 2)).toNat

end

end A230327.P5910065093131975596

/-! ## A230327.P15095297026010264192

`A000720(A132955(n+2))`
-/

namespace A230327.P15095297026010264192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A132955 (n + 2)).toNat

end

end A230327.P15095297026010264192

/-! ## A230327.P15491156462379850410

`A061395(p?[A073887(n+1)])`
-/

namespace A230327.P15491156462379850410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A230327.P15491156462379850410

/-! ## A230327.P8817359681582660629

`A061395(2*A073887(n+2))`
-/

namespace A230327.P8817359681582660629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A073887 (n + 2)).toNat

end

end A230327.P8817359681582660629

/-! ## A230327.P6886359982211781160

`A061395(2*A132955(n+2))`
-/

namespace A230327.P6886359982211781160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A132955 (n + 2)).toNat

end

end A230327.P6886359982211781160

/-! ## A230327.P12859604005193558301

`A061395(lcm(2, A132955(n+2)))`
-/

namespace A230327.P12859604005193558301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A132955 (n + 2)))

end

end A230327.P12859604005193558301

/-! ## A230327.P17932622524415464830

`A000720(p?[A073887(A028310(n))])`
-/

namespace A230327.P17932622524415464830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073887 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A230327.P17932622524415464830

/-!
# A230328: Denominator of n(n+3)/(4(n+1)(n+2)) = Sum_{k = 1..n} 1/(k(k+1)(k+2)).

The programs for A230328, the canonical program `A230328.P11994195958477506296` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230328 has offset 0).

The definition of A230328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230328.P11994195958477506296

`4*(n+1)*(n+2)/gcd(4*(n+1)*(n+2), n*(n+3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230328

/-- `4*(n+1)*(n+2)/gcd(4*(n+1)*(n+2), n*(n+3))` -/
def P11994195958477506296.Spec : Prop :=
  ∀ n, P11994195958477506296.a n = (A230328 n : ℚ)

end A230328

/-! ## A230328.P1657364608292761915

`A000034(A173234(n))*A257942(n)`
-/

namespace A230328.P1657364608292761915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A173234 n).toNat * A257942 n

end

end A230328.P1657364608292761915

namespace A230328

/-- `A000034(A173234(n))*A257942(n)` -/
def P1657364608292761915.Spec : Prop :=
  ∀ n, P1657364608292761915.a n = A230328 n

end A230328

/-! ## A230328.P15110492858981941278

`∑[n+1]*A176895(A014682(n))`
-/

namespace A230328.P15110492858981941278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A176895 (A014682 n).toNat

end

end A230328.P15110492858981941278

namespace A230328

/-- `∑[n+1]*A176895(A014682(n))` -/
def P15110492858981941278.Spec : Prop :=
  ∀ n, P15110492858981941278.a n = A230328 n

end A230328

/-! ## A230328.P4808434910743087660

`A000217(n+1)*A176895(A007494(n))`
-/

namespace A230328.P4808434910743087660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A176895 (A007494 n).toNat

end

end A230328.P4808434910743087660

namespace A230328

/-- `A000217(n+1)*A176895(A007494(n))` -/
def P4808434910743087660.Spec : Prop :=
  ∀ n, P4808434910743087660.a n = A230328 n

end A230328

/-! ## A230328.P936314404583026505

`A176895(A014682(n))*A246274(2*n+1)`
-/

namespace A230328.P936314404583026505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (A014682 n).toNat * A246274 (2 * n + 1)

end

end A230328.P936314404583026505

namespace A230328

/-- `A176895(A014682(n))*A246274(2*n+1)` -/
def P936314404583026505.Spec : Prop :=
  ∀ n, P936314404583026505.a n = A230328 n

end A230328

/-! ## A230328.P16397252315061416919

`∑[n+1]*A090284(A225539(n+1))`
-/

namespace A230328.P16397252315061416919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A090284 (A225539 (n + 1)).toNat

end

end A230328.P16397252315061416919

namespace A230328

/-- `∑[n+1]*A090284(A225539(n+1))` -/
def P16397252315061416919.Spec : Prop :=
  ∀ n, P16397252315061416919.a n = A230328 n

end A230328

/-! ## A230328.P18211744040482549583

`A000034(A160050(n+1))*A257942(n)`
-/

namespace A230328.P18211744040482549583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A160050 (n + 1)).toNat * A257942 n

end

end A230328.P18211744040482549583

namespace A230328

/-- `A000034(A160050(n+1))*A257942(n)` -/
def P18211744040482549583.Spec : Prop :=
  ∀ n, P18211744040482549583.a n = A230328 n

end A230328

/-! ## A230328.P7220164167672623363

`C(n+2, 2)*A176895(A000217(n)+n)`
-/

namespace A230328.P7220164167672623363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A176895 (A000217 n + (n : ℤ)).toNat

end

end A230328.P7220164167672623363

namespace A230328

/-- `C(n+2, 2)*A176895(A000217(n)+n)` -/
def P7220164167672623363.Spec : Prop :=
  ∀ n, P7220164167672623363.a n = A230328 n

end A230328

/-! ## A230328.P10202160300484425095

`∑[n+1]*A176895(A000124(n+5))`
-/

namespace A230328.P10202160300484425095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A176895 (A000124 (n + 5)).toNat

end

end A230328.P10202160300484425095

namespace A230328

/-- `∑[n+1]*A176895(A000124(n+5))` -/
def P10202160300484425095.Spec : Prop :=
  ∀ n, P10202160300484425095.a n = A230328 n

end A230328

/-! ## A230328.P10729850058615899912

`A178182(∑[4*(n+1)])`
-/

namespace A230328.P10729850058615899912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178182 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230328.P10729850058615899912

namespace A230328

/-- `A178182(∑[4*(n+1)])` -/
def P10729850058615899912.Spec : Prop :=
  ∀ n, P10729850058615899912.a n = A230328 n

end A230328

/-!
# A230329: Prime(prime(2*n)) - 2*prime(n).

The programs for A230329, the canonical program `A230329.P11921175631725488359` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230329 has offset 1).

The definition of A230329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(2*(n+1)))-2*A000040(n+1)` (program `A230329.P11921175631725488359`, by `A230329.P11921175631725488359.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A230329.P11302817196728521229

`A217622(n+1)-A100484(n+1)`
-/

namespace A230329.P11302817196728521229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217622 (n + 1) - A100484 (n + 1)

end

end A230329.P11302817196728521229

namespace A230329

/-- `A217622(n+1)-A100484(n+1)` -/
def P11302817196728521229.Spec : Prop :=
  ∀ n, P11302817196728521229.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P13825875676166062991

`A217622(n+1)-2*A000040(n+1)`
-/

namespace A230329.P13825875676166062991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217622 (n + 1) - 2 * A000040 (n + 1)

end

end A230329.P13825875676166062991

namespace A230329

/-- `A217622(n+1)-2*A000040(n+1)` -/
def P13825875676166062991.Spec : Prop :=
  ∀ n, P13825875676166062991.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P11921175631725488359

`A000040(A000040(2*(n+1)))-2*A000040(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230329

/-- `A000040(A000040(2*(n+1)))-2*A000040(n+1)` -/
def P11921175631725488359.Spec : Prop :=
  ∀ n, P11921175631725488359.a n = A230329 (n + 1)

theorem P11921175631725488359.correct : P11921175631725488359.Spec := by
  intro n
  simp only [A230329, Nat.add_sub_cancel]

end A230329

/-! ## A230329.P6319192448271214200

`A006450(2*(n+1))-A100484(n+1)`
-/

namespace A230329.P6319192448271214200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * (n + 1)) - A100484 (n + 1)

end

end A230329.P6319192448271214200

namespace A230329

/-- `A006450(2*(n+1))-A100484(n+1)` -/
def P6319192448271214200.Spec : Prop :=
  ∀ n, P6319192448271214200.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P13806462146263744505

`A006450(2*(n+1))-(A072055(n+1)-1)`
-/

namespace A230329.P13806462146263744505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * (n + 1)) - (A072055 (n + 1) - 1)

end

end A230329.P13806462146263744505

namespace A230329

/-- `A006450(2*(n+1))-(A072055(n+1)-1)` -/
def P13806462146263744505.Spec : Prop :=
  ∀ n, P13806462146263744505.a n = A230329 (n + 1)

theorem P13806462146263744505.correct : P13806462146263744505.Spec := by
  intro n
  simp only [A230329, Nat.add_sub_cancel, A230329.P13806462146263744505.a, A230329.P11921175631725488359.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230329

/-! ## A230329.P16700928005595196154

`A066066(n+1)+A217622(n+1)-A031215(n+1)`
-/

namespace A230329.P16700928005595196154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + (A217622 (n + 1) - A031215 (n + 1))

end

end A230329.P16700928005595196154

namespace A230329

/-- `A066066(n+1)+A217622(n+1)-A031215(n+1)` -/
def P16700928005595196154.Spec : Prop :=
  ∀ n, P16700928005595196154.a n = A230329 (n + 1)

theorem P16700928005595196154.correct : P16700928005595196154.Spec := by
  intro n
  simp only [A230329, Nat.add_sub_cancel, A230329.P16700928005595196154.a, A230329.P11921175631725488359.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A066066, A066066.P16664765326660587690.a, A217622, A217622.P13107653143399971552.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230329

/-! ## A230329.P2244685800146697586

`A230460(n+1)+A230481(n+1)-A100484(n+1)`
-/

namespace A230329.P2244685800146697586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230460 (n + 1) + (A230481 (n + 1) - A100484 (n + 1))

end

end A230329.P2244685800146697586

namespace A230329

/-- `A230460(n+1)+A230481(n+1)-A100484(n+1)` -/
def P2244685800146697586.Spec : Prop :=
  ∀ n, P2244685800146697586.a n = A230329 (n + 1)

theorem P2244685800146697586.correct : P2244685800146697586.Spec := by
  intro n
  simp only [A230329, Nat.add_sub_cancel, A230329.P2244685800146697586.a, A230329.P11921175631725488359.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A100484, A100484.P9678625670825099636.a, A230460, A230460.P9993362887016346577.a, A230481, A230481.P14652723980952249607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230329

/-! ## A230329.P4959975210517718105

`A217622(n+1)-A001747(n+2)`
-/

namespace A230329.P4959975210517718105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217622 (n + 1) - A001747 (n + 2)

end

end A230329.P4959975210517718105

namespace A230329

/-- `A217622(n+1)-A001747(n+2)` -/
def P4959975210517718105.Spec : Prop :=
  ∀ n, P4959975210517718105.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P3191934796227618880

`A006450(2*(n+1))-2*A008578(n+2)`
-/

namespace A230329.P3191934796227618880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * (n + 1)) - 2 * A008578 (n + 2)

end

end A230329.P3191934796227618880

namespace A230329

/-- `A006450(2*(n+1))-2*A008578(n+2)` -/
def P3191934796227618880.Spec : Prop :=
  ∀ n, P3191934796227618880.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P512847807725201822

`A006450(2*(n+1))-2*A182986(n+2)`
-/

namespace A230329.P512847807725201822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 * (n + 1)) - 2 * A182986 (n + 2)

end

end A230329.P512847807725201822

namespace A230329

/-- `A006450(2*(n+1))-2*A182986(n+2)` -/
def P512847807725201822.Spec : Prop :=
  ∀ n, P512847807725201822.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P17540483827745976405

`A066066(n+1)+A014689(A031215(n+1))`
-/

namespace A230329.P17540483827745976405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + A014689 (A031215 (n + 1)).toNat

end

end A230329.P17540483827745976405

namespace A230329

/-- `A066066(n+1)+A014689(A031215(n+1))` -/
def P17540483827745976405.Spec : Prop :=
  ∀ n, P17540483827745976405.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P14565917406704840135

`A000040(A031215(n+1))-A100484(n+1)`
-/

namespace A230329.P14565917406704840135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A031215 (n + 1)).toNat - A100484 (n + 1)

end

end A230329.P14565917406704840135

namespace A230329

/-- `A000040(A031215(n+1))-A100484(n+1)` -/
def P14565917406704840135.Spec : Prop :=
  ∀ n, P14565917406704840135.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P5629420422718140775

`A000040(A031215(n+1))-2*A000040(n+1)`
-/

namespace A230329.P5629420422718140775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A031215 (n + 1)).toNat - 2 * A000040 (n + 1)

end

end A230329.P5629420422718140775

namespace A230329

/-- `A000040(A031215(n+1))-2*A000040(n+1)` -/
def P5629420422718140775.Spec : Prop :=
  ∀ n, P5629420422718140775.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P2789812615917860912

`A000040(A000040(2*(n+1)))-A100484(n+1)`
-/

namespace A230329.P2789812615917860912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (2 * (n + 1))).toNat - A100484 (n + 1)

end

end A230329.P2789812615917860912

namespace A230329

/-- `A000040(A000040(2*(n+1)))-A100484(n+1)` -/
def P2789812615917860912.Spec : Prop :=
  ∀ n, P2789812615917860912.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P9470082071437930486

`A000040(A000040(2*(n+1)))-A001747(n+2)`
-/

namespace A230329.P9470082071437930486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (2 * (n + 1))).toNat - A001747 (n + 2)

end

end A230329.P9470082071437930486

namespace A230329

/-- `A000040(A000040(2*(n+1)))-A001747(n+2)` -/
def P9470082071437930486.Spec : Prop :=
  ∀ n, P9470082071437930486.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P9989161986518401842

`A006005(A006005(2*(n+1)))-A001747(n+2)`
-/

namespace A230329.P9989161986518401842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A006005 (2 * (n + 1))).toNat - A001747 (n + 2)

end

end A230329.P9989161986518401842

namespace A230329

/-- `A006005(A006005(2*(n+1)))-A001747(n+2)` -/
def P9989161986518401842.Spec : Prop :=
  ∀ n, P9989161986518401842.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P4414089035686828477

`A000040(A000040(2*(n+1)))-record[A061228(n+2)]`
-/

namespace A230329.P4414089035686828477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (2 * (n + 1))).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230329.P4414089035686828477

namespace A230329

/-- `A000040(A000040(2*(n+1)))-record[A061228(n+2)]` -/
def P4414089035686828477.Spec : Prop :=
  ∀ n, P4414089035686828477.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P6508142736164473703

`A000040(A000040(2*(n+1)))-record[A074320(n+2)]`
-/

namespace A230329.P6508142736164473703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (2 * (n + 1))).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230329.P6508142736164473703

namespace A230329

/-- `A000040(A000040(2*(n+1)))-record[A074320(n+2)]` -/
def P6508142736164473703.Spec : Prop :=
  ∀ n, P6508142736164473703.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P1797754999107127771

`A000040(A000040(2*(n+1)))-record[A074828(n+2)]`
-/

namespace A230329.P1797754999107127771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (2 * (n + 1))).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230329.P1797754999107127771

namespace A230329

/-- `A000040(A000040(2*(n+1)))-record[A074828(n+2)]` -/
def P1797754999107127771.Spec : Prop :=
  ∀ n, P1797754999107127771.a n = A230329 (n + 1)

end A230329

/-! ## A230329.P4212646173872420938

`A000040(A000040(2*(n+1)))-record[A143545(n+2)]`
-/

namespace A230329.P4212646173872420938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (2 * (n + 1))).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230329.P4212646173872420938

namespace A230329

/-- `A000040(A000040(2*(n+1)))-record[A143545(n+2)]` -/
def P4212646173872420938.Spec : Prop :=
  ∀ n, P4212646173872420938.a n = A230329 (n + 1)

end A230329

/-!
# A230330: Number of n X n 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230330, there is no canonical definition to state claims against.
-/

/-! ## A230330.P15434608177998246001

`A230337((n+1)²+n²)`
-/

namespace A230330.P15434608177998246001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 ((n + 1) ^ 2 + n ^ 2)

end

end A230330.P15434608177998246001

/-!
# A230331: Number of n X 2 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230331, the canonical program `A230331.P3626220658529726427` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230331 has offset 1).

The definition of A230331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230331.P12095034439746148049

`ogf((6x+4x^2)/(1-5x-8x^2-4x^3))`
-/

namespace A230331.P12095034439746148049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 4] [1, -5, -8, -4] n

end

end A230331.P12095034439746148049

namespace A230331

/-- `ogf((6x+4x^2)/(1-5x-8x^2-4x^3))` -/
def P12095034439746148049.Spec : Prop :=
  ∀ n, P12095034439746148049.a n = A230331 (n + 1)

end A230331

/-! ## A230331.P3626220658529726427

`5*a(n-1)+8*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=6, a(2)=34`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230331

/-- `5*a(n-1)+8*a(n-2)+4*a(n-3)` -/
def P3626220658529726427.Spec : Prop :=
  ∀ n, (P3626220658529726427.a n : ℤ) = A230331 (n + 1)

theorem P3626220658529726427.correct : P3626220658529726427.Spec := by
  intro n
  simp only [A230331, Nat.add_sub_cancel]

end A230331

/-! ## A230331.P14246033797419516879

`2*(A120925(2*n)-A111281(2*n))`
-/

namespace A230331.P14246033797419516879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120925 (2 * n) - A111281 (2 * n))

end

end A230331.P14246033797419516879

namespace A230331

/-- `2*(A120925(2*n)-A111281(2*n))` -/
def P14246033797419516879.Spec : Prop :=
  ∀ n, P14246033797419516879.a n = A230331 (n + 1)

end A230331

/-! ## A230331.P16298776470462170312

`∑[A115219(2*n+1)+A115219(2*n)]`
-/

namespace A230331.P16298776470462170312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115219 (2 * n + 1) + A115219 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230331.P16298776470462170312

namespace A230331

/-- `∑[A115219(2*n+1)+A115219(2*n)]` -/
def P16298776470462170312.Spec : Prop :=
  ∀ n, P16298776470462170312.a n = A230331 (n + 1)

end A230331

/-! ## A230331.P11604064256411383309

`A230337(∑[n+1]+2)`
-/

namespace A230331.P11604064256411383309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230331.P11604064256411383309

namespace A230331

/-- `A230337(∑[n+1]+2)` -/
def P11604064256411383309.Spec : Prop :=
  ∀ n, P11604064256411383309.a n = A230331 (n + 1)

end A230331

/-!
# A230332: Number of nX3 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230332, there is no canonical definition to state claims against.
-/

/-! ## A230332.P17185089307212654778

`A230337(∑[n+2]+4)`
-/

namespace A230332.P17185089307212654778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230332.P17185089307212654778

/-! ## A230332.P3728579664038402549

`lcm(2, A230337(A167614(n+1)))`
-/

namespace A230332.P3728579664038402549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230337 (A167614 (n + 1)).toNat)

end

end A230332.P3728579664038402549

/-! ## A230332.P5185054643890867832

`A230337(A167614(n+1))+A025439(n)`
-/

namespace A230332.P5185054643890867832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (A167614 (n + 1)).toNat + A025439 n

end

end A230332.P5185054643890867832

/-! ## A230332.P10028059444619201630

`A230337(A167614(n+1))+A185044(n)`
-/

namespace A230332.P10028059444619201630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (A167614 (n + 1)).toNat + A185044 n

end

end A230332.P10028059444619201630

/-! ## A230332.P18228107600064695151

`A230337(A167614(n+1))%A235746(n+1)`
-/

namespace A230332.P18228107600064695151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230337 (A167614 (n + 1)).toNat) (A235746 (n + 1))

end

end A230332.P18228107600064695151

/-!
# A230333: Number of nX4 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230333, there is no canonical definition to state claims against.
-/

/-! ## A230333.P16228487683014308966

`A230337(∑[n+5]+5-2*n)`
-/

namespace A230333.P16228487683014308966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (∑ j ∈ Finset.range (n + 1), f1 j + 5 - 2 * n)

end

end A230333.P16228487683014308966

/-! ## A230333.P15133847443541084490

`lcm(2, A230337(A052905(n)+9))`
-/

namespace A230333.P15133847443541084490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230337 (A052905 n + 9).toNat)

end

end A230333.P15133847443541084490

/-! ## A230333.P1295898611315706816

`A008835(n+1)*A230337(A141214(n)+7)`
-/

namespace A230333.P1295898611315706816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A230337 (A141214 n + 7).toNat

end

end A230333.P1295898611315706816

/-! ## A230333.P17629093285383182895

`A230337(A141214(n)+7)+A008683(49*(n+1))`
-/

namespace A230333.P17629093285383182895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (A141214 n + 7).toNat + A008683 (49 * (n + 1))

end

end A230333.P17629093285383182895

/-! ## A230333.P13037640940359214879

`record[char[A046691(n)]*A230337(n+1)]`
-/

namespace A230333.P13037640940359214879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A230337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230333.P13037640940359214879

/-!
# A230334: Number of nX5 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230334, there is no canonical definition to state claims against.
-/

/-! ## A230334.P11173576263772747625

`A230337(eq[6, A131818(n+1)])`
-/

namespace A230334.P11173576263772747625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230334.P11173576263772747625

/-! ## A230334.P14591127129464290651

`A230337(Δ[A264443(n)])`
-/

namespace A230334.P14591127129464290651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (f1 (n + 1) - f1 n).toNat

end

end A230334.P14591127129464290651

/-! ## A230334.P3563557768229062725

`A230337(A374005(n+1))`
-/

namespace A230334.P3563557768229062725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (A374005 (n + 1)).toNat

end

end A230334.P3563557768229062725

/-! ## A230334.P13280331575615597738

`A230337(A046691(n+3))`
-/

namespace A230334.P13280331575615597738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (A046691 (n + 3)).toNat

end

end A230334.P13280331575615597738

/-! ## A230334.P13892949459255333755

`A230337(eq[3, A152157(n)])`
-/

namespace A230334.P13892949459255333755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230334.P13892949459255333755

/-!
# A230335: Number of nX6 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230335, there is no canonical definition to state claims against.
-/

/-! ## A230335.P10202691719374735100

`A230337(eq[7, A131818(n+1)])`
-/

namespace A230335.P10202691719374735100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230335.P10202691719374735100

/-! ## A230335.P5012782816604906927

`A230337(A374007(n+1))`
-/

namespace A230335.P5012782816604906927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (A374007 (n + 1)).toNat

end

end A230335.P5012782816604906927

/-! ## A230335.P17465875967243172994

`A230337(eq[3, A219347(n)])`
-/

namespace A230335.P17465875967243172994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230335.P17465875967243172994

/-! ## A230335.P17283232459124098745

`A230337(eq[5, A193592(n)])`
-/

namespace A230335.P17283232459124098745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230335.P17283232459124098745

/-! ## A230335.P2376241591518032013

`A230337(eq[8, A258709(n)])`
-/

namespace A230335.P2376241591518032013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230335.P2376241591518032013

/-!
# A230336: Number of nX7 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230336, there is no canonical definition to state claims against.
-/

/-! ## A230336.P4816504703526401781

`A230337(A167499(n+5)+2)`
-/

namespace A230336.P4816504703526401781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (A167499 (n + 5) + 2).toNat

end

end A230336.P4816504703526401781

/-! ## A230336.P3760184614020041900

`A230337(eq[8, A131818(n+1)])`
-/

namespace A230336.P3760184614020041900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230336.P3760184614020041900

/-! ## A230336.P9598364059475414645

`A230337(A374008(n+1))`
-/

namespace A230336.P9598364059475414645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (A374008 (n + 1)).toNat

end

end A230336.P9598364059475414645

/-! ## A230336.P7631414100898480562

`A230337(eq[4, A219347(n)])`
-/

namespace A230336.P7631414100898480562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230336.P7631414100898480562

/-! ## A230336.P13073616081656783540

`A230337(eq[6, A193592(n)])`
-/

namespace A230336.P13073616081656783540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230337 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230336.P13073616081656783540

/-!
# A230337: T(n,k)=Number of nXk 0..2 arrays x(i,j) with each element horizontally, vertically or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230337, there is no canonical definition to state claims against.
-/

/-! ## A230337.P3786244903767465852

`A234521(A157211(n))-2`
-/

namespace A230337.P3786244903767465852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234521 (A157211 n).toNat - 2

end

end A230337.P3786244903767465852

/-! ## A230337.P17040509730206894791

`A157243(n)+A157385(A157243(n))-2`
-/

namespace A230337.P17040509730206894791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157243 n + (A157385 (A157243 n).toNat - 2)

end

end A230337.P17040509730206894791

/-! ## A230337.P8594363879227046297

`A230331(A007318(n)^A325563(2*n+3))`
-/

namespace A230337.P8594363879227046297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230331 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A325563 (2 * n + 3) : ℤ))).toNat

end

end A230337.P8594363879227046297

/-! ## A230337.P8322089488888415371

`A230331(A007318(n)%A341294(3*n+1))`
-/

namespace A230337.P8322089488888415371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230331 (Int.tmod (A007318 n) (A341294 (3 * n + 1))).toNat

end

end A230337.P8322089488888415371

/-! ## A230337.P3014862063266822479

`A230331(A276777(n))%A234521(A157211(n))`
-/

namespace A230337.P3014862063266822479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230331 (A276777 n).toNat) (A234521 (A157211 n).toNat)

end

end A230337.P3014862063266822479

/-!
# A230338: Recurrence equation: a(0) = 1 and a(n) = a(n-1)*sqrt(21*a(n-1)^2 + 4) for n >= 1.

The programs for A230338, the canonical program `A230338.P9750413813793210784` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230338 has offset 0).

The definition of A230338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230338.P9750413813793210784

`a(n-1)*sqrt(21*a(n-1)²+4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230338

/-- `a(n-1)*sqrt(21*a(n-1)²+4)` -/
def P9750413813793210784.Spec : Prop :=
  ∀ n, P9750413813793210784.a n = (A230338 n : ℝ)

end A230338

/-! ## A230338.P346955600144208447

`∏[a(n-1)²-2]` with `a(0)=1, a(1)=5`
-/

namespace A230338.P346955600144208447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A230338.P346955600144208447

namespace A230338

/-- `∏[a(n-1)²-2]` -/
def P346955600144208447.Spec : Prop :=
  ∀ n, P346955600144208447.a n = A230338 n

end A230338

/-! ## A230338.P14705527169344656796

`((a(n-1)/a(n-2))²-2)*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A230338.P14705527169344656796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((a (n - 1) / a (n - 2)) ^ 2 - 2) * a (n - 1)

end

end A230338.P14705527169344656796

namespace A230338

/-- `((a(n-1)/a(n-2))²-2)*a(n-1)` -/
def P14705527169344656796.Spec : Prop :=
  ∀ n, P14705527169344656796.a n = (A230338 n : ℚ)

end A230338

/-! ## A230338.P7619131288764431844

`A004254(2^n)`
-/

namespace A230338.P7619131288764431844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (2 ^ n)

end

end A230338.P7619131288764431844

namespace A230338

/-- `A004254(2^n)` -/
def P7619131288764431844.Spec : Prop :=
  ∀ n, P7619131288764431844.a n = A230338 n

end A230338

/-!
# A230339: Numerator of Sum_{k=1..n} 1/(k(k+1)(k+2)(k+3)) = Sum_{k=1..n} 1/Pochhammer(k,4).

The programs for A230339, the canonical program `A230339.P1379425537171027614` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230339 has offset 0).

The definition of A230339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230339.P1379425537171027614

`lcm(18, 1-∑[∑[n+1]])/18`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230339

/-- `lcm(18, 1-∑[∑[n+1]])/18` -/
def P1379425537171027614.Spec : Prop :=
  ∀ n, P1379425537171027614.a n = (A230339 n : ℚ)

end A230339

/-! ## A230339.P14977690822439885082

`A026741(A106610(∑[∑[n+1]]-1))`
-/

namespace A230339.P14977690822439885082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A106610 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A230339.P14977690822439885082

namespace A230339

/-- `A026741(A106610(∑[∑[n+1]]-1))` -/
def P14977690822439885082.Spec : Prop :=
  ∀ n, P14977690822439885082.a n = A230339 n

end A230339

/-! ## A230339.P9194953198510504218

`A106619(C(n+3, 3)-1)`
-/

namespace A230339.P9194953198510504218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (Nat.choose (n + 3) 3 - 1)

end

end A230339.P9194953198510504218

namespace A230339

/-- `A106619(C(n+3, 3)-1)` -/
def P9194953198510504218.Spec : Prop :=
  ∀ n, P9194953198510504218.a n = A230339 n

end A230339

/-! ## A230339.P12623995573043740459

`A106619(∑[∑[n+1]]-1)`
-/

namespace A230339.P12623995573043740459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A230339.P12623995573043740459

namespace A230339

/-- `A106619(∑[∑[n+1]]-1)` -/
def P12623995573043740459.Spec : Prop :=
  ∀ n, P12623995573043740459.a n = A230339 n

end A230339

/-!
# A230340: Denominator of Sum_{k=1..n} 1/(k(k+1)(k+2)(k+3)) = Sum_{k=1..n} 1/Pochhammer(k,4).

The programs for A230340, there is no canonical definition to state claims against.
-/

/-! ## A230340.P12227219885515651537

`A299160(A038761(n)-A214924(n+1))`
-/

namespace A230340.P12227219885515651537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299160 (A038761 n - A214924 (n + 1)).toNat

end

end A230340.P12227219885515651537

/-!
# A230341: Number of permutations of [2n] in which the longest increasing run has length n.

The programs for A230341, there is no canonical definition to state claims against.
-/

/-! ## A230341.P8222535213702193977

`A008304(A004277(n²))`
-/

namespace A230341.P8222535213702193977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A004277 (n ^ 2)).toNat

end

end A230341.P8222535213702193977

/-! ## A230341.P10042775313182360746

`A008304(A028310(2*n²))`
-/

namespace A230341.P10042775313182360746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A028310 (2 * n ^ 2)).toNat

end

end A230341.P10042775313182360746

/-! ## A230341.P810379237693256932

`A008304(n²+A028310(n²))`
-/

namespace A230341.P810379237693256932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A230341.P810379237693256932

/-! ## A230341.P8938214633382683258

`A008304(A233583(2*n+1)²/2)`
-/

namespace A230341.P8938214633382683258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (SequenceMachineLib.roundAway ((A233583 (2 * n + 1) ^ 2 : ℚ) / 2)).toNat

end

end A230341.P8938214633382683258

/-! ## A230341.P14583579563999475163

`A008304(floor(2/acot(n))*A233583(n+1))`
-/

namespace A230341.P14583579563999475163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * A233583 (n + 1)).toNat

end

end A230341.P14583579563999475163

/-!
# A230342: Number of permutations of [2n+2] in which the longest increasing run has length n+2.

The programs for A230342, there is no canonical definition to state claims against.
-/

/-! ## A230342.P11014659435222040055

`A008304(A058331(n+1))`
-/

namespace A230342.P11014659435222040055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A058331 (n + 1)).toNat

end

end A230342.P11014659435222040055

/-! ## A230342.P8695637978679898165

`A008304(A005408((n+1)²))`
-/

namespace A230342.P8695637978679898165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A005408 ((n + 1) ^ 2)).toNat

end

end A230342.P8695637978679898165

/-! ## A230342.P9136529568956142022

`A008304(A267873((n+1)²))`
-/

namespace A230342.P9136529568956142022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A267873 ((n + 1) ^ 2)).toNat

end

end A230342.P9136529568956142022

/-! ## A230342.P7800018863800946926

`A008304(∑[A016825(n)]+1)`
-/

namespace A230342.P7800018863800946926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A230342.P7800018863800946926

/-! ## A230342.P12866813689347588318

`A008304(A001105(n+1)+1)`
-/

namespace A230342.P12866813689347588318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A001105 (n + 1) + 1).toNat

end

end A230342.P12866813689347588318

/-!
# A230343: Number of permutations of [2n+3] in which the longest increasing run has length n+3.

The programs for A230343, there is no canonical definition to state claims against.
-/

/-! ## A230343.P11676500574576597859

`A122843(A051890(n+2))`
-/

namespace A230343.P11676500574576597859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A051890 (n + 2)).toNat

end

end A230343.P11676500574576597859

/-! ## A230343.P12322059697674900817

`A008304(A090288(n)+4)`
-/

namespace A230343.P12322059697674900817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A090288 n + 4).toNat

end

end A230343.P12322059697674900817

/-! ## A230343.P2739007900155422506

`A008304(A016825(∑[n+1]))`
-/

namespace A230343.P2739007900155422506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A230343.P2739007900155422506

/-! ## A230343.P6749230652543596058

`A008304(A001844(n+1)+1)`
-/

namespace A230343.P6749230652543596058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A001844 (n + 1) + 1).toNat

end

end A230343.P6749230652543596058

/-! ## A230343.P14985832630400638820

`A008304(A099776(n+1)+1)`
-/

namespace A230343.P14985832630400638820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A099776 (n + 1) + 1).toNat

end

end A230343.P14985832630400638820

/-!
# A230344: Number of permutations of [2n+4] in which the longest increasing run has length n+4.

The programs for A230344, there is no canonical definition to state claims against.
-/

/-! ## A230344.P7220192554464644269

`A008304((n+1)²+(n+3)²)`
-/

namespace A230344.P7220192554464644269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A230344.P7220192554464644269

/-! ## A230344.P10704265310902392325

`A010026(A001844(n+1))/2`
-/

namespace A230344.P10704265310902392325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010026 (A001844 (n + 1)).toNat : ℚ) / 2

end

end A230344.P10704265310902392325

/-! ## A230344.P5340497636683233899

`A010026(A099776(n+1))/2`
-/

namespace A230344.P5340497636683233899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010026 (A099776 (n + 1)).toNat : ℚ) / 2

end

end A230344.P5340497636683233899

/-! ## A230344.P6076536070069146220

`A010054(A106856(2*n+1))+A008304(A005893(n+2))`
-/

namespace A230344.P6076536070069146220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A106856 (2 * n + 1)).toNat + A008304 (A005893 (n + 2)).toNat

end

end A230344.P6076536070069146220

/-! ## A230344.P3812820370871550615

`A122843((n+1)²+(n+3)²)`
-/

namespace A230344.P3812820370871550615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 ((n + 1) ^ 2 + (n + 3) ^ 2)

end

end A230344.P3812820370871550615

/-!
# A230345: Number of permutations of [2n+5] in which the longest increasing run has length n+5.

The programs for A230345, there is no canonical definition to state claims against.
-/

/-! ## A230345.P2866401493384217671

`A008304(A001844(n+2)+2)`
-/

namespace A230345.P2866401493384217671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A001844 (n + 2) + 2).toNat

end

end A230345.P2866401493384217671

/-! ## A230345.P4136650452017537493

`A008304(A099776(n+2)+2)`
-/

namespace A230345.P4136650452017537493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A099776 (n + 2) + 2).toNat

end

end A230345.P4136650452017537493

/-! ## A230345.P2837079271222443761

`A122843(A051890(n+3)+1)`
-/

namespace A230345.P2837079271222443761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A051890 (n + 3) + 1).toNat

end

end A230345.P2837079271222443761

/-! ## A230345.P14506797851212309505

`A122843(A099776(n+2)+2)`
-/

namespace A230345.P14506797851212309505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A099776 (n + 2) + 2).toNat

end

end A230345.P14506797851212309505

/-! ## A230345.P4030128365442889388

`A008304(Δ[A143941(n+1)]+4)`
-/

namespace A230345.P4030128365442889388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (f1 (n + 1) - f1 n + 4).toNat

end

end A230345.P4030128365442889388

/-!
# A230346: Number of permutations of [2n+6] in which the longest increasing run has length n+6.

The programs for A230346, there is no canonical definition to state claims against.
-/

/-! ## A230346.P12284150360192316737

`A008304(A067728(n+1)+11)`
-/

namespace A230346.P12284150360192316737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A067728 (n + 1) + 11).toNat

end

end A230346.P12284150360192316737

/-! ## A230346.P15142745672000180713

`A008304(A166136(2*(n+2))+n)`
-/

namespace A230346.P15142745672000180713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A166136 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A230346.P15142745672000180713

/-! ## A230346.P13116773923898435691

`A008304(A000217(comp[2*(n+1)]+7)-n)`
-/

namespace A230346.P13116773923898435691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 7) - (n : ℤ)).toNat

end

end A230346.P13116773923898435691

/-! ## A230346.P5587970639424017972

`A122843(A067728(n+1)+11)`
-/

namespace A230346.P5587970639424017972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A067728 (n + 1) + 11).toNat

end

end A230346.P5587970639424017972

/-! ## A230346.P16751475729308354263

`A122843(A080036(2*((n+2)²+n+3)+1))`
-/

namespace A230346.P16751475729308354263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A080036 (2 * ((n + 2) ^ 2 + n + 3) + 1)).toNat

end

end A230346.P16751475729308354263

/-!
# A230347: Number of permutations of [2n+7] in which the longest increasing run has length n+7.

The programs for A230347, there is no canonical definition to state claims against.
-/

/-! ## A230347.P9567645250198367775

`record[A008304(A001844(n)+3)]`
-/

namespace A230347.P9567645250198367775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A001844 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230347.P9567645250198367775

/-! ## A230347.P18314578192752969599

`A122843(A142463(n+3)+5)`
-/

namespace A230347.P18314578192752969599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A142463 (n + 3) + 5).toNat

end

end A230347.P18314578192752969599

/-! ## A230347.P12482095700699635359

`A008304(4*A134869(n+3))`
-/

namespace A230347.P12482095700699635359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (4 * A134869 (n + 3)).toNat

end

end A230347.P12482095700699635359

/-! ## A230347.P13112113810150256394

`record[A008304(A005843(2*(∑[n]+1)))]`
-/

namespace A230347.P13112113810150256394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A005843 (2 * (∑ j ∈ Finset.range (n + 1), f2 j + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230347.P13112113810150256394

/-! ## A230347.P7739796851473721083

`record[A008304(A008586(A000124(n)))]`
-/

namespace A230347.P7739796851473721083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A008586 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230347.P7739796851473721083

/-!
# A230348: Number of permutations of [2n+8] in which the longest increasing run has length n+8.

The programs for A230348, there is no canonical definition to state claims against.
-/

/-! ## A230348.P6320223517198966131

`A008304(A014105(n+4)-n)`
-/

namespace A230348.P6320223517198966131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A014105 (n + 4) - (n : ℤ)).toNat

end

end A230348.P6320223517198966131

/-! ## A230348.P16754734060373970438

`A122843(A058331(n+4)+3)`
-/

namespace A230348.P16754734060373970438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A058331 (n + 4) + 3).toNat

end

end A230348.P16754734060373970438

/-! ## A230348.P17988317424265120838

`A122843(A001105(n+4)+4)`
-/

namespace A230348.P17988317424265120838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A001105 (n + 4) + 4).toNat

end

end A230348.P17988317424265120838

/-! ## A230348.P9726790451408028335

`A122843(A100039(n+2)+n+1)`
-/

namespace A230348.P9726790451408028335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A100039 (n + 2) + (n + 1 : ℤ)).toNat

end

end A230348.P9726790451408028335

/-!
# A230349: Number of permutations of [2n+9] in which the longest increasing run has length n+9.

The programs for A230349, there is no canonical definition to state claims against.
-/

/-! ## A230349.P16872418449444001372

`A008304(A294774(n+4))`
-/

namespace A230349.P16872418449444001372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A294774 (n + 4)).toNat

end

end A230349.P16872418449444001372

/-! ## A230349.P3796084401737840694

`A122843(A137882(n+5)+1)`
-/

namespace A230349.P3796084401737840694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A137882 (n + 5) + 1).toNat

end

end A230349.P3796084401737840694

/-! ## A230349.P10882774063122608792

`A008304(A001844(n+4)+4)`
-/

namespace A230349.P10882774063122608792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008304 (A001844 (n + 4) + 4).toNat

end

end A230349.P10882774063122608792

/-! ## A230349.P14831276839362012326

`A122843(A001844(n+4)+4)`
-/

namespace A230349.P14831276839362012326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A001844 (n + 4) + 4).toNat

end

end A230349.P14831276839362012326

/-!
# A230351: Number of ordered ways to write n = p + q (q > 0) with p, 2*p^2 - 1 and 2*q^2 - 1 all prime.

The programs for A230351, there is no canonical definition to state claims against.
-/

/-! ## A230351.P10853157138814042433

`A245661(or(A123108(n), A134136(n)))`
-/

namespace A230351.P10853157138814042433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245661 (Int.lor (A123108 n) (A134136 n)).toNat

end

end A230351.P10853157138814042433

/-!
# A230352: G.f.: A(x) = x*exp( Sum_{n>=1} Sum_{d|n} A(d*x^n) / n ).

The programs for A230352, there is no canonical definition to state claims against.
-/

/-! ## A230352.P14086117553524254838

`A046108(A148972(n))`
-/

namespace A230352.P14086117553524254838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A148972 n).toNat

end

end A230352.P14086117553524254838

/-! ## A230352.P9961586651945803563

`Δ[record[A105519(A132393(n))]]`
-/

namespace A230352.P9961586651945803563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A132393 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A230352.P9961586651945803563

/-! ## A230352.P8091469464977672247

`A062756(A000272(n))+A002529(n)`
-/

namespace A230352.P8091469464977672247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A000272 n).toNat + A002529 n

end

end A230352.P8091469464977672247

/-!
# A230354: Even numbers n such that digit sum of n = digit sum of largest odd divisor of n.

The programs for A230354, there is no canonical definition to state claims against.
-/

/-! ## A230354.P14542054907489652498

`record[6*A181550(3*n+2)]`
-/

namespace A230354.P14542054907489652498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A181550 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230354.P14542054907489652498

/-! ## A230354.P12039382990457689656

`record[A000005(2*(5*(n+2))²)]`
-/

namespace A230354.P12039382990457689656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (5 * (n + 2)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230354.P12039382990457689656

/-! ## A230354.P9736659260794589543

`record[A099777(A081053(n+1)²)]`
-/

namespace A230354.P9736659260794589543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A081053 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230354.P9736659260794589543

/-! ## A230354.P5422231895870192023

`record[A099777(A096092(n+1)²)]`
-/

namespace A230354.P5422231895870192023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A096092 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230354.P5422231895870192023

/-!
# A230355: Nonsquarefree numbers n such that digit sum of n = digit sum of squarefree part of n.

The programs for A230355, there is no canonical definition to state claims against.
-/

/-! ## A230355.P17118598702967923079

`record[A001175(A196348(n+4))]`
-/

namespace A230355.P17118598702967923079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A196348 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230355.P17118598702967923079

/-!
# A230356: Nonsquare numbers n such that digit sum of n = digit sum of square part of n.

The programs for A230356, there is no canonical definition to state claims against.
-/

/-! ## A230356.P14665833485543308192

`(n+1)*A010735(A101561(n))`
-/

namespace A230356.P14665833485543308192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010735 (A101561 n).toNat

end

end A230356.P14665833485543308192

/-! ## A230356.P15169656577780048376

`∩[A028804(n+1), A236748(n+1)]`
-/

namespace A230356.P15169656577780048376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230356.P15169656577780048376

/-! ## A230356.P3628017628617306832

`A010735(A101561(n))*A077168(n)`
-/

namespace A230356.P3628017628617306832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010735 (A101561 n).toNat * A077168 n

end

end A230356.P3628017628617306832

/-!
# A230358: a(n) is the smallest number k > 0 such that k, k + 1, ... , k + n - 1 are nonprime numbers, but k + n is prime.

The programs for A230358, there is no canonical definition to state claims against.
-/

/-! ## A230358.P15211806453141586037

`A309877(n+1)+1`
-/

namespace A230358.P15211806453141586037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309877 (n + 1) + 1

end

end A230358.P15211806453141586037

/-!
# A230359: Prime numbers p such that their Fibonacci entry points are less than p+1.

The programs for A230359, there is no canonical definition to state claims against.
-/

/-! ## A230359.P15492994920513511734

`∪[A003147(n+1), A079348(n+1)]`
-/

namespace A230359.P15492994920513511734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P15492994920513511734

/-! ## A230359.P14739211461501635923

`∪[A038872(n+1), A079348(n+1)]`
-/

namespace A230359.P14739211461501635923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P14739211461501635923

/-! ## A230359.P17735603125158490206

`∪[A002144(n+1), A328896(n+1)]`
-/

namespace A230359.P17735603125158490206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P17735603125158490206

/-! ## A230359.P15679405714947716498

`∪[A053028(n+1), A328896(n+1)]`
-/

namespace A230359.P15679405714947716498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P15679405714947716498

/-! ## A230359.P6243280745968981258

`A065091(lt[A001602(n+1), A006093(n+1)+2])`
-/

namespace A230359.P6243280745968981258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A230359.P6243280745968981258

/-! ## A230359.P3425269331866061346

`p?[A230457(n+1)]`
-/

namespace A230359.P3425269331866061346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230359.P3425269331866061346

/-! ## A230359.P2150318686923338417

`p?[comp[A064414(n+1)]]`
-/

namespace A230359.P2150318686923338417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230359.P2150318686923338417

/-! ## A230359.P14497914517121601030

`record[A006530(A230457(n+3))]`
-/

namespace A230359.P14497914517121601030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A230457 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230359.P14497914517121601030

/-! ## A230359.P9263040738180964542

`filter[A230457(n+1), A010051(#)]`
-/

namespace A230359.P9263040738180964542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A230359.P9263040738180964542

/-! ## A230359.P11371553187671883426

`∩[A000040(n+1), A230457(n+1)]`
-/

namespace A230359.P11371553187671883426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P11371553187671883426

/-! ## A230359.P11030085885169367416

`∩[A006005(n+1), A230457(n+1)]`
-/

namespace A230359.P11030085885169367416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P11030085885169367416

/-! ## A230359.P2687872635191413140

`∩[A008578(n+1), A230457(n+1)]`
-/

namespace A230359.P2687872635191413140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P2687872635191413140

/-! ## A230359.P10610130702943530271

`∩[A045344(n+1), A230457(n+1)]`
-/

namespace A230359.P10610130702943530271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P10610130702943530271

/-! ## A230359.P6772696319750590851

`∩[A046022(n+1), A230457(n+1)]`
-/

namespace A230359.P6772696319750590851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P6772696319750590851

/-! ## A230359.P2846329486044413217

`∩[A065091(n+1), A230457(n+1)]`
-/

namespace A230359.P2846329486044413217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P2846329486044413217

/-! ## A230359.P5871933992446314969

`∩[A067126(n+1), A230457(n+1)]`
-/

namespace A230359.P5871933992446314969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P5871933992446314969

/-! ## A230359.P1279205393430116257

`∩[A116974(n+1), A230457(n+1)]`
-/

namespace A230359.P1279205393430116257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P1279205393430116257

/-! ## A230359.P14656357469760827192

`∩[A140475(n+1), A230457(n+1)]`
-/

namespace A230359.P14656357469760827192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P14656357469760827192

/-! ## A230359.P11576784757179638050

`∩[A158611(n+1), A230457(n+1)]`
-/

namespace A230359.P11576784757179638050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P11576784757179638050

/-! ## A230359.P6168640333023442684

`∩[A161346(n+1), A230457(n+1)]`
-/

namespace A230359.P6168640333023442684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230359.P6168640333023442684

/-!
# A230362: Least prime p with 2*p^2 - 1 and 2*(n-p)^2 -1 both prime, or 0 if such a prime p does not exist.

The programs for A230362, there is no canonical definition to state claims against.
-/

/-! ## A230362.P14286164652638581003

`p?[gcd(A121455(n+1), A238123(n))]`
-/

namespace A230362.P14286164652638581003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121455 (n + 1)) (A238123 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230362.P14286164652638581003

/-! ## A230362.P16410961222152846219

`A060084(A210114(n+4)*A320195(n+3))`
-/

namespace A230362.P16410961222152846219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060084 (A210114 (n + 4) * A320195 (n + 3)).toNat

end

end A230362.P16410961222152846219

/-! ## A230362.P5193026573887473628

`A020639(A255857(n+8)+16)`
-/

namespace A230362.P5193026573887473628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A255857 (n + 8) + 16).toNat

end

end A230362.P5193026573887473628

/-!
# A230363: Factorials representable as b^2 + triangular(c).

The programs for A230363, there is no canonical definition to state claims against.
-/

/-! ## A230363.P10918908876558846533

`A394730(n+1)!`
-/

namespace A230363.P10918908876558846533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A394730 (n + 1)).toNat

end

end A230363.P10918908876558846533

/-! ## A230363.P5656912364007238908

`record[A225633(A354908(n+1))]!`
-/

namespace A230363.P5656912364007238908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 (A354908 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A230363.P5656912364007238908

/-! ## A230363.P12525763816371652823

`(A158573(n+1)%A319721(n))!`
-/

namespace A230363.P12525763816371652823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A158573 (n + 1)) (A319721 n)).toNat

end

end A230363.P12525763816371652823

/-! ## A230363.P5376031098424820483

`A267629(A061304(n+1))`
-/

namespace A230363.P5376031098424820483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267629 (A061304 (n + 1)).toNat

end

end A230363.P5376031098424820483

/-!
# A230364: Triangular numbers representable as b! + c^2.

The programs for A230364, there is no canonical definition to state claims against.
-/

/-! ## A230364.P173752015455162615

`eq[A011604(ceil(n/8)), A209073(n+1)]`
-/

namespace A230364.P173752015455162615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011604 ⌈(n : ℚ) / 8⌉.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230364.P173752015455162615

/-! ## A230364.P4143533474684340615

`eq[A053123(n), A067029(A048380(n))]`
-/

namespace A230364.P4143533474684340615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230364.P4143533474684340615

/-! ## A230364.P5943819665059396245

`eq[A059268(n), A267116(A048380(n))]`
-/

namespace A230364.P5943819665059396245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230364.P5943819665059396245

/-! ## A230364.P12806794870841175433

`eq[A067029(A048380(n)), A357720(n)]`
-/

namespace A230364.P12806794870841175433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A048380 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230364.P12806794870841175433

/-! ## A230364.P15140623351174209342

`eq[A162514(n), A327564(A048380(n))]`
-/

namespace A230364.P15140623351174209342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327564 (A048380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230364.P15140623351174209342

/-!
# A230365: Squares representable as b! + triangular(c).

The programs for A230365, there is no canonical definition to state claims against.
-/

/-! ## A230365.P428715114550757178

`∑[A303781(A319641(n))]²`
-/

namespace A230365.P428715114550757178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303781 (A319641 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A230365.P428715114550757178

/-! ## A230365.P4443444968901190791

`∑[A241276(A100532(n+1))]²`
-/

namespace A230365.P4443444968901190791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241276 (A100532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A230365.P4443444968901190791

/-! ## A230365.P15002429252681074895

`∑[gcd(A198896(n), A198945(n))]²`
-/

namespace A230365.P15002429252681074895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198896 n) (A198945 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A230365.P15002429252681074895

/-! ## A230365.P8636113837847209929

`∑[A357900(2^n)]²`
-/

namespace A230365.P8636113837847209929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357900 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A230365.P8636113837847209929

/-! ## A230365.P4884912877334541172

`∑[A049419(A047970(n))]²`
-/

namespace A230365.P4884912877334541172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A047970 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A230365.P4884912877334541172

/-!
# A230366: a(n) = Sum_{k=1..floor(n/2)} (k^2 mod n).

The programs for A230366, there is no canonical definition to state claims against.
-/

/-! ## A230366.P13135880336728313687

`A231589(n+1)+A195938(n+1)`
-/

namespace A230366.P13135880336728313687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231589 (n + 1) + A195938 (n + 1)

end

end A230366.P13135880336728313687

/-! ## A230366.P17641894030905197253

`A048153(n+1)-A231589(n+1)`
-/

namespace A230366.P17641894030905197253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048153 (n + 1) - A231589 (n + 1)

end

end A230366.P17641894030905197253

/-! ## A230366.P14055218016458389509

`(A195938(n+1)+A048153(n+1))/2`
-/

namespace A230366.P14055218016458389509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195938 (n + 1) + A048153 (n + 1) : ℚ) / 2

end

end A230366.P14055218016458389509

/-! ## A230366.P16910506318417050163

`∑[(n+1)²]-(n+1)*A014817(n+1)-A231589(n+1)`
-/

namespace A230366.P16910506318417050163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ) * A014817 (n + 1) - A231589 (n + 1)

end

end A230366.P16910506318417050163

/-! ## A230366.P6264030444495309503

`(A195938(n+1)+∑[(n+1)²]-(n+1)*A014817(n+1))/2`
-/

namespace A230366.P6264030444495309503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195938 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ) * A014817 (n + 1)) : ℚ) / 2

end

end A230366.P6264030444495309503

/-! ## A230366.P1077505692178659328

`A014682(A195938(n+1)+A048153(n+1))`
-/

namespace A230366.P1077505692178659328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A195938 (n + 1) + A048153 (n + 1)).toNat

end

end A230366.P1077505692178659328

/-! ## A230366.P7519616889235607668

`A175126(A195938(n+1)+A048153(n+1))`
-/

namespace A230366.P7519616889235607668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A195938 (n + 1) + A048153 (n + 1)).toNat

end

end A230366.P7519616889235607668

/-! ## A230366.P12402409389004945222

`A004525(A195938(n+1)+A048153(n+1))`
-/

namespace A230366.P12402409389004945222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A195938 (n + 1) + A048153 (n + 1)).toNat

end

end A230366.P12402409389004945222

/-! ## A230366.P6970556731631364170

`A004526(A195938(n+1)+A048153(n+1))`
-/

namespace A230366.P6970556731631364170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A195938 (n + 1) + A048153 (n + 1)).toNat

end

end A230366.P6970556731631364170

/-! ## A230366.P16595530819147133684

`A026741(A195938(n+1)+A048153(n+1))`
-/

namespace A230366.P16595530819147133684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A195938 (n + 1) + A048153 (n + 1)).toNat

end

end A230366.P16595530819147133684

/-!
# A230367: Number of colorings of the edges of the complete graph on n unlabeled vertices using at most three interchangeable colors under the symmetries of the full edge permutation group.

The programs for A230367, there is no canonical definition to state claims against.
-/

/-! ## A230367.P9562116637465183189

`A265747(n)+A106621(A041025(n))`
-/

namespace A230367.P9562116637465183189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n + A106621 (A041025 n).toNat

end

end A230367.P9562116637465183189

/-!
# A230368: A strong divisibility sequence associated with the algebraic integer 1 + i.

The programs for A230368, the canonical program `A230368.P17810546015416859750` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230368 has offset 1).

The definition of A230368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230368.P17810546015416859750

`abs(A106664(n*and(1, n)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230368

/-- `abs(A106664(n*and(1, n)))` -/
def P17810546015416859750.Spec : Prop :=
  ∀ n, P17810546015416859750.a n = A230368 (n + 1)

theorem P17810546015416859750.correct : P17810546015416859750.Spec := by
  intro n
  simp only [A230368, Nat.add_sub_cancel]

end A230368

/-! ## A230368.P10305458809841091598

`abs(A106664(abs(A009001(n))))`
-/

namespace A230368.P10305458809841091598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A106664 |A009001 n|.toNat)|

end

end A230368.P10305458809841091598

namespace A230368

/-- `abs(A106664(abs(A009001(n))))` -/
def P10305458809841091598.Spec : Prop :=
  ∀ n, P10305458809841091598.a n = A230368 (n + 1)

end A230368

/-! ## A230368.P16618140685659602872

`abs(A106664(Δ[A008794(n)]))`
-/

namespace A230368.P16618140685659602872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106664 (f1 (n + 1) - f1 n).toNat|

end

end A230368.P16618140685659602872

namespace A230368

/-- `abs(A106664(Δ[A008794(n)]))` -/
def P16618140685659602872.Spec : Prop :=
  ∀ n, P16618140685659602872.a n = A230368 (n + 1)

end A230368

/-! ## A230368.P13437181137722561227

`gcd((n+1)%2, A106664(n))`
-/

namespace A230368.P13437181137722561227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 1) % 2 : ℕ) : ℤ) (A106664 n)

end

end A230368.P13437181137722561227

namespace A230368

/-- `gcd((n+1)%2, A106664(n))` -/
def P13437181137722561227.Spec : Prop :=
  ∀ n, (P13437181137722561227.a n : ℤ) = A230368 (n + 1)

end A230368

/-! ## A230368.P18193495790062386485

`gcd(1-A009116(n+1), ∑[(-1)^n])`
-/

namespace A230368.P18193495790062386485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A009116 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230368.P18193495790062386485

namespace A230368

/-- `gcd(1-A009116(n+1), ∑[(-1)^n])` -/
def P18193495790062386485.Spec : Prop :=
  ∀ n, (P18193495790062386485.a n : ℤ) = A230368 (n + 1)

end A230368

/-! ## A230368.P7643694929837265846

`gcd(A049689(n), A106664(n))`
-/

namespace A230368.P7643694929837265846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049689 n) (A106664 n)

end

end A230368.P7643694929837265846

namespace A230368

/-- `gcd(A049689(n), A106664(n))` -/
def P7643694929837265846.Spec : Prop :=
  ∀ n, (P7643694929837265846.a n : ℤ) = A230368 (n + 1)

end A230368

/-! ## A230368.P10474093482869598492

`gcd(∑[A009545(n)], A056594(n))`
-/

namespace A230368.P10474093482869598492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A056594 n)

end

end A230368.P10474093482869598492

namespace A230368

/-- `gcd(∑[A009545(n)], A056594(n))` -/
def P10474093482869598492.Spec : Prop :=
  ∀ n, (P10474093482869598492.a n : ℤ) = A230368 (n + 1)

end A230368

/-! ## A230368.P12797898851813686736

`gcd(∑[A099087(n)], A099087(n))`
-/

namespace A230368.P12797898851813686736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A099087 n)

end

end A230368.P12797898851813686736

namespace A230368

/-- `gcd(∑[A099087(n)], A099087(n))` -/
def P12797898851813686736.Spec : Prop :=
  ∀ n, (P12797898851813686736.a n : ℤ) = A230368 (n + 1)

end A230368

/-! ## A230368.P1917679230331621652

`gcd(∑[A009545(n+1)], A009545(n+1))`
-/

namespace A230368.P1917679230331621652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A009545 (n + 1))

end

end A230368.P1917679230331621652

namespace A230368

/-- `gcd(∑[A009545(n+1)], A009545(n+1))` -/
def P1917679230331621652.Spec : Prop :=
  ∀ n, (P1917679230331621652.a n : ℤ) = A230368 (n + 1)

end A230368

/-! ## A230368.P85374995442175723

`gcd(A077860(n), A084102(n))`
-/

namespace A230368.P85374995442175723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077860 n) (A084102 n)

end

end A230368.P85374995442175723

namespace A230368

/-- `gcd(A077860(n), A084102(n))` -/
def P85374995442175723.Spec : Prop :=
  ∀ n, (P85374995442175723.a n : ℤ) = A230368 (n + 1)

end A230368

/-! ## A230368.P11191149410936402363

`gcd(1-A146559(n+1), A146559(2*n))`
-/

namespace A230368.P11191149410936402363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A146559 (n + 1)) (A146559 (2 * n))

end

end A230368.P11191149410936402363

namespace A230368

/-- `gcd(1-A146559(n+1), A146559(2*n))` -/
def P11191149410936402363.Spec : Prop :=
  ∀ n, (P11191149410936402363.a n : ℤ) = A230368 (n + 1)

end A230368

/-! ## A230368.P11842717025229146468

`gcd(A106664(n)², A106664(2*n+1))`
-/

namespace A230368.P11842717025229146468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106664 n ^ 2) (A106664 (2 * n + 1))

end

end A230368.P11842717025229146468

namespace A230368

/-- `gcd(A106664(n)², A106664(2*n+1))` -/
def P11842717025229146468.Spec : Prop :=
  ∀ n, (P11842717025229146468.a n : ℤ) = A230368 (n + 1)

end A230368

/-!
# A230369: A strong divisibility sequence associated with the algebraic integer 2 + i.

The programs for A230369, the canonical program `A230369.P7741936576236999319` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230369 has offset 1).

The definition of A230369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230369.P7741936576236999319

`gcd(1-A099456(n+1), A099456(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230369

/-- `gcd(1-A099456(n+1), A099456(n))` -/
def P7741936576236999319.Spec : Prop :=
  ∀ n, (P7741936576236999319.a n : ℤ) = A230369 (n + 1)

theorem P7741936576236999319.correct : P7741936576236999319.Spec := by
  intro n
  simp only [A230369, Nat.add_sub_cancel]

end A230369

/-! ## A230369.P4201619910548777067

`A354276(xor(n, n+1))%A034963(n+2)`
-/

namespace A230369.P4201619910548777067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354276 (Nat.xor n (n + 1))) (A034963 (n + 2))

end

end A230369.P4201619910548777067

namespace A230369

/-- `A354276(xor(n, n+1))%A034963(n+2)` -/
def P4201619910548777067.Spec : Prop :=
  ∀ n, P4201619910548777067.a n = A230369 (n + 1)

end A230369

/-! ## A230369.P2944708403159128689

`gcd(A089154(A187829(n+1)), A089165(n))`
-/

namespace A230369.P2944708403159128689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089154 (A187829 (n + 1)).toNat) (A089165 n)

end

end A230369.P2944708403159128689

namespace A230369

/-- `gcd(A089154(A187829(n+1)), A089165(n))` -/
def P2944708403159128689.Spec : Prop :=
  ∀ n, (P2944708403159128689.a n : ℤ) = A230369 (n + 1)

end A230369

/-! ## A230369.P3173991169011333512

`and(A002522(n), A225561(A174500(n+1)))`
-/

namespace A230369.P3173991169011333512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002522 n) (A225561 (A174500 (n + 1)).toNat)

end

end A230369.P3173991169011333512

namespace A230369

/-- `and(A002522(n), A225561(A174500(n+1)))` -/
def P3173991169011333512.Spec : Prop :=
  ∀ n, P3173991169011333512.a n = A230369 (n + 1)

end A230369

/-! ## A230369.P18290029523735944547

`gcd(A065958(A095768(n+1)), A099456(n))`
-/

namespace A230369.P18290029523735944547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065958 (A095768 (n + 1)).toNat) (A099456 n)

end

end A230369.P18290029523735944547

namespace A230369

/-- `gcd(A065958(A095768(n+1)), A099456(n))` -/
def P18290029523735944547.Spec : Prop :=
  ∀ n, (P18290029523735944547.a n : ℤ) = A230369 (n + 1)

end A230369

/-!
# A230372: Numbers n such that phi(sigma(n)) = sigma(n) - phi(n).

The programs for A230372, there is no canonical definition to state claims against.
-/

/-! ## A230372.P11740114823736981497

`eq[A051612(n+1), A062401(n+1)]+1`
-/

namespace A230372.P11740114823736981497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230372.P11740114823736981497

/-! ## A230372.P11086132843179820017

`A020725(eq[A051612(n+1), A062401(n+1)])`
-/

namespace A230372.P11086132843179820017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A230372.P11086132843179820017

/-! ## A230372.P9084667538878609069

`eq[A062401(n+1)+A000010(n+1), A000203(n+1)]+1`
-/

namespace A230372.P9084667538878609069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) + A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230372.P9084667538878609069

/-!
# A230374: The numbers n such that during dividing n by all positive integers not exceeding n the remainder 0 occurs most often.

The programs for A230374, there is no canonical definition to state claims against.
-/

/-! ## A230374.P16885348153438473798

`lt[A309836(n+1), A003172(3*(n+1))]+1`
-/

namespace A230374.P16885348153438473798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A230374.P16885348153438473798

/-! ## A230374.P4813093994776949245

`eq[A000045(A138618(2*(n+2))), A301331(n)]`
-/

namespace A230374.P4813093994776949245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A138618 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301331 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230374.P4813093994776949245

/-! ## A230374.P4340141621166523174

`A050376(n+1)-A046534(A079474(n+1))`
-/

namespace A230374.P4340141621166523174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) - A046534 (A079474 (n + 1)).toNat

end

end A230374.P4340141621166523174

/-! ## A230374.P3859373441564081594

`lt[A319252(n+1), A164869(n)+1]`
-/

namespace A230374.P3859373441564081594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164869 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230374.P3859373441564081594

/-!
# A230375: Squarefree numbers congruent to 2 or 3 mod 4.

The programs for A230375, the canonical program `A230375.P17186200575479657300` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230375 has offset 1).

The definition of A230375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230375.P17186200575479657300

`record[∏{p}[or(2, n), #]]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230375

/-- `record[∏{p}[or(2, n), #]]` -/
def P17186200575479657300.Spec : Prop :=
  ∀ n, (P17186200575479657300.a n : ℤ) = A230375 (n + 1)

theorem P17186200575479657300.correct : P17186200575479657300.Spec := by
  intro n
  simp only [A230375, Nat.add_sub_cancel]

end A230375

/-! ## A230375.P7786542859848452429

`record[A007913(or(2, n))]`
-/

namespace A230375.P7786542859848452429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P7786542859848452429

namespace A230375

/-- `record[A007913(or(2, n))]` -/
def P7786542859848452429.Spec : Prop :=
  ∀ n, P7786542859848452429.a n = A230375 (n + 1)

end A230375

/-! ## A230375.P14872039181918392370

`record[A007947(or(2, n))]`
-/

namespace A230375.P14872039181918392370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P14872039181918392370

namespace A230375

/-- `record[A007947(or(2, n))]` -/
def P14872039181918392370.Spec : Prop :=
  ∀ n, P14872039181918392370.a n = A230375 (n + 1)

end A230375

/-! ## A230375.P3703741096899805040

`record[A015052(or(2, n))]`
-/

namespace A230375.P3703741096899805040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P3703741096899805040

namespace A230375

/-- `record[A015052(or(2, n))]` -/
def P3703741096899805040.Spec : Prop :=
  ∀ n, P3703741096899805040.a n = A230375 (n + 1)

end A230375

/-! ## A230375.P14944720426541200600

`eq[n, A000026(or(2, n))]`
-/

namespace A230375.P14944720426541200600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (Nat.lor 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230375.P14944720426541200600

namespace A230375

/-- `eq[n, A000026(or(2, n))]` -/
def P14944720426541200600.Spec : Prop :=
  ∀ n, (P14944720426541200600.a n : ℤ) = A230375 (n + 1)

end A230375

/-! ## A230375.P13861354385828393213

`record[A007913(record[xor(2, n)])]`
-/

namespace A230375.P13861354385828393213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P13861354385828393213

namespace A230375

/-- `record[A007913(record[xor(2, n)])]` -/
def P13861354385828393213.Spec : Prop :=
  ∀ n, P13861354385828393213.a n = A230375 (n + 1)

end A230375

/-! ## A230375.P16184804046286288554

`record[A007947(record[xor(2, n)])]`
-/

namespace A230375.P16184804046286288554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P16184804046286288554

namespace A230375

/-- `record[A007947(record[xor(2, n)])]` -/
def P16184804046286288554.Spec : Prop :=
  ∀ n, P16184804046286288554.a n = A230375 (n + 1)

end A230375

/-! ## A230375.P4503395754896286455

`record[A055231(record[xor(2, n)])]`
-/

namespace A230375.P4503395754896286455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P4503395754896286455

namespace A230375

/-- `record[A055231(record[xor(2, n)])]` -/
def P4503395754896286455.Spec : Prop :=
  ∀ n, P4503395754896286455.a n = A230375 (n + 1)

end A230375

/-! ## A230375.P14161759933792580443

`record[A083346(record[xor(2, n)])]`
-/

namespace A230375.P14161759933792580443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P14161759933792580443

namespace A230375

/-- `record[A083346(record[xor(2, n)])]` -/
def P14161759933792580443.Spec : Prop :=
  ∀ n, P14161759933792580443.a n = A230375 (n + 1)

end A230375

/-! ## A230375.P12308351417707069299

`record[A325314(record[xor(2, n)])]`
-/

namespace A230375.P12308351417707069299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P12308351417707069299

namespace A230375

/-- `record[A325314(record[xor(2, n)])]` -/
def P12308351417707069299.Spec : Prop :=
  ∀ n, P12308351417707069299.a n = A230375 (n + 1)

end A230375

/-! ## A230375.P4933191166512010072

`record[A336965(record[xor(2, n)])]`
-/

namespace A230375.P4933191166512010072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P4933191166512010072

namespace A230375

/-- `record[A336965(record[xor(2, n)])]` -/
def P4933191166512010072.Spec : Prop :=
  ∀ n, P4933191166512010072.a n = A230375 (n + 1)

end A230375

/-! ## A230375.P6217841706584572607

`record[A037449(n+2)/4]`
-/

namespace A230375.P6217841706584572607
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037449 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P6217841706584572607

namespace A230375

/-- `record[A037449(n+2)/4]` -/
def P6217841706584572607.Spec : Prop :=
  ∀ n, P6217841706584572607.a n = (A230375 (n + 1) : ℚ)

end A230375

/-! ## A230375.P14199655548559096235

`record[A336965(comp[4*n]+1)]`
-/

namespace A230375.P14199655548559096235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336965 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P14199655548559096235

namespace A230375

/-- `record[A336965(comp[4*n]+1)]` -/
def P14199655548559096235.Spec : Prop :=
  ∀ n, P14199655548559096235.a n = A230375 (n + 1)

end A230375

/-! ## A230375.P6154594668214421256

`record[A033198(n+1)/2]/2`
-/

namespace A230375.P6154594668214421256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033198 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2

end

end A230375.P6154594668214421256

namespace A230375

/-- `record[A033198(n+1)/2]/2` -/
def P6154594668214421256.Spec : Prop :=
  ∀ n, P6154594668214421256.a n = (A230375 (n + 1) : ℚ)

end A230375

/-! ## A230375.P15963257913961831232

`record[∏{p}[A042968(n+1)+1, #]]`
-/

namespace A230375.P15963257913961831232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230375.P15963257913961831232

namespace A230375

/-- `record[∏{p}[A042968(n+1)+1, #]]` -/
def P15963257913961831232.Spec : Prop :=
  ∀ n, (P15963257913961831232.a n : ℤ) = A230375 (n + 1)

end A230375

/-! ## A230375.P12858519609696491737

`eq[A093085(n), A105570(n)]`
-/

namespace A230375.P12858519609696491737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230375.P12858519609696491737

namespace A230375

/-- `eq[A093085(n), A105570(n)]` -/
def P12858519609696491737.Spec : Prop :=
  ∀ n, (P12858519609696491737.a n : ℤ) = A230375 (n + 1)

end A230375

/-! ## A230375.P12353108059181951601

`eq[A087049(n), A127391(n)]`
-/

namespace A230375.P12353108059181951601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230375.P12353108059181951601

namespace A230375

/-- `eq[A087049(n), A127391(n)]` -/
def P12353108059181951601.Spec : Prop :=
  ∀ n, (P12353108059181951601.a n : ℤ) = A230375 (n + 1)

end A230375

/-! ## A230375.P3251382932240006858

`eq[A105570(n), A112171(n)]`
-/

namespace A230375.P3251382932240006858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230375.P3251382932240006858

namespace A230375

/-- `eq[A105570(n), A112171(n)]` -/
def P3251382932240006858.Spec : Prop :=
  ∀ n, (P3251382932240006858.a n : ℤ) = A230375 (n + 1)

end A230375

/-! ## A230375.P1744318587490247765

`eq[A105570(n), A112172(n)]`
-/

namespace A230375.P1744318587490247765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230375.P1744318587490247765

namespace A230375

/-- `eq[A105570(n), A112172(n)]` -/
def P1744318587490247765.Spec : Prop :=
  ∀ n, (P1744318587490247765.a n : ℤ) = A230375 (n + 1)

end A230375

/-! ## A230375.P7073870769806561450

`eq[A105570(n), A116597(n)]`
-/

namespace A230375.P7073870769806561450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230375.P7073870769806561450

namespace A230375

/-- `eq[A105570(n), A116597(n)]` -/
def P7073870769806561450.Spec : Prop :=
  ∀ n, (P7073870769806561450.a n : ℤ) = A230375 (n + 1)

end A230375

/-!
# A230377: The left Aurifeuillian factor of k^k + 1 for k congruent to 0, 2 or 3 (mod 4) and squarefree.

The programs for A230377, there is no canonical definition to state claims against.
-/

/-! ## A230377.P10606646387396401688

`A199515(A291072(2*(n+2))+10^n)`
-/

namespace A230377.P10606646387396401688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199515 (A291072 (2 * (n + 2)) + (10 ^ n : ℤ)).toNat

end

end A230377.P10606646387396401688

/-!
# A230379: The right Aurifeuillian factor of k^k + 1 for k congruent to 0, 2 or 3 (mod 4) and squarefree.

The programs for A230379, there is no canonical definition to state claims against.
-/

/-! ## A230379.P1191332629119327210

`A007571(A287822(n)+A087019(2*n+1))`
-/

namespace A230379.P1191332629119327210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007571 (A287822 n + A087019 (2 * n + 1)).toNat

end

end A230379.P1191332629119327210

/-!
# A230382: Number of ascending runs of length n in the permutations of [2n].

The programs for A230382, there is no canonical definition to state claims against.
-/

/-! ## A230382.P5864100255986585195

`A122843(A004277(n²))`
-/

namespace A230382.P5864100255986585195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A004277 (n ^ 2)).toNat

end

end A230382.P5864100255986585195

/-! ## A230382.P16974111514973431100

`A122843(A000007(n)+2*n²)`
-/

namespace A230382.P16974111514973431100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A000007 n + (2 * n ^ 2 : ℤ)).toNat

end

end A230382.P16974111514973431100

/-! ## A230382.P1246898965058200198

`A122843(A001105(n)+A000007(n))`
-/

namespace A230382.P1246898965058200198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A001105 n + A000007 n).toNat

end

end A230382.P1246898965058200198

/-! ## A230382.P7171549712876882222

`A122843(or(A000007(n), A001105(n)))`
-/

namespace A230382.P7171549712876882222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (Int.lor (A000007 n) (A001105 n)).toNat

end

end A230382.P7171549712876882222

/-! ## A230382.P423867926485427933

`A122843((A004277(n)-n)*A004277(n))`
-/

namespace A230382.P423867926485427933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 ((A004277 n - (n : ℤ)) * A004277 n).toNat

end

end A230382.P423867926485427933

/-!
# A230383: Lexicographically earliest sequence of distinct positive integers such that the first difference contains only distinct positive or negative squares.

The programs for A230383, there is no canonical definition to state claims against.
-/

/-! ## A230383.P10797531491389282526

`lcm(A254575(n+1), A344774(A004643(n)))`
-/

namespace A230383.P10797531491389282526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A254575 (n + 1)) (A344774 (A004643 n).toNat)

end

end A230383.P10797531491389282526

/-! ## A230383.P7110089515927849468

`A147685(round(log(A022838(3^n))))+1`
-/

namespace A230383.P7110089515927849468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 (SequenceMachineLib.roundAway (Real.log (A022838 (3 ^ n) : ℝ))).toNat + 1

end

end A230383.P7110089515927849468

/-! ## A230383.P10570824442270787045

`gcd(2, ∏{p}[n, #])*A156081(A080335(n))`
-/

namespace A230383.P10570824442270787045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * A156081 (A080335 n).toNat

end

end A230383.P10570824442270787045

/-! ## A230383.P3845109464151041724

`A090996(A002450(n))+Δ[A235355(n)]`
-/

namespace A230383.P3845109464151041724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A002450 n).toNat + (f1 (n + 1) - f1 n)

end

end A230383.P3845109464151041724

/-! ## A230383.P5326230570507835606

`A147685(A032559(n+1))+A057427(n)`
-/

namespace A230383.P5326230570507835606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 (A032559 (n + 1)).toNat + A057427 n

end

end A230383.P5326230570507835606

/-!
# A230386: Least sum of a set of n evil numbers (A001969) such that any two or more add to an odious number (A000069).

The programs for A230386, there is no canonical definition to state claims against.
-/

/-! ## A230386.P7128865002827759922

`A025026(A235053(n+1))%A005902(n)`
-/

namespace A230386.P7128865002827759922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025026 (A235053 (n + 1)).toNat) (A005902 n)

end

end A230386.P7128865002827759922

/-!
# A230387: Least sum of a set of n odious numbers (A000069) such that the sum of two or more is an evil number (A001969).

The programs for A230387, there is no canonical definition to state claims against.
-/

/-! ## A230387.P8569812585934040910

`∑[record[A206427(A050508(n))]]`
-/

namespace A230387.P8569812585934040910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206427 (A050508 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230387.P8569812585934040910

/-!
# A230388: a(n) = binomial(11*n+1,n)/(11*n+1).

The programs for A230388, the canonical program `A230388.P13104436336397200731` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230388 has offset 0).

The definition of A230388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230388.P10016359758885313900

`A234868(n)*(5*n+1)/(11*n+1)`
-/

namespace A230388.P10016359758885313900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234868 n * (5 * n + 1 : ℤ) : ℚ) / (11 * n + 1 : ℚ)

end

end A230388.P10016359758885313900

namespace A230388

/-- `A234868(n)*(5*n+1)/(11*n+1)` -/
def P10016359758885313900.Spec : Prop :=
  ∀ n, P10016359758885313900.a n = (A230388 n : ℚ)

end A230388

/-! ## A230388.P13104436336397200731

`C(11*n, n)/(10*n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230388

/-- `C(11*n, n)/(10*n+1)` -/
def P13104436336397200731.Spec : Prop :=
  ∀ n, P13104436336397200731.a n = (A230388 n : ℚ)

end A230388

/-! ## A230388.P11568952210602517761

`C(11*n+1, n)/(11*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230388.P11568952210602517761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (11 * n + 1) n : ℚ) / (11 * n + 1 : ℚ)

end

end A230388.P11568952210602517761

namespace A230388

/-- `C(11*n+1, n)/(11*n+1)` -/
def P11568952210602517761.Spec : Prop :=
  ∀ n, P11568952210602517761.a n = (A230388 n : ℚ)

end A230388

/-! ## A230388.P4339549844398570612

`A192893(2*n)`
-/

namespace A230388.P4339549844398570612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192893 (2 * n)

end

end A230388.P4339549844398570612

namespace A230388

/-- `A192893(2*n)` -/
def P4339549844398570612.Spec : Prop :=
  ∀ n, P4339549844398570612.a n = A230388 n

end A230388

/-! ## A230388.P15043836532761465292

`A070914(eq[10, A025581(n)])`
-/

namespace A230388.P15043836532761465292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230388.P15043836532761465292

namespace A230388

/-- `A070914(eq[10, A025581(n)])` -/
def P15043836532761465292.Spec : Prop :=
  ∀ n, P15043836532761465292.a n = A230388 n

end A230388

/-! ## A230388.P9179680245492542928

`A070914(eq[21, A099375(n)])`
-/

namespace A230388.P9179680245492542928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230388.P9179680245492542928

namespace A230388

/-- `A070914(eq[21, A099375(n)])` -/
def P9179680245492542928.Spec : Prop :=
  ∀ n, P9179680245492542928.a n = A230388 n

end A230388

/-! ## A230388.P8532314260318279476

`A070914(eq[11, A004736(n+1)])`
-/

namespace A230388.P8532314260318279476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230388.P8532314260318279476

namespace A230388

/-- `A070914(eq[11, A004736(n+1)])` -/
def P8532314260318279476.Spec : Prop :=
  ∀ n, P8532314260318279476.a n = A230388 n

end A230388

/-! ## A230388.P13573773962393541070

`A169960(n)/A008619(A008602(n))`
-/

namespace A230388.P13573773962393541070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169960 n : ℚ) / (A008619 (A008602 n).toNat : ℚ)

end

end A230388.P13573773962393541070

namespace A230388

/-- `A169960(n)/A008619(A008602(n))` -/
def P13573773962393541070.Spec : Prop :=
  ∀ n, P13573773962393541070.a n = (A230388 n : ℚ)

end A230388

/-!
# A230389: Least k such that n! + k^2 + k is a perfect square.

The programs for A230389, there is no canonical definition to state claims against.
-/

/-! ## A230389.P12572013618617287870

`(n!-1)%A266405(n!)`
-/

namespace A230389.P12572013618617287870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.factorial n : ℤ) - 1) (A266405 (Nat.factorial n))

end

end A230389.P12572013618617287870

/-! ## A230389.P7274695512562229076

`n!-A180198(A022186(n))`
-/

namespace A230389.P7274695512562229076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A180198 (A022186 n).toNat

end

end A230389.P7274695512562229076

/-! ## A230389.P10905329044144158605

`n!-A108625(A099952(n+1))`
-/

namespace A230389.P10905329044144158605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A108625 (A099952 (n + 1)).toNat

end

end A230389.P10905329044144158605

/-!
# A230390: a(n) = 5*binomial(8*n+10,n)/(4*n+5).

The programs for A230390, the canonical program `A230390.P1349966002235485043` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230390 has offset 0).

The definition of A230390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230390.P1349966002235485043

`5*C(8*n+10, n)/(4*n+5)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230390

/-- `5*C(8*n+10, n)/(4*n+5)` -/
def P1349966002235485043.Spec : Prop :=
  ∀ n, P1349966002235485043.a n = (A230390 n : ℚ)

end A230390

/-! ## A230390.P13771307063034863059

`A234462(n+1)-A234461(n+1)`
-/

namespace A230390.P13771307063034863059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234462 (n + 1) - A234461 (n + 1)

end

end A230390.P13771307063034863059

namespace A230390

/-- `A234462(n+1)-A234461(n+1)` -/
def P13771307063034863059.Spec : Prop :=
  ∀ n, P13771307063034863059.a n = A230390 n

end A230390

/-! ## A230390.P3882983909107600750

`A234462(C(n+1, n))%A234461(n+1)`
-/

namespace A230390.P3882983909107600750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234462 (Nat.choose (n + 1) n)) (A234461 (n + 1))

end

end A230390.P3882983909107600750

namespace A230390

/-- `A234462(C(n+1, n))%A234461(n+1)` -/
def P3882983909107600750.Spec : Prop :=
  ∀ n, P3882983909107600750.a n = A230390 n

end A230390

/-! ## A230390.P11895102418262010387

`A234462(floor(acot(n)+n)+1)%A234461(n+1)`
-/

namespace A230390.P11895102418262010387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234462 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat) (A234461 (n + 1))

end

end A230390.P11895102418262010387

namespace A230390

/-- `A234462(floor(acot(n)+n)+1)%A234461(n+1)` -/
def P11895102418262010387.Spec : Prop :=
  ∀ n, P11895102418262010387.a n = A230390 n

end A230390

/-! ## A230390.P7918834415163954658

`A234462(A028310(n)+1)%A234461(n+1)`
-/

namespace A230390.P7918834415163954658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234462 (A028310 n + 1).toNat) (A234461 (n + 1))

end

end A230390.P7918834415163954658

namespace A230390

/-- `A234462(A028310(n)+1)%A234461(n+1)` -/
def P7918834415163954658.Spec : Prop :=
  ∀ n, P7918834415163954658.a n = A230390 n

end A230390

/-! ## A230390.P7164281063479466947

`A234462(A000007(n)+1+n)%A234461(n+1)`
-/

namespace A230390.P7164281063479466947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234462 (A000007 n + 1 + (n : ℤ)).toNat) (A234461 (n + 1))

end

end A230390.P7164281063479466947

namespace A230390

/-- `A234462(A000007(n)+1+n)%A234461(n+1)` -/
def P7164281063479466947.Spec : Prop :=
  ∀ n, P7164281063479466947.a n = A230390 n

end A230390

/-!
# A230391: Numbers m such that 232*m^2+1 is prime.

The programs for A230391, there is no canonical definition to state claims against.
-/

/-! ## A230391.P15357889138059591878

`lt[A005520(3*(n+1)), A000716(A328444(n+1))]`
-/

namespace A230391.P15357889138059591878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005520 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 (A328444 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230391.P15357889138059591878

/-! ## A230391.P18217878089500599010

`lt[A345196(A365398(2*(n+2))), A332301(n+1)]`
-/

namespace A230391.P18217878089500599010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345196 (A365398 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230391.P18217878089500599010

/-! ## A230391.P7304972008289916907

`lt[A332246(A332276(n+1)), A328444(n+1)]`
-/

namespace A230391.P7304972008289916907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (A332276 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230391.P7304972008289916907

/-! ## A230391.P18080779660531845948

`lt[A332246(A332276(n+1)), A332301(n+1)]`
-/

namespace A230391.P18080779660531845948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (A332276 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230391.P18080779660531845948

/-! ## A230391.P2560580778524614881

`lt[A076397(A271269(n+1)), A163336(3*n)]`
-/

namespace A230391.P2560580778524614881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076397 (A271269 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A230391.P2560580778524614881

/-!
# A230392: Primes of the form 232*m^2+1.

The programs for A230392, there is no canonical definition to state claims against.
-/

/-! ## A230392.P6494011903969277805

`A158666(2*A230391(n+1))`
-/

namespace A230392.P6494011903969277805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158666 (2 * A230391 (n + 1)).toNat

end

end A230392.P6494011903969277805

/-! ## A230392.P2172225305225322339

`p?[n²*232+1]`
-/

namespace A230392.P2172225305225322339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * 232 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A230392.P2172225305225322339

/-! ## A230392.P15265331345025906508

`or(1, p?[A158666(2*n)])`
-/

namespace A230392.P15265331345025906508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158666 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A230392.P15265331345025906508

/-! ## A230392.P6098886198695201318

`∩[A139652(n+1), A158666(n)]`
-/

namespace A230392.P6098886198695201318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158666 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230392.P6098886198695201318

/-!
# A230393: Number of n X 2 0..4 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230393, the canonical program `A230393.P9436800133793388390` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230393 has offset 1).

The definition of A230393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230393.P9436800133793388390

`4*a(n-1)-4*a(n-3)-9*a(n-4)-6*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A230393

/-- `4*a(n-1)-4*a(n-3)-9*a(n-4)-6*a(n-5)` -/
def P9436800133793388390.Spec : Prop :=
  ∀ n, P9436800133793388390.a n = A230393 (n + 1)

theorem P9436800133793388390.correct : P9436800133793388390.Spec := by
  intro n
  simp only [A230393, Nat.add_sub_cancel]

end A230393

/-! ## A230393.P14320834403665863393

`A230571(∑[n+2]+3)`
-/

namespace A230393.P14320834403665863393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A230393.P14320834403665863393

namespace A230393

/-- `A230571(∑[n+2]+3)` -/
def P14320834403665863393.Spec : Prop :=
  ∀ n, P14320834403665863393.a n = A230393 (n + 1)

end A230393

/-! ## A230393.P10531369773016109021

`A230571(A340266(n+1))+A025442(n)`
-/

namespace A230393.P10531369773016109021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (A340266 (n + 1)).toNat + A025442 n

end

end A230393.P10531369773016109021

namespace A230393

/-- `A230571(A340266(n+1))+A025442(n)` -/
def P10531369773016109021.Spec : Prop :=
  ∀ n, P10531369773016109021.a n = A230393 (n + 1)

end A230393

/-! ## A230393.P13812219685089938459

`A230571(A340266(n+1))%A000533(n)`
-/

namespace A230393.P13812219685089938459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230571 (A340266 (n + 1)).toNat) (A000533 n)

end

end A230393.P13812219685089938459

namespace A230393

/-- `A230571(A340266(n+1))%A000533(n)` -/
def P13812219685089938459.Spec : Prop :=
  ∀ n, P13812219685089938459.a n = A230393 (n + 1)

end A230393

/-! ## A230393.P13435762566633329592

`A230571(n+1)+A230571(A340266(n+1))`
-/

namespace A230393.P13435762566633329592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230571 (n + 1) + A230571 (A340266 (n + 1)).toNat

end

end A230393.P13435762566633329592

namespace A230393

/-- `A230571(n+1)+A230571(A340266(n+1))` -/
def P13435762566633329592.Spec : Prop :=
  ∀ n, P13435762566633329592.a n = A230393 (n + 1)

end A230393

/-!
# A230394: Number of nX3 0..4 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230394, there is no canonical definition to state claims against.
-/

/-! ## A230394.P3675592633248199585

`A230398(∑[n+2]+4)`
-/

namespace A230394.P3675592633248199585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230394.P3675592633248199585

/-! ## A230394.P2131518827706007646

`lcm(2, A230398(A167614(n+1)))`
-/

namespace A230394.P2131518827706007646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230398 (A167614 (n + 1)).toNat)

end

end A230394.P2131518827706007646

/-! ## A230394.P10871845289458116700

`A230398(A167614(n+1))+A025442(n)`
-/

namespace A230394.P10871845289458116700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A167614 (n + 1)).toNat + A025442 n

end

end A230394.P10871845289458116700

/-! ## A230394.P2512012647142115151

`A230398(A167614(n+1))+A107846(n)`
-/

namespace A230394.P2512012647142115151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A167614 (n + 1)).toNat + A107846 n

end

end A230394.P2512012647142115151

/-! ## A230394.P8011090405818028869

`A230398(A167614(n+1))+A184945(n)`
-/

namespace A230394.P8011090405818028869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A167614 (n + 1)).toNat + A184945 n

end

end A230394.P8011090405818028869

/-!
# A230395: Number of nX4 0..4 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230395, there is no canonical definition to state claims against.
-/

/-! ## A230395.P18159188336039647493

`A230398(A374004(n+1))`
-/

namespace A230395.P18159188336039647493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A374004 (n + 1)).toNat

end

end A230395.P18159188336039647493

/-! ## A230395.P84627433140860054

`A230398(A141214(n)+7)`
-/

namespace A230395.P84627433140860054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A141214 n + 7).toNat

end

end A230395.P84627433140860054

/-! ## A230395.P17102679608553330481

`A230398(A052905(n)+9)`
-/

namespace A230395.P17102679608553330481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A052905 n + 9).toNat

end

end A230395.P17102679608553330481

/-! ## A230395.P18104770793553681257

`A230398(A055999(n)+10)`
-/

namespace A230395.P18104770793553681257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A055999 n + 10).toNat

end

end A230395.P18104770793553681257

/-! ## A230395.P14348141747307901588

`A230398(eq[5, A066657(n)])`
-/

namespace A230395.P14348141747307901588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230395.P14348141747307901588

/-!
# A230396: Number of nX5 0..4 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230396, there is no canonical definition to state claims against.
-/

/-! ## A230396.P14335657252284325111

`A230398(A374005(n+1))`
-/

namespace A230396.P14335657252284325111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A374005 (n + 1)).toNat

end

end A230396.P14335657252284325111

/-! ## A230396.P6690077055336181296

`A230398(A155212(n)+13)`
-/

namespace A230396.P6690077055336181296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A155212 n + 13).toNat

end

end A230396.P6690077055336181296

/-! ## A230396.P1629600563118537120

`A230398(A056000(n)+15)`
-/

namespace A230396.P1629600563118537120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A056000 n + 15).toNat

end

end A230396.P1629600563118537120

/-! ## A230396.P11557076307481395446

`A230398(eq[7, A066657(n)])`
-/

namespace A230396.P11557076307481395446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230396.P11557076307481395446

/-! ## A230396.P10500340265802073211

`A230398(A167614(n+3)+2)`
-/

namespace A230396.P10500340265802073211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A167614 (n + 3) + 2).toNat

end

end A230396.P10500340265802073211

/-!
# A230397: Number of nX6 0..4 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230397, there is no canonical definition to state claims against.
-/

/-! ## A230397.P338522347403387224

`A230398(A374007(n+1))`
-/

namespace A230397.P338522347403387224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A374007 (n + 1)).toNat

end

end A230397.P338522347403387224

/-! ## A230397.P4903331572397463171

`A230398(A052905(n+3))`
-/

namespace A230397.P4903331572397463171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A052905 (n + 3)).toNat

end

end A230397.P4903331572397463171

/-! ## A230397.P3517623793839279447

`A230398(A166136(n+4))`
-/

namespace A230397.P3517623793839279447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A166136 (n + 4)).toNat

end

end A230397.P3517623793839279447

/-!
# A230398: T(n,k)=Number of nXk 0..4 arrays x(i,j) with each element horizontally or vertically next to at least one element with value (x(i,j)+1) mod 5, and upper left element zero.

The programs for A230398, there is no canonical definition to state claims against.
-/

/-! ## A230398.P12313720686158441465

`A056358(2^A326463(n))`
-/

namespace A230398.P12313720686158441465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056358 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A326463 n : ℤ))).toNat

end

end A230398.P12313720686158441465

/-! ## A230398.P1068350423363624530

`82%A000032(A213004(n))`
-/

namespace A230398.P1068350423363624530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 82 (A000032 (A213004 n).toNat)

end

end A230398.P1068350423363624530

/-! ## A230398.P3795588596057812385

`abs(A012579(A326463(n)!))`
-/

namespace A230398.P3795588596057812385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A012579 (Nat.factorial (A326463 n).toNat)|

end

end A230398.P3795588596057812385

/-! ## A230398.P2631966206503141271

`A340489(C(A019446(n+1), 10))`
-/

namespace A230398.P2631966206503141271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340489 (Nat.choose (A019446 (n + 1)).toNat 10)

end

end A230398.P2631966206503141271

/-! ## A230398.P8953761851175084056

`A096994(Δ[A034398(n+1)]²)`
-/

namespace A230398.P8953761851175084056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096994 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A230398.P8953761851175084056

