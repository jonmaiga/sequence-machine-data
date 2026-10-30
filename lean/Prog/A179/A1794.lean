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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A179401: Numbers k such that phi(phi(k)) = lambda(lambda(k)).

The programs for A179401, there is no canonical definition to state claims against.
-/

/-! ## A179401.P13867116046973809966

`∩[A033948(n+1), A123101(n+1)]`
-/

namespace A179401.P13867116046973809966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179401.P13867116046973809966

/-! ## A179401.P9720236515079202312

`∩[A033948(n+1), A396478(n+1)]`
-/

namespace A179401.P9720236515079202312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179401.P9720236515079202312

/-! ## A179401.P1510070749893461585

`∪[A117729(n+1), A325337(A219780(n))]`
-/

namespace A179401.P1510070749893461585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (A219780 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179401.P1510070749893461585

/-!
# A179403: Number of ways to place 2 nonattacking kings on an n X n toroidal board.

The programs for A179403, the canonical program `A179403.P16053861123709718680` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179403 has offset 1).

The definition of A179403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179403.P16053861123709718680

`ogf((56x^3-80x^4+46x^5-10x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A179403

/-- `ogf((56x^3-80x^4+46x^5-10x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16053861123709718680.Spec : Prop :=
  ∀ n, P16053861123709718680.a n = A179403 (n + 1)

theorem P16053861123709718680.correct : P16053861123709718680.Spec := by
  intro n
  simp only [A179403, Nat.add_sub_cancel]

end A179403

/-! ## A179403.P15659600389864333415

`(A154560(n)+1)*A289207(n)`
-/

namespace A179403.P15659600389864333415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154560 n + 1) * A289207 n

end

end A179403.P15659600389864333415

namespace A179403

/-- `(A154560(n)+1)*A289207(n)` -/
def P15659600389864333415.Spec : Prop :=
  ∀ n, P15659600389864333415.a n = A179403 (n + 1)

end A179403

/-! ## A179403.P9255639173164969622

`∑[A163985(n)-n]*A028552(n+1)`
-/

namespace A179403.P9255639173164969622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A028552 (n + 1)

end

end A179403.P9255639173164969622

namespace A179403

/-- `∑[A163985(n)-n]*A028552(n+1)` -/
def P9255639173164969622.Spec : Prop :=
  ∀ n, P9255639173164969622.a n = A179403 (n + 1)

end A179403

/-! ## A179403.P15949940439148558400

`A035286(n+1)%(A172132(n+1)+4)`
-/

namespace A179403.P15949940439148558400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035286 (n + 1)) (A172132 (n + 1) + 4)

end

end A179403.P15949940439148558400

namespace A179403

/-- `A035286(n+1)%(A172132(n+1)+4)` -/
def P15949940439148558400.Spec : Prop :=
  ∀ n, P15949940439148558400.a n = A179403 (n + 1)

end A179403

/-! ## A179403.P7889443243624810197

`2*A000096(n+1)*A000096(A289207(n))`
-/

namespace A179403.P7889443243624810197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000096 (n + 1) * A000096 (A289207 n).toNat)

end

end A179403.P7889443243624810197

namespace A179403

/-- `2*A000096(n+1)*A000096(A289207(n))` -/
def P7889443243624810197.Spec : Prop :=
  ∀ n, P7889443243624810197.a n = A179403 (n + 1)

end A179403

/-! ## A179403.P4308312880938662919

`A006000(n)%A000125(n)*A000096(n+1)`
-/

namespace A179403.P4308312880938662919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006000 n) (A000125 n) * A000096 (n + 1)

end

end A179403.P4308312880938662919

namespace A179403

/-- `A006000(n)%A000125(n)*A000096(n+1)` -/
def P4308312880938662919.Spec : Prop :=
  ∀ n, P4308312880938662919.a n = A179403 (n + 1)

end A179403

/-! ## A179403.P6436512487907350043

`(n+1)*(n-2)*A184218(n+3)`
-/

namespace A179403.P6436512487907350043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n : ℤ) - 2) * A184218 (n + 3))

end

end A179403.P6436512487907350043

namespace A179403

/-- `(n+1)*(n-2)*A184218(n+3)` -/
def P6436512487907350043.Spec : Prop :=
  ∀ n, P6436512487907350043.a n = A179403 (n + 1)

end A179403

/-! ## A179403.P8608555687125727330

`A006011(2*(n+1))%A037270(n+1)`
-/

namespace A179403.P8608555687125727330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006011 (2 * (n + 1))) (A037270 (n + 1))

end

end A179403.P8608555687125727330

namespace A179403

/-- `A006011(2*(n+1))%A037270(n+1)` -/
def P8608555687125727330.Spec : Prop :=
  ∀ n, P8608555687125727330.a n = A179403 (n + 1)

end A179403

/-! ## A179403.P13883960056212570198

`(n+1)*(A233583(n+1)-2)*∑[n+2]`
-/

namespace A179403.P13883960056212570198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((A233583 (n + 1) - 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A179403.P13883960056212570198

namespace A179403

/-- `(n+1)*(A233583(n+1)-2)*∑[n+2]` -/
def P13883960056212570198.Spec : Prop :=
  ∀ n, P13883960056212570198.a n = A179403 (n + 1)

end A179403

/-! ## A179403.P15076574194045568566

`(5*A000583(n+1))%A000217((n+1)²)`
-/

namespace A179403.P15076574194045568566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A000583 (n + 1)) (A000217 ((n + 1) ^ 2))

end

end A179403.P15076574194045568566

namespace A179403

/-- `(5*A000583(n+1))%A000217((n+1)²)` -/
def P15076574194045568566.Spec : Prop :=
  ∀ n, P15076574194045568566.a n = A179403 (n + 1)

end A179403

/-! ## A179403.P11426944796100194291

`(n+1)*A000096(n+1)*A049615(A000124(n))`
-/

namespace A179403.P11426944796100194291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000096 (n + 1) * A049615 (A000124 n).toNat)

end

end A179403.P11426944796100194291

namespace A179403

/-- `(n+1)*A000096(n+1)*A049615(A000124(n))` -/
def P11426944796100194291.Spec : Prop :=
  ∀ n, P11426944796100194291.a n = A179403 (n + 1)

end A179403

/-! ## A179403.P12698988791578356791

`A117142(2*(n+1))*A289207(n²-n)`
-/

namespace A179403.P12698988791578356791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (2 * (n + 1)) * A289207 (n ^ 2 - n)

end

end A179403.P12698988791578356791

namespace A179403

/-- `A117142(2*(n+1))*A289207(n²-n)` -/
def P12698988791578356791.Spec : Prop :=
  ∀ n, P12698988791578356791.a n = A179403 (n + 1)

end A179403

/-!
# A179404: Number of ways to place 3 nonattacking kings on an n X n toroidal board.

The programs for A179404, there is no canonical definition to state claims against.
-/

/-! ## A179404.P1358807553997743232

`A052711(C(∑{#}[n-1, floor((n+1)/(#+2))], n))`
-/

namespace A179404.P1358807553997743232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052711 (Nat.choose (∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊(n + 1 : ℚ) / (k + 2 : ℚ)⌋).toNat n)

end

end A179404.P1358807553997743232

/-!
# A179405: n-th derivative of x^(x^(x^x)) at x=1.

The programs for A179405, there is no canonical definition to state claims against.
-/

/-! ## A179405.P5950100920037208

`A028310(n)*A295104(A028310(n))`
-/

namespace A179405.P5950100920037208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A295104 (A028310 n).toNat

end

end A179405.P5950100920037208

/-! ## A179405.P7950414618720116256

`A215703(A000217(n+8)-8)`
-/

namespace A179405.P7950414618720116256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A000217 (n + 8) - 8).toNat

end

end A179405.P7950414618720116256

/-! ## A179405.P15818881821426241485

`A215703(A055998(n+9)-A016789(n+11))`
-/

namespace A179405.P15818881821426241485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A055998 (n + 9) - A016789 (n + 11)).toNat

end

end A179405.P15818881821426241485

/-! ## A179405.P12061930890967123332

`A277537(A052905(n+2))`
-/

namespace A179405.P12061930890967123332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (A052905 (n + 2)).toNat

end

end A179405.P12061930890967123332

/-! ## A179405.P9774921741784448915

`A277537(A056115(n)+10)`
-/

namespace A179405.P9774921741784448915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (A056115 n + 10).toNat

end

end A179405.P9774921741784448915

/-! ## A179405.P1984284920282682743

`A277537(eq[3, A129713(n)])`
-/

namespace A179405.P1984284920282682743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179405.P1984284920282682743

/-! ## A179405.P5517268456586865540

`A277537(eq[4, A025581(n)])`
-/

namespace A179405.P5517268456586865540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179405.P5517268456586865540

/-! ## A179405.P12016612517979814505

`A277537(A055999(n+2)+1)`
-/

namespace A179405.P12016612517979814505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (A055999 (n + 2) + 1).toNat

end

end A179405.P12016612517979814505

/-!
# A179406: Conjectured records d such that for all nonsquare x > A179407(n), all positive differences x^5-y^2 exceed d.

The programs for A179406, there is no canonical definition to state claims against.
-/

/-! ## A179406.P10891024689616597386

`(A179407(n+1)^5)%A179408(n+1)`
-/

namespace A179406.P10891024689616597386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179407 (n + 1) ^ 5) (A179408 (n + 1))

end

end A179406.P10891024689616597386

/-!
# A179407: Values x corresponding to the records d in A179406.

The programs for A179407, there is no canonical definition to state claims against.
-/

/-! ## A179407.P16956259219450146524

`round(root(A179408(n+1), 5)²)`
-/

namespace A179407.P16956259219450146524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A179408 (n + 1) : ℝ) ^ (1 / (5 : ℝ))) ^ 2)

end

end A179407.P16956259219450146524

/-! ## A179407.P14958524738986553079

`root(A179406(n+1)+A179408(n+1)², 5)`
-/

namespace A179407.P14958524738986553079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179406 (n + 1) + A179408 (n + 1) ^ 2 : ℝ) ^ (1 / (5 : ℝ))

end

end A179407.P14958524738986553079

/-!
# A179408: Values y corresponding to the records d in A179406.

The programs for A179408, there is no canonical definition to state claims against.
-/

/-! ## A179408.P6217716872336823815

`floor(sqrt(A179407(n+1)^5))`
-/

namespace A179408.P6217716872336823815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A179407 (n + 1) ^ 5)

end

end A179408.P6217716872336823815

/-! ## A179408.P11165355869660189715

`sqrt(A179407(n+1)^5-A179406(n+1))`
-/

namespace A179408.P11165355869660189715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179407 (n + 1) ^ 5 - A179406 (n + 1) : ℝ)

end

end A179408.P11165355869660189715

/-! ## A179408.P3793928212532223371

`A036488(A179407(n+1))`
-/

namespace A179408.P3793928212532223371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036488 (A179407 (n + 1)).toNat

end

end A179408.P3793928212532223371

/-!
# A179416: a(n)=1 if (n modulo 65536)+1 is a quadratic residue of 65537, 0 otherwise.

The programs for A179416, there is no canonical definition to state claims against.
-/

/-! ## A179416.P12885681296092281041

`ceil(atan(Δ[A165472(n)]))`
-/

namespace A179416.P12885681296092281041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (f1 (n + 1) - f1 n : ℝ)⌉

end

end A179416.P12885681296092281041

/-! ## A179416.P3746045419041284692

`ceil(A165471(1+n)/2)`
-/

namespace A179416.P3746045419041284692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165471 (1 + n) : ℚ) / 2⌉

end

end A179416.P3746045419041284692

/-! ## A179416.P796810482045262621

`char[A136805(1+n)-1]`
-/

namespace A179416.P796810482045262621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136805 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179416.P796810482045262621

/-! ## A179416.P13807143549351300006

`char[(n-1)*A165471(n)]`
-/

namespace A179416.P13807143549351300006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A165471 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179416.P13807143549351300006

/-! ## A179416.P4403837017163216391

`(A165471(n+1)+1)/2`
-/

namespace A179416.P4403837017163216391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165471 (n + 1) + 1 : ℚ) / 2

end

end A179416.P4403837017163216391

/-! ## A179416.P9943691035185873298

`1-char[A136806(n+1)-1]`
-/

namespace A179416.P9943691035185873298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136806 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A179416.P9943691035185873298

/-! ## A179416.P8501451547598010046

`A165476(Δ[A165472(n)]+1)`
-/

namespace A179416.P8501451547598010046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (f1 (n + 1) - f1 n + 1).toNat

end

end A179416.P8501451547598010046

/-! ## A179416.P3956124303040468011

`A165472(ceil(Δ[A165472(n)/2]))`
-/

namespace A179416.P3956124303040468011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165472 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165472 ⌈f1 (n + 1) - f1 n⌉.toNat

end

end A179416.P3956124303040468011

/-! ## A179416.P10520813005095815823

`A165471(Δ[∑[A165471(n)]+n])`
-/

namespace A179416.P10520813005095815823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (f1 (n + 1) - f1 n).toNat

end

end A179416.P10520813005095815823

/-! ## A179416.P1109784622011937449

`A165471(C(A165471(n+1)+n, n))`
-/

namespace A179416.P1109784622011937449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (Nat.choose (A165471 (n + 1) + (n : ℤ)).toNat n)

end

end A179416.P1109784622011937449

/-! ## A179416.P14210626961390188119

`A008612(a(A165471(n+1)+1))` with `a(0)=1, a(1)=1`
-/

namespace A179416.P14210626961390188119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008612 (a (A165471 (n + 1) + 1).toNat).toNat

end

end A179416.P14210626961390188119

/-! ## A179416.P2938944643817607203

`char[n-and(A165471(n), A255414(n+1))]`
-/

namespace A179416.P2938944643817607203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (A165471 n) (A255414 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A179416.P2938944643817607203

/-! ## A179416.P3354777290033277806

`A290098(or(A290101(2*(n+1)), A290108(2*(n+1))))`
-/

namespace A179416.P3354777290033277806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (Int.lor (A290101 (2 * (n + 1))) (A290108 (2 * (n + 1)))).toNat

end

end A179416.P3354777290033277806

/-!
# A179417: a(n) is the binary number (shown here in decimal) constructed from quadratic residues of 65537 in range [(n^2)+1,(n+1)^2] in such a way that quadratic residues are mapped to 1-bits, and non-quadratic residues (as well as the multiples of 65537) to 0-bits, with the lower end of range mapped to less significant, and the higher end of range to more significant bits.

The programs for A179417, there is no canonical definition to state claims against.
-/

/-! ## A179417.P16808372519530083716

`A250470(A210736(3*(n+1)))+∏[4-2/(n+1)]/2-1`
-/

namespace A179417.P16808372519530083716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250470 (A210736 (3 * (n + 1))).toNat : ℚ) + ((∏ j ∈ Finset.range (n + 1), f1 j) / 2 - 1)

end

end A179417.P16808372519530083716

/-!
# A179418: a(n) = Number of quadratic residues of 65537 in range [(n^2)+1,(n+1)^2].

The programs for A179418, there is no canonical definition to state claims against.
-/

/-! ## A179418.P7098875793291446904

`runs[floor(sqrt(A136805(n+1)))]`
-/

namespace A179418.P7098875793291446904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A136805 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A179418.P7098875793291446904

