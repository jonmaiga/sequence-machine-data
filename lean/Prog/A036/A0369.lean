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
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A036903: Least k such that the decimal expansion of floor(Pi*10^k) contains every n-digit string.

The programs for A036903, there is no canonical definition to state claims against.
-/

/-! ## A036903.P2334892308106498065

`A080597(n+1)-1`
-/

namespace A036903.P2334892308106498065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080597 (n + 1) - 1

end

end A036903.P2334892308106498065

/-! ## A036903.P8796132701170268030

`abs(A080597(n+1)+A057428(n+1))`
-/

namespace A036903.P8796132701170268030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080597 (n + 1) + A057428 (n + 1)|

end

end A036903.P8796132701170268030

/-! ## A036903.P3554051742611500583

`A144432(∑[n+1])+A080597(n+1)`
-/

namespace A036903.P3554051742611500583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (∑ j ∈ Finset.range (n + 1), f1 j) + A080597 (n + 1)

end

end A036903.P3554051742611500583

/-! ## A036903.P12045481240739593439

`A135669(A367951(n+1))+A080597(n+1)`
-/

namespace A036903.P12045481240739593439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135669 (A367951 (n + 1)).toNat + A080597 (n + 1)

end

end A036903.P12045481240739593439

/-! ## A036903.P2099523649066502544

`A296677(A056753(2*(n+1)))+A080597(n+1)`
-/

namespace A036903.P2099523649066502544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296677 (A056753 (2 * (n + 1))).toNat + A080597 (n + 1)

end

end A036903.P2099523649066502544

/-!
# A036904: Scan decimal expansion of e until all n-digit strings have been seen; a(n) is number of digits that must be scanned.

The programs for A036904, there is no canonical definition to state claims against.
-/

/-! ## A036904.P18442224062514767151

`A365415(n+1)+1`
-/

namespace A036904.P18442224062514767151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365415 (n + 1) + 1

end

end A036904.P18442224062514767151

/-! ## A036904.P12009388872258888279

`A152182(n+1)+n`
-/

namespace A036904.P12009388872258888279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152182 (n + 1) + (n : ℤ)

end

end A036904.P12009388872258888279

/-!
# A036907: Square refactorable numbers.

The programs for A036907, there is no canonical definition to state claims against.
-/

/-! ## A036907.P15924215580942208104

`∩[A280353(n+1), n²]`
-/

namespace A036907.P15924215580942208104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A036907.P15924215580942208104

/-! ## A036907.P4869390157482952980

`∩[A322797(n+1), n²]`
-/

namespace A036907.P4869390157482952980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A036907.P4869390157482952980

/-! ## A036907.P797364567778709823

`∩[A000290(n), A280353(n+1)]`
-/

namespace A036907.P797364567778709823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P797364567778709823

/-! ## A036907.P9173083317242974815

`∩[A000290(n), A322797(n+1)]`
-/

namespace A036907.P9173083317242974815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P9173083317242974815

/-! ## A036907.P3933982160205157460

`∩[A002760(n+1), A280353(n+1)]`
-/

namespace A036907.P3933982160205157460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P3933982160205157460

/-! ## A036907.P9383531977219575008

`∩[A188915(n), A280353(n+1)]`
-/

namespace A036907.P9383531977219575008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P9383531977219575008

/-! ## A036907.P6136711679954995583

`∩[A266918(n+1), A280353(n+1)]`
-/

namespace A036907.P6136711679954995583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P6136711679954995583

/-! ## A036907.P9420423856982527814

`∩[A001597(n+1), A280353(n+1)]`
-/

namespace A036907.P9420423856982527814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P9420423856982527814

/-! ## A036907.P12361438468478967566

`∩[A073042(n+1), A280353(n+1)]`
-/

namespace A036907.P12361438468478967566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P12361438468478967566

/-! ## A036907.P3333721337036768380

`∩[A213011(n+1), A280353(n+1)]`
-/

namespace A036907.P3333721337036768380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P3333721337036768380

/-! ## A036907.P2218471612263963022

`∩[A213011(n+1), A322797(n+1)]`
-/

namespace A036907.P2218471612263963022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P2218471612263963022

/-! ## A036907.P14653323983191709042

`∩[A034793(n+1), A280353(n+1)]`
-/

namespace A036907.P14653323983191709042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P14653323983191709042

/-! ## A036907.P15983591350055567332

`∩[A034793(n+1), A322797(n+1)]`
-/

namespace A036907.P15983591350055567332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P15983591350055567332

/-! ## A036907.P17949282669155234371

`∩[A272266(n+1), A280353(n+1)]`
-/

namespace A036907.P17949282669155234371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P17949282669155234371

/-! ## A036907.P18320044782566897204

`∩[A272266(n+1), A322797(n+1)]`
-/

namespace A036907.P18320044782566897204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P18320044782566897204

/-! ## A036907.P2263429649754786070

`∩[A181385(n), A280353(n+1)]`
-/

namespace A036907.P2263429649754786070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P2263429649754786070

/-! ## A036907.P5250355525421570649

`∩[A181385(n), A322797(n+1)]`
-/

namespace A036907.P5250355525421570649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P5250355525421570649

/-! ## A036907.P12088547844818869538

`∩[A146994(n+1), A322797(n+1)]`
-/

namespace A036907.P12088547844818869538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P12088547844818869538

/-! ## A036907.P7403401340048389128

`∩[A228012(n+2), A280353(n+1)]`
-/

namespace A036907.P7403401340048389128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228012 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P7403401340048389128

/-! ## A036907.P7510804312152373694

`∩[A005214(n+1), A280353(n+1)]`
-/

namespace A036907.P7510804312152373694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036907.P7510804312152373694

/-!
# A036908: Number of different compact source directed animals with 1 point on the bottom line.

The programs for A036908, the canonical program `A036908.P5657673403250560357` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036908 has offset 1).

The definition of A036908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036908.P1735029690427381283

`3*a(n-1)-A086246(n)` with `a(0)=1`
-/

namespace A036908.P1735029690427381283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A086246 n

end

end A036908.P1735029690427381283

namespace A036908

/-- `3*a(n-1)-A086246(n)` -/
def P1735029690427381283.Spec : Prop :=
  ∀ n, P1735029690427381283.a n = A036908 (n + 1)

end A036908

/-! ## A036908.P5657673403250560357

`A140429(n)+A005773(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036908

/-- `A140429(n)+A005773(n)` -/
def P5657673403250560357.Spec : Prop :=
  ∀ n, P5657673403250560357.a n = A036908 (n + 1)

theorem P5657673403250560357.correct : P5657673403250560357.Spec := by
  intro n
  simp only [A036908, Nat.add_sub_cancel]

end A036908

/-! ## A036908.P4026602566730377778

`A005773(n)+Δ[A124302(n)]`
-/

namespace A036908.P4026602566730377778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + (f1 (n + 1) - f1 n)

end

end A036908.P4026602566730377778

namespace A036908

/-- `A005773(n)+Δ[A124302(n)]` -/
def P4026602566730377778.Spec : Prop :=
  ∀ n, P4026602566730377778.a n = A036908 (n + 1)

end A036908

/-! ## A036908.P15660974174218094175

`A307789(n+1)+A140429(n)`
-/

namespace A036908.P15660974174218094175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 1) + A140429 n

end

end A036908.P15660974174218094175

namespace A036908

/-- `A307789(n+1)+A140429(n)` -/
def P15660974174218094175.Spec : Prop :=
  ∀ n, P15660974174218094175.a n = A036908 (n + 1)

end A036908

/-! ## A036908.P14278837597007817859

`A005773(n)+A094388(n)-1`
-/

namespace A036908.P14278837597007817859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + (A094388 n - 1)

end

end A036908.P14278837597007817859

namespace A036908

/-- `A005773(n)+A094388(n)-1` -/
def P14278837597007817859.Spec : Prop :=
  ∀ n, P14278837597007817859.a n = A036908 (n + 1)

end A036908

/-! ## A036908.P8474939580000051282

`A005773(n)+record[A090880(n+1)]`
-/

namespace A036908.P8474939580000051282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036908.P8474939580000051282

namespace A036908

/-- `A005773(n)+record[A090880(n+1)]` -/
def P8474939580000051282.Spec : Prop :=
  ∀ n, P8474939580000051282.a n = A036908 (n + 1)

end A036908

/-! ## A036908.P6638669450144937477

`A140429(n)+ceil(∑[A105696(n)/2])`
-/

namespace A036908.P6638669450144937477
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105696 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A036908.P6638669450144937477

namespace A036908

/-- `A140429(n)+ceil(∑[A105696(n)/2])` -/
def P6638669450144937477.Spec : Prop :=
  ∀ n, P6638669450144937477.a n = A036908 (n + 1)

end A036908

/-! ## A036908.P3427000125308500538

`∑{#}[n, A005773(#)*A005773(n-#)]`
-/

namespace A036908.P3427000125308500538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A005773 k * A005773 (n - k)

end

end A036908.P3427000125308500538

namespace A036908

/-- `∑{#}[n, A005773(#)*A005773(n-#)]` -/
def P3427000125308500538.Spec : Prop :=
  ∀ n, P3427000125308500538.a n = A036908 (n + 1)

end A036908

/-! ## A036908.P4024517089879836951

`A232801(A004273(n))+A005773(n)`
-/

namespace A036908.P4024517089879836951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 (A004273 n).toNat + A005773 n

end

end A036908.P4024517089879836951

namespace A036908

/-- `A232801(A004273(n))+A005773(n)` -/
def P4024517089879836951.Spec : Prop :=
  ∀ n, P4024517089879836951.a n = A036908 (n + 1)

end A036908

/-! ## A036908.P6070742788319080040

`A025578(n+1)-A140429(n)`
-/

namespace A036908.P6070742788319080040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025578 (n + 1) - A140429 n

end

end A036908.P6070742788319080040

namespace A036908

/-- `A025578(n+1)-A140429(n)` -/
def P6070742788319080040.Spec : Prop :=
  ∀ n, P6070742788319080040.a n = A036908 (n + 1)

end A036908

/-! ## A036908.P6653254306875661335

`A005773(n)+Δ[A133494(n)/2]`
-/

namespace A036908.P6653254306875661335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133494 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005773 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A036908.P6653254306875661335

namespace A036908

/-- `A005773(n)+Δ[A133494(n)/2]` -/
def P6653254306875661335.Spec : Prop :=
  ∀ n, P6653254306875661335.a n = (A036908 (n + 1) : ℚ)

end A036908

/-! ## A036908.P6987603889837918550

`∑{#}[n, (-1)^(n-#)*C(n, #)*A371873(#)]`
-/

namespace A036908.P6987603889837918550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A371873 k : ℚ)

end

end A036908.P6987603889837918550

namespace A036908

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A371873(#)]` -/
def P6987603889837918550.Spec : Prop :=
  ∀ n, P6987603889837918550.a n = (A036908 (n + 1) : ℚ)

end A036908

/-!
# A036909: a(n) = (2/3) * 4^n * binomial(3*n, n).

The programs for A036909, the canonical program `A036909.P4177836558209038842` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036909 has offset 1).

The definition of A036909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036909.P6896528830608439633

`2/3*4^(n+1)*C(3*(n+1), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036909.P6896528830608439633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (4 ^ (n + 1) : ℚ) * (Nat.choose (3 * (n + 1)) (n + 1) : ℚ)

end

end A036909.P6896528830608439633

namespace A036909

/-- `2/3*4^(n+1)*C(3*(n+1), n+1)` -/
def P6896528830608439633.Spec : Prop :=
  ∀ n, P6896528830608439633.a n = (A036909 (n + 1) : ℚ)

end A036909

/-! ## A036909.P17178108734859136817

`2*4^(n+1)*A025174(n+1)`
-/

namespace A036909.P17178108734859136817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ (n + 1) : ℤ) * A025174 (n + 1)

end

end A036909.P17178108734859136817

namespace A036909

/-- `2*4^(n+1)*A025174(n+1)` -/
def P17178108734859136817.Spec : Prop :=
  ∀ n, P17178108734859136817.a n = A036909 (n + 1)

end A036909

/-! ## A036909.P4177836558209038842

`2/3*4^(n+1)*A005809(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036909

/-- `2/3*4^(n+1)*A005809(n+1)` -/
def P4177836558209038842.Spec : Prop :=
  ∀ n, P4177836558209038842.a n = (A036909 (n + 1) : ℚ)

end A036909

/-! ## A036909.P16489078928811842968

`∑{#}[n+1, C(4*(n+1), 2*(n+1-#))*C(#+n+1, n+1)]`
-/

namespace A036909.P16489078928811842968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (4 * (n + 1)) (2 * ((n + 1 : ℤ) - (k : ℤ))).toNat * Nat.choose (k + (n + 1)) (n + 1)

end

end A036909.P16489078928811842968

namespace A036909

/-- `∑{#}[n+1, C(4*(n+1), 2*(n+1-#))*C(#+n+1, n+1)]` -/
def P16489078928811842968.Spec : Prop :=
  ∀ n, (P16489078928811842968.a n : ℤ) = A036909 (n + 1)

end A036909

/-! ## A036909.P18207988727991547369

`2/3*A006588(n+1)`
-/

namespace A036909.P18207988727991547369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A006588 (n + 1) : ℚ)

end

end A036909.P18207988727991547369

namespace A036909

/-- `2/3*A006588(n+1)` -/
def P18207988727991547369.Spec : Prop :=
  ∀ n, P18207988727991547369.a n = (A036909 (n + 1) : ℚ)

end A036909

/-! ## A036909.P16576199072927342005

`A000079(n+1)²*A165817(n+1)`
-/

namespace A036909.P16576199072927342005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 * A165817 (n + 1)

end

end A036909.P16576199072927342005

namespace A036909

/-- `A000079(n+1)²*A165817(n+1)` -/
def P16576199072927342005.Spec : Prop :=
  ∀ n, P16576199072927342005.a n = A036909 (n + 1)

end A036909

/-! ## A036909.P10615585114040669289

`2*A000079(2*n+1)*A165817(n+1)`
-/

namespace A036909.P10615585114040669289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 (2 * n + 1) * A165817 (n + 1))

end

end A036909.P10615585114040669289

namespace A036909

/-- `2*A000079(2*n+1)*A165817(n+1)` -/
def P10615585114040669289.Spec : Prop :=
  ∀ n, P10615585114040669289.a n = A036909 (n + 1)

end A036909

/-! ## A036909.P16937172326016790455

`2*A082649(A033816(n)+n)`
-/

namespace A036909.P16937172326016790455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082649 (A033816 n + (n : ℤ)).toNat

end

end A036909.P16937172326016790455

namespace A036909

/-- `2*A082649(A033816(n)+n)` -/
def P16937172326016790455.Spec : Prop :=
  ∀ n, P16937172326016790455.a n = A036909 (n + 1)

end A036909

/-!
# A036910: a(n) = (binomial(4*n, 2*n) + binomial(2*n, n)^2)/2.

The programs for A036910, the canonical program `A036910.P2892870728817735227` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036910 has offset 0).

The definition of A036910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036910.P3977337171080528918

`∑{#}[n, C(2*n, #)²]`
-/

namespace A036910.P3977337171080528918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n) k ^ 2

end

end A036910.P3977337171080528918

namespace A036910

/-- `∑{#}[n, C(2*n, #)²]` -/
def P3977337171080528918.Spec : Prop :=
  ∀ n, (P3977337171080528918.a n : ℤ) = A036910 n

end A036910

/-! ## A036910.P2892870728817735227

`(A001448(n)+A000984(n)²)/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036910

/-- `(A001448(n)+A000984(n)²)/2` -/
def P2892870728817735227.Spec : Prop :=
  ∀ n, P2892870728817735227.a n = (A036910 n : ℚ)

end A036910

/-! ## A036910.P11642566729158796454

`(A000984(2*n)+A000984(n)²)/2`
-/

namespace A036910.P11642566729158796454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (2 * n) + A000984 n ^ 2 : ℚ) / 2

end

end A036910.P11642566729158796454

namespace A036910

/-- `(A000984(2*n)+A000984(n)²)/2` -/
def P11642566729158796454.Spec : Prop :=
  ∀ n, P11642566729158796454.a n = (A036910 n : ℚ)

end A036910

/-! ## A036910.P17174120359335034447

`A157531(C(2*n+1, 2)+n)/2`
-/

namespace A036910.P17174120359335034447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157531 (Nat.choose (2 * n + 1) 2 + n) : ℚ) / 2

end

end A036910.P17174120359335034447

namespace A036910

/-- `A157531(C(2*n+1, 2)+n)/2` -/
def P17174120359335034447.Spec : Prop :=
  ∀ n, P17174120359335034447.a n = (A036910 n : ℚ)

end A036910

/-! ## A036910.P15592517341020800944

`(C(4*n, 2*n)+C(2*n, n)²)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036910.P15592517341020800944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) (2 * n) + Nat.choose (2 * n) n ^ 2 : ℚ) / 2

end

end A036910.P15592517341020800944

namespace A036910

/-- `(C(4*n, 2*n)+C(2*n, n)²)/2` -/
def P15592517341020800944.Spec : Prop :=
  ∀ n, P15592517341020800944.a n = (A036910 n : ℚ)

end A036910

/-! ## A036910.P757404663459839569

`∑{#}[n, C(2*n, #)^2]`
-/

namespace A036910.P757404663459839569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n) k ^ 2

end

end A036910.P757404663459839569

namespace A036910

/-- `∑{#}[n, C(2*n, #)^2]` -/
def P757404663459839569.Spec : Prop :=
  ∀ n, (P757404663459839569.a n : ℤ) = A036910 n

end A036910

/-! ## A036910.P12534130936119748763

`∑{#}[n, C(2*n, #)*C(2*n, #)]`
-/

namespace A036910.P12534130936119748763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n) k * Nat.choose (2 * n) k

end

end A036910.P12534130936119748763

namespace A036910

/-- `∑{#}[n, C(2*n, #)*C(2*n, #)]` -/
def P12534130936119748763.Spec : Prop :=
  ∀ n, (P12534130936119748763.a n : ℤ) = A036910 n

end A036910

/-! ## A036910.P18351703925806432308

`A277247(2*n)`
-/

namespace A036910.P18351703925806432308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277247 (2 * n)

end

end A036910.P18351703925806432308

namespace A036910

/-- `A277247(2*n)` -/
def P18351703925806432308.Spec : Prop :=
  ∀ n, P18351703925806432308.a n = A036910 n

end A036910

/-! ## A036910.P2877139778083841137

`(A002894(n)+A001448(n))/2`
-/

namespace A036910.P2877139778083841137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002894 n + A001448 n : ℚ) / 2

end

end A036910.P2877139778083841137

namespace A036910

/-- `(A002894(n)+A001448(n))/2` -/
def P2877139778083841137.Spec : Prop :=
  ∀ n, P2877139778083841137.a n = (A036910 n : ℚ)

end A036910

/-! ## A036910.P14456891334493003561

`A000984(2*n)-A387635(n)`
-/

namespace A036910.P14456891334493003561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) - A387635 n

end

end A036910.P14456891334493003561

namespace A036910

/-- `A000984(2*n)-A387635(n)` -/
def P14456891334493003561.Spec : Prop :=
  ∀ n, P14456891334493003561.a n = A036910 n

end A036910

/-!
# A036911: a(n) = (binomial(4*n, 2*n) + (-1)^n*binomial(2*n, n)^2)/2.

The programs for A036911, the canonical program `A036911.P1814180691766575448` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036911 has offset 0).

The definition of A036911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036911.P1814180691766575448

`1/2*((2*n+1)*A000108(2*n)+(-1)^n*(n+1)²*A000108(n)²)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036911

/-- `1/2*((2*n+1)*A000108(2*n)+(-1)^n*(n+1)²*A000108(n)²)` -/
def P1814180691766575448.Spec : Prop :=
  ∀ n, P1814180691766575448.a n = (A036911 n : ℚ)

end A036911

/-! ## A036911.P17438401849406430669

`(C(4*n, 2*n)+(-1)^n*C(2*n, n)²)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A036911.P17438401849406430669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (4 * n) (2 * n) : ℤ) + (-1) ^ n * (Nat.choose (2 * n) n ^ 2 : ℤ) : ℚ) / 2

end

end A036911.P17438401849406430669

namespace A036911

/-- `(C(4*n, 2*n)+(-1)^n*C(2*n, n)²)/2` -/
def P17438401849406430669.Spec : Prop :=
  ∀ n, P17438401849406430669.a n = (A036911 n : ℚ)

end A036911

/-!
# A036912: Indices of the left-to-right maxima in A057635.

The programs for A036912, there is no canonical definition to state claims against.
-/

/-! ## A036912.P6461547158200868017

`A000010(A036913(n+1))`
-/

namespace A036912.P6461547158200868017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A036913 (n + 1)).toNat

end

end A036912.P6461547158200868017

/-! ## A036912.P7230091148885969066

`A002202(A132154(n+1))`
-/

namespace A036912.P7230091148885969066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (A132154 (n + 1)).toNat

end

end A036912.P7230091148885969066

/-! ## A036912.P106934322012995239

`A000010(2*A002181(A132154(n+1)))`
-/

namespace A036912.P106934322012995239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A002181 (A132154 (n + 1)).toNat).toNat

end

end A036912.P106934322012995239

/-! ## A036912.P3142947069690367686

`A000010(lcm(2, A002181(A132154(n+1))))`
-/

namespace A036912.P3142947069690367686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm 2 (A002181 (A132154 (n + 1)).toNat))

end

end A036912.P3142947069690367686

/-! ## A036912.P15687529124128012636

`A000010(or(1, A002181(A132154(n+1))))`
-/

namespace A036912.P15687529124128012636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor 1 (A002181 (A132154 (n + 1)).toNat)).toNat

end

end A036912.P15687529124128012636

/-! ## A036912.P6003578575597266849

`A000010(A219930(n+1))`
-/

namespace A036912.P6003578575597266849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A219930 (n + 1)).toNat

end

end A036912.P6003578575597266849

/-! ## A036912.P15878152428796539255

`A000010(record[A006511(n+1)])`
-/

namespace A036912.P15878152428796539255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036912.P15878152428796539255

/-! ## A036912.P12141288236440199436

`record[A000010(A122957(A052938(n)))]`
-/

namespace A036912.P12141288236440199436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A122957 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036912.P12141288236440199436

/-! ## A036912.P8335323417378009262

`A000010(record[A196079(n+1)+A002181(n+1)])`
-/

namespace A036912.P8335323417378009262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196079 (n + 1) + A002181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036912.P8335323417378009262

/-! ## A036912.P15558588873518836269

`∑[runs[A139795(n+1)]]`
-/

namespace A036912.P15558588873518836269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139795 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036912.P15558588873518836269

/-!
# A036913: Sparsely totient numbers; numbers n such that m > n implies phi(m) > phi(n).

The programs for A036913, there is no canonical definition to state claims against.
-/

/-! ## A036913.P15604800838272996168

`record[A006511(n+1)]`
-/

namespace A036913.P15604800838272996168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036913.P15604800838272996168

/-! ## A036913.P16928592534997516452

`A006511(A132154(n+1))`
-/

namespace A036913.P16928592534997516452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (A132154 (n + 1)).toNat

end

end A036913.P16928592534997516452

/-! ## A036913.P15236819463237416460

`record[A196079(n+1)+A002181(n+1)]`
-/

namespace A036913.P15236819463237416460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196079 (n + 1) + A002181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036913.P15236819463237416460

/-! ## A036913.P16822050977667685891

`∩[A043343(n+1), A122957(n+1)]`
-/

namespace A036913.P16822050977667685891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036913.P16822050977667685891

