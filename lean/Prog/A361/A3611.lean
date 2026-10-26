import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A361101: a(n) is the smallest positive number not among the terms in a(1..n-1) with index a(n-1)*k for any integer k; a(1)=1.

The programs for A361101, there is no canonical definition to state claims against.
-/

/-! ## A361101.P437803887647022093

`A228351(A078008(n)+A060235(n+1))`
-/

namespace A361101.P437803887647022093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A078008 n + A060235 (n + 1)).toNat

end

end A361101.P437803887647022093

/-! ## A361101.P18083089744387509074

`gcd(A257225(n+1), A366792(A026599(n)))`
-/

namespace A361101.P18083089744387509074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257225 (n + 1)) (A366792 (A026599 n).toNat)

end

end A361101.P18083089744387509074

/-! ## A361101.P5816193738552876859

`A381437(A000009(n+4)*A341674(3*n+4))`
-/

namespace A361101.P5816193738552876859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381437 (A000009 (n + 4) * A341674 (3 * n + 4)).toNat

end

end A361101.P5816193738552876859

/-!
# A361102: 1 together with numbers having at least two distinct prime factors.

The programs for A361102, the canonical program `A361102.P11083175850878873480` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361102 has offset 1).

The definition of A361102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361102.P3139358544807718027

`comp[record[A008475(n+1)]]`
-/

namespace A361102.P3139358544807718027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A361102.P3139358544807718027

namespace A361102

/-- `comp[record[A008475(n+1)]]` -/
def P3139358544807718027.Spec : Prop :=
  ∀ n, (P3139358544807718027.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P5197616269366785089

`comp[A181062(n+2)]+1`
-/

namespace A361102.P5197616269366785089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A361102.P5197616269366785089

namespace A361102

/-- `comp[A181062(n+2)]+1` -/
def P5197616269366785089.Spec : Prop :=
  ∀ n, (P5197616269366785089.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P11083175850878873480

`eq[0, A069513(n+1)]+1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A361102

/-- `eq[0, A069513(n+1)]+1` -/
def P11083175850878873480.Spec : Prop :=
  ∀ n, (P11083175850878873480.a n : ℤ) = A361102 (n + 1)

theorem P11083175850878873480.correct : P11083175850878873480.Spec := by
  intro n
  simp only [A361102, Nat.add_sub_cancel]

end A361102

/-! ## A361102.P6680742521591686329

`eq[0, A100995(n+1)]+1`
-/

namespace A361102.P6680742521591686329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361102.P6680742521591686329

namespace A361102

/-- `eq[0, A100995(n+1)]+1` -/
def P6680742521591686329.Spec : Prop :=
  ∀ n, (P6680742521591686329.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P1312440959175614740

`lt[A092509(n+1), 1]+1`
-/

namespace A361102.P1312440959175614740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A361102.P1312440959175614740

namespace A361102

/-- `lt[A092509(n+1), 1]+1` -/
def P1312440959175614740.Spec : Prop :=
  ∀ n, (P1312440959175614740.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P16015041978030233411

`lt[A297109(n+1), 1]+1`
-/

namespace A361102.P16015041978030233411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A361102.P16015041978030233411

namespace A361102

/-- `lt[A297109(n+1), 1]+1` -/
def P16015041978030233411.Spec : Prop :=
  ∀ n, (P16015041978030233411.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P6262858865182226180

`lt[A349394(n+1), 1]+1`
-/

namespace A361102.P6262858865182226180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349394 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A361102.P6262858865182226180

namespace A361102

/-- `lt[A349394(n+1), 1]+1` -/
def P6262858865182226180.Spec : Prop :=
  ∀ n, (P6262858865182226180.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P10912023322201303208

`A375708(n)+a(n-1)` with `a(0)=1`
-/

namespace A361102.P10912023322201303208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375708 n + a (n - 1)

end

end A361102.P10912023322201303208

namespace A361102

/-- `A375708(n)+a(n-1)` -/
def P10912023322201303208.Spec : Prop :=
  ∀ n, P10912023322201303208.a n = A361102 (n + 1)

end A361102

/-! ## A361102.P17787525718863283022

`lt[n, A304404(n+1)]+1`
-/

namespace A361102.P17787525718863283022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304404 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A361102.P17787525718863283022

namespace A361102

/-- `lt[n, A304404(n+1)]+1` -/
def P17787525718863283022.Spec : Prop :=
  ∀ n, (P17787525718863283022.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P6194509296238274533

`comp[∑[A057820(n+1)]]+1`
-/

namespace A361102.P6194509296238274533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A361102.P6194509296238274533

namespace A361102

/-- `comp[∑[A057820(n+1)]]+1` -/
def P6194509296238274533.Spec : Prop :=
  ∀ n, (P6194509296238274533.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P18074369390391844794

`eq[4, 5-a(A001221(n)²)]` with `a(0)=1`
-/

namespace A361102.P18074369390391844794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  5 - f2 (A001221 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361102.P18074369390391844794

namespace A361102

/-- `eq[4, 5-a(A001221(n)²)]` -/
def P18074369390391844794.Spec : Prop :=
  ∀ n, (P18074369390391844794.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P12528806194971820413

`lt[n, n^A001221(n+1)]+1`
-/

namespace A361102.P12528806194971820413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A361102.P12528806194971820413

namespace A361102

/-- `lt[n, n^A001221(n+1)]+1` -/
def P12528806194971820413.Spec : Prop :=
  ∀ n, (P12528806194971820413.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P8711272820348610170

`record[(n+3)%((n+2)*A001221(n+3))]`
-/

namespace A361102.P8711272820348610170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) ((n + 2 : ℤ) * A001221 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361102.P8711272820348610170

namespace A361102

/-- `record[(n+3)%((n+2)*A001221(n+3))]` -/
def P8711272820348610170.Spec : Prop :=
  ∀ n, P8711272820348610170.a n = A361102 (n + 1)

end A361102

/-! ## A361102.P18261735193458027560

`A360519(A361103(n))`
-/

namespace A361102.P18261735193458027560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (A361103 n).toNat

end

end A361102.P18261735193458027560

namespace A361102

/-- `A360519(A361103(n))` -/
def P18261735193458027560.Spec : Prop :=
  ∀ n, P18261735193458027560.a n = A361102 (n + 1)

end A361102

/-! ## A361102.P14151099586414177194

`∪[A000156(n), A024619(n+1)]`
-/

namespace A361102.P14151099586414177194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361102.P14151099586414177194

namespace A361102

/-- `∪[A000156(n), A024619(n+1)]` -/
def P14151099586414177194.Spec : Prop :=
  ∀ n, (P14151099586414177194.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P13026899772582431029

`∪[A024619(n+1), A001288(n)]`
-/

namespace A361102.P13026899772582431029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001288 (n + 11)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361102.P13026899772582431029

namespace A361102

/-- `∪[A024619(n+1), A001288(n)]` -/
def P13026899772582431029.Spec : Prop :=
  ∀ n, (P13026899772582431029.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P2164089633965915402

`∪[A001334(n), A024619(n+1)]`
-/

namespace A361102.P2164089633965915402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361102.P2164089633965915402

namespace A361102

/-- `∪[A001334(n), A024619(n+1)]` -/
def P2164089633965915402.Spec : Prop :=
  ∀ n, (P2164089633965915402.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P3580816625130916338

`∪[A001352(n), A024619(n+1)]`
-/

namespace A361102.P3580816625130916338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361102.P3580816625130916338

namespace A361102

/-- `∪[A001352(n), A024619(n+1)]` -/
def P3580816625130916338.Spec : Prop :=
  ∀ n, (P3580816625130916338.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P4256837927522068759

`∪[A024619(n+1), A001386(n)]`
-/

namespace A361102.P4256837927522068759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001386 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361102.P4256837927522068759

namespace A361102

/-- `∪[A024619(n+1), A001386(n)]` -/
def P4256837927522068759.Spec : Prop :=
  ∀ n, (P4256837927522068759.a n : ℤ) = A361102 (n + 1)

end A361102

/-! ## A361102.P3484713547718060602

`∪[A024619(n+1), A001496(n)]`
-/

namespace A361102.P3484713547718060602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001496 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361102.P3484713547718060602

namespace A361102

/-- `∪[A024619(n+1), A001496(n)]` -/
def P3484713547718060602.Spec : Prop :=
  ∀ n, (P3484713547718060602.a n : ℤ) = A361102 (n + 1)

end A361102

/-!
# A361104: a(n) = k such that A361103(k-1) = n, or -1 if n never appears in A361103.

The programs for A361104, there is no canonical definition to state claims against.
-/

/-! ## A361104.P15032933805948029484

`A305974(A360519(n+1))`
-/

namespace A361104.P15032933805948029484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (A360519 (n + 1)).toNat

end

end A361104.P15032933805948029484

/-! ## A361104.P6324365704849916290

`A085970(A360519(n+1))+A054977(n+2)`
-/

namespace A361104.P6324365704849916290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A360519 (n + 1)).toNat + A054977 (n + 2)

end

end A361104.P6324365704849916290

/-! ## A361104.P10034346120722011875

`A085970(A360519(n+1))+gcd(5, A160357(n))`
-/

namespace A361104.P10034346120722011875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A360519 (n + 1)).toNat + (Int.gcd 5 (A160357 n) : ℤ)

end

end A361104.P10034346120722011875

/-! ## A361104.P10707214340268365979

`A085970(A360519(n+1))+A010130(2*n+1)`
-/

namespace A361104.P10707214340268365979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A360519 (n + 1)).toNat + A010130 (2 * n + 1)

end

end A361104.P10707214340268365979

/-! ## A361104.P9318863751410273366

`(A085970(A360519(n+1))+1)%A003377(n+1)`
-/

namespace A361104.P9318863751410273366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085970 (A360519 (n + 1)).toNat + 1) (A003377 (n + 1))

end

end A361104.P9318863751410273366

/-! ## A361104.P8287030846254158926

`A085970(A360519(n+1))+gcd(11, A030086(n+1))`
-/

namespace A361104.P8287030846254158926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A360519 (n + 1)).toNat + (Int.gcd 11 (A030086 (n + 1)) : ℤ)

end

end A361104.P8287030846254158926

/-!
# A361105: Fixed points in A360519.

The programs for A361105, there is no canonical definition to state claims against.
-/

/-! ## A361105.P13433274777576870425

`eq[n, A360519(floor(acot(n)+n))]`
-/

namespace A361105.P13433274777576870425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361105.P13433274777576870425

/-! ## A361105.P6082973057745859319

`eq[n, A360519(abs(1-n)+1)]`
-/

namespace A361105.P6082973057745859319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361105.P6082973057745859319

/-! ## A361105.P10892810911977745580

`eq[n+1, A360519(n+1)]+1`
-/

namespace A361105.P10892810911977745580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361105.P10892810911977745580

/-! ## A361105.P7325173700301932198

`eq[n+1, A361102(A361104(n+1))]+1`
-/

namespace A361105.P7325173700301932198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A361104 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361105.P7325173700301932198

/-! ## A361105.P9617450373555394138

`A361103(eq[A361102(n+1), A361103(n)])`
-/

namespace A361105.P9617450373555394138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361103 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A361105.P9617450373555394138

/-!
# A361107: Records in A360519.

The programs for A361107, there is no canonical definition to state claims against.
-/

/-! ## A361107.P15755154132536461005

`record[A360519(n+1)]`
-/

namespace A361107.P15755154132536461005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361107.P15755154132536461005

/-! ## A361107.P15961855736626169618

`A360519(A361108(n+1))`
-/

namespace A361107.P15961855736626169618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (A361108 (n + 1)).toNat

end

end A361107.P15961855736626169618

/-! ## A361107.P16623511128346557218

`record[ratio[A360519(A152271(n))]]`
-/

namespace A361107.P16623511128346557218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361107.P16623511128346557218

/-! ## A361107.P9751552730762280203

`A361102(record[A361104(n+1)])`
-/

namespace A361107.P9751552730762280203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361107.P9751552730762280203

/-!
# A361108: Indices of records in A360519.

The programs for A361108, there is no canonical definition to state claims against.
-/

/-! ## A361108.P610137267204236174

`A361103(record[A361104(n+1)-1])`
-/

namespace A361108.P610137267204236174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361104 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361103 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361108.P610137267204236174

/-!
# A361109: After A360519(n) has been found, a(n) is the smallest member of C (A361102) that is missing from A360519.

The programs for A361109, there is no canonical definition to state claims against.
-/

/-! ## A361109.P11345145059750868880

`A024619(A361110(n+1))`
-/

namespace A361109.P11345145059750868880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (A361110 (n + 1)).toNat

end

end A361109.P11345145059750868880

/-! ## A361109.P9479482650845267347

`A361102(A361110(n+1)+1)`
-/

namespace A361109.P9479482650845267347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A361110 (n + 1) + 1).toNat

end

end A361109.P9479482650845267347

/-! ## A361109.P9611699851312766517

`A360519(A361103(A361110(A361104(A361103(n)))))`
-/

namespace A361109.P9611699851312766517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (A361103 (A361110 (A361104 (A361103 n).toNat).toNat).toNat).toNat

end

end A361109.P9611699851312766517

/-!
# A361110: a(n) indicates the index of A361109 in C (A361102).

The programs for A361110, there is no canonical definition to state claims against.
-/

/-! ## A361110.P6743187899144073451

`A085970(A361109(n+1))`
-/

namespace A361110.P6743187899144073451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A361109 (n + 1)).toNat

end

end A361110.P6743187899144073451

/-!
# A361111: The binary expansion of a(n) specifies which primes divide A360519(n).

The programs for A361111, there is no canonical definition to state claims against.
-/

/-! ## A361111.P3373816520603198188

`A087207(A360519(n+1))`
-/

namespace A361111.P3373816520603198188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A360519 (n + 1)).toNat

end

end A361111.P3373816520603198188

/-! ## A361111.P14762044430211057434

`∑{p}[A360519(n+1), A048675(#)]`
-/

namespace A361111.P14762044430211057434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A361111.P14762044430211057434

/-! ## A361111.P2196636162268946706

`∑{p}[A360519(n+1), A048676(#)]`
-/

namespace A361111.P2196636162268946706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A361111.P2196636162268946706

/-! ## A361111.P2824763011717911921

`∑{p}[A360519(n+1), A156552(#)]`
-/

namespace A361111.P2824763011717911921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A361111.P2824763011717911921

/-! ## A361111.P6378412321155984554

`∑{p}[A360519(n+1), A233249(#)]`
-/

namespace A361111.P6378412321155984554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A361111.P6378412321155984554

/-! ## A361111.P11267843037185078044

`A048675(∏{p}[A360519(n+1), #])`
-/

namespace A361111.P11267843037185078044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361111.P11267843037185078044

/-! ## A361111.P2643699906540623439

`A048676(∏{p}[A360519(n+1), #])`
-/

namespace A361111.P2643699906540623439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048676 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361111.P2643699906540623439

/-! ## A361111.P9837335702996667162

`A248663(∏{p}[A360519(n+1), #])`
-/

namespace A361111.P9837335702996667162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361111.P9837335702996667162

/-! ## A361111.P5951032708042444608

`A285330(∏{p}[A360519(n+1), #])`
-/

namespace A361111.P5951032708042444608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361111.P5951032708042444608

/-!
# A361112: Numbers that begin a run of 3 consecutive odd valued terms in A360519.

The programs for A361112, there is no canonical definition to state claims against.
-/

/-! ## A361112.P13353244844139044384

`A360519(A361106(n+1))`
-/

namespace A361112.P13353244844139044384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (A361106 (n + 1)).toNat

end

end A361112.P13353244844139044384

/-!
# A361113: a(n)=1 if A361102(n) is even, otherwise 0.

The programs for A361113, the canonical program `A361113.P13888999247641361748` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361113 has offset 1).

The definition of A361113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361113.P3146846340269086023

`1-A361114(n)`
-/

namespace A361113.P3146846340269086023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361114 n

end

end A361113.P3146846340269086023

namespace A361113

/-- `1-A361114(n)` -/
def P3146846340269086023.Spec : Prop :=
  ∀ n, P3146846340269086023.a n = A361113 (n + 1)

theorem P3146846340269086023.correct : P3146846340269086023.Spec := by
  intro n
  simp only [A361113, Nat.add_sub_cancel, A361113.P3146846340269086023.a, A361113.P13888999247641361748.f1, A361113.P13888999247641361748.f2, A361113.P13888999247641361748.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A361114, A361114.P14671921688782388975.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361113

/-! ## A361113.P2991549727647990726

`log2(gcd(2, A361102(n+1)))`
-/

namespace A361113.P2991549727647990726
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A361102 (n + 1)) : ℝ)

end

end A361113.P2991549727647990726

namespace A361113

/-- `log2(gcd(2, A361102(n+1)))` -/
def P2991549727647990726.Spec : Prop :=
  ∀ n, P2991549727647990726.a n = (A361113 (n + 1) : ℝ)

end A361113

/-! ## A361113.P2011132723662619637

`comp[A181062(n+2)]%2`
-/

namespace A361113.P2011132723662619637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A361113.P2011132723662619637

namespace A361113

/-- `comp[A181062(n+2)]%2` -/
def P2011132723662619637.Spec : Prop :=
  ∀ n, (P2011132723662619637.a n : ℤ) = A361113 (n + 1)

end A361113

/-! ## A361113.P13888999247641361748

`eq[0, A069513(n+1)]%2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A361113

/-- `eq[0, A069513(n+1)]%2` -/
def P13888999247641361748.Spec : Prop :=
  ∀ n, (P13888999247641361748.a n : ℤ) = A361113 (n + 1)

theorem P13888999247641361748.correct : P13888999247641361748.Spec := by
  intro n
  simp only [A361113, Nat.add_sub_cancel]

end A361113

/-! ## A361113.P17731557131716400620

`and(1, eq[0, A297109(n+1)])`
-/

namespace A361113.P17731557131716400620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361113.P17731557131716400620

namespace A361113

/-- `and(1, eq[0, A297109(n+1)])` -/
def P17731557131716400620.Spec : Prop :=
  ∀ n, (P17731557131716400620.a n : ℤ) = A361113 (n + 1)

end A361113

/-! ## A361113.P13054999837053549717

`lt[n, A304404(n+1)]%2`
-/

namespace A361113.P13054999837053549717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304404 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 2

end

end A361113.P13054999837053549717

namespace A361113

/-- `lt[n, A304404(n+1)]%2` -/
def P13054999837053549717.Spec : Prop :=
  ∀ n, (P13054999837053549717.a n : ℤ) = A361113 (n + 1)

end A361113

/-! ## A361113.P17784158976827238626

`comp[eq[1, A001221(n+1)]]%2`
-/

namespace A361113.P17784158976827238626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A361113.P17784158976827238626

namespace A361113

/-- `comp[eq[1, A001221(n+1)]]%2` -/
def P17784158976827238626.Spec : Prop :=
  ∀ n, (P17784158976827238626.a n : ℤ) = A361113 (n + 1)

end A361113

/-! ## A361113.P7947347021142409018

`and(1, A361102(n+1)+A076338(n))`
-/

namespace A361113.P7947347021142409018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A361102 (n + 1) + A076338 n)

end

end A361113.P7947347021142409018

namespace A361113

/-- `and(1, A361102(n+1)+A076338(n))` -/
def P7947347021142409018.Spec : Prop :=
  ∀ n, P7947347021142409018.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P16263295042043107683

`and(1, A361102(n+1)+A158388(n))`
-/

namespace A361113.P16263295042043107683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A361102 (n + 1) + A158388 n)

end

end A361113.P16263295042043107683

namespace A361113

/-- `and(1, A361102(n+1)+A158388(n))` -/
def P16263295042043107683.Spec : Prop :=
  ∀ n, P16263295042043107683.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P5804501280552249810

`1-and(A060576(n), A361102(n+1))`
-/

namespace A361113.P5804501280552249810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A060576 n) (A361102 (n + 1))

end

end A361113.P5804501280552249810

namespace A361113

/-- `1-and(A060576(n), A361102(n+1))` -/
def P5804501280552249810.Spec : Prop :=
  ∀ n, P5804501280552249810.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P3782821148345559745

`1-and(A179184(n), A361102(n+1))`
-/

namespace A361113.P3782821148345559745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A179184 n) (A361102 (n + 1))

end

end A361113.P3782821148345559745

namespace A361113

/-- `1-and(A179184(n), A361102(n+1))` -/
def P3782821148345559745.Spec : Prop :=
  ∀ n, P3782821148345559745.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P3967394748498799227

`1-and(A185114(n), A361102(n+1))`
-/

namespace A361113.P3967394748498799227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A185114 n) (A361102 (n + 1))

end

end A361113.P3967394748498799227

namespace A361113

/-- `1-and(A185114(n), A361102(n+1))` -/
def P3967394748498799227.Spec : Prop :=
  ∀ n, P3967394748498799227.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P15286891134725263431

`1-and(A185115(n), A361102(n+1))`
-/

namespace A361113.P15286891134725263431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A185115 n) (A361102 (n + 1))

end

end A361113.P15286891134725263431

namespace A361113

/-- `1-and(A185115(n), A361102(n+1))` -/
def P15286891134725263431.Spec : Prop :=
  ∀ n, P15286891134725263431.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P9810683027827071974

`1-and(A267537(n), A361102(n+1))`
-/

namespace A361113.P9810683027827071974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A267537 n) (A361102 (n + 1))

end

end A361113.P9810683027827071974

namespace A361113

/-- `1-and(A267537(n), A361102(n+1))` -/
def P9810683027827071974.Spec : Prop :=
  ∀ n, P9810683027827071974.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P15567313717400776468

`1-and(A267587(n), A361102(n+1))`
-/

namespace A361113.P15567313717400776468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (A267587 n) (A361102 (n + 1))

end

end A361113.P15567313717400776468

namespace A361113

/-- `1-and(A267587(n), A361102(n+1))` -/
def P15567313717400776468.Spec : Prop :=
  ∀ n, P15567313717400776468.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P12210883557507763874

`eq[1, A014963(n+1)]%2`
-/

namespace A361113.P12210883557507763874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A361113.P12210883557507763874

namespace A361113

/-- `eq[1, A014963(n+1)]%2` -/
def P12210883557507763874.Spec : Prop :=
  ∀ n, (P12210883557507763874.a n : ℤ) = A361113 (n + 1)

end A361113

/-! ## A361113.P14110589751185743369

`A000035(A361102(n+1)-1)`
-/

namespace A361113.P14110589751185743369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A361102 (n + 1) - 1).toNat

end

end A361113.P14110589751185743369

namespace A361113

/-- `A000035(A361102(n+1)-1)` -/
def P14110589751185743369.Spec : Prop :=
  ∀ n, P14110589751185743369.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P13410510413450482666

`A000035(eq[1, A100994(n+1)])`
-/

namespace A361113.P13410510413450482666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361113.P13410510413450482666

namespace A361113

/-- `A000035(eq[1, A100994(n+1)])` -/
def P13410510413450482666.Spec : Prop :=
  ∀ n, P13410510413450482666.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P6446669133978564988

`A059841(A361102(n+1))`
-/

namespace A361113.P6446669133978564988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A361102 (n + 1)).toNat

end

end A361113.P6446669133978564988

namespace A361113

/-- `A059841(A361102(n+1))` -/
def P6446669133978564988.Spec : Prop :=
  ∀ n, P6446669133978564988.a n = A361113 (n + 1)

end A361113

/-! ## A361113.P10262102948016844399

`char[A305974(2*(n+1))-1]`
-/

namespace A361113.P10262102948016844399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361113.P10262102948016844399

namespace A361113

/-- `char[A305974(2*(n+1))-1]` -/
def P10262102948016844399.Spec : Prop :=
  ∀ n, (P10262102948016844399.a n : ℤ) = A361113 (n + 1)

end A361113

/-!
# A361114: a(n)=1 if A361102(n) is odd, otherwise 0.

The programs for A361114, the canonical program `A361114.P14671921688782388975` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361114 has offset 0).

The definition of A361114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361114.P14671921688782388975

`1-A361113(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A361114

/-- `1-A361113(n+1)` -/
def P14671921688782388975.Spec : Prop :=
  ∀ n, P14671921688782388975.a n = A361114 n

theorem P14671921688782388975.correct : P14671921688782388975.Spec := by
  intro n
  simp only [A361114]

end A361114

/-! ## A361114.P7587664110500740790

`A361102(n+1)%2`
-/

namespace A361114.P7587664110500740790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361102 (n + 1)) 2

end

end A361114.P7587664110500740790

namespace A361114

/-- `A361102(n+1)%2` -/
def P7587664110500740790.Spec : Prop :=
  ∀ n, P7587664110500740790.a n = A361114 n

end A361114

/-! ## A361114.P8394110111730072402

`comp[record[A008475(n+1)]]%2`
-/

namespace A361114.P8394110111730072402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A361114.P8394110111730072402

namespace A361114

/-- `comp[record[A008475(n+1)]]%2` -/
def P8394110111730072402.Spec : Prop :=
  ∀ n, (P8394110111730072402.a n : ℤ) = A361114 n

end A361114

/-! ## A361114.P13694199584391019196

`-comp[A181062(n+2)]%2+1`
-/

namespace A361114.P13694199584391019196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) 2 + 1

end

end A361114.P13694199584391019196

namespace A361114

/-- `-comp[A181062(n+2)]%2+1` -/
def P13694199584391019196.Spec : Prop :=
  ∀ n, P13694199584391019196.a n = A361114 n

end A361114

/-! ## A361114.P11650754128401735771

`eq[4, 5-a(A001221(n)²)]%2` with `a(0)=1`
-/

namespace A361114.P11650754128401735771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  5 - f2 (A001221 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A361114.P11650754128401735771

namespace A361114

/-- `eq[4, 5-a(A001221(n)²)]%2` -/
def P11650754128401735771.Spec : Prop :=
  ∀ n, (P11650754128401735771.a n : ℤ) = A361114 n

end A361114

/-! ## A361114.P14288922386096319274

`(lt[n, n^A001221(n+1)]+1)%2`
-/

namespace A361114.P14288922386096319274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1) % 2

end

end A361114.P14288922386096319274

namespace A361114

/-- `(lt[n, n^A001221(n+1)]+1)%2` -/
def P14288922386096319274.Spec : Prop :=
  ∀ n, (P14288922386096319274.a n : ℤ) = A361114 n

end A361114

/-! ## A361114.P5568361426572570277

`record[(n+3)%((n+2)*A001221(n+3))]%2`
-/

namespace A361114.P5568361426572570277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) ((n + 2 : ℤ) * A001221 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A361114.P5568361426572570277

namespace A361114

/-- `record[(n+3)%((n+2)*A001221(n+3))]%2` -/
def P5568361426572570277.Spec : Prop :=
  ∀ n, P5568361426572570277.a n = A361114 n

end A361114

/-! ## A361114.P3629866819068110970

`and(A060576(n), A361102(n+1))`
-/

namespace A361114.P3629866819068110970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A361102 (n + 1))

