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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C050
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
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A108700: Number of compositions of n into odd and relatively prime parts.

The programs for A108700, the canonical program `A108700.P6140972847353566884` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108700 has offset 1).

The definition of A108700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108700.P6140972847353566884

`-∑{d}[n+1, A008683(2*#)*A000045((n+1)/#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108700

/-- `-∑{d}[n+1, A008683(2*#)*A000045((n+1)/#)]` -/
def P6140972847353566884.Spec : Prop :=
  ∀ n, P6140972847353566884.a n = A108700 (n + 1)

theorem P6140972847353566884.correct : P6140972847353566884.Spec := by
  intro n
  simp only [A108700, Nat.add_sub_cancel]

end A108700

/-! ## A108700.P4519987503324844312

`∑{d}[n+1, A000045(#)*A087003((n+1)/#)]`
-/

namespace A108700.P4519987503324844312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A108700.P4519987503324844312

namespace A108700

/-- `∑{d}[n+1, A000045(#)*A087003((n+1)/#)]` -/
def P4519987503324844312.Spec : Prop :=
  ∀ n, P4519987503324844312.a n = A108700 (n + 1)

end A108700

/-! ## A108700.P171596020666017952

`∑{d}[n+1, A007435(#)*A327276((n+1)/#)]`
-/

namespace A108700.P171596020666017952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007435 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A108700.P171596020666017952

namespace A108700

/-- `∑{d}[n+1, A007435(#)*A327276((n+1)/#)]` -/
def P171596020666017952.Spec : Prop :=
  ∀ n, P171596020666017952.a n = A108700 (n + 1)

end A108700

/-! ## A108700.P12967824722285927194

`∑{d}[n+1, A034748(#)*A349341((n+1)/#)]`
-/

namespace A108700.P12967824722285927194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034748 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A108700.P12967824722285927194

namespace A108700

/-- `∑{d}[n+1, A034748(#)*A349341((n+1)/#)]` -/
def P12967824722285927194.Spec : Prop :=
  ∀ n, P12967824722285927194.a n = A108700 (n + 1)

end A108700

/-! ## A108700.P7477025251146840883

`∑{d}[n+1, A066769(#)*A326938((n+1)/#)]`
-/

namespace A108700.P7477025251146840883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066769 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A108700.P7477025251146840883

namespace A108700

/-- `∑{d}[n+1, A066769(#)*A326938((n+1)/#)]` -/
def P7477025251146840883.Spec : Prop :=
  ∀ n, P7477025251146840883.a n = A108700 (n + 1)

end A108700

/-! ## A108700.P710055583598045030

`∑{d}[n+1, A007436(#)*A036987((n+1)/#-1)]`
-/

namespace A108700.P710055583598045030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007436 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A108700.P710055583598045030

namespace A108700

/-- `∑{d}[n+1, A007436(#)*A036987((n+1)/#-1)]` -/
def P710055583598045030.Spec : Prop :=
  ∀ n, P710055583598045030.a n = A108700 (n + 1)

end A108700

/-! ## A108700.P1577490006551048387

`∑{d}[n+1, A011946(#)*A349565((n+1)/#)]`
-/

namespace A108700.P1577490006551048387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011946 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A108700.P1577490006551048387

namespace A108700

/-- `∑{d}[n+1, A011946(#)*A349565((n+1)/#)]` -/
def P1577490006551048387.Spec : Prop :=
  ∀ n, P1577490006551048387.a n = A108700 (n + 1)

end A108700

/-!
# A108701: Values of n such that n^2-2 and n^2+2 are both prime.

The programs for A108701, there is no canonical definition to state claims against.
-/

/-! ## A108701.P9545172412169827090

`sqrt(A144938(n+1))`
-/

namespace A108701.P9545172412169827090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A144938 (n + 1) : ℝ)

end

end A108701.P9545172412169827090

/-! ## A108701.P14497327791728420898

`ceil(sqrt(A176130(n+1)))`
-/

namespace A108701.P14497327791728420898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A176130 (n + 1) : ℝ)⌉

end

end A108701.P14497327791728420898

/-! ## A108701.P2269805796255326930

`round(sqrt(A176130(2*n+1-n)))`
-/

namespace A108701.P2269805796255326930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A176130 (2 * n + 1 - n) : ℝ))

end

end A108701.P2269805796255326930

/-! ## A108701.P14483568509143624191

`(A144938(n+1)^(1/2))%A236770(n+2)`
-/

namespace A108701.P14483568509143624191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A144938 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ))) (A236770 (n + 2))

end

end A108701.P14483568509143624191

/-! ## A108701.P15138258342627643690

`A000027(sqrt(A144938(1-(n-2*n))))`
-/

namespace A108701.P15138258342627643690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A144938 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat : ℝ))).toNat

end

end A108701.P15138258342627643690

/-! ## A108701.P16476216625508697045

`∩[A067201(n+1), A090120(n+1)]`
-/

namespace A108701.P16476216625508697045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108701.P16476216625508697045

/-! ## A108701.P13986505848258867574

`∩[A067201(n+1), A075190(n+1)]`
-/

namespace A108701.P13986505848258867574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108701.P13986505848258867574

/-! ## A108701.P11549367105632704229

`∩[A075190(n+1), A090120(n+1)]`
-/

namespace A108701.P11549367105632704229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108701.P11549367105632704229

/-! ## A108701.P5778561433367447112

`∩[A028870(n+1), A067201(n+1)]`
-/

namespace A108701.P5778561433367447112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108701.P5778561433367447112

/-! ## A108701.P15764771935165412035

`∩[A028870(n+1), A090120(n+1)]`
-/

namespace A108701.P15764771935165412035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108701.P15764771935165412035

/-! ## A108701.P8471121720088201655

`∩[2*n+1, A090120(n+1)]`
-/

namespace A108701.P8471121720088201655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108701.P8471121720088201655

/-! ## A108701.P3975609398436370966

`filter[A028870(n+1), A355449(#)]`
-/

namespace A108701.P3975609398436370966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A108701.P3975609398436370966

/-! ## A108701.P11975918681217023097

`filter[A075190(n+1), A355449(#)]`
-/

namespace A108701.P11975918681217023097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A108701.P11975918681217023097

/-! ## A108701.P4097197715440687376

`filter[A090120(n+1), A355449(#)]`
-/

namespace A108701.P4097197715440687376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A108701.P4097197715440687376

/-! ## A108701.P679006077024326126

`∩[A090120(n+1), A261524(n+1)]`
-/

namespace A108701.P679006077024326126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108701.P679006077024326126

/-! ## A108701.P10849511973631366011

`A075190(eq[2, A069495(n+1)-A225195(n+1)]+1)`
-/

namespace A108701.P10849511973631366011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069495 (n + 1) - A225195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A108701.P10849511973631366011

/-! ## A108701.P2512568197846120031

`filter[A090120(n+1), A093719(#)]`
-/

namespace A108701.P2512568197846120031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A108701.P2512568197846120031

/-! ## A108701.P10739296003198239784

`∩[A090120(n+1), A016945(n)]`
-/

namespace A108701.P10739296003198239784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108701.P10739296003198239784

/-! ## A108701.P11325285735649034411

`∩[A090120(n+1), A091361(n+1)]`
-/

namespace A108701.P11325285735649034411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108701.P11325285735649034411

/-! ## A108701.P15293986623189108448

`∩[A090120(n+1), A277569(n+1)]`
-/

namespace A108701.P15293986623189108448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108701.P15293986623189108448

/-!
# A108702: Triangle read by rows where n-th row contains the smallest n primes of form 4k+3 if n is odd and of form 4k+1 if n is even such that sequence is always increasing.

The programs for A108702, there is no canonical definition to state claims against.
-/

/-! ## A108702.P3516459417835494215

`p?[A097218(A026144(n+1))]`
-/

namespace A108702.P3516459417835494215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097218 (A026144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108702.P3516459417835494215

/-! ## A108702.P7479070536841503015

`A118759(p?[A128201(2*(n+1))])`
-/

namespace A108702.P7479070536841503015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A108702.P7479070536841503015

/-! ## A108702.P17470622496326484068

`p?[A267354(n)²*A128201(n+1)]`
-/

namespace A108702.P17470622496326484068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267354 n ^ 2 * A128201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108702.P17470622496326484068

/-! ## A108702.P2879025760530623248

`p?[A128201(2*(n+1))%A128148(n+1)]`
-/

namespace A108702.P2879025760530623248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128201 (2 * (n + 1))) (A128148 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108702.P2879025760530623248

/-! ## A108702.P169992039879136736

`p?[A128201(2*(n+1))]%A128193(n+2)`
-/

namespace A108702.P169992039879136736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A128193 (n + 2))

end

end A108702.P169992039879136736

/-!
# A108704: Number of partitions of 112233...nn into n pairs.

The programs for A108704, there is no canonical definition to state claims against.
-/

/-! ## A108704.P4667971738344787207

`∑{d}[A048167(A141494(n+1)), #]`
-/

namespace A108704.P4667971738344787207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048167 (A141494 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A108704.P4667971738344787207

/-! ## A108704.P2841621219814139907

`floor(ceil(A330185(A072597(n)+1)/3)/3)`
-/

namespace A108704.P2841621219814139907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(A330185 (A072597 n + 1).toNat : ℚ) / 3⌉ : ℚ) / 3⌋

end

end A108704.P2841621219814139907

/-!
# A108705: Numbers n such that a^n + b^n + c^n + ... is a square, where a*b*c* ... is the prime factorization of n.

The programs for A108705, there is no canonical definition to state claims against.
-/

/-! ## A108705.P3982490162064225012

`record[A328892(2*(n+1))^A008481(∑[2^n])]`
-/

namespace A108705.P3982490162064225012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328892 (2 * (n + 1)) : ℚ) ^ (A008481 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108705.P3982490162064225012

/-! ## A108705.P5843654459049340993

`record[A333484(n)^A001221(A154638(n))]`
-/

namespace A108705.P5843654459049340993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333484 n : ℚ) ^ (A001221 (A154638 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108705.P5843654459049340993

/-! ## A108705.P8296417022953479065

`A120242(n+1)^A335881(A120265(n+1))`
-/

namespace A108705.P8296417022953479065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120242 (n + 1) : ℚ) ^ (A335881 (A120265 (n + 1)).toNat : ℤ)

end

end A108705.P8296417022953479065

/-!
# A108707: Minimum side in Pythagorean triangles with hypotenuse of n.

The programs for A108707, there is no canonical definition to state claims against.
-/

/-! ## A108707.P16204329433031145362

`A283304(A228172(n+1)^A046080(n+1))`
-/

namespace A108707.P16204329433031145362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283304 (SequenceMachineLib.roundAway ((A228172 (n + 1) : ℚ) ^ (A046080 (n + 1) : ℤ))).toNat

end

end A108707.P16204329433031145362

/-! ## A108707.P8180429628160131086

`A283304(∑[A036703(n+1)]^A046080(n+1))`
-/

namespace A108707.P8180429628160131086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283304 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A046080 (n + 1) : ℤ))).toNat

end

end A108707.P8180429628160131086

/-! ## A108707.P7363452336415953047

`A283304(A228172(n+1)^(A063014(n+1)-1))`
-/

namespace A108707.P7363452336415953047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283304 (SequenceMachineLib.roundAway ((A228172 (n + 1) : ℚ) ^ (A063014 (n + 1) - 1 : ℤ))).toNat

end

end A108707.P7363452336415953047

/-! ## A108707.P11949264188098192353

`A283304(A228172(n+1)^A328712(2*(n+1)))`
-/

namespace A108707.P11949264188098192353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283304 (SequenceMachineLib.roundAway ((A228172 (n + 1) : ℚ) ^ (A328712 (2 * (n + 1)) : ℤ))).toNat

end

end A108707.P11949264188098192353

/-! ## A108707.P2626706707568823685

`A283304(A228172(n+1)^∑{d}[n+1, A024362(#)])`
-/

namespace A108707.P2626706707568823685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283304 (SequenceMachineLib.roundAway ((A228172 (n + 1) : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), A024362 d : ℤ))).toNat

end

end A108707.P2626706707568823685

/-!
# A108708: Maximum side length in Pythagorean triangles with hypotenuse n.

The programs for A108708, there is no canonical definition to state claims against.
-/

/-! ## A108708.P5444121589824622449

`A305575(A014198((n+1)²))`
-/

namespace A108708.P5444121589824622449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A014198 ((n + 1) ^ 2)).toNat

end

end A108708.P5444121589824622449

/-! ## A108708.P12084604082967145054

`A305575(∑[A036693(n+1)])`
-/

namespace A108708.P12084604082967145054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108708.P12084604082967145054

/-! ## A108708.P1713707213233107420

`A305575(A051132(n+1)+1)`
-/

namespace A108708.P1713707213233107420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A051132 (n + 1) + 1).toNat

end

end A108708.P1713707213233107420

/-! ## A108708.P1627059213248580515

`A305575(A000328(n+1)-1)`
-/

namespace A108708.P1627059213248580515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A000328 (n + 1) - 1).toNat

end

end A108708.P1627059213248580515

/-! ## A108708.P71059369075246345

`A305575(A333572(2*(n+1)))`
-/

namespace A108708.P71059369075246345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A333572 (2 * (n + 1))).toNat

end

end A108708.P71059369075246345

/-! ## A108708.P10988808494320521912

`A305575(xor(1, A000328(n+1)))`
-/

namespace A108708.P10988808494320521912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (Int.xor 1 (A000328 (n + 1))).toNat

end

end A108708.P10988808494320521912

/-! ## A108708.P1429860191406293089

`A305575(∑[A047077(n)-A046109(n)])`
-/

namespace A108708.P1429860191406293089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047077 n - A046109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108708.P1429860191406293089

/-! ## A108708.P518150397114683799

`A305575(A047077(n)-(1-A051132(n)))`
-/

namespace A108708.P518150397114683799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305575 (A047077 n - (1 - A051132 n)).toNat

end

end A108708.P518150397114683799

/-!
# A108709: Start to read the sequence digit by digit and erase the first "1" you encounter, then the first "2", the first "3", etc., until the first "9"; go on from there and erase again the first "1", the first "2", etc., until "9" -- and so on, cyclically until the end of the (infinite) sequence. Concatenate what is left. The result is the concatenation of all integers of the sequence.

The programs for A108709, there is no canonical definition to state claims against.
-/

/-! ## A108709.P3490105473065348666

`A108710(A024645(n+1))`
-/

namespace A108709.P3490105473065348666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108710 (A024645 (n + 1)).toNat

end

end A108709.P3490105473065348666

/-! ## A108709.P8159476001760094139

`A108710(A024646(n+1))`
-/

namespace A108709.P8159476001760094139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108710 (A024646 (n + 1)).toNat

end

end A108709.P8159476001760094139

/-! ## A108709.P4242825852680051954

`A108710(A024647(n+1))`
-/

namespace A108709.P4242825852680051954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108710 (A024647 (n + 1)).toNat

end

end A108709.P4242825852680051954

/-!
# A108711: Number of partitions of n with floor(2n/3) parts.

The programs for A108711, there is no canonical definition to state claims against.
-/

/-! ## A108711.P3815956518645986729

`A072233(∑[n+2-char[3*n]])`
-/

namespace A108711.P3815956518645986729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108711.P3815956518645986729

/-! ## A108711.P3482798936582739038

`A000041(∑[char[3*n]])%(4^n)`
-/

namespace A108711.P3482798936582739038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (∑ j ∈ Finset.range (n + 1), f1 j)) (4 ^ n : ℤ)

end

end A108711.P3482798936582739038

/-! ## A108711.P10325748867685349345

`Δ[a(n-1)+A000041(ceil(n/3))]` with `a(0)=1, a(1)=1`
-/

namespace A108711.P10325748867685349345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + A000041 ⌈(n : ℚ) / 3⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108711.P10325748867685349345

/-! ## A108711.P16456333631859821258

`A000041(A008620(n))-floor(acot(n))`
-/

namespace A108711.P16456333631859821258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A008620 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A108711.P16456333631859821258

/-! ## A108711.P7191506260751194508

`A000041(∑[char[3*n]])-A000007(n)`
-/

namespace A108711.P7191506260751194508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j) - A000007 n

end

end A108711.P7191506260751194508

/-! ## A108711.P2547721723280778296

`A000041(∑[char[3*n]])-A049084(2*(n+1))`
-/

namespace A108711.P2547721723280778296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j) - A049084 (2 * (n + 1))

end

end A108711.P2547721723280778296

/-! ## A108711.P16575676711579890912

`A000041(∑[char[3*n]])-A000010(n+2)%2`
-/

namespace A108711.P16575676711579890912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j) - Int.tmod (A000010 (n + 2)) 2

end

end A108711.P16575676711579890912

/-! ## A108711.P2607082730451986954

`A000041(floor(n/3)+1)-val(A000040(n+1), 2)`
-/

namespace A108711.P2607082730451986954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (⌊(n : ℚ) / 3⌋ + 1).toNat - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A108711.P2607082730451986954

/-! ## A108711.P193760036499848787

`A282750(A248121(n+1))`
-/

namespace A108711.P193760036499848787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282750 (A248121 (n + 1)).toNat

end

end A108711.P193760036499848787

/-!
# A108712: A fractal sequence, defined by a(2n-1) = A007376(n) (the almost-natural numbers), a(2n) = a(n).

The programs for A108712, there is no canonical definition to state claims against.
-/

/-! ## A108712.P17251120681336405191

`A033307(A025480(n))`
-/

namespace A108712.P17251120681336405191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A025480 n).toNat

end

end A108712.P17251120681336405191

/-! ## A108712.P15025057035895389677

`A007376(A025480(n)+1)`
-/

namespace A108712.P15025057035895389677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A025480 n + 1).toNat

end

end A108712.P15025057035895389677

/-! ## A108712.P8089070961055762304

`A033307(floor(n/(xor(n, n+1)+1)))`
-/

namespace A108712.P8089070961055762304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A108712.P8089070961055762304

/-! ## A108712.P14622715219688972343

`A033307(round(n/(xor(n, n+1)+1)))`
-/

namespace A108712.P14622715219688972343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A108712.P14622715219688972343

/-! ## A108712.P16214765529204074340

`A033307(-ceil(n/xor(n, -(n+2))))`
-/

namespace A108712.P16214765529204074340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (-⌈(n : ℚ) / (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ)⌉).toNat

end

end A108712.P16214765529204074340

/-! ## A108712.P111141632946755536

`A033307(floor(n/2^val(n+1, 2))/2)`
-/

namespace A108712.P111141632946755536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat

end

end A108712.P111141632946755536

/-! ## A108712.P8949908355893466027

`A007376(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A108712.P8949908355893466027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A108712.P8949908355893466027

/-! ## A108712.P3139294321534808199

`A007376(((n+1)/2^val(n+1, 2)+1)/2)`
-/

namespace A108712.P3139294321534808199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2)).toNat

end

end A108712.P3139294321534808199

/-! ## A108712.P1043003234166397282

`A033307(((n+1)/2^val(n+1, 2)+1)/2-1)`
-/

namespace A108712.P1043003234166397282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2 - 1)).toNat

end

end A108712.P1043003234166397282

/-! ## A108712.P7381074210115940077

`A033307(((n+1)/2^val(n+1, 2))%(((n+1)/2^val(n+1, 2)+1)/2))`
-/

namespace A108712.P7381074210115940077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2))).toNat

end

end A108712.P7381074210115940077

/-! ## A108712.P3826873770744775649

`A007376(A003602(n+1))`
-/

namespace A108712.P3826873770744775649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A003602 (n + 1)).toNat

end

end A108712.P3826873770744775649

/-! ## A108712.P2776141463299773208

`A033307(A153733(n)/2)`
-/

namespace A108712.P2776141463299773208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A108712.P2776141463299773208

/-! ## A108712.P11390712104038716408

`A033307(A003602(n+1)-1)`
-/

namespace A108712.P11390712104038716408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A003602 (n + 1) - 1).toNat

end

end A108712.P11390712104038716408

/-! ## A108712.P7307772368239835295

`A007376(A103391(n+2)-1)`
-/

namespace A108712.P7307772368239835295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A103391 (n + 2) - 1).toNat

end

end A108712.P7307772368239835295

/-! ## A108712.P2418896069545095201

`A007376(A110963(2*n+1))`
-/

namespace A108712.P2418896069545095201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A110963 (2 * n + 1)).toNat

end

end A108712.P2418896069545095201

/-! ## A108712.P12394197970205702997

`A033307(A103391(n+2)-2)`
-/

namespace A108712.P12394197970205702997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (A103391 (n + 2) - 2).toNat

end

end A108712.P12394197970205702997

/-! ## A108712.P12544453643328743006

`A108202(floor(n/2^val(n+1, 2))+2)`
-/

namespace A108712.P12544453643328743006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 2).toNat

end

end A108712.P12544453643328743006

/-! ## A108712.P6763048034164569311

`A108202((n+1)/2^val(n+1, 2)+1)`
-/

namespace A108712.P6763048034164569311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1)).toNat

end

end A108712.P6763048034164569311

/-! ## A108712.P11259763224628321791

`A108202(A153733(n)+2)`
-/

namespace A108712.P11259763224628321791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (A153733 n + 2).toNat

end

end A108712.P11259763224628321791

/-! ## A108712.P10022423751996035869

`A108202(A000265(n+1)+1)`
-/

namespace A108712.P10022423751996035869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (A000265 (n + 1) + 1).toNat

end

end A108712.P10022423751996035869

/-!
# A108713: Number of possible canonical minimal transition-complete sequences over n objects.

The programs for A108713, there is no canonical definition to state claims against.
-/

/-! ## A108713.P2394431474477872884

`((n+1)*abs(1-n)!)^(n-1)*abs(1-n)!`
-/

namespace A108713.P2394431474477872884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.factorial |1 - (n : ℤ)|.toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℚ)

end

end A108713.P2394431474477872884

/-! ## A108713.P11770495970621279582

`floor(A180013(A133263(n))^n/(n+1))`
-/

namespace A108713.P11770495970621279582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A180013 (A133263 n).toNat ^ n : ℚ) / (n + 1 : ℚ)⌋

end

end A108713.P11770495970621279582

/-!
# A108714: a(n) is the minimal value of k, such that n^2+k^2 or (n^2+k^2)/2 are primes.

The programs for A108714, there is no canonical definition to state claims against.
-/

/-! ## A108714.P5077417624665086955

`gcd(A069003(n+1), A143142(A262835(n+1)))`
-/

namespace A108714.P5077417624665086955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069003 (n + 1)) (A143142 (A262835 (n + 1)).toNat)

end

end A108714.P5077417624665086955

/-! ## A108714.P13745393856152903174

`gcd(A008621(A006982(n)), A022420(n))`
-/

namespace A108714.P13745393856152903174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008621 (A006982 n).toNat) (A022420 n)

end

end A108714.P13745393856152903174

/-!
# A108715: First differences of A025480.

The programs for A108715, the canonical program `A108715.P1059137394795965770` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108715 has offset 0).

The definition of A108715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108715.P1059137394795965770

`Δ[floor(n/(xor(n, n+1)+1))]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108715

/-- `Δ[floor(n/(xor(n, n+1)+1))]` -/
def P1059137394795965770.Spec : Prop :=
  ∀ n, P1059137394795965770.a n = A108715 n

theorem P1059137394795965770.correct : P1059137394795965770.Spec := by
  intro n
  simp only [A108715]

end A108715

/-! ## A108715.P14469769234887872967

`Δ[round(n/(xor(n, n+1)+1))]`
-/

namespace A108715.P14469769234887872967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P14469769234887872967

namespace A108715

/-- `Δ[round(n/(xor(n, n+1)+1))]` -/
def P14469769234887872967.Spec : Prop :=
  ∀ n, P14469769234887872967.a n = A108715 n

end A108715

/-! ## A108715.P5718841599154382356

`Δ[-ceil(n/xor(n, -(n+2)))]`
-/

namespace A108715.P5718841599154382356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n : ℚ) / (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P5718841599154382356

namespace A108715

/-- `Δ[-ceil(n/xor(n, -(n+2)))]` -/
def P5718841599154382356.Spec : Prop :=
  ∀ n, P5718841599154382356.a n = A108715 n

end A108715

/-! ## A108715.P16057491370244473224

`Δ[(n+1)/(xor(n, n+1)+1)]`
-/

namespace A108715.P16057491370244473224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P16057491370244473224

namespace A108715

/-- `Δ[(n+1)/(xor(n, n+1)+1)]` -/
def P16057491370244473224.Spec : Prop :=
  ∀ n, P16057491370244473224.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P18347207075388170043

`Δ[floor(n/2^val(n+1, 2))/2]`
-/

namespace A108715.P18347207075388170043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P18347207075388170043

namespace A108715

/-- `Δ[floor(n/2^val(n+1, 2))/2]` -/
def P18347207075388170043.Spec : Prop :=
  ∀ n, P18347207075388170043.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P9957902903864692754

`Δ[floor(n/(or(n, n+1)-n))/2]`
-/

namespace A108715.P9957902903864692754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)⌋ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P9957902903864692754

namespace A108715

/-- `Δ[floor(n/(or(n, n+1)-n))/2]` -/
def P9957902903864692754.Spec : Prop :=
  ∀ n, P9957902903864692754.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P3091361402207086975

`Δ[(n+1)/2^val(n+1, 2)]/2`
-/

namespace A108715.P3091361402207086975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 2

end

end A108715.P3091361402207086975

namespace A108715

/-- `Δ[(n+1)/2^val(n+1, 2)]/2` -/
def P3091361402207086975.Spec : Prop :=
  ∀ n, P3091361402207086975.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P11024132156205422685

`Δ[(n+1)/(or(n, n+1)-n)]/2`
-/

namespace A108715.P11024132156205422685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 2

end

end A108715.P11024132156205422685

namespace A108715

/-- `Δ[(n+1)/(or(n, n+1)-n)]/2` -/
def P11024132156205422685.Spec : Prop :=
  ∀ n, P11024132156205422685.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P11328160852436930456

`Δ[floor(n/and(n+1, -(n+1)))/2]`
-/

namespace A108715.P11328160852436930456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P11328160852436930456

namespace A108715

/-- `Δ[floor(n/and(n+1, -(n+1)))/2]` -/
def P11328160852436930456.Spec : Prop :=
  ∀ n, P11328160852436930456.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P8840292425500908421

`Δ[(n+1)/and(n+1, -(n+1))]/2`
-/

namespace A108715.P8840292425500908421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 2

end

end A108715.P8840292425500908421

namespace A108715

/-- `Δ[(n+1)/and(n+1, -(n+1))]/2` -/
def P8840292425500908421.Spec : Prop :=
  ∀ n, P8840292425500908421.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P3054856282176230351

`Δ[A025480(n)]`
-/

namespace A108715.P3054856282176230351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P3054856282176230351

namespace A108715

/-- `Δ[A025480(n)]` -/
def P3054856282176230351.Spec : Prop :=
  ∀ n, P3054856282176230351.a n = A108715 n

end A108715

/-! ## A108715.P8343930601310898759

`Δ[A103391(n+2)]`
-/

namespace A108715.P8343930601310898759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P8343930601310898759

namespace A108715

/-- `Δ[A103391(n+2)]` -/
def P8343930601310898759.Spec : Prop :=
  ∀ n, P8343930601310898759.a n = A108715 n

end A108715

/-! ## A108715.P1194102224652791531

`Δ[A110962(2*n)]`
-/

namespace A108715.P1194102224652791531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P1194102224652791531

namespace A108715

/-- `Δ[A110962(2*n)]` -/
def P1194102224652791531.Spec : Prop :=
  ∀ n, P1194102224652791531.a n = A108715 n

end A108715

/-! ## A108715.P3026589078932315627

`Δ[A110963(2*n+1)]`
-/

namespace A108715.P3026589078932315627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P3026589078932315627

namespace A108715

/-- `Δ[A110963(2*n+1)]` -/
def P3026589078932315627.Spec : Prop :=
  ∀ n, P3026589078932315627.a n = A108715 n

end A108715

/-! ## A108715.P14457035733263544435

`Δ[A000265(n+1)/2]`
-/

namespace A108715.P14457035733263544435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P14457035733263544435

namespace A108715

/-- `Δ[A000265(n+1)/2]` -/
def P14457035733263544435.Spec : Prop :=
  ∀ n, P14457035733263544435.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P7045479431132634105

`Δ[A171435(2*(n+1))/2]`
-/

namespace A108715.P7045479431132634105
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171435 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P7045479431132634105

namespace A108715

/-- `Δ[A171435(2*(n+1))/2]` -/
def P7045479431132634105.Spec : Prop :=
  ∀ n, P7045479431132634105.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P7349822580536851094

