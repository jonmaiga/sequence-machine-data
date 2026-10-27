import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A061900: Triangular numbers that are not squarefree.

The programs for A061900, the canonical program `A061900.P16677403483452273551` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061900 has offset 1).

The definition of A061900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061900.P16677403483452273551

`A000217(A067197(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A061900

/-- `A000217(A067197(n+1))` -/
def P16677403483452273551.Spec : Prop :=
  ∀ n, P16677403483452273551.a n = A061900 (n + 1)

theorem P16677403483452273551.correct : P16677403483452273551.Spec := by
  intro n
  simp only [A061900, Nat.add_sub_cancel]

end A061900

/-! ## A061900.P18221878451262400257

`A253145(A067197(n+1)-1)`
-/

namespace A061900.P18221878451262400257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A067197 (n + 1) - 1).toNat

end

end A061900.P18221878451262400257

namespace A061900

/-- `A253145(A067197(n+1)-1)` -/
def P18221878451262400257.Spec : Prop :=
  ∀ n, P18221878451262400257.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P1812582187669302108

`A000096(A067197(n+1)-1)+1`
-/

namespace A061900.P1812582187669302108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A067197 (n + 1) - 1).toNat + 1

end

end A061900.P1812582187669302108

namespace A061900

/-- `A000096(A067197(n+1)-1)+1` -/
def P1812582187669302108.Spec : Prop :=
  ∀ n, P1812582187669302108.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P15609772948998882807

`A161680(A067197(n+1)+1)`
-/

namespace A061900.P15609772948998882807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A067197 (n + 1) + 1).toNat

end

end A061900.P15609772948998882807

namespace A061900

/-- `A161680(A067197(n+1)+1)` -/
def P15609772948998882807.Spec : Prop :=
  ∀ n, P15609772948998882807.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P17708905110768251110

`A160791(2*A067197(n+1))`
-/

namespace A061900.P17708905110768251110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A067197 (n + 1)).toNat

end

end A061900.P17708905110768251110

namespace A061900

/-- `A160791(2*A067197(n+1))` -/
def P17708905110768251110.Spec : Prop :=
  ∀ n, P17708905110768251110.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P17779168366972528161

`A000217(lt[1, ∏{e}[A000217(n), #]])`
-/

namespace A061900.P17779168366972528161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A061900.P17779168366972528161

namespace A061900

/-- `A000217(lt[1, ∏{e}[A000217(n), #]])` -/
def P17779168366972528161.Spec : Prop :=
  ∀ n, P17779168366972528161.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P9661463242275282912

`∩[A013929(n+1), A000217(n)]`
-/

namespace A061900.P9661463242275282912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061900.P9661463242275282912

namespace A061900

/-- `∩[A013929(n+1), A000217(n)]` -/
def P9661463242275282912.Spec : Prop :=
  ∀ n, (P9661463242275282912.a n : ℤ) = A061900 (n + 1)

end A061900

/-! ## A061900.P16754752365120413026

`∩[A013929(n+1), A253145(n)]`
-/

namespace A061900.P16754752365120413026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061900.P16754752365120413026

namespace A061900

/-- `∩[A013929(n+1), A253145(n)]` -/
def P16754752365120413026.Spec : Prop :=
  ∀ n, (P16754752365120413026.a n : ℤ) = A061900 (n + 1)

end A061900

/-! ## A061900.P4089644360459828319

`∩[A013929(n+1), A186783(n+1)]`
-/

namespace A061900.P4089644360459828319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061900.P4089644360459828319

namespace A061900

/-- `∩[A013929(n+1), A186783(n+1)]` -/
def P4089644360459828319.Spec : Prop :=
  ∀ n, (P4089644360459828319.a n : ℤ) = A061900 (n + 1)

end A061900

/-! ## A061900.P4452338764166092974

`filter[A000217(n+1), A355447(#)]`
-/

namespace A061900.P4452338764166092974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A061900.P4452338764166092974

namespace A061900

/-- `filter[A000217(n+1), A355447(#)]` -/
def P4452338764166092974.Spec : Prop :=
  ∀ n, P4452338764166092974.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P1155784669223059889

`filter[A100542(n+1), A355447(#)]`
-/

namespace A061900.P1155784669223059889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A061900.P1155784669223059889

namespace A061900

/-- `filter[A100542(n+1), A355447(#)]` -/
def P1155784669223059889.Spec : Prop :=
  ∀ n, P1155784669223059889.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P6520022442878049383

`filter[A179865(n+1), A355447(#)]`
-/

namespace A061900.P6520022442878049383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A061900.P6520022442878049383

namespace A061900

/-- `filter[A179865(n+1), A355447(#)]` -/
def P6520022442878049383.Spec : Prop :=
  ∀ n, P6520022442878049383.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P1048417840853679340

`filter[A253145(n+1), A355447(#)]`
-/

namespace A061900.P1048417840853679340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A061900.P1048417840853679340

namespace A061900

/-- `filter[A253145(n+1), A355447(#)]` -/
def P1048417840853679340.Spec : Prop :=
  ∀ n, P1048417840853679340.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P10934474731663246258

`filter[A350295(n+5), A355447(#)]`
-/

namespace A061900.P10934474731663246258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A061900.P10934474731663246258

namespace A061900

/-- `filter[A350295(n+5), A355447(#)]` -/
def P10934474731663246258.Spec : Prop :=
  ∀ n, P10934474731663246258.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P5190766824028822603

`filter[A055802(2*(n+1)), A355447(#)]`
-/

namespace A061900.P5190766824028822603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A061900.P5190766824028822603

namespace A061900

/-- `filter[A055802(2*(n+1)), A355447(#)]` -/
def P5190766824028822603.Spec : Prop :=
  ∀ n, P5190766824028822603.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P13699219047279570005

`filter[A126099(2*n+1), A355447(#)]`
-/

namespace A061900.P13699219047279570005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126099 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A061900.P13699219047279570005

namespace A061900

/-- `filter[A126099(2*n+1), A355447(#)]` -/
def P13699219047279570005.Spec : Prop :=
  ∀ n, P13699219047279570005.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P9867413976609322429

`filter[A000217(n+1), A065202(#)]`
-/

namespace A061900.P9867413976609322429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A061900.P9867413976609322429

namespace A061900

/-- `filter[A000217(n+1), A065202(#)]` -/
def P9867413976609322429.Spec : Prop :=
  ∀ n, P9867413976609322429.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P6422410308316818855

`filter[A100542(n+1), A065202(#)]`
-/

namespace A061900.P6422410308316818855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A061900.P6422410308316818855

namespace A061900

/-- `filter[A100542(n+1), A065202(#)]` -/
def P6422410308316818855.Spec : Prop :=
  ∀ n, P6422410308316818855.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P4562457328642216354

`filter[A179865(n+1), A065202(#)]`
-/

namespace A061900.P4562457328642216354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A061900.P4562457328642216354

namespace A061900

/-- `filter[A179865(n+1), A065202(#)]` -/
def P4562457328642216354.Spec : Prop :=
  ∀ n, P4562457328642216354.a n = A061900 (n + 1)

end A061900

/-! ## A061900.P6702390390324852896

`filter[A253145(n+1), A065202(#)]`
-/

namespace A061900.P6702390390324852896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A061900.P6702390390324852896

namespace A061900

/-- `filter[A253145(n+1), A065202(#)]` -/
def P6702390390324852896.Spec : Prop :=
  ∀ n, P6702390390324852896.a n = A061900 (n + 1)

end A061900

/-!
# A061901: Number of distinct numbers that can be formed from the digits of n.

The programs for A061901, there is no canonical definition to state claims against.
-/

/-! ## A061901.P17381804224633717418

`A045843(2*A123895(n))`
-/

namespace A061901.P17381804224633717418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (2 * A123895 n).toNat

end

end A061901.P17381804224633717418

/-! ## A061901.P1161757032930797427

`A045843(n)+A045841(n)`
-/

namespace A061901.P1161757032930797427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 n + A045841 n

end

end A061901.P1161757032930797427

/-! ## A061901.P5640518801497282200

`A347627(A123895(n))`
-/

namespace A061901.P5640518801497282200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347627 (A123895 n).toNat

end

end A061901.P5640518801497282200

/-! ## A061901.P15568348046836571331

`A173304(A123895(n)+1)`
-/

namespace A061901.P15568348046836571331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 (A123895 n + 1).toNat

end

end A061901.P15568348046836571331

/-! ## A061901.P4443881364767236887

`A152736(A123895(n)+2)`
-/

namespace A061901.P4443881364767236887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152736 (A123895 n + 2).toNat

end

end A061901.P4443881364767236887

/-! ## A061901.P10323389384962877769

`A055642(∏{d}[A123895(n), #])`
-/

namespace A061901.P10323389384962877769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A061901.P10323389384962877769

/-! ## A061901.P17605332740437724325

`A240837(2*A123895(n)+2)`
-/

namespace A061901.P17605332740437724325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240837 (2 * A123895 n + 2).toNat

end

end A061901.P17605332740437724325

/-! ## A061901.P3300102456905854305

`A302242(∏{d}[A123895(n), #])+1`
-/

namespace A061901.P3300102456905854305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (∏ d ∈ Nat.divisors (f1 n).natAbs, d) + 1

end

end A061901.P3300102456905854305

/-! ## A061901.P18441791434672750817

`A008624(A308952(A123895(n)+3))`
-/

namespace A061901.P18441791434672750817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A308952 (A123895 n + 3).toNat).toNat

end

end A061901.P18441791434672750817

/-!
# A061902: Number of digits in n-th term of A061482.

The programs for A061902, there is no canonical definition to state claims against.
-/

/-! ## A061902.P12323017723935135040

`ceil(A008706(A131577(n))/19)`
-/

namespace A061902.P12323017723935135040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008706 (A131577 n).toNat : ℚ) / 19⌉

end

end A061902.P12323017723935135040

/-! ## A061902.P15950268472935299625

`floor(A000040(n+2)%2+A008706(A131577(n))/19)`
-/

namespace A061902.P15950268472935299625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod (A000040 (n + 2)) 2 : ℚ) + (A008706 (A131577 n).toNat : ℚ) / 19⌋

end

end A061902.P15950268472935299625

/-! ## A061902.P5956640983438459214

`floor(A186515(2^n)/11)+1`
-/

namespace A061902.P5956640983438459214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186515 (2 ^ n) : ℚ) / 11⌋ + 1

end

end A061902.P5956640983438459214

/-! ## A061902.P15460244564763251504

`ceil(A000010(A164161(n+3))/19)`
-/

namespace A061902.P15460244564763251504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (A164161 (n + 3)).toNat : ℚ) / 19⌉

end

end A061902.P15460244564763251504

/-! ## A061902.P5441264313692164994

`2^((n-1)%(n+1))-A057366(A000079(n))`
-/

namespace A061902.P5441264313692164994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ) - (A057366 (A000079 n).toNat : ℚ)

end

end A061902.P5441264313692164994

/-!
# A061904: Numbers n such that the iterative cycle: n -> sum of digits of n^2 has only one distinct element.

The programs for A061904, there is no canonical definition to state claims against.
-/

/-! ## A061904.P12091091870772323738

`∪[A004663(n), A262712(n+1)]`
-/

namespace A061904.P12091091870772323738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061904.P12091091870772323738

/-! ## A061904.P11377686481432117693

`∪[A004669(n), A262712(n+1)]`
-/

namespace A061904.P11377686481432117693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A061904.P11377686481432117693

/-! ## A061904.P11703057463730784728

`eq[1, A061903(n+1)]+1`
-/

namespace A061904.P11703057463730784728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A061904.P11703057463730784728

/-! ## A061904.P10196832242332450632

`eq[0, A029350(A004159(n))]`
-/

namespace A061904.P10196832242332450632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029350 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061904.P10196832242332450632

/-! ## A061904.P11626385689297546118

`eq[A061903(n), A116891(n+1)]`
-/

namespace A061904.P11626385689297546118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061904.P11626385689297546118

/-! ## A061904.P15826321309353992503

`eq[A061903(n), A132126(n+1)]`
-/

namespace A061904.P15826321309353992503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061904.P15826321309353992503

/-! ## A061904.P12575058948500622396

`eq[A061903(n), A267084(n+1)]`
-/

namespace A061904.P12575058948500622396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061904.P12575058948500622396

/-! ## A061904.P7357562348566527988

`eq[A019426(2*n), A061903(n)]`
-/

namespace A061904.P7357562348566527988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061904.P7357562348566527988

/-! ## A061904.P15346544405146467038

`eq[n, A028310(n)*A061903(n)]`
-/

namespace A061904.P15346544405146467038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A061903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061904.P15346544405146467038

/-! ## A061904.P10211555687323982478

`eq[A003417(n), A061903(n)]`
-/

namespace A061904.P10211555687323982478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061904.P10211555687323982478

/-!
# A061905: The iterative cycle: n -> sum of digits of n^2 has only two distinct elements.

The programs for A061905, there is no canonical definition to state claims against.
-/

/-! ## A061905.P969161404609698323

`eq[2, A061903(n)]`
-/

namespace A061905.P969161404609698323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061905.P969161404609698323

/-! ## A061905.P2418351588367677252

`lt[1, A143629(A004159(n))]`
-/

namespace A061905.P2418351588367677252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143629 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061905.P2418351588367677252

/-! ## A061905.P12610854885491526535

`lt[A175066(3*n+4), A257773(A004159(n))]`
-/

namespace A061905.P12610854885491526535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175066 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257773 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061905.P12610854885491526535

/-!
# A061906: Obtain m by omitting trailing zeros from n; a(n) = smallest k such that k*m is a palindrome.

The programs for A061906, there is no canonical definition to state claims against.
-/

/-! ## A061906.P17502303267561719042

`or(A050782(n), A217096(A082216(n)))`
-/

namespace A061906.P17502303267561719042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050782 n) (A217096 (A082216 n).toNat)

end

end A061906.P17502303267561719042

/-! ## A061906.P7216870739745683570

`A050782(n)^A050782(n)^A055641(n)`
-/

namespace A061906.P7216870739745683570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A050782 n : ℝ) ^ ((A050782 n : ℚ) ^ (A055641 n : ℤ) : ℝ)

end

end A061906.P7216870739745683570

/-! ## A061906.P755883465903962513

`A050782(n)+A217096(A082216(n))*A232990(n)`
-/

namespace A061906.P755883465903962513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n + A217096 (A082216 n).toNat * A232990 n

end

end A061906.P755883465903962513

/-! ## A061906.P2406770680785756793

`A050782(n)+A014029(n²)`
-/

namespace A061906.P2406770680785756793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n + A014029 (n ^ 2)

end

end A061906.P2406770680785756793

/-! ## A061906.P8636819860171364327

`A055641(A056142(n))+A050782(n)`
-/

namespace A061906.P8636819860171364327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A056142 n).toNat + A050782 n

end

end A061906.P8636819860171364327

/-! ## A061906.P16419688698730796630

`A028310(A050782(n))`
-/

namespace A061906.P16419688698730796630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A050782 n).toNat

end

end A061906.P16419688698730796630

/-! ## A061906.P412757362646153329

`A065033(2*A050782(n))`
-/

namespace A061906.P412757362646153329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A050782 n).toNat

end

end A061906.P412757362646153329

/-! ## A061906.P14857902894204169339

`∏{d}[A050782(n), A014963(#)]`
-/

