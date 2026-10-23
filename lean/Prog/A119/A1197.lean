import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A119700: a(n) = n*binomial(2*n, n)*Fibonacci(n)^2.

The programs for A119700, there is no canonical definition to state claims against.
-/

/-! ## A119700.P9306650432074402630

`n*C(2*n, n)*A000045(n)²`
-/

namespace A119700.P9306650432074402630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose (2 * n) n : ℤ) * A000045 n ^ 2

end

end A119700.P9306650432074402630

/-! ## A119700.P12421854335200354291

`A005430(n)*A007598(n)`
-/

namespace A119700.P12421854335200354291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n * A007598 n

end

end A119700.P12421854335200354291

/-! ## A119700.P4119907385607716483

`A000045(n)*A119701(n)`
-/

namespace A119700.P4119907385607716483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A119701 n

end

end A119700.P4119907385607716483

/-! ## A119700.P12635860140558977602

`A000984(n)*A169630(n)`
-/

namespace A119700.P12635860140558977602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A169630 n

end

end A119700.P12635860140558977602

/-! ## A119700.P759108182286812946

`A000045(n)²*A005430(n)`
-/

namespace A119700.P759108182286812946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * A005430 n

end

end A119700.P759108182286812946

/-! ## A119700.P16170105374506756661

`n*A000984(n)*A007598(n)`
-/

namespace A119700.P16170105374506756661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000984 n * A007598 n)

end

end A119700.P16170105374506756661

/-! ## A119700.P6906819200546302254

`A324969(n+1)²*A005430(n)`
-/

namespace A119700.P6906819200546302254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) ^ 2 * A005430 n

end

end A119700.P6906819200546302254

/-!
# A119701: a(n) = n*binomial(2*n, n)*Fibonacci(n).

The programs for A119701, the canonical program `A119701.P9680759370316718728` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119701 has offset 0).

The definition of A119701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119701.P5481239817304309140

`n*A119692(n)`
-/

namespace A119701.P5481239817304309140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A119692 n

end

end A119701.P5481239817304309140

namespace A119701

/-- `n*A119692(n)` -/
def P5481239817304309140.Spec : Prop :=
  ∀ n, P5481239817304309140.a n = A119701 n

end A119701

/-! ## A119701.P9680759370316718728

`(n+1)*A119697(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119701

/-- `(n+1)*A119697(n)` -/
def P9680759370316718728.Spec : Prop :=
  ∀ n, P9680759370316718728.a n = A119701 n

theorem P9680759370316718728.correct : P9680759370316718728.Spec := by
  intro n
  simp only [A119701]

end A119701

/-! ## A119701.P478666259985646878

`2*n*A119693(n)`
-/

namespace A119701.P478666259985646878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A119693 n)

end

end A119701.P478666259985646878

namespace A119701

/-- `2*n*A119693(n)` -/
def P478666259985646878.Spec : Prop :=
  ∀ n, P478666259985646878.a n = A119701 n

end A119701

/-! ## A119701.P2194306073047928739

`∑[2*n]*A119694(n)`
-/

namespace A119701.P2194306073047928739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A119694 n

end

end A119701.P2194306073047928739

namespace A119701

/-- `∑[2*n]*A119694(n)` -/
def P2194306073047928739.Spec : Prop :=
  ∀ n, P2194306073047928739.a n = A119701 n

end A119701

/-! ## A119701.P2864694749442307003

`n*C(2*n, n)*A000045(n)`
-/

namespace A119701.P2864694749442307003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (2 * n) n : ℤ) * A000045 n)

end

end A119701.P2864694749442307003

namespace A119701

/-- `n*C(2*n, n)*A000045(n)` -/
def P2864694749442307003.Spec : Prop :=
  ∀ n, P2864694749442307003.a n = A119701 n

end A119701

/-! ## A119701.P10773569441381305820

`A000045(n)*A005430(n)`
-/

namespace A119701.P10773569441381305820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A005430 n

end

end A119701.P10773569441381305820

namespace A119701

/-- `A000045(n)*A005430(n)` -/
def P10773569441381305820.Spec : Prop :=
  ∀ n, P10773569441381305820.a n = A119701 n

end A119701

/-! ## A119701.P16717480228133527290

`A000984(n)*A045925(n)`
-/

namespace A119701.P16717480228133527290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A045925 n

end

end A119701.P16717480228133527290

namespace A119701

/-- `A000984(n)*A045925(n)` -/
def P16717480228133527290.Spec : Prop :=
  ∀ n, P16717480228133527290.a n = A119701 n

end A119701

/-! ## A119701.P5387492605503938728

`A001791(n)*A099920(n)`
-/

namespace A119701.P5387492605503938728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 n * A099920 n

end

end A119701.P5387492605503938728

namespace A119701

/-- `A001791(n)*A099920(n)` -/
def P5387492605503938728.Spec : Prop :=
  ∀ n, P5387492605503938728.a n = A119701 n

end A119701

/-! ## A119701.P1025000443283840986

`A068875(n)*A390525(n)`
-/

namespace A119701.P1025000443283840986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n * A390525 n

end

end A119701.P1025000443283840986

namespace A119701

/-- `A068875(n)*A390525(n)` -/
def P1025000443283840986.Spec : Prop :=
  ∀ n, P1025000443283840986.a n = A119701 n

end A119701

/-! ## A119701.P11865831288017078564

`A005430(n)*A324969(n+1)`
-/

namespace A119701.P11865831288017078564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n * A324969 (n + 1)

end

end A119701.P11865831288017078564

namespace A119701

/-- `A005430(n)*A324969(n+1)` -/
def P11865831288017078564.Spec : Prop :=
  ∀ n, P11865831288017078564.a n = A119701 n

end A119701

/-! ## A119701.P8701850399402772881

`A262543(n+1)*A390525(n)`
-/

namespace A119701.P8701850399402772881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262543 (n + 1) * A390525 n

end

end A119701.P8701850399402772881

namespace A119701

/-- `A262543(n+1)*A390525(n)` -/
def P8701850399402772881.Spec : Prop :=
  ∀ n, P8701850399402772881.a n = A119701 n

end A119701

/-! ## A119701.P207662005976718303

`A001405(2*n)*A045925(n)`
-/

namespace A119701.P207662005976718303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) * A045925 n

end

end A119701.P207662005976718303

namespace A119701

/-- `A001405(2*n)*A045925(n)` -/
def P207662005976718303.Spec : Prop :=
  ∀ n, P207662005976718303.a n = A119701 n

end A119701

/-! ## A119701.P17495518136688603341

`A000045(n)*A100071(2*n)`
-/

namespace A119701.P17495518136688603341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A100071 (2 * n)

end

end A119701.P17495518136688603341

namespace A119701

/-- `A000045(n)*A100071(2*n)` -/
def P17495518136688603341.Spec : Prop :=
  ∀ n, P17495518136688603341.a n = A119701 n

end A119701

/-! ## A119701.P1181931967161767942

`A037952(2*n)*A099920(n)`
-/

namespace A119701.P1181931967161767942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n) * A099920 n

end

end A119701.P1181931967161767942

namespace A119701

/-- `A037952(2*n)*A099920(n)` -/
def P1181931967161767942.Spec : Prop :=
  ∀ n, P1181931967161767942.a n = A119701 n

end A119701

/-! ## A119701.P4247154113869569755

`A000045(n)*A212303(2*n)`
-/

namespace A119701.P4247154113869569755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A212303 (2 * n)

end

end A119701.P4247154113869569755

namespace A119701

/-- `A000045(n)*A212303(2*n)` -/
def P4247154113869569755.Spec : Prop :=
  ∀ n, P4247154113869569755.a n = A119701 n

end A119701

/-! ## A119701.P1673210683852460192

`A000045(n)*A218073(2*n)`
-/

namespace A119701.P1673210683852460192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A218073 (2 * n)

end

end A119701.P1673210683852460192

namespace A119701

/-- `A000045(n)*A218073(2*n)` -/
def P1673210683852460192.Spec : Prop :=
  ∀ n, P1673210683852460192.a n = A119701 n

end A119701

/-! ## A119701.P14177549739521341818

`n*A000045(n)*A000984(n)`
-/

namespace A119701.P14177549739521341818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * A000984 n)

end

end A119701.P14177549739521341818

namespace A119701

/-- `n*A000045(n)*A000984(n)` -/
def P14177549739521341818.Spec : Prop :=
  ∀ n, P14177549739521341818.a n = A119701 n

end A119701

/-! ## A119701.P937355765363324540

`n*A000108(n)*A099920(n)`
-/

namespace A119701.P937355765363324540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000108 n * A099920 n)

end

end A119701.P937355765363324540

namespace A119701

/-- `n*A000108(n)*A099920(n)` -/
def P937355765363324540.Spec : Prop :=
  ∀ n, P937355765363324540.a n = A119701 n

end A119701

/-! ## A119701.P1321303493936884068

`2*∑[n]*A000045(n)*A000108(n)`
-/

namespace A119701.P1321303493936884068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000045 n) * A000108 n

end

end A119701.P1321303493936884068

namespace A119701

/-- `2*∑[n]*A000045(n)*A000108(n)` -/
def P1321303493936884068.Spec : Prop :=
  ∀ n, P1321303493936884068.a n = A119701 n

end A119701

/-! ## A119701.P217815112500654186

`A000045(n)*A000108(n)*A002378(n)`
-/

namespace A119701.P217815112500654186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000108 n * A002378 n

end

end A119701.P217815112500654186

namespace A119701

/-- `A000045(n)*A000108(n)*A002378(n)` -/
def P217815112500654186.Spec : Prop :=
  ∀ n, P217815112500654186.a n = A119701 n

end A119701

/-!
# A119702: a(n) = n^2*binomial(2*n, n)*Fibonacci(n).

The programs for A119702, the canonical program `A119702.P530950042068071271` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119702 has offset 0).

The definition of A119702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119702.P530950042068071271

`n*A119701(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119702

/-- `n*A119701(n)` -/
def P530950042068071271.Spec : Prop :=
  ∀ n, P530950042068071271.a n = A119702 n

theorem P530950042068071271.correct : P530950042068071271.Spec := by
  intro n
  simp only [A119702]

end A119702

/-! ## A119702.P11009900923185413292

`n²*A119692(n)`
-/

namespace A119702.P11009900923185413292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A119692 n

end

end A119702.P11009900923185413292

namespace A119702

/-- `n²*A119692(n)` -/
def P11009900923185413292.Spec : Prop :=
  ∀ n, P11009900923185413292.a n = A119702 n

end A119702

/-! ## A119702.P5790277262503351288

`2*n²*A119693(n)`
-/

namespace A119702.P5790277262503351288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n ^ 2 : ℤ) * A119693 n)

end

end A119702.P5790277262503351288

namespace A119702

/-- `2*n²*A119693(n)` -/
def P5790277262503351288.Spec : Prop :=
  ∀ n, P5790277262503351288.a n = A119702 n

end A119702

/-! ## A119702.P17188023630423419556

`C(2*n, n)*A000045(n)*n²`
-/

namespace A119702.P17188023630423419556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000045 n * (n ^ 2 : ℤ)

end

end A119702.P17188023630423419556

namespace A119702

/-- `C(2*n, n)*A000045(n)*n²` -/
def P17188023630423419556.Spec : Prop :=
  ∀ n, P17188023630423419556.a n = A119702 n

end A119702

/-! ## A119702.P16500947607336112151

`A000045(n)*A002736(n)`
-/

namespace A119702.P16500947607336112151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A002736 n

end

end A119702.P16500947607336112151

namespace A119702

/-- `A000045(n)*A002736(n)` -/
def P16500947607336112151.Spec : Prop :=
  ∀ n, P16500947607336112151.a n = A119702 n

end A119702

/-! ## A119702.P12343521436978849043

`A005430(n)*A045925(n)`
-/

namespace A119702.P12343521436978849043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n * A045925 n

end

end A119702.P12343521436978849043

namespace A119702

/-- `A005430(n)*A045925(n)` -/
def P12343521436978849043.Spec : Prop :=
  ∀ n, P12343521436978849043.a n = A119702 n

end A119702

/-! ## A119702.P4886756539862943830

`A099920(n)*A110609(n)`
-/

namespace A119702.P4886756539862943830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n * A110609 n

end

end A119702.P4886756539862943830

namespace A119702

/-- `A099920(n)*A110609(n)` -/
def P4886756539862943830.Spec : Prop :=
  ∀ n, P4886756539862943830.a n = A119702 n

end A119702

/-! ## A119702.P10855364728758165252

`A000984(n)*A259451(n)`
-/

namespace A119702.P10855364728758165252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A259451 n

end

end A119702.P10855364728758165252

namespace A119702

/-- `A000984(n)*A259451(n)` -/
def P10855364728758165252.Spec : Prop :=
  ∀ n, P10855364728758165252.a n = A119702 n

end A119702

/-! ## A119702.P15309319400295409242

`A162551(n)*A390525(n)`
-/

namespace A119702.P15309319400295409242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162551 n * A390525 n

end

end A119702.P15309319400295409242

namespace A119702

/-- `A162551(n)*A390525(n)` -/
def P15309319400295409242.Spec : Prop :=
  ∀ n, P15309319400295409242.a n = A119702 n

end A119702

/-! ## A119702.P4070055928192055275

`2*A088218(n)*A259451(n)`
-/

namespace A119702.P4070055928192055275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088218 n * A259451 n)

end

end A119702.P4070055928192055275

namespace A119702

/-- `2*A088218(n)*A259451(n)` -/
def P4070055928192055275.Spec : Prop :=
  ∀ n, P4070055928192055275.a n = A119702 n

end A119702

/-! ## A119702.P11899426807402164157

`n*A000045(n)*A005430(n)`
-/

namespace A119702.P11899426807402164157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * A005430 n)

end

end A119702.P11899426807402164157

namespace A119702

/-- `n*A000045(n)*A005430(n)` -/
def P11899426807402164157.Spec : Prop :=
  ∀ n, P11899426807402164157.a n = A119702 n

end A119702

/-! ## A119702.P2451138442471930060

`n*A000984(n)*A045925(n)`
-/

namespace A119702.P2451138442471930060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000984 n * A045925 n)

end

end A119702.P2451138442471930060

namespace A119702

/-- `n*A000984(n)*A045925(n)` -/
def P2451138442471930060.Spec : Prop :=
  ∀ n, P2451138442471930060.a n = A119702 n

end A119702

/-! ## A119702.P2328590112290583550

`n*A001791(n)*A099920(n)`
-/

namespace A119702.P2328590112290583550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001791 n * A099920 n)

end

end A119702.P2328590112290583550

namespace A119702

/-- `n*A001791(n)*A099920(n)` -/
def P2328590112290583550.Spec : Prop :=
  ∀ n, P2328590112290583550.a n = A119702 n

end A119702

/-! ## A119702.P8121269085601435435

`n*A324969(n+1)*A005430(n)`
-/

namespace A119702.P8121269085601435435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A324969 (n + 1) * A005430 n

end

end A119702.P8121269085601435435

namespace A119702

/-- `n*A324969(n+1)*A005430(n)` -/
def P8121269085601435435.Spec : Prop :=
  ∀ n, P8121269085601435435.a n = A119702 n

end A119702

/-!
# A119703: a(n) = n^3*binomial(2*n, n)*Fibonacci(n).

The programs for A119703, the canonical program `A119703.P9452330850278476009` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119703 has offset 0).

The definition of A119703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119703.P9452330850278476009