/-!
# A179419: Numbers n such that Mordell elliptic curve y^2=x^3-n has a number of integral points that is both odd and > 1.

The programs for A179419, there is no canonical definition to state claims against.
-/

/-! ## A179419.P8848868213554427493

`A228948(n+1)^3`
-/

namespace A179419.P8848868213554427493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228948 (n + 1) ^ 3

end

end A179419.P8848868213554427493

/-! ## A179419.P6820686662548858433

`A000578(A228948(n+1))`
-/

namespace A179419.P6820686662548858433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A228948 (n + 1)).toNat

end

end A179419.P6820686662548858433

/-! ## A179419.P2191307555884339947

`∑{d}[A228948(n+1), A059376(#)]`
-/

namespace A179419.P2191307555884339947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059376 d

end

end A179419.P2191307555884339947

/-! ## A179419.P16531303140325031988

`A066023(A228948(n+1)%A007519(n+1))`
-/

namespace A179419.P16531303140325031988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066023 (Int.tmod (A228948 (n + 1)) (A007519 (n + 1))).toNat

end

end A179419.P16531303140325031988

/-! ## A179419.P10984866919288085633

`A000578(comp[∪[A356713(n+1), n²]])`
-/

namespace A179419.P10984866919288085633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A179419.P10984866919288085633

/-!
# A179420: E.g.f. A(x) satisfies: A(A(x)) = x*A'(x) with A(0)=0, A'(0)=1.

The programs for A179420, there is no canonical definition to state claims against.
-/

/-! ## A179420.P783910301945156796

`n*A179421(abs(1-n))`
-/

namespace A179420.P783910301945156796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A179421 |1 - (n : ℤ)|.toNat

end

end A179420.P783910301945156796

/-! ## A179420.P11990826939981875987

`lcm(n, A028310(A132472(n)))`
-/

namespace A179420.P11990826939981875987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A028310 (A132472 n).toNat)

end

end A179420.P11990826939981875987

/-!
# A179421: E.g.f. A(x) satisfies: x*A(x) equals column 0 in the matrix log of the Riordan array (A(x), x*A(x)).

The programs for A179421, there is no canonical definition to state claims against.
-/

/-! ## A179421.P16751266612823419877

`A179420(n+1)/(n+1)`
-/

namespace A179421.P16751266612823419877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179420 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A179421.P16751266612823419877

/-! ## A179421.P18114141889772243250

`A179422(n+1)/(n+1)²`
-/

namespace A179421.P18114141889772243250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179422 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A179421.P18114141889772243250

/-! ## A179421.P11553379698833725770

`ceil(A179422(n+1)/A000290(n+1))`
-/

namespace A179421.P11553379698833725770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A179422 (n + 1) : ℚ) / (A000290 (n + 1) : ℚ)⌉

end

end A179421.P11553379698833725770

/-! ## A179421.P2366264701513457179

`floor(A179422(n+1)/∑[A317439(n+1)])`
-/

namespace A179421.P2366264701513457179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179422 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A179421.P2366264701513457179

/-!
# A179422: E.g.f.: A(x) = G(G(x)) = x*G'(x) where G(x) is the g.f. of A179420.

The programs for A179422, there is no canonical definition to state claims against.
-/

/-! ## A179422.P8789055305324062867

`(n+1)²*A179421(n)`
-/

namespace A179422.P8789055305324062867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A179421 n

end

end A179422.P8789055305324062867

/-! ## A179422.P17923168674352749158

`(n+1)*A179420(n+1)`
-/

namespace A179422.P17923168674352749158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A179420 (n + 1)

end

end A179422.P17923168674352749158

/-! ## A179422.P14230250098477368511

`A179421(n)*A189889(2*(n+1))`
-/

namespace A179422.P14230250098477368511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179421 n * A189889 (2 * (n + 1))

end

end A179422.P14230250098477368511

/-! ## A179422.P14815871748342050627

`record[A008624(n)*A179420(A008624(n))]`
-/

namespace A179422.P14815871748342050627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n * A179420 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179422.P14815871748342050627

/-! ## A179422.P13419399682863256993

`A179420(n+1)²/A179421(n)`
-/

namespace A179422.P13419399682863256993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179420 (n + 1) ^ 2 : ℚ) / (A179421 n : ℚ)

end

end A179422.P13419399682863256993

/-!
# A179423: E.g.f. A(x) = F(x)^2 where F(x) is the e.g.f. of A179421.

The programs for A179423, there is no canonical definition to state claims against.
-/

/-! ## A179423.P758282712001631825

`∑{#}[n, C(n, #)*A179421(#)*A179421(n-#)]`
-/

namespace A179423.P758282712001631825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A179421 k * A179421 (n - k)

end

end A179423.P758282712001631825

/-!
# A179424: Number of ways to place 4 nonattacking kings on an n X n toroidal board.

The programs for A179424, there is no canonical definition to state claims against.
-/

/-! ## A179424.P16539679267925728265

`A355197(C(n!, 2))`
-/

namespace A179424.P16539679267925728265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355197 (Nat.choose (Nat.factorial n) 2)

end

end A179424.P16539679267925728265

/-!
# A179425: Number of ways to place 5 nonattacking kings on an n X n toroidal board.

The programs for A179425, there is no canonical definition to state claims against.
-/

/-! ## A179425.P3703970327659932151

`5*A000014(A355874(n))`
-/

namespace A179425.P3703970327659932151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000014 (A355874 n).toNat

end

end A179425.P3703970327659932151

/-! ## A179425.P7201680366314266635

`lcm(5, A231037(A134357(n)))`
-/

namespace A179425.P7201680366314266635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A231037 (A134357 n).toNat)

end

end A179425.P7201680366314266635

/-!
# A179429: Primes that are sum of three positive Fibonacci numbers.

The programs for A179429, there is no canonical definition to state claims against.
-/

/-! ## A179429.P17186510980390065866

`p?[n%(A014263(n+1)^A319396(n))]`
-/

namespace A179429.P17186510980390065866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) ^ (A319396 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179429.P17186510980390065866

/-! ## A179429.P60900954967521043

`p?[(n+1)%(A238056(n+1)^A319396(n+1))]`
-/

namespace A179429.P60900954967521043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A238056 (n + 1) : ℚ) ^ (A319396 (n + 1) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179429.P60900954967521043

/-! ## A179429.P17388209164114632104

`p?[gcd(4*n, n^3)*A025780(1-A219641(n)+n)]`
-/

namespace A179429.P17388209164114632104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (4 * n) (n ^ 3) : ℤ) * A025780 (1 - A219641 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179429.P17388209164114632104

/-! ## A179429.P15930713631431352365

`eq[A004525(A288625(n+1)), A039653(n)]`
-/

namespace A179429.P15930713631431352365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A288625 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179429.P15930713631431352365

/-! ## A179429.P10973771136494443497

`eq[A004525(A288625(n+1)), A272476(n)]`
-/

namespace A179429.P10973771136494443497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A288625 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179429.P10973771136494443497

/-! ## A179429.P8041864237097599024

`p?[A176447(n)*A249049(1-A219641(n)+n)]`
-/

namespace A179429.P8041864237097599024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n * A249049 (1 - A219641 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179429.P8041864237097599024

/-!
# A179431: a(n) = binomial(3^(n-1), n).

The programs for A179431, there is no canonical definition to state claims against.
-/

/-! ## A179431.P12290914735345523052

`C(3^abs(1-n), n)`
-/

namespace A179431.P12290914735345523052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((3 : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat n

end

end A179431.P12290914735345523052

/-! ## A179431.P7909485317209863198

`∏{e}[2^n, C(3^(n-1), #)]`
-/

namespace A179431.P7909485317209863198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat (Nat.factorization (f1 n) p)

end

end A179431.P7909485317209863198

/-! ## A179431.P745742439572587474

`or(C(ceil(3^(n-1)), n), char[1])`
-/

namespace A179431.P745742439572587474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat n) (if ∃ j, f1 j = n then 1 else 0)

end

end A179431.P745742439572587474

/-! ## A179431.P6222239919938276907

`C(floor(3^(n-1)), n)^(1-char[1])`
-/

namespace A179431.P6222239919938276907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat n : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A179431.P6222239919938276907

/-! ## A179431.P6359201058747061936

`gcd(C(2, n+2), C(floor(3^(n-1)), n))`
-/

namespace A179431.P6359201058747061936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose 2 (n + 2)) (Nat.choose ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat n)

end

end A179431.P6359201058747061936

/-!
# A179432: a(n) = C(2*3^(n-1), n).

The programs for A179432, there is no canonical definition to state claims against.
-/

/-! ## A179432.P15015743705862992077

`C(Δ[floor(3^(n-1))], n)`
-/

namespace A179432.P15015743705862992077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat n

end

end A179432.P15015743705862992077

/-! ## A179432.P16649445070420904575

`record[C(A000792(n), C(n², 3)%(n+1))]`
-/

namespace A179432.P16649445070420904575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000792 n).toNat (Nat.choose (n ^ 2) 3 % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179432.P16649445070420904575

/-! ## A179432.P9643631364069839983

`record[C(A003972(n+1), val(n+1, 2))]`
-/

namespace A179432.P9643631364069839983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003972 (n + 1)).toNat (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179432.P9643631364069839983

/-! ## A179432.P6479897961492698602

`record[C(A003968(n+1), val(n+1, 2))]`
-/

namespace A179432.P6479897961492698602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003968 (n + 1)).toNat (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179432.P6479897961492698602

/-! ## A179432.P7074393890273991076

`record[C(A349356(n+1), ∑{e}[n+1, #])]`
-/

namespace A179432.P7074393890273991076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A349356 (n + 1)).toNat (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179432.P7074393890273991076

/-!
# A179433: Column 1 of triangle A179430.

The programs for A179433, there is no canonical definition to state claims against.
-/

/-! ## A179433.P8882503907688627661

`A179430(eq[1, col(n)])`
-/

namespace A179433.P8882503907688627661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179430 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A179433.P8882503907688627661

/-! ## A179433.P9422784131783477024

`A179430(∑[n+1]+1)`
-/

namespace A179433.P9422784131783477024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179430 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A179433.P9422784131783477024

/-!
# A179435: For positive n with prime decomposition n = Product_{j=1..m} (p_j^k_j) define a_n = Sum_{j=1..m} (p_j*k_j) and b_n = Sum_{j=1..m} (p_j^k_j). This sequence gives those n for which a_n and b_n are both prime and unequal.

The programs for A179435, there is no canonical definition to state claims against.
-/

/-! ## A179435.P13050064990401764482

`A333945(A356135(n+2))`
-/

namespace A179435.P13050064990401764482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333945 (A356135 (n + 2)).toNat

end

end A179435.P13050064990401764482

/-!
# A179436: a(n) = (3*n+7)*(3*n+2)/2.

The programs for A179436, the canonical program `A179436.P14777368974970349778` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179436 has offset 0).

The definition of A179436 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+7)*(3*n+2)/2` (program `A179436.P14276443080442730234`, by `A179436.P14276443080442730234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179436.P324764693842455415

`ogf((7+4x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A179436.P324764693842455415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 4, -2] [1, -3, 3, -1] n

end

end A179436.P324764693842455415

namespace A179436

/-- `ogf((7+4x-2x^2)/(1-3x+3x^2-x^3))` -/
def P324764693842455415.Spec : Prop :=
  ∀ n, P324764693842455415.a n = A179436 n

end A179436

/-! ## A179436.P14777368974970349778

`a(n-1)+9*(n+1)` with `a(0)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A179436

/-- `a(n-1)+9*(n+1)` -/
def P14777368974970349778.Spec : Prop :=
  ∀ n, (P14777368974970349778.a n : ℤ) = A179436 n

theorem P14777368974970349778.correct : P14777368974970349778.Spec := by
  intro n
  simp only [A179436]

end A179436

/-! ## A179436.P9441101481451032929

`(14+27*n+9*n²)/2`
-/

namespace A179436.P9441101481451032929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 + 27 * n + 9 * n ^ 2 : ℚ) / 2

end

end A179436.P9441101481451032929

namespace A179436

/-- `(14+27*n+9*n²)/2` -/
def P9441101481451032929.Spec : Prop :=
  ∀ n, P9441101481451032929.a n = (A179436 n : ℚ)

theorem P9441101481451032929.correct : P9441101481451032929.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A179436, Nat.add_sub_cancel, A179436.P9441101481451032929.a, A179436.P14777368974970349778.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A179436, Nat.add_sub_cancel, A179436.P9441101481451032929.a, A179436.P14777368974970349778.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A179436

/-! ## A179436.P14276443080442730234