namespace A061906.P14857902894204169339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A061906.P14857902894204169339

/-! ## A061906.P3788813303034607904

`A028310(A020485(n)/A028310(n))`
-/

namespace A061906.P3788813303034607904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A020485 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A061906.P3788813303034607904

/-! ## A061906.P7154440903015587631

`A050782(A118759(n))+A000007(A050782(n))`
-/

namespace A061906.P7154440903015587631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A118759 n).toNat + A000007 (A050782 n).toNat

end

end A061906.P7154440903015587631

/-!
# A061907: The iterative cycle: n -> sum of digits of n^2 has only four distinct elements.

The programs for A061907, there is no canonical definition to state claims against.
-/

/-! ## A061907.P13086784575365169018

`lt[3, A061903(n)]`
-/

namespace A061907.P13086784575365169018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061907.P13086784575365169018

/-! ## A061907.P13905653648498537472

`eq[3, A061903(A004159(n))]`
-/

namespace A061907.P13905653648498537472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061907.P13905653648498537472

/-! ## A061907.P15941019022278791892

`eq[4, A061903(A028310(n))]`
-/

namespace A061907.P15941019022278791892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061907.P15941019022278791892

/-! ## A061907.P12933276180110616300

`eq[A040002(n), A061903(n)]`
-/

namespace A061907.P12933276180110616300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061907.P12933276180110616300

/-! ## A061907.P3173659379996686887

`eq[A061903(n), A255176(n)]`
-/

namespace A061907.P3173659379996686887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061907.P3173659379996686887

/-! ## A061907.P1295020225928182350

`eq[A061903(n), A267649(n)]`
-/

namespace A061907.P1295020225928182350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061907.P1295020225928182350

/-! ## A061907.P8515080479638093759

`eq[A061903(n), A297217(n+1)]`
-/

namespace A061907.P8515080479638093759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061907.P8515080479638093759

/-! ## A061907.P17546540744869799133

`eq[(A054977(n)+1)², A061903(n)]`
-/

namespace A061907.P17546540744869799133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054977 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061907.P17546540744869799133

/-! ## A061907.P11764961609360342310

`eq[A040350(2*n), A061903(n)]`
-/

namespace A061907.P11764961609360342310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040350 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061907.P11764961609360342310

/-! ## A061907.P9980071837907706968

`eq[A061903(n), A273339(2*(n+1))]`
-/

namespace A061907.P9980071837907706968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273339 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061907.P9980071837907706968

/-!
# A061909: Skinny numbers: numbers n such that there are no carries when n is squared by "long multiplication".

The programs for A061909, there is no canonical definition to state claims against.
-/

/-! ## A061909.P2399916642217471631

`sqrt(A129967(n+1))`
-/

namespace A061909.P2399916642217471631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A129967 (n + 1) : ℝ)

end

end A061909.P2399916642217471631

/-! ## A061909.P17144136279615254440

`∑{p}[A001316(n), root(A129967(n+1), #)]`
-/

namespace A061909.P17144136279615254440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A129967 (n + 1) : ℝ) ^ (1 / (p : ℝ))

end

end A061909.P17144136279615254440

/-! ## A061909.P6870392235896912950

`A129967(n+1)^2^A008683(A001359(n+1))`
-/

namespace A061909.P6870392235896912950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A129967 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A001359 (n + 1)).toNat : ℤ) : ℝ)

end

end A061909.P6870392235896912950

/-! ## A061909.P7602393039473059667

`comp[A123977(n+1)]`
-/

namespace A061909.P7602393039473059667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A061909.P7602393039473059667

/-! ## A061909.P11569173892206018812

`eq[0, A067552(n)]`
-/

namespace A061909.P11569173892206018812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061909.P11569173892206018812

/-! ## A061909.P8359566561610835869

`eq[0, A069912(n)]`
-/

namespace A061909.P8359566561610835869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061909.P8359566561610835869

/-! ## A061909.P9959093733691797991

`eq[A004159(n), A118881(n)]`
-/

namespace A061909.P9959093733691797991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061909.P9959093733691797991

/-! ## A061909.P15568997356265574643

`eq[A007953(n)², A004159(n)]`
-/

namespace A061909.P15568997356265574643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061909.P15568997356265574643

/-! ## A061909.P4904047481134491970

`eq[n², A059729(n)]`
-/

namespace A061909.P4904047481134491970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061909.P4904047481134491970

/-! ## A061909.P7654303560643677122

`lt[A069912(n), char[A007094(n)]]`
-/

namespace A061909.P7654303560643677122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A061909.P7654303560643677122

/-! ## A061909.P16768084889618160904

`eq[(A169805(n)/2)², A004159(n)]`
-/

namespace A061909.P16768084889618160904
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A169805 n : ℚ) / 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A061909.P16768084889618160904

/-! ## A061909.P14597214846466045478

`lt[A069912(n), A069897(A069901(n+1))]`
-/

namespace A061909.P14597214846466045478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (A069901 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061909.P14597214846466045478

/-!
# A061910: Positive numbers k such that sum of digits of k^2 is a square.

The programs for A061910, the canonical program `A061910.P79250679325321170` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061910 has offset 1).

The definition of A061910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061910.P79250679325321170

`sqrt(A053057(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061910

/-- `sqrt(A053057(n+2))` -/
def P79250679325321170.Spec : Prop :=
  ∀ n, P79250679325321170.a n = (A061910 (n + 1) : ℝ)

end A061910

/-! ## A061910.P2315771782388574040

`lt[1, A000122(A004159(n))]`
-/

namespace A061910.P2315771782388574040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061910.P2315771782388574040

namespace A061910

/-- `lt[1, A000122(A004159(n))]` -/
def P2315771782388574040.Spec : Prop :=
  ∀ n, (P2315771782388574040.a n : ℤ) = A061910 (n + 1)

end A061910

/-! ## A061910.P6392100914947957816

`eq[A000038(n), A053188(A004159(n))]`
-/

namespace A061910.P6392100914947957816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061910.P6392100914947957816

namespace A061910

/-- `eq[A000038(n), A053188(A004159(n))]` -/
def P6392100914947957816.Spec : Prop :=
  ∀ n, (P6392100914947957816.a n : ℤ) = A061910 (n + 1)

end A061910

/-! ## A061910.P7501595554882943401

`eq[2, A000122(A118881(n)-A067552(n))]`
-/

namespace A061910.P7501595554882943401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A118881 n - A067552 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061910.P7501595554882943401

namespace A061910

/-- `eq[2, A000122(A118881(n)-A067552(n))]` -/
def P7501595554882943401.Spec : Prop :=
  ∀ n, (P7501595554882943401.a n : ℤ) = A061910 (n + 1)

end A061910

/-! ## A061910.P7276048154170347873

`eq[A000007(n), A053188(A004159(n))]`
-/

namespace A061910.P7276048154170347873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061910.P7276048154170347873

namespace A061910

/-- `eq[A000007(n), A053188(A004159(n))]` -/
def P7276048154170347873.Spec : Prop :=
  ∀ n, (P7276048154170347873.a n : ℤ) = A061910 (n + 1)

end A061910

/-! ## A061910.P11562777857727683430

`eq[A010052(A004159(n)), A057427(n)]`
-/

namespace A061910.P11562777857727683430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A004159 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061910.P11562777857727683430

namespace A061910

/-- `eq[A010052(A004159(n)), A057427(n)]` -/
def P11562777857727683430.Spec : Prop :=
  ∀ n, (P11562777857727683430.a n : ℤ) = A061910 (n + 1)

end A061910

/-!
# A061911: Square root of the sum of the digits of k^2 when this sum is a square.

The programs for A061911, the canonical program `A061911.P12840697510039333381` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061911 has offset 1).

The definition of A061911 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004159, A061910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A061911.P12840697510039333381

`sqrt(A004159(A061910(n+1)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A061911

/-- `sqrt(A004159(A061910(n+1)))` -/
def P12840697510039333381.Spec : Prop :=
  ∀ n, P12840697510039333381.a n = (A061911 (n + 1) : ℝ)

end A061911

/-! ## A061911.P15972173087275899521

`sqrt(A007953(A061910(n+1)²))`
-/

namespace A061911.P15972173087275899521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007953 (A061910 (n + 1) ^ 2).toNat : ℝ)

end

end A061911.P15972173087275899521

namespace A061911

/-- `sqrt(A007953(A061910(n+1)²))` -/
def P15972173087275899521.Spec : Prop :=
  ∀ n, P15972173087275899521.a n = (A061911 (n + 1) : ℝ)

end A061911

/-! ## A061911.P11879658344346670950

`A037213(∑{digits}[A061910(n+1)², #])`
-/

namespace A061911.P11879658344346670950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A061911.P11879658344346670950

namespace A061911

/-- `A037213(∑{digits}[A061910(n+1)², #])` -/
def P11879658344346670950.Spec : Prop :=
  ∀ n, P11879658344346670950.a n = A061911 (n + 1)

end A061911

/-! ## A061911.P14119550428707740400

`A137734(∑{digits}[A061910(n+1)², #])`
-/

namespace A061911.P14119550428707740400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A061911.P14119550428707740400

namespace A061911

/-- `A137734(∑{digits}[A061910(n+1)², #])` -/
def P14119550428707740400.Spec : Prop :=
  ∀ n, P14119550428707740400.a n = A061911 (n + 1)

end A061911

/-! ## A061911.P5505590705403824988

`A137735(∑{digits}[A061910(n+1)², #])`
-/

namespace A061911.P5505590705403824988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A061911.P5505590705403824988

namespace A061911

/-- `A137735(∑{digits}[A061910(n+1)², #])` -/
def P5505590705403824988.Spec : Prop :=
  ∀ n, P5505590705403824988.a n = A061911 (n + 1)

end A061911

/-! ## A061911.P3476274893007213223

`sqrt(∑{digits}[A053057(n+2), #])`
-/

namespace A061911.P3476274893007213223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℝ)

end

end A061911.P3476274893007213223

namespace A061911

/-- `sqrt(∑{digits}[A053057(n+2), #])` -/
def P3476274893007213223.Spec : Prop :=
  ∀ n, P3476274893007213223.a n = (A061911 (n + 1) : ℝ)

end A061911

/-! ## A061911.P14647762382079651419

`A000188(∑{digits}[A053057(n+2), #])`
-/

namespace A061911.P14647762382079651419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A061911.P14647762382079651419

namespace A061911

/-- `A000188(∑{digits}[A053057(n+2), #])` -/
def P14647762382079651419.Spec : Prop :=
  ∀ n, P14647762382079651419.a n = A061911 (n + 1)

end A061911

/-! ## A061911.P5437632519712244788

`A000194(∑{digits}[A053057(n+2), #])`
-/

namespace A061911.P5437632519712244788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A061911.P5437632519712244788

namespace A061911

/-- `A000194(∑{digits}[A053057(n+2), #])` -/
def P5437632519712244788.Spec : Prop :=
  ∀ n, P5437632519712244788.a n = A061911 (n + 1)

end A061911

/-! ## A061911.P1179306104622174107

`A000196(∑{digits}[A053057(n+2), #])`
-/

namespace A061911.P1179306104622174107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A061911.P1179306104622174107

namespace A061911

/-- `A000196(∑{digits}[A053057(n+2), #])` -/
def P1179306104622174107.Spec : Prop :=
  ∀ n, P1179306104622174107.a n = A061911 (n + 1)

end A061911

/-! ## A061911.P8123540716773422088

`A003059(∑{digits}[A053057(n+2), #])`
-/

namespace A061911.P8123540716773422088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A061911.P8123540716773422088

namespace A061911

/-- `A003059(∑{digits}[A053057(n+2), #])` -/
def P8123540716773422088.Spec : Prop :=
  ∀ n, P8123540716773422088.a n = A061911 (n + 1)

end A061911

/-! ## A061911.P10379959853242519165

`A056926(∑{digits}[A053057(n+2), #])`
-/

namespace A061911.P10379959853242519165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A061911.P10379959853242519165

namespace A061911

/-- `A056926(∑{digits}[A053057(n+2), #])` -/
def P10379959853242519165.Spec : Prop :=
  ∀ n, P10379959853242519165.a n = A061911 (n + 1)

end A061911

/-! ## A061911.P4667571391170440835

`A002260(2*∑{digits}[A053057(n+2), #])`
-/

namespace A061911.P4667571391170440835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A061911.P4667571391170440835

namespace A061911

/-- `A002260(2*∑{digits}[A053057(n+2), #])` -/
def P4667571391170440835.Spec : Prop :=
  ∀ n, P4667571391170440835.a n = A061911 (n + 1)

end A061911

/-! ## A061911.P13711312108657327387

`A002262(2*∑{digits}[A053057(n+2), #])`
-/

namespace A061911.P13711312108657327387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A061911.P13711312108657327387

namespace A061911

/-- `A002262(2*∑{digits}[A053057(n+2), #])` -/
def P13711312108657327387.Spec : Prop :=
  ∀ n, P13711312108657327387.a n = A061911 (n + 1)

end A061911

/-! ## A061911.P13602249432735915861

`A000267(∑{digits}[A053057(n+2), #])/2`
-/

namespace A061911.P13602249432735915861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053057 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000267 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℚ) / 2

end

end A061911.P13602249432735915861

namespace A061911

/-- `A000267(∑{digits}[A053057(n+2), #])/2` -/
def P13602249432735915861.Spec : Prop :=
  ∀ n, P13602249432735915861.a n = (A061911 (n + 1) : ℚ)

end A061911

/-!
# A061912: a(n) is the smallest m for which sqrt(sum of digits of m^2) = n.

The programs for A061912, there is no canonical definition to state claims against.
-/

/-! ## A061912.P3047216368914546978

`sqrt(A067072(n))`
-/

namespace A061912.P3047216368914546978
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A067072 n : ℝ)

end

end A061912.P3047216368914546978

/-! ## A061912.P7565760538980295652

`A067072(n)^(A054977(n)/2)`
-/

namespace A061912.P7565760538980295652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067072 n : ℝ) ^ ((A054977 n : ℚ) / 2 : ℝ)

end

end A061912.P7565760538980295652

/-! ## A061912.P10217540443472245032

`A358702((n+1)*abs(1-n)+1)`
-/

namespace A061912.P10217540443472245032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358702 ((n + 1 : ℤ) * |1 - (n : ℤ)| + 1).toNat

end

end A061912.P10217540443472245032

/-!
# A061914: Let H_n = n-th Hilbert matrix; sequence gives 1 / ( det(H_n) * denominator(permanent(H_n)) ).

The programs for A061914, there is no canonical definition to state claims against.
-/

/-! ## A061914.P13829544174909394318

`record[A135451(n)]/A101812(n+1)`
-/

namespace A061914.P13829544174909394318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A101812 (n + 1) : ℚ)

end

end A061914.P13829544174909394318

/-! ## A061914.P4743778701111724031

`A005249(n+1)/A101812(n+1)`
-/

namespace A061914.P4743778701111724031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005249 (n + 1) : ℚ) / (A101812 (n + 1) : ℚ)

end

end A061914.P4743778701111724031

/-!
# A061915: Obtain m by omitting trailing zeros from n; a(n) = smallest multiple k*m which is a palindrome with even digits, or -1 if no such multiple exists.

The programs for A061915, there is no canonical definition to state claims against.
-/

/-! ## A061915.P2749780582235045012