`n*A119702(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A119703

/-- `n*A119702(n)` -/
def P9452330850278476009.Spec : Prop :=
  ∀ n, P9452330850278476009.a n = A119703 n

theorem P9452330850278476009.correct : P9452330850278476009.Spec := by
  intro n
  simp only [A119703]

end A119703

/-! ## A119703.P13283051021444621141

`n²*A119701(n)`
-/

namespace A119703.P13283051021444621141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A119701 n

end

end A119703.P13283051021444621141

namespace A119703

/-- `n²*A119701(n)` -/
def P13283051021444621141.Spec : Prop :=
  ∀ n, P13283051021444621141.a n = A119703 n

end A119703

/-! ## A119703.P5447830082239601374

`n^3*C(2*n, n)*A000045(n)`
-/

namespace A119703.P5447830082239601374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 * Nat.choose (2 * n) n : ℤ) * A000045 n

end

end A119703.P5447830082239601374

namespace A119703

/-- `n^3*C(2*n, n)*A000045(n)` -/
def P5447830082239601374.Spec : Prop :=
  ∀ n, P5447830082239601374.a n = A119703 n

end A119703

/-! ## A119703.P2325166926031910466

`A000045(n)*A005429(n)`
-/

namespace A119703.P2325166926031910466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A005429 n

end

end A119703.P2325166926031910466

namespace A119703

/-- `A000045(n)*A005429(n)` -/
def P2325166926031910466.Spec : Prop :=
  ∀ n, P2325166926031910466.a n = A119703 n

end A119703

/-! ## A119703.P4941500963337969785

`A000984(n)*A259546(n)`
-/

namespace A119703.P4941500963337969785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A259546 n

end

end A119703.P4941500963337969785

namespace A119703

/-- `A000984(n)*A259546(n)` -/
def P4941500963337969785.Spec : Prop :=
  ∀ n, P4941500963337969785.a n = A119703 n

end A119703

/-! ## A119703.P6940420968616533140

`A005430(n)*A259451(n)`
-/

namespace A119703.P6940420968616533140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n * A259451 n

end

end A119703.P6940420968616533140

namespace A119703

/-- `A005430(n)*A259451(n)` -/
def P6940420968616533140.Spec : Prop :=
  ∀ n, P6940420968616533140.a n = A119703 n

end A119703

/-! ## A119703.P18413621575021349928

`n*A000045(n)*A002736(n)`
-/

namespace A119703.P18413621575021349928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * A002736 n)

end

end A119703.P18413621575021349928

namespace A119703

/-- `n*A000045(n)*A002736(n)` -/
def P18413621575021349928.Spec : Prop :=
  ∀ n, P18413621575021349928.a n = A119703 n

end A119703

/-! ## A119703.P8747781322667446289

`n*A005430(n)*A045925(n)`
-/

namespace A119703.P8747781322667446289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005430 n * A045925 n)

end

end A119703.P8747781322667446289

namespace A119703

/-- `n*A005430(n)*A045925(n)` -/
def P8747781322667446289.Spec : Prop :=
  ∀ n, P8747781322667446289.a n = A119703 n

end A119703

/-! ## A119703.P13143069114423078270

`n*A099920(n)*A110609(n)`
-/

namespace A119703.P13143069114423078270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A099920 n * A110609 n)

end

end A119703.P13143069114423078270

namespace A119703

/-- `n*A099920(n)*A110609(n)` -/
def P13143069114423078270.Spec : Prop :=
  ∀ n, P13143069114423078270.a n = A119703 n

end A119703

/-! ## A119703.P9085397578651517870

`n*A000984(n)*A259451(n)`
-/

namespace A119703.P9085397578651517870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000984 n * A259451 n)

end

end A119703.P9085397578651517870

namespace A119703

/-- `n*A000984(n)*A259451(n)` -/
def P9085397578651517870.Spec : Prop :=
  ∀ n, P9085397578651517870.a n = A119703 n

end A119703

/-! ## A119703.P17296584976632878252

`n²*A000045(n)*A005430(n)`
-/

namespace A119703.P17296584976632878252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000045 n * A005430 n

end

end A119703.P17296584976632878252

namespace A119703

/-- `n²*A000045(n)*A005430(n)` -/
def P17296584976632878252.Spec : Prop :=
  ∀ n, P17296584976632878252.a n = A119703 n

end A119703

/-! ## A119703.P9192494987993185144

`n²*A000984(n)*A045925(n)`
-/

namespace A119703.P9192494987993185144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000984 n * A045925 n

end

end A119703.P9192494987993185144

namespace A119703

/-- `n²*A000984(n)*A045925(n)` -/
def P9192494987993185144.Spec : Prop :=
  ∀ n, P9192494987993185144.a n = A119703 n

end A119703

/-! ## A119703.P17381330558219652993

`n²*A001791(n)*A099920(n)`
-/

namespace A119703.P17381330558219652993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A001791 n * A099920 n

end

end A119703.P17381330558219652993

namespace A119703

/-- `n²*A001791(n)*A099920(n)` -/
def P17381330558219652993.Spec : Prop :=
  ∀ n, P17381330558219652993.a n = A119703 n

end A119703

/-! ## A119703.P2476283863334651339

`A088218(n)*A259451(n)*2*n`
-/

namespace A119703.P2476283863334651339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A259451 n * (2 * n : ℤ)

end

end A119703.P2476283863334651339

namespace A119703

/-- `A088218(n)*A259451(n)*2*n` -/
def P2476283863334651339.Spec : Prop :=
  ∀ n, P2476283863334651339.a n = A119703 n

end A119703

/-! ## A119703.P16162691668503502516

`n²*A324969(n+1)*A005430(n)`
-/

namespace A119703.P16162691668503502516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A324969 (n + 1) * A005430 n

end

end A119703.P16162691668503502516

namespace A119703

/-- `n²*A324969(n+1)*A005430(n)` -/
def P16162691668503502516.Spec : Prop :=
  ∀ n, P16162691668503502516.a n = A119703 n

end A119703

/-!
# A119704: a(n) = number of distinct prime factors of 10^n+1 = omega(10^n+1).

The programs for A119704, there is no canonical definition to state claims against.
-/

/-! ## A119704.P11125147532146268440

`A001222(A344897(n)%A166046(n))`
-/

namespace A119704.P11125147532146268440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A344897 n) (A166046 n)).toNat

end

end A119704.P11125147532146268440

/-! ## A119704.P10058246976762102395

`A001222(A344897(n))+A000007(A005670(n+1))`
-/

namespace A119704.P10058246976762102395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A344897 n).toNat + A000007 (A005670 (n + 1)).toNat

end

end A119704.P10058246976762102395

/-! ## A119704.P3531349250709980326

`A001222(A344897(n))%A175791(A007294(n))`
-/

namespace A119704.P3531349250709980326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A344897 n).toNat) (A175791 (A007294 n).toNat)

end

end A119704.P3531349250709980326

/-! ## A119704.P5998807553433938829

`A001222(gcd(A344897(3*n), A344897(n)))`
-/

namespace A119704.P5998807553433938829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A344897 (3 * n)) (A344897 n))

end

end A119704.P5998807553433938829

/-! ## A119704.P13916689524467271918

`A001222(A344897(n))+A000007(A131060(n))`
-/

namespace A119704.P13916689524467271918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A344897 n).toNat + A000007 (A131060 n).toNat

end

end A119704.P13916689524467271918

/-! ## A119704.P1890778732419331431

`A000523(A344897(n))`
-/

namespace A119704.P1890778732419331431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A344897 n).toNat

end

end A119704.P1890778732419331431

/-! ## A119704.P9377714710906659951

`A000120(A344897(n)-1)`
-/

namespace A119704.P9377714710906659951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A344897 n - 1).toNat

end

end A119704.P9377714710906659951

/-! ## A119704.P368001717817801042

`A070939(A344897(n)/2)`
-/

namespace A119704.P368001717817801042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((A344897 n : ℚ) / 2)).toNat

end

end A119704.P368001717817801042

/-! ## A119704.P6276761021718524722

`A073093(A344897(n)/2)`
-/

namespace A119704.P6276761021718524722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (SequenceMachineLib.roundAway ((A344897 n : ℚ) / 2)).toNat

end

end A119704.P6276761021718524722

/-! ## A119704.P8379314271253027787

`A029837(A344897(n)+1)-1`
-/

namespace A119704.P8379314271253027787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A344897 n + 1).toNat - 1

end

end A119704.P8379314271253027787

/-! ## A119704.P12534053831150272531

`A070939(A344897(n)+1)-1`
-/

namespace A119704.P12534053831150272531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A344897 n + 1).toNat - 1

end

end A119704.P12534053831150272531

/-! ## A119704.P17455833452175990571

`A029837(A344897(n)/2+1)`
-/

namespace A119704.P17455833452175990571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (SequenceMachineLib.roundAway ((A344897 n : ℚ) / 2 + 1)).toNat

end

end A119704.P17455833452175990571

/-! ## A119704.P4145230647317440830

`A001222(5/2*A344897(n))`
-/

namespace A119704.P4145230647317440830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) / 2 * (A344897 n : ℚ))).toNat

end

end A119704.P4145230647317440830

/-!
# A119705: Primes p such that the number of divisors of p+1 equals number of divisors of p+2.

The programs for A119705, the canonical program `A119705.P18254515124902290660` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119705 has offset 1).

The definition of A119705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119705.P18254515124902290660

`p?[A005237(n+1)-1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A119705

/-- `p?[A005237(n+1)-1]` -/
def P18254515124902290660.Spec : Prop :=
  ∀ n, P18254515124902290660.a n = A119705 (n + 1)

theorem P18254515124902290660.correct : P18254515124902290660.Spec := by
  intro n
  simp only [A119705, Nat.add_sub_cancel]

end A119705

/-! ## A119705.P1541073670630660049

`record[A006530(A005237(n+2)-1)]`
-/

namespace A119705.P1541073670630660049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005237 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119705.P1541073670630660049

namespace A119705

/-- `record[A006530(A005237(n+2)-1)]` -/
def P1541073670630660049.Spec : Prop :=
  ∀ n, P1541073670630660049.a n = A119705 (n + 1)

end A119705

/-! ## A119705.P12545447983026212414

`record[A020639(A005237(n+2)-1)]`
-/

namespace A119705.P12545447983026212414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005237 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119705.P12545447983026212414

namespace A119705

/-- `record[A020639(A005237(n+2)-1)]` -/
def P12545447983026212414.Spec : Prop :=
  ∀ n, P12545447983026212414.a n = A119705 (n + 1)

end A119705

/-! ## A119705.P10348929368226335347

`p?[A057428(n+1)+A005237(n+2)]`
-/

namespace A119705.P10348929368226335347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A005237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119705.P10348929368226335347

namespace A119705

/-- `p?[A057428(n+1)+A005237(n+2)]` -/
def P10348929368226335347.Spec : Prop :=
  ∀ n, P10348929368226335347.a n = A119705 (n + 1)

end A119705

/-! ## A119705.P11382716608901703186

`p?[A106470(A319101(n+1))+A005237(n+1)]`
-/

namespace A119705.P11382716608901703186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 (A319101 (n + 1)).toNat + A005237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119705.P11382716608901703186

namespace A119705

/-- `p?[A106470(A319101(n+1))+A005237(n+1)]` -/
def P11382716608901703186.Spec : Prop :=
  ∀ n, P11382716608901703186.a n = A119705 (n + 1)

end A119705

/-! ## A119705.P18106887070832868707

`p?[eq[A000005(n+1), A000005(n+2)]]`
-/

namespace A119705.P18106887070832868707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119705.P18106887070832868707

namespace A119705

/-- `p?[eq[A000005(n+1), A000005(n+2)]]` -/
def P18106887070832868707.Spec : Prop :=
  ∀ n, (P18106887070832868707.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P16403073678879655404

`p?[eq[0, A051950(n+2)]]`
-/

namespace A119705.P16403073678879655404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119705.P16403073678879655404

namespace A119705

/-- `p?[eq[0, A051950(n+2)]]` -/
def P16403073678879655404.Spec : Prop :=
  ∀ n, (P16403073678879655404.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P7576838740468618573

`p?[eq[0, A182394(n+2)]]`
-/

namespace A119705.P7576838740468618573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119705.P7576838740468618573

namespace A119705

/-- `p?[eq[0, A182394(n+2)]]` -/
def P7576838740468618573.Spec : Prop :=
  ∀ n, (P7576838740468618573.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P11352811883914037659

`eq[A051950(n+2), A072480(n)]`
-/

namespace A119705.P11352811883914037659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P11352811883914037659

namespace A119705

/-- `eq[A051950(n+2), A072480(n)]` -/
def P11352811883914037659.Spec : Prop :=
  ∀ n, (P11352811883914037659.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P14948031490491346501

`eq[A072480(n), A182394(n+2)]`
-/

namespace A119705.P14948031490491346501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P14948031490491346501

namespace A119705

/-- `eq[A072480(n), A182394(n+2)]` -/
def P14948031490491346501.Spec : Prop :=
  ∀ n, (P14948031490491346501.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P2103002804749347722

`eq[A072721(n), A130638(n+1)]`
-/

namespace A119705.P2103002804749347722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P2103002804749347722

namespace A119705

/-- `eq[A072721(n), A130638(n+1)]` -/
def P2103002804749347722.Spec : Prop :=
  ∀ n, (P2103002804749347722.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P10059199078901870072

`eq[A130638(n+1), A167865(n)]`
-/

namespace A119705.P10059199078901870072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P10059199078901870072

namespace A119705

/-- `eq[A130638(n+1), A167865(n)]` -/
def P10059199078901870072.Spec : Prop :=
  ∀ n, (P10059199078901870072.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P4845942761794757133

`eq[A130638(n+1), A210442(n)]`
-/

namespace A119705.P4845942761794757133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P4845942761794757133

namespace A119705

/-- `eq[A130638(n+1), A210442(n)]` -/
def P4845942761794757133.Spec : Prop :=
  ∀ n, (P4845942761794757133.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P10953653262829823571

`eq[A130638(n+1), A211110(n)]`
-/

namespace A119705.P10953653262829823571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P10953653262829823571

namespace A119705

/-- `eq[A130638(n+1), A211110(n)]` -/
def P10953653262829823571.Spec : Prop :=
  ∀ n, (P10953653262829823571.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P4663324529113448438

`eq[A130638(n+1), A284289(n)]`
-/

namespace A119705.P4663324529113448438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P4663324529113448438

namespace A119705

/-- `eq[A130638(n+1), A284289(n)]` -/
def P4663324529113448438.Spec : Prop :=
  ∀ n, (P4663324529113448438.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P18162472748439724504

`eq[A130638(n+1), A322968(n)]`
-/

namespace A119705.P18162472748439724504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P18162472748439724504

namespace A119705

/-- `eq[A130638(n+1), A322968(n)]` -/
def P18162472748439724504.Spec : Prop :=
  ∀ n, (P18162472748439724504.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P3631442700577495217

`eq[A130638(n+1), A331887(n)]`
-/

namespace A119705.P3631442700577495217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P3631442700577495217

namespace A119705

/-- `eq[A130638(n+1), A331887(n)]` -/
def P3631442700577495217.Spec : Prop :=
  ∀ n, (P3631442700577495217.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P5393139899918912686

`eq[A171937(n+1), A331887(n)]`
-/

namespace A119705.P5393139899918912686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P5393139899918912686

namespace A119705

/-- `eq[A171937(n+1), A331887(n)]` -/
def P5393139899918912686.Spec : Prop :=
  ∀ n, (P5393139899918912686.a n : ℤ) = A119705 (n + 1)

end A119705

/-! ## A119705.P12008198303206738302

`record[A014963(A005237(n+2)-1)]`
-/

namespace A119705.P12008198303206738302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005237 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119705.P12008198303206738302

namespace A119705

/-- `record[A014963(A005237(n+2)-1)]` -/
def P12008198303206738302.Spec : Prop :=
  ∀ n, P12008198303206738302.a n = A119705 (n + 1)

end A119705

/-! ## A119705.P16328284178248872764

`eq[A053989(n+1), A130638(n+1)]`
-/

namespace A119705.P16328284178248872764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119705.P16328284178248872764

namespace A119705

/-- `eq[A053989(n+1), A130638(n+1)]` -/
def P16328284178248872764.Spec : Prop :=
  ∀ n, (P16328284178248872764.a n : ℤ) = A119705 (n + 1)

end A119705

/-!
# A119706: Total length of longest runs of 1's in all bitstrings of length n.

The programs for A119706, there is no canonical definition to state claims against.
-/

/-! ## A119706.P8151899328737790920

`A102712(n+2)-2^(n+1)`
-/

namespace A119706.P8151899328737790920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102712 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A119706.P8151899328737790920

/-! ## A119706.P12116279269449150640

`A079500(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A119706.P12116279269449150640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079500 (n + 1) + 2 * a (n - 1)

end

end A119706.P12116279269449150640

/-! ## A119706.P18131952296878096661

`A007059(n+2)+2*a(n-1)` with `a(0)=1`
-/

namespace A119706.P18131952296878096661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007059 (n + 2) + 2 * a (n - 1)

end

end A119706.P18131952296878096661

/-! ## A119706.P4867057002313060322

`abs(A102712(n+2)-Δ[A048578(n)])`
-/

namespace A119706.P4867057002313060322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A102712 (n + 2) - (f1 (n + 1) - f1 n)|

end

end A119706.P4867057002313060322

/-! ## A119706.P15981454189905908007

`∑[Δ[A102712(n+1)]-A000079(n)]`
-/

namespace A119706.P15981454189905908007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102712 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119706.P15981454189905908007

/-!
# A119707: Number of distinct primes appearing in all partitions of n into prime parts.

The programs for A119707, there is no canonical definition to state claims against.
-/

/-! ## A119707.P10766922480617154550

`∑[C(C(2, ∑{e}[n+1, #]), 2)]-char[p?[floor(n/2)]]`
-/

namespace A119707.P10766922480617154550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119707.P10766922480617154550

/-! ## A119707.P3433962779672906458

`A000720(xor(n, a(2%n)))` with `a(0)=0, a(1)=1`
-/

namespace A119707.P3433962779672906458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000720 (Int.xor (n : ℤ) (a (2 % n))).toNat

end

end A119707.P3433962779672906458

/-! ## A119707.P7672276521983858348

`A000720(n+1)-∑{p}[n, val(#, n)]`
-/

namespace A119707.P7672276521983858348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p n : ℕ) : ℤ)

end

end A119707.P7672276521983858348

/-! ## A119707.P15955161334806611168

`n-∑{p}[n, val(#, n)]-A065855(n+1)`
-/

namespace A119707.P15955161334806611168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p n : ℕ) : ℤ) - A065855 (n + 1)

end

end A119707.P15955161334806611168

/-! ## A119707.P16395774627011282226

`∑[∑{p}[n+1, val(#, n+1)]]-A046926(2*(n+1))`
-/

namespace A119707.P16395774627011282226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A046926 (2 * (n + 1))

end

end A119707.P16395774627011282226

/-! ## A119707.P1794085658910280921

`A113638(n)-A065855(n+1)`
-/

namespace A119707.P1794085658910280921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113638 n - A065855 (n + 1)

end

end A119707.P1794085658910280921

/-! ## A119707.P7491947911619203431

`A000720(n+1)-char[A007918(n)]`
-/

namespace A119707.P7491947911619203431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119707.P7491947911619203431

/-! ## A119707.P14482655194337656503

`A000720(n+1)-char[A051697(n)]`
-/

namespace A119707.P14482655194337656503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119707.P14482655194337656503

/-! ## A119707.P4274577405792965155

`A000720(n+1)-char[A051698(n)]`
-/

namespace A119707.P4274577405792965155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119707.P4274577405792965155

/-! ## A119707.P10320032786601897254

`A000720(n+1)-char[A060264(n)]`
-/

namespace A119707.P10320032786601897254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A119707.P10320032786601897254

/-!
# A119708: Number of free hexagonal polygons of symmetry class D_(3h) and area n.

The programs for A119708, there is no canonical definition to state claims against.
-/

/-! ## A119708.P4311239880881413207

`A112310(A053994(n)%A092754(n+1))`
-/

namespace A119708.P4311239880881413207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (Int.tmod (A053994 n) (A092754 (n + 1))).toNat

end

end A119708.P4311239880881413207

/-! ## A119708.P17922017767158418450

`A240857(A008861(n)*A099544(2*n+1))`
-/

namespace A119708.P17922017767158418450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240857 (A008861 n * A099544 (2 * n + 1)).toNat

end

end A119708.P17922017767158418450

/-! ## A119708.P3012797540520882299

`A134023(A049323(2*n+1))`
-/

namespace A119708.P3012797540520882299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 (A049323 (2 * n + 1)).toNat

end

end A119708.P3012797540520882299

/-! ## A119708.P10662149869281705936

`A102929(n+1)%A258756(n+3)`
-/

namespace A119708.P10662149869281705936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102929 (n + 1)) (A258756 (n + 3))

end

end A119708.P10662149869281705936

/-!
# A119709: Table where n-th row (of A078822(n) terms) contains the distinct nonnegative integers which, when written in binary, are substrings of n written in binary.

The programs for A119709, there is no canonical definition to state claims against.
-/

/-! ## A119709.P8577437043314515012

`A110654(A119642(n+1))%A300888(n+1)`
-/

namespace A119709.P8577437043314515012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A119642 (n + 1)).toNat) (A300888 (n + 1))

end

end A119709.P8577437043314515012

/-! ## A119709.P16875708527638172332

`A089038(A089067(n+1))%A088939(n+1)`
-/

namespace A119709.P16875708527638172332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089038 (A089067 (n + 1)).toNat) (A088939 (n + 1))

end

end A119709.P16875708527638172332

/-! ## A119709.P10799249865631985162

`val(A069278(A034295(n+1)), A096014(2*(n+1)))`
-/

namespace A119709.P10799249865631985162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A069278 (A034295 (n + 1)).toNat).toNat (A096014 (2 * (n + 1))).toNat

end

end A119709.P10799249865631985162

/-!
# A119711: Primes p such that p+1, p+2 and p+3 have equal number of divisors.

The programs for A119711, the canonical program `A119711.P6383508046076492674` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119711 has offset 1).

The definition of A119711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119711.P6383508046076492674

`p?[A171666(n+1)-1]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A119711

/-- `p?[A171666(n+1)-1]` -/
def P6383508046076492674.Spec : Prop :=
  ∀ n, P6383508046076492674.a n = A119711 (n + 1)

theorem P6383508046076492674.correct : P6383508046076492674.Spec := by
  intro n
  simp only [A119711, Nat.add_sub_cancel]

end A119711

/-! ## A119711.P294304846281868536

`p?[A005238(n+1)-1]`
-/

namespace A119711.P294304846281868536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119711.P294304846281868536

namespace A119711

/-- `p?[A005238(n+1)-1]` -/
def P294304846281868536.Spec : Prop :=
  ∀ n, P294304846281868536.a n = A119711 (n + 1)

end A119711

/-! ## A119711.P1034700425018664275

`p?[A169834(n+1)-2]`
-/

namespace A119711.P1034700425018664275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119711.P1034700425018664275

namespace A119711

/-- `p?[A169834(n+1)-2]` -/
def P1034700425018664275.Spec : Prop :=
  ∀ n, P1034700425018664275.a n = A119711 (n + 1)

end A119711

/-! ## A119711.P9566502022790270476

`p?[abs(A169834(A028310(n))-2)]`
-/

namespace A119711.P9566502022790270476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A169834 (A028310 n).toNat - 2|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119711.P9566502022790270476

namespace A119711

/-- `p?[abs(A169834(A028310(n))-2)]` -/
def P9566502022790270476.Spec : Prop :=
  ∀ n, P9566502022790270476.a n = A119711 (n + 1)

end A119711

/-! ## A119711.P1886608605311883222

`p?[A057428(n)+A005238(n+1)]`
-/

namespace A119711.P1886608605311883222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A005238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119711.P1886608605311883222

namespace A119711

/-- `p?[A057428(n)+A005238(n+1)]` -/
def P1886608605311883222.Spec : Prop :=
  ∀ n, P1886608605311883222.a n = A119711 (n + 1)

end A119711

/-! ## A119711.P14026862082179046086

`p?[A260196(n)+A005238(n+1)]`
-/

namespace A119711.P14026862082179046086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A005238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119711.P14026862082179046086

namespace A119711

/-- `p?[A260196(n)+A005238(n+1)]` -/
def P14026862082179046086.Spec : Prop :=
  ∀ n, P14026862082179046086.a n = A119711 (n + 1)

end A119711

/-! ## A119711.P7415498199324132281

`record[A020639(A171666(n+1)-1)]`
-/

namespace A119711.P7415498199324132281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A171666 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119711.P7415498199324132281

namespace A119711

/-- `record[A020639(A171666(n+1)-1)]` -/
def P7415498199324132281.Spec : Prop :=
  ∀ n, P7415498199324132281.a n = A119711 (n + 1)

end A119711

/-!
# A119712: a(n) is the smallest integer k such that the n-th (forward) difference of the partition sequence A000041 is positive from k onwards.

The programs for A119712, there is no canonical definition to state claims against.
-/

/-! ## A119712.P13193528132320834141

`or(1, A155861(n))-(n+1)`
-/

namespace A119712.P13193528132320834141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155861 n) - (n + 1 : ℤ)

end

end A119712.P13193528132320834141

/-! ## A119712.P11921932115329767550

`A155861(n)-A028310(n)`
-/

namespace A119712.P11921932115329767550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155861 n - A028310 n

end

end A119712.P11921932115329767550

/-! ## A119712.P8887165931176178205

`A155861(n)-A137734(n²)`
-/

namespace A119712.P8887165931176178205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155861 n - A137734 (n ^ 2)

end

end A119712.P8887165931176178205

/-! ## A119712.P3838155075839805700

`A155861(n)-sqrt(A253909(n))`
-/

namespace A119712.P3838155075839805700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155861 n : ℝ) - Real.sqrt (A253909 n : ℝ)

end

end A119712.P3838155075839805700

/-! ## A119712.P15342518420790119355

`A155861(n)-A134478(∑[n])`
-/

namespace A119712.P15342518420790119355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155861 n - A134478 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119712.P15342518420790119355

/-! ## A119712.P109159643014652811

`A155861(n)-A065033(2*n)`
-/

namespace A119712.P109159643014652811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155861 n - A065033 (2 * n)

end

end A119712.P109159643014652811

/-! ## A119712.P3882066792964038075

`A155861(n)-A123108(2*n)`
-/

namespace A119712.P3882066792964038075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155861 n - A123108 (2 * n)

end

end A119712.P3882066792964038075

/-! ## A119712.P15801953143005752053

`A155861(n)-(A000007(n)+n)`
-/

namespace A119712.P15801953143005752053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155861 n - (A000007 n + (n : ℤ))

end

end A119712.P15801953143005752053

/-! ## A119712.P18230113597365976511

`A155861(n)-(char[∏{d}[n+1, A001222(#)]]+n)`
-/

namespace A119712.P18230113597365976511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), A001222 d

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155861 n - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n : ℕ) : ℤ)

end

end A119712.P18230113597365976511

/-! ## A119712.P5419692424065172591

`A155861(n)+A000040(n+1)%2-(n+1)`
-/

namespace A119712.P5419692424065172591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155861 n + Int.tmod (A000040 (n + 1)) 2 - (n + 1 : ℤ)

end

end A119712.P5419692424065172591

/-!
# A119713: First differences are 2, 5, 5, 9, 9, 9, 14, 14, 14, 14, ..., that is, A000096 with m-th term repeated m times (m>=1).

The programs for A119713, the canonical program `A119713.P8454233352313454820` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119713 has offset 0).

The definition of A119713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119713.P8454233352313454820

`∑[C(round(sqrt(2*n))+2, 2)-1]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119713

/-- `∑[C(round(sqrt(2*n))+2, 2)-1]` -/
def P8454233352313454820.Spec : Prop :=
  ∀ n, P8454233352313454820.a n = A119713 n

theorem P8454233352313454820.correct : P8454233352313454820.Spec := by
  intro n
  simp only [A119713]

end A119713

/-! ## A119713.P13969147384428929843

`∑[A000096(round(sqrt(2*n)))]`
-/

namespace A119713.P13969147384428929843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119713.P13969147384428929843

namespace A119713

/-- `∑[A000096(round(sqrt(2*n)))]` -/
def P13969147384428929843.Spec : Prop :=
  ∀ n, P13969147384428929843.a n = A119713 n

end A119713

/-! ## A119713.P13390579929968299938

`∑[A175631(round(sqrt(2*n))+3)]`
-/

namespace A119713.P13390579929968299938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175631 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119713.P13390579929968299938

namespace A119713

/-- `∑[A175631(round(sqrt(2*n))+3)]` -/
def P13390579929968299938.Spec : Prop :=
  ∀ n, P13390579929968299938.a n = A119713 n

end A119713

/-! ## A119713.P4330405670163815788

`∑[A000217(round(sqrt(2*n))+1)-1]`
-/

namespace A119713.P4330405670163815788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119713.P4330405670163815788

namespace A119713

/-- `∑[A000217(round(sqrt(2*n))+1)-1]` -/
def P4330405670163815788.Spec : Prop :=
  ∀ n, P4330405670163815788.a n = A119713 n

end A119713

/-! ## A119713.P11328521916940606914

`∑[A127739(comp[∑[n-1]])-1]`
-/

namespace A119713.P11328521916940606914
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119713.P11328521916940606914

namespace A119713

/-- `∑[A127739(comp[∑[n-1]])-1]` -/
def P11328521916940606914.Spec : Prop :=
  ∀ n, P11328521916940606914.a n = A119713 n

end A119713

/-!
# A119718: a(1)=4; thereafter a(n) is the smallest semiprime not yet appearing in the sequence that is relatively prime to a(n-1).

The programs for A119718, there is no canonical definition to state claims against.
-/

/-! ## A119718.P15695338170014377767

`A263648(A115060(n+1)%A270831(3*n+4))`
-/

namespace A119718.P15695338170014377767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263648 (Int.tmod (A115060 (n + 1)) (A270831 (3 * n + 4))).toNat

end

end A119718.P15695338170014377767

/-! ## A119718.P11135141468494432600

`A263648(A115060(n+1)%A006804(n))`
-/

namespace A119718.P11135141468494432600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263648 (Int.tmod (A115060 (n + 1)) (A006804 n)).toNat

end

end A119718.P11135141468494432600

/-! ## A119718.P768131161053261941

`A263648(A062399(n+1))`
-/

namespace A119718.P768131161053261941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263648 (A062399 (n + 1)).toNat

end

end A119718.P768131161053261941

/-! ## A119718.P6478550775335245711

`A263648(A351870(n+1))`
-/

namespace A119718.P6478550775335245711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263648 (A351870 (n + 1)).toNat

end

end A119718.P6478550775335245711

/-! ## A119718.P4634577358537992904

`A263648(∑[A123895(n)!])`
-/

namespace A119718.P4634577358537992904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A123895 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263648 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119718.P4634577358537992904

/-!
# A119719: Continued fraction expansion of the value (mod 1) where ?(x)-x attains its global maximum.

The programs for A119719, there is no canonical definition to state claims against.
-/

/-! ## A119719.P4574644791369435479

`A379306(A222804(n))`
-/

namespace A119719.P4574644791369435479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379306 (A222804 n).toNat

end

end A119719.P4574644791369435479

/-! ## A119719.P10909710388398212778

`A326190(A128268(n+1))`
-/

namespace A119719.P10909710388398212778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326190 (A128268 (n + 1)).toNat

end

end A119719.P10909710388398212778

/-! ## A119719.P13513999218077077896

`A183096(and(A008486(n), A077622(n+1)))`
-/

namespace A119719.P13513999218077077896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183096 (Int.land (A008486 n) (A077622 (n + 1))).toNat

end

end A119719.P13513999218077077896

/-!
# A119720: Numbers k such that 7^k + 2 is semiprime.

The programs for A119720, there is no canonical definition to state claims against.
-/

/-! ## A119720.P1469166152730859807

`eq[2, A114314(n)]`
-/

namespace A119720.P1469166152730859807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119720.P1469166152730859807

/-! ## A119720.P11805656076061521257

`lt[A114314(n+1), 3]+1`
-/

namespace A119720.P11805656076061521257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114314 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A119720.P11805656076061521257

/-! ## A119720.P4371220791472875048

`A000027(lt[A114314(n), 3])`
-/

namespace A119720.P4371220791472875048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114314 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A119720.P4371220791472875048

/-! ## A119720.P17739605334877635929

`lt[A000040(A114314(n)²), 9]`
-/

namespace A119720.P17739605334877635929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A114314 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119720.P17739605334877635929

/-! ## A119720.P12501283432175731120

`lt[A000203(A114314(n)-1), 2]`
-/

namespace A119720.P12501283432175731120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A114314 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119720.P12501283432175731120

/-!
# A119721: Numbers n such that 4*n^4 + 7 is prime.

The programs for A119721, there is no canonical definition to state claims against.
-/

/-! ## A119721.P13155696825010987315

`lt[A074294(A110494(n+1)), A002328(n+1)]`
-/

namespace A119721.P13155696825010987315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (A110494 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119721.P13155696825010987315

/-!
# A119723: Numerator of Sum[ (-1)^(k-1) * 1/(Prime[k]-1)^2, {k,1,n}].

The programs for A119723, there is no canonical definition to state claims against.
-/

/-! ## A119723.P439150401602590513

`A385503(A063988(2*a(n-1)))` with `a(0)=1`
-/

namespace A119723.P439150401602590513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A385503 (A063988 (2 * a (n - 1)).toNat).toNat

end

end A119723.P439150401602590513

/-!
# A119724: Generalized Pascal's triangle made using Mod[(Prime[n] - 1)/2, 4] == 2 primorial-like Stirling polynomials.

The programs for A119724, there is no canonical definition to state claims against.
-/

/-! ## A119724.P5325574579567904398

`A130595(A061579(n))-A212619(A146767(n))²`
-/

namespace A119724.P5325574579567904398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (A061579 n).toNat - A212619 (A146767 n).toNat ^ 2

end

end A119724.P5325574579567904398

/-! ## A119724.P997520253806491468

`-(A230861(n+1)%A080535(n))`
-/

namespace A119724.P997520253806491468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A230861 (n + 1)) (A080535 n)

end

end A119724.P997520253806491468

/-! ## A119724.P13820248493865061065

`-A230861(n+1)%A176600(2*n+3)`
-/

namespace A119724.P13820248493865061065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A230861 (n + 1)) (A176600 (2 * n + 3))

end

end A119724.P13820248493865061065

/-! ## A119724.P17620521559975958814

`A110555(comp[∑[n-1]]%A298748(3*n+1))`
-/

namespace A119724.P17620521559975958814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A298748 (3 * n + 1))).toNat

end

end A119724.P17620521559975958814

/-! ## A119724.P11557641618170935377

`A110555(lt[A219760(n+1), A062255(n)])`
-/

namespace A119724.P11557641618170935377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A119724.P11557641618170935377

/-!
# A119726: Triangular array read by rows: T(n,1) = T(n,n) = 1, T(n,k) = 4*T(n-1, k-1) + 2*T(n-1, k).

The programs for A119726, there is no canonical definition to state claims against.
-/

/-! ## A119726.P16169014184990984976

`A167974(A103999(n))`
-/

namespace A119726.P16169014184990984976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167974 (A103999 n).toNat

end

end A119726.P16169014184990984976

/-! ## A119726.P9939562930615954626

`A381018(A156137(n))`
-/

namespace A119726.P9939562930615954626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381018 (A156137 n).toNat

end

end A119726.P9939562930615954626

/-! ## A119726.P15533460361541598381

`A157846(A008957(n+1))`
-/

namespace A119726.P15533460361541598381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157846 (A008957 (n + 1)).toNat

end

end A119726.P15533460361541598381

/-! ## A119726.P6521980913561653296

`A160044(2*A112492(n))`
-/

namespace A119726.P6521980913561653296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160044 (2 * A112492 n).toNat

end

end A119726.P6521980913561653296

/-! ## A119726.P4886184260382014768

`A051125(A123354(n)^3)`
-/

namespace A119726.P4886184260382014768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (A123354 n ^ 3).toNat

end

end A119726.P4886184260382014768

/-!
# A119727: Triangular array: T(n,k) = T(n,n) = 1, T(n,k) = 5*T(n-1, k-1) + 2*T(n-1, k), read by rows.

The programs for A119727, there is no canonical definition to state claims against.
-/

/-! ## A119727.P9016453979488267305

`A357707(A049290(n+1))`
-/

namespace A119727.P9016453979488267305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357707 (A049290 (n + 1)).toNat

end

end A119727.P9016453979488267305

/-! ## A119727.P13671133770270471717

`or(1, A333764(A109001(n)))`
-/

namespace A119727.P13671133770270471717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A333764 (A109001 n).toNat)

end

end A119727.P13671133770270471717

/-! ## A119727.P13507171856531913366

`A054576(A042561(n))`
-/

namespace A119727.P13507171856531913366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A042561 n).toNat

end

end A119727.P13507171856531913366

/-! ## A119727.P18115220769099072231

`A357990(4*A347448(n))`
-/

namespace A119727.P18115220769099072231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357990 (4 * A347448 n).toNat

end

end A119727.P18115220769099072231

/-! ## A119727.P4119629237468768533

`A001462(A053285(n)^A093555(n+1))`
-/

namespace A119727.P4119629237468768533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (SequenceMachineLib.roundAway ((A053285 n : ℚ) ^ (A093555 (n + 1) : ℤ))).toNat

end

end A119727.P4119629237468768533

/-!
# A119728: Primes p such that p+1, p+2, p+3 and p+4 have equal number of divisors.

The programs for A119728, there is no canonical definition to state claims against.
-/

/-! ## A119728.P9957598312460180568

`p?[A006601(n+1)-1]`
-/

namespace A119728.P9957598312460180568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119728.P9957598312460180568

/-! ## A119728.P16681661041723445501

`p?[A039665(n+1)-1]`
-/

namespace A119728.P16681661041723445501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119728.P16681661041723445501

/-! ## A119728.P6065888597940420572

`p?[abs(2-A039665(A016825(n)))]`
-/

namespace A119728.P6065888597940420572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A039665 (A016825 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119728.P6065888597940420572

/-! ## A119728.P1328181479002833067

`p?[A057428(n+1)+A006601(n+1)]`
-/

namespace A119728.P1328181479002833067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A006601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119728.P1328181479002833067

/-! ## A119728.P4825487315489607439

`p?[A033999(or(1, n))+A006601(n+1)]`
-/

namespace A119728.P4825487315489607439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.lor 1 n) + A006601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119728.P4825487315489607439

/-! ## A119728.P6178119216515709009

`p?[A033999(2*n+1)+A006601(n+1)]`
-/

namespace A119728.P6178119216515709009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A006601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119728.P6178119216515709009

/-! ## A119728.P18154123231015522409

`p?[A008836(A000040(n+1))+A006601(n+1)]`
-/

namespace A119728.P18154123231015522409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000040 (n + 1)).toNat + A006601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119728.P18154123231015522409

/-! ## A119728.P293648055846963825

`p?[A039665(A016825(n))-1-A000034(2*n)]`
-/

namespace A119728.P293648055846963825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (A016825 n).toNat - 1 - A000034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119728.P293648055846963825

/-! ## A119728.P4427033134279273319

`p?[A039665(A004767(n))-2-A000034(2*n)]`
-/

namespace A119728.P4427033134279273319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (A004767 n).toNat - 2 - A000034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119728.P4427033134279273319

/-!
# A119730: Primes p such that p+1, p+2, p+3, p+4 and p+5 have equal number of divisors.

The programs for A119730, there is no canonical definition to state claims against.
-/

/-! ## A119730.P14817458934559781188

`p?[A049051(n+1)-1]`
-/

namespace A119730.P14817458934559781188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049051 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119730.P14817458934559781188

/-! ## A119730.P16314487729834396064

`p?[xor(3, A049051(n+2))]`
-/

namespace A119730.P16314487729834396064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A049051 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119730.P16314487729834396064

/-! ## A119730.P13357848455985674741

`p?[A057428(n)+A049051(n+1)]`
-/

namespace A119730.P13357848455985674741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A049051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119730.P13357848455985674741

/-! ## A119730.P3197150071443564684

`p?[A260196(n)+A049051(n+1)]`
-/

namespace A119730.P3197150071443564684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A049051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119730.P3197150071443564684

/-! ## A119730.P8968195194886521273

`p?[A153881(n+1)+A049051(n+1)]`
-/

namespace A119730.P8968195194886521273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + A049051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119730.P8968195194886521273

/-!
# A119731: f-Pascal's triangle where f(n) = n^3 = A000578(n).

The programs for A119731, there is no canonical definition to state claims against.
-/

/-! ## A119731.P417123164185513453

`A135361(A059922(n))`
-/

namespace A119731.P417123164185513453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135361 (A059922 n).toNat

end

end A119731.P417123164185513453

/-! ## A119731.P1182659297770601079

`A259483(A008300(n))`
-/

namespace A119731.P1182659297770601079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259483 (A008300 n).toNat

end

end A119731.P1182659297770601079

/-! ## A119731.P365773600566047161

`A259483(A007318(n)!)`
-/

namespace A119731.P365773600566047161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259483 (Nat.factorial (A007318 n).toNat)

end

end A119731.P365773600566047161

/-! ## A119731.P2429718035811899754

`A115590(A357144(n))+1`
-/

namespace A119731.P2429718035811899754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115590 (A357144 n).toNat + 1

end

end A119731.P2429718035811899754

/-! ## A119731.P13583915979719945262

`A353860(3^A101164(n))`
-/

namespace A119731.P13583915979719945262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A101164 n : ℤ))).toNat

end

end A119731.P13583915979719945262

/-!
# A119733: Offsets of the terms of the nodes of the reverse Collatz function.

The programs for A119733, the canonical program `A119733.P1003967431730408942` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119733 has offset 0).

The definition of A119733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119733.P1003967431730408942

`(A116640(n)-A048883(n))/2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119733

/-- `(A116640(n)-A048883(n))/2` -/
def P1003967431730408942.Spec : Prop :=
  ∀ n, P1003967431730408942.a n = (A119733 n : ℚ)

end A119733

/-! ## A119733.P8970811896334984359

`A004525(A116640(n)-A048883(n))`
-/

namespace A119733.P8970811896334984359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A116640 n - A048883 n).toNat

end

end A119733.P8970811896334984359

namespace A119733

/-- `A004525(A116640(n)-A048883(n))` -/
def P8970811896334984359.Spec : Prop :=
  ∀ n, P8970811896334984359.a n = A119733 n

end A119733

/-! ## A119733.P17200746203460557210

`A004526(A116640(n)-A048883(n))`
-/

namespace A119733.P17200746203460557210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A116640 n - A048883 n).toNat

end

end A119733.P17200746203460557210

namespace A119733

/-- `A004526(A116640(n)-A048883(n))` -/
def P17200746203460557210.Spec : Prop :=
  ∀ n, P17200746203460557210.a n = A119733 n

end A119733

/-! ## A119733.P14790876565026251703

`A026741(A116640(n)-A048883(n))`
-/

namespace A119733.P14790876565026251703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A116640 n - A048883 n).toNat

end

end A119733.P14790876565026251703

namespace A119733

/-- `A026741(A116640(n)-A048883(n))` -/
def P14790876565026251703.Spec : Prop :=
  ∀ n, P14790876565026251703.a n = A119733 n

end A119733

/-! ## A119733.P12139424510227368626

`A004525(A116640(2*n)-A116640(n))`
-/

namespace A119733.P12139424510227368626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A116640 (2 * n) - A116640 n).toNat

end

end A119733.P12139424510227368626

namespace A119733

/-- `A004525(A116640(2*n)-A116640(n))` -/
def P12139424510227368626.Spec : Prop :=
  ∀ n, P12139424510227368626.a n = A119733 n

end A119733

/-! ## A119733.P10892537021428756471

`A004526(A116640(2*n)-A116640(n))`
-/

namespace A119733.P10892537021428756471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A116640 (2 * n) - A116640 n).toNat

end

end A119733.P10892537021428756471

namespace A119733

/-- `A004526(A116640(2*n)-A116640(n))` -/
def P10892537021428756471.Spec : Prop :=
  ∀ n, P10892537021428756471.a n = A119733 n

end A119733

/-! ## A119733.P5369252989578992468

`A026741(A116640(2*n)-A116640(n))`
-/

namespace A119733.P5369252989578992468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A116640 (2 * n) - A116640 n).toNat

end

end A119733.P5369252989578992468

namespace A119733

/-- `A026741(A116640(2*n)-A116640(n))` -/
def P5369252989578992468.Spec : Prop :=
  ∀ n, P5369252989578992468.a n = A119733 n

end A119733

/-! ## A119733.P10263809092239290736

`A004526(A116640(2*n)%A116640(n))`
-/

namespace A119733.P10263809092239290736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A116640 (2 * n)) (A116640 n)).toNat

