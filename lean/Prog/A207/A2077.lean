import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B010.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
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
import Seq.Opaque.C024

/-!
# A207700: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207700, the canonical program `A207700.P11091944884463789001` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207700 has offset 1).

The definition of A207700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A207700.P11091944884463789001

`(3-10*(n+1)-15*(n+1)²+44*(n+1)^3+21*(n+1)^4+2*(n+1)^5)/3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A207700

/-- `(3-10*(n+1)-15*(n+1)²+44*(n+1)^3+21*(n+1)^4+2*(n+1)^5)/3` -/
def P11091944884463789001.Spec : Prop :=
  ∀ n, P11091944884463789001.a n = (A207700 (n + 1) : ℚ)

end A207700

/-! ## A207700.P10420512059782604880

`sqrt(A207399(n+1)*A207701(n+1))`
-/

namespace A207700.P10420512059782604880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207399 (n + 1) * A207701 (n + 1) : ℝ)

end

end A207700.P10420512059782604880

namespace A207700

/-- `sqrt(A207399(n+1)*A207701(n+1))` -/
def P10420512059782604880.Spec : Prop :=
  ∀ n, P10420512059782604880.a n = (A207700 (n + 1) : ℝ)

end A207700

/-! ## A207700.P7209771195170544497

`A207399(n+1)/A086113(n+1)*A208283(n+1)`
-/

namespace A207700.P7209771195170544497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207399 (n + 1) : ℚ) / (A086113 (n + 1) : ℚ) * (A208283 (n + 1) : ℚ)

end

end A207700.P7209771195170544497

namespace A207700

/-- `A207399(n+1)/A086113(n+1)*A208283(n+1)` -/
def P7209771195170544497.Spec : Prop :=
  ∀ n, P7209771195170544497.a n = (A207700 (n + 1) : ℚ)

end A207700

/-! ## A207700.P6870990623043110478

`A086113(n+1)/A016742(n+1)*A208283(n+1)`
-/

namespace A207700.P6870990623043110478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086113 (n + 1) : ℚ) / (A016742 (n + 1) : ℚ) * (A208283 (n + 1) : ℚ)

end

end A207700.P6870990623043110478

namespace A207700

/-- `A086113(n+1)/A016742(n+1)*A208283(n+1)` -/
def P6870990623043110478.Spec : Prop :=
  ∀ n, P6870990623043110478.a n = (A207700 (n + 1) : ℚ)

end A207700

/-!
# A207701: Number of n X 6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207701, the canonical program `A207701.P6815164230583372356` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207701 has offset 1).

The definition of A207701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207701.P6815164230583372356

`(1-∑[2*A028878(n)])²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A207701

/-- `(1-∑[2*A028878(n)])²` -/
def P6815164230583372356.Spec : Prop :=
  ∀ n, P6815164230583372356.a n = A207701 (n + 1)

theorem P6815164230583372356.correct : P6815164230583372356.Spec := by
  intro n
  simp only [A207701, Nat.add_sub_cancel]

end A207701

/-! ## A207701.P10285976002521045592

`(∑[5-A161532(n+1)]+1)²`
-/

namespace A207701.P10285976002521045592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A161532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A207701.P10285976002521045592

namespace A207701

/-- `(∑[5-A161532(n+1)]+1)²` -/
def P10285976002521045592.Spec : Prop :=
  ∀ n, P10285976002521045592.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P4873121770236495343

`(∑[A268581(n+1)-10]+n)²`
-/

namespace A207701.P4873121770236495343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) ^ 2

end

end A207701.P4873121770236495343

namespace A207701

/-- `(∑[A268581(n+1)-10]+n)²` -/
def P4873121770236495343.Spec : Prop :=
  ∀ n, P4873121770236495343.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P7355271198554282811

`(A208283(n+1)/(2*(n+1)))²`
-/

namespace A207701.P7355271198554282811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A208283 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)) ^ 2

end

end A207701.P7355271198554282811

namespace A207701

/-- `(A208283(n+1)/(2*(n+1)))²` -/
def P7355271198554282811.Spec : Prop :=
  ∀ n, P7355271198554282811.a n = (A207701 (n + 1) : ℚ)

end A207701

/-! ## A207701.P10945465517795233663

`(A112524(n+1)+(2*(n+1))²)²`
-/

namespace A207701.P10945465517795233663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112524 (n + 1) + ((2 * (n + 1)) ^ 2 : ℤ)) ^ 2

end

end A207701.P10945465517795233663

namespace A207701

/-- `(A112524(n+1)+(2*(n+1))²)²` -/
def P10945465517795233663.Spec : Prop :=
  ∀ n, P10945465517795233663.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P9903010790701664641

`∑[A017569(n)+A005893(n)]²`
-/

namespace A207701.P9903010790701664641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017569 n + A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207701.P9903010790701664641

namespace A207701

/-- `∑[A017569(n)+A005893(n)]²` -/
def P9903010790701664641.Spec : Prop :=
  ∀ n, P9903010790701664641.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P14443945197404886702

`(A014106(n)+∑[A268581(n)])²`
-/

namespace A207701.P14443945197404886702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014106 n + ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207701.P14443945197404886702

namespace A207701

/-- `(A014106(n)+∑[A268581(n)])²` -/
def P14443945197404886702.Spec : Prop :=
  ∀ n, P14443945197404886702.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P2259186402039012084

`(A134538(n+1)+∑[A001844(n)])²`
-/

namespace A207701.P2259186402039012084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134538 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A207701.P2259186402039012084

namespace A207701

/-- `(A134538(n+1)+∑[A001844(n)])²` -/
def P2259186402039012084.Spec : Prop :=
  ∀ n, P2259186402039012084.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P17394090640329873852

`(1-(A033581(n+1)+A006331(n)))²`
-/

namespace A207701.P17394090640329873852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (A033581 (n + 1) + A006331 n)) ^ 2

end

end A207701.P17394090640329873852

namespace A207701

/-- `(1-(A033581(n+1)+A006331(n)))²` -/
def P17394090640329873852.Spec : Prop :=
  ∀ n, P17394090640329873852.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P6127218153608280514

`A207700(n+1)²/A207399(n+1)`
-/

namespace A207701.P6127218153608280514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207700 (n + 1) ^ 2 : ℚ) / (A207399 (n + 1) : ℚ)

end

end A207701.P6127218153608280514

namespace A207701

/-- `A207700(n+1)²/A207399(n+1)` -/
def P6127218153608280514.Spec : Prop :=
  ∀ n, P6127218153608280514.a n = (A207701 (n + 1) : ℚ)

end A207701

/-! ## A207701.P7363803341165589401

`(A005900(n)+Δ[A050409(n)])²`
-/

namespace A207701.P7363803341165589401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005900 n + (f1 (n + 1) - f1 n)) ^ 2

end

end A207701.P7363803341165589401

namespace A207701

/-- `(A005900(n)+Δ[A050409(n)])²` -/
def P7363803341165589401.Spec : Prop :=
  ∀ n, P7363803341165589401.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P9102203924217901577

`(A006331(n+1)+A000466(n+1))²`
-/

namespace A207701.P9102203924217901577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006331 (n + 1) + A000466 (n + 1)) ^ 2

end

end A207701.P9102203924217901577

namespace A207701

/-- `(A006331(n+1)+A000466(n+1))²` -/
def P9102203924217901577.Spec : Prop :=
  ∀ n, P9102203924217901577.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P4917192551274612431

`(A005898(n+1)-(A001845(n)+3))²`
-/

namespace A207701.P4917192551274612431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005898 (n + 1) - (A001845 n + 3)) ^ 2

end

end A207701.P4917192551274612431

namespace A207701

/-- `(A005898(n+1)-(A001845(n)+3))²` -/
def P4917192551274612431.Spec : Prop :=
  ∀ n, P4917192551274612431.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P9515831831137539199

`A208283(n+1)/A016742(n+1)*A208283(n+1)`
-/

namespace A207701.P9515831831137539199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208283 (n + 1) : ℚ) / (A016742 (n + 1) : ℚ) * (A208283 (n + 1) : ℚ)

end

end A207701.P9515831831137539199

namespace A207701

/-- `A208283(n+1)/A016742(n+1)*A208283(n+1)` -/
def P9515831831137539199.Spec : Prop :=
  ∀ n, P9515831831137539199.a n = (A207701 (n + 1) : ℚ)

end A207701

/-! ## A207701.P2488220139568915681

`(A067046(2*(n+1))+A000466(n+1))²`
-/

namespace A207701.P2488220139568915681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A067046 (2 * (n + 1)) + A000466 (n + 1)) ^ 2

end

end A207701.P2488220139568915681

namespace A207701

/-- `(A067046(2*(n+1))+A000466(n+1))²` -/
def P2488220139568915681.Spec : Prop :=
  ∀ n, P2488220139568915681.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P4893169008334881747

`(A198148(2*n+1)+A006331(n+1))²`
-/

namespace A207701.P4893169008334881747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A198148 (2 * n + 1) + A006331 (n + 1)) ^ 2

end

end A207701.P4893169008334881747

namespace A207701

/-- `(A198148(2*n+1)+A006331(n+1))²` -/
def P4893169008334881747.Spec : Prop :=
  ∀ n, P4893169008334881747.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P10049213518658065608

`(A011894(2*n)+A001844(2*n+1))²`
-/

namespace A207701.P10049213518658065608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011894 (2 * n) + A001844 (2 * n + 1)) ^ 2

end

end A207701.P10049213518658065608

namespace A207701

/-- `(A011894(2*n)+A001844(2*n+1))²` -/
def P10049213518658065608.Spec : Prop :=
  ∀ n, P10049213518658065608.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P9929172457789427749

`(A213483(2*n+1)+A006918(2*n))²`
-/

namespace A207701.P9929172457789427749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A213483 (2 * n + 1) + A006918 (2 * n)) ^ 2

end

end A207701.P9929172457789427749

namespace A207701

/-- `(A213483(2*n+1)+A006918(2*n))²` -/
def P9929172457789427749.Spec : Prop :=
  ∀ n, P9929172457789427749.a n = A207701 (n + 1)

end A207701

/-! ## A207701.P14560067412343891268

`(A026057(2*n+3)/2)²`
-/

namespace A207701.P14560067412343891268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026057 (2 * n + 3) : ℚ) / 2) ^ 2

end

end A207701.P14560067412343891268

namespace A207701

/-- `(A026057(2*n+3)/2)²` -/
def P14560067412343891268.Spec : Prop :=
  ∀ n, P14560067412343891268.a n = (A207701 (n + 1) : ℚ)

end A207701

/-! ## A207701.P6754289039491515031

`∏[ratio[A026057(2*n+1)]²]`
-/