`or(A010815(A027602(n+4)), A062293(n))`
-/

namespace A061915.P2749780582235045012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010815 (A027602 (n + 4)).toNat) (A062293 n)

end

end A061915.P2749780582235045012

/-! ## A061915.P3677425479613234168

`or(-A025441(n), A329249(n^A006723(n)))`
-/

namespace A061915.P3677425479613234168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A025441 n) (A329249 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A006723 n : ℤ))).toNat)

end

end A061915.P3677425479613234168

/-! ## A061915.P614181898776681656

`or(-A025441(n), A329249(n^A058058(n+1)))`
-/

namespace A061915.P614181898776681656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A025441 n) (A329249 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A058058 (n + 1) : ℤ))).toNat)

end

end A061915.P614181898776681656

/-!
# A061916: Obtain m by omitting trailing zeros from n; a(n) = smallest k such that k*m is a palindrome with even digits, or -1 if no such multiple exists.

The programs for A061916, there is no canonical definition to state claims against.
-/

/-! ## A061916.P17034753762170966954

`or(A061797(n), A131531(A061815(n)))`
-/

namespace A061916.P17034753762170966954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061797 n) (A131531 (A061815 n).toNat)

end

end A061916.P17034753762170966954

/-!
# A061917: Either a palindrome or becomes a palindrome if trailing 0's are omitted.

The programs for A061917, there is no canonical definition to state claims against.
-/

/-! ## A061917.P6135127479413247196

`lt[A261424(A004086(n)), 1]`
-/

namespace A061917.P6135127479413247196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A004086 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A061917.P6135127479413247196

/-! ## A061917.P5499786975579035305

`eq[A004086(n), A047813(n)]`
-/

namespace A061917.P5499786975579035305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061917.P5499786975579035305

/-! ## A061917.P9014924248721901727

`eq[A056964(n), A262223(n)]`
-/

namespace A061917.P9014924248721901727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061917.P9014924248721901727

/-! ## A061917.P16733934155924446778

`eq[A004086(n), A331472(n)]`
-/

namespace A061917.P16733934155924446778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061917.P16733934155924446778

/-! ## A061917.P3045846084279704542

`eq[A047813(n), A331472(n)]`
-/

namespace A061917.P3045846084279704542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061917.P3045846084279704542

/-! ## A061917.P779227623692411388

`eq[1, A136522(A056964(n)-n)]`
-/

namespace A061917.P779227623692411388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A056964 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061917.P779227623692411388

/-! ## A061917.P7870957555327306618

`lt[A338827(A004086(n)), A176895(n)]`
-/

namespace A061917.P7870957555327306618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061917.P7870957555327306618

/-! ## A061917.P764792451110828011

`eq[1, A061906(n)]`
-/

namespace A061917.P764792451110828011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061917.P764792451110828011

/-! ## A061917.P12672178140171561657

`lt[A338827(A004086(n)), A280193(2*n)]`
-/

namespace A061917.P12672178140171561657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061917.P12672178140171561657

/-! ## A061917.P8950059815861382668

`lt[A338827(A004086(n)), A165093(n)]`
-/

namespace A061917.P8950059815861382668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061917.P8950059815861382668

/-! ## A061917.P18100037289072501094

`eq[1, A061674(n)]`
-/

namespace A061917.P18100037289072501094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061674 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061917.P18100037289072501094

/-! ## A061917.P9437331755989205657

`lt[A338827(A004086(n)), A165074(n)]`
-/

namespace A061917.P9437331755989205657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165074 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061917.P9437331755989205657

/-! ## A061917.P7503632881003466815

`lt[A338827(A004086(n)), A340704(n+1)]`
-/

namespace A061917.P7503632881003466815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340704 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061917.P7503632881003466815

/-! ## A061917.P13083443915845296187

`eq[n, A062279(n)]`
-/

namespace A061917.P13083443915845296187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061917.P13083443915845296187

/-! ## A061917.P9174540066943013824

`record[A005843(n)-A062279(n)]`
-/

namespace A061917.P9174540066943013824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A062279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061917.P9174540066943013824

/-!
# A061920: A list of equal temperaments (equal divisions of the octave) whose nearest scale steps are closer and closer approximations to the 7 pairs of complementary target ratios needed to express the 12 unsymmetrical steps of the untempered (Just Intonation) scale known as the Duodene: 3/2 and 4/3, 5/4 and 8/5, 6/5 and 5/3, 9/8 and 16/9, 10/9 and 9/5, 16/15 and 15/8 and 45/32 and 64/45.

The programs for A061920, there is no canonical definition to state claims against.
-/

/-! ## A061920.P17933712577171342877

`∑[dr(A317081(A000927(n+1)))]`
-/

namespace A061920.P17933712577171342877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A317081 (A000927 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061920.P17933712577171342877

/-! ## A061920.P8933301522893083286

`lt[A184257(3*(n+1)), A063438(n+1)]+1`
-/

namespace A061920.P8933301522893083286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A061920.P8933301522893083286

/-! ## A061920.P17002899702915260351

`lt[A155864(3*n+1), A160761(2*(n+1))]+1`
-/

namespace A061920.P17002899702915260351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155864 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160761 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A061920.P17002899702915260351

/-! ## A061920.P10496076394896284086

`A008620(eq[A008620(n), A240808(n)])`
-/

namespace A061920.P10496076394896284086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A061920.P10496076394896284086

/-! ## A061920.P11776266643515786522

`lt[A298582(A016969(n)), A158591(n)]`
-/

namespace A061920.P11776266643515786522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298582 (A016969 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A061920.P11776266643515786522

/-!
# A061921: A list of equal temperaments (equal divisions of the octave) whose nearest scale steps are closer and closer approximations to the 11 pairs of target ratios needed to express the 22 steps of the theoretical Hindu scale known as the 22 Srutis: 45/32 and 64/45, 27/20 and 40/27, 4/3 and 3/2, 81/64 and 128/81, 5/4 and 8/5, 6/5 and 5/3, 32/27 and 27/16, 9/8 and 16/9, 10/9 and 9/5, 16/15 and 15/8, 256/243 and 243/128.

The programs for A061921, there is no canonical definition to state claims against.
-/

/-! ## A061921.P7495994267092173676

`∑[gcd(A195882(n+1), A195930(3*(n+1)))]`
-/

namespace A061921.P7495994267092173676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195882 (n + 1)) (A195930 (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061921.P7495994267092173676

/-! ## A061921.P18303191088833809918

`∑[gcd(A281891(3*n+4), A281922(n+4))]`
-/

namespace A061921.P18303191088833809918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281891 (3 * n + 4)) (A281922 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061921.P18303191088833809918

/-! ## A061921.P4766256489685085194

`∑[A103760(A005472(A036026(n)))]`
-/

namespace A061921.P4766256489685085194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103760 (A005472 (A036026 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061921.P4766256489685085194

/-! ## A061921.P3841035772168373900

`∑[A003557(A065650(A008929(n+1)))]`
-/

namespace A061921.P3841035772168373900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A065650 (A008929 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061921.P3841035772168373900

/-!
# A061922: Xcatalans - produced as a self-convolved sequence like Catalan numbers (A000108) but use carryless GF(2)[ X ] polynomial multiplication.

The programs for A061922, there is no canonical definition to state claims against.
-/

/-! ## A061922.P13466358353257740217

`A290134(n)+A084928(A131051(n+1))`
-/

namespace A061922.P13466358353257740217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290134 n + A084928 (A131051 (n + 1)).toNat

end

end A061922.P13466358353257740217

/-! ## A061922.P5291313362408044577

`A187188(A126947(n+1))`
-/

namespace A061922.P5291313362408044577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A126947 (n + 1)).toNat

end

end A061922.P5291313362408044577

/-! ## A061922.P16017844913836660559

`A122005(A022874(n+2))`
-/

namespace A061922.P16017844913836660559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122005 (A022874 (n + 2)).toNat

end

end A061922.P16017844913836660559

/-! ## A061922.P9341210706261813385

`A000108(n)-A006925(C(n, 6))`
-/

namespace A061922.P9341210706261813385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A006925 (Nat.choose n 6)

end

end A061922.P9341210706261813385

/-!
# A061923: Numbers k such that the difference between k and its reversal is a nonzero cube.

The programs for A061923, there is no canonical definition to state claims against.
-/

/-! ## A061923.P524600507385537629

`∩[A029742(n+1), A061379(n+1)]`
-/

namespace A061923.P524600507385537629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061923.P524600507385537629

/-!
# A061924: Number of combinations in card games with 4 suits and 4 players.

The programs for A061924, the canonical program `A061924.P3736276386566321569` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061924 has offset 0).

The definition of A061924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061924.P3736276386566321569

`(4*n)!/(4*n-n)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061924

/-- `(4*n)!/(4*n-n)!` -/
def P3736276386566321569.Spec : Prop :=
  ∀ n, P3736276386566321569.a n = (A061924 n : ℚ)

end A061924

/-! ## A061924.P10555206418903566429

`n!*C(4*n, n)`
-/

namespace A061924.P10555206418903566429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (4 * n) n

end

end A061924.P10555206418903566429

namespace A061924

/-- `n!*C(4*n, n)` -/
def P10555206418903566429.Spec : Prop :=
  ∀ n, (P10555206418903566429.a n : ℤ) = A061924 n

end A061924

/-! ## A061924.P10729344120264955292

`n!*A005810(n)`
-/

namespace A061924.P10729344120264955292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A005810 n

end

end A061924.P10729344120264955292

namespace A061924

/-- `n!*A005810(n)` -/
def P10729344120264955292.Spec : Prop :=
  ∀ n, P10729344120264955292.a n = A061924 n

end A061924

/-! ## A061924.P4219163766599539970

`n!*A119304(∑[n])`
-/

namespace A061924.P4219163766599539970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A119304 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A061924.P4219163766599539970

namespace A061924

/-- `n!*A119304(∑[n])` -/
def P4219163766599539970.Spec : Prop :=
  ∀ n, P4219163766599539970.a n = A061924 n

end A061924

/-! ## A061924.P15898640674770188514

`C(4*n, n)*A000142(n)`
-/

namespace A061924.P15898640674770188514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) n : ℤ) * A000142 n

end

end A061924.P15898640674770188514

namespace A061924

/-- `C(4*n, n)*A000142(n)` -/
def P15898640674770188514.Spec : Prop :=
  ∀ n, P15898640674770188514.a n = A061924 n

end A061924

/-!
# A061925: a(n) = ceiling(n^2/2) + 1.

The programs for A061925, the canonical program `A061925.P12870392969338772725` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061925 has offset 0).

The definition of A061925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/2)+1` (program `A061925.P12870392969338772725`, by `A061925.P12870392969338772725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061925.P12870392969338772725

`ceil(n²/2)+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061925

/-- `ceil(n²/2)+1` -/
def P12870392969338772725.Spec : Prop :=
  ∀ n, P12870392969338772725.a n = A061925 n

theorem P12870392969338772725.correct : P12870392969338772725.Spec := by
  intro n
  simp only [A061925]

end A061925

/-! ## A061925.P12531147785145106497

`∑[abs(or(1, -n))]`
-/

namespace A061925.P12531147785145106497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061925.P12531147785145106497

namespace A061925

/-- `∑[abs(or(1, -n))]` -/
def P12531147785145106497.Spec : Prop :=
  ∀ n, P12531147785145106497.a n = A061925 n

end A061925

/-! ## A061925.P13848994497863621599

`ceil(or(2, n²)/2)`
-/

namespace A061925.P13848994497863621599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 (n ^ 2) : ℚ) / 2⌉

end

end A061925.P13848994497863621599

namespace A061925

/-- `ceil(or(2, n²)/2)` -/
def P13848994497863621599.Spec : Prop :=
  ∀ n, P13848994497863621599.a n = A061925 n

end A061925

/-! ## A061925.P12748179369403744115

`round(or(2, n²)/2)`
-/

namespace A061925.P12748179369403744115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (n ^ 2) : ℚ) / 2)

end

end A061925.P12748179369403744115

namespace A061925

/-- `round(or(2, n²)/2)` -/
def P12748179369403744115.Spec : Prop :=
  ∀ n, P12748179369403744115.a n = A061925 n

end A061925

/-! ## A061925.P17823458287629585193

`ceil(xor(2, n²)/2)`
-/

namespace A061925.P17823458287629585193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 (n ^ 2) : ℚ) / 2⌉

end

end A061925.P17823458287629585193

namespace A061925

/-- `ceil(xor(2, n²)/2)` -/
def P17823458287629585193.Spec : Prop :=
  ∀ n, P17823458287629585193.a n = A061925 n

end A061925

/-! ## A061925.P18265833467905011196

`round(xor(2, n²)/2)`
-/

namespace A061925.P18265833467905011196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n ^ 2) : ℚ) / 2)

end

end A061925.P18265833467905011196

namespace A061925

/-- `round(xor(2, n²)/2)` -/
def P18265833467905011196.Spec : Prop :=
  ∀ n, P18265833467905011196.a n = A061925 n

end A061925

/-! ## A061925.P7279809085421383342

`∑[or(1, abs(1-n))]`
-/

namespace A061925.P7279809085421383342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061925.P7279809085421383342

namespace A061925

/-- `∑[or(1, abs(1-n))]` -/
def P7279809085421383342.Spec : Prop :=
  ∀ n, P7279809085421383342.a n = A061925 n

end A061925

/-! ## A061925.P15818371160857553533

`∑[(1-n)%2+n]`
-/

namespace A061925.P15818371160857553533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (n : ℤ)) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061925.P15818371160857553533

namespace A061925

/-- `∑[(1-n)%2+n]` -/
def P15818371160857553533.Spec : Prop :=
  ∀ n, P15818371160857553533.a n = A061925 n

end A061925

/-! ## A061925.P4038470787865894610

`∑[n-(n-1)%2]`
-/

namespace A061925.P4038470787865894610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061925.P4038470787865894610

namespace A061925

/-- `∑[n-(n-1)%2]` -/
def P4038470787865894610.Spec : Prop :=
  ∀ n, P4038470787865894610.a n = A061925 n

end A061925

/-! ## A061925.P15105512177854371578

`floor(tan(1)+n²/2)`
-/

namespace A061925.P15105512177854371578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (1 : ℝ) + ((n ^ 2 : ℚ) / 2 : ℝ)⌋

end

end A061925.P15105512177854371578

namespace A061925

/-- `floor(tan(1)+n²/2)` -/
def P15105512177854371578.Spec : Prop :=
  ∀ n, P15105512177854371578.a n = A061925 n

end A061925

/-! ## A061925.P8827206430031388882

`floor(asin(1)+n²/2)`
-/

namespace A061925.P8827206430031388882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin (1 : ℝ) + ((n ^ 2 : ℚ) / 2 : ℝ)⌋

end

end A061925.P8827206430031388882

namespace A061925

/-- `floor(asin(1)+n²/2)` -/
def P8827206430031388882.Spec : Prop :=
  ∀ n, P8827206430031388882.a n = A061925 n

end A061925

/-! ## A061925.P6453356334146538657

`ceil(n²/2-cos(3))`
-/

namespace A061925.P6453356334146538657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℚ) / 2 : ℝ) - Real.cos (3 : ℝ)⌉

end

end A061925.P6453356334146538657

namespace A061925

/-- `ceil(n²/2-cos(3))` -/
def P6453356334146538657.Spec : Prop :=
  ∀ n, P6453356334146538657.a n = A061925 n

