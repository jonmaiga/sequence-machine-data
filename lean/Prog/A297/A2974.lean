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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
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
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A297400: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1 neighboring 1.

The programs for A297400, there is no canonical definition to state claims against.
-/

/-! ## A297400.P8071292558999758918

`A297395(A167499(n+5)+2)`
-/

namespace A297400.P8071292558999758918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A167499 (n + 5) + 2).toNat

end

end A297400.P8071292558999758918

/-! ## A297400.P11925017441667088607

`A297395(A000217(n+6)+7)`
-/

namespace A297400.P11925017441667088607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A000217 (n + 6) + 7).toNat

end

end A297400.P11925017441667088607

/-! ## A297400.P15821930395315783398

`A297395(A141214(n+3)+10)`
-/

namespace A297400.P15821930395315783398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A141214 (n + 3) + 10).toNat

end

end A297400.P15821930395315783398

/-! ## A297400.P4600357284920149647

`A297395(A034856(n+5)+9)`
-/

namespace A297400.P4600357284920149647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A034856 (n + 5) + 9).toNat

end

end A297400.P4600357284920149647

/-! ## A297400.P10953235615936056839

`A297395(A167614(n+6)-(n+3))`
-/

namespace A297400.P10953235615936056839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297395 (A167614 (n + 6) - (n + 3 : ℤ)).toNat

end

end A297400.P10953235615936056839

/-!
# A297401: Non-sphenic numbers with exactly 8 divisors.

The programs for A297401, the canonical program `A297401.P14594620375848981182` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297401 has offset 1).

The definition of A297401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297401.P14594620375848981182