namespace A207701.P6754289039491515031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026057 (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A207701.P6754289039491515031

namespace A207701

/-- `∏[ratio[A026057(2*n+1)]²]` -/
def P6754289039491515031.Spec : Prop :=
  ∀ n, P6754289039491515031.a n = (A207701 (n + 1) : ℚ)

end A207701

/-!
# A207702: Number of n X 7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207702, the canonical program `A207702.P17442933839069579336` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207702 has offset 1).

The definition of A207702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207702.P17442933839069579336

`A207700(n+1)/A086113(n+1)*A208284(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A207702

/-- `A207700(n+1)/A086113(n+1)*A208284(n+1)` -/
def P17442933839069579336.Spec : Prop :=
  ∀ n, P17442933839069579336.a n = (A207702 (n + 1) : ℚ)

end A207702

/-! ## A207702.P13412365350047645547

`A207701(n+1)/A208283(n+1)*A208284(n+1)`
-/

namespace A207702.P13412365350047645547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207701 (n + 1) : ℚ) / (A208283 (n + 1) : ℚ) * (A208284 (n + 1) : ℚ)

end

end A207702.P13412365350047645547

namespace A207702

/-- `A207701(n+1)/A208283(n+1)*A208284(n+1)` -/
def P13412365350047645547.Spec : Prop :=
  ∀ n, P13412365350047645547.a n = (A207702 (n + 1) : ℚ)

end A207702

/-! ## A207702.P11330940752739686176

`A207703(A055999(n+4))`
-/

namespace A207702.P11330940752739686176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A055999 (n + 4)).toNat

end

end A207702.P11330940752739686176

namespace A207702

/-- `A207703(A055999(n+4))` -/
def P11330940752739686176.Spec : Prop :=
  ∀ n, P11330940752739686176.a n = A207702 (n + 1)

end A207702

/-! ## A207702.P5874025953768570629

`A207703(A052905(n+4)-1)`
-/

namespace A207702.P5874025953768570629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A052905 (n + 4) - 1).toNat

end

end A207702.P5874025953768570629

namespace A207702

/-- `A207703(A052905(n+4)-1)` -/
def P5874025953768570629.Spec : Prop :=
  ∀ n, P5874025953768570629.a n = A207702 (n + 1)

end A207702

/-! ## A207702.P10228396082996963207

`A207703(A000124(n+7)-7)`
-/

namespace A207702.P10228396082996963207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A000124 (n + 7) - 7).toNat

end

end A207702.P10228396082996963207

namespace A207702

/-- `A207703(A000124(n+7)-7)` -/
def P10228396082996963207.Spec : Prop :=
  ∀ n, P10228396082996963207.a n = A207702 (n + 1)

end A207702

/-!
# A207703: T(n,k) = Number of n X k 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207703, there is no canonical definition to state claims against.
-/

/-! ## A207703.P8124424927103360466

`char[10]+A209650(n+1)%record[A237762(n+1)]`
-/

namespace A207703.P8124424927103360466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237762 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A209650 (n + 1)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A207703.P8124424927103360466

/-! ## A207703.P463715814603920955

`char[10]+A008687(ceil(2^(n-1)))*A209650(n+1)`
-/

namespace A207703.P463715814603920955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A008687 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat * A209650 (n + 1)

end

end A207703.P463715814603920955

/-! ## A207703.P13389918581915329868

`A207068(n+1)+A129251(A094373(n))`
-/

namespace A207703.P13389918581915329868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (n + 1) + A129251 (A094373 n).toNat

end

end A207703.P13389918581915329868

/-! ## A207703.P4253878706656820840

`A209650(n+1)+A129251(A094373(n))`
-/

namespace A207703.P4253878706656820840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (n + 1) + A129251 (A094373 n).toNat

end

end A207703.P4253878706656820840

/-! ## A207703.P13608859223757512115

`A207068(n+1)+A178798(A235491(n))`
-/

namespace A207703.P13608859223757512115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207068 (n + 1) + A178798 (A235491 n).toNat

end

end A207703.P13608859223757512115

/-!
# A207704: Number of 3Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207704, there is no canonical definition to state claims against.
-/

/-! ## A207704.P13121206730548262387

`A207703(∑[n+2]+4)`
-/

namespace A207704.P13121206730548262387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207704.P13121206730548262387

/-! ## A207704.P16664397779970800974

`lcm((-1)^n, A207703(A167614(n+1)))`
-/

namespace A207704.P16664397779970800974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A207703 (A167614 (n + 1)).toNat)

end

end A207704.P16664397779970800974

/-! ## A207704.P3579211999488382328

`A207908(∑[n+2]+4)`
-/

namespace A207704.P3579211999488382328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207908 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207704.P3579211999488382328

/-! ## A207704.P518675787765227928

`lcm(A207908(A167614(n+1)), A246016(n))`
-/

namespace A207704.P518675787765227928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A207908 (A167614 (n + 1)).toNat) (A246016 n)

end

end A207704.P518675787765227928

/-! ## A207704.P2095946895290043947

`A207908(A167614(n+1))%A254851(n+1)`
-/

namespace A207704.P2095946895290043947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207908 (A167614 (n + 1)).toNat) (A254851 (n + 1))

end

end A207704.P2095946895290043947

/-!
# A207705: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207705, there is no canonical definition to state claims against.
-/

/-! ## A207705.P10148612202822372262

`A207703(∑[n+3]+7)`
-/

namespace A207705.P10148612202822372262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A207705.P10148612202822372262

/-! ## A207705.P3610715020281052369

`A207703(A167614(n+2)+1)+A000007(n+1)`
-/

namespace A207705.P3610715020281052369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A167614 (n + 2) + 1).toNat + A000007 (n + 1)

end

end A207705.P3610715020281052369

/-! ## A207705.P15672303045468875943

`A010156(12*n+7)*A207703(A167614(n+2)+1)`
-/

namespace A207705.P15672303045468875943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010156 (12 * n + 7) * A207703 (A167614 (n + 2) + 1).toNat

end

end A207705.P15672303045468875943

/-! ## A207705.P1560115297342133944

`A007318(A000096(n))*A207703(A167614(n+2)+1)`
-/

namespace A207705.P1560115297342133944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A207703 (A167614 (n + 2) + 1).toNat

end

end A207705.P1560115297342133944

/-! ## A207705.P13681761920191938564

`A007318(A025922(n))*A207703(A167614(n+2)+1)`
-/

namespace A207705.P13681761920191938564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A025922 n).toNat * A207703 (A167614 (n + 2) + 1).toNat

end

end A207705.P13681761920191938564

/-!
# A207706: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207706, there is no canonical definition to state claims against.
-/

/-! ## A207706.P16065020745772486408

`A207703(A167499(n+3))`
-/

namespace A207706.P16065020745772486408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A167499 (n + 3)).toNat

end

end A207706.P16065020745772486408

/-! ## A207706.P8125003291308541993

`A207703(A133263(n+4)+3)`
-/

namespace A207706.P8125003291308541993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A133263 (n + 4) + 3).toNat

end

end A207706.P8125003291308541993

/-! ## A207706.P4479949835704989155

`A207703(A000217(n+4)+5)`
-/

namespace A207706.P4479949835704989155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A000217 (n + 4) + 5).toNat

end

end A207706.P4479949835704989155

/-! ## A207706.P6569560756984058697

`A207703(A052905(n+1)+10)`
-/

namespace A207706.P6569560756984058697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A052905 (n + 1) + 10).toNat

end

end A207706.P6569560756984058697

/-! ## A207706.P17470773815929980306

`A207703(A167614(n+2)+n+6)`
-/

namespace A207706.P17470773815929980306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A207706.P17470773815929980306

/-!
# A207707: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207707, there is no canonical definition to state claims against.
-/

/-! ## A207707.P8140416849907986570

`A207703(A000124(n+5)+5)`
-/

namespace A207707.P8140416849907986570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A000124 (n + 5) + 5).toNat

end

end A207707.P8140416849907986570

/-! ## A207707.P15338649496182434446

`A207703(A000217(n+5)+6)`
-/

namespace A207707.P15338649496182434446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A000217 (n + 5) + 6).toNat

end

end A207707.P15338649496182434446

/-! ## A207707.P8700542775962213986

`A207703(A052905(n+2)+11)`
-/

namespace A207707.P8700542775962213986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A052905 (n + 2) + 11).toNat

end

end A207707.P8700542775962213986

/-! ## A207707.P7771132889669307219

`A207703(A055999(n+2)+12)`
-/

namespace A207707.P7771132889669307219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A055999 (n + 2) + 12).toNat

end

end A207707.P7771132889669307219

/-! ## A207707.P7709528793154822134

`A207703(A038722(A052905(n+3)))`
-/

namespace A207707.P7709528793154822134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A038722 (A052905 (n + 3)).toNat).toNat

end

end A207707.P7709528793154822134

/-!
# A207708: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 1 0 vertically.

The programs for A207708, there is no canonical definition to state claims against.
-/

/-! ## A207708.P17020072813576929622

`A207703(A167487(n+5))`
-/

namespace A207708.P17020072813576929622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A167487 (n + 5)).toNat

end

end A207708.P17020072813576929622

/-! ## A207708.P13333928962974275430

`A207703(A000124(n+6)+6)`
-/

namespace A207708.P13333928962974275430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A000124 (n + 6) + 6).toNat

end

end A207708.P13333928962974275430

/-! ## A207708.P5428825247281792137

`A207703(A000217(n+6)+7)`
-/

namespace A207708.P5428825247281792137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A000217 (n + 6) + 7).toNat

end

end A207708.P5428825247281792137

/-! ## A207708.P456937367653900455

`A207703(A052905(n+3)+12)`
-/

namespace A207708.P456937367653900455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A052905 (n + 3) + 12).toNat

end

end A207708.P456937367653900455

/-! ## A207708.P2644408806381793490

`A207703(A055999(n+3)+13)`
-/

namespace A207708.P2644408806381793490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207703 (A055999 (n + 3) + 13).toNat

end

end A207708.P2644408806381793490

/-!
# A207709: Floor((H(n) + exp(H(n))*log(H(n)))/sigma(n)), where H(n) is the harmonic number sum_{i=1..n} 1/i.

The programs for A207709, there is no canonical definition to state claims against.
-/

/-! ## A207709.P2517523720395615999

`floor(A057640(n+1)/Δ[A160664(n)])`
-/

namespace A207709.P2517523720395615999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057640 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A207709.P2517523720395615999

/-! ## A207709.P6864074711262573307

`floor(A057640(n+1)/A000203(n+1))`
-/

namespace A207709.P6864074711262573307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057640 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A207709.P6864074711262573307

/-! ## A207709.P14823375306929720647

`floor(A057641(n+1)/A000203(n+1))+1`
-/

namespace A207709.P14823375306929720647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057641 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌋ + 1

end

end A207709.P14823375306929720647

/-! ## A207709.P7229236212703659052

`round(sqrt(A289997(n+1)/A007503(n+1)+1))`
-/

namespace A207709.P7229236212703659052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A289997 (n + 1) : ℚ) / (A007503 (n + 1) : ℚ) + 1 : ℝ))

end

end A207709.P7229236212703659052

/-! ## A207709.P10690915219881786168

`floor((A000010(n+1)/A180241(n+1)+1)²)`
-/

namespace A207709.P10690915219881786168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000010 (n + 1) : ℚ) / (A180241 (n + 1) : ℚ) + 1) ^ 2⌋

end

end A207709.P10690915219881786168

/-! ## A207709.P14606108077874196923

`ceil(A349749(n+1)/A239050(n+1))`
-/

namespace A207709.P14606108077874196923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A349749 (n + 1) : ℚ) / (A239050 (n + 1) : ℚ)⌉

end

end A207709.P14606108077874196923

/-! ## A207709.P11012305988548538336

`ceil(A324759(n+1)/∑{d}[n+1, #])`
-/

namespace A207709.P11012305988548538336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324759 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌉

end

end A207709.P11012305988548538336

/-! ## A207709.P7883621498905871917

`ceil(A262290(n)/A239050(n+1))!`
-/

namespace A207709.P7883621498905871917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈(A262290 n : ℚ) / (A239050 (n + 1) : ℚ)⌉.toNat

end

end A207709.P7883621498905871917

/-! ## A207709.P14552586770596189347

`A014709(ceil(A262290(n)/A239050(n+1)))`
-/

namespace A207709.P14552586770596189347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 ⌈(A262290 n : ℚ) / (A239050 (n + 1) : ℚ)⌉.toNat

end

end A207709.P14552586770596189347

/-!
# A207710: Expansion of f(x) * f(-x^10) / f(-x^2, -x^8) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A207710, there is no canonical definition to state claims against.
-/

/-! ## A207710.P5120052262679775987

`(1-and(2, n))*A208546(n)`
-/

namespace A207710.P5120052262679775987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A208546 n

end

end A207710.P5120052262679775987

/-! ## A207710.P18168517322215911093

`A033999(n)*A113430(n)`
-/

namespace A207710.P18168517322215911093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113430 n

end

end A207710.P18168517322215911093

/-! ## A207710.P4998443780482489160

`A057077(n)*A208546(n)`
-/

namespace A207710.P4998443780482489160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A208546 n

end

end A207710.P4998443780482489160

/-! ## A207710.P17239602907772489039

`A087960(n)*A214529(n)`
-/

namespace A207710.P17239602907772489039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A214529 n

end

end A207710.P17239602907772489039

/-! ## A207710.P7684513227332078362

`(A004442(n)-n)*A113430(n)`
-/

namespace A207710.P7684513227332078362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A113430 n

end

end A207710.P7684513227332078362

/-! ## A207710.P4378361745575380528

`A057077(A057077(n)+n)*A113430(n)`
-/

namespace A207710.P4378361745575380528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A057077 n + (n : ℤ)).toNat * A113430 n

end

end A207710.P4378361745575380528

/-! ## A207710.P16040479671759350168

`A113430(n)*A113681(n)*A207735(n)`
-/

namespace A207710.P16040479671759350168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 n * A113681 n * A207735 n

end

end A207710.P16040479671759350168

/-! ## A207710.P7457705252994351433

`A057077(n+1)*A214529(n)`
-/

namespace A207710.P7457705252994351433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A214529 n

end

end A207710.P7457705252994351433

/-! ## A207710.P9014641317266815828

`A057077(2*n)*A113430(n)`
-/

namespace A207710.P9014641317266815828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A113430 n

end

end A207710.P9014641317266815828

/-! ## A207710.P12209683525488306453

`A087960(2*n)*A113430(n)`
-/

namespace A207710.P12209683525488306453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A113430 n

end

end A207710.P12209683525488306453

/-! ## A207710.P1686695378019267237

`A113430(A093722(n+1))*A214529(n)`
-/

namespace A207710.P1686695378019267237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 (A093722 (n + 1)).toNat * A214529 n

end

end A207710.P1686695378019267237

/-! ## A207710.P17805362881255133547

`A113430(n)/A087960(n²)`
-/

namespace A207710.P17805362881255133547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113430 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A207710.P17805362881255133547

/-!
# A207711: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207711, there is no canonical definition to state claims against.
-/

/-! ## A207711.P10887680325392401645

`A207717((n+1)²+n²)`
-/

namespace A207711.P10887680325392401645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 ((n + 1) ^ 2 + n ^ 2)

end

end A207711.P10887680325392401645

/-! ## A207711.P15452396257133218902

`record[A003982(n)*A207717(n+1)]`
-/

namespace A207711.P15452396257133218902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207711.P15452396257133218902

/-! ## A207711.P10535242289719801838

`record[gcd(A008482(n), A207717(n+1))]`
-/

namespace A207711.P10535242289719801838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A207717 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207711.P10535242289719801838

/-! ## A207711.P1986047472439897502

`A207717(A001844(n))+A185037(n)`
-/

namespace A207711.P1986047472439897502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A001844 n).toNat + A185037 n

end

end A207711.P1986047472439897502

/-! ## A207711.P9225156876043978614

`A119335(n)*A207717(A001844(n))`
-/

namespace A207711.P9225156876043978614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A207717 (A001844 n).toNat

end

end A207711.P9225156876043978614

/-!
# A207712: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207712, there is no canonical definition to state claims against.
-/

/-! ## A207712.P2317089079504669619

`A207717(∑[n+3]+1)`
-/

namespace A207712.P2317089079504669619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207712.P2317089079504669619

/-! ## A207712.P16962302693219377872

`A010684(2*n)*A207717(A052905(n)+3)`
-/

namespace A207712.P16962302693219377872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * n) * A207717 (A052905 n + 3).toNat

end

end A207712.P16962302693219377872

/-! ## A207712.P568282276090970152

`A006519(2*n+1)*A207717(A034856(n+2))`
-/

namespace A207712.P568282276090970152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A207717 (A034856 (n + 2)).toNat

end

end A207712.P568282276090970152

/-! ## A207712.P12795066859833550472

`A207717(A052905(n)+3)+A008683(8*n+4)`
-/

namespace A207712.P12795066859833550472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A052905 n + 3).toNat + A008683 (8 * n + 4)

end

end A207712.P12795066859833550472

/-! ## A207712.P77980164021258388

`A001221(4*A001316(n))*A207717(A052905(n)+3)`
-/

namespace A207712.P77980164021258388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (4 * A001316 n).toNat * A207717 (A052905 n + 3).toNat

end

end A207712.P77980164021258388

/-!
# A207713: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207713, there is no canonical definition to state claims against.
-/

/-! ## A207713.P10782967246452327255

`A207436(n+1)/A207712(n+1)*A207738(n+1)`
-/

namespace A207713.P10782967246452327255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207436 (n + 1) : ℚ) / (A207712 (n + 1) : ℚ) * (A207738 (n + 1) : ℚ)

end

end A207713.P10782967246452327255

/-! ## A207713.P15997010972217150583

`A207712(n+1)/A207737(n+1)*A207738(n+1)`
-/

namespace A207713.P15997010972217150583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207712 (n + 1) : ℚ) / (A207737 (n + 1) : ℚ) * (A207738 (n + 1) : ℚ)

end

end A207713.P15997010972217150583

/-! ## A207713.P616664559117101899

`sqrt(A207436(n+1))*sqrt(A207739(n+1))`
-/

namespace A207713.P616664559117101899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207436 (n + 1) : ℝ) * Real.sqrt (A207739 (n + 1) : ℝ)

end

end A207713.P616664559117101899

/-! ## A207713.P6886949434808057655

`sqrt(A207436(n+1)*A207739(n+1))`
-/

namespace A207713.P6886949434808057655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207436 (n + 1) * A207739 (n + 1) : ℝ)

end

end A207713.P6886949434808057655

/-! ## A207713.P12068301415651210237

`A207717(A055998(n+2))`
-/

namespace A207713.P12068301415651210237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A055998 (n + 2)).toNat

end

end A207713.P12068301415651210237

/-!
# A207714: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207714, there is no canonical definition to state claims against.
-/

/-! ## A207714.P4266693920659691039

`A207436(n+1)/A207713(n+1)*A207740(n+1)`
-/

namespace A207714.P4266693920659691039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207436 (n + 1) : ℚ) / (A207713 (n + 1) : ℚ) * (A207740 (n + 1) : ℚ)

end

end A207714.P4266693920659691039

/-! ## A207714.P5836176375688573510

`A207712(n+1)/A207738(n+1)*A207740(n+1)`
-/

namespace A207714.P5836176375688573510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207712 (n + 1) : ℚ) / (A207738 (n + 1) : ℚ) * (A207740 (n + 1) : ℚ)

end

end A207714.P5836176375688573510

/-! ## A207714.P9696661665990632151

`A207717(Δ[A264443(n)])`
-/

namespace A207714.P9696661665990632151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (f1 (n + 1) - f1 n).toNat

end

end A207714.P9696661665990632151

/-! ## A207714.P17806777853663347879

`A207717(eq[4, A193592(n)])`
-/

namespace A207714.P17806777853663347879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207714.P17806777853663347879

/-! ## A207714.P2318854753740423431

`A207717(eq[8, A140996(n)])`
-/

namespace A207714.P2318854753740423431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207714.P2318854753740423431

/-!
# A207715: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207715, there is no canonical definition to state claims against.
-/

/-! ## A207715.P3524273041554682701

`A207717(eq[3, A219347(n)])`
-/

namespace A207715.P3524273041554682701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207715.P3524273041554682701

/-! ## A207715.P5470457148784023118

`A207717(eq[5, A193592(n)])`
-/

namespace A207715.P5470457148784023118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207715.P5470457148784023118

/-! ## A207715.P7091282999988015879

`A207717(eq[7, A049286(n+1)])`
-/

namespace A207715.P7091282999988015879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207715.P7091282999988015879

/-! ## A207715.P9369065715822940775

`A207717(eq[8, A185782(n+1)])`
-/

namespace A207715.P9369065715822940775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207715.P9369065715822940775

/-! ## A207715.P8678919175860118797

`A207717(eq[16, A057728(n+1)])`
-/

namespace A207715.P8678919175860118797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207715.P8678919175860118797

/-!
# A207716: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207716, there is no canonical definition to state claims against.
-/

/-! ## A207716.P4204908203530587320

`A207717(eq[4, A219347(n)])`
-/

namespace A207716.P4204908203530587320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207716.P4204908203530587320

/-! ## A207716.P63419199527731286

`A207717(eq[6, A193592(n)])`
-/

namespace A207716.P63419199527731286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207716.P63419199527731286

/-! ## A207716.P11222692377625428415

`A207717(eq[3, A244925(n+3)])`
-/

namespace A207716.P11222692377625428415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244925 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207716.P11222692377625428415

/-! ## A207716.P8069668072759250435

`A207717(eq[10, A185782(n+1)])`
-/

namespace A207716.P8069668072759250435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207716.P8069668072759250435

/-! ## A207716.P15428724902630948888

`A207717(eq[7, A200370(n+1)])`
-/

namespace A207716.P15428724902630948888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207716.P15428724902630948888

/-!
# A207717: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207717, there is no canonical definition to state claims against.
-/

/-! ## A207717.P6660535823261390220

`A208369(n+1)%A034316(n)`
-/

namespace A207717.P6660535823261390220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208369 (n + 1)) (A034316 n)

end

end A207717.P6660535823261390220

/-! ## A207717.P4219744935719831978

`A208369(ceil(sqrt(A157615(n+1))))`
-/

namespace A207717.P4219744935719831978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 ⌈Real.sqrt (A157615 (n + 1) : ℝ)⌉.toNat

end

end A207717.P4219744935719831978

/-! ## A207717.P17530765654799573383

`A208369(n+1)+A132748((8*n)²+1)`
-/

namespace A207717.P17530765654799573383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (n + 1) + A132748 ((8 * n) ^ 2 + 1)

end

end A207717.P17530765654799573383

/-! ## A207717.P15801937163600209409

`A208369(n+1)+A000007(A001037(n))`
-/

namespace A207717.P15801937163600209409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (n + 1) + A000007 (A001037 n).toNat

end

end A207717.P15801937163600209409

/-! ## A207717.P14216725179581913406

`A208369(n+1)+A000007(A001897(n))`
-/

namespace A207717.P14216725179581913406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (n + 1) + A000007 (A001897 n).toNat

end

end A207717.P14216725179581913406

/-!
# A207718: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207718, there is no canonical definition to state claims against.
-/

/-! ## A207718.P14167698943711223459

