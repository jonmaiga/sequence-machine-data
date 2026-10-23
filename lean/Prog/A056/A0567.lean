import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B009.C001
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

/-!
# A056701: Numbers k such that 2*10^k + 3*R_k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056701, there is no canonical definition to state claims against.
-/

/-! ## A056701.P6301443224961852384

`record[A141470(n+1)^(2-A141471(n+1))]`
-/

namespace A056701.P6301443224961852384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141470 (n + 1) : ℚ) ^ (2 - A141471 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056701.P6301443224961852384

/-! ## A056701.P10202123858541964692

`record[Δ[A000174(A193980(n))]]`
-/

namespace A056701.P10202123858541964692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (A193980 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056701.P10202123858541964692

/-! ## A056701.P4980904881615622998

`lt[A008284(A190816(n+1)), 3]`
-/

namespace A056701.P4980904881615622998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A190816 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A056701.P4980904881615622998

/-! ## A056701.P3866828604988282220

`record[Δ[A026233(A174184(n+1))]]`
-/

namespace A056701.P3866828604988282220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A174184 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056701.P3866828604988282220

/-! ## A056701.P414780226692886395

`lt[n, 2*A121339(A056749(n+2))]`
-/

namespace A056701.P414780226692886395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121339 (A056749 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A056701.P414780226692886395

/-!
# A056703: Numbers n such that 3*10^n - 1 is prime.

The programs for A056703, there is no canonical definition to state claims against.
-/

/-! ## A056703.P12522805244598229471

`eq[2, A177435(A028310(n))]`
-/

namespace A056703.P12522805244598229471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177435 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A056703.P12522805244598229471

/-!
# A056704: Numbers k such that 3*10^k + 1*R_k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056704, there is no canonical definition to state claims against.
-/

/-! ## A056704.P14015690981852089699

`lt[A290935(2*n+3), A246133(A105436(n))]`
-/

namespace A056704.P14015690981852089699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290935 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246133 (A105436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056704.P14015690981852089699

/-! ## A056704.P7893004639725423224

`∪[A000045(2*n+1), A239209(A351015(n+1))]`
-/

namespace A056704.P7893004639725423224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239209 (A351015 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056704.P7893004639725423224

/-!
# A056705: Numbers k such that 3*10^k + 7*R_k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056705, there is no canonical definition to state claims against.
-/

/-! ## A056705.P13087573655544399925

`A001065(A201551(n))+n`
-/

namespace A056705.P13087573655544399925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A201551 n).toNat + (n : ℤ)

end

end A056705.P13087573655544399925

/-!
# A056709: Naught-y primes, primes with noughts (or zeros).

The programs for A056709, the canonical program `A056709.P1000143406783122933` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056709 has offset 1).

The definition of A056709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056709.P1000143406783122933

`p?[A273460(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A056709

/-- `p?[A273460(n+1)]` -/
def P1000143406783122933.Spec : Prop :=
  ∀ n, P1000143406783122933.a n = A056709 (n + 1)

theorem P1000143406783122933.correct : P1000143406783122933.Spec := by
  intro n
  simp only [A056709, Nat.add_sub_cancel]

end A056709

/-! ## A056709.P688776487838671153

`∩[A046501(n+1), A273460(n+1)]`
-/

namespace A056709.P688776487838671153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P688776487838671153

namespace A056709

/-- `∩[A046501(n+1), A273460(n+1)]` -/
def P688776487838671153.Spec : Prop :=
  ∀ n, (P688776487838671153.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P9072785227305815250

`∩[A117682(n+1), A273460(n+1)]`
-/

namespace A056709.P9072785227305815250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P9072785227305815250

namespace A056709

/-- `∩[A117682(n+1), A273460(n+1)]` -/
def P9072785227305815250.Spec : Prop :=
  ∀ n, (P9072785227305815250.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P16838631501208118893

`∩[A227217(n+1), A273460(n+1)]`
-/

namespace A056709.P16838631501208118893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P16838631501208118893

namespace A056709

/-- `∩[A227217(n+1), A273460(n+1)]` -/
def P16838631501208118893.Spec : Prop :=
  ∀ n, (P16838631501208118893.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P17877830670669791341

`∩[A225303(n+1), A273460(n+1)]`
-/

namespace A056709.P17877830670669791341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P17877830670669791341

namespace A056709

/-- `∩[A225303(n+1), A273460(n+1)]` -/
def P17877830670669791341.Spec : Prop :=
  ∀ n, (P17877830670669791341.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P12335164692179088887

`∩[A157677(n+1), A273460(n+1)]`
-/

namespace A056709.P12335164692179088887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P12335164692179088887

namespace A056709

/-- `∩[A157677(n+1), A273460(n+1)]` -/
def P12335164692179088887.Spec : Prop :=
  ∀ n, (P12335164692179088887.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P12397961834422055488

`∩[A273460(n+1), A380525(n+1)]`
-/

namespace A056709.P12397961834422055488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P12397961834422055488

namespace A056709

/-- `∩[A273460(n+1), A380525(n+1)]` -/
def P12397961834422055488.Spec : Prop :=
  ∀ n, (P12397961834422055488.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P1021841469699100486

`∩[A046501(n+1), A199977(n+1)]`
-/

namespace A056709.P1021841469699100486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P1021841469699100486

namespace A056709

/-- `∩[A046501(n+1), A199977(n+1)]` -/
def P1021841469699100486.Spec : Prop :=
  ∀ n, (P1021841469699100486.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P17187831034697810526

`∩[A199977(n+1), A273460(n+1)]`
-/

namespace A056709.P17187831034697810526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P17187831034697810526

namespace A056709

/-- `∩[A199977(n+1), A273460(n+1)]` -/
def P17187831034697810526.Spec : Prop :=
  ∀ n, (P17187831034697810526.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P7429685797511345218

`∩[A273460(n+1), A339819(n+1)]`
-/

namespace A056709.P7429685797511345218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P7429685797511345218

namespace A056709

/-- `∩[A273460(n+1), A339819(n+1)]` -/
def P7429685797511345218.Spec : Prop :=
  ∀ n, (P7429685797511345218.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P8909053996003889213

`∩[A215927(n+1), A273460(n+1)]`
-/

namespace A056709.P8909053996003889213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P8909053996003889213

namespace A056709

/-- `∩[A215927(n+1), A273460(n+1)]` -/
def P8909053996003889213.Spec : Prop :=
  ∀ n, (P8909053996003889213.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P7137533824792647779

`∩[A059497(n+1), A273460(n+1)]`
-/

namespace A056709.P7137533824792647779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P7137533824792647779

namespace A056709

/-- `∩[A059497(n+1), A273460(n+1)]` -/
def P7137533824792647779.Spec : Prop :=
  ∀ n, (P7137533824792647779.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P1463758580038985942

`∩[A065376(n+1), A273460(n+1)]`
-/

namespace A056709.P1463758580038985942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P1463758580038985942

namespace A056709

/-- `∩[A065376(n+1), A273460(n+1)]` -/
def P1463758580038985942.Spec : Prop :=
  ∀ n, (P1463758580038985942.a n : ℤ) = A056709 (n + 1)

end A056709

/-! ## A056709.P6066640207207845554

`∩[A071621(n+1), A273460(n+1)]`
-/

namespace A056709.P6066640207207845554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056709.P6066640207207845554

namespace A056709

/-- `∩[A071621(n+1), A273460(n+1)]` -/
def P6066640207207845554.Spec : Prop :=
  ∀ n, (P6066640207207845554.a n : ℤ) = A056709 (n + 1)

end A056709

/-!
# A056710: Near-repdigit primes such that all digits are equal except for an end-digit.

The programs for A056710, there is no canonical definition to state claims against.
-/

/-! ## A056710.P7191794544894277603

`∩[A034845(n+1), A164937(n+1)]`
-/

namespace A056710.P7191794544894277603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P7191794544894277603

/-! ## A056710.P17580976875390993398

`∩[A034845(n+1), A167843(n+1)]`
-/

namespace A056710.P17580976875390993398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P17580976875390993398

/-! ## A056710.P10013237813920019361

`∩[A164937(n+1), A167843(n+1)]`
-/

namespace A056710.P10013237813920019361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P10013237813920019361

/-! ## A056710.P10783746658178392206

`∩[A034845(n+1), A135603(n+1)]`
-/

namespace A056710.P10783746658178392206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P10783746658178392206

/-! ## A056710.P3193042735960007338

`∩[A135603(n+1), A164937(n+1)]`
-/

namespace A056710.P3193042735960007338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P3193042735960007338

/-! ## A056710.P932117462943621718

`∩[A030291(n+1), A135603(n+1)]`
-/

namespace A056710.P932117462943621718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P932117462943621718

/-! ## A056710.P17098222993454567639

`∩[A030291(n+1), A167843(n+1)]`
-/

namespace A056710.P17098222993454567639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P17098222993454567639

/-! ## A056710.P17668781840515642196

`∩[A135603(n+1), A235154(n+1)]`
-/

namespace A056710.P17668781840515642196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P17668781840515642196

/-! ## A056710.P114564039858481878

`∩[A167843(n+1), A235154(n+1)]`
-/

namespace A056710.P114564039858481878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P114564039858481878

/-! ## A056710.P16701807030608779130

`∩[A083984(n+1), A167843(n+1)]`
-/

namespace A056710.P16701807030608779130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P16701807030608779130

/-! ## A056710.P4842449807592004985

`∩[A135603(n+1), A273906(n+1)]`
-/

namespace A056710.P4842449807592004985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P4842449807592004985

/-! ## A056710.P3886132500591047694

`∩[A167843(n+1), A273906(n+1)]`
-/

namespace A056710.P3886132500591047694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056710.P3886132500591047694

/-!
# A056711: Plug g.f. for A000108 (minus the leading 1), 1/2*(1-(1-4*x)^(1/2))/x - 1, into cycle index for dihedral group D_3.

The programs for A056711, there is no canonical definition to state claims against.
-/

/-! ## A056711.P9177525972413550843

`A046342(n)-A007595(n+1)`
-/

namespace A056711.P9177525972413550843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046342 n - A007595 (n + 1)

end

end A056711.P9177525972413550843

/-! ## A056711.P207421058533924460

`A046342(n)%A007595(A000027(n+1))`
-/

namespace A056711.P207421058533924460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046342 n) (A007595 (A000027 (n + 1)).toNat)

end

end A056711.P207421058533924460

/-! ## A056711.P89454410654186323

`A046342(A028310(n))%A007595(n+1)`
-/

namespace A056711.P89454410654186323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046342 (A028310 n).toNat) (A007595 (n + 1))

end

end A056711.P89454410654186323

/-! ## A056711.P899358445678073183

`A046342(A254667(n))%A007595(n+1)`
-/

namespace A056711.P899358445678073183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046342 (A254667 n).toNat) (A007595 (n + 1))

end

end A056711.P899358445678073183

/-! ## A056711.P1597567327150749675

`A046342(n)-(A126120(n)+A000150(n+1))`
-/

namespace A056711.P1597567327150749675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046342 n - (A126120 n + A000150 (n + 1))

end

end A056711.P1597567327150749675

/-!
# A056712: Numbers n such that 5*10^n-1 is prime.

The programs for A056712, there is no canonical definition to state claims against.
-/

/-! ## A056712.P4768902527933218556

`A295988(n+1)-1`
-/

namespace A056712.P4768902527933218556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295988 (n + 1) - 1

end

end A056712.P4768902527933218556

/-! ## A056712.P4281627195261149257

`A321804(floor(sqrt(n)))+A295988(n+1)`
-/

namespace A056712.P4281627195261149257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (Nat.sqrt n) + A295988 (n + 1)

end

end A056712.P4281627195261149257

/-! ## A056712.P18011280424045030341

`abs(A295988(n+1)+A134824(n+2))`
-/

namespace A056712.P18011280424045030341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A295988 (n + 1) + A134824 (n + 2)|

end

end A056712.P18011280424045030341

/-! ## A056712.P15404915821367289309

`A316441(A000040(n+1))+A295988(n+1)`
-/

namespace A056712.P15404915821367289309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A295988 (n + 1)

end

end A056712.P15404915821367289309

/-! ## A056712.P4128500653604806785

`A316441(A002144(n+1))+A295988(n+1)`
-/

namespace A056712.P4128500653604806785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A002144 (n + 1)).toNat + A295988 (n + 1)

end

end A056712.P4128500653604806785

/-!
# A056713: Numbers k such that 5*10^k + R_k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056713, there is no canonical definition to state claims against.
-/

/-! ## A056713.P15585083379375169122

`record[(n+3)*(xor(3, n)²-4)]%A023193((8*n+4)²-1)`
-/

namespace A056713.P15585083379375169122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * ((Nat.xor 3 n ^ 2 : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A023193 ((8 * n + 4) ^ 2 - 1))

end

end A056713.P15585083379375169122

/-! ## A056713.P12906323763820476916

`A007954(A006349(n+1)*A330572(n))`
-/

namespace A056713.P12906323763820476916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A006349 (n + 1) * A330572 n).toNat

end

end A056713.P12906323763820476916

/-!
# A056714: Numbers k such that 5*10^k + 3*R_k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056714, there is no canonical definition to state claims against.
-/

/-! ## A056714.P6475011129267929887

`record[A155178(3*n+2)%A325860(n)]`
-/

namespace A056714.P6475011129267929887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155178 (3 * n + 2)) (A325860 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056714.P6475011129267929887

/-! ## A056714.P9484778702913459136

`A335780(A008574(n))%A348010(n)`
-/

namespace A056714.P9484778702913459136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335780 (A008574 n).toNat) (A348010 n)

end

end A056714.P9484778702913459136

/-! ## A056714.P17513420754131295268

`A301416(n+1)-A011601(A179525(n))`
-/

namespace A056714.P17513420754131295268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301416 (n + 1) - A011601 (A179525 n).toNat

end

end A056714.P17513420754131295268

/-!
# A056716: Numbers n such that 6*10^n-1 is prime.

The programs for A056716, there is no canonical definition to state claims against.
-/

/-! ## A056716.P5175514690693376796

`lt[A161133(n), A006488(A204217(n+5))]`
-/

namespace A056716.P5175514690693376796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161133 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006488 (A204217 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056716.P5175514690693376796

/-!
# A056717: Numbers k such that 6*10^k + R_k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056717, there is no canonical definition to state claims against.
-/

/-! ## A056717.P8569053661047633512

`A360008(A053576(n))-A218604(n)`
-/

namespace A056717.P8569053661047633512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360008 (A053576 n).toNat - A218604 n

end

end A056717.P8569053661047633512

/-! ## A056717.P4012419568594254961

`or(A059502(n), A194916(A008000(n)))`
-/

namespace A056717.P4012419568594254961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059502 n) (A194916 (A008000 n).toNat)

end

end A056717.P4012419568594254961

/-!
# A056718: Numbers k such that (61*10^k - 7)/9 is prime.

The programs for A056718, there is no canonical definition to state claims against.
-/

/-! ## A056718.P15310774504283481198

`∑[A054711(A006882(n)²)]`
-/

namespace A056718.P15310774504283481198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054711 (A006882 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056718.P15310774504283481198

/-! ## A056718.P8272029935944522093

`∑[A124773(∑[A039928(n+3)])]`
-/

namespace A056718.P8272029935944522093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039928 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056718.P8272029935944522093

/-!
# A056722: Numbers k such that 8*10^k + R_k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A056722, there is no canonical definition to state claims against.
-/

/-! ## A056722.P759681996233962037

`A106240(n+1)+A086916(A072439(n+1))`
-/

namespace A056722.P759681996233962037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (n + 1) + A086916 (A072439 (n + 1)).toNat

end

end A056722.P759681996233962037

/-!
# A056728: Palindromic primes using only two distinct digits and only the exterior digit is different.

The programs for A056728, there is no canonical definition to state claims against.
-/

/-! ## A056728.P6509165741737277673

`p?[A098897(A118759(n+10))]`
-/

namespace A056728.P6509165741737277673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (A118759 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A056728.P6509165741737277673

/-!
# A056729: If p | n, then p+1 | n+1 for composite n.

The programs for A056729, there is no canonical definition to state claims against.
-/

/-! ## A056729.P13279632506433242328

`∩[A003624(n+1), A346635(n+1)]`
-/

namespace A056729.P13279632506433242328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056729.P13279632506433242328

/-! ## A056729.P15804143429816419739

`A070265(n+2)-and(floor(3*n/8), A114020(n))`
-/

namespace A056729.P15804143429816419739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 2) - Int.land ⌊3 * ((n : ℚ) / 8)⌋ (A114020 n)

end

end A056729.P15804143429816419739

/-!
# A056730: Palindromic primes with just two distinct digits.

The programs for A056730, there is no canonical definition to state claims against.
-/

/-! ## A056730.P14051364880177987354

`∩[A088562(n+1), A235154(n+1)]`
-/

namespace A056730.P14051364880177987354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P14051364880177987354

/-! ## A056730.P16820332897306311823

`∩[A002385(n+1), A235154(n+1)]`
-/

namespace A056730.P16820332897306311823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P16820332897306311823

/-! ## A056730.P11669409195058562630

`∩[A235154(n+1), A324989(n+1)]`
-/

namespace A056730.P11669409195058562630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P11669409195058562630

/-! ## A056730.P35663332609079050

`∩[A235154(n+1), A327325(n+1)]`
-/

namespace A056730.P35663332609079050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P35663332609079050

/-! ## A056730.P3504813487816158742

`∩[A235154(n+1), A340252(n+1)]`
-/

namespace A056730.P3504813487816158742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P3504813487816158742

/-! ## A056730.P17135985853752565160

`∩[A235154(n+1), A363246(n+1)]`
-/

namespace A056730.P17135985853752565160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P17135985853752565160

/-! ## A056730.P13647602580979950063

`∩[A188650(n+1), A235154(n+1)]`
-/

namespace A056730.P13647602580979950063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P13647602580979950063

/-! ## A056730.P9070388277030962548

`∩[A062687(n+1), A235154(n+1)]`
-/

namespace A056730.P9070388277030962548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P9070388277030962548

/-! ## A056730.P17273742997795271917

`∩[A083137(n+1), A235154(n+1)]`
-/

namespace A056730.P17273742997795271917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P17273742997795271917

/-! ## A056730.P6792444994018266798

`∩[A072299(n+1), A235154(n+1)]`
-/

namespace A056730.P6792444994018266798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P6792444994018266798

/-! ## A056730.P8723670602208283487

`∩[A080716(n+1), A235154(n+1)]`
-/

namespace A056730.P8723670602208283487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P8723670602208283487

/-! ## A056730.P12262784738939730068

`∩[A235154(n+1), A265641(n+1)]`
-/

namespace A056730.P12262784738939730068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P12262784738939730068

/-! ## A056730.P4365844202501768216

`∩[A169829(n+1), A235154(n+1)]`
-/

namespace A056730.P4365844202501768216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056730.P4365844202501768216

/-!
# A056731: First differences of A030124.

The programs for A056731, there is no canonical definition to state claims against.
-/

/-! ## A056731.P3199923545408457992

`char[A005228(n+1)-(n+2)]+1`
-/

namespace A056731.P3199923545408457992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A056731.P3199923545408457992

/-! ## A056731.P4727950939919073710

`Δ[A030124(n+1)]`
-/

namespace A056731.P4727950939919073710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056731.P4727950939919073710

/-! ## A056731.P9859939166002730897

`ceil(ratio[A225687(n+1)])`
-/

namespace A056731.P9859939166002730897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A056731.P9859939166002730897

/-! ## A056731.P11654673317630732983

`Δ[Δ[A005228(n+1)]]`
-/

namespace A056731.P11654673317630732983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056731.P11654673317630732983

/-! ## A056731.P16350050422277923719

`A000005(Δ[A061578(n+1)])`
-/

namespace A056731.P16350050422277923719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A056731.P16350050422277923719

/-! ## A056731.P9740883285752501505

`A030124(n+2)-A030124(n+1)`
-/

namespace A056731.P9740883285752501505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 2) - A030124 (n + 1)

end

end A056731.P9740883285752501505

/-! ## A056731.P1340577968407733434

`A294860(A225687(n+2)-A225687(n+1))`
-/

namespace A056731.P1340577968407733434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294860 (A225687 (n + 2) - A225687 (n + 1)).toNat

end

end A056731.P1340577968407733434

/-! ## A056731.P16645300805001064562

`A005228(n+1)+A225687(n+2)-A056738(n+1)`
-/

namespace A056731.P16645300805001064562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + (A225687 (n + 2) - A056738 (n + 1))

end

end A056731.P16645300805001064562

/-! ## A056731.P4783906774190588168

`A005228(n+1)+A061578(n+2)-A005228(n+2)`
-/

namespace A056731.P4783906774190588168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + (A061578 (n + 2) - A005228 (n + 2))

end

end A056731.P4783906774190588168

/-! ## A056731.P4163970887641007268

`Δ[Δ[A081689(n)]]`
-/

namespace A056731.P4163970887641007268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056731.P4163970887641007268

/-! ## A056731.P2592852550946031247

`Δ[A081688(n+1)]`
-/

namespace A056731.P2592852550946031247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056731.P2592852550946031247

/-! ## A056731.P7309752730537343776

`Δ[Δ[A065130(n+1)]]+1`
-/

namespace A056731.P7309752730537343776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065130 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A056731.P7309752730537343776

/-! ## A056731.P12600540611491051196

`Δ[Δ[A109592(n+1)/2]]`
-/

namespace A056731.P12600540611491051196
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109592 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056731.P12600540611491051196

/-! ## A056731.P6206489939622125682

`A001222(Δ[Δ[A109592(n+1)]])`
-/

namespace A056731.P6206489939622125682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109592 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A056731.P6206489939622125682

/-! ## A056731.P7987807398173929868

`A081688(n+2)-A081688(n+1)`
-/

namespace A056731.P7987807398173929868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 (n + 2) - A081688 (n + 1)

end

end A056731.P7987807398173929868

/-! ## A056731.P14251544977269814834

`Δ[A167151(2*(n+1))]`
-/

namespace A056731.P14251544977269814834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056731.P14251544977269814834

/-! ## A056731.P17031912765552451947

`Δ[Δ[A167151(comp[2*n])]]`
-/

namespace A056731.P17031912765552451947
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056731.P17031912765552451947

/-!
# A056732: Smallest palindromic prime using n digits, or 0 if no such number exists.

The programs for A056732, there is no canonical definition to state claims against.
-/

/-! ## A056732.P7071766232861600081

`char[A004275(n)]*A115941(n+1)`
-/

namespace A056732.P7071766232861600081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A115941 (n + 1)

end

end A056732.P7071766232861600081

/-! ## A056732.P13428150279097372062

`char[A110510(n)]*A115941(n+1)`
-/

namespace A056732.P13428150279097372062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A115941 (n + 1)

end

end A056732.P13428150279097372062

/-! ## A056732.P3992610373939666474

`char[record[A186421(n)]]*A115941(n+1)`
-/

namespace A056732.P3992610373939666474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A115941 (n + 1)

end

end A056732.P3992610373939666474

/-! ## A056732.P11764325399277298055

`A000035(A124781(n))*A115941(n+1)`
-/

namespace A056732.P11764325399277298055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A124781 n).toNat * A115941 (n + 1)

end

end A056732.P11764325399277298055

/-! ## A056732.P12464322148416818719

`A000035(A048671(n+1))*A115941(n+1)`
-/

namespace A056732.P12464322148416818719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A048671 (n + 1)).toNat * A115941 (n + 1)

end

end A056732.P12464322148416818719

/-!
# A056733: Each number is the sum of the cubes of its 3 sections.

The programs for A056733, there is no canonical definition to state claims against.
-/

/-! ## A056733.P17725918644712304623

`A271730(∑[A008277(ceil(2^(n-1)))])`
-/

namespace A056733.P17725918644712304623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271730 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056733.P17725918644712304623

/-!
# A056734: Positive numbers k such that, in base 3, 2^k and 2^(k+1) have the same number of digits and the same number of 0's.

The programs for A056734, there is no canonical definition to state claims against.
-/

/-! ## A056734.P17601254607392870046

`A211167(n+1)+A001222(A108217(n))`
-/

namespace A056734.P17601254607392870046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211167 (n + 1) + A001222 (A108217 n).toNat

end

end A056734.P17601254607392870046

/-!
# A056737: Minimum nonnegative integer m such that n = k*(k+m) for some positive integer k.

The programs for A056737, there is no canonical definition to state claims against.
-/

/-! ## A056737.P4542727719036520481

`A033677(n+1)-A033676(n+1)`
-/

namespace A056737.P4542727719036520481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) - A033676 (n + 1)

end

end A056737.P4542727719036520481

/-! ## A056737.P11423860451548623066

`1-A101322(n+1)+n`
-/

namespace A056737.P11423860451548623066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A101322 (n + 1) + (n : ℤ)

end

end A056737.P11423860451548623066

/-! ## A056737.P13293508215449362067

`n%(A033677(n+1)+1)`
-/

namespace A056737.P13293508215449362067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A033677 (n + 1) + 1)

end

end A056737.P13293508215449362067

/-! ## A056737.P11428438828546796436

`sqrt(A323728(n+1)-2*(n+1))`
-/

namespace A056737.P11428438828546796436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A323728 (n + 1) - (2 * (n + 1) : ℤ) : ℝ)

end

end A056737.P11428438828546796436

/-! ## A056737.P7017285355777531965

`Δ[A161416(A028310(n))]`
-/

namespace A056737.P7017285355777531965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161416 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A056737.P7017285355777531965

/-! ## A056737.P5788815391976003429

`A139717(n+1)/A033677(n+1)`
-/

namespace A056737.P5788815391976003429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139717 (n + 1) : ℚ) / (A033677 (n + 1) : ℚ)

end

end A056737.P5788815391976003429

/-! ## A056737.P5004423591619171734

`A139717(n+1)/A140271(n+1)`
-/

namespace A056737.P5004423591619171734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139717 (n + 1) : ℚ) / (A140271 (n + 1) : ℚ)

end

end A056737.P5004423591619171734

/-! ## A056737.P7187065068479923298

`A033677(n+1)-A162348(Δ[n²])`
-/

namespace A056737.P7187065068479923298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) - A162348 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A056737.P7187065068479923298

/-! ## A056737.P8025846935325031874

`∑[A163984(n+1)]-A163984(n+1)`
-/

namespace A056737.P8025846935325031874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A163984 (n + 1)

end

end A056737.P8025846935325031874

/-! ## A056737.P3453303823014963607

`2*A033677(n+1)-A063655(n+1)`
-/

namespace A056737.P3453303823014963607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033677 (n + 1) - A063655 (n + 1)

end

end A056737.P3453303823014963607

/-! ## A056737.P15402382872105695590

`A063655(n+1)-2*A033676(n+1)`
-/

namespace A056737.P15402382872105695590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - 2 * A033676 (n + 1)

end

end A056737.P15402382872105695590

/-! ## A056737.P1247133879370203450

`A162348(2*(n+1))-A033676(n+1)`
-/

namespace A056737.P1247133879370203450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (n + 1)) - A033676 (n + 1)

end

end A056737.P1247133879370203450

/-! ## A056737.P14326345689764983915

`A139717(n+1)/A162348(2*(n+1))`
-/

namespace A056737.P14326345689764983915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139717 (n + 1) : ℚ) / (A162348 (2 * (n + 1)) : ℚ)

end

end A056737.P14326345689764983915

/-! ## A056737.P1749454808074935476

`A162348(2*(n+1))-A162348(2*n+1)`
-/

namespace A056737.P1749454808074935476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (n + 1)) - A162348 (2 * n + 1)

end

end A056737.P1749454808074935476

/-! ## A056737.P9145351724096372228

`A161416(n+1)-A161416(A028310(n))`
-/

namespace A056737.P9145351724096372228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161416 (n + 1) - A161416 (A028310 n).toNat

end

end A056737.P9145351724096372228

/-! ## A056737.P11226087058095316021

`A063655(n+1)-A063655(A033676(n+1)²)`
-/

namespace A056737.P11226087058095316021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - A063655 (A033676 (n + 1) ^ 2).toNat

end

end A056737.P11226087058095316021

/-! ## A056737.P4429653590561377731

`A000027(n+1)/A033676(n+1)-A033676(n+1)`
-/

namespace A056737.P4429653590561377731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A033676 (n + 1) : ℚ) - (A033676 (n + 1) : ℚ)

end

end A056737.P4429653590561377731

/-! ## A056737.P4964533630771703509

`A033677(n+1)-A000027(n+1)/A033677(n+1)`
-/

namespace A056737.P4964533630771703509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033677 (n + 1) : ℚ) - (A000027 (n + 1) : ℚ) / (A033677 (n + 1) : ℚ)

end

end A056737.P4964533630771703509

/-! ## A056737.P6236913242768818206

`A147763((n+1)*A033677(n+1))`
-/

namespace A056737.P6236913242768818206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147763 ((n + 1 : ℤ) * A033677 (n + 1)).toNat

end

end A056737.P6236913242768818206

/-! ## A056737.P4364010643255204089

`A063655(A033677(n+1)²)-A063655(n+1)`
-/

namespace A056737.P4364010643255204089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A033677 (n + 1) ^ 2).toNat - A063655 (n + 1)

end

end A056737.P4364010643255204089

/-!
# A056738: Positions where 2's occur in A056731.

The programs for A056738, there is no canonical definition to state claims against.
-/

/-! ## A056738.P11956930635852322600

`A005228(n+1)+A030124(n+1)-(n+1)-1`
-/

namespace A056738.P11956930635852322600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 1) + A030124 (n + 1) - (n + 1 : ℤ) - 1

end

end A056738.P11956930635852322600

/-! ## A056738.P16911566745050088756

`∑[comp[A081689(n)]]`
-/

namespace A056738.P16911566745050088756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056738.P16911566745050088756

/-! ## A056738.P16309384670760619583

`∑[A030124(n+1)-1]`
-/

namespace A056738.P16309384670760619583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030124 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056738.P16309384670760619583

/-! ## A056738.P10800748041338101385

`∑[A225687(n+1)+n]`
-/

namespace A056738.P10800748041338101385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056738.P10800748041338101385

/-! ## A056738.P9610901707735436342

`∑[A061578(n+1)]-n`
-/

namespace A056738.P9610901707735436342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A056738.P9610901707735436342

/-! ## A056738.P16166452350000681534

`∑[comp[∑[A167151(2*n)]]]`
-/

namespace A056738.P16166452350000681534
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056738.P16166452350000681534

/-! ## A056738.P9657312358295517249

`A005228(n+2)-(n+2)`
-/

namespace A056738.P9657312358295517249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005228 (n + 2) - (n + 2 : ℤ)

end

end A056738.P9657312358295517249

/-! ## A056738.P9712695081868303131

`∑[comp[A167151(or(1, n))-1]]`
-/

namespace A056738.P9712695081868303131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (Nat.lor 1 n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056738.P9712695081868303131

/-! ## A056738.P11561166013032826525

`abs(2-A022953(n+1)+n)`
-/

namespace A056738.P11561166013032826525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A022953 (n + 1) + (n : ℤ)|

end

end A056738.P11561166013032826525

/-! ## A056738.P12379439397681880730

`A225687(n+1)+A081689(n)`
-/

namespace A056738.P12379439397681880730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (n + 1) + A081689 n

end

end A056738.P12379439397681880730

/-! ## A056738.P3863775600731442991

`∑[comp[A167151(A005408(n))-1]]`
-/

namespace A056738.P3863775600731442991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (A005408 n).toNat - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056738.P3863775600731442991

/-! ## A056738.P2721545630534280454

`A022953(n+1)-A114637(n+1)`
-/

namespace A056738.P2721545630534280454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022953 (n + 1) - A114637 (n + 1)

end

end A056738.P2721545630534280454

/-! ## A056738.P17009265378366328941

`∑[A081688(n+1)]`
-/

namespace A056738.P17009265378366328941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056738.P17009265378366328941

/-! ## A056738.P15121939305694109845

`A081689(n+1)-(n+1)`
-/

namespace A056738.P15121939305694109845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081689 (n + 1) - (n + 1 : ℤ)

end

end A056738.P15121939305694109845

/-! ## A056738.P8075865396552738791

`A061577(n+2)-(n+2)`
-/

namespace A056738.P8075865396552738791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061577 (n + 2) - (n + 2 : ℤ)

end

end A056738.P8075865396552738791

/-! ## A056738.P4861402943215781342

`A109592(n+2)/2-(n+2)`
-/

namespace A056738.P4861402943215781342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109592 (n + 2) : ℚ) / 2 - (n + 2 : ℚ)

end

end A056738.P4861402943215781342

/-! ## A056738.P16790420036011664476

`A065130(n+2)+A000217(n+1)`
-/

namespace A056738.P16790420036011664476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065130 (n + 2) + A000217 (n + 1)

end

end A056738.P16790420036011664476

/-! ## A056738.P2041602880124823066

`∑[A167151(2*(n+1))-1]`
-/

namespace A056738.P2041602880124823066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056738.P2041602880124823066

/-! ## A056738.P2766714973785814952

`A167151(2*n+3)-(n+2)`
-/

namespace A056738.P2766714973785814952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (2 * n + 3) - (n + 2 : ℤ)

end

end A056738.P2766714973785814952

/-! ## A056738.P7443832168482805249

`A030124(n+1)+A023443(a(A023443(n)))` with `a(0)=1`
-/

namespace A056738.P7443832168482805249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030124 (n + 1) + A023443 (a (A023443 n).toNat).toNat

end

end A056738.P7443832168482805249

/-!
# A056741: Numbers k such that k | 5^k + 4^k + 3^k + 2^k + 1^k.

The programs for A056741, there is no canonical definition to state claims against.
-/

/-! ## A056741.P10244087212152569806

`record[gcd(n+1, A341411(n+1))]`
-/

namespace A056741.P10244087212152569806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A341411 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056741.P10244087212152569806

/-! ## A056741.P7985978253419076663

`A057235(n+1)-A184955(A043320(n+1))`
-/

namespace A056741.P7985978253419076663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057235 (n + 1) - A184955 (A043320 (n + 1)).toNat

end

end A056741.P7985978253419076663

/-! ## A056741.P12183871311599914703

`A057235(n+1)-A184955(A181820(n+1))`
-/

namespace A056741.P12183871311599914703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057235 (n + 1) - A184955 (A181820 (n + 1)).toNat

end

end A056741.P12183871311599914703

/-!
# A056742: a(n) = phi(2^n - 1)/2.

The programs for A056742, the canonical program `A056742.P235496144668902535` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056742 has offset 2).

The definition of A056742 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056742.P7703401322605728563

`A053287(n+2)/2`
-/

namespace A056742.P7703401322605728563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053287 (n + 2) : ℚ) / 2

end

end A056742.P7703401322605728563

namespace A056742

/-- `A053287(n+2)/2` -/
def P7703401322605728563.Spec : Prop :=
  ∀ n, P7703401322605728563.a n = (A056742 (n + 2) : ℚ)

end A056742

/-! ## A056742.P235496144668902535

`A000010(A000225(n+2))/2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A056742

/-- `A000010(A000225(n+2))/2` -/
def P235496144668902535.Spec : Prop :=
  ∀ n, P235496144668902535.a n = (A056742 (n + 2) : ℚ)

end A056742

/-! ## A056742.P18131882779660368045

`(n+2)/2*A000020(n+2)`
-/

namespace A056742.P18131882779660368045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A000020 (n + 2) : ℚ)

end

end A056742.P18131882779660368045

namespace A056742

/-- `(n+2)/2*A000020(n+2)` -/
def P18131882779660368045.Spec : Prop :=
  ∀ n, P18131882779660368045.a n = (A056742 (n + 2) : ℚ)

end A056742

/-! ## A056742.P15940876874239430882

`(n+2)/2*A011260(n+2)`
-/

namespace A056742.P15940876874239430882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A011260 (n + 2) : ℚ)

end

end A056742.P15940876874239430882

namespace A056742

/-- `(n+2)/2*A011260(n+2)` -/
def P15940876874239430882.Spec : Prop :=
  ∀ n, P15940876874239430882.a n = (A056742 (n + 2) : ℚ)

end A056742

/-! ## A056742.P16159248755186500217

`A000079(n+1)-A378514(n+2)`
-/

namespace A056742.P16159248755186500217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A378514 (n + 2)

end

end A056742.P16159248755186500217

namespace A056742

/-- `A000079(n+1)-A378514(n+2)` -/
def P16159248755186500217.Spec : Prop :=
  ∀ n, P16159248755186500217.a n = A056742 (n + 2)

end A056742

/-! ## A056742.P2206752084752810543

`(A126646(n+1)-A053288(n+2))/2`
-/

namespace A056742.P2206752084752810543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (n + 1) - A053288 (n + 2) : ℚ) / 2

