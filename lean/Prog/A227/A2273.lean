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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A227300: Rising diagonal sums of triangle of Fibonacci polynomials (rows displayed as centered text).

The programs for A227300, the canonical program `A227300.P17317436002068743853` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227300 has offset 1).

The definition of A227300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227300.P17317436002068743853

`a(n-1)+2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=7, a(5)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227300

/-- `a(n-1)+2*a(n-3)-a(n-6)` -/
def P17317436002068743853.Spec : Prop :=
  ∀ n, P17317436002068743853.a n = A227300 (n + 1)

theorem P17317436002068743853.correct : P17317436002068743853.Spec := by
  intro n
  simp only [A227300, Nat.add_sub_cancel]

end A227300

/-! ## A227300.P9378524796438166858

`A005708(2*n)+A005708(2*n)-A017900(2*n)`
-/

namespace A227300.P9378524796438166858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (2 * n) + (A005708 (2 * n) - A017900 (2 * n))

end

end A227300.P9378524796438166858

namespace A227300

/-- `A005708(2*n)+A005708(2*n)-A017900(2*n)` -/
def P9378524796438166858.Spec : Prop :=
  ∀ n, P9378524796438166858.a n = A227300 (n + 1)

end A227300

/-! ## A227300.P4784673380878645565

`2*A005708(2*n)-A017900(2*n)`
-/

namespace A227300.P4784673380878645565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005708 (2 * n) - A017900 (2 * n)

end

end A227300.P4784673380878645565

namespace A227300

/-- `2*A005708(2*n)-A017900(2*n)` -/
def P4784673380878645565.Spec : Prop :=
  ∀ n, P4784673380878645565.a n = A227300 (n + 1)

end A227300

/-! ## A227300.P10187085920531460955

`Δ[A373639(n+2)]`
-/

namespace A227300.P10187085920531460955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227300.P10187085920531460955

namespace A227300

/-- `Δ[A373639(n+2)]` -/
def P10187085920531460955.Spec : Prop :=
  ∀ n, P10187085920531460955.a n = A227300 (n + 1)

end A227300

/-! ## A227300.P10163955050838289067

`Δ[record[A017900(2*n)]]`
-/

namespace A227300.P10163955050838289067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227300.P10163955050838289067

namespace A227300

/-- `Δ[record[A017900(2*n)]]` -/
def P10163955050838289067.Spec : Prop :=
  ∀ n, P10163955050838289067.a n = A227300 (n + 1)

end A227300

/-! ## A227300.P11755013547745194878

`Δ[A005708(2*(n+2))]`
-/

namespace A227300.P11755013547745194878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227300.P11755013547745194878

namespace A227300

/-- `Δ[A005708(2*(n+2))]` -/
def P11755013547745194878.Spec : Prop :=
  ∀ n, P11755013547745194878.a n = A227300 (n + 1)

end A227300

/-! ## A227300.P11602969059156659445

`Δ[record[A005708(A005131(n))]]`
-/

namespace A227300.P11602969059156659445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A005131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227300.P11602969059156659445

namespace A227300

/-- `Δ[record[A005708(A005131(n))]]` -/
def P11602969059156659445.Spec : Prop :=
  ∀ n, P11602969059156659445.a n = A227300 (n + 1)

end A227300

/-! ## A227300.P5902522965901253619

`Δ[record[A005708(A014681(n))]]`
-/

namespace A227300.P5902522965901253619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A014681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227300.P5902522965901253619

namespace A227300

/-- `Δ[record[A005708(A014681(n))]]` -/
def P5902522965901253619.Spec : Prop :=
  ∀ n, P5902522965901253619.a n = A227300 (n + 1)

end A227300

/-! ## A227300.P1824235567788120539

`Δ[A017900(A103517(n+4))]`
-/

namespace A227300.P1824235567788120539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A103517 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227300.P1824235567788120539

namespace A227300

/-- `Δ[A017900(A103517(n+4))]` -/
def P1824235567788120539.Spec : Prop :=
  ∀ n, P1824235567788120539.a n = A227300 (n + 1)

end A227300

/-! ## A227300.P9250540484247585508

`Δ[record[A005708(A348717(n+1))]]`
-/

namespace A227300.P9250540484247585508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (A348717 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227300.P9250540484247585508

namespace A227300

/-- `Δ[record[A005708(A348717(n+1))]]` -/
def P9250540484247585508.Spec : Prop :=
  ∀ n, P9250540484247585508.a n = A227300 (n + 1)

end A227300

/-! ## A227300.P12051611192351451917

`Δ[Δ[A003413(A004277(n))]]`
-/

namespace A227300.P12051611192351451917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003413 (A004277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227300.P12051611192351451917

namespace A227300

/-- `Δ[Δ[A003413(A004277(n))]]` -/
def P12051611192351451917.Spec : Prop :=
  ∀ n, P12051611192351451917.a n = A227300 (n + 1)

end A227300

/-! ## A227300.P6802409538903640960

`Δ[A275627(2*n)-Δ[A275627(2*n+1)]]`
-/

namespace A227300.P6802409538903640960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275627 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275627 (2 * n) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227300.P6802409538903640960

namespace A227300

/-- `Δ[A275627(2*n)-Δ[A275627(2*n+1)]]` -/
def P6802409538903640960.Spec : Prop :=
  ∀ n, P6802409538903640960.a n = A227300 (n + 1)

end A227300

/-!
# A227302: Numbers m such that m divides sigma(2*m).

The programs for A227302, there is no canonical definition to state claims against.
-/

/-! ## A227302.P15661122811587472476

`A246454(n+2)/2`
-/

namespace A227302.P15661122811587472476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246454 (n + 2) : ℚ) / 2

end

end A227302.P15661122811587472476

/-! ## A227302.P6285812959834860813

`log2(sqrt(2))*A246454(A023443(n)+3)`
-/

namespace A227302.P6285812959834860813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Real.sqrt (2 : ℝ)) * (A246454 (A023443 n + 3).toNat : ℝ)

end

end A227302.P6285812959834860813

/-! ## A227302.P3066888371717622085

`eq[2, A282049(n+1)]+1`
-/

namespace A227302.P3066888371717622085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A227302.P3066888371717622085

/-! ## A227302.P2980028716692229326

`eq[n, gcd(n, a(n-1)*A000203(2*n))]` with `a(0)=1`
-/

namespace A227302.P2980028716692229326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.gcd (n : ℤ) ((f2 (n - 1) : ℤ) * A000203 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227302.P2980028716692229326

/-! ## A227302.P11986771175140453341

`A273943(A216793(n+1))`
-/

namespace A227302.P11986771175140453341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A216793 (n + 1)).toNat

end

end A227302.P11986771175140453341

/-!
# A227303: Numbers k such that k divides sigma(3*k).

The programs for A227303, there is no canonical definition to state claims against.
-/

/-! ## A227303.P7639663392263173844

`lt[A000203(3*(n+1))%(n+1), 1]+1`
-/

namespace A227303.P7639663392263173844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (3 * (n + 1))) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227303.P7639663392263173844

/-! ## A227303.P4875566184463601911

`lt[A001065(3*(n+1))%(n+1), 1]+1`
-/

namespace A227303.P4875566184463601911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (3 * (n + 1))) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A227303.P4875566184463601911

/-! ## A227303.P15133314837564330784

`record[gcd(A009194(n+1), A352898(n+1))]`
-/

namespace A227303.P15133314837564330784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009194 (n + 1)) (A352898 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227303.P15133314837564330784

/-!
# A227305: Numbers n such that sigma(n) - sigma(n-1) divides n.

The programs for A227305, there is no canonical definition to state claims against.
-/

/-! ## A227305.P4537839682763559043

`A227861(A078203(n+1)+A007489(n))`
-/

namespace A227305.P4537839682763559043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227861 (A078203 (n + 1) + A007489 n).toNat

end

end A227305.P4537839682763559043

/-!
# A227306: Numbers k that divide sigma(k) + sigma(k-1).

The programs for A227306, there is no canonical definition to state claims against.
-/

/-! ## A227306.P8536919750464891191

`A070451(A000795(n))+A002110(n)`
-/

namespace A227306.P8536919750464891191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070451 (A000795 n).toNat + A002110 n

end

end A227306.P8536919750464891191

/-!
# A227307: Numbers k that divide sigma(k) - sigma(k-1).

The programs for A227307, there is no canonical definition to state claims against.
-/

/-! ## A227307.P14670280915613308464

`eq[A340793(n+1)%(n+1), A000007(n)]+1`
-/

namespace A227307.P14670280915613308464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340793 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A227307.P14670280915613308464

/-!
# A227308: Given an equilateral triangular grid with side n consisting of n(n+1)/2 points, a(n) is the maximum number of points that can be painted so that, if any 3 of the painted ones are chosen, they do not form an equilateral triangle with sides parallel to the grid.

The programs for A227308, there is no canonical definition to state claims against.
-/

/-! ## A227308.P6234800411694165823

`ceil(2*floor(3^log2(n+1))/3)`
-/

namespace A227308.P6234800411694165823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((⌊(3 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ))⌋ : ℚ) / 3)⌉

end

end A227308.P6234800411694165823

/-! ## A227308.P7575021173812033824

`∑[n+1]-A227116(n+1)`
-/

namespace A227308.P7575021173812033824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A227116 (n + 1)

end

end A227308.P7575021173812033824

/-! ## A227308.P13994921746936110806

`A195311(n+1)+Δ[comp[n^3]]`
-/

namespace A227308.P13994921746936110806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195311 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A227308.P13994921746936110806

/-! ## A227308.P133263756958260413

`A105223(n+1)+∑[floor(sqrt(2*n))]`
-/

namespace A227308.P133263756958260413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A227308.P133263756958260413

/-! ## A227308.P14424587570778927602

`A191291(A273685(n+1))`
-/

namespace A227308.P14424587570778927602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A273685 (n + 1)).toNat

end

end A227308.P14424587570778927602

/-!
# A227309: G.f.: 1/G(0) where G(k) = 1 - q^(k+1) / (1 - q^(k+2)/G(k+1) ).

The programs for A227309, there is no canonical definition to state claims against.
-/

/-! ## A227309.P14997417722375172570

`abs(A291875(n+1))`
-/

namespace A227309.P14997417722375172570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291875 (n + 1)|

end

end A227309.P14997417722375172570

/-! ## A227309.P8165147052339453684

`Δ[-∑[A291875(n)]]`
-/

namespace A227309.P8165147052339453684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291875 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227309.P8165147052339453684

/-! ## A227309.P12434139128269693828

`-A291875(1-char[2]+n)`
-/

namespace A227309.P12434139128269693828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A291875 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A227309.P12434139128269693828

/-! ## A227309.P9569657415804648473

`A000007(n+1)-A291875(n+1)`
-/

namespace A227309.P9569657415804648473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A291875 (n + 1)

end

end A227309.P9569657415804648473

/-! ## A227309.P5528841910033970146

`C(A014675(n), 3)/2-A291875(n+1)`
-/

namespace A227309.P5528841910033970146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A014675 n).toNat 3 : ℚ) / 2 - (A291875 (n + 1) : ℚ)

end

end A227309.P5528841910033970146

/-!
# A227310: G.f.: 1/G(0) where G(k) = 1 + (-q)^(k+1) / (1 - (-q)^(k+1)/G(k+1) ).

The programs for A227310, there is no canonical definition to state claims against.
-/

/-! ## A227310.P18148778354488719139

`abs(A291874(n))`
-/

namespace A227310.P18148778354488719139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A291874 n|

end

end A227310.P18148778354488719139

/-! ## A227310.P11267386038419688859

`A000038(n)-A291874(n)`
-/

namespace A227310.P11267386038419688859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A291874 n

end

end A227310.P11267386038419688859

/-! ## A227310.P254899216079541615

`gcd(A049346(n), A291874(n))`
-/

namespace A227310.P254899216079541615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049346 n) (A291874 n)

end

end A227310.P254899216079541615

/-! ## A227310.P9912982128304028539

`lcm(A020985(n), A291874(n))`
-/

namespace A227310.P9912982128304028539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A291874 n)

end

end A227310.P9912982128304028539

/-! ## A227310.P14954390166976638872

`A153881(n+1)*A291874(n)`
-/

namespace A227310.P14954390166976638872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A291874 n

end

end A227310.P14954390166976638872

/-! ## A227310.P13055346374436360682

`A061397(2*(n+1))-A291874(n)`
-/

namespace A227310.P13055346374436360682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (2 * (n + 1)) - A291874 n

end

end A227310.P13055346374436360682

/-! ## A227310.P7410699898751444451

`A291874(n)*A291874(n²%(n+1))`
-/

namespace A227310.P7410699898751444451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291874 n * A291874 (n ^ 2 % (n + 1))

end

end A227310.P7410699898751444451

/-!
# A227312: L.g.f.: log(1 + 2*Sum_{n>=1} 2^n * x^(n^2)).

The programs for A227312, there is no canonical definition to state claims against.
-/

/-! ## A227312.P6404040956515453407

`A323308(A215271(n))*A366363(n+3)`
-/

namespace A227312.P6404040956515453407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 (A215271 n).toNat * A366363 (n + 3)

end

end A227312.P6404040956515453407

/-!
# A227313: Sum of squared terms in rows of triangle A227311.

The programs for A227313, there is no canonical definition to state claims against.
-/

/-! ## A227313.P15732847979024721192

`A354190(7*A024528(n))`
-/

namespace A227313.P15732847979024721192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354190 (7 * A024528 n).toNat

end

end A227313.P15732847979024721192

/-!
# A227314: Number of prime factors, with multiplicity, of the sum of the first n composite numbers.

The programs for A227314, the canonical program `A227314.P12819489629831864701` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227314 has offset 1).

The definition of A227314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053767, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227314.P12819489629831864701

`A001222(A053767(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A227314

/-- `A001222(A053767(n+1))` -/
def P12819489629831864701.Spec : Prop :=
  ∀ n, P12819489629831864701.a n = A227314 (n + 1)

theorem P12819489629831864701.correct : P12819489629831864701.Spec := by
  intro n
  simp only [A227314, Nat.add_sub_cancel]

end A227314

/-! ## A227314.P9409282775599671677

`∑{e}[∑[lt[1, ∑{e}[n, #]]], #]`
-/

namespace A227314.P9409282775599671677
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A227314.P9409282775599671677

namespace A227314

/-- `∑{e}[∑[lt[1, ∑{e}[n, #]]], #]` -/
def P9409282775599671677.Spec : Prop :=
  ∀ n, (P9409282775599671677.a n : ℤ) = A227314 (n + 1)

end A227314

/-! ## A227314.P5339759407215200179

`∑{e}[∑[A002808(n+1)], #]`
-/

namespace A227314.P5339759407215200179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227314.P5339759407215200179

namespace A227314

/-- `∑{e}[∑[A002808(n+1)], #]` -/
def P5339759407215200179.Spec : Prop :=
  ∀ n, (P5339759407215200179.a n : ℤ) = A227314 (n + 1)

end A227314

/-! ## A227314.P6435911825258903948

`∑{e}[∑[A018252(n+2)], #]`
-/

namespace A227314.P6435911825258903948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227314.P6435911825258903948

namespace A227314

/-- `∑{e}[∑[A018252(n+2)], #]` -/
def P6435911825258903948.Spec : Prop :=
  ∀ n, (P6435911825258903948.a n : ℤ) = A227314 (n + 1)

end A227314

/-! ## A227314.P3891332849034798003

`∑{e}[∑[1-A079696(n+1)], #]`
-/

namespace A227314.P3891332849034798003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079696 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227314.P3891332849034798003

namespace A227314

/-- `∑{e}[∑[1-A079696(n+1)], #]` -/
def P3891332849034798003.Spec : Prop :=
  ∀ n, (P3891332849034798003.a n : ℤ) = A227314 (n + 1)

end A227314

/-! ## A227314.P7406324003352362018

`A001222(∑[A002808(n+1)])`
-/

namespace A227314.P7406324003352362018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227314.P7406324003352362018

namespace A227314

/-- `A001222(∑[A002808(n+1)])` -/
def P7406324003352362018.Spec : Prop :=
  ∀ n, P7406324003352362018.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P4898355478574407593

`A001222(∑[A018252(n+2)])`
-/

namespace A227314.P4898355478574407593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227314.P4898355478574407593

namespace A227314

/-- `A001222(∑[A018252(n+2)])` -/
def P4898355478574407593.Spec : Prop :=
  ∀ n, P4898355478574407593.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P6134527526894596917

`A001222(∑[A065090(n+3)])`
-/

namespace A227314.P6134527526894596917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227314.P6134527526894596917

namespace A227314

/-- `A001222(∑[A065090(n+3)])` -/
def P6134527526894596917.Spec : Prop :=
  ∀ n, P6134527526894596917.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P1413618725237631685

`A001222(∑[A141468(n+3)])`
-/

namespace A227314.P1413618725237631685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227314.P1413618725237631685

namespace A227314

/-- `A001222(∑[A141468(n+3)])` -/
def P1413618725237631685.Spec : Prop :=
  ∀ n, P1413618725237631685.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P171139732537840897

`A001222(∑[lt[1, A032741(n)]])`
-/

namespace A227314.P171139732537840897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227314.P171139732537840897

namespace A227314

/-- `A001222(∑[lt[1, A032741(n)]])` -/
def P171139732537840897.Spec : Prop :=
  ∀ n, P171139732537840897.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P4600771386748892992

`A001222(∑[lt[1, A072491(n)]])`
-/

namespace A227314.P4600771386748892992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227314.P4600771386748892992

namespace A227314

/-- `A001222(∑[lt[1, A072491(n)]])` -/
def P4600771386748892992.Spec : Prop :=
  ∀ n, P4600771386748892992.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P7428738775797543472

`A001222(∑[lt[1, A078898(n)]])`
-/

namespace A227314.P7428738775797543472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227314.P7428738775797543472

namespace A227314

/-- `A001222(∑[lt[1, A078898(n)]])` -/
def P7428738775797543472.Spec : Prop :=
  ∀ n, P7428738775797543472.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P3691435689011381952

`A001222(∑[lt[1, A223135(n)]])`
-/

namespace A227314.P3691435689011381952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227314.P3691435689011381952

namespace A227314

/-- `A001222(∑[lt[1, A223135(n)]])` -/
def P3691435689011381952.Spec : Prop :=
  ∀ n, P3691435689011381952.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P1417120853619894133

`A001222(∑[comp[C(A006530(n+1), n)]])`
-/

namespace A227314.P1417120853619894133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227314.P1417120853619894133

namespace A227314

/-- `A001222(∑[comp[C(A006530(n+1), n)]])` -/
def P1417120853619894133.Spec : Prop :=
  ∀ n, P1417120853619894133.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P3745475382940134693

`A001222(∑[comp[C(A020639(n+1), n)]])`
-/

namespace A227314.P3745475382940134693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227314.P3745475382940134693

namespace A227314

/-- `A001222(∑[comp[C(A020639(n+1), n)]])` -/
def P3745475382940134693.Spec : Prop :=
  ∀ n, P3745475382940134693.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P2813043961434648333

`A001222(∑[lt[1, A001222(n+1)]+1])`
-/

namespace A227314.P2813043961434648333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227314.P2813043961434648333

namespace A227314

/-- `A001222(∑[lt[1, A001222(n+1)]+1])` -/
def P2813043961434648333.Spec : Prop :=
  ∀ n, P2813043961434648333.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P6316045115762198485

`A001222(∑[comp[A000040(n+1)-2]+2])`
-/

namespace A227314.P6316045115762198485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227314.P6316045115762198485

namespace A227314

/-- `A001222(∑[comp[A000040(n+1)-2]+2])` -/
def P6316045115762198485.Spec : Prop :=
  ∀ n, P6316045115762198485.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P11419136041850108510

`A001222(∑[comp[A020639(n+3)-2]+2])`
-/

namespace A227314.P11419136041850108510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227314.P11419136041850108510

namespace A227314

/-- `A001222(∑[comp[A020639(n+3)-2]+2])` -/
def P11419136041850108510.Spec : Prop :=
  ∀ n, P11419136041850108510.a n = A227314 (n + 1)

end A227314

/-! ## A227314.P2334135572465066152

`A001222(∑[comp[A006530(n+5)-2]+2])`
-/

namespace A227314.P2334135572465066152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 5) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227314.P2334135572465066152

namespace A227314

/-- `A001222(∑[comp[A006530(n+5)-2]+2])` -/
def P2334135572465066152.Spec : Prop :=
  ∀ n, P2334135572465066152.a n = A227314 (n + 1)

end A227314

/-!
# A227316: a(n) = n(n+1) if n == 0 or 1 (mod 4), otherwise a(n) = n(n+1)/2.

The programs for A227316, the canonical program `A227316.P17659401522069435075` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227316 has offset 0).

The definition of A227316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227316.P5087459518685664030

`n*(n+1)/4*gcd(n-1, 4)*gcd(n, 4)`
-/

namespace A227316.P5087459518685664030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℚ) / 4 * (Int.gcd ((n : ℤ) - 1) 4 : ℚ) * (Nat.gcd n 4 : ℚ)

end

end A227316.P5087459518685664030

namespace A227316

/-- `n*(n+1)/4*gcd(n-1, 4)*gcd(n, 4)` -/
def P5087459518685664030.Spec : Prop :=
  ∀ n, P5087459518685664030.a n = (A227316 n : ℚ)

end A227316

/-! ## A227316.P9383516080092839535

`(3+(-1)^floor(n/2))*n*(n+1)/4`
-/

namespace A227316.P9383516080092839535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) * (n : ℚ) * (n + 1 : ℚ) / 4

end

end A227316.P9383516080092839535

namespace A227316

/-- `(3+(-1)^floor(n/2))*n*(n+1)/4` -/
def P9383516080092839535.Spec : Prop :=
  ∀ n, P9383516080092839535.a n = (A227316 n : ℚ)

end A227316

/-! ## A227316.P17659401522069435075