`A207717(∑[n+2]+4)`
-/

namespace A207718.P14167698943711223459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207718.P14167698943711223459

/-! ## A207718.P14192666453155302105

`A208369(∑[n+2]+4)`
-/

namespace A207718.P14192666453155302105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208369 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207718.P14192666453155302105

/-! ## A207718.P16219575316067636069

`lcm(2, A207717(A167614(n+1)))`
-/

namespace A207718.P16219575316067636069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207717 (A167614 (n + 1)).toNat)

end

end A207718.P16219575316067636069

/-! ## A207718.P16255393720427153986

`A264668(n)+A207717(A167614(n+1))`
-/

namespace A207718.P16255393720427153986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A207717 (A167614 (n + 1)).toNat

end

end A207718.P16255393720427153986

/-! ## A207718.P15552178148776378427

`A207717(A167614(n+1))%A199681(n)`
-/

namespace A207718.P15552178148776378427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207717 (A167614 (n + 1)).toNat) (A199681 n)

end

end A207718.P15552178148776378427

/-!
# A207719: Number of 4 X n 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207719, there is no canonical definition to state claims against.
-/

/-! ## A207719.P10110120804602364943

`A207717(A052905(n)+9)`
-/

namespace A207719.P10110120804602364943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A052905 n + 9).toNat

end

end A207719.P10110120804602364943

/-! ## A207719.P10315981838133124527

`A207717(A167614(n+2)+1)`
-/

namespace A207719.P10315981838133124527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A167614 (n + 2) + 1).toNat

end

end A207719.P10315981838133124527

/-! ## A207719.P8065524603474978943

`A207717(A133263(n+3)+2)`
-/

namespace A207719.P8065524603474978943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A133263 (n + 3) + 2).toNat

end

end A207719.P8065524603474978943

/-! ## A207719.P4212773377592224843

`A207717(A000217(n+3)+4)`
-/

namespace A207719.P4212773377592224843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A000217 (n + 3) + 4).toNat

end

end A207719.P4212773377592224843

/-! ## A207719.P123013248947363309

`A207717(Δ[A264443(n)-n²])`
-/

namespace A207719.P123013248947363309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (f1 (n + 1) - f1 n).toNat

end

end A207719.P123013248947363309

/-!
# A207720: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207720, there is no canonical definition to state claims against.
-/

/-! ## A207720.P17663606715267907009

`A207717(A167499(n+3))`
-/

namespace A207720.P17663606715267907009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A167499 (n + 3)).toNat

end

end A207720.P17663606715267907009

/-! ## A207720.P17901568221380755194

`A207717(A155212(n)+13)`
-/

namespace A207720.P17901568221380755194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A155212 n + 13).toNat

end

end A207720.P17901568221380755194

/-! ## A207720.P15700019096600087768

`A207717(A056000(n)+15)`
-/

namespace A207720.P15700019096600087768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A056000 n + 15).toNat

end

end A207720.P15700019096600087768

/-! ## A207720.P13154545716474229835

`A207717(A051936(n+4)+14)`
-/

namespace A207720.P13154545716474229835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A051936 (n + 4) + 14).toNat

end

end A207720.P13154545716474229835

/-! ## A207720.P17764812945425008592

`A207717(eq[6, A131818(n+1)])`
-/

namespace A207720.P17764812945425008592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207720.P17764812945425008592

/-!
# A207721: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207721, there is no canonical definition to state claims against.
-/

/-! ## A207721.P17759799371657257796

`A207717(A056115(n)+21)`
-/

namespace A207721.P17759799371657257796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A056115 n + 21).toNat

end

end A207721.P17759799371657257796

/-! ## A207721.P12408461471189567578

`A207717(A000217(n+5)+6)`
-/

namespace A207721.P12408461471189567578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A000217 (n + 5) + 6).toNat

end

end A207721.P12408461471189567578

/-! ## A207721.P9112779866622981757

`A207717(A046691(n+3)+10)`
-/

namespace A207721.P9112779866622981757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A046691 (n + 3) + 10).toNat

end

end A207721.P9112779866622981757

/-! ## A207721.P4142378585248319111

`A207717(eq[7, A131818(n+1)])`
-/

namespace A207721.P4142378585248319111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207721.P4142378585248319111

/-!
# A207722: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 0 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207722, there is no canonical definition to state claims against.
-/

/-! ## A207722.P5737474386980936394

`A207717(eq[11, A066657(n)])`
-/

namespace A207722.P5737474386980936394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207722.P5737474386980936394

/-! ## A207722.P7695490505347188169

`A207717(A167499(n+5)+2)`
-/

namespace A207722.P7695490505347188169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A167499 (n + 5) + 2).toNat

end

end A207722.P7695490505347188169

/-! ## A207722.P15947794121372848531

`A207717(A167614(n+5)+4)`
-/

namespace A207722.P15947794121372848531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A167614 (n + 5) + 4).toNat

end

end A207722.P15947794121372848531

/-! ## A207722.P4360567584565214209

`A207717(A052905(n+3)+12)`
-/

namespace A207722.P4360567584565214209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (A052905 (n + 3) + 12).toNat

end

end A207722.P4360567584565214209

/-! ## A207722.P2914286830967024543

`A207717(eq[8, A131818(n+1)])`
-/

namespace A207722.P2914286830967024543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207722.P2914286830967024543

/-!
# A207723: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207723, there is no canonical definition to state claims against.
-/

/-! ## A207723.P5871056545133301754

`A207729((n+1)²+n²)`
-/

namespace A207723.P5871056545133301754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 ((n + 1) ^ 2 + n ^ 2)

end

end A207723.P5871056545133301754

/-! ## A207723.P10422757228266139197

`lcm(A020985(n), A207729(A001844(n)))`
-/

namespace A207723.P10422757228266139197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A207729 (A001844 n).toNat)

end

end A207723.P10422757228266139197

/-! ## A207723.P5642929238751434987

`A207729(A001844(n))+and(32, A000010(n+1))`
-/

namespace A207723.P5642929238751434987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A001844 n).toNat + Int.land 32 (A000010 (n + 1))

end

end A207723.P5642929238751434987

/-! ## A207723.P13675921580997097440

`A207729(A001844(n))+A010057(A038641(n+1))`
-/

namespace A207723.P13675921580997097440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A001844 n).toNat + A010057 (A038641 (n + 1)).toNat

end

end A207723.P13675921580997097440

/-! ## A207723.P10249175598324672508

`A207729(A001844(n))+A000007(A024863(n+2))`
-/

namespace A207723.P10249175598324672508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A001844 n).toNat + A000007 (A024863 (n + 2)).toNat

end

end A207723.P10249175598324672508

/-!
# A207724: Number of n X 3 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207724, the canonical program `A207724.P2247489829999310302` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207724 has offset 1).

The definition of A207724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207724.P2247489829999310302

`sqrt(A207069(n+1))*sqrt(A207725(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A207724

/-- `sqrt(A207069(n+1))*sqrt(A207725(n+1))` -/
def P2247489829999310302.Spec : Prop :=
  ∀ n, P2247489829999310302.a n = (A207724 (n + 1) : ℝ)

end A207724

/-! ## A207724.P5221153504787059046

`sqrt(A207069(n+1)*A207725(n+1))`
-/

namespace A207724.P5221153504787059046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207069 (n + 1) * A207725 (n + 1) : ℝ)

end

end A207724.P5221153504787059046

namespace A207724

/-- `sqrt(A207069(n+1)*A207725(n+1))` -/
def P5221153504787059046.Spec : Prop :=
  ∀ n, P5221153504787059046.a n = (A207724 (n + 1) : ℝ)

end A207724

/-! ## A207724.P17582873945923140354

`A208688(∑[n+3]+1)`
-/

namespace A207724.P17582873945923140354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208688 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207724.P17582873945923140354

namespace A207724

/-- `A208688(∑[n+3]+1)` -/
def P17582873945923140354.Spec : Prop :=
  ∀ n, P17582873945923140354.a n = A207724 (n + 1)

end A207724

/-! ## A207724.P14092729830418711707

`A208688(A034856(n+2))%A208684(n+1)`
-/

namespace A207724.P14092729830418711707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208688 (A034856 (n + 2)).toNat) (A208684 (n + 1))

end

end A207724.P14092729830418711707

namespace A207724

/-- `A208688(A034856(n+2))%A208684(n+1)` -/
def P14092729830418711707.Spec : Prop :=
  ∀ n, P14092729830418711707.a n = A207724 (n + 1)

end A207724

/-! ## A207724.P15738954365116957224

`or(1, A010054(n))*A208688(A034856(n+2))`
-/

namespace A207724.P15738954365116957224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010054 n) * A208688 (A034856 (n + 2)).toNat

end

end A207724.P15738954365116957224

namespace A207724

/-- `or(1, A010054(n))*A208688(A034856(n+2))` -/
def P15738954365116957224.Spec : Prop :=
  ∀ n, P15738954365116957224.a n = A207724 (n + 1)

end A207724

/-!
# A207725: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207725, the canonical program `A207725.P15183909165807827257` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207725 has offset 1).

The definition of A207725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207725.P15183909165807827257

`∑[a(n-1)+a(n-3)]²` with `a(0)=3, a(1)=6, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A207725

/-- `∑[a(n-1)+a(n-3)]²` -/
def P15183909165807827257.Spec : Prop :=
  ∀ n, (P15183909165807827257.a n : ℤ) = A207725 (n + 1)

theorem P15183909165807827257.correct : P15183909165807827257.Spec := by
  intro n
  simp only [A207725, Nat.add_sub_cancel]

end A207725

/-! ## A207725.P12498657866518026788

`(A207724(n+1)/A038718(n+3))²`
-/

namespace A207725.P12498657866518026788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207724 (n + 1) : ℚ) / (A038718 (n + 3) : ℚ)) ^ 2

end

end A207725.P12498657866518026788

namespace A207725

/-- `(A207724(n+1)/A038718(n+3))²` -/
def P12498657866518026788.Spec : Prop :=
  ∀ n, P12498657866518026788.a n = (A207725 (n + 1) : ℚ)

end A207725

/-! ## A207725.P16187262424869473650

`A207724(n+1)/A207069(n+1)*A207724(n+1)`
-/

namespace A207725.P16187262424869473650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207724 (n + 1) : ℚ) / (A207069 (n + 1) : ℚ) * (A207724 (n + 1) : ℚ)

end

end A207725.P16187262424869473650

namespace A207725

/-- `A207724(n+1)/A207069(n+1)*A207724(n+1)` -/
def P16187262424869473650.Spec : Prop :=
  ∀ n, P16187262424869473650.a n = (A207725 (n + 1) : ℚ)

end A207725

/-! ## A207725.P12120612697130485257

`A207726(n+1)/A207727(n+1)*A207726(n+1)`
-/

namespace A207725.P12120612697130485257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207726 (n + 1) : ℚ) / (A207727 (n + 1) : ℚ) * (A207726 (n + 1) : ℚ)

end

end A207725.P12120612697130485257

namespace A207725

/-- `A207726(n+1)/A207727(n+1)*A207726(n+1)` -/
def P12120612697130485257.Spec : Prop :=
  ∀ n, P12120612697130485257.a n = (A207725 (n + 1) : ℚ)

end A207725

/-! ## A207725.P14315341753078636292

`A207724(n+1)²/A207069(n+1)`
-/

namespace A207725.P14315341753078636292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207724 (n + 1) ^ 2 : ℚ) / (A207069 (n + 1) : ℚ)

end

end A207725.P14315341753078636292

namespace A207725

/-- `A207724(n+1)²/A207069(n+1)` -/
def P14315341753078636292.Spec : Prop :=
  ∀ n, P14315341753078636292.a n = (A207725 (n + 1) : ℚ)

end A207725

/-! ## A207725.P6896077719155491869

`A207726(n+1)²/A207727(n+1)`
-/

namespace A207725.P6896077719155491869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207726 (n + 1) ^ 2 : ℚ) / (A207727 (n + 1) : ℚ)

end

end A207725.P6896077719155491869

namespace A207725

/-- `A207726(n+1)²/A207727(n+1)` -/
def P6896077719155491869.Spec : Prop :=
  ∀ n, P6896077719155491869.a n = (A207725 (n + 1) : ℚ)

end A207725

/-!
# A207726: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207726, there is no canonical definition to state claims against.
-/

/-! ## A207726.P3153237225351757854

`A207724(n+1)/A207069(n+1)*A208684(n+1)`
-/

namespace A207726.P3153237225351757854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207724 (n + 1) : ℚ) / (A207069 (n + 1) : ℚ) * (A208684 (n + 1) : ℚ)

end

end A207726.P3153237225351757854

/-! ## A207726.P17416938509212537951

`sqrt(A207725(n+1))*sqrt(A207727(n+1))`
-/

namespace A207726.P17416938509212537951
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207725 (n + 1) : ℝ) * Real.sqrt (A207727 (n + 1) : ℝ)

end

end A207726.P17416938509212537951

/-! ## A207726.P3398495229522742118

`sqrt(A207725(n+1)*A207727(n+1))`
-/

namespace A207726.P3398495229522742118
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207725 (n + 1) * A207727 (n + 1) : ℝ)

end

end A207726.P3398495229522742118

/-! ## A207726.P11184729049111840002

`A207729(A046691(n+3))`
-/

namespace A207726.P11184729049111840002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A046691 (n + 3)).toNat

end

end A207726.P11184729049111840002

/-! ## A207726.P16048142871160935116

`A207729(Δ[A023545(n+1)])`
-/

namespace A207726.P16048142871160935116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (f1 (n + 1) - f1 n).toNat

end

end A207726.P16048142871160935116

/-!
# A207727: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207727, there is no canonical definition to state claims against.
-/

/-! ## A207727.P18304504015506334085

`A207726(n+1)/A207725(n+1)*A207726(n+1)`
-/

namespace A207727.P18304504015506334085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207726 (n + 1) : ℚ) / (A207725 (n + 1) : ℚ) * (A207726 (n + 1) : ℚ)

end

end A207727.P18304504015506334085

/-! ## A207727.P2796962464968165236

`A208684(n+1)/A207069(n+1)*A208684(n+1)`
-/

namespace A207727.P2796962464968165236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208684 (n + 1) : ℚ) / (A207069 (n + 1) : ℚ) * (A208684 (n + 1) : ℚ)

end

end A207727.P2796962464968165236

/-! ## A207727.P4679187233892637759

`A208684(n+1)²/A207069(n+1)`
-/

namespace A207727.P4679187233892637759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208684 (n + 1) ^ 2 : ℚ) / (A207069 (n + 1) : ℚ)

end

end A207727.P4679187233892637759

/-! ## A207727.P10189074034935841553

`A207726(n+1)²/A207725(n+1)`
-/

namespace A207727.P10189074034935841553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207726 (n + 1) ^ 2 : ℚ) / (A207725 (n + 1) : ℚ)

end

end A207727.P10189074034935841553

/-! ## A207727.P11181677181841613430

`A207729(A052905(n+3))`
-/

namespace A207727.P11181677181841613430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A052905 (n + 3)).toNat

end

end A207727.P11181677181841613430

/-!
# A207728: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207728, there is no canonical definition to state claims against.
-/

/-! ## A207728.P193085772625936250

`A207729(A055999(n+4))`
-/

namespace A207728.P193085772625936250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A055999 (n + 4)).toNat

end

end A207728.P193085772625936250

/-! ## A207728.P828476638564918122

`A207729(A046691(n+5)-2)`
-/

namespace A207728.P828476638564918122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A046691 (n + 5) - 2).toNat

end

end A207728.P828476638564918122

/-! ## A207728.P9147770514996465682

`A207729(A000124(n+7)-7)`
-/

namespace A207728.P9147770514996465682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A000124 (n + 7) - 7).toNat

end

end A207728.P9147770514996465682

/-! ## A207728.P3414044244216797975

`A207729(A000217(n+6)+n+1)`
-/

namespace A207728.P3414044244216797975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A207728.P3414044244216797975

/-! ## A207728.P10901512994053072469

`A207729(A005408(n)+A046691(n+3)+10)`
-/

namespace A207728.P10901512994053072469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A005408 n + (A046691 (n + 3) + 10)).toNat

end

end A207728.P10901512994053072469

/-!
# A207729: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207729, there is no canonical definition to state claims against.
-/

/-! ## A207729.P15371532220049076881

`A210709(A067747(n+1))+A208108(n+1)`
-/

namespace A207729.P15371532220049076881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (A067747 (n + 1)).toNat + A208108 (n + 1)

end

end A207729.P15371532220049076881

/-! ## A207729.P2290940567707387296

`A210709(n+11)+A208108(n+1)`
-/

namespace A207729.P2290940567707387296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (n + 11) + A208108 (n + 1)

end

end A207729.P2290940567707387296

/-! ## A207729.P8333378969874957817

`A208108(n+1)%A034316(n)`
-/

namespace A207729.P8333378969874957817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208108 (n + 1)) (A034316 n)

end

end A207729.P8333378969874957817