end

end A119733.P10263809092239290736

namespace A119733

/-- `A004526(A116640(2*n)%A116640(n))` -/
def P10263809092239290736.Spec : Prop :=
  ∀ n, P10263809092239290736.a n = A119733 n

end A119733

/-! ## A119733.P11257145535106196122

`A261393(A048678(n))`
-/

namespace A119733.P11257145535106196122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261393 (A048678 n).toNat

end

end A119733.P11257145535106196122

namespace A119733

/-- `A261393(A048678(n))` -/
def P11257145535106196122.Spec : Prop :=
  ∀ n, P11257145535106196122.a n = A119733 n

end A119733

/-! ## A119733.P2879425079250199160

`A261393(A124108(n)/2)`
-/

namespace A119733.P2879425079250199160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261393 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A119733.P2879425079250199160

namespace A119733

/-- `A261393(A124108(n)/2)` -/
def P2879425079250199160.Spec : Prop :=
  ∀ n, P2879425079250199160.a n = A119733 n

end A119733

/-!
# A119736: G.f. satisfies: A(x) = x + 2*x*A(A(x)) - x*A(x)*A(A(A(x))).

The programs for A119736, there is no canonical definition to state claims against.
-/

/-! ## A119736.P4573698922109317867

`A323623(floor(3^(n-1)))`
-/