`A130658(n+2)*A000217(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227316

/-- `A130658(n+2)*A000217(n)` -/
def P17659401522069435075.Spec : Prop :=
  ∀ n, P17659401522069435075.a n = A227316 n

theorem P17659401522069435075.correct : P17659401522069435075.Spec := by
  intro n
  simp only [A227316]

end A227316

/-! ## A227316.P15319346995909020841

`A177002(n+2)*A064038(n+1)`
-/

namespace A227316.P15319346995909020841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177002 (n + 2) * A064038 (n + 1)

end

end A227316.P15319346995909020841

namespace A227316

/-- `A177002(n+2)*A064038(n+1)` -/
def P15319346995909020841.Spec : Prop :=
  ∀ n, P15319346995909020841.a n = A227316 n

end A227316

/-! ## A227316.P9416581248887724932

`gcd(2, C(n, 2))*∑[n]`
-/

namespace A227316.P9416581248887724932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose n 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227316.P9416581248887724932

namespace A227316

/-- `gcd(2, C(n, 2))*∑[n]` -/
def P9416581248887724932.Spec : Prop :=
  ∀ n, (P9416581248887724932.a n : ℤ) = A227316 n

end A227316

/-! ## A227316.P5165214105559767861

`and(2, n+2)!*∑[n]`
-/

namespace A227316.P5165214105559767861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n + 2)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227316.P5165214105559767861

namespace A227316

/-- `and(2, n+2)!*∑[n]` -/
def P5165214105559767861.Spec : Prop :=
  ∀ n, (P5165214105559767861.a n : ℤ) = A227316 n

end A227316

/-! ## A227316.P1139737079853854325

`(n+1)*n/and(2, n)!`
-/

namespace A227316.P1139737079853854325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) / (Nat.factorial (Nat.land 2 n) : ℚ))

end

end A227316.P1139737079853854325

namespace A227316

/-- `(n+1)*n/and(2, n)!` -/
def P1139737079853854325.Spec : Prop :=
  ∀ n, P1139737079853854325.a n = (A227316 n : ℚ)

end A227316

/-! ## A227316.P3253937157371909619

`(and(1, ∑[n+1])+1)*∑[n]`
-/

namespace A227316.P3253937157371909619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A227316.P3253937157371909619

namespace A227316

/-- `(and(1, ∑[n+1])+1)*∑[n]` -/
def P3253937157371909619.Spec : Prop :=
  ∀ n, (P3253937157371909619.a n : ℤ) = A227316 n

end A227316

/-! ## A227316.P3529759058170806608

`n*lcm(2, ∑[n+1])/(n+2)`
-/

namespace A227316.P3529759058170806608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 2 : ℚ))

end

end A227316.P3529759058170806608

namespace A227316

/-- `n*lcm(2, ∑[n+1])/(n+2)` -/
def P3529759058170806608.Spec : Prop :=
  ∀ n, P3529759058170806608.a n = (A227316 n : ℚ)

end A227316

/-! ## A227316.P10868688247727357531

`2*n*(n+1)/(and(2, n)+2)`
-/

namespace A227316.P10868688247727357531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((n + 1 : ℚ) / (Nat.land 2 n + 2 : ℚ))

end

end A227316.P10868688247727357531

namespace A227316

/-- `2*n*(n+1)/(and(2, n)+2)` -/
def P10868688247727357531.Spec : Prop :=
  ∀ n, P10868688247727357531.a n = (A227316 n : ℚ)

end A227316

/-! ## A227316.P11344602398039538842

`gcd(n²+n, A006011(n))`
-/

namespace A227316.P11344602398039538842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + n : ℤ) (A006011 n)

end

end A227316.P11344602398039538842

namespace A227316

/-- `gcd(n²+n, A006011(n))` -/
def P11344602398039538842.Spec : Prop :=
  ∀ n, (P11344602398039538842.a n : ℤ) = A227316 n

end A227316

/-! ## A227316.P14292094821584986080

`(n+1)/2*A227380(n)`
-/

namespace A227316.P14292094821584986080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A227380 n : ℚ)

end

end A227316.P14292094821584986080

namespace A227316

/-- `(n+1)/2*A227380(n)` -/
def P14292094821584986080.Spec : Prop :=
  ∀ n, P14292094821584986080.a n = (A227316 n : ℚ)

theorem P14292094821584986080.correct : P14292094821584986080.Spec := by
  intro n
  simp only [A227316, Nat.add_sub_cancel, A227316.P14292094821584986080.a, A227316.P17659401522069435075.a, A000217, A000217.P10269402890581615239.a, A130658, A130658.P17554939015796868672.a, A227380, A227380.P17588488786740241967.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A227316

/-! ## A227316.P4543331050883667740

`(n+1)*n/A130658(n)`
-/

namespace A227316.P4543331050883667740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) / (A130658 n : ℚ))

end

end A227316.P4543331050883667740

namespace A227316

/-- `(n+1)*n/A130658(n)` -/
def P4543331050883667740.Spec : Prop :=
  ∀ n, P4543331050883667740.a n = (A227316 n : ℚ)

end A227316

/-! ## A227316.P433736118246027201

`gcd(A006011(n), A196292(n))`
-/

namespace A227316.P433736118246027201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006011 n) (A196292 n)

end

end A227316.P433736118246027201

namespace A227316

/-- `gcd(A006011(n), A196292(n))` -/
def P433736118246027201.Spec : Prop :=
  ∀ n, (P433736118246027201.a n : ℤ) = A227316 n

end A227316

/-! ## A227316.P3581725881811074448

`gcd(A055112(n), A213827(n))`
-/

namespace A227316.P3581725881811074448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055112 n) (A213827 n)

end

end A227316.P3581725881811074448

namespace A227316

/-- `gcd(A055112(n), A213827(n))` -/
def P3581725881811074448.Spec : Prop :=
  ∀ n, (P3581725881811074448.a n : ℤ) = A227316 n

end A227316

/-! ## A227316.P14429966997271334133

`A186646(n+1)*A283971(n)`
-/

namespace A227316.P14429966997271334133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (n + 1) * A283971 n

end

end A227316.P14429966997271334133

namespace A227316

/-- `A186646(n+1)*A283971(n)` -/
def P14429966997271334133.Spec : Prop :=
  ∀ n, P14429966997271334133.a n = A227316 n

end A227316

/-! ## A227316.P9004504991492361557

`gcd(A163756(n), A352405(n+1))`
-/

namespace A227316.P9004504991492361557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163756 n) (A352405 (n + 1))

end

end A227316.P9004504991492361557

namespace A227316

/-- `gcd(A163756(n), A352405(n+1))` -/
def P9004504991492361557.Spec : Prop :=
  ∀ n, (P9004504991492361557.a n : ℤ) = A227316 n

end A227316

/-! ## A227316.P16637469829056648759

`A078636(n+1)/A139131(n+1)*A000217(n)`
-/

namespace A227316.P16637469829056648759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078636 (n + 1) : ℚ) / (A139131 (n + 1) : ℚ) * (A000217 n : ℚ)

end

end A227316.P16637469829056648759

namespace A227316

/-- `A078636(n+1)/A139131(n+1)*A000217(n)` -/
def P16637469829056648759.Spec : Prop :=
  ∀ n, P16637469829056648759.a n = (A227316 n : ℚ)

end A227316

/-! ## A227316.P2312957984327744489

`∑[n]*A014695(n+1)`
-/

namespace A227316.P2312957984327744489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A014695 (n + 1)

end

end A227316.P2312957984327744489

namespace A227316

/-- `∑[n]*A014695(n+1)` -/
def P2312957984327744489.Spec : Prop :=
  ∀ n, P2312957984327744489.a n = A227316 n

end A227316

/-! ## A227316.P8530124438954532145

`A014695(n+1)*A026741(n+1)*A026741(n)`
-/

namespace A227316.P8530124438954532145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (n + 1) * A026741 (n + 1) * A026741 n

end

end A227316.P8530124438954532145

namespace A227316

/-- `A014695(n+1)*A026741(n+1)*A026741(n)` -/
def P8530124438954532145.Spec : Prop :=
  ∀ n, P8530124438954532145.a n = A227316 n

end A227316

/-!
# A227317: Expansion of psi(x)^6 * phi(-x)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A227317, there is no canonical definition to state claims against.
-/

/-! ## A227317.P17060776855887738306

`-(A215600(2*n+1)/8)`
-/

namespace A227317.P17060776855887738306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A215600 (2 * n + 1) : ℚ) / 8)

end

end A227317.P17060776855887738306

/-! ## A227317.P1930060018561298510

`A228072(2*n+1)/8`
-/

namespace A227317.P1930060018561298510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228072 (2 * n + 1) : ℚ) / 8

end

end A227317.P1930060018561298510

/-!
# A227320: Binary XOR of proper divisors of n.

The programs for A227320, there is no canonical definition to state claims against.
-/

/-! ## A227320.P2819978160310506349

`xor(A001065(n+1)-A318505(n+1), A318504(n+1))`
-/

namespace A227320.P2819978160310506349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001065 (n + 1) - A318505 (n + 1)) (A318504 (n + 1))

end

end A227320.P2819978160310506349

/-! ## A227320.P2576162679838929634

`xor(A032742(n+1)%A005100(n+1), A318504(n+1))`
-/

namespace A227320.P2576162679838929634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A032742 (n + 1)) (A005100 (n + 1))) (A318504 (n + 1))

end

end A227320.P2576162679838929634

/-! ## A227320.P983715250559835230

`xor(A004526(A286472(n+1)), A318504(n+1))`
-/

namespace A227320.P983715250559835230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 (A286472 (n + 1)).toNat) (A318504 (n + 1))

end

end A227320.P983715250559835230

/-! ## A227320.P6550114910587056261

`xor(n+1, A178910(n+1))`
-/

namespace A227320.P6550114910587056261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A178910 (n + 1))

end

end A227320.P6550114910587056261

/-! ## A227320.P342126672173157921

`xor(n+1, A028310(xor(A106409(n+1), A318504(n+1))))`
-/

namespace A227320.P342126672173157921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A028310 (Int.xor (A106409 (n + 1)) (A318504 (n + 1))).toNat)

end

end A227320.P342126672173157921

/-!
# A227321: a(n) is the least r>=3 such that the difference between the nearest r-gonal number >= n and n is an r-gonal number.

The programs for A227321, there is no canonical definition to state claims against.
-/

/-! ## A227321.P6545402321213532292

`A058064(A114188(n))+3`
-/

namespace A227321.P6545402321213532292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058064 (A114188 n).toNat + 3

end

end A227321.P6545402321213532292

/-! ## A227321.P5552031185421318112

`4-(A304042(n)-A058064(A114188(n)))`
-/

namespace A227321.P5552031185421318112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (A304042 n - A058064 (A114188 n).toNat)

end

end A227321.P5552031185421318112

/-!
# A227323: Prime(k) such that each of the three preceding and also each of the three following primes are twin primes.

The programs for A227323, there is no canonical definition to state claims against.
-/

/-! ## A227323.P16463290611900713686

`∪[A069456(n+1), A227063(n+1)]`
-/

namespace A227323.P16463290611900713686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227323.P16463290611900713686

/-!
# A227324: Result of changing both the prime indices and the exponents in the prime factorization of n: increment odd values, decrement even values.

The programs for A227324, there is no canonical definition to state claims against.
-/

/-! ## A227324.P3794191087640226773

`A061898(A007913(n+1))*A061898(A350390(n+1))`
-/

namespace A227324.P3794191087640226773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A007913 (n + 1)).toNat * A061898 (A350390 (n + 1)).toNat

end

end A227324.P3794191087640226773

/-! ## A227324.P15740615485104098034

`A061898(n+1)²/A061898(A011264(n+1))`
-/

namespace A227324.P15740615485104098034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061898 (n + 1) ^ 2 : ℚ) / (A061898 (A011264 (n + 1)).toNat : ℚ)

end

end A227324.P15740615485104098034

/-! ## A227324.P8670662590460999496

`A011262(A061898(n+1))`
-/

namespace A227324.P8670662590460999496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A061898 (n + 1)).toNat

end

end A227324.P8670662590460999496

/-! ## A227324.P2404902905230164884

`A061898((n+1)²/A011264(n+1))`
-/

namespace A227324.P2404902905230164884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A011264 (n + 1) : ℚ))).toNat

end

end A227324.P2404902905230164884

/-! ## A227324.P10605146307689430293

`A061898((n+1)/∏{p}[n+1, #]*A055491(n+1))`
-/

namespace A227324.P10605146307689430293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A055491 (n + 1) : ℚ))).toNat

end

end A227324.P10605146307689430293

/-! ## A227324.P13036736280613189533

`A061898(A003557(n+1)*A055491(n+1))`
-/

namespace A227324.P13036736280613189533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A003557 (n + 1) * A055491 (n + 1)).toNat

end

end A227324.P13036736280613189533

/-! ## A227324.P16628347084647250261

`A061898(A007913(n+1)*A350390(n+1))`
-/

namespace A227324.P16628347084647250261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A007913 (n + 1) * A350390 (n + 1)).toNat

end

end A227324.P16628347084647250261

/-! ## A227324.P7166610372205422096

`A061898(A053143(n+1)/A336643(n+1))`
-/

namespace A227324.P7166610372205422096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (SequenceMachineLib.roundAway ((A053143 (n + 1) : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A227324.P7166610372205422096

/-!
# A227325: a(n) = A000272(n+1) * A000984(n).

The programs for A227325, the canonical program `A227325.P485168548293519665` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227325 has offset 0).

The definition of A227325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227325.P485168548293519665

`(n+1)^(n-1)*C(2*n, n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227325

/-- `(n+1)^(n-1)*C(2*n, n)` -/
def P485168548293519665.Spec : Prop :=
  ∀ n, P485168548293519665.a n = (A227325 n : ℚ)

end A227325

/-! ## A227325.P8436572527928438823

`A000272(n+1)*A000984(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A227325.P8436572527928438823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) * A000984 n

end

end A227325.P8436572527928438823

namespace A227325

/-- `A000272(n+1)*A000984(n)` -/
def P8436572527928438823.Spec : Prop :=
  ∀ n, P8436572527928438823.a n = A227325 n

end A227325

/-! ## A227325.P12930926452224975289

`(n+1)^n*A000108(n)`
-/

namespace A227325.P12930926452224975289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) * A000108 n

end

end A227325.P12930926452224975289

namespace A227325

/-- `(n+1)^n*A000108(n)` -/
def P12930926452224975289.Spec : Prop :=
  ∀ n, P12930926452224975289.a n = A227325 n

end A227325

/-! ## A227325.P635768363099883691

`abs((n+1)^n*A168491(n))`
-/

namespace A227325.P635768363099883691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ n : ℤ) * A168491 n|

end

end A227325.P635768363099883691

namespace A227325

/-- `abs((n+1)^n*A168491(n))` -/
def P635768363099883691.Spec : Prop :=
  ∀ n, P635768363099883691.a n = A227325 n

end A227325

/-! ## A227325.P10071822599575861881

`(n+1)^n*A008313(n²)`
-/

namespace A227325.P10071822599575861881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) * A008313 (n ^ 2)

end

end A227325.P10071822599575861881

namespace A227325

/-- `(n+1)^n*A008313(n²)` -/
def P10071822599575861881.Spec : Prop :=
  ∀ n, P10071822599575861881.a n = A227325 n

end A227325

/-!
# A227326: a(2n) = 2a(n)+2^(2n), a(2n+1) = 2^(2n+1), a(0)=0.

The programs for A227326, the canonical program `A227326.P6185310335424459137` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227326 has offset 0).

The definition of A227326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227326.P6185310335424459137

`∑{d}[n, #*A306156(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A227326

/-- `∑{d}[n, #*A306156(#)]` -/
def P6185310335424459137.Spec : Prop :=
  ∀ n, P6185310335424459137.a n = A227326 n

theorem P6185310335424459137.correct : P6185310335424459137.Spec := by
  intro n
  simp only [A227326]

end A227326

/-! ## A227326.P3527562316032151242

`A005843(a(∑[n]%n))+2^n` with `a(0)=0`
-/

namespace A227326.P3527562316032151242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005843 (a ((∑ j ∈ Finset.range (n + 1), f1 j) % n)).toNat + (2 ^ n : ℤ)

end

end A227326.P3527562316032151242

namespace A227326

/-- `A005843(a(∑[n]%n))+2^n` -/
def P3527562316032151242.Spec : Prop :=
  ∀ n, P3527562316032151242.a n = A227326 n

end A227326

/-! ## A227326.P17928642046947628890

`A027193(n)*A098820(A303770(n))`
-/

namespace A227326.P17928642046947628890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n * A098820 (A303770 n).toNat

end

end A227326.P17928642046947628890

namespace A227326

/-- `A027193(n)*A098820(A303770(n))` -/
def P17928642046947628890.Spec : Prop :=
  ∀ n, P17928642046947628890.a n = A227326 n

end A227326

/-! ## A227326.P14183988696342316179

`A227428(A128548(n+1)+A051945(n))`
-/

namespace A227326.P14183988696342316179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A128548 (n + 1) + A051945 n).toNat

end

end A227326.P14183988696342316179

namespace A227326

/-- `A227428(A128548(n+1)+A051945(n))` -/
def P14183988696342316179.Spec : Prop :=
  ∀ n, P14183988696342316179.a n = A227326 n

end A227326

/-!
# A227327: Number of non-equivalent ways to choose two points in an equilateral triangle grid of side n.

The programs for A227327, the canonical program `A227327.P13060071104446160578` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227327 has offset 1).

The definition of A227327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227327.P15947943428106435809

`∑[A280186(n)+∑[n]]`
-/

namespace A227327.P15947943428106435809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P15947943428106435809

namespace A227327

/-- `∑[A280186(n)+∑[n]]` -/
def P15947943428106435809.Spec : Prop :=
  ∀ n, P15947943428106435809.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P13060071104446160578

`∑[∑[∑[A026741(n-a(n-1))]]]` with `a(0)=0`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A227327

/-- `∑[∑[∑[A026741(n-a(n-1))]]]` -/
def P13060071104446160578.Spec : Prop :=
  ∀ n, P13060071104446160578.a n = A227327 (n + 1)

theorem P13060071104446160578.correct : P13060071104446160578.Spec := by
  intro n
  simp only [A227327, Nat.add_sub_cancel]

end A227327

/-! ## A227327.P15760550410024460496

`A257055(n)-A212565(n)`
-/

namespace A227327.P15760550410024460496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n - A212565 n

end

end A227327.P15760550410024460496

namespace A227327

/-- `A257055(n)-A212565(n)` -/
def P15760550410024460496.Spec : Prop :=
  ∀ n, P15760550410024460496.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P2615446505668625065

`A350050(n)+A210433(n+1)`
-/

namespace A227327.P2615446505668625065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350050 n + A210433 (n + 1)

end

end A227327.P2615446505668625065

namespace A227327

/-- `A350050(n)+A210433(n+1)` -/
def P2615446505668625065.Spec : Prop :=
  ∀ n, P2615446505668625065.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P10145421342021867833

`∑[∑[A110660(n)+A000035(n)]]`
-/

namespace A227327.P10145421342021867833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n + A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P10145421342021867833

namespace A227327

/-- `∑[∑[A110660(n)+A000035(n)]]` -/
def P10145421342021867833.Spec : Prop :=
  ∀ n, P10145421342021867833.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P4914224775779645675

`∑[∑[A182568(A109613(n))+n]]`
-/

namespace A227327.P4914224775779645675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (A109613 n).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P4914224775779645675

namespace A227327

/-- `∑[∑[A182568(A109613(n))+n]]` -/
def P4914224775779645675.Spec : Prop :=
  ∀ n, P4914224775779645675.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P16626098425213881952

`∑[A005993(n)-A004652(n+1)]`
-/

namespace A227327.P16626098425213881952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n - A004652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P16626098425213881952

namespace A227327

/-- `∑[A005993(n)-A004652(n+1)]` -/
def P16626098425213881952.Spec : Prop :=
  ∀ n, P16626098425213881952.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P5760933696199828096

`(∑[A059329(n)]-A008619(n))/2`
-/

namespace A227327.P5760933696199828096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059329 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A008619 n : ℤ) : ℚ) / 2

end

end A227327.P5760933696199828096

namespace A227327

/-- `(∑[A059329(n)]-A008619(n))/2` -/
def P5760933696199828096.Spec : Prop :=
  ∀ n, P5760933696199828096.a n = (A227327 (n + 1) : ℚ)

end A227327

/-! ## A227327.P344437374490422624

`∑[∑[A110654(n)+A004526(n)²]]`
-/

namespace A227327.P344437374490422624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A004526 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P344437374490422624

namespace A227327

/-- `∑[∑[A110654(n)+A004526(n)²]]` -/
def P344437374490422624.Spec : Prop :=
  ∀ n, P344437374490422624.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P17863627018163782313

`∑[A142150(n)+∑[A001057(n)²]]`
-/

namespace A227327.P17863627018163782313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P17863627018163782313

namespace A227327

/-- `∑[A142150(n)+∑[A001057(n)²]]` -/
def P17863627018163782313.Spec : Prop :=
  ∀ n, P17863627018163782313.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P11367784340298397124

`∑[A142150(n)+∑[A110654(n)²]]`
-/

namespace A227327.P11367784340298397124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P11367784340298397124

namespace A227327

/-- `∑[A142150(n)+∑[A110654(n)²]]` -/
def P11367784340298397124.Spec : Prop :=
  ∀ n, P11367784340298397124.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P8829383822038618862

`∑[∑[A008619(n)²-A028242(n)]]`
-/

namespace A227327.P8829383822038618862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 - A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P8829383822038618862

namespace A227327

/-- `∑[∑[A008619(n)²-A028242(n)]]` -/
def P8829383822038618862.Spec : Prop :=
  ∀ n, P8829383822038618862.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P2695729347510206383

`∑[∑[A028242(n)²]]-A008805(n)`
-/

namespace A227327.P2695729347510206383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008805 n

end

end A227327.P2695729347510206383

namespace A227327

/-- `∑[∑[A028242(n)²]]-A008805(n)` -/
def P2695729347510206383.Spec : Prop :=
  ∀ n, P2695729347510206383.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P17511262740956860725

`A032091(n+6)-A026035(n+2)`
-/

namespace A227327.P17511262740956860725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 6) - A026035 (n + 2)

end

end A227327.P17511262740956860725

namespace A227327

/-- `A032091(n+6)-A026035(n+2)` -/
def P17511262740956860725.Spec : Prop :=
  ∀ n, P17511262740956860725.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P13520544335245233754

`∑[∑[A130404(n+1)]-A130404(n+1)]`
-/

namespace A227327.P13520544335245233754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A130404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P13520544335245233754

namespace A227327

/-- `∑[∑[A130404(n+1)]-A130404(n+1)]` -/
def P13520544335245233754.Spec : Prop :=
  ∀ n, P13520544335245233754.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P7973641847848297806

`∑[∑[A004526(n+1)+A004526(n)²]]`
-/

namespace A227327.P7973641847848297806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + A004526 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P7973641847848297806

namespace A227327

/-- `∑[∑[A004526(n+1)+A004526(n)²]]` -/
def P7973641847848297806.Spec : Prop :=
  ∀ n, P7973641847848297806.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P14128344186357532268

`A000332(n+1)+A001296(n)-A212564(n+1)`
-/

namespace A227327.P14128344186357532268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + (A001296 n - A212564 (n + 1))

end

end A227327.P14128344186357532268

namespace A227327

/-- `A000332(n+1)+A001296(n)-A212564(n+1)` -/
def P14128344186357532268.Spec : Prop :=
  ∀ n, P14128344186357532268.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P3361625462826203115

`∑[∑[A057979(n+1)+A008797(2*n+1)]]`
-/

namespace A227327.P3361625462826203115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (n + 1) + A008797 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P3361625462826203115

namespace A227327

/-- `∑[∑[A057979(n+1)+A008797(2*n+1)]]` -/
def P3361625462826203115.Spec : Prop :=
  ∀ n, P3361625462826203115.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P7919154051854659171

`∑[∑[A028391(A087279(n+1))]]`
-/

namespace A227327.P7919154051854659171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A087279 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P7919154051854659171

namespace A227327

/-- `∑[∑[A028391(A087279(n+1))]]` -/
def P7919154051854659171.Spec : Prop :=
  ∀ n, P7919154051854659171.a n = A227327 (n + 1)

end A227327

/-! ## A227327.P17287515195814182672

`∑[A133610(∑[A063196(n+1)]+1)]`
-/

namespace A227327.P17287515195814182672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133610 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227327.P17287515195814182672

namespace A227327

/-- `∑[A133610(∑[A063196(n+1)]+1)]` -/
def P17287515195814182672.Spec : Prop :=
  ∀ n, P17287515195814182672.a n = A227327 (n + 1)

