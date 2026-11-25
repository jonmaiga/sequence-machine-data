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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A298100: T(n,k)=Number of nXk 0..1 arrays with every element equal to 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298100, there is no canonical definition to state claims against.
-/

/-! ## A298100.P17181918532953573869

`∑{e}[A255806(A303636(n+1)), #]`
-/

namespace A298100.P17181918532953573869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255806 (A303636 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A298100.P17181918532953573869

/-! ## A298100.P9241907856713627674

`∑{d}[A215467(A298554(n+1)²)-1, A063994(#)]`
-/

namespace A298100.P9241907856713627674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 (A298554 (n + 1) ^ 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A063994 d

end

end A298100.P9241907856713627674

/-! ## A298100.P1250662237066158442

`A215467(A298554(n+1)²)-1-char[A042078(3*n+1)]`
-/

namespace A298100.P1250662237066158442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042078 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 (A298554 (n + 1) ^ 2).toNat - 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A298100.P1250662237066158442

/-! ## A298100.P378107961347964485

`A215467(A298554(n+1)²)-1-A123340(A004197(n))`
-/

namespace A298100.P378107961347964485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 (A298554 (n + 1) ^ 2).toNat - 1 - A123340 (A004197 n).toNat

end

end A298100.P378107961347964485

/-! ## A298100.P926292296474234767

`A215467(A298554(n+1)²)-1-A324011(A091255(n+1))`
-/

namespace A298100.P926292296474234767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 (A298554 (n + 1) ^ 2).toNat - 1 - A324011 (A091255 (n + 1)).toNat

end

end A298100.P926292296474234767

/-!
# A298101: Expansion of x*(1 + x)/((1 - x)*(1 - 322*x + x^2)).

The programs for A298101, the canonical program `A298101.P1033594531901241408` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298101 has offset 0).

The definition of A298101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298101.P1033594531901241408

`322*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A298101

/-- `322*a(n-1)-a(n-2)+2` -/
def P1033594531901241408.Spec : Prop :=
  ∀ n, P1033594531901241408.a n = A298101 n

theorem P1033594531901241408.correct : P1033594531901241408.Spec := by
  intro n
  simp only [A298101]

end A298101

/-! ## A298101.P15067447647077432275

`A049660(n)²`
-/

namespace A298101.P15067447647077432275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 n ^ 2

end

end A298101.P15067447647077432275

namespace A298101

/-- `A049660(n)²` -/
def P15067447647077432275.Spec : Prop :=
  ∀ n, P15067447647077432275.a n = A298101 n

end A298101

/-! ## A298101.P10187881407951143569

`((2+sqrt(5))^(4*n)+(2-sqrt(5))^(4*n)-2)/320`
-/

namespace A298101.P10187881407951143569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (5 : ℝ)) ^ (4 * n) + (2 - Real.sqrt (5 : ℝ)) ^ (4 * n) - 2) / 320

end

end A298101.P10187881407951143569

namespace A298101

/-- `((2+sqrt(5))^(4*n)+(2-sqrt(5))^(4*n)-2)/320` -/
def P10187881407951143569.Spec : Prop :=
  ∀ n, P10187881407951143569.a n = (A298101 n : ℝ)

end A298101

/-! ## A298101.P1464815182066139611

`(A207832(n)/2)²`
-/

namespace A298101.P1464815182066139611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A207832 n : ℚ) / 2) ^ 2

end

end A298101.P1464815182066139611

namespace A298101

/-- `(A207832(n)/2)²` -/
def P1464815182066139611.Spec : Prop :=
  ∀ n, P1464815182066139611.a n = (A298101 n : ℚ)

end A298101

/-! ## A298101.P200699249056436618

`(A060645(n)/4)²`
-/

namespace A298101.P200699249056436618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A060645 n : ℚ) / 4) ^ 2

end

end A298101.P200699249056436618

namespace A298101

/-- `(A060645(n)/4)²` -/
def P200699249056436618.Spec : Prop :=
  ∀ n, P200699249056436618.a n = (A298101 n : ℚ)

end A298101

/-!
# A298102: The first of five consecutive integers the sum of which is equal to the sum of five consecutive prime numbers.

The programs for A298102, there is no canonical definition to state claims against.
-/

/-! ## A298102.P9119373154430863746

`A219505(1+n)-2`
-/

namespace A298102.P9119373154430863746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (1 + n) - 2

end

end A298102.P9119373154430863746

/-! ## A298102.P13021986146653242540

`-2+A219505(n+1)`
-/

namespace A298102.P13021986146653242540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -2 + A219505 (n + 1)

end

end A298102.P13021986146653242540

/-! ## A298102.P383337876849767297

`record[A219505(A133310(n))-2]`
-/

namespace A298102.P383337876849767297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (A133310 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298102.P383337876849767297

/-! ## A298102.P7547924372419993619

`record[A219505(A328399(n))-2]`
-/

namespace A298102.P7547924372419993619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219505 (A328399 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298102.P7547924372419993619

/-! ## A298102.P1651084633388252340

`A023444(A219505(n+1))`
-/

namespace A298102.P1651084633388252340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A219505 (n + 1)).toNat

end

end A298102.P1651084633388252340

/-!
# A298108: Solution b( ) of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 2*n - 3, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298108, there is no canonical definition to state claims against.
-/

/-! ## A298108.P13309524799196890228

`eq[char[A297833(n)], A000007(n)]`
-/

namespace A298108.P13309524799196890228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297833 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298108.P13309524799196890228

/-! ## A298108.P17250715219974332195

`eq[char[A297833(n)], A000038(n)]`
-/

namespace A298108.P17250715219974332195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297833 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298108.P17250715219974332195

/-! ## A298108.P17571867077378995591

`eq[char[A297833(n)], A130706(n)]`
-/

namespace A298108.P17571867077378995591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297833 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298108.P17571867077378995591

/-! ## A298108.P5579756374553285234

`eq[char[A297833(n)], A169585(n)]`
-/

namespace A298108.P5579756374553285234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297833 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298108.P5579756374553285234

/-! ## A298108.P8409049598014349274

`eq[2*A016116(n)%2, char[A297833(n)]]`
-/

namespace A298108.P8409049598014349274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A016116 n) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297833 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A298108.P8409049598014349274

/-! ## A298108.P16087028470444649417

`eq[A016116(n+2)%4, char[A297833(n)]]`
-/

namespace A298108.P16087028470444649417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016116 (n + 2)) 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297833 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A298108.P16087028470444649417

/-! ## A298108.P7908222807245913563

`eq[char[A297833(n)], A151933(n)]`
-/

namespace A298108.P7908222807245913563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297833 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298108.P7908222807245913563

/-!
# A298109: Solution b( ) of the complementary equation a(n) = a(1)*b(n-1) - a(0)*b(n-2) + 2*n - 4, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298109, there is no canonical definition to state claims against.
-/

/-! ## A298109.P14601747835942708266

`comp[A297834(n)-1]+1`
-/

namespace A298109.P14601747835942708266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297834 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A298109.P14601747835942708266

/-! ## A298109.P12959841278059694765

`comp[A130734(A297834(n))]+1`
-/

namespace A298109.P12959841278059694765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A297834 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A298109.P12959841278059694765

/-! ## A298109.P16770984948361769047

`eq[char[A297834(n)], A000007(n)]`
-/

namespace A298109.P16770984948361769047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297834 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298109.P16770984948361769047

/-! ## A298109.P4102776864719227378

`eq[char[A297834(n)], A000038(n)]`
-/

namespace A298109.P4102776864719227378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297834 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298109.P4102776864719227378

/-! ## A298109.P18245291236842272502

`eq[char[A297834(n)], A130706(n)]`
-/

namespace A298109.P18245291236842272502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297834 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298109.P18245291236842272502

/-! ## A298109.P14124486207381394522

`eq[char[A297834(n)], A169585(n)]`
-/

namespace A298109.P14124486207381394522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297834 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298109.P14124486207381394522

/-! ## A298109.P12506167237882585813

`eq[char[A297834(n)], A127802(n²)]`
-/

namespace A298109.P12506167237882585813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297834 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298109.P12506167237882585813

/-! ## A298109.P5426323552431481542

`eq[A127802(2*n), char[A297834(n)]]`
-/

namespace A298109.P5426323552431481542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297834 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A298109.P5426323552431481542

/-! ## A298109.P17148096020531465447

`eq[A127802(n)%3, char[A297834(n)]]`
-/

namespace A298109.P17148096020531465447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127802 n) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297834 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A298109.P17148096020531465447

/-!
# A298110: Solution (b(n)) of the near-complementary equation a(n) = a(1)*b(n) - a(0)*b(n-1) + n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298110, there is no canonical definition to state claims against.
-/

/-! ## A298110.P13244195713728871858

`comp[A297999(n)-1]+1`
-/

namespace A298110.P13244195713728871858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297999 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A298110.P13244195713728871858

/-! ## A298110.P17415859796411078606

`A297997(n-A057427(n))+A057427(n)`
-/

namespace A298110.P17415859796411078606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297997 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A298110.P17415859796411078606

/-! ## A298110.P4791905933857372569

`eq[char[A297999(n)], A000007(n)]`
-/

namespace A298110.P4791905933857372569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297999 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298110.P4791905933857372569

/-! ## A298110.P11822253901197547528

`eq[char[A297999(n)], A000038(n)]`
-/

namespace A298110.P11822253901197547528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297999 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298110.P11822253901197547528

/-! ## A298110.P2881240728477052841

`eq[char[A297999(n)], A169585(n)]`
-/

namespace A298110.P2881240728477052841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297999 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298110.P2881240728477052841

/-! ## A298110.P2991208270278936867

`eq[char[A297999(n)], A285476(n)]`
-/

namespace A298110.P2991208270278936867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297999 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298110.P2991208270278936867

/-! ## A298110.P2496844221456154890

`record[A297997(A008615(n))+A057427(n)]`
-/

namespace A298110.P2496844221456154890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297997 (A008615 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298110.P2496844221456154890

/-!
# A298111: Solution b( ) of the complementary equation a(n) = a(1)*b(n) - a(0)*b(n-1) + 2*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298111, there is no canonical definition to state claims against.
-/

/-! ## A298111.P13373083305805756476

`comp[A298000(n)-1]+1`
-/

namespace A298111.P13373083305805756476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298000 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A298111.P13373083305805756476

/-! ## A298111.P4011917204075401425

`eq[char[A298000(n)], A000007(n)]`
-/

namespace A298111.P4011917204075401425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298000 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298111.P4011917204075401425

/-! ## A298111.P7911400955958933843

`eq[char[A298000(n)], A000038(n)]`
-/

namespace A298111.P7911400955958933843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298000 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298111.P7911400955958933843

/-! ## A298111.P14574857516896506150

`eq[char[A298000(n)], A130706(n)]`
-/

namespace A298111.P14574857516896506150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298000 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298111.P14574857516896506150

/-! ## A298111.P5374216773432821964

`eq[char[A298000(n)], A169585(n)]`
-/

namespace A298111.P5374216773432821964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298000 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298111.P5374216773432821964

/-! ## A298111.P12055498340331793248

`lt[char[A298000(n)], A157928(n)]`
-/

namespace A298111.P12055498340331793248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298000 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A298111.P12055498340331793248

/-! ## A298111.P14661867981533004763

`eq[char[A298000(n)], A151933(n)]`
-/

namespace A298111.P14661867981533004763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298000 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298111.P14661867981533004763

/-!
# A298112: Solution b( ) of the complementary equation a(n) = a(1)*b(n) - a(0)*b(n-1) + 3*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298112, there is no canonical definition to state claims against.
-/

/-! ## A298112.P15332510967891354052

`eq[char[A298001(n)], A000007(n)]`
-/

namespace A298112.P15332510967891354052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298001 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298112.P15332510967891354052

/-! ## A298112.P13936868955365789484

`eq[char[A298001(n)], A000038(n)]`
-/

namespace A298112.P13936868955365789484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298001 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298112.P13936868955365789484

/-! ## A298112.P13503209219607547758

`eq[char[A298001(n)], A130706(n)]`
-/

namespace A298112.P13503209219607547758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298001 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298112.P13503209219607547758

/-! ## A298112.P4580461081560723953

`eq[char[A298001(n)], A169585(n)]`
-/

namespace A298112.P4580461081560723953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298001 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298112.P4580461081560723953

/-! ## A298112.P5684612354042539399

`lt[char[A298001(n)], A157928(n)]`
-/

namespace A298112.P5684612354042539399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298001 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A298112.P5684612354042539399

/-! ## A298112.P8125707109673118108

`eq[char[A298001(n)], A151933(n)]`
-/

namespace A298112.P8125707109673118108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298001 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298112.P8125707109673118108

/-!
# A298113: Solution b( ) of the complementary equation a(n) = a(1)*b(n) - a(0)*b(n-1) + 4*n, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298113, there is no canonical definition to state claims against.
-/

/-! ## A298113.P14170801305639182554

`comp[A298002(n)-2]+2`
-/

namespace A298113.P14170801305639182554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A298113.P14170801305639182554

/-! ## A298113.P15552625952272191454

`lt[char[A298002(n)], n/A034296(n)]`
-/

namespace A298113.P15552625952272191454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A034296 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A298113.P15552625952272191454

/-! ## A298113.P9426967467966676686

`lt[char[A298002(n)], n/A250120(n)]`
-/

namespace A298113.P9426967467966676686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A250120 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A298113.P9426967467966676686

/-! ## A298113.P7482086737911127227

`lt[char[A298002(n)], n/A006933(n+1)]`
-/

namespace A298113.P7482086737911127227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A006933 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A298113.P7482086737911127227

/-! ## A298113.P6222054953429075603

`lt[char[A298002(n)], n/A039685(n+1)]`
-/

namespace A298113.P6222054953429075603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A039685 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A298113.P6222054953429075603

/-! ## A298113.P11995737871382749261

`lt[char[A298002(n)], n/A286445(n+6)]`
-/

namespace A298113.P11995737871382749261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A286445 (n + 6) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A298113.P11995737871382749261

/-! ## A298113.P16926490408671550867

`lt[char[A298002(n)], n/A000079(n)]`
-/

namespace A298113.P16926490408671550867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A298113.P16926490408671550867

/-! ## A298113.P17160515428099624568

`lt[char[A298002(n)], n/A282655(n+1)]`
-/

namespace A298113.P17160515428099624568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A282655 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A298113.P17160515428099624568

/-! ## A298113.P6946486083278495333

`eq[char[A298002(n)], A151933(n)]`
-/

namespace A298113.P6946486083278495333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298113.P6946486083278495333

/-! ## A298113.P18158639141544505207

`lt[char[A298002(n)], n/A214577(n+1)]`
-/

namespace A298113.P18158639141544505207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A214577 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A298113.P18158639141544505207

/-!
# A298115: Number of connected dominating sets in the n-Fibonacci cube graph.

The programs for A298115, there is no canonical definition to state claims against.
-/

/-! ## A298115.P7565283849782968665

`A071403(A326359(n+1)+1)`
-/

namespace A298115.P7565283849782968665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071403 (A326359 (n + 1) + 1).toNat

end

end A298115.P7565283849782968665

/-!
# A298117: Array read by antidiagonals: T(m,n) = number of Eulerian cycles in the torus grid graph C_m X C_n.

The programs for A298117, there is no canonical definition to state claims against.
-/

/-! ## A298117.P1519753554285199488

`A151969(2*A257610(n))`
-/

namespace A298117.P1519753554285199488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151969 (2 * A257610 n).toNat

end

end A298117.P1519753554285199488

/-! ## A298117.P13592435396779668011

`A003002(A157641(n))*A140513(n)`
-/

namespace A298117.P13592435396779668011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A157641 n).toNat * A140513 n

end

end A298117.P13592435396779668011

/-! ## A298117.P18385407122224233610

`A114217(A001263(n+1))*A140513(n)`
-/

namespace A298117.P18385407122224233610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114217 (A001263 (n + 1)).toNat * A140513 n

end

end A298117.P18385407122224233610

/-!
# A298118: Number of unlabeled rooted trees with n nodes in which all positive outdegrees are odd.

The programs for A298118, there is no canonical definition to state claims against.
-/

/-! ## A298118.P9334769956804711622

`floor(log(A120181(2^n)))`
-/

namespace A298118.P9334769956804711622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A120181 (2 ^ n) : ℝ)⌋

end

end A298118.P9334769956804711622

/-! ## A298118.P8524877224492135518

`A051889(A119587(n)+1)`
-/

namespace A298118.P8524877224492135518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A119587 n + 1).toNat

end

end A298118.P8524877224492135518

/-! ## A298118.P4359201902200210803

`A257639(A036673(n+1))`
-/

namespace A298118.P4359201902200210803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A036673 (n + 1)).toNat

end

end A298118.P4359201902200210803

/-! ## A298118.P1623728089193916060

`A008930(n)-A178798(A270929(n+1))`
-/

namespace A298118.P1623728089193916060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 n - A178798 (A270929 (n + 1)).toNat

end

end A298118.P1623728089193916060

/-! ## A298118.P9471510132006168588

`A137734(A063032(n))`
-/

namespace A298118.P9471510132006168588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A063032 n).toNat

end

end A298118.P9471510132006168588

/-!
# A298119: Array read by antidiagonals: T(m,n) = number of Eulerian orientations of the torus grid graph C_m X C_n.

The programs for A298119, there is no canonical definition to state claims against.
-/

/-! ## A298119.P10253158196203729156

`or(A098354(n+1), A102404(A022169(n)))`
-/

namespace A298119.P10253158196203729156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A098354 (n + 1)) (A102404 (A022169 n).toNat)

end

end A298119.P10253158196203729156

/-! ## A298119.P4491557101080559103

`A329129(A204398(n+1))`
-/

namespace A298119.P4491557101080559103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329129 (A204398 (n + 1)).toNat

end

end A298119.P4491557101080559103

/-! ## A298119.P5849737249643596525

`A231031(A032555(n+1))+2^(comp[∑[n]]-n)`
-/

namespace A298119.P5849737249643596525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231031 (A032555 (n + 1)).toNat : ℚ) + (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

end

end A298119.P5849737249643596525

/-!
# A298120: Matula-Goebel numbers of rooted trees in which all positive outdegrees are odd.

The programs for A298120, there is no canonical definition to state claims against.
-/

/-! ## A298120.P9428771224821451806

`A303024(A300064(n+1))`
-/

namespace A298120.P9428771224821451806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303024 (A300064 (n + 1)).toNat

end

end A298120.P9428771224821451806

/-! ## A298120.P15759097208184897602

`A298205(A043318(n+1))`
-/

namespace A298120.P15759097208184897602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298205 (A043318 (n + 1)).toNat

end

end A298120.P15759097208184897602

/-!
# A298121: a(n) is the number of triangles (up to congruence) with integer coordinates that have perimeter strictly less than n.

The programs for A298121, there is no canonical definition to state claims against.
-/

/-! ## A298121.P6209879030445209340

`∑[A298079(3+n)]`
-/

namespace A298121.P6209879030445209340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298079 (3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298121.P6209879030445209340

/-! ## A298121.P10439733217825644704

`A298079(n+3)+a(n-1)` with `a(0)=1`
-/

namespace A298121.P10439733217825644704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298079 (n + 3) + a (n - 1)

end

end A298121.P10439733217825644704

/-! ## A298121.P14203126892683099647

`record[A298079(1+n)+a(A023443(n))]` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A298121.P14203126892683099647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n f1 =>
  A298079 (1 + n) + f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298121.P14203126892683099647

/-!
# A298125: The hex numbers (A003215) together with 3.

The programs for A298125, the canonical program `A298125.P1618407112214989172` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298125 has offset 1).

The definition of A298125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298125.P5358277799379181422

`ogf((1+x^2+6x^3-2x^4)/(1-3x+3x^2-x^3))`
-/

namespace A298125.P5358277799379181422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 6, -2] [1, -3, 3, -1] n

end

end A298125.P5358277799379181422

namespace A298125

/-- `ogf((1+x^2+6x^3-2x^4)/(1-3x+3x^2-x^3))` -/
def P5358277799379181422.Spec : Prop :=
  ∀ n, P5358277799379181422.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P1618407112214989172

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=19, a(4)=37`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A298125

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1618407112214989172.Spec : Prop :=
  ∀ n, P1618407112214989172.a n = A298125 (n + 1)

theorem P1618407112214989172.correct : P1618407112214989172.Spec := by
  intro n
  simp only [A298125, Nat.add_sub_cancel]

end A298125

/-! ## A298125.P2329089914521883361

`∑[a(n-1)+6]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=12`
-/

namespace A298125.P2329089914521883361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 12] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298125.P2329089914521883361