end A061925

/-! ## A061925.P8396865568535525853

`floor(cosh(1)+n²/2)`
-/

namespace A061925.P8396865568535525853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (1 : ℝ) + ((n ^ 2 : ℚ) / 2 : ℝ)⌋

end

end A061925.P8396865568535525853

namespace A061925

/-- `floor(cosh(1)+n²/2)` -/
def P8396865568535525853.Spec : Prop :=
  ∀ n, P8396865568535525853.a n = A061925 n

end A061925

/-! ## A061925.P6798078623841156631

`round((n²-tan(2))/2)`
-/

namespace A061925.P6798078623841156631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℝ) - Real.tan (2 : ℝ)) / 2)

end

end A061925.P6798078623841156631

namespace A061925

/-- `round((n²-tan(2))/2)` -/
def P6798078623841156631.Spec : Prop :=
  ∀ n, P6798078623841156631.a n = A061925 n

end A061925

/-! ## A061925.P6120394585636197181

`round(atan(2)+n²/2)`
-/

namespace A061925.P6120394585636197181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (2 : ℝ) + ((n ^ 2 : ℚ) / 2 : ℝ))

end

end A061925.P6120394585636197181

namespace A061925

/-- `round(atan(2)+n²/2)` -/
def P6120394585636197181.Spec : Prop :=
  ∀ n, P6120394585636197181.a n = A061925 n

end A061925

/-! ## A061925.P6784862276226996380

`floor((sinh(2)+n²)/2)`
-/

namespace A061925.P6784862276226996380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sinh (2 : ℝ) + (n ^ 2 : ℝ)) / 2⌋

end

end A061925.P6784862276226996380

namespace A061925

/-- `floor((sinh(2)+n²)/2)` -/
def P6784862276226996380.Spec : Prop :=
  ∀ n, P6784862276226996380.a n = A061925 n

end A061925

/-! ## A061925.P6082130279897718535

`round(sinh(1)+n²/2)`
-/

namespace A061925.P6082130279897718535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (1 : ℝ) + ((n ^ 2 : ℚ) / 2 : ℝ))

end

end A061925.P6082130279897718535

namespace A061925

/-- `round(sinh(1)+n²/2)` -/
def P6082130279897718535.Spec : Prop :=
  ∀ n, P6082130279897718535.a n = A061925 n

end A061925

/-! ## A061925.P15474820673148120509

`round(cot(2/(n²+3)))`
-/

namespace A061925.P15474820673148120509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / (n ^ 2 + 3 : ℚ) : ℝ))

end

end A061925.P15474820673148120509

namespace A061925

/-- `round(cot(2/(n²+3)))` -/
def P15474820673148120509.Spec : Prop :=
  ∀ n, P15474820673148120509.a n = A061925 n

end A061925

/-! ## A061925.P4553405055290025418

`round(2/acot(n/2)²)`
-/

namespace A061925.P4553405055290025418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot ((n : ℚ) / 2 : ℝ) ^ 2)

end

end A061925.P4553405055290025418

namespace A061925

/-- `round(2/acot(n/2)²)` -/
def P4553405055290025418.Spec : Prop :=
  ∀ n, P4553405055290025418.a n = A061925 n

end A061925

/-! ## A061925.P10211847301752301449

`∑[abs(gcd(2, n)-(n+1))]`
-/

namespace A061925.P10211847301752301449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.gcd 2 n : ℤ) - (n + 1 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061925.P10211847301752301449

namespace A061925

/-- `∑[abs(gcd(2, n)-(n+1))]` -/
def P10211847301752301449.Spec : Prop :=
  ∀ n, P10211847301752301449.a n = A061925 n

end A061925

/-!
# A061926: Square table by antidiagonals where odd rows are partial sums of previous row, even rows are sums of pairs of values in previous row and initial row is 0 and 1 alternating.

The programs for A061926, there is no canonical definition to state claims against.
-/

/-! ## A061926.P1556041260784190653

`A131808(A131781(n+1))%A116427(n)`
-/

namespace A061926.P1556041260784190653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131808 (A131781 (n + 1)).toNat) (A116427 n)

end

end A061926.P1556041260784190653

/-! ## A061926.P1499609194243281548

`A131808(A131781(n+1)%A295236(n+1))`
-/

namespace A061926.P1499609194243281548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131808 (Int.tmod (A131781 (n + 1)) (A295236 (n + 1))).toNat

end

end A061926.P1499609194243281548

/-! ## A061926.P6450773329605501996

`A131808(A131781(n+1))^A014963(A052905(n))`
-/

namespace A061926.P6450773329605501996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131808 (A131781 (n + 1)).toNat : ℚ) ^ (A014963 (A052905 n).toNat : ℤ)

end

end A061926.P6450773329605501996

/-! ## A061926.P7892968139099725095

`A131808(A131781(n+1))^A014963(A304839(n+1))`
-/

namespace A061926.P7892968139099725095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131808 (A131781 (n + 1)).toNat : ℚ) ^ (A014963 (A304839 (n + 1)).toNat : ℤ)

end

end A061926.P7892968139099725095

/-! ## A061926.P17516049228231861875

`A131810(2^A131781(n+1)/2)`
-/

namespace A061926.P17516049228231861875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131810 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A131781 (n + 1) : ℤ) / 2)).toNat

end

end A061926.P17516049228231861875

/-!
# A061927: a(n) = n*(n+1)*(2*n+1)*(n^2+n+3)/30.

The programs for A061927, the canonical program `A061927.P12487663962227944421` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061927 has offset 0).

The definition of A061927 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A061927.anchor (n : ℕ) : (A061927 n : ℚ) = (n * (n + 1) * (2 * n + 1) * (n ^ 2 + n + 3) : ℚ) / 30` in `Proof.A061.A061927`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061927.P12487663962227944421

`n*(n+1)*(2*n+1)*(n²+n+3)/30`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061927

/-- `n*(n+1)*(2*n+1)*(n²+n+3)/30` -/
def P12487663962227944421.Spec : Prop :=
  ∀ n, P12487663962227944421.a n = (A061927 n : ℚ)

end A061927

/-! ## A061927.P13594991512442653657

`∑[∑[C(2*n, 3)]+n²]`
-/

namespace A061927.P13594991512442653657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061927.P13594991512442653657

namespace A061927

/-- `∑[∑[C(2*n, 3)]+n²]` -/
def P13594991512442653657.Spec : Prop :=
  ∀ n, (P13594991512442653657.a n : ℤ) = A061927 n

end A061927

/-! ## A061927.P7129540853163878093

`∑[A035598(n)/2]`
-/

namespace A061927.P7129540853163878093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035598 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061927.P7129540853163878093

namespace A061927

/-- `∑[A035598(n)/2]` -/
def P7129540853163878093.Spec : Prop :=
  ∀ n, P7129540853163878093.a n = (A061927 n : ℚ)

end A061927

/-! ## A061927.P13942528404014865949

`∑[n*A006527(n)]`
-/

namespace A061927.P13942528404014865949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061927.P13942528404014865949

namespace A061927

/-- `∑[n*A006527(n)]` -/
def P13942528404014865949.Spec : Prop :=
  ∀ n, P13942528404014865949.a n = A061927 n

end A061927

/-! ## A061927.P11459109438320492687

`∑[A112742(n)+n²]`
-/

namespace A061927.P11459109438320492687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112742 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061927.P11459109438320492687

namespace A061927

/-- `∑[A112742(n)+n²]` -/
def P11459109438320492687.Spec : Prop :=
  ∀ n, P11459109438320492687.a n = A061927 n

end A061927

/-! ## A061927.P6166282365045562185

`A277228(n)+∑[∑[n²]]`
-/

namespace A061927.P6166282365045562185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277228 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A061927.P6166282365045562185

namespace A061927

/-- `A277228(n)+∑[∑[n²]]` -/
def P6166282365045562185.Spec : Prop :=
  ∀ n, P6166282365045562185.a n = A061927 n

end A061927

/-! ## A061927.P15228321488027947605

`A069038(n)-a(n-1)` with `a(0)=0`
-/

namespace A061927.P15228321488027947605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A069038 n - a (n - 1)

end

end A061927.P15228321488027947605

namespace A061927

/-- `A069038(n)-a(n-1)` -/
def P15228321488027947605.Spec : Prop :=
  ∀ n, P15228321488027947605.a n = A061927 n

end A061927

/-! ## A061927.P14057553662414816824

`a(n-1)+A014820(n-1)` with `a(0)=0`
-/

namespace A061927.P14057553662414816824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A014820 (n - 1)

end

end A061927.P14057553662414816824

namespace A061927

/-- `a(n-1)+A014820(n-1)` -/
def P14057553662414816824.Spec : Prop :=
  ∀ n, P14057553662414816824.a n = A061927 n

end A061927

/-! ## A061927.P15120784918682226060

`A277229(n)-A002415(n)`
-/

namespace A061927.P15120784918682226060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277229 n - A002415 n

end

end A061927.P15120784918682226060

namespace A061927

/-- `A277229(n)-A002415(n)` -/
def P15120784918682226060.Spec : Prop :=
  ∀ n, P15120784918682226060.a n = A061927 n

end A061927

/-! ## A061927.P2309943555889708818

`∑[A014820(n)]-A014820(n)`
-/

namespace A061927.P2309943555889708818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014820 n

end

end A061927.P2309943555889708818

namespace A061927

/-- `∑[A014820(n)]-A014820(n)` -/
def P2309943555889708818.Spec : Prop :=
  ∀ n, P2309943555889708818.a n = A061927 n

end A061927

/-! ## A061927.P11638360361518152588

`∑[A087483(n²)-1]`
-/

namespace A061927.P11638360361518152588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087483 (n ^ 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061927.P11638360361518152588

namespace A061927

/-- `∑[A087483(n²)-1]` -/
def P11638360361518152588.Spec : Prop :=
  ∀ n, P11638360361518152588.a n = A061927 n

end A061927

/-! ## A061927.P2538607437132891362

`∑[A032765(n²)]`
-/

namespace A061927.P2538607437132891362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061927.P2538607437132891362

namespace A061927

/-- `∑[A032765(n²)]` -/
def P2538607437132891362.Spec : Prop :=
  ∀ n, P2538607437132891362.a n = A061927 n

end A061927

/-! ## A061927.P12794221892088519765

`∑[A000212(n²+1)]`
-/

namespace A061927.P12794221892088519765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061927.P12794221892088519765

namespace A061927

/-- `∑[A000212(n²+1)]` -/
def P12794221892088519765.Spec : Prop :=
  ∀ n, P12794221892088519765.a n = A061927 n

end A061927

/-! ## A061927.P1376527345509982218

`∑[A005563(n²)/3]`
-/

namespace A061927.P1376527345509982218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 (n ^ 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061927.P1376527345509982218

namespace A061927

/-- `∑[A005563(n²)/3]` -/
def P1376527345509982218.Spec : Prop :=
  ∀ n, P1376527345509982218.a n = (A061927 n : ℚ)

end A061927

/-! ## A061927.P4760655141888374842

`∑[A008810(n²+1)]-(n+1)`
-/

namespace A061927.P4760655141888374842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A061927.P4760655141888374842

namespace A061927

/-- `∑[A008810(n²+1)]-(n+1)` -/
def P4760655141888374842.Spec : Prop :=
  ∀ n, P4760655141888374842.a n = A061927 n

end A061927

/-!
# A061928: Array T(n,m) = 1/beta(n+1,m+1) read by antidiagonals.

The programs for A061928, the canonical program `A061928.P7626325743492745551` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061928 has offset 1).

The definition of A061928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061928.P2382760021056450260

`(∑[char[∑[n]]]+2)*(A014430(n)+1)`
-/

namespace A061928.P2382760021056450260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) * (A014430 n + 1)

end

end A061928.P2382760021056450260

namespace A061928

/-- `(∑[char[∑[n]]]+2)*(A014430(n)+1)` -/
def P2382760021056450260.Spec : Prop :=
  ∀ n, P2382760021056450260.a n = A061928 (n + 1)

end A061928

/-! ## A061928.P9788137696716862564

`(∑[char[∑[n]]]+2)*A014410(n+2)`
-/

namespace A061928.P9788137696716862564
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) * A014410 (n + 2)

end

end A061928.P9788137696716862564

namespace A061928

/-- `(∑[char[∑[n]]]+2)*A014410(n+2)` -/
def P9788137696716862564.Spec : Prop :=
  ∀ n, P9788137696716862564.a n = A061928 (n + 1)

end A061928

/-! ## A061928.P17102662224507183292

`(∑[char[∑[n]]]+2)*A028327(n)/2`
-/

namespace A061928.P17102662224507183292
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℚ) * ((A028327 n : ℚ) / 2)

end

end A061928.P17102662224507183292

namespace A061928

/-- `(∑[char[∑[n]]]+2)*A028327(n)/2` -/
def P17102662224507183292.Spec : Prop :=
  ∀ n, P17102662224507183292.a n = (A061928 (n + 1) : ℚ)

end A061928

/-! ## A061928.P3977809604450502475

`(∑[char[∑[n]]]+2)*sqrt(A014719(n+2))`
-/

namespace A061928.P3977809604450502475
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ) * Real.sqrt (A014719 (n + 2) : ℝ)

end

end A061928.P3977809604450502475

namespace A061928

/-- `(∑[char[∑[n]]]+2)*sqrt(A014719(n+2))` -/
def P3977809604450502475.Spec : Prop :=
  ∀ n, P3977809604450502475.a n = (A061928 (n + 1) : ℝ)

end A061928

/-! ## A061928.P4432039984498385629

`A194121(n)+A059797(n)`
-/

namespace A061928.P4432039984498385629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194121 n + A059797 n

end

end A061928.P4432039984498385629

namespace A061928

/-- `A194121(n)+A059797(n)` -/
def P4432039984498385629.Spec : Prop :=
  ∀ n, P4432039984498385629.a n = A061928 (n + 1)

theorem P4432039984498385629.correct : P4432039984498385629.Spec := by
  intro n
  simp only [A061928, Nat.add_sub_cancel, A061928.P4432039984498385629.a, A061928.P7626325743492745551.a, A014410, A014410.P12420516935091573692.a, A059797, A059797.P8076883929035700437.a, A133196, A133196.P16440954679324344778.a, A194121, A194121.P9595817741942349886.a, A003056, A003056.P5318256527314048597.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A061928

/-! ## A061928.P7626325743492745551

`A014410(n+2)*A133196(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A061928

/-- `A014410(n+2)*A133196(n+1)` -/
def P7626325743492745551.Spec : Prop :=
  ∀ n, P7626325743492745551.a n = A061928 (n + 1)

theorem P7626325743492745551.correct : P7626325743492745551.Spec := by
  intro n
  simp only [A061928, Nat.add_sub_cancel]

end A061928

/-! ## A061928.P16027867207281659540

`A014410(n+2)+A003057(n+2)*A014410(n+2)`
-/

namespace A061928.P16027867207281659540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) + A003057 (n + 2) * A014410 (n + 2)

end

end A061928.P16027867207281659540

namespace A061928

/-- `A014410(n+2)+A003057(n+2)*A014410(n+2)` -/
def P16027867207281659540.Spec : Prop :=
  ∀ n, P16027867207281659540.a n = A061928 (n + 1)

end A061928

/-! ## A061928.P2649452679014868824