end A227327

/-!
# A227328: Number of n X n 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X (n+1) binary array having two adjacent 1's and two adjacent 0's, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227328, there is no canonical definition to state claims against.
-/

/-! ## A227328.P16113989519841881203

`A227333(∑[4*n]+1)`
-/

namespace A227328.P16113989519841881203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227328.P16113989519841881203

/-! ## A227328.P3717047283166399663

`and(-1, A227333(A001844(n)))`
-/

namespace A227328.P3717047283166399663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A227333 (A001844 n).toNat)

end

end A227328.P3717047283166399663

/-! ## A227328.P2644703540879111078

`record[A003982(n)*A227333(n+1)]`
-/

namespace A227328.P2644703540879111078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A227333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227328.P2644703540879111078

/-!
# A227329: Number of n X 2 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 3 binary array having two adjacent 1's and two adjacent 0's, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227329, there is no canonical definition to state claims against.
-/

/-! ## A227329.P2470021837824581630

`A227333(∑[n+1]+2)`
-/

namespace A227329.P2470021837824581630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A227329.P2470021837824581630

/-! ## A227329.P1565484156359221158

`record[A227333(n+3)/A227338(n)]`
-/

namespace A227329.P1565484156359221158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227333 (n + 3) : ℚ) / (A227338 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227329.P1565484156359221158

/-! ## A227329.P17900518266520926913

`record[gcd(A002262(n), A227333(n+2))]`
-/

namespace A227329.P17900518266520926913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A227333 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227329.P17900518266520926913

/-! ## A227329.P3669994842381314455

`record[A227333(n+2)/A265707(n+1)]`
-/

namespace A227329.P3669994842381314455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227333 (n + 2) : ℚ) / (A265707 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227329.P3669994842381314455

/-! ## A227329.P3690347411489317247

`record[A227333(abs(A201163(n)))]`
-/

namespace A227329.P3690347411489317247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227329.P3690347411489317247

/-!
# A227330: Number of n X 3 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 4 binary array having two adjacent 1's and two adjacent 0's, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227330, there is no canonical definition to state claims against.
-/

/-! ## A227330.P13695813485557475258

`A227333(∑[n+2]+4)`
-/

namespace A227330.P13695813485557475258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227330.P13695813485557475258

/-! ## A227330.P16402264764383997590

`record[A227333(n+4)/A227338(n)]`
-/

namespace A227330.P16402264764383997590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227333 (n + 4) : ℚ) / (A227338 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227330.P16402264764383997590

/-! ## A227330.P10037841375235567819

`lcm(or(n, -1), A227333(A167614(n+1)))`
-/

namespace A227330.P10037841375235567819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) (-1)) (A227333 (A167614 (n + 1)).toNat)

end

end A227330.P10037841375235567819

/-! ## A227330.P15760311183403553282

`A227333(A167614(n+1))+A185294(n)`
-/

namespace A227330.P15760311183403553282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (A167614 (n + 1)).toNat + A185294 n

end

end A227330.P15760311183403553282

/-! ## A227330.P1469035594622170201

`A227333(A167614(n+1))*A322494(n)`
-/

namespace A227330.P1469035594622170201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (A167614 (n + 1)).toNat * A322494 n

end

end A227330.P1469035594622170201

/-!
# A227331: Number of n X 4 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 5 binary array having two adjacent 1's and two adjacent 0's, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227331, there is no canonical definition to state claims against.
-/

/-! ## A227331.P3981501627104818684

`A227333(∑[n+3]+7)`
-/

namespace A227331.P3981501627104818684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A227331.P3981501627104818684

/-! ## A227331.P3786535906035464051

`A227333(A055998(n+2))-A000122(3*n+2)`
-/

namespace A227331.P3786535906035464051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (A055998 (n + 2)).toNat - A000122 (3 * n + 2)

end

end A227331.P3786535906035464051

/-!
# A227332: Number of n X 5 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 6 binary array having two adjacent 1's and two adjacent 0's, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227332, there is no canonical definition to state claims against.
-/

/-! ## A227332.P4517414032491162000

`A227333(A167499(n+3))`
-/

namespace A227332.P4517414032491162000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (A167499 (n + 3)).toNat

end

end A227332.P4517414032491162000

/-! ## A227332.P8766256272015844659

`A227333(A155212(n)+13)`
-/

namespace A227332.P8766256272015844659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (A155212 n + 13).toNat

end

end A227332.P8766256272015844659

/-! ## A227332.P5915432303804137677

`A227333(A056000(n)+15)`
-/

namespace A227332.P5915432303804137677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (A056000 n + 15).toNat

end

end A227332.P5915432303804137677

/-! ## A227332.P7439830095823430117

`A227333(eq[7, A066657(n)])`
-/

namespace A227332.P7439830095823430117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227332.P7439830095823430117

/-! ## A227332.P3553208097291979105

`A227333(A167614(n+3)+2)`
-/

namespace A227332.P3553208097291979105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227333 (A167614 (n + 3) + 2).toNat

end

end A227332.P3553208097291979105

/-!
# A227333: T(n,k) = Number of n X k 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X (k+1) binary array having two adjacent 1's and two adjacent 0's, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227333, there is no canonical definition to state claims against.
-/

/-! ## A227333.P6968571498820066838

`A220308(n+1)+A086876(A027915(n))`
-/

namespace A227333.P6968571498820066838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220308 (n + 1) + A086876 (A027915 n).toNat

end

end A227333.P6968571498820066838

/-! ## A227333.P15358208421095824617

`A278363(n+1)+A178042(A327591(n))`
-/

namespace A227333.P15358208421095824617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (n + 1) + A178042 (A327591 n).toNat

end

end A227333.P15358208421095824617

/-! ## A227333.P11640605453622104546

`A282996(n+1)+A227761(A277820(3*n+2))`
-/

namespace A227333.P11640605453622104546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282996 (n + 1) + A227761 (A277820 (3 * n + 2)).toNat

end

end A227333.P11640605453622104546

/-!
# A227334: Exponent of the group of the Gaussian integers in a reduced system modulo n.

The programs for A227334, there is no canonical definition to state claims against.
-/

/-! ## A227334.P4456818555548932659

`A391111(A047808(n+1))`
-/

namespace A227334.P4456818555548932659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391111 (A047808 (n + 1)).toNat

end

end A227334.P4456818555548932659

/-!
# A227335: The gaps after these primes are the first n positive even integers, each used exactly once.

The programs for A227335, there is no canonical definition to state claims against.
-/

/-! ## A227335.P14036992824820289279

`A199217(A143977(floor(sqrt((n+1)^6+3))))`
-/

namespace A227335.P14036992824820289279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199217 (A143977 (Nat.sqrt ((n + 1) ^ 6 + 3))).toNat

end

end A227335.P14036992824820289279

/-!
# A227339: Fixed point of the morphism 1 -> 131, 2 -> 312, 3 -> 2.

The programs for A227339, the canonical program `A227339.P10028289300210348685` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227339 has offset 1).

The definition of A227339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227339.P10028289300210348685

`xor(1, Δ[A064437(A008619(n))])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227339

/-- `xor(1, Δ[A064437(A008619(n))])` -/
def P10028289300210348685.Spec : Prop :=
  ∀ n, P10028289300210348685.a n = A227339 (n + 1)

theorem P10028289300210348685.correct : P10028289300210348685.Spec := by
  intro n
  simp only [A227339, Nat.add_sub_cancel]

end A227339

/-!
# A227340: Primes of the form p^2 + q^2 - 1 where p and q are consecutive primes.

The programs for A227340, there is no canonical definition to state claims against.
-/

/-! ## A227340.P13793774744206642886

`p?[A069484(n+1)-1]`
-/

namespace A227340.P13793774744206642886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227340.P13793774744206642886

/-! ## A227340.P16798306921678692590

`p?[A048851(n+2)-1]`
-/

namespace A227340.P16798306921678692590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227340.P16798306921678692590

/-! ## A227340.P6377152917322435628

`p?[xor(3, A069484(n+2))]`
-/

namespace A227340.P6377152917322435628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A069484 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227340.P6377152917322435628

/-! ## A227340.P4816300312669364116

`p?[xor(3, A048851(n+3))]`
-/

namespace A227340.P4816300312669364116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A048851 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227340.P4816300312669364116

/-! ## A227340.P5084997412018569025

`p?[A084920(n+1)+A065091(n+1)²]`
-/

namespace A227340.P5084997412018569025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A065091 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227340.P5084997412018569025

/-!
# A227341: Triangular array: Number of partitions of the vertex set of a forest of two trees on n vertices into k nonempty independent sets.

The programs for A227341, the canonical program `A227341.P3362369705467178662` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227341 has offset 1).

The definition of A227341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227341.P3362369705467178662

`col(n)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227341

/-- `col(n)*T(n-1,k)+T(n-1,k-1)` -/
def P3362369705467178662.Spec : Prop :=
  ∀ n, (P3362369705467178662.a n : ℤ) = A227341 (n + 1)

theorem P3362369705467178662.correct : P3362369705467178662.Spec := by
  intro n
  simp only [A227341, Nat.add_sub_cancel]

end A227341

/-! ## A227341.P13783145576065223002

`A048993(A028310(n))+A048993(A083920(n))`
-/

namespace A227341.P13783145576065223002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A028310 n).toNat + A048993 (A083920 n).toNat

end

end A227341.P13783145576065223002

namespace A227341

/-- `A048993(A028310(n))+A048993(A083920(n))` -/
def P13783145576065223002.Spec : Prop :=
  ∀ n, P13783145576065223002.a n = A227341 (n + 1)

end A227341

/-! ## A227341.P5437136238526512249

`A048993(A137735(n²))+A048993(A083920(n))`
-/

namespace A227341.P5437136238526512249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A137735 (n ^ 2)).toNat + A048993 (A083920 n).toNat

end

end A227341.P5437136238526512249

namespace A227341

/-- `A048993(A137735(n²))+A048993(A083920(n))` -/
def P5437136238526512249.Spec : Prop :=
  ∀ n, P5437136238526512249.a n = A227341 (n + 1)

end A227341

/-! ## A227341.P15091989267668003849

`A048993(A066182(n+1))+A048993(A083920(n))`
-/

namespace A227341.P15091989267668003849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A066182 (n + 1)).toNat + A048993 (A083920 n).toNat

end

end A227341.P15091989267668003849

namespace A227341

/-- `A048993(A066182(n+1))+A048993(A083920(n))` -/
def P15091989267668003849.Spec : Prop :=
  ∀ n, P15091989267668003849.a n = A227341 (n + 1)

end A227341

/-! ## A227341.P12801210524676793291

`A048993(A289207(n+1)+1)+A048993(A083920(n))`
-/

namespace A227341.P12801210524676793291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A289207 (n + 1) + 1).toNat + A048993 (A083920 n).toNat

end

end A227341.P12801210524676793291

namespace A227341

/-- `A048993(A289207(n+1)+1)+A048993(A083920(n))` -/
def P12801210524676793291.Spec : Prop :=
  ∀ n, P12801210524676793291.a n = A227341 (n + 1)

end A227341

/-!
# A227342: Expansion of (1 - t)*(1 + t)^x.

The programs for A227342, there is no canonical definition to state claims against.
-/

/-! ## A227342.P17430464192906935373

`2*A048994(n)-A105793(n)`
-/

namespace A227342.P17430464192906935373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048994 n - A105793 n

end

end A227342.P17430464192906935373

/-!
# A227343: Matrix inverse of triangle A227342.

The programs for A227343, there is no canonical definition to state claims against.
-/

/-! ## A227343.P17715323557998855864

`A031942(A186826(n))%A223811(A084193(∑[n]))`
-/

namespace A227343.P17715323557998855864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031942 (A186826 n).toNat) (A223811 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A227343.P17715323557998855864

/-! ## A227343.P7004136561486336665

`A031942(A186826(n)%(A223811(n+1)%record[A186599(n+1)]))`
-/

namespace A227343.P7004136561486336665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031942 (Int.tmod (A186826 n) (Int.tmod (A223811 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))).toNat

end

end A227343.P7004136561486336665

/-!
# A227344: Triangle read by rows, partitions into distinct parts by perimeter.

The programs for A227344, there is no canonical definition to state claims against.
-/

/-! ## A227344.P1122553770929932039

`A073424(A265421(n+1))*A318362(n+1)`
-/

namespace A227344.P1122553770929932039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A265421 (n + 1)).toNat * A318362 (n + 1)

end

end A227344.P1122553770929932039

/-! ## A227344.P2864370890852287383

`A249808(C(n+2, A026729(n)))`
-/

namespace A227344.P2864370890852287383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249808 (Nat.choose (n + 2) (A026729 n).toNat)

end

end A227344.P2864370890852287383

/-! ## A227344.P17033853051175809285

`C(A323767(n), A062367(A177888(n)))`
-/

namespace A227344.P17033853051175809285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A323767 n).toNat (A062367 (A177888 n).toNat).toNat

end

end A227344.P17033853051175809285

/-! ## A227344.P886838620342613258

`A285720(A295164(n+3)+A095178(n+1))`
-/

namespace A227344.P886838620342613258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285720 (A295164 (n + 3) + A095178 (n + 1)).toNat

end

end A227344.P886838620342613258

/-! ## A227344.P15547561108902404104

`C(A357637(n), A001918(A219078(n+1)))`
-/

namespace A227344.P15547561108902404104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A357637 n).toNat (A001918 (A219078 (n + 1)).toNat).toNat

end

end A227344.P15547561108902404104

/-!
# A227345: Triangle read by rows, partitions into distinct parts by size of boundary.

The programs for A227345, there is no canonical definition to state claims against.
-/

/-! ## A227345.P949223650824176135

`C(A106490(A032020(n)), A180662(n))`
-/

namespace A227345.P949223650824176135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106490 (A032020 n).toNat).toNat (A180662 n).toNat

end

end A227345.P949223650824176135

/-! ## A227345.P15295471912988670478

`C(A275849(A212804(n)), A112367(n))`
-/

namespace A227345.P15295471912988670478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A275849 (A212804 n).toNat).toNat (A112367 n).toNat

end

end A227345.P15295471912988670478

/-! ## A227345.P14830676964007445388

`C(A172263(A292717(n+1)), A292717(n))`
-/

namespace A227345.P14830676964007445388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A172263 (A292717 (n + 1)).toNat).toNat (A292717 n).toNat

end

end A227345.P14830676964007445388

/-! ## A227345.P10229720847240468339

`C(A004218(A009963(n)), A049600(n))`
-/

namespace A227345.P10229720847240468339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004218 (A009963 n).toNat).toNat (A049600 n).toNat

end

end A227345.P10229720847240468339

/-! ## A227345.P339113311209453140

`A000196(C(A106800(n), A131689(n)))`
-/

namespace A227345.P339113311209453140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.choose (A106800 n).toNat (A131689 n).toNat)

end

end A227345.P339113311209453140

/-!
# A227346: Distance between consecutive pairs of primes differing by 6 (p, p+6).

The programs for A227346, the canonical program `A227346.P17862458044584444554` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227346 has offset 1).

The definition of A227346 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023201, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227346.P17862458044584444554

`A023201(n+2)-A023201(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A227346

/-- `A023201(n+2)-A023201(n+1)` -/
def P17862458044584444554.Spec : Prop :=
  ∀ n, P17862458044584444554.a n = A227346 (n + 1)

theorem P17862458044584444554.correct : P17862458044584444554.Spec := by
  intro n
  simp only [A227346, Nat.add_sub_cancel]

end A227346

/-! ## A227346.P7084321053498268995

`Δ[A023201(n+1)]`
-/

namespace A227346.P7084321053498268995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P7084321053498268995

namespace A227346

/-- `Δ[A023201(n+1)]` -/
def P7084321053498268995.Spec : Prop :=
  ∀ n, P7084321053498268995.a n = A227346 (n + 1)

theorem P7084321053498268995.correct : P7084321053498268995.Spec := by
  intro n
  simp only [A227346, Nat.add_sub_cancel, A227346.P7084321053498268995.f1, A227346.P7084321053498268995.a, A227346.P17862458044584444554.a, SequenceMachineLib.memo_apply]

end A227346

/-! ## A227346.P2968422255490184033

`Δ[A046117(n+1)]`
-/

namespace A227346.P2968422255490184033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P2968422255490184033

namespace A227346

/-- `Δ[A046117(n+1)]` -/
def P2968422255490184033.Spec : Prop :=
  ∀ n, P2968422255490184033.a n = A227346 (n + 1)

theorem P2968422255490184033.correct : P2968422255490184033.Spec := by
  intro n
  simp only [A227346, Nat.add_sub_cancel, A227346.P2968422255490184033.f1, A227346.P2968422255490184033.a, A227346.P17862458044584444554.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A046117, A046117.P460302525211984613.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227346

/-! ## A227346.P6160384639744700332

`Δ[A087695(n+1)]`
-/

namespace A227346.P6160384639744700332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P6160384639744700332

namespace A227346

/-- `Δ[A087695(n+1)]` -/
def P6160384639744700332.Spec : Prop :=
  ∀ n, P6160384639744700332.a n = A227346 (n + 1)

theorem P6160384639744700332.correct : P6160384639744700332.Spec := by
  intro n
  simp only [A227346, Nat.add_sub_cancel, A227346.P6160384639744700332.f1, A227346.P6160384639744700332.a, A227346.P17862458044584444554.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A087695, A087695.P4000952237766351123.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A046117, A046117.P460302525211984613.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227346

/-! ## A227346.P13234863611119091917

`Δ[2*A088763(n+1)]`
-/

namespace A227346.P13234863611119091917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P13234863611119091917

namespace A227346

/-- `Δ[2*A088763(n+1)]` -/
def P13234863611119091917.Spec : Prop :=
  ∀ n, P13234863611119091917.a n = A227346 (n + 1)

end A227346

/-! ## A227346.P17112757466961884340

`Δ[A104010(n+1)/2]`
-/

namespace A227346.P17112757466961884340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104010 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P17112757466961884340

namespace A227346

/-- `Δ[A104010(n+1)/2]` -/
def P17112757466961884340.Spec : Prop :=
  ∀ n, P17112757466961884340.a n = (A227346 (n + 1) : ℚ)

theorem P17112757466961884340.correct : P17112757466961884340.Spec := by
  intro n
  simp only [A227346, Nat.add_sub_cancel, A227346.P17112757466961884340.f1, A227346.P17112757466961884340.a, A227346.P17862458044584444554.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A104010, A104010.P5743034670165287868.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A087695, A087695.P4000952237766351123.a, A046117, A046117.P460302525211984613.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227346

/-! ## A227346.P2121395883014056637

`A046117(n+2)-A046117(n+1)`
-/

namespace A227346.P2121395883014056637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 2) - A046117 (n + 1)

end

end A227346.P2121395883014056637

namespace A227346

/-- `A046117(n+2)-A046117(n+1)` -/
def P2121395883014056637.Spec : Prop :=
  ∀ n, P2121395883014056637.a n = A227346 (n + 1)

theorem P2121395883014056637.correct : P2121395883014056637.Spec := by
  intro n
  simp only [A227346, Nat.add_sub_cancel, A227346.P2121395883014056637.a, A227346.P17862458044584444554.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A046117, A046117.P460302525211984613.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227346

/-! ## A227346.P712753020621415802

`A087695(n+2)-A087695(n+1)`
-/

namespace A227346.P712753020621415802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 2) - A087695 (n + 1)

end

end A227346.P712753020621415802

namespace A227346

/-- `A087695(n+2)-A087695(n+1)` -/
def P712753020621415802.Spec : Prop :=
  ∀ n, P712753020621415802.a n = A227346 (n + 1)

theorem P712753020621415802.correct : P712753020621415802.Spec := by
  intro n
  simp only [A227346, Nat.add_sub_cancel, A227346.P712753020621415802.a, A227346.P17862458044584444554.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A087695, A087695.P4000952237766351123.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A046117, A046117.P460302525211984613.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227346

/-! ## A227346.P2002097550878520598

`Δ[A067831(n+2)]`
-/

namespace A227346.P2002097550878520598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P2002097550878520598

namespace A227346

/-- `Δ[A067831(n+2)]` -/
def P2002097550878520598.Spec : Prop :=
  ∀ n, P2002097550878520598.a n = A227346 (n + 1)

end A227346

/-! ## A227346.P3250789211200856462

`Δ[A172071(n+2)]`
-/

namespace A227346.P3250789211200856462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P3250789211200856462

namespace A227346

/-- `Δ[A172071(n+2)]` -/
def P3250789211200856462.Spec : Prop :=
  ∀ n, P3250789211200856462.a n = A227346 (n + 1)

end A227346

/-! ## A227346.P18248148098925944015

`Δ[A172988(n+2)]`
-/

namespace A227346.P18248148098925944015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P18248148098925944015

namespace A227346

/-- `Δ[A172988(n+2)]` -/
def P18248148098925944015.Spec : Prop :=
  ∀ n, P18248148098925944015.a n = A227346 (n + 1)

end A227346

/-! ## A227346.P17033969677362490569

`A067831(n+3)-A067831(n+2)`
-/

namespace A227346.P17033969677362490569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 3) - A067831 (n + 2)

end

end A227346.P17033969677362490569

namespace A227346

/-- `A067831(n+3)-A067831(n+2)` -/
def P17033969677362490569.Spec : Prop :=
  ∀ n, P17033969677362490569.a n = A227346 (n + 1)

end A227346

/-! ## A227346.P11647773435189919901

`A172071(n+3)-A172071(n+2)`
-/

namespace A227346.P11647773435189919901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 3) - A172071 (n + 2)

end

end A227346.P11647773435189919901

namespace A227346

/-- `A172071(n+3)-A172071(n+2)` -/
def P11647773435189919901.Spec : Prop :=
  ∀ n, P11647773435189919901.a n = A227346 (n + 1)

end A227346

/-! ## A227346.P2648346158363607769

`A172988(n+3)-A172988(n+2)`
-/

namespace A227346.P2648346158363607769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 3) - A172988 (n + 2)

end

end A227346.P2648346158363607769

namespace A227346

/-- `A172988(n+3)-A172988(n+2)` -/
def P2648346158363607769.Spec : Prop :=
  ∀ n, P2648346158363607769.a n = A227346 (n + 1)

end A227346

/-! ## A227346.P17809689288648561927

`Δ[p?[A015914(n+1)]]`
-/

namespace A227346.P17809689288648561927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P17809689288648561927

namespace A227346

/-- `Δ[p?[A015914(n+1)]]` -/
def P17809689288648561927.Spec : Prop :=
  ∀ n, P17809689288648561927.a n = A227346 (n + 1)

theorem P17809689288648561927.correct : P17809689288648561927.Spec := by
  intro n
  simp only [A227346, Nat.add_sub_cancel, A227346.P17809689288648561927.f2, A227346.P17809689288648561927.f1, A227346.P17809689288648561927.a, A227346.P17862458044584444554.a, A015914, A015914.P16999400420647426476.f1, A015914.P16999400420647426476.f2, A015914.P16999400420647426476.a, A023201, A023201.P15581086770608415372.f1, A023201.P15581086770608415372.a, A281006, A281006.P4753203276795461863.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A227346

/-! ## A227346.P3589103801808916600

`Δ[p?[A262084(n+1)]]`
-/

namespace A227346.P3589103801808916600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P3589103801808916600

namespace A227346

/-- `Δ[p?[A262084(n+1)]]` -/
def P3589103801808916600.Spec : Prop :=
  ∀ n, P3589103801808916600.a n = A227346 (n + 1)

end A227346

/-! ## A227346.P8334135527015381252

`Δ[A156274(Δ[n²])]`
-/

namespace A227346.P8334135527015381252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P8334135527015381252

namespace A227346

/-- `Δ[A156274(Δ[n²])]` -/
def P8334135527015381252.Spec : Prop :=
  ∀ n, P8334135527015381252.a n = A227346 (n + 1)

end A227346

/-! ## A227346.P13282499892511027980

`Δ[p?[p?[2*n+1]+6]]`
-/

namespace A227346.P13282499892511027980
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A227346.P13282499892511027980

namespace A227346

/-- `Δ[p?[p?[2*n+1]+6]]` -/
def P13282499892511027980.Spec : Prop :=
  ∀ n, P13282499892511027980.a n = A227346 (n + 1)

end A227346

/-! ## A227346.P3045932369956134631

`Δ[p?[A086304(n+1)]]`
-/

namespace A227346.P3045932369956134631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227346.P3045932369956134631

namespace A227346

/-- `Δ[p?[A086304(n+1)]]` -/
def P3045932369956134631.Spec : Prop :=
  ∀ n, P3045932369956134631.a n = A227346 (n + 1)

end A227346

/-!
# A227347: Number of lattice points in the closed region bounded by the graphs of y = (5/6)*x^2, x = n, and y = 0, excluding points on the x-axis.

The programs for A227347, the canonical program `A227347.P1275507252237698909` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227347 has offset 1).

The definition of A227347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227347.P1275507252237698909

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=0, a(1)=3, a(2)=10, a(3)=23, a(4)=43, a(5)=73, a(6)=113`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227347