/-! ## A036913.P11333902141385422019

`record[A319048(n+1)]`
-/

namespace A036913.P11333902141385422019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036913.P11333902141385422019

/-! ## A036913.P15111936795855276413

`A319048(A036912(n+1))`
-/

namespace A036913.P15111936795855276413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (A036912 (n + 1)).toNat

end

end A036913.P15111936795855276413

/-! ## A036913.P43493822944255573

`record[A057635(n+1)]`
-/

namespace A036913.P43493822944255573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036913.P43493822944255573

/-! ## A036913.P7425298462788732724

`record[A066900(n+1)]`
-/

namespace A036913.P7425298462788732724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036913.P7425298462788732724

/-! ## A036913.P14075358947271969023

`A057635(A036912(n+1))`
-/

namespace A036913.P14075358947271969023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A036912 (n + 1)).toNat

end

end A036913.P14075358947271969023

/-! ## A036913.P6557255269294586957

`A139795(A036912(n+1)+1)-1`
-/

namespace A036913.P6557255269294586957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139795 (A036912 (n + 1) + 1).toNat - 1

end

end A036913.P6557255269294586957

/-!
# A036914: a(n) = binomial(2*n,n)*binomial(3*n,2*n)^4.

The programs for A036914, the canonical program `A036914.P68403730864508561` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036914 has offset 0).

The definition of A036914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n)*C(3*n, 2*n)^4` (program `A036914.P68403730864508561`, by `A036914.P68403730864508561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036914.P68403730864508561

`C(2*n, n)*C(3*n, 2*n)^4`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036914

/-- `C(2*n, n)*C(3*n, 2*n)^4` -/
def P68403730864508561.Spec : Prop :=
  ∀ n, (P68403730864508561.a n : ℤ) = A036914 n

theorem P68403730864508561.correct : P68403730864508561.Spec := by
  intro n
  simp only [A036914]

end A036914

/-! ## A036914.P9242922826178721930

`A188662(n)*A275047(n)`
-/

namespace A036914.P9242922826178721930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188662 n * A275047 n

end

end A036914.P9242922826178721930

namespace A036914

/-- `A188662(n)*A275047(n)` -/
def P9242922826178721930.Spec : Prop :=
  ∀ n, P9242922826178721930.a n = A036914 n

end A036914

/-! ## A036914.P13109356803502686370

`A188662(n)²*A000984(n)`
-/

namespace A036914.P13109356803502686370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188662 n ^ 2 * A000984 n

end

end A036914.P13109356803502686370

namespace A036914

/-- `A188662(n)²*A000984(n)` -/
def P13109356803502686370.Spec : Prop :=
  ∀ n, P13109356803502686370.a n = A036914 n

end A036914

/-! ## A036914.P6597847502480151

`A005809(n)²*A275047(n)`
-/

namespace A036914.P6597847502480151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n ^ 2 * A275047 n

end

end A036914.P6597847502480151

namespace A036914

/-- `A005809(n)²*A275047(n)` -/
def P6597847502480151.Spec : Prop :=
  ∀ n, P6597847502480151.a n = A036914 n

end A036914

/-! ## A036914.P61522221811029434

`A005809(n)^3*A006480(n)`
-/

namespace A036914.P61522221811029434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n ^ 3 * A006480 n

end

end A036914.P61522221811029434

namespace A036914

/-- `A005809(n)^3*A006480(n)` -/
def P61522221811029434.Spec : Prop :=
  ∀ n, P61522221811029434.a n = A036914 n

end A036914

/-!
# A036915: a(n) = Sum_{k=0..n} C(2*n-2*k,n-k)^2 * C(2*n,k)^2.

The programs for A036915, the canonical program `A036915.P2389501484262349306` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036915 has offset 0).

The definition of A036915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n-2*#, n-#)²*C(2*n, #)²]` (program `A036915.P2389501484262349306`, by `A036915.P2389501484262349306.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036915.P2389501484262349306

`∑{#}[n, C(2*n-2*#, n-#)²*C(2*n, #)²]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036915

/-- `∑{#}[n, C(2*n-2*#, n-#)²*C(2*n, #)²]` -/
def P2389501484262349306.Spec : Prop :=
  ∀ n, (P2389501484262349306.a n : ℤ) = A036915 n

theorem P2389501484262349306.correct : P2389501484262349306.Spec := by
  intro n
  simp only [A036915]

end A036915

/-!
# A036916: a(n) = Sum_{k=0..n} binomial(2*n-2*k,n-k)^2 * binomial(n,k)^2.

The programs for A036916, the canonical program `A036916.P9369018362379769255` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036916 has offset 0).

The definition of A036916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n-2*#, n-#)²*C(n, #)²]` (program `A036916.P9369018362379769255`, by `A036916.P9369018362379769255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036916.P9369018362379769255

`∑{#}[n, C(2*n-2*#, n-#)²*C(n, #)²]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036916

/-- `∑{#}[n, C(2*n-2*#, n-#)²*C(n, #)²]` -/
def P9369018362379769255.Spec : Prop :=
  ∀ n, (P9369018362379769255.a n : ℤ) = A036916 n

theorem P9369018362379769255.correct : P9369018362379769255.Spec := by
  intro n
  simp only [A036916]

end A036916

/-! ## A036916.P700238260476287817

`A275784(eq[4, A002262(n)])`
-/

namespace A036916.P700238260476287817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036916.P700238260476287817

namespace A036916

/-- `A275784(eq[4, A002262(n)])` -/
def P700238260476287817.Spec : Prop :=
  ∀ n, P700238260476287817.a n = A036916 n

end A036916

/-! ## A036916.P2212611433906626849

`record[A275784(A167499(n)-1)]`
-/

namespace A036916.P2212611433906626849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036916.P2212611433906626849

namespace A036916

/-- `record[A275784(A167499(n)-1)]` -/
def P2212611433906626849.Spec : Prop :=
  ∀ n, P2212611433906626849.a n = A036916 n

end A036916

/-! ## A036916.P16178871992215227995

`A275784(eq[4, A025668(n+1)])`
-/

namespace A036916.P16178871992215227995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036916.P16178871992215227995

namespace A036916

/-- `A275784(eq[4, A025668(n+1)])` -/
def P16178871992215227995.Spec : Prop :=
  ∀ n, P16178871992215227995.a n = A036916 n

end A036916

/-! ## A036916.P15746157154248832935

`A275784(eq[4, A025682(n+1)])`
-/

namespace A036916.P15746157154248832935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036916.P15746157154248832935

namespace A036916

/-- `A275784(eq[4, A025682(n+1)])` -/
def P15746157154248832935.Spec : Prop :=
  ∀ n, P15746157154248832935.a n = A036916 n

end A036916

/-!
# A036917: Expansion of g.f. (4/Pi^2)*EllipticK(4*x^(1/2))^2.

The programs for A036917, the canonical program `A036917.P301192298001712558` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036917 has offset 0).

The definition of A036917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036917.P301192298001712558

`∑{#}[n, (C(2*(n-#), n-#)*C(2*#, #))²]`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036917

/-- `∑{#}[n, (C(2*(n-#), n-#)*C(2*#, #))²]` -/
def P301192298001712558.Spec : Prop :=
  ∀ n, (P301192298001712558.a n : ℤ) = A036917 n

theorem P301192298001712558.correct : P301192298001712558.Spec := by
  intro n
  simp only [A036917]

end A036917

/-!
# A036918: a(n) = floor(e*(n-1)*(n-1)!).

The programs for A036918, the canonical program `A036918.P2075316134419150449` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036918 has offset 1).

The definition of A036918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036918.P2075316134419150449

`2*(A038155(n+1)-A038155(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036918

/-- `2*(A038155(n+1)-A038155(n))` -/
def P2075316134419150449.Spec : Prop :=
  ∀ n, P2075316134419150449.a n = A036918 (n + 1)

theorem P2075316134419150449.correct : P2075316134419150449.Spec := by
  intro n
  simp only [A036918, Nat.add_sub_cancel]

end A036918

/-! ## A036918.P15633105268474719241

`floor(Δ[e*n!])`
-/

namespace A036918.P15633105268474719241
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A036918.P15633105268474719241

namespace A036918

/-- `floor(Δ[e*n!])` -/
def P15633105268474719241.Spec : Prop :=
  ∀ n, P15633105268474719241.a n = A036918 (n + 1)

end A036918

/-! ## A036918.P6588903393142390874

`floor(e*n*n!)`
-/

namespace A036918.P6588903393142390874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n * Nat.factorial n : ℝ)⌋

end

end A036918.P6588903393142390874

namespace A036918

/-- `floor(e*n*n!)` -/
def P6588903393142390874.Spec : Prop :=
  ∀ n, P6588903393142390874.a n = A036918 (n + 1)

end A036918

/-! ## A036918.P12762432329927277401

`n*∑{#}[n, n!/#!]`
-/

namespace A036918.P12762432329927277401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial n : ℚ) / (Nat.factorial k : ℚ))

end

end A036918.P12762432329927277401

namespace A036918

/-- `n*∑{#}[n, n!/#!]` -/
def P12762432329927277401.Spec : Prop :=
  ∀ n, P12762432329927277401.a n = (A036918 (n + 1) : ℚ)

end A036918

/-! ## A036918.P2181552019804899665

`n*n!*∑[1/n!]`
-/

namespace A036918.P2181552019804899665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A036918.P2181552019804899665

namespace A036918

/-- `n*n!*∑[1/n!]` -/
def P2181552019804899665.Spec : Prop :=
  ∀ n, P2181552019804899665.a n = (A036918 (n + 1) : ℚ)

end A036918

/-! ## A036918.P8773457026963480628

`n*∑{#}[n, #!*C(n, #)]`
-/

namespace A036918.P8773457026963480628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ k ∈ Finset.range (f1 n + 1), Nat.factorial k * Nat.choose n k)

end

end A036918.P8773457026963480628

namespace A036918

/-- `n*∑{#}[n, #!*C(n, #)]` -/
def P8773457026963480628.Spec : Prop :=
  ∀ n, (P8773457026963480628.a n : ℤ) = A036918 (n + 1)

end A036918

/-! ## A036918.P2841044588850128505

`Δ[n*(a(n-1)+1)]-1` with `a(0)=0`
-/

namespace A036918.P2841044588850128505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n * (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A036918.P2841044588850128505

namespace A036918

/-- `Δ[n*(a(n-1)+1)]-1` -/
def P2841044588850128505.Spec : Prop :=
  ∀ n, P2841044588850128505.a n = A036918 (n + 1)

end A036918

/-! ## A036918.P4101688571593892725

`Δ[n*(n-(1-a(n-1)))]` with `a(0)=0`
-/

namespace A036918.P4101688571593892725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * ((n : ℤ) - (1 - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036918.P4101688571593892725

namespace A036918

/-- `Δ[n*(n-(1-a(n-1)))]` -/
def P4101688571593892725.Spec : Prop :=
  ∀ n, P4101688571593892725.a n = A036918 (n + 1)

end A036918

/-! ## A036918.P11001235076594986477

`Δ[lcm(n, 1-(a(n-1)+n))]` with `a(0)=0`
-/

namespace A036918.P11001235076594986477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lcm (n : ℤ) (1 - (f1 (n - 1) + n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A036918.P11001235076594986477

namespace A036918

/-- `Δ[lcm(n, 1-(a(n-1)+n))]` -/
def P11001235076594986477.Spec : Prop :=
  ∀ n, P11001235076594986477.a n = A036918 (n + 1)

end A036918

/-! ## A036918.P575532656531045863

`Δ[A038154(n)]`
-/

namespace A036918.P575532656531045863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036918.P575532656531045863

namespace A036918

/-- `Δ[A038154(n)]` -/
def P575532656531045863.Spec : Prop :=
  ∀ n, P575532656531045863.a n = A036918 (n + 1)

end A036918

/-!
# A036919: A036918/2.

The programs for A036919, there is no canonical definition to state claims against.
-/

/-! ## A036919.P16593173888901076631

`floor(Δ[e*n!]/2)`
-/

namespace A036919.P16593173888901076631
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) / 2⌋

end

end A036919.P16593173888901076631

/-! ## A036919.P10646010869691676638

`floor(e*n*n!/2)`
-/

namespace A036919.P10646010869691676638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n * Nat.factorial n : ℝ) / 2⌋

end

end A036919.P10646010869691676638

/-! ## A036919.P9314231221549266268

`Δ[C(n, 2)+n*a(n-1)]` with `a(0)=0`
-/

namespace A036919.P9314231221549266268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose n 2 + n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A036919.P9314231221549266268

/-! ## A036919.P3226694184301476304

`n!*∑[1/n!]*n/2`
-/

namespace A036919.P3226694184301476304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) * ((n : ℚ) / 2)

end

end A036919.P3226694184301476304

/-! ## A036919.P1647907768003674638

`Δ[n*(a(n-1)+(n-1)/2)]` with `a(0)=0`
-/

namespace A036919.P1647907768003674638
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℚ) * (f1 (n - 1) + ((n : ℤ) - 1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036919.P1647907768003674638

/-! ## A036919.P13924201897817942465

`Δ[lcm(n, a(n-1)+n-1)]/2` with `a(0)=0`
-/

namespace A036919.P13924201897817942465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lcm (n : ℤ) ((f1 (n - 1) : ℤ) + ((n : ℤ) - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2

end

end A036919.P13924201897817942465

/-! ## A036919.P11872221140927404689

`Δ[A038155(n)]`
-/

namespace A036919.P11872221140927404689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038155 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036919.P11872221140927404689

/-! ## A036919.P12052722388802085322

`Δ[abs(A009132(n))]`
-/

namespace A036919.P12052722388802085322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009132 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036919.P12052722388802085322

/-! ## A036919.P7503294929597852438

`Δ[Δ[A002807(n)]]`
-/

namespace A036919.P7503294929597852438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036919.P7503294929597852438

/-! ## A036919.P15304262439725555642

`floor(A001339(n)/2)`
-/

namespace A036919.P15304262439725555642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001339 n : ℚ) / 2⌋

end

end A036919.P15304262439725555642

/-!
# A036920: Composite numbers n such that digit sum of n equals digit sum of sum of its prime factors (counted with multiplicity).

The programs for A036920, there is no canonical definition to state claims against.
-/

/-! ## A036920.P4557146921856656624

`∪[A036922(n+1), A036923(n+1)]`
-/

namespace A036920.P4557146921856656624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036920.P4557146921856656624

/-! ## A036920.P7332685692200384952

`∩[A274829(n+1), A279314(n+1)]`
-/

namespace A036920.P7332685692200384952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036920.P7332685692200384952

/-! ## A036920.P11327536635468312187

`∩[A279314(n+1), A360799(n)]`
-/

namespace A036920.P11327536635468312187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036920.P11327536635468312187

/-!
# A036921: Numbers n such that digit sum of n equals digit sum of 'juxtaposition' and 'sum' of its prime factors (counted with multiplicity).

The programs for A036921, there is no canonical definition to state claims against.
-/

/-! ## A036921.P16778365406755329421

`∪[A036926(n+1), A036927(n+1)]`
-/

namespace A036921.P16778365406755329421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036921.P16778365406755329421

/-! ## A036921.P202282246050926525

`∩[A006753(n+1), A036920(n+1)]`
-/

namespace A036921.P202282246050926525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036921.P202282246050926525

/-! ## A036921.P12417197056032139019

`A006753(A265334(n+1)%A361005(n+1))`
-/

namespace A036921.P12417197056032139019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (Int.tmod (A265334 (n + 1)) (A361005 (n + 1))).toNat

end

end A036921.P12417197056032139019

/-! ## A036921.P2695827973337072767

`record[A006753(n+1)*A188068(A107248(n)+1)]`
-/

namespace A036921.P2695827973337072767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1) * A188068 (A107248 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036921.P2695827973337072767

/-!
# A036922: Even composite numbers whose digit sum equals the digit sum of (sum of prime factors, counted with multiplicity).

The programs for A036922, there is no canonical definition to state claims against.
-/

/-! ## A036922.P4426128406239893822

`∩[2*n, A036920(n+1)]`
-/

namespace A036922.P4426128406239893822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P4426128406239893822

/-! ## A036922.P11646479213112750161

`∩[A036920(n+1), A004271(n)]`
-/

namespace A036922.P11646479213112750161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P11646479213112750161

/-! ## A036922.P15010467211578105259

`∩[A036920(n+1), A004272(n)]`
-/

namespace A036922.P15010467211578105259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P15010467211578105259

/-! ## A036922.P8037707103883485958

`∩[A036920(n+1), A004275(n)]`
-/

namespace A036922.P8037707103883485958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P8037707103883485958

/-! ## A036922.P13710595998750808335

`∩[A036920(n+1), A004277(n)]`
-/

namespace A036922.P13710595998750808335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P13710595998750808335

/-! ## A036922.P8243292878498327634

`∩[A036920(n+1), A004279(n)]`
-/

namespace A036922.P8243292878498327634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P8243292878498327634

/-! ## A036922.P1703444247265952454

`∩[A036920(n+1), A005843(n)]`
-/

namespace A036922.P1703444247265952454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P1703444247265952454

/-! ## A036922.P348298566535762465

`∩[A036920(n+1), A103517(n)]`
-/

namespace A036922.P348298566535762465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P348298566535762465

/-! ## A036922.P1646059303904675448

`∩[A036920(n+1), A058992(n+1)]`
-/

namespace A036922.P1646059303904675448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P1646059303904675448

/-! ## A036922.P16450456317280927929

`∩[A036920(n+1), A163300(n+1)]`
-/

namespace A036922.P16450456317280927929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P16450456317280927929

/-! ## A036922.P4202803516527271813

`∩[A036920(n+1), A257282(n+1)]`
-/

namespace A036922.P4202803516527271813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P4202803516527271813

/-! ## A036922.P11422109188514538878

`∩[A036920(n+1), A257637(n+1)]`
-/

namespace A036922.P11422109188514538878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P11422109188514538878

/-! ## A036922.P10581574113773525525

`∩[A036920(n+1), A051755(n+2)]`
-/

namespace A036922.P10581574113773525525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P10581574113773525525

/-! ## A036922.P10445161576474457839

`∩[A036920(n+1), A106092(n+1)]`
-/

namespace A036922.P10445161576474457839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036922.P10445161576474457839

/-! ## A036922.P4631235314690487623

`record[A038608(A036920(n+1))]`
-/

namespace A036922.P4631235314690487623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A036920 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036922.P4631235314690487623

/-! ## A036922.P10980866052087657530

`filter[A036920(n+1), A059841(#)]`
-/

namespace A036922.P10980866052087657530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A036922.P10980866052087657530

/-! ## A036922.P15280873018328505446

`filter[A036920(n+1), A135528(#)]`
-/

namespace A036922.P15280873018328505446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A036922.P15280873018328505446

/-! ## A036922.P5782864446069426132

`filter[A036920(n+1), A266591(#)]`
-/

namespace A036922.P5782864446069426132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A036922.P5782864446069426132

/-! ## A036922.P6896046483519290569

`filter[A036920(n+1), A267043(#)]`
-/

namespace A036922.P6896046483519290569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A036922.P6896046483519290569

/-!
# A036923: Odd composite numbers n such that the digit sum of n equals digit sum of sum of its prime factors (counted with multiplicity).

The programs for A036923, there is no canonical definition to state claims against.
-/

/-! ## A036923.P11136233220156274200

`∩[2*n+1, A036920(n+1)]`
-/

namespace A036923.P11136233220156274200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P11136233220156274200

/-! ## A036923.P1102000887414862656

`filter[A036920(2+n), A379952(#)]`
-/

namespace A036923.P1102000887414862656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A036923.P1102000887414862656

/-! ## A036923.P16332032133477204626

`∩[A036920(n+1), A071904(n+1)]`
-/

namespace A036923.P16332032133477204626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P16332032133477204626

/-! ## A036923.P9770339634000965167

`∩[A036920(n+1), A255763(n+1)]`
-/

namespace A036923.P9770339634000965167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P9770339634000965167

/-! ## A036923.P17568566502446493

`∩[A036920(n+1), A088905(n+1)]`
-/

namespace A036923.P17568566502446493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P17568566502446493

/-! ## A036923.P13735022726599298102

`record[A093178(A036920(n+3))]`
-/

namespace A036923.P13735022726599298102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A036920 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036923.P13735022726599298102

/-! ## A036923.P5036485731748276036

`∩[A036920(n+1), A004273(n)]`
-/

namespace A036923.P5036485731748276036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P5036485731748276036

/-! ## A036923.P8929820113178859626

`∩[A036920(n+1), A004274(n)]`
-/

namespace A036923.P8929820113178859626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P8929820113178859626

/-! ## A036923.P15707295023534517862

`∩[A036920(n+1), A020742(n)]`
-/

namespace A036923.P15707295023534517862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P15707295023534517862

/-! ## A036923.P3327687337429111679

`∩[A036920(n+1), A060747(n)]`
-/

namespace A036923.P3327687337429111679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P3327687337429111679

/-! ## A036923.P9144320429451807241

`∩[A036920(n+1), A062545(n)]`
-/

namespace A036923.P9144320429451807241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P9144320429451807241

/-! ## A036923.P6207122856742341495

`∩[A036920(n+1), A130773(n)]`
-/

namespace A036923.P6207122856742341495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P6207122856742341495

/-! ## A036923.P4559747771083634105

`∩[A036920(n+1), A163985(n)]`
-/

namespace A036923.P4559747771083634105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P4559747771083634105

/-! ## A036923.P2615522465491484386

`∩[A036920(n+1), A004275(n)+1]`
-/

namespace A036923.P2615522465491484386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P2615522465491484386

/-! ## A036923.P3634815412901744282

`∩[A036920(n+1), A004277(n)+1]`
-/

namespace A036923.P3634815412901744282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P3634815412901744282

/-! ## A036923.P16074389003043217506

`∩[A036920(n+1), A005843(n)+1]`
-/

namespace A036923.P16074389003043217506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P16074389003043217506

/-! ## A036923.P9757239568618577991

`∩[A036920(n+1), A103517(n)+1]`
-/

namespace A036923.P9757239568618577991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P9757239568618577991

/-! ## A036923.P6844440457052679824

`∩[A036920(n+1), A140139(n+1)]`
-/

namespace A036923.P6844440457052679824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P6844440457052679824

/-! ## A036923.P467089704643985842

`∩[A036920(n+1), A144396(n+1)]`
-/

namespace A036923.P467089704643985842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P467089704643985842

/-! ## A036923.P2552568914771183830

`∩[A036920(n+1), A257292(n+1)]`
-/

namespace A036923.P2552568914771183830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036923.P2552568914771183830

/-!
# A036924: Digit sum of composite even number equals digit sum of juxtaposition of its prime factors (counted with multiplicity).

The programs for A036924, there is no canonical definition to state claims against.
-/

/-! ## A036924.P6452649845411098153

`∩[2*n, A006753(n+1)]`
-/

namespace A036924.P6452649845411098153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P6452649845411098153

/-! ## A036924.P8218202282584162100

`filter[A006753(n+1), A019427(#)]`
-/

namespace A036924.P8218202282584162100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A019427 (f1 j).toNat = 1) n)

end

end A036924.P8218202282584162100

/-! ## A036924.P11070159464319418635

`∩[A006753(n+1), A004271(n)]`
-/

namespace A036924.P11070159464319418635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P11070159464319418635

/-! ## A036924.P2350912395379034417

`∩[A006753(n+1), A004272(n)]`
-/

namespace A036924.P2350912395379034417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P2350912395379034417

/-! ## A036924.P6667972520763508700

`∩[A006753(n+1), A004275(n)]`
-/

namespace A036924.P6667972520763508700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P6667972520763508700

/-! ## A036924.P18149710951409195404

`∩[A006753(n+1), A004277(n)]`
-/

namespace A036924.P18149710951409195404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P18149710951409195404

/-! ## A036924.P17918193507755880866

`∩[A006753(n+1), A004279(n)]`
-/

namespace A036924.P17918193507755880866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P17918193507755880866

/-! ## A036924.P17537410176405866901

`∩[A006753(n+1), A005843(n)]`
-/

namespace A036924.P17537410176405866901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P17537410176405866901

/-! ## A036924.P223236309809837326

`∩[A006753(n+1), A103517(n)]`
-/

namespace A036924.P223236309809837326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P223236309809837326

/-! ## A036924.P4353628763180003822

`∩[A006753(n+1), A058992(n+1)]`
-/

namespace A036924.P4353628763180003822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P4353628763180003822

/-! ## A036924.P1775762327944150482

`∩[A006753(n+1), A163300(n+1)]`
-/

namespace A036924.P1775762327944150482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P1775762327944150482

/-! ## A036924.P802195480843582971

`∩[A006753(n+1), A257282(n+1)]`
-/

namespace A036924.P802195480843582971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P802195480843582971

/-! ## A036924.P7511667068542882542

`∩[A006753(n+1), A257637(n+1)]`
-/

namespace A036924.P7511667068542882542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P7511667068542882542

/-! ## A036924.P1687112552045562089

`∩[A006753(n+1), A106092(n+1)]`
-/

namespace A036924.P1687112552045562089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036924.P1687112552045562089

/-! ## A036924.P14361959314414522340

`record[A038608(A006753(n+1))]`
-/

namespace A036924.P14361959314414522340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A006753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036924.P14361959314414522340

/-! ## A036924.P9296406494797028442

`filter[A006753(n+1), A059841(#)]`
-/

namespace A036924.P9296406494797028442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A036924.P9296406494797028442

/-! ## A036924.P11216538998501720280

`filter[A006753(n+1), A135528(#)]`
-/

namespace A036924.P11216538998501720280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A036924.P11216538998501720280

/-! ## A036924.P14456597425475008116

`filter[A006753(n+1), A266591(#)]`
-/

namespace A036924.P14456597425475008116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A036924.P14456597425475008116

/-! ## A036924.P15787481659400984052

`filter[A006753(n+1), A267043(#)]`
-/

namespace A036924.P15787481659400984052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A036924.P15787481659400984052

/-! ## A036924.P5044875998365416130

`record[A029578(A006753(n+1)+1)]`
-/

namespace A036924.P5044875998365416130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A006753 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036924.P5044875998365416130

/-!
# A036925: Digit sum of composite odd number equals digit sum of juxtaposition of its prime factors (counted with multiplicity).

The programs for A036925, there is no canonical definition to state claims against.
-/

/-! ## A036925.P2888634536453296929

`A006753(eq[1, A006753(n+1)%2]+1)`
-/

namespace A036925.P2888634536453296929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006753 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A036925.P2888634536453296929

/-! ## A036925.P9513754938977847014

`A006753(eq[1, gcd(2, A006753(n+1))]+1)`
-/

namespace A036925.P9513754938977847014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A006753 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A036925.P9513754938977847014

/-! ## A036925.P5585103540672119613

`A006753(eq[1, and(1, A006753(n+1))]+1)`
-/

namespace A036925.P5585103540672119613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006753 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A036925.P5585103540672119613

/-! ## A036925.P6042711968391340150

`∩[2*n+1, A006753(n+1)]`
-/

namespace A036925.P6042711968391340150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P6042711968391340150

/-! ## A036925.P12190218029638446617

`∩[A006753(n+1), A014076(n+1)]`
-/

namespace A036925.P12190218029638446617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P12190218029638446617

/-! ## A036925.P10470572534347999529

`∩[A006753(n+1), A071904(n+1)]`
-/

namespace A036925.P10470572534347999529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P10470572534347999529

/-! ## A036925.P14788962170521685599

`∩[A014076(n+1), A098836(n+1)]`
-/

namespace A036925.P14788962170521685599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P14788962170521685599

/-! ## A036925.P5420695446350258054

`∩[A071904(n+1), A098836(n+1)]`
-/

namespace A036925.P5420695446350258054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P5420695446350258054

/-! ## A036925.P1492805731940422925

`∩[A006753(n+1), A255763(n+1)]`
-/

namespace A036925.P1492805731940422925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P1492805731940422925

/-! ## A036925.P13384307562657502291

`∩[A098836(n+1), A255763(n+1)]`
-/

namespace A036925.P13384307562657502291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P13384307562657502291

/-! ## A036925.P2249375073475104770

`record[A093178(A006753(n+3))]`
-/

namespace A036925.P2249375073475104770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A006753 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036925.P2249375073475104770

/-! ## A036925.P13309206033384699440

`record[A093178(A098836(n+3))]`
-/

namespace A036925.P13309206033384699440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A098836 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036925.P13309206033384699440

/-! ## A036925.P6953699787793720819

`∩[A006753(n+1), A004273(n)]`
-/

namespace A036925.P6953699787793720819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P6953699787793720819

/-! ## A036925.P784522586850991182

`∩[A006753(n+1), A004274(n)]`
-/

namespace A036925.P784522586850991182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P784522586850991182

/-! ## A036925.P618568072695693580

`∩[A006753(n+1), A020742(n)]`
-/

namespace A036925.P618568072695693580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P618568072695693580

/-! ## A036925.P13452557485748285252

`∩[A006753(n+1), A060747(n)]`
-/

namespace A036925.P13452557485748285252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P13452557485748285252

/-! ## A036925.P8159743876622963539

`∩[A006753(n+1), A062545(n)]`
-/

namespace A036925.P8159743876622963539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P8159743876622963539

/-! ## A036925.P1065867857163066083

`∩[A098836(n+1), A004273(n)]`
-/

namespace A036925.P1065867857163066083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P1065867857163066083

/-! ## A036925.P17610265366838913849

`∩[A098836(n+1), A004274(n)]`
-/

namespace A036925.P17610265366838913849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P17610265366838913849

/-! ## A036925.P2792122745914887890

`∩[A098836(n+1), A020742(n)]`
-/

namespace A036925.P2792122745914887890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036925.P2792122745914887890

/-!
# A036926: Digit sum of 'even' number equals digit sum of 'sum' and 'juxtaposition' of its prime factors (counted with multiplicity).

The programs for A036926, there is no canonical definition to state claims against.
-/

/-! ## A036926.P3964676621824309288

`∩[A036921(n+1), A036922(n+1)]`
-/

namespace A036926.P3964676621824309288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P3964676621824309288

/-! ## A036926.P15851356737255898136

`∩[A036921(n+1), A036924(n+1)]`
-/

namespace A036926.P15851356737255898136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P15851356737255898136

/-! ## A036926.P6208783278233341843

`∩[A036922(n+1), A036924(n+1)]`
-/

namespace A036926.P6208783278233341843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P6208783278233341843

/-! ## A036926.P502105999726060107

`∩[A036920(n+1), A036924(n+1)]`
-/

namespace A036926.P502105999726060107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P502105999726060107

/-! ## A036926.P3836985212514635734

`∩[A006753(n+1), A036922(n+1)]`
-/

namespace A036926.P3836985212514635734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P3836985212514635734

/-! ## A036926.P8350401511004113581

`∩[2*n, A036921(n+1)]`
-/

namespace A036926.P8350401511004113581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P8350401511004113581

/-! ## A036926.P4957234862708349143

`∩[A036921(n+1), A351910(n+1)]`
-/

namespace A036926.P4957234862708349143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P4957234862708349143

/-! ## A036926.P15139645335800370497

`∩[A036921(n+1), A217562(n+1)]`
-/

namespace A036926.P15139645335800370497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P15139645335800370497

/-! ## A036926.P13588753087823216987

`∩[A036921(n+1), A067315(n+1)]`
-/

namespace A036926.P13588753087823216987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P13588753087823216987

/-! ## A036926.P8327487421858597716

`∩[A036921(n+1), A053228(n+1)]`
-/

namespace A036926.P8327487421858597716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P8327487421858597716

/-! ## A036926.P328008767490658512

`∩[A036921(n+1), A348005(n+1)]`
-/

namespace A036926.P328008767490658512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P328008767490658512

/-! ## A036926.P17974127056560184662

`∩[A036921(n+1), A004271(n)]`
-/

namespace A036926.P17974127056560184662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P17974127056560184662

/-! ## A036926.P8257657228300265276

`∩[A036921(n+1), A004272(n)]`
-/

namespace A036926.P8257657228300265276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P8257657228300265276

/-! ## A036926.P4707665539455955214

`∩[A036921(n+1), A004275(n)]`
-/

namespace A036926.P4707665539455955214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P4707665539455955214

/-! ## A036926.P12266127740173955178

`∩[A036921(n+1), A004277(n)]`
-/

namespace A036926.P12266127740173955178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P12266127740173955178

/-! ## A036926.P9451129719985466122

`∩[A036921(n+1), A004279(n)]`
-/

namespace A036926.P9451129719985466122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P9451129719985466122

/-! ## A036926.P12960154424640270643

`∩[A036921(n+1), A005843(n)]`
-/

namespace A036926.P12960154424640270643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P12960154424640270643

/-! ## A036926.P744861230394428523

`∩[A036921(n+1), A103517(n)]`
-/

namespace A036926.P744861230394428523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P744861230394428523

/-! ## A036926.P18175615137270589707

`∩[A036921(n+1), A058992(n+1)]`
-/

namespace A036926.P18175615137270589707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P18175615137270589707

/-! ## A036926.P3143198456190574968

`∩[A036921(n+1), A063127(n+1)]`
-/

namespace A036926.P3143198456190574968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036926.P3143198456190574968

/-!
# A036927: Digit sum of 'odd' number equals digit sum of 'sum' and 'juxtaposition' of its prime factors (counted with multiplicity).

The programs for A036927, there is no canonical definition to state claims against.
-/

/-! ## A036927.P3932156481388697055

`∩[A036921(n+1), A036923(n+1)]`
-/

namespace A036927.P3932156481388697055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036927.P3932156481388697055

/-! ## A036927.P9104558714799105971

`∩[A036921(n+1), A036925(n+1)]`
-/

namespace A036927.P9104558714799105971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036927.P9104558714799105971

/-! ## A036927.P10148818538480030012

`∩[A036923(n+1), A036925(n+1)]`
-/

namespace A036927.P10148818538480030012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036927.P10148818538480030012

/-! ## A036927.P17209880748149512256

`∩[A036920(n+1), A036925(n+1)]`
-/

namespace A036927.P17209880748149512256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036927.P17209880748149512256

/-! ## A036927.P10153142243873031412

`∩[A036923(n+1), A098836(n+1)]`
-/

namespace A036927.P10153142243873031412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036927.P10153142243873031412

/-! ## A036927.P6370676453109739003

`∩[A006753(n+1), A036923(n+1)]`
-/

namespace A036927.P6370676453109739003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036927.P6370676453109739003

/-! ## A036927.P12460029102864161040

`filter[A036921(n+1), A374134(#)]`
-/

namespace A036927.P12460029102864161040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A036927.P12460029102864161040

/-! ## A036927.P17116777832844754172

`filter[A036921(n+2), A379952(#)]`
-/

namespace A036927.P17116777832844754172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036921 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A036927.P17116777832844754172

/-! ## A036927.P5776358926033250504

`record[A093178(A036921(n+3))]`
-/

namespace A036927.P5776358926033250504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A036921 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036927.P5776358926033250504

/-!
# A036928: Composite numbers whose prime factors contain no digits other than 0 and 1.

The programs for A036928, there is no canonical definition to state claims against.
-/

/-! ## A036928.P15852066068689844510

`∩[A068872(n+1), A385345(n+1)]`
-/

namespace A036928.P15852066068689844510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036928.P15852066068689844510

/-! ## A036928.P11262309982502774940

`∩[A062649(n+1), A385345(n+1)]`
-/

namespace A036928.P11262309982502774940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036928.P11262309982502774940

/-!
# A036929: Smallest n-digit prime containing only digits 0 and 1, or 0 if no such prime exists.

The programs for A036929, there is no canonical definition to state claims against.
-/

/-! ## A036929.P4189414198352094356

`A168586(A000005(5^n))`
-/

namespace A036929.P4189414198352094356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168586 (A000005 (5 ^ n)).toNat

end

end A036929.P4189414198352094356

/-! ## A036929.P14523510879300578658

`A168586(∑[A037957(n)!])`
-/

namespace A036929.P14523510879300578658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A037957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168586 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036929.P14523510879300578658

/-! ## A036929.P13995046542135602791

`A168586((n+1)^A307855(n))`
-/

namespace A036929.P13995046542135602791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168586 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A307855 n : ℤ))).toNat