`record[A105570(A030626(n+1))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A297401

/-- `record[A105570(A030626(n+1))]` -/
def P14594620375848981182.Spec : Prop :=
  ∀ n, P14594620375848981182.a n = A297401 (n + 1)

theorem P14594620375848981182.correct : P14594620375848981182.Spec := by
  intro n
  simp only [A297401, Nat.add_sub_cancel]

end A297401

/-! ## A297401.P4413763451354040663

`filter[A030626(n+1), A087049(#)]`
-/

namespace A297401.P4413763451354040663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A297401.P4413763451354040663

namespace A297401

/-- `filter[A030626(n+1), A087049(#)]` -/
def P4413763451354040663.Spec : Prop :=
  ∀ n, P4413763451354040663.a n = A297401 (n + 1)

end A297401

/-! ## A297401.P16642361930868580469

`filter[A030626(n+1), A351564(#)]`
-/

namespace A297401.P16642361930868580469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A297401.P16642361930868580469

namespace A297401

/-- `filter[A030626(n+1), A351564(#)]` -/
def P16642361930868580469.Spec : Prop :=
  ∀ n, P16642361930868580469.a n = A297401 (n + 1)

end A297401

/-! ## A297401.P2198416096346738800

`filter[A030626(n+1), A359466(#)]`
-/

namespace A297401.P2198416096346738800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A297401.P2198416096346738800

namespace A297401

/-- `filter[A030626(n+1), A359466(#)]` -/
def P2198416096346738800.Spec : Prop :=
  ∀ n, P2198416096346738800.a n = A297401 (n + 1)

end A297401

/-! ## A297401.P10260933626917406108

`filter[A030626(n+1), A359469(#)]`
-/

namespace A297401.P10260933626917406108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A297401.P10260933626917406108

namespace A297401

/-- `filter[A030626(n+1), A359469(#)]` -/
def P10260933626917406108.Spec : Prop :=
  ∀ n, P10260933626917406108.a n = A297401 (n + 1)

end A297401

/-! ## A297401.P17907977703012186542

`filter[A111398(n+1), A359466(#)]`
-/

namespace A297401.P17907977703012186542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A297401.P17907977703012186542

namespace A297401

/-- `filter[A111398(n+1), A359466(#)]` -/
def P17907977703012186542.Spec : Prop :=
  ∀ n, P17907977703012186542.a n = A297401 (n + 1)

end A297401

/-! ## A297401.P5202886722164098831

`filter[A111398(n+1), A359469(#)]`
-/

namespace A297401.P5202886722164098831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A297401.P5202886722164098831

namespace A297401

/-- `filter[A111398(n+1), A359469(#)]` -/
def P5202886722164098831.Spec : Prop :=
  ∀ n, P5202886722164098831.a n = A297401 (n + 1)

end A297401

/-! ## A297401.P1245085758112361875

`filter[A111398(n+2), A087049(#)]`
-/

namespace A297401.P1245085758112361875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A297401.P1245085758112361875

namespace A297401

/-- `filter[A111398(n+2), A087049(#)]` -/
def P1245085758112361875.Spec : Prop :=
  ∀ n, P1245085758112361875.a n = A297401 (n + 1)

end A297401

/-! ## A297401.P7407549301564424232

`filter[A111398(n+2), A351564(#)]`
-/

namespace A297401.P7407549301564424232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A297401.P7407549301564424232

namespace A297401

/-- `filter[A111398(n+2), A351564(#)]` -/
def P7407549301564424232.Spec : Prop :=
  ∀ n, P7407549301564424232.a n = A297401 (n + 1)

end A297401

/-! ## A297401.P15766355317200106274

`∩[A013929(n+1), A030626(n+1)]`
-/

namespace A297401.P15766355317200106274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297401.P15766355317200106274

namespace A297401

/-- `∩[A013929(n+1), A030626(n+1)]` -/
def P15766355317200106274.Spec : Prop :=
  ∀ n, (P15766355317200106274.a n : ℤ) = A297401 (n + 1)

end A297401

/-! ## A297401.P3241500600941787175

`∩[A030626(n+1), A046099(n+1)]`
-/

namespace A297401.P3241500600941787175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297401.P3241500600941787175

namespace A297401

/-- `∩[A030626(n+1), A046099(n+1)]` -/
def P3241500600941787175.Spec : Prop :=
  ∀ n, (P3241500600941787175.a n : ℤ) = A297401 (n + 1)

end A297401

/-! ## A297401.P1344305475092818406

`∩[A030626(n+1), A048108(n+1)]`
-/

namespace A297401.P1344305475092818406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297401.P1344305475092818406

namespace A297401

/-- `∩[A030626(n+1), A048108(n+1)]` -/
def P1344305475092818406.Spec : Prop :=
  ∀ n, (P1344305475092818406.a n : ℤ) = A297401 (n + 1)

end A297401

/-! ## A297401.P16073290563536012063

`∩[A030626(n+1), A060476(n+1)]`
-/

namespace A297401.P16073290563536012063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297401.P16073290563536012063

namespace A297401

/-- `∩[A030626(n+1), A060476(n+1)]` -/
def P16073290563536012063.Spec : Prop :=
  ∀ n, (P16073290563536012063.a n : ℤ) = A297401 (n + 1)

end A297401

/-! ## A297401.P7149837915787718546

`∩[A030626(n+1), A066427(n+1)]`
-/

namespace A297401.P7149837915787718546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297401.P7149837915787718546

namespace A297401

/-- `∩[A030626(n+1), A066427(n+1)]` -/
def P7149837915787718546.Spec : Prop :=
  ∀ n, (P7149837915787718546.a n : ℤ) = A297401 (n + 1)

end A297401

/-! ## A297401.P6736259554858755270

`∩[A030626(n+1), A074451(n+1)]`
-/

namespace A297401.P6736259554858755270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297401.P6736259554858755270

namespace A297401

/-- `∩[A030626(n+1), A074451(n+1)]` -/
def P6736259554858755270.Spec : Prop :=
  ∀ n, (P6736259554858755270.a n : ℤ) = A297401 (n + 1)

end A297401

/-! ## A297401.P3304441148499604871

`∩[A013929(n+1), A111398(n+1)]`
-/

namespace A297401.P3304441148499604871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297401.P3304441148499604871

namespace A297401

/-- `∩[A013929(n+1), A111398(n+1)]` -/
def P3304441148499604871.Spec : Prop :=
  ∀ n, (P3304441148499604871.a n : ℤ) = A297401 (n + 1)

end A297401

/-! ## A297401.P10084739879235575484

`∩[A046099(n+1), A111398(n+1)]`
-/

namespace A297401.P10084739879235575484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297401.P10084739879235575484

namespace A297401

/-- `∩[A046099(n+1), A111398(n+1)]` -/
def P10084739879235575484.Spec : Prop :=
  ∀ n, (P10084739879235575484.a n : ℤ) = A297401 (n + 1)

end A297401

/-! ## A297401.P7767175159123838616

`∩[A048108(n+1), A111398(n+1)]`
-/

namespace A297401.P7767175159123838616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297401.P7767175159123838616

namespace A297401

/-- `∩[A048108(n+1), A111398(n+1)]` -/
def P7767175159123838616.Spec : Prop :=
  ∀ n, (P7767175159123838616.a n : ℤ) = A297401 (n + 1)

end A297401

/-!
# A297402: a(n) = gcd_{k=1..n} (prime(k+1)^n-1)/2.

The programs for A297402, the canonical program `A297402.P15825475486828403093` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297402 has offset 1).

The definition of A297402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297402.P15825475486828403093

`A074723(n+1)/2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A297402

/-- `A074723(n+1)/2` -/
def P15825475486828403093.Spec : Prop :=
  ∀ n, P15825475486828403093.a n = (A297402 (n + 1) : ℚ)

end A297402

/-! ## A297402.P8927447420332006455

`xor(n+1, or(1, n))+1`
-/

namespace A297402.P8927447420332006455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.lor 1 n) + 1

end

end A297402.P8927447420332006455

namespace A297402

/-- `xor(n+1, or(1, n))+1` -/
def P8927447420332006455.Spec : Prop :=
  ∀ n, (P8927447420332006455.a n : ℤ) = A297402 (n + 1)

end A297402

/-! ## A297402.P10721508642370026758

`xor(n, n+1)+n%2`
-/

namespace A297402.P10721508642370026758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + n % 2

end

end A297402.P10721508642370026758

namespace A297402

/-- `xor(n, n+1)+n%2` -/
def P10721508642370026758.Spec : Prop :=
  ∀ n, (P10721508642370026758.a n : ℤ) = A297402 (n + 1)

end A297402

/-! ## A297402.P8517955346039083634

`xor(n, n+1)+and(1, n)`
-/

namespace A297402.P8517955346039083634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + Nat.land 1 n

end

end A297402.P8517955346039083634

namespace A297402

/-- `xor(n, n+1)+and(1, n)` -/
def P8517955346039083634.Spec : Prop :=
  ∀ n, (P8517955346039083634.a n : ℤ) = A297402 (n + 1)

end A297402

/-! ## A297402.P2799475368022690776

`-xor(n, gcd(2, n)-(n+3))`
-/

namespace A297402.P2799475368022690776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) ((Nat.gcd 2 n : ℤ) - (n + 3 : ℤ))

end

end A297402.P2799475368022690776

namespace A297402

/-- `-xor(n, gcd(2, n)-(n+3))` -/
def P2799475368022690776.Spec : Prop :=
  ∀ n, P2799475368022690776.a n = A297402 (n + 1)

end A297402

/-! ## A297402.P15476119351698632702

`char[Δ[n²]]+xor(n, n+1)`
-/

namespace A297402.P15476119351698632702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + Nat.xor n (n + 1)

end

end A297402.P15476119351698632702

namespace A297402

/-- `char[Δ[n²]]+xor(n, n+1)` -/
def P15476119351698632702.Spec : Prop :=
  ∀ n, (P15476119351698632702.a n : ℤ) = A297402 (n + 1)

end A297402

/-! ## A297402.P9058559957763827552

`gcd(2*(n+1), (3-n)^10)`
-/

namespace A297402.P9058559957763827552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) ((3 - (n : ℤ)) ^ 10)

end

end A297402.P9058559957763827552

namespace A297402

/-- `gcd(2*(n+1), (3-n)^10)` -/
def P9058559957763827552.Spec : Prop :=
  ∀ n, (P9058559957763827552.a n : ℤ) = A297402 (n + 1)

end A297402

/-! ## A297402.P1537313375918704504

`-xor(n, or(1, n-2-2*n))`
-/

namespace A297402.P1537313375918704504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (Int.lor 1 ((n : ℤ) - 2 - (2 * n : ℤ)))

end

end A297402.P1537313375918704504

namespace A297402

/-- `-xor(n, or(1, n-2-2*n))` -/
def P1537313375918704504.Spec : Prop :=
  ∀ n, P1537313375918704504.a n = A297402 (n + 1)

end A297402

/-! ## A297402.P5802303179579871723

`and(or(1, n+1)+n, -(2*n+1))`
-/

namespace A297402.P5802303179579871723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.lor 1 (n + 1) + n : ℤ) (-(2 * n + 1 : ℤ))

end

end A297402.P5802303179579871723

namespace A297402

/-- `and(or(1, n+1)+n, -(2*n+1))` -/
def P5802303179579871723.Spec : Prop :=
  ∀ n, P5802303179579871723.a n = A297402 (n + 1)

end A297402

/-! ## A297402.P10575920932318944628

`lcm(n+2, xor(n, -(n+2)))/(n+2)`
-/

namespace A297402.P10575920932318944628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (Int.xor (n : ℤ) (-(n + 2 : ℤ))) : ℚ) / (n + 2 : ℚ)

end

end A297402.P10575920932318944628

namespace A297402

/-- `lcm(n+2, xor(n, -(n+2)))/(n+2)` -/
def P10575920932318944628.Spec : Prop :=
  ∀ n, P10575920932318944628.a n = (A297402 (n + 1) : ℚ)

end A297402

/-! ## A297402.P14251820623531071011

`2^val(a(n-1)+2*n+1, 2)` with `a(0)=1`
-/

namespace A297402.P14251820623531071011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ SequenceMachineLib.valuation (a (n - 1) + (2 * n + 1)) 2

end

end A297402.P14251820623531071011

namespace A297402

/-- `2^val(a(n-1)+2*n+1, 2)` -/
def P14251820623531071011.Spec : Prop :=
  ∀ n, (P14251820623531071011.a n : ℤ) = A297402 (n + 1)

end A297402

/-! ## A297402.P3257813727853854918

`xor(n+1, n-1)+3-a(n-1)` with `a(0)=1`
-/

namespace A297402.P3257813727853854918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (n + 1 : ℤ) ((n : ℤ) - 1) + (3 - a (n - 1))

end

end A297402.P3257813727853854918

namespace A297402

/-- `xor(n+1, n-1)+3-a(n-1)` -/
def P3257813727853854918.Spec : Prop :=
  ∀ n, P3257813727853854918.a n = A297402 (n + 1)

end A297402

/-! ## A297402.P9846874141524099479

`and(-(2*n+1), ∑[(2*n+1)%4])`
-/

namespace A297402.P9846874141524099479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(2 * n + 1 : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A297402.P9846874141524099479

namespace A297402

/-- `and(-(2*n+1), ∑[(2*n+1)%4])` -/
def P9846874141524099479.Spec : Prop :=
  ∀ n, P9846874141524099479.a n = A297402 (n + 1)

end A297402

/-! ## A297402.P2986372750367026179

`and(gcd(4, n+1)+2*n, -(2*n+1))`
-/

namespace A297402.P2986372750367026179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.gcd 4 (n + 1) + 2 * n : ℤ) (-(2 * n + 1 : ℤ))

end

end A297402.P2986372750367026179

namespace A297402

/-- `and(gcd(4, n+1)+2*n, -(2*n+1))` -/
def P2986372750367026179.Spec : Prop :=
  ∀ n, P2986372750367026179.a n = A297402 (n + 1)

end A297402

/-! ## A297402.P5531629508534854491

`and(and(1, n)+2*n+1, -(2*n+1))`
-/

namespace A297402.P5531629508534854491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.land 1 n + (2 * n + 1) : ℤ) (-(2 * n + 1 : ℤ))

end

end A297402.P5531629508534854491

namespace A297402

/-- `and(and(1, n)+2*n+1, -(2*n+1))` -/
def P5531629508534854491.Spec : Prop :=
  ∀ n, P5531629508534854491.a n = A297402 (n + 1)

end A297402

/-! ## A297402.P3236475441642696836

`and(2*n+1, n-and(n+1, 2*n))+1`
-/

namespace A297402.P3236475441642696836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) ((n : ℤ) - (Nat.land (n + 1) (2 * n) : ℤ)) + 1

end

end A297402.P3236475441642696836

namespace A297402

/-- `and(2*n+1, n-and(n+1, 2*n))+1` -/
def P3236475441642696836.Spec : Prop :=
  ∀ n, P3236475441642696836.a n = A297402 (n + 1)

end A297402

/-! ## A297402.P9039322561917989742

`A370564(n+1)/(n+1)`
-/

namespace A297402.P9039322561917989742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370564 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A297402.P9039322561917989742

namespace A297402

/-- `A370564(n+1)/(n+1)` -/
def P9039322561917989742.Spec : Prop :=
  ∀ n, P9039322561917989742.a n = (A297402 (n + 1) : ℚ)

end A297402

/-! ## A297402.P18083426730884808246

`A171977(n+1)/gcd(2, n)`
-/

namespace A297402.P18083426730884808246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A297402.P18083426730884808246

namespace A297402

/-- `A171977(n+1)/gcd(2, n)` -/
def P18083426730884808246.Spec : Prop :=
  ∀ n, P18083426730884808246.a n = (A297402 (n + 1) : ℚ)

end A297402

/-! ## A297402.P8873820189903465893

`A038712(n+1)+and(1, n)`
-/

namespace A297402.P8873820189903465893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) + (Nat.land 1 n : ℤ)

end

end A297402.P8873820189903465893

namespace A297402

/-- `A038712(n+1)+and(1, n)` -/
def P8873820189903465893.Spec : Prop :=
  ∀ n, P8873820189903465893.a n = A297402 (n + 1)

end A297402

/-! ## A297402.P16233521758821426233

`2^val((n+1)*A020639(n+1), 2)`
-/

namespace A297402.P16233521758821426233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation ((n + 1 : ℤ) * A020639 (n + 1)).toNat 2

end

end A297402.P16233521758821426233

namespace A297402

/-- `2^val((n+1)*A020639(n+1), 2)` -/
def P16233521758821426233.Spec : Prop :=
  ∀ n, (P16233521758821426233.a n : ℤ) = A297402 (n + 1)

end A297402

/-!
# A297404: A binary representation of the positive exponents that appear in the prime factorization of a number, shown in decimal.

The programs for A297404, the canonical program `A297404.P1105051912658612473` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297404 has offset 1).

The definition of A297404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297404.P3048003096207287977

`A087207(A181819(n+1))`
-/

namespace A297404.P3048003096207287977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A181819 (n + 1)).toNat

end

end A297404.P3048003096207287977

namespace A297404

/-- `A087207(A181819(n+1))` -/
def P3048003096207287977.Spec : Prop :=
  ∀ n, P3048003096207287977.a n = A297404 (n + 1)

end A297404

/-! ## A297404.P15306429351014495535

`A048675(A329601(n+1))`
-/

namespace A297404.P15306429351014495535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A329601 (n + 1)).toNat

end

end A297404.P15306429351014495535

namespace A297404

/-- `A048675(A329601(n+1))` -/
def P15306429351014495535.Spec : Prop :=
  ∀ n, P15306429351014495535.a n = A297404 (n + 1)

end A297404

/-! ## A297404.P16297866955593496661

`A363537(A328401(n+1))`
-/

namespace A297404.P16297866955593496661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363537 (A328401 (n + 1)).toNat

end

end A297404.P16297866955593496661

namespace A297404

/-- `A363537(A328401(n+1))` -/
def P16297866955593496661.Spec : Prop :=
  ∀ n, P16297866955593496661.a n = A297404 (n + 1)

end A297404

/-! ## A297404.P2883998737269716262

`∑{p}[A181819(n+1), A048675(#)]`
-/

namespace A297404.P2883998737269716262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A297404.P2883998737269716262

namespace A297404

/-- `∑{p}[A181819(n+1), A048675(#)]` -/
def P2883998737269716262.Spec : Prop :=
  ∀ n, P2883998737269716262.a n = A297404 (n + 1)

end A297404

/-! ## A297404.P12793919822575026332

`∑{p}[A181819(n+1), A156552(#)]`
-/

namespace A297404.P12793919822575026332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A297404.P12793919822575026332

namespace A297404

/-- `∑{p}[A181819(n+1), A156552(#)]` -/
def P12793919822575026332.Spec : Prop :=
  ∀ n, P12793919822575026332.a n = A297404 (n + 1)

end A297404

/-! ## A297404.P1482856549611423268

`∑{p}[A181819(n+1), A334871(#)]`
-/

namespace A297404.P1482856549611423268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A334871 p

end

end A297404.P1482856549611423268

namespace A297404

/-- `∑{p}[A181819(n+1), A334871(#)]` -/
def P1482856549611423268.Spec : Prop :=
  ∀ n, P1482856549611423268.a n = A297404 (n + 1)

end A297404

/-! ## A297404.P7800225012281333610

`A048675(∏{p}[A181819(n+1), #])`
-/

namespace A297404.P7800225012281333610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A297404.P7800225012281333610

namespace A297404

/-- `A048675(∏{p}[A181819(n+1), #])` -/
def P7800225012281333610.Spec : Prop :=
  ∀ n, P7800225012281333610.a n = A297404 (n + 1)

end A297404

/-! ## A297404.P1105051912658612473

`A087207(∏{e}[n+1, A000040(#)])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A297404

/-- `A087207(∏{e}[n+1, A000040(#)])` -/
def P1105051912658612473.Spec : Prop :=
  ∀ n, P1105051912658612473.a n = A297404 (n + 1)

theorem P1105051912658612473.correct : P1105051912658612473.Spec := by
  intro n
  simp only [A297404, Nat.add_sub_cancel]

end A297404

/-! ## A297404.P8305133153136550318

`∑{p}[A181819(n+1), A181821(#)/2]`
-/

namespace A297404.P8305133153136550318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A181821 p : ℚ) / 2

end

end A297404.P8305133153136550318

namespace A297404

/-- `∑{p}[A181819(n+1), A181821(#)/2]` -/
def P8305133153136550318.Spec : Prop :=
  ∀ n, P8305133153136550318.a n = (A297404 (n + 1) : ℚ)

end A297404

/-! ## A297404.P604209711898365121

`A248663(A003557(A181819(n+1)²))`
-/

namespace A297404.P604209711898365121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A003557 (A181819 (n + 1) ^ 2).toNat).toNat

end

end A297404.P604209711898365121

namespace A297404

/-- `A248663(A003557(A181819(n+1)²))` -/
def P604209711898365121.Spec : Prop :=
  ∀ n, P604209711898365121.a n = A297404 (n + 1)

end A297404

/-! ## A297404.P1162409718659498840

`A334032(A238745(n+1))`
-/

namespace A297404.P1162409718659498840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334032 (A238745 (n + 1)).toNat

end

end A297404.P1162409718659498840

namespace A297404

/-- `A334032(A238745(n+1))` -/
def P1162409718659498840.Spec : Prop :=
  ∀ n, P1162409718659498840.a n = A297404 (n + 1)

end A297404

/-! ## A297404.P7064605087131666598

`∑{p}[A181819(n+1), A332294(A181821(#))]`
-/

namespace A297404.P7064605087131666598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A332294 (A181821 p).toNat

end

end A297404.P7064605087131666598

namespace A297404

/-- `∑{p}[A181819(n+1), A332294(A181821(#))]` -/
def P7064605087131666598.Spec : Prop :=
  ∀ n, P7064605087131666598.a n = A297404 (n + 1)

end A297404

/-!
# A297405: Binary "cubes"; numbers whose binary representation consists of three consecutive identical blocks.

The programs for A297405, the canonical program `A297405.P3296877562638287583` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297405 has offset 1).

The definition of A297405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297405.P16069519878941855039

`(n+1)*A264619(A053644(n+1))`
-/

namespace A297405.P16069519878941855039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A264619 (A053644 (n + 1)).toNat

end

end A297405.P16069519878941855039

namespace A297405

/-- `(n+1)*A264619(A053644(n+1))` -/
def P16069519878941855039.Spec : Prop :=
  ∀ n, P16069519878941855039.a n = A297405 (n + 1)

end A297405

/-! ## A297405.P3296877562638287583

`(n+1)*A001576(A070939(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A297405

/-- `(n+1)*A001576(A070939(n+1))` -/
def P3296877562638287583.Spec : Prop :=
  ∀ n, P3296877562638287583.a n = A297405 (n + 1)

theorem P3296877562638287583.correct : P3296877562638287583.Spec := by
  intro n
  simp only [A297405, Nat.add_sub_cancel]

end A297405

/-! ## A297405.P14033575799137613335

`(n+1)*(A028387(A003817(n+1))+2)`
-/

namespace A297405.P14033575799137613335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A028387 (A003817 (n + 1)).toNat + 2)

end

end A297405.P14033575799137613335

namespace A297405

/-- `(n+1)*(A028387(A003817(n+1))+2)` -/
def P14033575799137613335.Spec : Prop :=
  ∀ n, P14033575799137613335.a n = A297405 (n + 1)

end A297405

/-! ## A297405.P17499818322682528389

`(n+1)*A002061(A004755(n+1)-n)`
-/

namespace A297405.P17499818322682528389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002061 (A004755 (n + 1) - (n : ℤ)).toNat

end

end A297405.P17499818322682528389

namespace A297405

/-- `(n+1)*A002061(A004755(n+1)-n)` -/
def P17499818322682528389.Spec : Prop :=
  ∀ n, P17499818322682528389.a n = A297405 (n + 1)

end A297405

/-! ## A297405.P8040449351666882927

`(n+1)*(A002378(A080079(n+1)+n+1)+1)`
-/

namespace A297405.P8040449351666882927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A002378 (A080079 (n + 1) + (n + 1 : ℤ)).toNat + 1)

end

end A297405.P8040449351666882927

namespace A297405

/-- `(n+1)*(A002378(A080079(n+1)+n+1)+1)` -/
def P8040449351666882927.Spec : Prop :=
  ∀ n, P8040449351666882927.a n = A297405 (n + 1)

end A297405

/-! ## A297405.P10790475279102261221

`(n+1)*A006995(A062383(A062383(n+1))+1)`
-/

namespace A297405.P10790475279102261221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006995 (A062383 (A062383 (n + 1)).toNat + 1).toNat

end

end A297405.P10790475279102261221

namespace A297405

/-- `(n+1)*A006995(A062383(A062383(n+1))+1)` -/
def P10790475279102261221.Spec : Prop :=
  ∀ n, P10790475279102261221.a n = A297405 (n + 1)

end A297405

/-!
# A297406: Where the prime race among 8k+1, ..., 8k+7 changes leader.

The programs for A297406, there is no canonical definition to state claims against.
-/

/-! ## A297406.P5866989263670117826

`A171561(A246377(n+1)+A062503(n+1))`
-/

namespace A297406.P5866989263670117826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (A246377 (n + 1) + A062503 (n + 1)).toNat

end

end A297406.P5866989263670117826

/-!
# A297410: Where the prime race among 11k+1, ..., 11k+10 changes leader.

The programs for A297410, there is no canonical definition to state claims against.
-/

/-! ## A297410.P10811467227257240982

`A329630(A037385(n+2))`
-/

namespace A297410.P10811467227257240982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329630 (A037385 (n + 2)).toNat

end

end A297410.P10811467227257240982

/-!
# A297411: Where the prime race among 12k+1, ..., 12k+11 changes leader.

The programs for A297411, there is no canonical definition to state claims against.
-/

/-! ## A297411.P2825942725339410486

`A195271(A189387(n+1)^A346077(n))`
-/

namespace A297411.P2825942725339410486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195271 (SequenceMachineLib.roundAway ((A189387 (n + 1) : ℚ) ^ (A346077 n : ℤ))).toNat

end

end A297411.P2825942725339410486

/-! ## A297411.P10106117340285203828

`A195271(A346077(n)²*A189387(n+1))`
-/

namespace A297411.P10106117340285203828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195271 (A346077 n ^ 2 * A189387 (n + 1)).toNat

end

end A297411.P10106117340285203828

/-!
# A297412: Numbers k such that A019320(k) is in A217468.

The programs for A297412, there is no canonical definition to state claims against.
-/

/-! ## A297412.P17886790966154141996

`A297413(lt[A297415(n+5), A019320(3*n)])`
-/

namespace A297412.P17886790966154141996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297415 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297413 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A297412.P17886790966154141996

/-!
# A297415: Numbers k such that A019320(k) is in A217465.

The programs for A297415, there is no canonical definition to state claims against.
-/

/-! ## A297415.P13749734274041728901

`∩[A143584(n+1), A297414(n+1)]`
-/

namespace A297415.P13749734274041728901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297415.P13749734274041728901

/-!
# A297417: Numbers k such that (14*10^k + 37)/3 is prime.

The programs for A297417, there is no canonical definition to state claims against.
-/

/-! ## A297417.P18269844879547894046

`lt[A304534(n), A146107((2*n+3)²)]`
-/

namespace A297417.P18269844879547894046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146107 ((2 * n + 3) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297417.P18269844879547894046

/-! ## A297417.P3607451665124666698

`eq[A006667(A126265(n)), A220659(3*(n+1))]`
-/

namespace A297417.P3607451665124666698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A126265 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220659 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297417.P3607451665124666698

/-! ## A297417.P9953408638327921198

`eq[A093803(A261356(3*n+4)), A093803(n+1)]`
-/

namespace A297417.P9953408638327921198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A261356 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297417.P9953408638327921198

/-! ## A297417.P17744339219540061965

`lt[A106034(n+1), 43]`
-/

namespace A297417.P17744339219540061965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106034 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A297417.P17744339219540061965

/-! ## A297417.P4988876706527913708

`eq[0, (n-4)%A029105(n)]`
-/

namespace A297417.P4988876706527913708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 4) (A029105 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297417.P4988876706527913708

/-!
# A297420: Square of the number of groups of order n.

The programs for A297420, there is no canonical definition to state claims against.
-/

/-! ## A297420.P9762950664516765133

`A000001(n)²`
-/

namespace A297420.P9762950664516765133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n ^ 2

end

end A297420.P9762950664516765133

/-! ## A297420.P11169961114446220249

`A000001(n)*A000001(A028310(n))`
-/

namespace A297420.P11169961114446220249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n * A000001 (A028310 n).toNat

end

end A297420.P11169961114446220249

/-! ## A297420.P8066066367364513694

`(A000038(n)+A000001(n))*A000001(n)`
-/

namespace A297420.P8066066367364513694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n + A000001 n) * A000001 n

end

end A297420.P8066066367364513694

/-! ## A297420.P1960440683969389126

`A000001(n)*A057427(n)*A000001(n)`
-/

namespace A297420.P1960440683969389126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n * A057427 n * A000001 n

end

end A297420.P1960440683969389126

/-! ## A297420.P4484005178513447353

`A000001(A233583(n+1))*A000001(n)`
-/

namespace A297420.P4484005178513447353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A233583 (n + 1)).toNat * A000001 n

end

end A297420.P4484005178513447353

/-! ## A297420.P13641595621372863135

`A000001(n)^A001511(lcm(2, A000040(n+1)))`
-/

namespace A297420.P13641595621372863135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000001 n : ℚ) ^ (A001511 (Int.lcm 2 (A000040 (n + 1))) : ℤ)

end

end A297420.P13641595621372863135

/-! ## A297420.P11641152614582210617

`A000001(n)^A000005(A102851(n+1))`
-/

namespace A297420.P11641152614582210617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000001 n : ℚ) ^ (A000005 (A102851 (n + 1)).toNat : ℤ)

end

end A297420.P11641152614582210617

/-! ## A297420.P9947923930185142020

`A000001(n)^A000019(A102842(n+1))`
-/

namespace A297420.P9947923930185142020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000001 n : ℚ) ^ (A000019 (A102842 (n + 1)).toNat : ℤ)

end

end A297420.P9947923930185142020

/-! ## A297420.P156179106951176669

`A000001(n)^A000001(A054395(n+1))`
-/

namespace A297420.P156179106951176669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000001 n : ℚ) ^ (A000001 (A054395 (n + 1)).toNat : ℤ)

end

end A297420.P156179106951176669

/-! ## A297420.P15997647314712439654

`A000001(n)^A020639(A002618(n+1))`
-/

namespace A297420.P15997647314712439654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000001 n : ℚ) ^ (A020639 (A002618 (n + 1)).toNat : ℤ)

end

end A297420.P15997647314712439654

/-! ## A297420.P3936125625357124379

`A002620(2*A000001(n))`
-/

namespace A297420.P3936125625357124379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A000001 n).toNat

end

end A297420.P3936125625357124379

/-! ## A297420.P14405734580314282753

`A004652(2*A000001(n))`
-/

namespace A297420.P14405734580314282753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A000001 n).toNat

end

end A297420.P14405734580314282753

/-! ## A297420.P370910796690384600

`A057427(n)*A253909(A000001(n))`
-/

namespace A297420.P370910796690384600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A253909 (A000001 n).toNat

end

end A297420.P370910796690384600

/-! ## A297420.P10141729753737368566

`(A255263(A064132(n))+A000001(n))*A000001(n)`
-/

namespace A297420.P10141729753737368566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A255263 (A064132 n).toNat + A000001 n) * A000001 n

end

end A297420.P10141729753737368566

/-!
# A297421: Numbers k such that (10^(2k) + 2*(10^k) + 4)/4 is prime.

The programs for A297421, there is no canonical definition to state claims against.
-/

/-! ## A297421.P17254982446143304542

`A308449(n+1)+1`
-/

namespace A297421.P17254982446143304542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308449 (n + 1) + 1

end

end A297421.P17254982446143304542

/-!
# A297422: Numbers k such that 4*10^(2k) + 2*(10^k) + 1 is prime.

The programs for A297422, there is no canonical definition to state claims against.
-/

/-! ## A297422.P9954993196318964930

`A073524(A005768(n+2))^A066856(n+1)`
-/

namespace A297422.P9954993196318964930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073524 (A005768 (n + 2)).toNat : ℚ) ^ (A066856 (n + 1) : ℤ)

end

end A297422.P9954993196318964930

/-! ## A297422.P13233925810950394306

`A281072(a(n-1)+1+n)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A297422.P13233925810950394306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5] fun n a =>
  A281072 (a (n - 1) + 1 + (n : ℤ)).toNat

end

end A297422.P13233925810950394306

/-!
# A297423: Numbers k such that (4*10^(2k) - 2*(10^k) + 1)/3 is prime.

The programs for A297423, there is no canonical definition to state claims against.
-/

/-! ## A297423.P2535797466766516876

`A065990(n+1)-A087207(A154638(n))`
-/

namespace A297423.P2535797466766516876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065990 (n + 1) - A087207 (A154638 n).toNat

end

end A297423.P2535797466766516876

/-!
# A297424: 

The programs for A297424, there is no canonical definition to state claims against.
-/

/-! ## A297424.P10681231628911279925

`A076847(10^n)`
-/

namespace A297424.P10681231628911279925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076847 (10 ^ n)

end

end A297424.P10681231628911279925

/-!
# A297425: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1's.

The programs for A297425, there is no canonical definition to state claims against.
-/

/-! ## A297425.P16634271255519079241

`A297431(∑[4*n]+1)`
-/

namespace A297425.P16634271255519079241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297425.P16634271255519079241

/-! ## A297425.P16483794289139745276

`record[A297431(∑[A266981(n)])]`
-/

namespace A297425.P16483794289139745276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297425.P16483794289139745276

/-! ## A297425.P12203723623939386695

`or(char[4], A297431(A001844(n)))`
-/

namespace A297425.P12203723623939386695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A297431 (A001844 n).toNat)

end

end A297425.P12203723623939386695

/-! ## A297425.P5718123723889911284

`record[gcd(A114327(n), A297431(n+1))]`
-/

namespace A297425.P5718123723889911284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A297431 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297425.P5718123723889911284

/-! ## A297425.P10652204877271667445

`record[lcm(A185917(n+1), A297431(n+1))]`
-/

namespace A297425.P10652204877271667445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A185917 (n + 1)) (A297431 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297425.P10652204877271667445

/-!
# A297426: Number of n X 3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297426, the canonical program `A297426.P6504683684237145367` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297426 has offset 1).

The definition of A297426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297426.P8122059324156833160

`ogf((1+6x+7x^2+x^3-3x^4-4x^5)/(1-x-7x^3-x^5+4x^6))`
-/

namespace A297426.P8122059324156833160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 7, 1, -3, -4] [1, -1, 0, -7, 0, -1, 4] n

