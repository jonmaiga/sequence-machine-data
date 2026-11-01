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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A387401: a(n) = Sum_{k=0..n} (1-i)^k * (1+i)^(n-k) * binomial(n+1,k) * binomial(n+1,n-k), where i is the imaginary unit.

The programs for A387401, the canonical program `A387401.P4911919190791046722` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387401 has offset 0).

The definition of A387401 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387401.P189839530506595977

`∑{#}[floor(n/2), 2^(n-#)*C(n+1, n-2*#)*C(2*#+1, #)]`
-/

namespace A387401.P189839530506595977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) ((n : ℤ) - (2 * k : ℤ)).toNat : ℚ) * (Nat.choose (2 * k + 1) k : ℚ)

end

end A387401.P189839530506595977

namespace A387401

/-- `∑{#}[floor(n/2), 2^(n-#)*C(n+1, n-2*#)*C(2*#+1, #)]` -/
def P189839530506595977.Spec : Prop :=
  ∀ n, P189839530506595977.a n = (A387401 n : ℚ)

end A387401

/-! ## A387401.P4911919190791046722

`(n+1)*A071356(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387401

/-- `(n+1)*A071356(n)` -/
def P4911919190791046722.Spec : Prop :=
  ∀ n, P4911919190791046722.a n = A387401 n

theorem P4911919190791046722.correct : P4911919190791046722.Spec := by
  intro n
  simp only [A387401]

end A387401

/-! ## A387401.P245676557964494817

`(1+n)*A110681(∑[n])`
-/

namespace A387401.P245676557964494817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A110681 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387401.P245676557964494817

namespace A387401

/-- `(1+n)*A110681(∑[n])` -/
def P245676557964494817.Spec : Prop :=
  ∀ n, P245676557964494817.a n = A387401 n

end A387401

/-! ## A387401.P3052822964085238688

`(1+n)*A025227(n+2)/2`
-/

namespace A387401.P3052822964085238688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) * ((A025227 (n + 2) : ℚ) / 2)

end

end A387401.P3052822964085238688

namespace A387401

/-- `(1+n)*A025227(n+2)/2` -/
def P3052822964085238688.Spec : Prop :=
  ∀ n, P3052822964085238688.a n = (A387401 n : ℚ)

end A387401

/-! ## A387401.P10110316287003880280

`(n+1)*A179190(n+2)/4`
-/

namespace A387401.P10110316287003880280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A179190 (n + 2) : ℚ) / 4)

end

end A387401.P10110316287003880280

namespace A387401

/-- `(n+1)*A179190(n+2)/4` -/
def P10110316287003880280.Spec : Prop :=
  ∀ n, P10110316287003880280.a n = (A387401 n : ℚ)

end A387401

/-! ## A387401.P4469344641226758482

`∑{#}[n+1, C(n+1, #)*A098518(#)]`
-/

namespace A387401.P4469344641226758482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A098518 k

end

end A387401.P4469344641226758482

namespace A387401

/-- `∑{#}[n+1, C(n+1, #)*A098518(#)]` -/
def P4469344641226758482.Spec : Prop :=
  ∀ n, P4469344641226758482.a n = A387401 n

end A387401

/-! ## A387401.P8641979160035784093

`(n+1)*∑{#}[floor(n/2), C(n, 2*#)*A000108(#)*2^(n-#)]`
-/

namespace A387401.P8641979160035784093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, ((Nat.choose n (2 * k) : ℤ) * A000108 k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ))

end

end A387401.P8641979160035784093

namespace A387401

/-- `(n+1)*∑{#}[floor(n/2), C(n, 2*#)*A000108(#)*2^(n-#)]` -/
def P8641979160035784093.Spec : Prop :=
  ∀ n, P8641979160035784093.a n = (A387401 n : ℚ)

end A387401

/-! ## A387401.P3795142506808893925

`A240688(n+1)+A240688(n)-A071356(n)`
-/

namespace A387401.P3795142506808893925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240688 (n + 1) + A240688 n - A071356 n

end

end A387401.P3795142506808893925

namespace A387401

/-- `A240688(n+1)+A240688(n)-A071356(n)` -/
def P3795142506808893925.Spec : Prop :=
  ∀ n, P3795142506808893925.a n = A387401 n

end A387401

/-! ## A387401.P3125352768305422430

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A050151(#)]`
-/

namespace A387401.P3125352768305422430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A050151 k : ℚ)

end

end A387401.P3125352768305422430

namespace A387401

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A050151(#)]` -/
def P3125352768305422430.Spec : Prop :=
  ∀ n, P3125352768305422430.a n = (A387401 n : ℚ)

end A387401

/-! ## A387401.P6892865209663132714

`A084606((n+1)²+n)`
-/

namespace A387401.P6892865209663132714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 ((n + 1) ^ 2 + n)

end

end A387401.P6892865209663132714

namespace A387401

/-- `A084606((n+1)²+n)` -/
def P6892865209663132714.Spec : Prop :=
  ∀ n, P6892865209663132714.a n = A387401 n

end A387401

/-!
# A387402: a(n) = Sum_{k=0..n} (1-i)^k * (1+i)^(n-k) * binomial(n+2,k) * binomial(n+2,n-k), where i is the imaginary unit.

The programs for A387402, the canonical program `A387402.P4498138438100169739` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387402 has offset 0).

The definition of A387402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387402.P4498138438100169739

`∑{#}[floor(n/2), 2^(n-#)*C(n+2, n-2*#)*C(2*#+2, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387402

/-- `∑{#}[floor(n/2), 2^(n-#)*C(n+2, n-2*#)*C(2*#+2, #)]` -/
def P4498138438100169739.Spec : Prop :=
  ∀ n, P4498138438100169739.a n = (A387402 n : ℚ)

end A387402

/-! ## A387402.P13553707371286803152

`A084606(2*∑[n+2])`
-/

namespace A387402.P13553707371286803152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A387402.P13553707371286803152

namespace A387402

/-- `A084606(2*∑[n+2])` -/
def P13553707371286803152.Spec : Prop :=
  ∀ n, P13553707371286803152.a n = A387402 n

end A387402

/-! ## A387402.P393133132878408883

`record[A084606(A028552(col(n)))]`
-/

namespace A387402.P393133132878408883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 (A028552 (SequenceMachineLib.triCol n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387402.P393133132878408883

namespace A387402

/-- `record[A084606(A028552(col(n)))]` -/
def P393133132878408883.Spec : Prop :=
  ∀ n, P393133132878408883.a n = A387402 n

end A387402

/-! ## A387402.P16174342697405988870

`(col(A000217(n))+1)*A084606(A028552(n+1))`
-/

namespace A387402.P16174342697405988870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol (A000217 n).toNat + 1 : ℤ) * A084606 (A028552 (n + 1)).toNat

end

end A387402.P16174342697405988870

namespace A387402

/-- `(col(A000217(n))+1)*A084606(A028552(n+1))` -/
def P16174342697405988870.Spec : Prop :=
  ∀ n, P16174342697405988870.a n = A387402 n

end A387402

/-! ## A387402.P17326575115810043365

`A043289(2*n+1)*A084606(A028552(n+1))`
-/

namespace A387402.P17326575115810043365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043289 (2 * n + 1) * A084606 (A028552 (n + 1)).toNat

end

end A387402.P17326575115810043365

namespace A387402

/-- `A043289(2*n+1)*A084606(A028552(n+1))` -/
def P17326575115810043365.Spec : Prop :=
  ∀ n, P17326575115810043365.a n = A387402 n

end A387402

/-!
# A387403: a(n) = Sum_{k=0..n} (1-i)^k * (1+i)^(n-k) * binomial(n+3,k) * binomial(n+3,n-k), where i is the imaginary unit.

The programs for A387403, the canonical program `A387403.P18334553054826374573` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387403 has offset 0).

The definition of A387403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387403.P18334553054826374573

`∑{#}[floor(n/2), 2^(n-#)*C(n+3, n-2*#)*C(2*#+3, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387403

/-- `∑{#}[floor(n/2), 2^(n-#)*C(n+3, n-2*#)*C(2*#+3, #)]` -/
def P18334553054826374573.Spec : Prop :=
  ∀ n, P18334553054826374573.a n = (A387403 n : ℚ)

end A387403

/-! ## A387403.P1168173729822473423

`A084606(A337722(n+3)+A003071(n+1))`
-/

namespace A387403.P1168173729822473423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 (A337722 (n + 3) + A003071 (n + 1)).toNat

end

end A387403.P1168173729822473423

namespace A387403

/-- `A084606(A337722(n+3)+A003071(n+1))` -/
def P1168173729822473423.Spec : Prop :=
  ∀ n, P1168173729822473423.a n = A387403 n

end A387403

/-!
# A387404: Numbers of the form 12*k + 1 that satisfy Euler's condition for odd perfect numbers (A228058).

The programs for A387404, there is no canonical definition to state claims against.
-/

/-! ## A387404.P15885374314694341300

`filter[A228058(n+1), #%3]`
-/

namespace A387404.P15885374314694341300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 3 = 1) n)

end

end A387404.P15885374314694341300

/-! ## A387404.P11224014345107669707

`∩[A228058(n+1), A017533(n)]`
-/

namespace A387404.P11224014345107669707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P11224014345107669707

/-! ## A387404.P11933223934838345326

`∩[A034019(n+1), A351535(n+1)]`
-/

namespace A387404.P11933223934838345326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P11933223934838345326

/-! ## A387404.P4254707137472849915

`∩[A228058(n+1), A260682(n+1)]`
-/

namespace A387404.P4254707137472849915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P4254707137472849915

/-! ## A387404.P3688654919279475511

`filter[A191218(n+1), A373977(#)]`
-/

namespace A387404.P3688654919279475511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A387404.P3688654919279475511

/-! ## A387404.P12803411003201629930

`filter[A228058(n+1), A373977(#)]`
-/

namespace A387404.P12803411003201629930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A387404.P12803411003201629930

/-! ## A387404.P11330683621991661579

`filter[A351535(n+1), A373977(#)]`
-/

namespace A387404.P11330683621991661579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A387404.P11330683621991661579

/-! ## A387404.P7376610089668861043

`filter[A091300(n+1), A353812(#)]`
-/

namespace A387404.P7376610089668861043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A387404.P7376610089668861043

/-! ## A387404.P71776257624137162

`filter[A091300(n+1), A358678(#)]`
-/

namespace A387404.P71776257624137162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A387404.P71776257624137162

/-! ## A387404.P10009179576430722639

`∩[A091300(n+1), A191218(n+1)]`
-/

namespace A387404.P10009179576430722639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P10009179576430722639

/-! ## A387404.P7506336287933375370

`∩[A091300(n+1), A228058(n+1)]`
-/

namespace A387404.P7506336287933375370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P7506336287933375370

/-! ## A387404.P8872886223391287113

`∩[A091300(n+1), A351535(n+1)]`
-/

namespace A387404.P8872886223391287113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387404.P8872886223391287113

/-! ## A387404.P6321202108057529560

`filter[A172182(n+1), A358678(#)]`
-/

namespace A387404.P6321202108057529560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A387404.P6321202108057529560

/-! ## A387404.P4118497592496867720

`filter[A291745(n+1), A358678(#)]`
-/

namespace A387404.P4118497592496867720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358678 (f1 j).toNat = 1) n)

end

end A387404.P4118497592496867720

/-!
# A387405: a(n) is the least k that is a multiple of d=A240991(n), with abundancy ratio sigma(k)/k equal to (sigma(d)+1)/d, or -1 if no such k exists.

The programs for A387405, there is no canonical definition to state claims against.
-/

/-! ## A387405.P17008309604618062191

`A006530(A240991(n+1))*A240991(n+1)`
-/

namespace A387405.P17008309604618062191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A240991 (n + 1)).toNat * A240991 (n + 1)

end

end A387405.P17008309604618062191

/-! ## A387405.P18387191493603706711

`A253560(A240991(n+1))`
-/

namespace A387405.P18387191493603706711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (A240991 (n + 1)).toNat

end

end A387405.P18387191493603706711

/-! ## A387405.P17912280708318945703

`A050399(A240991(n+1))`
-/

namespace A387405.P17912280708318945703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (A240991 (n + 1)).toNat

end

end A387405.P17912280708318945703

/-! ## A387405.P8623347615000704948

`A050399(eq[1, A240923(n+1)]+1)`
-/

namespace A387405.P8623347615000704948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050399 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A387405.P8623347615000704948

/-! ## A387405.P14269453380428226135

`(eq[1, A240923(n+1)]+1)*A284695(A240991(n+1))`
-/

namespace A387405.P14269453380428226135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A284695 (A240991 (n + 1)).toNat

end

end A387405.P14269453380428226135

/-!
# A387406: Numbers k such that sigma(A253560(k)) / A253560(k) is equal to (sigma(k)+1) / k, where A253560(k) = k multiplied by its largest prime factor.

The programs for A387406, there is no canonical definition to state claims against.
-/

/-! ## A387406.P423336839381380680

`∩[A011775(n+1), A396597(n+1)]`
-/

namespace A387406.P423336839381380680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387406.P423336839381380680

/-! ## A387406.P5277808716879568236