`Δ[A302044(2*(n+1))/2]`
-/

namespace A108715.P7349822580536851094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302044 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P7349822580536851094

namespace A108715

/-- `Δ[A302044(2*(n+1))/2]` -/
def P7349822580536851094.Spec : Prop :=
  ∀ n, P7349822580536851094.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P6957193070439219397

`Δ[(n+1)/A171977(n+1)]`
-/

namespace A108715.P6957193070439219397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A171977 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108715.P6957193070439219397

namespace A108715

/-- `Δ[(n+1)/A171977(n+1)]` -/
def P6957193070439219397.Spec : Prop :=
  ∀ n, P6957193070439219397.a n = (A108715 n : ℚ)

end A108715

/-! ## A108715.P5265535528621647140

`A025480(n+1)-A025480(n)`
-/

namespace A108715.P5265535528621647140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (n + 1) - A025480 n

end

end A108715.P5265535528621647140

namespace A108715

/-- `A025480(n+1)-A025480(n)` -/
def P5265535528621647140.Spec : Prop :=
  ∀ n, P5265535528621647140.a n = A108715 n

end A108715

/-! ## A108715.P4563142026099706364

`A103391(n+3)-A103391(n+2)`
-/

namespace A108715.P4563142026099706364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (n + 3) - A103391 (n + 2)

end

end A108715.P4563142026099706364

namespace A108715

/-- `A103391(n+3)-A103391(n+2)` -/
def P4563142026099706364.Spec : Prop :=
  ∀ n, P4563142026099706364.a n = A108715 n

end A108715

/-!
# A108716: a(n) = tan(Pi/14)^(-2n) + tan(3*Pi/14)^(-2n) + tan(5*Pi/14)^(-2n).

The programs for A108716, the canonical program `A108716.P4411793213167917873` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108716 has offset 0).

The definition of A108716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108716.P4411793213167917873

`21*a(n-1)-35*a(n-2)+7*a(n-3)` with `a(0)=3, a(1)=21, a(2)=371`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108716

/-- `21*a(n-1)-35*a(n-2)+7*a(n-3)` -/
def P4411793213167917873.Spec : Prop :=
  ∀ n, P4411793213167917873.a n = A108716 n

theorem P4411793213167917873.correct : P4411793213167917873.Spec := by
  intro n
  simp only [A108716]

end A108716

/-! ## A108716.P14937286673057097440

`A275195(2*n)/7^n`
-/

namespace A108716.P14937286673057097440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275195 (2 * n) : ℚ) / (7 ^ n : ℚ)

end

end A108716.P14937286673057097440

namespace A108716

/-- `A275195(2*n)/7^n` -/
def P14937286673057097440.Spec : Prop :=
  ∀ n, P14937286673057097440.a n = (A108716 n : ℚ)

end A108716

/-! ## A108716.P6909691473983488028

`ogf((3-42x+35x^2)/(1-21x+35x^2-7x^3))`
-/

namespace A108716.P6909691473983488028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -42, 35] [1, -21, 35, -7] n

end

end A108716.P6909691473983488028

namespace A108716

/-- `ogf((3-42x+35x^2)/(1-21x+35x^2-7x^3))` -/
def P6909691473983488028.Spec : Prop :=
  ∀ n, P6909691473983488028.a n = A108716 n

end A108716

/-!
# A108719: Primes which can be partitioned into a sum of distinct primes in more than one way.

The programs for A108719, the canonical program `A108719.P5655948725095754702` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108719 has offset 1).

The definition of A108719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108719.P5655948725095754702

`p?[gcd(2*n+1, C(7, n+2))]`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108719

/-- `p?[gcd(2*n+1, C(7, n+2))]` -/
def P5655948725095754702.Spec : Prop :=
  ∀ n, (P5655948725095754702.a n : ℤ) = A108719 (n + 1)

theorem P5655948725095754702.correct : P5655948725095754702.Spec := by
  intro n
  simp only [A108719, Nat.add_sub_cancel]

end A108719

/-! ## A108719.P536739653240892238

`sqrt(A326708(n+3))`
-/

namespace A108719.P536739653240892238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A326708 (n + 3) : ℝ)

end

end A108719.P536739653240892238

namespace A108719

/-- `sqrt(A326708(n+3))` -/
def P536739653240892238.Spec : Prop :=
  ∀ n, P536739653240892238.a n = (A108719 (n + 1) : ℝ)

end A108719

/-! ## A108719.P1758286624995202460

`sqrt(A190300(n+4))`
-/

namespace A108719.P1758286624995202460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A190300 (n + 4) : ℝ)

end

end A108719.P1758286624995202460

namespace A108719

/-- `sqrt(A190300(n+4))` -/
def P1758286624995202460.Spec : Prop :=
  ∀ n, P1758286624995202460.a n = (A108719 (n + 1) : ℝ)

end A108719

/-! ## A108719.P14439046312807947956

`A000040(A105574(A000010(n+1))+n+1)`
-/

namespace A108719.P14439046312807947956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105574 (A000010 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A108719.P14439046312807947956

namespace A108719

/-- `A000040(A105574(A000010(n+1))+n+1)` -/
def P14439046312807947956.Spec : Prop :=
  ∀ n, P14439046312807947956.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P12427547522882678934

`A000040(A105574(A002322(n+1))+n+1)`
-/

namespace A108719.P12427547522882678934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105574 (A002322 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A108719.P12427547522882678934

namespace A108719

/-- `A000040(A105574(A002322(n+1))+n+1)` -/
def P12427547522882678934.Spec : Prop :=
  ∀ n, P12427547522882678934.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P16702087720331470454

`A008578(A055495(n+2))`
-/

namespace A108719.P16702087720331470454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A055495 (n + 2)).toNat

end

end A108719.P16702087720331470454

namespace A108719

/-- `A008578(A055495(n+2))` -/
def P16702087720331470454.Spec : Prop :=
  ∀ n, P16702087720331470454.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P17841017431697891918

`A008578(A257542(n+2))`
-/

namespace A108719.P17841017431697891918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A257542 (n + 2)).toNat

end

end A108719.P17841017431697891918

namespace A108719

/-- `A008578(A257542(n+2))` -/
def P17841017431697891918.Spec : Prop :=
  ∀ n, P17841017431697891918.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P6185080618894347953

`A161346(A107820(n+1))`
-/

namespace A108719.P6185080618894347953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (A107820 (n + 1)).toNat

end

end A108719.P6185080618894347953

namespace A108719

/-- `A161346(A107820(n+1))` -/
def P6185080618894347953.Spec : Prop :=
  ∀ n, P6185080618894347953.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P15308276794595192651

`A046022(A133043(n+2))`
-/

namespace A108719.P15308276794595192651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (A133043 (n + 2)).toNat

end

end A108719.P15308276794595192651

namespace A108719

/-- `A046022(A133043(n+2))` -/
def P15308276794595192651.Spec : Prop :=
  ∀ n, P15308276794595192651.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P3126907835367021434

`record[A006530(abs(2-n)+13)]`
-/

namespace A108719.P3126907835367021434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (|2 - (n : ℤ)| + 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108719.P3126907835367021434

namespace A108719

/-- `record[A006530(abs(2-n)+13)]` -/
def P3126907835367021434.Spec : Prop :=
  ∀ n, P3126907835367021434.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P11932955059756999906

`p?[A236204(n+1)]`
-/

namespace A108719.P11932955059756999906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108719.P11932955059756999906

namespace A108719

/-- `p?[A236204(n+1)]` -/
def P11932955059756999906.Spec : Prop :=
  ∀ n, P11932955059756999906.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P13111888652956017507

`filter[A236204(n+1), A010051(#)]`
-/

namespace A108719.P13111888652956017507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A108719.P13111888652956017507

namespace A108719

/-- `filter[A236204(n+1), A010051(#)]` -/
def P13111888652956017507.Spec : Prop :=
  ∀ n, P13111888652956017507.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P16910471266693039882

`filter[A236204(n+1), A323153(#)]`
-/

namespace A108719.P16910471266693039882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A108719.P16910471266693039882

namespace A108719

/-- `filter[A236204(n+1), A323153(#)]` -/
def P16910471266693039882.Spec : Prop :=
  ∀ n, P16910471266693039882.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P16125303460716144662

`filter[A236204(n+1), A353670(#)]`
-/

namespace A108719.P16125303460716144662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A108719.P16125303460716144662

namespace A108719

/-- `filter[A236204(n+1), A353670(#)]` -/
def P16125303460716144662.Spec : Prop :=
  ∀ n, P16125303460716144662.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P1384894654867566026

`filter[A236204(n+1), A379969(#)]`
-/

namespace A108719.P1384894654867566026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A108719.P1384894654867566026

namespace A108719

/-- `filter[A236204(n+1), A379969(#)]` -/
def P1384894654867566026.Spec : Prop :=
  ∀ n, P1384894654867566026.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P15001656900105697039

`filter[A236204(n+2), A323152(#)]`
-/

namespace A108719.P15001656900105697039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A108719.P15001656900105697039

namespace A108719

/-- `filter[A236204(n+2), A323152(#)]` -/
def P15001656900105697039.Spec : Prop :=
  ∀ n, P15001656900105697039.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P7596443608284632496

`filter[A236204(n+2), A340371(#)]`
-/

namespace A108719.P7596443608284632496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A108719.P7596443608284632496

namespace A108719

/-- `filter[A236204(n+2), A340371(#)]` -/
def P7596443608284632496.Spec : Prop :=
  ∀ n, P7596443608284632496.a n = A108719 (n + 1)

end A108719

/-! ## A108719.P12344727785883361773

`∩[A000040(n+1), A236204(n+1)]`
-/

namespace A108719.P12344727785883361773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108719.P12344727785883361773

namespace A108719

/-- `∩[A000040(n+1), A236204(n+1)]` -/
def P12344727785883361773.Spec : Prop :=
  ∀ n, (P12344727785883361773.a n : ℤ) = A108719 (n + 1)

end A108719

/-! ## A108719.P7410247104469637656

`∩[A001751(n+1), A236204(n+1)]`
-/

namespace A108719.P7410247104469637656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108719.P7410247104469637656

namespace A108719

/-- `∩[A001751(n+1), A236204(n+1)]` -/
def P7410247104469637656.Spec : Prop :=
  ∀ n, (P7410247104469637656.a n : ℤ) = A108719 (n + 1)

end A108719

/-! ## A108719.P1723676570898817350

`∩[A038550(n+1), A236204(n+1)]`
-/

namespace A108719.P1723676570898817350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108719.P1723676570898817350

namespace A108719

/-- `∩[A038550(n+1), A236204(n+1)]` -/
def P1723676570898817350.Spec : Prop :=
  ∀ n, (P1723676570898817350.a n : ℤ) = A108719 (n + 1)

end A108719

/-!
# A108721: If a(n-1)=abcde..., where a,b,c,d,e... are the digits, then a(n)=abcde...+a*bcde...+ab*cde...+abc*de...+abcd*e...+....

The programs for A108721, there is no canonical definition to state claims against.
-/

/-! ## A108721.P4484946088284916226

`A071904(A129820(A246681((n+1)²)))`
-/

namespace A108721.P4484946088284916226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (A129820 (A246681 ((n + 1) ^ 2)).toNat).toNat

end

end A108721.P4484946088284916226

/-!
# A108722: a(1)=11, If a(n-1)=abcde..., where a,b,c,d,e... are the digits, then a(n)=abcde...+a*bcde...+ab*cde...+abc*de...+abcd*e...+....

The programs for A108722, there is no canonical definition to state claims against.
-/

/-! ## A108722.P3122415149382809281

`A232487(A032555(n+1)+2)`
-/

namespace A108722.P3122415149382809281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232487 (A032555 (n + 1) + 2).toNat

end

end A108722.P3122415149382809281

/-! ## A108722.P6128804351864775107

`A232487(A032559(n+1)+2)`
-/

namespace A108722.P6128804351864775107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232487 (A032559 (n + 1) + 2).toNat

end

end A108722.P6128804351864775107

/-! ## A108722.P13331290212989626843

`A232487(A082217(n+1)+2)`
-/

namespace A108722.P13331290212989626843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232487 (A082217 (n + 1) + 2).toNat

end

end A108722.P13331290212989626843

/-! ## A108722.P14628740802772897720

`A232487(n+3)%A096355(n+2)`
-/

namespace A108722.P14628740802772897720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232487 (n + 3)) (A096355 (n + 2))

end

end A108722.P14628740802772897720

/-!
# A108723: Triangle read by rows: T(n,k) is number of permutations of [n] with ascending runs consisting of consecutive integers and having k fixed points.

The programs for A108723, there is no canonical definition to state claims against.
-/

/-! ## A108723.P1430844852303402590

`A357019(A369923(n+2))`
-/

namespace A108723.P1430844852303402590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357019 (A369923 (n + 2)).toNat

end

end A108723.P1430844852303402590

/-! ## A108723.P11189398955043245989

`A119270(A067176(n)+3)`
-/

namespace A108723.P11189398955043245989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119270 (A067176 n + 3).toNat

end

end A108723.P11189398955043245989

/-! ## A108723.P6498785054244006807

`val(A099721(A113088(n)), 3)`
-/

namespace A108723.P6498785054244006807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099721 (A113088 n).toNat).toNat 3

end

end A108723.P6498785054244006807

/-! ## A108723.P13931159613410449745

`A182882(xor(1, A128722(n)))`
-/

namespace A108723.P13931159613410449745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182882 (Int.xor 1 (A128722 n)).toNat

end

end A108723.P13931159613410449745

/-! ## A108723.P18001944070147746079

`A357645(xor(1, A327125(n)))`
-/

namespace A108723.P18001944070147746079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357645 (Int.xor 1 (A327125 n)).toNat

end

end A108723.P18001944070147746079

/-!
# A108724: Numbers n such that 11*n + 17 is prime.

The programs for A108724, the canonical program `A108724.P6681805313567510208` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108724 has offset 1).

The definition of A108724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108724.P6681805313567510208

`A108187(n+1)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108724

/-- `A108187(n+1)-2` -/
def P6681805313567510208.Spec : Prop :=
  ∀ n, P6681805313567510208.a n = A108724 (n + 1)

theorem P6681805313567510208.correct : P6681805313567510208.Spec := by
  intro n
  simp only [A108724, Nat.add_sub_cancel]

end A108724

/-! ## A108724.P10467507251834476535

`ceil(p?[a(n-1)+11]/11)-2` with `a(0)=6`
-/

namespace A108724.P10467507251834476535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌉ - 2

end

end A108724.P10467507251834476535

namespace A108724

/-- `ceil(p?[a(n-1)+11]/11)-2` -/
def P10467507251834476535.Spec : Prop :=
  ∀ n, P10467507251834476535.a n = A108724 (n + 1)

theorem P10467507251834476535.correct : P10467507251834476535.Spec := by
  intro n
  simp only [A108724, Nat.add_sub_cancel, A108724.P10467507251834476535.f1, A108724.P10467507251834476535.a, A108724.P6681805313567510208.a, A108187, A108187.P14643957964987040468.f1, A108187.P14643957964987040468.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108724

/-! ## A108724.P10263801072344682066

`round(p?[a(n-1)+11]/11)-2` with `a(0)=10, a(1)=6`
-/

namespace A108724.P10263801072344682066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 6] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11) - 2

end

end A108724.P10263801072344682066

namespace A108724

/-- `round(p?[a(n-1)+11]/11)-2` -/
def P10263801072344682066.Spec : Prop :=
  ∀ n, P10263801072344682066.a n = A108724 (n + 1)

end A108724

/-! ## A108724.P6879579108185737945

`A046666(A108187(n+1))`
-/

namespace A108724.P6879579108185737945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A108187 (n + 1)).toNat

end

end A108724.P6879579108185737945

namespace A108724

/-- `A046666(A108187(n+1))` -/
def P6879579108185737945.Spec : Prop :=
  ∀ n, P6879579108185737945.a n = A108724 (n + 1)

end A108724

/-! ## A108724.P12256919951093411112

`A023444(A108187(n+1))`
-/

namespace A108724.P12256919951093411112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A108187 (n + 1)).toNat

end

end A108724.P12256919951093411112

namespace A108724

/-- `A023444(A108187(n+1))` -/
def P12256919951093411112.Spec : Prop :=
  ∀ n, P12256919951093411112.a n = A108724 (n + 1)

end A108724

/-! ## A108724.P7219103808712887525

`lt[A001222(11*n+17), 2]`
-/

namespace A108724.P7219103808712887525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 17)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108724.P7219103808712887525

namespace A108724

/-- `lt[A001222(11*n+17), 2]` -/
def P7219103808712887525.Spec : Prop :=
  ∀ n, (P7219103808712887525.a n : ℤ) = A108724 (n + 1)

end A108724

/-! ## A108724.P7395334086194019777

`eq[1, A001222(11*(n+1)+6)]`
-/

namespace A108724.P7395334086194019777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * (n + 1) + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108724.P7395334086194019777

namespace A108724

/-- `eq[1, A001222(11*(n+1)+6)]` -/
def P7395334086194019777.Spec : Prop :=
  ∀ n, (P7395334086194019777.a n : ℤ) = A108724 (n + 1)

end A108724

/-! ## A108724.P14914478834251068720

`eq[2, A000005(11*(n+1)+6)]`
-/

namespace A108724.P14914478834251068720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * (n + 1) + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108724.P14914478834251068720

namespace A108724

/-- `eq[2, A000005(11*(n+1)+6)]` -/
def P14914478834251068720.Spec : Prop :=
  ∀ n, (P14914478834251068720.a n : ℤ) = A108724 (n + 1)

end A108724

/-! ## A108724.P5412237299657798002

`lt[n+1, A020639(11*(n+1)+6)]`
-/

namespace A108724.P5412237299657798002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (11 * (n + 1) + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A108724.P5412237299657798002

namespace A108724

/-- `lt[n+1, A020639(11*(n+1)+6)]` -/
def P5412237299657798002.Spec : Prop :=
  ∀ n, (P5412237299657798002.a n : ℤ) = A108724 (n + 1)

end A108724

/-! ## A108724.P692692409916291761

`eq[1, A001222(A017461(n))]-1`
-/

namespace A108724.P692692409916291761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017461 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A108724.P692692409916291761

namespace A108724

/-- `eq[1, A001222(A017461(n))]-1` -/
def P692692409916291761.Spec : Prop :=
  ∀ n, P692692409916291761.a n = A108724 (n + 1)

end A108724

/-! ## A108724.P5391426638964957014

`A194527(A141853(n+1)-2)`
-/

namespace A108724.P5391426638964957014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194527 (A141853 (n + 1) - 2).toNat

end

end A108724.P5391426638964957014

namespace A108724

/-- `A194527(A141853(n+1)-2)` -/
def P5391426638964957014.Spec : Prop :=
  ∀ n, P5391426638964957014.a n = A108724 (n + 1)

end A108724

/-! ## A108724.P4445696291633819527

`eq[1, A053989(A017473(n+1))]`
-/

namespace A108724.P4445696291633819527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A017473 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108724.P4445696291633819527

namespace A108724

/-- `eq[1, A053989(A017473(n+1))]` -/
def P4445696291633819527.Spec : Prop :=
  ∀ n, (P4445696291633819527.a n : ℤ) = A108724 (n + 1)

end A108724

/-! ## A108724.P2800236255716934291

`eq[1, A053989(A017473(n))]-1`
-/

namespace A108724.P2800236255716934291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A017473 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A108724.P2800236255716934291

namespace A108724

/-- `eq[1, A053989(A017473(n))]-1` -/
def P2800236255716934291.Spec : Prop :=
  ∀ n, P2800236255716934291.a n = A108724 (n + 1)

end A108724

/-!
# A108725: Numbers n such that 11*n + 19 is prime.

The programs for A108725, the canonical program `A108725.P6734013049562217687` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108725 has offset 1).

The definition of A108725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108725.P6734013049562217687

`A107992(1+n)-2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108725

/-- `A107992(1+n)-2` -/
def P6734013049562217687.Spec : Prop :=
  ∀ n, P6734013049562217687.a n = A108725 (n + 1)

theorem P6734013049562217687.correct : P6734013049562217687.Spec := by
  intro n
  simp only [A108725, Nat.add_sub_cancel]

end A108725

/-! ## A108725.P11104571899953931890

`floor(A141855(1+n)/11)-1`
-/

namespace A108725.P11104571899953931890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141855 (1 + n) : ℚ) / 11⌋ - 1

end

end A108725.P11104571899953931890

namespace A108725

/-- `floor(A141855(1+n)/11)-1` -/
def P11104571899953931890.Spec : Prop :=
  ∀ n, P11104571899953931890.a n = A108725 (n + 1)

end A108725

/-! ## A108725.P830414642428787164

`ceil(A141855(n+1)/11)-2`
-/

namespace A108725.P830414642428787164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141855 (n + 1) : ℚ) / 11⌉ - 2

end

end A108725.P830414642428787164

namespace A108725

/-- `ceil(A141855(n+1)/11)-2` -/
def P830414642428787164.Spec : Prop :=
  ∀ n, P830414642428787164.a n = A108725 (n + 1)

end A108725

/-! ## A108725.P14690789677748961674

`A328882(A020639(2*(n+1)))+A107992(n+1)`
-/

namespace A108725.P14690789677748961674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328882 (A020639 (2 * (n + 1))).toNat + A107992 (n + 1)

end

end A108725.P14690789677748961674

namespace A108725

/-- `A328882(A020639(2*(n+1)))+A107992(n+1)` -/
def P14690789677748961674.Spec : Prop :=
  ∀ n, P14690789677748961674.a n = A108725 (n + 1)

end A108725

/-! ## A108725.P4787989136784094760

`A046666(A107992(n+1))`
-/

namespace A108725.P4787989136784094760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A107992 (n + 1)).toNat

end

end A108725.P4787989136784094760

namespace A108725

/-- `A046666(A107992(n+1))` -/
def P4787989136784094760.Spec : Prop :=
  ∀ n, P4787989136784094760.a n = A108725 (n + 1)

end A108725

/-! ## A108725.P14044540926843124574

`A023444(A107992(n+1))`
-/

namespace A108725.P14044540926843124574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A107992 (n + 1)).toNat

end

end A108725.P14044540926843124574

namespace A108725

/-- `A023444(A107992(n+1))` -/
def P14044540926843124574.Spec : Prop :=
  ∀ n, P14044540926843124574.a n = A108725 (n + 1)

end A108725

/-! ## A108725.P8841468284446562690

`eq[1, A001222(11*(n+2)-3)]`
-/

namespace A108725.P8841468284446562690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * (n + 2) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108725.P8841468284446562690

namespace A108725

/-- `eq[1, A001222(11*(n+2)-3)]` -/
def P8841468284446562690.Spec : Prop :=
  ∀ n, (P8841468284446562690.a n : ℤ) = A108725 (n + 1)

end A108725

/-! ## A108725.P3666899319073222122

`eq[2, A000005(11*(n+2)-3)]`
-/

namespace A108725.P3666899319073222122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * (n + 2) - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108725.P3666899319073222122

namespace A108725

/-- `eq[2, A000005(11*(n+2)-3)]` -/
def P3666899319073222122.Spec : Prop :=
  ∀ n, (P3666899319073222122.a n : ℤ) = A108725 (n + 1)

end A108725

/-! ## A108725.P3986305809931036956

`lt[A001222(A016969(n+2)+A016873(n)), 2]`
-/

namespace A108725.P3986305809931036956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 (n + 2) + A016873 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108725.P3986305809931036956

namespace A108725

/-- `lt[A001222(A016969(n+2)+A016873(n)), 2]` -/
def P3986305809931036956.Spec : Prop :=
  ∀ n, (P3986305809931036956.a n : ℤ) = A108725 (n + 1)

end A108725

/-! ## A108725.P13529620595093024616

`lt[A000005(A016969(n+2)+A016873(n)), 3]`
-/

namespace A108725.P13529620595093024616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016969 (n + 2) + A016873 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108725.P13529620595093024616

namespace A108725

/-- `lt[A000005(A016969(n+2)+A016873(n)), 3]` -/
def P13529620595093024616.Spec : Prop :=
  ∀ n, (P13529620595093024616.a n : ℤ) = A108725 (n + 1)

end A108725

/-! ## A108725.P7420273334713861289

`lt[A001222(A016969(n+2)+A016885(n)-1), 2]`
-/

namespace A108725.P7420273334713861289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 (n + 2) + A016885 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108725.P7420273334713861289

namespace A108725

/-- `lt[A001222(A016969(n+2)+A016885(n)-1), 2]` -/
def P7420273334713861289.Spec : Prop :=
  ∀ n, (P7420273334713861289.a n : ℤ) = A108725 (n + 1)

end A108725

/-! ## A108725.P17875241633897165947

`record[n%A014963(11*n+19)]`
-/

namespace A108725.P17875241633897165947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (11 * n + 19))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108725.P17875241633897165947

namespace A108725

/-- `record[n%A014963(11*n+19)]` -/
def P17875241633897165947.Spec : Prop :=
  ∀ n, P17875241633897165947.a n = A108725 (n + 1)

end A108725

/-! ## A108725.P16217015909899960725

`A194521(A141855(n+1)+2)`
-/

namespace A108725.P16217015909899960725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194521 (A141855 (n + 1) + 2).toNat

end

end A108725.P16217015909899960725

namespace A108725

/-- `A194521(A141855(n+1)+2)` -/
def P16217015909899960725.Spec : Prop :=
  ∀ n, P16217015909899960725.a n = A108725 (n + 1)

end A108725

/-! ## A108725.P15836466156124328451

`eq[1, A003415(A017485(n+1))]`
-/

namespace A108725.P15836466156124328451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A017485 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108725.P15836466156124328451

namespace A108725

/-- `eq[1, A003415(A017485(n+1))]` -/
def P15836466156124328451.Spec : Prop :=
  ∀ n, (P15836466156124328451.a n : ℤ) = A108725 (n + 1)

end A108725

/-! ## A108725.P12132469982480320725

`eq[1, A003415(A017485(n))]-1`
-/

namespace A108725.P12132469982480320725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A017485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A108725.P12132469982480320725

namespace A108725

/-- `eq[1, A003415(A017485(n))]-1` -/
def P12132469982480320725.Spec : Prop :=
  ∀ n, P12132469982480320725.a n = A108725 (n + 1)

end A108725

/-!
# A108726: Numbers n such that 11*n + 29 is prime.

The programs for A108726, the canonical program `A108726.P17618332896624414764` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108726 has offset 1).

The definition of A108726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108726.P17618332896624414764

`A102711(n+2)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108726

/-- `A102711(n+2)-2` -/
def P17618332896624414764.Spec : Prop :=
  ∀ n, P17618332896624414764.a n = A108726 (n + 1)

theorem P17618332896624414764.correct : P17618332896624414764.Spec := by
  intro n
  simp only [A108726, Nat.add_sub_cancel]

end A108726

/-! ## A108726.P17654329720016214922

`A046666(A102711(n+2))`
-/

namespace A108726.P17654329720016214922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A102711 (n + 2)).toNat

end

end A108726.P17654329720016214922

namespace A108726

/-- `A046666(A102711(n+2))` -/
def P17654329720016214922.Spec : Prop :=
  ∀ n, P17654329720016214922.a n = A108726 (n + 1)

end A108726

/-! ## A108726.P15330237719560734601

`A023444(A102711(n+2))`
-/

namespace A108726.P15330237719560734601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A102711 (n + 2)).toNat

end

end A108726.P15330237719560734601

namespace A108726

/-- `A023444(A102711(n+2))` -/
def P15330237719560734601.Spec : Prop :=
  ∀ n, P15330237719560734601.a n = A108726 (n + 1)

end A108726

/-! ## A108726.P16550161484482903643

`eq[1, A001222(11*n+29)]`
-/

namespace A108726.P16550161484482903643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108726.P16550161484482903643

namespace A108726

/-- `eq[1, A001222(11*n+29)]` -/
def P16550161484482903643.Spec : Prop :=
  ∀ n, (P16550161484482903643.a n : ℤ) = A108726 (n + 1)

end A108726

/-! ## A108726.P4192407739817055129

`eq[2, A000005(11*n+29)]`
-/

namespace A108726.P4192407739817055129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108726.P4192407739817055129

namespace A108726

/-- `eq[2, A000005(11*n+29)]` -/
def P4192407739817055129.Spec : Prop :=
  ∀ n, (P4192407739817055129.a n : ℤ) = A108726 (n + 1)

end A108726

/-! ## A108726.P8813662047243345487

`lt[A001222(11*(n+1)+7), 2]-1`
-/

namespace A108726.P8813662047243345487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * (n + 1) + 7)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A108726.P8813662047243345487

namespace A108726

/-- `lt[A001222(11*(n+1)+7), 2]-1` -/
def P8813662047243345487.Spec : Prop :=
  ∀ n, P8813662047243345487.a n = A108726 (n + 1)

end A108726

/-! ## A108726.P14870468975693730115

`eq[A006530(A017473(n+1)), A017473(n+1)]-1`
-/

namespace A108726.P14870468975693730115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017473 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A108726.P14870468975693730115

namespace A108726

/-- `eq[A006530(A017473(n+1)), A017473(n+1)]-1` -/
def P14870468975693730115.Spec : Prop :=
  ∀ n, P14870468975693730115.a n = A108726 (n + 1)

end A108726

/-! ## A108726.P8181918908443663761

`A194524(A141854(n+2)-1)`
-/

namespace A108726.P8181918908443663761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194524 (A141854 (n + 2) - 1).toNat

end

end A108726.P8181918908443663761

namespace A108726

/-- `A194524(A141854(n+2)-1)` -/
def P8181918908443663761.Spec : Prop :=
  ∀ n, P8181918908443663761.a n = A108726 (n + 1)

end A108726

/-!
# A108727: Numbers n such that 11*n + 31 is prime.

The programs for A108727, the canonical program `A108727.P5195277566401287610` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108727 has offset 1).

The definition of A108727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108727.P5195277566401287610

`A107994(n+1)-3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108727