end

end A056742.P2206752084752810543

namespace A056742

/-- `(A126646(n+1)-A053288(n+2))/2` -/
def P2206752084752810543.Spec : Prop :=
  ∀ n, P2206752084752810543.a n = (A056742 (n + 2) : ℚ)

end A056742

/-! ## A056742.P12610026961209191708

`A027742(n+2)/(2*A069925(n+2))`
-/

namespace A056742.P12610026961209191708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027742 (n + 2) : ℚ) / (2 * A069925 (n + 2) : ℚ)

end

end A056742.P12610026961209191708

namespace A056742

/-- `A027742(n+2)/(2*A069925(n+2))` -/
def P12610026961209191708.Spec : Prop :=
  ∀ n, P12610026961209191708.a n = (A056742 (n + 2) : ℚ)

end A056742

/-!
# A056743: a(n) = phi(2^prime(n) - 1)/prime(n); a(0) = 0 by convention.

The programs for A056743, there is no canonical definition to state claims against.
-/

/-! ## A056743.P707435793576262762

`∑{p}[A008578(n+1), A000020(#)]`
-/

namespace A056743.P707435793576262762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000020 p

end

end A056743.P707435793576262762

/-! ## A056743.P3482305718199437105

`A011260(A008578(n+1))-A000007(n)`
-/

