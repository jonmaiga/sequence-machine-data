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
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A327900: Nonprime squarefree numbers whose prime indices all have the same Omega (number of prime factors counted with multiplicity).

The programs for A327900, there is no canonical definition to state claims against.
-/

/-! ## A327900.P17465077845963782277

`∩[A087247(n+1), A320324(n+1)]`
-/

namespace A327900.P17465077845963782277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327900.P17465077845963782277

/-! ## A327900.P7610934265411957296

`∩[A000469(n+1), A320324(n+1)]`
-/

namespace A327900.P7610934265411957296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327900.P7610934265411957296

/-! ## A327900.P1773689203397615600

`record[A340679(A320324(n+1))]`
-/

namespace A327900.P1773689203397615600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340679 (A320324 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327900.P1773689203397615600

/-! ## A327900.P566975762366086728

`∩[A320324(n+1), A339561(n+1)]`
-/

namespace A327900.P566975762366086728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327900.P566975762366086728

/-! ## A327900.P482938950175808245

`∩[A320324(n+1), A339562(n+1)]`
-/

namespace A327900.P482938950175808245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327900.P482938950175808245

/-!
# A327901: Nonprime squarefree numbers whose prime indices all have the same sum of prime indices (A056239).

The programs for A327901, there is no canonical definition to state claims against.
-/

/-! ## A327901.P5981885353513023433

`∩[A253610(n+1), A385858(n+1)]`
-/

namespace A327901.P5981885353513023433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327901.P5981885353513023433

/-!
# A327902: Nonprime squarefree numbers whose prime indices all have the same average of prime indices (A326567/A326568).

The programs for A327902, there is no canonical definition to state claims against.
-/

/-! ## A327902.P17887881157651737107

`record[A326937(A326536(n+1))]`
-/

namespace A327902.P17887881157651737107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326937 (A326536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327902.P17887881157651737107

/-! ## A327902.P6994665688006837123

`∩[A000469(n+1), A326536(n+1)]`
-/

namespace A327902.P6994665688006837123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327902.P6994665688006837123

/-! ## A327902.P16981280124025741243

`∩[A030229(n+1), A326536(n+1)]`
-/

namespace A327902.P16981280124025741243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327902.P16981280124025741243

/-!
# A327903: Number of set-systems covering n vertices where every edge has a different sum.

The programs for A327903, there is no canonical definition to state claims against.
-/

/-! ## A327903.P9225776706809409294

`or(1, A250120(A185143(3*n)))`
-/

namespace A327903.P9225776706809409294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A250120 (A185143 (3 * n)).toNat)

end

end A327903.P9225776706809409294

/-!
# A327904: Number of labeled simple graphs with vertices {1..n} such that every edge has a different sum.

The programs for A327904, the canonical program `A327904.P1857902899353940114` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327904 has offset 0).

The definition of A327904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327904.P1857902899353940114

`a(n-1)*ceil(n/2)*ceil(n/2+1/4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327904

/-- `a(n-1)*ceil(n/2)*ceil(n/2+1/4)` -/
def P1857902899353940114.Spec : Prop :=
  ∀ n, P1857902899353940114.a n = A327904 n

theorem P1857902899353940114.correct : P1857902899353940114.Spec := by
  intro n
  simp only [A327904]

end A327904

/-! ## A327904.P18382466183555940379

`∏[floor(cosh(log(n+1))²)]`
-/

namespace A327904.P18382466183555940379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 1 : ℝ)) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327904.P18382466183555940379

namespace A327904

/-- `∏[floor(cosh(log(n+1))²)]` -/
def P18382466183555940379.Spec : Prop :=
  ∀ n, P18382466183555940379.a n = A327904 n

end A327904

/-! ## A327904.P4488788289839800169

`∏[a(n-2)+n]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A327904.P4488788289839800169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327904.P4488788289839800169

namespace A327904

/-- `∏[a(n-2)+n]` -/
def P4488788289839800169.Spec : Prop :=
  ∀ n, (P4488788289839800169.a n : ℤ) = A327904 n

end A327904

/-! ## A327904.P14907518671672023384

`∏[∑[n]-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A327904.P14907518671672023384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327904.P14907518671672023384

namespace A327904

/-- `∏[∑[n]-a(n-1)]` -/
def P14907518671672023384.Spec : Prop :=
  ∀ n, P14907518671672023384.a n = A327904 n

end A327904

/-! ## A327904.P12936251475172129470

`a(n-1)*∑[ceil(n/2)]` with `a(0)=1`
-/

namespace A327904.P12936251475172129470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327904.P12936251475172129470

namespace A327904

/-- `a(n-1)*∑[ceil(n/2)]` -/
def P12936251475172129470.Spec : Prop :=
  ∀ n, P12936251475172129470.a n = A327904 n

end A327904

/-! ## A327904.P2513243942006036364

`∏[∑[round((n-2)/2)+2]-n]`
-/

namespace A327904.P2513243942006036364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A327904.P2513243942006036364

namespace A327904

/-- `∏[∑[round((n-2)/2)+2]-n]` -/
def P2513243942006036364.Spec : Prop :=
  ∀ n, P2513243942006036364.a n = A327904 n

end A327904

/-! ## A327904.P15214302655041209787

`floor((∑[n]/n)²)*a(n-1)` with `a(0)=1`
-/

namespace A327904.P15214302655041209787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ)) ^ 2⌋ * a (n - 1)

end

end A327904.P15214302655041209787

namespace A327904

/-- `floor((∑[n]/n)²)*a(n-1)` -/
def P15214302655041209787.Spec : Prop :=
  ∀ n, P15214302655041209787.a n = A327904 n

end A327904

/-! ## A327904.P14785346385967744670

`floor(floor(((n+1)/2)²)*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A327904.P14785346385967744670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n + 1 : ℚ) / 2) ^ 2⌋ * a (n - 1)

end

end A327904.P14785346385967744670

namespace A327904

/-- `floor(floor(((n+1)/2)²)*a(n-1))` -/
def P14785346385967744670.Spec : Prop :=
  ∀ n, P14785346385967744670.a n = A327904 n

end A327904

/-! ## A327904.P11702609173785410781

`a(n-1)/floor(((n+1)/2)²)^(-1)` with `a(0)=1`
-/

namespace A327904.P11702609173785410781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (⌊((n + 1 : ℚ) / 2) ^ 2⌋ : ℚ) ^ (-1 : ℤ)

end

end A327904.P11702609173785410781

namespace A327904

/-- `a(n-1)/floor(((n+1)/2)²)^(-1)` -/
def P11702609173785410781.Spec : Prop :=
  ∀ n, P11702609173785410781.a n = (A327904 n : ℚ)

end A327904

/-! ## A327904.P4465908221291829654

`floor((n+1)*(n+1)/4)*floor(a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A327904.P4465908221291829654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) * ((n + 1 : ℚ) / 4)⌋ * a (n - 1)

end

end A327904.P4465908221291829654

namespace A327904

/-- `floor((n+1)*(n+1)/4)*floor(a(n-1))` -/
def P4465908221291829654.Spec : Prop :=
  ∀ n, P4465908221291829654.a n = A327904 n

end A327904

/-!
# A327906: Numbers with only one factorization into factors > 1 with integer mean (namely, as a singleton).

The programs for A327906, there is no canonical definition to state claims against.
-/

/-! ## A327906.P16177720311416654591

`eq[1, A326622(n+1)]+1`
-/

namespace A327906.P16177720311416654591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327906.P16177720311416654591

/-! ## A327906.P18015191370330543884

`record[(n+2)/A326622(n+2)]`
-/

namespace A327906.P18015191370330543884
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A326622 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327906.P18015191370330543884

/-! ## A327906.P4599078426690668955

`lt[A280869(A326622(n+1)), A051903(n+1)]+1`
-/

namespace A327906.P4599078426690668955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280869 (A326622 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A327906.P4599078426690668955

/-! ## A327906.P5868079501666920270

`eq[1, A326622(A028310(n))]`
-/

namespace A327906.P5868079501666920270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327906.P5868079501666920270

/-! ## A327906.P17940028148102431255

`A020725(eq[1, A326622(n+1)])`
-/

namespace A327906.P17940028148102431255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327906.P17940028148102431255

/-! ## A327906.P3459636123118988481

`eq[1, A326622(A134478(∑[n]))]`
-/

namespace A327906.P3459636123118988481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A134478 (∑ j ∈ Finset.range (n + 1), f3 j)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327906.P3459636123118988481

/-!
# A327907: Numbers with more than one factorization into at factors > 1 with integer mean.

The programs for A327907, there is no canonical definition to state claims against.
-/

/-! ## A327907.P13029021211510196993

`lt[1, A326622(n+1)]+1`
-/

namespace A327907.P13029021211510196993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A327907.P13029021211510196993

/-! ## A327907.P5766257510183587410

`lt[1, A326622(A028310(n))]`
-/

namespace A327907.P5766257510183587410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327907.P5766257510183587410

/-! ## A327907.P16731819335294040061

`A020725(lt[1, A326622(n+1)])`
-/

namespace A327907.P16731819335294040061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A327907.P16731819335294040061

/-! ## A327907.P12304474098448494380

`lt[1, A326622(A233583(n+1))]`
-/

namespace A327907.P12304474098448494380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327907.P12304474098448494380

/-! ## A327907.P8396867383724322968

`A326178(lt[1, A326622(n+1)])`
-/

namespace A327907.P8396867383724322968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A327907.P8396867383724322968

/-!
# A327910: This is the reduced A317745, with primes -> 1 and prime + prime -> 2.

The programs for A327910, there is no canonical definition to state claims against.
-/

/-! ## A327910.P2320267675580672156

`(A317745(n+1)-1)%2+1`
-/

namespace A327910.P2320267675580672156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317745 (n + 1) - 1) 2 + 1

end

end A327910.P2320267675580672156

/-! ## A327910.P16540588911822698203

`A072491(A317745(n+1))`
-/

namespace A327910.P16540588911822698203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A317745 (n + 1)).toNat

end

end A327910.P16540588911822698203

/-! ## A327910.P693547491424886407

`∑{e}[A036561(n), A101264(#)]`
-/

namespace A327910.P693547491424886407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A101264 (Nat.factorization (f1 n).natAbs p)

end

end A327910.P693547491424886407

/-! ## A327910.P5070589450255231978

`∑{e}[A036561(n), A116799(#)]`
-/

namespace A327910.P5070589450255231978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A116799 (Nat.factorization (f1 n).natAbs p)

end

end A327910.P5070589450255231978

/-! ## A327910.P4892905524756149102

`∑{e}[A036561(n), A119624(#)]`
-/

namespace A327910.P4892905524756149102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A119624 (Nat.factorization (f1 n).natAbs p)

end

end A327910.P4892905524756149102

/-! ## A327910.P14976555231415355093

`∑{e}[A175840(n), A101264(#)]`
-/

namespace A327910.P14976555231415355093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A101264 (Nat.factorization (f1 n).natAbs p)

end

end A327910.P14976555231415355093

/-! ## A327910.P11932629474181441089

`∑{e}[A175840(n), A119624(#)]`
-/

namespace A327910.P11932629474181441089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A119624 (Nat.factorization (f1 n).natAbs p)

end

end A327910.P11932629474181441089

/-! ## A327910.P11047362085154093326

`A107393(A317745(n+1)²)`
-/

namespace A327910.P11047362085154093326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A317745 (n + 1) ^ 2).toNat

end

end A327910.P11047362085154093326

/-! ## A327910.P18323447215965306429

`∑{e}[A036561(n), 2-A340101(#)]`
-/

namespace A327910.P18323447215965306429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - A340101 (Nat.factorization (f1 n).natAbs p))

end

end A327910.P18323447215965306429

/-! ## A327910.P3846784493547999084

`∑{e}[A036561(n), A000035(A340101(#))]`
-/

namespace A327910.P3846784493547999084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000035 (A340101 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A327910.P3846784493547999084

/-!
# A327911: Numbers with equal counts of 1's and 0's in both their binary and Zeckendorf representations.

The programs for A327911, there is no canonical definition to state claims against.
-/

/-! ## A327911.P7319684945897140968

`∩[A031443(n+1), A210619(n+1)]`
-/

namespace A327911.P7319684945897140968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327911.P7319684945897140968

/-! ## A327911.P4785661821015001008

`∩[A210619(n+1), floor(A337238(n+1)/4)]`
-/

namespace A327911.P4785661821015001008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337238 (n + 1) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327911.P4785661821015001008

/-! ## A327911.P4297236430380165546

`∩[A031443(n+1), A143061(A185870(n+1)+2)-1]`
-/

namespace A327911.P4297236430380165546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A185870 (n + 1) + 2).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327911.P4297236430380165546

/-!
# A327913: Array read by antidiagonals: T(n,m) is the number of distinct unordered row and column sums of n X m binary matrices.

The programs for A327913, there is no canonical definition to state claims against.
-/

/-! ## A327913.P11150944445223229712

`A028657(A034502(A088699(n))+n)`
-/

namespace A327913.P11150944445223229712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A034502 (A088699 n).toNat + (n : ℤ)).toNat

end

end A327913.P11150944445223229712

/-! ## A327913.P4772808090262980331

`A028657(A034502(A094526(n))+n)`
-/

namespace A327913.P4772808090262980331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 (A034502 (A094526 n).toNat + (n : ℤ)).toNat

end

end A327913.P4772808090262980331

/-! ## A327913.P4376306575559727561

`A028657(n)-A025469(A167040(n))`
-/

namespace A327913.P4376306575559727561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 n - A025469 (A167040 n).toNat

end

end A327913.P4376306575559727561

/-! ## A327913.P13404232835389889658

`A340998(A061345(n))+A088699(n)`
-/

namespace A327913.P13404232835389889658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A061345 n).toNat + 140) + A088699 n

end

end A327913.P13404232835389889658

/-!
# A327914: The 58 prime dates of each non-leap year of the form concatenate(month,day) with leading zero for days 1..9.

The programs for A327914, there is no canonical definition to state claims against.
-/

/-! ## A327914.P4753872582050615175

`A131687(A337843(n))`
-/

namespace A327914.P4753872582050615175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131687 (A337843 n).toNat

end

end A327914.P4753872582050615175

/-! ## A327914.P10074695550228497923

`A131687(A101947(n+1))`
-/

namespace A327914.P10074695550228497923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131687 (A101947 (n + 1)).toNat

end

end A327914.P10074695550228497923

/-! ## A327914.P8985257322006969466

`A327915(A337843(n)%A096926(n+1))`
-/

namespace A327914.P8985257322006969466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327915 (Int.tmod (A337843 n) (A096926 (n + 1))).toNat

end

end A327914.P8985257322006969466

/-! ## A327914.P8633858381917918178

`A327915(A101947(n+1)%A096926(n+1))`
-/

namespace A327914.P8633858381917918178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327915 (Int.tmod (A101947 (n + 1)) (A096926 (n + 1))).toNat

end

end A327914.P8633858381917918178

/-! ## A327914.P2220551633980181363

`A327915(∪[A096926(n+1), A101947(n+1)])`
-/

namespace A327914.P2220551633980181363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101947 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327915 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A327914.P2220551633980181363

/-!
# A327915: The 59 prime dates of each leap year of the form concatenate(month,day) with leading zero for days 1..9.

The programs for A327915, there is no canonical definition to state claims against.
-/

/-! ## A327915.P69282067468978149

`A131687(n+1)-A083463(A322320(n+1))`
-/

namespace A327915.P69282067468978149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131687 (n + 1) - A083463 (A322320 (n + 1)).toNat

end

end A327915.P69282067468978149

/-! ## A327915.P8971112138718604321

`A112417(A131687(n+1))`
-/

namespace A327915.P8971112138718604321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112417 (A131687 (n + 1)).toNat

end

end A327915.P8971112138718604321

/-! ## A327915.P7314608448370022760

`A131687(n+1)%A054738(n)`
-/

namespace A327915.P7314608448370022760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131687 (n + 1)) (A054738 n)

end

end A327915.P7314608448370022760

/-! ## A327915.P1361429258069514809

`A131687(n+1)+A036987(A234314(n+1))`
-/

namespace A327915.P1361429258069514809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131687 (n + 1) + A036987 (A234314 (n + 1)).toNat

end

end A327915.P1361429258069514809

/-! ## A327915.P18208890440676905106

`A131687(n+1)*A131718(A167187(n+1))`
-/

namespace A327915.P18208890440676905106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131687 (n + 1) * A131718 (A167187 (n + 1)).toNat

end

end A327915.P18208890440676905106

/-!
# A327916: Triangle T(k, n) read by rows: Array A(k, n) = 2^k*(k + 1 + 2*n), k >= 0, n >= 0, read by antidiagonals upwards.

The programs for A327916, the canonical program `A327916.P14309064169059662937` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327916 has offset 0).

The definition of A327916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327916.P2921774610950934521

`(n+1-C(∑[char[∑[n+1]]], 2))*A130321(n)`
-/

namespace A327916.P2921774610950934521
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A130321 n

end

end A327916.P2921774610950934521

namespace A327916

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*A130321(n)` -/
def P2921774610950934521.Spec : Prop :=
  ∀ n, P2921774610950934521.a n = A327916 n

end A327916

/-! ## A327916.P15762240935998174447

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A094727(n+1)`
-/

namespace A327916.P15762240935998174447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A094727 (n + 1) : ℚ)

end

end A327916.P15762240935998174447

namespace A327916

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A094727(n+1)` -/
def P15762240935998174447.Spec : Prop :=
  ∀ n, P15762240935998174447.a n = (A327916 n : ℚ)

end A327916

/-! ## A327916.P13555094570214814143

`(n+1-C(∑[char[∑[n+1]]], 2))*A059268(∑[2*n]%comp[∑[n]])`
-/

namespace A327916.P13555094570214814143
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A059268 ((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n)

end

end A327916.P13555094570214814143

namespace A327916

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*A059268(∑[2*n]%comp[∑[n]])` -/
def P13555094570214814143.Spec : Prop :=
  ∀ n, P13555094570214814143.a n = A327916 n

end A327916

/-! ## A327916.P8471119906889071228

`(n+1-C(∑[char[∑[n+1]]], 2))*A011782(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A327916.P8471119906889071228
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A011782 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A327916.P8471119906889071228

namespace A327916

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*A011782(C(comp[∑[n]]-n, 2)-n)` -/
def P8471119906889071228.Spec : Prop :=
  ∀ n, P8471119906889071228.a n = A327916 n

end A327916

/-! ## A327916.P13715152834637946259

`(n+1-C(∑[char[∑[n+1]]], 2))*A000079(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A327916.P13715152834637946259
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A000079 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A327916.P13715152834637946259

namespace A327916

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*A000079(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P13715152834637946259.Spec : Prop :=
  ∀ n, P13715152834637946259.a n = A327916 n

end A327916

/-! ## A327916.P6823886306396626525

`A062111(n)+A053219(n+1)`
-/

namespace A327916.P6823886306396626525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 n + A053219 (n + 1)

end

end A327916.P6823886306396626525

namespace A327916

/-- `A062111(n)+A053219(n+1)` -/
def P6823886306396626525.Spec : Prop :=
  ∀ n, P6823886306396626525.a n = A327916 n

end A327916

/-! ## A327916.P14309064169059662937

`(A051162(n)+1)*A130321(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327916

/-- `(A051162(n)+1)*A130321(n)` -/
def P14309064169059662937.Spec : Prop :=
  ∀ n, P14309064169059662937.a n = A327916 n

theorem P14309064169059662937.correct : P14309064169059662937.Spec := by
  intro n
  simp only [A327916]

end A327916

/-! ## A327916.P3114048148017258068

`A094727(n+1)*A130321(n)`
-/

namespace A327916.P3114048148017258068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) * A130321 n

end

end A327916.P3114048148017258068

namespace A327916

/-- `A094727(n+1)*A130321(n)` -/
def P3114048148017258068.Spec : Prop :=
  ∀ n, P3114048148017258068.a n = A327916 n

end A327916

/-! ## A327916.P17197880678665533750

`A130321(n)+2*A062111(n)`
-/

namespace A327916.P17197880678665533750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + 2 * A062111 n

end

end A327916.P17197880678665533750

namespace A327916