end

end A036929.P13995046542135602791

/-! ## A036929.P13104540788712684534

`A168586(n+1)/A037227(A104358(n+2))`
-/

namespace A036929.P13104540788712684534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168586 (n + 1) : ℚ) / (A037227 (A104358 (n + 2)).toNat : ℚ)

end

end A036929.P13104540788712684534

/-!
# A036932: Smallest n-digit prime containing only digits 1 and 5, or 0 if no such prime exists.

The programs for A036932, there is no canonical definition to state claims against.
-/

/-! ## A036932.P16809982880912582470

`A386018(A160337(n+1)+A007091(n)!)`
-/

namespace A036932.P16809982880912582470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (A160337 (n + 1) + (Nat.factorial (A007091 n).toNat : ℤ)).toNat

end

end A036932.P16809982880912582470

/-!
# A036933: Smallest n-digit prime containing only digits 1 and 6, or 0 if no such prime exists.

The programs for A036933, there is no canonical definition to state claims against.
-/

/-! ## A036933.P11059051574388314189

`A020454(n+1)%A001597(A186654(n+1))`
-/

namespace A036933.P11059051574388314189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020454 (n + 1)) (A001597 (A186654 (n + 1)).toNat)

end

end A036933.P11059051574388314189

/-!
# A036934: Smallest n-digit prime containing only digits 1 and 7, or 0 if no such prime exists.

The programs for A036934, there is no canonical definition to state claims against.
-/

/-! ## A036934.P12441736074853474108

`A090535(n+1)-A005928(A054661(n+3))`
-/

namespace A036934.P12441736074853474108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090535 (n + 1) - A005928 (A054661 (n + 3)).toNat

end

end A036934.P12441736074853474108

/-!
# A036935: Smallest n-digit prime containing only digits 1 and 8, or 0 if no such prime exists.

The programs for A036935, there is no canonical definition to state claims against.
-/

/-! ## A036935.P6519764416445645637

`A134996(A134986(2*(n+1)))%A134983(3*n+1)`
-/

namespace A036935.P6519764416445645637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134996 (A134986 (2 * (n + 1))).toNat) (A134983 (3 * n + 1))

end

end A036935.P6519764416445645637

/-!
# A036937: Smallest n-digit prime containing only digits 2 and 3.

The programs for A036937, there is no canonical definition to state claims against.
-/

/-! ## A036937.P17662028986360058635

`p?[A032810(∑[A038569(n)])]`
-/

namespace A036937.P17662028986360058635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036937.P17662028986360058635

/-!
# A036939: Smallest n-digit prime containing only digits 2 and 9, or 0 if no such prime exists.

The programs for A036939, there is no canonical definition to state claims against.
-/

/-! ## A036939.P16394668292113577743

`p?[a(n%2)+10*a(floor(n/2))]` with `a(0)=9, a(1)=2`
-/

namespace A036939.P16394668292113577743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 2] fun n f1 =>
  f1 (n % 2) + 10 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A036939.P16394668292113577743

/-!
# A036940: Smallest n-digit prime containing only digits 3 and 4, or 0 if no such prime exists.

The programs for A036940, there is no canonical definition to state claims against.
-/

/-! ## A036940.P14976865573954022601

`A137248(3*n+4)%A350434(A252495(2*n+5))`
-/

namespace A036940.P14976865573954022601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137248 (3 * n + 4)) (A350434 (A252495 (2 * n + 5)).toNat)

end

end A036940.P14976865573954022601

/-! ## A036940.P16899930931810316285

`A137248(3*n+4)%A030291(A199340(n+1))`
-/

namespace A036940.P16899930931810316285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137248 (3 * n + 4)) (A030291 (A199340 (n + 1)).toNat)

end

end A036940.P16899930931810316285

/-!
# A036941: Smallest n-digit prime containing only digits 3 and 5, or 0 if no such prime exists.

The programs for A036941, there is no canonical definition to state claims against.
-/

/-! ## A036941.P13446409695682189897

`p?[A284379(record[A143114(n+1)])]`
-/

namespace A036941.P13446409695682189897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143114 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036941.P13446409695682189897

/-!
# A036942: Smallest n-digit prime containing only digits 3 and 7, or 0 if no such prime exists.

The programs for A036942, there is no canonical definition to state claims against.
-/

/-! ## A036942.P11310835562616991410

`p?[A143967(∑[A183211(n+1)])]`
-/

namespace A036942.P11310835562616991410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183211 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036942.P11310835562616991410

/-!
# A036947: Smallest n-digit prime containing only the digits 5 and 9, or 0 if no such prime exists.

The programs for A036947, there is no canonical definition to state claims against.
-/

/-! ## A036947.P16703598388125855834

`(6*10^n-1)*A263428(floor(10^(n-1)))`
-/

namespace A036947.P16703598388125855834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * 10 ^ n : ℤ) - 1) * A263428 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A036947.P16703598388125855834

/-!
# A036951: Smallest n-digit prime containing only the digits 8 and 9, or 0 if no such prime exists.

The programs for A036951, there is no canonical definition to state claims against.
-/

/-! ## A036951.P12035509198153600139

`A020472(A097014(n))*A117278(2*(n+2))`
-/

namespace A036951.P12035509198153600139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020472 (A097014 n).toNat * A117278 (2 * (n + 2))

end

end A036951.P12035509198153600139

/-!
# A036952: Numbers whose binary expansion is a decimal prime.

The programs for A036952, there is no canonical definition to state claims against.
-/

/-! ## A036952.P11852087937518295477

`∪[A065720(n+1), A156059(n+1)]`
-/

namespace A036952.P11852087937518295477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036952.P11852087937518295477

/-! ## A036952.P13828119613374093574

`eq[1, A077807(n+1)]+1`
-/

namespace A036952.P13828119613374093574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036952.P13828119613374093574

/-! ## A036952.P1686799396354700502

`eq[1, A077808(n+1)]+1`
-/

namespace A036952.P1686799396354700502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077808 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036952.P1686799396354700502

/-! ## A036952.P1252049060554060438

`lt[A077807(n+2), 2]+2`
-/

namespace A036952.P1252049060554060438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077807 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A036952.P1252049060554060438

/-! ## A036952.P8614988974274588192

`filter[2*n+1, A077807(#)]`
-/

namespace A036952.P8614988974274588192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A077807 (f1 j) = 1) n)

end

end A036952.P8614988974274588192

/-! ## A036952.P17835651474345756081

`filter[2*n+1, A077808(#)]`
-/

namespace A036952.P17835651474345756081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A077808 (f1 j) = 1) n)

end

end A036952.P17835651474345756081

/-! ## A036952.P247545406582696734

`eq[1, A077807(A028310(n))]`
-/

namespace A036952.P247545406582696734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077807 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036952.P247545406582696734

/-! ## A036952.P12340451168805949535

`A004442(eq[1, A077807(n+1)])`
-/

namespace A036952.P12340451168805949535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036952.P12340451168805949535

/-! ## A036952.P17219973839428177787

`A004442(eq[1, A077808(n+1)])`
-/

namespace A036952.P17219973839428177787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036952.P17219973839428177787

/-! ## A036952.P12604792915500954737

`A153152(eq[1, A077807(n+1)])`
-/

namespace A036952.P12604792915500954737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036952.P12604792915500954737

/-! ## A036952.P16566461489238340881

`A153152(eq[1, A077808(n+1)])`
-/

namespace A036952.P16566461489238340881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036952.P16566461489238340881

/-! ## A036952.P11881116611811445867

`lt[A235395(n+1), A077805(n+1)]+1`
-/

namespace A036952.P11881116611811445867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A036952.P11881116611811445867

/-! ## A036952.P11142450663416429036

`lt[A108787(n+1), A077805(A028310(n))+n]`
-/

namespace A036952.P11142450663416429036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (A028310 n).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036952.P11142450663416429036

/-! ## A036952.P8299341194262433845

`eq[1, A077807(A257088(n))]`
-/

namespace A036952.P8299341194262433845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077807 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036952.P8299341194262433845

/-!
# A036953: Primes having only {0, 1, 2} as digits.

The programs for A036953, there is no canonical definition to state claims against.
-/

/-! ## A036953.P3941412540567264350

`∪[A020449(n+1), A106100(n+1)]`
-/

namespace A036953.P3941412540567264350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P3941412540567264350

/-! ## A036953.P17660638939765447027

`∩[A386017(n+1), A386021(n+1)]`
-/

namespace A036953.P17660638939765447027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P17660638939765447027

/-! ## A036953.P9082991096139698799

`∩[A386017(n+1), A386018(n+1)]`
-/

namespace A036953.P9082991096139698799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P9082991096139698799

/-! ## A036953.P2493494213705191904

`∩[A386018(n+1), A386021(n+1)]`
-/

namespace A036953.P2493494213705191904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P2493494213705191904

/-! ## A036953.P13664207740529105599

`∩[A386017(n+1), A386019(n+1)]`
-/

namespace A036953.P13664207740529105599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P13664207740529105599

/-! ## A036953.P977408302215393671

`∩[A386018(n+1), A386019(n+1)]`
-/

namespace A036953.P977408302215393671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P977408302215393671

/-! ## A036953.P10883786076332693318

`∩[A386019(n+1), A386021(n+1)]`
-/

namespace A036953.P10883786076332693318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P10883786076332693318

/-! ## A036953.P9457755263621812956

`∩[A385344(n+1), A386017(n+1)]`
-/

namespace A036953.P9457755263621812956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P9457755263621812956

/-! ## A036953.P11223323262490069330

`∩[A385344(n+1), A386018(n+1)]`
-/

namespace A036953.P11223323262490069330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P11223323262490069330

/-! ## A036953.P6197490374570074807

`∩[A385344(n+1), A386019(n+1)]`
-/

namespace A036953.P6197490374570074807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P6197490374570074807

/-! ## A036953.P5810645445191836707

`∩[A385344(n+1), A386021(n+1)]`
-/

namespace A036953.P5810645445191836707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P5810645445191836707

/-! ## A036953.P10401287368763046321

`∩[A107715(n+1), A385344(n+1)]`
-/

namespace A036953.P10401287368763046321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P10401287368763046321

/-! ## A036953.P12339345769280644501

`∩[A107715(n+1), A386017(n+1)]`
-/

namespace A036953.P12339345769280644501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P12339345769280644501

/-! ## A036953.P4857462868735554339

`∩[A107715(n+1), A386018(n+1)]`
-/

namespace A036953.P4857462868735554339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P4857462868735554339

/-! ## A036953.P1773487443222276816

`∩[A107715(n+1), A386019(n+1)]`
-/

namespace A036953.P1773487443222276816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P1773487443222276816

/-! ## A036953.P12977101162752320119

`∩[A107715(n+1), A386020(n+1)]`
-/

namespace A036953.P12977101162752320119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P12977101162752320119

/-! ## A036953.P10379349134849318001

`∩[A107715(n+1), A386021(n+1)]`
-/