namespace A056743.P3482305718199437105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A008578 (n + 1)).toNat - A000007 n

end

end A056743.P3482305718199437105

/-! ## A056743.P12966144452370682563

`A000020(A008578(n+1))*A057427(n)`
-/

namespace A056743.P12966144452370682563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (A008578 (n + 1)).toNat * A057427 n

end

end A056743.P12966144452370682563

/-! ## A056743.P12787236174941717108

`A011260(A008578(n+1))%A009973(n)`
-/

namespace A056743.P12787236174941717108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011260 (A008578 (n + 1)).toNat) (A009973 n)

end

end A056743.P12787236174941717108

/-! ## A056743.P12648310110805540958

`A011260(A008578(n+1))-A000035(A008458(n))`
-/

namespace A056743.P12648310110805540958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A008578 (n + 1)).toNat - A000035 (A008458 n).toNat

end

end A056743.P12648310110805540958

/-! ## A056743.P3416721535564155432

`A011260(A008578(n+1))-A103505(A005843(n))%2`
-/

namespace A056743.P3416721535564155432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011260 (A008578 (n + 1)).toNat - Int.tmod (A103505 (A005843 n).toNat) 2

end

end A056743.P3416721535564155432

/-!
# A056744: a(n) is the smallest number which when written in binary contains as substrings the binary expansions of 1..n.

The programs for A056744, there is no canonical definition to state claims against.
-/

/-! ## A056744.P7015792349170863361

`A350510(∑[n]+2)`
-/

namespace A056744.P7015792349170863361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350510 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A056744.P7015792349170863361

/-! ## A056744.P16808876509118094

`A344184(A032555(n+1))`
-/

namespace A056744.P16808876509118094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344184 (A032555 (n + 1)).toNat

end

end A056744.P16808876509118094

/-! ## A056744.P2712299151954113009

`A344184(A032557(n+1))`
-/

namespace A056744.P2712299151954113009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344184 (A032557 (n + 1)).toNat

end

end A056744.P2712299151954113009

/-! ## A056744.P8616083750108623152

`A344184(A032559(n+1))`
-/

namespace A056744.P8616083750108623152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344184 (A032559 (n + 1)).toNat

end

end A056744.P8616083750108623152

/-! ## A056744.P2638279340631453010

`A344184(A032563(n+1))`
-/

namespace A056744.P2638279340631453010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344184 (A032563 (n + 1)).toNat

end

end A056744.P2638279340631453010

/-!
# A056745: Numbers k such that k | 6^k + 5^k + 4^k + 3^k + 2^k + 1^k.

The programs for A056745, there is no canonical definition to state claims against.
-/

/-! ## A056745.P9565937910800955224

`eq[0, A341412(n+1)]+1`
-/

namespace A056745.P9565937910800955224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341412 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056745.P9565937910800955224

/-! ## A056745.P8226018973368868432

`record[(1-A341412(n+1))*A004442(n)]`
-/

namespace A056745.P8226018973368868432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A341412 (n + 1)) * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056745.P8226018973368868432

/-! ## A056745.P11674740263590232616

`record[A106609(n+1)/(A341412(n+1)+1)]`
-/

namespace A056745.P11674740263590232616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106609 (n + 1) : ℚ) / (A341412 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056745.P11674740263590232616

/-! ## A056745.P10399952443884821536

`record[(1-A341412(n+1))*A132739(n+1)]`
-/

namespace A056745.P10399952443884821536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A341412 (n + 1)) * A132739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056745.P10399952443884821536

/-! ## A056745.P6278260661219968232

`record[A008619(2*n)/(A341412(n+1)+1)]`
-/

namespace A056745.P6278260661219968232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A341412 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056745.P6278260661219968232

/-!
# A056746: Number of raw solutions to Hi-Q puzzle with n holes on a side, any initial peg removed.

The programs for A056746, there is no canonical definition to state claims against.
-/

/-! ## A056746.P8156894458130813976

`A328180(A335132(n!))`
-/

namespace A056746.P8156894458130813976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328180 (A335132 (Nat.factorial n)).toNat

end

end A056746.P8156894458130813976

/-!
# A056750: Numbers n such that n | 7^n + 6^n + 5^n + 4^n + 3^n + 2^n + 1^n.

The programs for A056750, there is no canonical definition to state claims against.
-/

/-! ## A056750.P1173670318552155612

`eq[0, A341413(n+1)]+1`
-/

namespace A056750.P1173670318552155612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A056750.P1173670318552155612

/-! ## A056750.P7798379396320711336

`record[gcd(A000027(n+1), A341413(n+1))]`
-/

namespace A056750.P7798379396320711336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A341413 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056750.P7798379396320711336

/-! ## A056750.P18362052207209442842

`lt[A341413(n+1)%A008486(n), 1]+1`
-/

namespace A056750.P18362052207209442842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341413 (n + 1)) (A008486 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A056750.P18362052207209442842

/-! ## A056750.P5715432704558122097

`eq[A000007(n), A341413(A028310(n))]`
-/

namespace A056750.P5715432704558122097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341413 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056750.P5715432704558122097

/-! ## A056750.P12376576827103432300

`eq[A000038(n), A341413(A028310(n))]`
-/

namespace A056750.P12376576827103432300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341413 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056750.P12376576827103432300

/-!
# A056751: Numbers n such that n | 8^n + 7^n + 6^n + 5^n + 4^n + 3^n + 2^n + 1^n.

The programs for A056751, there is no canonical definition to state claims against.
-/

/-! ## A056751.P15288165714552008768

`record[∏{e}[A206947(n)/2, #+1]+n]`
-/

namespace A056751.P15288165714552008768
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206947 n : ℚ) / 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f2 n)).natAbs p + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056751.P15288165714552008768

/-! ## A056751.P2755486795718026884

`∑[A131818(A065975(n))]`
-/

namespace A056751.P2755486795718026884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A065975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056751.P2755486795718026884

/-! ## A056751.P6006822607313572295

`record[A343378(A014489(n))]`
-/

namespace A056751.P6006822607313572295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (A014489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056751.P6006822607313572295

/-! ## A056751.P515949357663284718

`A341935(A062121(n+2))`
-/

namespace A056751.P515949357663284718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A062121 (n + 2)).toNat

end

end A056751.P515949357663284718

/-! ## A056751.P4574615744973156863

`∑[A098371(A167167(n)²)]`
-/

namespace A056751.P4574615744973156863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098371 (A167167 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056751.P4574615744973156863

/-!
# A056752: Distance from n! to the nearest prime.

The programs for A056752, there is no canonical definition to state claims against.
-/

/-! ## A056752.P2959812022501672856

`abs(char[1]-A053714(n+1))`
-/

namespace A056752.P2959812022501672856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A053714 (n + 1)|

end

end A056752.P2959812022501672856

/-! ## A056752.P13639329192987934285

`lcm(A053714(n+1), A105812(n))`
-/

namespace A056752.P13639329192987934285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053714 (n + 1)) (A105812 n)

end

end A056752.P13639329192987934285

/-! ## A056752.P16561300801769560402

`abs(A053714(n+1)*A060576(n))`
-/

namespace A056752.P16561300801769560402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053714 (n + 1) * A060576 n|

end

end A056752.P16561300801769560402

/-! ## A056752.P4506660723223520946

`abs(A053714(n+1)*A134323(n+1))`
-/

namespace A056752.P4506660723223520946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053714 (n + 1) * A134323 (n + 1)|

end

end A056752.P4506660723223520946

/-! ## A056752.P12158345527607349596

`abs(A053714(n+1)-A010051(A058054(n+2)))`
-/

namespace A056752.P12158345527607349596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053714 (n + 1) - A010051 (A058054 (n + 2)).toNat|

end

end A056752.P12158345527607349596

/-! ## A056752.P8526387326302128794

`and(abs(A053714(n+1)), A052549(n))`
-/

namespace A056752.P8526387326302128794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land |A053714 (n + 1)| (A052549 n)

end

end A056752.P8526387326302128794

/-! ## A056752.P4904417423036205174

`abs(A053714(n+1)%A033933(A005235(n+1)+2))`
-/

namespace A056752.P4904417423036205174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A053714 (n + 1)) (A033933 (A005235 (n + 1) + 2).toNat)|

end

end A056752.P4904417423036205174

/-!
# A056753: Only odd numbers occur and for all k there are k numbers between any two successive occurrences of k.

The programs for A056753, there is no canonical definition to state claims against.
-/

/-! ## A056753.P4913494676213359117

`2*A007814(∑[A137780(n+3)])+1`
-/

namespace A056753.P4913494676213359117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137780 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A056753.P4913494676213359117

/-! ## A056753.P12559142282277364163

`A005408(A007814(∑[A137780(n+3)]))`
-/

namespace A056753.P12559142282277364163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137780 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A007814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A056753.P12559142282277364163

/-! ## A056753.P10187146826516005105

`A001511(∑[A093178(A221683(n+1))]²)`
-/

namespace A056753.P10187146826516005105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A221683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A056753.P10187146826516005105

/-! ## A056753.P6006374751677977144

`A001511(∑[A197342(A059268(n))]²)`
-/

namespace A056753.P6006374751677977144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197342 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A056753.P6006374751677977144

/-! ## A056753.P1520264281773322034

`A001511(gcd(A000079(n), A273857(n))²)`
-/

namespace A056753.P1520264281773322034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.gcd (A000079 n) (A273857 n) ^ 2)

end

end A056753.P1520264281773322034

/-!
# A056755: Number of n-celled polyominoes, where the cells are 1 X 2 rectangles with some of the edges of length 2 replaced by curved arcs that either sag inwards or bulge outwards.

The programs for A056755, there is no canonical definition to state claims against.
-/

/-! ## A056755.P11184436685741758763

`A056769(n)+A000010(A155116(n))`
-/

namespace A056755.P11184436685741758763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056769 n + A000010 (A155116 n).toNat

end

end A056755.P11184436685741758763

/-!
# A056757: Cube of number of divisors is larger than the number.

The programs for A056757, the canonical program `A056757.P10338499769578600041` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056757 has offset 1).

The definition of A056757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056757.P10338499769578600041