/-- `A130321(n)+2*A062111(n)` -/
def P17197880678665533750.Spec : Prop :=
  ∀ n, P17197880678665533750.a n = A327916 n

end A327916

/-! ## A327916.P5135329150972375490

`(A108872(n+1)-1)*A130321(n)`
-/

namespace A327916.P5135329150972375490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) - 1) * A130321 n

end

end A327916.P5135329150972375490

namespace A327916

/-- `(A108872(n+1)-1)*A130321(n)` -/
def P5135329150972375490.Spec : Prop :=
  ∀ n, P5135329150972375490.a n = A327916 n

end A327916

/-! ## A327916.P8234621444112323164

`2*A053219(n+1)-A130321(n)`
-/

namespace A327916.P8234621444112323164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053219 (n + 1) - A130321 n

end

end A327916.P8234621444112323164

namespace A327916

/-- `2*A053219(n+1)-A130321(n)` -/
def P8234621444112323164.Spec : Prop :=
  ∀ n, P8234621444112323164.a n = A327916 n

end A327916

/-! ## A327916.P644219225471902357

`A000079(A025581(n))*A094727(n+1)`
-/

namespace A327916.P644219225471902357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A094727 (n + 1)

end

end A327916.P644219225471902357

namespace A327916

/-- `A000079(A025581(n))*A094727(n+1)` -/
def P644219225471902357.Spec : Prop :=
  ∀ n, P644219225471902357.a n = A327916 n

end A327916

/-! ## A327916.P9081336331542959683

`A062111(comp[∑[n-1]])`
-/

namespace A327916.P9081336331542959683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A327916.P9081336331542959683

namespace A327916

/-- `A062111(comp[∑[n-1]])` -/
def P9081336331542959683.Spec : Prop :=
  ∀ n, P9081336331542959683.a n = A327916 n

end A327916

/-! ## A327916.P8793444340013606

`A062111(A014132(n+1))+A062111(n)`
-/

namespace A327916.P8793444340013606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 (A014132 (n + 1)).toNat + A062111 n

end

end A327916.P8793444340013606

namespace A327916

/-- `A062111(A014132(n+1))+A062111(n)` -/
def P8793444340013606.Spec : Prop :=
  ∀ n, P8793444340013606.a n = A327916 n

end A327916

/-! ## A327916.P15607430390266623339

`(n+1-C(∑[char[∑[n+1]]], 2))*A000010(2^(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A327916.P15607430390266623339
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat

end

end A327916.P15607430390266623339

namespace A327916

/-- `(n+1-C(∑[char[∑[n+1]]], 2))*A000010(2^(C(comp[∑[n]]-n, 2)-n))` -/
def P15607430390266623339.Spec : Prop :=
  ∀ n, P15607430390266623339.a n = A327916 n

end A327916

/-!
# A327917: Triangle T read by rows: T(k, n) = A(k-n, k) with the array A(k, n) = F(2*k+n) = A000045(2*k+n), for k >= 0 and n >= 0.

The programs for A327917, there is no canonical definition to state claims against.
-/

/-! ## A327917.P13517374786189192375

`A000045(eq[1, floor(2*sqrt(n))%2]-(2*n+3))`
-/

namespace A327917.P13517374786189192375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 3))

end

end A327917.P13517374786189192375

/-! ## A327917.P5415918684335374539

`A000045(C(comp[∑[n]]-n, 2)-∑[char[comp[∑[n+1]]]])`
-/

namespace A327917.P5415918684335374539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - ∑ j ∈ Finset.range (n + 1), f3 j)

end

end A327917.P5415918684335374539

/-! ## A327917.P1934797278886625510

`A000045(∑[2*char[∑[n+1]]]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A327917.P1934797278886625510
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A327917.P1934797278886625510

/-! ## A327917.P17835537632926368267

`A199334(A061579(n))`
-/

namespace A327917.P17835537632926368267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199334 (A061579 n).toNat

end

end A327917.P17835537632926368267

/-! ## A327917.P11223718078355242070

`A000045(A294317(n))`
-/

namespace A327917.P11223718078355242070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A294317 n).toNat

end

end A327917.P11223718078355242070

/-! ## A327917.P8888225385303082575

`A212804(A128076(n+1))`
-/

namespace A327917.P8888225385303082575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A128076 (n + 1)).toNat

end

end A327917.P8888225385303082575

/-! ## A327917.P5054346482143278637

`A212804(A294317(n)+1)`
-/

namespace A327917.P5054346482143278637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A294317 n + 1).toNat

end

end A327917.P5054346482143278637

/-! ## A327917.P8803901828809548256

`A000045(A128076(n+1)-1)`
-/

namespace A327917.P8803901828809548256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A128076 (n + 1) - 1).toNat

end

end A327917.P8803901828809548256

/-! ## A327917.P7127075492687005244

`A000045(A025581(n)+∑[char[∑[n+1]]])`
-/

namespace A327917.P7127075492687005244
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025581 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327917.P7127075492687005244

/-! ## A327917.P11979783447879990827

`A000045(A217575(n+1)-2*(n+1))`
-/

namespace A327917.P11979783447879990827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A217575 (n + 1) - (2 * (n + 1) : ℤ)).toNat

end

end A327917.P11979783447879990827

/-!
# A327918: The 16 pure prime dates of each non-leap year of the form concatenate(month,day) with month and day also prime numbers.

The programs for A327918, there is no canonical definition to state claims against.
-/

/-! ## A327918.P13941048041885824908

`A327919(comp[C(2*n, 3)])`
-/

namespace A327918.P13941048041885824908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327919 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A327918.P13941048041885824908

/-! ## A327918.P16648654220808118341

`A327919(comp[∑[2*n]²])`
-/

namespace A327918.P16648654220808118341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327919 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A327918.P16648654220808118341

/-! ## A327918.P13466698582185147507

`p?[A327919(n+1)+char[3]]`
-/

namespace A327918.P13466698582185147507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327919 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A327918.P13466698582185147507

/-! ## A327918.P11637101072697319678

`filter[A327919(n+1), A232750(#)]`
-/

namespace A327918.P11637101072697319678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232750 (f1 j).toNat = 1) n)

end

end A327918.P11637101072697319678

/-!
# A327919: The 17 pure prime dates of each leap year of the form concatenate(month,day) with month and day also prime numbers.

The programs for A327919, there is no canonical definition to state claims against.
-/

/-! ## A327919.P6606386152800854336

`A327349(lt[A005897(n), A327320(3*n+2)])`
-/

namespace A327919.P6606386152800854336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327320 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327919.P6606386152800854336

/-! ## A327919.P10456434200187314718

`A327349(lt[A234314(n+1), A327320(3*n+2)])`
-/

namespace A327919.P10456434200187314718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327320 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327919.P10456434200187314718

/-!
# A327921: Irregular triangle T read by rows: row n gives the values determining the zeros of the minimal polynomial ps(n, x) of 2*sin(Pi/n) (coefficients in A228786), for n >= 1.

The programs for A327921, there is no canonical definition to state claims against.
-/

/-! ## A327921.P15647489554885328800

`and(A094252(n+1), A381547(A007283(n)))`
-/

namespace A327921.P15647489554885328800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094252 (n + 1)) (A381547 (A007283 n).toNat)

end

end A327921.P15647489554885328800

/-!
# A327922: Odd numbers m >= 3 for which phi(2*m)/2 = phi(m)/2 is even, where phi = A000010 (Euler's totient).

The programs for A327922, the canonical program `A327922.P12450088541012564793` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327922 has offset 1).

The definition of A327922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327922.P17325165046307052589

`lt[2, gcd(8, A000010(n^(n%2)))]`
-/

namespace A327922.P17325165046307052589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A000010 (n ^ (n % 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327922.P17325165046307052589

namespace A327922

/-- `lt[2, gcd(8, A000010(n^(n%2)))]` -/
def P17325165046307052589.Spec : Prop :=
  ∀ n, (P17325165046307052589.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P12450088541012564793

`∪[A008846(n+1), A061346(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A327922

/-- `∪[A008846(n+1), A061346(n+1)]` -/
def P12450088541012564793.Spec : Prop :=
  ∀ n, (P12450088541012564793.a n : ℤ) = A327922 (n + 1)

theorem P12450088541012564793.correct : P12450088541012564793.Spec := by
  intro n
  simp only [A327922, Nat.add_sub_cancel]

end A327922

/-! ## A327922.P3104374876728251594

`∪[A061346(n+1), A120960(n+1)]`
-/

namespace A327922.P3104374876728251594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P3104374876728251594

namespace A327922

/-- `∪[A061346(n+1), A120960(n+1)]` -/
def P3104374876728251594.Spec : Prop :=
  ∀ n, (P3104374876728251594.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P3290136279996869547

`∪[A309812(n+1), A061346(n+1)]`
-/

namespace A327922.P3290136279996869547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P3290136279996869547

namespace A327922

/-- `∪[A309812(n+1), A061346(n+1)]` -/
def P3290136279996869547.Spec : Prop :=
  ∀ n, (P3290136279996869547.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P8813945777823723411

`eq[4, gcd(4, A000010(A093178(n)))]`
-/

namespace A327922.P8813945777823723411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A000010 (A093178 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327922.P8813945777823723411

namespace A327922

/-- `eq[4, gcd(4, A000010(A093178(n)))]` -/
def P8813945777823723411.Spec : Prop :=
  ∀ n, (P8813945777823723411.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P7757132381012658169

`eq[A319997(A000010(n+1)), A319998(n+1)]+1`
-/

namespace A327922.P7757132381012658169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A327922.P7757132381012658169

namespace A327922

/-- `eq[A319997(A000010(n+1)), A319998(n+1)]+1` -/
def P7757132381012658169.Spec : Prop :=
  ∀ n, (P7757132381012658169.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P8443457745285473315

`∩[2*n+1, A172019(n+1)]`
-/

namespace A327922.P8443457745285473315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P8443457745285473315

namespace A327922

/-- `∩[2*n+1, A172019(n+1)]` -/
def P8443457745285473315.Spec : Prop :=
  ∀ n, (P8443457745285473315.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P16504770544247018700

`∩[A172019(n+1), A004273(n)]`
-/

namespace A327922.P16504770544247018700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P16504770544247018700

namespace A327922

/-- `∩[A172019(n+1), A004273(n)]` -/
def P16504770544247018700.Spec : Prop :=
  ∀ n, (P16504770544247018700.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P2758344578656509840

`∩[A172019(n+1), A004274(n)]`
-/

namespace A327922.P2758344578656509840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P2758344578656509840

namespace A327922

/-- `∩[A172019(n+1), A004274(n)]` -/
def P2758344578656509840.Spec : Prop :=
  ∀ n, (P2758344578656509840.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P5761025119631125479

`∩[A172019(n+1), A004276(n)]`
-/

namespace A327922.P5761025119631125479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P5761025119631125479

namespace A327922

/-- `∩[A172019(n+1), A004276(n)]` -/
def P5761025119631125479.Spec : Prop :=
  ∀ n, (P5761025119631125479.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P7292350246020565868

`∩[A172019(n+1), A004281(n)]`
-/

namespace A327922.P7292350246020565868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P7292350246020565868

namespace A327922

/-- `∩[A172019(n+1), A004281(n)]` -/
def P7292350246020565868.Spec : Prop :=
  ∀ n, (P7292350246020565868.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P17417429247979351683

`∩[A172019(n+1), A060747(n)]`
-/

namespace A327922.P17417429247979351683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P17417429247979351683

namespace A327922

/-- `∩[A172019(n+1), A060747(n)]` -/
def P17417429247979351683.Spec : Prop :=
  ∀ n, (P17417429247979351683.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P10764117293997997049

`∩[A172019(n+1), A062545(n)]`
-/

namespace A327922.P10764117293997997049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P10764117293997997049

namespace A327922

/-- `∩[A172019(n+1), A062545(n)]` -/
def P10764117293997997049.Spec : Prop :=
  ∀ n, (P10764117293997997049.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P2257828714130202213

`∩[A172019(n+1), A130773(n)]`
-/

namespace A327922.P2257828714130202213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P2257828714130202213

namespace A327922

/-- `∩[A172019(n+1), A130773(n)]` -/
def P2257828714130202213.Spec : Prop :=
  ∀ n, (P2257828714130202213.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P1206271818668740462

`∩[A172019(n+1), A163985(n)]`
-/

namespace A327922.P1206271818668740462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P1206271818668740462

namespace A327922

/-- `∩[A172019(n+1), A163985(n)]` -/
def P1206271818668740462.Spec : Prop :=
  ∀ n, (P1206271818668740462.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P6455766266315574681

`∩[A172019(n+1), A223134(n)]`
-/

namespace A327922.P6455766266315574681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P6455766266315574681

namespace A327922

/-- `∩[A172019(n+1), A223134(n)]` -/
def P6455766266315574681.Spec : Prop :=
  ∀ n, (P6455766266315574681.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P13820743651442334775

`∩[2*n+1, A332556(n+1)]`
-/

namespace A327922.P13820743651442334775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P13820743651442334775

namespace A327922

/-- `∩[2*n+1, A332556(n+1)]` -/
def P13820743651442334775.Spec : Prop :=
  ∀ n, (P13820743651442334775.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P4002780453161144511

`∩[A332556(n+1), A004273(n)]`
-/

namespace A327922.P4002780453161144511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P4002780453161144511

namespace A327922

/-- `∩[A332556(n+1), A004273(n)]` -/
def P4002780453161144511.Spec : Prop :=
  ∀ n, (P4002780453161144511.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P9793071887558121527

`∩[A332556(n+1), A004274(n)]`
-/

namespace A327922.P9793071887558121527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P9793071887558121527

namespace A327922

/-- `∩[A332556(n+1), A004274(n)]` -/
def P9793071887558121527.Spec : Prop :=
  ∀ n, (P9793071887558121527.a n : ℤ) = A327922 (n + 1)

end A327922

/-! ## A327922.P12569603985107741345

`∩[A332556(n+1), A004276(n)]`
-/

namespace A327922.P12569603985107741345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327922.P12569603985107741345

namespace A327922

/-- `∩[A332556(n+1), A004276(n)]` -/
def P12569603985107741345.Spec : Prop :=
  ∀ n, (P12569603985107741345.a n : ℤ) = A327922 (n + 1)

end A327922

/-!
# A327924: Square array read by ascending antidiagonals: T(m,n) is the number of non-isomorphic groups G such that G is the semidirect product of C_m and C_n, where C_m is a normal subgroup of G and C_n is a subgroup of G.

The programs for A327924, there is no canonical definition to state claims against.
-/

/-! ## A327924.P2798321648469668714

`17%A342309(A359762(n))`
-/

namespace A327924.P2798321648469668714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 17 (A342309 (A359762 n).toNat)

end

end A327924.P2798321648469668714

/-! ## A327924.P608145438149295722

`A059896(gcd(A274005(n), A354057(n+1)))`
-/

namespace A327924.P608145438149295722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059896 (Int.gcd (A274005 n) (A354057 (n + 1)))

end

end A327924.P608145438149295722

/-! ## A327924.P8450559727947191251

`A281007(gcd(A145917(n+3), A208058(n)))`
-/

namespace A327924.P8450559727947191251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281007 (Int.gcd (A145917 (n + 3)) (A208058 n))

end

end A327924.P8450559727947191251

/-! ## A327924.P14688231082659953653

`A231335(A354057(n+1)%A133962(n+1))`
-/

namespace A327924.P14688231082659953653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231335 (Int.tmod (A354057 (n + 1)) (A133962 (n + 1))).toNat

end

end A327924.P14688231082659953653

/-! ## A327924.P16018483883058203080

`A001462(A354057(n+1))%A000978(n+5)`
-/

namespace A327924.P16018483883058203080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001462 (A354057 (n + 1)).toNat) (A000978 (n + 5))

end

end A327924.P16018483883058203080

/-!
# A327925: Irregular table read by rows: T(m,n) is the number of non-isomorphic groups G such that G is the semidirect product of C_m and C_n, where C_m is a normal subgroup of G and C_n is a subgroup of G, 1 <= n <= A002322(m).

The programs for A327925, there is no canonical definition to state claims against.
-/

/-! ## A327925.P9189947709715985490

`A326700(A000196(2*A305814(n+1)))`
-/

namespace A327925.P9189947709715985490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (A000196 (2 * A305814 (n + 1)).toNat).toNat

end

end A327925.P9189947709715985490

/-! ## A327925.P1889137465768690559

`A305302((1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)^A291759(n+1))`
-/

namespace A327925.P1889137465768690559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305302 (SequenceMachineLib.roundAway ((1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) ^ (A291759 (n + 1) : ℤ))).toNat

end

end A327925.P1889137465768690559

/-! ## A327925.P2026728938619904892

`A137735(gcd(A051953(n+1), A103931(n+1)))`
-/

namespace A327925.P2026728938619904892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Int.gcd (A051953 (n + 1)) (A103931 (n + 1)))

end

end A327925.P2026728938619904892

/-! ## A327925.P6867179849248441253

`A323437(A323403(n+1)*A323436(2*n+3))`
-/

namespace A327925.P6867179849248441253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 (A323403 (n + 1) * A323436 (2 * n + 3)).toNat

end

end A327925.P6867179849248441253

/-! ## A327925.P13568778003488125649

`A323437(A323403(n+1)*A323438(2*n+3))`
-/

namespace A327925.P13568778003488125649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323437 (A323403 (n + 1) * A323438 (2 * n + 3)).toNat

end

end A327925.P13568778003488125649

/-!
# A327926: a(n) = 99^n.

The programs for A327926, the canonical program `A327926.P906361886234178291` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327926 has offset 0).

The definition of A327926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `99^n` (program `A327926.P906361886234178291`, by `A327926.P906361886234178291.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A327926.P906361886234178291

`99^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327926

/-- `99^n` -/
def P906361886234178291.Spec : Prop :=
  ∀ n, (P906361886234178291.a n : ℤ) = A327926 n

theorem P906361886234178291.correct : P906361886234178291.Spec := by
  intro n
  simp only [A327926]

end A327926

/-!
# A327927: Expansion of e.g.f. exp(Sum_{i>=1} Sum_{j=1..i} x^(i*j) / (i*j)).

The programs for A327927, there is no canonical definition to state claims against.
-/

/-! ## A327927.P16161377058317910871

`A092691(n)+A078898(n!)`
-/

namespace A327927.P16161377058317910871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092691 n + A078898 (Nat.factorial n)

end

end A327927.P16161377058317910871

/-! ## A327927.P14128272854900882084

`A092691(n)+A004525(-∏[n-C(2, n+2)])`
-/

namespace A327927.P14128272854900882084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092691 n + A004525 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A327927.P14128272854900882084

/-! ## A327927.P9249915397098602329

`A092691(n)+A004525(A000142(n))`
-/

namespace A327927.P9249915397098602329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092691 n + A004525 (A000142 n).toNat

end

end A327927.P9249915397098602329

/-! ## A327927.P1070393306558244636

`A028310(A092691(n)+A001710(n))`
-/

namespace A327927.P1070393306558244636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A092691 n + A001710 n).toNat

end

end A327927.P1070393306558244636

/-!
# A327928: Number of distinct primes p such that p^p divides the arithmetic derivative of n.

The programs for A327928, there is no canonical definition to state claims against.
-/

/-! ## A327928.P4454355607767953454

`A006519(lcm(n, ∑[n])+1)*A341996(n)`
-/

namespace A327928.P4454355607767953454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Nat.lcm n (∑ j ∈ Finset.range (n + 1), f1 j) + 1) * A341996 n

end

end A327928.P4454355607767953454

/-! ## A327928.P787868836987046980

`∑{d}[A003415(n), A327861(#²)]`
-/

namespace A327928.P787868836987046980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327861 (d ^ 2)

end

end A327928.P787868836987046980

/-!
# A327929: Numbers for which there is at least one such prime p that p^p divides the arithmetic derivative of n, A003415(n).

The programs for A327929, the canonical program `A327929.P12201532374287229299` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327929 has offset 1).

The definition of A327929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327929.P6062186198589508899

`lt[0, A327928(n)]`
-/

namespace A327929.P6062186198589508899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327929.P6062186198589508899

namespace A327929

/-- `lt[0, A327928(n)]` -/
def P6062186198589508899.Spec : Prop :=
  ∀ n, (P6062186198589508899.a n : ℤ) = A327929 (n + 1)

end A327929

/-! ## A327929.P5506722460192819956

`lt[0, A341996(n)]`
-/

namespace A327929.P5506722460192819956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327929.P5506722460192819956

namespace A327929

/-- `lt[0, A341996(n)]` -/
def P5506722460192819956.Spec : Prop :=
  ∀ n, (P5506722460192819956.a n : ℤ) = A327929 (n + 1)

end A327929

/-! ## A327929.P12201532374287229299

`lt[1, A341997(n+2)]+2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A327929

/-- `lt[1, A341997(n+2)]+2` -/
def P12201532374287229299.Spec : Prop :=
  ∀ n, (P12201532374287229299.a n : ℤ) = A327929 (n + 1)

theorem P12201532374287229299.correct : P12201532374287229299.Spec := by
  intro n
  simp only [A327929, Nat.add_sub_cancel]

end A327929

/-! ## A327929.P6108252847371858670

`A000027(eq[1, A341996(n)])`
-/

namespace A327929.P6108252847371858670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327929.P6108252847371858670

namespace A327929

/-- `A000027(eq[1, A341996(n)])` -/
def P6108252847371858670.Spec : Prop :=
  ∀ n, P6108252847371858670.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P14081417341061869517

`eq[2, A000005(a(A327928(n)))]` with `a(0)=4`
-/

namespace A327929.P14081417341061869517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A327928 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327929.P14081417341061869517

namespace A327929

/-- `eq[2, A000005(a(A327928(n)))]` -/
def P14081417341061869517.Spec : Prop :=
  ∀ n, (P14081417341061869517.a n : ℤ) = A327929 (n + 1)

end A327929

/-! ## A327929.P8635174428870550645

`eq[4, A000203(a(A327928(n)))]` with `a(0)=2`
-/

namespace A327929.P8635174428870550645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000203 (f2 (A327928 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327929.P8635174428870550645

namespace A327929

/-- `eq[4, A000203(a(A327928(n)))]` -/
def P8635174428870550645.Spec : Prop :=
  ∀ n, (P8635174428870550645.a n : ℤ) = A327929 (n + 1)

end A327929

/-! ## A327929.P5913154688406621920

`eq[1, A341996(n*A341996(n))]`
-/

namespace A327929.P5913154688406621920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 ((n : ℤ) * A341996 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327929.P5913154688406621920

namespace A327929

/-- `eq[1, A341996(n*A341996(n))]` -/
def P5913154688406621920.Spec : Prop :=
  ∀ n, (P5913154688406621920.a n : ℤ) = A327929 (n + 1)

end A327929

/-! ## A327929.P6280898358142033322

`∪[A100716(n+1), A327934(n+1)]`
-/

namespace A327929.P6280898358142033322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327929.P6280898358142033322

namespace A327929

/-- `∪[A100716(n+1), A327934(n+1)]` -/
def P6280898358142033322.Spec : Prop :=
  ∀ n, (P6280898358142033322.a n : ℤ) = A327929 (n + 1)

end A327929

/-! ## A327929.P16218274168375048433

`filter[A328303(n+1), A341996(#)]`
-/

namespace A327929.P16218274168375048433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P16218274168375048433

namespace A327929

/-- `filter[A328303(n+1), A341996(#)]` -/
def P16218274168375048433.Spec : Prop :=
  ∀ n, P16218274168375048433.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P12015221877317022991

`filter[A099309(n+1), A341996(#)]`
-/

namespace A327929.P12015221877317022991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P12015221877317022991

namespace A327929

/-- `filter[A099309(n+1), A341996(#)]` -/
def P12015221877317022991.Spec : Prop :=
  ∀ n, P12015221877317022991.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P2799389237577836337

`filter[A002808(n+1), A341996(#)]`
-/

namespace A327929.P2799389237577836337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P2799389237577836337

namespace A327929

/-- `filter[A002808(n+1), A341996(#)]` -/
def P2799389237577836337.Spec : Prop :=
  ∀ n, P2799389237577836337.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P16782974388318732176

`filter[A018252(n+1), A341996(#)]`
-/

namespace A327929.P16782974388318732176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P16782974388318732176

namespace A327929

/-- `filter[A018252(n+1), A341996(#)]` -/
def P16782974388318732176.Spec : Prop :=
  ∀ n, P16782974388318732176.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P1569041545245660648

`filter[A065090(n+1), A341996(#)]`
-/

namespace A327929.P1569041545245660648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P1569041545245660648

namespace A327929

/-- `filter[A065090(n+1), A341996(#)]` -/
def P1569041545245660648.Spec : Prop :=
  ∀ n, P1569041545245660648.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P12634807888993191665

`filter[A141468(n+1), A341996(#)]`
-/

namespace A327929.P12634807888993191665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P12634807888993191665

namespace A327929

/-- `filter[A141468(n+1), A341996(#)]` -/
def P12634807888993191665.Spec : Prop :=
  ∀ n, P12634807888993191665.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P12966744546766304982

`filter[A171581(n+1), A341996(#)]`
-/

namespace A327929.P12966744546766304982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P12966744546766304982

namespace A327929

/-- `filter[A171581(n+1), A341996(#)]` -/
def P12966744546766304982.Spec : Prop :=
  ∀ n, P12966744546766304982.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P1601855331688862908

`filter[A173905(n+1), A341996(#)]`
-/

namespace A327929.P1601855331688862908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P1601855331688862908

namespace A327929

/-- `filter[A173905(n+1), A341996(#)]` -/
def P1601855331688862908.Spec : Prop :=
  ∀ n, P1601855331688862908.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P6714228040730310426

`filter[A338924(n+1), A341996(#)]`
-/

namespace A327929.P6714228040730310426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P6714228040730310426

namespace A327929

/-- `filter[A338924(n+1), A341996(#)]` -/
def P6714228040730310426.Spec : Prop :=
  ∀ n, P6714228040730310426.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P4869289631296241032

`filter[A073900(n+1), A341996(#)]`
-/

namespace A327929.P4869289631296241032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P4869289631296241032

namespace A327929

/-- `filter[A073900(n+1), A341996(#)]` -/
def P4869289631296241032.Spec : Prop :=
  ∀ n, P4869289631296241032.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P2147770212142257634

`filter[A073899(n+1), A341996(#)]`
-/

namespace A327929.P2147770212142257634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P2147770212142257634

namespace A327929

/-- `filter[A073899(n+1), A341996(#)]` -/
def P2147770212142257634.Spec : Prop :=
  ∀ n, P2147770212142257634.a n = A327929 (n + 1)

end A327929

/-! ## A327929.P1577111779414535535

`filter[A121543(n+1), A341996(#)]`
-/

namespace A327929.P1577111779414535535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327929.P1577111779414535535

namespace A327929

/-- `filter[A121543(n+1), A341996(#)]` -/
def P1577111779414535535.Spec : Prop :=
  ∀ n, P1577111779414535535.a n = A327929 (n + 1)

end A327929

/-!
# A327932: a(n) = A327928(n) - A129251(n), where A327928(n) gives the number of distinct primes p such that p^p divides the arithmetic derivative of n, and A129251(n) gives the number of such primes for n.

The programs for A327932, there is no canonical definition to state claims against.
-/

/-! ## A327932.P17639313723761454190

`A327928(n+1)-A327928(A327939(n+1))`
-/

namespace A327932.P17639313723761454190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (n + 1) - A327928 (A327939 (n + 1)).toNat

end

end A327932.P17639313723761454190

/-! ## A327932.P6622004769615263145

`A327928(n+1)-A327928((n+1)/A327938(n+1))`
-/

namespace A327932.P6622004769615263145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (n + 1) - A327928 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327938 (n + 1) : ℚ))).toNat

end

end A327932.P6622004769615263145

/-! ## A327932.P12721241096300349230

`and(A305611(Δ[n^3]), A360109(n+1))`
-/

namespace A327932.P12721241096300349230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305611 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A360109 (n + 1))

end

end A327932.P12721241096300349230

/-! ## A327932.P2423531733503534346

`(A010815(A055932(n+1))+1)*A360109(n+1)`
-/

namespace A327932.P2423531733503534346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010815 (A055932 (n + 1)).toNat + 1) * A360109 (n + 1)

end

end A327932.P2423531733503534346

/-! ## A327932.P14358987441491867575

`and(A050376(A238531(n)), A360109(n+1))`
-/

namespace A327932.P14358987441491867575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050376 (A238531 n).toNat) (A360109 (n + 1))