namespace A298125

/-- `∑[a(n-1)+6]` -/
def P2329089914521883361.Spec : Prop :=
  ∀ n, (P2329089914521883361.a n : ℤ) = A298125 (n + 1)

end A298125

/-! ## A298125.P10894707861635367942

`(abs(2*n-3)+n)*n+1`
-/

namespace A298125.P10894707861635367942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|(2 * n : ℤ) - 3| + (n : ℤ)) * (n : ℤ) + 1

end

end A298125.P10894707861635367942

namespace A298125

/-- `(abs(2*n-3)+n)*n+1` -/
def P10894707861635367942.Spec : Prop :=
  ∀ n, P10894707861635367942.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P16055721907032476003

`A068626(A033627(n+1))`
-/

namespace A298125.P16055721907032476003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (A033627 (n + 1)).toNat

end

end A298125.P16055721907032476003

namespace A298125

/-- `A068626(A033627(n+1))` -/
def P16055721907032476003.Spec : Prop :=
  ∀ n, P16055721907032476003.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P10085979472002314497

`gcd(A181509(n+1), A239426(n))`
-/

namespace A298125.P10085979472002314497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181509 (n + 1)) (A239426 n)

end

end A298125.P10085979472002314497

namespace A298125

/-- `gcd(A181509(n+1), A239426(n))` -/
def P10085979472002314497.Spec : Prop :=
  ∀ n, (P10085979472002314497.a n : ℤ) = A298125 (n + 1)