`∩[A326696(n+1), A396597(n+1)]`
-/

namespace A387406.P5277808716879568236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387406.P5277808716879568236

/-! ## A387406.P434573096372612973

`∩[A011775(n+1), A132858(n+1)]`
-/

namespace A387406.P434573096372612973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387406.P434573096372612973

/-! ## A387406.P4066590147572133700

`∩[A011775(n+1), A132982(n+1)]`
-/

namespace A387406.P4066590147572133700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387406.P4066590147572133700

/-! ## A387406.P14651059540984612449

`∩[A011775(n+1), A027855(n+1)]`
-/

namespace A387406.P14651059540984612449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387406.P14651059540984612449

/-!
# A387407: Partial sums of A387422, where A387422 is the length of the maximal common prefix of the binary expansions of n and sigma(n).

The programs for A387407, there is no canonical definition to state claims against.
-/

/-! ## A387407.P14135334072839646243

`a(n-1)+A387422(n+1)` with `a(0)=1`
-/

namespace A387407.P14135334072839646243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A387422 (n + 1)

end

end A387407.P14135334072839646243

/-! ## A387407.P5262383062162583567

`A387408(n+1)+A387409(n+1)`
-/

namespace A387407.P5262383062162583567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387408 (n + 1) + A387409 (n + 1)

end

end A387407.P5262383062162583567

/-! ## A387407.P12826838187886613433

`∑[A387422(1+n)]`
-/

namespace A387407.P12826838187886613433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387407.P12826838187886613433

/-! ## A387407.P10737331061999514249

`A387422(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A387407.P10737331061999514249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A387422 (n + 1) + a (n - 1)

end

end A387407.P10737331061999514249

/-! ## A387407.P10183429171372670389

`A387409(n+1)+∑[A387412(1+n)]`
-/

namespace A387407.P10183429171372670389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387412 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387409 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387407.P10183429171372670389

/-! ## A387407.P5329372788077720738

`∑[A113473(n+1)-A387423(n+1)]`
-/

namespace A387407.P5329372788077720738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387407.P5329372788077720738

/-! ## A387407.P17298060257230984361

`A387408(n+1)+A387425(n+1)-A387424(n+1)`
-/

namespace A387407.P17298060257230984361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387408 (n + 1) + (A387425 (n + 1) - A387424 (n + 1))

end

end A387407.P17298060257230984361

/-!
# A387408: Partial sums of A387412, where A387412(n) is the length of the maximal common prefix of the binary expansions of n and A003961(n).

The programs for A387408, there is no canonical definition to state claims against.
-/

/-! ## A387408.P4106930237954135362

`a(n-1)+A387412(n+1)` with `a(0)=1`
-/

namespace A387408.P4106930237954135362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A387412 (n + 1)

end

end A387408.P4106930237954135362

/-! ## A387408.P13828345921553173617

`A387407(n+1)-A387409(n+1)`
-/

namespace A387408.P13828345921553173617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387407 (n + 1) - A387409 (n + 1)

end

end A387408.P13828345921553173617

/-! ## A387408.P2816221566511733872

`∑[A387412(1+n)]`
-/

namespace A387408.P2816221566511733872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387412 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387408.P2816221566511733872

/-! ## A387408.P466416579449963226

`A387412(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A387408.P466416579449963226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A387412 (n + 1) + a (n - 1)

end

end A387408.P466416579449963226

/-! ## A387408.P6757480250537528359

`∑[A113473(n+1)-A387413(n+1)]`
-/

namespace A387408.P6757480250537528359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387408.P6757480250537528359

/-! ## A387408.P5146056433274804273

`∑[A387422(n+1)]-A387409(n+1)`
-/

namespace A387408.P5146056433274804273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387409 (n + 1)

end

end A387408.P5146056433274804273

/-! ## A387408.P17806961619569611015

`A387407(n+1)+A387424(n+1)-A387425(n+1)`
-/

namespace A387408.P17806961619569611015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387407 (n + 1) + (A387424 (n + 1) - A387425 (n + 1))

end

end A387408.P17806961619569611015

/-! ## A387408.P326250131280268728

`∑[A070939(n+1)]-A387425(n+1)`
-/

namespace A387408.P326250131280268728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387425 (n + 1)

end

end A387408.P326250131280268728

/-!
# A387409: Partial sums of A387422 minus partial sums of A387412.

The programs for A387409, there is no canonical definition to state claims against.
-/

/-! ## A387409.P13145052634864251816

`A387407(n+1)-A387408(n+1)`
-/

namespace A387409.P13145052634864251816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387407 (n + 1) - A387408 (n + 1)

end

end A387409.P13145052634864251816

/-! ## A387409.P7642278037458422517

`A387425(n+1)-A387424(n+1)`
-/

namespace A387409.P7642278037458422517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387425 (n + 1) - A387424 (n + 1)

end

end A387409.P7642278037458422517

/-! ## A387409.P778793540362334924

`A387407(n+1)-∑[A387412(1+n)]`
-/

namespace A387409.P778793540362334924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387412 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387407 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387409.P778793540362334924

/-! ## A387409.P1695805154302315567

`∑[A387422(n+1)]-A387408(n+1)`
-/

namespace A387409.P1695805154302315567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387408 (n + 1)

end

end A387409.P1695805154302315567

/-! ## A387409.P9991910460875005109

`∑[A387422(n+1)-A387412(n+1)]`
-/

namespace A387409.P9991910460875005109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (n + 1) - A387412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387409.P9991910460875005109

/-! ## A387409.P7918157998533393642

`∑[A387413(n+1)-A387423(n+1)]`
-/

namespace A387409.P7918157998533393642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387413 (n + 1) - A387423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387409.P7918157998533393642

/-! ## A387409.P6410477898816754024

`∑[A387413(n+1)]-A387424(n+1)`
-/

namespace A387409.P6410477898816754024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387424 (n + 1)

end

end A387409.P6410477898816754024

/-! ## A387409.P13167676216658842369

`A387425(n+1)-∑[A387423(n+1)]`
-/

namespace A387409.P13167676216658842369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387425 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387409.P13167676216658842369

/-!
# A387410: Numbers k such that the odd part of (1+k) divides (1 + odd part of A048250(k)), where A048250 is sum of the squarefree divisors of n.

The programs for A387410, there is no canonical definition to state claims against.
-/

/-! ## A387410.P1416813519843008610

`∑[2^A309236(n²)]`
-/

namespace A387410.P1416813519843008610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A309236 (n ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387410.P1416813519843008610

/-! ## A387410.P912403055975336834

`∑[gcd(A000079(n), A019291(n+1))]`
-/

namespace A387410.P912403055975336834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A019291 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387410.P912403055975336834

/-! ## A387410.P7253219788047674203

`∑[A000079(n)%A333543(2*(n+1))]`
-/

namespace A387410.P7253219788047674203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A333543 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387410.P7253219788047674203

/-! ## A387410.P1584174424886962849

`∑[A060632(∑[A105518(3*n+5)^n])]`
-/

namespace A387410.P1584174424886962849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (3 * n + 5) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387410.P1584174424886962849

/-! ## A387410.P4215793424463419096

`or(A064084(n+1), A383506(A208759(n+4)))`
-/

namespace A387410.P4215793424463419096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064084 (n + 1)) (A383506 (A208759 (n + 4)).toNat)

end

end A387410.P4215793424463419096

/-!
# A387411: Numbers k such that the odd part of (1+k) divides (1+A003961(k)), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A387411, there is no canonical definition to state claims against.
-/

/-! ## A387411.P6252204490519751379

`∑[A178133(∑[A055642(n)^n]+3)]`
-/

namespace A387411.P6252204490519751379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (∑ j ∈ Finset.range (n + 1), f2 j + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387411.P6252204490519751379

/-! ## A387411.P8348826419600464771

`A320815(A007283(n))+A130251(n)`
-/

namespace A387411.P8348826419600464771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320815 (A007283 n).toNat + A130251 n

end

end A387411.P8348826419600464771

/-! ## A387411.P1125152940298512582

`A090178(n+1)-A066099(A383498(n))`
-/

namespace A387411.P1125152940298512582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) - A066099 (A383498 n).toNat

end

end A387411.P1125152940298512582

/-! ## A387411.P16403714211372642504

`A270812(n+1)+A061395(A005179(n+1)²)`
-/

namespace A387411.P16403714211372642504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270812 (n + 1) + A061395 (A005179 (n + 1) ^ 2).toNat

end

end A387411.P16403714211372642504

/-! ## A387411.P13421314955396544637

`A000961(2*n+1)-A357722(A017979(2*n+1))`
-/

namespace A387411.P13421314955396544637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (2 * n + 1) - A357722 ((A017979 (2 * n + 1)).toNat + 11)

end

end A387411.P13421314955396544637

/-!
# A387412: The length of the maximal common prefix of the binary expansions of n and A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A387412, there is no canonical definition to state claims against.
-/

/-! ## A387412.P16387457641475825036

`1+A000523(n+1)-A387413(n+1)`
-/

namespace A387412.P16387457641475825036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (n + 1) - A387413 (n + 1)

end

end A387412.P16387457641475825036

/-! ## A387412.P7680142378527572586

`A113473(n+1)-A387413(n+1)`
-/

namespace A387412.P7680142378527572586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387413 (n + 1)

end

end A387412.P7680142378527572586

/-! ## A387412.P14588606757099443476

`A387422(n+1)+A387423(n+1)-A387413(n+1)`
-/

namespace A387412.P14588606757099443476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (n + 1) + (A387423 (n + 1) - A387413 (n + 1))

end

end A387412.P14588606757099443476

/-! ## A387412.P11712817139071067238

`runs[fp[A387408(n+1)]]`
-/

namespace A387412.P11712817139071067238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387408 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A387412.P11712817139071067238

/-! ## A387412.P10930997915883239412

`∑[A010051(A260443(n+1))]-A387413(n+1)`
-/

namespace A387412.P10930997915883239412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A260443 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387413 (n + 1)

end

end A387412.P10930997915883239412

/-!
# A387413: The length of binary expansion of n minus the length of the maximal common prefix of the binary expansions of n and A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A387413, there is no canonical definition to state claims against.
-/

/-! ## A387413.P16173174725704947350

`1+A000523(n+1)-A387412(n+1)`
-/

namespace A387413.P16173174725704947350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (n + 1) - A387412 (n + 1)

end

end A387413.P16173174725704947350

/-! ## A387413.P13257663125191551354

`Δ[A387425(A028310(n))]`
-/

namespace A387413.P13257663125191551354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387425 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387413.P13257663125191551354

/-! ## A387413.P15467267979500295744

`A113473(1+n)-A387412(n+1)`
-/

namespace A387413.P15467267979500295744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (1 + n) - A387412 (n + 1)

end

end A387413.P15467267979500295744

/-! ## A387413.P997746019061506356

`A387425(n+1)-A387425(A028310(n))`
-/

namespace A387413.P997746019061506356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387425 (n + 1) - A387425 (A028310 n).toNat

end

end A387413.P997746019061506356

/-! ## A387413.P12864139478613006454

`A387422(n+1)+A387423(n+1)-A387412(n+1)`
-/

namespace A387413.P12864139478613006454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387422 (n + 1) + (A387423 (n + 1) - A387412 (n + 1))

end

end A387413.P12864139478613006454

/-! ## A387413.P8390243109343140556

`Δ[A387425(A000007(n)+n)]`
-/

namespace A387413.P8390243109343140556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387425 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387413.P8390243109343140556

/-! ## A387413.P5086899777536795165

`A070939(2*n+3)-A387412(n+1)-1`
-/

namespace A387413.P5086899777536795165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * n + 3) - A387412 (n + 1) - 1

end

end A387413.P5086899777536795165

/-!
# A387414: Numbers k such that the binary expansion of k is a prefix of the binary expansion of A003961(k), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A387414, there is no canonical definition to state claims against.
-/

/-! ## A387414.P4245600101808706473

`record[gcd(n+1, A387413(n+1))]`
-/

namespace A387414.P4245600101808706473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A387413 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387414.P4245600101808706473

/-! ## A387414.P16339679816547256672

`record[gcd(1+A003961(n+1), n+2)]-1`
-/

namespace A387414.P16339679816547256672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 + A003961 (n + 1)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1

end

end A387414.P16339679816547256672

/-!
# A387415: Numbers k such that the odd part of (1+k) divides (1 + odd part of A001615(k)), where A001615 is Dedekind's psi-function.

The programs for A387415, there is no canonical definition to state claims against.
-/

/-! ## A387415.P17333442348116204069

`A387418(A094270(n+1))`
-/

namespace A387415.P17333442348116204069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387418 (A094270 (n + 1)).toNat

end

end A387415.P17333442348116204069

/-! ## A387415.P16365380677352277596

`filter[A336700(n+1), A120522(#)]`
-/

namespace A387415.P16365380677352277596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120522 (f1 j).toNat = 1) n)

end

end A387415.P16365380677352277596

/-! ## A387415.P5724192718633103881

`filter[A387418(n+1), A086694(#)]`
-/

namespace A387415.P5724192718633103881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086694 (f1 j).toNat = 1) n)

end

end A387415.P5724192718633103881