end

end A361114.P3629866819068110970

namespace A361114

/-- `and(A060576(n), A361102(n+1))` -/
def P3629866819068110970.Spec : Prop :=
  ∀ n, P3629866819068110970.a n = A361114 n

end A361114

/-! ## A361114.P8329065080933767654

`and(A158388(n), A361102(n+1))`
-/

namespace A361114.P8329065080933767654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158388 n) (A361102 (n + 1))

end

end A361114.P8329065080933767654

namespace A361114

/-- `and(A158388(n), A361102(n+1))` -/
def P8329065080933767654.Spec : Prop :=
  ∀ n, P8329065080933767654.a n = A361114 n

end A361114

/-! ## A361114.P4034716899203404770

`and(A179184(n), A361102(n+1))`
-/

namespace A361114.P4034716899203404770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179184 n) (A361102 (n + 1))

end

end A361114.P4034716899203404770

namespace A361114

/-- `and(A179184(n), A361102(n+1))` -/
def P4034716899203404770.Spec : Prop :=
  ∀ n, P4034716899203404770.a n = A361114 n

end A361114

/-! ## A361114.P5703901424113204136

`and(A185114(n), A361102(n+1))`
-/

namespace A361114.P5703901424113204136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185114 n) (A361102 (n + 1))

end

end A361114.P5703901424113204136

namespace A361114

/-- `and(A185114(n), A361102(n+1))` -/
def P5703901424113204136.Spec : Prop :=
  ∀ n, P5703901424113204136.a n = A361114 n

end A361114

/-! ## A361114.P5878374440306061146

`and(A185115(n), A361102(n+1))`
-/

namespace A361114.P5878374440306061146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185115 n) (A361102 (n + 1))

end

end A361114.P5878374440306061146

namespace A361114

/-- `and(A185115(n), A361102(n+1))` -/
def P5878374440306061146.Spec : Prop :=
  ∀ n, P5878374440306061146.a n = A361114 n

end A361114

/-! ## A361114.P16580479408690044489

`and(A267537(n), A361102(n+1))`
-/

namespace A361114.P16580479408690044489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267537 n) (A361102 (n + 1))

end

end A361114.P16580479408690044489

namespace A361114

/-- `and(A267537(n), A361102(n+1))` -/
def P16580479408690044489.Spec : Prop :=
  ∀ n, P16580479408690044489.a n = A361114 n

end A361114

/-! ## A361114.P9771442471774678552

`and(A267587(n), A361102(n+1))`
-/

namespace A361114.P9771442471774678552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267587 n) (A361102 (n + 1))

end

end A361114.P9771442471774678552

namespace A361114

/-- `and(A267587(n), A361102(n+1))` -/
def P9771442471774678552.Spec : Prop :=
  ∀ n, P9771442471774678552.a n = A361114 n

end A361114

/-! ## A361114.P8226599039374857377

`record[A048671(n+5)]%2`
-/

namespace A361114.P8226599039374857377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A361114.P8226599039374857377

namespace A361114

/-- `record[A048671(n+5)]%2` -/
def P8226599039374857377.Spec : Prop :=
  ∀ n, P8226599039374857377.a n = A361114 n

end A361114

/-! ## A361114.P4821687526466854799

`A000035(A361102(n+1))`
-/

namespace A361114.P4821687526466854799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A361102 (n + 1)).toNat

end

end A361114.P4821687526466854799

namespace A361114

/-- `A000035(A361102(n+1))` -/
def P4821687526466854799.Spec : Prop :=
  ∀ n, P4821687526466854799.a n = A361114 n

end A361114

/-! ## A361114.P10502842474718238900

`A059841(A361102(n+1)+1)`
-/

namespace A361114.P10502842474718238900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A361102 (n + 1) + 1).toNat

end

end A361114.P10502842474718238900

namespace A361114

/-- `A059841(A361102(n+1)+1)` -/
def P10502842474718238900.Spec : Prop :=
  ∀ n, P10502842474718238900.a n = A361114 n

end A361114

/-! ## A361114.P6659945195291921772

`char[A305974(2*n+1)-1]`
-/

namespace A361114.P6659945195291921772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361114.P6659945195291921772

namespace A361114

/-- `char[A305974(2*n+1)-1]` -/
def P6659945195291921772.Spec : Prop :=
  ∀ n, (P6659945195291921772.a n : ℤ) = A361114 n

end A361114

/-! ## A361114.P10550407197136552381

`and(A176794(n), A361102(n+1))`
-/

namespace A361114.P10550407197136552381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176794 n) (A361102 (n + 1))

end

end A361114.P10550407197136552381

namespace A361114

/-- `and(A176794(n), A361102(n+1))` -/
def P10550407197136552381.Spec : Prop :=
  ∀ n, P10550407197136552381.a n = A361114 n

end A361114

/-! ## A361114.P18061115607690882091

`and(A020737(n), A361102(n+1))`
-/

namespace A361114.P18061115607690882091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A361102 (n + 1))

end

end A361114.P18061115607690882091

namespace A361114

/-- `and(A020737(n), A361102(n+1))` -/
def P18061115607690882091.Spec : Prop :=
  ∀ n, P18061115607690882091.a n = A361114 n

end A361114

/-!
# A361115: a(n)=1 if A361102(n) is divisible by 3, otherwise 0.

The programs for A361115, the canonical program `A361115.P7604483962719695336` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361115 has offset 0).

The definition of A361115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361115.P8875836623533357682

`1-A361116(n)`
-/

namespace A361115.P8875836623533357682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361116 n

end

end A361115.P8875836623533357682

namespace A361115

/-- `1-A361116(n)` -/
def P8875836623533357682.Spec : Prop :=
  ∀ n, P8875836623533357682.a n = A361115 n

theorem P8875836623533357682.correct : P8875836623533357682.Spec := by
  intro n
  simp only [A361115, Nat.add_sub_cancel, A361115.P8875836623533357682.a, A361115.P7604483962719695336.a, A361102, A361102.P11083175850878873480.f1, A361102.P11083175850878873480.f2, A361102.P11083175850878873480.a, A361116, A361116.P7100103913625895617.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361115

/-! ## A361115.P7604483962719695336

`1-A361102(n+1)²%3`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A361115

/-- `1-A361102(n+1)²%3` -/
def P7604483962719695336.Spec : Prop :=
  ∀ n, P7604483962719695336.a n = A361115 n

theorem P7604483962719695336.correct : P7604483962719695336.Spec := by
  intro n
  simp only [A361115]

end A361115

/-! ## A361115.P12807029093101711223

`1-(comp[A181062(n+2)]+1)²%3`
-/

namespace A361115.P12807029093101711223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2 % 3 : ℕ) : ℤ)

end

end A361115.P12807029093101711223

namespace A361115

/-- `1-(comp[A181062(n+2)]+1)²%3` -/
def P12807029093101711223.Spec : Prop :=
  ∀ n, P12807029093101711223.a n = A361115 n

end A361115

/-! ## A361115.P16698007073428564388

`C(lt[A008475(n+1), n+1], 2)%3`
-/

namespace A361115.P16698007073428564388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) 2 % 3

end

end A361115.P16698007073428564388

namespace A361115

/-- `C(lt[A008475(n+1), n+1], 2)%3` -/
def P16698007073428564388.Spec : Prop :=
  ∀ n, (P16698007073428564388.a n : ℤ) = A361115 n

end A361115

/-! ## A361115.P14568628905809872079

`A079978(A361102(n+1))`
-/

namespace A361115.P14568628905809872079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A361102 (n + 1)).toNat

end

end A361115.P14568628905809872079

namespace A361115

/-- `A079978(A361102(n+1))` -/
def P14568628905809872079.Spec : Prop :=
  ∀ n, P14568628905809872079.a n = A361115 n

end A361115

/-! ## A361115.P8770670072596156218

`char[A305974(3*(n+1))-1]`
-/

namespace A361115.P8770670072596156218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305974 (3 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361115.P8770670072596156218

namespace A361115

/-- `char[A305974(3*(n+1))-1]` -/
def P8770670072596156218.Spec : Prop :=
  ∀ n, (P8770670072596156218.a n : ℤ) = A361115 n

end A361115

/-! ## A361115.P18286187183241134175

`A011655(A361102(n+1)²-1)`
-/

namespace A361115.P18286187183241134175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A361102 (n + 1) ^ 2 - 1).toNat

end

end A361115.P18286187183241134175

namespace A361115

/-- `A011655(A361102(n+1)²-1)` -/
def P18286187183241134175.Spec : Prop :=
  ∀ n, P18286187183241134175.a n = A361115 n

end A361115

/-!
# A361116: a(n)=0 if A361102(n) is divisible by 3, otherwise 1.

The programs for A361116, the canonical program `A361116.P7100103913625895617` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361116 has offset 0).

The definition of A361116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361116.P7100103913625895617

`1-A361115(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A361116

/-- `1-A361115(n)` -/
def P7100103913625895617.Spec : Prop :=
  ∀ n, P7100103913625895617.a n = A361116 n

theorem P7100103913625895617.correct : P7100103913625895617.Spec := by
  intro n
  simp only [A361116]

end A361116

/-! ## A361116.P4010627809921658277

`A361102(n+1)²%3`
-/

namespace A361116.P4010627809921658277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361102 (n + 1) ^ 2) 3

end

end A361116.P4010627809921658277

namespace A361116

/-- `A361102(n+1)²%3` -/
def P4010627809921658277.Spec : Prop :=
  ∀ n, P4010627809921658277.a n = A361116 n

theorem P4010627809921658277.correct : P4010627809921658277.Spec := by
  intro n
  simp only [A361116, Nat.add_sub_cancel, A361116.P4010627809921658277.a, A361116.P7100103913625895617.a, A361102, A361102.P11083175850878873480.f1, A361102.P11083175850878873480.f2, A361102.P11083175850878873480.a, A361115, A361115.P7604483962719695336.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361116

/-! ## A361116.P2065410950446224743

`char[xor(n+1, A361115(n+1))]`
-/

namespace A361116.P2065410950446224743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A361115 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361116.P2065410950446224743

namespace A361116

/-- `char[xor(n+1, A361115(n+1))]` -/
def P2065410950446224743.Spec : Prop :=
  ∀ n, (P2065410950446224743.a n : ℤ) = A361116 n

end A361116

/-! ## A361116.P6163134268575606710

`(comp[A181062(n+2)]+1)²%3`
-/

namespace A361116.P6163134268575606710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2 % 3

end

end A361116.P6163134268575606710

namespace A361116

/-- `(comp[A181062(n+2)]+1)²%3` -/
def P6163134268575606710.Spec : Prop :=
  ∀ n, (P6163134268575606710.a n : ℤ) = A361116 n

end A361116

/-! ## A361116.P13625419461005294229

`(lt[A092509(n+1), 1]+1)²%3`
-/

namespace A361116.P13625419461005294229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092509 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2 % 3

end

end A361116.P13625419461005294229

namespace A361116

/-- `(lt[A092509(n+1), 1]+1)²%3` -/
def P13625419461005294229.Spec : Prop :=
  ∀ n, (P13625419461005294229.a n : ℤ) = A361116 n

end A361116

/-! ## A361116.P2491911033071791920

`(lt[A100995(n+1), 1]+1)²%3`
-/

namespace A361116.P2491911033071791920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) ^ 2 % 3

end

end A361116.P2491911033071791920

namespace A361116

/-- `(lt[A100995(n+1), 1]+1)²%3` -/
def P2491911033071791920.Spec : Prop :=
  ∀ n, (P2491911033071791920.a n : ℤ) = A361116 n

end A361116

/-! ## A361116.P9402724313898888899

`(lt[n, n^A001221(n+1)]+1)²%3`
-/

namespace A361116.P9402724313898888899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1) ^ 2 % 3

end

end A361116.P9402724313898888899

namespace A361116

/-- `(lt[n, n^A001221(n+1)]+1)²%3` -/
def P9402724313898888899.Spec : Prop :=
  ∀ n, (P9402724313898888899.a n : ℤ) = A361116 n

end A361116

/-! ## A361116.P3734805893126117903

`record[(n+3)%((n+2)*A001221(n+3))]²%3`
-/

namespace A361116.P3734805893126117903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) ((n + 2 : ℤ) * A001221 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2) 3

end

end A361116.P3734805893126117903

namespace A361116

/-- `record[(n+3)%((n+2)*A001221(n+3))]²%3` -/
def P3734805893126117903.Spec : Prop :=
  ∀ n, P3734805893126117903.a n = A361116 n

end A361116

/-! ## A361116.P16576756771240372988

`A011655(A361102(n+1))`
-/

namespace A361116.P16576756771240372988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A361102 (n + 1)).toNat

end

end A361116.P16576756771240372988

namespace A361116

/-- `A011655(A361102(n+1))` -/
def P16576756771240372988.Spec : Prop :=
  ∀ n, P16576756771240372988.a n = A361116 n

end A361116

/-! ## A361116.P14513347178278839008

`A079978(A361102(n+1)²+2)`
-/

namespace A361116.P14513347178278839008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A361102 (n + 1) ^ 2 + 2).toNat

end

end A361116.P14513347178278839008

namespace A361116

/-- `A079978(A361102(n+1)²+2)` -/
def P14513347178278839008.Spec : Prop :=
  ∀ n, P14513347178278839008.a n = A361116 n

end A361116

/-!
# A361117: a(n) is the least k such that A360519(k) is divisible by the n-th prime number.

The programs for A361117, there is no canonical definition to state claims against.
-/

/-! ## A361117.P5751332183048110402

`A031235(A137740(n+3))+A004207(n)`
-/

namespace A361117.P5751332183048110402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031235 (A137740 (n + 3)).toNat + A004207 n

end

end A361117.P5751332183048110402

/-!
# A361118: a(n) = gcd(A360519(n), A360519(n+1)).

The programs for A361118, there is no canonical definition to state claims against.
-/

/-! ## A361118.P13326551155687236559

`gcd(A360519(n+1), A360519(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361118.P13326551155687236559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A360519 (n + 1)) (A360519 (n + 2))

end

end A361118.P13326551155687236559

/-! ## A361118.P6995254939732357093

`A361128(n+2)%A361324(A191663(2*n+5))`
-/

namespace A361118.P6995254939732357093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361128 (n + 2)) (A361324 (A191663 (2 * n + 5)).toNat)