end A298125

/-! ## A298125.P4606111882718658832

`A077043(A004274(n+1))`
-/

namespace A298125.P4606111882718658832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A004274 (n + 1)).toNat

end

end A298125.P4606111882718658832

namespace A298125

/-- `A077043(A004274(n+1))` -/
def P4606111882718658832.Spec : Prop :=
  ∀ n, P4606111882718658832.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P12084743062676565136

`A329482(A004280(n+1))`
-/

namespace A298125.P12084743062676565136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329482 (A004280 (n + 1)).toNat

end

end A298125.P12084743062676565136

namespace A298125

/-- `A329482(A004280(n+1))` -/
def P12084743062676565136.Spec : Prop :=
  ∀ n, P12084743062676565136.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P8439258636503012226

`A305185(A402293(n+1))`
-/

namespace A298125.P8439258636503012226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305185 (A402293 (n + 1)).toNat

end

end A298125.P8439258636503012226

namespace A298125

/-- `A305185(A402293(n+1))` -/
def P8439258636503012226.Spec : Prop :=
  ∀ n, P8439258636503012226.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P10189568887579502491

`A001399(3*A004275(n))`
-/

namespace A298125.P10189568887579502491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (3 * A004275 n).toNat

end

end A298125.P10189568887579502491

namespace A298125

/-- `A001399(3*A004275(n))` -/
def P10189568887579502491.Spec : Prop :=
  ∀ n, P10189568887579502491.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P17915635675472687817

`A129819(A139544(n+2))`
-/

namespace A298125.P17915635675472687817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129819 (A139544 (n + 2)).toNat

end

end A298125.P17915635675472687817

namespace A298125

/-- `A129819(A139544(n+2))` -/
def P17915635675472687817.Spec : Prop :=
  ∀ n, P17915635675472687817.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P12000627935175349494

`∩[A077043(n), A275673(n+1)]`
-/

namespace A298125.P12000627935175349494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298125.P12000627935175349494

namespace A298125

/-- `∩[A077043(n), A275673(n+1)]` -/
def P12000627935175349494.Spec : Prop :=
  ∀ n, (P12000627935175349494.a n : ℤ) = A298125 (n + 1)

end A298125

/-! ## A298125.P12087110601570226866

`A036410(A140164(n+2))`
-/

namespace A298125.P12087110601570226866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036410 (A140164 (n + 2)).toNat

end

end A298125.P12087110601570226866

namespace A298125

/-- `A036410(A140164(n+2))` -/
def P12087110601570226866.Spec : Prop :=
  ∀ n, P12087110601570226866.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P10077647639817229219

`A068626(A026488(n+1))`
-/

namespace A298125.P10077647639817229219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (A026488 (n + 1)).toNat

end

end A298125.P10077647639817229219

namespace A298125

/-- `A068626(A026488(n+1))` -/
def P10077647639817229219.Spec : Prop :=
  ∀ n, P10077647639817229219.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P16240240180393212849

`∩[A100764(n+1), A077043(n)]`
-/

namespace A298125.P16240240180393212849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298125.P16240240180393212849

namespace A298125

/-- `∩[A100764(n+1), A077043(n)]` -/
def P16240240180393212849.Spec : Prop :=
  ∀ n, (P16240240180393212849.a n : ℤ) = A298125 (n + 1)

end A298125

/-! ## A298125.P14725389672825239026

`A132111(A186752(n+2))`
-/

namespace A298125.P14725389672825239026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 (A186752 (n + 2)).toNat

end

end A298125.P14725389672825239026

namespace A298125

/-- `A132111(A186752(n+2))` -/
def P14725389672825239026.Spec : Prop :=
  ∀ n, P14725389672825239026.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P10927880950886395868

`A108625(A000124(n)+A004275(n)+1)`
-/

namespace A298125.P10927880950886395868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A000124 n + (A004275 n + 1)).toNat

end

end A298125.P10927880950886395868

namespace A298125

/-- `A108625(A000124(n)+A004275(n)+1)` -/
def P10927880950886395868.Spec : Prop :=
  ∀ n, P10927880950886395868.a n = A298125 (n + 1)

end A298125

/-! ## A298125.P7061079612085670428

`record[A029579(A000267(n))²-n]`
-/

namespace A298125.P7061079612085670428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A000267 n).toNat ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298125.P7061079612085670428

namespace A298125

/-- `record[A029579(A000267(n))²-n]` -/
def P7061079612085670428.Spec : Prop :=
  ∀ n, P7061079612085670428.a n = A298125 (n + 1)

end A298125

/-!
# A298126: Matula-Goebel numbers of rooted trees in which all outdegrees are even.

The programs for A298126, there is no canonical definition to state claims against.
-/

/-! ## A298126.P15911736171024839087

`record[A025480(A190175(n+1))]`
-/

namespace A298126.P15911736171024839087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A190175 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298126.P15911736171024839087

/-! ## A298126.P11205964439240832426

`record[A032742(A190175(n+2))]`
-/

namespace A298126.P11205964439240832426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A190175 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298126.P11205964439240832426

/-! ## A298126.P1128154203637785213

`A000720(p?[A190175(n+1)])`
-/

namespace A298126.P1128154203637785213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A298126.P1128154203637785213

/-! ## A298126.P8808572943283000385

`A003963(p?[A190175(n+1)])`
-/

namespace A298126.P8808572943283000385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A298126.P8808572943283000385

/-! ## A298126.P4686798319977896783

`A026233(p?[A190175(n+1)])`
-/

namespace A298126.P4686798319977896783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A298126.P4686798319977896783

/-!
# A298127: Number of n X n 0..1 arrays with every element equal to 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298127, there is no canonical definition to state claims against.
-/

/-! ## A298127.P482662818103916543

`A298133(∑[4*n]+1)`
-/

namespace A298127.P482662818103916543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298127.P482662818103916543

/-! ## A298127.P8495021988862374039

`record[A298133(n+1)/A224344(2*n)]`
-/