/-- `2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` -/
def P1275507252237698909.Spec : Prop :=
  ∀ n, P1275507252237698909.a n = A227347 (n + 1)

theorem P1275507252237698909.correct : P1275507252237698909.Spec := by
  intro n
  simp only [A227347, Nat.add_sub_cancel]

end A227347

/-! ## A227347.P8524802694376124101

`∑[floor(5/6*(n+1)²)]`
-/

namespace A227347.P8524802694376124101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 6 * ((n + 1) ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227347.P8524802694376124101

namespace A227347

/-- `∑[floor(5/6*(n+1)²)]` -/
def P8524802694376124101.Spec : Prop :=
  ∀ n, P8524802694376124101.a n = A227347 (n + 1)

end A227347

/-! ## A227347.P11433376313526300368

`∑[(n+1)²]-A175812(n+1)`
-/

namespace A227347.P11433376313526300368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A175812 (n + 1)

end

end A227347.P11433376313526300368

namespace A227347

/-- `∑[(n+1)²]-A175812(n+1)` -/
def P11433376313526300368.Spec : Prop :=
  ∀ n, P11433376313526300368.a n = A227347 (n + 1)

end A227347

/-! ## A227347.P6951870251504780723

`A181286(n+1)+2*A173196(n+1)`
-/

namespace A227347.P6951870251504780723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 (n + 1) + 2 * A173196 (n + 1)

end

end A227347.P6951870251504780723

namespace A227347

/-- `A181286(n+1)+2*A173196(n+1)` -/
def P6951870251504780723.Spec : Prop :=
  ∀ n, P6951870251504780723.a n = A227347 (n + 1)

end A227347

/-! ## A227347.P2803353927599089128

`∑[A000212(n+1)]+∑[A007590(n+1)]`
-/

namespace A227347.P2803353927599089128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A227347.P2803353927599089128

namespace A227347

/-- `∑[A000212(n+1)]+∑[A007590(n+1)]` -/
def P2803353927599089128.Spec : Prop :=
  ∀ n, P2803353927599089128.a n = A227347 (n + 1)

end A227347

/-! ## A227347.P5922693295109250533

`∑[∑[A047220(n+2)]]-A076921(n+2)`
-/

namespace A227347.P5922693295109250533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A076921 (n + 2)

end

end A227347.P5922693295109250533

namespace A227347

/-- `∑[∑[A047220(n+2)]]-A076921(n+2)` -/
def P5922693295109250533.Spec : Prop :=
  ∀ n, P5922693295109250533.a n = A227347 (n + 1)

end A227347

/-! ## A227347.P17858970770281254798

`A122046(2*n+3)-A014125(n)`
-/

namespace A227347.P17858970770281254798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 (2 * n + 3) - A014125 n

end

end A227347.P17858970770281254798

namespace A227347

/-- `A122046(2*n+3)-A014125(n)` -/
def P17858970770281254798.Spec : Prop :=
  ∀ n, P17858970770281254798.a n = A227347 (n + 1)

end A227347

/-! ## A227347.P233470004764688943

`A122046(2*n+3)-A001400(2*n+1)`
-/

namespace A227347.P233470004764688943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 (2 * n + 3) - A001400 (2 * n + 1)

end

end A227347.P233470004764688943

namespace A227347

/-- `A122046(2*n+3)-A001400(2*n+1)` -/
def P233470004764688943.Spec : Prop :=
  ∀ n, P233470004764688943.a n = A227347 (n + 1)

end A227347

/-!
# A227349: Product of lengths of runs of 1-bits in binary representation of n.

The programs for A227349, the canonical program `A227349.P3803513828955669446` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227349 has offset 0).

The definition of A227349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227349.P2252322845139840128

`A284562(n)*A284569(n)`
-/

namespace A227349.P2252322845139840128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 n * A284569 n

end

end A227349.P2252322845139840128

namespace A227349

/-- `A284562(n)*A284569(n)` -/
def P2252322845139840128.Spec : Prop :=
  ∀ n, P2252322845139840128.a n = A227349 n

end A227349

/-! ## A227349.P3803513828955669446

`A005361(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A227349

/-- `A005361(A005940(1+n))` -/
def P3803513828955669446.Spec : Prop :=
  ∀ n, P3803513828955669446.a n = A227349 n

theorem P3803513828955669446.correct : P3803513828955669446.Spec := by
  intro n
  simp only [A227349]

end A227349

/-! ## A227349.P2192533547075239022

`sqrt(A246595(n))`
-/

namespace A227349.P2192533547075239022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246595 n : ℝ)

end

end A227349.P2192533547075239022

namespace A227349

/-- `sqrt(A246595(n))` -/
def P2192533547075239022.Spec : Prop :=
  ∀ n, P2192533547075239022.a n = (A227349 n : ℝ)

end A227349

/-! ## A227349.P10040546102949048321

`∏{e}[A278222(n), #]`
-/

namespace A227349.P10040546102949048321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227349.P10040546102949048321

namespace A227349

/-- `∏{e}[A278222(n), #]` -/
def P10040546102949048321.Spec : Prop :=
  ∀ n, (P10040546102949048321.a n : ℤ) = A227349 n

end A227349

/-! ## A227349.P11624052112991390092

`A106737(and(n, 2*n))`
-/

namespace A227349.P11624052112991390092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (Nat.land n (2 * n))

end

end A227349.P11624052112991390092

namespace A227349

/-- `A106737(and(n, 2*n))` -/
def P11624052112991390092.Spec : Prop :=
  ∀ n, P11624052112991390092.a n = A227349 n

end A227349

/-! ## A227349.P6496303639209117597

`A366799(and(n, 2*n))`
-/

namespace A227349.P6496303639209117597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366799 (Nat.land n (2 * n))

end

end A227349.P6496303639209117597

namespace A227349

/-- `A366799(and(n, 2*n))` -/
def P6496303639209117597.Spec : Prop :=
  ∀ n, P6496303639209117597.a n = A227349 n

end A227349

/-! ## A227349.P2973704872906016869

`A106737(A048735(n))`
-/

namespace A227349.P2973704872906016869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A048735 n).toNat

end

end A227349.P2973704872906016869

namespace A227349

/-- `A106737(A048735(n))` -/
def P2973704872906016869.Spec : Prop :=
  ∀ n, P2973704872906016869.a n = A227349 n

end A227349

/-! ## A227349.P9780275824788808281

`A003963(A246029(n))`
-/

namespace A227349.P9780275824788808281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A246029 n).toNat

end

end A227349.P9780275824788808281

namespace A227349

/-- `A003963(A246029(n))` -/
def P9780275824788808281.Spec : Prop :=
  ∀ n, P9780275824788808281.a n = A227349 n

end A227349

/-! ## A227349.P6219378704841563252

`A167489(A090078(n))`
-/

namespace A227349.P6219378704841563252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A090078 n).toNat

end

end A227349.P6219378704841563252

namespace A227349

/-- `A167489(A090078(n))` -/
def P6219378704841563252.Spec : Prop :=
  ∀ n, P6219378704841563252.a n = A227349 n

end A227349

/-! ## A227349.P5327158848858715282

`A106737(A213370(n))`
-/

namespace A227349.P5327158848858715282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A213370 n).toNat

end

end A227349.P5327158848858715282

namespace A227349

/-- `A106737(A213370(n))` -/
def P5327158848858715282.Spec : Prop :=
  ∀ n, P5327158848858715282.a n = A227349 n

end A227349

/-! ## A227349.P7232853534873507263

`A106737(A348710(n))`
-/

namespace A227349.P7232853534873507263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A348710 n).toNat

end

end A227349.P7232853534873507263

namespace A227349

/-- `A106737(A348710(n))` -/
def P7232853534873507263.Spec : Prop :=
  ∀ n, P7232853534873507263.a n = A227349 n

end A227349

/-! ## A227349.P17978254064001620186

`A106737(A048728(n)/2)`
-/

namespace A227349.P17978254064001620186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat

end

end A227349.P17978254064001620186

namespace A227349

/-- `A106737(A048728(n)/2)` -/
def P17978254064001620186.Spec : Prop :=
  ∀ n, P17978254064001620186.a n = A227349 n

end A227349

/-! ## A227349.P13536889600691737811

`A124758(A385889(n))`
-/

namespace A227349.P13536889600691737811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A385889 n).toNat

end

end A227349.P13536889600691737811

namespace A227349

/-- `A124758(A385889(n))` -/
def P13536889600691737811.Spec : Prop :=
  ∀ n, P13536889600691737811.a n = A227349 n

end A227349

/-! ## A227349.P8223395722320202595

`A227350(n)+A227193(n)`
-/

namespace A227349.P8223395722320202595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 n + A227193 n

end

end A227349.P8223395722320202595

namespace A227349

/-- `A227350(n)+A227193(n)` -/
def P8223395722320202595.Spec : Prop :=
  ∀ n, P8223395722320202595.a n = A227349 n

theorem P8223395722320202595.correct : P8223395722320202595.Spec := by
  intro n
  simp only [A227349, Nat.add_sub_cancel, A227349.P8223395722320202595.a, A227349.P3803513828955669446.a, A005361, A005361.P7238185687981551187.a, A005940, A005940.P5942875842694471387.a, A227193, A227193.P11723890042645240906.a, A227350, A227350.P16496982503593624174.f1, A227350.P16496982503593624174.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A227349

/-! ## A227349.P15292262720859024587

`A167489(n)/A227350(n)`
-/

namespace A227349.P15292262720859024587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A227350 n : ℚ)

end

end A227349.P15292262720859024587

namespace A227349

/-- `A167489(n)/A227350(n)` -/
def P15292262720859024587.Spec : Prop :=
  ∀ n, P15292262720859024587.a n = (A227349 n : ℚ)

end A227349

/-! ## A227349.P6653797198960409638

`A167489(n)/A167489(A090077(n))`
-/

namespace A227349.P6653797198960409638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A167489 (A090077 n).toNat : ℚ)

end

end A227349.P6653797198960409638

namespace A227349

/-- `A167489(n)/A167489(A090077(n))` -/
def P6653797198960409638.Spec : Prop :=
  ∀ n, P6653797198960409638.a n = (A227349 n : ℚ)

end A227349

/-! ## A227349.P12738909947682663035

`A284582(n)/A227350(n)*A284583(n)`
-/

namespace A227349.P12738909947682663035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284582 n : ℚ) / (A227350 n : ℚ) * (A284583 n : ℚ)

end

end A227349.P12738909947682663035

namespace A227349

/-- `A284582(n)/A227350(n)*A284583(n)` -/
def P12738909947682663035.Spec : Prop :=
  ∀ n, P12738909947682663035.a n = (A227349 n : ℚ)

end A227349

/-! ## A227349.P15740615639501863611

`∏{e}[A286601(A193231(n)), #]`
-/

namespace A227349.P15740615639501863611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286601 (A193231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227349.P15740615639501863611

namespace A227349

/-- `∏{e}[A286601(A193231(n)), #]` -/
def P15740615639501863611.Spec : Prop :=
  ∀ n, (P15740615639501863611.a n : ℤ) = A227349 n

end A227349

/-! ## A227349.P16011669334774060726

`A106737(A048728(n))`
-/

namespace A227349.P16011669334774060726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A048728 n).toNat

end

end A227349.P16011669334774060726

namespace A227349

/-- `A106737(A048728(n))` -/
def P16011669334774060726.Spec : Prop :=
  ∀ n, P16011669334774060726.a n = A227349 n

end A227349

/-! ## A227349.P17891244492944035101

`A005361(A278222(n))`
-/

namespace A227349.P17891244492944035101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A278222 n).toNat

end

end A227349.P17891244492944035101

namespace A227349

/-- `A005361(A278222(n))` -/
def P17891244492944035101.Spec : Prop :=
  ∀ n, P17891244492944035101.a n = A227349 n

end A227349

/-!
# A227350: Product of lengths of runs of 0-bits in binary representation of n, or 1 if no nonleading zeros present.

The programs for A227350, the canonical program `A227350.P16496982503593624174` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227350 has offset 0).

The definition of A227350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227350.P3807120786818367080

`A124758(or(n, floor(n/2)))`
-/

namespace A227350.P3807120786818367080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A227350.P3807120786818367080

namespace A227350

/-- `A124758(or(n, floor(n/2)))` -/
def P3807120786818367080.Spec : Prop :=
  ∀ n, P3807120786818367080.a n = A227350 n

end A227350

/-! ## A227350.P16496982503593624174

`A227349(n-(Δ[n²]-2^ceil(log2(n+1))))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A227350

/-- `A227349(n-(Δ[n²]-2^ceil(log2(n+1))))` -/
def P16496982503593624174.Spec : Prop :=
  ∀ n, P16496982503593624174.a n = A227350 n

theorem P16496982503593624174.correct : P16496982503593624174.Spec := by
  intro n
  simp only [A227350]

end A227350

/-! ## A227350.P745932015003691765

`A167489(A090077(n))`
-/

namespace A227350.P745932015003691765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A090077 n).toNat

end

end A227350.P745932015003691765

namespace A227350

/-- `A167489(A090077(n))` -/
def P745932015003691765.Spec : Prop :=
  ∀ n, P745932015003691765.a n = A227350 n

end A227350

/-! ## A227350.P18237961281378475977

`A124758(A269170(n))`
-/

namespace A227350.P18237961281378475977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A269170 n).toNat

end

end A227350.P18237961281378475977

namespace A227350

/-- `A124758(A269170(n))` -/
def P18237961281378475977.Spec : Prop :=
  ∀ n, P18237961281378475977.a n = A227350 n

end A227350

/-! ## A227350.P4730281727820548246

`A366799(A334076(n))`
-/

namespace A227350.P4730281727820548246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366799 (A334076 n).toNat

end

end A227350.P4730281727820548246

namespace A227350

/-- `A366799(A334076(n))` -/
def P4730281727820548246.Spec : Prop :=
  ∀ n, P4730281727820548246.a n = A227350 n

end A227350

/-! ## A227350.P10263803219766857248

`A227349(n)-A227193(n)`
-/

namespace A227350.P10263803219766857248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n - A227193 n

end

end A227350.P10263803219766857248

namespace A227350

/-- `A227349(n)-A227193(n)` -/
def P10263803219766857248.Spec : Prop :=
  ∀ n, P10263803219766857248.a n = A227350 n

theorem P10263803219766857248.correct : P10263803219766857248.Spec := by
  intro n
  simp only [A227350, Nat.add_sub_cancel, A227350.P10263803219766857248.a, A227350.P16496982503593624174.f1, A227350.P16496982503593624174.a, A227193, A227193.P11723890042645240906.a, A227349, A227349.P3803513828955669446.a, A005361, A005361.P7238185687981551187.a, A005940, A005940.P5942875842694471387.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A227350

/-! ## A227350.P11538798329166462857

`A167489(n)/A227349(n)`
-/

namespace A227350.P11538798329166462857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A227349 n : ℚ)

end

end A227350.P11538798329166462857

namespace A227350

/-- `A167489(n)/A227349(n)` -/
def P11538798329166462857.Spec : Prop :=
  ∀ n, P11538798329166462857.a n = (A227350 n : ℚ)

end A227350

/-! ## A227350.P661195143820844219

`A167489(n)/(A284562(n)*A284569(n))`
-/

namespace A227350.P661195143820844219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167489 n : ℚ) / (A284562 n * A284569 n : ℚ)

end

end A227350.P661195143820844219

namespace A227350

/-- `A167489(n)/(A284562(n)*A284569(n))` -/
def P661195143820844219.Spec : Prop :=
  ∀ n, P661195143820844219.a n = (A227350 n : ℚ)

end A227350

/-! ## A227350.P8509620699640917176

`A284558(n)/A227349(n)*A284559(n)`
-/

namespace A227350.P8509620699640917176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284558 n : ℚ) / (A227349 n : ℚ) * (A284559 n : ℚ)

end

end A227350.P8509620699640917176

namespace A227350

/-- `A284558(n)/A227349(n)*A284559(n)` -/
def P8509620699640917176.Spec : Prop :=
  ∀ n, P8509620699640917176.a n = (A227350 n : ℚ)

end A227350

/-! ## A227350.P12863090877266029163

`A284582(n)/A227349(n)*A284583(n)`
-/

namespace A227350.P12863090877266029163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284582 n : ℚ) / (A227349 n : ℚ) * (A284583 n : ℚ)

end

end A227350.P12863090877266029163

namespace A227350

/-- `A284582(n)/A227349(n)*A284583(n)` -/
def P12863090877266029163.Spec : Prop :=
  ∀ n, P12863090877266029163.a n = (A227350 n : ℚ)

end A227350

/-! ## A227350.P12102587544573184988

`∏{e}[A278533(2*n+1), #]`
-/

namespace A227350.P12102587544573184988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278533 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227350.P12102587544573184988

namespace A227350

/-- `∏{e}[A278533(2*n+1), #]` -/
def P12102587544573184988.Spec : Prop :=
  ∀ n, (P12102587544573184988.a n : ℤ) = A227350 n

end A227350

/-! ## A227350.P16457032077034649165

`∏{e}[A253563(2*n+1), #]`
-/

namespace A227350.P16457032077034649165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227350.P16457032077034649165

namespace A227350

/-- `∏{e}[A253563(2*n+1), #]` -/
def P16457032077034649165.Spec : Prop :=
  ∀ n, (P16457032077034649165.a n : ℤ) = A227350 n

end A227350

/-! ## A227350.P16382110996971336680

`A227355(A227352(2*n))/A227349(n)`
-/

namespace A227350.P16382110996971336680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227355 (A227352 (2 * n)).toNat : ℚ) / (A227349 n : ℚ)

end

end A227350.P16382110996971336680

namespace A227350

/-- `A227355(A227352(2*n))/A227349(n)` -/
def P16382110996971336680.Spec : Prop :=
  ∀ n, P16382110996971336680.a n = (A227350 n : ℚ)

end A227350

/-! ## A227350.P11777967314200505413

`A227349(A290254(n+1))/A227349(n)`
-/

namespace A227350.P11777967314200505413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227349 (A290254 (n + 1)).toNat : ℚ) / (A227349 n : ℚ)

end

end A227350.P11777967314200505413

namespace A227350

/-- `A227349(A290254(n+1))/A227349(n)` -/
def P11777967314200505413.Spec : Prop :=
  ∀ n, P11777967314200505413.a n = (A227350 n : ℚ)

end A227350

/-!
# A227351: Permutation of nonnegative integers: map each number by lengths of runs of zeros in its Zeckendorf expansion shifted once left to the number which has the same lengths of runs (in the same order, but alternatively of runs of 0's and 1's) in its binary representation.

The programs for A227351, there is no canonical definition to state claims against.
-/

/-! ## A227351.P10002927796222437937

`A006068(A048679(n))`
-/

namespace A227351.P10002927796222437937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A048679 n).toNat

end

end A227351.P10002927796222437937

/-! ## A227351.P14892851777784817324

`A292600(2*A048679(n))`
-/

namespace A227351.P14892851777784817324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A048679 n).toNat

end

end A227351.P14892851777784817324

/-! ## A227351.P10469572379084859281

`A292600(A048679(n)+A048679(n))`
-/

namespace A227351.P10469572379084859281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A048679 n + A048679 n).toNat

end

end A227351.P10469572379084859281

/-! ## A227351.P4304524013911075051

`A175946(A022341(n))`
-/

namespace A227351.P4304524013911075051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (A022341 n).toNat

end

end A227351.P4304524013911075051

/-! ## A227351.P3544456715234650085

`A175946(4*A003714(n)+1)`
-/

namespace A227351.P3544456715234650085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (4 * A003714 n + 1).toNat

end

end A227351.P3544456715234650085

/-! ## A227351.P11704649320666178766

`A175946((A213540(n+1)-1)/2)`
-/

namespace A227351.P11704649320666178766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (SequenceMachineLib.roundAway ((A213540 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A227351.P11704649320666178766

/-! ## A227351.P10278114350440264622

`A175946(A213540(n+1))`
-/

namespace A227351.P10278114350440264622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175946 (A213540 (n + 1)).toNat

end

end A227351.P10278114350440264622

/-!
# A227352: Permutation of nonnegative integers: map each number by lengths of runs in its binary representation to the number in whose once left-shifted Zeckendorf representation occurs the same run lengths (in the same order) as the lengths of consecutive blocks of zeros.

The programs for A227352, there is no canonical definition to state claims against.
-/

/-! ## A227352.P1200730507950667474

`A048680(A003188(n))`
-/

namespace A227352.P1200730507950667474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A003188 n).toNat

end

end A227352.P1200730507950667474

/-! ## A227352.P16775504451661582328

`A074049(xor(n, floor(n/2))+1)-1`
-/

namespace A227352.P16775504451661582328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat - 1

end

end A227352.P16775504451661582328

/-! ## A227352.P5869934400470597041

`A048680(A286548(n)+n)`
-/

namespace A227352.P5869934400470597041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A286548 n + (n : ℤ)).toNat

end

end A227352.P5869934400470597041

/-! ## A227352.P14382800644270718654

`A048680(xor(n, A004526(n)))`
-/

namespace A227352.P14382800644270718654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (Int.xor (n : ℤ) (A004526 n)).toNat

end

end A227352.P14382800644270718654

/-! ## A227352.P86906214012836055

`A074049(A003188(n)+1)-1`
-/

namespace A227352.P86906214012836055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074049 (A003188 n + 1).toNat - 1

end

end A227352.P86906214012836055

/-! ## A227352.P5469135170474382273

`A048680(xor(n, n-A110654(n)))`
-/

namespace A227352.P5469135170474382273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (Int.xor (n : ℤ) ((n : ℤ) - A110654 n)).toNat

end

end A227352.P5469135170474382273

/-! ## A227352.P16707487690145136536

`A048680(A229763(n)+A004526(n))`
-/

namespace A227352.P16707487690145136536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A229763 n + A004526 n).toNat