namespace A036953.P10379349134849318001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P10379349134849318001

/-! ## A036953.P8412043186656747616

`∩[A385344(n+1), A386020(n+1)]`
-/

namespace A036953.P8412043186656747616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P8412043186656747616

/-! ## A036953.P12054749387281714790

`∩[A386017(n+1), A386020(n+1)]`
-/

namespace A036953.P12054749387281714790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P12054749387281714790

/-! ## A036953.P7274926291324713288

`∩[A107715(n+1), A386022(n+1)]`
-/

namespace A036953.P7274926291324713288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036953.P7274926291324713288

/-!
# A036954: Primes with digits in {0,1,2} taken as base 3 and converted to base 10.

The programs for A036954, there is no canonical definition to state claims against.
-/

/-! ## A036954.P15510518809985557771

`A215090(∩[A036955(n+1), A023717(n)])`
-/

namespace A036954.P15510518809985557771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215090 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A036954.P15510518809985557771

/-! ## A036954.P9993284822123792974

`lt[A107393(A007089(n)), 0]`
-/

namespace A036954.P9993284822123792974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A007089 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A036954.P9993284822123792974

/-! ## A036954.P16206661009162827047

`1+eq[1, A001222(A007089(n+1))]`
-/

namespace A036954.P16206661009162827047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007089 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036954.P16206661009162827047

/-! ## A036954.P10151620293794057334

`record[(n+2)/A001222(A007089(n+2))]`
-/

namespace A036954.P10151620293794057334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A001222 (A007089 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036954.P10151620293794057334

/-! ## A036954.P9275483221367107399

`A028898(A036953(n+1))`
-/

namespace A036954.P9275483221367107399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A036953 (n + 1)).toNat

end

end A036954.P9275483221367107399

/-!
# A036955: Numbers whose base-4 representation is the decimal representation of a prime.

The programs for A036955, the canonical program `A036955.P16917858282918792280` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036955 has offset 1).

The definition of A036955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036955.P16917858282918792280

`eq[1, ∑{e}[A007090(n), #]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036955

/-- `eq[1, ∑{e}[A007090(n), #]]` -/
def P16917858282918792280.Spec : Prop :=
  ∀ n, (P16917858282918792280.a n : ℤ) = A036955 (n + 1)

theorem P16917858282918792280.correct : P16917858282918792280.Spec := by
  intro n
  simp only [A036955, Nat.add_sub_cancel]

end A036955

/-! ## A036955.P17909451912223660124

`eq[1, A001222(A007090(n+1))]+1`
-/

namespace A036955.P17909451912223660124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007090 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036955.P17909451912223660124

namespace A036955

/-- `eq[1, A001222(A007090(n+1))]+1` -/
def P17909451912223660124.Spec : Prop :=
  ∀ n, (P17909451912223660124.a n : ℤ) = A036955 (n + 1)

end A036955

/-! ## A036955.P10681969842072068495

`eq[1, A304687(A007090(n)+1)]+1`
-/

namespace A036955.P10681969842072068495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304687 (A007090 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036955.P10681969842072068495

namespace A036955

/-- `eq[1, A304687(A007090(n)+1)]+1` -/
def P10681969842072068495.Spec : Prop :=
  ∀ n, (P10681969842072068495.a n : ℤ) = A036955 (n + 1)

end A036955

/-! ## A036955.P14859324245097541804

`A028899(A107715(n+1))`
-/

namespace A036955.P14859324245097541804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028899 (A107715 (n + 1)).toNat

end

end A036955.P14859324245097541804

namespace A036955

/-- `A028899(A107715(n+1))` -/
def P14859324245097541804.Spec : Prop :=
  ∀ n, P14859324245097541804.a n = A036955 (n + 1)

end A036955

/-! ## A036955.P5675843625849952841

`eq[1, A032741(A007090(n))]`
-/

namespace A036955.P5675843625849952841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036955.P5675843625849952841

namespace A036955

/-- `eq[1, A032741(A007090(n))]` -/
def P5675843625849952841.Spec : Prop :=
  ∀ n, (P5675843625849952841.a n : ℤ) = A036955 (n + 1)

end A036955

/-!
# A036956: Primes containing only digits from the set (0,1,2,3,4).

The programs for A036956, there is no canonical definition to state claims against.
-/

/-! ## A036956.P11187551166282010060

`A108636(n+1)/2`
-/

namespace A036956.P11187551166282010060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108636 (n + 1) : ℚ) / 2

end

end A036956.P11187551166282010060

/-! ## A036956.P8626775864810329297

`∪[A106098(n+1), A107715(n+1)]`
-/

namespace A036956.P8626775864810329297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P8626775864810329297

/-! ## A036956.P2833277196744935536

`∩[A036958(n+1), A386351(n+1)]`
-/

namespace A036956.P2833277196744935536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P2833277196744935536

/-! ## A036956.P376611651058375733

`∩[A036958(n+1), A386353(n+1)]`
-/

namespace A036956.P376611651058375733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P376611651058375733

/-! ## A036956.P12538285257778624819

`p?[A007091(n)]`
-/

namespace A036956.P12538285257778624819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036956.P12538285257778624819

/-! ## A036956.P12381615342992752124

`A007091(A036957(n+1))`
-/

namespace A036956.P12381615342992752124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A036957 (n + 1)).toNat

end

end A036956.P12381615342992752124

/-! ## A036956.P11353112848698280680

`∩[A036958(n+1), A007091(n)]`
-/

namespace A036956.P11353112848698280680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P11353112848698280680

/-! ## A036956.P8095846353903322864

`∩[A036960(n+1), A007091(n)]`
-/

namespace A036956.P8095846353903322864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P8095846353903322864

/-! ## A036956.P13640190512743341994

`∩[A036962(n+1), A007091(n)]`
-/

namespace A036956.P13640190512743341994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P13640190512743341994

/-! ## A036956.P4345376932684399022

`∩[A038615(n+1), A007091(n)]`
-/

namespace A036956.P4345376932684399022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P4345376932684399022

/-! ## A036956.P12013564104506138643

`∩[A007091(n), A038616(n+1)]`
-/

namespace A036956.P12013564104506138643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P12013564104506138643

/-! ## A036956.P10454874173568150030

`∩[A038617(n+1), A007091(n)]`
-/

namespace A036956.P10454874173568150030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P10454874173568150030

/-! ## A036956.P2918790208779194595

`∩[A386351(n+1), A007091(n)]`
-/

namespace A036956.P2918790208779194595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P2918790208779194595

/-! ## A036956.P1361643991971386811

`∩[A014263(n+1), A257842(n+1)]/2`
-/

namespace A036956.P1361643991971386811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257842 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A036956.P1361643991971386811

/-! ## A036956.P3623030599968900948

`∩[A036958(n+1), A386350(n+1)]`
-/

namespace A036956.P3623030599968900948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P3623030599968900948

/-! ## A036956.P16338564746969110792

`∩[A036958(n+1), A386352(n+1)]`
-/

namespace A036956.P16338564746969110792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P16338564746969110792

/-! ## A036956.P2370614705474668286

`∩[A036960(n+1), A386350(n+1)]`
-/

namespace A036956.P2370614705474668286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P2370614705474668286

/-! ## A036956.P105763270567717615

`∩[A244392(n+1), A395817(n+1)]`
-/

namespace A036956.P105763270567717615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P105763270567717615

/-! ## A036956.P11569480638615494501

`∩[A386350(n+1), A395817(n+1)]`
-/

namespace A036956.P11569480638615494501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036956.P11569480638615494501

/-!
# A036957: Primes with digits (0,...,4) taken as base 5 and converted to base 10.

The programs for A036957, the canonical program `A036957.P14141534106226946657` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036957 has offset 1).

The definition of A036957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036957.P14141534106226946657