namespace A298127.P8495021988862374039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298133 (n + 1) : ℚ) / (A224344 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298127.P8495021988862374039

/-!
# A298128: Number of nX3 0..1 arrays with every element equal to 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298128, there is no canonical definition to state claims against.
-/

/-! ## A298128.P7025084785686126048

`A298133(∑[n+2]+4)`
-/

namespace A298128.P7025084785686126048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298128.P7025084785686126048

/-!
# A298129: Number of n X 4 0..1 arrays with every element equal to 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298129, there is no canonical definition to state claims against.
-/

/-! ## A298129.P12449781125763568784

`A298133(∑[n+5]+5-2*n)`
-/

namespace A298129.P12449781125763568784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (∑ j ∈ Finset.range (n + 1), f1 j + 5 - 2 * n)

end

end A298129.P12449781125763568784

/-!
# A298130: Number of nX5 0..1 arrays with every element equal to 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298130, there is no canonical definition to state claims against.
-/

/-! ## A298130.P3424320550026679812

`A298133(A167499(n+3))`
-/

namespace A298130.P3424320550026679812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (A167499 (n + 3)).toNat

end

end A298130.P3424320550026679812

/-! ## A298130.P7981650207488200846

`A298133(A374005(n+1))`
-/

namespace A298130.P7981650207488200846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (A374005 (n + 1)).toNat

end

end A298130.P7981650207488200846

/-!
# A298131: Number of nX6 0..1 arrays with every element equal to 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298131, there is no canonical definition to state claims against.
-/

/-! ## A298131.P6767260088722530781

`A298133(∑[n+5]+16)`
-/

namespace A298131.P6767260088722530781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298131.P6767260088722530781

/-!
# A298132: Number of nX7 0..1 arrays with every element equal to 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298132, there is no canonical definition to state claims against.
-/

/-! ## A298132.P11776242556847850633

`A298133(A167487(n+5))`
-/

namespace A298132.P11776242556847850633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (A167487 (n + 5)).toNat

end

end A298132.P11776242556847850633

/-! ## A298132.P12800969897417379365

`A298133(A374008(n+1))`
-/

namespace A298132.P12800969897417379365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298133 (A374008 (n + 1)).toNat

end

end A298132.P12800969897417379365

/-!
# A298133: T(n,k) is the number of n X k 0..1 arrays with every element equal to 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298133, there is no canonical definition to state claims against.
-/

/-! ## A298133.P13627641493383974005

`A355432(A217547(n+1))+A297866(n+1)`
-/

namespace A298133.P13627641493383974005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (A217547 (n + 1)).toNat + A297866 (n + 1)

end

end A298133.P13627641493383974005

/-! ## A298133.P17319001144228800903

`A297866(n+1)+A010051(A176491(n))`
-/

namespace A298133.P17319001144228800903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (n + 1) + A010051 (A176491 n).toNat

end

end A298133.P17319001144228800903

/-! ## A298133.P6228756726363785064

`A297866(n+1)+A186747(A140186(n))`
-/

namespace A298133.P6228756726363785064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297866 (n + 1) + A186747 (A140186 n).toNat

end

end A298133.P6228756726363785064

/-!
# A298134: Number of n X n 0..1 arrays with every element equal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298134, there is no canonical definition to state claims against.
-/

/-! ## A298134.P15622674875528575868

`A298139(∑[4*n]+1)`
-/

namespace A298134.P15622674875528575868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298139 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298134.P15622674875528575868

/-!
# A298135: Number of nX4 0..1 arrays with every element equal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298135, there is no canonical definition to state claims against.
-/

/-! ## A298135.P2359928303299917106

`A298139(∑[n+3]+7)`
-/

namespace A298135.P2359928303299917106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298139 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298135.P2359928303299917106

/-!
# A298136: Number of n X 5 0..1 arrays with every element equal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298136, there is no canonical definition to state claims against.
-/

/-! ## A298136.P14595700511440435958

`A298139(∑[n+4]+11)`
-/

namespace A298136.P14595700511440435958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298139 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298136.P14595700511440435958

/-!
# A298137: Number of nX6 0..1 arrays with every element equal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298137, there is no canonical definition to state claims against.
-/

/-! ## A298137.P9558947989044195588

`A298139(∑[n+5]+16)`
-/

namespace A298137.P9558947989044195588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298139 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298137.P9558947989044195588

/-!
# A298138: Number of nX7 0..1 arrays with every element equal to 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298138, there is no canonical definition to state claims against.
-/

/-! ## A298138.P6423834814283692711

`A298139(A374008(n+1))`
-/

namespace A298138.P6423834814283692711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298139 (A374008 (n + 1)).toNat

end

end A298138.P6423834814283692711

/-!
# A298140: Number of n X n 0..1 arrays with every element equal to 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298140, there is no canonical definition to state claims against.
-/

/-! ## A298140.P15016272403827397940

`A298146(∑[4*n]+1)`
-/

namespace A298140.P15016272403827397940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298146 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298140.P15016272403827397940

/-!
# A298141: Number of n X 3 0..1 arrays with every element equal to 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298141, the canonical program `A298141.P9706802488218744668` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298141 has offset 1).

The definition of A298141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298141.P9706802488218744668

`ogf((2x-2x^2-2x^3-x^4+x^5-4x^6+3x^7+3x^8)/(1-x-2x^2-2x^5+4x^6+8x^7+x^8-x^9))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A298141

/-- `ogf((2x-2x^2-2x^3-x^4+x^5-4x^6+3x^7+3x^8)/(1-x-2x^2-2x^5+4x^6+8x^7+x^8-x^9))` -/
def P9706802488218744668.Spec : Prop :=
  ∀ n, P9706802488218744668.a n = A298141 (n + 1)

theorem P9706802488218744668.correct : P9706802488218744668.Spec := by
  intro n
  simp only [A298141, Nat.add_sub_cancel]

end A298141

/-! ## A298141.P11689158802219129952

`A298177(4+∑[n+2])`
-/

namespace A298141.P11689158802219129952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298177 (4 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298141.P11689158802219129952

namespace A298141

/-- `A298177(4+∑[n+2])` -/
def P11689158802219129952.Spec : Prop :=
  ∀ n, P11689158802219129952.a n = A298141 (n + 1)

end A298141

/-! ## A298141.P15647484314432034213

`A298146(A167614(n+1))`
-/

namespace A298141.P15647484314432034213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298146 (A167614 (n + 1)).toNat

end

end A298141.P15647484314432034213

namespace A298141

/-- `A298146(A167614(n+1))` -/
def P15647484314432034213.Spec : Prop :=
  ∀ n, P15647484314432034213.a n = A298141 (n + 1)

end A298141

/-!
# A298142: Number of nX4 0..1 arrays with every element equal to 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298142, there is no canonical definition to state claims against.
-/

/-! ## A298142.P18313330370292474734

`record[A298177(4+∑[n])]`
-/

namespace A298142.P18313330370292474734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298177 (4 + ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298142.P18313330370292474734

/-! ## A298142.P13628008064764768485

`A298177(∑[n+3]+7)`
-/

namespace A298142.P13628008064764768485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298177 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298142.P13628008064764768485

/-! ## A298142.P16988699745755297684

`record[A298177(n+4)/A056241(n+1)]`
-/

namespace A298142.P16988699745755297684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298177 (n + 4) : ℚ) / (A056241 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298142.P16988699745755297684

/-! ## A298142.P16896587683909400792

`A298146(A374004(n+1))`
-/

namespace A298142.P16896587683909400792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298146 (A374004 (n + 1)).toNat

end

end A298142.P16896587683909400792

/-! ## A298142.P17275657065410914140

`A298146(A141214(n+1))`
-/

namespace A298142.P17275657065410914140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298146 (A141214 (n + 1)).toNat

end

end A298142.P17275657065410914140

/-!
# A298143: Number of nX5 0..1 arrays with every element equal to 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298143, there is no canonical definition to state claims against.
-/

/-! ## A298143.P17494753008801155407

`A298177(∑[n+4]+11)`
-/

namespace A298143.P17494753008801155407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298177 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298143.P17494753008801155407

/-! ## A298143.P2927353518697711457

`A298146(A374005(n+1))`
-/

namespace A298143.P2927353518697711457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298146 (A374005 (n + 1)).toNat

end

end A298143.P2927353518697711457

/-!
# A298144: Number of nX6 0..1 arrays with every element equal to 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298144, there is no canonical definition to state claims against.
-/

/-! ## A298144.P1337876809238706676

`A298146(∑[n+5]+16)`
-/

namespace A298144.P1337876809238706676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298146 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298144.P1337876809238706676

/-!
# A298145: Number of nX7 0..1 arrays with every element equal to 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298145, there is no canonical definition to state claims against.
-/

/-! ## A298145.P12797827277232040946

`A298146(∑[n+6]+22)`
-/

namespace A298145.P12797827277232040946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298146 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A298145.P12797827277232040946

/-!
# A298146: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298146, there is no canonical definition to state claims against.
-/

/-! ## A298146.P13777588486628214627

`A298177(n+1)`
-/

namespace A298146.P13777588486628214627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298177 (n + 1)

end

end A298146.P13777588486628214627

/-!
# A298147: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298147, there is no canonical definition to state claims against.
-/

/-! ## A298147.P12200315485433382731

`A298154(∑[4*n]+1)`
-/

namespace A298147.P12200315485433382731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298147.P12200315485433382731

/-! ## A298147.P9006817759401749093

`record[A298154(Δ[A235355(n)])]`
-/

namespace A298147.P9006817759401749093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298147.P9006817759401749093

/-! ## A298147.P3428119439647613633

`record[A298154(A330613(n+1))]`
-/

namespace A298147.P3428119439647613633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298147.P3428119439647613633

/-! ## A298147.P8451044344116337110

`record[A003982(n)*A298154(n+1)]`
-/

namespace A298147.P8451044344116337110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298154 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298147.P8451044344116337110

/-!
# A298148: Number of nX2 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298148, there is no canonical definition to state claims against.
-/

/-! ## A298148.P9273386366201139784

`A298154(∑[n+1]+2)`
-/

namespace A298148.P9273386366201139784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298148.P9273386366201139784

/-! ## A298148.P12877577853553830333

`A298230(∑[n+1]+2)`
-/

namespace A298148.P12877577853553830333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298148.P12877577853553830333

/-! ## A298148.P1711323008813560710

`A299052(∑[n+1]+2)`
-/

namespace A298148.P1711323008813560710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298148.P1711323008813560710

/-! ## A298148.P13859784602598702889

`A299128(∑[1+n]+2)`
-/

namespace A298148.P13859784602598702889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299128 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298148.P13859784602598702889

/-! ## A298148.P4507982198690037461

`A299689(∑[n+1]+2)`
-/

namespace A298148.P4507982198690037461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299689 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298148.P4507982198690037461

/-!
# A298149: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298149, there is no canonical definition to state claims against.
-/

/-! ## A298149.P4900028209815542617

`A298225(n+1)+A001611(n)-A000034(n)`
-/

namespace A298149.P4900028209815542617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298225 (n + 1) + A001611 n - A000034 n

end

end A298149.P4900028209815542617

/-! ## A298149.P4946860011800706390

`A298154(∑[n+2]+4)`
-/

namespace A298149.P4946860011800706390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298149.P4946860011800706390

/-!
# A298150: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298150, there is no canonical definition to state claims against.
-/

/-! ## A298150.P5690298663994076734

`A298154(∑[n+3]+7)`
-/

namespace A298150.P5690298663994076734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298150.P5690298663994076734

/-!
# A298151: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298151, there is no canonical definition to state claims against.
-/

/-! ## A298151.P2625332863762474607

`A298154(C(n+6, 2)-n)`
-/

namespace A298151.P2625332863762474607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (Nat.choose (n + 6) 2 - n)

end

end A298151.P2625332863762474607

/-!
# A298152: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298152, there is no canonical definition to state claims against.
-/

/-! ## A298152.P8755580119561241637

`A298154(∑[n+5]+16)`
-/

namespace A298152.P8755580119561241637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298152.P8755580119561241637

/-!
# A298153: Number of n X 7 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298153, there is no canonical definition to state claims against.
-/

/-! ## A298153.P16883446808108510523

`A298154(A374008(n+1))`
-/

namespace A298153.P16883446808108510523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (A374008 (n + 1)).toNat

end

end A298153.P16883446808108510523

/-!
# A298154: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298154, there is no canonical definition to state claims against.
-/

/-! ## A298154.P5541578787883158822

`A336551(A168549(n))+A298230(n+1)`
-/

namespace A298154.P5541578787883158822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A168549 n).toNat + A298230 (n + 1)

end

end A298154.P5541578787883158822

/-! ## A298154.P13183583606588810358

`A298230(n+1)+A213003(A299905(n))`
-/

namespace A298154.P13183583606588810358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (n + 1) + A213003 (A299905 n).toNat

end

end A298154.P13183583606588810358

/-! ## A298154.P1767515087545204115

`A298230(n+1)+A124761(A008277(n+1))`
-/

namespace A298154.P1767515087545204115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (n + 1) + A124761 (A008277 (n + 1)).toNat

end

end A298154.P1767515087545204115

/-! ## A298154.P7579109815367858554

`A298230(n+1)+A011695(A282230(n+1))`
-/

namespace A298154.P7579109815367858554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (n + 1) + A011695 (A282230 (n + 1)).toNat

end

end A298154.P7579109815367858554

/-! ## A298154.P6980270545648574729

`A298230(n+1)+A010059(A301443(n+1))`
-/

namespace A298154.P6980270545648574729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (n + 1) + A010059 (A301443 (n + 1)).toNat

end

end A298154.P6980270545648574729

/-!
# A298157: Number of primitive abundant numbers (A071395) with n prime factors, counted with multiplicity.

The programs for A298157, there is no canonical definition to state claims against.
-/

/-! ## A298157.P1296216449964093387

`A009947(A337595(n))`
-/

namespace A298157.P1296216449964093387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A337595 n).toNat

end

end A298157.P1296216449964093387

/-!
# A298158: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = -1, a(1) = -2, a(2) = 1, a(3) = 1.

The programs for A298158, the canonical program `A298158.P16092848154477162813` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298158 has offset 0).

The definition of A298158 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A298158.P16092848154477162813`, by `A298158.P16092848154477162813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298158.P17095092929285419116

`ogf((-1-x+6x^2+4x^3)/(1-x-3x^2+2x^3+2x^4))`
-/

namespace A298158.P17095092929285419116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, -1, 6, 4] [1, -1, -3, 2, 2] n

end

end A298158.P17095092929285419116

namespace A298158

/-- `ogf((-1-x+6x^2+4x^3)/(1-x-3x^2+2x^3+2x^4))` -/
def P17095092929285419116.Spec : Prop :=
  ∀ n, P17095092929285419116.a n = A298158 n

end A298158

/-! ## A298158.P16092848154477162813

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=-1, a(1)=-2, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A298158

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P16092848154477162813.Spec : Prop :=
  ∀ n, P16092848154477162813.a n = A298158 n

theorem P16092848154477162813.correct : P16092848154477162813.Spec := by
  intro n
  simp only [A298158]

end A298158

/-! ## A298158.P761585672747621144

`A295735(n)+A295733(n+1)`
-/

namespace A298158.P761585672747621144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 n + A295733 (n + 1)

end

end A298158.P761585672747621144

namespace A298158

/-- `A295735(n)+A295733(n+1)` -/
def P761585672747621144.Spec : Prop :=
  ∀ n, P761585672747621144.a n = A298158 n

end A298158

/-! ## A298158.P9355364915807981455

`A167616(n+5)-A079360(n)`
-/

namespace A298158.P9355364915807981455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167616 (n + 5) - A079360 n

end

end A298158.P9355364915807981455

namespace A298158

/-- `A167616(n+5)-A079360(n)` -/
def P9355364915807981455.Spec : Prop :=
  ∀ n, P9355364915807981455.a n = A298158 n

end A298158

/-! ## A298158.P10660104433764240081

`A295732(n+1)+A028892(n+1)`
-/

namespace A298158.P10660104433764240081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (n + 1) + A028892 (n + 1)

end

end A298158.P10660104433764240081

namespace A298158

/-- `A295732(n+1)+A028892(n+1)` -/
def P10660104433764240081.Spec : Prop :=
  ∀ n, P10660104433764240081.a n = A298158 n

end A298158

/-! ## A298158.P15357890299132513143

`A295731(n+1)-A077957(n+1)`
-/

namespace A298158.P15357890299132513143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (n + 1) - A077957 (n + 1)

end

end A298158.P15357890299132513143

namespace A298158

/-- `A295731(n+1)-A077957(n+1)` -/
def P15357890299132513143.Spec : Prop :=
  ∀ n, P15357890299132513143.a n = A298158 n

end A298158

/-! ## A298158.P6367828736097958102

`A295851(n+1)-A077957(n+3)`
-/

namespace A298158.P6367828736097958102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295851 (n + 1) - A077957 (n + 3)

end

end A298158.P6367828736097958102

namespace A298158

/-- `A295851(n+1)-A077957(n+3)` -/
def P6367828736097958102.Spec : Prop :=
  ∀ n, P6367828736097958102.a n = A298158 n

end A298158

/-! ## A298158.P14604457061666630312

`A295735(n+1)+2*A028892(n+1)`
-/

namespace A298158.P14604457061666630312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295735 (n + 1) + 2 * A028892 (n + 1)

end

end A298158.P14604457061666630312

namespace A298158

/-- `A295735(n+1)+2*A028892(n+1)` -/
def P14604457061666630312.Spec : Prop :=
  ∀ n, P14604457061666630312.a n = A298158 n

end A298158

/-! ## A298158.P14786544060238803350

`A295736(n+1)+A295737(n)+A000045(n)`
-/

namespace A298158.P14786544060238803350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295736 (n + 1) + (A295737 n + A000045 n)

end

end A298158.P14786544060238803350

namespace A298158

/-- `A295736(n+1)+A295737(n)+A000045(n)` -/
def P14786544060238803350.Spec : Prop :=
  ∀ n, P14786544060238803350.a n = A298158 n

end A298158

/-! ## A298158.P4104145263718988468

`A295737(n+1)+A295733(n)+A005672(n)`
-/

namespace A298158.P4104145263718988468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295737 (n + 1) + (A295733 n + A005672 n)

end

end A298158.P4104145263718988468

namespace A298158

/-- `A295737(n+1)+A295733(n)+A005672(n)` -/
def P4104145263718988468.Spec : Prop :=
  ∀ n, P4104145263718988468.a n = A298158 n

end A298158

/-! ## A298158.P1696585573373368242

`A005672(n+1)+A295732(n+1)-A000045(n)`
-/

namespace A298158.P1696585573373368242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005672 (n + 1) + (A295732 (n + 1) - A000045 n)

end

end A298158.P1696585573373368242

namespace A298158

/-- `A005672(n+1)+A295732(n+1)-A000045(n)` -/
def P1696585573373368242.Spec : Prop :=
  ∀ n, P1696585573373368242.a n = A298158 n

end A298158

/-! ## A298158.P569457239766527737

`A295730(n+1)+A295733(n+1)-A000045(n)`
-/

namespace A298158.P569457239766527737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295730 (n + 1) + (A295733 (n + 1) - A000045 n)

end

end A298158.P569457239766527737

namespace A298158

/-- `A295730(n+1)+A295733(n+1)-A000045(n)` -/
def P569457239766527737.Spec : Prop :=
  ∀ n, P569457239766527737.a n = A298158 n

end A298158

/-! ## A298158.P5706004121266313043

`A295723(n+1)+A295737(n+1)-A295718(n)`
-/

namespace A298158.P5706004121266313043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295723 (n + 1) + (A295737 (n + 1) - A295718 n)

end

end A298158.P5706004121266313043

namespace A298158

/-- `A295723(n+1)+A295737(n+1)-A295718(n)` -/
def P5706004121266313043.Spec : Prop :=
  ∀ n, P5706004121266313043.a n = A298158 n

end A298158

/-! ## A298158.P2206837797364547298

`A295732(n+1)+A295732(n+1)-A295735(n+1)`
-/

namespace A298158.P2206837797364547298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295732 (n + 1) + (A295732 (n + 1) - A295735 (n + 1))

end

end A298158.P2206837797364547298

namespace A298158

/-- `A295732(n+1)+A295732(n+1)-A295735(n+1)` -/
def P2206837797364547298.Spec : Prop :=
  ∀ n, P2206837797364547298.a n = A298158 n

end A298158

/-! ## A298158.P4135278518694688574

`A295722(n)-A000045(n)`
-/

namespace A298158.P4135278518694688574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295722 n - A000045 n

end

end A298158.P4135278518694688574

namespace A298158

/-- `A295722(n)-A000045(n)` -/
def P4135278518694688574.Spec : Prop :=
  ∀ n, P4135278518694688574.a n = A298158 n

end A298158

/-! ## A298158.P3066830858443930546

`∑[A295856(n)]-(A000045(n)+1)`
-/

namespace A298158.P3066830858443930546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000045 n + 1)

end

end A298158.P3066830858443930546

namespace A298158

/-- `∑[A295856(n)]-(A000045(n)+1)` -/
def P3066830858443930546.Spec : Prop :=
  ∀ n, P3066830858443930546.a n = A298158 n

end A298158

/-! ## A298158.P13129236730151689623

`A295858(n+2)-A000032(n+1)`
-/

namespace A298158.P13129236730151689623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295858 (n + 2) - A000032 (n + 1)

end

end A298158.P13129236730151689623

namespace A298158

/-- `A295858(n+2)-A000032(n+1)` -/
def P13129236730151689623.Spec : Prop :=
  ∀ n, P13129236730151689623.a n = A298158 n

end A298158

/-! ## A298158.P2158109215255244659

`A295731(n+2)-A079284(n+1)`
-/

namespace A298158.P2158109215255244659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (n + 2) - A079284 (n + 1)

end

end A298158.P2158109215255244659

namespace A298158

/-- `A295731(n+2)-A079284(n+1)` -/
def P2158109215255244659.Spec : Prop :=
  ∀ n, P2158109215255244659.a n = A298158 n

end A298158

/-! ## A298158.P13692124675408787707

`2*A295732(n+1)-A295735(n+1)`
-/

namespace A298158.P13692124675408787707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295732 (n + 1) - A295735 (n + 1)

end

end A298158.P13692124675408787707

namespace A298158

/-- `2*A295732(n+1)-A295735(n+1)` -/
def P13692124675408787707.Spec : Prop :=
  ∀ n, P13692124675408787707.a n = A298158 n

end A298158

/-! ## A298158.P15892823498081159650

`A000071(n+1)+A295722(n)-A000071(n+2)`
-/

namespace A298158.P15892823498081159650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A295722 n - A000071 (n + 2))

end

end A298158.P15892823498081159650

namespace A298158

/-- `A000071(n+1)+A295722(n)-A000071(n+2)` -/
def P15892823498081159650.Spec : Prop :=
  ∀ n, P15892823498081159650.a n = A298158 n

end A298158

/-!
# A298161: Nonnegative numbers n such that for any k > 0, n + k is not a multiple of prime(k) (where prime(k) denotes the k-th prime).

The programs for A298161, there is no canonical definition to state claims against.
-/

/-! ## A298161.P2667295678041422002

`eq[1, A298155(n)]`
-/

namespace A298161.P2667295678041422002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298161.P2667295678041422002

/-! ## A298161.P3109989751728397682

`filter[2*n, A298155(#)]`
-/

namespace A298161.P3109989751728397682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A298155 (f1 j) = 1) n)

end

end A298161.P3109989751728397682

/-! ## A298161.P11756685385609804830

`lt[A298155(n), atan(A253108(n+1))]`
-/

namespace A298161.P11756685385609804830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298155 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A253108 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A298161.P11756685385609804830

/-! ## A298161.P1883737550863957453

`record[A005843(n)-n*A298155(n)]`
-/

namespace A298161.P1883737550863957453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (n : ℤ) * A298155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298161.P1883737550863957453

/-! ## A298161.P16815794083304348072

`lt[A298155(n), atan(A334405(n+1))]`
-/

namespace A298161.P16815794083304348072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298155 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A334405 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A298161.P16815794083304348072

/-! ## A298161.P12784292608620244413

`lt[A298155(n), atan(A334407(n+1))]`
-/

namespace A298161.P12784292608620244413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298155 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A334407 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A298161.P12784292608620244413

/-!
# A298162: Number of n X n 0..1 arrays with every element equal to 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298162, there is no canonical definition to state claims against.
-/

/-! ## A298162.P9791212195524313571

`A298167(∑[4*n]+1)`
-/

namespace A298162.P9791212195524313571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298162.P9791212195524313571

/-!
# A298163: Number of n X 4 0..1 arrays with every element equal to 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298163, the canonical program `A298163.P6414225509599955498` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298163 has offset 1).

The definition of A298163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298163.P6414225509599955498

`ogf((2x-2x^2-2x^3-2x^4+x^5+2x^6)/(1-2x-x^2+x^3+2x^4+2x^5-x^6-x^7))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A298163

/-- `ogf((2x-2x^2-2x^3-2x^4+x^5+2x^6)/(1-2x-x^2+x^3+2x^4+2x^5-x^6-x^7))` -/
def P6414225509599955498.Spec : Prop :=
  ∀ n, P6414225509599955498.a n = A298163 (n + 1)

theorem P6414225509599955498.correct : P6414225509599955498.Spec := by
  intro n
  simp only [A298163, Nat.add_sub_cancel]

end A298163

/-! ## A298163.P9941874601205296827

`A298167(∑[n+3]+7)`
-/

namespace A298163.P9941874601205296827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298167 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298163.P9941874601205296827

namespace A298163

/-- `A298167(∑[n+3]+7)` -/
def P9941874601205296827.Spec : Prop :=
  ∀ n, P9941874601205296827.a n = A298163 (n + 1)

end A298163

/-! ## A298163.P7509027398580441620

`A298957(∑[n+3]+7)`
-/

namespace A298163.P7509027398580441620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298163.P7509027398580441620

namespace A298163

/-- `A298957(∑[n+3]+7)` -/
def P7509027398580441620.Spec : Prop :=
  ∀ n, P7509027398580441620.a n = A298163 (n + 1)

end A298163

/-! ## A298163.P10115354283174551506

`A135034(A278281(n+1))`
-/

namespace A298163.P10115354283174551506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A278281 (n + 1)).toNat

end

end A298163.P10115354283174551506

namespace A298163

/-- `A135034(A278281(n+1))` -/
def P10115354283174551506.Spec : Prop :=
  ∀ n, P10115354283174551506.a n = A298163 (n + 1)

end A298163

/-!
# A298164: Number of n X 5 0..1 arrays with every element equal to 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298164, there is no canonical definition to state claims against.
-/

/-! ## A298164.P16475518943128412459

`A298167(A374005(n+1))`
-/

namespace A298164.P16475518943128412459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298167 (A374005 (n + 1)).toNat

end

end A298164.P16475518943128412459

/-!
# A298165: Number of nX6 0..1 arrays with every element equal to 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298165, there is no canonical definition to state claims against.
-/

/-! ## A298165.P13933505428992286787

`A298167(A374007(n+1))`
-/

namespace A298165.P13933505428992286787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298167 (A374007 (n + 1)).toNat

end

end A298165.P13933505428992286787

/-!
# A298166: Number of nX7 0..1 arrays with every element equal to 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298166, there is no canonical definition to state claims against.
-/

/-! ## A298166.P9158097017253965881

`A298167(A374008(n+1))`
-/

namespace A298166.P9158097017253965881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298167 (A374008 (n + 1)).toNat

end

end A298166.P9158097017253965881

/-!
# A298167: T(n,k)=Number of nXk 0..1 arrays with every element equal to 3, 4, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298167, there is no canonical definition to state claims against.
-/

/-! ## A298167.P11289767212253118669

`A298957(n+1)`
-/

namespace A298167.P11289767212253118669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298957 (n + 1)

end

end A298167.P11289767212253118669

/-! ## A298167.P15891550456650144365

`A098356(n)`
-/

namespace A298167.P15891550456650144365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 n

end

end A298167.P15891550456650144365

/-!
# A298168: The first of three consecutive triangular numbers the sum of which is equal to the sum of three consecutive primes.

The programs for A298168, there is no canonical definition to state claims against.
-/

/-! ## A298168.P13125849815260434175

`A298169(n+1)-col(A298169(n+1))`
-/

namespace A298168.P13125849815260434175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298169 (n + 1) - (SequenceMachineLib.triCol (A298169 (n + 1)).toNat : ℤ)

end

end A298168.P13125849815260434175

/-! ## A298168.P2190703937184010944

`∑{#}[row(A298169(n+1)), #]`
-/

namespace A298168.P2190703937184010944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A298169 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), k

end

end A298168.P2190703937184010944

/-! ## A298168.P13591931792033093338

`A057944(A298169(n+1))`
-/

namespace A298168.P13591931792033093338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A298169 (n + 1)).toNat