end

end A361118.P6995254939732357093

/-! ## A361118.P4397183009024576857

`A361128(n+2)%A361144(A361133(n+2))`
-/

namespace A361118.P4397183009024576857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361128 (n + 2)) (A361144 (A361133 (n + 2)).toNat)

end

end A361118.P4397183009024576857

/-! ## A361118.P8336432163497840031

`gcd(A358539(n+3), A361128(n+2))`
-/

namespace A361118.P8336432163497840031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A358539 (n + 3)) (A361128 (n + 2))

end

end A361118.P8336432163497840031

/-! ## A361118.P16955709104112828234

`A361128(n+2)/A003557(A001045(n+1))`
-/

namespace A361118.P16955709104112828234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361128 (n + 2) : ℚ) / (A003557 (A001045 (n + 1)).toNat : ℚ)

end

end A361118.P16955709104112828234

/-!
# A361119: a(n) is the least prime factor of A360519(n) with a(1) = 1.

The programs for A361119, there is no canonical definition to state claims against.
-/

/-! ## A361119.P13600065586469133029

`A020639(A360519(n+1))`
-/

namespace A361119.P13600065586469133029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A360519 (n + 1)).toNat

end

end A361119.P13600065586469133029

/-! ## A361119.P14843517715120015022

`A074828(∏{p}[A360519(n+1), #])`
-/

namespace A361119.P14843517715120015022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361119.P14843517715120015022

/-! ## A361119.P1011750140613705740

`A028233(∏{p}[A360519(n+1), #])`
-/

namespace A361119.P1011750140613705740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361119.P1011750140613705740

/-! ## A361119.P4405347765498470551

`A034684(∏{p}[A360519(n+1), #])`
-/

namespace A361119.P4405347765498470551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361119.P4405347765498470551

/-! ## A361119.P7203833000115729347

`A014673(2*A360519(n+1))`
-/

namespace A361119.P7203833000115729347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A360519 (n + 1)).toNat

end

end A361119.P7203833000115729347

/-!
# A361120: a(n) is the greatest prime factor of A360519(n) with a(1) = 1.

The programs for A361120, there is no canonical definition to state claims against.
-/

/-! ## A361120.P13691959263133554689

`A006530(A360519(n+1))`
-/

namespace A361120.P13691959263133554689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A360519 (n + 1)).toNat

end

end A361120.P13691959263133554689

/-! ## A361120.P1924939229380646380

`A034699(∏{p}[A360519(n+1), #])`
-/

namespace A361120.P1924939229380646380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361120.P1924939229380646380

/-! ## A361120.P14253711219350088697

`A002034(∏{p}[A360519(n+1), #])`
-/

namespace A361120.P14253711219350088697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361120.P14253711219350088697

/-! ## A361120.P15485098569481523058

`A025492(∏{p}[A360519(n+1), #])`
-/

namespace A361120.P15485098569481523058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361120.P15485098569481523058

/-! ## A361120.P15172212367991781224

`A327498(∏{p}[A360519(n+1), #])`
-/

namespace A361120.P15172212367991781224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A361120.P15172212367991781224

/-!
# A361121: 1 if n-th composite number A002808(n) is even, otherwise 0.

The programs for A361121, the canonical program `A361121.P16839421460347675392` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361121 has offset 1).

The definition of A361121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361121.P12341524706878359707

`log2(gcd(2, comp[p?[2*n+1]-3]+3))`
-/

namespace A361121.P12341524706878359707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3) : ℝ)

end

end A361121.P12341524706878359707

namespace A361121

/-- `log2(gcd(2, comp[p?[2*n+1]-3]+3))` -/
def P12341524706878359707.Spec : Prop :=
  ∀ n, P12341524706878359707.a n = (A361121 (n + 1) : ℝ)

end A361121

/-! ## A361121.P9734760859778457206

`1-and(1, comp[p?[xor(1, n)+1]-2]+2)`
-/

namespace A361121.P9734760859778457206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) : ℤ)

end

end A361121.P9734760859778457206

namespace A361121

/-- `1-and(1, comp[p?[xor(1, n)+1]-2]+2)` -/
def P9734760859778457206.Spec : Prop :=
  ∀ n, P9734760859778457206.a n = A361121 (n + 1)

end A361121

/-! ## A361121.P11035030251936578421

`char[2*n-∑[C(2*n+1, ∏{d}[2*n+1, #])]]`
-/

namespace A361121.P11035030251936578421
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f3 n), d)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361121.P11035030251936578421

namespace A361121

/-- `char[2*n-∑[C(2*n+1, ∏{d}[2*n+1, #])]]` -/
def P11035030251936578421.Spec : Prop :=
  ∀ n, (P11035030251936578421.a n : ℤ) = A361121 (n + 1)

end A361121

/-! ## A361121.P11990334331070818077

`val(p?[A107286(n)], 2)`
-/

namespace A361121.P11990334331070818077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A361121.P11990334331070818077

namespace A361121

/-- `val(p?[A107286(n)], 2)` -/
def P11990334331070818077.Spec : Prop :=
  ∀ n, (P11990334331070818077.a n : ℤ) = A361121 (n + 1)

end A361121

/-! ## A361121.P10486894720334836614

`char[A065855(or(1, n))]`
-/

namespace A361121.P10486894720334836614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (Nat.lor 1 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361121.P10486894720334836614

namespace A361121

/-- `char[A065855(or(1, n))]` -/
def P10486894720334836614.Spec : Prop :=
  ∀ n, (P10486894720334836614.a n : ℤ) = A361121 (n + 1)

end A361121

/-! ## A361121.P16839421460347675392

`A053542(n+1)%2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A361121

/-- `A053542(n+1)%2` -/
def P16839421460347675392.Spec : Prop :=
  ∀ n, P16839421460347675392.a n = A361121 (n + 1)

theorem P16839421460347675392.correct : P16839421460347675392.Spec := by
  intro n
  simp only [A361121, Nat.add_sub_cancel]

end A361121

/-! ## A361121.P14443591631973481418

`A053543(n+1)%2`
-/

namespace A361121.P14443591631973481418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053543 (n + 1)) 2

end

end A361121.P14443591631973481418

namespace A361121

/-- `A053543(n+1)%2` -/
def P14443591631973481418.Spec : Prop :=
  ∀ n, P14443591631973481418.a n = A361121 (n + 1)

end A361121

/-! ## A361121.P12541178405200114155

`A072668(n+1)%2`
-/

namespace A361121.P12541178405200114155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072668 (n + 1)) 2

end

end A361121.P12541178405200114155

namespace A361121

/-- `A072668(n+1)%2` -/
def P12541178405200114155.Spec : Prop :=
  ∀ n, P12541178405200114155.a n = A361121 (n + 1)

end A361121

/-! ## A361121.P8135563407253140372

`A079696(n+1)%2`
-/

namespace A361121.P8135563407253140372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079696 (n + 1)) 2

end

end A361121.P8135563407253140372

namespace A361121

/-- `A079696(n+1)%2` -/
def P8135563407253140372.Spec : Prop :=
  ∀ n, P8135563407253140372.a n = A361121 (n + 1)

end A361121

/-! ## A361121.P1400628079710892394

`A113521(n+1)%2`
-/

namespace A361121.P1400628079710892394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113521 (n + 1)) 2

end

end A361121.P1400628079710892394

namespace A361121

/-- `A113521(n+1)%2` -/
def P1400628079710892394.Spec : Prop :=
  ∀ n, P1400628079710892394.a n = A361121 (n + 1)

end A361121

/-! ## A361121.P5082062086698486875

`A164028(n+1)%2`
-/

namespace A361121.P5082062086698486875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164028 (n + 1)) 2

end

end A361121.P5082062086698486875

namespace A361121

/-- `A164028(n+1)%2` -/
def P5082062086698486875.Spec : Prop :=
  ∀ n, P5082062086698486875.a n = A361121 (n + 1)

end A361121

/-! ## A361121.P16179366214272120328

`A168563(n+1)%2`
-/

namespace A361121.P16179366214272120328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168563 (n + 1)) 2

end

end A361121.P16179366214272120328

namespace A361121

/-- `A168563(n+1)%2` -/
def P16179366214272120328.Spec : Prop :=
  ∀ n, P16179366214272120328.a n = A361121 (n + 1)

end A361121

/-! ## A361121.P271012167505234600

`A273062(n+1)%2`
-/

namespace A361121.P271012167505234600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273062 (n + 1)) 2

end

end A361121.P271012167505234600

namespace A361121

/-- `A273062(n+1)%2` -/
def P271012167505234600.Spec : Prop :=
  ∀ n, P271012167505234600.a n = A361121 (n + 1)

end A361121

/-! ## A361121.P1966938935381472336

`A290599(n+1)%2`
-/

namespace A361121.P1966938935381472336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290599 (n + 1)) 2

end

end A361121.P1966938935381472336

namespace A361121

/-- `A290599(n+1)%2` -/
def P1966938935381472336.Spec : Prop :=
  ∀ n, P1966938935381472336.a n = A361121 (n + 1)

end A361121

/-! ## A361121.P8018858679189988926

`val(A056608(n+1), 2)`
-/

namespace A361121.P8018858679189988926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A056608 (n + 1)).toNat 2

end

end A361121.P8018858679189988926

namespace A361121

/-- `val(A056608(n+1), 2)` -/
def P8018858679189988926.Spec : Prop :=
  ∀ n, (P8018858679189988926.a n : ℤ) = A361121 (n + 1)

end A361121

/-! ## A361121.P18433202240482797848

`char[A065855(2*n+1)]`
-/

namespace A361121.P18433202240482797848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361121.P18433202240482797848

namespace A361121

/-- `char[A065855(2*n+1)]` -/
def P18433202240482797848.Spec : Prop :=
  ∀ n, (P18433202240482797848.a n : ℤ) = A361121 (n + 1)

end A361121

/-! ## A361121.P5231612951638214258

`char[A210469(n+2)+n]`
-/

namespace A361121.P5231612951638214258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361121.P5231612951638214258

namespace A361121

/-- `char[A210469(n+2)+n]` -/
def P5231612951638214258.Spec : Prop :=
  ∀ n, (P5231612951638214258.a n : ℤ) = A361121 (n + 1)

end A361121

/-! ## A361121.P14106404695983853865

`gcd(2, A002808(n+1))-1`
-/

namespace A361121.P14106404695983853865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002808 (n + 1)) : ℤ) - 1

end

end A361121.P14106404695983853865

namespace A361121

/-- `gcd(2, A002808(n+1))-1` -/
def P14106404695983853865.Spec : Prop :=
  ∀ n, P14106404695983853865.a n = A361121 (n + 1)

end A361121

/-!
# A361122: 0 if n-th composite number A002808(n) is divisible by 3, otherwise 1.

The programs for A361122, the canonical program `A361122.P3369539810080432684` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361122 has offset 1).

The definition of A361122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361122.P4652653454841346074

`(comp[p?[round(n/2)]-2]+2)²%3`
-/

namespace A361122.P4652653454841346074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) ^ 2 % 3

end

end A361122.P4652653454841346074

namespace A361122

/-- `(comp[p?[round(n/2)]-2]+2)²%3` -/
def P4652653454841346074.Spec : Prop :=
  ∀ n, (P4652653454841346074.a n : ℤ) = A361122 (n + 1)

end A361122

/-! ## A361122.P6251067706390837773

`((comp[p?[xor(1, n)+1]-2]+2)^4)%3`
-/

namespace A361122.P6251067706390837773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2) ^ 4 % 3

end

end A361122.P6251067706390837773

namespace A361122

/-- `((comp[p?[xor(1, n)+1]-2]+2)^4)%3` -/
def P6251067706390837773.Spec : Prop :=
  ∀ n, (P6251067706390837773.a n : ℤ) = A361122 (n + 1)

end A361122

/-! ## A361122.P6357830068753983566

`1-A361123(n+1)`
-/

namespace A361122.P6357830068753983566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361123 (n + 1)

end

end A361122.P6357830068753983566

namespace A361122

/-- `1-A361123(n+1)` -/
def P6357830068753983566.Spec : Prop :=
  ∀ n, P6357830068753983566.a n = A361122 (n + 1)

theorem P6357830068753983566.correct : P6357830068753983566.Spec := by
  intro n
  simp only [A361122, Nat.add_sub_cancel, A361122.P6357830068753983566.a, A361122.P3369539810080432684.f1, A361122.P3369539810080432684.a, A053767, A053767.P11805917997260904903.a, A361123, A361123.P17185907231639651446.a, A051349, A051349.P2414547720400107792.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361122

/-! ## A361122.P3369539810080432684

`Δ[A053767(n)]²%3`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361122

/-- `Δ[A053767(n)]²%3` -/
def P3369539810080432684.Spec : Prop :=
  ∀ n, P3369539810080432684.a n = A361122 (n + 1)

theorem P3369539810080432684.correct : P3369539810080432684.Spec := by
  intro n
  simp only [A361122, Nat.add_sub_cancel]

end A361122

/-! ## A361122.P9098749927876105587

`A002808(n+1)²%3`
-/

namespace A361122.P9098749927876105587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1) ^ 2) 3

end

end A361122.P9098749927876105587

namespace A361122

/-- `A002808(n+1)²%3` -/
def P9098749927876105587.Spec : Prop :=
  ∀ n, P9098749927876105587.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P12039702264262136753

`A011655(A308375(n+1))`
-/

namespace A361122.P12039702264262136753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A308375 (n + 1)).toNat

end

end A361122.P12039702264262136753

namespace A361122

/-- `A011655(A308375(n+1))` -/
def P12039702264262136753.Spec : Prop :=
  ∀ n, P12039702264262136753.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P17988729441873505328

`A062312(n+2)%3`
-/

namespace A361122.P17988729441873505328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062312 (n + 2)) 3

end

end A361122.P17988729441873505328

namespace A361122

/-- `A062312(n+2)%3` -/
def P17988729441873505328.Spec : Prop :=
  ∀ n, P17988729441873505328.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P11199117611948586441

`A161753(n+3)%3`
-/

namespace A361122.P11199117611948586441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161753 (n + 3)) 3

end

end A361122.P11199117611948586441

namespace A361122

/-- `A161753(n+3)%3` -/
def P11199117611948586441.Spec : Prop :=
  ∀ n, P11199117611948586441.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P15339979803466695595

`A011655(A164028(n+1))`
-/

namespace A361122.P15339979803466695595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A164028 (n + 1)).toNat

end

end A361122.P15339979803466695595

namespace A361122

/-- `A011655(A164028(n+1))` -/
def P15339979803466695595.Spec : Prop :=
  ∀ n, P15339979803466695595.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P4335296328240509934

`A011655(A002808(n+1))`
-/

namespace A361122.P4335296328240509934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A002808 (n + 1)).toNat

end

end A361122.P4335296328240509934

namespace A361122

/-- `A011655(A002808(n+1))` -/
def P4335296328240509934.Spec : Prop :=
  ∀ n, P4335296328240509934.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P3302374240192727864

`A011655(A056653(n+1))`
-/

namespace A361122.P3302374240192727864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A056653 (n + 1)).toNat

end

end A361122.P3302374240192727864

namespace A361122

/-- `A011655(A056653(n+1))` -/
def P3302374240192727864.Spec : Prop :=
  ∀ n, P3302374240192727864.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P14550946478112488661

`A011655(A018252(n+2))`
-/

namespace A361122.P14550946478112488661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A018252 (n + 2)).toNat

end

end A361122.P14550946478112488661

namespace A361122

/-- `A011655(A018252(n+2))` -/
def P14550946478112488661.Spec : Prop :=
  ∀ n, P14550946478112488661.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P5242373305352737429

`A011655(A326776(n+2))`
-/

namespace A361122.P5242373305352737429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A326776 (n + 2)).toNat

end

end A361122.P5242373305352737429

namespace A361122

/-- `A011655(A326776(n+2))` -/
def P5242373305352737429.Spec : Prop :=
  ∀ n, P5242373305352737429.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P1744204870809138895

`A011655(A282671(n+1)/2)`
-/

namespace A361122.P1744204870809138895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (SequenceMachineLib.roundAway ((A282671 (n + 1) : ℚ) / 2)).toNat

end

end A361122.P1744204870809138895

namespace A361122

/-- `A011655(A282671(n+1)/2)` -/
def P1744204870809138895.Spec : Prop :=
  ∀ n, P1744204870809138895.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P10194971320905887937

`A204418(A079696(n+1))`
-/

namespace A361122.P10194971320905887937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (A079696 (n + 1)).toNat

end

end A361122.P10194971320905887937

namespace A361122

/-- `A204418(A079696(n+1))` -/
def P10194971320905887937.Spec : Prop :=
  ∀ n, P10194971320905887937.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P434920103104585727

`A011655(A282671(n+1))`
-/

namespace A361122.P434920103104585727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A282671 (n + 1)).toNat

end

end A361122.P434920103104585727

namespace A361122

/-- `A011655(A282671(n+1))` -/
def P434920103104585727.Spec : Prop :=
  ∀ n, P434920103104585727.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P4996517616567523511

`A011655(A139270(n+2))`
-/

namespace A361122.P4996517616567523511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A139270 (n + 2)).toNat

end

end A361122.P4996517616567523511

namespace A361122

/-- `A011655(A139270(n+2))` -/
def P4996517616567523511.Spec : Prop :=
  ∀ n, P4996517616567523511.a n = A361122 (n + 1)

end A361122

/-! ## A361122.P1353032058841319557

`A141212(A163602(n+2))`
-/

namespace A361122.P1353032058841319557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141212 (A163602 (n + 2)).toNat

end

end A361122.P1353032058841319557

namespace A361122

/-- `A141212(A163602(n+2))` -/
def P1353032058841319557.Spec : Prop :=
  ∀ n, P1353032058841319557.a n = A361122 (n + 1)

end A361122

/-!
# A361123: 1 if n-th composite number A002808(n) is divisible by 3, otherwise 0.

The programs for A361123, the canonical program `A361123.P17185907231639651446` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361123 has offset 1).

The definition of A361123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361123.P17185907231639651446

`1-A361122(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A361123

/-- `1-A361122(n+1)` -/
def P17185907231639651446.Spec : Prop :=
  ∀ n, P17185907231639651446.a n = A361123 (n + 1)

theorem P17185907231639651446.correct : P17185907231639651446.Spec := by
  intro n
  simp only [A361123, Nat.add_sub_cancel]

end A361123

/-! ## A361123.P9164968144866159111

`char[A065855(3*n+5)]`
-/

namespace A361123.P9164968144866159111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (3 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A361123.P9164968144866159111

namespace A361123

/-- `char[A065855(3*n+5)]` -/
def P9164968144866159111.Spec : Prop :=
  ∀ n, (P9164968144866159111.a n : ℤ) = A361123 (n + 1)

end A361123

/-! ## A361123.P17402885048029584271

`val(gcd(3, Δ[A053767(n)]), 3)`
-/

namespace A361123.P17402885048029584271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd 3 (f1 (n + 1) - f1 n)) 3

end

end A361123.P17402885048029584271

namespace A361123

/-- `val(gcd(3, Δ[A053767(n)]), 3)` -/
def P17402885048029584271.Spec : Prop :=
  ∀ n, (P17402885048029584271.a n : ℤ) = A361123 (n + 1)

end A361123

/-! ## A361123.P8528836782258914704

`(A079696(n+1)%3)%2`
-/

namespace A361123.P8528836782258914704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A079696 (n + 1)) 3) 2