end

end A297426.P8122059324156833160

namespace A297426

/-- `ogf((1+6x+7x^2+x^3-3x^4-4x^5)/(1-x-7x^3-x^5+4x^6))` -/
def P8122059324156833160.Spec : Prop :=
  ∀ n, P8122059324156833160.a n = A297426 (n + 1)

end A297426

/-! ## A297426.P6504683684237145367

`a(n-1)+7*a(n-3)+a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=7, a(2)=14, a(3)=22, a(4)=68, a(5)=163`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297426

/-- `a(n-1)+7*a(n-3)+a(n-5)-4*a(n-6)` -/
def P6504683684237145367.Spec : Prop :=
  ∀ n, P6504683684237145367.a n = A297426 (n + 1)

theorem P6504683684237145367.correct : P6504683684237145367.Spec := by
  intro n
  simp only [A297426, Nat.add_sub_cancel]

end A297426

/-! ## A297426.P1311504279965473255

`A297431(∑[n+3]+1)`
-/

namespace A297426.P1311504279965473255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297426.P1311504279965473255

namespace A297426

/-- `A297431(∑[n+3]+1)` -/
def P1311504279965473255.Spec : Prop :=
  ∀ n, P1311504279965473255.a n = A297426 (n + 1)

end A297426

/-! ## A297426.P584573415607483117

`record[A297431(n+1)/A103327(n+2)]`
-/

namespace A297426.P584573415607483117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297431 (n + 1) : ℚ) / (A103327 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297426.P584573415607483117

namespace A297426

/-- `record[A297431(n+1)/A103327(n+2)]` -/
def P584573415607483117.Spec : Prop :=
  ∀ n, P584573415607483117.a n = (A297426 (n + 1) : ℚ)

end A297426

/-! ## A297426.P7039140315013436023

`record[A297431(n+1)/A297395(n+3)]`
-/

namespace A297426.P7039140315013436023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297431 (n + 1) : ℚ) / (A297395 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297426.P7039140315013436023

namespace A297426

/-- `record[A297431(n+1)/A297395(n+3)]` -/
def P7039140315013436023.Spec : Prop :=
  ∀ n, P7039140315013436023.a n = (A297426 (n + 1) : ℚ)

end A297426

/-!
# A297427: Number of n X 4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297427, the canonical program `A297427.P4629874770781200841` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297427 has offset 1).

The definition of A297427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297427.P4629874770781200841

`ogf((1+11x+14x^2+4x^3-5x^4-8x^5-x^6)/(1-x-12x^3-2x^4-2x^5+7x^6+x^7))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297427

/-- `ogf((1+11x+14x^2+4x^3-5x^4-8x^5-x^6)/(1-x-12x^3-2x^4-2x^5+7x^6+x^7))` -/
def P4629874770781200841.Spec : Prop :=
  ∀ n, P4629874770781200841.a n = A297427 (n + 1)

theorem P4629874770781200841.correct : P4629874770781200841.Spec := by
  intro n
  simp only [A297427, Nat.add_sub_cancel]

end A297427

/-! ## A297427.P16703484582948229257

`A297431(A141214(n+1))`
-/

namespace A297427.P16703484582948229257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A141214 (n + 1)).toNat

end

end A297427.P16703484582948229257

namespace A297427

/-- `A297431(A141214(n+1))` -/
def P16703484582948229257.Spec : Prop :=
  ∀ n, P16703484582948229257.a n = A297427 (n + 1)

end A297427

/-! ## A297427.P9131017344012464196

`A297431(A027379(n+2))`
-/

namespace A297427.P9131017344012464196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A027379 (n + 2)).toNat

end

end A297427.P9131017344012464196

namespace A297427

/-- `A297431(A027379(n+2))` -/
def P9131017344012464196.Spec : Prop :=
  ∀ n, P9131017344012464196.a n = A297427 (n + 1)

end A297427

/-! ## A297427.P14076261574647234418

`A297431(A055998(n+2))`
-/

namespace A297427.P14076261574647234418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A055998 (n + 2)).toNat

end

end A297427.P14076261574647234418

namespace A297427

/-- `A297431(A055998(n+2))` -/
def P14076261574647234418.Spec : Prop :=
  ∀ n, P14076261574647234418.a n = A297427 (n + 1)

end A297427

/-! ## A297427.P13485566343414771606

`A297431(A155212(n)+5)`
-/

namespace A297427.P13485566343414771606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A155212 n + 5).toNat

end

end A297427.P13485566343414771606

namespace A297427

/-- `A297431(A155212(n)+5)` -/
def P13485566343414771606.Spec : Prop :=
  ∀ n, P13485566343414771606.a n = A297427 (n + 1)

end A297427

/-!
# A297428: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297428, there is no canonical definition to state claims against.
-/

/-! ## A297428.P15658372515700231655

`A297431(A046691(n+3))`
-/

namespace A297428.P15658372515700231655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A046691 (n + 3)).toNat

end

end A297428.P15658372515700231655

/-! ## A297428.P1658541571895815982

`A297431(A000124(n+5)-5)`
-/

namespace A297428.P1658541571895815982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000124 (n + 5) - 5).toNat

end

end A297428.P1658541571895815982

/-! ## A297428.P16635730223381506657

`A297431(A161680(n+6)-4)`
-/

namespace A297428.P16635730223381506657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A161680 (n + 6) - 4).toNat

end

end A297428.P16635730223381506657

/-! ## A297428.P8823528398480472029

`A297431(A000217(n+4)+n+1)`
-/

namespace A297428.P8823528398480472029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A297428.P8823528398480472029

/-!
# A297429: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297429, there is no canonical definition to state claims against.
-/

/-! ## A297429.P16517070099796338963

`A297431(A052905(n+3))`
-/

namespace A297429.P16517070099796338963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A052905 (n + 3)).toNat

end

end A297429.P16517070099796338963

/-! ## A297429.P5478826546738387837

`A297431(A034856(n+5)-3)`
-/

namespace A297429.P5478826546738387837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A034856 (n + 5) - 3).toNat

end

end A297429.P5478826546738387837

/-! ## A297429.P1867993919290348888

`A297431(A000217(n+6)-5)`
-/

namespace A297429.P1867993919290348888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000217 (n + 6) - 5).toNat

end

end A297429.P1867993919290348888

/-! ## A297429.P15058581115764219549

`A297431(A000124(n+6)-6)`
-/

namespace A297429.P15058581115764219549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000124 (n + 6) - 6).toNat

end

end A297429.P15058581115764219549

/-! ## A297429.P4851289317601655245

`A297431(A055998(n+5)-(n+9))`
-/

namespace A297429.P4851289317601655245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A055998 (n + 5) - (n + 9 : ℤ)).toNat

end

end A297429.P4851289317601655245

/-!
# A297430: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297430, there is no canonical definition to state claims against.
-/

/-! ## A297430.P2106395801009792527

`A297431(A055999(n+4))`
-/

namespace A297430.P2106395801009792527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A055999 (n + 4)).toNat

end

end A297430.P2106395801009792527

/-! ## A297430.P4686170615573950567

`A297431(A046691(n+5)-2)`
-/

namespace A297430.P4686170615573950567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A046691 (n + 5) - 2).toNat

end

end A297430.P4686170615573950567

/-! ## A297430.P14937211436448208508

`A297431(A000124(n+7)-7)`
-/

namespace A297430.P14937211436448208508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000124 (n + 7) - 7).toNat

end

end A297430.P14937211436448208508

/-! ## A297430.P2630154568206159198

`A297431(A000096(n+5)+n+2)`
-/

namespace A297430.P2630154568206159198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A297430.P2630154568206159198

/-! ## A297430.P16640083346957178321

`A297431(A000217(n+6)+n+1)`
-/

namespace A297430.P16640083346957178321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A297430.P16640083346957178321

/-!
# A297431: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297431, there is no canonical definition to state claims against.
-/

/-! ## A297431.P6116748868088518956

`A108346(A327483(n))`
-/

namespace A297431.P6116748868088518956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108346 (A327483 n).toNat

end

end A297431.P6116748868088518956

/-! ## A297431.P9428759291524156542

`A334945(A322699(n)+1)`
-/

namespace A297431.P9428759291524156542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334945 (A322699 n + 1).toNat

end

end A297431.P9428759291524156542

/-! ## A297431.P2241247468140481830

`A270831(A284308(n+1))%15`
-/

namespace A297431.P2241247468140481830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270831 (A284308 (n + 1)).toNat) 15

end

end A297431.P2241247468140481830

/-! ## A297431.P706591056712192179

`A256221(A084268(n+1)+1)-1`
-/

namespace A297431.P706591056712192179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256221 (A084268 (n + 1) + 1).toNat - 1

end

end A297431.P706591056712192179

/-! ## A297431.P16029473004337189397

`gcd(A007318(A117414(n)), A103327(n))`
-/

namespace A297431.P16029473004337189397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (A117414 n).toNat) (A103327 n)

end

end A297431.P16029473004337189397

/-!
# A297432: Number of 2 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297432, the canonical program `A297432.P7260786102305112011` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297432 has offset 1).

The definition of A297432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297432.P14239124172288158607

`ogf((1+x+5x^2+4x^3)/(1-x-x^3-4x^4))`
-/

namespace A297432.P14239124172288158607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5, 4] [1, -1, 0, -1, -4] n

end

end A297432.P14239124172288158607

namespace A297432

/-- `ogf((1+x+5x^2+4x^3)/(1-x-x^3-4x^4))` -/
def P14239124172288158607.Spec : Prop :=
  ∀ n, P14239124172288158607.a n = A297432 (n + 1)

end A297432

/-! ## A297432.P7260786102305112011

`a(n-1)+a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=12`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297432

/-- `a(n-1)+a(n-3)+4*a(n-4)` -/
def P7260786102305112011.Spec : Prop :=
  ∀ n, (P7260786102305112011.a n : ℤ) = A297432 (n + 1)

theorem P7260786102305112011.correct : P7260786102305112011.Spec := by
  intro n
  simp only [A297432, Nat.add_sub_cancel]

end A297432

/-! ## A297432.P16722558853028412445

`record[ratio[A297431(n+1)]]`
-/

namespace A297432.P16722558853028412445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297432.P16722558853028412445

namespace A297432

/-- `record[ratio[A297431(n+1)]]` -/
def P16722558853028412445.Spec : Prop :=
  ∀ n, P16722558853028412445.a n = (A297432 (n + 1) : ℚ)

end A297432

/-! ## A297432.P5408458131064996381

`A297431(∑[n+1]+2)`
-/

namespace A297432.P5408458131064996381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297432.P5408458131064996381

namespace A297432

/-- `A297431(∑[n+1]+2)` -/
def P5408458131064996381.Spec : Prop :=
  ∀ n, P5408458131064996381.a n = A297432 (n + 1)

end A297432

/-! ## A297432.P14423034849046579000

`record[A297431(n+1)/A144048(n)]`
-/

namespace A297432.P14423034849046579000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297431 (n + 1) : ℚ) / (A144048 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297432.P14423034849046579000

namespace A297432

/-- `record[A297431(n+1)/A144048(n)]` -/
def P14423034849046579000.Spec : Prop :=
  ∀ n, P14423034849046579000.a n = (A297432 (n + 1) : ℚ)

end A297432

/-!
# A297433: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297433, the canonical program `A297433.P1812831789543295987` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297433 has offset 1).

The definition of A297433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297433.P17324506987694544802

`ogf((1+2x+11x^2+9x^3-x^5)/(1-x-3x^3-8x^4-x^5+x^6))`
-/

namespace A297433.P17324506987694544802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 11, 9, 0, -1] [1, -1, 0, -3, -8, -1, 1] n

end

end A297433.P17324506987694544802

namespace A297433

/-- `ogf((1+2x+11x^2+9x^3-x^5)/(1-x-3x^3-8x^4-x^5+x^6))` -/
def P17324506987694544802.Spec : Prop :=
  ∀ n, P17324506987694544802.a n = A297433 (n + 1)

end A297433

/-! ## A297433.P1812831789543295987

`a(n-1)+3*a(n-3)+8*a(n-4)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=14, a(3)=26, a(4)=43, a(5)=109`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297433

/-- `a(n-1)+3*a(n-3)+8*a(n-4)+a(n-5)-a(n-6)` -/
def P1812831789543295987.Spec : Prop :=
  ∀ n, P1812831789543295987.a n = A297433 (n + 1)

theorem P1812831789543295987.correct : P1812831789543295987.Spec := by
  intro n
  simp only [A297433, Nat.add_sub_cancel]

end A297433

/-! ## A297433.P13336003687686234797

`A297431(∑[n+2]+4)`
-/

namespace A297433.P13336003687686234797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297433.P13336003687686234797

namespace A297433

/-- `A297431(∑[n+2]+4)` -/
def P13336003687686234797.Spec : Prop :=
  ∀ n, P13336003687686234797.a n = A297433 (n + 1)

end A297433

/-! ## A297433.P1993896853523136254

`A297431(A167614(n+1))%Δ[3^n]`
-/

namespace A297433.P1993896853523136254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297431 (A167614 (n + 1)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A297433.P1993896853523136254

namespace A297433

/-- `A297431(A167614(n+1))%Δ[3^n]` -/
def P1993896853523136254.Spec : Prop :=
  ∀ n, P1993896853523136254.a n = A297433 (n + 1)

end A297433

/-! ## A297433.P4705539788760899090

`A297431(A167614(n+1))+A185284(n)`
-/

namespace A297433.P4705539788760899090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A167614 (n + 1)).toNat + A185284 n

end

end A297433.P4705539788760899090

namespace A297433

/-- `A297431(A167614(n+1))+A185284(n)` -/
def P4705539788760899090.Spec : Prop :=
  ∀ n, P4705539788760899090.a n = A297433 (n + 1)

end A297433

/-!
# A297434: Number of 4 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297434, the canonical program `A297434.P15664982694361340181` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297434 has offset 1).

The definition of A297434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297434.P15664982694361340181

`ogf((1+x+9x^2-28x^3-44x^4+21x^5+22x^6+5x^7+5x^8+8x^9+3x^10-2x^11)/(1-3x-x^2-x^4+33x^5+7x^6-21x^7-3x^8-2x^9-3x^10-5x^11+2x^12))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297434

/-- `ogf((1+x+9x^2-28x^3-44x^4+21x^5+22x^6+5x^7+5x^8+8x^9+3x^10-2x^11)/(1-3x-x^2-x^4+33x^5+7x^6-21x^7-3x^8-2x^9-3x^10-5x^11+2x^12))` -/
def P15664982694361340181.Spec : Prop :=
  ∀ n, P15664982694361340181.a n = A297434 (n + 1)

theorem P15664982694361340181.correct : P15664982694361340181.Spec := by
  intro n
  simp only [A297434, Nat.add_sub_cancel]

end A297434

/-! ## A297434.P4346590968121037754

`A297431(∑[n+3]+7)`
-/

namespace A297434.P4346590968121037754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297434.P4346590968121037754

namespace A297434

/-- `A297431(∑[n+3]+7)` -/
def P4346590968121037754.Spec : Prop :=
  ∀ n, P4346590968121037754.a n = A297434 (n + 1)

end A297434

/-! ## A297434.P6824988751372570820

`A297431(A141214(n)+7)%A322764(n)`
-/

namespace A297434.P6824988751372570820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297431 (A141214 n + 7).toNat) (A322764 n)

end

end A297434.P6824988751372570820

namespace A297434

/-- `A297431(A141214(n)+7)%A322764(n)` -/
def P6824988751372570820.Spec : Prop :=
  ∀ n, P6824988751372570820.a n = A297434 (n + 1)

end A297434

/-! ## A297434.P12319242233598097802

`A007318(C(2, n+2))*A297431(A167614(n+2)+1)`
-/

namespace A297434.P12319242233598097802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A297431 (A167614 (n + 2) + 1).toNat

end

end A297434.P12319242233598097802

namespace A297434

/-- `A007318(C(2, n+2))*A297431(A167614(n+2)+1)` -/
def P12319242233598097802.Spec : Prop :=
  ∀ n, P12319242233598097802.a n = A297434 (n + 1)

end A297434

/-! ## A297434.P14719916829207956199

`A014963(52*(n+1))*A297431(A167614(n+2)+1)`
-/

namespace A297434.P14719916829207956199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (52 * (n + 1)) * A297431 (A167614 (n + 2) + 1).toNat

end

end A297434.P14719916829207956199

namespace A297434

/-- `A014963(52*(n+1))*A297431(A167614(n+2)+1)` -/
def P14719916829207956199.Spec : Prop :=
  ∀ n, P14719916829207956199.a n = A297434 (n + 1)

end A297434

/-!
# A297435: Number of 5 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297435, there is no canonical definition to state claims against.
-/

/-! ## A297435.P11824961090361380086

`A297431(A056000(n)+15)`
-/

namespace A297435.P11824961090361380086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A056000 n + 15).toNat

end

end A297435.P11824961090361380086

/-! ## A297435.P1625921160153858595

`A297431(A000217(n+4)+5)`
-/

namespace A297435.P1625921160153858595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000217 (n + 4) + 5).toNat

end

end A297435.P1625921160153858595

/-! ## A297435.P4443966780450641141

`A297431(A161680(n+5)+5)`
-/

namespace A297435.P4443966780450641141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A161680 (n + 5) + 5).toNat

end

end A297435.P4443966780450641141