/-! ## A207729.P5884916440523485568

`A208108(C(A269171(n+1), n))`
-/

namespace A207729.P5884916440523485568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (Nat.choose (A269171 (n + 1)).toNat n)

end

end A207729.P5884916440523485568

/-! ## A207729.P9325505585297981736

`A208108(ceil(sqrt(A157615(n+1))))`
-/

namespace A207729.P9325505585297981736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 ⌈Real.sqrt (A157615 (n + 1) : ℝ)⌉.toNat

end

end A207729.P9325505585297981736

/-!
# A207730: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207730, there is no canonical definition to state claims against.
-/

/-! ## A207730.P11204647486958814874

`A208108(∑[n+2]+4)`
-/

namespace A207730.P11204647486958814874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207730.P11204647486958814874

/-! ## A207730.P7959655953118130185

`A208108(A167614(n+1))+A025444(n)`
-/

namespace A207730.P7959655953118130185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208108 (A167614 (n + 1)).toNat + A025444 n

end

end A207730.P7959655953118130185

/-! ## A207730.P17472667112777522663

`A208108(A167614(n+1))%A218395(n)`
-/

namespace A207730.P17472667112777522663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208108 (A167614 (n + 1)).toNat) (A218395 n)

end

end A207730.P17472667112777522663

/-! ## A207730.P4962828486990836687

`A207729(∑[n+2]+4)`
-/

namespace A207730.P4962828486990836687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207730.P4962828486990836687

/-! ## A207730.P7932167478182785024

`lcm(A033999(n), A207729(A167614(n+1)))`
-/

namespace A207730.P7932167478182785024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A207729 (A167614 (n + 1)).toNat)

end

end A207730.P7932167478182785024

/-!
# A207731: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207731, there is no canonical definition to state claims against.
-/

/-! ## A207731.P7013878259000896713

`A207729(A052905(n)+9)`
-/

namespace A207731.P7013878259000896713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A052905 n + 9).toNat

end

end A207731.P7013878259000896713

/-! ## A207731.P8003757780833485042

`A207729(A055999(n)+10)`
-/

namespace A207731.P8003757780833485042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A055999 n + 10).toNat

end

end A207731.P8003757780833485042

/-! ## A207731.P5646318693059839385

`A207729(A167614(n+2)+1)`
-/

namespace A207731.P5646318693059839385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A167614 (n + 2) + 1).toNat

end

end A207731.P5646318693059839385

/-! ## A207731.P8281954644883472466

`A207729(A133263(n+3)+2)`
-/

namespace A207731.P8281954644883472466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A133263 (n + 3) + 2).toNat

end

end A207731.P8281954644883472466

/-! ## A207731.P7383067515754496197

`A207729(A166136(n+2)-2)`
-/

namespace A207731.P7383067515754496197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A166136 (n + 2) - 2).toNat

end

end A207731.P7383067515754496197

/-!
# A207732: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207732, there is no canonical definition to state claims against.
-/

/-! ## A207732.P3428794125151497397

`A207729(A000217(n+4)+5)`
-/

namespace A207732.P3428794125151497397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A000217 (n + 4) + 5).toNat

end

end A207732.P3428794125151497397

/-! ## A207732.P7176128240771723349

`A207729(A027379(n+2)+8)`
-/

namespace A207732.P7176128240771723349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A027379 (n + 2) + 8).toNat

end

end A207732.P7176128240771723349

/-! ## A207732.P2003310939225396681

`A207729(A046691(n+2)+9)`
-/

namespace A207732.P2003310939225396681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A046691 (n + 2) + 9).toNat

end

end A207732.P2003310939225396681

/-! ## A207732.P16829411549899408028

`A207729(Δ[A000125(n+4)]+4)`
-/

namespace A207732.P16829411549899408028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (f1 (n + 1) - f1 n + 4).toNat

end

end A207732.P16829411549899408028

/-! ## A207732.P9239531890569819624

`A207729(A000124(n+5)-(n+1))`
-/

namespace A207732.P9239531890569819624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A207732.P9239531890569819624

/-!
# A207733: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207733, there is no canonical definition to state claims against.
-/

/-! ## A207733.P2552291140923432228

`A207729(A166136(n+4))`
-/

namespace A207733.P2552291140923432228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A166136 (n + 4)).toNat

end

end A207733.P2552291140923432228

/-! ## A207733.P13972404037715468280

`A207729(A133263(n+5)+4)`
-/

namespace A207733.P13972404037715468280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A133263 (n + 5) + 4).toNat

end

end A207733.P13972404037715468280

/-! ## A207733.P15819678350793566715

`A207729(A000124(n+5)+5)`
-/

namespace A207733.P15819678350793566715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A000124 (n + 5) + 5).toNat

end

end A207733.P15819678350793566715

/-! ## A207733.P13777750893270411354

`A207729(A000217(n+5)+6)`
-/

namespace A207733.P13777750893270411354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A000217 (n + 5) + 6).toNat

end

end A207733.P13777750893270411354

/-! ## A207733.P4008215693299088616

`A207729(A055998(n+3)+9)`
-/

namespace A207733.P4008215693299088616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A055998 (n + 3) + 9).toNat

end

end A207733.P4008215693299088616

/-!
# A207734: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207734, there is no canonical definition to state claims against.
-/

/-! ## A207734.P8706802390831154019

`A207729(A167487(n+5))`
-/

namespace A207734.P8706802390831154019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A167487 (n + 5)).toNat

end

end A207734.P8706802390831154019

/-! ## A207734.P3551547473641957178

`A207729(A167614(n+5)+4)`
-/

namespace A207734.P3551547473641957178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A167614 (n + 5) + 4).toNat

end

end A207734.P3551547473641957178

/-! ## A207734.P14456328585862550020

`A207729(A000217(n+6)+7)`
-/

namespace A207734.P14456328585862550020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A000217 (n + 6) + 7).toNat

end

end A207734.P14456328585862550020

/-! ## A207734.P13366820626159769488

`A207729(A155212(n+2)+15)`
-/

namespace A207734.P13366820626159769488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A155212 (n + 2) + 15).toNat

end

end A207734.P13366820626159769488

/-! ## A207734.P8647991100617672782

`A207729(A000124(n+7)-(n+1))`
-/

namespace A207734.P8647991100617672782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207729 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A207734.P8647991100617672782

/-!
# A207735: Expansion of f(-x^2, x^3)^2 / f(x, -x^2) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A207735, the canonical program `A207735.P10639915020263439183` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207735 has offset 0).

The definition of A207735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207735.P10639915020263439183

`A033999(n)*A113681(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A207735

/-- `A033999(n)*A113681(n)` -/
def P10639915020263439183.Spec : Prop :=
  ∀ n, P10639915020263439183.a n = A207735 n

theorem P10639915020263439183.correct : P10639915020263439183.Spec := by
  intro n
  simp only [A207735]

end A207735

/-! ## A207735.P7362047520050536433

`A113430(n)*A113681(n)*A207710(n)`
-/

namespace A207735.P7362047520050536433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 n * A113681 n * A207710 n

end

end A207735.P7362047520050536433

namespace A207735

/-- `A113430(n)*A113681(n)*A207710(n)` -/
def P7362047520050536433.Spec : Prop :=
  ∀ n, P7362047520050536433.a n = A207735 n

end A207735

/-! ## A207735.P4286621386185272785

`A121373(5*n)`
-/

namespace A207735.P4286621386185272785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (5 * n)

end

end A207735.P4286621386185272785

namespace A207735

/-- `A121373(5*n)` -/
def P4286621386185272785.Spec : Prop :=
  ∀ n, P4286621386185272785.a n = A207735 n

end A207735

/-! ## A207735.P3557916535545196962

`(-1)^n*A010815(5*n)`
-/

namespace A207735.P3557916535545196962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A010815 (5 * n)

end

end A207735.P3557916535545196962

namespace A207735

/-- `(-1)^n*A010815(5*n)` -/
def P3557916535545196962.Spec : Prop :=
  ∀ n, P3557916535545196962.a n = A207735 n

end A207735

/-! ## A207735.P191684339623705643

`A121373(A008587(n))^3`
-/

namespace A207735.P191684339623705643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A008587 n).toNat ^ 3

end

end A207735.P191684339623705643

namespace A207735

/-- `A121373(A008587(n))^3` -/
def P191684339623705643.Spec : Prop :=
  ∀ n, P191684339623705643.a n = A207735 n

end A207735

/-! ## A207735.P5859922820283379219

`A121373(A008706(n))^3`
-/

namespace A207735.P5859922820283379219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A008706 n).toNat ^ 3

end

end A207735.P5859922820283379219

namespace A207735

/-- `A121373(A008706(n))^3` -/
def P5859922820283379219.Spec : Prop :=
  ∀ n, P5859922820283379219.a n = A207735 n

end A207735

/-! ## A207735.P6686079007614495650

`A121373(A008574(n)+n)%2`
-/

namespace A207735.P6686079007614495650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121373 (A008574 n + (n : ℤ)).toNat) 2

end

end A207735.P6686079007614495650

namespace A207735

/-- `A121373(A008574(n)+n)%2` -/
def P6686079007614495650.Spec : Prop :=
  ∀ n, P6686079007614495650.a n = A207735 n

end A207735

/-! ## A207735.P3890923838928863346

`A121373(A008458(n)-n)%2`
-/

namespace A207735.P3890923838928863346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121373 (A008458 n - (n : ℤ)).toNat) 2

end

end A207735.P3890923838928863346

namespace A207735

/-- `A121373(A008458(n)-n)%2` -/
def P3890923838928863346.Spec : Prop :=
  ∀ n, P3890923838928863346.a n = A207735 n

end A207735

/-! ## A207735.P5331135503684698349

`A010815(5*n)*A057077(A005408(n))`
-/

namespace A207735.P5331135503684698349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (5 * n) * A057077 (A005408 n).toNat

end

end A207735.P5331135503684698349

namespace A207735

/-- `A010815(5*n)*A057077(A005408(n))` -/
def P5331135503684698349.Spec : Prop :=
  ∀ n, P5331135503684698349.a n = A207735 n

end A207735

/-! ## A207735.P16664833034961428338

`A121373(A008706(n))/A209615(n+1)²`
-/

namespace A207735.P16664833034961428338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (A008706 n).toNat : ℚ) / (A209615 (n + 1) ^ 2 : ℚ)

end

end A207735.P16664833034961428338

namespace A207735

/-- `A121373(A008706(n))/A209615(n+1)²` -/
def P16664833034961428338.Spec : Prop :=
  ∀ n, P16664833034961428338.a n = (A207735 n : ℚ)

end A207735

/-! ## A207735.P17797338975836522442

`A121373(A008574(n)+n)^A000040(n+1)`
-/

namespace A207735.P17797338975836522442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (A008574 n + (n : ℤ)).toNat : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A207735.P17797338975836522442

namespace A207735

/-- `A121373(A008574(n)+n)^A000040(n+1)` -/
def P17797338975836522442.Spec : Prop :=
  ∀ n, P17797338975836522442.a n = (A207735 n : ℚ)

end A207735

/-! ## A207735.P12332735329716031975

`A121373(A008706(n))/A001222(A069866(n+1))`
-/

namespace A207735.P12332735329716031975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (A008706 n).toNat : ℚ) / (A001222 (A069866 (n + 1)).toNat : ℚ)

end

end A207735.P12332735329716031975

namespace A207735

/-- `A121373(A008706(n))/A001222(A069866(n+1))` -/
def P12332735329716031975.Spec : Prop :=
  ∀ n, P12332735329716031975.a n = (A207735 n : ℚ)

end A207735

/-! ## A207735.P2780114301152055733

`∑[A002448(n²)]*A113681(n)`
-/

namespace A207735.P2780114301152055733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A113681 n

end

end A207735.P2780114301152055733

namespace A207735

/-- `∑[A002448(n²)]*A113681(n)` -/
def P2780114301152055733.Spec : Prop :=
  ∀ n, P2780114301152055733.a n = A207735 n

end A207735

/-!
# A207736: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207736, there is no canonical definition to state claims against.
-/

/-! ## A207736.P12103080334123454602

`A207741(∑[4*n]+1)`
-/

namespace A207736.P12103080334123454602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207736.P12103080334123454602

/-! ## A207736.P15036553580288253627

`record[A003982(n)*A207741(n+1)]`
-/

namespace A207736.P15036553580288253627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207736.P15036553580288253627

/-! ## A207736.P10317346763359470786

`record[root(A207741(n+1), A143182(n))]`
-/

namespace A207736.P10317346763359470786
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207741 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207736.P10317346763359470786

/-! ## A207736.P14734960330757111019

`A207741(A001844(n))+A184955(n)`
-/

namespace A207736.P14734960330757111019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A001844 n).toNat + A184955 n

end

end A207736.P14734960330757111019

/-! ## A207736.P12352464362242366128

`A000041(C(2, n+2))*A207741(A001844(n))`
-/

namespace A207736.P12352464362242366128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A207741 (A001844 n).toNat

end

end A207736.P12352464362242366128

/-!
# A207737: Number of n X 4 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207737, the canonical program `A207737.P443957960658006542` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A207737 has offset 1).

The definition of A207737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A207737.P443957960658006542

`record[(A189050(n+2)+2)²]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A207737

/-- `record[(A189050(n+2)+2)²]` -/
def P443957960658006542.Spec : Prop :=
  ∀ n, P443957960658006542.a n = A207737 (n + 1)

theorem P443957960658006542.correct : P443957960658006542.Spec := by
  intro n
  simp only [A207737, Nat.add_sub_cancel]

end A207737

/-! ## A207737.P12611122396360687565

`(A143607(A103517(n))+2)²`
-/

namespace A207737.P12611122396360687565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143607 (A103517 n).toNat + 2) ^ 2

end

end A207737.P12611122396360687565

namespace A207737

/-- `(A143607(A103517(n))+2)²` -/
def P12611122396360687565.Spec : Prop :=
  ∀ n, P12611122396360687565.a n = A207737 (n + 1)

end A207737

/-! ## A207737.P13964254129133322666

`(A001333(A065475(n+1))+2)²`
-/

namespace A207737.P13964254129133322666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001333 (A065475 (n + 1)).toNat + 2) ^ 2

end

end A207737.P13964254129133322666

namespace A207737

/-- `(A001333(A065475(n+1))+2)²` -/
def P13964254129133322666.Spec : Prop :=
  ∀ n, P13964254129133322666.a n = A207737 (n + 1)

end A207737

/-! ## A207737.P1756832901718081073

`(A265278(n+2)+A122553(n))²`
-/

namespace A207737.P1756832901718081073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A265278 (n + 2) + A122553 n) ^ 2

end

end A207737.P1756832901718081073

namespace A207737

/-- `(A265278(n+2)+A122553(n))²` -/
def P1756832901718081073.Spec : Prop :=
  ∀ n, P1756832901718081073.a n = A207737 (n + 1)

end A207737

/-! ## A207737.P10912289482608063246

`(A238375(Δ[n²])+A122553(n))²`
-/

namespace A207737.P10912289482608063246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238375 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A122553 n) ^ 2

end

end A207737.P10912289482608063246

namespace A207737

/-- `(A238375(Δ[n²])+A122553(n))²` -/
def P10912289482608063246.Spec : Prop :=
  ∀ n, P10912289482608063246.a n = A207737 (n + 1)

end A207737

/-! ## A207737.P5875855769931859548

`(A078057(n+1)-A113679(n+1))²`
-/

namespace A207737.P5875855769931859548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078057 (n + 1) - A113679 (n + 1)) ^ 2

end

end A207737.P5875855769931859548

namespace A207737

/-- `(A078057(n+1)-A113679(n+1))²` -/
def P5875855769931859548.Spec : Prop :=
  ∀ n, P5875855769931859548.a n = A207737 (n + 1)

end A207737

/-! ## A207737.P8537085036835676272

`A207712(n+1)/A207436(n+1)*A207712(n+1)`
-/

namespace A207737.P8537085036835676272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207712 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) * (A207712 (n + 1) : ℚ)

end

end A207737.P8537085036835676272

namespace A207737

/-- `A207712(n+1)/A207436(n+1)*A207712(n+1)` -/
def P8537085036835676272.Spec : Prop :=
  ∀ n, P8537085036835676272.a n = (A207737 (n + 1) : ℚ)

end A207737

/-! ## A207737.P3607517250372865462

`A207738(n+1)/A207739(n+1)*A207738(n+1)`
-/

namespace A207737.P3607517250372865462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207738 (n + 1) : ℚ) / (A207739 (n + 1) : ℚ) * (A207738 (n + 1) : ℚ)

end

end A207737.P3607517250372865462

namespace A207737

/-- `A207738(n+1)/A207739(n+1)*A207738(n+1)` -/
def P3607517250372865462.Spec : Prop :=
  ∀ n, P3607517250372865462.a n = (A207737 (n + 1) : ℚ)

end A207737

/-! ## A207737.P10734195395366337449

`A207712(n+1)²/A207436(n+1)`
-/