end

end A361123.P8528836782258914704

namespace A361123

/-- `(A079696(n+1)%3)%2` -/
def P8528836782258914704.Spec : Prop :=
  ∀ n, P8528836782258914704.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P6355908592991369083

`C(A072668(n+1), 2)%3`
-/

namespace A361123.P6355908592991369083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072668 (n + 1)).toNat 2 % 3

end

end A361123.P6355908592991369083

namespace A361123

/-- `C(A072668(n+1), 2)%3` -/
def P6355908592991369083.Spec : Prop :=
  ∀ n, (P6355908592991369083.a n : ℤ) = A361123 (n + 1)

end A361123

/-! ## A361123.P11516307910251357476

`Δ[ceil(A002808(n+1)/3)]`
-/

namespace A361123.P11516307910251357476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002808 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A361123.P11516307910251357476

namespace A361123

/-- `Δ[ceil(A002808(n+1)/3)]` -/
def P11516307910251357476.Spec : Prop :=
  ∀ n, P11516307910251357476.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P12632397226186309080

`((A018252(n+2)+1)%3)%2`
-/

namespace A361123.P12632397226186309080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A018252 (n + 2) + 1) 3) 2

end

end A361123.P12632397226186309080

namespace A361123

/-- `((A018252(n+2)+1)%3)%2` -/
def P12632397226186309080.Spec : Prop :=
  ∀ n, P12632397226186309080.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P882229753449472258

`A079978(A308375(n+1))`
-/

namespace A361123.P882229753449472258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A308375 (n + 1)).toNat

end

end A361123.P882229753449472258

namespace A361123

/-- `A079978(A308375(n+1))` -/
def P882229753449472258.Spec : Prop :=
  ∀ n, P882229753449472258.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P14397721394778244902

`A161757(n+3)%3`
-/

namespace A361123.P14397721394778244902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161757 (n + 3)) 3

end

end A361123.P14397721394778244902

namespace A361123

/-- `A161757(n+3)%3` -/
def P14397721394778244902.Spec : Prop :=
  ∀ n, P14397721394778244902.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P6867168123161624511

`A079978(A164028(n+1))`
-/

namespace A361123.P6867168123161624511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A164028 (n + 1)).toNat

end

end A361123.P6867168123161624511

namespace A361123

/-- `A079978(A164028(n+1))` -/
def P6867168123161624511.Spec : Prop :=
  ∀ n, P6867168123161624511.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P9309445653983005514

`A079978(A002808(n+1))`
-/

namespace A361123.P9309445653983005514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A002808 (n + 1)).toNat

end

end A361123.P9309445653983005514

namespace A361123

/-- `A079978(A002808(n+1))` -/
def P9309445653983005514.Spec : Prop :=
  ∀ n, P9309445653983005514.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P11947170524319630761

`A079978(A056653(n+1))`
-/

namespace A361123.P11947170524319630761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A056653 (n + 1)).toNat

end

end A361123.P11947170524319630761

namespace A361123

/-- `A079978(A056653(n+1))` -/
def P11947170524319630761.Spec : Prop :=
  ∀ n, P11947170524319630761.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P14427786865636391289

`A079978(A018252(n+2))`
-/

namespace A361123.P14427786865636391289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A018252 (n + 2)).toNat

end

end A361123.P14427786865636391289

namespace A361123

/-- `A079978(A018252(n+2))` -/
def P14427786865636391289.Spec : Prop :=
  ∀ n, P14427786865636391289.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P4536313536743468657

`A079978(A326776(n+2))`
-/

namespace A361123.P4536313536743468657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A326776 (n + 2)).toNat

end

end A361123.P4536313536743468657

namespace A361123

/-- `A079978(A326776(n+2))` -/
def P4536313536743468657.Spec : Prop :=
  ∀ n, P4536313536743468657.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P10011227377847930770

`1-A204418(A079696(n+1))`
-/

namespace A361123.P10011227377847930770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A204418 (A079696 (n + 1)).toNat

end

end A361123.P10011227377847930770

namespace A361123

/-- `1-A204418(A079696(n+1))` -/
def P10011227377847930770.Spec : Prop :=
  ∀ n, P10011227377847930770.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P7238429511959661336

`A079978(A282671(n+1))`
-/

namespace A361123.P7238429511959661336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A282671 (n + 1)).toNat

end

end A361123.P7238429511959661336

namespace A361123

/-- `A079978(A282671(n+1))` -/
def P7238429511959661336.Spec : Prop :=
  ∀ n, P7238429511959661336.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P8086577393332085619

`A079978(A139270(n+2))`
-/

namespace A361123.P8086577393332085619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A139270 (n + 2)).toNat

end

end A361123.P8086577393332085619

namespace A361123

/-- `A079978(A139270(n+2))` -/
def P8086577393332085619.Spec : Prop :=
  ∀ n, P8086577393332085619.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P12770663104711989049

`1-A141212(A163602(n+2))`
-/

namespace A361123.P12770663104711989049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A141212 (A163602 (n + 2)).toNat

end

end A361123.P12770663104711989049

namespace A361123

/-- `1-A141212(A163602(n+2))` -/
def P12770663104711989049.Spec : Prop :=
  ∀ n, P12770663104711989049.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P10153717967906920163

`1-A011558(A129401(n+1))`
-/

namespace A361123.P10153717967906920163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011558 (A129401 (n + 1)).toNat

end

end A361123.P10153717967906920163

namespace A361123

/-- `1-A011558(A129401(n+1))` -/
def P10153717967906920163.Spec : Prop :=
  ∀ n, P10153717967906920163.a n = A361123 (n + 1)

end A361123

/-! ## A361123.P5476868672529449748

`A131532(A166257(n+2))`
-/

namespace A361123.P5476868672529449748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131532 (A166257 (n + 2)).toNat

end

end A361123.P5476868672529449748

namespace A361123

/-- `A131532(A166257(n+2))` -/
def P5476868672529449748.Spec : Prop :=
  ∀ n, P5476868672529449748.a n = A361123 (n + 1)

end A361123

/-!
# A361124: Records in A361103.

The programs for A361124, there is no canonical definition to state claims against.
-/

/-! ## A361124.P13409613027575376390

`record[A361103(n)]`
-/

namespace A361124.P13409613027575376390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361124.P13409613027575376390

/-! ## A361124.P12678027097566392081

`A361103(A361125(n+1))`
-/

namespace A361124.P12678027097566392081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361103 (A361125 (n + 1)).toNat

end

end A361124.P12678027097566392081

/-!
# A361125: Indices of records in A361103.

The programs for A361125, there is no canonical definition to state claims against.
-/

/-! ## A361125.P14188765781848277011

`A085970(A361126(n+1))`
-/

namespace A361125.P14188765781848277011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (A361126 (n + 1)).toNat

end

end A361125.P14188765781848277011

/-! ## A361125.P7277579920481040867

`A361110(A361103(a(n-1)))` with `a(0)=0`
-/

namespace A361125.P7277579920481040867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A361110 (A361103 (a (n - 1)).toNat).toNat

end

end A361125.P7277579920481040867

/-! ## A361125.P8704891071207324616

`lt[n, A361110(A361103(n))]`
-/

namespace A361125.P8704891071207324616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361110 (A361103 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A361125.P8704891071207324616

/-! ## A361125.P518643208786284747

`lt[A361102(n+1), A361109(A361103(n))]`
-/

namespace A361125.P518643208786284747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361109 (A361103 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361125.P518643208786284747

/-! ## A361125.P16973673425600877005

`A361104(record[A361103(n)])-1`
-/

namespace A361125.P16973673425600877005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A361125.P16973673425600877005

/-! ## A361125.P16896002214979551588

`A361104(A361124(n+1))-1`
-/

namespace A361125.P16896002214979551588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361104 (A361124 (n + 1)).toNat - 1

end

end A361125.P16896002214979551588

/-!
# A361126: a(n) = A361102(A361125(n)).

The programs for A361126, there is no canonical definition to state claims against.
-/

/-! ## A361126.P8441803829530341919

`A361102(A361125(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361126.P8441803829530341919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A361125 (n + 1) + 1).toNat

end

end A361126.P8441803829530341919

/-! ## A361126.P13253414674469199376

`A360519(record[A361103(n)])`
-/

namespace A361126.P13253414674469199376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A361126.P13253414674469199376

/-! ## A361126.P2144806976432715822

`A360519(A361124(n+1))`
-/

namespace A361126.P2144806976432715822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (A361124 (n + 1)).toNat

end

end A361126.P2144806976432715822

/-! ## A361126.P7688728770949852220

`A360519(A361103(A361125(n+1)))`
-/

namespace A361126.P7688728770949852220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (A361103 (A361125 (n + 1)).toNat).toNat

end

end A361126.P7688728770949852220

/-!
# A361128: Let b = A360519; let Lg = gcd(b(n-1),b(n)), Rg = gcd(b(n),b(n+1)); let L(n) = prod_{primes p|Lg} p-part of b(n), R(n) = prod_{primes p|Rg} p-part of b(n), M(n) = b(n)/(L(n)*R(n)); sequence gives L(n).

The programs for A361128, there is no canonical definition to state claims against.
-/

/-! ## A361128.P4649466395438603570

`A360519(n+2)/(A361129(n+2)*A361130(n+2))`
-/

namespace A361128.P4649466395438603570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360519 (n + 2) : ℚ) / (A361129 (n + 2) * A361130 (n + 2) : ℚ)

end

end A361128.P4649466395438603570

/-! ## A361128.P5325249457409588027

`A361118(n+1)^A331591(A078539(n+2))`
-/

namespace A361128.P5325249457409588027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361118 (n + 1) : ℚ) ^ (A331591 (A078539 (n + 2)).toNat : ℤ)

end

end A361128.P5325249457409588027

/-! ## A361128.P1875103454260728799

`A361118(n+1)^A148461(A187783(n))`
-/

namespace A361128.P1875103454260728799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361118 (n + 1) : ℚ) ^ (A148461 (A187783 n).toNat : ℤ)

end

end A361128.P1875103454260728799

/-! ## A361128.P15279656029925993113

`A361118(n+1)^A326361(A090181(n))`
-/

namespace A361128.P15279656029925993113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361118 (n + 1) : ℚ) ^ (A326361 (A090181 n).toNat : ℤ)

end

end A361128.P15279656029925993113

/-! ## A361128.P7452122164830226834

`A361118(n+1)^A317086(A276532(n))`
-/

namespace A361128.P7452122164830226834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361118 (n + 1) : ℚ) ^ (A317086 (A276532 n).toNat : ℤ)

end

end A361128.P7452122164830226834

/-!
# A361129: Let b = A360519; let Lg = gcd(b(n-1),b(n)), Rg = gcd(b(n),b(n+1)); let L(n) = prod_{primes p|Lg} p-part of b(n), R(n) = prod_{primes p|Rg} p-part of b(n), M(n) = b(n)/(L(n)*R(n)); sequence gives M(n).

The programs for A361129, there is no canonical definition to state claims against.
-/

/-! ## A361129.P14218165091546142424

`A360519(n+2)/(A361128(n+2)*A361130(n+2))`
-/

namespace A361129.P14218165091546142424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360519 (n + 2) : ℚ) / (A361128 (n + 2) * A361130 (n + 2) : ℚ)

end

end A361129.P14218165091546142424

/-! ## A361129.P1266805911577896439

`gcd(A004767(n), A300015(A120293(3*n+4)))`
-/

namespace A361129.P1266805911577896439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004767 n) (A300015 (A120293 (3 * n + 4)).toNat)

end

end A361129.P1266805911577896439

/-! ## A361129.P15774358905480799085

`gcd(A073145(n), A266755(A049334(2*n+3)))`
-/

namespace A361129.P15774358905480799085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073145 n) (A266755 (A049334 (2 * n + 3)).toNat)

end

end A361129.P15774358905480799085

/-! ## A361129.P3802070012030155543

`gcd(A000978(A248101(n+1)), A342001(3*n+1))`
-/

namespace A361129.P3802070012030155543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000978 (A248101 (n + 1)).toNat) (A342001 (3 * n + 1))

end

end A361129.P3802070012030155543

/-! ## A361129.P16595128743985473182

`gcd(A000196(2*n), A377939(A105782(n)))`
-/

namespace A361129.P16595128743985473182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (2 * n)) (A377939 (A105782 n).toNat)

end

end A361129.P16595128743985473182

/-!
# A361130: Let b = A360519; let Lg = gcd(b(n-1),b(n)), Rg = gcd(b(n),b(n+1)); let L(n) = prod_{primes p|Lg} p-part of b(n), R(n) = prod_{primes p|Rg} p-part of b(n), M(n) = b(n)/(L(n)*R(n)); sequence gives R(n).

The programs for A361130, there is no canonical definition to state claims against.
-/

/-! ## A361130.P5255061067999754035

`A360519(n+2)/(A361128(n+2)*A361129(n+2))`
-/

namespace A361130.P5255061067999754035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360519 (n + 2) : ℚ) / (A361128 (n + 2) * A361129 (n + 2) : ℚ)

end

end A361130.P5255061067999754035

/-!
# A361132: Multiplicative with a(p^e) = e^4, p prime and e > 0.

The programs for A361132, the canonical program `A361132.P13495344161125318511` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361132 has offset 1).

The definition of A361132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361132.P13495344161125318511

`A005361(n+1)^4`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A361132

/-- `A005361(n+1)^4` -/
def P13495344161125318511.Spec : Prop :=
  ∀ n, P13495344161125318511.a n = A361132 (n + 1)

theorem P13495344161125318511.correct : P13495344161125318511.Spec := by
  intro n
  simp only [A361132, Nat.add_sub_cancel]

end A361132

/-! ## A361132.P7315888620674961606

`∏{e}[n+1, #^4]`
-/

namespace A361132.P7315888620674961606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 4

end

end A361132.P7315888620674961606

namespace A361132

/-- `∏{e}[n+1, #^4]` -/
def P7315888620674961606.Spec : Prop :=
  ∀ n, (P7315888620674961606.a n : ℤ) = A361132 (n + 1)

end A361132

/-! ## A361132.P424659825763432853

`∏{e}[n+1, #²]²`
-/

namespace A361132.P424659825763432853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2) ^ 2

end

end A361132.P424659825763432853

namespace A361132

/-- `∏{e}[n+1, #²]²` -/
def P424659825763432853.Spec : Prop :=
  ∀ n, (P424659825763432853.a n : ℤ) = A361132 (n + 1)

end A361132

/-! ## A361132.P5945020388705006845

`∏{e}[xor(n, -1), #]^4`
-/

namespace A361132.P5945020388705006845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 4

end

end A361132.P5945020388705006845

namespace A361132

/-- `∏{e}[xor(n, -1), #]^4` -/
def P5945020388705006845.Spec : Prop :=
  ∀ n, (P5945020388705006845.a n : ℤ) = A361132 (n + 1)

end A361132

/-! ## A361132.P9409024890539178250

`∏{e}[xor(n, -1), #]²²`
-/

namespace A361132.P9409024890539178250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2) ^ 2

end

end A361132.P9409024890539178250

namespace A361132

/-- `∏{e}[xor(n, -1), #]²²` -/
def P9409024890539178250.Spec : Prop :=
  ∀ n, (P9409024890539178250.a n : ℤ) = A361132 (n + 1)

end A361132

/-! ## A361132.P8718202223712782852

`(4^∑{e}[n+1, log2(#)])²`
-/

namespace A361132.P8718202223712782852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p : ℝ))) ^ 2

end

end A361132.P8718202223712782852

namespace A361132

/-- `(4^∑{e}[n+1, log2(#)])²` -/
def P8718202223712782852.Spec : Prop :=
  ∀ n, P8718202223712782852.a n = (A361132 (n + 1) : ℝ)

end A361132

/-! ## A361132.P2201835514967759073

`exp(∑{e}[n+1, log(#)])^4`
-/

namespace A361132.P2201835514967759073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (Nat.factorization (f1 n) p : ℝ)) ^ 4

end

end A361132.P2201835514967759073

namespace A361132

/-- `exp(∑{e}[n+1, log(#)])^4` -/
def P2201835514967759073.Spec : Prop :=
  ∀ n, P2201835514967759073.a n = (A361132 (n + 1) : ℝ)

end A361132

/-! ## A361132.P2167491242543035434

`exp(∑{e}[n+1, log(#)])²²`
-/

namespace A361132.P2167491242543035434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (Nat.factorization (f1 n) p : ℝ)) ^ 2) ^ 2

end

end A361132.P2167491242543035434

namespace A361132

/-- `exp(∑{e}[n+1, log(#)])²²` -/
def P2167491242543035434.Spec : Prop :=
  ∀ n, P2167491242543035434.a n = (A361132 (n + 1) : ℝ)

end A361132

/-! ## A361132.P18135959892032204242

`∏{e}[2*n-(n-1), #]^4`
-/

namespace A361132.P18135959892032204242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 4

end

end A361132.P18135959892032204242

namespace A361132

/-- `∏{e}[2*n-(n-1), #]^4` -/
def P18135959892032204242.Spec : Prop :=
  ∀ n, (P18135959892032204242.a n : ℤ) = A361132 (n + 1)

end A361132

/-! ## A361132.P12343275862869563835

`∏{p}[n+1, val(n+1, #)^4]`
-/

namespace A361132.P12343275862869563835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p ^ 4

end

end A361132.P12343275862869563835

namespace A361132

/-- `∏{p}[n+1, val(n+1, #)^4]` -/
def P12343275862869563835.Spec : Prop :=
  ∀ n, (P12343275862869563835.a n : ℤ) = A361132 (n + 1)

end A361132

/-! ## A361132.P1109496452077571557

`∏{e}[2*n-(n-1), #]²²`
-/

namespace A361132.P1109496452077571557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2) ^ 2

end

end A361132.P1109496452077571557

namespace A361132

/-- `∏{e}[2*n-(n-1), #]²²` -/
def P1109496452077571557.Spec : Prop :=
  ∀ n, (P1109496452077571557.a n : ℤ) = A361132 (n + 1)

end A361132

/-! ## A361132.P14716446418055132070

`∏{p}[n+1, val(n+1, #)²²]`
-/

namespace A361132.P14716446418055132070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p ^ 2) ^ 2

end

end A361132.P14716446418055132070

namespace A361132

/-- `∏{p}[n+1, val(n+1, #)²²]` -/
def P14716446418055132070.Spec : Prop :=
  ∀ n, (P14716446418055132070.a n : ℤ) = A361132 (n + 1)

end A361132

/-! ## A361132.P7518906770171436405

`A360969(n+1)²`
-/

namespace A361132.P7518906770171436405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360969 (n + 1) ^ 2

end

end A361132.P7518906770171436405

namespace A361132

/-- `A360969(n+1)²` -/
def P7518906770171436405.Spec : Prop :=
  ∀ n, P7518906770171436405.a n = A361132 (n + 1)