/-! ## A387415.P16773611624153293569

`filter[A336700(n+1), A166280(#)]`
-/

namespace A387415.P16773611624153293569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166280 (f1 j).toNat = 1) n)

end

end A387415.P16773611624153293569

/-! ## A387415.P10072081331269649503

`filter[A387418(n+1), A130657(#)]`
-/

namespace A387415.P10072081331269649503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130657 (f1 j).toNat = 1) n)

end

end A387415.P10072081331269649503

/-!
# A387417: The largest proper divisor of the n-th primitive nondeficient number.

The programs for A387417, there is no canonical definition to state claims against.
-/

/-! ## A387417.P17401309926829483493

`A032742(A006039(n+1))`
-/

namespace A387417.P17401309926829483493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A006039 (n + 1)).toNat

end

end A387417.P17401309926829483493

/-! ## A387417.P18296710228929856963

`A387717(A006039(2*n+1-n))`
-/

namespace A387417.P18296710228929856963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387717 (A006039 (2 * n + 1 - n)).toNat

end

end A387417.P18296710228929856963

/-! ## A387417.P9769166765280782239

`A289441(A006039(n+1)%A042894(n))`
-/

namespace A387417.P9769166765280782239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (Int.tmod (A006039 (n + 1)) (A042894 n)).toNat

end

end A387417.P9769166765280782239

/-! ## A387417.P3829024824317101055

`A387717(A006039(n+1))%A214493(n)`
-/

namespace A387417.P3829024824317101055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387717 (A006039 (n + 1)).toNat) (A214493 n)

end

end A387417.P3829024824317101055

/-! ## A387417.P12379490924425995088

`A032742(filter[A023196(n+1), A341619(#)])`
-/

namespace A387417.P12379490924425995088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)).toNat

end

end A387417.P12379490924425995088

/-! ## A387417.P9543679901696726416

`A032742(filter[A175495(n+1), A341619(#)])`
-/

namespace A387417.P9543679901696726416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)).toNat

end

end A387417.P9543679901696726416

/-! ## A387417.P10768600610652529263

`A032742(filter[A177085(n+1), A341619(#)])`
-/

namespace A387417.P10768600610652529263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (f1 (SequenceMachineLib.nth (fun j => A341619 (f1 j).toNat = 1) n)).toNat

end

end A387417.P10768600610652529263

/-! ## A387417.P7647773673243844533

`A289441(A006039(n+1))%A300629(n+1)`
-/

namespace A387417.P7647773673243844533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289441 (A006039 (n + 1)).toNat) (A300629 (n + 1))

end

end A387417.P7647773673243844533

/-! ## A387417.P1922130275150352381

`A289441(A006039(n+1))%A238026(n+1)`
-/

namespace A387417.P1922130275150352381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289441 (A006039 (n + 1)).toNat) (A238026 (n + 1))

end

end A387417.P1922130275150352381

/-!
# A387418: Numbers k such that the odd part of (1+k) divides (1 + odd part of A034448(k)), where A034448 is unitary sigma (usigma).

The programs for A387418, there is no canonical definition to state claims against.
-/

/-! ## A387418.P732956381848218976

`∑[record[A054842(A302930(n+1))]]`
-/

namespace A387418.P732956381848218976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A302930 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387418.P732956381848218976

/-! ## A387418.P6513756405951734334

`or(A165199(A283908(n)), A283865(n))`
-/

namespace A387418.P6513756405951734334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165199 (A283908 n).toNat) (A283865 n)

end

end A387418.P6513756405951734334

/-! ## A387418.P6581512327804006635

`or(A165199(A284022(n)), A283865(n))`
-/

namespace A387418.P6581512327804006635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165199 (A284022 n).toNat) (A283865 n)

end

end A387418.P6581512327804006635

/-! ## A387418.P16518940636026768650

`or(A165199(A290230(2*n)%(2^(n+1))), A283865(n))`
-/

namespace A387418.P16518940636026768650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165199 (Int.tmod (A290230 (2 * n)) (2 ^ (n + 1) : ℤ)).toNat) (A283865 n)

end

end A387418.P16518940636026768650

/-! ## A387418.P16193119159022687130

`or(A165199(A290418(n-(1-n)%(n+1))), A283865(n))`
-/

namespace A387418.P16193119159022687130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165199 (A290418 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat).toNat) (A283865 n)

end

end A387418.P16193119159022687130

/-!
# A387419: Numbers k such that the odd part of (1+k) divides (1 + odd part of A003959(k)), where A003959 is multiplicative with a(p^e) = (p+1)^e.

The programs for A387419, there is no canonical definition to state claims against.
-/

/-! ## A387419.P6442260857009969581

`A123621(A340093(n+1))`
-/

namespace A387419.P6442260857009969581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A340093 (n + 1)).toNat

end

end A387419.P6442260857009969581

/-! ## A387419.P8647115685579761596

`record[A023888(A384320(n+1))]`
-/

namespace A387419.P8647115685579761596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A384320 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387419.P8647115685579761596

/-! ## A387419.P3521676782996210824

`record[A383075(A344979(n+1))]`
-/

namespace A387419.P3521676782996210824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383075 (A344979 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387419.P3521676782996210824

/-! ## A387419.P4592225558174142299

`record[A383075(A383099(n+1))]`
-/

namespace A387419.P4592225558174142299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383075 (A383099 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387419.P4592225558174142299

/-! ## A387419.P311283500628268917

`record[A383075(n+1)]%A383041(n+1)`
-/

namespace A387419.P311283500628268917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A383041 (n + 1))

end

end A387419.P311283500628268917

/-!
# A387420: Numbers k such that sigma(k) < 2*A057521(k), where A057521(n) gives the powerful part of n, and sigma is the sum of divisors function.

The programs for A387420, there is no canonical definition to state claims against.
-/

/-! ## A387420.P3274720950325122112

`record[A125746(A001694(n+1))]`
-/

namespace A387420.P3274720950325122112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A001694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387420.P3274720950325122112

/-! ## A387420.P8730547292998168225

`filter[A001694(1+n), A294934(#)]`
-/

namespace A387420.P8730547292998168225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A387420.P8730547292998168225

/-! ## A387420.P13907937246106414958

`filter[A001694(1+n), A294935(#)]`
-/

namespace A387420.P13907937246106414958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A387420.P13907937246106414958

/-! ## A387420.P7872431035910334360

`∩[A001694(n+1), A005100(n+1)]`
-/

namespace A387420.P7872431035910334360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387420.P7872431035910334360

/-! ## A387420.P17894522692482904559

`∩[A001694(n+1), A136447(n+1)]`
-/

namespace A387420.P17894522692482904559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387420.P17894522692482904559

/-! ## A387420.P4265856091067514265

`∩[A001694(n+1), A263837(n+1)]`
-/

namespace A387420.P4265856091067514265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387420.P4265856091067514265

/-! ## A387420.P18378314573998062936

`∩[A001694(n+1), A392650(n+1)]`
-/

namespace A387420.P18378314573998062936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387420.P18378314573998062936

/-! ## A387420.P3044707320888221519

`filter[A005100(n+1), A112526(#)]`
-/

namespace A387420.P3044707320888221519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A387420.P3044707320888221519

/-! ## A387420.P8080532648123730190

`filter[A136447(n+1), A112526(#)]`
-/

namespace A387420.P8080532648123730190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A387420.P8080532648123730190

/-! ## A387420.P8428147533119508265

`filter[A263837(n+1), A112526(#)]`
-/

namespace A387420.P8428147533119508265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A387420.P8428147533119508265

/-! ## A387420.P6238777912867871345

`filter[A392650(n+1), A112526(#)]`
-/

namespace A387420.P6238777912867871345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A387420.P6238777912867871345

/-!
# A387421: Numbers k such that sigma(k) >= 2*A057521(k), where A057521(n) gives the powerful part of n, and sigma is the sum of divisors function.

The programs for A387421, the canonical program `A387421.P16169722484517540576` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387421 has offset 1).

The definition of A387421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387421.P5402522248762233411

`lt[n, A326184(n+1)]+1`
-/

namespace A387421.P5402522248762233411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326184 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387421.P5402522248762233411

namespace A387421

/-- `lt[n, A326184(n+1)]+1` -/
def P5402522248762233411.Spec : Prop :=
  ∀ n, (P5402522248762233411.a n : ℤ) = A387421 (n + 1)

end A387421

/-! ## A387421.P16903156050296682867

`comp[A387420(1+n)-1]+1`
-/

namespace A387421.P16903156050296682867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387421.P16903156050296682867

namespace A387421

/-- `comp[A387420(1+n)-1]+1` -/
def P16903156050296682867.Spec : Prop :=
  ∀ n, (P16903156050296682867.a n : ℤ) = A387421 (n + 1)

end A387421

/-! ## A387421.P16169722484517540576