namespace A207737.P10734195395366337449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207712 (n + 1) ^ 2 : ℚ) / (A207436 (n + 1) : ℚ)

end

end A207737.P10734195395366337449

namespace A207737

/-- `A207712(n+1)²/A207436(n+1)` -/
def P10734195395366337449.Spec : Prop :=
  ∀ n, P10734195395366337449.a n = (A207737 (n + 1) : ℚ)

end A207737

/-! ## A207737.P11144507980965210963

`A207738(n+1)²/A207739(n+1)`
-/

namespace A207737.P11144507980965210963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207738 (n + 1) ^ 2 : ℚ) / (A207739 (n + 1) : ℚ)

end

end A207737.P11144507980965210963

namespace A207737

/-- `A207738(n+1)²/A207739(n+1)` -/
def P11144507980965210963.Spec : Prop :=
  ∀ n, P11144507980965210963.a n = (A207737 (n + 1) : ℚ)

end A207737

/-!
# A207738: Number of nX5 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207738, there is no canonical definition to state claims against.
-/

/-! ## A207738.P15340553397942177508

`A207712(n+1)/A207436(n+1)*A207713(n+1)`
-/

namespace A207738.P15340553397942177508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207712 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) * (A207713 (n + 1) : ℚ)

end

end A207738.P15340553397942177508

/-! ## A207738.P9390099200591677464

`A207713(n+1)/A207712(n+1)*A207737(n+1)`
-/

namespace A207738.P9390099200591677464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207713 (n + 1) : ℚ) / (A207712 (n + 1) : ℚ) * (A207737 (n + 1) : ℚ)

end

end A207738.P9390099200591677464

/-! ## A207738.P17603713628437399263

`sqrt(A207737(n+1))*sqrt(A207739(n+1))`
-/

namespace A207738.P17603713628437399263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207737 (n + 1) : ℝ) * Real.sqrt (A207739 (n + 1) : ℝ)

end

end A207738.P17603713628437399263

/-! ## A207738.P13922896691252075342

`sqrt(A207737(n+1)*A207739(n+1))`
-/

namespace A207738.P13922896691252075342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207737 (n + 1) * A207739 (n + 1) : ℝ)

end

end A207738.P13922896691252075342

/-! ## A207738.P1675428147322134237

`A207741(Δ[A023545(n+1)])`
-/

namespace A207738.P1675428147322134237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (f1 (n + 1) - f1 n).toNat

end

end A207738.P1675428147322134237

/-!
# A207739: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207739, there is no canonical definition to state claims against.
-/

/-! ## A207739.P11082262416610407818

`A207713(n+1)/A207436(n+1)*A207713(n+1)`
-/

namespace A207739.P11082262416610407818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207713 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) * (A207713 (n + 1) : ℚ)

end

end A207739.P11082262416610407818

/-! ## A207739.P13639834280636685176

`A207738(n+1)/A207737(n+1)*A207738(n+1)`
-/

namespace A207739.P13639834280636685176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207738 (n + 1) : ℚ) / (A207737 (n + 1) : ℚ) * (A207738 (n + 1) : ℚ)

end

end A207739.P13639834280636685176

/-! ## A207739.P3411206611619322843

`(A207713(n+1)/A207712(n+1))²*A207737(n+1)`
-/

namespace A207739.P3411206611619322843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207713 (n + 1) : ℚ) / (A207712 (n + 1) : ℚ)) ^ 2 * (A207737 (n + 1) : ℚ)

end

end A207739.P3411206611619322843

/-! ## A207739.P15265368535691569416

`A207436(n+1)/(A207712(n+1)/A207738(n+1))²`
-/

namespace A207739.P15265368535691569416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207436 (n + 1) : ℚ) / ((A207712 (n + 1) : ℚ) / (A207738 (n + 1) : ℚ)) ^ 2

end

end A207739.P15265368535691569416

/-! ## A207739.P15255868739615511975

`A207713(n+1)²/A207436(n+1)`
-/

namespace A207739.P15255868739615511975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207713 (n + 1) ^ 2 : ℚ) / (A207436 (n + 1) : ℚ)

end

end A207739.P15255868739615511975

/-! ## A207739.P4503699121894951532

`A207738(n+1)²/A207737(n+1)`
-/

namespace A207739.P4503699121894951532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207738 (n + 1) ^ 2 : ℚ) / (A207737 (n + 1) : ℚ)

end

end A207739.P4503699121894951532

/-!
# A207740: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207740, there is no canonical definition to state claims against.
-/

/-! ## A207740.P4701558756420950484

`A207713(n+1)/A207436(n+1)*A207714(n+1)`
-/

namespace A207740.P4701558756420950484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207713 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) * (A207714 (n + 1) : ℚ)

end

end A207740.P4701558756420950484

/-! ## A207740.P14534346266792705068

`A207741(A055999(n+4))`
-/

namespace A207740.P14534346266792705068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A055999 (n + 4)).toNat

end

end A207740.P14534346266792705068

/-! ## A207740.P845104313649974287

`A207741(eq[4, A219347(n)])`
-/

namespace A207740.P845104313649974287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207740.P845104313649974287

/-! ## A207740.P4397576439197209492

`A207741(eq[6, A193592(n)])`
-/

namespace A207740.P4397576439197209492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207740.P4397576439197209492

/-! ## A207740.P16217034085964427377

`A207741(eq[7, A200370(n+1)])`
-/

namespace A207740.P16217034085964427377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207740.P16217034085964427377

/-!
# A207742: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207742, there is no canonical definition to state claims against.
-/

/-! ## A207742.P14274800208214575415

`A207741(A052905(n)+9)`
-/

namespace A207742.P14274800208214575415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A052905 n + 9).toNat

end

end A207742.P14274800208214575415

/-! ## A207742.P17948804255786778256

`A207741(A055999(n)+10)`
-/

namespace A207742.P17948804255786778256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A055999 n + 10).toNat

end

end A207742.P17948804255786778256

/-! ## A207742.P10560079660099391337

`A207741(A167614(n+2)+1)`
-/

namespace A207742.P10560079660099391337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A167614 (n + 2) + 1).toNat

end

end A207742.P10560079660099391337

/-! ## A207742.P3742888093264193010

`A207741(A167487(n+2)-3)`
-/

namespace A207742.P3742888093264193010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A167487 (n + 2) - 3).toNat

end

end A207742.P3742888093264193010

/-! ## A207742.P2370341984670433566

`A207741(A046691(n+1)+8)`
-/

namespace A207742.P2370341984670433566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A046691 (n + 1) + 8).toNat

end

end A207742.P2370341984670433566

/-!
# A207743: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207743, there is no canonical definition to state claims against.
-/

/-! ## A207743.P13136194911717070516

`A207741(A167499(n+3))`
-/

namespace A207743.P13136194911717070516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A167499 (n + 3)).toNat

end

end A207743.P13136194911717070516

/-! ## A207743.P7187334306541962422

`A207741(A056000(n)+15)`
-/

namespace A207743.P7187334306541962422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A056000 n + 15).toNat

end

end A207743.P7187334306541962422

/-! ## A207743.P7300370393786852956

`A207741(eq[7, A066657(n)])`
-/

namespace A207743.P7300370393786852956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207743.P7300370393786852956

/-! ## A207743.P10499278039368149617

`A207741(eq[6, A131818(n+1)])`
-/

namespace A207743.P10499278039368149617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207743.P10499278039368149617

/-! ## A207743.P17668318044183713511

`A207741(Δ[A034857(n+1)]+8)`
-/

namespace A207743.P17668318044183713511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (f1 (n + 1) - f1 n + 8).toNat

end

end A207743.P17668318044183713511

/-!
# A207744: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207744, there is no canonical definition to state claims against.
-/

/-! ## A207744.P1043393420077792640

`A207741(A056115(n)+21)`
-/

namespace A207744.P1043393420077792640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A056115 n + 21).toNat

end

end A207744.P1043393420077792640

/-! ## A207744.P14114282636080962473

`A207741(A167499(n+4)+1)`
-/

namespace A207744.P14114282636080962473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A167499 (n + 4) + 1).toNat

end

end A207744.P14114282636080962473

/-! ## A207744.P12141746592954639779

`A207741(A167487(n+4)-1)`
-/

namespace A207744.P12141746592954639779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A167487 (n + 4) - 1).toNat

end

end A207744.P12141746592954639779

/-! ## A207744.P7030843606369311142

`A207741(eq[5, A002262(n)]+1)`
-/

namespace A207744.P7030843606369311142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207744.P7030843606369311142

/-! ## A207744.P8292201414475003859

`A207741(eq[7, A131818(n+1)])`
-/

namespace A207744.P8292201414475003859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207744.P8292201414475003859

/-!
# A207745: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 0 1 0 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207745, there is no canonical definition to state claims against.
-/

/-! ## A207745.P5970017994270516282

`A207741(A167487(n+5))`
-/

namespace A207745.P5970017994270516282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A167487 (n + 5)).toNat

end

end A207745.P5970017994270516282

/-! ## A207745.P5216136656969576925

`A207741(eq[11, A066657(n)])`
-/

namespace A207745.P5216136656969576925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207745.P5216136656969576925

/-! ## A207745.P10142648396979877183

`A207741(A167499(n+5)+2)`
-/

namespace A207745.P10142648396979877183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A167499 (n + 5) + 2).toNat

end

end A207745.P10142648396979877183

/-! ## A207745.P1243401461719323620

`A207741(A000124(n+6)+6)`
-/

namespace A207745.P1243401461719323620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (A000124 (n + 6) + 6).toNat

end

end A207745.P1243401461719323620

/-! ## A207745.P4486528772178079098

`A207741(eq[8, A131818(n+1)])`
-/

namespace A207745.P4486528772178079098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207745.P4486528772178079098

/-!
# A207746: Number of n X n 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207746, there is no canonical definition to state claims against.
-/

/-! ## A207746.P9663737026947436286

`A207752((n+1)²+n²)`
-/

namespace A207746.P9663737026947436286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 ((n + 1) ^ 2 + n ^ 2)

end

end A207746.P9663737026947436286

/-! ## A207746.P2531630411960012815

`record[A003982(n)*A207752(n+1)]`
-/

namespace A207746.P2531630411960012815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207746.P2531630411960012815

/-! ## A207746.P11227405045989960866

`record[gcd(A114327(n), A207752(n+1))]`
-/

namespace A207746.P11227405045989960866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207752 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207746.P11227405045989960866

/-! ## A207746.P13282669903994270611

`lcm(A054977(n), A207752(A001844(n)))`
-/

namespace A207746.P13282669903994270611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A207752 (A001844 n).toNat)

end

end A207746.P13282669903994270611

/-! ## A207746.P2923314322437208565

`A207752(A001844(n))/A033999(n)²`
-/

namespace A207746.P2923314322437208565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207752 (A001844 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A207746.P2923314322437208565

/-!
# A207747: Number of n X 3 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207747, there is no canonical definition to state claims against.
-/

/-! ## A207747.P13392173981643970241

`sqrt(A207436(n+1))*sqrt(A207748(n+1))`
-/

namespace A207747.P13392173981643970241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207436 (n + 1) : ℝ) * Real.sqrt (A207748 (n + 1) : ℝ)

end

end A207747.P13392173981643970241

/-! ## A207747.P5607469243164836370

`sqrt(A207436(n+1)*A207748(n+1))`
-/

namespace A207747.P5607469243164836370
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207436 (n + 1) * A207748 (n + 1) : ℝ)

end

end A207747.P5607469243164836370

/-! ## A207747.P6453142417899957110

`A209650(∑[n+2]+4)`
-/

namespace A207747.P6453142417899957110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207747.P6453142417899957110

/-! ## A207747.P2453737028449706070

`lcm(2, A209650(A167614(n+1)))`
-/

namespace A207747.P2453737028449706070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209650 (A167614 (n + 1)).toNat)

end

end A207747.P2453737028449706070

/-! ## A207747.P641212141983473051

`A133707(n+1)*A209650(A167614(n+1))`
-/

namespace A207747.P641212141983473051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A209650 (A167614 (n + 1)).toNat

end

end A207747.P641212141983473051

/-! ## A207747.P13856040738022013302

`A209650(A167614(n+1))%A053376(n+1)`
-/

namespace A207747.P13856040738022013302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209650 (A167614 (n + 1)).toNat) (A053376 (n + 1))

end

end A207747.P13856040738022013302

/-! ## A207747.P17545162356658107783

`A209650(A167614(n+1))*A305962(∑{e}[n+1, #])`
-/

namespace A207747.P17545162356658107783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209650 (A167614 (n + 1)).toNat * A305962 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A207747.P17545162356658107783

/-!
# A207748: Number of nX4 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207748, there is no canonical definition to state claims against.
-/

/-! ## A207748.P14256978406681605711

`A207747(n+1)/A207436(n+1)*A207747(n+1)`
-/

namespace A207748.P14256978406681605711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207747 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) * (A207747 (n + 1) : ℚ)

end

end A207748.P14256978406681605711

/-! ## A207748.P8287737344049010576

`A207749(n+1)/A207750(n+1)*A207749(n+1)`
-/

namespace A207748.P8287737344049010576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207749 (n + 1) : ℚ) / (A207750 (n + 1) : ℚ) * (A207749 (n + 1) : ℚ)

end

end A207748.P8287737344049010576

/-! ## A207748.P7633329009994327196

`A207747(n+1)²/A207436(n+1)`
-/

namespace A207748.P7633329009994327196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207747 (n + 1) ^ 2 : ℚ) / (A207436 (n + 1) : ℚ)

end

end A207748.P7633329009994327196

/-! ## A207748.P15351718002960797162

`A207749(n+1)²/A207750(n+1)`
-/

namespace A207748.P15351718002960797162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207749 (n + 1) ^ 2 : ℚ) / (A207750 (n + 1) : ℚ)

end

end A207748.P15351718002960797162

/-! ## A207748.P9318338171473171834

`A207752(A141214(n+1))`
-/

namespace A207748.P9318338171473171834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A141214 (n + 1)).toNat

end

end A207748.P9318338171473171834

/-!
# A207749: Number of nX5 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207749, there is no canonical definition to state claims against.
-/

/-! ## A207749.P4054831124356736452

`A207747(n+1)/A207436(n+1)*A209651(n+1)`
-/

namespace A207749.P4054831124356736452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207747 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) * (A209651 (n + 1) : ℚ)

end

end A207749.P4054831124356736452

/-! ## A207749.P9974593076234555521

`sqrt(A207748(n+1))*sqrt(A207750(n+1))`
-/

namespace A207749.P9974593076234555521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207748 (n + 1) : ℝ) * Real.sqrt (A207750 (n + 1) : ℝ)

end

end A207749.P9974593076234555521

/-! ## A207749.P7457370095788540061

`sqrt(A207750(n+1)/A207436(n+1))*A207747(n+1)`
-/

namespace A207749.P7457370095788540061
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A207750 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) : ℝ) * (A207747 (n + 1) : ℝ)

end

end A207749.P7457370095788540061

/-! ## A207749.P9641199984861570601

`sqrt(A207748(n+1)*A207750(n+1))`
-/

namespace A207749.P9641199984861570601
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A207748 (n + 1) * A207750 (n + 1) : ℝ)

end

end A207749.P9641199984861570601

/-! ## A207749.P7210717587156209821

`A207752(∑[n+5]+6)`
-/

namespace A207749.P7210717587156209821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207749.P7210717587156209821

/-!
# A207750: Number of nX6 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207750, there is no canonical definition to state claims against.
-/

/-! ## A207750.P17508391601207204923

`A207749(n+1)/A207748(n+1)*A207749(n+1)`
-/

namespace A207750.P17508391601207204923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207749 (n + 1) : ℚ) / (A207748 (n + 1) : ℚ) * (A207749 (n + 1) : ℚ)

end

end A207750.P17508391601207204923

/-! ## A207750.P12375419568742178113

`A209651(n+1)/A207436(n+1)*A209651(n+1)`
-/

namespace A207750.P12375419568742178113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209651 (n + 1) : ℚ) / (A207436 (n + 1) : ℚ) * (A209651 (n + 1) : ℚ)

end

end A207750.P12375419568742178113

/-! ## A207750.P13258523535704063299

`A209651(n+1)²/A207436(n+1)`
-/

namespace A207750.P13258523535704063299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209651 (n + 1) ^ 2 : ℚ) / (A207436 (n + 1) : ℚ)

end

end A207750.P13258523535704063299

/-! ## A207750.P4224511443229124061

`A207749(n+1)²/A207748(n+1)`
-/

namespace A207750.P4224511443229124061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207749 (n + 1) ^ 2 : ℚ) / (A207748 (n + 1) : ℚ)

end

end A207750.P4224511443229124061

/-! ## A207750.P13149561351817937741

`A207752(∑[n+5]+6)²/A207748(n+1)`
-/

namespace A207750.P13149561351817937741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207752 (∑ j ∈ Finset.range (n + 1), f1 j + 6) ^ 2 : ℚ) / (A207748 (n + 1) : ℚ)

end