end

end A327932.P14358987441491867575

/-! ## A327932.P9892657693266579527

`val(A239626(n+1), A040059(A081345(n)))`
-/

namespace A327932.P9892657693266579527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A239626 (n + 1)).toNat (A040059 (A081345 n).toNat).toNat

end

end A327932.P9892657693266579527

/-! ## A327932.P9524031670066706716

`val(A239626(n+1), A040059(A014681(n)²))`
-/

namespace A327932.P9524031670066706716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A239626 (n + 1)).toNat (A040059 (A014681 n ^ 2).toNat).toNat

end

end A327932.P9524031670066706716

/-! ## A327932.P2283051927165004295

`A336352((A046523(n+1)+A009194(∑[n+1]+1))²+1)`
-/

namespace A327932.P2283051927165004295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336352 ((A046523 (n + 1) + A009194 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) ^ 2 + 1).toNat

end

end A327932.P2283051927165004295

/-! ## A327932.P1187064100081182111

`A033457(A086130(n+1))%A040001(n)`
-/

namespace A327932.P1187064100081182111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033457 (A086130 (n + 1)).toNat) (A040001 n)

end

end A327932.P1187064100081182111

/-! ## A327932.P14490744701456974416

`A129251((n-A129251(n+2))*A166586(n+1)+1)`
-/

namespace A327932.P14490744701456974416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (((n : ℤ) - A129251 (n + 2)) * A166586 (n + 1) + 1).toNat

end

end A327932.P14490744701456974416

/-!
# A327933: Numbers such that the smallest prime factor of their arithmetic derivative is 3.

The programs for A327933, the canonical program `A327933.P17952081936834919609` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327933 has offset 1).

The definition of A327933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2706 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327933.P2880426818881068288

`filter[A235991(n+1), A359430(#)]`
-/

namespace A327933.P2880426818881068288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A327933.P2880426818881068288

namespace A327933

/-- `filter[A235991(n+1), A359430(#)]` -/
def P2880426818881068288.Spec : Prop :=
  ∀ n, P2880426818881068288.a n = A327933 (n + 1)

end A327933

/-! ## A327933.P17952081936834919609