/-- `A107994(n+1)-3` -/
def P5195277566401287610.Spec : Prop :=
  ∀ n, P5195277566401287610.a n = A108727 (n + 1)

theorem P5195277566401287610.correct : P5195277566401287610.Spec := by
  intro n
  simp only [A108727, Nat.add_sub_cancel]

end A108727

/-! ## A108727.P8388589589573720237

`A107305(n+1)-4`
-/

namespace A108727.P8388589589573720237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107305 (n + 1) - 4

end

end A108727.P8388589589573720237

namespace A108727

/-- `A107305(n+1)-4` -/
def P8388589589573720237.Spec : Prop :=
  ∀ n, P8388589589573720237.a n = A108727 (n + 1)

end A108727

/-! ## A108727.P6481955879015109973

`(A141856(n+1)+2)/11-3`
-/

namespace A108727.P6481955879015109973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141856 (n + 1) + 2 : ℚ) / 11 - 3

end

end A108727.P6481955879015109973

namespace A108727

/-- `(A141856(n+1)+2)/11-3` -/
def P6481955879015109973.Spec : Prop :=
  ∀ n, P6481955879015109973.a n = (A108727 (n + 1) : ℚ)

end A108727

/-! ## A108727.P2604465196873106606

`A023445(A107994(n+1))`
-/

namespace A108727.P2604465196873106606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A107994 (n + 1)).toNat

end

end A108727.P2604465196873106606

namespace A108727

/-- `A023445(A107994(n+1))` -/
def P2604465196873106606.Spec : Prop :=
  ∀ n, P2604465196873106606.a n = A108727 (n + 1)

end A108727

/-! ## A108727.P15573221949551670291

`A023446(A107305(n+1))`
-/

namespace A108727.P15573221949551670291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A107305 (n + 1)).toNat

end

end A108727.P15573221949551670291

namespace A108727

/-- `A023446(A107305(n+1))` -/
def P15573221949551670291.Spec : Prop :=
  ∀ n, P15573221949551670291.a n = A108727 (n + 1)

end A108727

/-! ## A108727.P5301058386290457616

`eq[2, A000005(A017497(n))]-2`
-/

namespace A108727.P5301058386290457616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017497 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A108727.P5301058386290457616

namespace A108727

/-- `eq[2, A000005(A017497(n))]-2` -/
def P5301058386290457616.Spec : Prop :=
  ∀ n, P5301058386290457616.a n = A108727 (n + 1)

end A108727

/-! ## A108727.P13382170183407731825

`lt[A001222(A008592(n+2)+n), 2]-1`
-/

namespace A108727.P13382170183407731825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008592 (n + 2) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A108727.P13382170183407731825

namespace A108727

/-- `lt[A001222(A008592(n+2)+n), 2]-1` -/
def P13382170183407731825.Spec : Prop :=
  ∀ n, P13382170183407731825.a n = A108727 (n + 1)

end A108727

/-! ## A108727.P12088622847352335255

`lt[n+1, A020639(A008592(n+3)+n+1)]`
-/

namespace A108727.P12088622847352335255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008592 (n + 3) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A108727.P12088622847352335255

namespace A108727

/-- `lt[n+1, A020639(A008592(n+3)+n+1)]` -/
def P12088622847352335255.Spec : Prop :=
  ∀ n, (P12088622847352335255.a n : ℤ) = A108727 (n + 1)

end A108727

/-! ## A108727.P8286831643346690701

`eq[A000010(A017497(n)), A017485(n)]-2`
-/

namespace A108727.P8286831643346690701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017497 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 2

end

end A108727.P8286831643346690701

namespace A108727

/-- `eq[A000010(A017497(n)), A017485(n)]-2` -/
def P8286831643346690701.Spec : Prop :=
  ∀ n, P8286831643346690701.a n = A108727 (n + 1)

end A108727

/-! ## A108727.P4643640227693185266

`A000010(A141856(n+1))%A107994(n+1)`
-/

namespace A108727.P4643640227693185266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A141856 (n + 1)).toNat) (A107994 (n + 1))

end

end A108727.P4643640227693185266

namespace A108727

/-- `A000010(A141856(n+1))%A107994(n+1)` -/
def P4643640227693185266.Spec : Prop :=
  ∀ n, P4643640227693185266.a n = A108727 (n + 1)

end A108727

/-! ## A108727.P12837267062380992179

`lt[A001222(A168329(4*(n+2)+4)-2-n), 2]`
-/

namespace A108727.P12837267062380992179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A168329 (4 * (n + 2) + 4) - 2 - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108727.P12837267062380992179

namespace A108727

/-- `lt[A001222(A168329(4*(n+2)+4)-2-n), 2]` -/
def P12837267062380992179.Spec : Prop :=
  ∀ n, (P12837267062380992179.a n : ℤ) = A108727 (n + 1)

end A108727

/-! ## A108727.P7978922888696382153

`eq[2, A016008(11*(n+3)-2)]`
-/

namespace A108727.P7978922888696382153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016008 (11 * (n + 3) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108727.P7978922888696382153

namespace A108727

/-- `eq[2, A016008(11*(n+3)-2)]` -/
def P7978922888696382153.Spec : Prop :=
  ∀ n, (P7978922888696382153.a n : ℤ) = A108727 (n + 1)

end A108727

/-!
# A108728: Number of distinct prime divisors of concatenated even numbers.

The programs for A108728, there is no canonical definition to state claims against.
-/

/-! ## A108728.P12124013454246906602

`A209281(n+1)+A000002(A322785(n))`
-/

namespace A108728.P12124013454246906602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (n + 1) + A000002 (A322785 n).toNat

end

end A108728.P12124013454246906602

/-! ## A108728.P9976673113413038784

`A358218(A191652(n))+A273673(n+1)`
-/

namespace A108728.P9976673113413038784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358218 (A191652 n).toNat + A273673 (n + 1)

end

end A108728.P9976673113413038784

/-! ## A108728.P9927297403513090469

`A333632(A326842(2*n))+A124754(n)`
-/

namespace A108728.P9927297403513090469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A326842 (2 * n)).toNat + A124754 n

end

end A108728.P9927297403513090469

/-! ## A108728.P10201883708192866951

`A001222(A255072(3*n+2)+A149812(n))`
-/

namespace A108728.P10201883708192866951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A255072 (3 * n + 2) + A149812 n).toNat

end

end A108728.P10201883708192866951

/-!
# A108729: Numbers k that divide A076127(k); or k such that A076127(k) is a Niven number.

The programs for A108729, there is no canonical definition to state claims against.
-/

/-! ## A108729.P6245796733814419396

`record[A001748(2*(n+2))%A324209(n+5)]`
-/

namespace A108729.P6245796733814419396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001748 (2 * (n + 2))) (A324209 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108729.P6245796733814419396

/-!
# A108730: Triangle read by rows: row n gives the list of the number of zeros following each 1 in the binary representation of n.

The programs for A108730, there is no canonical definition to state claims against.
-/

/-! ## A108730.P12124488844617389018

`A066099(1+n)-1`
-/

namespace A108730.P12124488844617389018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (1 + n) - 1

end

end A108730.P12124488844617389018

/-! ## A108730.P5789466648705283870

`Δ[comp[A003607(n)]]-1`
-/

namespace A108730.P5789466648705283870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003607 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A108730.P5789466648705283870

/-! ## A108730.P5159547884056783891

`runs[∑[A319954(n)]]-1`
-/

namespace A108730.P5159547884056783891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A108730.P5159547884056783891

/-! ## A108730.P6820202001062598439

`Δ[A030303(n+1)]-1`
-/

namespace A108730.P6820202001062598439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A108730.P6820202001062598439

/-! ## A108730.P2753893957913098346

`runs[A054633(n+1)]-1`
-/

namespace A108730.P2753893957913098346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A108730.P2753893957913098346

/-! ## A108730.P4175114263161281020

`Δ[lt[0, A030190(n)]]-1`
-/

namespace A108730.P4175114263161281020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A108730.P4175114263161281020

/-! ## A108730.P15177513631659875074

`runs[∑[A030302(n+1)]]-1`
-/

namespace A108730.P15177513631659875074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A108730.P15177513631659875074

/-! ## A108730.P3919741193846339176

`runs[A030307(n+1)+n]-1`
-/

namespace A108730.P3919741193846339176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030307 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A108730.P3919741193846339176

/-! ## A108730.P14623272316406466161

`A335205(A066099(n+1))`
-/

namespace A108730.P14623272316406466161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335205 (A066099 (n + 1)).toNat

end

end A108730.P14623272316406466161

/-! ## A108730.P11121725540547695250

`A335523(Δ[eq[1, A030302(n+1)]])`
-/

namespace A108730.P11121725540547695250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A108730.P11121725540547695250

/-! ## A108730.P1332468062623915808

`A127229(n+5)%A066099(n+1)`
-/

namespace A108730.P1332468062623915808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A066099 (n + 1))

end

end A108730.P1332468062623915808

/-! ## A108730.P467997086468586134

`∑[A066099(n+1)]%A030303(n+1)`
-/

namespace A108730.P467997086468586134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A030303 (n + 1))

end

end A108730.P467997086468586134

/-! ## A108730.P5555409465170186090

`A200748(n)%A066099(n+1)`
-/

namespace A108730.P5555409465170186090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A066099 (n + 1))

end

end A108730.P5555409465170186090

/-! ## A108730.P13726241469340346992

`A058197(n+1)%A066099(n+1)`
-/

namespace A108730.P13726241469340346992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A066099 (n + 1))

end

end A108730.P13726241469340346992

/-! ## A108730.P13919332981812329422

`A083800(n+1)%A066099(n+1)`
-/

namespace A108730.P13919332981812329422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A066099 (n + 1))

end

end A108730.P13919332981812329422

/-! ## A108730.P16332289666126660933

`A070198(n)%A066099(n+1)`
-/

namespace A108730.P16332289666126660933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A066099 (n + 1))

end

end A108730.P16332289666126660933

/-! ## A108730.P1610125109364672890

`A079782(n+1)%A066099(n+1)`
-/

namespace A108730.P1610125109364672890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A066099 (n + 1))

end

end A108730.P1610125109364672890

/-! ## A108730.P17948032015254130483

`A083685(n+1)%A066099(n+1)`
-/

namespace A108730.P17948032015254130483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A066099 (n + 1))

end

end A108730.P17948032015254130483

/-! ## A108730.P12249132875828119062

`A121934(n+1)%A066099(n+1)`
-/

namespace A108730.P12249132875828119062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A066099 (n + 1))

end

end A108730.P12249132875828119062

/-! ## A108730.P6524231107572790105

`A030494(n+1)%A066099(n+1)`
-/

namespace A108730.P6524231107572790105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A066099 (n + 1))

end

end A108730.P6524231107572790105

/-!
# A108731: Triangle read by rows: row n gives digits of n in factorial base.

The programs for A108731, there is no canonical definition to state claims against.
-/

/-! ## A108731.P12298943572779898157

`A274641(A235168(n))%∑[A125781(n)]`
-/

namespace A108731.P12298943572779898157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274641 (A235168 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108731.P12298943572779898157

/-! ## A108731.P15603790207955387229

`A030103(A235168(n))%A333228(n+1)`
-/

namespace A108731.P15603790207955387229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030103 (A235168 n).toNat) (A333228 (n + 1))

end

end A108731.P15603790207955387229

/-! ## A108731.P9798361770466895763

`A274641(A235168(n))+A125781(n)%A153881(n+2)`
-/

namespace A108731.P9798361770466895763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (A235168 n).toNat + Int.tmod (A125781 n) (A153881 (n + 2))

end

end A108731.P9798361770466895763

/-! ## A108731.P8510099597676192164

`A274641(A235168(n)%A097292(n+1))`
-/

namespace A108731.P8510099597676192164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (Int.tmod (A235168 n) (A097292 (n + 1))).toNat

end

end A108731.P8510099597676192164

/-! ## A108731.P8615207913568892791

`A035517(A235168(n))%A143514(n+1)`
-/

namespace A108731.P8615207913568892791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035517 (A235168 n).toNat) (A143514 (n + 1))

end

end A108731.P8615207913568892791

/-! ## A108731.P9554374715264880735

`A112765(15^A235168(n))`
-/

namespace A108731.P9554374715264880735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (SequenceMachineLib.roundAway ((15 : ℚ) ^ (A235168 n : ℤ))).toNat

end

end A108731.P9554374715264880735

/-! ## A108731.P10172273085710542988

`A196563(16^A235168(n))`
-/

namespace A108731.P10172273085710542988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (SequenceMachineLib.roundAway ((16 : ℚ) ^ (A235168 n : ℤ))).toNat

end

end A108731.P10172273085710542988

/-! ## A108731.P18438522750451002120

`A051903(19^A235168(n))`
-/

namespace A108731.P18438522750451002120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A235168 n : ℤ))).toNat

end

end A108731.P18438522750451002120

/-! ## A108731.P13214382979780896169

`A001222(23^A235168(n))`
-/

namespace A108731.P13214382979780896169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((23 : ℚ) ^ (A235168 n : ℤ))).toNat

end

end A108731.P13214382979780896169

/-! ## A108731.P7220927914298914452

`and(A235168(n), A244323(n-A235168(n)))`
-/

namespace A108731.P7220927914298914452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A235168 n) (A244323 ((n : ℤ) - A235168 n).toNat)

end

end A108731.P7220927914298914452

/-!
# A108732: a(0)=22; if n odd, a(n) = a(n-1)/2, otherwise a(n) = 4*a(n-1).

The programs for A108732, the canonical program `A108732.P14442113377196548861` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108732 has offset 0).

The definition of A108732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108732.P14442113377196548861

`2*a(n-2)` with `a(0)=22, a(1)=11`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108732

/-- `2*a(n-2)` -/
def P14442113377196548861.Spec : Prop :=
  ∀ n, (P14442113377196548861.a n : ℤ) = A108732 n

theorem P14442113377196548861.correct : P14442113377196548861.Spec := by
  intro n
  simp only [A108732]

end A108732

/-! ## A108732.P9583054996787580256

`11*2^A028242(n)`
-/

namespace A108732.P9583054996787580256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  11 * (2 : ℚ) ^ (A028242 n : ℤ)

end

end A108732.P9583054996787580256

namespace A108732

/-- `11*2^A028242(n)` -/
def P9583054996787580256.Spec : Prop :=
  ∀ n, P9583054996787580256.a n = (A108732 n : ℚ)

end A108732

/-! ## A108732.P14584799452856153713

`ogf((22+11x)/(1-2x^2))`
-/

namespace A108732.P14584799452856153713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [22, 11] [1, 0, -2] n

end

end A108732.P14584799452856153713

namespace A108732

/-- `ogf((22+11x)/(1-2x^2))` -/
def P14584799452856153713.Spec : Prop :=
  ∀ n, P14584799452856153713.a n = A108732 n

end A108732

/-! ## A108732.P7480613654310302387

`a(n-2)+a(n-2)` with `a(0)=22, a(1)=11`
-/

namespace A108732.P7480613654310302387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22, 11] fun n a =>
  a (n - 2) + a (n - 2)

end

end A108732.P7480613654310302387

namespace A108732

/-- `a(n-2)+a(n-2)` -/
def P7480613654310302387.Spec : Prop :=
  ∀ n, (P7480613654310302387.a n : ℤ) = A108732 n

theorem P7480613654310302387.correct : P7480613654310302387.Spec := by
  intro n
  simp only [A108732, Nat.add_sub_cancel, A108732.P7480613654310302387.a, A108732.P14442113377196548861.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A108732

/-! ## A108732.P9502475865632549514

`11*A135530(n)`
-/

namespace A108732.P9502475865632549514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A135530 n

end

end A108732.P9502475865632549514

namespace A108732

/-- `11*A135530(n)` -/
def P9502475865632549514.Spec : Prop :=
  ∀ n, P9502475865632549514.a n = A108732 n

end A108732

/-! ## A108732.P2757787227823184492

`A005015(ceil(xor(1, n)/2))`
-/

namespace A108732.P2757787227823184492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

end

end A108732.P2757787227823184492

namespace A108732

/-- `A005015(ceil(xor(1, n)/2))` -/
def P2757787227823184492.Spec : Prop :=
  ∀ n, P2757787227823184492.a n = A108732 n

end A108732

/-! ## A108732.P8407345399491483454

`lcm(11, Δ[A117575(n+1)])`
-/

namespace A108732.P8407345399491483454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (f1 (n + 1) - f1 n)

end

end A108732.P8407345399491483454

namespace A108732

/-- `lcm(11, Δ[A117575(n+1)])` -/
def P8407345399491483454.Spec : Prop :=
  ∀ n, (P8407345399491483454.a n : ℤ) = A108732 n

end A108732

/-! ## A108732.P15814502452924809505

`11*A000079(round(xor(1, n)/2))`
-/

namespace A108732.P15814502452924809505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A000079 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat

end

end A108732.P15814502452924809505

namespace A108732

/-- `11*A000079(round(xor(1, n)/2))` -/
def P15814502452924809505.Spec : Prop :=
  ∀ n, P15814502452924809505.a n = A108732 n

end A108732

/-! ## A108732.P12880467829198136606

`(13/2-1)*A143095(n+1)`
-/

namespace A108732.P12880467829198136606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 : ℚ) / 2 - 1) * (A143095 (n + 1) : ℚ)

end

end A108732.P12880467829198136606

namespace A108732

/-- `(13/2-1)*A143095(n+1)` -/
def P12880467829198136606.Spec : Prop :=
  ∀ n, P12880467829198136606.a n = (A108732 n : ℚ)

end A108732

/-! ## A108732.P15819673914104715477

`A005015(A028242(n))`
-/

namespace A108732.P15819673914104715477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A028242 n).toNat

end

end A108732.P15819673914104715477

namespace A108732

/-- `A005015(A028242(n))` -/
def P15819673914104715477.Spec : Prop :=
  ∀ n, P15819673914104715477.a n = A108732 n

end A108732

/-! ## A108732.P11503199244989314496

`A005015(A110658(4*n))`
-/

namespace A108732.P11503199244989314496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A110658 (4 * n)).toNat

end

end A108732.P11503199244989314496

namespace A108732

/-- `A005015(A110658(4*n))` -/
def P11503199244989314496.Spec : Prop :=
  ∀ n, P11503199244989314496.a n = A108732 n

end A108732

/-! ## A108732.P11025771254509139604

`lcm(A040111(n), A135530(n))`
-/

namespace A108732.P11025771254509139604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040111 n) (A135530 n)

end

end A108732.P11025771254509139604

namespace A108732

/-- `lcm(A040111(n), A135530(n))` -/
def P11025771254509139604.Spec : Prop :=
  ∀ n, (P11025771254509139604.a n : ℤ) = A108732 n

end A108732

/-! ## A108732.P2183388554517749011

`A005015(A030451(n+1)-1)`
-/

namespace A108732.P2183388554517749011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A030451 (n + 1) - 1).toNat

end

end A108732.P2183388554517749011

namespace A108732

/-- `A005015(A030451(n+1)-1)` -/
def P2183388554517749011.Spec : Prop :=
  ∀ n, P2183388554517749011.a n = A108732 n

end A108732

/-! ## A108732.P14323419859662708784

`A005015(A110657(2*n+1))`
-/

namespace A108732.P14323419859662708784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A110657 (2 * n + 1)).toNat

end

end A108732.P14323419859662708784

namespace A108732

/-- `A005015(A110657(2*n+1))` -/
def P14323419859662708784.Spec : Prop :=
  ∀ n, P14323419859662708784.a n = A108732 n

end A108732

/-! ## A108732.P11800925482850506032

`A005015(A168232(n+1)/2)`
-/

namespace A108732.P11800925482850506032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (SequenceMachineLib.roundAway ((A168232 (n + 1) : ℚ) / 2)).toNat

end

end A108732.P11800925482850506032

namespace A108732

/-- `A005015(A168232(n+1)/2)` -/
def P11800925482850506032.Spec : Prop :=
  ∀ n, P11800925482850506032.a n = A108732 n

end A108732

/-! ## A108732.P3616057451447307074

`A005015(A262672(2*n)-2)`
-/

namespace A108732.P3616057451447307074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A262672 (2 * n) - 2).toNat

end

end A108732.P3616057451447307074

namespace A108732

/-- `A005015(A262672(2*n)-2)` -/
def P3616057451447307074.Spec : Prop :=
  ∀ n, P3616057451447307074.a n = A108732 n

end A108732

/-! ## A108732.P4333993648635477523

`A005015(1-(A030451(n)-n))`
-/

namespace A108732.P4333993648635477523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (1 - (A030451 n - (n : ℤ))).toNat

end

end A108732.P4333993648635477523

namespace A108732

/-- `A005015(1-(A030451(n)-n))` -/
def P4333993648635477523.Spec : Prop :=
  ∀ n, P4333993648635477523.a n = A108732 n

end A108732

/-! ## A108732.P561645909143715235

`A147675(n+3)+A135530(n)`
-/

namespace A108732.P561645909143715235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147675 (n + 3) + A135530 n

end

end A108732.P561645909143715235

namespace A108732

/-- `A147675(n+3)+A135530(n)` -/
def P561645909143715235.Spec : Prop :=
  ∀ n, P561645909143715235.a n = A108732 n

end A108732

/-! ## A108732.P2673679140406219485

`A005015(A008619(n)-and(1, n))`
-/

namespace A108732.P2673679140406219485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 (A008619 n - (Nat.land 1 n : ℤ)).toNat

end

end A108732.P2673679140406219485

namespace A108732

/-- `A005015(A008619(n)-and(1, n))` -/
def P2673679140406219485.Spec : Prop :=
  ∀ n, P2673679140406219485.a n = A108732 n

end A108732

/-! ## A108732.P2460278649498850298

`A147675(n+3)+A076736(n+4)`
-/

namespace A108732.P2460278649498850298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147675 (n + 3) + A076736 (n + 4)

end

end A108732.P2460278649498850298

namespace A108732

/-- `A147675(n+3)+A076736(n+4)` -/
def P2460278649498850298.Spec : Prop :=
  ∀ n, P2460278649498850298.a n = A108732 n

end A108732

/-!
# A108733: Expansion of (1+18*x)^(1/3).

The programs for A108733, there is no canonical definition to state claims against.
-/

/-! ## A108733.P5123504331501931610

`(24/n-18)*a(n-1)` with `a(0)=1`
-/

namespace A108733.P5123504331501931610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (24 / (n : ℚ) - 18) * a (n - 1)

end

end A108733.P5123504331501931610

/-! ## A108733.P14604428162144516290

`(-2)^n*A004990(n)`
-/

namespace A108733.P14604428162144516290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A004990 n

end

end A108733.P14604428162144516290

/-! ## A108733.P16649575926746340852

`A004990(n)*A122803(n)`
-/

namespace A108733.P16649575926746340852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004990 n * A122803 n

end

end A108733.P16649575926746340852

/-! ## A108733.P2697464109130191328

`A004990(n)*A077966(2*n)`
-/

namespace A108733.P2697464109130191328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004990 n * A077966 (2 * n)

end

end A108733.P2697464109130191328

/-! ## A108733.P16480534396455105753

`A004988(n)/(1-3*n)*A122803(n)`
-/

namespace A108733.P16480534396455105753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004988 n : ℚ) / (1 - (3 * n : ℤ) : ℚ) * (A122803 n : ℚ)

end

end A108733.P16480534396455105753

/-! ## A108733.P836782893032179464

`A004988(n)/(1-3*n)*A077966(A005843(n))`
-/

namespace A108733.P836782893032179464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004988 n : ℚ) / (1 - (3 * n : ℤ) : ℚ) * (A077966 (A005843 n).toNat : ℚ)

end

end A108733.P836782893032179464

/-!
# A108734: Expansion of (1 + 24*x)^(1/2).

The programs for A108734, the canonical program `A108734.P14432421809285158341` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108734 has offset 0).

The definition of A108734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108734.P14432421809285158341

`2^n*A108735(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108734

/-- `2^n*A108735(n)` -/
def P14432421809285158341.Spec : Prop :=
  ∀ n, P14432421809285158341.a n = A108734 n

theorem P14432421809285158341.correct : P14432421809285158341.Spec := by
  intro n
  simp only [A108734]

end A108734

/-! ## A108734.P4708405720295551594

`(18/n-12)*2*a(n-1)` with `a(0)=1`
-/

namespace A108734.P4708405720295551594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (18 / (n : ℚ) - 12) * (2 * a (n - 1))

end

end A108734.P4708405720295551594

namespace A108734

/-- `(18/n-12)*2*a(n-1)` -/
def P4708405720295551594.Spec : Prop :=
  ∀ n, P4708405720295551594.a n = (A108734 n : ℚ)

end A108734

/-! ## A108734.P4708745290308858584

`(-6)^n*A002420(n)`
-/

namespace A108734.P4708745290308858584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-6) ^ n * A002420 n

end

end A108734.P4708745290308858584

namespace A108734

/-- `(-6)^n*A002420(n)` -/
def P4708745290308858584.Spec : Prop :=
  ∀ n, P4708745290308858584.a n = A108734 n

end A108734

/-! ## A108734.P15258235316190335925

`6^n*A104624(2*n)`
-/

namespace A108734.P15258235316190335925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A104624 (2 * n)

end

end A108734.P15258235316190335925

namespace A108734

/-- `6^n*A104624(2*n)` -/
def P15258235316190335925.Spec : Prop :=
  ∀ n, P15258235316190335925.a n = A108734 n

end A108734

/-! ## A108734.P9772856853503005804

`6^n*A182122(2*n)`
-/

namespace A108734.P9772856853503005804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A182122 (2 * n)

end

end A108734.P9772856853503005804

namespace A108734

/-- `6^n*A182122(2*n)` -/
def P9772856853503005804.Spec : Prop :=
  ∀ n, P9772856853503005804.a n = A108734 n

end A108734

/-! ## A108734.P11107713534402254760

`A098579(n)*A128019(2*n)`
-/

namespace A108734.P11107713534402254760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098579 n * A128019 (2 * n)

end

end A108734.P11107713534402254760

namespace A108734

/-- `A098579(n)*A128019(2*n)` -/
def P11107713534402254760.Spec : Prop :=
  ∀ n, P11107713534402254760.a n = A108734 n

end A108734

/-! ## A108734.P1638635409523477512

`A108735(n)+A000225(n)*A108735(n)`
-/

namespace A108734.P1638635409523477512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108735 n + A000225 n * A108735 n

end

end A108734.P1638635409523477512

namespace A108734

/-- `A108735(n)+A000225(n)*A108735(n)` -/
def P1638635409523477512.Spec : Prop :=
  ∀ n, P1638635409523477512.a n = A108734 n

theorem P1638635409523477512.correct : P1638635409523477512.Spec := by
  intro n
  simp only [A108734, Nat.add_sub_cancel, A108734.P1638635409523477512.a, A108734.P14432421809285158341.a, A000225, A000225.P6535533121115206393.a, A108735, A108735.P12359107775703013823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108734

/-!
# A108735: Expansion of sqrt(1 + 12*x).

The programs for A108735, the canonical program `A108735.P12359107775703013823` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108735 has offset 0).

The definition of A108735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108735.P12359107775703013823

`(18/n-12)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108735