`∪[A005101(n+1), A052485(n+1)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A387421

/-- `∪[A005101(n+1), A052485(n+1)]` -/
def P16169722484517540576.Spec : Prop :=
  ∀ n, (P16169722484517540576.a n : ℤ) = A387421 (n + 1)

theorem P16169722484517540576.correct : P16169722484517540576.Spec := by
  intro n
  simp only [A387421, Nat.add_sub_cancel]

end A387421

/-! ## A387421.P7316077313914125862

`comp[A057521(n+1)*A294934(n+1)]`
-/

namespace A387421.P7316077313914125862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) * A294934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A387421.P7316077313914125862

namespace A387421

/-- `comp[A057521(n+1)*A294934(n+1)]` -/
def P7316077313914125862.Spec : Prop :=
  ∀ n, (P7316077313914125862.a n : ℤ) = A387421 (n + 1)

end A387421

/-! ## A387421.P18329773886840988941

`comp[A001694(n+1)-A187795(A001694(n+1))]`
-/

namespace A387421.P18329773886840988941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1) - A187795 (A001694 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A387421.P18329773886840988941

namespace A387421

/-- `comp[A001694(n+1)-A187795(A001694(n+1))]` -/
def P18329773886840988941.Spec : Prop :=
  ∀ n, (P18329773886840988941.a n : ℤ) = A387421 (n + 1)

end A387421

/-!
# A387422: The length of the maximal common prefix of the binary expansions of n and sigma(n), where sigma is the sum of divisors function.

The programs for A387422, there is no canonical definition to state claims against.
-/

/-! ## A387422.P12383555551369219639

`1+A000523(n+1)-A387423(n+1)`
-/

namespace A387422.P12383555551369219639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (n + 1) - A387423 (n + 1)

end

end A387422.P12383555551369219639

/-! ## A387422.P7377475571785642469

`∑[A036987(n)]-A387423(n+1)`
-/

namespace A387422.P7377475571785642469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387423 (n + 1)

end

end A387422.P7377475571785642469

/-! ## A387422.P7971631965751642177

`A113473(n+1)-A387423(n+1)`
-/

namespace A387422.P7971631965751642177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387423 (n + 1)

end

end A387422.P7971631965751642177

/-! ## A387422.P12505811189680893611

`A113473(n+1)-(A387424(n+1)-A387424(A028310(n)))`
-/

namespace A387422.P12505811189680893611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - (A387424 (n + 1) - A387424 (A028310 n).toNat)

end

end A387422.P12505811189680893611

/-! ## A387422.P7433953531219755664

`runs[fp[A387407(n+1)]]`
-/

namespace A387422.P7433953531219755664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387407 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A387422.P7433953531219755664

/-!
# A387423: The length of binary expansion of n minus the length of the maximal common prefix of the binary expansions of n and sigma(n), where sigma is the sum of divisors function.

The programs for A387423, there is no canonical definition to state claims against.
-/

/-! ## A387423.P9371265709701552401

`1+A000523(n+1)-A387422(n+1)`
-/

namespace A387423.P9371265709701552401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (n + 1) - A387422 (n + 1)

end

end A387423.P9371265709701552401

/-! ## A387423.P15948206110187923557

`Δ[A387424(A028310(n))]`
-/

namespace A387423.P15948206110187923557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387424 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387423.P15948206110187923557

/-! ## A387423.P4196910048175180366

`A113473(n+1)-A387422(n+1)`
-/

namespace A387423.P4196910048175180366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387422 (n + 1)

end

end A387423.P4196910048175180366

/-! ## A387423.P12879232916880297833

`A387424(n+1)-A387424(A028310(n))`
-/

namespace A387423.P12879232916880297833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387424 (n + 1) - A387424 (A028310 n).toNat

end

end A387423.P12879232916880297833

/-! ## A387423.P1142132937403961987

`Δ[A387424((1+A004273(n))/A040000(n))]`
-/

namespace A387423.P1142132937403961987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387424 (SequenceMachineLib.roundAway ((1 + A004273 n : ℚ) / (A040000 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387423.P1142132937403961987

/-! ## A387423.P1891911618004199626

`A387412(n+1)+A387413(n+1)-A387422(n+1)`
-/

namespace A387423.P1891911618004199626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387412 (n + 1) + (A387413 (n + 1) - A387422 (n + 1))

end

end A387423.P1891911618004199626

/-!
# A387424: Partial sums of A387423.

The programs for A387424, there is no canonical definition to state claims against.
-/

/-! ## A387424.P10492096881841099496

`a(n-1)+A387423(n+1)` with `a(0)=0, a(1)=1`
-/

namespace A387424.P10492096881841099496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A387423 (n + 1)

end

end A387424.P10492096881841099496

/-! ## A387424.P10069255848640492559

`∑[A387423(1+n)]`
-/

namespace A387424.P10069255848640492559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387423 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387424.P10069255848640492559

/-! ## A387424.P4177534825140090147

`A387423(n+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A387424.P4177534825140090147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A387423 (n + 1) + a (n - 1)

end

end A387424.P4177534825140090147

/-! ## A387424.P2461729551161673706

`A387425(n+1)-A387409(n+1)`
-/

namespace A387424.P2461729551161673706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387425 (n + 1) - A387409 (n + 1)

end

end A387424.P2461729551161673706

/-! ## A387424.P1512903435681569210

`∑[A113473(n+1)-A387422(n+1)]`
-/

namespace A387424.P1512903435681569210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387424.P1512903435681569210

/-! ## A387424.P17839976154539378310

`∑[A387413(n+1)]-A387409(n+1)`
-/

namespace A387424.P17839976154539378310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387409 (n + 1)

end

end A387424.P17839976154539378310

/-! ## A387424.P10750975358562261276

`∑[1+A000523(n+1)-A387422(n+1)]`
-/

namespace A387424.P10750975358562261276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (n + 1) - A387422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387424.P10750975358562261276

/-! ## A387424.P409635324346636979

`A387408(n+1)+A387425(n+1)-A387407(n+1)`
-/

namespace A387424.P409635324346636979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387408 (n + 1) + (A387425 (n + 1) - A387407 (n + 1))

end

end A387424.P409635324346636979

/-! ## A387424.P12804694782907310230

`floor(a(A289207(n+1))+A387423(n+1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A387424.P12804694782907310230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A289207 (n + 1)).toNat + A387423 (n + 1)

end

end A387424.P12804694782907310230

/-! ## A387424.P9884736188165245753

`∑[A000523(2*(n+1))]-A387407(n+1)`
-/

namespace A387424.P9884736188165245753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387407 (n + 1)

end

end A387424.P9884736188165245753

/-!
# A387425: Partial sums of A387413.

The programs for A387425, there is no canonical definition to state claims against.
-/

/-! ## A387425.P9419316150182143678

`∑[A387413(1+n)]`
-/

namespace A387425.P9419316150182143678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387413 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387425.P9419316150182143678

/-! ## A387425.P10037253761334240840

`A387413(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A387425.P10037253761334240840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A387413 (n + 1) + a (n - 1)

end

end A387425.P10037253761334240840

/-! ## A387425.P14294077990216587517

`A387424(1+n)+A387409(n+1)`
-/

namespace A387425.P14294077990216587517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387424 (1 + n) + A387409 (n + 1)

end

end A387425.P14294077990216587517

/-! ## A387425.P2979122278671805261

`A387409(n+1)+∑[A387423(n+1)]`
-/

namespace A387425.P2979122278671805261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387409 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387425.P2979122278671805261

/-! ## A387425.P13504862918953987246

`∑[A113473(n+1)]-A387408(n+1)`
-/

namespace A387425.P13504862918953987246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387408 (n + 1)

end

end A387425.P13504862918953987246

/-! ## A387425.P2784027928998037383

`∑[A113473(n+1)-A387412(n+1)]`
-/

namespace A387425.P2784027928998037383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A387412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387425.P2784027928998037383

/-! ## A387425.P607949488389828655

`∑[1+A000523(n+1)-A387412(n+1)]`
-/

namespace A387425.P607949488389828655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000523 (n + 1) - A387412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387425.P607949488389828655

/-! ## A387425.P6217079355750656619

`A387407(n+1)+A387424(n+1)-A387408(n+1)`
-/

namespace A387425.P6217079355750656619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387407 (n + 1) + (A387424 (n + 1) - A387408 (n + 1))

end

end A387425.P6217079355750656619

/-! ## A387425.P17393139974392795219

`∑[A000523(2*(n+1))]-A387408(n+1)`
-/

namespace A387425.P17393139974392795219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387408 (n + 1)

end

end A387425.P17393139974392795219

/-!
# A387427: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(4*n+2*k,k).

The programs for A387427, the canonical program `A387427.P8683795624175681467` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387427 has offset 0).

The definition of A387427 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(4*n+2*#, #)]` (program `A387427.P8683795624175681467`, by `A387427.P8683795624175681467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387427.P8683795624175681467

`∑{#}[n, C(n, #)*C(4*n+2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387427

/-- `∑{#}[n, C(n, #)*C(4*n+2*#, #)]` -/
def P8683795624175681467.Spec : Prop :=
  ∀ n, (P8683795624175681467.a n : ℤ) = A387427 n

theorem P8683795624175681467.correct : P8683795624175681467.Spec := by
  intro n
  simp only [A387427]

end A387427

/-!
# A387428: Expansion of 1/sqrt(1 - 12*x - 4*x^2).

The programs for A387428, the canonical program `A387428.P2131666305243882414` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387428 has offset 0).

The definition of A387428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387428.P2131666305243882414

`∑{#}[floor(n/2), 10^#*6^(n-2*#)*C(n, 2*#)*C(2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387428

/-- `∑{#}[floor(n/2), 10^#*6^(n-2*#)*C(n, 2*#)*C(2*#, #)]` -/
def P2131666305243882414.Spec : Prop :=
  ∀ n, P2131666305243882414.a n = (A387428 n : ℚ)

end A387428

/-! ## A387428.P14755429157706434838

`A386621(∑[n+4]+2)`
-/

namespace A387428.P14755429157706434838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386621 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A387428.P14755429157706434838

namespace A387428

/-- `A386621(∑[n+4]+2)` -/
def P14755429157706434838.Spec : Prop :=
  ∀ n, P14755429157706434838.a n = A387428 n

end A387428

/-!
# A387429: Self-convolution of n-th antidiagonal of the natural number array (so named in the Comments section of A000027).

The programs for A387429, the canonical program `A387429.P302094468979754763` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387429 has offset 1).

The definition of A387429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387429.P14416496335037654380

`ogf((1+6x+16x^2+6x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A387429.P14416496335037654380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 16, 6, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A387429.P14416496335037654380

namespace A387429

/-- `ogf((1+6x+16x^2+6x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P14416496335037654380.Spec : Prop :=
  ∀ n, P14416496335037654380.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P302094468979754763

`(n+1)*(4+5*(n+1)²+3*(n+1)^4)/12`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387429

/-- `(n+1)*(4+5*(n+1)²+3*(n+1)^4)/12` -/
def P302094468979754763.Spec : Prop :=
  ∀ n, P302094468979754763.a n = (A387429 (n + 1) : ℚ)

end A387429

/-! ## A387429.P10325144029017781763

`∑[10*C(C(n+1, 2)+1, 2)+1]`
-/

namespace A387429.P10325144029017781763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (Nat.choose (n + 1) 2 + 1) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P10325144029017781763

namespace A387429

/-- `∑[10*C(C(n+1, 2)+1, 2)+1]` -/
def P10325144029017781763.Spec : Prop :=
  ∀ n, (P10325144029017781763.a n : ℤ) = A387429 (n + 1)

end A387429

/-! ## A387429.P919686495244011043

`∑[A222408(n)]`
-/

namespace A387429.P919686495244011043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P919686495244011043

namespace A387429

/-- `∑[A222408(n)]` -/
def P919686495244011043.Spec : Prop :=
  ∀ n, P919686495244011043.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P14953335018051053892

`∑[∑[A008531(n)]]`
-/

namespace A387429.P14953335018051053892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P14953335018051053892

namespace A387429

/-- `∑[∑[A008531(n)]]` -/
def P14953335018051053892.Spec : Prop :=
  ∀ n, P14953335018051053892.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P1749929580423998751

`∑[ceil(A365205(n+1)/2)]`
-/

namespace A387429.P1749929580423998751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A365205 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P1749929580423998751

namespace A387429

/-- `∑[ceil(A365205(n+1)/2)]` -/
def P1749929580423998751.Spec : Prop :=
  ∀ n, P1749929580423998751.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P327824890781451074

`A072474(n+1)-∑[∑[n]]`
-/

namespace A387429.P327824890781451074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072474 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A387429.P327824890781451074

namespace A387429

/-- `A072474(n+1)-∑[∑[n]]` -/
def P327824890781451074.Spec : Prop :=
  ∀ n, P327824890781451074.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P294287991592533668

`A328994(n+1)-A152457(n)`
-/

namespace A387429.P294287991592533668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328994 (n + 1) - A152457 n

end

end A387429.P294287991592533668

namespace A387429

/-- `A328994(n+1)-A152457(n)` -/
def P294287991592533668.Spec : Prop :=
  ∀ n, P294287991592533668.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P7003151464449410415

`A337895(n+1)+A292053(n+1)`
-/

namespace A387429.P7003151464449410415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337895 (n + 1) + A292053 (n + 1)

end

end A387429.P7003151464449410415

namespace A387429

/-- `A337895(n+1)+A292053(n+1)` -/
def P7003151464449410415.Spec : Prop :=
  ∀ n, P7003151464449410415.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P6055342163250531073

`A260513(n+1)+A260513(n+1)-A005900(n+1)`
-/

namespace A387429.P6055342163250531073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260513 (n + 1) + (A260513 (n + 1) - A005900 (n + 1))

end

end A387429.P6055342163250531073

namespace A387429

/-- `A260513(n+1)+A260513(n+1)-A005900(n+1)` -/
def P6055342163250531073.Spec : Prop :=
  ∀ n, P6055342163250531073.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P107263246952138978

`A002522(n+1)*A006003(n+1)-A072474(n+1)`
-/

namespace A387429.P107263246952138978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) * A006003 (n + 1) - A072474 (n + 1)

end

end A387429.P107263246952138978

namespace A387429

/-- `A002522(n+1)*A006003(n+1)-A072474(n+1)` -/
def P107263246952138978.Spec : Prop :=
  ∀ n, P107263246952138978.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P16179570314778859493

`∑[A032527(n²+n+1)]`
-/

namespace A387429.P16179570314778859493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P16179570314778859493

namespace A387429

/-- `∑[A032527(n²+n+1)]` -/
def P16179570314778859493.Spec : Prop :=
  ∀ n, P16179570314778859493.a n = A387429 (n + 1)

end A387429

/-! ## A387429.P6696028160554100226

`∑[A239767(n²+n+1)]`
-/

namespace A387429.P6696028160554100226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387429.P6696028160554100226

namespace A387429

/-- `∑[A239767(n²+n+1)]` -/
def P6696028160554100226.Spec : Prop :=
  ∀ n, P6696028160554100226.a n = A387429 (n + 1)

end A387429

/-!
# A387430: a(n) = Sum_{k=0..n} (n-i)^k * (n+i)^(n-k) * binomial(n,k)^2, where i is the imaginary unit.

The programs for A387430, the canonical program `A387430.P9755534471040945316` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387430 has offset 0).

The definition of A387430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387430.P9755534471040945316

`∑{#}[floor(n/2), n^(n-2*#)*C(2*(n-#), n-#)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387430

/-- `∑{#}[floor(n/2), n^(n-2*#)*C(2*(n-#), n-#)*C(n-#, #)]` -/
def P9755534471040945316.Spec : Prop :=
  ∀ n, P9755534471040945316.a n = (A387430 n : ℚ)

end A387430

/-! ## A387430.P9446901282900063009

`A386621(∑[4*n])`
-/

namespace A387430.P9446901282900063009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387430.P9446901282900063009

namespace A387430

/-- `A386621(∑[4*n])` -/
def P9446901282900063009.Spec : Prop :=
  ∀ n, P9446901282900063009.a n = A387430 n

end A387430

/-! ## A387430.P6127472596193419696

`C(A386621(A000217(2*n)+n), A266227(n+1))`
-/

namespace A387430.P6127472596193419696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A386621 (A000217 (2 * n) + (n : ℤ)).toNat).toNat (A266227 (n + 1)).toNat

end

end A387430.P6127472596193419696

namespace A387430

/-- `C(A386621(A000217(2*n)+n), A266227(n+1))` -/
def P6127472596193419696.Spec : Prop :=
  ∀ n, (P6127472596193419696.a n : ℤ) = A387430 n

end A387430

/-! ## A387430.P13993771344342119121

`record[A386621(n)/A153641(2*n+1)]`
-/

namespace A387430.P13993771344342119121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386621 n : ℚ) / (A153641 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387430.P13993771344342119121

namespace A387430

/-- `record[A386621(n)/A153641(2*n+1)]` -/
def P13993771344342119121.Spec : Prop :=
  ∀ n, P13993771344342119121.a n = (A387430 n : ℚ)

end A387430

/-!
# A387431: Triangle read by rows: T(n,k) is the number of unlabeled simple connected graphs with n vertices and treedepth k.

The programs for A387431, there is no canonical definition to state claims against.
-/

/-! ## A387431.P915579580188957243

`A305932(A321615(n)²)`
-/

namespace A387431.P915579580188957243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305932 (A321615 n ^ 2).toNat

end

end A387431.P915579580188957243

/-! ## A387431.P12164356366261411455

`∑{e}[A214765(A048993(n)), #]`
-/

namespace A387431.P12164356366261411455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214765 (A048993 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A387431.P12164356366261411455

/-! ## A387431.P9399904217777384805

`A032766(A048993(n)^A060240(n))`
-/

namespace A387431.P9399904217777384805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A048993 n : ℚ) ^ (A060240 n : ℤ))).toNat