`A135853(comp[∑[n]]+comp[∑[n]]-n)`
-/

namespace A061928.P2649452679014868824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135853 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A061928.P2649452679014868824

namespace A061928

/-- `A135853(comp[∑[n]]+comp[∑[n]]-n)` -/
def P2649452679014868824.Spec : Prop :=
  ∀ n, P2649452679014868824.a n = A061928 (n + 1)

end A061928

/-! ## A061928.P17914939077401158913

`A003506(lt[n+1, A003506(n+1)]+1)`
-/

namespace A061928.P17914939077401158913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A061928.P17914939077401158913

namespace A061928

/-- `A003506(lt[n+1, A003506(n+1)]+1)` -/
def P17914939077401158913.Spec : Prop :=
  ∀ n, P17914939077401158913.a n = A061928 (n + 1)

end A061928

/-! ## A061928.P17174495799799588682

`A003506((n-comp[∑[n]])²+1-n)`
-/

namespace A061928.P17174495799799588682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 + (1 - (n : ℤ))).toNat

end

end A061928.P17174495799799588682

namespace A061928

/-- `A003506((n-comp[∑[n]])²+1-n)` -/
def P17174495799799588682.Spec : Prop :=
  ∀ n, P17174495799799588682.a n = A061928 (n + 1)

end A061928

/-! ## A061928.P16635273085253226852

`A318762(2*A098350(n+1))`
-/

namespace A061928.P16635273085253226852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (2 * A098350 (n + 1)).toNat

end

end A061928.P16635273085253226852

namespace A061928

/-- `A318762(2*A098350(n+1))` -/
def P16635273085253226852.Spec : Prop :=
  ∀ n, P16635273085253226852.a n = A061928 (n + 1)

end A061928

/-!
# A061929: Triangle with n >= k >= 0 where a(n,k) = 2^k*3^(n-k)*(C(n+1,0)+C(n+1,1)+...C(n+1,k)).

The programs for A061929, the canonical program `A061929.P10346754905062245999` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061929 has offset 0).

The definition of A061929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061929.P10346754905062245999

`A054143(n)*A175840(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A061929

/-- `A054143(n)*A175840(n)` -/
def P10346754905062245999.Spec : Prop :=
  ∀ n, P10346754905062245999.a n = A061929 n

theorem P10346754905062245999.correct : P10346754905062245999.Spec := by
  intro n
  simp only [A061929]

end A061929

/-! ## A061929.P2379899304720710524

`A036561(A061579(n))*A054143(n)`
-/

namespace A061929.P2379899304720710524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A061579 n).toNat * A054143 n

end

end A061929.P2379899304720710524

namespace A061929

/-- `A036561(A061579(n))*A054143(n)` -/
def P2379899304720710524.Spec : Prop :=
  ∀ n, P2379899304720710524.a n = A061929 n

end A061929

/-! ## A061929.P7085971336364165634

`(A140513(n)-A104709(n))*A175840(n)`
-/

namespace A061929.P7085971336364165634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n - A104709 n) * A175840 n

end

end A061929.P7085971336364165634

namespace A061929

/-- `(A140513(n)-A104709(n))*A175840(n)` -/
def P7085971336364165634.Spec : Prop :=
  ∀ n, P7085971336364165634.a n = A061929 n

end A061929

/-! ## A061929.P18175548429111514501

`A104709(A061579(n))*A175840(n)`
-/

namespace A061929.P18175548429111514501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 (A061579 n).toNat * A175840 n

end

end A061929.P18175548429111514501

namespace A061929

/-- `A104709(A061579(n))*A175840(n)` -/
def P18175548429111514501.Spec : Prop :=
  ∀ n, P18175548429111514501.a n = A061929 n

end A061929

/-! ## A061929.P15237757341370991157

`A008949(A007401(n+1))*A175840(n)`
-/

namespace A061929.P15237757341370991157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A007401 (n + 1)).toNat * A175840 n

end

end A061929.P15237757341370991157

namespace A061929

/-- `A008949(A007401(n+1))*A175840(n)` -/
def P15237757341370991157.Spec : Prop :=
  ∀ n, P15237757341370991157.a n = A061929 n

end A061929

/-!
# A061930: Square array read by antidiagonals of T(n,k)=T(n-1,[k/2])+T(n-1,[k/3]) with T(0,0)=1.

The programs for A061930, there is no canonical definition to state claims against.
-/

/-! ## A061930.P16356403840112187607

`A059268(n)-A191347(A276974(n))`
-/

namespace A061930.P16356403840112187607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A191347 (A276974 n).toNat

end

end A061930.P16356403840112187607

/-! ## A061930.P9783654785961269174

`A341584(A061980(n))`
-/

namespace A061930.P9783654785961269174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341584 (A061980 n).toNat

end

end A061930.P9783654785961269174

/-! ## A061930.P11911501031357955047

`A366388(2^A059683(n+3)+1)`
-/

namespace A061930.P11911501031357955047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059683 (n + 3) : ℤ) + 1)).toNat

end

end A061930.P11911501031357955047

/-! ## A061930.P16620932190850285159

`and(A005117(n+1), A048896(A001006(n)))`
-/

namespace A061930.P16620932190850285159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005117 (n + 1)) (A048896 (A001006 n).toNat)

end

end A061930.P16620932190850285159

/-! ## A061930.P18062241161752183652

`and(A004818(A111697(n+1)), A091538(n))`
-/

namespace A061930.P18062241161752183652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004818 (A111697 (n + 1)).toNat) (A091538 n)

end

end A061930.P18062241161752183652

/-!
# A061931: Numbers k such that k divides the (right) concatenation of all numbers <= k written in base 2 (most significant digit on right).

The programs for A061931, there is no canonical definition to state claims against.
-/

/-! ## A061931.P8309236464446639434

`or(2*n+1, A130575(A103529(n+1)))`
-/

namespace A061931.P8309236464446639434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (A130575 (A103529 (n + 1)).toNat)

end

end A061931.P8309236464446639434

/-! ## A061931.P13947295110247300908

`or(A000009(n), A124132(A239453(n)))`
-/

namespace A061931.P13947295110247300908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000009 n) (A124132 (A239453 n).toNat)

end

end A061931.P13947295110247300908

/-!
# A061932: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 3 (most significant digit on right, least significant zeros not written).

The programs for A061932, there is no canonical definition to state claims against.
-/

/-! ## A061932.P17022078340839541829

`A002264(xor(A001111(n+1), A017113(n)))`
-/

namespace A061932.P17022078340839541829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.xor (A001111 (n + 1)) (A017113 n)).toNat

end

end A061932.P17022078340839541829

/-! ## A061932.P10664216699664166635

`xor(A324518(A056325(n)), A324545(2*n+1))`
-/

namespace A061932.P10664216699664166635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324518 (A056325 n).toNat) (A324545 (2 * n + 1))

end

end A061932.P10664216699664166635

/-!
# A061933: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 4 (most significant digit on right, least significant zeros not written).

The programs for A061933, there is no canonical definition to state claims against.
-/

/-! ## A061933.P18246474768951748095

`∑[A007732(∑[A305987(n)])]`
-/

namespace A061933.P18246474768951748095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061933.P18246474768951748095

/-! ## A061933.P11159564236408446072

`∑[A018679(A060473(n+1)²)]`
-/

namespace A061933.P11159564236408446072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018679 (A060473 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061933.P11159564236408446072

/-! ## A061933.P16093755676707563771

`record[A120562(∑[A098755(3*n)])]`
-/

namespace A061933.P16093755676707563771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098755 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061933.P16093755676707563771

/-!
# A061938: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 9 (most significant digit on right).

The programs for A061938, there is no canonical definition to state claims against.
-/

/-! ## A061938.P787729984417134003

`A060511(A094577(n))+1`
-/

namespace A061938.P787729984417134003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060511 (A094577 n).toNat + 1

end

end A061938.P787729984417134003

/-!
# A061939: Numbers n such that n divides the (right) concatenation of all numbers <= n written in base 10 (most significant digit on right).

The programs for A061939, there is no canonical definition to state claims against.
-/

/-! ## A061939.P8037736885616084445

`∑[A213939(A263144(3*n+4))]`
-/

namespace A061939.P8037736885616084445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213939 (A263144 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061939.P8037736885616084445

/-!
# A061944: Numbers k such that k divides the (right) concatenation of all numbers <= k written in base 15 (most significant digit on right).

The programs for A061944, there is no canonical definition to state claims against.
-/

/-! ## A061944.P1184535239241889179

`A308179(A000045(3*n+1)*A237984(n+1))`
-/

namespace A061944.P1184535239241889179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308179 (A000045 (3 * n + 1) * A237984 (n + 1)).toNat

end

end A061944.P1184535239241889179

/-!
# A061955: Numbers k such that k divides the (left) concatenation of all numbers <= k written in base 2 (most significant digit on right).

The programs for A061955, there is no canonical definition to state claims against.
-/

/-! ## A061955.P15501360700253829283

`A382483(a(n-1)²)` with `a(0)=1, a(1)=3`
-/

namespace A061955.P15501360700253829283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A382483 (a (n - 1) ^ 2).toNat

end

end A061955.P15501360700253829283

/-!
# A061956: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 3 (most significant digit on right).

The programs for A061956, there is no canonical definition to state claims against.
-/

/-! ## A061956.P4798251408540212564

`∑[A370328(A370286(n))]`
-/

namespace A061956.P4798251408540212564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370328 (A370286 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061956.P4798251408540212564

/-! ## A061956.P16696912789725511825

`∑[A072994(A038059(n+1))]`
-/

namespace A061956.P16696912789725511825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (A038059 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061956.P16696912789725511825

/-!
# A061960: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 7 (most significant digit on right).

The programs for A061960, there is no canonical definition to state claims against.
-/

/-! ## A061960.P7215951171472662174

`A090639(A329452(n)+A007556(n))`
-/

namespace A061960.P7215951171472662174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090639 (A329452 n + A007556 n).toNat

end

end A061960.P7215951171472662174

/-!
# A061961: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 8 (most significant digit on right).

The programs for A061961, there is no canonical definition to state claims against.
-/

/-! ## A061961.P9756456867783525706

`A018031(3*n)%A165783(A165787(n))`
-/

namespace A061961.P9756456867783525706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018031 (3 * n)) (A165783 (A165787 n).toNat)

end

end A061961.P9756456867783525706

/-!
# A061962: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 9 (most significant digit on right).

The programs for A061962, there is no canonical definition to state claims against.
-/

/-! ## A061962.P3287373995992128697

`A107408(A264443(n))+A033484(n)`
-/

namespace A061962.P3287373995992128697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107408 (A264443 n).toNat + A033484 n

end

end A061962.P3287373995992128697

/-!
# A061963: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 10 (most significant digit on right).

The programs for A061963, there is no canonical definition to state claims against.
-/

/-! ## A061963.P15267427478470658836

`or(1, A018627(A261931(n)))`
-/

namespace A061963.P15267427478470658836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A018627 (A261931 n).toNat)

end

end A061963.P15267427478470658836

/-!
# A061964: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 11 (most significant digit on right).

The programs for A061964, there is no canonical definition to state claims against.
-/

/-! ## A061964.P544739766801920668

`A008706(A050187(n)+A004019(n))`
-/

namespace A061964.P544739766801920668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A050187 n + A004019 n).toNat

end

end A061964.P544739766801920668

/-!
# A061968: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 15 (most significant digit on right).

The programs for A061968, there is no canonical definition to state claims against.
-/

/-! ## A061968.P6262606375049465505

`A357694(n+7)+A331423(A000272(n))`
-/

namespace A061968.P6262606375049465505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357694 (n + 7) + A331423 (A000272 n).toNat

end

end A061968.P6262606375049465505

/-!
# A061974: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 21 (most significant digit on right).

The programs for A061974, there is no canonical definition to state claims against.
-/

/-! ## A061974.P13476760905922676897

`record[(5^floor(n/2))%A336778(n+2)]`
-/

namespace A061974.P13476760905922676897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))) (A336778 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061974.P13476760905922676897

/-!
# A061976: Numbers n such that n divides the (left) concatenation of all numbers <= n written in base 23 (most significant digit on right).

The programs for A061976, there is no canonical definition to state claims against.
-/

/-! ## A061976.P6814380135614457728

`11*A248213(a(n-1)+1)` with `a(0)=1`
-/

namespace A061976.P6814380135614457728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  11 * A248213 (a (n - 1) + 1).toNat

end

end A061976.P6814380135614457728

/-!
# A061979: Floor of arithmetic-geometric mean of n and prime(n).

The programs for A061979, there is no canonical definition to state claims against.
-/

/-! ## A061979.P5827683802864339958

`A004526(A006093(n+1))+A000194(A089422(n))`
-/

namespace A061979.P5827683802864339958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006093 (n + 1)).toNat + A000194 (A089422 n).toNat

end

end A061979.P5827683802864339958

/-!
# A061981: a(n) = 3^n - 2*n - 1.

The programs for A061981, the canonical program `A061981.P3646078623781529490` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061981 has offset 0).

The definition of A061981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-2*n-1` (program `A061981.P3646078623781529490`, by `A061981.P3646078623781529490.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061981.P2342606990927648864

`3^n-(2*n+1)`
-/

namespace A061981.P2342606990927648864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (2 * n + 1 : ℤ)

end

end A061981.P2342606990927648864

namespace A061981

/-- `3^n-(2*n+1)` -/
def P2342606990927648864.Spec : Prop :=
  ∀ n, P2342606990927648864.a n = A061981 n

theorem P2342606990927648864.correct : P2342606990927648864.Spec := by
  intro n
  simp only [A061981, Nat.add_sub_cancel, A061981.P2342606990927648864.a, A061981.P3646078623781529490.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A061981

/-! ## A061981.P3646078623781529490

`3^n-2*n-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061981

/-- `3^n-2*n-1` -/
def P3646078623781529490.Spec : Prop :=
  ∀ n, P3646078623781529490.a n = A061981 n

theorem P3646078623781529490.correct : P3646078623781529490.Spec := by
  intro n
  simp only [A061981]

end A061981

/-! ## A061981.P6019676335486826662

`∑[ogf(4x^2/(1-4x+3x^2))]`
-/

namespace A061981.P6019676335486826662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4] [1, -4, 3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061981.P6019676335486826662

namespace A061981

/-- `∑[ogf(4x^2/(1-4x+3x^2))]` -/
def P6019676335486826662.Spec : Prop :=
  ∀ n, P6019676335486826662.a n = A061981 n

end A061981

/-! ## A061981.P7712697835092906438

`ogf(4x^2/(1-5x+7x^2-3x^3))`
-/

namespace A061981.P7712697835092906438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4] [1, -5, 7, -3] n

end

end A061981.P7712697835092906438

namespace A061981

/-- `ogf(4x^2/(1-5x+7x^2-3x^3))` -/
def P7712697835092906438.Spec : Prop :=
  ∀ n, P7712697835092906438.a n = A061981 n

end A061981

/-! ## A061981.P10802930447665184760

`∑[3*a(n-1)+4]` with `a(0)=0, a(1)=0`
-/

namespace A061981.P10802930447665184760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  3 * f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061981.P10802930447665184760

namespace A061981

/-- `∑[3*a(n-1)+4]` -/
def P10802930447665184760.Spec : Prop :=
  ∀ n, (P10802930447665184760.a n : ℤ) = A061981 n

