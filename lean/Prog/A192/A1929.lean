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
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
# A192900: Number of nXnXn triangular 0..4 arrays with each element equal to at least two neighbors and with new values 0..4 introduced in row major order.

The programs for A192900, there is no canonical definition to state claims against.
-/

/-! ## A192900.P1501971639576116915

`A192901(n+1)-A003987(A192889(n+1))`
-/

namespace A192900.P1501971639576116915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192901 (n + 1) - A003987 (A192889 (n + 1)).toNat

end

end A192900.P1501971639576116915

/-! ## A192900.P3320184384489210251

`A192903(n+1)-A003987(A192889(n+1))`
-/

namespace A192900.P3320184384489210251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192903 (n + 1) - A003987 (A192889 (n + 1)).toNat

end

end A192900.P3320184384489210251

/-!
# A192901: Number of nXnXn triangular 0..5 arrays with each element equal to at least two neighbors and with new values 0..5 introduced in row major order.

The programs for A192901, there is no canonical definition to state claims against.
-/

/-! ## A192901.P4323486033727644548

`A192902(A005940(n+1))`
-/

namespace A192901.P4323486033727644548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192902 (A005940 (n + 1)).toNat

end

end A192901.P4323486033727644548

/-! ## A192901.P15086864955568486794

`A192902(A024639(n+1))`
-/

namespace A192901.P15086864955568486794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192902 (A024639 (n + 1)).toNat

end

end A192901.P15086864955568486794

/-!
# A192904: Constant term in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) defined below at Comments.

The programs for A192904, the canonical program `A192904.P9627420283949321158` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192904 has offset 0).

The definition of A192904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192904.P9627420283949321158

`3*a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192904

/-- `3*a(n-1)+a(n-3)+a(n-4)` -/
def P9627420283949321158.Spec : Prop :=
  ∀ n, (P9627420283949321158.a n : ℤ) = A192904 n

theorem P9627420283949321158.correct : P9627420283949321158.Spec := by
  intro n
  simp only [A192904]

end A192904

/-! ## A192904.P8187267609485198999

`A192906(n)+A192909(n)-∑[A192906(n)]`
-/

namespace A192904.P8187267609485198999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192906 n + (A192909 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192904.P8187267609485198999

namespace A192904

/-- `A192906(n)+A192909(n)-∑[A192906(n)]` -/
def P8187267609485198999.Spec : Prop :=
  ∀ n, P8187267609485198999.a n = A192904 n

end A192904

/-! ## A192904.P9272559387352898736

`Δ[∑[A192906(n)]-A192909(n)]`
-/

namespace A192904.P9272559387352898736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192906 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A192909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192904.P9272559387352898736

namespace A192904

/-- `Δ[∑[A192906(n)]-A192909(n)]` -/
def P9272559387352898736.Spec : Prop :=
  ∀ n, P9272559387352898736.a n = A192904 n

end A192904

/-! ## A192904.P245612114247498166

`A192906(n+1)-Δ[A192909(n)]`
-/

namespace A192904.P245612114247498166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192906 (n + 1) - (f1 (n + 1) - f1 n)

end

end A192904.P245612114247498166

namespace A192904

/-- `A192906(n+1)-Δ[A192909(n)]` -/
def P245612114247498166.Spec : Prop :=
  ∀ n, P245612114247498166.a n = A192904 n

end A192904

/-! ## A192904.P5268728245801179452

`A192906(n+1)+A192906(n)-A192905(n+1)`
-/

namespace A192904.P5268728245801179452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192906 (n + 1) + (A192906 n - A192905 (n + 1))

end

end A192904.P5268728245801179452

namespace A192904

/-- `A192906(n+1)+A192906(n)-A192905(n+1)` -/
def P5268728245801179452.Spec : Prop :=
  ∀ n, P5268728245801179452.a n = A192904 n

end A192904

/-! ## A192904.P6155049539136599364

`Δ[Δ[A192909(n+1)-A192905(n+1)]]`
-/

namespace A192904.P6155049539136599364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192909 (n + 1) - A192905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192904.P6155049539136599364

namespace A192904

/-- `Δ[Δ[A192909(n+1)-A192905(n+1)]]` -/
def P6155049539136599364.Spec : Prop :=
  ∀ n, P6155049539136599364.a n = A192904 n

end A192904

/-!
# A192905: Coefficient of x in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) defined below at Comments.

The programs for A192905, the canonical program `A192905.P16332483063725436395` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192905 has offset 0).

The definition of A192905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192905.P16332483063725436395

`3*a(n-1)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192905

/-- `3*a(n-1)+a(n-3)+a(n-4)` -/
def P16332483063725436395.Spec : Prop :=
  ∀ n, (P16332483063725436395.a n : ℤ) = A192905 n

theorem P16332483063725436395.correct : P16332483063725436395.Spec := by
  intro n
  simp only [A192905]

end A192905

/-! ## A192905.P6792147467890682434

`Δ[A192907(A289207(n+1))]`
-/

namespace A192905.P6792147467890682434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192905.P6792147467890682434

namespace A192905

/-- `Δ[A192907(A289207(n+1))]` -/
def P6792147467890682434.Spec : Prop :=
  ∀ n, P6792147467890682434.a n = A192905 n

end A192905

/-! ## A192905.P9450506563588905459

`Δ[A192907(A289207(2*n)/2)]`
-/

namespace A192905.P9450506563588905459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192905.P9450506563588905459

namespace A192905

/-- `Δ[A192907(A289207(2*n)/2)]` -/
def P9450506563588905459.Spec : Prop :=
  ∀ n, P9450506563588905459.a n = A192905 n

end A192905

/-! ## A192905.P10666109969948608071

`A192907(n)-A192907(A289207(n+1))`
-/

namespace A192905.P10666109969948608071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 n - A192907 (A289207 (n + 1)).toNat

end

end A192905.P10666109969948608071

namespace A192905

/-- `A192907(n)-A192907(A289207(n+1))` -/
def P10666109969948608071.Spec : Prop :=
  ∀ n, P10666109969948608071.a n = A192905 n

end A192905

/-! ## A192905.P1496452703079944698

`A192907(n)+A192907(n)-A192904(n+1)`
-/

namespace A192905.P1496452703079944698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 n + (A192907 n - A192904 (n + 1))

end

end A192905.P1496452703079944698

namespace A192905

/-- `A192907(n)+A192907(n)-A192904(n+1)` -/
def P1496452703079944698.Spec : Prop :=
  ∀ n, P1496452703079944698.a n = A192905 n

end A192905

/-! ## A192905.P2106714143025765629

`Δ[A192904(n+1)-A192907(n)]`
-/

namespace A192905.P2106714143025765629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192904 (n + 1) - A192907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192905.P2106714143025765629

namespace A192905

/-- `Δ[A192904(n+1)-A192907(n)]` -/
def P2106714143025765629.Spec : Prop :=
  ∀ n, P2106714143025765629.a n = A192905 n

end A192905

/-! ## A192905.P4548129631652834606

`A192907(n+1)-Δ[A192910(n)]`
-/

namespace A192905.P4548129631652834606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 (n + 1) - (f1 (n + 1) - f1 n)

end

end A192905.P4548129631652834606

namespace A192905

/-- `A192907(n+1)-Δ[A192910(n)]` -/
def P4548129631652834606.Spec : Prop :=
  ∀ n, P4548129631652834606.a n = A192905 n

end A192905

/-! ## A192905.P7380342512330266594

`A192907(n)-Δ[A192910(n)-A192907(n)]`
-/

namespace A192905.P7380342512330266594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192910 n - A192907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 n - (f1 (n + 1) - f1 n)

end

end A192905.P7380342512330266594

namespace A192905

/-- `A192907(n)-Δ[A192910(n)-A192907(n)]` -/
def P7380342512330266594.Spec : Prop :=
  ∀ n, P7380342512330266594.a n = A192905 n

end A192905

/-! ## A192905.P11967213132264742242

`Δ[Δ[A192910(n)-A192907(n)]]`
-/

namespace A192905.P11967213132264742242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192910 n - A192907 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192905.P11967213132264742242

namespace A192905

/-- `Δ[Δ[A192910(n)-A192907(n)]]` -/
def P11967213132264742242.Spec : Prop :=
  ∀ n, P11967213132264742242.a n = A192905 n

end A192905

/-! ## A192905.P13700348816512957804

`A208481(n+2)%A208481(n+1)`
-/

namespace A192905.P13700348816512957804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208481 (n + 2)) (A208481 (n + 1))

end

end A192905.P13700348816512957804

namespace A192905

/-- `A208481(n+2)%A208481(n+1)` -/
def P13700348816512957804.Spec : Prop :=
  ∀ n, P13700348816512957804.a n = A192905 n

end A192905

/-!
# A192906: Constant term in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) defined below at Comments.

The programs for A192906, the canonical program `A192906.P12940654415230282139` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192906 has offset 0).

The definition of A192906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192906.P12940654415230282139

`3*a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192906

/-- `3*a(n-1)+a(n-3)+a(n-4)` -/
def P12940654415230282139.Spec : Prop :=
  ∀ n, (P12940654415230282139.a n : ℤ) = A192906 n

theorem P12940654415230282139.correct : P12940654415230282139.Spec := by
  intro n
  simp only [A192906]

end A192906

/-! ## A192906.P16410364058802987601

`∑[A192904(n)]`
-/

namespace A192906.P16410364058802987601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192906.P16410364058802987601

namespace A192906

/-- `∑[A192904(n)]` -/
def P16410364058802987601.Spec : Prop :=
  ∀ n, P16410364058802987601.a n = A192906 n

end A192906

/-! ## A192906.P10537110282942778248

`A192905(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A192906.P10537110282942778248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A192905 n - a (n - 2)

end

end A192906.P10537110282942778248

namespace A192906

/-- `A192905(n)-a(n-2)` -/
def P10537110282942778248.Spec : Prop :=
  ∀ n, P10537110282942778248.a n = A192906 n

end A192906

/-! ## A192906.P1636888322107475684

`A208481(n)-A192907(n)`
-/

namespace A192906.P1636888322107475684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208481 n - A192907 n

end

end A192906.P1636888322107475684

namespace A192906

/-- `A208481(n)-A192907(n)` -/
def P1636888322107475684.Spec : Prop :=
  ∀ n, P1636888322107475684.a n = A192906 n

end A192906

/-! ## A192906.P16908789558190434966

`Δ[A192907(n)-A192909(n)]`
-/

namespace A192906.P16908789558190434966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 n - A192909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192906.P16908789558190434966

namespace A192906

/-- `Δ[A192907(n)-A192909(n)]` -/
def P16908789558190434966.Spec : Prop :=
  ∀ n, P16908789558190434966.a n = A192906 n

end A192906

/-! ## A192906.P687445158800284839

`Δ[A192909(n)-A192904(n)]`
-/

namespace A192906.P687445158800284839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192909 n - A192904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192906.P687445158800284839

namespace A192906

/-- `Δ[A192909(n)-A192904(n)]` -/
def P687445158800284839.Spec : Prop :=
  ∀ n, P687445158800284839.a n = A192906 n

end A192906

/-! ## A192906.P16209413992591040420

`A192905(n+1)-Δ[A192909(n)]`
-/

namespace A192906.P16209413992591040420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192905 (n + 1) - (f1 (n + 1) - f1 n)

end

end A192906.P16209413992591040420

namespace A192906

/-- `A192905(n+1)-Δ[A192909(n)]` -/
def P16209413992591040420.Spec : Prop :=
  ∀ n, P16209413992591040420.a n = A192906 n

end A192906

/-! ## A192906.P4343020049680011531

`Δ[(A192907(n)-A192904(n))/2]`
-/

namespace A192906.P4343020049680011531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192907 n - A192904 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192906.P4343020049680011531

namespace A192906

/-- `Δ[(A192907(n)-A192904(n))/2]` -/
def P4343020049680011531.Spec : Prop :=
  ∀ n, P4343020049680011531.a n = (A192906 n : ℚ)

end A192906

/-!
# A192907: Coefficient of x in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) defined below at Comments.

The programs for A192907, the canonical program `A192907.P7254948515185080444` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192907 has offset 0).

The definition of A192907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192907.P7254948515185080444

`3*a(n-1)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192907

/-- `3*a(n-1)+a(n-3)+a(n-4)` -/
def P7254948515185080444.Spec : Prop :=
  ∀ n, (P7254948515185080444.a n : ℤ) = A192907 n

theorem P7254948515185080444.correct : P7254948515185080444.Spec := by
  intro n
  simp only [A192907]

end A192907

/-! ## A192907.P6050380803751136080

`∑[A192905(n)]`
-/

namespace A192907.P6050380803751136080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192907.P6050380803751136080

namespace A192907

/-- `∑[A192905(n)]` -/
def P6050380803751136080.Spec : Prop :=
  ∀ n, P6050380803751136080.a n = A192907 n

end A192907

/-! ## A192907.P9621782792637869265

`A192904(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A192907.P9621782792637869265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A192904 (n + 1) - a (n - 1)

end

end A192907.P9621782792637869265

namespace A192907

/-- `A192904(n+1)-a(n-1)` -/
def P9621782792637869265.Spec : Prop :=
  ∀ n, P9621782792637869265.a n = A192907 n

end A192907

/-! ## A192907.P8811353448049060300

`A192905(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A192907.P8811353448049060300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A192905 n + a (A023443 n).toNat

end

end A192907.P8811353448049060300

namespace A192907

/-- `A192905(n)+a(A023443(n))` -/
def P8811353448049060300.Spec : Prop :=
  ∀ n, P8811353448049060300.a n = A192907 n

end A192907

/-! ## A192907.P1871369994236326344

`A208481(n)-A192906(n)`
-/

namespace A192907.P1871369994236326344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208481 n - A192906 n

end

end A192907.P1871369994236326344

namespace A192907

/-- `A208481(n)-A192906(n)` -/
def P1871369994236326344.Spec : Prop :=
  ∀ n, P1871369994236326344.a n = A192907 n

end A192907

/-! ## A192907.P2203673897915818383

`Δ[A192910(n)-A192905(n)]`
-/

namespace A192907.P2203673897915818383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192910 n - A192905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192907.P2203673897915818383

namespace A192907

/-- `Δ[A192910(n)-A192905(n)]` -/
def P2203673897915818383.Spec : Prop :=
  ∀ n, P2203673897915818383.a n = A192907 n

end A192907

/-!
# A192908: Constant term in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) defined below at Comments.

The programs for A192908, the canonical program `A192908.P4007311795250061469` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192908 has offset 0).

The definition of A192908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192908.P4007311795250061469

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192908

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P4007311795250061469.Spec : Prop :=
  ∀ n, P4007311795250061469.a n = A192908 n

theorem P4007311795250061469.correct : P4007311795250061469.Spec := by
  intro n
  simp only [A192908]

end A192908

/-! ## A192908.P7620426899467769235

`3*a(n-1)-(a(n-2)+1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A192908.P7620426899467769235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  3 * a (n - 1) - (a (n - 2) + 1)

end

end A192908.P7620426899467769235

namespace A192908

/-- `3*a(n-1)-(a(n-2)+1)` -/
def P7620426899467769235.Spec : Prop :=
  ∀ n, P7620426899467769235.a n = A192908 n

end A192908

/-! ## A192908.P6111738867828661619

`3*a(n-1)-1-a(n-2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A192908.P6111738867828661619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  3 * a (n - 1) - 1 - a (n - 2)

end

end A192908.P6111738867828661619

namespace A192908

/-- `3*a(n-1)-1-a(n-2)` -/
def P6111738867828661619.Spec : Prop :=
  ∀ n, P6111738867828661619.a n = A192908 n

end A192908

/-! ## A192908.P14411990409622699098

`2*Δ[A293064(n)]+1`
-/

namespace A192908.P14411990409622699098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) + 1

end

end A192908.P14411990409622699098

namespace A192908

/-- `2*Δ[A293064(n)]+1` -/
def P14411990409622699098.Spec : Prop :=
  ∀ n, P14411990409622699098.a n = A192908 n

end A192908

/-! ## A192908.P5112951078351029377

`∑[A006355(comp[2*n+3])]`
-/

namespace A192908.P5112951078351029377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192908.P5112951078351029377

namespace A192908

/-- `∑[A006355(comp[2*n+3])]` -/
def P5112951078351029377.Spec : Prop :=
  ∀ n, P5112951078351029377.a n = A192908 n

end A192908

/-! ## A192908.P7411050352030484114

`A066983(round(acot(n)+n)+n)`
-/

namespace A192908.P7411050352030484114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + (n : ℤ)).toNat

end

end A192908.P7411050352030484114

namespace A192908

/-- `A066983(round(acot(n)+n)+n)` -/
def P7411050352030484114.Spec : Prop :=
  ∀ n, P7411050352030484114.a n = A192908 n

end A192908

/-! ## A192908.P5160823526596902319

`A118658(abs(1-2*n))+1`
-/

namespace A192908.P5160823526596902319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 |1 - (2 * n : ℤ)|.toNat + 1

end

end A192908.P5160823526596902319

namespace A192908

/-- `A118658(abs(1-2*n))+1` -/
def P5160823526596902319.Spec : Prop :=
  ∀ n, P5160823526596902319.a n = A192908 n

end A192908

/-! ## A192908.P7344744100713401441

`A052995(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A192908.P7344744100713401441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052995 (n - 1) + a (n - 1)

end

end A192908.P7344744100713401441

namespace A192908

/-- `A052995(n-1)+a(n-1)` -/
def P7344744100713401441.Spec : Prop :=
  ∀ n, P7344744100713401441.a n = A192908 n

end A192908

/-! ## A192908.P16471406690597557234

`A055819(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A192908.P16471406690597557234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A055819 (n - 1) + a (n - 1)

end

end A192908.P16471406690597557234

namespace A192908

/-- `A055819(n-1)+a(n-1)` -/
def P16471406690597557234.Spec : Prop :=
  ∀ n, P16471406690597557234.a n = A192908 n

end A192908

/-! ## A192908.P1201087463658587845

`2*A000045(abs(1-n)+n-1)+1`
-/

namespace A192908.P1201087463658587845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (|1 - (n : ℤ)| + ((n : ℤ) - 1)).toNat + 1

end

end A192908.P1201087463658587845

namespace A192908

/-- `2*A000045(abs(1-n)+n-1)+1` -/
def P1201087463658587845.Spec : Prop :=
  ∀ n, P1201087463658587845.a n = A192908 n

end A192908

/-! ## A192908.P12541720217741783627

`A066983(A004277(n))`
-/

namespace A192908.P12541720217741783627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (A004277 n).toNat

end

end A192908.P12541720217741783627

namespace A192908

/-- `A066983(A004277(n))` -/
def P12541720217741783627.Spec : Prop :=
  ∀ n, P12541720217741783627.a n = A192908 n

end A192908

/-! ## A192908.P9848441996930116979

`A066983(A004275(n+1))`
-/

namespace A192908.P9848441996930116979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (A004275 (n + 1)).toNat

end

end A192908.P9848441996930116979

namespace A192908

/-- `A066983(A004275(n+1))` -/
def P9848441996930116979.Spec : Prop :=
  ∀ n, P9848441996930116979.a n = A192908 n

end A192908

/-! ## A192908.P6398917470168212848

`A066983(A092535(n+1))`
-/

namespace A192908.P6398917470168212848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (A092535 (n + 1)).toNat

end

end A192908.P6398917470168212848

namespace A192908

/-- `A066983(A092535(n+1))` -/
def P6398917470168212848.Spec : Prop :=
  ∀ n, P6398917470168212848.a n = A192908 n

end A192908

/-! ## A192908.P2539501848339203163

`A066983(A004278(n+2))`
-/

namespace A192908.P2539501848339203163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (A004278 (n + 2)).toNat

end

end A192908.P2539501848339203163

namespace A192908

/-- `A066983(A004278(n+2))` -/
def P2539501848339203163.Spec : Prop :=
  ∀ n, P2539501848339203163.a n = A192908 n

end A192908

/-! ## A192908.P14976075996729821485

`A066983(A058992(n+2))`
-/

namespace A192908.P14976075996729821485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (A058992 (n + 2)).toNat

end

end A192908.P14976075996729821485

namespace A192908

/-- `A066983(A058992(n+2))` -/
def P14976075996729821485.Spec : Prop :=
  ∀ n, P14976075996729821485.a n = A192908 n

end A192908

/-! ## A192908.P11291063928133616536

`A066983(A300576(n+2))`
-/

namespace A192908.P11291063928133616536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (A300576 (n + 2)).toNat

end

end A192908.P11291063928133616536

namespace A192908

/-- `A066983(A300576(n+2))` -/
def P11291063928133616536.Spec : Prop :=
  ∀ n, P11291063928133616536.a n = A192908 n

end A192908

/-! ## A192908.P10598010257664778865

`A066983(A028310(2*n))`
-/

namespace A192908.P10598010257664778865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066983 (A028310 (2 * n)).toNat

end

end A192908.P10598010257664778865

namespace A192908

/-- `A066983(A028310(2*n))` -/
def P10598010257664778865.Spec : Prop :=
  ∀ n, P10598010257664778865.a n = A192908 n

end A192908

/-!
# A192909: Constant term in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) defined below at Comments.

The programs for A192909, the canonical program `A192909.P17709941719691582096` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192909 has offset 0).

The definition of A192909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192909.P17709941719691582096

`4*a(n-1)-3*a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9, a(4)=27`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192909

/-- `4*a(n-1)-3*a(n-2)+a(n-3)-a(n-5)` -/
def P17709941719691582096.Spec : Prop :=
  ∀ n, P17709941719691582096.a n = A192909 n

theorem P17709941719691582096.correct : P17709941719691582096.Spec := by
  intro n
  simp only [A192909]

end A192909

/-! ## A192909.P9506670560435373076

`A192906(n)+∑[A192905(n)%A192906(n)]`
-/

namespace A192909.P9506670560435373076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192905 n) (A192906 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192906 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192909.P9506670560435373076

namespace A192909

/-- `A192906(n)+∑[A192905(n)%A192906(n)]` -/
def P9506670560435373076.Spec : Prop :=
  ∀ n, P9506670560435373076.a n = A192909 n

end A192909

/-! ## A192909.P6296348747684119845

`A005206(A192910(n)+1)`
-/

namespace A192909.P6296348747684119845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A192910 n + 1).toNat

end

end A192909.P6296348747684119845

namespace A192909

/-- `A005206(A192910(n)+1)` -/
def P6296348747684119845.Spec : Prop :=
  ∀ n, P6296348747684119845.a n = A192909 n

end A192909

/-! ## A192909.P9621679782851729689

`or(A005206(A192910(n)), A328575(n))`
-/

namespace A192909.P9621679782851729689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005206 (A192910 n).toNat) (A328575 n)

end

end A192909.P9621679782851729689

namespace A192909

/-- `or(A005206(A192910(n)), A328575(n))` -/
def P9621679782851729689.Spec : Prop :=
  ∀ n, P9621679782851729689.a n = A192909 n

end A192909

/-! ## A192909.P6944613571739617615

`A001057(A192907(n)+A192904(n))`
-/

namespace A192909.P6944613571739617615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A192907 n + A192904 n).toNat

end

end A192909.P6944613571739617615

namespace A192909

/-- `A001057(A192907(n)+A192904(n))` -/
def P6944613571739617615.Spec : Prop :=
  ∀ n, P6944613571739617615.a n = A192909 n

end A192909

/-!
# A192910: Coefficient of x in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) defined below at Comments.

The programs for A192910, the canonical program `A192910.P2408440867341000545` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192910 has offset 0).

The definition of A192910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192910.P2408440867341000545

`4*a(n-1)-3*a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=13, a(4)=42`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192910

/-- `4*a(n-1)-3*a(n-2)+a(n-3)-a(n-5)` -/
def P2408440867341000545.Spec : Prop :=
  ∀ n, P2408440867341000545.a n = A192910 n

theorem P2408440867341000545.correct : P2408440867341000545.Spec := by
  intro n
  simp only [A192910]

end A192910

/-! ## A192910.P7733836585277327677

`A192907(n)+∑[A192907(A289207(n))]`
-/

namespace A192910.P7733836585277327677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192910.P7733836585277327677

namespace A192910

/-- `A192907(n)+∑[A192907(A289207(n))]` -/
def P7733836585277327677.Spec : Prop :=
  ∀ n, P7733836585277327677.a n = A192910 n

end A192910

/-! ## A192910.P9273710953316345788

`∑[A192907(n+1)]-Δ[A208481(n)]`
-/

namespace A192910.P9273710953316345788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A192910.P9273710953316345788

namespace A192910

/-- `∑[A192907(n+1)]-Δ[A208481(n)]` -/
def P9273710953316345788.Spec : Prop :=
  ∀ n, P9273710953316345788.a n = A192910 n

end A192910

/-! ## A192910.P8884112411102772801

`A275857(n)-A001057(A192909(n))`
-/

namespace A192910.P8884112411102772801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275857 n - A001057 (A192909 n).toNat

end

end A192910.P8884112411102772801

namespace A192910

/-- `A275857(n)-A001057(A192909(n))` -/
def P8884112411102772801.Spec : Prop :=
  ∀ n, P8884112411102772801.a n = A192910 n

end A192910

/-! ## A192910.P16375547860708893947

`A187329(A275857(n))`
-/

namespace A192910.P16375547860708893947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 (A275857 n).toNat

end

end A192910.P16375547860708893947

namespace A192910

/-- `A187329(A275857(n))` -/
def P16375547860708893947.Spec : Prop :=
  ∀ n, P16375547860708893947.a n = A192910 n

end A192910

/-!
# A192911: Constant term in the reduction by (x^3 -> x + 1) of the polynomial F(n+1)*x^n, where F(n)=A000045 (Fibonacci sequence).

The programs for A192911, the canonical program `A192911.P3795806156725299792` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192911 has offset 0).

The definition of A192911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192911.P3795806156725299792

`(A081172(n)-A001590(n))*A000045(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192911

/-- `(A081172(n)-A001590(n))*A000045(n+1)` -/
def P3795806156725299792.Spec : Prop :=
  ∀ n, P3795806156725299792.a n = A192911 n

theorem P3795806156725299792.correct : P3795806156725299792.Spec := by
  intro n
  simp only [A192911]

end A192911

/-! ## A192911.P15402028643550415501

`(A141036(n)-A000213(n))*A000045(n+1)`
-/

namespace A192911.P15402028643550415501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141036 n - A000213 n) * A000045 (n + 1)

end

end A192911.P15402028643550415501

namespace A192911

/-- `(A141036(n)-A000213(n))*A000045(n+1)` -/
def P15402028643550415501.Spec : Prop :=
  ∀ n, P15402028643550415501.a n = A192911 n

end A192911

/-! ## A192911.P11801128781015798168

`(A000213(n)-A000073(n+1))*A000045(n+1)`
-/

namespace A192911.P11801128781015798168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000213 n - A000073 (n + 1)) * A000045 (n + 1)

end

end A192911.P11801128781015798168

namespace A192911

/-- `(A000213(n)-A000073(n+1))*A000045(n+1)` -/
def P11801128781015798168.Spec : Prop :=
  ∀ n, P11801128781015798168.a n = A192911 n

end A192911

/-! ## A192911.P3056110076897055480

`(A001590(n+1)-A000073(n))*A000045(n+1)`
-/

namespace A192911.P3056110076897055480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001590 (n + 1) - A000073 n) * A000045 (n + 1)

end

end A192911.P3056110076897055480

namespace A192911

/-- `(A001590(n+1)-A000073(n))*A000045(n+1)` -/
def P3056110076897055480.Spec : Prop :=
  ∀ n, P3056110076897055480.a n = A192911 n

end A192911

/-! ## A192911.P2150438076434233282

`(A020992(n+1)-A000213(n+1))*A000045(n+1)`
-/

namespace A192911.P2150438076434233282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020992 (n + 1) - A000213 (n + 1)) * A000045 (n + 1)

end

end A192911.P2150438076434233282

namespace A192911

/-- `(A020992(n+1)-A000213(n+1))*A000045(n+1)` -/
def P2150438076434233282.Spec : Prop :=
  ∀ n, P2150438076434233282.a n = A192911 n

end A192911

/-!
# A192912: Coefficient of x in the reduction by (x^3 -> x + 1) of the polynomial F(n+1)*x^n, where F(n)=A000045 (Fibonacci sequence).

The programs for A192912, the canonical program `A192912.P15720691915727451411` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192912 has offset 0).

The definition of A192912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192912.P17201404206372758090

`∑[A212804(n)]*A001590(n)`
-/

namespace A192912.P17201404206372758090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001590 n

end

end A192912.P17201404206372758090

namespace A192912

/-- `∑[A212804(n)]*A001590(n)` -/
def P17201404206372758090.Spec : Prop :=
  ∀ n, P17201404206372758090.a n = A192912 n

end A192912

/-! ## A192912.P15720691915727451411

`A000045(n+1)*A001590(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192912

/-- `A000045(n+1)*A001590(n)` -/
def P15720691915727451411.Spec : Prop :=
  ∀ n, P15720691915727451411.a n = A192912 n

theorem P15720691915727451411.correct : P15720691915727451411.Spec := by
  intro n
  simp only [A192912]

end A192912

/-! ## A192912.P2757486610802689087

`A001590(n)*A212804(n+2)`
-/

namespace A192912.P2757486610802689087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n * A212804 (n + 2)

end

end A192912.P2757486610802689087

namespace A192912

/-- `A001590(n)*A212804(n+2)` -/
def P2757486610802689087.Spec : Prop :=
  ∀ n, P2757486610802689087.a n = A192912 n

end A192912

/-! ## A192912.P1045443685798719900

`A001590(n)*A327035(3*n)`
-/

namespace A192912.P1045443685798719900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n * A327035 (3 * n)

end

end A192912.P1045443685798719900

namespace A192912

/-- `A001590(n)*A327035(3*n)` -/
def P1045443685798719900.Spec : Prop :=
  ∀ n, P1045443685798719900.a n = A192912 n

end A192912

/-! ## A192912.P11447960057995005558

`∑[A212804(n)]*Δ[A000073(n)]`
-/

namespace A192912.P11447960057995005558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A192912.P11447960057995005558

namespace A192912

/-- `∑[A212804(n)]*Δ[A000073(n)]` -/
def P11447960057995005558.Spec : Prop :=
  ∀ n, P11447960057995005558.a n = A192912 n

end A192912

/-! ## A192912.P13026727138094587875

`A000045(n+1)*Δ[A000073(n)]`
-/

namespace A192912.P13026727138094587875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A192912.P13026727138094587875

namespace A192912

/-- `A000045(n+1)*Δ[A000073(n)]` -/
def P13026727138094587875.Spec : Prop :=
  ∀ n, P13026727138094587875.a n = A192912 n

end A192912

/-! ## A192912.P12277918594737744743

`A212804(n+2)*Δ[A000073(n)]`
-/

namespace A192912.P12277918594737744743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) * (f1 (n + 1) - f1 n)

end

end A192912.P12277918594737744743

namespace A192912

/-- `A212804(n+2)*Δ[A000073(n)]` -/
def P12277918594737744743.Spec : Prop :=
  ∀ n, P12277918594737744743.a n = A192912 n

end A192912

/-! ## A192912.P11973685234844602131

`(A000071(n+1)+1)*A001590(n)`
-/

namespace A192912.P11973685234844602131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A001590 n

end

end A192912.P11973685234844602131

namespace A192912

/-- `(A000071(n+1)+1)*A001590(n)` -/
def P11973685234844602131.Spec : Prop :=
  ∀ n, P11973685234844602131.a n = A192912 n

end A192912

/-! ## A192912.P5046186195742846720

`A001590(n)*A053602(2*(n+1))`
-/

namespace A192912.P5046186195742846720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n * A053602 (2 * (n + 1))

end

end A192912.P5046186195742846720

namespace A192912

/-- `A001590(n)*A053602(2*(n+1))` -/
def P5046186195742846720.Spec : Prop :=
  ∀ n, P5046186195742846720.a n = A192912 n

end A192912

/-! ## A192912.P6592395204452703983

`A001590(n)*A123231(2*n+1)`
-/

namespace A192912.P6592395204452703983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n * A123231 (2 * n + 1)

end

end A192912.P6592395204452703983

namespace A192912

/-- `A001590(n)*A123231(2*n+1)` -/
def P6592395204452703983.Spec : Prop :=
  ∀ n, P6592395204452703983.a n = A192912 n

end A192912

/-! ## A192912.P17127328541259100927

`A001590(n)*A272912(2*n+1)`
-/

namespace A192912.P17127328541259100927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n * A272912 (2 * n + 1)

end

end A192912.P17127328541259100927

namespace A192912

/-- `A001590(n)*A272912(2*n+1)` -/
def P17127328541259100927.Spec : Prop :=
  ∀ n, P17127328541259100927.a n = A192912 n

end A192912

/-! ## A192912.P17920210692202006923

`(A000071(n+1)+1)*Δ[A000073(n)]`
-/

namespace A192912.P17920210692202006923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * (f1 (n + 1) - f1 n)

end

end A192912.P17920210692202006923

namespace A192912

/-- `(A000071(n+1)+1)*Δ[A000073(n)]` -/
def P17920210692202006923.Spec : Prop :=
  ∀ n, P17920210692202006923.a n = A192912 n

end A192912

/-! ## A192912.P3698252323028052403

`(A275778(n)-A000213(n))*A000045(n+1)`
-/

namespace A192912.P3698252323028052403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A275778 n - A000213 n) * A000045 (n + 1)

end

end A192912.P3698252323028052403

namespace A192912

/-- `(A275778(n)-A000213(n))*A000045(n+1)` -/
def P3698252323028052403.Spec : Prop :=
  ∀ n, P3698252323028052403.a n = A192912 n

end A192912

/-! ## A192912.P4258384858974505060

`(A000073(n+1)-A000073(n))*A000045(n+1)`
-/

namespace A192912.P4258384858974505060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000073 (n + 1) - A000073 n) * A000045 (n + 1)

end

end A192912.P4258384858974505060

namespace A192912

/-- `(A000073(n+1)-A000073(n))*A000045(n+1)` -/
def P4258384858974505060.Spec : Prop :=
  ∀ n, P4258384858974505060.a n = A192912 n

end A192912

/-! ## A192912.P17818728963254901296

`(A338192(n+1)-A000073(n+1))*A001590(n)`
-/

namespace A192912.P17818728963254901296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338192 (n + 1) - A000073 (n + 1)) * A001590 n

end

end A192912.P17818728963254901296

namespace A192912

/-- `(A338192(n+1)-A000073(n+1))*A001590(n)` -/
def P17818728963254901296.Spec : Prop :=
  ∀ n, P17818728963254901296.a n = A192912 n

end A192912

/-! ## A192912.P6558053880835307476

`(A100683(n+1)-A020992(n+1))*A000045(n+1)`
-/

namespace A192912.P6558053880835307476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100683 (n + 1) - A020992 (n + 1)) * A000045 (n + 1)

end

end A192912.P6558053880835307476

namespace A192912

/-- `(A100683(n+1)-A020992(n+1))*A000045(n+1)` -/
def P6558053880835307476.Spec : Prop :=
  ∀ n, P6558053880835307476.a n = A192912 n

end A192912

/-!
# A192913: Coefficient of x^2 in the reduction by (x^3 -> x + 1) of the polynomial F(n+1)*x^n, where F(n)=A000045 (Fibonacci sequence).

The programs for A192913, the canonical program `A192913.P624377410006801110` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192913 has offset 0).

The definition of A192913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192913.P4249374327032547038

`∑[A212804(n)]*A000073(n)`
-/

namespace A192913.P4249374327032547038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000073 n

end

end A192913.P4249374327032547038

namespace A192913

/-- `∑[A212804(n)]*A000073(n)` -/
def P4249374327032547038.Spec : Prop :=
  ∀ n, P4249374327032547038.a n = A192913 n

end A192913

/-! ## A192913.P624377410006801110

`record[A053602(n)]*A000073(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192913

/-- `record[A053602(n)]*A000073(n)` -/
def P624377410006801110.Spec : Prop :=
  ∀ n, P624377410006801110.a n = A192913 n

theorem P624377410006801110.correct : P624377410006801110.Spec := by
  intro n
  simp only [A192913]

end A192913

/-! ## A192913.P15660131167853566085

`A000045(n+1)*A000073(n)`
-/

namespace A192913.P15660131167853566085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000073 n

end

end A192913.P15660131167853566085

namespace A192913

/-- `A000045(n+1)*A000073(n)` -/
def P15660131167853566085.Spec : Prop :=
  ∀ n, P15660131167853566085.a n = A192913 n

end A192913

/-! ## A192913.P12846872622604478968

`A000073(n)*A212804(n+2)`
-/

namespace A192913.P12846872622604478968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n * A212804 (n + 2)

end

end A192913.P12846872622604478968

namespace A192913

/-- `A000073(n)*A212804(n+2)` -/
def P12846872622604478968.Spec : Prop :=
  ∀ n, P12846872622604478968.a n = A192913 n

end A192913

/-! ## A192913.P3059187114965027138

`A000073(n)*A324969(n+2)`
-/

namespace A192913.P3059187114965027138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n * A324969 (n + 2)

end

end A192913.P3059187114965027138

namespace A192913

/-- `A000073(n)*A324969(n+2)` -/
def P3059187114965027138.Spec : Prop :=
  ∀ n, P3059187114965027138.a n = A192913 n

end A192913

/-! ## A192913.P4968537346193084544

`sqrt(Δ[A001654(n)])*A000073(n)`
-/

namespace A192913.P4968537346193084544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ) * (A000073 n : ℝ)

end

end A192913.P4968537346193084544

namespace A192913

/-- `sqrt(Δ[A001654(n)])*A000073(n)` -/
def P4968537346193084544.Spec : Prop :=
  ∀ n, P4968537346193084544.a n = (A192913 n : ℝ)

end A192913

/-! ## A192913.P14844091910677903414

`abs(A236191(n+1))*A000073(n)`
-/

namespace A192913.P14844091910677903414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (n + 1)| * A000073 n

end

end A192913.P14844091910677903414

namespace A192913

/-- `abs(A236191(n+1))*A000073(n)` -/
def P14844091910677903414.Spec : Prop :=
  ∀ n, P14844091910677903414.a n = A192913 n

end A192913

/-! ## A192913.P3418723062469713057

`sqrt(A007598(n+1))*A000073(n)`
-/

namespace A192913.P3418723062469713057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 (n + 1) : ℝ) * (A000073 n : ℝ)

end

end A192913.P3418723062469713057

namespace A192913

/-- `sqrt(A007598(n+1))*A000073(n)` -/
def P3418723062469713057.Spec : Prop :=
  ∀ n, P3418723062469713057.a n = (A192913 n : ℝ)

end A192913

/-! ## A192913.P16923181922859142318

`A000045(n+1)*Δ[A192804(n)]`
-/

namespace A192913.P16923181922859142318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A192913.P16923181922859142318

namespace A192913

/-- `A000045(n+1)*Δ[A192804(n)]` -/
def P16923181922859142318.Spec : Prop :=
  ∀ n, P16923181922859142318.a n = A192913 n

end A192913

/-! ## A192913.P14764041592029193899

`Δ[A000071(n+2)]*A000073(n)`
-/

namespace A192913.P14764041592029193899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000073 n

end

end A192913.P14764041592029193899

namespace A192913

/-- `Δ[A000071(n+2)]*A000073(n)` -/
def P14764041592029193899.Spec : Prop :=
  ∀ n, P14764041592029193899.a n = A192913 n

end A192913

/-! ## A192913.P13045345415553310511

`A000073(n)/2*record[A006355(n)]`
-/

namespace A192913.P13045345415553310511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000073 n : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A192913.P13045345415553310511

namespace A192913

/-- `A000073(n)/2*record[A006355(n)]` -/
def P13045345415553310511.Spec : Prop :=
  ∀ n, P13045345415553310511.a n = (A192913 n : ℚ)

end A192913

/-! ## A192913.P1031748709197698197

`(A000071(n+1)+1)*A000073(n)`
-/

namespace A192913.P1031748709197698197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A000073 n

end

end A192913.P1031748709197698197

namespace A192913

/-- `(A000071(n+1)+1)*A000073(n)` -/
def P1031748709197698197.Spec : Prop :=
  ∀ n, P1031748709197698197.a n = A192913 n

end A192913

/-! ## A192913.P7804908977538777712

`A000073(n)*A123231(2*n+1)`
-/

namespace A192913.P7804908977538777712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n * A123231 (2 * n + 1)

end

end A192913.P7804908977538777712

namespace A192913

/-- `A000073(n)*A123231(2*n+1)` -/
def P7804908977538777712.Spec : Prop :=
  ∀ n, P7804908977538777712.a n = A192913 n

end A192913

/-! ## A192913.P17884078222471793281

`A128588(n+1)/2*A000073(n)`
-/

namespace A192913.P17884078222471793281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128588 (n + 1) : ℚ) / 2 * (A000073 n : ℚ)

end

end A192913.P17884078222471793281

namespace A192913

/-- `A128588(n+1)/2*A000073(n)` -/
def P17884078222471793281.Spec : Prop :=
  ∀ n, P17884078222471793281.a n = (A192913 n : ℚ)

end A192913

/-! ## A192913.P705980888979636581

`A000045(n+1)*Δ[A000213(n)/2]`
-/

namespace A192913.P705980888979636581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) * (f1 (n + 1) - f1 n)

end

end A192913.P705980888979636581

namespace A192913

/-- `A000045(n+1)*Δ[A000213(n)/2]` -/
def P705980888979636581.Spec : Prop :=
  ∀ n, P705980888979636581.a n = (A192913 n : ℚ)

end A192913

/-! ## A192913.P12772493520138024275

`(A074662(n)-A056594(n))*A000073(n)`
-/

namespace A192913.P12772493520138024275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074662 n - A056594 n) * A000073 n

end

end A192913.P12772493520138024275

namespace A192913

/-- `(A074662(n)-A056594(n))*A000073(n)` -/
def P12772493520138024275.Spec : Prop :=
  ∀ n, P12772493520138024275.a n = A192913 n

end A192913

/-! ## A192913.P9535584218789685503

`(A000213(n)-A081172(n))*A000045(n+1)`
-/

namespace A192913.P9535584218789685503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000213 n - A081172 n) * A000045 (n + 1)

end

end A192913.P9535584218789685503

namespace A192913

/-- `(A000213(n)-A081172(n))*A000045(n+1)` -/
def P9535584218789685503.Spec : Prop :=
  ∀ n, P9535584218789685503.a n = A192913 n

end A192913

/-! ## A192913.P4977198181566709759

`(A338192(n)-A000045(n))*A000045(n+1)`
-/

namespace A192913.P4977198181566709759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A338192 n - A000045 n) * A000045 (n + 1)

end

end A192913.P4977198181566709759

namespace A192913

/-- `(A338192(n)-A000045(n))*A000045(n+1)` -/
def P4977198181566709759.Spec : Prop :=
  ∀ n, P4977198181566709759.a n = A192913 n

end A192913

/-! ## A192913.P4816671833388264524

`(A214899(n)-A141036(n))*A000045(n+1)`
-/

namespace A192913.P4816671833388264524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214899 n - A141036 n) * A000045 (n + 1)

end

end A192913.P4816671833388264524

namespace A192913

/-- `(A214899(n)-A141036(n))*A000045(n+1)` -/
def P4816671833388264524.Spec : Prop :=
  ∀ n, P4816671833388264524.a n = A192913 n

end A192913

/-! ## A192913.P16010091856193165456

`(A027934(n+1)-A008466(n+1))*A000073(n)`
-/

namespace A192913.P16010091856193165456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027934 (n + 1) - A008466 (n + 1)) * A000073 n

end

end A192913.P16010091856193165456

namespace A192913

/-- `(A027934(n+1)-A008466(n+1))*A000073(n)` -/
def P16010091856193165456.Spec : Prop :=
  ∀ n, P16010091856193165456.a n = A192913 n

end A192913

/-!
# A192914: Constant term in the reduction by (x^2 -> x + 1) of the polynomial C(n)*x^n, where C=A000285.

The programs for A192914, the canonical program `A192914.P7675048250764723682` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192914 has offset 0).

The definition of A192914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192914.P7675048250764723682

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192914

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P7675048250764723682.Spec : Prop :=
  ∀ n, P7675048250764723682.a n = A192914 n

theorem P7675048250764723682.correct : P7675048250764723682.Spec := by
  intro n
  simp only [A192914]

end A192914

/-! ## A192914.P11812935545255700829

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=0, a(2)=5`
-/

namespace A192914.P11812935545255700829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A192914.P11812935545255700829

namespace A192914

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P11812935545255700829.Spec : Prop :=
  ∀ n, P11812935545255700829.a n = A192914 n

theorem P11812935545255700829.correct : P11812935545255700829.Spec := by
  intro n
  simp only [A192914, Nat.add_sub_cancel, A192914.P11812935545255700829.a, A192914.P7675048250764723682.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192914

/-! ## A192914.P10208508332027830483

`Δ[A192921(n)]`
-/

namespace A192914.P10208508332027830483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192914.P10208508332027830483

namespace A192914

/-- `Δ[A192921(n)]` -/
def P10208508332027830483.Spec : Prop :=
  ∀ n, P10208508332027830483.a n = A192914 n

end A192914

/-! ## A192914.P8702145761208398534

`A054486(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A192914.P8702145761208398534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054486 (n - 1) - a (n - 1)

end

end A192914.P8702145761208398534

namespace A192914

/-- `A054486(n-1)-a(n-1)` -/
def P8702145761208398534.Spec : Prop :=
  ∀ n, P8702145761208398534.a n = A192914 n

end A192914

/-! ## A192914.P5616546267215865805

`A192879(n)+A033999(n)`
-/

namespace A192914.P5616546267215865805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192879 n + A033999 n

end

end A192914.P5616546267215865805

namespace A192914

/-- `A192879(n)+A033999(n)` -/
def P5616546267215865805.Spec : Prop :=
  ∀ n, P5616546267215865805.a n = A192914 n

end A192914

/-! ## A192914.P2004573075710420611

`A014742(n)-A175395(n)`
-/

namespace A192914.P2004573075710420611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014742 n - A175395 n

end

end A192914.P2004573075710420611

namespace A192914

/-- `A014742(n)-A175395(n)` -/
def P2004573075710420611.Spec : Prop :=
  ∀ n, P2004573075710420611.a n = A192914 n

end A192914

/-! ## A192914.P9443633243441321704

`A000285(n)*A212804(n)`
-/

namespace A192914.P9443633243441321704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n * A212804 n

end

end A192914.P9443633243441321704

namespace A192914

/-- `A000285(n)*A212804(n)` -/
def P9443633243441321704.Spec : Prop :=
  ∀ n, P9443633243441321704.a n = A192914 n

end A192914

/-! ## A192914.P5040769320696779418

`Δ[A000045(n)]*A000285(n)`
-/

namespace A192914.P5040769320696779418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000285 n

end

end A192914.P5040769320696779418

namespace A192914

/-- `Δ[A000045(n)]*A000285(n)` -/
def P5040769320696779418.Spec : Prop :=
  ∀ n, P5040769320696779418.a n = A192914 n

end A192914

/-! ## A192914.P653429427294064499

`Δ[A001611(n)]*A000285(n)`
-/

namespace A192914.P653429427294064499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000285 n

end

end A192914.P653429427294064499

namespace A192914

/-- `Δ[A001611(n)]*A000285(n)` -/
def P653429427294064499.Spec : Prop :=
  ∀ n, P653429427294064499.a n = A192914 n

end A192914

/-! ## A192914.P3432469795626911332

`Δ[A157726(n)]*A000285(n)`
-/

namespace A192914.P3432469795626911332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000285 n

end

end A192914.P3432469795626911332

namespace A192914

/-- `Δ[A157726(n)]*A000285(n)` -/
def P3432469795626911332.Spec : Prop :=
  ∀ n, P3432469795626911332.a n = A192914 n

end A192914

/-! ## A192914.P2854506659020409553

`A192872(n)+A059840(n+1)`
-/

namespace A192914.P2854506659020409553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192872 n + A059840 (n + 1)

end

end A192914.P2854506659020409553

namespace A192914

/-- `A192872(n)+A059840(n+1)` -/
def P2854506659020409553.Spec : Prop :=
  ∀ n, P2854506659020409553.a n = A192914 n

end A192914

/-! ## A192914.P17326397528302214418

`A260259(n+1)-A001519(n)`
-/

namespace A192914.P17326397528302214418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (n + 1) - A001519 n

end

end A192914.P17326397528302214418

namespace A192914

/-- `A260259(n+1)-A001519(n)` -/
def P17326397528302214418.Spec : Prop :=
  ∀ n, P17326397528302214418.a n = A192914 n

end A192914

/-! ## A192914.P7837020980554656557

`A192921(n+1)-A192921(n)`
-/

namespace A192914.P7837020980554656557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 (n + 1) - A192921 n

end

end A192914.P7837020980554656557

namespace A192914

/-- `A192921(n+1)-A192921(n)` -/
def P7837020980554656557.Spec : Prop :=
  ∀ n, P7837020980554656557.a n = A192914 n

end A192914

/-! ## A192914.P3520555004256618920

`(A022308(n)+1)*A212804(n)`
-/

namespace A192914.P3520555004256618920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022308 n + 1) * A212804 n

end

end A192914.P3520555004256618920

namespace A192914

/-- `(A022308(n)+1)*A212804(n)` -/
def P3520555004256618920.Spec : Prop :=
  ∀ n, P3520555004256618920.a n = A192914 n

end A192914

/-! ## A192914.P13346361933485204983

`A104449(n+1)*A212804(n)`
-/

namespace A192914.P13346361933485204983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 1) * A212804 n

end

end A192914.P13346361933485204983

namespace A192914

/-- `A104449(n+1)*A212804(n)` -/
def P13346361933485204983.Spec : Prop :=
  ∀ n, P13346361933485204983.a n = A192914 n

end A192914

/-! ## A192914.P2636249664083055802

`A212804(n)/2*A294157(n)`
-/

namespace A192914.P2636249664083055802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 n : ℚ) / 2 * (A294157 n : ℚ)

end

end A192914.P2636249664083055802

namespace A192914

/-- `A212804(n)/2*A294157(n)` -/
def P2636249664083055802.Spec : Prop :=
  ∀ n, P2636249664083055802.a n = (A192914 n : ℚ)

end A192914

/-! ## A192914.P9324194008316395087

`A014742(n)-2*A000045(n)²`
-/

namespace A192914.P9324194008316395087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014742 n - 2 * A000045 n ^ 2

end

end A192914.P9324194008316395087

namespace A192914

/-- `A014742(n)-2*A000045(n)²` -/
def P9324194008316395087.Spec : Prop :=
  ∀ n, P9324194008316395087.a n = A192914 n

end A192914

/-! ## A192914.P12421120278894909042

`A295678(2*n)-A000045(n)²`
-/

namespace A192914.P12421120278894909042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 (2 * n) - A000045 n ^ 2

end

end A192914.P12421120278894909042

namespace A192914

/-- `A295678(2*n)-A000045(n)²` -/
def P12421120278894909042.Spec : Prop :=
  ∀ n, P12421120278894909042.a n = A192914 n

end A192914

/-!
# A192915: Triangle read by rows: T(n,k) = Sum_{j=0..3} binomial(n+3, k+j), 0 <= k <= n.

The programs for A192915, the canonical program `A192915.P4883164644234692802` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192915 has offset 0).

The definition of A192915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192915.P4883164644234692802

`A051601(lt[A003056(n), A014473(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A192915

/-- `A051601(lt[A003056(n), A014473(n)])` -/
def P4883164644234692802.Spec : Prop :=
  ∀ n, P4883164644234692802.a n = A192915 n

theorem P4883164644234692802.correct : P4883164644234692802.Spec := by
  intro n
  simp only [A192915]

end A192915

/-! ## A192915.P2937029144738926419

`A051601(lt[A048483(n), A055248(n)])`
-/

namespace A192915.P2937029144738926419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A192915.P2937029144738926419

namespace A192915

/-- `A051601(lt[A048483(n), A055248(n)])` -/
def P2937029144738926419.Spec : Prop :=
  ∀ n, P2937029144738926419.a n = A192915 n

end A192915

/-! ## A192915.P12607579550419423930

`A051601(lt[A002024(n+1), A007318(n)])`
-/

namespace A192915.P12607579550419423930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A192915.P12607579550419423930

namespace A192915

/-- `A051601(lt[A002024(n+1), A007318(n)])` -/
def P12607579550419423930.Spec : Prop :=
  ∀ n, P12607579550419423930.a n = A192915 n

end A192915

/-! ## A192915.P2585581120839237523

`A051601(lt[n, A051601(n)+A014473(n)])`
-/

namespace A192915.P2585581120839237523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A192915.P2585581120839237523

namespace A192915

/-- `A051601(lt[n, A051601(n)+A014473(n)])` -/
def P2585581120839237523.Spec : Prop :=
  ∀ n, P2585581120839237523.a n = A192915 n

end A192915

/-! ## A192915.P16692052547118089325

`A051601(lt[n-A014473(n), A051601(n)])`
-/

namespace A192915.P16692052547118089325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014473 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A192915.P16692052547118089325

namespace A192915

/-- `A051601(lt[n-A014473(n), A051601(n)])` -/
def P16692052547118089325.Spec : Prop :=
  ∀ n, P16692052547118089325.a n = A192915 n

end A192915

/-! ## A192915.P16716241877050145145

`A194119(n)+A144394(n+4)`
-/

namespace A192915.P16716241877050145145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194119 n + A144394 (n + 4)

end

end A192915.P16716241877050145145

namespace A192915

/-- `A194119(n)+A144394(n+4)` -/
def P16716241877050145145.Spec : Prop :=
  ∀ n, P16716241877050145145.a n = A192915 n

end A192915

/-! ## A192915.P7361357803160575845

`A051601(lt[A000124(n), A181543(n)])`
-/

namespace A192915.P7361357803160575845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A192915.P7361357803160575845

namespace A192915

/-- `A051601(lt[A000124(n), A181543(n)])` -/
def P7361357803160575845.Spec : Prop :=
  ∀ n, P7361357803160575845.a n = A192915 n

end A192915

/-! ## A192915.P3308397525945771470

`A051601(eq[8, abs(A156609(n))])`
-/

namespace A192915.P3308397525945771470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156609 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192915.P3308397525945771470

namespace A192915

/-- `A051601(eq[8, abs(A156609(n))])` -/
def P3308397525945771470.Spec : Prop :=
  ∀ n, P3308397525945771470.a n = A192915 n

end A192915

/-! ## A192915.P864322258096635511

`A051601(eq[0, A172090(n)])`
-/

namespace A192915.P864322258096635511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192915.P864322258096635511

namespace A192915

/-- `A051601(eq[0, A172090(n)])` -/
def P864322258096635511.Spec : Prop :=
  ∀ n, P864322258096635511.a n = A192915 n

end A192915

/-! ## A192915.P870541548036004052

`A051601(lt[A102363(n), A022166(n)])`
-/

namespace A192915.P870541548036004052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A192915.P870541548036004052

namespace A192915

/-- `A051601(lt[A102363(n), A022166(n)])` -/
def P870541548036004052.Spec : Prop :=
  ∀ n, P870541548036004052.a n = A192915 n

end A192915

/-!
# A192916: Constant term in the reduction by (x^2 -> x+1) of the polynomial C(n)*x^n, where C=A022095.

The programs for A192916, the canonical program `A192916.P588688956545358147` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192916 has offset 0).

The definition of A192916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192916.P588688956545358147

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192916

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P588688956545358147.Spec : Prop :=
  ∀ n, P588688956545358147.a n = A192916 n

theorem P588688956545358147.correct : P588688956545358147.Spec := by
  intro n
  simp only [A192916]

end A192916

/-! ## A192916.P1194336014932285212

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=0, a(2)=6`
-/

namespace A192916.P1194336014932285212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 6] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A192916.P1194336014932285212

namespace A192916

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P1194336014932285212.Spec : Prop :=
  ∀ n, P1194336014932285212.a n = A192916 n

theorem P1194336014932285212.correct : P1194336014932285212.Spec := by
  intro n
  simp only [A192916, Nat.add_sub_cancel, A192916.P1194336014932285212.a, A192916.P588688956545358147.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192916

/-! ## A192916.P14830055019629253416

`A054492(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A192916.P14830055019629253416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054492 (n - 1) - a (n - 1)

end

end A192916.P14830055019629253416

namespace A192916

/-- `A054492(n-1)-a(n-1)` -/
def P14830055019629253416.Spec : Prop :=
  ∀ n, P14830055019629253416.a n = A192916 n

end A192916

/-! ## A192916.P36093150599279915

`A014742(n)-A128534(n)`
-/

namespace A192916.P36093150599279915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014742 n - A128534 n

end

end A192916.P36093150599279915

namespace A192916

/-- `A014742(n)-A128534(n)` -/
def P36093150599279915.Spec : Prop :=
  ∀ n, P36093150599279915.a n = A192916 n

end A192916

/-! ## A192916.P5885552232803982386

`A022095(n)*A212804(n)`
-/

namespace A192916.P5885552232803982386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n * A212804 n

end

end A192916.P5885552232803982386

namespace A192916

/-- `A022095(n)*A212804(n)` -/
def P5885552232803982386.Spec : Prop :=
  ∀ n, P5885552232803982386.a n = A192916 n

end A192916

/-! ## A192916.P8495466931188596026

`Δ[A000045(n)]*A022095(n)`
-/

namespace A192916.P8495466931188596026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A022095 n

end

end A192916.P8495466931188596026

namespace A192916

/-- `Δ[A000045(n)]*A022095(n)` -/
def P8495466931188596026.Spec : Prop :=
  ∀ n, P8495466931188596026.a n = A192916 n

end A192916

/-! ## A192916.P216904847707548732

`Δ[A001611(n)]*A022095(n)`
-/

namespace A192916.P216904847707548732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A022095 n

end

end A192916.P216904847707548732

namespace A192916

/-- `Δ[A001611(n)]*A022095(n)` -/
def P216904847707548732.Spec : Prop :=
  ∀ n, P216904847707548732.a n = A192916 n

end A192916

/-! ## A192916.P1944956371897738712

`Δ[A182415(n)]*A212804(n)`
-/

namespace A192916.P1944956371897738712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 n

end

end A192916.P1944956371897738712

namespace A192916

/-- `Δ[A182415(n)]*A212804(n)` -/
def P1944956371897738712.Spec : Prop :=
  ∀ n, P1944956371897738712.a n = A192916 n

end A192916

/-! ## A192916.P10918447346848321576

`A128535(n)+A007598(n+1)`
-/

namespace A192916.P10918447346848321576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 n + A007598 (n + 1)

end

end A192916.P10918447346848321576

namespace A192916

/-- `A128535(n)+A007598(n+1)` -/
def P10918447346848321576.Spec : Prop :=
  ∀ n, P10918447346848321576.a n = A192916 n

end A192916

/-! ## A192916.P17340817914556695499

`(A022309(n)+1)*A212804(n)`
-/

namespace A192916.P17340817914556695499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022309 n + 1) * A212804 n

end

end A192916.P17340817914556695499

namespace A192916

/-- `(A022309(n)+1)*A212804(n)` -/
def P17340817914556695499.Spec : Prop :=
  ∀ n, P17340817914556695499.a n = A192916 n

end A192916

/-! ## A192916.P11542721981693020692

`A128535(n)+A006498(2*n)`
-/

namespace A192916.P11542721981693020692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 n + A006498 (2 * n)

end

end A192916.P11542721981693020692

namespace A192916

/-- `A128535(n)+A006498(2*n)` -/
def P11542721981693020692.Spec : Prop :=
  ∀ n, P11542721981693020692.a n = A192916 n

end A192916

/-! ## A192916.P8455976085747902123

`A022367(n)/2*A212804(n)`
-/

namespace A192916.P8455976085747902123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022367 n : ℚ) / 2 * (A212804 n : ℚ)

end

end A192916.P8455976085747902123

namespace A192916

/-- `A022367(n)/2*A212804(n)` -/
def P8455976085747902123.Spec : Prop :=
  ∀ n, P8455976085747902123.a n = (A192916 n : ℚ)

end A192916

/-! ## A192916.P13749449758351081288

`Δ[A000045(n)]*Δ[A171237(n)]`
-/

namespace A192916.P13749449758351081288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A192916.P13749449758351081288

namespace A192916

/-- `Δ[A000045(n)]*Δ[A171237(n)]` -/
def P13749449758351081288.Spec : Prop :=
  ∀ n, P13749449758351081288.a n = A192916 n

end A192916

/-! ## A192916.P6447435723679986462

`Δ[A000045(n)]*Δ[A182415(n)]`
-/

namespace A192916.P6447435723679986462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A192916.P6447435723679986462

namespace A192916

/-- `Δ[A000045(n)]*Δ[A182415(n)]` -/
def P6447435723679986462.Spec : Prop :=
  ∀ n, P6447435723679986462.a n = A192916 n

end A192916

/-! ## A192916.P7588856601061811400

`A128535(n)+A000045(n+1)²`
-/

namespace A192916.P7588856601061811400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 n + A000045 (n + 1) ^ 2

end

end A192916.P7588856601061811400

namespace A192916

/-- `A128535(n)+A000045(n+1)²` -/
def P7588856601061811400.Spec : Prop :=
  ∀ n, P7588856601061811400.a n = A192916 n

end A192916

/-! ## A192916.P673186109311317875

`A295686(2*n+1)-A000045(n)²`
-/

namespace A192916.P673186109311317875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295686 (2 * n + 1) - A000045 n ^ 2

end

end A192916.P673186109311317875

namespace A192916

/-- `A295686(2*n+1)-A000045(n)²` -/
def P673186109311317875.Spec : Prop :=
  ∀ n, P673186109311317875.a n = A192916 n

end A192916

/-! ## A192916.P9008969471953964993

`A295671(2*n+1)+A000045(2*n)`
-/

namespace A192916.P9008969471953964993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 (2 * n + 1) + A000045 (2 * n)

end

end A192916.P9008969471953964993

namespace A192916

/-- `A295671(2*n+1)+A000045(2*n)` -/
def P9008969471953964993.Spec : Prop :=
  ∀ n, P9008969471953964993.a n = A192916 n

end A192916

/-! ## A192916.P11111006722242375183

`A295691(2*n+1)-A126116(2*n)`
-/

namespace A192916.P11111006722242375183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295691 (2 * n + 1) - A126116 (2 * n)

end

end A192916.P11111006722242375183

namespace A192916

/-- `A295691(2*n+1)-A126116(2*n)` -/
def P11111006722242375183.Spec : Prop :=
  ∀ n, P11111006722242375183.a n = A192916 n

end A192916

/-!
# A192917: Coefficient of x in the reduction by (x^2 -> x+1) of the polynomial C(n)*x^n, where C=A022095.

The programs for A192917, the canonical program `A192917.P10175225447109802282` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192917 has offset 0).

The definition of A192917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192917.P10175225447109802282

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=5, a(2)=6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192917

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P10175225447109802282.Spec : Prop :=
  ∀ n, P10175225447109802282.a n = A192917 n

theorem P10175225447109802282.correct : P10175225447109802282.Spec := by
  intro n
  simp only [A192917]

end A192917

/-! ## A192917.P16922074724738733545

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=5, a(2)=6`
-/

namespace A192917.P16922074724738733545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 6] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A192917.P16922074724738733545

namespace A192917

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P16922074724738733545.Spec : Prop :=
  ∀ n, P16922074724738733545.a n = A192917 n

theorem P16922074724738733545.correct : P16922074724738733545.Spec := by
  intro n
  simp only [A192917, Nat.add_sub_cancel, A192917.P16922074724738733545.a, A192917.P10175225447109802282.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192917

/-! ## A192917.P4184878291502331889

`∑[A266699(n)]-4`
-/

namespace A192917.P4184878291502331889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A192917.P4184878291502331889

namespace A192917

/-- `∑[A266699(n)]-4` -/
def P4184878291502331889.Spec : Prop :=
  ∀ n, P4184878291502331889.a n = A192917 n

end A192917

/-! ## A192917.P16315110331408678940

`A175395(n)+A081714(n)`
-/

namespace A192917.P16315110331408678940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n + A081714 n

end

end A192917.P16315110331408678940

namespace A192917

/-- `A175395(n)+A081714(n)` -/
def P16315110331408678940.Spec : Prop :=
  ∀ n, P16315110331408678940.a n = A192917 n

end A192917

/-! ## A192917.P2949576679656872319

`A000045(n)*A022095(n)`
-/

namespace A192917.P2949576679656872319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A022095 n

end

end A192917.P2949576679656872319

namespace A192917

/-- `A000045(n)*A022095(n)` -/
def P2949576679656872319.Spec : Prop :=
  ∀ n, P2949576679656872319.a n = A192917 n

end A192917

/-! ## A192917.P13270546020449809204

`A000045(n)*Δ[A171237(n)]`
-/

namespace A192917.P13270546020449809204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A192917.P13270546020449809204

namespace A192917

/-- `A000045(n)*Δ[A171237(n)]` -/
def P13270546020449809204.Spec : Prop :=
  ∀ n, P13270546020449809204.a n = A192917 n

end A192917

/-! ## A192917.P11944383340361542067

`A000045(n)*Δ[A182415(n)]`
-/

namespace A192917.P11944383340361542067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A192917.P11944383340361542067

namespace A192917

/-- `A000045(n)*Δ[A182415(n)]` -/
def P11944383340361542067.Spec : Prop :=
  ∀ n, P11944383340361542067.a n = A192917 n

end A192917

/-! ## A192917.P15311941232540412928

`A226205(n+2)+A128534(n)`
-/

namespace A192917.P15311941232540412928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 2) + A128534 n

end

end A192917.P15311941232540412928

namespace A192917

/-- `A226205(n+2)+A128534(n)` -/
def P15311941232540412928.Spec : Prop :=
  ∀ n, P15311941232540412928.a n = A192917 n

end A192917

/-! ## A192917.P10186467652205987280

`(A022309(n)+1)*A000045(n)`
-/

namespace A192917.P10186467652205987280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022309 n + 1) * A000045 n

end

end A192917.P10186467652205987280

namespace A192917

/-- `(A022309(n)+1)*A000045(n)` -/
def P10186467652205987280.Spec : Prop :=
  ∀ n, P10186467652205987280.a n = A192917 n

end A192917

/-! ## A192917.P17925616847035460233

`A022095(n)*A212804(n+1)`
-/

namespace A192917.P17925616847035460233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n * A212804 (n + 1)

end

end A192917.P17925616847035460233

namespace A192917

/-- `A022095(n)*A212804(n+1)` -/
def P17925616847035460233.Spec : Prop :=
  ∀ n, P17925616847035460233.a n = A192917 n

end A192917

/-! ## A192917.P11041366466416421686

`A128534(n)-A121646(n+2)`
-/

namespace A192917.P11041366466416421686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128534 n - A121646 (n + 2)

end

end A192917.P11041366466416421686

namespace A192917

/-- `A128534(n)-A121646(n+2)` -/
def P11041366466416421686.Spec : Prop :=
  ∀ n, P11041366466416421686.a n = A192917 n

end A192917

/-! ## A192917.P186540210527279321

`(A001611(n)-1)*A022095(n)`
-/

namespace A192917.P186540210527279321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A022095 n

end

end A192917.P186540210527279321

namespace A192917

/-- `(A001611(n)-1)*A022095(n)` -/
def P186540210527279321.Spec : Prop :=
  ∀ n, P186540210527279321.a n = A192917 n

end A192917

/-! ## A192917.P3269049091830507721

`A081714(n)+2*A007598(n)`
-/

namespace A192917.P3269049091830507721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 n + 2 * A007598 n

end

end A192917.P3269049091830507721

namespace A192917

/-- `A081714(n)+2*A007598(n)` -/
def P3269049091830507721.Spec : Prop :=
  ∀ n, P3269049091830507721.a n = A192917 n

end A192917

/-! ## A192917.P5907349230299247179

`A001654(n)+2*A175395(n)`
-/

namespace A192917.P5907349230299247179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + 2 * A175395 n

end

end A192917.P5907349230299247179

namespace A192917

/-- `A001654(n)+2*A175395(n)` -/
def P5907349230299247179.Spec : Prop :=
  ∀ n, P5907349230299247179.a n = A192917 n

end A192917

/-! ## A192917.P13208332265579360191

`A000045(n)/2*A022367(n)`
-/

namespace A192917.P13208332265579360191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A022367 n : ℚ)

end

end A192917.P13208332265579360191

namespace A192917

/-- `A000045(n)/2*A022367(n)` -/
def P13208332265579360191.Spec : Prop :=
  ∀ n, P13208332265579360191.a n = (A192917 n : ℚ)

end A192917

/-! ## A192917.P11191104899425146613

`A001654(n)+Δ[A001595(n)]²`
-/

namespace A192917.P11191104899425146613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n) ^ 2

end

end A192917.P11191104899425146613

namespace A192917

/-- `A001654(n)+Δ[A001595(n)]²` -/
def P11191104899425146613.Spec : Prop :=
  ∀ n, P11191104899425146613.a n = A192917 n

end A192917

/-! ## A192917.P12134867219333130999

`A192878(n+1)+A000045(n)²`
-/

namespace A192917.P12134867219333130999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192878 (n + 1) + A000045 n ^ 2

end

end A192917.P12134867219333130999

namespace A192917

/-- `A192878(n+1)+A000045(n)²` -/
def P12134867219333130999.Spec : Prop :=
  ∀ n, P12134867219333130999.a n = A192917 n

end A192917

/-! ## A192917.P13012059432701668380

`A001654(n)+(2*A000045(n))²`
-/

namespace A192917.P13012059432701668380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (2 * A000045 n) ^ 2

end

end A192917.P13012059432701668380

namespace A192917

/-- `A001654(n)+(2*A000045(n))²` -/
def P13012059432701668380.Spec : Prop :=
  ∀ n, P13012059432701668380.a n = A192917 n

end A192917

/-!
# A192918: Decimal expansion of the real root of r^3 + r^2 + r - 1.

The programs for A192918, there is no canonical definition to state claims against.
-/

/-! ## A192918.P14703536544041785

`A256099(n+1)`
-/

namespace A192918.P14703536544041785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256099 (n + 1 + 1)

end

end A192918.P14703536544041785

/-! ## A192918.P6234335687473175036

`dr(A256099(A028242(2*n)))`
-/

namespace A192918.P6234335687473175036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A256099 ((A028242 (2 * n)).toNat + 1))

end

end A192918.P6234335687473175036

/-! ## A192918.P7110927257673049353

`or(A000007(n), A256099(A028242(2*n)))`
-/

namespace A192918.P7110927257673049353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A256099 ((A028242 (2 * n)).toNat + 1))

end

end A192918.P7110927257673049353

/-! ## A192918.P9072717868976989204

`abs(A057077(n)*A256099(A028242(2*n)))`
-/

namespace A192918.P9072717868976989204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057077 n * A256099 ((A028242 (2 * n)).toNat + 1)|

end

end A192918.P9072717868976989204

/-! ## A192918.P17986674738945967758

`char[A061579(n)]*A256099(A028242(2*n))`
-/

namespace A192918.P17986674738945967758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A256099 ((A028242 (2 * n)).toNat + 1)

end

end A192918.P17986674738945967758

/-! ## A192918.P8352805557295493456

`A001222(A020484(n))*A256099(A028242(2*n))`
-/

namespace A192918.P8352805557295493456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020484 n).toNat * A256099 ((A028242 (2 * n)).toNat + 1)

end

end A192918.P8352805557295493456

/-! ## A192918.P4779177974620371146

`-A008683(A020483(n))*A256099(A028242(2*n))`
-/

namespace A192918.P4779177974620371146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (A020483 n).toNat * A256099 ((A028242 (2 * n)).toNat + 1))

end

end A192918.P4779177974620371146

/-! ## A192918.P2457507722726861894

`A056594(2*n)*A256099(A028242(2*n))*A056594(2*n)`
-/

namespace A192918.P2457507722726861894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A256099 ((A028242 (2 * n)).toNat + 1) * A056594 (2 * n)

end

end A192918.P2457507722726861894

/-!
# A192919: Constant term in the reduction by (x^2 -> x+1) of the polynomial F(n+4)*x^n, where F=A000045 (Fibonacci sequence).

The programs for A192919, the canonical program `A192919.P6244895272220573237` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192919 has offset 0).

The definition of A192919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192919.P6244895272220573237

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=3, a(1)=0, a(2)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192919

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P6244895272220573237.Spec : Prop :=
  ∀ n, P6244895272220573237.a n = A192919 n

theorem P6244895272220573237.correct : P6244895272220573237.Spec := by
  intro n
  simp only [A192919]

end A192919

/-! ## A192919.P4741495394176931330

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=3, a(1)=0, a(2)=8`
-/

namespace A192919.P4741495394176931330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 8] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A192919.P4741495394176931330

namespace A192919

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P4741495394176931330.Spec : Prop :=
  ∀ n, P4741495394176931330.a n = A192919 n

theorem P4741495394176931330.correct : P4741495394176931330.Spec := by
  intro n
  simp only [A192919, Nat.add_sub_cancel, A192919.P4741495394176931330.a, A192919.P6244895272220573237.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192919

/-! ## A192919.P3998555762570606677

`round(ϕ*A192883(n))`
-/

namespace A192919.P3998555762570606677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A192883 n : ℝ))

end

end A192919.P3998555762570606677

namespace A192919

/-- `round(ϕ*A192883(n))` -/
def P3998555762570606677.Spec : Prop :=
  ∀ n, P3998555762570606677.a n = A192919 n

end A192919

/-! ## A192919.P18145081957884809006

`A001906(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A192919.P18145081957884809006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001906 (n + 1) - a (n - 1)

end

end A192919.P18145081957884809006

namespace A192919

/-- `A001906(n+1)-a(n-1)` -/
def P18145081957884809006.Spec : Prop :=
  ∀ n, P18145081957884809006.a n = A192919 n

end A192919

/-! ## A192919.P12776781486633943382

`A088305(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A192919.P12776781486633943382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A088305 (n + 1) - a (n - 1)

end

end A192919.P12776781486633943382

namespace A192919

/-- `A088305(n+1)-a(n-1)` -/
def P12776781486633943382.Spec : Prop :=
  ∀ n, P12776781486633943382.a n = A192919 n

end A192919

/-! ## A192919.P11728026875693218850

`A052952(2*n)-a(n-1)` with `a(0)=3`
-/

namespace A192919.P11728026875693218850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A052952 (2 * n) - a (n - 1)

end

end A192919.P11728026875693218850

namespace A192919

/-- `A052952(2*n)-a(n-1)` -/
def P11728026875693218850.Spec : Prop :=
  ∀ n, P11728026875693218850.a n = A192919 n

end A192919

/-! ## A192919.P18425034678035321141

`A071679(2*n)-a(n-1)` with `a(0)=3`
-/

namespace A192919.P18425034678035321141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A071679 (2 * n) - a (n - 1)

end

end A192919.P18425034678035321141

namespace A192919

/-- `A071679(2*n)-a(n-1)` -/
def P18425034678035321141.Spec : Prop :=
  ∀ n, P18425034678035321141.a n = A192919 n

end A192919

/-! ## A192919.P17853128759331322961

`A109794(2*n)-a(n-1)` with `a(0)=3`
-/

namespace A192919.P17853128759331322961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A109794 (2 * n) - a (n - 1)

end

end A192919.P17853128759331322961

namespace A192919

/-- `A109794(2*n)-a(n-1)` -/
def P17853128759331322961.Spec : Prop :=
  ∀ n, P17853128759331322961.a n = A192919 n

end A192919

/-! ## A192919.P16050061515473445197

`∑[A000045(Δ[n²])]-a(n-1)` with `a(0)=3`
-/

namespace A192919.P16050061515473445197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A192919.P16050061515473445197

namespace A192919

/-- `∑[A000045(Δ[n²])]-a(n-1)` -/
def P16050061515473445197.Spec : Prop :=
  ∀ n, P16050061515473445197.a n = A192919 n

end A192919

/-! ## A192919.P701020448600566808

`A000045(2*(n+1))-a(n-1)` with `a(0)=3`
-/

namespace A192919.P701020448600566808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000045 (2 * (n + 1)) - a (n - 1)

end

end A192919.P701020448600566808

namespace A192919

/-- `A000045(2*(n+1))-a(n-1)` -/
def P701020448600566808.Spec : Prop :=
  ∀ n, P701020448600566808.a n = A192919 n

end A192919

/-! ## A192919.P5012006811996001926

`abs(A000045(Δ[(n-1)²]+3)-a(n-1))` with `a(0)=3`
-/

namespace A192919.P5012006811996001926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |A000045 (f1 (n + 1) - f1 n + 3).toNat - a (n - 1)|

end

end A192919.P5012006811996001926

namespace A192919

/-- `abs(A000045(Δ[(n-1)²]+3)-a(n-1))` -/
def P5012006811996001926.Spec : Prop :=
  ∀ n, P5012006811996001926.a n = A192919 n

end A192919

/-! ## A192919.P15333699486297142750

`A020701(n)*A212804(n)`
-/

namespace A192919.P15333699486297142750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n * A212804 n

end

end A192919.P15333699486297142750

namespace A192919

/-- `A020701(n)*A212804(n)` -/
def P15333699486297142750.Spec : Prop :=
  ∀ n, P15333699486297142750.a n = A192919 n

end A192919

/-! ## A192919.P13154803541888586696

`Δ[A000045(n)]*A020701(n)`
-/

namespace A192919.P13154803541888586696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020701 n

end

end A192919.P13154803541888586696

namespace A192919

/-- `Δ[A000045(n)]*A020701(n)` -/
def P13154803541888586696.Spec : Prop :=
  ∀ n, P13154803541888586696.a n = A192919 n

end A192919

/-! ## A192919.P13805018738969185489

`A260259(n+1)+A033999(n)`
-/

namespace A192919.P13805018738969185489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 (n + 1) + A033999 n

end

end A192919.P13805018738969185489

namespace A192919

/-- `A260259(n+1)+A033999(n)` -/
def P13805018738969185489.Spec : Prop :=
  ∀ n, P13805018738969185489.a n = A192919 n

end A192919

/-! ## A192919.P6458531150486824032

`A226205(n+1)+A192883(n)`
-/

namespace A192919.P6458531150486824032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 1) + A192883 n

end

end A192919.P6458531150486824032

namespace A192919

/-- `A226205(n+1)+A192883(n)` -/
def P6458531150486824032.Spec : Prop :=
  ∀ n, P6458531150486824032.a n = A192919 n

end A192919

/-! ## A192919.P4044252357981360779

`A192883(n)-A121646(n+1)`
-/

namespace A192919.P4044252357981360779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 n - A121646 (n + 1)

end

end A192919.P4044252357981360779

namespace A192919

/-- `A192883(n)-A121646(n+1)` -/
def P4044252357981360779.Spec : Prop :=
  ∀ n, P4044252357981360779.a n = A192919 n

end A192919

/-! ## A192919.P3847370756928312623

`A020695(n+1)*A212804(n)`
-/

namespace A192919.P3847370756928312623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (n + 1) * A212804 n

end

end A192919.P3847370756928312623

namespace A192919

/-- `A020695(n+1)*A212804(n)` -/
def P3847370756928312623.Spec : Prop :=
  ∀ n, P3847370756928312623.a n = A192919 n

end A192919

/-! ## A192919.P13776154357108741198

`A000045(n+4)*A212804(n)`
-/

namespace A192919.P13776154357108741198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) * A212804 n

end

end A192919.P13776154357108741198

namespace A192919

/-- `A000045(n+4)*A212804(n)` -/
def P13776154357108741198.Spec : Prop :=
  ∀ n, P13776154357108741198.a n = A192919 n

end A192919

/-!
# A192920: Coefficient of x in the reduction by (x^2 -> x+1) of the polynomial F(n+4)*x^n, where F = A000045 (Fibonacci sequence).

The programs for A192920, the canonical program `A192920.P16136077864245532056` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192920 has offset 0).

The definition of A192920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192920.P16136077864245532056

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=5, a(2)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192920

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P16136077864245532056.Spec : Prop :=
  ∀ n, P16136077864245532056.a n = A192920 n

theorem P16136077864245532056.correct : P16136077864245532056.Spec := by
  intro n
  simp only [A192920]

end A192920

/-! ## A192920.P1688758580716274918

`A192883(n+1)`
-/

namespace A192920.P1688758580716274918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 (n + 1)

end

end A192920.P1688758580716274918

namespace A192920

/-- `A192883(n+1)` -/
def P1688758580716274918.Spec : Prop :=
  ∀ n, P1688758580716274918.a n = A192920 n

end A192920

/-! ## A192920.P11437149947888682895

`(A005248(n+2)-7*(-1)^n)/5`
-/

namespace A192920.P11437149947888682895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 (n + 2) - 7 * (-1) ^ n : ℚ) / 5

end

end A192920.P11437149947888682895

namespace A192920

/-- `(A005248(n+2)-7*(-1)^n)/5` -/
def P11437149947888682895.Spec : Prop :=
  ∀ n, P11437149947888682895.a n = (A192920 n : ℚ)

end A192920

/-! ## A192920.P2712923352296141978

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=5, a(2)=8`
-/

namespace A192920.P2712923352296141978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 8] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A192920.P2712923352296141978

namespace A192920

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P2712923352296141978.Spec : Prop :=
  ∀ n, P2712923352296141978.a n = A192920 n

theorem P2712923352296141978.correct : P2712923352296141978.Spec := by
  intro n
  simp only [A192920, Nat.add_sub_cancel, A192920.P2712923352296141978.a, A192920.P16136077864245532056.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192920

/-! ## A192920.P17159916604223831567

`A295688(2*(n+1))`
-/

namespace A192920.P17159916604223831567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295688 (2 * (n + 1))

end

end A192920.P17159916604223831567

namespace A192920

/-- `A295688(2*(n+1))` -/
def P17159916604223831567.Spec : Prop :=
  ∀ n, P17159916604223831567.a n = A192920 n

end A192920

/-! ## A192920.P1381923277204253629

`A000045(n+2)²-(-1)^n`
-/

namespace A192920.P1381923277204253629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) ^ 2 - (-1) ^ n

end

end A192920.P1381923277204253629

namespace A192920

/-- `A000045(n+2)²-(-1)^n` -/
def P1381923277204253629.Spec : Prop :=
  ∀ n, P1381923277204253629.a n = A192920 n

end A192920

/-! ## A192920.P18301749635149191378

`Δ[floor(A000045(n+1)²/(ϕ-1))]`
-/

namespace A192920.P18301749635149191378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 1) ^ 2 : ℝ) / (Real.goldenRatio - 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192920.P18301749635149191378

namespace A192920

/-- `Δ[floor(A000045(n+1)²/(ϕ-1))]` -/
def P18301749635149191378.Spec : Prop :=
  ∀ n, P18301749635149191378.a n = A192920 n

end A192920

/-! ## A192920.P12324904668168970266

`A000045(2*n+3)-a(n-1)` with `a(0)=0`
-/

namespace A192920.P12324904668168970266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (2 * n + 3) - a (n - 1)

end

end A192920.P12324904668168970266

namespace A192920

/-- `A000045(2*n+3)-a(n-1)` -/
def P12324904668168970266.Spec : Prop :=
  ∀ n, P12324904668168970266.a n = A192920 n

end A192920

/-! ## A192920.P11297962634551141406

`record[A000045(2*n-1)-a(n-1)]` with `a(0)=0, a(1)=5, a(2)=0`
-/

namespace A192920.P11297962634551141406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 0] fun n f1 =>
  A000045 (2 * n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192920.P11297962634551141406

namespace A192920

/-- `record[A000045(2*n-1)-a(n-1)]` -/
def P11297962634551141406.Spec : Prop :=
  ∀ n, P11297962634551141406.a n = A192920 n

end A192920

/-! ## A192920.P14117021269693347539

`A080097(n)+A010673(n)`
-/

namespace A192920.P14117021269693347539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080097 n + A010673 n

end

end A192920.P14117021269693347539

namespace A192920

/-- `A080097(n)+A010673(n)` -/
def P14117021269693347539.Spec : Prop :=
  ∀ n, P14117021269693347539.a n = A192920 n

end A192920

/-! ## A192920.P11709399929616379640

`A128533(n)+A007598(n)`
-/

namespace A192920.P11709399929616379640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 n + A007598 n

end

end A192920.P11709399929616379640

namespace A192920

/-- `A128533(n)+A007598(n)` -/
def P11709399929616379640.Spec : Prop :=
  ∀ n, P11709399929616379640.a n = A192920 n

end A192920

/-! ## A192920.P441336510274592749

`A180664(n)+A010674(n)`
-/

namespace A192920.P441336510274592749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180664 n + A010674 n

end

end A192920.P441336510274592749

namespace A192920

/-- `A180664(n)+A010674(n)` -/
def P441336510274592749.Spec : Prop :=
  ∀ n, P441336510274592749.a n = A192920 n

end A192920

/-! ## A192920.P2961782427573946578

`A175395(n)+A120718(n)`
-/

namespace A192920.P2961782427573946578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n + A120718 n

end

end A192920.P2961782427573946578

namespace A192920

/-- `A175395(n)+A120718(n)` -/
def P2961782427573946578.Spec : Prop :=
  ∀ n, P2961782427573946578.a n = A192920 n

end A192920

/-! ## A192920.P8974568722942796745

`A048575(n)-A192883(n)`
-/

namespace A192920.P8974568722942796745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - A192883 n

end

end A192920.P8974568722942796745

namespace A192920

/-- `A048575(n)-A192883(n)` -/
def P8974568722942796745.Spec : Prop :=
  ∀ n, P8974568722942796745.a n = A192920 n

end A192920

/-! ## A192920.P12271079437479064885

`A054486(n)-A192916(n)`
-/

namespace A192920.P12271079437479064885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054486 n - A192916 n

end

end A192920.P12271079437479064885

namespace A192920

/-- `A054486(n)-A192916(n)` -/
def P12271079437479064885.Spec : Prop :=
  ∀ n, P12271079437479064885.a n = A192920 n

end A192920

/-! ## A192920.P16927311085497806713

`A264080(n)-A192914(n)`
-/

namespace A192920.P16927311085497806713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264080 n - A192914 n

end

end A192920.P16927311085497806713

namespace A192920

/-- `A264080(n)-A192914(n)` -/
def P16927311085497806713.Spec : Prop :=
  ∀ n, P16927311085497806713.a n = A192920 n

end A192920

/-! ## A192920.P16802720652212848408

`A000045(n)*A020701(n)`
-/

namespace A192920.P16802720652212848408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A020701 n

end

end A192920.P16802720652212848408

namespace A192920

/-- `A000045(n)*A020701(n)` -/
def P16802720652212848408.Spec : Prop :=
  ∀ n, P16802720652212848408.a n = A192920 n

end A192920

/-! ## A192920.P2070410153243230239

`A128533(n)+A000045(n)²`
-/

namespace A192920.P2070410153243230239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 n + A000045 n ^ 2

end

end A192920.P2070410153243230239

namespace A192920

/-- `A128533(n)+A000045(n)²` -/
def P2070410153243230239.Spec : Prop :=
  ∀ n, P2070410153243230239.a n = A192920 n

end A192920

/-! ## A192920.P2717252029938599772

`A000045(n)*Δ[A020717(n)]`
-/

namespace A192920.P2717252029938599772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A192920.P2717252029938599772

namespace A192920

/-- `A000045(n)*Δ[A020717(n)]` -/
def P2717252029938599772.Spec : Prop :=
  ∀ n, P2717252029938599772.a n = A192920 n

end A192920

/-!
# A192921: Constant term in the reduction by (x^2->x+1) of the polynomial p(n,x) defined below at Comments.

The programs for A192921, the canonical program `A192921.P15778030975407703346` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192921 has offset 0).

The definition of A192921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192921.P15778030975407703346

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192921

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P15778030975407703346.Spec : Prop :=
  ∀ n, P15778030975407703346.a n = A192921 n

theorem P15778030975407703346.correct : P15778030975407703346.Spec := by
  intro n
  simp only [A192921]

end A192921

/-! ## A192921.P7016251873821009405

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A192921.P7016251873821009405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A192921.P7016251873821009405

namespace A192921

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P7016251873821009405.Spec : Prop :=
  ∀ n, P7016251873821009405.a n = A192921 n

theorem P7016251873821009405.correct : P7016251873821009405.Spec := by
  intro n
  simp only [A192921, Nat.add_sub_cancel, A192921.P7016251873821009405.a, A192921.P15778030975407703346.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192921

/-! ## A192921.P9270668832343542578

`∑[A192914(abs(1-n))]+1`
-/

namespace A192921.P9270668832343542578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192921.P9270668832343542578

namespace A192921

/-- `∑[A192914(abs(1-n))]+1` -/
def P9270668832343542578.Spec : Prop :=
  ∀ n, P9270668832343542578.a n = A192921 n

end A192921

/-! ## A192921.P5843205128838368121

`A192914(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A192921.P5843205128838368121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192914 (n - 1) + a (n - 1)

end

end A192921.P5843205128838368121

namespace A192921

/-- `A192914(n-1)+a(n-1)` -/
def P5843205128838368121.Spec : Prop :=
  ∀ n, P5843205128838368121.a n = A192921 n

end A192921

/-! ## A192921.P13129027223362330714

`A001654(n)+A152163(n)²`
-/

namespace A192921.P13129027223362330714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + A152163 n ^ 2

end

end A192921.P13129027223362330714

namespace A192921

/-- `A001654(n)+A152163(n)²` -/
def P13129027223362330714.Spec : Prop :=
  ∀ n, P13129027223362330714.a n = A192921 n

end A192921

/-! ## A192921.P6152481609859915960

`A128534(n)+A212804(n)²`
-/

namespace A192921.P6152481609859915960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128534 n + A212804 n ^ 2

end

end A192921.P6152481609859915960

namespace A192921

/-- `A128534(n)+A212804(n)²` -/
def P6152481609859915960.Spec : Prop :=
  ∀ n, P6152481609859915960.a n = A192921 n

end A192921

/-! ## A192921.P5472969529231578569

`A392415(n+1)-A107387(n)`
-/

namespace A192921.P5472969529231578569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (n + 1) - A107387 n

end

end A192921.P5472969529231578569

namespace A192921

/-- `A392415(n+1)-A107387(n)` -/
def P5472969529231578569.Spec : Prop :=
  ∀ n, P5472969529231578569.a n = A192921 n

end A192921

/-! ## A192921.P15352411248194011155

`A295672(2*n)+A001654(n)`
-/

namespace A192921.P15352411248194011155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 (2 * n) + A001654 n

end

end A192921.P15352411248194011155

namespace A192921

/-- `A295672(2*n)+A001654(n)` -/
def P15352411248194011155.Spec : Prop :=
  ∀ n, P15352411248194011155.a n = A192921 n

end A192921

/-! ## A192921.P11624847678037911163

`∑[A007598(n)]+A152163(n)²`
-/

namespace A192921.P11624847678037911163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A152163 n ^ 2

end

end A192921.P11624847678037911163

namespace A192921

/-- `∑[A007598(n)]+A152163(n)²` -/
def P11624847678037911163.Spec : Prop :=
  ∀ n, P11624847678037911163.a n = A192921 n

end A192921

/-! ## A192921.P11150932780668492628

`A001654(n)+Δ[A212804(n)]²`
-/

namespace A192921.P11150932780668492628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n) ^ 2

end

end A192921.P11150932780668492628

namespace A192921

/-- `A001654(n)+Δ[A212804(n)]²` -/
def P11150932780668492628.Spec : Prop :=
  ∀ n, P11150932780668492628.a n = A192921 n

end A192921

/-! ## A192921.P9384211363174682297

`A295671(2*n)+A000045(n)²`
-/

namespace A192921.P9384211363174682297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 (2 * n) + A000045 n ^ 2

end

end A192921.P9384211363174682297

namespace A192921

/-- `A295671(2*n)+A000045(n)²` -/
def P9384211363174682297.Spec : Prop :=
  ∀ n, P9384211363174682297.a n = A192921 n

end A192921

/-! ## A192921.P12413571961301035173

`∑[A000045(n)²]+A152163(n)²`
-/

namespace A192921.P12413571961301035173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A152163 n ^ 2

end

end A192921.P12413571961301035173

namespace A192921

/-- `∑[A000045(n)²]+A152163(n)²` -/
def P12413571961301035173.Spec : Prop :=
  ∀ n, P12413571961301035173.a n = A192921 n

end A192921

/-! ## A192921.P3169333330440507286

`A001654(n)+Δ[Δ[A000045(n)]]²`
-/

namespace A192921.P3169333330440507286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n) ^ 2

end

end A192921.P3169333330440507286

namespace A192921

/-- `A001654(n)+Δ[Δ[A000045(n)]]²` -/
def P3169333330440507286.Spec : Prop :=
  ∀ n, P3169333330440507286.a n = A192921 n

end A192921

/-! ## A192921.P11207668711031952198

`A001654(n)+Δ[Δ[A001611(n)]]²`
-/

namespace A192921.P11207668711031952198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (f1 (n + 1) - f1 n) ^ 2

end

end A192921.P11207668711031952198

namespace A192921

/-- `A001654(n)+Δ[Δ[A001611(n)]]²` -/
def P11207668711031952198.Spec : Prop :=
  ∀ n, P11207668711031952198.a n = A192921 n

end A192921

/-!
# A192922: Constant term in the reduction by (x^2->x+1) of the polynomial p(n,x) defined below at Comments.

The programs for A192922, the canonical program `A192922.P3453312115600971179` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192922 has offset 0).

The definition of A192922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192922.P3453312115600971179

`2*a(n-1)+2*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192922

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)-a(n-4)` -/
def P3453312115600971179.Spec : Prop :=
  ∀ n, P3453312115600971179.a n = A192922 n

theorem P3453312115600971179.correct : P3453312115600971179.Spec := by
  intro n
  simp only [A192922]

end A192922

/-! ## A192922.P16032843708425763444

`Δ[A192923(n+1)]-2*A192923(n)`
-/

namespace A192922.P16032843708425763444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A192923 n

end

end A192922.P16032843708425763444

namespace A192922

/-- `Δ[A192923(n+1)]-2*A192923(n)` -/
def P16032843708425763444.Spec : Prop :=
  ∀ n, P16032843708425763444.a n = A192922 n

end A192922

/-! ## A192922.P4504707326107410970

`A100196(A054392(n)-A000035(n))`
-/

namespace A192922.P4504707326107410970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A054392 n - A000035 n).toNat

end

end A192922.P4504707326107410970

namespace A192922

/-- `A100196(A054392(n)-A000035(n))` -/
def P4504707326107410970.Spec : Prop :=
  ∀ n, P4504707326107410970.a n = A192922 n

end A192922

/-! ## A192922.P15049282679431344322

`A100196(A054392(n)-A062108(n))`
-/

namespace A192922.P15049282679431344322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A054392 n - A062108 n).toNat

end

end A192922.P15049282679431344322

namespace A192922

/-- `A100196(A054392(n)-A062108(n))` -/
def P15049282679431344322.Spec : Prop :=
  ∀ n, P15049282679431344322.a n = A192922 n

end A192922

/-!
# A192923: Coefficient of x in the reduction by (x^2->x+1) of the polynomial p(n,x) defined below at Comments.

The programs for A192923, the canonical program `A192923.P4166665379602491665` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192923 has offset 0).

The definition of A192923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192923.P4166665379602491665

`2*a(n-1)+2*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192923

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)-a(n-4)` -/
def P4166665379602491665.Spec : Prop :=
  ∀ n, P4166665379602491665.a n = A192923 n

theorem P4166665379602491665.correct : P4166665379602491665.Spec := by
  intro n
  simp only [A192923]

end A192923

/-! ## A192923.P16524267665346621712

`Δ[A192922(n+1)]-A192922(n)`
-/

namespace A192923.P16524267665346621712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192922 n

end

end A192923.P16524267665346621712

namespace A192923

/-- `Δ[A192922(n+1)]-A192922(n)` -/
def P16524267665346621712.Spec : Prop :=
  ∀ n, P16524267665346621712.a n = A192923 n

end A192923

/-! ## A192923.P651699661735801200

`floor(sqrt(A240573(∑[n+1])))`
-/

namespace A192923.P651699661735801200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A240573 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A192923.P651699661735801200

namespace A192923

/-- `floor(sqrt(A240573(∑[n+1])))` -/
def P651699661735801200.Spec : Prop :=
  ∀ n, P651699661735801200.a n = A192923 n

end A192923

/-! ## A192923.P13099310113312230706

`A071840(A166868(n))`
-/

namespace A192923.P13099310113312230706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (A166868 n).toNat

end

end A192923.P13099310113312230706

namespace A192923

/-- `A071840(A166868(n))` -/
def P13099310113312230706.Spec : Prop :=
  ∀ n, P13099310113312230706.a n = A192923 n

end A192923

/-!
# A192924: Constant term in the reduction by (x^2->x+1) of the polynomial p(n,x) defined below at Comments.

The programs for A192924, there is no canonical definition to state claims against.
-/

/-! ## A192924.P3494180344631592265

`xor(A004525(A185621(n)), A249576(n))`
-/

namespace A192924.P3494180344631592265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004525 (A185621 n).toNat) (A249576 n)

end

end A192924.P3494180344631592265

/-! ## A192924.P13973216147486142800

`A358848(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A192924.P13973216147486142800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n a =>
  A358848 (a (n - 1)).toNat

end

end A192924.P13973216147486142800

/-!
# A192925: Coefficient of x in the reduction by (x^2->x+1) of the polynomial p(n,x) defined below at Comments.

The programs for A192925, there is no canonical definition to state claims against.
-/

/-! ## A192925.P15731858146144420040

`record[A350354(n)-A305857(n)%3]`
-/

namespace A192925.P15731858146144420040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350354 n - Int.tmod (A305857 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192925.P15731858146144420040

/-! ## A192925.P16179473286506694055

`A289618(A121555(n+1))+(n-1)!+n*a(n-1)` with `a(0)=0`
-/

namespace A192925.P16179473286506694055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289618 (A121555 (n + 1)).toNat + ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (n : ℤ) * a (n - 1))

end

end A192925.P16179473286506694055

/-! ## A192925.P11562998118114839261

`A351007(A090899(n+1))+A000254(n)`
-/

namespace A192925.P11562998118114839261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351007 (A090899 (n + 1)).toNat + A000254 n

end

end A192925.P11562998118114839261

/-!
# A192926: Sums of two or more distinct prime cubes.

The programs for A192926, there is no canonical definition to state claims against.
-/

/-! ## A192926.P14663547514869950432

`A213519(A057716(n+1)+1)`
-/

namespace A192926.P14663547514869950432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213519 (A057716 (n + 1) + 1).toNat

end

end A192926.P14663547514869950432

/-! ## A192926.P12105548702094786667

`A213519(A138591(n+2)+1)`
-/

namespace A192926.P12105548702094786667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213519 (A138591 (n + 2) + 1).toNat

end

end A192926.P12105548702094786667

/-! ## A192926.P3442368544188287599

`filter[A213519(n+2), A132350(#)]`
-/

namespace A192926.P3442368544188287599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213519 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A192926.P3442368544188287599

/-! ## A192926.P2338285106531341750

`A213519(lt[n, A272090(n+1)])`
-/

namespace A192926.P2338285106531341750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213519 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A192926.P2338285106531341750

/-! ## A192926.P18025845124643505632

`A213519(lt[A000265(n+4), A339809(n)])`
-/

namespace A192926.P18025845124643505632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213519 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A192926.P18025845124643505632

/-!
# A192927: Number of meanders of order n, with 1-1 cut.

The programs for A192927, there is no canonical definition to state claims against.
-/

/-! ## A192927.P3015197766819575811

`A008828(A000124(n))-A208358(n+1)`
-/

namespace A192927.P3015197766819575811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008828 (A000124 n).toNat - A208358 (n + 1)

end

end A192927.P3015197766819575811

/-! ## A192927.P1970413391915406986

`A181821(n+1)*A328592(A000110(n))`
-/

namespace A192927.P1970413391915406986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1) * A328592 (A000110 n).toNat

end

end A192927.P1970413391915406986

/-!
# A192928: The Gi1 and Gi2 sums of Losanitsch's triangle A034851.

The programs for A192928, there is no canonical definition to state claims against.
-/

/-! ## A192928.P18011379214345011484

`A137735(2*floor(C(n+1, floor(n/2))/(n+1))+1)`
-/

namespace A192928.P18011379214345011484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (2 * ⌊(Nat.choose (n + 1) ⌊(n : ℚ) / 2⌋.toNat : ℚ) / (n + 1 : ℚ)⌋ + 1).toNat

end

end A192928.P18011379214345011484

/-! ## A192928.P6712751229257753455

`A000196(A089408(n+2))`
-/

namespace A192928.P6712751229257753455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A089408 (n + 2)).toNat

end

end A192928.P6712751229257753455

/-! ## A192928.P15404149574776866022

`A000196(2*A028304(n))`
-/

namespace A192928.P15404149574776866022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * A028304 n).toNat

end

end A192928.P15404149574776866022

/-! ## A192928.P17039561962690821534

`A094683(2*A028304(n))`
-/

namespace A192928.P17039561962690821534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094683 (2 * A028304 n).toNat

end

end A192928.P17039561962690821534

/-! ## A192928.P7290959141526867827

`A178786(2*A028304(n))`
-/

namespace A192928.P7290959141526867827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (2 * A028304 n).toNat

end

end A192928.P7290959141526867827

/-!
# A192929: Least highly abundant number with n distinct prime factors.

The programs for A192929, there is no canonical definition to state claims against.
-/

/-! ## A192929.P8489784983850355287

`A001227(A054962(n))*A002110(n)`
-/

namespace A192929.P8489784983850355287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A054962 n).toNat * A002110 n

end

end A192929.P8489784983850355287

/-! ## A192929.P416555559116335948

`A002110(n)*A216321(A333680(n)/(n+1))`
-/

namespace A192929.P416555559116335948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A216321 (SequenceMachineLib.roundAway ((A333680 n : ℚ) / (n + 1 : ℚ))).toNat

end

end A192929.P416555559116335948

/-! ## A192929.P1653347004952791840

`A168264(A095233(n+1))`
-/

namespace A192929.P1653347004952791840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168264 (A095233 (n + 1)).toNat

end

end A192929.P1653347004952791840

/-! ## A192929.P7137473225178506576

`A168264(A062434(n+2))`
-/

namespace A192929.P7137473225178506576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168264 (A062434 (n + 2)).toNat

end

end A192929.P7137473225178506576

/-!
# A192931: Numbers n for which A193262(n)=0.

The programs for A192931, there is no canonical definition to state claims against.
-/

/-! ## A192931.P12721710777059379787

`lt[A193262(n+1), 1]+1`
-/

namespace A192931.P12721710777059379787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193262 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192931.P12721710777059379787

/-! ## A192931.P15890451708218183322

`eq[0, A193262(A028310(n))]`
-/

namespace A192931.P15890451708218183322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193262 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192931.P15890451708218183322

/-! ## A192931.P1812837181460701001

`A153152(eq[0, A193262(n+1)])`
-/

namespace A192931.P1812837181460701001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192931.P1812837181460701001

/-! ## A192931.P16740663201118001698

`eq[0, A193262(A233583(n+1))]`
-/

namespace A192931.P16740663201118001698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193262 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192931.P16740663201118001698

/-! ## A192931.P10866966558706321454

`A153152(lt[A193262(n+1), 1])`
-/

namespace A192931.P10866966558706321454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193262 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A192931.P10866966558706321454

/-!
# A192932: Squares of numbers in Perrin sequence.

The programs for A192932, the canonical program `A192932.P17271397866938834624` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192932 has offset 0).

The definition of A192932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192932.P17271397866938834624

`A001608(n)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192932

/-- `A001608(n)²` -/
def P17271397866938834624.Spec : Prop :=
  ∀ n, P17271397866938834624.a n = A192932 n

theorem P17271397866938834624.correct : P17271397866938834624.Spec := by
  intro n
  simp only [A192932]

end A192932

/-! ## A192932.P16330941458577586880

`Δ[a(n-2)+a(n-3)]²` with `a(0)=2, a(1)=5, a(2)=5`
-/

namespace A192932.P16330941458577586880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 5] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A192932.P16330941458577586880

namespace A192932

/-- `Δ[a(n-2)+a(n-3)]²` -/
def P16330941458577586880.Spec : Prop :=
  ∀ n, P16330941458577586880.a n = A192932 n

end A192932

/-! ## A192932.P16380380165672933153

`Δ[a(n-3)+a(n-2)]^2` with `a(0)=2, a(1)=5, a(2)=5`
-/

namespace A192932.P16380380165672933153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 5] fun n f1 =>
  f1 (n - 3) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A192932.P16380380165672933153

namespace A192932

/-- `Δ[a(n-3)+a(n-2)]^2` -/
def P16380380165672933153.Spec : Prop :=
  ∀ n, P16380380165672933153.a n = A192932 n

end A192932

/-! ## A192932.P180890123401079870

`∑[a(n-2)+a(n-3)]²` with `a(0)=3, a(1)=-3, a(2)=2, a(3)=1`
-/

namespace A192932.P180890123401079870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -3, 2, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A192932.P180890123401079870

namespace A192932

/-- `∑[a(n-2)+a(n-3)]²` -/
def P180890123401079870.Spec : Prop :=
  ∀ n, P180890123401079870.a n = A192932 n

end A192932

/-! ## A192932.P6322846958701423317

`(1-∑[a(n-2)-a(n-3)])²` with `a(0)=-2, a(1)=3, a(2)=-2`
-/

namespace A192932.P6322846958701423317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 3, -2] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A192932.P6322846958701423317

namespace A192932

/-- `(1-∑[a(n-2)-a(n-3)])²` -/
def P6322846958701423317.Spec : Prop :=
  ∀ n, P6322846958701423317.a n = A192932 n

end A192932

/-! ## A192932.P16627425495318555184

`Δ[A290612(n+5)]²`
-/

namespace A192932.P16627425495318555184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290612 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A192932.P16627425495318555184

namespace A192932

/-- `Δ[A290612(n+5)]²` -/
def P16627425495318555184.Spec : Prop :=
  ∀ n, P16627425495318555184.a n = A192932 n

end A192932

/-! ## A192932.P3948377429103856720

`(A141038(n)+A078027(n))²`
-/

namespace A192932.P3948377429103856720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141038 n + A078027 n) ^ 2

end

end A192932.P3948377429103856720

namespace A192932

/-- `(A141038(n)+A078027(n))²` -/
def P3948377429103856720.Spec : Prop :=
  ∀ n, P3948377429103856720.a n = A192932 n

end A192932

/-! ## A192932.P10553827597810044292

`(A001945(n)-A078712(n))²`
-/

namespace A192932.P10553827597810044292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001945 n - A078712 n) ^ 2

end

end A192932.P10553827597810044292

namespace A192932

/-- `(A001945(n)-A078712(n))²` -/
def P10553827597810044292.Spec : Prop :=
  ∀ n, P10553827597810044292.a n = A192932 n

end A192932

/-! ## A192932.P16553619773949181110

`(A000931(n)+2*A182097(n))²`
-/

namespace A192932.P16553619773949181110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000931 n + 2 * A182097 n) ^ 2

end

end A192932.P16553619773949181110

namespace A192932

/-- `(A000931(n)+2*A182097(n))²` -/
def P16553619773949181110.Spec : Prop :=
  ∀ n, P16553619773949181110.a n = A192932 n

end A192932

/-! ## A192932.P16917926933572233769

`A001608(n)^A020639(2*(n+1))`
-/

namespace A192932.P16917926933572233769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001608 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A192932.P16917926933572233769

namespace A192932

/-- `A001608(n)^A020639(2*(n+1))` -/
def P16917926933572233769.Spec : Prop :=
  ∀ n, P16917926933572233769.a n = (A192932 n : ℚ)

end A192932

/-! ## A192932.P8393911510948052460

`(A127682(2*(n+1))+Δ[A078027(n+1)])²`
-/

namespace A192932.P8393911510948052460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127682 (2 * (n + 1)) + (f1 (n + 1) - f1 n)) ^ 2

end

end A192932.P8393911510948052460

namespace A192932

/-- `(A127682(2*(n+1))+Δ[A078027(n+1)])²` -/
def P8393911510948052460.Spec : Prop :=
  ∀ n, P8393911510948052460.a n = A192932 n

end A192932

/-! ## A192932.P3196933720284588204

`(A134816(n+1)+A078027(n)+A000931(n))²`
-/

namespace A192932.P3196933720284588204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A134816 (n + 1) + (A078027 n + A000931 n)) ^ 2

end

end A192932.P3196933720284588204

namespace A192932

/-- `(A134816(n+1)+A078027(n)+A000931(n))²` -/
def P3196933720284588204.Spec : Prop :=
  ∀ n, P3196933720284588204.a n = A192932 n

end A192932

/-! ## A192932.P9886814904943234878

`A306646(∑[n+2]-1)²`
-/

namespace A192932.P9886814904943234878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A192932.P9886814904943234878

namespace A192932

/-- `A306646(∑[n+2]-1)²` -/
def P9886814904943234878.Spec : Prop :=
  ∀ n, P9886814904943234878.a n = A192932 n

end A192932

/-!
# A192933: Triangle read by rows: T(n,k) = Sum_{i <= n, j <= k, (i,j) <> (n,k)} T(i,j), starting with T(1,1) = 1, for n >= 1 and 1 <= k <= n.

The programs for A192933, there is no canonical definition to state claims against.
-/

/-! ## A192933.P11933383069166194188

`2^(n-C(∑[char[∑[n]]], 2))*A130743(n)`
-/

namespace A192933.P11933383069166194188
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A130743 n : ℚ)

end

end A192933.P11933383069166194188

/-! ## A192933.P9344628449539252289

`A059268(n)*A130743(n)`
-/

namespace A192933.P9344628449539252289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A130743 n

end

end A192933.P9344628449539252289

/-! ## A192933.P11230089487984089195

`2^A002262(n)*A130743(n)`
-/

namespace A192933.P11230089487984089195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A130743 n : ℚ)

end

end A192933.P11230089487984089195

/-! ## A192933.P10452982927425633996

`A000079(A002262(n))*A130743(n)`
-/

namespace A192933.P10452982927425633996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A130743 n

end

end A192933.P10452982927425633996

/-! ## A192933.P14467664418515173984

`A013620(A112367(n))*A130743(n)`
-/

namespace A192933.P14467664418515173984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 (A112367 n).toNat * A130743 n

end

end A192933.P14467664418515173984

/-! ## A192933.P11832896562103241145

`A048896(A089633(n))*A130743(n)`
-/

namespace A192933.P11832896562103241145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A089633 n).toNat * A130743 n

end

end A192933.P11832896562103241145

/-! ## A192933.P16564061342246198298

`A130321(A061579(n))*A130743(n)`
-/

namespace A192933.P16564061342246198298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat * A130743 n

end

end A192933.P16564061342246198298

/-! ## A192933.P4621577189880381749

`A130321(A286147(n))*A130743(n)`
-/

namespace A192933.P4621577189880381749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A286147 n).toNat * A130743 n

end

end A192933.P4621577189880381749

/-! ## A192933.P9341642072110235431

`A011782(A002260(n+1))*A130743(n)`
-/

namespace A192933.P9341642072110235431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A130743 n

end

end A192933.P9341642072110235431

/-!
# A192934: Smallest square number starting with (at least) n identical digits.

The programs for A192934, there is no canonical definition to state claims against.
-/

/-! ## A192934.P12356059678331073186

`A119998(n+1)²`
-/

namespace A192934.P12356059678331073186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119998 (n + 1) ^ 2

end

end A192934.P12356059678331073186

/-! ## A192934.P8966318806214676547

`A119998(n+1)^ratio[A011782(n)]`
-/

namespace A192934.P8966318806214676547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A119998 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A192934.P8966318806214676547

/-! ## A192934.P9543455929514433417

`A119998(n+1)^A014963(A001316(n))`
-/

namespace A192934.P9543455929514433417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119998 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A192934.P9543455929514433417

/-! ## A192934.P6165782541938829112

`A119998(n+1)^A020639(A008458(n))`
-/

namespace A192934.P6165782541938829112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119998 (n + 1) : ℚ) ^ (A020639 (A008458 n).toNat : ℤ)

end

end A192934.P6165782541938829112

/-! ## A192934.P2459935780896949003

`A119998(n+1)^A020639(A036689(n+1))`
-/

namespace A192934.P2459935780896949003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119998 (n + 1) : ℚ) ^ (A020639 (A036689 (n + 1)).toNat : ℤ)

end

end A192934.P2459935780896949003

/-! ## A192934.P6048422151226227689

`A119998(n+1)^A000005(A062291(n+1))`
-/

namespace A192934.P6048422151226227689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119998 (n + 1) : ℚ) ^ (A000005 (A062291 (n + 1)).toNat : ℤ)

end

end A192934.P6048422151226227689

/-!
# A192935: E.g.f.: Sum_{n>=0} ((1+x)^n - 1)^n / n!.

The programs for A192935, there is no canonical definition to state claims against.
-/

/-! ## A192935.P304758700745455849

`A183302(n!²)`
-/

namespace A192935.P304758700745455849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183302 (Nat.factorial n ^ 2)

end

end A192935.P304758700745455849

/-!
# A192936: Constant term of the reduction by x^2 -> x + 1 of the polynomial p(n,x) = Product_{k=1..n} (x+k).

The programs for A192936, there is no canonical definition to state claims against.
-/

/-! ## A192936.P1068401487034182075

`or(1, A192239(n+1))`
-/

namespace A192936.P1068401487034182075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A192239 (n + 1))

end

end A192936.P1068401487034182075

/-! ## A192936.P9698734445253045049

`A192239(floor(acot(n)+n)+1)`
-/

namespace A192936.P9698734445253045049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192239 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ + 1).toNat

end

end A192936.P9698734445253045049

/-! ## A192936.P17529994193330922973

`A192239(floor(acot(n))-xor(n, -1))`
-/

namespace A192936.P17529994193330922973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192239 (⌊SequenceMachineLib.acot (n : ℝ)⌋ - Int.xor (n : ℤ) (-1)).toNat

end

end A192936.P17529994193330922973

/-! ## A192936.P5519571482971508621

`A192239(C(2, n+2)+n+1)`
-/

namespace A192936.P5519571482971508621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192239 (Nat.choose 2 (n + 2) + n + 1)

end

end A192936.P5519571482971508621

/-! ## A192936.P5671773515482407814

`A192239(A028310(n)+1)`
-/

namespace A192936.P5671773515482407814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192239 (A028310 n + 1).toNat

end

end A192936.P5671773515482407814

/-! ## A192936.P12378189959749024418

`A192239(A233583(n+2))`
-/

namespace A192936.P12378189959749024418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192239 (A233583 (n + 2)).toNat

end

end A192936.P12378189959749024418

/-! ## A192936.P16883864490803037542

`A192239(n+1)+A000007(n)`
-/

namespace A192936.P16883864490803037542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192239 (n + 1) + A000007 n

end

end A192936.P16883864490803037542

/-! ## A192936.P1736239172239985789

`A265165(n+2)-A306183(n)`
-/

namespace A192936.P1736239172239985789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265165 (n + 2) - A306183 n

end

end A192936.P1736239172239985789

/-! ## A192936.P9443237253968672166

`A225569(n²)+A192239(n+1)`
-/

namespace A192936.P9443237253968672166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225569 (n ^ 2) + A192239 (n + 1)

end

end A192936.P9443237253968672166

/-! ## A192936.P650215288748034748

`A209229(n²+2)+A192239(n+1)`
-/

namespace A192936.P650215288748034748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n ^ 2 + 2) + A192239 (n + 1)

end

end A192936.P650215288748034748

/-!
# A192937: a(n) = 100*a(n-1) - (n-1) with a(1)=100.

The programs for A192937, there is no canonical definition to state claims against.
-/

/-! ## A192937.P3733335623256173515

`A094028(n+1)-∑[A094028(n)]`
-/

namespace A192937.P3733335623256173515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094028 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192937.P3733335623256173515

/-! ## A192937.P3187423439679134444

`A094028(n+1)-A030512(n+1)`
-/

namespace A192937.P3187423439679134444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094028 (n + 1) - A030512 (n + 1)

end

end A192937.P3187423439679134444

/-! ## A192937.P10516361218513422924

`A056830(2*n+3)-A030512(n+1)`
-/

namespace A192937.P10516361218513422924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (2 * n + 3) - A030512 (n + 1)

end

end A192937.P10516361218513422924

/-! ## A192937.P5712281962737756063

`Δ[A030512(n+1)]-∑[A156641(n)/13]`
-/

namespace A192937.P5712281962737756063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030512 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156641 n : ℚ) / 13

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A192937.P5712281962737756063

/-! ## A192937.P15129032608585796817

`Δ[A030512(n+1)]-∑[A163662(n+1)]/10`
-/

namespace A192937.P15129032608585796817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163662 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 10

end

end A192937.P15129032608585796817

/-!
# A192939: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x)=(x+2)(x+4)...(x+2n).

The programs for A192939, there is no canonical definition to state claims against.
-/

/-! ## A192939.P15880238748202916237

`A004726(record[A053871(n)])`
-/

namespace A192939.P15880238748202916237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004726 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192939.P15880238748202916237

/-! ## A192939.P3508844957897500512

`A004727(record[A055140(n)])`
-/

namespace A192939.P3508844957897500512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004727 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192939.P3508844957897500512

/-!
# A192940: Coefficient of x in the reduction by x^2->x+1 of the polynomial p(n,x)=(x+2)(x+4)...(x+2n).

The programs for A192940, there is no canonical definition to state claims against.
-/

/-! ## A192940.P14258991487975662611

`A192939(n+1)%A004277(A192939(n))`
-/

namespace A192940.P14258991487975662611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192939 (n + 1)) (A004277 (A192939 n).toNat)

end

end A192940.P14258991487975662611

/-!
# A192941: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x)=(2x+1)(2x+2)...(2x+n).

The programs for A192941, there is no canonical definition to state claims against.
-/

/-! ## A192941.P10936164751154008917

`A199877(n)+A057366(A167018(n))`
-/

namespace A192941.P10936164751154008917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199877 n + A057366 (A167018 n).toNat

end

end A192941.P10936164751154008917

/-!
# A192942: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x)=(2x+1)(2x+2)...(2x+n).

The programs for A192942, there is no canonical definition to state claims against.
-/

/-! ## A192942.P11158863320562897623

`2*A192950(n)`
-/

namespace A192942.P11158863320562897623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192950 n

end

end A192942.P11158863320562897623

/-! ## A192942.P10322115439299660082

`A192950(n)+A192950(n%(n+1))`
-/

namespace A192942.P10322115439299660082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192950 n + A192950 (n % (n + 1))

end

end A192942.P10322115439299660082

/-! ## A192942.P1606271760093638906

`A192950(A118759(n))+A192950(n)`
-/

namespace A192942.P1606271760093638906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192950 (A118759 n).toNat + A192950 n

end

end A192942.P1606271760093638906

/-! ## A192942.P1120157331811300916

`A192950(sqrt(A000290(n)))+A192950(n)`
-/

namespace A192942.P1120157331811300916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192950 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + A192950 n

end

end A192942.P1120157331811300916

/-! ## A192942.P7106632141998714329

`A192950(A023443(n+1))+A192950(n)`
-/

namespace A192942.P7106632141998714329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192950 (A023443 (n + 1)).toNat + A192950 n

end

end A192942.P7106632141998714329

/-!
# A192943: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x)=(x+1)(x+2)...(x+F(n+1)), where F=A000045, the Fibonacci sequence.

The programs for A192943, there is no canonical definition to state claims against.
-/

/-! ## A192943.P3052258393263511636

`A005378(Δ[A141713(n)])`
-/

namespace A192943.P3052258393263511636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (f1 (n + 1) - f1 n).toNat

end

end A192943.P3052258393263511636

/-! ## A192943.P4028004207151907861

`A035528(∑[A001055(5^n)])`
-/

namespace A192943.P4028004207151907861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (5 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035528 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192943.P4028004207151907861

/-!
# A192944: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x)=(x+1)(x+2)...(x+F(n+1)), where F=A000045, the Fibonacci sequence.

The programs for A192944, there is no canonical definition to state claims against.
-/

/-! ## A192944.P9285843792931712248

`A246552(or(n, A167144(n)))`
-/

namespace A192944.P9285843792931712248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (Int.lor (n : ℤ) (A167144 n)).toNat

end

end A192944.P9285843792931712248

/-! ## A192944.P9078065891011254131

`A002265(A167144(n)+2*n)`
-/

namespace A192944.P9078065891011254131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A167144 n + (2 * n : ℤ)).toNat

end

end A192944.P9078065891011254131

/-!
# A192945: G.f. A(x) satisfies A(x) = 1 + x*Sum_{n>=0} (A(x)^2 - 1)^n.

The programs for A192945, there is no canonical definition to state claims against.
-/

/-! ## A192945.P5014999382719421043

`A049820(A013999(n))+A000111(n+1)`
-/

namespace A192945.P5014999382719421043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (A013999 n).toNat + A000111 (n + 1)

end

end A192945.P5014999382719421043

/-! ## A192945.P16893340117928702611

`A102423(A006129(n))+A097204(n)`
-/

namespace A192945.P16893340117928702611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102423 (A006129 n).toNat + A097204 n

end

end A192945.P16893340117928702611

/-!
# A192946: G.f. satisfies: A(x) = 1 + x*Sum_{n>=0} (A(x)^3 - 1)^n.

The programs for A192946, there is no canonical definition to state claims against.
-/

/-! ## A192946.P13911222952581294548

`A065033(A052814(n)+A052798(n))`
-/

namespace A192946.P13911222952581294548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A052814 n + A052798 n).toNat

end

end A192946.P13911222952581294548

/-! ## A192946.P56615509068800996

`A110654(A052814(n)+A052798(n))`
-/

namespace A192946.P56615509068800996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A052814 n + A052798 n).toNat

end

end A192946.P56615509068800996

/-!
# A192947: G.f. satisfies: A(x) = 1 + x*Sum_{n>=0} (A(x)^4 - 1)^n.

The programs for A192947, there is no canonical definition to state claims against.
-/

/-! ## A192947.P7746443349168511410

`A265640(A064063(n))+A201025(n+1)`
-/

namespace A192947.P7746443349168511410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (A064063 n).toNat + A201025 (n + 1)

end

end A192947.P7746443349168511410

/-!
# A192948: G.f. satisfies: A(x) = 1 + x*Sum_{n>=0} (A(x)^5 - 1)^n.

The programs for A192948, there is no canonical definition to state claims against.
-/

/-! ## A192948.P5115690771189812754

`A014682(A120597(n))-A247223(n)`
-/

namespace A192948.P5115690771189812754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A120597 n).toNat - A247223 n

end

end A192948.P5115690771189812754

/-!
# A192949: E.g.f. A(x) satisfies A(x) = 1 + x*Sum_{n>=0} (A(x)^2 - 1)^n/n!.

The programs for A192949, there is no canonical definition to state claims against.
-/

/-! ## A192949.P5584097480472979569

`A088462(∏[n²+1])`
-/

namespace A192949.P5584097480472979569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A192949.P5584097480472979569

/-!
# A192950: a(n) = A192942(n)/2.

The programs for A192950, there is no canonical definition to state claims against.
-/

/-! ## A192950.P10098918453730832300

`A192942(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192950.P10098918453730832300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192942 n : ℚ) / 2

end

end A192950.P10098918453730832300

/-! ## A192950.P72011119205171050

`A014682(A192942(n))`
-/

namespace A192950.P72011119205171050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A192942 n).toNat

end

end A192950.P72011119205171050

/-! ## A192950.P11421103715562011234

`A273943(A000034(2*(n+1))*A192942(n))`
-/

namespace A192950.P11421103715562011234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A000034 (2 * (n + 1)) * A192942 n).toNat

end

end A192950.P11421103715562011234

/-!
# A192951: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192951, the canonical program `A192951.P17679009694418664798` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192951 has offset 0).

The definition of A192951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192951.P17679009694418664798

`A000285(n+2)-3*n-5`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192951

/-- `A000285(n+2)-3*n-5` -/
def P17679009694418664798.Spec : Prop :=
  ∀ n, P17679009694418664798.a n = A192951 n

theorem P17679009694418664798.correct : P17679009694418664798.Spec := by
  intro n
  simp only [A192951]

end A192951

/-! ## A192951.P8513977007785532319

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A192951.P8513977007785532319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 9] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + a (n - 4)

end

end A192951.P8513977007785532319

namespace A192951

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P8513977007785532319.Spec : Prop :=
  ∀ n, P8513977007785532319.a n = A192951 n

end A192951

/-! ## A192951.P2906739650511600482

`∑[a(n-1)+a(n-2)+3]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A192951.P2906739650511600482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192951.P2906739650511600482

namespace A192951

/-- `∑[a(n-1)+a(n-2)+3]` -/
def P2906739650511600482.Spec : Prop :=
  ∀ n, (P2906739650511600482.a n : ℤ) = A192951 n

end A192951

/-! ## A192951.P261530410276409880

`2*a(n-1)+3-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A192951.P261530410276409880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  2 * a (n - 1) + (3 - a (n - 3))

end

end A192951.P261530410276409880

namespace A192951

/-- `2*a(n-1)+3-a(n-3)` -/
def P261530410276409880.Spec : Prop :=
  ∀ n, P261530410276409880.a n = A192951 n

end A192951

/-! ## A192951.P18163975502340626837

`2*a(n-1)-(a(n-3)-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A192951.P18163975502340626837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 3)

end

end A192951.P18163975502340626837

namespace A192951

/-- `2*a(n-1)-(a(n-3)-3)` -/
def P18163975502340626837.Spec : Prop :=
  ∀ n, P18163975502340626837.a n = A192951 n

end A192951

/-! ## A192951.P4213243020424241658

`2-∑[a(n-1)-(3-a(n-2))]` with `a(0)=2, a(1)=-1`
-/

namespace A192951.P4213243020424241658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192951.P4213243020424241658

namespace A192951

/-- `2-∑[a(n-1)-(3-a(n-2))]` -/
def P4213243020424241658.Spec : Prop :=
  ∀ n, P4213243020424241658.a n = A192951 n

end A192951

/-! ## A192951.P16859208618609875431

`a(n-1)+a(n-1)+3-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A192951.P16859208618609875431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (3 - a (n - 3)))

end

end A192951.P16859208618609875431

namespace A192951

/-- `a(n-1)+a(n-1)+3-a(n-3)` -/
def P16859208618609875431.Spec : Prop :=
  ∀ n, P16859208618609875431.a n = A192951 n

end A192951

/-! ## A192951.P12317292713850682436

`3-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A192951.P12317292713850682436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  3 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A192951.P12317292713850682436

namespace A192951

/-- `3-(a(n-3)-a(n-1)-a(n-1))` -/
def P12317292713850682436.Spec : Prop :=
  ∀ n, P12317292713850682436.a n = A192951 n

end A192951

/-! ## A192951.P17967915810030687592

`A192981(n+1)-n`
-/

namespace A192951.P17967915810030687592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 (n + 1) - (n : ℤ)

end

end A192951.P17967915810030687592

namespace A192951

/-- `A192981(n+1)-n` -/
def P17967915810030687592.Spec : Prop :=
  ∀ n, P17967915810030687592.a n = A192951 n

end A192951

/-! ## A192951.P12982235081191586978

`∑[A022308(n)-2]+2`
-/

namespace A192951.P12982235081191586978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A192951.P12982235081191586978

namespace A192951

/-- `∑[A022308(n)-2]+2` -/
def P12982235081191586978.Spec : Prop :=
  ∀ n, P12982235081191586978.a n = A192951 n

end A192951

/-! ## A192951.P5526508539079293411

`∑[A000285(n)-3]+2`
-/

namespace A192951.P5526508539079293411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A192951.P5526508539079293411

namespace A192951

/-- `∑[A000285(n)-3]+2` -/
def P5526508539079293411.Spec : Prop :=
  ∀ n, P5526508539079293411.a n = A192951 n

end A192951

/-! ## A192951.P15140977306523085768

`n²-n+A192982(n)`
-/

namespace A192951.P15140977306523085768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) + A192982 n

end

end A192951.P15140977306523085768

namespace A192951

/-- `n²-n+A192982(n)` -/
def P15140977306523085768.Spec : Prop :=
  ∀ n, P15140977306523085768.a n = A192951 n

end A192951

/-! ## A192951.P14154149750900226324

`∑[n]+A192966(n)-n`
-/

namespace A192951.P14154149750900226324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A192966 n - (n : ℤ))

end

end A192951.P14154149750900226324

namespace A192951

/-- `∑[n]+A192966(n)-n` -/
def P14154149750900226324.Spec : Prop :=
  ∀ n, P14154149750900226324.a n = A192951 n

end A192951

/-! ## A192951.P10185686009289722127

`A030119(n+1)-Δ[n²]`
-/

namespace A192951.P10185686009289722127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A192951.P10185686009289722127

namespace A192951

/-- `A030119(n+1)-Δ[n²]` -/
def P10185686009289722127.Spec : Prop :=
  ∀ n, P10185686009289722127.a n = A192951 n

end A192951

/-! ## A192951.P16895326626296429551

`A171516(n+1)-(3*n+2)`
-/

namespace A192951.P16895326626296429551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 (n + 1) - (3 * n + 2 : ℤ)

end

end A192951.P16895326626296429551

namespace A192951

/-- `A171516(n+1)-(3*n+2)` -/
def P16895326626296429551.Spec : Prop :=
  ∀ n, P16895326626296429551.a n = A192951 n

end A192951

/-! ## A192951.P12164343245218494530

`A065220(n)+A001891(n)`
-/

namespace A192951.P12164343245218494530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A001891 n

end

end A192951.P12164343245218494530

namespace A192951

/-- `A065220(n)+A001891(n)` -/
def P12164343245218494530.Spec : Prop :=
  ∀ n, P12164343245218494530.a n = A192951 n

end A192951

/-! ## A192951.P9442741647687081496

`A192966(n)+A161680(n)`
-/

namespace A192951.P9442741647687081496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192966 n + A161680 n

end

end A192951.P9442741647687081496

namespace A192951

/-- `A192966(n)+A161680(n)` -/
def P9442741647687081496.Spec : Prop :=
  ∀ n, P9442741647687081496.a n = A192951 n

end A192951

/-! ## A192951.P14457239256458155036

`A053311(n)-A016777(n)`
-/

namespace A192951.P14457239256458155036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 n - A016777 n

end

end A192951.P14457239256458155036

namespace A192951

/-- `A053311(n)-A016777(n)` -/
def P14457239256458155036.Spec : Prop :=
  ∀ n, P14457239256458155036.a n = A192951 n

end A192951

/-!
# A192952: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192952, the canonical program `A192952.P9322582250482871052` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192952 has offset 0).

The definition of A192952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192952.P9322582250482871052

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192952

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P9322582250482871052.Spec : Prop :=
  ∀ n, P9322582250482871052.a n = A192952 n

theorem P9322582250482871052.correct : P9322582250482871052.Spec := by
  intro n
  simp only [A192952]

end A192952

/-! ## A192952.P13466998820286782876

`∑[a(n-1)+a(n-2)+3]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A192952.P13466998820286782876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192952.P13466998820286782876

namespace A192952

/-- `∑[a(n-1)+a(n-2)+3]` -/
def P13466998820286782876.Spec : Prop :=
  ∀ n, (P13466998820286782876.a n : ℤ) = A192952 n

end A192952

/-! ## A192952.P6896325574659490698

`3-∑[a(n-1)-(3-a(n-2))]` with `a(0)=3, a(1)=-1`
-/

namespace A192952.P6896325574659490698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192952.P6896325574659490698

namespace A192952

/-- `3-∑[a(n-1)-(3-a(n-2))]` -/
def P6896325574659490698.Spec : Prop :=
  ∀ n, P6896325574659490698.a n = A192952 n

end A192952

/-! ## A192952.P13956309542664253567

`a(n-1)+a(n-1)+3-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A192952.P13956309542664253567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (3 - a (n - 3)))

end

end A192952.P13956309542664253567

namespace A192952

/-- `a(n-1)+a(n-1)+3-a(n-3)` -/
def P13956309542664253567.Spec : Prop :=
  ∀ n, P13956309542664253567.a n = A192952 n

end A192952

/-! ## A192952.P14392288499631008867

`3-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A192952.P14392288499631008867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  3 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A192952.P14392288499631008867

namespace A192952

/-- `3-(a(n-3)-a(n-1)-a(n-1))` -/
def P14392288499631008867.Spec : Prop :=
  ∀ n, P14392288499631008867.a n = A192952 n

end A192952

/-! ## A192952.P4627378804800258250

`2*A104161(n)-n`
-/

namespace A192952.P4627378804800258250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104161 n - (n : ℤ)

end

end A192952.P4627378804800258250

namespace A192952

/-- `2*A104161(n)-n` -/
def P4627378804800258250.Spec : Prop :=
  ∀ n, P4627378804800258250.a n = A192952 n

end A192952

/-! ## A192952.P12504168647761396809

`A022406(n)-3*(n+1)`
-/

namespace A192952.P12504168647761396809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 n - (3 * (n + 1) : ℤ)

end

end A192952.P12504168647761396809

namespace A192952

/-- `A022406(n)-3*(n+1)` -/
def P12504168647761396809.Spec : Prop :=
  ∀ n, P12504168647761396809.a n = A192952 n

end A192952

/-! ## A192952.P10957053777310265690

`2*A131269(n)-(n+2)`
-/

namespace A192952.P10957053777310265690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131269 n - (n + 2 : ℤ)

end

end A192952.P10957053777310265690

namespace A192952

/-- `2*A131269(n)-(n+2)` -/
def P10957053777310265690.Spec : Prop :=
  ∀ n, P10957053777310265690.a n = A192952 n

end A192952

/-! ## A192952.P15674382793118186047

`A192746(n)-(3*n+1)`
-/

namespace A192952.P15674382793118186047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192746 n - (3 * n + 1 : ℤ)

end

end A192952.P15674382793118186047

namespace A192952

/-- `A192746(n)-(3*n+1)` -/
def P15674382793118186047.Spec : Prop :=
  ∀ n, P15674382793118186047.a n = A192952 n

end A192952

/-! ## A192952.P308641815976142495

`∑[4*A000045(n)]-3*n`
-/

namespace A192952.P308641815976142495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (3 * n : ℤ)

end

end A192952.P308641815976142495

namespace A192952

/-- `∑[4*A000045(n)]-3*n` -/
def P308641815976142495.Spec : Prop :=
  ∀ n, P308641815976142495.a n = A192952 n

end A192952

/-! ## A192952.P10752589965952764866

`A022403(n+1)-3*(n+1)`
-/

namespace A192952.P10752589965952764866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 (n + 1) - (3 * (n + 1) : ℤ)

end

end A192952.P10752589965952764866

namespace A192952

/-- `A022403(n+1)-3*(n+1)` -/
def P10752589965952764866.Spec : Prop :=
  ∀ n, P10752589965952764866.a n = A192952 n

end A192952

/-! ## A192952.P12757609221488478015

`A355288(n+1)-3*(n+1)`
-/

namespace A192952.P12757609221488478015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355288 (n + 1) - (3 * (n + 1) : ℤ)

end

end A192952.P12757609221488478015

namespace A192952

/-- `A355288(n+1)-3*(n+1)` -/
def P12757609221488478015.Spec : Prop :=
  ∀ n, P12757609221488478015.a n = A192952 n

end A192952

/-! ## A192952.P1252984353910994076

`4*(A000045(n+2)-(n+1))+n`
-/

namespace A192952.P1252984353910994076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000045 (n + 2) - (n + 1 : ℤ)) + (n : ℤ)

end

end A192952.P1252984353910994076

namespace A192952

/-- `4*(A000045(n+2)-(n+1))+n` -/
def P1252984353910994076.Spec : Prop :=
  ∀ n, P1252984353910994076.a n = A192952 n

end A192952

/-! ## A192952.P6906726538235163294

`4*∑[A001611(n)-1]+1-Δ[n²]-n`
-/

namespace A192952.P6906726538235163294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - (n : ℤ)

end

end A192952.P6906726538235163294

namespace A192952

/-- `4*∑[A001611(n)-1]+1-Δ[n²]-n` -/
def P6906726538235163294.Spec : Prop :=
  ∀ n, P6906726538235163294.a n = A192952 n

end A192952

/-! ## A192952.P230981724595651188

`A020712(n)-A037141(n)`
-/

namespace A192952.P230981724595651188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n - A037141 n

end

end A192952.P230981724595651188

namespace A192952

/-- `A020712(n)-A037141(n)` -/
def P230981724595651188.Spec : Prop :=
  ∀ n, P230981724595651188.a n = A192952 n

end A192952

/-! ## A192952.P1617327314942861138

`A020732(n)+1-A037141(n)`
-/

namespace A192952.P1617327314942861138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n + (1 - A037141 n)

end

end A192952.P1617327314942861138

namespace A192952

/-- `A020732(n)+1-A037141(n)` -/
def P1617327314942861138.Spec : Prop :=
  ∀ n, P1617327314942861138.a n = A192952 n

end A192952

/-! ## A192952.P8526795991012178999

`A131300(n)+A065220(n+2)`
-/

namespace A192952.P8526795991012178999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131300 n + A065220 (n + 2)

end

end A192952.P8526795991012178999

namespace A192952

/-- `A131300(n)+A065220(n+2)` -/
def P8526795991012178999.Spec : Prop :=
  ∀ n, P8526795991012178999.a n = A192952 n

end A192952

/-! ## A192952.P4077336891195117548

`A192761(n)+A210673(n)-n`
-/

namespace A192952.P4077336891195117548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n + (A210673 n - (n : ℤ))

end

end A192952.P4077336891195117548

namespace A192952

/-- `A192761(n)+A210673(n)-n` -/
def P4077336891195117548.Spec : Prop :=
  ∀ n, P4077336891195117548.a n = A192952 n

end A192952

/-! ## A192952.P9015923598628510718

`A131300(n)+A192953(n)-A131269(n)`
-/

namespace A192952.P9015923598628510718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131300 n + (A192953 n - A131269 n)

end

end A192952.P9015923598628510718

namespace A192952

/-- `A131300(n)+A192953(n)-A131269(n)` -/
def P9015923598628510718.Spec : Prop :=
  ∀ n, P9015923598628510718.a n = A192952 n

end A192952

/-!
# A192953: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192953, the canonical program `A192953.P17417309066290700007` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192953 has offset 0).

The definition of A192953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192953.P17417309066290700007

`A131300(n)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192953

/-- `A131300(n)-1` -/
def P17417309066290700007.Spec : Prop :=
  ∀ n, P17417309066290700007.a n = A192953 n

theorem P17417309066290700007.correct : P17417309066290700007.Spec := by
  intro n
  simp only [A192953]

end A192953

/-! ## A192953.P3170865189854318015

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A192953.P3170865189854318015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + a (n - 4)

end

end A192953.P3170865189854318015

namespace A192953

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P3170865189854318015.Spec : Prop :=
  ∀ n, P3170865189854318015.a n = A192953 n

end A192953

/-! ## A192953.P4354518302345777909

`∑[a(n-1)+a(n-2)+2]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A192953.P4354518302345777909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192953.P4354518302345777909

namespace A192953

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P4354518302345777909.Spec : Prop :=
  ∀ n, (P4354518302345777909.a n : ℤ) = A192953 n

end A192953

/-! ## A192953.P11812698498215639864

`2*(a(n-1)+1)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A192953.P11812698498215639864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * (a (n - 1) + 1) - a (n - 3)

end

end A192953.P11812698498215639864

namespace A192953

/-- `2*(a(n-1)+1)-a(n-3)` -/
def P11812698498215639864.Spec : Prop :=
  ∀ n, P11812698498215639864.a n = A192953 n

end A192953

/-! ## A192953.P1896543165259149438

`2*a(n-1)-(a(n-3)-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A192953.P1896543165259149438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 2)

end

end A192953.P1896543165259149438

namespace A192953

/-- `2*a(n-1)-(a(n-3)-2)` -/
def P1896543165259149438.Spec : Prop :=
  ∀ n, P1896543165259149438.a n = A192953 n

end A192953

/-! ## A192953.P695077275665989546

`2-∑[a(n-1)-(2-a(n-2))]` with `a(0)=2, a(1)=-1`
-/

namespace A192953.P695077275665989546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192953.P695077275665989546

namespace A192953

/-- `2-∑[a(n-1)-(2-a(n-2))]` -/
def P695077275665989546.Spec : Prop :=
  ∀ n, P695077275665989546.a n = A192953 n

end A192953

/-! ## A192953.P12178661642359995599

`a(n-1)-3+a(n-2)+n+n` with `a(0)=0, a(1)=1`
-/

namespace A192953.P12178661642359995599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - 3 + (a (n - 2) + (n : ℤ) + (n : ℤ))

end

end A192953.P12178661642359995599

namespace A192953

/-- `a(n-1)-3+a(n-2)+n+n` -/
def P12178661642359995599.Spec : Prop :=
  ∀ n, P12178661642359995599.a n = A192953 n

end A192953

/-! ## A192953.P18155027913227370178

`a(n-1)-(3-a(n-2)-n-n)` with `a(0)=0, a(1)=1`
-/

namespace A192953.P18155027913227370178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (3 - a (n - 2) - (n : ℤ) - (n : ℤ))

end

end A192953.P18155027913227370178

namespace A192953

/-- `a(n-1)-(3-a(n-2)-n-n)` -/
def P18155027913227370178.Spec : Prop :=
  ∀ n, P18155027913227370178.a n = A192953 n

end A192953

/-! ## A192953.P8902117589255654335

`A192967(n+1)-n`
-/

namespace A192953.P8902117589255654335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 (n + 1) - (n : ℤ)

end

end A192953.P8902117589255654335

namespace A192953

/-- `A192967(n+1)-n` -/
def P8902117589255654335.Spec : Prop :=
  ∀ n, P8902117589255654335.a n = A192953 n

end A192953

/-! ## A192953.P4735033779163688146

`∑[A097135(n)-2]+1`
-/

namespace A192953.P4735033779163688146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192953.P4735033779163688146

namespace A192953

/-- `∑[A097135(n)-2]+1` -/
def P4735033779163688146.Spec : Prop :=
  ∀ n, P4735033779163688146.a n = A192953 n

end A192953

/-! ## A192953.P2653083410525810941

`∑[A022086(n)-2]+2`
-/

namespace A192953.P2653083410525810941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A192953.P2653083410525810941

namespace A192953

/-- `∑[A022086(n)-2]+2` -/
def P2653083410525810941.Spec : Prop :=
  ∀ n, P2653083410525810941.a n = A192953 n

end A192953

/-! ## A192953.P13722065745222077067

`∑[n]+A192968(n)-n`
-/

namespace A192953.P13722065745222077067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A192968 n - (n : ℤ))

end

end A192953.P13722065745222077067

namespace A192953

/-- `∑[n]+A192968(n)-n` -/
def P13722065745222077067.Spec : Prop :=
  ∀ n, P13722065745222077067.a n = A192953 n

end A192953

/-! ## A192953.P17686417446317801986

`A036999(n)-2*(n+3)`
-/

namespace A192953.P17686417446317801986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036999 n - (2 * (n + 3) : ℤ)

end

end A192953.P17686417446317801986

namespace A192953

/-- `A036999(n)-2*(n+3)` -/
def P17686417446317801986.Spec : Prop :=
  ∀ n, P17686417446317801986.a n = A192953 n

end A192953

/-! ## A192953.P5216793680576885784

`A111314(n+1)-Δ[n²]`
-/

namespace A192953.P5216793680576885784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A192953.P5216793680576885784

namespace A192953

/-- `A111314(n+1)-Δ[n²]` -/
def P5216793680576885784.Spec : Prop :=
  ∀ n, P5216793680576885784.a n = A192953 n

end A192953

/-! ## A192953.P1990216064272740218

`∑[3*A000045(n)]-2*n`
-/

namespace A192953.P1990216064272740218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A192953.P1990216064272740218

namespace A192953

/-- `∑[3*A000045(n)]-2*n` -/
def P1990216064272740218.Spec : Prop :=
  ∀ n, P1990216064272740218.a n = A192953 n

end A192953

/-! ## A192953.P17629359683227330720

`A377628(n+1)-2*(n+1)`
-/

namespace A192953.P17629359683227330720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 (n + 1) - (2 * (n + 1) : ℤ)

end

end A192953.P17629359683227330720

namespace A192953

/-- `A377628(n+1)-2*(n+1)` -/
def P17629359683227330720.Spec : Prop :=
  ∀ n, P17629359683227330720.a n = A192953 n

end A192953

/-! ## A192953.P6253012962229383652

`3*(A000045(n+2)-1)-2*n`
-/

namespace A192953.P6253012962229383652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000045 (n + 2) - 1) - (2 * n : ℤ)

end

end A192953.P6253012962229383652

namespace A192953

/-- `3*(A000045(n+2)-1)-2*n` -/
def P6253012962229383652.Spec : Prop :=
  ∀ n, P6253012962229383652.a n = A192953 n

end A192953

/-! ## A192953.P18362202355405135458

`A065220(n)+A001924(n)`
-/

namespace A192953.P18362202355405135458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A001924 n

end

end A192953.P18362202355405135458

namespace A192953

/-- `A065220(n)+A001924(n)` -/
def P18362202355405135458.Spec : Prop :=
  ∀ n, P18362202355405135458.a n = A192953 n

end A192953

/-! ## A192953.P18422776129101359752

`A192968(n)+A161680(n)`
-/

namespace A192953.P18422776129101359752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192968 n + A161680 n

end

end A192953.P18422776129101359752

namespace A192953

/-- `A192968(n)+A161680(n)` -/
def P18422776129101359752.Spec : Prop :=
  ∀ n, P18422776129101359752.a n = A192953 n

end A192953

/-!
# A192954: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192954, the canonical program `A192954.P6151483265708356681` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192954 has offset 0).

The definition of A192954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192954.P6151483265708356681

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192954

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P6151483265708356681.Spec : Prop :=
  ∀ n, P6151483265708356681.a n = A192954 n

theorem P6151483265708356681.correct : P6151483265708356681.Spec := by
  intro n
  simp only [A192954]

end A192954

/-! ## A192954.P260350947666833927

`∑[a(n-1)+a(n-2)+2]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A192954.P260350947666833927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192954.P260350947666833927

namespace A192954

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P260350947666833927.Spec : Prop :=
  ∀ n, (P260350947666833927.a n : ℤ) = A192954 n

end A192954

/-! ## A192954.P16234264679230766923

`n-∑[a(n-1)-(3-a(n-2))]` with `a(0)=-1, a(1)=1`
-/

namespace A192954.P16234264679230766923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192954.P16234264679230766923

namespace A192954

/-- `n-∑[a(n-1)-(3-a(n-2))]` -/
def P16234264679230766923.Spec : Prop :=
  ∀ n, P16234264679230766923.a n = A192954 n

end A192954

/-! ## A192954.P6515334800276412311

`2*n-1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A192954.P6515334800276412311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 * n : ℤ) - 1 + (a (n - 1) + a (n - 2))

end

end A192954.P6515334800276412311

namespace A192954

/-- `2*n-1+a(n-1)+a(n-2)` -/
def P6515334800276412311.Spec : Prop :=
  ∀ n, P6515334800276412311.a n = A192954 n

end A192954

/-! ## A192954.P9918595057109833941

`2*n-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A192954.P9918595057109833941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 * n : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A192954.P9918595057109833941

namespace A192954

/-- `2*n-(1-a(n-1)-a(n-2))` -/
def P9918595057109833941.Spec : Prop :=
  ∀ n, P9918595057109833941.a n = A192954 n

end A192954

/-! ## A192954.P15566665285675956285

`n-1+a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=1`
-/

namespace A192954.P15566665285675956285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + (a (n - 2) + (n : ℤ)))

end

end A192954.P15566665285675956285

namespace A192954

/-- `n-1+a(n-1)+a(n-2)+n` -/
def P15566665285675956285.Spec : Prop :=
  ∀ n, P15566665285675956285.a n = A192954 n

end A192954

/-! ## A192954.P3742676537666642207

`n-(1-a(n-1)-a(n-2)-n)` with `a(0)=1, a(1)=1`
-/

namespace A192954.P3742676537666642207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 2) - (n : ℤ))

end

end A192954.P3742676537666642207

namespace A192954

/-- `n-(1-a(n-1)-a(n-2)-n)` -/
def P3742676537666642207.Spec : Prop :=
  ∀ n, P3742676537666642207.a n = A192954 n

end A192954

/-! ## A192954.P342069486962644161

`A210728(n)-n`
-/

namespace A192954.P342069486962644161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n - (n : ℤ)

end

end A192954.P342069486962644161

namespace A192954

/-- `A210728(n)-n` -/
def P342069486962644161.Spec : Prop :=
  ∀ n, P342069486962644161.a n = A192954 n

end A192954

/-! ## A192954.P10725576833487969706

`A193044(n)+∑[n]`
-/

namespace A192954.P10725576833487969706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192954.P10725576833487969706

namespace A192954

/-- `A193044(n)+∑[n]` -/
def P10725576833487969706.Spec : Prop :=
  ∀ n, P10725576833487969706.a n = A192954 n

end A192954

/-! ## A192954.P7760483852925273075

`A192762(n)+1-n`
-/

namespace A192954.P7760483852925273075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192762 n + (1 - (n : ℤ))

end

end A192954.P7760483852925273075

namespace A192954

/-- `A192762(n)+1-n` -/
def P7760483852925273075.Spec : Prop :=
  ∀ n, P7760483852925273075.a n = A192954 n

end A192954

/-! ## A192954.P2142537300939306668

`2*A066982(n+1)-1`
-/

namespace A192954.P2142537300939306668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066982 (n + 1) - 1

end

end A192954.P2142537300939306668

namespace A192954

/-- `2*A066982(n+1)-1` -/
def P2142537300939306668.Spec : Prop :=
  ∀ n, P2142537300939306668.a n = A192954 n

end A192954

/-! ## A192954.P4658122194928247938

`A179991(n+1)-(n+1)`
-/

namespace A192954.P4658122194928247938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179991 (n + 1) - (n + 1 : ℤ)

end

end A192954.P4658122194928247938

namespace A192954

/-- `A179991(n+1)-(n+1)` -/
def P4658122194928247938.Spec : Prop :=
  ∀ n, P4658122194928247938.a n = A192954 n

end A192954

/-! ## A192954.P7126413432964527688

`∑[2*(A000032(n)-1)]-1`
-/

namespace A192954.P7126413432964527688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A192954.P7126413432964527688

namespace A192954

/-- `∑[2*(A000032(n)-1)]-1` -/
def P7126413432964527688.Spec : Prop :=
  ∀ n, P7126413432964527688.a n = A192954 n

end A192954

/-! ## A192954.P3944441376469353347

`A168674(n+1)-(2*n+3)`
-/

namespace A192954.P3944441376469353347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 (n + 1) - (2 * n + 3 : ℤ)

end

end A192954.P3944441376469353347

namespace A192954

/-- `A168674(n+1)-(2*n+3)` -/
def P3944441376469353347.Spec : Prop :=
  ∀ n, P3944441376469353347.a n = A192954 n

end A192954

/-! ## A192954.P6971794435098767079

`2*(A000032(n+2)-n)-5`
-/

namespace A192954.P6971794435098767079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (n + 2) - (n : ℤ)) - 5

end

end A192954.P6971794435098767079

namespace A192954

/-- `2*(A000032(n+2)-n)-5` -/
def P6971794435098767079.Spec : Prop :=
  ∀ n, P6971794435098767079.a n = A192954 n

end A192954

/-! ## A192954.P3987827717179109610

`A192956(n)+A000045(n)`
-/

namespace A192954.P3987827717179109610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + A000045 n

end

end A192954.P3987827717179109610

namespace A192954

/-- `A192956(n)+A000045(n)` -/
def P3987827717179109610.Spec : Prop :=
  ∀ n, P3987827717179109610.a n = A192954 n

end A192954

/-! ## A192954.P12886143449019577073

`A192967(n)+A001924(n)`
-/

namespace A192954.P12886143449019577073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 n + A001924 n

end

end A192954.P12886143449019577073

namespace A192954

/-- `A192967(n)+A001924(n)` -/
def P12886143449019577073.Spec : Prop :=
  ∀ n, P12886143449019577073.a n = A192954 n

end A192954

/-! ## A192954.P17571108787126802506

`A192981(n)+A001911(n)`
-/

namespace A192954.P17571108787126802506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 n + A001911 n

end

end A192954.P17571108787126802506

namespace A192954

/-- `A192981(n)+A001911(n)` -/
def P17571108787126802506.Spec : Prop :=
  ∀ n, P17571108787126802506.a n = A192954 n

end A192954

/-! ## A192954.P4628173063945731825

`A212804(n)+A001891(n)`
-/

namespace A192954.P4628173063945731825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A001891 n

end

end A192954.P4628173063945731825

namespace A192954

/-- `A212804(n)+A001891(n)` -/
def P4628173063945731825.Spec : Prop :=
  ∀ n, P4628173063945731825.a n = A192954 n

end A192954

/-!
# A192955: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192955, the canonical program `A192955.P1552245814087774324` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192955 has offset 0).

The definition of A192955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192955.P1552245814087774324

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7, a(4)=18`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192955

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P1552245814087774324.Spec : Prop :=
  ∀ n, P1552245814087774324.a n = A192955 n

theorem P1552245814087774324.correct : P1552245814087774324.Spec := by
  intro n
  simp only [A192955]

end A192955

/-! ## A192955.P359806741362178710

`(1-n)²+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192955.P359806741362178710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (a (n - 1) + a (n - 2))

end

end A192955.P359806741362178710

namespace A192955

/-- `(1-n)²+a(n-1)+a(n-2)` -/
def P359806741362178710.Spec : Prop :=
  ∀ n, P359806741362178710.a n = A192955 n

end A192955

/-! ## A192955.P13153771016147995806

`∑[∑[a(n-1)+a(n-2)+2]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=4`
-/

namespace A192955.P13153771016147995806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 4] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192955.P13153771016147995806

namespace A192955

/-- `∑[∑[a(n-1)+a(n-2)+2]]` -/
def P13153771016147995806.Spec : Prop :=
  ∀ n, (P13153771016147995806.a n : ℤ) = A192955 n

end A192955

/-! ## A192955.P12953302605979406109

`a(n-1)+a(n-2)+n*(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A192955.P12953302605979406109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (n : ℤ) * ((n : ℤ) - 2)) + 1

end

end A192955.P12953302605979406109

namespace A192955

/-- `a(n-1)+a(n-2)+n*(n-2)+1` -/
def P12953302605979406109.Spec : Prop :=
  ∀ n, P12953302605979406109.a n = A192955 n

end A192955

/-! ## A192955.P8379029116918389819

`A193044(n+1)-∑[n]`
-/

namespace A192955.P8379029116918389819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192955.P8379029116918389819

namespace A192955

/-- `A193044(n+1)-∑[n]` -/
def P8379029116918389819.Spec : Prop :=
  ∀ n, P8379029116918389819.a n = A192955 n

end A192955

/-! ## A192955.P6778154255058881541

`A192954(n+1)-(n+1)²`
-/

namespace A192955.P6778154255058881541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A192955.P6778154255058881541

namespace A192955

/-- `A192954(n+1)-(n+1)²` -/
def P6778154255058881541.Spec : Prop :=
  ∀ n, P6778154255058881541.a n = A192955 n

end A192955

/-! ## A192955.P15725697837375156084

`A210728(n+1)-(n+1)*(n+2)`
-/

namespace A192955.P15725697837375156084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 (n + 1) - ((n + 1) * (n + 2) : ℤ)

end

end A192955.P15725697837375156084

namespace A192955

/-- `A210728(n+1)-(n+1)*(n+2)` -/
def P15725697837375156084.Spec : Prop :=
  ∀ n, P15725697837375156084.a n = A192955 n

end A192955

/-! ## A192955.P13664090538460258127

`2*(A000032(n+3)-2)-(n+2)²`
-/

namespace A192955.P13664090538460258127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (n + 3) - 2) - ((n + 2) ^ 2 : ℤ)

end

end A192955.P13664090538460258127

namespace A192955

/-- `2*(A000032(n+3)-2)-(n+2)²` -/
def P13664090538460258127.Spec : Prop :=
  ∀ n, P13664090538460258127.a n = A192955 n

end A192955

/-! ## A192955.P9262611108741288946

`∑[2*(A000032(n+1)-(n+1))]-n`
-/

namespace A192955.P9262611108741288946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192955.P9262611108741288946

namespace A192955

/-- `∑[2*(A000032(n+1)-(n+1))]-n` -/
def P9262611108741288946.Spec : Prop :=
  ∀ n, P9262611108741288946.a n = A192955 n

end A192955

/-! ## A192955.P13292258200762727045

`A163250(n)+A000045(n)`
-/

namespace A192955.P13292258200762727045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 n + A000045 n

end

end A192955.P13292258200762727045

namespace A192955

/-- `A163250(n)+A000045(n)` -/
def P13292258200762727045.Spec : Prop :=
  ∀ n, P13292258200762727045.a n = A192955 n

end A192955

/-! ## A192955.P6511958283826351059

`A192957(n)+A000071(n+1)`
-/

namespace A192955.P6511958283826351059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 n + A000071 (n + 1)

end

end A192955.P6511958283826351059

namespace A192955

/-- `A192957(n)+A000071(n+1)` -/
def P6511958283826351059.Spec : Prop :=
  ∀ n, P6511958283826351059.a n = A192955 n

end A192955

/-! ## A192955.P14559607932667288028

`A192959(n)+A019274(n+1)`
-/

namespace A192955.P14559607932667288028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192959 n + A019274 (n + 1)

end

end A192955.P14559607932667288028

namespace A192955

/-- `A192959(n)+A019274(n+1)` -/
def P14559607932667288028.Spec : Prop :=
  ∀ n, P14559607932667288028.a n = A192955 n

end A192955

/-! ## A192955.P9048082835682880963

`A001891(n)+A192953(n)-n²`
-/

namespace A192955.P9048082835682880963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + (A192953 n - (n ^ 2 : ℤ))

end

end A192955.P9048082835682880963

namespace A192955

/-- `A001891(n)+A192953(n)-n²` -/
def P9048082835682880963.Spec : Prop :=
  ∀ n, P9048082835682880963.a n = A192955 n

end A192955

/-! ## A192955.P14951611690115216026

`A000045(n)+∑[A001924(n)-n]`
-/

namespace A192955.P14951611690115216026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192955.P14951611690115216026

namespace A192955

/-- `A000045(n)+∑[A001924(n)-n]` -/
def P14951611690115216026.Spec : Prop :=
  ∀ n, P14951611690115216026.a n = A192955 n

end A192955

/-! ## A192955.P2625470225551370240

`A000045(n)+A014162(n)-∑[n]`
-/

namespace A192955.P2625470225551370240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A014162 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A192955.P2625470225551370240

namespace A192955

/-- `A000045(n)+A014162(n)-∑[n]` -/
def P2625470225551370240.Spec : Prop :=
  ∀ n, P2625470225551370240.a n = A192955 n

end A192955

/-! ## A192955.P16548142285112957346

`∑[A168674(n)-n]-A000096(n)`
-/

namespace A192955.P16548142285112957346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000096 n

end

end A192955.P16548142285112957346

namespace A192955

/-- `∑[A168674(n)-n]-A000096(n)` -/
def P16548142285112957346.Spec : Prop :=
  ∀ n, P16548142285112957346.a n = A192955 n

end A192955

/-! ## A192955.P5687411349729677883

`A192959(n)+2*A000071(n+1)`
-/

namespace A192955.P5687411349729677883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192959 n + 2 * A000071 (n + 1)

end

end A192955.P5687411349729677883

namespace A192955

/-- `A192959(n)+2*A000071(n+1)` -/
def P5687411349729677883.Spec : Prop :=
  ∀ n, P5687411349729677883.a n = A192955 n

end A192955

/-! ## A192955.P15960235429309610306

`A192957(n)+A019274(n+1)/2`
-/

namespace A192955.P15960235429309610306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192957 n : ℚ) + (A019274 (n + 1) : ℚ) / 2

end

end A192955.P15960235429309610306

namespace A192955

/-- `A192957(n)+A019274(n+1)/2` -/
def P15960235429309610306.Spec : Prop :=
  ∀ n, P15960235429309610306.a n = (A192955 n : ℚ)

end A192955

/-! ## A192955.P12060698608962331087

`A192968(n)+∑[∑[A000071(n+1)]]`
-/

namespace A192955.P12060698608962331087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192968 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192955.P12060698608962331087

namespace A192955

/-- `A192968(n)+∑[∑[A000071(n+1)]]` -/
def P12060698608962331087.Spec : Prop :=
  ∀ n, P12060698608962331087.a n = A192955 n

end A192955

/-! ## A192955.P214436702961928201

`A000032(n+1)+∑[A000032(n+2)]-(n+2)²`
-/

namespace A192955.P214436702961928201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - ((n + 2) ^ 2 : ℤ))

end

end A192955.P214436702961928201

namespace A192955

/-- `A000032(n+1)+∑[A000032(n+2)]-(n+2)²` -/
def P214436702961928201.Spec : Prop :=
  ∀ n, P214436702961928201.a n = A192955 n

end A192955

/-!
# A192956: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192956, the canonical program `A192956.P5250262210065637541` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192956 has offset 0).

The definition of A192956 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192956.P5250262210065637541

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192956

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P5250262210065637541.Spec : Prop :=
  ∀ n, P5250262210065637541.a n = A192956 n

theorem P5250262210065637541.correct : P5250262210065637541.Spec := by
  intro n
  simp only [A192956]

end A192956

/-! ## A192956.P15730533120169763312

`∑[a(n-1)+a(n-2)+2]` with `a(0)=1, a(1)=-1, a(2)=4`
-/

namespace A192956.P15730533120169763312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192956.P15730533120169763312

namespace A192956

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P15730533120169763312.Spec : Prop :=
  ∀ n, P15730533120169763312.a n = A192956 n

end A192956

/-! ## A192956.P5991024531094499926

`2*n-1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A192956.P5991024531094499926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 * n : ℤ) - 1 + (a (n - 1) + a (n - 2))

end

end A192956.P5991024531094499926

namespace A192956

/-- `2*n-1+a(n-1)+a(n-2)` -/
def P5991024531094499926.Spec : Prop :=
  ∀ n, P5991024531094499926.a n = A192956 n

end A192956

/-! ## A192956.P11940103978038102878

`2*n-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A192956.P11940103978038102878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 * n : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A192956.P11940103978038102878

namespace A192956

/-- `2*n-(1-a(n-1)-a(n-2))` -/
def P11940103978038102878.Spec : Prop :=
  ∀ n, P11940103978038102878.a n = A192956 n

end A192956

/-! ## A192956.P10617388342839983035

`n-1+a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=0`
-/

namespace A192956.P10617388342839983035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + (a (n - 2) + (n : ℤ)))

end

end A192956.P10617388342839983035

namespace A192956

/-- `n-1+a(n-1)+a(n-2)+n` -/
def P10617388342839983035.Spec : Prop :=
  ∀ n, P10617388342839983035.a n = A192956 n

end A192956

/-! ## A192956.P17756574665698346627

`n-(1-a(n-1)-a(n-2)-n)` with `a(0)=1, a(1)=0`
-/

namespace A192956.P17756574665698346627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 2) - (n : ℤ))

end

end A192956.P17756574665698346627

namespace A192956

/-- `n-(1-a(n-1)-a(n-2)-n)` -/
def P17756574665698346627.Spec : Prop :=
  ∀ n, P17756574665698346627.a n = A192956 n

end A192956

/-! ## A192956.P115164571256275290

`A210678(n)-n`
-/

namespace A192956.P115164571256275290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n - (n : ℤ)

end

end A192956.P115164571256275290

namespace A192956

/-- `A210678(n)-n` -/
def P115164571256275290.Spec : Prop :=
  ∀ n, P115164571256275290.a n = A192956 n

end A192956

/-! ## A192956.P2079480889701356765

`A210731(n)+1-n`
-/

namespace A192956.P2079480889701356765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + (1 - (n : ℤ))

end

end A192956.P2079480889701356765

namespace A192956

/-- `A210731(n)+1-n` -/
def P2079480889701356765.Spec : Prop :=
  ∀ n, P2079480889701356765.a n = A192956 n

end A192956

/-! ## A192956.P7763067456971707120

`A022310(n+1)-2*(n+2)`
-/

namespace A192956.P7763067456971707120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 (n + 1) - (2 * (n + 2) : ℤ)

end

end A192956.P7763067456971707120

namespace A192956

/-- `A022310(n+1)-2*(n+2)` -/
def P7763067456971707120.Spec : Prop :=
  ∀ n, P7763067456971707120.a n = A192956 n

end A192956

/-! ## A192956.P851718213047763836

`A022096(n+1)-(2*n+5)`
-/

namespace A192956.P851718213047763836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 (n + 1) - (2 * n + 5 : ℤ)

end

end A192956.P851718213047763836

namespace A192956

/-- `A022096(n+1)-(2*n+5)` -/
def P851718213047763836.Spec : Prop :=
  ∀ n, P851718213047763836.a n = A192956 n

end A192956

/-! ## A192956.P1860285962360883242

`A152163(n)+A001891(n)`
-/

namespace A192956.P1860285962360883242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A001891 n

end

end A192956.P1860285962360883242

namespace A192956

/-- `A152163(n)+A001891(n)` -/
def P1860285962360883242.Spec : Prop :=
  ∀ n, P1860285962360883242.a n = A192956 n

end A192956

/-! ## A192956.P16765934243833342620

`A192958(n)+A000045(n)`
-/

namespace A192956.P16765934243833342620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192958 n + A000045 n

end

end A192956.P16765934243833342620

namespace A192956

/-- `A192958(n)+A000045(n)` -/
def P16765934243833342620.Spec : Prop :=
  ∀ n, P16765934243833342620.a n = A192956 n

end A192956

/-! ## A192956.P1518296343032574290

`A192954(n)-A000045(n)`
-/

namespace A192956.P1518296343032574290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n - A000045 n

end

end A192956.P1518296343032574290

namespace A192956

/-- `A192954(n)-A000045(n)` -/
def P1518296343032574290.Spec : Prop :=
  ∀ n, P1518296343032574290.a n = A192956 n

end A192956

/-! ## A192956.P12902385679059410963

`A210728(n)-A002062(n)`
-/

namespace A192956.P12902385679059410963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n - A002062 n

end

end A192956.P12902385679059410963

namespace A192956

/-- `A210728(n)-A002062(n)` -/
def P12902385679059410963.Spec : Prop :=
  ∀ n, P12902385679059410963.a n = A192956 n

end A192956

/-! ## A192956.P1732485222150366783

`A192964(n)+A000071(n+1)`
-/

namespace A192956.P1732485222150366783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + A000071 (n + 1)

end

end A192956.P1732485222150366783

namespace A192956

/-- `A192964(n)+A000071(n+1)` -/
def P1732485222150366783.Spec : Prop :=
  ∀ n, P1732485222150366783.a n = A192956 n

end A192956

/-! ## A192956.P16189380036953762873

`A192981(n)+A019274(n+1)`
-/

namespace A192956.P16189380036953762873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 n + A019274 (n + 1)

end

end A192956.P16189380036953762873

namespace A192956

/-- `A192981(n)+A019274(n+1)` -/
def P16189380036953762873.Spec : Prop :=
  ∀ n, P16189380036953762873.a n = A192956 n

end A192956

/-! ## A192956.P14326601296153051333

`A210677(n)+A065220(n+1)`
-/

namespace A192956.P14326601296153051333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + A065220 (n + 1)

end

end A192956.P14326601296153051333

namespace A192956

/-- `A210677(n)+A065220(n+1)` -/
def P14326601296153051333.Spec : Prop :=
  ∀ n, P14326601296153051333.a n = A192956 n

end A192956

/-! ## A192956.P10758933515686972282

`A210673(n+1)+A192761(n)`
-/

namespace A192956.P10758933515686972282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 (n + 1) + A192761 n

end

end A192956.P10758933515686972282

namespace A192956

/-- `A210673(n+1)+A192761(n)` -/
def P10758933515686972282.Spec : Prop :=
  ∀ n, P10758933515686972282.a n = A192956 n

end A192956

/-! ## A192956.P15316913408345891337

`A065220(n)+A111721(n)-n`
-/

namespace A192956.P15316913408345891337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (A111721 n - (n : ℤ))

end

end A192956.P15316913408345891337

namespace A192956

/-- `A065220(n)+A111721(n)-n` -/
def P15316913408345891337.Spec : Prop :=
  ∀ n, P15316913408345891337.a n = A192956 n

end A192956

/-! ## A192956.P3348792234995611797

`A002062(n)+A192958(n)-n`
-/

namespace A192956.P3348792234995611797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n + (A192958 n - (n : ℤ))

end

end A192956.P3348792234995611797

namespace A192956

/-- `A002062(n)+A192958(n)-n` -/
def P3348792234995611797.Spec : Prop :=
  ∀ n, P3348792234995611797.a n = A192956 n

end A192956

/-!
# A192957: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192957, the canonical program `A192957.P14047798998843541460` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192957 has offset 0).

The definition of A192957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192957.P14047798998843541460

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5, a(4)=14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192957

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P14047798998843541460.Spec : Prop :=
  ∀ n, P14047798998843541460.a n = A192957 n

theorem P14047798998843541460.correct : P14047798998843541460.Spec := by
  intro n
  simp only [A192957]

end A192957

/-! ## A192957.P17562570325002435985

`a(n-1)+a(n-2)+n*(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192957.P17562570325002435985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (n : ℤ) * ((n : ℤ) - 2))

end

end A192957.P17562570325002435985

namespace A192957

/-- `a(n-1)+a(n-2)+n*(n-2)` -/
def P17562570325002435985.Spec : Prop :=
  ∀ n, P17562570325002435985.a n = A192957 n

end A192957

/-! ## A192957.P18188677370312245732

`a(n-1)-(n*(2-n)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A192957.P18188677370312245732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ((n : ℤ) * (2 - (n : ℤ)) - a (n - 2))

end

end A192957.P18188677370312245732

namespace A192957

/-- `a(n-1)-(n*(2-n)-a(n-2))` -/
def P18188677370312245732.Spec : Prop :=
  ∀ n, P18188677370312245732.a n = A192957 n

end A192957

/-! ## A192957.P3786847749919399165

`(1-n)²+a(n-1)+a(n-2)-1` with `a(0)=0, a(1)=1`
-/

namespace A192957.P3786847749919399165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (a (n - 1) + a (n - 2)) - 1

end

end A192957.P3786847749919399165

namespace A192957

/-- `(1-n)²+a(n-1)+a(n-2)-1` -/
def P3786847749919399165.Spec : Prop :=
  ∀ n, P3786847749919399165.a n = A192957 n

end A192957

/-! ## A192957.P15167264445134486511

`∑[A192956(abs(1-n))]`
-/

namespace A192957.P15167264445134486511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192957.P15167264445134486511

namespace A192957

/-- `∑[A192956(abs(1-n))]` -/
def P15167264445134486511.Spec : Prop :=
  ∀ n, P15167264445134486511.a n = A192957 n

end A192957

/-! ## A192957.P3821524976000683350

`∑[A022310(n)]-n*(n+3)`
-/

namespace A192957.P3821524976000683350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n * (n + 3) : ℤ)

end

end A192957.P3821524976000683350

namespace A192957

/-- `∑[A022310(n)]-n*(n+3)` -/
def P3821524976000683350.Spec : Prop :=
  ∀ n, P3821524976000683350.a n = A192957 n

end A192957

/-! ## A192957.P15795624663066767180

`A192956(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A192957.P15795624663066767180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A192956 (n - 1) + a (n - 1)

end

end A192957.P15795624663066767180

namespace A192957

/-- `A192956(n-1)+a(n-1)` -/
def P15795624663066767180.Spec : Prop :=
  ∀ n, P15795624663066767180.a n = A192957 n

end A192957

/-! ## A192957.P2019386444262579619

`A192956(n+1)-n*(n+2)`
-/

namespace A192957.P2019386444262579619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 (n + 1) - (n * (n + 2) : ℤ)

end

end A192957.P2019386444262579619

namespace A192957

/-- `A192956(n+1)-n*(n+2)` -/
def P2019386444262579619.Spec : Prop :=
  ∀ n, P2019386444262579619.a n = A192957 n

end A192957

/-! ## A192957.P7261095976170785626

`A210731(n+1)-n*(n+3)`
-/

namespace A192957.P7261095976170785626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 (n + 1) - (n * (n + 3) : ℤ)

end

end A192957.P7261095976170785626

namespace A192957

/-- `A210731(n+1)-n*(n+3)` -/
def P7261095976170785626.Spec : Prop :=
  ∀ n, P7261095976170785626.a n = A192957 n

end A192957

/-! ## A192957.P6661652127162260777

`A192980(n)+A065220(n)`
-/

namespace A192957.P6661652127162260777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192980 n + A065220 n

end

end A192957.P6661652127162260777

namespace A192957

/-- `A192980(n)+A065220(n)` -/
def P6661652127162260777.Spec : Prop :=
  ∀ n, P6661652127162260777.a n = A192957 n

end A192957

/-! ## A192957.P12174932544941892088

`A192959(n)+A000071(n+1)`
-/

namespace A192957.P12174932544941892088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192959 n + A000071 (n + 1)

end

end A192957.P12174932544941892088

namespace A192957

/-- `A192959(n)+A000071(n+1)` -/
def P12174932544941892088.Spec : Prop :=
  ∀ n, P12174932544941892088.a n = A192957 n

end A192957

/-! ## A192957.P15329088477694298267

`A192955(n)-A000071(n+1)`
-/

namespace A192957.P15329088477694298267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192955 n - A000071 (n + 1)

end

end A192957.P15329088477694298267

namespace A192957

/-- `A192955(n)-A000071(n+1)` -/
def P15329088477694298267.Spec : Prop :=
  ∀ n, P15329088477694298267.a n = A192957 n

end A192957

/-! ## A192957.P11509042424382931844

`A000045(n)+A192980(n)-n`
-/

namespace A192957.P11509042424382931844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A192980 n - (n : ℤ))

end

end A192957.P11509042424382931844

namespace A192957

/-- `A000045(n)+A192980(n)-n` -/
def P11509042424382931844.Spec : Prop :=
  ∀ n, P11509042424382931844.a n = A192957 n

end A192957

/-! ## A192957.P2578977346972653098

`A104161(n)+A192951(n)-n²`
-/

namespace A192957.P2578977346972653098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 n + (A192951 n - (n ^ 2 : ℤ))

end

end A192957.P2578977346972653098

namespace A192957

/-- `A104161(n)+A192951(n)-n²` -/
def P2578977346972653098.Spec : Prop :=
  ∀ n, P2578977346972653098.a n = A192957 n

end A192957

/-! ## A192957.P1416410625188067343

`A192959(n)+A019274(n+1)/2`
-/

namespace A192957.P1416410625188067343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192959 n : ℚ) + (A019274 (n + 1) : ℚ) / 2

end

end A192957.P1416410625188067343

namespace A192957

/-- `A192959(n)+A019274(n+1)/2` -/
def P1416410625188067343.Spec : Prop :=
  ∀ n, P1416410625188067343.a n = (A192957 n : ℚ)

end A192957

/-! ## A192957.P17947255449358059595

`A192955(n)-A019274(n+1)/2`
-/

namespace A192957.P17947255449358059595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192955 n : ℚ) - (A019274 (n + 1) : ℚ) / 2

end

end A192957.P17947255449358059595

namespace A192957

/-- `A192955(n)-A019274(n+1)/2` -/
def P17947255449358059595.Spec : Prop :=
  ∀ n, P17947255449358059595.a n = (A192957 n : ℚ)

end A192957

/-! ## A192957.P5147349144800933979

`2*A066982(n+2)-A160536(n+1)`
-/

namespace A192957.P5147349144800933979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066982 (n + 2) - A160536 (n + 1)

end

end A192957.P5147349144800933979

namespace A192957

/-- `2*A066982(n+2)-A160536(n+1)` -/
def P5147349144800933979.Spec : Prop :=
  ∀ n, P5147349144800933979.a n = A192957 n

end A192957

/-! ## A192957.P11514309160182973567

`A192951(n)+A192959(n)-A192952(n)`
-/

namespace A192957.P11514309160182973567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A192959 n - A192952 n)

end

end A192957.P11514309160182973567

namespace A192957

/-- `A192951(n)+A192959(n)-A192952(n)` -/
def P11514309160182973567.Spec : Prop :=
  ∀ n, P11514309160182973567.a n = A192957 n

end A192957

/-! ## A192957.P16601511679063621357

`A192952(n)+A192955(n)-A192951(n)`
-/

namespace A192957.P16601511679063621357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 n + (A192955 n - A192951 n)

end

end A192957.P16601511679063621357

namespace A192957

/-- `A192952(n)+A192955(n)-A192951(n)` -/
def P16601511679063621357.Spec : Prop :=
  ∀ n, P16601511679063621357.a n = A192957 n

end A192957

/-! ## A192957.P12040603865738587054

`A192952(n)+A192965(n)-A192953(n)`
-/

namespace A192957.P12040603865738587054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 n + (A192965 n - A192953 n)

end

end A192957.P12040603865738587054

namespace A192957

/-- `A192952(n)+A192965(n)-A192953(n)` -/
def P12040603865738587054.Spec : Prop :=
  ∀ n, P12040603865738587054.a n = A192957 n

end A192957

/-!
# A192958: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192958, the canonical program `A192958.P1520078472035309085` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192958 has offset 0).

The definition of A192958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192958.P1520078472035309085

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=-1, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192958

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P1520078472035309085.Spec : Prop :=
  ∀ n, P1520078472035309085.a n = A192958 n

theorem P1520078472035309085.correct : P1520078472035309085.Spec := by
  intro n
  simp only [A192958]

end A192958

/-! ## A192958.P10302281160765225467

`∑[a(n-1)+a(n-2)+2]` with `a(0)=1, a(1)=-2, a(2)=4`
-/

namespace A192958.P10302281160765225467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192958.P10302281160765225467

namespace A192958

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P10302281160765225467.Spec : Prop :=
  ∀ n, P10302281160765225467.a n = A192958 n

end A192958

/-! ## A192958.P8783004501511437974

`2*(a(n-1)+1)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A192958.P8783004501511437974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  2 * (a (n - 1) + 1) - a (n - 3)

end

end A192958.P8783004501511437974

namespace A192958

/-- `2*(a(n-1)+1)-a(n-3)` -/
def P8783004501511437974.Spec : Prop :=
  ∀ n, P8783004501511437974.a n = A192958 n

end A192958

/-! ## A192958.P17650290455342607795

`2*a(n-1)-(a(n-3)-2)` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A192958.P17650290455342607795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 2)

end

end A192958.P17650290455342607795

namespace A192958

/-- `2*a(n-1)-(a(n-3)-2)` -/
def P17650290455342607795.Spec : Prop :=
  ∀ n, P17650290455342607795.a n = A192958 n

end A192958

/-! ## A192958.P15156843463998763176

`a(n-1)+a(n-1)+2-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A192958.P15156843463998763176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (2 - a (n - 3)))

end

end A192958.P15156843463998763176

namespace A192958

/-- `a(n-1)+a(n-1)+2-a(n-3)` -/
def P15156843463998763176.Spec : Prop :=
  ∀ n, P15156843463998763176.a n = A192958 n

end A192958

/-! ## A192958.P3780627633586612497

`2-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A192958.P3780627633586612497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  2 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A192958.P3780627633586612497

namespace A192958

/-- `2-(a(n-3)-a(n-1)-a(n-1))` -/
def P3780627633586612497.Spec : Prop :=
  ∀ n, P3780627633586612497.a n = A192958 n

end A192958

/-! ## A192958.P16412159307937077496

`2*A192967(n)-1`
-/

namespace A192958.P16412159307937077496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192967 n - 1

end

end A192958.P16412159307937077496

namespace A192958

/-- `2*A192967(n)-1` -/
def P16412159307937077496.Spec : Prop :=
  ∀ n, P16412159307937077496.a n = A192958 n

end A192958

/-! ## A192958.P12305277150477309928

`A111721(n)-2*n`
-/

namespace A192958.P12305277150477309928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111721 n - (2 * n : ℤ)

end

end A192958.P12305277150477309928

namespace A192958

/-- `A111721(n)-2*n` -/
def P12305277150477309928.Spec : Prop :=
  ∀ n, P12305277150477309928.a n = A192958 n

end A192958

/-! ## A192958.P16444026939731192378

`A022089(n+1)-(2*n+5)`
-/

namespace A192958.P16444026939731192378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 (n + 1) - (2 * n + 5 : ℤ)

end

end A192958.P16444026939731192378

namespace A192958

/-- `A022089(n+1)-(2*n+5)` -/
def P16444026939731192378.Spec : Prop :=
  ∀ n, P16444026939731192378.a n = A192958 n

end A192958

/-! ## A192958.P15087455046798579766

`6*A000045(n+1)-5-2*n`
-/

namespace A192958.P15087455046798579766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000045 (n + 1) - 5 - (2 * n : ℤ)

end

end A192958.P15087455046798579766

namespace A192958

/-- `6*A000045(n+1)-5-2*n` -/
def P15087455046798579766.Spec : Prop :=
  ∀ n, P15087455046798579766.a n = A192958 n

end A192958

/-! ## A192958.P12320340250200388819

`A192956(n)-A000045(n)`
-/

namespace A192958.P12320340250200388819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n - A000045 n

end

end A192958.P12320340250200388819

namespace A192958

/-- `A192956(n)-A000045(n)` -/
def P12320340250200388819.Spec : Prop :=
  ∀ n, P12320340250200388819.a n = A192958 n

end A192958

/-! ## A192958.P10893802745916892278

`A210678(n)-A002062(n)`
-/

namespace A192958.P10893802745916892278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n - A002062 n

end

end A192958.P10893802745916892278

namespace A192958

/-- `A210678(n)-A002062(n)` -/
def P10893802745916892278.Spec : Prop :=
  ∀ n, P10893802745916892278.a n = A192958 n

end A192958

/-! ## A192958.P15318994210752884410

`A192956(n)+1-A001611(n)`
-/

namespace A192958.P15318994210752884410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + (1 - A001611 n)

end

end A192958.P15318994210752884410

namespace A192958

/-- `A192956(n)+1-A001611(n)` -/
def P15318994210752884410.Spec : Prop :=
  ∀ n, P15318994210752884410.a n = A192958 n

end A192958

/-! ## A192958.P8190400946949929859

`A192954(n)-A006355(n+1)`
-/

namespace A192958.P8190400946949929859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n - A006355 (n + 1)

end

end A192958.P8190400946949929859

namespace A192958

/-- `A192954(n)-A006355(n+1)` -/
def P8190400946949929859.Spec : Prop :=
  ∀ n, P8190400946949929859.a n = A192958 n

end A192958

/-! ## A192958.P5744720297593657066

`A210731(n)+1-A002062(n)`
-/

namespace A192958.P5744720297593657066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + (1 - A002062 n)

end

end A192958.P5744720297593657066

namespace A192958

/-- `A210731(n)+1-A002062(n)` -/
def P5744720297593657066.Spec : Prop :=
  ∀ n, P5744720297593657066.a n = A192958 n

end A192958

/-! ## A192958.P16155836966929874698

`A192956(n)+A152163(n+2)`
-/

namespace A192958.P16155836966929874698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + A152163 (n + 2)

end

end A192958.P16155836966929874698

namespace A192958

/-- `A192956(n)+A152163(n+2)` -/
def P16155836966929874698.Spec : Prop :=
  ∀ n, P16155836966929874698.a n = A192958 n

end A192958

/-! ## A192958.P18172170607938234209

`A192956(n)-A212804(n+1)`
-/

namespace A192958.P18172170607938234209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n - A212804 (n + 1)

end

end A192958.P18172170607938234209

namespace A192958

/-- `A192956(n)-A212804(n+1)` -/
def P18172170607938234209.Spec : Prop :=
  ∀ n, P18172170607938234209.a n = A192958 n

end A192958

/-! ## A192958.P11529615343409090385

`A192964(n)+A212804(n)-1`
-/

namespace A192958.P11529615343409090385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + (A212804 n - 1)

end

end A192958.P11529615343409090385

namespace A192958

/-- `A192964(n)+A212804(n)-1` -/
def P11529615343409090385.Spec : Prop :=
  ∀ n, P11529615343409090385.a n = A192958 n

end A192958

/-! ## A192958.P17418925906328814798

`A192954(n)-2*A000045(n)`
-/

namespace A192958.P17418925906328814798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n - 2 * A000045 n

end

end A192958.P17418925906328814798

namespace A192958

/-- `A192954(n)-2*A000045(n)` -/
def P17418925906328814798.Spec : Prop :=
  ∀ n, P17418925906328814798.a n = A192958 n

end A192958

/-! ## A192958.P14769457326024324483

`A192956(n)+n-A002062(n)`
-/

namespace A192958.P14769457326024324483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + ((n : ℤ) - A002062 n)

end

end A192958.P14769457326024324483

namespace A192958

/-- `A192956(n)+n-A002062(n)` -/
def P14769457326024324483.Spec : Prop :=
  ∀ n, P14769457326024324483.a n = A192958 n

end A192958

/-!
# A192959: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192959, the canonical program `A192959.P8619838771353810441` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192959 has offset 0).

The definition of A192959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192959.P8619838771353810441

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3, a(4)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192959

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P8619838771353810441.Spec : Prop :=
  ∀ n, P8619838771353810441.a n = A192959 n

theorem P8619838771353810441.correct : P8619838771353810441.Spec := by
  intro n
  simp only [A192959]

end A192959

/-! ## A192959.P12709781005489072666

`(1-n)²+a(n-1)+a(n-2)-2` with `a(0)=0, a(1)=1`
-/

namespace A192959.P12709781005489072666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (a (n - 1) + a (n - 2)) - 2

end

end A192959.P12709781005489072666

namespace A192959

/-- `(1-n)²+a(n-1)+a(n-2)-2` -/
def P12709781005489072666.Spec : Prop :=
  ∀ n, P12709781005489072666.a n = A192959 n

end A192959

/-! ## A192959.P7388666582735544551

`a(n-1)+a(n-2)+n*(n-2)-1` with `a(0)=0, a(1)=1`
-/

namespace A192959.P7388666582735544551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (n : ℤ) * ((n : ℤ) - 2)) - 1

end

end A192959.P7388666582735544551

namespace A192959

/-- `a(n-1)+a(n-2)+n*(n-2)-1` -/
def P7388666582735544551.Spec : Prop :=
  ∀ n, P7388666582735544551.a n = A192959 n

end A192959

/-! ## A192959.P17785247025046099556

`2*A192968(n)-n`
-/

namespace A192959.P17785247025046099556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192968 n - (n : ℤ)

end

end A192959.P17785247025046099556

namespace A192959

/-- `2*A192968(n)-n` -/
def P17785247025046099556.Spec : Prop :=
  ∀ n, P17785247025046099556.a n = A192959 n

end A192959

/-! ## A192959.P5233527550123830806

`2*A192953(n)-n²`
-/

namespace A192959.P5233527550123830806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192953 n - (n ^ 2 : ℤ)

end

end A192959.P5233527550123830806

namespace A192959

/-- `2*A192953(n)-n²` -/
def P5233527550123830806.Spec : Prop :=
  ∀ n, P5233527550123830806.a n = A192959 n

end A192959

/-! ## A192959.P13149824281361004684

`A192965(n)+A065220(n)`
-/

namespace A192959.P13149824281361004684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192965 n + A065220 n

end

end A192959.P13149824281361004684

namespace A192959

/-- `A192965(n)+A065220(n)` -/
def P13149824281361004684.Spec : Prop :=
  ∀ n, P13149824281361004684.a n = A192959 n

end A192959

/-! ## A192959.P834111537988395462

`A192957(n)-A000071(n+1)`
-/

namespace A192959.P834111537988395462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 n - A000071 (n + 1)

end

end A192959.P834111537988395462

namespace A192959

/-- `A192957(n)-A000071(n+1)` -/
def P834111537988395462.Spec : Prop :=
  ∀ n, P834111537988395462.a n = A192959 n

end A192959

/-! ## A192959.P1089483364648326091

`A192955(n)-A019274(n+1)`
-/

namespace A192959.P1089483364648326091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192955 n - A019274 (n + 1)

end

end A192959.P1089483364648326091

namespace A192959

/-- `A192955(n)-A019274(n+1)` -/
def P1089483364648326091.Spec : Prop :=
  ∀ n, P1089483364648326091.a n = A192959 n

end A192959

/-! ## A192959.P8499083892695034730

`A000045(n)+A192965(n)-n`
-/

namespace A192959.P8499083892695034730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A192965 n - (n : ℤ))

end

end A192959.P8499083892695034730

namespace A192959

/-- `A000045(n)+A192965(n)-n` -/
def P8499083892695034730.Spec : Prop :=
  ∀ n, P8499083892695034730.a n = A192959 n

end A192959

/-! ## A192959.P16508274900017224155

`A192955(n)-2*A000071(n+1)`
-/

namespace A192959.P16508274900017224155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192955 n - 2 * A000071 (n + 1)

end

end A192959.P16508274900017224155

namespace A192959

/-- `A192955(n)-2*A000071(n+1)` -/
def P16508274900017224155.Spec : Prop :=
  ∀ n, P16508274900017224155.a n = A192959 n

end A192959

/-! ## A192959.P2559913407545202697

`A192957(n)-A019274(n+1)/2`
-/

namespace A192959.P2559913407545202697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192957 n : ℚ) - (A019274 (n + 1) : ℚ) / 2

end

end A192959.P2559913407545202697

namespace A192959

/-- `A192957(n)-A019274(n+1)/2` -/
def P2559913407545202697.Spec : Prop :=
  ∀ n, P2559913407545202697.a n = (A192959 n : ℚ)

end A192959

/-! ## A192959.P743662850987801506

`2*(∑[A000045(n+2)-(n+1)]+A000045(n))-n`
-/

namespace A192959.P743662850987801506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + A000045 n) - (n : ℤ)

end

end A192959.P743662850987801506

namespace A192959

/-- `2*(∑[A000045(n+2)-(n+1)]+A000045(n))-n` -/
def P743662850987801506.Spec : Prop :=
  ∀ n, P743662850987801506.a n = A192959 n

end A192959

/-! ## A192959.P16219042506024806784

`A192952(n)+A192957(n)-A192951(n)`
-/

namespace A192959.P16219042506024806784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 n + (A192957 n - A192951 n)

end

end A192959.P16219042506024806784

namespace A192959

/-- `A192952(n)+A192957(n)-A192951(n)` -/
def P16219042506024806784.Spec : Prop :=
  ∀ n, P16219042506024806784.a n = A192959 n

end A192959

/-! ## A192959.P17161396992140715502

`A192957(n)+A192957(n)-A192955(n)`
-/

namespace A192959.P17161396992140715502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 n + (A192957 n - A192955 n)

end

end A192959.P17161396992140715502

namespace A192959

/-- `A192957(n)+A192957(n)-A192955(n)` -/
def P17161396992140715502.Spec : Prop :=
  ∀ n, P17161396992140715502.a n = A192959 n

end A192959

/-! ## A192959.P17565497095136579352

`A192978(n)-A210730(n)`
-/

namespace A192959.P17565497095136579352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 n - A210730 n

end

end A192959.P17565497095136579352

namespace A192959

/-- `A192978(n)-A210730(n)` -/
def P17565497095136579352.Spec : Prop :=
  ∀ n, P17565497095136579352.a n = A192959 n

end A192959

/-! ## A192959.P4370638380094497457

`∑[A192958(n)]-A192958(n)`
-/

namespace A192959.P4370638380094497457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A192958 n

end

end A192959.P4370638380094497457

namespace A192959

/-- `∑[A192958(n)]-A192958(n)` -/
def P4370638380094497457.Spec : Prop :=
  ∀ n, P4370638380094497457.a n = A192959 n

end A192959

/-! ## A192959.P3699433730446908144

`A192389(n)+1-A111314(n)`
-/

namespace A192959.P3699433730446908144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192389 n + (1 - A111314 n)

end

end A192959.P3699433730446908144

namespace A192959

/-- `A192389(n)+1-A111314(n)` -/
def P3699433730446908144.Spec : Prop :=
  ∀ n, P3699433730446908144.a n = A192959 n

end A192959

/-! ## A192959.P11721642831880190052

`A192961(n)-2*A019274(n+1)`
-/

namespace A192959.P11721642831880190052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192961 n - 2 * A019274 (n + 1)

end

end A192959.P11721642831880190052

namespace A192959

/-- `A192961(n)-2*A019274(n+1)` -/
def P11721642831880190052.Spec : Prop :=
  ∀ n, P11721642831880190052.a n = A192959 n

end A192959

/-! ## A192959.P18229566973727738206

`A192389(n)+A192760(n)-A210675(n)`
-/

namespace A192959.P18229566973727738206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192389 n + (A192760 n - A210675 n)

end

end A192959.P18229566973727738206

namespace A192959

/-- `A192389(n)+A192760(n)-A210675(n)` -/
def P18229566973727738206.Spec : Prop :=
  ∀ n, P18229566973727738206.a n = A192959 n

end A192959

/-! ## A192959.P3110508183123773628

`A131300(n)+A192389(n)-A192953(n+1)`
-/

namespace A192959.P3110508183123773628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131300 n + (A192389 n - A192953 (n + 1))

end

end A192959.P3110508183123773628

namespace A192959

/-- `A131300(n)+A192389(n)-A192953(n+1)` -/
def P3110508183123773628.Spec : Prop :=
  ∀ n, P3110508183123773628.a n = A192959 n

end A192959

/-!
# A192960: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192960, the canonical program `A192960.P12818881350754432385` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192960 has offset 0).

The definition of A192960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192960.P12818881350754432385

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192960

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P12818881350754432385.Spec : Prop :=
  ∀ n, P12818881350754432385.a n = A192960 n

theorem P12818881350754432385.correct : P12818881350754432385.Spec := by
  intro n
  simp only [A192960]

end A192960

/-! ## A192960.P2256240598776459035

`∑[floor(ϕ*(a(n-1)+1))]` with `a(0)=1, a(1)=2`
-/

namespace A192960.P2256240598776459035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192960.P2256240598776459035

namespace A192960

/-- `∑[floor(ϕ*(a(n-1)+1))]` -/
def P2256240598776459035.Spec : Prop :=
  ∀ n, P2256240598776459035.a n = A192960 n

end A192960

/-! ## A192960.P4851100619860848520

`∑[a(n-1)+a(n-2)+2]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A192960.P4851100619860848520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192960.P4851100619860848520

namespace A192960

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P4851100619860848520.Spec : Prop :=
  ∀ n, (P4851100619860848520.a n : ℤ) = A192960 n

end A192960

/-! ## A192960.P15445068628403217607

`floor((2*n+1)/ϕ+ϕ*a(n-1))` with `a(0)=1`
-/

namespace A192960.P15445068628403217607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * n + 1 : ℝ) / Real.goldenRatio + Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A192960.P15445068628403217607

namespace A192960

/-- `floor((2*n+1)/ϕ+ϕ*a(n-1))` -/
def P15445068628403217607.Spec : Prop :=
  ∀ n, P15445068628403217607.a n = A192960 n

end A192960

/-! ## A192960.P2399349791822369183

`1-∑[a(n-1)-(2-a(n-2))]` with `a(0)=0, a(1)=-2`
-/

namespace A192960.P2399349791822369183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -2] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192960.P2399349791822369183

namespace A192960

/-- `1-∑[a(n-1)-(2-a(n-2))]` -/
def P2399349791822369183.Spec : Prop :=
  ∀ n, P2399349791822369183.a n = A192960 n

end A192960

/-! ## A192960.P7139855317804283445

`2*n-1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A192960.P7139855317804283445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 * n : ℤ) - 1 + (a (n - 1) + a (n - 2))

end

end A192960.P7139855317804283445

namespace A192960

/-- `2*n-1+a(n-1)+a(n-2)` -/
def P7139855317804283445.Spec : Prop :=
  ∀ n, P7139855317804283445.a n = A192960 n

end A192960

/-! ## A192960.P3272299131781873939

`2*n-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A192960.P3272299131781873939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 * n : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A192960.P3272299131781873939

namespace A192960

/-- `2*n-(1-a(n-1)-a(n-2))` -/
def P3272299131781873939.Spec : Prop :=
  ∀ n, P3272299131781873939.a n = A192960 n

end A192960

/-! ## A192960.P4832906717461051713

`n-1+a(n-1)+a(n-2)+n` with `a(0)=1, a(1)=3`
-/

namespace A192960.P4832906717461051713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + (a (n - 2) + (n : ℤ)))

end

end A192960.P4832906717461051713

namespace A192960

/-- `n-1+a(n-1)+a(n-2)+n` -/
def P4832906717461051713.Spec : Prop :=
  ∀ n, P4832906717461051713.a n = A192960 n

end A192960

/-! ## A192960.P11862524344041423900

`n-(1-a(n-1)-a(n-2)-n)` with `a(0)=1, a(1)=3`
-/

namespace A192960.P11862524344041423900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 2) - (n : ℤ))

end

end A192960.P11862524344041423900

namespace A192960

/-- `n-(1-a(n-1)-a(n-2)-n)` -/
def P11862524344041423900.Spec : Prop :=
  ∀ n, P11862524344041423900.a n = A192960 n

end A192960

/-! ## A192960.P13335423486455360864

`2*A001924(n)+1`
-/

namespace A192960.P13335423486455360864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001924 n + 1

end

end A192960.P13335423486455360864

namespace A192960

/-- `2*A001924(n)+1` -/
def P13335423486455360864.Spec : Prop :=
  ∀ n, P13335423486455360864.a n = A192960 n

end A192960

/-! ## A192960.P1593748118624145892

`A116730(n+1)+n`
-/

namespace A192960.P1593748118624145892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116730 (n + 1) + (n : ℤ)

end

end A192960.P1593748118624145892

namespace A192960

/-- `A116730(n+1)+n` -/
def P1593748118624145892.Spec : Prop :=
  ∀ n, P1593748118624145892.a n = A192960 n

end A192960

/-! ## A192960.P1703314483137259439

`A192760(n+1)-n`
-/

namespace A192960.P1703314483137259439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 (n + 1) - (n : ℤ)

end

end A192960.P1703314483137259439

namespace A192960

/-- `A192760(n+1)-n` -/
def P1703314483137259439.Spec : Prop :=
  ∀ n, P1703314483137259439.a n = A192960 n

end A192960

/-! ## A192960.P11774066003891699722

`∑[∑[A055389(n)]]-n`
-/

namespace A192960.P11774066003891699722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192960.P11774066003891699722

namespace A192960

/-- `∑[∑[A055389(n)]]-n` -/
def P11774066003891699722.Spec : Prop :=
  ∀ n, P11774066003891699722.a n = A192960 n

end A192960

/-! ## A192960.P6421299659903512584

`∑[A019274(n+2)]+1`
-/

namespace A192960.P6421299659903512584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192960.P6421299659903512584

namespace A192960

/-- `∑[A019274(n+2)]+1` -/
def P6421299659903512584.Spec : Prop :=
  ∀ n, P6421299659903512584.a n = A192960 n

end A192960

/-! ## A192960.P1952350849064424844

`∑[A068922(n+1)-2]`
-/

namespace A192960.P1952350849064424844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192960.P1952350849064424844

namespace A192960

/-- `∑[A068922(n+1)-2]` -/
def P1952350849064424844.Spec : Prop :=
  ∀ n, P1952350849064424844.a n = A192960 n

end A192960

/-! ## A192960.P525305767654695463

`∑[A001595(n+1)]-n`
-/

namespace A192960.P525305767654695463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192960.P525305767654695463

namespace A192960

/-- `∑[A001595(n+1)]-n` -/
def P525305767654695463.Spec : Prop :=
  ∀ n, P525305767654695463.a n = A192960 n

end A192960

/-! ## A192960.P14727513400919902485

`2*A000126(n+1)-1`
-/

namespace A192960.P14727513400919902485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000126 (n + 1) - 1

end

end A192960.P14727513400919902485

namespace A192960

/-- `2*A000126(n+1)-1` -/
def P14727513400919902485.Spec : Prop :=
  ∀ n, P14727513400919902485.a n = A192960 n

end A192960

/-!
# A192961: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192961, the canonical program `A192961.P18063663230279102853` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192961 has offset 0).

The definition of A192961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192961.P18063663230279102853

`(1-n)²+a(n-1)+a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192961

/-- `(1-n)²+a(n-1)+a(n-2)+2` -/
def P18063663230279102853.Spec : Prop :=
  ∀ n, P18063663230279102853.a n = A192961 n

theorem P18063663230279102853.correct : P18063663230279102853.Spec := by
  intro n
  simp only [A192961]

end A192961

/-! ## A192961.P14226893954322761528

`a(n-1)+a(n-2)+n*(n-2)+3` with `a(0)=0, a(1)=1`
-/

namespace A192961.P14226893954322761528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (n : ℤ) * ((n : ℤ) - 2)) + 3

end

end A192961.P14226893954322761528

namespace A192961

/-- `a(n-1)+a(n-2)+n*(n-2)+3` -/
def P14226893954322761528.Spec : Prop :=
  ∀ n, P14226893954322761528.a n = A192961 n

end A192961

/-! ## A192961.P2083155362438841228

`∑[A168193(n)]-n²`
-/

namespace A192961.P2083155362438841228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A192961.P2083155362438841228

namespace A192961

/-- `∑[A168193(n)]-n²` -/
def P2083155362438841228.Spec : Prop :=
  ∀ n, P2083155362438841228.a n = A192961 n

end A192961

/-! ## A192961.P9429072502006432054

`2*A001891(n)-n²`
-/

namespace A192961.P9429072502006432054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001891 n - (n ^ 2 : ℤ)

end

end A192961.P9429072502006432054

namespace A192961

/-- `2*A001891(n)-n²` -/
def P9429072502006432054.Spec : Prop :=
  ∀ n, P9429072502006432054.a n = A192961 n

end A192961

/-! ## A192961.P8267902029401011459

`A192756(n)+n-n²`
-/

namespace A192961.P8267902029401011459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192756 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A192961.P8267902029401011459

namespace A192961

/-- `A192756(n)+n-n²` -/
def P8267902029401011459.Spec : Prop :=
  ∀ n, P8267902029401011459.a n = A192961 n

end A192961

/-! ## A192961.P12178861901673034242

`A064551(n+2)-1+n`
-/

namespace A192961.P12178861901673034242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064551 (n + 2) - 1 + (n : ℤ)

end

end A192961.P12178861901673034242

namespace A192961

/-- `A064551(n+2)-1+n` -/
def P12178861901673034242.Spec : Prop :=
  ∀ n, P12178861901673034242.a n = A192961 n

end A192961

/-! ## A192961.P11917266272463029759

`∑[∑[A019274(n+1)]]+n`
-/

namespace A192961.P11917266272463029759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A192961.P11917266272463029759

namespace A192961

/-- `∑[∑[A019274(n+1)]]+n` -/
def P11917266272463029759.Spec : Prop :=
  ∀ n, P11917266272463029759.a n = A192961 n

end A192961

/-! ## A192961.P5089092355511297126

`∑[∑[A001595(n)-1]]+n`
-/

namespace A192961.P5089092355511297126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A192961.P5089092355511297126

namespace A192961

/-- `∑[∑[A001595(n)-1]]+n` -/
def P5089092355511297126.Spec : Prop :=
  ∀ n, P5089092355511297126.a n = A192961 n

end A192961

/-! ## A192961.P7759568560480381071

`A063758(n+1)-(n+2)²`
-/

namespace A192961.P7759568560480381071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063758 (n + 1) - ((n + 2) ^ 2 : ℤ)

end

end A192961.P7759568560480381071

namespace A192961

/-- `A063758(n+1)-(n+2)²` -/
def P7759568560480381071.Spec : Prop :=
  ∀ n, P7759568560480381071.a n = A192961 n

end A192961

/-! ## A192961.P18284003792918336411

`2*A000128(n+1)-(n+2)`
-/

namespace A192961.P18284003792918336411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000128 (n + 1) - (n + 2 : ℤ)

end

end A192961.P18284003792918336411

namespace A192961

/-- `2*A000128(n+1)-(n+2)` -/
def P18284003792918336411.Spec : Prop :=
  ∀ n, P18284003792918336411.a n = A192961 n

end A192961

/-! ## A192961.P12514504686053951503

`∑[A078642(n+1)]-(n+2)²`
-/

namespace A192961.P12514504686053951503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 2) ^ 2 : ℤ)

end

end A192961.P12514504686053951503

namespace A192961

/-- `∑[A078642(n+1)]-(n+2)²` -/
def P12514504686053951503.Spec : Prop :=
  ∀ n, P12514504686053951503.a n = A192961 n

end A192961

/-! ## A192961.P17612276191325771005

`∑[A068922(n+2)]-(n+2)²`
-/

namespace A192961.P17612276191325771005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 2) ^ 2 : ℤ)

end

end A192961.P17612276191325771005

namespace A192961

/-- `∑[A068922(n+2)]-(n+2)²` -/
def P17612276191325771005.Spec : Prop :=
  ∀ n, P17612276191325771005.a n = A192961 n

end A192961

/-! ## A192961.P11454136679624067141

`∑[A055389(n+3)]-(n+2)²`
-/

namespace A192961.P11454136679624067141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 2) ^ 2 : ℤ)

end

end A192961.P11454136679624067141

namespace A192961

/-- `∑[A055389(n+3)]-(n+2)²` -/
def P11454136679624067141.Spec : Prop :=
  ∀ n, P11454136679624067141.a n = A192961 n

end A192961

/-! ## A192961.P12834097948538284872

`∑[A128588(n+3)]-(n+2)²`
-/

namespace A192961.P12834097948538284872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 2) ^ 2 : ℤ)

end

end A192961.P12834097948538284872

namespace A192961

/-- `∑[A128588(n+3)]-(n+2)²` -/
def P12834097948538284872.Spec : Prop :=
  ∀ n, P12834097948538284872.a n = A192961 n

end A192961

/-! ## A192961.P5222340065222760323

`∑[2*A000045(n+3)]-(n+2)²`
-/

namespace A192961.P5222340065222760323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 2) ^ 2 : ℤ)

end

end A192961.P5222340065222760323

namespace A192961

/-- `∑[2*A000045(n+3)]-(n+2)²` -/
def P5222340065222760323.Spec : Prop :=
  ∀ n, P5222340065222760323.a n = A192961 n

end A192961

/-! ## A192961.P11559266521990766758

`∑[∑[2*(A000045(n+1)-1)]]+n`
-/

namespace A192961.P11559266521990766758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 (n + 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A192961.P11559266521990766758

namespace A192961

/-- `∑[∑[2*(A000045(n+1)-1)]]+n` -/
def P11559266521990766758.Spec : Prop :=
  ∀ n, P11559266521990766758.a n = A192961 n

end A192961

/-! ## A192961.P13711636196225077198

`A163250(n)+A001911(n)`
-/

namespace A192961.P13711636196225077198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 n + A001911 n

end

end A192961.P13711636196225077198

namespace A192961

/-- `A163250(n)+A001911(n)` -/
def P13711636196225077198.Spec : Prop :=
  ∀ n, P13711636196225077198.a n = A192961 n

end A192961

/-! ## A192961.P4122617534628854553

`A192751(n)+A014283(n)`
-/

namespace A192961.P4122617534628854553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192751 n + A014283 n

end

end A192961.P4122617534628854553

namespace A192961

/-- `A192751(n)+A014283(n)` -/
def P4122617534628854553.Spec : Prop :=
  ∀ n, P4122617534628854553.a n = A192961 n

end A192961

/-! ## A192961.P12292355534366311281

`A192963(n)-A065220(n)`
-/

namespace A192961.P12292355534366311281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192963 n - A065220 n

end

end A192961.P12292355534366311281

namespace A192961

/-- `A192963(n)-A065220(n)` -/
def P12292355534366311281.Spec : Prop :=
  ∀ n, P12292355534366311281.a n = A192961 n

end A192961

/-! ## A192961.P18185261446973242819

`A192389(n)+A000071(n+1)`
-/

namespace A192961.P18185261446973242819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192389 n + A000071 (n + 1)

end

end A192961.P18185261446973242819

namespace A192961

/-- `A192389(n)+A000071(n+1)` -/
def P18185261446973242819.Spec : Prop :=
  ∀ n, P18185261446973242819.a n = A192961 n

end A192961

/-!
# A192962: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192962, the canonical program `A192962.P1498123101962715990` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192962 has offset 1).

The definition of A192962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192962.P1498123101962715990

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192962

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P1498123101962715990.Spec : Prop :=
  ∀ n, P1498123101962715990.a n = A192962 (n + 1)

theorem P1498123101962715990.correct : P1498123101962715990.Spec := by
  intro n
  simp only [A192962, Nat.add_sub_cancel]

end A192962

/-! ## A192962.P2766819362660579458

`∑[a(n-1)+a(n-2)+2]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A192962.P2766819362660579458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192962.P2766819362660579458

namespace A192962

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P2766819362660579458.Spec : Prop :=
  ∀ n, (P2766819362660579458.a n : ℤ) = A192962 (n + 1)

end A192962

/-! ## A192962.P23289762386612655

`2*n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A192962.P23289762386612655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * n + (a (n - 1) + a (n - 2))

end

end A192962.P23289762386612655

namespace A192962

/-- `2*n+a(n-1)+a(n-2)` -/
def P23289762386612655.Spec : Prop :=
  ∀ n, (P23289762386612655.a n : ℤ) = A192962 (n + 1)

end A192962

/-! ## A192962.P1732635745095706612

`a(n-1)+a(n-2)+n+n` with `a(0)=1, a(1)=2`
-/

namespace A192962.P1732635745095706612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 2) + n + n)

end

end A192962.P1732635745095706612

namespace A192962

/-- `a(n-1)+a(n-2)+n+n` -/
def P1732635745095706612.Spec : Prop :=
  ∀ n, (P1732635745095706612.a n : ℤ) = A192962 (n + 1)

end A192962

/-! ## A192962.P1467117069451446508

`n-∑[a(n-1)-(3-a(n-2))]` with `a(0)=-1, a(1)=0`
-/

namespace A192962.P1467117069451446508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192962.P1467117069451446508

namespace A192962

/-- `n-∑[a(n-1)-(3-a(n-2))]` -/
def P1467117069451446508.Spec : Prop :=
  ∀ n, P1467117069451446508.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P4298190637893586559

`3*n-(n-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A192962.P4298190637893586559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 * n : ℤ) - ((n : ℤ) - a (n - 1) - a (n - 2))

end

end A192962.P4298190637893586559

namespace A192962

/-- `3*n-(n-a(n-1)-a(n-2))` -/
def P4298190637893586559.Spec : Prop :=
  ∀ n, P4298190637893586559.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P215387091568891386

`A022120(n+1)-2*(n+3)`
-/

namespace A192962.P215387091568891386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 (n + 1) - (2 * (n + 3) : ℤ)

end

end A192962.P215387091568891386

namespace A192962

/-- `A022120(n+1)-2*(n+3)` -/
def P215387091568891386.Spec : Prop :=
  ∀ n, P215387091568891386.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P6264893671839192772

`A187891(n+3)-(2*n+7)`
-/

namespace A192962.P6264893671839192772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 (n + 3) - (2 * n + 7 : ℤ)

end

end A192962.P6264893671839192772

namespace A192962

/-- `A187891(n+3)-(2*n+7)` -/
def P6264893671839192772.Spec : Prop :=
  ∀ n, P6264893671839192772.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P3360959071844321695

`A001891(n)+A001595(n)`
-/

namespace A192962.P3360959071844321695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + A001595 n

end

end A192962.P3360959071844321695

namespace A192962

/-- `A001891(n)+A001595(n)` -/
def P3360959071844321695.Spec : Prop :=
  ∀ n, P3360959071844321695.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P9086275877832564163

`A030119(n)+A001924(n)`
-/

namespace A192962.P9086275877832564163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 n + A001924 n

end

end A192962.P9086275877832564163

namespace A192962

/-- `A030119(n)+A001924(n)` -/
def P9086275877832564163.Spec : Prop :=
  ∀ n, P9086275877832564163.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P7107146085629612972

`A192956(n)+A001610(n)`
-/

namespace A192962.P7107146085629612972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + A001610 n

end

end A192962.P7107146085629612972

namespace A192962

/-- `A192956(n)+A001610(n)` -/
def P7107146085629612972.Spec : Prop :=
  ∀ n, P7107146085629612972.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P6277220599924332374

`A192979(n)+A001911(n)`
-/

namespace A192962.P6277220599924332374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n + A001911 n

end

end A192962.P6277220599924332374

namespace A192962

/-- `A192979(n)+A001911(n)` -/
def P6277220599924332374.Spec : Prop :=
  ∀ n, P6277220599924332374.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P11062520835920221621

`A192958(n)+A022308(n)`
-/

namespace A192962.P11062520835920221621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192958 n + A022308 n

end

end A192962.P11062520835920221621

namespace A192962

/-- `A192958(n)+A022308(n)` -/
def P11062520835920221621.Spec : Prop :=
  ∀ n, P11062520835920221621.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P1607584334068097649

`A210729(n)+A065220(n)`
-/

namespace A192962.P1607584334068097649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210729 n + A065220 n

end

end A192962.P1607584334068097649

namespace A192962

/-- `A210729(n)+A065220(n)` -/
def P1607584334068097649.Spec : Prop :=
  ∀ n, P1607584334068097649.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P9468470123086543713

`A210677(n)+A104161(n)`
-/

namespace A192962.P9468470123086543713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + A104161 n

end

end A192962.P9468470123086543713

namespace A192962

/-- `A210677(n)+A104161(n)` -/
def P9468470123086543713.Spec : Prop :=
  ∀ n, P9468470123086543713.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P17970927598146618637

`A210730(n)+A131269(n)`
-/

namespace A192962.P17970927598146618637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A131269 n

end

end A192962.P17970927598146618637

namespace A192962

/-- `A210730(n)+A131269(n)` -/
def P17970927598146618637.Spec : Prop :=
  ∀ n, P17970927598146618637.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P16275337780319144124

`A027181(n)-A000045(n)`
-/

namespace A192962.P16275337780319144124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 n - A000045 n

end

end A192962.P16275337780319144124

namespace A192962

/-- `A027181(n)-A000045(n)` -/
def P16275337780319144124.Spec : Prop :=
  ∀ n, P16275337780319144124.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P14730607351187727645

`∑[A014739(n)]-A000045(n)`
-/

namespace A192962.P14730607351187727645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A192962.P14730607351187727645

namespace A192962

/-- `∑[A014739(n)]-A000045(n)` -/
def P14730607351187727645.Spec : Prop :=
  ∀ n, P14730607351187727645.a n = A192962 (n + 1)

end A192962

/-! ## A192962.P6231452847122663068

`A192760(n)+A066982(n+1)`
-/

namespace A192962.P6231452847122663068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 n + A066982 (n + 1)

end

end A192962.P6231452847122663068

namespace A192962

/-- `A192760(n)+A066982(n+1)` -/
def P6231452847122663068.Spec : Prop :=
  ∀ n, P6231452847122663068.a n = A192962 (n + 1)

end A192962

/-!
# A192963: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192963, the canonical program `A192963.P4649034701834742543` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192963 has offset 0).

The definition of A192963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192963.P4649034701834742543

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=10, a(4)=25`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192963

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P4649034701834742543.Spec : Prop :=
  ∀ n, P4649034701834742543.a n = A192963 n

theorem P4649034701834742543.correct : P4649034701834742543.Spec := by
  intro n
  simp only [A192963]

end A192963

/-! ## A192963.P4252936454601104522

`a(n-1)+a(n-2)+n²-n` with `a(0)=0, a(1)=1`
-/

namespace A192963.P4252936454601104522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + ((n ^ 2 : ℤ) - (n : ℤ)))

end

end A192963.P4252936454601104522

namespace A192963

/-- `a(n-1)+a(n-2)+n²-n` -/
def P4252936454601104522.Spec : Prop :=
  ∀ n, P4252936454601104522.a n = A192963 n

end A192963

/-! ## A192963.P6453794109572242826

`a(n-1)-(n-a(n-2)-n²)` with `a(0)=0, a(1)=1`
-/

namespace A192963.P6453794109572242826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ((n : ℤ) - a (n - 2) - (n ^ 2 : ℤ))

end

end A192963.P6453794109572242826

namespace A192963

/-- `a(n-1)-(n-a(n-2)-n²)` -/
def P6453794109572242826.Spec : Prop :=
  ∀ n, P6453794109572242826.a n = A192963 n

end A192963

/-! ## A192963.P10381163543046541447

`∑[∑[a(n-1)+a(n-2)+2]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A192963.P10381163543046541447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 5] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192963.P10381163543046541447

namespace A192963

/-- `∑[∑[a(n-1)+a(n-2)+2]]` -/
def P10381163543046541447.Spec : Prop :=
  ∀ n, (P10381163543046541447.a n : ℤ) = A192963 n

end A192963

/-! ## A192963.P17353424466110445684

`n*(n-1)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192963.P17353424466110445684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) * ((n : ℤ) - 1) + (a (n - 1) + a (n - 2))

end

end A192963.P17353424466110445684

namespace A192963

/-- `n*(n-1)+a(n-1)+a(n-2)` -/
def P17353424466110445684.Spec : Prop :=
  ∀ n, P17353424466110445684.a n = A192963 n

end A192963

/-! ## A192963.P14071691176392691305

`a(n-1)-(n*(1-n)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A192963.P14071691176392691305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ((n : ℤ) * (1 - (n : ℤ)) - a (n - 2))

end

end A192963.P14071691176392691305

namespace A192963

/-- `a(n-1)-(n*(1-n)-a(n-2))` -/
def P14071691176392691305.Spec : Prop :=
  ∀ n, P14071691176392691305.a n = A192963 n

end A192963

/-! ## A192963.P1914754486615740553

`A192962(n+2)-(n+1)*(n+2)`
-/

namespace A192963.P1914754486615740553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192962 (n + 2) - ((n + 1) * (n + 2) : ℤ)

end

end A192963.P1914754486615740553

namespace A192963

/-- `A192962(n+2)-(n+1)*(n+2)` -/
def P1914754486615740553.Spec : Prop :=
  ∀ n, P1914754486615740553.a n = A192963 n

end A192963

/-! ## A192963.P5370065651880381324

`A192756(n)+A014283(n)`
-/

namespace A192963.P5370065651880381324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192756 n + A014283 n

end

end A192963.P5370065651880381324

namespace A192963

/-- `A192756(n)+A014283(n)` -/
def P5370065651880381324.Spec : Prop :=
  ∀ n, P5370065651880381324.a n = A192963 n

end A192963

/-! ## A192963.P9290262087431347872

`A192961(n)+A065220(n)`
-/

namespace A192963.P9290262087431347872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192961 n + A065220 n

end

end A192963.P9290262087431347872

namespace A192963

/-- `A192961(n)+A065220(n)` -/
def P9290262087431347872.Spec : Prop :=
  ∀ n, P9290262087431347872.a n = A192963 n

end A192963

/-! ## A192963.P9209445790786145339

`A163250(n)+A104161(n)`
-/

namespace A192963.P9209445790786145339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 n + A104161 n

end

end A192963.P9209445790786145339

namespace A192963

/-- `A163250(n)+A104161(n)` -/
def P9209445790786145339.Spec : Prop :=
  ∀ n, P9209445790786145339.a n = A192963 n

end A192963

/-! ## A192963.P9169373272732350569

`∑[A192956(n)]-A192967(n)`
-/

namespace A192963.P9169373272732350569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A192967 n

end

end A192963.P9169373272732350569

namespace A192963

/-- `∑[A192956(n)]-A192967(n)` -/
def P9169373272732350569.Spec : Prop :=
  ∀ n, P9169373272732350569.a n = A192963 n

end A192963

/-! ## A192963.P13996308311736094199

`∑[A192964(n)]-A212804(n)`
-/

namespace A192963.P13996308311736094199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212804 n

end

end A192963.P13996308311736094199

namespace A192963

/-- `∑[A192964(n)]-A212804(n)` -/
def P13996308311736094199.Spec : Prop :=
  ∀ n, P13996308311736094199.a n = A192963 n

end A192963

/-! ## A192963.P13171144600015941898

`A192978(n)-A000071(n+1)`
-/

namespace A192963.P13171144600015941898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 n - A000071 (n + 1)

end

end A192963.P13171144600015941898

namespace A192963

/-- `A192978(n)-A000071(n+1)` -/
def P13171144600015941898.Spec : Prop :=
  ∀ n, P13171144600015941898.a n = A192963 n

end A192963

/-! ## A192963.P11756753607034368422

`A192957(n+1)-A192967(n)`
-/

namespace A192963.P11756753607034368422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 (n + 1) - A192967 n

end

end A192963.P11756753607034368422

namespace A192963

/-- `A192957(n+1)-A192967(n)` -/
def P11756753607034368422.Spec : Prop :=
  ∀ n, P11756753607034368422.a n = A192963 n

end A192963

/-! ## A192963.P18105274265142527295

`2*A192966(n)-A000045(n)`
-/

namespace A192963.P18105274265142527295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192966 n - A000045 n

end

end A192963.P18105274265142527295

namespace A192963

/-- `2*A192966(n)-A000045(n)` -/
def P18105274265142527295.Spec : Prop :=
  ∀ n, P18105274265142527295.a n = A192963 n

end A192963

/-! ## A192963.P10662655410744022529

`A001891(n)+A192982(n)-n`
-/

namespace A192963.P10662655410744022529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + (A192982 n - (n : ℤ))

end

end A192963.P10662655410744022529

namespace A192963

/-- `A001891(n)+A192982(n)-n` -/
def P10662655410744022529.Spec : Prop :=
  ∀ n, P10662655410744022529.a n = A192963 n

end A192963

/-! ## A192963.P16426411676860764769

`A192978(n)+1-∑[A212804(n)]`
-/

namespace A192963.P16426411676860764769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192963.P16426411676860764769

namespace A192963

/-- `A192978(n)+1-∑[A212804(n)]` -/
def P16426411676860764769.Spec : Prop :=
  ∀ n, P16426411676860764769.a n = A192963 n

end A192963

/-! ## A192963.P11901268009202925232

`A001891(n)+A192951(n)-n²`
-/

namespace A192963.P11901268009202925232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + (A192951 n - (n ^ 2 : ℤ))

end

end A192963.P11901268009202925232

namespace A192963

/-- `A001891(n)+A192951(n)-n²` -/
def P11901268009202925232.Spec : Prop :=
  ∀ n, P11901268009202925232.a n = A192963 n

end A192963

/-! ## A192963.P1803150040601719111

`A192978(n)-(A000045(n+1)-1)`
-/

namespace A192963.P1803150040601719111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 n - (A000045 (n + 1) - 1)

end

end A192963.P1803150040601719111

namespace A192963

/-- `A192978(n)-(A000045(n+1)-1)` -/
def P1803150040601719111.Spec : Prop :=
  ∀ n, P1803150040601719111.a n = A192963 n

end A192963

/-! ## A192963.P18407253779232679538

`A192951(n)+A192982(n)-A000045(n)`
-/

namespace A192963.P18407253779232679538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A192982 n - A000045 n)

end

end A192963.P18407253779232679538

namespace A192963

/-- `A192951(n)+A192982(n)-A000045(n)` -/
def P18407253779232679538.Spec : Prop :=
  ∀ n, P18407253779232679538.a n = A192963 n

end A192963

/-!
# A192964: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192964, the canonical program `A192964.P13304285455171180663` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192964 has offset 0).

The definition of A192964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192964.P13304285455171180663

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192964

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P13304285455171180663.Spec : Prop :=
  ∀ n, P13304285455171180663.a n = A192964 n

theorem P13304285455171180663.correct : P13304285455171180663.Spec := by
  intro n
  simp only [A192964]

end A192964

/-! ## A192964.P12994056978468539763

`∑[a(n-1)+a(n-2)+2]` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A192964.P12994056978468539763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192964.P12994056978468539763

namespace A192964

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P12994056978468539763.Spec : Prop :=
  ∀ n, P12994056978468539763.a n = A192964 n

end A192964

/-! ## A192964.P18138647131933397186

`2*(a(n-1)+1)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A192964.P18138647131933397186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  2 * (a (n - 1) + 1) - a (n - 3)

end

end A192964.P18138647131933397186

namespace A192964

/-- `2*(a(n-1)+1)-a(n-3)` -/
def P18138647131933397186.Spec : Prop :=
  ∀ n, P18138647131933397186.a n = A192964 n

end A192964

/-! ## A192964.P10734664049275853244

`2*a(n-1)-(a(n-3)-2)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A192964.P10734664049275853244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 2)

end

end A192964.P10734664049275853244

namespace A192964

/-- `2*a(n-1)-(a(n-3)-2)` -/
def P10734664049275853244.Spec : Prop :=
  ∀ n, P10734664049275853244.a n = A192964 n

end A192964

/-! ## A192964.P9803949726889116860

`n-∑[a(n-1)-(3-a(n-2))]` with `a(0)=-1, a(1)=2`
-/

namespace A192964.P9803949726889116860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192964.P9803949726889116860

namespace A192964

/-- `n-∑[a(n-1)-(3-a(n-2))]` -/
def P9803949726889116860.Spec : Prop :=
  ∀ n, P9803949726889116860.a n = A192964 n

end A192964

/-! ## A192964.P4587681026075100526

`a(n-1)-2+a(n-2)+n+n` with `a(0)=1, a(1)=0`
-/

namespace A192964.P4587681026075100526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - 2 + (a (n - 2) + (n : ℤ) + (n : ℤ))

end

end A192964.P4587681026075100526

namespace A192964

/-- `a(n-1)-2+a(n-2)+n+n` -/
def P4587681026075100526.Spec : Prop :=
  ∀ n, P4587681026075100526.a n = A192964 n

end A192964

/-! ## A192964.P6319128242266872903

`a(n-1)-(2-a(n-2)-n-n)` with `a(0)=1, a(1)=0`
-/

namespace A192964.P6319128242266872903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (2 - a (n - 2) - (n : ℤ) - (n : ℤ))

end

end A192964.P6319128242266872903

namespace A192964

/-- `a(n-1)-(2-a(n-2)-n-n)` -/
def P6319128242266872903.Spec : Prop :=
  ∀ n, P6319128242266872903.a n = A192964 n

end A192964

/-! ## A192964.P11146670230769197717

`A210677(n)-n`
-/

namespace A192964.P11146670230769197717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n - (n : ℤ)

end

end A192964.P11146670230769197717

namespace A192964

/-- `A210677(n)-n` -/
def P11146670230769197717.Spec : Prop :=
  ∀ n, P11146670230769197717.a n = A192964 n

end A192964

/-! ## A192964.P8862539836786969217

`A210730(n)+1-n`
-/

namespace A192964.P8862539836786969217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + (1 - (n : ℤ))

end

end A192964.P8862539836786969217

namespace A192964

/-- `A210730(n)+1-n` -/
def P8862539836786969217.Spec : Prop :=
  ∀ n, P8862539836786969217.a n = A192964 n

end A192964

/-! ## A192964.P7658308458385797848

`A182415(n)-2*n`
-/

namespace A192964.P7658308458385797848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n - (2 * n : ℤ)

end

end A192964.P7658308458385797848

namespace A192964

/-- `A182415(n)-2*n` -/
def P7658308458385797848.Spec : Prop :=
  ∀ n, P7658308458385797848.a n = A192964 n

end A192964

/-! ## A192964.P4891486013584326557

`A171237(n)-Δ[n²]`
-/

namespace A192964.P4891486013584326557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A192964.P4891486013584326557

namespace A192964

/-- `A171237(n)-Δ[n²]` -/
def P4891486013584326557.Spec : Prop :=
  ∀ n, P4891486013584326557.a n = A192964 n

end A192964

/-! ## A192964.P1567200640267529336

`A022095(n+1)-2*(n+2)`
-/

namespace A192964.P1567200640267529336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (n + 1) - (2 * (n + 2) : ℤ)

end

end A192964.P1567200640267529336

namespace A192964

/-- `A022095(n+1)-2*(n+2)` -/
def P1567200640267529336.Spec : Prop :=
  ∀ n, P1567200640267529336.a n = A192964 n

end A192964

/-! ## A192964.P14333653853893651896

`A022309(n+1)-(2*n+3)`
-/

namespace A192964.P14333653853893651896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 (n + 1) - (2 * n + 3 : ℤ)

end

end A192964.P14333653853893651896

namespace A192964

/-- `A022309(n+1)-(2*n+3)` -/
def P14333653853893651896.Spec : Prop :=
  ∀ n, P14333653853893651896.a n = A192964 n

end A192964

/-! ## A192964.P16309525898242739063

`A192979(n)-A000045(n)`
-/

namespace A192964.P16309525898242739063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n - A000045 n

end

end A192964.P16309525898242739063

namespace A192964

/-- `A192979(n)-A000045(n)` -/
def P16309525898242739063.Spec : Prop :=
  ∀ n, P16309525898242739063.a n = A192964 n

end A192964

/-! ## A192964.P11741447957251130045

`A192969(n)-A002062(n)`
-/

namespace A192964.P11741447957251130045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n - A002062 n

end

end A192964.P11741447957251130045

namespace A192964

/-- `A192969(n)-A002062(n)` -/
def P11741447957251130045.Spec : Prop :=
  ∀ n, P11741447957251130045.a n = A192964 n

end A192964

/-! ## A192964.P10686432281679692146

`A065220(n+1)+A030119(n)`
-/

namespace A192964.P10686432281679692146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 1) + A030119 n

end

end A192964.P10686432281679692146

namespace A192964

/-- `A065220(n+1)+A030119(n)` -/
def P10686432281679692146.Spec : Prop :=
  ∀ n, P10686432281679692146.a n = A192964 n

end A192964

/-! ## A192964.P7768119352583859248

`A192981(n)+A000071(n+1)`
-/

namespace A192964.P7768119352583859248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 n + A000071 (n + 1)

end

end A192964.P7768119352583859248

namespace A192964

/-- `A192981(n)+A000071(n+1)` -/
def P7768119352583859248.Spec : Prop :=
  ∀ n, P7768119352583859248.a n = A192964 n

end A192964

/-! ## A192964.P1898682430487480977

`A210673(n+1)+A192760(n)`
-/

namespace A192964.P1898682430487480977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 (n + 1) + A192760 n

end

end A192964.P1898682430487480977

namespace A192964

/-- `A210673(n+1)+A192760(n)` -/
def P1898682430487480977.Spec : Prop :=
  ∀ n, P1898682430487480977.a n = A192964 n

end A192964

/-! ## A192964.P4295849884903778753

`A192956(n)-A000071(n+1)`
-/

namespace A192964.P4295849884903778753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n - A000071 (n + 1)

end

end A192964.P4295849884903778753

namespace A192964

/-- `A192956(n)-A000071(n+1)` -/
def P4295849884903778753.Spec : Prop :=
  ∀ n, P4295849884903778753.a n = A192964 n

end A192964

/-!
# A192965: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192965, the canonical program `A192965.P7180532051949792776` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192965 has offset 0).

The definition of A192965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192965.P7180532051949792776

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192965

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P7180532051949792776.Spec : Prop :=
  ∀ n, P7180532051949792776.a n = A192965 n

theorem P7180532051949792776.correct : P7180532051949792776.Spec := by
  intro n
  simp only [A192965]

end A192965

/-! ## A192965.P18157391713315653961

`(n-1)*(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192965.P18157391713315653961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2) + (a (n - 1) + a (n - 2))

end

end A192965.P18157391713315653961

namespace A192965

/-- `(n-1)*(n-2)+a(n-1)+a(n-2)` -/
def P18157391713315653961.Spec : Prop :=
  ∀ n, P18157391713315653961.a n = A192965 n

end A192965

/-! ## A192965.P3443139314884160923

`1-n+(1-n)²+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192965.P3443139314884160923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (n : ℤ) + ((1 - (n : ℤ)) ^ 2 + (a (n - 1) + a (n - 2)))

end

end A192965.P3443139314884160923

namespace A192965

/-- `1-n+(1-n)²+a(n-1)+a(n-2)` -/
def P3443139314884160923.Spec : Prop :=
  ∀ n, P3443139314884160923.a n = A192965 n

end A192965

/-! ## A192965.P17560517961342138081

`a(n-1)+a(n-2)-∑[a(n-1)-2]+n` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A192965.P17560517961342138081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) + (a (n - 2) - ∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A192965.P17560517961342138081

namespace A192965

/-- `a(n-1)+a(n-2)-∑[a(n-1)-2]+n` -/
def P17560517961342138081.Spec : Prop :=
  ∀ n, P17560517961342138081.a n = A192965 n

end A192965

/-! ## A192965.P10069240903223575259

`∑[A192964(abs(1-n))]`
-/

namespace A192965.P10069240903223575259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192965.P10069240903223575259

namespace A192965

/-- `∑[A192964(abs(1-n))]` -/
def P10069240903223575259.Spec : Prop :=
  ∀ n, P10069240903223575259.a n = A192965 n

end A192965

/-! ## A192965.P3506908301991560489

`A210677(n+1)-(n+1)²`
-/

namespace A192965.P3506908301991560489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A192965.P3506908301991560489

namespace A192965

/-- `A210677(n+1)-(n+1)²` -/
def P3506908301991560489.Spec : Prop :=
  ∀ n, P3506908301991560489.a n = A192965 n

end A192965

/-! ## A192965.P18063494749844539064

`A192964(n+1)-∑[2*n]`
-/

namespace A192965.P18063494749844539064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192965.P18063494749844539064

namespace A192965

/-- `A192964(n+1)-∑[2*n]` -/
def P18063494749844539064.Spec : Prop :=
  ∀ n, P18063494749844539064.a n = A192965 n

end A192965

/-! ## A192965.P10172550258333638847

`A210730(n+1)-n*(n+2)`
-/

namespace A192965.P10172550258333638847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 (n + 1) - (n * (n + 2) : ℤ)

end

end A192965.P10172550258333638847

namespace A192965

/-- `A210730(n+1)-n*(n+2)` -/
def P10172550258333638847.Spec : Prop :=
  ∀ n, P10172550258333638847.a n = A192965 n

end A192965

/-! ## A192965.P2926202655018476087

`A182415(n+1)-(n+1)*(n+2)`
-/

namespace A192965.P2926202655018476087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 (n + 1) - ((n + 1) * (n + 2) : ℤ)

end

end A192965.P2926202655018476087

namespace A192965

/-- `A182415(n+1)-(n+1)*(n+2)` -/
def P2926202655018476087.Spec : Prop :=
  ∀ n, P2926202655018476087.a n = A192965 n

end A192965

/-! ## A192965.P12809112788438091810

`A192754(n)-A028387(n)`
-/

namespace A192965.P12809112788438091810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192754 n - A028387 n

end

end A192965.P12809112788438091810

namespace A192965

/-- `A192754(n)-A028387(n)` -/
def P12809112788438091810.Spec : Prop :=
  ∀ n, P12809112788438091810.a n = A192965 n

end A192965

/-! ## A192965.P10631895143513196183

`A192959(n)-A065220(n)`
-/

namespace A192965.P10631895143513196183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192959 n - A065220 n

end

end A192965.P10631895143513196183

namespace A192965

/-- `A192959(n)-A065220(n)` -/
def P10631895143513196183.Spec : Prop :=
  ∀ n, P10631895143513196183.a n = A192965 n

end A192965

/-! ## A192965.P14555908810264221914

`A192748(n+1)+A014283(n)`
-/

namespace A192965.P14555908810264221914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192748 (n + 1) + A014283 n

end

end A192965.P14555908810264221914

namespace A192965

/-- `A192748(n+1)+A014283(n)` -/
def P14555908810264221914.Spec : Prop :=
  ∀ n, P14555908810264221914.a n = A192965 n

end A192965

/-! ## A192965.P17226695970140756345

`A192980(n)-A000071(n+1)`
-/

namespace A192965.P17226695970140756345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192980 n - A000071 (n + 1)

end

end A192965.P17226695970140756345

namespace A192965

/-- `A192980(n)-A000071(n+1)` -/
def P17226695970140756345.Spec : Prop :=
  ∀ n, P17226695970140756345.a n = A192965 n

end A192965

/-! ## A192965.P5819081350294946051

`2*A192968(n)-A000045(n)`
-/

namespace A192965.P5819081350294946051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192968 n - A000045 n

end

end A192965.P5819081350294946051

namespace A192965

/-- `2*A192968(n)-A000045(n)` -/
def P5819081350294946051.Spec : Prop :=
  ∀ n, P5819081350294946051.a n = A192965 n

end A192965

/-! ## A192965.P17428592876865450698

`A192959(n)+n-A000045(n)`
-/

namespace A192965.P17428592876865450698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192959 n + ((n : ℤ) - A000045 n)

end

end A192965.P17428592876865450698

namespace A192965

/-- `A192959(n)+n-A000045(n)` -/
def P17428592876865450698.Spec : Prop :=
  ∀ n, P17428592876865450698.a n = A192965 n

end A192965

/-! ## A192965.P11514490262687479623

`A001924(n)+A192953(n)-n²`
-/

namespace A192965.P11514490262687479623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + (A192953 n - (n ^ 2 : ℤ))

end

end A192965.P11514490262687479623

namespace A192965

/-- `A001924(n)+A192953(n)-n²` -/
def P11514490262687479623.Spec : Prop :=
  ∀ n, P11514490262687479623.a n = A192965 n

end A192965

/-! ## A192965.P3687334995852801513

`A192953(n)+A192955(n)-A192951(n)`
-/

namespace A192965.P3687334995852801513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 n + (A192955 n - A192951 n)

end

end A192965.P3687334995852801513

namespace A192965

/-- `A192953(n)+A192955(n)-A192951(n)` -/
def P3687334995852801513.Spec : Prop :=
  ∀ n, P3687334995852801513.a n = A192965 n

end A192965

/-! ## A192965.P14192391535116414597

`A192953(n)+A192957(n)-A192952(n)`
-/

namespace A192965.P14192391535116414597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 n + (A192957 n - A192952 n)

end

end A192965.P14192391535116414597

namespace A192965

/-- `A192953(n)+A192957(n)-A192952(n)` -/
def P14192391535116414597.Spec : Prop :=
  ∀ n, P14192391535116414597.a n = A192965 n

end A192965

/-! ## A192965.P108067140020893871

`A192952(n)+A192982(n)-A192953(n)`
-/

namespace A192965.P108067140020893871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 n + (A192982 n - A192953 n)

end

end A192965.P108067140020893871

namespace A192965

/-- `A192952(n)+A192982(n)-A192953(n)` -/
def P108067140020893871.Spec : Prop :=
  ∀ n, P108067140020893871.a n = A192965 n

end A192965

/-! ## A192965.P376805163510011147

`A192957(n)+A192980(n)-A192955(n)`
-/

namespace A192965.P376805163510011147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 n + (A192980 n - A192955 n)

end

end A192965.P376805163510011147

namespace A192965

/-- `A192957(n)+A192980(n)-A192955(n)` -/
def P376805163510011147.Spec : Prop :=
  ∀ n, P376805163510011147.a n = A192965 n

end A192965

/-!
# A192966: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192966, the canonical program `A192966.P5720599041917744151` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192966 has offset 0).

The definition of A192966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192966.P5720599041917744151

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192966

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P5720599041917744151.Spec : Prop :=
  ∀ n, P5720599041917744151.a n = A192966 n

theorem P5720599041917744151.correct : P5720599041917744151.Spec := by
  intro n
  simp only [A192966]

end A192966

/-! ## A192966.P6064438402295396048

`a(n-1)+a(n-2)+C(n, 2)` with `a(0)=0, a(1)=1`
-/

namespace A192966.P6064438402295396048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + Nat.choose n 2)

end

end A192966.P6064438402295396048

namespace A192966

/-- `a(n-1)+a(n-2)+C(n, 2)` -/
def P6064438402295396048.Spec : Prop :=
  ∀ n, (P6064438402295396048.a n : ℤ) = A192966 n

end A192966

/-! ## A192966.P7283841629580536247

`a(n-1)+a(n-2)+∑[n]-n` with `a(0)=0, a(1)=1`
-/

namespace A192966.P7283841629580536247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)))

end

end A192966.P7283841629580536247

namespace A192966

/-- `a(n-1)+a(n-2)+∑[n]-n` -/
def P7283841629580536247.Spec : Prop :=
  ∀ n, P7283841629580536247.a n = A192966 n

end A192966

/-! ## A192966.P4282358291719428831

`a(n-1)-(n-a(n-2)-∑[n])` with `a(0)=0, a(1)=1`
-/

namespace A192966.P4282358291719428831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - ((n : ℤ) - a (n - 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A192966.P4282358291719428831

namespace A192966

/-- `a(n-1)-(n-a(n-2)-∑[n])` -/
def P4282358291719428831.Spec : Prop :=
  ∀ n, P4282358291719428831.a n = A192966 n

end A192966

/-! ## A192966.P17287187277505525417

`A192982(n)+C(n, 2)`
-/

namespace A192966.P17287187277505525417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192982 n + (Nat.choose n 2 : ℤ)

end

end A192966.P17287187277505525417

namespace A192966

/-- `A192982(n)+C(n, 2)` -/
def P17287187277505525417.Spec : Prop :=
  ∀ n, P17287187277505525417.a n = A192966 n

end A192966

/-! ## A192966.P9983376764014766465

`A192981(n+1)-∑[n]`
-/

namespace A192966.P9983376764014766465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192966.P9983376764014766465

namespace A192966

/-- `A192981(n+1)-∑[n]` -/
def P9983376764014766465.Spec : Prop :=
  ∀ n, P9983376764014766465.a n = A192966 n

end A192966

/-! ## A192966.P6186395678142737465

`A192951(n)+n-∑[n]`
-/

namespace A192966.P6186395678142737465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A192966.P6186395678142737465

namespace A192966

/-- `A192951(n)+n-∑[n]` -/
def P6186395678142737465.Spec : Prop :=
  ∀ n, P6186395678142737465.a n = A192966 n

end A192966

/-! ## A192966.P8382443916517364281

`∑[A022308(n)-n]-n`
-/

namespace A192966.P8382443916517364281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192966.P8382443916517364281

namespace A192966

/-- `∑[A022308(n)-n]-n` -/
def P8382443916517364281.Spec : Prop :=
  ∀ n, P8382443916517364281.a n = A192966 n

end A192966

/-! ## A192966.P14463870075530941565

`A030119(n+1)-∑[n+1]`
-/

namespace A192966.P14463870075530941565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192966.P14463870075530941565

namespace A192966

/-- `A030119(n+1)-∑[n+1]` -/
def P14463870075530941565.Spec : Prop :=
  ∀ n, P14463870075530941565.a n = A192966 n

end A192966

/-! ## A192966.P2104511747508630591

`∑[A000285(n)-(n+2)]+1`
-/

namespace A192966.P2104511747508630591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192966.P2104511747508630591

namespace A192966

/-- `∑[A000285(n)-(n+2)]+1` -/
def P2104511747508630591.Spec : Prop :=
  ∀ n, P2104511747508630591.a n = A192966 n

end A192966

/-! ## A192966.P11695906576520859827

`A171516(n+1)-∑[n+2]`
-/

namespace A192966.P11695906576520859827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192966.P11695906576520859827

namespace A192966

/-- `A171516(n+1)-∑[n+2]` -/
def P11695906576520859827.Spec : Prop :=
  ∀ n, P11695906576520859827.a n = A192966 n

end A192966

/-! ## A192966.P14575111423565793423

`A192982(n)+A161680(n)`
-/

namespace A192966.P14575111423565793423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192982 n + A161680 n

end

end A192966.P14575111423565793423

namespace A192966

/-- `A192982(n)+A161680(n)` -/
def P14575111423565793423.Spec : Prop :=
  ∀ n, P14575111423565793423.a n = A192966 n

end A192966

/-! ## A192966.P2591985241156171999

`A193044(n)-A152163(n)`
-/

namespace A192966.P2591985241156171999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 n - A152163 n

end

end A192966.P2591985241156171999

namespace A192966

/-- `A193044(n)-A152163(n)` -/
def P2591985241156171999.Spec : Prop :=
  ∀ n, P2591985241156171999.a n = A192966 n

end A192966

/-! ## A192966.P387817443586872462

`A053311(n)-A034856(n+1)`
-/

namespace A192966.P387817443586872462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 n - A034856 (n + 1)

end

end A192966.P387817443586872462

namespace A192966

/-- `A053311(n)-A034856(n+1)` -/
def P387817443586872462.Spec : Prop :=
  ∀ n, P387817443586872462.a n = A192966 n

end A192966

/-! ## A192966.P12819801403136678075

`A193044(n+1)-A001924(n)`
-/

namespace A192966.P12819801403136678075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193044 (n + 1) - A001924 n

end

end A192966.P12819801403136678075

namespace A192966

/-- `A193044(n+1)-A001924(n)` -/
def P12819801403136678075.Spec : Prop :=
  ∀ n, P12819801403136678075.a n = A192966 n

end A192966

/-! ## A192966.P7990976849302746627

`A000217(n)+A192982(n)-n`
-/

namespace A192966.P7990976849302746627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A192982 n - (n : ℤ))

end

end A192966.P7990976849302746627

namespace A192966

/-- `A000217(n)+A192982(n)-n` -/
def P7990976849302746627.Spec : Prop :=
  ∀ n, P7990976849302746627.a n = A192966 n

end A192966

/-! ## A192966.P16733478282973615544

`A192968(n)+∑[A000071(n+1)]`
-/

namespace A192966.P16733478282973615544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192968 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192966.P16733478282973615544

namespace A192966

/-- `A192968(n)+∑[A000071(n+1)]` -/
def P16733478282973615544.Spec : Prop :=
  ∀ n, P16733478282973615544.a n = A192966 n

end A192966

/-! ## A192966.P13212657694941273926

`A000045(n)+A001891(n)-∑[n]`
-/

namespace A192966.P13212657694941273926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A001891 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A192966.P13212657694941273926

namespace A192966

/-- `A000045(n)+A001891(n)-∑[n]` -/
def P13212657694941273926.Spec : Prop :=
  ∀ n, P13212657694941273926.a n = A192966 n

end A192966

/-! ## A192966.P15521284219156534872

`A000045(n)+∑[A001911(n)-n]`
-/

namespace A192966.P15521284219156534872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192966.P15521284219156534872

namespace A192966

/-- `A000045(n)+∑[A001911(n)-n]` -/
def P15521284219156534872.Spec : Prop :=
  ∀ n, P15521284219156534872.a n = A192966 n

end A192966

/-! ## A192966.P14404866201438956648

`A116717(n+1)-A066982(n+1)`
-/

namespace A192966.P14404866201438956648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116717 (n + 1) - A066982 (n + 1)

end

end A192966.P14404866201438956648

namespace A192966

/-- `A116717(n+1)-A066982(n+1)` -/
def P14404866201438956648.Spec : Prop :=
  ∀ n, P14404866201438956648.a n = A192966 n

end A192966

/-!
# A192967: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192967, the canonical program `A192967.P11708994452125145434` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192967 has offset 0).

The definition of A192967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192967.P11708994452125145434

`a(n-1)+a(n-2)+n-1` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192967

/-- `a(n-1)+a(n-2)+n-1` -/
def P11708994452125145434.Spec : Prop :=
  ∀ n, P11708994452125145434.a n = A192967 n

theorem P11708994452125145434.correct : P11708994452125145434.Spec := by
  intro n
  simp only [A192967]

end A192967

/-! ## A192967.P4653134472231528026

`n-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A192967.P4653134472231528026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A192967.P4653134472231528026

namespace A192967

/-- `n-(1-a(n-1)-a(n-2))` -/
def P4653134472231528026.Spec : Prop :=
  ∀ n, P4653134472231528026.a n = A192967 n

end A192967

/-! ## A192967.P3033899932187777351

`A111314(n)-n`
-/

namespace A192967.P3033899932187777351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n - (n : ℤ)

end

end A192967.P3033899932187777351

namespace A192967

/-- `A111314(n)-n` -/
def P3033899932187777351.Spec : Prop :=
  ∀ n, P3033899932187777351.a n = A192967 n

end A192967

/-! ## A192967.P756985241353996976

`A377628(n)-(n+1)`
-/

namespace A192967.P756985241353996976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 n - (n + 1 : ℤ)

end

end A192967.P756985241353996976

namespace A192967

/-- `A377628(n)-(n+1)` -/
def P756985241353996976.Spec : Prop :=
  ∀ n, P756985241353996976.a n = A192967 n

end A192967

/-! ## A192967.P8035959589279614157

`A022086(n+1)-(n+2)`
-/

namespace A192967.P8035959589279614157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (n + 1) - (n + 2 : ℤ)

end

end A192967.P8035959589279614157

namespace A192967

/-- `A022086(n+1)-(n+2)` -/
def P8035959589279614157.Spec : Prop :=
  ∀ n, P8035959589279614157.a n = A192967 n

end A192967

/-! ## A192967.P2933952460365699835

`A097135(n+1)-(n+2)`
-/

namespace A192967.P2933952460365699835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (n + 1) - (n + 2 : ℤ)

end

end A192967.P2933952460365699835

namespace A192967

/-- `A097135(n+1)-(n+2)` -/
def P2933952460365699835.Spec : Prop :=
  ∀ n, P2933952460365699835.a n = A192967 n

end A192967

/-! ## A192967.P16504371941737535399

`A187893(n+1)-(n+3)`
-/

namespace A192967.P16504371941737535399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 (n + 1) - (n + 3 : ℤ)

end

end A192967.P16504371941737535399

namespace A192967

/-- `A187893(n+1)-(n+3)` -/
def P16504371941737535399.Spec : Prop :=
  ∀ n, P16504371941737535399.a n = A192967 n

end A192967

/-! ## A192967.P10292374290438947725

`3*A000071(n+1)+1-n`
-/

namespace A192967.P10292374290438947725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000071 (n + 1) + 1 - (n : ℤ)

end

end A192967.P10292374290438947725

namespace A192967

/-- `3*A000071(n+1)+1-n` -/
def P10292374290438947725.Spec : Prop :=
  ∀ n, P10292374290438947725.a n = A192967 n

end A192967

/-! ## A192967.P526006141751030126

`3*A000045(n+1)-(n+2)`
-/

namespace A192967.P526006141751030126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (n + 1) - (n + 2 : ℤ)

end

end A192967.P526006141751030126

namespace A192967

/-- `3*A000045(n+1)-(n+2)` -/
def P526006141751030126.Spec : Prop :=
  ∀ n, P526006141751030126.a n = A192967 n

end A192967

/-! ## A192967.P13228771184911626688

`3*A212804(n+2)-(n+2)`
-/

namespace A192967.P13228771184911626688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A212804 (n + 2) - (n + 2 : ℤ)

end

end A192967.P13228771184911626688

namespace A192967

/-- `3*A212804(n+2)-(n+2)` -/
def P13228771184911626688.Spec : Prop :=
  ∀ n, P13228771184911626688.a n = A192967 n

end A192967

/-! ## A192967.P15921338768348982065

`3*A324969(n+2)-(n+2)`
-/

namespace A192967.P15921338768348982065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A324969 (n + 2) - (n + 2 : ℤ)

end

end A192967.P15921338768348982065

namespace A192967

/-- `3*A324969(n+2)-(n+2)` -/
def P15921338768348982065.Spec : Prop :=
  ∀ n, P15921338768348982065.a n = A192967 n

end A192967

/-! ## A192967.P433549978946101535

`A152163(n)+A104161(n)`
-/

namespace A192967.P433549978946101535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A104161 n

end

end A192967.P433549978946101535

namespace A192967

/-- `A152163(n)+A104161(n)` -/
def P433549978946101535.Spec : Prop :=
  ∀ n, P433549978946101535.a n = A192967 n

end A192967

/-! ## A192967.P11938788981196986490

`A014739(n)-A002062(n)`
-/

namespace A192967.P11938788981196986490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n - A002062 n

end

end A192967.P11938788981196986490

namespace A192967

/-- `A014739(n)-A002062(n)` -/
def P11938788981196986490.Spec : Prop :=
  ∀ n, P11938788981196986490.a n = A192967 n

end A192967

/-! ## A192967.P5493549839470779158

`A065220(n+2)+A000032(n)`
-/

namespace A192967.P5493549839470779158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 2) + A000032 n

end

end A192967.P5493549839470779158

namespace A192967

/-- `A065220(n+2)+A000032(n)` -/
def P5493549839470779158.Spec : Prop :=
  ∀ n, P5493549839470779158.a n = A192967 n

end A192967

/-! ## A192967.P10020402409124294181

`A066982(n+1)-A000045(n)`
-/

namespace A192967.P10020402409124294181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 1) - A000045 n

end

end A192967.P10020402409124294181

namespace A192967

/-- `A066982(n+1)-A000045(n)` -/
def P10020402409124294181.Spec : Prop :=
  ∀ n, P10020402409124294181.a n = A192967 n

end A192967

/-! ## A192967.P17348745623936792076

`A014739(n)-(A000045(n)+n)`
-/

namespace A192967.P17348745623936792076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n - (A000045 n + (n : ℤ))

end

end A192967.P17348745623936792076

namespace A192967

/-- `A014739(n)-(A000045(n)+n)` -/
def P17348745623936792076.Spec : Prop :=
  ∀ n, P17348745623936792076.a n = A192967 n

end A192967

/-! ## A192967.P10684734127765049372

`A131326(n)-(A010673(n)+n)`
-/

namespace A192967.P10684734127765049372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131326 n - (A010673 n + (n : ℤ))

end

end A192967.P10684734127765049372

namespace A192967

/-- `A131326(n)-(A010673(n)+n)` -/
def P10684734127765049372.Spec : Prop :=
  ∀ n, P10684734127765049372.a n = A192967 n

end A192967

/-! ## A192967.P1322566846824157012

`A001911(n)+A212804(n)-n`
-/

namespace A192967.P1322566846824157012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (A212804 n - (n : ℤ))

end

end A192967.P1322566846824157012

namespace A192967

/-- `A001911(n)+A212804(n)-n` -/
def P1322566846824157012.Spec : Prop :=
  ∀ n, P1322566846824157012.a n = A192967 n

end A192967

/-! ## A192967.P18341203034114987004

`A027383(n)+A295735(n)-n`
-/

namespace A192967.P18341203034114987004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n + (A295735 n - (n : ℤ))

end

end A192967.P18341203034114987004

namespace A192967

/-- `A027383(n)+A295735(n)-n` -/
def P18341203034114987004.Spec : Prop :=
  ∀ n, P18341203034114987004.a n = A192967 n

end A192967

/-!
# A192968: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192968, the canonical program `A192968.P10843956129552738578` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192968 has offset 0).

The definition of A192968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192968.P10843956129552738578

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192968

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P10843956129552738578.Spec : Prop :=
  ∀ n, P10843956129552738578.a n = A192968 n

theorem P10843956129552738578.correct : P10843956129552738578.Spec := by
  intro n
  simp only [A192968]

end A192968

/-! ## A192968.P12787944694556203687

`C(n-1, 2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192968.P12787944694556203687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose ((n : ℤ) - 1).toNat 2 + (a (n - 1) + a (n - 2))

end

end A192968.P12787944694556203687

namespace A192968

/-- `C(n-1, 2)+a(n-1)+a(n-2)` -/
def P12787944694556203687.Spec : Prop :=
  ∀ n, (P12787944694556203687.a n : ℤ) = A192968 n

end A192968

/-! ## A192968.P16305812578726932662

`∑[a(n-1)+a(n-2)+n-2]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A192968.P16305812578726932662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192968.P16305812578726932662

namespace A192968

/-- `∑[a(n-1)+a(n-2)+n-2]` -/
def P16305812578726932662.Spec : Prop :=
  ∀ n, P16305812578726932662.a n = A192968 n

end A192968

/-! ## A192968.P7656927426543545090

`∑[A192967(abs(1-n))]`
-/

namespace A192968.P7656927426543545090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192968.P7656927426543545090

namespace A192968

/-- `∑[A192967(abs(1-n))]` -/
def P7656927426543545090.Spec : Prop :=
  ∀ n, P7656927426543545090.a n = A192968 n

end A192968

/-! ## A192968.P8034605780077253210

`∑[A097135(n)-(n+1)]`
-/

namespace A192968.P8034605780077253210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192968.P8034605780077253210

namespace A192968

/-- `∑[A097135(n)-(n+1)]` -/
def P8034605780077253210.Spec : Prop :=
  ∀ n, P8034605780077253210.a n = A192968 n

end A192968

/-! ## A192968.P10269074396622695283

`A192967(n+1)-∑[n]`
-/

namespace A192968.P10269074396622695283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192968.P10269074396622695283

namespace A192968

/-- `A192967(n+1)-∑[n]` -/
def P10269074396622695283.Spec : Prop :=
  ∀ n, P10269074396622695283.a n = A192968 n

end A192968

/-! ## A192968.P14409801914416836733

`A192953(n)+n-∑[n]`
-/

namespace A192968.P14409801914416836733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A192968.P14409801914416836733

namespace A192968

/-- `A192953(n)+n-∑[n]` -/
def P14409801914416836733.Spec : Prop :=
  ∀ n, P14409801914416836733.a n = A192968 n

end A192968

/-! ## A192968.P6337115865394858034

`∑[A022086(n)-n]-n`
-/

namespace A192968.P6337115865394858034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192968.P6337115865394858034

namespace A192968

/-- `∑[A022086(n)-n]-n` -/
def P6337115865394858034.Spec : Prop :=
  ∀ n, P6337115865394858034.a n = A192968 n

end A192968

/-! ## A192968.P13561178491090366731

`A111314(n+1)-∑[n+1]`
-/

namespace A192968.P13561178491090366731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192968.P13561178491090366731

namespace A192968

/-- `A111314(n+1)-∑[n+1]` -/
def P13561178491090366731.Spec : Prop :=
  ∀ n, P13561178491090366731.a n = A192968 n

end A192968

/-! ## A192968.P8540507740509344510

`∑[3*A000045(n)-n]-n`
-/

namespace A192968.P8540507740509344510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A192968.P8540507740509344510

namespace A192968

/-- `∑[3*A000045(n)-n]-n` -/
def P8540507740509344510.Spec : Prop :=
  ∀ n, P8540507740509344510.a n = A192968 n

end A192968

/-! ## A192968.P4201954907731116654

`A036999(n)-A167499(n)`
-/

namespace A192968.P4201954907731116654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036999 n - A167499 n

end

end A192968.P4201954907731116654

namespace A192968

/-- `A036999(n)-A167499(n)` -/
def P4201954907731116654.Spec : Prop :=
  ∀ n, P4201954907731116654.a n = A192968 n

end A192968

/-! ## A192968.P14509427059472236352

`A000128(n+1)-A001595(n)`
-/

namespace A192968.P14509427059472236352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000128 (n + 1) - A001595 n

end

end A192968.P14509427059472236352

namespace A192968

/-- `A000128(n+1)-A001595(n)` -/
def P14509427059472236352.Spec : Prop :=
  ∀ n, P14509427059472236352.a n = A192968 n

end A192968

/-! ## A192968.P12127006002808383064

`A131300(n)-A152947(n+1)`
-/

namespace A192968.P12127006002808383064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131300 n - A152947 (n + 1)

end

end A192968.P12127006002808383064

namespace A192968

/-- `A131300(n)-A152947(n+1)` -/
def P12127006002808383064.Spec : Prop :=
  ∀ n, P12127006002808383064.a n = A192968 n

end A192968

/-! ## A192968.P189591930874269108

`A000217(n)+A192953(n)-n²`
-/

namespace A192968.P189591930874269108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A192953 n - (n ^ 2 : ℤ))

end

end A192968.P189591930874269108

namespace A192968

/-- `A000217(n)+A192953(n)-n²` -/
def P189591930874269108.Spec : Prop :=
  ∀ n, P189591930874269108.a n = A192968 n

end A192968

/-! ## A192968.P2524834420716084597

`A000045(n)+A001924(n)-∑[n]`
-/

namespace A192968.P2524834420716084597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A001924 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A192968.P2524834420716084597

namespace A192968

/-- `A000045(n)+A001924(n)-∑[n]` -/
def P2524834420716084597.Spec : Prop :=
  ∀ n, P2524834420716084597.a n = A192968 n

end A192968

/-! ## A192968.P17697951415299960953

`A001610(n)+∑[A000071(n+1)-n]`
-/

namespace A192968.P17697951415299960953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192968.P17697951415299960953

namespace A192968

/-- `A001610(n)+∑[A000071(n+1)-n]` -/
def P17697951415299960953.Spec : Prop :=
  ∀ n, P17697951415299960953.a n = A192968 n

end A192968

/-! ## A192968.P15656277568471698651

`∑[A000045(n+2)-(n+1)]+A000045(n)`
-/

namespace A192968.P15656277568471698651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000045 n

end

end A192968.P15656277568471698651

namespace A192968

/-- `∑[A000045(n+2)-(n+1)]+A000045(n)` -/
def P15656277568471698651.Spec : Prop :=
  ∀ n, P15656277568471698651.a n = A192968 n

end A192968

/-! ## A192968.P1963520620622543128

`A000128(n+1)-(A000071(n+1)+A000045(n+1))`
-/

namespace A192968.P1963520620622543128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000128 (n + 1) - (A000071 (n + 1) + A000045 (n + 1))

end

end A192968.P1963520620622543128

namespace A192968

/-- `A000128(n+1)-(A000071(n+1)+A000045(n+1))` -/
def P1963520620622543128.Spec : Prop :=
  ∀ n, P1963520620622543128.a n = A192968 n

end A192968

/-! ## A192968.P16252639636851302675

`A027961(n+1)-(A000217(n+1)+A000071(n+1))`
-/

namespace A192968.P16252639636851302675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) - (A000217 (n + 1) + A000071 (n + 1))

end

end A192968.P16252639636851302675

namespace A192968

/-- `A027961(n+1)-(A000217(n+1)+A000071(n+1))` -/
def P16252639636851302675.Spec : Prop :=
  ∀ n, P16252639636851302675.a n = A192968 n

end A192968

/-! ## A192968.P18165024799408931203

`(A192959(n)+n)/2`
-/

namespace A192968.P18165024799408931203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192959 n + (n : ℤ) : ℚ) / 2

end

end A192968.P18165024799408931203

namespace A192968

/-- `(A192959(n)+n)/2` -/
def P18165024799408931203.Spec : Prop :=
  ∀ n, P18165024799408931203.a n = (A192968 n : ℚ)

end A192968

/-!
# A192969: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192969, the canonical program `A192969.P14485145264449019235` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192969 has offset 0).

The definition of A192969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192969.P14485145264449019235

`1+n+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192969

/-- `1+n+a(n-1)+a(n-2)` -/
def P14485145264449019235.Spec : Prop :=
  ∀ n, (P14485145264449019235.a n : ℤ) = A192969 n

theorem P14485145264449019235.correct : P14485145264449019235.Spec := by
  intro n
  simp only [A192969]

end A192969

/-! ## A192969.P17283020200647772613

`n-∑[a(n-1)-(2-a(n-2))]` with `a(0)=-1, a(1)=0`
-/

namespace A192969.P17283020200647772613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) - (2 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192969.P17283020200647772613

namespace A192969

/-- `n-∑[a(n-1)-(2-a(n-2))]` -/
def P17283020200647772613.Spec : Prop :=
  ∀ n, P17283020200647772613.a n = A192969 n

end A192969

/-! ## A192969.P7975876570819169506

`2*n-(n-1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A192969.P7975876570819169506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - a (n - 1) - a (n - 2))

end

end A192969.P7975876570819169506

namespace A192969

/-- `2*n-(n-1-a(n-1)-a(n-2))` -/
def P7975876570819169506.Spec : Prop :=
  ∀ n, P7975876570819169506.a n = A192969 n

end A192969

/-! ## A192969.P7429563981581675462

`A192761(n)+1`
-/

namespace A192969.P7429563981581675462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n + 1

end

end A192969.P7429563981581675462

namespace A192969

/-- `A192761(n)+1` -/
def P7429563981581675462.Spec : Prop :=
  ∀ n, P7429563981581675462.a n = A192969 n

end A192969

/-! ## A192969.P6424015389404096401

`A192979(n)+n`
-/

namespace A192969.P6424015389404096401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n + (n : ℤ)

end

end A192969.P6424015389404096401

namespace A192969

/-- `A192979(n)+n` -/
def P6424015389404096401.Spec : Prop :=
  ∀ n, P6424015389404096401.a n = A192969 n

end A192969

/-! ## A192969.P5145936060035933641

`∑[A013655(n)-1]-1`
-/

namespace A192969.P5145936060035933641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A192969.P5145936060035933641

namespace A192969

/-- `∑[A013655(n)-1]-1` -/
def P5145936060035933641.Spec : Prop :=
  ∀ n, P5145936060035933641.a n = A192969 n

end A192969

/-! ## A192969.P6605929148402891611

`A022318(n+1)-(n+3)`
-/

namespace A192969.P6605929148402891611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 (n + 1) - (n + 3 : ℤ)

end

end A192969.P6605929148402891611

namespace A192969

/-- `A022318(n+1)-(n+3)` -/
def P6605929148402891611.Spec : Prop :=
  ∀ n, P6605929148402891611.a n = A192969 n

end A192969

/-! ## A192969.P7506108056377367937

`A001924(n)+A001595(n)`
-/

namespace A192969.P7506108056377367937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + A001595 n

end

end A192969.P7506108056377367937

namespace A192969

/-- `A001924(n)+A001595(n)` -/
def P7506108056377367937.Spec : Prop :=
  ∀ n, P7506108056377367937.a n = A192969 n

end A192969

/-! ## A192969.P6064057460901804123

`A192964(n)+A002062(n)`
-/

namespace A192969.P6064057460901804123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + A002062 n

end

end A192969.P6064057460901804123

namespace A192969

/-- `A192964(n)+A002062(n)` -/
def P6064057460901804123.Spec : Prop :=
  ∀ n, P6064057460901804123.a n = A192969 n

end A192969

/-! ## A192969.P5520329579322724809

`A210677(n)+A000045(n)`
-/

namespace A192969.P5520329579322724809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + A000045 n

end

end A192969.P5520329579322724809

namespace A192969

/-- `A210677(n)+A000045(n)` -/
def P5520329579322724809.Spec : Prop :=
  ∀ n, P5520329579322724809.a n = A192969 n

end A192969

/-! ## A192969.P16008900504057390900

`A210730(n)+A001611(n)`
-/

namespace A192969.P16008900504057390900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A001611 n

end

end A192969.P16008900504057390900

namespace A192969

/-- `A210730(n)+A001611(n)` -/
def P16008900504057390900.Spec : Prop :=
  ∀ n, P16008900504057390900.a n = A192969 n

end A192969

/-! ## A192969.P16965640842123942548

`A111314(n)+A104161(n)`
-/

namespace A192969.P16965640842123942548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n + A104161 n

end

end A192969.P16965640842123942548

namespace A192969

/-- `A111314(n)+A104161(n)` -/
def P16965640842123942548.Spec : Prop :=
  ∀ n, P16965640842123942548.a n = A192969 n

end A192969

/-! ## A192969.P18286823951908983192

`A182415(n)+A065220(n)`
-/

namespace A192969.P18286823951908983192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n + A065220 n

end

end A192969.P18286823951908983192

namespace A192969

/-- `A182415(n)+A065220(n)` -/
def P18286823951908983192.Spec : Prop :=
  ∀ n, P18286823951908983192.a n = A192969 n

end A192969

/-! ## A192969.P14891674105665995549

`A210673(n)+A111721(n)`
-/

namespace A192969.P14891674105665995549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 n + A111721 n

end

end A192969.P14891674105665995549

namespace A192969

/-- `A210673(n)+A111721(n)` -/
def P14891674105665995549.Spec : Prop :=
  ∀ n, P14891674105665995549.a n = A192969 n

end A192969

/-! ## A192969.P14987759580730277673

`A066982(n+1)+A001911(n)`
-/

namespace A192969.P14987759580730277673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 1) + A001911 n

end

end A192969.P14987759580730277673

namespace A192969

/-- `A066982(n+1)+A001911(n)` -/
def P14987759580730277673.Spec : Prop :=
  ∀ n, P14987759580730277673.a n = A192969 n

end A192969

/-! ## A192969.P14919682987824081813

`A192760(n)+A000045(n+1)`
-/

namespace A192969.P14919682987824081813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 n + A000045 (n + 1)

end

end A192969.P14919682987824081813

namespace A192969

/-- `A192760(n)+A000045(n+1)` -/
def P14919682987824081813.Spec : Prop :=
  ∀ n, P14919682987824081813.a n = A192969 n

end A192969

/-! ## A192969.P12808763189808398360

`A000045(n)+A210730(n)+1`
-/

namespace A192969.P12808763189808398360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A210730 n + 1)

end

end A192969.P12808763189808398360

namespace A192969

/-- `A000045(n)+A210730(n)+1` -/
def P12808763189808398360.Spec : Prop :=
  ∀ n, P12808763189808398360.a n = A192969 n

end A192969

/-! ## A192969.P8481488538114346823

`A001924(n+1)-A000045(n)`
-/

namespace A192969.P8481488538114346823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1) - A000045 n

end

end A192969.P8481488538114346823

namespace A192969

/-- `A001924(n+1)-A000045(n)` -/
def P8481488538114346823.Spec : Prop :=
  ∀ n, P8481488538114346823.a n = A192969 n

end A192969

/-! ## A192969.P16550964481439885068

`A104161(n+1)+A000071(n+1)`
-/

namespace A192969.P16550964481439885068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 (n + 1) + A000071 (n + 1)

end

end A192969.P16550964481439885068

namespace A192969

/-- `A104161(n+1)+A000071(n+1)` -/
def P16550964481439885068.Spec : Prop :=
  ∀ n, P16550964481439885068.a n = A192969 n

end A192969

/-!
# A192970: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192970, the canonical program `A192970.P5984654360003705262` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192970 has offset 0).

The definition of A192970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192970.P5984654360003705262

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9, a(4)=21`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192970

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P5984654360003705262.Spec : Prop :=
  ∀ n, P5984654360003705262.a n = A192970 n

theorem P5984654360003705262.correct : P5984654360003705262.Spec := by
  intro n
  simp only [A192970]

end A192970

/-! ## A192970.P3290852831967210779

`∑[a(n-1)+a(n-2)+n]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A192970.P3290852831967210779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192970.P3290852831967210779

namespace A192970

/-- `∑[a(n-1)+a(n-2)+n]` -/
def P3290852831967210779.Spec : Prop :=
  ∀ n, (P3290852831967210779.a n : ℤ) = A192970 n

end A192970

/-! ## A192970.P12624989299381468168

`a(n-1)-(1-a(n-2)-∑[n])` with `a(0)=0, a(1)=1`
-/

namespace A192970.P12624989299381468168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (1 - a (n - 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A192970.P12624989299381468168

namespace A192970

/-- `a(n-1)-(1-a(n-2)-∑[n])` -/
def P12624989299381468168.Spec : Prop :=
  ∀ n, P12624989299381468168.a n = A192970 n

end A192970

/-! ## A192970.P14639807120084949962

`n-1+a(n-1)+a(n-2)+C(n, 2)` with `a(0)=0, a(1)=1`
-/

namespace A192970.P14639807120084949962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + (a (n - 2) + (Nat.choose n 2 : ℤ)))

end

end A192970.P14639807120084949962

namespace A192970

/-- `n-1+a(n-1)+a(n-2)+C(n, 2)` -/
def P14639807120084949962.Spec : Prop :=
  ∀ n, P14639807120084949962.a n = A192970 n

end A192970

/-! ## A192970.P8660382501973564220

`a(n-1)+a(n-1)-a(n-3)+n` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A192970.P8660382501973564220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 3)) + (n : ℤ)

end

end A192970.P8660382501973564220

namespace A192970

/-- `a(n-1)+a(n-1)-a(n-3)+n` -/
def P8660382501973564220.Spec : Prop :=
  ∀ n, P8660382501973564220.a n = A192970 n

end A192970

/-! ## A192970.P15115617851610316775

`a(n-1)-(a(n-3)-n-a(n-1))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A192970.P15115617851610316775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) - (a (n - 3) - (n : ℤ) - a (n - 1))

end

end A192970.P15115617851610316775

namespace A192970

/-- `a(n-1)-(a(n-3)-n-a(n-1))` -/
def P15115617851610316775.Spec : Prop :=
  ∀ n, P15115617851610316775.a n = A192970 n

end A192970

/-! ## A192970.P4265550614297378259

`A192979(n+1)-∑[n+1]`
-/

namespace A192970.P4265550614297378259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192970.P4265550614297378259

namespace A192970

/-- `A192979(n+1)-∑[n+1]` -/
def P4265550614297378259.Spec : Prop :=
  ∀ n, P4265550614297378259.a n = A192970 n

end A192970

/-! ## A192970.P5594122013800232202

`A192969(n+1)-∑[n+2]`
-/

namespace A192970.P5594122013800232202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192970.P5594122013800232202

namespace A192970

/-- `A192969(n+1)-∑[n+2]` -/
def P5594122013800232202.Spec : Prop :=
  ∀ n, P5594122013800232202.a n = A192970 n

end A192970

/-! ## A192970.P3935303973078780990

`A192980(n)+A161680(n)`
-/

namespace A192970.P3935303973078780990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192980 n + A161680 n

end

end A192970.P3935303973078780990

namespace A192970

/-- `A192980(n)+A161680(n)` -/
def P3935303973078780990.Spec : Prop :=
  ∀ n, P3935303973078780990.a n = A192970 n

end A192970

/-! ## A192970.P3131842268102586977

`A014162(n)-A000071(n+1)`
-/

namespace A192970.P3131842268102586977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 n - A000071 (n + 1)

end

end A192970.P3131842268102586977

namespace A192970

/-- `A014162(n)-A000071(n+1)` -/
def P3131842268102586977.Spec : Prop :=
  ∀ n, P3131842268102586977.a n = A192970 n

end A192970

/-! ## A192970.P15057475386122899842

`A000217(n)+A192980(n)-n`
-/

namespace A192970.P15057475386122899842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A192980 n - (n : ℤ))

end

end A192970.P15057475386122899842

namespace A192970

/-- `A000217(n)+A192980(n)-n` -/
def P15057475386122899842.Spec : Prop :=
  ∀ n, P15057475386122899842.a n = A192970 n

end A192970

/-! ## A192970.P14478003096629079438

`∑[A001924(n)]-A000071(n+1)`
-/

namespace A192970.P14478003096629079438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000071 (n + 1)

end

end A192970.P14478003096629079438

namespace A192970

/-- `∑[A001924(n)]-A000071(n+1)` -/
def P14478003096629079438.Spec : Prop :=
  ∀ n, P14478003096629079438.a n = A192970 n

end A192970

/-! ## A192970.P7859888788288130040

`∑[A001924(n)-A212804(n)]+1`
-/

namespace A192970.P7859888788288130040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n - A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192970.P7859888788288130040

namespace A192970

/-- `∑[A001924(n)-A212804(n)]+1` -/
def P7859888788288130040.Spec : Prop :=
  ∀ n, P7859888788288130040.a n = A192970 n

end A192970

/-! ## A192970.P4599362323637562279

`A116717(n+1)-A000045(n+1)`
-/

namespace A192970.P4599362323637562279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116717 (n + 1) - A000045 (n + 1)

end

end A192970.P4599362323637562279

namespace A192970

/-- `A116717(n+1)-A000045(n+1)` -/
def P4599362323637562279.Spec : Prop :=
  ∀ n, P4599362323637562279.a n = A192970 n

end A192970

/-! ## A192970.P1980188888573944727

`A192968(n)+∑[2*A000071(n+1)]`
-/

namespace A192970.P1980188888573944727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192968 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192970.P1980188888573944727

namespace A192970

/-- `A192968(n)+∑[2*A000071(n+1)]` -/
def P1980188888573944727.Spec : Prop :=
  ∀ n, P1980188888573944727.a n = A192970 n

end A192970

/-! ## A192970.P14366718524029601534

`A116717(n+1)-(A000071(n+1)+1)`
-/

namespace A192970.P14366718524029601534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116717 (n + 1) - (A000071 (n + 1) + 1)

end

end A192970.P14366718524029601534

namespace A192970

/-- `A116717(n+1)-(A000071(n+1)+1)` -/
def P14366718524029601534.Spec : Prop :=
  ∀ n, P14366718524029601534.a n = A192970 n

end A192970

/-! ## A192970.P5419000147120895485

`A192761(n+1)-(A000217(n+2)-2)`
-/

namespace A192970.P5419000147120895485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 (n + 1) - (A000217 (n + 2) - 2)

end

end A192970.P5419000147120895485

namespace A192970

/-- `A192761(n+1)-(A000217(n+2)-2)` -/
def P5419000147120895485.Spec : Prop :=
  ∀ n, P5419000147120895485.a n = A192970 n

end A192970

/-! ## A192970.P3325999333907519813

`∑[A000032(n+2)-(n+3)]+A000045(n)`
-/

namespace A192970.P3325999333907519813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 2) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000045 n

end

end A192970.P3325999333907519813

namespace A192970

/-- `∑[A000032(n+2)-(n+3)]+A000045(n)` -/
def P3325999333907519813.Spec : Prop :=
  ∀ n, P3325999333907519813.a n = A192970 n

end A192970

/-! ## A192970.P5694415646582602881

`A192951(n)+A192966(n)-A192953(n)`
-/

namespace A192970.P5694415646582602881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A192966 n - A192953 n)

end

end A192970.P5694415646582602881

namespace A192970

/-- `A192951(n)+A192966(n)-A192953(n)` -/
def P5694415646582602881.Spec : Prop :=
  ∀ n, P5694415646582602881.a n = A192970 n

end A192970

/-! ## A192970.P12105392099797664331

`A192951(n)+A192980(n)-A192966(n)`
-/

namespace A192970.P12105392099797664331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A192980 n - A192966 n)

end

end A192970.P12105392099797664331

namespace A192970

/-- `A192951(n)+A192980(n)-A192966(n)` -/
def P12105392099797664331.Spec : Prop :=
  ∀ n, P12105392099797664331.a n = A192970 n

end A192970

/-!
# A192971: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192971, the canonical program `A192971.P18091524558000890712` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192971 has offset 0).

The definition of A192971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192971.P18091524558000890712

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=21`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192971

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P18091524558000890712.Spec : Prop :=
  ∀ n, P18091524558000890712.a n = A192971 n

theorem P18091524558000890712.correct : P18091524558000890712.Spec := by
  intro n
  simp only [A192971]

end A192971

/-! ## A192971.P5046693065098120607

`∑[a(n-1)+a(n-2)+4]` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A192971.P5046693065098120607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192971.P5046693065098120607

namespace A192971

/-- `∑[a(n-1)+a(n-2)+4]` -/
def P5046693065098120607.Spec : Prop :=
  ∀ n, (P5046693065098120607.a n : ℤ) = A192971 n

end A192971

/-! ## A192971.P3482135500007009563

`4*n-2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A192971.P3482135500007009563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 * n : ℤ) - 2 + (a (n - 1) + a (n - 2))

end

end A192971.P3482135500007009563

namespace A192971

/-- `4*n-2+a(n-1)+a(n-2)` -/
def P3482135500007009563.Spec : Prop :=
  ∀ n, P3482135500007009563.a n = A192971 n

end A192971

/-! ## A192971.P2076505085086343112

`4*n-(2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A192971.P2076505085086343112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 * n : ℤ) - (2 - a (n - 1) - a (n - 2))

end

end A192971.P2076505085086343112

namespace A192971

/-- `4*n-(2-a(n-1)-a(n-2))` -/
def P2076505085086343112.Spec : Prop :=
  ∀ n, P2076505085086343112.a n = A192971 n

end A192971

/-! ## A192971.P664764851276275649

`A192753(n)+1`
-/

namespace A192971.P664764851276275649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192753 n + 1

end

end A192971.P664764851276275649

namespace A192971

/-- `A192753(n)+1` -/
def P664764851276275649.Spec : Prop :=
  ∀ n, P664764851276275649.a n = A192971 n

end A192971

/-! ## A192971.P6484733088919523278

`A192975(n)+A000045(n)`
-/

namespace A192971.P6484733088919523278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192975 n + A000045 n

end

end A192971.P6484733088919523278

namespace A192971

/-- `A192975(n)+A000045(n)` -/
def P6484733088919523278.Spec : Prop :=
  ∀ n, P6484733088919523278.a n = A192971 n

end A192971

/-! ## A192971.P18313271967736432435

`A192749(n)+A001595(n)`
-/

namespace A192971.P18313271967736432435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 n + A001595 n

end

end A192971.P18313271967736432435

namespace A192971

/-- `A192749(n)+A001595(n)` -/
def P18313271967736432435.Spec : Prop :=
  ∀ n, P18313271967736432435.a n = A192971 n

end A192971

/-! ## A192971.P8626601316296466449

`A192954(n)+A001891(n)`
-/

namespace A192971.P8626601316296466449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n + A001891 n

end

end A192971.P8626601316296466449

namespace A192971

/-- `A192954(n)+A001891(n)` -/
def P8626601316296466449.Spec : Prop :=
  ∀ n, P8626601316296466449.a n = A192971 n

end A192971

/-! ## A192971.P10990546561431865665

`A210678(n)+A192951(n)`
-/

namespace A192971.P10990546561431865665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n + A192951 n

end

end A192971.P10990546561431865665

namespace A192971

/-- `A210678(n)+A192951(n)` -/
def P10990546561431865665.Spec : Prop :=
  ∀ n, P10990546561431865665.a n = A192971 n

end A192971

/-! ## A192971.P12295389954963537280

`∑[A182415(n)]-A000045(n)`
-/

namespace A192971.P12295389954963537280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A192971.P12295389954963537280

namespace A192971

/-- `∑[A182415(n)]-A000045(n)` -/
def P12295389954963537280.Spec : Prop :=
  ∀ n, P12295389954963537280.a n = A192971 n

end A192971

/-! ## A192971.P7848540791363643743

`A192751(n)+A000045(n+1)`
-/

namespace A192971.P7848540791363643743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192751 n + A000045 (n + 1)

end

end A192971.P7848540791363643743

namespace A192971

/-- `A192751(n)+A000045(n+1)` -/
def P7848540791363643743.Spec : Prop :=
  ∀ n, P7848540791363643743.a n = A192971 n

end A192971

/-! ## A192971.P3873505748867327413

`A210730(n)+A116730(n+1)`
-/

namespace A192971.P3873505748867327413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A116730 (n + 1)

end

end A192971.P3873505748867327413

namespace A192971

/-- `A210730(n)+A116730(n+1)` -/
def P3873505748867327413.Spec : Prop :=
  ∀ n, P3873505748867327413.a n = A192971 n

end A192971

/-! ## A192971.P17717753369438407275

`A192981(n+1)+A192956(n)`
-/

namespace A192971.P17717753369438407275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 (n + 1) + A192956 n

end

end A192971.P17717753369438407275

namespace A192971

/-- `A192981(n+1)+A192956(n)` -/
def P17717753369438407275.Spec : Prop :=
  ∀ n, P17717753369438407275.a n = A192971 n

end A192971

/-! ## A192971.P18209938657840473504

`A210677(n)+A192748(n+1)`
-/

namespace A192971.P18209938657840473504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + A192748 (n + 1)

end

end A192971.P18209938657840473504

namespace A192971

/-- `A210677(n)+A192748(n+1)` -/
def P18209938657840473504.Spec : Prop :=
  ∀ n, P18209938657840473504.a n = A192971 n

end A192971

/-! ## A192971.P3222557287482622962

`A192951(n)+A210731(n)+1`
-/

namespace A192971.P3222557287482622962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A210731 n + 1)

end

end A192971.P3222557287482622962

namespace A192971

/-- `A192951(n)+A210731(n)+1` -/
def P3222557287482622962.Spec : Prop :=
  ∀ n, P3222557287482622962.a n = A192971 n

end A192971

/-! ## A192971.P16931455195360467953

`A212804(n+1)+A192975(n)`
-/

namespace A192971.P16931455195360467953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A192975 n

end

end A192971.P16931455195360467953

namespace A192971

/-- `A212804(n+1)+A192975(n)` -/
def P16931455195360467953.Spec : Prop :=
  ∀ n, P16931455195360467953.a n = A192971 n

end A192971

/-! ## A192971.P11840513798630050740

`A192973(n+1)-A000045(n)`
-/

namespace A192971.P11840513798630050740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192973 (n + 1) - A000045 n

end

end A192971.P11840513798630050740

namespace A192971

/-- `A192973(n+1)-A000045(n)` -/
def P11840513798630050740.Spec : Prop :=
  ∀ n, P11840513798630050740.a n = A192971 n

end A192971

/-! ## A192971.P14821648613874111164

`A192755(n)+1-A065220(n)`
-/

namespace A192971.P14821648613874111164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192755 n + (1 - A065220 n)

end

end A192971.P14821648613874111164

namespace A192971

/-- `A192755(n)+1-A065220(n)` -/
def P14821648613874111164.Spec : Prop :=
  ∀ n, P14821648613874111164.a n = A192971 n

end A192971

/-! ## A192971.P143117161244309371

`A212804(n+2)+A192751(n)`
-/

namespace A192971.P143117161244309371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A192751 n

end

end A192971.P143117161244309371

namespace A192971

/-- `A212804(n+2)+A192751(n)` -/
def P143117161244309371.Spec : Prop :=
  ∀ n, P143117161244309371.a n = A192971 n

end A192971

/-!
# A192972: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192972, the canonical program `A192972.P1540591369796947621` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192972 has offset 0).

The definition of A192972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192972.P1540591369796947621

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=12, a(4)=33`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192972

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P1540591369796947621.Spec : Prop :=
  ∀ n, P1540591369796947621.a n = A192972 n

theorem P1540591369796947621.correct : P1540591369796947621.Spec := by
  intro n
  simp only [A192972]

end A192972

/-! ## A192972.P10470499153625670889

`A192971(n+1)-2*(n+1)²`
-/

namespace A192972.P10470499153625670889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192971 (n + 1) - (2 * (n + 1) ^ 2 : ℤ)

end

end A192972.P10470499153625670889

namespace A192972

/-- `A192971(n+1)-2*(n+1)²` -/
def P10470499153625670889.Spec : Prop :=
  ∀ n, P10470499153625670889.a n = A192972 n

end A192972

/-! ## A192972.P12788278089108640630

`A192955(n)+A163250(n)`
-/

namespace A192972.P12788278089108640630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192955 n + A163250 n

end

end A192972.P12788278089108640630

namespace A192972

/-- `A192955(n)+A163250(n)` -/
def P12788278089108640630.Spec : Prop :=
  ∀ n, P12788278089108640630.a n = A192972 n

end A192972

/-! ## A192972.P8804900357103374605

`A192976(n)+A000071(n+1)`
-/

namespace A192972.P8804900357103374605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192976 n + A000071 (n + 1)

end

end A192972.P8804900357103374605

namespace A192972

/-- `A192976(n)+A000071(n+1)` -/
def P8804900357103374605.Spec : Prop :=
  ∀ n, P8804900357103374605.a n = A192972 n

end A192972

/-! ## A192972.P16542847802875454266

`A192974(n)-A000071(n+1)`
-/

namespace A192972.P16542847802875454266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192974 n - A000071 (n + 1)

end

end A192972.P16542847802875454266

namespace A192972

/-- `A192974(n)-A000071(n+1)` -/
def P16542847802875454266.Spec : Prop :=
  ∀ n, P16542847802875454266.a n = A192972 n

end A192972

/-! ## A192972.P6721963431818045931

`A000045(n)+2*A163250(n)`
-/

namespace A192972.P6721963431818045931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 2 * A163250 n

end

end A192972.P6721963431818045931

namespace A192972

/-- `A000045(n)+2*A163250(n)` -/
def P6721963431818045931.Spec : Prop :=
  ∀ n, P6721963431818045931.a n = A192972 n

end A192972

/-! ## A192972.P12014215556102838916

`2*A192955(n)-A000045(n)`
-/

namespace A192972.P12014215556102838916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192955 n - A000045 n

end

end A192972.P12014215556102838916

namespace A192972

/-- `2*A192955(n)-A000045(n)` -/
def P12014215556102838916.Spec : Prop :=
  ∀ n, P12014215556102838916.a n = A192972 n

end A192972

/-! ## A192972.P2591953421399693222

`A192978(n)+A192982(n)-n`
-/

namespace A192972.P2591953421399693222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 n + (A192982 n - (n : ℤ))

end

end A192972.P2591953421399693222

namespace A192972

/-- `A192978(n)+A192982(n)-n` -/
def P2591953421399693222.Spec : Prop :=
  ∀ n, P2591953421399693222.a n = A192972 n

end A192972

/-! ## A192972.P1883701324922980937

`A192974(n)+1-∑[A212804(n)]`
-/

namespace A192972.P1883701324922980937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192974 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192972.P1883701324922980937

namespace A192972

/-- `A192974(n)+1-∑[A212804(n)]` -/
def P1883701324922980937.Spec : Prop :=
  ∀ n, P1883701324922980937.a n = A192972 n

end A192972

/-! ## A192972.P8283448671152360295

`A192951(n)+A192978(n)-n²`
-/

namespace A192972.P8283448671152360295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A192978 n - (n ^ 2 : ℤ))

end

end A192972.P8283448671152360295

namespace A192972

/-- `A192951(n)+A192978(n)-n²` -/
def P8283448671152360295.Spec : Prop :=
  ∀ n, P8283448671152360295.a n = A192972 n

end A192972

/-! ## A192972.P3688083784043416476

`A192976(n)+A000045(n+1)-1`
-/

namespace A192972.P3688083784043416476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192976 n + (A000045 (n + 1) - 1)

end

end A192972.P3688083784043416476

namespace A192972

/-- `A192976(n)+A000045(n+1)-1` -/
def P3688083784043416476.Spec : Prop :=
  ∀ n, P3688083784043416476.a n = A192972 n

end A192972

/-! ## A192972.P4243079054632794993

`A192974(n)-(A000045(n+1)-1)`
-/

namespace A192972.P4243079054632794993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192974 n - (A000045 (n + 1) - 1)

end

end A192972.P4243079054632794993

namespace A192972

/-- `A192974(n)-(A000045(n+1)-1)` -/
def P4243079054632794993.Spec : Prop :=
  ∀ n, P4243079054632794993.a n = A192972 n

end A192972

/-! ## A192972.P15656777046429254439

`A192976(n)+A019274(n+1)/2`
-/

namespace A192972.P15656777046429254439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192976 n : ℚ) + (A019274 (n + 1) : ℚ) / 2

end

end A192972.P15656777046429254439

namespace A192972

/-- `A192976(n)+A019274(n+1)/2` -/
def P15656777046429254439.Spec : Prop :=
  ∀ n, P15656777046429254439.a n = (A192972 n : ℚ)

end A192972

/-! ## A192972.P7017786089236028530

`A192974(n)-A019274(n+1)/2`
-/

namespace A192972.P7017786089236028530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192974 n : ℚ) - (A019274 (n + 1) : ℚ) / 2

end

end A192972.P7017786089236028530

namespace A192972

/-- `A192974(n)-A019274(n+1)/2` -/
def P7017786089236028530.Spec : Prop :=
  ∀ n, P7017786089236028530.a n = (A192972 n : ℚ)

end A192972

/-! ## A192972.P7110645879334762365

`A192963(n)+A192965(n)-A000045(n)`
-/

namespace A192972.P7110645879334762365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192963 n + (A192965 n - A000045 n)

end

end A192972.P7110645879334762365

namespace A192972

/-- `A192963(n)+A192965(n)-A000045(n)` -/
def P7110645879334762365.Spec : Prop :=
  ∀ n, P7110645879334762365.a n = A192972 n

end A192972

/-! ## A192972.P12964804926767987529

`A192951(n)+A192976(n)-A192952(n)`
-/

namespace A192972.P12964804926767987529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A192976 n - A192952 n)

end

end A192972.P12964804926767987529

namespace A192972

/-- `A192951(n)+A192976(n)-A192952(n)` -/
def P12964804926767987529.Spec : Prop :=
  ∀ n, P12964804926767987529.a n = A192972 n

end A192972

/-! ## A192972.P13520569188601337870

`A192952(n)+A192974(n)-A192951(n)`
-/

namespace A192972.P13520569188601337870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 n + (A192974 n - A192951 n)

end

end A192972.P13520569188601337870

namespace A192972

/-- `A192952(n)+A192974(n)-A192951(n)` -/
def P13520569188601337870.Spec : Prop :=
  ∀ n, P13520569188601337870.a n = A192972 n

end A192972

/-! ## A192972.P7055595061086845200

`A192964(n)+A192974(n)-A192956(n)`
-/

namespace A192972.P7055595061086845200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + (A192974 n - A192956 n)

end

end A192972.P7055595061086845200

namespace A192972

/-- `A192964(n)+A192974(n)-A192956(n)` -/
def P7055595061086845200.Spec : Prop :=
  ∀ n, P7055595061086845200.a n = A192972 n

end A192972

/-! ## A192972.P6002798824495489672

`A020695(n)+A192974(n)-∑[A000032(n)]`
-/

namespace A192972.P6002798824495489672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (A192974 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192972.P6002798824495489672

namespace A192972

/-- `A020695(n)+A192974(n)-∑[A000032(n)]` -/
def P6002798824495489672.Spec : Prop :=
  ∀ n, P6002798824495489672.a n = A192972 n

end A192972

/-! ## A192972.P2242345896971212781

`A192974(n)-(∑[A000045(n)]-A000045(n))`
-/

namespace A192972.P2242345896971212781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192974 n - (∑ j ∈ Finset.range (n + 1), f1 j - A000045 n)

end

end A192972.P2242345896971212781

namespace A192972

/-- `A192974(n)-(∑[A000045(n)]-A000045(n))` -/
def P2242345896971212781.Spec : Prop :=
  ∀ n, P2242345896971212781.a n = A192972 n

end A192972

/-!
# A192973: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192973, the canonical program `A192973.P13368377829101834098` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192973 has offset 1).

The definition of A192973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192973.P13368377829101834098

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=23`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192973

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P13368377829101834098.Spec : Prop :=
  ∀ n, P13368377829101834098.a n = A192973 (n + 1)

theorem P13368377829101834098.correct : P13368377829101834098.Spec := by
  intro n
  simp only [A192973, Nat.add_sub_cancel]

end A192973

/-! ## A192973.P15650954576345398078

`∑[a(n-1)+a(n-2)+4]` with `a(0)=1, a(1)=2`
-/

namespace A192973.P15650954576345398078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192973.P15650954576345398078

namespace A192973

/-- `∑[a(n-1)+a(n-2)+4]` -/
def P15650954576345398078.Spec : Prop :=
  ∀ n, (P15650954576345398078.a n : ℤ) = A192973 (n + 1)

end A192973

/-! ## A192973.P18136046007257495867

`∑[2*a(n-1)-a(n-3)]` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A192973.P18136046007257495867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192973.P18136046007257495867

namespace A192973

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P18136046007257495867.Spec : Prop :=
  ∀ n, P18136046007257495867.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P5311988954852957606

`4*n-2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A192973.P5311988954852957606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (4 * n : ℤ) - 2 + (a (n - 1) + a (n - 2))

end

end A192973.P5311988954852957606

namespace A192973

/-- `4*n-2+a(n-1)+a(n-2)` -/
def P5311988954852957606.Spec : Prop :=
  ∀ n, P5311988954852957606.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P7001859876672190832

`4*n-(2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A192973.P7001859876672190832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (4 * n : ℤ) - (2 - a (n - 1) - a (n - 2))

end

end A192973.P7001859876672190832

namespace A192973

/-- `4*n-(2-a(n-1)-a(n-2))` -/
def P7001859876672190832.Spec : Prop :=
  ∀ n, P7001859876672190832.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P1461909591650185785

`∑[A182415(n)]`
-/

namespace A192973.P1461909591650185785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192973.P1461909591650185785

namespace A192973

/-- `∑[A182415(n)]` -/
def P1461909591650185785.Spec : Prop :=
  ∀ n, P1461909591650185785.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P10896395514480474226

`∑[A171237(n)-1]`
-/

namespace A192973.P10896395514480474226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192973.P10896395514480474226

namespace A192973

/-- `∑[A171237(n)-1]` -/
def P10896395514480474226.Spec : Prop :=
  ∀ n, P10896395514480474226.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P15444595056774769796

`∑[A210677(n)+n]`
-/

namespace A192973.P15444595056774769796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192973.P15444595056774769796

namespace A192973

/-- `∑[A210677(n)+n]` -/
def P15444595056774769796.Spec : Prop :=
  ∀ n, P15444595056774769796.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P11881117784412274925

`A192755(n)+1+n`
-/

namespace A192973.P11881117784412274925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192755 n + 1 + (n : ℤ)

end

end A192973.P11881117784412274925

namespace A192973

/-- `A192755(n)+1+n` -/
def P11881117784412274925.Spec : Prop :=
  ∀ n, P11881117784412274925.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P14938401393073203032

`∑[A022309(n+1)-3]`
-/

namespace A192973.P14938401393073203032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192973.P14938401393073203032

namespace A192973

/-- `∑[A022309(n+1)-3]` -/
def P14938401393073203032.Spec : Prop :=
  ∀ n, P14938401393073203032.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P6195860706562003894

`∑[A022095(n+1)-4]`
-/

namespace A192973.P6195860706562003894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192973.P6195860706562003894

namespace A192973

/-- `∑[A022095(n+1)-4]` -/
def P6195860706562003894.Spec : Prop :=
  ∀ n, P6195860706562003894.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P9449468703513168978

`∑[A210730(n)+1+n]`
-/

namespace A192973.P9449468703513168978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192973.P9449468703513168978

namespace A192973

/-- `∑[A210730(n)+1+n]` -/
def P9449468703513168978.Spec : Prop :=
  ∀ n, P9449468703513168978.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P1943486032004019807

`∑[A192964(n)+2*n]`
-/

namespace A192973.P1943486032004019807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192973.P1943486032004019807

namespace A192973

/-- `∑[A192964(n)+2*n]` -/
def P1943486032004019807.Spec : Prop :=
  ∀ n, P1943486032004019807.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P4026452374772117171

`A192965(n+1)+∑[2*n]`
-/

namespace A192973.P4026452374772117171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192965 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192973.P4026452374772117171

namespace A192973

/-- `A192965(n+1)+∑[2*n]` -/
def P4026452374772117171.Spec : Prop :=
  ∀ n, P4026452374772117171.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P17837600594026144820

`A192971(n)+A000045(n)`
-/

namespace A192973.P17837600594026144820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192971 n + A000045 n

end

end A192973.P17837600594026144820

namespace A192973

/-- `A192971(n)+A000045(n)` -/
def P17837600594026144820.Spec : Prop :=
  ∀ n, P17837600594026144820.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P6727591802397225531

`A192753(n)+A001611(n)`
-/

namespace A192973.P6727591802397225531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192753 n + A001611 n

end

end A192973.P6727591802397225531

namespace A192973

/-- `A192753(n)+A001611(n)` -/
def P6727591802397225531.Spec : Prop :=
  ∀ n, P6727591802397225531.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P2347982535532760455

`A192756(n)+A081659(n)`
-/

namespace A192973.P2347982535532760455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192756 n + A081659 n

end

end A192973.P2347982535532760455

namespace A192973

/-- `A192756(n)+A081659(n)` -/
def P2347982535532760455.Spec : Prop :=
  ∀ n, P2347982535532760455.a n = A192973 (n + 1)

end A192973

/-! ## A192973.P8387939185770951067

`A210728(n)+A192951(n)`
-/

namespace A192973.P8387939185770951067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n + A192951 n

end

end A192973.P8387939185770951067

namespace A192973

/-- `A210728(n)+A192951(n)` -/
def P8387939185770951067.Spec : Prop :=
  ∀ n, P8387939185770951067.a n = A192973 (n + 1)

end A192973

/-!
# A192974: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192974, the canonical program `A192974.P15837824119155423725` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192974 has offset 0).

The definition of A192974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192974.P15837824119155423725

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=14, a(4)=37`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192974

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P15837824119155423725.Spec : Prop :=
  ∀ n, P15837824119155423725.a n = A192974 n

theorem P15837824119155423725.correct : P15837824119155423725.Spec := by
  intro n
  simp only [A192974]

end A192974

/-! ## A192974.P3351169325201003422

`∑[∑[a(n-1)+a(n-2)+4]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A192974.P3351169325201003422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192974.P3351169325201003422

namespace A192974

/-- `∑[∑[a(n-1)+a(n-2)+4]]` -/
def P3351169325201003422.Spec : Prop :=
  ∀ n, (P3351169325201003422.a n : ℤ) = A192974 n

end A192974

/-! ## A192974.P11569283135386849208

`∑[A192964(n+1)-2*n]`
-/

namespace A192974.P11569283135386849208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192974.P11569283135386849208

namespace A192974

/-- `∑[A192964(n+1)-2*n]` -/
def P11569283135386849208.Spec : Prop :=
  ∀ n, P11569283135386849208.a n = A192974 n

end A192974

/-! ## A192974.P17606438995717618512

`A192389(n)+A163250(n)`
-/

namespace A192974.P17606438995717618512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192389 n + A163250 n

end

end A192974.P17606438995717618512

namespace A192974

/-- `A192389(n)+A163250(n)` -/
def P17606438995717618512.Spec : Prop :=
  ∀ n, P17606438995717618512.a n = A192974 n

end A192974

/-! ## A192974.P2242137937773547244

`A192972(n)+A000071(n+1)`
-/

namespace A192974.P2242137937773547244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n + A000071 (n + 1)

end

end A192974.P2242137937773547244

namespace A192974

/-- `A192972(n)+A000071(n+1)` -/
def P2242137937773547244.Spec : Prop :=
  ∀ n, P2242137937773547244.a n = A192974 n

end A192974

/-! ## A192974.P2402443666550586959

`A192976(n)+A019274(n+1)`
-/

namespace A192974.P2402443666550586959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192976 n + A019274 (n + 1)

end

end A192974.P2402443666550586959

namespace A192974

/-- `A192976(n)+A019274(n+1)` -/
def P2402443666550586959.Spec : Prop :=
  ∀ n, P2402443666550586959.a n = A192974 n

end A192974

/-! ## A192974.P12498644235135712367

`2*A192963(n)-A192953(n)`
-/

namespace A192974.P12498644235135712367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192963 n - A192953 n

end

end A192974.P12498644235135712367

namespace A192974

/-- `2*A192963(n)-A192953(n)` -/
def P12498644235135712367.Spec : Prop :=
  ∀ n, P12498644235135712367.a n = A192974 n

end A192974

/-! ## A192974.P1565276152684044618

`∑[∑[A182415(n)]-A182415(n)]`
-/

namespace A192974.P1565276152684044618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A182415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192974.P1565276152684044618

namespace A192974

/-- `∑[∑[A182415(n)]-A182415(n)]` -/
def P1565276152684044618.Spec : Prop :=
  ∀ n, P1565276152684044618.a n = A192974 n

end A192974

/-! ## A192974.P5044860264928660211

`A192972(n)+∑[A212804(n)]-1`
-/

namespace A192974.P5044860264928660211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A192974.P5044860264928660211

namespace A192974

/-- `A192972(n)+∑[A212804(n)]-1` -/
def P5044860264928660211.Spec : Prop :=
  ∀ n, P5044860264928660211.a n = A192974 n

end A192974

/-! ## A192974.P8229869482818121717

`A192972(n)+A000045(n+1)-1`
-/

namespace A192974.P8229869482818121717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n + (A000045 (n + 1) - 1)

end

end A192974.P8229869482818121717

namespace A192974

/-- `A192972(n)+A000045(n+1)-1` -/
def P8229869482818121717.Spec : Prop :=
  ∀ n, P8229869482818121717.a n = A192974 n

end A192974

/-! ## A192974.P10407048325599575607

`A192976(n)+2*A000071(n+1)`
-/

namespace A192974.P10407048325599575607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192976 n + 2 * A000071 (n + 1)

end

end A192974.P10407048325599575607

namespace A192974

/-- `A192976(n)+2*A000071(n+1)` -/
def P10407048325599575607.Spec : Prop :=
  ∀ n, P10407048325599575607.a n = A192974 n

end A192974

/-! ## A192974.P10898783936493850158

`A000071(n+2)+2*A163250(n)`
-/

namespace A192974.P10898783936493850158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + 2 * A163250 n

end

end A192974.P10898783936493850158

namespace A192974

/-- `A000071(n+2)+2*A163250(n)` -/
def P10898783936493850158.Spec : Prop :=
  ∀ n, P10898783936493850158.a n = A192974 n

end A192974

/-! ## A192974.P3942543715392224443

`A192972(n)+A019274(n+1)/2`
-/

namespace A192974.P3942543715392224443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192972 n : ℚ) + (A019274 (n + 1) : ℚ) / 2

end

end A192974.P3942543715392224443

namespace A192974

/-- `A192972(n)+A019274(n+1)/2` -/
def P3942543715392224443.Spec : Prop :=
  ∀ n, P3942543715392224443.a n = (A192974 n : ℚ)

end A192974

/-! ## A192974.P14572908169276401677

`A192755(n+1)-A000217(2*n+1)`
-/

namespace A192974.P14572908169276401677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192755 (n + 1) - A000217 (2 * n + 1)

end

end A192974.P14572908169276401677

namespace A192974

/-- `A192755(n+1)-A000217(2*n+1)` -/
def P14572908169276401677.Spec : Prop :=
  ∀ n, P14572908169276401677.a n = A192974 n

end A192974

/-! ## A192974.P2377451224093600915

`A192951(n)+A192972(n)-A192952(n)`
-/

namespace A192974.P2377451224093600915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A192972 n - A192952 n)

end

end A192974.P2377451224093600915

namespace A192974

/-- `A192951(n)+A192972(n)-A192952(n)` -/
def P2377451224093600915.Spec : Prop :=
  ∀ n, P2377451224093600915.a n = A192974 n

end A192974

/-! ## A192974.P4989046071631696570

`A192956(n)+A192972(n)-A192964(n)`
-/

namespace A192974.P4989046071631696570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + (A192972 n - A192964 n)

end

end A192974.P4989046071631696570

namespace A192974

/-- `A192956(n)+A192972(n)-A192964(n)` -/
def P4989046071631696570.Spec : Prop :=
  ∀ n, P4989046071631696570.a n = A192974 n

end A192974

/-! ## A192974.P13581173579421521531

`∑[A000032(n)]+A192972(n)-A020695(n)`
-/

namespace A192974.P13581173579421521531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A192972 n - A020695 n)

end

end A192974.P13581173579421521531

namespace A192974

/-- `∑[A000032(n)]+A192972(n)-A020695(n)` -/
def P13581173579421521531.Spec : Prop :=
  ∀ n, P13581173579421521531.a n = A192974 n

end A192974

/-! ## A192974.P5100703616418112129

`A192972(n)+∑[A212804(n)%A001611(n)]`
-/

namespace A192974.P5100703616418112129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 n) (A001611 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192974.P5100703616418112129

namespace A192974

/-- `A192972(n)+∑[A212804(n)%A001611(n)]` -/
def P5100703616418112129.Spec : Prop :=
  ∀ n, P5100703616418112129.a n = A192974 n

end A192974

/-! ## A192974.P3424468017544894472

`A192972(n)+∑[A000211(n)-2]-A020695(n)`
-/

namespace A192974.P3424468017544894472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n + (∑ j ∈ Finset.range (n + 1), f1 j - A020695 n)

end

end A192974.P3424468017544894472

namespace A192974

/-- `A192972(n)+∑[A000211(n)-2]-A020695(n)` -/
def P3424468017544894472.Spec : Prop :=
  ∀ n, P3424468017544894472.a n = A192974 n

end A192974

/-!
# A192975: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192975, the canonical program `A192975.P2558519318076799681` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192975 has offset 0).

The definition of A192975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192975.P2558519318076799681

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=8, a(3)=19`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192975

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P2558519318076799681.Spec : Prop :=
  ∀ n, P2558519318076799681.a n = A192975 n

theorem P2558519318076799681.correct : P2558519318076799681.Spec := by
  intro n
  simp only [A192975]

end A192975

/-! ## A192975.P5951467848223989919

`∑[a(n-1)+a(n-2)+4]` with `a(0)=1, a(1)=0, a(2)=7`
-/

namespace A192975.P5951467848223989919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192975.P5951467848223989919

namespace A192975

/-- `∑[a(n-1)+a(n-2)+4]` -/
def P5951467848223989919.Spec : Prop :=
  ∀ n, (P5951467848223989919.a n : ℤ) = A192975 n

end A192975

/-! ## A192975.P15534025180286109826

`4*n-2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A192975.P15534025180286109826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (4 * n : ℤ) - 2 + (a (n - 1) + a (n - 2))

end

end A192975.P15534025180286109826

namespace A192975

/-- `4*n-2+a(n-1)+a(n-2)` -/
def P15534025180286109826.Spec : Prop :=
  ∀ n, P15534025180286109826.a n = A192975 n

end A192975

/-! ## A192975.P4942631145801508165

`4*n-(2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A192975.P4942631145801508165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (4 * n : ℤ) - (2 - a (n - 1) - a (n - 2))

end

end A192975.P4942631145801508165

namespace A192975

/-- `4*n-(2-a(n-1)-a(n-2))` -/
def P4942631145801508165.Spec : Prop :=
  ∀ n, P4942631145801508165.a n = A192975 n

end A192975

/-! ## A192975.P16499029513338247190

`A192956(n)+A001891(n)`
-/

namespace A192975.P16499029513338247190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + A001891 n

end

end A192975.P16499029513338247190

namespace A192975

/-- `A192956(n)+A001891(n)` -/
def P16499029513338247190.Spec : Prop :=
  ∀ n, P16499029513338247190.a n = A192975 n

end A192975

/-! ## A192975.P14120213199941992244

`A212804(n)+A192751(n)`
-/

namespace A192975.P14120213199941992244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A192751 n

end

end A192975.P14120213199941992244

namespace A192975

/-- `A212804(n)+A192751(n)` -/
def P14120213199941992244.Spec : Prop :=
  ∀ n, P14120213199941992244.a n = A192975 n

end A192975

/-! ## A192975.P11713854879217063562

`A192971(n)-A000045(n)`
-/

namespace A192975.P11713854879217063562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192971 n - A000045 n

end

end A192975.P11713854879217063562

namespace A192975

/-- `A192971(n)-A000045(n)` -/
def P11713854879217063562.Spec : Prop :=
  ∀ n, P11713854879217063562.a n = A192975 n

end A192975

/-! ## A192975.P5460444609478351939

`A192967(n)+A192747(n+1)`
-/

namespace A192975.P5460444609478351939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 n + A192747 (n + 1)

end

end A192975.P5460444609478351939

namespace A192975

/-- `A192967(n)+A192747(n+1)` -/
def P5460444609478351939.Spec : Prop :=
  ∀ n, P5460444609478351939.a n = A192975 n

end A192975

/-! ## A192975.P14976318874738609058

`A023652(n+1)-A168674(n)`
-/

namespace A192975.P14976318874738609058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023652 (n + 1) - A168674 n

end

end A192975.P14976318874738609058

namespace A192975

/-- `A023652(n+1)-A168674(n)` -/
def P14976318874738609058.Spec : Prop :=
  ∀ n, P14976318874738609058.a n = A192975 n

end A192975

/-! ## A192975.P11112575538227496202

`A192753(n)+2-A001611(n)`
-/

namespace A192975.P11112575538227496202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192753 n + (2 - A001611 n)

end

end A192975.P11112575538227496202

namespace A192975

/-- `A192753(n)+2-A001611(n)` -/
def P11112575538227496202.Spec : Prop :=
  ∀ n, P11112575538227496202.a n = A192975 n

end A192975

/-! ## A192975.P1972139298402012237

`A152163(n)+2*A001891(n)`
-/

namespace A192975.P1972139298402012237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + 2 * A001891 n

end

end A192975.P1972139298402012237

namespace A192975

/-- `A152163(n)+2*A001891(n)` -/
def P1972139298402012237.Spec : Prop :=
  ∀ n, P1972139298402012237.a n = A192975 n

end A192975

/-! ## A192975.P15678971653547111465

`2*A192956(n)-A152163(n)`
-/

namespace A192975.P15678971653547111465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192956 n - A152163 n

end

end A192975.P15678971653547111465

namespace A192975

/-- `2*A192956(n)-A152163(n)` -/
def P15678971653547111465.Spec : Prop :=
  ∀ n, P15678971653547111465.a n = A192975 n

end A192975

/-! ## A192975.P14631222780606334089

`A192951(n)+A192958(n)+n`
-/

namespace A192975.P14631222780606334089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A192958 n + (n : ℤ))

end

end A192975.P14631222780606334089

namespace A192975

/-- `A192951(n)+A192958(n)+n` -/
def P14631222780606334089.Spec : Prop :=
  ∀ n, P14631222780606334089.a n = A192975 n

end A192975

/-! ## A192975.P6087184174252470197

`Δ[A163250(n)]+Δ[A192957(n)]`
-/

namespace A192975.P6087184174252470197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n)

end

end A192975.P6087184174252470197

namespace A192975

/-- `Δ[A163250(n)]+Δ[A192957(n)]` -/
def P6087184174252470197.Spec : Prop :=
  ∀ n, P6087184174252470197.a n = A192975 n

end A192975

/-! ## A192975.P12762488043456967086

`∑[A182415(n)]-2*A000045(n)`
-/

namespace A192975.P12762488043456967086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A000045 n

end

end A192975.P12762488043456967086

namespace A192975

/-- `∑[A182415(n)]-2*A000045(n)` -/
def P12762488043456967086.Spec : Prop :=
  ∀ n, P12762488043456967086.a n = A192975 n

end A192975

/-! ## A192975.P6309755702509646161

`A192973(n+1)-2*A000045(n)`
-/

namespace A192975.P6309755702509646161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192973 (n + 1) - 2 * A000045 n

end

end A192975.P6309755702509646161

namespace A192975

/-- `A192973(n+1)-2*A000045(n)` -/
def P6309755702509646161.Spec : Prop :=
  ∀ n, P6309755702509646161.a n = A192975 n

end A192975

/-! ## A192975.P4446101870386331162

`2*A192953(n+1)-A000032(n+1)`
-/

namespace A192975.P4446101870386331162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192953 (n + 1) - A000032 (n + 1)

end

end A192975.P4446101870386331162

namespace A192975

/-- `2*A192953(n+1)-A000032(n+1)` -/
def P4446101870386331162.Spec : Prop :=
  ∀ n, P4446101870386331162.a n = A192975 n

end A192975

/-! ## A192975.P14028936373567118887

`A000045(n+1)+A192751(n)-A000045(n)`
-/

namespace A192975.P14028936373567118887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A192751 n - A000045 n)

end

end A192975.P14028936373567118887

namespace A192975

/-- `A000045(n+1)+A192751(n)-A000045(n)` -/
def P14028936373567118887.Spec : Prop :=
  ∀ n, P14028936373567118887.a n = A192975 n

end A192975

/-! ## A192975.P14817896452703187312

`A192954(n)+A192954(n)-A000045(n+1)`
-/

namespace A192975.P14817896452703187312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n + (A192954 n - A000045 (n + 1))

end

end A192975.P14817896452703187312

namespace A192975

/-- `A192954(n)+A192954(n)-A000045(n+1)` -/
def P14817896452703187312.Spec : Prop :=
  ∀ n, P14817896452703187312.a n = A192975 n

end A192975

/-! ## A192975.P5419176947707454321

`A192965(n+1)+A192751(n)-A192963(n)`
-/

namespace A192975.P5419176947707454321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192965 (n + 1) + (A192751 n - A192963 n)

end

end A192975.P5419176947707454321

namespace A192975

/-- `A192965(n+1)+A192751(n)-A192963(n)` -/
def P5419176947707454321.Spec : Prop :=
  ∀ n, P5419176947707454321.a n = A192975 n

end A192975

/-!
# A192976: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192976, the canonical program `A192976.P11978037907667082293` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192976 has offset 0).

The definition of A192976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192976.P11978037907667082293

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=10, a(4)=29`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192976

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P11978037907667082293.Spec : Prop :=
  ∀ n, P11978037907667082293.a n = A192976 n

theorem P11978037907667082293.correct : P11978037907667082293.Spec := by
  intro n
  simp only [A192976]

end A192976

/-! ## A192976.P12716354191658410328

`A192957(n)+A163250(n)`
-/

namespace A192976.P12716354191658410328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 n + A163250 n

end

end A192976.P12716354191658410328

namespace A192976

/-- `A192957(n)+A163250(n)` -/
def P12716354191658410328.Spec : Prop :=
  ∀ n, P12716354191658410328.a n = A192976 n

end A192976

/-! ## A192976.P14135516950085565352

`A192972(n)-A000071(n+1)`
-/

namespace A192976.P14135516950085565352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n - A000071 (n + 1)

end

end A192976.P14135516950085565352

namespace A192976

/-- `A192972(n)-A000071(n+1)` -/
def P14135516950085565352.Spec : Prop :=
  ∀ n, P14135516950085565352.a n = A192976 n

end A192976

/-! ## A192976.P1943720028386213381

`A192974(n)-A019274(n+1)`
-/

namespace A192976.P1943720028386213381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192974 n - A019274 (n + 1)

end

end A192976.P1943720028386213381

namespace A192976

/-- `A192974(n)-A019274(n+1)` -/
def P1943720028386213381.Spec : Prop :=
  ∀ n, P1943720028386213381.a n = A192976 n

end A192976

/-! ## A192976.P10628153518927992657

`A192955(n)+A192980(n)-n`
-/

namespace A192976.P10628153518927992657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192955 n + (A192980 n - (n : ℤ))

end

end A192976.P10628153518927992657

namespace A192976

/-- `A192955(n)+A192980(n)-n` -/
def P10628153518927992657.Spec : Prop :=
  ∀ n, P10628153518927992657.a n = A192976 n

end A192976

/-! ## A192976.P2833339666472743735

`A192963(n)+A192982(n)-n`
-/

namespace A192976.P2833339666472743735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192963 n + (A192982 n - (n : ℤ))

end

end A192976.P2833339666472743735

namespace A192976

/-- `A192963(n)+A192982(n)-n` -/
def P2833339666472743735.Spec : Prop :=
  ∀ n, P2833339666472743735.a n = A192976 n

end A192976

/-! ## A192976.P1011371927856461851

`A192972(n)+1-∑[A212804(n)]`
-/

namespace A192976.P1011371927856461851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192976.P1011371927856461851

namespace A192976

/-- `A192972(n)+1-∑[A212804(n)]` -/
def P1011371927856461851.Spec : Prop :=
  ∀ n, P1011371927856461851.a n = A192976 n

end A192976

/-! ## A192976.P11718412354877268499

`A192951(n)+A192963(n)-n²`
-/

namespace A192976.P11718412354877268499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + (A192963 n - (n ^ 2 : ℤ))

end

end A192976.P11718412354877268499

namespace A192976

/-- `A192951(n)+A192963(n)-n²` -/
def P11718412354877268499.Spec : Prop :=
  ∀ n, P11718412354877268499.a n = A192976 n

end A192976

/-! ## A192976.P10969769951130023121

`A192972(n)-(A000045(n+1)-1)`
-/

namespace A192976.P10969769951130023121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n - (A000045 (n + 1) - 1)

end

end A192976.P10969769951130023121

namespace A192976

/-- `A192972(n)-(A000045(n+1)-1)` -/
def P10969769951130023121.Spec : Prop :=
  ∀ n, P10969769951130023121.a n = A192976 n

end A192976

/-! ## A192976.P7483769367109178514

`A192974(n)-2*A000071(n+1)`
-/

namespace A192976.P7483769367109178514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192974 n - 2 * A000071 (n + 1)

end

end A192976.P7483769367109178514

namespace A192976

/-- `A192974(n)-2*A000071(n+1)` -/
def P7483769367109178514.Spec : Prop :=
  ∀ n, P7483769367109178514.a n = A192976 n

end A192976

/-! ## A192976.P5022387154389936888

`A192972(n)-A019274(n+1)/2`
-/

namespace A192976.P5022387154389936888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192972 n : ℚ) - (A019274 (n + 1) : ℚ) / 2

end

end A192976.P5022387154389936888

namespace A192976

/-- `A192972(n)-A019274(n+1)/2` -/
def P5022387154389936888.Spec : Prop :=
  ∀ n, P5022387154389936888.a n = (A192976 n : ℚ)

end A192976

/-! ## A192976.P10841440497183933891

`A000045(n+4)+3*A000032(n+3)-(2*n²+8*n+15)`
-/

namespace A192976.P10841440497183933891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) + 3 * A000032 (n + 3) - (2 * n ^ 2 + 8 * n + 15 : ℤ)

end

end A192976.P10841440497183933891

namespace A192976

/-- `A000045(n+4)+3*A000032(n+3)-(2*n²+8*n+15)` -/
def P10841440497183933891.Spec : Prop :=
  ∀ n, P10841440497183933891.a n = A192976 n

end A192976

/-! ## A192976.P6039135528540480817

`A192952(n)+A192972(n)-A192951(n)`
-/

namespace A192976.P6039135528540480817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192952 n + (A192972 n - A192951 n)

end

end A192976.P6039135528540480817

namespace A192976

/-- `A192952(n)+A192972(n)-A192951(n)` -/
def P6039135528540480817.Spec : Prop :=
  ∀ n, P6039135528540480817.a n = A192976 n

end A192976

/-! ## A192976.P16526921934598199296

`A192964(n)+A192972(n)-A192956(n)`
-/

namespace A192976.P16526921934598199296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + (A192972 n - A192956 n)

end

end A192976.P16526921934598199296

namespace A192976

/-- `A192964(n)+A192972(n)-A192956(n)` -/
def P16526921934598199296.Spec : Prop :=
  ∀ n, P16526921934598199296.a n = A192976 n

end A192976

/-! ## A192976.P12400959515562371475

`A192972(n)+A192972(n)-A192974(n)`
-/

namespace A192976.P12400959515562371475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n + (A192972 n - A192974 n)

end

end A192976.P12400959515562371475

namespace A192976

/-- `A192972(n)+A192972(n)-A192974(n)` -/
def P12400959515562371475.Spec : Prop :=
  ∀ n, P12400959515562371475.a n = A192976 n

end A192976

/-! ## A192976.P18049331629274728024

`A020695(n)+A192972(n)-∑[A000032(n)]`
-/

namespace A192976.P18049331629274728024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (A192972 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192976.P18049331629274728024

namespace A192976

/-- `A020695(n)+A192972(n)-∑[A000032(n)]` -/
def P18049331629274728024.Spec : Prop :=
  ∀ n, P18049331629274728024.a n = A192976 n

end A192976

/-! ## A192976.P4082964964050435549

`A192972(n)-(∑[A000045(n)]-A000045(n))`
-/

namespace A192976.P4082964964050435549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n - (∑ j ∈ Finset.range (n + 1), f1 j - A000045 n)

end

end A192976.P4082964964050435549

namespace A192976

/-- `A192972(n)-(∑[A000045(n)]-A000045(n))` -/
def P4082964964050435549.Spec : Prop :=
  ∀ n, P4082964964050435549.a n = A192976 n

end A192976

/-! ## A192976.P2884032124998992576

`A192972(n)-(∑[A000211(n)-2]-A020695(n))`
-/

namespace A192976.P2884032124998992576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n - (∑ j ∈ Finset.range (n + 1), f1 j - A020695 n)

end

end A192976.P2884032124998992576

namespace A192976

/-- `A192972(n)-(∑[A000211(n)-2]-A020695(n))` -/
def P2884032124998992576.Spec : Prop :=
  ∀ n, P2884032124998992576.a n = A192976 n

end A192976

/-! ## A192976.P5958755832471505753

`A192972(n)-∑[A001611(n+1)%A001611(n)]`
-/

namespace A192976.P5958755832471505753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 (n + 1)) (A001611 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192976.P5958755832471505753

namespace A192976

/-- `A192972(n)-∑[A001611(n+1)%A001611(n)]` -/
def P5958755832471505753.Spec : Prop :=
  ∀ n, P5958755832471505753.a n = A192976 n

end A192976

/-! ## A192976.P1560843504126728324

`2*A192972(n)-A192974(n)`
-/

namespace A192976.P1560843504126728324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192972 n - A192974 n

end

end A192976.P1560843504126728324

namespace A192976

/-- `2*A192972(n)-A192974(n)` -/
def P1560843504126728324.Spec : Prop :=
  ∀ n, P1560843504126728324.a n = A192976 n

end A192976

/-!
# A192977: Number of times 9*n occurs in A068395.

The programs for A192977, there is no canonical definition to state claims against.
-/

/-! ## A192977.P2756211913170761893

`A269166(A286782(n+3))+A080133(n+1)`
-/

namespace A192977.P2756211913170761893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (A286782 (n + 3)).toNat + A080133 (n + 1)

end

end A192977.P2756211913170761893

/-!
# A192978: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192978, the canonical program `A192978.P14549414284370388916` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192978 has offset 0).

The definition of A192978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192978.P14549414284370388916

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=12, a(4)=29`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192978

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P14549414284370388916.Spec : Prop :=
  ∀ n, P14549414284370388916.a n = A192978 n

theorem P14549414284370388916.correct : P14549414284370388916.Spec := by
  intro n
  simp only [A192978]

end A192978

/-! ## A192978.P16051868602112371646

`∑[∑[a(n-1)+a(n-2)+2]]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A192978.P16051868602112371646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192978.P16051868602112371646

namespace A192978

/-- `∑[∑[a(n-1)+a(n-2)+2]]` -/
def P16051868602112371646.Spec : Prop :=
  ∀ n, (P16051868602112371646.a n : ℤ) = A192978 n

end A192978

/-! ## A192978.P6559972808158158915

`(1-n)²+a(n-1)+a(n-2)+n` with `a(0)=0, a(1)=1`
-/

namespace A192978.P6559972808158158915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (a (n - 1) + a (n - 2)) + (n : ℤ)

end

end A192978.P6559972808158158915

namespace A192978

/-- `(1-n)²+a(n-1)+a(n-2)+n` -/
def P6559972808158158915.Spec : Prop :=
  ∀ n, P6559972808158158915.a n = A192978 n

end A192978

/-! ## A192978.P16569753214168765367

`a(n-1)+a(n-2)+n*(n-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A192978.P16569753214168765367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (n : ℤ) * ((n : ℤ) - 1)) + 1

end

end A192978.P16569753214168765367

namespace A192978

/-- `a(n-1)+a(n-2)+n*(n-1)+1` -/
def P16569753214168765367.Spec : Prop :=
  ∀ n, P16569753214168765367.a n = A192978 n

end A192978

/-! ## A192978.P16732312167019105741

`∑[∑[A001610(n)]-n]`
-/

namespace A192978.P16732312167019105741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192978.P16732312167019105741

namespace A192978

/-- `∑[∑[A001610(n)]-n]` -/
def P16732312167019105741.Spec : Prop :=
  ∀ n, P16732312167019105741.a n = A192978 n

end A192978

/-! ## A192978.P11050995472785622982

`∑[∑[record[A000032(n)-2]]]`
-/

namespace A192978.P11050995472785622982
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192978.P11050995472785622982

namespace A192978

/-- `∑[∑[record[A000032(n)-2]]]` -/
def P11050995472785622982.Spec : Prop :=
  ∀ n, P11050995472785622982.a n = A192978 n

end A192978

/-! ## A192978.P7722490962736717699

`∑[∑[A324015(n+1)-1]]`
-/

namespace A192978.P7722490962736717699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192978.P7722490962736717699

namespace A192978

/-- `∑[∑[A324015(n+1)-1]]` -/
def P7722490962736717699.Spec : Prop :=
  ∀ n, P7722490962736717699.a n = A192978 n

end A192978

/-! ## A192978.P13332292955938577752

`∑[∑[A169985(n+1)-2]]`
-/

namespace A192978.P13332292955938577752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192978.P13332292955938577752

namespace A192978

/-- `∑[∑[A169985(n+1)-2]]` -/
def P13332292955938577752.Spec : Prop :=
  ∀ n, P13332292955938577752.a n = A192978 n

end A192978

/-! ## A192978.P11323993019246583107

`A023537(n+1)-(n+1)²`
-/

namespace A192978.P11323993019246583107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A192978.P11323993019246583107

namespace A192978

/-- `A023537(n+1)-(n+1)²` -/
def P11323993019246583107.Spec : Prop :=
  ∀ n, P11323993019246583107.a n = A192978 n

end A192978

/-! ## A192978.P7570394432649484167

`∑[A066982(n+2)-(n+1)]`
-/

namespace A192978.P7570394432649484167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 2) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192978.P7570394432649484167

namespace A192978

/-- `∑[A066982(n+2)-(n+1)]` -/
def P7570394432649484167.Spec : Prop :=
  ∀ n, P7570394432649484167.a n = A192978 n

end A192978

/-! ## A192978.P14332707933551992109

`∑[A206417(n+1)-2*n]`
-/

namespace A192978.P14332707933551992109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206417 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192978.P14332707933551992109

namespace A192978

/-- `∑[A206417(n+1)-2*n]` -/
def P14332707933551992109.Spec : Prop :=
  ∀ n, P14332707933551992109.a n = A192978 n

end A192978

/-! ## A192978.P5705270499660102728

`∑[∑[A000032(n+1)-2]+1]`
-/

namespace A192978.P5705270499660102728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192978.P5705270499660102728

namespace A192978

/-- `∑[∑[A000032(n+1)-2]+1]` -/
def P5705270499660102728.Spec : Prop :=
  ∀ n, P5705270499660102728.a n = A192978 n

end A192978

/-! ## A192978.P8799441138590827330

`∑[A027961(n+1)]-(n+1)²`
-/

namespace A192978.P8799441138590827330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A192978.P8799441138590827330

namespace A192978

/-- `∑[A027961(n+1)]-(n+1)²` -/
def P8799441138590827330.Spec : Prop :=
  ∀ n, P8799441138590827330.a n = A192978 n

end A192978

/-! ## A192978.P9941944599526504800

`∑[∑[A339572(2*n+1)]-n]`
-/

namespace A192978.P9941944599526504800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192978.P9941944599526504800

namespace A192978

/-- `∑[∑[A339572(2*n+1)]-n]` -/
def P9941944599526504800.Spec : Prop :=
  ∀ n, P9941944599526504800.a n = A192978 n

end A192978

/-! ## A192978.P17310856133178478453

`∑[∑[A000204(n+1)]-Δ[n²]]`
-/

namespace A192978.P17310856133178478453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192978.P17310856133178478453

namespace A192978

/-- `∑[∑[A000204(n+1)]-Δ[n²]]` -/
def P17310856133178478453.Spec : Prop :=
  ∀ n, P17310856133178478453.a n = A192978 n

end A192978

/-! ## A192978.P15309037584950261274

`a(n-1)+A000032(n+3)-2*(n+2)` with `a(0)=0`
-/

namespace A192978.P15309037584950261274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A000032 (n + 3) - (2 * (n + 2) : ℤ))

end

end A192978.P15309037584950261274

namespace A192978

/-- `a(n-1)+A000032(n+3)-2*(n+2)` -/
def P15309037584950261274.Spec : Prop :=
  ∀ n, P15309037584950261274.a n = A192978 n

end A192978

/-! ## A192978.P17855601378812902999

`A163250(n)+A001924(n)`
-/

namespace A192978.P17855601378812902999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 n + A001924 n

end

end A192978.P17855601378812902999

namespace A192978

/-- `A163250(n)+A001924(n)` -/
def P17855601378812902999.Spec : Prop :=
  ∀ n, P17855601378812902999.a n = A192978 n

end A192978

/-! ## A192978.P8315464054843233887

`A192755(n)+A014283(n)`
-/

namespace A192978.P8315464054843233887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192755 n + A014283 n

end

end A192978.P8315464054843233887

namespace A192978

/-- `A192755(n)+A014283(n)` -/
def P8315464054843233887.Spec : Prop :=
  ∀ n, P8315464054843233887.a n = A192978 n

end A192978

/-! ## A192978.P2661715255480706412

`A210730(n)+A192959(n)`
-/

namespace A192978.P2661715255480706412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A192959 n

end

end A192978.P2661715255480706412

namespace A192978

/-- `A210730(n)+A192959(n)` -/
def P2661715255480706412.Spec : Prop :=
  ∀ n, P2661715255480706412.a n = A192978 n

end A192978

/-!
# A192979: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192979, the canonical program `A192979.P5333389634435802646` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192979 has offset 0).

The definition of A192979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192979.P5333389634435802646

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192979

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P5333389634435802646.Spec : Prop :=
  ∀ n, P5333389634435802646.a n = A192979 n

theorem P5333389634435802646.correct : P5333389634435802646.Spec := by
  intro n
  simp only [A192979]

end A192979

/-! ## A192979.P16091599199910820342

`∑[a(n-1)+a(n-2)+2]` with `a(0)=1, a(1)=0`
-/

namespace A192979.P16091599199910820342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192979.P16091599199910820342

namespace A192979

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P16091599199910820342.Spec : Prop :=
  ∀ n, (P16091599199910820342.a n : ℤ) = A192979 n

end A192979

/-! ## A192979.P12783896346136391451

`∑[2*a(n-1)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A192979.P12783896346136391451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192979.P12783896346136391451

namespace A192979

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P12783896346136391451.Spec : Prop :=
  ∀ n, P12783896346136391451.a n = A192979 n

end A192979

/-! ## A192979.P1609517931922145559

`2*(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A192979.P1609517931922145559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * ((n : ℤ) - 1) + (a (n - 1) + a (n - 2))

end

end A192979.P1609517931922145559

namespace A192979

/-- `2*(n-1)+a(n-1)+a(n-2)` -/
def P1609517931922145559.Spec : Prop :=
  ∀ n, P1609517931922145559.a n = A192979 n

end A192979

/-! ## A192979.P13434499259884142009

`a(n-1)-(2*(1-n)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A192979.P13434499259884142009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (2 * (1 - (n : ℤ)) - a (n - 2))

end

end A192979.P13434499259884142009

namespace A192979

/-- `a(n-1)-(2*(1-n)-a(n-2))` -/
def P13434499259884142009.Spec : Prop :=
  ∀ n, P13434499259884142009.a n = A192979 n

end A192979

/-! ## A192979.P1186609592356436632

`a(n-1)-2+a(n-2)+n+n` with `a(0)=1, a(1)=1`
-/

namespace A192979.P1186609592356436632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 2 + (a (n - 2) + (n : ℤ) + (n : ℤ))

end

end A192979.P1186609592356436632

namespace A192979

/-- `a(n-1)-2+a(n-2)+n+n` -/
def P1186609592356436632.Spec : Prop :=
  ∀ n, P1186609592356436632.a n = A192979 n

end A192979

/-! ## A192979.P8783448335116988993

`a(n-1)-(2-a(n-2)-n-n)` with `a(0)=1, a(1)=1`
-/

namespace A192979.P8783448335116988993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (2 - a (n - 2) - (n : ℤ) - (n : ℤ))

end

end A192979.P8783448335116988993

namespace A192979

/-- `a(n-1)-(2-a(n-2)-n-n)` -/
def P8783448335116988993.Spec : Prop :=
  ∀ n, P8783448335116988993.a n = A192979 n

end A192979

/-! ## A192979.P10473681821071467887

`A192969(n)-n`
-/

namespace A192979.P10473681821071467887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n - (n : ℤ)

end

end A192979.P10473681821071467887

namespace A192979

/-- `A192969(n)-n` -/
def P10473681821071467887.Spec : Prop :=
  ∀ n, P10473681821071467887.a n = A192979 n

end A192979

/-! ## A192979.P9881782155953789217

`∑[A013655(n)-2]`
-/

namespace A192979.P9881782155953789217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192979.P9881782155953789217

namespace A192979

/-- `∑[A013655(n)-2]` -/
def P9881782155953789217.Spec : Prop :=
  ∀ n, P9881782155953789217.a n = A192979 n

end A192979

/-! ## A192979.P15213252586639172196

`A192761(n)+1-n`
-/

namespace A192979.P15213252586639172196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n + (1 - (n : ℤ))

end

end A192979.P15213252586639172196

namespace A192979

/-- `A192761(n)+1-n` -/
def P15213252586639172196.Spec : Prop :=
  ∀ n, P15213252586639172196.a n = A192979 n

end A192979

/-! ## A192979.P800045981783856717

`∑[A187890(n+2)-3]`
-/

namespace A192979.P800045981783856717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192979.P800045981783856717

namespace A192979

/-- `∑[A187890(n+2)-3]` -/
def P800045981783856717.Spec : Prop :=
  ∀ n, P800045981783856717.a n = A192979 n

end A192979

/-! ## A192979.P12284443255600587176

`∑[A013915(n)-(n+2)]`
-/

namespace A192979.P12284443255600587176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013915 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192979.P12284443255600587176

namespace A192979

/-- `∑[A013915(n)-(n+2)]` -/
def P12284443255600587176.Spec : Prop :=
  ∀ n, P12284443255600587176.a n = A192979 n

end A192979

/-! ## A192979.P3445885885591248118

`∑[A174562(2*(n+1))-2]`
-/

namespace A192979.P3445885885591248118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174562 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192979.P3445885885591248118

namespace A192979

/-- `∑[A174562(2*(n+1))-2]` -/
def P3445885885591248118.Spec : Prop :=
  ∀ n, P3445885885591248118.a n = A192979 n

end A192979

/-! ## A192979.P2056576749111852628

`A022318(n+1)-(2*n+3)`
-/

namespace A192979.P2056576749111852628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 (n + 1) - (2 * n + 3 : ℤ)

end

end A192979.P2056576749111852628

namespace A192979

/-- `A022318(n+1)-(2*n+3)` -/
def P2056576749111852628.Spec : Prop :=
  ∀ n, P2056576749111852628.a n = A192979 n

end A192979

/-! ## A192979.P7513540451055670796

`A192964(n)+A000045(n)`
-/

namespace A192979.P7513540451055670796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + A000045 n

end

end A192979.P7513540451055670796

namespace A192979

/-- `A192964(n)+A000045(n)` -/
def P7513540451055670796.Spec : Prop :=
  ∀ n, P7513540451055670796.a n = A192979 n

end A192979

/-! ## A192979.P8438248811917495537

`A210677(n)+A065220(n)`
-/

namespace A192979.P8438248811917495537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + A065220 n

end

end A192979.P8438248811917495537

namespace A192979

/-- `A210677(n)+A065220(n)` -/
def P8438248811917495537.Spec : Prop :=
  ∀ n, P8438248811917495537.a n = A192979 n

end A192979

/-! ## A192979.P6062280770177752428

`A192967(n)+A104161(n)`
-/

namespace A192979.P6062280770177752428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 n + A104161 n

end

end A192979.P6062280770177752428

namespace A192979

/-- `A192967(n)+A104161(n)` -/
def P6062280770177752428.Spec : Prop :=
  ∀ n, P6062280770177752428.a n = A192979 n

end A192979

/-! ## A192979.P16788199903720620741

`A065220(n)+A210730(n)+1`
-/

namespace A192979.P16788199903720620741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (A210730 n + 1)

end

end A192979.P16788199903720620741

namespace A192979

/-- `A065220(n)+A210730(n)+1` -/
def P16788199903720620741.Spec : Prop :=
  ∀ n, P16788199903720620741.a n = A192979 n

end A192979

/-!
# A192980: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192980, the canonical program `A192980.P13154398871940206972` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192980 has offset 0).

The definition of A192980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192980.P13154398871940206972

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192980

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P13154398871940206972.Spec : Prop :=
  ∀ n, P13154398871940206972.a n = A192980 n

theorem P13154398871940206972.correct : P13154398871940206972.Spec := by
  intro n
  simp only [A192980]

end A192980

/-! ## A192980.P14799955770228325477

`∑[∑[a(n-1)+a(n-2)+2]]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A192980.P14799955770228325477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192980.P14799955770228325477

namespace A192980

/-- `∑[∑[a(n-1)+a(n-2)+2]]` -/
def P14799955770228325477.Spec : Prop :=
  ∀ n, (P14799955770228325477.a n : ℤ) = A192980 n

end A192980

/-! ## A192980.P15066284819552049128

`(1-n)²+a(n-1)+a(n-2)+2-n` with `a(0)=0, a(1)=1`
-/

namespace A192980.P15066284819552049128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (1 - (n : ℤ)) ^ 2 + (a (n - 1) + a (n - 2)) + 2 - (n : ℤ)

end

end A192980.P15066284819552049128

namespace A192980

/-- `(1-n)²+a(n-1)+a(n-2)+2-n` -/
def P15066284819552049128.Spec : Prop :=
  ∀ n, P15066284819552049128.a n = A192980 n

end A192980

/-! ## A192980.P11129909815998284081

`(n-1)*(n-2)+a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A192980.P11129909815998284081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2) + (a (n - 1) + a (n - 2)) + 1

end

end A192980.P11129909815998284081

namespace A192980

/-- `(n-1)*(n-2)+a(n-1)+a(n-2)+1` -/
def P11129909815998284081.Spec : Prop :=
  ∀ n, P11129909815998284081.a n = A192980 n

end A192980

/-! ## A192980.P13006253659210520110

`A192970(n)+n-∑[n]`
-/

namespace A192980.P13006253659210520110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192970 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A192980.P13006253659210520110

namespace A192980

/-- `A192970(n)+n-∑[n]` -/
def P13006253659210520110.Spec : Prop :=
  ∀ n, P13006253659210520110.a n = A192980 n

end A192980

/-! ## A192980.P5026416911491592579

`∑[A192979(abs(1-n))]-1`
-/

namespace A192980.P5026416911491592579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A192980.P5026416911491592579

namespace A192980

/-- `∑[A192979(abs(1-n))]-1` -/
def P5026416911491592579.Spec : Prop :=
  ∀ n, P5026416911491592579.a n = A192980 n

end A192980

/-! ## A192980.P17371578960303389807

`∑[A022318(n)]-(n+1)²`
-/

namespace A192980.P17371578960303389807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A192980.P17371578960303389807

namespace A192980

/-- `∑[A022318(n)]-(n+1)²` -/
def P17371578960303389807.Spec : Prop :=
  ∀ n, P17371578960303389807.a n = A192980 n

end A192980

/-! ## A192980.P11614134202860246659

`A192761(n+1)-(n+1)²`
-/

namespace A192980.P11614134202860246659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A192980.P11614134202860246659

namespace A192980

/-- `A192761(n+1)-(n+1)²` -/
def P11614134202860246659.Spec : Prop :=
  ∀ n, P11614134202860246659.a n = A192980 n

end A192980

/-! ## A192980.P15815499977582492055

`∑[∑[A013655(abs(1-n))-2]]`
-/

namespace A192980.P15815499977582492055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 |1 - (n : ℤ)|.toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192980.P15815499977582492055

namespace A192980

/-- `∑[∑[A013655(abs(1-n))-2]]` -/
def P15815499977582492055.Spec : Prop :=
  ∀ n, P15815499977582492055.a n = A192980 n

end A192980

/-! ## A192980.P15047941067726911569

`A192957(n)-A065220(n)`
-/

namespace A192980.P15047941067726911569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 n - A065220 n

end

end A192980.P15047941067726911569

namespace A192980

/-- `A192957(n)-A065220(n)` -/
def P15047941067726911569.Spec : Prop :=
  ∀ n, P15047941067726911569.a n = A192980 n

end A192980

/-! ## A192980.P3555764570198444557

`A192965(n)+A000071(n+1)`
-/

namespace A192980.P3555764570198444557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192965 n + A000071 (n + 1)

end

end A192980.P3555764570198444557

namespace A192980

/-- `A192965(n)+A000071(n+1)` -/
def P3555764570198444557.Spec : Prop :=
  ∀ n, P3555764570198444557.a n = A192980 n

end A192980

/-! ## A192980.P2981116599200751810

`A192957(n)+n-A000045(n)`
-/

namespace A192980.P2981116599200751810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 n + ((n : ℤ) - A000045 n)

end

end A192980.P2981116599200751810

namespace A192980

/-- `A192957(n)+n-A000045(n)` -/
def P2981116599200751810.Spec : Prop :=
  ∀ n, P2981116599200751810.a n = A192980 n

end A192980

/-! ## A192980.P17916025755992358314

`A192970(n)+n-A000217(n)`
-/

namespace A192980.P17916025755992358314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192970 n + (n : ℤ) - A000217 n

end

end A192980.P17916025755992358314

namespace A192980

/-- `A192970(n)+n-A000217(n)` -/
def P17916025755992358314.Spec : Prop :=
  ∀ n, P17916025755992358314.a n = A192980 n

end A192980

/-! ## A192980.P9399785154849380145

`A163250(n)-A000071(n+1)+n`
-/

namespace A192980.P9399785154849380145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163250 n - A000071 (n + 1) + (n : ℤ)

end

end A192980.P9399785154849380145

namespace A192980

/-- `A163250(n)-A000071(n+1)+n` -/
def P9399785154849380145.Spec : Prop :=
  ∀ n, P9399785154849380145.a n = A192980 n

end A192980

/-! ## A192980.P14388610955399300321

`A192978(A028310(n)-1)+A000045(n)`
-/

namespace A192980.P14388610955399300321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 (A028310 n - 1).toNat + A000045 n

end

end A192980.P14388610955399300321

namespace A192980

/-- `A192978(A028310(n)-1)+A000045(n)` -/
def P14388610955399300321.Spec : Prop :=
  ∀ n, P14388610955399300321.a n = A192980 n

end A192980

/-! ## A192980.P7166469067182441239

`A192953(n)+A192955(n)-A192952(n)`
-/

namespace A192980.P7166469067182441239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 n + (A192955 n - A192952 n)

end

end A192980.P7166469067182441239

namespace A192980

/-- `A192953(n)+A192955(n)-A192952(n)` -/
def P7166469067182441239.Spec : Prop :=
  ∀ n, P7166469067182441239.a n = A192980 n

end A192980

/-! ## A192980.P2562007515039250416

`A192966(n)+A192966(n)-A192953(n)`
-/

namespace A192980.P2562007515039250416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192966 n + (A192966 n - A192953 n)

end

end A192980.P2562007515039250416

namespace A192980

/-- `A192966(n)+A192966(n)-A192953(n)` -/
def P2562007515039250416.Spec : Prop :=
  ∀ n, P2562007515039250416.a n = A192980 n

end A192980

/-! ## A192980.P3379162961373284507

`A192955(n)+A192967(n)-A192981(n)`
-/

namespace A192980.P3379162961373284507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192955 n + (A192967 n - A192981 n)

end

end A192980.P3379162961373284507

namespace A192980

/-- `A192955(n)+A192967(n)-A192981(n)` -/
def P3379162961373284507.Spec : Prop :=
  ∀ n, P3379162961373284507.a n = A192980 n

end A192980

/-! ## A192980.P5406722751320267786

`A192965(n)+A210675(n)-A192762(n)`
-/

namespace A192980.P5406722751320267786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192965 n + (A210675 n - A192762 n)

end

end A192980.P5406722751320267786

namespace A192980

/-- `A192965(n)+A210675(n)-A192762(n)` -/
def P5406722751320267786.Spec : Prop :=
  ∀ n, P5406722751320267786.a n = A192980 n

end A192980

/-! ## A192980.P17440985391416821156

`A000217(n)-(A000290(n)-A192970(n))`
-/

namespace A192980.P17440985391416821156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A000290 n - A192970 n)

end

end A192980.P17440985391416821156

namespace A192980

/-- `A000217(n)-(A000290(n)-A192970(n))` -/
def P17440985391416821156.Spec : Prop :=
  ∀ n, P17440985391416821156.a n = A192980 n

end A192980

/-!
# A192981: Constant term of the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192981, the canonical program `A192981.P17637406634458714216` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192981 has offset 0).

The definition of A192981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192981.P17637406634458714216

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192981

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P17637406634458714216.Spec : Prop :=
  ∀ n, P17637406634458714216.a n = A192981 n

theorem P17637406634458714216.correct : P17637406634458714216.Spec := by
  intro n
  simp only [A192981]

end A192981

/-! ## A192981.P1125940058475239901

`∑[a(n-1)+a(n-2)+2]` with `a(0)=1, a(1)=-1`
-/

namespace A192981.P1125940058475239901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192981.P1125940058475239901

namespace A192981

/-- `∑[a(n-1)+a(n-2)+2]` -/
def P1125940058475239901.Spec : Prop :=
  ∀ n, P1125940058475239901.a n = A192981 n

end A192981

/-! ## A192981.P828400662179149601

`∑[2*a(n-1)-a(n-3)]` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A192981.P828400662179149601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192981.P828400662179149601

namespace A192981

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P828400662179149601.Spec : Prop :=
  ∀ n, P828400662179149601.a n = A192981 n

end A192981

/-! ## A192981.P11302822544839418978

`2*(a(n-1)+1)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A192981.P11302822544839418978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * (a (n - 1) + 1) - a (n - 3)

end

end A192981.P11302822544839418978

namespace A192981

/-- `2*(a(n-1)+1)-a(n-3)` -/
def P11302822544839418978.Spec : Prop :=
  ∀ n, P11302822544839418978.a n = A192981 n

end A192981

/-! ## A192981.P6857140096440558981

`2*a(n-1)-(a(n-3)-2)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A192981.P6857140096440558981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 2)

end

end A192981.P6857140096440558981

namespace A192981

/-- `2*a(n-1)-(a(n-3)-2)` -/
def P6857140096440558981.Spec : Prop :=
  ∀ n, P6857140096440558981.a n = A192981 n

end A192981

/-! ## A192981.P7682189814705328190

`a(n-1)-3+a(n-2)+n+n` with `a(0)=1, a(1)=0`
-/

namespace A192981.P7682189814705328190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - 3 + (a (n - 2) + (n : ℤ) + (n : ℤ))

end

end A192981.P7682189814705328190

namespace A192981

/-- `a(n-1)-3+a(n-2)+n+n` -/
def P7682189814705328190.Spec : Prop :=
  ∀ n, P7682189814705328190.a n = A192981 n

end A192981

/-! ## A192981.P14282632100290055738

`a(n-1)-(3-a(n-2)-n-n)` with `a(0)=1, a(1)=0`
-/

namespace A192981.P14282632100290055738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (3 - a (n - 2) - (n : ℤ) - (n : ℤ))

end

end A192981.P14282632100290055738

namespace A192981

/-- `a(n-1)-(3-a(n-2)-n-n)` -/
def P14282632100290055738.Spec : Prop :=
  ∀ n, P14282632100290055738.a n = A192981 n

end A192981

/-! ## A192981.P1633513226898107364

`A030119(n)-n`
-/

namespace A192981.P1633513226898107364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 n - (n : ℤ)

end

end A192981.P1633513226898107364

namespace A192981

/-- `A030119(n)-n` -/
def P1633513226898107364.Spec : Prop :=
  ∀ n, P1633513226898107364.a n = A192981 n

end A192981

/-! ## A192981.P10074026616754590011

`∑[A104449(n)-2]`
-/

namespace A192981.P10074026616754590011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192981.P10074026616754590011

namespace A192981

/-- `∑[A104449(n)-2]` -/
def P10074026616754590011.Spec : Prop :=
  ∀ n, P10074026616754590011.a n = A192981 n

end A192981

/-! ## A192981.P18396908104860595863

`A171516(n)-2*n`
-/

namespace A192981.P18396908104860595863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171516 n - (2 * n : ℤ)

end

end A192981.P18396908104860595863

namespace A192981

/-- `A171516(n)-2*n` -/
def P18396908104860595863.Spec : Prop :=
  ∀ n, P18396908104860595863.a n = A192981 n

end A192981

/-! ## A192981.P11908597082099623712

`∑[Δ[A000285(n)]-2]`
-/

namespace A192981.P11908597082099623712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192981.P11908597082099623712

namespace A192981

/-- `∑[Δ[A000285(n)]-2]` -/
def P11908597082099623712.Spec : Prop :=
  ∀ n, P11908597082099623712.a n = A192981 n

end A192981

/-! ## A192981.P14367918695578489821

`∑[Δ[A022308(n)]-2]`
-/

namespace A192981.P14367918695578489821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192981.P14367918695578489821

namespace A192981

/-- `∑[Δ[A022308(n)]-2]` -/
def P14367918695578489821.Spec : Prop :=
  ∀ n, P14367918695578489821.a n = A192981 n

end A192981

/-! ## A192981.P7212781998705000030

`A022308(n+1)-2*(n+1)`
-/

namespace A192981.P7212781998705000030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 1) - (2 * (n + 1) : ℤ)

end

end A192981.P7212781998705000030

namespace A192981

/-- `A022308(n+1)-2*(n+1)` -/
def P7212781998705000030.Spec : Prop :=
  ∀ n, P7212781998705000030.a n = A192981 n

end A192981

/-! ## A192981.P5663658293823699109

`A000285(n+1)-(2*n+3)`
-/

namespace A192981.P5663658293823699109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 1) - (2 * n + 3 : ℤ)

end

end A192981.P5663658293823699109

namespace A192981

/-- `A000285(n+1)-(2*n+3)` -/
def P5663658293823699109.Spec : Prop :=
  ∀ n, P5663658293823699109.a n = A192981 n

end A192981

/-! ## A192981.P16234753100279223669

`A192953(n)+A152163(n)`
-/

namespace A192981.P16234753100279223669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 n + A152163 n

end

end A192981.P16234753100279223669

namespace A192981

/-- `A192953(n)+A152163(n)` -/
def P16234753100279223669.Spec : Prop :=
  ∀ n, P16234753100279223669.a n = A192981 n

end A192981

/-! ## A192981.P18089096892223237845

`A192954(n)-A001911(n)`
-/

namespace A192981.P18089096892223237845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n - A001911 n

end

end A192981.P18089096892223237845

namespace A192981

/-- `A192954(n)-A001911(n)` -/
def P18089096892223237845.Spec : Prop :=
  ∀ n, P18089096892223237845.a n = A192981 n

end A192981

/-! ## A192981.P16920704156128256615

`A192979(n)-∑[A000045(n)]`
-/

namespace A192981.P16920704156128256615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192981.P16920704156128256615

namespace A192981

/-- `A192979(n)-∑[A000045(n)]` -/
def P16920704156128256615.Spec : Prop :=
  ∀ n, P16920704156128256615.a n = A192981 n

end A192981

/-! ## A192981.P13788388423715619572

`A210673(n+1)+A001924(n)`
-/

namespace A192981.P13788388423715619572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 (n + 1) + A001924 n

end

end A192981.P13788388423715619572

namespace A192981

/-- `A210673(n+1)+A001924(n)` -/
def P13788388423715619572.Spec : Prop :=
  ∀ n, P13788388423715619572.a n = A192981 n

end A192981

/-!
# A192982: Coefficient of x in the reduction by x^2 -> x+1 of the polynomial p(n,x) defined at Comments.

The programs for A192982, the canonical program `A192982.P12608139304124315547` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192982 has offset 0).

The definition of A192982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192982.P12608139304124315547

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192982

/-- `4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` -/
def P12608139304124315547.Spec : Prop :=
  ∀ n, P12608139304124315547.a n = A192982 n

theorem P12608139304124315547.correct : P12608139304124315547.Spec := by
  intro n
  simp only [A192982]

end A192982

/-! ## A192982.P15693940761175943615

`(2-n)²+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192982.P15693940761175943615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 - (n : ℤ)) ^ 2 + (a (n - 1) + a (n - 2))

end

end A192982.P15693940761175943615

namespace A192982

/-- `(2-n)²+a(n-1)+a(n-2)` -/
def P15693940761175943615.Spec : Prop :=
  ∀ n, P15693940761175943615.a n = A192982 n

end A192982

/-! ## A192982.P2724507951337968626

`∑[∑[a(n-1)+a(n-2)+2]]` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A192982.P2724507951337968626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 2) + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192982.P2724507951337968626

namespace A192982

/-- `∑[∑[a(n-1)+a(n-2)+2]]` -/
def P2724507951337968626.Spec : Prop :=
  ∀ n, P2724507951337968626.a n = A192982 n

end A192982

/-! ## A192982.P15181643799934726102

`2-n+(n-1)*(n-2)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A192982.P15181643799934726102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (n : ℤ) + (((n : ℤ) - 1) * ((n : ℤ) - 2) + (a (n - 1) + a (n - 2)))

end

end A192982.P15181643799934726102

namespace A192982

/-- `2-n+(n-1)*(n-2)+a(n-1)+a(n-2)` -/
def P15181643799934726102.Spec : Prop :=
  ∀ n, P15181643799934726102.a n = A192982 n

end A192982

/-! ## A192982.P856948032409176874

`∑[A192981(abs(1-n))]`
-/

namespace A192982.P856948032409176874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192982.P856948032409176874

namespace A192982

/-- `∑[A192981(abs(1-n))]` -/
def P856948032409176874.Spec : Prop :=
  ∀ n, P856948032409176874.a n = A192982 n

end A192982

/-! ## A192982.P1227986936290333436

`A053311(n)-(n+1)²`
-/

namespace A192982.P1227986936290333436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053311 n - ((n + 1) ^ 2 : ℤ)

end

end A192982.P1227986936290333436

namespace A192982

/-- `A053311(n)-(n+1)²` -/
def P1227986936290333436.Spec : Prop :=
  ∀ n, P1227986936290333436.a n = A192982 n

end A192982

/-! ## A192982.P12082834496124297598

`A192981(n+1)-n²`
-/

namespace A192982.P12082834496124297598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 (n + 1) - (n ^ 2 : ℤ)

end

end A192982.P12082834496124297598

namespace A192982

/-- `A192981(n+1)-n²` -/
def P12082834496124297598.Spec : Prop :=
  ∀ n, P12082834496124297598.a n = A192982 n

end A192982

/-! ## A192982.P9554950873104606065

`∑[A022308(n)-2*n]`
-/

namespace A192982.P9554950873104606065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192982.P9554950873104606065

namespace A192982

/-- `∑[A022308(n)-2*n]` -/
def P9554950873104606065.Spec : Prop :=
  ∀ n, P9554950873104606065.a n = A192982 n

end A192982

/-! ## A192982.P3044739408094989282

`A192951(n)+n-n²`
-/

namespace A192982.P3044739408094989282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A192982.P3044739408094989282

namespace A192982

/-- `A192951(n)+n-n²` -/
def P3044739408094989282.Spec : Prop :=
  ∀ n, P3044739408094989282.a n = A192982 n

end A192982

/-! ## A192982.P13815251215399938105

`A192966(n)+n-∑[n]`
-/

namespace A192982.P13815251215399938105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192966 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A192982.P13815251215399938105

namespace A192982

/-- `A192966(n)+n-∑[n]` -/
def P13815251215399938105.Spec : Prop :=
  ∀ n, P13815251215399938105.a n = A192982 n

end A192982

/-! ## A192982.P2383522555533014823

`∑[A000285(n)-Δ[n²]]`
-/

namespace A192982.P2383522555533014823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192982.P2383522555533014823

namespace A192982

/-- `∑[A000285(n)-Δ[n²]]` -/
def P2383522555533014823.Spec : Prop :=
  ∀ n, P2383522555533014823.a n = A192982 n

end A192982

/-! ## A192982.P7208959629201582839

`∑[A104449(n+1)]-(n+1)²`
-/

namespace A192982.P7208959629201582839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A192982.P7208959629201582839

namespace A192982

/-- `∑[A104449(n+1)]-(n+1)²` -/
def P7208959629201582839.Spec : Prop :=
  ∀ n, P7208959629201582839.a n = A192982 n

end A192982

/-! ## A192982.P11550901232682076310

`A030119(n+1)-(n+1)²+n`
-/

namespace A192982.P11550901232682076310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 (n + 1) - ((n + 1) ^ 2 : ℤ) + (n : ℤ)

end

end A192982.P11550901232682076310

namespace A192982

/-- `A030119(n+1)-(n+1)²+n` -/
def P11550901232682076310.Spec : Prop :=
  ∀ n, P11550901232682076310.a n = A192982 n

end A192982

/-! ## A192982.P1565987278079352519

`A014283(n)+A001891(n)`
-/

namespace A192982.P1565987278079352519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014283 n + A001891 n

end

end A192982.P1565987278079352519

namespace A192982

/-- `A014283(n)+A001891(n)` -/
def P1565987278079352519.Spec : Prop :=
  ∀ n, P1565987278079352519.a n = A192982 n

end A192982

/-! ## A192982.P6791434207878715821

`A000045(n)+A001891(n)-n²`
-/

namespace A192982.P6791434207878715821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A001891 n - (n ^ 2 : ℤ))

end

end A192982.P6791434207878715821

namespace A192982

/-- `A000045(n)+A001891(n)-n²` -/
def P6791434207878715821.Spec : Prop :=
  ∀ n, P6791434207878715821.a n = A192982 n

end A192982

/-! ## A192982.P12474465152458386175

`A027181(n)-(A001595(n)+n²)`
-/

namespace A192982.P12474465152458386175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 n - (A001595 n + (n ^ 2 : ℤ))

end

end A192982.P12474465152458386175

namespace A192982

/-- `A027181(n)-(A001595(n)+n²)` -/
def P12474465152458386175.Spec : Prop :=
  ∀ n, P12474465152458386175.a n = A192982 n

end A192982

/-! ## A192982.P1228026473199857323

`A001924(n)+A104161(n)-n²`
-/

namespace A192982.P1228026473199857323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + (A104161 n - (n ^ 2 : ℤ))

end

end A192982.P1228026473199857323

namespace A192982

/-- `A001924(n)+A104161(n)-n²` -/
def P1228026473199857323.Spec : Prop :=
  ∀ n, P1228026473199857323.a n = A192982 n

end A192982

/-! ## A192982.P15924994173549925399

`A064551(n+1)-A000045(n+1)+n`
-/

namespace A192982.P15924994173549925399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064551 (n + 1) - A000045 (n + 1) + (n : ℤ)

end

end A192982.P15924994173549925399

namespace A192982

/-- `A064551(n+1)-A000045(n+1)+n` -/
def P15924994173549925399.Spec : Prop :=
  ∀ n, P15924994173549925399.a n = A192982 n

end A192982

/-! ## A192982.P3421474278634079793

`∑[A000032(n+1)+A000045(n)]-(n+1)²`
-/

namespace A192982.P3421474278634079793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A192982.P3421474278634079793

namespace A192982

/-- `∑[A000032(n+1)+A000045(n)]-(n+1)²` -/
def P3421474278634079793.Spec : Prop :=
  ∀ n, P3421474278634079793.a n = A192982 n

end A192982

/-! ## A192982.P8940073413522211219

`A192953(n)+A192965(n)-A192952(n)`
-/

namespace A192982.P8940073413522211219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192953 n + (A192965 n - A192952 n)

end

end A192982.P8940073413522211219

namespace A192982

/-- `A192953(n)+A192965(n)-A192952(n)` -/
def P8940073413522211219.Spec : Prop :=
  ∀ n, P8940073413522211219.a n = A192982 n

end A192982

/-!
# A192983: a(n) is the number of pairs (g, h) of elements of the symmetric group S_n such that g and h have conjugates that commute.

The programs for A192983, there is no canonical definition to state claims against.
-/

/-! ## A192983.P13967603536858928299

`A000010(∑[∑[A294240(n)]])`
-/

namespace A192983.P13967603536858928299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192983.P13967603536858928299

/-!
# A192984: In repeated iterations of function m->m/3 if m == 0 (mod 3), m->4m+a if 4m+a == 0 (mod 3) where a = 1 or 2, a(n) is maximum value achieved if starting from n.

The programs for A192984, there is no canonical definition to state claims against.
-/

/-! ## A192984.P7206613975158500402

`A066711(2^A281205(n+1))`
-/

namespace A192984.P7206613975158500402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066711 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A281205 (n + 1) : ℤ))).toNat

end

end A192984.P7206613975158500402

/-! ## A192984.P3957045404499938047

`9*A141575(A019576(n+1))`
-/

namespace A192984.P3957045404499938047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A141575 (A019576 (n + 1)).toNat

end

end A192984.P3957045404499938047

/-! ## A192984.P14946441045962712836

`9*A008982(A229694(n+1))`
-/

namespace A192984.P14946441045962712836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A008982 (A229694 (n + 1)).toNat

end

end A192984.P14946441045962712836

/-!
# A192985: E.g.f. satisfies: A(x) = 1 + x*Sum_{n>=0} (A(x)^n - 1)^n/n!.

The programs for A192985, there is no canonical definition to state claims against.
-/

/-! ## A192985.P16255554077126937277

`A004277(A097861(n)*A177447(n))`
-/

namespace A192985.P16255554077126937277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A097861 n * A177447 n).toNat

end

end A192985.P16255554077126937277

/-!
# A192986: Numerator of Sum_{i=0..n-1} B(i)/B(n), where B(i) = A000110(i) are the Bell numbers.

The programs for A192986, there is no canonical definition to state claims against.
-/

/-! ## A192986.P16528954376809650979

`A005001(n)/A000110(n)*A192987(n)`
-/

namespace A192986.P16528954376809650979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005001 n : ℚ) / (A000110 n : ℚ) * (A192987 n : ℚ)

end

end A192986.P16528954376809650979

/-! ## A192986.P360898452889670844

`A005001(n)/gcd(A005001(n+1), A005001(n))`
-/

namespace A192986.P360898452889670844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005001 n : ℚ) / (Int.gcd (A005001 (n + 1)) (A005001 n) : ℚ)

end

end A192986.P360898452889670844

/-! ## A192986.P11487340235558542849

`lcm(A005001(n), A292935(n))/A000110(n)`
-/

namespace A192986.P11487340235558542849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005001 n) (A292935 n) : ℚ) / (A000110 n : ℚ)

end

end A192986.P11487340235558542849

/-!
# A192987: Denominator of Sum_{i=0..n-1} B(i)/B(n), where B(i) = A000110(i) are the Bell numbers.

The programs for A192987, there is no canonical definition to state claims against.
-/

/-! ## A192987.P16195477158861377418

`A000110(n)/gcd(A000110(n), A005001(n))`
-/

namespace A192987.P16195477158861377418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000110 n : ℚ) / (Int.gcd (A000110 n) (A005001 n) : ℚ)

end

end A192987.P16195477158861377418

/-! ## A192987.P2938505494549590881

`A356168(A000110(n))`
-/

namespace A192987.P2938505494549590881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356168 (A000110 n).toNat

end

end A192987.P2938505494549590881

/-! ## A192987.P9742333232405073169

`A356168(A276725(n))`
-/

namespace A192987.P9742333232405073169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356168 (A276725 n).toNat

end

end A192987.P9742333232405073169

/-! ## A192987.P4838011376208753101

`A356168(A276726(n))`
-/

namespace A192987.P4838011376208753101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356168 (A276726 n).toNat

end

end A192987.P4838011376208753101

/-! ## A192987.P17989968330559982392

`A356168(A287280(n))`
-/

namespace A192987.P17989968330559982392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356168 (A287280 n).toNat

end

end A192987.P17989968330559982392

/-!
# A192988: Smallest number whose representation requires n pentagonal numbers with greedy algorithm.

The programs for A192988, the canonical program `A192988.P17088343933268010892` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192988 has offset 1).

The definition of A192988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192988.P17088343933268010892

`ceil(a(n-1)/3)*(3*ceil(a(n-1)/3)-1)/2+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A192988

/-- `ceil(a(n-1)/3)*(3*ceil(a(n-1)/3)-1)/2+a(n-1)` -/
def P17088343933268010892.Spec : Prop :=
  ∀ n, P17088343933268010892.a n = (A192988 (n + 1) : ℚ)

end A192988

/-!
# A192989: Expansion of e.g.f.: exp((1+x)^3 - 1).

The programs for A192989, there is no canonical definition to state claims against.
-/

/-! ## A192989.P15873895879081086130

`A294042(∑[n+3]+n+3)`
-/

namespace A192989.P15873895879081086130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A192989.P15873895879081086130

/-! ## A192989.P16557201677997520963

`record[A294042(abs(A046691(n)))]`
-/

namespace A192989.P16557201677997520963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192989.P16557201677997520963

/-! ## A192989.P8985300674126930199

`record[A294042(A038722(A167499(n)))]`
-/

namespace A192989.P8985300674126930199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192989.P8985300674126930199

/-! ## A192989.P15515067904686393789

`record[A294042(A001105(n)%A000124(n))]`
-/

namespace A192989.P15515067904686393789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294042 (Int.tmod (A001105 n) (A000124 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192989.P15515067904686393789

/-! ## A192989.P9572585305200121495

`record[C(A294042(n), A322280(n+2))]`
-/

namespace A192989.P9572585305200121495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294042 n).toNat (A322280 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192989.P9572585305200121495

/-!
# A192990: Pyramid P(n, t, d) read by planes and rows, for 0 <= t+d <= n: number of ways n triples can sit in a row so that exactly t triples are together and exactly d triples are separated into a couple and a loner.

The programs for A192990, there is no canonical definition to state claims against.
-/

/-! ## A192990.P5303247121078075084

`A057577(n)%A128209(A000110(n))`
-/

namespace A192990.P5303247121078075084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057577 n) (A128209 (A000110 n).toNat)

end

end A192990.P5303247121078075084

/-! ## A192990.P8284830899962848937

`and(A046523(A296770(n)), A213228(n))`
-/

namespace A192990.P8284830899962848937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046523 (A296770 n).toNat) (A213228 n)

end

end A192990.P8284830899962848937

/-! ## A192990.P12373307648916367522

`A116453(n+1)%A217282(p?[A346076(n)])`
-/

namespace A192990.P12373307648916367522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116453 (n + 1)) (A217282 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A192990.P12373307648916367522

/-!
# A192991: Semiprimes times powers of 2.

The programs for A192991, the canonical program `A192991.P6454324773504590281` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192991 has offset 1).

The definition of A192991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192991.P6454324773504590281

`eq[2, A087039((2*n-(n-1))/A006530(2*n-(n-1)))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A192991

/-- `eq[2, A087039((2*n-(n-1))/A006530(2*n-(n-1)))]+1` -/
def P6454324773504590281.Spec : Prop :=
  ∀ n, (P6454324773504590281.a n : ℤ) = A192991 (n + 1)

theorem P6454324773504590281.correct : P6454324773504590281.Spec := by
  intro n
  simp only [A192991, Nat.add_sub_cancel]

end A192991

/-! ## A192991.P17841604868918532532

`eq[2, A087039(A052126(n+1))]+1`
-/

namespace A192991.P17841604868918532532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A052126 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A192991.P17841604868918532532

namespace A192991

/-- `eq[2, A087039(A052126(n+1))]+1` -/
def P17841604868918532532.Spec : Prop :=
  ∀ n, (P17841604868918532532.a n : ℤ) = A192991 (n + 1)

end A192991

/-! ## A192991.P14072198863020416889

`eq[1, val(A181821(n+1), 5)]+1`
-/

namespace A192991.P14072198863020416889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181821 (n + 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A192991.P14072198863020416889

namespace A192991

/-- `eq[1, val(A181821(n+1), 5)]+1` -/
def P14072198863020416889.Spec : Prop :=
  ∀ n, (P14072198863020416889.a n : ℤ) = A192991 (n + 1)

end A192991

/-! ## A192991.P10296659337620616625

`eq[1, val(A181821(A028310(n)), 5)]`
-/

namespace A192991.P10296659337620616625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181821 (A028310 n).toNat).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192991.P10296659337620616625

namespace A192991

/-- `eq[1, val(A181821(A028310(n)), 5)]` -/
def P10296659337620616625.Spec : Prop :=
  ∀ n, (P10296659337620616625.a n : ℤ) = A192991 (n + 1)

end A192991

/-! ## A192991.P11724517945817024280

`A014681(eq[1, val(A181821(n+1), 5)])`
-/

namespace A192991.P11724517945817024280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181821 (n + 1)).toNat 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A192991.P11724517945817024280

namespace A192991

/-- `A014681(eq[1, val(A181821(n+1), 5)])` -/
def P11724517945817024280.Spec : Prop :=
  ∀ n, P11724517945817024280.a n = A192991 (n + 1)

end A192991

/-! ## A192991.P1698074042440408230

`A192992(n+1)+1`
-/

namespace A192991.P1698074042440408230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192992 (n + 1) + 1

end

end A192991.P1698074042440408230

namespace A192991

/-- `A192992(n+1)+1` -/
def P1698074042440408230.Spec : Prop :=
  ∀ n, P1698074042440408230.a n = A192991 (n + 1)

end A192991

/-! ## A192991.P3253121285285030749

`A014681(A192992(n+1))`
-/

namespace A192991.P3253121285285030749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A192992 (n + 1)).toNat

end

end A192991.P3253121285285030749

namespace A192991

/-- `A014681(A192992(n+1))` -/
def P3253121285285030749.Spec : Prop :=
  ∀ n, P3253121285285030749.a n = A192991 (n + 1)

end A192991

/-!
# A192992: Odd n > 1 such that n+1 is a semiprime times a power of two.

The programs for A192992, the canonical program `A192992.P2079071965465918628` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192992 has offset 1).

The definition of A192992 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A192991, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192992.P2079071965465918628

`A192991(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A192992

/-- `A192991(n+1)-1` -/
def P2079071965465918628.Spec : Prop :=
  ∀ n, P2079071965465918628.a n = A192992 (n + 1)

theorem P2079071965465918628.correct : P2079071965465918628.Spec := by
  intro n
  simp only [A192992, Nat.add_sub_cancel]

end A192992

/-! ## A192992.P11191444732515212598

`lt[3, A329647(3*(n+1))]`
-/

namespace A192992.P11191444732515212598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329647 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A192992.P11191444732515212598

namespace A192992

/-- `lt[3, A329647(3*(n+1))]` -/
def P11191444732515212598.Spec : Prop :=
  ∀ n, (P11191444732515212598.a n : ℤ) = A192992 (n + 1)

end A192992

/-! ## A192992.P10683312602444497930

`eq[1, val(A181821(n+1), 5)]`
-/

namespace A192992.P10683312602444497930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181821 (n + 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192992.P10683312602444497930

namespace A192992

/-- `eq[1, val(A181821(n+1), 5)]` -/
def P10683312602444497930.Spec : Prop :=
  ∀ n, (P10683312602444497930.a n : ℤ) = A192992 (n + 1)

end A192992

/-! ## A192992.P4107434481354420849

`lt[A001222(n+1)%3, val(n+1, 2)]`
-/

namespace A192992.P4107434481354420849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A192992.P4107434481354420849

namespace A192992

/-- `lt[A001222(n+1)%3, val(n+1, 2)]` -/
def P4107434481354420849.Spec : Prop :=
  ∀ n, (P4107434481354420849.a n : ℤ) = A192992 (n + 1)

end A192992

/-! ## A192992.P12658939680874208604

`lt[xor(3, A087436(n+1)+1), val(n+1, 2)]`
-/

namespace A192992.P12658939680874208604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A087436 (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A192992.P12658939680874208604

namespace A192992

/-- `lt[xor(3, A087436(n+1)+1), val(n+1, 2)]` -/
def P12658939680874208604.Spec : Prop :=
  ∀ n, (P12658939680874208604.a n : ℤ) = A192992 (n + 1)

end A192992

/-! ## A192992.P11654214951340092026

`A014681(A192991(n+1))`
-/

namespace A192992.P11654214951340092026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A192991 (n + 1)).toNat

end

end A192992.P11654214951340092026

namespace A192992

/-- `A014681(A192991(n+1))` -/
def P11654214951340092026.Spec : Prop :=
  ∀ n, P11654214951340092026.a n = A192992 (n + 1)

end A192992

/-! ## A192992.P10929644572202529986

`record[A192991(A133310(n))-1]`
-/

namespace A192992.P10929644572202529986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192991 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192992.P10929644572202529986

namespace A192992

/-- `record[A192991(A133310(n))-1]` -/
def P10929644572202529986.Spec : Prop :=
  ∀ n, P10929644572202529986.a n = A192992 (n + 1)

end A192992

/-! ## A192992.P14327522784544409397

`A023444(A192991(n+1)+1)`
-/

namespace A192992.P14327522784544409397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A192991 (n + 1) + 1).toNat

end

end A192992.P14327522784544409397

namespace A192992

/-- `A023444(A192991(n+1)+1)` -/
def P14327522784544409397.Spec : Prop :=
  ∀ n, P14327522784544409397.a n = A192992 (n + 1)

end A192992

/-! ## A192992.P4293316924658609829

`A289207(A192991(n+1)+1)`
-/

namespace A192992.P4293316924658609829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A192991 (n + 1) + 1).toNat

end

end A192992.P4293316924658609829

namespace A192992

/-- `A289207(A192991(n+1)+1)` -/
def P4293316924658609829.Spec : Prop :=
  ∀ n, P4293316924658609829.a n = A192992 (n + 1)

end A192992

/-! ## A192992.P6548673979356990073

`eq[2, A087039(A052126(n+1))]`
-/

namespace A192992.P6548673979356990073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A052126 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192992.P6548673979356990073

namespace A192992

/-- `eq[2, A087039(A052126(n+1))]` -/
def P6548673979356990073.Spec : Prop :=
  ∀ n, (P6548673979356990073.a n : ℤ) = A192992 (n + 1)

end A192992

/-!
# A192993: Numbers that are in more than one way the concatenation of the decimal representation of two nonzero squares.

The programs for A192993, there is no canonical definition to state claims against.
-/

/-! ## A192993.P13485983122458725306

`A038670(A387051(n))`
-/

namespace A192993.P13485983122458725306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038670 (A387051 n).toNat

end

end A192993.P13485983122458725306

/-! ## A192993.P4397216802215630354

`A038670(A044922(n+1))`
-/

namespace A192993.P4397216802215630354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038670 (A044922 (n + 1)).toNat

end

end A192993.P4397216802215630354

/-! ## A192993.P15497735846811128142

`A038670(A044923(n+1))`
-/

namespace A192993.P15497735846811128142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038670 (A044923 (n + 1)).toNat

end

end A192993.P15497735846811128142

/-! ## A192993.P14652952528277380561

`A038670(A071669(n+1))`
-/

namespace A192993.P14652952528277380561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038670 (A071669 (n + 1)).toNat

end

end A192993.P14652952528277380561

/-! ## A192993.P9146706999445128469

`A038670(A071670(n+1))`
-/

namespace A192993.P9146706999445128469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038670 (A071670 (n + 1)).toNat

end

end A192993.P9146706999445128469

/-!
# A192995: Number of n X n symmetric 0..1 arrays with each element equal to at least two horizontal or vertical neighbors and with new values 0..1 introduced in lower triangular row major order.

The programs for A192995, there is no canonical definition to state claims against.
-/

/-! ## A192995.P13436559703442037484

`A192840(n+1)+char[A083362(n)]`
-/

namespace A192995.P13436559703442037484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083362 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192840 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192995.P13436559703442037484

/-! ## A192995.P17196167013812948296

`A192840(n+1)+char[A242971(n)]`
-/

namespace A192995.P17196167013812948296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192840 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192995.P17196167013812948296

/-! ## A192995.P3908960749907091557

`A192840(n+1)+A004273(n)%2`
-/

namespace A192995.P3908960749907091557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192840 (n + 1) + Int.tmod (A004273 n) 2

end

end A192995.P3908960749907091557

/-! ## A192995.P9189246689178188621

`A192840(n+1)+char[A008289(n+1)]`
-/

namespace A192995.P9189246689178188621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192840 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192995.P9189246689178188621

/-! ## A192995.P12629716728544480899

`A192840(n+1)+char[A057958(n+1)]`
-/

namespace A192995.P12629716728544480899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057958 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192840 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192995.P12629716728544480899

/-!
# A192996: Number of n X n symmetric 0..2 arrays with each element equal to at least two horizontal or vertical neighbors and with new values 0..2 introduced in lower triangular row major order.

The programs for A192996, there is no canonical definition to state claims against.
-/

/-! ## A192996.P6862159937008287846

`ceil(A211050(n+1)/2)`
-/

namespace A192996.P6862159937008287846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211050 (n + 1) : ℚ) / 2⌉

end

end A192996.P6862159937008287846

/-! ## A192996.P3659660057262092131

`(A211050(n+1)+A057427(n))/2`
-/

namespace A192996.P3659660057262092131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211050 (n + 1) + A057427 n : ℚ) / 2

end

end A192996.P3659660057262092131

/-! ## A192996.P13365365091296469786

`(A211050(n+1)+A001221(A000961(n+1)))/2`
-/

namespace A192996.P13365365091296469786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211050 (n + 1) + A001221 (A000961 (n + 1)).toNat : ℚ) / 2

end

end A192996.P13365365091296469786

/-! ## A192996.P17573808240091187930

`round(A211050(n+1)/A020639(A000040(n+1)+1))`
-/

namespace A192996.P17573808240091187930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A211050 (n + 1) : ℚ) / (A020639 (A000040 (n + 1) + 1).toNat : ℚ))

end

end A192996.P17573808240091187930

/-!
# A192997: Number of n X n symmetric 0..3 arrays with each element equal to at least two horizontal or vertical neighbors and with new values 0..3 introduced in lower triangular row major order.

The programs for A192997, there is no canonical definition to state claims against.
-/

/-! ## A192997.P86101261914505896

`A192996(n+1)+A192842(n+1)`
-/

namespace A192997.P86101261914505896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192996 (n + 1) + A192842 (n + 1)

end

end A192997.P86101261914505896

/-! ## A192997.P863694465660654150

`A192998(n+1)-A192843(n+1)`
-/

namespace A192997.P863694465660654150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192998 (n + 1) - A192843 (n + 1)

end

end A192997.P863694465660654150

/-! ## A192997.P9913134996406898246

`A192999(n+1)-(A192844(n+1)+A192843(n+1))`
-/

namespace A192997.P9913134996406898246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192999 (n + 1) - (A192844 (n + 1) + A192843 (n + 1))

end

end A192997.P9913134996406898246

/-!
# A192998: Number of n X n symmetric 0..4 arrays with each element equal to at least two horizontal or vertical neighbors and with new values 0..4 introduced in lower triangular row major order.

The programs for A192998, there is no canonical definition to state claims against.
-/

/-! ## A192998.P3842077587766815350

`A192997(n+1)+A192843(n+1)`
-/

namespace A192998.P3842077587766815350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192997 (n + 1) + A192843 (n + 1)

end

end A192998.P3842077587766815350

/-! ## A192998.P2391812201683187942

`A192999(n+1)-A192844(n+1)`
-/

namespace A192998.P2391812201683187942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192999 (n + 1) - A192844 (n + 1)

end

end A192998.P2391812201683187942

/-! ## A192998.P6123838341019074460

`A192842(n+1)+A192996(n+1)+A192843(n+1)`
-/

namespace A192998.P6123838341019074460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192842 (n + 1) + (A192996 (n + 1) + A192843 (n + 1))

end

end A192998.P6123838341019074460

/-!
# A192999: Number of n X n symmetric 0..5 arrays with each element equal to at least two horizontal or vertical neighbors and with new values 0..5 introduced in lower triangular row major order.

The programs for A192999, there is no canonical definition to state claims against.
-/

/-! ## A192999.P13602187407854727487

`A192998(n+1)+A192844(n+1)`
-/

namespace A192999.P13602187407854727487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192998 (n + 1) + A192844 (n + 1)

end

end A192999.P13602187407854727487

/-! ## A192999.P2986627874119247025

`A192844(n+1)+A192997(n+1)+A192843(n+1)`
-/

namespace A192999.P2986627874119247025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192844 (n + 1) + (A192997 (n + 1) + A192843 (n + 1))

end

end A192999.P2986627874119247025

/-! ## A192999.P14377632197010052960

`A192844(n+1)+A192842(n+1)+A192996(n+1)+A192843(n+1)`
-/

namespace A192999.P14377632197010052960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192844 (n + 1) + (A192842 (n + 1) + (A192996 (n + 1) + A192843 (n + 1)))

end

end A192999.P14377632197010052960