/-! ## A297435.P16078633048698990341

`A297431(A000124(n+5)-(n+1))`
-/

namespace A297435.P16078633048698990341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A297435.P16078633048698990341

/-! ## A297435.P17954048799379333428

`A297431(A052905(n+3)-(2*n+1))`
-/

namespace A297435.P17954048799379333428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A297435.P17954048799379333428

/-!
# A297436: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297436, there is no canonical definition to state claims against.
-/

/-! ## A297436.P17268701185733664653

`A297431(A166136(n+4))`
-/

namespace A297436.P17268701185733664653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A166136 (n + 4)).toNat

end

end A297436.P17268701185733664653

/-! ## A297436.P6192481602521284553

`A297431(∑[A020710(n)]+16)`
-/

namespace A297436.P6192481602521284553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A297436.P6192481602521284553

/-! ## A297436.P6203111343345389091

`A297431(A000217(n+5)+6)`
-/

namespace A297436.P6203111343345389091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000217 (n + 5) + 6).toNat

end

end A297436.P6203111343345389091

/-! ## A297436.P14637637578778264540

`A297431(A161680(n+6)+6)`
-/

namespace A297436.P14637637578778264540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A161680 (n + 6) + 6).toNat

end

end A297436.P14637637578778264540

/-!
# A297437: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 neighboring 1s.

The programs for A297437, there is no canonical definition to state claims against.
-/

/-! ## A297437.P3291935832058879566

`A297431(A167499(n+5)+2)`
-/

namespace A297437.P3291935832058879566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A167499 (n + 5) + 2).toNat

end

end A297437.P3291935832058879566

/-! ## A297437.P17492852836820639670

`A297431(A000217(n+6)+7)`
-/

namespace A297437.P17492852836820639670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A000217 (n + 6) + 7).toNat

end

end A297437.P17492852836820639670

/-! ## A297437.P14432472404883967941

`A297431(A161680(n+7)+7)`
-/

namespace A297437.P14432472404883967941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A161680 (n + 7) + 7).toNat

end

end A297437.P14432472404883967941

/-! ## A297437.P6332724143803563408

`A297431(eq[6, A002262(n)]+1)`
-/

namespace A297437.P6332724143803563408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A297437.P6332724143803563408

/-! ## A297437.P9999016164981905458

`A297431(A046691(n+6)-A005843(n+2))`
-/

namespace A297437.P9999016164981905458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297431 (A046691 (n + 6) - A005843 (n + 2)).toNat

end

end A297437.P9999016164981905458

/-!
# A297439: Number of maximum independent vertex sets and minimum vertex covers in the n-web graph.

The programs for A297439, the canonical program `A297439.P9408264957168547820` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297439 has offset 2).

The definition of A297439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297439.P13428872144709990518

`ogf((4+9x-8x^2-6x^3)/(1-4x^2+4x^4))`
-/

namespace A297439.P13428872144709990518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, -8, -6] [1, 0, -4, 0, 4] n

end

end A297439.P13428872144709990518

namespace A297439

/-- `ogf((4+9x-8x^2-6x^3)/(1-4x^2+4x^4))` -/
def P13428872144709990518.Spec : Prop :=
  ∀ n, P13428872144709990518.a n = A297439 (n + 2)

end A297439

/-! ## A297439.P9408264957168547820

`4*a(n-2)-4*a(n-4)` with `a(0)=4, a(1)=9, a(2)=8, a(3)=30`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297439

/-- `4*a(n-2)-4*a(n-4)` -/
def P9408264957168547820.Spec : Prop :=
  ∀ n, P9408264957168547820.a n = A297439 (n + 2)

theorem P9408264957168547820.correct : P9408264957168547820.Spec := by
  intro n
  simp only [A297439, Nat.add_sub_cancel]

end A297439

/-! ## A297439.P6985766315620255020

`A141310(n+1)*A164090(n+1)`
-/

namespace A297439.P6985766315620255020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (n + 1) * A164090 (n + 1)

end

end A297439.P6985766315620255020

namespace A297439

/-- `A141310(n+1)*A164090(n+1)` -/
def P6985766315620255020.Spec : Prop :=
  ∀ n, P6985766315620255020.a n = A297439 (n + 2)

end A297439

/-! ## A297439.P14220222601723947884

`Δ[Δ[A032528(n)]*A016116(n)]`
-/

namespace A297439.P14220222601723947884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297439.P14220222601723947884

namespace A297439

/-- `Δ[Δ[A032528(n)]*A016116(n)]` -/
def P14220222601723947884.Spec : Prop :=
  ∀ n, P14220222601723947884.a n = A297439 (n + 2)

end A297439

/-! ## A297439.P12243597322210880333

`Δ[A007310(n+1)*A016116(n)]`
-/

namespace A297439.P12243597322210880333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297439.P12243597322210880333

namespace A297439

/-- `Δ[A007310(n+1)*A016116(n)]` -/
def P12243597322210880333.Spec : Prop :=
  ∀ n, P12243597322210880333.a n = A297439 (n + 2)

end A297439

/-! ## A297439.P17971342133501232047

`Δ[Δ[A052955(n)]*A007310(n+1)]`
-/

namespace A297439.P17971342133501232047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297439.P17971342133501232047

namespace A297439

/-- `Δ[Δ[A052955(n)]*A007310(n+1)]` -/
def P17971342133501232047.Spec : Prop :=
  ∀ n, P17971342133501232047.a n = A297439 (n + 2)

end A297439

/-! ## A297439.P2473568352998155627

`Δ[A016116(n)*A047260(2*(n+1))]`
-/

namespace A297439.P2473568352998155627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A047260 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297439.P2473568352998155627

namespace A297439

/-- `Δ[A016116(n)*A047260(2*(n+1))]` -/
def P2473568352998155627.Spec : Prop :=
  ∀ n, P2473568352998155627.a n = A297439 (n + 2)

end A297439

/-! ## A297439.P3295279339766868654

`Δ[A005408(A007494(n))*A016116(n)]`
-/

namespace A297439.P3295279339766868654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A007494 n).toNat * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297439.P3295279339766868654

namespace A297439

/-- `Δ[A005408(A007494(n))*A016116(n)]` -/
def P3295279339766868654.Spec : Prop :=
  ∀ n, P3295279339766868654.a n = A297439 (n + 2)

end A297439

/-! ## A297439.P15773519162074250491

`Δ[sqrt(A213173(n))*A007310(n+1)]`
-/

namespace A297439.P15773519162074250491
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A213173 n : ℝ) * (A007310 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A297439.P15773519162074250491

namespace A297439

/-- `Δ[sqrt(A213173(n))*A007310(n+1)]` -/
def P15773519162074250491.Spec : Prop :=
  ∀ n, P15773519162074250491.a n = (A297439 (n + 2) : ℝ)

end A297439

/-!
# A297441: Rectangular array R by antidiagonals: row n shows the positive integers whose base-3 digits have down-variation n, for n>=0. See Comments.

The programs for A297441, there is no canonical definition to state claims against.
-/

/-! ## A297441.P5503536338935021655

`xor(A282695(n+1)+1+n, A329450(A036640(n+2)))`
-/

namespace A297441.P5503536338935021655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A282695 (n + 1) + 1 + (n : ℤ)) (A329450 (A036640 (n + 2)).toNat)

end

end A297441.P5503536338935021655

/-!
# A297443: a(n) = a(n-1) + 2*a(n-2) - 2*a(n-3) + 3*a(n-4) - 3*a(n-5), where a(0) = 1, a(1) = 3, a(2) = 6, a(3) = 11, a(4) = 20, a(5) = 33.

The programs for A297443, the canonical program `A297443.P11170289186627347678` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297443 has offset 0).

The definition of A297443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)-2*a(n-3)+3*a(n-4)-3*a(n-5)` (program `A297443.P11170289186627347678`, by `A297443.P11170289186627347678.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297443.P14894710810015809998

`ogf((1+2x+x^2+x^3-3x^5)/(1-x-2x^2+2x^3-3x^4+3x^5))`
-/

namespace A297443.P14894710810015809998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 1, 0, -3] [1, -1, -2, 2, -3, 3] n

end

end A297443.P14894710810015809998

namespace A297443

/-- `ogf((1+2x+x^2+x^3-3x^5)/(1-x-2x^2+2x^3-3x^4+3x^5))` -/
def P14894710810015809998.Spec : Prop :=
  ∀ n, P14894710810015809998.a n = A297443 n

end A297443

/-! ## A297443.P11170289186627347678

`a(n-1)+2*a(n-2)-2*a(n-3)+3*a(n-4)-3*a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=11, a(4)=20, a(5)=33`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297443

/-- `a(n-1)+2*a(n-2)-2*a(n-3)+3*a(n-4)-3*a(n-5)` -/
def P11170289186627347678.Spec : Prop :=
  ∀ n, P11170289186627347678.a n = A297443 n

theorem P11170289186627347678.correct : P11170289186627347678.Spec := by
  intro n
  simp only [A297443]

end A297443

/-! ## A297443.P13125193085779594802

`xor(2, a(n-2)%3)+3*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A297443.P13125193085779594802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.xor 2 (a (n - 2) % 3) + 3 * a (n - 2)

end

end A297443.P13125193085779594802

namespace A297443

/-- `xor(2, a(n-2)%3)+3*a(n-2)` -/
def P13125193085779594802.Spec : Prop :=
  ∀ n, (P13125193085779594802.a n : ℤ) = A297443 n

end A297443

/-! ## A297443.P16334277074023558116

`∪[A198310(n+3), A297444(n)]`
-/

namespace A297443.P16334277074023558116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198310 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297444 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297443.P16334277074023558116

namespace A297443

/-- `∪[A198310(n+3), A297444(n)]` -/
def P16334277074023558116.Spec : Prop :=
  ∀ n, (P16334277074023558116.a n : ℤ) = A297443 n

end A297443

/-! ## A297443.P2516954689502284685

`floor(∑[(3^ceil(n/2))²]/3^ceil(n/2))`
-/

namespace A297443.P2516954689502284685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / (3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)⌋

end

end A297443.P2516954689502284685

namespace A297443

/-- `floor(∑[(3^ceil(n/2))²]/3^ceil(n/2))` -/
def P2516954689502284685.Spec : Prop :=
  ∀ n, P2516954689502284685.a n = A297443 n

end A297443

/-!
# A297444: a(n) = a(n-1) + 9*a(n-2) - 9*a(n-3), where a(0) = 1, a(1) = 3, a(2) = 6, a(3) = 33.

The programs for A297444, the canonical program `A297444.P4716475512423033029` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297444 has offset 0).

The definition of A297444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+9*a(n-2)-9*a(n-3)` (program `A297444.P4716475512423033029`, by `A297444.P4716475512423033029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297444.P4716475512423033029

`a(n-1)+9*a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=33`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297444

/-- `a(n-1)+9*a(n-2)-9*a(n-3)` -/
def P4716475512423033029.Spec : Prop :=
  ∀ n, P4716475512423033029.a n = A297444 n

theorem P4716475512423033029.correct : P4716475512423033029.Spec := by
  intro n
  simp only [A297444]

end A297444

/-! ## A297444.P16515207759739836451

`9*a(n-2)+6` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A297444.P16515207759739836451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  9 * a (n - 2) + 6

end

end A297444.P16515207759739836451

namespace A297444

/-- `9*a(n-2)+6` -/
def P16515207759739836451.Spec : Prop :=
  ∀ n, (P16515207759739836451.a n : ℤ) = A297444 n

end A297444

/-! ## A297444.P4005017334072204470

`∏[dr(a(n-2)²)]+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A297444.P4005017334072204470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 2) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A297444.P4005017334072204470

namespace A297444

/-- `∏[dr(a(n-2)²)]+a(n-1)` -/
def P4005017334072204470.Spec : Prop :=
  ∀ n, (P4005017334072204470.a n : ℤ) = A297444 n

end A297444

/-! ## A297444.P2549834238901119876