end

end A387431.P9399904217777384805

/-! ## A387431.P9490390647365607938

`A072643(A395416(n)^A056792(n))`
-/

namespace A387431.P9490390647365607938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (SequenceMachineLib.roundAway ((A395416 n : ℚ) ^ (A056792 n : ℤ))).toNat

end

end A387431.P9490390647365607938

/-!
# A387432: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(4*n+3*k,k).

The programs for A387432, the canonical program `A387432.P2089207054050323142` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387432 has offset 0).

The definition of A387432 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(4*n+3*#, #)]` (program `A387432.P2089207054050323142`, by `A387432.P2089207054050323142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387432.P2089207054050323142

`∑{#}[n, C(n, #)*C(4*n+3*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387432

/-- `∑{#}[n, C(n, #)*C(4*n+3*#, #)]` -/
def P2089207054050323142.Spec : Prop :=
  ∀ n, (P2089207054050323142.a n : ℤ) = A387432 n

theorem P2089207054050323142.correct : P2089207054050323142.Spec := by
  intro n
  simp only [A387432]

end A387432

/-!
# A387438: Number of Hamiltonian paths in the n-Cameron graph.

The programs for A387438, the canonical program `A387438.P9435104830194757520` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387438 has offset 0).

The definition of A387438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387438.P9435104830194757520

`ogf((2+96x+94x^2+116x^3+82x^4+48x^5+10x^6)/(1-5x+5x^2-x^3+x^4-x^5+x^6-x^7))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387438

/-- `ogf((2+96x+94x^2+116x^3+82x^4+48x^5+10x^6)/(1-5x+5x^2-x^3+x^4-x^5+x^6-x^7))` -/
def P9435104830194757520.Spec : Prop :=
  ∀ n, P9435104830194757520.a n = A387438 n

theorem P9435104830194757520.correct : P9435104830194757520.Spec := by
  intro n
  simp only [A387438]

end A387438

/-!
# A387439: a(n) = (2*n + 1)*(12 + 11*n + 93*n^2 + 4*n^3)/3.

The programs for A387439, the canonical program `A387439.P7694640285450300545` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387439 has offset 0).

The definition of A387439 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A387439.anchor (n : ℕ) : (A387439 n : ℚ) = ((2 * n + 1) * (12 + 11 * n + 93 * n ^ 2 + 4 * n ^ 3) : ℚ) / 3` in `Proof.A387.A387439`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387439.P7694640285450300545

`(2*n+1)*(12+11*n+93*n²+4*n^3)/3`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387439

/-- `(2*n+1)*(12+11*n+93*n²+4*n^3)/3` -/
def P7694640285450300545.Spec : Prop :=
  ∀ n, P7694640285450300545.a n = (A387439 n : ℚ)

end A387439

/-!
# A387452: Expansion of (1/x) * Series_Reversion( x / ((1+x)^4 * (x+(1+x)^2)) ).

The programs for A387452, the canonical program `A387452.P13148147493710959061` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387452 has offset 0).

The definition of A387452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387452.P13148147493710959061

`1/(n+1)*∑{#}[n, C(n+1, #)*C(6*n-2*#+6, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387452

/-- `1/(n+1)*∑{#}[n, C(n+1, #)*C(6*n-2*#+6, n-#)]` -/
def P13148147493710959061.Spec : Prop :=
  ∀ n, P13148147493710959061.a n = (A387452 n : ℚ)

end A387452

/-!
# A387455: Partial sums of squares of A000975.

The programs for A387455, the canonical program `A387455.P12469050857944564494` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387455 has offset 0).

The definition of A387455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387455.P12469050857944564494

`ogf((x+4x^3)/(1-5x-x^2+25x^3-16x^4-20x^5+16x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387455

/-- `ogf((x+4x^3)/(1-5x-x^2+25x^3-16x^4-20x^5+16x^6))` -/
def P12469050857944564494.Spec : Prop :=
  ∀ n, P12469050857944564494.a n = A387455 n

theorem P12469050857944564494.correct : P12469050857944564494.Spec := by
  intro n
  simp only [A387455]

end A387455

/-! ## A387455.P1845506814409954094

`∑[floor(∑[2^n/3])²]`
-/

namespace A387455.P1845506814409954094
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387455.P1845506814409954094

namespace A387455

/-- `∑[floor(∑[2^n/3])²]` -/
def P1845506814409954094.Spec : Prop :=
  ∀ n, P1845506814409954094.a n = A387455 n

end A387455

/-! ## A387455.P13086913955480051243

`a(n-1)+floor(2^(n+1)/3)²` with `a(0)=0`
-/

namespace A387455.P13086913955480051243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊(2 ^ (n + 1) : ℚ) / 3⌋ ^ 2

end

end A387455.P13086913955480051243

namespace A387455

/-- `a(n-1)+floor(2^(n+1)/3)²` -/
def P13086913955480051243.Spec : Prop :=
  ∀ n, P13086913955480051243.a n = A387455 n

end A387455

/-! ## A387455.P12261839130080133358

`floor(∑[∑{#}[n, C(#, n-#+1)*2^(n-#)]²])`
-/

namespace A387455.P12261839130080133358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f2 n + 1), (Nat.choose k ((n : ℤ) - (k : ℤ) + 1).toNat : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A387455.P12261839130080133358

namespace A387455

/-- `floor(∑[∑{#}[n, C(#, n-#+1)*2^(n-#)]²])` -/
def P12261839130080133358.Spec : Prop :=
  ∀ n, P12261839130080133358.a n = A387455 n

end A387455

/-! ## A387455.P16689129059173401757

`or(∑[A000975(n)²], char[2])`
-/

namespace A387455.P16689129059173401757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A387455.P16689129059173401757

namespace A387455

/-- `or(∑[A000975(n)²], char[2])` -/
def P16689129059173401757.Spec : Prop :=
  ∀ n, P16689129059173401757.a n = A387455 n

end A387455

/-! ## A387455.P6566549803967893997

`round(∑[(A153772(n+3)/4)²])`
-/

namespace A387455.P6566549803967893997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A153772 (n + 3) : ℚ) / 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387455.P6566549803967893997

namespace A387455

/-- `round(∑[(A153772(n+3)/4)²])` -/
def P6566549803967893997.Spec : Prop :=
  ∀ n, P6566549803967893997.a n = A387455 n

end A387455

/-! ## A387455.P11819856761384155464

`∑[∑[A001045(n)]²-1]+n+1`
-/

namespace A387455.P11819856761384155464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A387455.P11819856761384155464

namespace A387455

/-- `∑[∑[A001045(n)]²-1]+n+1` -/
def P11819856761384155464.Spec : Prop :=
  ∀ n, P11819856761384155464.a n = A387455 n

end A387455

/-! ## A387455.P3868377757355610410

`∑[A000975(n)²]%A002694(n+2)`
-/

namespace A387455.P3868377757355610410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A002694 (n + 2))

end

end A387455.P3868377757355610410

namespace A387455

/-- `∑[A000975(n)²]%A002694(n+2)` -/
def P3868377757355610410.Spec : Prop :=
  ∀ n, P3868377757355610410.a n = A387455 n

end A387455

/-!
# A387458: a(n) = 4*(23 - 17*n + 8*n^2).

The programs for A387458, the canonical program `A387458.P16532837354093161660` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387458 has offset 1).

The definition of A387458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(23-17*(n+1)+8*(n+1)²)` (program `A387458.P16532837354093161660`, by `A387458.P16532837354093161660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387458.P4749364176063294787

`ogf((56-84x+92x^2)/(1-3x+3x^2-x^3))`
-/

namespace A387458.P4749364176063294787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [56, -84, 92] [1, -3, 3, -1] n

end

end A387458.P4749364176063294787

namespace A387458

/-- `ogf((56-84x+92x^2)/(1-3x+3x^2-x^3))` -/
def P4749364176063294787.Spec : Prop :=
  ∀ n, P4749364176063294787.a n = A387458 (n + 1)

end A387458

/-! ## A387458.P16532837354093161660

`4*(23-17*(n+1)+8*(n+1)²)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387458

/-- `4*(23-17*(n+1)+8*(n+1)²)` -/
def P16532837354093161660.Spec : Prop :=
  ∀ n, P16532837354093161660.a n = A387458 (n + 1)

theorem P16532837354093161660.correct : P16532837354093161660.Spec := by
  intro n
  simp only [A387458, Nat.add_sub_cancel]

end A387458

/-! ## A387458.P11455187805151116769

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=56, a(1)=84, a(2)=176`
-/

namespace A387458.P11455187805151116769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [56, 84, 176] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A387458.P11455187805151116769

namespace A387458

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11455187805151116769.Spec : Prop :=
  ∀ n, P11455187805151116769.a n = A387458 (n + 1)

theorem P11455187805151116769.correct : P11455187805151116769.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A387458, Nat.add_sub_cancel, A387458.P11455187805151116769.a, A387458.P16532837354093161660.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A387458, Nat.add_sub_cancel, A387458.P11455187805151116769.a, A387458.P16532837354093161660.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A387458

/-! ## A387458.P4497496417576150725

`56+C(8*n, 2)`
-/

namespace A387458.P4497496417576150725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 + Nat.choose (8 * n) 2

end

end A387458.P4497496417576150725

namespace A387458

/-- `56+C(8*n, 2)` -/
def P4497496417576150725.Spec : Prop :=
  ∀ n, (P4497496417576150725.a n : ℤ) = A387458 (n + 1)

theorem P4497496417576150725.correct : P4497496417576150725.Spec := by
  intro n
  simp only [A387458, Nat.add_sub_cancel, A387458.P4497496417576150725.a, A387458.P16532837354093161660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A387458

/-!
# A387459: a(n) = Sum_{k=0..n} (n-i)^k * (n+i)^(n-k), where i is the imaginary unit.

The programs for A387459, there is no canonical definition to state claims against.
-/

/-! ## A387459.P7878633481630964127

`A115415(n)+n*A115416(n)`
-/

namespace A387459.P7878633481630964127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115415 n + (n : ℤ) * A115416 n

end

end A387459.P7878633481630964127

/-!
# A387460: Composite cyclic numbers (subset of A050384) that are of the form 4n+1.

The programs for A387460, there is no canonical definition to state claims against.
-/

/-! ## A387460.P6000318148738968856

`filter[A050384(n+2), A133872(#)]`
-/

namespace A387460.P6000318148738968856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A387460.P6000318148738968856

/-! ## A387460.P14918309927980436980

`filter[A050384(2+n), A255817(#)]`
-/

namespace A387460.P14918309927980436980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255817 (f1 j).toNat = 1) n)

end

end A387460.P14918309927980436980

/-! ## A387460.P4931712304862296616

`filter[A050384(2+n), A290098(#)]`
-/

namespace A387460.P4931712304862296616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A387460.P4931712304862296616

/-! ## A387460.P6488039569431411551

`filter[A072902(n+2), A297086(#)]`
-/

namespace A387460.P6488039569431411551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387460.P6488039569431411551

/-! ## A387460.P6948857147366241002

`filter[A003277(n+2), A373978(#)]`
-/

namespace A387460.P6948857147366241002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A387460.P6948857147366241002

/-! ## A387460.P2827368539576931322

`filter[A091113(n+2), A297086(#)]`
-/

namespace A387460.P2827368539576931322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387460.P2827368539576931322

/-! ## A387460.P3137558192943791902

`filter[A050384(n+2), A373978(#)]`
-/

namespace A387460.P3137558192943791902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A387460.P3137558192943791902

/-! ## A387460.P18440290829187481579

`filter[A050384(n+2), A373993(#)]`
-/

namespace A387460.P18440290829187481579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373993 (f1 j).toNat = 1) n)

end

end A387460.P18440290829187481579

/-! ## A387460.P301549433411585337

`filter[A230918(n+2), A373978(#)]`
-/

namespace A387460.P301549433411585337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A387460.P301549433411585337

/-! ## A387460.P3744180967998533224

`filter[A354712(n+2), A297086(#)]`
-/

namespace A387460.P3744180967998533224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354712 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387460.P3744180967998533224

/-!
# A387461: Cyclic composite numbers that are the sum of two squared positive integers.

The programs for A387461, there is no canonical definition to state claims against.
-/

/-! ## A387461.P3664220501663072907

`record[A109395(A024508(n+1))]`
-/

namespace A387461.P3664220501663072907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A024508 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387461.P3664220501663072907

/-! ## A387461.P818493539491802041

`record[A109395(A071011(n+1))]`
-/

namespace A387461.P818493539491802041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (A071011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387461.P818493539491802041

/-! ## A387461.P11872286372753738059

`filter[A024508(n+1), A000001(#)]`
-/

namespace A387461.P11872286372753738059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000001 (f1 j).toNat = 1) n)

end