`eq[1, A001222(A007091(n+1))]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036957

/-- `eq[1, A001222(A007091(n+1))]+1` -/
def P14141534106226946657.Spec : Prop :=
  ∀ n, (P14141534106226946657.a n : ℤ) = A036957 (n + 1)

theorem P14141534106226946657.correct : P14141534106226946657.Spec := by
  intro n
  simp only [A036957, Nat.add_sub_cancel]

end A036957

/-! ## A036957.P93143026302855640

`record[n/a(A001222(A007091(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A036957.P93143026302855640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (A001222 (A007091 n).toNat).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036957.P93143026302855640

namespace A036957

/-- `record[n/a(A001222(A007091(n)))]` -/
def P93143026302855640.Spec : Prop :=
  ∀ n, P93143026302855640.a n = (A036957 (n + 1) : ℚ)

end A036957

/-! ## A036957.P13180572228602832532

`record[(n+2)/A001222(A007091(n+2))]`
-/

namespace A036957.P13180572228602832532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A001222 (A007091 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036957.P13180572228602832532

namespace A036957

/-- `record[(n+2)/A001222(A007091(n+2))]` -/
def P13180572228602832532.Spec : Prop :=
  ∀ n, P13180572228602832532.a n = (A036957 (n + 1) : ℚ)

end A036957

/-! ## A036957.P16621243607754655606

`eq[1, A175126(A007091(n))]`
-/

namespace A036957.P16621243607754655606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036957.P16621243607754655606

namespace A036957

/-- `eq[1, A175126(A007091(n))]` -/
def P16621243607754655606.Spec : Prop :=
  ∀ n, (P16621243607754655606.a n : ℤ) = A036957 (n + 1)

end A036957

/-! ## A036957.P9684524899207097041

`eq[A060576(n), A107463(A007091(n))]`
-/

namespace A036957.P9684524899207097041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036957.P9684524899207097041

namespace A036957

/-- `eq[A060576(n), A107463(A007091(n))]` -/
def P9684524899207097041.Spec : Prop :=
  ∀ n, (P9684524899207097041.a n : ℤ) = A036957 (n + 1)

end A036957

/-! ## A036957.P7073568555788609311

`A028900(p?[A007091(n)])`
-/

namespace A036957.P7073568555788609311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A036957.P7073568555788609311

namespace A036957

/-- `A028900(p?[A007091(n)])` -/
def P7073568555788609311.Spec : Prop :=
  ∀ n, P7073568555788609311.a n = A036957 (n + 1)

end A036957

/-! ## A036957.P6013310120322785202

`A028900(A036956(n+1))`
-/

namespace A036957.P6013310120322785202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A036956 (n + 1)).toNat

end

end A036957.P6013310120322785202

namespace A036957

/-- `A028900(A036956(n+1))` -/
def P6013310120322785202.Spec : Prop :=
  ∀ n, P6013310120322785202.a n = A036957 (n + 1)

end A036957

/-! ## A036957.P5579215615181941943

`lt[1, A105700(A014263(n+1))]`
-/

namespace A036957.P5579215615181941943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A014263 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A036957.P5579215615181941943

namespace A036957

/-- `lt[1, A105700(A014263(n+1))]` -/
def P5579215615181941943.Spec : Prop :=
  ∀ n, (P5579215615181941943.a n : ℤ) = A036957 (n + 1)

end A036957

/-! ## A036957.P16296083429557895517

`lt[1, A105700(2*A007091(n))]`
-/

namespace A036957.P16296083429557895517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A036957.P16296083429557895517

namespace A036957

/-- `lt[1, A105700(2*A007091(n))]` -/
def P16296083429557895517.Spec : Prop :=
  ∀ n, (P16296083429557895517.a n : ℤ) = A036957 (n + 1)

end A036957

/-! ## A036957.P2011014715572124602

`eq[2, A226378(2*A007091(n))]`
-/

namespace A036957.P2011014715572124602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036957.P2011014715572124602

namespace A036957

/-- `eq[2, A226378(2*A007091(n))]` -/
def P2011014715572124602.Spec : Prop :=
  ∀ n, (P2011014715572124602.a n : ℤ) = A036957 (n + 1)

end A036957

/-!
# A036958: Primes containing only digits from the set (0,1,2,3,4,5).

The programs for A036958, there is no canonical definition to state claims against.
-/

/-! ## A036958.P6540781320692958294

`∪[A036956(n+1), A106097(n+1)]`
-/

namespace A036958.P6540781320692958294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P6540781320692958294

/-! ## A036958.P13970771791769671683

`∩[A036960(n+1), A386354(n+1)]`
-/

namespace A036958.P13970771791769671683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P13970771791769671683

/-! ## A036958.P213361108432323718

`∩[A036960(n+1), A386356(n+1)]`
-/

namespace A036958.P213361108432323718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P213361108432323718

/-! ## A036958.P4214803332808930912

`∩[A036962(n+1), A386354(n+1)]`
-/

namespace A036958.P4214803332808930912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P4214803332808930912

/-! ## A036958.P7677501950371198142

`∩[A386356(n+1), A386357(n+1)]`
-/

namespace A036958.P7677501950371198142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P7677501950371198142

/-! ## A036958.P7633190611827222901

`∩[A036960(n+1), A386355(n+1)]`
-/

namespace A036958.P7633190611827222901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P7633190611827222901

/-! ## A036958.P10873215700613773728

`∩[A386355(n+1), A386358(n+1)]`
-/

namespace A036958.P10873215700613773728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P10873215700613773728

/-! ## A036958.P1867950932522621342

`∩[A036960(n+1), A038614(n+1)]`
-/

namespace A036958.P1867950932522621342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P1867950932522621342

/-! ## A036958.P5730394137312732372

`p?[A007092(n)]`
-/

namespace A036958.P5730394137312732372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036958.P5730394137312732372

/-! ## A036958.P5967786506379417546

`A007092(A036959(n+1))`
-/

namespace A036958.P5967786506379417546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A036959 (n + 1)).toNat

end

end A036958.P5967786506379417546

/-! ## A036958.P17507103170273316162

`∩[A036960(n+1), A007092(n)]`
-/

namespace A036958.P17507103170273316162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P17507103170273316162

/-! ## A036958.P1996763122969177577

`∩[A036962(n+1), A007092(n)]`
-/

namespace A036958.P1996763122969177577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P1996763122969177577

/-! ## A036958.P4508178434395258132

`∩[A038614(n+1), A007092(n)]`
-/

namespace A036958.P4508178434395258132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P4508178434395258132

/-! ## A036958.P14194290689720518705

`∩[A038615(n+1), A007092(n)]`
-/

namespace A036958.P14194290689720518705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P14194290689720518705

/-! ## A036958.P65155078003550612

`∩[A038616(n+1), A007092(n)]`
-/

namespace A036958.P65155078003550612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P65155078003550612

/-! ## A036958.P11585454261315880583

`∩[A038617(n+1), A007092(n)]`
-/

namespace A036958.P11585454261315880583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P11585454261315880583

/-! ## A036958.P8395116667731661964

`∩[A042986(n+1), A007092(n)]`
-/

namespace A036958.P8395116667731661964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P8395116667731661964

/-! ## A036958.P703030943090269118

`∩[A007092(n), A229106(n+1)]`
-/

namespace A036958.P703030943090269118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P703030943090269118

/-! ## A036958.P7679516642988657754

`∩[A386354(n+1), A007092(n)]`
-/

namespace A036958.P7679516642988657754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P7679516642988657754

/-! ## A036958.P10602924006607664200

`∩[A000040(n+1), A007092(n)]`
-/

namespace A036958.P10602924006607664200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036958.P10602924006607664200

/-!
# A036959: Primes with digits (0,...,5) taken as base 6 and converted to base 10.

The programs for A036959, there is no canonical definition to state claims against.
-/

/-! ## A036959.P14401764564206024837

`eq[1, ∑{e}[A007092(n), #]]`
-/

namespace A036959.P14401764564206024837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036959.P14401764564206024837

/-! ## A036959.P7500613642014500280

`eq[1, A001222(A007092(n+1))]+1`
-/

namespace A036959.P7500613642014500280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007092 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036959.P7500613642014500280

/-! ## A036959.P3491091226292556271

`record[(n+2)/A001222(A007092(n+2))]`
-/

namespace A036959.P3491091226292556271
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A001222 (A007092 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036959.P3491091226292556271

/-! ## A036959.P10488727410313930604

`2*record[(n+1)/A000005(A007092(n)+1)]`
-/

namespace A036959.P10488727410313930604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000005 (A007092 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036959.P10488727410313930604

/-! ## A036959.P12518569113039771520

`eq[A000010(A007092(n+1)), A007092(n)]+1`
-/

namespace A036959.P12518569113039771520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007092 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A036959.P12518569113039771520

/-! ## A036959.P979150627898241540

`eq[1, A175126(A007092(n))]`
-/

namespace A036959.P979150627898241540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036959.P979150627898241540

/-! ## A036959.P6264828207419340560

`A028901(p?[A007092(n)])`
-/

namespace A036959.P6264828207419340560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A036959.P6264828207419340560

/-! ## A036959.P17725965944063246735

`A028901(A036958(n+1))`
-/

namespace A036959.P17725965944063246735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A036958 (n + 1)).toNat

end

end A036959.P17725965944063246735

/-! ## A036959.P11656594326714249627

`eq[1, A001222(lt[A054055(n), 6]+1)]+1`
-/

namespace A036959.P11656594326714249627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036959.P11656594326714249627

/-! ## A036959.P4711304433577235576

`eq[A000007(n), A007920(A007092(n))]`
-/

namespace A036959.P4711304433577235576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036959.P4711304433577235576

/-! ## A036959.P12607820881035767195

`eq[A010121(n), A032741(A007092(n))]`
-/

namespace A036959.P12607820881035767195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036959.P12607820881035767195

/-! ## A036959.P8683550351868356756

`lt[1, A105700(2*A007092(n))]`
-/

namespace A036959.P8683550351868356756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A036959.P8683550351868356756

/-! ## A036959.P14107114514544594526

`eq[2, A226378(2*A007092(n))]`
-/

namespace A036959.P14107114514544594526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036959.P14107114514544594526

/-!
# A036960: Primes containing only digits from the set (0,1,2,3,4,5,6).

The programs for A036960, there is no canonical definition to state claims against.
-/

/-! ## A036960.P7115634190878312603

`∪[A036958(n+1), A106096(n+1)]`
-/

namespace A036960.P7115634190878312603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P7115634190878312603

/-! ## A036960.P1335548622284160054

`∩[A038616(n+1), A386358(n+1)]`
-/

namespace A036960.P1335548622284160054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P1335548622284160054

/-! ## A036960.P14261091339333307392

`∩[A038617(n+1), A386357(n+1)]`
-/

namespace A036960.P14261091339333307392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P14261091339333307392

/-! ## A036960.P10285646340706460248

`∩[A386357(n+1), A386358(n+1)]`
-/

namespace A036960.P10285646340706460248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P10285646340706460248

/-! ## A036960.P11160558473500343064

`∩[A036962(n+1), A038615(n+1)]`
-/

namespace A036960.P11160558473500343064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P11160558473500343064

/-! ## A036960.P6330786715150526607

`∩[A036962(n+1), A386357(n+1)]`
-/

namespace A036960.P6330786715150526607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P6330786715150526607

/-! ## A036960.P3028999618803127001

`∩[A036962(n+1), A386358(n+1)]`
-/

namespace A036960.P3028999618803127001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P3028999618803127001

/-! ## A036960.P2296540546217421433

`p?[A007093(n)]`
-/

namespace A036960.P2296540546217421433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036960.P2296540546217421433

/-! ## A036960.P7511403857829016012

`A007093(A036961(n+1))`
-/

namespace A036960.P7511403857829016012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A036961 (n + 1)).toNat

end

end A036960.P7511403857829016012

/-! ## A036960.P2467201809897131959

`filter[A007093(n+1), A010051(#)]`
-/

namespace A036960.P2467201809897131959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A036960.P2467201809897131959

/-! ## A036960.P13189100909961556341

`∩[A000040(n+1), A007093(n)]`
-/

namespace A036960.P13189100909961556341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P13189100909961556341

/-! ## A036960.P7329541392073482673

`∩[A036962(n+1), A007093(n)]`
-/

namespace A036960.P7329541392073482673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P7329541392073482673

/-! ## A036960.P11654967857283355338

`∩[A038615(n+1), A007093(n)]`
-/

namespace A036960.P11654967857283355338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P11654967857283355338

/-! ## A036960.P10123381064054778757

`∩[A038616(n+1), A007093(n)]`
-/

namespace A036960.P10123381064054778757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P10123381064054778757

/-! ## A036960.P4347630613501060535

`∩[A038617(n+1), A007093(n)]`
-/

namespace A036960.P4347630613501060535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P4347630613501060535

/-! ## A036960.P13180373790812271217

`∩[A042986(n+1), A007093(n)]`
-/

namespace A036960.P13180373790812271217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P13180373790812271217

/-! ## A036960.P3811755343952748782

`∩[A386357(n+1), A007093(n)]`
-/

namespace A036960.P3811755343952748782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P3811755343952748782

/-! ## A036960.P15823524490499533791

`∩[A386358(n+1), A007093(n)]`
-/

namespace A036960.P15823524490499533791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P15823524490499533791

/-! ## A036960.P17873164456542760437

`p?[A007094(A037474(n))]`
-/

namespace A036960.P17873164456542760437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A037474 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036960.P17873164456542760437

/-! ## A036960.P10153601229486194013

`∩[A038615(n+1), A007094(n)]`
-/

namespace A036960.P10153601229486194013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036960.P10153601229486194013

/-!
# A036961: Primes with digits (0,...,6) taken as base 7 and converted to base 10.

The programs for A036961, the canonical program `A036961.P5921176346613143736` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036961 has offset 1).

The definition of A036961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 757 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036961.P5921176346613143736

`eq[1, ∑{e}[A007093(n), #]]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A036961

/-- `eq[1, ∑{e}[A007093(n), #]]` -/
def P5921176346613143736.Spec : Prop :=
  ∀ n, (P5921176346613143736.a n : ℤ) = A036961 (n + 1)

theorem P5921176346613143736.correct : P5921176346613143736.Spec := by
  intro n
  simp only [A036961, Nat.add_sub_cancel]

end A036961

/-! ## A036961.P12159273028501252106

`eq[2, A000005(A007093(n+1))]+1`
-/

namespace A036961.P12159273028501252106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036961.P12159273028501252106

namespace A036961

/-- `eq[2, A000005(A007093(n+1))]+1` -/
def P12159273028501252106.Spec : Prop :=
  ∀ n, (P12159273028501252106.a n : ℤ) = A036961 (n + 1)

end A036961

/-! ## A036961.P18390468184828024659

`record[(n+2)/A001222(A007093(n+2))]`
-/

namespace A036961.P18390468184828024659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A001222 (A007093 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036961.P18390468184828024659

namespace A036961

/-- `record[(n+2)/A001222(A007093(n+2))]` -/
def P18390468184828024659.Spec : Prop :=
  ∀ n, P18390468184828024659.a n = (A036961 (n + 1) : ℚ)

end A036961

/-! ## A036961.P2716326842456548769

`eq[A000010(A007093(n+1)), A007093(n)]+1`
-/

namespace A036961.P2716326842456548769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007093 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A036961.P2716326842456548769

namespace A036961

/-- `eq[A000010(A007093(n+1)), A007093(n)]+1` -/
def P2716326842456548769.Spec : Prop :=
  ∀ n, (P2716326842456548769.a n : ℤ) = A036961 (n + 1)

end A036961

/-! ## A036961.P4950546387426909768

`record[A317440(n+1)/A000005(A007093(n+1))]`
-/

namespace A036961.P4950546387426909768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317440 (n + 1) : ℚ) / (A000005 (A007093 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036961.P4950546387426909768

namespace A036961

/-- `record[A317440(n+1)/A000005(A007093(n+1))]` -/
def P4950546387426909768.Spec : Prop :=
  ∀ n, P4950546387426909768.a n = (A036961 (n + 1) : ℚ)

end A036961

/-! ## A036961.P14947211759534058881

`eq[1, A328847(A007093(n))]`
-/

namespace A036961.P14947211759534058881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036961.P14947211759534058881

namespace A036961

/-- `eq[1, A328847(A007093(n))]` -/
def P14947211759534058881.Spec : Prop :=
  ∀ n, (P14947211759534058881.a n : ℤ) = A036961 (n + 1)

end A036961

/-! ## A036961.P5434685624191794654

`A028902(p?[A007093(n)])`
-/

namespace A036961.P5434685624191794654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A036961.P5434685624191794654

namespace A036961

/-- `A028902(p?[A007093(n)])` -/
def P5434685624191794654.Spec : Prop :=
  ∀ n, P5434685624191794654.a n = A036961 (n + 1)

end A036961

/-! ## A036961.P16013855471669566900

`A028902(A036960(n+1))`
-/

namespace A036961.P16013855471669566900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A036960 (n + 1)).toNat

end

end A036961.P16013855471669566900

namespace A036961

/-- `A028902(A036960(n+1))` -/
def P16013855471669566900.Spec : Prop :=
  ∀ n, P16013855471669566900.a n = A036961 (n + 1)

end A036961

/-! ## A036961.P13569962894850069074

`lt[A039651(lt[A054055(n+1), 7]+1), 1]+1`
-/

namespace A036961.P13569962894850069074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n + 1

end

end A036961.P13569962894850069074

namespace A036961

/-- `lt[A039651(lt[A054055(n+1), 7]+1), 1]+1` -/
def P13569962894850069074.Spec : Prop :=
  ∀ n, (P13569962894850069074.a n : ℤ) = A036961 (n + 1)

end A036961

/-! ## A036961.P11542573927261210298

`lt[1, A105700(2*A007093(n))]`
-/

namespace A036961.P11542573927261210298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A036961.P11542573927261210298

namespace A036961

/-- `lt[1, A105700(2*A007093(n))]` -/
def P11542573927261210298.Spec : Prop :=
  ∀ n, (P11542573927261210298.a n : ℤ) = A036961 (n + 1)

end A036961

/-! ## A036961.P17261998003302316024

`eq[2, A226378(2*A007093(n))]`
-/

namespace A036961.P17261998003302316024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036961.P17261998003302316024

namespace A036961

/-- `eq[2, A226378(2*A007093(n))]` -/
def P17261998003302316024.Spec : Prop :=
  ∀ n, (P17261998003302316024.a n : ℤ) = A036961 (n + 1)

end A036961

/-! ## A036961.P16908102850545140714

`record[A233583(n+1)/A226378(A007093(n))]`
-/

namespace A036961.P16908102850545140714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233583 (n + 1) : ℚ) / (A226378 (A007093 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036961.P16908102850545140714

namespace A036961

/-- `record[A233583(n+1)/A226378(A007093(n))]` -/
def P16908102850545140714.Spec : Prop :=
  ∀ n, P16908102850545140714.a n = (A036961 (n + 1) : ℚ)

end A036961

/-!
# A036962: Primes without {8, 9} as digits.

The programs for A036962, there is no canonical definition to state claims against.
-/

/-! ## A036962.P474368843794927781

`∩[A038616(n+1), A038617(n+1)]`
-/

namespace A036962.P474368843794927781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P474368843794927781

/-! ## A036962.P7625967833068880751

`∪[A036960(n+1), A106095(n+1)]`
-/

namespace A036962.P7625967833068880751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P7625967833068880751

/-! ## A036962.P10955298759509586269

`∪[A036960(n+1), A155777(n+1)]`
-/

namespace A036962.P10955298759509586269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P10955298759509586269

/-! ## A036962.P4531427725168704958

`p?[A007094(n)]`
-/

namespace A036962.P4531427725168704958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036962.P4531427725168704958

/-! ## A036962.P4192555329707185612

`A007094(A036963(n+1))`
-/

namespace A036962.P4192555329707185612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A036963 (n + 1)).toNat

end

end A036962.P4192555329707185612

/-! ## A036962.P4922136387011957554

`filter[A007094(n+1), A010051(#)]`
-/

namespace A036962.P4922136387011957554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A036962.P4922136387011957554

/-! ## A036962.P4673195684845050453

`∩[A000040(n+1), A007094(n)]`
-/

namespace A036962.P4673195684845050453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P4673195684845050453

/-! ## A036962.P11875861532663833238

`∩[A038616(n+1), A007094(n)]`
-/

namespace A036962.P11875861532663833238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P11875861532663833238

/-! ## A036962.P14291722449923848444

`∩[A038617(n+1), A007094(n)]`
-/

namespace A036962.P14291722449923848444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P14291722449923848444

/-! ## A036962.P6102902148930601984

`∩[A042986(n+1), A007094(n)]`
-/

namespace A036962.P6102902148930601984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P6102902148930601984

/-! ## A036962.P15887454700990106137

`∩[A038616(n+1), A039155(n+1)]`
-/

namespace A036962.P15887454700990106137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P15887454700990106137

/-! ## A036962.P6925438990124231840

`∩[A038617(n+1), A039155(n+1)]`
-/

namespace A036962.P6925438990124231840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P6925438990124231840

/-! ## A036962.P12364669721933465890

`p?[A007095(A037477(n))]`
-/

namespace A036962.P12364669721933465890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A037477 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036962.P12364669721933465890

/-! ## A036962.P5077905323023566895

`∩[A038616(n+1), A007095(n)]`
-/

namespace A036962.P5077905323023566895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P5077905323023566895

/-! ## A036962.P8295204342759355217

`∩[A037479(n+1), A038616(n+1)]`
-/

namespace A036962.P8295204342759355217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P8295204342759355217

/-! ## A036962.P13589082208777536708

`∩[A038617(n+1), A052421(n+1)]`
-/

namespace A036962.P13589082208777536708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036962.P13589082208777536708

/-! ## A036962.P17651433777098062762

`filter[A007094(n), A003415(#)]`
-/

namespace A036962.P17651433777098062762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003415 (f1 j).toNat = 1) n)

end

end A036962.P17651433777098062762

/-! ## A036962.P16029847145516336946

`eq[n, A062584(A222254(n))]`
-/

namespace A036962.P16029847145516336946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036962.P16029847145516336946

/-! ## A036962.P8749116043921638488

`eq[A064502(n), A222254(n)]`
-/

namespace A036962.P8749116043921638488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036962.P8749116043921638488

/-! ## A036962.P13096014932960413962

`eq[A084413(n), A222254(n)]`
-/

namespace A036962.P13096014932960413962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036962.P13096014932960413962

/-!
# A036963: Primes with digits (0,...,7) taken as base 8 and converted to base 10.

The programs for A036963, the canonical program `A036963.P11059957244332725726` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036963 has offset 1).

The definition of A036963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036963.P11059957244332725726

`eq[2, ∏{e}[A007094(n), #+1]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036963

/-- `eq[2, ∏{e}[A007094(n), #+1]]` -/
def P11059957244332725726.Spec : Prop :=
  ∀ n, (P11059957244332725726.a n : ℤ) = A036963 (n + 1)

theorem P11059957244332725726.correct : P11059957244332725726.Spec := by
  intro n
  simp only [A036963, Nat.add_sub_cancel]

end A036963

/-! ## A036963.P12348618241085102841

`eq[2, A077462(A007094(n))]`
-/

namespace A036963.P12348618241085102841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036963.P12348618241085102841

namespace A036963

/-- `eq[2, A077462(A007094(n))]` -/
def P12348618241085102841.Spec : Prop :=
  ∀ n, (P12348618241085102841.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P7186925306704992349

`eq[1, A001222(A007094(n)+1)]+1`
-/

namespace A036963.P7186925306704992349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007094 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036963.P7186925306704992349

namespace A036963

/-- `eq[1, A001222(A007094(n)+1)]+1` -/
def P7186925306704992349.Spec : Prop :=
  ∀ n, (P7186925306704992349.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P14041939910225388292

`eq[2, A000005(A007094(n+1))]+1`
-/

namespace A036963.P14041939910225388292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007094 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036963.P14041939910225388292

namespace A036963

/-- `eq[2, A000005(A007094(n+1))]+1` -/
def P14041939910225388292.Spec : Prop :=
  ∀ n, (P14041939910225388292.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P4678126572190376918

`eq[A035444(n), A072480(A007094(n))]`
-/

namespace A036963.P4678126572190376918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036963.P4678126572190376918

namespace A036963

/-- `eq[A035444(n), A072480(A007094(n))]` -/
def P4678126572190376918.Spec : Prop :=
  ∀ n, (P4678126572190376918.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P13796723263560870318

`eq[2, ∏{e}[lt[A054055(n), 8], #+1]]`
-/

namespace A036963.P13796723263560870318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f4 j < (f5 j : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036963.P13796723263560870318

namespace A036963

/-- `eq[2, ∏{e}[lt[A054055(n), 8], #+1]]` -/
def P13796723263560870318.Spec : Prop :=
  ∀ n, (P13796723263560870318.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P9686367727498775551

`eq[2, ∏{e}[eq[n, A222254(n)], #+1]]`
-/

namespace A036963.P9686367727498775551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f4 j : ℤ) = f5 j) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036963.P9686367727498775551

namespace A036963

/-- `eq[2, ∏{e}[eq[n, A222254(n)], #+1]]` -/
def P9686367727498775551.Spec : Prop :=
  ∀ n, (P9686367727498775551.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P9642117514619457946

`A028903(A036962(n+1))`
-/

namespace A036963.P9642117514619457946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A036962 (n + 1)).toNat

end

end A036963.P9642117514619457946

namespace A036963

/-- `A028903(A036962(n+1))` -/
def P9642117514619457946.Spec : Prop :=
  ∀ n, P9642117514619457946.a n = A036963 (n + 1)

end A036963

/-! ## A036963.P13484252024465853063

`A004151(eq[1, A032741(A007094(n))])`
-/

namespace A036963.P13484252024465853063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007094 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036963.P13484252024465853063

namespace A036963

/-- `A004151(eq[1, A032741(A007094(n))])` -/
def P13484252024465853063.Spec : Prop :=
  ∀ n, P13484252024465853063.a n = A036963 (n + 1)

end A036963

/-! ## A036963.P12890050744232319472

`eq[A000007(n), A007920(A007094(n))]`
-/

namespace A036963.P12890050744232319472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036963.P12890050744232319472

namespace A036963

/-- `eq[A000007(n), A007920(A007094(n))]` -/
def P12890050744232319472.Spec : Prop :=
  ∀ n, (P12890050744232319472.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P12260671214008790508

`eq[1, A001222(A143051(A007094(n)+1))]`
-/

namespace A036963.P12260671214008790508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A143051 (A007094 n + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036963.P12260671214008790508

namespace A036963

/-- `eq[1, A001222(A143051(A007094(n)+1))]` -/
def P12260671214008790508.Spec : Prop :=
  ∀ n, (P12260671214008790508.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P4565293260148886627

`eq[3-A040000(n), A105700(A007094(n))]`
-/

namespace A036963.P4565293260148886627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036963.P4565293260148886627

namespace A036963

/-- `eq[3-A040000(n), A105700(A007094(n))]` -/
def P4565293260148886627.Spec : Prop :=
  ∀ n, (P4565293260148886627.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P8660910926204948210

`lt[1, A105700(2*A007094(n))]`
-/

namespace A036963.P8660910926204948210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A036963.P8660910926204948210

namespace A036963

/-- `lt[1, A105700(2*A007094(n))]` -/
def P8660910926204948210.Spec : Prop :=
  ∀ n, (P8660910926204948210.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P1195066013022250478

`eq[2, A226378(2*A007094(n))]`
-/

namespace A036963.P1195066013022250478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036963.P1195066013022250478

namespace A036963

/-- `eq[2, A226378(2*A007094(n))]` -/
def P1195066013022250478.Spec : Prop :=
  ∀ n, (P1195066013022250478.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P8631107038132025364

`eq[A036453(n+1), A053204(A007094(n))]`
-/

namespace A036963.P8631107038132025364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036963.P8631107038132025364

namespace A036963

/-- `eq[A036453(n+1), A053204(A007094(n))]` -/
def P8631107038132025364.Spec : Prop :=
  ∀ n, (P8631107038132025364.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P15716584943198863802

`eq[A053204(A007094(n)), A121358(n+1)]`
-/

namespace A036963.P15716584943198863802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A007094 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036963.P15716584943198863802

namespace A036963

/-- `eq[A053204(A007094(n)), A121358(n+1)]` -/
def P15716584943198863802.Spec : Prop :=
  ∀ n, (P15716584943198863802.a n : ℤ) = A036963 (n + 1)

end A036963

/-! ## A036963.P11113383422708110768

`eq[2, A105700(A007094(n)*A040000(n))]`
-/

namespace A036963.P11113383422708110768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007094 n * A040000 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036963.P11113383422708110768

namespace A036963

/-- `eq[2, A105700(A007094(n)*A040000(n))]` -/
def P11113383422708110768.Spec : Prop :=
  ∀ n, (P11113383422708110768.a n : ℤ) = A036963 (n + 1)

end A036963

/-!
# A036964: Primes with digits (0,...,8) taken as base 9 and converted to base 10.

The programs for A036964, the canonical program `A036964.P16592301467344759646` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036964 has offset 1).

The definition of A036964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 980 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036964.P16592301467344759646

`eq[1, ∑{e}[A007095(n), #]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A036964

/-- `eq[1, ∑{e}[A007095(n), #]]` -/
def P16592301467344759646.Spec : Prop :=
  ∀ n, (P16592301467344759646.a n : ℤ) = A036964 (n + 1)

theorem P16592301467344759646.correct : P16592301467344759646.Spec := by
  intro n
  simp only [A036964, Nat.add_sub_cancel]

end A036964

/-! ## A036964.P13410430178000078698

`eq[2, A077982(A007095(n))]`
-/

namespace A036964.P13410430178000078698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036964.P13410430178000078698

namespace A036964

/-- `eq[2, A077982(A007095(n))]` -/
def P13410430178000078698.Spec : Prop :=
  ∀ n, (P13410430178000078698.a n : ℤ) = A036964 (n + 1)

end A036964

/-! ## A036964.P15787648512618021393

`eq[2, A000005(A007095(n+2))]+2`
-/

namespace A036964.P15787648512618021393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007095 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A036964.P15787648512618021393

namespace A036964

/-- `eq[2, A000005(A007095(n+2))]+2` -/
def P15787648512618021393.Spec : Prop :=
  ∀ n, (P15787648512618021393.a n : ℤ) = A036964 (n + 1)

end A036964

/-! ## A036964.P9128184628397002277

`A028904(A038617(n+1))`
-/

namespace A036964.P9128184628397002277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A038617 (n + 1)).toNat

end

end A036964.P9128184628397002277

namespace A036964

/-- `A028904(A038617(n+1))` -/
def P9128184628397002277.Spec : Prop :=
  ∀ n, P9128184628397002277.a n = A036964 (n + 1)

end A036964

/-! ## A036964.P14135812663431374960

`eq[1, A032741(eq[n, A004184(n)])]`
-/

namespace A036964.P14135812663431374960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036964.P14135812663431374960

namespace A036964

/-- `eq[1, A032741(eq[n, A004184(n)])]` -/
def P14135812663431374960.Spec : Prop :=
  ∀ n, (P14135812663431374960.a n : ℤ) = A036964 (n + 1)

end A036964

/-! ## A036964.P13068308692040639798

`eq[2, A000005(lt[A054055(n+1), 9]+1)]+1`
-/

namespace A036964.P13068308692040639798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036964.P13068308692040639798

namespace A036964

/-- `eq[2, A000005(lt[A054055(n+1), 9]+1)]+1` -/
def P13068308692040639798.Spec : Prop :=
  ∀ n, (P13068308692040639798.a n : ℤ) = A036964 (n + 1)

end A036964

/-! ## A036964.P15070842038267348610

`A000027(eq[1, A032741(A007095(n))])`
-/

namespace A036964.P15070842038267348610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A007095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036964.P15070842038267348610

namespace A036964

/-- `A000027(eq[1, A032741(A007095(n))])` -/
def P15070842038267348610.Spec : Prop :=
  ∀ n, P15070842038267348610.a n = A036964 (n + 1)

end A036964

/-! ## A036964.P324961016248284470

`eq[A000007(n), A007920(A007095(n))]`
-/

namespace A036964.P324961016248284470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036964.P324961016248284470

namespace A036964

/-- `eq[A000007(n), A007920(A007095(n))]` -/
def P324961016248284470.Spec : Prop :=
  ∀ n, (P324961016248284470.a n : ℤ) = A036964 (n + 1)

end A036964

/-! ## A036964.P15938493130118043614

`eq[A007095(n), A093868(A007095(n+1))]`
-/

namespace A036964.P15938493130118043614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (A007095 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036964.P15938493130118043614

namespace A036964

/-- `eq[A007095(n), A093868(A007095(n+1))]` -/
def P15938493130118043614.Spec : Prop :=
  ∀ n, (P15938493130118043614.a n : ℤ) = A036964 (n + 1)

end A036964

/-! ## A036964.P9426135840002043694

`eq[2, A105700(2*A007095(n))]`
-/

namespace A036964.P9426135840002043694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036964.P9426135840002043694

namespace A036964

/-- `eq[2, A105700(2*A007095(n))]` -/
def P9426135840002043694.Spec : Prop :=
  ∀ n, (P9426135840002043694.a n : ℤ) = A036964 (n + 1)

end A036964

/-! ## A036964.P14436768891746942762

`eq[2, A226378(2*A007095(n))]`
-/

namespace A036964.P14436768891746942762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036964.P14436768891746942762

namespace A036964

/-- `eq[2, A226378(2*A007095(n))]` -/
def P14436768891746942762.Spec : Prop :=
  ∀ n, (P14436768891746942762.a n : ℤ) = A036964 (n + 1)

end A036964

/-!
# A036965: Record values of the product of the exponents in the prime factorization of highly powerful numbers (A005934).

The programs for A036965, there is no canonical definition to state claims against.
-/

/-! ## A036965.P16672139884697323328

`A005361(A005934(n+1))`
-/

namespace A036965.P16672139884697323328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A005934 (n + 1)).toNat

end

end A036965.P16672139884697323328

/-! ## A036965.P18183605444752536598

`record[A052306(n+1)]`
-/

namespace A036965.P18183605444752536598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036965.P18183605444752536598

/-! ## A036965.P7272776074586414587

`record[A212647(n+1)]`
-/

namespace A036965.P7272776074586414587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036965.P7272776074586414587

/-! ## A036965.P415777645788797958

`sqrt(record[A212647(n-log2(1/2))²])`
-/

namespace A036965.P415777645788797958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212647 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A036965.P415777645788797958

/-! ## A036965.P3073886165622196373

`A000027(record[A212647(n-log2(1/2))])`
-/

namespace A036965.P3073886165622196373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212647 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036965.P3073886165622196373

/-! ## A036965.P5151068995304300534

`A028310(record[A212647(n-log2(1/2))])`
-/

namespace A036965.P5151068995304300534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212647 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036965.P5151068995304300534

/-! ## A036965.P10870205576832163788

`record[A212647(n-log2(1/2))]^A178334(n)`
-/

namespace A036965.P10870205576832163788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212647 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A178334 n : ℤ)

end

end A036965.P10870205576832163788

/-! ## A036965.P16431863402962435961

`record[A212647(n-log2(1/2))%A020705(n)]`
-/

namespace A036965.P16431863402962435961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212647 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (A020705 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036965.P16431863402962435961

/-! ## A036965.P17331620856567076035

`record[A212647(n-log2(1/2))^A000038(n)!]`
-/

namespace A036965.P17331620856567076035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212647 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ Nat.factorial (A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036965.P17331620856567076035

/-! ## A036965.P13390829512392173919

`(A000041(n)%2)!*record[A212647(n-log2(1/2))]`
-/

namespace A036965.P13390829512392173919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212647 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036965.P13390829512392173919

/-!
# A036966: 3-full (or cube-full, or cubefull) numbers: if a prime p divides n then so does p^3.

The programs for A036966, there is no canonical definition to state claims against.
-/

/-! ## A036966.P16093874632268429706

`∪[A036967(n+1), A376173(n+1)]`
-/

namespace A036966.P16093874632268429706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036966.P16093874632268429706

/-! ## A036966.P13454546783259214883

`∪[A076467(n+1), A372695(n+1)]`
-/

namespace A036966.P13454546783259214883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036966.P13454546783259214883

/-! ## A036966.P12450012767388967450

`∪[A076467(n+1), A389551(n+1)]`
-/

namespace A036966.P12450012767388967450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036966.P12450012767388967450

/-! ## A036966.P765849276061909843

`∪[A370787(n+1), A370788(n+1)]`
-/

namespace A036966.P765849276061909843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036966.P765849276061909843

/-! ## A036966.P7217574384013272705

`A001694(A371185(n+1))`
-/

namespace A036966.P7217574384013272705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A371185 (n + 1)).toNat

end

end A036966.P7217574384013272705

/-! ## A036966.P11054149023993041015

`A224866(A371185(n+1))-A059841(2*(n+2))`
-/

namespace A036966.P11054149023993041015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (A371185 (n + 1)).toNat - A059841 (2 * (n + 2))

end

end A036966.P11054149023993041015

/-! ## A036966.P7198768951213682806

`record[A001694(n+1)*A112526(A306458(n+1))]`
-/

namespace A036966.P7198768951213682806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1) * A112526 (A306458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036966.P7198768951213682806

/-! ## A036966.P4897483929527323942

`record[(A224866(n+1)-1)*A112526(A306458(n+1))]`
-/

namespace A036966.P4897483929527323942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A224866 (n + 1) - 1) * A112526 (A306458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036966.P4897483929527323942

/-! ## A036966.P14060789972547962265

`eq[A007947(n+1), A007947(A295657(n+1))]+1`
-/

namespace A036966.P14060789972547962265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A295657 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A036966.P14060789972547962265

/-! ## A036966.P4577360775954723510

`record[A057521(A337050(n+1))]`
-/

namespace A036966.P4577360775954723510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A337050 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036966.P4577360775954723510

/-!
# A036967: 4-full numbers: if a prime p divides k then so does p^4.

The programs for A036967, there is no canonical definition to state claims against.
-/

/-! ## A036967.P7287570168229174556

`∪[(n+1)^4, Δ[A176273(n+1)]]`
-/

namespace A036967.P7287570168229174556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036967.P7287570168229174556

/-! ## A036967.P5947345354498173895

`∪[A076468(n+1), A372841(n+1)]`
-/

namespace A036967.P5947345354498173895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036967.P5947345354498173895

/-! ## A036967.P584315621104585449

`∪[Δ[A176273(n+1)], A069492(n+1)]`
-/

namespace A036967.P584315621104585449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176273 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A036967.P584315621104585449

/-! ## A036967.P16894528241206967376

`∪[Δ[A176273(n+1)], A076468(n+1)]`
-/

namespace A036967.P16894528241206967376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176273 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A036967.P16894528241206967376

/-! ## A036967.P11309810457674774958

`∪[Δ[A176273(n+1)], A076470(n+1)]`
-/

namespace A036967.P11309810457674774958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176273 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A036967.P11309810457674774958

/-! ## A036967.P1094432391299144879

`∪[Δ[A176273(n+1)], A340588(n+1)]`
-/

namespace A036967.P1094432391299144879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176273 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A036967.P1094432391299144879

/-!
# A036968: Genocchi numbers (of first kind): expansion of 2*x/(exp(x)+1).

The programs for A036968, there is no canonical definition to state claims against.
-/

/-! ## A036968.P10842825098534862055

`A226158(n+1)^gcd(2, n)`
-/

namespace A036968.P10842825098534862055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (n + 1) ^ Nat.gcd 2 n

end

end A036968.P10842825098534862055

/-! ## A036968.P11197576762751585398

`A058940(A316966(n))`
-/

namespace A036968.P11197576762751585398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058940 (A316966 n).toNat

end

end A036968.P11197576762751585398

/-! ## A036968.P12102713569457848123

`A058940(A316671(n+1)-1)`
-/

namespace A036968.P12102713569457848123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058940 (A316671 (n + 1) - 1).toNat

end

end A036968.P12102713569457848123

/-! ## A036968.P8446325890916301424

`A226158(n+1)+A000038(n)`
-/

namespace A036968.P8446325890916301424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226158 (n + 1) + A000038 n

end

end A036968.P8446325890916301424

/-! ## A036968.P13429880132873153365

`A226158(n+1)^A178334(n)`
-/

namespace A036968.P13429880132873153365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226158 (n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A036968.P13429880132873153365

/-! ## A036968.P1134637207962436006

`and(A033999(n), A226158(n+1))`
-/

namespace A036968.P1134637207962436006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A226158 (n + 1))

end

end A036968.P1134637207962436006

/-! ## A036968.P17810697877056235707

`A033999(n+1)*A226158(n+1)`
-/

namespace A036968.P17810697877056235707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A226158 (n + 1)

end

end A036968.P17810697877056235707

/-! ## A036968.P8567476533556715870

`A226158(n+1)^A019426(n+1)`
-/

namespace A036968.P8567476533556715870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226158 (n + 1) : ℚ) ^ (A019426 (n + 1) : ℤ)

end

end A036968.P8567476533556715870

/-! ## A036968.P1106525992762265839

`A060096(∑[n+1]+1)`
-/

namespace A036968.P1106525992762265839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A036968.P1106525992762265839

/-! ## A036968.P7816997885491280724

`A099960(n)*A163805(n)`
-/

namespace A036968.P7816997885491280724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099960 n * A163805 n

end

end A036968.P7816997885491280724

/-!
# A036969: Triangle read by rows: T(n,k) = T(n-1,k-1) + k^2*T(n-1,k), 1 < k <= n, T(n,1) = 1.

The programs for A036969, the canonical program `A036969.P15548396453516382738` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036969 has offset 1).

The definition of A036969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+(col(n)+1)²*T(n-1,k)` (program `A036969.P15548396453516382738`, by `A036969.P15548396453516382738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036969.P15548396453516382738

`T(n-1,k-1)+(col(n)+1)²*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036969

/-- `T(n-1,k-1)+(col(n)+1)²*T(n-1,k)` -/
def P15548396453516382738.Spec : Prop :=
  ∀ n, (P15548396453516382738.a n : ℤ) = A036969 (n + 1)

theorem P15548396453516382738.correct : P15548396453516382738.Spec := by
  intro n
  simp only [A036969, Nat.add_sub_cancel]

end A036969

/-! ## A036969.P13540238478472177957

`A156289(C(row(n)+1, 2)+col(n)+1)/A001147(col(n)+1)`
-/

namespace A036969.P13540238478472177957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156289 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1)) : ℚ) / (A001147 (SequenceMachineLib.triCol n + 1) : ℚ)

end

end A036969.P13540238478472177957

namespace A036969

/-- `A156289(C(row(n)+1, 2)+col(n)+1)/A001147(col(n)+1)` -/
def P13540238478472177957.Spec : Prop :=
  ∀ n, P13540238478472177957.a n = (A036969 (n + 1) : ℚ)

end A036969

/-! ## A036969.P15184083154014746383

`T(n-1,k-1)+(col(n)+1)*(col(n)+1)*T(n-1,k)` with `a(0)=1`
-/

namespace A036969.P15184083154014746383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUp a n

end

end A036969.P15184083154014746383

namespace A036969

/-- `T(n-1,k-1)+(col(n)+1)*(col(n)+1)*T(n-1,k)` -/
def P15184083154014746383.Spec : Prop :=
  ∀ n, (P15184083154014746383.a n : ℤ) = A036969 (n + 1)

theorem P15184083154014746383.correct : P15184083154014746383.Spec := by
  intro n
  simp only [A036969, Nat.add_sub_cancel, A036969.P15184083154014746383.a, A036969.P15548396453516382738.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A036969

/-! ## A036969.P14139820421466782841

`A269945(comp[∑[n]])`
-/

namespace A036969.P14139820421466782841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A036969.P14139820421466782841

namespace A036969

/-- `A269945(comp[∑[n]])` -/
def P14139820421466782841.Spec : Prop :=
  ∀ n, P14139820421466782841.a n = A036969 (n + 1)

end A036969

/-! ## A036969.P5020293561595756301

`A008957(A038722(n+1))`
-/

namespace A036969.P5020293561595756301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (A038722 (n + 1)).toNat

end

end A036969.P5020293561595756301

namespace A036969

/-- `A008957(A038722(n+1))` -/
def P5020293561595756301.Spec : Prop :=
  ∀ n, P5020293561595756301.a n = A036969 (n + 1)

end A036969

/-! ## A036969.P1274379789471679184

`A008957(A061579(n)+1)`
-/

namespace A036969.P1274379789471679184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (A061579 n + 1).toNat

end

end A036969.P1274379789471679184

namespace A036969

/-- `A008957(A061579(n)+1)` -/
def P1274379789471679184.Spec : Prop :=
  ∀ n, P1274379789471679184.a n = A036969 (n + 1)

end A036969

/-! ## A036969.P11173226665150072448

`A008957(A114327(n)+1+n)`
-/

namespace A036969.P11173226665150072448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (A114327 n + 1 + (n : ℤ)).toNat

end

end A036969.P11173226665150072448

namespace A036969

/-- `A008957(A114327(n)+1+n)` -/
def P11173226665150072448.Spec : Prop :=
  ∀ n, P11173226665150072448.a n = A036969 (n + 1)

end A036969

/-! ## A036969.P7452073588755278218

`A008957(A002024(n+1)²-n)`
-/

namespace A036969.P7452073588755278218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A036969.P7452073588755278218

namespace A036969

/-- `A008957(A002024(n+1)²-n)` -/
def P7452073588755278218.Spec : Prop :=
  ∀ n, P7452073588755278218.a n = A036969 (n + 1)

end A036969

/-! ## A036969.P16745085707224113788

`A008957(A057944(n)+A004736(n+1))`
-/

namespace A036969.P16745085707224113788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (A057944 n + A004736 (n + 1)).toNat

end

end A036969.P16745085707224113788

namespace A036969

/-- `A008957(A057944(n)+A004736(n+1))` -/
def P16745085707224113788.Spec : Prop :=
  ∀ n, P16745085707224113788.a n = A036969 (n + 1)

end A036969

/-! ## A036969.P6896988228591072563

`A395862(A185871(n+1))`
-/

namespace A036969.P6896988228591072563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395862 (A185871 (n + 1)).toNat

end

end A036969.P6896988228591072563

namespace A036969

/-- `A395862(A185871(n+1))` -/
def P6896988228591072563.Spec : Prop :=
  ∀ n, P6896988228591072563.a n = A036969 (n + 1)

end A036969

/-!
# A036970: Triangle of coefficients of Gandhi polynomials.

The programs for A036970, there is no canonical definition to state claims against.
-/

/-! ## A036970.P1194241072667572736

`A094346(comp[∑[n]])`
-/

namespace A036970.P1194241072667572736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094346 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A036970.P1194241072667572736

/-! ## A036970.P2991037421674682822

`and(-1, A094346(A014132(n+1)))`
-/

namespace A036970.P2991037421674682822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A094346 (A014132 (n + 1)).toNat)

end

end A036970.P2991037421674682822

/-! ## A036970.P9235202696076609806

`lcm(A033999(n), A094346(A014132(n+1)))`
-/

namespace A036970.P9235202696076609806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A094346 (A014132 (n + 1)).toNat)

end

end A036970.P9235202696076609806

/-! ## A036970.P14512860577308583035

`A094346(A014132(n+1))+char[A032652(n+4)]`
-/

namespace A036970.P14512860577308583035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032652 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094346 (A014132 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036970.P14512860577308583035

/-! ## A036970.P254284272409730866

`A151619(A001222(2*(n+2)))+A094346(A014132(n+1))`
-/

namespace A036970.P254284272409730866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151619 (A001222 (2 * (n + 2))).toNat + A094346 (A014132 (n + 1)).toNat

end

end A036970.P254284272409730866

/-!
# A036972: Numbers k such that the k-th prime is a Fibonacci number reversed.

The programs for A036972, there is no canonical definition to state claims against.
-/

/-! ## A036972.P16862764448214762289

`A000720(p?[A004170(n)])`
-/

namespace A036972.P16862764448214762289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A036972.P16862764448214762289

/-! ## A036972.P15936233326000886762

`A061395(p?[A004170(n)])`
-/

namespace A036972.P15936233326000886762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A036972.P15936233326000886762

/-! ## A036972.P17990559735089465238

`A066328(p?[A004170(n)])`
-/

namespace A036972.P17990559735089465238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A036972.P17990559735089465238

/-! ## A036972.P733789566629340621

`A000720(A036797(n+1))`
-/

namespace A036972.P733789566629340621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A036797 (n + 1)).toNat

end

end A036972.P733789566629340621

/-!
# A036973: (7*n^3+4*n^2+4*n)*binomial(2*n,n)/30.

The programs for A036973, the canonical program `A036973.P9977005720353720988` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036973 has offset 0).

The definition of A036973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036973.P9977005720353720988

`(7*n^3+4*n²+4*n)*C(2*n, n)/30`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036973

/-- `(7*n^3+4*n²+4*n)*C(2*n, n)/30` -/
def P9977005720353720988.Spec : Prop :=
  ∀ n, P9977005720353720988.a n = (A036973 n : ℚ)

end A036973

/-!
# A036974: Positions of the digit '7' in decimal expansion of Pi.

The programs for A036974, there is no canonical definition to state claims against.
-/

/-! ## A036974.P16132236746375705190

`A053751(n+1)-1`
-/

namespace A036974.P16132236746375705190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053751 (n + 1) - 1

end

end A036974.P16132236746375705190

/-! ## A036974.P7690102088712314196

`A057428(n+1)+A053751(n+1)`
-/

namespace A036974.P7690102088712314196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A053751 (n + 1)

end

end A036974.P7690102088712314196

/-! ## A036974.P4708449003881853296

`eq[7, A000796(n)]`
-/

namespace A036974.P4708449003881853296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036974.P4708449003881853296

/-! ## A036974.P14259581646964663836

`eq[8, A123152(n+1)]`
-/

namespace A036974.P14259581646964663836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036974.P14259581646964663836

/-! ## A036974.P5237226744417353145

`A065254(A017353(n))-1`
-/

namespace A036974.P5237226744417353145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017353 n).toNat - 1

end

end A036974.P5237226744417353145

/-! ## A036974.P8441183613256934802

`A065254(A017341(n)+1)-1`
-/

namespace A036974.P8441183613256934802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017341 n + 1).toNat - 1

end

end A036974.P8441183613256934802

/-! ## A036974.P7609326969669635167

`A065254(A017329(n)+2)-1`
-/

namespace A036974.P7609326969669635167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017329 n + 2).toNat - 1

end

end A036974.P7609326969669635167

/-! ## A036974.P14435393722511702722

`A065254(A017365(n)-1)-1`
-/

namespace A036974.P14435393722511702722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017365 n - 1).toNat - 1

end

end A036974.P14435393722511702722

/-! ## A036974.P16792499699870381978

`A065254(A160912(n+2))-1`
-/

namespace A036974.P16792499699870381978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A160912 (n + 2)).toNat - 1

end

end A036974.P16792499699870381978

/-! ## A036974.P18048830122000318865

`A065254(A017377(n)-2)-1`
-/

namespace A036974.P18048830122000318865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017377 n - 2).toNat - 1

end

end A036974.P18048830122000318865

/-! ## A036974.P10009968152953029627

`A065254(A017281(n)+6)-1`
-/

namespace A036974.P10009968152953029627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017281 n + 6).toNat - 1

end

end A036974.P10009968152953029627

/-! ## A036974.P11040193791945266058

`A065254(A017473(n)-n)-1`
-/

namespace A036974.P11040193791945266058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017473 n - (n : ℤ)).toNat - 1

end

end A036974.P11040193791945266058

/-! ## A036974.P15722269539873786668

`eq[2, A030644(n)]`
-/

namespace A036974.P15722269539873786668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036974.P15722269539873786668

/-! ## A036974.P13743236869937596315

`eq[2, A153799(n)]+1`
-/

namespace A036974.P13743236869937596315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036974.P13743236869937596315

/-! ## A036974.P18071240896217261069

`eq[3, A086995(n+1)]`
-/

namespace A036974.P18071240896217261069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036974.P18071240896217261069

/-! ## A036974.P7274016119546609274

`eq[8, A059833(n+1)]`
-/

namespace A036974.P7274016119546609274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059833 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036974.P7274016119546609274

/-! ## A036974.P6045023505200322868

`eq[A010724(n), A054249(n+1)]`
-/

namespace A036974.P6045023505200322868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036974.P6045023505200322868

/-! ## A036974.P12122718003848694109

`A023443(A053751(n+1))`
-/

namespace A036974.P12122718003848694109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053751 (n + 1)).toNat

end

end A036974.P12122718003848694109

/-! ## A036974.P962390093769584958

`eq[2, A119505(n+1)]`
-/

namespace A036974.P962390093769584958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036974.P962390093769584958

/-! ## A036974.P17140692177382316017

`eq[7, A179104(n+1)]`
-/

namespace A036974.P17140692177382316017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036974.P17140692177382316017

/-!
# A036975: Lengths of Golay complementary sequences.

The programs for A036975, there is no canonical definition to state claims against.
-/

/-! ## A036975.P6260346104207932039

`∩[A089653(n+1), A225620(n+1)]`
-/

namespace A036975.P6260346104207932039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036975.P6260346104207932039

/-! ## A036975.P15507295471624750998

`∩[A089653(n+1), A328595(n+1)]`
-/

namespace A036975.P15507295471624750998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036975.P15507295471624750998

/-! ## A036975.P12787589032524235894

`∩[A089653(n+1), A329399(n+1)]`
-/

namespace A036975.P12787589032524235894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036975.P12787589032524235894

/-! ## A036975.P17697692776734697596

`∩[A089653(n+1), A334274(n+1)]`
-/

namespace A036975.P17697692776734697596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036975.P17697692776734697596

/-! ## A036975.P6974760505014660164

`∩[A089653(n+1), A335041(n+1)]`
-/

namespace A036975.P6974760505014660164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036975.P6974760505014660164

/-!
# A036976: Becomes a prime if a 1 is inserted before each digit.

The programs for A036976, there is no canonical definition to state claims against.
-/

/-! ## A036976.P7974030757430910216

`A056967(A036977(n+1))`
-/

namespace A036976.P7974030757430910216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A036977 (n + 1)).toNat

end

end A036976.P7974030757430910216

/-! ## A036976.P11688166391655304063

`lt[n, A055672(A045918(n))]`
-/

namespace A036976.P11688166391655304063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A045918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A036976.P11688166391655304063

/-! ## A036976.P9145989363935789437

`A056967(p?[record[A045918(n)]])`
-/

namespace A036976.P9145989363935789437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A036976.P9145989363935789437

/-! ## A036976.P5395375514350163909

`eq[A001055(A045918(n)), A109014(n)]`
-/

namespace A036976.P5395375514350163909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A045918 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036976.P5395375514350163909

/-! ## A036976.P4161045693334061080

`lt[A100910(n), A010051(A045918(n))]`
-/

namespace A036976.P4161045693334061080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A045918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036976.P4161045693334061080

/-!
# A036977: Primes arising in A036976.

The programs for A036977, there is no canonical definition to state claims against.
-/

/-! ## A036977.P17961664670615234770

`record[A036979(A036989(n))]`
-/

namespace A036977.P17961664670615234770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036979 (A036989 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036977.P17961664670615234770

/-! ## A036977.P4559688415214520596

`record[A036979(A077168(n))]`
-/

namespace A036977.P4559688415214520596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036979 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036977.P4559688415214520596

/-! ## A036977.P700637970316834908

`p?[A162672(A051022(n))]`
-/

namespace A036977.P700637970316834908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A051022 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036977.P700637970316834908

/-! ## A036977.P16725245972756195133

`p?[A162672(A055649(n))]`
-/

namespace A036977.P16725245972756195133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162672 (A055649 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036977.P16725245972756195133

/-! ## A036977.P479590227134429248

`record[p?[A028310(A045918(n))]]`
-/

namespace A036977.P479590227134429248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A045918 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036977.P479590227134429248

/-!
# A036978: Numbers for which the "describe what you see" transform A045918 produces a prime.

The programs for A036978, there is no canonical definition to state claims against.
-/

/-! ## A036978.P9427153540651489645

`A056967(p?[A045918(n)])`
-/

namespace A036978.P9427153540651489645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A036978.P9427153540651489645

/-! ## A036978.P7832906695964139082

`A056967(A036979(n+1))`
-/

namespace A036978.P7832906695964139082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A036979 (n + 1)).toNat

end

end A036978.P7832906695964139082

/-! ## A036978.P15824807006165225198

`A079464(A000005(2^n))`
-/

namespace A036978.P15824807006165225198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (A000005 (2 ^ n)).toNat

end

end A036978.P15824807006165225198

/-! ## A036978.P4372404057870098853

`A079464(A187829(n+1))`
-/

namespace A036978.P4372404057870098853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079464 (A187829 (n + 1)).toNat

end

end A036978.P4372404057870098853

/-! ## A036978.P7917049422681069754

`A056967(filter[A045918(n), A080339(#)])`
-/

namespace A036978.P7917049422681069754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)).toNat

end

end A036978.P7917049422681069754

/-!
# A036979: Primes arising in A036978.

The programs for A036979, there is no canonical definition to state claims against.
-/

/-! ## A036979.P5911785141440039278

`A045918(A036978(n+1))`
-/

namespace A036979.P5911785141440039278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (A036978 (n + 1)).toNat

end

end A036979.P5911785141440039278

/-! ## A036979.P5543360787723097167

`p?[A045918(n)]`
-/

namespace A036979.P5543360787723097167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036979.P5543360787723097167

/-! ## A036979.P1486656917475094088

`p?[A097601(n)+A047842(n)]`
-/

namespace A036979.P1486656917475094088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n + A047842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036979.P1486656917475094088

/-! ## A036979.P16757151246697778560

`filter[A045918(n), A001065(#)]`
-/

namespace A036979.P16757151246697778560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001065 (f1 j).toNat = 1) n)

end

end A036979.P16757151246697778560

/-! ## A036979.P4079579522566555663

`filter[A045918(n), A001222(#)]`
-/

namespace A036979.P4079579522566555663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A036979.P4079579522566555663

/-!
# A036980: Number of (2n) X (2n) symmetric matrices each of whose rows is a permutation of 1..(2n).

The programs for A036980, there is no canonical definition to state claims against.
-/

/-! ## A036980.P13050885510774440876

`A035483(n)*(2*n)!`
-/

namespace A036980.P13050885510774440876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035483 n * (Nat.factorial (2 * n) : ℤ)

end

end A036980.P13050885510774440876

/-!
# A036981: Number of (2n+1) X (2n+1) symmetric matrices each of whose rows is a permutation of 1..(2n+1).

The programs for A036981, there is no canonical definition to state claims against.
-/

/-! ## A036981.P4915864487243919641

`A000438(n+1)*(2*n+1)!`
-/

namespace A036981.P4915864487243919641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000438 (n + 1) * (Nat.factorial (2 * n + 1) : ℤ)

end

end A036981.P4915864487243919641

/-! ## A036981.P2217638899540960089

`A035482(2*n+1)`
-/

namespace A036981.P2217638899540960089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035482 (2 * n + 1)

end

end A036981.P2217638899540960089

/-! ## A036981.P15894337001186218708

`Δ[n²]!*A000438(n+1)`
-/

namespace A036981.P15894337001186218708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ) * A000438 (n + 1)

end

end A036981.P15894337001186218708

/-!
# A036982: a(n) = [a*a(n-1)+b]/p^r, where a=2.001, b=3.2, p=2 and p^r is the highest power of p dividing [a*a(n-1)+b], starting with a(0) = 1.

The programs for A036982, there is no canonical definition to state claims against.
-/

/-! ## A036982.P15764782604717404750

`∑[A006519(A189398(n+1))]-1`
-/

namespace A036982.P15764782604717404750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A189398 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A036982.P15764782604717404750

/-!
# A036983: Number of invariants in Hilbert basis for binary forms of degree n.

The programs for A036983, there is no canonical definition to state claims against.
-/

/-! ## A036983.P395150198062502846

`A126668(n+2)-A036984(n+2)`
-/

namespace A036983.P395150198062502846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126668 (n + 2) - A036984 (n + 2)

end

end A036983.P395150198062502846

/-!
# A036984: Number of covariants in Hilbert basis for binary forms of degree n.

The programs for A036984, there is no canonical definition to state claims against.
-/

/-! ## A036984.P14494458526375446631

`A126668(n+2)-A036983(n+2)`
-/

namespace A036984.P14494458526375446631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126668 (n + 2) - A036983 (n + 2)

end

end A036984.P14494458526375446631

/-! ## A036984.P1402300882697088047

`A015753(n)+A000003(A155634(n))`
-/

namespace A036984.P1402300882697088047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015753 n + A000003 (A155634 n).toNat

end

end A036984.P1402300882697088047

/-!
# A036987: Fredholm-Rueppel sequence.

The programs for A036987, the canonical program `A036987.P1789601236562705309` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036987 has offset 0).

The definition of A036987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036987.P11300803928739199117

`a(floor(n/2))*n%2` with `a(0)=1`
-/

namespace A036987.P11300803928739199117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * (n % 2)

end

end A036987.P11300803928739199117

namespace A036987

/-- `a(floor(n/2))*n%2` -/
def P11300803928739199117.Spec : Prop :=
  ∀ n, (P11300803928739199117.a n : ℤ) = A036987 n

end A036987

/-! ## A036987.P1789601236562705309

`ceil(log2(n+2))-ceil(log2(n+1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036987

/-- `ceil(log2(n+2))-ceil(log2(n+1))` -/
def P1789601236562705309.Spec : Prop :=
  ∀ n, P1789601236562705309.a n = A036987 n

theorem P1789601236562705309.correct : P1789601236562705309.Spec := by
  intro n
  simp only [A036987]

end A036987

/-! ## A036987.P4950014848318371150

`A209229(n+1)`
-/

namespace A036987.P4950014848318371150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 1)

end

end A036987.P4950014848318371150

namespace A036987

/-- `A209229(n+1)` -/
def P4950014848318371150.Spec : Prop :=
  ∀ n, P4950014848318371150.a n = A036987 n

end A036987

/-! ## A036987.P5315130666927047171

`-∑{d}[n+1, A008683(2*#)]`
-/

namespace A036987.P5315130666927047171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), A008683 (2 * d))

end

end A036987.P5315130666927047171

namespace A036987

/-- `-∑{d}[n+1, A008683(2*#)]` -/
def P5315130666927047171.Spec : Prop :=
  ∀ n, P5315130666927047171.a n = A036987 n

end A036987

/-! ## A036987.P14066504778150417516

`A001405(n)%2`
-/

namespace A036987.P14066504778150417516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 n) 2

end

end A036987.P14066504778150417516

namespace A036987

/-- `A001405(n)%2` -/
def P14066504778150417516.Spec : Prop :=
  ∀ n, P14066504778150417516.a n = A036987 n

end A036987

/-! ## A036987.P15566521531098510854

`A000108(n)%2`
-/

namespace A036987.P15566521531098510854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) 2

end

end A036987.P15566521531098510854

namespace A036987

/-- `A000108(n)%2` -/
def P15566521531098510854.Spec : Prop :=
  ∀ n, P15566521531098510854.a n = A036987 n

end A036987

/-! ## A036987.P17054832412049842180

`Δ[abs(floor(log2(acot(n))))]`
-/

namespace A036987.P17054832412049842180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌋|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036987.P17054832412049842180

namespace A036987

/-- `Δ[abs(floor(log2(acot(n))))]` -/
def P17054832412049842180.Spec : Prop :=
  ∀ n, P17054832412049842180.a n = A036987 n

end A036987

/-! ## A036987.P13045898164496280663

`Δ[floor(-log2(acot(n)))]`
-/

namespace A036987.P13045898164496280663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036987.P13045898164496280663

namespace A036987

/-- `Δ[floor(-log2(acot(n)))]` -/
def P13045898164496280663.Spec : Prop :=
  ∀ n, P13045898164496280663.a n = A036987 n

end A036987

/-! ## A036987.P1686843860108350825

`abs(Δ[ceil(log2(acot(n)))])`
-/

namespace A036987.P1686843860108350825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A036987.P1686843860108350825

namespace A036987

/-- `abs(Δ[ceil(log2(acot(n)))])` -/
def P1686843860108350825.Spec : Prop :=
  ∀ n, P1686843860108350825.a n = A036987 n

end A036987

/-! ## A036987.P14616998821840447503

`Δ[ceil(-log2(acot(n)))]`
-/

namespace A036987.P14616998821840447503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036987.P14616998821840447503

namespace A036987

/-- `Δ[ceil(-log2(acot(n)))]` -/
def P14616998821840447503.Spec : Prop :=
  ∀ n, P14616998821840447503.a n = A036987 n

end A036987

/-! ## A036987.P8586657163826469579

`Δ[floor(log2(acot(n)))]²`
-/

namespace A036987.P8586657163826469579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A036987.P8586657163826469579

namespace A036987

/-- `Δ[floor(log2(acot(n)))]²` -/
def P8586657163826469579.Spec : Prop :=
  ∀ n, P8586657163826469579.a n = A036987 n

end A036987

/-! ## A036987.P8291791831703655426

`Δ[ceil(log2(acot(n)))]²`
-/

namespace A036987.P8291791831703655426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A036987.P8291791831703655426

namespace A036987

/-- `Δ[ceil(log2(acot(n)))]²` -/
def P8291791831703655426.Spec : Prop :=
  ∀ n, P8291791831703655426.a n = A036987 n

end A036987

/-! ## A036987.P5552437476649057373

`dr(Δ[ceil(log2(acot(n)))])`
-/

namespace A036987.P5552437476649057373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A036987.P5552437476649057373

namespace A036987

/-- `dr(Δ[ceil(log2(acot(n)))])` -/
def P5552437476649057373.Spec : Prop :=
  ∀ n, (P5552437476649057373.a n : ℤ) = A036987 n

end A036987

/-! ## A036987.P8092200322034113265

`∏{p}[n+1, val(#, 2)]`
-/

namespace A036987.P8092200322034113265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2

end

end A036987.P8092200322034113265

namespace A036987

/-- `∏{p}[n+1, val(#, 2)]` -/
def P8092200322034113265.Spec : Prop :=
  ∀ n, (P8092200322034113265.a n : ℤ) = A036987 n

end A036987

/-! ## A036987.P17777494328858008742

`C(2, ∑{p}[n+1, #])`
-/

namespace A036987.P17777494328858008742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A036987.P17777494328858008742

namespace A036987

/-- `C(2, ∑{p}[n+1, #])` -/
def P17777494328858008742.Spec : Prop :=
  ∀ n, (P17777494328858008742.a n : ℤ) = A036987 n

end A036987

/-! ## A036987.P8405727179858435759

`∏{p}[n+1, C(2, #)]`
-/

namespace A036987.P8405727179858435759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 p

end

end A036987.P8405727179858435759

namespace A036987

/-- `∏{p}[n+1, C(2, #)]` -/
def P8405727179858435759.Spec : Prop :=
  ∀ n, (P8405727179858435759.a n : ℤ) = A036987 n

end A036987

/-! ## A036987.P11511719541369163227

`floor(acot(and(n, n+1)))`
-/

namespace A036987.P11511719541369163227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Nat.land n (n + 1) : ℝ)⌋

end

end A036987.P11511719541369163227

namespace A036987

/-- `floor(acot(and(n, n+1)))` -/
def P11511719541369163227.Spec : Prop :=
  ∀ n, P11511719541369163227.a n = A036987 n

end A036987

/-! ## A036987.P4838937573471952848

`C(and(n, Δ[n²]), n)`
-/

namespace A036987.P4838937573471952848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat n

end

end A036987.P4838937573471952848

namespace A036987

/-- `C(and(n, Δ[n²]), n)` -/
def P4838937573471952848.Spec : Prop :=
  ∀ n, (P4838937573471952848.a n : ℤ) = A036987 n

end A036987

/-! ## A036987.P5992717369761005639

`char[2^col(n)-1]`
-/

namespace A036987.P5992717369761005639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A036987.P5992717369761005639

namespace A036987

/-- `char[2^col(n)-1]` -/
def P5992717369761005639.Spec : Prop :=
  ∀ n, (P5992717369761005639.a n : ℤ) = A036987 n

end A036987

/-! ## A036987.P2460111159047798630

`char[2^row(n)-1]`
-/

namespace A036987.P2460111159047798630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triRow n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A036987.P2460111159047798630

namespace A036987

/-- `char[2^row(n)-1]` -/
def P2460111159047798630.Spec : Prop :=
  ∀ n, (P2460111159047798630.a n : ℤ) = A036987 n

end A036987

/-!
# A036988: Has simplest possible tree complexity of all transcendental sequences.

The programs for A036988, there is no canonical definition to state claims against.
-/

/-! ## A036988.P17032495551281353049

`A063524(A036989(n))`
-/

namespace A036988.P17032495551281353049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A036989 n).toNat

end

end A036988.P17032495551281353049

/-! ## A036988.P18009464920386067867

`floor(1/A036989(n))`
-/

namespace A036988.P18009464920386067867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A036989 n : ℚ)⌋

end

end A036988.P18009464920386067867

/-! ## A036988.P4306656891908858743

`char[A036990(n+1)]`
-/

namespace A036988.P4306656891908858743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A036988.P4306656891908858743

/-! ## A036988.P5598848941769861817

`A008683(A036989(n)²)`
-/

namespace A036988.P5598848941769861817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A036989 n ^ 2).toNat

end

end A036988.P5598848941769861817

/-! ## A036988.P16810480274517971458

`A008966(A036989(n)²)`
-/

namespace A036988.P16810480274517971458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A036989 n ^ 2).toNat

end

end A036988.P16810480274517971458

/-! ## A036988.P10839609574105097895

`A036987(A036989(n)²)`
-/

namespace A036988.P10839609574105097895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A036989 n ^ 2).toNat

end

end A036988.P10839609574105097895

/-! ## A036988.P12734917530189972112

`A354199(A036989(n)²+1)`
-/

namespace A036988.P12734917530189972112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354199 (A036989 n ^ 2 + 1).toNat

end

end A036988.P12734917530189972112

/-! ## A036988.P7446454534945642936

`A000122(A036989(n)²-1)`
-/

namespace A036988.P7446454534945642936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A036989 n ^ 2 - 1).toNat

end

end A036988.P7446454534945642936

/-! ## A036988.P9890289604844868484

`and(1, A071051(A036989(n)²))`
-/

namespace A036988.P9890289604844868484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A071051 (A036989 n ^ 2).toNat)