/-- `(18/n-12)*a(n-1)` -/
def P12359107775703013823.Spec : Prop :=
  ∀ n, P12359107775703013823.a n = (A108735 n : ℚ)

end A108735

/-! ## A108735.P759521005352077798

`3^n*A104624(2*n)`
-/

namespace A108735.P759521005352077798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A104624 (2 * n)

end

end A108735.P759521005352077798

namespace A108735

/-- `3^n*A104624(2*n)` -/
def P759521005352077798.Spec : Prop :=
  ∀ n, P759521005352077798.a n = A108735 n

end A108735

/-! ## A108735.P3675604685989526057

`A002420(n)*A352779(n)`
-/

namespace A108735.P3675604685989526057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A352779 n

end

end A108735.P3675604685989526057

namespace A108735

/-- `A002420(n)*A352779(n)` -/
def P3675604685989526057.Spec : Prop :=
  ∀ n, P3675604685989526057.a n = A108735 n

end A108735

/-! ## A108735.P5569937453813785515

`Δ[A014983(n)]*A002420(n)`
-/

namespace A108735.P5569937453813785515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002420 n

end

end A108735.P5569937453813785515

namespace A108735

/-- `Δ[A014983(n)]*A002420(n)` -/
def P5569937453813785515.Spec : Prop :=
  ∀ n, P5569937453813785515.a n = A108735 n

end A108735

/-! ## A108735.P4368859755001706539

`Δ[A084222(n)]*A002420(n)`
-/

namespace A108735.P4368859755001706539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002420 n

end

end A108735.P4368859755001706539

namespace A108735

/-- `Δ[A084222(n)]*A002420(n)` -/
def P4368859755001706539.Spec : Prop :=
  ∀ n, P4368859755001706539.a n = A108735 n

end A108735

/-!
# A108736: Start with S = {}. For m = 1, 2, 3, ... in turn, examine all 2^m m-bit strings u in arithmetic order. If u is not a substring of S, append the minimal number of 0's and 1's to S to remedy this. Sequence gives S.

The programs for A108736, there is no canonical definition to state claims against.
-/

/-! ## A108736.P6574389216318122705

`A328101(A328100(n+2)+A029470(3*(n+1)))`
-/

namespace A108736.P6574389216318122705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328101 (A328100 (n + 2) + A029470 (3 * (n + 1))).toNat

end

end A108736.P6574389216318122705

/-! ## A108736.P16371533931687911561

`A253050(A121373(n)+A004913(n+5))`
-/

namespace A108736.P16371533931687911561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253050 (A121373 n + A004913 (n + 5)).toNat

end

end A108736.P16371533931687911561

/-! ## A108736.P1865514218181923048

`A188014(A217089(n+1)+A059455(n+1))`
-/

namespace A108736.P1865514218181923048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A217089 (n + 1) + A059455 (n + 1)).toNat

end

end A108736.P1865514218181923048

/-! ## A108736.P6402857955508805840

`A304042(A001248(n+1))%A318318(A022544(n+1))²`
-/

namespace A108736.P6402857955508805840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304042 (A001248 (n + 1)).toNat) (A318318 (A022544 (n + 1)).toNat ^ 2)

end

end A108736.P6402857955508805840

/-! ## A108736.P18359388849788917267

`A010059(gcd(A165017(n+1), A359710(3*n+5)))`
-/

namespace A108736.P18359388849788917267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.gcd (A165017 (n + 1)) (A359710 (3 * n + 5)))

end

end A108736.P18359388849788917267

/-!
# A108737: Start with S = {}. For m = 0, 1, 2, 3, ... let u be the binary expansion of m. If u is not a substring of S, append the minimal number of 0's and 1's to S to remedy this. Sequence gives S.

The programs for A108737, there is no canonical definition to state claims against.
-/

/-! ## A108737.P13407943801594678064

`A322389(A056239(A327101(2*(n+1)))-1)`
-/

namespace A108737.P13407943801594678064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A056239 (A327101 (2 * (n + 1))).toNat - 1).toNat

end

end A108737.P13407943801594678064

/-! ## A108737.P7114091008853306231

`A296212(record[A110657(A112055(n+1))])`
-/

namespace A108737.P7114091008853306231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A112055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296212 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108737.P7114091008853306231

/-! ## A108737.P4470262558724260594

`A267050(A243357(n+1)*A299472(n+1))`
-/

namespace A108737.P4470262558724260594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267050 (A243357 (n + 1) * A299472 (n + 1)).toNat

end

end A108737.P4470262558724260594

/-! ## A108737.P471915566028935539

`A288741(A217434(∑[27*n+89]))`
-/

namespace A108737.P471915566028935539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 89

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288741 (A217434 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A108737.P471915566028935539

/-! ## A108737.P6395208200463606744

`A030302(A163659(n+1)+A085483(n+1))`
-/

namespace A108737.P6395208200463606744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (A163659 (n + 1) + A085483 (n + 1)).toNat

end

end A108737.P6395208200463606744

/-!
# A108738: a(n) = n/(smallest odd prime divisor of n), if any.

The programs for A108738, there is no canonical definition to state claims against.
-/

/-! ## A108738.P6258387516833188478

`(n+1)/A078701(n+1)`
-/

namespace A108738.P6258387516833188478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A078701 (n + 1) : ℚ)

end

end A108738.P6258387516833188478

/-! ## A108738.P18425740528726750996

`gcd(1+n, A108514(n+1))`
-/

namespace A108738.P18425740528726750996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 + n : ℤ) (A108514 (n + 1))

end

end A108738.P18425740528726750996

/-! ## A108738.P14175237726852303218

`(n+1)/A020639((n+1)/2^val(n+1, 2))`
-/

namespace A108738.P14175237726852303218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ)

end

end A108738.P14175237726852303218

/-! ## A108738.P3288092452780834891

`(n+1)/A020639((n+1)/(or(n, n+1)-n))`
-/

namespace A108738.P3288092452780834891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat : ℚ)

end

end A108738.P3288092452780834891

/-! ## A108738.P14392825518776714519

`(n+1)/A020639((n+1)/xor(n, or(n, n+1)))`
-/

namespace A108738.P14392825518776714519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat : ℚ)

end

end A108738.P14392825518776714519

/-! ## A108738.P8158221985930147379

`(n+1)/A020639((n+1)/and(n+1, -(n+1)))`
-/

namespace A108738.P8158221985930147379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

end

end A108738.P8158221985930147379

/-! ## A108738.P12324712094695924797

`(n+1)/A020639((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A108738.P12324712094695924797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat : ℚ)

end

end A108738.P12324712094695924797

/-! ## A108738.P8785862575432914007

`(n+1)/A020639(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A108738.P8785862575432914007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat : ℚ)

end

end A108738.P8785862575432914007

/-! ## A108738.P16820991882476814691

`(n+1)/A020639(A000265(n+1))`
-/

namespace A108738.P16820991882476814691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A000265 (n + 1)).toNat : ℚ)

end

end A108738.P16820991882476814691

/-! ## A108738.P3942410994719675598

`(n+1)/A090368(A003602(n+1))`
-/

namespace A108738.P3942410994719675598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A090368 (A003602 (n + 1)).toNat : ℚ)

end

end A108738.P3942410994719675598

/-! ## A108738.P13537089940668457803

`(n+1)/A020639(A153733(n)+1)`
-/

namespace A108738.P13537089940668457803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A153733 n + 1).toNat : ℚ)

end

end A108738.P13537089940668457803

/-! ## A108738.P14544086405304419412

`(n+1)/A020639(A204455(n+1))`
-/

namespace A108738.P14544086405304419412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A204455 (n + 1)).toNat : ℚ)

end

end A108738.P14544086405304419412

/-! ## A108738.P2644207428376743953

`(n+1)/A006530(A336650(n+1))`
-/

namespace A108738.P2644207428376743953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (A336650 (n + 1)).toNat : ℚ)

end

end A108738.P2644207428376743953

/-! ## A108738.P4617272055990918927

`(n+1)/A020639((n+1)/A006519(n+1))`
-/

namespace A108738.P4617272055990918927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat : ℚ)

end

end A108738.P4617272055990918927

/-! ## A108738.P17802757642264333140

`A006519(n+1)*A032742((n+1)/2^val(n+1, 2))`
-/

namespace A108738.P17802757642264333140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A108738.P17802757642264333140

/-! ## A108738.P5008149210323541283

`(n+1)/A020639((n+1)/A000010(xor(n, n+1)+1))`
-/

namespace A108738.P5008149210323541283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000010 (Nat.xor n (n + 1) + 1) : ℚ))).toNat : ℚ)

end

end A108738.P5008149210323541283

/-! ## A108738.P28875753217282627

`A006519(n+1)*A093803(A000265(n+1))`
-/

namespace A108738.P28875753217282627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A093803 (A000265 (n + 1)).toNat

end

end A108738.P28875753217282627

/-! ## A108738.P17519992338565249083

`(n+1)/A020639(A003961(A064989(n+1)))`
-/

namespace A108738.P17519992338565249083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (A003961 (A064989 (n + 1)).toNat).toNat : ℚ)

end

end A108738.P17519992338565249083

/-! ## A108738.P5306137104140960291

`(n+1)/A003961(A020639(A268674(n+1)))`
-/

namespace A108738.P5306137104140960291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003961 (A020639 (A268674 (n + 1)).toNat).toNat : ℚ)

end

end A108738.P5306137104140960291

/-! ## A108738.P4251147313014028

`(n+1)/A250469(A020639(A250470(n+1)))`
-/

namespace A108738.P4251147313014028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A250469 (A020639 (A250470 (n + 1)).toNat).toNat : ℚ)

end

end A108738.P4251147313014028

/-!
# A108741: Member r=100 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A108741, the canonical program `A108741.P11066247329875612269` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108741 has offset 0).

The definition of A108741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108741.P17921138477957022309

`ogf((x+x^2)/(1-99x+99x^2-x^3))`
-/

namespace A108741.P17921138477957022309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -99, 99, -1] n

end

end A108741.P17921138477957022309

namespace A108741

/-- `ogf((x+x^2)/(1-99x+99x^2-x^3))` -/
def P17921138477957022309.Spec : Prop :=
  ∀ n, P17921138477957022309.a n = A108741 n

end A108741

/-! ## A108741.P11066247329875612269

`98*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108741

/-- `98*a(n-1)-a(n-2)+2` -/
def P11066247329875612269.Spec : Prop :=
  ∀ n, P11066247329875612269.a n = A108741 n

theorem P11066247329875612269.correct : P11066247329875612269.Spec := by
  intro n
  simp only [A108741]

end A108741

/-! ## A108741.P1553051897689520385

`A004189(n)²`
-/

namespace A108741.P1553051897689520385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n ^ 2

end

end A108741.P1553051897689520385

namespace A108741

/-- `A004189(n)²` -/
def P1553051897689520385.Spec : Prop :=
  ∀ n, P1553051897689520385.a n = A108741 n

end A108741

/-! ## A108741.P17672485620671953773

`((49+20*sqrt(6))^n+(49-20*sqrt(6))^n-2)/96`
-/

namespace A108741.P17672485620671953773
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((49 + 20 * Real.sqrt (6 : ℝ)) ^ n + (49 - 20 * Real.sqrt (6 : ℝ)) ^ n - 2) / 96

end

end A108741.P17672485620671953773

namespace A108741

/-- `((49+20*sqrt(6))^n+(49-20*sqrt(6))^n-2)/96` -/
def P17672485620671953773.Spec : Prop :=
  ∀ n, P17672485620671953773.a n = (A108741 n : ℝ)

theorem P17672485620671953773.correct : P17672485620671953773.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A108741, Nat.add_sub_cancel, A108741.P17672485620671953773.a, A108741.P11066247329875612269.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A108741, Nat.add_sub_cancel, A108741.P17672485620671953773.a, A108741.P11066247329875612269.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A108741

/-! ## A108741.P3863858019301681154

`(a(n-1)-1)²/a(n-2)` with `a(0)=0, a(1)=1, a(2)=100`
-/

namespace A108741.P3863858019301681154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 100] fun n a =>
  (a (n - 1) - 1) ^ 2 / a (n - 2)

end

end A108741.P3863858019301681154

namespace A108741

/-- `(a(n-1)-1)²/a(n-2)` -/
def P3863858019301681154.Spec : Prop :=
  ∀ n, P3863858019301681154.a n = (A108741 n : ℚ)

end A108741

/-! ## A108741.P14756214601324129877

`∑[10*a(n-1)-a(n-2)]²` with `a(0)=0, a(1)=1, a(2)=9`
-/

namespace A108741.P14756214601324129877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 9] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A108741.P14756214601324129877

namespace A108741

/-- `∑[10*a(n-1)-a(n-2)]²` -/
def P14756214601324129877.Spec : Prop :=
  ∀ n, P14756214601324129877.a n = A108741 n

end A108741

/-! ## A108741.P7779431447479661391

`(A001078(n)/2)²`
-/

namespace A108741.P7779431447479661391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001078 n : ℚ) / 2) ^ 2

end

end A108741.P7779431447479661391

namespace A108741

/-- `(A001078(n)/2)²` -/
def P7779431447479661391.Spec : Prop :=
  ∀ n, P7779431447479661391.a n = (A108741 n : ℚ)

end A108741

/-! ## A108741.P8816132758297345268

`(A122652(n)/4)²`
-/

namespace A108741.P8816132758297345268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A122652 n : ℚ) / 4) ^ 2

end

end A108741.P8816132758297345268

namespace A108741

/-- `(A122652(n)/4)²` -/
def P8816132758297345268.Spec : Prop :=
  ∀ n, P8816132758297345268.a n = (A108741 n : ℚ)

end A108741

/-! ## A108741.P16216594527144797268

`(A122653(n)/6)²`
-/

namespace A108741.P16216594527144797268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A122653 n : ℚ) / 6) ^ 2

end

end A108741.P16216594527144797268

namespace A108741

/-- `(A122653(n)/6)²` -/
def P16216594527144797268.Spec : Prop :=
  ∀ n, P16216594527144797268.a n = (A108741 n : ℚ)

end A108741

/-! ## A108741.P8114544939962170735

`(1-∑[A072256(n)])²`
-/

namespace A108741.P8114544939962170735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A108741.P8114544939962170735

namespace A108741

/-- `(1-∑[A072256(n)])²` -/
def P8114544939962170735.Spec : Prop :=
  ∀ n, P8114544939962170735.a n = A108741 n

end A108741

/-!
# A108742: Row sums of a triangle related to the Jacobsthal polynomials.

The programs for A108742, the canonical program `A108742.P1754464594956044007` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108742 has offset 0).

The definition of A108742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108742.P7621505891907896993

`ogf((1+x-x^2)/(1-x-2x^2+x^4))`
-/

namespace A108742.P7621505891907896993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -1, -2, 0, 1] n

end

end A108742.P7621505891907896993

namespace A108742

/-- `ogf((1+x-x^2)/(1-x-2x^2+x^4))` -/
def P7621505891907896993.Spec : Prop :=
  ∀ n, P7621505891907896993.a n = A108742 n

end A108742

/-! ## A108742.P1754464594956044007

`a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108742

/-- `a(n-1)+2*a(n-2)-a(n-4)` -/
def P1754464594956044007.Spec : Prop :=
  ∀ n, P1754464594956044007.a n = A108742 n

theorem P1754464594956044007.correct : P1754464594956044007.Spec := by
  intro n
  simp only [A108742]

end A108742

/-! ## A108742.P12817396323728782495

`∑{#}[n, C(floor((n+#+1)/2)+#, floor((n+#)/2)-#)]`
-/

namespace A108742.P12817396323728782495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (⌊(n + k + 1 : ℚ) / 2⌋ + (k : ℤ)).toNat (⌊(n + k : ℚ) / 2⌋ - (k : ℤ)).toNat

end

end A108742.P12817396323728782495

namespace A108742

/-- `∑{#}[n, C(floor((n+#+1)/2)+#, floor((n+#)/2)-#)]` -/
def P12817396323728782495.Spec : Prop :=
  ∀ n, (P12817396323728782495.a n : ℤ) = A108742 n

end A108742

/-! ## A108742.P18146630489711449714

`A122789(2*n+5)`
-/

namespace A108742.P18146630489711449714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (2 * n + 5)

end

end A108742.P18146630489711449714

namespace A108742

/-- `A122789(2*n+5)` -/
def P18146630489711449714.Spec : Prop :=
  ∀ n, P18146630489711449714.a n = A108742 n

end A108742

/-! ## A108742.P8529817887950353287

`A052535(n)+A003269(2*n)`
-/

namespace A108742.P8529817887950353287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 n + A003269 (2 * n)

end

end A108742.P8529817887950353287

namespace A108742

/-- `A052535(n)+A003269(2*n)` -/
def P8529817887950353287.Spec : Prop :=
  ∀ n, P8529817887950353287.a n = A108742 n

end A108742

/-! ## A108742.P3591351632700024871

`A052969(abs(1-n))+∑[A052969(n)]`
-/

namespace A108742.P3591351632700024871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052969 |1 - (n : ℤ)|.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108742.P3591351632700024871

namespace A108742

/-- `A052969(abs(1-n))+∑[A052969(n)]` -/
def P3591351632700024871.Spec : Prop :=
  ∀ n, P3591351632700024871.a n = A108742 n

end A108742

/-! ## A108742.P9770441017123088210

`A003269(2*n+1)+A003269(2*n)`
-/

namespace A108742.P9770441017123088210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 1) + A003269 (2 * n)

end

end A108742.P9770441017123088210

namespace A108742

/-- `A003269(2*n+1)+A003269(2*n)` -/
def P9770441017123088210.Spec : Prop :=
  ∀ n, P9770441017123088210.a n = A108742 n

end A108742

/-! ## A108742.P4949093147122345841

`A193146(2*n)-A017898(2*n+1)`
-/

namespace A108742.P4949093147122345841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193146 (2 * n) - A017898 (2 * n + 1)

end

end A108742.P4949093147122345841

namespace A108742

/-- `A193146(2*n)-A017898(2*n+1)` -/
def P4949093147122345841.Spec : Prop :=
  ∀ n, P4949093147122345841.a n = A108742 n

end A108742

/-! ## A108742.P17116092822458045988

`Δ[record[a(n-4)-a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A108742.P17116092822458045988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 0] fun n f2 =>
  f2 (n - 4) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108742.P17116092822458045988

namespace A108742

/-- `Δ[record[a(n-4)-a(n-1)]]` -/
def P17116092822458045988.Spec : Prop :=
  ∀ n, P17116092822458045988.a n = A108742 n

end A108742

/-! ## A108742.P9453460441848476404

`Δ[A052535(n+1)]`
-/

namespace A108742.P9453460441848476404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108742.P9453460441848476404

namespace A108742

/-- `Δ[A052535(n+1)]` -/
def P9453460441848476404.Spec : Prop :=
  ∀ n, P9453460441848476404.a n = A108742 n

end A108742

/-! ## A108742.P11043917435914169947

`Δ[record[A017898(2*n)]]`
-/

namespace A108742.P11043917435914169947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108742.P11043917435914169947

namespace A108742

/-- `Δ[record[A017898(2*n)]]` -/
def P11043917435914169947.Spec : Prop :=
  ∀ n, P11043917435914169947.a n = A108742 n

end A108742

/-! ## A108742.P2768386294752866205

`Δ[A003269(2*n+3)]`
-/

namespace A108742.P2768386294752866205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108742.P2768386294752866205

namespace A108742

/-- `Δ[A003269(2*n+3)]` -/
def P2768386294752866205.Spec : Prop :=
  ∀ n, P2768386294752866205.a n = A108742 n

end A108742

/-! ## A108742.P6014487708439918823

`Δ[A017898(2*(n+3))]`
-/

namespace A108742.P6014487708439918823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108742.P6014487708439918823

namespace A108742

/-- `Δ[A017898(2*(n+3))]` -/
def P6014487708439918823.Spec : Prop :=
  ∀ n, P6014487708439918823.a n = A108742 n

end A108742

/-! ## A108742.P11108569678801915250

`A158943(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A108742.P11108569678801915250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158943 (n + 2) - a (n - 1)

end

end A108742.P11108569678801915250

namespace A108742

/-- `A158943(n+2)-a(n-1)` -/
def P11108569678801915250.Spec : Prop :=
  ∀ n, P11108569678801915250.a n = A108742 n

end A108742

/-! ## A108742.P645168810431619316

`A052969(n+2)-A052969(n)`
-/

namespace A108742.P645168810431619316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052969 (n + 2) - A052969 n

end

end A108742.P645168810431619316

namespace A108742

/-- `A052969(n+2)-A052969(n)` -/
def P645168810431619316.Spec : Prop :=
  ∀ n, P645168810431619316.a n = A108742 n

end A108742

/-! ## A108742.P8640974674954159063

`A052535(n+2)-A052535(n+1)`
-/

namespace A108742.P8640974674954159063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052535 (n + 2) - A052535 (n + 1)

end

end A108742.P8640974674954159063

namespace A108742

/-- `A052535(n+2)-A052535(n+1)` -/
def P8640974674954159063.Spec : Prop :=
  ∀ n, P8640974674954159063.a n = A108742 n

end A108742

/-! ## A108742.P12118920610896771359

`Δ[A103632(2*n+1)+A103632(2*n)]`
-/

namespace A108742.P12118920610896771359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (2 * n + 1) + A103632 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108742.P12118920610896771359

namespace A108742

/-- `Δ[A103632(2*n+1)+A103632(2*n)]` -/
def P12118920610896771359.Spec : Prop :=
  ∀ n, P12118920610896771359.a n = A108742 n

end A108742

/-! ## A108742.P9973722417335185549

`Δ[Δ[A072176(n+3)]]`
-/

namespace A108742.P9973722417335185549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072176 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108742.P9973722417335185549

namespace A108742

/-- `Δ[Δ[A072176(n+3)]]` -/
def P9973722417335185549.Spec : Prop :=
  ∀ n, P9973722417335185549.a n = A108742 n

end A108742

/-! ## A108742.P5748429819764365593

`Δ[Δ[A193146(2*n)]]`
-/

namespace A108742.P5748429819764365593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193146 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108742.P5748429819764365593

namespace A108742

/-- `Δ[Δ[A193146(2*n)]]` -/
def P5748429819764365593.Spec : Prop :=
  ∀ n, P5748429819764365593.a n = A108742 n

end A108742

/-! ## A108742.P4780487898966254638

`Δ[A098578(2*n)-A003269(2*n)]`
-/

namespace A108742.P4780487898966254638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 (2 * n) - A003269 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108742.P4780487898966254638

namespace A108742

/-- `Δ[A098578(2*n)-A003269(2*n)]` -/
def P4780487898966254638.Spec : Prop :=
  ∀ n, P4780487898966254638.a n = A108742 n

end A108742

/-!
# A108746: Triangle read by rows: T(n,k) is number of Dyck paths of semilength n and having k peaks that are not of the form uudd (here u=(1,1), d=(1,-1)).

The programs for A108746, there is no canonical definition to state claims against.
-/

/-! ## A108746.P3548543567299018522

`A087116(A027379(A234950(n))-A008624(n))`
-/

namespace A108746.P3548543567299018522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A027379 (A234950 n).toNat - A008624 n).toNat

end

end A108746.P3548543567299018522

/-!
# A108747: Triangle read by rows: T(n,k) is the number of Grand Dyck paths of semilength n and having k returns to the x-axis.

The programs for A108747, the canonical program `A108747.P3958116496263226294` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108747 has offset 1).

The definition of A108747 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106566, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A108747.P3958116496263226294