`∩[A235991(n+1), A327863(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A327933

/-- `∩[A235991(n+1), A327863(n+1)]` -/
def P17952081936834919609.Spec : Prop :=
  ∀ n, (P17952081936834919609.a n : ℤ) = A327933 (n + 1)

theorem P17952081936834919609.correct : P17952081936834919609.Spec := by
  intro n
  simp only [A327933, Nat.add_sub_cancel]

end A327933

/-! ## A327933.P3298666676136553143

`eq[3, A086134(n)]`
-/

namespace A327933.P3298666676136553143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327933.P3298666676136553143

namespace A327933

/-- `eq[3, A086134(n)]` -/
def P3298666676136553143.Spec : Prop :=
  ∀ n, (P3298666676136553143.a n : ℤ) = A327933 (n + 1)

end A327933

/-! ## A327933.P403474764756256909

`eq[2, (A003415(n)+5)%6]`
-/

namespace A327933.P403474764756256909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n + 5) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327933.P403474764756256909

namespace A327933

/-- `eq[2, (A003415(n)+5)%6]` -/
def P403474764756256909.Spec : Prop :=
  ∀ n, (P403474764756256909.a n : ℤ) = A327933 (n + 1)

end A327933

/-! ## A327933.P15527689600329035235

`filter[A327863(n+1), A165560(#)]`
-/

namespace A327933.P15527689600329035235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A327933.P15527689600329035235

namespace A327933

/-- `filter[A327863(n+1), A165560(#)]` -/
def P15527689600329035235.Spec : Prop :=
  ∀ n, P15527689600329035235.a n = A327933 (n + 1)

end A327933

/-! ## A327933.P4500293668387431276

`eq[2, A010125(A003415(n))]`
-/

namespace A327933.P4500293668387431276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010125 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327933.P4500293668387431276

namespace A327933

/-- `eq[2, A010125(A003415(n))]` -/
def P4500293668387431276.Spec : Prop :=
  ∀ n, (P4500293668387431276.a n : ℤ) = A327933 (n + 1)

end A327933

/-! ## A327933.P8654460863874058983

`eq[1, A163811(A003415(n)+2)]`
-/

namespace A327933.P8654460863874058983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (A003415 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327933.P8654460863874058983

namespace A327933

/-- `eq[1, A163811(A003415(n)+2)]` -/
def P8654460863874058983.Spec : Prop :=
  ∀ n, (P8654460863874058983.a n : ℤ) = A327933 (n + 1)

end A327933

/-! ## A327933.P6125511719189704258

`eq[2, A245477(A003415(n)+2)]`
-/

namespace A327933.P6125511719189704258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 (A003415 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327933.P6125511719189704258

namespace A327933

/-- `eq[2, A245477(A003415(n)+2)]` -/
def P6125511719189704258.Spec : Prop :=
  ∀ n, (P6125511719189704258.a n : ℤ) = A327933 (n + 1)

end A327933

/-! ## A327933.P1540481914975649051

`lt[A143062(A086134(n)+2), A000007(n)]`
-/

namespace A327933.P1540481914975649051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (A086134 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327933.P1540481914975649051

namespace A327933

/-- `lt[A143062(A086134(n)+2), A000007(n)]` -/
def P1540481914975649051.Spec : Prop :=
  ∀ n, (P1540481914975649051.a n : ℤ) = A327933 (n + 1)

end A327933

/-! ## A327933.P16057879569478354005

`eq[2, A040259(2*A003415(n))]`
-/

namespace A327933.P16057879569478354005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040259 (2 * A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327933.P16057879569478354005

namespace A327933

/-- `eq[2, A040259(2*A003415(n))]` -/
def P16057879569478354005.Spec : Prop :=
  ∀ n, (P16057879569478354005.a n : ℤ) = A327933 (n + 1)

end A327933

/-! ## A327933.P2370785386958923104

`eq[2, A040747(2*A003415(n))]`
-/

namespace A327933.P2370785386958923104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040747 (2 * A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327933.P2370785386958923104

namespace A327933

/-- `eq[2, A040747(2*A003415(n))]` -/
def P2370785386958923104.Spec : Prop :=
  ∀ n, (P2370785386958923104.a n : ℤ) = A327933 (n + 1)

end A327933

/-! ## A327933.P6624879760340312629

`eq[3, A020639(A003415(A233583(n+1)))]`
-/

namespace A327933.P6624879760340312629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003415 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327933.P6624879760340312629

namespace A327933

/-- `eq[3, A020639(A003415(A233583(n+1)))]` -/
def P6624879760340312629.Spec : Prop :=
  ∀ n, (P6624879760340312629.a n : ℤ) = A327933 (n + 1)

end A327933

/-!
# A327934: Numbers k such that there is no prime p such that p^p divides k, but for its arithmetic derivative a positive finite number of such primes exist.

The programs for A327934, there is no canonical definition to state claims against.
-/

/-! ## A327934.P2734361052293044116

`eq[0, A256750(n)+1]`
-/

namespace A327934.P2734361052293044116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327934.P2734361052293044116

/-! ## A327934.P352257288025451695

`eq[1, (A081729(n)*A256750(n))²]`
-/

namespace A327934.P352257288025451695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081729 n * A256750 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327934.P352257288025451695

/-! ## A327934.P18185226308282629550

`eq[A256750(n), A263013(A256750(n)²)]`
-/

namespace A327934.P18185226308282629550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 (A256750 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327934.P18185226308282629550

/-! ## A327934.P14808093219137185098

`eq[A081729(n)², A256750(A256750(n)²)]`
-/

namespace A327934.P14808093219137185098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 (A256750 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327934.P14808093219137185098

/-! ## A327934.P15426174165734805586

`∩[A327929(n+1), A359547(n+1)]`
-/

namespace A327934.P15426174165734805586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327934.P15426174165734805586

/-! ## A327934.P12710011061097939053

`filter[A359547(n+1), A341996(#)]`
-/

namespace A327934.P12710011061097939053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A327934.P12710011061097939053

/-! ## A327934.P9564747429425322869

`record[A327937(A327929(n+4))]`
-/

namespace A327934.P9564747429425322869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327937 (A327929 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327934.P9564747429425322869

/-! ## A327934.P11947038743157629391

`∩[A048103(n+1), A327929(n+1)]`
-/

namespace A327934.P11947038743157629391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327934.P11947038743157629391

/-! ## A327934.P14913493120434665710

`eq[A256750(n), A260196(n)]`
-/

namespace A327934.P14913493120434665710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327934.P14913493120434665710

/-! ## A327934.P14523221596659179079

`eq[1, A000038(n)-A256750(n)]`
-/

namespace A327934.P14523221596659179079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327934.P14523221596659179079

/-! ## A327934.P12781779238921839876

`eq[1, A256750(n)²-A130706(n)]`
-/

namespace A327934.P12781779238921839876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n ^ 2 - A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327934.P12781779238921839876

/-! ## A327934.P7363094523567212357

`eq[1, A256750(n)²-A166926(n)]`
-/

namespace A327934.P7363094523567212357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n ^ 2 - A166926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327934.P7363094523567212357

/-! ## A327934.P11416497369738791765

`eq[1, A256750(n)²-A169585(n)]`
-/

namespace A327934.P11416497369738791765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n ^ 2 - A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327934.P11416497369738791765

/-! ## A327934.P16147301767455063921

`eq[A008683(A007918(n)), A256750(n)]`
-/

namespace A327934.P16147301767455063921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327934.P16147301767455063921

/-! ## A327934.P3885069118206749448

`eq[A081729(A004525(n)), A256750(n)]`
-/

namespace A327934.P3885069118206749448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A004525 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327934.P3885069118206749448

/-! ## A327934.P576486281802694939

`eq[1, A256750(n)²-A285476(n)]`
-/

namespace A327934.P576486281802694939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n ^ 2 - A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327934.P576486281802694939

/-! ## A327934.P13807806935382365016

`eq[A034947(A004771(n)), A256750(n)]`
-/

namespace A327934.P13807806935382365016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A004771 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327934.P13807806935382365016

/-!
# A327935: Numbers for which the smallest prime factor of their arithmetic derivative is 5.

The programs for A327935, there is no canonical definition to state claims against.
-/

/-! ## A327935.P3541111654706547892

`eq[5, A086134(n)]`
-/

namespace A327935.P3541111654706547892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327935.P3541111654706547892

/-! ## A327935.P12507742023372660750

`eq[2, A220130(A003415(n))]`
-/

namespace A327935.P12507742023372660750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220130 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327935.P12507742023372660750

/-! ## A327935.P11275050352725034031

`lt[A143062(A086134(n)), A000007(n)]`
-/

namespace A327935.P11275050352725034031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (A086134 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327935.P11275050352725034031

/-!
# A327936: Multiplicative with a(p^e) = p if e >= p, otherwise 1.

The programs for A327936, the canonical program `A327936.P17472651915830020334` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327936 has offset 1).

The definition of A327936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327936.P12307292887196454039

`∏{p}[A327939(n+1), #]`
-/

namespace A327936.P12307292887196454039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A327936.P12307292887196454039

namespace A327936

/-- `∏{p}[A327939(n+1), #]` -/
def P12307292887196454039.Spec : Prop :=
  ∀ n, (P12307292887196454039.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P17472651915830020334

`∏{p}[A342007(n+1), #]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A327936

/-- `∏{p}[A342007(n+1), #]` -/
def P17472651915830020334.Spec : Prop :=
  ∀ n, (P17472651915830020334.a n : ℤ) = A327936 (n + 1)

theorem P17472651915830020334.correct : P17472651915830020334.Spec := by
  intro n
  simp only [A327936, Nat.add_sub_cancel]

end A327936

/-! ## A327936.P17075886873365385357

`∏{p}[A365635(n+1), #]`
-/

namespace A327936.P17075886873365385357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A327936.P17075886873365385357

namespace A327936

/-- `∏{p}[A365635(n+1), #]` -/
def P17075886873365385357.Spec : Prop :=
  ∀ n, (P17075886873365385357.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P2887901344688481825

`∏{p}[A368333(n+1), #]`
-/

namespace A327936.P2887901344688481825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368333 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A327936.P2887901344688481825

namespace A327936

/-- `∏{p}[A368333(n+1), #]` -/
def P2887901344688481825.Spec : Prop :=
  ∀ n, (P2887901344688481825.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P14365310686603755568

`A007947(A327939(n+1))`
-/

namespace A327936.P14365310686603755568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A327939 (n + 1)).toNat

end

end A327936.P14365310686603755568

namespace A327936

/-- `A007947(A327939(n+1))` -/
def P14365310686603755568.Spec : Prop :=
  ∀ n, P14365310686603755568.a n = A327936 (n + 1)

end A327936

/-! ## A327936.P11245552671168830287

`A007947(A342007(n+1))`
-/

namespace A327936.P11245552671168830287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A342007 (n + 1)).toNat

end

end A327936.P11245552671168830287

namespace A327936

/-- `A007947(A342007(n+1))` -/
def P11245552671168830287.Spec : Prop :=
  ∀ n, P11245552671168830287.a n = A327936 (n + 1)

end A327936

/-! ## A327936.P7559521139762761508

`A342007(A365635(n+1))`
-/

namespace A327936.P7559521139762761508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (A365635 (n + 1)).toNat

end

end A327936.P7559521139762761508

namespace A327936

/-- `A342007(A365635(n+1))` -/
def P7559521139762761508.Spec : Prop :=
  ∀ n, P7559521139762761508.a n = A327936 (n + 1)

end A327936

/-! ## A327936.P3966076445657379546

`A342007(A377518(n+1))`
-/

namespace A327936.P3966076445657379546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (A377518 (n + 1)).toNat

end

end A327936.P3966076445657379546

namespace A327936

/-- `A342007(A377518(n+1))` -/
def P3966076445657379546.Spec : Prop :=
  ∀ n, P3966076445657379546.a n = A327936 (n + 1)

end A327936

/-! ## A327936.P5654597422858025276

`A341997(2*A327939(n+1))`
-/

namespace A327936.P5654597422858025276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341997 (2 * A327939 (n + 1)).toNat

end

end A327936.P5654597422858025276

namespace A327936

/-- `A341997(2*A327939(n+1))` -/
def P5654597422858025276.Spec : Prop :=
  ∀ n, P5654597422858025276.a n = A327936 (n + 1)

end A327936

/-! ## A327936.P1486455526257956819

`gcd(A035710(n), A327939(n+1))`
-/

namespace A327936.P1486455526257956819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035710 n) (A327939 (n + 1))

end

end A327936.P1486455526257956819

namespace A327936

/-- `gcd(A035710(n), A327939(n+1))` -/
def P1486455526257956819.Spec : Prop :=
  ∀ n, (P1486455526257956819.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P8814297032577547267

`A366423(A365635(2*n+1-n))`
-/

namespace A327936.P8814297032577547267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366423 (A365635 (2 * n + 1 - n)).toNat

end

end A327936.P8814297032577547267

namespace A327936

/-- `A366423(A365635(2*n+1-n))` -/
def P8814297032577547267.Spec : Prop :=
  ∀ n, P8814297032577547267.a n = A327936 (n + 1)

end A327936

/-! ## A327936.P14574938495834410598

`∑{d}[n+1, A008683(#)*A358216((n+1)/#)]`
-/

namespace A327936.P14574938495834410598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A358216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327936.P14574938495834410598

namespace A327936

/-- `∑{d}[n+1, A008683(#)*A358216((n+1)/#)]` -/
def P14574938495834410598.Spec : Prop :=
  ∀ n, P14574938495834410598.a n = A327936 (n + 1)

end A327936

/-! ## A327936.P13177485967565329143

`gcd(A327939(n+1)², A076978(n+1))`
-/

namespace A327936.P13177485967565329143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327939 (n + 1) ^ 2) (A076978 (n + 1))

end

end A327936.P13177485967565329143

namespace A327936

/-- `gcd(A327939(n+1)², A076978(n+1))` -/
def P13177485967565329143.Spec : Prop :=
  ∀ n, (P13177485967565329143.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P2740498488124305171

`gcd(A305702(n+1), A365635(n+1))`
-/

namespace A327936.P2740498488124305171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A305702 (n + 1)) (A365635 (n + 1))

end

end A327936.P2740498488124305171

namespace A327936

/-- `gcd(A305702(n+1), A365635(n+1))` -/
def P2740498488124305171.Spec : Prop :=
  ∀ n, (P2740498488124305171.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P7027558145004458931

`gcd(A305163(n), A365635(n+1))`
-/

namespace A327936.P7027558145004458931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A305163 n) (A365635 (n + 1))

end

end A327936.P7027558145004458931

namespace A327936

/-- `gcd(A305163(n), A365635(n+1))` -/
def P7027558145004458931.Spec : Prop :=
  ∀ n, (P7027558145004458931.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P15792113687069500093

`gcd(A304614(n), A342007(n+1))`
-/

namespace A327936.P15792113687069500093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A304614 n) (A342007 (n + 1))

end

end A327936.P15792113687069500093

namespace A327936

/-- `gcd(A304614(n), A342007(n+1))` -/
def P15792113687069500093.Spec : Prop :=
  ∀ n, (P15792113687069500093.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P3065221753433058925

`gcd(A186944(n+1), A368333(n+1))`
-/

namespace A327936.P3065221753433058925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186944 (n + 1)) (A368333 (n + 1))

end

end A327936.P3065221753433058925

namespace A327936

/-- `gcd(A186944(n+1), A368333(n+1))` -/
def P3065221753433058925.Spec : Prop :=
  ∀ n, (P3065221753433058925.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P13769233095089644005

`gcd(A368333(n+1)², A333196(n+1))`
-/

namespace A327936.P13769233095089644005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A368333 (n + 1) ^ 2) (A333196 (n + 1))

end

end A327936.P13769233095089644005

namespace A327936

/-- `gcd(A368333(n+1)², A333196(n+1))` -/
def P13769233095089644005.Spec : Prop :=
  ∀ n, (P13769233095089644005.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P10276615449398309668

`gcd(A000189(2*A000189(n+1)), A297189(n))`
-/

namespace A327936.P10276615449398309668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000189 (2 * A000189 (n + 1)).toNat) (A297189 n)

end

end A327936.P10276615449398309668

namespace A327936

/-- `gcd(A000189(2*A000189(n+1)), A297189(n))` -/
def P10276615449398309668.Spec : Prop :=
  ∀ n, (P10276615449398309668.a n : ℤ) = A327936 (n + 1)

end A327936

/-! ## A327936.P267555622844738356

`gcd(A102901(n), A368333(n+1))`
-/

namespace A327936.P267555622844738356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102901 n) (A368333 (n + 1))

end

end A327936.P267555622844738356

namespace A327936

/-- `gcd(A102901(n), A368333(n+1))` -/
def P267555622844738356.Spec : Prop :=
  ∀ n, (P267555622844738356.a n : ℤ) = A327936 (n + 1)

end A327936

/-!
# A327937: Multiplicative with a(p^e) = p^(p-1) if e >= p, otherwise a(p^e) = p^e.

The programs for A327937, there is no canonical definition to state claims against.
-/

/-! ## A327937.P10958435091185347102

`A377518(n+1)/A327936(n+1)`
-/

namespace A327937.P10958435091185347102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377518 (n + 1) : ℚ) / (A327936 (n + 1) : ℚ)

end

end A327937.P10958435091185347102

/-! ## A327937.P9184972971017818624

`lcm(a(A336551(n+1)), A327938(n+1))` with `a(0)=1`
-/

namespace A327937.P9184972971017818624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (A336551 (n + 1)).toNat : ℤ) (A327938 (n + 1))

end

end A327937.P9184972971017818624

/-!
# A327938: Multiplicative with a(p^e) = p^(e mod p).

The programs for A327938, there is no canonical definition to state claims against.
-/

/-! ## A327938.P13467561620738474642

`(n+1)/A327939(n+1)`
-/

namespace A327938.P13467561620738474642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327939 (n + 1) : ℚ)

end

end A327938.P13467561620738474642

/-! ## A327938.P2673023789228614942

`(n+1)/A085731(A328618(n+1)/A328621(n+1))`
-/

namespace A327938.P2673023789228614942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085731 (SequenceMachineLib.roundAway ((A328618 (n + 1) : ℚ) / (A328621 (n + 1) : ℚ))).toNat : ℚ)

end

end A327938.P2673023789228614942

/-! ## A327938.P9886243483164884552

`(n+1)*A327939(n+1)^(1-A001316(A001316(n)))`
-/

namespace A327938.P9886243483164884552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A327939 (n + 1) : ℚ) ^ (1 - A001316 (A001316 n).toNat : ℤ)

end

end A327938.P9886243483164884552

/-! ## A327938.P6221177357216300975

`(n+1)*A327939(n+1)^A008683(A004277(gcd(n, n+1)))`
-/

namespace A327938.P6221177357216300975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A327939 (n + 1) : ℚ) ^ (A008683 (A004277 (Nat.gcd n (n + 1))).toNat : ℤ)

end

end A327938.P6221177357216300975

/-! ## A327938.P14811871515003176320

`A219158(A327939(n+1)+A000217(n))`
-/

namespace A327938.P14811871515003176320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A327939 (n + 1) + A000217 n).toNat

end

end A327938.P14811871515003176320

/-! ## A327938.P3711015767160428009

`A234575(A327939(n+1)+∑[n])`
-/

namespace A327938.P3711015767160428009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A327939 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327938.P3711015767160428009

/-! ## A327938.P9113126729086350777

`A126988(A327939(n+1)+∑[n])`
-/

namespace A327938.P9113126729086350777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327939 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327938.P9113126729086350777

/-! ## A327938.P2019533658836129633

`A051537(A327939(n+1)+A000217(n))`
-/

namespace A327938.P2019533658836129633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A327939 (n + 1) + A000217 n).toNat

end

end A327938.P2019533658836129633

/-! ## A327938.P13382804099590523950

`A054531(A327939(n+1)+A000217(n))`
-/

namespace A327938.P13382804099590523950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A327939 (n + 1) + A000217 n).toNat

end

end A327938.P13382804099590523950

/-! ## A327938.P2140200365819764887

`A327965(A098699(4*(n+1)))`
-/

namespace A327938.P2140200365819764887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327965 (A098699 (4 * (n + 1))).toNat

end

end A327938.P2140200365819764887

/-! ## A327938.P4367182807472666899

`A050985(A008834(n+1)*A065883(n+1))`
-/

namespace A327938.P4367182807472666899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A008834 (n + 1) * A065883 (n + 1)).toNat

end

end A327938.P4367182807472666899

/-! ## A327938.P7016643564569600041

`(n+1)/A085731(A085731(n+1)*A151800(n))`
-/

namespace A327938.P7016643564569600041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085731 (A085731 (n + 1) * A151800 n).toNat : ℚ)

end

end A327938.P7016643564569600041

/-! ## A327938.P7063170453714891870

`(n+1)*A085731(n+1)/A085731(A085731(n+1)²)`
-/

namespace A327938.P7063170453714891870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A085731 (n + 1) : ℚ) / (A085731 (A085731 (n + 1) ^ 2).toNat : ℚ))

end

end A327938.P7063170453714891870

/-! ## A327938.P1518685111858918175

`A000188((n+1)²)/A085731(A085731(n+1))`
-/

namespace A327938.P1518685111858918175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000188 ((n + 1) ^ 2) : ℚ) / (A085731 (A085731 (n + 1)).toNat : ℚ)

end

end A327938.P1518685111858918175

/-! ## A327938.P6904340107866881020

`A038690(∑[2*n+1])/A085731(A085731(n+1))`
-/

namespace A327938.P6904340107866881020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038690 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A085731 (A085731 (n + 1)).toNat : ℚ)

end

end A327938.P6904340107866881020

/-!
# A327939: Multiplicative with a(p^e) = p^(e-(e mod p)).

The programs for A327939, there is no canonical definition to state claims against.
-/

/-! ## A327939.P17850562144310428005

`(n+1)/A327938(n+1)`
-/

namespace A327939.P17850562144310428005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327938 (n + 1) : ℚ)

end

end A327939.P17850562144310428005

/-! ## A327939.P12599513465996141317

`A085731(A328618(n+1)/A328621(n+1))`
-/

namespace A327939.P12599513465996141317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (SequenceMachineLib.roundAway ((A328618 (n + 1) : ℚ) / (A328621 (n + 1) : ℚ))).toNat

end

end A327939.P12599513465996141317

/-! ## A327939.P14163141985134465109

`A085731(gcd(A085731(n+1), A102443(n+1)))`
-/

namespace A327939.P14163141985134465109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (Int.gcd (A085731 (n + 1)) (A102443 (n + 1)))

end

end A327939.P14163141985134465109

/-! ## A327939.P6040374099423461680

`A219158(A327938(n+1)+A000217(n))`
-/

namespace A327939.P6040374099423461680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A327938 (n + 1) + A000217 n).toNat

end

end A327939.P6040374099423461680

/-! ## A327939.P4379086202249360032

`A085731(gcd(A026549(n), A085731(n+1)))`
-/

namespace A327939.P4379086202249360032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (Int.gcd (A026549 n) (A085731 (n + 1)))

end

end A327939.P4379086202249360032

/-! ## A327939.P16926655669990394577

`A234575(A327938(n+1)+A000217(n))`
-/

namespace A327939.P16926655669990394577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A327938 (n + 1) + A000217 n).toNat

end

end A327939.P16926655669990394577

/-! ## A327939.P5808841574208748522

`A126988(A327938(n+1)+∑[n])`
-/

namespace A327939.P5808841574208748522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327938 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327939.P5808841574208748522

/-! ## A327939.P10204189411755393959

`A085731(A085731(n+1))^A093178(A100577(n+1))`
-/

namespace A327939.P10204189411755393959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085731 (A085731 (n + 1)).toNat : ℚ) ^ (A093178 (A100577 (n + 1)).toNat : ℤ)

end

end A327939.P10204189411755393959

/-! ## A327939.P13129793934519072477

`A085731(A085731(n+1)-A085731(a(n-1)²+1)+1)` with `a(0)=1`
-/

namespace A327939.P13129793934519072477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085731 (A085731 (n + 1) - A085731 (a (n - 1) ^ 2 + 1).toNat + 1).toNat

end

end A327939.P13129793934519072477

/-! ## A327939.P14978503304718872623

`A085731(p?[or(1, n)]*A085731(n+1))`
-/

namespace A327939.P14978503304718872623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A085731 (n + 1)).toNat

end

end A327939.P14978503304718872623

/-! ## A327939.P4509308013555263666

`A085731(A085731(n+1)*A151800(n))`
-/

namespace A327939.P4509308013555263666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (A085731 (n + 1) * A151800 n).toNat

end

end A327939.P4509308013555263666

/-! ## A327939.P2060702614869133928

`A085731(A085731(n+1)*A285719(n+1))`
-/

namespace A327939.P2060702614869133928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (A085731 (n + 1) * A285719 (n + 1)).toNat

end

end A327939.P2060702614869133928

/-! ## A327939.P2941178992381255989

`A085731(A006530(n+2)*A085731(n+1))`
-/

namespace A327939.P2941178992381255989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (A006530 (n + 2) * A085731 (n + 1)).toNat

end

end A327939.P2941178992381255989

/-! ## A327939.P8500232125900010816

`A085731(A083346(n+2)*A085731(n+1))`
-/

namespace A327939.P8500232125900010816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (A083346 (n + 2) * A085731 (n + 1)).toNat

end

end A327939.P8500232125900010816

/-! ## A327939.P10807571693666017663

`A006704(A085731(n+1)²)*A085731(A085731(n+1))`
-/

namespace A327939.P10807571693666017663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (A085731 (n + 1) ^ 2).toNat * A085731 (A085731 (n + 1)).toNat

end

end A327939.P10807571693666017663

/-!
# A327941: Expansion of e.g.f. exp(Sum_{i>=1} Sum_{j>=2} x^(i*j) / (i*j)).

The programs for A327941, there is no canonical definition to state claims against.
-/

/-! ## A327941.P6433897071480403627

`A318913(n)+A004526(A318913(n)-A352003(n))`
-/

namespace A327941.P6433897071480403627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318913 n + A004526 (A318913 n - A352003 n).toNat

end

end A327941.P6433897071480403627

/-! ## A327941.P9769265944489939233

`A327940(n)+A004526(A327940(n)-A352003(n))`
-/

namespace A327941.P9769265944489939233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327940 n + A004526 (A327940 n - A352003 n).toNat

end

end A327941.P9769265944489939233

/-! ## A327941.P4915648276677378394

`lcm(n-1, A242248(A011117(∑[n]+n)))`
-/

namespace A327941.P4915648276677378394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (A242248 (A011117 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat)

end

end A327941.P4915648276677378394

/-!
# A327945: Nonunitary pseudoperfect numbers: numbers that are equal to the sum of a subset of their nonunitary divisors.

The programs for A327945, there is no canonical definition to state claims against.
-/

/-! ## A327945.P7498855618825595552

`A103517(lt[A126302(n+2), A294887(n+1)])`
-/

namespace A327945.P7498855618825595552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126302 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327945.P7498855618825595552

/-! ## A327945.P8930250518956066757

`2*A269394(A198470(n+1))`
-/

namespace A327945.P8930250518956066757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A269394 (A198470 (n + 1)).toNat

end

end A327945.P8930250518956066757

/-! ## A327945.P9119510479598419771

`2*∩[A087245(n+1), A377431(n+1)]`
-/

namespace A327945.P9119510479598419771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327945.P9119510479598419771

/-! ## A327945.P4958629302887688411

`A194959(A112456(3*n+5))*A198470(n+1)`
-/

namespace A327945.P4958629302887688411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (A112456 (3 * n + 5)).toNat * A198470 (n + 1)

end

end A327945.P4958629302887688411

/-! ## A327945.P14306900116732381453

`A123089(A198470(n+1))`
-/

namespace A327945.P14306900116732381453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123089 (A198470 (n + 1)).toNat

end

end A327945.P14306900116732381453

/-!
# A327946: Nonunitary pseudoperfect numbers (A327945) that equal to the sum of a subset of their nonunitary divisors in a single way.

The programs for A327946, there is no canonical definition to state claims against.
-/

/-! ## A327946.P15974979017155778084

`A357769(A308237(3*n+4)-A014081(2*(n+2)))`
-/

namespace A327946.P15974979017155778084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357769 (A308237 (3 * n + 4) - A014081 (2 * (n + 2))).toNat

end

end A327946.P15974979017155778084

/-!
# A327947: Nonunitary pseudoperfect numbers (A327945) that equal to the sum of a subset of their nonunitary divisors in more ways than any smaller nonunitary pseudoperfect number.

The programs for A327947, there is no canonical definition to state claims against.
-/

/-! ## A327947.P14452131865010946795

`record[24*A300013(2*n+3)]`
-/

namespace A327947.P14452131865010946795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A300013 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327947.P14452131865010946795

/-! ## A327947.P17918156687843933867

`24*A144429(A032555(n+1))`
-/

namespace A327947.P17918156687843933867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A144429 (A032555 (n + 1)).toNat

end

end A327947.P17918156687843933867

/-! ## A327947.P11810810421396901232

`A141767(A004050(n+1)%A344424(n+1))`
-/

namespace A327947.P11810810421396901232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141767 (Int.tmod (A004050 (n + 1)) (A344424 (n + 1))).toNat

end

end A327947.P11810810421396901232

/-! ## A327947.P7200956966258666311

`∩[A034090(n+1), A250120(A303431(n+1))]`
-/

namespace A327947.P7200956966258666311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A303431 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327947.P7200956966258666311

/-! ## A327947.P4777218055496579992

`∩[A025487(n+1), A250120(A335433(n+1))]`
-/

namespace A327947.P4777218055496579992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A335433 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327947.P4777218055496579992

/-!
# A327948: Nonunitary weird numbers: numbers that are nonunitary abundant but not nonunitary pseudoperfect.

The programs for A327948, there is no canonical definition to state claims against.
-/

/-! ## A327948.P13206847992972019791

`A006037(n+1)*A010702(A003154(n+1))`
-/

namespace A327948.P13206847992972019791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1) * A010702 (A003154 (n + 1)).toNat