namespace A119736.P4573698922109317867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323623 ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A119736.P4573698922109317867

/-!
# A119737: a(n) = Sum_{k=1..n} Fibonacci(floor(n/k)).

The programs for A119737, the canonical program `A119737.P16586167656667184699` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119737 has offset 1).

The definition of A119737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119737.P10523670665879371578

`∑[∑{d}[n+1, A212804(#-1)]]`
-/

namespace A119737.P10523670665879371578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A212804 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119737.P10523670665879371578

namespace A119737

/-- `∑[∑{d}[n+1, A212804(#-1)]]` -/
def P10523670665879371578.Spec : Prop :=
  ∀ n, P10523670665879371578.a n = A119737 (n + 1)

end A119737

/-! ## A119737.P16586167656667184699

`∑[∑{d}[n+1, A000045(abs(2-#))]]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A119737

/-- `∑[∑{d}[n+1, A000045(abs(2-#))]]` -/
def P16586167656667184699.Spec : Prop :=
  ∀ n, P16586167656667184699.a n = A119737 (n + 1)

theorem P16586167656667184699.correct : P16586167656667184699.Spec := by
  intro n
  simp only [A119737, Nat.add_sub_cancel]

end A119737

/-! ## A119737.P13721350438820967235

`∑[A007435(n+1)-A108046(n+1)]`
-/

namespace A119737.P13721350438820967235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007435 (n + 1) - A108046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119737.P13721350438820967235

namespace A119737

/-- `∑[A007435(n+1)-A108046(n+1)]` -/
def P13721350438820967235.Spec : Prop :=
  ∀ n, P13721350438820967235.a n = A119737 (n + 1)

end A119737

/-! ## A119737.P16097327012245027484

`∑[A108031(n+1)-A007435(n+1)]`
-/

namespace A119737.P16097327012245027484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108031 (n + 1) - A007435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119737.P16097327012245027484

namespace A119737

/-- `∑[A108031(n+1)-A007435(n+1)]` -/
def P16097327012245027484.Spec : Prop :=
  ∀ n, P16097327012245027484.a n = A119737 (n + 1)

end A119737

/-! ## A119737.P16396945395138481049

`∑[∑{d}[n+1, A123736(#²+2)]]`
-/

namespace A119737.P16396945395138481049
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A123736 (d ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119737.P16396945395138481049

namespace A119737

/-- `∑[∑{d}[n+1, A123736(#²+2)]]` -/
def P16396945395138481049.Spec : Prop :=
  ∀ n, P16396945395138481049.a n = A119737 (n + 1)

end A119737

/-!
# A119738: Semiprimes that are semiprimes turned upside-down.

The programs for A119738, there is no canonical definition to state claims against.
-/

/-! ## A119738.P3355903747454138902

`∩[A108631(n+1), A246647(n+1)]`
-/

namespace A119738.P3355903747454138902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246647 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119738.P3355903747454138902

/-!
# A119741: A008279, with the first and last of each row removed.

The programs for A119741, the canonical program `A119741.P4227817635269695965` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119741 has offset 2).

The definition of A119741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119741.P15290303338326373030

`A002260(n+1)!*A014410(n+2)`
-/

namespace A119741.P15290303338326373030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A014410 (n + 2)

end

end A119741.P15290303338326373030

namespace A119741

/-- `A002260(n+1)!*A014410(n+2)` -/
def P15290303338326373030.Spec : Prop :=
  ∀ n, P15290303338326373030.a n = A119741 (n + 2)

end A119741

/-! ## A119741.P4227817635269695965

`A003057(n+2)!/A004736(n+1)!`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119741

/-- `A003057(n+2)!/A004736(n+1)!` -/
def P4227817635269695965.Spec : Prop :=
  ∀ n, P4227817635269695965.a n = (A119741 (n + 2) : ℚ)

end A119741

/-! ## A119741.P5742143038556129486

`A068424(comp[∑[n]])`
-/

namespace A119741.P5742143038556129486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A119741.P5742143038556129486

namespace A119741

/-- `A068424(comp[∑[n]])` -/
def P5742143038556129486.Spec : Prop :=
  ∀ n, P5742143038556129486.a n = A119741 (n + 2)

end A119741

/-! ## A119741.P3564030479698924239

`A181511(comp[∑[n]]+1)`
-/

namespace A119741.P3564030479698924239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181511 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A119741.P3564030479698924239

namespace A119741

/-- `A181511(comp[∑[n]]+1)` -/
def P3564030479698924239.Spec : Prop :=
  ∀ n, P3564030479698924239.a n = A119741 (n + 2)

end A119741

/-! ## A119741.P11026586804996809897

`A094587((n-comp[∑[n]])²-n)`
-/

namespace A119741.P11026586804996809897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A119741.P11026586804996809897

namespace A119741

/-- `A094587((n-comp[∑[n]])²-n)` -/
def P11026586804996809897.Spec : Prop :=
  ∀ n, P11026586804996809897.a n = A119741 (n + 2)

end A119741

/-! ## A119741.P10926351321746558149

`A008279(2*(comp[∑[n]]-n)+n)`
-/

namespace A119741.P10926351321746558149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) + (n : ℤ)).toNat

end

end A119741.P10926351321746558149

namespace A119741

/-- `A008279(2*(comp[∑[n]]-n)+n)` -/
def P10926351321746558149.Spec : Prop :=
  ∀ n, P10926351321746558149.a n = A119741 (n + 2)

end A119741

/-! ## A119741.P595462450105189192

`(∑[char[∑[n]]]+1)*A181511(n+1)`
-/

namespace A119741.P595462450105189192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A181511 (n + 1)

end

end A119741.P595462450105189192

namespace A119741

/-- `(∑[char[∑[n]]]+1)*A181511(n+1)` -/
def P595462450105189192.Spec : Prop :=
  ∀ n, P595462450105189192.a n = A119741 (n + 2)

end A119741

/-! ## A119741.P10988956973596500652

`(comp[∑[n]]-n)!/(A025581(n)+1)!`
-/

namespace A119741.P10988956973596500652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat : ℚ) / (Nat.factorial (A025581 n + 1).toNat : ℚ)

end

end A119741.P10988956973596500652

namespace A119741

/-- `(comp[∑[n]]-n)!/(A025581(n)+1)!` -/
def P10988956973596500652.Spec : Prop :=
  ∀ n, P10988956973596500652.a n = (A119741 (n + 2) : ℚ)

end A119741

/-! ## A119741.P8334858464274894747

`A058298(n+2)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A119741.P8334858464274894747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058298 (n + 2) : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A119741.P8334858464274894747

namespace A119741

/-- `A058298(n+2)/(C(comp[∑[n]]-n, 2)-(n+1))!` -/
def P8334858464274894747.Spec : Prop :=
  ∀ n, P8334858464274894747.a n = (A119741 (n + 2) : ℚ)

end A119741

/-! ## A119741.P18117458288346053012

`A058298(n+2)/A119502(n)`
-/

namespace A119741.P18117458288346053012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058298 (n + 2) : ℚ) / (A119502 n : ℚ)

end

end A119741.P18117458288346053012

namespace A119741

/-- `A058298(n+2)/A119502(n)` -/
def P18117458288346053012.Spec : Prop :=
  ∀ n, P18117458288346053012.a n = (A119741 (n + 2) : ℚ)

end A119741

/-! ## A119741.P1141916736440378188

`A014410(n+2)*A166350(n+1)`
-/

namespace A119741.P1141916736440378188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) * A166350 (n + 1)

end

end A119741.P1141916736440378188

namespace A119741

/-- `A014410(n+2)*A166350(n+1)` -/
def P1141916736440378188.Spec : Prop :=
  ∀ n, P1141916736440378188.a n = A119741 (n + 2)

end A119741

/-! ## A119741.P10868720790017117933

`A392945(A204206(n+1))`
-/

namespace A119741.P10868720790017117933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392945 (A204206 (n + 1)).toNat

end

end A119741.P10868720790017117933

namespace A119741

/-- `A392945(A204206(n+1))` -/
def P10868720790017117933.Spec : Prop :=
  ∀ n, P10868720790017117933.a n = A119741 (n + 2)

end A119741

/-!
# A119742: Partial sums of tetradic primes (A068188).

The programs for A119742, there is no canonical definition to state claims against.
-/

/-! ## A119742.P8658783561327534992

`∑[A068188(n+1)]`
-/

namespace A119742.P8658783561327534992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119742.P8658783561327534992

/-! ## A119742.P2983046120626799557

`∑[record[A068188(A020986(n))]]`
-/

namespace A119742.P2983046120626799557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119742.P2983046120626799557

/-! ## A119742.P2023494974061626671

`∑[record[A068188(A028920(n))]]`
-/

namespace A119742.P2023494974061626671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119742.P2023494974061626671

/-! ## A119742.P3784944514285812224

`∑[record[A068188(A051340(n))]]`
-/

namespace A119742.P3784944514285812224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119742.P3784944514285812224

/-! ## A119742.P9811000442267694723

`∑[record[A068188(A037162(n))]]`
-/

namespace A119742.P9811000442267694723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068188 (A037162 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119742.P9811000442267694723

/-!
# A119743: Triangle read by rows: row n gives number of matchings of size 0<=k<=n (edges) in the complete graph on 2*n >= 2 vertices.

The programs for A119743, the canonical program `A119743.P4045238028716406607` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119743 has offset 1).

The definition of A119743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119743.P11542368797006692498

`A100861(lt[(ceil(sqrt(n))²-n)², n])`
-/

namespace A119743.P11542368797006692498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A119743.P11542368797006692498

namespace A119743

/-- `A100861(lt[(ceil(sqrt(n))²-n)², n])` -/
def P11542368797006692498.Spec : Prop :=
  ∀ n, P11542368797006692498.a n = A119743 (n + 1)

end A119743

/-! ## A119743.P14693479709665995618

`A100861(C(∑[char[∑[n]]], 2)+1+n)`
-/

namespace A119743.P14693479709665995618
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1 + n)

end

end A119743.P14693479709665995618

namespace A119743

/-- `A100861(C(∑[char[∑[n]]], 2)+1+n)` -/
def P14693479709665995618.Spec : Prop :=
  ∀ n, P14693479709665995618.a n = A119743 (n + 1)

end A119743

/-! ## A119743.P9326989602327521045

`A100861(eq[0, ceil(2*sqrt(n+1))%2]+1)`
-/

namespace A119743.P9326989602327521045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * Real.sqrt (n + 1 : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A119743.P9326989602327521045

namespace A119743

/-- `A100861(eq[0, ceil(2*sqrt(n+1))%2]+1)` -/
def P9326989602327521045.Spec : Prop :=
  ∀ n, P9326989602327521045.a n = A119743 (n + 1)

end A119743

/-! ## A119743.P3201299502498009910

`A100861(A004201(n+1))`
-/

namespace A119743.P3201299502498009910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (A004201 (n + 1)).toNat

end

end A119743.P3201299502498009910

namespace A119743

/-- `A100861(A004201(n+1))` -/
def P3201299502498009910.Spec : Prop :=
  ∀ n, P3201299502498009910.a n = A119743 (n + 1)

end A119743

/-! ## A119743.P3096516878215804391

`A100861(A061885(n+1))`
-/

namespace A119743.P3096516878215804391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100861 (A061885 (n + 1)).toNat

end

end A119743.P3096516878215804391

namespace A119743

/-- `A100861(A061885(n+1))` -/
def P3096516878215804391.Spec : Prop :=
  ∀ n, P3096516878215804391.a n = A119743 (n + 1)

end A119743

/-! ## A119743.P2051197385735197872

`A144299(A292564(n+1))`
-/

namespace A119743.P2051197385735197872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (A292564 (n + 1)).toNat

end

end A119743.P2051197385735197872

namespace A119743

/-- `A144299(A292564(n+1))` -/
def P2051197385735197872.Spec : Prop :=
  ∀ n, P2051197385735197872.a n = A119743 (n + 1)

end A119743

/-! ## A119743.P17142004688093267949

`A176230(∑[2*n]%comp[∑[n]]+floor(acot(n))-1)`
-/

namespace A119743.P17142004688093267949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176230 ((((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A119743.P17142004688093267949

namespace A119743

/-- `A176230(∑[2*n]%comp[∑[n]]+floor(acot(n))-1)` -/
def P17142004688093267949.Spec : Prop :=
  ∀ n, P17142004688093267949.a n = A119743 (n + 1)

end A119743

/-! ## A119743.P4045238028716406607

`A176230(A061579(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A119743

/-- `A176230(A061579(n+1))` -/
def P4045238028716406607.Spec : Prop :=
  ∀ n, P4045238028716406607.a n = A119743 (n + 1)

theorem P4045238028716406607.correct : P4045238028716406607.Spec := by
  intro n
  simp only [A119743, Nat.add_sub_cancel]

end A119743

/-!
# A119744: a(n) is the position of a(n-1) in the decimal expansion of Pi, starting with a(1)=13.

The programs for A119744, there is no canonical definition to state claims against.
-/

/-! ## A119744.P7538565579865482990

`A032445(a(n-1))` with `a(0)=13`
-/

namespace A119744.P7538565579865482990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A032445 (a (n - 1)).toNat

end

end A119744.P7538565579865482990

/-! ## A119744.P321882672819537672

`A014777(a(n-1))+1` with `a(0)=13`
-/

namespace A119744.P321882672819537672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A014777 (a (n - 1)).toNat + 1

end

end A119744.P321882672819537672

/-! ## A119744.P13331674430582032783

`A065475(A014777(a(n-1)))` with `a(0)=13`
-/

namespace A119744.P13331674430582032783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A065475 (A014777 (a (n - 1)).toNat).toNat

end

end A119744.P13331674430582032783

/-!
# A119749: Number of compositions of n into odd blocks with one element in each block distinguished.

The programs for A119749, the canonical program `A119749.P8910904632272446904` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119749 has offset 1).

The definition of A119749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119749.P16630134230883218259

`ogf((1+x^2)/(1-x-2x^2-x^3+x^4))`
-/

namespace A119749.P16630134230883218259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -1, -2, -1, 1] n

end

end A119749.P16630134230883218259

namespace A119749

/-- `ogf((1+x^2)/(1-x-2x^2-x^3+x^4))` -/
def P16630134230883218259.Spec : Prop :=
  ∀ n, P16630134230883218259.a n = A119749 (n + 1)

end A119749

/-! ## A119749.P8910904632272446904

`A101400(n)-A092886(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A119749

/-- `A101400(n)-A092886(n)` -/
def P8910904632272446904.Spec : Prop :=
  ∀ n, P8910904632272446904.a n = A119749 (n + 1)

theorem P8910904632272446904.correct : P8910904632272446904.Spec := by
  intro n
  simp only [A119749, Nat.add_sub_cancel]

end A119749

/-! ## A119749.P6991935063274005383

`A101400(n)+A105309(n)-A242510(n)`
-/

namespace A119749.P6991935063274005383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101400 n + (A105309 n - A242510 n)

end

end A119749.P6991935063274005383

namespace A119749

/-- `A101400(n)+A105309(n)-A242510(n)` -/
def P6991935063274005383.Spec : Prop :=
  ∀ n, P6991935063274005383.a n = A119749 (n + 1)

end A119749

/-! ## A119749.P4262853755934207507

`A092886(n+1)+A092886(n+1)-A105309(n)`
-/

namespace A119749.P4262853755934207507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092886 (n + 1) + (A092886 (n + 1) - A105309 n)

end

end A119749.P4262853755934207507

namespace A119749

/-- `A092886(n+1)+A092886(n+1)-A105309(n)` -/
def P4262853755934207507.Spec : Prop :=
  ∀ n, P4262853755934207507.a n = A119749 (n + 1)

end A119749

/-! ## A119749.P13623128596509162712

`2*A092886(n+1)-A105309(n)`
-/

namespace A119749.P13623128596509162712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092886 (n + 1) - A105309 n

end

end A119749.P13623128596509162712

namespace A119749

/-- `2*A092886(n+1)-A105309(n)` -/
def P13623128596509162712.Spec : Prop :=
  ∀ n, P13623128596509162712.a n = A119749 (n + 1)

end A119749

/-! ## A119749.P16545637052340066199

`Δ[Δ[A101400(n)]]-A105309(n)`
-/

namespace A119749.P16545637052340066199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A105309 n

end

end A119749.P16545637052340066199

namespace A119749

/-- `Δ[Δ[A101400(n)]]-A105309(n)` -/
def P16545637052340066199.Spec : Prop :=
  ∀ n, P16545637052340066199.a n = A119749 (n + 1)

end A119749

/-! ## A119749.P17774161748530277522

`Δ[A300438(n+3)%A300438(n+2)]`
-/

namespace A119749.P17774161748530277522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300438 (n + 3)) (A300438 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119749.P17774161748530277522

namespace A119749

/-- `Δ[A300438(n+3)%A300438(n+2)]` -/
def P17774161748530277522.Spec : Prop :=
  ∀ n, P17774161748530277522.a n = A119749 (n + 1)

end A119749

/-!
# A119750: Let k=binomial(n-1,2); a(n) = n*(n-1)*k!/(k-n+1)! for n >= 4, with a(1)=a(2)=a(3)=0.

The programs for A119750, there is no canonical definition to state claims against.
-/

/-! ## A119750.P1321707975868140521

`A050534(n)*A330813(A061256(n))`
-/

namespace A119750.P1321707975868140521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n * A330813 (A061256 n).toNat

end

end A119750.P1321707975868140521

/-!
# A119751: a(1) = 1; a(n) = first odd number greater than a(n-1) such that a(n) + a(i) + 1 is prime for all i=1,2,...,n.

The programs for A119751, there is no canonical definition to state claims against.
-/

/-! ## A119751.P3679666618504783958

`floor(A113875(n+1)/2)`
-/

namespace A119751.P3679666618504783958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113875 (n + 1) : ℚ) / 2⌋

end

end A119751.P3679666618504783958

/-! ## A119751.P8324183570215505058

`(A113875(n+1)-A025451(n))/2`
-/

namespace A119751.P8324183570215505058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113875 (n + 1) - A025451 n : ℚ) / 2

end

end A119751.P8324183570215505058

/-! ## A119751.P17835657738363885897

`(A113875(n+1)-A262681(n))/2`
-/

namespace A119751.P17835657738363885897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113875 (n + 1) - A262681 n : ℚ) / 2

end

end A119751.P17835657738363885897

/-! ## A119751.P2854900560411670481

`ceil(A113875(n+1)/2)-A033999(n)²`
-/

namespace A119751.P2854900560411670481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A113875 (n + 1) : ℚ) / 2⌉ - A033999 n ^ 2

end

end A119751.P2854900560411670481

/-! ## A119751.P14075344936024011472

`ceil(A113875(n+1)/2)-A124747(n)!`
-/

namespace A119751.P14075344936024011472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A113875 (n + 1) : ℚ) / 2⌉ - (Nat.factorial (A124747 n).toNat : ℤ)

end

end A119751.P14075344936024011472

/-!
# A119752: a(1)=2; a(n)=first even number greater than a(n-1) such that a(i)+a(n)+1 is prime for all i=1,2,...,n.

The programs for A119752, there is no canonical definition to state claims against.
-/

/-! ## A119752.P6538663318250332303

`A120403(n+1)-1`
-/

namespace A119752.P6538663318250332303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120403 (n + 1) - 1

end

end A119752.P6538663318250332303

/-! ## A119752.P16294395665688406287

`xor(1, A120403(A005496(n)))`
-/

namespace A119752.P16294395665688406287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120403 (A005496 n).toNat)

end

end A119752.P16294395665688406287

/-! ## A119752.P17706918941289490936

`xor(1, A120403(A077168(n)))`
-/

namespace A119752.P17706918941289490936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120403 (A077168 n).toNat)

end

end A119752.P17706918941289490936

/-! ## A119752.P10114129925465109916

`xor(1, A120403(A348553(n)))`
-/

namespace A119752.P10114129925465109916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120403 (A348553 n).toNat)

end

end A119752.P10114129925465109916

/-! ## A119752.P1111043973062380341

`xor(1, A120403(A000027(n+1)))`
-/

namespace A119752.P1111043973062380341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120403 (A000027 (n + 1)).toNat)

end

end A119752.P1111043973062380341

/-!
# A119753: Prime numbers in their order of occurrence and generated by A119751, the sequence of odd numbers defined recursively by a(1)=1 and a(i) + a(j) + 1 is prime for all i,j.

The programs for A119753, there is no canonical definition to state claims against.
-/

/-! ## A119753.P15172254869272564480

`p?[Δ[A195177(A139277(n))]]`
-/

namespace A119753.P15172254869272564480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A139277 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119753.P15172254869272564480

/-! ## A119753.P18288321076787902814

`record[A006530(A137507(∏{p}[n, #]))]`
-/

namespace A119753.P18288321076787902814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A137507 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119753.P18288321076787902814

/-!
# A119754: Prime numbers in their order of occurrence and generated by A119752, the sequence of even numbers defined recursively by a(1)=2 and a(i) + a(j) + 1 is prime for all i,j.

The programs for A119754, there is no canonical definition to state claims against.
-/

/-! ## A119754.P3847859293767281533

`p?[A105570(n)-A011646(n)]`
-/

namespace A119754.P3847859293767281533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n - A011646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119754.P3847859293767281533

/-! ## A119754.P9816297174255771291

`p?[A105570(n)-A016350(n)]`
-/

namespace A119754.P9816297174255771291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n - A016350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119754.P9816297174255771291

/-! ## A119754.P18134370731040613135

`p?[A047266(n+1)-A124778(n)]`
-/

namespace A119754.P18134370731040613135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1) - A124778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119754.P18134370731040613135

/-! ## A119754.P12335647671684307385

`p?[C(A204894(3*(n+1)), A205131(n+1))]`
-/

namespace A119754.P12335647671684307385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A204894 (3 * (n + 1))).toNat (A205131 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A119754.P12335647671684307385

/-!
# A119758: Numerator of Sum_{k=1..n} k^n/n^k.

The programs for A119758, there is no canonical definition to state claims against.
-/

/-! ## A119758.P16591399821407253479

`A368505(n+1)/(n+1)`
-/

namespace A119758.P16591399821407253479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368505 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A119758.P16591399821407253479

/-!
# A119759: a(1) = 1; a(n) is the smallest number k larger than a(n-1) such that k*A002110(n)^3 - 1 is prime.

The programs for A119759, there is no canonical definition to state claims against.
-/

/-! ## A119759.P459706509713128292

`record[A137804(n+1)-A210637(n)]`
-/

namespace A119759.P459706509713128292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137804 (n + 1) - A210637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119759.P459706509713128292

/-!
# A119763: Irregular array where row n is the positive integers which divide the sum of all previous rows. a(1,1)=1.

The programs for A119763, there is no canonical definition to state claims against.
-/

/-! ## A119763.P3577874373001954203

`floor(sqrt(A086589(n*n%2)))`
-/

namespace A119763.P3577874373001954203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A086589 (n * (n % 2)))

end

end A119763.P3577874373001954203

/-! ## A119763.P9250516020532582229

`A225489(A094024(n))`
-/

namespace A119763.P9250516020532582229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225489 (A094024 n).toNat

end

end A119763.P9250516020532582229

/-! ## A119763.P6163255916483160235

`A056813(A046212(n+1))`
-/

namespace A119763.P6163255916483160235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A046212 (n + 1)).toNat

end

end A119763.P6163255916483160235

/-! ## A119763.P15086775902811579017

`A205131(A014236(n+1))`
-/

namespace A119763.P15086775902811579017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205131 (A014236 (n + 1)).toNat

end

end A119763.P15086775902811579017

/-!
# A119764: Smallest number whose square begins with n in binary.

The programs for A119764, there is no canonical definition to state claims against.
-/

/-! ## A119764.P17786999375363028330

`A272679(lcm(A035214(n+4), A187829(n+1)))`
-/

namespace A119764.P17786999375363028330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272679 (Int.lcm (A035214 (n + 4)) (A187829 (n + 1)))

end

end A119764.P17786999375363028330

/-!
# A119765: Irregular array where row n is the positive integers which divide the number of terms in all previous rows. a(1)=1.

The programs for A119765, there is no canonical definition to state claims against.
-/

/-! ## A119765.P5089729003381951317

`gcd(A049980(n+1), A273135(A325857(n)))`
-/

namespace A119765.P5089729003381951317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049980 (n + 1)) (A273135 (A325857 n).toNat)

end

end A119765.P5089729003381951317

/-!
# A119766: Numbers n such that numerator of Bernoulli(n)/n is (apart from sign) 1 or a prime.

The programs for A119766, there is no canonical definition to state claims against.
-/

/-! ## A119766.P6467252631813560283

`∑[A089898(A328072(A296612(n)))]`
-/

namespace A119766.P6467252631813560283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 (A328072 (A296612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119766.P6467252631813560283

/-! ## A119766.P13841565315868401928

`lt[A383510(n), A383510(A326041(n+5))]`
-/

namespace A119766.P13841565315868401928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383510 (A326041 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119766.P13841565315868401928

/-! ## A119766.P9145369683668803884

`∑[A049716(A100735(n))]`
-/

namespace A119766.P9145369683668803884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (A100735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119766.P9145369683668803884

/-! ## A119766.P11555036264761081905

`∑[A112605(A135153(n)²)]`
-/

namespace A119766.P11555036264761081905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 (A135153 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119766.P11555036264761081905

/-! ## A119766.P9171987593572269815

`∑[A340607(A280147(n))+1]`
-/

namespace A119766.P9171987593572269815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 (A280147 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119766.P9171987593572269815

/-!
# A119767: Perfect powers which are the sum of twin prime pairs.

The programs for A119767, there is no canonical definition to state claims against.
-/

/-! ## A119767.P11105457727410185337

`2*(A270231(n+1)+1)`
-/

namespace A119767.P11105457727410185337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A270231 (n + 1) + 1)

end

end A119767.P11105457727410185337

/-! ## A119767.P15142682716903899094

`2*(A119768(Δ[n²])+1)`
-/

namespace A119767.P15142682716903899094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A119768 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1)

end

end A119767.P15142682716903899094

/-! ## A119767.P712578535716919472

`2*A119768(2*(n+1))-2`
-/

namespace A119767.P712578535716919472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119768 (2 * (n + 1)) - 2

end

end A119767.P712578535716919472

/-! ## A119767.P8489997844416493071

`lcm(2, A119768(2*n+1))+2`
-/

namespace A119767.P8489997844416493071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A119768 (2 * n + 1)) + 2

end

end A119767.P8489997844416493071

/-! ## A119767.P13964065145400584425

`A119768(2*n+1)+A119768(2*(n+1))`
-/

namespace A119767.P13964065145400584425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (2 * n + 1) + A119768 (2 * (n + 1))

end

end A119767.P13964065145400584425

/-!
# A119768: Twin prime pairs that sum to a power.

The programs for A119768, there is no canonical definition to state claims against.
-/

/-! ## A119768.P9278371142561541668

`A270231(A008619(n))+A010673(n)`
-/

namespace A119768.P9278371142561541668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (A008619 n).toNat + A010673 n

end

end A119768.P9278371142561541668

/-! ## A119768.P16313359171140872226

`A275962(A275954((-1)^n+3))+A270231(A008619(n))`
-/

namespace A119768.P16313359171140872226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A275954 ((-1) ^ n + 3).toNat).toNat + A270231 (A008619 n).toNat

end

end A119768.P16313359171140872226

/-! ## A119768.P3134911120465747053

`A275962(A275960((-1)^n+3))+A270231(A008619(n))`
-/

namespace A119768.P3134911120465747053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275962 (A275960 ((-1) ^ n + 3).toNat).toNat + A270231 (A008619 n).toNat

end

end A119768.P3134911120465747053

/-! ## A119768.P14171704132044647970

`∪[A270231(n+1)+2, A270231(n+1)]`
-/

namespace A119768.P14171704132044647970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A119768.P14171704132044647970

/-! ## A119768.P11304613882164928512

`A270231(A008619(n))+Δ[A129756(2*n)]`
-/

namespace A119768.P11304613882164928512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (A008619 n).toNat + (f1 (n + 1) - f1 n)

end

end A119768.P11304613882164928512

/-!
# A119769: a(n) = (n-1)!*Sum_{k=1..n, gcd(k,n)=1} H(k), where H(k) = Sum_{j=1..k} 1/j, the k-th harmonic number.

The programs for A119769, there is no canonical definition to state claims against.
-/

/-! ## A119769.P450425631940654468

`A363163(n)+A363158(A363143(2*(n+1)))`
-/

namespace A119769.P450425631940654468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363163 n + A363158 (A363143 (2 * (n + 1))).toNat

end

end A119769.P450425631940654468

/-!
# A119770: Number of different antimatroids on n labeled items.

The programs for A119770, there is no canonical definition to state claims against.
-/

/-! ## A119770.P11449278617184637521

`∏{p}[or(n+1, lcm(2, a(n-1)))², #]` with `a(0)=0, a(1)=0`
-/

namespace A119770.P11449278617184637521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Nat.lor (n + 1) (Nat.lcm 2 (f1 (n - 1))) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A119770.P11449278617184637521

/-!
# A119771: Product of n^2 and n-th tetrahedral number: a(n) = n^3*(n+1)*(n+2)/6.

The programs for A119771, the canonical program `A119771.P17724077121719047631` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119771 has offset 0).

The definition of A119771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119771.P17724077121719047631

`n^3*(n+1)*(n+2)/6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A119771

/-- `n^3*(n+1)*(n+2)/6` -/
def P17724077121719047631.Spec : Prop :=
  ∀ n, P17724077121719047631.a n = (A119771 n : ℚ)

end A119771

/-! ## A119771.P12208108946528580488

`C(n+2, 3)*n²`
-/

namespace A119771.P12208108946528580488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 * n ^ 2

end

end A119771.P12208108946528580488

namespace A119771

/-- `C(n+2, 3)*n²` -/
def P12208108946528580488.Spec : Prop :=
  ∀ n, (P12208108946528580488.a n : ℤ) = A119771 n

end A119771

/-! ## A119771.P3878910577370558634

`lcm(n, n²*∑[∑[n]])`
-/

namespace A119771.P3878910577370558634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A119771.P3878910577370558634

namespace A119771

/-- `lcm(n, n²*∑[∑[n]])` -/
def P3878910577370558634.Spec : Prop :=
  ∀ n, (P3878910577370558634.a n : ℤ) = A119771 n

end A119771

/-! ## A119771.P17134004576123430491

`floor(n²/acot(∑[∑[n]]))`
-/

namespace A119771.P17134004576123430491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A119771.P17134004576123430491

namespace A119771

/-- `floor(n²/acot(∑[∑[n]]))` -/
def P17134004576123430491.Spec : Prop :=
  ∀ n, P17134004576123430491.a n = A119771 n

end A119771

/-! ## A119771.P17825831557156207519

`round(n²/acot(∑[∑[n]]))`
-/

namespace A119771.P17825831557156207519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A119771.P17825831557156207519

namespace A119771

/-- `round(n²/acot(∑[∑[n]]))` -/
def P17825831557156207519.Spec : Prop :=
  ∀ n, P17825831557156207519.a n = A119771 n

end A119771

/-! ## A119771.P16454381107345211500

`floor(n*n*∑[a(n-1)+n])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A119771.P16454381107345211500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A119771.P16454381107345211500

namespace A119771

/-- `floor(n*n*∑[a(n-1)+n])` -/
def P16454381107345211500.Spec : Prop :=
  ∀ n, (P16454381107345211500.a n : ℤ) = A119771 n

end A119771

/-! ## A119771.P11697514628341601474

`n²*A000292(n)`
-/

namespace A119771.P11697514628341601474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000292 n

end

end A119771.P11697514628341601474

namespace A119771

/-- `n²*A000292(n)` -/
def P11697514628341601474.Spec : Prop :=
  ∀ n, P11697514628341601474.a n = A119771 n

end A119771

/-! ## A119771.P1494123172597098781

`∑[n²²-A006325(n)]`
-/

namespace A119771.P1494123172597098781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119771.P1494123172597098781

namespace A119771

/-- `∑[n²²-A006325(n)]` -/
def P1494123172597098781.Spec : Prop :=
  ∀ n, P1494123172597098781.a n = A119771 n

end A119771

/-! ## A119771.P15999620751285922930

`A000292(n)*A253909(n)`
-/

namespace A119771.P15999620751285922930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A253909 n

end

end A119771.P15999620751285922930

namespace A119771

/-- `A000292(n)*A253909(n)` -/
def P15999620751285922930.Spec : Prop :=
  ∀ n, P15999620751285922930.a n = A119771 n

end A119771

/-! ## A119771.P423814770498051481

`A234041(n)*A387655(n)`
-/

namespace A119771.P423814770498051481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234041 n * A387655 n

end

end A119771.P423814770498051481

namespace A119771

/-- `A234041(n)*A387655(n)` -/
def P423814770498051481.Spec : Prop :=
  ∀ n, P423814770498051481.a n = A119771 n

end A119771

/-! ## A119771.P522282011101131732

`A112742(n)+n*A071239(n)`
-/

namespace A119771.P522282011101131732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + (n : ℤ) * A071239 n

end

end A119771.P522282011101131732

namespace A119771

/-- `A112742(n)+n*A071239(n)` -/
def P522282011101131732.Spec : Prop :=
  ∀ n, P522282011101131732.a n = A119771 n

end A119771

/-! ## A119771.P15819917462929143604

`(A002717(n)-A173196(n))*n²`
-/

namespace A119771.P15819917462929143604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002717 n - A173196 n) * (n ^ 2 : ℤ)

end

end A119771.P15819917462929143604

namespace A119771

/-- `(A002717(n)-A173196(n))*n²` -/
def P15819917462929143604.Spec : Prop :=
  ∀ n, P15819917462929143604.a n = A119771 n

end A119771

/-! ## A119771.P15360026670841142050

`(A173196(n+1)+A173196(n))*n²`
-/

namespace A119771.P15360026670841142050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173196 (n + 1) + A173196 n) * (n ^ 2 : ℤ)