end A061981

/-! ## A061981.P6049906043622872394

`∑[∑[3*a(n-1)]]` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A061981.P6049906043622872394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061981.P6049906043622872394

namespace A061981

/-- `∑[∑[3*a(n-1)]]` -/
def P6049906043622872394.Spec : Prop :=
  ∀ n, (P6049906043622872394.a n : ℤ) = A061981 n

end A061981

/-! ## A061981.P3532580241571128973

`floor(3*a(n-1)+4*(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A061981.P3532580241571128973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + 4 * ((n : ℤ) - 1)

end

end A061981.P3532580241571128973

namespace A061981

/-- `floor(3*a(n-1)+4*(n-1))` -/
def P3532580241571128973.Spec : Prop :=
  ∀ n, P3532580241571128973.a n = A061981 n

theorem P3532580241571128973.correct : P3532580241571128973.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A061981, Nat.add_sub_cancel, A061981.P3532580241571128973.a, A061981.P3646078623781529490.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A061981, Nat.add_sub_cancel, A061981.P3532580241571128973.a, A061981.P3646078623781529490.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A061981

/-! ## A061981.P5295479087815832493

`∑[a(n-1)+a(n-1)+a(n-1)+4]` with `a(0)=0, a(1)=0`
-/

namespace A061981.P5295479087815832493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061981.P5295479087815832493

namespace A061981

/-- `∑[a(n-1)+a(n-1)+a(n-1)+4]` -/
def P5295479087815832493.Spec : Prop :=
  ∀ n, (P5295479087815832493.a n : ℤ) = A061981 n

end A061981

/-! ## A061981.P13976766126002555137

`4*(A111277(n)-1)`
-/

namespace A061981.P13976766126002555137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A111277 n - 1)

end

end A061981.P13976766126002555137

namespace A061981

/-- `4*(A111277(n)-1)` -/
def P13976766126002555137.Spec : Prop :=
  ∀ n, P13976766126002555137.a n = A061981 n

end A061981

/-! ## A061981.P10210364161351947399

`2*(A003462(n)-n)`
-/

namespace A061981.P10210364161351947399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003462 n - (n : ℤ))

end

end A061981.P10210364161351947399

namespace A061981

/-- `2*(A003462(n)-n)` -/
def P10210364161351947399.Spec : Prop :=
  ∀ n, P10210364161351947399.a n = A061981 n

end A061981

/-! ## A061981.P4738709356380007780

`Δ[A007051(n)-n²]`
-/

namespace A061981.P4738709356380007780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061981.P4738709356380007780

namespace A061981

/-- `Δ[A007051(n)-n²]` -/
def P4738709356380007780.Spec : Prop :=
  ∀ n, P4738709356380007780.a n = A061981 n

end A061981

/-! ## A061981.P8164080119972738541

`Δ[A115098(n)-n²]`
-/

namespace A061981.P8164080119972738541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061981.P8164080119972738541

namespace A061981

/-- `Δ[A115098(n)-n²]` -/
def P8164080119972738541.Spec : Prop :=
  ∀ n, P8164080119972738541.a n = A061981 n

end A061981

/-! ## A061981.P12769119475392262587

`∑[2*(A133494(n)-1)]`
-/

namespace A061981.P12769119475392262587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133494 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061981.P12769119475392262587

namespace A061981

/-- `∑[2*(A133494(n)-1)]` -/
def P12769119475392262587.Spec : Prop :=
  ∀ n, P12769119475392262587.a n = A061981 n

end A061981

/-! ## A061981.P11798706678165279989

`abs(1-A024024(n)+n)`
-/

namespace A061981.P11798706678165279989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A024024 n + (n : ℤ)|

end

end A061981.P11798706678165279989

namespace A061981

/-- `abs(1-A024024(n)+n)` -/
def P11798706678165279989.Spec : Prop :=
  ∀ n, P11798706678165279989.a n = A061981 n

end A061981

/-! ## A061981.P17267089577444068808

`abs(2*n-A024023(n))`
-/

namespace A061981.P17267089577444068808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A024023 n|

end

end A061981.P17267089577444068808

namespace A061981

/-- `abs(2*n-A024023(n))` -/
def P17267089577444068808.Spec : Prop :=
  ∀ n, P17267089577444068808.a n = A061981 n

end A061981

/-! ## A061981.P16804813166091877990

`A132308(n)%A104743(n)`
-/

namespace A061981.P16804813166091877990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132308 n) (A104743 n)

end

end A061981.P16804813166091877990

namespace A061981

/-- `A132308(n)%A104743(n)` -/
def P16804813166091877990.Spec : Prop :=
  ∀ n, P16804813166091877990.a n = A061981 n

end A061981

/-! ## A061981.P9052635822068706688

`A003993(n+2)%A134931(n)`
-/

namespace A061981.P9052635822068706688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003993 (n + 2)) (A134931 n)

end

end A061981.P9052635822068706688

namespace A061981

/-- `A003993(n+2)%A134931(n)` -/
def P9052635822068706688.Spec : Prop :=
  ∀ n, P9052635822068706688.a n = A061981 n

end A061981

/-! ## A061981.P5720120481633183823

`A212697(n+1)%A034472(n)`
-/

namespace A061981.P5720120481633183823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212697 (n + 1)) (A034472 n)

end

end A061981.P5720120481633183823

namespace A061981

/-- `A212697(n+1)%A034472(n)` -/
def P5720120481633183823.Spec : Prop :=
  ∀ n, P5720120481633183823.a n = A061981 n

end A061981

/-! ## A061981.P10898111991543948364

`A100103(n)%A155609(n)`
-/

namespace A061981.P10898111991543948364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100103 n) (A155609 n)

end

end A061981.P10898111991543948364

namespace A061981

/-- `A100103(n)%A155609(n)` -/
def P10898111991543948364.Spec : Prop :=
  ∀ n, P10898111991543948364.a n = A061981 n

end A061981

/-! ## A061981.P17116281563035069513

`and(A002446(n), A186948(n))`
-/

namespace A061981.P17116281563035069513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A186948 n)

end

end A061981.P17116281563035069513

namespace A061981

/-- `and(A002446(n), A186948(n))` -/
def P17116281563035069513.Spec : Prop :=
  ∀ n, P17116281563035069513.a n = A061981 n

end A061981

/-!
# A061982: a(n) = 3^n - (n+1)*(n+2)/2.

The programs for A061982, the canonical program `A061982.P13631117991356415151` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061982 has offset 0).

The definition of A061982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-(n+1)*(n+2)/2` (program `A061982.P1393417499741606930`, by `A061982.P1393417499741606930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061982.P13631117991356415151

`3^n-C(n+2, 2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061982

/-- `3^n-C(n+2, 2)` -/
def P13631117991356415151.Spec : Prop :=
  ∀ n, P13631117991356415151.a n = A061982 n

theorem P13631117991356415151.correct : P13631117991356415151.Spec := by
  intro n
  simp only [A061982]

end A061982

/-! ## A061982.P1393417499741606930

`3^n-(n+1)*(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061982.P1393417499741606930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) - ((n + 1) * (n + 2) : ℚ) / 2

end

end A061982.P1393417499741606930

namespace A061982

/-- `3^n-(n+1)*(n+2)/2` -/
def P1393417499741606930.Spec : Prop :=
  ∀ n, P1393417499741606930.a n = (A061982 n : ℚ)

theorem P1393417499741606930.correct : P1393417499741606930.Spec := by
  intro n
  simp only [A061982, Nat.add_sub_cancel, A061982.P1393417499741606930.a, A061982.P13631117991356415151.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A061982

/-! ## A061982.P16095416595490661033

`∑[∑[3*a(n-1)+2]]` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A061982.P16095416595490661033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n f2 =>
  3 * f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061982.P16095416595490661033

namespace A061982

/-- `∑[∑[3*a(n-1)+2]]` -/
def P16095416595490661033.Spec : Prop :=
  ∀ n, (P16095416595490661033.a n : ℤ) = A061982 n

end A061982

/-! ## A061982.P16084321991995806857

`∑[∑[3*a(n-1)]-n]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A061982.P16084321991995806857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f2 =>
  3 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061982.P16084321991995806857

namespace A061982

/-- `∑[∑[3*a(n-1)]-n]` -/
def P16084321991995806857.Spec : Prop :=
  ∀ n, P16084321991995806857.a n = A061982 n

end A061982

/-! ## A061982.P10120165604781686544

`floor(3*a(n-1)+n²-1)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A061982.P10120165604781686544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + ((n ^ 2 : ℤ) - 1)

end

end A061982.P10120165604781686544

namespace A061982

/-- `floor(3*a(n-1)+n²-1)` -/
def P10120165604781686544.Spec : Prop :=
  ∀ n, P10120165604781686544.a n = A061982 n

end A061982

/-! ## A061982.P12592904217464295348

`floor(n²-(1-3*a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A061982.P12592904217464295348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - (1 - 3 * a (n - 1))

end

end A061982.P12592904217464295348

namespace A061982

/-- `floor(n²-(1-3*a(n-1)))` -/
def P12592904217464295348.Spec : Prop :=
  ∀ n, P12592904217464295348.a n = A061982 n

end A061982

/-! ## A061982.P10686792642594503320

`floor(n*n+3*a(n-1)-1)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A061982.P10686792642594503320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * n : ℤ) + (3 * a (n - 1) - 1)

end

end A061982.P10686792642594503320

namespace A061982

/-- `floor(n*n+3*a(n-1)-1)` -/
def P10686792642594503320.Spec : Prop :=
  ∀ n, P10686792642594503320.a n = A061982 n

end A061982

/-! ## A061982.P16494177549148830071

`∑[∑[A052156(n)-1]]`
-/

namespace A061982.P16494177549148830071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061982.P16494177549148830071

namespace A061982

/-- `∑[∑[A052156(n)-1]]` -/
def P16494177549148830071.Spec : Prop :=
  ∀ n, P16494177549148830071.a n = A061982 n

end A061982

/-! ## A061982.P8612420551364819804

`∑[A025192(n)-(n+1)]`
-/

namespace A061982.P8612420551364819804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061982.P8612420551364819804

namespace A061982

/-- `∑[A025192(n)-(n+1)]` -/
def P8612420551364819804.Spec : Prop :=
  ∀ n, P8612420551364819804.a n = A061982 n

end A061982

/-! ## A061982.P5423094183868291736

`∑[A154992(n+1)-n]`
-/

namespace A061982.P5423094183868291736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061982.P5423094183868291736

namespace A061982

/-- `∑[A154992(n+1)-n]` -/
def P5423094183868291736.Spec : Prop :=
  ∀ n, P5423094183868291736.a n = A061982 n

end A061982

/-! ## A061982.P13897955887256772338

`∑[A052919(n)-(n+2)]`
-/

namespace A061982.P13897955887256772338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061982.P13897955887256772338

namespace A061982

/-- `∑[A052919(n)-(n+2)]` -/
def P13897955887256772338.Spec : Prop :=
  ∀ n, P13897955887256772338.a n = A061982 n

end A061982

/-! ## A061982.P18192432464131688287

`Δ[A003462(n)-∑[∑[n]]]`
-/

namespace A061982.P18192432464131688287
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061982.P18192432464131688287

namespace A061982

/-- `Δ[A003462(n)-∑[∑[n]]]` -/
def P18192432464131688287.Spec : Prop :=
  ∀ n, P18192432464131688287.a n = A061982 n

end A061982

/-! ## A061982.P18186980548707826178

`abs(∑[n+1]-A000244(n))`
-/

namespace A061982.P18186980548707826178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000244 n|

end

end A061982.P18186980548707826178

namespace A061982

/-- `abs(∑[n+1]-A000244(n))` -/
def P18186980548707826178.Spec : Prop :=
  ∀ n, P18186980548707826178.a n = A061982 n

end A061982

/-! ## A061982.P5277603783239038625

`abs(Δ[A000292(n)]-3^n)`
-/

namespace A061982.P5277603783239038625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (3 ^ n : ℤ)|

end

end A061982.P5277603783239038625

namespace A061982

/-- `abs(Δ[A000292(n)]-3^n)` -/
def P5277603783239038625.Spec : Prop :=
  ∀ n, P5277603783239038625.a n = A061982 n

end A061982

/-! ## A061982.P5329082617437520695

`∑[∑[A326339(n+1)]-n]`
-/

namespace A061982.P5329082617437520695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061982.P5329082617437520695

namespace A061982

/-- `∑[∑[A326339(n+1)]-n]` -/
def P5329082617437520695.Spec : Prop :=
  ∀ n, P5329082617437520695.a n = A061982 n

end A061982

/-! ## A061982.P5136821688072794600

`∑[A182522(2*n)-(n+1)]`
-/

namespace A061982.P5136821688072794600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (2 * n) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061982.P5136821688072794600

namespace A061982

/-- `∑[A182522(2*n)-(n+1)]` -/
def P5136821688072794600.Spec : Prop :=
  ∀ n, P5136821688072794600.a n = A061982 n

end A061982

/-! ## A061982.P9882226802197690383

`(A061983(n+1)-n)/3`
-/

namespace A061982.P9882226802197690383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061983 (n + 1) - (n : ℤ) : ℚ) / 3

end

end A061982.P9882226802197690383

namespace A061982

/-- `(A061983(n+1)-n)/3` -/
def P9882226802197690383.Spec : Prop :=
  ∀ n, P9882226802197690383.a n = (A061982 n : ℚ)

end A061982

/-! ## A061982.P17952188996168899975

`∑[A132308(n)]%A048473(n)`
-/

namespace A061982.P17952188996168899975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A048473 n)

end

end A061982.P17952188996168899975

namespace A061982

/-- `∑[A132308(n)]%A048473(n)` -/
def P17952188996168899975.Spec : Prop :=
  ∀ n, P17952188996168899975.a n = A061982 n

end A061982

/-!
# A061983: a(n) = 3^n - (3*n^2 + n + 2)/2.

The programs for A061983, the canonical program `A061983.P12408795949296462867` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061983 has offset 0).

The definition of A061983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061983.P12408795949296462867

`3^n-(3*n²+n+2)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061983

/-- `3^n-(3*n²+n+2)/2` -/
def P12408795949296462867.Spec : Prop :=
  ∀ n, P12408795949296462867.a n = (A061983 n : ℚ)

end A061983

/-! ## A061983.P3093116785414585502

`∑[∑[3*(a(n-1)+2)]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A061983.P3093116785414585502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  3 * (f2 (n - 1) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061983.P3093116785414585502

namespace A061983

/-- `∑[∑[3*(a(n-1)+2)]]` -/
def P3093116785414585502.Spec : Prop :=
  ∀ n, (P3093116785414585502.a n : ℤ) = A061983 n

end A061983

/-! ## A061983.P4737300414375120239

`abs(∑[abs(1-3*n)]-A182522(2*n+1))`
-/

namespace A061983.P4737300414375120239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A182522 (2 * n + 1)|

end

end A061983.P4737300414375120239

namespace A061983

/-- `abs(∑[abs(1-3*n)]-A182522(2*n+1))` -/
def P4737300414375120239.Spec : Prop :=
  ∀ n, P4737300414375120239.a n = A061983 n

end A061983

/-! ## A061983.P6714368338033663271

`abs(A000124(n)-A024025(n))`
-/

namespace A061983.P6714368338033663271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000124 n - A024025 n|

end

end A061983.P6714368338033663271

namespace A061983

/-- `abs(A000124(n)-A024025(n))` -/
def P6714368338033663271.Spec : Prop :=
  ∀ n, P6714368338033663271.a n = A061983 n

end A061983

/-! ## A061983.P11441436100784982905

`abs(A005449(n)-A024023(n))`
-/

namespace A061983.P11441436100784982905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005449 n - A024023 n|

end

end A061983.P11441436100784982905

namespace A061983

/-- `abs(A005449(n)-A024023(n))` -/
def P11441436100784982905.Spec : Prop :=
  ∀ n, P11441436100784982905.a n = A061983 n

end A061983

/-! ## A061983.P8766972984954099941

`abs(A000244(n)-A104249(n))`
-/

namespace A061983.P8766972984954099941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A104249 n|

end

end A061983.P8766972984954099941

namespace A061983

/-- `abs(A000244(n)-A104249(n))` -/
def P8766972984954099941.Spec : Prop :=
  ∀ n, P8766972984954099941.a n = A061983 n

end A061983

/-! ## A061983.P8056404739143879037

`∑[A100702(n)-A008486(n)]`
-/

namespace A061983.P8056404739143879037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061983.P8056404739143879037

namespace A061983

/-- `∑[A100702(n)-A008486(n)]` -/
def P8056404739143879037.Spec : Prop :=
  ∀ n, P8056404739143879037.a n = A061983 n

end A061983

/-! ## A061983.P2812044179896971425

`(A182453(n)-(n²+1+n))*A057427(n)`
-/

namespace A061983.P2812044179896971425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A182453 n - (n ^ 2 + 1 + n : ℤ)) * A057427 n

end

end A061983.P2812044179896971425

namespace A061983

/-- `(A182453(n)-(n²+1+n))*A057427(n)` -/
def P2812044179896971425.Spec : Prop :=
  ∀ n, P2812044179896971425.a n = A061983 n

end A061983

/-!
# A061984: a(n) = 1 + a([n/2]) + a([n/3]) with a(0) = 0.

The programs for A061984, the canonical program `A061984.P13230106018589773693` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061984 has offset 0).

The definition of A061984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A061984.P13230106018589773693

`a(floor(n/2))+a(floor(n/3))+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061984

/-- `a(floor(n/2))+a(floor(n/3))+1` -/
def P13230106018589773693.Spec : Prop :=
  ∀ n, (P13230106018589773693.a n : ℤ) = A061984 n

theorem P13230106018589773693.correct : P13230106018589773693.Spec := by
  intro n
  simp only [A061984]

end A061984

/-! ## A061984.P618032190984118378

`A088468(n)-1`
-/

namespace A061984.P618032190984118378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088468 n - 1

end

end A061984.P618032190984118378

namespace A061984

/-- `A088468(n)-1` -/
def P618032190984118378.Spec : Prop :=
  ∀ n, P618032190984118378.a n = A061984 n

end A061984

/-! ## A061984.P1231286032664374799

`A289207(A088468(n)+1)`
-/

namespace A061984.P1231286032664374799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A088468 n + 1).toNat

end

end A061984.P1231286032664374799

namespace A061984

/-- `A289207(A088468(n)+1)` -/
def P1231286032664374799.Spec : Prop :=
  ∀ n, P1231286032664374799.a n = A061984 n

end A061984

/-! ## A061984.P719432838820634375

`A289207(2*A088468(n))/2`
-/

namespace A061984.P719432838820634375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289207 (2 * A088468 n).toNat : ℚ) / 2

end

end A061984.P719432838820634375

namespace A061984

/-- `A289207(2*A088468(n))/2` -/
def P719432838820634375.Spec : Prop :=
  ∀ n, P719432838820634375.a n = (A061984 n : ℚ)

end A061984

/-! ## A061984.P12002573133455807505

`(A088468(n)+A000578(n))%(n+1)`
-/

namespace A061984.P12002573133455807505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088468 n + A000578 n) (n + 1 : ℤ)

end

end A061984.P12002573133455807505

namespace A061984

/-- `(A088468(n)+A000578(n))%(n+1)` -/
def P12002573133455807505.Spec : Prop :=
  ∀ n, P12002573133455807505.a n = A061984 n

end A061984

/-! ## A061984.P8530239793004928547

`A165326(2*A088468(n))+A088468(n)`
-/

namespace A061984.P8530239793004928547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * A088468 n).toNat + A088468 n