`∏[A006530(a(n-2))²]+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A297444.P2549834238901119876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A006530 (f1 (n - 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A297444.P2549834238901119876

namespace A297444

/-- `∏[A006530(a(n-2))²]+a(n-1)` -/
def P2549834238901119876.Spec : Prop :=
  ∀ n, P2549834238901119876.a n = A297444 n

end A297444

/-! ## A297444.P13149360567459024275

`∏[A014963(a(n-2))²]+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A297444.P13149360567459024275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A014963 (f1 (n - 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A297444.P13149360567459024275

namespace A297444

/-- `∏[A014963(a(n-2))²]+a(n-1)` -/
def P13149360567459024275.Spec : Prop :=
  ∀ n, P13149360567459024275.a n = A297444 n

end A297444

/-! ## A297444.P9632303485049421827

`∏[A020639(a(n-2))²]+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A297444.P9632303485049421827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A020639 (f1 (n - 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A297444.P9632303485049421827

namespace A297444

/-- `∏[A020639(a(n-2))²]+a(n-1)` -/
def P9632303485049421827.Spec : Prop :=
  ∀ n, P9632303485049421827.a n = A297444 n

end A297444

/-! ## A297444.P6775792136255722388

`A103453(n)+A014983(n)`
-/

namespace A297444.P6775792136255722388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 n + A014983 n

end

end A297444.P6775792136255722388

namespace A297444

/-- `A103453(n)+A014983(n)` -/
def P6775792136255722388.Spec : Prop :=
  ∀ n, P6775792136255722388.a n = A297444 n

end A297444

/-! ## A297444.P9692521310399679810

`A297443(A264120(n+1))`
-/

namespace A297444.P9692521310399679810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297443 (A264120 (n + 1)).toNat

end

end A297444.P9692521310399679810

namespace A297444

/-- `A297443(A264120(n+1))` -/
def P9692521310399679810.Spec : Prop :=
  ∀ n, P9692521310399679810.a n = A297444 n

end A297444

/-!
# A297445: a(n) = a(n-1) + 9*a(n-2) - 9*a(n-3), where a(0) = 1, a(1) = 5, a(2) = 11.

The programs for A297445, the canonical program `A297445.P4486857482179269823` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297445 has offset 0).

The definition of A297445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+9*a(n-2)-9*a(n-3)` (program `A297445.P4486857482179269823`, by `A297445.P4486857482179269823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297445.P1656948759858677989

`ogf((1+4x-3x^2)/(1-x-9x^2+9x^3))`
-/

namespace A297445.P1656948759858677989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3] [1, -1, -9, 9] n

end

end A297445.P1656948759858677989

namespace A297445

/-- `ogf((1+4x-3x^2)/(1-x-9x^2+9x^3))` -/
def P1656948759858677989.Spec : Prop :=
  ∀ n, P1656948759858677989.a n = A297445 n

end A297445

/-! ## A297445.P4486857482179269823

`a(n-1)+9*a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=5, a(2)=11`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297445

/-- `a(n-1)+9*a(n-2)-9*a(n-3)` -/
def P4486857482179269823.Spec : Prop :=
  ∀ n, P4486857482179269823.a n = A297445 n

theorem P4486857482179269823.correct : P4486857482179269823.Spec := by
  intro n
  simp only [A297445]

end A297445

/-! ## A297445.P17357119339089154801

`∑[ogf((1+4x-3x^2)/(1-9x^2))]`
-/

namespace A297445.P17357119339089154801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3] [1, 0, -9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297445.P17357119339089154801

namespace A297445

/-- `∑[ogf((1+4x-3x^2)/(1-9x^2))]` -/
def P17357119339089154801.Spec : Prop :=
  ∀ n, P17357119339089154801.a n = A297445 n

end A297445

/-! ## A297445.P308309059554894925

`9*a(n-2)+2` with `a(0)=1, a(1)=5`
-/

namespace A297445.P308309059554894925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  9 * a (n - 2) + 2

end

end A297445.P308309059554894925

namespace A297445

/-- `9*a(n-2)+2` -/
def P308309059554894925.Spec : Prop :=
  ∀ n, (P308309059554894925.a n : ℤ) = A297445 n

end A297445

/-! ## A297445.P10553689683568844568

`lcm(9, a(n-2))+2` with `a(0)=1, a(1)=5`
-/

namespace A297445.P10553689683568844568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  Nat.lcm 9 (a (n - 2)) + 2

end

end A297445.P10553689683568844568

namespace A297445

/-- `lcm(9, a(n-2))+2` -/
def P10553689683568844568.Spec : Prop :=
  ∀ n, (P10553689683568844568.a n : ℤ) = A297445 n

end A297445

/-! ## A297445.P16164453516495996936

`∑[9*a(n-2)]` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A297445.P16164453516495996936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n f1 =>
  9 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297445.P16164453516495996936

namespace A297445

/-- `∑[9*a(n-2)]` -/
def P16164453516495996936.Spec : Prop :=
  ∀ n, (P16164453516495996936.a n : ℤ) = A297445 n

end A297445

/-! ## A297445.P7236160563227787267

`a(n-2)/(1/3)²+2` with `a(0)=1, a(1)=5`
-/

namespace A297445.P7236160563227787267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) / ((1 : ℚ) / 3) ^ 2 + 2

end

end A297445.P7236160563227787267

namespace A297445

/-- `a(n-2)/(1/3)²+2` -/
def P7236160563227787267.Spec : Prop :=
  ∀ n, P7236160563227787267.a n = (A297445 n : ℚ)

end A297445

/-! ## A297445.P807211593163276520

`3*(3^n-a(n-1))-1` with `a(0)=1`
-/

namespace A297445.P807211593163276520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((3 ^ n : ℤ) - a (n - 1)) - 1

end

end A297445.P807211593163276520

namespace A297445

/-- `3*(3^n-a(n-1))-1` -/
def P807211593163276520.Spec : Prop :=
  ∀ n, P807211593163276520.a n = A297445 n

end A297445

/-! ## A297445.P9733453835565166067

`A014983(n)+A003462(n+1)`
-/

namespace A297445.P9733453835565166067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n + A003462 (n + 1)

end

end A297445.P9733453835565166067

namespace A297445

/-- `A014983(n)+A003462(n+1)` -/
def P9733453835565166067.Spec : Prop :=
  ∀ n, P9733453835565166067.a n = A297445 n

end A297445

/-! ## A297445.P16589658558829929364

`A084222(n)+A029858(n+1)`
-/

namespace A297445.P16589658558829929364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084222 n + A029858 (n + 1)

end

end A297445.P16589658558829929364

namespace A297445

/-- `A084222(n)+A029858(n+1)` -/
def P16589658558829929364.Spec : Prop :=
  ∀ n, P16589658558829929364.a n = A297445 n

end A297445

/-! ## A297445.P13372920433971029744

`A048328(2*n+1)+A014983(n)`
-/

namespace A297445.P13372920433971029744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048328 (2 * n + 1) + A014983 n

end

end A297445.P13372920433971029744

namespace A297445

/-- `A048328(2*n+1)+A014983(n)` -/
def P13372920433971029744.Spec : Prop :=
  ∀ n, P13372920433971029744.a n = A297445 n

end A297445

/-! ## A297445.P9283146485186371206

`∑[A287479(2*n)+abs(A287479(2*n+1))]`
-/

namespace A297445.P9283146485186371206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287479 (2 * n) + |A287479 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297445.P9283146485186371206

namespace A297445

/-- `∑[A287479(2*n)+abs(A287479(2*n+1))]` -/
def P9283146485186371206.Spec : Prop :=
  ∀ n, P9283146485186371206.a n = A297445 n

end A297445

/-! ## A297445.P12955441104663488170

`2*A309791(2*n)-1`
-/

namespace A297445.P12955441104663488170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309791 (2 * n) - 1

end

end A297445.P12955441104663488170

namespace A297445

/-- `2*A309791(2*n)-1` -/
def P12955441104663488170.Spec : Prop :=
  ∀ n, P12955441104663488170.a n = A297445 n

end A297445

/-! ## A297445.P680596736266062456

`∑[ceil(A099856(n)*A176895(2*n)/3)]`
-/

namespace A297445.P680596736266062456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099856 n * A176895 (2 * n) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297445.P680596736266062456

namespace A297445

/-- `∑[ceil(A099856(n)*A176895(2*n)/3)]` -/
def P680596736266062456.Spec : Prop :=
  ∀ n, P680596736266062456.a n = A297445 n

end A297445

/-! ## A297445.P5482239694128618971

`A014983(n)-(A003462(n)-A048473(n))`
-/

namespace A297445.P5482239694128618971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014983 n - (A003462 n - A048473 n)

end

end A297445.P5482239694128618971

namespace A297445

/-- `A014983(n)-(A003462(n)-A048473(n))` -/
def P5482239694128618971.Spec : Prop :=
  ∀ n, P5482239694128618971.a n = A297445 n

end A297445

/-! ## A297445.P14666153366445353949

`A198310(n+3)%A005030(n)`
-/

namespace A297445.P14666153366445353949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198310 (n + 3)) (A005030 n)

end

end A297445.P14666153366445353949

namespace A297445

/-- `A198310(n+3)%A005030(n)` -/
def P14666153366445353949.Spec : Prop :=
  ∀ n, P14666153366445353949.a n = A297445 n

end A297445

/-!
# A297446: a(1) = 1; a(n) = (2^n - 1)*((3^n - 1)/(2^n - 1) mod 1), n >= 2. Unreduced numerators of fractional parts of (3^n - 1)/(2^n - 1).

The programs for A297446, the canonical program `A297446.P8708024790327824958` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297446 has offset 1).

The definition of A297446 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297446.P8708024790327824958

`A060692(n+1)-1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A297446

/-- `A060692(n+1)-1` -/
def P8708024790327824958.Spec : Prop :=
  ∀ n, P8708024790327824958.a n = A297446 (n + 1)

theorem P8708024790327824958.correct : P8708024790327824958.Spec := by
  intro n
  simp only [A297446, Nat.add_sub_cancel]

end A297446

/-! ## A297446.P12391141031216865245

`A002379(n+1)+A002380(n+1)-1`
-/

namespace A297446.P12391141031216865245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1) + (A002380 (n + 1) - 1)

end

end A297446.P12391141031216865245

namespace A297446

/-- `A002379(n+1)+A002380(n+1)-1` -/
def P12391141031216865245.Spec : Prop :=
  ∀ n, P12391141031216865245.a n = A297446 (n + 1)

theorem P12391141031216865245.correct : P12391141031216865245.Spec := by
  intro n
  simp only [A297446, Nat.add_sub_cancel, A297446.P12391141031216865245.a, A297446.P8708024790327824958.a, A002379, A002379.P9705169431772742673.a, A002380, A002380.P11275883330084259764.a, A060692, A060692.P7779810104552752769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297446

/-! ## A297446.P11199230290919149044

`A092673(A045429(n+1))+A060692(n+1)`
-/

namespace A297446.P11199230290919149044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A045429 (n + 1)).toNat + A060692 (n + 1)

end

end A297446.P11199230290919149044

namespace A297446

/-- `A092673(A045429(n+1))+A060692(n+1)` -/
def P11199230290919149044.Spec : Prop :=
  ∀ n, P11199230290919149044.a n = A297446 (n + 1)

end A297446

/-! ## A297446.P8508841712816757325

`A305807(A249505(n+1))+A060692(n+1)`
-/

namespace A297446.P8508841712816757325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305807 (A249505 (n + 1)).toNat + A060692 (n + 1)

end

end A297446.P8508841712816757325

namespace A297446

/-- `A305807(A249505(n+1))+A060692(n+1)` -/
def P8508841712816757325.Spec : Prop :=
  ∀ n, P8508841712816757325.a n = A297446 (n + 1)

end A297446

/-! ## A297446.P17103726525934766340

`A002380(n+1)+A002804(n+1)-A000225(n+1)`
-/

namespace A297446.P17103726525934766340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (n + 1) + (A002804 (n + 1) - A000225 (n + 1))

end

end A297446.P17103726525934766340

namespace A297446

/-- `A002380(n+1)+A002804(n+1)-A000225(n+1)` -/
def P17103726525934766340.Spec : Prop :=
  ∀ n, P17103726525934766340.a n = A297446 (n + 1)

end A297446

/-! ## A297446.P11691112314765287646

`A092673(A092738(n+1))+A060692(n+1)`
-/

namespace A297446.P11691112314765287646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A092738 (n + 1)).toNat + A060692 (n + 1)

end

end A297446.P11691112314765287646

namespace A297446

/-- `A092673(A092738(n+1))+A060692(n+1)` -/
def P11691112314765287646.Spec : Prop :=
  ∀ n, P11691112314765287646.a n = A297446 (n + 1)

end A297446

/-! ## A297446.P11169365007857753815

`A087960(A032925(n+1))+A060692(n+1)`
-/

namespace A297446.P11169365007857753815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A032925 (n + 1)).toNat + A060692 (n + 1)

end

end A297446.P11169365007857753815

namespace A297446

/-- `A087960(A032925(n+1))+A060692(n+1)` -/
def P11169365007857753815.Spec : Prop :=
  ∀ n, P11169365007857753815.a n = A297446 (n + 1)

end A297446

/-! ## A297446.P17736905216309124593

`A092673(A090417(n+1))+A060692(n+1)`
-/

namespace A297446.P17736905216309124593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A090417 (n + 1)).toNat + A060692 (n + 1)

end

end A297446.P17736905216309124593

namespace A297446

/-- `A092673(A090417(n+1))+A060692(n+1)` -/
def P17736905216309124593.Spec : Prop :=
  ∀ n, P17736905216309124593.a n = A297446 (n + 1)

end A297446

/-!
# A297451: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1's.

The programs for A297451, there is no canonical definition to state claims against.
-/

/-! ## A297451.P15994198816595544117

`A297457(∑[4*n]+1)`
-/

namespace A297451.P15994198816595544117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297451.P15994198816595544117

/-! ## A297451.P4641979350430201963

`record[A003982(n)*A297457(n+1)]`
-/

namespace A297451.P4641979350430201963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297451.P4641979350430201963

/-! ## A297451.P4231484874124898932

`record[gcd(A037012(n), A297457(n+1))]`
-/

namespace A297451.P4231484874124898932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A297457 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297451.P4231484874124898932

/-! ## A297451.P3171563941821393384

`gcd(A000038(n), A297457(A001844(n)))`
-/

namespace A297451.P3171563941821393384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297457 (A001844 n).toNat)

end

end A297451.P3171563941821393384

/-! ## A297451.P14977914247973653571

`lcm(A054977(n), A297457(A001844(n)))`
-/

namespace A297451.P14977914247973653571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A297457 (A001844 n).toNat)

end

end A297451.P14977914247973653571

/-!
# A297452: Number of n X 3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297452, the canonical program `A297452.P6433362961902380830` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297452 has offset 1).

The definition of A297452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297452.P6433362961902380830

`ogf((5-18x^2-15x^3+3x^4+5x^5+12x^6)/(1-5x+3x^2-4x^3+25x^4-10x^5+7x^6-12x^7))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297452

/-- `ogf((5-18x^2-15x^3+3x^4+5x^5+12x^6)/(1-5x+3x^2-4x^3+25x^4-10x^5+7x^6-12x^7))` -/
def P6433362961902380830.Spec : Prop :=
  ∀ n, P6433362961902380830.a n = A297452 (n + 1)

theorem P6433362961902380830.correct : P6433362961902380830.Spec := by
  intro n
  simp only [A297452, Nat.add_sub_cancel]

end A297452

/-! ## A297452.P8028227911052543101

`A297457(∑[n+3]+1)`
-/

namespace A297452.P8028227911052543101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297452.P8028227911052543101

namespace A297452

/-- `A297457(∑[n+3]+1)` -/
def P8028227911052543101.Spec : Prop :=
  ∀ n, P8028227911052543101.a n = A297452 (n + 1)

end A297452

/-! ## A297452.P3278324745574947166

`A297457(A052905(n)+3)+A000035(2*n)`
-/

namespace A297452.P3278324745574947166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A052905 n + 3).toNat + A000035 (2 * n)

end

end A297452.P3278324745574947166

namespace A297452

/-- `A297457(A052905(n)+3)+A000035(2*n)` -/
def P3278324745574947166.Spec : Prop :=
  ∀ n, P3278324745574947166.a n = A297452 (n + 1)

end A297452

/-! ## A297452.P11672548807436684664

`A297457(A052905(n)+3)+A007814(2*n+1)`
-/

namespace A297452.P11672548807436684664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A052905 n + 3).toNat + A007814 (2 * n + 1)

end

end A297452.P11672548807436684664

namespace A297452

/-- `A297457(A052905(n)+3)+A007814(2*n+1)` -/
def P11672548807436684664.Spec : Prop :=
  ∀ n, P11672548807436684664.a n = A297452 (n + 1)

end A297452

/-! ## A297452.P14865997736641078727

`A297457(A052905(n)+3)%A000041(12*n+7)`
-/

namespace A297452.P14865997736641078727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297457 (A052905 n + 3).toNat) (A000041 (12 * n + 7))

end

end A297452.P14865997736641078727

namespace A297452

/-- `A297457(A052905(n)+3)%A000041(12*n+7)` -/
def P14865997736641078727.Spec : Prop :=
  ∀ n, P14865997736641078727.a n = A297452 (n + 1)

end A297452

/-!
# A297453: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297453, there is no canonical definition to state claims against.
-/

/-! ## A297453.P11830402229982975688

`A297457(A141214(n+1))`
-/

namespace A297453.P11830402229982975688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A141214 (n + 1)).toNat

end

end A297453.P11830402229982975688

/-! ## A297453.P1278711024862373138

`A297457(A055998(n+2))`
-/

namespace A297453.P1278711024862373138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A055998 (n + 2)).toNat

end

end A297453.P1278711024862373138

/-! ## A297453.P11118708683275925213

`A297457(A155212(n)+5)`
-/

namespace A297453.P11118708683275925213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A155212 n + 5).toNat

end

end A297453.P11118708683275925213

/-! ## A297453.P3129051281845344637

`A297457(A056000(n)+7)`
-/

namespace A297453.P3129051281845344637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A056000 n + 7).toNat

end

end A297453.P3129051281845344637

/-! ## A297453.P13175127680583673225

`A297457(Δ[A006416(n+2)])`
-/

namespace A297453.P13175127680583673225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (f1 (n + 1) - f1 n).toNat

end

end A297453.P13175127680583673225

/-!
# A297454: Number of n X 5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1's.

The programs for A297454, there is no canonical definition to state claims against.
-/

/-! ## A297454.P6742108635543877078

`A297457(Δ[A264443(n)])`
-/

namespace A297454.P6742108635543877078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (f1 (n + 1) - f1 n).toNat

end

end A297454.P6742108635543877078

/-! ## A297454.P13466272383139374056

`A297457(A046691(n+3))`
-/

namespace A297454.P13466272383139374056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A046691 (n + 3)).toNat

end

end A297454.P13466272383139374056

/-! ## A297454.P1965398710202367824

`A297457(eq[4, A193592(n)])`
-/

namespace A297454.P1965398710202367824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297454.P1965398710202367824

/-! ## A297454.P13818632479747157190

`A297457(eq[8, A166065(n)])`
-/

namespace A297454.P13818632479747157190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297454.P13818632479747157190

/-! ## A297454.P17559900187061999310

`A297457(Δ[A023545(n+1)])`
-/

namespace A297454.P17559900187061999310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (f1 (n + 1) - f1 n).toNat

end

end A297454.P17559900187061999310

/-!
# A297455: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297455, there is no canonical definition to state claims against.
-/

/-! ## A297455.P5022434930570424888

`A297457(A056119(n)+16)`
-/

namespace A297455.P5022434930570424888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A056119 n + 16).toNat

end

end A297455.P5022434930570424888

/-! ## A297455.P15973890948907036086

`A297457(eq[3, A219347(n)])`
-/

namespace A297455.P15973890948907036086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297455.P15973890948907036086

/-! ## A297455.P11037829224272880133

`A297457(eq[5, A193592(n)])`
-/

namespace A297455.P11037829224272880133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297455.P11037829224272880133

/-! ## A297455.P15084902826027777650

`A297457(eq[16, A166065(n)])`
-/

namespace A297455.P15084902826027777650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297455.P15084902826027777650

/-! ## A297455.P13093579594697179804

`A297457(A055998(n+4)-2)`
-/

namespace A297455.P13093579594697179804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A055998 (n + 4) - 2).toNat

end

end A297455.P13093579594697179804

/-!
# A297456: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297456, there is no canonical definition to state claims against.
-/

/-! ## A297456.P7344649697718982748

`A297457(eq[4, A219347(n)])`
-/

namespace A297456.P7344649697718982748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297456.P7344649697718982748

/-! ## A297456.P1892387106266551516

`A297457(eq[6, A193592(n)])`
-/

namespace A297456.P1892387106266551516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297456.P1892387106266551516

/-! ## A297456.P16212540862273245511

`A297457(A052905(n+4)-1)`
-/

namespace A297456.P16212540862273245511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A052905 (n + 4) - 1).toNat

end

end A297456.P16212540862273245511

/-! ## A297456.P13248444783343361824

`A297457(eq[10, A185782(n+1)])`
-/

namespace A297456.P13248444783343361824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297456.P13248444783343361824

/-! ## A297456.P12807004374032156187

`A297457(A055998(n+4)+n+4)`
-/

namespace A297456.P12807004374032156187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A055998 (n + 4) + (n + 4 : ℤ)).toNat

end

end A297456.P12807004374032156187

/-!
# A297458: Number of 2 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297458, the canonical program `A297458.P8050440976979575061` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297458 has offset 1).

The definition of A297458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297458.P12419471383078471179

`ogf((4+4x+5x^2+4x^3)/(1-x-3x^2-x^3-4x^4))`
-/

namespace A297458.P12419471383078471179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 5, 4] [1, -1, -3, -1, -4] n

end

end A297458.P12419471383078471179

namespace A297458

/-- `ogf((4+4x+5x^2+4x^3)/(1-x-3x^2-x^3-4x^4))` -/
def P12419471383078471179.Spec : Prop :=
  ∀ n, P12419471383078471179.a n = A297458 (n + 1)

end A297458

/-! ## A297458.P8050440976979575061

`a(n-1)+3*a(n-2)+a(n-3)+4*a(n-4)` with `a(0)=4, a(1)=8, a(2)=25, a(3)=57`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297458

/-- `a(n-1)+3*a(n-2)+a(n-3)+4*a(n-4)` -/
def P8050440976979575061.Spec : Prop :=
  ∀ n, (P8050440976979575061.a n : ℤ) = A297458 (n + 1)

theorem P8050440976979575061.correct : P8050440976979575061.Spec := by
  intro n
  simp only [A297458, Nat.add_sub_cancel]

end A297458

/-! ## A297458.P2433568364715824139

`A297457(∑[n+1]+2)`
-/

namespace A297458.P2433568364715824139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297458.P2433568364715824139

namespace A297458

/-- `A297457(∑[n+1]+2)` -/
def P2433568364715824139.Spec : Prop :=
  ∀ n, P2433568364715824139.a n = A297458 (n + 1)

end A297458

/-! ## A297458.P819915326301071175

`A297457(A133263(n+1))%A159038(n+1)`
-/

namespace A297458.P819915326301071175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297457 (A133263 (n + 1)).toNat) (A159038 (n + 1))

end

end A297458.P819915326301071175

namespace A297458

/-- `A297457(A133263(n+1))%A159038(n+1)` -/
def P819915326301071175.Spec : Prop :=
  ∀ n, P819915326301071175.a n = A297458 (n + 1)

end A297458

/-! ## A297458.P9986706575209478812

`A001222(A107808(n+1))*A297457(A133263(n+1))`
-/

namespace A297458.P9986706575209478812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A107808 (n + 1)).toNat * A297457 (A133263 (n + 1)).toNat

end

end A297458.P9986706575209478812

namespace A297458

/-- `A001222(A107808(n+1))*A297457(A133263(n+1))` -/
def P9986706575209478812.Spec : Prop :=
  ∀ n, P9986706575209478812.a n = A297458 (n + 1)

end A297458

/-!
# A297459: Number of 3 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297459, the canonical program `A297459.P468508873181002684` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297459 has offset 1).

The definition of A297459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297459.P468508873181002684

`ogf((8-5x+3x^2-11x^3-11x^4+8x^5+2x^6+2x^7)/(1-3x-4x^2+7x^3-8x^4+19x^5-8x^6-2x^8))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297459