end

end A036988.P9890289604844868484

/-! ## A036988.P2932367266844945634

`1-A057427(A036989(n)-1)`
-/

namespace A036988.P2932367266844945634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (A036989 n - 1).toNat

end

end A036988.P2932367266844945634

/-! ## A036988.P15323843729055425121

`1-A178334(A036989(n)-1)`
-/

namespace A036988.P15323843729055425121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178334 (A036989 n - 1).toNat

end

end A036988.P15323843729055425121

/-! ## A036988.P18233516039780564464

`A036987(2*(A036989(n)-1))`
-/

namespace A036988.P18233516039780564464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * (A036989 n - 1)).toNat

end

end A036988.P18233516039780564464

/-! ## A036988.P12141539832981169464

`A000038(A036989(n)-1)/2`
-/

namespace A036988.P12141539832981169464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A036989 n - 1).toNat : ℚ) / 2

end

end A036988.P12141539832981169464

/-! ## A036988.P15772049323361652909

`A008683(A036989(n)*A036989(n))`
-/

namespace A036988.P15772049323361652909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A036989 n * A036989 n).toNat

end

end A036988.P15772049323361652909

/-! ## A036988.P11750800106161228998

`C(A036989(2*n), A036989(n))`
-/

namespace A036988.P11750800106161228998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A036989 (2 * n)).toNat (A036989 n).toNat