end

end A227352.P16707487690145136536

/-! ## A227352.P7436647092415875727

`A048680(xor(A026741(n), A065423(n+1)))`
-/

namespace A227352.P7436647092415875727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (Int.xor (A026741 n) (A065423 (n + 1))).toNat

end

end A227352.P7436647092415875727

/-!
# A227353: Number of lattice points in the closed region bounded by the graphs of y = 3*x/5, x = n, and y = 0, excluding points on the x-axis.

The programs for A227353, the canonical program `A227353.P13224097797853642529` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227353 has offset 1).

The definition of A227353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227353.P18324335529869157951

`floor((n+1)*(3*(n+1)-1)/10)`
-/

namespace A227353.P18324335529869157951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * ((3 * (n + 1) : ℤ) - 1) : ℚ) / 10⌋

end

end A227353.P18324335529869157951

namespace A227353

/-- `floor((n+1)*(3*(n+1)-1)/10)` -/
def P18324335529869157951.Spec : Prop :=
  ∀ n, P18324335529869157951.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P13224097797853642529

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=10, a(6)=14`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227353

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P13224097797853642529.Spec : Prop :=
  ∀ n, P13224097797853642529.a n = A227353 (n + 1)

theorem P13224097797853642529.correct : P13224097797853642529.Spec := by
  intro n
  simp only [A227353, Nat.add_sub_cancel]

end A227353

/-! ## A227353.P17093703466507704623

`∑[∑[comp[6*n-2]%2]]`
-/

namespace A227353.P17093703466507704623
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227353.P17093703466507704623

namespace A227353

/-- `∑[∑[comp[6*n-2]%2]]` -/
def P17093703466507704623.Spec : Prop :=
  ∀ n, (P17093703466507704623.a n : ℤ) = A227353 (n + 1)

end A227353

/-! ## A227353.P14532796803456285231

`∑[floor(3*C(n+1, n)/5)]`
-/

namespace A227353.P14532796803456285231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * Nat.choose (n + 1) n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227353.P14532796803456285231

namespace A227353

/-- `∑[floor(3*C(n+1, n)/5)]` -/
def P14532796803456285231.Spec : Prop :=
  ∀ n, P14532796803456285231.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P389493421018933359

`∑[a(n-5)+3]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A227353.P389493421018933359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 3] fun n f1 =>
  f1 (n - 5) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227353.P389493421018933359

namespace A227353

/-- `∑[a(n-5)+3]` -/
def P389493421018933359.Spec : Prop :=
  ∀ n, (P389493421018933359.a n : ℤ) = A227353 (n + 1)

end A227353

/-! ## A227353.P7544697960382028505

`∑[∑[a(n-5)²]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A227353.P7544697960382028505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n f2 =>
  f2 (n - 5) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227353.P7544697960382028505

namespace A227353

/-- `∑[∑[a(n-5)²]]` -/
def P7544697960382028505.Spec : Prop :=
  ∀ n, (P7544697960382028505.a n : ℤ) = A227353 (n + 1)

end A227353

/-! ## A227353.P8041764813840609015

`a(n-2)+floor((n+1)/5+n)` with `a(0)=0, a(1)=1`
-/

namespace A227353.P8041764813840609015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ⌊(n + 1 : ℚ) / 5 + (n : ℚ)⌋

end

end A227353.P8041764813840609015

namespace A227353

/-- `a(n-2)+floor((n+1)/5+n)` -/
def P8041764813840609015.Spec : Prop :=
  ∀ n, P8041764813840609015.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P3284714567742876398

`∑[n]-A008738(n)`
-/

namespace A227353.P3284714567742876398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A008738 n

end

end A227353.P3284714567742876398

namespace A227353

/-- `∑[n]-A008738(n)` -/
def P3284714567742876398.Spec : Prop :=
  ∀ n, P3284714567742876398.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P8617989329150698253

`∑[n-A288156(n)]`
-/

namespace A227353.P8617989329150698253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A288156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227353.P8617989329150698253

namespace A227353

/-- `∑[n-A288156(n)]` -/
def P8617989329150698253.Spec : Prop :=
  ∀ n, P8617989329150698253.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P11170444834998320882

`∑[∑[1-A198517(n)]]`
-/

namespace A227353.P11170444834998320882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A198517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227353.P11170444834998320882

namespace A227353

/-- `∑[∑[1-A198517(n)]]` -/
def P11170444834998320882.Spec : Prop :=
  ∀ n, P11170444834998320882.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P2691030088238473065

`∑[A047488(n+1)-n]`
-/

namespace A227353.P2691030088238473065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047488 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227353.P2691030088238473065

namespace A227353

/-- `∑[A047488(n+1)-n]` -/
def P2691030088238473065.Spec : Prop :=
  ∀ n, P2691030088238473065.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P10993075843953725824

`∑[n-A289195(n)/2]`
-/

namespace A227353.P10993075843953725824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A289195 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227353.P10993075843953725824

namespace A227353

/-- `∑[n-A289195(n)/2]` -/
def P10993075843953725824.Spec : Prop :=
  ∀ n, P10993075843953725824.a n = (A227353 (n + 1) : ℚ)

end A227353

/-! ## A227353.P17573320052079479461

`A186494(n+1)-(n+1)`
-/

namespace A227353.P17573320052079479461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186494 (n + 1) - (n + 1 : ℤ)

end

end A227353.P17573320052079479461

namespace A227353

/-- `A186494(n+1)-(n+1)` -/
def P17573320052079479461.Spec : Prop :=
  ∀ n, P17573320052079479461.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P12744342597368693201

`A332410(n)-a(n-1)` with `a(0)=0`
-/

namespace A227353.P12744342597368693201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A332410 n - a (n - 1)

end

end A227353.P12744342597368693201

namespace A227353

/-- `A332410(n)-a(n-1)` -/
def P12744342597368693201.Spec : Prop :=
  ∀ n, P12744342597368693201.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P1608298583521729545

`∑[2*n-A047367(n+1)]`
-/

namespace A227353.P1608298583521729545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A047367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227353.P1608298583521729545

namespace A227353

/-- `∑[2*n-A047367(n+1)]` -/
def P1608298583521729545.Spec : Prop :=
  ∀ n, P1608298583521729545.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P16423793724757616903

`(n+1)²-∑[A047317(n+1)]`
-/

namespace A227353.P16423793724757616903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227353.P16423793724757616903

namespace A227353

/-- `(n+1)²-∑[A047317(n+1)]` -/
def P16423793724757616903.Spec : Prop :=
  ∀ n, P16423793724757616903.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P6084199870711159975

`A398050(n)-A033437(n)`
-/

namespace A227353.P6084199870711159975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398050 n - A033437 n

end

end A227353.P6084199870711159975

namespace A227353

/-- `A398050(n)-A033437(n)` -/
def P6084199870711159975.Spec : Prop :=
  ∀ n, P6084199870711159975.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P9019328671716862884

`A398054(n)-A279169(n)`
-/

namespace A227353.P9019328671716862884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398054 n - A279169 n

end

end A227353.P9019328671716862884

namespace A227353

/-- `A398054(n)-A279169(n)` -/
def P9019328671716862884.Spec : Prop :=
  ∀ n, P9019328671716862884.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P16770782027223570026

`A249013(n+1)+A036404(n)`
-/

namespace A227353.P16770782027223570026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249013 (n + 1) + A036404 n

end

end A227353.P16770782027223570026

namespace A227353

/-- `A249013(n+1)+A036404(n)` -/
def P16770782027223570026.Spec : Prop :=
  ∀ n, P16770782027223570026.a n = A227353 (n + 1)

end A227353

/-! ## A227353.P2174988032028708753

`A000217(n)+A398050(n)-A398052(n)`
-/

namespace A227353.P2174988032028708753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A398050 n - A398052 n)

end

end A227353.P2174988032028708753

namespace A227353

/-- `A000217(n)+A398050(n)-A398052(n)` -/
def P2174988032028708753.Spec : Prop :=
  ∀ n, P2174988032028708753.a n = A227353 (n + 1)

end A227353

/-!
# A227354: Expansion of 2 * a(q) - a(q^2) in powers of q where a() is a cubic AGM theta function.

The programs for A227354, there is no canonical definition to state claims against.
-/

/-! ## A227354.P15046989603510130123

`A122859(8*n)`
-/

namespace A227354.P15046989603510130123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122859 (8 * n)

end

end A227354.P15046989603510130123

/-! ## A227354.P11081045463022048188

`A113660(2*n)`
-/

namespace A227354.P11081045463022048188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113660 (2 * n)

end

end A227354.P11081045463022048188

/-! ## A227354.P7984497586520379135

`2*A004016(n)-A004016(2*n)`
-/

namespace A227354.P7984497586520379135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004016 n - A004016 (2 * n)

end

end A227354.P7984497586520379135

/-! ## A227354.P7827489712849473577

`A122859(n+n)%A000143(n+1)`
-/

namespace A227354.P7827489712849473577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122859 (n + n)) (A000143 (n + 1))

end

end A227354.P7827489712849473577

/-! ## A227354.P10544784719927991354

`2*A033716(4*n)-A033716(2*n)`
-/

namespace A227354.P10544784719927991354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033716 (4 * n) - A033716 (2 * n)

end

end A227354.P10544784719927991354

/-! ## A227354.P16758178942167804273

`2*A115978(4*n)-A115978(2*n)`
-/

namespace A227354.P16758178942167804273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115978 (4 * n) - A115978 (2 * n)

end

end A227354.P16758178942167804273

/-! ## A227354.P6804719801376728489

`2*A180318(4*n)-A180318(2*n)`
-/

namespace A227354.P6804719801376728489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180318 (4 * n) - A180318 (2 * n)

end

end A227354.P6804719801376728489

/-! ## A227354.P771134169072778642

`2*A217220(4*n)-A217220(2*n)`
-/

namespace A227354.P771134169072778642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217220 (4 * n) - A217220 (2 * n)

end

end A227354.P771134169072778642

/-! ## A227354.P7189282464839897895

`2*A244339(2*n)-A244339(4*n)`
-/

namespace A227354.P7189282464839897895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244339 (2 * n) - A244339 (4 * n)

end

end A227354.P7189282464839897895

/-! ## A227354.P1045684575947012942

`A113660(n+n)%A008486(A008486(n+1))`
-/

namespace A227354.P1045684575947012942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113660 (n + n)) (A008486 (A008486 (n + 1)).toNat)

end

end A227354.P1045684575947012942

/-! ## A227354.P6288821937116714243

`A205972(2*n)/A324969(2*n+1)`
-/

namespace A227354.P6288821937116714243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205972 (2 * n) : ℚ) / (A324969 (2 * n + 1) : ℚ)

end

end A227354.P6288821937116714243

/-! ## A227354.P8903011549729518510

`A034896(2*n)/A205971(2*n)*A205972(2*n)`
-/

namespace A227354.P8903011549729518510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 (2 * n) : ℚ) / (A205971 (2 * n) : ℚ) * (A205972 (2 * n) : ℚ)

end

end A227354.P8903011549729518510

/-! ## A227354.P6308085819676790467

`A131946(2*n)/A205971(2*n)*A205972(2*n)`
-/

namespace A227354.P6308085819676790467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131946 (2 * n) : ℚ) / (A205971 (2 * n) : ℚ) * (A205972 (2 * n) : ℚ)

end

end A227354.P6308085819676790467

/-! ## A227354.P2941175704018387158

`A209452(2*n)/A215928(2*n)`
-/

namespace A227354.P2941175704018387158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209452 (2 * n) : ℚ) / (A215928 (2 * n) : ℚ)

end

end A227354.P2941175704018387158

/-! ## A227354.P13539562662672776752

`A209452(2*n)/gcd(A000129(2*n), A209452(2*n))`
-/

namespace A227354.P13539562662672776752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209452 (2 * n) : ℚ) / (Int.gcd (A000129 (2 * n)) (A209452 (2 * n)) : ℚ)

end

end A227354.P13539562662672776752

/-! ## A227354.P10968128214890313442

`A034896(2*n)/A209451(2*n)*A209452(2*n)`
-/

namespace A227354.P10968128214890313442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 (2 * n) : ℚ) / (A209451 (2 * n) : ℚ) * (A209452 (2 * n) : ℚ)

end

end A227354.P10968128214890313442

/-! ## A227354.P99932401680678803

`A109041(2*n)*A209452(2*n)/A209453(2*n)`
-/

namespace A227354.P99932401680678803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109041 (2 * n) * A209452 (2 * n) : ℚ) / (A209453 (2 * n) : ℚ)

end

end A227354.P99932401680678803

/-!
# A227355: Product of run lengths in Zeckendorf representation of n.

The programs for A227355, the canonical program `A227355.P15889745783808237213` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227355 has offset 0).

The definition of A227355 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A167489, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227355.P15889745783808237213

`A167489(A003714(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A227355

/-- `A167489(A003714(n))` -/
def P15889745783808237213.Spec : Prop :=
  ∀ n, P15889745783808237213.a n = A227355 n

theorem P15889745783808237213.correct : P15889745783808237213.Spec := by
  intro n
  simp only [A227355]

end A227355

/-! ## A227355.P3751982113494850040

`A124758(record[A003188(n)])`
-/

namespace A227355.P3751982113494850040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227355.P3751982113494850040

namespace A227355

/-- `A124758(record[A003188(n)])` -/
def P3751982113494850040.Spec : Prop :=
  ∀ n, P3751982113494850040.a n = A227355 n

end A227355

/-! ## A227355.P8148333752697174404

`A124758(A295897(n+1))`
-/

namespace A227355.P8148333752697174404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A295897 (n + 1)).toNat

end

end A227355.P8148333752697174404

namespace A227355

/-- `A124758(A295897(n+1))` -/
def P8148333752697174404.Spec : Prop :=
  ∀ n, P8148333752697174404.a n = A227355 n

end A227355

/-! ## A227355.P10940158921878305953

`A284583(eq[0, A318921(n)])`
-/

namespace A227355.P10940158921878305953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227355.P10940158921878305953

namespace A227355

/-- `A284583(eq[0, A318921(n)])` -/
def P10940158921878305953.Spec : Prop :=
  ∀ n, P10940158921878305953.a n = A227355 n

end A227355

/-! ## A227355.P94773075221519763

`A284583(eq[1, A284569(n)])`
-/

namespace A227355.P94773075221519763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227355.P94773075221519763

namespace A227355

/-- `A284583(eq[1, A284569(n)])` -/
def P94773075221519763.Spec : Prop :=
  ∀ n, P94773075221519763.a n = A227355 n

end A227355

/-! ## A227355.P9419660147164029605

`A284583(eq[1, A284580(n)])`
-/

namespace A227355.P9419660147164029605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227355.P9419660147164029605

namespace A227355

/-- `A284583(eq[1, A284580(n)])` -/
def P9419660147164029605.Spec : Prop :=
  ∀ n, P9419660147164029605.a n = A227355 n

end A227355

/-! ## A227355.P11931173341320526872

`A284583(lt[A284569(n), 2])`
-/

namespace A227355.P11931173341320526872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A227355.P11931173341320526872

namespace A227355

/-- `A284583(lt[A284569(n), 2])` -/
def P11931173341320526872.Spec : Prop :=
  ∀ n, P11931173341320526872.a n = A227355 n

end A227355

/-! ## A227355.P525157499965812328

`A284583(lt[A284580(n), 2])`
-/

namespace A227355.P525157499965812328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284580 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A227355.P525157499965812328

namespace A227355

/-- `A284583(lt[A284580(n), 2])` -/
def P525157499965812328.Spec : Prop :=
  ∀ n, P525157499965812328.a n = A227355 n

end A227355

/-! ## A227355.P14283530664018079105

`A124758(record[A269170(n)])`
-/

namespace A227355.P14283530664018079105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227355.P14283530664018079105

namespace A227355

/-- `A124758(record[A269170(n)])` -/
def P14283530664018079105.Spec : Prop :=
  ∀ n, P14283530664018079105.a n = A227355 n

end A227355

/-! ## A227355.P6133585377608084066

`A167489(record[A090077(n)])`
-/

namespace A227355.P6133585377608084066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227355.P6133585377608084066

namespace A227355

/-- `A167489(record[A090077(n)])` -/
def P6133585377608084066.Spec : Prop :=
  ∀ n, P6133585377608084066.a n = A227355 n

end A227355

/-! ## A227355.P17723994925436123990

`A167489(eq[1, A227349(n)])`
-/

namespace A227355.P17723994925436123990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227355.P17723994925436123990

namespace A227355

/-- `A167489(eq[1, A227349(n)])` -/
def P17723994925436123990.Spec : Prop :=
  ∀ n, P17723994925436123990.a n = A227355 n

end A227355

/-! ## A227355.P1335023772382019542

`A167489(eq[1, A246596(n)])`
-/

namespace A227355.P1335023772382019542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227355.P1335023772382019542

namespace A227355

/-- `A167489(eq[1, A246596(n)])` -/
def P1335023772382019542.Spec : Prop :=
  ∀ n, P1335023772382019542.a n = A227355 n

end A227355

/-! ## A227355.P7450642504289720597

`A167489(eq[1, A284569(n)])`
-/

namespace A227355.P7450642504289720597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227355.P7450642504289720597

namespace A227355

/-- `A167489(eq[1, A284569(n)])` -/
def P7450642504289720597.Spec : Prop :=
  ∀ n, P7450642504289720597.a n = A227355 n

end A227355

/-! ## A227355.P12595822815377657271

`A227350(eq[1, A227349(n)])`
-/

namespace A227355.P12595822815377657271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227355.P12595822815377657271

namespace A227355

/-- `A227350(eq[1, A227349(n)])` -/
def P12595822815377657271.Spec : Prop :=
  ∀ n, P12595822815377657271.a n = A227355 n

end A227355

/-! ## A227355.P8294125998905059771

`A227350(eq[1, A346422(n)])`
-/

namespace A227355.P8294125998905059771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227355.P8294125998905059771

namespace A227355

/-- `A227350(eq[1, A346422(n)])` -/
def P8294125998905059771.Spec : Prop :=
  ∀ n, P8294125998905059771.a n = A227355 n

end A227355

/-! ## A227355.P4575214501092636374

`A227350(lt[A227349(n), 2])`
-/

namespace A227355.P4575214501092636374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A227355.P4575214501092636374

namespace A227355

/-- `A227350(lt[A227349(n), 2])` -/
def P4575214501092636374.Spec : Prop :=
  ∀ n, P4575214501092636374.a n = A227355 n

end A227355

/-! ## A227355.P875211948898497432

`A167489(lt[A344180(n), 2])`
-/

namespace A227355.P875211948898497432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A227355.P875211948898497432

namespace A227355

/-- `A167489(lt[A344180(n), 2])` -/
def P875211948898497432.Spec : Prop :=
  ∀ n, P875211948898497432.a n = A227355 n

end A227355

/-! ## A227355.P15690488921278571058

`A227350(record[n/A227349(n)])`
-/

namespace A227355.P15690488921278571058
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A227349 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A227355.P15690488921278571058

namespace A227355

/-- `A227350(record[n/A227349(n)])` -/
def P15690488921278571058.Spec : Prop :=
  ∀ n, P15690488921278571058.a n = A227355 n

end A227355

/-! ## A227355.P6406445607034628419

`A227350(A003714(n+1)-1)`
-/

namespace A227355.P6406445607034628419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (A003714 (n + 1) - 1).toNat

end

end A227355.P6406445607034628419

namespace A227355

/-- `A227350(A003714(n+1)-1)` -/
def P6406445607034628419.Spec : Prop :=
  ∀ n, P6406445607034628419.a n = A227355 n

end A227355

/-! ## A227355.P7995118906970503950

`A227350((A118113(n)-1)/2)`
-/

namespace A227355.P7995118906970503950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (SequenceMachineLib.roundAway ((A118113 n - 1 : ℚ) / 2)).toNat

end

end A227355.P7995118906970503950

namespace A227355

/-- `A227350((A118113(n)-1)/2)` -/
def P7995118906970503950.Spec : Prop :=
  ∀ n, P7995118906970503950.a n = A227355 n

end A227355

/-!
# A227356: Partial sums of A129361.

The programs for A227356, the canonical program `A227356.P7010420418748917047` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227356 has offset 1).

The definition of A227356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227356.P7010420418748917047