end

end A327948.P13206847992972019791

/-! ## A327948.P6133228805183943538

`A006037(n+1)*A010096(A121036(n+1))`
-/

namespace A327948.P6133228805183943538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1) * A010096 (A121036 (n + 1)).toNat

end

end A327948.P6133228805183943538

/-! ## A327948.P15486886647356942063

`A006037(n+1)*A040002(A244805(n+1))`
-/

namespace A327948.P15486886647356942063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1) * A040002 (A244805 (n + 1)).toNat

end

end A327948.P15486886647356942063

/-! ## A327948.P15857787873096850185

`A006037(n+1)*A255176(A346522(n+2))`
-/

namespace A327948.P15857787873096850185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1) * A255176 (A346522 (n + 2)).toNat

end

end A327948.P15857787873096850185

/-! ## A327948.P15429361652447484478

`A006037(n+1)*A128200(A249552(2*n+1))`
-/

namespace A327948.P15429361652447484478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1) * A128200 (A249552 (2 * n + 1)).toNat

end

end A327948.P15429361652447484478

/-!
# A327952: a(n) is the number of positive integers k such that some multiple of sqrt(k) falls strictly between n and n+1.

The programs for A327952, the canonical program `A327952.P3929770748935459996` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327952 has offset 1).

The definition of A327952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327952.P14149061796946137860

`A327953(n+1)+2*(n+1)`
-/

namespace A327952.P14149061796946137860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327953 (n + 1) + (2 * (n + 1) : ℤ)

end

end A327952.P14149061796946137860

namespace A327952

/-- `A327953(n+1)+2*(n+1)` -/
def P14149061796946137860.Spec : Prop :=
  ∀ n, P14149061796946137860.a n = A327952 (n + 1)

end A327952

/-! ## A327952.P10065356614133902542

`a(n-1)+A327954(n)+2` with `a(0)=2`
-/

namespace A327952.P10065356614133902542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A327954 n + 2)

end

end A327952.P10065356614133902542

namespace A327952

/-- `a(n-1)+A327954(n)+2` -/
def P10065356614133902542.Spec : Prop :=
  ∀ n, P10065356614133902542.a n = A327952 (n + 1)

end A327952

/-! ## A327952.P4158759805130510618

`∑[A327954(n+1)+2]-A327954(n+1)`
-/

namespace A327952.P4158759805130510618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327954 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A327954 (n + 1)

end

end A327952.P4158759805130510618

namespace A327952

/-- `∑[A327954(n+1)+2]-A327954(n+1)` -/
def P4158759805130510618.Spec : Prop :=
  ∀ n, P4158759805130510618.a n = A327952 (n + 1)

end A327952

/-! ## A327952.P16867552963878137764

`A001952(n+1)+A327953(n+1)-A001951(n+1)`
-/

namespace A327952.P16867552963878137764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) + (A327953 (n + 1) - A001951 (n + 1))

end

end A327952.P16867552963878137764

namespace A327952

/-- `A001952(n+1)+A327953(n+1)-A001951(n+1)` -/
def P16867552963878137764.Spec : Prop :=
  ∀ n, P16867552963878137764.a n = A327952 (n + 1)

end A327952

/-! ## A327952.P3929770748935459996

`Δ[A153818(n+1)-A006218(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327952

/-- `Δ[A153818(n+1)-A006218(n+1)]` -/
def P3929770748935459996.Spec : Prop :=
  ∀ n, P3929770748935459996.a n = A327952 (n + 1)

theorem P3929770748935459996.correct : P3929770748935459996.Spec := by
  intro n
  simp only [A327952, Nat.add_sub_cancel]

end A327952

/-! ## A327952.P15878522868778367161

`A008585(n+1)+A327953(n+1)-(n+1)`
-/

namespace A327952.P15878522868778367161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) + (A327953 (n + 1) - (n + 1 : ℤ))

end

end A327952.P15878522868778367161

namespace A327952

/-- `A008585(n+1)+A327953(n+1)-(n+1)` -/
def P15878522868778367161.Spec : Prop :=
  ∀ n, P15878522868778367161.a n = A327952 (n + 1)

end A327952

/-! ## A327952.P13231042304194852986

`A153818(n+2)-(A153818(n+1)+A000005(n+2))`
-/

namespace A327952.P13231042304194852986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153818 (n + 2) - (A153818 (n + 1) + A000005 (n + 2))

end

end A327952.P13231042304194852986

namespace A327952

/-- `A153818(n+2)-(A153818(n+1)+A000005(n+2))` -/
def P13231042304194852986.Spec : Prop :=
  ∀ n, P13231042304194852986.a n = A327952 (n + 1)

end A327952

/-!
# A327953: a(n) is the number of positive integers k such that some nontrivial multiple of sqrt(k) falls strictly between n and n+1.

The programs for A327953, the canonical program `A327953.P9054110330457496942` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327953 has offset 1).

The definition of A327953 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327952, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327953.P9054110330457496942

`A327952(n+1)-2*(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327953

/-- `A327952(n+1)-2*(n+1)` -/
def P9054110330457496942.Spec : Prop :=
  ∀ n, P9054110330457496942.a n = A327953 (n + 1)

theorem P9054110330457496942.correct : P9054110330457496942.Spec := by
  intro n
  simp only [A327953, Nat.add_sub_cancel]

end A327953

/-! ## A327953.P18194653294015551375

`A327954(n)+a(n-1)` with `a(0)=0`
-/

namespace A327953.P18194653294015551375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A327954 n + a (n - 1)

end

end A327953.P18194653294015551375

namespace A327953

/-- `A327954(n)+a(n-1)` -/
def P18194653294015551375.Spec : Prop :=
  ∀ n, P18194653294015551375.a n = A327953 (n + 1)

end A327953

/-! ## A327953.P7195227179415892947

`A327952(n+1)%A103517(n)`
-/

namespace A327953.P7195227179415892947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327952 (n + 1)) (A103517 n)

end

end A327953.P7195227179415892947

namespace A327953

/-- `A327952(n+1)%A103517(n)` -/
def P7195227179415892947.Spec : Prop :=
  ∀ n, P7195227179415892947.a n = A327953 (n + 1)

end A327953

/-! ## A327953.P15991936523282100809

`A327952(n+1)-A016789(n)+n`
-/

namespace A327953.P15991936523282100809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327952 (n + 1) - A016789 n + (n : ℤ)

end

end A327953.P15991936523282100809

namespace A327953

/-- `A327952(n+1)-A016789(n)+n` -/
def P15991936523282100809.Spec : Prop :=
  ∀ n, P15991936523282100809.a n = A327953 (n + 1)

end A327953

/-! ## A327953.P8422551546002799754

`∑[A327954(n+1)]-A327954(n+1)`
-/

namespace A327953.P8422551546002799754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A327954 (n + 1)

end

end A327953.P8422551546002799754

namespace A327953

/-- `∑[A327954(n+1)]-A327954(n+1)` -/
def P8422551546002799754.Spec : Prop :=
  ∀ n, P8422551546002799754.a n = A327953 (n + 1)

end A327953

/-! ## A327953.P8251473613236107840

`A001951(n+1)+A327952(n+1)-A001952(n+1)`
-/

namespace A327953.P8251473613236107840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + (A327952 (n + 1) - A001952 (n + 1))

end

end A327953.P8251473613236107840

namespace A327953

/-- `A001951(n+1)+A327952(n+1)-A001952(n+1)` -/
def P8251473613236107840.Spec : Prop :=
  ∀ n, P8251473613236107840.a n = A327953 (n + 1)

end A327953

/-! ## A327953.P12570823578754404442

`A327952(n+1)-1-A198954(∑[n])`
-/

namespace A327953.P12570823578754404442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327952 (n + 1) - 1 - A198954 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327953.P12570823578754404442

namespace A327953

/-- `A327952(n+1)-1-A198954(∑[n])` -/
def P12570823578754404442.Spec : Prop :=
  ∀ n, P12570823578754404442.a n = A327953 (n + 1)

end A327953

/-!
# A327954: First differences of A327953.

The programs for A327954, the canonical program `A327954.P11440697312019406287` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327954 has offset 1).

The definition of A327954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327954.P11440697312019406287

`Δ[A327953(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A327954

/-- `Δ[A327953(n+1)]` -/
def P11440697312019406287.Spec : Prop :=
  ∀ n, P11440697312019406287.a n = A327954 (n + 1)

theorem P11440697312019406287.correct : P11440697312019406287.Spec := by
  intro n
  simp only [A327954, Nat.add_sub_cancel]

end A327954

/-! ## A327954.P3836194537961636961

`Δ[A327952(n+1)]-2`
-/

namespace A327954.P3836194537961636961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A327954.P3836194537961636961

namespace A327954

/-- `Δ[A327952(n+1)]-2` -/
def P3836194537961636961.Spec : Prop :=
  ∀ n, P3836194537961636961.a n = A327954 (n + 1)

end A327954

/-! ## A327954.P14898901551745223827

`Δ[A327952(n+1)%A103517(n)]`
-/

namespace A327954.P14898901551745223827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327952 (n + 1)) (A103517 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327954.P14898901551745223827

namespace A327954

/-- `Δ[A327952(n+1)%A103517(n)]` -/
def P14898901551745223827.Spec : Prop :=
  ∀ n, P14898901551745223827.a n = A327954 (n + 1)

end A327954

/-! ## A327954.P8747228908716229075

`A327953(n+2)-A327953(n+1)`
-/

namespace A327954.P8747228908716229075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327953 (n + 2) - A327953 (n + 1)

end

end A327954.P8747228908716229075

namespace A327954

/-- `A327953(n+2)-A327953(n+1)` -/
def P8747228908716229075.Spec : Prop :=
  ∀ n, P8747228908716229075.a n = A327954 (n + 1)

theorem P8747228908716229075.correct : P8747228908716229075.Spec := by
  intro n
  simp only [A327954, Nat.add_sub_cancel, A327954.P8747228908716229075.a, A327954.P11440697312019406287.f1, A327954.P11440697312019406287.a, SequenceMachineLib.memo_apply]

end A327954

/-! ## A327954.P7573217395308111530

`A327952(n+2)-(A327952(n+1)+2)`
-/

namespace A327954.P7573217395308111530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327952 (n + 2) - (A327952 (n + 1) + 2)

end

end A327954.P7573217395308111530

namespace A327954

/-- `A327952(n+2)-(A327952(n+1)+2)` -/
def P7573217395308111530.Spec : Prop :=
  ∀ n, P7573217395308111530.a n = A327954 (n + 1)

end A327954

/-! ## A327954.P13261885886403273210

`Δ[A153818(n+2)-(A153818(n+1)+A000005(n+2))]-2`
-/

namespace A327954.P13261885886403273210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153818 (n + 2) - (A153818 (n + 1) + A000005 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A327954.P13261885886403273210

namespace A327954

/-- `Δ[A153818(n+2)-(A153818(n+1)+A000005(n+2))]-2` -/
def P13261885886403273210.Spec : Prop :=
  ∀ n, P13261885886403273210.a n = A327954 (n + 1)

end A327954

/-!
# A327959: Expansion of (-j(1/2 + t))^(1/3) * q^(1/3) in powers of q = exp(2 Pi i t) where j is the modular j-function.

The programs for A327959, there is no canonical definition to state claims against.
-/

/-! ## A327959.P11262465556636606479

`(-1)^n*A007245(n)`
-/

namespace A327959.P11262465556636606479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007245 n

end

end A327959.P11262465556636606479

/-! ## A327959.P3459696191859515314

`A007245(n)*A033999(n)`
-/

namespace A327959.P3459696191859515314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007245 n * A033999 n

end

end A327959.P3459696191859515314

/-! ## A327959.P15077845026236405161

`A007245(n)/A033999(n+2)`
-/

namespace A327959.P15077845026236405161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007245 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A327959.P15077845026236405161

/-! ## A327959.P9074585825571566831

`A007245(n)*A010892(3*n)`
-/

namespace A327959.P9074585825571566831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007245 n * A010892 (3 * n)

end

end A327959.P9074585825571566831

/-! ## A327959.P6493376683316033988

`A007245(n)/A010892(A122709(n+1))`
-/

namespace A327959.P6493376683316033988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007245 n : ℚ) / (A010892 (A122709 (n + 1)).toNat : ℚ)

end

end A327959.P6493376683316033988

/-! ## A327959.P7299432437520978246

`A007245(n)/A007249(n)*A112142(n)`
-/

namespace A327959.P7299432437520978246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007245 n : ℚ) / (A007249 n : ℚ) * (A112142 n : ℚ)

end

end A327959.P7299432437520978246

/-! ## A327959.P6267543800556703701

`A007245(n)*A010815(A000326(n))`
-/

namespace A327959.P6267543800556703701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007245 n * A010815 (A000326 n).toNat

end

end A327959.P6267543800556703701

/-! ## A327959.P3625358227575100513

`A007245(n)*A010815(A001318(2*n))`
-/

namespace A327959.P3625358227575100513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007245 n * A010815 (A001318 (2 * n)).toNat

end

end A327959.P3625358227575100513

/-!
# A327960: Dirichlet g.f.: 1 / (zeta(s) * zeta(s-1)^2).

The programs for A327960, the canonical program `A327960.P1150811079346032985` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327960 has offset 1).

The definition of A327960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327960.P4310840788110232008

`∑{d}[n+1, A046692(#)*A055615((n+1)/#)]`
-/

namespace A327960.P4310840788110232008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327960.P4310840788110232008

namespace A327960

/-- `∑{d}[n+1, A046692(#)*A055615((n+1)/#)]` -/
def P4310840788110232008.Spec : Prop :=
  ∀ n, P4310840788110232008.a n = A327960 (n + 1)

end A327960

/-! ## A327960.P1150811079346032985

`∑{d}[n+1, A007427(#)*A101035((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A327960

/-- `∑{d}[n+1, A007427(#)*A101035((n+1)/#)]` -/
def P1150811079346032985.Spec : Prop :=
  ∀ n, P1150811079346032985.a n = A327960 (n + 1)

theorem P1150811079346032985.correct : P1150811079346032985.Spec := by
  intro n
  simp only [A327960, Nat.add_sub_cancel]

end A327960

/-! ## A327960.P12002153472701799074

`∑{d}[n+1, A002618(#)*A328254((n+1)/#)]`
-/

namespace A327960.P12002153472701799074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327960.P12002153472701799074

namespace A327960

/-- `∑{d}[n+1, A002618(#)*A328254((n+1)/#)]` -/
def P12002153472701799074.Spec : Prop :=
  ∀ n, P12002153472701799074.a n = A327960 (n + 1)

end A327960

/-! ## A327960.P7994659031143765040

`∑{d}[n+1, A007428(#)*A328641((n+1)/#)]`
-/

namespace A327960.P7994659031143765040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327960.P7994659031143765040

namespace A327960

/-- `∑{d}[n+1, A007428(#)*A328641((n+1)/#)]` -/
def P7994659031143765040.Spec : Prop :=
  ∀ n, P7994659031143765040.a n = A327960 (n + 1)

end A327960

/-! ## A327960.P8222896288978576146

`∑{d}[n+1, A008683(#)*A328722((n+1)/#)]`
-/

namespace A327960.P8222896288978576146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327960.P8222896288978576146

namespace A327960

/-- `∑{d}[n+1, A008683(#)*A328722((n+1)/#)]` -/
def P8222896288978576146.Spec : Prop :=
  ∀ n, P8222896288978576146.a n = A327960 (n + 1)

end A327960

/-! ## A327960.P4735128062682580599

`∑{d}[n+1, A307445(#)*A347092((n+1)/#)]`
-/

namespace A327960.P4735128062682580599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307445 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327960.P4735128062682580599

namespace A327960

/-- `∑{d}[n+1, A307445(#)*A347092((n+1)/#)]` -/
def P4735128062682580599.Spec : Prop :=
  ∀ n, P4735128062682580599.a n = A327960 (n + 1)

end A327960

/-! ## A327960.P7334486187122144410

`∑{d}[n+1, A326938(#)*A359484((n+1)/#)]`
-/

namespace A327960.P7334486187122144410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326938 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327960.P7334486187122144410

namespace A327960

/-- `∑{d}[n+1, A326938(#)*A359484((n+1)/#)]` -/
def P7334486187122144410.Spec : Prop :=
  ∀ n, P7334486187122144410.a n = A327960 (n + 1)

end A327960

/-! ## A327960.P7345924667971347298

`∑{d}[n+1, A323910(#)*A378211((n+1)/#)]`
-/

namespace A327960.P7345924667971347298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A378211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327960.P7345924667971347298

namespace A327960

/-- `∑{d}[n+1, A323910(#)*A378211((n+1)/#)]` -/
def P7345924667971347298.Spec : Prop :=
  ∀ n, P7345924667971347298.a n = A327960 (n + 1)

end A327960

/-! ## A327960.P6776776900082581521

`∑{d}[n+1, A378217(#)*A378432((n+1)/#)]`
-/

namespace A327960.P6776776900082581521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378217 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327960.P6776776900082581521

namespace A327960

/-- `∑{d}[n+1, A378217(#)*A378432((n+1)/#)]` -/
def P6776776900082581521.Spec : Prop :=
  ∀ n, P6776776900082581521.a n = A327960 (n + 1)

end A327960

/-!
# A327961: Sum of products of n-bit numbers with their n-bit reverse.

The programs for A327961, the canonical program `A327961.P13053604902975868710` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327961 has offset 0).

The definition of A327961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327961.P13053604902975868710

`n*2^(2*n-3)+2^(3*n-2)+2^(n-2)-2^(2*n-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327961

/-- `n*2^(2*n-3)+2^(3*n-2)+2^(n-2)-2^(2*n-1)` -/
def P13053604902975868710.Spec : Prop :=
  ∀ n, P13053604902975868710.a n = (A327961 n : ℚ)

end A327961

/-! ## A327961.P10345829835408718475

`A309371(2^n-1)`
-/

namespace A327961.P10345829835408718475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309371 (2 ^ n - 1)

end

end A327961.P10345829835408718475

namespace A327961

/-- `A309371(2^n-1)` -/
def P10345829835408718475.Spec : Prop :=
  ∀ n, P10345829835408718475.a n = A327961 n

end A327961

/-! ## A327961.P10766100102878615586

`record[A309371(A006068(n))]`
-/

namespace A327961.P10766100102878615586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309371 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327961.P10766100102878615586

namespace A327961

/-- `record[A309371(A006068(n))]` -/
def P10766100102878615586.Spec : Prop :=
  ∀ n, P10766100102878615586.a n = A327961 n

end A327961

/-! ## A327961.P6223048818062761294

`record[A309371(A038573(n))]`
-/

namespace A327961.P6223048818062761294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309371 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327961.P6223048818062761294

namespace A327961

/-- `record[A309371(A038573(n))]` -/
def P6223048818062761294.Spec : Prop :=
  ∀ n, P6223048818062761294.a n = A327961 n

end A327961

/-! ## A327961.P17030118345653817880

`record[A309371(A318921(n))]`
-/

namespace A327961.P17030118345653817880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309371 (A318921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327961.P17030118345653817880

namespace A327961

/-- `record[A309371(A318921(n))]` -/
def P17030118345653817880.Spec : Prop :=
  ∀ n, P17030118345653817880.a n = A327961 n

end A327961

/-!
# A327963: If A327928(n) > 0, a(n) = A276086(n), otherwise a(n) = A003415(n).

The programs for A327963, there is no canonical definition to state claims against.
-/

/-! ## A327963.P7496879590328956827

`A276086(A327964(n+1))-A000038(n)`
-/

namespace A327963.P7496879590328956827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A327964 (n + 1)).toNat - A000038 n

end

end A327963.P7496879590328956827

/-! ## A327963.P17621698600119386195

`A057427(n)*A276086(A327964(n+1))`
-/

namespace A327963.P17621698600119386195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A276086 (A327964 (n + 1)).toNat

end

end A327963.P17621698600119386195

/-! ## A327963.P118587478539083426

`A276086(A327964(n+1))%A018902(n)`
-/

namespace A327963.P118587478539083426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 (A327964 (n + 1)).toNat) (A018902 n)

end

end A327963.P118587478539083426

/-! ## A327963.P14852011347363835145

`and(A055580(n), A276086(A327964(n+1)))`
-/

namespace A327963.P14852011347363835145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A276086 (A327964 (n + 1)).toNat)

end

end A327963.P14852011347363835145

/-! ## A327963.P15244912935393479651

`and(A057428(n), A276086(A327964(n+1)))`
-/

namespace A327963.P15244912935393479651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A276086 (A327964 (n + 1)).toNat)

end

end A327963.P15244912935393479651

/-!
# A327964: a(1) = 1, and for n > 1, a(n) = A276085(A327963(n)).

The programs for A327964, there is no canonical definition to state claims against.
-/

/-! ## A327964.P14700728954768476137

`A276085(A327963(n+1)+floor(acot(n)²))`
-/

namespace A327964.P14700728954768476137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A327963 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋).toNat

end

end A327964.P14700728954768476137

/-! ## A327964.P14762840887414063428

`A276085(A327963(n+1)+A000038(n))`
-/

namespace A327964.P14762840887414063428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A327963 (n + 1) + A000038 n).toNat

end

end A327964.P14762840887414063428

/-! ## A327964.P14835926822341496535

`A276085(A327963(n+1)+A130706(n+1))`
-/

namespace A327964.P14835926822341496535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A327963 (n + 1) + A130706 (n + 1)).toNat

end

end A327964.P14835926822341496535

/-! ## A327964.P2294741883148274946

`A276085(gcd(A327963(n+1), A346106(n+1)))`
-/

namespace A327964.P2294741883148274946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (Int.gcd (A327963 (n + 1)) (A346106 (n + 1)))

end

end A327964.P2294741883148274946

/-!
# A327965: "Tamed variant" of arithmetic derivative: a(0) = a(1) = 0; for n > 1, a(n) = A327938(A003415(n)).

The programs for A327965, there is no canonical definition to state claims against.
-/

/-! ## A327965.P11726985272040005845

`gcd(A003415(n), A175099(A004862(n+1)))`
-/

namespace A327965.P11726985272040005845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A175099 (A004862 (n + 1)).toNat)

end

end A327965.P11726985272040005845

/-! ## A327965.P763374954149080591

`A003415(n)%A028233(∑[A163978(n+1)])`
-/

namespace A327965.P763374954149080591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n) (A028233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A327965.P763374954149080591

/-! ## A327965.P10313738193165583438

`gcd(A003415(n), A050534(A114805(n)))`
-/

namespace A327965.P10313738193165583438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A050534 (A114805 n).toNat)

end

end A327965.P10313738193165583438

/-!
# A327966: Number of iterations of "tamed variant of arithmetic derivative", A327965 needed to reach 0 from n, or -1 if zero is never reached.

The programs for A327966, there is no canonical definition to state claims against.
-/

/-! ## A327966.P9418641752402229686

`A327969(n)-3*A327928(n)`
-/

namespace A327966.P9418641752402229686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327969 n - 3 * A327928 n

end

end A327966.P9418641752402229686

/-! ## A327966.P3322932757137646695

`A327969(n)-3*A341999(n)`
-/

namespace A327966.P3322932757137646695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327969 n - 3 * A341999 n

end

end A327966.P3322932757137646695

/-!
# A327968: a(0) = a(1) = 0, a(prime) = 1, and for all other numbers, a(n) = the first noncomposite reached when iterating A327965, or -1 if no noncomposite is ever reached.

The programs for A327968, there is no canonical definition to state claims against.
-/

/-! ## A327968.P11094938465963487127

`A351078(A327965(n))%A048379(A000045(n))`
-/

namespace A327968.P11094938465963487127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351078 (A327965 n).toNat) (A048379 (A000045 n).toNat)

end

end A327968.P11094938465963487127

/-! ## A327968.P8743771889868013208

`A000035(A140844(n+1))*A351078(A327965(n))`
-/

namespace A327968.P8743771889868013208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A140844 (n + 1)).toNat * A351078 (A327965 n).toNat

end

end A327968.P8743771889868013208

/-! ## A327968.P15059568375265206183

`A351078(A327965(n)^val(A001567(n+4)+1, 2))`
-/

namespace A327968.P15059568375265206183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 (A327965 n ^ SequenceMachineLib.valuation (A001567 (n + 4) + 1).toNat 2).toNat

end

end A327968.P15059568375265206183

/-!
# A327969: The length of a shortest path from n to zero when using the transitions x -> A003415(x) and x -> A276086(x), or -1 if no zero can ever be reached from n.

The programs for A327969, there is no canonical definition to state claims against.
-/

/-! ## A327969.P18205533041470148274

`dr(A328324(n))`
-/

namespace A327969.P18205533041470148274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A328324 n)

end

end A327969.P18205533041470148274

/-! ## A327969.P12609652441919565378

`A328324(comp[(5*comp[7*n])²])`
-/

namespace A327969.P12609652441919565378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328324 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A327969.P12609652441919565378

/-! ## A327969.P11004662681407669223

`A002113(A328324(n)+1)`
-/

namespace A327969.P11004662681407669223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A328324 n + 1).toNat

end

end A327969.P11004662681407669223

/-! ## A327969.P8516388631714506718

`A029804(A328324(n)+1)`
-/

namespace A327969.P8516388631714506718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029804 (A328324 n + 1).toNat

end

end A327969.P8516388631714506718

/-! ## A327969.P3089987429659605234

`A081433(A328324(n)+1)`
-/

namespace A327969.P3089987429659605234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081433 (A328324 n + 1).toNat

end

end A327969.P3089987429659605234

/-!
# A327970: Lexicographically earliest infinite sequence such that a(i) = a(j) => A003415(n) = A003415(j) and A327936(i) = A327936(j) for all i, j.

The programs for A327970, there is no canonical definition to state claims against.
-/

/-! ## A327970.P10522039214999579439

`A369449(A002385(n+1))+A369448(n+1)`
-/

namespace A327970.P10522039214999579439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369449 (A002385 (n + 1)).toNat + A369448 (n + 1)

end

end A327970.P10522039214999579439

/-! ## A327970.P18440856261411203551

`A369448(n+1)+A369426(A005897(n+4))`
-/

namespace A327970.P18440856261411203551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369448 (n + 1) + A369426 (A005897 (n + 4)).toNat

end

end A327970.P18440856261411203551

/-! ## A327970.P11234273132323502317

`A369448(n+1)%A369414(A050414(n+1))`
-/

namespace A327970.P11234273132323502317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369448 (n + 1)) (A369414 (A050414 (n + 1)).toNat)

end

end A327970.P11234273132323502317

/-! ## A327970.P16325976713737781500

`A369448(n+1)%A002764(n)`
-/

namespace A327970.P16325976713737781500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369448 (n + 1)) (A002764 n)

end

end A327970.P16325976713737781500

/-! ## A327970.P1128661393349868943

`gcd(A244656(n+1), A369448(n+1))`
-/

namespace A327970.P1128661393349868943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244656 (n + 1)) (A369448 (n + 1))

end

end A327970.P1128661393349868943

/-!
# A327971: Bitwise XOR of trajectories of rule 30 and its mirror image, rule 86, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A265281(n).

The programs for A327971, the canonical program `A327971.P15193960377859545139` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327971 has offset 0).

The definition of A327971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A280508, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327971.P15193960377859545139

`A280508(A110240(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A327971

/-- `A280508(A110240(n))` -/
def P15193960377859545139.Spec : Prop :=
  ∀ n, P15193960377859545139.a n = A327971 n

theorem P15193960377859545139.correct : P15193960377859545139.Spec := by
  intro n
  simp only [A327971]

end A327971

/-! ## A327971.P10549799792544552968

`A280508(A265281(n))`
-/

namespace A327971.P10549799792544552968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280508 (A265281 n).toNat

end

end A327971.P10549799792544552968

namespace A327971

/-- `A280508(A265281(n))` -/
def P10549799792544552968.Spec : Prop :=
  ∀ n, P10549799792544552968.a n = A327971 n

end A327971

/-! ## A327971.P10817977803156365777

`xor(A110240(n), A265281(n))`
-/

namespace A327971.P10817977803156365777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110240 n) (A265281 n)

end

end A327971.P10817977803156365777

namespace A327971

/-- `xor(A110240(n), A265281(n))` -/
def P10817977803156365777.Spec : Prop :=
  ∀ n, P10817977803156365777.a n = A327971 n

end A327971

/-! ## A327971.P12408591584050094278

`xor(xor(A038184(n), A327972(n)), A265281(n))`
-/

namespace A327971.P12408591584050094278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (A038184 n) (A327972 n)) (A265281 n)

end

end A327971.P12408591584050094278

namespace A327971

/-- `xor(xor(A038184(n), A327972(n)), A265281(n))` -/
def P12408591584050094278.Spec : Prop :=
  ∀ n, P12408591584050094278.a n = A327971 n

end A327971

/-! ## A327971.P6970161641680776948

`xor(xor(A267357(n), A328103(n)), A265281(n))`
-/

namespace A327971.P6970161641680776948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (A267357 n) (A328103 n)) (A265281 n)

end

end A327971.P6970161641680776948

namespace A327971

/-- `xor(xor(A267357(n), A328103(n)), A265281(n))` -/
def P6970161641680776948.Spec : Prop :=
  ∀ n, P6970161641680776948.a n = A327971 n

end A327971

/-! ## A327971.P9614616958808033066

`xor(A327973(n+1), A327976(n+1))/2`
-/

namespace A327971.P9614616958808033066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A327973 (n + 1)) (A327976 (n + 1)) : ℚ) / 2