`lt[n+1, A000005(n+1)^3]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056757

/-- `lt[n+1, A000005(n+1)^3]+1` -/
def P10338499769578600041.Spec : Prop :=
  ∀ n, (P10338499769578600041.a n : ℤ) = A056757 (n + 1)

theorem P10338499769578600041.correct : P10338499769578600041.Spec := by
  intro n
  simp only [A056757, Nat.add_sub_cancel]

end A056757

/-! ## A056757.P1865190096330798492

`lt[n+1, A319089(n+1)]+1`
-/

namespace A056757.P1865190096330798492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A056757.P1865190096330798492

namespace A056757

/-- `lt[n+1, A319089(n+1)]+1` -/
def P1865190096330798492.Spec : Prop :=
  ∀ n, (P1865190096330798492.a n : ℤ) = A056757 (n + 1)

end A056757

/-! ## A056757.P14413963181817488901

`lt[A048766(n+1), A183063(2*(n+1))]+1`
-/

namespace A056757.P14413963181817488901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A056757.P14413963181817488901

namespace A056757

/-- `lt[A048766(n+1), A183063(2*(n+1))]+1` -/
def P14413963181817488901.Spec : Prop :=
  ∀ n, (P14413963181817488901.a n : ℤ) = A056757 (n + 1)

end A056757

/-! ## A056757.P2731748962272162972

`lt[A048766(n), A183063(A004277(n))]`
-/

namespace A056757.P2731748962272162972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056757.P2731748962272162972

namespace A056757

/-- `lt[A048766(n), A183063(A004277(n))]` -/
def P2731748962272162972.Spec : Prop :=
  ∀ n, (P2731748962272162972.a n : ℤ) = A056757 (n + 1)

end A056757

/-! ## A056757.P7157978393895627513

`lt[A048766(n), A277692(2*n+1)]`
-/

namespace A056757.P7157978393895627513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056757.P7157978393895627513

namespace A056757

/-- `lt[A048766(n), A277692(2*n+1)]` -/
def P7157978393895627513.Spec : Prop :=
  ∀ n, (P7157978393895627513.a n : ℤ) = A056757 (n + 1)

end A056757

/-! ## A056757.P14081807841610100264

`lt[A048766(n), A077462(A118759(n))]`
-/

namespace A056757.P14081807841610100264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A118759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056757.P14081807841610100264

namespace A056757

/-- `lt[A048766(n), A077462(A118759(n))]` -/
def P14081807841610100264.Spec : Prop :=
  ∀ n, (P14081807841610100264.a n : ℤ) = A056757 (n + 1)

end A056757

/-! ## A056757.P14343578280930179602

`lt[A117707(n), A194274(A077462(n))]`
-/

namespace A056757.P14343578280930179602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A077462 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056757.P14343578280930179602

namespace A056757

/-- `lt[A117707(n), A194274(A077462(n))]` -/
def P14343578280930179602.Spec : Prop :=
  ∀ n, (P14343578280930179602.a n : ℤ) = A056757 (n + 1)

end A056757

/-! ## A056757.P11651006974004918935

`lt[A272881(n+1), A226602(n)²]`
-/

namespace A056757.P11651006974004918935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056757.P11651006974004918935

namespace A056757

/-- `lt[A272881(n+1), A226602(n)²]` -/
def P11651006974004918935.Spec : Prop :=
  ∀ n, (P11651006974004918935.a n : ℤ) = A056757 (n + 1)

end A056757

/-!
# A056758: Numbers n for which d(n)^3 < n.

The programs for A056758, the canonical program `A056758.P11564189466502340985` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056758 has offset 1).

The definition of A056758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056758.P10791323255640149419

`lt[A000005(n+1)^3, n+1]+1`
-/

namespace A056758.P10791323255640149419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A056758.P10791323255640149419

namespace A056758

/-- `lt[A000005(n+1)^3, n+1]+1` -/
def P10791323255640149419.Spec : Prop :=
  ∀ n, (P10791323255640149419.a n : ℤ) = A056758 (n + 1)

end A056758

/-! ## A056758.P7191765944078130456

`lt[A000578(A000005(n+1)), n+1]+1`
-/

namespace A056758.P7191765944078130456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000005 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A056758.P7191765944078130456

namespace A056758

/-- `lt[A000578(A000005(n+1)), n+1]+1` -/
def P7191765944078130456.Spec : Prop :=
  ∀ n, (P7191765944078130456.a n : ℤ) = A056758 (n + 1)

end A056758

/-! ## A056758.P12658344080212713575

`lt[A000005(n+1)-1, A048766(n)]+1`
-/

namespace A056758.P12658344080212713575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A056758.P12658344080212713575

namespace A056758

/-- `lt[A000005(n+1)-1, A048766(n)]+1` -/
def P12658344080212713575.Spec : Prop :=
  ∀ n, (P12658344080212713575.a n : ℤ) = A056758 (n + 1)

end A056758

/-! ## A056758.P11564189466502340985

`lt[∏{e}[n, #+1]^3, n]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056758

/-- `lt[∏{e}[n, #+1]^3, n]` -/
def P11564189466502340985.Spec : Prop :=
  ∀ n, (P11564189466502340985.a n : ℤ) = A056758 (n + 1)

theorem P11564189466502340985.correct : P11564189466502340985.Spec := by
  intro n
  simp only [A056758, Nat.add_sub_cancel]

end A056758

/-! ## A056758.P15823476900754500476

`lt[A000578(A032741(n)+1), n]`
-/

namespace A056758.P15823476900754500476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A032741 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A056758.P15823476900754500476

namespace A056758

/-- `lt[A000578(A032741(n)+1), n]` -/
def P15823476900754500476.Spec : Prop :=
  ∀ n, (P15823476900754500476.a n : ℤ) = A056758 (n + 1)

end A056758

/-! ## A056758.P10678135824238557374

`lt[A032741(n+1), A048766(n)]+1`
-/

namespace A056758.P10678135824238557374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A056758.P10678135824238557374

namespace A056758

/-- `lt[A032741(n+1), A048766(n)]+1` -/
def P10678135824238557374.Spec : Prop :=
  ∀ n, (P10678135824238557374.a n : ℤ) = A056758 (n + 1)

end A056758

/-! ## A056758.P14784960613847320643

`lt[A028310(A032741(n)), A048766(n)]`
-/

namespace A056758.P14784960613847320643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056758.P14784960613847320643

namespace A056758

/-- `lt[A028310(A032741(n)), A048766(n)]` -/
def P14784960613847320643.Spec : Prop :=
  ∀ n, (P14784960613847320643.a n : ℤ) = A056758 (n + 1)

end A056758

/-! ## A056758.P12451129320663657074

`lt[A032741(A233583(n+1)), A048766(n)]`
-/

namespace A056758.P12451129320663657074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A056758.P12451129320663657074

namespace A056758

/-- `lt[A032741(A233583(n+1)), A048766(n)]` -/
def P12451129320663657074.Spec : Prop :=
  ∀ n, (P12451129320663657074.a n : ℤ) = A056758 (n + 1)

end A056758

/-!
# A056759: The 17 prime powers k = p^w such that d(p^w)^3 > p^w where d = A000005().

The programs for A056759, there is no canonical definition to state claims against.
-/

/-! ## A056759.P5859618162157171729

`record[A028233(A056757(n+1))]`
-/

namespace A056759.P5859618162157171729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A056757 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056759.P5859618162157171729

/-! ## A056759.P1389709230192994681

`filter[A056757(n+1), A010055(#)]`
-/

namespace A056759.P1389709230192994681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A056759.P1389709230192994681

/-! ## A056759.P8884908481917417953

`filter[A056757(n+1), A069513(#)]`
-/

namespace A056759.P8884908481917417953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A056759.P8884908481917417953

/-! ## A056759.P7322357211966867388

`∩[A056757(n+1), A243497(n)]`
-/

namespace A056759.P7322357211966867388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056759.P7322357211966867388

/-! ## A056759.P1122005061154635160

`∩[A000961(n+1), A056757(n+1)]`
-/

namespace A056759.P1122005061154635160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056759.P1122005061154635160

/-!
# A056760: Integers with exactly 2 prime divisors such that the cube of the number of divisors exceeds the number.

The programs for A056760, the canonical program `A056760.P7714240773050569011` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056760 has offset 1).

The definition of A056760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056760.P7714240773050569011

`∩[A007774(n+1), A056757(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A056760

/-- `∩[A007774(n+1), A056757(n+1)]` -/
def P7714240773050569011.Spec : Prop :=
  ∀ n, (P7714240773050569011.a n : ℤ) = A056760 (n + 1)

theorem P7714240773050569011.correct : P7714240773050569011.Spec := by
  intro n
  simp only [A056760, Nat.add_sub_cancel]

end A056760

/-! ## A056760.P7084756709062706208

`filter[A056757(n+1), A215480(#)]`
-/

namespace A056760.P7084756709062706208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A056760.P7084756709062706208

namespace A056760

/-- `filter[A056757(n+1), A215480(#)]` -/
def P7084756709062706208.Spec : Prop :=
  ∀ n, P7084756709062706208.a n = A056760 (n + 1)

end A056760

/-! ## A056760.P11363456718096871593

`A030231(lt[A070048(n+3), A123323(n+1)])`
-/

namespace A056760.P11363456718096871593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070048 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A056760.P11363456718096871593

namespace A056760

/-- `A030231(lt[A070048(n+3), A123323(n+1)])` -/
def P11363456718096871593.Spec : Prop :=
  ∀ n, P11363456718096871593.a n = A056760 (n + 1)

end A056760

/-! ## A056760.P357892805036339789

`A007774(lt[A185216(n), A028952(n+1)])`
-/

namespace A056760.P357892805036339789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A056760.P357892805036339789

namespace A056760

/-- `A007774(lt[A185216(n), A028952(n+1)])` -/
def P357892805036339789.Spec : Prop :=
  ∀ n, P357892805036339789.a n = A056760 (n + 1)

end A056760

/-! ## A056760.P10162827813277091619

`A007774(lt[A090244(n), A296204(n+1)])`
-/

namespace A056760.P10162827813277091619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A056760.P10162827813277091619

namespace A056760

/-- `A007774(lt[A090244(n), A296204(n+1)])` -/
def P10162827813277091619.Spec : Prop :=
  ∀ n, P10162827813277091619.a n = A056760 (n + 1)

end A056760

/-!
# A056761: Odd numbers less than the cube of their number of divisors.

The programs for A056761, the canonical program `A056761.P3347424074707073657` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056761 has offset 1).

The definition of A056761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A056761.P13769982732778855506

`∩[2*n+1, A056757(n+1)]`
-/

namespace A056761.P13769982732778855506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056761.P13769982732778855506

namespace A056761

/-- `∩[2*n+1, A056757(n+1)]` -/
def P13769982732778855506.Spec : Prop :=
  ∀ n, (P13769982732778855506.a n : ℤ) = A056761 (n + 1)

end A056761

/-! ## A056761.P3347424074707073657

`record[A000265(A056757(n+2))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A056761

/-- `record[A000265(A056757(n+2))]` -/
def P3347424074707073657.Spec : Prop :=
  ∀ n, P3347424074707073657.a n = A056761 (n + 1)

theorem P3347424074707073657.correct : P3347424074707073657.Spec := by
  intro n
  simp only [A056761, Nat.add_sub_cancel]

end A056761

/-! ## A056761.P11629711279721022545

`∩[A056757(n+1), A004273(n)]`
-/

namespace A056761.P11629711279721022545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056761.P11629711279721022545

namespace A056761

/-- `∩[A056757(n+1), A004273(n)]` -/
def P11629711279721022545.Spec : Prop :=
  ∀ n, (P11629711279721022545.a n : ℤ) = A056761 (n + 1)

end A056761

/-! ## A056761.P1070210258276728130

`∩[A056757(n+1), A060747(n)]`
-/

namespace A056761.P1070210258276728130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056761.P1070210258276728130

namespace A056761

/-- `∩[A056757(n+1), A060747(n)]` -/
def P1070210258276728130.Spec : Prop :=
  ∀ n, (P1070210258276728130.a n : ℤ) = A056761 (n + 1)

end A056761

/-! ## A056761.P15329705522420795949

`record[A093178(A056757(xor(1, n)+1))]`
-/

namespace A056761.P15329705522420795949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A056757 (Nat.xor 1 n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056761.P15329705522420795949

namespace A056761

/-- `record[A093178(A056757(xor(1, n)+1))]` -/
def P15329705522420795949.Spec : Prop :=
  ∀ n, P15329705522420795949.a n = A056761 (n + 1)

end A056761

/-! ## A056761.P57244013278394748

`∩[A056757(n+1), A144396(n+1)]`
-/

namespace A056761.P57244013278394748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056761.P57244013278394748

namespace A056761

/-- `∩[A056757(n+1), A144396(n+1)]` -/
def P57244013278394748.Spec : Prop :=
  ∀ n, (P57244013278394748.a n : ℤ) = A056761 (n + 1)

end A056761

/-! ## A056761.P16475719460047013720

`record[A093178(A056757(n+1)+A000007(n))]`
-/

namespace A056761.P16475719460047013720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A056757 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056761.P16475719460047013720

namespace A056761

/-- `record[A093178(A056757(n+1)+A000007(n))]` -/
def P16475719460047013720.Spec : Prop :=
  ∀ n, P16475719460047013720.a n = A056761 (n + 1)

end A056761

/-! ## A056761.P10665406733107598512

`record[A093178(A056757(n+1))+A000038(n)]`
-/

namespace A056761.P10665406733107598512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A056757 (n + 1)).toNat + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056761.P10665406733107598512

namespace A056761

/-- `record[A093178(A056757(n+1))+A000038(n)]` -/
def P10665406733107598512.Spec : Prop :=
  ∀ n, P10665406733107598512.a n = A056761 (n + 1)

end A056761

/-! ## A056761.P6535314908712950019

`filter[A056757(n+1), A000035(#)]`
-/

namespace A056761.P6535314908712950019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A056761.P6535314908712950019

namespace A056761

/-- `filter[A056757(n+1), A000035(#)]` -/
def P6535314908712950019.Spec : Prop :=
  ∀ n, P6535314908712950019.a n = A056761 (n + 1)

end A056761

/-! ## A056761.P248525908240408320

`filter[A056757(n+1), A266070(#)]`
-/

namespace A056761.P248525908240408320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A056761.P248525908240408320

namespace A056761

/-- `filter[A056757(n+1), A266070(#)]` -/
def P248525908240408320.Spec : Prop :=
  ∀ n, P248525908240408320.a n = A056761 (n + 1)

end A056761

/-! ## A056761.P15744846592152421995

`filter[A056757(n+2), A266719(#)]`
-/

namespace A056761.P15744846592152421995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A056761.P15744846592152421995

namespace A056761

/-- `filter[A056757(n+2), A266719(#)]` -/
def P15744846592152421995.Spec : Prop :=
  ∀ n, P15744846592152421995.a n = A056761 (n + 1)

end A056761

/-! ## A056761.P9354832030725202236

`filter[A056757(n+2), A296066(#)]`
-/

namespace A056761.P9354832030725202236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A056761.P9354832030725202236

namespace A056761

/-- `filter[A056757(n+2), A296066(#)]` -/
def P9354832030725202236.Spec : Prop :=
  ∀ n, P9354832030725202236.a n = A056761 (n + 1)

end A056761

/-!
# A056762: Number of terms in A056761 (i.e., odd numbers from A056757) between 2^(n-1) and 2^n.

The programs for A056762, there is no canonical definition to state claims against.
-/

/-! ## A056762.P5191514206918438020

`A056765(n+1)-A056765(A028310(n))`
-/

namespace A056762.P5191514206918438020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056765 (n + 1) - A056765 (A028310 n).toNat

end

end A056762.P5191514206918438020

/-!
# A056763: Number of integers in the range (2^(n-1), 2^n] for which d(k)^3 > k holds, i.e., the cube of the number of divisors of k exceeds the number k.

The programs for A056763, there is no canonical definition to state claims against.
-/

/-! ## A056763.P8565981495411428175

`Δ[A056764(A000007(n)+n)]+C(2, n+2)`
-/

namespace A056763.P8565981495411428175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056764 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A056763.P8565981495411428175

/-! ## A056763.P307715641638989191

`A000007(n)+Δ[A056764(A000007(n)+n)]`
-/

namespace A056763.P307715641638989191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056764 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A056763.P307715641638989191

/-! ## A056763.P3281984011001891083

`A168264(n+1)-A010894(A315413(n))`
-/

namespace A056763.P3281984011001891083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168264 (n + 1) - A010894 ((A315413 n).toNat + 21)

end

end A056763.P3281984011001891083

/-!
# A056764: Number of integers k not exceeding 2^n such that the cube of number of divisors [A000005(k)] is larger than k.

The programs for A056764, there is no canonical definition to state claims against.
-/

/-! ## A056764.P10595794525897944775

`∑[A056763(n+1)]`
-/

namespace A056764.P10595794525897944775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056764.P10595794525897944775

/-! ## A056764.P9829858523029995172

`root(∑[A056763(Δ[n²]-n)], 2)²`
-/

namespace A056764.P9829858523029995172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056763 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A056764.P9829858523029995172

/-! ## A056764.P17336772670753353157

`A000027(∑[A056763(Δ[n²]-n)])`
-/

namespace A056764.P17336772670753353157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056763 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056764.P17336772670753353157

/-! ## A056764.P7016521013406266996

`A056763(n+1)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A056764.P7016521013406266996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056763 (n + 1) + a |A024000 n|.toNat

end

end A056764.P7016521013406266996

/-! ## A056764.P12801241406441857245

`A000203(((-1)^n)²)*∑[A056763(Δ[n²]-n)]`
-/

namespace A056764.P12801241406441857245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056763 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056764.P12801241406441857245

/-!
# A056765: Number of integers from A056757 (defined by A000005(x)^3 > x) not exceeding 2^n.

The programs for A056765, there is no canonical definition to state claims against.
-/

/-! ## A056765.P13166101449111069955

`A056762(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A056765.P13166101449111069955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056762 (n + 1) + a (n - 1)

end

end A056765.P13166101449111069955

/-!
# A056766: Smallest term of A056757 (numbers for which the cube of the number of divisors exceeds the number) between 2^(n-1) and 2^n.

The programs for A056766, there is no canonical definition to state claims against.
-/

/-! ## A056766.P9614954685311596097

`A316626(A358039(n+1)+A000079(n+2))`
-/

namespace A056766.P9614954685311596097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316626 (A358039 (n + 1) + A000079 (n + 2)).toNat

end

end A056766.P9614954685311596097

/-! ## A056766.P8411746102338460765

`A351202(A129374(n))+2^n`
-/

namespace A056766.P8411746102338460765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351202 (A129374 n).toNat + (2 ^ n : ℤ)

end

end A056766.P8411746102338460765

/-! ## A056766.P5069430395260851446

`A003647(A019376(n+1))+2^n`
-/

namespace A056766.P5069430395260851446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003647 (A019376 (n + 1)).toNat + (2 ^ n : ℤ)

end

end A056766.P5069430395260851446

/-! ## A056766.P1308484781969833056

`A072670(A052542(n))+A000051(n)`
-/

namespace A056766.P1308484781969833056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A052542 n).toNat + A000051 n

end

end A056766.P1308484781969833056

/-! ## A056766.P11818653110780804664

`A000079(n)+A129654(A170894(n)+3)-1`
-/

namespace A056766.P11818653110780804664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A129654 (A170894 n + 3).toNat - 1)

end

end A056766.P11818653110780804664

/-!
# A056767: Largest number of binary size n (i.e., between (n-1)-th and n-th powers of 2) with the following property: cube of its number of divisors is larger than the number itself.

The programs for A056767, there is no canonical definition to state claims against.
-/

/-! ## A056767.P6291686545977597493

`A056757(A056764(n+1))`
-/

namespace A056767.P6291686545977597493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (A056764 (n + 1)).toNat

end

end A056767.P6291686545977597493

/-! ## A056767.P13943455260814174865

`A056757(∑[A056763(n+1)])`
-/

namespace A056767.P13943455260814174865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056767.P13943455260814174865

/-! ## A056767.P6499225851734099869

`A020725(2^(n+1)-A120004(n))`
-/

namespace A056767.P6499225851734099869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ((2 ^ (n + 1) : ℤ) - A120004 n).toNat

end

end A056767.P6499225851734099869

/-! ## A056767.P10856060608925179819

`A016116(2*(n+1))-A002186(A018843(2*(n+2)))`
-/

namespace A056767.P10856060608925179819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * (n + 1)) - A002186 (A018843 (2 * (n + 2))).toNat

end

end A056767.P10856060608925179819

/-! ## A056767.P4010761308909677837

`A055748(A126646(n+1)-A070565(n))`
-/

namespace A056767.P4010761308909677837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055748 (A126646 (n + 1) - A070565 n).toNat

end

end A056767.P4010761308909677837

/-!
# A056768: Number of partitions of the n-th prime into parts that are all primes.

The programs for A056768, there is no canonical definition to state claims against.
-/

/-! ## A056768.P3535443739565305450

`A168470(n+1)+1`
-/

namespace A056768.P3535443739565305450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168470 (n + 1) + 1

end

end A056768.P3535443739565305450

/-! ## A056768.P8171011812020333763

`A000607(p?[xor(1, n)])`
-/

namespace A056768.P8171011812020333763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A056768.P8171011812020333763

/-! ## A056768.P6837272308880916587

`A000607(Δ[A007504(n)])`
-/

namespace A056768.P6837272308880916587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (n + 1) - f1 n).toNat

end

end A056768.P6837272308880916587

/-! ## A056768.P11627073605792550494

`A000607(A000040(n+1))`
-/

namespace A056768.P11627073605792550494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A000040 (n + 1)).toNat

end

end A056768.P11627073605792550494

/-! ## A056768.P8175663636369763601

`A000607(A008578(n+2))`
-/

namespace A056768.P8175663636369763601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A008578 (n + 2)).toNat

end

end A056768.P8175663636369763601

/-! ## A056768.P3655771113780828661

`A000607(A175787(n+2))`
-/

namespace A056768.P3655771113780828661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A175787 (n + 2)).toNat

end

end A056768.P3655771113780828661

/-! ## A056768.P5246046139020981491

`A000607(A182986(n+2))`
-/

namespace A056768.P5246046139020981491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A182986 (n + 2)).toNat

end

end A056768.P5246046139020981491

/-! ## A056768.P12677325886789277525

`A000607(eq[0, A237053(n)])`
-/

namespace A056768.P12677325886789277525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056768.P12677325886789277525

/-! ## A056768.P15360588391760939315

`A000607(sqrt(A001248(n+1)))`
-/

namespace A056768.P15360588391760939315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A056768.P15360588391760939315

/-! ## A056768.P1966273535819105149

`A000607(record[A006530(n+2)])`
-/

namespace A056768.P1966273535819105149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056768.P1966273535819105149

/-! ## A056768.P4931456373129918381

`A000607(record[A008472(n+2)])`
-/

namespace A056768.P4931456373129918381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056768.P4931456373129918381

/-! ## A056768.P10675473891619433593

`A000607(record[A020639(n+2)])`
-/

namespace A056768.P10675473891619433593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A056768.P10675473891619433593

/-! ## A056768.P9872161419757446938

`A000607(A006093(n+1)+1)`
-/

namespace A056768.P9872161419757446938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A006093 (n + 1) + 1).toNat

end

end A056768.P9872161419757446938

/-! ## A056768.P5699055017273978087

`A000607(A008864(n+1)-1)`
-/

namespace A056768.P5699055017273978087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A008864 (n + 1) - 1).toNat

end

end A056768.P5699055017273978087

/-! ## A056768.P10824727447894212944

`A000607(A040976(n+1)+2)`
-/

namespace A056768.P10824727447894212944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A040976 (n + 1) + 2).toNat

end

end A056768.P10824727447894212944

/-! ## A056768.P9048092987440743416

`A000607(A052147(n+1)-2)`
-/

namespace A056768.P9048092987440743416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A052147 (n + 1) - 2).toNat

end

end A056768.P9048092987440743416

/-! ## A056768.P8080606400663415539

`A000607(A100484(n+1)/2)`
-/

namespace A056768.P8080606400663415539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A056768.P8080606400663415539

/-! ## A056768.P15940567257694503539