`(3*n+7)*(3*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179436.P14276443080442730234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 7) * (3 * n + 2) : ℚ) / 2

end

end A179436.P14276443080442730234

namespace A179436

/-- `(3*n+7)*(3*n+2)/2` -/
def P14276443080442730234.Spec : Prop :=
  ∀ n, P14276443080442730234.a n = (A179436 n : ℚ)

theorem P14276443080442730234.correct : P14276443080442730234.Spec := by
  intro n
  induction n with
  | zero => simp [A179436, A179436.P14276443080442730234.a, A179436.P14777368974970349778.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A179436, Nat.add_sub_cancel, A179436.P14276443080442730234.a, A179436.P14777368974970349778.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A179436

/-! ## A179436.P9713968365099880023

`A133694(n+1)+6*A000217(n+1)`
-/

namespace A179436.P9713968365099880023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133694 (n + 1) + 6 * A000217 (n + 1)

end

end A179436.P9713968365099880023

namespace A179436

/-- `A133694(n+1)+6*A000217(n+1)` -/
def P9713968365099880023.Spec : Prop :=
  ∀ n, P9713968365099880023.a n = A179436 n

end A179436

/-! ## A179436.P2875889975702040873

`∑[a(n-1)+9]` with `a(0)=7, a(1)=18`
-/

namespace A179436.P2875889975702040873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 18] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179436.P2875889975702040873

namespace A179436

/-- `∑[a(n-1)+9]` -/
def P2875889975702040873.Spec : Prop :=
  ∀ n, (P2875889975702040873.a n : ℤ) = A179436 n

end A179436

/-! ## A179436.P18028000510759572784

`∑[ogf((7+4x-2x^2)/(1-2x+x^2))]`
-/

namespace A179436.P18028000510759572784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 4, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179436.P18028000510759572784

namespace A179436

/-- `∑[ogf((7+4x-2x^2)/(1-2x+x^2))]` -/
def P18028000510759572784.Spec : Prop :=
  ∀ n, P18028000510759572784.a n = A179436 n

end A179436

/-! ## A179436.P17954594714294884836

`abs(3-C(2*n+5+n, 2))`
-/

namespace A179436.P17954594714294884836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (Nat.choose (2 * n + 5 + n) 2 : ℤ)|

end

end A179436.P17954594714294884836

namespace A179436

/-- `abs(3-C(2*n+5+n, 2))` -/
def P17954594714294884836.Spec : Prop :=
  ∀ n, P17954594714294884836.a n = A179436 n

end A179436

/-! ## A179436.P6813572461402025497

`∑[(n+1)*(2%(n+1)²+7)]`
-/

namespace A179436.P6813572461402025497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 % (n + 1) ^ 2 + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179436.P6813572461402025497

namespace A179436

/-- `∑[(n+1)*(2%(n+1)²+7)]` -/
def P6813572461402025497.Spec : Prop :=
  ∀ n, (P6813572461402025497.a n : ℤ) = A179436 n

end A179436

/-! ## A179436.P15335003301132354588

`A166148(n+1)+6`
-/

namespace A179436.P15335003301132354588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166148 (n + 1) + 6

end

end A179436.P15335003301132354588

namespace A179436

/-- `A166148(n+1)+6` -/
def P15335003301132354588.Spec : Prop :=
  ∀ n, P15335003301132354588.a n = A179436 n

end A179436

/-! ## A179436.P12855602888499479006

`A235332(n)+1+n`
-/

namespace A179436.P12855602888499479006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235332 n + 1 + (n : ℤ)

end

end A179436.P12855602888499479006

namespace A179436

/-- `A235332(n)+1+n` -/
def P12855602888499479006.Spec : Prop :=
  ∀ n, P12855602888499479006.a n = A179436 n

end A179436

/-! ## A179436.P640752698940137028

`3*A133694(n+1)+4`
-/

namespace A179436.P640752698940137028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A133694 (n + 1) + 4

end

end A179436.P640752698940137028

namespace A179436

/-- `3*A133694(n+1)+4` -/
def P640752698940137028.Spec : Prop :=
  ∀ n, P640752698940137028.a n = A179436 n

end A179436

/-! ## A179436.P8803546482824614236

`A062725(n+1)+2*n`
-/

namespace A179436.P8803546482824614236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 (n + 1) + (2 * n : ℤ)

end

end A179436.P8803546482824614236

namespace A179436

/-- `A062725(n+1)+2*n` -/
def P8803546482824614236.Spec : Prop :=
  ∀ n, P8803546482824614236.a n = A179436 n

end A179436

/-! ## A179436.P11844666819024073571

`abs(2-9*A000217(n+1))`
-/

namespace A179436.P11844666819024073571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - 9 * A000217 (n + 1)|

end

end A179436.P11844666819024073571

namespace A179436

/-- `abs(2-9*A000217(n+1))` -/
def P11844666819024073571.Spec : Prop :=
  ∀ n, P11844666819024073571.a n = A179436 n

end A179436

/-! ## A179436.P5315436744901446133

`∑[abs(A008592(n)+7-abs(1-n))+1]`
-/

namespace A179436.P5315436744901446133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A008592 n + 7 - |1 - (n : ℤ)|)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179436.P5315436744901446133

namespace A179436

/-- `∑[abs(A008592(n)+7-abs(1-n))+1]` -/
def P5315436744901446133.Spec : Prop :=
  ∀ n, P5315436744901446133.a n = A179436 n

end A179436

/-! ## A179436.P17477719084883411037

`A027468(n)+A017245(n)`
-/

namespace A179436.P17477719084883411037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n + A017245 n

end

end A179436.P17477719084883411037

namespace A179436

/-- `A027468(n)+A017245(n)` -/
def P17477719084883411037.Spec : Prop :=
  ∀ n, P17477719084883411037.a n = A179436 n

end A179436

/-! ## A179436.P2035350857818324054

`A038764(n)+A017593(n)`
-/

namespace A179436.P2035350857818324054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n + A017593 n

end

end A179436.P2035350857818324054

namespace A179436

/-- `A038764(n)+A017593(n)` -/
def P2035350857818324054.Spec : Prop :=
  ∀ n, P2035350857818324054.a n = A179436 n

end A179436

/-! ## A179436.P17192101620970625059

`A062123(n)+A017221(n)`
-/

namespace A179436.P17192101620970625059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n + A017221 n

end

end A179436.P17192101620970625059

namespace A179436

/-- `A062123(n)+A017221(n)` -/
def P17192101620970625059.Spec : Prop :=
  ∀ n, P17192101620970625059.a n = A179436 n

end A179436

/-! ## A179436.P861493448618328775

`A062728(n)+A017353(n)`
-/

namespace A179436.P861493448618328775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n + A017353 n

end

end A179436.P861493448618328775

namespace A179436

/-- `A062728(n)+A017353(n)` -/
def P861493448618328775.Spec : Prop :=
  ∀ n, P861493448618328775.a n = A179436 n

end A179436

/-! ## A179436.P13992712236509352499

`A064226(n)+A017029(n)`
-/

namespace A179436.P13992712236509352499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064226 n + A017029 n

end

end A179436.P13992712236509352499

namespace A179436

/-- `A064226(n)+A017029(n)` -/
def P13992712236509352499.Spec : Prop :=
  ∀ n, P13992712236509352499.a n = A179436 n

end A179436

/-!
# A179437: a(n) = |2n - prime(n)|.

The programs for A179437, the canonical program `A179437.P15903906826202379289` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179437 has offset 1).

The definition of A179437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179437.P15903906826202379289

`abs(2*(n+1)-A000040(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A179437

/-- `abs(2*(n+1)-A000040(n+1))` -/
def P15903906826202379289.Spec : Prop :=
  ∀ n, P15903906826202379289.a n = A179437 (n + 1)

theorem P15903906826202379289.correct : P15903906826202379289.Spec := by
  intro n
  simp only [A179437, Nat.add_sub_cancel]

end A179437

/-! ## A179437.P9182085906867531157

`abs(1-A131733(n+1))`
-/

namespace A179437.P9182085906867531157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A131733 (n + 1)|

end

end A179437.P9182085906867531157

namespace A179437

/-- `abs(1-A131733(n+1))` -/
def P9182085906867531157.Spec : Prop :=
  ∀ n, P9182085906867531157.a n = A179437 (n + 1)

theorem P9182085906867531157.correct : P9182085906867531157.Spec := by
  intro n
  simp only [A179437, Nat.add_sub_cancel, A179437.P9182085906867531157.a, A179437.P15903906826202379289.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131733, A131733.P2209471722626615476.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179437

/-! ## A179437.P12631752911045488638

`abs(2-A173072(n+1))`
-/

namespace A179437.P12631752911045488638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A173072 (n + 1)|

end

end A179437.P12631752911045488638

namespace A179437

/-- `abs(2-A173072(n+1))` -/
def P12631752911045488638.Spec : Prop :=
  ∀ n, P12631752911045488638.a n = A179437 (n + 1)

theorem P12631752911045488638.correct : P12631752911045488638.Spec := by
  intro n
  simp only [A179437, Nat.add_sub_cancel, A179437.P12631752911045488638.a, A179437.P15903906826202379289.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A173072, A173072.P15776542700832946734.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179437

/-! ## A179437.P16384372584715979584

`abs(A065890(n+1)-n)`
-/

namespace A179437.P16384372584715979584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065890 (n + 1) - (n : ℤ)|

end

end A179437.P16384372584715979584

namespace A179437

/-- `abs(A065890(n+1)-n)` -/
def P16384372584715979584.Spec : Prop :=
  ∀ n, P16384372584715979584.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P2199918454555203446

`abs(∑[2-A054541(n+1)])`
-/

namespace A179437.P2199918454555203446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A179437.P2199918454555203446

namespace A179437

/-- `abs(∑[2-A054541(n+1)])` -/
def P2199918454555203446.Spec : Prop :=
  ∀ n, P2199918454555203446.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P3796185665991424450

`abs(1-A014689(n+1)+n)`
-/

namespace A179437.P3796185665991424450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A014689 (n + 1) + (n : ℤ)|

end

end A179437.P3796185665991424450

namespace A179437

/-- `abs(1-A014689(n+1)+n)` -/
def P3796185665991424450.Spec : Prop :=
  ∀ n, P3796185665991424450.a n = A179437 (n + 1)

theorem P3796185665991424450.correct : P3796185665991424450.Spec := by
  intro n
  simp only [A179437, Nat.add_sub_cancel, A179437.P3796185665991424450.a, A179437.P15903906826202379289.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179437

/-! ## A179437.P6327941677181831788

`abs(2-A014692(n+1)+n)`
-/

namespace A179437.P6327941677181831788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A014692 (n + 1) + (n : ℤ)|

end

end A179437.P6327941677181831788

namespace A179437

/-- `abs(2-A014692(n+1)+n)` -/
def P6327941677181831788.Spec : Prop :=
  ∀ n, P6327941677181831788.a n = A179437 (n + 1)

theorem P6327941677181831788.correct : P6327941677181831788.Spec := by
  intro n
  simp only [A179437, Nat.add_sub_cancel, A179437.P6327941677181831788.a, A179437.P15903906826202379289.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179437

/-! ## A179437.P3221545736278418107

`abs(2*n-A040976(n+1))`
-/

namespace A179437.P3221545736278418107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A040976 (n + 1)|

end

end A179437.P3221545736278418107

namespace A179437

/-- `abs(2*n-A040976(n+1))` -/
def P3221545736278418107.Spec : Prop :=
  ∀ n, P3221545736278418107.a n = A179437 (n + 1)

theorem P3221545736278418107.correct : P3221545736278418107.Spec := by
  intro n
  simp only [A179437, Nat.add_sub_cancel, A179437.P3221545736278418107.a, A179437.P15903906826202379289.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179437

/-! ## A179437.P7805959360143914248

`abs(A006093(n+1)-Δ[n²])`
-/

namespace A179437.P7805959360143914248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006093 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A179437.P7805959360143914248

namespace A179437

/-- `abs(A006093(n+1)-Δ[n²])` -/
def P7805959360143914248.Spec : Prop :=
  ∀ n, P7805959360143914248.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P6497211408631792697

`abs(A000040(n+1)-(A005408(n)+1))`
-/

namespace A179437.P6497211408631792697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) - (A005408 n + 1)|

end

end A179437.P6497211408631792697

namespace A179437

/-- `abs(A000040(n+1)-(A005408(n)+1))` -/
def P6497211408631792697.Spec : Prop :=
  ∀ n, P6497211408631792697.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P13389943257863792981

`abs(A000040(n+1)-A005843(n+1))`
-/

namespace A179437.P13389943257863792981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) - A005843 (n + 1)|

end

end A179437.P13389943257863792981

namespace A179437

/-- `abs(A000040(n+1)-A005843(n+1))` -/
def P13389943257863792981.Spec : Prop :=
  ∀ n, P13389943257863792981.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P10106773223085669134

`abs(A000040(n+1)+1-A144396(n+1))`
-/

namespace A179437.P10106773223085669134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) + (1 - A144396 (n + 1))|

end

end A179437.P10106773223085669134

namespace A179437

/-- `abs(A000040(n+1)+1-A144396(n+1))` -/
def P10106773223085669134.Spec : Prop :=
  ∀ n, P10106773223085669134.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P17440513212171888725

`abs(A162177(n+2)-n)`
-/

namespace A179437.P17440513212171888725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162177 (n + 2) - (n : ℤ)|

end

end A179437.P17440513212171888725

namespace A179437

/-- `abs(A162177(n+2)-n)` -/
def P17440513212171888725.Spec : Prop :=
  ∀ n, P17440513212171888725.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P3208215381908784391

`abs(2*n+1-record[A000010(n+1)])`
-/

namespace A179437.P3208215381908784391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A179437.P3208215381908784391

namespace A179437

/-- `abs(2*n+1-record[A000010(n+1)])` -/
def P3208215381908784391.Spec : Prop :=
  ∀ n, P3208215381908784391.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P5752946997247321918

`abs(A004277(n+1)-record[A006530(n+2)])`
-/

namespace A179437.P5752946997247321918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A179437.P5752946997247321918

namespace A179437

/-- `abs(A004277(n+1)-record[A006530(n+2)])` -/
def P5752946997247321918.Spec : Prop :=
  ∀ n, P5752946997247321918.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P953115585421367270

`abs(record[A000010(n+1)+1]-A004277(n+1))`
-/

namespace A179437.P953115585421367270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004277 (n + 1)|

end

end A179437.P953115585421367270

namespace A179437

/-- `abs(record[A000010(n+1)+1]-A004277(n+1))` -/
def P953115585421367270.Spec : Prop :=
  ∀ n, P953115585421367270.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P178049085004432095

`eq[4, A000005(3*(n+2))]-2*n`
-/

namespace A179437.P178049085004432095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A179437.P178049085004432095

namespace A179437

/-- `eq[4, A000005(3*(n+2))]-2*n` -/
def P178049085004432095.Spec : Prop :=
  ∀ n, P178049085004432095.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P7367136633207307396

`abs(2*(n+1)-p?[A014681(n)])`
-/

namespace A179437.P7367136633207307396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A179437.P7367136633207307396

namespace A179437

/-- `abs(2*(n+1)-p?[A014681(n)])` -/
def P7367136633207307396.Spec : Prop :=
  ∀ n, P7367136633207307396.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P8687539192644281403

`abs(2*(n+1)-record[A093074(n+1)])`
-/

namespace A179437.P8687539192644281403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A179437.P8687539192644281403

namespace A179437

/-- `abs(2*(n+1)-record[A093074(n+1)])` -/
def P8687539192644281403.Spec : Prop :=
  ∀ n, P8687539192644281403.a n = A179437 (n + 1)

end A179437

/-! ## A179437.P8509786084081738596

`abs(A097454(A000040(n+1)))`
-/

namespace A179437.P8509786084081738596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097454 (A000040 (n + 1)).toNat|

end

end A179437.P8509786084081738596

namespace A179437

/-- `abs(A097454(A000040(n+1)))` -/
def P8509786084081738596.Spec : Prop :=
  ∀ n, P8509786084081738596.a n = A179437 (n + 1)

end A179437

/-!
# A179438: Triangle T(n,k) read by rows: number of forests of rooted trees whose trees have sizes given by the k-th partition of n listed in Abramowitz and Stegun order, 1 <= k <= A000041(n).

The programs for A179438, there is no canonical definition to state claims against.
-/

/-! ## A179438.P12181565607991510714

`A097966(A107106(n))`
-/

namespace A179438.P12181565607991510714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097966 (A107106 n).toNat

end

end A179438.P12181565607991510714

/-! ## A179438.P755949523984576851

`A128331(A179380(n))`
-/

namespace A179438.P755949523984576851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128331 (A179380 n).toNat

end

end A179438.P755949523984576851

/-! ## A179438.P10724974048384441681

`A160511(A179318(n))`
-/

namespace A179438.P10724974048384441681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160511 (A179318 n).toNat

end

end A179438.P10724974048384441681

/-! ## A179438.P14914702577077273964

`A360679(A179380(n)+1)`
-/

namespace A179438.P14914702577077273964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (A179380 n + 1).toNat

end

end A179438.P14914702577077273964

/-! ## A179438.P3854582088861965796

`A246258(A107106(n))%A246258(n+3)`
-/

namespace A179438.P3854582088861965796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246258 (A107106 n).toNat) (A246258 (n + 3))

end

end A179438.P3854582088861965796

/-!
# A179439: Positive numbers not of the form x^5 - y^2.

The programs for A179439, there is no canonical definition to state claims against.
-/

/-! ## A179439.P7236659811043506973

`comp[A177763(n+1)-1]+1`
-/

namespace A179439.P7236659811043506973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A179439.P7236659811043506973

/-! ## A179439.P7577640953884075115

`eq[char[A177763(n+1)], A151878(n)]`
-/

namespace A179439.P7577640953884075115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A179439.P7577640953884075115

/-! ## A179439.P239865089107900324

`comp[∪[A000541(n), A177763(n+1)]]`
-/

namespace A179439.P239865089107900324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A179439.P239865089107900324

/-! ## A179439.P733007789995486623

`comp[∪[A001015(n), A177763(n+1)]]`
-/

namespace A179439.P733007789995486623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A179439.P733007789995486623

/-! ## A179439.P13293181115223392636

`comp[∪[A001016(n), A177763(n+1)]]`
-/

namespace A179439.P13293181115223392636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A179439.P13293181115223392636

/-! ## A179439.P8199865868451050668

`comp[∪[A001014(3*n), A177763(n+1)]]`
-/

namespace A179439.P8199865868451050668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (3 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A179439.P8199865868451050668

/-! ## A179439.P11668552127051779332

`eq[char[A177763(n+1)], A151933(n)]`
-/

namespace A179439.P11668552127051779332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A179439.P11668552127051779332

/-!
# A179441: Number of solutions to a+b+c < d+e with each of a,b,c,d,e in {1..n+1}.

The programs for A179441, the canonical program `A179441.P18097958014302901024` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179441 has offset 1).

The definition of A179441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179441.P9680897026632998037

`ogf((1+15x+10x^2+x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A179441.P9680897026632998037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15, 10, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A179441.P9680897026632998037

namespace A179441

/-- `ogf((1+15x+10x^2+x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P9680897026632998037.Spec : Prop :=
  ∀ n, P9680897026632998037.a n = A179441 (n + 1)

end A179441

/-! ## A179441.P18097958014302901024

`(27*(n+1)^5+80*(n+1)^4+65*(n+1)^3-20*(n+1)²-32*(n+1))/120`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A179441

/-- `(27*(n+1)^5+80*(n+1)^4+65*(n+1)^3-20*(n+1)²-32*(n+1))/120` -/
def P18097958014302901024.Spec : Prop :=
  ∀ n, P18097958014302901024.a n = (A179441 (n + 1) : ℚ)

end A179441

/-! ## A179441.P6849432205550094178

`∑[∑[C(3*(n+1), 3)-n²]]`
-/

namespace A179441.P6849432205550094178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * (n + 1)) 3 : ℤ) - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179441.P6849432205550094178

namespace A179441

/-- `∑[∑[C(3*(n+1), 3)-n²]]` -/
def P6849432205550094178.Spec : Prop :=
  ∀ n, P6849432205550094178.a n = A179441 (n + 1)

end A179441

/-! ## A179441.P12370136702404357625

`∑[∑[∑[A093485(n)]-n²]]`
-/

namespace A179441.P12370136702404357625
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093485 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179441.P12370136702404357625

namespace A179441

/-- `∑[∑[∑[A093485(n)]-n²]]` -/
def P12370136702404357625.Spec : Prop :=
  ∀ n, P12370136702404357625.a n = A179441 (n + 1)

end A179441

/-! ## A179441.P13447009885874467773

`∑[∑[(n+1)*A081267(n)+n]]`
-/

namespace A179441.P13447009885874467773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081267 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179441.P13447009885874467773

namespace A179441

/-- `∑[∑[(n+1)*A081267(n)+n]]` -/
def P13447009885874467773.Spec : Prop :=
  ∀ n, P13447009885874467773.a n = A179441 (n + 1)

end A179441

/-! ## A179441.P6738885175220097820

`∑[∑[A006566(n+1)-n²]]`
-/

namespace A179441.P6738885175220097820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 (n + 1) - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179441.P6738885175220097820

namespace A179441

/-- `∑[∑[A006566(n+1)-n²]]` -/
def P6738885175220097820.Spec : Prop :=
  ∀ n, P6738885175220097820.a n = A179441 (n + 1)

end A179441

/-! ## A179441.P11347225112612615816

`∑[A116689(n+1)-∑[n²]]`
-/

namespace A179441.P11347225112612615816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116689 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179441.P11347225112612615816

namespace A179441

/-- `∑[A116689(n+1)-∑[n²]]` -/
def P11347225112612615816.Spec : Prop :=
  ∀ n, P11347225112612615816.a n = A179441 (n + 1)

end A179441

/-! ## A179441.P16422632206779310475

`∑[∑[A262000(n+1)]+∑[n]²]`
-/

namespace A179441.P16422632206779310475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262000 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179441.P16422632206779310475

namespace A179441

/-- `∑[∑[A262000(n+1)]+∑[n]²]` -/
def P16422632206779310475.Spec : Prop :=
  ∀ n, P16422632206779310475.a n = A179441 (n + 1)

end A179441

/-!
# A179442: a(n) = ((n-1)! * (n+1)!) / n.

The programs for A179442, the canonical program `A179442.P16760136323409824133` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179442 has offset 1).

The definition of A179442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179442.P16760136323409824133

`n!²*(n+2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A179442

/-- `n!²*(n+2)` -/
def P16760136323409824133.Spec : Prop :=
  ∀ n, (P16760136323409824133.a n : ℤ) = A179442 (n + 1)

theorem P16760136323409824133.correct : P16760136323409824133.Spec := by
  intro n
  simp only [A179442, Nat.add_sub_cancel]

end A179442

/-! ## A179442.P9697320009761250102

`n!*(n+2)!/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179442.P9697320009761250102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.factorial (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A179442.P9697320009761250102

namespace A179442

/-- `n!*(n+2)!/(n+1)` -/
def P9697320009761250102.Spec : Prop :=
  ∀ n, P9697320009761250102.a n = (A179442 (n + 1) : ℚ)

end A179442

/-! ## A179442.P11644890166148132504

`A001044(n)*(n+2)`
-/

namespace A179442.P11644890166148132504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001044 n * (n + 2 : ℤ)

end

end A179442.P11644890166148132504

namespace A179442

/-- `A001044(n)*(n+2)` -/
def P11644890166148132504.Spec : Prop :=
  ∀ n, P11644890166148132504.a n = A179442 (n + 1)

theorem P11644890166148132504.correct : P11644890166148132504.Spec := by
  intro n
  simp only [A179442, Nat.add_sub_cancel, A179442.P11644890166148132504.a, A179442.P16760136323409824133.a, A001044, A001044.P12042438856590203725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179442

/-! ## A179442.P6295498435785839541

`A175430(n+1)/(n+1)`
-/

namespace A179442.P6295498435785839541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175430 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A179442.P6295498435785839541

namespace A179442

/-- `A175430(n+1)/(n+1)` -/
def P6295498435785839541.Spec : Prop :=
  ∀ n, P6295498435785839541.a n = (A179442 (n + 1) : ℚ)

end A179442

/-! ## A179442.P2209472868820320425

`(n+2)*n!²`
-/

namespace A179442.P2209472868820320425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.factorial n ^ 2

end

end A179442.P2209472868820320425

namespace A179442

/-- `(n+2)*n!²` -/
def P2209472868820320425.Spec : Prop :=
  ∀ n, (P2209472868820320425.a n : ℤ) = A179442 (n + 1)

theorem P2209472868820320425.correct : P2209472868820320425.Spec := by
  intro n
  simp only [A179442, Nat.add_sub_cancel, A179442.P2209472868820320425.a, A179442.P16760136323409824133.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A179442

/-!
# A179443: Numbers m such that m and 10*m + 1 are both composites.

The programs for A179443, the canonical program `A179443.P2342233495432170048` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179443 has offset 1).

The definition of A179443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8693 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179443.P3942346897413861170

`round(A179444(n+1)/10)`
-/

namespace A179443.P3942346897413861170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A179444 (n + 1) : ℚ) / 10)

end

end A179443.P3942346897413861170

namespace A179443

/-- `round(A179444(n+1)/10)` -/
def P3942346897413861170.Spec : Prop :=
  ∀ n, P3942346897413861170.a n = A179443 (n + 1)

end A179443

/-! ## A179443.P2342233495432170048

`filter[A153275(n+2), A005171(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A179443

/-- `filter[A153275(n+2), A005171(#)]` -/
def P2342233495432170048.Spec : Prop :=
  ∀ n, P2342233495432170048.a n = A179443 (n + 1)

theorem P2342233495432170048.correct : P2342233495432170048.Spec := by
  intro n
  simp only [A179443, Nat.add_sub_cancel]

end A179443

/-! ## A179443.P17627441389755742022

`filter[A153275(n+2), A066247(#)]`
-/

namespace A179443.P17627441389755742022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A179443.P17627441389755742022

namespace A179443

/-- `filter[A153275(n+2), A066247(#)]` -/
def P17627441389755742022.Spec : Prop :=
  ∀ n, P17627441389755742022.a n = A179443 (n + 1)

end A179443

/-! ## A179443.P11996299279480708643

`∩[A002808(n+1), A153275(n+1)]`
-/

namespace A179443.P11996299279480708643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179443.P11996299279480708643

namespace A179443

/-- `∩[A002808(n+1), A153275(n+1)]` -/
def P11996299279480708643.Spec : Prop :=
  ∀ n, (P11996299279480708643.a n : ℤ) = A179443 (n + 1)

end A179443

/-! ## A179443.P13293187094088885706

`∩[A018252(n+1), A153275(n+1)]`
-/

namespace A179443.P13293187094088885706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179443.P13293187094088885706

namespace A179443

/-- `∩[A018252(n+1), A153275(n+1)]` -/
def P13293187094088885706.Spec : Prop :=
  ∀ n, (P13293187094088885706.a n : ℤ) = A179443 (n + 1)

end A179443

/-! ## A179443.P14345762320129941192

`∩[A056653(n+1), A153275(n+1)]`
-/

namespace A179443.P14345762320129941192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179443.P14345762320129941192

namespace A179443

/-- `∩[A056653(n+1), A153275(n+1)]` -/
def P14345762320129941192.Spec : Prop :=
  ∀ n, (P14345762320129941192.a n : ℤ) = A179443 (n + 1)

end A179443

/-! ## A179443.P1756531983237246128

`eq[A055671(n), A101264(A008706(n))]`
-/

namespace A179443.P1756531983237246128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179443.P1756531983237246128

namespace A179443

/-- `eq[A055671(n), A101264(A008706(n))]` -/
def P1756531983237246128.Spec : Prop :=
  ∀ n, (P1756531983237246128.a n : ℤ) = A179443 (n + 1)

end A179443

/-! ## A179443.P9222208754466652094

`eq[A055672(n), A101264(A008706(n))]`
-/

namespace A179443.P9222208754466652094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179443.P9222208754466652094

namespace A179443

/-- `eq[A055672(n), A101264(A008706(n))]` -/
def P9222208754466652094.Spec : Prop :=
  ∀ n, (P9222208754466652094.a n : ℤ) = A179443 (n + 1)

end A179443

/-! ## A179443.P966418433447287426

`A008616(A179444(n+1))`
-/

namespace A179443.P966418433447287426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A179444 (n + 1)).toNat

end

end A179443.P966418433447287426

namespace A179443

/-- `A008616(A179444(n+1))` -/
def P966418433447287426.Spec : Prop :=
  ∀ n, P966418433447287426.a n = A179443 (n + 1)

end A179443

/-! ## A179443.P4183244924997262068

`eq[A055672(n), A080339(A017281(n))]`
-/

namespace A179443.P4183244924997262068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179443.P4183244924997262068

namespace A179443

/-- `eq[A055672(n), A080339(A017281(n))]` -/
def P4183244924997262068.Spec : Prop :=
  ∀ n, (P4183244924997262068.a n : ℤ) = A179443 (n + 1)

end A179443

/-! ## A179443.P2761066383386581841

`eq[A105700(A017293(2*n))², A105700(2*n)]`
-/

namespace A179443.P2761066383386581841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A017293 (2 * n)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179443.P2761066383386581841

namespace A179443

/-- `eq[A105700(A017293(2*n))², A105700(2*n)]` -/
def P2761066383386581841.Spec : Prop :=
  ∀ n, (P2761066383386581841.a n : ℤ) = A179443 (n + 1)

end A179443

/-!
# A179444: Composite numbers m of the form m = 10k + 1 where k is also composite.

The programs for A179444, the canonical program `A179444.P17490353298524779514` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179444 has offset 1).

The definition of A179444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179444.P17490353298524779514

`A017281(A179443(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A179444

/-- `A017281(A179443(n+1))` -/
def P17490353298524779514.Spec : Prop :=
  ∀ n, P17490353298524779514.a n = A179444 (n + 1)

theorem P17490353298524779514.correct : P17490353298524779514.Spec := by
  intro n
  simp only [A179444, Nat.add_sub_cancel]

end A179444

/-! ## A179444.P6045412688464464893

`A016861(2*A179443(n+1))`
-/

namespace A179444.P6045412688464464893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * A179443 (n + 1)).toNat

end

end A179444.P6045412688464464893

namespace A179444

/-- `A016861(2*A179443(n+1))` -/
def P6045412688464464893.Spec : Prop :=
  ∀ n, P6045412688464464893.a n = A179444 (n + 1)

end A179444

/-! ## A179444.P11388394951007790659

`A016861(2*∩[A002808(n+1), A153275(n+1)])`
-/

namespace A179444.P11388394951007790659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A179444.P11388394951007790659

namespace A179444

/-- `A016861(2*∩[A002808(n+1), A153275(n+1)])` -/
def P11388394951007790659.Spec : Prop :=
  ∀ n, P11388394951007790659.a n = A179444 (n + 1)

end A179444

/-! ## A179444.P12610385806349537003

`A016861(2*∩[A018252(n+1), A153275(n+1)])`
-/

namespace A179444.P12610385806349537003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A179444.P12610385806349537003

namespace A179444

/-- `A016861(2*∩[A018252(n+1), A153275(n+1)])` -/
def P12610385806349537003.Spec : Prop :=
  ∀ n, P12610385806349537003.a n = A179444 (n + 1)

end A179444

/-! ## A179444.P13524888025087305416

`A016861(2*∩[A056653(n+1), A153275(n+1)])`
-/

namespace A179444.P13524888025087305416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153275 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A179444.P13524888025087305416

namespace A179444

/-- `A016861(2*∩[A056653(n+1), A153275(n+1)])` -/
def P13524888025087305416.Spec : Prop :=
  ∀ n, P13524888025087305416.a n = A179444 (n + 1)

end A179444

/-! ## A179444.P5588455073702374055

`A005408(5*A179443(n+1))`
-/

namespace A179444.P5588455073702374055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (5 * A179443 (n + 1)).toNat

end

end A179444.P5588455073702374055

namespace A179444

/-- `A005408(5*A179443(n+1))` -/
def P5588455073702374055.Spec : Prop :=
  ∀ n, P5588455073702374055.a n = A179444 (n + 1)

end A179444

/-! ## A179444.P18233617203323321573

`A144396(5*A179443(n+1))`
-/

namespace A179444.P18233617203323321573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (5 * A179443 (n + 1)).toNat

end

end A179444.P18233617203323321573

namespace A179444

/-- `A144396(5*A179443(n+1))` -/
def P18233617203323321573.Spec : Prop :=
  ∀ n, P18233617203323321573.a n = A179444 (n + 1)

end A179444

/-! ## A179444.P13440920581161206431

`∩[A016861(2*A018252(n+1)), A018252(n+1)]`
-/

namespace A179444.P13440920581161206431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * A018252 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179444.P13440920581161206431

namespace A179444

/-- `∩[A016861(2*A018252(n+1)), A018252(n+1)]` -/
def P13440920581161206431.Spec : Prop :=
  ∀ n, (P13440920581161206431.a n : ℤ) = A179444 (n + 1)

end A179444

/-! ## A179444.P583024720864971519

`∩[A016861(2*A056653(n+1)), A056653(n+1)]`
-/

namespace A179444.P583024720864971519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * A056653 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179444.P583024720864971519

namespace A179444

/-- `∩[A016861(2*A056653(n+1)), A056653(n+1)]` -/
def P583024720864971519.Spec : Prop :=
  ∀ n, (P583024720864971519.a n : ℤ) = A179444 (n + 1)

end A179444

/-! ## A179444.P14258581646775303641

`A004442(10*A179443(n+1))`
-/

namespace A179444.P14258581646775303641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (10 * A179443 (n + 1)).toNat

end

end A179444.P14258581646775303641

namespace A179444

/-- `A004442(10*A179443(n+1))` -/
def P14258581646775303641.Spec : Prop :=
  ∀ n, P14258581646775303641.a n = A179444 (n + 1)

end A179444

/-! ## A179444.P2131062424716745714

`A109613(10*A179443(n+1))`
-/

namespace A179444.P2131062424716745714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (10 * A179443 (n + 1)).toNat

end

end A179444.P2131062424716745714

namespace A179444

/-- `A109613(10*A179443(n+1))` -/
def P2131062424716745714.Spec : Prop :=
  ∀ n, P2131062424716745714.a n = A179444 (n + 1)

end A179444

/-! ## A179444.P17452484229169871350

`A008619(20*A179443(n+1))`
-/

namespace A179444.P17452484229169871350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (20 * A179443 (n + 1)).toNat

end

end A179444.P17452484229169871350

namespace A179444

/-- `A008619(20*A179443(n+1))` -/
def P17452484229169871350.Spec : Prop :=
  ∀ n, P17452484229169871350.a n = A179444 (n + 1)

end A179444

/-!
# A179445: Nonprimes m such that 10m + 1 are primes.

The programs for A179445, the canonical program `A179445.P5484428261871917909` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179445 has offset 1).

The definition of A179445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179445.P11874294237833663881

`floor(A179446(n+1)/10)`
-/

namespace A179445.P11874294237833663881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A179446 (n + 1) : ℚ) / 10⌋

end

end A179445.P11874294237833663881

namespace A179445

/-- `floor(A179446(n+1)/10)` -/
def P11874294237833663881.Spec : Prop :=
  ∀ n, P11874294237833663881.a n = A179445 (n + 1)

end A179445

/-! ## A179445.P7032154586305330381

`round(A179446(gcd(n+1, ∑[2*n]))/10)`
-/

namespace A179445.P7032154586305330381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A179446 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 10)

end

end A179445.P7032154586305330381

namespace A179445

/-- `round(A179446(gcd(n+1, ∑[2*n]))/10)` -/
def P7032154586305330381.Spec : Prop :=
  ∀ n, P7032154586305330381.a n = A179445 (n + 1)

end A179445

/-! ## A179445.P5484428261871917909

`floor(p?[A005171(n+1)+10*(n+1)]/10)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A179445

/-- `floor(p?[A005171(n+1)+10*(n+1)]/10)` -/
def P5484428261871917909.Spec : Prop :=
  ∀ n, P5484428261871917909.a n = A179445 (n + 1)

theorem P5484428261871917909.correct : P5484428261871917909.Spec := by
  intro n
  simp only [A179445, Nat.add_sub_cancel]

end A179445

/-! ## A179445.P10709170117544342258

`filter[A024912(n+1), A005171(#)]`
-/

namespace A179445.P10709170117544342258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A179445.P10709170117544342258

namespace A179445

/-- `filter[A024912(n+1), A005171(#)]` -/
def P10709170117544342258.Spec : Prop :=
  ∀ n, P10709170117544342258.a n = A179445 (n + 1)

end A179445

/-! ## A179445.P15618332301215589085

`floor(p?[10*A141468(n+1)+1]/10)`
-/

namespace A179445.P15618332301215589085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A141468 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 10⌋

end

end A179445.P15618332301215589085

namespace A179445

/-- `floor(p?[10*A141468(n+1)+1]/10)` -/
def P15618332301215589085.Spec : Prop :=
  ∀ n, P15618332301215589085.a n = A179445 (n + 1)

end A179445

/-! ## A179445.P15533582599983219459

`∩[A018252(n+1), A024912(n+1)]`
-/

namespace A179445.P15533582599983219459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179445.P15533582599983219459

namespace A179445

/-- `∩[A018252(n+1), A024912(n+1)]` -/
def P15533582599983219459.Spec : Prop :=
  ∀ n, (P15533582599983219459.a n : ℤ) = A179445 (n + 1)

end A179445

/-! ## A179445.P12196991394989234464

`∩[A024912(n+1), A141468(n+1)]`
-/

namespace A179445.P12196991394989234464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179445.P12196991394989234464

namespace A179445

/-- `∩[A024912(n+1), A141468(n+1)]` -/
def P12196991394989234464.Spec : Prop :=
  ∀ n, (P12196991394989234464.a n : ℤ) = A179445 (n + 1)

end A179445

/-! ## A179445.P7340367799624246681

`∩[A024912(n+1), A065090(n+1)]`
-/

namespace A179445.P7340367799624246681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179445.P7340367799624246681

namespace A179445

/-- `∩[A024912(n+1), A065090(n+1)]` -/
def P7340367799624246681.Spec : Prop :=
  ∀ n, (P7340367799624246681.a n : ℤ) = A179445 (n + 1)

end A179445

/-! ## A179445.P7338736207379058534

`record[A063928(A024894(n+1))]`
-/

namespace A179445.P7338736207379058534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (A024894 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179445.P7338736207379058534

namespace A179445

/-- `record[A063928(A024894(n+1))]` -/
def P7338736207379058534.Spec : Prop :=
  ∀ n, P7338736207379058534.a n = A179445 (n + 1)

end A179445

/-! ## A179445.P3354150279921433063

`eq[(1-A107279(n))², A091088(n)]`
-/

namespace A179445.P3354150279921433063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A107279 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179445.P3354150279921433063

namespace A179445

/-- `eq[(1-A107279(n))², A091088(n)]` -/
def P3354150279921433063.Spec : Prop :=
  ∀ n, (P3354150279921433063.a n : ℤ) = A179445 (n + 1)

end A179445

/-! ## A179445.P4264891570994695288

`A008616(A179446(n+1))`
-/

namespace A179445.P4264891570994695288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A179446 (n + 1)).toNat

end

end A179445.P4264891570994695288

namespace A179445

/-- `A008616(A179446(n+1))` -/
def P4264891570994695288.Spec : Prop :=
  ∀ n, P4264891570994695288.a n = A179445 (n + 1)

end A179445

/-!
# A179446: Primes p of form p = 10k + 1, where k is nonprime.

The programs for A179446, the canonical program `A179446.P7289325605206415384` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179446 has offset 1).

The definition of A179446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179446.P7289325605206415384

`p?[A005171(n+1)+10*(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A179446

/-- `p?[A005171(n+1)+10*(n+1)]` -/
def P7289325605206415384.Spec : Prop :=
  ∀ n, P7289325605206415384.a n = A179446 (n + 1)

theorem P7289325605206415384.correct : P7289325605206415384.Spec := by
  intro n
  simp only [A179446, Nat.add_sub_cancel]

end A179446

/-! ## A179446.P17467575599602860983

`p?[10*A018252(n+1)+1]`
-/

namespace A179446.P17467575599602860983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A018252 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179446.P17467575599602860983

namespace A179446

/-- `p?[10*A018252(n+1)+1]` -/
def P17467575599602860983.Spec : Prop :=
  ∀ n, P17467575599602860983.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P10874717627494949375

`p?[10*A141468(n+1)+1]`
-/

namespace A179446.P10874717627494949375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A141468 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179446.P10874717627494949375

namespace A179446

/-- `p?[10*A141468(n+1)+1]` -/
def P10874717627494949375.Spec : Prop :=
  ∀ n, P10874717627494949375.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P10312848913591011399

`p?[10*(comp[A000040(n+1)-1]+1)+1]`
-/

namespace A179446.P10312848913591011399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179446.P10312848913591011399

namespace A179446

/-- `p?[10*(comp[A000040(n+1)-1]+1)+1]` -/
def P10312848913591011399.Spec : Prop :=
  ∀ n, (P10312848913591011399.a n : ℤ) = A179446 (n + 1)

end A179446

/-! ## A179446.P14112683860993725875

`p?[10*comp[A000040(n+1)]+1]`
-/

namespace A179446.P14112683860993725875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179446.P14112683860993725875

namespace A179446

/-- `p?[10*comp[A000040(n+1)]+1]` -/
def P14112683860993725875.Spec : Prop :=
  ∀ n, (P14112683860993725875.a n : ℤ) = A179446 (n + 1)

end A179446

/-! ## A179446.P15127135356093613440

`A017281(A179445(n+1))`
-/

namespace A179446.P15127135356093613440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A179445 (n + 1)).toNat

end

end A179446.P15127135356093613440

namespace A179446

/-- `A017281(A179445(n+1))` -/
def P15127135356093613440.Spec : Prop :=
  ∀ n, P15127135356093613440.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P13466803585712686197

`record[A060954(A018252(n+1))]`
-/

namespace A179446.P13466803585712686197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060954 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179446.P13466803585712686197

namespace A179446

/-- `record[A060954(A018252(n+1))]` -/
def P13466803585712686197.Spec : Prop :=
  ∀ n, P13466803585712686197.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P10059416717881856074

`p?[A017281(n)-A055671(n)]`
-/

namespace A179446.P10059416717881856074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A055671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179446.P10059416717881856074

namespace A179446

/-- `p?[A017281(n)-A055671(n)]` -/
def P10059416717881856074.Spec : Prop :=
  ∀ n, P10059416717881856074.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P8155191802921555827

`p?[A008619(A055672(n))+10*n]`
-/

namespace A179446.P8155191802921555827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A055672 n).toNat + (10 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179446.P8155191802921555827

namespace A179446

/-- `p?[A008619(A055672(n))+10*n]` -/
def P8155191802921555827.Spec : Prop :=
  ∀ n, P8155191802921555827.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P11618697693043244685

`p?[A008592(comp[A006530(n+2)])+1]`
-/

namespace A179446.P11618697693043244685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179446.P11618697693043244685

namespace A179446

/-- `p?[A008592(comp[A006530(n+2)])+1]` -/
def P11618697693043244685.Spec : Prop :=
  ∀ n, P11618697693043244685.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P11471669668628669057

`record[A006530(10*A018252(n+1)+1)]`
-/

namespace A179446.P11471669668628669057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (10 * A018252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179446.P11471669668628669057

namespace A179446

/-- `record[A006530(10*A018252(n+1)+1)]` -/
def P11471669668628669057.Spec : Prop :=
  ∀ n, P11471669668628669057.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P15803661515353726307

`record[A020639(10*A018252(n+1)+1)]`
-/

namespace A179446.P15803661515353726307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (10 * A018252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179446.P15803661515353726307

namespace A179446

/-- `record[A020639(10*A018252(n+1)+1)]` -/
def P15803661515353726307.Spec : Prop :=
  ∀ n, P15803661515353726307.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P11383688053896386478

`p?[A008592(n+1)+gcd(n+1, A151800(n))]`
-/

namespace A179446.P11383688053896386478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1) + (Int.gcd (n + 1 : ℤ) (A151800 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179446.P11383688053896386478

namespace A179446

/-- `p?[A008592(n+1)+gcd(n+1, A151800(n))]` -/
def P11383688053896386478.Spec : Prop :=
  ∀ n, P11383688053896386478.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P1677406753068786885

`A090920(eq[1, A068695(n+1)+A010051(n+1)]+1)`
-/

namespace A179446.P1677406753068786885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (n + 1) + A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090920 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A179446.P1677406753068786885

namespace A179446

/-- `A090920(eq[1, A068695(n+1)+A010051(n+1)]+1)` -/
def P1677406753068786885.Spec : Prop :=
  ∀ n, P1677406753068786885.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P14339842947735829510

`p?[A016861(2*n)-A055672(n)]`
-/

namespace A179446.P14339842947735829510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * n) - A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179446.P14339842947735829510

namespace A179446

/-- `p?[A016861(2*n)-A055672(n)]` -/
def P14339842947735829510.Spec : Prop :=
  ∀ n, P14339842947735829510.a n = A179446 (n + 1)

end A179446

/-! ## A179446.P6982850495580333809

`record[A014963(10*A018252(n+1)+1)]`
-/

namespace A179446.P6982850495580333809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * A018252 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179446.P6982850495580333809

namespace A179446

/-- `record[A014963(10*A018252(n+1)+1)]` -/
def P6982850495580333809.Spec : Prop :=
  ∀ n, P6982850495580333809.a n = A179446 (n + 1)

end A179446

/-!
# A179454: Permutation trees of power n and height k.

The programs for A179454, there is no canonical definition to state claims against.
-/

/-! ## A179454.P1860953809027916539

`gcd(Δ[A179456(n)], A106459(n))`
-/

namespace A179454.P1860953809027916539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A106459 n)

end

end A179454.P1860953809027916539

/-! ## A179454.P16612975162776713962

`A179456(n)-A179456(n+1)%A179456(n)`
-/

namespace A179454.P16612975162776713962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179456 n - Int.tmod (A179456 (n + 1)) (A179456 n)

end

end A179454.P16612975162776713962

/-! ## A179454.P5231481730639459121

`A350865(A336574(n))+A196017(n+1)`
-/

namespace A179454.P5231481730639459121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350865 (A336574 n).toNat + A196017 (n + 1)

end

end A179454.P5231481730639459121

/-!
# A179457: Triangle read by rows: number of permutation trees of power n and width <= k.

The programs for A179457, there is no canonical definition to state claims against.
-/

/-! ## A179457.P8202817525323700278

`A008292(n+1)+T(n,k-1)` with `a(0)=1`
-/

namespace A179457.P8202817525323700278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008292 (n + 1) + SequenceMachineLib.triLeft a n

end

end A179457.P8202817525323700278

/-! ## A179457.P2730460313753444574

`A008292(n+1)+a(n-1)%A008517(n+1)` with `a(0)=1`
-/

namespace A179457.P2730460313753444574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008292 (n + 1) + Int.tmod (a (n - 1)) (A008517 (n + 1))

end

end A179457.P2730460313753444574

/-! ## A179457.P17536655984117125319

`A220661(∑[A008292(n+1)])`
-/

namespace A179457.P17536655984117125319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220661 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179457.P17536655984117125319

/-!
# A179458: Numbers k such that ((2^(2k) - 1) mod 2k) - (2^(2k-1) mod 2k) = 1.

The programs for A179458, there is no canonical definition to state claims against.
-/

/-! ## A179458.P9809981295919188810

`∪[A006005(n+1), A020136(n+1)]`
-/

namespace A179458.P9809981295919188810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179458.P9809981295919188810

/-! ## A179458.P5582821542530386372

`∪[A020136(n+1), A176997(n+1)]`
-/

namespace A179458.P5582821542530386372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179458.P5582821542530386372

/-! ## A179458.P9022448995466896241

`∩[A015921(n+2), A111284(n+2)]/2`
-/

namespace A179458.P9022448995466896241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P9022448995466896241

/-! ## A179458.P3341367942295097240

`eq[n, n*A062175(n+1)]+1`
-/

namespace A179458.P3341367942295097240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179458.P3341367942295097240

/-! ## A179458.P3051947922865417889

`∩[A053438(n+1), A015921(n+2)]/2`
-/

namespace A179458.P3051947922865417889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P3051947922865417889

/-! ## A179458.P916727019099084113

`∩[A015921(n+2), A042963(n+2)]/2`
-/

namespace A179458.P916727019099084113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P916727019099084113

/-! ## A179458.P15729471119555843041

`∩[A015921(n+2), A047397(n+2)]/2`
-/

namespace A179458.P15729471119555843041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047397 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P15729471119555843041

/-! ## A179458.P852683955518113557

`∩[A015921(n+2), A047404(n+2)]/2`
-/

namespace A179458.P852683955518113557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047404 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P852683955518113557

/-! ## A179458.P8267198759011320608

`∩[A015921(n+2), A047554(n+2)]/2`
-/

namespace A179458.P8267198759011320608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P8267198759011320608

/-! ## A179458.P16592509069699271047

`∩[A015921(n+2), A034044(n+2)]/2`
-/

namespace A179458.P16592509069699271047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P16592509069699271047

/-! ## A179458.P3142874916290561803

`∩[A015921(n+2), A047405(n+2)]/2`
-/

namespace A179458.P3142874916290561803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047405 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P3142874916290561803

/-! ## A179458.P5017644026236853915

`∩[A015921(n+2), A047442(n+2)]/2`
-/

namespace A179458.P5017644026236853915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047442 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P5017644026236853915

/-! ## A179458.P6171614390675537348

`∩[A015921(n+2), A047449(n+2)]/2`
-/

namespace A179458.P6171614390675537348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047449 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P6171614390675537348

/-! ## A179458.P16125504683742545757

`∩[A015921(n+2), A047555(n+2)]/2`
-/

namespace A179458.P16125504683742545757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047555 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P16125504683742545757

/-! ## A179458.P6309494435469823615

`∩[A015921(n+2), A047561(n+2)]/2`
-/

namespace A179458.P6309494435469823615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047561 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P6309494435469823615

/-! ## A179458.P16268673947359705594

`∩[A015921(n+2), A047580(n+2)]/2`
-/

namespace A179458.P16268673947359705594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047580 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P16268673947359705594

/-! ## A179458.P16178038758306541672

`∩[A015921(n+2), A193304(n+2)]/2`
-/

namespace A179458.P16178038758306541672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193304 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P16178038758306541672

/-! ## A179458.P365373350495795839

`∩[A015921(n+2), A197680(n+2)]/2`
-/

namespace A179458.P365373350495795839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015921 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A179458.P365373350495795839

/-! ## A179458.P17320749768577096824

`A008619(A381122(n+2))`
-/

namespace A179458.P17320749768577096824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A381122 (n + 2)).toNat

end

end A179458.P17320749768577096824

/-! ## A179458.P2751515009051357802

`A004526(A381122(n+2)+2)`
-/

namespace A179458.P2751515009051357802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A381122 (n + 2) + 2).toNat

end

end A179458.P2751515009051357802

/-!
# A179459: Squares that are a sum of two Fibonacci numbers plus the square of a Fibonacci number.

The programs for A179459, there is no canonical definition to state claims against.
-/

/-! ## A179459.P14779080552227682493

`lt[A180000(n), (n-∑{d}[n+1, n²%#])*∏{e}[n+1, #+1]]²`
-/

namespace A179459.P14779080552227682493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), n ^ 2 % d : ℕ) : ℤ)) * ((∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1) : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A179459.P14779080552227682493

/-! ## A179459.P1454704976355063107

`record[A059126(A025897(n))²]`
-/

namespace A179459.P1454704976355063107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (A025897 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179459.P1454704976355063107

/-! ## A179459.P15897026903509717820

`lt[A052435(n+2), A053619(n+1)]²`
-/

namespace A179459.P15897026903509717820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052435 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A179459.P15897026903509717820

/-! ## A179459.P15181774006634571633

`lt[A330664(n+3), A330708(n+1)]²`
-/

namespace A179459.P15181774006634571633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330664 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A179459.P15181774006634571633

/-! ## A179459.P838383353334483068

`A000290(lt[A180000(n), A333630(n)])`
-/

namespace A179459.P838383353334483068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179459.P838383353334483068

/-!
# A179460: Numbers m for which 2*A179382(m)=A002326(m-1).

The programs for A179460, there is no canonical definition to state claims against.
-/

/-! ## A179460.P15038414584980266202

`A113322(A321580(n+2))`
-/

namespace A179460.P15038414584980266202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113322 (A321580 (n + 2)).toNat

end

end A179460.P15038414584980266202

/-! ## A179460.P5151975433979031559

`eq[2, A086342(A077591(n))]`
-/

namespace A179460.P5151975433979031559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A077591 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179460.P5151975433979031559

/-! ## A179460.P14793938483687585976

`A036445(A321580(n+2)+2)`
-/

namespace A179460.P14793938483687585976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (A321580 (n + 2) + 2).toNat

end

end A179460.P14793938483687585976

/-! ## A179460.P4393981972320421221

`A031285(A321580(n+2)/2)`
-/

namespace A179460.P4393981972320421221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (SequenceMachineLib.roundAway ((A321580 (n + 2) : ℚ) / 2)).toNat

end

end A179460.P4393981972320421221

/-! ## A179460.P8768795889548470173

`A031285(eq[2, A086342(2*n+1)])`
-/

namespace A179460.P8768795889548470173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179460.P8768795889548470173

/-!
# A179461: Decimal expansion of sqrt(51)/7.

The programs for A179461, there is no canonical definition to state claims against.
-/

/-! ## A179461.P6957757540507828617

`A010877(lcm(A008802(n), A124302(n)))`
-/

namespace A179461.P6957757540507828617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (Int.lcm (A008802 n) (A124302 n))

end

end A179461.P6957757540507828617

/-! ## A179461.P5945659084374610106

`and(A262064(n+2), A300335(A000069(n+1)))`
-/

namespace A179461.P5945659084374610106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A262064 (n + 2)) (A300335 (A000069 (n + 1)).toNat)

end

end A179461.P5945659084374610106

/-! ## A179461.P1636928089885650156

`A119538(ceil(A001083(n+3)/A008866(n+1)))`
-/

namespace A179461.P1636928089885650156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119538 ⌈(A001083 (n + 3) : ℚ) / (A008866 (n + 1) : ℚ)⌉.toNat

end

end A179461.P1636928089885650156

/-!
# A179462: Least natural number n in increasing order such that the sum of decimal digits is equal to A001223(n).

The programs for A179462, there is no canonical definition to state claims against.
-/

/-! ## A179462.P6278210514908019620

`A039976(A071356(n))+A007623(n)`
-/

namespace A179462.P6278210514908019620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039976 (A071356 n).toNat + A007623 n

end

end A179462.P6278210514908019620

/-! ## A179462.P16187134055233618886

`A265209(A008593(n))+A007623(n)`
-/

namespace A179462.P16187134055233618886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265209 (A008593 n).toNat + A007623 n

end

end A179462.P16187134055233618886

/-! ## A179462.P10287680602414454250

`A263250(A213322(n))+A049345(n)`
-/

namespace A179462.P10287680602414454250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263250 (A213322 n).toNat + A049345 n

end

end A179462.P10287680602414454250

/-! ## A179462.P1494199058668981473

`A273102(A112287(n+1))+A007623(n)`
-/

namespace A179462.P1494199058668981473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273102 (A112287 (n + 1)).toNat + A007623 n

end

end A179462.P1494199058668981473

/-!
# A179463: Semiprimes A001358 containing at least one semiprime digit in base 10.

The programs for A179463, there is no canonical definition to state claims against.
-/

/-! ## A179463.P11636990349020276046

`∪[A085733(n+1), A086697(A087051(n)+4)]`
-/

namespace A179463.P11636990349020276046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086697 (A087051 n + 4).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179463.P11636990349020276046

/-! ## A179463.P11677116436069133386

`∪[A085733(n+1), A086697(A227549(n+1)+4)]`
-/

namespace A179463.P11677116436069133386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086697 (A227549 (n + 1) + 4).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179463.P11677116436069133386

/-! ## A179463.P7756101956013818952

`A106325(∪[A086697(n+1), A111171(n+5)])`
-/

namespace A179463.P7756101956013818952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111171 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106325 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A179463.P7756101956013818952

/-!
# A179464: a(n) = min(nextprime(n),nextsemiprime(n)).

The programs for A179464, the canonical program `A179464.P11553537071304704805` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179464 has offset 1).