/-- `ogf((8-5x+3x^2-11x^3-11x^4+8x^5+2x^6+2x^7)/(1-3x-4x^2+7x^3-8x^4+19x^5-8x^6-2x^8))` -/
def P468508873181002684.Spec : Prop :=
  ∀ n, P468508873181002684.a n = A297459 (n + 1)

theorem P468508873181002684.correct : P468508873181002684.Spec := by
  intro n
  simp only [A297459, Nat.add_sub_cancel]

end A297459

/-! ## A297459.P6647723896415550140

`A297457(∑[n+2]+4)`
-/

namespace A297459.P6647723896415550140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297459.P6647723896415550140

namespace A297459

/-- `A297457(∑[n+2]+4)` -/
def P6647723896415550140.Spec : Prop :=
  ∀ n, P6647723896415550140.a n = A297459 (n + 1)

end A297459

/-! ## A297459.P15224841958170593087

`A297457(A055998(n)+6)%(2*5^(n+2))`
-/

namespace A297459.P15224841958170593087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297457 (A055998 n + 6).toNat) (2 * 5 ^ (n + 2) : ℤ)

end

end A297459.P15224841958170593087

namespace A297459

/-- `A297457(A055998(n)+6)%(2*5^(n+2))` -/
def P15224841958170593087.Spec : Prop :=
  ∀ n, P15224841958170593087.a n = A297459 (n + 1)

end A297459

/-! ## A297459.P412002083324099991

`or(A181405(n+1), A297457(A167614(n+1)))`
-/

namespace A297459.P412002083324099991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181405 (n + 1)) (A297457 (A167614 (n + 1)).toNat)

end

end A297459.P412002083324099991

namespace A297459

/-- `or(A181405(n+1), A297457(A167614(n+1)))` -/
def P412002083324099991.Spec : Prop :=
  ∀ n, P412002083324099991.a n = A297459 (n + 1)

end A297459

/-! ## A297459.P12091755096176838371

`A000034(2*n)*A297457(A167499(n)+n)`
-/

namespace A297459.P12091755096176838371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A297457 (A167499 n + (n : ℤ)).toNat

end

end A297459.P12091755096176838371

namespace A297459

/-- `A000034(2*n)*A297457(A167499(n)+n)` -/
def P12091755096176838371.Spec : Prop :=
  ∀ n, P12091755096176838371.a n = A297459 (n + 1)

end A297459

/-!
# A297460: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297460, there is no canonical definition to state claims against.
-/

/-! ## A297460.P18388268434355553562

`A297457(A141214(n)+7)`
-/

namespace A297460.P18388268434355553562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A141214 n + 7).toNat

end

end A297460.P18388268434355553562

/-! ## A297460.P8513140414742373438

`A297457(A052905(n)+9)`
-/

namespace A297460.P8513140414742373438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A052905 n + 9).toNat

end

end A297460.P8513140414742373438

/-! ## A297460.P18348202353458327809

`A297457(A055999(n)+10)`
-/

namespace A297460.P18348202353458327809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A055999 n + 10).toNat

end

end A297460.P18348202353458327809

/-! ## A297460.P8122490582035968021

`A297457(A167614(n+2)+1)`
-/

namespace A297460.P8122490582035968021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A167614 (n + 2) + 1).toNat

end

end A297460.P8122490582035968021

/-! ## A297460.P11644728805953458881

`A297457(Δ[A264443(n)-n²])`
-/

namespace A297460.P11644728805953458881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (f1 (n + 1) - f1 n).toNat

end

end A297460.P11644728805953458881

/-!
# A297461: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297461, there is no canonical definition to state claims against.
-/

/-! ## A297461.P5830870064995209424

`A297457(A167499(n+3))`
-/

namespace A297461.P5830870064995209424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A167499 (n + 3)).toNat

end

end A297461.P5830870064995209424

/-! ## A297461.P17805497855170342243

`A297457(A155212(n)+13)`
-/

namespace A297461.P17805497855170342243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A155212 n + 13).toNat

end

end A297461.P17805497855170342243

/-! ## A297461.P8612113476322752391

`A297457(A056000(n)+15)`
-/

namespace A297461.P8612113476322752391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A056000 n + 15).toNat

end

end A297461.P8612113476322752391

/-! ## A297461.P10290913044772676680

`A297457(eq[7, A066657(n)])`
-/

namespace A297461.P10290913044772676680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297461.P10290913044772676680

/-! ## A297461.P8532276581055763763

`A297457(eq[6, A131818(n+1)])`
-/

namespace A297461.P8532276581055763763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297461.P8532276581055763763

/-!
# A297462: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297462, there is no canonical definition to state claims against.
-/

/-! ## A297462.P12200892170186379344

`A297457(A056115(n)+21)`
-/

namespace A297462.P12200892170186379344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A056115 n + 21).toNat

end

end A297462.P12200892170186379344

/-! ## A297462.P67798212983094147

`A297457(A141214(n+2)+9)`
-/

namespace A297462.P67798212983094147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A141214 (n + 2) + 9).toNat

end

end A297462.P67798212983094147

/-! ## A297462.P17062763539601075836

`A297457(A055998(n+3)+9)`
-/

namespace A297462.P17062763539601075836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A055998 (n + 3) + 9).toNat

end

end A297462.P17062763539601075836

/-! ## A297462.P12224060091700372520

`A297457(A161680(n+6)+6)`
-/

namespace A297462.P12224060091700372520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A161680 (n + 6) + 6).toNat

end

end A297462.P12224060091700372520

/-! ## A297462.P5010395340080380398

`A297457(eq[7, A131818(n+1)])`
-/

namespace A297462.P5010395340080380398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297462.P5010395340080380398

/-!
# A297463: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0 or 2 neighboring 1s.

The programs for A297463, there is no canonical definition to state claims against.
-/

/-! ## A297463.P3245722105382669723

`A297457(eq[11, A066657(n)])`
-/

namespace A297463.P3245722105382669723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297463.P3245722105382669723

/-! ## A297463.P5697434000590766067

`A297457(A167614(n+5)+4)`
-/

namespace A297463.P5697434000590766067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A167614 (n + 5) + 4).toNat

end

end A297463.P5697434000590766067

/-! ## A297463.P11334403560105413541

`A297457(eq[8, A131818(n+1)])`
-/

namespace A297463.P11334403560105413541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297463.P11334403560105413541

/-! ## A297463.P5994027651219424834

`A297457(eq[7, A002260(n+1)]+1)`
-/

namespace A297463.P5994027651219424834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A297463.P5994027651219424834

/-! ## A297463.P11977236880478458114

`A297457(A000124(n+7)-(n+1))`
-/

namespace A297463.P11977236880478458114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A297463.P11977236880478458114

/-!
# A297464: Solution (a(n)) of the system of 4 complementary equations in Comments.

The programs for A297464, the canonical program `A297464.P16337955608978957349` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297464 has offset 0).

The definition of A297464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297464.P16337955608978957349

`floor((10*n+4)/3)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297464

/-- `floor((10*n+4)/3)` -/
def P16337955608978957349.Spec : Prop :=
  ∀ n, P16337955608978957349.a n = A297464 n

theorem P16337955608978957349.correct : P16337955608978957349.Spec := by
  intro n
  simp only [A297464]

end A297464

/-! ## A297464.P11534488758150365926

`record[xor(1, ∑[n²%5])]`
-/

namespace A297464.P11534488758150365926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297464.P11534488758150365926

namespace A297464

/-- `record[xor(1, ∑[n²%5])]` -/
def P11534488758150365926.Spec : Prop :=
  ∀ n, (P11534488758150365926.a n : ℤ) = A297464 n

end A297464

/-! ## A297464.P13436266963700618657

`a(n-3)+10` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A297464.P13436266963700618657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  a (n - 3) + 10

end

end A297464.P13436266963700618657

namespace A297464

/-- `a(n-3)+10` -/
def P13436266963700618657.Spec : Prop :=
  ∀ n, (P13436266963700618657.a n : ℤ) = A297464 n

end A297464

/-! ## A297464.P7078733343099325582

`∑[(n%3)!]+2*n`
-/

namespace A297464.P7078733343099325582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A297464.P7078733343099325582

namespace A297464

/-- `∑[(n%3)!]+2*n` -/
def P7078733343099325582.Spec : Prop :=
  ∀ n, (P7078733343099325582.a n : ℤ) = A297464 n

end A297464

/-! ## A297464.P13525235163730492375

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A297464.P13525235163730492375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 3] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297464.P13525235163730492375

namespace A297464

/-- `∑[floor(a(n-3))]` -/
def P13525235163730492375.Spec : Prop :=
  ∀ n, (P13525235163730492375.a n : ℤ) = A297464 n

end A297464

/-! ## A297464.P17959585469564234203

`∑[a(n-3)%5]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=3`
-/

namespace A297464.P17959585469564234203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 3] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297464.P17959585469564234203

namespace A297464

/-- `∑[a(n-3)%5]` -/
def P17959585469564234203.Spec : Prop :=
  ∀ n, (P17959585469564234203.a n : ℤ) = A297464 n

end A297464

/-! ## A297464.P11491747763740432194

`∑[4-(n+1)²%3]-2`
-/

namespace A297464.P11491747763740432194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (((n + 1) ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A297464.P11491747763740432194

namespace A297464

/-- `∑[4-(n+1)²%3]-2` -/
def P11491747763740432194.Spec : Prop :=
  ∀ n, P11491747763740432194.a n = A297464 n

end A297464

/-! ## A297464.P3777616792599989913

`∑[∑[ogf((1+3x+4x^2+2x^3)/(1+x+x^2))]]`
-/

namespace A297464.P3777616792599989913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, 2] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297464.P3777616792599989913

namespace A297464

/-- `∑[∑[ogf((1+3x+4x^2+2x^3)/(1+x+x^2))]]` -/
def P3777616792599989913.Spec : Prop :=
  ∀ n, P3777616792599989913.a n = A297464 n

end A297464

/-! ## A297464.P2925730108636718820

`ogf((1+3x+4x^2+2x^3)/(1-x-x^3+x^4))`
-/

namespace A297464.P2925730108636718820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, 2] [1, -1, 0, -1, 1] n

end

end A297464.P2925730108636718820

namespace A297464

/-- `ogf((1+3x+4x^2+2x^3)/(1-x-x^3+x^4))` -/
def P2925730108636718820.Spec : Prop :=
  ∀ n, P2925730108636718820.a n = A297464 n

end A297464

/-! ## A297464.P6279833167743212730

`∑[(gcd(3, n+1)+5)/2]-2`
-/

namespace A297464.P6279833167743212730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (n + 1) + 5 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A297464.P6279833167743212730

namespace A297464

/-- `∑[(gcd(3, n+1)+5)/2]-2` -/
def P6279833167743212730.Spec : Prop :=
  ∀ n, P6279833167743212730.a n = (A297464 n : ℚ)

end A297464

/-! ## A297464.P2962854296701690425

`4*n-floor(a(n-1)/5)` with `a(0)=1`
-/

namespace A297464.P2962854296701690425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n : ℤ) - ⌊(a (n - 1) : ℚ) / 5⌋

end

end A297464.P2962854296701690425

namespace A297464

/-- `4*n-floor(a(n-1)/5)` -/
def P2962854296701690425.Spec : Prop :=
  ∀ n, P2962854296701690425.a n = A297464 n

end A297464

/-! ## A297464.P17323351286873161807

`comp[2*or(1, n)]+2*n+1`
-/

namespace A297464.P17323351286873161807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (2 * n + 1)

end

end A297464.P17323351286873161807

namespace A297464

/-- `comp[2*or(1, n)]+2*n+1` -/
def P17323351286873161807.Spec : Prop :=
  ∀ n, (P17323351286873161807.a n : ℤ) = A297464 n

end A297464

/-! ## A297464.P6668665137329190967

`lt[val(n+2, 2), 2]+2*n+1`
-/

namespace A297464.P6668665137329190967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + (2 * n + 1)

end

end A297464.P6668665137329190967

namespace A297464

/-- `lt[val(n+2, 2), 2]+2*n+1` -/
def P6668665137329190967.Spec : Prop :=
  ∀ n, (P6668665137329190967.a n : ℤ) = A297464 n

end A297464

/-! ## A297464.P17775076701265951797

`eq[n, gcd(n, ∑[n]²)]+2*n+1`
-/

namespace A297464.P17775076701265951797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n ((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (2 * n + 1)

end

end A297464.P17775076701265951797

namespace A297464

/-- `eq[n, gcd(n, ∑[n]²)]+2*n+1` -/
def P17775076701265951797.Spec : Prop :=
  ∀ n, (P17775076701265951797.a n : ℤ) = A297464 n

end A297464

/-! ## A297464.P3876559552828496232

`∑[∑[a(n-3)^3]]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=-1, a(4)=0`
-/

namespace A297464.P3876559552828496232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, -1, 0] fun n f2 =>
  f2 (n - 3) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297464.P3876559552828496232

namespace A297464

/-- `∑[∑[a(n-3)^3]]` -/
def P3876559552828496232.Spec : Prop :=
  ∀ n, P3876559552828496232.a n = A297464 n

end A297464

/-! ## A297464.P8654044945522313999

`ceil(lcm(2, 2*n+1)/3+2*n)`
-/

namespace A297464.P8654044945522313999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (2 * n + 1) : ℚ) / 3 + (2 * n : ℚ)⌉

end

end A297464.P8654044945522313999

namespace A297464

/-- `ceil(lcm(2, 2*n+1)/3+2*n)` -/
def P8654044945522313999.Spec : Prop :=
  ∀ n, P8654044945522313999.a n = A297464 n

end A297464

/-! ## A297464.P10139378760078820871

`eq[1, val(n+2, 2)!]+2*n+1`
-/

namespace A297464.P10139378760078820871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (2 * n + 1)

end

end A297464.P10139378760078820871

namespace A297464

/-- `eq[1, val(n+2, 2)!]+2*n+1` -/
def P10139378760078820871.Spec : Prop :=
  ∀ n, (P10139378760078820871.a n : ℤ) = A297464 n

end A297464

/-! ## A297464.P15956361946292337348

`record[n+1-val(n+2, 4)]+2*n`
-/

namespace A297464.P15956361946292337348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.valuation (n + 2) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n : ℤ)

end

end A297464.P15956361946292337348

namespace A297464

/-- `record[n+1-val(n+2, 4)]+2*n` -/
def P15956361946292337348.Spec : Prop :=
  ∀ n, P15956361946292337348.a n = A297464 n

end A297464

/-! ## A297464.P12531159804334002739

`record[and(n+2, n-1)/2]+2*n`
-/

namespace A297464.P12531159804334002739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n + 2 : ℤ) ((n : ℤ) - 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n : ℚ)

end

end A297464.P12531159804334002739

namespace A297464

/-- `record[and(n+2, n-1)/2]+2*n` -/
def P12531159804334002739.Spec : Prop :=
  ∀ n, P12531159804334002739.a n = (A297464 n : ℚ)

end A297464

/-! ## A297464.P6844731304916066279

`7-(a(n-1)%2-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A297464.P6844731304916066279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  7 - (Int.tmod (a (n - 1)) 2 - a (n - 2))

end

end A297464.P6844731304916066279

namespace A297464

/-- `7-(a(n-1)%2-a(n-2))` -/
def P6844731304916066279.Spec : Prop :=
  ∀ n, P6844731304916066279.a n = A297464 n

end A297464

/-!
# A297465: Solution (b(n)) of the system of 4 complementary equations in Comments.

The programs for A297465, there is no canonical definition to state claims against.
-/

/-! ## A297465.P12515423381345387590

`round(A265389(n+1)/3)`
-/

namespace A297465.P12515423381345387590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A265389 (n + 1) : ℚ) / 3)

end

end A297465.P12515423381345387590

/-! ## A297465.P2093355944775131915

`A265389(n+1)-(A297466(n)+A297464(n))`
-/

namespace A297465.P2093355944775131915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265389 (n + 1) - (A297466 n + A297464 n)

end

end A297465.P2093355944775131915

/-! ## A297465.P344662384494299064

`A189667(A265389(n+1))`
-/

namespace A297465.P344662384494299064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189667 (A265389 (n + 1)).toNat

end

end A297465.P344662384494299064

/-! ## A297465.P13095647095071941142

`A002264(A265389(n+1)+1)`
-/

namespace A297465.P13095647095071941142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A265389 (n + 1) + 1).toNat

end

end A297465.P13095647095071941142

/-! ## A297465.P15734347385284122351

`A008620(A265389(n+1)-2)`
-/

namespace A297465.P15734347385284122351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A265389 (n + 1) - 2).toNat

end

end A297465.P15734347385284122351

/-! ## A297465.P686711966943155693

`A189631(A265389(n+1)+A116178(n))`
-/

namespace A297465.P686711966943155693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189631 (A265389 (n + 1) + A116178 n).toNat

end

end A297465.P686711966943155693

/-! ## A297465.P6735131601422718244

`A189631(A265389(n+1)+A080846(Δ[n²]))`
-/