end

end A298168.P13591931792033093338

/-! ## A298168.P8712872027319347533

`A298169(n+1)-A144328(A298169(n+1)+1)`
-/

namespace A298168.P8712872027319347533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298169 (n + 1) - A144328 (A298169 (n + 1) + 1).toNat

end

end A298168.P8712872027319347533

/-!
# A298169: The first of three consecutive primes the sum of which is equal to the sum of three consecutive triangular numbers.

The programs for A298169, there is no canonical definition to state claims against.
-/

/-! ## A298169.P8512037353060719603

`p?[A171435(2*n+1)-A229445(n+2)]`
-/

namespace A298169.P8512037353060719603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * n + 1) - A229445 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A298169.P8512037353060719603

/-! ## A298169.P12148117682433363065

`A151799(C(A159049(n+1), A214281(n))-(n+2))`
-/

namespace A298169.P12148117682433363065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (Nat.choose (A159049 (n + 1)).toNat (A214281 n).toNat - (n + 2))

end

end A298169.P12148117682433363065

/-! ## A298169.P14043270959900553679

`filter[A002260(2*n+5)*A085801(2*n+1), A003415(#)]`
-/

namespace A298169.P14043270959900553679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * n + 5) * A085801 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003415 (f1 j).toNat = 1) n)