The definition of A179464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179464.P11553537071304704805

`A037143(A101041(n+1)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A179464

/-- `A037143(A101041(n+1)+1)` -/
def P11553537071304704805.Spec : Prop :=
  ∀ n, P11553537071304704805.a n = A179464 (n + 1)

theorem P11553537071304704805.correct : P11553537071304704805.Spec := by
  intro n
  simp only [A179464, Nat.add_sub_cancel]

end A179464

/-! ## A179464.P15867707597346164819

`A037143(∑[A101040(n+1)]+2)`
-/

namespace A179464.P15867707597346164819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A179464.P15867707597346164819

namespace A179464

/-- `A037143(∑[A101040(n+1)]+2)` -/
def P15867707597346164819.Spec : Prop :=
  ∀ n, P15867707597346164819.a n = A179464 (n + 1)

end A179464

/-! ## A179464.P5159853115663372787

`A106799(A122111(n+2))+2+n`
-/

namespace A179464.P5159853115663372787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A122111 (n + 2)).toNat + 2 + (n : ℤ)

end

end A179464.P5159853115663372787

namespace A179464

/-- `A106799(A122111(n+2))+2+n` -/
def P5159853115663372787.Spec : Prop :=
  ∀ n, P5159853115663372787.a n = A179464 (n + 1)

end A179464

/-! ## A179464.P2758468457196048897

`A083025(A181821(n+2))+2+n`
-/

namespace A179464.P2758468457196048897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A181821 (n + 2)).toNat + 2 + (n : ℤ)

end

end A179464.P2758468457196048897

namespace A179464

/-- `A083025(A181821(n+2))+2+n` -/
def P2758468457196048897.Spec : Prop :=
  ∀ n, P2758468457196048897.a n = A179464 (n + 1)

end A179464

/-! ## A179464.P2713641268781912583

`A182214(A385560(n+5))+n`
-/

namespace A179464.P2713641268781912583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182214 (A385560 (n + 5)).toNat + (n : ℤ)

end

end A179464.P2713641268781912583

namespace A179464

/-- `A182214(A385560(n+5))+n` -/
def P2713641268781912583.Spec : Prop :=
  ∀ n, P2713641268781912583.a n = A179464 (n + 1)

end A179464

/-!
# A179467: G.f. satisfies: A(x) = exp( Sum_{n>=1} sigma(n)*A(x^n)*x^n/n ).

The programs for A179467, there is no canonical definition to state claims against.
-/

/-! ## A179467.P12638756081827853364

`or(A001372(n), A025443(n!))`
-/

namespace A179467.P12638756081827853364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001372 n) (A025443 (Nat.factorial n))

end

end A179467.P12638756081827853364

/-! ## A179467.P70410302701179906

`or(A001372(n), A050873(n!))`
-/

namespace A179467.P70410302701179906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001372 n) (A050873 (Nat.factorial n))

end

end A179467.P70410302701179906

/-! ## A179467.P5062828452881418238

`or(Δ[A124482(n+1)], A001372(n))`
-/

namespace A179467.P5062828452881418238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A001372 n)

end

end A179467.P5062828452881418238

/-! ## A179467.P7023268785925361035

`or(A001372(n), A050873(A000142(n)))`
-/

namespace A179467.P7023268785925361035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001372 n) (A050873 (A000142 n).toNat)

end

end A179467.P7023268785925361035

/-!
# A179469: G.f. satisfies A(x) = exp( Sum_{n>=1} 2^n*A(x^n)*x^n/n ).

The programs for A179469, there is no canonical definition to state claims against.
-/

/-! ## A179469.P7794458935412712257

`A150849(A001096(n))`
-/

namespace A179469.P7794458935412712257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150849 (A001096 n).toNat

end

end A179469.P7794458935412712257

/-! ## A179469.P4058753180761507339

`A386758(A005181(3*n+2)+1)`
-/

namespace A179469.P4058753180761507339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (A005181 (3 * n + 2) + 1).toNat

end

end A179469.P4058753180761507339

/-!
# A179470: G.f. satisfies A(x) = exp( Sum_{n>=1} A(2*x^n)*x^n/n ).

The programs for A179470, there is no canonical definition to state claims against.
-/

/-! ## A179470.P1503432159775961345

`A229901(n+1)/2^n`
-/

namespace A179470.P1503432159775961345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229901 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A179470.P1503432159775961345

/-! ## A179470.P18156557661934813646

`floor(A229901(n+1)/A000079(n))`
-/

namespace A179470.P18156557661934813646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A229901 (n + 1) : ℚ) / (A000079 n : ℚ)⌋

end

end A179470.P18156557661934813646

/-! ## A179470.P1509631652642918041

`floor(A229901(n+1)/A016116(2*n))`
-/

namespace A179470.P1509631652642918041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A229901 (n + 1) : ℚ) / (A016116 (2 * n) : ℚ)⌋

end

end A179470.P1509631652642918041

/-! ## A179470.P11419896119673550830

`or(A229901(n+1)/A000079(n), A000007(n))`
-/

namespace A179470.P11419896119673550830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A229901 (n + 1) : ℚ) / (A000079 n : ℚ))) (A000007 n)

end

end A179470.P11419896119673550830

/-! ## A179470.P5127411847839803502

`A229901(n+1)/A000079(n)*A014963(6*(n+1))`
-/

namespace A179470.P5127411847839803502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229901 (n + 1) : ℚ) / (A000079 n : ℚ) * (A014963 (6 * (n + 1)) : ℚ)

end

end A179470.P5127411847839803502

/-!
# A179471: G.f. satisfies: A(x) = exp( Sum_{n>=1} A(2^n*x^n)*x^n/n ).

The programs for A179471, there is no canonical definition to state claims against.
-/

/-! ## A179471.P1622103934474538378

`or(A006530(A179472(n)), A179470(n))`
-/

namespace A179471.P1622103934474538378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006530 (A179472 n).toNat) (A179470 n)

end

end A179471.P1622103934474538378

/-! ## A179471.P15055100806728465582

`or(A179470(n), A243732(A007717(n)))`
-/

namespace A179471.P15055100806728465582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A179470 n) (A243732 (A007717 n).toNat)

end

end A179471.P15055100806728465582

/-!
# A179472: G.f.: 1 + x = Sum_{n>=0} a(n)*x^n*(1-2^n*x)^n.

The programs for A179472, there is no canonical definition to state claims against.
-/

/-! ## A179472.P3742386145370172824

`A193188(n)*A193292(A193463(n+1))`
-/

namespace A179472.P3742386145370172824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193188 n * A193292 (A193463 (n + 1)).toNat

end

end A179472.P3742386145370172824

/-!
# A179473: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n*(1-2^n*x)^n.

The programs for A179473, there is no canonical definition to state claims against.
-/

/-! ## A179473.P10151767638136410752

`A262868(C(n², n)+2)`
-/

namespace A179473.P10151767638136410752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (Nat.choose (n ^ 2) n + 2)

end

end A179473.P10151767638136410752

/-!
# A179474: a(n) = position of A045392(n) in A042997.

The programs for A179474, there is no canonical definition to state claims against.
-/

/-! ## A179474.P12292672672295690724

`eq[2, p?[(n+1)%((n+1)%7+n)]%7]+1`
-/

namespace A179474.P12292672672295690724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((n + 1) % 7 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A179474.P12292672672295690724

/-! ## A179474.P11106907746188259642

`eq[2, A179475(n+1)]+1`
-/

namespace A179474.P11106907746188259642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179474.P11106907746188259642

/-! ## A179474.P2060467213359368873

`eq[2, p?[A047305(n+1)]%7]+1`
-/

namespace A179474.P2060467213359368873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179474.P2060467213359368873

/-! ## A179474.P3451758817171878281

`eq[2, A010876(A042997(n+1))]+1`
-/

namespace A179474.P3451758817171878281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A042997 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179474.P3451758817171878281

/-! ## A179474.P8359306177637701264

`eq[2, record[A006530(A047369(n+1)+1)]%7]+1`
-/

namespace A179474.P8359306177637701264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047369 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A179474.P8359306177637701264

/-! ## A179474.P17252623648200406869

`eq[A040000(n), A179475(A028310(n))]`
-/

namespace A179474.P17252623648200406869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179475 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179474.P17252623648200406869

/-!
# A179475: a(n) = A042997(n) mod 7.

The programs for A179475, the canonical program `A179475.P11372603097837124970` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179475 has offset 1).

The definition of A179475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A042997(n+1)%7` (program `A179475.P11372603097837124970`, by `A179475.P11372603097837124970.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179475.P11372603097837124970

`A042997(n+1)%7`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A179475

/-- `A042997(n+1)%7` -/
def P11372603097837124970.Spec : Prop :=
  ∀ n, P11372603097837124970.a n = A179475 (n + 1)

theorem P11372603097837124970.correct : P11372603097837124970.Spec := by
  intro n
  simp only [A179475, Nat.add_sub_cancel]

end A179475

/-! ## A179475.P13625179677091865057

`p?[n%(n^(n%7))]%7`
-/

namespace A179475.P13625179677091865057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % n ^ (n % 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % 7

end

end A179475.P13625179677091865057

namespace A179475

/-- `p?[n%(n^(n%7))]%7` -/
def P13625179677091865057.Spec : Prop :=
  ∀ n, (P13625179677091865057.a n : ℤ) = A179475 (n + 1)

end A179475

/-! ## A179475.P11178571932152431403

`p?[(n+1)%((n+1)%7+n)]%7`
-/

namespace A179475.P11178571932152431403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((n + 1) % 7 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % 7

end

end A179475.P11178571932152431403

namespace A179475

/-- `p?[(n+1)%((n+1)%7+n)]%7` -/
def P11178571932152431403.Spec : Prop :=
  ∀ n, (P11178571932152431403.a n : ℤ) = A179475 (n + 1)

end A179475

/-! ## A179475.P15346519910128065501

`p?[A047305(n+1)]%7`
-/

namespace A179475.P15346519910128065501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 7

end

end A179475.P15346519910128065501

namespace A179475

/-- `p?[A047305(n+1)]%7` -/
def P15346519910128065501.Spec : Prop :=
  ∀ n, P15346519910128065501.a n = A179475 (n + 1)

end A179475

/-! ## A179475.P8547892045290305070

`p?[A047369(n+1)+1]%7`
-/

namespace A179475.P8547892045290305070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047369 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 7

end

end A179475.P8547892045290305070

namespace A179475

/-- `p?[A047369(n+1)+1]%7` -/
def P8547892045290305070.Spec : Prop :=
  ∀ n, P8547892045290305070.a n = A179475 (n + 1)

end A179475

/-! ## A179475.P13528027862690161420

`p?[A130497(n)+1+n]%7`
-/

namespace A179475.P13528027862690161420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 7

end

end A179475.P13528027862690161420

namespace A179475

/-- `p?[A130497(n)+1+n]%7` -/
def P13528027862690161420.Spec : Prop :=
  ∀ n, P13528027862690161420.a n = A179475 (n + 1)

end A179475

/-! ## A179475.P1123131792625435288

`record[A006530(A047369(n+1)+1)]%7`
-/

namespace A179475.P1123131792625435288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047369 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 7

end

end A179475.P1123131792625435288

namespace A179475

/-- `record[A006530(A047369(n+1)+1)]%7` -/
def P1123131792625435288.Spec : Prop :=
  ∀ n, P1123131792625435288.a n = A179475 (n + 1)

end A179475

/-! ## A179475.P7855395637223393342

`A010876(A042997(n+1))`
-/

namespace A179475.P7855395637223393342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A042997 (n + 1)).toNat

end

end A179475.P7855395637223393342

namespace A179475

/-- `A010876(A042997(n+1))` -/
def P7855395637223393342.Spec : Prop :=
  ∀ n, P7855395637223393342.a n = A179475 (n + 1)

end A179475

/-! ## A179475.P13277338322616209611

`record[A014963(A047369(n+1)+1)]%7`
-/

namespace A179475.P13277338322616209611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A047369 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 7

end

end A179475.P13277338322616209611

namespace A179475

/-- `record[A014963(A047369(n+1)+1)]%7` -/
def P13277338322616209611.Spec : Prop :=
  ∀ n, P13277338322616209611.a n = A179475 (n + 1)

end A179475

/-! ## A179475.P17744067349077198910

`A042966(A293754(n+1))%7`
-/

namespace A179475.P17744067349077198910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042966 (A293754 (n + 1)).toNat) 7

end

end A179475.P17744067349077198910

namespace A179475

/-- `A042966(A293754(n+1))%7` -/
def P17744067349077198910.Spec : Prop :=
  ∀ n, P17744067349077198910.a n = A179475 (n + 1)

end A179475

/-!
# A179476: Numbers of distinct Knuth-Morris-Pratt arrays of length n.

The programs for A179476, there is no canonical definition to state claims against.
-/

/-! ## A179476.P15405014638497615032

`A008679(13*A001932(n))`
-/

namespace A179476.P15405014638497615032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (13 * A001932 n).toNat

end

end A179476.P15405014638497615032

/-! ## A179476.P8965912825190016430

`Δ[record[A127763(A033185(n+1))]]`
-/

namespace A179476.P8965912825190016430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A033185 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179476.P8965912825190016430

/-! ## A179476.P17315884713164036390

`Δ[record[A127763(A217781(n+1))]]`
-/

namespace A179476.P17315884713164036390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A217781 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179476.P17315884713164036390

/-! ## A179476.P4344920551213337564

`∑[A036644(n)+A036623(A077739(n+1))]`
-/

namespace A179476.P4344920551213337564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036644 n + A036623 (A077739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179476.P4344920551213337564

/-!
# A179477: Antonym of A014824: each term is 10 times the previous term minus n.

The programs for A179477, the canonical program `A179477.P13922951227497701607` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179477 has offset 0).

The definition of A179477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179477.P11566930105474732075

`ogf((10-21x+10x^2)/(1-12x+21x^2-10x^3))`
-/

namespace A179477.P11566930105474732075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -21, 10] [1, -12, 21, -10] n

end

end A179477.P11566930105474732075

namespace A179477

/-- `ogf((10-21x+10x^2)/(1-12x+21x^2-10x^3))` -/
def P11566930105474732075.Spec : Prop :=
  ∀ n, P11566930105474732075.a n = A179477 n

end A179477

/-! ## A179477.P13922951227497701607

`12*a(n-1)-21*a(n-2)+10*a(n-3)` with `a(0)=10, a(1)=99, a(2)=988`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A179477

/-- `12*a(n-1)-21*a(n-2)+10*a(n-3)` -/
def P13922951227497701607.Spec : Prop :=
  ∀ n, P13922951227497701607.a n = A179477 n

theorem P13922951227497701607.correct : P13922951227497701607.Spec := by
  intro n
  simp only [A179477]

end A179477

/-! ## A179477.P1600027089153357461

`(10+2^(5+n)*5^(2+n)+9*n)/81`
-/

namespace A179477.P1600027089153357461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 + 2 ^ (5 + n) * 5 ^ (2 + n) + 9 * n : ℚ) / 81

end

end A179477.P1600027089153357461

namespace A179477

/-- `(10+2^(5+n)*5^(2+n)+9*n)/81` -/
def P1600027089153357461.Spec : Prop :=
  ∀ n, P1600027089153357461.a n = (A179477 n : ℚ)

theorem P1600027089153357461.correct : P1600027089153357461.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A179477, Nat.add_sub_cancel, A179477.P1600027089153357461.a, A179477.P13922951227497701607.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A179477, Nat.add_sub_cancel, A179477.P1600027089153357461.a, A179477.P13922951227497701607.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A179477

/-! ## A179477.P11032760730540664628

`10*a(n-1)-n` with `a(0)=10`
-/

namespace A179477.P11032760730540664628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  10 * a (n - 1) - (n : ℤ)

end

end A179477.P11032760730540664628

namespace A179477

/-- `10*a(n-1)-n` -/
def P11032760730540664628.Spec : Prop :=
  ∀ n, P11032760730540664628.a n = A179477 n

end A179477

/-! ## A179477.P15440527522237141477

`A064617(1+n)+1`
-/

namespace A179477.P15440527522237141477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064617 (1 + n) + 1

end

end A179477.P15440527522237141477

namespace A179477

/-- `A064617(1+n)+1` -/
def P15440527522237141477.Spec : Prop :=
  ∀ n, P15440527522237141477.a n = A179477 n

end A179477

/-! ## A179477.P5950847821021750086

`A099675(n+1)+2+n`
-/

namespace A179477.P5950847821021750086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099675 (n + 1) + 2 + (n : ℤ)

end

end A179477.P5950847821021750086

namespace A179477

/-- `A099675(n+1)+2+n` -/
def P5950847821021750086.Spec : Prop :=
  ∀ n, P5950847821021750086.a n = A179477 n

end A179477

/-! ## A179477.P16778262827902115210

`∑[A063945(n+1)-∑[round(10^(n-1))]]`
-/

namespace A179477.P16778262827902115210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063945 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179477.P16778262827902115210

namespace A179477

/-- `∑[A063945(n+1)-∑[round(10^(n-1))]]` -/
def P16778262827902115210.Spec : Prop :=
  ∀ n, P16778262827902115210.a n = A179477 n

end A179477

/-! ## A179477.P12286494225277752340

`∑[Δ[A178500(n)]-A002275(n)]`
-/

namespace A179477.P12286494225277752340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179477.P12286494225277752340

namespace A179477

/-- `∑[Δ[A178500(n)]-A002275(n)]` -/
def P12286494225277752340.Spec : Prop :=
  ∀ n, P12286494225277752340.a n = A179477 n

end A179477

/-! ## A179477.P1670118277084375697

`∑[A000007(n)+A002282(n+1)+1]`
-/

namespace A179477.P1670118277084375697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A002282 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179477.P1670118277084375697

namespace A179477

/-- `∑[A000007(n)+A002282(n+1)+1]` -/
def P1670118277084375697.Spec : Prop :=
  ∀ n, P1670118277084375697.a n = A179477 n

end A179477

/-! ## A179477.P13259594502731902839

`∑[A000007(n)+A173812(n+1)+2]`
-/

namespace A179477.P13259594502731902839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A173812 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179477.P13259594502731902839

namespace A179477

/-- `∑[A000007(n)+A173812(n+1)+2]` -/
def P13259594502731902839.Spec : Prop :=
  ∀ n, P13259594502731902839.a n = A179477 n

end A179477

/-!
# A179478: a(n) = sqrt(A073609(n+1)-A073609(n)).

The programs for A179478, there is no canonical definition to state claims against.
-/

/-! ## A179478.P14478316026019481492

`sqrt(A073609(n+1)-A073609(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179478.P14478316026019481492
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073609 (n + 1) - A073609 n : ℝ)

end

end A179478.P14478316026019481492

/-! ## A179478.P18100160219255208499

`sqrt(Δ[A073609(n)])`
-/

namespace A179478.P18100160219255208499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ)

end

end A179478.P18100160219255208499

/-! ## A179478.P15522995811041548452

`sqrt(A249807(n+2))`
-/

namespace A179478.P15522995811041548452
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A249807 (n + 2) : ℝ)