end

end A119771.P15360026670841142050

namespace A119771

/-- `(A173196(n+1)+A173196(n))*n²` -/
def P15360026670841142050.Spec : Prop :=
  ∀ n, P15360026670841142050.a n = A119771 n

end A119771

/-! ## A119771.P17298196167867868046

`∑[∑[A100174(n+1)]-A100174(n+1)]`
-/

namespace A119771.P17298196167867868046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A100174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119771.P17298196167867868046

namespace A119771

/-- `∑[∑[A100174(n+1)]-A100174(n+1)]` -/
def P17298196167867868046.Spec : Prop :=
  ∀ n, P17298196167867868046.a n = A119771 n

end A119771

/-! ## A119771.P2484438724843420106

`A004256(n)-(A071238(n)+A002412(n))`
-/

namespace A119771.P2484438724843420106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004256 n - (A071238 n + A002412 n)

end

end A119771.P2484438724843420106

namespace A119771

/-- `A004256(n)-(A071238(n)+A002412(n))` -/
def P2484438724843420106.Spec : Prop :=
  ∀ n, P2484438724843420106.a n = A119771 n

end A119771

/-! ## A119771.P9160772142782428503

`A002415(n)+A000217(n)*A000330(n)`
-/

namespace A119771.P9160772142782428503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + A000217 n * A000330 n