theorem P7518906770171436405.correct : P7518906770171436405.Spec := by
  intro n
  simp only [A361132, Nat.add_sub_cancel, A361132.P7518906770171436405.a, A361132.P13495344161125318511.a, A005361, A005361.P7238185687981551187.a, A360969, A360969.P9537499425783326170.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361132

/-! ## A361132.P6602512365494317720

`A303915(n+1)^4`
-/

namespace A361132.P6602512365494317720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303915 (n + 1) ^ 4

end

end A361132.P6602512365494317720

namespace A361132

/-- `A303915(n+1)^4` -/
def P6602512365494317720.Spec : Prop :=
  ∀ n, P6602512365494317720.a n = A361132 (n + 1)

end A361132

/-! ## A361132.P7359449388772319036

`A000583(∏{e}[n+1, #])`
-/

namespace A361132.P7359449388772319036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A361132.P7359449388772319036

namespace A361132

/-- `A000583(∏{e}[n+1, #])` -/
def P7359449388772319036.Spec : Prop :=
  ∀ n, P7359449388772319036.a n = A361132 (n + 1)

end A361132

/-! ## A361132.P2193087167398074584

`(A183094(n+1)+1)²²`
-/

namespace A361132.P2193087167398074584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A183094 (n + 1) + 1) ^ 2) ^ 2

end

end A361132.P2193087167398074584

namespace A361132

/-- `(A183094(n+1)+1)²²` -/
def P2193087167398074584.Spec : Prop :=
  ∀ n, P2193087167398074584.a n = A361132 (n + 1)

theorem P2193087167398074584.correct : P2193087167398074584.Spec := by
  intro n
  simp only [A361132, Nat.add_sub_cancel, A361132.P2193087167398074584.a, A361132.P13495344161125318511.a, A005361, A005361.P7238185687981551187.a, A183094, A183094.P2300528291682876645.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361132

/-! ## A361132.P11633665466684856054

`A000005((n+1)/∏{p}[n+1, #])^4`
-/

namespace A361132.P11633665466684856054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ 4

end

end A361132.P11633665466684856054

namespace A361132

/-- `A000005((n+1)/∏{p}[n+1, #])^4` -/
def P11633665466684856054.Spec : Prop :=
  ∀ n, P11633665466684856054.a n = A361132 (n + 1)

theorem P11633665466684856054.correct : P11633665466684856054.Spec := by
  intro n
  simp only [A361132, Nat.add_sub_cancel, A361132.P11633665466684856054.f1, A361132.P11633665466684856054.a, A361132.P13495344161125318511.a, A000005, A000005.P16091521709108585461.a, A005361, A005361.P7238185687981551187.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361132

/-! ## A361132.P16407812368747256539

`A000583(A005361(n+1))`
-/

namespace A361132.P16407812368747256539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A005361 (n + 1)).toNat

end

end A361132.P16407812368747256539

namespace A361132

/-- `A000583(A005361(n+1))` -/
def P16407812368747256539.Spec : Prop :=
  ∀ n, P16407812368747256539.a n = A361132 (n + 1)

end A361132

/-! ## A361132.P9990804526201747545

`A000290(A005361(n+1)²)`
-/

namespace A361132.P9990804526201747545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A005361 (n + 1) ^ 2).toNat

end

end A361132.P9990804526201747545

namespace A361132

/-- `A000290(A005361(n+1)²)` -/
def P9990804526201747545.Spec : Prop :=
  ∀ n, P9990804526201747545.a n = A361132 (n + 1)

end A361132

/-! ## A361132.P12525896489539869634

`A000290(A303915(n+1)²)`
-/

namespace A361132.P12525896489539869634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A303915 (n + 1) ^ 2).toNat

end

end A361132.P12525896489539869634

namespace A361132

/-- `A000290(A303915(n+1)²)` -/
def P12525896489539869634.Spec : Prop :=
  ∀ n, P12525896489539869634.a n = A361132 (n + 1)

end A361132

/-!
# A361134: a(1) = 1, a(2) = 2; for n >= 3, a(n) = (n-1)^3 - a(n-1) - a(n-2).

The programs for A361134, the canonical program `A361134.P12705334743844526528` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361134 has offset 1).

The definition of A361134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-a(n-1)-a(n-2)` (program `A361134.P12705334743844526528`, by `A361134.P12705334743844526528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361134.P12705334743844526528

`n^3-a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A361134

/-- `n^3-a(n-1)-a(n-2)` -/
def P12705334743844526528.Spec : Prop :=
  ∀ n, P12705334743844526528.a n = A361134 (n + 1)

theorem P12705334743844526528.correct : P12705334743844526528.Spec := by
  intro n
  simp only [A361134, Nat.add_sub_cancel]

end A361134

/-! ## A361134.P5101692048537255650

`(A242135(n+1)-6*cos(2*(n+1)*π/3)+2*sin(2*(n+1)*π/3)/sqrt(3))/3`
-/

namespace A361134.P5101692048537255650
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A242135 (n + 1) : ℝ) - 6 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + 2 * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3) / Real.sqrt (3 : ℝ)) / 3

end

end A361134.P5101692048537255650

namespace A361134

/-- `(A242135(n+1)-6*cos(2*(n+1)*π/3)+2*sin(2*(n+1)*π/3)/sqrt(3))/3` -/
def P5101692048537255650.Spec : Prop :=
  ∀ n, P5101692048537255650.a n = (A361134 (n + 1) : ℝ)

end A361134

/-! ## A361134.P8782220942656981760

`record[A131713(n)+2*C(n, 3)-floor(n/3)]`
-/

namespace A361134.P8782220942656981760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + ((2 * Nat.choose n 3 : ℤ) - ⌊(n : ℚ) / 3⌋)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361134.P8782220942656981760

namespace A361134

/-- `record[A131713(n)+2*C(n, 3)-floor(n/3)]` -/
def P8782220942656981760.Spec : Prop :=
  ∀ n, P8782220942656981760.a n = A361134 (n + 1)

end A361134

/-! ## A361134.P15547750301519607491

`record[A152728(n)+A131713(n)]`
-/

namespace A361134.P15547750301519607491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152728 n + A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361134.P15547750301519607491

namespace A361134

/-- `record[A152728(n)+A131713(n)]` -/
def P15547750301519607491.Spec : Prop :=
  ∀ n, P15547750301519607491.a n = A361134 (n + 1)

end A361134

/-! ## A361134.P14079374530103738389

`A152728(n+2)+A131713(n+2)`
-/

namespace A361134.P14079374530103738389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152728 (n + 2) + A131713 (n + 2)

end

end A361134.P14079374530103738389

namespace A361134

/-- `A152728(n+2)+A131713(n+2)` -/
def P14079374530103738389.Spec : Prop :=
  ∀ n, P14079374530103738389.a n = A361134 (n + 1)

end A361134

/-!
# A361135: The number of unlabeled connected fairly 4-regular multigraphs of order n, loops allowed.

The programs for A361135, there is no canonical definition to state claims against.
-/

/-! ## A361135.P18070264614778978943

`Δ[A011776(5^n)]+1`
-/

namespace A361135.P18070264614778978943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (5 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A361135.P18070264614778978943

/-!
# A361136: Numbers appearing on the upper face of a die as a result of its turning over the edge while it rolls along the square spiral of natural numbers.

The programs for A361136, there is no canonical definition to state claims against.
-/

/-! ## A361136.P3855459460794435673

`A361400(n+1)/(n+1)`
-/

namespace A361136.P3855459460794435673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361400 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A361136.P3855459460794435673

/-! ## A361136.P1549002000690692812

`A080577(A048988(n+1)*A261763(n))`
-/

namespace A361136.P1549002000690692812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (A048988 (n + 1) * A261763 n).toNat

end

end A361136.P1549002000690692812

/-!
# A361137: Number of rooted maps of genus 1/2 with n edges.

The programs for A361137, there is no canonical definition to state claims against.
-/

/-! ## A361137.P6746756703910104178

`A007137(n+1)+char[3]`
-/

namespace A361137.P6746756703910104178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007137 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A361137.P6746756703910104178

/-! ## A361137.P3669941104577809212

`A276404(3*n+2)+A007137(n+1)`
-/

namespace A361137.P3669941104577809212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (3 * n + 2) + A007137 (n + 1)

end

end A361137.P3669941104577809212

/-! ## A361137.P2508937818988030223

`A185708(2*floor(n/sqrt(5))+2+n)+A007137(n+1)`
-/

namespace A361137.P2508937818988030223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185708 (2 * ⌊(n : ℝ) / Real.sqrt (5 : ℝ)⌋ + 2 + (n : ℤ)).toNat + A007137 (n + 1)

end

end A361137.P2508937818988030223

/-! ## A361137.P7549180849331104195

`A010051(A006498(n))+A007137(n+1)`
-/

namespace A361137.P7549180849331104195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A006498 n).toNat + A007137 (n + 1)

end

end A361137.P7549180849331104195

/-! ## A361137.P8761426445585598080

`A010051(A080014(n))+A007137(n+1)`
-/

namespace A361137.P8761426445585598080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A080014 n).toNat + A007137 (n + 1)

end

end A361137.P8761426445585598080

/-!
# A361139: Number of rooted bipartite maps of genus 1/2 with n edges.

The programs for A361139, there is no canonical definition to state claims against.
-/

/-! ## A361139.P10231666323214180013

`A302391(A000079(n)*A052969(2*n))`
-/

namespace A361139.P10231666323214180013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302391 (A000079 n * A052969 (2 * n)).toNat

end

end A361139.P10231666323214180013

/-!
# A361140: Number of rooted bipartite maps of genus 1 with n edges.

The programs for A361140, there is no canonical definition to state claims against.
-/

/-! ## A361140.P5312963752327406842

`∑{d}[n+1, #]!%A245903(n+1)`
-/

namespace A361140.P5312963752327406842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (∑ d ∈ Nat.divisors (f1 n), d) : ℤ) (A245903 (n + 1))

end

end A361140.P5312963752327406842

/-!
# A361141: Number of rooted triangulations of genus 1 with 2n edges.

The programs for A361141, there is no canonical definition to state claims against.
-/

/-! ## A361141.P9147682684253986500

`A323279(n+1)+A269473(n+1)`
-/

namespace A361141.P9147682684253986500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323279 (n + 1) + A269473 (n + 1)

end

end A361141.P9147682684253986500

/-!
# A361142: E.g.f. satisfies A(x) = exp( x*A(x)^2/(1 - x*A(x)) ).

The programs for A361142, there is no canonical definition to state claims against.
-/

/-! ## A361142.P32641772817384160

`A020497(A155806(n))`
-/

namespace A361142.P32641772817384160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (A155806 n).toNat

end

end A361142.P32641772817384160

/-!
# A361143: E.g.f. satisfies A(x) = exp( x*A(x)^4/(1 - x*A(x)^2) ).

The programs for A361143, there is no canonical definition to state claims against.
-/

/-! ## A361143.P12279304154220105073

`A022344(A356440(n)-A001764(n))`
-/

namespace A361143.P12279304154220105073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022344 (A356440 n - A001764 n).toNat

end

end A361143.P12279304154220105073

/-!
# A361144: Lexicographically earliest sequence of positive integers such that the sums Sum_{i = 1+k*2^e..(k+1)*2^e} a(i) with k, e >= 0 are all distinct.

The programs for A361144, there is no canonical definition to state claims against.
-/

/-! ## A361144.P13254565841116098488

`A361227(A101925(n))`
-/

namespace A361144.P13254565841116098488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361227 (A101925 n).toNat

end

end A361144.P13254565841116098488

/-! ## A361144.P4322177314871309646

`A361227(A005187(n)+1)`
-/

namespace A361144.P4322177314871309646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361227 (A005187 n + 1).toNat

end

end A361144.P4322177314871309646

/-!
# A361145: Number of downwards peaks in row 2*n-1 of the Sierpinski triangle.

The programs for A361145, the canonical program `A361145.P6887436568620065037` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361145 has offset 1).

The definition of A361145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361145.P6887436568620065037

`A117973(n)-A048896(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361145

/-- `A117973(n)-A048896(n)` -/
def P6887436568620065037.Spec : Prop :=
  ∀ n, P6887436568620065037.a n = A361145 (n + 1)

theorem P6887436568620065037.correct : P6887436568620065037.Spec := by
  intro n
  simp only [A361145, Nat.add_sub_cancel]

end A361145

/-! ## A361145.P3092263616579353331

`Δ[A080978(n)]-A048896(n)`
-/

namespace A361145.P3092263616579353331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048896 n

end

end A361145.P3092263616579353331

namespace A361145

/-- `Δ[A080978(n)]-A048896(n)` -/
def P3092263616579353331.Spec : Prop :=
  ∀ n, P3092263616579353331.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P11129442026087090456

`A038712(n+1)*A048896(n)`
-/

namespace A361145.P11129442026087090456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A048896 n

end

end A361145.P11129442026087090456

namespace A361145

/-- `A038712(n+1)*A048896(n)` -/
def P11129442026087090456.Spec : Prop :=
  ∀ n, P11129442026087090456.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P7382342776532222596

`2*A001316(n)-A048896(n)`
-/

namespace A361145.P7382342776532222596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n - A048896 n

end

end A361145.P7382342776532222596

namespace A361145

/-- `2*A001316(n)-A048896(n)` -/
def P7382342776532222596.Spec : Prop :=
  ∀ n, P7382342776532222596.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P7467583668465245490

`(A160713(n)-A151930(n))/2`
-/

namespace A361145.P7467583668465245490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160713 n - A151930 n : ℚ) / 2

end

end A361145.P7467583668465245490

namespace A361145

/-- `(A160713(n)-A151930(n))/2` -/
def P7467583668465245490.Spec : Prop :=
  ∀ n, P7467583668465245490.a n = (A361145 (n + 1) : ℚ)

end A361145

/-! ## A361145.P8729423695199321450

`∑{d}[n+1, A060632(#-1)*A104117((n+1)/#)]`
-/

namespace A361145.P8729423695199321450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060632 (d - 1) * A104117 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361145.P8729423695199321450

namespace A361145

/-- `∑{d}[n+1, A060632(#-1)*A104117((n+1)/#)]` -/
def P8729423695199321450.Spec : Prop :=
  ∀ n, P8729423695199321450.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P12284177901503830261

`∑{d}[n+1, A151930(#-1)*A259346((n+1)/#)]`
-/

namespace A361145.P12284177901503830261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A151930 (d - 1) * A259346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361145.P12284177901503830261

namespace A361145

/-- `∑{d}[n+1, A151930(#-1)*A259346((n+1)/#)]` -/
def P12284177901503830261.Spec : Prop :=
  ∀ n, P12284177901503830261.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P8316223198455055688

`∑{d}[n+1, A001316(#-1)*A036987((n+1)/#-1)]`
-/

namespace A361145.P8316223198455055688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001316 (d - 1) * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A361145.P8316223198455055688

namespace A361145

/-- `∑{d}[n+1, A001316(#-1)*A036987((n+1)/#-1)]` -/
def P8316223198455055688.Spec : Prop :=
  ∀ n, P8316223198455055688.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P9278716841661109096

`∑{d}[n+1, A048896(#-1)*A099894((n+1)/#-1)]`
-/

namespace A361145.P9278716841661109096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048896 (d - 1) * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A361145.P9278716841661109096

namespace A361145

/-- `∑{d}[n+1, A048896(#-1)*A099894((n+1)/#-1)]` -/
def P9278716841661109096.Spec : Prop :=
  ∀ n, P9278716841661109096.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P11838457590684182386

`A001316(2*n+1)+A001057(A001316(n+1))`
-/

namespace A361145.P11838457590684182386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * n + 1) + A001057 (A001316 (n + 1)).toNat

end

end A361145.P11838457590684182386

namespace A361145

/-- `A001316(2*n+1)+A001057(A001316(n+1))` -/
def P11838457590684182386.Spec : Prop :=
  ∀ n, P11838457590684182386.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P1045706531184133697

`A001316(2*n+1)-A011782(A000120(n+1))`
-/

namespace A361145.P1045706531184133697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * n + 1) - A011782 (A000120 (n + 1)).toNat

end

end A361145.P1045706531184133697

namespace A361145

/-- `A001316(2*n+1)-A011782(A000120(n+1))` -/
def P1045706531184133697.Spec : Prop :=
  ∀ n, P1045706531184133697.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P2167922272991087528

`A233775(n+1)+A001316(n)-A001316(n+1)`
-/

namespace A361145.P2167922272991087528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 (n + 1) + (A001316 n - A001316 (n + 1))

end

end A361145.P2167922272991087528

namespace A361145

/-- `A233775(n+1)+A001316(n)-A001316(n+1)` -/
def P2167922272991087528.Spec : Prop :=
  ∀ n, P2167922272991087528.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P12568256166622061225

`A131136(n+1)-A048896(n)`
-/

namespace A361145.P12568256166622061225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 (n + 1) - A048896 n

end

end A361145.P12568256166622061225

namespace A361145

/-- `A131136(n+1)-A048896(n)` -/
def P12568256166622061225.Spec : Prop :=
  ∀ n, P12568256166622061225.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P14154583401497095989

`A038712(n+1)*A054429(A038573(n+1))`
-/

namespace A361145.P14154583401497095989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A054429 (A038573 (n + 1)).toNat

end

end A361145.P14154583401497095989

namespace A361145

/-- `A038712(n+1)*A054429(A038573(n+1))` -/
def P14154583401497095989.Spec : Prop :=
  ∀ n, P14154583401497095989.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P17035594522723741793

`A001316(2*n+1)-A001316(A088512(n+1))`
-/

namespace A361145.P17035594522723741793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * n + 1) - A001316 (A088512 (n + 1)).toNat

end

end A361145.P17035594522723741793

namespace A361145

/-- `A001316(2*n+1)-A001316(A088512(n+1))` -/
def P17035594522723741793.Spec : Prop :=
  ∀ n, P17035594522723741793.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P5556527602345271145

`A151787(n+2)+A117973(n)-A117973(n+1)`
-/

namespace A361145.P5556527602345271145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (n + 2) + (A117973 n - A117973 (n + 1))

end

end A361145.P5556527602345271145

namespace A361145

/-- `A151787(n+2)+A117973(n)-A117973(n+1)` -/
def P5556527602345271145.Spec : Prop :=
  ∀ n, P5556527602345271145.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P11601423728997804784

`A048896(n)*A135481(2*n+1)`
-/

namespace A361145.P11601423728997804784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A135481 (2 * n + 1)

end

end A361145.P11601423728997804784

namespace A361145

/-- `A048896(n)*A135481(2*n+1)` -/
def P11601423728997804784.Spec : Prop :=
  ∀ n, P11601423728997804784.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P18331225980068769709

`A011782(A000120(n+1))*A140670(2*(n+1))`
-/

namespace A361145.P18331225980068769709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000120 (n + 1)).toNat * A140670 (2 * (n + 1))

end

end A361145.P18331225980068769709

namespace A361145

/-- `A011782(A000120(n+1))*A140670(2*(n+1))` -/
def P18331225980068769709.Spec : Prop :=
  ∀ n, P18331225980068769709.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P3760701298768874993

`A048460(2*(n+1))-A151930(n)`
-/

namespace A361145.P3760701298768874993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048460 (2 * (n + 1)) - A151930 n

end

end A361145.P3760701298768874993

namespace A361145

/-- `A048460(2*(n+1))-A151930(n)` -/
def P3760701298768874993.Spec : Prop :=
  ∀ n, P3760701298768874993.a n = A361145 (n + 1)

end A361145

/-! ## A361145.P9728177789268341298

`A048896(n)-A151930(2*n+1)`
-/

namespace A361145.P9728177789268341298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n - A151930 (2 * n + 1)

end

end A361145.P9728177789268341298

namespace A361145

/-- `A048896(n)-A151930(2*n+1)` -/
def P9728177789268341298.Spec : Prop :=
  ∀ n, P9728177789268341298.a n = A361145 (n + 1)

end A361145

/-!
# A361147: a(n) = sigma(n)^3.