end

end A327971.P9614616958808033066

namespace A327971

/-- `xor(A327973(n+1), A327976(n+1))/2` -/
def P9614616958808033066.Spec : Prop :=
  ∀ n, P9614616958808033066.a n = (A327971 n : ℚ)

end A327971

/-!
# A327972: Bitwise XOR of trajectories of rule 30 and rule 150, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A038184(n).

The programs for A327972, the canonical program `A327972.P3607971557437902118` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327972 has offset 0).

The definition of A327972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327972.P3607971557437902118

`xor(A038184(n), A110240(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327972

/-- `xor(A038184(n), A110240(n))` -/
def P3607971557437902118.Spec : Prop :=
  ∀ n, P3607971557437902118.a n = A327972 n

theorem P3607971557437902118.correct : P3607971557437902118.Spec := by
  intro n
  simp only [A327972]

end A327972

/-! ## A327972.P8317506470536312018

`xor(xor(A265281(n), A327971(n)), A038184(n))`
-/

namespace A327972.P8317506470536312018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (A265281 n) (A327971 n)) (A038184 n)

end

end A327972.P8317506470536312018

namespace A327972

/-- `xor(xor(A265281(n), A327971(n)), A038184(n))` -/
def P8317506470536312018.Spec : Prop :=
  ∀ n, P8317506470536312018.a n = A327972 n

end A327972

/-! ## A327972.P15083149223115020251

`xor(xor(A267357(n), A328103(n)), A038184(n))`
-/

namespace A327972.P15083149223115020251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (A267357 n) (A328103 n)) (A038184 n)

end

end A327972.P15083149223115020251

namespace A327972

/-- `xor(xor(A267357(n), A328103(n)), A038184(n))` -/
def P15083149223115020251.Spec : Prop :=
  ∀ n, P15083149223115020251.a n = A327972 n

end A327972

/-! ## A327972.P14316401277597630721

`xor(A048710(∑[n]+n), A110240(n))`
-/

namespace A327972.P14316401277597630721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048710 (∑ j ∈ Finset.range (n + 1), f1 j + n)) (A110240 n)

end

end A327972.P14316401277597630721

namespace A327972

/-- `xor(A048710(∑[n]+n), A110240(n))` -/
def P14316401277597630721.Spec : Prop :=
  ∀ n, P14316401277597630721.a n = A327972 n

end A327972

/-! ## A327972.P13771111934551518533

`xor(A048723(A000217(n+8)+n-(2*n+1)), A110240(n))`
-/

namespace A327972.P13771111934551518533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048723 (A000217 (n + 8) + (n : ℤ) - (2 * n + 1 : ℤ)).toNat) (A110240 n)

end

end A327972.P13771111934551518533

namespace A327972

/-- `xor(A048723(A000217(n+8)+n-(2*n+1)), A110240(n))` -/
def P13771111934551518533.Spec : Prop :=
  ∀ n, P13771111934551518533.a n = A327972 n

end A327972

/-!
# A327973: Bitwise XOR of two successive generations (centrally aligned) in the trajectory of rule 30 started from a lone 1 cell: a(n) = A110240(n) XOR 2*A110240(n-1).

The programs for A327973, the canonical program `A327973.P1696469239648925767` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327973 has offset 1).

The definition of A327973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327973.P1696469239648925767

`xor(2*A110240(n), A110240(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327973

/-- `xor(2*A110240(n), A110240(n+1))` -/
def P1696469239648925767.Spec : Prop :=
  ∀ n, P1696469239648925767.a n = A327973 (n + 1)

theorem P1696469239648925767.correct : P1696469239648925767.Spec := by
  intro n
  simp only [A327973, Nat.add_sub_cancel]

end A327973

/-! ## A327973.P6738080452761848455

`xor(2*A327971(n), A327976(n+1))`
-/

namespace A327973.P6738080452761848455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A327971 n) (A327976 (n + 1))

end

end A327973.P6738080452761848455

namespace A327973

/-- `xor(2*A327971(n), A327976(n+1))` -/
def P6738080452761848455.Spec : Prop :=
  ∀ n, P6738080452761848455.a n = A327973 (n + 1)

end A327973

/-! ## A327973.P15530693605316601404

`xor(A005843(A327971(n)), A327976(n+1))`
-/

namespace A327973.P15530693605316601404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 (A327971 n).toNat) (A327976 (n + 1))

end

end A327973.P15530693605316601404

namespace A327973

/-- `xor(A005843(A327971(n)), A327976(n+1))` -/
def P15530693605316601404.Spec : Prop :=
  ∀ n, P15530693605316601404.a n = A327973 (n + 1)

end A327973

/-!
# A327974: a(n) = A051023(n) XOR A051023(n-1), where A051023 gives the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

The programs for A327974, there is no canonical definition to state claims against.
-/

/-! ## A327974.P17269847216317328143

`abs(Δ[A051023(n)])`
-/

namespace A327974.P17269847216317328143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A327974.P17269847216317328143

/-! ## A327974.P10236989486759524540

`abs(Δ[A226474(n)])`
-/

namespace A327974.P10236989486759524540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A327974.P10236989486759524540

/-! ## A327974.P11796684761672487694

`A000045(Δ[A051023(n)]²)`
-/

namespace A327974.P11796684761672487694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A327974.P11796684761672487694

/-! ## A327974.P3355238422313595962

`A000120(Δ[A051023(n)]²)`
-/

namespace A327974.P3355238422313595962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A327974.P3355238422313595962

/-! ## A327974.P6612533611340422747

`A000129(Δ[A051023(n)]²)`
-/

namespace A327974.P6612533611340422747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A327974.P6612533611340422747

/-! ## A327974.P3033783287556230049

`A000045(Δ[A226474(n)]²)`
-/

namespace A327974.P3033783287556230049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A327974.P3033783287556230049

/-! ## A327974.P15915274932724805942

`A265703(Δ[A051023(n)]²)`
-/

namespace A327974.P15915274932724805942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A327974.P15915274932724805942

/-! ## A327974.P4787930184830417742

`A265703(Δ[A226474(n)]²)`
-/

namespace A327974.P4787930184830417742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A327974.P4787930184830417742

/-! ## A327974.P4520990856191572134

`A265704(Δ[A226474(n)]²)`
-/

namespace A327974.P4520990856191572134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A327974.P4520990856191572134

/-! ## A327974.P12156601200904949808

`A051023(Δ[A051023(n)]+2)`
-/

namespace A327974.P12156601200904949808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 (f1 (n + 1) - f1 n + 2).toNat

end

end A327974.P12156601200904949808

/-! ## A327974.P3569053818581396370

`A051023(2-Δ[A051023(n)])`
-/

namespace A327974.P3569053818581396370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A327974.P3569053818581396370

/-! ## A327974.P16206770438398138520

`xor(A051023(n+1), A051023(n))`
-/

namespace A327974.P16206770438398138520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051023 (n + 1)) (A051023 n)

end

end A327974.P16206770438398138520

/-! ## A327974.P9730994188125797810

`xor(A226474(n+1), A226474(n))`
-/

namespace A327974.P9730994188125797810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A226474 (n + 1)) (A226474 n)

end

end A327974.P9730994188125797810

/-! ## A327974.P18286010467948374234

`abs(Δ[char[A327984(n+1)]])`
-/

namespace A327974.P18286010467948374234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A327974.P18286010467948374234

/-! ## A327974.P14608082531959666828

`abs(Δ[char[A327985(n+1)]])`
-/

namespace A327974.P14608082531959666828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327985 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A327974.P14608082531959666828

/-! ## A327974.P9618269986180523959

`Δ[A092539(n)]%2`
-/

namespace A327974.P9618269986180523959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A327974.P9618269986180523959

/-! ## A327974.P5178935959001581322

`Δ[A226474(n)]^A064122(n+1)`
-/

namespace A327974.P5178935959001581322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A064122 (n + 1) : ℤ)

end

end A327974.P5178935959001581322

/-! ## A327974.P10409108539286482190

`Δ[A070950(n²+n)]²`
-/

namespace A327974.P10409108539286482190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A327974.P10409108539286482190

/-! ## A327974.P6815702396677027419

`Δ[A071032(n²+n)]²`
-/

namespace A327974.P6815702396677027419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A327974.P6815702396677027419

/-! ## A327974.P15846091315419088130

`Δ[A226463(n²+n)]²`
-/

namespace A327974.P15846091315419088130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226463 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A327974.P15846091315419088130

/-!
# A327975: Breadth-first reading of the subtree rooted at 5 of the tree where each parent node is the arithmetic derivative (A003415) of all its children.

The programs for A327975, there is no canonical definition to state claims against.
-/

/-! ## A327975.P6952579298390151355

`A328115(A062179(n+1)%A004063(n+1))`
-/

namespace A327975.P6952579298390151355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328115 (Int.tmod (A062179 (n + 1)) (A004063 (n + 1))).toNat

end

end A327975.P6952579298390151355

/-! ## A327975.P7722199372397465542

`A328115(A032555(n+1))`
-/

namespace A327975.P7722199372397465542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328115 (A032555 (n + 1)).toNat

end

end A327975.P7722199372397465542

/-! ## A327975.P11723132569531052655

`A328115(A032559(n+1))`
-/

namespace A327975.P11723132569531052655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328115 (A032559 (n + 1)).toNat

end

end A327975.P11723132569531052655

/-! ## A327975.P17603152299284940300

`A328115(A077739(n+1))`
-/

namespace A327975.P17603152299284940300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328115 (A077739 (n + 1)).toNat

end

end A327975.P17603152299284940300

/-! ## A327975.P870210041379091759

`A328115(A078213(n+1))`
-/

namespace A327975.P870210041379091759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328115 (A078213 (n + 1)).toNat

end

end A327975.P870210041379091759

/-!
# A327976: Bitwise XOR of trajectories (centrally aligned) of rule 30, and its mirror image, rule 86, when both are started from a lone 1-bit, with the latter delayed by one step: a(n) = A110240(n) XOR 2*A265281(n-1).

The programs for A327976, the canonical program `A327976.P17516579856506280353` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327976 has offset 1).

The definition of A327976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327976.P17516579856506280353