end

end A119771.P9160772142782428503

namespace A119771

/-- `A002415(n)+A000217(n)*A000330(n)` -/
def P9160772142782428503.Spec : Prop :=
  ∀ n, P9160772142782428503.a n = A119771 n

end A119771

/-! ## A119771.P3135909095906813812

`(A000537(n+1)-A132117(n+1))*n²`
-/

namespace A119771.P3135909095906813812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000537 (n + 1) - A132117 (n + 1)) * (n ^ 2 : ℤ)

end

end A119771.P3135909095906813812

namespace A119771

/-- `(A000537(n+1)-A132117(n+1))*n²` -/
def P3135909095906813812.Spec : Prop :=
  ∀ n, P3135909095906813812.a n = A119771 n

end A119771

/-! ## A119771.P9857312003818798026

`A002415(n+1)/A008591(n+1)*A195321(n)`
-/

namespace A119771.P9857312003818798026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002415 (n + 1) : ℚ) / (A008591 (n + 1) : ℚ) * (A195321 n : ℚ)

end

end A119771.P9857312003818798026

namespace A119771

/-- `A002415(n+1)/A008591(n+1)*A195321(n)` -/
def P9857312003818798026.Spec : Prop :=
  ∀ n, P9857312003818798026.a n = (A119771 n : ℚ)

end A119771

/-!
# A119772: a(n) = prime(4^n).

The programs for A119772, there is no canonical definition to state claims against.
-/

/-! ## A119772.P8748862069981291558

`A033844(2*n)`
-/

namespace A119772.P8748862069981291558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (2 * n)

end

end A119772.P8748862069981291558

/-! ## A119772.P12560479917529949690

`A018249(2*n)+1`
-/

namespace A119772.P12560479917529949690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 (2 * n) + 1

end

end A119772.P12560479917529949690

/-! ## A119772.P7014399750641724718

`A051440(2*n)-1`
-/

namespace A119772.P7014399750641724718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051440 (2 * n) - 1

end

end A119772.P7014399750641724718

/-! ## A119772.P2662536187928717415

`A051439(2*n)-A074325(2*n)`
-/

namespace A119772.P2662536187928717415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051439 (2 * n) - A074325 (2 * n)

end

end A119772.P2662536187928717415

/-! ## A119772.P16821655179905217559

`A073799(A004277(n))`
-/

namespace A119772.P16821655179905217559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A004277 n).toNat

end

end A119772.P16821655179905217559

/-!
# A119773: (8^n)-th prime.

The programs for A119773, there is no canonical definition to state claims against.
-/

/-! ## A119773.P12904629875990007010

`A033844(3*n)`
-/

namespace A119773.P12904629875990007010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (3 * n)

end

end A119773.P12904629875990007010

/-! ## A119773.P6619177899850398138

`A018249(3*n)+1`
-/

namespace A119773.P6619177899850398138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 (3 * n) + 1

end

end A119773.P6619177899850398138

/-! ## A119773.P6022976245523975365

`A051440(3*n)-1`
-/

namespace A119773.P6022976245523975365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051440 (3 * n) - 1

end

end A119773.P6022976245523975365

/-! ## A119773.P12848069880747556076

`A073799(A008486(n))`
-/

namespace A119773.P12848069880747556076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A008486 n).toNat

end

end A119773.P12848069880747556076

/-! ## A119773.P14703096193565807995

`A073799(A028310(3*n))`
-/

namespace A119773.P14703096193565807995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A028310 (3 * n)).toNat

end

end A119773.P14703096193565807995

/-!
# A119774: (9^n)-th prime.

The programs for A119774, there is no canonical definition to state claims against.
-/

/-! ## A119774.P16268950224341492503

`A038833(2*n)`
-/

namespace A119774.P16268950224341492503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (2 * n)

end

end A119774.P16268950224341492503

/-! ## A119774.P14618708834360769221

`record[A038833(A014681(n))]`
-/

namespace A119774.P14618708834360769221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119774.P14618708834360769221

/-! ## A119774.P4571705768670605612

`record[A038833(A163575(Δ[n²]))]`
-/