end

end A298169.P14043270959900553679

/-!
# A298170: Solution (b(n)) of the system of 3 complementary equations in Comments.

The programs for A298170, there is no canonical definition to state claims against.
-/

/-! ## A298170.P10749664297951367209

`A008619(A298418(n)+n)`
-/

namespace A298170.P10749664297951367209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A298418 n + (n : ℤ)).toNat

end

end A298170.P10749664297951367209

/-! ## A298170.P16396283329580009100

`A298418(n)-A297838(n)`
-/

namespace A298170.P16396283329580009100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298418 n - A297838 n

end

end A298170.P16396283329580009100

/-! ## A298170.P10380265710467416368

`A004526(A298418(n)+n)+1`
-/

namespace A298170.P10380265710467416368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A298418 n + (n : ℤ)).toNat + 1

end

end A298170.P10380265710467416368

/-! ## A298170.P15699758563834229651

`A065033(A298418(n)+1+n)`
-/

namespace A298170.P15699758563834229651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A298418 n + 1 + (n : ℤ)).toNat

end

end A298170.P15699758563834229651

/-! ## A298170.P12795560501428897244

`A110654(A298418(n)+1+n)`
-/

namespace A298170.P12795560501428897244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A298418 n + 1 + (n : ℤ)).toNat

end

end A298170.P12795560501428897244

/-! ## A298170.P11314757558296219416

`A123108(A298418(n)+n)+1`
-/

namespace A298170.P11314757558296219416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A298418 n + (n : ℤ)).toNat + 1

end

end A298170.P11314757558296219416

/-! ## A298170.P5567178158785001831

`∑{d}[A298418(n)+n, A004525(A000010(#))]`
-/

namespace A298170.P5567178158785001831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298418 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A004525 (A000010 d).toNat

end

end A298170.P5567178158785001831

/-!
# A298173: Solution (a(n)) of the complementary equation in Comments.

The programs for A298173, there is no canonical definition to state claims against.
-/

/-! ## A298173.P3367287784914016412

`A108765(n)+A004526(A183119(n))`
-/

namespace A298173.P3367287784914016412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108765 n + A004526 (A183119 n).toNat

end

end A298173.P3367287784914016412

/-! ## A298173.P18249730578468428457

`floor(9*3^n/4)-A008619(A104522(n))`
-/

namespace A298173.P18249730578468428457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * ((3 ^ n : ℚ) / 4)⌋ - A008619 (A104522 n).toNat

end

end A298173.P18249730578468428457

/-! ## A298173.P436073621612588206

`A081251(n+1)-A003602(A104522(n))`
-/

namespace A298173.P436073621612588206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081251 (n + 1) - A003602 (A104522 n).toNat

end

end A298173.P436073621612588206

/-! ## A298173.P18005892942800702057

`A081134(A081250(n))+∑[A033113(n+1)]`
-/