The programs for A361147, the canonical program `A361147.P6076056491520147052` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361147 has offset 1).

The definition of A361147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)^3` (program `A361147.P6076056491520147052`, by `A361147.P6076056491520147052.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361147.P6076056491520147052

`A000203(n+1)^3`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A361147

/-- `A000203(n+1)^3` -/
def P6076056491520147052.Spec : Prop :=
  ∀ n, P6076056491520147052.a n = A361147 (n + 1)

theorem P6076056491520147052.correct : P6076056491520147052.Spec := by
  intro n
  simp only [A361147, Nat.add_sub_cancel]

end A361147

/-! ## A361147.P4691836893654200219

`A000578(A000203(n+1))`
-/

namespace A361147.P4691836893654200219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000203 (n + 1)).toNat

end

end A361147.P4691836893654200219

namespace A361147

/-- `A000578(A000203(n+1))` -/
def P4691836893654200219.Spec : Prop :=
  ∀ n, P4691836893654200219.a n = A361147 (n + 1)

end A361147

/-! ## A361147.P12209708826106839724

`∑{d}[n+1, #]^3`
-/

namespace A361147.P12209708826106839724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ 3

end

end A361147.P12209708826106839724

namespace A361147

/-- `∑{d}[n+1, #]^3` -/
def P12209708826106839724.Spec : Prop :=
  ∀ n, (P12209708826106839724.a n : ℤ) = A361147 (n + 1)

theorem P12209708826106839724.correct : P12209708826106839724.Spec := by
  intro n
  simp only [A361147, Nat.add_sub_cancel, A361147.P12209708826106839724.f1, A361147.P12209708826106839724.a, A361147.P6076056491520147052.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361147

/-! ## A361147.P6974405055350725716

`root(∑{d}[n+1, #], 1/3)`
-/

namespace A361147.P6974405055350725716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A361147.P6974405055350725716

namespace A361147

/-- `root(∑{d}[n+1, #], 1/3)` -/
def P6974405055350725716.Spec : Prop :=
  ∀ n, P6974405055350725716.a n = (A361147 (n + 1) : ℝ)

end A361147

/-! ## A361147.P6199904835936511926

`exp(3*log(∑{d}[n+1, #]))`
-/

namespace A361147.P6199904835936511926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (3 * Real.log ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ))

end

end A361147.P6199904835936511926

namespace A361147

/-- `exp(3*log(∑{d}[n+1, #]))` -/
def P6199904835936511926.Spec : Prop :=
  ∀ n, P6199904835936511926.a n = (A361147 (n + 1) : ℝ)

end A361147

/-! ## A361147.P9508792058465338279

`∑{d}[n+1, #]²*∑{d}[n+1, #]`
-/

namespace A361147.P9508792058465338279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ 2 * (∑ d ∈ Nat.divisors (f2 n), d)

end

end A361147.P9508792058465338279

namespace A361147

/-- `∑{d}[n+1, #]²*∑{d}[n+1, #]` -/
def P9508792058465338279.Spec : Prop :=
  ∀ n, (P9508792058465338279.a n : ℤ) = A361147 (n + 1)

theorem P9508792058465338279.correct : P9508792058465338279.Spec := by
  intro n
  simp only [A361147, Nat.add_sub_cancel, A361147.P9508792058465338279.f1, A361147.P9508792058465338279.f2, A361147.P9508792058465338279.a, A361147.P6076056491520147052.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361147

/-! ## A361147.P5324022330958187847

`Δ[A160664(n)]^3`
-/

namespace A361147.P5324022330958187847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A361147.P5324022330958187847

namespace A361147

/-- `Δ[A160664(n)]^3` -/
def P5324022330958187847.Spec : Prop :=
  ∀ n, P5324022330958187847.a n = A361147 (n + 1)

end A361147

/-! ## A361147.P18412570190064265121

`floor(sqrt(A259369(n+1)))`
-/

namespace A361147.P18412570190064265121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A259369 (n + 1))

end

end A361147.P18412570190064265121

namespace A361147

/-- `floor(sqrt(A259369(n+1)))` -/
def P18412570190064265121.Spec : Prop :=
  ∀ n, P18412570190064265121.a n = A361147 (n + 1)

end A361147

/-! ## A361147.P11469302407535970473

`A245092(Δ[n²])^3`
-/

namespace A361147.P11469302407535970473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 3

end

end A361147.P11469302407535970473

namespace A361147

/-- `A245092(Δ[n²])^3` -/
def P11469302407535970473.Spec : Prop :=
  ∀ n, P11469302407535970473.a n = A361147 (n + 1)

end A361147

/-! ## A361147.P10148043412457544178

`sqrt(A072861(n+1)^3)`
-/

namespace A361147.P10148043412457544178
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) ^ 3 : ℝ)

end

end A361147.P10148043412457544178

namespace A361147

/-- `sqrt(A072861(n+1)^3)` -/
def P10148043412457544178.Spec : Prop :=
  ∀ n, P10148043412457544178.a n = (A361147 (n + 1) : ℝ)

end A361147

/-! ## A361147.P15764785414828065141

`abs((-A000203(2*n-(n-1)))^3)`
-/

namespace A361147.P15764785414828065141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) ^ 3|

end

end A361147.P15764785414828065141

namespace A361147

/-- `abs((-A000203(2*n-(n-1)))^3)` -/
def P15764785414828065141.Spec : Prop :=
  ∀ n, P15764785414828065141.a n = A361147 (n + 1)

end A361147

/-! ## A361147.P17430149214119606129

`A000203(n+1)*A072861(n+1)`
-/

namespace A361147.P17430149214119606129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A072861 (n + 1)

end

end A361147.P17430149214119606129

namespace A361147

/-- `A000203(n+1)*A072861(n+1)` -/
def P17430149214119606129.Spec : Prop :=
  ∀ n, P17430149214119606129.a n = A361147 (n + 1)

theorem P17430149214119606129.correct : P17430149214119606129.Spec := by
  intro n
  simp only [A361147, Nat.add_sub_cancel, A361147.P17430149214119606129.a, A361147.P6076056491520147052.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072861, A072861.P7379814568350881994.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361147

/-! ## A361147.P7886382530627849200

`A361179(n+1)/A000203(n+1)`
-/

namespace A361147.P7886382530627849200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361179 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A361147.P7886382530627849200

namespace A361147

/-- `A361179(n+1)/A000203(n+1)` -/
def P7886382530627849200.Spec : Prop :=
  ∀ n, P7886382530627849200.a n = (A361147 (n + 1) : ℚ)

end A361147

/-! ## A361147.P7320345285892038960

`A259251(n+1)%A259308(n+1)`
-/

namespace A361147.P7320345285892038960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259251 (n + 1)) (A259308 (n + 1))

end

end A361147.P7320345285892038960

namespace A361147

/-- `A259251(n+1)%A259308(n+1)` -/
def P7320345285892038960.Spec : Prop :=
  ∀ n, P7320345285892038960.a n = A361147 (n + 1)

end A361147

/-! ## A361147.P14528269340055549039

`A000203(n+1)²*Δ[A160664(n)]`
-/

namespace A361147.P14528269340055549039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) ^ 2 * (f1 (n + 1) - f1 n)

end

end A361147.P14528269340055549039

namespace A361147

/-- `A000203(n+1)²*Δ[A160664(n)]` -/
def P14528269340055549039.Spec : Prop :=
  ∀ n, P14528269340055549039.a n = A361147 (n + 1)

end A361147

/-! ## A361147.P6488667804165750911

`A143348(n+1)²*A000203(n+1)`
-/

namespace A361147.P6488667804165750911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1) ^ 2 * A000203 (n + 1)

end

end A361147.P6488667804165750911

namespace A361147

/-- `A143348(n+1)²*A000203(n+1)` -/
def P6488667804165750911.Spec : Prop :=
  ∀ n, P6488667804165750911.a n = A361147 (n + 1)

end A361147

/-! ## A361147.P5716843756099455835

`(A088580(n+1)-1)*A072861(n+1)`
-/

namespace A361147.P5716843756099455835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A072861 (n + 1)

end

end A361147.P5716843756099455835

namespace A361147

/-- `(A088580(n+1)-1)*A072861(n+1)` -/
def P5716843756099455835.Spec : Prop :=
  ∀ n, P5716843756099455835.a n = A361147 (n + 1)

theorem P5716843756099455835.correct : P5716843756099455835.Spec := by
  intro n
  simp only [A361147, Nat.add_sub_cancel, A361147.P5716843756099455835.a, A361147.P6076056491520147052.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072861, A072861.P7379814568350881994.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361147

/-! ## A361147.P17837109129661235399

`(A258974(n+1)-1)*A000203(n+1)`
-/

namespace A361147.P17837109129661235399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A258974 (n + 1) - 1) * A000203 (n + 1)

end

end A361147.P17837109129661235399

namespace A361147

/-- `(A258974(n+1)-1)*A000203(n+1)` -/
def P17837109129661235399.Spec : Prop :=
  ∀ n, P17837109129661235399.a n = A361147 (n + 1)

theorem P17837109129661235399.correct : P17837109129661235399.Spec := by
  intro n
  simp only [A361147, Nat.add_sub_cancel, A361147.P17837109129661235399.a, A361147.P6076056491520147052.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A258974, A258974.P4466533170833626338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361147

/-! ## A361147.P957723353431517748

`(A259308(n+1)-1)/A000203(n+1)`
-/

namespace A361147.P957723353431517748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259308 (n + 1) - 1 : ℚ) / (A000203 (n + 1) : ℚ)

end

end A361147.P957723353431517748

namespace A361147

/-- `(A259308(n+1)-1)/A000203(n+1)` -/
def P957723353431517748.Spec : Prop :=
  ∀ n, P957723353431517748.a n = (A361147 (n + 1) : ℚ)

end A361147

/-! ## A361147.P15707022396150225214

`A072861(n+1)/2*A074400(n+1)`
-/

namespace A361147.P15707022396150225214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072861 (n + 1) : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A361147.P15707022396150225214

namespace A361147

/-- `A072861(n+1)/2*A074400(n+1)` -/
def P15707022396150225214.Spec : Prop :=
  ∀ n, P15707022396150225214.a n = (A361147 (n + 1) : ℚ)

theorem P15707022396150225214.correct : P15707022396150225214.Spec := by
  intro n
  simp only [A361147, Nat.add_sub_cancel, A361147.P15707022396150225214.a, A361147.P6076056491520147052.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072861, A072861.P7379814568350881994.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361147

/-!
# A361148: a(n) = phi(n)^4.

The programs for A361148, the canonical program `A361148.P11789135483042854749` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361148 has offset 1).

The definition of A361148 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A361148.P11789135483042854749

`A000010(n+1)^4`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361148

/-- `A000010(n+1)^4` -/
def P11789135483042854749.Spec : Prop :=
  ∀ n, P11789135483042854749.a n = A361148 (n + 1)

theorem P11789135483042854749.correct : P11789135483042854749.Spec := by
  intro n
  simp only [A361148, Nat.add_sub_cancel]

end A361148

/-! ## A361148.P3311509138277404003

`A127473(n+1)²`
-/

namespace A361148.P3311509138277404003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1) ^ 2

end

end A361148.P3311509138277404003

namespace A361148

/-- `A127473(n+1)²` -/
def P3311509138277404003.Spec : Prop :=
  ∀ n, P3311509138277404003.a n = A361148 (n + 1)

theorem P3311509138277404003.correct : P3311509138277404003.Spec := by
  intro n
  simp only [A361148, Nat.add_sub_cancel, A361148.P3311509138277404003.a, A361148.P11789135483042854749.a, A000010, A000010.P4673923239450215316.a, A127473, A127473.P9698007400369304439.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A361148

/-! ## A361148.P12126461362921858622

`Δ[A002088(n)]^4`
-/

namespace A361148.P12126461362921858622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A361148.P12126461362921858622

namespace A361148

/-- `Δ[A002088(n)]^4` -/
def P12126461362921858622.Spec : Prop :=
  ∀ n, P12126461362921858622.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P4580923242916188643

`Δ[A005728(n)]^4`
-/

namespace A361148.P4580923242916188643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A361148.P4580923242916188643

namespace A361148

/-- `Δ[A005728(n)]^4` -/
def P4580923242916188643.Spec : Prop :=
  ∀ n, P4580923242916188643.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P11997387026738742793

`A349137(Δ[n²])²²`
-/

namespace A361148.P11997387026738742793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A361148.P11997387026738742793

namespace A361148

/-- `A349137(Δ[n²])²²` -/
def P11997387026738742793.Spec : Prop :=
  ∀ n, P11997387026738742793.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P11246993122409803102

`A349137(2*n+1)^4`
-/

namespace A361148.P11246993122409803102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) ^ 4

end

end A361148.P11246993122409803102

namespace A361148

/-- `A349137(2*n+1)^4` -/
def P11246993122409803102.Spec : Prop :=
  ∀ n, P11246993122409803102.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P4371651905759314154

`(A109606(n+1)+1)²²`
-/

namespace A361148.P4371651905759314154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A109606 (n + 1) + 1) ^ 2) ^ 2

end

end A361148.P4371651905759314154

namespace A361148

/-- `(A109606(n+1)+1)²²` -/
def P4371651905759314154.Spec : Prop :=
  ∀ n, P4371651905759314154.a n = A361148 (n + 1)

theorem P4371651905759314154.correct : P4371651905759314154.Spec := by
  intro n
  simp only [A361148, Nat.add_sub_cancel, A361148.P4371651905759314154.a, A361148.P11789135483042854749.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A361148

/-! ## A361148.P17533468254522048669

`(1-A039649(n+1))²²`
-/

namespace A361148.P17533468254522048669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A039649 (n + 1)) ^ 2) ^ 2

end

end A361148.P17533468254522048669

namespace A361148

/-- `(1-A039649(n+1))²²` -/
def P17533468254522048669.Spec : Prop :=
  ∀ n, P17533468254522048669.a n = A361148 (n + 1)

theorem P17533468254522048669.correct : P17533468254522048669.Spec := by
  intro n
  simp only [A361148, Nat.add_sub_cancel, A361148.P17533468254522048669.a, A361148.P11789135483042854749.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A361148

/-! ## A361148.P8159052487606829216

`A000010(lcm(2, n+1))²²`
-/

namespace A361148.P8159052487606829216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.lcm 2 (n + 1)) ^ 2) ^ 2

end

end A361148.P8159052487606829216

namespace A361148

/-- `A000010(lcm(2, n+1))²²` -/
def P8159052487606829216.Spec : Prop :=
  ∀ n, P8159052487606829216.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P12385481289717059771

`(A219428(n+1)-n)²²`
-/

namespace A361148.P12385481289717059771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A219428 (n + 1) - (n : ℤ)) ^ 2) ^ 2

end

end A361148.P12385481289717059771

namespace A361148

/-- `(A219428(n+1)-n)²²` -/
def P12385481289717059771.Spec : Prop :=
  ∀ n, P12385481289717059771.a n = A361148 (n + 1)

theorem P12385481289717059771.correct : P12385481289717059771.Spec := by
  intro n
  simp only [A361148, Nat.add_sub_cancel, A361148.P12385481289717059771.a, A361148.P11789135483042854749.a, A000010, A000010.P4673923239450215316.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A361148

/-! ## A361148.P4282212068778353301

`A000010(C(n+1, n))²²`
-/

namespace A361148.P4282212068778353301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.choose (n + 1) n) ^ 2) ^ 2

end

end A361148.P4282212068778353301

namespace A361148

/-- `A000010(C(n+1, n))²²` -/
def P4282212068778353301.Spec : Prop :=
  ∀ n, P4282212068778353301.a n = A361148 (n + 1)

theorem P4282212068778353301.correct : P4282212068778353301.Spec := by
  intro n
  simp only [A361148, Nat.add_sub_cancel, A361148.P4282212068778353301.a, A361148.P11789135483042854749.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A361148

/-! ## A361148.P15961376050358305981

`A000010(-xor(n, -1))²²`
-/

namespace A361148.P15961376050358305981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (-Int.xor (n : ℤ) (-1)).toNat ^ 2) ^ 2

end

end A361148.P15961376050358305981

namespace A361148

/-- `A000010(-xor(n, -1))²²` -/
def P15961376050358305981.Spec : Prop :=
  ∀ n, P15961376050358305981.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P8865387955558570398

`A000010(Δ[n²]-n)²²`
-/

namespace A361148.P8865387955558570398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2) ^ 2

end

end A361148.P8865387955558570398

namespace A361148

/-- `A000010(Δ[n²]-n)²²` -/
def P8865387955558570398.Spec : Prop :=
  ∀ n, P8865387955558570398.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P16350547340512437014

`(A002618(n+1)/(n+1))²²`
-/

namespace A361148.P16350547340512437014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A002618 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2) ^ 2

end

end A361148.P16350547340512437014

namespace A361148

/-- `(A002618(n+1)/(n+1))²²` -/
def P16350547340512437014.Spec : Prop :=
  ∀ n, P16350547340512437014.a n = (A361148 (n + 1) : ℚ)

end A361148

/-! ## A361148.P17185224037335051339

`(-A000010(2*n-(n-1)))^4`
-/

namespace A361148.P17185224037335051339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) ^ 4

end

end A361148.P17185224037335051339

namespace A361148

/-- `(-A000010(2*n-(n-1)))^4` -/
def P17185224037335051339.Spec : Prop :=
  ∀ n, P17185224037335051339.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P13973167176469572019

`∑{d}[n+1, (n+1)/#*A008683(#)]^4`
-/

namespace A361148.P13973167176469572019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ)) ^ 4

end

end A361148.P13973167176469572019

namespace A361148

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]^4` -/
def P13973167176469572019.Spec : Prop :=
  ∀ n, P13973167176469572019.a n = (A361148 (n + 1) : ℚ)

end A361148

/-! ## A361148.P11726647771040456267

`A000583(A000010(n+1))`
-/

namespace A361148.P11726647771040456267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000010 (n + 1)).toNat

end

end A361148.P11726647771040456267

namespace A361148

/-- `A000583(A000010(n+1))` -/
def P11726647771040456267.Spec : Prop :=
  ∀ n, P11726647771040456267.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P18166264125991450833

`A082953(A015126(n+1))²`
-/

namespace A361148.P18166264125991450833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082953 (A015126 (n + 1)).toNat ^ 2

end

end A361148.P18166264125991450833

namespace A361148

/-- `A082953(A015126(n+1))²` -/
def P18166264125991450833.Spec : Prop :=
  ∀ n, P18166264125991450833.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P6167263379252065337

`A081345(A109606(n+1))²`
-/

namespace A361148.P6167263379252065337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 (A109606 (n + 1)).toNat ^ 2

end

end A361148.P6167263379252065337

namespace A361148

/-- `A081345(A109606(n+1))²` -/
def P6167263379252065337.Spec : Prop :=
  ∀ n, P6167263379252065337.a n = A361148 (n + 1)

end A361148

/-! ## A361148.P8240261324951447739

`A174595(A039649(n+1))²`
-/

namespace A361148.P8240261324951447739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174595 (A039649 (n + 1)).toNat ^ 2

end

end A361148.P8240261324951447739

namespace A361148

/-- `A174595(A039649(n+1))²` -/
def P8240261324951447739.Spec : Prop :=
  ∀ n, P8240261324951447739.a n = A361148 (n + 1)

end A361148

/-!
# A361149: Number of chordless cycles in the n-hypercube graph Q_n.

The programs for A361149, there is no canonical definition to state claims against.
-/

/-! ## A361149.P926883879499572022

`A329815(∏[C(n, floor(n/2))])`
-/

namespace A361149.P926883879499572022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329815 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A361149.P926883879499572022

/-!
# A361151: a(n) = K(n-1) + K(n) + K(n+1), where K(n) = A341711(floor(n/2)).

The programs for A361151, there is no canonical definition to state claims against.
-/

/-! ## A361151.P14975268309154262698

`A360520(n+1)-Δ[A120963(n)]`
-/

namespace A361151.P14975268309154262698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360520 (n + 1) - (f1 (n + 1) - f1 n)

end

end A361151.P14975268309154262698

/-! ## A361151.P3671765594784490257

`A360520(n+1)-A347428(n+1)`
-/

namespace A361151.P3671765594784490257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360520 (n + 1) - A347428 (n + 1)

end

end A361151.P3671765594784490257

/-! ## A361151.P6887154920981146033

`A341711(A004526(n+1))+A120963(n)`
-/

namespace A361151.P6887154920981146033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341711 (A004526 (n + 1)).toNat + A120963 n

end

end A361151.P6887154920981146033

/-! ## A361151.P7761170494333165709

`A360520(n+1)+A120963(n)-A120963(n+1)`
-/

namespace A361151.P7761170494333165709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360520 (n + 1) + (A120963 n - A120963 (n + 1))

end

end A361151.P7761170494333165709

/-!
# A361152: a(n) = (A051894(n) - 1)/2.

The programs for A361152, there is no canonical definition to state claims against.
-/

/-! ## A361152.P4433117118091574251

`(A051894(n)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361152.P4433117118091574251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051894 n - 1 : ℚ) / 2