end

end A179478.P15522995811041548452

/-! ## A179478.P9210183598136575001

`A018851(Δ[A073609(n)])`
-/

namespace A179478.P9210183598136575001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (n + 1) - f1 n).toNat

end

end A179478.P9210183598136575001

/-! ## A179478.P10676675112316574091

`A000188(Δ[A073609(n)])`
-/

namespace A179478.P10676675112316574091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (n + 1) - f1 n).toNat

end

end A179478.P10676675112316574091

/-! ## A179478.P7123935287354632338

`A000194(Δ[A073609(n)])`
-/

namespace A179478.P7123935287354632338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (f1 (n + 1) - f1 n).toNat

end

end A179478.P7123935287354632338

/-! ## A179478.P4173968747428596773

`A000196(Δ[A073609(n)])`
-/

namespace A179478.P4173968747428596773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A179478.P4173968747428596773

/-! ## A179478.P12300442635719313838

`A004739(Δ[A073609(n)])`
-/

namespace A179478.P12300442635719313838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (f1 (n + 1) - f1 n).toNat

end

end A179478.P12300442635719313838

/-! ## A179478.P8302553460246327459

`A019554(Δ[A073609(n)])`
-/

namespace A179478.P8302553460246327459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (f1 (n + 1) - f1 n).toNat