end

end A036988.P11750800106161228998

/-! ## A036988.P5833864048867079637

`A000035(A036989(2*n)*A036989(n))`
-/

namespace A036988.P5833864048867079637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A036989 (2 * n) * A036989 n).toNat

end

end A036988.P5833864048867079637

/-! ## A036988.P9569860780700952017

`C(2, A036989(2*n+1))`
-/

namespace A036988.P9569860780700952017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A036989 (2 * n + 1)).toNat

end

end A036988.P9569860780700952017

/-! ## A036988.P18313861337122402772

`A036989(2*n)+2-A036989(2*n+1)`
-/

namespace A036988.P18313861337122402772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 (2 * n) + (2 - A036989 (2 * n + 1))

end

end A036988.P18313861337122402772

/-! ## A036988.P17805597408008062824

`C(2, A343049(8*n+4))`
-/

namespace A036988.P17805597408008062824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A343049 (8 * n + 4)).toNat

end

end A036988.P17805597408008062824

/-!
# A036989: Read binary expansion of n from the right; keep track of the excess of 1's over 0's that have been seen so far; sequence gives 1 + maximum(excess of 1's over 0's).

The programs for A036989, there is no canonical definition to state claims against.
-/

/-! ## A036989.P13181280456194528382

`a(A318921(n))+n%2` with `a(0)=1`
-/

namespace A036989.P13181280456194528382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A318921 n).toNat + n % 2

end

end A036989.P13181280456194528382

/-! ## A036989.P8231347700238596281

`A000035(n)+a(A318921(n))` with `a(0)=1`
-/

namespace A036989.P8231347700238596281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000035 n + a (A318921 n).toNat

end

end A036989.P8231347700238596281

/-! ## A036989.P2518826586800412096

`A135528(n+1)+a(A318921(n))` with `a(0)=1`
-/

namespace A036989.P2518826586800412096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135528 (n + 1) + a (A318921 n).toNat

end

end A036989.P2518826586800412096

/-! ## A036989.P4509959802142903282

`A294894(A000079(a(floor(n/2))-(-1)^n))` with `a(0)=1`
-/

namespace A036989.P4509959802142903282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A294894 (A000079 (a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n).toNat).toNat

end

end A036989.P4509959802142903282

/-! ## A036989.P8209789695458502017

`Δ[A004526(n)]+a(A318921(n))` with `a(0)=1`
-/

namespace A036989.P8209789695458502017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (A318921 n).toNat

end

end A036989.P8209789695458502017

/-! ## A036989.P576713051251651480

`Δ[A123108(n)]+a(A318921(n))` with `a(0)=1`
-/

namespace A036989.P576713051251651480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (A318921 n).toNat

end

end A036989.P576713051251651480

/-! ## A036989.P13525079371007096263

`A272604(A125169(n))-3`
-/

namespace A036989.P13525079371007096263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A125169 n).toNat - 3

end

end A036989.P13525079371007096263

/-! ## A036989.P1223389837705720678

`A272604(A004771(2*n+1))-3`
-/

namespace A036989.P1223389837705720678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A004771 (2 * n + 1)).toNat - 3

end

end A036989.P1223389837705720678

/-! ## A036989.P16435653730339828984

`A130161(∑[n]+n)`
-/

namespace A036989.P16435653730339828984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130161 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A036989.P16435653730339828984

/-! ## A036989.P4985200322563295822

`A001511(A126308(A126308(n))+1)`
-/

namespace A036989.P4985200322563295822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A126308 (A126308 n).toNat + 1).toNat

end

end A036989.P4985200322563295822

/-!
# A036990: Numbers n such that, in the binary expansion of n, reading from right to left, the number of 1's never exceeds the number of 0's.

The programs for A036990, there is no canonical definition to state claims against.
-/

/-! ## A036990.P14422761534105728912

`A036993(1+n)/2`
-/

namespace A036990.P14422761534105728912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036993 (1 + n) : ℚ) / 2

end

end A036990.P14422761534105728912

/-! ## A036990.P2077531293516305918

`eq[1, A036989(n)]`
-/

namespace A036990.P2077531293516305918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036990.P2077531293516305918

/-! ## A036990.P8731136487692579552

`filter[2*n, A036989(#)]`
-/

namespace A036990.P8731136487692579552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A036989 (f1 j) = 1) n)

end

end A036990.P8731136487692579552

/-! ## A036990.P15337321819461162360

`lt[A036989(n), A000122(A008833(n+1))]`
-/

namespace A036990.P15337321819461162360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A008833 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036990.P15337321819461162360

/-! ## A036990.P7153132417749706944

`lt[0, A036988(n)]`
-/

namespace A036990.P7153132417749706944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A036990.P7153132417749706944

/-! ## A036990.P13139280493395896060

`filter[2*n, A036988(#)]`
-/

namespace A036990.P13139280493395896060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A036988 (f1 j) = 1) n)

end

end A036990.P13139280493395896060

/-! ## A036990.P10914391865824056932

`2*eq[1, A036988(2*n)]`
-/

namespace A036990.P10914391865824056932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036990.P10914391865824056932

/-! ## A036990.P16964067975886212775

`eq[A000034(n), A036988(n)]`
-/

namespace A036990.P16964067975886212775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P16964067975886212775

/-! ## A036990.P3782485371519272944

`eq[A001492(n), A036988(n)]`
-/

namespace A036990.P3782485371519272944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P3782485371519272944

/-! ## A036990.P8636817712415380958

`eq[A007879(n), A036988(n)]`
-/

namespace A036990.P8636817712415380958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P8636817712415380958

/-! ## A036990.P8383280576777619967

`eq[A010684(n), A036988(n)]`
-/

namespace A036990.P8383280576777619967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P8383280576777619967

/-! ## A036990.P850257380427711030

`eq[A010685(n), A036988(n)]`
-/

namespace A036990.P850257380427711030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P850257380427711030

/-! ## A036990.P16803637047598066317

`eq[A010686(n), A036988(n)]`
-/

namespace A036990.P16803637047598066317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P16803637047598066317

/-! ## A036990.P4854938388977284246

`eq[A010687(n), A036988(n)]`
-/

namespace A036990.P4854938388977284246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P4854938388977284246

/-! ## A036990.P7900390415913273614

`eq[A010688(n), A036988(n)]`
-/

namespace A036990.P7900390415913273614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P7900390415913273614

/-! ## A036990.P13161097389772677278

`eq[A010689(n), A036988(n)]`
-/

namespace A036990.P13161097389772677278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P13161097389772677278

/-! ## A036990.P6439664208775228236

`eq[A010690(n), A036988(n)]`
-/

namespace A036990.P6439664208775228236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P6439664208775228236

/-! ## A036990.P8186993389035005565

`eq[A010691(n), A036988(n)]`
-/

namespace A036990.P8186993389035005565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P8186993389035005565

/-! ## A036990.P15067363826393154562

`eq[A019303(n), A036988(n)]`
-/

namespace A036990.P15067363826393154562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P15067363826393154562

/-! ## A036990.P7897240227288991654

`eq[A019304(n), A036988(n)]`
-/

namespace A036990.P7897240227288991654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036990.P7897240227288991654

/-!
# A036991: Numbers k with the property that in the binary expansion of k, reading from right to left, the number of 0's never exceeds the number of 1's.

The programs for A036991, there is no canonical definition to state claims against.
-/

/-! ## A036991.P3944751488040864699

`lt[n, 2^A114567(n)]`
-/

namespace A036991.P3944751488040864699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A114567 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A036991.P3944751488040864699

/-! ## A036991.P9991109984380847579

`floor(A036994(1+n)/2)`
-/

namespace A036991.P9991109984380847579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036994 (1 + n) : ℚ) / 2⌋

end

end A036991.P9991109984380847579

/-! ## A036991.P199843553288479285

`(A036994(n+1)-1)/2`
-/

namespace A036991.P199843553288479285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036994 (n + 1) - 1 : ℚ) / 2

end

end A036991.P199843553288479285

/-! ## A036991.P11349996411532017032

`lt[n, A004148(A114567(n))]`
-/

namespace A036991.P11349996411532017032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (A114567 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A036991.P11349996411532017032

/-! ## A036991.P7898632340627612850

`∑[A367626(n+1)]-A367626(n+1)`
-/

namespace A036991.P7898632340627612850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A367626 (n + 1)

end

end A036991.P7898632340627612850

/-! ## A036991.P3110688847631763109

`record[n*A036988(A035327(n))]`
-/

namespace A036991.P3110688847631763109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036988 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036991.P3110688847631763109

/-! ## A036991.P3960632764356938999

`eq[n, n*A036988(A080079(n+1))]`
-/

namespace A036991.P3960632764356938999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036988 (A080079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036991.P3960632764356938999

/-! ## A036991.P10589209411990908140

`eq[A319416(A318921(2*n+1)), A319416(2*n)]`
-/

namespace A036991.P10589209411990908140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A318921 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036991.P10589209411990908140

/-! ## A036991.P15182787290364429157

`lt[A319416(2*n), A319416(2*n+1)+A000007(n)]`
-/

namespace A036991.P15182787290364429157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (2 * n + 1) + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036991.P15182787290364429157

/-! ## A036991.P3593695231682218193

`lt[A319416(2*n), A319416(2*n+1)+A063524(n+1)]`
-/

namespace A036991.P3593695231682218193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (2 * n + 1) + A063524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036991.P3593695231682218193

/-! ## A036991.P6345817234652010125

`eq[A356352(2*n)+A319416(2*n), A319416(2*n+1)]`
-/

namespace A036991.P6345817234652010125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 (2 * n) + A319416 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036991.P6345817234652010125

/-! ## A036991.P16783950282048582

`A004524(A036994(n+1))`
-/

namespace A036991.P16783950282048582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A036994 (n + 1)).toNat

end

end A036991.P16783950282048582

/-! ## A036991.P2566267313203804397

`record[and(n, A343049(2*n+1))]`
-/

namespace A036991.P2566267313203804397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A343049 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036991.P2566267313203804397

/-! ## A036991.P6940340110385560411

`eq[n, n*A036988(A010078(n+1))]`
-/

namespace A036991.P6940340110385560411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036988 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036991.P6940340110385560411

/-! ## A036991.P6365100100652379801

`A002265(2*A036994(n+1))`
-/

namespace A036991.P6365100100652379801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A036994 (n + 1)).toNat

end

end A036991.P6365100100652379801

/-!
# A036992: Numbers not in A036990 nor A036991.

The programs for A036992, there is no canonical definition to state claims against.
-/

/-! ## A036992.P17324827884928296820

`eq[char[A036991(n+2)], A036988(n)]`
-/

namespace A036992.P17324827884928296820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A036992.P17324827884928296820

/-! ## A036992.P15195173883686147231

`eq[A036988(A035327(n)), A036988(n)]`
-/

namespace A036992.P15195173883686147231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036992.P15195173883686147231

/-! ## A036992.P12024236926621419108

`eq[A036988(A080079(1+n)), A036988(n)]`
-/

namespace A036992.P12024236926621419108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (A080079 (1 + n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036992.P12024236926621419108

/-! ## A036992.P7601954017330899726

`eq[A036988(A010078(n+1)), A036988(n)]`
-/

namespace A036992.P7601954017330899726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 (A010078 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036992.P7601954017330899726

/-! ## A036992.P9715114666194809286

`eq[A319416(8*n+3), A319416(n)]`
-/

namespace A036992.P9715114666194809286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (8 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036992.P9715114666194809286

/-!
# A036993: Numbers n with property that reading from right to left in the binary expansion of n, the number of 0's always stays ahead of the number of 1's.

The programs for A036993, there is no canonical definition to state claims against.
-/

/-! ## A036993.P2694860882327701890

`2*A036990(n+1)`
-/

namespace A036993.P2694860882327701890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036990 (n + 1)

end

end A036993.P2694860882327701890

/-! ## A036993.P14364588537774923174

`A036990(A000027(n+1))+A036990(n+1)`
-/

namespace A036993.P14364588537774923174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036990 (A000027 (n + 1)).toNat + A036990 (n + 1)

end

end A036993.P14364588537774923174

/-! ## A036993.P17460944085509212057

`A036990(n+1)+A036990(n+1)%A054471(n+1)`
-/

namespace A036993.P17460944085509212057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036990 (n + 1) + Int.tmod (A036990 (n + 1)) (A054471 (n + 1))

end

end A036993.P17460944085509212057

/-! ## A036993.P7399418551591152403

`2*eq[1, A036989(n)]`
-/

namespace A036993.P7399418551591152403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036993.P7399418551591152403

/-! ## A036993.P4993922311128227888

`A005843(A036990(n+1))`
-/

namespace A036993.P4993922311128227888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A036990 (n + 1)).toNat

end

end A036993.P4993922311128227888

/-! ## A036993.P13835062703123900519

`2*eq[1, A036988(n)]`
-/

namespace A036993.P13835062703123900519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036993.P13835062703123900519

/-! ## A036993.P7308000100548258009

`eq[1, Δ[A036989(n)]]`
-/

namespace A036993.P7308000100548258009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036993.P7308000100548258009

/-! ## A036993.P7126775899756490557

`eq[A034947(A036989(n+1)), A036989(n)]`
-/

namespace A036993.P7126775899756490557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A036989 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036993.P7126775899756490557

/-! ## A036993.P15635395599682789244

`eq[0, A343049(n)]`
-/

namespace A036993.P15635395599682789244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036993.P15635395599682789244

/-! ## A036993.P4350078415883931379

`2*lt[A343049(2*n), 1]`
-/

namespace A036993.P4350078415883931379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343049 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A036993.P4350078415883931379

/-!
# A036994: Numbers k with the property that reading from right to left in the binary expansion of k, the number of 1's always stays ahead of the number of 0's.

The programs for A036994, there is no canonical definition to state claims against.
-/

/-! ## A036994.P6786395460082363608

`1+2*A036991(n+1)`
-/

namespace A036994.P6786395460082363608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A036991 (n + 1)

end

end A036994.P6786395460082363608

/-! ## A036994.P13038462545401830302

`2*lt[n, 2^A114567(n)]+1`
-/

namespace A036994.P13038462545401830302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A114567 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A036994.P13038462545401830302

/-! ## A036994.P2337936421267532313

`A266437(A036991(n+1))`
-/

namespace A036994.P2337936421267532313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (A036991 (n + 1)).toNat

end

end A036994.P2337936421267532313

/-! ## A036994.P12427377944206773339

`A004273(A036991(1+n)+1)`
-/

namespace A036994.P12427377944206773339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A036991 (1 + n) + 1).toNat

end

end A036994.P12427377944206773339

/-! ## A036994.P11605082510819012586

`A036991(n+1)+A036991(n+1)+A036988(A036990(n+1))`
-/

namespace A036994.P11605082510819012586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1) + (A036991 (n + 1) + A036988 (A036990 (n + 1)).toNat)

end

end A036994.P11605082510819012586

/-! ## A036994.P16666550324268773388

`A004442(2*A036991(n+1))`
-/

namespace A036994.P16666550324268773388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A036991 (n + 1)).toNat