`A000607(A001747(n+2)/2)`
-/

namespace A056768.P15940567257694503539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A056768.P15940567257694503539

/-! ## A056768.P7188312730327177689

`A000607(eq[0, A107393(n)+1])`
-/

namespace A056768.P7188312730327177689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A056768.P7188312730327177689

/-! ## A056768.P14829072793402422133

`A000607(A014692(n+1)+n)`
-/

namespace A056768.P14829072793402422133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A056768.P14829072793402422133

/-!
# A056769: Puzzle 2, related to polyominoes.

The programs for A056769, there is no canonical definition to state claims against.
-/

/-! ## A056769.P11446205545341108961

`char[13*n]+Δ[A323433(n²)]`
-/

namespace A056769.P11446205545341108961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323433 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A056769.P11446205545341108961

/-!
# A056770: Smallest number that is n times the product of its digits or 0 if impossible.

The programs for A056770, there is no canonical definition to state claims against.
-/

/-! ## A056770.P11608474337164011840

`A343050(A339076(n+1)^A348416(n+1))`
-/

namespace A056770.P11608474337164011840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343050 (SequenceMachineLib.roundAway ((A339076 (n + 1) : ℚ) ^ (A348416 (n + 1) : ℤ))).toNat

end

end A056770.P11608474337164011840

/-!
# A056771: a(n) = a(-n) = 34*a(n-1) - a(n-2), and a(0)=1, a(1)=17.

The programs for A056771, the canonical program `A056771.P8974175288901406302` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056771 has offset 0).

The definition of A056771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `34*a(n-1)-a(n-2)` (program `A056771.P8974175288901406302`, by `A056771.P8974175288901406302.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056771.P8974175288901406302

`34*a(n-1)-a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056771

/-- `34*a(n-1)-a(n-2)` -/
def P8974175288901406302.Spec : Prop :=
  ∀ n, P8974175288901406302.a n = A056771 n

theorem P8974175288901406302.correct : P8974175288901406302.Spec := by
  intro n
  simp only [A056771]

end A056771

/-! ## A056771.P9663707090193821447

`A001541(2*n)`
-/

namespace A056771.P9663707090193821447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (2 * n)

end

end A056771.P9663707090193821447

namespace A056771

/-- `A001541(2*n)` -/
def P9663707090193821447.Spec : Prop :=
  ∀ n, P9663707090193821447.a n = A056771 n

end A056771

/-! ## A056771.P6412017654016368096

`16*A001110(n)+1`
-/

namespace A056771.P6412017654016368096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001110 n + 1

end

end A056771.P6412017654016368096

namespace A056771

/-- `16*A001110(n)+1` -/
def P6412017654016368096.Spec : Prop :=
  ∀ n, P6412017654016368096.a n = A056771 n

end A056771

/-! ## A056771.P17982301213925807440

`(4*A001109(n))²+1`
-/

namespace A056771.P17982301213925807440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A001109 n) ^ 2 + 1

end

end A056771.P17982301213925807440

namespace A056771

/-- `(4*A001109(n))²+1` -/
def P17982301213925807440.Spec : Prop :=
  ∀ n, P17982301213925807440.a n = A056771 n

end A056771

/-! ## A056771.P5328494325509589531

`(1/(17+12*sqrt(2))^n+(17+12*sqrt(2))^n)/2`
-/

namespace A056771.P5328494325509589531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / (17 + 12 * Real.sqrt (2 : ℝ)) ^ n + (17 + 12 * Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A056771.P5328494325509589531

namespace A056771

/-- `(1/(17+12*sqrt(2))^n+(17+12*sqrt(2))^n)/2` -/
def P5328494325509589531.Spec : Prop :=
  ∀ n, P5328494325509589531.a n = (A056771 n : ℝ)

end A056771

/-! ## A056771.P8587391101497378621

`A144534(2*n)`
-/

namespace A056771.P8587391101497378621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144534 (2 * n)

end

end A056771.P8587391101497378621

namespace A056771

/-- `A144534(2*n)` -/
def P8587391101497378621.Spec : Prop :=
  ∀ n, P8587391101497378621.a n = A056771 n

end A056771

/-! ## A056771.P1996705729497697838

`A001333(4*n)`
-/

namespace A056771.P1996705729497697838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (4 * n)

end

end A056771.P1996705729497697838

namespace A056771

/-- `A001333(4*n)` -/
def P1996705729497697838.Spec : Prop :=
  ∀ n, P1996705729497697838.a n = A056771 n

end A056771

/-! ## A056771.P13747451041355273518

`A079496(4*n)`
-/

namespace A056771.P13747451041355273518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (4 * n)

end

end A056771.P13747451041355273518

namespace A056771

/-- `A079496(4*n)` -/
def P13747451041355273518.Spec : Prop :=
  ∀ n, P13747451041355273518.a n = A056771 n

end A056771

/-! ## A056771.P13130299886566475935

`A123335(4*n)`
-/

namespace A056771.P13130299886566475935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (4 * n)

end

end A056771.P13130299886566475935

namespace A056771

/-- `A123335(4*n)` -/
def P13130299886566475935.Spec : Prop :=
  ∀ n, P13130299886566475935.a n = A056771 n

end A056771

/-! ## A056771.P3257974140936442037

`A119016(8*n)`
-/

namespace A056771.P3257974140936442037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (8 * n)

end

end A056771.P3257974140936442037

namespace A056771

/-- `A119016(8*n)` -/
def P3257974140936442037.Spec : Prop :=
  ∀ n, P3257974140936442037.a n = A056771 n

end A056771

/-!
# A056772: Numbers k such that phi(k+4) = phi(k) + 4, where phi(k) = A000010(k) is Euler's totient function.

The programs for A056772, there is no canonical definition to state claims against.
-/

/-! ## A056772.P18248952291575350722

`∪[A015913(n+1), A056773(n+1)]`
-/

namespace A056772.P18248952291575350722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056772.P18248952291575350722

/-! ## A056772.P17697372210853981657

`∪[A056773(n+1), A087679(n+1)-2]`
-/

namespace A056772.P17697372210853981657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056772.P17697372210853981657

/-! ## A056772.P11066280949486248534

`eq[A051953(n+1), A051953(n+5)]+1`
-/

namespace A056772.P11066280949486248534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056772.P11066280949486248534

/-! ## A056772.P14044611665820930015

`eq[A062830(n+1), A062830(n+5)]+1`
-/

namespace A056772.P14044611665820930015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056772.P14044611665820930015

/-! ## A056772.P3319312112097858680

`eq[A219428(n+1), A219428(n+5)]+1`
-/

namespace A056772.P3319312112097858680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056772.P3319312112097858680

/-! ## A056772.P2503357956558220776

`eq[A016035(n+2), A016035(n+6)]+2`
-/

namespace A056772.P2503357956558220776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A056772.P2503357956558220776

/-! ## A056772.P3191486789832974006

`eq[A051953(A065033(2*n)), A051953(n+4)]`
-/

namespace A056772.P3191486789832974006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056772.P3191486789832974006

/-!
# A056773: Composite n such that phi(n+4) = phi(n)+4.

The programs for A056773, there is no canonical definition to state claims against.
-/

/-! ## A056773.P14477655068116874785

`∩[2*n, A056772(n+1)]`
-/

namespace A056773.P14477655068116874785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056773.P14477655068116874785

/-! ## A056773.P4768456382755961792

`filter[A056772(n+1), A005171(#)]`
-/

namespace A056773.P4768456382755961792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A056773.P4768456382755961792

/-! ## A056773.P15165386485210430427

`filter[A056772(n+1), A066247(#)]`
-/

namespace A056773.P15165386485210430427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A056773.P15165386485210430427

/-! ## A056773.P479276456031421884

`filter[A056772(n+1), A202238(#)]`
-/

namespace A056773.P479276456031421884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A056773.P479276456031421884

/-! ## A056773.P12566357417226445964

`filter[A056772(n+1), A323170(#)]`
-/

namespace A056773.P12566357417226445964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A056773.P12566357417226445964

/-! ## A056773.P17266396335458895710

`filter[A056772(n+1), A354034(#)]`
-/

namespace A056773.P17266396335458895710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A056773.P17266396335458895710

/-! ## A056773.P5782289343412096399

`∩[A056772(n+1), A091212(n+1)]`
-/

namespace A056773.P5782289343412096399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056773.P5782289343412096399

/-! ## A056773.P13562227996847995140

`∩[A056772(n+1), A177712(n+1)]`
-/

namespace A056773.P13562227996847995140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056773.P13562227996847995140

/-! ## A056773.P14019328209294194786

`∩[A056772(n+1), A192991(n+1)]`
-/

namespace A056773.P14019328209294194786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056773.P14019328209294194786

/-!
# A056774: Composite n such that phi(n+2) = phi(n)+2.

The programs for A056774, there is no canonical definition to state claims against.
-/

/-! ## A056774.P11636361211770412071

`∩[A001838(n+1), A330703(n+1)]`
-/

namespace A056774.P11636361211770412071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056774.P11636361211770412071

/-! ## A056774.P17274452330527430786

`A001838(eq[1, A056853(n+1)%2]+1)`
-/

namespace A056774.P17274452330527430786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056853 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A056774.P17274452330527430786

/-! ## A056774.P744252573076444820

`∩[2*n, A001838(n+1)]`
-/

namespace A056774.P744252573076444820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056774.P744252573076444820

/-! ## A056774.P11963484840646907173

`filter[A001838(n+1), A359464(#)]`
-/

namespace A056774.P11963484840646907173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A056774.P11963484840646907173

/-! ## A056774.P5886995320300809729

`∩[A001838(n+1), A100367(n+1)]`
-/

namespace A056774.P5886995320300809729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056774.P5886995320300809729

/-! ## A056774.P12282312818787901563

`∩[A001838(n+1), A321193(n+1)]`
-/

namespace A056774.P12282312818787901563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056774.P12282312818787901563

/-! ## A056774.P7901185396720195135

`∩[A001838(n+1), A174164(n+1)]`
-/

namespace A056774.P7901185396720195135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056774.P7901185396720195135

/-! ## A056774.P12110519675185431621

`∩[A001838(n+1), A070162(n+1)]`
-/

namespace A056774.P12110519675185431621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056774.P12110519675185431621

/-! ## A056774.P858152425417170884

`∩[A001838(n+1), A120351(n+1)]`
-/

namespace A056774.P858152425417170884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056774.P858152425417170884

/-! ## A056774.P9282588826358851755

`filter[A001838(n+1), A005171(#)]`
-/

namespace A056774.P9282588826358851755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A056774.P9282588826358851755

/-! ## A056774.P4742647819245720155

`filter[A001838(n+1), A066247(#)]`
-/

namespace A056774.P4742647819245720155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A056774.P4742647819245720155

/-! ## A056774.P6661652809265876175

`filter[A001838(n+1), A202238(#)]`
-/

namespace A056774.P6661652809265876175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A056774.P6661652809265876175

/-! ## A056774.P2836175958370246804

`filter[A001838(n+1), A283265(#)]`
-/

namespace A056774.P2836175958370246804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A056774.P2836175958370246804

/-! ## A056774.P5317687945066851882

`filter[A001838(n+1), A323170(#)]`
-/

namespace A056774.P5317687945066851882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A056774.P5317687945066851882

/-! ## A056774.P5567713107869477063

`filter[A001838(n+1), A353672(#)]`
-/

namespace A056774.P5567713107869477063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353672 (f1 j).toNat = 1) n)

end

end A056774.P5567713107869477063

/-! ## A056774.P16541645158256768632

`filter[A001838(n+1), A354034(#)]`
-/

namespace A056774.P16541645158256768632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A056774.P16541645158256768632

/-! ## A056774.P11948842930312719738

`filter[A001838(n+1), A354097(#)]`
-/

namespace A056774.P11948842930312719738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A056774.P11948842930312719738

/-! ## A056774.P4563157577558580498

`∩[A001838(n+1), A360127(n+1)]`
-/

namespace A056774.P4563157577558580498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056774.P4563157577558580498

/-! ## A056774.P3066413810341477058

`∩[A001838(n+1), A091212(n+1)]`
-/

namespace A056774.P3066413810341477058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056774.P3066413810341477058

/-!
# A056775: Numbers k such that phi(k+12) = phi(k) + 12.

The programs for A056775, there is no canonical definition to state claims against.
-/

/-! ## A056775.P2740047280327551516

`∪[A046133(n+1), A056776(n+1)]`
-/

namespace A056775.P2740047280327551516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A056775.P2740047280327551516

/-! ## A056775.P11080779684320255960

`eq[A051953(n+1), A051953(n+13)]+1`
-/

namespace A056775.P11080779684320255960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056775.P11080779684320255960

/-! ## A056775.P16601549424020481274

`eq[A062830(n+1), A062830(n+13)]+1`
-/

namespace A056775.P16601549424020481274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056775.P16601549424020481274

/-! ## A056775.P3152874208270490867

`eq[A219428(n+1), A219428(n+13)]+1`
-/

namespace A056775.P3152874208270490867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 13)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A056775.P3152874208270490867

/-! ## A056775.P2500116701726036418

`eq[A051953(n+12), A051953(A028310(n))]`
-/

namespace A056775.P2500116701726036418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 12)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A056775.P2500116701726036418

/-! ## A056775.P10856967821298326590

`A153152(eq[A051953(n+1), A051953(n+13)])`
-/

namespace A056775.P10856967821298326590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A056775.P10856967821298326590

/-!
# A056776: Composite numbers k such that phi(k+12) = phi(k) + 12.

The programs for A056776, there is no canonical definition to state claims against.
-/

/-! ## A056776.P5109867300293354459

`filter[A056775(n+1), A354108(#)]`
-/

namespace A056776.P5109867300293354459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A056776.P5109867300293354459

/-! ## A056776.P5487890724804237280

`filter[A056775(n+1), A005171(#)]`
-/

namespace A056776.P5487890724804237280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A056776.P5487890724804237280

/-! ## A056776.P4550835377602618347

`filter[A056775(n+1), A066247(#)]`
-/

namespace A056776.P4550835377602618347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A056776.P4550835377602618347

/-! ## A056776.P12720215453076911164

`filter[A056775(n+1), A202238(#)]`
-/

namespace A056776.P12720215453076911164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A056776.P12720215453076911164

/-! ## A056776.P1086981794560788075

`∩[A056775(n+1), A264828(n+1)]`
-/

namespace A056776.P1086981794560788075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P1086981794560788075

/-! ## A056776.P16248258885236698615

`∩[A002808(n+1), A056775(n+1)]`
-/

namespace A056776.P16248258885236698615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P16248258885236698615

/-! ## A056776.P15211643431546391339

`∩[A018252(n+1), A056775(n+1)]`
-/

namespace A056776.P15211643431546391339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P15211643431546391339

/-! ## A056776.P2252716722327026014

`∩[A056775(n+1), A141468(n+1)]`
-/

namespace A056776.P2252716722327026014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P2252716722327026014

/-! ## A056776.P2352108039176655824

`∩[A056775(n+1), A271345(n+1)]`
-/

namespace A056776.P2352108039176655824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P2352108039176655824

/-! ## A056776.P12880423922035375547

`∩[A033949(n+1), A056775(n+1)]`
-/

namespace A056776.P12880423922035375547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P12880423922035375547

/-! ## A056776.P13163763667135295692

`∩[A056775(n+1), A175594(n+1)]`
-/

namespace A056776.P13163763667135295692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P13163763667135295692

/-! ## A056776.P14058218130717804938

`∩[A056775(n+1), A180634(n+1)]`
-/

namespace A056776.P14058218130717804938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P14058218130717804938

/-! ## A056776.P5871957444597393638

`∩[A056775(n+1), A346608(n+1)]`
-/

namespace A056776.P5871957444597393638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P5871957444597393638

/-! ## A056776.P2972659909164402625

`∩[A056775(n+1), A385756(n+1)]`
-/

namespace A056776.P2972659909164402625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P2972659909164402625

/-! ## A056776.P15190573864938945041

`∩[A009188(n+1), A056775(n+1)]`
-/

namespace A056776.P15190573864938945041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P15190573864938945041

/-! ## A056776.P4523318268189156884

`∩[A056775(n+1), A138593(n+1)]`
-/

namespace A056776.P4523318268189156884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P4523318268189156884

/-! ## A056776.P17056922905325706641

`∩[A056775(n+1), A175526(n+1)]`
-/

namespace A056776.P17056922905325706641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P17056922905325706641

/-! ## A056776.P10003441415728659243

`∩[A056775(n+1), A257586(n+1)]`
-/

namespace A056776.P10003441415728659243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A056776.P10003441415728659243

/-!
# A056777: Composite numbers k such that both phi(k+12) = phi(k) + 12 and sigma(k+12) = sigma(k) + 12.

The programs for A056777, there is no canonical definition to state claims against.
-/

/-! ## A056777.P1152339984144808006

`A173037(n+1)²-16`
-/

namespace A056777.P1152339984144808006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173037 (n + 1) ^ 2 - 16

end

end A056777.P1152339984144808006

/-! ## A056777.P251309386265800789

`(A136720(n+1)+2)²-16`
-/

namespace A056777.P251309386265800789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136720 (n + 1) + 2) ^ 2 - 16

end

end A056777.P251309386265800789

/-! ## A056777.P11039518528653317929

`(A007530(n+1)+4)²-16`
-/

namespace A056777.P11039518528653317929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007530 (n + 1) + 4) ^ 2 - 16

end

end A056777.P11039518528653317929

/-! ## A056777.P6000320555944850581

`(A090258(n+1)-4)²-16`
-/

namespace A056777.P6000320555944850581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090258 (n + 1) - 4) ^ 2 - 16

end

end A056777.P6000320555944850581

/-! ## A056777.P4912207887106778619

`(A125855(n+1)+5)²-16`
-/

namespace A056777.P4912207887106778619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A125855 (n + 1) + 5) ^ 2 - 16

end

end A056777.P4912207887106778619

/-! ## A056777.P6797595926235834185

`A007530(n+1)*A090258(n+1)`
-/

namespace A056777.P6797595926235834185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1) * A090258 (n + 1)

end

end A056777.P6797595926235834185