end

end A179478.P8302553460246327459

/-! ## A179478.P15074535922776894173

`A037213(Δ[A073609(n)])`
-/

namespace A179478.P15074535922776894173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (f1 (n + 1) - f1 n).toNat

end

end A179478.P15074535922776894173

/-!
# A179479: a(n) is the smallest prime q > a(n-1) such that, for the previous prime p and the following prime r, the fraction (q-p)/(r-q) has denominator 2, for odd n and 1 for even n (or 0, if such a prime does not exist).

The programs for A179479, there is no canonical definition to state claims against.
-/

/-! ## A179479.P17841076190463511487

`p?[∑[A060502(A163355(n))]]`
-/

namespace A179479.P17841076190463511487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A163355 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179479.P17841076190463511487

/-! ## A179479.P7772467325235118023

`p?[A175526(n+1)-A051731(n+1)]`
-/

namespace A179479.P7772467325235118023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1) - A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179479.P7772467325235118023

/-! ## A179479.P8080812439276024386

`p?[A192506(n+1)-A051731(n+1)]`
-/

namespace A179479.P8080812439276024386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192506 (n + 1) - A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179479.P8080812439276024386

/-! ## A179479.P2325766283371220115

`p?[A192506(n+1)-A057427(A126988(n+1))]`
-/