end

end A361152.P4433117118091574251

/-! ## A361152.P1055255911236192621

`∑[floor(A120963(n)/2)]`
-/

namespace A361152.P1055255911236192621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120963 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361152.P1055255911236192621

/-! ## A361152.P2205032866479988655

`A341710(n)+a(n-1)` with `a(0)=0`
-/

namespace A361152.P2205032866479988655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A341710 n + a (n - 1)

end

end A361152.P2205032866479988655

/-! ## A361152.P7728012303978288134

`∑[A341710(A028310(n))]-1`
-/

namespace A361152.P7728012303978288134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341710 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A361152.P7728012303978288134

/-! ## A361152.P12924813058119844422

`∑[A341710(n+1)]-A341710(n+1)`
-/

namespace A361152.P12924813058119844422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A341710 (n + 1)

end

end A361152.P12924813058119844422

/-! ## A361152.P2201992066041281353

`floor(A051894(n)/2)`
-/

namespace A361152.P2201992066041281353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051894 n : ℚ) / 2⌋

end

end A361152.P2201992066041281353

/-! ## A361152.P3004659835221798207

`∑[A120963(abs(1-n)+1)]/2-3`
-/

namespace A361152.P3004659835221798207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120963 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2 - 3

end

end A361152.P3004659835221798207

/-!
# A361154: Consider the square grid with cells {(x,y), x, y >= 0}; label the cells by downwards antidiagonals with nonnegative integers so that cells which are a knight's move apart have different labels; always choose smallest possible label.

The programs for A361154, there is no canonical definition to state claims against.
-/

/-! ## A361154.P902750605255322911

`A188170(A225486(3*n+1)+A161893(3*n+2))`
-/

namespace A361154.P902750605255322911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (A225486 (3 * n + 1) + A161893 (3 * n + 2)).toNat

end

end A361154.P902750605255322911

/-! ## A361154.P8980085855959643356

`A007814(A001248(n+5)-A223716(n+1))`
-/

namespace A361154.P8980085855959643356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A001248 (n + 5) - A223716 (n + 1)).toNat

end

end A361154.P8980085855959643356

/-! ## A361154.P14309169153623297396

`A000201(A184029(n+1))%A317533(A322630(n+1))`
-/

namespace A361154.P14309169153623297396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000201 (A184029 (n + 1)).toNat) (A317533 (A322630 (n + 1)).toNat)

end

end A361154.P14309169153623297396

/-! ## A361154.P15004773135776638398

`A096681(3*n+5)%A128428(A003229(n))`
-/

namespace A361154.P15004773135776638398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096681 (3 * n + 5)) (A128428 (A003229 n).toNat)

end

end A361154.P15004773135776638398

/-! ## A361154.P14080850351403388445

`A363805(A207960(n+1)+A207500(n+1)%A029873(n))`
-/

namespace A361154.P14080850351403388445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (A207960 (n + 1) + Int.tmod (A207500 (n + 1)) (A029873 n)).toNat

end

end A361154.P14080850351403388445

/-!
# A361155: Discriminants of gothic Teichmuller curves.

The programs for A361155, there is no canonical definition to state claims against.
-/

/-! ## A361155.P17877563937638578226

`eq[A110243(n), A133624(n+1)]`
-/

namespace A361155.P17877563937638578226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110243 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361155.P17877563937638578226

/-! ## A361155.P4415307709192026841

`∩[A361160(n+1), A032766(n)]`
-/

namespace A361155.P4415307709192026841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361155.P4415307709192026841

/-! ## A361155.P9761077913867230912

`∩[A361160(n+1), A112652(n)]`
-/

namespace A361155.P9761077913867230912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361155.P9761077913867230912

/-! ## A361155.P17880754996603589269

`∩[A330176(n+1), A361160(n+1)]`
-/

namespace A361155.P17880754996603589269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361155.P17880754996603589269

/-!
# A361156: Number of ideals of norm 6 in the order O_D associated with the Teichmuller curve of discriminant D = A361155(n).

The programs for A361156, there is no canonical definition to state claims against.
-/

/-! ## A361156.P8517364559500680410

`gcd(4, ∑[A118474(n+2)])`
-/

namespace A361156.P8517364559500680410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118474 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361156.P8517364559500680410

/-! ## A361156.P16883993448631906832

`A373989(A086553(n))`
-/

namespace A361156.P16883993448631906832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373989 (A086553 n).toNat

end

end A361156.P16883993448631906832

/-! ## A361156.P12668127468909323506

`A397173(A001953(n+1))`
-/

namespace A361156.P12668127468909323506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397173 (A001953 (n + 1)).toNat

end

end A361156.P12668127468909323506

/-! ## A361156.P14272667537616764919

`A322976(A077337(n+1))`
-/

namespace A361156.P14272667537616764919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322976 (A077337 (n + 1)).toNat

end

end A361156.P14272667537616764919

/-! ## A361156.P6989884407049475283

`A322976(A093501(n+1))`
-/

namespace A361156.P6989884407049475283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322976 (A093501 (n + 1)).toNat

end

end A361156.P6989884407049475283

/-!
# A361158: Number of elliptic points of order 2 in Weierstrass curve with discriminant A079896(n) in moduli space M_2 of compact Riemann surfaces of genus 2.

The programs for A361158, there is no canonical definition to state claims against.
-/

/-! ## A361158.P13157486080976367335

`A018194(A018168(n))-A079944(n)`
-/

namespace A361158.P13157486080976367335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018194 (A018168 n).toNat - A079944 n

end

end A361158.P13157486080976367335

/-! ## A361158.P3768723326120568913

`A333253(A247750(3*n+4))+A008683(2*n+3)`
-/

namespace A361158.P3768723326120568913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333253 (A247750 (3 * n + 4)).toNat + A008683 (2 * n + 3)

end

end A361158.P3768723326120568913

/-! ## A361158.P1768083581582333350

`A328620(A000040(n+1)*A177244(2*n+3))`
-/

namespace A361158.P1768083581582333350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A000040 (n + 1) * A177244 (2 * n + 3)).toNat

end

end A361158.P1768083581582333350

/-!
# A361160: Discriminants of Weierstrass curves in moduli space M_3 of compact Riemann surfaces of genus 3.

The programs for A361160, the canonical program `A361160.P6338473833215483561` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361160 has offset 1).

The definition of A361160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9836 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361160.P6338473833215483561