`xor(2*A327971(n), A327973(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A327976

/-- `xor(2*A327971(n), A327973(n+1))` -/
def P17516579856506280353.Spec : Prop :=
  ∀ n, P17516579856506280353.a n = A327976 (n + 1)

theorem P17516579856506280353.correct : P17516579856506280353.Spec := by
  intro n
  simp only [A327976, Nat.add_sub_cancel]

end A327976

/-! ## A327976.P10612301056315059790

`xor(A005843(A327971(n)), A327973(n+1))`
-/

namespace A327976.P10612301056315059790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 (A327971 n).toNat) (A327973 (n + 1))

end

end A327976.P10612301056315059790

namespace A327976

/-- `xor(A005843(A327971(n)), A327973(n+1))` -/
def P10612301056315059790.Spec : Prop :=
  ∀ n, P10612301056315059790.a n = A327976 (n + 1)

end A327976

/-!
# A327978: Numbers whose arithmetic derivative (A003415) is a primorial number (A002110) > 1.

The programs for A327978, there is no canonical definition to state claims against.
-/

/-! ## A327978.P7955726112733709387

`∩[A328232(n+1), A328244(n+1)]`
-/

namespace A327978.P7955726112733709387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327978.P7955726112733709387

/-! ## A327978.P7745149641988479616

`∩[A328232(n+1), A328234(n+1)]`
-/

namespace A327978.P7745149641988479616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327978.P7745149641988479616

/-!
# A327979: a(n) = gcd(n, A002322(n)), where A002322 is Carmichael lambda, also known as psi.

The programs for A327979, there is no canonical definition to state claims against.
-/

/-! ## A327979.P10535601696256476238

`gcd(n+1, A002322(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A327979.P10535601696256476238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002322 (n + 1))

end

end A327979.P10535601696256476238

/-! ## A327979.P16987078991918713154

`gcd(A002322(n+1), A131738(n))`
-/

namespace A327979.P16987078991918713154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002322 (n + 1)) (A131738 n)

end

end A327979.P16987078991918713154

/-! ## A327979.P3098034128315554767

`A002322(n+1)/A268336(n+1)`
-/

namespace A327979.P3098034128315554767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A268336 (n + 1) : ℚ)

end

end A327979.P3098034128315554767

/-! ## A327979.P6777291696007695929

`gcd(A009195(n+1), A104194(n+1))`
-/

namespace A327979.P6777291696007695929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009195 (n + 1)) (A104194 (n + 1))

end

end A327979.P6777291696007695929

/-! ## A327979.P15058985617081900136

`gcd(A000027(n+1), A277127(n+1))`
-/

namespace A327979.P15058985617081900136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A277127 (n + 1))

end

end A327979.P15058985617081900136

/-! ## A327979.P14890884467661657237

`gcd(1-A277127(n+1)+n, A121048(n+1))`
-/

namespace A327979.P14890884467661657237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A277127 (n + 1) + (n : ℤ)) (A121048 (n + 1))

end

end A327979.P14890884467661657237

/-! ## A327979.P5968602047181757165

`(n+1)/floor(A174824(n+1)/A002322(n+1))`
-/

namespace A327979.P5968602047181757165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊(A174824 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ)⌋ : ℚ)

end

end A327979.P5968602047181757165

/-! ## A327979.P8124570669922549836

`A002322(n+1)/A002322(A007947(n+1))*A173751(n+1)`
-/

namespace A327979.P8124570669922549836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A002322 (A007947 (n + 1)).toNat : ℚ) * (A173751 (n + 1) : ℚ)

end

end A327979.P8124570669922549836

/-! ## A327979.P17254976320760778868

`A050873(A002322(n+1)+∑[n])`
-/

namespace A327979.P17254976320760778868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A002322 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A327979.P17254976320760778868

/-! ## A327979.P8462267717691260970

`gcd(1-A263027(n+1), A334312(A000124(n)))`
-/

namespace A327979.P8462267717691260970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A263027 (n + 1)) (A334312 (A000124 n).toNat)

end

end A327979.P8462267717691260970

/-! ## A327979.P732073649744169158

`A002322(n+1)/A164306(A002322(n+1)+A000217(n))`
-/

namespace A327979.P732073649744169158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) : ℚ) / (A164306 (A002322 (n + 1) + A000217 n).toNat : ℚ)

end

end A327979.P732073649744169158

/-!
# A327980: Distances between successive zeros in A051023, the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

The programs for A327980, there is no canonical definition to state claims against.
-/

/-! ## A327980.P17754848274507263775

`A327985(n+2)-A327985(n+1)`
-/

namespace A327980.P17754848274507263775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327985 (n + 2) - A327985 (n + 1)

end

end A327980.P17754848274507263775

/-! ## A327980.P16452104397436253073

`Δ[A327985(n+1)]`
-/

namespace A327980.P16452104397436253073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327980.P16452104397436253073

/-! ## A327980.P8516557967574406909

`Δ[eq[0, A051023(n)]]`
-/

namespace A327980.P8516557967574406909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327980.P8516557967574406909

/-! ## A327980.P4648555585872554621

`Δ[comp[A327984(n+1)]]`
-/

namespace A327980.P4648555585872554621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327980.P4648555585872554621

/-! ## A327980.P8597795444082535815

`Δ[lt[0, A226474(n)]]`
-/

namespace A327980.P8597795444082535815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327980.P8597795444082535815

/-!
# A327981: Distances between successive ones in A051023, the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

The programs for A327981, there is no canonical definition to state claims against.
-/

/-! ## A327981.P7904033844530857352

`A327984(n+2)-A327984(n+1)`
-/

namespace A327981.P7904033844530857352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327984 (n + 2) - A327984 (n + 1)

end

end A327981.P7904033844530857352

/-! ## A327981.P11763348817586025455

`Δ[A327984(n+1)]`
-/

namespace A327981.P11763348817586025455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327981.P11763348817586025455

/-! ## A327981.P11814981317513267578

`Δ[lt[0, A051023(n)]]`
-/

namespace A327981.P11814981317513267578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327981.P11814981317513267578

/-! ## A327981.P1635357062496340132

`Δ[comp[A327985(n+1)]]`
-/

namespace A327981.P1635357062496340132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327985 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327981.P1635357062496340132

/-! ## A327981.P6839278001515510196

`Δ[eq[0, A226474(n)]]`
-/

namespace A327981.P6839278001515510196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327981.P6839278001515510196

/-! ## A327981.P190253135313414264

`Δ[record[A226474(n)+n*A051023(n)]]`
-/

namespace A327981.P190253135313414264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n + (n : ℤ) * A051023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327981.P190253135313414264

/-!
# A327982: Partial sums of A051023, the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

The programs for A327982, there is no canonical definition to state claims against.
-/

/-! ## A327982.P14568084921609910006

`A051023(n)+a(n-1)` with `a(0)=1`
-/

namespace A327982.P14568084921609910006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051023 n + a (n - 1)

end

end A327982.P14568084921609910006

/-! ## A327982.P4642893794217403364

`∑[A051023(n)]`
-/

namespace A327982.P4642893794217403364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327982.P4642893794217403364

/-! ## A327982.P7629447687800191586

`∑[1-A226474(n)]`
-/

namespace A327982.P7629447687800191586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A226474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327982.P7629447687800191586

/-! ## A327982.P890937686144077603

`∑[char[A327984(n+1)]]`
-/

namespace A327982.P890937686144077603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327982.P890937686144077603

/-! ## A327982.P8261126898801966837

`∑[char[comp[A327985(n+1)]]]`
-/

namespace A327982.P8261126898801966837
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327985 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327982.P8261126898801966837

/-! ## A327982.P4928316931609325407

`∑[A092539(n)%2]`
-/

namespace A327982.P4928316931609325407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092539 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327982.P4928316931609325407

/-! ## A327982.P15148517137083722844

`∑[A070950(∑[2*n])]`
-/

namespace A327982.P15148517137083722844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327982.P15148517137083722844

/-! ## A327982.P16228315941193547894

`∑[A071032(∑[2*n])]`
-/

namespace A327982.P16228315941193547894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327982.P16228315941193547894

/-! ## A327982.P17778018886889094201

`∑{digits}[A261299(n), #]`
-/

namespace A327982.P17778018886889094201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261299 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A327982.P17778018886889094201

/-!
# A327983: Run lengths in A051023, the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

The programs for A327983, there is no canonical definition to state claims against.
-/

/-! ## A327983.P8190112223719742617

`Δ[record[(n+1)*A327974(n+1)]]`
-/

namespace A327983.P8190112223719742617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327974 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327983.P8190112223719742617

/-!
# A327984: Positions of ones in A051023, the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

The programs for A327984, there is no canonical definition to state claims against.
-/

/-! ## A327984.P17856052265394889123

`lt[0, A051023(n)]`
-/

namespace A327984.P17856052265394889123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327984.P17856052265394889123

/-! ## A327984.P12229850316832149345

`comp[A327985(n+1)]`
-/

namespace A327984.P12229850316832149345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327984.P12229850316832149345

/-! ## A327984.P16407229172326513914

`eq[A051023(n), A160322(2*(n+1))]`
-/

namespace A327984.P16407229172326513914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160322 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327984.P16407229172326513914

/-! ## A327984.P1050409084796764282

`∑[A327981(n+1)]-A327981(n+1)`
-/

namespace A327984.P1050409084796764282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A327981 (n + 1)

end

end A327984.P1050409084796764282

/-! ## A327984.P156516179466688266

`eq[A355450(2*(n+2))+1, A051023(n)]`
-/

namespace A327984.P156516179466688266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355450 (2 * (n + 2)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327984.P156516179466688266

/-! ## A327984.P1941678411222773529

`eq[A051023(n), A181801(A000265(n+1))]`
-/

namespace A327984.P1941678411222773529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181801 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327984.P1941678411222773529

/-! ## A327984.P9827261520063586892

`eq[A051023(n), A254609(A001222(n+1))]`
-/

namespace A327984.P9827261520063586892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254609 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327984.P9827261520063586892

/-! ## A327984.P15637953453503129368

`eq[A051023(n*A051023(n)), A051023(n)]`
-/

namespace A327984.P15637953453503129368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 ((n : ℤ) * A051023 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327984.P15637953453503129368

/-! ## A327984.P7077336195617721933

`eq[-A057428(A000005(n+1)), A051023(n)]`
-/

namespace A327984.P7077336195617721933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057428 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327984.P7077336195617721933

/-! ## A327984.P3742960103819485049

`eq[-A057428(A112798(n+2)), A051023(n)]`
-/

namespace A327984.P3742960103819485049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057428 (A112798 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327984.P3742960103819485049

/-! ## A327984.P5301033424048394560

`eq[A000688(A006530(n+1)), A051023(n)]`
-/

namespace A327984.P5301033424048394560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327984.P5301033424048394560

/-! ## A327984.P3589605472498321759

`eq[0, A226474(n)]`
-/

namespace A327984.P3589605472498321759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327984.P3589605472498321759

/-! ## A327984.P4961097399208966308

`record[A226474(n)+n*A051023(n)]`
-/

namespace A327984.P4961097399208966308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n + (n : ℤ) * A051023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327984.P4961097399208966308

/-! ## A327984.P14552520416937906666

`record[n*A051023(n*A226474(n))]`
-/

namespace A327984.P14552520416937906666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051023 ((n : ℤ) * A226474 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327984.P14552520416937906666

/-! ## A327984.P7835866649032156933

`lt[(A226474(n)-1)*A000217(n)+n, 1]`
-/

namespace A327984.P7835866649032156933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226474 n - 1) * A000217 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327984.P7835866649032156933

/-! ## A327984.P15906238655000771296

`lt[(A226474(n)+1)²²²-4, A316828(n)]`
-/

namespace A327984.P15906238655000771296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A226474 n + 1) ^ 2) ^ 2) ^ 2 - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327984.P15906238655000771296

/-! ## A327984.P1408735932860724000

`eq[A051023(n), A329684(n)]`
-/

namespace A327984.P1408735932860724000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327984.P1408735932860724000

/-! ## A327984.P16382534914138031430

`lt[and(A135561(n+1), A226474(n)), 1]`
-/

namespace A327984.P16382534914138031430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135561 (n + 1)) (A226474 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327984.P16382534914138031430

/-! ## A327984.P7199429378876123940

`eq[1, A092539(n)%2]`
-/

namespace A327984.P7199429378876123940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092539 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327984.P7199429378876123940

/-!
# A327985: Positions of zeros in A051023, the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

The programs for A327985, there is no canonical definition to state claims against.
-/

/-! ## A327985.P1548096740612049759

`eq[0, A051023(n)]`
-/

namespace A327985.P1548096740612049759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327985.P1548096740612049759

/-! ## A327985.P17129005048862404332

`comp[A327984(n+1)]`
-/

namespace A327985.P17129005048862404332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327985.P17129005048862404332

/-! ## A327985.P2809940897785331520

`A327980(n)+a(n-1)` with `a(0)=2`
-/

namespace A327985.P2809940897785331520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A327980 n + a (n - 1)

end

end A327985.P2809940897785331520

/-! ## A327985.P3426542410460526453

`∑[A327980(n+1)]+2-A327980(n+1)`
-/

namespace A327985.P3426542410460526453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A327980 (n + 1))

end

end A327985.P3426542410460526453

/-! ## A327985.P5062994723498680704

`lt[A051023(n), A209229(A001316(n))]`
-/

namespace A327985.P5062994723498680704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327985.P5062994723498680704

/-! ## A327985.P15029671074007947687

`lt[0, A226474(n)]`
-/

namespace A327985.P15029671074007947687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327985.P15029671074007947687

/-! ## A327985.P5124476088904788437

`filter[n+1, A226474(#)]`
-/

namespace A327985.P5124476088904788437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A226474 (f1 j) = 1) n)

end

end A327985.P5124476088904788437

/-! ## A327985.P8921550199208682654

`eq[A054977(n), A226474(n)]`
-/

namespace A327985.P8921550199208682654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327985.P8921550199208682654

/-! ## A327985.P9998126445326564089

`eq[A141044(n), A226474(n)]`
-/

namespace A327985.P9998126445326564089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327985.P9998126445326564089

/-! ## A327985.P6625916542206423940

`eq[A158388(n), A226474(n)]`
-/

namespace A327985.P6625916542206423940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327985.P6625916542206423940

/-! ## A327985.P14305247113469629919

`eq[A226474(n), A373565(n)]`
-/

namespace A327985.P14305247113469629919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327985.P14305247113469629919

/-! ## A327985.P1324202732935877723

`eq[A121273(n+1), A226474(n)]`
-/

namespace A327985.P1324202732935877723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327985.P1324202732935877723

/-! ## A327985.P15518495480436491792

`eq[A226474(n), A352177(n+1)]`
-/

namespace A327985.P15518495480436491792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327985.P15518495480436491792

/-! ## A327985.P15200794768441657636

`eq[1, A226474(n*A226474(n))]`
-/

namespace A327985.P15200794768441657636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 ((n : ℤ) * A226474 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327985.P15200794768441657636

/-! ## A327985.P15778979230498178099

`eq[ceil(A022300(n+1)/3), A226474(n)]`
-/

namespace A327985.P15778979230498178099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022300 (n + 1) : ℚ) / 3⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327985.P15778979230498178099

/-! ## A327985.P17643427579111919348

`lt[A051023(n), A001222(A051074(n+1))]`
-/

namespace A327985.P17643427579111919348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051074 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327985.P17643427579111919348

/-! ## A327985.P1744397621176547782

`lt[A051023(n), A001222(A051071(n+1))]`
-/

namespace A327985.P1744397621176547782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051071 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327985.P1744397621176547782

/-! ## A327985.P8770323286812336372

`lt[A051023(n), A001222(A051072(n+1))]`
-/

namespace A327985.P8770323286812336372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051072 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327985.P8770323286812336372

/-! ## A327985.P6136958510109450817

`lt[A051023(n), A001222(A051073(n+1))]`
-/

namespace A327985.P6136958510109450817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051073 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327985.P6136958510109450817

/-! ## A327985.P7808457693777290550

`lt[A051023(n), A001222(A051079(n+1))]`
-/

namespace A327985.P7808457693777290550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327985.P7808457693777290550

/-!
# A327986: Denominators of the coefficients in the expansion of (4*sinh(sqrt(x)/2)^2*cosh(sqrt(x)))/x.

The programs for A327986, there is no canonical definition to state claims against.
-/

/-! ## A327986.P13480146573927533340

`A002679(2*(n+1))`
-/

namespace A327986.P13480146573927533340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002679 (2 * (n + 1))

end

end A327986.P13480146573927533340

/-! ## A327986.P11035141447892645782

`record[A002679(A133265(n))]`
-/

namespace A327986.P11035141447892645782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002679 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327986.P11035141447892645782

/-! ## A327986.P5065689594466962080

`record[A002679(n+2)/A033999(n)]`
-/

namespace A327986.P5065689594466962080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002679 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327986.P5065689594466962080

/-! ## A327986.P5894135701068293342

`record[lcm(A002679(n+2), A056594(n))]`
-/

namespace A327986.P5894135701068293342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002679 (n + 2)) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327986.P5894135701068293342

/-! ## A327986.P6081824155987220822

`record[gcd(A002679(n+2), A249699(n))]`
-/

namespace A327986.P6081824155987220822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002679 (n + 2)) (A249699 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327986.P6081824155987220822

/-!
# A327987: a(n) = Sum_{d|n} d & (n/d), where & is the bitwise AND operator, with a(0) = 0.

The programs for A327987, the canonical program `A327987.P17211608250903829843` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327987 has offset 0).

The definition of A327987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327987.P17211608250903829843

`∑{d}[n, and(#, n/#)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327987

/-- `∑{d}[n, and(#, n/#)]` -/
def P17211608250903829843.Spec : Prop :=
  ∀ n, P17211608250903829843.a n = A327987 n

theorem P17211608250903829843.correct : P17211608250903829843.Spec := by
  intro n
  simp only [A327987]

end A327987

/-! ## A327987.P15756871436159274608

`A001222(A088442(n)^A327640(n))`
-/

namespace A327987.P15756871436159274608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A088442 n : ℚ) ^ (A327640 n : ℤ))).toNat

end

end A327987.P15756871436159274608

namespace A327987

/-- `A001222(A088442(n)^A327640(n))` -/
def P15756871436159274608.Spec : Prop :=
  ∀ n, P15756871436159274608.a n = A327987 n

end A327987

/-! ## A327987.P2725924593341723108

`A052409(A088442(n)^A327640(n))`
-/

namespace A327987.P2725924593341723108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (SequenceMachineLib.roundAway ((A088442 n : ℚ) ^ (A327640 n : ℤ))).toNat

end

end A327987.P2725924593341723108

namespace A327987

/-- `A052409(A088442(n)^A327640(n))` -/
def P2725924593341723108.Spec : Prop :=
  ∀ n, P2725924593341723108.a n = A327987 n

end A327987

/-!
# A327988: The zeros of A327987.

The programs for A327988, there is no canonical definition to state claims against.
-/

/-! ## A327988.P2487327929320131423

`eq[0, A327987(n)]`
-/

namespace A327988.P2487327929320131423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327988.P2487327929320131423

/-! ## A327988.P1031204385287099031

`record[gcd(2*n, A327987(2*n))]`
-/

namespace A327988.P1031204385287099031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A327987 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327988.P1031204385287099031

/-! ## A327988.P14679254571354853311

`record[or(-A327987(n), A051176(n))]`
-/