end A207750.P13149561351817937741

/-!
# A207751: Number of nX7 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207751, there is no canonical definition to state claims against.
-/

/-! ## A207751.P15819274504625103188

`A207752(A055999(n+4))`
-/

namespace A207751.P15819274504625103188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A055999 (n + 4)).toNat

end

end A207751.P15819274504625103188

/-! ## A207751.P3515659633240855069

`A207752(A000124(n+7)-7)`
-/

namespace A207751.P3515659633240855069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A000124 (n + 7) - 7).toNat

end

end A207751.P3515659633240855069

/-! ## A207751.P17776174704399646144

`A207752(A133263(n+6)+n-1)`
-/

namespace A207751.P17776174704399646144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A207751.P17776174704399646144

/-! ## A207751.P18200020061742218456

`A207752(A223134(n+4)+A034856(n+4))`
-/

namespace A207751.P18200020061742218456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A223134 (n + 4) + A034856 (n + 4)).toNat

end

end A207751.P18200020061742218456

/-!
# A207752: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207752, there is no canonical definition to state claims against.
-/

/-! ## A207752.P2600385025549174066

`A207123(A038722(n+1)%A029873(n))`
-/

namespace A207752.P2600385025549174066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (Int.tmod (A038722 (n + 1)) (A029873 n)).toNat

end

end A207752.P2600385025549174066

/-! ## A207752.P3518558958592274447

`A207123(A038722(n+1))%A068150(n+1)`
-/

namespace A207752.P3518558958592274447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207123 (A038722 (n + 1)).toNat) (A068150 (n + 1))

end

end A207752.P3518558958592274447

/-! ## A207752.P6985983206811495125

`A207123(A038722(n+1))+A000007(A048577(n))`
-/

namespace A207752.P6985983206811495125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A038722 (n + 1)).toNat + A000007 (A048577 n).toNat

end

end A207752.P6985983206811495125

/-! ## A207752.P10330025565889565300

`A207123(A038722(n+1))+A000007(A100835(n)²)`
-/

namespace A207752.P10330025565889565300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207123 (A038722 (n + 1)).toNat + A000007 (A100835 n ^ 2).toNat

end

end A207752.P10330025565889565300

/-! ## A207752.P15806912689386372427

`A207500(n+1)-A025465(A374733(n+1))`
-/

namespace A207752.P15806912689386372427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (n + 1) - A025465 (A374733 (n + 1)).toNat

end

end A207752.P15806912689386372427

/-!
# A207753: Number of 4 X n 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207753, there is no canonical definition to state claims against.
-/

/-! ## A207753.P57020691916275652

`A207752(A141214(n)+7)`
-/

namespace A207753.P57020691916275652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A141214 n + 7).toNat

end

end A207753.P57020691916275652

/-! ## A207753.P14683328826096734907

`A207752(A052905(n)+9)`
-/

namespace A207753.P14683328826096734907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A052905 n + 9).toNat

end

end A207753.P14683328826096734907

/-! ## A207753.P14734067509945916306

`A207752(A055999(n)+10)`
-/

namespace A207753.P14734067509945916306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A055999 n + 10).toNat

end

end A207753.P14734067509945916306

/-! ## A207753.P13190501627208539291

`A207752(A167614(n+2)+1)`
-/

namespace A207753.P13190501627208539291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A167614 (n + 2) + 1).toNat

end

end A207753.P13190501627208539291

/-! ## A207753.P659081219415407613

`A207752(A167487(n+2)-3)`
-/

namespace A207753.P659081219415407613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A167487 (n + 2) - 3).toNat

end

end A207753.P659081219415407613

/-!
# A207754: Number of 5Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207754, there is no canonical definition to state claims against.
-/

/-! ## A207754.P1122840513951126227

`A207752(A167499(n+3))`
-/

namespace A207754.P1122840513951126227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A167499 (n + 3)).toNat

end

end A207754.P1122840513951126227

/-! ## A207754.P3218198170228558582

`A207752(A155212(n)+13)`
-/

namespace A207754.P3218198170228558582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A155212 n + 13).toNat

end

end A207754.P3218198170228558582

/-! ## A207754.P15663522344980066916

`A207752(A056000(n)+15)`
-/

namespace A207754.P15663522344980066916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A056000 n + 15).toNat

end

end A207754.P15663522344980066916

/-! ## A207754.P11148509477480395356

`A207752(A141214(n+1)+8)`
-/

namespace A207754.P11148509477480395356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A141214 (n + 1) + 8).toNat

end

end A207754.P11148509477480395356

/-! ## A207754.P17860149109372521190

`A207752(A027379(n+2)+8)`
-/

namespace A207754.P17860149109372521190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A027379 (n + 2) + 8).toNat

end

end A207754.P17860149109372521190

/-!
# A207755: Number of 6Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207755, there is no canonical definition to state claims against.
-/

/-! ## A207755.P5693936643929343178

`A207752(A167499(n+4)+1)`
-/

namespace A207755.P5693936643929343178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A167499 (n + 4) + 1).toNat

end

end A207755.P5693936643929343178

/-! ## A207755.P976128143507886598

`A207752(A141214(n+2)+9)`
-/

namespace A207755.P976128143507886598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A141214 (n + 2) + 9).toNat

end

end A207755.P976128143507886598

/-! ## A207755.P9199253743759713101

`A207752(A027379(n+3)+9)`
-/

namespace A207755.P9199253743759713101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A027379 (n + 3) + 9).toNat

end

end A207755.P9199253743759713101

/-! ## A207755.P2833222135831795234

`A207752(A080036(A167499(n+3)))`
-/

namespace A207755.P2833222135831795234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A080036 (A167499 (n + 3)).toNat).toNat

end

end A207755.P2833222135831795234

/-! ## A207755.P12191245356992146377

`A207752(A002620(n+2)+A002620(n+9))`
-/

namespace A207755.P12191245356992146377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A207755.P12191245356992146377

/-!
# A207756: Number of 7Xn 0..1 arrays avoiding 0 0 1 and 0 1 1 horizontally and 0 0 1 and 1 0 0 vertically.

The programs for A207756, there is no canonical definition to state claims against.
-/

/-! ## A207756.P3768705993193368657

`A207752(A167487(n+5))`
-/

namespace A207756.P3768705993193368657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A167487 (n + 5)).toNat

end

end A207756.P3768705993193368657

/-! ## A207756.P9535453873369171765

`A207752(eq[11, A066657(n)])`
-/

namespace A207756.P9535453873369171765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207756.P9535453873369171765

/-! ## A207756.P16623470976812384267

`A207752(A167499(n+5)+2)`
-/

namespace A207756.P16623470976812384267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A167499 (n + 5) + 2).toNat

end

end A207756.P16623470976812384267

/-! ## A207756.P11658052242568398758

`A207752(A141214(n+3)+10)`
-/

namespace A207756.P11658052242568398758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A141214 (n + 3) + 10).toNat

end

end A207756.P11658052242568398758

/-! ## A207756.P17312606777653598826

`A207752(A027379(n+4)+10)`
-/

namespace A207756.P17312606777653598826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207752 (A027379 (n + 4) + 10).toNat

end

end A207756.P17312606777653598826

/-!
# A207757: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207757, there is no canonical definition to state claims against.
-/

/-! ## A207757.P18408885168906860795

`A207762((n+1)²+n²)`
-/

namespace A207757.P18408885168906860795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 ((n + 1) ^ 2 + n ^ 2)

end

end A207757.P18408885168906860795

/-! ## A207757.P7416423974234750379

`record[root(A207762(n+1), A143182(n))]`
-/

namespace A207757.P7416423974234750379
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207762 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207757.P7416423974234750379

/-! ## A207757.P2038927535936724567

`record[gcd(A114327(n), A207762(n+1))]`
-/

namespace A207757.P2038927535936724567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A207762 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207757.P2038927535936724567

/-! ## A207757.P11139698419646017898

`record[root(A207762(n+1), A089913(n+1))]`
-/

namespace A207757.P11139698419646017898
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A207762 (n + 1) : ℝ) ^ (1 / (A089913 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207757.P11139698419646017898

/-! ## A207757.P4343198948183690293

`lcm(A057077(n), A207762(A001844(n)))`
-/

namespace A207757.P4343198948183690293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A207762 (A001844 n).toNat)

end

end A207757.P4343198948183690293

/-!
# A207758: Number of nX4 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207758, there is no canonical definition to state claims against.
-/

/-! ## A207758.P9869476207041508701

`A207762(A027379(n+2))`
-/

namespace A207758.P9869476207041508701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A027379 (n + 2)).toNat

end

end A207758.P9869476207041508701

/-! ## A207758.P17026168105143512704

`A207762(A055998(n+2))`
-/

namespace A207758.P17026168105143512704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A055998 (n + 2)).toNat

end

end A207758.P17026168105143512704

/-! ## A207758.P6973256434477609273

`A207762(A155212(n)+5)`
-/

namespace A207758.P6973256434477609273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A155212 n + 5).toNat

end

end A207758.P6973256434477609273

/-! ## A207758.P15178805365329762918

`A207762(A056000(n)+7)`
-/

namespace A207758.P15178805365329762918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A056000 n + 7).toNat

end

end A207758.P15178805365329762918

/-! ## A207758.P13621594278096720108

`A207762(Δ[A034857(n+1)])`
-/

namespace A207758.P13621594278096720108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (f1 (n + 1) - f1 n).toNat

end

end A207758.P13621594278096720108

/-!
# A207759: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207759, there is no canonical definition to state claims against.
-/

/-! ## A207759.P2024213475984096554

`A207762(Δ[A264443(n)])`
-/

namespace A207759.P2024213475984096554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (f1 (n + 1) - f1 n).toNat

end

end A207759.P2024213475984096554

/-! ## A207759.P3073735508131431630

`A207762(A046691(n+3))`
-/

namespace A207759.P3073735508131431630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A046691 (n + 3)).toNat

end

end A207759.P3073735508131431630

/-! ## A207759.P104514470508244164

`A207762(Δ[A023545(n+1)])`
-/

namespace A207759.P104514470508244164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (f1 (n + 1) - f1 n).toNat

end

end A207759.P104514470508244164

/-! ## A207759.P13577096972002982047

`A207762(A000096(n+4)-3)`
-/

namespace A207759.P13577096972002982047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000096 (n + 4) - 3).toNat

end

end A207759.P13577096972002982047

/-! ## A207759.P9580515018648822442

`A207762(A000124(n+5)-5)`
-/

namespace A207759.P9580515018648822442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000124 (n + 5) - 5).toNat

end

end A207759.P9580515018648822442

/-!
# A207760: Number of nX6 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207760, there is no canonical definition to state claims against.
-/

/-! ## A207760.P13560043579568662651

`A207762(A052905(n+3))`
-/

namespace A207760.P13560043579568662651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A052905 (n + 3)).toNat

end

end A207760.P13560043579568662651

/-! ## A207760.P2754449054635529735

`A207762(A056115(n+1)+10)`
-/

namespace A207760.P2754449054635529735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A056115 (n + 1) + 10).toNat

end

end A207760.P2754449054635529735

/-! ## A207760.P15563537900196999985

`A207762(A000217(n+6)-5)`
-/

namespace A207760.P15563537900196999985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000217 (n + 6) - 5).toNat

end

end A207760.P15563537900196999985

/-! ## A207760.P1951555206469756961

`A207762(A000124(n+6)-6)`
-/

namespace A207760.P1951555206469756961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000124 (n + 6) - 6).toNat

end

end A207760.P1951555206469756961

/-! ## A207760.P8658649139878375281

`A207762(A161680(n+7)-5)`
-/

namespace A207760.P8658649139878375281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A161680 (n + 7) - 5).toNat

end

end A207760.P8658649139878375281

/-!
# A207761: Number of nX7 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207761, there is no canonical definition to state claims against.
-/

/-! ## A207761.P15920177763203232728

`A207762(A055999(n+4))`
-/

namespace A207761.P15920177763203232728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A055999 (n + 4)).toNat

end

end A207761.P15920177763203232728

/-! ## A207761.P8749917634576258665

`A207762(A000217(n+7)-6)`
-/

namespace A207761.P8749917634576258665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000217 (n + 7) - 6).toNat

end

end A207761.P8749917634576258665

/-! ## A207761.P6623301813662110698

`A207762(A000124(n+7)-7)`
-/

namespace A207761.P6623301813662110698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000124 (n + 7) - 7).toNat

end

end A207761.P6623301813662110698

/-! ## A207761.P15576326586004186329

`A207762(A133263(n+6)+n-1)`
-/

namespace A207761.P15576326586004186329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A133263 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A207761.P15576326586004186329

/-! ## A207761.P7191837273226821248

`A207762(A161680(n+7)+n+1)`
-/

namespace A207761.P7191837273226821248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A207761.P7191837273226821248

/-!
# A207762: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207762, there is no canonical definition to state claims against.
-/

/-! ## A207762.P875372619987401164

`or(A207269(n+1), A321379(A046223(n+1)))`
-/

namespace A207762.P875372619987401164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A207269 (n + 1)) (A321379 (A046223 (n + 1)).toNat)

end

end A207762.P875372619987401164

/-! ## A207762.P10737080707166485320

`A207885(n+1)%A075953(n)`
-/

namespace A207762.P10737080707166485320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207885 (n + 1)) (A075953 n)

end

end A207762.P10737080707166485320

/-! ## A207762.P14859188097058770718

`A207885(C(A151764(n+1), n))`
-/

namespace A207762.P14859188097058770718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (Nat.choose (A151764 (n + 1)).toNat n)

end

end A207762.P14859188097058770718

/-! ## A207762.P7481325850622281281

`A245794(n)!*A207885(n+1)`
-/

namespace A207762.P7481325850622281281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A245794 n).toNat : ℤ) * A207885 (n + 1)

end

end A207762.P7481325850622281281

/-! ## A207762.P7278855593225295476

`A207885(n+1)+A010054(A001060(n))`
-/

namespace A207762.P7278855593225295476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207885 (n + 1) + A010054 (A001060 n).toNat

end

end A207762.P7278855593225295476

/-!
# A207763: Number of 3 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207763, there is no canonical definition to state claims against.
-/

/-! ## A207763.P3909348825228781117

`A207762(∑[n+2]+4)`
-/

namespace A207763.P3909348825228781117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207763.P3909348825228781117

/-! ## A207763.P18065964059355941130

`lcm((-1)^n, A207762(A055998(n)+6))`
-/

namespace A207763.P18065964059355941130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A207762 (A055998 n + 6).toNat)

end

end A207763.P18065964059355941130

/-! ## A207763.P15529177213122491614

`A207762(A167614(n+1))+A000007(n+1)`
-/

namespace A207763.P15529177213122491614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A207763.P15529177213122491614

/-! ## A207763.P15553623158879395512

`A207762(A167614(n+1))%A207246(n+1)`
-/

namespace A207763.P15553623158879395512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207762 (A167614 (n + 1)).toNat) (A207246 (n + 1))

end

end A207763.P15553623158879395512

/-! ## A207763.P15197394216873127405

`A001222(A114230(n+2))*A207762(A167614(n+1))`
-/

namespace A207763.P15197394216873127405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114230 (n + 2)).toNat * A207762 (A167614 (n + 1)).toNat

end

end A207763.P15197394216873127405

/-!
# A207764: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207764, there is no canonical definition to state claims against.
-/

/-! ## A207764.P8826620413633800277

`A207762(A052905(n)+9)`
-/

namespace A207764.P8826620413633800277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A052905 n + 9).toNat

end

end A207764.P8826620413633800277

/-! ## A207764.P6275119854855514979

`A207762(A055999(n)+10)`
-/

namespace A207764.P6275119854855514979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A055999 n + 10).toNat

end

end A207764.P6275119854855514979

/-! ## A207764.P13083239609761948446

`A207762(A167614(n+2)+1)`
-/

namespace A207764.P13083239609761948446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A167614 (n + 2) + 1).toNat

end

end A207764.P13083239609761948446

/-! ## A207764.P11206121958260670930

`A207762(A167499(n+2)-1)`
-/

namespace A207764.P11206121958260670930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A167499 (n + 2) - 1).toNat

end

end A207764.P11206121958260670930

/-! ## A207764.P1368169597064566354

`A207762(A000096(n+2)+5)`
-/

namespace A207764.P1368169597064566354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000096 (n + 2) + 5).toNat

end

end A207764.P1368169597064566354

/-!
# A207765: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207765, there is no canonical definition to state claims against.
-/

/-! ## A207765.P17706360751679467710

`A207762(A167499(n+3))`
-/

namespace A207765.P17706360751679467710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A167499 (n + 3)).toNat

end

end A207765.P17706360751679467710

/-! ## A207765.P6102958343173336487

`A207762(A000124(n+4)+4)`
-/

namespace A207765.P6102958343173336487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000124 (n + 4) + 4).toNat

end

end A207765.P6102958343173336487

/-! ## A207765.P15446226951447174890

`A207762(A000217(n+4)+5)`
-/