end A387461.P11872286372753738059

/-! ## A387461.P2099849616940791075

`filter[A007692(n+1), A297086(#)]`
-/

namespace A387461.P2099849616940791075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387461.P2099849616940791075

/-! ## A387461.P552127855908612043

`filter[A024409(n+1), A297086(#)]`
-/

namespace A387461.P552127855908612043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387461.P552127855908612043

/-!
# A387462: Composite cyclic numbers that are of the form 4n-1.

The programs for A387462, there is no canonical definition to state claims against.
-/

/-! ## A387462.P10144702234707434615

`filter[A050384(1+n), A021913(#)]`
-/

namespace A387462.P10144702234707434615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A387462.P10144702234707434615

/-! ## A387462.P12104145830236415565

`filter[A050384(1+n), A038189(#)]`
-/

namespace A387462.P12104145830236415565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A387462.P12104145830236415565

/-! ## A387462.P15321487971690905795

`filter[A091236(n+1), A000001(#)]`
-/

namespace A387462.P15321487971690905795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000001 (f1 j).toNat = 1) n)

end

end A387462.P15321487971690905795

/-! ## A387462.P9711038393105609338

`filter[A050384(1+n), A089013(#)]`
-/

namespace A387462.P9711038393105609338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A387462.P9711038393105609338

/-! ## A387462.P17655115571210050445

`filter[A050384(n+1), A292077(#)]`
-/

namespace A387462.P17655115571210050445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292077 (f1 j).toNat = 1) n)

end

end A387462.P17655115571210050445

/-! ## A387462.P12962359002573413696

`filter[A072901(n+1), A297086(#)]`
-/

namespace A387462.P12962359002573413696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387462.P12962359002573413696

/-! ## A387462.P1323285208769109422

`filter[A003277(n+1), A373979(#)]`
-/

namespace A387462.P1323285208769109422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A387462.P1323285208769109422

/-! ## A387462.P10566625254061229260

`filter[A091236(n+1), A297086(#)]`
-/

namespace A387462.P10566625254061229260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A387462.P10566625254061229260

/-! ## A387462.P7908822564170026522

`filter[A050384(n+1), A373979(#)]`
-/

namespace A387462.P7908822564170026522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A387462.P7908822564170026522

/-! ## A387462.P7919659510032088755

`∩[A050384(n+1), A004767(n)]`
-/

namespace A387462.P7919659510032088755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387462.P7919659510032088755

/-!
# A387463: Total number of 3's in the decimal digits of the divisors of n.

The programs for A387463, the canonical program `A387463.P5544649495346205842` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387463 has offset 1).

The definition of A387463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387463.P5544649495346205842

`∑{d}[1+n, A316864(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387463

/-- `∑{d}[1+n, A316864(#)]` -/
def P5544649495346205842.Spec : Prop :=
  ∀ n, P5544649495346205842.a n = A387463 (n + 1)

theorem P5544649495346205842.correct : P5544649495346205842.Spec := by
  intro n
  simp only [A387463, Nat.add_sub_cancel]

end A387463

/-! ## A387463.P4508120670949796861

`∑{d}[n+1, A268643(A107130(#))]`
-/

namespace A387463.P4508120670949796861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A268643 (A107130 d).toNat

end

end A387463.P4508120670949796861

namespace A387463

/-- `∑{d}[n+1, A268643(A107130(#))]` -/
def P4508120670949796861.Spec : Prop :=
  ∀ n, P4508120670949796861.a n = A387463 (n + 1)

end A387463

/-! ## A387463.P14050623037791101127

`or(A083890(n+1), A083916(A112745(3*n+4)))`
-/

namespace A387463.P14050623037791101127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083890 (n + 1)) (A083916 (A112745 (3 * n + 4)).toNat)

end

end A387463.P14050623037791101127

namespace A387463

/-- `or(A083890(n+1), A083916(A112745(3*n+4)))` -/
def P14050623037791101127.Spec : Prop :=
  ∀ n, P14050623037791101127.a n = A387463 (n + 1)

end A387463

/-!
# A387464: a(n) is the first number with a total of exactly n 3's in the decimal digits of its divisors.

The programs for A387464, there is no canonical definition to state claims against.
-/

/-! ## A387464.P1394926652352975303

`A024575(n+1)*A057934(A000670(n))`
-/

namespace A387464.P1394926652352975303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024575 (n + 1) * A057934 (A000670 n).toNat

end

end A387464.P1394926652352975303

/-!
# A387465: Irregular triangle T(n,k), n >= 0, 0 <= k < 2^(n-1), where T(n,k) = Product_{j=0..n-1} prime(n-j)^((j+1)*d_j), where d_j is the bit with digit weight 2^j in the binary expansion of 2^(n-1)+k.

The programs for A387465, there is no canonical definition to state claims against.
-/

/-! ## A387465.P16196836569242503431

`A137502(A109298(n+1))`
-/

namespace A387465.P16196836569242503431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (A109298 (n + 1)).toNat

end

end A387465.P16196836569242503431

/-! ## A387465.P261766767121268885

`A137502(∩[A109297(n+1), A324524(n+1)])`
-/

namespace A387465.P261766767121268885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A387465.P261766767121268885

/-!
# A387466: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of 1/sqrt(1 - 4*x - (2*k*x)^2).

The programs for A387466, there is no canonical definition to state claims against.
-/

/-! ## A387466.P6259344974299185435

`or(A185284(A122366(n)), A361830(n))`
-/

namespace A387466.P6259344974299185435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A122366 n).toNat) (A361830 n)

end

end A387466.P6259344974299185435

/-! ## A387466.P3427683516532129941

`A361830(n)+A039999(A006086(n+1))`
-/

namespace A387466.P3427683516532129941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361830 n + A039999 (A006086 (n + 1)).toNat

end

end A387466.P3427683516532129941

/-!
# A387467: a(n) = Sum_{k=0..n} (1-n*i)^k * (1+n*i)^(n-k) * binomial(n,k)^2, where i is the imaginary unit.

The programs for A387467, the canonical program `A387467.P7259101803559444145` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387467 has offset 0).

The definition of A387467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387467.P7259101803559444145

`∑{#}[floor(n/2), n^(2*#)*C(2*(n-#), n-#)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387467

/-- `∑{#}[floor(n/2), n^(2*#)*C(2*(n-#), n-#)*C(n-#, #)]` -/
def P7259101803559444145.Spec : Prop :=
  ∀ n, (P7259101803559444145.a n : ℤ) = A387467 n

theorem P7259101803559444145.correct : P7259101803559444145.Spec := by
  intro n
  simp only [A387467]

end A387467

/-! ## A387467.P7663127029702396341

`A387466(∑[4*n])`
-/

namespace A387467.P7663127029702396341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A387467.P7663127029702396341

namespace A387467

/-- `A387466(∑[4*n])` -/
def P7663127029702396341.Spec : Prop :=
  ∀ n, P7663127029702396341.a n = A387467 n

end A387467

/-!
# A387469: Numbers s > 0 such that 8*s^2 + 64*s + 57 is a square.

The programs for A387469, the canonical program `A387469.P7072665965893286847` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387469 has offset 1).

The definition of A387469 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387469.P8774235866186835750

`ogf((4+2x+11x^2-x^4)/(1-x-6x^2+6x^3+x^4-x^5))`
-/

namespace A387469.P8774235866186835750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 11, 0, -1] [1, -1, -6, 6, 1, -1] n

end

end A387469.P8774235866186835750

namespace A387469

/-- `ogf((4+2x+11x^2-x^4)/(1-x-6x^2+6x^3+x^4-x^5))` -/
def P8774235866186835750.Spec : Prop :=
  ∀ n, P8774235866186835750.a n = A387469 (n + 1)

end A387469

/-! ## A387469.P7072665965893286847

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=4, a(1)=6, a(2)=41, a(3)=53, a(4)=258`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387469

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` -/
def P7072665965893286847.Spec : Prop :=
  ∀ n, P7072665965893286847.a n = A387469 (n + 1)

theorem P7072665965893286847.correct : P7072665965893286847.Spec := by
  intro n
  simp only [A387469, Nat.add_sub_cancel]

end A387469

/-!
# A387470: a(n) = n*(Omega(n) - 1), where Omega = A001222.

The programs for A387470, the canonical program `A387470.P15457309630766544785` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387470 has offset 1).

The definition of A387470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(A001222(n+1)-1)` (program `A387470.P15457309630766544785`, by `A387470.P15457309630766544785.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387470.P8261482053908746042

`A066959(n+1)-(n+1)`
-/

namespace A387470.P8261482053908746042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (n + 1) - (n + 1 : ℤ)

end

end A387470.P8261482053908746042

namespace A387470

/-- `A066959(n+1)-(n+1)` -/
def P8261482053908746042.Spec : Prop :=
  ∀ n, P8261482053908746042.a n = A387470 (n + 1)

theorem P8261482053908746042.correct : P8261482053908746042.Spec := by
  intro n
  simp only [A387470, Nat.add_sub_cancel, A387470.P8261482053908746042.a, A387470.P15457309630766544785.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A066959, A066959.P15004998191062164825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387470

/-! ## A387470.P15457309630766544785

`(n+1)*(A001222(n+1)-1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A387470

/-- `(n+1)*(A001222(n+1)-1)` -/
def P15457309630766544785.Spec : Prop :=
  ∀ n, P15457309630766544785.a n = A387470 (n + 1)

theorem P15457309630766544785.correct : P15457309630766544785.Spec := by
  intro n
  simp only [A387470, Nat.add_sub_cancel]

end A387470

/-! ## A387470.P8522129439319252617

`(1+n)*(∑{e}[1+n, #]-1)`
-/

namespace A387470.P8522129439319252617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1)

end

end A387470.P8522129439319252617

namespace A387470

/-- `(1+n)*(∑{e}[1+n, #]-1)` -/
def P8522129439319252617.Spec : Prop :=
  ∀ n, P8522129439319252617.a n = A387470 (n + 1)

theorem P8522129439319252617.correct : P8522129439319252617.Spec := by
  intro n
  simp only [A387470, Nat.add_sub_cancel, A387470.P8522129439319252617.f1, A387470.P8522129439319252617.a, A387470.P15457309630766544785.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387470

/-! ## A387470.P2119800509642405202

`(n+1)*(log(∏{e}[n+1, exp(#)])-1)`
-/

namespace A387470.P2119800509642405202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ)) - 1)

end

end A387470.P2119800509642405202

namespace A387470

/-- `(n+1)*(log(∏{e}[n+1, exp(#)])-1)` -/
def P2119800509642405202.Spec : Prop :=
  ∀ n, P2119800509642405202.a n = (A387470 (n + 1) : ℝ)

end A387470

/-! ## A387470.P713801721967555404

`xor(-1, -∑{e}[n+1, #])*(n+1)`
-/

namespace A387470.P713801721967555404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)) * (n + 1 : ℤ)

end

end A387470.P713801721967555404

namespace A387470

/-- `xor(-1, -∑{e}[n+1, #])*(n+1)` -/
def P713801721967555404.Spec : Prop :=
  ∀ n, P713801721967555404.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P10994148192922576835

`xor(n, -1)+(n+1)*∑{e}[n+1, #]`
-/

namespace A387470.P10994148192922576835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + (((n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℕ) : ℤ)

end

end A387470.P10994148192922576835

namespace A387470

/-- `xor(n, -1)+(n+1)*∑{e}[n+1, #]` -/
def P10994148192922576835.Spec : Prop :=
  ∀ n, P10994148192922576835.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P8717940161880340795

`(val(∏{e}[n+1, 2^#], 2)-1)*(n+1)`
-/

namespace A387470.P8717940161880340795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) 2 : ℤ) - 1) * (n + 1 : ℤ)

end

end A387470.P8717940161880340795

namespace A387470

/-- `(val(∏{e}[n+1, 2^#], 2)-1)*(n+1)` -/
def P8717940161880340795.Spec : Prop :=
  ∀ n, P8717940161880340795.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P14463115042171321790

`(∑{p}[n+1, val(n+1, #)]-1)*(n+1)`
-/

namespace A387470.P14463115042171321790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - 1) * (n + 1 : ℤ)

end

end A387470.P14463115042171321790

namespace A387470

/-- `(∑{p}[n+1, val(n+1, #)]-1)*(n+1)` -/
def P14463115042171321790.Spec : Prop :=
  ∀ n, P14463115042171321790.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P277008057751002416

`(n+1)*(Δ[A022559(n)]-1)`
-/

namespace A387470.P277008057751002416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n - 1)

end

end A387470.P277008057751002416

namespace A387470

/-- `(n+1)*(Δ[A022559(n)]-1)` -/
def P277008057751002416.Spec : Prop :=
  ∀ n, P277008057751002416.a n = A387470 (n + 1)

end A387470

/-! ## A387470.P9208810481305894833

`(A001222(1+n)-1)*(n+1)`
-/

namespace A387470.P9208810481305894833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (1 + n) - 1) * (n + 1 : ℤ)

end

end A387470.P9208810481305894833

namespace A387470

/-- `(A001222(1+n)-1)*(n+1)` -/
def P9208810481305894833.Spec : Prop :=
  ∀ n, P9208810481305894833.a n = A387470 (n + 1)