`2^(col(n)+1)*A106566(C(row(n)+2, 2)+col(n)+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108747

/-- `2^(col(n)+1)*A106566(C(row(n)+2, 2)+col(n)+1)` -/
def P3958116496263226294.Spec : Prop :=
  ∀ n, P3958116496263226294.a n = A108747 (n + 1)

theorem P3958116496263226294.correct : P3958116496263226294.Spec := by
  intro n
  simp only [A108747, Nat.add_sub_cancel]

end A108747

/-! ## A108747.P16108472885053491195

`2*A033184(n+1)*A059268(n)`
-/

namespace A108747.P16108472885053491195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033184 (n + 1) * A059268 n)

end

end A108747.P16108472885053491195

namespace A108747

/-- `2*A033184(n+1)*A059268(n)` -/
def P16108472885053491195.Spec : Prop :=
  ∀ n, P16108472885053491195.a n = A108747 (n + 1)

end A108747

/-! ## A108747.P11935659585335472067

`A000079(col(n)+1)*A033184(n+1)`
-/

namespace A108747.P11935659585335472067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.triCol n + 1) * A033184 (n + 1)

end

end A108747.P11935659585335472067

namespace A108747

/-- `A000079(col(n)+1)*A033184(n+1)` -/
def P11935659585335472067.Spec : Prop :=
  ∀ n, P11935659585335472067.a n = A108747 (n + 1)

end A108747

/-! ## A108747.P16439545400555592528

`2^A002260(n+1)*A033184(n+1)`
-/

namespace A108747.P16439545400555592528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) * (A033184 (n + 1) : ℚ)

end

end A108747.P16439545400555592528

namespace A108747

/-- `2^A002260(n+1)*A033184(n+1)` -/
def P16439545400555592528.Spec : Prop :=
  ∀ n, P16439545400555592528.a n = (A108747 (n + 1) : ℚ)

end A108747

/-! ## A108747.P17041179162202076142

`A033184(n+1)*A140513(A112367(n))`
-/

namespace A108747.P17041179162202076142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) * A140513 (A112367 n).toNat

end

end A108747.P17041179162202076142

namespace A108747

/-- `A033184(n+1)*A140513(A112367(n))` -/
def P17041179162202076142.Spec : Prop :=
  ∀ n, P17041179162202076142.a n = A108747 (n + 1)

end A108747

/-! ## A108747.P14013357250706127507

`abs(A000079(A002260(n+1))*A171567(n))`
-/

namespace A108747.P14013357250706127507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (A002260 (n + 1)).toNat * A171567 n|

end

end A108747.P14013357250706127507

namespace A108747

/-- `abs(A000079(A002260(n+1))*A171567(n))` -/
def P14013357250706127507.Spec : Prop :=
  ∀ n, P14013357250706127507.a n = A108747 (n + 1)

end A108747

/-! ## A108747.P12124349649684880679

`A000079(A002260(n+1))*A033184(n+1)`
-/

namespace A108747.P12124349649684880679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1)).toNat * A033184 (n + 1)

end

end A108747.P12124349649684880679

namespace A108747

/-- `A000079(A002260(n+1))*A033184(n+1)` -/
def P12124349649684880679.Spec : Prop :=
  ∀ n, P12124349649684880679.a n = A108747 (n + 1)

end A108747

/-! ## A108747.P886252890912608649

`2*A059268(n)*A009766(A061579(n))`
-/

namespace A108747.P886252890912608649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059268 n * A009766 (A061579 n).toNat

end

end A108747.P886252890912608649

namespace A108747

/-- `2*A059268(n)*A009766(A061579(n))` -/
def P886252890912608649.Spec : Prop :=
  ∀ n, P886252890912608649.a n = A108747 (n + 1)

end A108747

/-! ## A108747.P2661980236377013161

`2^A002260(n+1)*A009766(A061579(n))`
-/

namespace A108747.P2661980236377013161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) * (A009766 (A061579 n).toNat : ℚ)

end

end A108747.P2661980236377013161

namespace A108747

/-- `2^A002260(n+1)*A009766(A061579(n))` -/
def P2661980236377013161.Spec : Prop :=
  ∀ n, P2661980236377013161.a n = (A108747 (n + 1) : ℚ)

end A108747

/-! ## A108747.P10114367591268729265

`A005843(A059268(n))*A009766(A061579(n))`
-/

namespace A108747.P10114367591268729265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A059268 n).toNat * A009766 (A061579 n).toNat

end

end A108747.P10114367591268729265

namespace A108747

/-- `A005843(A059268(n))*A009766(A061579(n))` -/
def P10114367591268729265.Spec : Prop :=
  ∀ n, P10114367591268729265.a n = A108747 (n + 1)

end A108747

/-! ## A108747.P9012697477306904684

`A001316(A043569(n+1))*A033184(n+1)`
-/

namespace A108747.P9012697477306904684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A043569 (n + 1)).toNat * A033184 (n + 1)

end

end A108747.P9012697477306904684

namespace A108747

/-- `A001316(A043569(n+1))*A033184(n+1)` -/
def P9012697477306904684.Spec : Prop :=
  ∀ n, P9012697477306904684.a n = A108747 (n + 1)

end A108747

/-!
# A108748: Numbers of the form (9^i)*(13^j), with i, j >= 0.

The programs for A108748, there is no canonical definition to state claims against.
-/

/-! ## A108748.P5277330053320628248

`record[A107364(n+1)/A107364(n+1)%4]`
-/

namespace A108748.P5277330053320628248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107364 (n + 1) : ℚ) / (Int.tmod (A107364 (n + 1)) 4 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108748.P5277330053320628248

/-! ## A108748.P6621091042668863512

`A140303(n)*A297002(A232646(n+1))`
-/

namespace A108748.P6621091042668863512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140303 n * A297002 (A232646 (n + 1)).toNat

end

end A108748.P6621091042668863512

/-! ## A108748.P16893213955852205743

`A000265(A175840(n))*A297002(A232646(n+1))`
-/

namespace A108748.P16893213955852205743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A175840 n).toNat * A297002 (A232646 (n + 1)).toNat

end

end A108748.P16893213955852205743

/-! ## A108748.P5891032407549800977

`A297002(A232646(n+1))*A297002(A130321(n))`
-/

namespace A108748.P5891032407549800977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A232646 (n + 1)).toNat * A297002 (A130321 n).toNat

end

end A108748.P5891032407549800977

/-! ## A108748.P5199847926891559542

`A297002(A025617(n+1))`
-/

namespace A108748.P5199847926891559542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297002 (A025617 (n + 1)).toNat

end

end A108748.P5199847926891559542

/-!
# A108751: Numbers k such that 11*k - 911 is prime.

The programs for A108751, the canonical program `A108751.P15721226409477724031` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108751 has offset 1).

The definition of A108751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108751.P15721226409477724031

`A106690(n+1)+74`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108751

/-- `A106690(n+1)+74` -/
def P15721226409477724031.Spec : Prop :=
  ∀ n, P15721226409477724031.a n = A108751 (n + 1)

theorem P15721226409477724031.correct : P15721226409477724031.Spec := by
  intro n
  simp only [A108751, Nat.add_sub_cancel]

end A108751

/-! ## A108751.P8227579695113323276

`A111312(1+n)+83`
-/

namespace A108751.P8227579695113323276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111312 (1 + n) + 83

end

end A108751.P8227579695113323276

namespace A108751

/-- `A111312(1+n)+83` -/
def P8227579695113323276.Spec : Prop :=
  ∀ n, P8227579695113323276.a n = A108751 (n + 1)

end A108751

/-! ## A108751.P10901193623574349733

`floor(p?[a(n-1)+11]/11)+83` with `a(0)=2`
-/

namespace A108751.P10901193623574349733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌋ + 83

end

end A108751.P10901193623574349733

namespace A108751

/-- `floor(p?[a(n-1)+11]/11)+83` -/
def P10901193623574349733.Spec : Prop :=
  ∀ n, P10901193623574349733.a n = A108751 (n + 1)

end A108751

/-! ## A108751.P6121469278600849140

`floor(p?[10*n+n+2]/11)+83`
-/

namespace A108751.P6121469278600849140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌋ + 83

end

end A108751.P6121469278600849140

namespace A108751

/-- `floor(p?[10*n+n+2]/11)+83` -/
def P6121469278600849140.Spec : Prop :=
  ∀ n, P6121469278600849140.a n = A108751 (n + 1)

end A108751

/-!
# A108752: Numbers k such that 12 divides k*(k+1).

The programs for A108752, the canonical program `A108752.P15014546044939543113` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108752 has offset 1).

The definition of A108752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108752.P6814715602560630257

`ogf((3x+2x^2+x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A108752.P6814715602560630257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 1] [1, -2, 2, -2, 1] n

end

end A108752.P6814715602560630257

namespace A108752

/-- `ogf((3x+2x^2+x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P6814715602560630257.Spec : Prop :=
  ∀ n, P6814715602560630257.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P15014546044939543113

`3*(n+1)-2-(-1)^((2*(n+1)-3-(-1)^(n+1))/4)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108752

/-- `3*(n+1)-2-(-1)^((2*(n+1)-3-(-1)^(n+1))/4)` -/
def P15014546044939543113.Spec : Prop :=
  ∀ n, P15014546044939543113.a n = (A108752 (n + 1) : ℝ)

end A108752

/-! ## A108752.P2864387788718569199

`and(2, n)+3*n`
-/

namespace A108752.P2864387788718569199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 3 * n

end

end A108752.P2864387788718569199

namespace A108752

/-- `and(2, n)+3*n` -/
def P2864387788718569199.Spec : Prop :=
  ∀ n, (P2864387788718569199.a n : ℤ) = A108752 (n + 1)

end A108752

/-! ## A108752.P9369646529510824596

`2-or(2, -(3*n))`
-/

namespace A108752.P9369646529510824596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.lor 2 (-(3 * n : ℤ))

end

end A108752.P9369646529510824596

namespace A108752

/-- `2-or(2, -(3*n))` -/
def P9369646529510824596.Spec : Prop :=
  ∀ n, P9369646529510824596.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P9573140790010141820

`4*n-and(n, -3)`
-/

namespace A108752.P9573140790010141820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - Int.land (n : ℤ) (-3)

end

end A108752.P9573140790010141820

namespace A108752

/-- `4*n-and(n, -3)` -/
def P9573140790010141820.Spec : Prop :=
  ∀ n, P9573140790010141820.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P8539665030823306420

`or(2, 3*(n+1))-3`
-/

namespace A108752.P8539665030823306420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * (n + 1)) : ℤ) - 3

end

end A108752.P8539665030823306420

namespace A108752

/-- `or(2, 3*(n+1))-3` -/
def P8539665030823306420.Spec : Prop :=
  ∀ n, P8539665030823306420.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P9697289768218899115

`a(n-4)+12` with `a(0)=0, a(1)=3, a(2)=8, a(3)=11`
-/

namespace A108752.P9697289768218899115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 8, 11] fun n a =>
  a (n - 4) + 12

end

end A108752.P9697289768218899115

namespace A108752

/-- `a(n-4)+12` -/
def P9697289768218899115.Spec : Prop :=
  ∀ n, (P9697289768218899115.a n : ℤ) = A108752 (n + 1)

end A108752

/-! ## A108752.P1986926678065413679

`∑[6-a(n-2)]` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A108752.P1986926678065413679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108752.P1986926678065413679

namespace A108752

/-- `∑[6-a(n-2)]` -/
def P1986926678065413679.Spec : Prop :=
  ∀ n, P1986926678065413679.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P1110382558296036845

`3*n-(n-n²)%4`
-/

namespace A108752.P1110382558296036845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - Int.tmod ((n : ℤ) - (n ^ 2 : ℤ)) 4

end

end A108752.P1110382558296036845

namespace A108752

/-- `3*n-(n-n²)%4` -/
def P1110382558296036845.Spec : Prop :=
  ∀ n, P1110382558296036845.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P13113832633346183140

`2%(n%4+1)+3*n`
-/

namespace A108752.P13113832633346183140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n % 4 + 1) + 3 * n

end

end A108752.P13113832633346183140

namespace A108752

/-- `2%(n%4+1)+3*n` -/
def P13113832633346183140.Spec : Prop :=
  ∀ n, (P13113832633346183140.a n : ℤ) = A108752 (n + 1)

end A108752

/-! ## A108752.P8467770918443187992

`xor(2, or(2, n+2))+2*n`
-/

namespace A108752.P8467770918443187992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 2 (n + 2)) + 2 * n

end

end A108752.P8467770918443187992

namespace A108752

/-- `xor(2, or(2, n+2))+2*n` -/
def P8467770918443187992.Spec : Prop :=
  ∀ n, (P8467770918443187992.a n : ℤ) = A108752 (n + 1)

end A108752

/-! ## A108752.P5185627690998524268

`Δ[n²]+and(2, n)+n-1`
-/

namespace A108752.P5185627690998524268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.land 2 n : ℤ) + ((n : ℤ) - 1)

end

end A108752.P5185627690998524268

namespace A108752

/-- `Δ[n²]+and(2, n)+n-1` -/
def P5185627690998524268.Spec : Prop :=
  ∀ n, P5185627690998524268.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P16482171972746923557

`∑[∑[and(2, n+1)²]]-n²`
-/

namespace A108752.P16482171972746923557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A108752.P16482171972746923557

namespace A108752

/-- `∑[∑[and(2, n+1)²]]-n²` -/
def P16482171972746923557.Spec : Prop :=
  ∀ n, P16482171972746923557.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P7063581612289392185

`or(n, -3)+2*n+n+3`
-/

namespace A108752.P7063581612289392185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-3) + (2 * n : ℤ) + (n + 3 : ℤ)

end

end A108752.P7063581612289392185

namespace A108752

/-- `or(n, -3)+2*n+n+3` -/
def P7063581612289392185.Spec : Prop :=
  ∀ n, P7063581612289392185.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P12662563886587054317

`abs(or(2, n+2)+n-1)+n-1`
-/

namespace A108752.P12662563886587054317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 2 (n + 2) : ℤ) + ((n : ℤ) - 1)| + ((n : ℤ) - 1)

end

end A108752.P12662563886587054317

namespace A108752

/-- `abs(or(2, n+2)+n-1)+n-1` -/
def P12662563886587054317.Spec : Prop :=
  ∀ n, P12662563886587054317.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P12745383546514210488

`eq[2, and(n-1, gcd(n+2, n-1)-(n-1))]`
-/

namespace A108752.P12745383546514210488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) ((Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1) : ℤ) - ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108752.P12745383546514210488

namespace A108752

/-- `eq[2, and(n-1, gcd(n+2, n-1)-(n-1))]` -/
def P12745383546514210488.Spec : Prop :=
  ∀ n, (P12745383546514210488.a n : ℤ) = A108752 (n + 1)

end A108752

/-! ## A108752.P5747393485919222275

`∑[A164356(n)-1]`
-/

namespace A108752.P5747393485919222275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164356 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108752.P5747393485919222275

namespace A108752

/-- `∑[A164356(n)-1]` -/
def P5747393485919222275.Spec : Prop :=
  ∀ n, P5747393485919222275.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P3003949276503227676

`(A069497(n+1)+A069497(n+1))/A112652(n+1)`
-/

namespace A108752.P3003949276503227676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069497 (n + 1) + A069497 (n + 1) : ℚ) / (A112652 (n + 1) : ℚ)

end

end A108752.P3003949276503227676

namespace A108752

/-- `(A069497(n+1)+A069497(n+1))/A112652(n+1)` -/
def P3003949276503227676.Spec : Prop :=
  ∀ n, P3003949276503227676.a n = (A108752 (n + 1) : ℚ)

end A108752

/-! ## A108752.P11811063892228813014

`A014601(A047260(n+1))`
-/

namespace A108752.P11811063892228813014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (A047260 (n + 1)).toNat

end

end A108752.P11811063892228813014

namespace A108752

/-- `A014601(A047260(n+1))` -/
def P11811063892228813014.Spec : Prop :=
  ∀ n, P11811063892228813014.a n = A108752 (n + 1)

end A108752

/-! ## A108752.P15700908419632130687

`A083028(A047283(n+2))`
-/

namespace A108752.P15700908419632130687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083028 (A047283 (n + 2)).toNat

end

end A108752.P15700908419632130687

namespace A108752

/-- `A083028(A047283(n+2))` -/
def P15700908419632130687.Spec : Prop :=
  ∀ n, P15700908419632130687.a n = A108752 (n + 1)

end A108752

/-!
# A108753: Difference between the n-th partial sum of the squares (A000330) and the n-th partial sum of the primes (A007504).

The programs for A108753, the canonical program `A108753.P13669871838152555098` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108753 has offset 1).

The definition of A108753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108753.P13669871838152555098

`∑[A073497(1+n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108753

/-- `∑[A073497(1+n)]` -/
def P13669871838152555098.Spec : Prop :=
  ∀ n, P13669871838152555098.a n = A108753 (n + 1)

theorem P13669871838152555098.correct : P13669871838152555098.Spec := by
  intro n
  simp only [A108753, Nat.add_sub_cancel]

end A108753

/-! ## A108753.P10500760478595723681

`∑[n²]-A108754(n+1)`
-/

namespace A108753.P10500760478595723681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A108754 (n + 1)

end

end A108753.P10500760478595723681

namespace A108753

/-- `∑[n²]-A108754(n+1)` -/
def P10500760478595723681.Spec : Prop :=
  ∀ n, P10500760478595723681.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P12631540049294557260

`∑[n²-A131733(n+1)]`
-/

namespace A108753.P12631540049294557260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A131733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P12631540049294557260

namespace A108753

/-- `∑[n²-A131733(n+1)]` -/
def P12631540049294557260.Spec : Prop :=
  ∀ n, P12631540049294557260.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P77251194190334

`∑[(n+1)²-Δ[A007504(n)]]`
-/

namespace A108753.P77251194190334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P77251194190334

namespace A108753

/-- `∑[(n+1)²-Δ[A007504(n)]]` -/
def P77251194190334.Spec : Prop :=
  ∀ n, P77251194190334.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P4608792310853885201

`∑[(n+1)²-A000040(n+1)]`
-/

namespace A108753.P4608792310853885201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P4608792310853885201

namespace A108753

/-- `∑[(n+1)²-A000040(n+1)]` -/
def P4608792310853885201.Spec : Prop :=
  ∀ n, P4608792310853885201.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P3220325857670305962

`∑[(n+1)²]-A007504(n+1)`
-/

namespace A108753.P3220325857670305962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A007504 (n + 1)

end

end A108753.P3220325857670305962

namespace A108753

/-- `∑[(n+1)²]-A007504(n+1)` -/
def P3220325857670305962.Spec : Prop :=
  ∀ n, P3220325857670305962.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P11245656198012175463

`A145066(n+1)-A060939(n+1)`
-/

namespace A108753.P11245656198012175463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145066 (n + 1) - A060939 (n + 1)

end

end A108753.P11245656198012175463

namespace A108753

/-- `A145066(n+1)-A060939(n+1)` -/
def P11245656198012175463.Spec : Prop :=
  ∀ n, P11245656198012175463.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P10445590089877098042

`A168559(n+1)-A237589(n+1)`
-/

namespace A108753.P10445590089877098042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168559 (n + 1) - A237589 (n + 1)

end

end A108753.P10445590089877098042

namespace A108753

/-- `A168559(n+1)-A237589(n+1)` -/
def P10445590089877098042.Spec : Prop :=
  ∀ n, P10445590089877098042.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P4988773424747711029

`∑[A005563(n)+1-A000040(n+1)]`
-/

namespace A108753.P4988773424747711029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P4988773424747711029

namespace A108753

/-- `∑[A005563(n)+1-A000040(n+1)]` -/
def P4988773424747711029.Spec : Prop :=
  ∀ n, P4988773424747711029.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P5950460252211291603

`2*A000292(n)-∑[A014689(n+1)]`
-/

namespace A108753.P5950460252211291603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000292 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P5950460252211291603

namespace A108753

/-- `2*A000292(n)-∑[A014689(n+1)]` -/
def P5950460252211291603.Spec : Prop :=
  ∀ n, P5950460252211291603.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P12651878993204509711

`A000292(n+1)+A000292(n)-A007504(n+1)`
-/

namespace A108753.P12651878993204509711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A000292 n - A007504 (n + 1))

end

end A108753.P12651878993204509711

namespace A108753

/-- `A000292(n+1)+A000292(n)-A007504(n+1)` -/
def P12651878993204509711.Spec : Prop :=
  ∀ n, P12651878993204509711.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P4682546826776237630

`∑[(n+1)²-A008578(n+2)]`
-/

namespace A108753.P4682546826776237630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P4682546826776237630

namespace A108753

/-- `∑[(n+1)²-A008578(n+2)]` -/
def P4682546826776237630.Spec : Prop :=
  ∀ n, P4682546826776237630.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P2124221459825564986

`∑[(n+1)²-A158611(n+3)]`
-/

namespace A108753.P2124221459825564986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A158611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P2124221459825564986

namespace A108753

/-- `∑[(n+1)²-A158611(n+3)]` -/
def P2124221459825564986.Spec : Prop :=
  ∀ n, P2124221459825564986.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P8572923129754498427

`∑[(n+1)²-record[A020639(n+2)]]`
-/

namespace A108753.P8572923129754498427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P8572923129754498427

namespace A108753

/-- `∑[(n+1)²-record[A020639(n+2)]]` -/
def P8572923129754498427.Spec : Prop :=
  ∀ n, P8572923129754498427.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P15585874995232014173

`∑[(n+1)²-p?[A039698(n+1)]]`
-/

namespace A108753.P15585874995232014173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P15585874995232014173

namespace A108753

/-- `∑[(n+1)²-p?[A039698(n+1)]]` -/
def P15585874995232014173.Spec : Prop :=
  ∀ n, P15585874995232014173.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P14465718156349469099

`∑[n*(n+2)-eq[1, A001222(n+1)]]`
-/

namespace A108753.P14465718156349469099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P14465718156349469099

namespace A108753

/-- `∑[n*(n+2)-eq[1, A001222(n+1)]]` -/
def P14465718156349469099.Spec : Prop :=
  ∀ n, P14465718156349469099.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P6462429559758216051

`∑[n*(n+2)-eq[2, A000005(n+1)]]`
-/

namespace A108753.P6462429559758216051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P6462429559758216051

namespace A108753

/-- `∑[n*(n+2)-eq[2, A000005(n+1)]]` -/
def P6462429559758216051.Spec : Prop :=
  ∀ n, P6462429559758216051.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P10197436620582025471

`∑[n*(n+2)-eq[n, A000010(n+1)]]`
-/

namespace A108753.P10197436620582025471
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P10197436620582025471

namespace A108753

/-- `∑[n*(n+2)-eq[n, A000010(n+1)]]` -/
def P10197436620582025471.Spec : Prop :=
  ∀ n, P10197436620582025471.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P12051564887662601611

`∑[n*(n+2)-eq[n+2, A000203(n+1)]]`
-/

namespace A108753.P12051564887662601611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P12051564887662601611

namespace A108753

/-- `∑[n*(n+2)-eq[n+2, A000203(n+1)]]` -/
def P12051564887662601611.Spec : Prop :=
  ∀ n, P12051564887662601611.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P12582912034684736759

`∑[(n+1)²-A073846(2*(n+1))]`
-/

namespace A108753.P12582912034684736759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A073846 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P12582912034684736759

namespace A108753

/-- `∑[(n+1)²-A073846(2*(n+1))]` -/
def P12582912034684736759.Spec : Prop :=
  ∀ n, P12582912034684736759.a n = A108753 (n + 1)

end A108753

/-! ## A108753.P1068356808548130065

`∑[(n+1)²-p?[comp[n²]]]`
-/

namespace A108753.P1068356808548130065
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108753.P1068356808548130065

namespace A108753

/-- `∑[(n+1)²-p?[comp[n²]]]` -/
def P1068356808548130065.Spec : Prop :=
  ∀ n, P1068356808548130065.a n = A108753 (n + 1)

end A108753

/-!
# A108754: Difference between partial sum of the first n primes and n^2.

The programs for A108754, the canonical program `A108754.P16448062333260017930` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108754 has offset 1).

The definition of A108754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108754.P16448062333260017930

`A007504(n+1)-A000290(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108754

/-- `A007504(n+1)-A000290(n+1)` -/
def P16448062333260017930.Spec : Prop :=
  ∀ n, P16448062333260017930.a n = A108754 (n + 1)

theorem P16448062333260017930.correct : P16448062333260017930.Spec := by
  intro n
  simp only [A108754, Nat.add_sub_cancel]

end A108754

/-! ## A108754.P9379499490334073267

`∑[A131733(n+1)]`
-/

namespace A108754.P9379499490334073267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108754.P9379499490334073267

namespace A108754

/-- `∑[A131733(n+1)]` -/
def P9379499490334073267.Spec : Prop :=
  ∀ n, P9379499490334073267.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P12454307318174417067

`∑[A173072(n+1)-1]`
-/

namespace A108754.P12454307318174417067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173072 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108754.P12454307318174417067

namespace A108754

/-- `∑[A173072(n+1)-1]` -/
def P12454307318174417067.Spec : Prop :=
  ∀ n, P12454307318174417067.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P804238655971916212

`∑[A014689(n+1)-n]`
-/

namespace A108754.P804238655971916212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108754.P804238655971916212

namespace A108754

/-- `∑[A014689(n+1)-n]` -/
def P804238655971916212.Spec : Prop :=
  ∀ n, P804238655971916212.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P17571333197450255842

`A112997(n+1)-∑[n]`
-/

namespace A108754.P17571333197450255842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A108754.P17571333197450255842

namespace A108754

/-- `A112997(n+1)-∑[n]` -/
def P17571333197450255842.Spec : Prop :=
  ∀ n, P17571333197450255842.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P11726799355596667587

`A135267(n+1)+1+n`
-/

namespace A108754.P11726799355596667587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135267 (n + 1) + 1 + (n : ℤ)

end

end A108754.P11726799355596667587

namespace A108754

/-- `A135267(n+1)+1+n` -/
def P11726799355596667587.Spec : Prop :=
  ∀ n, P11726799355596667587.a n = A108754 (n + 1)

theorem P11726799355596667587.correct : P11726799355596667587.Spec := by
  intro n
  simp only [A108754, Nat.add_sub_cancel, A108754.P11726799355596667587.a, A108754.P16448062333260017930.a, A000290, A000290.P12206242496348924484.a, A007504, A007504.P14310834286015847203.a, A135267, A135267.P10837298668863611185.a, A002378, A002378.P6342434596694243671.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108754

/-! ## A108754.P3775178498632827126

`∑[∑[A125266(n+1)-2]]`
-/

namespace A108754.P3775178498632827126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108754.P3775178498632827126

namespace A108754

/-- `∑[∑[A125266(n+1)-2]]` -/
def P3775178498632827126.Spec : Prop :=
  ∀ n, P3775178498632827126.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P16196922676237463783

`∑[n²-A073497(n+1)]`
-/

namespace A108754.P16196922676237463783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A073497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108754.P16196922676237463783

namespace A108754

/-- `∑[n²-A073497(n+1)]` -/
def P16196922676237463783.Spec : Prop :=
  ∀ n, P16196922676237463783.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P10994457684685079346

`∑[n²]-A108753(n+1)`
-/

namespace A108754.P10994457684685079346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A108753 (n + 1)

end

end A108754.P10994457684685079346

namespace A108754

/-- `∑[n²]-A108753(n+1)` -/
def P10994457684685079346.Spec : Prop :=
  ∀ n, P10994457684685079346.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P4014959218322893763

`A007504(n+1)-(n+1)²`
-/

namespace A108754.P4014959218322893763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A108754.P4014959218322893763

namespace A108754

/-- `A007504(n+1)-(n+1)²` -/
def P4014959218322893763.Spec : Prop :=
  ∀ n, P4014959218322893763.a n = A108754 (n + 1)

theorem P4014959218322893763.correct : P4014959218322893763.Spec := by
  intro n
  simp only [A108754, Nat.add_sub_cancel, A108754.P4014959218322893763.a, A108754.P16448062333260017930.a, A000290, A000290.P12206242496348924484.a, A007504, A007504.P14310834286015847203.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108754

/-! ## A108754.P17105844138339335974

`A103976(n+1)+1-n²`
-/

namespace A108754.P17105844138339335974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103976 (n + 1) + (1 - (n ^ 2 : ℤ))

end

end A108754.P17105844138339335974

namespace A108754

/-- `A103976(n+1)+1-n²` -/
def P17105844138339335974.Spec : Prop :=
  ∀ n, P17105844138339335974.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P12236945582218966239

`∑[A014692(n+1)-(n+1)]`
-/

namespace A108754.P12236945582218966239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108754.P12236945582218966239

namespace A108754

/-- `∑[A014692(n+1)-(n+1)]` -/
def P12236945582218966239.Spec : Prop :=
  ∀ n, P12236945582218966239.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P9696945279107538642

`∑[A065890(n+1)+1-n]`
-/

namespace A108754.P9696945279107538642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108754.P9696945279107538642

namespace A108754

/-- `∑[A065890(n+1)+1-n]` -/
def P9696945279107538642.Spec : Prop :=
  ∀ n, P9696945279107538642.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P6384947916631738719

`∑[A006093(n+1)-2*n]`
-/

namespace A108754.P6384947916631738719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108754.P6384947916631738719

namespace A108754

/-- `∑[A006093(n+1)-2*n]` -/
def P6384947916631738719.Spec : Prop :=
  ∀ n, P6384947916631738719.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P10401340784497731492

`A101301(n+1)-∑[2*n]`
-/

namespace A108754.P10401340784497731492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A108754.P10401340784497731492

namespace A108754

/-- `A101301(n+1)-∑[2*n]` -/
def P10401340784497731492.Spec : Prop :=
  ∀ n, P10401340784497731492.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P6413166562754047104

`∑[A000040(n+1)-Δ[n²]]`
-/

namespace A108754.P6413166562754047104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108754.P6413166562754047104

namespace A108754

/-- `∑[A000040(n+1)-Δ[n²]]` -/
def P6413166562754047104.Spec : Prop :=
  ∀ n, P6413166562754047104.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P15021657186278988389

`∑[A000040(C(n+1, n))]-(n+1)²`
-/

namespace A108754.P15021657186278988389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (n + 1) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A108754.P15021657186278988389

namespace A108754

/-- `∑[A000040(C(n+1, n))]-(n+1)²` -/
def P15021657186278988389.Spec : Prop :=
  ∀ n, P15021657186278988389.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P2316872586858418920

`∑[A000040(2*n+1-n)]-(n+1)²`
-/

namespace A108754.P2316872586858418920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A108754.P2316872586858418920

namespace A108754

/-- `∑[A000040(2*n+1-n)]-(n+1)²` -/
def P2316872586858418920.Spec : Prop :=
  ∀ n, P2316872586858418920.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P8790337267401431515

`A000040(2*n-(n-1))+a(n-1)-(2*n+1)` with `a(0)=1`
-/

namespace A108754.P8790337267401431515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat + (a (n - 1) - (2 * n + 1 : ℤ))

end

end A108754.P8790337267401431515

namespace A108754

/-- `A000040(2*n-(n-1))+a(n-1)-(2*n+1)` -/
def P8790337267401431515.Spec : Prop :=
  ∀ n, P8790337267401431515.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P7761911264741281368

`A258837(n)+A103976(n+1)`
-/

namespace A108754.P7761911264741281368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 n + A103976 (n + 1)

end

end A108754.P7761911264741281368

namespace A108754

/-- `A258837(n)+A103976(n+1)` -/
def P7761911264741281368.Spec : Prop :=
  ∀ n, P7761911264741281368.a n = A108754 (n + 1)

end A108754

/-! ## A108754.P7619330619023510763

`∑[p?[comp[n²]]]-(n+1)²`
-/

namespace A108754.P7619330619023510763
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A108754.P7619330619023510763

namespace A108754

/-- `∑[p?[comp[n²]]]-(n+1)²` -/
def P7619330619023510763.Spec : Prop :=
  ∀ n, P7619330619023510763.a n = A108754 (n + 1)

end A108754

/-!
# A108756: A triangle related to the Jacobsthal polynomials.

The programs for A108756, the canonical program `A108756.P5310843198664902141` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108756 has offset 0).

The definition of A108756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108756.P6022566849446171240

`T(n-1,k-1)+2*T(n-2,k)-T(row(n)-4, col(n))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A108756.P6022566849446171240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp2 a n - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 4) (SequenceMachineLib.triCol n : ℤ)

end

end A108756.P6022566849446171240

namespace A108756

/-- `T(n-1,k-1)+2*T(n-2,k)-T(row(n)-4, col(n))` -/
def P6022566849446171240.Spec : Prop :=
  ∀ n, P6022566849446171240.a n = A108756 n

end A108756

/-! ## A108756.P5310843198664902141

`C(floor((row(n)+col(n)+1)/2)+col(n), floor((row(n)+col(n))/2-col(n)))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108756

/-- `C(floor((row(n)+col(n)+1)/2)+col(n), floor((row(n)+col(n))/2-col(n)))` -/
def P5310843198664902141.Spec : Prop :=
  ∀ n, (P5310843198664902141.a n : ℤ) = A108756 n

theorem P5310843198664902141.correct : P5310843198664902141.Spec := by
  intro n
  simp only [A108756]

end A108756

/-! ## A108756.P8484326914205275965

`A098925(A056537(n+1)-1)`
-/

namespace A108756.P8484326914205275965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A056537 (n + 1) - 1).toNat

end

end A108756.P8484326914205275965

namespace A108756

/-- `A098925(A056537(n+1)-1)` -/
def P8484326914205275965.Spec : Prop :=
  ∀ n, P8484326914205275965.a n = A108756 n

end A108756

/-! ## A108756.P2763428227403329185

`A098925(A057428(n)+A056537(n+1))`
-/

namespace A108756.P2763428227403329185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 (A057428 n + A056537 (n + 1)).toNat

end

end A108756.P2763428227403329185

namespace A108756

/-- `A098925(A057428(n)+A056537(n+1))` -/
def P2763428227403329185.Spec : Prop :=
  ∀ n, P2763428227403329185.a n = A108756 n

end A108756

/-! ## A108756.P17404847663034123330

`A102426(A056537(n+1))`
-/

namespace A108756.P17404847663034123330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A056537 (n + 1)).toNat