namespace A297465.P6735131601422718244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189631 (A265389 (n + 1) + A080846 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A297465.P6735131601422718244

/-! ## A297465.P17274047682843750114

`A189631(A265389(n+1)+A137893(4*n+2))`
-/

namespace A297465.P17274047682843750114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189631 (A265389 (n + 1) + A137893 (4 * n + 2)).toNat

end

end A297465.P17274047682843750114

/-! ## A297465.P15628127969530942858

`A189631(A265389(n+1)+A204697(2*n+1)-1)`
-/

namespace A297465.P15628127969530942858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189631 (A265389 (n + 1) + (A204697 (2 * n + 1) - 1)).toNat

end

end A297465.P15628127969530942858

/-! ## A297465.P1877850462932459482

`A189631(A265389(n+1)+log2(A065330(2*n+1)%3))`
-/

namespace A297465.P1877850462932459482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189631 (SequenceMachineLib.roundAway ((A265389 (n + 1) : ℝ) + Real.logb 2 (Int.tmod (A065330 (2 * n + 1)) 3 : ℝ))).toNat

end

end A297465.P1877850462932459482

/-! ## A297465.P11924126799192591623

`A103221(2*A265389(n+1)-1)`
-/

namespace A297465.P11924126799192591623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * A265389 (n + 1) - 1).toNat

end

end A297465.P11924126799192591623

/-! ## A297465.P5037631073459184917

`A103221(A265389(n+1)+A265389(n+1)-1)`
-/

namespace A297465.P5037631073459184917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A265389 (n + 1) + (A265389 (n + 1) - 1)).toNat

end

end A297465.P5037631073459184917

/-! ## A297465.P12895352688566234706

`A004396(2*A265389(n+1))-A265389(n+1)`
-/

namespace A297465.P12895352688566234706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A265389 (n + 1)).toNat - A265389 (n + 1)

end

end A297465.P12895352688566234706

/-!
# A297466: Solution (c(n)) of the system of 4 complementary equations in Comments.

The programs for A297466, there is no canonical definition to state claims against.
-/

/-! ## A297466.P192591903615521220

`ceil(A265389(n+1)/3)+1`
-/

namespace A297466.P192591903615521220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265389 (n + 1) : ℚ) / 3⌉ + 1

end

end A297466.P192591903615521220

/-! ## A297466.P5025044860484303087

`A265389(n+1)-(A297465(n)+A297464(n))`
-/

namespace A297466.P5025044860484303087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265389 (n + 1) - (A297465 n + A297464 n)

end

end A297466.P5025044860484303087

/-! ## A297466.P4715044215522317644

`A008619(A265389(n+1)-2*A032793(n+1))`
-/

namespace A297466.P4715044215522317644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A265389 (n + 1) - 2 * A032793 (n + 1)).toNat

end

end A297466.P4715044215522317644

/-! ## A297466.P14086841616734624562

`A008619(A265389(n+1)-A032793(n+1)-A032793(n+1))`
-/

namespace A297466.P14086841616734624562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A265389 (n + 1) - A032793 (n + 1) - A032793 (n + 1)).toNat

end

end A297466.P14086841616734624562

/-! ## A297466.P16560681327335238352

`A008620(A265389(n+1)+2)`
-/

namespace A297466.P16560681327335238352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A265389 (n + 1) + 2).toNat

end

end A297466.P16560681327335238352

/-! ## A297466.P15407709403744072152

`A002264(A265389(n+1)+2)+1`
-/

namespace A297466.P15407709403744072152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A265389 (n + 1) + 2).toNat + 1

end

end A297466.P15407709403744072152

/-! ## A297466.P1957724305821934491

`A080513(A004396(A265389(n+1)))`
-/

namespace A297466.P1957724305821934491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A004396 (A265389 (n + 1)).toNat).toNat

end

end A297466.P1957724305821934491

/-! ## A297466.P2928160750432624129

`A008619(A265389(n+1))-A032793(n+1)`
-/

namespace A297466.P2928160750432624129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A265389 (n + 1)).toNat - A032793 (n + 1)

end

end A297466.P2928160750432624129

/-! ## A297466.P14127760557404352615

`A265389(n+1)-A004396(A265389(n+1)-2)`
-/

namespace A297466.P14127760557404352615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265389 (n + 1) - A004396 (A265389 (n + 1) - 2).toNat

end

end A297466.P14127760557404352615

/-! ## A297466.P3393969509167079861

`A002264(A265389(n+1)+5)`
-/

namespace A297466.P3393969509167079861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A265389 (n + 1) + 5).toNat

end

end A297466.P3393969509167079861

/-! ## A297466.P15331886702330945757

`A103221(2*(A265389(n+1)+2))`
-/

namespace A297466.P15331886702330945757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * (A265389 (n + 1) + 2)).toNat

end

end A297466.P15331886702330945757

/-! ## A297466.P1522752110945435556

`A103221(A004273(A265389(n+1)+4))`
-/

namespace A297466.P1522752110945435556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A004273 (A265389 (n + 1) + 4).toNat).toNat

end

end A297466.P1522752110945435556

/-!
# A297468: Solution (b(n)) of the system of 2 complementary equations in Comments.

The programs for A297468, there is no canonical definition to state claims against.
-/

/-! ## A297468.P6974531133850408589

`lt[A234960(A319848(n+1)), A242614(n)]`
-/

namespace A297468.P6974531133850408589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234960 (A319848 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297468.P6974531133850408589

/-! ## A297468.P12898115213106835828

`lt[A072994(A230455(n+1)), A007090(n)]`
-/

namespace A297468.P12898115213106835828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (A230455 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297468.P12898115213106835828

/-! ## A297468.P11679143053796654587

`lt[A056239(A055111(n+5)+1), A250120(n)]`
-/

namespace A297468.P11679143053796654587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A055111 (n + 5) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297468.P11679143053796654587

/-! ## A297468.P4081910654327661068

`lt[gcd(n+1, A281300(n+1))², n]`
-/

namespace A297468.P4081910654327661068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A281300 (n + 1)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297468.P4081910654327661068

/-! ## A297468.P17288248636523775134

`lt[A317839(A067049(3*n+2)), A300401(n)]`
-/

namespace A297468.P17288248636523775134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317839 (A067049 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297468.P17288248636523775134

/-! ## A297468.P5332824451819410866

`lt[A103328(A035316(n+1)), A061602(n)]`
-/

namespace A297468.P5332824451819410866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103328 (A035316 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297468.P5332824451819410866

/-! ## A297468.P7513352253688685100

`lt[A113587(n+1), ∑[A050296(2*n+3)]]`
-/

namespace A297468.P7513352253688685100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113587 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297468.P7513352253688685100

/-! ## A297468.P4046840326706567608

`lt[A113587(n+1), ∑[A097508(3*n+4)]]`
-/

namespace A297468.P4046840326706567608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113587 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297468.P4046840326706567608

/-! ## A297468.P10224484593665993061

`lt[A113587(n+1), A001318(A007417(n+1))]`
-/

namespace A297468.P10224484593665993061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A007417 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297468.P10224484593665993061

/-!
# A297469: Solution (bb(n)) of the system of 3 complementary equations in Comments.

The programs for A297469, the canonical program `A297469.P17207541114748779178` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297469 has offset 0).

The definition of A297469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297469.P17207541114748779178

`5*n+A285384(n+1)+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A297469

/-- `5*n+A285384(n+1)+1` -/
def P17207541114748779178.Spec : Prop :=
  ∀ n, P17207541114748779178.a n = A297469 n

theorem P17207541114748779178.correct : P17207541114748779178.Spec := by
  intro n
  simp only [A297469]

end A297469

/-! ## A297469.P8473715542359126010

`A026491(n)+A008486(n)`
-/

namespace A297469.P8473715542359126010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 n + A008486 n

end

end A297469.P8473715542359126010

namespace A297469

/-- `A026491(n)+A008486(n)` -/
def P8473715542359126010.Spec : Prop :=
  ∀ n, P8473715542359126010.a n = A297469 n

end A297469

/-! ## A297469.P1646491776734313734

`A285384(n+1)+A016861(n)`
-/

namespace A297469.P1646491776734313734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1) + A016861 n

end

end A297469.P1646491776734313734

namespace A297469

/-- `A285384(n+1)+A016861(n)` -/
def P1646491776734313734.Spec : Prop :=
  ∀ n, P1646491776734313734.a n = A297469 n

theorem P1646491776734313734.correct : P1646491776734313734.Spec := by
  intro n
  simp only [A297469, Nat.add_sub_cancel, A297469.P1646491776734313734.a, A297469.P17207541114748779178.a, A016861, A016861.P12760207785627616280.a, A285384, A285384.P3630386022562053692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297469

/-! ## A297469.P15627778805544957875

`A016873(n)-A328979(n+1)`
-/

namespace A297469.P15627778805544957875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - A328979 (n + 1)

end

end A297469.P15627778805544957875

namespace A297469

/-- `A016873(n)-A328979(n+1)` -/
def P15627778805544957875.Spec : Prop :=
  ∀ n, P15627778805544957875.a n = A297469 n

end A297469

/-! ## A297469.P10458616063637350567

`A004277(n)+A026491(n)+n`
-/

namespace A297469.P10458616063637350567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A026491 n + (n : ℤ))

end

end A297469.P10458616063637350567

namespace A297469

/-- `A004277(n)+A026491(n)+n` -/
def P10458616063637350567.Spec : Prop :=
  ∀ n, P10458616063637350567.a n = A297469 n

end A297469

/-! ## A297469.P12862188428359776739

`A008574(n)+A026491(n)-n`
-/

namespace A297469.P12862188428359776739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A026491 n - (n : ℤ))

end

end A297469.P12862188428359776739

namespace A297469

/-- `A008574(n)+A026491(n)-n` -/
def P12862188428359776739.Spec : Prop :=
  ∀ n, P12862188428359776739.a n = A297469 n

end A297469

/-! ## A297469.P6946361648499846508

`∑[A249032(n)]-gcd(2, A249032(n))`
-/

namespace A297469.P6946361648499846508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Int.gcd 2 (A249032 n) : ℤ)

end

end A297469.P6946361648499846508

namespace A297469

/-- `∑[A249032(n)]-gcd(2, A249032(n))` -/
def P6946361648499846508.Spec : Prop :=
  ∀ n, P6946361648499846508.a n = A297469 n

end A297469

/-! ## A297469.P2731576375917857348

`A285384(n+1)+A008587(n)+1`
-/

namespace A297469.P2731576375917857348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1) + (A008587 n + 1)

end

end A297469.P2731576375917857348

namespace A297469

/-- `A285384(n+1)+A008587(n)+1` -/
def P2731576375917857348.Spec : Prop :=
  ∀ n, P2731576375917857348.a n = A297469 n

theorem P2731576375917857348.correct : P2731576375917857348.Spec := by
  intro n
  simp only [A297469, Nat.add_sub_cancel, A297469.P2731576375917857348.a, A297469.P17207541114748779178.a, A008587, A008587.P15238079008432610842.a, A285384, A285384.P3630386022562053692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297469

/-! ## A297469.P459179434183043338

`A322585(2*n+1)+A026491(n)+3*n`
-/

namespace A297469.P459179434183043338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (2 * n + 1) + (A026491 n + (3 * n : ℤ))

end

end A297469.P459179434183043338

namespace A297469

/-- `A322585(2*n+1)+A026491(n)+3*n` -/
def P459179434183043338.Spec : Prop :=
  ∀ n, P459179434183043338.a n = A297469 n

end A297469

/-! ## A297469.P268335729806452603

`A026491(A004273(n))+A026491(n)-n`
-/

namespace A297469.P268335729806452603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (A004273 n).toNat + (A026491 n - (n : ℤ))

end

end A297469.P268335729806452603

namespace A297469

/-- `A026491(A004273(n))+A026491(n)-n` -/
def P268335729806452603.Spec : Prop :=
  ∀ n, P268335729806452603.a n = A297469 n

end A297469

/-! ## A297469.P5082439063740992719

`A328984(2*n+1)+and(1, A298468(2*n))`
-/

namespace A297469.P5082439063740992719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328984 (2 * n + 1) + Int.land 1 (A298468 (2 * n))

end

end A297469.P5082439063740992719

namespace A297469

/-- `A328984(2*n+1)+and(1, A298468(2*n))` -/
def P5082439063740992719.Spec : Prop :=
  ∀ n, P5082439063740992719.a n = A297469 n

end A297469

/-! ## A297469.P3600425654999882872

`A266222(2*n+1)+A026491(n)+3*n`
-/

namespace A297469.P3600425654999882872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 (2 * n + 1) + (A026491 n + (3 * n : ℤ))

end

end A297469.P3600425654999882872

namespace A297469

/-- `A266222(2*n+1)+A026491(n)+3*n` -/
def P3600425654999882872.Spec : Prop :=
  ∀ n, P3600425654999882872.a n = A297469 n

end A297469

/-! ## A297469.P8733385215404781632

`A047211(2*n+1)+A284948(2*n+1)-1`
-/

namespace A297469.P8733385215404781632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (2 * n + 1) + (A284948 (2 * n + 1) - 1)

end

end A297469.P8733385215404781632

namespace A297469

/-- `A047211(2*n+1)+A284948(2*n+1)-1` -/
def P8733385215404781632.Spec : Prop :=
  ∀ n, P8733385215404781632.a n = A297469 n

end A297469

/-! ## A297469.P9691466921902719643

`A047219(2*n+1)+1-A285383(2*n+1)`
-/

namespace A297469.P9691466921902719643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (2 * n + 1) + (1 - A285383 (2 * n + 1))

end

end A297469.P9691466921902719643

namespace A297469

/-- `A047219(2*n+1)+1-A285383(2*n+1)` -/
def P9691466921902719643.Spec : Prop :=
  ∀ n, P9691466921902719643.a n = A297469 n

end A297469

/-! ## A297469.P6384600117600299405

`A328190(2*n+1)+A000035(A004277(n))`
-/

namespace A297469.P6384600117600299405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328190 (2 * n + 1) + A000035 (A004277 n).toNat

end

end A297469.P6384600117600299405

namespace A297469

/-- `A328190(2*n+1)+A000035(A004277(n))` -/
def P6384600117600299405.Spec : Prop :=
  ∀ n, P6384600117600299405.a n = A297469 n

end A297469

/-! ## A297469.P7223446030325179021

`A328190(2*n+1)+A216280(2*n+1)*A216280(n+2)`
-/

namespace A297469.P7223446030325179021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328190 (2 * n + 1) + A216280 (2 * n + 1) * A216280 (n + 2)

end

end A297469.P7223446030325179021

namespace A297469

/-- `A328190(2*n+1)+A216280(2*n+1)*A216280(n+2)` -/
def P7223446030325179021.Spec : Prop :=
  ∀ n, P7223446030325179021.a n = A297469 n

end A297469

/-! ## A297469.P16250948450620183674

`A014681(A026491(2*n))+n`
-/

namespace A297469.P16250948450620183674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A026491 (2 * n)).toNat + (n : ℤ)

end

end A297469.P16250948450620183674

namespace A297469

/-- `A014681(A026491(2*n))+n` -/
def P16250948450620183674.Spec : Prop :=
  ∀ n, P16250948450620183674.a n = A297469 n

end A297469

/-! ## A297469.P11725407695093070804

`3*n+2+lt[A162853(2*n), A162853(2*n+1)]`
-/

namespace A297469.P11725407695093070804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162853 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2 + SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297469.P11725407695093070804

namespace A297469

/-- `3*n+2+lt[A162853(2*n), A162853(2*n+1)]` -/
def P11725407695093070804.Spec : Prop :=
  ∀ n, (P11725407695093070804.a n : ℤ) = A297469 n

end A297469

/-! ## A297469.P8820058320003652485

`A080427(A016945(n))-floor(and(n, -n)%3/2)`
-/

namespace A297469.P8820058320003652485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080427 (A016945 n).toNat - ⌊(Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 3 : ℚ) / 2⌋

end

end A297469.P8820058320003652485

namespace A297469

/-- `A080427(A016945(n))-floor(and(n, -n)%3/2)` -/
def P8820058320003652485.Spec : Prop :=
  ∀ n, P8820058320003652485.a n = A297469 n

end A297469

/-!
# A297470: Number of maximal matchings in the n-barbell graph.

The programs for A297470, there is no canonical definition to state claims against.
-/

/-! ## A297470.P1883263070583540008

`or(1, n)²*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A297470.P1883263070583540008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 1 n ^ 2 * a (n - 2)

end

end A297470.P1883263070583540008

/-! ## A297470.P14922701739065681131

`(gcd(n, n%2)+1)*∏[or(1, n)]`
-/

namespace A297470.P14922701739065681131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n % 2) + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A297470.P14922701739065681131

/-! ## A297470.P17556285006099605403

`((n+1)%2+n)²*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A297470.P17556285006099605403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n + 1) % 2 + n) ^ 2 * a (n - 2)

end

end A297470.P17556285006099605403

/-! ## A297470.P5834960045486457809

`(n+1-and(1, n))²*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A297470.P5834960045486457809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n + 1 : ℤ) - (Nat.land 1 n : ℤ)) ^ 2 * a (n - 2)

end

end A297470.P5834960045486457809

/-! ## A297470.P13465860315047976392