namespace A207765.P15446226951447174890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000217 (n + 4) + 5).toNat

end

end A207765.P15446226951447174890

/-! ## A207765.P14500412300450447685

`A207762(A027379(n+2)+8)`
-/

namespace A207765.P14500412300450447685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A027379 (n + 2) + 8).toNat

end

end A207765.P14500412300450447685

/-! ## A207765.P4138306190801278369

`A207762(A161680(n+5)+5)`
-/

namespace A207765.P4138306190801278369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A161680 (n + 5) + 5).toNat

end

end A207765.P4138306190801278369

/-!
# A207766: Number of 6 X n 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207766, there is no canonical definition to state claims against.
-/

/-! ## A207766.P4846879394051220507

`A207762(A000124(n+5)+5)`
-/

namespace A207766.P4846879394051220507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000124 (n + 5) + 5).toNat

end

end A207766.P4846879394051220507

/-! ## A207766.P13218091712615969310

`A207762(A000217(n+5)+6)`
-/

namespace A207766.P13218091712615969310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000217 (n + 5) + 6).toNat

end

end A207766.P13218091712615969310

/-! ## A207766.P2038926261600147169

`A207762(A161680(n+6)+6)`
-/

namespace A207766.P2038926261600147169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A161680 (n + 6) + 6).toNat

end

end A207766.P2038926261600147169

/-! ## A207766.P15456655376898109568

`A207762(A020715(C(n+6, 2)))`
-/

namespace A207766.P15456655376898109568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A020715 (Nat.choose (n + 6) 2)).toNat

end

end A207766.P15456655376898109568

/-! ## A207766.P15848197170377264986

`A207762(Δ[A023545(n+1)]+10)`
-/

namespace A207766.P15848197170377264986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (f1 (n + 1) - f1 n + 10).toNat

end

end A207766.P15848197170377264986

/-!
# A207767: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 0 1 horizontally and 0 1 1 and 1 0 1 vertically.

The programs for A207767, there is no canonical definition to state claims against.
-/

/-! ## A207767.P9248436073744475028

`A207762(A167487(n+5))`
-/

namespace A207767.P9248436073744475028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A167487 (n + 5)).toNat

end

end A207767.P9248436073744475028

/-! ## A207767.P2541622304142523828

`A207762(A000124(n+6)+6)`
-/

namespace A207767.P2541622304142523828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000124 (n + 6) + 6).toNat

end

end A207767.P2541622304142523828

/-! ## A207767.P13806837939937133767

`A207762(A000217(n+6)+7)`
-/

namespace A207767.P13806837939937133767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A000217 (n + 6) + 7).toNat

end

end A207767.P13806837939937133767

/-! ## A207767.P10681347438610191759

`A207762(A034856(n+5)+9)`
-/

namespace A207767.P10681347438610191759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A034856 (n + 5) + 9).toNat

end

end A207767.P10681347438610191759

/-! ## A207767.P15792671380446219294

`A207762(A060577(n+5)+11)`
-/

namespace A207767.P15792671380446219294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207762 (A060577 (n + 5) + 11).toNat

end

end A207767.P15792671380446219294

/-!
# A207768: Number of n X n 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207768, there is no canonical definition to state claims against.
-/

/-! ## A207768.P17372421991248085210

`A207774(∑[4*n]+1)`
-/

namespace A207768.P17372421991248085210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207768.P17372421991248085210

/-! ## A207768.P9946092011304898173

`and(-ceil(acot(n)), A207774((n+1)²+n²))`
-/

namespace A207768.P9946092011304898173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-⌈SequenceMachineLib.acot (n : ℝ)⌉) (A207774 ((n + 1) ^ 2 + n ^ 2))

end

end A207768.P9946092011304898173

/-! ## A207768.P17235497410218995932

`record[A003982(n)*A207774(n+1)]`
-/

namespace A207768.P17235497410218995932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A207774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207768.P17235497410218995932

/-! ## A207768.P6267762364254709215

`record[gcd(A049581(n), A207774(n+1))]`
-/

namespace A207768.P6267762364254709215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A207774 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207768.P6267762364254709215

/-! ## A207768.P15679139613709904633

`char[A049581(n)]*A207774((n+1)²+n²)`
-/

namespace A207768.P15679139613709904633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A207774 ((n + 1) ^ 2 + n ^ 2)

end

end A207768.P15679139613709904633

/-!
# A207769: Number of n X 3 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207769, there is no canonical definition to state claims against.
-/

/-! ## A207769.P9644811001762601735

`A207774(∑[n+3]+1)`
-/

namespace A207769.P9644811001762601735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207769.P9644811001762601735

/-! ## A207769.P14573814371723796206

`lcm(2, A207774(A034856(n+2)))`
-/

namespace A207769.P14573814371723796206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207774 (A034856 (n + 2)).toNat)

end

end A207769.P14573814371723796206

/-! ## A207769.P5039043793118326942

`A326292(n)+A207774(A034856(n+2))`
-/

namespace A207769.P5039043793118326942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A207774 (A034856 (n + 2)).toNat

end

end A207769.P5039043793118326942

/-! ## A207769.P3910651472814364490

`A207774(A034856(n+2))%A207342(n+1)`
-/

namespace A207769.P3910651472814364490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207774 (A034856 (n + 2)).toNat) (A207342 (n + 1))

end

end A207769.P3910651472814364490

/-!
# A207770: Number of n X 4 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207770, there is no canonical definition to state claims against.
-/

/-! ## A207770.P10405555581060889953

`A207774(A141214(n+1))`
-/

namespace A207770.P10405555581060889953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A141214 (n + 1)).toNat

end

end A207770.P10405555581060889953

/-! ## A207770.P16607189063592446411

`A207774(A027379(n+2))`
-/

namespace A207770.P16607189063592446411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A027379 (n + 2)).toNat

end

end A207770.P16607189063592446411

/-! ## A207770.P14500486209303360157

`A207774(Δ[A006416(n+2)])`
-/

namespace A207770.P14500486209303360157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (f1 (n + 1) - f1 n).toNat

end

end A207770.P14500486209303360157

/-! ## A207770.P5162695338312288555

`A207774(A052905(n+1)+2)`
-/

namespace A207770.P5162695338312288555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A052905 (n + 1) + 2).toNat

end

end A207770.P5162695338312288555

/-! ## A207770.P14731872194776094956

`A207774(A000124(n+4)-4)`
-/

namespace A207770.P14731872194776094956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A000124 (n + 4) - 4).toNat

end

end A207770.P14731872194776094956

/-!
# A207771: Number of nX5 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207771, there is no canonical definition to state claims against.
-/

/-! ## A207771.P16909879380020345601

`A207774(Δ[A264443(n)])`
-/

namespace A207771.P16909879380020345601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (f1 (n + 1) - f1 n).toNat

end

end A207771.P16909879380020345601

/-! ## A207771.P7297139410296029657

`A207774(A046691(n+3))`
-/

namespace A207771.P7297139410296029657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A046691 (n + 3)).toNat

end

end A207771.P7297139410296029657

/-! ## A207771.P5852550148724377876

`A207774(Δ[A023545(n+1)])`
-/

namespace A207771.P5852550148724377876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (f1 (n + 1) - f1 n).toNat

end

end A207771.P5852550148724377876

/-! ## A207771.P14088158254067885059

`A207774(Δ[A006416(n+3)]-1)`
-/

namespace A207771.P14088158254067885059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (f1 (n + 1) - f1 n - 1).toNat

end

end A207771.P14088158254067885059

/-! ## A207771.P14808090188293634903

`A207774(eq[5, A004736(n+1)]+1)`
-/

namespace A207771.P14808090188293634903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207771.P14808090188293634903

/-!
# A207772: Number of n X 6 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207772, there is no canonical definition to state claims against.
-/

/-! ## A207772.P1794526041415437768

`A207774(A046691(n+4)-1)`
-/

namespace A207772.P1794526041415437768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A046691 (n + 4) - 1).toNat

end

end A207772.P1794526041415437768

/-! ## A207772.P9835989345836567784

`A207774(A000217(n+6)-5)`
-/

namespace A207772.P9835989345836567784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A000217 (n + 6) - 5).toNat

end

end A207772.P9835989345836567784

/-! ## A207772.P12785692653066856892

`A207774(A000124(n+6)-6)`
-/

namespace A207772.P12785692653066856892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A000124 (n + 6) - 6).toNat

end

end A207772.P12785692653066856892

/-! ## A207772.P4413625237767408011

`A207774(eq[5, A025581(n)]+1)`
-/

namespace A207772.P4413625237767408011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207772.P4413625237767408011

/-! ## A207772.P5243974788468341124

`A207774(Δ[Δ[A006504(n+1)]])`
-/

namespace A207772.P5243974788468341124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (f1 (n + 1) - f1 n).toNat

end

end A207772.P5243974788468341124

/-!
# A207773: Number of n X 7 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207773, there is no canonical definition to state claims against.
-/

/-! ## A207773.P11096654428466959585

`A207774(A055999(n+4))`
-/

namespace A207773.P11096654428466959585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A055999 (n + 4)).toNat

end

end A207773.P11096654428466959585

/-! ## A207773.P15785584872892521023

`A207774(A000217(n+7)-6)`
-/

namespace A207773.P15785584872892521023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A000217 (n + 7) - 6).toNat

end

end A207773.P15785584872892521023

/-! ## A207773.P9970829963371928055

`A207774(A000124(n+7)-7)`
-/

namespace A207773.P9970829963371928055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A000124 (n + 7) - 7).toNat

end

end A207773.P9970829963371928055

/-! ## A207773.P2381862926375992944

`A207774(eq[13, A099375(n)]+1)`
-/

namespace A207773.P2381862926375992944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207773.P2381862926375992944

/-! ## A207773.P3674040489396510619

`A207774(Δ[n²]+A046691(n+3)+10)`
-/

namespace A207773.P3674040489396510619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A046691 (n + 3) + 10)).toNat

end

end A207773.P3674040489396510619

/-!
# A207775: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207775, there is no canonical definition to state claims against.
-/

/-! ## A207775.P10607967767971255405

`A207774(A167499(n+3))`
-/

namespace A207775.P10607967767971255405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A167499 (n + 3)).toNat

end

end A207775.P10607967767971255405

/-! ## A207775.P10902331539825917607

`A207774(A155212(n)+13)`
-/

namespace A207775.P10902331539825917607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A155212 n + 13).toNat

end

end A207775.P10902331539825917607

/-! ## A207775.P7859407468478846955

`A207774(A056000(n)+15)`
-/

namespace A207775.P7859407468478846955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A056000 n + 15).toNat

end

end A207775.P7859407468478846955

/-! ## A207775.P1924650399353474341

`A207774(A000217(n+4)+5)`
-/

namespace A207775.P1924650399353474341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A000217 (n + 4) + 5).toNat

end

end A207775.P1924650399353474341

/-! ## A207775.P10728756110695004562

`A207774(eq[5, A025581(n)]-2*n)`
-/

namespace A207775.P10728756110695004562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A207775.P10728756110695004562

/-!
# A207776: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207776, there is no canonical definition to state claims against.
-/

/-! ## A207776.P8328905060810236814

`A207774(A167614(n+4)+3)`
-/

namespace A207776.P8328905060810236814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A167614 (n + 4) + 3).toNat

end

end A207776.P8328905060810236814

/-! ## A207776.P9951053747450795075

`A207774(A000217(n+5)+6)`
-/

namespace A207776.P9951053747450795075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A000217 (n + 5) + 6).toNat

end

end A207776.P9951053747450795075

/-! ## A207776.P4706827729371190726

`A207774(A166136(A020705(n)))`
-/

namespace A207776.P4706827729371190726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A166136 (A020705 n).toNat).toNat

end

end A207776.P4706827729371190726

/-! ## A207776.P4388644916973541939

`A207774(A167499(A020705(n))+1)`
-/

namespace A207776.P4388644916973541939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A167499 (A020705 n).toNat + 1).toNat

end

end A207776.P4388644916973541939

/-! ## A207776.P12148823776208272772

`A207774(A046691(n+7)-A008574(n+5))`
-/

namespace A207776.P12148823776208272772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A046691 (n + 7) - A008574 (n + 5)).toNat

end

end A207776.P12148823776208272772

/-!
# A207777: Number of 7Xn 0..1 arrays avoiding 0 0 0 and 1 1 1 horizontally and 0 0 1 and 0 1 0 vertically.

The programs for A207777, there is no canonical definition to state claims against.
-/

/-! ## A207777.P1495925182092115103

`A207774(A000124(n+6)+6)`
-/

namespace A207777.P1495925182092115103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A000124 (n + 6) + 6).toNat

end

end A207777.P1495925182092115103

/-! ## A207777.P14067350966604086199

`A207774(A253145(n+5)+7)`
-/

namespace A207777.P14067350966604086199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A253145 (n + 5) + 7).toNat

end

end A207777.P14067350966604086199

/-! ## A207777.P713429146686120643

`A207774(A000217(n+6)+7)`
-/

namespace A207777.P713429146686120643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A000217 (n + 6) + 7).toNat

end

end A207777.P713429146686120643

/-! ## A207777.P6034649943677652034

`A207774(A141214(n+3)+10)`
-/

namespace A207777.P6034649943677652034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A141214 (n + 3) + 10).toNat

end

end A207777.P6034649943677652034

/-! ## A207777.P16731875137126896811

`A207774(A161680(n+7)+7)`
-/

namespace A207777.P16731875137126896811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207774 (A161680 (n + 7) + 7).toNat

end

end A207777.P16731875137126896811

/-!
# A207778: Smallest multiple of 2^n using only 1's and 2's.

The programs for A207778, there is no canonical definition to state claims against.
-/

/-! ## A207778.P2753721750800130951

`2^n*A216482(2^n)`
-/

namespace A207778.P2753721750800130951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A216482 (2 ^ n)

end

end A207778.P2753721750800130951

/-! ## A207778.P11046471046232165070

`A216478(A164157(n))`
-/

namespace A207778.P11046471046232165070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216478 (A164157 n).toNat

end

end A207778.P11046471046232165070

/-! ## A207778.P16271354355628553964

`A216478(A164175(n))`
-/

namespace A207778.P16271354355628553964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216478 (A164175 n).toNat

end

end A207778.P16271354355628553964

/-!
# A207779: Largest part plus the number of parts of the n-th region of the modular table of partitions.

The programs for A207779, there is no canonical definition to state claims against.
-/

/-! ## A207779.P1934424314380490615

`A141285(n+1)+A194446(n+1)`
-/

namespace A207779.P1934424314380490615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) + A194446 (n + 1)

end

end A207779.P1934424314380490615

/-! ## A207779.P8819961210778988548

`A194446(n+1)+A186114(∑[n+1])`
-/

namespace A207779.P8819961210778988548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1) + A186114 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A207779.P8819961210778988548

/-! ## A207779.P9566270751053720715

`A194446(n+1)+A193870(∑[n]+1)`
-/

namespace A207779.P9566270751053720715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1) + A193870 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207779.P9566270751053720715

/-! ## A207779.P15869966288190753865

`A194446(n+1)+A244967(n+1)+1`
-/

namespace A207779.P15869966288190753865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1) + (A244967 (n + 1) + 1)

end

end A207779.P15869966288190753865

/-! ## A207779.P1591854939191088582

`A194447(n+1)+2*A194446(n+1)`
-/

namespace A207779.P1591854939191088582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194447 (n + 1) + 2 * A194446 (n + 1)

end

end A207779.P1591854939191088582

/-! ## A207779.P8778608815483978652

`2*A141285(n+1)-A194447(n+1)`
-/

namespace A207779.P8778608815483978652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141285 (n + 1) - A194447 (n + 1)

end

end A207779.P8778608815483978652

/-! ## A207779.P2208003695428716709

`A194446(n+1)+A005496(A244967(n+1))`
-/

namespace A207779.P2208003695428716709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1) + A005496 (A244967 (n + 1)).toNat

end

end A207779.P2208003695428716709

/-! ## A207779.P15485473890849462398

`A004277(A141285(n+1))-A194447(n+1)`
-/

namespace A207779.P15485473890849462398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A141285 (n + 1)).toNat - A194447 (n + 1)

end

end A207779.P15485473890849462398

/-! ## A207779.P10947082374061111159

`2*A193870(A000124(n))-A194447(n+1)`
-/

namespace A207779.P10947082374061111159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193870 (A000124 n).toNat - A194447 (n + 1)

end

end A207779.P10947082374061111159

/-! ## A207779.P16171691226372050863

`A194446(n+1)+A194449(n+1)+A194448(n+1)`
-/

namespace A207779.P16171691226372050863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194446 (n + 1) + (A194449 (n + 1) + A194448 (n + 1))

end

end A207779.P16171691226372050863

/-!
# A207780: Number of n X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A207780, there is no canonical definition to state claims against.
-/

/-! ## A207780.P53744657025727057

`A207785((n+1)²+n²)`
-/

namespace A207780.P53744657025727057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 ((n + 1) ^ 2 + n ^ 2)

end

end A207780.P53744657025727057