end

end A061984.P8530239793004928547

namespace A061984

/-- `A165326(2*A088468(n))+A088468(n)` -/
def P8530239793004928547.Spec : Prop :=
  ∀ n, P8530239793004928547.a n = A061984 n

end A061984

/-! ## A061984.P11707417832031539255

`A082479(Δ[n²])-1`
-/

namespace A061984.P11707417832031539255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082479 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A061984.P11707417832031539255

namespace A061984

/-- `A082479(Δ[n²])-1` -/
def P11707417832031539255.Spec : Prop :=
  ∀ n, P11707417832031539255.a n = A061984 n

end A061984

/-! ## A061984.P14922685818592008539

`A160519(A069924(2*n+1))-1`
-/

namespace A061984.P14922685818592008539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160519 (A069924 (2 * n + 1)).toNat - 1

end

end A061984.P14922685818592008539

namespace A061984

/-- `A160519(A069924(2*n+1))-1` -/
def P14922685818592008539.Spec : Prop :=
  ∀ n, P14922685818592008539.a n = A061984 n

end A061984

/-! ## A061984.P15290654014122122435

`A099741(3*n+1)-1`
-/

namespace A061984.P15290654014122122435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099741 (3 * n + 1) - 1

end

end A061984.P15290654014122122435

namespace A061984

/-- `A099741(3*n+1)-1` -/
def P15290654014122122435.Spec : Prop :=
  ∀ n, P15290654014122122435.a n = A061984 n

end A061984

/-! ## A061984.P5852468947562111780

`(A099741(n+1+2*n)+n)%(n+1)`
-/

namespace A061984.P5852468947562111780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099741 (n + 1 + 2 * n) + (n : ℤ)) (n + 1 : ℤ)

end

end A061984.P5852468947562111780

namespace A061984

/-- `(A099741(n+1+2*n)+n)%(n+1)` -/
def P5852468947562111780.Spec : Prop :=
  ∀ n, P5852468947562111780.a n = A061984 n

end A061984

/-! ## A061984.P2247913435588624179

`1-4/2+A099741(A047241(n+1))`
-/

namespace A061984.P2247913435588624179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2 + (A099741 (A047241 (n + 1)).toNat : ℚ)

end

end A061984.P2247913435588624179

namespace A061984

/-- `1-4/2+A099741(A047241(n+1))` -/
def P2247913435588624179.Spec : Prop :=
  ∀ n, P2247913435588624179.a n = (A061984 n : ℚ)

end A061984

/-! ## A061984.P195286592417977983

`A070198(n)%A088468(n)`
-/

namespace A061984.P195286592417977983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A088468 n)

end

end A061984.P195286592417977983

namespace A061984

/-- `A070198(n)%A088468(n)` -/
def P195286592417977983.Spec : Prop :=
  ∀ n, P195286592417977983.a n = A061984 n

end A061984

/-! ## A061984.P14627901289898218770

`A079782(n+1)%A088468(n)`
-/

namespace A061984.P14627901289898218770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A088468 n)

end

end A061984.P14627901289898218770

namespace A061984

/-- `A079782(n+1)%A088468(n)` -/
def P14627901289898218770.Spec : Prop :=
  ∀ n, P14627901289898218770.a n = A061984 n

end A061984

/-! ## A061984.P1625876917741618491

`A083685(n+1)%A088468(n)`
-/

namespace A061984.P1625876917741618491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A088468 n)

end

end A061984.P1625876917741618491

namespace A061984

/-- `A083685(n+1)%A088468(n)` -/
def P1625876917741618491.Spec : Prop :=
  ∀ n, P1625876917741618491.a n = A061984 n

end A061984

/-! ## A061984.P265504962527061796

`A121934(n+1)%A088468(n)`
-/

namespace A061984.P265504962527061796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A088468 n)

end

end A061984.P265504962527061796

namespace A061984

/-- `A121934(n+1)%A088468(n)` -/
def P265504962527061796.Spec : Prop :=
  ∀ n, P265504962527061796.a n = A061984 n

end A061984

/-!
# A061985: Values which can occur in sequence b(k) = 1 + b(floor(k/2)) + b(floor(k/3)) with b(0) = 0, i.e., in A061984.

The programs for A061985, there is no canonical definition to state claims against.
-/

/-! ## A061985.P5672463835429481149

`a(n-1)+C(A022328(n)+A022329(n), A022328(n))` with `a(0)=0`
-/

namespace A061985.P5672463835429481149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose (A022328 n + A022329 n).toNat (A022328 n).toNat

end

end A061985.P5672463835429481149

/-! ## A061985.P4173551840802088031

`A160519(n+1)-1`
-/

namespace A061985.P4173551840802088031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160519 (n + 1) - 1

end

end A061985.P4173551840802088031

/-! ## A061985.P8160876338538494981

`A163806(A068231(n+1))+A160519(n+1)`
-/

namespace A061985.P8160876338538494981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (A068231 (n + 1)).toNat + A160519 (n + 1)

end

end A061985.P8160876338538494981

/-! ## A061985.P13106054871815957464

`A346242(A005385(n+1))+A160519(n+1)`
-/

namespace A061985.P13106054871815957464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A005385 (n + 1)).toNat + A160519 (n + 1)

end

end A061985.P13106054871815957464

/-! ## A061985.P5828964370725201583

`A363552(A077800(n+1))+A160519(n+1)`
-/

namespace A061985.P5828964370725201583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363552 (A077800 (n + 1)).toNat + A160519 (n + 1)

end

end A061985.P5828964370725201583

/-! ## A061985.P12555379657281058564

`A346242(A000040(n+5))+A160519(n+1)`
-/

namespace A061985.P12555379657281058564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (A000040 (n + 5)).toNat + A160519 (n + 1)

end

end A061985.P12555379657281058564

/-! ## A061985.P18291251553669566854

`A352869(A200520(3*n+1))+A160519(n+1)`
-/

namespace A061985.P18291251553669566854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352869 (A200520 (3 * n + 1)).toNat + A160519 (n + 1)

end

end A061985.P18291251553669566854

/-! ## A061985.P10238507176548656195

`A325939(A270777(2*(n+2)))+A160519(n+1)`
-/

namespace A061985.P10238507176548656195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325939 (A270777 (2 * (n + 2))).toNat + A160519 (n + 1)

end

end A061985.P10238507176548656195

/-! ## A061985.P11425468689660127295

`A215596(A286254(2*n+3))+A160519(n+1)`
-/

namespace A061985.P11425468689660127295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215596 (A286254 (2 * n + 3)).toNat + A160519 (n + 1)

end

end A061985.P11425468689660127295

/-! ## A061985.P8759950272170303949

`A023443(A160519(n+1))`
-/

namespace A061985.P8759950272170303949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A160519 (n + 1)).toNat

end

end A061985.P8759950272170303949

/-!
# A061986: Number of times n appears in sequence b(k) = 1 + b(floor(k/2)) + b(floor(k/3)) with b(0) = 0, i.e., in A061984.

The programs for A061986, there is no canonical definition to state claims against.
-/

/-! ## A061986.P2005971949685982502

`A121361(xor(2^val(n+1, 2), A136970(n+1)))`
-/

namespace A061986.P2005971949685982502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 (Int.xor (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A136970 (n + 1))).toNat

end

end A061986.P2005971949685982502

/-!
# A061987: Number of times n-th distinct value is repeated in sequence b(k) = 1 + b(floor(k/2)) + b(floor(k/3)) with b(0) = 0, i.e., in A061984; also number of times n-th distinct row is repeated in square array T(n,k) = T(n-1,k) + T(n-1,floor(k/2)) + T(n-1,floor(k/3)) with T(0,0) = 1, i.e., in A061980.

The programs for A061987, there is no canonical definition to state claims against.
-/

/-! ## A061987.P11383485050213349933

`A061986(A061985(n))`
-/

namespace A061987.P11383485050213349933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061986 (A061985 n).toNat

end

end A061987.P11383485050213349933

/-! ## A061987.P5640295211679193477

`abs(Δ[A003586(abs(1-n)+1)])`
-/

namespace A061987.P5640295211679193477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A061987.P5640295211679193477

/-! ## A061987.P2640894709646007516

`ceil(A003586(n+1)-A007694(n+1)/2)`
-/

namespace A061987.P2640894709646007516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003586 (n + 1) : ℚ) - (A007694 (n + 1) : ℚ) / 2⌉

end

end A061987.P2640894709646007516

/-! ## A061987.P1558574269151513680

`Δ[floor(A007694(n+1)/2)]`
-/

namespace A061987.P1558574269151513680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007694 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061987.P1558574269151513680

/-! ## A061987.P353779752776110255

`Δ[floor(A187778(n+1)/6)]`
-/

namespace A061987.P353779752776110255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187778 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061987.P353779752776110255

/-! ## A061987.P5099567149628462096

`(A000007(n)+Δ[A007694(n+1)])/2`
-/

namespace A061987.P5099567149628462096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A061987.P5099567149628462096

/-! ## A061987.P1015053109773488962

`ceil((A007694(n+2)-A007694(n+1))/2)`
-/

namespace A061987.P1015053109773488962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007694 (n + 2) - A007694 (n + 1) : ℚ) / 2⌉

end

end A061987.P1015053109773488962

/-! ## A061987.P6476528756393864936

`Δ[A007694(n+1)]/A000032(C(2, n+2))`
-/

namespace A061987.P6476528756393864936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A061987.P6476528756393864936

/-! ## A061987.P9325233617971580811

`Δ[A007694(n+1)]/A020639(∏{p}[2*n, #])`
-/

namespace A061987.P9325233617971580811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A061987.P9325233617971580811

/-! ## A061987.P3763425613443764743

`Δ[A007694(n+1)]/A020639(A002202(n+1))`
-/

namespace A061987.P3763425613443764743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A002202 (n + 1)).toNat : ℚ)

end

end A061987.P3763425613443764743

/-! ## A061987.P11255149612364394125

`Δ[A007694(n+1)]/A014963(A061142(n+1))`
-/

namespace A061987.P11255149612364394125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A014963 (A061142 (n + 1)).toNat : ℚ)

end

end A061987.P11255149612364394125

/-! ## A061987.P12873130593173875121

`Δ[A007694(n+1)]/A020639(A000010(n+2))`
-/

namespace A061987.P12873130593173875121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

end

end A061987.P12873130593173875121

/-! ## A061987.P13006289487618544366

`Δ[A007694(n+1)]/A000034(A000040(n+1))`
-/

namespace A061987.P13006289487618544366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 (A000040 (n + 1)).toNat : ℚ)

end

end A061987.P13006289487618544366

/-! ## A061987.P5764198758204229115

`Δ[A007694(n+1)]/A020639(A090778(n+1))`
-/

namespace A061987.P5764198758204229115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A090778 (n + 1)).toNat : ℚ)

end

end A061987.P5764198758204229115

/-! ## A061987.P10786909521018794784

`Δ[A007694(n+1)]/A020639(A068997(n+1))`
-/

namespace A061987.P10786909521018794784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A068997 (n + 1)).toNat : ℚ)

end