/-! ## A056777.P7930121200007854855

`A007530(n+1)*A064974(n+1)-A007530(n+1)`
-/

namespace A056777.P7930121200007854855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1) * A064974 (n + 1) - A007530 (n + 1)

end

end A056777.P7930121200007854855

/-!
# A056778: Number of 3-element antichains on an unlabeled n-element set; equivalence classes of monotone Boolean functions of n variables with 3 mincuts under action of symmetric group S_n.

The programs for A056778, there is no canonical definition to state claims against.
-/

/-! ## A056778.P12231401713863522343

`A056782(n+1)+A002727(n)-A055484(n+1)`
-/

namespace A056778.P12231401713863522343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056782 (n + 1) + (A002727 n - A055484 (n + 1))

end

end A056778.P12231401713863522343

/-!
# A056779: Number of poly-IH73-tiles (holes allowed) with n cells.

The programs for A056779, there is no canonical definition to state claims against.
-/

/-! ## A056779.P13252643811850039922

`(A346799(n+1)+A197626(n+1))/2`
-/

namespace A056779.P13252643811850039922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346799 (n + 1) + A197626 (n + 1) : ℚ) / 2

end

end A056779.P13252643811850039922

/-! ## A056779.P13050315150730119106

`A004525(A346799(n+1)+A197626(n+1))`
-/

namespace A056779.P13050315150730119106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A346799 (n + 1) + A197626 (n + 1)).toNat

end

end A056779.P13050315150730119106

/-! ## A056779.P9609618297090625331

`A004526(A346799(n+1)+A197626(n+1))`
-/

namespace A056779.P9609618297090625331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A346799 (n + 1) + A197626 (n + 1)).toNat

end

end A056779.P9609618297090625331

/-! ## A056779.P5504544197063310791

`A065033(A346799(n+1)+A197626(n+1))`
-/

namespace A056779.P5504544197063310791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A346799 (n + 1) + A197626 (n + 1)).toNat

end

end A056779.P5504544197063310791

/-! ## A056779.P15430983596763979997

`A004525(A197626(n+1)+A234010(n+1)-A234008(n+1))`
-/

namespace A056779.P15430983596763979997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A197626 (n + 1) + (A234010 (n + 1) - A234008 (n + 1))).toNat

end

end A056779.P15430983596763979997

/-!
# A056780: Rectangular free polyominoes: number of n-celled polyominoes when the cell is a rectangle.

The programs for A056780, there is no canonical definition to state claims against.
-/

/-! ## A056780.P9342203562381776054

`2*A006749(n+1)+2*A006746(n+1)+A006748(n+1)+2*A006747(n+1)+2*A056877(n+1)+A056878(n+1)+A144553(n+1)+A142886(n+1)`
-/

namespace A056780.P9342203562381776054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006749 (n + 1) + 2 * A006746 (n + 1) + A006748 (n + 1) + 2 * A006747 (n + 1) + 2 * A056877 (n + 1) + A056878 (n + 1) + A144553 (n + 1) + A142886 (n + 1)

end

end A056780.P9342203562381776054

/-! ## A056780.P2549970450187090351

`A030227(n+1)+A151522(n+1)-A056783(n+1)`
-/

namespace A056780.P2549970450187090351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) + (A151522 (n + 1) - A056783 (n + 1))

end

end A056780.P2549970450187090351

/-! ## A056780.P7016015482593994071

`A056783(n+1)+A151525(n+1)-A182645(n+1)`
-/

namespace A056780.P7016015482593994071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056783 (n + 1) + (A151525 (n + 1) - A182645 (n + 1))

end

end A056780.P7016015482593994071

/-! ## A056780.P12842327906381037211

`A030227(n+1)+A056783(n+1)-A346800(n+1)`
-/

namespace A056780.P12842327906381037211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) + (A056783 (n + 1) - A346800 (n + 1))

end

end A056780.P12842327906381037211

/-! ## A056780.P3452569363620714766

`A056783(n+1)+A351191(n+1)-A349329(n+1)`
-/

namespace A056780.P3452569363620714766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056783 (n + 1) + (A351191 (n + 1) - A349329 (n + 1))

end

end A056780.P3452569363620714766

/-!
# A056782: Number of 3-element proper antichains (i.e., antichains such that every two members have nonempty intersection) on an unlabeled n-element set.

The programs for A056782, there is no canonical definition to state claims against.
-/

/-! ## A056782.P6439745486031887837

`A381781(A049187(n+2))`
-/

namespace A056782.P6439745486031887837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381781 (A049187 (n + 2)).toNat

end

end A056782.P6439745486031887837

/-! ## A056782.P17949248926567965416

`A326468(3*n+1)+A055641(A000142(n))`
-/

namespace A056782.P17949248926567965416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326468 (3 * n + 1) + A055641 (A000142 n).toNat

end

end A056782.P17949248926567965416

/-!
# A056783: Number of diamond polyominoes with n cells.

The programs for A056783, there is no canonical definition to state claims against.
-/

/-! ## A056783.P15877134201909017129

`2*A006749(n+1)+A006746(n+1)+2*A006748(n+1)+2*A006747(n+1)+A056877(n+1)+2*A056878(n+1)+A144553(n+1)+A142886(n+1)`
-/

namespace A056783.P15877134201909017129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006749 (n + 1) + A006746 (n + 1) + 2 * A006748 (n + 1) + 2 * A006747 (n + 1) + A056877 (n + 1) + 2 * A056878 (n + 1) + A144553 (n + 1) + A142886 (n + 1)

end

end A056783.P15877134201909017129

/-! ## A056783.P14242621954224702599

`(A346800(n+1)+A151522(n+1))/2`
-/

namespace A056783.P14242621954224702599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346800 (n + 1) + A151522 (n + 1) : ℚ) / 2

end

end A056783.P14242621954224702599

/-! ## A056783.P775880510018061168

`A030227(n+1)+A151522(n+1)-A056780(n+1)`
-/

namespace A056783.P775880510018061168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) + (A151522 (n + 1) - A056780 (n + 1))

end

end A056783.P775880510018061168

/-! ## A056783.P17750022514984814482

`A056780(n+1)+A182645(n+1)-A151525(n+1)`
-/

namespace A056783.P17750022514984814482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056780 (n + 1) + (A182645 (n + 1) - A151525 (n + 1))

end

end A056783.P17750022514984814482

/-! ## A056783.P16754021930577430621

`A056780(n+1)+A346800(n+1)-A030227(n+1)`
-/

namespace A056783.P16754021930577430621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056780 (n + 1) + (A346800 (n + 1) - A030227 (n + 1))

end

end A056783.P16754021930577430621

/-! ## A056783.P3206823903825832605

`A056780(n+1)+A349329(n+1)-A351191(n+1)`
-/

namespace A056783.P3206823903825832605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056780 (n + 1) + (A349329 (n + 1) - A351191 (n + 1))

end

end A056783.P3206823903825832605

/-!
# A056784: First nonprime in a sequence of consecutive nonprimes which is at least twice as long as any earlier run of consecutive nonprimes in this list.

The programs for A056784, there is no canonical definition to state claims against.
-/

/-! ## A056784.P3665289069676773824

`A030296(A114100(n+1))%A000230(A114100(n+1))`
-/

namespace A056784.P3665289069676773824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030296 (A114100 (n + 1)).toNat) (A000230 (A114100 (n + 1)).toNat)

end

end A056784.P3665289069676773824

/-! ## A056784.P8548109413292818773

`A309877(A114100(n+1))`
-/

namespace A056784.P8548109413292818773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309877 (A114100 (n + 1)).toNat

end

end A056784.P8548109413292818773

/-! ## A056784.P16933325673906816083

`A030296(A114100(n+1))%A000101(A162920(n))`
-/

namespace A056784.P16933325673906816083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030296 (A114100 (n + 1)).toNat) (A000101 (A162920 n).toNat)

end

end A056784.P16933325673906816083

/-!
# A056785: Number of polydominoes.

The programs for A056785, there is no canonical definition to state claims against.
-/

/-! ## A056785.P6162806350233774982

`A213378(n+1)+A213377(n+1)`
-/

namespace A056785.P6162806350233774982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213378 (n + 1) + A213377 (n + 1)

end

end A056785.P6162806350233774982

/-! ## A056785.P8145853711658149882

`A210996(n+1)-A213376(n+1)`
-/

namespace A056785.P8145853711658149882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210996 (n + 1) - A213376 (n + 1)

end

end A056785.P8145853711658149882

/-! ## A056785.P12136161748063060013

`A000105(2*(n+1))-A213376(n+1)`
-/

namespace A056785.P12136161748063060013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (2 * (n + 1)) - A213376 (n + 1)

end

end A056785.P12136161748063060013

/-!
# A056786: Number of inequivalent connected planar figures that can be formed from n non-overlapping 1 X 2 rectangles (or dominoes).

The programs for A056786, there is no canonical definition to state claims against.
-/

/-! ## A056786.P5941864187068212527

`A008611(A003578(n)-A024430(n))`
-/

namespace A056786.P5941864187068212527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A003578 n - A024430 n).toNat

end

end A056786.P5941864187068212527

/-!
# A056787: Number of incongruental unlabeled undirected trees with n nodes on a square lattice and edges of length 1 or sqrt(2) admitted to the 4 nearest or 4 2nd nearest neighbors.

The programs for A056787, there is no canonical definition to state claims against.
-/

/-! ## A056787.P7006125067577775558

`A098854(n+17)`
-/

namespace A056787.P7006125067577775558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098854 (n + 17)

end

end A056787.P7006125067577775558

/-!
# A056788: a(n) = n^n + (n-1)^(n-1).

The programs for A056788, the canonical program `A056788.P13908811286756903830` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056788 has offset 1).

The definition of A056788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)+n^n` (program `A056788.P13908811286756903830`, by `A056788.P13908811286756903830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A056788.P13908811286756903830

`(n+1)^(n+1)+n^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A056788

/-- `(n+1)^(n+1)+n^n` -/
def P13908811286756903830.Spec : Prop :=
  ∀ n, (P13908811286756903830.a n : ℤ) = A056788 (n + 1)

theorem P13908811286756903830.correct : P13908811286756903830.Spec := by
  intro n
  simp only [A056788, Nat.add_sub_cancel]

end A056788

/-! ## A056788.P10905912759658972257

`gcd(floor(acot(n)²), Δ[(-n)^n])`
-/

namespace A056788.P10905912759658972257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (f1 (n + 1) - f1 n)

end

end A056788.P10905912759658972257

namespace A056788

/-- `gcd(floor(acot(n)²), Δ[(-n)^n])` -/
def P10905912759658972257.Spec : Prop :=
  ∀ n, (P10905912759658972257.a n : ℤ) = A056788 (n + 1)

end A056788

/-! ## A056788.P11146928336023771735

`lcm(xor(1, n)-n, Δ[(-n)^n])`
-/

namespace A056788.P11146928336023771735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.xor 1 n : ℤ) - (n : ℤ)) (f1 (n + 1) - f1 n)

end

end A056788.P11146928336023771735

namespace A056788

/-- `lcm(xor(1, n)-n, Δ[(-n)^n])` -/
def P11146928336023771735.Spec : Prop :=
  ∀ n, (P11146928336023771735.a n : ℤ) = A056788 (n + 1)

end A056788

/-! ## A056788.P12903961025926333477

`abs(Δ[A177885(n+1)])`
-/

namespace A056788.P12903961025926333477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A056788.P12903961025926333477

namespace A056788

/-- `abs(Δ[A177885(n+1)])` -/
def P12903961025926333477.Spec : Prop :=
  ∀ n, P12903961025926333477.a n = A056788 (n + 1)

end A056788

/-!
# A056789: a(n) = Sum_{k=1..n} lcm(k,n)/gcd(k,n).

The programs for A056789, the canonical program `A056789.P13500359394840350623` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056789 has offset 1).

The definition of A056789 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056789.P13500359394840350623

`(A068963(n+1)+1)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A056789

/-- `(A068963(n+1)+1)/2` -/
def P13500359394840350623.Spec : Prop :=
  ∀ n, P13500359394840350623.a n = (A056789 (n + 1) : ℚ)

end A056789

/-! ## A056789.P13932772653516841488

`ceil(A068963(n+1)/2)`
-/

namespace A056789.P13932772653516841488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068963 (n + 1) : ℚ) / 2⌉

end

end A056789.P13932772653516841488

namespace A056789

/-- `ceil(A068963(n+1)/2)` -/
def P13932772653516841488.Spec : Prop :=
  ∀ n, P13932772653516841488.a n = A056789 (n + 1)

end A056789

/-! ## A056789.P3813927616650732332

`∑{d}[n+1, #*A023896(#)]`
-/

namespace A056789.P3813927616650732332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A023896 d

end

end A056789.P3813927616650732332

namespace A056789

/-- `∑{d}[n+1, #*A023896(#)]` -/
def P3813927616650732332.Spec : Prop :=
  ∀ n, P3813927616650732332.a n = A056789 (n + 1)

end A056789

/-! ## A056789.P9452330409069945192

`(∑{d}[n+1, A053191(#)]+1)/2`
-/

namespace A056789.P9452330409069945192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A053191 d + 1 : ℤ) : ℚ) / 2

end

end A056789.P9452330409069945192

namespace A056789

/-- `(∑{d}[n+1, A053191(#)]+1)/2` -/
def P9452330409069945192.Spec : Prop :=
  ∀ n, P9452330409069945192.a n = (A056789 (n + 1) : ℚ)

end A056789

/-! ## A056789.P9858071834669740871

`(∑{d}[n+1, #*A002618(#)]+1)/2`
-/

namespace A056789.P9858071834669740871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A002618 d + 1 : ℤ) : ℚ) / 2

end

end A056789.P9858071834669740871

namespace A056789

/-- `(∑{d}[n+1, #*A002618(#)]+1)/2` -/
def P9858071834669740871.Spec : Prop :=
  ∀ n, P9858071834669740871.a n = (A056789 (n + 1) : ℚ)

end A056789

/-! ## A056789.P17188522685731810664

`∑{d}[n+1, A023900(#)*A051193((n+1)/#)]`
-/

namespace A056789.P17188522685731810664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A051193 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056789.P17188522685731810664

namespace A056789

/-- `∑{d}[n+1, A023900(#)*A051193((n+1)/#)]` -/
def P17188522685731810664.Spec : Prop :=
  ∀ n, P17188522685731810664.a n = A056789 (n + 1)

end A056789

/-! ## A056789.P13939668567964872986

`∑{d}[n+1, A000005(#)*A332658((n+1)/#)]`
-/

namespace A056789.P13939668567964872986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A332658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056789.P13939668567964872986

namespace A056789

/-- `∑{d}[n+1, A000005(#)*A332658((n+1)/#)]` -/
def P13939668567964872986.Spec : Prop :=
  ∀ n, P13939668567964872986.a n = A056789 (n + 1)

end A056789

/-! ## A056789.P3210112645493277562

`∑{d}[n+1, A278403(#)*A334657((n+1)/#)]`
-/

namespace A056789.P3210112645493277562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A278403 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056789.P3210112645493277562

namespace A056789

/-- `∑{d}[n+1, A278403(#)*A334657((n+1)/#)]` -/
def P3210112645493277562.Spec : Prop :=
  ∀ n, P3210112645493277562.a n = A056789 (n + 1)

end A056789

/-! ## A056789.P6837428956514659179

`∑{d}[n+1, A002411(#)*A046970((n+1)/#)]`
-/

namespace A056789.P6837428956514659179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002411 d * A046970 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056789.P6837428956514659179

namespace A056789

/-- `∑{d}[n+1, A002411(#)*A046970((n+1)/#)]` -/
def P6837428956514659179.Spec : Prop :=
  ∀ n, P6837428956514659179.a n = A056789 (n + 1)

end A056789

/-!
# A056790: Greatest prime factor of n^n + (n+1)^(n+1).

The programs for A056790, the canonical program `A056790.P5110018989701522880` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056790 has offset 0).

The definition of A056790 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056790.P5110018989701522880

`A006530(A056788(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A056790

/-- `A006530(A056788(n+1))` -/
def P5110018989701522880.Spec : Prop :=
  ∀ n, P5110018989701522880.a n = A056790 n

theorem P5110018989701522880.correct : P5110018989701522880.Spec := by
  intro n
  simp only [A056790]

end A056790

/-! ## A056790.P16459678876278353399

`A006530(abs(Δ[(-n)^n]))`
-/

namespace A056790.P16459678876278353399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |f1 (n + 1) - f1 n|.toNat

end

end A056790.P16459678876278353399

namespace A056790

/-- `A006530(abs(Δ[(-n)^n]))` -/
def P16459678876278353399.Spec : Prop :=
  ∀ n, P16459678876278353399.a n = A056790 n

end A056790

/-!
# A056791: Weight of binary expansion of n + length of binary expansion of n.

The programs for A056791, the canonical program `A056791.P10588008937732959129` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056791 has offset 0).

The definition of A056791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056791.P10588008937732959129

`A000120(n)+A070939(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056791

/-- `A000120(n)+A070939(n)` -/
def P10588008937732959129.Spec : Prop :=
  ∀ n, P10588008937732959129.a n = A056791 n

theorem P10588008937732959129.correct : P10588008937732959129.Spec := by
  intro n
  simp only [A056791]

end A056791

/-! ## A056791.P7644177700175230127

`a(floor(n/2))+a(n%2)` with `a(0)=1, a(1)=2`
-/

namespace A056791.P7644177700175230127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + a (n % 2)

end

end A056791.P7644177700175230127

namespace A056791

/-- `a(floor(n/2))+a(n%2)` -/
def P7644177700175230127.Spec : Prop :=
  ∀ n, (P7644177700175230127.a n : ℤ) = A056791 n

end A056791

/-! ## A056791.P17182115110086459970

`a(and(1, n))+a(floor(n/2))` with `a(0)=1, a(1)=2`
-/

namespace A056791.P17182115110086459970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Nat.land 1 n) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A056791.P17182115110086459970

namespace A056791

/-- `a(and(1, n))+a(floor(n/2))` -/
def P17182115110086459970.Spec : Prop :=
  ∀ n, (P17182115110086459970.a n : ℤ) = A056791 n