/-! ## A207780.P9673933113898197700

`record[gcd(A008482(n), A207785(n+1))]`
-/

namespace A207780.P9673933113898197700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A207785 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207780.P9673933113898197700

/-! ## A207780.P3450664176818699883

`A207785(A001844(n))+char[A105716(n)]`
-/

namespace A207780.P3450664176818699883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105716 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A207780.P3450664176818699883

/-! ## A207780.P15236220062952423526

`A000010((-1)^(2*n))*A207785(A001844(n))`
-/

namespace A207780.P15236220062952423526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((-1) ^ (2 * n)).toNat * A207785 (A001844 n).toNat

end

end A207780.P15236220062952423526

/-! ## A207780.P500023627893105132

`A007318(A058348(n))*A207785(A001844(n))`
-/

namespace A207780.P500023627893105132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A058348 n).toNat * A207785 (A001844 n).toNat

end

end A207780.P500023627893105132

/-!
# A207781: Number of nX4 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A207781, there is no canonical definition to state claims against.
-/

/-! ## A207781.P13401669437035739719

`A207785(A141214(n+1))`
-/

namespace A207781.P13401669437035739719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A141214 (n + 1)).toNat

end

end A207781.P13401669437035739719

/-! ## A207781.P4579312082682717739

`A207785(A027379(n+2))`
-/

namespace A207781.P4579312082682717739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A027379 (n + 2)).toNat

end

end A207781.P4579312082682717739

/-! ## A207781.P4705859568412324184

`A207785(A055998(n+2))`
-/

namespace A207781.P4705859568412324184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A055998 (n + 2)).toNat

end

end A207781.P4705859568412324184

/-! ## A207781.P358422004606613948

`A207785(A155212(n)+5)`
-/

namespace A207781.P358422004606613948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A155212 n + 5).toNat

end

end A207781.P358422004606613948

/-! ## A207781.P2186915263473365481

`A207785(A056000(n)+7)`
-/

namespace A207781.P2186915263473365481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A056000 n + 7).toNat

end

end A207781.P2186915263473365481

/-!
# A207782: Number of n X 5 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A207782, there is no canonical definition to state claims against.
-/

/-! ## A207782.P17097191616701043327

`A207785(∑[n+5]+6)`
-/

namespace A207782.P17097191616701043327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A207782.P17097191616701043327

/-! ## A207782.P9190702863120497588

`or(char[1], A207785(A052905(n+2)+1))`
-/

namespace A207782.P9190702863120497588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A207785 (A052905 (n + 2) + 1).toNat)

end

end A207782.P9190702863120497588

/-! ## A207782.P14373918082795501888

`or(A000007(n), A207785(A055999(n+2)+2))`
-/

namespace A207782.P14373918082795501888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A207785 (A055999 (n + 2) + 2).toNat)

end

end A207782.P14373918082795501888

/-! ## A207782.P12423982460245115381

`A207785(A055999(n+2)+2)+A000007(n+1)`
-/

namespace A207782.P12423982460245115381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A055999 (n + 2) + 2).toNat + A000007 (n + 1)

end

end A207782.P12423982460245115381

/-! ## A207782.P18090786901099822303

`A007318(A000217(n))*A207785(A055999(n+2)+2)`
-/

namespace A207782.P18090786901099822303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A207785 (A055999 (n + 2) + 2).toNat

end

end A207782.P18090786901099822303

/-!
# A207783: Number of nX6 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A207783, there is no canonical definition to state claims against.
-/

/-! ## A207783.P69943184197178786

`A207785(∑[n+6]+10)`
-/

namespace A207783.P69943184197178786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A207783.P69943184197178786

/-! ## A207783.P4915313957448108636

`A207785(A000217(n+6)-5)%A178664(n+3)`
-/

namespace A207783.P4915313957448108636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207785 (A000217 (n + 6) - 5).toNat) (A178664 (n + 3))

end

end A207783.P4915313957448108636

/-!
# A207784: Number of nX7 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A207784, there is no canonical definition to state claims against.
-/

/-! ## A207784.P1646544760778253821

`A207785(A046691(n+5)-2)`
-/

namespace A207784.P1646544760778253821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A046691 (n + 5) - 2).toNat

end

end A207784.P1646544760778253821

/-! ## A207784.P9101300401220265915

`A207785(A000096(n+6)-5)`
-/

namespace A207784.P9101300401220265915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000096 (n + 6) - 5).toNat

end

end A207784.P9101300401220265915

/-! ## A207784.P5980677456381337439

`A207785(A000217(n+7)-6)`
-/

namespace A207784.P5980677456381337439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000217 (n + 7) - 6).toNat

end

end A207784.P5980677456381337439

/-! ## A207784.P15268796058927490638

`A207785(A000124(n+7)-7)`
-/

namespace A207784.P15268796058927490638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000124 (n + 7) - 7).toNat

end

end A207784.P15268796058927490638

/-! ## A207784.P16066006231822763200

`A207785(eq[7, A004736(n+1)]+1)`
-/

namespace A207784.P16066006231822763200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A207784.P16066006231822763200

/-!
# A207785: T(n,k)=Number of nXk 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A207785, there is no canonical definition to state claims against.
-/

/-! ## A207785.P5914477298391018658

`A324674(A288874(n))+A207514(n+1)`
-/

namespace A207785.P5914477298391018658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 (A288874 n).toNat + A207514 (n + 1)

end

end A207785.P5914477298391018658

/-! ## A207785.P2244458008482675697

`A207242(n+1)-A151755(A207242(n+1))`
-/

namespace A207785.P2244458008482675697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207242 (n + 1) - A151755 (A207242 (n + 1)).toNat

end

end A207785.P2244458008482675697

/-! ## A207785.P17633161707755876825

`A207500(n+1)-A151755(A207500(n+1))`
-/

namespace A207785.P17633161707755876825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207500 (n + 1) - A151755 (A207500 (n + 1)).toNat

end

end A207785.P17633161707755876825

/-! ## A207785.P8145504534818755468

`A324674(A288874(n))+A207682(A038722(n+1))`
-/

namespace A207785.P8145504534818755468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324674 (A288874 n).toNat + A207682 (A038722 (n + 1)).toNat

end

end A207785.P8145504534818755468

/-! ## A207785.P9864742854971194020

`A207305(n+1)+A080885(A177144(n))`
-/

namespace A207785.P9864742854971194020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207305 (n + 1) + A080885 (A177144 n).toNat

end

end A207785.P9864742854971194020

/-!
# A207786: Number of 4Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A207786, there is no canonical definition to state claims against.
-/

/-! ## A207786.P4043909115252604584

`A207785(A141214(n)+7)`
-/

namespace A207786.P4043909115252604584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A141214 n + 7).toNat

end

end A207786.P4043909115252604584

/-! ## A207786.P16167310770996622693

`A207785(A052905(n)+9)`
-/

namespace A207786.P16167310770996622693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A052905 n + 9).toNat

end

end A207786.P16167310770996622693

/-! ## A207786.P13540379009544253662

`A207785(A167614(n+2)+1)`
-/

namespace A207786.P13540379009544253662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A167614 (n + 2) + 1).toNat

end

end A207786.P13540379009544253662

/-! ## A207786.P12762022955347336062

`A207785(A166136(n+2)-2)`
-/

namespace A207786.P12762022955347336062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A166136 (n + 2) - 2).toNat

end

end A207786.P12762022955347336062

/-! ## A207786.P6731872299220604938

`A207785(A000124(n+3)+3)`
-/

namespace A207786.P6731872299220604938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000124 (n + 3) + 3).toNat

end

end A207786.P6731872299220604938

/-!
# A207787: Number of 5Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A207787, there is no canonical definition to state claims against.
-/

/-! ## A207787.P15390329269215920617

`A207785(A000124(n+4)+4)`
-/

namespace A207787.P15390329269215920617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000124 (n + 4) + 4).toNat

end

end A207787.P15390329269215920617

/-! ## A207787.P12465343960440022364

`A207785(A000217(n+4)+5)`
-/

namespace A207787.P12465343960440022364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000217 (n + 4) + 5).toNat

end

end A207787.P12465343960440022364

/-! ## A207787.P7860820808290434011

`A207785(A027379(n+1)+n+12)`
-/

namespace A207787.P7860820808290434011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A027379 (n + 1) + (n + 12 : ℤ)).toNat

end

end A207787.P7860820808290434011

/-! ## A207787.P16887971335677364302

`A207785(A000096(n+5)-5-2*n)`
-/

namespace A207787.P16887971335677364302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000096 (n + 5) - 5 - (2 * n : ℤ)).toNat

end

end A207787.P16887971335677364302

/-! ## A207787.P17226349288571611068

`A207785(Δ[Δ[A006504(n+1)]]-(2*n+1))`
-/

namespace A207787.P17226349288571611068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (f1 (n + 1) - f1 n - (2 * n + 1 : ℤ)).toNat

end

end A207787.P17226349288571611068

/-!
# A207788: Number of 6Xn 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A207788, there is no canonical definition to state claims against.
-/

/-! ## A207788.P11933570265423097350

`A207785(A166136(n+4))`
-/

namespace A207788.P11933570265423097350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A166136 (n + 4)).toNat

end

end A207788.P11933570265423097350

/-! ## A207788.P13624061073532621579

`A207785(A167499(n+4)+1)`
-/

namespace A207788.P13624061073532621579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A167499 (n + 4) + 1).toNat

end

end A207788.P13624061073532621579

/-! ## A207788.P10983830588521508972

`A207785(A000217(n+5)+6)`
-/

namespace A207788.P10983830588521508972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000217 (n + 5) + 6).toNat

end

end A207788.P10983830588521508972

/-! ## A207788.P18364195103685914465

`A207785(A046691(n+3)+10)`
-/

namespace A207788.P18364195103685914465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A046691 (n + 3) + 10).toNat

end

end A207788.P18364195103685914465

/-! ## A207788.P3977559580860579691

`A207785(Δ[A023545(n+1)]+10)`
-/

namespace A207788.P3977559580860579691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (f1 (n + 1) - f1 n + 10).toNat

end

end A207788.P3977559580860579691

/-!
# A207789: Number of 7 X n 0..1 arrays avoiding 0 0 0 and 0 1 1 horizontally and 0 0 0 and 1 0 1 vertically.

The programs for A207789, there is no canonical definition to state claims against.
-/

/-! ## A207789.P10395577897847242055

`A207785(A000124(n+6)+6)`
-/

namespace A207789.P10395577897847242055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000124 (n + 6) + 6).toNat

end

end A207789.P10395577897847242055

/-! ## A207789.P8942903582606454688

`A207785(A000096(n+5)+8)`
-/

namespace A207789.P8942903582606454688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000096 (n + 5) + 8).toNat

end

end A207789.P8942903582606454688

/-! ## A207789.P4915300856038991873

`A207785(A000217(n+6)+7)`
-/

namespace A207789.P4915300856038991873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A000217 (n + 6) + 7).toNat

end

end A207789.P4915300856038991873

/-! ## A207789.P15539166004930410793

`A207785(A089071(n+8)+5)`
-/

namespace A207789.P15539166004930410793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A089071 (n + 8) + 5).toNat

end

end A207789.P15539166004930410793

/-! ## A207789.P193771301295346868

`A207785(A133263(n+7)-(n+2))`
-/

namespace A207789.P193771301295346868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207785 (A133263 (n + 7) - (n + 2 : ℤ)).toNat

end

end A207789.P193771301295346868

/-!
# A207791: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A207791, there is no canonical definition to state claims against.
-/

/-! ## A207791.P7128453381951098905

`A207799((n+1)²+n²)`
-/

namespace A207791.P7128453381951098905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 ((n + 1) ^ 2 + n ^ 2)

end

end A207791.P7128453381951098905

/-!
# A207792: Number of (n+1) X 2 0..3 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A207792, there is no canonical definition to state claims against.
-/

/-! ## A207792.P16038393675174199647

`A207799(∑[n]+1)`
-/

namespace A207792.P16038393675174199647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A207792.P16038393675174199647

/-! ## A207792.P11967926172577224821

`lcm(2, A207799(A000124(n)))`
-/

namespace A207792.P11967926172577224821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207799 (A000124 n).toNat)

end

end A207792.P11967926172577224821

/-! ## A207792.P16137024291359791710

`record[A010054(n)*A207799(n+1)]`
-/

namespace A207792.P16137024291359791710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A207799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207792.P16137024291359791710

/-! ## A207792.P3127554828402894959

`record[A207799(n+1)/A022166(n)]`
-/

namespace A207792.P3127554828402894959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207799 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207792.P3127554828402894959

/-! ## A207792.P6458991973748236632

`record[A207799(n+1)/A022170(n)]`
-/

namespace A207792.P6458991973748236632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207799 (n + 1) : ℚ) / (A022170 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207792.P6458991973748236632

/-!
# A207793: Number of (n+1) X 3 0..3 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A207793, there is no canonical definition to state claims against.
-/

/-! ## A207793.P16095790837365142712

`A207799(∑[n+1]+2)`
-/

namespace A207793.P16095790837365142712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A207793.P16095790837365142712

/-! ## A207793.P13077752608147572955

`record[A010054(n)*A207799(n+2)]`
-/

namespace A207793.P13077752608147572955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A207799 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207793.P13077752608147572955

/-! ## A207793.P16902227929042575099

`record[gcd(A002262(n), A207799(n+2))]`
-/

namespace A207793.P16902227929042575099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A207799 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207793.P16902227929042575099

/-! ## A207793.P3344038564080870593

`record[A207799(A133263(val(n+1, 2)+1))]`
-/

namespace A207793.P3344038564080870593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207793.P3344038564080870593

/-! ## A207793.P8616613911166078374

`A207799(A000096(n)+3)%A207794(n+1)`
-/

namespace A207793.P8616613911166078374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207799 (A000096 n + 3).toNat) (A207794 (n + 1))

end

end A207793.P8616613911166078374

/-!
# A207794: Number of (n+1) X 4 0..3 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A207794, there is no canonical definition to state claims against.
-/

/-! ## A207794.P1252115954957229456

`A207799(∑[n+2]+4)`
-/

namespace A207794.P1252115954957229456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A207794.P1252115954957229456

/-! ## A207794.P7181216694656549547

`lcm(2, A207799(A167614(n+1)))`
-/

namespace A207794.P7181216694656549547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A207799 (A167614 (n + 1)).toNat)

end

end A207794.P7181216694656549547

/-! ## A207794.P11574196986636073044

`record[A207799(A167614(∏{e}[n+1, #]))]`
-/

namespace A207794.P11574196986636073044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (A167614 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A207794.P11574196986636073044

/-! ## A207794.P8051824208679567682

`A207799(A167614(n+1))+A069816(n)`
-/

namespace A207794.P8051824208679567682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (A167614 (n + 1)).toNat + A069816 n

end

end A207794.P8051824208679567682

/-! ## A207794.P16394276247468381220

`A207799(A167614(n+1))*A245013(n)`
-/

namespace A207794.P16394276247468381220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (A167614 (n + 1)).toNat * A245013 n

end

end A207794.P16394276247468381220

/-!
# A207795: Number of (n+1) X 5 0..3 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A207795, there is no canonical definition to state claims against.
-/

/-! ## A207795.P8994180427478444481

`A207799(A167614(n+2)+1)`
-/

namespace A207795.P8994180427478444481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (A167614 (n + 2) + 1).toNat

end

end A207795.P8994180427478444481

/-! ## A207795.P2312563317771696642

`A207799(A000096(n+2)+5)`
-/

namespace A207795.P2312563317771696642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (A000096 (n + 2) + 5).toNat

end

end A207795.P2312563317771696642

/-! ## A207795.P12061188916521865428

`A207799(A155212(n)+5)`
-/

namespace A207795.P12061188916521865428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (A155212 n + 5).toNat

end

end A207795.P12061188916521865428

/-!
# A207796: Number of (n+1) X 6 0..3 arrays with every 2 X 3 or 3 X 2 subblock having an unequal number of clockwise and counterclockwise edge increases.

The programs for A207796, there is no canonical definition to state claims against.
-/

/-! ## A207796.P8497828802927352757

`A207799(A374005(n+1))`
-/

namespace A207796.P8497828802927352757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (A374005 (n + 1)).toNat

end

end A207796.P8497828802927352757

/-! ## A207796.P17896303936356489997

`A207799(A155212(n)+13)`
-/

namespace A207796.P17896303936356489997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (A155212 n + 13).toNat

end

end A207796.P17896303936356489997

/-!
# A207797: 

The programs for A207797, there is no canonical definition to state claims against.
-/

/-! ## A207797.P16048330795477443734

`A207799(eq[5, A193592(n)])`
-/

namespace A207797.P16048330795477443734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207797.P16048330795477443734

/-!
# A207798: 

The programs for A207798, there is no canonical definition to state claims against.
-/

/-! ## A207798.P6545121159245191379

`A207799(eq[6, A193592(n)])`
-/

namespace A207798.P6545121159245191379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207799 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A207798.P6545121159245191379