`a(n-1)+A129361(n)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A227356

/-- `a(n-1)+A129361(n)` -/
def P7010420418748917047.Spec : Prop :=
  ∀ n, P7010420418748917047.a n = A227356 (n + 1)

theorem P7010420418748917047.correct : P7010420418748917047.Spec := by
  intro n
  simp only [A227356, Nat.add_sub_cancel]

end A227356

/-! ## A227356.P11496112154065145677

`2+A000045(n+5)-A096748(n+7)`
-/

namespace A227356.P11496112154065145677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A000045 (n + 5) - A096748 (n + 7)

end

end A227356.P11496112154065145677

namespace A227356

/-- `2+A000045(n+5)-A096748(n+7)` -/
def P11496112154065145677.Spec : Prop :=
  ∀ n, P11496112154065145677.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P13379203401379810295

`∑[A129361(n)]`
-/

namespace A227356.P13379203401379810295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227356.P13379203401379810295

namespace A227356

/-- `∑[A129361(n)]` -/
def P13379203401379810295.Spec : Prop :=
  ∀ n, P13379203401379810295.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P17756197261282344958

`A001911(n+2)-A238374(n+1)`
-/

namespace A227356.P17756197261282344958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 2) - A238374 (n + 1)

end

end A227356.P17756197261282344958

namespace A227356

/-- `A001911(n+2)-A238374(n+1)` -/
def P17756197261282344958.Spec : Prop :=
  ∀ n, P17756197261282344958.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P10777951915037873497

`∑[A024367(n+1)+A024318(n+1)]`
-/

namespace A227356.P10777951915037873497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024367 (n + 1) + A024318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227356.P10777951915037873497

namespace A227356

/-- `∑[A024367(n+1)+A024318(n+1)]` -/
def P10777951915037873497.Spec : Prop :=
  ∀ n, P10777951915037873497.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P7594627065395855930

`A238374(2*n)+2-A238374(n+1)`
-/

namespace A227356.P7594627065395855930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238374 (2 * n) + (2 - A238374 (n + 1))

end

end A227356.P7594627065395855930

namespace A227356

/-- `A238374(2*n)+2-A238374(n+1)` -/
def P7594627065395855930.Spec : Prop :=
  ∀ n, P7594627065395855930.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P15739974433371508678

`∑[A024309(n+1)-A023860(n+1)]`
-/

namespace A227356.P15739974433371508678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024309 (n + 1) - A023860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227356.P15739974433371508678

namespace A227356

/-- `∑[A024309(n+1)-A023860(n+1)]` -/
def P15739974433371508678.Spec : Prop :=
  ∀ n, P15739974433371508678.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P1872892860125248424

`∑[A024313(n+1)-A024309(n+1)]`
-/

namespace A227356.P1872892860125248424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024313 (n + 1) - A024309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227356.P1872892860125248424

namespace A227356

/-- `∑[A024313(n+1)-A024309(n+1)]` -/
def P1872892860125248424.Spec : Prop :=
  ∀ n, P1872892860125248424.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P8684347376686907396

`∑[A143061(∑[or(1, n)])]`
-/

namespace A227356.P8684347376686907396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227356.P8684347376686907396

namespace A227356

/-- `∑[A143061(∑[or(1, n)])]` -/
def P8684347376686907396.Spec : Prop :=
  ∀ n, P8684347376686907396.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P1497580358746469021

`∑[A143061(record[A008818(n)])]`
-/

namespace A227356.P1497580358746469021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008818 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227356.P1497580358746469021

namespace A227356

/-- `∑[A143061(record[A008818(n)])]` -/
def P1497580358746469021.Spec : Prop :=
  ∀ n, P1497580358746469021.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P6232805497778699873

`∑[A143061(A000982(n+1))]`
-/

namespace A227356.P6232805497778699873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A000982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227356.P6232805497778699873

namespace A227356

/-- `∑[A143061(A000982(n+1))]` -/
def P6232805497778699873.Spec : Prop :=
  ∀ n, P6232805497778699873.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P9084155301969621150

`∑[A143061(A008818(2*n))]`
-/

namespace A227356.P9084155301969621150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A008818 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227356.P9084155301969621150

namespace A227356

/-- `∑[A143061(A008818(2*n))]` -/
def P9084155301969621150.Spec : Prop :=
  ∀ n, P9084155301969621150.a n = A227356 (n + 1)

end A227356

/-! ## A227356.P15065518953331033816

`∑[A094585(A008619(n²))]`
-/

namespace A227356.P15065518953331033816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094585 (A008619 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227356.P15065518953331033816

namespace A227356

/-- `∑[A094585(A008619(n²))]` -/
def P15065518953331033816.Spec : Prop :=
  ∀ n, P15065518953331033816.a n = A227356 (n + 1)

end A227356

/-!
# A227357: de Bruijn's S(6,n).

The programs for A227357, there is no canonical definition to state claims against.
-/

/-! ## A227357.P8315508868275791604

`A350594(eq[13, A099375(n)])`
-/

namespace A227357.P8315508868275791604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227357.P8315508868275791604

/-! ## A227357.P8186901526587847525

`record[A350594(abs(1-A055999(n)))]`
-/

namespace A227357.P8186901526587847525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350594 |1 - A055999 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227357.P8186901526587847525

/-!
# A227358: Length of shortest Golomb-like (for sums of triples) ruler with n marks.

The programs for A227358, there is no canonical definition to state claims against.
-/

/-! ## A227358.P14421392727743224358

`A365043(A303369(n+1))+A007678(n+1)`
-/

namespace A227358.P14421392727743224358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365043 (A303369 (n + 1)).toNat + A007678 (n + 1)

end

end A227358.P14421392727743224358

/-!
# A227359: Natural numbers that are not of the form (k +- sum of binary digits of k) for any k.

The programs for A227359, the canonical program `A227359.P5996464961392060094` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227359 has offset 1).

The definition of A227359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227359.P9403411535277887405

`eq[A079559(n), A228086(n)]`
-/

namespace A227359.P9403411535277887405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P9403411535277887405

namespace A227359

/-- `eq[A079559(n), A228086(n)]` -/
def P9403411535277887405.Spec : Prop :=
  ∀ n, (P9403411535277887405.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P14278288348883438629

`eq[A079559(n), A228087(n)]`
-/

namespace A227359.P14278288348883438629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P14278288348883438629

namespace A227359

/-- `eq[A079559(n), A228087(n)]` -/
def P14278288348883438629.Spec : Prop :=
  ∀ n, (P14278288348883438629.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P13085209925708438988

`eq[A213714(n), A228085(n)]`
-/

namespace A227359.P13085209925708438988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P13085209925708438988

namespace A227359

/-- `eq[A213714(n), A228085(n)]` -/
def P13085209925708438988.Spec : Prop :=
  ∀ n, (P13085209925708438988.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P14169522463645552393

`eq[A228086(n), A257265(n)]`
-/

namespace A227359.P14169522463645552393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P14169522463645552393

namespace A227359

/-- `eq[A228086(n), A257265(n)]` -/
def P14169522463645552393.Spec : Prop :=
  ∀ n, (P14169522463645552393.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P9816298060248877477

`eq[A228087(n), A257265(n)]`
-/

namespace A227359.P9816298060248877477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P9816298060248877477

namespace A227359

/-- `eq[A228087(n), A257265(n)]` -/
def P9816298060248877477.Spec : Prop :=
  ∀ n, (P9816298060248877477.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P6631488554551511744

`eq[A227643(n), A308187(n+1)]`
-/

namespace A227359.P6631488554551511744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P6631488554551511744

namespace A227359

/-- `eq[A227643(n), A308187(n+1)]` -/
def P6631488554551511744.Spec : Prop :=
  ∀ n, (P6631488554551511744.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P17083464258570722457

`lt[A228085(n), log(A308188(n+1))]`
-/

namespace A227359.P17083464258570722457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A308188 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A227359.P17083464258570722457

namespace A227359

/-- `lt[A228085(n), log(A308188(n+1))]` -/
def P17083464258570722457.Spec : Prop :=
  ∀ n, (P17083464258570722457.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P16621501548008572273

`∩[A010061(n+1), A055938(n+1)]`
-/

namespace A227359.P16621501548008572273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227359.P16621501548008572273

namespace A227359

/-- `∩[A010061(n+1), A055938(n+1)]` -/
def P16621501548008572273.Spec : Prop :=
  ∀ n, (P16621501548008572273.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P5996464961392060094

`A055938(record[A234017(A010061(n+3))])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A227359

/-- `A055938(record[A234017(A010061(n+3))])` -/
def P5996464961392060094.Spec : Prop :=
  ∀ n, P5996464961392060094.a n = A227359 (n + 1)

theorem P5996464961392060094.correct : P5996464961392060094.Spec := by
  intro n
  simp only [A227359, Nat.add_sub_cancel]

end A227359

/-! ## A227359.P10467980246737882506

`lt[A228085(n), (A308188(n+1)+A000040(n+2))%2]`
-/

namespace A227359.P10467980246737882506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308188 (n + 1) + A000040 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227359.P10467980246737882506

namespace A227359

/-- `lt[A228085(n), (A308188(n+1)+A000040(n+2))%2]` -/
def P10467980246737882506.Spec : Prop :=
  ∀ n, (P10467980246737882506.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P321876668756216596

`eq[A213723(n), A228085(n)]`
-/

namespace A227359.P321876668756216596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P321876668756216596

namespace A227359

/-- `eq[A213723(n), A228085(n)]` -/
def P321876668756216596.Spec : Prop :=
  ∀ n, (P321876668756216596.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P5941267946562806869

`eq[A213724(n), A228086(n)]`
-/

namespace A227359.P5941267946562806869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P5941267946562806869

namespace A227359

/-- `eq[A213724(n), A228086(n)]` -/
def P5941267946562806869.Spec : Prop :=
  ∀ n, (P5941267946562806869.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P6167652749528115601

`eq[A213724(n), A228087(n)]`
-/

namespace A227359.P6167652749528115601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P6167652749528115601

namespace A227359

/-- `eq[A213724(n), A228087(n)]` -/
def P6167652749528115601.Spec : Prop :=
  ∀ n, (P6167652749528115601.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P15513013673787127609

`eq[A213731(n), A228086(n)]`
-/

namespace A227359.P15513013673787127609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P15513013673787127609

namespace A227359

/-- `eq[A213731(n), A228086(n)]` -/
def P15513013673787127609.Spec : Prop :=
  ∀ n, (P15513013673787127609.a n : ℤ) = A227359 (n + 1)

end A227359

/-! ## A227359.P17472817703298378715

`eq[A213731(n), A228087(n)]`
-/

namespace A227359.P17472817703298378715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227359.P17472817703298378715

namespace A227359

/-- `eq[A213731(n), A228087(n)]` -/
def P17472817703298378715.Spec : Prop :=
  ∀ n, (P17472817703298378715.a n : ℤ) = A227359 (n + 1)

end A227359

/-!
# A227360: G.f.: 1/(1 - x*(1-x^3)/(1 - x^2*(1-x^4)/(1 - x^3*(1-x^5)/(1 - x^4*(1-x^6)/(1 - ...))))), a continued fraction.

The programs for A227360, there is no canonical definition to state claims against.
-/

/-! ## A227360.P15858898712142371592

`A185646(∑[n+3])`
-/

namespace A227360.P15858898712142371592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A227360.P15858898712142371592

/-! ## A227360.P10052325651692334976

`abs(A185646(A027379(n+1)))`
-/

namespace A227360.P10052325651692334976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185646 (A027379 (n + 1)).toNat|

end

end A227360.P10052325651692334976

/-! ## A227360.P5963454098827346542

`abs(A185646(A055998(n+1)))`
-/

namespace A227360.P5963454098827346542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185646 (A055998 (n + 1)).toNat|

end

end A227360.P5963454098827346542

/-! ## A227360.P16424358880320590995

`abs(A185646(A052905(n)+2))`
-/

namespace A227360.P16424358880320590995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185646 (A052905 n + 2).toNat|

end

end A227360.P16424358880320590995

/-! ## A227360.P6422543216628813270

`abs(A185646(A034856(n+1)+n+2))`
-/

namespace A227360.P6422543216628813270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185646 (A034856 (n + 1) + (n + 2 : ℤ)).toNat|

end

end A227360.P6422543216628813270

/-!
# A227361: If n is even, then a(n) = n + bitsum(n), else a(n) = n - bitsum(n), where bitsum(n) is the count of binary 1's in n, A000120.

The programs for A227361, the canonical program `A227361.P9320893418699104060` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227361 has offset 0).

The definition of A227361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227361.P9320893418699104060

`n+(-1)^(n%2)*A000120(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A227361

/-- `n+(-1)^(n%2)*A000120(n)` -/
def P9320893418699104060.Spec : Prop :=
  ∀ n, P9320893418699104060.a n = A227361 n

theorem P9320893418699104060.correct : P9320893418699104060.Spec := by
  intro n
  simp only [A227361]

end A227361

/-! ## A227361.P11230324571385952125

`(-1)^n*A000120(n)+n`
-/

namespace A227361.P11230324571385952125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000120 n + (n : ℤ)

end

end A227361.P11230324571385952125

namespace A227361

/-- `(-1)^n*A000120(n)+n` -/
def P11230324571385952125.Spec : Prop :=
  ∀ n, P11230324571385952125.a n = A227361 n

end A227361

/-! ## A227361.P7634932916071438750

`A000120(n)*A033999(n)+n`
-/

namespace A227361.P7634932916071438750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A033999 n + (n : ℤ)

end

end A227361.P7634932916071438750

namespace A227361

/-- `A000120(n)*A033999(n)+n` -/
def P7634932916071438750.Spec : Prop :=
  ∀ n, P7634932916071438750.a n = A227361 n

end A227361

/-! ## A227361.P14691304337327636460

`n-A000120(n)*A062157(n)`
-/

namespace A227361.P14691304337327636460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000120 n * A062157 n

end

end A227361.P14691304337327636460

namespace A227361

/-- `n-A000120(n)*A062157(n)` -/
def P14691304337327636460.Spec : Prop :=
  ∀ n, P14691304337327636460.a n = A227361 n

end A227361

/-! ## A227361.P12480954995500493114

`A000120(n)*A062157(n+1)+n`
-/

namespace A227361.P12480954995500493114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A062157 (n + 1) + (n : ℤ)

end

end A227361.P12480954995500493114

namespace A227361

/-- `A000120(n)*A062157(n+1)+n` -/
def P12480954995500493114.Spec : Prop :=
  ∀ n, P12480954995500493114.a n = A227361 n

end A227361

/-! ## A227361.P1029594851106412861

`A000120(n)*A009001(2*n)+n`
-/

namespace A227361.P1029594851106412861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A009001 (2 * n) + (n : ℤ)

end

end A227361.P1029594851106412861

namespace A227361

/-- `A000120(n)*A009001(2*n)+n` -/
def P1029594851106412861.Spec : Prop :=
  ∀ n, P1029594851106412861.a n = A227361 n

end A227361

/-! ## A227361.P7133913426877340400

`(2*n-A005187(n))/A033999(n)+n`
-/

namespace A227361.P7133913426877340400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - A005187 n : ℚ) / (A033999 n : ℚ) + (n : ℚ)

end

end A227361.P7133913426877340400

namespace A227361

/-- `(2*n-A005187(n))/A033999(n)+n` -/
def P7133913426877340400.Spec : Prop :=
  ∀ n, P7133913426877340400.a n = (A227361 n : ℚ)

end A227361

/-! ## A227361.P3616604798183159766

`A000120(n)*A009531(2*n+1)+n`
-/

namespace A227361.P3616604798183159766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A009531 (2 * n + 1) + (n : ℤ)

end

end A227361.P3616604798183159766

namespace A227361

/-- `A000120(n)*A009531(2*n+1)+n` -/
def P3616604798183159766.Spec : Prop :=
  ∀ n, P3616604798183159766.a n = A227361 n

end A227361

/-! ## A227361.P9110415538738967536

`A000120(n)*A056594(2*n)+n`
-/

namespace A227361.P9110415538738967536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A056594 (2 * n) + (n : ℤ)

end

end A227361.P9110415538738967536

namespace A227361

/-- `A000120(n)*A056594(2*n)+n` -/
def P9110415538738967536.Spec : Prop :=
  ∀ n, P9110415538738967536.a n = A227361 n

end A227361

/-! ## A227361.P2018501353646539629

`A000120(n)*A057077(2*n)+n`
-/

namespace A227361.P2018501353646539629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A057077 (2 * n) + (n : ℤ)

end

end A227361.P2018501353646539629

namespace A227361

/-- `A000120(n)*A057077(2*n)+n` -/
def P2018501353646539629.Spec : Prop :=
  ∀ n, P2018501353646539629.a n = A227361 n

end A227361

/-! ## A227361.P8899050629417441982

`A000120(n)*A034947(2*n+1)+n`
-/

namespace A227361.P8899050629417441982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A034947 (2 * n + 1) + (n : ℤ)

end

end A227361.P8899050629417441982

namespace A227361

/-- `A000120(n)*A034947(2*n+1)+n` -/
def P8899050629417441982.Spec : Prop :=
  ∀ n, P8899050629417441982.a n = A227361 n

end A227361

/-! ## A227361.P11069365116153824374

`A000120(n)*A117569(2*n+1)+n`
-/

namespace A227361.P11069365116153824374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A117569 (2 * n + 1) + (n : ℤ)

end

end A227361.P11069365116153824374

namespace A227361

/-- `A000120(n)*A117569(2*n+1)+n` -/
def P11069365116153824374.Spec : Prop :=
  ∀ n, P11069365116153824374.a n = A227361 n

end A227361

/-! ## A227361.P10787022635023906695

`A001222(A071044(n))*A057077(2*n)+n`
-/

namespace A227361.P10787022635023906695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A071044 n).toNat * A057077 (2 * n) + (n : ℤ)

end

end A227361.P10787022635023906695

namespace A227361

/-- `A001222(A071044(n))*A057077(2*n)+n` -/
def P10787022635023906695.Spec : Prop :=
  ∀ n, P10787022635023906695.a n = A227361 n

end A227361

/-!
# A227362: Distinct digits of n arranged in decreasing order.

The programs for A227362, there is no canonical definition to state claims against.
-/

/-! ## A227362.P1338277940419286771

`A137564(A004186(n))`
-/

namespace A227362.P1338277940419286771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A004186 n).toNat

end

end A227362.P1338277940419286771

/-! ## A227362.P5180155742059227539

`A262557(A086066(n))`
-/

namespace A227362.P5180155742059227539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262557 (A086066 n).toNat

end

end A227362.P5180155742059227539

/-! ## A227362.P15421542788682395208

`A137564(A108782(n)+n)`
-/

namespace A227362.P15421542788682395208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A108782 n + (n : ℤ)).toNat

end

end A227362.P15421542788682395208

/-! ## A227362.P3693048444725258764

`A337864(A108782(n)+n)`
-/

namespace A227362.P3693048444725258764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 (A108782 n + (n : ℤ)).toNat

end

end A227362.P3693048444725258764

/-! ## A227362.P12123084526654150233

`A337864(A004186(n))%A244112(n)`
-/

namespace A227362.P12123084526654150233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337864 (A004186 n).toNat) (A244112 n)

end

end A227362.P12123084526654150233

/-! ## A227362.P9142278338049030020

`A337864(A004186(n)%A007089(n+1))`
-/

namespace A227362.P9142278338049030020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 (Int.tmod (A004186 n) (A007089 (n + 1))).toNat

end

end A227362.P9142278338049030020

/-! ## A227362.P4234251698265617499

`A004186(gcd(n, (n-n*(1-val(∏{p}[n^3, #], 11)))/11))`
-/

namespace A227362.P4234251698265617499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (((n : ℤ) - (n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ)) : ℚ) / 11)))

end

end A227362.P4234251698265617499

/-!
# A227363: a(n) = n + (n-1)*(n-2) + (n-3)*(n-4)*(n-5) + (n-6)*(n-7)*(n-8)*(n-9) + ... + ...*(n-n).

The programs for A227363, there is no canonical definition to state claims against.
-/

/-! ## A227363.P11372274900264483981

`∑[A217615(n)%A302174(n)]`
-/

namespace A227363.P11372274900264483981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217615 n) (A302174 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227363.P11372274900264483981

/-! ## A227363.P8787557307530741504

`∑[or(1, A328335(A003242(n)))]-1`
-/

namespace A227363.P8787557307530741504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A328335 (A003242 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A227363.P8787557307530741504

/-! ## A227363.P14033392300464778936

`A003056(A095341(n+1)*A118168(n))`
-/

namespace A227363.P14033392300464778936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A095341 (n + 1) * A118168 n).toNat

end

end A227363.P14033392300464778936

/-! ## A227363.P5067452199405758650

`A357532(n+3)-A072865(A072884(n+1))`
-/

namespace A227363.P5067452199405758650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357532 (n + 3) - A072865 (A072884 (n + 1)).toNat

end

end A227363.P5067452199405758650

/-!
# A227364: a(n) = 1 + 2*3 + 4*5*6 + 7*8*9*10 + ... + ...*n (see Example lines).

The programs for A227364, there is no canonical definition to state claims against.
-/

/-! ## A227364.P13620625831570741183

`A191426(a(n-1)+2*(a(n-2)+3)-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A227364.P13620625831570741183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 7] fun n a =>
  A191426 (a (n - 1) + 2 * (a (n - 2) + 3) - 5).toNat

end

end A227364.P13620625831570741183

/-! ## A227364.P10762463517392079870

`A063647(A256599(n))+n`
-/

namespace A227364.P10762463517392079870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A256599 n).toNat + (n : ℤ)

end

end A227364.P10762463517392079870

/-! ## A227364.P13208527048688979097

`record[A007966(∑[A004164(n)])]`
-/

namespace A227364.P13208527048688979097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007966 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227364.P13208527048688979097

/-!
# A227366: a(0)=1, a(n+1) = a(n) + a(n-1)*a(n-2) + a(n-3)*a(n-4)*a(n-5) + a(n-6)*a(n-7)*a(n-8)*a(n-9) + ... + ...*a(0).

The programs for A227366, there is no canonical definition to state claims against.
-/

/-! ## A227366.P11085791409300801106

`A102827(A095981(n))`
-/

namespace A227366.P11085791409300801106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102827 (A095981 n).toNat

end

end A227366.P11085791409300801106

/-! ## A227366.P6213243371174209599

`A343822(A032160(n+2))`
-/

namespace A227366.P6213243371174209599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343822 (A032160 (n + 2)).toNat

end

end A227366.P6213243371174209599

/-! ## A227366.P14095450533620740463

`A185283(A076328(n+1))+floor(n/4)`
-/

namespace A227366.P14095450533620740463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A076328 (n + 1)).toNat + ⌊(n : ℚ) / 4⌋

end

end A227366.P14095450533620740463

/-! ## A227366.P17535659517188294180

`A001006(n)-A375125(A006478(n))`
-/

namespace A227366.P17535659517188294180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A375125 (A006478 n).toNat

end

end A227366.P17535659517188294180

/-!
# A227367: a(0)=1, a(n+1) = a(0) + a(1)*a(2) + a(3)*a(4)*a(5) + a(6)*a(7)*a(8)*a(9) + ... + ...*a(n).

The programs for A227367, there is no canonical definition to state claims against.
-/

/-! ## A227367.P6465747143522246729

`3*A333778(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A227367.P6465747143522246729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * A333778 (a (n - 1)).toNat

end

end A227367.P6465747143522246729

/-! ## A227367.P9280409658468807636

`3*A353723(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A227367.P9280409658468807636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * A353723 (a (n - 1)).toNat

end

end A227367.P9280409658468807636

/-! ## A227367.P8119586663024204665

`A053447(A052830(n))`
-/

namespace A227367.P8119586663024204665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (A052830 n).toNat

end

end A227367.P8119586663024204665

/-!
# A227368: a(n) = Index k where A227183(k) for the first time gets value n; the runlength binary code for minimally runlength-encoded unordered partition of size n.

The programs for A227368, there is no canonical definition to state claims against.
-/

/-! ## A227368.P15626209152977260865

`A227369(A227370(n))`
-/

namespace A227368.P15626209152977260865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227369 (A227370 n).toNat

end

end A227368.P15626209152977260865

/-! ## A227368.P17780180182558620871

`A227369(n-Δ[A266434(n^a(n-1))])` with `a(0)=1`
-/

namespace A227368.P17780180182558620871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A266434 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (n - 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227369 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A227368.P17780180182558620871

/-! ## A227368.P16929995168945008347

`A227369(Δ[A004737(n+1)%A040001(n)]+n)`
-/

namespace A227368.P16929995168945008347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004737 (n + 1)) (A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227369 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A227368.P16929995168945008347

/-! ## A227368.P5153975447897375807

`A227369(A227183(A227369(n)))`
-/

namespace A227368.P5153975447897375807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227369 (A227183 (A227369 n).toNat).toNat

end

end A227368.P5153975447897375807

/-!
# A227369: Positions where A227183 obtains new distinct values for the first time.

The programs for A227369, there is no canonical definition to state claims against.
-/

/-! ## A227369.P6257099694068599319

`A227368(A227370(n))`
-/

namespace A227369.P6257099694068599319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227368 (A227370 n).toNat

end

end A227369.P6257099694068599319

/-! ## A227369.P7294845113240693516

`A227368(n-Δ[A266434(n^a(n-1))])` with `a(0)=1`
-/

namespace A227369.P7294845113240693516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A266434 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (n - 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227368 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A227369.P7294845113240693516

/-! ## A227369.P12526016049505082831

`lt[0, char[A227368(n)]]`
-/

namespace A227369.P12526016049505082831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227368 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227369.P12526016049505082831

/-! ## A227369.P4677610261960135621

`record[A227368(A227183(n))]`
-/

namespace A227369.P4677610261960135621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227368 (A227183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227369.P4677610261960135621

/-! ## A227369.P17982622185791229178

`eq[A227368(A227183(n))², A000290(n)]`
-/

namespace A227369.P17982622185791229178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227368 (A227183 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227369.P17982622185791229178

/-! ## A227369.P2193185769039462857

`record[A227368(A161511(A003188(n)))]`
-/

namespace A227369.P2193185769039462857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227368 (A161511 (A003188 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227369.P2193185769039462857

/-!
# A227370: Permutation which maps between A227368 and A227369.

The programs for A227370, the canonical program `A227370.P2849202211286057301` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227370 has offset 0).

The definition of A227370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227370.P5189592390762905839

`A227183(A227369(n))`
-/

namespace A227370.P5189592390762905839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227183 (A227369 n).toNat

end

end A227370.P5189592390762905839

namespace A227370

/-- `A227183(A227369(n))` -/
def P5189592390762905839.Spec : Prop :=
  ∀ n, P5189592390762905839.a n = A227370 n

end A227370

/-! ## A227370.P2849202211286057301

`n-Δ[A266434(n*a(n-1))]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227370

/-- `n-Δ[A266434(n*a(n-1))]` -/
def P2849202211286057301.Spec : Prop :=
  ∀ n, P2849202211286057301.a n = A227370 n

theorem P2849202211286057301.correct : P2849202211286057301.Spec := by
  intro n
  simp only [A227370]

end A227370

/-! ## A227370.P1087543479038782762

`n-Δ[A266434(n^a(n-1))]` with `a(0)=1`
-/

namespace A227370.P1087543479038782762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A266434 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (n - 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A227370.P1087543479038782762

namespace A227370

/-- `n-Δ[A266434(n^a(n-1))]` -/
def P1087543479038782762.Spec : Prop :=
  ∀ n, P1087543479038782762.a n = A227370 n

end A227370

/-! ## A227370.P6324063256189530611

`Δ[ceil(sqrt(n+1))%A040001(n)]+n`
-/

namespace A227370.P6324063256189530611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (n + 1 : ℝ)⌉ (A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A227370.P6324063256189530611

namespace A227370

/-- `Δ[ceil(sqrt(n+1))%A040001(n)]+n` -/
def P6324063256189530611.Spec : Prop :=
  ∀ n, P6324063256189530611.a n = A227370 n

end A227370

/-! ## A227370.P12456310613361701525

`n-Δ[A266434(A003815(n))]`
-/

namespace A227370.P12456310613361701525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A003815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A227370.P12456310613361701525

namespace A227370

/-- `n-Δ[A266434(A003815(n))]` -/
def P12456310613361701525.Spec : Prop :=
  ∀ n, P12456310613361701525.a n = A227370 n

end A227370

/-! ## A227370.P15799465836342190107

`n-Δ[A266434(A237420(n))]`
-/

namespace A227370.P15799465836342190107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266434 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A227370.P15799465836342190107

namespace A227370

/-- `n-Δ[A266434(A237420(n))]` -/
def P15799465836342190107.Spec : Prop :=
  ∀ n, P15799465836342190107.a n = A227370 n

end A227370

/-! ## A227370.P15453471140600654523

`n-Δ[A266216(and(n, A266218(n+1)))]`
-/

namespace A227370.P15453471140600654523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266216 (Int.land (n : ℤ) (A266218 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A227370.P15453471140600654523

namespace A227370

/-- `n-Δ[A266216(and(n, A266218(n+1)))]` -/
def P15453471140600654523.Spec : Prop :=
  ∀ n, P15453471140600654523.a n = A227370 n

end A227370

/-! ## A227370.P10072645115904127877

`A040001(A227369(n))+n-A040001(n)`
-/

namespace A227370.P10072645115904127877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A227369 n).toNat + ((n : ℤ) - A040001 n)

end

end A227370.P10072645115904127877

namespace A227370

/-- `A040001(A227369(n))+n-A040001(n)` -/
def P10072645115904127877.Spec : Prop :=
  ∀ n, P10072645115904127877.a n = A227370 n

end A227370

/-!
# A227371: Numbers k such that prime(k) + reversal(prime(k)) is a square.

The programs for A227371, there is no canonical definition to state claims against.
-/

/-! ## A227371.P10645957660434664744

`A000720(A059799(n+1))`
-/

namespace A227371.P10645957660434664744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A059799 (n + 1)).toNat

end

end A227371.P10645957660434664744

/-! ## A227371.P17995985129708690268

`A000720(p?[A061230(n+1)])`
-/

namespace A227371.P17995985129708690268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A227371.P17995985129708690268

/-! ## A227371.P10901167050436863785

`A061395(p?[A061230(n+1)])`
-/

namespace A227371.P10901167050436863785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A227371.P10901167050436863785

/-! ## A227371.P17028490856632951865

`∑{d}[A059799(n+1), A061395(#)]`
-/

namespace A227371.P17028490856632951865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A227371.P17028490856632951865

/-!
# A227373: Antidiagonal sums of triangle A227372.

The programs for A227373, there is no canonical definition to state claims against.
-/

/-! ## A227373.P2169187397926519996

`A076885(A199102(n))`
-/

namespace A227373.P2169187397926519996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A199102 n).toNat

end

end A227373.P2169187397926519996

/-! ## A227373.P12439088550898845413

`A110656(A339063(n))`
-/

namespace A227373.P12439088550898845413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A339063 n).toNat

end

end A227373.P12439088550898845413

/-! ## A227373.P7762885913830821160

`A256502(A003289(n+1))`
-/

namespace A227373.P7762885913830821160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A003289 (n + 1)).toNat

end

end A227373.P7762885913830821160

/-! ## A227373.P16508168637445813111

`A036675(n)+A036593(A036629(n))`
-/

namespace A227373.P16508168637445813111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036675 n + A036593 (A036629 n).toNat

end

end A227373.P16508168637445813111

/-!
# A227374: G.f.: 1/(1 - x*(1-x^5)/(1 - x^2*(1-x^6)/(1 - x^3*(1-x^7)/(1 - x^4*(1-x^8)/(1 - x^5*(1-x^9)/(1 - ...)))))), a continued fraction.

The programs for A227374, there is no canonical definition to state claims against.
-/

/-! ## A227374.P12797266650261178942

`A185646(A052905(n+2))`
-/

namespace A227374.P12797266650261178942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A052905 (n + 2)).toNat

end

end A227374.P12797266650261178942

/-! ## A227374.P872055634875128228

`A185646(A056115(n)+10)`
-/

namespace A227374.P872055634875128228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A056115 n + 10).toNat

end

end A227374.P872055634875128228

/-! ## A227374.P17464832886659420219

`A185646(A046691(n+3)-1)`
-/

namespace A227374.P17464832886659420219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A046691 (n + 3) - 1).toNat

end

end A227374.P17464832886659420219

/-! ## A227374.P3816830333505838967

`A185646(A000217(n+5)-5)`
-/

namespace A227374.P3816830333505838967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A000217 (n + 5) - 5).toNat

end

end A227374.P3816830333505838967

/-! ## A227374.P17543973311553321778

`A185646(A161680(n+6)-5)`
-/

namespace A227374.P17543973311553321778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A161680 (n + 6) - 5).toNat

end

end A227374.P17543973311553321778

/-!
# A227375: G.f.: 1/(1 - x*(1-x^6)/(1 - x^2*(1-x^7)/(1 - x^3*(1-x^8)/(1 - x^4*(1-x^9)/(1 - x^5*(1-x^10)/(1 - ...)))))), a continued fraction.

The programs for A227375, there is no canonical definition to state claims against.
-/

/-! ## A227375.P15135796207429717985

`A185646(∑[n+6]+9)`
-/

namespace A227375.P15135796207429717985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A227375.P15135796207429717985

/-! ## A227375.P11872497060435814465

`A185646(A055999(n+3))^C(n, C(n, n²))`
-/

namespace A227375.P11872497060435814465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A055999 (n + 3)).toNat ^ Nat.choose n (Nat.choose n (n ^ 2))