end A056791

/-! ## A056791.P3647065707913281048

`a(n-gcd(n, floor(n/2)))+1` with `a(0)=1`
-/

namespace A056791.P3647065707913281048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋) + 1

end

end A056791.P3647065707913281048

namespace A056791

/-- `a(n-gcd(n, floor(n/2)))+1` -/
def P3647065707913281048.Spec : Prop :=
  ∀ n, (P3647065707913281048.a n : ℤ) = A056791 n

end A056791

/-! ## A056791.P5225832083621611442

`a(lcm(2, xor(n, -2))/2-1)+1` with `a(0)=1`
-/

namespace A056791.P5225832083621611442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2 - 1)).toNat + 1

end

end A056791.P5225832083621611442

namespace A056791

/-- `a(lcm(2, xor(n, -2))/2-1)+1` -/
def P5225832083621611442.Spec : Prop :=
  ∀ n, (P5225832083621611442.a n : ℤ) = A056791 n

end A056791

/-! ## A056791.P2564693536450633680

`∑[a(floor(n/2))-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A056791.P2564693536450633680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056791.P2564693536450633680

namespace A056791

/-- `∑[a(floor(n/2))-a(n-1)]` -/
def P2564693536450633680.Spec : Prop :=
  ∀ n, P2564693536450633680.a n = A056791 n

end A056791

/-! ## A056791.P478120445730996134

`∑[a(∑[n]%n)-(n+1)%2]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A056791.P478120445730996134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) - (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056791.P478120445730996134

namespace A056791

/-- `∑[a(∑[n]%n)-(n+1)%2]` -/
def P478120445730996134.Spec : Prop :=
  ∀ n, P478120445730996134.a n = A056791 n

end A056791

/-! ## A056791.P1170282069331821605

`A056792(n)+1`
-/

namespace A056791.P1170282069331821605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 n + 1

end

end A056791.P1170282069331821605

namespace A056791

/-- `A056792(n)+1` -/
def P1170282069331821605.Spec : Prop :=
  ∀ n, P1170282069331821605.a n = A056791 n

end A056791

/-! ## A056791.P1900975690153249627

`a(A029578(n))+1` with `a(0)=1`
-/

namespace A056791.P1900975690153249627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A029578 n).toNat + 1

end

end A056791.P1900975690153249627

namespace A056791

/-- `a(A029578(n))+1` -/
def P1900975690153249627.Spec : Prop :=
  ∀ n, (P1900975690153249627.a n : ℤ) = A056791 n

end A056791

/-! ## A056791.P10598954789597340077

`floor(log2(A196168(n)))+1`
-/

namespace A056791.P10598954789597340077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A196168 n).toNat + 1

end

end A056791.P10598954789597340077

namespace A056791

/-- `floor(log2(A196168(n)))+1` -/
def P10598954789597340077.Spec : Prop :=
  ∀ n, (P10598954789597340077.a n : ℤ) = A056791 n

end A056791

/-! ## A056791.P11093365944785286039

`∑{digits}[A007088(n), #+1]`
-/

namespace A056791.P11093365944785286039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 1).sum

end

end A056791.P11093365944785286039

namespace A056791

/-- `∑{digits}[A007088(n), #+1]` -/
def P11093365944785286039.Spec : Prop :=
  ∀ n, (P11093365944785286039.a n : ℤ) = A056791 n

end A056791

/-! ## A056791.P13640228984907537574

`floor(log2(2*(A124108(n)+1)))`
-/

namespace A056791.P13640228984907537574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (2 * (A124108 n + 1)).toNat

end

end A056791.P13640228984907537574

namespace A056791

/-- `floor(log2(2*(A124108(n)+1)))` -/
def P13640228984907537574.Spec : Prop :=
  ∀ n, (P13640228984907537574.a n : ℤ) = A056791 n

end A056791

/-! ## A056791.P8667369096263529921

`n-A011371(n)+∑[char[2*a(n-1)]]+1` with `a(0)=2`
-/

namespace A056791.P8667369096263529921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A056791.P8667369096263529921

namespace A056791

/-- `n-A011371(n)+∑[char[2*a(n-1)]]+1` -/
def P8667369096263529921.Spec : Prop :=
  ∀ n, P8667369096263529921.a n = A056791 n

end A056791

/-! ## A056791.P14011649811728218009

`A023416(n)+log2(A102376(n))`
-/

namespace A056791.P14011649811728218009
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023416 n : ℝ) + Real.logb 2 (A102376 n : ℝ)

end

end A056791.P14011649811728218009

namespace A056791

/-- `A023416(n)+log2(A102376(n))` -/
def P14011649811728218009.Spec : Prop :=
  ∀ n, P14011649811728218009.a n = (A056791 n : ℝ)

end A056791

/-! ## A056791.P17042493800862898728

`A289207(A119476(n+1))+1`
-/

namespace A056791.P17042493800862898728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A119476 (n + 1)).toNat + 1

end

end A056791.P17042493800862898728

namespace A056791

/-- `A289207(A119476(n+1))+1` -/
def P17042493800862898728.Spec : Prop :=
  ∀ n, P17042493800862898728.a n = A056791 n

end A056791

/-! ## A056791.P18287785504439306617

`A091090(n)+A014701(n+1)`
-/

namespace A056791.P18287785504439306617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n + A014701 (n + 1)

end

end A056791.P18287785504439306617

namespace A056791

/-- `A091090(n)+A014701(n+1)` -/
def P18287785504439306617.Spec : Prop :=
  ∀ n, P18287785504439306617.a n = A056791 n

end A056791

/-! ## A056791.P4479263011470283154

`A119476(n+1)+A057428(n)`
-/

namespace A056791.P4479263011470283154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119476 (n + 1) + A057428 n

end

end A056791.P4479263011470283154

namespace A056791

/-- `A119476(n+1)+A057428(n)` -/
def P4479263011470283154.Spec : Prop :=
  ∀ n, P4479263011470283154.a n = A056791 n

end A056791

/-! ## A056791.P16106932469924476079

`A119476(n+1)-A057427(n)`
-/

namespace A056791.P16106932469924476079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119476 (n + 1) - A057427 n

end

end A056791.P16106932469924476079

namespace A056791

/-- `A119476(n+1)-A057427(n)` -/
def P16106932469924476079.Spec : Prop :=
  ∀ n, P16106932469924476079.a n = A056791 n

end A056791

/-! ## A056791.P7342579992330624232

`A023416(n)+2*A000120(n)`
-/

namespace A056791.P7342579992330624232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 2 * A000120 n

end

end A056791.P7342579992330624232

namespace A056791

/-- `A023416(n)+2*A000120(n)` -/
def P7342579992330624232.Spec : Prop :=
  ∀ n, P7342579992330624232.a n = A056791 n

end A056791

/-! ## A056791.P13526873470874088022

`A029931(n)+A070939(n)-A073642(n)`
-/

namespace A056791.P13526873470874088022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n + (A070939 n - A073642 n)

end

end A056791.P13526873470874088022

namespace A056791

/-- `A029931(n)+A070939(n)-A073642(n)` -/
def P13526873470874088022.Spec : Prop :=
  ∀ n, P13526873470874088022.a n = A056791 n

end A056791

/-!
# A056792: Minimal number of steps to get from 0 to n by (a) adding 1 or (b) multiplying by 2.

The programs for A056792, the canonical program `A056792.P13266386025487519892` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056792 has offset 0).

The definition of A056792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A056792.P13266386025487519892

`A000120(n)+A070939(n)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056792

/-- `A000120(n)+A070939(n)-1` -/
def P13266386025487519892.Spec : Prop :=
  ∀ n, P13266386025487519892.a n = A056792 n

theorem P13266386025487519892.correct : P13266386025487519892.Spec := by
  intro n
  simp only [A056792]

end A056792

/-! ## A056792.P1223969618168138544

`a(n-gcd(n, floor(n/2)))+1` with `a(0)=0`
-/

namespace A056792.P1223969618168138544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋) + 1

end

end A056792.P1223969618168138544

namespace A056792

/-- `a(n-gcd(n, floor(n/2)))+1` -/
def P1223969618168138544.Spec : Prop :=
  ∀ n, (P1223969618168138544.a n : ℤ) = A056792 n

end A056792

/-! ## A056792.P10600379995222715584

`a(floor(n/2))+n%2+1` with `a(0)=0, a(1)=1`
-/

namespace A056792.P10600379995222715584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n % 2 + 1)

end

end A056792.P10600379995222715584

namespace A056792

/-- `a(floor(n/2))+n%2+1` -/
def P10600379995222715584.Spec : Prop :=
  ∀ n, (P10600379995222715584.a n : ℤ) = A056792 n

end A056792

/-! ## A056792.P8021493662864887623

`a(lcm(2, xor(n, -2))/2-1)+1` with `a(0)=0`
-/

namespace A056792.P8021493662864887623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2 - 1)).toNat + 1

end

end A056792.P8021493662864887623

namespace A056792

/-- `a(lcm(2, xor(n, -2))/2-1)+1` -/
def P8021493662864887623.Spec : Prop :=
  ∀ n, (P8021493662864887623.a n : ℤ) = A056792 n

end A056792

/-! ## A056792.P17239809195526687046

`n-(∑[a(∑[n]%n)+1]-n)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A056792.P17239809195526687046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A056792.P17239809195526687046

namespace A056792

/-- `n-(∑[a(∑[n]%n)+1]-n)` -/
def P17239809195526687046.Spec : Prop :=
  ∀ n, P17239809195526687046.a n = A056792 n

end A056792

/-! ## A056792.P4255478421213452827

`a((n-2)/(char[2*n]+1)+1)+1` with `a(0)=0`
-/

namespace A056792.P4255478421213452827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) + 1)).toNat + 1

end

end A056792.P4255478421213452827

namespace A056792

/-- `a((n-2)/(char[2*n]+1)+1)+1` -/
def P4255478421213452827.Spec : Prop :=
  ∀ n, (P4255478421213452827.a n : ℤ) = A056792 n

end A056792

/-! ## A056792.P12844323507183079827

`∑[a(floor(n/2))-a(n-1)]/3` with `a(0)=0, a(1)=3, a(2)=3, a(3)=3`
-/

namespace A056792.P12844323507183079827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3, 3] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A056792.P12844323507183079827

namespace A056792

/-- `∑[a(floor(n/2))-a(n-1)]/3` -/
def P12844323507183079827.Spec : Prop :=
  ∀ n, P12844323507183079827.a n = (A056792 n : ℚ)

end A056792

/-! ## A056792.P3822085658013097283

`a(floor(n/2))+(1-(-1)^n)/2+1` with `a(0)=0, a(1)=1`
-/

namespace A056792.P3822085658013097283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℚ) / 2 + 1

end

end A056792.P3822085658013097283

namespace A056792

/-- `a(floor(n/2))+(1-(-1)^n)/2+1` -/
def P3822085658013097283.Spec : Prop :=
  ∀ n, P3822085658013097283.a n = (A056792 n : ℚ)

end A056792

/-! ## A056792.P9933126605685812892

`A056791(n)-1`
-/

namespace A056792.P9933126605685812892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056791 n - 1

end

end A056792.P9933126605685812892

namespace A056792

/-- `A056791(n)-1` -/
def P9933126605685812892.Spec : Prop :=
  ∀ n, P9933126605685812892.a n = A056792 n

end A056792

/-! ## A056792.P17564477495429326292

`floor(log2(A196168(n)))`
-/

namespace A056792.P17564477495429326292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A196168 n).toNat

end

end A056792.P17564477495429326292

namespace A056792

/-- `floor(log2(A196168(n)))` -/
def P17564477495429326292.Spec : Prop :=
  ∀ n, (P17564477495429326292.a n : ℤ) = A056792 n

end A056792

/-! ## A056792.P6626698376755005885

`floor(log2(A124108(n)+1))`
-/

namespace A056792.P6626698376755005885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A124108 n + 1).toNat

end

end A056792.P6626698376755005885

namespace A056792

/-- `floor(log2(A124108(n)+1))` -/
def P6626698376755005885.Spec : Prop :=
  ∀ n, (P6626698376755005885.a n : ℤ) = A056792 n

end A056792

/-! ## A056792.P7392996916822007410

`A023444(A056791(n)+1)`
-/

namespace A056792.P7392996916822007410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A056791 n + 1).toNat

end

end A056792.P7392996916822007410

namespace A056792

/-- `A023444(A056791(n)+1)` -/
def P7392996916822007410.Spec : Prop :=
  ∀ n, P7392996916822007410.a n = A056792 n

end A056792

/-! ## A056792.P17286665668508370764

`A289207(A119476(n+1))`
-/

namespace A056792.P17286665668508370764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A119476 (n + 1)).toNat

end

end A056792.P17286665668508370764

namespace A056792

/-- `A289207(A119476(n+1))` -/
def P17286665668508370764.Spec : Prop :=
  ∀ n, P17286665668508370764.a n = A056792 n

end A056792

/-! ## A056792.P5518601674176260704

`A023444(2*A056791(n))/2`
-/

namespace A056792.P5518601674176260704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A056791 n).toNat : ℚ) / 2

end

end A056792.P5518601674176260704

namespace A056792

/-- `A023444(2*A056791(n))/2` -/
def P5518601674176260704.Spec : Prop :=
  ∀ n, P5518601674176260704.a n = (A056792 n : ℚ)

end A056792

/-! ## A056792.P16206291221919878303

`A120513(n+1)%A233272(n)`
-/

namespace A056792.P16206291221919878303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120513 (n + 1)) (A233272 n)

end

end A056792.P16206291221919878303

namespace A056792

/-- `A120513(n+1)%A233272(n)` -/
def P16206291221919878303.Spec : Prop :=
  ∀ n, P16206291221919878303.a n = A056792 n

end A056792

/-! ## A056792.P16131432501096720624

`∑{digits}[A007088(n), A000079(#)]-1`
-/

namespace A056792.P16131432501096720624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).sum - 1

end

end A056792.P16131432501096720624

namespace A056792

/-- `∑{digits}[A007088(n), A000079(#)]-1` -/
def P16131432501096720624.Spec : Prop :=
  ∀ n, P16131432501096720624.a n = A056792 n

end A056792

/-! ## A056792.P6683677246828976733

`∑{digits}[A007088(n), A244544(#)]-1`
-/

namespace A056792.P6683677246828976733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A244544 x).sum - 1

end

end A056792.P6683677246828976733

namespace A056792

/-- `∑{digits}[A007088(n), A244544(#)]-1` -/
def P6683677246828976733.Spec : Prop :=
  ∀ n, P6683677246828976733.a n = A056792 n

end A056792

/-! ## A056792.P12831830048923280738

`floor(A000120(n)+log2(A028310(n)))`
-/

namespace A056792.P12831830048923280738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000120 n : ℝ) + Real.logb 2 (A028310 n : ℝ)⌋

end

end A056792.P12831830048923280738

namespace A056792

/-- `floor(A000120(n)+log2(A028310(n)))` -/
def P12831830048923280738.Spec : Prop :=
  ∀ n, P12831830048923280738.a n = A056792 n

end A056792

/-! ## A056792.P17121918028963866347

`A014701(n+1)+A091090(n)-1`
-/

namespace A056792.P17121918028963866347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014701 (n + 1) + (A091090 n - 1)

end

end A056792.P17121918028963866347

namespace A056792

/-- `A014701(n+1)+A091090(n)-1` -/
def P17121918028963866347.Spec : Prop :=
  ∀ n, P17121918028963866347.a n = A056792 n

end A056792

/-!
# A056793: Number of divisors of lcm(1..n).

The programs for A056793, the canonical program `A056793.P8595197413582490209` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056793 has offset 1).

The definition of A056793 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056793.P8595197413582490209