namespace A119774.P4571705768670605612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (A163575 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119774.P4571705768670605612

/-! ## A119774.P8580978012067340920

`record[A038833(A000265(n+1)-1)]`
-/

namespace A119774.P8580978012067340920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119774.P8580978012067340920

/-! ## A119774.P5804658426532334936

`A038833(A005843(n))+C(n, 64)²`
-/

namespace A119774.P5804658426532334936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038833 (A005843 n).toNat + (Nat.choose n 64 ^ 2 : ℤ)

end

end A119774.P5804658426532334936

/-!
# A119775: (14^n)-th prime.

The programs for A119775, there is no canonical definition to state claims against.
-/

/-! ## A119775.P8959727710625086098

`A347000(eq[12, A025581(n)])`
-/

namespace A119775.P8959727710625086098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119775.P8959727710625086098

/-! ## A119775.P14187014311054720602

`A347000(eq[13, A193739(n)])`
-/

namespace A119775.P14187014311054720602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119775.P14187014311054720602

/-! ## A119775.P12805034335004014270

`A347000(eq[13, A195663(n)])`
-/

namespace A119775.P12805034335004014270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119775.P12805034335004014270

/-! ## A119775.P15792853419128464228

`A347000(eq[12, sqrt(A129713(n))])`
-/

namespace A119775.P15792853419128464228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A129713 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A119775.P15792853419128464228

/-! ## A119775.P4288706231325561659

`A347000(eq[13, A004736(n+1)])`
-/

namespace A119775.P4288706231325561659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119775.P4288706231325561659

/-!
# A119776: (15^n)-th prime.

The programs for A119776, there is no canonical definition to state claims against.
-/

/-! ## A119776.P17703361778883750963

`A347000(eq[13, A025581(n)])`
-/

namespace A119776.P17703361778883750963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119776.P17703361778883750963

/-! ## A119776.P18182417170928272738

`A347000(eq[14, A193739(n)])`
-/

namespace A119776.P18182417170928272738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119776.P18182417170928272738

/-! ## A119776.P14168168240705399343

`A347000(eq[14, A195663(n)])`
-/

namespace A119776.P14168168240705399343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119776.P14168168240705399343

/-! ## A119776.P2966302336539585194

`A347000(eq[14, A004736(n+1)])`
-/

namespace A119776.P2966302336539585194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119776.P2966302336539585194

/-!
# A119777: (16^n)-th prime.

The programs for A119777, there is no canonical definition to state claims against.
-/

/-! ## A119777.P2961772218593756435

`A119772(2*n)`
-/

namespace A119777.P2961772218593756435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119772 (2 * n)

end

end A119777.P2961772218593756435

/-! ## A119777.P13912671572066874452

`A033844(4*n)`
-/

namespace A119777.P13912671572066874452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (4 * n)

end

end A119777.P13912671572066874452

/-! ## A119777.P4968809181099968660

`record[A033844(A066104(n))]`
-/

namespace A119777.P4968809181099968660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A066104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119777.P4968809181099968660

/-! ## A119777.P1869029269640019973

`record[A033844(A271478(n))]`
-/

namespace A119777.P1869029269640019973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (A271478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119777.P1869029269640019973

/-! ## A119777.P2693789247417736961

`A073799(A008574(n))`
-/

namespace A119777.P2693789247417736961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A008574 n).toNat

end

end A119777.P2693789247417736961

/-!
# A119778: (32^n)-th prime.

The programs for A119778, there is no canonical definition to state claims against.
-/

/-! ## A119778.P14151113457328839830

`A033844(5*n)`
-/

namespace A119778.P14151113457328839830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (5 * n)

end

end A119778.P14151113457328839830

/-! ## A119778.P10162361149603676435

`A073799(A008706(n))`
-/

namespace A119778.P10162361149603676435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A008706 n).toNat

end

end A119778.P10162361149603676435

/-! ## A119778.P8020052133391360109

`A073799(A008574(n)+n)`
-/

namespace A119778.P8020052133391360109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A008574 n + (n : ℤ)).toNat

end

end A119778.P8020052133391360109

/-! ## A119778.P4884825367868687500

`A073799(A008458(n)-n)`
-/

namespace A119778.P4884825367868687500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A008458 n - (n : ℤ)).toNat

end

end A119778.P4884825367868687500

/-! ## A119778.P1715754596923898382

`A073799(A004277(2*n)+n)`
-/

namespace A119778.P1715754596923898382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A004277 (2 * n) + (n : ℤ)).toNat

end

end A119778.P1715754596923898382

/-!
# A119779: 64^n-th prime.

The programs for A119779, there is no canonical definition to state claims against.
-/

/-! ## A119779.P6482519072126859417

`A119773(2*n)`
-/

namespace A119779.P6482519072126859417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119773 (2 * n)

end

end A119779.P6482519072126859417

/-! ## A119779.P14035760379262129211

`A119772(3*n)`
-/

namespace A119779.P14035760379262129211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119772 (3 * n)

end

end A119779.P14035760379262129211

/-! ## A119779.P7449174570367169868

`A033844(6*n)`
-/

namespace A119779.P7449174570367169868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (6 * n)

end

end A119779.P7449174570367169868

/-! ## A119779.P12285059864536271345

`A018249(A047271(3*n+1))+1`
-/

namespace A119779.P12285059864536271345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 (A047271 (3 * n + 1)).toNat + 1

end

end A119779.P12285059864536271345

/-! ## A119779.P4197463212981347170

`A073799(A008458(n))`
-/

namespace A119779.P4197463212981347170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A008458 n).toNat

end

end A119779.P4197463212981347170

/-!
# A119780: a(n) = (100^n)-th prime.

The programs for A119780, there is no canonical definition to state claims against.
-/

/-! ## A119780.P4130176689997525209

`A006988(2*n)`
-/

namespace A119780.P4130176689997525209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006988 (2 * n)

end

end A119780.P4130176689997525209

/-! ## A119780.P18085879148136612315

`record[A006988(n)/(-1)^n]`
-/

namespace A119780.P18085879148136612315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006988 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119780.P18085879148136612315

/-! ## A119780.P2876488242403201002

`record[A006988(n)^A033999(n)]`
-/

namespace A119780.P2876488242403201002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006988 n : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119780.P2876488242403201002

/-! ## A119780.P14932692714689867501

`record[A006988(A105353(n+1)-1)]`
-/

namespace A119780.P14932692714689867501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006988 (A105353 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119780.P14932692714689867501

/-! ## A119780.P12945471597166553099

`record[A006988(n-A007814(n+1))]`
-/

namespace A119780.P12945471597166553099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006988 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119780.P12945471597166553099

/-!
# A119781: 128^n-th prime.

The programs for A119781, there is no canonical definition to state claims against.
-/

/-! ## A119781.P12503289111725371876

`A033844(7*n)`
-/

namespace A119781.P12503289111725371876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (7 * n)

end

end A119781.P12503289111725371876

/-!
# A119784: Numerator of Sum[Sum[(-1)^(i+1)*1/(i*j)^2, {i, 1, n}], {j, 1, n}].

The programs for A119784, there is no canonical definition to state claims against.
-/

/-! ## A119784.P5528870305079153234

`A002701(n+2)*A125294(n+1)*A119682(A077168(n))`
-/

namespace A119784.P5528870305079153234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002701 (n + 2) * A125294 (n + 1) * A119682 (A077168 n).toNat

end

end A119784.P5528870305079153234

/-!
# A119785: Numerator of the product of the n-th square pyramidal number and the n-th generalized harmonic number in power 2.

The programs for A119785, there is no canonical definition to state claims against.
-/

/-! ## A119785.P7791100338270364135

`A007406(n+1)*A125294(A032559(n+1))`
-/

namespace A119785.P7791100338270364135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007406 (n + 1) * A125294 (A032559 (n + 1)).toNat

end

end A119785.P7791100338270364135

/-! ## A119785.P18331201855962772795

`A007406(n+1)*A125294(A061219(n+1))`
-/

namespace A119785.P18331201855962772795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007406 (n + 1) * A125294 (A061219 (n + 1)).toNat

end

end A119785.P18331201855962772795

/-! ## A119785.P13438696755007610624

`A007406(n+1)*A125294(A276142(n+1))`
-/

namespace A119785.P13438696755007610624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007406 (n + 1) * A125294 (A276142 (n + 1)).toNat

end

end A119785.P13438696755007610624

/-! ## A119785.P16695907508722149403

`∑[(1/(n+1))²]*A007407(n+1)*A125294(A032559(n+1))`
-/

namespace A119785.P16695907508722149403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A007407 (n + 1) : ℚ) * (A125294 (A032559 (n + 1)).toNat : ℚ)

end

end A119785.P16695907508722149403

/-!
# A119786: Numerator of the product of the n-th triangular number and the n-th harmonic number.

The programs for A119786, there is no canonical definition to state claims against.
-/

/-! ## A119786.P1258107660280812865

`A000265(A096617(n+1))*A093178(n+2)`
-/

namespace A119786.P1258107660280812865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A096617 (n + 1)).toNat * A093178 (n + 2)

end

end A119786.P1258107660280812865

/-! ## A119786.P4509146845016663186

`A000265(A120263(n+1)*A193758(n+2))`
-/

namespace A119786.P4509146845016663186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A120263 (n + 1) * A193758 (n + 2)).toNat

end

end A119786.P4509146845016663186

/-! ## A119786.P3393375293957625344

`A000265(A093818(n+2)*A193758(n+2))`
-/

namespace A119786.P3393375293957625344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A093818 (n + 2) * A193758 (n + 2)).toNat

end

end A119786.P3393375293957625344

/-! ## A119786.P17705131453793264714

`A000265(lcm(A096617(n+1), A193758(n+2)))`
-/

namespace A119786.P17705131453793264714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm (A096617 (n + 1)) (A193758 (n + 2)))

end

end A119786.P17705131453793264714

/-! ## A119786.P13304533347558280067

`lcm(A000265(A193758(n+2)), A110566(n+1))`
-/

namespace A119786.P13304533347558280067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (A193758 (n + 2)).toNat) (A110566 (n + 1))

end

end A119786.P13304533347558280067

/-!
# A119787: Numerator of the product of n and the n-th alternating harmonic number, Sum_{k=1..n} (-1)^(k+1)/k.

The programs for A119787, there is no canonical definition to state claims against.
-/

/-! ## A119787.P8159083896317883504

`A058313(n+1)*A119788(n+1)`
-/

namespace A119787.P8159083896317883504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058313 (n + 1) * A119788 (n + 1)

end

end A119787.P8159083896317883504

/-! ## A119787.P6327901635368556151

`A075830(n+2)*A119788(n+1)`
-/

namespace A119787.P6327901635368556151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075830 (n + 2) * A119788 (n + 1)

end

end A119787.P6327901635368556151

/-! ## A119787.P13642747507325061880

`gcd(A025530(n+1), A075827(n+1))`
-/

namespace A119787.P13642747507325061880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025530 (n + 1)) (A075827 (n + 1))

end

end A119787.P13642747507325061880

/-! ## A119787.P12621705605456231289

`ceil(ratio[A269626(n)])*A058313(n+1)`
-/

namespace A119787.P12621705605456231289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ * A058313 (n + 1)

end

end A119787.P12621705605456231289

/-! ## A119787.P5228668417520822711

`ceil(ratio[A269626(n)])*A075830(n+2)`
-/

namespace A119787.P5228668417520822711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ * A075830 (n + 2)

end

end A119787.P5228668417520822711

/-!
# A119788: Ratio of the numerator of the product of n and the n-th alternating harmonic number n*H'(n) to the numerator of the n-th alternating harmonic number H'(n) = Sum_{k=1..n} (-1)^(k+1)*1/k.

The programs for A119788, there is no canonical definition to state claims against.
-/

/-! ## A119788.P6657660062282230574

`ceil(ratio[A269626(n)])`
-/

namespace A119788.P6657660062282230574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A119788.P6657660062282230574

/-! ## A119788.P7983636304075385652

`A028310(floor(ratio[A269626(n)]))`
-/

namespace A119788.P7983636304075385652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋.toNat

end

end A119788.P7983636304075385652

/-! ## A119788.P10502898471078501882

`A028310(round(ratio[A269626(n)]))`
-/

namespace A119788.P10502898471078501882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A119788.P10502898471078501882

/-! ## A119788.P18209885226073743425

`A109613(round(ratio[A269626(n)]))`
-/

namespace A119788.P18209885226073743425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A119788.P18209885226073743425

/-! ## A119788.P2401353543902322395

`ceil(A269626(n+1)/A269626(n))`
-/

namespace A119788.P2401353543902322395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269626 (n + 1) : ℚ) / (A269626 n : ℚ)⌉

end

end A119788.P2401353543902322395

/-! ## A119788.P13887285014131096312

`(n+1)/gcd(n+1, A058312(n+1))`
-/

namespace A119788.P13887285014131096312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A058312 (n + 1)) : ℚ)

end

end A119788.P13887285014131096312

/-! ## A119788.P10289694225980252532

`A269626(C(n+1, A269626(n)²))`
-/

namespace A119788.P10289694225980252532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269626 (Nat.choose (n + 1) (A269626 n ^ 2).toNat)

end

end A119788.P10289694225980252532

/-! ## A119788.P16171024051472865318

`gcd(A032009(n+1), A093010(n))`
-/

namespace A119788.P16171024051472865318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032009 (n + 1)) (A093010 n)

end

end A119788.P16171024051472865318

/-! ## A119788.P3335295712700652439

`A351944(A257851(n))`
-/

namespace A119788.P3335295712700652439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351944 (A257851 n).toNat

end

end A119788.P3335295712700652439

/-! ## A119788.P530942822195315004

`gcd(A008392(n), A265590(n+1))`
-/

namespace A119788.P530942822195315004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008392 n) (A265590 (n + 1))

end

end A119788.P530942822195315004

/-!
# A119789: T(n, k) = floor(log_{goldenratio}(Fibonacci(n)*Fibonacci(k))), with T(n, k) = 0 for n < 3, T(n, 0) = n-2 for n > 2, triangle read by rows.

The programs for A119789, the canonical program `A119789.P14087946612977688962` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119789 has offset 0).

The definition of A119789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119789.P14087946612977688962

`A289207(A002262(n))+A289207(A003056(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119789

/-- `A289207(A002262(n))+A289207(A003056(n))` -/
def P14087946612977688962.Spec : Prop :=
  ∀ n, P14087946612977688962.a n = A119789 n

theorem P14087946612977688962.correct : P14087946612977688962.Spec := by
  intro n
  simp only [A119789]

end A119789

/-! ## A119789.P2051352917641380118

`A289207(A144328(n+1))+A289207(A003056(n))`
-/

namespace A119789.P2051352917641380118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A144328 (n + 1)).toNat + A289207 (A003056 n).toNat

end

end A119789.P2051352917641380118

namespace A119789

/-- `A289207(A144328(n+1))+A289207(A003056(n))` -/
def P2051352917641380118.Spec : Prop :=
  ∀ n, P2051352917641380118.a n = A119789 n

end A119789

/-! ## A119789.P5359890294331502048

`∑{e}[A100851(n), A289207(#)]`
-/

namespace A119789.P5359890294331502048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A289207 (Nat.factorization (f1 n).natAbs p)

end

end A119789.P5359890294331502048

namespace A119789

/-- `∑{e}[A100851(n), A289207(#)]` -/
def P5359890294331502048.Spec : Prop :=
  ∀ n, P5359890294331502048.a n = A119789 n

end A119789

/-! ## A119789.P839876886836518021

`∑{e}[A100852(n), A289207(#)]`
-/

namespace A119789.P839876886836518021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A289207 (Nat.factorization (f1 n).natAbs p)

end

end A119789.P839876886836518021

namespace A119789

/-- `∑{e}[A100852(n), A289207(#)]` -/
def P839876886836518021.Spec : Prop :=
  ∀ n, P839876886836518021.a n = A119789 n

end A119789

/-! ## A119789.P4468307221527068524

`A014082(A233757(n+1)-1)`
-/

namespace A119789.P4468307221527068524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (A233757 (n + 1) - 1).toNat

end

end A119789.P4468307221527068524

namespace A119789

/-- `A014082(A233757(n+1)-1)` -/
def P4468307221527068524.Spec : Prop :=
  ∀ n, P4468307221527068524.a n = A119789 n

end A119789

/-!
# A119791: a(1) = 1, a(n) = number of divisors of n*a(n-1).

The programs for A119791, the canonical program `A119791.P16998931998944088094` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119791 has offset 1).

The definition of A119791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119791.P16998931998944088094

`A000005((n+1)*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A119791

/-- `A000005((n+1)*a(n-1))` -/
def P16998931998944088094.Spec : Prop :=
  ∀ n, P16998931998944088094.a n = A119791 (n + 1)

theorem P16998931998944088094.correct : P16998931998944088094.Spec := by
  intro n
  simp only [A119791, Nat.add_sub_cancel]

end A119791

/-! ## A119791.P8100131536666296822

`A000005((n+1)/a(n-1)^-1)` with `a(0)=1`
-/

namespace A119791.P8100131536666296822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (a (n - 1) : ℚ) ^ (-1 : ℤ))).toNat

end

end A119791.P8100131536666296822

namespace A119791

/-- `A000005((n+1)/a(n-1)^-1)` -/
def P8100131536666296822.Spec : Prop :=
  ∀ n, P8100131536666296822.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P9220270263713349277

`A000005(a(n-1)*∑[2*n]/n)` with `a(0)=1`
-/

namespace A119791.P9220270263713349277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / (n : ℚ))).toNat

end

end A119791.P9220270263713349277

namespace A119791

/-- `A000005(a(n-1)*∑[2*n]/n)` -/
def P9220270263713349277.Spec : Prop :=
  ∀ n, P9220270263713349277.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P9557777717050660178

`A000005(a(n-1)/(1-n/(n+1)))` with `a(0)=1`
-/

namespace A119791.P9557777717050660178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (n : ℚ) / (n + 1 : ℚ)))).toNat

end

end A119791.P9557777717050660178

namespace A119791

/-- `A000005(a(n-1)/(1-n/(n+1)))` -/
def P9557777717050660178.Spec : Prop :=
  ∀ n, P9557777717050660178.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P12815923064861995769

`A000005(-((n-1-2*n)*a(n-1)))` with `a(0)=1`
-/

namespace A119791.P12815923064861995769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (-(((n : ℤ) - 1 - (2 * n : ℤ)) * a (n - 1))).toNat

end

end A119791.P12815923064861995769

namespace A119791

/-- `A000005(-((n-1-2*n)*a(n-1)))` -/
def P12815923064861995769.Spec : Prop :=
  ∀ n, P12815923064861995769.a n = A119791 (n + 1)

theorem P12815923064861995769.correct : P12815923064861995769.Spec := by
  intro n
  simp only [A119791, Nat.add_sub_cancel, A119791.P12815923064861995769.a, A119791.P16998931998944088094.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A119791

/-! ## A119791.P15575586476248099798

`A000005(floor((2*n-(n-1))*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A119791.P15575586476248099798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (((2 * n : ℤ) - ((n : ℤ) - 1)) * a (n - 1)).toNat

end

end A119791.P15575586476248099798

namespace A119791

/-- `A000005(floor((2*n-(n-1))*a(n-1)))` -/
def P15575586476248099798.Spec : Prop :=
  ∀ n, P15575586476248099798.a n = A119791 (n + 1)

theorem P15575586476248099798.correct : P15575586476248099798.Spec := by
  intro n
  simp only [A119791, Nat.add_sub_cancel, A119791.P15575586476248099798.a, A119791.P16998931998944088094.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A119791

/-! ## A119791.P13380662142917040034

`A000005(a(n-1)-(n-2*n)*a(n-1))` with `a(0)=1`
-/

namespace A119791.P13380662142917040034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1) - ((n : ℤ) - (2 * n : ℤ)) * a (n - 1)).toNat

end

end A119791.P13380662142917040034

namespace A119791

/-- `A000005(a(n-1)-(n-2*n)*a(n-1))` -/
def P13380662142917040034.Spec : Prop :=
  ∀ n, P13380662142917040034.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P10385849999611664722

`A000005(a(n-1)*A008619(2*n))` with `a(0)=1`
-/

namespace A119791.P10385849999611664722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1) * A008619 (2 * n)).toNat