end

end A227375.P11872497060435814465

/-! ## A227375.P7767528174593465087

`A185646(A055999(n+3))%A007689(n)`
-/

namespace A227375.P7767528174593465087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185646 (A055999 (n + 3)).toNat) (A007689 n)

end

end A227375.P7767528174593465087

/-! ## A227375.P15596265828877965540

`and(A057428(n+1), A185646(A055999(n+3)))`
-/

namespace A227375.P15596265828877965540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A185646 (A055999 (n + 3)).toNat)

end

end A227375.P15596265828877965540

/-! ## A227375.P153259100148622534

`A185646(A055999(n+3))+A000007(3*(n+1))`
-/

namespace A227375.P153259100148622534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 (A055999 (n + 3)).toNat + A000007 (3 * (n + 1))

end

end A227375.P153259100148622534

/-!
# A227376: G.f.: 1/(1 - x - x^2 - x^3 + x^5 + x^6 + x^7).

The programs for A227376, the canonical program `A227376.P11978753163755170615` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227376 has offset 0).

The definition of A227376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227376.P11978753163755170615

`a(n-1)+a(n-2)+a(n-3)-a(n-5)-a(n-6)-a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=12, a(6)=21`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A227376

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-5)-a(n-6)-a(n-7)` -/
def P11978753163755170615.Spec : Prop :=
  ∀ n, P11978753163755170615.a n = A227376 n

theorem P11978753163755170615.correct : P11978753163755170615.Spec := by
  intro n
  simp only [A227376]

end A227376

/-! ## A227376.P7585611726491508868

`A100196(Δ[A024557(n)])`
-/

namespace A227376.P7585611726491508868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (f1 (n + 1) - f1 n).toNat

end

end A227376.P7585611726491508868

namespace A227376

/-- `A100196(Δ[A024557(n)])` -/
def P7585611726491508868.Spec : Prop :=
  ∀ n, P7585611726491508868.a n = A227376 n

end A227376

/-! ## A227376.P8357852739372640532

`A126257(A293077(n+1)-2)`
-/

namespace A227376.P8357852739372640532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A293077 (n + 1) - 2).toNat

end

end A227376.P8357852739372640532

namespace A227376

/-- `A126257(A293077(n+1)-2)` -/
def P8357852739372640532.Spec : Prop :=
  ∀ n, P8357852739372640532.a n = A227376 n

end A227376

/-! ## A227376.P9634068294488078181

`A293078(n+1)-A057427((9*n)²)`
-/

namespace A227376.P9634068294488078181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293078 (n + 1) - A057427 ((9 * n) ^ 2)

end

end A227376.P9634068294488078181

namespace A227376

/-- `A293078(n+1)-A057427((9*n)²)` -/
def P9634068294488078181.Spec : Prop :=
  ∀ n, P9634068294488078181.a n = A227376 n

end A227376

/-! ## A227376.P13121899438845960736

`A293078(n+1)+A057428(A000129(n))`
-/

namespace A227376.P13121899438845960736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293078 (n + 1) + A057428 (A000129 n).toNat

end

end A227376.P13121899438845960736

namespace A227376

/-- `A293078(n+1)+A057428(A000129(n))` -/
def P13121899438845960736.Spec : Prop :=
  ∀ n, P13121899438845960736.a n = A227376 n

end A227376

/-!
# A227377: Limit of rows, when read in reverse, of triangle A227372.

The programs for A227377, there is no canonical definition to state claims against.
-/

/-! ## A227377.P1965893562833943105

`A227372(∑[∑[n]]+1)`
-/

namespace A227377.P1965893562833943105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227372 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227377.P1965893562833943105

/-!
# A227378: Smallest number with n = sum of distinct digits in decimal representation, cf. A217928.

The programs for A227378, there is no canonical definition to state claims against.
-/

/-! ## A227378.P9568877577595721500

`A086068(record[A086066(n)])`
-/

namespace A227378.P9568877577595721500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227378.P9568877577595721500

/-! ## A227378.P17380536198431814388

`A184955(A326626(n+1))+A051885(n)`
-/

namespace A227378.P17380536198431814388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A326626 (n + 1)).toNat + A051885 n

end

end A227378.P17380536198431814388

/-!
# A227379: Hankel determinants of order n of A225439(n): a(n) = det[A225439(i+j-1)], i,j=0..n, n>=0.

The programs for A227379, there is no canonical definition to state claims against.
-/

/-! ## A227379.P8766772789822031781

`A203432(Δ[n²])`
-/

namespace A227379.P8766772789822031781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203432 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A227379.P8766772789822031781

/-! ## A227379.P4456679825572842723

`A203434(Δ[n²])`
-/

namespace A227379.P4456679825572842723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203434 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A227379.P4456679825572842723

/-! ## A227379.P10421289606344078362

`3^n*A059486(n)`
-/

namespace A227379.P10421289606344078362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A059486 n

end

end A227379.P10421289606344078362

/-! ## A227379.P976962138311200391

`abs(A203432(2*n+1)-1)+1`
-/

namespace A227379.P976962138311200391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A203432 (2 * n + 1) - 1| + 1

end

end A227379.P976962138311200391

/-! ## A227379.P5325522000619360990

`record[A203432(A000265(n+1))]`
-/

namespace A227379.P5325522000619360990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203432 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227379.P5325522000619360990

/-!
# A227380: Doubling the first two of every four nonnegative numbers.

The programs for A227380, the canonical program `A227380.P17588488786740241967` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227380 has offset 0).

The definition of A227380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227380.P4207678393079769967

`2*A227316(n)/(n+1)`
-/

namespace A227380.P4207678393079769967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A227316 n : ℚ) / (n + 1 : ℚ)

end

end A227380.P4207678393079769967

namespace A227380

/-- `2*A227316(n)/(n+1)` -/
def P4207678393079769967.Spec : Prop :=
  ∀ n, P4207678393079769967.a n = (A227380 n : ℚ)

theorem P4207678393079769967.correct : P4207678393079769967.Spec := by
  intro n
  simp only [A227380, Nat.add_sub_cancel, A227380.P4207678393079769967.a, A227380.P17588488786740241967.a, A130658, A130658.P17554939015796868672.a, A227316, A227316.P17659401522069435075.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A227380

/-! ## A227380.P17588488786740241967

`n*A130658(n+2)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227380

/-- `n*A130658(n+2)` -/
def P17588488786740241967.Spec : Prop :=
  ∀ n, P17588488786740241967.a n = A227380 n

theorem P17588488786740241967.correct : P17588488786740241967.Spec := by
  intro n
  simp only [A227380]

end A227380

/-! ## A227380.P12761865736248105152

`n*gcd(2, C(n, 2))`
-/

namespace A227380.P12761865736248105152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 (Nat.choose n 2)

end

end A227380.P12761865736248105152

namespace A227380

/-- `n*gcd(2, C(n, 2))` -/
def P12761865736248105152.Spec : Prop :=
  ∀ n, (P12761865736248105152.a n : ℤ) = A227380 n

end A227380

/-! ## A227380.P16795194317280123473

`n%or(2, n)+n`
-/

namespace A227380.P16795194317280123473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 2 n + n

end

end A227380.P16795194317280123473

namespace A227380

/-- `n%or(2, n)+n` -/
def P16795194317280123473.Spec : Prop :=
  ∀ n, (P16795194317280123473.a n : ℤ) = A227380 n

end A227380

/-! ## A227380.P17172721479426017372

`n*log2(4-and(2, n))`
-/

namespace A227380.P17172721479426017372
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.logb 2 (4 - (Nat.land 2 n : ℤ) : ℝ)

end

end A227380.P17172721479426017372

namespace A227380

/-- `n*log2(4-and(2, n))` -/
def P17172721479426017372.Spec : Prop :=
  ∀ n, P17172721479426017372.a n = (A227380 n : ℝ)

end A227380

/-! ## A227380.P16269748918123052946

`n*and(2, n+2)!`
-/

namespace A227380.P16269748918123052946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (Nat.land 2 (n + 2))

end

end A227380.P16269748918123052946

namespace A227380

/-- `n*and(2, n+2)!` -/
def P16269748918123052946.Spec : Prop :=
  ∀ n, (P16269748918123052946.a n : ℤ) = A227380 n

end A227380

/-! ## A227380.P7886763441902247338

`n*(2-and(2, n))!`
-/

namespace A227380.P7886763441902247338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (2 - (Nat.land 2 n : ℤ)).toNat

end

end A227380.P7886763441902247338

namespace A227380

/-- `n*(2-and(2, n))!` -/
def P7886763441902247338.Spec : Prop :=
  ∀ n, (P7886763441902247338.a n : ℤ) = A227380 n

end A227380

/-! ## A227380.P9160930084369201245

`2*n/and(2, n)!`
-/

namespace A227380.P9160930084369201245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℚ) / (Nat.factorial (Nat.land 2 n) : ℚ))

end

end A227380.P9160930084369201245

namespace A227380

/-- `2*n/and(2, n)!` -/
def P9160930084369201245.Spec : Prop :=
  ∀ n, P9160930084369201245.a n = (A227380 n : ℚ)

end A227380

/-! ## A227380.P12084477292579018346

`n*C(2, and(2, n)!)`
-/

namespace A227380.P12084477292579018346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (Nat.factorial (Nat.land 2 n))

end

end A227380.P12084477292579018346

namespace A227380

/-- `n*C(2, and(2, n)!)` -/
def P12084477292579018346.Spec : Prop :=
  ∀ n, (P12084477292579018346.a n : ℤ) = A227380 n

end A227380

/-! ## A227380.P8876591995878504002

`n*xor(2, and(2, n))!`
-/

namespace A227380.P8876591995878504002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (Nat.xor 2 (Nat.land 2 n))

end

end A227380.P8876591995878504002

namespace A227380

/-- `n*xor(2, and(2, n))!` -/
def P8876591995878504002.Spec : Prop :=
  ∀ n, (P8876591995878504002.a n : ℤ) = A227380 n

end A227380

/-! ## A227380.P1294715384890579402

`n*(2-char[or(2, n)])`
-/

namespace A227380.P1294715384890579402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A227380.P1294715384890579402

namespace A227380

/-- `n*(2-char[or(2, n)])` -/
def P1294715384890579402.Spec : Prop :=
  ∀ n, P1294715384890579402.a n = A227380 n

end A227380

/-! ## A227380.P7139622811795595047

`n*(or(2, n)-n)!`
-/

namespace A227380.P7139622811795595047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial ((Nat.lor 2 n : ℤ) - (n : ℤ)).toNat

end

end A227380.P7139622811795595047

namespace A227380

/-- `n*(or(2, n)-n)!` -/
def P7139622811795595047.Spec : Prop :=
  ∀ n, (P7139622811795595047.a n : ℤ) = A227380 n

end A227380

/-! ## A227380.P10146610888140707662

`n*xor(n, or(2, n))!`
-/

namespace A227380.P10146610888140707662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (Nat.xor n (Nat.lor 2 n))

end

end A227380.P10146610888140707662

namespace A227380

/-- `n*xor(n, or(2, n))!` -/
def P10146610888140707662.Spec : Prop :=
  ∀ n, (P10146610888140707662.a n : ℤ) = A227380 n

end A227380

/-! ## A227380.P9401565732145128504

`n*(2-and(2, n)/2)`
-/

namespace A227380.P9401565732145128504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 - (Nat.land 2 n : ℚ) / 2)

end

end A227380.P9401565732145128504

namespace A227380

/-- `n*(2-and(2, n)/2)` -/
def P9401565732145128504.Spec : Prop :=
  ∀ n, P9401565732145128504.a n = (A227380 n : ℚ)

end A227380

/-! ## A227380.P4548112152296083445

`4*n/(and(2, n)+2)`
-/

namespace A227380.P4548112152296083445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℚ) / (Nat.land 2 n + 2 : ℚ))

end

end A227380.P4548112152296083445

namespace A227380

/-- `4*n/(and(2, n)+2)` -/
def P4548112152296083445.Spec : Prop :=
  ∀ n, P4548112152296083445.a n = (A227380 n : ℚ)

end A227380

/-! ## A227380.P2843280991919476150

`n*(2-and(1, C(n, 2)))`
-/

namespace A227380.P2843280991919476150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (Nat.land 1 (Nat.choose n 2) : ℤ))

end

end A227380.P2843280991919476150

namespace A227380

/-- `n*(2-and(1, C(n, 2)))` -/
def P2843280991919476150.Spec : Prop :=
  ∀ n, P2843280991919476150.a n = A227380 n

end A227380

/-! ## A227380.P14878034462849831888

`n*(char[and(n, -3)]+1)`
-/

namespace A227380.P14878034462849831888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1)

end

end A227380.P14878034462849831888

namespace A227380

/-- `n*(char[and(n, -3)]+1)` -/
def P14878034462849831888.Spec : Prop :=
  ∀ n, (P14878034462849831888.a n : ℤ) = A227380 n

end A227380

/-! ## A227380.P4810022635814972574

`n*sqrt(2^and(2, n+2))`
-/

namespace A227380.P4810022635814972574
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (2 ^ Nat.land 2 (n + 2) : ℝ)

end

end A227380.P4810022635814972574

namespace A227380

/-- `n*sqrt(2^and(2, n+2))` -/
def P4810022635814972574.Spec : Prop :=
  ∀ n, P4810022635814972574.a n = (A227380 n : ℝ)

end A227380

/-! ## A227380.P7579426622739517517

`2*n/sqrt(2^and(2, n))`
-/

namespace A227380.P7579426622739517517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) / Real.sqrt (2 ^ Nat.land 2 n : ℝ)

end

end A227380.P7579426622739517517

namespace A227380

/-- `2*n/sqrt(2^and(2, n))` -/
def P7579426622739517517.Spec : Prop :=
  ∀ n, P7579426622739517517.a n = (A227380 n : ℝ)

end A227380

/-! ## A227380.P6753851011886292833

`n*(2-floor(n/2)%2)`
-/

namespace A227380.P6753851011886292833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - Int.tmod ⌊(n : ℚ) / 2⌋ 2)

end

end A227380.P6753851011886292833

namespace A227380

/-- `n*(2-floor(n/2)%2)` -/
def P6753851011886292833.Spec : Prop :=
  ∀ n, P6753851011886292833.a n = A227380 n

end A227380

/-!
# A227381: Number of n X n 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(n+1) binary array having a sum of one, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227381, there is no canonical definition to state claims against.
-/

/-! ## A227381.P5294806645003388306

`A227385(∑[4*n]+1)`
-/

namespace A227381.P5294806645003388306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A227381.P5294806645003388306

/-! ## A227381.P4326633969118775544

`record[A003982(n)*A227385(n+1)]`
-/

namespace A227381.P4326633969118775544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A227385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227381.P4326633969118775544

/-! ## A227381.P10456128265967293617

`record[root(A227385(n+1), A143182(n))]`
-/

namespace A227381.P10456128265967293617
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A227385 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227381.P10456128265967293617

/-!
# A227382: Number of n X 3 0,1 arrays indicating 2 X 2 subblocks of some larger (n+1) X 4 binary array having a sum of one, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227382, there is no canonical definition to state claims against.
-/

/-! ## A227382.P10147755838897204889

`A227385(∑[n+2]+4)`
-/

namespace A227382.P10147755838897204889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A227382.P10147755838897204889

/-! ## A227382.P5622141952595346402

`record[A117906(n)*A227385(n+4)]`
-/

namespace A227382.P5622141952595346402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117906 n * A227385 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227382.P5622141952595346402

/-! ## A227382.P16738599252952854403

`record[A227385(n+4)/A110171(n)]`
-/

namespace A227382.P16738599252952854403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227385 (n + 4) : ℚ) / (A110171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227382.P16738599252952854403

/-! ## A227382.P13569481096830718879

`A227385(A167614(n+1))%A332175(n)`
-/

namespace A227382.P13569481096830718879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227385 (A167614 (n + 1)).toNat) (A332175 n)