namespace A298173.P18005892942800702057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (A081250 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298173.P18005892942800702057

/-! ## A298173.P4406262806180620803

`A081251(n+1)-A246277(A104522(n)+1)`
-/

namespace A298173.P4406262806180620803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081251 (n + 1) - A246277 (A104522 n + 1).toNat

end

end A298173.P4406262806180620803

/-!
# A298174: Number of n X n 0..1 arrays with every element equal to 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298174, there is no canonical definition to state claims against.
-/

/-! ## A298174.P5103042436568582078

`A298177(∑[4*n]+1)`
-/

namespace A298174.P5103042436568582078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298177 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298174.P5103042436568582078

/-!
# A298175: Number of n X 6 0..1 arrays with every element equal to 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298175, there is no canonical definition to state claims against.
-/

/-! ## A298175.P9456336094023231434

`A298177(∑[n+5]+16)`
-/

namespace A298175.P9456336094023231434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298177 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298175.P9456336094023231434

/-!
# A298176: Number of nX7 0..1 arrays with every element equal to 2, 3, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298176, there is no canonical definition to state claims against.
-/

/-! ## A298176.P6351916966743402180

`A298177(∑[n+6]+22)`
-/

namespace A298176.P6351916966743402180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298177 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A298176.P6351916966743402180

/-!
# A298178: Number of n X n 0..1 arrays with every element equal to 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298178, there is no canonical definition to state claims against.
-/

/-! ## A298178.P12847009515978468781

`A298183(∑[4*n]+1)`
-/

namespace A298178.P12847009515978468781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298183 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298178.P12847009515978468781

/-!
# A298179: Number of nX4 0..1 arrays with every element equal to 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298179, the canonical program `A298179.P5760581522706010281` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298179 has offset 1).

The definition of A298179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298179.P5760581522706010281

`2*a(n-1)+a(n-3)-2*a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A298179

/-- `2*a(n-1)+a(n-3)-2*a(n-4)-2*a(n-5)` -/
def P5760581522706010281.Spec : Prop :=
  ∀ n, P5760581522706010281.a n = A298179 (n + 1)

theorem P5760581522706010281.correct : P5760581522706010281.Spec := by
  intro n
  simp only [A298179, Nat.add_sub_cancel]

end A298179

/-! ## A298179.P13214680373289825801

`A000045(n)+Δ[A003229(n)/2]`
-/

namespace A298179.P13214680373289825801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003229 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A298179.P13214680373289825801

namespace A298179

/-- `A000045(n)+Δ[A003229(n)/2]` -/
def P13214680373289825801.Spec : Prop :=
  ∀ n, P13214680373289825801.a n = (A298179 (n + 1) : ℚ)

end A298179

/-! ## A298179.P24797035962044408

`Δ[A077949(n+1)/2]+A000045(n)`
-/

namespace A298179.P24797035962044408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077949 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A000045 n : ℚ)

end

end A298179.P24797035962044408

namespace A298179

/-- `Δ[A077949(n+1)/2]+A000045(n)` -/
def P24797035962044408.Spec : Prop :=
  ∀ n, P24797035962044408.a n = (A298179 (n + 1) : ℚ)

end A298179

/-! ## A298179.P2688857004395514312

`A302126(2*n)+Δ[A003229(n)/2]`
-/

namespace A298179.P2688857004395514312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003229 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302126 (2 * n) : ℚ) + (f1 (n + 1) - f1 n)

end

end A298179.P2688857004395514312

namespace A298179

/-- `A302126(2*n)+Δ[A003229(n)/2]` -/
def P2688857004395514312.Spec : Prop :=
  ∀ n, P2688857004395514312.a n = (A298179 (n + 1) : ℚ)

end A298179

/-! ## A298179.P8341328916387582553

`A000045(n)+A203175(n+2)-A003229(n)`
-/

namespace A298179.P8341328916387582553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A203175 (n + 2) - A003229 n)

end

end A298179.P8341328916387582553

namespace A298179

/-- `A000045(n)+A203175(n+2)-A003229(n)` -/
def P8341328916387582553.Spec : Prop :=
  ∀ n, P8341328916387582553.a n = A298179 (n + 1)

end A298179

/-!
# A298180: Number of nX5 0..1 arrays with every element equal to 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298180, there is no canonical definition to state claims against.
-/

/-! ## A298180.P7309509148475339772

`A298183(∑[n+4]+11)`
-/

namespace A298180.P7309509148475339772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298183 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298180.P7309509148475339772

/-! ## A298180.P17045959666814036558

`3*A135660(A117420(n))`
-/

namespace A298180.P17045959666814036558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A135660 (A117420 n).toNat

end

end A298180.P17045959666814036558

/-!
# A298181: Number of nX6 0..1 arrays with every element equal to 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298181, there is no canonical definition to state claims against.
-/

/-! ## A298181.P18237511900031193452

`A298183(A374007(n+1))`
-/

namespace A298181.P18237511900031193452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298183 (A374007 (n + 1)).toNat

end

end A298181.P18237511900031193452

/-!
# A298182: Number of nX7 0..1 arrays with every element equal to 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298182, there is no canonical definition to state claims against.
-/

/-! ## A298182.P14308303274898283401

`A298183(A374008(n+1))`
-/

namespace A298182.P14308303274898283401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298183 (A374008 (n + 1)).toNat

end

end A298182.P14308303274898283401

/-!
# A298183: T(n,k)=Number of nXk 0..1 arrays with every element equal to 3, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298183, there is no canonical definition to state claims against.
-/

/-! ## A298183.P13852204263571040095

`A130383(A298187(n+1)%A329452(2*n+3))`
-/

namespace A298183.P13852204263571040095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (Int.tmod (A298187 (n + 1)) (A329452 (2 * n + 3))).toNat

end

end A298183.P13852204263571040095

/-! ## A298183.P10059899844288363773

`A130383(A298187(n+1)%A201105(n+5))`
-/

namespace A298183.P10059899844288363773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (Int.tmod (A298187 (n + 1)) (A201105 (n + 5))).toNat

end

end A298183.P10059899844288363773

/-! ## A298183.P18156556102874887509

`A130383(A298187(n+1))`
-/

namespace A298183.P18156556102874887509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130383 (A298187 (n + 1)).toNat

end

end A298183.P18156556102874887509

/-! ## A298183.P8128798968593525662

`A098356(n)-A240352(A210000(2*n+1))`
-/

namespace A298183.P8128798968593525662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 n - A240352 (A210000 (2 * n + 1)).toNat

end

end A298183.P8128798968593525662

/-! ## A298183.P11092629406340435888

`A298187(n+1)`
-/

namespace A298183.P11092629406340435888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298187 (n + 1)

end

end A298183.P11092629406340435888

/-!
# A298184: Number of n X n 0..1 arrays with every element equal to 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298184, there is no canonical definition to state claims against.
-/

/-! ## A298184.P9935885986892701882

`A298187(∑[4*n]+1)`
-/

namespace A298184.P9935885986892701882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298187 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298184.P9935885986892701882

/-!
# A298185: Number of nX6 0..1 arrays with every element equal to 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298185, the canonical program `A298185.P5748684928581742112` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298185 has offset 1).

The definition of A298185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298185.P5748684928581742112

`A003269(n)+A057427(n)*A157726(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A298185

/-- `A003269(n)+A057427(n)*A157726(n)` -/
def P5748684928581742112.Spec : Prop :=
  ∀ n, P5748684928581742112.a n = A298185 (n + 1)

theorem P5748684928581742112.correct : P5748684928581742112.Spec := by
  intro n
  simp only [A298185, Nat.add_sub_cancel]

end A298185

/-! ## A298185.P10893715633192920501

`A003269(n)+lcm(A062157(n), A157726(n))`
-/

namespace A298185.P10893715633192920501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n + (Int.lcm (A062157 n) (A157726 n) : ℤ)

end

end A298185.P10893715633192920501

namespace A298185

/-- `A003269(n)+lcm(A062157(n), A157726(n))` -/
def P10893715633192920501.Spec : Prop :=
  ∀ n, P10893715633192920501.a n = A298185 (n + 1)

end A298185

/-! ## A298185.P936126064207941641

`A003269(n)+A157726(n)*A157928(n+1)`
-/

namespace A298185.P936126064207941641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n + A157726 n * A157928 (n + 1)

end

end A298185.P936126064207941641

namespace A298185

/-- `A003269(n)+A157726(n)*A157928(n+1)` -/
def P936126064207941641.Spec : Prop :=
  ∀ n, P936126064207941641.a n = A298185 (n + 1)

end A298185

/-! ## A298185.P13929219275405153669

`A003269(n)+A157726(n)%A047862(n)`
-/

namespace A298185.P13929219275405153669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n + Int.tmod (A157726 n) (A047862 n)

end

end A298185.P13929219275405153669

namespace A298185

/-- `A003269(n)+A157726(n)%A047862(n)` -/
def P13929219275405153669.Spec : Prop :=
  ∀ n, P13929219275405153669.a n = A298185 (n + 1)

end A298185

/-! ## A298185.P15992720259166822336

`A298187(A374007(n+1))`
-/

namespace A298185.P15992720259166822336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298187 (A374007 (n + 1)).toNat

end

end A298185.P15992720259166822336

namespace A298185

/-- `A298187(A374007(n+1))` -/
def P15992720259166822336.Spec : Prop :=
  ∀ n, P15992720259166822336.a n = A298185 (n + 1)

end A298185

/-!
# A298186: Number of nX7 0..1 arrays with every element equal to 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298186, there is no canonical definition to state claims against.
-/

/-! ## A298186.P17242094510666443830

`A298187(A374008(n+1))`
-/

namespace A298186.P17242094510666443830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298187 (A374008 (n + 1)).toNat

end

end A298186.P17242094510666443830

/-!
# A298187: T(n,k)=Number of nXk 0..1 arrays with every element equal to 3, 5, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298187, there is no canonical definition to state claims against.
-/

/-! ## A298187.P13340610318426406749

`A298917(n+1)%A174186(n)`
-/

namespace A298187.P13340610318426406749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298917 (n + 1)) (A174186 n)

end

end A298187.P13340610318426406749

/-! ## A298187.P10401887743402400569

`A298917(n+1)-A036987(A008292(n+1))`
-/

namespace A298187.P10401887743402400569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (n + 1) - A036987 (A008292 (n + 1)).toNat

end

end A298187.P10401887743402400569

/-! ## A298187.P16914021097296894968

`A298917(n+1)-A111332(A180760(n+1))`
-/

namespace A298187.P16914021097296894968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (n + 1) - A111332 (A180760 (n + 1)).toNat

end

end A298187.P16914021097296894968

/-! ## A298187.P12927227975111744437

`A298917(n+1)-A129186(A202812(n+1))`
-/

namespace A298187.P12927227975111744437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298917 (n + 1) - A129186 (A202812 (n + 1)).toNat

end

end A298187.P12927227975111744437

/-! ## A298187.P2951946856079035918

`and(A000040(A281344(n+1)), A298183(n+1))`
-/

namespace A298187.P2951946856079035918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A281344 (n + 1)).toNat) (A298183 (n + 1))