namespace A327988.P14679254571354853311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A327987 n) (A051176 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327988.P14679254571354853311

/-! ## A327988.P16635789045198570118

`record[n*A000038(A327987(2*n))]`
-/

namespace A327988.P16635789045198570118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 (A327987 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327988.P16635789045198570118

/-! ## A327988.P3789065078726411046

`eq[C(2, n+2), A328176(A028310(n))]`
-/

namespace A327988.P3789065078726411046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328176 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327988.P3789065078726411046

/-! ## A327988.P12788699539082422297

`eq[A000007(n), A328176(A028310(n))]`
-/

namespace A327988.P12788699539082422297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328176 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327988.P12788699539082422297

/-! ## A327988.P11985673945076124099

`record[A106615(n*A000038(A327987(n)))]`
-/

namespace A327988.P11985673945076124099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 ((n : ℤ) * A000038 (A327987 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327988.P11985673945076124099

/-! ## A327988.P13343951603089179794

`eq[A000007(n), A328176(A000007(n)+n)]`
-/

namespace A327988.P13343951603089179794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328176 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327988.P13343951603089179794

/-! ## A327988.P3879164224465213077

`record[A000027(n+1)-A022521(A327987(n))]`
-/

namespace A327988.P3879164224465213077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A022521 (A327987 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327988.P3879164224465213077

/-!
# A327989: Nonnegative integers k such that Sum_{d|k} k & (k/d) is an odd prime, where & is the bitwise AND operator.

The programs for A327989, there is no canonical definition to state claims against.
-/

/-! ## A327989.P4701107693733162354

`record[A053585(A066038(n+1)²)]`
-/

namespace A327989.P4701107693733162354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A066038 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327989.P4701107693733162354

/-! ## A327989.P8809368324434314426

`record[A053585(A119689(n+1)²)]`
-/

namespace A327989.P8809368324434314426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A119689 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327989.P8809368324434314426

/-! ## A327989.P3128193152437979542

`∩[A046678(n+1), A140364(n+1)]`
-/

namespace A327989.P3128193152437979542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327989.P3128193152437979542

/-! ## A327989.P13197321976000820903

`∩[A046680(n+1), A140364(n+1)]`
-/

namespace A327989.P13197321976000820903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327989.P13197321976000820903

/-! ## A327989.P15186245720323308770

`∩[A055008(n+1), A140364(n+1)]`
-/

namespace A327989.P15186245720323308770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327989.P15186245720323308770

/-!
# A327992: The binary Fibonacci compositions. Irregular triangle with n >= 0 where the length of row n is Fibonacci(n) for n > 0.

The programs for A327992, there is no canonical definition to state claims against.
-/

/-! ## A327992.P13859274166320894131

`A136400(lcm(9, A133106(n+8)))`
-/

namespace A327992.P13859274166320894131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (Int.lcm 9 (A133106 (n + 8)))

end

end A327992.P13859274166320894131

/-! ## A327992.P17480359125323953349

`A136400(or(A000670(n), A008447(n)))`
-/

namespace A327992.P17480359125323953349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (Int.lor (A000670 n) (A008447 n)).toNat

end

end A327992.P17480359125323953349

/-! ## A327992.P2765583199526091498

`A136400(A223841(n+1)-A175369(n))`
-/

namespace A327992.P2765583199526091498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A223841 (n + 1) - A175369 n).toNat

end

end A327992.P2765583199526091498

/-!
# A327993: a(n) = [x^n] ((x - 1)*(x + 1)*(2*x^2 - 1))/(2*x^4 + 4*x^3 - x^2 - 3*x + 1).

The programs for A327993, the canonical program `A327993.P5863760199741106397` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327993 has offset 0).

The definition of A327993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327993.P5863760199741106397

`3*a(n-1)+a(n-2)-4*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=20, a(4)=55`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327993

/-- `3*a(n-1)+a(n-2)-4*a(n-3)-2*a(n-4)` -/
def P5863760199741106397.Spec : Prop :=
  ∀ n, P5863760199741106397.a n = A327993 n

theorem P5863760199741106397.correct : P5863760199741106397.Spec := by
  intro n
  simp only [A327993]

end A327993

/-! ## A327993.P15124581860833914990

`a(n-1)+A026150(n)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A327993.P15124581860833914990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 1) + (A026150 n + a (n - 2))

end

end A327993.P15124581860833914990

namespace A327993

/-- `a(n-1)+A026150(n)+a(n-2)` -/
def P15124581860833914990.Spec : Prop :=
  ∀ n, P15124581860833914990.a n = A327993 n

end A327993

/-! ## A327993.P2162231639019683382

`A329362(A000079(n))+A190173(n+1)`
-/

namespace A327993.P2162231639019683382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A000079 n).toNat + A190173 (n + 1)

end

end A327993.P2162231639019683382

namespace A327993

/-- `A329362(A000079(n))+A190173(n+1)` -/
def P2162231639019683382.Spec : Prop :=
  ∀ n, P2162231639019683382.a n = A327993 n

end A327993

/-!
# A327994: a(n) is the constant term in the expansion of (1 + (1+x)*(1+y) + (1+1/x)*(1+1/y) + (1+1/x^2)*(1+1/y^2))^n.

The programs for A327994, there is no canonical definition to state claims against.
-/

/-! ## A327994.P16849294045086078668

`A311916(A000701(∑[2*n]))`
-/

namespace A327994.P16849294045086078668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311916 (A000701 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A327994.P16849294045086078668

/-!
# A327997: Triangle read by rows: coefficients of the polynomials given by KummerU(-n, 1 - n - x, 3).

The programs for A327997, there is no canonical definition to state claims against.
-/

/-! ## A327997.P6016563230925436814

`A322832(A075504(n+1))`
-/

namespace A327997.P6016563230925436814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (A075504 (n + 1)).toNat

end

end A327997.P6016563230925436814

/-! ## A327997.P18236115588944301902

`A130734(A297762(n+1)+A027465(n))`
-/

namespace A327997.P18236115588944301902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A297762 (n + 1) + A027465 n).toNat

end

end A327997.P18236115588944301902

/-! ## A327997.P10856180343451474387

`A143495(n+3)+A101637(A005664(n))`
-/

namespace A327997.P10856180343451474387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143495 (n + 3) + A101637 (A005664 n).toNat

end

end A327997.P10856180343451474387

/-! ## A327997.P17106468372418384600

`A143495(n+3)+A135133(A001787(n))`
-/

namespace A327997.P17106468372418384600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143495 (n + 3) + A135133 (A001787 n).toNat

end

end A327997.P17106468372418384600

/-! ## A327997.P10653393715083133265

`A145270(A125800(n))+A143495(n+3)`
-/

namespace A327997.P10653393715083133265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145270 (A125800 n).toNat + A143495 (n + 3)

end

end A327997.P10653393715083133265

/-!
# A327998: a(n) = (n!/floor(n/2)!^2)^2.

The programs for A327998, the canonical program `A327998.P5324968746405220353` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327998 has offset 0).

The definition of A327998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327998.P5324968746405220353

`(n!/floor(n/2)!²)²`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327998

/-- `(n!/floor(n/2)!²)²` -/
def P5324968746405220353.Spec : Prop :=
  ∀ n, P5324968746405220353.a n = (A327998 n : ℚ)

end A327998

/-! ## A327998.P13256089639224936454

`gcd(xor(1, n²), ∑[n])²*C(n, floor(n/2))²`
-/

namespace A327998.P13256089639224936454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2

end

end A327998.P13256089639224936454

namespace A327998

/-- `gcd(xor(1, n²), ∑[n])²*C(n, floor(n/2))²` -/
def P13256089639224936454.Spec : Prop :=
  ∀ n, (P13256089639224936454.a n : ℤ) = A327998 n

end A327998

/-! ## A327998.P11114277453247027027

`(n^(n%2)*C(or(1, n)-1, floor(n/2)))²`
-/

namespace A327998.P11114277453247027027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ (n % 2) * Nat.choose ((Nat.lor 1 n : ℤ) - 1).toNat ⌊(n : ℚ) / 2⌋.toNat) ^ 2

end

end A327998.P11114277453247027027

namespace A327998

/-- `(n^(n%2)*C(or(1, n)-1, floor(n/2)))²` -/
def P11114277453247027027.Spec : Prop :=
  ∀ n, (P11114277453247027027.a n : ℤ) = A327998 n

end A327998

/-! ## A327998.P17166232561767079928

`(((∏[2*or(1, n)/(n+1)]-2)/2+1)*gcd(n+1, ceil(n/2)))²`
-/

namespace A327998.P17166232561767079928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j - 2) / 2 + 1) * (Int.gcd (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉ : ℚ)) ^ 2

end

end A327998.P17166232561767079928

namespace A327998

/-- `(((∏[2*or(1, n)/(n+1)]-2)/2+1)*gcd(n+1, ceil(n/2)))²` -/
def P17166232561767079928.Spec : Prop :=
  ∀ n, P17166232561767079928.a n = (A327998 n : ℚ)

end A327998

/-! ## A327998.P3368003398486774621

`A056040(n)²`
-/

namespace A327998.P3368003398486774621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n ^ 2

end

end A327998.P3368003398486774621

namespace A327998

/-- `A056040(n)²` -/
def P3368003398486774621.Spec : Prop :=
  ∀ n, P3368003398486774621.a n = A327998 n

end A327998

/-! ## A327998.P8137584726965751480

`(A237884(n)+A057977(n))²`
-/

namespace A327998.P8137584726965751480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237884 n + A057977 n) ^ 2

end

end A327998.P8137584726965751480

namespace A327998

/-- `(A237884(n)+A057977(n))²` -/
def P8137584726965751480.Spec : Prop :=
  ∀ n, P8137584726965751480.a n = A327998 n

end A327998

/-! ## A327998.P16087867239025990665

`(A057977(n)-A275329(n))²`
-/

namespace A327998.P16087867239025990665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057977 n - A275329 n) ^ 2

end

end A327998.P16087867239025990665

namespace A327998

/-- `(A057977(n)-A275329(n))²` -/
def P16087867239025990665.Spec : Prop :=
  ∀ n, P16087867239025990665.a n = A327998 n

end A327998

/-! ## A327998.P12941113593966303797

`(A189911(n)-A212303(n))²`
-/

namespace A327998.P12941113593966303797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189911 n - A212303 n) ^ 2

end

end A327998.P12941113593966303797

namespace A327998

/-- `(A189911(n)-A212303(n))²` -/
def P12941113593966303797.Spec : Prop :=
  ∀ n, P12941113593966303797.a n = A327998 n

end A327998

/-! ## A327998.P6414500429907418036

`A328001(∑[n])²`
-/

namespace A327998.P6414500429907418036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328001 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A327998.P6414500429907418036

namespace A327998

/-- `A328001(∑[n])²` -/
def P6414500429907418036.Spec : Prop :=
  ∀ n, P6414500429907418036.a n = A327998 n

end A327998

/-! ## A327998.P5561074760176371615

`A163649(∑[n]+n)²`
-/

namespace A327998.P5561074760176371615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163649 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A327998.P5561074760176371615

namespace A327998

/-- `A163649(∑[n]+n)²` -/
def P5561074760176371615.Spec : Prop :=
  ∀ n, P5561074760176371615.a n = A327998 n

end A327998

/-! ## A327998.P2005091675185783725

`A163770(∑[n]+n)²`
-/

namespace A327998.P2005091675185783725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163770 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A327998.P2005091675185783725

namespace A327998

/-- `A163770(∑[n]+n)²` -/
def P2005091675185783725.Spec : Prop :=
  ∀ n, P2005091675185783725.a n = A327998 n

end A327998

/-! ## A327998.P14202642163787225257

`A163840(∑[n]+n)²`
-/

namespace A327998.P14202642163787225257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163840 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A327998.P14202642163787225257

namespace A327998

/-- `A163840(∑[n]+n)²` -/
def P14202642163787225257.Spec : Prop :=
  ∀ n, P14202642163787225257.a n = A327998 n

end A327998

/-! ## A327998.P10095908941097072469

`A190909(∑[n]+n)²`
-/

namespace A327998.P10095908941097072469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190909 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A327998.P10095908941097072469

namespace A327998

/-- `A190909(∑[n]+n)²` -/
def P10095908941097072469.Spec : Prop :=
  ∀ n, P10095908941097072469.a n = A327998 n

end A327998

/-! ## A327998.P7568050332652586114

`A338654(∑[n]+n)²`
-/

namespace A327998.P7568050332652586114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338654 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A327998.P7568050332652586114

namespace A327998

/-- `A338654(∑[n]+n)²` -/
def P7568050332652586114.Spec : Prop :=
  ∀ n, P7568050332652586114.a n = A327998 n

end A327998

/-! ## A327998.P8406129979768381511

`A003418(n)*A056040(n)/A180000(n)`
-/

namespace A327998.P8406129979768381511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n * A056040 n : ℚ) / (A180000 n : ℚ)

end

end A327998.P8406129979768381511

namespace A327998

/-- `A003418(n)*A056040(n)/A180000(n)` -/
def P8406129979768381511.Spec : Prop :=
  ∀ n, P8406129979768381511.a n = (A327998 n : ℚ)

end A327998

/-! ## A327998.P17107185308442449319

`(A295864(n)/A000984(n))²`
-/

namespace A327998.P17107185308442449319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A295864 n : ℚ) / (A000984 n : ℚ)) ^ 2

end

end A327998.P17107185308442449319

namespace A327998

/-- `(A295864(n)/A000984(n))²` -/
def P17107185308442449319.Spec : Prop :=
  ∀ n, P17107185308442449319.a n = (A327998 n : ℚ)

end A327998

/-! ## A327998.P6060204685562272883

`A003418(n)²/A180000(n)²`
-/

namespace A327998.P6060204685562272883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n ^ 2 : ℚ) / (A180000 n ^ 2 : ℚ)

end

end A327998.P6060204685562272883

namespace A327998

/-- `A003418(n)²/A180000(n)²` -/
def P6060204685562272883.Spec : Prop :=
  ∀ n, P6060204685562272883.a n = (A327998 n : ℚ)

end A327998

/-! ## A327998.P13728203960992352211

`A056040(n)*A253665(n)/A000079(n)`
-/

namespace A327998.P13728203960992352211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n * A253665 n : ℚ) / (A000079 n : ℚ)

end

end A327998.P13728203960992352211

namespace A327998

/-- `A056040(n)*A253665(n)/A000079(n)` -/
def P13728203960992352211.Spec : Prop :=
  ∀ n, P13728203960992352211.a n = (A327998 n : ℚ)

end A327998

/-! ## A327998.P14452576888109918469

`A056040(n)*A163087(n)/A163088(n)`
-/

namespace A327998.P14452576888109918469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n * A163087 n : ℚ) / (A163088 n : ℚ)

end

end A327998.P14452576888109918469

namespace A327998

/-- `A056040(n)*A163087(n)/A163088(n)` -/
def P14452576888109918469.Spec : Prop :=
  ∀ n, P14452576888109918469.a n = (A327998 n : ℚ)

end A327998

/-! ## A327998.P9364649808394038969

`(A081125(n)/A081123(n))²`
-/

namespace A327998.P9364649808394038969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A081125 n : ℚ) / (A081123 n : ℚ)) ^ 2

end

end A327998.P9364649808394038969

namespace A327998

/-- `(A081125(n)/A081123(n))²` -/
def P9364649808394038969.Spec : Prop :=
  ∀ n, P9364649808394038969.a n = (A327998 n : ℚ)

end A327998

/-!
# A327999: a(n) = Sum_{k=0..2n}(k!*(2n - k)!)/(floor(k/2)!*floor((2n - k)/2)!)^2.

The programs for A327999, the canonical program `A327999.P1564279316963318472` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327999 has offset 0).

The definition of A327999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327999.P8889357408355438321

`4^n*(n²+n+8)/8`
-/

namespace A327999.P8889357408355438321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) * ((n ^ 2 + (n + 8) : ℚ) / 8)

end

end A327999.P8889357408355438321

namespace A327999

/-- `4^n*(n²+n+8)/8` -/
def P8889357408355438321.Spec : Prop :=
  ∀ n, P8889357408355438321.a n = (A327999 n : ℚ)

theorem P8889357408355438321.correct : P8889357408355438321.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A327999, Nat.add_sub_cancel, A327999.P8889357408355438321.a, A327999.P1564279316963318472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A327999, Nat.add_sub_cancel, A327999.P8889357408355438321.a, A327999.P1564279316963318472.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A327999

/-! ## A327999.P14287818903428854275

`A328000(2*n)`
-/

namespace A327999.P14287818903428854275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328000 (2 * n)

end

end A327999.P14287818903428854275

namespace A327999

/-- `A328000(2*n)` -/
def P14287818903428854275.Spec : Prop :=
  ∀ n, P14287818903428854275.a n = A327999 n

end A327999

/-! ## A327999.P1564279316963318472

`12*a(n-1)-48*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=5, a(2)=28`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327999

/-- `12*a(n-1)-48*a(n-2)+64*a(n-3)` -/
def P1564279316963318472.Spec : Prop :=
  ∀ n, P1564279316963318472.a n = A327999 n

theorem P1564279316963318472.correct : P1564279316963318472.Spec := by
  intro n
  simp only [A327999]

end A327999

/-! ## A327999.P13008274565393872641

`A002697(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A327999.P13008274565393872641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002697 n + 4 * a (n - 1)

end

end A327999.P13008274565393872641

namespace A327999

/-- `A002697(n)+4*a(n-1)` -/
def P13008274565393872641.Spec : Prop :=
  ∀ n, P13008274565393872641.a n = A327999 n

end A327999

/-! ## A327999.P7961266371282372308

`record[A328000(A014681(n))]`
-/

namespace A327999.P7961266371282372308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328000 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327999.P7961266371282372308

namespace A327999

/-- `record[A328000(A014681(n))]` -/
def P7961266371282372308.Spec : Prop :=
  ∀ n, P7961266371282372308.a n = A327999 n

end A327999

/-! ## A327999.P7199735245136301891

`A000302(n)+A011782(n)²*A000217(n)`
-/

namespace A327999.P7199735245136301891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + A011782 n ^ 2 * A000217 n

end

end A327999.P7199735245136301891

namespace A327999

/-- `A000302(n)+A011782(n)²*A000217(n)` -/
def P7199735245136301891.Spec : Prop :=
  ∀ n, P7199735245136301891.a n = A327999 n

end A327999

/-! ## A327999.P14792504475391470378

`A000079(n)²+A001788(n)*A011782(n)`
-/

namespace A327999.P14792504475391470378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 + A001788 n * A011782 n

end

end A327999.P14792504475391470378

namespace A327999

/-- `A000079(n)²+A001788(n)*A011782(n)` -/
def P14792504475391470378.Spec : Prop :=
  ∀ n, P14792504475391470378.a n = A327999 n

end A327999

/-! ## A327999.P17854034511652558535

`A081910(n+1)-(2*A000079(n)²+A000079(n)²)`
-/

namespace A327999.P17854034511652558535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081910 (n + 1) - (2 * A000079 n ^ 2 + A000079 n ^ 2)

end

end A327999.P17854034511652558535

namespace A327999

/-- `A081910(n+1)-(2*A000079(n)²+A000079(n)²)` -/
def P17854034511652558535.Spec : Prop :=
  ∀ n, P17854034511652558535.a n = A327999 n

end A327999

/-! ## A327999.P7757466086697642190

`A081910(n+1)-(A000079(2*n+1)+A000079(2*n))`
-/

namespace A327999.P7757466086697642190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081910 (n + 1) - (A000079 (2 * n + 1) + A000079 (2 * n))

end

end A327999.P7757466086697642190

namespace A327999

/-- `A081910(n+1)-(A000079(2*n+1)+A000079(2*n))` -/
def P7757466086697642190.Spec : Prop :=
  ∀ n, P7757466086697642190.a n = A327999 n

end A327999

/-! ## A327999.P11754767686260697778

`A081908(n+1)*A081908(n+1)/A145018(n+1)`
-/

namespace A327999.P11754767686260697778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081908 (n + 1) * A081908 (n + 1) : ℚ) / (A145018 (n + 1) : ℚ)

end

end A327999.P11754767686260697778

namespace A327999

/-- `A081908(n+1)*A081908(n+1)/A145018(n+1)` -/
def P11754767686260697778.Spec : Prop :=
  ∀ n, P11754767686260697778.a n = (A327999 n : ℚ)

end A327999

/-! ## A327999.P2521645553096354618

`A000302(n)*A081908(n+1)/A000079(n+1)`
-/

namespace A327999.P2521645553096354618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n * A081908 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A327999.P2521645553096354618

namespace A327999

/-- `A000302(n)*A081908(n+1)/A000079(n+1)` -/
def P2521645553096354618.Spec : Prop :=
  ∀ n, P2521645553096354618.a n = (A327999 n : ℚ)

end A327999

/-! ## A327999.P9409785339593922688

`A000079(n)²*A081908(n+1)/A000079(n+1)`
-/

namespace A327999.P9409785339593922688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 * A081908 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A327999.P9409785339593922688

namespace A327999

/-- `A000079(n)²*A081908(n+1)/A000079(n+1)` -/
def P9409785339593922688.Spec : Prop :=
  ∀ n, P9409785339593922688.a n = (A327999 n : ℚ)

end A327999

/-! ## A327999.P17935334858789782379

`A000079(2*n)*A081908(n+1)/A000079(n+1)`
-/

namespace A327999.P17935334858789782379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) * A081908 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A327999.P17935334858789782379

namespace A327999

/-- `A000079(2*n)*A081908(n+1)/A000079(n+1)` -/
def P17935334858789782379.Spec : Prop :=
  ∀ n, P17935334858789782379.a n = (A327999 n : ℚ)

end A327999