namespace A179479.P2325766283371220115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192506 (n + 1) - A057427 (A126988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179479.P2325766283371220115

/-! ## A179479.P1972086829372091888

`∪[A065722(2*(n+1)), A000040(A065724(n+1))]`
-/

namespace A179479.P1972086829372091888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065722 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A065724 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179479.P1972086829372091888

/-!
# A179480: Let m>k>0 be odd numbers and denote by the symbol "m<->k" the value A000265(m-k). Then the sequence m<->k, m<->(m<->k), m<->(m<->(m<->k)), ... is periodic; a(n) is the smallest period in the case m=2*n-1, k=1.

The programs for A179480, there is no canonical definition to state claims against.
-/

/-! ## A179480.P11410032225504496602

`A332434(∑[A135303(abs(1-n)+1)])`
-/

namespace A179480.P11410032225504496602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332434 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179480.P11410032225504496602

/-! ## A179480.P15422707187117769270

`A332434(∑[A072451(n+1)/A003558(n)])`
-/

namespace A179480.P15422707187117769270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072451 (n + 1) : ℚ) / (A003558 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332434 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A179480.P15422707187117769270

/-! ## A179480.P14955611516874350926

`A332434(∑[A135303(n+1)]+1-A135303(n+1))`
-/

namespace A179480.P14955611516874350926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332434 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A135303 (n + 1))).toNat