theorem P9208810481305894833.correct : P9208810481305894833.Spec := by
  intro n
  simp only [A387470, Nat.add_sub_cancel, A387470.P9208810481305894833.a, A387470.P15457309630766544785.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A387470

/-! ## A387470.P15635420357136887075

`(n+1)*(A073093(n+1)-2)`
-/

namespace A387470.P15635420357136887075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A073093 (n + 1) - 2)

end

end A387470.P15635420357136887075

namespace A387470

/-- `(n+1)*(A073093(n+1)-2)` -/
def P15635420357136887075.Spec : Prop :=
  ∀ n, P15635420357136887075.a n = A387470 (n + 1)

theorem P15635420357136887075.correct : P15635420357136887075.Spec := by
  intro n
  simp only [A387470, Nat.add_sub_cancel, A387470.P15635420357136887075.a, A387470.P15457309630766544785.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A073093, A073093.P258081957281391684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387470

/-! ## A387470.P16514769916228909438

`(n+1)*(n-A069345(n+1))`
-/

namespace A387470.P16514769916228909438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - A069345 (n + 1))

end

end A387470.P16514769916228909438

namespace A387470

/-- `(n+1)*(n-A069345(n+1))` -/
def P16514769916228909438.Spec : Prop :=
  ∀ n, P16514769916228909438.a n = A387470 (n + 1)

theorem P16514769916228909438.correct : P16514769916228909438.Spec := by
  intro n
  simp only [A387470, Nat.add_sub_cancel, A387470.P16514769916228909438.a, A387470.P15457309630766544785.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A069345, A069345.P4010349656515474516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387470

/-! ## A387470.P15663732255361121407

`(n+1)*(A222312(n+1)-(n+1))`
-/

namespace A387470.P15663732255361121407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A222312 (n + 1) - (n + 1 : ℤ))

end

end A387470.P15663732255361121407

namespace A387470

/-- `(n+1)*(A222312(n+1)-(n+1))` -/
def P15663732255361121407.Spec : Prop :=
  ∀ n, P15663732255361121407.a n = A387470 (n + 1)

theorem P15663732255361121407.correct : P15663732255361121407.Spec := by
  intro n
  simp only [A387470, Nat.add_sub_cancel, A387470.P15663732255361121407.a, A387470.P15457309630766544785.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A222312, A222312.P5225546657519994950.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387470

/-! ## A387470.P2881474982222076719

`A186170(n+1)+A001065(n+1)`
-/

namespace A387470.P2881474982222076719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186170 (n + 1) + A001065 (n + 1)

end

end A387470.P2881474982222076719

namespace A387470

/-- `A186170(n+1)+A001065(n+1)` -/
def P2881474982222076719.Spec : Prop :=
  ∀ n, P2881474982222076719.a n = A387470 (n + 1)

theorem P2881474982222076719.correct : P2881474982222076719.Spec := by
  intro n
  simp only [A387470, Nat.add_sub_cancel, A387470.P2881474982222076719.a, A387470.P15457309630766544785.a, A001065, A001065.P4097147489331274860.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A186170, A186170.P11353951173779098323.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387470

/-! ## A387470.P5381404146384444519

`(n+1)*(A305716(n+1)-3)`
-/

namespace A387470.P5381404146384444519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A305716 (n + 1) - 3)

end

end A387470.P5381404146384444519

namespace A387470

/-- `(n+1)*(A305716(n+1)-3)` -/
def P5381404146384444519.Spec : Prop :=
  ∀ n, P5381404146384444519.a n = A387470 (n + 1)

theorem P5381404146384444519.correct : P5381404146384444519.Spec := by
  intro n
  simp only [A387470, Nat.add_sub_cancel, A387470.P5381404146384444519.a, A387470.P15457309630766544785.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A305716, A305716.P5676364210225731039.f1, A305716.P5676364210225731039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A387470

/-!
# A387471: a(n) = number of interior triple intersections for the equal-angle model with parameter m = 2*n-1.

The programs for A387471, there is no canonical definition to state claims against.
-/

/-! ## A387471.P11382545851791270031

`ogf((1+4x-5x^2+12x^4-37x^5+32x^6-7x^7)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))`
-/

namespace A387471.P11382545851791270031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -5, 0, 12, -37, 32, -7] [1, -3, 3, -1, 0, -1, 3, -3, 1] n

end

end A387471.P11382545851791270031

/-! ## A387471.P4874539983670792085

`A016921(or(n, A089841(n)))`
-/

namespace A387471.P4874539983670792085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (Int.lor (n : ℤ) (A089841 n)).toNat

end

end A387471.P4874539983670792085

/-! ## A387471.P11099779206962041108

`A052339(A050412(3*n+5)²)+6*n`
-/

namespace A387471.P11099779206962041108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052339 (A050412 (3 * n + 5) ^ 2).toNat + (6 * n : ℤ)

end

end A387471.P11099779206962041108

/-! ## A387471.P1140063614600803814

`A245669(A017546(n))`
-/

namespace A387471.P1140063614600803814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245669 (A017546 n).toNat

end

end A387471.P1140063614600803814

/-! ## A387471.P14658662545707740961

`A008458(n)+A003415(A210662(n+1))`
-/

namespace A387471.P14658662545707740961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + A003415 (A210662 (n + 1)).toNat

end

end A387471.P14658662545707740961

/-!
# A387475: G.f. A(x) satisfies 1 - x = Sum_{n>=0} (-1)^(n mod 3) * x^n * A(x)^(n^2).

The programs for A387475, there is no canonical definition to state claims against.
-/

/-! ## A387475.P15763690829792895714

`A008679(Δ[Δ[Δ[n!]]])-n+1`
-/

namespace A387475.P15763690829792895714
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (f1 (n + 1) - f1 n).toNat - (n : ℤ) + 1

end

end A387475.P15763690829792895714

/-!
# A387476: a(n) = Sum_{k=0..floor(n/2)} 2^k * binomial(k,n-2*k)^2.

The programs for A387476, the canonical program `A387476.P14632624311154995993` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387476 has offset 0).

The definition of A387476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), 2^#*C(#, n-2*#)²]` (program `A387476.P14632624311154995993`, by `A387476.P14632624311154995993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387476.P14632624311154995993

`∑{#}[floor(n/2), 2^#*C(#, n-2*#)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387476

/-- `∑{#}[floor(n/2), 2^#*C(#, n-2*#)²]` -/
def P14632624311154995993.Spec : Prop :=
  ∀ n, (P14632624311154995993.a n : ℤ) = A387476 n

theorem P14632624311154995993.correct : P14632624311154995993.Spec := by
  intro n
  simp only [A387476]

end A387476

/-!
# A387477: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(k,n-3*k)^2.

The programs for A387477, the canonical program `A387477.P12271519500703585493` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387477 has offset 0).

The definition of A387477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), 2^#*C(#, n-3*#)²]` (program `A387477.P12271519500703585493`, by `A387477.P12271519500703585493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A387477.P12271519500703585493

`∑{#}[floor(n/3), 2^#*C(#, n-3*#)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387477

/-- `∑{#}[floor(n/3), 2^#*C(#, n-3*#)²]` -/
def P12271519500703585493.Spec : Prop :=
  ∀ n, (P12271519500703585493.a n : ℤ) = A387477 n

theorem P12271519500703585493.correct : P12271519500703585493.Spec := by
  intro n
  simp only [A387477]

end A387477

/-!
# A387478: a(n) = Sum_{k=0..floor(n/2)} 2^k * 3^(n-2*k) * binomial(k,n-2*k)^2.

The programs for A387478, the canonical program `A387478.P3326475201009137671` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387478 has offset 0).

The definition of A387478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387478.P3326475201009137671

`∑{#}[floor(n/2), 2^#*3^(n-2*#)*C(#, n-2*#)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387478

/-- `∑{#}[floor(n/2), 2^#*3^(n-2*#)*C(#, n-2*#)²]` -/
def P3326475201009137671.Spec : Prop :=
  ∀ n, P3326475201009137671.a n = (A387478 n : ℚ)

end A387478

/-!
# A387479: a(n) = Sum_{k=0..floor(n/3)} 2^k * 3^(n-3*k) * binomial(k,n-3*k)^2.

The programs for A387479, the canonical program `A387479.P7829829120124509197` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387479 has offset 0).

The definition of A387479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387479.P7829829120124509197

`∑{#}[floor(n/3), 2^#*3^(n-3*#)*C(#, n-3*#)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387479

/-- `∑{#}[floor(n/3), 2^#*3^(n-3*#)*C(#, n-3*#)²]` -/
def P7829829120124509197.Spec : Prop :=
  ∀ n, P7829829120124509197.a n = (A387479 n : ℚ)

end A387479

/-!
# A387480: a(n) = Sum_{k=0..n} 3^k * 2^(n-k) * binomial(k,n-k)^2.

The programs for A387480, the canonical program `A387480.P4524017641857352526` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387480 has offset 0).

The definition of A387480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387480.P4524017641857352526

`∑{#}[n, 3^#*2^(n-#)*C(#, n-#)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387480

/-- `∑{#}[n, 3^#*2^(n-#)*C(#, n-#)²]` -/
def P4524017641857352526.Spec : Prop :=
  ∀ n, P4524017641857352526.a n = (A387480 n : ℚ)

end A387480

/-!
# A387481: a(n) = Sum_{k=0..floor(n/2)} 3^k * 2^(n-2*k) * binomial(k,n-2*k)^2.

The programs for A387481, the canonical program `A387481.P12326800030406940743` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387481 has offset 0).

The definition of A387481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387481.P12326800030406940743

`∑{#}[floor(n/2), 3^#*2^(n-2*#)*C(#, n-2*#)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387481

/-- `∑{#}[floor(n/2), 3^#*2^(n-2*#)*C(#, n-2*#)²]` -/
def P12326800030406940743.Spec : Prop :=
  ∀ n, P12326800030406940743.a n = (A387481 n : ℚ)

end A387481

/-!
# A387482: a(n) = Sum_{k=0..floor(n/3)} 3^k * 2^(n-3*k) * binomial(k,n-3*k)^2.

The programs for A387482, the canonical program `A387482.P326788030460520550` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387482 has offset 0).

The definition of A387482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387482.P326788030460520550

`∑{#}[floor(n/3), 3^#*2^(n-3*#)*C(#, n-3*#)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387482

/-- `∑{#}[floor(n/3), 3^#*2^(n-3*#)*C(#, n-3*#)²]` -/
def P326788030460520550.Spec : Prop :=
  ∀ n, P326788030460520550.a n = (A387482 n : ℚ)

end A387482

/-!
# A387483: a(n) = Sum_{k=0..floor(n/2)} 2^(n-k) * binomial(k,n-2*k)^2.

The programs for A387483, the canonical program `A387483.P11931499293781024761` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387483 has offset 0).

The definition of A387483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387483.P11931499293781024761

`∑{#}[floor(n/2), 2^(n-#)*C(#, n-2*#)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387483

/-- `∑{#}[floor(n/2), 2^(n-#)*C(#, n-2*#)²]` -/
def P11931499293781024761.Spec : Prop :=
  ∀ n, P11931499293781024761.a n = (A387483 n : ℚ)

end A387483

/-! ## A387483.P16618370937761564044

`A324645(A381273(n))*A387476(n)`
-/

namespace A387483.P16618370937761564044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324645 (A381273 n).toNat * A387476 n

end

end A387483.P16618370937761564044

namespace A387483

/-- `A324645(A381273(n))*A387476(n)` -/
def P16618370937761564044.Spec : Prop :=
  ∀ n, P16618370937761564044.a n = A387483 n

end A387483

/-!
# A387484: a(n) = Sum_{k=0..floor(n/3)} 2^(n-k) * binomial(k,n-3*k)^2.

The programs for A387484, the canonical program `A387484.P1211559020020952536` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387484 has offset 0).

The definition of A387484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387484.P1211559020020952536

`∑{#}[floor(n/3), 2^(n-#)*C(#, n-3*#)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387484

/-- `∑{#}[floor(n/3), 2^(n-#)*C(#, n-3*#)²]` -/
def P1211559020020952536.Spec : Prop :=
  ∀ n, P1211559020020952536.a n = (A387484 n : ℚ)

end A387484

/-! ## A387484.P15470368367657366246

`and(A100799(n+1), A100836(A161707(2*n+3)))`
-/

namespace A387484.P15470368367657366246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100799 (n + 1)) (A100836 (A161707 (2 * n + 3)).toNat)

end

end A387484.P15470368367657366246

namespace A387484

/-- `and(A100799(n+1), A100836(A161707(2*n+3)))` -/
def P15470368367657366246.Spec : Prop :=
  ∀ n, P15470368367657366246.a n = A387484 n

end A387484

/-! ## A387484.P6408750026732314982

`and(∏{e}[A192060(n), #+1], A192060(n))`
-/

namespace A387484.P6408750026732314982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) (A192060 n)

end

end A387484.P6408750026732314982

namespace A387484

/-- `and(∏{e}[A192060(n), #+1], A192060(n))` -/
def P6408750026732314982.Spec : Prop :=
  ∀ n, P6408750026732314982.a n = A387484 n