end

end A036994.P16666550324268773388

/-! ## A036994.P4636433817409787177

`A109613(2*A036991(n+1))`
-/

namespace A036994.P4636433817409787177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A036991 (n + 1)).toNat

end

end A036994.P4636433817409787177

/-! ## A036994.P8341019283795983155

`A030308(A001855(n+2))+lcm(2, A036991(n+1))`
-/

namespace A036994.P8341019283795983155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A001855 (n + 2)).toNat + (Int.lcm 2 (A036991 (n + 1)) : ℤ)

end

end A036994.P8341019283795983155

/-! ## A036994.P11508629063063980724

`A008619(4*A036991(n+1))`
-/

namespace A036994.P11508629063063980724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A036991 (n + 1)).toNat

end

end A036994.P11508629063063980724

/-! ## A036994.P6835718490360945289

`A036991(n+1)+A036991(n+1)+A036989(A014486(n))`
-/

namespace A036994.P6835718490360945289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036991 (n + 1) + (A036991 (n + 1) + A036989 (A014486 n).toNat)

end

end A036994.P6835718490360945289

/-!
# A036995: Triangle of numbers a(i,j), i+j = n >= 2, giving number of words in a certain language with i 0's, j 1's, ending with 1.

The programs for A036995, there is no canonical definition to state claims against.
-/

/-! ## A036995.P9459381826113582051

`A138033(3*A185722(n+1))`
-/

namespace A036995.P9459381826113582051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (3 * A185722 (n + 1)).toNat

end

end A036995.P9459381826113582051

/-! ## A036995.P4994923815982055644

`A002260(or(n+1, A324684(n)))`
-/

namespace A036995.P4994923815982055644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.lor (n + 1 : ℤ) (A324684 n)).toNat

end

end A036995.P4994923815982055644

/-! ## A036995.P9188215224116461273

`A001221(A001498(n)*A089061(n))`
-/

namespace A036995.P9188215224116461273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001498 n * A089061 n).toNat

end

end A036995.P9188215224116461273

/-! ## A036995.P11232327235039803665

`A043557(A000040(n+1)*A319600(n))`
-/

namespace A036995.P11232327235039803665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043557 (A000040 (n + 1) * A319600 n).toNat

end

end A036995.P11232327235039803665

/-! ## A036995.P10018988649357465816

`or(col(n)+1, A234577(A372684(n+1)))`
-/

namespace A036995.P10018988649357465816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.triCol n + 1 : ℤ) (A234577 (A372684 (n + 1)).toNat)

end

end A036995.P10018988649357465816

/-!
# A036996: Number of isomers of alkyl homologs of adamantane with n carbon atoms.

The programs for A036996, there is no canonical definition to state claims against.
-/

/-! ## A036996.P3503810830515328375

`A008620(A272040(n+1)+A272017(n))`
-/

namespace A036996.P3503810830515328375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A272040 (n + 1) + A272017 n).toNat

end

end A036996.P3503810830515328375

/-! ## A036996.P4555323487605558688

`A330556(A224704(3*(n+1))-A070558(n))`
-/

namespace A036996.P4555323487605558688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330556 (A224704 (3 * (n + 1)) - A070558 n).toNat

end

end A036996.P4555323487605558688

/-!
# A036997: Number of composite numbers <= n and relatively prime to n.

The programs for A036997, the canonical program `A036997.P9898190539809888575` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036997 has offset 1).

The definition of A036997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036997.P12108923010661687463

`A048864(n+1)-1`
-/

namespace A036997.P12108923010661687463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) - 1

end

end A036997.P12108923010661687463

namespace A036997

/-- `A048864(n+1)-1` -/
def P12108923010661687463.Spec : Prop :=
  ∀ n, P12108923010661687463.a n = A036997 (n + 1)

theorem P12108923010661687463.correct : P12108923010661687463.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P12108923010661687463.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A048864, A048864.P16915682539637834600.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P5341404605898354114

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1-A048865(n+1)`
-/

namespace A036997.P5341404605898354114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1 - (A048865 (n + 1) : ℚ)

end

end A036997.P5341404605898354114

namespace A036997

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1-A048865(n+1)` -/
def P5341404605898354114.Spec : Prop :=
  ∀ n, P5341404605898354114.a n = (A036997 (n + 1) : ℚ)

end A036997

/-! ## A036997.P2826978280603053855

`A057859(n+1)-A036234(n+1)`
-/

namespace A036997.P2826978280603053855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) - A036234 (n + 1)

end

end A036997.P2826978280603053855

namespace A036997

/-- `A057859(n+1)-A036234(n+1)` -/
def P2826978280603053855.Spec : Prop :=
  ∀ n, P2826978280603053855.a n = A036997 (n + 1)

theorem P2826978280603053855.correct : P2826978280603053855.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P2826978280603053855.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A036234, A036234.P2906282677021386800.a, A037228, A037228.P4220557198165153324.a, A057859, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P6703409170035019111

`A065855(n+1)-A057860(n+1)`
-/

namespace A036997.P6703409170035019111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) - A057860 (n + 1)

end

end A036997.P6703409170035019111

namespace A036997

/-- `A065855(n+1)-A057860(n+1)` -/
def P6703409170035019111.Spec : Prop :=
  ∀ n, P6703409170035019111.a n = A036997 (n + 1)

theorem P6703409170035019111.correct : P6703409170035019111.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P6703409170035019111.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A057860, A057860.P15781516878484293447.a, A065855, A065855.P16805213270251966039.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A051953, A051953.P11179276897610979764.a, A062298, A062298.P8226643735375377344.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P6383651434272861679

`A109606(n+1)-A048865(n+1)`
-/

namespace A036997.P6383651434272861679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A048865 (n + 1)

end

end A036997.P6383651434272861679

namespace A036997

/-- `A109606(n+1)-A048865(n+1)` -/
def P6383651434272861679.Spec : Prop :=
  ∀ n, P6383651434272861679.a n = A036997 (n + 1)

theorem P6383651434272861679.correct : P6383651434272861679.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P6383651434272861679.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A048865, A048865.P11145010694177444749.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P9186198631898826382

`A279436(n+1)-A045763(n+1)`
-/

namespace A036997.P9186198631898826382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279436 (n + 1) - A045763 (n + 1)

end

end A036997.P9186198631898826382

namespace A036997

/-- `A279436(n+1)-A045763(n+1)` -/
def P9186198631898826382.Spec : Prop :=
  ∀ n, P9186198631898826382.a n = A036997 (n + 1)

theorem P9186198631898826382.correct : P9186198631898826382.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P9186198631898826382.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A045763, A045763.P9156243808986750239.a, A279436, A279436.P15978742674708459391.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A033273, A033273.P18420659424697249895.a, A062298, A062298.P8226643735375377344.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P3008670267770949308

`A073757(n+1)-A351519(n+1)`
-/

namespace A036997.P3008670267770949308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A351519 (n + 1)

end

end A036997.P3008670267770949308

namespace A036997

/-- `A073757(n+1)-A351519(n+1)` -/
def P3008670267770949308.Spec : Prop :=
  ∀ n, P3008670267770949308.a n = A036997 (n + 1)

theorem P3008670267770949308.correct : P3008670267770949308.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P3008670267770949308.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A073757, A073757.P6861480467973211752.a, A351519, A351519.P5058596728449047522.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P17424048152644529971

`Δ[A005728(n)]-(A048865(n+1)+1)`
-/

namespace A036997.P17424048152644529971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A048865 (n + 1) + 1)

end

end A036997.P17424048152644529971

namespace A036997

/-- `Δ[A005728(n)]-(A048865(n+1)+1)` -/
def P17424048152644529971.Spec : Prop :=
  ∀ n, P17424048152644529971.a n = A036997 (n + 1)

end A036997

/-! ## A036997.P9898190539809888575

`A001221(n+1)+A037228(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036997

/-- `A001221(n+1)+A037228(n+1)-1` -/
def P9898190539809888575.Spec : Prop :=
  ∀ n, P9898190539809888575.a n = A036997 (n + 1)

theorem P9898190539809888575.correct : P9898190539809888575.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel]

end A036997

/-! ## A036997.P16830216737268654475

`A000010(n+1)-(A048865(n+1)+1)`
-/

namespace A036997.P16830216737268654475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A048865 (n + 1) + 1)

end

end A036997.P16830216737268654475

namespace A036997

/-- `A000010(n+1)-(A048865(n+1)+1)` -/
def P16830216737268654475.Spec : Prop :=
  ∀ n, P16830216737268654475.a n = A036997 (n + 1)

theorem P16830216737268654475.correct : P16830216737268654475.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P16830216737268654475.a, A036997.P9898190539809888575.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A048865, A048865.P11145010694177444749.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P11825505954666232273

`A057859(n+1)-(A000720(n+1)+1)`
-/

namespace A036997.P11825505954666232273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) - (A000720 (n + 1) + 1)

end

end A036997.P11825505954666232273

namespace A036997

/-- `A057859(n+1)-(A000720(n+1)+1)` -/
def P11825505954666232273.Spec : Prop :=
  ∀ n, P11825505954666232273.a n = A036997 (n + 1)

theorem P11825505954666232273.correct : P11825505954666232273.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P11825505954666232273.a, A036997.P9898190539809888575.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A057859, A057859.P5441024818850006693.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P995105946471273209

`A048865(n+1)+A048866(n+1)-1`
-/

namespace A036997.P995105946471273209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + (A048866 (n + 1) - 1)

end

end A036997.P995105946471273209

namespace A036997

/-- `A048865(n+1)+A048866(n+1)-1` -/
def P995105946471273209.Spec : Prop :=
  ∀ n, P995105946471273209.a n = A036997 (n + 1)

theorem P995105946471273209.correct : P995105946471273209.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P995105946471273209.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A048865, A048865.P11145010694177444749.a, A048866, A048866.P13275795640121407663.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P4966779206825201020

`A062298(n+1)-(A057860(n+1)+1)`
-/

namespace A036997.P4966779206825201020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - (A057860 (n + 1) + 1)

end

end A036997.P4966779206825201020

namespace A036997

/-- `A062298(n+1)-(A057860(n+1)+1)` -/
def P4966779206825201020.Spec : Prop :=
  ∀ n, P4966779206825201020.a n = A036997 (n + 1)

theorem P4966779206825201020.correct : P4966779206825201020.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P4966779206825201020.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A057860, A057860.P15781516878484293447.a, A062298, A062298.P8226643735375377344.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P13009490211883596336

`A061468(n+1)-(A351519(n+1)+1)`
-/

namespace A036997.P13009490211883596336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - (A351519 (n + 1) + 1)

end

end A036997.P13009490211883596336

namespace A036997

/-- `A061468(n+1)-(A351519(n+1)+1)` -/
def P13009490211883596336.Spec : Prop :=
  ∀ n, P13009490211883596336.a n = A036997 (n + 1)

theorem P13009490211883596336.correct : P13009490211883596336.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P13009490211883596336.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A061468, A061468.P5735709615131522244.a, A351519, A351519.P5058596728449047522.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P6206263921793865053

`A039649(n+1)-(A048865(n+1)+2)`
-/

namespace A036997.P6206263921793865053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A048865 (n + 1) + 2)

end

end A036997.P6206263921793865053

namespace A036997

/-- `A039649(n+1)-(A048865(n+1)+2)` -/
def P6206263921793865053.Spec : Prop :=
  ∀ n, P6206263921793865053.a n = A036997 (n + 1)

theorem P6206263921793865053.correct : P6206263921793865053.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P6206263921793865053.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A039649, A039649.P16717312505280968063.a, A048865, A048865.P11145010694177444749.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P9889926065283267121

`n-(A051953(n+1)+A048865(n+1))`
-/

namespace A036997.P9889926065283267121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A051953 (n + 1) + A048865 (n + 1))

end

end A036997.P9889926065283267121

namespace A036997

/-- `n-(A051953(n+1)+A048865(n+1))` -/
def P9889926065283267121.Spec : Prop :=
  ∀ n, P9889926065283267121.a n = A036997 (n + 1)

theorem P9889926065283267121.correct : P9889926065283267121.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P9889926065283267121.a, A036997.P9898190539809888575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A037228, A037228.P4220557198165153324.a, A048865, A048865.P11145010694177444749.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P4418908586712139616

`ceil(A002246(n+1)/4)-(A048865(n+1)+1)`
-/

namespace A036997.P4418908586712139616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002246 (n + 1) : ℚ) / 4⌉ - (A048865 (n + 1) + 1)

end

end A036997.P4418908586712139616

namespace A036997

/-- `ceil(A002246(n+1)/4)-(A048865(n+1)+1)` -/
def P4418908586712139616.Spec : Prop :=
  ∀ n, P4418908586712139616.a n = A036997 (n + 1)

end A036997

/-! ## A036997.P8400841966643191374

`A057428(A285788(n+1))+A048864(n+1)`
-/

namespace A036997.P8400841966643191374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A285788 (n + 1)).toNat + A048864 (n + 1)

end

end A036997.P8400841966643191374

namespace A036997

/-- `A057428(A285788(n+1))+A048864(n+1)` -/
def P8400841966643191374.Spec : Prop :=
  ∀ n, P8400841966643191374.a n = A036997 (n + 1)

end A036997

/-! ## A036997.P11089230152210617466

`A000010(n+1)+A001221(n+1)-A036234(n+1)`
-/

namespace A036997.P11089230152210617466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A001221 (n + 1) - A036234 (n + 1))

end

end A036997.P11089230152210617466

namespace A036997

/-- `A000010(n+1)+A001221(n+1)-A036234(n+1)` -/
def P11089230152210617466.Spec : Prop :=
  ∀ n, P11089230152210617466.a n = A036997 (n + 1)

theorem P11089230152210617466.correct : P11089230152210617466.Spec := by
  intro n
  simp only [A036997, Nat.add_sub_cancel, A036997.P11089230152210617466.a, A036997.P9898190539809888575.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A036234, A036234.P2906282677021386800.a, A037228, A037228.P4220557198165153324.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A036997

/-! ## A036997.P2726804312968211414

`A186987(n+1)-(A186971(n+1)+A185953(n+1))`
-/

namespace A036997.P2726804312968211414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186987 (n + 1) - (A186971 (n + 1) + A185953 (n + 1))

end

end A036997.P2726804312968211414

namespace A036997

/-- `A186987(n+1)-(A186971(n+1)+A185953(n+1))` -/
def P2726804312968211414.Spec : Prop :=
  ∀ n, P2726804312968211414.a n = A036997 (n + 1)

end A036997

/-!
# A036998: The number of decompositions of n into different parts relatively prime to n.

The programs for A036998, there is no canonical definition to state claims against.
-/

/-! ## A036998.P14319104416971453148

`A117707(A332002(n+1))`
-/

namespace A036998.P14319104416971453148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A332002 (n + 1)).toNat

end

end A036998.P14319104416971453148

/-! ## A036998.P5792487011720182188

`A034463(A332002(n+1)+1)`
-/

namespace A036998.P5792487011720182188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A332002 (n + 1) + 1).toNat

end

end A036998.P5792487011720182188

/-!
# A036999: Restricted permutations.

The programs for A036999, the canonical program `A036999.P2198827071262309820` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036999 has offset 0).

The definition of A036999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036999.P2198827071262309820

`ogf((6-3x-6x^2)/(1-2x+x^3))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036999

/-- `ogf((6-3x-6x^2)/(1-2x+x^3))` -/
def P2198827071262309820.Spec : Prop :=
  ∀ n, P2198827071262309820.a n = A036999 n

theorem P2198827071262309820.correct : P2198827071262309820.Spec := by
  intro n
  simp only [A036999]

end A036999

/-! ## A036999.P6362300477146668987

`∑[ogf((-6+3x+6x^2)/(-1+x+x^2))]`
-/

namespace A036999.P6362300477146668987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -3, -6] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036999.P6362300477146668987

namespace A036999

/-- `∑[ogf((-6+3x+6x^2)/(-1+x+x^2))]` -/
def P6362300477146668987.Spec : Prop :=
  ∀ n, P6362300477146668987.a n = A036999 n

end A036999

/-! ## A036999.P18067301399788480176

`a(n-1)+a(n-2)-3` with `a(0)=6, a(1)=9`
-/

namespace A036999.P18067301399788480176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9] fun n a =>
  a (n - 1) + (a (n - 2) - 3)

end

end A036999.P18067301399788480176

namespace A036999

/-- `a(n-1)+a(n-2)-3` -/
def P18067301399788480176.Spec : Prop :=
  ∀ n, P18067301399788480176.a n = A036999 n

end A036999

/-! ## A036999.P12481091336568864109

`a(n-1)-(3-a(n-2))` with `a(0)=6, a(1)=9`
-/

namespace A036999.P12481091336568864109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9] fun n a =>
  a (n - 1) - (3 - a (n - 2))

end

end A036999.P12481091336568864109

namespace A036999

/-- `a(n-1)-(3-a(n-2))` -/
def P12481091336568864109.Spec : Prop :=
  ∀ n, P12481091336568864109.a n = A036999 n

end A036999

/-! ## A036999.P14489188207367618792

`∑[A097135(n)]+5`
-/

namespace A036999.P14489188207367618792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A036999.P14489188207367618792

namespace A036999

/-- `∑[A097135(n)]+5` -/
def P14489188207367618792.Spec : Prop :=
  ∀ n, P14489188207367618792.a n = A036999 n

end A036999

/-! ## A036999.P1969780677936395482

`A187893(n+2)+2`
-/

namespace A036999.P1969780677936395482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 (n + 2) + 2

end

end A036999.P1969780677936395482

namespace A036999

/-- `A187893(n+2)+2` -/
def P1969780677936395482.Spec : Prop :=
  ∀ n, P1969780677936395482.a n = A036999 n

end A036999

/-! ## A036999.P1542340343157224690

`A022086(n+2)+3`
-/

namespace A036999.P1542340343157224690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (n + 2) + 3

end

end A036999.P1542340343157224690

namespace A036999

/-- `A022086(n+2)+3` -/
def P1542340343157224690.Spec : Prop :=
  ∀ n, P1542340343157224690.a n = A036999 n

end A036999

/-! ## A036999.P4975783569333613766

`A097135(n+2)+3`
-/

namespace A036999.P4975783569333613766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097135 (n + 2) + 3

end

end A036999.P4975783569333613766

namespace A036999

/-- `A097135(n+2)+3` -/
def P4975783569333613766.Spec : Prop :=
  ∀ n, P4975783569333613766.a n = A036999 n

end A036999

/-! ## A036999.P14962407422392832815

`A377628(n+1)+4`
-/

namespace A036999.P14962407422392832815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377628 (n + 1) + 4

end

end A036999.P14962407422392832815

namespace A036999

/-- `A377628(n+1)+4` -/
def P14962407422392832815.Spec : Prop :=
  ∀ n, P14962407422392832815.a n = A036999 n

end A036999

/-! ## A036999.P2416116886058746504

`A111314(n+1)+5`
-/

namespace A036999.P2416116886058746504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 (n + 1) + 5

end

end A036999.P2416116886058746504

namespace A036999

/-- `A111314(n+1)+5` -/
def P2416116886058746504.Spec : Prop :=
  ∀ n, P2416116886058746504.a n = A036999 n

end A036999

/-! ## A036999.P11708034962689335581

`3*A001611(n+2)`
-/

namespace A036999.P11708034962689335581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001611 (n + 2)

end

end A036999.P11708034962689335581

namespace A036999

/-- `3*A001611(n+2)` -/
def P11708034962689335581.Spec : Prop :=
  ∀ n, P11708034962689335581.a n = A036999 n

end A036999

/-! ## A036999.P9043805103916809921

`3*A226649(Δ[n²])`
-/

namespace A036999.P9043805103916809921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A226649 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A036999.P9043805103916809921

namespace A036999

/-- `3*A226649(Δ[n²])` -/
def P9043805103916809921.Spec : Prop :=
  ∀ n, P9043805103916809921.a n = A036999 n

end A036999

/-! ## A036999.P10347581249338346676

`3*(∑[A000045(n)]+2)`
-/

namespace A036999.P10347581249338346676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A036999.P10347581249338346676

namespace A036999

/-- `3*(∑[A000045(n)]+2)` -/
def P10347581249338346676.Spec : Prop :=
  ∀ n, P10347581249338346676.a n = A036999 n

end A036999

/-! ## A036999.P16266268612533943573

`3*Δ[A255875(n+1)]`
-/

namespace A036999.P16266268612533943573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A036999.P16266268612533943573

namespace A036999

/-- `3*Δ[A255875(n+1)]` -/
def P16266268612533943573.Spec : Prop :=
  ∀ n, P16266268612533943573.a n = A036999 n

end A036999

/-! ## A036999.P14929152281392436152

`3*(A000045(n+2)+1)`
-/

namespace A036999.P14929152281392436152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000045 (n + 2) + 1)

end

end A036999.P14929152281392436152

namespace A036999

/-- `3*(A000045(n+2)+1)` -/
def P14929152281392436152.Spec : Prop :=
  ∀ n, P14929152281392436152.a n = A036999 n

end A036999

/-! ## A036999.P5812035654995268888

`3*(A000071(n+2)+2)`
-/

namespace A036999.P5812035654995268888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000071 (n + 2) + 2)

end

end A036999.P5812035654995268888

namespace A036999

/-- `3*(A000071(n+2)+2)` -/
def P5812035654995268888.Spec : Prop :=
  ∀ n, P5812035654995268888.a n = A036999 n

end A036999

/-! ## A036999.P9629728964408412932

`3*(A157725(n+2)-1)`
-/

namespace A036999.P9629728964408412932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A157725 (n + 2) - 1)

end

end A036999.P9629728964408412932

namespace A036999

/-- `3*(A157725(n+2)-1)` -/
def P9629728964408412932.Spec : Prop :=
  ∀ n, P9629728964408412932.a n = A036999 n

end A036999

/-! ## A036999.P9723336521507968140

`3*(A212804(n+3)+1)`
-/

namespace A036999.P9723336521507968140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A212804 (n + 3) + 1)

end

end A036999.P9723336521507968140

namespace A036999

/-- `3*(A212804(n+3)+1)` -/
def P9723336521507968140.Spec : Prop :=
  ∀ n, P9723336521507968140.a n = A036999 n

end A036999

/-! ## A036999.P6559471937478590751

`3/2*A288603(n+1)`
-/

namespace A036999.P6559471937478590751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A288603 (n + 1) : ℚ)

end

end A036999.P6559471937478590751

namespace A036999

/-- `3/2*A288603(n+1)` -/
def P6559471937478590751.Spec : Prop :=
  ∀ n, P6559471937478590751.a n = (A036999 n : ℚ)

end A036999

/-! ## A036999.P6421005883237894887

`3*(A081659(n+1)-n)`
-/

namespace A036999.P6421005883237894887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A081659 (n + 1) - (n : ℤ))

end

end A036999.P6421005883237894887

namespace A036999

/-- `3*(A081659(n+1)-n)` -/
def P6421005883237894887.Spec : Prop :=
  ∀ n, P6421005883237894887.a n = A036999 n

end A036999