end

end A179480.P14955611516874350926

/-! ## A179480.P18230663456080034626

`gcd(A332435(n+1), A332442(A331309(n+1)))`
-/

namespace A179480.P18230663456080034626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A332435 (n + 1)) (A332442 (A331309 (n + 1)).toNat)

end

end A179480.P18230663456080034626

/-! ## A179480.P15182814094126617133

`A070091(2*n+3)%A117738(A000265(3*(n+1)))`
-/

namespace A179480.P15182814094126617133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070091 (2 * n + 3)) (A117738 (A000265 (3 * (n + 1))).toNat)

end

end A179480.P15182814094126617133

/-!
# A179481: a(n) = 2*t(n)-1 where t(n) is the sequence of records positions of A179480.

The programs for A179481, there is no canonical definition to state claims against.
-/

/-! ## A179481.P18353967930398378743

`A317587(A099540(n+2))`
-/

namespace A179481.P18353967930398378743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317587 (A099540 (n + 2)).toNat

end

end A179481.P18353967930398378743

/-! ## A179481.P10918506687149769143

`A094802(A345961(n+1))`
-/

namespace A179481.P10918506687149769143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A345961 (n + 1)).toNat

end

end A179481.P10918506687149769143

/-!
# A179483: A(k,3) where A(k,n) = Sum_{m=1..k} (-1)^(m+1) *binomial(n,m)*m^k.

The programs for A179483, the canonical program `A179483.P17869801197010396922` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179483 has offset 1).

The definition of A179483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179483.P17869801197010396922

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=3, a(1)=-9, a(2)=6, a(3)=36, a(4)=150`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A179483

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P17869801197010396922.Spec : Prop :=
  ∀ n, P17869801197010396922.a n = A179483 (n + 1)

theorem P17869801197010396922.correct : P17869801197010396922.Spec := by
  intro n
  simp only [A179483, Nat.add_sub_cancel]

end A179483

/-!
# A179485: Sums of two successive primes s such that s+-3 are primes.

The programs for A179485, the canonical program `A179485.P14706537653666994913` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179485 has offset 1).

The definition of A179485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179485.P14706537653666994913

`∩[A087695(n+1), A323139(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A179485

/-- `∩[A087695(n+1), A323139(n+1)]` -/
def P14706537653666994913.Spec : Prop :=
  ∀ n, (P14706537653666994913.a n : ℤ) = A179485 (n + 1)

theorem P14706537653666994913.correct : P14706537653666994913.Spec := by
  intro n
  simp only [A179485, Nat.add_sub_cancel]

end A179485

/-! ## A179485.P3213453957564959886

`∩[A001043(n+1), A087695(n+1)]`
-/

namespace A179485.P3213453957564959886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179485.P3213453957564959886

namespace A179485

/-- `∩[A001043(n+1), A087695(n+1)]` -/
def P3213453957564959886.Spec : Prop :=
  ∀ n, (P3213453957564959886.a n : ℤ) = A179485 (n + 1)

end A179485

/-! ## A179485.P18013627535589352239

`∩[A011974(n+1), A087695(n+1)]`
-/

namespace A179485.P18013627535589352239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179485.P18013627535589352239

namespace A179485

/-- `∩[A011974(n+1), A087695(n+1)]` -/
def P18013627535589352239.Spec : Prop :=
  ∀ n, (P18013627535589352239.a n : ℤ) = A179485 (n + 1)

end A179485

/-! ## A179485.P17394660957448765816

`∩[A087695(n+1), A164653(n+1)]`
-/

namespace A179485.P17394660957448765816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179485.P17394660957448765816

namespace A179485

/-- `∩[A087695(n+1), A164653(n+1)]` -/
def P17394660957448765816.Spec : Prop :=
  ∀ n, (P17394660957448765816.a n : ℤ) = A179485 (n + 1)

end A179485

/-!
# A179486: G.f. A(x) satisfies A(x) = x + A(A(x)^3) where A(x) = Sum_{n>=1} a(n)*x^(2*n-1).

The programs for A179486, there is no canonical definition to state claims against.
-/

/-! ## A179486.P9198797409509470148

`A192132(n)+A185284(A006218(n))`
-/

namespace A179486.P9198797409509470148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192132 n + A185284 (A006218 n).toNat

end

end A179486.P9198797409509470148

/-! ## A179486.P736359661526252892

`A192132(n)+A185284(A151569(n))`
-/

namespace A179486.P736359661526252892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192132 n + A185284 (A151569 n).toNat

end

end A179486.P736359661526252892

/-! ## A179486.P18389830641994998158

`A309395(A032917(n+1))+A192132(n)`
-/

namespace A179486.P18389830641994998158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (A032917 (n + 1)).toNat + A192132 n

end

end A179486.P18389830641994998158

/-! ## A179486.P16892501448800907542

`A192132(n)-(A185284(n)-A185284(A151569(n)))`
-/

namespace A179486.P16892501448800907542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192132 n - (A185284 n - A185284 (A151569 n).toNat)

end

end A179486.P16892501448800907542

/-!
# A179487: G.f. satisfies: A(x)^(1/3) = x + A(x) + A(A(x)) + A(A(A(x))) + A(A(A(A(x)))) +... where A(x) = Sum_{n>=1} a(n)*x^(2n-1).

The programs for A179487, there is no canonical definition to state claims against.
-/

/-! ## A179487.P6592616451423431117

`A025480((n+2)*A264868(n+2))`
-/

namespace A179487.P6592616451423431117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ((n + 2 : ℤ) * A264868 (n + 2)).toNat

end

end A179487.P6592616451423431117

/-! ## A179487.P3603145858897713451

`A373418(A282206(n))+A120920(n)`
-/

namespace A179487.P3603145858897713451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373418 (A282206 n).toNat + A120920 n

end

end A179487.P3603145858897713451

/-!
# A179488: G.f.: A(x) satisfies A(x) = x/(1 - (1-2x)*A( x/(1-2x) )).

The programs for A179488, there is no canonical definition to state claims against.
-/

/-! ## A179488.P1542113968492982344

`A222013(n)+A185284(n²)`
-/

namespace A179488.P1542113968492982344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222013 n + A185284 (n ^ 2)

end

end A179488.P1542113968492982344

/-! ## A179488.P2581016636647135216

`A324326(A057513(n))+A222013(n)`
-/

namespace A179488.P2581016636647135216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324326 (A057513 n).toNat + A222013 n

end

end A179488.P2581016636647135216

/-! ## A179488.P8064567067517608586

`A110656(A338781(n+1)+A203014(n))`
-/

namespace A179488.P8064567067517608586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A338781 (n + 1) + A203014 n).toNat

end

end A179488.P8064567067517608586

/-!
# A179489: G.f.: A(x) = x/(1 - (1-3x)*A( x/(1-3x) )).

The programs for A179489, there is no canonical definition to state claims against.
-/

/-! ## A179489.P5671110358370258086

`A278083(3*a(n-1)-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A179489.P5671110358370258086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A278083 (3 * a (n - 1) - 2).toNat

end

end A179489.P5671110358370258086

/-! ## A179489.P15771627602902438688

`A331382(∏[(n-1)/a(n-1)+1])` with `a(0)=1`
-/

namespace A179489.P15771627602902438688
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331382 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A179489.P15771627602902438688

/-!
# A179490: G.f. satisfies: A(x) = exp( Sum_{n>=1} A(A179491(n)*x^n)*x^n/n ), where A(x) = exp( Sum_{n>=1} A179491(n)*x^n/n ).

The programs for A179490, there is no canonical definition to state claims against.
-/

/-! ## A179490.P15653527108380765130

`A289342(A358830(n))`
-/

namespace A179490.P15653527108380765130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289342 (A358830 n).toNat

end

end A179490.P15653527108380765130

/-! ## A179490.P5206194820604992157

`A115060(A328960(n)+A203254(n))`
-/

namespace A179490.P5206194820604992157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A328960 n + A203254 n).toNat

end

end A179490.P5206194820604992157

/-! ## A179490.P8835604166838700622

`A344296(A270995(n))+A130519(n)`
-/

namespace A179490.P8835604166838700622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A270995 n).toNat + A130519 n

end

end A179490.P8835604166838700622

/-! ## A179490.P13487796446451279373

`A206432(n)-A297234(A022558(n))`
-/

namespace A179490.P13487796446451279373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206432 n - A297234 (A022558 n).toNat

end

end A179490.P13487796446451279373

/-!
# A179491: L.g.f.: G(x) = exp( Sum_{n>=1} a(n)*x^n/n ) where G(x) = exp( Sum_{n>=1} G(a(n)*x^n)*x^n/n ).

The programs for A179491, there is no canonical definition to state claims against.
-/

/-! ## A179491.P7621341591935719900

`A203253(n+1)+A089840(A309484(2*n+1))`
-/

namespace A179491.P7621341591935719900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203253 (n + 1) + A089840 (A309484 (2 * n + 1)).toNat

end

end A179491.P7621341591935719900

/-! ## A179491.P10650223310892407660

`A274260(A136336(n+1))`
-/

namespace A179491.P10650223310892407660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274260 (A136336 (n + 1)).toNat

end

end A179491.P10650223310892407660

/-!
# A179492: a(n) = floor((1 + 1/Pi)^n).

The programs for A179492, there is no canonical definition to state claims against.
-/

/-! ## A179492.P1463840773133834545

`floor(root(A118109(3*(n+1)), 50))`
-/

namespace A179492.P1463840773133834545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118109 (3 * (n + 1)) : ℝ) ^ (1 / (50 : ℝ))⌋

end

end A179492.P1463840773133834545

/-! ## A179492.P723248654634005738

`A000196(A003152(A129853(n+1)))`
-/

namespace A179492.P723248654634005738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A003152 (A129853 (n + 1)).toNat).toNat

end

end A179492.P723248654634005738

/-! ## A179492.P5917220412844748466

`A259899(A057593(n+2)+A026757(n))`
-/

namespace A179492.P5917220412844748466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A057593 (n + 2) + A026757 n).toNat

end

end A179492.P5917220412844748466

/-!
# A179493: E.g.f. A(x) satisfies: L(x) = A(x)/(x*A'(x)) * L(A(x)) where L(x) = x + x*A(x).

The programs for A179493, there is no canonical definition to state claims against.
-/

/-! ## A179493.P3875448960055034933

`A123919(∑[A201595(n)])`
-/

namespace A179493.P3875448960055034933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A179493.P3875448960055034933

/-! ## A179493.P6576054712304151598

`n*A028901(A136653(n))`
-/

namespace A179493.P6576054712304151598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028901 (A136653 n).toNat

end

end A179493.P6576054712304151598

/-!
# A179494: E.g.f. A(x) = G(x)/x where G(x) is the e.g.f. of A179493.

The programs for A179494, there is no canonical definition to state claims against.
-/

/-! ## A179494.P2361895624447748308

`A179493(n+1)/(n+1)`
-/

namespace A179494.P2361895624447748308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179493 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A179494.P2361895624447748308

/-!
# A179495: E.g.f. satisfies: A'(x) = [A(x)^2 + A(x)^3]/(x^2 + x^3).

The programs for A179495, there is no canonical definition to state claims against.
-/

/-! ## A179495.P16090125562707021339

`n*A179496(abs(1-n))`
-/

namespace A179495.P16090125562707021339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A179496 |1 - (n : ℤ)|.toNat

end

end A179495.P16090125562707021339

/-! ## A179495.P5714779579439889309

`n*A141204(n^floor(n-atan(n)))`
-/

namespace A179495.P5714779579439889309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141204 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A179495.P5714779579439889309

/-!
# A179496: E.g.f. satisfies: A(x) = A(x)^2*(1 + x*A(x))/(1+x) - x*A'(x).

The programs for A179496, there is no canonical definition to state claims against.
-/

/-! ## A179496.P10586166251294819542

`A179495(n+1)/(n+1)`
-/

namespace A179496.P10586166251294819542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179495 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A179496.P10586166251294819542

/-! ## A179496.P6328218241816797398

`A212445(ceil(A250120(2*n)^n/11^n))`
-/

namespace A179496.P6328218241816797398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 ⌈(A250120 (2 * n) ^ n : ℚ) / (11 ^ n : ℚ)⌉.toNat

end

end A179496.P6328218241816797398

/-!
# A179497: E.g.f. satisfies: A(A(x))^2 = A(x)^2 * A'(x).

The programs for A179497, there is no canonical definition to state claims against.
-/

/-! ## A179497.P15543687589568691798

`(n+1)*A179498(n)`
-/

namespace A179497.P15543687589568691798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A179498 n

end

end A179497.P15543687589568691798

/-! ## A179497.P13659400299151035569

`A179498(n)*A348553(n)`
-/

namespace A179497.P13659400299151035569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179498 n * A348553 n

end

end A179497.P13659400299151035569

/-! ## A179497.P13124030416883538844

`A179498(n)*A316388(A103517(n))`
-/

namespace A179497.P13124030416883538844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179498 n * A316388 (A103517 n).toNat

end

end A179497.P13124030416883538844

/-! ## A179497.P14720824723385415239

`A179498(n)*A306286(A000051(n))`
-/

namespace A179497.P14720824723385415239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179498 n * A306286 (A000051 n).toNat

end

end A179497.P14720824723385415239

/-! ## A179497.P10203375319409286445

`A179498(n)*A328162(A000079(n))`
-/

namespace A179497.P10203375319409286445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179498 n * A328162 (A000079 n).toNat

end

end A179497.P10203375319409286445

/-!
# A179498: E.g.f. satisfies: A(x) = A(x*A(x))^2 - x*A'(x).

The programs for A179498, there is no canonical definition to state claims against.
-/

/-! ## A179498.P1502314023590521486

`A179497(n+1)/(n+1)`
-/

namespace A179498.P1502314023590521486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179497 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A179498.P1502314023590521486

/-!
# A179499: E.g.f. A(x) = G(x)^2/x where G(x) satisfies: G(G(x))^2 = G(x)^2 * G'(x) and G(x) is the g.f. of A179499.

The programs for A179499, there is no canonical definition to state claims against.
-/

/-! ## A179499.P8080158315606753812

`A005555(n)*A130571(A020557(n))`
-/

namespace A179499.P8080158315606753812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n * A130571 (A020557 n).toNat

end

end A179499.P8080158315606753812