end

end A119791.P10385849999611664722

namespace A119791

/-- `A000005(a(n-1)*A008619(2*n))` -/
def P10385849999611664722.Spec : Prop :=
  ∀ n, P10385849999611664722.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P3075328320792235159

`A000005(a(n-1)*A028242(2*n))` with `a(0)=1`
-/

namespace A119791.P3075328320792235159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1) * A028242 (2 * n)).toNat

end

end A119791.P3075328320792235159

namespace A119791

/-- `A000005(a(n-1)*A028242(2*n))` -/
def P3075328320792235159.Spec : Prop :=
  ∀ n, P3075328320792235159.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P5612517218938579358

`A000005(a(n-1)*A029579(2*n))` with `a(0)=1`
-/

namespace A119791.P5612517218938579358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1) * A029579 (2 * n)).toNat

end

end A119791.P5612517218938579358

namespace A119791

/-- `A000005(a(n-1)*A029579(2*n))` -/
def P5612517218938579358.Spec : Prop :=
  ∀ n, P5612517218938579358.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P7771478331831930975

`A000005(a(n-1)*A008611(3*n))` with `a(0)=1`
-/

namespace A119791.P7771478331831930975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1) * A008611 (3 * n)).toNat

end

end A119791.P7771478331831930975

namespace A119791

/-- `A000005(a(n-1)*A008611(3*n))` -/
def P7771478331831930975.Spec : Prop :=
  ∀ n, P7771478331831930975.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P12408916455984754138

`A000005(a(n-1)*A008620(3*n))` with `a(0)=1`
-/

namespace A119791.P12408916455984754138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1) * A008620 (3 * n)).toNat

end

end A119791.P12408916455984754138

namespace A119791

/-- `A000005(a(n-1)*A008620(3*n))` -/
def P12408916455984754138.Spec : Prop :=
  ∀ n, P12408916455984754138.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P15713002825552098120

`A000005(a(n-1)*A008624(4*n))` with `a(0)=1`
-/

namespace A119791.P15713002825552098120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (n - 1) * A008624 (4 * n)).toNat

end

end A119791.P15713002825552098120

namespace A119791

/-- `A000005(a(n-1)*A008624(4*n))` -/
def P15713002825552098120.Spec : Prop :=
  ∀ n, P15713002825552098120.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P1446058603772456702

`A000005(a(-A024000(n))*A000027(n+1))` with `a(0)=1`
-/

namespace A119791.P1446058603772456702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (a (-A024000 n).toNat * A000027 (n + 1)).toNat

end

end A119791.P1446058603772456702

namespace A119791

/-- `A000005(a(-A024000(n))*A000027(n+1))` -/
def P1446058603772456702.Spec : Prop :=
  ∀ n, P1446058603772456702.a n = A119791 (n + 1)

end A119791

/-! ## A119791.P13917011926464576211

`A032741((n+1)*a(n-1))+1` with `a(0)=1`
-/

namespace A119791.P13917011926464576211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032741 ((n + 1 : ℤ) * a (n - 1)).toNat + 1

end

end A119791.P13917011926464576211

namespace A119791

/-- `A032741((n+1)*a(n-1))+1` -/
def P13917011926464576211.Spec : Prop :=
  ∀ n, P13917011926464576211.a n = A119791 (n + 1)

end A119791

/-!
# A119792: Record values in A119791.

The programs for A119792, there is no canonical definition to state claims against.
-/

/-! ## A119792.P17922730190200898363

`record[A119791(n+1)]`
-/

namespace A119792.P17922730190200898363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119792.P17922730190200898363

/-! ## A119792.P6860194803984994037

`A119791(A119793(n+1))`
-/

namespace A119792.P6860194803984994037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119791 (A119793 (n + 1)).toNat

end

end A119792.P6860194803984994037

/-! ## A119792.P7347973032778658075

`record[A119791(A008619(n))/A158416(n)]`
-/

namespace A119792.P7347973032778658075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119791 (A008619 n).toNat : ℚ) / (A158416 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119792.P7347973032778658075

/-! ## A119792.P6386457450266117301

`record[A000005(n*a(n-1))]` with `a(0)=1`
-/

namespace A119792.P6386457450266117301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000005 ((n : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119792.P6386457450266117301

/-! ## A119792.P13492559552382423611

`record[A000005(a(n-1)/n^-1)]` with `a(0)=1`
-/

namespace A119792.P13492559552382423611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000005 (SequenceMachineLib.roundAway ((f1 (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119792.P13492559552382423611

/-!
# A119794: a(n) is the product of the positive integers each of which is <= n and is divisible by exactly one prime dividing n (but is coprime to every other prime dividing n). (a(1) = 1).

The programs for A119794, there is no canonical definition to state claims against.
-/

/-! ## A119794.P4031040441627570310

`A000027(A070251(n+1))*A183091(n+1)`
-/

namespace A119794.P4031040441627570310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A070251 (n + 1)).toNat * A183091 (n + 1)

end

end A119794.P4031040441627570310

/-! ## A119794.P5802276214131848792

`A066570(n+1)/A118759(A183092(n+1))`
-/

namespace A119794.P5802276214131848792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066570 (n + 1) : ℚ) / (A118759 (A183092 (n + 1)).toNat : ℚ)

end

end A119794.P5802276214131848792

/-! ## A119794.P9548929921023618102

`A070251(n+1)*A183091(A187829(n+1))`
-/

namespace A119794.P9548929921023618102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070251 (n + 1) * A183091 (A187829 (n + 1)).toNat

end

end A119794.P9548929921023618102

/-! ## A119794.P12104179950890543957

`A000027(A066570(n+1)/A183092(n+1))`
-/

namespace A119794.P12104179950890543957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A066570 (n + 1) : ℚ) / (A183092 (n + 1) : ℚ))).toNat

end

end A119794.P12104179950890543957

/-! ## A119794.P17878530945700701078

`A066570(n+1)/A183092(A187829(n+1))`
-/

namespace A119794.P17878530945700701078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066570 (n + 1) : ℚ) / (A183092 (A187829 (n + 1)).toNat : ℚ)

end

end A119794.P17878530945700701078

/-!
# A119795: a(1) = a(2) = 1. a(n) = a(n-2) + (largest power of 2 dividing a(n-1)).

The programs for A119795, the canonical program `A119795.P14428827034511331712` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119795 has offset 1).

The definition of A119795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119795.P14428827034511331712

`a(n-2)+A006519(a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A119795

/-- `a(n-2)+A006519(a(n-1))` -/
def P14428827034511331712.Spec : Prop :=
  ∀ n, P14428827034511331712.a n = A119795 (n + 1)

theorem P14428827034511331712.correct : P14428827034511331712.Spec := by
  intro n
  simp only [A119795, Nat.add_sub_cancel]

end A119795

/-! ## A119795.P3888010032658317952

`a(n-2)+2^val(a(n-1), 2)` with `a(0)=1, a(1)=1`
-/

namespace A119795.P3888010032658317952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 2 ^ SequenceMachineLib.valuation (a (n - 1)) 2

end

end A119795.P3888010032658317952

namespace A119795

/-- `a(n-2)+2^val(a(n-1), 2)` -/
def P3888010032658317952.Spec : Prop :=
  ∀ n, (P3888010032658317952.a n : ℤ) = A119795 (n + 1)

end A119795

/-! ## A119795.P2311743668365370010

`a(n-2)+and(-a(n-1), a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A119795.P2311743668365370010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Int.land (-a (n - 1)) (a (n - 1))

end

end A119795.P2311743668365370010

namespace A119795

/-- `a(n-2)+and(-a(n-1), a(n-1))` -/
def P2311743668365370010.Spec : Prop :=
  ∀ n, P2311743668365370010.a n = A119795 (n + 1)

end A119795

/-! ## A119795.P9332081596489854396

`a(n-2)-or(-a(n-1), a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A119795.P9332081596489854396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - Int.lor (-a (n - 1)) (a (n - 1))

end

end A119795.P9332081596489854396

namespace A119795

/-- `a(n-2)-or(-a(n-1), a(n-1))` -/
def P9332081596489854396.Spec : Prop :=
  ∀ n, P9332081596489854396.a n = A119795 (n + 1)

end A119795

/-! ## A119795.P9652441310150444170

`a(n-2)-xor(-a(n-1), a(n-1))/2` with `a(0)=1, a(1)=1`
-/

namespace A119795.P9652441310150444170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - (Int.xor (SequenceMachineLib.roundAway (-a (n - 1))) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / 2

end

end A119795.P9652441310150444170

namespace A119795

/-- `a(n-2)-xor(-a(n-1), a(n-1))/2` -/
def P9652441310150444170.Spec : Prop :=
  ∀ n, P9652441310150444170.a n = (A119795 (n + 1) : ℚ)

end A119795

/-! ## A119795.P2114879981904558185

`A285326(a(n-1))+a(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A119795.P2114879981904558185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A285326 (a (n - 1)).toNat + a (n - 2) - a (n - 1)

end

end A119795.P2114879981904558185

namespace A119795

/-- `A285326(a(n-1))+a(n-2)-a(n-1)` -/
def P2114879981904558185.Spec : Prop :=
  ∀ n, P2114879981904558185.a n = A119795 (n + 1)

end A119795

/-!
# A119797: Numbers m such that m and m+1 have the same number of distinct digits in decimal representation.

The programs for A119797, the canonical program `A119797.P17065731778391816104` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119797 has offset 1).

The definition of A119797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5704 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119797.P17065731778391816104

`eq[A043537(abs(1-n)+1), A043537(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A119797

/-- `eq[A043537(abs(1-n)+1), A043537(n+1)]` -/
def P17065731778391816104.Spec : Prop :=
  ∀ n, (P17065731778391816104.a n : ℤ) = A119797 (n + 1)

theorem P17065731778391816104.correct : P17065731778391816104.Spec := by
  intro n
  simp only [A119797, Nat.add_sub_cancel]

end A119797

/-! ## A119797.P8687665144671357947

`eq[A043537(n+1), A055642(A137564(n))]`
-/

namespace A119797.P8687665144671357947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119797.P8687665144671357947

namespace A119797

/-- `eq[A043537(n+1), A055642(A137564(n))]` -/
def P8687665144671357947.Spec : Prop :=
  ∀ n, (P8687665144671357947.a n : ℤ) = A119797 (n + 1)

end A119797

/-! ## A119797.P16526694124238509966

`eq[A043537(n+1), A055642(A227362(n))]`
-/

namespace A119797.P16526694124238509966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119797.P16526694124238509966

namespace A119797

/-- `eq[A043537(n+1), A055642(A227362(n))]` -/
def P16526694124238509966.Spec : Prop :=
  ∀ n, (P16526694124238509966.a n : ℤ) = A119797 (n + 1)

end A119797

/-! ## A119797.P14278766051472063296

`eq[A107846(n)+A043537(n+1), A055642(n)]`
-/

namespace A119797.P14278766051472063296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n + A043537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119797.P14278766051472063296

namespace A119797

/-- `eq[A107846(n)+A043537(n+1), A055642(n)]` -/
def P14278766051472063296.Spec : Prop :=
  ∀ n, (P14278766051472063296.a n : ℤ) = A119797 (n + 1)

end A119797

/-! ## A119797.P4764212248318485031

`eq[A047726(n+1), A047726(A233583(n+1))]`
-/

namespace A119797.P4764212248318485031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119797.P4764212248318485031

namespace A119797

/-- `eq[A047726(n+1), A047726(A233583(n+1))]` -/
def P4764212248318485031.Spec : Prop :=
  ∀ n, (P4764212248318485031.a n : ℤ) = A119797 (n + 1)

end A119797

/-! ## A119797.P16310597218004683195

`eq[A120004(n+1), A120004(A000196(n²))]`
-/

namespace A119797.P16310597218004683195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120004 (A000196 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119797.P16310597218004683195

namespace A119797

/-- `eq[A120004(n+1), A120004(A000196(n²))]` -/
def P16310597218004683195.Spec : Prop :=
  ∀ n, (P16310597218004683195.a n : ℤ) = A119797 (n + 1)

end A119797

/-! ## A119797.P8764605475313991735

`eq[2*A043537(n+1), A055642(A045918(n))]`
-/

namespace A119797.P8764605475313991735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A043537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A045918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119797.P8764605475313991735

namespace A119797

/-- `eq[2*A043537(n+1), A055642(A045918(n))]` -/
def P8764605475313991735.Spec : Prop :=
  ∀ n, (P8764605475313991735.a n : ℤ) = A119797 (n + 1)

end A119797

/-! ## A119797.P12299840825125072700

`eq[A377191(n+1), A377191(n)]`
-/

namespace A119797.P12299840825125072700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119797.P12299840825125072700

namespace A119797

/-- `eq[A377191(n+1), A377191(n)]` -/
def P12299840825125072700.Spec : Prop :=
  ∀ n, (P12299840825125072700.a n : ℤ) = A119797 (n + 1)

end A119797

/-!
# A119798: Numbers m such that m and 2*m have the same number of distinct digits in decimal representation.

The programs for A119798, there is no canonical definition to state claims against.
-/

/-! ## A119798.P10302262030046159168

`lt[A047842(2*n), A000040(A047842(n))]`
-/

namespace A119798.P10302262030046159168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A047842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119798.P10302262030046159168

/-! ## A119798.P16177313430201104640

`lt[A047842(2*n), A001637(A244112(n))]`
-/

namespace A119798.P16177313430201104640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (A244112 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119798.P16177313430201104640

/-! ## A119798.P4491617913892873274

`lt[A244112(2*n), A005097(A047842(n))]`
-/

namespace A119798.P4491617913892873274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (A047842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119798.P4491617913892873274

/-! ## A119798.P2274757909138604995

`lt[A045918(2*n), A107953(A196222(n))]`
-/

namespace A119798.P2274757909138604995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107953 (A196222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119798.P2274757909138604995

/-! ## A119798.P4530984453177441260

`lt[A047842(2*n), A107953(A196222(n))]`
-/

namespace A119798.P4530984453177441260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107953 (A196222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119798.P4530984453177441260

/-! ## A119798.P3753632721614461167

`lt[A244112(2*n), A001637(A244112(n))]`
-/

namespace A119798.P3753632721614461167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244112 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (A244112 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119798.P3753632721614461167

/-! ## A119798.P1601816172083328680

`lt[A047842(2*n), A004139(A047842(n)+1)]`
-/

namespace A119798.P1601816172083328680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A047842 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119798.P1601816172083328680

/-! ## A119798.P9396793880422952191

`lt[A047842(2*n), A005408(A047842(n)+1)]`
-/

namespace A119798.P9396793880422952191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047842 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A047842 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119798.P9396793880422952191

/-!
# A119799: Numbers m such that m, m+1 and 2*m have the same number of distinct digits in decimal representation.

The programs for A119799, there is no canonical definition to state claims against.
-/

/-! ## A119799.P6316209524298276073

`∩[A119797(n+1), A119798(n+1)]`
-/

namespace A119799.P6316209524298276073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119799.P6316209524298276073

/-! ## A119799.P11902101568842326611

`eq[A043562(2*n), A043562(A048307(2*n))]`
-/

namespace A119799.P11902101568842326611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A048307 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119799.P11902101568842326611

/-! ## A119799.P17100598082671109362

`eq[2, A000030(A045918(n+1)+A045918(n))]`
-/

namespace A119799.P17100598082671109362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A045918 (n + 1) + A045918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119799.P17100598082671109362

/-! ## A119799.P15255754303459092911

`lt[A120126(A123895(2*n)), A227362(n+1)]`
-/

namespace A119799.P15255754303459092911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120126 (A123895 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119799.P15255754303459092911

/-! ## A119799.P2674854195646451199

`lt[A261423(n+1), A000038(A241342(n))+n]`
-/

namespace A119799.P2674854195646451199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A241342 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119799.P2674854195646451199