`filter[A047462(n+2), A049240(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A361160

/-- `filter[A047462(n+2), A049240(#)]` -/
def P6338473833215483561.Spec : Prop :=
  ∀ n, P6338473833215483561.a n = A361160 (n + 1)

theorem P6338473833215483561.correct : P6338473833215483561.Spec := by
  intro n
  simp only [A361160, Nat.add_sub_cancel]

end A361160

/-! ## A361160.P889154835298917293

`∩[A047462(n+1), A079896(n+1)]`
-/

namespace A361160.P889154835298917293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P889154835298917293

namespace A361160

/-- `∩[A047462(n+1), A079896(n+1)]` -/
def P889154835298917293.Spec : Prop :=
  ∀ n, (P889154835298917293.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P14307828824271932732

`∩[A079896(n+1), A003485(n)]`
-/

namespace A361160.P14307828824271932732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P14307828824271932732

namespace A361160

/-- `∩[A079896(n+1), A003485(n)]` -/
def P14307828824271932732.Spec : Prop :=
  ∀ n, (P14307828824271932732.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P2289031074281787090

`∩[A074231(n+1), A079896(n+1)]`
-/

namespace A361160.P2289031074281787090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P2289031074281787090

namespace A361160

/-- `∩[A074231(n+1), A079896(n+1)]` -/
def P2289031074281787090.Spec : Prop :=
  ∀ n, (P2289031074281787090.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P8188771421826649577

`∩[A047409(n+1), A079896(n+1)]`
-/

namespace A361160.P8188771421826649577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P8188771421826649577

namespace A361160

/-- `∩[A047409(n+1), A079896(n+1)]` -/
def P8188771421826649577.Spec : Prop :=
  ∀ n, (P8188771421826649577.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P11564908422337968844

`∩[A047460(n+1), A079896(n+1)]`
-/

namespace A361160.P11564908422337968844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P11564908422337968844

namespace A361160

/-- `∩[A047460(n+1), A079896(n+1)]` -/
def P11564908422337968844.Spec : Prop :=
  ∀ n, (P11564908422337968844.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P3445073634553471984

`∩[A047466(n+1), A079896(n+1)]`
-/

namespace A361160.P3445073634553471984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P3445073634553471984

namespace A361160

/-- `∩[A047466(n+1), A079896(n+1)]` -/
def P3445073634553471984.Spec : Prop :=
  ∀ n, (P3445073634553471984.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P2707454487224780262

`∩[A047538(n+1), A079896(n+1)]`
-/

namespace A361160.P2707454487224780262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P2707454487224780262

namespace A361160

/-- `∩[A047538(n+1), A079896(n+1)]` -/
def P2707454487224780262.Spec : Prop :=
  ∀ n, (P2707454487224780262.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P5935904751525470992

`∩[A047412(n+1), A079896(n+1)]`
-/

namespace A361160.P5935904751525470992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P5935904751525470992

namespace A361160

/-- `∩[A047412(n+1), A079896(n+1)]` -/
def P5935904751525470992.Spec : Prop :=
  ∀ n, (P5935904751525470992.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P3667978639727301749

`∩[A047416(n+1), A079896(n+1)]`
-/

namespace A361160.P3667978639727301749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P3667978639727301749

namespace A361160

/-- `∩[A047416(n+1), A079896(n+1)]` -/
def P3667978639727301749.Spec : Prop :=
  ∀ n, (P3667978639727301749.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P7702939189815189658

`∩[A047453(n+1), A079896(n+1)]`
-/

namespace A361160.P7702939189815189658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P7702939189815189658

namespace A361160

/-- `∩[A047453(n+1), A079896(n+1)]` -/
def P7702939189815189658.Spec : Prop :=
  ∀ n, (P7702939189815189658.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P1448784839939142452

`∩[A047509(n+1), A079896(n+1)]`
-/

namespace A361160.P1448784839939142452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P1448784839939142452

namespace A361160

/-- `∩[A047509(n+1), A079896(n+1)]` -/
def P1448784839939142452.Spec : Prop :=
  ∀ n, (P1448784839939142452.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P8748005529784157737

`∩[A047542(n+1), A079896(n+1)]`
-/

namespace A361160.P8748005529784157737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P8748005529784157737

namespace A361160

/-- `∩[A047542(n+1), A079896(n+1)]` -/
def P8748005529784157737.Spec : Prop :=
  ∀ n, (P8748005529784157737.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P1819222229879122914

`∩[A047545(n+1), A079896(n+1)]`
-/

namespace A361160.P1819222229879122914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P1819222229879122914

namespace A361160

/-- `∩[A047545(n+1), A079896(n+1)]` -/
def P1819222229879122914.Spec : Prop :=
  ∀ n, (P1819222229879122914.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P4120315834719721126

`∩[A047513(n+1), A079896(n+1)]`
-/

namespace A361160.P4120315834719721126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P4120315834719721126

namespace A361160

/-- `∩[A047513(n+1), A079896(n+1)]` -/
def P4120315834719721126.Spec : Prop :=
  ∀ n, (P4120315834719721126.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P9628842644168292704

`∩[A047517(n+1), A079896(n+1)]`
-/

namespace A361160.P9628842644168292704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P9628842644168292704

namespace A361160

/-- `∩[A047517(n+1), A079896(n+1)]` -/
def P9628842644168292704.Spec : Prop :=
  ∀ n, (P9628842644168292704.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P16134343855249533549

`∩[A047420(n+1), A079896(n+1)]`
-/

namespace A361160.P16134343855249533549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P16134343855249533549

namespace A361160

/-- `∩[A047420(n+1), A079896(n+1)]` -/
def P16134343855249533549.Spec : Prop :=
  ∀ n, (P16134343855249533549.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P11342265391181939105

`∩[A047549(n+1), A079896(n+1)]`
-/

namespace A361160.P11342265391181939105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P11342265391181939105

namespace A361160

/-- `∩[A047549(n+1), A079896(n+1)]` -/
def P11342265391181939105.Spec : Prop :=
  ∀ n, (P11342265391181939105.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P2294165873140653022

`∩[A004776(n+1), A079896(n+1)]`
-/

namespace A361160.P2294165873140653022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P2294165873140653022

namespace A361160

/-- `∩[A004776(n+1), A079896(n+1)]` -/
def P2294165873140653022.Spec : Prop :=
  ∀ n, (P2294165873140653022.a n : ℤ) = A361160 (n + 1)

end A361160

/-! ## A361160.P17789465456459083335

`∩[A000037(n+1), A047462(n+1)]`
-/

namespace A361160.P17789465456459083335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361160.P17789465456459083335

namespace A361160

/-- `∩[A000037(n+1), A047462(n+1)]` -/
def P17789465456459083335.Spec : Prop :=
  ∀ n, (P17789465456459083335.a n : ℤ) = A361160 (n + 1)

end A361160

/-!
# A361162: Number of elliptic points of order 2 in Weierstrass curve with discriminant A361160(n) in moduli space M_3 of compact Riemann surfaces of genus 3.

The programs for A361162, there is no canonical definition to state claims against.
-/

/-! ## A361162.P17662616556824283385

`val(A072634(n)+1, 3)`
-/

namespace A361162.P17662616556824283385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A072634 n + 1).toNat 3

end

end A361162.P17662616556824283385

/-! ## A361162.P17915264953237979571

`val(A245062(n+2), 20)`
-/

namespace A361162.P17915264953237979571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A245062 (n + 2)).toNat 20

end

end A361162.P17915264953237979571

/-! ## A361162.P612810709850023940

`abs(floor(A098599(n)/2))`
-/

namespace A361162.P612810709850023940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A098599 n : ℚ) / 2⌋|

end

end A361162.P612810709850023940

/-! ## A361162.P2146152013374710708

`A069859(n+2)+char[3]`
-/

namespace A361162.P2146152013374710708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069859 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A361162.P2146152013374710708

/-! ## A361162.P7853779994575832156

`A378457(n+2)+char[3]`
-/

namespace A361162.P7853779994575832156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378457 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A361162.P7853779994575832156

/-!
# A361163: Number of elliptic points of order 3 in Weierstrass curve with discriminant A361160(n) in moduli space M_3 of compact Riemann surfaces of genus 3.

The programs for A361163, there is no canonical definition to state claims against.
-/

/-! ## A361163.P1540756809608040583

`A122865(A135042(n))`
-/

namespace A361163.P1540756809608040583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (A135042 n).toNat

end

end A361163.P1540756809608040583

/-! ## A361163.P12069745122109908908

`A159955(A078231(n+1))`
-/

namespace A361163.P12069745122109908908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159955 (A078231 (n + 1)).toNat

end

end A361163.P12069745122109908908

/-! ## A361163.P10877519259537146778

`A026609(A249384(n+1))`
-/

namespace A361163.P10877519259537146778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026609 (A249384 (n + 1)).toNat

end

end A361163.P10877519259537146778

/-! ## A361163.P8447679172008835735

`A287331(A115809(n+1))`
-/

namespace A361163.P8447679172008835735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287331 (A115809 (n + 1)).toNat

end

end A361163.P8447679172008835735

/-! ## A361163.P8275360120030740117

`A341000(A296878(n+1))`
-/

namespace A361163.P8275360120030740117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 ((A296878 (n + 1)).toNat + 285)

end

end A361163.P8275360120030740117

/-!
# A361166: Number of elliptic points of order 2 in Weierstrass curve with discriminant A079896(n) in moduli space M_4 of compact Riemann surfaces of genus 4.

The programs for A361166, there is no canonical definition to state claims against.
-/

/-! ## A361166.P14851981966534266664

`A051699(A128014(n)+A000430(n+1))`
-/

namespace A361166.P14851981966534266664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A128014 n + A000430 (n + 1)).toNat

end

end A361166.P14851981966534266664

/-! ## A361166.P2673978001430311944

`and(A022846(n), A064547(A005179(n+1)))`
-/

namespace A361166.P2673978001430311944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022846 n) (A064547 (A005179 (n + 1)).toNat)

end

end A361166.P2673978001430311944

/-! ## A361166.P3246132442206151679

`A190487((n+1)*Δ[n^3]+14)`
-/

namespace A361166.P3246132442206151679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 14).toNat

end

end A361166.P3246132442206151679

/-! ## A361166.P7686454282889885606

`A033762(∑[∑[A055349(n+2)]])`
-/

namespace A361166.P7686454282889885606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A361166.P7686454282889885606

/-! ## A361166.P2023697445647860549

`A033762(∑[A343890(n)+2]+4)`
-/

namespace A361166.P2023697445647860549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343890 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A361166.P2023697445647860549

/-!
# A361167: Number of elliptic points of order 3 in Weierstrass curve with discriminant A079896(n) in moduli space M_4 of compact Riemann surfaces of genus 4.

The programs for A361167, there is no canonical definition to state claims against.
-/

/-! ## A361167.P8467969336206098424

`A001878(A052297(2*n+1)+A036970(n+5))`
-/

namespace A361167.P8467969336206098424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A052297 (2 * n + 1) + A036970 (n + 5)).toNat

end

end A361167.P8467969336206098424

/-!
# A361169: Discriminants D of Prym-Teichmuller curves W_D(4) in genus 3.

The programs for A361169, there is no canonical definition to state claims against.
-/

/-! ## A361169.P4253010940485601431

`A361160(n+3)`
-/

namespace A361169.P4253010940485601431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361160 (n + 3)

end

end A361169.P4253010940485601431

/-! ## A361169.P2594642798436556424

`A099136(A361160(3-(n-2*n)))`
-/

namespace A361169.P2594642798436556424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099136 (A361160 (3 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A361169.P2594642798436556424

/-!
# A361171: Number of chordless cycles in the n X n king graph.

The programs for A361171, there is no canonical definition to state claims against.
-/

/-! ## A361171.P16045919361973104409

`A327802((n+1)!²)`
-/

namespace A361171.P16045919361973104409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327802 (Nat.factorial (n + 1) ^ 2)

end

end A361171.P16045919361973104409

/-!
# A361172: a(n) is the smallest positive number not among the terms between a(n-1) and the previous most recent occurrence of a(n-1) inclusive; if a(n-1) is a first occurrence, set a(n)=1; a(1)=1.

The programs for A361172, there is no canonical definition to state claims against.
-/

/-! ## A361172.P5198812507898745904

`A051903(A129338(n+1)*A140951(2*(n+1)))`
-/

namespace A361172.P5198812507898745904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A129338 (n + 1) * A140951 (2 * (n + 1))).toNat

end

end A361172.P5198812507898745904

/-! ## A361172.P2190874435856904431

`A144328(A185180(2*(n+1))%A134382(2*n+5))`
-/

namespace A361172.P2190874435856904431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (Int.tmod (A185180 (2 * (n + 1))) (A134382 (2 * n + 5))).toNat

end

end A361172.P2190874435856904431

/-!
# A361173: Numbers k such that, in base 4, the greatest prime less than 4^k and the least prime greater than 4^k have no common digit.

The programs for A361173, there is no canonical definition to state claims against.
-/

/-! ## A361173.P9503069800075939345

`A027077(A072437(n+1))+A001787(n)`
-/

namespace A361173.P9503069800075939345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027077 (A072437 (n + 1)).toNat + A001787 n

end

end A361173.P9503069800075939345

/-!
# A361174: The sum of the exponential squarefree exponential divisors (or e-squarefree e-divisors) of n.

The programs for A361174, there is no canonical definition to state claims against.
-/

/-! ## A361174.P5501053397064566620

`A051377(A338782(n+1))`
-/

namespace A361174.P5501053397064566620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (A338782 (n + 1)).toNat

end

end A361174.P5501053397064566620

/-! ## A361174.P15071888389439391180

`A322857(A338782(n+1)%A046099(n+1))`
-/

namespace A361174.P15071888389439391180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322857 (Int.tmod (A338782 (n + 1)) (A046099 (n + 1))).toNat

end

end A361174.P15071888389439391180

/-! ## A361174.P7881571955062409640

`A322857(A338782(n+1)+A000007(n+3))`
-/

namespace A361174.P7881571955062409640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322857 (A338782 (n + 1) + A000007 (n + 3)).toNat

end

end A361174.P7881571955062409640

/-! ## A361174.P4091706150284922104

`A322857(A338782(n+1)%A033650(n))`
-/

namespace A361174.P4091706150284922104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322857 (Int.tmod (A338782 (n + 1)) (A033650 n)).toNat

end

end A361174.P4091706150284922104

/-! ## A361174.P1245832879080666162

`A322857(A338782(n+1))%A162921(n+1)`
-/

namespace A361174.P1245832879080666162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322857 (A338782 (n + 1)).toNat) (A162921 (n + 1))

end

end A361174.P1245832879080666162

/-!
# A361178: a(1) = 1, a(2) = 2; for n >= 3, a(n) is the greatest k where a(n-1) + a(n-2) + ... + a(n-k) is prime, or a(n) = -1 if no such k exists.

The programs for A361178, there is no canonical definition to state claims against.
-/

/-! ## A361178.P8470148427847110140

`A325166(n+1)+A000041(A077168(n))-A237821(n+1)`
-/

namespace A361178.P8470148427847110140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (n + 1) + (A000041 (A077168 n).toNat - A237821 (n + 1))

end

end A361178.P8470148427847110140

/-!
# A361179: a(n) = sigma(n)^4.

The programs for A361179, the canonical program `A361179.P6830048198093353337` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361179 has offset 1).

The definition of A361179 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)^4` (program `A361179.P6830048198093353337`, by `A361179.P6830048198093353337.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361179.P6830048198093353337

`A000203(n+1)^4`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A361179

/-- `A000203(n+1)^4` -/
def P6830048198093353337.Spec : Prop :=
  ∀ n, P6830048198093353337.a n = A361179 (n + 1)

theorem P6830048198093353337.correct : P6830048198093353337.Spec := by
  intro n
  simp only [A361179, Nat.add_sub_cancel]

end A361179

/-! ## A361179.P14434423264293055492

`A000583(A000203(n+1))`
-/

namespace A361179.P14434423264293055492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000203 (n + 1)).toNat

end

end A361179.P14434423264293055492

namespace A361179

/-- `A000583(A000203(n+1))` -/
def P14434423264293055492.Spec : Prop :=
  ∀ n, P14434423264293055492.a n = A361179 (n + 1)

end A361179

/-! ## A361179.P7219626623239462947

`∑{d}[n+1, #]^4`
-/

namespace A361179.P7219626623239462947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ 4

end

end A361179.P7219626623239462947

namespace A361179

/-- `∑{d}[n+1, #]^4` -/
def P7219626623239462947.Spec : Prop :=
  ∀ n, (P7219626623239462947.a n : ℤ) = A361179 (n + 1)

theorem P7219626623239462947.correct : P7219626623239462947.Spec := by
  intro n
  simp only [A361179, Nat.add_sub_cancel, A361179.P7219626623239462947.f1, A361179.P7219626623239462947.a, A361179.P6830048198093353337.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361179

/-! ## A361179.P4564563779574576778

`∑{d}[n+1, #]²²`
-/

namespace A361179.P4564563779574576778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2) ^ 2

end

end A361179.P4564563779574576778

namespace A361179

/-- `∑{d}[n+1, #]²²` -/
def P4564563779574576778.Spec : Prop :=
  ∀ n, (P4564563779574576778.a n : ℤ) = A361179 (n + 1)

theorem P4564563779574576778.correct : P4564563779574576778.Spec := by
  intro n
  simp only [A361179, Nat.add_sub_cancel, A361179.P4564563779574576778.f1, A361179.P4564563779574576778.a, A361179.P6830048198093353337.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361179

/-! ## A361179.P5271417098415242967

`(-∑{d}[2*n-(n-1), #])^4`
-/

namespace A361179.P5271417098415242967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)) ^ 4

end

end A361179.P5271417098415242967

namespace A361179

/-- `(-∑{d}[2*n-(n-1), #])^4` -/
def P5271417098415242967.Spec : Prop :=
  ∀ n, P5271417098415242967.a n = A361179 (n + 1)

end A361179

/-! ## A361179.P968403737109363631

`A072861(n+1)²`
-/

namespace A361179.P968403737109363631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) ^ 2

end

end A361179.P968403737109363631

namespace A361179

/-- `A072861(n+1)²` -/
def P968403737109363631.Spec : Prop :=
  ∀ n, P968403737109363631.a n = A361179 (n + 1)

theorem P968403737109363631.correct : P968403737109363631.Spec := by
  intro n
  simp only [A361179, Nat.add_sub_cancel, A361179.P968403737109363631.a, A361179.P6830048198093353337.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072861, A072861.P7379814568350881994.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361179

/-! ## A361179.P6541594414868396122

`Δ[A160664(n)]^4`
-/

namespace A361179.P6541594414868396122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A361179.P6541594414868396122

namespace A361179

/-- `Δ[A160664(n)]^4` -/
def P6541594414868396122.Spec : Prop :=
  ∀ n, P6541594414868396122.a n = A361179 (n + 1)

end A361179

/-! ## A361179.P1464618907169916648

`Δ[A330725(n)]^4`
-/

namespace A361179.P1464618907169916648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A361179.P1464618907169916648

namespace A361179

/-- `Δ[A330725(n)]^4` -/
def P1464618907169916648.Spec : Prop :=
  ∀ n, P1464618907169916648.a n = A361179 (n + 1)

end A361179

/-! ## A361179.P11323134267112388207

`A259308(n+1)-1`
-/

namespace A361179.P11323134267112388207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259308 (n + 1) - 1

end

end A361179.P11323134267112388207

namespace A361179

/-- `A259308(n+1)-1` -/
def P11323134267112388207.Spec : Prop :=
  ∀ n, P11323134267112388207.a n = A361179 (n + 1)

theorem P11323134267112388207.correct : P11323134267112388207.Spec := by
  intro n
  simp only [A361179, Nat.add_sub_cancel, A361179.P11323134267112388207.a, A361179.P6830048198093353337.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A259308, A259308.P10719289397753992737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361179

/-! ## A361179.P16366766208234703436

`A143348(n+1)^4`
-/

namespace A361179.P16366766208234703436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1) ^ 4

end

end A361179.P16366766208234703436

namespace A361179

/-- `A143348(n+1)^4` -/
def P16366766208234703436.Spec : Prop :=
  ∀ n, P16366766208234703436.a n = A361179 (n + 1)

end A361179

/-! ## A361179.P15572543025501011637

`A245092(Δ[n²])²²`
-/

namespace A361179.P15572543025501011637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A361179.P15572543025501011637

namespace A361179

/-- `A245092(Δ[n²])²²` -/
def P15572543025501011637.Spec : Prop :=
  ∀ n, P15572543025501011637.a n = A361179 (n + 1)

end A361179

/-! ## A361179.P9731856032006884820

`(1-A258974(n+1))²`
-/

namespace A361179.P9731856032006884820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A258974 (n + 1)) ^ 2

end

end A361179.P9731856032006884820

namespace A361179

/-- `(1-A258974(n+1))²` -/
def P9731856032006884820.Spec : Prop :=
  ∀ n, P9731856032006884820.a n = A361179 (n + 1)

theorem P9731856032006884820.correct : P9731856032006884820.Spec := by
  intro n
  simp only [A361179, Nat.add_sub_cancel, A361179.P9731856032006884820.a, A361179.P6830048198093353337.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A258974, A258974.P4466533170833626338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361179

/-! ## A361179.P9181530877319757531

`∑[A340793(n+1)]²²`
-/

namespace A361179.P9181530877319757531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A361179.P9181530877319757531

namespace A361179

/-- `∑[A340793(n+1)]²²` -/
def P9181530877319757531.Spec : Prop :=
  ∀ n, P9181530877319757531.a n = A361179 (n + 1)

end A361179

/-! ## A361179.P7750889943978050155

`A245092(2*n+1)^4`
-/

namespace A361179.P7750889943978050155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) ^ 4

end

end A361179.P7750889943978050155

namespace A361179

/-- `A245092(2*n+1)^4` -/
def P7750889943978050155.Spec : Prop :=
  ∀ n, P7750889943978050155.a n = A361179 (n + 1)

end A361179

/-! ## A361179.P10119805626802692603

`(1-A088580(n+1))²²`
-/

namespace A361179.P10119805626802692603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A088580 (n + 1)) ^ 2) ^ 2

end

end A361179.P10119805626802692603

namespace A361179

/-- `(1-A088580(n+1))²²` -/
def P10119805626802692603.Spec : Prop :=
  ∀ n, P10119805626802692603.a n = A361179 (n + 1)

theorem P10119805626802692603.correct : P10119805626802692603.Spec := by
  intro n
  simp only [A361179, Nat.add_sub_cancel, A361179.P10119805626802692603.a, A361179.P6830048198093353337.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361179

/-! ## A361179.P3408767498244322546

`(A074400(n+1)/2)²²`
-/

namespace A361179.P3408767498244322546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A074400 (n + 1) : ℚ) / 2) ^ 2) ^ 2

end

end A361179.P3408767498244322546

namespace A361179

/-- `(A074400(n+1)/2)²²` -/
def P3408767498244322546.Spec : Prop :=
  ∀ n, P3408767498244322546.a n = (A361179 (n + 1) : ℚ)

theorem P3408767498244322546.correct : P3408767498244322546.Spec := by
  intro n
  simp only [A361179, Nat.add_sub_cancel, A361179.P3408767498244322546.a, A361179.P6830048198093353337.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361179

/-! ## A361179.P15704932372681679553

`(A272027(n+1)/3)²²`
-/

namespace A361179.P15704932372681679553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A272027 (n + 1) : ℚ) / 3) ^ 2) ^ 2

end

end A361179.P15704932372681679553

namespace A361179

/-- `(A272027(n+1)/3)²²` -/
def P15704932372681679553.Spec : Prop :=
  ∀ n, P15704932372681679553.a n = (A361179 (n + 1) : ℚ)

theorem P15704932372681679553.correct : P15704932372681679553.Spec := by
  intro n
  simp only [A361179, Nat.add_sub_cancel, A361179.P15704932372681679553.a, A361179.P6830048198093353337.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A272027, A272027.P17950759033993077215.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361179

/-! ## A361179.P2071759437452225849

`A000203(C(n+1, n))²²`
-/

namespace A361179.P2071759437452225849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (Nat.choose (n + 1) n) ^ 2) ^ 2

end

end A361179.P2071759437452225849

namespace A361179

/-- `A000203(C(n+1, n))²²` -/
def P2071759437452225849.Spec : Prop :=
  ∀ n, P2071759437452225849.a n = A361179 (n + 1)

theorem P2071759437452225849.correct : P2071759437452225849.Spec := by
  intro n
  simp only [A361179, Nat.add_sub_cancel, A361179.P2071759437452225849.a, A361179.P6830048198093353337.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A361179

/-! ## A361179.P16973335746010008767

`floor(sqrt(A258774(n+1)))²²`
-/

namespace A361179.P16973335746010008767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A258774 (n + 1)) ^ 2) ^ 2

end

end A361179.P16973335746010008767

namespace A361179

/-- `floor(sqrt(A258774(n+1)))²²` -/
def P16973335746010008767.Spec : Prop :=
  ∀ n, P16973335746010008767.a n = A361179 (n + 1)

end A361179

/-! ## A361179.P15456408954869417465

`A000203(-xor(n, -1))²²`
-/

namespace A361179.P15456408954869417465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (-Int.xor (n : ℤ) (-1)).toNat ^ 2) ^ 2

end

end A361179.P15456408954869417465

namespace A361179

/-- `A000203(-xor(n, -1))²²` -/
def P15456408954869417465.Spec : Prop :=
  ∀ n, P15456408954869417465.a n = A361179 (n + 1)

end A361179

/-!
# A361180: Primes p such that the odd part of p - 1 is upper-bounded by the dyadic valuation of p - 1.

The programs for A361180, there is no canonical definition to state claims against.
-/

/-! ## A361180.P6995370953221094443

`p?[A361875(n+1)]`
-/

namespace A361180.P6995370953221094443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A361180.P6995370953221094443

/-! ## A361180.P10008251373136139061

`filter[A361875(n+1), A010051(#)]`
-/

namespace A361180.P10008251373136139061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A361180.P10008251373136139061

/-! ## A361180.P15647024805060531341

`filter[A361875(n+1), A174897(#)]`
-/

namespace A361180.P15647024805060531341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A361180.P15647024805060531341

/-! ## A361180.P6746373143298802890

`filter[A361875(n+1), A257531(#)]`
-/

namespace A361180.P6746373143298802890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A361180.P6746373143298802890

/-! ## A361180.P5034708555337811519

`filter[A361875(n+1), A323152(#)]`
-/

namespace A361180.P5034708555337811519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A361180.P5034708555337811519

/-!
# A361182: E.g.f. satisfies A(x) = exp( 3*x*A(x) ) / (1-x).

The programs for A361182, there is no canonical definition to state claims against.
-/

/-! ## A361182.P12967485016268396595

`A376099(n+1)/(n+1)`
-/

namespace A361182.P12967485016268396595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376099 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A361182.P12967485016268396595

/-!
# A361183: Number of chordless cycles in the n-Mycielski graph.

The programs for A361183, there is no canonical definition to state claims against.
-/

/-! ## A361183.P10336098237333922667

`A182841(A171853(∑[n]))`
-/

namespace A361183.P10336098237333922667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182841 (A171853 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A361183.P10336098237333922667

/-!
# A361184: Number of chordless cycles in the n X n queen graph.

The programs for A361184, there is no canonical definition to state claims against.
-/

/-! ## A361184.P6960553179679975453

`∑[A039653(A006932(n+1)²)]`
-/

namespace A361184.P6960553179679975453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A006932 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361184.P6960553179679975453

/-!
# A361185: Number of chordless cycles in the n X n rook complement graph.

The programs for A361185, the canonical program `A361185.P692134638645597680` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361185 has offset 1).

The definition of A361185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361185.P98463359496989640

`(n-1)*n²*(n+1)²*(6*(n+1)-13)/12`
-/

namespace A361185.P98463359496989640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n ^ 2 : ℤ) * ((n + 1) ^ 2 : ℤ) * ((6 * (n + 1) : ℤ) - 13) : ℚ) / 12

end

end A361185.P98463359496989640

namespace A361185

/-- `(n-1)*n²*(n+1)²*(6*(n+1)-13)/12` -/
def P98463359496989640.Spec : Prop :=
  ∀ n, P98463359496989640.a n = (A361185 (n + 1) : ℚ)

theorem P98463359496989640.correct : P98463359496989640.Spec := by
  intro n
  simp only [A361185, Nat.add_sub_cancel, A361185.P98463359496989640.a, A361185.P692134638645597680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A361185

/-! ## A361185.P692134638645597680

`2*C(n+1, 2)*C(n+1, 3)+9*C(n+1, 3)²+12*C(n+1, 4)*C(n+1, 2)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A361185

/-- `2*C(n+1, 2)*C(n+1, 3)+9*C(n+1, 3)²+12*C(n+1, 4)*C(n+1, 2)` -/
def P692134638645597680.Spec : Prop :=
  ∀ n, (P692134638645597680.a n : ℤ) = A361185 (n + 1)

theorem P692134638645597680.correct : P692134638645597680.Spec := by
  intro n
  simp only [A361185, Nat.add_sub_cancel]

end A361185

/-!
# A361186: Number of chordless cycles in the halved cube graph Q_n/2.

The programs for A361186, there is no canonical definition to state claims against.
-/

/-! ## A361186.P673774156336737592

`C(∏{p}[eq[n, ∏{d}[n, -#]]^(n+1), #-1], 5)`
-/

namespace A361186.P673774156336737592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), (-(d : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat 5

end

end A361186.P673774156336737592

/-!
# A361188: Number of odd chordless cycles in the complement of the n X n queen graph.

The programs for A361188, there is no canonical definition to state claims against.
-/

/-! ## A361188.P10406568829458989391

`A323487(A020741(n))`
-/

namespace A361188.P10406568829458989391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323487 (A020741 n).toNat

end

end A361188.P10406568829458989391

/-!
# A361195: Numerator of the discriminant of the n-th Legendre polynomial.

The programs for A361195, there is no canonical definition to state claims against.
-/

/-! ## A361195.P9015098037119290722

`∏[A069955(n)]`
-/

namespace A361195.P9015098037119290722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A361195.P9015098037119290722

/-! ## A361195.P2389881907867124951

`∏[A001902(2*n)]`
-/

namespace A361195.P2389881907867124951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001902 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A361195.P2389881907867124951

/-! ## A361195.P6288406567390419466

`∏[A001790(n)*A001803(n)]`
-/

namespace A361195.P6288406567390419466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A001803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A361195.P6288406567390419466

/-! ## A361195.P1050696471688858464

`∏[A161736(n+2)]/A036069(2*n+2)`
-/

namespace A361195.P1050696471688858464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161736 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A036069 (2 * n + 2) : ℚ)

end

end A361195.P1050696471688858464

/-! ## A361195.P11092568390234791828

`∏[A001803(n)*A004734(2*n+1)]/A036069(2*n+2)`
-/

namespace A361195.P11092568390234791828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A004734 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A036069 (2 * n + 2) : ℚ)

end

end A361195.P11092568390234791828

/-!
# A361196: Denominator of the discriminant of the n-th Legendre polynomial.

The programs for A361196, there is no canonical definition to state claims against.
-/

/-! ## A361196.P10629488984959796956

`4^∑[val(n!, 2)]`
-/

namespace A361196.P10629488984959796956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361196.P10629488984959796956

/-! ## A361196.P6715160672539099822

`∏[4^val(n!, 2)]`
-/

namespace A361196.P6715160672539099822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (Nat.factorial n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A361196.P6715160672539099822

/-! ## A361196.P195564853334497764

`∏[gcd(2^n, n!)²]`
-/

namespace A361196.P195564853334497764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ n) (Nat.factorial n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A361196.P195564853334497764

/-! ## A361196.P752811895177377485

`∏[and(-n!, n!)²]`
-/

namespace A361196.P752811895177377485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(Nat.factorial n : ℤ)) (Nat.factorial n : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A361196.P752811895177377485

/-! ## A361196.P7741513611800532373

`∏[or(-n!, n!)²]`
-/

namespace A361196.P7741513611800532373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-(Nat.factorial n : ℤ)) (Nat.factorial n : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A361196.P7741513611800532373