`A000005(A003418(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A056793

/-- `A000005(A003418(n+1))` -/
def P8595197413582490209.Spec : Prop :=
  ∀ n, P8595197413582490209.a n = A056793 (n + 1)

theorem P8595197413582490209.correct : P8595197413582490209.Spec := by
  intro n
  simp only [A056793, Nat.add_sub_cancel]

end A056793

/-! ## A056793.P7165732611363741445

`∑[A101207(n+1)]`
-/

namespace A056793.P7165732611363741445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056793.P7165732611363741445

namespace A056793

/-- `∑[A101207(n+1)]` -/
def P7165732611363741445.Spec : Prop :=
  ∀ n, P7165732611363741445.a n = A056793 (n + 1)

end A056793

/-! ## A056793.P15062230389744308333

`A056795(A065515(n+1))`
-/

namespace A056793.P15062230389744308333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056795 (A065515 (n + 1)).toNat

end

end A056793.P15062230389744308333

namespace A056793

/-- `A056795(A065515(n+1))` -/
def P15062230389744308333.Spec : Prop :=
  ∀ n, P15062230389744308333.a n = A056793 (n + 1)

end A056793

/-! ## A056793.P3382436618322487558

`A056795(∑[A010055(n+1)])`
-/

namespace A056793.P3382436618322487558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056795 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A056793.P3382436618322487558

namespace A056793

/-- `A056795(∑[A010055(n+1)])` -/
def P3382436618322487558.Spec : Prop :=
  ∀ n, P3382436618322487558.a n = A056793 (n + 1)

end A056793

/-! ## A056793.P36402982637744150

`A056795(A025528(n+1)+1)`
-/

namespace A056793.P36402982637744150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056795 (A025528 (n + 1) + 1).toNat

end

end A056793.P36402982637744150

namespace A056793

/-- `A056795(A025528(n+1)+1)` -/
def P36402982637744150.Spec : Prop :=
  ∀ n, P36402982637744150.a n = A056793 (n + 1)

end A056793

/-! ## A056793.P12522787259545783241

`A336816(A000015(n+2))-1`
-/

namespace A056793.P12522787259545783241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336816 (A000015 (n + 2)).toNat - 1

end

end A056793.P12522787259545783241

namespace A056793

/-- `A336816(A000015(n+2))-1` -/
def P12522787259545783241.Spec : Prop :=
  ∀ n, P12522787259545783241.a n = A056793 (n + 1)

end A056793

/-! ## A056793.P6383999367579285457

`A056795(∑[char[A181062(n+1)]])`
-/

namespace A056793.P6383999367579285457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056795 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056793.P6383999367579285457

namespace A056793

/-- `A056795(∑[char[A181062(n+1)]])` -/
def P6383999367579285457.Spec : Prop :=
  ∀ n, P6383999367579285457.a n = A056793 (n + 1)

end A056793

/-! ## A056793.P6070072605803302043

`∏[A000005(n+1)/A000005(A048671(n+1))]`
-/

namespace A056793.P6070072605803302043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A000005 (A048671 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A056793.P6070072605803302043

namespace A056793

/-- `∏[A000005(n+1)/A000005(A048671(n+1))]` -/
def P6070072605803302043.Spec : Prop :=
  ∀ n, P6070072605803302043.a n = (A056793 (n + 1) : ℚ)

end A056793

/-!
# A056794: Numbers n such that n*(n-1) is an oblong (promic, A002378) palindrome.

The programs for A056794, there is no canonical definition to state claims against.
-/

/-! ## A056794.P17808231269585888800

`A057427(n)+A028336(A028310(n))`
-/

namespace A056794.P17808231269585888800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A028336 (A028310 n).toNat

end

end A056794.P17808231269585888800

/-! ## A056794.P3682455515485036027

`A178489(n)+A028336(A028310(n))`
-/

namespace A056794.P3682455515485036027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A028336 (A028310 n).toNat

end

end A056794.P3682455515485036027

/-! ## A056794.P2932955339833600245

`A028336(A028310(n))-A057428(n)`
-/

namespace A056794.P2932955339833600245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028336 (A028310 n).toNat - A057428 n

end

end A056794.P2932955339833600245

/-! ## A056794.P4098377082793020086

`A028336(A028310(n))+A011611(n²)`
-/

namespace A056794.P4098377082793020086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028336 (A028310 n).toNat + A011611 (n ^ 2)

end

end A056794.P4098377082793020086

/-! ## A056794.P8747783083390989229

`A028336(A028310(n))+char[A007318(n)]`
-/

namespace A056794.P8747783083390989229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028336 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A056794.P8747783083390989229

/-!
# A056795: Number of divisors of k as k runs through sequence of distinct values of LCM(1,..,n).

The programs for A056795, the canonical program `A056795.P12632508630850494636` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056795 has offset 1).

The definition of A056795 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A051451, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056795.P12632508630850494636

`A000005(A051451(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A056795

/-- `A000005(A051451(n+1))` -/
def P12632508630850494636.Spec : Prop :=
  ∀ n, P12632508630850494636.a n = A056795 (n + 1)

theorem P12632508630850494636.correct : P12632508630850494636.Spec := by
  intro n
  simp only [A056795, Nat.add_sub_cancel]

end A056795

/-! ## A056795.P14498828797460417371

`∑[A305215(n+1)]`
-/

namespace A056795.P14498828797460417371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056795.P14498828797460417371

namespace A056795

/-- `∑[A305215(n+1)]` -/
def P14498828797460417371.Spec : Prop :=
  ∀ n, P14498828797460417371.a n = A056795 (n + 1)

end A056795

/-! ## A056795.P13175637280339522597

`record[A336816(n+2)-1]`
-/

namespace A056795.P13175637280339522597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336816 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056795.P13175637280339522597

namespace A056795

/-- `record[A336816(n+2)-1]` -/
def P13175637280339522597.Spec : Prop :=
  ∀ n, P13175637280339522597.a n = A056795 (n + 1)

end A056795

/-! ## A056795.P1562647740564805805

`∑[abs(Δ[record[A336816(n+1)]])]`
-/

namespace A056795.P1562647740564805805
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A056795.P1562647740564805805

namespace A056795

/-- `∑[abs(Δ[record[A336816(n+1)]])]` -/
def P1562647740564805805.Spec : Prop :=
  ∀ n, P1562647740564805805.a n = A056795 (n + 1)

end A056795

/-! ## A056795.P13290597638607916354

`A056793(A000961(n+1))`
-/

namespace A056795.P13290597638607916354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056793 (A000961 (n + 1)).toNat

end

end A056795.P13290597638607916354

namespace A056795

/-- `A056793(A000961(n+1))` -/
def P13290597638607916354.Spec : Prop :=
  ∀ n, P13290597638607916354.a n = A056795 (n + 1)

end A056795

/-! ## A056795.P543526037301614989

`A056793(A181062(n+2))`
-/

namespace A056795.P543526037301614989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056793 (A181062 (n + 2)).toNat

end

end A056795.P543526037301614989

namespace A056795

/-- `A056793(A181062(n+2))` -/
def P543526037301614989.Spec : Prop :=
  ∀ n, P543526037301614989.a n = A056795 (n + 1)

end A056795

/-! ## A056795.P861671058109454339

`A056793(A246655(n+1)-1)`
-/

namespace A056795.P861671058109454339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056793 (A246655 (n + 1) - 1).toNat

end

end A056795.P861671058109454339

namespace A056795

/-- `A056793(A246655(n+1)-1)` -/
def P861671058109454339.Spec : Prop :=
  ∀ n, P861671058109454339.a n = A056795 (n + 1)

end A056795

/-! ## A056795.P7766245111068853330

`A336816(A000961(n+2))-1`
-/

namespace A056795.P7766245111068853330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336816 (A000961 (n + 2)).toNat - 1

end

end A056795.P7766245111068853330

namespace A056795

/-- `A336816(A000961(n+2))-1` -/
def P7766245111068853330.Spec : Prop :=
  ∀ n, P7766245111068853330.a n = A056795 (n + 1)

end A056795

/-! ## A056795.P13516923558117853014

`A056793(root(A056798(n+1), 2))`
-/

namespace A056795.P13516923558117853014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056793 (SequenceMachineLib.roundAway ((A056798 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A056795.P13516923558117853014

namespace A056795

/-- `A056793(root(A056798(n+1), 2))` -/
def P13516923558117853014.Spec : Prop :=
  ∀ n, P13516923558117853014.a n = A056795 (n + 1)

end A056795

/-! ## A056795.P2688457987207501230

`A086454(n+1)*A305215(n+1)`
-/

namespace A056795.P2688457987207501230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086454 (n + 1) * A305215 (n + 1)

end

end A056795.P2688457987207501230

namespace A056795

/-- `A086454(n+1)*A305215(n+1)` -/
def P2688457987207501230.Spec : Prop :=
  ∀ n, P2688457987207501230.a n = A056795 (n + 1)

end A056795

/-! ## A056795.P15975037816051214344

`A000005(A000961(n+1))*A305215(n+1)`
-/

namespace A056795.P15975037816051214344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000961 (n + 1)).toNat * A305215 (n + 1)

end

end A056795.P15975037816051214344

namespace A056795

/-- `A000005(A000961(n+1))*A305215(n+1)` -/
def P15975037816051214344.Spec : Prop :=
  ∀ n, P15975037816051214344.a n = A056795 (n + 1)

end A056795

/-!
# A056796: Minimal number of steps to get from 0 to n when there are 3 kinds of step: add 1, multiply by 2, multiply by 3.

The programs for A056796, there is no canonical definition to state claims against.
-/

/-! ## A056796.P1442137925239745436

`A061295(n)-A185284(A265188(n+1))`
-/

namespace A056796.P1442137925239745436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061295 n - A185284 (A265188 (n + 1)).toNat

end

end A056796.P1442137925239745436

/-! ## A056796.P2570683635927453990

`A374993(lt[A374974(n+1), A375009(2*n+3)])`
-/

namespace A056796.P2570683635927453990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375009 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A056796.P2570683635927453990

/-! ## A056796.P8449106064771319022

`A374995(lt[A374974(n+1), A375009(2*n+3)])`
-/

namespace A056796.P8449106064771319022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375009 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A056796.P8449106064771319022

/-! ## A056796.P16418791078312708138

`A064547(A370968(n+1))`
-/

namespace A056796.P16418791078312708138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A370968 (n + 1)).toNat

end

end A056796.P16418791078312708138

/-!
# A056797: Numbers k such that 9*10^k+1 is prime.

The programs for A056797, there is no canonical definition to state claims against.
-/

/-! ## A056797.P11775898080786643356

`A100997(n+1)+1`
-/

namespace A056797.P11775898080786643356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100997 (n + 1) + 1

end

end A056797.P11775898080786643356

/-! ## A056797.P11273952412853969816

`A020725(A100997(n+1))`
-/

namespace A056797.P11273952412853969816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A100997 (n + 1)).toNat

end

end A056797.P11273952412853969816

/-!
# A056798: Prime powers with even nonnegative exponents.

The programs for A056798, the canonical program `A056798.P6426982090887198732` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A056798 has offset 1).

The definition of A056798 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A056798.P6426982090887198732

`A000961(n+1)²`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A056798

/-- `A000961(n+1)²` -/
def P6426982090887198732.Spec : Prop :=
  ∀ n, P6426982090887198732.a n = A056798 (n + 1)

theorem P6426982090887198732.correct : P6426982090887198732.Spec := by
  intro n
  simp only [A056798, Nat.add_sub_cancel]

end A056798

/-! ## A056798.P6414720871685718618

`A025473(n+1)^(2*A025474(n+1))`
-/

namespace A056798.P6414720871685718618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025473 (n + 1) : ℚ) ^ (2 * A025474 (n + 1) : ℤ)

end

end A056798.P6414720871685718618

namespace A056798

/-- `A025473(n+1)^(2*A025474(n+1))` -/
def P6414720871685718618.Spec : Prop :=
  ∀ n, P6414720871685718618.a n = (A056798 (n + 1) : ℚ)

end A056798

/-! ## A056798.P11004107800388955364

`(A181062(n+1)+1)²`
-/

namespace A056798.P11004107800388955364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181062 (n + 1) + 1) ^ 2

end

end A056798.P11004107800388955364

namespace A056798

/-- `(A181062(n+1)+1)²` -/
def P11004107800388955364.Spec : Prop :=
  ∀ n, P11004107800388955364.a n = A056798 (n + 1)

end A056798

/-! ## A056798.P6040055338315417191

`(A138929(n+1)/2)²`
-/

namespace A056798.P6040055338315417191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A138929 (n + 1) : ℚ) / 2) ^ 2

end

end A056798.P6040055338315417191

namespace A056798

/-- `(A138929(n+1)/2)²` -/
def P6040055338315417191.Spec : Prop :=
  ∀ n, P6040055338315417191.a n = (A056798 (n + 1) : ℚ)

end A056798

/-! ## A056798.P8349881868507828942

`∑[A057820(A028310(n))]²`
-/

namespace A056798.P8349881868507828942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A056798.P8349881868507828942

namespace A056798

/-- `∑[A057820(A028310(n))]²` -/
def P8349881868507828942.Spec : Prop :=
  ∀ n, P8349881868507828942.a n = A056798 (n + 1)

end A056798

/-! ## A056798.P8993982062052895369

`A000961(A000027(n+1))^2`
-/

namespace A056798.P8993982062052895369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A000027 (n + 1)).toNat ^ 2

end

end A056798.P8993982062052895369

namespace A056798

/-- `A000961(A000027(n+1))^2` -/
def P8993982062052895369.Spec : Prop :=
  ∀ n, P8993982062052895369.a n = A056798 (n + 1)

end A056798

/-! ## A056798.P15802550528406432463

`A000961(n+1)^A040001(2*n)`
-/

namespace A056798.P15802550528406432463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) : ℚ) ^ (A040001 (2 * n) : ℤ)

end

end A056798.P15802550528406432463

namespace A056798

/-- `A000961(n+1)^A040001(2*n)` -/
def P15802550528406432463.Spec : Prop :=
  ∀ n, P15802550528406432463.a n = (A056798 (n + 1) : ℚ)

end A056798

/-! ## A056798.P4574223655186748536

`∪[A025475(n+1), Δ[A007504(n)]]²`
-/

namespace A056798.P4574223655186748536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A056798.P4574223655186748536

namespace A056798

/-- `∪[A025475(n+1), Δ[A007504(n)]]²` -/
def P4574223655186748536.Spec : Prop :=
  ∀ n, (P4574223655186748536.a n : ℤ) = A056798 (n + 1)

end A056798

/-! ## A056798.P1516144328950397441

`(A192134(n+1)+A192015(n+1))²`
-/

namespace A056798.P1516144328950397441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192134 (n + 1) + A192015 (n + 1)) ^ 2

end

end A056798.P1516144328950397441

namespace A056798

/-- `(A192134(n+1)+A192015(n+1))²` -/
def P1516144328950397441.Spec : Prop :=
  ∀ n, P1516144328950397441.a n = A056798 (n + 1)

end A056798

/-! ## A056798.P10455609843757488507

`(A309269(n+1)-A246655(n+1))²`
-/

namespace A056798.P10455609843757488507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309269 (n + 1) - A246655 (n + 1)) ^ 2

end

end A056798.P10455609843757488507

namespace A056798

/-- `(A309269(n+1)-A246655(n+1))²` -/
def P10455609843757488507.Spec : Prop :=
  ∀ n, P10455609843757488507.a n = A056798 (n + 1)

end A056798

/-! ## A056798.P17112374250042145032

`(A025473(n+1)^A025474(n+1))²`
-/

namespace A056798.P17112374250042145032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A025473 (n + 1) : ℚ) ^ (A025474 (n + 1) : ℤ)) ^ 2

end

end A056798.P17112374250042145032

namespace A056798

/-- `(A025473(n+1)^A025474(n+1))²` -/
def P17112374250042145032.Spec : Prop :=
  ∀ n, P17112374250042145032.a n = (A056798 (n + 1) : ℚ)

end A056798

/-! ## A056798.P5658055521409021644

`A000961(A000027(n+1))*A000961(n+1)`
-/

namespace A056798.P5658055521409021644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A000027 (n + 1)).toNat * A000961 (n + 1)

end

end A056798.P5658055521409021644

namespace A056798

/-- `A000961(A000027(n+1))*A000961(n+1)` -/
def P5658055521409021644.Spec : Prop :=
  ∀ n, P5658055521409021644.a n = A056798 (n + 1)

end A056798

/-! ## A056798.P9220611828908723917

`A000961(n+1)+A000961(n+1)*A181062(n+1)`
-/

namespace A056798.P9220611828908723917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) + A000961 (n + 1) * A181062 (n + 1)

end

end A056798.P9220611828908723917

namespace A056798

/-- `A000961(n+1)+A000961(n+1)*A181062(n+1)` -/
def P9220611828908723917.Spec : Prop :=
  ∀ n, P9220611828908723917.a n = A056798 (n + 1)

end A056798

/-! ## A056798.P9704710319518994536

`(A192134(n+1)+A192015(n+1))*A000961(n+1)`
-/

namespace A056798.P9704710319518994536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192134 (n + 1) + A192015 (n + 1)) * A000961 (n + 1)

end

end A056798.P9704710319518994536

namespace A056798

/-- `(A192134(n+1)+A192015(n+1))*A000961(n+1)` -/
def P9704710319518994536.Spec : Prop :=
  ∀ n, P9704710319518994536.a n = A056798 (n + 1)

end A056798

/-! ## A056798.P9203010169597972459

`(A138929(n+1)-A000961(n+1))*A000961(n+1)`
-/

namespace A056798.P9203010169597972459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) - A000961 (n + 1)) * A000961 (n + 1)

end

end A056798.P9203010169597972459

namespace A056798

/-- `(A138929(n+1)-A000961(n+1))*A000961(n+1)` -/
def P9203010169597972459.Spec : Prop :=
  ∀ n, P9203010169597972459.a n = A056798 (n + 1)

end A056798

/-! ## A056798.P1773795857329556389

`(A000961(n+2)-A057820(n+1))*A000961(n+1)`
-/

namespace A056798.P1773795857329556389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 2) - A057820 (n + 1)) * A000961 (n + 1)

end

end A056798.P1773795857329556389

namespace A056798

/-- `(A000961(n+2)-A057820(n+1))*A000961(n+1)` -/
def P1773795857329556389.Spec : Prop :=
  ∀ n, P1773795857329556389.a n = A056798 (n + 1)

end A056798

/-! ## A056798.P3371834295113559706

`record[n/a(A001221(n))]²/4` with `a(0)=2`
-/

namespace A056798.P3371834295113559706
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 / 4

end

end A056798.P3371834295113559706

namespace A056798

/-- `record[n/a(A001221(n))]²/4` -/
def P3371834295113559706.Spec : Prop :=
  ∀ n, P3371834295113559706.a n = (A056798 (n + 1) : ℚ)

end A056798

/-! ## A056798.P16078898488061274522

`record[(A020639(n+1)^A001222(n+1))²]`
-/

namespace A056798.P16078898488061274522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056798.P16078898488061274522

namespace A056798

/-- `record[(A020639(n+1)^A001222(n+1))²]` -/
def P16078898488061274522.Spec : Prop :=
  ∀ n, P16078898488061274522.a n = (A056798 (n + 1) : ℚ)

end A056798

/-! ## A056798.P17835250423146932468

`record[((n+1)/A006530(n+1)*A020639(n+1))²]`
-/

namespace A056798.P17835250423146932468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A020639 (n + 1) : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056798.P17835250423146932468

namespace A056798

/-- `record[((n+1)/A006530(n+1)*A020639(n+1))²]` -/
def P17835250423146932468.Spec : Prop :=
  ∀ n, P17835250423146932468.a n = (A056798 (n + 1) : ℚ)

end A056798

/-! ## A056798.P12286404427142735118

`A000961(n+1)^A000005(A025473(n+1))`
-/

namespace A056798.P12286404427142735118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) : ℚ) ^ (A000005 (A025473 (n + 1)).toNat : ℤ)

end

end A056798.P12286404427142735118

namespace A056798

/-- `A000961(n+1)^A000005(A025473(n+1))` -/
def P12286404427142735118.Spec : Prop :=
  ∀ n, P12286404427142735118.a n = (A056798 (n + 1) : ℚ)

end A056798

/-!
# A056799: Numbers n such that 8*9^n +1 is prime.

The programs for A056799, there is no canonical definition to state claims against.
-/

/-! ## A056799.P2160330783408818134

`record[A273943(A005538(n+1))]`
-/

namespace A056799.P2160330783408818134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A005538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056799.P2160330783408818134