`(and(1, n)-n-1)²*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A297470.P13465860315047976392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((Nat.land 1 n : ℤ) - (n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A297470.P13465860315047976392

/-! ## A297470.P7066870207481082409

`∏[A109613(n)]*A141310(n)`
-/

namespace A297470.P7066870207481082409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A141310 n

end

end A297470.P7066870207481082409

/-! ## A297470.P6841538139253558913

`record[A001497(n)*A102625(n)]`
-/

namespace A297470.P6841538139253558913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A102625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297470.P6841538139253558913

/-! ## A297470.P7717260714060152665

`record[A001497(n)*A126063(n)]`
-/

namespace A297470.P7717260714060152665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A126063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297470.P7717260714060152665

/-! ## A297470.P13038341499648397055

`A055634(n+1)²+A123023(n+1)²`
-/

namespace A297470.P13038341499648397055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 (n + 1) ^ 2 + A123023 (n + 1) ^ 2

end

end A297470.P13038341499648397055

/-!
# A297471: Number of maximal matchings in the n X n bishop graph.

The programs for A297471, there is no canonical definition to state claims against.
-/

/-! ## A297471.P18109955806209241122

`A054918(n+1)*A109950(A199247(n))`
-/

namespace A297471.P18109955806209241122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054918 (n + 1) * A109950 (A199247 n).toNat

end

end A297471.P18109955806209241122

/-!
# A297472: Number of maximal matchings in the n X n black bishop graph.

The programs for A297472, there is no canonical definition to state claims against.
-/

/-! ## A297472.P10606309244633242884

`A291083(A045723(n))`
-/

namespace A297472.P10606309244633242884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291083 (A045723 n).toNat

end

end A297472.P10606309244633242884

/-!
# A297473: For any number n > 0, let f(n) be the polynomial of a single indeterminate x where the coefficient of x^e is the prime(1+e)-adic valuation of n (where prime(k) denotes the k-th prime); f establishes a bijection between the positive numbers and the polynomials of a single indeterminate x with nonnegative integer coefficients; let g be the inverse of f; a(n) = g(f(n)^2).

The programs for A297473, there is no canonical definition to state claims against.
-/

/-! ## A297473.P7589031206328933714

`A297845(∑[4*n]+1)`
-/

namespace A297473.P7589031206328933714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297845 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297473.P7589031206328933714

/-! ## A297473.P5172338461533688227

`and(-1, A297845(A001844(n)))`
-/

namespace A297473.P5172338461533688227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A297845 (A001844 n).toNat)

end

end A297473.P5172338461533688227

/-! ## A297473.P8866513817940987726

`gcd(A000038(n), A297845(A001844(n)))`
-/

namespace A297473.P8866513817940987726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297845 (A001844 n).toNat)

end

end A297473.P8866513817940987726

/-! ## A297473.P10842869631368798696

`or(A055641(n), A297845(A001844(n)))`
-/

namespace A297473.P10842869631368798696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A297845 (A001844 n).toNat)

end

end A297473.P10842869631368798696

/-! ## A297473.P5524574902630921170

`A007318(∑[n])*A297845(A001844(n))`
-/

namespace A297473.P5524574902630921170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A297845 (A001844 n).toNat

end

end A297473.P5524574902630921170

/-! ## A297473.P5315890639105858182

`A297845(A001844(n))+A000007(n+3)`
-/

namespace A297473.P5315890639105858182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297845 (A001844 n).toNat + A000007 (n + 3)

end

end A297473.P5315890639105858182

/-! ## A297473.P1519946268741982505

`A297845(A001844(n))%A224988(n+1)`
-/

namespace A297473.P1519946268741982505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297845 (A001844 n).toNat) (A224988 (n + 1))

end

end A297473.P1519946268741982505

/-! ## A297473.P12939532234933817254

`A297845(A001844(n))/A007318(C(n, 2))`
-/

namespace A297473.P12939532234933817254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297845 (A001844 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A297473.P12939532234933817254

/-! ## A297473.P10592295881242345872

`A297845(A001844(n))^A007318(C(2, n))`
-/

namespace A297473.P10592295881242345872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297845 (A001844 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A297473.P10592295881242345872

/-!
# A297474: Number of maximal matchings in the n-cocktail party graph.

The programs for A297474, the canonical program `A297474.P6799261532848148102` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297474 has offset 1).

The definition of A297474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297474.P6799261532848148102

`A053871(n+1)+(n+1)*A053871(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A297474

/-- `A053871(n+1)+(n+1)*A053871(n)` -/
def P6799261532848148102.Spec : Prop :=
  ∀ n, P6799261532848148102.a n = A297474 (n + 1)

theorem P6799261532848148102.correct : P6799261532848148102.Spec := by
  intro n
  simp only [A297474, Nat.add_sub_cancel]

end A297474

/-! ## A297474.P16475353330422323327

`A165968(n+2)+n*A053871(n)`
-/

namespace A297474.P16475353330422323327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165968 (n + 2) + (n : ℤ) * A053871 n

end

end A297474.P16475353330422323327

namespace A297474

/-- `A165968(n+2)+n*A053871(n)` -/
def P16475353330422323327.Spec : Prop :=
  ∀ n, P16475353330422323327.a n = A297474 (n + 1)

end A297474

/-!
# A297476: Number of maximal matchings in the 2n-crossed prism graph.

The programs for A297476, the canonical program `A297476.P7692629207835975627` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297476 has offset 1).

The definition of A297476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297476.P7692629207835975627

`ogf((5-8x+42x^2+16x^3+40x^4)/(1-5x+4x^2-14x^3-4x^4-8x^5))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A297476

/-- `ogf((5-8x+42x^2+16x^3+40x^4)/(1-5x+4x^2-14x^3-4x^4-8x^5))` -/
def P7692629207835975627.Spec : Prop :=
  ∀ n, P7692629207835975627.a n = A297476 (n + 1)

theorem P7692629207835975627.correct : P7692629207835975627.Spec := by
  intro n
  simp only [A297476, Nat.add_sub_cancel]

end A297476

/-!
# A297485: Number of maximal matchings in the n-triangular grid graph.

The programs for A297485, there is no canonical definition to state claims against.
-/

/-! ## A297485.P168273479675728885

`A291784(A006040(n)+n)`
-/

namespace A297485.P168273479675728885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A006040 n + (n : ℤ)).toNat

end

end A297485.P168273479675728885

/-!
# A297490: Number of maximal matchings in the n X n white bishop graph.

The programs for A297490, there is no canonical definition to state claims against.
-/

/-! ## A297490.P9885935844705279776

`A297471(n+2)/A297472(n+2)`
-/

namespace A297490.P9885935844705279776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297471 (n + 2) : ℚ) / (A297472 (n + 2) : ℚ)

end

end A297490.P9885935844705279776

/-!
# A297491: a(n) = (1/2) * Sum_{|k|<=2*sqrt(p)} k^4*H(4*p-k^2) where H() is the Hurwitz class number and p is n-th prime.

The programs for A297491, the canonical program `A297491.P5911488717567930429` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297491 has offset 1).

The definition of A297491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297491.P5911488717567930429

`A172190(n+1)-(A001748(n+1)+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A297491

/-- `A172190(n+1)-(A001748(n+1)+1)` -/
def P5911488717567930429.Spec : Prop :=
  ∀ n, P5911488717567930429.a n = A297491 (n + 1)

theorem P5911488717567930429.correct : P5911488717567930429.Spec := by
  intro n
  simp only [A297491, Nat.add_sub_cancel]

end A297491

/-! ## A297491.P14599574335190537000

`2*A127917(n+1)-A008864(n+1)`
-/

namespace A297491.P14599574335190537000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127917 (n + 1) - A008864 (n + 1)

end

end A297491.P14599574335190537000

namespace A297491

/-- `2*A127917(n+1)-A008864(n+1)` -/
def P14599574335190537000.Spec : Prop :=
  ∀ n, P14599574335190537000.a n = A297491 (n + 1)

theorem P14599574335190537000.correct : P14599574335190537000.Spec := by
  intro n
  simp only [A297491, Nat.add_sub_cancel, A297491.P14599574335190537000.a, A297491.P5911488717567930429.a, A001748, A001748.P16019639290970068825.a, A008864, A008864.P9177617808325052279.a, A127917, A127917.P3075272387178552324.a, A172190, A172190.P9019848423872375971.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297491

/-! ## A297491.P2943359031244677882

`∑{d}[A000040(n+1), A127917(n+1)-#]`
-/

namespace A297491.P2943359031244677882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A127917 (n + 1) - (d : ℤ))

end

end A297491.P2943359031244677882

namespace A297491

/-- `∑{d}[A000040(n+1), A127917(n+1)-#]` -/
def P2943359031244677882.Spec : Prop :=
  ∀ n, P2943359031244677882.a n = A297491 (n + 1)

end A297491

/-! ## A297491.P5988331313049295534

`A008864(n+1)*A142463(A006093(n+1))`
-/

namespace A297491.P5988331313049295534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A142463 (A006093 (n + 1)).toNat

end

end A297491.P5988331313049295534

namespace A297491

/-- `A008864(n+1)*A142463(A006093(n+1))` -/
def P5988331313049295534.Spec : Prop :=
  ∀ n, P5988331313049295534.a n = A297491 (n + 1)

end A297491

/-! ## A297491.P2283932812296789210

`(A000040(n+1)+1)*A142463(A006093(n+1))`
-/

namespace A297491.P2283932812296789210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) + 1) * A142463 (A006093 (n + 1)).toNat

end

end A297491.P2283932812296789210

namespace A297491

/-- `(A000040(n+1)+1)*A142463(A006093(n+1))` -/
def P2283932812296789210.Spec : Prop :=
  ∀ n, P2283932812296789210.a n = A297491 (n + 1)

end A297491

/-! ## A297491.P513889948615649802

`A008864(n+1)*A142463(A008864(n+1)-2)`
-/

namespace A297491.P513889948615649802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A142463 (A008864 (n + 1) - 2).toNat

end

end A297491.P513889948615649802

namespace A297491

/-- `A008864(n+1)*A142463(A008864(n+1)-2)` -/
def P513889948615649802.Spec : Prop :=
  ∀ n, P513889948615649802.a n = A297491 (n + 1)

end A297491

/-! ## A297491.P15509641873766471364

`A084920(n+1)*A100484(n+1)-A008864(n+1)`
-/

namespace A297491.P15509641873766471364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) * A100484 (n + 1) - A008864 (n + 1)

end

end A297491.P15509641873766471364

namespace A297491

/-- `A084920(n+1)*A100484(n+1)-A008864(n+1)` -/
def P15509641873766471364.Spec : Prop :=
  ∀ n, P15509641873766471364.a n = A297491 (n + 1)

theorem P15509641873766471364.correct : P15509641873766471364.Spec := by
  intro n
  simp only [A297491, Nat.add_sub_cancel, A297491.P15509641873766471364.a, A297491.P5911488717567930429.a, A001748, A001748.P16019639290970068825.a, A008864, A008864.P9177617808325052279.a, A084920, A084920.P13392903182497119137.a, A100484, A100484.P9678625670825099636.a, A172190, A172190.P9019848423872375971.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297491

/-! ## A297491.P2705926806345118056

`(A000384(A000040(n+1))-A008864(n+1))*A008864(n+1)`
-/

namespace A297491.P2705926806345118056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000384 (A000040 (n + 1)).toNat - A008864 (n + 1)) * A008864 (n + 1)

end

end A297491.P2705926806345118056

namespace A297491

/-- `(A000384(A000040(n+1))-A008864(n+1))*A008864(n+1)` -/
def P2705926806345118056.Spec : Prop :=
  ∀ n, P2705926806345118056.a n = A297491 (n + 1)

end A297491

/-!
# A297495: Triangle T(n,k) (n>=0, 0<=k<=n) read by rows: use T(n,k)=T(n,k-1)+T(n-1,k-1) rule except left edge is the sequence read by rows, initial values are T(0,0)=T(1,0)=1.

The programs for A297495, there is no canonical definition to state claims against.
-/

/-! ## A297495.P6682864379237405211

`A117918(A187829(n+1))-A059995(n)`
-/

namespace A297495.P6682864379237405211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117918 (A187829 (n + 1)).toNat - A059995 n

end

end A297495.P6682864379237405211

/-! ## A297495.P11618041923660318496

`A059347(n)+A001222(A064319(n+1))`
-/

namespace A297495.P11618041923660318496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059347 n + A001222 (A064319 (n + 1)).toNat

end

end A297495.P11618041923660318496

/-! ## A297495.P7191392551348536637

`A319951(A059268(n)*A061288(n+1))`
-/

namespace A297495.P7191392551348536637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A059268 n * A061288 (n + 1)).toNat

end

end A297495.P7191392551348536637

/-!
# A297496: Right edge of triangle A297495.

The programs for A297496, there is no canonical definition to state claims against.
-/

/-! ## A297496.P83071926110911576

`A297495(∑[n]+n)`
-/

namespace A297496.P83071926110911576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A297496.P83071926110911576

/-! ## A297496.P12114615603555640691

`record[A297495(A117142(n+1))]`
-/

namespace A297496.P12114615603555640691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297496.P12114615603555640691

/-! ## A297496.P10533443366560886641

`record[A297495(n-A004247(n))]`
-/

namespace A297496.P10533443366560886641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 ((n : ℤ) - A004247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297496.P10533443366560886641

/-! ## A297496.P8786715145426679746

`record[A103452(n)*A297495(n)]`
-/

namespace A297496.P8786715145426679746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A297495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297496.P8786715145426679746

/-! ## A297496.P6588380436480907737

`record[A297495(n)/A007318(n)]`
-/

namespace A297496.P6588380436480907737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297495 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297496.P6588380436480907737

/-! ## A297496.P18371968135381243118

`record[A297495(gcd(n, A004247(n)))]`
-/

namespace A297496.P18371968135381243118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 (Int.gcd (n : ℤ) (A004247 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297496.P18371968135381243118

/-! ## A297496.P10552056931421322177

`record[A297495(n)/A004736(n+1)]`
-/

namespace A297496.P10552056931421322177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297495 n : ℚ) / (A004736 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297496.P10552056931421322177

/-! ## A297496.P14965276576341100738

`A297495(A000096(n))^round(n/(n+1))`
-/

namespace A297496.P14965276576341100738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297495 (A000096 n).toNat : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) : ℤ)

end

end A297496.P14965276576341100738

/-! ## A297496.P9200063408784977605

`∑[A297495(A034856(A028310(n)))]`
-/

namespace A297496.P9200063408784977605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 (A034856 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297496.P9200063408784977605

/-! ## A297496.P1458790866570926807

`record[Δ[record[A297495(n)]]]`
-/

namespace A297496.P1458790866570926807
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297496.P1458790866570926807

/-! ## A297496.P9224694073911104455

`record[A297495(A038722(n+1))]`
-/

namespace A297496.P9224694073911104455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297496.P9224694073911104455

/-! ## A297496.P8365569936478013374

`record[A297495(A002024(n+1)²-n)]`
-/

namespace A297496.P8365569936478013374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297496.P8365569936478013374

/-!
# A297497: Triangle T(n,k) (n>=0, 0<=k<=n) read by rows: use T(n,k)=T(n,k-1)+T(n-1,k-1) rule except left edge is the sequence read by rows, initial values are T(0,0)=0, T(1,0)=1.

The programs for A297497, there is no canonical definition to state claims against.
-/

/-! ## A297497.P867763423835391557

`A064415(A352589(n)+A064415(n+1))`
-/

namespace A297497.P867763423835391557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A352589 n + A064415 (n + 1)).toNat

end

end A297497.P867763423835391557

/-! ## A297497.P8271859490156363513

`A236919(n+1)-A296150(A283178(n))`
-/

namespace A297497.P8271859490156363513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236919 (n + 1) - A296150 (A283178 n).toNat

end

end A297497.P8271859490156363513

/-! ## A297497.P15268415877139077085

`A335885(A066117(n+1))`
-/

namespace A297497.P15268415877139077085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A066117 (n + 1)).toNat

end

end A297497.P15268415877139077085

/-!
# A297498: Right edge of triangle A297497.

The programs for A297498, there is no canonical definition to state claims against.
-/

/-! ## A297498.P11683000851222512126

`A297497(∑[n]+n)`
-/

namespace A297498.P11683000851222512126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A297498.P11683000851222512126

/-! ## A297498.P5678513139246168525

`record[A297497(A061579(n))]`
-/

namespace A297498.P5678513139246168525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297498.P5678513139246168525

/-! ## A297498.P14584001788341965554

`record[A297497(n)/A007318(n)]`
-/

namespace A297498.P14584001788341965554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297497 n : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297498.P14584001788341965554

/-! ## A297498.P6567470591279733259

`record[A297497(n)/A008288(n)]`
-/

namespace A297498.P6567470591279733259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297497 n : ℚ) / (A008288 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297498.P6567470591279733259

/-! ## A297498.P9674132134256954148

`record[A297497(n)/A109267(n)]`
-/

namespace A297498.P9674132134256954148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297497 n : ℚ) / (A109267 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297498.P9674132134256954148

/-! ## A297498.P15589196247787445668

`record[A297497(gcd(n, A014473(n)))]`
-/

namespace A297498.P15589196247787445668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (Int.gcd (n : ℤ) (A014473 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297498.P15589196247787445668

/-! ## A297498.P5994265898356046016

`record[A297497(record[n-A014473(n)])]`
-/

namespace A297498.P5994265898356046016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A014473 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297498.P5994265898356046016

/-! ## A297498.P11968406806321323007

`round(n/(n+1))*A297497(A000096(n))`
-/

namespace A297498.P11968406806321323007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) * A297497 (A000096 n).toNat

end

end A297498.P11968406806321323007

/-! ## A297498.P16093726967877900743

`and(A057428(n), A297497(A000096(n)))`
-/

namespace A297498.P16093726967877900743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A297497 (A000096 n).toNat)

end

end A297498.P16093726967877900743

/-! ## A297498.P8779214516404520458

`record[A297497(n)/A009001(A151890(n))]`
-/

namespace A297498.P8779214516404520458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297497 n : ℚ) / (A009001 (A151890 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297498.P8779214516404520458

/-!
# A297499: Inverse to A295029.

The programs for A297499, there is no canonical definition to state claims against.
-/

/-! ## A297499.P16565183926591865870

`A122111(n+1)-A014082(A145981(n))`
-/

namespace A297499.P16565183926591865870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) - A014082 (A145981 n).toNat

end

end A297499.P16565183926591865870

/-! ## A297499.P13643062918783826709

`A122111(n+1)-A167688(A114150(n))`
-/

namespace A297499.P13643062918783826709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) - A167688 (A114150 n).toNat

end

end A297499.P13643062918783826709

/-! ## A297499.P6005689541225175947

`A122111(n+1)-A321537(A048854(n))`
-/

namespace A297499.P6005689541225175947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) - A321537 (A048854 n).toNat

end

end A297499.P6005689541225175947

/-! ## A297499.P16238145465844908739

`A122111(n+1)-A335520(A216294(n))`
-/

namespace A297499.P16238145465844908739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) - A335520 (A216294 n).toNat

end

end A297499.P16238145465844908739

/-! ## A297499.P7543815814247587223

`A122111(n+1)-A340999(A122111(2*(n+2)))`
-/

namespace A297499.P7543815814247587223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) - A340999 ((A122111 (2 * (n + 2))).toNat + 204)

end

end A297499.P7543815814247587223