end

end A298187.P2951946856079035918

/-!
# A298188: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298188, there is no canonical definition to state claims against.
-/

/-! ## A298188.P15111849812261737575

`A298195(∑[4*n]+1)`
-/

namespace A298188.P15111849812261737575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298188.P15111849812261737575

/-! ## A298188.P10263384803272123079

`record[A298195(A272267(n+1))]`
-/

namespace A298188.P10263384803272123079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298188.P10263384803272123079

/-! ## A298188.P16642745746646272045

`record[A298195(A330613(n+1))]`
-/

namespace A298188.P16642745746646272045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298188.P16642745746646272045

/-! ## A298188.P14970596473487349108

`record[A298195(Δ[A079824(n+1)])]`
-/

namespace A298188.P14970596473487349108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298188.P14970596473487349108

/-!
# A298189: Number of nX2 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298189, there is no canonical definition to state claims against.
-/

/-! ## A298189.P6330120679376743720

`A298195(∑[n+1]+2)`
-/

namespace A298189.P6330120679376743720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298189.P6330120679376743720

/-! ## A298189.P6914753600068394439

`A299008(∑[n+1]+2)`
-/

namespace A298189.P6914753600068394439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298189.P6914753600068394439

/-! ## A298189.P18306711543697653682

`A299089(∑[n+1]+2)`
-/

namespace A298189.P18306711543697653682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298189.P18306711543697653682

/-! ## A298189.P471315598133443599

`A299345(∑[n+1]+2)`
-/

namespace A298189.P471315598133443599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299345 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298189.P471315598133443599

/-! ## A298189.P6242624979532200419

`A299675(∑[n+1]+2)`
-/

namespace A298189.P6242624979532200419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298189.P6242624979532200419

/-!
# A298190: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298190, there is no canonical definition to state claims against.
-/

/-! ## A298190.P3642861714310840448

`A298195(∑[n+2]+4)`
-/

namespace A298190.P3642861714310840448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298190.P3642861714310840448

/-!
# A298191: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298191, there is no canonical definition to state claims against.
-/

/-! ## A298191.P2849707187539739747

`A298195(∑[n+3]+7)`
-/

namespace A298191.P2849707187539739747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298191.P2849707187539739747

/-! ## A298191.P501856342697073115

`record[A023531(n)*A298195(n+5)]`
-/

namespace A298191.P501856342697073115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A298195 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298191.P501856342697073115

/-!
# A298192: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298192, there is no canonical definition to state claims against.
-/

/-! ## A298192.P5580079830655242563

`A298195(A374005(n+1))`
-/

namespace A298192.P5580079830655242563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (A374005 (n + 1)).toNat

end

end A298192.P5580079830655242563

/-!
# A298193: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298193, there is no canonical definition to state claims against.
-/

/-! ## A298193.P16294267700446376410

`A298195(C(n+7, 2)-n)`
-/

namespace A298193.P16294267700446376410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (Nat.choose (n + 7) 2 - n)

end

end A298193.P16294267700446376410

/-!
# A298194: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298194, there is no canonical definition to state claims against.
-/

/-! ## A298194.P12667888780857989626

`A298195(A374008(n+1))`
-/

namespace A298194.P12667888780857989626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (A374008 (n + 1)).toNat

end

end A298194.P12667888780857989626

/-!
# A298195: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298195, there is no canonical definition to state claims against.
-/

/-! ## A298195.P1026355149885175096

`A299089(n+1)-A285007(A035607(n))`
-/

namespace A298195.P1026355149885175096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (n + 1) - A285007 (A035607 n).toNat

end

end A298195.P1026355149885175096

/-! ## A298195.P15044063274381315221

`A299089(n+1)-A309785(A331562(n))`
-/

namespace A298195.P15044063274381315221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (n + 1) - A309785 (A331562 n).toNat

end

end A298195.P15044063274381315221

/-! ## A298195.P8700733393612552462

`A299089(n+1)-A309785(A347621(n))`
-/

namespace A298195.P8700733393612552462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (n + 1) - A309785 (A347621 n).toNat

end

end A298195.P8700733393612552462

/-! ## A298195.P16184100500025948887

`A299089(n+1)`
-/

namespace A298195.P16184100500025948887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (n + 1)

end

end A298195.P16184100500025948887

/-! ## A298195.P17908134653003534303

`A299008(n+1)`
-/

namespace A298195.P17908134653003534303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (n + 1)

end

end A298195.P17908134653003534303

/-!
# A298196: Lexicographically earliest sequence of distinct positive terms such that for any n > 0, the 2-adic valuation of a(n) equals the 3-adic valuation of a(n+1).

The programs for A298196, there is no canonical definition to state claims against.
-/

/-! ## A298196.P4532098705319169975

`fo[A304872(n+1)-1]+1`
-/

namespace A298196.P4532098705319169975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304872 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A298196.P4532098705319169975

/-!
# A298197: Number of Eulerian cycles in the graph C_4 X C_n.

The programs for A298197, there is no canonical definition to state claims against.
-/

/-! ## A298197.P475575235355057677

`A298117(A141214(n+1))`
-/

namespace A298197.P475575235355057677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298117 (A141214 (n + 1)).toNat

end

end A298197.P475575235355057677

/-!
# A298198: Number of Eulerian cycles in the graph Cartesian product of C_n and a double edge.

The programs for A298198, the canonical program `A298198.P9379789583331199855` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298198 has offset 1).

The definition of A298198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298198.P13978662929640264797

`ogf((4-16x)/(1-14x+60x^2-72x^3))`
-/

namespace A298198.P13978662929640264797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -16] [1, -14, 60, -72] n

end

end A298198.P13978662929640264797

namespace A298198

/-- `ogf((4-16x)/(1-14x+60x^2-72x^3))` -/
def P13978662929640264797.Spec : Prop :=
  ∀ n, P13978662929640264797.a n = A298198 (n + 1)

end A298198

/-! ## A298198.P9379789583331199855

`(2*(n+1)+3)*6^n-2^n`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A298198

/-- `(2*(n+1)+3)*6^n-2^n` -/
def P9379789583331199855.Spec : Prop :=
  ∀ n, P9379789583331199855.a n = A298198 (n + 1)

theorem P9379789583331199855.correct : P9379789583331199855.Spec := by
  intro n
  simp only [A298198, Nat.add_sub_cancel]

end A298198

/-! ## A298198.P8914144510521934447

`14*a(n-1)-60*a(n-2)+72*a(n-3)` with `a(0)=4, a(1)=40, a(2)=320`
-/

namespace A298198.P8914144510521934447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 40, 320] fun n a =>
  14 * a (n - 1) - 60 * a (n - 2) + 72 * a (n - 3)

end

end A298198.P8914144510521934447

namespace A298198

/-- `14*a(n-1)-60*a(n-2)+72*a(n-3)` -/
def P8914144510521934447.Spec : Prop :=
  ∀ n, P8914144510521934447.a n = A298198 (n + 1)

theorem P8914144510521934447.correct : P8914144510521934447.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A298198, Nat.add_sub_cancel, A298198.P8914144510521934447.a, A298198.P9379789583331199855.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A298198, Nat.add_sub_cancel, A298198.P8914144510521934447.a, A298198.P9379789583331199855.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A298198

/-! ## A298198.P4424815781290603114

`∑[A006234(3+n)]*record[A112032(n)]`
-/

namespace A298198.P4424815781290603114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (3 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A298198.P4424815781290603114

namespace A298198

/-- `∑[A006234(3+n)]*record[A112032(n)]` -/
def P4424815781290603114.Spec : Prop :=
  ∀ n, P4424815781290603114.a n = A298198 (n + 1)

end A298198

/-! ## A298198.P1273748526507059476

`∑[A006234(n+3)]*A000079(n+2)`
-/

namespace A298198.P1273748526507059476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 (n + 2)

end

end A298198.P1273748526507059476

namespace A298198

/-- `∑[A006234(n+3)]*A000079(n+2)` -/
def P1273748526507059476.Spec : Prop :=
  ∀ n, P1273748526507059476.a n = A298198 (n + 1)

end A298198

/-! ## A298198.P16517139617015698354

`∑[A006234(n+3)]*A011782(n+3)`
-/

namespace A298198.P16517139617015698354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 (n + 3)

end

end A298198.P16517139617015698354

namespace A298198

/-- `∑[A006234(n+3)]*A011782(n+3)` -/
def P16517139617015698354.Spec : Prop :=
  ∀ n, P16517139617015698354.a n = A298198 (n + 1)

end A298198

/-! ## A298198.P11117947631364671486

`(A086972(n+1)-1)*A000079(n+1)`
-/

namespace A298198.P11117947631364671486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086972 (n + 1) - 1) * A000079 (n + 1)

end

end A298198.P11117947631364671486

namespace A298198

/-- `(A086972(n+1)-1)*A000079(n+1)` -/
def P11117947631364671486.Spec : Prop :=
  ∀ n, P11117947631364671486.a n = A298198 (n + 1)

end A298198

/-! ## A298198.P1340566439567959379

`(A027471(n+2)+A003462(n+1))*A000079(n+1)`
-/

namespace A298198.P1340566439567959379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027471 (n + 2) + A003462 (n + 1)) * A000079 (n + 1)

end

end A298198.P1340566439567959379

namespace A298198

/-- `(A027471(n+2)+A003462(n+1))*A000079(n+1)` -/
def P1340566439567959379.Spec : Prop :=
  ∀ n, P1340566439567959379.a n = A298198 (n + 1)

end A298198

/-!
# A298199: Number of letters in the feminine Hebrew name of n, excluding spaces.

The programs for A298199, there is no canonical definition to state claims against.
-/

/-! ## A298199.P8406287601401977750

`A027684(char[A017305(n)]+n)`
-/

namespace A298199.P8406287601401977750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027684 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A298199.P8406287601401977750