end A387484

/-! ## A387484.P17906746724268521326

`and(A051336(A003480(n)), A113384(n))`
-/

namespace A387484.P17906746724268521326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051336 (A003480 n).toNat) (A113384 n)

end

end A387484.P17906746724268521326

namespace A387484

/-- `and(A051336(A003480(n)), A113384(n))` -/
def P17906746724268521326.Spec : Prop :=
  ∀ n, P17906746724268521326.a n = A387484 n

end A387484

/-!
# A387485: a(n) = Sum_{k=0..floor(n/3)} 2^(n-2*k) * binomial(k,n-3*k)^2.

The programs for A387485, the canonical program `A387485.P4036472301329222910` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387485 has offset 0).

The definition of A387485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387485.P4036472301329222910

`∑{#}[floor(n/3), 2^(n-2*#)*C(#, n-3*#)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A387485

/-- `∑{#}[floor(n/3), 2^(n-2*#)*C(#, n-3*#)²]` -/
def P4036472301329222910.Spec : Prop :=
  ∀ n, P4036472301329222910.a n = (A387485 n : ℚ)

end A387485

/-!
# A387486: Numbers x such that there exist four integers y, z, t and w with x<=y<=z<=t<=w such that psi(x) = psi(y) = psi(z) = psi(t) = psi(w) = (x + y + z + t + w)/4.

The programs for A387486, there is no canonical definition to state claims against.
-/

/-! ## A387486.P1639169077305090784

`A337812(A080897(n+1))`
-/

namespace A387486.P1639169077305090784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337812 (A080897 (n + 1)).toNat

end

end A387486.P1639169077305090784

/-! ## A387486.P10379632169974836471

`filter[A279083(n+1), A327208(#)]`
-/

namespace A387486.P10379632169974836471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327208 (f1 j).toNat = 1) n)

end

end A387486.P10379632169974836471

/-! ## A387486.P803899441070446173

`filter[A279083(n+3), A290452(#)]`
-/

namespace A387486.P803899441070446173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279083 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290452 (f1 j).toNat = 1) n)

end

end A387486.P803899441070446173

/-!
# A387487: a(n) is the length of the longest prefix of S matching the substring of S starting at n where S = 123456789101112... is the Champernowne word (A033307).

The programs for A387487, there is no canonical definition to state claims against.
-/

/-! ## A387487.P15482478726969644850

`col(col(A286622(A134580(n+3))))`
-/

namespace A387487.P15482478726969644850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (SequenceMachineLib.triCol (A286622 (A134580 (n + 3)).toNat).toNat)

end

end A387487.P15482478726969644850

/-! ## A387487.P16227084926563068826

`A275947(A138526(n)*A180560(n+1))`
-/

namespace A387487.P16227084926563068826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A138526 n * A180560 (n + 1)).toNat

end

end A387487.P16227084926563068826

/-! ## A387487.P6291107406476706490

`A089310(A370121(n))%A032742(3*n+2)`
-/

namespace A387487.P6291107406476706490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089310 (A370121 n).toNat) (A032742 (3 * n + 2))

end

end A387487.P6291107406476706490

/-! ## A387487.P2493618683545172565

`A326853(3*n+4)%A317141(A374742(n))`
-/

namespace A387487.P2493618683545172565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326853 (3 * n + 4)) (A317141 (A374742 n).toNat)

end

end A387487.P2493618683545172565

/-! ## A387487.P2034444475151995160

`A379300(∪[A309326(3*(n+1)), A320930(n+1)])`
-/

namespace A387487.P2034444475151995160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309326 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320930 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379300 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A387487.P2034444475151995160

/-!
# A387488: a(n) = [x^n] hypergeom([1/2, 1/2], [1], 256*x).

The programs for A387488, there is no canonical definition to state claims against.
-/

/-! ## A387488.P16957607601129882912

`(C(2*n, n)*4^n)²`
-/

namespace A387488.P16957607601129882912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * 4 ^ n) ^ 2

end

end A387488.P16957607601129882912

/-! ## A387488.P6600140076745461433

`∑{#}[n, C(2*n+1, #)*C(2*n, n)]²`
-/

namespace A387488.P6600140076745461433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n + 1) k * Nat.choose (2 * n) n) ^ 2

end

end A387488.P6600140076745461433

/-! ## A387488.P16551728799836529638

`A098430(n)²`
-/

namespace A387488.P16551728799836529638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098430 n ^ 2

end

end A387488.P16551728799836529638

/-! ## A387488.P11514432146704338524

`A060899(2*n)²`
-/

namespace A387488.P11514432146704338524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060899 (2 * n) ^ 2

end

end A387488.P11514432146704338524

/-! ## A387488.P7962306052279691119

`A098664(2*n)²`
-/

namespace A387488.P7962306052279691119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098664 (2 * n) ^ 2

end

end A387488.P7962306052279691119

/-!
# A387489: Number of packing 1X1X2 bricks into 2X2Xn boxes considering packings obtained by rigid motions equivalent.

The programs for A387489, the canonical program `A387489.P13058508662317426490` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387489 has offset 0).

The definition of A387489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387489.P13058508662317426490

`ogf((1-5x+25x^3-15x^4-46x^5+52x^6+6x^7-7x^8+50x^9-63x^10-28x^11+24x^12+4x^13-2x^14)/(1-6x+4x^2+26x^3-33x^4-8x^5+8x^6-24x^7+31x^8+14x^9-12x^10-2x^11+x^12))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A387489

/-- `ogf((1-5x+25x^3-15x^4-46x^5+52x^6+6x^7-7x^8+50x^9-63x^10-28x^11+24x^12+4x^13-2x^14)/(1-6x+4x^2+26x^3-33x^4-8x^5+8x^6-24x^7+31x^8+14x^9-12x^10-2x^11+x^12))` -/
def P13058508662317426490.Spec : Prop :=
  ∀ n, P13058508662317426490.a n = A387489 n

theorem P13058508662317426490.correct : P13058508662317426490.Spec := by
  intro n
  simp only [A387489]

end A387489

/-! ## A387489.P14567241131727106812

`A083403(A149259(n))-A002620(A184993(n))`
-/

namespace A387489.P14567241131727106812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083403 (A149259 n).toNat - A002620 (A184993 n).toNat

end

end A387489.P14567241131727106812

namespace A387489

/-- `A083403(A149259(n))-A002620(A184993(n))` -/
def P14567241131727106812.Spec : Prop :=
  ∀ n, P14567241131727106812.a n = A387489 n

end A387489

/-!
# A387491: Numbers of the form P(k)^m * Q(k), m >= 0, with P(k) = Product_{i=1..k} prime(i) = A002110(k) and Q(k) = Product_{j=1..k} P(j) = A006939(k).

The programs for A387491, there is no canonical definition to state claims against.
-/

/-! ## A387491.P6881373524565997097

`∪[2*a(n-1), A387492(n+1)]` with `a(0)=1`
-/

namespace A387491.P6881373524565997097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387491.P6881373524565997097

/-! ## A387491.P384930682375499394

`∪[A387492(n+1), A000079(n)]`
-/

namespace A387491.P384930682375499394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387491.P384930682375499394

/-! ## A387491.P16713486557399105246

`∪[A273109(n+1), A387492(n+1)]`
-/

namespace A387491.P16713486557399105246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387491.P16713486557399105246

/-! ## A387491.P13196647549799893521

`∩[A018231(n+1), A390940(n+1)]`
-/

namespace A387491.P13196647549799893521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387491.P13196647549799893521

/-! ## A387491.P12622336039844248757

`∩[A219301(n+1), A318186(n+1)]`
-/

namespace A387491.P12622336039844248757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387491.P12622336039844248757

/-!
# A387492: Numbers of the form P(k)^m * Q(k), k > 1, m >= 0, with P(k) = Product_{i=1..k} prime(i) = A002110(k) and Q(k) = Product_{j=1..k} P(j) = A006939(k).

The programs for A387492, there is no canonical definition to state claims against.
-/

/-! ## A387492.P1720879610274450778

`∩[A364710(n+1), A387491(n+1)]`
-/

namespace A387492.P1720879610274450778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387492.P1720879610274450778

/-! ## A387492.P17845800465382857941

`∩[A363814(n+1), A387491(n+1)]`
-/

namespace A387492.P17845800465382857941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387492.P17845800465382857941

/-! ## A387492.P16383414386061180212

`∩[A066312(n+1), A387491(n+1)]`
-/

namespace A387492.P16383414386061180212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387492.P16383414386061180212

/-! ## A387492.P3590522290909655406

`filter[A387491(n+1), A294936(#)]`
-/

namespace A387492.P3590522290909655406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A387492.P3590522290909655406

/-! ## A387492.P15372373341634320115

`filter[A387491(n+1), A355447(#)]`
-/

namespace A387492.P15372373341634320115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A387492.P15372373341634320115

/-!
# A387493: Numbers of the form P(k)^m * Q(k), k > 1, m >= 1, with P(k) = Product_{i=1..k} prime(i) = A002110(k) and Q(k) = Product_{j=1..k} P(j) = A006939(k).

The programs for A387493, there is no canonical definition to state claims against.
-/

/-! ## A387493.P10870429833319554237

`∩[A364930(n+1), A387491(n+1)]`
-/

namespace A387493.P10870429833319554237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387493.P10870429833319554237

/-! ## A387493.P14120354372574958039

`∩[A364930(n+1), A387492(n+1)]`
-/

namespace A387493.P14120354372574958039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387493.P14120354372574958039

/-! ## A387493.P12429953019362986974

`∩[A378002(n+1), A387491(n+1)]`
-/

namespace A387493.P12429953019362986974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387493.P12429953019362986974

/-! ## A387493.P5950294476795022448

`∩[A378002(n+1), A387492(n+1)]`
-/

namespace A387493.P5950294476795022448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387493.P5950294476795022448

/-! ## A387493.P1648327719265009455

`∩[A181800(n+1), A387492(n+1)]`
-/

namespace A387493.P1648327719265009455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387493.P1648327719265009455

/-!
# A387494: Array read by antidiagonals: T(n,k) is the maximum number of steps in a n^k cuboid with a rule that allows moving to neighboring visited cuboids if the next step is onto an unvisited cuboid when starting in a corner.

The programs for A387494, there is no canonical definition to state claims against.
-/

/-! ## A387494.P12426531534235433075

`A206306(n)+T(n-1,k)+T(n-1,k-1)` with `a(0)=0, a(1)=0`
-/

namespace A387494.P12426531534235433075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A206306 n + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n)

end

end A387494.P12426531534235433075

/-!
# A387496: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^2*(1+x))) ).

The programs for A387496, the canonical program `A387496.P5195266206105832259` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387496 has offset 0).

The definition of A387496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387496.P5195266206105832259

`1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n+#+2, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A387496

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n+#+2, n-2*#)]` -/
def P5195266206105832259.Spec : Prop :=
  ∀ n, P5195266206105832259.a n = (A387496 n : ℚ)

end A387496

/-! ## A387496.P7671046296598000621

`A349536(A366082(n))`
-/

namespace A387496.P7671046296598000621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A366082 n).toNat

end

end A387496.P7671046296598000621

namespace A387496

/-- `A349536(A366082(n))` -/
def P7671046296598000621.Spec : Prop :=
  ∀ n, P7671046296598000621.a n = A387496 n

end A387496

/-!
# A387497: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^2*(1+x)^2)) ).

The programs for A387497, the canonical program `A387497.P11431926825352807007` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387497 has offset 0).

The definition of A387497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387497.P11431926825352807007

`1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n+2*#+2, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A387497

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n+2*#+2, n-2*#)]` -/
def P11431926825352807007.Spec : Prop :=
  ∀ n, P11431926825352807007.a n = (A387497 n : ℚ)

end A387497

/-! ## A387497.P8650519035841698158

`A192810(n)+A096800(A000108(n))`
-/

namespace A387497.P8650519035841698158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192810 n + A096800 (A000108 n).toNat

end

end A387497.P8650519035841698158

namespace A387497

/-- `A192810(n)+A096800(A000108(n))` -/
def P8650519035841698158.Spec : Prop :=
  ∀ n, P8650519035841698158.a n = A387497 n

end A387497

/-!
# A387498: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * (1+x^2*(1+x)^3)) ).

The programs for A387498, the canonical program `A387498.P4331196970400434173` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387498 has offset 0).

The definition of A387498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387498.P4331196970400434173

`1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n+3*#+2, n-2*#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A387498

/-- `1/(n+1)*∑{#}[floor(n/2), C(n+1, #)*C(2*n+3*#+2, n-2*#)]` -/
def P4331196970400434173.Spec : Prop :=
  ∀ n, P4331196970400434173.a n = (A387498 n : ℚ)

end A387498

/-! ## A387498.P2112042095194599861

`A343609(A105479(n+3)+7)`
-/

namespace A387498.P2112042095194599861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A105479 (n + 3) + 7).toNat

end

end A387498.P2112042095194599861

namespace A387498

/-- `A343609(A105479(n+3)+7)` -/
def P2112042095194599861.Spec : Prop :=
  ∀ n, P2112042095194599861.a n = A387498 n

end A387498