end

end A108756.P17404847663034123330

namespace A108756

/-- `A102426(A056537(n+1))` -/
def P17404847663034123330.Spec : Prop :=
  ∀ n, P17404847663034123330.a n = A108756 n

end A108756

/-! ## A108756.P14876155361601805331

`A102427(A056943(n+1))`
-/

namespace A108756.P14876155361601805331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102427 (A056943 (n + 1)).toNat

end

end A108756.P14876155361601805331

namespace A108756

/-- `A102427(A056943(n+1))` -/
def P14876155361601805331.Spec : Prop :=
  ∀ n, P14876155361601805331.a n = A108756 n

end A108756

/-! ## A108756.P15668284998444978284

`A011973(A273751(n+1)-1)`
-/

namespace A108756.P15668284998444978284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A273751 (n + 1) - 1).toNat

end

end A108756.P15668284998444978284

namespace A108756

/-- `A011973(A273751(n+1)-1)` -/
def P15668284998444978284.Spec : Prop :=
  ∀ n, P15668284998444978284.a n = A108756 n

end A108756

/-!
# A108757: Numbers k such that 1000*k + 911 is prime.

The programs for A108757, there is no canonical definition to state claims against.
-/

/-! ## A108757.P14285594310573793321

`eq[A255058(2*(n+1)), A255058(A090424(n+1))]`
-/

namespace A108757.P14285594310573793321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255058 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255058 (A090424 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108757.P14285594310573793321

/-!
# A108758: a(n) = 2*a(n-1) - a(n-4) + a(n-5) with a(-1)=a(0)=a(1)=1, a(2)=2, a(3)=4, a(4)=7.

The programs for A108758, there is no canonical definition to state claims against.
-/

/-! ## A108758.P3502324582282632439

`2*a(n-1)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108758.P3502324582282632439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 4, 7] fun n a =>
  2 * a (n - 1) - a (n - 4) + a (n - 5)

end

end A108758.P3502324582282632439

/-! ## A108758.P11498996208456671224

`A179647(abs(A046691(n))+1)`
-/

namespace A108758.P11498996208456671224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179647 (|A046691 n| + 1).toNat

end

end A108758.P11498996208456671224

/-! ## A108758.P10349421989982594168

`A179647(A060577(n+1)+1)`
-/

namespace A108758.P10349421989982594168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179647 (A060577 (n + 1) + 1).toNat

end

end A108758.P10349421989982594168

/-! ## A108758.P501395658434839664

`A179647(A027379(A028310(n)))`
-/

namespace A108758.P501395658434839664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179647 (A027379 (A028310 n).toNat).toNat

end

end A108758.P501395658434839664

/-! ## A108758.P5480319682366474075

`A179647(record[A061579(A133263(n))])`
-/

namespace A108758.P5480319682366474075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179647 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108758.P5480319682366474075

/-! ## A108758.P14554766284265922752

`A179647(A055998(A233583(n+1)))`
-/

namespace A108758.P14554766284265922752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179647 (A055998 (A233583 (n + 1)).toNat).toNat

end

end A108758.P14554766284265922752

/-! ## A108758.P14544667041266020726

`A179647(A027379(A000007(n)+n))`
-/

namespace A108758.P14544667041266020726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179647 (A027379 (A000007 n + (n : ℤ)).toNat).toNat

end

end A108758.P14544667041266020726

/-!
# A108760: Irregular array: n-th row consists of nonnegative integers i less than n such that n divides i(i+1).

The programs for A108760, there is no canonical definition to state claims against.
-/

/-! ## A108760.P1413368919198742046

`A002262(eq[A048152(n+1), A191532(n+1)])`
-/

namespace A108760.P1413368919198742046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A108760.P1413368919198742046

/-! ## A108760.P1991339516956635494

`A002262(eq[A050873(n+1)%(n+1), A277227(n+1)])`
-/

namespace A108760.P1991339516956635494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050873 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A108760.P1991339516956635494

/-! ## A108760.P13378492418120118095

`A329534(n+2)-1`
-/

namespace A108760.P13378492418120118095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (n + 2) - 1

end

end A108760.P13378492418120118095

/-! ## A108760.P2102229751280384358

`∑[Δ[A329534(n+1)]%28]`
-/

namespace A108760.P2102229751280384358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108760.P2102229751280384358

/-! ## A108760.P3464411987054256265

`A002837(A329534(n+2))`
-/

namespace A108760.P3464411987054256265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A329534 (n + 2)).toNat

end

end A108760.P3464411987054256265

/-! ## A108760.P1113096556624971578

`A025581(2*A329534(n+2)²)`
-/

namespace A108760.P1113096556624971578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A329534 (n + 2) ^ 2).toNat

end

end A108760.P1113096556624971578

/-! ## A108760.P2344500999014103596

`∑[A000038(n)!*Δ[A329534(n+1)]]`
-/

namespace A108760.P2344500999014103596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108760.P2344500999014103596

/-! ## A108760.P4047050197470775020

`∑[A000035(2*n)+Δ[A329534(n+1)]]`
-/

namespace A108760.P4047050197470775020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108760.P4047050197470775020

/-! ## A108760.P1384964950156504686

`∑[A014963(4*n+2)*Δ[A329534(n+1)]]`
-/

namespace A108760.P1384964950156504686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108760.P1384964950156504686

/-!
# A108761: Numbers of the form (10^i)*(13^j), with i, j >= 0.

The programs for A108761, there is no canonical definition to state claims against.
-/

/-! ## A108761.P11793842263387961202

`A130321(n)*A348746(A120027(n))`
-/

namespace A108761.P11793842263387961202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A348746 (A120027 n).toNat

end

end A108761.P11793842263387961202

/-! ## A108761.P10017873365742795916

`A289320(A120027(n))/A059268(n)`
-/

namespace A108761.P10017873365742795916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289320 (A120027 n).toNat : ℚ) / (A059268 n : ℚ)

end

end A108761.P10017873365742795916

/-! ## A108761.P3184141399939670380

`A130321(n)*A332213(A003599(n+1))`
-/

namespace A108761.P3184141399939670380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A332213 (A003599 (n + 1)).toNat

end

end A108761.P3184141399939670380

/-! ## A108761.P1231042563823156892

`A061142(A319075(n))*A332213(A003599(n+1))`
-/

namespace A108761.P1231042563823156892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A319075 n).toNat * A332213 (A003599 (n + 1)).toNat

end

end A108761.P1231042563823156892

/-! ## A108761.P899161334790209611

`A120119(A025626(n+1))`
-/

namespace A108761.P899161334790209611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120119 (A025626 (n + 1)).toNat

end

end A108761.P899161334790209611

/-!
# A108763: If n-th prime is 8m+1, then a(n) = 8m+3. If n-th prime is 8m+3, then a(n) = 8m+5. If n-th prime is 8m+5, then a(n) = 8m+7. If n-th prime is 8m+7, then a(n) = 8m+1.

The programs for A108763, the canonical program `A108763.P3829992224626505531` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108763 has offset 2).

The definition of A108763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108763.P12521989905458317178

`xor(p?[2*n+1], A131800(A073846(2*(n+2))))`
-/

namespace A108763.P12521989905458317178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A131800 (A073846 (2 * (n + 2))).toNat)

end

end A108763.P12521989905458317178

namespace A108763

/-- `xor(p?[2*n+1], A131800(A073846(2*(n+2))))` -/
def P12521989905458317178.Spec : Prop :=
  ∀ n, P12521989905458317178.a n = A108763 (n + 2)

end A108763

/-! ## A108763.P12362829218400253654

`A166519(A159966(A005097(n+1)))`
-/

namespace A108763.P12362829218400253654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 (A159966 (A005097 (n + 1)).toNat).toNat

end

end A108763.P12362829218400253654

namespace A108763

/-- `A166519(A159966(A005097(n+1)))` -/
def P12362829218400253654.Spec : Prop :=
  ∀ n, P12362829218400253654.a n = A108763 (n + 2)

end A108763

/-! ## A108763.P3829992224626505531

`A092486(2*A092486(A067076(n+1)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108763

/-- `A092486(2*A092486(A067076(n+1)))` -/
def P3829992224626505531.Spec : Prop :=
  ∀ n, P3829992224626505531.a n = A108763 (n + 2)

theorem P3829992224626505531.correct : P3829992224626505531.Spec := by
  intro n
  simp only [A108763, Nat.add_sub_cancel]

end A108763

/-! ## A108763.P3612316519346982044

`xor(A040008(A006254(n+1)), A065091(n+1))`
-/

namespace A108763.P3612316519346982044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A040008 (A006254 (n + 1)).toNat) (A065091 (n + 1))

end

end A108763.P3612316519346982044

namespace A108763

/-- `xor(A040008(A006254(n+1)), A065091(n+1))` -/
def P3612316519346982044.Spec : Prop :=
  ∀ n, P3612316519346982044.a n = A108763 (n + 2)

end A108763

/-! ## A108763.P4534729758367563549

`xor(A000040(n+2), A040008(A006254(n+1)))`
-/

namespace A108763.P4534729758367563549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 2)) (A040008 (A006254 (n + 1)).toNat)

end

end A108763.P4534729758367563549

namespace A108763

/-- `xor(A000040(n+2), A040008(A006254(n+1)))` -/
def P4534729758367563549.Spec : Prop :=
  ∀ n, P4534729758367563549.a n = A108763 (n + 2)

end A108763

/-!
# A108764: Products of exactly two supersingular primes (A002267).

The programs for A108764, there is no canonical definition to state claims against.
-/

/-! ## A108764.P8602825065750135613

`record[A260739(A212582(n+1))]`
-/

namespace A108764.P8602825065750135613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A212582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108764.P8602825065750135613

/-! ## A108764.P6117937625554617077

`filter[A212554(n+1), A064911(#)]`
-/

namespace A108764.P6117937625554617077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A108764.P6117937625554617077

/-! ## A108764.P6757417656621597566

`∩[A001358(n+1), A212554(n+1)]`
-/

namespace A108764.P6757417656621597566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A108764.P6757417656621597566

/-! ## A108764.P1395772122217702899

`record[A032742(A212582(floor(n/2)+1))]`
-/

namespace A108764.P1395772122217702899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A212582 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108764.P1395772122217702899

/-! ## A108764.P13753478379315704148

`record[A025480(A212582(A008619(n)))]`
-/

namespace A108764.P13753478379315704148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A212582 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108764.P13753478379315704148

/-! ## A108764.P10458959628988452698

`record[A025480(A212582(A080513(n)))]`
-/

namespace A108764.P10458959628988452698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A212582 (A080513 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108764.P10458959628988452698

/-! ## A108764.P16545466511739403704

`A000720(record[A073846(A212582(n+1))])`
-/

namespace A108764.P16545466511739403704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A212582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108764.P16545466511739403704

/-! ## A108764.P11373584133958474159

`A000720(record[A082500(A212582(n+1))])`
-/

namespace A108764.P11373584133958474159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A212582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A108764.P11373584133958474159

/-!
# A108765: Expansion of g.f. (1 - x + x^2)/((1-3*x)*(x-1)^2).

The programs for A108765, the canonical program `A108765.P12933998016334532285` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108765 has offset 0).

The definition of A108765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2)/(1-5x+7x^2-3x^3))` (program `A108765.P12933998016334532285`, by `A108765.P12933998016334532285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108765.P14640467559432999981

`3*a(n-1)+n` with `a(0)=1`
-/

namespace A108765.P14640467559432999981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + n

end

end A108765.P14640467559432999981

namespace A108765

/-- `3*a(n-1)+n` -/
def P14640467559432999981.Spec : Prop :=
  ∀ n, (P14640467559432999981.a n : ℤ) = A108765 n

end A108765

/-! ## A108765.P12933998016334532285

