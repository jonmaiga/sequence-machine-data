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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A142700: Primes congruent to 56 mod 57.

The programs for A142700, the canonical program `A142700.P12380709953204433673` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142700 has offset 1).

The definition of A142700 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142700.anchor (n : ℕ) (hn : 1 ≤ n) : A142700 n = (Nat.nth (fun p => p.Prime ∧ p % 57 = 56) (n - 1) : ℤ)` in `Proof.A142.A142700`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142700.P12380709953204433673

`p?[57*n-1]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142700

/-- `p?[57*n-1]` -/
def P12380709953204433673.Spec : Prop :=
  ∀ n, P12380709953204433673.a n = A142700 (n + 1)

theorem P12380709953204433673.correct : P12380709953204433673.Spec := by
  intro n
  simp only [A142700, Nat.add_sub_cancel]

end A142700

/-! ## A142700.P14113982363915971379

`or(1, p?[56*(n+1)+n])`
-/

namespace A142700.P14113982363915971379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142700.P14113982363915971379

namespace A142700

/-- `or(1, p?[56*(n+1)+n])` -/
def P14113982363915971379.Spec : Prop :=
  ∀ n, (P14113982363915971379.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P13630486980218249496

`∩[A138638(n+1), A141192(n+1)]`
-/

namespace A142700.P13630486980218249496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P13630486980218249496

namespace A142700

/-- `∩[A138638(n+1), A141192(n+1)]` -/
def P13630486980218249496.Spec : Prop :=
  ∀ n, (P13630486980218249496.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P16188381673153539148

`∩[A306331(2*(n+1))+A306331(n+2), A141192(n+2)]`
-/

namespace A142700.P16188381673153539148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * (n + 1)) + A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141192 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P16188381673153539148

namespace A142700

/-- `∩[A306331(2*(n+1))+A306331(n+2), A141192(n+2)]` -/
def P16188381673153539148.Spec : Prop :=
  ∀ n, (P16188381673153539148.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P14913452630335049655

`∩[A038935(n+1), A138638(n+1)]`
-/

namespace A142700.P14913452630335049655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P14913452630335049655

namespace A142700

/-- `∩[A038935(n+1), A138638(n+1)]` -/
def P14913452630335049655.Spec : Prop :=
  ∀ n, (P14913452630335049655.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P16972496075169705448

`∩[A306331(2*(n+1))+A306331(n+2), A038935(n+2)]`
-/

namespace A142700.P16972496075169705448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * (n + 1)) + A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P16972496075169705448

namespace A142700

/-- `∩[A306331(2*(n+1))+A306331(n+2), A038935(n+2)]` -/
def P16972496075169705448.Spec : Prop :=
  ∀ n, (P16972496075169705448.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P11170635395666338242

`∩[A003627(n+1), A138638(n+1)]`
-/

namespace A142700.P11170635395666338242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P11170635395666338242

namespace A142700

/-- `∩[A003627(n+1), A138638(n+1)]` -/
def P11170635395666338242.Spec : Prop :=
  ∀ n, (P11170635395666338242.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P14660568240972048873

`∩[A007528(n+1), A138638(n+1)]`
-/

namespace A142700.P14660568240972048873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P14660568240972048873

namespace A142700

/-- `∩[A007528(n+1), A138638(n+1)]` -/
def P14660568240972048873.Spec : Prop :=
  ∀ n, (P14660568240972048873.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P15359435753942549574

`∩[A045309(n+1), A138638(n+1)]`
-/

namespace A142700.P15359435753942549574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P15359435753942549574

namespace A142700

/-- `∩[A045309(n+1), A138638(n+1)]` -/
def P15359435753942549574.Spec : Prop :=
  ∀ n, (P15359435753942549574.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P12010721520214463335

`∩[A045410(n+1), A138638(n+1)]`
-/

namespace A142700.P12010721520214463335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P12010721520214463335

namespace A142700

/-- `∩[A045410(n+1), A138638(n+1)]` -/
def P12010721520214463335.Spec : Prop :=
  ∀ n, (P12010721520214463335.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P13132590945020013484

`∩[A056955(n+1), A138638(n+1)]`
-/

namespace A142700.P13132590945020013484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P13132590945020013484

namespace A142700

/-- `∩[A056955(n+1), A138638(n+1)]` -/
def P13132590945020013484.Spec : Prop :=
  ∀ n, (P13132590945020013484.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P14311003539270700480

`∩[A306331(2*(n+1))+A306331(n+2), A003627(n+2)]`
-/

namespace A142700.P14311003539270700480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * (n + 1)) + A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P14311003539270700480

namespace A142700

/-- `∩[A306331(2*(n+1))+A306331(n+2), A003627(n+2)]` -/
def P14311003539270700480.Spec : Prop :=
  ∀ n, (P14311003539270700480.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P5712620941842281204

`∩[A306331(2*(n+1))+A306331(n+2), A007528(n+2)]`
-/

namespace A142700.P5712620941842281204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * (n + 1)) + A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P5712620941842281204

namespace A142700

/-- `∩[A306331(2*(n+1))+A306331(n+2), A007528(n+2)]` -/
def P5712620941842281204.Spec : Prop :=
  ∀ n, (P5712620941842281204.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P12970404881295490044

`∩[A306331(2*(n+1))+A306331(n+2), A045309(n+2)]`
-/

namespace A142700.P12970404881295490044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306331 (2 * (n + 1)) + A306331 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P12970404881295490044

namespace A142700

/-- `∩[A306331(2*(n+1))+A306331(n+2), A045309(n+2)]` -/
def P12970404881295490044.Spec : Prop :=
  ∀ n, (P12970404881295490044.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P8296971938603645412

`∩[A003627(n+1), A215144(n)-2]`
-/

namespace A142700.P8296971938603645412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P8296971938603645412

namespace A142700

/-- `∩[A003627(n+1), A215144(n)-2]` -/
def P8296971938603645412.Spec : Prop :=
  ∀ n, (P8296971938603645412.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P5869653590626306623

`∩[A007528(n+1), A215144(n)-2]`
-/

namespace A142700.P5869653590626306623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P5869653590626306623

namespace A142700

/-- `∩[A007528(n+1), A215144(n)-2]` -/
def P5869653590626306623.Spec : Prop :=
  ∀ n, (P5869653590626306623.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P2258224862838126173

`∩[A038935(n+1), A215144(n)-2]`
-/

namespace A142700.P2258224862838126173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P2258224862838126173

namespace A142700

/-- `∩[A038935(n+1), A215144(n)-2]` -/
def P2258224862838126173.Spec : Prop :=
  ∀ n, (P2258224862838126173.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P4058195303230266611

`∩[A066501(n+1), A138638(n+1)]`
-/

namespace A142700.P4058195303230266611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P4058195303230266611

namespace A142700

/-- `∩[A066501(n+1), A138638(n+1)]` -/
def P4058195303230266611.Spec : Prop :=
  ∀ n, (P4058195303230266611.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P11271238597529660338

`∩[A138638(n+1), A259548(n+1)]`
-/

namespace A142700.P11271238597529660338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259548 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P11271238597529660338

namespace A142700

/-- `∩[A138638(n+1), A259548(n+1)]` -/
def P11271238597529660338.Spec : Prop :=
  ∀ n, (P11271238597529660338.a n : ℤ) = A142700 (n + 1)

end A142700

/-! ## A142700.P4144646820179757468

`∩[A082406(n+1), A138638(n+1)]`
-/

namespace A142700.P4144646820179757468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142700.P4144646820179757468

namespace A142700

/-- `∩[A082406(n+1), A138638(n+1)]` -/
def P4144646820179757468.Spec : Prop :=
  ∀ n, (P4144646820179757468.a n : ℤ) = A142700 (n + 1)

end A142700

/-!
# A142702: Period 4: repeat [5, 2, 5, 8].

The programs for A142702, the canonical program `A142702.P16333438749252135201` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142702 has offset 1).

The definition of A142702 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142702.anchor (n : ℕ) (hn : 1 ≤ n) : A142702 n = [5, 2, 5, 8].getD ((n - 1) % 4) 0` in `Proof.A142.A142702`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142702.P4538903670211527558

`ogf((5-3x+8x^2)/(1-x+x^2-x^3))`
-/

namespace A142702.P4538903670211527558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, 8] [1, -1, 1, -1] n

end

end A142702.P4538903670211527558

namespace A142702

/-- `ogf((5-3x+8x^2)/(1-x+x^2-x^3))` -/
def P4538903670211527558.Spec : Prop :=
  ∀ n, P4538903670211527558.a n = A142702 (n + 1)

end A142702

/-! ## A142702.P16333438749252135201

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=5, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142702

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P16333438749252135201.Spec : Prop :=
  ∀ n, P16333438749252135201.a n = A142702 (n + 1)

theorem P16333438749252135201.correct : P16333438749252135201.Spec := by
  intro n
  simp only [A142702, Nat.add_sub_cancel]

end A142702

/-!
# A142703: a(n) = 2*(n-1)*( a(n-1)+a(n-2) ) starting a(1)=a(2)=1.

The programs for A142703, the canonical program `A142703.P2644830051381020925` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142703 has offset 1).

The definition of A142703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(a(n-1)+a(n-2))` (program `A142703.P2644830051381020925`, by `A142703.P2644830051381020925.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142703.P2644830051381020925

`2*n*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142703

/-- `2*n*(a(n-1)+a(n-2))` -/
def P2644830051381020925.Spec : Prop :=
  ∀ n, (P2644830051381020925.a n : ℤ) = A142703 (n + 1)

theorem P2644830051381020925.correct : P2644830051381020925.Spec := by
  intro n
  simp only [A142703, Nat.add_sub_cancel]

end A142703

/-! ## A142703.P15776014515351391289

`(a(n-1)-floor(-a(n-2)))*2*n` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A142703.P15776014515351391289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * (2 * n : ℤ)

end

end A142703.P15776014515351391289

namespace A142703

/-- `(a(n-1)-floor(-a(n-2)))*2*n` -/
def P15776014515351391289.Spec : Prop :=
  ∀ n, P15776014515351391289.a n = A142703 (n + 1)

end A142703

/-! ## A142703.P17525089876320125559

`(a(n-1)-ceil(-a(n-2)))*2*n` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A142703.P17525089876320125559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * (2 * n : ℤ)

end

end A142703.P17525089876320125559

namespace A142703

/-- `(a(n-1)-ceil(-a(n-2)))*2*n` -/
def P17525089876320125559.Spec : Prop :=
  ∀ n, P17525089876320125559.a n = A142703 (n + 1)

end A142703

/-! ## A142703.P861659582715415338

`(a(n-1)-round(-a(n-2)))*2*n` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A142703.P861659582715415338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - (-a (n - 2))) * (2 * n : ℤ)

end

end A142703.P861659582715415338

namespace A142703

/-- `(a(n-1)-round(-a(n-2)))*2*n` -/
def P861659582715415338.Spec : Prop :=
  ∀ n, P861659582715415338.a n = A142703 (n + 1)

end A142703

/-! ## A142703.P16419447238728882353

`(a(n-1)-(char[1]-a(n-2)))*2*n` with `a(0)=1, a(1)=1`
-/

namespace A142703.P16419447238728882353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))) * (2 * n : ℤ)

end

end A142703.P16419447238728882353

namespace A142703

/-- `(a(n-1)-(char[1]-a(n-2)))*2*n` -/
def P16419447238728882353.Spec : Prop :=
  ∀ n, P16419447238728882353.a n = A142703 (n + 1)

end A142703

/-!
# A142704: A generalized factorial level recursion of a Padovan type: a(n) = b(n)*(a(n-2) + a(n-3)) with b(n) = b(n-1) + k and k=2.

The programs for A142704, the canonical program `A142704.P4914782800798988128` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142704 has offset 0).

The definition of A142704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142704.P4914782800798988128

`2*n*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142704

/-- `2*n*(a(n-2)+a(n-3))` -/
def P4914782800798988128.Spec : Prop :=
  ∀ n, (P4914782800798988128.a n : ℤ) = A142704 n

theorem P4914782800798988128.correct : P4914782800798988128.Spec := by
  intro n
  simp only [A142704]

end A142704

/-! ## A142704.P3369051123557172449

`(a(n-2)+a(n-3))*A004277(n)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A142704.P3369051123557172449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (a (n - 2) + a (n - 3)) * A004277 n

end

end A142704.P3369051123557172449

namespace A142704

/-- `(a(n-2)+a(n-3))*A004277(n)` -/
def P3369051123557172449.Spec : Prop :=
  ∀ n, P3369051123557172449.a n = A142704 n

end A142704

/-! ## A142704.P7470499862423483315

`(a(n-2)+a(n-3))*A005843(n)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A142704.P7470499862423483315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (a (n - 2) + a (n - 3)) * A005843 n

end

end A142704.P7470499862423483315

namespace A142704

/-- `(a(n-2)+a(n-3))*A005843(n)` -/
def P7470499862423483315.Spec : Prop :=
  ∀ n, P7470499862423483315.a n = A142704 n

end A142704

/-!
# A142705: Numerator of 1/4 - 1/(2n)^2.

The programs for A142705, the canonical program `A142705.P17851004561113384569` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142705 has offset 1).

The definition of A142705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142705.P14990289442490995456

`ogf((3x+2x^2+6x^3-x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A142705.P14990289442490995456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 6, 0, -1] [1, 0, -3, 0, 3, 0, -1] n

end

end A142705.P14990289442490995456

namespace A142705

/-- `ogf((3x+2x^2+6x^3-x^5)/(1-3x^2+3x^4-x^6))` -/
def P14990289442490995456.Spec : Prop :=
  ∀ n, P14990289442490995456.a n = A142705 (n + 1)

end A142705

/-! ## A142705.P17851004561113384569

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=3, a(2)=2, a(3)=15, a(4)=6, a(5)=35`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142705

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P17851004561113384569.Spec : Prop :=
  ∀ n, P17851004561113384569.a n = A142705 (n + 1)

theorem P17851004561113384569.correct : P17851004561113384569.Spec := by
  intro n
  simp only [A142705, Nat.add_sub_cancel]

end A142705

/-! ## A142705.P17017085039996892388

`A061037(2*(n+1))`
-/

namespace A142705.P17017085039996892388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (2 * (n + 1))

end

end A142705.P17017085039996892388

namespace A142705

/-- `A061037(2*(n+1))` -/
def P17017085039996892388.Spec : Prop :=
  ∀ n, P17017085039996892388.a n = A142705 (n + 1)

end A142705

/-! ## A142705.P5177042226052721169

`lcm(4, n*(n+2))/4`
-/

namespace A142705.P5177042226052721169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n * (n + 2)) : ℚ) / 4

end

end A142705.P5177042226052721169

namespace A142705

/-- `lcm(4, n*(n+2))/4` -/
def P5177042226052721169.Spec : Prop :=
  ∀ n, P5177042226052721169.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P18213885546552225231

`∑[n]*ratio[lcm(2, n+1)]`
-/

namespace A142705.P18213885546552225231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A142705.P18213885546552225231

namespace A142705

/-- `∑[n]*ratio[lcm(2, n+1)]` -/
def P18213885546552225231.Spec : Prop :=
  ∀ n, P18213885546552225231.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P12295470398279884053

`(n+2)*n/gcd(2, n)²`
-/

namespace A142705.P12295470398279884053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ))

end

end A142705.P12295470398279884053

namespace A142705

/-- `(n+2)*n/gcd(2, n)²` -/
def P12295470398279884053.Spec : Prop :=
  ∀ n, P12295470398279884053.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P16946364994266677461

`∑[n]*ratio[gcd(n+1, ∑[n])]`
-/

namespace A142705.P16946364994266677461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A142705.P16946364994266677461

namespace A142705

/-- `∑[n]*ratio[gcd(n+1, ∑[n])]` -/
def P16946364994266677461.Spec : Prop :=
  ∀ n, P16946364994266677461.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P41524879401969327

`(n+2)*n/gcd(4, n%2)`
-/

namespace A142705.P41524879401969327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) / (Nat.gcd 4 (n % 2) : ℚ))

end

end A142705.P41524879401969327

namespace A142705

/-- `(n+2)*n/gcd(4, n%2)` -/
def P41524879401969327.Spec : Prop :=
  ∀ n, P41524879401969327.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P10226855444263068423

`gcd(∑[∑[3*n²]], n*(n+2))`
-/

namespace A142705.P10226855444263068423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (n * (n + 2))

end

end A142705.P10226855444263068423

namespace A142705

/-- `gcd(∑[∑[3*n²]], n*(n+2))` -/
def P10226855444263068423.Spec : Prop :=
  ∀ n, (P10226855444263068423.a n : ℤ) = A142705 (n + 1)

end A142705

/-! ## A142705.P4005533477031533801

`n*(n+2)/4^∑[(-1)^n]`
-/

namespace A142705.P4005533477031533801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℚ) / (4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A142705.P4005533477031533801

namespace A142705

/-- `n*(n+2)/4^∑[(-1)^n]` -/
def P4005533477031533801.Spec : Prop :=
  ∀ n, P4005533477031533801.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P6739495791989685770

`(n+2)*n/runs[val(2*n+1, 5)]`
-/

namespace A142705.P6739495791989685770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * n + 1) 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) / ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℚ))

end

end A142705.P6739495791989685770

namespace A142705

/-- `(n+2)*n/runs[val(2*n+1, 5)]` -/
def P6739495791989685770.Spec : Prop :=
  ∀ n, P6739495791989685770.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P8832668524380948989

`(n+2)/(n-2)*a(n-2)` with `a(0)=0, a(1)=3, a(2)=2`
-/

namespace A142705.P8832668524380948989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3, 2] fun n a =>
  (n + 2 : ℚ) / ((n : ℤ) - 2 : ℚ) * a (n - 2)

end

end A142705.P8832668524380948989

namespace A142705

/-- `(n+2)/(n-2)*a(n-2)` -/
def P8832668524380948989.Spec : Prop :=
  ∀ n, P8832668524380948989.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P9507264499966263278

`(n+2)*gcd(2*n, (n+1)*∑[n])/2`
-/

namespace A142705.P9507264499966263278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Nat.gcd (2 * n) ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 2)

end

end A142705.P9507264499966263278

namespace A142705

/-- `(n+2)*gcd(2*n, (n+1)*∑[n])/2` -/
def P9507264499966263278.Spec : Prop :=
  ∀ n, P9507264499966263278.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P17763918375030587752

`gcd(2, n)*A198148(n)`
-/

namespace A142705.P17763918375030587752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A198148 n

end

end A142705.P17763918375030587752

namespace A142705

/-- `gcd(2, n)*A198148(n)` -/
def P17763918375030587752.Spec : Prop :=
  ∀ n, P17763918375030587752.a n = A142705 (n + 1)

end A142705

/-! ## A142705.P645332369865044950

`(n+2)/2*A064680(n)`
-/

namespace A142705.P645332369865044950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A064680 n : ℚ)

end

end A142705.P645332369865044950

namespace A142705

/-- `(n+2)/2*A064680(n)` -/
def P645332369865044950.Spec : Prop :=
  ∀ n, P645332369865044950.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P9818584465233558015

`(n+2)*n/A040005(n)`
-/

namespace A142705.P9818584465233558015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n : ℚ) / (A040005 n : ℚ))

end

end A142705.P9818584465233558015

namespace A142705

/-- `(n+2)*n/A040005(n)` -/
def P9818584465233558015.Spec : Prop :=
  ∀ n, P9818584465233558015.a n = (A142705 (n + 1) : ℚ)

end A142705

/-! ## A142705.P4971479631360340092

`A168077(n)+A064680(n)`
-/

namespace A142705.P4971479631360340092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n + A064680 n

end

end A142705.P4971479631360340092

namespace A142705

/-- `A168077(n)+A064680(n)` -/
def P4971479631360340092.Spec : Prop :=
  ∀ n, P4971479631360340092.a n = A142705 (n + 1)

end A142705

/-! ## A142705.P10963969541374099401

`A040001(n)*A198148(n)`
-/

namespace A142705.P10963969541374099401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A198148 n

end

end A142705.P10963969541374099401

namespace A142705

/-- `A040001(n)*A198148(n)` -/
def P10963969541374099401.Spec : Prop :=
  ∀ n, P10963969541374099401.a n = A142705 (n + 1)

end A142705

/-! ## A142705.P4999159420193740750

`A134451(n)*A198148(n)`
-/

namespace A142705.P4999159420193740750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A198148 n

end

end A142705.P4999159420193740750

namespace A142705

/-- `A134451(n)*A198148(n)` -/
def P4999159420193740750.Spec : Prop :=
  ∀ n, P4999159420193740750.a n = A142705 (n + 1)

end A142705

/-! ## A142705.P7248849627434160244

`lcm(A198148(n), A212831(n))`
-/

namespace A142705.P7248849627434160244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A198148 n) (A212831 n)

end

end A142705.P7248849627434160244

namespace A142705

/-- `lcm(A198148(n), A212831(n))` -/
def P7248849627434160244.Spec : Prop :=
  ∀ n, (P7248849627434160244.a n : ℤ) = A142705 (n + 1)

end A142705

/-!
# A142706: Coefficients of the derivatives of the Eulerian polynomials (with indexing as in A173018).

The programs for A142706, there is no canonical definition to state claims against.
-/

/-! ## A142706.P6590185402809670760

`A002260(n+1)*A008292(A080036(n+1))`
-/

namespace A142706.P6590185402809670760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008292 (A080036 (n + 1)).toNat

end

end A142706.P6590185402809670760

/-! ## A142706.P7918536453290105305

`A002260(n+1)*A008292(A014132(n+2))`
-/

namespace A142706.P7918536453290105305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A008292 (A014132 (n + 2)).toNat

end

end A142706.P7918536453290105305

/-! ## A142706.P6250382529387273004

`A002260(n+1)*A173018(lt[0, A319082(n)])`
-/

namespace A142706.P6250382529387273004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A142706.P6250382529387273004

/-! ## A142706.P2146378623259408877

`A002260(n+1)*A123125(lt[1, A002262(n)])`
-/

namespace A142706.P2146378623259408877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A123125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A142706.P2146378623259408877

/-! ## A142706.P9423852381580115591

`A002260(n+1)*A173018(lt[1, A007318(n)])`
-/

namespace A142706.P9423852381580115591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A142706.P9423852381580115591

/-!
# A142707: Coefficients of derivatives of MacMahon polynomials (A060187): p(x,n)=2^n*(1 - x)^(1 + n)*LerchPhi[x, -n, 1/2]; p'(x,n)=(d/dx)p{x,n).

The programs for A142707, there is no canonical definition to state claims against.
-/

/-! ## A142707.P14312893401643223824

`A002260(n+1)*A060187(comp[∑[n]]+1)`
-/

namespace A142707.P14312893401643223824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A060187 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A142707.P14312893401643223824

/-! ## A142707.P5556234460017552867

`(A002262(n)+1)*A060187(A014132(n+2))`
-/

namespace A142707.P5556234460017552867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A060187 (A014132 (n + 2)).toNat

end

end A142707.P5556234460017552867

/-! ## A142707.P13303376958622803854

`A000005(A059268(n))*A060187(A014132(n+2))`
-/

namespace A142707.P13303376958622803854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A060187 (A014132 (n + 2)).toNat

end

end A142707.P13303376958622803854

/-! ## A142707.P11327723269101616373

`A060187(A014132(n+2))*A263131(A002262(n))`
-/

namespace A142707.P11327723269101616373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A014132 (n + 2)).toNat * A263131 (A002262 n).toNat

end

end A142707.P11327723269101616373

/-! ## A142707.P13988912696179876452

`A004736(A038722(n+1))*A060187(A014132(n+2))`
-/

namespace A142707.P13988912696179876452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A060187 (A014132 (n + 2)).toNat

end

end A142707.P13988912696179876452

/-!
# A142708: Weight distribution of [114,57,16] binary extended quadratic-residue (or QR) code.

The programs for A142708, there is no canonical definition to state claims against.
-/

/-! ## A142708.P4768416009752383953

`A106433(2*n)+A106433(A004280(n+1))`
-/

namespace A142708.P4768416009752383953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106433 (2 * n) + A106433 (A004280 (n + 1)).toNat

end

end A142708.P4768416009752383953

/-! ## A142708.P17749240772961708835

`lcm(A001934(n), A018843(A243171(n+1)))`
-/

namespace A142708.P17749240772961708835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001934 n) (A018843 (A243171 (n + 1)).toNat)

end

end A142708.P17749240772961708835

/-! ## A142708.P18442774631771651250

`A145487(A145450(2*(n+1))^A145458(n))`
-/

namespace A142708.P18442774631771651250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145487 (SequenceMachineLib.roundAway ((A145450 (2 * (n + 1)) : ℚ) ^ (A145458 n : ℤ))).toNat

end

end A142708.P18442774631771651250

/-! ## A142708.P10513166762428069206

`A145487(C(A145450(2*(n+1)), A145458(n)))`
-/

namespace A142708.P10513166762428069206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145487 (Nat.choose (A145450 (2 * (n + 1))).toNat (A145458 n).toNat)

end

end A142708.P10513166762428069206

/-! ## A142708.P14961507522032328713

`A008437(3*(n+1))*A188010(A015518(n+1))`
-/

namespace A142708.P14961507522032328713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (3 * (n + 1)) * A188010 (A015518 (n + 1)).toNat

end

end A142708.P14961507522032328713

/-!
# A142710: a(n) = A142585(n) + A142586(n).

The programs for A142710, the canonical program `A142710.P15116843330980903994` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142710 has offset 0).

The definition of A142710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142710.P15116843330980903994

`A142585(n)+A142586(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A142710

/-- `A142585(n)+A142586(n)` -/
def P15116843330980903994.Spec : Prop :=
  ∀ n, P15116843330980903994.a n = A142710 n

theorem P15116843330980903994.correct : P15116843330980903994.Spec := by
  intro n
  simp only [A142710]

end A142710

/-! ## A142710.P18144218939911631700

`ogf((2-2x-12x^2+12x^3+14x^4-4x^6)/(1-2x-7x^2+12x^3+11x^4-16x^5+4x^6))`
-/

namespace A142710.P18144218939911631700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -12, 12, 14, 0, -4] [1, -2, -7, 12, 11, -16, 4] n

end

end A142710.P18144218939911631700

namespace A142710

/-- `ogf((2-2x-12x^2+12x^3+14x^4-4x^6)/(1-2x-7x^2+12x^3+11x^4-16x^5+4x^6))` -/
def P18144218939911631700.Spec : Prop :=
  ∀ n, P18144218939911631700.a n = A142710 n

end A142710

/-! ## A142710.P4861293440884385358

`2*A147586(n)`
-/

namespace A142710.P4861293440884385358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147586 n

end

end A142710.P4861293440884385358

namespace A142710

/-- `2*A147586(n)` -/
def P4861293440884385358.Spec : Prop :=
  ∀ n, P4861293440884385358.a n = A142710 n

end A142710

/-! ## A142710.P3427356022815950918

`A147586(A028310(n))+A147586(n)`
-/

namespace A142710.P3427356022815950918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147586 (A028310 n).toNat + A147586 n

end

end A142710.P3427356022815950918

namespace A142710

/-- `A147586(A028310(n))+A147586(n)` -/
def P3427356022815950918.Spec : Prop :=
  ∀ n, P3427356022815950918.a n = A142710 n

end A142710

/-! ## A142710.P1020204515710820990

`A147586(A000007(n)+n)+A147586(n)`
-/

namespace A142710.P1020204515710820990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147586 (A000007 n + (n : ℤ)).toNat + A147586 n

end

end A142710.P1020204515710820990

namespace A142710

/-- `A147586(A000007(n)+n)+A147586(n)` -/
def P1020204515710820990.Spec : Prop :=
  ∀ n, P1020204515710820990.a n = A142710 n

end A142710

/-! ## A142710.P6457228563481191863

`A147586(A004277(n)-n)+A147586(n)`
-/

namespace A142710.P6457228563481191863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147586 (A004277 n - (n : ℤ)).toNat + A147586 n

end

end A142710.P6457228563481191863

namespace A142710

/-- `A147586(A004277(n)-n)+A147586(n)` -/
def P6457228563481191863.Spec : Prop :=
  ∀ n, P6457228563481191863.a n = A142710 n

end A142710

/-! ## A142710.P4435484001682230288

`or(A147586(n)+A147586(n), A000038(n))`
-/

namespace A142710.P4435484001682230288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147586 n + A147586 n) (A000038 n)

end

end A142710.P4435484001682230288

namespace A142710

/-- `or(A147586(n)+A147586(n), A000038(n))` -/
def P4435484001682230288.Spec : Prop :=
  ∀ n, P4435484001682230288.a n = A142710 n

end A142710

/-!
# A142712: Primes of the form (p(n)-2*n)/3, where p(n)=n-th prime.

The programs for A142712, there is no canonical definition to state claims against.
-/

/-! ## A142712.P17883832629634760394

`p?[n+2-A165634(3*n+5)]`
-/

namespace A142712.P17883832629634760394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A165634 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142712.P17883832629634760394

/-! ## A142712.P8135556133924293586

`p?[A175676(A179437(n+2))]`
-/

namespace A142712.P8135556133924293586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A179437 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142712.P8135556133924293586

/-! ## A142712.P3322768209325893713

`p?[A115273(A014689(n+1)-n)]`
-/

namespace A142712.P3322768209325893713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115273 (A014689 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142712.P3322768209325893713

/-! ## A142712.P7974956096286071731

`p?[A115273(A000040(n+1)-(2*n+1))]`
-/

namespace A142712.P7974956096286071731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115273 (A000040 (n + 1) - (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142712.P7974956096286071731

/-! ## A142712.P422168589202889835

`p?[A135997(A000040(n+1)+n+1)-(n+1)]`
-/

namespace A142712.P422168589202889835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A000040 (n + 1) + (n + 1 : ℤ)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142712.P422168589202889835

/-! ## A142712.P7282983817167739937

`p?[A000040(n+1)-A186101(A000040(n+1)+n+1)]`
-/

namespace A142712.P7282983817167739937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A186101 (A000040 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142712.P7282983817167739937

/-!
# A142713: A determinant sequence: M={{a(-1 + n), a(-2 + n), a(-3 + n), a(-4 + n)}, {a(-2 + n), a(-3 + n), a(-4 + n), a(-5 + n)}, {a(-3 + n), a(-4 + n), a(-5 + n), a(-6 + n)}, {a(-4 + n), a(-5 + n), a(-6 + n), a(-7 + n)}}; a(n)=Det[M].

The programs for A142713, there is no canonical definition to state claims against.
-/

/-! ## A142713.P17994424644961158275

`or(A084239(n), A124754(A303546(n+1)))`
-/

namespace A142713.P17994424644961158275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084239 n) (A124754 (A303546 (n + 1)).toNat)

end

end A142713.P17994424644961158275

/-!
# A142714: a(n) = a(n-1)*a(n-3) - a(n-2)^2, with a(1) = 1, a(2) = 2, a(3) = 3.

The programs for A142714, the canonical program `A142714.P7512481430713359841` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142714 has offset 1).

The definition of A142714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-3)-a(n-2)²` (program `A142714.P7512481430713359841`, by `A142714.P7512481430713359841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142714.P7512481430713359841

`a(n-1)*a(n-3)-a(n-2)²` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142714

/-- `a(n-1)*a(n-3)-a(n-2)²` -/
def P7512481430713359841.Spec : Prop :=
  ∀ n, P7512481430713359841.a n = A142714 (n + 1)

theorem P7512481430713359841.correct : P7512481430713359841.Spec := by
  intro n
  simp only [A142714, Nat.add_sub_cancel]

end A142714

/-!
# A142715: Primes congruent to 31 mod 58.

The programs for A142715, there is no canonical definition to state claims against.
-/

/-! ## A142715.P6601073475332128403

`A141978(2+n)`
-/

namespace A142715.P6601073475332128403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141978 (2 + n)

end

end A142715.P6601073475332128403

/-! ## A142715.P362134128615520274

`p?[29*(n+1)+2]`
-/

namespace A142715.P362134128615520274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142715.P362134128615520274

/-! ## A142715.P4932587422529565323

`p?[A249674(A152271(n))+A248572(n)]+2-4/2`
-/

namespace A142715.P4932587422529565323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (A152271 n).toNat + A248572 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) + (2 - (4 : ℚ) / 2)

end

end A142715.P4932587422529565323

/-! ## A142715.P6242551012953577711

`∩[A122259(n+1), A248572(n)+1]`
-/

namespace A142715.P6242551012953577711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P6242551012953577711

/-! ## A142715.P9734677329902562601

`∩[A071621(n+1), A248572(n)+1]`
-/

namespace A142715.P9734677329902562601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P9734677329902562601

/-! ## A142715.P42868577120939811

`∩[A004139(n+1), A248572(n)+1]`
-/

namespace A142715.P42868577120939811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P42868577120939811

/-! ## A142715.P11543049670545208915

`∩[A065091(n+1), A248572(n)+1]`
-/

namespace A142715.P11543049670545208915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P11543049670545208915

/-! ## A142715.P6850452158667568627

`∩[A065396(n+1), A248572(n)+1]`
-/

namespace A142715.P6850452158667568627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P6850452158667568627

/-! ## A142715.P8250999488327770651

`∩[A066542(n+1), A248572(n)+1]`
-/

namespace A142715.P8250999488327770651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P8250999488327770651

/-! ## A142715.P17098593644675449846

`∩[A140826(n+1), A248572(n)+1]`
-/

namespace A142715.P17098593644675449846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P17098593644675449846

/-! ## A142715.P5058237728276713651

`∩[A162787(n+1), A248572(n)+1]`
-/

namespace A142715.P5058237728276713651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P5058237728276713651

/-! ## A142715.P2710961650018979064

`∩[A162789(n+1), A248572(n)+1]`
-/

namespace A142715.P2710961650018979064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P2710961650018979064

/-! ## A142715.P7196333423519839371

`∩[A248572(n+1)+1, A000040(n+2)]`
-/

namespace A142715.P7196333423519839371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P7196333423519839371

/-! ## A142715.P12510179114718236901

`∩[A248572(n+1)+1, A045319(n+2)]`
-/

namespace A142715.P12510179114718236901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P12510179114718236901

/-! ## A142715.P3838742260234077432

`∩[A248572(n+1)+1, A045344(n+2)]`
-/

namespace A142715.P3838742260234077432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P3838742260234077432

/-! ## A142715.P11562600697276199321

`∩[A248572(n+1)+1, A051948(n+2)]`
-/

namespace A142715.P11562600697276199321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P11562600697276199321

/-! ## A142715.P13919098730155958490

`∩[A248572(n+1)+1, A053813(n+2)]`
-/

namespace A142715.P13919098730155958490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142715.P13919098730155958490

/-! ## A142715.P9956758496169918616

`record[A006530(29*(n+1)+2)]`
-/

namespace A142715.P9956758496169918616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (29 * (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142715.P9956758496169918616

/-! ## A142715.P8086670302752855111

`record[A020639(29*(n+1)+2)]`
-/

namespace A142715.P8086670302752855111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (29 * (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142715.P8086670302752855111

/-!
# A142716: First differences of A140495.

The programs for A142716, the canonical program `A142716.P13119383110702978742` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142716 has offset 1).

The definition of A142716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142716.P13119383110702978742

`Δ[A140495(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A142716

/-- `Δ[A140495(n)]` -/
def P13119383110702978742.Spec : Prop :=
  ∀ n, P13119383110702978742.a n = A142716 (n + 1)

theorem P13119383110702978742.correct : P13119383110702978742.Spec := by
  intro n
  simp only [A142716, Nat.add_sub_cancel]

end A142716

/-! ## A142716.P6571675451612609263

`A140495(n+1)-A140495(n)`
-/

namespace A142716.P6571675451612609263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140495 (n + 1) - A140495 n

end

end A142716.P6571675451612609263

namespace A142716

/-- `A140495(n+1)-A140495(n)` -/
def P6571675451612609263.Spec : Prop :=
  ∀ n, P6571675451612609263.a n = A142716 (n + 1)

theorem P6571675451612609263.correct : P6571675451612609263.Spec := by
  intro n
  simp only [A142716, Nat.add_sub_cancel, A142716.P6571675451612609263.a, A142716.P13119383110702978742.f1, A142716.P13119383110702978742.a, SequenceMachineLib.memo_apply]

end A142716

/-! ## A142716.P16917601678947899705

`record[A140495(abs(1-n))]-A140495(n)`
-/

namespace A142716.P16917601678947899705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140495 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A140495 n

end

end A142716.P16917601678947899705

namespace A142716

/-- `record[A140495(abs(1-n))]-A140495(n)` -/
def P16917601678947899705.Spec : Prop :=
  ∀ n, P16917601678947899705.a n = A142716 (n + 1)

end A142716

/-!
# A142717: First (leftmost) odd term in the n-th row of triangle A120070.

The programs for A142717, the canonical program `A142717.P413200054908063630` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142717 has offset 1).

The definition of A142717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142717.P14445534156741903895

`ogf((3-x+5x^2-3x^3)/(1-2x+2x^3-x^4))`
-/

namespace A142717.P14445534156741903895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 5, -3] [1, -2, 0, 2, -1] n

end

end A142717.P14445534156741903895

namespace A142717

/-- `ogf((3-x+5x^2-3x^3)/(1-2x+2x^3-x^4))` -/
def P14445534156741903895.Spec : Prop :=
  ∀ n, P14445534156741903895.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P12585979353166830864

`(n+1)²+2*(n+1)+((n+1)%2-1)*3`
-/

namespace A142717.P12585979353166830864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 2 * (n + 1) : ℤ) + ((((n + 1) % 2 : ℕ) : ℤ) - 1) * 3

end

end A142717.P12585979353166830864

namespace A142717

/-- `(n+1)²+2*(n+1)+((n+1)%2-1)*3` -/
def P12585979353166830864.Spec : Prop :=
  ∀ n, P12585979353166830864.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P413200054908063630

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=3, a(1)=5, a(2)=15, a(3)=21`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142717

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P413200054908063630.Spec : Prop :=
  ∀ n, P413200054908063630.a n = A142717 (n + 1)

theorem P413200054908063630.correct : P413200054908063630.Spec := by
  intro n
  simp only [A142717, Nat.add_sub_cancel]

end A142717

/-! ## A142717.P11858144071245959964

`(n+1)²+2*(n+1)-3/2*(1+(-1)^(n+1))`
-/

namespace A142717.P11858144071245959964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 2 * (n + 1) : ℚ) - (3 : ℚ) / 2 * (1 + (-1) ^ (n + 1) : ℚ)

end

end A142717.P11858144071245959964

namespace A142717

/-- `(n+1)²+2*(n+1)-3/2*(1+(-1)^(n+1))` -/
def P11858144071245959964.Spec : Prop :=
  ∀ n, P11858144071245959964.a n = (A142717 (n + 1) : ℚ)

theorem P11858144071245959964.correct : P11858144071245959964.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A142717, Nat.add_sub_cancel, A142717.P11858144071245959964.a, A142717.P413200054908063630.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A142717, Nat.add_sub_cancel, A142717.P11858144071245959964.a, A142717.P413200054908063630.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A142717

/-! ## A142717.P4059995190734724572

`or(1, n+3)*or(1, n)`
-/

namespace A142717.P4059995190734724572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 3) * Nat.lor 1 n

end

end A142717.P4059995190734724572

namespace A142717

/-- `or(1, n+3)*or(1, n)` -/
def P4059995190734724572.Spec : Prop :=
  ∀ n, (P4059995190734724572.a n : ℤ) = A142717 (n + 1)

end A142717

/-! ## A142717.P8219135797094099889

`lcm(or(1, n+3), or(1, n))`
-/

namespace A142717.P8219135797094099889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.lor 1 (n + 3)) (Nat.lor 1 n)

end

end A142717.P8219135797094099889

namespace A142717

/-- `lcm(or(1, n+3), or(1, n))` -/
def P8219135797094099889.Spec : Prop :=
  ∀ n, (P8219135797094099889.a n : ℤ) = A142717 (n + 1)

end A142717

/-! ## A142717.P5119340551422424178

`record[or(6, n)-3]+n²`
-/

namespace A142717.P5119340551422424178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 6 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n ^ 2 : ℤ)

end

end A142717.P5119340551422424178

namespace A142717

/-- `record[or(6, n)-3]+n²` -/
def P5119340551422424178.Spec : Prop :=
  ∀ n, P5119340551422424178.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P15616630865007750851

`∑[a(n-2)+4]` with `a(0)=3, a(1)=2, a(2)=10`
-/

namespace A142717.P15616630865007750851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 10] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142717.P15616630865007750851

namespace A142717

/-- `∑[a(n-2)+4]` -/
def P15616630865007750851.Spec : Prop :=
  ∀ n, (P15616630865007750851.a n : ℤ) = A142717 (n + 1)

end A142717

/-! ## A142717.P11400302377940130241

`or(1, xor(1, (n+2)²)-3)`
-/

namespace A142717.P11400302377940130241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((Nat.xor 1 ((n + 2) ^ 2) : ℤ) - 3)

end

end A142717.P11400302377940130241

namespace A142717

/-- `or(1, xor(1, (n+2)²)-3)` -/
def P11400302377940130241.Spec : Prop :=
  ∀ n, P11400302377940130241.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P2081456354400890127

`(n+2)²-4^(n%2)`
-/

namespace A142717.P2081456354400890127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (4 ^ (n % 2) : ℤ)

end

end A142717.P2081456354400890127

namespace A142717

/-- `(n+2)²-4^(n%2)` -/
def P2081456354400890127.Spec : Prop :=
  ∀ n, P2081456354400890127.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P7707329532917501997

`(n+2)²-4^and(1, n)`
-/

namespace A142717.P7707329532917501997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (4 ^ Nat.land 1 n : ℤ)

end

end A142717.P7707329532917501997

namespace A142717

/-- `(n+2)²-4^and(1, n)` -/
def P7707329532917501997.Spec : Prop :=
  ∀ n, P7707329532917501997.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P5567051506150699512

`xor((n+2)², gcd(2, n))-3`
-/

namespace A142717.P5567051506150699512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor ((n + 2) ^ 2) (Nat.gcd 2 n) : ℤ) - 3

end

end A142717.P5567051506150699512

namespace A142717

/-- `xor((n+2)², gcd(2, n))-3` -/
def P5567051506150699512.Spec : Prop :=
  ∀ n, P5567051506150699512.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P10985127162844522888

`(n+2)²-C(4, and(1, n))`
-/

namespace A142717.P10985127162844522888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (Nat.choose 4 (Nat.land 1 n) : ℤ)

end

end A142717.P10985127162844522888

namespace A142717

/-- `(n+2)²-C(4, and(1, n))` -/
def P10985127162844522888.Spec : Prop :=
  ∀ n, P10985127162844522888.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P10577279560444980945

`(n+2)²-gcd(4, (n+1)²)`
-/

namespace A142717.P10577279560444980945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (Nat.gcd 4 ((n + 1) ^ 2) : ℤ)

end

end A142717.P10577279560444980945

namespace A142717

/-- `(n+2)²-gcd(4, (n+1)²)` -/
def P10577279560444980945.Spec : Prop :=
  ∀ n, P10577279560444980945.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P5247783166870913452

`(n+2)²-(and(1, n)+1)²`
-/

namespace A142717.P5247783166870913452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - ((Nat.land 1 n + 1) ^ 2 : ℤ)

end

end A142717.P5247783166870913452

namespace A142717

/-- `(n+2)²-(and(1, n)+1)²` -/
def P5247783166870913452.Spec : Prop :=
  ∀ n, P5247783166870913452.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P17990632315103732132

`a(n-2)+4*(n+1)` with `a(0)=3, a(1)=5`
-/

namespace A142717.P17990632315103732132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 2) + 4 * (n + 1)

end

end A142717.P17990632315103732132

namespace A142717

/-- `a(n-2)+4*(n+1)` -/
def P17990632315103732132.Spec : Prop :=
  ∀ n, (P17990632315103732132.a n : ℤ) = A142717 (n + 1)

end A142717

/-! ## A142717.P3337656680846806593

`(n+2)²-or(n+1, -2)²`
-/

namespace A142717.P3337656680846806593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - Int.lor (n + 1 : ℤ) (-2) ^ 2

end

end A142717.P3337656680846806593

namespace A142717

/-- `(n+2)²-or(n+1, -2)²` -/
def P3337656680846806593.Spec : Prop :=
  ∀ n, P3337656680846806593.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P13674564910344345266

`record[or(3, n*(n-2))-2*n]`
-/

namespace A142717.P13674564910344345266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ((n : ℤ) * ((n : ℤ) - 2)) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142717.P13674564910344345266

namespace A142717

/-- `record[or(3, n*(n-2))-2*n]` -/
def P13674564910344345266.Spec : Prop :=
  ∀ n, P13674564910344345266.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P14914164740093045888

`∑[4-(a(n-1)-4*n)]` with `a(0)=3, a(1)=2`
-/

namespace A142717.P14914164740093045888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  4 - (f1 (n - 1) - (4 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142717.P14914164740093045888

namespace A142717

/-- `∑[4-(a(n-1)-4*n)]` -/
def P14914164740093045888.Spec : Prop :=
  ∀ n, P14914164740093045888.a n = A142717 (n + 1)

end A142717

/-! ## A142717.P7908082935771055432

`record[(n-3)*2*n]-a(n-1)` with `a(0)=3`
-/

namespace A142717.P7908082935771055432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A142717.P7908082935771055432

namespace A142717

/-- `record[(n-3)*2*n]-a(n-1)` -/
def P7908082935771055432.Spec : Prop :=
  ∀ n, P7908082935771055432.a n = A142717 (n + 1)

end A142717

/-!
# A142718: Odd terms in A014217.

The programs for A142718, the canonical program `A142718.P13977445098999172436` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142718 has offset 1).

The definition of A142718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142718.P13977445098999172436

`A014217(∑[and(5, dr(3*n))])`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A142718

/-- `A014217(∑[and(5, dr(3*n))])` -/
def P13977445098999172436.Spec : Prop :=
  ∀ n, P13977445098999172436.a n = A142718 (n + 1)

theorem P13977445098999172436.correct : P13977445098999172436.Spec := by
  intro n
  simp only [A142718, Nat.add_sub_cancel]

end A142718

/-! ## A142718.P10062498035612822488

`A014217(A047266(n+1))`
-/

namespace A142718.P10062498035612822488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (A047266 (n + 1)).toNat

end

end A142718.P10062498035612822488

namespace A142718

/-- `A014217(A047266(n+1))` -/
def P10062498035612822488.Spec : Prop :=
  ∀ n, P10062498035612822488.a n = A142718 (n + 1)

end A142718

/-! ## A142718.P8886241601955464903

`A014217(A064429(2*n))`
-/

namespace A142718.P8886241601955464903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (A064429 (2 * n)).toNat

end

end A142718.P8886241601955464903

namespace A142718

/-- `A014217(A064429(2*n))` -/
def P8886241601955464903.Spec : Prop :=
  ∀ n, P8886241601955464903.a n = A142718 (n + 1)

end A142718

/-! ## A142718.P15538515646073166079

`A014217(A057078(n+1)+2*n)`
-/

namespace A142718.P15538515646073166079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (A057078 (n + 1) + (2 * n : ℤ)).toNat

end

end A142718.P15538515646073166079

namespace A142718

/-- `A014217(A057078(n+1)+2*n)` -/
def P15538515646073166079.Spec : Prop :=
  ∀ n, P15538515646073166079.a n = A142718 (n + 1)

end A142718

/-! ## A142718.P5011906216905219273

`A014217(2*n+1-A010872(n+1))`
-/

namespace A142718.P5011906216905219273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 ((2 * n + 1 : ℤ) - A010872 (n + 1)).toNat

end

end A142718.P5011906216905219273

namespace A142718

/-- `A014217(2*n+1-A010872(n+1))` -/
def P5011906216905219273.Spec : Prop :=
  ∀ n, P5011906216905219273.a n = A142718 (n + 1)

end A142718

/-! ## A142718.P4420464105980881168

`A014217(2*n+1-A164965(2*n))`
-/

namespace A142718.P4420464105980881168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 ((2 * n + 1 : ℤ) - A164965 (2 * n)).toNat

end

end A142718.P4420464105980881168

namespace A142718

/-- `A014217(2*n+1-A164965(2*n))` -/
def P4420464105980881168.Spec : Prop :=
  ∀ n, P4420464105980881168.a n = A142718 (n + 1)

end A142718

/-!
# A142719: a(n) = if n < 41 then n^2 - n + 41, otherwise n^2 - 81*n + 1681.

The programs for A142719, there is no canonical definition to state claims against.
-/

/-! ## A142719.P10794751972411205428

`A050367(A155884(n))`
-/

namespace A142719.P10794751972411205428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (A155884 n).toNat

end

end A142719.P10794751972411205428

/-! ## A142719.P13734174683688866569

`A155884(n)%A097400(n)`
-/

namespace A142719.P13734174683688866569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155884 n) (A097400 n)

end

end A142719.P13734174683688866569

/-! ## A142719.P15835999292775996735

`A155884(n)+A010054(A156252(n+1))`
-/

namespace A142719.P15835999292775996735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155884 n + A010054 (A156252 (n + 1)).toNat

end

end A142719.P15835999292775996735

/-! ## A142719.P6721454181995268588

`A337923(A256585(n+1))+A155884(n)`
-/

namespace A142719.P6721454181995268588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (A256585 (n + 1)).toNat + A155884 n

end

end A142719.P6721454181995268588

/-! ## A142719.P553499996060189839

`A155884(n)+A000007(A304709(n+2))`
-/

namespace A142719.P553499996060189839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155884 n + A000007 (A304709 (n + 2)).toNat

end

end A142719.P553499996060189839

/-!
# A142720: A triangle sequence of coefficients of odd sum polynomials: p(x,n) = x^(2*n-1) - (Sum_{i=0..n-1} x^(2*i+1)) - 1.

The programs for A142720, there is no canonical definition to state claims against.
-/

/-! ## A142720.P2090123252057918133

`char[2*comp[∑[n]]+1]-1`
-/

namespace A142720.P2090123252057918133
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1

end

end A142720.P2090123252057918133

/-! ## A142720.P5778575094958737626

`-xor(1, char[2*comp[C(n, 2)]+1])`
-/

namespace A142720.P5778575094958737626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A142720.P5778575094958737626

/-! ## A142720.P7444378682578857765

`(char[∑[2*n]+1]-(n+1))%2`
-/

namespace A142720.P7444378682578857765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n + 1 : ℤ)) 2

end

end A142720.P7444378682578857765

/-! ## A142720.P6208857607242827482

`-(char[(1-n)²+n]+log2(gcd(2, n)))`
-/

namespace A142720.P6208857607242827482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ))

end

end A142720.P6208857607242827482

/-! ## A142720.P14021528794148961919

`-(char[∑[2*n]+1]+(n+1)%2)`
-/

namespace A142720.P14021528794148961919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((if ∃ j, f1 j = n then 1 else 0) + (n + 1) % 2 : ℕ) : ℤ)

end

end A142720.P14021528794148961919

/-! ## A142720.P3525407623897072957

`-((Δ[round(sqrt(and(n, -2)))²]+1+n)%2)`
-/

namespace A142720.P3525407623897072957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.land (n : ℤ) (-2) : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (f1 (n + 1) - f1 n + 1 + (n : ℤ)) 2

end

end A142720.P3525407623897072957

/-! ## A142720.P4803894179557175881

`-∏{d}[1-n, #%2]^(1-char[n*(n+3)+3])`
-/

namespace A142720.P4803894179557175881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3) + 3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(((∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2 : ℕ) : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ))

end

end A142720.P4803894179557175881

/-! ## A142720.P10182811932311075755

`-log2(gcd(2, n))^A138036(n)`
-/

namespace A142720.P10182811932311075755
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(Real.logb 2 (Nat.gcd 2 n : ℝ) ^ (A138036 n : ℤ))

end

end A142720.P10182811932311075755

/-! ## A142720.P17059083818522367196

`-A127693((n-1)^(n%2))`
-/

namespace A142720.P17059083818522367196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A127693 (((n : ℤ) - 1) ^ (n % 2)).toNat

end

end A142720.P17059083818522367196

/-! ## A142720.P15268660746876164137

`-(A000203(Δ[or(1, 1-n)²]+1)%2)`
-/

namespace A142720.P15268660746876164137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A000203 (f1 (n + 1) - f1 n + 1).toNat) 2

end

end A142720.P15268660746876164137

/-!
# A142721: An even-odd sequence: a(n) = n/2 if n is even, or a(n-1) + 2^floor(log_2(n+1)) otherwise.

The programs for A142721, there is no canonical definition to state claims against.
-/

/-! ## A142721.P5959921599972725374

`lt[n, xor(n, floor(n/2))]-(a(n-1)+2)` with `a(0)=0`
-/

namespace A142721.P5959921599972725374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (a (n - 1) + 2)

end

end A142721.P5959921599972725374

/-! ## A142721.P7013650551461089280

`2^floor(log2(n+1))+n-(a(n-1)+1)` with `a(0)=0`
-/

namespace A142721.P7013650551461089280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ Nat.log 2 (n + 1) + n : ℤ) - (a (n - 1) + 1)

end

end A142721.P7013650551461089280

/-! ## A142721.P6996063481979692957

`∑[n%2]+(2^floor(log2(n+1))-1)*n%2`
-/

namespace A142721.P6996063481979692957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1) * ((n % 2 : ℕ) : ℤ)

end

end A142721.P6996063481979692957

/-! ## A142721.P6023294669182641618

`A038572(2+n)-1`
-/

namespace A142721.P6023294669182641618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (2 + n) - 1

end

end A142721.P6023294669182641618

/-! ## A142721.P13299053599589110396

`abs(∑[-Δ[A038572(n+1)]])`
-/

namespace A142721.P13299053599589110396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A142721.P13299053599589110396

/-! ## A142721.P2638579609556643365

`A092323(n+1)+n-a(n-1)` with `a(0)=0`
-/

namespace A142721.P2638579609556643365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A092323 (n + 1) + (n : ℤ) - a (n - 1)

end

end A142721.P2638579609556643365

/-! ## A142721.P7759154968380780491

`A160588(lt[n, 2*and(n, 2*n)]-3)`
-/

namespace A142721.P7759154968380780491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160588 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 3)

end

end A142721.P7759154968380780491

/-! ## A142721.P2944477967210625574

`a(n-2)+2-A153152(n)+n` with `a(0)=0, a(1)=2`
-/

namespace A142721.P2944477967210625574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + (2 - A153152 n + (n : ℤ))

end

end A142721.P2944477967210625574

/-! ## A142721.P2494359113657967244

`∑[2/a(n-1)]-A053641(n+1)` with `a(0)=1`
-/

namespace A142721.P2494359113657967244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A053641 (n + 1) : ℚ)

end

end A142721.P2494359113657967244

/-! ## A142721.P7513385637170145882

`∑[(1-a(n-1))*A014963(2*(n+1))]` with `a(0)=0`
-/

namespace A142721.P7513385637170145882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 - f1 (n - 1)) * A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142721.P7513385637170145882

/-!
# A142722: a(0)=a(1)=1 and a(n) = -(2*n-1)*a(n-1) + a(n-2) for n>=2.

The programs for A142722, the canonical program `A142722.P13239244906936244058` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142722 has offset 0).

The definition of A142722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-(2*n-1)*a(n-1)+a(n-2)` (program `A142722.P13239244906936244058`, by `A142722.P13239244906936244058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142722.P13239244906936244058

`-(2*n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142722

/-- `-(2*n-1)*a(n-1)+a(n-2)` -/
def P13239244906936244058.Spec : Prop :=
  ∀ n, P13239244906936244058.a n = A142722 n

theorem P13239244906936244058.correct : P13239244906936244058.Spec := by
  intro n
  simp only [A142722]

end A142722

/-! ## A142722.P11227525090451073618

`∏[1/a(n-1)+1-2*n]` with `a(0)=1, a(1)=1`
-/

namespace A142722.P11227525090451073618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 / f1 (n - 1) + 1 - (2 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A142722.P11227525090451073618

namespace A142722

/-- `∏[1/a(n-1)+1-2*n]` -/
def P11227525090451073618.Spec : Prop :=
  ∀ n, P11227525090451073618.a n = (A142722 n : ℚ)

end A142722

/-! ## A142722.P2151201323414045720

`a(n-2)+(1-2*n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A142722.P2151201323414045720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (1 - (2 * n : ℤ)) * a (n - 1)

end

end A142722.P2151201323414045720

namespace A142722

/-- `a(n-2)+(1-2*n)*a(n-1)` -/
def P2151201323414045720.Spec : Prop :=
  ∀ n, P2151201323414045720.a n = A142722 n

end A142722

/-! ## A142722.P13728957219564843416

`a(n-2)-a(n-1)*(2*n-1)` with `a(0)=1, a(1)=1`
-/

namespace A142722.P13728957219564843416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - a (n - 1) * ((2 * n : ℤ) - 1)

end

end A142722.P13728957219564843416

namespace A142722

/-- `a(n-2)-a(n-1)*(2*n-1)` -/
def P13728957219564843416.Spec : Prop :=
  ∀ n, P13728957219564843416.a n = A142722 n

end A142722

/-!
# A142724: Irregular triangle read by rows: row n gives coefficients in expansion of Product_{k=1..n} (1 + x^(2*k + 1)) for n >= 0.

The programs for A142724, there is no canonical definition to state claims against.
-/

/-! ## A142724.P14216996599490330607

`A280711(A273903(n+3))`
-/

namespace A142724.P14216996599490330607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280711 (A273903 (n + 3)).toNat

end

end A142724.P14216996599490330607

/-! ## A142724.P6478422877123790710

`A284527(eq[A284500(n+2), A284504(n)])`
-/

namespace A142724.P6478422877123790710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284500 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284527 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A142724.P6478422877123790710

/-! ## A142724.P15623679754948941561

`A110471(lt[A110514(n), A110503(n)]-1)`
-/

namespace A142724.P15623679754948941561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110471 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 1)

end

end A142724.P15623679754948941561

/-! ## A142724.P3825406886665904582

`A110471(lt[A110514(n+1), A110503(n+1)])`
-/

namespace A142724.P3825406886665904582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110471 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A142724.P3825406886665904582

/-! ## A142724.P5325640769542212902

`A189301(A257212(4*(n+4))+∑[round(sqrt(2*n))]+1)`
-/

namespace A142724.P5325640769542212902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189301 (A257212 (4 * (n + 4)) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A142724.P5325640769542212902

/-!
# A142727: For definition see Comments lines.

The programs for A142727, there is no canonical definition to state claims against.
-/

/-! ## A142727.P16497092469242857647

`A277147(A011782(n))+A188301(n+1)`
-/

namespace A142727.P16497092469242857647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277147 (A011782 n).toNat + A188301 (n + 1)

end

end A142727.P16497092469242857647

/-! ## A142727.P9521608700676418678

`A322794(A295379(n+1))+A007095(n)`
-/

namespace A142727.P9521608700676418678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322794 (A295379 (n + 1)).toNat + A007095 n

end

end A142727.P9521608700676418678

/-! ## A142727.P16301941365674378232

`A188301(n+1)+A030190(A188311(n+1))`
-/

namespace A142727.P16301941365674378232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188301 (n + 1) + A030190 (A188311 (n + 1)).toNat

end

end A142727.P16301941365674378232

/-! ## A142727.P10463438026114016010

`A263428(A230694(n+1))+A052382(n+1)`
-/

namespace A142727.P10463438026114016010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263428 (A230694 (n + 1)).toNat + A052382 (n + 1)

end

end A142727.P10463438026114016010

/-!
# A142729: Primes congruent to 2 mod 59.

The programs for A142729, the canonical program `A142729.P4999326252629130332` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142729 has offset 1).

The definition of A142729 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142729.anchor (n : ℕ) (hn : 1 ≤ n) : A142729 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 2) (n - 1) : ℤ)` in `Proof.A142.A142729`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142729.P4999326252629130332

`p?[59*n+2]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142729

/-- `p?[59*n+2]` -/
def P4999326252629130332.Spec : Prop :=
  ∀ n, (P4999326252629130332.a n : ℤ) = A142729 (n + 1)

theorem P4999326252629130332.correct : P4999326252629130332.Spec := by
  intro n
  simp only [A142729, Nat.add_sub_cancel]

end A142729

/-! ## A142729.P4514071651557310230

`record[A001414(59*n+2)]`
-/

namespace A142729.P4514071651557310230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (59 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142729.P4514071651557310230

namespace A142729

/-- `record[A001414(59*n+2)]` -/
def P4514071651557310230.Spec : Prop :=
  ∀ n, P4514071651557310230.a n = A142729 (n + 1)

end A142729

/-! ## A142729.P3683580507807669257

`record[A006530(59*n+2)]`
-/

namespace A142729.P3683580507807669257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (59 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142729.P3683580507807669257

namespace A142729

/-- `record[A006530(59*n+2)]` -/
def P3683580507807669257.Spec : Prop :=
  ∀ n, P3683580507807669257.a n = A142729 (n + 1)

end A142729

/-! ## A142729.P17574097631792955078

`record[A008472(59*n+2)]`
-/

namespace A142729.P17574097631792955078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (59 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142729.P17574097631792955078

namespace A142729

/-- `record[A008472(59*n+2)]` -/
def P17574097631792955078.Spec : Prop :=
  ∀ n, P17574097631792955078.a n = A142729 (n + 1)

end A142729

/-! ## A142729.P734586375607405516

`record[A020639(59*n+2)]`
-/

namespace A142729.P734586375607405516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (59 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142729.P734586375607405516

namespace A142729

/-- `record[A020639(59*n+2)]` -/
def P734586375607405516.Spec : Prop :=
  ∀ n, P734586375607405516.a n = A142729 (n + 1)

end A142729

/-!
# A142730: Primes congruent to 3 mod 59.

The programs for A142730, the canonical program `A142730.P2012576673298323486` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142730 has offset 1).

The definition of A142730 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142730.anchor (n : ℕ) (hn : 1 ≤ n) : A142730 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 3) (n - 1) : ℤ)` in `Proof.A142.A142730`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142730.P2012576673298323486

`p?[59*n+3]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142730

/-- `p?[59*n+3]` -/
def P2012576673298323486.Spec : Prop :=
  ∀ n, (P2012576673298323486.a n : ℤ) = A142730 (n + 1)

theorem P2012576673298323486.correct : P2012576673298323486.Spec := by
  intro n
  simp only [A142730, Nat.add_sub_cancel]

end A142730

/-! ## A142730.P14201657514947381241

`or(1, p?[A139264(n+1)-A017437(n)])`
-/

namespace A142730.P14201657514947381241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142730.P14201657514947381241

namespace A142730

/-- `or(1, p?[A139264(n+1)-A017437(n)])` -/
def P14201657514947381241.Spec : Prop :=
  ∀ n, P14201657514947381241.a n = A142730 (n + 1)

end A142730

/-! ## A142730.P6502360895807386525

`p?[A139264(n+1)-A017437(n)]%A017451(n)`
-/

namespace A142730.P6502360895807386525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017451 n)

end

end A142730.P6502360895807386525

namespace A142730

/-- `p?[A139264(n+1)-A017437(n)]%A017451(n)` -/
def P6502360895807386525.Spec : Prop :=
  ∀ n, P6502360895807386525.a n = A142730 (n + 1)

end A142730

/-! ## A142730.P2334422728698174905

`p?[A139264(n+1)-A017437(n)]/A033999(n)²`
-/

namespace A142730.P2334422728698174905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017437 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A142730.P2334422728698174905

namespace A142730

/-- `p?[A139264(n+1)-A017437(n)]/A033999(n)²` -/
def P2334422728698174905.Spec : Prop :=
  ∀ n, P2334422728698174905.a n = (A142730 (n + 1) : ℚ)

end A142730

/-! ## A142730.P4462473936290251958

`A000027(p?[A139264(n+1)-A017437(n)])`
-/

namespace A142730.P4462473936290251958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142730.P4462473936290251958

namespace A142730

/-- `A000027(p?[A139264(n+1)-A017437(n)])` -/
def P4462473936290251958.Spec : Prop :=
  ∀ n, P4462473936290251958.a n = A142730 (n + 1)

end A142730

/-! ## A142730.P10837686261888624895

`A000265(p?[A139264(n+1)-A017437(n)])`
-/

namespace A142730.P10837686261888624895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142730.P10837686261888624895

namespace A142730

/-- `A000265(p?[A139264(n+1)-A017437(n)])` -/
def P10837686261888624895.Spec : Prop :=
  ∀ n, P10837686261888624895.a n = A142730 (n + 1)

end A142730

/-! ## A142730.P5767906845343815979

`A007947(p?[A139264(n+1)-A017437(n)])`
-/

namespace A142730.P5767906845343815979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142730.P5767906845343815979

namespace A142730

/-- `A007947(p?[A139264(n+1)-A017437(n)])` -/
def P5767906845343815979.Spec : Prop :=
  ∀ n, P5767906845343815979.a n = A142730 (n + 1)

end A142730

/-! ## A142730.P12500955339675678539

`A000265(p?[A139222(n+1)-A026741(n)])`
-/

namespace A142730.P12500955339675678539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142730.P12500955339675678539

namespace A142730

/-- `A000265(p?[A139222(n+1)-A026741(n)])` -/
def P12500955339675678539.Spec : Prop :=
  ∀ n, P12500955339675678539.a n = A142730 (n + 1)

end A142730

/-! ## A142730.P12958916244099330290

`A001414(p?[A139222(n+1)-A026741(n)])`
-/

namespace A142730.P12958916244099330290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142730.P12958916244099330290

namespace A142730

/-- `A001414(p?[A139222(n+1)-A026741(n)])` -/
def P12958916244099330290.Spec : Prop :=
  ∀ n, P12958916244099330290.a n = A142730 (n + 1)

end A142730

/-! ## A142730.P12673560157626168909

`A008472(p?[A139222(n+1)-A026741(n)])`
-/

namespace A142730.P12673560157626168909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139222 (n + 1) - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142730.P12673560157626168909

namespace A142730

/-- `A008472(p?[A139222(n+1)-A026741(n)])` -/
def P12673560157626168909.Spec : Prop :=
  ∀ n, P12673560157626168909.a n = A142730 (n + 1)

end A142730

/-!
# A142731: Primes congruent to 4 mod 59.

The programs for A142731, the canonical program `A142731.P15418768050750891547` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142731 has offset 1).

The definition of A142731 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142731.anchor (n : ℕ) (hn : 1 ≤ n) : A142731 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 4) (n - 1) : ℤ)` in `Proof.A142.A142731`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142731.P15418768050750891547

`p?[59*n+4]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142731

/-- `p?[59*n+4]` -/
def P15418768050750891547.Spec : Prop :=
  ∀ n, (P15418768050750891547.a n : ℤ) = A142731 (n + 1)

theorem P15418768050750891547.correct : P15418768050750891547.Spec := by
  intro n
  simp only [A142731, Nat.add_sub_cancel]

end A142731

/-! ## A142731.P2736787579844162794

`or(1, p?[A248572(n)+A139222(n+1)])`
-/

namespace A142731.P2736787579844162794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142731.P2736787579844162794

namespace A142731

/-- `or(1, p?[A248572(n)+A139222(n+1)])` -/
def P2736787579844162794.Spec : Prop :=
  ∀ n, P2736787579844162794.a n = A142731 (n + 1)

end A142731

/-! ## A142731.P15558260037164192286

`p?[A248572(n)+A139222(n+1)]%A000584(n+6)`
-/

namespace A142731.P15558260037164192286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000584 (n + 6))

end

end A142731.P15558260037164192286

namespace A142731

/-- `p?[A248572(n)+A139222(n+1)]%A000584(n+6)` -/
def P15558260037164192286.Spec : Prop :=
  ∀ n, P15558260037164192286.a n = A142731 (n + 1)

end A142731

/-! ## A142731.P9264788819470322247

`A000027(p?[A248572(n)+A139222(n+1)])`
-/

namespace A142731.P9264788819470322247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142731.P9264788819470322247

namespace A142731

/-- `A000027(p?[A248572(n)+A139222(n+1)])` -/
def P9264788819470322247.Spec : Prop :=
  ∀ n, P9264788819470322247.a n = A142731 (n + 1)

end A142731

/-! ## A142731.P17842202670807501313

`A000027(p?[A139264(n+1)-A017425(n)])`
-/

namespace A142731.P17842202670807501313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142731.P17842202670807501313

namespace A142731

/-- `A000027(p?[A139264(n+1)-A017425(n)])` -/
def P17842202670807501313.Spec : Prop :=
  ∀ n, P17842202670807501313.a n = A142731 (n + 1)

end A142731

/-! ## A142731.P14503453956803506573

`A000265(p?[A248572(n)+A139222(n+1)])`
-/

namespace A142731.P14503453956803506573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142731.P14503453956803506573

namespace A142731

/-- `A000265(p?[A248572(n)+A139222(n+1)])` -/
def P14503453956803506573.Spec : Prop :=
  ∀ n, P14503453956803506573.a n = A142731 (n + 1)

end A142731

/-! ## A142731.P4961416741649632496

`A008475(p?[A139264(n+1)-A017425(n)])`
-/

namespace A142731.P4961416741649632496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142731.P4961416741649632496

namespace A142731

/-- `A008475(p?[A139264(n+1)-A017425(n)])` -/
def P4961416741649632496.Spec : Prop :=
  ∀ n, P4961416741649632496.a n = A142731 (n + 1)

end A142731

/-! ## A142731.P13452760525368428544

`record[A006530(A248572(n+1)+A128470(n+5))]`
-/

namespace A142731.P13452760525368428544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (n + 1) + A128470 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142731.P13452760525368428544

namespace A142731

/-- `record[A006530(A248572(n+1)+A128470(n+5))]` -/
def P13452760525368428544.Spec : Prop :=
  ∀ n, P13452760525368428544.a n = A142731 (n + 1)

end A142731

/-!
# A142732: Primes congruent to 5 mod 59.

The programs for A142732, the canonical program `A142732.P14396978986747985854` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142732 has offset 1).

The definition of A142732 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142732.anchor (n : ℕ) (hn : 1 ≤ n) : A142732 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 5) (n - 1) : ℤ)` in `Proof.A142.A142732`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142732.P14396978986747985854

`p?[59*n+5]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142732

/-- `p?[59*n+5]` -/
def P14396978986747985854.Spec : Prop :=
  ∀ n, (P14396978986747985854.a n : ℤ) = A142732 (n + 1)

theorem P14396978986747985854.correct : P14396978986747985854.Spec := by
  intro n
  simp only [A142732, Nat.add_sub_cancel]

end A142732

/-! ## A142732.P11763966469262316269

`or(1, p?[A139264(n+1)-A017413(n)])`
-/

namespace A142732.P11763966469262316269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142732.P11763966469262316269

namespace A142732

/-- `or(1, p?[A139264(n+1)-A017413(n)])` -/
def P11763966469262316269.Spec : Prop :=
  ∀ n, P11763966469262316269.a n = A142732 (n + 1)

end A142732

/-! ## A142732.P7271241541075851246

`A000007(n+1)+p?[A139613(n)-A144619(n)]`
-/

namespace A142732.P7271241541075851246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n - A144619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142732.P7271241541075851246

namespace A142732

/-- `A000007(n+1)+p?[A139613(n)-A144619(n)]` -/
def P7271241541075851246.Spec : Prop :=
  ∀ n, P7271241541075851246.a n = A142732 (n + 1)

end A142732

/-! ## A142732.P6682918239066750140

`A000027(p?[A139613(n)-A144619(n)])`
-/

namespace A142732.P6682918239066750140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n - A144619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142732.P6682918239066750140

namespace A142732

/-- `A000027(p?[A139613(n)-A144619(n)])` -/
def P6682918239066750140.Spec : Prop :=
  ∀ n, P6682918239066750140.a n = A142732 (n + 1)

end A142732

/-! ## A142732.P11658290291851771078

`record[A020639(59*n+5)]`
-/

namespace A142732.P11658290291851771078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (59 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142732.P11658290291851771078

namespace A142732

/-- `record[A020639(59*n+5)]` -/
def P11658290291851771078.Spec : Prop :=
  ∀ n, P11658290291851771078.a n = A142732 (n + 1)

end A142732

/-!
# A142733: Primes congruent to 6 mod 59.

The programs for A142733, the canonical program `A142733.P9486175445827060876` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142733 has offset 1).

The definition of A142733 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142733.anchor (n : ℕ) (hn : 1 ≤ n) : A142733 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 6) (n - 1) : ℤ)` in `Proof.A142.A142733`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142733.P9486175445827060876

`p?[59*n+6]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142733

/-- `p?[59*n+6]` -/
def P9486175445827060876.Spec : Prop :=
  ∀ n, (P9486175445827060876.a n : ℤ) = A142733 (n + 1)

theorem P9486175445827060876.correct : P9486175445827060876.Spec := by
  intro n
  simp only [A142733, Nat.add_sub_cancel]

end A142733

/-! ## A142733.P15242845300303386652

`or(1, p?[A139264(n+1)-A017401(n)])`
-/

namespace A142733.P15242845300303386652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142733.P15242845300303386652

namespace A142733

/-- `or(1, p?[A139264(n+1)-A017401(n)])` -/
def P15242845300303386652.Spec : Prop :=
  ∀ n, P15242845300303386652.a n = A142733 (n + 1)

end A142733

/-! ## A142733.P10114055567078078999

`p?[A139264(n+1)-A017401(n)]%A017511(n)`
-/

namespace A142733.P10114055567078078999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017511 n)

end

end A142733.P10114055567078078999

namespace A142733

/-- `p?[A139264(n+1)-A017401(n)]%A017511(n)` -/
def P10114055567078078999.Spec : Prop :=
  ∀ n, P10114055567078078999.a n = A142733 (n + 1)

end A142733

/-! ## A142733.P3289113491936505620

`A000027(p?[A139264(n+1)-A017401(n)])`
-/

namespace A142733.P3289113491936505620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142733.P3289113491936505620

namespace A142733

/-- `A000027(p?[A139264(n+1)-A017401(n)])` -/
def P3289113491936505620.Spec : Prop :=
  ∀ n, P3289113491936505620.a n = A142733 (n + 1)

end A142733

/-! ## A142733.P18091375378243774659

`A000027(p?[A139249(n+1)-A001281(n)])`
-/

namespace A142733.P18091375378243774659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) - A001281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142733.P18091375378243774659

namespace A142733

/-- `A000027(p?[A139249(n+1)-A001281(n)])` -/
def P18091375378243774659.Spec : Prop :=
  ∀ n, P18091375378243774659.a n = A142733 (n + 1)

end A142733

/-! ## A142733.P9850702128131024532

`A000265(p?[A139264(n+1)-A017401(n)])`
-/

namespace A142733.P9850702128131024532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142733.P9850702128131024532

namespace A142733

/-- `A000265(p?[A139264(n+1)-A017401(n)])` -/
def P9850702128131024532.Spec : Prop :=
  ∀ n, P9850702128131024532.a n = A142733 (n + 1)

end A142733

/-! ## A142733.P16333099460443087270

`A007947(p?[A139264(n+1)-A017401(n)])`
-/

namespace A142733.P16333099460443087270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142733.P16333099460443087270

namespace A142733

/-- `A007947(p?[A139264(n+1)-A017401(n)])` -/
def P16333099460443087270.Spec : Prop :=
  ∀ n, P16333099460443087270.a n = A142733 (n + 1)

end A142733

/-!
# A142734: Primes congruent to 7 mod 59.

The programs for A142734, the canonical program `A142734.P12788562841240082690` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142734 has offset 1).

The definition of A142734 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142734.anchor (n : ℕ) (hn : 1 ≤ n) : A142734 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 7) (n - 1) : ℤ)` in `Proof.A142.A142734`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142734.P12788562841240082690

`p?[59*n+7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142734

/-- `p?[59*n+7]` -/
def P12788562841240082690.Spec : Prop :=
  ∀ n, (P12788562841240082690.a n : ℤ) = A142734 (n + 1)

theorem P12788562841240082690.correct : P12788562841240082690.Spec := by
  intro n
  simp only [A142734, Nat.add_sub_cancel]

end A142734

/-! ## A142734.P5697242968377142955

`or(1, p?[A248572(n)+A139249(n+1)])`
-/

namespace A142734.P5697242968377142955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142734.P5697242968377142955

namespace A142734

/-- `or(1, p?[A248572(n)+A139249(n+1)])` -/
def P5697242968377142955.Spec : Prop :=
  ∀ n, P5697242968377142955.a n = A142734 (n + 1)

end A142734

/-! ## A142734.P17416565617374931003

`p?[A248572(n)+A139249(n+1)]%A017378(n)²`
-/

namespace A142734.P17416565617374931003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017378 n ^ 2)

end

end A142734.P17416565617374931003

namespace A142734

/-- `p?[A248572(n)+A139249(n+1)]%A017378(n)²` -/
def P17416565617374931003.Spec : Prop :=
  ∀ n, P17416565617374931003.a n = A142734 (n + 1)

end A142734

/-! ## A142734.P12736799111642749363

`A000007(n+1)+p?[A248572(n)+A139249(n+1)]`
-/

namespace A142734.P12736799111642749363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142734.P12736799111642749363

namespace A142734

/-- `A000007(n+1)+p?[A248572(n)+A139249(n+1)]` -/
def P12736799111642749363.Spec : Prop :=
  ∀ n, P12736799111642749363.a n = A142734 (n + 1)

end A142734

/-! ## A142734.P6413780108834696703

`A000027(p?[A248572(n)+A139249(n+1)])`
-/

namespace A142734.P6413780108834696703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142734.P6413780108834696703

namespace A142734

/-- `A000027(p?[A248572(n)+A139249(n+1)])` -/
def P6413780108834696703.Spec : Prop :=
  ∀ n, P6413780108834696703.a n = A142734 (n + 1)

end A142734

/-! ## A142734.P5751366024904965691

`A000265(p?[A248572(n)+A139249(n+1)])`
-/

namespace A142734.P5751366024904965691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142734.P5751366024904965691

namespace A142734

/-- `A000265(p?[A248572(n)+A139249(n+1)])` -/
def P5751366024904965691.Spec : Prop :=
  ∀ n, P5751366024904965691.a n = A142734 (n + 1)

end A142734

/-! ## A142734.P18403063150467467833

`A001414(p?[A248572(n)+A139249(n+1)])`
-/

namespace A142734.P18403063150467467833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142734.P18403063150467467833

namespace A142734

/-- `A001414(p?[A248572(n)+A139249(n+1)])` -/
def P18403063150467467833.Spec : Prop :=
  ∀ n, P18403063150467467833.a n = A142734 (n + 1)

end A142734

/-! ## A142734.P3038540420189149291

`A007913(p?[A248572(n)+A139249(n+1)])`
-/

namespace A142734.P3038540420189149291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A139249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142734.P3038540420189149291

namespace A142734

/-- `A007913(p?[A248572(n)+A139249(n+1)])` -/
def P3038540420189149291.Spec : Prop :=
  ∀ n, P3038540420189149291.a n = A142734 (n + 1)

end A142734

/-!
# A142735: Primes congruent to 8 mod 59.

The programs for A142735, the canonical program `A142735.P17921475589984968636` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142735 has offset 1).

The definition of A142735 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142735.anchor (n : ℕ) (hn : 1 ≤ n) : A142735 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 8) (n - 1) : ℤ)` in `Proof.A142.A142735`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142735.P17921475589984968636

`p?[59*n+8]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142735

/-- `p?[59*n+8]` -/
def P17921475589984968636.Spec : Prop :=
  ∀ n, (P17921475589984968636.a n : ℤ) = A142735 (n + 1)

theorem P17921475589984968636.correct : P17921475589984968636.Spec := by
  intro n
  simp only [A142735, Nat.add_sub_cancel]

end A142735

/-! ## A142735.P13923923541822935118

`or(1, p?[A139608(n)+A135631(n)])`
-/

namespace A142735.P13923923541822935118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142735.P13923923541822935118

namespace A142735

/-- `or(1, p?[A139608(n)+A135631(n)])` -/
def P13923923541822935118.Spec : Prop :=
  ∀ n, P13923923541822935118.a n = A142735 (n + 1)

end A142735

/-! ## A142735.P13949268280879888931

`p?[A139608(n)+A135631(n)]/A020985(n)²`
-/

namespace A142735.P13949268280879888931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A135631 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A142735.P13949268280879888931

namespace A142735

/-- `p?[A139608(n)+A135631(n)]/A020985(n)²` -/
def P13949268280879888931.Spec : Prop :=
  ∀ n, P13949268280879888931.a n = (A142735 (n + 1) : ℚ)

end A142735

/-! ## A142735.P3686236645086083702

`p?[A139608(n)+A135631(n)]%A139609(n)²`
-/

namespace A142735.P3686236645086083702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A139609 n ^ 2)

end

end A142735.P3686236645086083702

namespace A142735

/-- `p?[A139608(n)+A135631(n)]%A139609(n)²` -/
def P3686236645086083702.Spec : Prop :=
  ∀ n, P3686236645086083702.a n = A142735 (n + 1)

end A142735

/-! ## A142735.P3766765301274890761

`A000007(n+1)+p?[A139608(n)+A135631(n)]`
-/

namespace A142735.P3766765301274890761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142735.P3766765301274890761

namespace A142735

/-- `A000007(n+1)+p?[A139608(n)+A135631(n)]` -/
def P3766765301274890761.Spec : Prop :=
  ∀ n, P3766765301274890761.a n = A142735 (n + 1)

end A142735

/-! ## A142735.P14206508969140456625

`A000027(p?[A139608(n)+A135631(n)])`
-/

namespace A142735.P14206508969140456625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142735.P14206508969140456625

namespace A142735

/-- `A000027(p?[A139608(n)+A135631(n)])` -/
def P14206508969140456625.Spec : Prop :=
  ∀ n, P14206508969140456625.a n = A142735 (n + 1)

end A142735

/-! ## A142735.P1175722541510898949

`A000265(p?[A139608(n)+A135631(n)])`
-/

namespace A142735.P1175722541510898949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142735.P1175722541510898949

namespace A142735

/-- `A000265(p?[A139608(n)+A135631(n)])` -/
def P1175722541510898949.Spec : Prop :=
  ∀ n, P1175722541510898949.a n = A142735 (n + 1)

end A142735

/-! ## A142735.P13305771411260325909

`A001414(p?[A139608(n)+A135631(n)])`
-/

namespace A142735.P13305771411260325909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142735.P13305771411260325909

namespace A142735

/-- `A001414(p?[A139608(n)+A135631(n)])` -/
def P13305771411260325909.Spec : Prop :=
  ∀ n, P13305771411260325909.a n = A142735 (n + 1)

end A142735

/-! ## A142735.P3191555101448581200

`A008472(p?[A139608(n)+A135631(n)])`
-/

namespace A142735.P3191555101448581200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A135631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142735.P3191555101448581200

namespace A142735

/-- `A008472(p?[A139608(n)+A135631(n)])` -/
def P3191555101448581200.Spec : Prop :=
  ∀ n, P3191555101448581200.a n = A142735 (n + 1)

end A142735

/-! ## A142735.P7663745219543554286

`record[A020639(2*n+A157336(n+1)-A017041(n))]`
-/

namespace A142735.P7663745219543554286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((2 * n : ℤ) + (A157336 (n + 1) - A017041 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142735.P7663745219543554286

namespace A142735

/-- `record[A020639(2*n+A157336(n+1)-A017041(n))]` -/
def P7663745219543554286.Spec : Prop :=
  ∀ n, P7663745219543554286.a n = A142735 (n + 1)

end A142735

/-!
# A142736: Primes congruent to 9 mod 59.

The programs for A142736, the canonical program `A142736.P12260663460807830888` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142736 has offset 1).

The definition of A142736 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142736.anchor (n : ℕ) (hn : 1 ≤ n) : A142736 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 9) (n - 1) : ℤ)` in `Proof.A142.A142736`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142736.P12260663460807830888

`p?[59*n+9]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142736

/-- `p?[59*n+9]` -/
def P12260663460807830888.Spec : Prop :=
  ∀ n, (P12260663460807830888.a n : ℤ) = A142736 (n + 1)

theorem P12260663460807830888.correct : P12260663460807830888.Spec := by
  intro n
  simp only [A142736, Nat.add_sub_cancel]

end A142736

/-! ## A142736.P12934330033898628198

`or(1, p?[A139280(n+1)+A135628(n)])`
-/

namespace A142736.P12934330033898628198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) + A135628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142736.P12934330033898628198

namespace A142736

/-- `or(1, p?[A139280(n+1)+A135628(n)])` -/
def P12934330033898628198.Spec : Prop :=
  ∀ n, P12934330033898628198.a n = A142736 (n + 1)

end A142736

/-! ## A142736.P5448585720276419286

`p?[A139280(n+1)+A135628(n)]%A083408(n+1)`
-/

namespace A142736.P5448585720276419286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) + A135628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A083408 (n + 1))

end

end A142736.P5448585720276419286

namespace A142736

/-- `p?[A139280(n+1)+A135628(n)]%A083408(n+1)` -/
def P5448585720276419286.Spec : Prop :=
  ∀ n, P5448585720276419286.a n = A142736 (n + 1)

end A142736

/-! ## A142736.P6869110311022194076

`A000027(p?[A139609(n)+A008605(n)])`
-/

namespace A142736.P6869110311022194076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142736.P6869110311022194076

namespace A142736

/-- `A000027(p?[A139609(n)+A008605(n)])` -/
def P6869110311022194076.Spec : Prop :=
  ∀ n, P6869110311022194076.a n = A142736 (n + 1)

end A142736

/-! ## A142736.P17243411572950726691

`A000027(p?[A053742(n+2)+A017185(n)])`
-/

namespace A142736.P17243411572950726691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 (n + 2) + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142736.P17243411572950726691

namespace A142736

/-- `A000027(p?[A053742(n+2)+A017185(n)])` -/
def P17243411572950726691.Spec : Prop :=
  ∀ n, P17243411572950726691.a n = A142736 (n + 1)

end A142736

/-! ## A142736.P4160642366987633625

`record[A020639(A139611(n+2)+4*n+6)]`
-/

namespace A142736.P4160642366987633625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 (n + 2) + (4 * n + 6 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142736.P4160642366987633625

namespace A142736

/-- `record[A020639(A139611(n+2)+4*n+6)]` -/
def P4160642366987633625.Spec : Prop :=
  ∀ n, P4160642366987633625.a n = A142736 (n + 1)

end A142736

/-! ## A142736.P8914330070777348605

`A000265(p?[A139280(n+1)+A135628(n)])`
-/

namespace A142736.P8914330070777348605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) + A135628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142736.P8914330070777348605

namespace A142736

/-- `A000265(p?[A139280(n+1)+A135628(n)])` -/
def P8914330070777348605.Spec : Prop :=
  ∀ n, P8914330070777348605.a n = A142736 (n + 1)

end A142736

/-! ## A142736.P16274289975926596908

`A007913(p?[A139280(n+1)+A135628(n)])`
-/

namespace A142736.P16274289975926596908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) + A135628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142736.P16274289975926596908

namespace A142736

/-- `A007913(p?[A139280(n+1)+A135628(n)])` -/
def P16274289975926596908.Spec : Prop :=
  ∀ n, P16274289975926596908.a n = A142736 (n + 1)

end A142736

/-!
# A142737: Primes congruent to 10 mod 59.

The programs for A142737, the canonical program `A142737.P1306565779540768433` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142737 has offset 1).

The definition of A142737 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142737.anchor (n : ℕ) (hn : 1 ≤ n) : A142737 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 10) (n - 1) : ℤ)` in `Proof.A142.A142737`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142737.P1306565779540768433

`p?[59*n+10]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142737

/-- `p?[59*n+10]` -/
def P1306565779540768433.Spec : Prop :=
  ∀ n, (P1306565779540768433.a n : ℤ) = A142737 (n + 1)

theorem P1306565779540768433.correct : P1306565779540768433.Spec := by
  intro n
  simp only [A142737, Nat.add_sub_cancel]

end A142737

/-! ## A142737.P6324470607329354541

`or(1, p?[A139610(n)+A008596(n)])`
-/

namespace A142737.P6324470607329354541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142737.P6324470607329354541

namespace A142737

/-- `or(1, p?[A139610(n)+A008596(n)])` -/
def P6324470607329354541.Spec : Prop :=
  ∀ n, P6324470607329354541.a n = A142737 (n + 1)

end A142737

/-! ## A142737.P3710933240661121762

`or(1, p?[A215148(n)+A139609(n)])`
-/

namespace A142737.P3710933240661121762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A139609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142737.P3710933240661121762

namespace A142737

/-- `or(1, p?[A215148(n)+A139609(n)])` -/
def P3710933240661121762.Spec : Prop :=
  ∀ n, P3710933240661121762.a n = A142737 (n + 1)

end A142737

/-! ## A142737.P3813869533209839304

`A000007(n+1)+p?[A139610(n)+A008596(n)]`
-/

namespace A142737.P3813869533209839304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142737.P3813869533209839304

namespace A142737

/-- `A000007(n+1)+p?[A139610(n)+A008596(n)]` -/
def P3813869533209839304.Spec : Prop :=
  ∀ n, P3813869533209839304.a n = A142737 (n + 1)

end A142737

/-! ## A142737.P7396890847234064205

`p?[A139610(n)+A008596(n)]%A005238(n+1)²`
-/

namespace A142737.P7396890847234064205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A005238 (n + 1) ^ 2)

end

end A142737.P7396890847234064205

namespace A142737

/-- `p?[A139610(n)+A008596(n)]%A005238(n+1)²` -/
def P7396890847234064205.Spec : Prop :=
  ∀ n, P7396890847234064205.a n = A142737 (n + 1)

end A142737

/-! ## A142737.P6913914169025477256

`A000027(p?[A139610(n)+A008596(n)])`
-/

namespace A142737.P6913914169025477256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142737.P6913914169025477256

namespace A142737

/-- `A000027(p?[A139610(n)+A008596(n)])` -/
def P6913914169025477256.Spec : Prop :=
  ∀ n, P6913914169025477256.a n = A142737 (n + 1)

end A142737

/-! ## A142737.P16393489892641638637

`A000027(p?[A215148(n)+A139609(n)])`
-/

namespace A142737.P16393489892641638637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A139609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142737.P16393489892641638637

namespace A142737

/-- `A000027(p?[A215148(n)+A139609(n)])` -/
def P16393489892641638637.Spec : Prop :=
  ∀ n, P16393489892641638637.a n = A142737 (n + 1)

end A142737

/-! ## A142737.P2968160379517645632

`A000265(p?[A139610(n)+A008596(n)])`
-/

namespace A142737.P2968160379517645632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142737.P2968160379517645632

namespace A142737

/-- `A000265(p?[A139610(n)+A008596(n)])` -/
def P2968160379517645632.Spec : Prop :=
  ∀ n, P2968160379517645632.a n = A142737 (n + 1)

end A142737

/-! ## A142737.P577978901995907180

`A007947(p?[A139610(n)+A008596(n)])`
-/

namespace A142737.P577978901995907180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142737.P577978901995907180

namespace A142737

/-- `A007947(p?[A139610(n)+A008596(n)])` -/
def P577978901995907180.Spec : Prop :=
  ∀ n, P577978901995907180.a n = A142737 (n + 1)

end A142737

/-! ## A142737.P12182620481015400482

`A008472(p?[A139610(n)+A008596(n)])`
-/

namespace A142737.P12182620481015400482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142737.P12182620481015400482

namespace A142737

/-- `A008472(p?[A139610(n)+A008596(n)])` -/
def P12182620481015400482.Spec : Prop :=
  ∀ n, P12182620481015400482.a n = A142737 (n + 1)

end A142737

/-! ## A142737.P4393507802409127496

`A000265(p?[A215148(n)+A139609(n)])`
-/

namespace A142737.P4393507802409127496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A139609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142737.P4393507802409127496

namespace A142737

/-- `A000265(p?[A215148(n)+A139609(n)])` -/
def P4393507802409127496.Spec : Prop :=
  ∀ n, P4393507802409127496.a n = A142737 (n + 1)

end A142737

/-! ## A142737.P11759459821551818052

`A008472(p?[A215148(n)+A139609(n)])`
-/

namespace A142737.P11759459821551818052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 n + A139609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142737.P11759459821551818052

namespace A142737

/-- `A008472(p?[A215148(n)+A139609(n)])` -/
def P11759459821551818052.Spec : Prop :=
  ∀ n, P11759459821551818052.a n = A142737 (n + 1)

end A142737

/-!
# A142738: Primes congruent to 11 mod 59.

The programs for A142738, the canonical program `A142738.P9246638459395651207` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142738 has offset 1).

The definition of A142738 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142738.anchor (n : ℕ) (hn : 1 ≤ n) : A142738 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 11) (n - 1) : ℤ)` in `Proof.A142.A142738`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142738.P9246638459395651207

`p?[59*n+11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142738

/-- `p?[59*n+11]` -/
def P9246638459395651207.Spec : Prop :=
  ∀ n, (P9246638459395651207.a n : ℤ) = A142738 (n + 1)

theorem P9246638459395651207.correct : P9246638459395651207.Spec := by
  intro n
  simp only [A142738, Nat.add_sub_cancel]

end A142738

/-! ## A142738.P467880733004410400

`p?[A139616(n)-A005408(n)-4]%A325319(n+1)²`
-/

namespace A142738.P467880733004410400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A325319 (n + 1) ^ 2)

end

end A142738.P467880733004410400

namespace A142738

/-- `p?[A139616(n)-A005408(n)-4]%A325319(n+1)²` -/
def P467880733004410400.Spec : Prop :=
  ∀ n, P467880733004410400.a n = A142738 (n + 1)

end A142738

/-! ## A142738.P9596245991349610914

`A000027(p?[A139611(n)+A008586(n)])`
-/

namespace A142738.P9596245991349610914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142738.P9596245991349610914

namespace A142738

/-- `A000027(p?[A139611(n)+A008586(n)])` -/
def P9596245991349610914.Spec : Prop :=
  ∀ n, P9596245991349610914.a n = A142738 (n + 1)

end A142738

/-! ## A142738.P2588974429464066128

`A000027(p?[A139616(n)-A005408(n)-4])`
-/

namespace A142738.P2588974429464066128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142738.P2588974429464066128

namespace A142738

/-- `A000027(p?[A139616(n)-A005408(n)-4])` -/
def P2588974429464066128.Spec : Prop :=
  ∀ n, P2588974429464066128.a n = A142738 (n + 1)

end A142738

/-! ## A142738.P10851416800543782410

`A000265(p?[A139611(n)+A008586(n)])`
-/

namespace A142738.P10851416800543782410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142738.P10851416800543782410

namespace A142738

/-- `A000265(p?[A139611(n)+A008586(n)])` -/
def P10851416800543782410.Spec : Prop :=
  ∀ n, P10851416800543782410.a n = A142738 (n + 1)

end A142738

/-! ## A142738.P4257173688171639369

`A034699(p?[A139611(n)+A008586(n)])`
-/

namespace A142738.P4257173688171639369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142738.P4257173688171639369

namespace A142738

/-- `A034699(p?[A139611(n)+A008586(n)])` -/
def P4257173688171639369.Spec : Prop :=
  ∀ n, P4257173688171639369.a n = A142738 (n + 1)

end A142738

/-!
# A142739: Primes congruent to 12 mod 59.

The programs for A142739, the canonical program `A142739.P18290606999874669249` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142739 has offset 1).

The definition of A142739 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142739.anchor (n : ℕ) (hn : 1 ≤ n) : A142739 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 12) (n - 1) : ℤ)` in `Proof.A142.A142739`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142739.P18290606999874669249

`p?[59*n+12]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142739

/-- `p?[59*n+12]` -/
def P18290606999874669249.Spec : Prop :=
  ∀ n, (P18290606999874669249.a n : ℤ) = A142739 (n + 1)

theorem P18290606999874669249.correct : P18290606999874669249.Spec := by
  intro n
  simp only [A142739, Nat.add_sub_cancel]

end A142739

/-! ## A142739.P14263475972565676310

`p?[A139613(n)-A215144(n)]+A024894(n+1)%2`
-/

namespace A142739.P14263475972565676310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n - A215144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A024894 (n + 1)) 2

end

end A142739.P14263475972565676310

namespace A142739

/-- `p?[A139613(n)-A215144(n)]+A024894(n+1)%2` -/
def P14263475972565676310.Spec : Prop :=
  ∀ n, P14263475972565676310.a n = A142739 (n + 1)

end A142739

/-! ## A142739.P10350567735793046007

`A000027(p?[A139613(n)-A215144(n)])`
-/

namespace A142739.P10350567735793046007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n - A215144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142739.P10350567735793046007

namespace A142739

/-- `A000027(p?[A139613(n)-A215144(n)])` -/
def P10350567735793046007.Spec : Prop :=
  ∀ n, P10350567735793046007.a n = A142739 (n + 1)

end A142739

/-! ## A142739.P18262294631167581585

`A000027(p?[A195140(n)+A154266(n)])`
-/

namespace A142739.P18262294631167581585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n + A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142739.P18262294631167581585

namespace A142739

/-- `A000027(p?[A195140(n)+A154266(n)])` -/
def P18262294631167581585.Spec : Prop :=
  ∀ n, P18262294631167581585.a n = A142739 (n + 1)

end A142739

/-! ## A142739.P16447102946322526706

`A001414(p?[A139613(n)-A215144(n)])`
-/

namespace A142739.P16447102946322526706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n - A215144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142739.P16447102946322526706

namespace A142739

/-- `A001414(p?[A139613(n)-A215144(n)])` -/
def P16447102946322526706.Spec : Prop :=
  ∀ n, P16447102946322526706.a n = A142739 (n + 1)

end A142739

/-! ## A142739.P8861342544638712956

`record[A006530(A139613(n+1)-A215144(n+1))]`
-/

namespace A142739.P8861342544638712956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139613 (n + 1) - A215144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142739.P8861342544638712956

namespace A142739

/-- `record[A006530(A139613(n+1)-A215144(n+1))]` -/
def P8861342544638712956.Spec : Prop :=
  ∀ n, P8861342544638712956.a n = A142739 (n + 1)

end A142739

/-! ## A142739.P2116262134520726614

`record[A020639(A305068(n+1)+A016885(n)+32)]`
-/

namespace A142739.P2116262134520726614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305068 (n + 1) + A016885 n + 32).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142739.P2116262134520726614

namespace A142739

/-- `record[A020639(A305068(n+1)+A016885(n)+32)]` -/
def P2116262134520726614.Spec : Prop :=
  ∀ n, P2116262134520726614.a n = A142739 (n + 1)

end A142739

/-! ## A142739.P3756004414291079584

`A299149(p?[A195140(n)+A154266(n)])`
-/

namespace A142739.P3756004414291079584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n + A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142739.P3756004414291079584

namespace A142739

/-- `A299149(p?[A195140(n)+A154266(n)])` -/
def P3756004414291079584.Spec : Prop :=
  ∀ n, P3756004414291079584.a n = A142739 (n + 1)

end A142739

/-!
# A142740: Primes congruent to 13 mod 59.

The programs for A142740, the canonical program `A142740.P5608827552903211760` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142740 has offset 1).

The definition of A142740 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142740.anchor (n : ℕ) (hn : 1 ≤ n) : A142740 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 13) (n - 1) : ℤ)` in `Proof.A142.A142740`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142740.P5608827552903211760

`p?[59*n+13]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142740

/-- `p?[59*n+13]` -/
def P5608827552903211760.Spec : Prop :=
  ∀ n, (P5608827552903211760.a n : ℤ) = A142740 (n + 1)

theorem P5608827552903211760.correct : P5608827552903211760.Spec := by
  intro n
  simp only [A142740, Nat.add_sub_cancel]

end A142740

/-! ## A142740.P14667106646786764318

`record[A001414(A082369(2*n+1)-n)]`
-/

namespace A142740.P14667106646786764318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A082369 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142740.P14667106646786764318

namespace A142740

/-- `record[A001414(A082369(2*n+1)-n)]` -/
def P14667106646786764318.Spec : Prop :=
  ∀ n, P14667106646786764318.a n = A142740 (n + 1)

end A142740

/-! ## A142740.P14041663734479183695

`record[A006530(A082369(2*n+1)-n)]`
-/

namespace A142740.P14041663734479183695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142740.P14041663734479183695

namespace A142740

/-- `record[A006530(A082369(2*n+1)-n)]` -/
def P14041663734479183695.Spec : Prop :=
  ∀ n, P14041663734479183695.a n = A142740 (n + 1)

end A142740

/-! ## A142740.P1298164560869471610

`record[A020639(A082369(2*n+1)-n)]`
-/

namespace A142740.P1298164560869471610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142740.P1298164560869471610

namespace A142740

/-- `record[A020639(A082369(2*n+1)-n)]` -/
def P1298164560869471610.Spec : Prop :=
  ∀ n, P1298164560869471610.a n = A142740 (n + 1)

end A142740

/-! ## A142740.P9605940138653148724

`record[A020639(A139611(n)+4*n+2)]`
-/

namespace A142740.P9605940138653148724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 n + (4 * n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142740.P9605940138653148724

namespace A142740

/-- `record[A020639(A139611(n)+4*n+2)]` -/
def P9605940138653148724.Spec : Prop :=
  ∀ n, P9605940138653148724.a n = A142740 (n + 1)

end A142740

/-! ## A142740.P12621263217467767392

`record[A020639(A304205(n+1)+A017281(n))]`
-/

namespace A142740.P12621263217467767392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 1) + A017281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142740.P12621263217467767392

namespace A142740

/-- `record[A020639(A304205(n+1)+A017281(n))]` -/
def P12621263217467767392.Spec : Prop :=
  ∀ n, P12621263217467767392.a n = A142740 (n + 1)

end A142740

/-! ## A142740.P10589583043534748672

`A008472(p?[A139611(n)+A123167(n+1)])`
-/

namespace A142740.P10589583043534748672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139611 n + A123167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142740.P10589583043534748672

namespace A142740

/-- `A008472(p?[A139611(n)+A123167(n+1)])` -/
def P10589583043534748672.Spec : Prop :=
  ∀ n, P10589583043534748672.a n = A142740 (n + 1)

end A142740

/-! ## A142740.P3520347449073210990

`record[A006530(A139613(n)-A215144(n)+1)]`
-/

namespace A142740.P3520347449073210990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139613 n - A215144 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142740.P3520347449073210990

namespace A142740

/-- `record[A006530(A139613(n)-A215144(n)+1)]` -/
def P3520347449073210990.Spec : Prop :=
  ∀ n, P3520347449073210990.a n = A142740 (n + 1)

end A142740

/-!
# A142741: Primes congruent to 14 mod 59.

The programs for A142741, the canonical program `A142741.P12670144625039199040` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142741 has offset 1).

The definition of A142741 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142741.anchor (n : ℕ) (hn : 1 ≤ n) : A142741 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 14) (n - 1) : ℤ)` in `Proof.A142.A142741`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142741.P12670144625039199040

`p?[59*n+14]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142741

/-- `p?[59*n+14]` -/
def P12670144625039199040.Spec : Prop :=
  ∀ n, (P12670144625039199040.a n : ℤ) = A142741 (n + 1)

theorem P12670144625039199040.correct : P12670144625039199040.Spec := by
  intro n
  simp only [A142741, Nat.add_sub_cancel]

end A142741

/-! ## A142741.P1263285162453383647

`p?[A304205(n+1)+A017293(n)]%A346358(n+1)`
-/

namespace A142741.P1263285162453383647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A346358 (n + 1))

end

end A142741.P1263285162453383647

namespace A142741

/-- `p?[A304205(n+1)+A017293(n)]%A346358(n+1)` -/
def P1263285162453383647.Spec : Prop :=
  ∀ n, P1263285162453383647.a n = A142741 (n + 1)

end A142741

/-! ## A142741.P5484325187436348906

`p?[A304205(n+1)+A017293(n)]+A052928(n)%2`
-/

namespace A142741.P5484325187436348906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A052928 n) 2

end

end A142741.P5484325187436348906

namespace A142741

/-- `p?[A304205(n+1)+A017293(n)]+A052928(n)%2` -/
def P5484325187436348906.Spec : Prop :=
  ∀ n, P5484325187436348906.a n = A142741 (n + 1)

end A142741

/-! ## A142741.P7058382622249218705

`A000027(p?[A304205(n+1)+A017293(n)])`
-/

namespace A142741.P7058382622249218705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142741.P7058382622249218705

namespace A142741

/-- `A000027(p?[A304205(n+1)+A017293(n)])` -/
def P7058382622249218705.Spec : Prop :=
  ∀ n, P7058382622249218705.a n = A142741 (n + 1)

end A142741

/-! ## A142741.P12012836887989821967

`A000027(p?[A248572(n)+A082369(n+1)])`
-/

namespace A142741.P12012836887989821967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A082369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142741.P12012836887989821967

namespace A142741

/-- `A000027(p?[A248572(n)+A082369(n+1)])` -/
def P12012836887989821967.Spec : Prop :=
  ∀ n, P12012836887989821967.a n = A142741 (n + 1)

end A142741

/-! ## A142741.P386871469359945618

`A000265(p?[A304205(n+1)+A017293(n)])`
-/

namespace A142741.P386871469359945618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142741.P386871469359945618

namespace A142741

/-- `A000265(p?[A304205(n+1)+A017293(n)])` -/
def P386871469359945618.Spec : Prop :=
  ∀ n, P386871469359945618.a n = A142741 (n + 1)

end A142741

/-! ## A142741.P5818453433529302298

`A001414(p?[A304205(n+1)+A017293(n)])`
-/

namespace A142741.P5818453433529302298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142741.P5818453433529302298

namespace A142741

/-- `A001414(p?[A304205(n+1)+A017293(n)])` -/
def P5818453433529302298.Spec : Prop :=
  ∀ n, P5818453433529302298.a n = A142741 (n + 1)

end A142741

/-! ## A142741.P5583289031225090188

`A007913(p?[A304205(n+1)+A017293(n)])`
-/

namespace A142741.P5583289031225090188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142741.P5583289031225090188

namespace A142741

/-- `A007913(p?[A304205(n+1)+A017293(n)])` -/
def P5583289031225090188.Spec : Prop :=
  ∀ n, P5583289031225090188.a n = A142741 (n + 1)

end A142741

/-! ## A142741.P13470341985713252338

`A000265(p?[A248572(n)+A082369(n+1)])`
-/

namespace A142741.P13470341985713252338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A082369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142741.P13470341985713252338

namespace A142741

/-- `A000265(p?[A248572(n)+A082369(n+1)])` -/
def P13470341985713252338.Spec : Prop :=
  ∀ n, P13470341985713252338.a n = A142741 (n + 1)

end A142741

/-!
# A142742: Primes congruent to 15 mod 59.

The programs for A142742, the canonical program `A142742.P13352521078894166401` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142742 has offset 1).

The definition of A142742 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142742.anchor (n : ℕ) (hn : 1 ≤ n) : A142742 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 15) (n - 1) : ℤ)` in `Proof.A142.A142742`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142742.P13352521078894166401

`p?[59*n+15]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142742

/-- `p?[59*n+15]` -/
def P13352521078894166401.Spec : Prop :=
  ∀ n, (P13352521078894166401.a n : ℤ) = A142742 (n + 1)

theorem P13352521078894166401.correct : P13352521078894166401.Spec := by
  intro n
  simp only [A142742, Nat.add_sub_cancel]

end A142742

/-! ## A142742.P5597946448748366739

`p?[A139616(n)-A005408(n)]%A016900(n)`
-/

namespace A142742.P5597946448748366739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016900 n)

end

end A142742.P5597946448748366739

namespace A142742

/-- `p?[A139616(n)-A005408(n)]%A016900(n)` -/
def P5597946448748366739.Spec : Prop :=
  ∀ n, P5597946448748366739.a n = A142742 (n + 1)

end A142742

/-! ## A142742.P5017721531586896154

`A242179(n)²*p?[A139616(n)-A005408(n)]`
-/

namespace A142742.P5017721531586896154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142742.P5017721531586896154

namespace A142742

/-- `A242179(n)²*p?[A139616(n)-A005408(n)]` -/
def P5017721531586896154.Spec : Prop :=
  ∀ n, P5017721531586896154.a n = A142742 (n + 1)

end A142742

/-! ## A142742.P4800189987158248268

`A106400(n)^2*p?[A139616(n)-A005408(n)]`
-/

namespace A142742.P4800189987158248268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142742.P4800189987158248268

namespace A142742

/-- `A106400(n)^2*p?[A139616(n)-A005408(n)]` -/
def P4800189987158248268.Spec : Prop :=
  ∀ n, P4800189987158248268.a n = A142742 (n + 1)

end A142742

/-! ## A142742.P3323059395430667606

`A000027(p?[A139616(n)-A005408(n)])`
-/

namespace A142742.P3323059395430667606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142742.P3323059395430667606

namespace A142742

/-- `A000027(p?[A139616(n)-A005408(n)])` -/
def P3323059395430667606.Spec : Prop :=
  ∀ n, P3323059395430667606.a n = A142742 (n + 1)

end A142742

/-! ## A142742.P12901168602807372869

`A000027(p?[A304205(n+1)+A017305(n)])`
-/

namespace A142742.P12901168602807372869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142742.P12901168602807372869

namespace A142742

/-- `A000027(p?[A304205(n+1)+A017305(n)])` -/
def P12901168602807372869.Spec : Prop :=
  ∀ n, P12901168602807372869.a n = A142742 (n + 1)

end A142742

/-! ## A142742.P14899961650522103976

`A000265(p?[A139616(n)-A005408(n)])`
-/

namespace A142742.P14899961650522103976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142742.P14899961650522103976

namespace A142742

/-- `A000265(p?[A139616(n)-A005408(n)])` -/
def P14899961650522103976.Spec : Prop :=
  ∀ n, P14899961650522103976.a n = A142742 (n + 1)

end A142742

/-! ## A142742.P15871881277385803620

`A007947(p?[A139616(n)-A005408(n)])`
-/

namespace A142742.P15871881277385803620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142742.P15871881277385803620

namespace A142742

/-- `A007947(p?[A139616(n)-A005408(n)])` -/
def P15871881277385803620.Spec : Prop :=
  ∀ n, P15871881277385803620.a n = A142742 (n + 1)

end A142742

/-! ## A142742.P5652725597585741483

`A008472(p?[A139616(n)-A005408(n)])`
-/

namespace A142742.P5652725597585741483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142742.P5652725597585741483

namespace A142742

/-- `A008472(p?[A139616(n)-A005408(n)])` -/
def P5652725597585741483.Spec : Prop :=
  ∀ n, P5652725597585741483.a n = A142742 (n + 1)

end A142742

/-! ## A142742.P2855800249395143759

`A008475(p?[A139616(n)-A005408(n)])`
-/

namespace A142742.P2855800249395143759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142742.P2855800249395143759

namespace A142742

/-- `A008475(p?[A139616(n)-A005408(n)])` -/
def P2855800249395143759.Spec : Prop :=
  ∀ n, P2855800249395143759.a n = A142742 (n + 1)

end A142742

/-! ## A142742.P13387679061593582010

`A000265(p?[A304205(n+1)+A017305(n)])`
-/

namespace A142742.P13387679061593582010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142742.P13387679061593582010

namespace A142742

/-- `A000265(p?[A304205(n+1)+A017305(n)])` -/
def P13387679061593582010.Spec : Prop :=
  ∀ n, P13387679061593582010.a n = A142742 (n + 1)

end A142742

/-! ## A142742.P13077606988340166739

`A000265(p?[A304839(n+1)-A020744(n)])`
-/

namespace A142742.P13077606988340166739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A020744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142742.P13077606988340166739

namespace A142742

/-- `A000265(p?[A304839(n+1)-A020744(n)])` -/
def P13077606988340166739.Spec : Prop :=
  ∀ n, P13077606988340166739.a n = A142742 (n + 1)

end A142742

/-!
# A142743: Primes congruent to 16 mod 59.

The programs for A142743, the canonical program `A142743.P874674141680888733` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142743 has offset 1).

The definition of A142743 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142743.anchor (n : ℕ) (hn : 1 ≤ n) : A142743 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 16) (n - 1) : ℤ)` in `Proof.A142.A142743`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142743.P874674141680888733

`p?[59*n+16]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142743

/-- `p?[59*n+16]` -/
def P874674141680888733.Spec : Prop :=
  ∀ n, (P874674141680888733.a n : ℤ) = A142743 (n + 1)

theorem P874674141680888733.correct : P874674141680888733.Spec := by
  intro n
  simp only [A142743, Nat.add_sub_cancel]

end A142743

/-! ## A142743.P1985157950238107908

`or(1, p?[A144619(n)+A139279(n+1)])`
-/

namespace A142743.P1985157950238107908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142743.P1985157950238107908

namespace A142743

/-- `or(1, p?[A144619(n)+A139279(n+1)])` -/
def P1985157950238107908.Spec : Prop :=
  ∀ n, P1985157950238107908.a n = A142743 (n + 1)

end A142743

/-! ## A142743.P9604372418850250291

`p?[A144619(n)+A139279(n+1)]%A017500(n)`
-/

namespace A142743.P9604372418850250291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017500 n)

end

end A142743.P9604372418850250291

namespace A142743

/-- `p?[A144619(n)+A139279(n+1)]%A017500(n)` -/
def P9604372418850250291.Spec : Prop :=
  ∀ n, P9604372418850250291.a n = A142743 (n + 1)

end A142743

/-! ## A142743.P6310769323604054856

`p?[A144619(n)+A139279(n+1)]+A024000(n)%((-1)^n)`
-/

namespace A142743.P6310769323604054856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A024000 n) ((-1) ^ n)

end

end A142743.P6310769323604054856

namespace A142743

/-- `p?[A144619(n)+A139279(n+1)]+A024000(n)%((-1)^n)` -/
def P6310769323604054856.Spec : Prop :=
  ∀ n, P6310769323604054856.a n = A142743 (n + 1)

end A142743

/-! ## A142743.P6377470346551905449

`A000027(p?[A144619(n)+A139279(n+1)])`
-/

namespace A142743.P6377470346551905449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142743.P6377470346551905449

namespace A142743

/-- `A000027(p?[A144619(n)+A139279(n+1)])` -/
def P6377470346551905449.Spec : Prop :=
  ∀ n, P6377470346551905449.a n = A142743 (n + 1)

end A142743

/-! ## A142743.P18090361566960173807

`A000265(p?[A144619(n)+A139279(n+1)])`
-/

namespace A142743.P18090361566960173807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142743.P18090361566960173807

namespace A142743

/-- `A000265(p?[A144619(n)+A139279(n+1)])` -/
def P18090361566960173807.Spec : Prop :=
  ∀ n, P18090361566960173807.a n = A142743 (n + 1)

end A142743

/-! ## A142743.P12605350336429056946

`A001414(p?[A144619(n)+A139279(n+1)])`
-/

namespace A142743.P12605350336429056946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142743.P12605350336429056946

namespace A142743

/-- `A001414(p?[A144619(n)+A139279(n+1)])` -/
def P12605350336429056946.Spec : Prop :=
  ∀ n, P12605350336429056946.a n = A142743 (n + 1)

end A142743

/-! ## A142743.P11383433551400071910

`A007913(p?[A144619(n)+A139279(n+1)])`
-/

namespace A142743.P11383433551400071910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142743.P11383433551400071910

namespace A142743

/-- `A007913(p?[A144619(n)+A139279(n+1)])` -/
def P11383433551400071910.Spec : Prop :=
  ∀ n, P11383433551400071910.a n = A142743 (n + 1)

end A142743

/-!
# A142744: Primes congruent to 17 mod 59.

The programs for A142744, the canonical program `A142744.P16905080705357753281` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142744 has offset 1).

The definition of A142744 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142744.anchor (n : ℕ) (hn : 1 ≤ n) : A142744 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 17) (n - 1) : ℤ)` in `Proof.A142.A142744`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142744.P16905080705357753281

`p?[59*n-42]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142744

/-- `p?[59*n-42]` -/
def P16905080705357753281.Spec : Prop :=
  ∀ n, P16905080705357753281.a n = A142744 (n + 1)

theorem P16905080705357753281.correct : P16905080705357753281.Spec := by
  intro n
  simp only [A142744, Nat.add_sub_cancel]

end A142744

/-! ## A142744.P16004590394890547535

`or(1, p?[A248572(n)+A128468(n)-1])`
-/

namespace A142744.P16004590394890547535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A128468 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142744.P16004590394890547535

namespace A142744

/-- `or(1, p?[A248572(n)+A128468(n)-1])` -/
def P16004590394890547535.Spec : Prop :=
  ∀ n, P16004590394890547535.a n = A142744 (n + 1)

end A142744

/-! ## A142744.P11395663685665715530

`A000027(p?[A139616(n)-A005408(n)+2])`
-/

namespace A142744.P11395663685665715530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A005408 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142744.P11395663685665715530

namespace A142744

/-- `A000027(p?[A139616(n)-A005408(n)+2])` -/
def P11395663685665715530.Spec : Prop :=
  ∀ n, P11395663685665715530.a n = A142744 (n + 1)

end A142744

/-! ## A142744.P318478564419047537

`record[A020639(A128468(2*n)-n)]`
-/

namespace A142744.P318478564419047537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128468 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142744.P318478564419047537

namespace A142744

/-- `record[A020639(A128468(2*n)-n)]` -/
def P318478564419047537.Spec : Prop :=
  ∀ n, P318478564419047537.a n = A142744 (n + 1)

end A142744

/-! ## A142744.P4380965992522535867

`record[A020639(A139611(n)+4*n+6)]`
-/

namespace A142744.P4380965992522535867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 n + (4 * n + 6 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142744.P4380965992522535867

namespace A142744

/-- `record[A020639(A139611(n)+4*n+6)]` -/
def P4380965992522535867.Spec : Prop :=
  ∀ n, P4380965992522535867.a n = A142744 (n + 1)

end A142744

/-! ## A142744.P14021771492024398656

`record[A020639(A248572(n)+A128468(n)-1)]`
-/

namespace A142744.P14021771492024398656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A248572 n + A128468 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142744.P14021771492024398656

namespace A142744

/-- `record[A020639(A248572(n)+A128468(n)-1)]` -/
def P14021771492024398656.Spec : Prop :=
  ∀ n, P14021771492024398656.a n = A142744 (n + 1)

end A142744

/-!
# A142745: Primes congruent to 18 mod 59.

The programs for A142745, the canonical program `A142745.P700629788023279192` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142745 has offset 1).

The definition of A142745 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142745.anchor (n : ℕ) (hn : 1 ≤ n) : A142745 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 18) (n - 1) : ℤ)` in `Proof.A142.A142745`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142745.P700629788023279192

`p?[59*n+18]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142745

/-- `p?[59*n+18]` -/
def P700629788023279192.Spec : Prop :=
  ∀ n, (P700629788023279192.a n : ℤ) = A142745 (n + 1)

theorem P700629788023279192.correct : P700629788023279192.Spec := by
  intro n
  simp only [A142745, Nat.add_sub_cancel]

end A142745

/-! ## A142745.P6819575545080628383

`p?[A248572(n)+A128468(n)]%A126980(n)²`
-/

namespace A142745.P6819575545080628383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A126980 n ^ 2)

end

end A142745.P6819575545080628383

namespace A142745

/-- `p?[A248572(n)+A128468(n)]%A126980(n)²` -/
def P6819575545080628383.Spec : Prop :=
  ∀ n, P6819575545080628383.a n = A142745 (n + 1)

end A142745

/-! ## A142745.P17726763363824286771

`p?[A304205(n+1)+A017341(n)]%A228183(n+1)`
-/

namespace A142745.P17726763363824286771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A228183 (n + 1))

end

end A142745.P17726763363824286771

namespace A142745

/-- `p?[A304205(n+1)+A017341(n)]%A228183(n+1)` -/
def P17726763363824286771.Spec : Prop :=
  ∀ n, P17726763363824286771.a n = A142745 (n + 1)

end A142745

/-! ## A142745.P8311216965112857991

`A000027(p?[A248572(n)+A128468(n)])`
-/

namespace A142745.P8311216965112857991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142745.P8311216965112857991

namespace A142745

/-- `A000027(p?[A248572(n)+A128468(n)])` -/
def P8311216965112857991.Spec : Prop :=
  ∀ n, P8311216965112857991.a n = A142745 (n + 1)

end A142745

/-! ## A142745.P17575304860044019790

`A000027(p?[A304205(n+1)+A017341(n)])`
-/

namespace A142745.P17575304860044019790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142745.P17575304860044019790

namespace A142745

/-- `A000027(p?[A304205(n+1)+A017341(n)])` -/
def P17575304860044019790.Spec : Prop :=
  ∀ n, P17575304860044019790.a n = A142745 (n + 1)

end A142745

/-! ## A142745.P9505600234118342372

`A000265(p?[A248572(n)+A128468(n)])`
-/

namespace A142745.P9505600234118342372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142745.P9505600234118342372

namespace A142745

/-- `A000265(p?[A248572(n)+A128468(n)])` -/
def P9505600234118342372.Spec : Prop :=
  ∀ n, P9505600234118342372.a n = A142745 (n + 1)

end A142745

/-! ## A142745.P11916036535617329333

`A008475(p?[A248572(n)+A128468(n)])`
-/

namespace A142745.P11916036535617329333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142745.P11916036535617329333

namespace A142745

/-- `A008475(p?[A248572(n)+A128468(n)])` -/
def P11916036535617329333.Spec : Prop :=
  ∀ n, P11916036535617329333.a n = A142745 (n + 1)

end A142745

/-! ## A142745.P17886675607137271762

`A000265(p?[A304205(n+1)+A017341(n)])`
-/

namespace A142745.P17886675607137271762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142745.P17886675607137271762

namespace A142745

/-- `A000265(p?[A304205(n+1)+A017341(n)])` -/
def P17886675607137271762.Spec : Prop :=
  ∀ n, P17886675607137271762.a n = A142745 (n + 1)

end A142745

/-! ## A142745.P17919000362936821320

`A008475(p?[A304205(n+1)+A017341(n)])`
-/

namespace A142745.P17919000362936821320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142745.P17919000362936821320

namespace A142745

/-- `A008475(p?[A304205(n+1)+A017341(n)])` -/
def P17919000362936821320.Spec : Prop :=
  ∀ n, P17919000362936821320.a n = A142745 (n + 1)

end A142745

/-!
# A142746: Primes congruent to 19 mod 59.

The programs for A142746, the canonical program `A142746.P12554973249002192024` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142746 has offset 1).

The definition of A142746 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142746.anchor (n : ℕ) (hn : 1 ≤ n) : A142746 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 19) (n - 1) : ℤ)` in `Proof.A142.A142746`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142746.P12554973249002192024

`p?[59*n+19]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142746

/-- `p?[59*n+19]` -/
def P12554973249002192024.Spec : Prop :=
  ∀ n, (P12554973249002192024.a n : ℤ) = A142746 (n + 1)

theorem P12554973249002192024.correct : P12554973249002192024.Spec := by
  intro n
  simp only [A142746, Nat.add_sub_cancel]

end A142746

/-! ## A142746.P16997282893385168954

`A000027(p?[A304205(n+1)+A017353(n)])`
-/

namespace A142746.P16997282893385168954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142746.P16997282893385168954

namespace A142746

/-- `A000027(p?[A304205(n+1)+A017353(n)])` -/
def P16997282893385168954.Spec : Prop :=
  ∀ n, P16997282893385168954.a n = A142746 (n + 1)

end A142746

/-! ## A142746.P4129461944001681481

`record[A020639(A156376(2*n)-n)]`
-/

namespace A142746.P4129461944001681481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156376 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142746.P4129461944001681481

namespace A142746

/-- `record[A020639(A156376(2*n)-n)]` -/
def P4129461944001681481.Spec : Prop :=
  ∀ n, P4129461944001681481.a n = A142746 (n + 1)

end A142746

/-! ## A142746.P3721437584389199129

`record[A020639(A139611(n)+4*(n+2))]`
-/

namespace A142746.P3721437584389199129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 n + (4 * (n + 2) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142746.P3721437584389199129

namespace A142746

/-- `record[A020639(A139611(n)+4*(n+2))]` -/
def P3721437584389199129.Spec : Prop :=
  ∀ n, P3721437584389199129.a n = A142746 (n + 1)

end A142746

/-! ## A142746.P7900441139242881468

`record[A020639(A270296(2*n+1)-(n+1))]`
-/

namespace A142746.P7900441139242881468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A270296 (2 * n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142746.P7900441139242881468

namespace A142746

/-- `record[A020639(A270296(2*n+1)-(n+1))]` -/
def P7900441139242881468.Spec : Prop :=
  ∀ n, P7900441139242881468.a n = A142746 (n + 1)

end A142746

/-! ## A142746.P12195367643768666167

`record[A020639(A304205(n+1)+A017353(n))]`
-/

namespace A142746.P12195367643768666167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304205 (n + 1) + A017353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142746.P12195367643768666167

namespace A142746

/-- `record[A020639(A304205(n+1)+A017353(n))]` -/
def P12195367643768666167.Spec : Prop :=
  ∀ n, P12195367643768666167.a n = A142746 (n + 1)

end A142746

/-! ## A142746.P15155468214160532630

`A000265(p?[A304205(n+1)+A017353(n)])`
-/

namespace A142746.P15155468214160532630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142746.P15155468214160532630

namespace A142746

/-- `A000265(p?[A304205(n+1)+A017353(n)])` -/
def P15155468214160532630.Spec : Prop :=
  ∀ n, P15155468214160532630.a n = A142746 (n + 1)

end A142746

/-! ## A142746.P9419077372461824074

`A008472(p?[A250024(n+1)-A274616(n)])`
-/

namespace A142746.P9419077372461824074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) - A274616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142746.P9419077372461824074

namespace A142746

/-- `A008472(p?[A250024(n+1)-A274616(n)])` -/
def P9419077372461824074.Spec : Prop :=
  ∀ n, P9419077372461824074.a n = A142746 (n + 1)

end A142746

/-! ## A142746.P12692427854480757757

`record[A020639(A304839(2*n+1)-A008586(n+1))]`
-/

namespace A142746.P12692427854480757757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304839 (2 * n + 1) - A008586 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142746.P12692427854480757757

namespace A142746

/-- `record[A020639(A304839(2*n+1)-A008586(n+1))]` -/
def P12692427854480757757.Spec : Prop :=
  ∀ n, P12692427854480757757.a n = A142746 (n + 1)

end A142746

/-!
# A142747: Primes congruent to 20 mod 59.

The programs for A142747, the canonical program `A142747.P10055237668845761381` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142747 has offset 1).

The definition of A142747 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142747.anchor (n : ℕ) (hn : 1 ≤ n) : A142747 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 20) (n - 1) : ℤ)` in `Proof.A142.A142747`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142747.P10055237668845761381

`p?[59*n+20]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142747

/-- `p?[59*n+20]` -/
def P10055237668845761381.Spec : Prop :=
  ∀ n, (P10055237668845761381.a n : ℤ) = A142747 (n + 1)

theorem P10055237668845761381.correct : P10055237668845761381.Spec := by
  intro n
  simp only [A142747, Nat.add_sub_cancel]

end A142747

/-! ## A142747.P3433064679753674256

`p?[A248572(n)+A156376(n)]%A017151(n)`
-/

namespace A142747.P3433064679753674256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017151 n)

end

end A142747.P3433064679753674256

namespace A142747

/-- `p?[A248572(n)+A156376(n)]%A017151(n)` -/
def P3433064679753674256.Spec : Prop :=
  ∀ n, P3433064679753674256.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P12427845521311973459

`A000007(n+1)+p?[A248572(n)+A156376(n)]`
-/

namespace A142747.P12427845521311973459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142747.P12427845521311973459

namespace A142747

/-- `A000007(n+1)+p?[A248572(n)+A156376(n)]` -/
def P12427845521311973459.Spec : Prop :=
  ∀ n, P12427845521311973459.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P5927570563368994803

`p?[A304205(n+1)+A017365(n)]%A017044(n)`
-/

namespace A142747.P5927570563368994803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017044 n)

end

end A142747.P5927570563368994803

namespace A142747

/-- `p?[A304205(n+1)+A017365(n)]%A017044(n)` -/
def P5927570563368994803.Spec : Prop :=
  ∀ n, P5927570563368994803.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P11095123761736660090

`p?[A304205(n+1)+A017365(n)]/A257075(n)²`
-/

namespace A142747.P11095123761736660090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017365 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A257075 n ^ 2 : ℚ)

end

end A142747.P11095123761736660090

namespace A142747

/-- `p?[A304205(n+1)+A017365(n)]/A257075(n)²` -/
def P11095123761736660090.Spec : Prop :=
  ∀ n, P11095123761736660090.a n = (A142747 (n + 1) : ℚ)

end A142747

/-! ## A142747.P5698426042017854355

`A000027(p?[A248572(n)+A156376(n)])`
-/

namespace A142747.P5698426042017854355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142747.P5698426042017854355

namespace A142747

/-- `A000027(p?[A248572(n)+A156376(n)])` -/
def P5698426042017854355.Spec : Prop :=
  ∀ n, P5698426042017854355.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P3871065112643293364

`A000027(p?[A304205(n+1)+A017365(n)])`
-/

namespace A142747.P3871065112643293364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142747.P3871065112643293364

namespace A142747

/-- `A000027(p?[A304205(n+1)+A017365(n)])` -/
def P3871065112643293364.Spec : Prop :=
  ∀ n, P3871065112643293364.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P16852433853732263930

`A000265(p?[A248572(n)+A156376(n)])`
-/

namespace A142747.P16852433853732263930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142747.P16852433853732263930

namespace A142747

/-- `A000265(p?[A248572(n)+A156376(n)])` -/
def P16852433853732263930.Spec : Prop :=
  ∀ n, P16852433853732263930.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P5762830642297290076

`A001414(p?[A248572(n)+A156376(n)])`
-/

namespace A142747.P5762830642297290076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142747.P5762830642297290076

namespace A142747

/-- `A001414(p?[A248572(n)+A156376(n)])` -/
def P5762830642297290076.Spec : Prop :=
  ∀ n, P5762830642297290076.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P1821674440515417485

`A000265(p?[A304205(n+1)+A017365(n)])`
-/

namespace A142747.P1821674440515417485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142747.P1821674440515417485

namespace A142747

/-- `A000265(p?[A304205(n+1)+A017365(n)])` -/
def P1821674440515417485.Spec : Prop :=
  ∀ n, P1821674440515417485.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P3435130136602003856

`A007913(p?[A304205(n+1)+A017365(n)])`
-/

namespace A142747.P3435130136602003856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142747.P3435130136602003856

namespace A142747

/-- `A007913(p?[A304205(n+1)+A017365(n)])` -/
def P3435130136602003856.Spec : Prop :=
  ∀ n, P3435130136602003856.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P17525300597693511357

`A008472(p?[A304205(n+1)+A017365(n)])`
-/

namespace A142747.P17525300597693511357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142747.P17525300597693511357

namespace A142747

/-- `A008472(p?[A304205(n+1)+A017365(n)])` -/
def P17525300597693511357.Spec : Prop :=
  ∀ n, P17525300597693511357.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P11967222746190722393

`A008475(p?[A304205(n+1)+A017365(n)])`
-/

namespace A142747.P11967222746190722393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142747.P11967222746190722393

namespace A142747

/-- `A008475(p?[A304205(n+1)+A017365(n)])` -/
def P11967222746190722393.Spec : Prop :=
  ∀ n, P11967222746190722393.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P3346489621059130462

`record[A006530(A248572(n+1)+A156376(n+1))]`
-/

namespace A142747.P3346489621059130462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (n + 1) + A156376 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142747.P3346489621059130462

namespace A142747

/-- `record[A006530(A248572(n+1)+A156376(n+1))]` -/
def P3346489621059130462.Spec : Prop :=
  ∀ n, P3346489621059130462.a n = A142747 (n + 1)

end A142747

/-! ## A142747.P6810990831068796076

`record[A020639(A053742(2*n+1)+A017209(2*n))]`
-/

namespace A142747.P6810990831068796076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 (2 * n + 1) + A017209 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142747.P6810990831068796076

namespace A142747

/-- `record[A020639(A053742(2*n+1)+A017209(2*n))]` -/
def P6810990831068796076.Spec : Prop :=
  ∀ n, P6810990831068796076.a n = A142747 (n + 1)

end A142747

/-!
# A142748: Primes congruent to 21 mod 59.

The programs for A142748, the canonical program `A142748.P8158062766394975784` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142748 has offset 1).

The definition of A142748 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142748.anchor (n : ℕ) (hn : 1 ≤ n) : A142748 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 21) (n - 1) : ℤ)` in `Proof.A142.A142748`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142748.P8158062766394975784

`p?[59*n+21]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142748

/-- `p?[59*n+21]` -/
def P8158062766394975784.Spec : Prop :=
  ∀ n, (P8158062766394975784.a n : ℤ) = A142748 (n + 1)

theorem P8158062766394975784.correct : P8158062766394975784.Spec := by
  intro n
  simp only [A142748, Nat.add_sub_cancel]

end A142748

/-! ## A142748.P15420296163477289132

`p?[A139613(n)+A139279(n+1)]%A179746(n+1)`
-/

namespace A142748.P15420296163477289132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A179746 (n + 1))

end

end A142748.P15420296163477289132

namespace A142748

/-- `p?[A139613(n)+A139279(n+1)]%A179746(n+1)` -/
def P15420296163477289132.Spec : Prop :=
  ∀ n, P15420296163477289132.a n = A142748 (n + 1)

end A142748

/-! ## A142748.P2509141703912301513

`p?[A304205(n+1)+A017377(n)]%(A052905(n+4)-2)²`
-/

namespace A142748.P2509141703912301513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((A052905 (n + 4) - 2) ^ 2)

end

end A142748.P2509141703912301513

namespace A142748

/-- `p?[A304205(n+1)+A017377(n)]%(A052905(n+4)-2)²` -/
def P2509141703912301513.Spec : Prop :=
  ∀ n, P2509141703912301513.a n = A142748 (n + 1)

end A142748

/-! ## A142748.P4636604956798688840

`A000027(p?[A139613(n)+A139279(n+1)])`
-/

namespace A142748.P4636604956798688840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A139279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142748.P4636604956798688840

namespace A142748

/-- `A000027(p?[A139613(n)+A139279(n+1)])` -/
def P4636604956798688840.Spec : Prop :=
  ∀ n, P4636604956798688840.a n = A142748 (n + 1)

end A142748

/-! ## A142748.P17274775654005346990

`A000027(p?[A304205(n+1)+A017377(n)])`
-/

namespace A142748.P17274775654005346990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142748.P17274775654005346990

namespace A142748

/-- `A000027(p?[A304205(n+1)+A017377(n)])` -/
def P17274775654005346990.Spec : Prop :=
  ∀ n, P17274775654005346990.a n = A142748 (n + 1)

end A142748

/-! ## A142748.P9814200256099398769

`A000027(p?[A304839(n+1)-A317440(n+1)])`
-/

namespace A142748.P9814200256099398769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A317440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142748.P9814200256099398769

namespace A142748

/-- `A000027(p?[A304839(n+1)-A317440(n+1)])` -/
def P9814200256099398769.Spec : Prop :=
  ∀ n, P9814200256099398769.a n = A142748 (n + 1)

end A142748

/-! ## A142748.P16741840802339088644

`A000265(p?[A304205(n+1)+A017377(n)])`
-/

namespace A142748.P16741840802339088644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142748.P16741840802339088644

namespace A142748

/-- `A000265(p?[A304205(n+1)+A017377(n)])` -/
def P16741840802339088644.Spec : Prop :=
  ∀ n, P16741840802339088644.a n = A142748 (n + 1)

end A142748

/-! ## A142748.P10259510137308663689

`A001414(p?[A304205(n+1)+A017377(n)])`
-/

namespace A142748.P10259510137308663689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) + A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142748.P10259510137308663689

namespace A142748

/-- `A001414(p?[A304205(n+1)+A017377(n)])` -/
def P10259510137308663689.Spec : Prop :=
  ∀ n, P10259510137308663689.a n = A142748 (n + 1)

end A142748

/-! ## A142748.P2962261113768416870

`A008472(p?[A270296(n+1)+A248572(n)])`
-/

namespace A142748.P2962261113768416870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + A248572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142748.P2962261113768416870

namespace A142748

/-- `A008472(p?[A270296(n+1)+A248572(n)])` -/
def P2962261113768416870.Spec : Prop :=
  ∀ n, P2962261113768416870.a n = A142748 (n + 1)

end A142748

/-! ## A142748.P8408396397373736759

`A007913(p?[A304839(n+1)-A317440(n+1)])`
-/

namespace A142748.P8408396397373736759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A317440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142748.P8408396397373736759

namespace A142748

/-- `A007913(p?[A304839(n+1)-A317440(n+1)])` -/
def P8408396397373736759.Spec : Prop :=
  ∀ n, P8408396397373736759.a n = A142748 (n + 1)

end A142748

/-!
# A142749: Primes congruent to 22 mod 59.

The programs for A142749, the canonical program `A142749.P11019905987343841115` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142749 has offset 1).

The definition of A142749 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142749.anchor (n : ℕ) (hn : 1 ≤ n) : A142749 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 22) (n - 1) : ℤ)` in `Proof.A142.A142749`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142749.P11019905987343841115

`p?[59*n+22]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142749

/-- `p?[59*n+22]` -/
def P11019905987343841115.Spec : Prop :=
  ∀ n, (P11019905987343841115.a n : ℤ) = A142749 (n + 1)

theorem P11019905987343841115.correct : P11019905987343841115.Spec := by
  intro n
  simp only [A142749, Nat.add_sub_cancel]

end A142749

/-! ## A142749.P3689628109380300968

`p?[A053741(n)+A017185(n)]%A017057(n)`
-/

namespace A142749.P3689628109380300968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017057 n)

end

end A142749.P3689628109380300968

namespace A142749

/-- `p?[A053741(n)+A017185(n)]%A017057(n)` -/
def P3689628109380300968.Spec : Prop :=
  ∀ n, P3689628109380300968.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P1199463202112849591

`p?[A053741(n)+A017185(n)]/A008836(n+1)²`
-/

namespace A142749.P1199463202112849591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A142749.P1199463202112849591

namespace A142749

/-- `p?[A053741(n)+A017185(n)]/A008836(n+1)²` -/
def P1199463202112849591.Spec : Prop :=
  ∀ n, P1199463202112849591.a n = (A142749 (n + 1) : ℚ)

end A142749

/-! ## A142749.P7820014663040918520

`p?[A053741(n)+A017185(n)]/A165471(n+1)²`
-/

namespace A142749.P7820014663040918520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A165471 (n + 1) ^ 2 : ℚ)

end

end A142749.P7820014663040918520

namespace A142749

/-- `p?[A053741(n)+A017185(n)]/A165471(n+1)²` -/
def P7820014663040918520.Spec : Prop :=
  ∀ n, P7820014663040918520.a n = (A142749 (n + 1) : ℚ)

end A142749

/-! ## A142749.P11989720234986239657

`p?[A053741(n)+A017185(n)]+A067874(n+1)%2`
-/

namespace A142749.P11989720234986239657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A067874 (n + 1)) 2

end

end A142749.P11989720234986239657

namespace A142749

/-- `p?[A053741(n)+A017185(n)]+A067874(n+1)%2` -/
def P11989720234986239657.Spec : Prop :=
  ∀ n, P11989720234986239657.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P3638661705321268161

`p?[A053741(n)+A017185(n)]+A119413(n+1)%2`
-/

namespace A142749.P3638661705321268161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A119413 (n + 1)) 2

end

end A142749.P3638661705321268161

namespace A142749

/-- `p?[A053741(n)+A017185(n)]+A119413(n+1)%2` -/
def P3638661705321268161.Spec : Prop :=
  ∀ n, P3638661705321268161.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P2512584449424970143

`p?[A053741(n)+A017185(n)]/A247328(n+1)%2`
-/

namespace A142749.P2512584449424970143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A247328 (n + 1)) 2 : ℚ)

end

end A142749.P2512584449424970143

namespace A142749

/-- `p?[A053741(n)+A017185(n)]/A247328(n+1)%2` -/
def P2512584449424970143.Spec : Prop :=
  ∀ n, P2512584449424970143.a n = (A142749 (n + 1) : ℚ)

end A142749

/-! ## A142749.P6920139639133227439

`p?[A053741(n)+A017185(n)]+A005563(n)%(n+2)`
-/

namespace A142749.P6920139639133227439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005563 n) (n + 2 : ℤ)

end

end A142749.P6920139639133227439

namespace A142749

/-- `p?[A053741(n)+A017185(n)]+A005563(n)%(n+2)` -/
def P6920139639133227439.Spec : Prop :=
  ∀ n, P6920139639133227439.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P10310152986922129738

`A000027(p?[A304839(n+1)-A005408(n)])`
-/

namespace A142749.P10310152986922129738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142749.P10310152986922129738

namespace A142749

/-- `A000027(p?[A304839(n+1)-A005408(n)])` -/
def P10310152986922129738.Spec : Prop :=
  ∀ n, P10310152986922129738.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P16939828162013537834

`A000265(p?[A053741(n)+A017185(n)])`
-/

namespace A142749.P16939828162013537834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142749.P16939828162013537834

namespace A142749

/-- `A000265(p?[A053741(n)+A017185(n)])` -/
def P16939828162013537834.Spec : Prop :=
  ∀ n, P16939828162013537834.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P1976689863507433589

`A001414(p?[A053741(n)+A017185(n)])`
-/

namespace A142749.P1976689863507433589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142749.P1976689863507433589

namespace A142749

/-- `A001414(p?[A053741(n)+A017185(n)])` -/
def P1976689863507433589.Spec : Prop :=
  ∀ n, P1976689863507433589.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P909526939805591870

`A000265(p?[A304839(n+1)-A005408(n)])`
-/

namespace A142749.P909526939805591870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142749.P909526939805591870

namespace A142749

/-- `A000265(p?[A304839(n+1)-A005408(n)])` -/
def P909526939805591870.Spec : Prop :=
  ∀ n, P909526939805591870.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P14207189497733449586

`A001414(p?[A304839(n+1)-A005408(n)])`
-/

namespace A142749.P14207189497733449586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142749.P14207189497733449586

namespace A142749

/-- `A001414(p?[A304839(n+1)-A005408(n)])` -/
def P14207189497733449586.Spec : Prop :=
  ∀ n, P14207189497733449586.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P10309283632983666679

`A007913(p?[A304839(n+1)-A005408(n)])`
-/

namespace A142749.P10309283632983666679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142749.P10309283632983666679

namespace A142749

/-- `A007913(p?[A304839(n+1)-A005408(n)])` -/
def P10309283632983666679.Spec : Prop :=
  ∀ n, P10309283632983666679.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P8388837122219168644

`A008472(p?[A304839(n+1)-A005408(n)])`
-/

namespace A142749.P8388837122219168644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142749.P8388837122219168644

namespace A142749

/-- `A008472(p?[A304839(n+1)-A005408(n)])` -/
def P8388837122219168644.Spec : Prop :=
  ∀ n, P8388837122219168644.a n = A142749 (n + 1)

end A142749

/-! ## A142749.P12231169744966510047

`A034699(p?[A304839(n+1)-A005408(n)])`
-/

namespace A142749.P12231169744966510047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142749.P12231169744966510047

namespace A142749

/-- `A034699(p?[A304839(n+1)-A005408(n)])` -/
def P12231169744966510047.Spec : Prop :=
  ∀ n, P12231169744966510047.a n = A142749 (n + 1)

end A142749

/-!
# A142750: Primes congruent to 23 mod 59.

The programs for A142750, the canonical program `A142750.P3306253928389468557` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142750 has offset 1).

The definition of A142750 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142750.anchor (n : ℕ) (hn : 1 ≤ n) : A142750 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 23) (n - 1) : ℤ)` in `Proof.A142.A142750`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142750.P3306253928389468557

`p?[59*n+23]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142750

/-- `p?[59*n+23]` -/
def P3306253928389468557.Spec : Prop :=
  ∀ n, (P3306253928389468557.a n : ℤ) = A142750 (n + 1)

theorem P3306253928389468557.correct : P3306253928389468557.Spec := by
  intro n
  simp only [A142750, Nat.add_sub_cancel]

end A142750

/-! ## A142750.P7588686831032979011

`or(1, p?[59*n-36])`
-/

namespace A142750.P7588686831032979011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142750.P7588686831032979011

namespace A142750

/-- `or(1, p?[59*n-36])` -/
def P7588686831032979011.Spec : Prop :=
  ∀ n, P7588686831032979011.a n = A142750 (n + 1)

end A142750

/-! ## A142750.P9509905583526709549

`p?[59*n-36]%p?[59*n-36]²`
-/

namespace A142750.P9509905583526709549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2)

end

end A142750.P9509905583526709549

namespace A142750

/-- `p?[59*n-36]%p?[59*n-36]²` -/
def P9509905583526709549.Spec : Prop :=
  ∀ n, P9509905583526709549.a n = A142750 (n + 1)

end A142750

/-! ## A142750.P9501415275716116901

`p?[A304839(n+1)-A005843(n)]%A157652(n+1)`
-/

namespace A142750.P9501415275716116901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157652 (n + 1))

end

end A142750.P9501415275716116901

namespace A142750

/-- `p?[A304839(n+1)-A005843(n)]%A157652(n+1)` -/
def P9501415275716116901.Spec : Prop :=
  ∀ n, P9501415275716116901.a n = A142750 (n + 1)

end A142750

/-! ## A142750.P5149363558460914192

`record[A020639(59*n+23)]`
-/

namespace A142750.P5149363558460914192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (59 * n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142750.P5149363558460914192

namespace A142750

/-- `record[A020639(59*n+23)]` -/
def P5149363558460914192.Spec : Prop :=
  ∀ n, P5149363558460914192.a n = A142750 (n + 1)

end A142750

/-! ## A142750.P13351352848056799756

`A007947(p?[A304839(n+1)-A005843(n)])`
-/

namespace A142750.P13351352848056799756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142750.P13351352848056799756

namespace A142750

/-- `A007947(p?[A304839(n+1)-A005843(n)])` -/
def P13351352848056799756.Spec : Prop :=
  ∀ n, P13351352848056799756.a n = A142750 (n + 1)

end A142750

/-! ## A142750.P2484900954780877930

`A008475(p?[A304839(n+1)-A005843(n)])`
-/

namespace A142750.P2484900954780877930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142750.P2484900954780877930

namespace A142750

/-- `A008475(p?[A304839(n+1)-A005843(n)])` -/
def P2484900954780877930.Spec : Prop :=
  ∀ n, P2484900954780877930.a n = A142750 (n + 1)

end A142750

/-! ## A142750.P1941624322895352487

`A057428(A157170(n))²*p?[59*n-36]`
-/

namespace A142750.P1941624322895352487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A157170 n).toNat ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142750.P1941624322895352487

namespace A142750

/-- `A057428(A157170(n))²*p?[59*n-36]` -/
def P1941624322895352487.Spec : Prop :=
  ∀ n, P1941624322895352487.a n = A142750 (n + 1)

end A142750

/-!
# A142751: Primes congruent to 24 mod 59.

The programs for A142751, the canonical program `A142751.P15092696060650891724` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142751 has offset 1).

The definition of A142751 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142751.anchor (n : ℕ) (hn : 1 ≤ n) : A142751 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 24) (n - 1) : ℤ)` in `Proof.A142.A142751`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142751.P15092696060650891724

`p?[59*n+24]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142751

/-- `p?[59*n+24]` -/
def P15092696060650891724.Spec : Prop :=
  ∀ n, (P15092696060650891724.a n : ℤ) = A142751 (n + 1)

theorem P15092696060650891724.correct : P15092696060650891724.Spec := by
  intro n
  simp only [A142751, Nat.add_sub_cancel]

end A142751

/-! ## A142751.P7070876946256933154

`p?[A053741(n)+A017209(n)]%A017512(n)`
-/

namespace A142751.P7070876946256933154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017512 n)

end

end A142751.P7070876946256933154

namespace A142751

/-- `p?[A053741(n)+A017209(n)]%A017512(n)` -/
def P7070876946256933154.Spec : Prop :=
  ∀ n, P7070876946256933154.a n = A142751 (n + 1)

end A142751

/-! ## A142751.P14419927209812791832

`p?[A053741(n)+A017209(n)]/A049347(n)²!`
-/

namespace A142751.P14419927209812791832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017209 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Nat.factorial (A049347 n ^ 2).toNat : ℚ)

end

end A142751.P14419927209812791832

namespace A142751

/-- `p?[A053741(n)+A017209(n)]/A049347(n)²!` -/
def P14419927209812791832.Spec : Prop :=
  ∀ n, P14419927209812791832.a n = (A142751 (n + 1) : ℚ)

end A142751

/-! ## A142751.P3149265668492614455

`p?[A053741(n)+A017209(n)]+A185633(n+1)%2`
-/

namespace A142751.P3149265668492614455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A185633 (n + 1)) 2

end

end A142751.P3149265668492614455

namespace A142751

/-- `p?[A053741(n)+A017209(n)]+A185633(n+1)%2` -/
def P3149265668492614455.Spec : Prop :=
  ∀ n, P3149265668492614455.a n = A142751 (n + 1)

end A142751

/-! ## A142751.P17535202776466991246

`p?[A053741(n)+A017209(n)]/A004625(n+2)%2`
-/

namespace A142751.P17535202776466991246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017209 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A004625 (n + 2)) 2 : ℚ)

end

end A142751.P17535202776466991246

namespace A142751

/-- `p?[A053741(n)+A017209(n)]/A004625(n+2)%2` -/
def P17535202776466991246.Spec : Prop :=
  ∀ n, P17535202776466991246.a n = (A142751 (n + 1) : ℚ)

end A142751

/-! ## A142751.P14809803237246674490

`A000027(p?[A304158(n+1)-n])`
-/

namespace A142751.P14809803237246674490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142751.P14809803237246674490

namespace A142751

/-- `A000027(p?[A304158(n+1)-n])` -/
def P14809803237246674490.Spec : Prop :=
  ∀ n, P14809803237246674490.a n = A142751 (n + 1)

end A142751

/-! ## A142751.P5891308010489371134

`A000027(p?[A248572(n)+A128473(n+1)])`
-/

namespace A142751.P5891308010489371134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A128473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142751.P5891308010489371134

namespace A142751

/-- `A000027(p?[A248572(n)+A128473(n+1)])` -/
def P5891308010489371134.Spec : Prop :=
  ∀ n, P5891308010489371134.a n = A142751 (n + 1)

end A142751

/-! ## A142751.P2666147077789889003

`A000265(p?[A304158(n+1)-n])`
-/

namespace A142751.P2666147077789889003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142751.P2666147077789889003

namespace A142751

/-- `A000265(p?[A304158(n+1)-n])` -/
def P2666147077789889003.Spec : Prop :=
  ∀ n, P2666147077789889003.a n = A142751 (n + 1)

end A142751

/-! ## A142751.P120689404682711264

`A007913(p?[A304158(n+1)-n])`
-/

namespace A142751.P120689404682711264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142751.P120689404682711264

namespace A142751

/-- `A007913(p?[A304158(n+1)-n])` -/
def P120689404682711264.Spec : Prop :=
  ∀ n, P120689404682711264.a n = A142751 (n + 1)

end A142751

/-! ## A142751.P11082614987671392960

`A007947(p?[A304158(n+1)-n])`
-/

namespace A142751.P11082614987671392960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304158 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142751.P11082614987671392960

namespace A142751

/-- `A007947(p?[A304158(n+1)-n])` -/
def P11082614987671392960.Spec : Prop :=
  ∀ n, P11082614987671392960.a n = A142751 (n + 1)

end A142751

/-! ## A142751.P13905620663927044522

`A000265(p?[A053741(n)+A017209(n)])`
-/

namespace A142751.P13905620663927044522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142751.P13905620663927044522

namespace A142751

/-- `A000265(p?[A053741(n)+A017209(n)])` -/
def P13905620663927044522.Spec : Prop :=
  ∀ n, P13905620663927044522.a n = A142751 (n + 1)

end A142751

/-! ## A142751.P8688647442201154165

`A001414(p?[A053741(n)+A017209(n)])`
-/

namespace A142751.P8688647442201154165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142751.P8688647442201154165

namespace A142751

/-- `A001414(p?[A053741(n)+A017209(n)])` -/
def P8688647442201154165.Spec : Prop :=
  ∀ n, P8688647442201154165.a n = A142751 (n + 1)

end A142751

/-! ## A142751.P12461290366522161312

`record[A006530(A304839(2*(n+1))-A005408(2*n))]`
-/

namespace A142751.P12461290366522161312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304839 (2 * (n + 1)) - A005408 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142751.P12461290366522161312

namespace A142751

/-- `record[A006530(A304839(2*(n+1))-A005408(2*n))]` -/
def P12461290366522161312.Spec : Prop :=
  ∀ n, P12461290366522161312.a n = A142751 (n + 1)

end A142751

/-! ## A142751.P13608571040044791183

`record[A020639(A304839(2*(n+1))-A005408(2*n))]`
-/

namespace A142751.P13608571040044791183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304839 (2 * (n + 1)) - A005408 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142751.P13608571040044791183

namespace A142751

/-- `record[A020639(A304839(2*(n+1))-A005408(2*n))]` -/
def P13608571040044791183.Spec : Prop :=
  ∀ n, P13608571040044791183.a n = A142751 (n + 1)

end A142751

/-!
# A142752: Primes congruent to 25 mod 59.

The programs for A142752, the canonical program `A142752.P1738315188731270159` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142752 has offset 1).

The definition of A142752 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142752.anchor (n : ℕ) (hn : 1 ≤ n) : A142752 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 25) (n - 1) : ℤ)` in `Proof.A142.A142752`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142752.P1738315188731270159

`p?[59*n+25]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142752

/-- `p?[59*n+25]` -/
def P1738315188731270159.Spec : Prop :=
  ∀ n, (P1738315188731270159.a n : ℤ) = A142752 (n + 1)

theorem P1738315188731270159.correct : P1738315188731270159.Spec := by
  intro n
  simp only [A142752, Nat.add_sub_cancel]

end A142752

/-! ## A142752.P3331865597980876276

`or(1, p?[A053742(n)+A008591(n)])`
-/

namespace A142752.P3331865597980876276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142752.P3331865597980876276

namespace A142752

/-- `or(1, p?[A053742(n)+A008591(n)])` -/
def P3331865597980876276.Spec : Prop :=
  ∀ n, P3331865597980876276.a n = A142752 (n + 1)

end A142752

/-! ## A142752.P13670047133192865189

`A000007(n+1)+p?[A053742(n)+A008591(n)]`
-/

namespace A142752.P13670047133192865189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142752.P13670047133192865189

namespace A142752

/-- `A000007(n+1)+p?[A053742(n)+A008591(n)]` -/
def P13670047133192865189.Spec : Prop :=
  ∀ n, P13670047133192865189.a n = A142752 (n + 1)

end A142752

/-! ## A142752.P5557383287928277176

`A000038(n+1)+p?[A053742(n)+A008591(n)]`
-/

namespace A142752.P5557383287928277176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142752.P5557383287928277176

namespace A142752

/-- `A000038(n+1)+p?[A053742(n)+A008591(n)]` -/
def P5557383287928277176.Spec : Prop :=
  ∀ n, P5557383287928277176.a n = A142752 (n + 1)

end A142752

/-! ## A142752.P8985343642170051155

`p?[A053742(n)+A008591(n)]%A075730(n+8)`
-/

namespace A142752.P8985343642170051155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A075730 (n + 8))

end

end A142752.P8985343642170051155

namespace A142752

/-- `p?[A053742(n)+A008591(n)]%A075730(n+8)` -/
def P8985343642170051155.Spec : Prop :=
  ∀ n, P8985343642170051155.a n = A142752 (n + 1)

end A142752

/-! ## A142752.P17081669962801860361

`p?[A053742(n)+A008591(n)]/A008836(n+1)²`
-/

namespace A142752.P17081669962801860361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008591 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A142752.P17081669962801860361

namespace A142752

/-- `p?[A053742(n)+A008591(n)]/A008836(n+1)²` -/
def P17081669962801860361.Spec : Prop :=
  ∀ n, P17081669962801860361.a n = (A142752 (n + 1) : ℚ)

end A142752

/-! ## A142752.P12892445609509371363

`A000027(p?[A053742(n)+A008591(n)])`
-/

namespace A142752.P12892445609509371363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142752.P12892445609509371363

namespace A142752

/-- `A000027(p?[A053742(n)+A008591(n)])` -/
def P12892445609509371363.Spec : Prop :=
  ∀ n, P12892445609509371363.a n = A142752 (n + 1)

end A142752

/-! ## A142752.P5920417127734929356

`A000265(p?[A053742(n)+A008591(n)])`
-/

namespace A142752.P5920417127734929356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142752.P5920417127734929356

namespace A142752

/-- `A000265(p?[A053742(n)+A008591(n)])` -/
def P5920417127734929356.Spec : Prop :=
  ∀ n, P5920417127734929356.a n = A142752 (n + 1)

end A142752

/-! ## A142752.P4626294343895594871

`A001414(p?[A053742(n)+A008591(n)])`
-/

namespace A142752.P4626294343895594871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142752.P4626294343895594871

namespace A142752

/-- `A001414(p?[A053742(n)+A008591(n)])` -/
def P4626294343895594871.Spec : Prop :=
  ∀ n, P4626294343895594871.a n = A142752 (n + 1)

end A142752

/-! ## A142752.P10024824715186106664

`A007947(p?[A053742(n)+A008591(n)])`
-/

namespace A142752.P10024824715186106664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A008591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142752.P10024824715186106664

namespace A142752

/-- `A007947(p?[A053742(n)+A008591(n)])` -/
def P10024824715186106664.Spec : Prop :=
  ∀ n, P10024824715186106664.a n = A142752 (n + 1)

end A142752

/-!
# A142753: Primes congruent to 26 mod 59.

The programs for A142753, the canonical program `A142753.P2539922441208332439` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142753 has offset 1).

The definition of A142753 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142753.anchor (n : ℕ) (hn : 1 ≤ n) : A142753 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 26) (n - 1) : ℤ)` in `Proof.A142.A142753`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142753.P2539922441208332439

`p?[59*n+26]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142753

/-- `p?[59*n+26]` -/
def P2539922441208332439.Spec : Prop :=
  ∀ n, (P2539922441208332439.a n : ℤ) = A142753 (n + 1)

theorem P2539922441208332439.correct : P2539922441208332439.Spec := by
  intro n
  simp only [A142753, Nat.add_sub_cancel]

end A142753

/-! ## A142753.P13183746768656860710

`xor(1, p?[A248572(n+1)+A139222(n+1)-7]-1)`
-/

namespace A142753.P13183746768656860710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) + A139222 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A142753.P13183746768656860710

namespace A142753

/-- `xor(1, p?[A248572(n+1)+A139222(n+1)-7]-1)` -/
def P13183746768656860710.Spec : Prop :=
  ∀ n, P13183746768656860710.a n = A142753 (n + 1)

end A142753

/-! ## A142753.P10493474622095170418

`A000007(n+1)+p?[A304839(n+3)-A005408(n)]`
-/

namespace A142753.P10493474622095170418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 3) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142753.P10493474622095170418

namespace A142753

/-- `A000007(n+1)+p?[A304839(n+3)-A005408(n)]` -/
def P10493474622095170418.Spec : Prop :=
  ∀ n, P10493474622095170418.a n = A142753 (n + 1)

end A142753

/-! ## A142753.P10966532020852060899

`p?[A304839(n+3)-A005408(n)]%A290162(n+1)`
-/

namespace A142753.P10966532020852060899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 3) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A290162 (n + 1))

end

end A142753.P10966532020852060899

namespace A142753

/-- `p?[A304839(n+3)-A005408(n)]%A290162(n+1)` -/
def P10966532020852060899.Spec : Prop :=
  ∀ n, P10966532020852060899.a n = A142753 (n + 1)

end A142753

/-! ## A142753.P10423511316429300377

`A000265(p?[A304839(n+3)-A005408(n)])`
-/

namespace A142753.P10423511316429300377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 3) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142753.P10423511316429300377

namespace A142753

/-- `A000265(p?[A304839(n+3)-A005408(n)])` -/
def P10423511316429300377.Spec : Prop :=
  ∀ n, P10423511316429300377.a n = A142753 (n + 1)

end A142753

/-!
# A142754: Primes congruent to 27 mod 59.

The programs for A142754, the canonical program `A142754.P5901441355332948607` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142754 has offset 1).

The definition of A142754 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142754.anchor (n : ℕ) (hn : 1 ≤ n) : A142754 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 27) (n - 1) : ℤ)` in `Proof.A142.A142754`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142754.P5901441355332948607

`p?[59*n-32]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142754

/-- `p?[59*n-32]` -/
def P5901441355332948607.Spec : Prop :=
  ∀ n, P5901441355332948607.a n = A142754 (n + 1)

theorem P5901441355332948607.correct : P5901441355332948607.Spec := by
  intro n
  simp only [A142754, Nat.add_sub_cancel]

end A142754

/-! ## A142754.P8010899194675572632

`A020985(n)²*p?[A053742(n)+A017185(n)]`
-/

namespace A142754.P8010899194675572632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142754.P8010899194675572632

namespace A142754

/-- `A020985(n)²*p?[A053742(n)+A017185(n)]` -/
def P8010899194675572632.Spec : Prop :=
  ∀ n, P8010899194675572632.a n = A142754 (n + 1)

end A142754

/-! ## A142754.P146168286147662916

`A000007(n+1)+p?[A053742(n)+A017185(n)]`
-/

namespace A142754.P146168286147662916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142754.P146168286147662916

namespace A142754

/-- `A000007(n+1)+p?[A053742(n)+A017185(n)]` -/
def P146168286147662916.Spec : Prop :=
  ∀ n, P146168286147662916.a n = A142754 (n + 1)

end A142754

/-! ## A142754.P5241725006648795431

`p?[A053742(n)+A017185(n)]%A001235(n+1)`
-/

namespace A142754.P5241725006648795431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001235 (n + 1))

end

end A142754.P5241725006648795431

namespace A142754

/-- `p?[A053742(n)+A017185(n)]%A001235(n+1)` -/
def P5241725006648795431.Spec : Prop :=
  ∀ n, P5241725006648795431.a n = A142754 (n + 1)

end A142754

/-! ## A142754.P17483841965930590894

`p?[A053742(n)+A017185(n)]+A008683(4*(n+1))`
-/

namespace A142754.P17483841965930590894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A142754.P17483841965930590894

namespace A142754

/-- `p?[A053742(n)+A017185(n)]+A008683(4*(n+1))` -/
def P17483841965930590894.Spec : Prop :=
  ∀ n, P17483841965930590894.a n = A142754 (n + 1)

end A142754

/-! ## A142754.P7776788012264684929

`p?[A053742(n)+A017185(n)]/(A005408(n)-n-n)`
-/

namespace A142754.P7776788012264684929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A005408 n - (n : ℤ) - (n : ℤ) : ℚ)

end

end A142754.P7776788012264684929

namespace A142754

/-- `p?[A053742(n)+A017185(n)]/(A005408(n)-n-n)` -/
def P7776788012264684929.Spec : Prop :=
  ∀ n, P7776788012264684929.a n = (A142754 (n + 1) : ℚ)

end A142754

/-! ## A142754.P12385519423514638386

`A008619(2*n)/(n+1)*p?[A053742(n)+A017185(n)]`
-/

namespace A142754.P12385519423514638386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (n + 1 : ℚ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A142754.P12385519423514638386

namespace A142754

/-- `A008619(2*n)/(n+1)*p?[A053742(n)+A017185(n)]` -/
def P12385519423514638386.Spec : Prop :=
  ∀ n, P12385519423514638386.a n = (A142754 (n + 1) : ℚ)

end A142754

/-! ## A142754.P6672892115222702467

`A000027(p?[A053742(n)+A017185(n)])`
-/

namespace A142754.P6672892115222702467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142754.P6672892115222702467

namespace A142754

/-- `A000027(p?[A053742(n)+A017185(n)])` -/
def P6672892115222702467.Spec : Prop :=
  ∀ n, P6672892115222702467.a n = A142754 (n + 1)

end A142754

/-! ## A142754.P4372276699604157519

`A000027(p?[A250024(n+1)+A144619(n)])`
-/

namespace A142754.P4372276699604157519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A144619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142754.P4372276699604157519

namespace A142754

/-- `A000027(p?[A250024(n+1)+A144619(n)])` -/
def P4372276699604157519.Spec : Prop :=
  ∀ n, P4372276699604157519.a n = A142754 (n + 1)

end A142754

/-! ## A142754.P1965848143434751367

`A000265(p?[A053742(n)+A017185(n)])`
-/

namespace A142754.P1965848143434751367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142754.P1965848143434751367

namespace A142754

/-- `A000265(p?[A053742(n)+A017185(n)])` -/
def P1965848143434751367.Spec : Prop :=
  ∀ n, P1965848143434751367.a n = A142754 (n + 1)

end A142754

/-!
# A142755: Primes congruent to 28 mod 59.

The programs for A142755, the canonical program `A142755.P14456745287928612606` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142755 has offset 1).

The definition of A142755 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142755.anchor (n : ℕ) (hn : 1 ≤ n) : A142755 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 28) (n - 1) : ℤ)` in `Proof.A142.A142755`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142755.P14456745287928612606

`p?[59*n+28]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142755

/-- `p?[59*n+28]` -/
def P14456745287928612606.Spec : Prop :=
  ∀ n, (P14456745287928612606.a n : ℤ) = A142755 (n + 1)

theorem P14456745287928612606.correct : P14456745287928612606.Spec := by
  intro n
  simp only [A142755, Nat.add_sub_cancel]

end A142755

/-! ## A142755.P3896934195055413575

`or(1, p?[A304839(n+4)-A005408(n)])`
-/

namespace A142755.P3896934195055413575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 4) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142755.P3896934195055413575

namespace A142755

/-- `or(1, p?[A304839(n+4)-A005408(n)])` -/
def P3896934195055413575.Spec : Prop :=
  ∀ n, P3896934195055413575.a n = A142755 (n + 1)

end A142755

/-! ## A142755.P1820682833339311100

`p?[A304839(n+4)-A005408(n)]/A054977(n+11)`
-/

namespace A142755.P1820682833339311100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 4) - A005408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A054977 (n + 11) : ℚ)

end

end A142755.P1820682833339311100

namespace A142755

/-- `p?[A304839(n+4)-A005408(n)]/A054977(n+11)` -/
def P1820682833339311100.Spec : Prop :=
  ∀ n, P1820682833339311100.a n = (A142755 (n + 1) : ℚ)

end A142755

/-! ## A142755.P8179104666787657894

`p?[A304839(n+4)-A005408(n)]%A046303(n+2)`
-/

namespace A142755.P8179104666787657894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 4) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A046303 (n + 2))

end

end A142755.P8179104666787657894

namespace A142755

/-- `p?[A304839(n+4)-A005408(n)]%A046303(n+2)` -/
def P8179104666787657894.Spec : Prop :=
  ∀ n, P8179104666787657894.a n = A142755 (n + 1)

end A142755

/-! ## A142755.P5073214357658943068

`A000027(p?[A304839(n+4)-A005408(n)])`
-/

namespace A142755.P5073214357658943068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 4) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142755.P5073214357658943068

namespace A142755

/-- `A000027(p?[A304839(n+4)-A005408(n)])` -/
def P5073214357658943068.Spec : Prop :=
  ∀ n, P5073214357658943068.a n = A142755 (n + 1)

end A142755

/-! ## A142755.P15262872715730880253

`A000265(p?[A304839(n+4)-A005408(n)])`
-/

namespace A142755.P15262872715730880253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 4) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142755.P15262872715730880253

namespace A142755

/-- `A000265(p?[A304839(n+4)-A005408(n)])` -/
def P15262872715730880253.Spec : Prop :=
  ∀ n, P15262872715730880253.a n = A142755 (n + 1)

end A142755

/-! ## A142755.P13345837922909085652

`A007947(p?[A304839(n+4)-A005408(n)])`
-/

namespace A142755.P13345837922909085652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 4) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142755.P13345837922909085652

namespace A142755

/-- `A007947(p?[A304839(n+4)-A005408(n)])` -/
def P13345837922909085652.Spec : Prop :=
  ∀ n, P13345837922909085652.a n = A142755 (n + 1)

end A142755

/-!
# A142756: Primes congruent to 29 mod 59.

The programs for A142756, the canonical program `A142756.P13651941834180047484` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142756 has offset 1).

The definition of A142756 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142756.anchor (n : ℕ) (hn : 1 ≤ n) : A142756 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 29) (n - 1) : ℤ)` in `Proof.A142.A142756`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142756.P13651941834180047484

`p?[59*n+29]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142756

/-- `p?[59*n+29]` -/
def P13651941834180047484.Spec : Prop :=
  ∀ n, (P13651941834180047484.a n : ℤ) = A142756 (n + 1)

theorem P13651941834180047484.correct : P13651941834180047484.Spec := by
  intro n
  simp only [A142756, Nat.add_sub_cancel]

end A142756

/-! ## A142756.P13525037924107851168

`A000007(n+1)+p?[A053742(n)+A017209(n)]`
-/

namespace A142756.P13525037924107851168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142756.P13525037924107851168

namespace A142756

/-- `A000007(n+1)+p?[A053742(n)+A017209(n)]` -/
def P13525037924107851168.Spec : Prop :=
  ∀ n, P13525037924107851168.a n = A142756 (n + 1)

end A142756

/-! ## A142756.P5464019329466852012

`p?[A053742(n)+A017209(n)]%A156813(n+1)`
-/

namespace A142756.P5464019329466852012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A156813 (n + 1))

end

end A142756.P5464019329466852012

namespace A142756

/-- `p?[A053742(n)+A017209(n)]%A156813(n+1)` -/
def P5464019329466852012.Spec : Prop :=
  ∀ n, P5464019329466852012.a n = A142756 (n + 1)

end A142756

/-! ## A142756.P1228424315760596454

`p?[A053742(n)+A017209(n)]^A007318((-1)^n+1)`
-/

namespace A142756.P1228424315760596454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017209 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A007318 ((-1) ^ n + 1).toNat : ℤ)

end

end A142756.P1228424315760596454

namespace A142756

/-- `p?[A053742(n)+A017209(n)]^A007318((-1)^n+1)` -/
def P1228424315760596454.Spec : Prop :=
  ∀ n, P1228424315760596454.a n = (A142756 (n + 1) : ℚ)

end A142756

/-! ## A142756.P158408131183711391

`A000027(p?[A053742(n)+A017209(n)])`
-/

namespace A142756.P158408131183711391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142756.P158408131183711391

namespace A142756

/-- `A000027(p?[A053742(n)+A017209(n)])` -/
def P158408131183711391.Spec : Prop :=
  ∀ n, P158408131183711391.a n = A142756 (n + 1)

end A142756

/-! ## A142756.P16376642256827225569

`record[A020639(59*n+29)]`
-/

namespace A142756.P16376642256827225569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (59 * n + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142756.P16376642256827225569

namespace A142756

/-- `record[A020639(59*n+29)]` -/
def P16376642256827225569.Spec : Prop :=
  ∀ n, P16376642256827225569.a n = A142756 (n + 1)

end A142756

/-! ## A142756.P10413926919102745209

`A000265(p?[A053742(n)+A017209(n)])`
-/

namespace A142756.P10413926919102745209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142756.P10413926919102745209

namespace A142756

/-- `A000265(p?[A053742(n)+A017209(n)])` -/
def P10413926919102745209.Spec : Prop :=
  ∀ n, P10413926919102745209.a n = A142756 (n + 1)

end A142756

/-! ## A142756.P6833556664854620866

`A001414(p?[A053742(n)+A017209(n)])`
-/

namespace A142756.P6833556664854620866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142756.P6833556664854620866

namespace A142756

/-- `A001414(p?[A053742(n)+A017209(n)])` -/
def P6833556664854620866.Spec : Prop :=
  ∀ n, P6833556664854620866.a n = A142756 (n + 1)

end A142756

/-! ## A142756.P17799892191247598601

`A006530(p?[A053742(n)+A017209(n)]/(1-1/2))`
-/

namespace A142756.P17799892191247598601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (1 - (1 : ℚ) / 2))).toNat

end

end A142756.P17799892191247598601

namespace A142756

/-- `A006530(p?[A053742(n)+A017209(n)]/(1-1/2))` -/
def P17799892191247598601.Spec : Prop :=
  ∀ n, P17799892191247598601.a n = A142756 (n + 1)

end A142756

/-!
# A142757: Primes congruent to 30 mod 59.

The programs for A142757, the canonical program `A142757.P8841851707877434006` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142757 has offset 1).

The definition of A142757 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142757.anchor (n : ℕ) (hn : 1 ≤ n) : A142757 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 30) (n - 1) : ℤ)` in `Proof.A142.A142757`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142757.P8841851707877434006

`p?[59*n-29]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142757

/-- `p?[59*n-29]` -/
def P8841851707877434006.Spec : Prop :=
  ∀ n, P8841851707877434006.a n = A142757 (n + 1)

theorem P8841851707877434006.correct : P8841851707877434006.Spec := by
  intro n
  simp only [A142757, Nat.add_sub_cancel]

end A142757

/-! ## A142757.P12923249102197441005

`lcm(Δ[A008611(n)], p?[59*n+30])`
-/

namespace A142757.P12923249102197441005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A142757.P12923249102197441005

namespace A142757

/-- `lcm(Δ[A008611(n)], p?[59*n+30])` -/
def P12923249102197441005.Spec : Prop :=
  ∀ n, (P12923249102197441005.a n : ℤ) = A142757 (n + 1)

end A142757

/-! ## A142757.P10769037128459208236

`p?[59*n+30]/A064179(n+1)²`
-/

namespace A142757.P10769037128459208236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 30

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / (A064179 (n + 1) ^ 2 : ℚ)

end

end A142757.P10769037128459208236

namespace A142757

/-- `p?[59*n+30]/A064179(n+1)²` -/
def P10769037128459208236.Spec : Prop :=
  ∀ n, P10769037128459208236.a n = (A142757 (n + 1) : ℚ)

end A142757

/-! ## A142757.P7357430057620068888

`A320656(p?[59*n+30])+p?[59*n+30]`
-/

namespace A142757.P7357430057620068888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 30

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320656 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A142757.P7357430057620068888

namespace A142757

/-- `A320656(p?[59*n+30])+p?[59*n+30]` -/
def P7357430057620068888.Spec : Prop :=
  ∀ n, P7357430057620068888.a n = A142757 (n + 1)

end A142757

/-! ## A142757.P11724905312513219737

`record[A020639(30*A014601(n+1)-(n+1))]`
-/

namespace A142757.P11724905312513219737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (30 * A014601 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142757.P11724905312513219737

namespace A142757

/-- `record[A020639(30*A014601(n+1)-(n+1))]` -/
def P11724905312513219737.Spec : Prop :=
  ∀ n, P11724905312513219737.a n = A142757 (n + 1)

end A142757

/-! ## A142757.P12680079148468371597

`record[A006530(A248572(n+3)+A128470(n))]`
-/

namespace A142757.P12680079148468371597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (n + 3) + A128470 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142757.P12680079148468371597

namespace A142757

/-- `record[A006530(A248572(n+3)+A128470(n))]` -/
def P12680079148468371597.Spec : Prop :=
  ∀ n, P12680079148468371597.a n = A142757 (n + 1)

end A142757

/-! ## A142757.P14989029386920494203

`record[A020639(A248572(n+3)+A128470(n))]`
-/

namespace A142757.P14989029386920494203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A248572 (n + 3) + A128470 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142757.P14989029386920494203

namespace A142757

/-- `record[A020639(A248572(n+3)+A128470(n))]` -/
def P14989029386920494203.Spec : Prop :=
  ∀ n, P14989029386920494203.a n = A142757 (n + 1)

end A142757

/-! ## A142757.P9471225811390121296

`A299149(p?[A248572(2*n+1)+n])`
-/

namespace A142757.P9471225811390121296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142757.P9471225811390121296

namespace A142757

/-- `A299149(p?[A248572(2*n+1)+n])` -/
def P9471225811390121296.Spec : Prop :=
  ∀ n, P9471225811390121296.a n = A142757 (n + 1)

end A142757

/-! ## A142757.P10528257386139901974

`record[A006530(59*(2*n+3)+1)]`
-/

namespace A142757.P10528257386139901974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (59 * (2 * n + 3) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142757.P10528257386139901974

namespace A142757

/-- `record[A006530(59*(2*n+3)+1)]` -/
def P10528257386139901974.Spec : Prop :=
  ∀ n, P10528257386139901974.a n = A142757 (n + 1)

end A142757

/-!
# A142758: Primes congruent to 31 mod 59.

The programs for A142758, the canonical program `A142758.P2388600102352783493` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142758 has offset 1).

The definition of A142758 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142758.anchor (n : ℕ) (hn : 1 ≤ n) : A142758 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 31) (n - 1) : ℤ)` in `Proof.A142.A142758`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142758.P2388600102352783493

`p?[59*n-28]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142758

/-- `p?[59*n-28]` -/
def P2388600102352783493.Spec : Prop :=
  ∀ n, P2388600102352783493.a n = A142758 (n + 1)

theorem P2388600102352783493.correct : P2388600102352783493.Spec := by
  intro n
  simp only [A142758, Nat.add_sub_cancel]

end A142758

/-! ## A142758.P796270241907874015

`A106400(n)²*p?[A053742(n)+A017233(n)]`
-/

namespace A142758.P796270241907874015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142758.P796270241907874015

namespace A142758

/-- `A106400(n)²*p?[A053742(n)+A017233(n)]` -/
def P796270241907874015.Spec : Prop :=
  ∀ n, P796270241907874015.a n = A142758 (n + 1)

end A142758

/-! ## A142758.P16709956901458024747

`p?[A053742(n)+A017233(n)]*A038712(2*n+1)`
-/

namespace A142758.P16709956901458024747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A038712 (2 * n + 1)

end

end A142758.P16709956901458024747

namespace A142758

/-- `p?[A053742(n)+A017233(n)]*A038712(2*n+1)` -/
def P16709956901458024747.Spec : Prop :=
  ∀ n, P16709956901458024747.a n = A142758 (n + 1)

end A142758

/-! ## A142758.P16217201406584300223

`p?[A053742(n)+A017233(n)]+A001105(n+1)%2`
-/

namespace A142758.P16217201406584300223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A001105 (n + 1)) 2

end

end A142758.P16217201406584300223

namespace A142758

/-- `p?[A053742(n)+A017233(n)]+A001105(n+1)%2` -/
def P16217201406584300223.Spec : Prop :=
  ∀ n, P16217201406584300223.a n = A142758 (n + 1)

end A142758

/-! ## A142758.P4985590372776917926

`A000027(p?[A053742(n)+A017233(n)])`
-/

namespace A142758.P4985590372776917926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142758.P4985590372776917926

namespace A142758

/-- `A000027(p?[A053742(n)+A017233(n)])` -/
def P4985590372776917926.Spec : Prop :=
  ∀ n, P4985590372776917926.a n = A142758 (n + 1)

end A142758

/-! ## A142758.P1015122392014614034

`record[A020639(A128470(2*n+1)-n)]`
-/

namespace A142758.P1015122392014614034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128470 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142758.P1015122392014614034

namespace A142758

/-- `record[A020639(A128470(2*n+1)-n)]` -/
def P1015122392014614034.Spec : Prop :=
  ∀ n, P1015122392014614034.a n = A142758 (n + 1)

end A142758

/-! ## A142758.P15459194954637046498

`record[A020639(A053742(n)+A017233(n))]`
-/

namespace A142758.P15459194954637046498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 n + A017233 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142758.P15459194954637046498

namespace A142758

/-- `record[A020639(A053742(n)+A017233(n))]` -/
def P15459194954637046498.Spec : Prop :=
  ∀ n, P15459194954637046498.a n = A142758 (n + 1)

end A142758

/-! ## A142758.P10693186442669587691

`A000265(p?[A053742(n)+A017233(n)])`
-/

namespace A142758.P10693186442669587691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142758.P10693186442669587691

namespace A142758

/-- `A000265(p?[A053742(n)+A017233(n)])` -/
def P10693186442669587691.Spec : Prop :=
  ∀ n, P10693186442669587691.a n = A142758 (n + 1)

end A142758

/-! ## A142758.P10556341614898692397

`A008472(p?[A053742(n)+A017233(n)])`
-/

namespace A142758.P10556341614898692397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142758.P10556341614898692397

namespace A142758

/-- `A008472(p?[A053742(n)+A017233(n)])` -/
def P10556341614898692397.Spec : Prop :=
  ∀ n, P10556341614898692397.a n = A142758 (n + 1)

end A142758

/-! ## A142758.P13188433176100167840

`record[A006530(A248572(2*n+1)+A128470(2*n))]`
-/

namespace A142758.P13188433176100167840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (2 * n + 1) + A128470 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142758.P13188433176100167840

namespace A142758

/-- `record[A006530(A248572(2*n+1)+A128470(2*n))]` -/
def P13188433176100167840.Spec : Prop :=
  ∀ n, P13188433176100167840.a n = A142758 (n + 1)

end A142758

/-! ## A142758.P13592217785710527987

`record[A020639(A248572(2*n+1)+A128470(2*n))]`
-/

namespace A142758.P13592217785710527987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A248572 (2 * n + 1) + A128470 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142758.P13592217785710527987

namespace A142758

/-- `record[A020639(A248572(2*n+1)+A128470(2*n))]` -/
def P13592217785710527987.Spec : Prop :=
  ∀ n, P13592217785710527987.a n = A142758 (n + 1)

end A142758

/-!
# A142759: Primes congruent to 32 mod 59.

The programs for A142759, the canonical program `A142759.P14858021140169783255` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142759 has offset 1).

The definition of A142759 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142759.anchor (n : ℕ) (hn : 1 ≤ n) : A142759 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 32) (n - 1) : ℤ)` in `Proof.A142.A142759`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142759.P14858021140169783255

`p?[59*n+32]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142759

/-- `p?[59*n+32]` -/
def P14858021140169783255.Spec : Prop :=
  ∀ n, (P14858021140169783255.a n : ℤ) = A142759 (n + 1)

theorem P14858021140169783255.correct : P14858021140169783255.Spec := by
  intro n
  simp only [A142759, Nat.add_sub_cancel]

end A142759

/-! ## A142759.P4694541804961824510

`or(1, p?[A304839(n+6)-A005408(n)])`
-/

namespace A142759.P4694541804961824510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 6) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142759.P4694541804961824510

namespace A142759

/-- `or(1, p?[A304839(n+6)-A005408(n)])` -/
def P4694541804961824510.Spec : Prop :=
  ∀ n, P4694541804961824510.a n = A142759 (n + 1)

end A142759

/-! ## A142759.P5521493606524365540

`p?[A304839(n+6)-A005408(n)]%A017345(n)`
-/

namespace A142759.P5521493606524365540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 6) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017345 n)

end

end A142759.P5521493606524365540

namespace A142759

/-- `p?[A304839(n+6)-A005408(n)]%A017345(n)` -/
def P5521493606524365540.Spec : Prop :=
  ∀ n, P5521493606524365540.a n = A142759 (n + 1)

end A142759

/-! ## A142759.P10315326713358609255

`A000038(n+1)+p?[A304839(n+6)-A005408(n)]`
-/

namespace A142759.P10315326713358609255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 6) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142759.P10315326713358609255

namespace A142759

/-- `A000038(n+1)+p?[A304839(n+6)-A005408(n)]` -/
def P10315326713358609255.Spec : Prop :=
  ∀ n, P10315326713358609255.a n = A142759 (n + 1)

end A142759

/-! ## A142759.P153471985851566025

`A000027(p?[A304839(n+6)-A005408(n)])`
-/

namespace A142759.P153471985851566025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 6) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142759.P153471985851566025

namespace A142759

/-- `A000027(p?[A304839(n+6)-A005408(n)])` -/
def P153471985851566025.Spec : Prop :=
  ∀ n, P153471985851566025.a n = A142759 (n + 1)

end A142759

/-! ## A142759.P10811068665046553856

`A000265(p?[A053742(n)+A017233(n)+1])`
-/

namespace A142759.P10811068665046553856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017233 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142759.P10811068665046553856

namespace A142759

/-- `A000265(p?[A053742(n)+A017233(n)+1])` -/
def P10811068665046553856.Spec : Prop :=
  ∀ n, P10811068665046553856.a n = A142759 (n + 1)

end A142759

/-! ## A142759.P12116787528951515647

`A001414(p?[A304839(n+6)-A005408(n)])`
-/

namespace A142759.P12116787528951515647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 6) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142759.P12116787528951515647

namespace A142759

/-- `A001414(p?[A304839(n+6)-A005408(n)])` -/
def P12116787528951515647.Spec : Prop :=
  ∀ n, P12116787528951515647.a n = A142759 (n + 1)

end A142759

/-! ## A142759.P8389736015152385955

`A008472(p?[A304839(n+6)-A005408(n)])`
-/

namespace A142759.P8389736015152385955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 6) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142759.P8389736015152385955

namespace A142759

/-- `A008472(p?[A304839(n+6)-A005408(n)])` -/
def P8389736015152385955.Spec : Prop :=
  ∀ n, P8389736015152385955.a n = A142759 (n + 1)

end A142759

/-! ## A142759.P1121198575704514407

`A008475(p?[A304839(n+6)-A005408(n)])`
-/

namespace A142759.P1121198575704514407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 6) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142759.P1121198575704514407

namespace A142759

/-- `A008475(p?[A304839(n+6)-A005408(n)])` -/
def P1121198575704514407.Spec : Prop :=
  ∀ n, P1121198575704514407.a n = A142759 (n + 1)

end A142759

/-!
# A142760: Primes congruent to 33 mod 59.

The programs for A142760, the canonical program `A142760.P3684195330162948718` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142760 has offset 1).

The definition of A142760 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142760.anchor (n : ℕ) (hn : 1 ≤ n) : A142760 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 33) (n - 1) : ℤ)` in `Proof.A142.A142760`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142760.P3684195330162948718

`p?[59*n-26]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142760

/-- `p?[59*n-26]` -/
def P3684195330162948718.Spec : Prop :=
  ∀ n, P3684195330162948718.a n = A142760 (n + 1)

theorem P3684195330162948718.correct : P3684195330162948718.Spec := by
  intro n
  simp only [A142760, Nat.add_sub_cancel]

end A142760

/-! ## A142760.P2635292040618894421

`or(1, p?[A053742(n)+A017233(n)+2])`
-/

namespace A142760.P2635292040618894421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017233 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142760.P2635292040618894421

namespace A142760

/-- `or(1, p?[A053742(n)+A017233(n)+2])` -/
def P2635292040618894421.Spec : Prop :=
  ∀ n, P2635292040618894421.a n = A142760 (n + 1)

end A142760

/-! ## A142760.P18413338183233500297

`A033999(n)²*p?[A053742(n)+A017233(n)+2]`
-/

namespace A142760.P18413338183233500297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017233 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142760.P18413338183233500297

namespace A142760

/-- `A033999(n)²*p?[A053742(n)+A017233(n)+2]` -/
def P18413338183233500297.Spec : Prop :=
  ∀ n, P18413338183233500297.a n = A142760 (n + 1)

end A142760

/-! ## A142760.P13471510585488742981

`A000265(p?[A053742(n)+A017233(n)+2])`
-/

namespace A142760.P13471510585488742981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A017233 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142760.P13471510585488742981

namespace A142760

/-- `A000265(p?[A053742(n)+A017233(n)+2])` -/
def P13471510585488742981.Spec : Prop :=
  ∀ n, P13471510585488742981.a n = A142760 (n + 1)

end A142760

/-! ## A142760.P12429409168383800882

`record[A006530(A248572(n+1)+A128470(n+4))]`
-/

namespace A142760.P12429409168383800882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (n + 1) + A128470 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142760.P12429409168383800882

namespace A142760

/-- `record[A006530(A248572(n+1)+A128470(n+4))]` -/
def P12429409168383800882.Spec : Prop :=
  ∀ n, P12429409168383800882.a n = A142760 (n + 1)

end A142760

/-!
# A142761: Primes congruent to 34 mod 59.

The programs for A142761, the canonical program `A142761.P7285316017810830557` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142761 has offset 1).

The definition of A142761 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142761.anchor (n : ℕ) (hn : 1 ≤ n) : A142761 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 34) (n - 1) : ℤ)` in `Proof.A142.A142761`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142761.P7285316017810830557

`p?[59*n-25]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142761

/-- `p?[59*n-25]` -/
def P7285316017810830557.Spec : Prop :=
  ∀ n, P7285316017810830557.a n = A142761 (n + 1)

theorem P7285316017810830557.correct : P7285316017810830557.Spec := by
  intro n
  simp only [A142761, Nat.add_sub_cancel]

end A142761

/-! ## A142761.P7179434881827837647

`or(1, p?[A305068(n+2)+A016885(n)])`
-/

namespace A142761.P7179434881827837647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 2) + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142761.P7179434881827837647

namespace A142761

/-- `or(1, p?[A305068(n+2)+A016885(n)])` -/
def P7179434881827837647.Spec : Prop :=
  ∀ n, P7179434881827837647.a n = A142761 (n + 1)

end A142761

/-! ## A142761.P17778033228440375103

`or(1, p?[A248572(n+1)+A139249(n+1)-2])`
-/

namespace A142761.P17778033228440375103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) + A139249 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142761.P17778033228440375103

namespace A142761

/-- `or(1, p?[A248572(n+1)+A139249(n+1)-2])` -/
def P17778033228440375103.Spec : Prop :=
  ∀ n, P17778033228440375103.a n = A142761 (n + 1)

end A142761

/-! ## A142761.P16024663175108541341

`record[A006530(A304609(n+2)+4*n+3)]`
-/

namespace A142761.P16024663175108541341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304609 (n + 2) + (4 * n + 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142761.P16024663175108541341

namespace A142761

/-- `record[A006530(A304609(n+2)+4*n+3)]` -/
def P16024663175108541341.Spec : Prop :=
  ∀ n, P16024663175108541341.a n = A142761 (n + 1)

end A142761

/-! ## A142761.P18196269330503094180

`record[A020639(A304840(n+4)+A017041(n))]`
-/

namespace A142761.P18196269330503094180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304840 (n + 4) + A017041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142761.P18196269330503094180

namespace A142761

/-- `record[A020639(A304840(n+4)+A017041(n))]` -/
def P18196269330503094180.Spec : Prop :=
  ∀ n, P18196269330503094180.a n = A142761 (n + 1)

end A142761

/-! ## A142761.P1754761616094141617

`record[A006530(A248572(n+1)+A128470(n+6))]`
-/

namespace A142761.P1754761616094141617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (n + 1) + A128470 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142761.P1754761616094141617

namespace A142761

/-- `record[A006530(A248572(n+1)+A128470(n+6))]` -/
def P1754761616094141617.Spec : Prop :=
  ∀ n, P1754761616094141617.a n = A142761 (n + 1)

end A142761

/-!
# A142762: Primes congruent to 35 mod 59.

The programs for A142762, the canonical program `A142762.P10577382081517463489` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142762 has offset 1).

The definition of A142762 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142762.anchor (n : ℕ) (hn : 1 ≤ n) : A142762 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 35) (n - 1) : ℤ)` in `Proof.A142.A142762`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142762.P10577382081517463489

`p?[59*n-24]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142762

/-- `p?[59*n-24]` -/
def P10577382081517463489.Spec : Prop :=
  ∀ n, P10577382081517463489.a n = A142762 (n + 1)

theorem P10577382081517463489.correct : P10577382081517463489.Spec := by
  intro n
  simp only [A142762, Nat.add_sub_cancel]

end A142762

/-! ## A142762.P2684387442738520290

`lcm(2, p?[A249674(n+9)+A248572(n)]+1)-1`
-/

namespace A142762.P2684387442738520290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (n + 9) + A248572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1) : ℤ) - 1

end

end A142762.P2684387442738520290

namespace A142762

/-- `lcm(2, p?[A249674(n+9)+A248572(n)]+1)-1` -/
def P2684387442738520290.Spec : Prop :=
  ∀ n, P2684387442738520290.a n = A142762 (n + 1)

end A142762

/-! ## A142762.P5346621482152144198

`A000007(n+1)+p?[A248572(n+3)+A139222(n+7)]`
-/

namespace A142762.P5346621482152144198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 3) + A139222 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142762.P5346621482152144198

namespace A142762

/-- `A000007(n+1)+p?[A248572(n+3)+A139222(n+7)]` -/
def P5346621482152144198.Spec : Prop :=
  ∀ n, P5346621482152144198.a n = A142762 (n + 1)

end A142762

/-! ## A142762.P10968794511769439176

`record[A006530(A248572(n+3)+A139222(n+7))]`
-/

namespace A142762.P10968794511769439176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (n + 3) + A139222 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142762.P10968794511769439176

namespace A142762

/-- `record[A006530(A248572(n+3)+A139222(n+7))]` -/
def P10968794511769439176.Spec : Prop :=
  ∀ n, P10968794511769439176.a n = A142762 (n + 1)

end A142762

/-! ## A142762.P5478711963026057470

`A006530(2*p?[A249674(n+9)+A248572(n)])`
-/

namespace A142762.P5478711963026057470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (n + 9) + A248572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142762.P5478711963026057470

namespace A142762

/-- `A006530(2*p?[A249674(n+9)+A248572(n)])` -/
def P5478711963026057470.Spec : Prop :=
  ∀ n, P5478711963026057470.a n = A142762 (n + 1)

end A142762

/-!
# A142763: Primes congruent to 36 mod 59.

The programs for A142763, the canonical program `A142763.P10451423582178210377` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142763 has offset 1).

The definition of A142763 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142763.anchor (n : ℕ) (hn : 1 ≤ n) : A142763 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 36) (n - 1) : ℤ)` in `Proof.A142.A142763`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142763.P10451423582178210377

`p?[59*n-23]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142763

/-- `p?[59*n-23]` -/
def P10451423582178210377.Spec : Prop :=
  ∀ n, P10451423582178210377.a n = A142763 (n + 1)

theorem P10451423582178210377.correct : P10451423582178210377.Spec := by
  intro n
  simp only [A142763, Nat.add_sub_cancel]

end A142763

/-! ## A142763.P15121576026012432981

`or(1, p?[A304609(n+1)+A016813(n)])`
-/

namespace A142763.P15121576026012432981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142763.P15121576026012432981

namespace A142763

/-- `or(1, p?[A304609(n+1)+A016813(n)])` -/
def P15121576026012432981.Spec : Prop :=
  ∀ n, P15121576026012432981.a n = A142763 (n + 1)

end A142763

/-! ## A142763.P14367098010137340598

`p?[A304609(n+1)+A016813(n)]%A016972(n)`
-/

namespace A142763.P14367098010137340598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016972 n)

end

end A142763.P14367098010137340598

namespace A142763

/-- `p?[A304609(n+1)+A016813(n)]%A016972(n)` -/
def P14367098010137340598.Spec : Prop :=
  ∀ n, P14367098010137340598.a n = A142763 (n + 1)

end A142763

/-! ## A142763.P15374656692099609847

`A266303(2*n)²*p?[A304609(n+1)+A016813(n)]`
-/

namespace A142763.P15374656692099609847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 (2 * n) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142763.P15374656692099609847

namespace A142763

/-- `A266303(2*n)²*p?[A304609(n+1)+A016813(n)]` -/
def P15374656692099609847.Spec : Prop :=
  ∀ n, P15374656692099609847.a n = A142763 (n + 1)

end A142763

/-! ## A142763.P10874216009236516494

`p?[A304609(n+1)+A016813(n)]*A267354(2*n+3)`
-/

namespace A142763.P10874216009236516494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A267354 (2 * n + 3)

end

end A142763.P10874216009236516494

namespace A142763

/-- `p?[A304609(n+1)+A016813(n)]*A267354(2*n+3)` -/
def P10874216009236516494.Spec : Prop :=
  ∀ n, P10874216009236516494.a n = A142763 (n + 1)

end A142763

/-! ## A142763.P6605038977535201867

`A007913(p?[A304609(n+1)+A016813(n)])`
-/

namespace A142763.P6605038977535201867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142763.P6605038977535201867

namespace A142763

/-- `A007913(p?[A304609(n+1)+A016813(n)])` -/
def P6605038977535201867.Spec : Prop :=
  ∀ n, P6605038977535201867.a n = A142763 (n + 1)

end A142763

/-! ## A142763.P15347064593958008759

`A125746(p?[A304609(n+1)+A016813(n)])`
-/

namespace A142763.P15347064593958008759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304609 (n + 1) + A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142763.P15347064593958008759

namespace A142763

/-- `A125746(p?[A304609(n+1)+A016813(n)])` -/
def P15347064593958008759.Spec : Prop :=
  ∀ n, P15347064593958008759.a n = A142763 (n + 1)

end A142763

/-!
# A142764: Primes congruent to 37 mod 59.

The programs for A142764, the canonical program `A142764.P607253970076106302` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142764 has offset 1).

The definition of A142764 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142764.anchor (n : ℕ) (hn : 1 ≤ n) : A142764 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 37) (n - 1) : ℤ)` in `Proof.A142.A142764`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142764.P607253970076106302

`p?[59*n-22]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142764

/-- `p?[59*n-22]` -/
def P607253970076106302.Spec : Prop :=
  ∀ n, P607253970076106302.a n = A142764 (n + 1)

theorem P607253970076106302.correct : P607253970076106302.Spec := by
  intro n
  simp only [A142764, Nat.add_sub_cancel]

end A142764

/-! ## A142764.P10208645376049563458

`floor(sqrt(p?[59*n+37]²+4))`
-/

namespace A142764.P10208645376049563458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 4)

end

end A142764.P10208645376049563458

namespace A142764

/-- `floor(sqrt(p?[59*n+37]²+4))` -/
def P10208645376049563458.Spec : Prop :=
  ∀ n, (P10208645376049563458.a n : ℤ) = A142764 (n + 1)

end A142764

/-! ## A142764.P533848459734912462

`record[A020639(A053742(n)+A017209(n)+8)]`
-/

namespace A142764.P533848459734912462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 n + A017209 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142764.P533848459734912462

namespace A142764

/-- `record[A020639(A053742(n)+A017209(n)+8)]` -/
def P533848459734912462.Spec : Prop :=
  ∀ n, P533848459734912462.a n = A142764 (n + 1)

end A142764

/-! ## A142764.P3835769389068374869

`record[A020639(A304157(n+1)+A257645(n)-1)]`
-/

namespace A142764.P3835769389068374869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304157 (n + 1) + A257645 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142764.P3835769389068374869

namespace A142764

/-- `record[A020639(A304157(n+1)+A257645(n)-1)]` -/
def P3835769389068374869.Spec : Prop :=
  ∀ n, P3835769389068374869.a n = A142764 (n + 1)

end A142764

/-! ## A142764.P3227062424692472987

`record[A020639(A305068(n+1)+A016885(n)-2)]`
-/

namespace A142764.P3227062424692472987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305068 (n + 1) + A016885 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142764.P3227062424692472987

namespace A142764

/-- `record[A020639(A305068(n+1)+A016885(n)-2)]` -/
def P3227062424692472987.Spec : Prop :=
  ∀ n, P3227062424692472987.a n = A142764 (n + 1)

end A142764

/-!
# A142765: Primes congruent to 38 mod 59.

The programs for A142765, the canonical program `A142765.P15446213454933447653` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142765 has offset 1).

The definition of A142765 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142765.anchor (n : ℕ) (hn : 1 ≤ n) : A142765 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 38) (n - 1) : ℤ)` in `Proof.A142.A142765`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142765.P15446213454933447653

`p?[59*n-21]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142765

/-- `p?[59*n-21]` -/
def P15446213454933447653.Spec : Prop :=
  ∀ n, P15446213454933447653.a n = A142765 (n + 1)

theorem P15446213454933447653.correct : P15446213454933447653.Spec := by
  intro n
  simp only [A142765, Nat.add_sub_cancel]

end A142765

/-! ## A142765.P9888380218800075589

`or(1, p?[A304157(n+1)+A257645(n)])`
-/

namespace A142765.P9888380218800075589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A257645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142765.P9888380218800075589

namespace A142765

/-- `or(1, p?[A304157(n+1)+A257645(n)])` -/
def P9888380218800075589.Spec : Prop :=
  ∀ n, P9888380218800075589.a n = A142765 (n + 1)

end A142765

/-! ## A142765.P5108385262144026730

`A000035(2*n)+p?[A304157(n+1)+A257645(n)]`
-/

namespace A142765.P5108385262144026730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A257645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142765.P5108385262144026730

namespace A142765

/-- `A000035(2*n)+p?[A304157(n+1)+A257645(n)]` -/
def P5108385262144026730.Spec : Prop :=
  ∀ n, P5108385262144026730.a n = A142765 (n + 1)

end A142765

/-! ## A142765.P18378255730366822673

`p?[A304157(n+1)+A257645(n)]%A154514(n+1)`
-/

namespace A142765.P18378255730366822673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A257645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A154514 (n + 1))

end

end A142765.P18378255730366822673

namespace A142765

/-- `p?[A304157(n+1)+A257645(n)]%A154514(n+1)` -/
def P18378255730366822673.Spec : Prop :=
  ∀ n, P18378255730366822673.a n = A142765 (n + 1)

end A142765

/-! ## A142765.P2059718002185395534

`A008836(n+1)²*p?[A304157(n+1)+A257645(n)]`
-/

namespace A142765.P2059718002185395534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A257645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142765.P2059718002185395534

namespace A142765

/-- `A008836(n+1)²*p?[A304157(n+1)+A257645(n)]` -/
def P2059718002185395534.Spec : Prop :=
  ∀ n, P2059718002185395534.a n = A142765 (n + 1)

end A142765

/-! ## A142765.P14930568833323448417

`A000027(p?[A304157(n+1)+A257645(n)])`
-/

namespace A142765.P14930568833323448417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A257645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142765.P14930568833323448417

namespace A142765

/-- `A000027(p?[A304157(n+1)+A257645(n)])` -/
def P14930568833323448417.Spec : Prop :=
  ∀ n, P14930568833323448417.a n = A142765 (n + 1)

end A142765

/-! ## A142765.P6045281866039318017

`A000265(p?[A304157(n+1)+A257645(n)])`
-/

namespace A142765.P6045281866039318017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A257645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142765.P6045281866039318017

namespace A142765

/-- `A000265(p?[A304157(n+1)+A257645(n)])` -/
def P6045281866039318017.Spec : Prop :=
  ∀ n, P6045281866039318017.a n = A142765 (n + 1)

end A142765

/-! ## A142765.P17896658421397347544

`A001414(p?[A304157(n+1)+A257645(n)])`
-/

namespace A142765.P17896658421397347544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A257645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142765.P17896658421397347544

namespace A142765

/-- `A001414(p?[A304157(n+1)+A257645(n)])` -/
def P17896658421397347544.Spec : Prop :=
  ∀ n, P17896658421397347544.a n = A142765 (n + 1)

end A142765

/-! ## A142765.P12040749319927972827

`A008472(p?[A304157(n+1)+A257645(n)])`
-/

namespace A142765.P12040749319927972827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) + A257645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142765.P12040749319927972827

namespace A142765

/-- `A008472(p?[A304157(n+1)+A257645(n)])` -/
def P12040749319927972827.Spec : Prop :=
  ∀ n, P12040749319927972827.a n = A142765 (n + 1)

end A142765

/-! ## A142765.P11197445739544054829

`record[A020639(A304157(n+2)+A257645(n+1))]`
-/

namespace A142765.P11197445739544054829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304157 (n + 2) + A257645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142765.P11197445739544054829

namespace A142765

/-- `record[A020639(A304157(n+2)+A257645(n+1))]` -/
def P11197445739544054829.Spec : Prop :=
  ∀ n, P11197445739544054829.a n = A142765 (n + 1)

end A142765

/-!
# A142766: Primes congruent to 39 mod 59.

The programs for A142766, the canonical program `A142766.P15834970343129611408` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142766 has offset 1).

The definition of A142766 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142766.anchor (n : ℕ) (hn : 1 ≤ n) : A142766 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 39) (n - 1) : ℤ)` in `Proof.A142.A142766`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142766.P15834970343129611408

`p?[59*n-20]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142766

/-- `p?[59*n-20]` -/
def P15834970343129611408.Spec : Prop :=
  ∀ n, P15834970343129611408.a n = A142766 (n + 1)

theorem P15834970343129611408.correct : P15834970343129611408.Spec := by
  intro n
  simp only [A142766, Nat.add_sub_cancel]

end A142766

/-! ## A142766.P13580125219943299010

`p?[A305068(n+1)+A016885(n)]%A215814(n)`
-/

namespace A142766.P13580125219943299010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A215814 n)

end

end A142766.P13580125219943299010

namespace A142766

/-- `p?[A305068(n+1)+A016885(n)]%A215814(n)` -/
def P13580125219943299010.Spec : Prop :=
  ∀ n, P13580125219943299010.a n = A142766 (n + 1)

end A142766

/-! ## A142766.P13765565717519064204

`A000007(n+1)+p?[A305068(n+1)+A016885(n)]`
-/

namespace A142766.P13765565717519064204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142766.P13765565717519064204

namespace A142766

/-- `A000007(n+1)+p?[A305068(n+1)+A016885(n)]` -/
def P13765565717519064204.Spec : Prop :=
  ∀ n, P13765565717519064204.a n = A142766 (n + 1)

end A142766

/-! ## A142766.P12382657760179683934

`(-1)^A153733(n)*p?[A305068(n+1)+A016885(n)]`
-/

namespace A142766.P12382657760179683934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A016885 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A153733 n : ℤ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A142766.P12382657760179683934

namespace A142766

/-- `(-1)^A153733(n)*p?[A305068(n+1)+A016885(n)]` -/
def P12382657760179683934.Spec : Prop :=
  ∀ n, P12382657760179683934.a n = (A142766 (n + 1) : ℚ)

end A142766

/-! ## A142766.P7287027735199295181

`A000027(p?[A305068(n+1)+A016885(n)])`
-/

namespace A142766.P7287027735199295181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142766.P7287027735199295181

namespace A142766

/-- `A000027(p?[A305068(n+1)+A016885(n)])` -/
def P7287027735199295181.Spec : Prop :=
  ∀ n, P7287027735199295181.a n = A142766 (n + 1)

end A142766

/-! ## A142766.P18275892721986897409

`A000265(p?[A305069(n+1)+n-6])`
-/

namespace A142766.P18275892721986897409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305069 (n + 1) + (n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142766.P18275892721986897409

namespace A142766

/-- `A000265(p?[A305069(n+1)+n-6])` -/
def P18275892721986897409.Spec : Prop :=
  ∀ n, P18275892721986897409.a n = A142766 (n + 1)

end A142766

/-! ## A142766.P8814266505357894176

`A000265(p?[A305068(n+1)+A016885(n)])`
-/

namespace A142766.P8814266505357894176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142766.P8814266505357894176

namespace A142766

/-- `A000265(p?[A305068(n+1)+A016885(n)])` -/
def P8814266505357894176.Spec : Prop :=
  ∀ n, P8814266505357894176.a n = A142766 (n + 1)

end A142766

/-! ## A142766.P5957731997599531956

`A001414(p?[A305068(n+1)+A016885(n)])`
-/

namespace A142766.P5957731997599531956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142766.P5957731997599531956

namespace A142766

/-- `A001414(p?[A305068(n+1)+A016885(n)])` -/
def P5957731997599531956.Spec : Prop :=
  ∀ n, P5957731997599531956.a n = A142766 (n + 1)

end A142766

/-!
# A142767: Primes congruent to 40 mod 59.

The programs for A142767, the canonical program `A142767.P10349622226339058301` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142767 has offset 1).

The definition of A142767 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142767.anchor (n : ℕ) (hn : 1 ≤ n) : A142767 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 40) (n - 1) : ℤ)` in `Proof.A142.A142767`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142767.P10349622226339058301

`p?[59*n-19]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142767

/-- `p?[59*n-19]` -/
def P10349622226339058301.Spec : Prop :=
  ∀ n, P10349622226339058301.a n = A142767 (n + 1)

theorem P10349622226339058301.correct : P10349622226339058301.Spec := by
  intro n
  simp only [A142767, Nat.add_sub_cancel]

end A142767

/-! ## A142767.P9502229699903802426

`or(1, p?[A139280(n+2)+A135628(n)])`
-/

namespace A142767.P9502229699903802426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 2) + A135628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142767.P9502229699903802426

namespace A142767

/-- `or(1, p?[A139280(n+2)+A135628(n)])` -/
def P9502229699903802426.Spec : Prop :=
  ∀ n, P9502229699903802426.a n = A142767 (n + 1)

end A142767

/-! ## A142767.P12448878948617575868

`p?[A304839(n+10)-A005408(n)]%A029581(n+5)²`
-/

namespace A142767.P12448878948617575868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 10) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A029581 (n + 5) ^ 2)

end

end A142767.P12448878948617575868

namespace A142767

/-- `p?[A304839(n+10)-A005408(n)]%A029581(n+5)²` -/
def P12448878948617575868.Spec : Prop :=
  ∀ n, P12448878948617575868.a n = A142767 (n + 1)

end A142767

/-! ## A142767.P11042294316309187536

`A000027(p?[A017425(5*n+3)+4*(n+1)])`
-/

namespace A142767.P11042294316309187536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 (5 * n + 3) + (4 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142767.P11042294316309187536

namespace A142767

/-- `A000027(p?[A017425(5*n+3)+4*(n+1)])` -/
def P11042294316309187536.Spec : Prop :=
  ∀ n, P11042294316309187536.a n = A142767 (n + 1)

end A142767

/-! ## A142767.P8837946136854135623

`record[A006530(A304839(n+10)-A005408(n))]`
-/

namespace A142767.P8837946136854135623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304839 (n + 10) - A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142767.P8837946136854135623

namespace A142767

/-- `record[A006530(A304839(n+10)-A005408(n))]` -/
def P8837946136854135623.Spec : Prop :=
  ∀ n, P8837946136854135623.a n = A142767 (n + 1)

end A142767

/-! ## A142767.P10864043748806027458

`record[A020639(A304839(n+10)-A005408(n))]`
-/

namespace A142767.P10864043748806027458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304839 (n + 10) - A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142767.P10864043748806027458

namespace A142767

/-- `record[A020639(A304839(n+10)-A005408(n))]` -/
def P10864043748806027458.Spec : Prop :=
  ∀ n, P10864043748806027458.a n = A142767 (n + 1)

end A142767

/-!
# A142768: Primes congruent to 41 mod 59.

The programs for A142768, the canonical program `A142768.P16711511557012601460` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142768 has offset 1).

The definition of A142768 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142768.anchor (n : ℕ) (hn : 1 ≤ n) : A142768 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 41) (n - 1) : ℤ)` in `Proof.A142.A142768`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142768.P16711511557012601460

`p?[59*n-18]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142768

/-- `p?[59*n-18]` -/
def P16711511557012601460.Spec : Prop :=
  ∀ n, P16711511557012601460.a n = A142768 (n + 1)

theorem P16711511557012601460.correct : P16711511557012601460.Spec := by
  intro n
  simp only [A142768, Nat.add_sub_cancel]

end A142768

/-! ## A142768.P16034944796970178703

`record[A020639(A305069(n+1)+n-4)]`
-/

namespace A142768.P16034944796970178703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305069 (n + 1) + ((n : ℤ) - 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142768.P16034944796970178703

namespace A142768

/-- `record[A020639(A305069(n+1)+n-4)]` -/
def P16034944796970178703.Spec : Prop :=
  ∀ n, P16034944796970178703.a n = A142768 (n + 1)

end A142768

/-! ## A142768.P8782099597823814651

`record[A020639((59*n+42)*A007318(C(2, n))^n-1)]`
-/

namespace A142768.P8782099597823814651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((59 * n + 42 : ℤ) * A007318 (Nat.choose 2 n) ^ n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142768.P8782099597823814651

namespace A142768

/-- `record[A020639((59*n+42)*A007318(C(2, n))^n-1)]` -/
def P8782099597823814651.Spec : Prop :=
  ∀ n, P8782099597823814651.a n = A142768 (n + 1)

end A142768

/-! ## A142768.P3749622150569851082

`record[A020639(A305068(n+1)+A016885(n)+2)]`
-/

namespace A142768.P3749622150569851082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305068 (n + 1) + A016885 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142768.P3749622150569851082

namespace A142768

/-- `record[A020639(A305068(n+1)+A016885(n)+2)]` -/
def P3749622150569851082.Spec : Prop :=
  ∀ n, P3749622150569851082.a n = A142768 (n + 1)

end A142768

/-! ## A142768.P17150963097726946253

`record[A020639(A304157(n+1)+A257645(n)+3)]`
-/

namespace A142768.P17150963097726946253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304157 (n + 1) + A257645 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142768.P17150963097726946253

namespace A142768

/-- `record[A020639(A304157(n+1)+A257645(n)+3)]` -/
def P17150963097726946253.Spec : Prop :=
  ∀ n, P17150963097726946253.a n = A142768 (n + 1)

end A142768

/-! ## A142768.P7111758750250792067

`record[p?[A318518(59*n+23)]]`
-/

namespace A142768.P7111758750250792067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (59 * n + 23)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142768.P7111758750250792067

namespace A142768

/-- `record[p?[A318518(59*n+23)]]` -/
def P7111758750250792067.Spec : Prop :=
  ∀ n, P7111758750250792067.a n = A142768 (n + 1)

end A142768

/-!
# A142769: Primes congruent to 42 mod 59.

The programs for A142769, the canonical program `A142769.P13463393631795004344` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142769 has offset 1).

The definition of A142769 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142769.anchor (n : ℕ) (hn : 1 ≤ n) : A142769 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 42) (n - 1) : ℤ)` in `Proof.A142.A142769`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142769.P13463393631795004344

`p?[59*n+42]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142769

/-- `p?[59*n+42]` -/
def P13463393631795004344.Spec : Prop :=
  ∀ n, (P13463393631795004344.a n : ℤ) = A142769 (n + 1)

theorem P13463393631795004344.correct : P13463393631795004344.Spec := by
  intro n
  simp only [A142769, Nat.add_sub_cancel]

end A142769

/-! ## A142769.P12559138328631082052

`A000007((3-(-1)^n)²)+p?[A241746(n+1)-(n+1)]`
-/

namespace A142769.P12559138328631082052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241746 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((3 - (-1) ^ n) ^ 2).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142769.P12559138328631082052

namespace A142769

/-- `A000007((3-(-1)^n)²)+p?[A241746(n+1)-(n+1)]` -/
def P12559138328631082052.Spec : Prop :=
  ∀ n, P12559138328631082052.a n = A142769 (n + 1)

end A142769

/-! ## A142769.P18229319794511718043

`A036987(A139611(n)-1)+p?[A241746(n+1)-(n+1)]`
-/

namespace A142769.P18229319794511718043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241746 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A139611 n - 1).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142769.P18229319794511718043

namespace A142769

/-- `A036987(A139611(n)-1)+p?[A241746(n+1)-(n+1)]` -/
def P18229319794511718043.Spec : Prop :=
  ∀ n, P18229319794511718043.a n = A142769 (n + 1)

end A142769

/-! ## A142769.P8266806245122805705

`A000027(p?[A241746(n+1)-(n+1)])`
-/

namespace A142769.P8266806245122805705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241746 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142769.P8266806245122805705

namespace A142769

/-- `A000027(p?[A241746(n+1)-(n+1)])` -/
def P8266806245122805705.Spec : Prop :=
  ∀ n, P8266806245122805705.a n = A142769 (n + 1)

end A142769

/-! ## A142769.P2231549341164705741

`A000027(p?[A082369(n+1)-A032742(n+1)])`
-/

namespace A142769.P2231549341164705741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142769.P2231549341164705741

namespace A142769

/-- `A000027(p?[A082369(n+1)-A032742(n+1)])` -/
def P2231549341164705741.Spec : Prop :=
  ∀ n, P2231549341164705741.a n = A142769 (n + 1)

end A142769

/-! ## A142769.P18088494203400721439

`A007913(p?[A082369(n+1)-A032742(n+1)])`
-/

namespace A142769.P18088494203400721439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) - A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142769.P18088494203400721439

namespace A142769

/-- `A007913(p?[A082369(n+1)-A032742(n+1)])` -/
def P18088494203400721439.Spec : Prop :=
  ∀ n, P18088494203400721439.a n = A142769 (n + 1)

end A142769

/-! ## A142769.P647634987988303379

`record[A006530(A139264(n+2)+A008606(2*n+1))]`
-/

namespace A142769.P647634987988303379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139264 (n + 2) + A008606 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142769.P647634987988303379

namespace A142769

/-- `record[A006530(A139264(n+2)+A008606(2*n+1))]` -/
def P647634987988303379.Spec : Prop :=
  ∀ n, P647634987988303379.a n = A142769 (n + 1)

end A142769

/-!
# A142770: Primes congruent to 43 mod 59.

The programs for A142770, the canonical program `A142770.P2893549591978601174` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142770 has offset 1).

The definition of A142770 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142770.anchor (n : ℕ) (hn : 1 ≤ n) : A142770 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 43) (n - 1) : ℤ)` in `Proof.A142.A142770`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142770.P2893549591978601174

`p?[59*n-16]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142770

/-- `p?[59*n-16]` -/
def P2893549591978601174.Spec : Prop :=
  ∀ n, P2893549591978601174.a n = A142770 (n + 1)

theorem P2893549591978601174.correct : P2893549591978601174.Spec := by
  intro n
  simp only [A142770, Nat.add_sub_cancel]

end A142770

/-! ## A142770.P17253466750132813001

`record[A006530(A305069(n+1)+n-2)]`
-/

namespace A142770.P17253466750132813001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A305069 (n + 1) + ((n : ℤ) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142770.P17253466750132813001

namespace A142770

/-- `record[A006530(A305069(n+1)+n-2)]` -/
def P17253466750132813001.Spec : Prop :=
  ∀ n, P17253466750132813001.a n = A142770 (n + 1)

end A142770

/-! ## A142770.P6584406352102936367

`A000265(p?[A305069(n+1)+n-2])`
-/

namespace A142770.P6584406352102936367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305069 (n + 1) + (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142770.P6584406352102936367

namespace A142770

/-- `A000265(p?[A305069(n+1)+n-2])` -/
def P6584406352102936367.Spec : Prop :=
  ∀ n, P6584406352102936367.a n = A142770 (n + 1)

end A142770

/-! ## A142770.P7522114631813932688

`record[A001414(A082369(2*(n+1))-n)]`
-/

namespace A142770.P7522114631813932688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A082369 (2 * (n + 1)) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142770.P7522114631813932688

namespace A142770

/-- `record[A001414(A082369(2*(n+1))-n)]` -/
def P7522114631813932688.Spec : Prop :=
  ∀ n, P7522114631813932688.a n = A142770 (n + 1)

end A142770

/-! ## A142770.P8276018650108561638

`record[A006530(A082369(2*(n+1))-n)]`
-/

namespace A142770.P8276018650108561638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082369 (2 * (n + 1)) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142770.P8276018650108561638

namespace A142770

/-- `record[A006530(A082369(2*(n+1))-n)]` -/
def P8276018650108561638.Spec : Prop :=
  ∀ n, P8276018650108561638.a n = A142770 (n + 1)

end A142770

/-! ## A142770.P12574017477465935703

`record[A020639(A082369(2*(n+1))-n)]`
-/

namespace A142770.P12574017477465935703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (2 * (n + 1)) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142770.P12574017477465935703

namespace A142770

/-- `record[A020639(A082369(2*(n+1))-n)]` -/
def P12574017477465935703.Spec : Prop :=
  ∀ n, P12574017477465935703.a n = A142770 (n + 1)

end A142770

/-! ## A142770.P5154712278855869518

`record[A006530(abs(A304839(n+1)+18-2*n)+2)]`
-/

namespace A142770.P5154712278855869518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (|A304839 (n + 1) + 18 - (2 * n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142770.P5154712278855869518

namespace A142770

/-- `record[A006530(abs(A304839(n+1)+18-2*n)+2)]` -/
def P5154712278855869518.Spec : Prop :=
  ∀ n, P5154712278855869518.a n = A142770 (n + 1)

end A142770

/-! ## A142770.P7112596973076208996

`record[A006530(A239128(n+1)+A154266(n))]`
-/

namespace A142770.P7112596973076208996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A239128 (n + 1) + A154266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142770.P7112596973076208996

namespace A142770

/-- `record[A006530(A239128(n+1)+A154266(n))]` -/
def P7112596973076208996.Spec : Prop :=
  ∀ n, P7112596973076208996.a n = A142770 (n + 1)

end A142770

/-! ## A142770.P12889113958067057513

`A007913(p?[A239128(n+1)+A154266(n)])`
-/

namespace A142770.P12889113958067057513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142770.P12889113958067057513

namespace A142770

/-- `A007913(p?[A239128(n+1)+A154266(n)])` -/
def P12889113958067057513.Spec : Prop :=
  ∀ n, P12889113958067057513.a n = A142770 (n + 1)

end A142770

/-! ## A142770.P14846604788038074541

`A008475(p?[A239128(n+1)+A154266(n)])`
-/

namespace A142770.P14846604788038074541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A154266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142770.P14846604788038074541

namespace A142770

/-- `A008475(p?[A239128(n+1)+A154266(n)])` -/
def P14846604788038074541.Spec : Prop :=
  ∀ n, P14846604788038074541.a n = A142770 (n + 1)

end A142770

/-!
# A142771: Primes congruent to 44 mod 59.

The programs for A142771, the canonical program `A142771.P10920528627363896590` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142771 has offset 1).

The definition of A142771 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142771.anchor (n : ℕ) (hn : 1 ≤ n) : A142771 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 44) (n - 1) : ℤ)` in `Proof.A142.A142771`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142771.P10920528627363896590

`p?[59*n-15]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142771

/-- `p?[59*n-15]` -/
def P10920528627363896590.Spec : Prop :=
  ∀ n, P10920528627363896590.a n = A142771 (n + 1)

theorem P10920528627363896590.correct : P10920528627363896590.Spec := by
  intro n
  simp only [A142771, Nat.add_sub_cancel]

end A142771

/-! ## A142771.P789927748806147101

`A000027(p?[xor(1, 59*n+42)+3])`
-/

namespace A142771.P789927748806147101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (59 * n + 42) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142771.P789927748806147101

namespace A142771

/-- `A000027(p?[xor(1, 59*n+42)+3])` -/
def P789927748806147101.Spec : Prop :=
  ∀ n, P789927748806147101.a n = A142771 (n + 1)

end A142771

/-! ## A142771.P10471051372553074037

`record[A020639(A082369(2*(n+1)+2)-n)]`
-/

namespace A142771.P10471051372553074037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (2 * (n + 1) + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142771.P10471051372553074037

namespace A142771

/-- `record[A020639(A082369(2*(n+1)+2)-n)]` -/
def P10471051372553074037.Spec : Prop :=
  ∀ n, P10471051372553074037.a n = A142771 (n + 1)

end A142771

/-! ## A142771.P9811685008703888609

`A000007((n+1)²)+p?[A241746(n+1)+1-n]`
-/

namespace A142771.P9811685008703888609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241746 (n + 1) + 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1) ^ 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142771.P9811685008703888609

namespace A142771

/-- `A000007((n+1)²)+p?[A241746(n+1)+1-n]` -/
def P9811685008703888609.Spec : Prop :=
  ∀ n, P9811685008703888609.a n = A142771 (n + 1)

end A142771

/-! ## A142771.P4579089915590358396

`record[A014963(A241746(n+2)-n)]`
-/

namespace A142771.P4579089915590358396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A241746 (n + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142771.P4579089915590358396

namespace A142771

/-- `record[A014963(A241746(n+2)-n)]` -/
def P4579089915590358396.Spec : Prop :=
  ∀ n, P4579089915590358396.a n = A142771 (n + 1)

end A142771

/-!
# A142772: Primes congruent to 45 mod 59.

The programs for A142772, the canonical program `A142772.P9868224480306720378` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142772 has offset 1).

The definition of A142772 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142772.anchor (n : ℕ) (hn : 1 ≤ n) : A142772 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 45) (n - 1) : ℤ)` in `Proof.A142.A142772`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142772.P9868224480306720378

`p?[59*n-14]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142772

/-- `p?[59*n-14]` -/
def P9868224480306720378.Spec : Prop :=
  ∀ n, P9868224480306720378.a n = A142772 (n + 1)

theorem P9868224480306720378.correct : P9868224480306720378.Spec := by
  intro n
  simp only [A142772, Nat.add_sub_cancel]

end A142772

/-! ## A142772.P4671510549878856715

`p?[A305069(n+1)+n]%A017370(n)`
-/

namespace A142772.P4671510549878856715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305069 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017370 n)

end

end A142772.P4671510549878856715

namespace A142772

/-- `p?[A305069(n+1)+n]%A017370(n)` -/
def P4671510549878856715.Spec : Prop :=
  ∀ n, P4671510549878856715.a n = A142772 (n + 1)

end A142772

/-! ## A142772.P17469080811875489230

`A059841(2*n+1)+p?[A305069(n+1)+n]`
-/

namespace A142772.P17469080811875489230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305069 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142772.P17469080811875489230

namespace A142772

/-- `A059841(2*n+1)+p?[A305069(n+1)+n]` -/
def P17469080811875489230.Spec : Prop :=
  ∀ n, P17469080811875489230.a n = A142772 (n + 1)

end A142772

/-! ## A142772.P11141285702448523620

`A014963(A008602(n+1))*p?[A305069(n+1)+n]`
-/

namespace A142772.P11141285702448523620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305069 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008602 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142772.P11141285702448523620

namespace A142772

/-- `A014963(A008602(n+1))*p?[A305069(n+1)+n]` -/
def P11141285702448523620.Spec : Prop :=
  ∀ n, P11141285702448523620.a n = A142772 (n + 1)

end A142772

/-! ## A142772.P696775508910276000

`A008683(A081256(n+1))²*p?[A305069(n+1)+n]`
-/

namespace A142772.P696775508910276000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305069 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A081256 (n + 1)).toNat ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142772.P696775508910276000

namespace A142772

/-- `A008683(A081256(n+1))²*p?[A305069(n+1)+n]` -/
def P696775508910276000.Spec : Prop :=
  ∀ n, P696775508910276000.a n = A142772 (n + 1)

end A142772

/-! ## A142772.P12636461014573687769

`A006530(ceil(68/(n+1))*p?[A305069(n+1)+n])`
-/

namespace A142772.P12636461014573687769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305069 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌈68 / (n + 1 : ℚ)⌉ * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142772.P12636461014573687769

namespace A142772

/-- `A006530(ceil(68/(n+1))*p?[A305069(n+1)+n])` -/
def P12636461014573687769.Spec : Prop :=
  ∀ n, P12636461014573687769.a n = A142772 (n + 1)

end A142772

/-!
# A142773: Primes congruent to 46 mod 59.

The programs for A142773, the canonical program `A142773.P11628579780795049656` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142773 has offset 1).

The definition of A142773 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142773.anchor (n : ℕ) (hn : 1 ≤ n) : A142773 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 46) (n - 1) : ℤ)` in `Proof.A142.A142773`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142773.P11628579780795049656

`p?[59*n-13]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142773

/-- `p?[59*n-13]` -/
def P11628579780795049656.Spec : Prop :=
  ∀ n, P11628579780795049656.a n = A142773 (n + 1)

theorem P11628579780795049656.correct : P11628579780795049656.Spec := by
  intro n
  simp only [A142773, Nat.add_sub_cancel]

end A142773

/-! ## A142773.P3699499695674696367

`or(1, p?[A248572(n+7)+A156376(n)])`
-/

namespace A142773.P3699499695674696367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 7) + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142773.P3699499695674696367

namespace A142773

/-- `or(1, p?[A248572(n+7)+A156376(n)])` -/
def P3699499695674696367.Spec : Prop :=
  ∀ n, P3699499695674696367.a n = A142773 (n + 1)

end A142773

/-! ## A142773.P4084231255665273822

`A000027(p?[A128468(n)-A032742(n+1)])`
-/

namespace A142773.P4084231255665273822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142773.P4084231255665273822

namespace A142773

/-- `A000027(p?[A128468(n)-A032742(n+1)])` -/
def P4084231255665273822.Spec : Prop :=
  ∀ n, P4084231255665273822.a n = A142773 (n + 1)

end A142773

/-! ## A142773.P16285709525053443755

`A000027(p?[A128468(n)-A302032(n+1)])`
-/

namespace A142773.P16285709525053443755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - A302032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142773.P16285709525053443755

namespace A142773

/-- `A000027(p?[A128468(n)-A302032(n+1)])` -/
def P16285709525053443755.Spec : Prop :=
  ∀ n, P16285709525053443755.a n = A142773 (n + 1)

end A142773

/-! ## A142773.P5530812544898537096

`record[A020639(A082369(2*(n+1)+6)-n)]`
-/

namespace A142773.P5530812544898537096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082369 (2 * (n + 1) + 6) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142773.P5530812544898537096

namespace A142773

/-- `record[A020639(A082369(2*(n+1)+6)-n)]` -/
def P5530812544898537096.Spec : Prop :=
  ∀ n, P5530812544898537096.a n = A142773 (n + 1)

end A142773

/-! ## A142773.P17384108769625266282

`A007913(p?[A128468(n)-A032742(n+1)])`
-/

namespace A142773.P17384108769625266282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142773.P17384108769625266282

namespace A142773

/-- `A007913(p?[A128468(n)-A032742(n+1)])` -/
def P17384108769625266282.Spec : Prop :=
  ∀ n, P17384108769625266282.a n = A142773 (n + 1)

end A142773

/-! ## A142773.P17648531732794360812

`A007913(p?[A128468(n)-A302032(n+1)])`
-/

namespace A142773.P17648531732794360812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n - A302032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142773.P17648531732794360812

namespace A142773

/-- `A007913(p?[A128468(n)-A302032(n+1)])` -/
def P17648531732794360812.Spec : Prop :=
  ∀ n, P17648531732794360812.a n = A142773 (n + 1)

end A142773

/-! ## A142773.P5181525659264496038

`record[A006530(A248572(n+7)+A156376(n))]`
-/

namespace A142773.P5181525659264496038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (n + 7) + A156376 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142773.P5181525659264496038

namespace A142773

/-- `record[A006530(A248572(n+7)+A156376(n))]` -/
def P5181525659264496038.Spec : Prop :=
  ∀ n, P5181525659264496038.a n = A142773 (n + 1)

end A142773

/-!
# A142774: Primes congruent to 47 mod 59.

The programs for A142774, the canonical program `A142774.P7361394003584978862` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142774 has offset 1).

The definition of A142774 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142774.anchor (n : ℕ) (hn : 1 ≤ n) : A142774 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 47) (n - 1) : ℤ)` in `Proof.A142.A142774`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142774.P7361394003584978862

`p?[59*n-12]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142774

/-- `p?[59*n-12]` -/
def P7361394003584978862.Spec : Prop :=
  ∀ n, P7361394003584978862.a n = A142774 (n + 1)

theorem P7361394003584978862.correct : P7361394003584978862.Spec := by
  intro n
  simp only [A142774, Nat.add_sub_cancel]

end A142774

/-! ## A142774.P9386732122021831701

`A000027(p?[A227863(n+1)-A014681(n)])`
-/

namespace A142774.P9386732122021831701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142774.P9386732122021831701

namespace A142774

/-- `A000027(p?[A227863(n+1)-A014681(n)])` -/
def P9386732122021831701.Spec : Prop :=
  ∀ n, P9386732122021831701.a n = A142774 (n + 1)

end A142774

/-! ## A142774.P13695548726249305205

`record[A006530(62*n+56*(n+1)-9)]`
-/

namespace A142774.P13695548726249305205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((62 * n : ℤ) + ((56 * (n + 1) : ℤ) - 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142774.P13695548726249305205

namespace A142774

/-- `record[A006530(62*n+56*(n+1)-9)]` -/
def P13695548726249305205.Spec : Prop :=
  ∀ n, P13695548726249305205.a n = A142774 (n + 1)

end A142774

/-! ## A142774.P9348763720270098107

`record[A020639(A305069(n+1)+n+2)]`
-/

namespace A142774.P9348763720270098107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A305069 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142774.P9348763720270098107

namespace A142774

/-- `record[A020639(A305069(n+1)+n+2)]` -/
def P9348763720270098107.Spec : Prop :=
  ∀ n, P9348763720270098107.a n = A142774 (n + 1)

end A142774

/-! ## A142774.P3971742682220403176

`record[A020639(A128468(2*n+1)-n)]`
-/

namespace A142774.P3971742682220403176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128468 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142774.P3971742682220403176

namespace A142774

/-- `record[A020639(A128468(2*n+1)-n)]` -/
def P3971742682220403176.Spec : Prop :=
  ∀ n, P3971742682220403176.a n = A142774 (n + 1)

end A142774

/-! ## A142774.P11449063653261477190

`A000265(p?[A227863(n+1)-A014681(n)])`
-/

namespace A142774.P11449063653261477190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142774.P11449063653261477190

namespace A142774

/-- `A000265(p?[A227863(n+1)-A014681(n)])` -/
def P11449063653261477190.Spec : Prop :=
  ∀ n, P11449063653261477190.a n = A142774 (n + 1)

end A142774

/-! ## A142774.P5226567149050507517

`A000265(p?[A227863(n+1)-A207801(n+1)])`
-/

namespace A142774.P5226567149050507517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A207801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142774.P5226567149050507517

namespace A142774

/-- `A000265(p?[A227863(n+1)-A207801(n+1)])` -/
def P5226567149050507517.Spec : Prop :=
  ∀ n, P5226567149050507517.a n = A142774 (n + 1)

end A142774

/-! ## A142774.P11125465962334511692

`record[A020639(A139607(3*n+2)-A016825(n))]`
-/

namespace A142774.P11125465962334511692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139607 (3 * n + 2) - A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142774.P11125465962334511692

namespace A142774

/-- `record[A020639(A139607(3*n+2)-A016825(n))]` -/
def P11125465962334511692.Spec : Prop :=
  ∀ n, P11125465962334511692.a n = A142774 (n + 1)

end A142774

/-! ## A142774.P12229006266026003398

`record[A020639(A248572(2*n+1)+A128468(2*n))]`
-/

namespace A142774.P12229006266026003398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A248572 (2 * n + 1) + A128468 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142774.P12229006266026003398

namespace A142774

/-- `record[A020639(A248572(2*n+1)+A128468(2*n))]` -/
def P12229006266026003398.Spec : Prop :=
  ∀ n, P12229006266026003398.a n = A142774 (n + 1)

end A142774

/-!
# A142775: Primes congruent to 48 mod 59.

The programs for A142775, the canonical program `A142775.P8725221765347327823` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142775 has offset 1).

The definition of A142775 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142775.anchor (n : ℕ) (hn : 1 ≤ n) : A142775 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 48) (n - 1) : ℤ)` in `Proof.A142.A142775`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142775.P8725221765347327823

`p?[59*n-11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142775

/-- `p?[59*n-11]` -/
def P8725221765347327823.Spec : Prop :=
  ∀ n, P8725221765347327823.a n = A142775 (n + 1)

theorem P8725221765347327823.correct : P8725221765347327823.Spec := by
  intro n
  simp only [A142775, Nat.add_sub_cancel]

end A142775

/-! ## A142775.P3925771154409690822

`A000027(p?[xor(1, 59*n+42)+7])`
-/

namespace A142775.P3925771154409690822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (59 * n + 42) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142775.P3925771154409690822

namespace A142775

/-- `A000027(p?[xor(1, 59*n+42)+7])` -/
def P3925771154409690822.Spec : Prop :=
  ∀ n, P3925771154409690822.a n = A142775 (n + 1)

end A142775

/-! ## A142775.P15791423729868328465

`record[A020639(A304840(n+2)+A017041(n))]`
-/

namespace A142775.P15791423729868328465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304840 (n + 2) + A017041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142775.P15791423729868328465

namespace A142775

/-- `record[A020639(A304840(n+2)+A017041(n))]` -/
def P15791423729868328465.Spec : Prop :=
  ∀ n, P15791423729868328465.a n = A142775 (n + 1)

end A142775

/-! ## A142775.P3622699339507824240

`record[A006530(A248572(n+3)+A128468(n)+2)]`
-/

namespace A142775.P3622699339507824240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (n + 3) + A128468 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142775.P3622699339507824240

namespace A142775

/-- `record[A006530(A248572(n+3)+A128468(n)+2)]` -/
def P3622699339507824240.Spec : Prop :=
  ∀ n, P3622699339507824240.a n = A142775 (n + 1)

end A142775

/-! ## A142775.P2321348906633890146

`record[A006530(A177046(2*(n+1))-A017209(n))]`
-/

namespace A142775.P2321348906633890146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A177046 (2 * (n + 1)) - A017209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142775.P2321348906633890146

namespace A142775

/-- `record[A006530(A177046(2*(n+1))-A017209(n))]` -/
def P2321348906633890146.Spec : Prop :=
  ∀ n, P2321348906633890146.a n = A142775 (n + 1)

end A142775

/-! ## A142775.P7654789438018514412

`record[A006530(A146081(n)-A190991(n)-2*(n+1))]`
-/

namespace A142775.P7654789438018514412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A146081 n - A190991 n - (2 * (n + 1) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142775.P7654789438018514412

namespace A142775

/-- `record[A006530(A146081(n)-A190991(n)-2*(n+1))]` -/
def P7654789438018514412.Spec : Prop :=
  ∀ n, P7654789438018514412.a n = A142775 (n + 1)

end A142775

/-!
# A142776: Primes congruent to 49 mod 59.

The programs for A142776, the canonical program `A142776.P14603351713955366249` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142776 has offset 1).

The definition of A142776 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142776.anchor (n : ℕ) (hn : 1 ≤ n) : A142776 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 49) (n - 1) : ℤ)` in `Proof.A142.A142776`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142776.P14603351713955366249

`p?[59*n-10]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142776

/-- `p?[59*n-10]` -/
def P14603351713955366249.Spec : Prop :=
  ∀ n, P14603351713955366249.a n = A142776 (n + 1)

theorem P14603351713955366249.correct : P14603351713955366249.Spec := by
  intro n
  simp only [A142776, Nat.add_sub_cancel]

end A142776

/-! ## A142776.P16261904019540321277

`or(1, p?[A227863(n+1)-A153151(n)])`
-/

namespace A142776.P16261904019540321277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A153151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142776.P16261904019540321277

namespace A142776

/-- `or(1, p?[A227863(n+1)-A153151(n)])` -/
def P16261904019540321277.Spec : Prop :=
  ∀ n, P16261904019540321277.a n = A142776 (n + 1)

end A142776

/-! ## A142776.P6401156194812735302

`p?[A227863(n+1)-A004442(n)]/A065357(n)²`
-/

namespace A142776.P6401156194812735302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A004442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A065357 n ^ 2 : ℚ)

end

end A142776.P6401156194812735302

namespace A142776

/-- `p?[A227863(n+1)-A004442(n)]/A065357(n)²` -/
def P6401156194812735302.Spec : Prop :=
  ∀ n, P6401156194812735302.a n = (A142776 (n + 1) : ℚ)

end A142776

/-! ## A142776.P15790294471009397990

`p?[A227863(n+1)-A004442(n)]%A317046(n+1)`
-/

namespace A142776.P15790294471009397990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A317046 (n + 1))

end

end A142776.P15790294471009397990

namespace A142776

/-- `p?[A227863(n+1)-A004442(n)]%A317046(n+1)` -/
def P15790294471009397990.Spec : Prop :=
  ∀ n, P15790294471009397990.a n = A142776 (n + 1)

end A142776

/-! ## A142776.P6590082476133491870

`p?[A227863(n+1)-A004442(n)]/A265643(n+1)²`
-/

namespace A142776.P6590082476133491870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A004442 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A265643 (n + 1) ^ 2 : ℚ)

end

end A142776.P6590082476133491870

namespace A142776

/-- `p?[A227863(n+1)-A004442(n)]/A265643(n+1)²` -/
def P6590082476133491870.Spec : Prop :=
  ∀ n, P6590082476133491870.a n = (A142776 (n + 1) : ℚ)

end A142776

/-! ## A142776.P8414284000420579271

`A000027(p?[A227863(n+1)-A004442(n)])`
-/

namespace A142776.P8414284000420579271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142776.P8414284000420579271

namespace A142776

/-- `A000027(p?[A227863(n+1)-A004442(n)])` -/
def P8414284000420579271.Spec : Prop :=
  ∀ n, P8414284000420579271.a n = A142776 (n + 1)

end A142776

/-! ## A142776.P11955545661234743279

`A000027(p?[A227863(n+1)-A153151(n)])`
-/

namespace A142776.P11955545661234743279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A153151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142776.P11955545661234743279

namespace A142776

/-- `A000027(p?[A227863(n+1)-A153151(n)])` -/
def P11955545661234743279.Spec : Prop :=
  ∀ n, P11955545661234743279.a n = A142776 (n + 1)

end A142776

/-! ## A142776.P11718527268387723913

`A000265(p?[A174029(n)+A125169(n)])`
-/

namespace A142776.P11718527268387723913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142776.P11718527268387723913

namespace A142776

/-- `A000265(p?[A174029(n)+A125169(n)])` -/
def P11718527268387723913.Spec : Prop :=
  ∀ n, P11718527268387723913.a n = A142776 (n + 1)

end A142776

/-! ## A142776.P10386092573796882623

`A001414(p?[A174029(n)+A125169(n)])`
-/

namespace A142776.P10386092573796882623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142776.P10386092573796882623

namespace A142776

/-- `A001414(p?[A174029(n)+A125169(n)])` -/
def P10386092573796882623.Spec : Prop :=
  ∀ n, P10386092573796882623.a n = A142776 (n + 1)

end A142776

/-! ## A142776.P17459246188421247771

`A000265(p?[A227863(n+1)-A004442(n)])`
-/

namespace A142776.P17459246188421247771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142776.P17459246188421247771

namespace A142776

/-- `A000265(p?[A227863(n+1)-A004442(n)])` -/
def P17459246188421247771.Spec : Prop :=
  ∀ n, P17459246188421247771.a n = A142776 (n + 1)

end A142776

/-! ## A142776.P6384717885169127881

`A007913(p?[A227863(n+1)-A004442(n)])`
-/

namespace A142776.P6384717885169127881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142776.P6384717885169127881

namespace A142776

/-- `A007913(p?[A227863(n+1)-A004442(n)])` -/
def P6384717885169127881.Spec : Prop :=
  ∀ n, P6384717885169127881.a n = A142776 (n + 1)

end A142776

/-! ## A142776.P18324378824597581387

`A007947(p?[A227863(n+1)-A153151(n)])`
-/

namespace A142776.P18324378824597581387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227863 (n + 1) - A153151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142776.P18324378824597581387

namespace A142776

/-- `A007947(p?[A227863(n+1)-A153151(n)])` -/
def P18324378824597581387.Spec : Prop :=
  ∀ n, P18324378824597581387.a n = A142776 (n + 1)

end A142776

/-!
# A142777: Primes congruent to 50 mod 59.

The programs for A142777, the canonical program `A142777.P16332100524234957493` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142777 has offset 1).

The definition of A142777 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142777.anchor (n : ℕ) (hn : 1 ≤ n) : A142777 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 50) (n - 1) : ℤ)` in `Proof.A142.A142777`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142777.P16332100524234957493

`p?[59*n-9]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142777

/-- `p?[59*n-9]` -/
def P16332100524234957493.Spec : Prop :=
  ∀ n, P16332100524234957493.a n = A142777 (n + 1)

theorem P16332100524234957493.correct : P16332100524234957493.Spec := by
  intro n
  simp only [A142777, Nat.add_sub_cancel]

end A142777

/-! ## A142777.P16574782406758695050

`or(1, p?[A146081(n)-A158057(n)+n])`
-/

namespace A142777.P16574782406758695050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A158057 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142777.P16574782406758695050

namespace A142777

/-- `or(1, p?[A146081(n)-A158057(n)+n])` -/
def P16574782406758695050.Spec : Prop :=
  ∀ n, P16574782406758695050.a n = A142777 (n + 1)

end A142777

/-! ## A142777.P4411502019943613160

`A000027(p?[A146081(n)-A158057(n)+n])`
-/

namespace A142777.P4411502019943613160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A158057 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142777.P4411502019943613160

namespace A142777

/-- `A000027(p?[A146081(n)-A158057(n)+n])` -/
def P4411502019943613160.Spec : Prop :=
  ∀ n, P4411502019943613160.a n = A142777 (n + 1)

end A142777

/-! ## A142777.P4433950349326337941

`or(1, p?[A195312(n)+A008607(n+2)])`
-/

namespace A142777.P4433950349326337941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 n + A008607 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142777.P4433950349326337941

namespace A142777

/-- `or(1, p?[A195312(n)+A008607(n+2)])` -/
def P4433950349326337941.Spec : Prop :=
  ∀ n, P4433950349326337941.a n = A142777 (n + 1)

end A142777

/-! ## A142777.P3345156426458556094

`p?[A195312(n)+A008607(n+2)]%A016958(2*n)²`
-/

namespace A142777.P3345156426458556094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195312 n + A008607 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016958 (2 * n) ^ 2)

end

end A142777.P3345156426458556094

namespace A142777

/-- `p?[A195312(n)+A008607(n+2)]%A016958(2*n)²` -/
def P3345156426458556094.Spec : Prop :=
  ∀ n, P3345156426458556094.a n = A142777 (n + 1)

end A142777

/-! ## A142777.P9767034953236442501

`record[A020639(A146081(n)-A190991(n)-2*n)]`
-/

namespace A142777.P9767034953236442501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146081 n - A190991 n - (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142777.P9767034953236442501

namespace A142777

/-- `record[A020639(A146081(n)-A190991(n)-2*n)]` -/
def P9767034953236442501.Spec : Prop :=
  ∀ n, P9767034953236442501.a n = A142777 (n + 1)

end A142777

/-!
# A142778: Primes congruent to 51 mod 59.

The programs for A142778, the canonical program `A142778.P17241945090735646841` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142778 has offset 1).

The definition of A142778 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142778.anchor (n : ℕ) (hn : 1 ≤ n) : A142778 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 51) (n - 1) : ℤ)` in `Proof.A142.A142778`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142778.P17241945090735646841

`p?[59*n-8]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142778

/-- `p?[59*n-8]` -/
def P17241945090735646841.Spec : Prop :=
  ∀ n, P17241945090735646841.a n = A142778 (n + 1)

theorem P17241945090735646841.correct : P17241945090735646841.Spec := by
  intro n
  simp only [A142778, Nat.add_sub_cancel]

end A142778

/-! ## A142778.P11713047551710715481

`or(1, p?[A158066(n+1)+A017281(n)])`
-/

namespace A142778.P11713047551710715481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142778.P11713047551710715481

namespace A142778

/-- `or(1, p?[A158066(n+1)+A017281(n)])` -/
def P11713047551710715481.Spec : Prop :=
  ∀ n, P11713047551710715481.a n = A142778 (n + 1)

end A142778

/-! ## A142778.P1761151312736424904

`p?[A158066(n+1)+A017281(n)]%A016961(n+1)`
-/

namespace A142778.P1761151312736424904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016961 (n + 1))

end

end A142778.P1761151312736424904

namespace A142778

/-- `p?[A158066(n+1)+A017281(n)]%A016961(n+1)` -/
def P1761151312736424904.Spec : Prop :=
  ∀ n, P1761151312736424904.a n = A142778 (n + 1)

end A142778

/-! ## A142778.P4241987778598959441

`A000027(p?[A158066(n+1)+A017281(n)])`
-/

namespace A142778.P4241987778598959441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142778.P4241987778598959441

namespace A142778

/-- `A000027(p?[A158066(n+1)+A017281(n)])` -/
def P4241987778598959441.Spec : Prop :=
  ∀ n, P4241987778598959441.a n = A142778 (n + 1)

end A142778

/-! ## A142778.P17482002255535299397

`A000027(p?[A146081(n)-A158057(n)+n+1])`
-/

namespace A142778.P17482002255535299397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - A158057 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142778.P17482002255535299397

namespace A142778

/-- `A000027(p?[A146081(n)-A158057(n)+n+1])` -/
def P17482002255535299397.Spec : Prop :=
  ∀ n, P17482002255535299397.a n = A142778 (n + 1)

end A142778

/-! ## A142778.P14469116861759584705

`A000265(p?[A305069(n+1)+n+6])`
-/

namespace A142778.P14469116861759584705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305069 (n + 1) + (n : ℤ) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142778.P14469116861759584705

namespace A142778

/-- `A000265(p?[A305069(n+1)+n+6])` -/
def P14469116861759584705.Spec : Prop :=
  ∀ n, P14469116861759584705.a n = A142778 (n + 1)

end A142778

/-! ## A142778.P17737018093837165362

`A000265(p?[A158066(n+1)+A017281(n)])`
-/

namespace A142778.P17737018093837165362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142778.P17737018093837165362

namespace A142778

/-- `A000265(p?[A158066(n+1)+A017281(n)])` -/
def P17737018093837165362.Spec : Prop :=
  ∀ n, P17737018093837165362.a n = A142778 (n + 1)

end A142778

/-! ## A142778.P16764324071778960550

`A008472(p?[A158066(n+1)+A017281(n)])`
-/

namespace A142778.P16764324071778960550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) + A017281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142778.P16764324071778960550

namespace A142778

/-- `A008472(p?[A158066(n+1)+A017281(n)])` -/
def P16764324071778960550.Spec : Prop :=
  ∀ n, P16764324071778960550.a n = A142778 (n + 1)

end A142778

/-!
# A142779: Primes congruent to 52 mod 59.

The programs for A142779, the canonical program `A142779.P18302781696670615743` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142779 has offset 1).

The definition of A142779 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142779.anchor (n : ℕ) (hn : 1 ≤ n) : A142779 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 52) (n - 1) : ℤ)` in `Proof.A142.A142779`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142779.P18302781696670615743

`p?[59*n-7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142779

/-- `p?[59*n-7]` -/
def P18302781696670615743.Spec : Prop :=
  ∀ n, P18302781696670615743.a n = A142779 (n + 1)

theorem P18302781696670615743.correct : P18302781696670615743.Spec := by
  intro n
  simp only [A142779, Nat.add_sub_cancel]

end A142779

/-! ## A142779.P10651635178839027056

`or(1, p?[A139616(n)-A304839(n+1)])`
-/

namespace A142779.P10651635178839027056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A304839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142779.P10651635178839027056

namespace A142779

/-- `or(1, p?[A139616(n)-A304839(n+1)])` -/
def P10651635178839027056.Spec : Prop :=
  ∀ n, P10651635178839027056.a n = A142779 (n + 1)

end A142779

/-! ## A142779.P3019949787887080737

`p?[A139616(n)-A304839(n+1)]%A017500(n)`
-/

namespace A142779.P3019949787887080737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A304839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017500 n)

end

end A142779.P3019949787887080737

namespace A142779

/-- `p?[A139616(n)-A304839(n+1)]%A017500(n)` -/
def P3019949787887080737.Spec : Prop :=
  ∀ n, P3019949787887080737.a n = A142779 (n + 1)

end A142779

/-! ## A142779.P429446437313493526

`p?[A139616(n)-A304839(n+1)]/A000045(((-1)^n)²)`
-/

namespace A142779.P429446437313493526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A304839 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000045 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A142779.P429446437313493526

namespace A142779

/-- `p?[A139616(n)-A304839(n+1)]/A000045(((-1)^n)²)` -/
def P429446437313493526.Spec : Prop :=
  ∀ n, P429446437313493526.a n = (A142779 (n + 1) : ℚ)

end A142779

/-! ## A142779.P11224584504973258953

`A000027(p?[A139616(n)-A304839(n+1)])`
-/

namespace A142779.P11224584504973258953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A304839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142779.P11224584504973258953

namespace A142779

/-- `A000027(p?[A139616(n)-A304839(n+1)])` -/
def P11224584504973258953.Spec : Prop :=
  ∀ n, P11224584504973258953.a n = A142779 (n + 1)

end A142779

/-! ## A142779.P16464395484483784396

`A000265(p?[A139616(n)-A304839(n+1)])`
-/

namespace A142779.P16464395484483784396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A304839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142779.P16464395484483784396

namespace A142779

/-- `A000265(p?[A139616(n)-A304839(n+1)])` -/
def P16464395484483784396.Spec : Prop :=
  ∀ n, P16464395484483784396.a n = A142779 (n + 1)

end A142779

/-! ## A142779.P5526244462379807017

`A007947(p?[A139616(n)-A304839(n+1)])`
-/

namespace A142779.P5526244462379807017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A304839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142779.P5526244462379807017

namespace A142779

/-- `A007947(p?[A139616(n)-A304839(n+1)])` -/
def P5526244462379807017.Spec : Prop :=
  ∀ n, P5526244462379807017.a n = A142779 (n + 1)

end A142779

/-! ## A142779.P8770110043299843200

`A330741(p?[A139616(n)-A304839(n+1)])`
-/

namespace A142779.P8770110043299843200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139616 n - A304839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142779.P8770110043299843200

namespace A142779

/-- `A330741(p?[A139616(n)-A304839(n+1)])` -/
def P8770110043299843200.Spec : Prop :=
  ∀ n, P8770110043299843200.a n = A142779 (n + 1)

end A142779

/-!
# A142780: Primes congruent to 53 mod 59.

The programs for A142780, the canonical program `A142780.P6926582499104683057` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142780 has offset 1).

The definition of A142780 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142780.anchor (n : ℕ) (hn : 1 ≤ n) : A142780 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 53) (n - 1) : ℤ)` in `Proof.A142.A142780`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142780.P6926582499104683057

`p?[59*n-6]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142780

/-- `p?[59*n-6]` -/
def P6926582499104683057.Spec : Prop :=
  ∀ n, P6926582499104683057.a n = A142780 (n + 1)

theorem P6926582499104683057.correct : P6926582499104683057.Spec := by
  intro n
  simp only [A142780, Nat.add_sub_cancel]

end A142780

/-! ## A142780.P4326012568922324774

`record[A020639(59*(n+1)-6)]`
-/

namespace A142780.P4326012568922324774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (59 * (n + 1) - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142780.P4326012568922324774

namespace A142780

/-- `record[A020639(59*(n+1)-6)]` -/
def P4326012568922324774.Spec : Prop :=
  ∀ n, P4326012568922324774.a n = A142780 (n + 1)

end A142780

/-! ## A142780.P15799326596595568554

`record[A006530(A304609(2*n+1)+A004771(n)+5)]`
-/

namespace A142780.P15799326596595568554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304609 (2 * n + 1) + A004771 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142780.P15799326596595568554

namespace A142780

/-- `record[A006530(A304609(2*n+1)+A004771(n)+5)]` -/
def P15799326596595568554.Spec : Prop :=
  ∀ n, P15799326596595568554.a n = A142780 (n + 1)

end A142780

/-! ## A142780.P10426653147419263839

`record[A014963(59*(n+1)-6)]`
-/

namespace A142780.P10426653147419263839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (59 * (n + 1) - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142780.P10426653147419263839

namespace A142780

/-- `record[A014963(59*(n+1)-6)]` -/
def P10426653147419263839.Spec : Prop :=
  ∀ n, P10426653147419263839.a n = A142780 (n + 1)

end A142780

/-! ## A142780.P17780751456105627181

`A007918(p?[A128473(n+2+n)-n])`
-/

namespace A142780.P17780751456105627181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 2 + n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142780.P17780751456105627181

namespace A142780

/-- `A007918(p?[A128473(n+2+n)-n])` -/
def P17780751456105627181.Spec : Prop :=
  ∀ n, P17780751456105627181.a n = A142780 (n + 1)

end A142780

/-!
# A142781: Primes congruent to 54 mod 59.

The programs for A142781, the canonical program `A142781.P6171479548940273087` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142781 has offset 1).

The definition of A142781 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142781.anchor (n : ℕ) (hn : 1 ≤ n) : A142781 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 54) (n - 1) : ℤ)` in `Proof.A142.A142781`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142781.P6171479548940273087

`p?[59*n-5]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142781

/-- `p?[59*n-5]` -/
def P6171479548940273087.Spec : Prop :=
  ∀ n, P6171479548940273087.a n = A142781 (n + 1)

theorem P6171479548940273087.correct : P6171479548940273087.Spec := by
  intro n
  simp only [A142781, Nat.add_sub_cancel]

end A142781

/-! ## A142781.P9973218556275102977

`p?[A304840(n+1)+A017029(n)]%A017490(n)`
-/

namespace A142781.P9973218556275102977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017490 n)

end

end A142781.P9973218556275102977

namespace A142781

/-- `p?[A304840(n+1)+A017029(n)]%A017490(n)` -/
def P9973218556275102977.Spec : Prop :=
  ∀ n, P9973218556275102977.a n = A142781 (n + 1)

end A142781

/-! ## A142781.P15782266293183637623

`p?[A304840(n+1)+A017029(n)]*A057427(n+1)`
-/

namespace A142781.P15782266293183637623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057427 (n + 1)

end

end A142781.P15782266293183637623

namespace A142781

/-- `p?[A304840(n+1)+A017029(n)]*A057427(n+1)` -/
def P15782266293183637623.Spec : Prop :=
  ∀ n, P15782266293183637623.a n = A142781 (n + 1)

end A142781

/-! ## A142781.P15914611648262125614

`A007318(n²%(n+1))*p?[A304840(n+1)+A017029(n)]`
-/

namespace A142781.P15914611648262125614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n ^ 2 % (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142781.P15914611648262125614

namespace A142781

/-- `A007318(n²%(n+1))*p?[A304840(n+1)+A017029(n)]` -/
def P15914611648262125614.Spec : Prop :=
  ∀ n, P15914611648262125614.a n = A142781 (n + 1)

end A142781

/-! ## A142781.P7170940200172328670

`A000027(p?[A304840(n+1)+A017029(n)])`
-/

namespace A142781.P7170940200172328670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142781.P7170940200172328670

namespace A142781

/-- `A000027(p?[A304840(n+1)+A017029(n)])` -/
def P7170940200172328670.Spec : Prop :=
  ∀ n, P7170940200172328670.a n = A142781 (n + 1)

end A142781

/-! ## A142781.P1990965105343828274

`A000265(p?[A304840(n+1)+A017029(n)])`
-/

namespace A142781.P1990965105343828274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142781.P1990965105343828274

namespace A142781

/-- `A000265(p?[A304840(n+1)+A017029(n)])` -/
def P1990965105343828274.Spec : Prop :=
  ∀ n, P1990965105343828274.a n = A142781 (n + 1)

end A142781

/-! ## A142781.P3529131324430610273

`A006530(2*p?[A304840(n+1)+A017029(n)])`
-/

namespace A142781.P3529131324430610273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142781.P3529131324430610273

namespace A142781

/-- `A006530(2*p?[A304840(n+1)+A017029(n)])` -/
def P3529131324430610273.Spec : Prop :=
  ∀ n, P3529131324430610273.a n = A142781 (n + 1)

end A142781

/-!
# A142782: Primes congruent to 55 mod 59.

The programs for A142782, the canonical program `A142782.P16047853702145488896` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142782 has offset 1).

The definition of A142782 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142782.anchor (n : ℕ) (hn : 1 ≤ n) : A142782 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 55) (n - 1) : ℤ)` in `Proof.A142.A142782`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142782.P16047853702145488896

`p?[59*n-4]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142782

/-- `p?[59*n-4]` -/
def P16047853702145488896.Spec : Prop :=
  ∀ n, P16047853702145488896.a n = A142782 (n + 1)

theorem P16047853702145488896.correct : P16047853702145488896.Spec := by
  intro n
  simp only [A142782, Nat.add_sub_cancel]

end A142782

/-! ## A142782.P11228572343011040786

`or(1, p?[A152691(n)-A016897(n)])`
-/

namespace A142782.P11228572343011040786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142782.P11228572343011040786

namespace A142782

/-- `or(1, p?[A152691(n)-A016897(n)])` -/
def P11228572343011040786.Spec : Prop :=
  ∀ n, P11228572343011040786.a n = A142782 (n + 1)

end A142782

/-! ## A142782.P15138919815278703127

`or(1, p?[A304840(n+1)+A017041(n)])`
-/

namespace A142782.P15138919815278703127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142782.P15138919815278703127

namespace A142782

/-- `or(1, p?[A304840(n+1)+A017041(n)])` -/
def P15138919815278703127.Spec : Prop :=
  ∀ n, P15138919815278703127.a n = A142782 (n + 1)

end A142782

/-! ## A142782.P6857495644989073362

`p?[A152691(n)-A016897(n)]%A014798(n)`
-/

namespace A142782.P6857495644989073362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A014798 n)

end

end A142782.P6857495644989073362

namespace A142782

/-- `p?[A152691(n)-A016897(n)]%A014798(n)` -/
def P6857495644989073362.Spec : Prop :=
  ∀ n, P6857495644989073362.a n = A142782 (n + 1)

end A142782

/-! ## A142782.P15455277603303709577

`p?[A152691(n)-A016897(n)]+(n+2)%A020639(n+2)`
-/

namespace A142782.P15455277603303709577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (n + 2 : ℤ) (A020639 (n + 2))

end

end A142782.P15455277603303709577

namespace A142782

/-- `p?[A152691(n)-A016897(n)]+(n+2)%A020639(n+2)` -/
def P15455277603303709577.Spec : Prop :=
  ∀ n, P15455277603303709577.a n = A142782 (n + 1)

end A142782

/-! ## A142782.P12335490032058424808

`p?[A152691(n)-A016897(n)]/(-1%A054277(n+2))²`
-/

namespace A142782.P12335490032058424808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016897 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (-1) (A054277 (n + 2)) ^ 2 : ℚ)

end

end A142782.P12335490032058424808

namespace A142782

/-- `p?[A152691(n)-A016897(n)]/(-1%A054277(n+2))²` -/
def P12335490032058424808.Spec : Prop :=
  ∀ n, P12335490032058424808.a n = (A142782 (n + 1) : ℚ)

end A142782

/-! ## A142782.P11233939871201467116

`A000027(p?[A152691(n)-A016897(n)])`
-/

namespace A142782.P11233939871201467116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142782.P11233939871201467116

namespace A142782

/-- `A000027(p?[A152691(n)-A016897(n)])` -/
def P11233939871201467116.Spec : Prop :=
  ∀ n, P11233939871201467116.a n = A142782 (n + 1)

end A142782

/-! ## A142782.P17923953258949848758

`A000027(p?[A304840(n+1)+A017041(n)])`
-/

namespace A142782.P17923953258949848758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304840 (n + 1) + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142782.P17923953258949848758

namespace A142782

/-- `A000027(p?[A304840(n+1)+A017041(n)])` -/
def P17923953258949848758.Spec : Prop :=
  ∀ n, P17923953258949848758.a n = A142782 (n + 1)

end A142782

/-! ## A142782.P16811449016687295786

`A000265(p?[A152691(n)-A016897(n)])`
-/

namespace A142782.P16811449016687295786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142782.P16811449016687295786

namespace A142782

/-- `A000265(p?[A152691(n)-A016897(n)])` -/
def P16811449016687295786.Spec : Prop :=
  ∀ n, P16811449016687295786.a n = A142782 (n + 1)

end A142782

/-! ## A142782.P1209326412482360440

`A001414(p?[A152691(n)-A016897(n)])`
-/

namespace A142782.P1209326412482360440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142782.P1209326412482360440

namespace A142782

/-- `A001414(p?[A152691(n)-A016897(n)])` -/
def P1209326412482360440.Spec : Prop :=
  ∀ n, P1209326412482360440.a n = A142782 (n + 1)

end A142782

/-! ## A142782.P9730295365910151785

`A007913(p?[A152691(n)-A016897(n)])`
-/

namespace A142782.P9730295365910151785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142782.P9730295365910151785

namespace A142782

/-- `A007913(p?[A152691(n)-A016897(n)])` -/
def P9730295365910151785.Spec : Prop :=
  ∀ n, P9730295365910151785.a n = A142782 (n + 1)

end A142782

/-! ## A142782.P14282326400379723755

`A007947(p?[A152691(n)-A016897(n)])`
-/

namespace A142782.P14282326400379723755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142782.P14282326400379723755

namespace A142782

/-- `A007947(p?[A152691(n)-A016897(n)])` -/
def P14282326400379723755.Spec : Prop :=
  ∀ n, P14282326400379723755.a n = A142782 (n + 1)

end A142782

/-! ## A142782.P13637900928755203894

`A008472(p?[A152691(n)-A016897(n)])`
-/

namespace A142782.P13637900928755203894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142782.P13637900928755203894

namespace A142782

/-- `A008472(p?[A152691(n)-A016897(n)])` -/
def P13637900928755203894.Spec : Prop :=
  ∀ n, P13637900928755203894.a n = A142782 (n + 1)

end A142782

/-!
# A142783: Primes congruent to 56 mod 59.

The programs for A142783, the canonical program `A142783.P5673115641976607910` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142783 has offset 1).

The definition of A142783 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142783.anchor (n : ℕ) (hn : 1 ≤ n) : A142783 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 56) (n - 1) : ℤ)` in `Proof.A142.A142783`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142783.P5673115641976607910

`p?[59*n-3]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142783

/-- `p?[59*n-3]` -/
def P5673115641976607910.Spec : Prop :=
  ∀ n, P5673115641976607910.a n = A142783 (n + 1)

theorem P5673115641976607910.correct : P5673115641976607910.Spec := by
  intro n
  simp only [A142783, Nat.add_sub_cancel]

end A142783

/-! ## A142783.P8355255805877718122

`A000027(p?[A101095(n+1)-A005408(n)])`
-/

namespace A142783.P8355255805877718122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142783.P8355255805877718122

namespace A142783

/-- `A000027(p?[A101095(n+1)-A005408(n)])` -/
def P8355255805877718122.Spec : Prop :=
  ∀ n, P8355255805877718122.a n = A142783 (n + 1)

end A142783

/-! ## A142783.P9771252349352882563

`A000027(p?[A101095(n+1)-A098486(n+1)])`
-/

namespace A142783.P9771252349352882563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A098486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142783.P9771252349352882563

namespace A142783

/-- `A000027(p?[A101095(n+1)-A098486(n+1)])` -/
def P9771252349352882563.Spec : Prop :=
  ∀ n, P9771252349352882563.a n = A142783 (n + 1)

end A142783

/-! ## A142783.P10504866021684585996

`A000027(p?[A101095(n+1)-A317439(n+1)])`
-/

namespace A142783.P10504866021684585996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A317439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142783.P10504866021684585996

namespace A142783

/-- `A000027(p?[A101095(n+1)-A317439(n+1)])` -/
def P10504866021684585996.Spec : Prop :=
  ∀ n, P10504866021684585996.a n = A142783 (n + 1)

end A142783

/-! ## A142783.P13209348205112590627

`record[A020639(A139611(n+4)+4*n+2)]`
-/

namespace A142783.P13209348205112590627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139611 (n + 4) + (4 * n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142783.P13209348205112590627

namespace A142783

/-- `record[A020639(A139611(n+4)+4*n+2)]` -/
def P13209348205112590627.Spec : Prop :=
  ∀ n, P13209348205112590627.a n = A142783 (n + 1)

end A142783

/-! ## A142783.P14946148747233567160

`A000265(p?[A101095(n+1)-A005408(n)])`
-/

namespace A142783.P14946148747233567160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142783.P14946148747233567160

namespace A142783

/-- `A000265(p?[A101095(n+1)-A005408(n)])` -/
def P14946148747233567160.Spec : Prop :=
  ∀ n, P14946148747233567160.a n = A142783 (n + 1)

end A142783

/-! ## A142783.P3149903554546764626

`A001414(p?[A101095(n+1)-A005408(n)])`
-/

namespace A142783.P3149903554546764626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142783.P3149903554546764626

namespace A142783

/-- `A001414(p?[A101095(n+1)-A005408(n)])` -/
def P3149903554546764626.Spec : Prop :=
  ∀ n, P3149903554546764626.a n = A142783 (n + 1)

end A142783

/-! ## A142783.P4755415904168344778

`A001414(p?[A101095(n+1)-A098486(n+1)])`
-/

namespace A142783.P4755415904168344778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A098486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142783.P4755415904168344778

namespace A142783

/-- `A001414(p?[A101095(n+1)-A098486(n+1)])` -/
def P4755415904168344778.Spec : Prop :=
  ∀ n, P4755415904168344778.a n = A142783 (n + 1)

end A142783

/-! ## A142783.P10833135951895201649

`A000265(p?[A101095(n+1)-A317439(n+1)])`
-/

namespace A142783.P10833135951895201649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A317439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142783.P10833135951895201649

namespace A142783

/-- `A000265(p?[A101095(n+1)-A317439(n+1)])` -/
def P10833135951895201649.Spec : Prop :=
  ∀ n, P10833135951895201649.a n = A142783 (n + 1)

end A142783

/-!
# A142784: Primes congruent to 57 mod 59.

The programs for A142784, the canonical program `A142784.P12270483330170810183` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142784 has offset 1).

The definition of A142784 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142784.anchor (n : ℕ) (hn : 1 ≤ n) : A142784 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 57) (n - 1) : ℤ)` in `Proof.A142.A142784`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142784.P12270483330170810183

`p?[59*n-2]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142784

/-- `p?[59*n-2]` -/
def P12270483330170810183.Spec : Prop :=
  ∀ n, P12270483330170810183.a n = A142784 (n + 1)

theorem P12270483330170810183.correct : P12270483330170810183.Spec := by
  intro n
  simp only [A142784, Nat.add_sub_cancel]

end A142784

/-! ## A142784.P16549598838165552691

`or(1, p?[A139264(n+1)-A017497(n)])`
-/

namespace A142784.P16549598838165552691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142784.P16549598838165552691

namespace A142784

/-- `or(1, p?[A139264(n+1)-A017497(n)])` -/
def P16549598838165552691.Spec : Prop :=
  ∀ n, P16549598838165552691.a n = A142784 (n + 1)

end A142784

/-! ## A142784.P14768486315007683284

`p?[A139264(n+1)-A017497(n)]%A074665(n+1)`
-/

namespace A142784.P14768486315007683284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A074665 (n + 1))

end

end A142784.P14768486315007683284

namespace A142784

/-- `p?[A139264(n+1)-A017497(n)]%A074665(n+1)` -/
def P14768486315007683284.Spec : Prop :=
  ∀ n, P14768486315007683284.a n = A142784 (n + 1)

end A142784

/-! ## A142784.P7080468087493824263

`p?[A139264(n+1)-A017497(n)]+A133754(n)%2`
-/

namespace A142784.P7080468087493824263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A133754 n) 2

end

end A142784.P7080468087493824263

namespace A142784

/-- `p?[A139264(n+1)-A017497(n)]+A133754(n)%2` -/
def P7080468087493824263.Spec : Prop :=
  ∀ n, P7080468087493824263.a n = A142784 (n + 1)

end A142784

/-! ## A142784.P17942803051323828615

`A000027(p?[A139264(n+1)-A017497(n)])`
-/

namespace A142784.P17942803051323828615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142784.P17942803051323828615

namespace A142784

/-- `A000027(p?[A139264(n+1)-A017497(n)])` -/
def P17942803051323828615.Spec : Prop :=
  ∀ n, P17942803051323828615.a n = A142784 (n + 1)

end A142784

/-! ## A142784.P10920359017808263096

`A000265(p?[A139264(n+1)-A017497(n)])`
-/

namespace A142784.P10920359017808263096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142784.P10920359017808263096

namespace A142784

/-- `A000265(p?[A139264(n+1)-A017497(n)])` -/
def P10920359017808263096.Spec : Prop :=
  ∀ n, P10920359017808263096.a n = A142784 (n + 1)

end A142784

/-! ## A142784.P3604010897758631477

`A001414(p?[A139264(n+1)-A017497(n)])`
-/

namespace A142784.P3604010897758631477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142784.P3604010897758631477

namespace A142784

/-- `A001414(p?[A139264(n+1)-A017497(n)])` -/
def P3604010897758631477.Spec : Prop :=
  ∀ n, P3604010897758631477.a n = A142784 (n + 1)

end A142784

/-! ## A142784.P13389424921334562172

`A007947(p?[A139264(n+1)-A017497(n)])`
-/

namespace A142784.P13389424921334562172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) - A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142784.P13389424921334562172

namespace A142784

/-- `A007947(p?[A139264(n+1)-A017497(n)])` -/
def P13389424921334562172.Spec : Prop :=
  ∀ n, P13389424921334562172.a n = A142784 (n + 1)

end A142784

/-! ## A142784.P13062673866899564554

`A000265(p?[A250024(n+1)-A133310(n)])`
-/

namespace A142784.P13062673866899564554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) - A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142784.P13062673866899564554

namespace A142784

/-- `A000265(p?[A250024(n+1)-A133310(n)])` -/
def P13062673866899564554.Spec : Prop :=
  ∀ n, P13062673866899564554.a n = A142784 (n + 1)

end A142784

/-!
# A142785: Primes congruent to 58 mod 59.

The programs for A142785, the canonical program `A142785.P5407688993661693736` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142785 has offset 1).

The definition of A142785 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142785.anchor (n : ℕ) (hn : 1 ≤ n) : A142785 n = (Nat.nth (fun p => p.Prime ∧ p % 59 = 58) (n - 1) : ℤ)` in `Proof.A142.A142785`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142785.P5407688993661693736

`p?[59*n-1]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142785

/-- `p?[59*n-1]` -/
def P5407688993661693736.Spec : Prop :=
  ∀ n, P5407688993661693736.a n = A142785 (n + 1)

theorem P5407688993661693736.correct : P5407688993661693736.Spec := by
  intro n
  simp only [A142785, Nat.add_sub_cancel]

end A142785

/-! ## A142785.P1868890570193349143

`or(1, p?[58*(n+1)+n])`
-/

namespace A142785.P1868890570193349143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  58 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142785.P1868890570193349143

namespace A142785

/-- `or(1, p?[58*(n+1)+n])` -/
def P1868890570193349143.Spec : Prop :=
  ∀ n, (P1868890570193349143.a n : ℤ) = A142785 (n + 1)

end A142785

/-! ## A142785.P6566726789052715456

`p?[A101095(n+1)-A004273(n)]%A290503(n+1)`
-/

namespace A142785.P6566726789052715456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A290503 (n + 1))

end

end A142785.P6566726789052715456

namespace A142785

/-- `p?[A101095(n+1)-A004273(n)]%A290503(n+1)` -/
def P6566726789052715456.Spec : Prop :=
  ∀ n, P6566726789052715456.a n = A142785 (n + 1)

end A142785

/-! ## A142785.P3395971458789372678

`A000027(p?[A101095(n+1)-A004273(n)])`
-/

namespace A142785.P3395971458789372678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142785.P3395971458789372678

namespace A142785

/-- `A000027(p?[A101095(n+1)-A004273(n)])` -/
def P3395971458789372678.Spec : Prop :=
  ∀ n, P3395971458789372678.a n = A142785 (n + 1)

end A142785

/-! ## A142785.P13406288553191695715

`A000265(p?[A101095(n+1)-A004273(n)])`
-/

namespace A142785.P13406288553191695715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142785.P13406288553191695715

namespace A142785

/-- `A000265(p?[A101095(n+1)-A004273(n)])` -/
def P13406288553191695715.Spec : Prop :=
  ∀ n, P13406288553191695715.a n = A142785 (n + 1)

end A142785

/-! ## A142785.P2677116653643250605

`A007947(p?[A101095(n+1)-A004273(n)])`
-/

namespace A142785.P2677116653643250605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142785.P2677116653643250605

namespace A142785

/-- `A007947(p?[A101095(n+1)-A004273(n)])` -/
def P2677116653643250605.Spec : Prop :=
  ∀ n, P2677116653643250605.a n = A142785 (n + 1)

end A142785

/-!
# A142786: Primes congruent to 7 mod 60.

The programs for A142786, the canonical program `A142786.P8917819512405611258` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142786 has offset 1).

The definition of A142786 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142786.anchor (n : ℕ) (hn : 1 ≤ n) : A142786 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 7) (n - 1) : ℤ)` in `Proof.A142.A142786`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142786.P9862644963179927859

`∩[A030432(n+1), A139832(n+1)]`
-/

namespace A142786.P9862644963179927859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P9862644963179927859

namespace A142786

/-- `∩[A030432(n+1), A139832(n+1)]` -/
def P9862644963179927859.Spec : Prop :=
  ∀ n, (P9862644963179927859.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P16695764883145340532

`∩[A030432(n+1), A141304(n+1)]`
-/

namespace A142786.P16695764883145340532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P16695764883145340532

namespace A142786

/-- `∩[A030432(n+1), A141304(n+1)]` -/
def P16695764883145340532.Spec : Prop :=
  ∀ n, (P16695764883145340532.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P2574497643302880871

`∩[A132231(n+1), A139832(n+1)]`
-/

namespace A142786.P2574497643302880871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P2574497643302880871

namespace A142786

/-- `∩[A132231(n+1), A139832(n+1)]` -/
def P2574497643302880871.Spec : Prop :=
  ∀ n, (P2574497643302880871.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P35408075558931523

`∩[A141304(n+1), A132231(n+1)]`
-/

namespace A142786.P35408075558931523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P35408075558931523

namespace A142786

/-- `∩[A141304(n+1), A132231(n+1)]` -/
def P35408075558931523.Spec : Prop :=
  ∀ n, (P35408075558931523.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P8917819512405611258

`p?[60*n+7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142786

/-- `p?[60*n+7]` -/
def P8917819512405611258.Spec : Prop :=
  ∀ n, (P8917819512405611258.a n : ℤ) = A142786 (n + 1)

theorem P8917819512405611258.correct : P8917819512405611258.Spec := by
  intro n
  simp only [A142786, Nat.add_sub_cancel]

end A142786

/-! ## A142786.P16156931215534254182

`∩[A139832(n+1), A132237(n+1)]`
-/

namespace A142786.P16156931215534254182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P16156931215534254182

namespace A142786

/-- `∩[A139832(n+1), A132237(n+1)]` -/
def P16156931215534254182.Spec : Prop :=
  ∀ n, (P16156931215534254182.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P16902467987388146116

`∩[A045357(n+1), A139832(n+1)]`
-/

namespace A142786.P16902467987388146116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P16902467987388146116

namespace A142786

/-- `∩[A045357(n+1), A139832(n+1)]` -/
def P16902467987388146116.Spec : Prop :=
  ∀ n, (P16902467987388146116.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P5739869122269336507

`∩[A045380(n+1), A139832(n+1)]`
-/

namespace A142786.P5739869122269336507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P5739869122269336507

namespace A142786

/-- `∩[A045380(n+1), A139832(n+1)]` -/
def P5739869122269336507.Spec : Prop :=
  ∀ n, (P5739869122269336507.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P7776291868711501593

`∩[A045357(n+1), A141304(n+1)]`
-/

namespace A142786.P7776291868711501593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P7776291868711501593

namespace A142786

/-- `∩[A045357(n+1), A141304(n+1)]` -/
def P7776291868711501593.Spec : Prop :=
  ∀ n, (P7776291868711501593.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P9329454503607988714

`∩[A045380(n+1), A141304(n+1)]`
-/

namespace A142786.P9329454503607988714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P9329454503607988714

namespace A142786

/-- `∩[A045380(n+1), A141304(n+1)]` -/
def P9329454503607988714.Spec : Prop :=
  ∀ n, (P9329454503607988714.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P18407763736353320693

`∩[A106865(n+1), A132231(n+1)]`
-/

namespace A142786.P18407763736353320693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P18407763736353320693

namespace A142786

/-- `∩[A106865(n+1), A132231(n+1)]` -/
def P18407763736353320693.Spec : Prop :=
  ∀ n, (P18407763736353320693.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P9563626278468323412

`∩[A030432(n+1), A068229(n+1)]`
-/

namespace A142786.P9563626278468323412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P9563626278468323412

namespace A142786

/-- `∩[A030432(n+1), A068229(n+1)]` -/
def P9563626278468323412.Spec : Prop :=
  ∀ n, (P9563626278468323412.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P14257852625982897024

`∩[A045357(n+1), A068229(n+1)]`
-/

namespace A142786.P14257852625982897024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P14257852625982897024

namespace A142786

/-- `∩[A045357(n+1), A068229(n+1)]` -/
def P14257852625982897024.Spec : Prop :=
  ∀ n, (P14257852625982897024.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P15386644027846659499

`∩[A045380(n+1), A068229(n+1)]`
-/

namespace A142786.P15386644027846659499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P15386644027846659499

namespace A142786

/-- `∩[A045380(n+1), A068229(n+1)]` -/
def P15386644027846659499.Spec : Prop :=
  ∀ n, (P15386644027846659499.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P13888033088515588390

`∩[A068229(n+1), A132231(n+1)]`
-/

namespace A142786.P13888033088515588390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P13888033088515588390

namespace A142786

/-- `∩[A068229(n+1), A132231(n+1)]` -/
def P13888033088515588390.Spec : Prop :=
  ∀ n, (P13888033088515588390.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P12828295600275855769

`∩[A068229(n+1), A132237(n+1)]`
-/

namespace A142786.P12828295600275855769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P12828295600275855769

namespace A142786

/-- `∩[A068229(n+1), A132237(n+1)]` -/
def P12828295600275855769.Spec : Prop :=
  ∀ n, (P12828295600275855769.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P15830452089848481712

`∩[A068229(n+1), A141882(n+1)]`
-/

namespace A142786.P15830452089848481712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P15830452089848481712

namespace A142786

/-- `∩[A068229(n+1), A141882(n+1)]` -/
def P15830452089848481712.Spec : Prop :=
  ∀ n, (P15830452089848481712.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P15708652042370596123

`∩[A106952(n+1), A141882(n+1)]`
-/

namespace A142786.P15708652042370596123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P15708652042370596123

namespace A142786

/-- `∩[A106952(n+1), A141882(n+1)]` -/
def P15708652042370596123.Spec : Prop :=
  ∀ n, (P15708652042370596123.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P5244292609877087067

`∩[A141882(n+1), A385223(n+1)]`
-/

namespace A142786.P5244292609877087067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P5244292609877087067

namespace A142786

/-- `∩[A141882(n+1), A385223(n+1)]` -/
def P5244292609877087067.Spec : Prop :=
  ∀ n, (P5244292609877087067.a n : ℤ) = A142786 (n + 1)

end A142786

/-! ## A142786.P10509113481754029961

`∩[A132231(n+1), A385225(n+1)]`
-/

namespace A142786.P10509113481754029961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142786.P10509113481754029961

namespace A142786

/-- `∩[A132231(n+1), A385225(n+1)]` -/
def P10509113481754029961.Spec : Prop :=
  ∀ n, (P10509113481754029961.a n : ℤ) = A142786 (n + 1)

end A142786

/-!
# A142787: Primes congruent to 13 mod 60.

The programs for A142787, the canonical program `A142787.P6426569186505720714` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142787 has offset 1).

The definition of A142787 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142787.anchor (n : ℕ) (hn : 1 ≤ n) : A142787 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 13) (n - 1) : ℤ)` in `Proof.A142.A142787`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142787.P1447521756876113139

`∩[A132233(n+1), A141885(n+1)]`
-/

namespace A142787.P1447521756876113139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P1447521756876113139

namespace A142787

/-- `∩[A132233(n+1), A141885(n+1)]` -/
def P1447521756876113139.Spec : Prop :=
  ∀ n, (P1447521756876113139.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P6426569186505720714

`p?[6*10*n+13]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142787

/-- `p?[6*10*n+13]` -/
def P6426569186505720714.Spec : Prop :=
  ∀ n, (P6426569186505720714.a n : ℤ) = A142787 (n + 1)

theorem P6426569186505720714.correct : P6426569186505720714.Spec := by
  intro n
  simp only [A142787, Nat.add_sub_cancel]

end A142787

/-! ## A142787.P2097116995045378059

`∩[A008846(n+1), A132233(n+1)]`
-/

namespace A142787.P2097116995045378059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P2097116995045378059

namespace A142787

/-- `∩[A008846(n+1), A132233(n+1)]` -/
def P2097116995045378059.Spec : Prop :=
  ∀ n, (P2097116995045378059.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P11749713562035172495

`∩[A030431(n+1), A068228(n+1)]`
-/

namespace A142787.P11749713562035172495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P11749713562035172495

namespace A142787

/-- `∩[A030431(n+1), A068228(n+1)]` -/
def P11749713562035172495.Spec : Prop :=
  ∀ n, (P11749713562035172495.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P9141768926112318523

`∩[A068228(n+1), A132233(n+1)]`
-/

namespace A142787.P9141768926112318523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P9141768926112318523

namespace A142787

/-- `∩[A068228(n+1), A132233(n+1)]` -/
def P9141768926112318523.Spec : Prop :=
  ∀ n, (P9141768926112318523.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P6276792650526609618

`∩[A068228(n+1), A141885(n+1)]`
-/

namespace A142787.P6276792650526609618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P6276792650526609618

namespace A142787

/-- `∩[A068228(n+1), A141885(n+1)]` -/
def P6276792650526609618.Spec : Prop :=
  ∀ n, (P6276792650526609618.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P13400836226759282274

`∩[A045414(n+1), A068228(n+1)]`
-/

namespace A142787.P13400836226759282274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P13400836226759282274

namespace A142787

/-- `∩[A045414(n+1), A068228(n+1)]` -/
def P13400836226759282274.Spec : Prop :=
  ∀ n, (P13400836226759282274.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P12142203565260974022

`∩[A122487(n+1), A132233(n+1)]`
-/

namespace A142787.P12142203565260974022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P12142203565260974022

namespace A142787

/-- `∩[A122487(n+1), A132233(n+1)]` -/
def P12142203565260974022.Spec : Prop :=
  ∀ n, (P12142203565260974022.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P752207983303005255

`∩[A068228(n+1), A140533(n+1)]`
-/

namespace A142787.P752207983303005255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P752207983303005255

namespace A142787

/-- `∩[A068228(n+1), A140533(n+1)]` -/
def P752207983303005255.Spec : Prop :=
  ∀ n, (P752207983303005255.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P10820426341068953147

`∩[A140533(n+1), A141885(n+1)]`
-/

namespace A142787.P10820426341068953147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P10820426341068953147

namespace A142787

/-- `∩[A140533(n+1), A141885(n+1)]` -/
def P10820426341068953147.Spec : Prop :=
  ∀ n, (P10820426341068953147.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P12636496836811821739

`∩[A068228(n+1), A132238(n+1)]`
-/

namespace A142787.P12636496836811821739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P12636496836811821739

namespace A142787

/-- `∩[A068228(n+1), A132238(n+1)]` -/
def P12636496836811821739.Spec : Prop :=
  ∀ n, (P12636496836811821739.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P9679362558372636306

`∩[A122487(n+1), A132238(n+1)]`
-/

namespace A142787.P9679362558372636306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P9679362558372636306

namespace A142787

/-- `∩[A122487(n+1), A132238(n+1)]` -/
def P9679362558372636306.Spec : Prop :=
  ∀ n, (P9679362558372636306.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P244319108671493356

`∩[A132238(n+1), A141885(n+1)]`
-/

namespace A142787.P244319108671493356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P244319108671493356

namespace A142787

/-- `∩[A132238(n+1), A141885(n+1)]` -/
def P244319108671493356.Spec : Prop :=
  ∀ n, (P244319108671493356.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P17874036454864176506

`∩[A106952(n+1), A141885(n+1)]`
-/

namespace A142787.P17874036454864176506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P17874036454864176506

namespace A142787

/-- `∩[A106952(n+1), A141885(n+1)]` -/
def P17874036454864176506.Spec : Prop :=
  ∀ n, (P17874036454864176506.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P11668312031064165556

`∩[A030431(n+1), A351537(n+1)]`
-/

namespace A142787.P11668312031064165556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P11668312031064165556

namespace A142787

/-- `∩[A030431(n+1), A351537(n+1)]` -/
def P11668312031064165556.Spec : Prop :=
  ∀ n, (P11668312031064165556.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P13418033421130572392

`∩[A045414(n+1), A351537(n+1)]`
-/

namespace A142787.P13418033421130572392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P13418033421130572392

namespace A142787

/-- `∩[A045414(n+1), A351537(n+1)]` -/
def P13418033421130572392.Spec : Prop :=
  ∀ n, (P13418033421130572392.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P3316564200451143958

`∩[A132233(n+1), A351537(n+1)]`
-/

namespace A142787.P3316564200451143958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P3316564200451143958

namespace A142787

/-- `∩[A132233(n+1), A351537(n+1)]` -/
def P3316564200451143958.Spec : Prop :=
  ∀ n, (P3316564200451143958.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P7418996471613773591

`∩[A132238(n+1), A351537(n+1)]`
-/

namespace A142787.P7418996471613773591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P7418996471613773591

namespace A142787

/-- `∩[A132238(n+1), A351537(n+1)]` -/
def P7418996471613773591.Spec : Prop :=
  ∀ n, (P7418996471613773591.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P355999943025101328

`∩[A030431(n+1), A354467(n+1)]`
-/

namespace A142787.P355999943025101328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P355999943025101328

namespace A142787

/-- `∩[A030431(n+1), A354467(n+1)]` -/
def P355999943025101328.Spec : Prop :=
  ∀ n, (P355999943025101328.a n : ℤ) = A142787 (n + 1)

end A142787

/-! ## A142787.P1376621898798699806

`∩[A045414(n+1), A354467(n+1)]`
-/

namespace A142787.P1376621898798699806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142787.P1376621898798699806

namespace A142787

/-- `∩[A045414(n+1), A354467(n+1)]` -/
def P1376621898798699806.Spec : Prop :=
  ∀ n, (P1376621898798699806.a n : ℤ) = A142787 (n + 1)

end A142787

/-!
# A142788: Primes congruent to 17 mod 60.

The programs for A142788, the canonical program `A142788.P514723230058095459` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142788 has offset 1).

The definition of A142788 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142788.anchor (n : ℕ) (hn : 1 ≤ n) : A142788 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 17) (n - 1) : ℤ)` in `Proof.A142.A142788`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142788.P5161450195477334593

`∩[A030432(n+1), A107167(n+1)]`
-/

namespace A142788.P5161450195477334593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P5161450195477334593

namespace A142788

/-- `∩[A030432(n+1), A107167(n+1)]` -/
def P5161450195477334593.Spec : Prop :=
  ∀ n, (P5161450195477334593.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P267957665442058117

`∩[A039949(n+1), A107167(n+1)]`
-/

namespace A142788.P267957665442058117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P267957665442058117

namespace A142788

/-- `∩[A039949(n+1), A107167(n+1)]` -/
def P267957665442058117.Spec : Prop :=
  ∀ n, (P267957665442058117.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P13240433914747204610

`∩[A030432(n+1), A141303(n+1)]`
-/

namespace A142788.P13240433914747204610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P13240433914747204610

namespace A142788

/-- `∩[A030432(n+1), A141303(n+1)]` -/
def P13240433914747204610.Spec : Prop :=
  ∀ n, (P13240433914747204610.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P6357442163908298931

`∩[A039949(n+1), A141303(n+1)]`
-/

namespace A142788.P6357442163908298931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P6357442163908298931

namespace A142788

/-- `∩[A039949(n+1), A141303(n+1)]` -/
def P6357442163908298931.Spec : Prop :=
  ∀ n, (P6357442163908298931.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P12251225768439335795

`∩[A039949(n+1), A141886(n+1)]`
-/

namespace A142788.P12251225768439335795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P12251225768439335795

namespace A142788

/-- `∩[A039949(n+1), A141886(n+1)]` -/
def P12251225768439335795.Spec : Prop :=
  ∀ n, (P12251225768439335795.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P514723230058095459

`p?[60*n+17]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142788

/-- `p?[60*n+17]` -/
def P514723230058095459.Spec : Prop :=
  ∀ n, (P514723230058095459.a n : ℤ) = A142788 (n + 1)

theorem P514723230058095459.correct : P514723230058095459.Spec := by
  intro n
  simp only [A142788, Nat.add_sub_cancel]

end A142788

/-! ## A142788.P6421522597513942234

`∩[A008846(n+1), A039949(n+1)]`
-/

namespace A142788.P6421522597513942234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P6421522597513942234

namespace A142788

/-- `∩[A008846(n+1), A039949(n+1)]` -/
def P6421522597513942234.Spec : Prop :=
  ∀ n, (P6421522597513942234.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P7621349890412756821

`∩[A008846(n+1), A141860(n+1)]`
-/

namespace A142788.P7621349890412756821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P7621349890412756821

namespace A142788

/-- `∩[A008846(n+1), A141860(n+1)]` -/
def P7621349890412756821.Spec : Prop :=
  ∀ n, (P7621349890412756821.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P12336792234907100961

`∩[A051616(n+1), A141886(n+1)]`
-/

namespace A142788.P12336792234907100961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P12336792234907100961

namespace A142788

/-- `∩[A051616(n+1), A141886(n+1)]` -/
def P12336792234907100961.Spec : Prop :=
  ∀ n, (P12336792234907100961.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P15612134387207389560

`∩[A343241(n+1), A141886(n+1)]`
-/

namespace A142788.P15612134387207389560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P15612134387207389560

namespace A142788

/-- `∩[A343241(n+1), A141886(n+1)]` -/
def P15612134387207389560.Spec : Prop :=
  ∀ n, (P15612134387207389560.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P7531592945658927457

`∩[A039949(n+1), A122487(n+1)]`
-/

namespace A142788.P7531592945658927457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P7531592945658927457

namespace A142788

/-- `∩[A039949(n+1), A122487(n+1)]` -/
def P7531592945658927457.Spec : Prop :=
  ∀ n, (P7531592945658927457.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P2881168739073703071

`∩[A030432(n+1), A040117(n+1)]`
-/

namespace A142788.P2881168739073703071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P2881168739073703071

namespace A142788

/-- `∩[A030432(n+1), A040117(n+1)]` -/
def P2881168739073703071.Spec : Prop :=
  ∀ n, (P2881168739073703071.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P10580851676468678659

`∩[A039949(n+1), A040117(n+1)]`
-/

namespace A142788.P10580851676468678659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P10580851676468678659

namespace A142788

/-- `∩[A039949(n+1), A040117(n+1)]` -/
def P10580851676468678659.Spec : Prop :=
  ∀ n, (P10580851676468678659.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P2588412030312261446

`∩[A040117(n+1), A132239(n+1)]`
-/

namespace A142788.P2588412030312261446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P2588412030312261446

namespace A142788

/-- `∩[A040117(n+1), A132239(n+1)]` -/
def P2588412030312261446.Spec : Prop :=
  ∀ n, (P2588412030312261446.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P8462682847701983821

`∩[A040117(n+1), A141860(n+1)]`
-/

namespace A142788.P8462682847701983821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P8462682847701983821

namespace A142788

/-- `∩[A040117(n+1), A141860(n+1)]` -/
def P8462682847701983821.Spec : Prop :=
  ∀ n, (P8462682847701983821.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P15469749625528468368

`∩[A040117(n+1), A141886(n+1)]`
-/

namespace A142788.P15469749625528468368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P15469749625528468368

namespace A142788

/-- `∩[A040117(n+1), A141886(n+1)]` -/
def P15469749625528468368.Spec : Prop :=
  ∀ n, (P15469749625528468368.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P12697015162425629279

`∩[A030432(n+1), A243183(n+1)]`
-/

namespace A142788.P12697015162425629279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P12697015162425629279

namespace A142788

/-- `∩[A030432(n+1), A243183(n+1)]` -/
def P12697015162425629279.Spec : Prop :=
  ∀ n, (P12697015162425629279.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P14607105854459689972

`∩[A132239(n+1), A243183(n+1)]`
-/

namespace A142788.P14607105854459689972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P14607105854459689972

namespace A142788

/-- `∩[A132239(n+1), A243183(n+1)]` -/
def P14607105854459689972.Spec : Prop :=
  ∀ n, (P14607105854459689972.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P17214934560342331379

`∩[A040117(n+1), A140533(n+1)]`
-/

namespace A142788.P17214934560342331379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P17214934560342331379

namespace A142788

/-- `∩[A040117(n+1), A140533(n+1)]` -/
def P17214934560342331379.Spec : Prop :=
  ∀ n, (P17214934560342331379.a n : ℤ) = A142788 (n + 1)

end A142788

/-! ## A142788.P6749155670073321922

`∩[A140533(n+1), A107167(n+1)]`
-/

namespace A142788.P6749155670073321922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142788.P6749155670073321922

namespace A142788

/-- `∩[A140533(n+1), A107167(n+1)]` -/
def P6749155670073321922.Spec : Prop :=
  ∀ n, (P6749155670073321922.a n : ℤ) = A142788 (n + 1)

end A142788

/-!
# A142789: Primes congruent to 19 mod 60.

The programs for A142789, the canonical program `A142789.P14610620924255852265` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142789 has offset 1).

The definition of A142789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142789.P6326392324272193841

`∩[A030433(n+1), A107168(n+1)]`
-/

namespace A142789.P6326392324272193841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P6326392324272193841

namespace A142789

/-- `∩[A030433(n+1), A107168(n+1)]` -/
def P6326392324272193841.Spec : Prop :=
  ∀ n, (P6326392324272193841.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P11045302784478325852

`∩[A107168(n+1), A132234(n+1)]`
-/

namespace A142789.P11045302784478325852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P11045302784478325852

namespace A142789

/-- `∩[A107168(n+1), A132234(n+1)]` -/
def P11045302784478325852.Spec : Prop :=
  ∀ n, (P11045302784478325852.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P14610620924255852265

`∩[A107168(n+1), A141887(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A142789

/-- `∩[A107168(n+1), A141887(n+1)]` -/
def P14610620924255852265.Spec : Prop :=
  ∀ n, (P14610620924255852265.a n : ℤ) = A142789 (n + 1)

theorem P14610620924255852265.correct : P14610620924255852265.Spec := by
  intro n
  simp only [A142789, Nat.add_sub_cancel]

end A142789

/-! ## A142789.P6732379141607404460

`p?[xor(2, 15*n+2)]`
-/

namespace A142789.P6732379141607404460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (15 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142789.P6732379141607404460

namespace A142789

/-- `p?[xor(2, 15*n+2)]` -/
def P6732379141607404460.Spec : Prop :=
  ∀ n, (P6732379141607404460.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P10391527176350807503

`p?[6*10*n-41]`
-/

namespace A142789.P10391527176350807503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (10 * n) : ℤ) - 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142789.P10391527176350807503

namespace A142789

/-- `p?[6*10*n-41]` -/
def P10391527176350807503.Spec : Prop :=
  ∀ n, P10391527176350807503.a n = A142789 (n + 1)

end A142789

/-! ## A142789.P16134472841833986995

`∩[A141887(n+1), A243174(n+1)]`
-/

namespace A142789.P16134472841833986995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P16134472841833986995

namespace A142789

/-- `∩[A141887(n+1), A243174(n+1)]` -/
def P16134472841833986995.Spec : Prop :=
  ∀ n, (P16134472841833986995.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P5813719418799807949

`∩[A033212(n+1), A141887(n+1)]`
-/

namespace A142789.P5813719418799807949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P5813719418799807949

namespace A142789

/-- `∩[A033212(n+1), A141887(n+1)]` -/
def P5813719418799807949.Spec : Prop :=
  ∀ n, (P5813719418799807949.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P5751111479913033245

`∩[A107168(n+1), A132239(n+1)]`
-/

namespace A142789.P5751111479913033245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P5751111479913033245

namespace A142789

/-- `∩[A107168(n+1), A132239(n+1)]` -/
def P5751111479913033245.Spec : Prop :=
  ∀ n, (P5751111479913033245.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P9971422922372822532

`∩[A045457(n+1), A107168(n+1)]`
-/

namespace A142789.P9971422922372822532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P9971422922372822532

namespace A142789

/-- `∩[A045457(n+1), A107168(n+1)]` -/
def P9971422922372822532.Spec : Prop :=
  ∀ n, (P9971422922372822532.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P12303684163102584882

`∩[A107168(n+1), A140506(n+1)]`
-/

namespace A142789.P12303684163102584882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P12303684163102584882

namespace A142789

/-- `∩[A107168(n+1), A140506(n+1)]` -/
def P12303684163102584882.Spec : Prop :=
  ∀ n, (P12303684163102584882.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P18055166608558959468

`∩[A140506(n+1), A141887(n+1)]`
-/

namespace A142789.P18055166608558959468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P18055166608558959468

namespace A142789

/-- `∩[A140506(n+1), A141887(n+1)]` -/
def P18055166608558959468.Spec : Prop :=
  ∀ n, (P18055166608558959468.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P4271860917010066015

`∩[A030433(n+1), A068229(n+1)]`
-/

namespace A142789.P4271860917010066015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P4271860917010066015

namespace A142789

/-- `∩[A030433(n+1), A068229(n+1)]` -/
def P4271860917010066015.Spec : Prop :=
  ∀ n, (P4271860917010066015.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P5633149654356269227

`∩[A045457(n+1), A068229(n+1)]`
-/

namespace A142789.P5633149654356269227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P5633149654356269227

namespace A142789

/-- `∩[A045457(n+1), A068229(n+1)]` -/
def P5633149654356269227.Spec : Prop :=
  ∀ n, (P5633149654356269227.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P672775678191264661

`∩[A068229(n+1), A132234(n+1)]`
-/

namespace A142789.P672775678191264661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P672775678191264661

namespace A142789

/-- `∩[A068229(n+1), A132234(n+1)]` -/
def P672775678191264661.Spec : Prop :=
  ∀ n, (P672775678191264661.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P11375342285436403831

`∩[A068229(n+1), A132239(n+1)]`
-/

namespace A142789.P11375342285436403831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P11375342285436403831

namespace A142789

/-- `∩[A068229(n+1), A132239(n+1)]` -/
def P11375342285436403831.Spec : Prop :=
  ∀ n, (P11375342285436403831.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P844135648738488683

`∩[A068229(n+1), A140506(n+1)]`
-/

namespace A142789.P844135648738488683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P844135648738488683

namespace A142789

/-- `∩[A068229(n+1), A140506(n+1)]` -/
def P844135648738488683.Spec : Prop :=
  ∀ n, (P844135648738488683.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P1149596817245244927

`∩[A068229(n+1), A141887(n+1)]`
-/

namespace A142789.P1149596817245244927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P1149596817245244927

namespace A142789

/-- `∩[A068229(n+1), A141887(n+1)]` -/
def P1149596817245244927.Spec : Prop :=
  ∀ n, (P1149596817245244927.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P1505246321320108162

`∩[A122869(n+1), A132234(n+1)]`
-/

namespace A142789.P1505246321320108162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P1505246321320108162

namespace A142789

/-- `∩[A122869(n+1), A132234(n+1)]` -/
def P1505246321320108162.Spec : Prop :=
  ∀ n, (P1505246321320108162.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P16357844136923397328

`∩[A068229(n+1), A327753(n+1)]`
-/

namespace A142789.P16357844136923397328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P16357844136923397328

namespace A142789

/-- `∩[A068229(n+1), A327753(n+1)]` -/
def P16357844136923397328.Spec : Prop :=
  ∀ n, (P16357844136923397328.a n : ℤ) = A142789 (n + 1)

end A142789

/-! ## A142789.P5636220561988235406

`∩[A004618(n+1), A068229(n+1)]`
-/

namespace A142789.P5636220561988235406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142789.P5636220561988235406

namespace A142789

/-- `∩[A004618(n+1), A068229(n+1)]` -/
def P5636220561988235406.Spec : Prop :=
  ∀ n, (P5636220561988235406.a n : ℤ) = A142789 (n + 1)

end A142789

/-!
# A142790: Primes congruent to 23 mod 60.

The programs for A142790, the canonical program `A142790.P13001401062835289333` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142790 has offset 1).

The definition of A142790 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142790.anchor (n : ℕ) (hn : 1 ≤ n) : A142790 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 23) (n - 1) : ℤ)` in `Proof.A142.A142790`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142790.P12857568348110544524

`∩[A030431(n+1), A139831(n+1)]`
-/

namespace A142790.P12857568348110544524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P12857568348110544524

namespace A142790

/-- `∩[A030431(n+1), A139831(n+1)]` -/
def P12857568348110544524.Spec : Prop :=
  ∀ n, (P12857568348110544524.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P14620633047084812102

`∩[A105854(n+1), A139831(n+1)]`
-/

namespace A142790.P14620633047084812102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P14620633047084812102

namespace A142790

/-- `∩[A105854(n+1), A139831(n+1)]` -/
def P14620633047084812102.Spec : Prop :=
  ∀ n, (P14620633047084812102.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P2379202092818647672

`∩[A105854(n+1), A132235(n+1)]`
-/

namespace A142790.P2379202092818647672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P2379202092818647672

namespace A142790

/-- `∩[A105854(n+1), A132235(n+1)]` -/
def P2379202092818647672.Spec : Prop :=
  ∀ n, (P2379202092818647672.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P4731979478484808128

`∩[A107169(n+1), A132235(n+1)]`
-/

namespace A142790.P4731979478484808128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P4731979478484808128

namespace A142790

/-- `∩[A107169(n+1), A132235(n+1)]` -/
def P4731979478484808128.Spec : Prop :=
  ∀ n, (P4731979478484808128.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P13001401062835289333

`p?[6*10*n+23]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142790

/-- `p?[6*10*n+23]` -/
def P13001401062835289333.Spec : Prop :=
  ∀ n, (P13001401062835289333.a n : ℤ) = A142790 (n + 1)

theorem P13001401062835289333.correct : P13001401062835289333.Spec := by
  intro n
  simp only [A142790, Nat.add_sub_cancel]

end A142790

/-! ## A142790.P5055619737551707895

`∩[A343241(n+1), A105854(n+1)]`
-/

namespace A142790.P5055619737551707895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P5055619737551707895

namespace A142790

/-- `∩[A343241(n+1), A105854(n+1)]` -/
def P5055619737551707895.Spec : Prop :=
  ∀ n, (P5055619737551707895.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P17632705768011492984

`∩[A045414(n+1), A139831(n+1)]`
-/

namespace A142790.P17632705768011492984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P17632705768011492984

namespace A142790

/-- `∩[A045414(n+1), A139831(n+1)]` -/
def P17632705768011492984.Spec : Prop :=
  ∀ n, (P17632705768011492984.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P16150902220571696818

`∩[A105854(n+1), A132237(n+1)]`
-/

namespace A142790.P16150902220571696818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P16150902220571696818

namespace A142790

/-- `∩[A105854(n+1), A132237(n+1)]` -/
def P16150902220571696818.Spec : Prop :=
  ∀ n, (P16150902220571696818.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P3342338315600470753

`∩[A107169(n+1), A132237(n+1)]`
-/

namespace A142790.P3342338315600470753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P3342338315600470753

namespace A142790

/-- `∩[A107169(n+1), A132237(n+1)]` -/
def P3342338315600470753.Spec : Prop :=
  ∀ n, (P3342338315600470753.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P5337840468951512485

`∩[A139831(n+1), A132237(n+1)]`
-/

namespace A142790.P5337840468951512485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P5337840468951512485

namespace A142790

/-- `∩[A139831(n+1), A132237(n+1)]` -/
def P5337840468951512485.Spec : Prop :=
  ∀ n, (P5337840468951512485.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P12207176544149692589

`∩[A106865(n+1), A132235(n+1)]`
-/

namespace A142790.P12207176544149692589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P12207176544149692589

namespace A142790

/-- `∩[A106865(n+1), A132235(n+1)]` -/
def P12207176544149692589.Spec : Prop :=
  ∀ n, (P12207176544149692589.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P14361375208341904913

`∩[A030431(n+1), A068231(n+1)]`
-/

namespace A142790.P14361375208341904913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P14361375208341904913

namespace A142790

/-- `∩[A030431(n+1), A068231(n+1)]` -/
def P14361375208341904913.Spec : Prop :=
  ∀ n, (P14361375208341904913.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P14080068208551030378

`∩[A045414(n+1), A068231(n+1)]`
-/

namespace A142790.P14080068208551030378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P14080068208551030378

namespace A142790

/-- `∩[A045414(n+1), A068231(n+1)]` -/
def P14080068208551030378.Spec : Prop :=
  ∀ n, (P14080068208551030378.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P10302606745889745501

`∩[A068231(n+1), A105854(n+1)]`
-/

namespace A142790.P10302606745889745501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P10302606745889745501

namespace A142790

/-- `∩[A068231(n+1), A105854(n+1)]` -/
def P10302606745889745501.Spec : Prop :=
  ∀ n, (P10302606745889745501.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P8718803487897573789

`∩[A068231(n+1), A132235(n+1)]`
-/

namespace A142790.P8718803487897573789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P8718803487897573789

namespace A142790

/-- `∩[A068231(n+1), A132235(n+1)]` -/
def P8718803487897573789.Spec : Prop :=
  ∀ n, (P8718803487897573789.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P6122114658094464004

`∩[A068231(n+1), A132237(n+1)]`
-/

namespace A142790.P6122114658094464004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P6122114658094464004

namespace A142790

/-- `∩[A068231(n+1), A132237(n+1)]` -/
def P6122114658094464004.Spec : Prop :=
  ∀ n, (P6122114658094464004.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P3934210256101186767

`∩[A105854(n+1), A385220(n+1)]`
-/

namespace A142790.P3934210256101186767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P3934210256101186767

namespace A142790

/-- `∩[A105854(n+1), A385220(n+1)]` -/
def P3934210256101186767.Spec : Prop :=
  ∀ n, (P3934210256101186767.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P14901801979978673288

`∩[A132235(n+1), A385220(n+1)]`
-/

namespace A142790.P14901801979978673288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P14901801979978673288

namespace A142790

/-- `∩[A132235(n+1), A385220(n+1)]` -/
def P14901801979978673288.Spec : Prop :=
  ∀ n, (P14901801979978673288.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P17452780380268485425

`∩[A105854(n+1), A363215(n+1)]`
-/

namespace A142790.P17452780380268485425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P17452780380268485425

namespace A142790

/-- `∩[A105854(n+1), A363215(n+1)]` -/
def P17452780380268485425.Spec : Prop :=
  ∀ n, (P17452780380268485425.a n : ℤ) = A142790 (n + 1)

end A142790

/-! ## A142790.P16867586546790032894

`∩[A132235(n+1), A363215(n+1)]`
-/

namespace A142790.P16867586546790032894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142790.P16867586546790032894

namespace A142790

/-- `∩[A132235(n+1), A363215(n+1)]` -/
def P16867586546790032894.Spec : Prop :=
  ∀ n, (P16867586546790032894.a n : ℤ) = A142790 (n + 1)

end A142790

/-!
# A142791: Primes congruent to 29 mod 60.

The programs for A142791, the canonical program `A142791.P5434173776646440451` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142791 has offset 1).

The definition of A142791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142791.P16744508716878162967

`∩[A030433(n+1), A107151(n+1)]`
-/

namespace A142791.P16744508716878162967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P16744508716878162967

namespace A142791

/-- `∩[A030433(n+1), A107151(n+1)]` -/
def P16744508716878162967.Spec : Prop :=
  ∀ n, (P16744508716878162967.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P5434173776646440451

`∩[A107151(n+1), A141883(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A142791

/-- `∩[A107151(n+1), A141883(n+1)]` -/
def P5434173776646440451.Spec : Prop :=
  ∀ n, (P5434173776646440451.a n : ℤ) = A142791 (n + 1)

theorem P5434173776646440451.correct : P5434173776646440451.Spec := by
  intro n
  simp only [A142791, Nat.add_sub_cancel]

end A142791

/-! ## A142791.P1534128164118285804

`∩[A107151(n+1), A132236(n+1)]`
-/

namespace A142791.P1534128164118285804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P1534128164118285804

namespace A142791

/-- `∩[A107151(n+1), A132236(n+1)]` -/
def P1534128164118285804.Spec : Prop :=
  ∀ n, (P1534128164118285804.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P17733972478141691488

`∩[A132236(n+1), A141883(n+1)]`
-/

namespace A142791.P17733972478141691488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P17733972478141691488

namespace A142791

/-- `∩[A132236(n+1), A141883(n+1)]` -/
def P17733972478141691488.Spec : Prop :=
  ∀ n, (P17733972478141691488.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P1247125973824889164

`p?[6*10*n+29]`
-/

namespace A142791.P1247125973824889164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (10 * n) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142791.P1247125973824889164

namespace A142791

/-- `p?[6*10*n+29]` -/
def P1247125973824889164.Spec : Prop :=
  ∀ n, (P1247125973824889164.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P3013931021224417706

`∩[A008846(n+1), A132236(n+1)]`
-/

namespace A142791.P3013931021224417706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P3013931021224417706

namespace A142791

/-- `∩[A008846(n+1), A132236(n+1)]` -/
def P3013931021224417706.Spec : Prop :=
  ∀ n, (P3013931021224417706.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P756932578020732454

`record[p?[lcm(32, n)-(n+1)]]`
-/

namespace A142791.P756932578020732454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 32 n : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142791.P756932578020732454

namespace A142791

/-- `record[p?[lcm(32, n)-(n+1)]]` -/
def P756932578020732454.Spec : Prop :=
  ∀ n, P756932578020732454.a n = A142791 (n + 1)

end A142791

/-! ## A142791.P9786795941930707719

`∩[A033205(n+1), A132236(n+1)]`
-/

namespace A142791.P9786795941930707719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P9786795941930707719

namespace A142791

/-- `∩[A033205(n+1), A132236(n+1)]` -/
def P9786795941930707719.Spec : Prop :=
  ∀ n, (P9786795941930707719.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P6644752736637856013

`∩[A132236(n+1), A216815(n+1)]`
-/

namespace A142791.P6644752736637856013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P6644752736637856013

namespace A142791

/-- `∩[A132236(n+1), A216815(n+1)]` -/
def P6644752736637856013.Spec : Prop :=
  ∀ n, (P6644752736637856013.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P837057198615443177

`∩[A107151(n+1), A132240(n+1)]`
-/

namespace A142791.P837057198615443177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P837057198615443177

namespace A142791

/-- `∩[A107151(n+1), A132240(n+1)]` -/
def P837057198615443177.Spec : Prop :=
  ∀ n, (P837057198615443177.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P4971155396598954039

`∩[A132240(n+1), A141883(n+1)]`
-/

namespace A142791.P4971155396598954039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P4971155396598954039

namespace A142791

/-- `∩[A132240(n+1), A141883(n+1)]` -/
def P4971155396598954039.Spec : Prop :=
  ∀ n, (P4971155396598954039.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P13764775251463937963

`∩[A030433(n+1), A040117(n+1)]`
-/

namespace A142791.P13764775251463937963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P13764775251463937963

namespace A142791

/-- `∩[A030433(n+1), A040117(n+1)]` -/
def P13764775251463937963.Spec : Prop :=
  ∀ n, (P13764775251463937963.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P17373080739235597626

`∩[A040117(n+1), A132236(n+1)]`
-/

namespace A142791.P17373080739235597626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P17373080739235597626

namespace A142791

/-- `∩[A040117(n+1), A132236(n+1)]` -/
def P17373080739235597626.Spec : Prop :=
  ∀ n, (P17373080739235597626.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P4352873282661067819

`∩[A040117(n+1), A132240(n+1)]`
-/

namespace A142791.P4352873282661067819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P4352873282661067819

namespace A142791

/-- `∩[A040117(n+1), A132240(n+1)]` -/
def P4352873282661067819.Spec : Prop :=
  ∀ n, (P4352873282661067819.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P9233957595315425716

`∩[A040117(n+1), A141883(n+1)]`
-/

namespace A142791.P9233957595315425716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P9233957595315425716

namespace A142791

/-- `∩[A040117(n+1), A141883(n+1)]` -/
def P9233957595315425716.Spec : Prop :=
  ∀ n, (P9233957595315425716.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P12153389184545546420

`∩[A030433(n+1), A243183(n+1)]`
-/

namespace A142791.P12153389184545546420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P12153389184545546420

namespace A142791

/-- `∩[A030433(n+1), A243183(n+1)]` -/
def P12153389184545546420.Spec : Prop :=
  ∀ n, (P12153389184545546420.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P16562166466424174473

`∩[A243183(n+1), A132240(n+1)]`
-/

namespace A142791.P16562166466424174473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P16562166466424174473

namespace A142791

/-- `∩[A243183(n+1), A132240(n+1)]` -/
def P16562166466424174473.Spec : Prop :=
  ∀ n, (P16562166466424174473.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P15519276092280076304

`∩[A091729(n+1), A132236(n+1)]`
-/

namespace A142791.P15519276092280076304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P15519276092280076304

namespace A142791

/-- `∩[A091729(n+1), A132236(n+1)]` -/
def P15519276092280076304.Spec : Prop :=
  ∀ n, (P15519276092280076304.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P12432541829392412025

`∩[A141785(n+1), A141883(n+1)]`
-/

namespace A142791.P12432541829392412025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P12432541829392412025

namespace A142791

/-- `∩[A141785(n+1), A141883(n+1)]` -/
def P12432541829392412025.Spec : Prop :=
  ∀ n, (P12432541829392412025.a n : ℤ) = A142791 (n + 1)

end A142791

/-! ## A142791.P9369803434799101285

`∩[A040117(n+1), A327753(n+1)]`
-/

namespace A142791.P9369803434799101285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142791.P9369803434799101285

namespace A142791

/-- `∩[A040117(n+1), A327753(n+1)]` -/
def P9369803434799101285.Spec : Prop :=
  ∀ n, (P9369803434799101285.a n : ℤ) = A142791 (n + 1)

end A142791

/-!
# A142792: Primes congruent to 31 mod 60.

The programs for A142792, the canonical program `A142792.P14666130820681181085` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142792 has offset 1).

The definition of A142792 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142792.anchor (n : ℕ) (hn : 1 ≤ n) : A142792 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 31) (n - 1) : ℤ)` in `Proof.A142.A142792`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142792.P14124255860281813934

`∩[A132230(n+1), A141884(n+1)]`
-/

namespace A142792.P14124255860281813934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P14124255860281813934

namespace A142792

/-- `∩[A132230(n+1), A141884(n+1)]` -/
def P14124255860281813934.Spec : Prop :=
  ∀ n, (P14124255860281813934.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P2007595570142133855

`∩[A030430(n+1), A107168(n+1)]`
-/

namespace A142792.P2007595570142133855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P2007595570142133855

namespace A142792

/-- `∩[A030430(n+1), A107168(n+1)]` -/
def P2007595570142133855.Spec : Prop :=
  ∀ n, (P2007595570142133855.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P5788079051830351801

`∩[A107168(n+1), A132230(n+1)]`
-/

namespace A142792.P5788079051830351801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P5788079051830351801

namespace A142792

/-- `∩[A107168(n+1), A132230(n+1)]` -/
def P5788079051830351801.Spec : Prop :=
  ∀ n, (P5788079051830351801.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P5128351847648424524

`∩[A107168(n+1), A141884(n+1)]`
-/

namespace A142792.P5128351847648424524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P5128351847648424524

namespace A142792

/-- `∩[A107168(n+1), A141884(n+1)]` -/
def P5128351847648424524.Spec : Prop :=
  ∀ n, (P5128351847648424524.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P14666130820681181085

`p?[6*10*n-29]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142792

/-- `p?[6*10*n-29]` -/
def P14666130820681181085.Spec : Prop :=
  ∀ n, P14666130820681181085.a n = A142792 (n + 1)

theorem P14666130820681181085.correct : P14666130820681181085.Spec := by
  intro n
  simp only [A142792, Nat.add_sub_cancel]

end A142792

/-! ## A142792.P2560012988558034626

`or(1, p?[or(3, 30*(n+1))])`
-/

namespace A142792.P2560012988558034626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (30 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142792.P2560012988558034626

namespace A142792

/-- `or(1, p?[or(3, 30*(n+1))])` -/
def P2560012988558034626.Spec : Prop :=
  ∀ n, (P2560012988558034626.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P1465513566518211446

`∩[A141884(n+1), A243174(n+1)]`
-/

namespace A142792.P1465513566518211446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P1465513566518211446

namespace A142792

/-- `∩[A141884(n+1), A243174(n+1)]` -/
def P1465513566518211446.Spec : Prop :=
  ∀ n, (P1465513566518211446.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P7736090502616004978

`record[p?[lcm(32, n+1)-n]]`
-/

namespace A142792.P7736090502616004978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 32 (n + 1) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142792.P7736090502616004978

namespace A142792

/-- `record[p?[lcm(32, n+1)-n]]` -/
def P7736090502616004978.Spec : Prop :=
  ∀ n, P7736090502616004978.a n = A142792 (n + 1)

end A142792

/-! ## A142792.P13197681756536107058

`∩[A033212(n+1), A141884(n+1)]`
-/

namespace A142792.P13197681756536107058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P13197681756536107058

namespace A142792

/-- `∩[A033212(n+1), A141884(n+1)]` -/
def P13197681756536107058.Spec : Prop :=
  ∀ n, (P13197681756536107058.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P1978638863118291813

`∩[A045453(n+1), A107168(n+1)]`
-/

namespace A142792.P1978638863118291813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P1978638863118291813

namespace A142792

/-- `∩[A045453(n+1), A107168(n+1)]` -/
def P1978638863118291813.Spec : Prop :=
  ∀ n, (P1978638863118291813.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P10511611150188714250

`∩[A107168(n+1), A132240(n+1)]`
-/

namespace A142792.P10511611150188714250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P10511611150188714250

namespace A142792

/-- `∩[A107168(n+1), A132240(n+1)]` -/
def P10511611150188714250.Spec : Prop :=
  ∀ n, (P10511611150188714250.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P9328354717218303190

`∩[A132240(n+1), A141884(n+1)]`
-/

namespace A142792.P9328354717218303190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P9328354717218303190

namespace A142792

/-- `∩[A132240(n+1), A141884(n+1)]` -/
def P9328354717218303190.Spec : Prop :=
  ∀ n, (P9328354717218303190.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P2866170998756919107

`∩[A030430(n+1), A068229(n+1)]`
-/

namespace A142792.P2866170998756919107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P2866170998756919107

namespace A142792

/-- `∩[A030430(n+1), A068229(n+1)]` -/
def P2866170998756919107.Spec : Prop :=
  ∀ n, (P2866170998756919107.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P8213476656132816954

`∩[A045453(n+1), A068229(n+1)]`
-/

namespace A142792.P8213476656132816954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P8213476656132816954

namespace A142792

/-- `∩[A045453(n+1), A068229(n+1)]` -/
def P8213476656132816954.Spec : Prop :=
  ∀ n, (P8213476656132816954.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P18419410745108305923

`∩[A068229(n+1), A132230(n+1)]`
-/

namespace A142792.P18419410745108305923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P18419410745108305923

namespace A142792

/-- `∩[A068229(n+1), A132230(n+1)]` -/
def P18419410745108305923.Spec : Prop :=
  ∀ n, (P18419410745108305923.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P2907336971445105511

`∩[A068229(n+1), A132240(n+1)]`
-/

namespace A142792.P2907336971445105511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P2907336971445105511

namespace A142792

/-- `∩[A068229(n+1), A132240(n+1)]` -/
def P2907336971445105511.Spec : Prop :=
  ∀ n, (P2907336971445105511.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P11145387020485515394

`∩[A068229(n+1), A141884(n+1)]`
-/

namespace A142792.P11145387020485515394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P11145387020485515394

namespace A142792

/-- `∩[A068229(n+1), A141884(n+1)]` -/
def P11145387020485515394.Spec : Prop :=
  ∀ n, (P11145387020485515394.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P11154923673977330937

`∩[A122869(n+1), A132230(n+1)]`
-/

namespace A142792.P11154923673977330937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P11154923673977330937

namespace A142792

/-- `∩[A122869(n+1), A132230(n+1)]` -/
def P11154923673977330937.Spec : Prop :=
  ∀ n, (P11154923673977330937.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P13863923684440649379

`∩[A068229(n+1), A090756(n+1)]`
-/

namespace A142792.P13863923684440649379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P13863923684440649379

namespace A142792

/-- `∩[A068229(n+1), A090756(n+1)]` -/
def P13863923684440649379.Spec : Prop :=
  ∀ n, (P13863923684440649379.a n : ℤ) = A142792 (n + 1)

end A142792

/-! ## A142792.P11450893583274711843

`∩[A090756(n+1), A107168(n+1)]`
-/

namespace A142792.P11450893583274711843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142792.P11450893583274711843

namespace A142792

/-- `∩[A090756(n+1), A107168(n+1)]` -/
def P11450893583274711843.Spec : Prop :=
  ∀ n, (P11450893583274711843.a n : ℤ) = A142792 (n + 1)

end A142792

/-!
# A142793: Primes congruent to 37 mod 60.

The programs for A142793, the canonical program `A142793.P13372255078100288540` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142793 has offset 1).

The definition of A142793 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142793.anchor (n : ℕ) (hn : 1 ≤ n) : A142793 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 37) (n - 1) : ℤ)` in `Proof.A142.A142793`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142793.P2836481156276860665

`∩[A132231(n+1), A141886(n+1)]`
-/

namespace A142793.P2836481156276860665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P2836481156276860665

namespace A142793

/-- `∩[A132231(n+1), A141886(n+1)]` -/
def P2836481156276860665.Spec : Prop :=
  ∀ n, (P2836481156276860665.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P13372255078100288540

`p?[60*n+37]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142793

/-- `p?[60*n+37]` -/
def P13372255078100288540.Spec : Prop :=
  ∀ n, (P13372255078100288540.a n : ℤ) = A142793 (n + 1)

theorem P13372255078100288540.correct : P13372255078100288540.Spec := by
  intro n
  simp only [A142793, Nat.add_sub_cancel]

end A142793

/-! ## A142793.P5775847201782103210

`∩[A008846(n+1), A132231(n+1)]`
-/

namespace A142793.P5775847201782103210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P5775847201782103210

namespace A142793

/-- `∩[A008846(n+1), A132231(n+1)]` -/
def P5775847201782103210.Spec : Prop :=
  ∀ n, (P5775847201782103210.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P1846472002977472209

`∩[A030432(n+1), A068228(n+1)]`
-/

namespace A142793.P1846472002977472209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P1846472002977472209

namespace A142793

/-- `∩[A030432(n+1), A068228(n+1)]` -/
def P1846472002977472209.Spec : Prop :=
  ∀ n, (P1846472002977472209.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P8335348784225740418

`∩[A068228(n+1), A132231(n+1)]`
-/

namespace A142793.P8335348784225740418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P8335348784225740418

namespace A142793

/-- `∩[A068228(n+1), A132231(n+1)]` -/
def P8335348784225740418.Spec : Prop :=
  ∀ n, (P8335348784225740418.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P1806457539699747208

`∩[A068228(n+1), A141886(n+1)]`
-/

namespace A142793.P1806457539699747208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P1806457539699747208

namespace A142793

/-- `∩[A068228(n+1), A141886(n+1)]` -/
def P1806457539699747208.Spec : Prop :=
  ∀ n, (P1806457539699747208.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P13216034326410654465

`∩[A122487(n+1), A132231(n+1)]`
-/

namespace A142793.P13216034326410654465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P13216034326410654465

namespace A142793

/-- `∩[A122487(n+1), A132231(n+1)]` -/
def P13216034326410654465.Spec : Prop :=
  ∀ n, (P13216034326410654465.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P4887174777359790758

`∩[A068228(n+1), A132237(n+1)]`
-/

namespace A142793.P4887174777359790758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P4887174777359790758

namespace A142793

/-- `∩[A068228(n+1), A132237(n+1)]` -/
def P4887174777359790758.Spec : Prop :=
  ∀ n, (P4887174777359790758.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P8266372481074888979

`∩[A132237(n+1), A141886(n+1)]`
-/

namespace A142793.P8266372481074888979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P8266372481074888979

namespace A142793

/-- `∩[A132237(n+1), A141886(n+1)]` -/
def P8266372481074888979.Spec : Prop :=
  ∀ n, (P8266372481074888979.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P70296683229418264

`∩[A045357(n+1), A068228(n+1)]`
-/

namespace A142793.P70296683229418264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P70296683229418264

namespace A142793

/-- `∩[A045357(n+1), A068228(n+1)]` -/
def P70296683229418264.Spec : Prop :=
  ∀ n, (P70296683229418264.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P18072195760136519804

`∩[A045380(n+1), A068228(n+1)]`
-/

namespace A142793.P18072195760136519804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P18072195760136519804

namespace A142793

/-- `∩[A045380(n+1), A068228(n+1)]` -/
def P18072195760136519804.Spec : Prop :=
  ∀ n, (P18072195760136519804.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P7253230748149913541

`∩[A106952(n+1), A141886(n+1)]`
-/

namespace A142793.P7253230748149913541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P7253230748149913541

namespace A142793

/-- `∩[A106952(n+1), A141886(n+1)]` -/
def P7253230748149913541.Spec : Prop :=
  ∀ n, (P7253230748149913541.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P18250666310118753466

`∩[A030432(n+1), A351537(n+1)]`
-/

namespace A142793.P18250666310118753466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P18250666310118753466

namespace A142793

/-- `∩[A030432(n+1), A351537(n+1)]` -/
def P18250666310118753466.Spec : Prop :=
  ∀ n, (P18250666310118753466.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P3469099911591287346

`∩[A045357(n+1), A351537(n+1)]`
-/

namespace A142793.P3469099911591287346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P3469099911591287346

namespace A142793

/-- `∩[A045357(n+1), A351537(n+1)]` -/
def P3469099911591287346.Spec : Prop :=
  ∀ n, (P3469099911591287346.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P15724097921593012533

`∩[A045380(n+1), A351537(n+1)]`
-/

namespace A142793.P15724097921593012533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P15724097921593012533

namespace A142793

/-- `∩[A045380(n+1), A351537(n+1)]` -/
def P15724097921593012533.Spec : Prop :=
  ∀ n, (P15724097921593012533.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P7026745473332375249

`∩[A132231(n+1), A351537(n+1)]`
-/

namespace A142793.P7026745473332375249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P7026745473332375249

namespace A142793

/-- `∩[A132231(n+1), A351537(n+1)]` -/
def P7026745473332375249.Spec : Prop :=
  ∀ n, (P7026745473332375249.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P9499139283463732790

`∩[A132237(n+1), A351537(n+1)]`
-/

namespace A142793.P9499139283463732790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P9499139283463732790

namespace A142793

/-- `∩[A132237(n+1), A351537(n+1)]` -/
def P9499139283463732790.Spec : Prop :=
  ∀ n, (P9499139283463732790.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P12135502906013448350

`∩[A141886(n+1), A351537(n+1)]`
-/

namespace A142793.P12135502906013448350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P12135502906013448350

namespace A142793

/-- `∩[A141886(n+1), A351537(n+1)]` -/
def P12135502906013448350.Spec : Prop :=
  ∀ n, (P12135502906013448350.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P11432077611801747399

`∩[A030432(n+1), A354467(n+1)]`
-/

namespace A142793.P11432077611801747399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P11432077611801747399

namespace A142793

/-- `∩[A030432(n+1), A354467(n+1)]` -/
def P11432077611801747399.Spec : Prop :=
  ∀ n, (P11432077611801747399.a n : ℤ) = A142793 (n + 1)

end A142793

/-! ## A142793.P10822077388092491364

`∩[A045357(n+1), A354467(n+1)]`
-/

namespace A142793.P10822077388092491364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142793.P10822077388092491364

namespace A142793

/-- `∩[A045357(n+1), A354467(n+1)]` -/
def P10822077388092491364.Spec : Prop :=
  ∀ n, (P10822077388092491364.a n : ℤ) = A142793 (n + 1)

end A142793

/-!
# A142794: Primes congruent to 41 mod 60.

The programs for A142794, the canonical program `A142794.P5382271562591606959` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142794 has offset 1).

The definition of A142794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142794.P18344585467403024548

`∩[A030430(n+1), A107151(n+1)]`
-/

namespace A142794.P18344585467403024548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P18344585467403024548

namespace A142794

/-- `∩[A030430(n+1), A107151(n+1)]` -/
def P18344585467403024548.Spec : Prop :=
  ∀ n, (P18344585467403024548.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P5382271562591606959

`∩[A141881(n+1), A107151(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A142794

/-- `∩[A141881(n+1), A107151(n+1)]` -/
def P5382271562591606959.Spec : Prop :=
  ∀ n, (P5382271562591606959.a n : ℤ) = A142794 (n + 1)

theorem P5382271562591606959.correct : P5382271562591606959.Spec := by
  intro n
  simp only [A142794, Nat.add_sub_cancel]

end A142794

/-! ## A142794.P5844699217012447379

`∩[A107151(n+1), A132232(n+1)]`
-/

namespace A142794.P5844699217012447379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P5844699217012447379

namespace A142794

/-- `∩[A107151(n+1), A132232(n+1)]` -/
def P5844699217012447379.Spec : Prop :=
  ∀ n, (P5844699217012447379.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P8203864774524248591

`p?[60*n+41]`
-/

namespace A142794.P8203864774524248591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * n + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142794.P8203864774524248591

namespace A142794

/-- `p?[60*n+41]` -/
def P8203864774524248591.Spec : Prop :=
  ∀ n, (P8203864774524248591.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P13072764016066373605

`∩[A008846(n+1), A132232(n+1)]`
-/

namespace A142794.P13072764016066373605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P13072764016066373605

namespace A142794

/-- `∩[A008846(n+1), A132232(n+1)]` -/
def P13072764016066373605.Spec : Prop :=
  ∀ n, (P13072764016066373605.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P897268734185178959

`record[p?[lcm(18, n)+1+n]]`
-/

namespace A142794.P897268734185178959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 18 n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142794.P897268734185178959

namespace A142794

/-- `record[p?[lcm(18, n)+1+n]]` -/
def P897268734185178959.Spec : Prop :=
  ∀ n, (P897268734185178959.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P5623218509614718524

`∩[A179446(n+1), A107151(n+1)]`
-/

namespace A142794.P5623218509614718524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P5623218509614718524

namespace A142794

/-- `∩[A179446(n+1), A107151(n+1)]` -/
def P5623218509614718524.Spec : Prop :=
  ∀ n, (P5623218509614718524.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P9300697861086678302

`∩[A033205(n+1), A132232(n+1)]`
-/

namespace A142794.P9300697861086678302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P9300697861086678302

namespace A142794

/-- `∩[A033205(n+1), A132232(n+1)]` -/
def P9300697861086678302.Spec : Prop :=
  ∀ n, (P9300697861086678302.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P16202594553864853507

`∩[A107151(n+1), A140506(n+1)]`
-/

namespace A142794.P16202594553864853507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P16202594553864853507

namespace A142794

/-- `∩[A107151(n+1), A140506(n+1)]` -/
def P16202594553864853507.Spec : Prop :=
  ∀ n, (P16202594553864853507.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P12215037427754204309

`∩[A140506(n+1), A141881(n+1)]`
-/

namespace A142794.P12215037427754204309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P12215037427754204309

namespace A142794

/-- `∩[A140506(n+1), A141881(n+1)]` -/
def P12215037427754204309.Spec : Prop :=
  ∀ n, (P12215037427754204309.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P7931420862967084856

`∩[A030430(n+1), A040117(n+1)]`
-/

namespace A142794.P7931420862967084856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P7931420862967084856

namespace A142794

/-- `∩[A030430(n+1), A040117(n+1)]` -/
def P7931420862967084856.Spec : Prop :=
  ∀ n, (P7931420862967084856.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P14071742956002317162

`∩[A040117(n+1), A132232(n+1)]`
-/

namespace A142794.P14071742956002317162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P14071742956002317162

namespace A142794

/-- `∩[A040117(n+1), A132232(n+1)]` -/
def P14071742956002317162.Spec : Prop :=
  ∀ n, (P14071742956002317162.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P16495976565326594957

`∩[A040117(n+1), A140506(n+1)]`
-/

namespace A142794.P16495976565326594957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P16495976565326594957

namespace A142794

/-- `∩[A040117(n+1), A140506(n+1)]` -/
def P16495976565326594957.Spec : Prop :=
  ∀ n, (P16495976565326594957.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P4050742722913628527

`∩[A040117(n+1), A141881(n+1)]`
-/

namespace A142794.P4050742722913628527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P4050742722913628527

namespace A142794

/-- `∩[A040117(n+1), A141881(n+1)]` -/
def P4050742722913628527.Spec : Prop :=
  ∀ n, (P4050742722913628527.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P9418324625401392721

`∩[A040117(n+1), A179446(n+1)]`
-/

namespace A142794.P9418324625401392721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P9418324625401392721

namespace A142794

/-- `∩[A040117(n+1), A179446(n+1)]` -/
def P9418324625401392721.Spec : Prop :=
  ∀ n, (P9418324625401392721.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P7200767215425499694

`∩[A290530(n+1), A033205(n+1)]`
-/

namespace A142794.P7200767215425499694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P7200767215425499694

namespace A142794

/-- `∩[A290530(n+1), A033205(n+1)]` -/
def P7200767215425499694.Spec : Prop :=
  ∀ n, (P7200767215425499694.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P1712949476734147252

`∩[A033205(n+1), A132238(n+1)]`
-/

namespace A142794.P1712949476734147252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P1712949476734147252

namespace A142794

/-- `∩[A033205(n+1), A132238(n+1)]` -/
def P1712949476734147252.Spec : Prop :=
  ∀ n, (P1712949476734147252.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P12288043283100128554

`∩[A040117(n+1), A132238(n+1)]`
-/

namespace A142794.P12288043283100128554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P12288043283100128554

namespace A142794

/-- `∩[A040117(n+1), A132238(n+1)]` -/
def P12288043283100128554.Spec : Prop :=
  ∀ n, (P12288043283100128554.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P11283126274345507906

`∩[A091729(n+1), A132232(n+1)]`
-/

namespace A142794.P11283126274345507906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P11283126274345507906

namespace A142794

/-- `∩[A091729(n+1), A132232(n+1)]` -/
def P11283126274345507906.Spec : Prop :=
  ∀ n, (P11283126274345507906.a n : ℤ) = A142794 (n + 1)

end A142794

/-! ## A142794.P10333578220481762657

`∩[A091729(n+1), A132238(n+1)]`
-/

namespace A142794.P10333578220481762657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142794.P10333578220481762657

namespace A142794

/-- `∩[A091729(n+1), A132238(n+1)]` -/
def P10333578220481762657.Spec : Prop :=
  ∀ n, (P10333578220481762657.a n : ℤ) = A142794 (n + 1)

end A142794

/-!
# A142795: Primes congruent to 43 mod 60.

The programs for A142795, the canonical program `A142795.P12443052717380745165` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142795 has offset 1).

The definition of A142795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142795.P1364595018049775830

`∩[A030431(n+1), A139832(n+1)]`
-/

namespace A142795.P1364595018049775830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P1364595018049775830

namespace A142795

/-- `∩[A030431(n+1), A139832(n+1)]` -/
def P1364595018049775830.Spec : Prop :=
  ∀ n, (P1364595018049775830.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P11714830793437225958

`∩[A132233(n+1), A139832(n+1)]`
-/

namespace A142795.P11714830793437225958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P11714830793437225958

namespace A142795

/-- `∩[A132233(n+1), A139832(n+1)]` -/
def P11714830793437225958.Spec : Prop :=
  ∀ n, (P11714830793437225958.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P7615227714395905473

`∩[A132233(n+1), A141304(n+1)]`
-/

namespace A142795.P7615227714395905473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P7615227714395905473

namespace A142795

/-- `∩[A132233(n+1), A141304(n+1)]` -/
def P7615227714395905473.Spec : Prop :=
  ∀ n, (P7615227714395905473.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P11622098377808304102

`∩[A105854(n+1), A132233(n+1)]`
-/

namespace A142795.P11622098377808304102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P11622098377808304102

namespace A142795

/-- `∩[A105854(n+1), A132233(n+1)]` -/
def P11622098377808304102.Spec : Prop :=
  ∀ n, (P11622098377808304102.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P12443052717380745165

`p?[or(2, 15*n-2)]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142795

/-- `p?[or(2, 15*n-2)]` -/
def P12443052717380745165.Spec : Prop :=
  ∀ n, P12443052717380745165.a n = A142795 (n + 1)

theorem P12443052717380745165.correct : P12443052717380745165.Spec := by
  intro n
  simp only [A142795, Nat.add_sub_cancel]

end A142795

/-! ## A142795.P12124288948546536953

`p?[a(n-1)+60]` with `a(0)=43`
-/

namespace A142795.P12124288948546536953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [43] fun n f1 =>
  f1 (n - 1) + 60

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142795.P12124288948546536953

namespace A142795

/-- `p?[a(n-1)+60]` -/
def P12124288948546536953.Spec : Prop :=
  ∀ n, (P12124288948546536953.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P14619046844375103152

`p?[15*n-and(2, n)]`
-/

namespace A142795.P14619046844375103152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n : ℤ) - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142795.P14619046844375103152

namespace A142795

/-- `p?[15*n-and(2, n)]` -/
def P14619046844375103152.Spec : Prop :=
  ∀ n, P14619046844375103152.a n = A142795 (n + 1)

end A142795

/-! ## A142795.P12414666069825850447

`p?[6*(10*n+7)+1]`
-/

namespace A142795.P12414666069825850447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (10 * n + 7) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142795.P12414666069825850447

namespace A142795

/-- `p?[6*(10*n+7)+1]` -/
def P12414666069825850447.Spec : Prop :=
  ∀ n, (P12414666069825850447.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P15152029441854828301

`∩[A045414(n+1), A139832(n+1)]`
-/

namespace A142795.P15152029441854828301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P15152029441854828301

namespace A142795

/-- `∩[A045414(n+1), A139832(n+1)]` -/
def P15152029441854828301.Spec : Prop :=
  ∀ n, (P15152029441854828301.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P16590323846955195661

`∩[A106865(n+1), A132233(n+1)]`
-/

namespace A142795.P16590323846955195661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P16590323846955195661

namespace A142795

/-- `∩[A106865(n+1), A132233(n+1)]` -/
def P16590323846955195661.Spec : Prop :=
  ∀ n, (P16590323846955195661.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P14698187619627184467

`∩[A030431(n+1), A068229(n+1)]`
-/

namespace A142795.P14698187619627184467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P14698187619627184467

namespace A142795

/-- `∩[A030431(n+1), A068229(n+1)]` -/
def P14698187619627184467.Spec : Prop :=
  ∀ n, (P14698187619627184467.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P2655871023375576219

`∩[A045414(n+1), A068229(n+1)]`
-/

namespace A142795.P2655871023375576219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P2655871023375576219

namespace A142795

/-- `∩[A045414(n+1), A068229(n+1)]` -/
def P2655871023375576219.Spec : Prop :=
  ∀ n, (P2655871023375576219.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P7832105433962950319

`∩[A068229(n+1), A105854(n+1)]`
-/

namespace A142795.P7832105433962950319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P7832105433962950319

namespace A142795

/-- `∩[A068229(n+1), A105854(n+1)]` -/
def P7832105433962950319.Spec : Prop :=
  ∀ n, (P7832105433962950319.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P6541002486935037627

`∩[A068229(n+1), A132233(n+1)]`
-/

namespace A142795.P6541002486935037627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P6541002486935037627

namespace A142795

/-- `∩[A068229(n+1), A132233(n+1)]` -/
def P6541002486935037627.Spec : Prop :=
  ∀ n, (P6541002486935037627.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P4590663782324814376

`∩[A068229(n+1), A140533(n+1)]`
-/

namespace A142795.P4590663782324814376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P4590663782324814376

namespace A142795

/-- `∩[A068229(n+1), A140533(n+1)]` -/
def P4590663782324814376.Spec : Prop :=
  ∀ n, (P4590663782324814376.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P12934401421729163513

`∩[A068229(n+1), A132238(n+1)]`
-/

namespace A142795.P12934401421729163513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P12934401421729163513

namespace A142795

/-- `∩[A068229(n+1), A132238(n+1)]` -/
def P12934401421729163513.Spec : Prop :=
  ∀ n, (P12934401421729163513.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P7336389916647183434

`∩[A105854(n+1), A132238(n+1)]`
-/

namespace A142795.P7336389916647183434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P7336389916647183434

namespace A142795

/-- `∩[A105854(n+1), A132238(n+1)]` -/
def P7336389916647183434.Spec : Prop :=
  ∀ n, (P7336389916647183434.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P11742123704178020248

`∩[A106865(n+1), A132238(n+1)]`
-/

namespace A142795.P11742123704178020248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P11742123704178020248

namespace A142795

/-- `∩[A106865(n+1), A132238(n+1)]` -/
def P11742123704178020248.Spec : Prop :=
  ∀ n, (P11742123704178020248.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P15229963886212928099

`∩[A141304(n+1), A132238(n+1)]`
-/

namespace A142795.P15229963886212928099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P15229963886212928099

namespace A142795

/-- `∩[A141304(n+1), A132238(n+1)]` -/
def P15229963886212928099.Spec : Prop :=
  ∀ n, (P15229963886212928099.a n : ℤ) = A142795 (n + 1)

end A142795

/-! ## A142795.P15851919103012029438

`∩[A105854(n+1), A385223(n+1)]`
-/

namespace A142795.P15851919103012029438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142795.P15851919103012029438

namespace A142795

/-- `∩[A105854(n+1), A385223(n+1)]` -/
def P15851919103012029438.Spec : Prop :=
  ∀ n, (P15851919103012029438.a n : ℤ) = A142795 (n + 1)

end A142795

/-!
# A142796: Primes congruent to 47 mod 60.

The programs for A142796, the canonical program `A142796.P14078358238342330265` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142796 has offset 1).

The definition of A142796 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142796.anchor (n : ℕ) (hn : 1 ≤ n) : A142796 n = (Nat.nth (fun p => p.Prime ∧ p % 60 ∈ ({47} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A142.A142796`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142796.P17410593438594484765

`∩[A030432(n+1), A107169(n+1)]`
-/

namespace A142796.P17410593438594484765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P17410593438594484765

namespace A142796

/-- `∩[A030432(n+1), A107169(n+1)]` -/
def P17410593438594484765.Spec : Prop :=
  ∀ n, (P17410593438594484765.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P4165991457389902136

`∩[A030432(n+1), A139831(n+1)]`
-/

namespace A142796.P4165991457389902136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P4165991457389902136

namespace A142796

/-- `∩[A030432(n+1), A139831(n+1)]` -/
def P4165991457389902136.Spec : Prop :=
  ∀ n, (P4165991457389902136.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P11946068371989224395

`∩[A039949(n+1), A107169(n+1)]`
-/

namespace A142796.P11946068371989224395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P11946068371989224395

namespace A142796

/-- `∩[A039949(n+1), A107169(n+1)]` -/
def P11946068371989224395.Spec : Prop :=
  ∀ n, (P11946068371989224395.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P463648932794978323

`∩[A039949(n+1), A141882(n+1)]`
-/

namespace A142796.P463648932794978323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P463648932794978323

namespace A142796

/-- `∩[A039949(n+1), A141882(n+1)]` -/
def P463648932794978323.Spec : Prop :=
  ∀ n, (P463648932794978323.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P14078358238342330265

`p?[a(n-1)+60]` with `a(0)=47`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142796

/-- `p?[a(n-1)+60]` -/
def P14078358238342330265.Spec : Prop :=
  ∀ n, (P14078358238342330265.a n : ℤ) = A142796 (n + 1)

theorem P14078358238342330265.correct : P14078358238342330265.Spec := by
  intro n
  simp only [A142796, Nat.add_sub_cancel]

end A142796

/-! ## A142796.P14065995614566026484

`p?[and(2, n)+15*n]`
-/

namespace A142796.P14065995614566026484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + 15 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142796.P14065995614566026484

namespace A142796

/-- `p?[and(2, n)+15*n]` -/
def P14065995614566026484.Spec : Prop :=
  ∀ n, (P14065995614566026484.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P5296669889513737511

`p?[or(2, 3*5*(n+1))]`
-/

namespace A142796.P5296669889513737511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * (5 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142796.P5296669889513737511

namespace A142796

/-- `p?[or(2, 3*5*(n+1))]` -/
def P5296669889513737511.Spec : Prop :=
  ∀ n, (P5296669889513737511.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P13293324761763663707

`p?[abs(3-10*A016969(n))]`
-/

namespace A142796.P13293324761763663707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - 10 * A016969 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142796.P13293324761763663707

namespace A142796

/-- `p?[abs(3-10*A016969(n))]` -/
def P13293324761763663707.Spec : Prop :=
  ∀ n, P13293324761763663707.a n = A142796 (n + 1)

end A142796

/-! ## A142796.P3588751077931409037

`p?[Δ[2*A144459(n)]+1]`
-/

namespace A142796.P3588751077931409037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144459 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142796.P3588751077931409037

namespace A142796

/-- `p?[Δ[2*A144459(n)]+1]` -/
def P3588751077931409037.Spec : Prop :=
  ∀ n, P3588751077931409037.a n = A142796 (n + 1)

end A142796

/-! ## A142796.P2101891482199700778

`p?[2*A128473(n+1)+1]`
-/

namespace A142796.P2101891482199700778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128473 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142796.P2101891482199700778

namespace A142796

/-- `p?[2*A128473(n+1)+1]` -/
def P2101891482199700778.Spec : Prop :=
  ∀ n, P2101891482199700778.a n = A142796 (n + 1)

end A142796

/-! ## A142796.P6642174289718857874

`∩[A132239(n+1), A139831(n+1)]`
-/

namespace A142796.P6642174289718857874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P6642174289718857874

namespace A142796

/-- `∩[A132239(n+1), A139831(n+1)]` -/
def P6642174289718857874.Spec : Prop :=
  ∀ n, (P6642174289718857874.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P13108613244048111719

`∩[A141882(n+1), A343241(n+1)]`
-/

namespace A142796.P13108613244048111719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P13108613244048111719

namespace A142796

/-- `∩[A141882(n+1), A343241(n+1)]` -/
def P13108613244048111719.Spec : Prop :=
  ∀ n, (P13108613244048111719.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P466995819612795219

`∩[A045380(n+1), A107169(n+1)]`
-/

namespace A142796.P466995819612795219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P466995819612795219

namespace A142796

/-- `∩[A045380(n+1), A107169(n+1)]` -/
def P466995819612795219.Spec : Prop :=
  ∀ n, (P466995819612795219.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P733214217696159939

`∩[A030432(n+1), A068231(n+1)]`
-/

namespace A142796.P733214217696159939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P733214217696159939

namespace A142796

/-- `∩[A030432(n+1), A068231(n+1)]` -/
def P733214217696159939.Spec : Prop :=
  ∀ n, (P733214217696159939.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P5551879260580762803

`∩[A039949(n+1), A068231(n+1)]`
-/

namespace A142796.P5551879260580762803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P5551879260580762803

namespace A142796

/-- `∩[A039949(n+1), A068231(n+1)]` -/
def P5551879260580762803.Spec : Prop :=
  ∀ n, (P5551879260580762803.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P7324380249661820979

`∩[A045357(n+1), A068231(n+1)]`
-/

namespace A142796.P7324380249661820979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P7324380249661820979

namespace A142796

/-- `∩[A045357(n+1), A068231(n+1)]` -/
def P7324380249661820979.Spec : Prop :=
  ∀ n, (P7324380249661820979.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P6900953358679430272

`∩[A045380(n+1), A068231(n+1)]`
-/

namespace A142796.P6900953358679430272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P6900953358679430272

namespace A142796

/-- `∩[A045380(n+1), A068231(n+1)]` -/
def P6900953358679430272.Spec : Prop :=
  ∀ n, (P6900953358679430272.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P14294793347281408149

`∩[A039949(n+1), A106865(n+1)]`
-/

namespace A142796.P14294793347281408149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P14294793347281408149

namespace A142796

/-- `∩[A039949(n+1), A106865(n+1)]` -/
def P14294793347281408149.Spec : Prop :=
  ∀ n, (P14294793347281408149.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P15972922443795922854

`∩[A045357(n+1), A107169(n+1)]`
-/

namespace A142796.P15972922443795922854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P15972922443795922854

namespace A142796

/-- `∩[A045357(n+1), A107169(n+1)]` -/
def P15972922443795922854.Spec : Prop :=
  ∀ n, (P15972922443795922854.a n : ℤ) = A142796 (n + 1)

end A142796

/-! ## A142796.P14659147668089112507

`∩[A030432(n+1), A141123(n+1)]`
-/

namespace A142796.P14659147668089112507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142796.P14659147668089112507

namespace A142796

/-- `∩[A030432(n+1), A141123(n+1)]` -/
def P14659147668089112507.Spec : Prop :=
  ∀ n, (P14659147668089112507.a n : ℤ) = A142796 (n + 1)

end A142796

/-!
# A142797: Primes congruent to 49 mod 60.

The programs for A142797, the canonical program `A142797.P10393761466021008869` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142797 has offset 1).

The definition of A142797 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142797.anchor (n : ℕ) (hn : 1 ≤ n) : A142797 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 49) (n - 1) : ℤ)` in `Proof.A142.A142797`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142797.P7877495300813598776

`∩[A030433(n+1), A107152(n+1)]`
-/

namespace A142797.P7877495300813598776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P7877495300813598776

namespace A142797

/-- `∩[A030433(n+1), A107152(n+1)]` -/
def P7877495300813598776.Spec : Prop :=
  ∀ n, (P7877495300813598776.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P10393761466021008869

`p?[60*n-11]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142797

/-- `p?[60*n-11]` -/
def P10393761466021008869.Spec : Prop :=
  ∀ n, P10393761466021008869.a n = A142797 (n + 1)

theorem P10393761466021008869.correct : P10393761466021008869.Spec := by
  intro n
  simp only [A142797, Nat.add_sub_cancel]

end A142797

/-! ## A142797.P4044606460781509545

`∩[A141883(n+1), A243174(n+1)]`
-/

namespace A142797.P4044606460781509545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P4044606460781509545

namespace A142797

/-- `∩[A141883(n+1), A243174(n+1)]` -/
def P4044606460781509545.Spec : Prop :=
  ∀ n, (P4044606460781509545.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P17613746961027565227

`∩[A030433(n+1), A243188(n+1)]`
-/

namespace A142797.P17613746961027565227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P17613746961027565227

namespace A142797

/-- `∩[A030433(n+1), A243188(n+1)]` -/
def P17613746961027565227.Spec : Prop :=
  ∀ n, (P17613746961027565227.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P17924053298344041662

`∩[A132234(n+1), A243188(n+1)]`
-/

namespace A142797.P17924053298344041662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P17924053298344041662

namespace A142797

/-- `∩[A132234(n+1), A243188(n+1)]` -/
def P17924053298344041662.Spec : Prop :=
  ∀ n, (P17924053298344041662.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P5155860003878433185

`∩[A141883(n+1), A243188(n+1)]`
-/

namespace A142797.P5155860003878433185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P5155860003878433185

namespace A142797

/-- `∩[A141883(n+1), A243188(n+1)]` -/
def P5155860003878433185.Spec : Prop :=
  ∀ n, (P5155860003878433185.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P4738918050861852178

`∩[A008846(n+1), A132234(n+1)]`
-/

namespace A142797.P4738918050861852178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P4738918050861852178

namespace A142797

/-- `∩[A008846(n+1), A132234(n+1)]` -/
def P4738918050861852178.Spec : Prop :=
  ∀ n, (P4738918050861852178.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P9657607475522720089

`∩[A033212(n+1), A141883(n+1)]`
-/

namespace A142797.P9657607475522720089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P9657607475522720089

namespace A142797

/-- `∩[A033212(n+1), A141883(n+1)]` -/
def P9657607475522720089.Spec : Prop :=
  ∀ n, (P9657607475522720089.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P1589604446388961364

`∩[A030433(n+1), A068228(n+1)]`
-/

namespace A142797.P1589604446388961364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P1589604446388961364

namespace A142797

/-- `∩[A030433(n+1), A068228(n+1)]` -/
def P1589604446388961364.Spec : Prop :=
  ∀ n, (P1589604446388961364.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P11918266483009908275

`∩[A068228(n+1), A132234(n+1)]`
-/

namespace A142797.P11918266483009908275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P11918266483009908275

namespace A142797

/-- `∩[A068228(n+1), A132234(n+1)]` -/
def P11918266483009908275.Spec : Prop :=
  ∀ n, (P11918266483009908275.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P7498216648936740697

`∩[A068228(n+1), A141883(n+1)]`
-/

namespace A142797.P7498216648936740697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P7498216648936740697

namespace A142797

/-- `∩[A068228(n+1), A141883(n+1)]` -/
def P7498216648936740697.Spec : Prop :=
  ∀ n, (P7498216648936740697.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P5101250007620526856

`∩[A068228(n+1), A132239(n+1)]`
-/

namespace A142797.P5101250007620526856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P5101250007620526856

namespace A142797

/-- `∩[A068228(n+1), A132239(n+1)]` -/
def P5101250007620526856.Spec : Prop :=
  ∀ n, (P5101250007620526856.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P11194130533374982162

`∩[A132239(n+1), A243188(n+1)]`
-/

namespace A142797.P11194130533374982162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P11194130533374982162

namespace A142797

/-- `∩[A132239(n+1), A243188(n+1)]` -/
def P11194130533374982162.Spec : Prop :=
  ∀ n, (P11194130533374982162.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P13591473796322077012

`∩[A033205(n+1), A132234(n+1)]`
-/

namespace A142797.P13591473796322077012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P13591473796322077012

namespace A142797

/-- `∩[A033205(n+1), A132234(n+1)]` -/
def P13591473796322077012.Spec : Prop :=
  ∀ n, (P13591473796322077012.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P697894260945438090

`∩[A033205(n+1), A132239(n+1)]`
-/

namespace A142797.P697894260945438090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P697894260945438090

namespace A142797

/-- `∩[A033205(n+1), A132239(n+1)]` -/
def P697894260945438090.Spec : Prop :=
  ∀ n, (P697894260945438090.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P11965571749299762300

`∩[A045457(n+1), A068228(n+1)]`
-/

namespace A142797.P11965571749299762300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P11965571749299762300

namespace A142797

/-- `∩[A045457(n+1), A068228(n+1)]` -/
def P11965571749299762300.Spec : Prop :=
  ∀ n, (P11965571749299762300.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P11814580677868920702

`∩[A045457(n+1), A107152(n+1)]`
-/

namespace A142797.P11814580677868920702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P11814580677868920702

namespace A142797

/-- `∩[A045457(n+1), A107152(n+1)]` -/
def P11814580677868920702.Spec : Prop :=
  ∀ n, (P11814580677868920702.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P10563607011928651275

`∩[A068228(n+1), A140506(n+1)]`
-/

namespace A142797.P10563607011928651275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P10563607011928651275

namespace A142797

/-- `∩[A068228(n+1), A140506(n+1)]` -/
def P10563607011928651275.Spec : Prop :=
  ∀ n, (P10563607011928651275.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P7555451922740255324

`∩[A107152(n+1), A140506(n+1)]`
-/

namespace A142797.P7555451922740255324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P7555451922740255324

namespace A142797

/-- `∩[A107152(n+1), A140506(n+1)]` -/
def P7555451922740255324.Spec : Prop :=
  ∀ n, (P7555451922740255324.a n : ℤ) = A142797 (n + 1)

end A142797

/-! ## A142797.P6848547106271114062

`∩[A045457(n+1), A243188(n+1)]`
-/

namespace A142797.P6848547106271114062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142797.P6848547106271114062

namespace A142797

/-- `∩[A045457(n+1), A243188(n+1)]` -/
def P6848547106271114062.Spec : Prop :=
  ∀ n, (P6848547106271114062.a n : ℤ) = A142797 (n + 1)

end A142797

/-!
# A142798: Primes congruent to 53 mod 60.

The programs for A142798, the canonical program `A142798.P441370703986699577` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142798 has offset 1).

The definition of A142798 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142798.anchor (n : ℕ) (hn : 1 ≤ n) : A142798 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 53) (n - 1) : ℤ)` in `Proof.A142.A142798`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142798.P8324456728442188817

`∩[A132235(n+1), A141885(n+1)]`
-/

namespace A142798.P8324456728442188817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P8324456728442188817

namespace A142798

/-- `∩[A132235(n+1), A141885(n+1)]` -/
def P8324456728442188817.Spec : Prop :=
  ∀ n, (P8324456728442188817.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P1692431392164022825

`∩[A030431(n+1), A107167(n+1)]`
-/

namespace A142798.P1692431392164022825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P1692431392164022825

namespace A142798

/-- `∩[A030431(n+1), A107167(n+1)]` -/
def P1692431392164022825.Spec : Prop :=
  ∀ n, (P1692431392164022825.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P15444949610774614080

`∩[A107167(n+1), A132235(n+1)]`
-/

namespace A142798.P15444949610774614080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P15444949610774614080

namespace A142798

/-- `∩[A107167(n+1), A132235(n+1)]` -/
def P15444949610774614080.Spec : Prop :=
  ∀ n, (P15444949610774614080.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P8510459695818042240

`∩[A107167(n+1), A141885(n+1)]`
-/

namespace A142798.P8510459695818042240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P8510459695818042240

namespace A142798

/-- `∩[A107167(n+1), A141885(n+1)]` -/
def P8510459695818042240.Spec : Prop :=
  ∀ n, (P8510459695818042240.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P1436191693752255089

`∩[A030431(n+1), A141303(n+1)]`
-/

namespace A142798.P1436191693752255089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P1436191693752255089

namespace A142798

/-- `∩[A030431(n+1), A141303(n+1)]` -/
def P1436191693752255089.Spec : Prop :=
  ∀ n, (P1436191693752255089.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P10686512658019306177

`∩[A132235(n+1), A141303(n+1)]`
-/

namespace A142798.P10686512658019306177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P10686512658019306177

namespace A142798

/-- `∩[A132235(n+1), A141303(n+1)]` -/
def P10686512658019306177.Spec : Prop :=
  ∀ n, (P10686512658019306177.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P13768773230009646596

`∩[A141303(n+1), A141885(n+1)]`
-/

namespace A142798.P13768773230009646596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P13768773230009646596

namespace A142798

/-- `∩[A141303(n+1), A141885(n+1)]` -/
def P13768773230009646596.Spec : Prop :=
  ∀ n, (P13768773230009646596.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P441370703986699577

`p?[60*n-7]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142798

/-- `p?[60*n-7]` -/
def P441370703986699577.Spec : Prop :=
  ∀ n, P441370703986699577.a n = A142798 (n + 1)

theorem P441370703986699577.correct : P441370703986699577.Spec := by
  intro n
  simp only [A142798, Nat.add_sub_cancel]

end A142798

/-! ## A142798.P4688533857965987134

`∩[A008846(n+1), A132235(n+1)]`
-/

namespace A142798.P4688533857965987134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P4688533857965987134

namespace A142798

/-- `∩[A008846(n+1), A132235(n+1)]` -/
def P4688533857965987134.Spec : Prop :=
  ∀ n, (P4688533857965987134.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P7689644308208113931

`∩[A106859(n+1), A141885(n+1)]`
-/

namespace A142798.P7689644308208113931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P7689644308208113931

namespace A142798

/-- `∩[A106859(n+1), A141885(n+1)]` -/
def P7689644308208113931.Spec : Prop :=
  ∀ n, (P7689644308208113931.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P18417832404526299848

`∩[A343241(n+1), A141885(n+1)]`
-/

namespace A142798.P18417832404526299848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P18417832404526299848

namespace A142798

/-- `∩[A343241(n+1), A141885(n+1)]` -/
def P18417832404526299848.Spec : Prop :=
  ∀ n, (P18417832404526299848.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P8753477338127206263

`∩[A030431(n+1), A040117(n+1)]`
-/

namespace A142798.P8753477338127206263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P8753477338127206263

namespace A142798

/-- `∩[A030431(n+1), A040117(n+1)]` -/
def P8753477338127206263.Spec : Prop :=
  ∀ n, (P8753477338127206263.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P13624638114865831071

`∩[A040117(n+1), A132235(n+1)]`
-/

namespace A142798.P13624638114865831071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P13624638114865831071

namespace A142798

/-- `∩[A040117(n+1), A132235(n+1)]` -/
def P13624638114865831071.Spec : Prop :=
  ∀ n, (P13624638114865831071.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P4584881324740406053

`∩[A040117(n+1), A141885(n+1)]`
-/

namespace A142798.P4584881324740406053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P4584881324740406053

namespace A142798

/-- `∩[A040117(n+1), A141885(n+1)]` -/
def P4584881324740406053.Spec : Prop :=
  ∀ n, (P4584881324740406053.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P3964521944722088190

`∩[A122487(n+1), A132235(n+1)]`
-/

namespace A142798.P3964521944722088190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P3964521944722088190

namespace A142798

/-- `∩[A122487(n+1), A132235(n+1)]` -/
def P3964521944722088190.Spec : Prop :=
  ∀ n, (P3964521944722088190.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P548459728853157409

`∩[A030431(n+1), A243183(n+1)]`
-/

namespace A142798.P548459728853157409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P548459728853157409

namespace A142798

/-- `∩[A030431(n+1), A243183(n+1)]` -/
def P548459728853157409.Spec : Prop :=
  ∀ n, (P548459728853157409.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P4905317267557977622

`∩[A243183(n+1), A132235(n+1)]`
-/

namespace A142798.P4905317267557977622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P4905317267557977622

namespace A142798

/-- `∩[A243183(n+1), A132235(n+1)]` -/
def P4905317267557977622.Spec : Prop :=
  ∀ n, (P4905317267557977622.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P4423522190555217670

`∩[A040117(n+1), A132237(n+1)]`
-/

namespace A142798.P4423522190555217670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P4423522190555217670

namespace A142798

/-- `∩[A040117(n+1), A132237(n+1)]` -/
def P4423522190555217670.Spec : Prop :=
  ∀ n, (P4423522190555217670.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P17033967499722758360

`∩[A107167(n+1), A132237(n+1)]`
-/

namespace A142798.P17033967499722758360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P17033967499722758360

namespace A142798

/-- `∩[A107167(n+1), A132237(n+1)]` -/
def P17033967499722758360.Spec : Prop :=
  ∀ n, (P17033967499722758360.a n : ℤ) = A142798 (n + 1)

end A142798

/-! ## A142798.P4720076371626144628

`∩[A132237(n+1), A141303(n+1)]`
-/

namespace A142798.P4720076371626144628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142798.P4720076371626144628

namespace A142798

/-- `∩[A132237(n+1), A141303(n+1)]` -/
def P4720076371626144628.Spec : Prop :=
  ∀ n, (P4720076371626144628.a n : ℤ) = A142798 (n + 1)

end A142798

/-!
# A142799: Primes congruent to 59 mod 60.

The programs for A142799, the canonical program `A142799.P6366927618958974393` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142799 has offset 1).

The definition of A142799 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A142799.anchor (n : ℕ) (hn : 1 ≤ n) : A142799 n = (Nat.nth (fun p => p.Prime ∧ p % 60 = 59) (n - 1) : ℤ)` in `Proof.A142.A142799`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142799.P17030467953525764621

`∩[A030433(n+1), A141302(n+1)]`
-/

namespace A142799.P17030467953525764621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P17030467953525764621

namespace A142799

/-- `∩[A030433(n+1), A141302(n+1)]` -/
def P17030467953525764621.Spec : Prop :=
  ∀ n, (P17030467953525764621.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P6366927618958974393

`p?[60*n-1]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A142799

/-- `p?[60*n-1]` -/
def P6366927618958974393.Spec : Prop :=
  ∀ n, P6366927618958974393.a n = A142799 (n + 1)

theorem P6366927618958974393.correct : P6366927618958974393.Spec := by
  intro n
  simp only [A142799, Nat.add_sub_cancel]

end A142799

/-! ## A142799.P17918987773263615752

`or(1, p?[6*10*n+59])`
-/

namespace A142799.P17918987773263615752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (10 * n) + 59

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142799.P17918987773263615752

namespace A142799

/-- `or(1, p?[6*10*n+59])` -/
def P17918987773263615752.Spec : Prop :=
  ∀ n, (P17918987773263615752.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P5470873440563418047

`∩[A045457(n+1), A141302(n+1)]`
-/

namespace A142799.P5470873440563418047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P5470873440563418047

namespace A142799

/-- `∩[A045457(n+1), A141302(n+1)]` -/
def P5470873440563418047.Spec : Prop :=
  ∀ n, (P5470873440563418047.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P16686742240024169466

`∩[A030433(n+1), A068231(n+1)]`
-/

namespace A142799.P16686742240024169466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P16686742240024169466

namespace A142799

/-- `∩[A030433(n+1), A068231(n+1)]` -/
def P16686742240024169466.Spec : Prop :=
  ∀ n, (P16686742240024169466.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P13702503034183526947

`∩[A045457(n+1), A068231(n+1)]`
-/

namespace A142799.P13702503034183526947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P13702503034183526947

namespace A142799

/-- `∩[A045457(n+1), A068231(n+1)]` -/
def P13702503034183526947.Spec : Prop :=
  ∀ n, (P13702503034183526947.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P11663600618284104570

`∩[A030433(n+1), A141123(n+1)]`
-/

namespace A142799.P11663600618284104570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P11663600618284104570

namespace A142799

/-- `∩[A030433(n+1), A141123(n+1)]` -/
def P11663600618284104570.Spec : Prop :=
  ∀ n, (P11663600618284104570.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P4664864871082622888

`∩[A030433(n+1), A141187(n+1)]`
-/

namespace A142799.P4664864871082622888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P4664864871082622888

namespace A142799

/-- `∩[A030433(n+1), A141187(n+1)]` -/
def P4664864871082622888.Spec : Prop :=
  ∀ n, (P4664864871082622888.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P2923406731479102616

`∩[A045457(n+1), A141123(n+1)]`
-/

namespace A142799.P2923406731479102616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P2923406731479102616

namespace A142799

/-- `∩[A045457(n+1), A141123(n+1)]` -/
def P2923406731479102616.Spec : Prop :=
  ∀ n, (P2923406731479102616.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P2972492649187364753

`∩[A045457(n+1), A141187(n+1)]`
-/

namespace A142799.P2972492649187364753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P2972492649187364753

namespace A142799

/-- `∩[A045457(n+1), A141187(n+1)]` -/
def P2972492649187364753.Spec : Prop :=
  ∀ n, (P2972492649187364753.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P15043837796242698782

`∩[A068231(n+1), A132236(n+1)]`
-/

namespace A142799.P15043837796242698782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P15043837796242698782

namespace A142799

/-- `∩[A068231(n+1), A132236(n+1)]` -/
def P15043837796242698782.Spec : Prop :=
  ∀ n, (P15043837796242698782.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P10238068160846150513

`∩[A068231(n+1), A132240(n+1)]`
-/

namespace A142799.P10238068160846150513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P10238068160846150513

namespace A142799

/-- `∩[A068231(n+1), A132240(n+1)]` -/
def P10238068160846150513.Spec : Prop :=
  ∀ n, (P10238068160846150513.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P1251549315829399374

`∩[A068231(n+1), A141887(n+1)]`
-/

namespace A142799.P1251549315829399374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P1251549315829399374

namespace A142799

/-- `∩[A068231(n+1), A141887(n+1)]` -/
def P1251549315829399374.Spec : Prop :=
  ∀ n, (P1251549315829399374.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P27874814445157277

`∩[A141123(n+1), A132240(n+1)]`
-/

namespace A142799.P27874814445157277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P27874814445157277

namespace A142799

/-- `∩[A141123(n+1), A132240(n+1)]` -/
def P27874814445157277.Spec : Prop :=
  ∀ n, (P27874814445157277.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P10164992509784939004

`∩[A141187(n+1), A132236(n+1)]`
-/

namespace A142799.P10164992509784939004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P10164992509784939004

namespace A142799

/-- `∩[A141187(n+1), A132236(n+1)]` -/
def P10164992509784939004.Spec : Prop :=
  ∀ n, (P10164992509784939004.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P5004449166654642322

`∩[A141187(n+1), A132240(n+1)]`
-/

namespace A142799.P5004449166654642322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P5004449166654642322

namespace A142799

/-- `∩[A141187(n+1), A132240(n+1)]` -/
def P5004449166654642322.Spec : Prop :=
  ∀ n, (P5004449166654642322.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P16235902574985504734

`∩[A141887(n+1), A141187(n+1)]`
-/

namespace A142799.P16235902574985504734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P16235902574985504734

namespace A142799

/-- `∩[A141887(n+1), A141187(n+1)]` -/
def P16235902574985504734.Spec : Prop :=
  ∀ n, (P16235902574985504734.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P5362510241786254513

`∩[A068231(n+1), A327753(n+1)]`
-/

namespace A142799.P5362510241786254513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P5362510241786254513

namespace A142799

/-- `∩[A068231(n+1), A327753(n+1)]` -/
def P5362510241786254513.Spec : Prop :=
  ∀ n, (P5362510241786254513.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P7160426729575997821

`∩[A004618(n+1), A068231(n+1)]`
-/

namespace A142799.P7160426729575997821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P7160426729575997821

namespace A142799

/-- `∩[A004618(n+1), A068231(n+1)]` -/
def P7160426729575997821.Spec : Prop :=
  ∀ n, (P7160426729575997821.a n : ℤ) = A142799 (n + 1)

end A142799

/-! ## A142799.P8208774679598618398

`∩[A004618(n+1), A141123(n+1)]`
-/

namespace A142799.P8208774679598618398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142799.P8208774679598618398

namespace A142799

/-- `∩[A004618(n+1), A141123(n+1)]` -/
def P8208774679598618398.Spec : Prop :=
  ∀ n, (P8208774679598618398.a n : ℤ) = A142799 (n + 1)

end A142799