end A061987.P10786909521018794784

/-! ## A061987.P5309931329684486231

`Δ[A007694(n+1)]/A020639(A246037(n))`
-/

namespace A061987.P5309931329684486231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A246037 n).toNat : ℚ)

end

end A061987.P5309931329684486231

/-! ## A061987.P8392291178734546930

`Δ[A007694(n+1)]/A020639(A002618(n+1))`
-/

namespace A061987.P8392291178734546930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A002618 (n + 1)).toNat : ℚ)

end

end A061987.P8392291178734546930

/-! ## A061987.P4131036752849764701

`Δ[A007694(n+1)]/A020639(A000132(n))`
-/

namespace A061987.P4131036752849764701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (A000132 n).toNat : ℚ)

end

end A061987.P4131036752849764701

/-! ## A061987.P12243534059237699952

`A273943(Δ[A007694(n+1)])`
-/

namespace A061987.P12243534059237699952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f1 (n + 1) - f1 n).toNat

end

end A061987.P12243534059237699952

/-!
# A061988: Find smallest k such that k^n is a sum of n n-th powers, say k^n = T(n,1)^n + ... + T(n,n)^n. Sequence gives triangle of successive rows T(n,1), ..., T(n,n). T(n,1) = ... = T(n,n) = 0 indicates no solution exists.

The programs for A061988, there is no canonical definition to state claims against.
-/

/-! ## A061988.P9871880752561857621

`A018293(A317573(n+4)+n)`
-/

namespace A061988.P9871880752561857621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (A317573 (n + 4) + (n : ℤ)).toNat

end

end A061988.P9871880752561857621

/-!
# A061989: Number of ways to place 3 nonattacking queens on a 3 X n board.

The programs for A061989, the canonical program `A061989.P5629500545080752389` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061989 has offset 0).

The definition of A061989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061989.P5629500545080752389

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=4, a(5)=14, a(6)=36`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061989

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5629500545080752389.Spec : Prop :=
  ∀ n, P5629500545080752389.a n = A061989 n

theorem P5629500545080752389.correct : P5629500545080752389.Spec := by
  intro n
  simp only [A061989]

end A061989

/-! ## A061989.P13709683185499779693

`Δ[A108625(A022856(n+2))]`
-/

namespace A061989.P13709683185499779693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A022856 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061989.P13709683185499779693

namespace A061989

/-- `Δ[A108625(A022856(n+2))]` -/
def P13709683185499779693.Spec : Prop :=
  ∀ n, P13709683185499779693.a n = A061989 n

end A061989

/-! ## A061989.P8536172498661708197

`Δ[A108625(A016028(n+1)-1)]`
-/

namespace A061989.P8536172498661708197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A016028 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061989.P8536172498661708197

namespace A061989

/-- `Δ[A108625(A016028(n+1)-1)]` -/
def P8536172498661708197.Spec : Prop :=
  ∀ n, P8536172498661708197.a n = A061989 n

end A061989

/-! ## A061989.P14634112613213474008

`Δ[A108625(A000124(n)-A004275(n))]`
-/

namespace A061989.P14634112613213474008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A000124 n - A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061989.P14634112613213474008

namespace A061989

/-- `Δ[A108625(A000124(n)-A004275(n))]` -/
def P14634112613213474008.Spec : Prop :=
  ∀ n, P14634112613213474008.a n = A061989 n

end A061989

/-! ## A061989.P3976212198593619982

`A108625(A089071(n+1))-A108625(A022856(n+2))`
-/

namespace A061989.P3976212198593619982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A089071 (n + 1)).toNat - A108625 (A022856 (n + 2)).toNat

end

end A061989.P3976212198593619982

namespace A061989

/-- `A108625(A089071(n+1))-A108625(A022856(n+2))` -/
def P3976212198593619982.Spec : Prop :=
  ∀ n, P3976212198593619982.a n = A061989 n

end A061989

/-! ## A061989.P13899865518020469578

`Δ[A027689(A108561(A238531(n)))]`
-/

namespace A061989.P13899865518020469578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027689 (A108561 (A238531 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A061989.P13899865518020469578

namespace A061989

/-- `Δ[A027689(A108561(A238531(n)))]` -/
def P13899865518020469578.Spec : Prop :=
  ∀ n, P13899865518020469578.a n = A061989 n

end A061989

/-!
# A061990: Number of ways to place 4 nonattacking queens on a 4 X n board.

The programs for A061990, there is no canonical definition to state claims against.
-/

/-! ## A061990.P15531899308757214158

`A053186(A272395(n))`
-/

namespace A061990.P15531899308757214158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A272395 n).toNat

end

end A061990.P15531899308757214158

/-! ## A061990.P12381751311036622809

`A003963(Δ[A192745(n)])-A160602(n)`
-/

namespace A061990.P12381751311036622809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (n + 1) - f1 n).toNat - A160602 n

end

end A061990.P12381751311036622809

/-!
# A061991: Number of ways to place 5 nonattacking queens on a 5 X n board.

The programs for A061991, there is no canonical definition to state claims against.
-/

/-! ## A061991.P15339567594257962046

`A025437(A150380(n))`
-/

namespace A061991.P15339567594257962046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (A150380 n).toNat

end

end A061991.P15339567594257962046

/-! ## A061991.P15569216535550842734

`A375512(A148409(n))`
-/

namespace A061991.P15569216535550842734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375512 (A148409 n).toNat

end

end A061991.P15569216535550842734

/-! ## A061991.P3631212464896028353

`and(Δ[A241710(n+2)], A241692(n+7))`
-/

namespace A061991.P3631212464896028353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241710 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A241692 (n + 7))

end

end A061991.P3631212464896028353

/-! ## A061991.P12495545649353550706

`A207584(n+1)%A216623(A216628(n))`
-/

namespace A061991.P12495545649353550706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207584 (n + 1)) (A216623 (A216628 n).toNat)

end

end A061991.P12495545649353550706

/-!
# A061993: Number of ways to place 7 nonattacking queens on a 7 X n board.

The programs for A061993, there is no canonical definition to state claims against.
-/

/-! ## A061993.P8224612283465295940

`lcm(2-n, A218882(2*n+1))`
-/

namespace A061993.P8224612283465295940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (n : ℤ)) (A218882 (2 * n + 1))

end

end A061993.P8224612283465295940

/-! ## A061993.P16220616436271975156

`A004526(A122997(n)^4)`
-/

namespace A061993.P16220616436271975156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A122997 n ^ 4).toNat

end

end A061993.P16220616436271975156

/-! ## A061993.P12071295345997350672

`A004526(A122997(n)²²)`
-/

namespace A061993.P12071295345997350672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A122997 n ^ 2) ^ 2).toNat

end

end A061993.P12071295345997350672

/-! ## A061993.P8070202276018301649

`A004526(A308826(n)²²)`
-/

namespace A061993.P8070202276018301649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A308826 n ^ 2) ^ 2).toNat

end

end A061993.P8070202276018301649

/-!
# A061994: Number of ways to place 4 nonattacking queens on an n X n board.

The programs for A061994, there is no canonical definition to state claims against.
-/

/-! ## A061994.P8075872791517202935

`A086585(n+4)%A086615(A086591(n))`
-/

namespace A061994.P8075872791517202935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086585 (n + 4)) (A086615 (A086591 n).toNat)

end

end A061994.P8075872791517202935

/-!
# A061995: Number of ways to place 2 nonattacking kings on an n X n board.

The programs for A061995, the canonical program `A061995.P13266578000142429895` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061995 has offset 0).

The definition of A061995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A061995.P13266578000142429895

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=16, a(4)=78, a(5)=228`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061995

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13266578000142429895.Spec : Prop :=
  ∀ n, P13266578000142429895.a n = A061995 n

theorem P13266578000142429895.correct : P13266578000142429895.Spec := by
  intro n
  simp only [A061995]

end A061995

/-! ## A061995.P9987236710943879391

`∑[(C(Δ[n²], 2)-5)*floor(n-atan(n))]`
-/

namespace A061995.P9987236710943879391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2 : ℤ) - 5) * ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061995.P9987236710943879391

namespace A061995

/-- `∑[(C(Δ[n²], 2)-5)*floor(n-atan(n))]` -/
def P9987236710943879391.Spec : Prop :=
  ∀ n, P9987236710943879391.a n = A061995 n

end A061995

/-! ## A061995.P10141765558402801425

`(n-1)*(∑[n-char[2]]+n)*(n-2)`
-/

namespace A061995.P10141765558402801425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) * ((n : ℤ) - 2))

end

end A061995.P10141765558402801425

namespace A061995

/-- `(n-1)*(∑[n-char[2]]+n)*(n-2)` -/
def P10141765558402801425.Spec : Prop :=
  ∀ n, P10141765558402801425.a n = A061995 n

end A061995

/-! ## A061995.P6743158439963980840

`A035286(floor(1/(n+1)+n))/2`
-/

namespace A061995.P6743158439963980840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035286 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat : ℚ) / 2

end

end A061995.P6743158439963980840

namespace A061995

/-- `A035286(floor(1/(n+1)+n))/2` -/
def P6743158439963980840.Spec : Prop :=
  ∀ n, P6743158439963980840.a n = (A061995 n : ℚ)

end A061995

/-! ## A061995.P13900142401946168079

`C(n², 2)-(n-1)*A130824(n)`
-/

namespace A061995.P13900142401946168079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℤ) - ((n : ℤ) - 1) * A130824 n

end

end A061995.P13900142401946168079

namespace A061995

/-- `C(n², 2)-(n-1)*A130824(n)` -/
def P13900142401946168079.Spec : Prop :=
  ∀ n, P13900142401946168079.a n = A061995 n

end A061995

/-! ## A061995.P11498753016244942670

`∑[A100040(n)*A289207(n)]`
-/

namespace A061995.P11498753016244942670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100040 n * A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061995.P11498753016244942670

namespace A061995

/-- `∑[A100040(n)*A289207(n)]` -/
def P11498753016244942670.Spec : Prop :=
  ∀ n, P11498753016244942670.a n = A061995 n

end A061995

/-! ## A061995.P9595916129452137328

`∑[A049615(A161680(n))*A100040(n)]`
-/

namespace A061995.P9595916129452137328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A161680 n).toNat * A100040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061995.P9595916129452137328

namespace A061995

/-- `∑[A049615(A161680(n))*A100040(n)]` -/
def P9595916129452137328.Spec : Prop :=
  ∀ n, P9595916129452137328.a n = A061995 n

end A061995

/-! ## A061995.P6092662531597901281

`∑[A049615(A000124(n))*A100040(n)]`
-/

namespace A061995.P6092662531597901281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A000124 n).toNat * A100040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061995.P6092662531597901281

namespace A061995

/-- `∑[A049615(A000124(n))*A100040(n)]` -/
def P6092662531597901281.Spec : Prop :=
  ∀ n, P6092662531597901281.a n = A061995 n

end A061995

/-!
# A061996: Number of ways to place 3 nonattacking kings on an n X n board.

The programs for A061996, there is no canonical definition to state claims against.
-/

/-! ## A061996.P12771745593672524724

`4*A325104(A000295(n))`
-/

namespace A061996.P12771745593672524724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A325104 (A000295 n).toNat

end

end A061996.P12771745593672524724

/-! ## A061996.P11006230883667503035

`A079693(A299263((1-n)²))`
-/

namespace A061996.P11006230883667503035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079693 (A299263 ((1 - (n : ℤ)) ^ 2).toNat).toNat

end

end A061996.P11006230883667503035

/-!
# A061997: Number of ways to place 4 nonattacking kings on an n X n board.

The programs for A061997, there is no canonical definition to state claims against.
-/

/-! ## A061997.P9459363900732922202

`A304067(A019460(n)-ceil(n*(2-sqrt(2))))`
-/

namespace A061997.P9459363900732922202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304067 (A019460 n - ⌈(n : ℝ) * (2 - Real.sqrt (2 : ℝ))⌉).toNat

end

end A061997.P9459363900732922202

/-! ## A061997.P6583850222464272074

`A304067(A049614(n)+A000837(n))`
-/

namespace A061997.P6583850222464272074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304067 (A049614 n + A000837 n).toNat

end

end A061997.P6583850222464272074

/-!
# A061999: a(n) = 2*a(n-1)^2 - 2*a(n-2)^2 with a(0) = 0, a(1) = 1.

The programs for A061999, the canonical program `A061999.P12022725604321145663` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A061999 has offset 0).

The definition of A061999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²-2*a(n-2)²` (program `A061999.P12022725604321145663`, by `A061999.P12022725604321145663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A061999.P4203617752197049067

`2*(a(n-1)²-a(n-2)²)` with `a(0)=0, a(1)=1`
-/

namespace A061999.P4203617752197049067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) ^ 2 - a (n - 2) ^ 2)

end

end A061999.P4203617752197049067

namespace A061999

/-- `2*(a(n-1)²-a(n-2)²)` -/
def P4203617752197049067.Spec : Prop :=
  ∀ n, P4203617752197049067.a n = A061999 n

theorem P4203617752197049067.correct : P4203617752197049067.Spec := by
  intro n
  simp only [A061999, Nat.add_sub_cancel, A061999.P4203617752197049067.a, A061999.P12022725604321145663.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A061999

/-! ## A061999.P12022725604321145663

`2*a(n-1)²-2*a(n-2)²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A061999

/-- `2*a(n-1)²-2*a(n-2)²` -/
def P12022725604321145663.Spec : Prop :=
  ∀ n, P12022725604321145663.a n = A061999 n

theorem P12022725604321145663.correct : P12022725604321145663.Spec := by
  intro n
  simp only [A061999]

end A061999

/-! ## A061999.P3583076272695103876

`A062000(n)/2`
-/

namespace A061999.P3583076272695103876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062000 n : ℚ) / 2

end

end A061999.P3583076272695103876

namespace A061999

/-- `A062000(n)/2` -/
def P3583076272695103876.Spec : Prop :=
  ∀ n, P3583076272695103876.a n = (A061999 n : ℚ)

end A061999

/-! ## A061999.P12327261551753821011

`2*(a(n-1)+a(n-2))*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A061999.P12327261551753821011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * ((a (n - 1) + a (n - 2)) * (a (n - 1) - a (n - 2)))

end

end A061999.P12327261551753821011

namespace A061999

/-- `2*(a(n-1)+a(n-2))*(a(n-1)-a(n-2))` -/
def P12327261551753821011.Spec : Prop :=
  ∀ n, P12327261551753821011.a n = A061999 n

theorem P12327261551753821011.correct : P12327261551753821011.Spec := by
  intro n
  simp only [A061999, Nat.add_sub_cancel, A061999.P12327261551753821011.a, A061999.P12022725604321145663.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A061999

/-! ## A061999.P13643246076533556755

`2*(a(n-1)*a(n-1)-a(n-2)*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A061999.P13643246076533556755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) * a (n - 1) - a (n - 2) * a (n - 2))

end

end A061999.P13643246076533556755

namespace A061999

/-- `2*(a(n-1)*a(n-1)-a(n-2)*a(n-2))` -/
def P13643246076533556755.Spec : Prop :=
  ∀ n, P13643246076533556755.a n = A061999 n

theorem P13643246076533556755.correct : P13643246076533556755.Spec := by
  intro n
  simp only [A061999, Nat.add_sub_cancel, A061999.P13643246076533556755.a, A061999.P12022725604321145663.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A061999