`ogf((1-x+x^2)/(1-5x+7x^2-3x^3))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108765

/-- `ogf((1-x+x^2)/(1-5x+7x^2-3x^3))` -/
def P12933998016334532285.Spec : Prop :=
  ∀ n, P12933998016334532285.a n = A108765 n

theorem P12933998016334532285.correct : P12933998016334532285.Spec := by
  intro n
  simp only [A108765]

end A108765

/-! ## A108765.P7758463192606684763

`(7*3^n-2*n-3)/4`
-/

namespace A108765.P7758463192606684763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 3 ^ n : ℤ) - (2 * n : ℤ) - 3 : ℚ) / 4

end

end A108765.P7758463192606684763

namespace A108765

/-- `(7*3^n-2*n-3)/4` -/
def P7758463192606684763.Spec : Prop :=
  ∀ n, P7758463192606684763.a n = (A108765 n : ℚ)

end A108765

/-! ## A108765.P6929542034033529255

`∑[ogf((1-x+x^2)/(1-4x+3x^2))]`
-/

namespace A108765.P6929542034033529255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108765.P6929542034033529255

namespace A108765

/-- `∑[ogf((1-x+x^2)/(1-4x+3x^2))]` -/
def P6929542034033529255.Spec : Prop :=
  ∀ n, P6929542034033529255.a n = A108765 n

end A108765

/-! ## A108765.P10029743112772977461

`∑[∑[3*a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A108765.P10029743112772977461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108765.P10029743112772977461

namespace A108765

/-- `∑[∑[3*a(n-1)]]` -/
def P10029743112772977461.Spec : Prop :=
  ∀ n, (P10029743112772977461.a n : ℤ) = A108765 n

end A108765

/-! ## A108765.P12171101687092592433

`n-floor(-(3*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A108765.P12171101687092592433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (-(3 * a (n - 1)))

end

end A108765.P12171101687092592433

namespace A108765

/-- `n-floor(-(3*a(n-1)))` -/
def P12171101687092592433.Spec : Prop :=
  ∀ n, P12171101687092592433.a n = A108765 n

end A108765

/-! ## A108765.P14641557433826076480

`n-ceil(-(3*a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A108765.P14641557433826076480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (-(3 * a (n - 1)))

end

end A108765.P14641557433826076480

namespace A108765

/-- `n-ceil(-(3*a(n-1)))` -/
def P14641557433826076480.Spec : Prop :=
  ∀ n, P14641557433826076480.a n = A108765 n

end A108765

/-! ## A108765.P16260191055862108054

`n-round(-(3*a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A108765.P16260191055862108054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (-(3 * a (n - 1)))

end

end A108765.P16260191055862108054

namespace A108765

/-- `n-round(-(3*a(n-1)))` -/
def P16260191055862108054.Spec : Prop :=
  ∀ n, P16260191055862108054.a n = A108765 n

end A108765

/-! ## A108765.P4746481398768281873

`3-(3*(1-a(n-1))-n)` with `a(0)=1`
-/

namespace A108765.P4746481398768281873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - (3 * (1 - a (n - 1)) - (n : ℤ))

end

end A108765.P4746481398768281873

namespace A108765

/-- `3-(3*(1-a(n-1))-n)` -/
def P4746481398768281873.Spec : Prop :=
  ∀ n, P4746481398768281873.a n = A108765 n

end A108765

/-! ## A108765.P16474232160648632061

`a(n-1)/(1-2/3)+n` with `a(0)=1`
-/

namespace A108765.P16474232160648632061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (2 : ℚ) / 3) + (n : ℚ)

end

end A108765.P16474232160648632061

namespace A108765

/-- `a(n-1)/(1-2/3)+n` -/
def P16474232160648632061.Spec : Prop :=
  ∀ n, P16474232160648632061.a n = (A108765 n : ℚ)

end A108765

/-! ## A108765.P6060243310670454968

`n-a(n-1)/(2/3-1)` with `a(0)=1`
-/

namespace A108765.P6060243310670454968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) - a (n - 1) / ((2 : ℚ) / 3 - 1)

end

end A108765.P6060243310670454968

namespace A108765

/-- `n-a(n-1)/(2/3-1)` -/
def P6060243310670454968.Spec : Prop :=
  ∀ n, P6060243310670454968.a n = (A108765 n : ℚ)

end A108765

/-! ## A108765.P23231001755283054

`a(n-1)+a(n-1)+a(n-1)+n` with `a(0)=1`
-/

namespace A108765.P23231001755283054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + n))

end

end A108765.P23231001755283054

namespace A108765

/-- `a(n-1)+a(n-1)+a(n-1)+n` -/
def P23231001755283054.Spec : Prop :=
  ∀ n, (P23231001755283054.a n : ℤ) = A108765 n

end A108765

/-! ## A108765.P12802400540212192901

`1-floor(1-a(n-1)-a(n-1)-a(n-1)-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A108765.P12802400540212192901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (1 - a (n - 1) - a (n - 1) - a (n - 1) - (n : ℤ))

end

end A108765.P12802400540212192901

namespace A108765

/-- `1-floor(1-a(n-1)-a(n-1)-a(n-1)-n)` -/
def P12802400540212192901.Spec : Prop :=
  ∀ n, P12802400540212192901.a n = A108765 n

end A108765

/-! ## A108765.P4856258556040603945

`A103177(n)-(n+2)`
-/

namespace A108765.P4856258556040603945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103177 n - (n + 2 : ℤ)

end

end A108765.P4856258556040603945

namespace A108765

/-- `A103177(n)-(n+2)` -/
def P4856258556040603945.Spec : Prop :=
  ∀ n, P4856258556040603945.a n = A108765 n

end A108765

/-! ## A108765.P5081608241695038295

`∑[∑[A141495(n)]]-n`
-/

namespace A108765.P5081608241695038295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A108765.P5081608241695038295

namespace A108765

/-- `∑[∑[A141495(n)]]-n` -/
def P5081608241695038295.Spec : Prop :=
  ∀ n, P5081608241695038295.a n = A108765 n

end A108765

/-! ## A108765.P14945264770066783932

`∑[A003462(n)]+3^n`
-/

namespace A108765.P14945264770066783932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (3 ^ n : ℤ)

end

end A108765.P14945264770066783932

namespace A108765

/-- `∑[A003462(n)]+3^n` -/
def P14945264770066783932.Spec : Prop :=
  ∀ n, P14945264770066783932.a n = A108765 n

end A108765

/-! ## A108765.P15441657943310020156

`A237930(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A108765.P15441657943310020156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A237930 (n - 1) + a (n - 1)

end

end A108765.P15441657943310020156

namespace A108765

/-- `A237930(n-1)+a(n-1)` -/
def P15441657943310020156.Spec : Prop :=
  ∀ n, P15441657943310020156.a n = A108765 n

end A108765

/-! ## A108765.P15448034783297828904

`∑{#}[n, C(n, #)*A125176(#+1)]`
-/

namespace A108765.P15448034783297828904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A125176 (k + 1)

end

end A108765.P15448034783297828904

namespace A108765

/-- `∑{#}[n, C(n, #)*A125176(#+1)]` -/
def P15448034783297828904.Spec : Prop :=
  ∀ n, P15448034783297828904.a n = A108765 n

end A108765

/-! ## A108765.P11235369038041076488

`A000244(n)+∑[(3^n-1)/2]`
-/

namespace A108765.P11235369038041076488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108765.P11235369038041076488

namespace A108765

/-- `A000244(n)+∑[(3^n-1)/2]` -/
def P11235369038041076488.Spec : Prop :=
  ∀ n, P11235369038041076488.a n = (A108765 n : ℚ)

end A108765

/-! ## A108765.P13434423711310149405

`A244762(n)+A003462(n)`
-/

namespace A108765.P13434423711310149405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244762 n + A003462 n

end

end A108765.P13434423711310149405

namespace A108765

/-- `A244762(n)+A003462(n)` -/
def P13434423711310149405.Spec : Prop :=
  ∀ n, P13434423711310149405.a n = A108765 n

end A108765

/-!
# A108766: a(n) = A007290(n+2) - 1 = 2*C(n+2,3) - 1.

The programs for A108766, the canonical program `A108766.P10464298483220605690` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108766 has offset 0).

The definition of A108766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(n+2, 3)-1` (program `A108766.P8335760439559378057`, by `A108766.P8335760439559378057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108766.P8335760439559378057

`2*C(n+2, 3)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108766.P8335760439559378057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 2) 3 : ℤ) - 1

end

end A108766.P8335760439559378057

namespace A108766

/-- `2*C(n+2, 3)-1` -/
def P8335760439559378057.Spec : Prop :=
  ∀ n, P8335760439559378057.a n = A108766 n

theorem P8335760439559378057.correct : P8335760439559378057.Spec := by
  intro n
  simp only [A108766, Nat.add_sub_cancel, A108766.P8335760439559378057.a, A108766.P10464298483220605690.a, A007290, A007290.P9295456119697579818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A108766

/-! ## A108766.P13359274318797440263

`a(n-1)+n²+n` with `a(0)=-1`
-/

namespace A108766.P13359274318797440263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + (n ^ 2 : ℤ) + (n : ℤ)

end

end A108766.P13359274318797440263

namespace A108766

/-- `a(n-1)+n²+n` -/
def P13359274318797440263.Spec : Prop :=
  ∀ n, P13359274318797440263.a n = A108766 n

end A108766

/-! ## A108766.P4999074757100464451

`ogf((-1+5x-3x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A108766.P4999074757100464451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 5, -3, 1] [1, -4, 6, -4, 1] n

end

end A108766.P4999074757100464451

namespace A108766

/-- `ogf((-1+5x-3x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P4999074757100464451.Spec : Prop :=
  ∀ n, P4999074757100464451.a n = A108766 n

end A108766

/-! ## A108766.P15775896216220829050

`n*(n+2)*(n+1)/3-1`
-/

namespace A108766.P15775896216220829050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) * (n + 1) : ℚ) / 3 - 1

end

end A108766.P15775896216220829050

namespace A108766

/-- `n*(n+2)*(n+1)/3-1` -/
def P15775896216220829050.Spec : Prop :=
  ∀ n, P15775896216220829050.a n = (A108766 n : ℚ)

theorem P15775896216220829050.correct : P15775896216220829050.Spec := by
  intro n
  simp only [A108766, Nat.add_sub_cancel, A108766.P15775896216220829050.a, A108766.P10464298483220605690.a, A007290, A007290.P9295456119697579818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A108766

/-! ## A108766.P10464298483220605690

`A007290(n+2)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108766

/-- `A007290(n+2)-1` -/
def P10464298483220605690.Spec : Prop :=
  ∀ n, P10464298483220605690.a n = A108766 n

theorem P10464298483220605690.correct : P10464298483220605690.Spec := by
  intro n
  simp only [A108766]

end A108766

/-! ## A108766.P15073415981673757455

`or(1, ∑[∑[2*n]]-1)`
-/

namespace A108766.P15073415981673757455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A108766.P15073415981673757455

namespace A108766

/-- `or(1, ∑[∑[2*n]]-1)` -/
def P15073415981673757455.Spec : Prop :=
  ∀ n, P15073415981673757455.a n = A108766 n

end A108766

/-! ## A108766.P11216871676556304263

`-or(1, ∑[∑[-(2*n)]])`
-/

namespace A108766.P11216871676556304263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108766.P11216871676556304263

namespace A108766

/-- `-or(1, ∑[∑[-(2*n)]])` -/
def P11216871676556304263.Spec : Prop :=
  ∀ n, P11216871676556304263.a n = A108766 n

end A108766

/-! ## A108766.P12037816237063405392

`-xor(1, ∑[∑[-(2*n)]])`
-/

namespace A108766.P12037816237063405392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108766.P12037816237063405392

namespace A108766

/-- `-xor(1, ∑[∑[-(2*n)]])` -/
def P12037816237063405392.Spec : Prop :=
  ∀ n, P12037816237063405392.a n = A108766 n

end A108766

/-! ## A108766.P15356399520176390159

`∑[ceil(n/acot(n+1))-1]`
-/

namespace A108766.P15356399520176390159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108766.P15356399520176390159

namespace A108766

/-- `∑[ceil(n/acot(n+1))-1]` -/
def P15356399520176390159.Spec : Prop :=
  ∀ n, P15356399520176390159.a n = A108766 n

end A108766

/-! ## A108766.P9442172438534191542

`a(n-1)+n²+n` with `a(0)=-1`
-/

namespace A108766.P9442172438534191542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + (n ^ 2 + n : ℤ)

end

end A108766.P9442172438534191542

namespace A108766

/-- `a(n-1)+n²+n` -/
def P9442172438534191542.Spec : Prop :=
  ∀ n, P9442172438534191542.a n = A108766 n

end A108766

/-! ## A108766.P8979142308539644556

`∑[n²-C(2, n+2)+n]`
-/

namespace A108766.P8979142308539644556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.choose 2 (n + 2) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108766.P8979142308539644556

namespace A108766

/-- `∑[n²-C(2, n+2)+n]` -/
def P8979142308539644556.Spec : Prop :=
  ∀ n, P8979142308539644556.a n = A108766 n

end A108766

/-! ## A108766.P8006090729871495576

`∑[∑[a(n-1)+2]]` with `a(0)=-1, a(1)=3, a(2)=4`
-/

namespace A108766.P8006090729871495576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3, 4] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108766.P8006090729871495576

namespace A108766

/-- `∑[∑[a(n-1)+2]]` -/
def P8006090729871495576.Spec : Prop :=
  ∀ n, P8006090729871495576.a n = A108766 n

end A108766

/-! ## A108766.P12272577248632921843

`xor(-1, ∑[n+1-(n+1)²])`
-/

namespace A108766.P12272577248632921843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A108766.P12272577248632921843

namespace A108766

/-- `xor(-1, ∑[n+1-(n+1)²])` -/
def P12272577248632921843.Spec : Prop :=
  ∀ n, P12272577248632921843.a n = A108766 n

end A108766

/-! ## A108766.P9520197501567041628

`∑[lcm(n, n+1)-C(2, n+2)]`
-/

namespace A108766.P9520197501567041628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108766.P9520197501567041628

namespace A108766

/-- `∑[lcm(n, n+1)-C(2, n+2)]` -/
def P9520197501567041628.Spec : Prop :=
  ∀ n, P9520197501567041628.a n = A108766 n

end A108766

/-! ## A108766.P16897514986849998190

`n-∑[a(n-1)-n-n]` with `a(0)=1`
-/

namespace A108766.P16897514986849998190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108766.P16897514986849998190

namespace A108766

/-- `n-∑[a(n-1)-n-n]` -/
def P16897514986849998190.Spec : Prop :=
  ∀ n, P16897514986849998190.a n = A108766 n

end A108766

/-! ## A108766.P3852215633433895245

`floor(a(n-1)+n*(n+1))` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A108766.P3852215633433895245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + (n * (n + 1) : ℤ)

end

end A108766.P3852215633433895245

namespace A108766

/-- `floor(a(n-1)+n*(n+1))` -/
def P3852215633433895245.Spec : Prop :=
  ∀ n, P3852215633433895245.a n = A108766 n

end A108766

/-! ## A108766.P17582594879756887788

`∑[(n+1)²%((n+1)^10)-(n+1)]`
-/

namespace A108766.P17582594879756887788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 % (n + 1) ^ 10 : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108766.P17582594879756887788

namespace A108766

/-- `∑[(n+1)²%((n+1)^10)-(n+1)]` -/
def P17582594879756887788.Spec : Prop :=
  ∀ n, P17582594879756887788.a n = A108766 n

end A108766

/-! ## A108766.P18337914245898778838

`(a(n-1)/n+n+1)/n^(-1)` with `a(0)=-1`
-/

namespace A108766.P18337914245898778838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n a =>
  (a (n - 1) / (n : ℚ) + (n + 1 : ℚ)) / (n : ℚ) ^ (-1 : ℤ)

end

end A108766.P18337914245898778838

namespace A108766

/-- `(a(n-1)/n+n+1)/n^(-1)` -/
def P18337914245898778838.Spec : Prop :=
  ∀ n, P18337914245898778838.a n = (A108766 n : ℚ)

end A108766

/-! ## A108766.P3031040993810672159

`(A210440(n)-2)/2`
-/

namespace A108766.P3031040993810672159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210440 n - 2 : ℚ) / 2

end

end A108766.P3031040993810672159

namespace A108766

/-- `(A210440(n)-2)/2` -/
def P3031040993810672159.Spec : Prop :=
  ∀ n, P3031040993810672159.a n = (A108766 n : ℚ)

end A108766

/-! ## A108766.P11966763592091706224

`(A273316(n)-5)/4`
-/

namespace A108766.P11966763592091706224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273316 n - 5 : ℚ) / 4

end

end A108766.P11966763592091706224

namespace A108766

/-- `(A273316(n)-5)/4` -/
def P11966763592091706224.Spec : Prop :=
  ∀ n, P11966763592091706224.a n = (A108766 n : ℚ)

end A108766

/-!
# A108767: Triangle read by rows: T(n, k) is number of paths from (0, 0) to (3*n, 0) that stay in the first quadrant (but may touch the horizontal axis), consisting of steps u = (1, 1), d = (1, -2) and have k peaks (i.e., ud's).

The programs for A108767, the canonical program `A108767.P1028150486632094226` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108767 has offset 1).

The definition of A108767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A108767.P1028150486632094226

`C(row(n)+1, col(n)+1)*C(2*(row(n)+1), col(n))/(row(n)+1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A108767

/-- `C(row(n)+1, col(n)+1)*C(2*(row(n)+1), col(n))/(row(n)+1)` -/
def P1028150486632094226.Spec : Prop :=
  ∀ n, P1028150486632094226.a n = (A108767 (n + 1) : ℚ)

end A108767

/-! ## A108767.P10790403912614065245

`A120986(A061579(n))`
-/

namespace A108767.P10790403912614065245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120986 (A061579 n).toNat

end

end A108767.P10790403912614065245

namespace A108767

/-- `A120986(A061579(n))` -/
def P10790403912614065245.Spec : Prop :=
  ∀ n, P10790403912614065245.a n = A108767 (n + 1)

end A108767

/-! ## A108767.P10800177729764547733

`A120986(A114327(n)+n)`
-/

namespace A108767.P10800177729764547733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120986 (A114327 n + (n : ℤ)).toNat

end

end A108767.P10800177729764547733

namespace A108767

/-- `A120986(A114327(n)+n)` -/
def P10800177729764547733.Spec : Prop :=
  ∀ n, P10800177729764547733.a n = A108767 (n + 1)

end A108767

/-! ## A108767.P12091188514552292114

`A120986(A038722(n+1)-1)`
-/

namespace A108767.P12091188514552292114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120986 (A038722 (n + 1) - 1).toNat

end

end A108767.P12091188514552292114

namespace A108767

/-- `A120986(A038722(n+1)-1)` -/
def P12091188514552292114.Spec : Prop :=
  ∀ n, P12091188514552292114.a n = A108767 (n + 1)

end A108767

/-! ## A108767.P7207591187625386204

`A120986(A057944(n)+A025581(n))`
-/

namespace A108767.P7207591187625386204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120986 (A057944 n + A025581 n).toNat

end

end A108767.P7207591187625386204

namespace A108767

/-- `A120986(A057944(n)+A025581(n))` -/
def P7207591187625386204.Spec : Prop :=
  ∀ n, P7207591187625386204.a n = A108767 (n + 1)

end A108767

/-! ## A108767.P6118375831039999968

`A120986(∑[A005843(n)]%A014132(n+1))`
-/

namespace A108767.P6118375831039999968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120986 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A014132 (n + 1))).toNat

end

end A108767.P6118375831039999968

namespace A108767

/-- `A120986(∑[A005843(n)]%A014132(n+1))` -/
def P6118375831039999968.Spec : Prop :=
  ∀ n, P6118375831039999968.a n = A108767 (n + 1)

end A108767

/-! ## A108767.P2089068564211860343

`A394872(n)/A059268(n)`
-/

namespace A108767.P2089068564211860343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394872 n : ℚ) / (A059268 n : ℚ)

end

end A108767.P2089068564211860343

namespace A108767

/-- `A394872(n)/A059268(n)` -/
def P2089068564211860343.Spec : Prop :=
  ∀ n, P2089068564211860343.a n = (A108767 (n + 1) : ℚ)

end A108767

/-! ## A108767.P13656148341585182345

`A089503(n+1)/A166350(n+1)`
-/

namespace A108767.P13656148341585182345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089503 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A108767.P13656148341585182345

namespace A108767

/-- `A089503(n+1)/A166350(n+1)` -/
def P13656148341585182345.Spec : Prop :=
  ∀ n, P13656148341585182345.a n = (A108767 (n + 1) : ℚ)

end A108767

/-! ## A108767.P15628982184682545287

`A120986(A005843(∑[n])%A014132(n+1))`
-/

namespace A108767.P15628982184682545287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120986 (Int.tmod (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)) (A014132 (n + 1))).toNat

end

end A108767.P15628982184682545287

namespace A108767

/-- `A120986(A005843(∑[n])%A014132(n+1))` -/
def P15628982184682545287.Spec : Prop :=
  ∀ n, P15628982184682545287.a n = A108767 (n + 1)

end A108767

/-!
# A108768: Primes that appear in the sequence p:=x^2+x+1, sieved with a quadratic sieve construction.

The programs for A108768, there is no canonical definition to state claims against.
-/

/-! ## A108768.P4639054286583042152

`p?[A033677(n²+1+n)]`
-/

namespace A108768.P4639054286583042152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108768.P4639054286583042152

/-! ## A108768.P12682264663506423106

`p?[A140271(n²+1+n)]`
-/

namespace A108768.P12682264663506423106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108768.P12682264663506423106

/-! ## A108768.P6939786262012415403

`p?[A348582(n²+1+n)]`
-/

namespace A108768.P6939786262012415403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348582 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108768.P6939786262012415403

/-! ## A108768.P18358311189047349704

`p?[A354933(n²+1+n)]`
-/

namespace A108768.P18358311189047349704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108768.P18358311189047349704

/-! ## A108768.P7181120990376126144

`A081256(lt[n, A081256(n+2)]+2)`
-/

namespace A108768.P7181120990376126144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A108768.P7181120990376126144

/-! ## A108768.P7088885893528536246

`p?[A033677(n+1)*A097285(n+1)]`
-/

namespace A108768.P7088885893528536246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A097285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108768.P7088885893528536246

/-! ## A108768.P10606052311000067393

`p?[A004741(n+1)*A140271(n+1)]`
-/

namespace A108768.P10606052311000067393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) * A140271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108768.P10606052311000067393

/-!
# A108769: Numbers m such that m^2 + (m+1)^2 is a semiprime.

The programs for A108769, the canonical program `A108769.P16543093648704500764` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108769 has offset 1).

The definition of A108769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108769.P16543093648704500764

`eq[1, A309332(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A108769

/-- `eq[1, A309332(n+1)]+1` -/
def P16543093648704500764.Spec : Prop :=
  ∀ n, (P16543093648704500764.a n : ℤ) = A108769 (n + 1)

theorem P16543093648704500764.correct : P16543093648704500764.Spec := by
  intro n
  simp only [A108769, Nat.add_sub_cancel]

end A108769

/-! ## A108769.P1412457539841479224

`eq[1, A309332(A028310(n))]`
-/

namespace A108769.P1412457539841479224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309332 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108769.P1412457539841479224

namespace A108769

/-- `eq[1, A309332(A028310(n))]` -/
def P1412457539841479224.Spec : Prop :=
  ∀ n, (P1412457539841479224.a n : ℤ) = A108769 (n + 1)

end A108769

/-! ## A108769.P14897057485426957651

`eq[2, A000010(A278244(n))]`
-/

namespace A108769.P14897057485426957651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A278244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108769.P14897057485426957651

namespace A108769

/-- `eq[2, A000010(A278244(n))]` -/
def P14897057485426957651.Spec : Prop :=
  ∀ n, (P14897057485426957651.a n : ℤ) = A108769 (n + 1)

end A108769

/-! ## A108769.P8687866483551593670

`eq[A028949(A278244(n)+2), A278244(n)]`
-/

namespace A108769.P8687866483551593670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (A278244 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108769.P8687866483551593670

namespace A108769

/-- `eq[A028949(A278244(n)+2), A278244(n)]` -/
def P8687866483551593670.Spec : Prop :=
  ∀ n, (P8687866483551593670.a n : ℤ) = A108769 (n + 1)

end A108769

/-! ## A108769.P2407202168277186566

`eq[3, A193330(2*n+1)]`
-/

namespace A108769.P2407202168277186566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108769.P2407202168277186566

namespace A108769

/-- `eq[3, A193330(2*n+1)]` -/
def P2407202168277186566.Spec : Prop :=
  ∀ n, (P2407202168277186566.a n : ℤ) = A108769 (n + 1)

end A108769

/-! ## A108769.P6382904638463238233

`eq[1, A004526(A147809(2*n+1))]`
-/

namespace A108769.P6382904638463238233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A147809 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108769.P6382904638463238233

namespace A108769

/-- `eq[1, A004526(A147809(2*n+1))]` -/
def P6382904638463238233.Spec : Prop :=
  ∀ n, (P6382904638463238233.a n : ℤ) = A108769 (n + 1)

end A108769

/-! ## A108769.P10098782593167778025

`eq[1, A051718(A193432(2*n+1))]`
-/

namespace A108769.P10098782593167778025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051718 (A193432 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108769.P10098782593167778025

namespace A108769

/-- `eq[1, A051718(A193432(2*n+1))]` -/
def P10098782593167778025.Spec : Prop :=
  ∀ n, (P10098782593167778025.a n : ℤ) = A108769 (n + 1)

end A108769

/-! ## A108769.P17986934527621608568

`eq[1, A266123(A261609(2*n+1))]`
-/

namespace A108769.P17986934527621608568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266123 (A261609 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108769.P17986934527621608568

namespace A108769

/-- `eq[1, A266123(A261609(2*n+1))]` -/
def P17986934527621608568.Spec : Prop :=
  ∀ n, (P17986934527621608568.a n : ℤ) = A108769 (n + 1)

end A108769

/-! ## A108769.P14356572300863126625

`eq[3, A001222(A278162(2*n+1))]`
-/

namespace A108769.P14356572300863126625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278162 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108769.P14356572300863126625

namespace A108769

/-- `eq[3, A001222(A278162(2*n+1))]` -/
def P14356572300863126625.Spec : Prop :=
  ∀ n, (P14356572300863126625.a n : ℤ) = A108769 (n + 1)

end A108769

/-! ## A108769.P4678142739935667496

`eq[2, A096198(A261609(2*n+1)+1)]`
-/

namespace A108769.P4678142739935667496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096198 (A261609 (2 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108769.P4678142739935667496

namespace A108769

/-- `eq[2, A096198(A261609(2*n+1)+1)]` -/
def P4678142739935667496.Spec : Prop :=
  ∀ n, (P4678142739935667496.a n : ℤ) = A108769 (n + 1)

end A108769

/-! ## A108769.P926394027538905650

`eq[2, ∑{e}[∑[4*n]+1, #]]`
-/

namespace A108769.P926394027538905650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108769.P926394027538905650

namespace A108769

/-- `eq[2, ∑{e}[∑[4*n]+1, #]]` -/
def P926394027538905650.Spec : Prop :=
  ∀ n, (P926394027538905650.a n : ℤ) = A108769 (n + 1)

end A108769

/-!
# A108771: Numbers of the form (12^i)*(13^j), with i, j >= 0.

The programs for A108771, there is no canonical definition to state claims against.
-/

/-! ## A108771.P9314331713868140847

`A262616(n)*A297002(A232646(n+1))`
-/

namespace A108771.P9314331713868140847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n * A297002 (A232646 (n + 1)).toNat

end

end A108771.P9314331713868140847

/-! ## A108771.P1309584397555248103

`A130321(n)²*A297002(A232646(n+1))`
-/

namespace A108771.P1309584397555248103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A297002 (A232646 (n + 1)).toNat

end

end A108771.P1309584397555248103

/-! ## A108771.P9091210173101653777

`(A038208(n)/A013609(n))²*A297002(A232646(n+1))`
-/

namespace A108771.P9091210173101653777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038208 n : ℚ) / (A013609 n : ℚ)) ^ 2 * (A297002 (A232646 (n + 1)).toNat : ℚ)

end

end A108771.P9091210173101653777

/-! ## A108771.P4767086159088401200

`A262616(n)*A332818(A036565(n))`
-/

namespace A108771.P4767086159088401200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n * A332818 (A036565 n).toNat

end

end A108771.P4767086159088401200

/-! ## A108771.P15673122713412357502

`A130321(n)²*A332818(A036565(n))`
-/

namespace A108771.P15673122713412357502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A332818 (A036565 n).toNat

end

end A108771.P15673122713412357502

/-!
# A108772: ( (Theta series of E_8)^(1/8) - (theta series of Leech lattice)^(1/24) ) / 30.

The programs for A108772, there is no canonical definition to state claims against.
-/

/-! ## A108772.P3522178515369511001

`(A108091(n)-A108093(n))/30`
-/

namespace A108772.P3522178515369511001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108091 n - A108093 n : ℚ) / 30

end

end A108772.P3522178515369511001

/-!
# A108773: Concatenation of n and the sum of the digits of n.

The programs for A108773, there is no canonical definition to state claims against.
-/

/-! ## A108773.P11167910403199087170

`eq[dr(A108782(n)), A076313(n)]`
-/

namespace A108773.P11167910403199087170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A108782 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108773.P11167910403199087170

/-! ## A108773.P14152302428260026110

`eq[11*floor(n/10)-n, A066568(A000196(n))]`
-/

namespace A108773.P14152302428260026110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066568 (A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108773.P14152302428260026110

/-! ## A108773.P9110549834060342008

`A062028(A008592(n))%A265481(n+5)`
-/

namespace A108773.P9110549834060342008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062028 (A008592 n).toNat) (A265481 (n + 5))

end

end A108773.P9110549834060342008

/-! ## A108773.P13016419110281882778

`A061470(n+1)-A378645(A027895(n+1))`
-/

namespace A108773.P13016419110281882778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061470 (n + 1) - A378645 (A027895 (n + 1)).toNat

end

end A108773.P13016419110281882778

/-! ## A108773.P16429050591574438733

`A061470(n+1)+A033999(A005179(n+1))`
-/

namespace A108773.P16429050591574438733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061470 (n + 1) + A033999 (A005179 (n + 1)).toNat

end

end A108773.P16429050591574438733

/-!
# A108774: Sum of the squares of numbers of chess tableaux over all partitions of n.

The programs for A108774, there is no canonical definition to state claims against.
-/

/-! ## A108774.P17178733593383068407

`a(n-2)*A324662(a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A108774.P17178733593383068407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A324662 (a (n - 1) + 1).toNat

end

end A108774.P17178733593383068407

/-! ## A108774.P11125367017465785989

`A262689(∏[∑[A216228(n)]])`
-/

namespace A108774.P11125367017465785989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216228 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108774.P11125367017465785989

/-! ## A108774.P17676482361616575491

`A262689(∏[∑[A334218(n)]])`
-/

namespace A108774.P17676482361616575491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108774.P17676482361616575491

/-! ## A108774.P8296552058105619035

`A262689(∏[A070172(n+1)])`
-/

namespace A108774.P8296552058105619035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108774.P8296552058105619035

/-! ## A108774.P1186578865788277078

`A262689(∏[A054100(ceil(n/2))])`
-/

namespace A108774.P1186578865788277078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054100 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108774.P1186578865788277078

/-!
# A108775: a(n) = floor(sigma(n)/n).

The programs for A108775, the canonical program `A108775.P1841458248233577485` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108775 has offset 1).

The definition of A108775 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000203(n+1)/(n+1))` (program `A108775.P1841458248233577485`, by `A108775.P1841458248233577485.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A108775.P1841458248233577485

`floor(A000203(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A108775

/-- `floor(A000203(n+1)/(n+1))` -/
def P1841458248233577485.Spec : Prop :=
  ∀ n, P1841458248233577485.a n = A108775 (n + 1)

theorem P1841458248233577485.correct : P1841458248233577485.Spec := by
  intro n
  simp only [A108775, Nat.add_sub_cancel]

end A108775

/-! ## A108775.P7069508120064595600

`floor(A017665(n+1)/A017666(n+1))`
-/

namespace A108775.P7069508120064595600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017665 (n + 1) : ℚ) / (A017666 (n + 1) : ℚ)⌋

end

end A108775.P7069508120064595600

namespace A108775

/-- `floor(A017665(n+1)/A017666(n+1))` -/
def P7069508120064595600.Spec : Prop :=
  ∀ n, P7069508120064595600.a n = A108775 (n + 1)

end A108775

/-! ## A108775.P750337842140413859

`floor(∑{d}[n+1, 1/#])`
-/

namespace A108775.P750337842140413859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)⌋

end

end A108775.P750337842140413859

namespace A108775

/-- `floor(∑{d}[n+1, 1/#])` -/
def P750337842140413859.Spec : Prop :=
  ∀ n, P750337842140413859.a n = A108775 (n + 1)

end A108775

/-! ## A108775.P8775294875143567770

`ceil((∑{d}[n+1, #]-n)/(n+1))`
-/

namespace A108775.P8775294875143567770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A108775.P8775294875143567770

namespace A108775

/-- `ceil((∑{d}[n+1, #]-n)/(n+1))` -/
def P8775294875143567770.Spec : Prop :=
  ∀ n, P8775294875143567770.a n = A108775 (n + 1)

end A108775

/-! ## A108775.P11125399258355770617

`floor(Δ[A160664(n)]/(n+1))`
-/

namespace A108775.P11125399258355770617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A108775.P11125399258355770617

namespace A108775

/-- `floor(Δ[A160664(n)]/(n+1))` -/
def P11125399258355770617.Spec : Prop :=
  ∀ n, P11125399258355770617.a n = A108775 (n + 1)

end A108775

/-! ## A108775.P10389078403200458058

`floor(abs(A143348(n+1))/(n+1))`
-/

namespace A108775.P10389078403200458058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|A143348 (n + 1)| : ℚ) / (n + 1 : ℚ)⌋

end

end A108775.P10389078403200458058

namespace A108775

/-- `floor(abs(A143348(n+1))/(n+1))` -/
def P10389078403200458058.Spec : Prop :=
  ∀ n, P10389078403200458058.a n = A108775 (n + 1)

end A108775

/-! ## A108775.P17380268149323062495

`floor(sqrt(A072861(n+1))/(n+1))`
-/

namespace A108775.P17380268149323062495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A072861 (n + 1) : ℝ) / (n + 1 : ℝ)⌋

end

end A108775.P17380268149323062495

namespace A108775

/-- `floor(sqrt(A072861(n+1))/(n+1))` -/
def P17380268149323062495.Spec : Prop :=
  ∀ n, P17380268149323062495.a n = A108775 (n + 1)

end A108775

/-! ## A108775.P3894161159713559331

`floor(A001065(n+1)/(n+1))+1`
-/

namespace A108775.P3894161159713559331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001065 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A108775.P3894161159713559331

namespace A108775

/-- `floor(A001065(n+1)/(n+1))+1` -/
def P3894161159713559331.Spec : Prop :=
  ∀ n, P3894161159713559331.a n = A108775 (n + 1)

end A108775

/-! ## A108775.P11490516331435720487

`floor((A039653(n+1)+1)/(n+1))`
-/

namespace A108775.P11490516331435720487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039653 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A108775.P11490516331435720487

namespace A108775

/-- `floor((A039653(n+1)+1)/(n+1))` -/
def P11490516331435720487.Spec : Prop :=
  ∀ n, P11490516331435720487.a n = A108775 (n + 1)

end A108775

/-! ## A108775.P6743808510581847526

`floor((A088580(n+1)-1)/(n+1))`
-/

namespace A108775.P6743808510581847526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088580 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A108775.P6743808510581847526

namespace A108775

/-- `floor((A088580(n+1)-1)/(n+1))` -/
def P6743808510581847526.Spec : Prop :=
  ∀ n, P6743808510581847526.a n = A108775 (n + 1)

theorem P6743808510581847526.correct : P6743808510581847526.Spec := by
  intro n
  simp only [A108775, Nat.add_sub_cancel, A108775.P6743808510581847526.a, A108775.P1841458248233577485.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108775

/-! ## A108775.P15452610248446055021

`floor((A155085(n+1)-(n+1))/(n+1))`
-/

namespace A108775.P15452610248446055021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155085 (n + 1) - (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A108775.P15452610248446055021

namespace A108775

/-- `floor((A155085(n+1)-(n+1))/(n+1))` -/
def P15452610248446055021.Spec : Prop :=
  ∀ n, P15452610248446055021.a n = A108775 (n + 1)

theorem P15452610248446055021.correct : P15452610248446055021.Spec := by
  intro n
  simp only [A108775, Nat.add_sub_cancel, A108775.P15452610248446055021.a, A108775.P1841458248233577485.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A108775

/-! ## A108775.P7290819941413409965

`A000045(ceil((A000203(n+1)+1)/(n+1)))`
-/

namespace A108775.P7290819941413409965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(A000203 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A108775.P7290819941413409965

namespace A108775

/-- `A000045(ceil((A000203(n+1)+1)/(n+1)))` -/
def P7290819941413409965.Spec : Prop :=
  ∀ n, P7290819941413409965.a n = A108775 (n + 1)

end A108775

/-! ## A108775.P13251976684127695349

`A000041(ceil((A000203(n+1)-n)/(n+1)))`
-/

namespace A108775.P13251976684127695349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌈(A000203 (n + 1) - (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A108775.P13251976684127695349

namespace A108775

/-- `A000041(ceil((A000203(n+1)-n)/(n+1)))` -/
def P13251976684127695349.Spec : Prop :=
  ∀ n, P13251976684127695349.a n = A108775 (n + 1)

end A108775

/-! ## A108775.P534814481637882334

`gcd(A027412(n), A376882(n+1))`
-/

namespace A108775.P534814481637882334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027412 n) (A376882 (n + 1))

end

end A108775.P534814481637882334

namespace A108775

/-- `gcd(A027412(n), A376882(n+1))` -/
def P534814481637882334.Spec : Prop :=
  ∀ n, (P534814481637882334.a n : ℤ) = A108775 (n + 1)

end A108775

/-! ## A108775.P12862386669845223587

`2-A294935(A033286(n+1))`
-/

namespace A108775.P12862386669845223587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A294935 (A033286 (n + 1)).toNat

end

end A108775.P12862386669845223587

namespace A108775

/-- `2-A294935(A033286(n+1))` -/
def P12862386669845223587.Spec : Prop :=
  ∀ n, P12862386669845223587.a n = A108775 (n + 1)

end A108775

/-!
# A108779: Numbers of the form (10^i)*(11^j), with i, j >= 0.

The programs for A108779, the canonical program `A108779.P13179977182298857629` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108779 has offset 1).

The definition of A108779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108779.P13179977182298857629

`A001020(A002262(n))*A007088(A130321(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A108779

/-- `A001020(A002262(n))*A007088(A130321(n))` -/
def P13179977182298857629.Spec : Prop :=
  ∀ n, P13179977182298857629.a n = A108779 (n + 1)

theorem P13179977182298857629.correct : P13179977182298857629.Spec := by
  intro n
  simp only [A108779, Nat.add_sub_cancel]

end A108779

/-! ## A108779.P1233005931313955864

`A001020(A002260(n+1)-1)*A007088(A130321(n))`
-/

namespace A108779.P1233005931313955864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002260 (n + 1) - 1).toNat * A007088 (A130321 n).toNat

end

end A108779.P1233005931313955864

namespace A108779

/-- `A001020(A002260(n+1)-1)*A007088(A130321(n))` -/
def P1233005931313955864.Spec : Prop :=
  ∀ n, P1233005931313955864.a n = A108779 (n + 1)

theorem P1233005931313955864.correct : P1233005931313955864.Spec := by
  intro n
  simp only [A108779, Nat.add_sub_cancel, A108779.P1233005931313955864.a, A108779.P13179977182298857629.a, A001020, A001020.P6110418391945528251.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A007088, A007088.P12432121332583687413.a, A130321, A130321.P54397649261359622.a, A097256, A097256.P18324559811505528946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A108779

/-! ## A108779.P18426728746597628793

`A001020(A002262(n))*A166661(A140303(n))`
-/

namespace A108779.P18426728746597628793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 (A002262 n).toNat * A166661 (A140303 n).toNat

end

end A108779.P18426728746597628793

namespace A108779

/-- `A001020(A002262(n))*A166661(A140303(n))` -/
def P18426728746597628793.Spec : Prop :=
  ∀ n, P18426728746597628793.a n = A108779 (n + 1)

end A108779

/-! ## A108779.P11352573020356055975

`A033047(A059268(n))*A166661(A140303(n))`
-/

namespace A108779.P11352573020356055975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (A059268 n).toNat * A166661 (A140303 n).toNat

end

end A108779.P11352573020356055975

namespace A108779

/-- `A033047(A059268(n))*A166661(A140303(n))` -/
def P11352573020356055975.Spec : Prop :=
  ∀ n, P11352573020356055975.a n = A108779 (n + 1)

end A108779

/-! ## A108779.P12006089305985001983

`A038315(A112367(n))*A289320(A140303(n))`
-/

namespace A108779.P12006089305985001983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038315 (A112367 n).toNat * A289320 (A140303 n).toNat

end

end A108779.P12006089305985001983

namespace A108779

/-- `A038315(A112367(n))*A289320(A140303(n))` -/
def P12006089305985001983.Spec : Prop :=
  ∀ n, P12006089305985001983.a n = A108779 (n + 1)

end A108779

/-!
# A108782: Difference between n and the largest number with the same digit set as n.

The programs for A108782, there is no canonical definition to state claims against.
-/

/-! ## A108782.P10753141230178896922

`A004186(n)-n`
-/

namespace A108782.P10753141230178896922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n - (n : ℤ)

end

end A108782.P10753141230178896922

/-! ## A108782.P11165344403987330856

`9*A283001(n)`
-/

namespace A108782.P11165344403987330856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A283001 n

end

end A108782.P11165344403987330856

/-! ## A108782.P16554052735692495430

`A193581(A061601(n))`
-/

namespace A108782.P16554052735692495430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A061601 n).toNat

end

end A108782.P16554052735692495430

/-! ## A108782.P2123215063540923625

`A008591(A283001(n))`
-/

namespace A108782.P2123215063540923625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A283001 n).toNat

end

end A108782.P2123215063540923625

/-! ## A108782.P8790426176220823227

`A052008(n)-A070196(n)`
-/

namespace A108782.P8790426176220823227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n - A070196 n

end

end A108782.P8790426176220823227

/-! ## A108782.P16855186666708521533

`A151949(n)-A193581(n)`
-/

namespace A108782.P16855186666708521533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n - A193581 n

end

end A108782.P16855186666708521533

/-! ## A108782.P16193003281232381146

`A333659(A328447(n))-n`
-/

namespace A108782.P16193003281232381146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A328447 n).toNat - (n : ℤ)

end

end A108782.P16193003281232381146

/-! ## A108782.P7154146239102821249

`9*A151950(n)-A193581(n)`
-/

namespace A108782.P7154146239102821249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A151950 n - A193581 n

end

end A108782.P7154146239102821249

/-! ## A108782.P10858029071339818453

`A052008(n)-(A004185(n)+n)`
-/

namespace A108782.P10858029071339818453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n - (A004185 n + (n : ℤ))

end

end A108782.P10858029071339818453

/-! ## A108782.P4207095696265615486

`A004185(n)+A151949(n)-n`
-/

namespace A108782.P4207095696265615486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n + (A151949 n - (n : ℤ))

end

end A108782.P4207095696265615486

/-! ## A108782.P839563505119252702

`A061601(A004185(A061601(n))+n)`
-/

namespace A108782.P839563505119252702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A004185 (A061601 n).toNat + (n : ℤ)).toNat

end

end A108782.P839563505119252702

/-! ## A108782.P1504946159538991669

`A061601(A061601(A004186(n))+n)`
-/

namespace A108782.P1504946159538991669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A061601 (A004186 n).toNat + (n : ℤ)).toNat

end

end A108782.P1504946159538991669

/-! ## A108782.P4061858801619196209

`A056967(A244112(n))-n`
-/

namespace A108782.P4061858801619196209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A244112 n).toNat - (n : ℤ)

end

end A108782.P4061858801619196209

/-! ## A108782.P4860279846609032908

`A193581(n)+A118759(A004086(n))-n`
-/

namespace A108782.P4860279846609032908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n + (A118759 (A004086 n).toNat - (n : ℤ))

end

end A108782.P4860279846609032908

/-!
# A108783: Positions of 1's in A083952, where A083952 gives the integer coefficients a(n) of A(x), where a(n) = 1 or 2 for all n, such that A(x)^(1/2) has only integer coefficients.

The programs for A108783, there is no canonical definition to state claims against.
-/

/-! ## A108783.P9281714498778235668

`eq[1, A083952(n)]`
-/

namespace A108783.P9281714498778235668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108783.P9281714498778235668

/-! ## A108783.P4792187693227648026

`2*lt[0, A108336(n)]`
-/

namespace A108783.P4792187693227648026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A108783.P4792187693227648026

/-! ## A108783.P5233556079728071448

`eq[1, gcd(2, A108115(n))]`
-/

namespace A108783.P5233556079728071448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A108115 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A108783.P5233556079728071448

/-! ## A108783.P12352911199594858275

`filter[2*n, A083952(#)]`
-/

namespace A108783.P12352911199594858275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A083952 (f1 j) = 1) n)

end

end A108783.P12352911199594858275

/-! ## A108783.P1747483142984979407

`comp[A083952(n+1)-1+n]`
-/

namespace A108783.P1747483142984979407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A108783.P1747483142984979407

/-! ## A108783.P10892199835883654788

`record[2*n/A083952(2*n)]`
-/

namespace A108783.P10892199835883654788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A083952 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108783.P10892199835883654788

/-! ## A108783.P15655121127187535873

`record[(n+1)*and(1, A108115(n+1))]`
-/

namespace A108783.P15655121127187535873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A108115 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108783.P15655121127187535873

/-! ## A108783.P11712172892786645056

`eq[1, A000035(A108115(n))]`
-/

namespace A108783.P11712172892786645056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A108115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108783.P11712172892786645056

/-! ## A108783.P16497296101285758770

`A005408(eq[1, A108336(n)])-1`
-/

namespace A108783.P16497296101285758770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A108783.P16497296101285758770

/-! ## A108783.P7451562137003982182

`lt[A083952(n), A083952(n+3)]`
-/

namespace A108783.P7451562137003982182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083952 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A108783.P7451562137003982182

/-! ## A108783.P17610259779264126025

`lt[(A083952(n)-1)*A016873(n), 1]`
-/

namespace A108783.P17610259779264126025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083952 n - 1) * A016873 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108783.P17610259779264126025

/-! ## A108783.P17049605744884896955

`lt[A083952(n)²^gcd(3, A010690(n)), 3]`
-/

namespace A108783.P17049605744884896955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083952 n ^ 2) ^ Int.gcd 3 (A010690 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A108783.P17049605744884896955

/-! ## A108783.P3736276227029106900

`record[n*(A083952(n+1)-A083952(n))]`
-/

namespace A108783.P3736276227029106900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A083952 (n + 1) - A083952 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108783.P3736276227029106900

/-! ## A108783.P1932699884789458466

`A004442(record[A004442(n)/A083952(n)])`
-/

namespace A108783.P1932699884789458466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 n : ℚ) / (A083952 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A108783.P1932699884789458466

/-! ## A108783.P6824790673956414338

`eq[1, A108340(n)]`
-/

namespace A108783.P6824790673956414338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A108783.P6824790673956414338

/-! ## A108783.P4668715923370393759

`filter[2*n, A108340(#)]`
-/

namespace A108783.P4668715923370393759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108340 (f1 j) = 1) n)

end

end A108783.P4668715923370393759

/-! ## A108783.P4942916748729274309

`A111363(n+1)-1`
-/

namespace A108783.P4942916748729274309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111363 (n + 1) - 1

end

end A108783.P4942916748729274309

/-! ## A108783.P6774852198310132386

`A004442(A111363(n+1))`
-/

namespace A108783.P6774852198310132386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A111363 (n + 1)).toNat

end

end A108783.P6774852198310132386

/-! ## A108783.P920103243901931078

`and(A111363(n+1), A158525(n+4))`
-/

namespace A108783.P920103243901931078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111363 (n + 1)) (A158525 (n + 4))

end

end A108783.P920103243901931078

/-! ## A108783.P14930847154508227075

`and(A002446(n), A111363(n+1))`
-/

namespace A108783.P14930847154508227075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A111363 (n + 1))

end

end A108783.P14930847154508227075

/-!
# A108784: Difference between A107757 and A107755.

The programs for A108784, the canonical program `A108784.P11288806968300134608` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108784 has offset 1).

The definition of A108784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108784.P4780539313483275226

`(-1)^A254106(16*n+15)`
-/

namespace A108784.P4780539313483275226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A254106 (16 * n + 15) : ℤ)

end

end A108784.P4780539313483275226

namespace A108784

/-- `(-1)^A254106(16*n+15)` -/
def P4780539313483275226.Spec : Prop :=
  ∀ n, P4780539313483275226.a n = (A108784 (n + 1) : ℚ)

end A108784

/-! ## A108784.P17111670085274355065

`(-1)^A180094(and(n+1, n))`
-/

namespace A108784.P17111670085274355065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A180094 (Nat.land (n + 1) n) : ℤ)