end

end A227382.P13569481096830718879

/-! ## A227382.P14331039192837285008

`lcm(A020985(n), A227385(A167614(n+1)))`
-/

namespace A227382.P14331039192837285008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A227385 (A167614 (n + 1)).toNat)

end

end A227382.P14331039192837285008

/-!
# A227383: Number of nX4 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X5 binary array having a sum of one, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227383, there is no canonical definition to state claims against.
-/

/-! ## A227383.P5284975224274424338

`A227385(A374004(n+1))`
-/

namespace A227383.P5284975224274424338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (A374004 (n + 1)).toNat

end

end A227383.P5284975224274424338

/-! ## A227383.P12385737463274831969

`A227385(A141214(n)+7)`
-/

namespace A227383.P12385737463274831969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (A141214 n + 7).toNat

end

end A227383.P12385737463274831969

/-! ## A227383.P8152187349408258734

`A227385(A052905(n)+9)`
-/

namespace A227383.P8152187349408258734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (A052905 n + 9).toNat

end

end A227383.P8152187349408258734

/-! ## A227383.P5139504725548869900

`A227385(A055999(n)+10)`
-/

namespace A227383.P5139504725548869900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (A055999 n + 10).toNat

end

end A227383.P5139504725548869900

/-! ## A227383.P886007758223473029

`A227385(eq[5, A066657(n)])`
-/

namespace A227383.P886007758223473029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227383.P886007758223473029

/-!
# A227384: Number of nX5 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X6 binary array having a sum of one, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227384, there is no canonical definition to state claims against.
-/

/-! ## A227384.P1258647508530770624

`A227385(A374005(n+1))`
-/

namespace A227384.P1258647508530770624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (A374005 (n + 1)).toNat

end

end A227384.P1258647508530770624

/-! ## A227384.P3158300977468017640

`A227385(A155212(n)+13)`
-/

namespace A227384.P3158300977468017640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (A155212 n + 13).toNat

end

end A227384.P3158300977468017640

/-! ## A227384.P11386379621301767023

`A227385(A056000(n)+15)`
-/

namespace A227384.P11386379621301767023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (A056000 n + 15).toNat

end

end A227384.P11386379621301767023

/-! ## A227384.P4955776218050969272

`A227385(eq[7, A066657(n)])`
-/

namespace A227384.P4955776218050969272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227384.P4955776218050969272

/-! ## A227384.P2279960249357778776

`A227385(A166136(n+3)-1)`
-/

namespace A227384.P2279960249357778776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227385 (A166136 (n + 3) - 1).toNat

end

end A227384.P2279960249357778776

/-!
# A227385: T(n,k)=Number of nXk 0,1 arrays indicating 2X2 subblocks of some larger (n+1)X(k+1) binary array having a sum of one, with rows and columns of the latter in lexicographically nondecreasing order.

The programs for A227385, there is no canonical definition to state claims against.
-/

/-! ## A227385.P2762441297663580699

`A316843(A298117(n+1))`
-/

namespace A227385.P2762441297663580699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A298117 (n + 1)).toNat

end

end A227385.P2762441297663580699

/-! ## A227385.P3109933959614795319

`A074279(5*A257614(n))`
-/

namespace A227385.P3109933959614795319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (5 * A257614 n).toNat

end

end A227385.P3109933959614795319

/-! ## A227385.P16773474847787911554

`A251629(A227165(n+1)+1)`
-/

namespace A227385.P16773474847787911554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251629 (A227165 (n + 1) + 1).toNat

end

end A227385.P16773474847787911554

/-! ## A227385.P16808520457236487131

`A002271(A141387(n)+A067049(n))`
-/

namespace A227385.P16808520457236487131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002271 (A141387 n + A067049 n).toNat

end

end A227385.P16808520457236487131

/-! ## A227385.P8369162110656483941

`A227125(n+1)+A069283(A173890(n))`
-/

namespace A227385.P8369162110656483941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (n + 1) + A069283 (A173890 n).toNat

end

end A227385.P8369162110656483941

/-!
# A227386: a(n) = n - 1 - a(a(n-1)) - a(a(a(n-2))) - a(a(a(a(n-3)))) - a(a(a(a(a(n-4))))) - ... with a(0) = 0.

The programs for A227386, there is no canonical definition to state claims against.
-/

/-! ## A227386.P14931634185081928413

`a(n-1)+a(n-a(n-1))-a(a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A227386.P14931634185081928413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + (a ((n : ℤ) - a (n - 1)).toNat - a (a (n - 1)).toNat)

end

end A227386.P14931634185081928413

/-! ## A227386.P4236519426753098086

`a(n-1)-(a(a(n-1))-a(n-a(n-1)))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A227386.P4236519426753098086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) - (a (a (n - 1)).toNat - a ((n : ℤ) - a (n - 1)).toNat)

end

end A227386.P4236519426753098086

/-! ## A227386.P18363799522407781091

`∑[A284388(A015919(A073301(n+1)))]`
-/

namespace A227386.P18363799522407781091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284388 (A015919 (A073301 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227386.P18363799522407781091

/-!
# A227388: Smallest m such that A226390(m) = n.

The programs for A227388, there is no canonical definition to state claims against.
-/

/-! ## A227388.P4892045388169104162

`A227389(n)+a(n-1)` with `a(0)=1`
-/

namespace A227388.P4892045388169104162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A227389 n + a (n - 1)

end

end A227388.P4892045388169104162

/-! ## A227388.P7089014610263937056

`∑[A227389(A028310(n))]`
-/

namespace A227388.P7089014610263937056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227388.P7089014610263937056

/-! ## A227388.P2149731768641387146

`∑[A227389(A000007(n)+n)]`
-/

namespace A227388.P2149731768641387146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227388.P2149731768641387146

/-! ## A227388.P9741777788207898319

`∑[A227389(gcd(n, A008574(n)))]`
-/

namespace A227388.P9741777788207898319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (Int.gcd (n : ℤ) (A008574 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227388.P9741777788207898319

/-! ## A227388.P3355749512557668268

`∑[A227389(or(n, A000007(n)))]`
-/

namespace A227388.P3355749512557668268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227388.P3355749512557668268

/-! ## A227388.P13516541356785198230

`∑[A227389(1-A057427(n)+n)]`
-/

namespace A227388.P13516541356785198230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (1 - A057427 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227388.P13516541356785198230

/-! ## A227388.P3009896614162997572

`∪[A051741(n+1), A070694(n+1)]`
-/

namespace A227388.P3009896614162997572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227388.P3009896614162997572

/-! ## A227388.P10791196932119699268

`∑[A227389(val(A004016(n)+1, 2)+n)]`
-/

namespace A227388.P10791196932119699268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (SequenceMachineLib.valuation (A004016 n + 1).toNat 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227388.P10791196932119699268

/-! ## A227388.P9712777540094839323

`∑[A227389(and(1, A227389(n+1))+n)]`
-/

namespace A227388.P9712777540094839323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (Int.land 1 (A227389 (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227388.P9712777540094839323

/-! ## A227388.P378473082248489041

`∑[A227389(n^(A226390(n+1)-A051742(n+1)))]`
-/

namespace A227388.P378473082248489041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A226390 (n + 1) - A051742 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227388.P378473082248489041

/-! ## A227388.P10956105149212736082

`A051741(n+1)-(A227389(n+1)+A227389(n+2))`
-/

namespace A227388.P10956105149212736082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051741 (n + 1) - (A227389 (n + 1) + A227389 (n + 2))

end

end A227388.P10956105149212736082

/-! ## A227388.P767530383976171393

`A051741(A226390(a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A227388.P767530383976171393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A051741 (A226390 (a (n - 2)).toNat).toNat

end

end A227388.P767530383976171393

/-! ## A227388.P4040304956433064809

`∑[A227389(A007318(∑[n]+1))]`
-/

namespace A227388.P4040304956433064809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227388.P4040304956433064809

/-!
# A227389: Run lengths in A226390.

The programs for A227389, there is no canonical definition to state claims against.
-/

/-! ## A227389.P7157711254560716751

`Δ[A227388(n+1)]`
-/

namespace A227389.P7157711254560716751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227389.P7157711254560716751

/-! ## A227389.P10641559968038185837

`abs(Δ[A227388(Δ[n²]-n)])`
-/

namespace A227389.P10641559968038185837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A227389.P10641559968038185837

/-! ## A227389.P14925460809767678361

`A227388(n+2)-A227388(n+1)`
-/

namespace A227389.P14925460809767678361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (n + 2) - A227388 (n + 1)

end

end A227389.P14925460809767678361

/-! ## A227389.P7642962579069249617

`A004525(2*Δ[A227388(Δ[n²]-n)])`
-/

namespace A227389.P7642962579069249617
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * (f1 (n + 1) - f1 n)).toNat

end

end A227389.P7642962579069249617

/-! ## A227389.P17714849951704262386

`A025480(2*Δ[A227388(Δ[n²]-n)])`
-/

namespace A227389.P17714849951704262386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (2 * (f1 (n + 1) - f1 n)).toNat

end

end A227389.P17714849951704262386

/-! ## A227389.P7034673325346674728

`A008486(Δ[A227388(Δ[n²]-n)])/3`
-/

namespace A227389.P7034673325346674728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (f1 (n + 1) - f1 n).toNat : ℚ) / 3

end

end A227389.P7034673325346674728

/-! ## A227389.P6057702388837332970

`Δ[A227388(Δ[n²]-n)]%A014206(n)`
-/

namespace A227389.P6057702388837332970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A014206 n)

end

end A227389.P6057702388837332970

/-! ## A227389.P5023049181026572762

`Δ[A227388(Δ[n²]-n)]-A010673(2*n)`
-/

namespace A227389.P5023049181026572762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010673 (2 * n)

end

end A227389.P5023049181026572762

/-! ## A227389.P11417406991176469883

`Δ[A227388(Δ[n²]-n)]-2%A000034(n)`
-/

namespace A227389.P11417406991176469883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod 2 (A000034 n)

end

end A227389.P11417406991176469883

/-! ## A227389.P15410544836792682922

`Δ[A051741(A051742(a(n-1)))]` with `a(0)=1, a(1)=2`
-/

namespace A227389.P15410544836792682922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A051741 (A051742 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227389.P15410544836792682922

/-! ## A227389.P178335072644901310

`Δ[record[A227388(A193592(n))]]`
-/

namespace A227389.P178335072644901310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227389.P178335072644901310

/-!
# A227391: a(n) = round(3*(4/3)^n).

The programs for A227391, the canonical program `A227391.P2930647343791725049` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227391 has offset 0).

The definition of A227391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 797 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227391.P2930647343791725049

`round(3*(3/4)^A001489(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A227391

/-- `round(3*(3/4)^A001489(n))` -/
def P2930647343791725049.Spec : Prop :=
  ∀ n, P2930647343791725049.a n = A227391 n

theorem P2930647343791725049.correct : P2930647343791725049.Spec := by
  intro n
  simp only [A227391]

end A227391

/-! ## A227391.P14846181207044272986

`round(4^n/3^(n-1))`
-/

namespace A227391.P14846181207044272986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n : ℚ) / (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A227391.P14846181207044272986

namespace A227391

/-- `round(4^n/3^(n-1))` -/
def P14846181207044272986.Spec : Prop :=
  ∀ n, P14846181207044272986.a n = A227391 n

end A227391

/-! ## A227391.P873913351090120465

`A216256(floor(sqrt(A035075(n+1))))`
-/

namespace A227391.P873913351090120465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (Int.sqrt (A035075 (n + 1))).toNat

end

end A227391.P873913351090120465

namespace A227391

/-- `A216256(floor(sqrt(A035075(n+1))))` -/
def P873913351090120465.Spec : Prop :=
  ∀ n, P873913351090120465.a n = A227391 n

end A227391

/-! ## A227391.P10672078591821817216

`A216256(ceil(sqrt(A035075(n+1))))`
-/

namespace A227391.P10672078591821817216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 ⌈Real.sqrt (A035075 (n + 1) : ℝ)⌉.toNat

end

end A227391.P10672078591821817216

namespace A227391

/-- `A216256(ceil(sqrt(A035075(n+1))))` -/
def P10672078591821817216.Spec : Prop :=
  ∀ n, P10672078591821817216.a n = A227391 n

end A227391

/-! ## A227391.P8849777803194727397

`A216256(round(sqrt(A035075(n+1))))`
-/

namespace A227391.P8849777803194727397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (SequenceMachineLib.roundAway (Real.sqrt (A035075 (n + 1) : ℝ))).toNat

end

end A227391.P8849777803194727397

namespace A227391

/-- `A216256(round(sqrt(A035075(n+1))))` -/
def P8849777803194727397.Spec : Prop :=
  ∀ n, P8849777803194727397.a n = A227391 n

end A227391

/-!
# A227394: The maximum value of x^4(n-x)(x-1) for x in 1..n is reached for x = a(n).

The programs for A227394, there is no canonical definition to state claims against.
-/

/-! ## A227394.P14510596941535833916

`floor(log(3)^log2(n+1)+n/log(3)^2)`
-/

namespace A227394.P14510596941535833916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (3 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ)) + (n : ℝ) / Real.log (3 : ℝ) ^ 2⌋

end

end A227394.P14510596941535833916

/-! ## A227394.P9230241844417400343

`ceil(sqrt((A118312(n)+n)/sinh(3)))`
-/

namespace A227394.P9230241844417400343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A118312 n + (n : ℤ) : ℝ) / Real.sinh (3 : ℝ))⌉

end

end A227394.P9230241844417400343

/-! ## A227394.P13885214850135482043

`ceil(A007904(n)/(n²+3+n))`
-/

namespace A227394.P13885214850135482043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007904 n : ℚ) / (n ^ 2 + 3 + n : ℚ)⌉

end

end A227394.P13885214850135482043

/-! ## A227394.P4683317617906321236

`A248148(a(n-1))-a(n-1)+n` with `a(0)=1`
-/

namespace A227394.P4683317617906321236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248148 (a (n - 1)).toNat - a (n - 1) + (n : ℤ)

end

end A227394.P4683317617906321236

/-! ## A227394.P10429863373598698395

`A033810(A046691(n+5))-6`
-/

namespace A227394.P10429863373598698395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A046691 (n + 5)).toNat - 6

end

end A227394.P10429863373598698395

/-! ## A227394.P16570756136130501391

`ceil(∑[A010001(n)]/A294774(n))`
-/

namespace A227394.P16570756136130501391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A294774 n : ℚ)⌉

end

end A227394.P16570756136130501391

/-! ## A227394.P2350361364198828449

`ceil(A299261(n)/Δ[A266759(n)])`
-/

namespace A227394.P2350361364198828449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299261 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A227394.P2350361364198828449

/-! ## A227394.P118361816131126211

`A002024(A260732(n)+A123108(n))`
-/

namespace A227394.P118361816131126211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A260732 n + A123108 n).toNat

end

end A227394.P118361816131126211

/-! ## A227394.P3850841251434591403

`A000196(∑[A232681(n+1)-A000034(n)])`
-/

namespace A227394.P3850841251434591403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232681 (n + 1) - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227394.P3850841251434591403

/-!
# A227395: Expansion of q^2 * phi(-q) * psi(q^16) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A227395, there is no canonical definition to state claims against.
-/

/-! ## A227395.P9267520461364146814

`(-1)^n*A255258(n+2)`
-/

namespace A227395.P9267520461364146814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A255258 (n + 2)

end

end A227395.P9267520461364146814

/-! ## A227395.P12039408462785679574

`A255258(n+2)*A309873(n+1)`
-/

namespace A227395.P12039408462785679574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255258 (n + 2) * A309873 (n + 1)

end

end A227395.P12039408462785679574

/-! ## A227395.P4034050812516981538

`∑[n+1]%2*A129134(n+2)`
-/

namespace A227395.P4034050812516981538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ) * A129134 (n + 2)

end

end A227395.P4034050812516981538

/-! ## A227395.P67214320378076875

`A255258(n+2)/A121587(2^val(n+1, 2))`
-/

namespace A227395.P67214320378076875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255258 (n + 2) : ℚ) / (A121587 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A227395.P67214320378076875

/-!
# A227396: Triangle A074909(n) with the first column equal to 1 followed by -A000027(n) instead of A000012.

The programs for A227396, the canonical program `A227396.P8334619770337946253` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227396 has offset 0).

The definition of A227396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227396.P5719540524546323582

`A074909(n)-char[∑[n+1]]*A126988(n+1)`
-/

namespace A227396.P5719540524546323582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A126988 (n + 1)

end

end A227396.P5719540524546323582

namespace A227396

/-- `A074909(n)-char[∑[n+1]]*A126988(n+1)` -/
def P5719540524546323582.Spec : Prop :=
  ∀ n, P5719540524546323582.a n = A227396 n

end A227396

/-! ## A227396.P8334619770337946253

`A074909(n)-A127648(A316669(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A227396

/-- `A074909(n)-A127648(A316669(n+1))` -/
def P8334619770337946253.Spec : Prop :=
  ∀ n, P8334619770337946253.a n = A227396 n

theorem P8334619770337946253.correct : P8334619770337946253.Spec := by
  intro n
  simp only [A227396]

end A227396

/-! ## A227396.P13395956834319419635

`A074909(n)-A014430(n)*A073424(n)`
-/

namespace A227396.P13395956834319419635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A014430 n * A073424 n

end

end A227396.P13395956834319419635

namespace A227396

/-- `A074909(n)-A014430(n)*A073424(n)` -/
def P13395956834319419635.Spec : Prop :=
  ∀ n, P13395956834319419635.a n = A227396 n

end A227396

/-! ## A227396.P8640767300219775759

`A074909(n)-A051597(n)*A073424(n)`
-/

namespace A227396.P8640767300219775759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A051597 n * A073424 n

end

end A227396.P8640767300219775759

namespace A227396

/-- `A074909(n)-A051597(n)*A073424(n)` -/
def P8640767300219775759.Spec : Prop :=
  ∀ n, P8640767300219775759.a n = A227396 n

end A227396

/-! ## A227396.P7878195079556064473

`A074909(n)-A023532(n)*A103516(n)`
-/

namespace A227396.P7878195079556064473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A023532 n * A103516 n

end

end A227396.P7878195079556064473

namespace A227396

/-- `A074909(n)-A023532(n)*A103516(n)` -/
def P7878195079556064473.Spec : Prop :=
  ∀ n, P7878195079556064473.a n = A227396 n

end A227396

/-! ## A227396.P16295900180398888735

`or(Δ[A130296(n+1)], A325191(n))`
-/

namespace A227396.P16295900180398888735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A325191 n)

end

end A227396.P16295900180398888735

namespace A227396

/-- `or(Δ[A130296(n+1)], A325191(n))` -/
def P16295900180398888735.Spec : Prop :=
  ∀ n, P16295900180398888735.a n = A227396 n

end A227396

/-! ## A227396.P12539918097540886903

`A074909(n)-A059298(n)*A073424(n)`
-/

namespace A227396.P12539918097540886903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A059298 n * A073424 n

end

end A227396.P12539918097540886903

namespace A227396

/-- `A074909(n)-A059298(n)*A073424(n)` -/
def P12539918097540886903.Spec : Prop :=
  ∀ n, P12539918097540886903.a n = A227396 n

end A227396

/-! ## A227396.P2026407695983517958

`A074909(n)-A027656(A255545(n+1))`
-/

namespace A227396.P2026407695983517958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n - A027656 (A255545 (n + 1)).toNat

end

end A227396.P2026407695983517958

namespace A227396

/-- `A074909(n)-A027656(A255545(n+1))` -/
def P2026407695983517958.Spec : Prop :=
  ∀ n, P2026407695983517958.a n = A227396 n

end A227396

/-! ## A227396.P371809370001716404

`Δ[∑[A256595(n)]-A074909(n)]`
-/

namespace A227396.P371809370001716404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256595 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A227396.P371809370001716404

namespace A227396

/-- `Δ[∑[A256595(n)]-A074909(n)]` -/
def P371809370001716404.Spec : Prop :=
  ∀ n, P371809370001716404.a n = A227396 n

end A227396

/-! ## A227396.P6389141247864386039

`A256595(n+1)-Δ[A074909(n)]`
-/

namespace A227396.P6389141247864386039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256595 (n + 1) - (f1 (n + 1) - f1 n)

end

end A227396.P6389141247864386039

namespace A227396

/-- `A256595(n+1)-Δ[A074909(n)]` -/
def P6389141247864386039.Spec : Prop :=
  ∀ n, P6389141247864386039.a n = A227396 n

end A227396

/-!
# A227397: Related to Pisano periods: Numbers k such that the period of Fibonacci numbers mod k equals k+2.

The programs for A227397, there is no canonical definition to state claims against.
-/

/-! ## A227397.P16611653796942341312

`eq[n+3, A001175(n+1)]+1`
-/

namespace A227397.P16611653796942341312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A227397.P16611653796942341312

/-! ## A227397.P4553520280373630763

`eq[n+2, A001175(A028310(n))]`
-/

namespace A227397.P4553520280373630763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227397.P4553520280373630763

/-! ## A227397.P17067287892770387038

`eq[A008619(n), A281230(A233583(n+1))]`
-/

namespace A227397.P17067287892770387038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227397.P17067287892770387038

/-! ## A227397.P17695773902358743681

`eq[A029579(n), A281230(A233583(n+1))]`
-/

namespace A227397.P17695773902358743681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227397.P17695773902358743681

/-! ## A227397.P17030733001676344694

`eq[A131732(n), A281230(A233583(n+1))]`
-/

namespace A227397.P17030733001676344694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227397.P17030733001676344694

/-!
# A227398: Expansion of chi(x^3) / chi(x) in powers of x where chi() is a Ramanujan theta function.

The programs for A227398, there is no canonical definition to state claims against.
-/

/-! ## A227398.P17737203572562808823

`(-1)^n*A003105(n)`
-/

namespace A227398.P17737203572562808823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A003105 n

end

end A227398.P17737203572562808823

/-! ## A227398.P13802577665243851278

`A003105(n)*A033999(n)`
-/

namespace A227398.P13802577665243851278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n * A033999 n

end

end A227398.P13802577665243851278

/-! ## A227398.P17032405769098718551

`A003105(A028310(n))/(-1)^n`
-/

namespace A227398.P17032405769098718551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003105 (A028310 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A227398.P17032405769098718551

/-! ## A227398.P5585600450003680155

`A003105(n)/(1-2*A000035(n))`
-/

namespace A227398.P5585600450003680155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003105 n : ℚ) / (1 - 2 * A000035 n : ℚ)

end

end A227398.P5585600450003680155

/-! ## A227398.P12715042964748940104

`A003105(n)/A070048(n)*A116498(n)`
-/

namespace A227398.P12715042964748940104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003105 n : ℚ) / (A070048 n : ℚ) * (A116498 n : ℚ)

end

end A227398.P12715042964748940104

/-! ## A227398.P8296593486951045762

`A003105(n)*A138076(1-A109613(n)+n)`
-/

namespace A227398.P8296593486951045762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n * A138076 (1 - A109613 n + (n : ℤ)).toNat

end

end A227398.P8296593486951045762

/-! ## A227398.P11441663737247376739

`A003105(n)*A010815(A001318(2*n))`
-/

namespace A227398.P11441663737247376739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 n * A010815 (A001318 (2 * n)).toNat

end

end A227398.P11441663737247376739