end

end A108784.P17111670085274355065

namespace A108784

/-- `(-1)^A180094(and(n+1, n))` -/
def P17111670085274355065.Spec : Prop :=
  ∀ n, P17111670085274355065.a n = (A108784 (n + 1) : ℚ)

end A108784

/-! ## A108784.P16956998509503184148

`A353706(n-∑[val(n+1, 2)]+3)`
-/

namespace A108784.P16956998509503184148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353706 ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 3).toNat

end

end A108784.P16956998509503184148

namespace A108784

/-- `A353706(n-∑[val(n+1, 2)]+3)` -/
def P16956998509503184148.Spec : Prop :=
  ∀ n, P16956998509503184148.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P2913628433877764181

`A011588(18-(n-∑[val(n+1, 2)]))`
-/

namespace A108784.P2913628433877764181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011588 (18 - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A108784.P2913628433877764181

namespace A108784

/-- `A011588(18-(n-∑[val(n+1, 2)]))` -/
def P2913628433877764181.Spec : Prop :=
  ∀ n, P2913628433877764181.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P12713619967782042894

`or(1, A089254(n-∑[val(n+1, 2)]))`
-/

namespace A108784.P12713619967782042894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A089254 (n - ∑ j ∈ Finset.range (n + 1), f1 j))

end

end A108784.P12713619967782042894

namespace A108784

/-- `or(1, A089254(n-∑[val(n+1, 2)]))` -/
def P12713619967782042894.Spec : Prop :=
  ∀ n, P12713619967782042894.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P10768477507102520315

`(-1)^A004725(n-∑[val(n+1, 2)])`
-/

namespace A108784.P10768477507102520315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A004725 (n - ∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A108784.P10768477507102520315

namespace A108784

/-- `(-1)^A004725(n-∑[val(n+1, 2)])` -/
def P10768477507102520315.Spec : Prop :=
  ∀ n, P10768477507102520315.a n = (A108784 (n + 1) : ℚ)

end A108784

/-! ## A108784.P17250817350696109675

`(-1)^A048793(n-∑[val(n+1, 2)])`
-/

namespace A108784.P17250817350696109675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A048793 (n - ∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A108784.P17250817350696109675

namespace A108784

/-- `(-1)^A048793(n-∑[val(n+1, 2)])` -/
def P17250817350696109675.Spec : Prop :=
  ∀ n, P17250817350696109675.a n = (A108784 (n + 1) : ℚ)

end A108784

/-! ## A108784.P2998664984781134614

`(-1)^A072797(n-∑[val(n+1, 2)])`
-/

namespace A108784.P2998664984781134614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A072797 (n - ∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A108784.P2998664984781134614

namespace A108784

/-- `(-1)^A072797(n-∑[val(n+1, 2)])` -/
def P2998664984781134614.Spec : Prop :=
  ∀ n, P2998664984781134614.a n = (A108784 (n + 1) : ℚ)

end A108784

/-! ## A108784.P11916786371884495273

`(-1)^A361945(n-∑[val(n+1, 2)])`
-/

namespace A108784.P11916786371884495273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A361945 (n - ∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A108784.P11916786371884495273

namespace A108784

/-- `(-1)^A361945(n-∑[val(n+1, 2)])` -/
def P11916786371884495273.Spec : Prop :=
  ∀ n, P11916786371884495273.a n = (A108784 (n + 1) : ℚ)

end A108784

/-! ## A108784.P997934476454779682

`A112605(2^(n-∑[val(n+1, 2)]))-1`
-/

namespace A108784.P997934476454779682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat - 1

end

end A108784.P997934476454779682

namespace A108784

/-- `A112605(2^(n-∑[val(n+1, 2)]))-1` -/
def P997934476454779682.Spec : Prop :=
  ∀ n, P997934476454779682.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P10088677715013234791

`(-1)^A064573(2^(n-∑[val(n+1, 2)]))`
-/

namespace A108784.P10088677715013234791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A064573 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat : ℤ)

end

end A108784.P10088677715013234791

namespace A108784

/-- `(-1)^A064573(2^(n-∑[val(n+1, 2)]))` -/
def P10088677715013234791.Spec : Prop :=
  ∀ n, P10088677715013234791.a n = (A108784 (n + 1) : ℚ)

end A108784

/-! ## A108784.P2556676611915330588

`char[A079291(2*(n+2))]+(-1)^(∑[val(n+1, 2)]+n)`
-/

namespace A108784.P2556676611915330588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079291 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j + n)

end

end A108784.P2556676611915330588

namespace A108784

/-- `char[A079291(2*(n+2))]+(-1)^(∑[val(n+1, 2)]+n)` -/
def P2556676611915330588.Spec : Prop :=
  ∀ n, P2556676611915330588.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P14574423913931182969

`char[A100178(3*n+5)]+(-1)^(∑[val(n+1, 2)]+n)`
-/

namespace A108784.P14574423913931182969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100178 (3 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j + n)

end

end A108784.P14574423913931182969

namespace A108784

/-- `char[A100178(3*n+5)]+(-1)^(∑[val(n+1, 2)]+n)` -/
def P14574423913931182969.Spec : Prop :=
  ∀ n, P14574423913931182969.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P1850805305780464283

`A337004(A048896(n)+1)`
-/

namespace A108784.P1850805305780464283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337004 (A048896 n + 1).toNat

end

end A108784.P1850805305780464283

namespace A108784

/-- `A337004(A048896(n)+1)` -/
def P1850805305780464283.Spec : Prop :=
  ∀ n, P1850805305780464283.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P8168478025643735369

`2-A274473(A048881(n))`
-/

namespace A108784.P8168478025643735369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A274473 (A048881 n).toNat

end

end A108784.P8168478025643735369

namespace A108784

/-- `2-A274473(A048881(n))` -/
def P8168478025643735369.Spec : Prop :=
  ∀ n, P8168478025643735369.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P16962170737401069033

`A113447(A000120(n+1)²)`
-/

namespace A108784.P16962170737401069033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (A000120 (n + 1) ^ 2).toNat

end

end A108784.P16962170737401069033

namespace A108784

/-- `A113447(A000120(n+1)²)` -/
def P16962170737401069033.Spec : Prop :=
  ∀ n, P16962170737401069033.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P7917645950140493357

`A270885(A000120(n+1)²)`
-/

namespace A108784.P7917645950140493357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270885 (A000120 (n + 1) ^ 2).toNat

end

end A108784.P7917645950140493357

namespace A108784

/-- `A270885(A000120(n+1)²)` -/
def P7917645950140493357.Spec : Prop :=
  ∀ n, P7917645950140493357.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P2904985719757055126

`or(Δ[A076826(n)], A277007(n))`
-/

namespace A108784.P2904985719757055126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A277007 n)

end

end A108784.P2904985719757055126

namespace A108784

/-- `or(Δ[A076826(n)], A277007(n))` -/
def P2904985719757055126.Spec : Prop :=
  ∀ n, P2904985719757055126.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P9509481764294115862

`A015751(A000120(n+1)+1)`
-/

namespace A108784.P9509481764294115862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015751 (A000120 (n + 1) + 1).toNat

end

end A108784.P9509481764294115862

namespace A108784

/-- `A015751(A000120(n+1)+1)` -/
def P9509481764294115862.Spec : Prop :=
  ∀ n, P9509481764294115862.a n = A108784 (n + 1)

end A108784

/-! ## A108784.P11288806968300134608

`A156706(A000120(n+1)+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108784

/-- `A156706(A000120(n+1)+1)` -/
def P11288806968300134608.Spec : Prop :=
  ∀ n, P11288806968300134608.a n = A108784 (n + 1)

theorem P11288806968300134608.correct : P11288806968300134608.Spec := by
  intro n
  simp only [A108784, Nat.add_sub_cancel]

end A108784

/-!
# A108786: Yet another version of the Catalan triangle A008315.

The programs for A108786, there is no canonical definition to state claims against.
-/

/-! ## A108786.P2683082660422905228

`lcm(17, A008315(n))/17`
-/

namespace A108786.P2683082660422905228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 17 (A008315 n) : ℚ) / 17

end

end A108786.P2683082660422905228

/-! ## A108786.P7365349111677570382

`A008315(ceil(n*tanh(3)))`
-/

namespace A108786.P7365349111677570382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 ⌈(n : ℝ) * Real.tanh (3 : ℝ)⌉.toNat

end

end A108786.P7365349111677570382

/-! ## A108786.P12096173758265085025

`A008315(or(n, ∑{digits}[n, C(#, 9)]))`
-/

namespace A108786.P12096173758265085025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (Nat.lor n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum)

end

end A108786.P12096173758265085025

/-! ## A108786.P14387538603017667682

`A008315(gcd(n, floor(n*ϕ^9)))`
-/

namespace A108786.P14387538603017667682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (Int.gcd (n : ℤ) ⌊(n : ℝ) * Real.goldenRatio ^ 9⌋)

end

end A108786.P14387538603017667682

/-! ## A108786.P12976113737853385603

`A008315(A118759(n))`
-/

namespace A108786.P12976113737853385603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A118759 n).toNat

end

end A108786.P12976113737853385603

/-! ## A108786.P13213024353957719822

`A008315(A136602(n+1))`
-/

namespace A108786.P13213024353957719822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (A136602 (n + 1)).toNat

end

end A108786.P13213024353957719822

/-! ## A108786.P11354920824517737037

`A008315(n)+char[A000045(n+13)]`
-/

namespace A108786.P11354920824517737037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 13)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A108786.P11354920824517737037

/-! ## A108786.P13691527095808656005

`A008315(n)+4%a(A001222(n))` with `a(0)=1`
-/

namespace A108786.P13691527095808656005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008315 n + Int.tmod 4 (a (A001222 n).toNat)

end

end A108786.P13691527095808656005

/-!
# A108787: Binary numbers such that the first differences give the same sequence written as a string of individual digits.

The programs for A108787, there is no canonical definition to state claims against.
-/

/-! ## A108787.P11477520723079154619

`A007088(A108789(n+1))`
-/

namespace A108787.P11477520723079154619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A108789 (n + 1)).toNat

end

end A108787.P11477520723079154619

/-! ## A108787.P4976128834110439830

`A185544(2*A108789(n+1))`
-/

namespace A108787.P4976128834110439830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A108789 (n + 1)).toNat

end

end A108787.P4976128834110439830

/-! ## A108787.P3829275757806855276

`A007088(∑[A108788(abs(1-n)+1)])`
-/

namespace A108787.P3829275757806855276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108788 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A108787.P3829275757806855276

/-! ## A108787.P730384160082577181

`A185544(2*∑[A108788(abs(1-n)+1)])`
-/

namespace A108787.P730384160082577181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108788 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A108787.P730384160082577181

/-! ## A108787.P14224199721545962786

`A007088(∑[A108788(n+1)]+1-A108788(n+1))`
-/

namespace A108787.P14224199721545962786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A108788 (n + 1))).toNat

end

end A108787.P14224199721545962786

/-! ## A108787.P12946867595770425891

`A185544(2*(∑[A108788(n+1)]+1-A108788(n+1)))`
-/

namespace A108787.P12946867595770425891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A108788 (n + 1)))).toNat

end

end A108787.P12946867595770425891

/-!
# A108788: First difference of binary numbers in A108787.

The programs for A108788, there is no canonical definition to state claims against.
-/

/-! ## A108788.P12672169907848809331

`Δ[A108789(n+1)]`
-/

namespace A108788.P12672169907848809331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108788.P12672169907848809331

/-! ## A108788.P9850470426084521959

`Δ[A108787(n+1)]%2`
-/

namespace A108788.P9850470426084521959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A108788.P9850470426084521959

/-! ## A108788.P10653050553240555831

`ceil(ratio[A108789(-xor(n, -1))])-1`
-/

namespace A108788.P10653050553240555831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A108788.P10653050553240555831

/-! ## A108788.P14096028985218294190

`A000720(ceil(ratio[A108789(n+1)]))`
-/

namespace A108788.P14096028985218294190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108788.P14096028985218294190

/-! ## A108788.P2865266766747225054

`A001065(ceil(ratio[A108789(n+1)]))`
-/

namespace A108788.P2865266766747225054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108788.P2865266766747225054

/-! ## A108788.P6460096227054322233

`A001221(ceil(ratio[A108789(n+1)]))`
-/

namespace A108788.P6460096227054322233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108788.P6460096227054322233

/-! ## A108788.P1316070587652085220

`A001222(ceil(ratio[A108789(n+1)]))`
-/

namespace A108788.P1316070587652085220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108788.P1316070587652085220

/-! ## A108788.P18136862013271346401

`A006577(ceil(ratio[A108789(n+1)]))`
-/

namespace A108788.P18136862013271346401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108788.P18136862013271346401

/-! ## A108788.P2295884750856449679

`A029179(ceil(ratio[A108789(n+1)]))`
-/

namespace A108788.P2295884750856449679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108788.P2295884750856449679

/-! ## A108788.P3081524714074864410

`A032741(ceil(ratio[A108789(n+1)]))`
-/

namespace A108788.P3081524714074864410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉.toNat

end

end A108788.P3081524714074864410

/-! ## A108788.P8254981432881849928

`A108789(n+2)-A108789(n+1)`
-/

namespace A108788.P8254981432881849928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 2) - A108789 (n + 1)

end

end A108788.P8254981432881849928

/-! ## A108788.P305105924249212419

`and(1, A006530(Δ[A108787(n+1)]+2))`
-/

namespace A108788.P305105924249212419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006530 (f1 (n + 1) - f1 n + 2).toNat)

end

end A108788.P305105924249212419

/-!
# A108789: Decimal equivalents of A108787.

The programs for A108789, there is no canonical definition to state claims against.
-/

/-! ## A108789.P15600511628389420034

`∑[Δ[A108787(A028310(n))]%2]+1`
-/

namespace A108789.P15600511628389420034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108787 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A108789.P15600511628389420034

/-! ## A108789.P1308165872764481420

`∑[A108788(round(acot(n)+n))]`
-/

namespace A108789.P1308165872764481420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108788 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108789.P1308165872764481420

/-! ## A108789.P7511672699884692065

`A108788(n)+a(n-1)` with `a(0)=1`
-/

namespace A108789.P7511672699884692065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108788 n + a (n - 1)

end

end A108789.P7511672699884692065

/-! ## A108789.P578548167598894100

`∑[A108788(abs(1-n)+1)]`
-/

namespace A108789.P578548167598894100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108788 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A108789.P578548167598894100

/-! ## A108789.P17244474127485986897

`∑[A108788(n+1)]+1-A108788(n+1)`
-/

namespace A108789.P17244474127485986897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A108788 (n + 1))

end

end A108789.P17244474127485986897

/-!
# A108790: Sequence of run lengths in A108788.

The programs for A108790, there is no canonical definition to state claims against.
-/

/-! ## A108790.P3816659747856867677

`runs[Δ[A068505(A108787(n+1))]]`
-/

namespace A108790.P3816659747856867677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A108787 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A108790.P3816659747856867677

/-! ## A108790.P15094634187286861766

`runs[A108788(n+1)]%A107974(3*n+1)`
-/

namespace A108790.P15094634187286861766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) (A107974 (3 * n + 1))

end

end A108790.P15094634187286861766

/-! ## A108790.P11161733644247553417

`runs[(A108789(n+2)-A108789(n+1))^A242654(n+1)]`
-/

namespace A108790.P11161733644247553417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108789 (n + 2) - A108789 (n + 1) : ℚ) ^ (A242654 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A108790.P11161733644247553417

/-! ## A108790.P10255636419956119174

`runs[Δ[A108789(n+1)]]%A136684(n+1)`
-/

namespace A108790.P10255636419956119174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) (A136684 (n + 1))

end

end A108790.P10255636419956119174

/-! ## A108790.P6376649781785361607

`runs[A108789(n+2)-A108789(n+1)]%A136684(n+1)`
-/

namespace A108790.P6376649781785361607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108789 (n + 2) - A108789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) (A136684 (n + 1))

end

end A108790.P6376649781785361607

/-!
# A108791: a(2n) = -5*(fibonacci(6n+2))^2, a(2n+1) = (lucas(6n+5))^2.

The programs for A108791, there is no canonical definition to state claims against.
-/

/-! ## A108791.P12423948447868363353

`-((-1)^n*A004146(3*n+2))`
-/

namespace A108791.P12423948447868363353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A004146 (3 * n + 2))

end

end A108791.P12423948447868363353

/-! ## A108791.P6847454729649706421

`-(A004146(3*n+2)*A033999(n))`
-/

namespace A108791.P6847454729649706421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A004146 (3 * n + 2) * A033999 n)

end

end A108791.P6847454729649706421

/-! ## A108791.P8876719803386270999

`A004146(3*n+2)*A129818(A000217(n+1))`
-/

namespace A108791.P8876719803386270999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (3 * n + 2) * A129818 (A000217 (n + 1)).toNat

end

end A108791.P8876719803386270999

/-! ## A108791.P10834736056021089043

`A010675(A104563(2*(n+1)))-A075150(3*n+2)`
-/

namespace A108791.P10834736056021089043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 (A104563 (2 * (n + 1))).toNat - A075150 (3 * n + 2)

end

end A108791.P10834736056021089043

/-!
# A108792: Number of ways to place 5 nonattacking queens on an n X n board.

The programs for A108792, there is no canonical definition to state claims against.
-/

/-! ## A108792.P6532170337613510070

`A348129(A167499(n+4))`
-/

namespace A108792.P6532170337613510070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348129 (A167499 (n + 4)).toNat

end

end A108792.P6532170337613510070

/-! ## A108792.P5002301484407833878

`A348129(eq[5, A002262(n)])`
-/

namespace A108792.P5002301484407833878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108792.P5002301484407833878

/-!
# A108793: Semiprimes that can be partitioned into a sum of semiprimes in more than one way.

The programs for A108793, there is no canonical definition to state claims against.
-/

/-! ## A108793.P11389008158091405948

`A001358(4+n)`
-/

namespace A108793.P11389008158091405948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (4 + n)

end

end A108793.P11389008158091405948

/-! ## A108793.P1015507017506785556

`A176540(n+5)`
-/

namespace A108793.P1015507017506785556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 5)

end

end A108793.P1015507017506785556

/-! ## A108793.P2079301220094272005

`sqrt(A074985(4+n))`
-/

namespace A108793.P2079301220094272005
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (4 + n) : ℝ)

end

end A108793.P2079301220094272005

/-! ## A108793.P6154801286736802348

`Δ[A062198(n+3)]`
-/

namespace A108793.P6154801286736802348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062198 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108793.P6154801286736802348

/-! ## A108793.P7506200837771587475

`Δ[A110208(n+3)]`
-/

namespace A108793.P7506200837771587475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110208 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108793.P7506200837771587475

/-! ## A108793.P6667098560180022516

`record[A088739(n+5)]`
-/

namespace A108793.P6667098560180022516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A108793.P6667098560180022516

/-! ## A108793.P6437202957563221686

`A186621(n+4)+1`
-/

namespace A108793.P6437202957563221686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 4) + 1

end

end A108793.P6437202957563221686

/-! ## A108793.P13432857994269930037

`A088707(n+4)-1`
-/

namespace A108793.P13432857994269930037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 4) - 1

end

end A108793.P13432857994269930037

/-! ## A108793.P11565613445836520617

`A129767(2*(n+4))`
-/

namespace A108793.P11565613445836520617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 4))

end

end A108793.P11565613445836520617

/-! ## A108793.P13956492168986651394

`A075818(n+4)/2`
-/

namespace A108793.P13956492168986651394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 4) : ℚ) / 2

end

end A108793.P13956492168986651394

/-!
# A108794: Primes whose 10's complement is a semiprime, i.e., p is prime and 10^L - p is a semiprime, where L is the number of digits in p.

The programs for A108794, the canonical program `A108794.P9146368090825541493` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A108794 has offset 1).

The definition of A108794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A108794.P9146368090825541493

`p?[n*A001222(A061601(n)+1)-n]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A108794

/-- `p?[n*A001222(A061601(n)+1)-n]` -/
def P9146368090825541493.Spec : Prop :=
  ∀ n, P9146368090825541493.a n = A108794 (n + 1)

theorem P9146368090825541493.correct : P9146368090825541493.Spec := by
  intro n
  simp only [A108794, Nat.add_sub_cancel]

end A108794

/-! ## A108794.P14448442656507355808

`A065091(eq[2, A001222(A160668(n+1))])`
-/

namespace A108794.P14448442656507355808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A160668 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A108794.P14448442656507355808

namespace A108794

/-- `A065091(eq[2, A001222(A160668(n+1))])` -/
def P14448442656507355808.Spec : Prop :=
  ∀ n, P14448442656507355808.a n = A108794 (n + 1)

end A108794

/-! ## A108794.P15901980853592721614

`p?[and(n+1, A008683(A068824(n+1)))]`
-/

namespace A108794.P15901980853592721614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A008683 (A068824 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108794.P15901980853592721614

namespace A108794

/-- `p?[and(n+1, A008683(A068824(n+1)))]` -/
def P15901980853592721614.Spec : Prop :=
  ∀ n, P15901980853592721614.a n = A108794 (n + 1)

end A108794

/-! ## A108794.P591913893608164706

`p?[A001478(n+1)*A008683(A068824(n+1))]`
-/

namespace A108794.P591913893608164706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) * A008683 (A068824 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108794.P591913893608164706

namespace A108794

/-- `p?[A001478(n+1)*A008683(A068824(n+1))]` -/
def P591913893608164706.Spec : Prop :=
  ∀ n, P591913893608164706.a n = A108794 (n + 1)

end A108794

/-!
# A108796: Number of unordered pairs of partitions of n (into distinct parts) with empty intersection.

The programs for A108796, there is no canonical definition to state claims against.
-/

/-! ## A108796.P8130874113845760375

`ceil(A365662(n)/2)`
-/

namespace A108796.P8130874113845760375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A365662 n : ℚ) / 2⌉

end

end A108796.P8130874113845760375

/-! ## A108796.P11107979871020706496

`A365662(n)/A040000(n)`
-/

namespace A108796.P11107979871020706496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365662 n : ℚ) / (A040000 n : ℚ)

end

end A108796.P11107979871020706496

/-! ## A108796.P7520061551765008488

`A365662(n)/A329683(n)`
-/

namespace A108796.P7520061551765008488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365662 n : ℚ) / (A329683 n : ℚ)

end

end A108796.P7520061551765008488

/-! ## A108796.P14558364852560261542

`A365662(n)/A036453(n+1)`
-/

namespace A108796.P14558364852560261542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365662 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A108796.P14558364852560261542

/-! ## A108796.P33014000355701119

`A365662(n)/A104435(n+1)`
-/

namespace A108796.P33014000355701119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365662 n : ℚ) / (A104435 (n + 1) : ℚ)

end

end A108796.P33014000355701119

/-!
# A108798: Number of nonisomorphic systems enumerated by A102894; that is, the number of inequivalent closure operators in which the empty set is closed. Also, the number of union-closed sets with n elements that contain the universe and the empty set.

The programs for A108798, there is no canonical definition to state claims against.
-/

/-! ## A108798.P17904768163444466856

`A326907(n)/2`
-/

namespace A108798.P17904768163444466856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326907 n : ℚ) / 2

end

end A108798.P17904768163444466856

/-! ## A108798.P777225499502856052

`ceil(A108800(n)/2)`
-/

namespace A108798.P777225499502856052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108800 n : ℚ) / 2⌉

end

end A108798.P777225499502856052

/-! ## A108798.P11504550852078880227

`ceil(∑[A326883(n)/2])`
-/

namespace A108798.P11504550852078880227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326883 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A108798.P11504550852078880227

/-! ## A108798.P16035441131666964665

`Δ[floor(A326904(n)/2)]`
-/

namespace A108798.P16035441131666964665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326904 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A108798.P16035441131666964665

