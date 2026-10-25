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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A115800: Sequence A115799 in binary.

The programs for A115800, the canonical program `A115800.P12968421985045041583` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115800 has offset 0).

The definition of A115800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115800.P12968421985045041583

`A007088(eq[0, and(4*n, 7*n)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115800

/-- `A007088(eq[0, and(4*n, 7*n)])` -/
def P12968421985045041583.Spec : Prop :=
  ∀ n, P12968421985045041583.a n = A115800 n

theorem P12968421985045041583.correct : P12968421985045041583.Spec := by
  intro n
  simp only [A115800]

end A115800

/-! ## A115800.P46615818452107934

`A007088(eq[11*n, or(7*n, 11*n)])`
-/

namespace A115800.P46615818452107934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (7 * n) (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115800.P46615818452107934

namespace A115800

/-- `A007088(eq[11*n, or(7*n, 11*n)])` -/
def P46615818452107934.Spec : Prop :=
  ∀ n, P46615818452107934.a n = A115800 n

end A115800

/-! ## A115800.P10869209737538993719

`A007088(A115799(n))`
-/

namespace A115800.P10869209737538993719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115799 n).toNat

end

end A115800.P10869209737538993719

namespace A115800

/-- `A007088(A115799(n))` -/
def P10869209737538993719.Spec : Prop :=
  ∀ n, P10869209737538993719.a n = A115800 n

end A115800

/-! ## A115800.P10769712104698771149

`sqrt(A063009(eq[0, and(4*n, 7*n)]))`
-/

namespace A115800.P10769712104698771149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (7 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℝ)

end

end A115800.P10769712104698771149

namespace A115800

/-- `sqrt(A063009(eq[0, and(4*n, 7*n)]))` -/
def P10769712104698771149.Spec : Prop :=
  ∀ n, P10769712104698771149.a n = (A115800 n : ℝ)

end A115800

/-! ## A115800.P6390784990819310286

`sqrt(A063009(eq[11*n, or(7*n, 11*n)]))`
-/

namespace A115800.P6390784990819310286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (7 * n) (11 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℝ)

end

end A115800.P6390784990819310286

namespace A115800

/-- `sqrt(A063009(eq[11*n, or(7*n, 11*n)]))` -/
def P6390784990819310286.Spec : Prop :=
  ∀ n, P6390784990819310286.a n = (A115800 n : ℝ)

end A115800

/-! ## A115800.P7428763447096575640

`A185544(2*eq[0, and(4*n, 7*n)])`
-/

namespace A115800.P7428763447096575640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115800.P7428763447096575640

namespace A115800

/-- `A185544(2*eq[0, and(4*n, 7*n)])` -/
def P7428763447096575640.Spec : Prop :=
  ∀ n, P7428763447096575640.a n = A115800 n

end A115800

/-! ## A115800.P93957716972641949

`A185544(2*eq[11*n, or(7*n, 11*n)])`
-/

namespace A115800.P93957716972641949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (7 * n) (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115800.P93957716972641949

namespace A115800

/-- `A185544(2*eq[11*n, or(7*n, 11*n)])` -/
def P93957716972641949.Spec : Prop :=
  ∀ n, P93957716972641949.a n = A115800 n

end A115800

/-! ## A115800.P13833337424421167913

`A185544(2*A115799(n))`
-/

namespace A115800.P13833337424421167913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115799 n).toNat

end

end A115800.P13833337424421167913

namespace A115800

/-- `A185544(2*A115799(n))` -/
def P13833337424421167913.Spec : Prop :=
  ∀ n, P13833337424421167913.a n = A115800 n

end A115800

/-!
# A115801: Numbers k such that 9*k = A048720(25,k), where A048720 is carryless base-2 multiplication.

The programs for A115801, there is no canonical definition to state claims against.
-/

/-! ## A115801.P926077443927824756

`∩[A115770(n+1), A391850(n+1)]`
-/

namespace A115801.P926077443927824756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115801.P926077443927824756

/-! ## A115801.P11939347458217541467

`∩[A115770(n+1), A115803(n+1)]`
-/

namespace A115801.P11939347458217541467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115801.P11939347458217541467

/-! ## A115801.P17586267029617204736

`∩[A115803(n+1), A391742(n+1)]`
-/

namespace A115801.P17586267029617204736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115801.P17586267029617204736

/-! ## A115801.P9974601364666734109

`∩[A115770(n+1), A391846(n+1)]`
-/

namespace A115801.P9974601364666734109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115801.P9974601364666734109

/-! ## A115801.P9659689193515024984

`∩[A173024(n+1), A391850(n+1)]`
-/

namespace A115801.P9659689193515024984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115801.P9659689193515024984

/-! ## A115801.P3923646987968125231

`∩[A115770(n+1), A391848(n+1)]`
-/

namespace A115801.P3923646987968125231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115801.P3923646987968125231

/-! ## A115801.P12455867341094537117

`∩[A173024(n+1), A391848(n+1)]`
-/

namespace A115801.P12455867341094537117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115801.P12455867341094537117

/-! ## A115801.P2488165535805311777

`∪[A115809(n), A115811(n+1)]`
-/

namespace A115801.P2488165535805311777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115801.P2488165535805311777

/-!
# A115802: Sequence A115801 in binary.

The programs for A115802, there is no canonical definition to state claims against.
-/

/-! ## A115802.P2365989784712032535

`A007088(A115801(n+1))`
-/

namespace A115802.P2365989784712032535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115801 (n + 1)).toNat

end

end A115802.P2365989784712032535

/-! ## A115802.P10207995760030831038

`∪[A115812(n+1), A115810(n)]`
-/

namespace A115802.P10207995760030831038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115810 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115802.P10207995760030831038

/-! ## A115802.P141432012415591477

`A007088(eq[2*n, A048733(3*n)])`
-/

namespace A115802.P141432012415591477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115802.P141432012415591477

/-! ## A115802.P10597394152195421684

`A007088(eq[8*n, A048730(3*n)])`
-/

namespace A115802.P10597394152195421684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115802.P10597394152195421684

/-! ## A115802.P7107021051167990239

`∩[A064222(n), A115773(n)]`
-/

namespace A115802.P7107021051167990239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115802.P7107021051167990239

/-!
# A115803: Numbers k such that 11*k = A048720(31,k), where A048720 is carryless base-2 multiplication.

The programs for A115803, there is no canonical definition to state claims against.
-/

/-! ## A115803.P3910819970489442523

`filter[A391846(n+1), A089013(#)]`
-/

namespace A115803.P3910819970489442523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A115803.P3910819970489442523

/-! ## A115803.P1760882330319228748

`A115872(A000124(n+9)+10)%A213397(n)`
-/

namespace A115803.P1760882330319228748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115872 (A000124 (n + 9) + 10).toNat) (A213397 n)

end

end A115803.P1760882330319228748

/-! ## A115803.P12444338957803192863

`eq[A048733(xor(n, 4*n)), A269173(n)]`
-/

namespace A115803.P12444338957803192863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (Nat.xor n (4 * n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115803.P12444338957803192863

/-! ## A115803.P9688282580263706998

`eq[A048733(A048725(n)), A269173(n)]`
-/

namespace A115803.P9688282580263706998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A048725 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115803.P9688282580263706998

/-! ## A115803.P9736193056396064449

`eq[A048733(A064706(4*n)), A269173(n)]`
-/

namespace A115803.P9736193056396064449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (A064706 (4 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115803.P9736193056396064449

/-!
# A115804: Sequence A115803 in binary.

The programs for A115804, there is no canonical definition to state claims against.
-/

/-! ## A115804.P2625764008614759934

`A007088(A115803(n+1))`
-/

namespace A115804.P2625764008614759934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115803 (n + 1)).toNat

end

end A115804.P2625764008614759934

/-! ## A115804.P10907066550871050254

`A007088(eq[A360872(n+1), A366795(n)])`
-/

namespace A115804.P10907066550871050254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115804.P10907066550871050254

/-! ## A115804.P17540118635331925702

`A053715(A085586(n+1))`
-/

namespace A115804.P17540118635331925702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053715 (A085586 (n + 1)).toNat

end

end A115804.P17540118635331925702

/-! ## A115804.P13960971136448702947

`A364668(A136910(n+1))`
-/

namespace A115804.P13960971136448702947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364668 (A136910 (n + 1)).toNat

end

end A115804.P13960971136448702947

/-!
# A115805: Numbers k such that 13*k = A048720(29,k), where A048720 is carryless base-2 multiplication.

The programs for A115805, the canonical program `A115805.P5978121614112368766` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115805 has offset 1).

The definition of A115805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115805.P2884320086586407577

`∩[A391850(n+1), A115829(n)]`
-/

namespace A115805.P2884320086586407577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P2884320086586407577

namespace A115805

/-- `∩[A391850(n+1), A115829(n)]` -/
def P2884320086586407577.Spec : Prop :=
  ∀ n, (P2884320086586407577.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P9801039646915867621

`∩[A391854(n+1), A115829(n)]`
-/

namespace A115805.P9801039646915867621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P9801039646915867621

namespace A115805

/-- `∩[A391854(n+1), A115829(n)]` -/
def P9801039646915867621.Spec : Prop :=
  ∀ n, (P9801039646915867621.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P13572368242172247311

`∩[A048719(n), A115829(n)]`
-/

namespace A115805.P13572368242172247311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P13572368242172247311

namespace A115805

/-- `∩[A048719(n), A115829(n)]` -/
def P13572368242172247311.Spec : Prop :=
  ∀ n, (P13572368242172247311.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P615303734680308782

`∩[A048719(n), A391854(n+1)]`
-/

namespace A115805.P615303734680308782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P615303734680308782

namespace A115805

/-- `∩[A048719(n), A391854(n+1)]` -/
def P615303734680308782.Spec : Prop :=
  ∀ n, (P615303734680308782.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P11839115785858646364

`∩[A115767(n), A115829(n)]`
-/

namespace A115805.P11839115785858646364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P11839115785858646364

namespace A115805

/-- `∩[A115767(n), A115829(n)]` -/
def P11839115785858646364.Spec : Prop :=
  ∀ n, (P11839115785858646364.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P10524087088673255457

`∩[A391854(n+1), A115767(n)]`
-/

namespace A115805.P10524087088673255457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P10524087088673255457

namespace A115805

/-- `∩[A391854(n+1), A115767(n)]` -/
def P10524087088673255457.Spec : Prop :=
  ∀ n, (P10524087088673255457.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P1993973508965984491

`∩[A048719(n), A391856(n+1)]`
-/

namespace A115805.P1993973508965984491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P1993973508965984491

namespace A115805

/-- `∩[A048719(n), A391856(n+1)]` -/
def P1993973508965984491.Spec : Prop :=
  ∀ n, (P1993973508965984491.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P1856631400438494936

`∩[A391856(n+1), A115767(n)]`
-/

namespace A115805.P1856631400438494936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P1856631400438494936

namespace A115805

/-- `∩[A391856(n+1), A115767(n)]` -/
def P1856631400438494936.Spec : Prop :=
  ∀ n, (P1856631400438494936.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P13671920198643630192

`∩[A391856(n+1), A115829(n)]`
-/

namespace A115805.P13671920198643630192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P13671920198643630192

namespace A115805

/-- `∩[A391856(n+1), A115829(n)]` -/
def P13671920198643630192.Spec : Prop :=
  ∀ n, (P13671920198643630192.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P5978121614112368766

`∩[A048719(n), A115823(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A115805

/-- `∩[A048719(n), A115823(n)]` -/
def P5978121614112368766.Spec : Prop :=
  ∀ n, (P5978121614112368766.a n : ℤ) = A115805 (n + 1)

theorem P5978121614112368766.correct : P5978121614112368766.Spec := by
  intro n
  simp only [A115805, Nat.add_sub_cancel]

end A115805

/-! ## A115805.P17491870474035783323

`∩[A115767(n), A115823(n)]`
-/

namespace A115805.P17491870474035783323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P17491870474035783323

namespace A115805

/-- `∩[A115767(n), A115823(n)]` -/
def P17491870474035783323.Spec : Prop :=
  ∀ n, (P17491870474035783323.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P18220043167478974020

`∩[A115823(n), A115829(n)]`
-/

namespace A115805.P18220043167478974020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P18220043167478974020

namespace A115805

/-- `∩[A115823(n), A115829(n)]` -/
def P18220043167478974020.Spec : Prop :=
  ∀ n, (P18220043167478974020.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P17452658560726427207

`∩[A115823(n), A277335(n)]`
-/

namespace A115805.P17452658560726427207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P17452658560726427207

namespace A115805

/-- `∩[A115823(n), A277335(n)]` -/
def P17452658560726427207.Spec : Prop :=
  ∀ n, (P17452658560726427207.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P17750067453793249497

`∩[A115829(n), A277335(n)]`
-/

namespace A115805.P17750067453793249497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P17750067453793249497

namespace A115805

/-- `∩[A115829(n), A277335(n)]` -/
def P17750067453793249497.Spec : Prop :=
  ∀ n, (P17750067453793249497.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P5896679908476206359

`∩[A048719(n), A115821(n)]`
-/

namespace A115805.P5896679908476206359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048719 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115821 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P5896679908476206359

namespace A115805

/-- `∩[A048719(n), A115821(n)]` -/
def P5896679908476206359.Spec : Prop :=
  ∀ n, (P5896679908476206359.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P6701467338354789430

`∩[A115821(n), A115823(n)]`
-/

namespace A115805.P6701467338354789430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115821 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P6701467338354789430

namespace A115805

/-- `∩[A115821(n), A115823(n)]` -/
def P6701467338354789430.Spec : Prop :=
  ∀ n, (P6701467338354789430.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P15543569505638736559

`∩[A115821(n), A115829(n)]`
-/

namespace A115805.P15543569505638736559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115821 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P15543569505638736559

namespace A115805

/-- `∩[A115821(n), A115829(n)]` -/
def P15543569505638736559.Spec : Prop :=
  ∀ n, (P15543569505638736559.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P5695197105350170720

`∩[A115821(n), A277335(n)]`
-/

namespace A115805.P5695197105350170720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115821 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P5695197105350170720

namespace A115805

/-- `∩[A115821(n), A277335(n)]` -/
def P5695197105350170720.Spec : Prop :=
  ∀ n, (P5695197105350170720.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P10197199743345962919

`∩[A115803(n+1), A115821(n)]`
-/

namespace A115805.P10197199743345962919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115821 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P10197199743345962919

namespace A115805

/-- `∩[A115803(n+1), A115821(n)]` -/
def P10197199743345962919.Spec : Prop :=
  ∀ n, (P10197199743345962919.a n : ℤ) = A115805 (n + 1)

end A115805

/-! ## A115805.P6004675733841905859

`∩[A115803(n+1), A115823(n)]`
-/

namespace A115805.P6004675733841905859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115805.P6004675733841905859

namespace A115805

/-- `∩[A115803(n+1), A115823(n)]` -/
def P6004675733841905859.Spec : Prop :=
  ∀ n, (P6004675733841905859.a n : ℤ) = A115805 (n + 1)

end A115805

/-!
# A115806: Sequence A115805 in binary.

The programs for A115806, there is no canonical definition to state claims against.
-/

/-! ## A115806.P14726791783910412102

`A007088(A115829(n))`
-/

namespace A115806.P14726791783910412102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115829 n).toNat

end

end A115806.P14726791783910412102

/-! ## A115806.P1078012537380105765

`A185544(2*A115829(n))`
-/

namespace A115806.P1078012537380105765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115829 n).toNat

end

end A115806.P1078012537380105765

/-! ## A115806.P12489559604443368406

`∩[A336880(n+1), A115822(n)]`
-/

namespace A115806.P12489559604443368406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115822 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115806.P12489559604443368406

/-! ## A115806.P9258710946308248335

`∩[A336880(n+1), A115824(n)]`
-/

namespace A115806.P9258710946308248335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115806.P9258710946308248335

/-! ## A115806.P11424807269566007052

`∩[A115804(n), A115822(n)]`
-/

namespace A115806.P11424807269566007052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115822 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115806.P11424807269566007052

/-!
# A115807: Integers i such that 15*i = 27 X i.

The programs for A115807, there is no canonical definition to state claims against.
-/

/-! ## A115807.P392603884495145544

`∩[A115803(n+1), A048719(n)]`
-/

namespace A115807.P392603884495145544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048719 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115807.P392603884495145544

/-! ## A115807.P8732719585537577449

`∩[A115803(n+1), A115767(n)]`
-/

namespace A115807.P8732719585537577449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115807.P8732719585537577449

/-! ## A115807.P10797640576965856320

`∩[A391846(n+1), A048719(n)]`
-/

namespace A115807.P10797640576965856320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048719 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115807.P10797640576965856320

/-! ## A115807.P452207685924409467

`∩[A391850(n+1), A048719(n)]`
-/

namespace A115807.P452207685924409467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048719 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115807.P452207685924409467

/-! ## A115807.P12118492660700648688

`∩[A391846(n+1), A115767(n)]`
-/

namespace A115807.P12118492660700648688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115807.P12118492660700648688

/-!
# A115808: Sequence A115807 in binary.

The programs for A115808, there is no canonical definition to state claims against.
-/

/-! ## A115808.P18311313555150516387

`A007088(A115807(n))`
-/

namespace A115808.P18311313555150516387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115807 n).toNat

end

end A115808.P18311313555150516387

/-! ## A115808.P8854281356897682086

`A185544(2*A115807(n))`
-/

namespace A115808.P8854281356897682086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115807 n).toNat

end

end A115808.P8854281356897682086

/-! ## A115808.P9226077101198108856

`A127906(A115807(n))/A115807(A028310(n))`
-/

namespace A115808.P9226077101198108856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127906 (A115807 n).toNat : ℚ) / (A115807 (A028310 n).toNat : ℚ)

end

end A115808.P9226077101198108856

/-! ## A115808.P7388225834730679927

`A007088(eq[n, A048735(8*n-and(n, 7*n))])`
-/

namespace A115808.P7388225834730679927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (8 * n - Nat.land n (7 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115808.P7388225834730679927

/-! ## A115808.P13163820121030093973

`A185544(2*eq[n, A048735(8*n-and(n, 7*n))])`
-/

namespace A115808.P13163820121030093973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (8 * n - Nat.land n (7 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115808.P13163820121030093973

/-!
# A115809: Integers i such that 17*i = 49 X i.

The programs for A115809, there is no canonical definition to state claims against.
-/

/-! ## A115809.P15197755266946804714

`record[A341916(16*A153152(n))]`
-/

namespace A115809.P15197755266946804714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (16 * A153152 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115809.P15197755266946804714

/-! ## A115809.P2004657085923426066

`filter[A391738(n+1), A340375(#)]`
-/

namespace A115809.P2004657085923426066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340375 (f1 j).toNat = 1) n)

end

end A115809.P2004657085923426066

/-! ## A115809.P3946268390115634322

`∩[A391738(n+1), A048717(n)]`
-/

namespace A115809.P3946268390115634322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115809.P3946268390115634322

/-! ## A115809.P5116256117178143509

`∩[A115801(n+1), A115874(n+1)]`
-/

namespace A115809.P5116256117178143509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115809.P5116256117178143509

/-! ## A115809.P5883408123029551866

`∩[A115803(n+1), A115874(n+1)]`
-/

namespace A115809.P5883408123029551866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115809.P5883408123029551866

/-!
# A115810: Sequence A115809 in binary.

The programs for A115810, there is no canonical definition to state claims against.
-/

/-! ## A115810.P15390732812645160163

`A007088(A115809(n))`
-/

namespace A115810.P15390732812645160163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115809 n).toNat

end

end A115810.P15390732812645160163

/-! ## A115810.P14268138218939088768

`A185544(2*A115809(n))`
-/

namespace A115810.P14268138218939088768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115809 n).toNat

end

end A115810.P14268138218939088768

/-! ## A115810.P11346638138029512835

`A007088(eq[n, A048733(5*n)])`
-/

namespace A115810.P11346638138029512835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115810.P11346638138029512835

/-! ## A115810.P14196692771280255028

`A185544(2*eq[n, A048733(5*n)])`
-/

namespace A115810.P14196692771280255028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115810.P14196692771280255028

/-! ## A115810.P4249519285698705216

`A007088(eq[4*n, A048730(5*n)])`
-/

namespace A115810.P4249519285698705216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048730 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A115810.P4249519285698705216

/-!
# A115812: Sequence A115811 in binary.

The programs for A115812, there is no canonical definition to state claims against.
-/

/-! ## A115812.P13849635140133736748

`A007088(A115811(n+1))`
-/

namespace A115812.P13849635140133736748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115811 (n + 1)).toNat

end

end A115812.P13849635140133736748

/-! ## A115812.P15595068662920498444

`A204093(A115811(n+1))/A002445(A045979(n+1))`
-/

namespace A115812.P15595068662920498444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 (A115811 (n + 1)).toNat : ℚ) / (A002445 (A045979 (n + 1)).toNat : ℚ)

end

end A115812.P15595068662920498444

/-! ## A115812.P12687920880834753437

`A185544(2*A115811(n+1))`
-/

namespace A115812.P12687920880834753437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115811 (n + 1)).toNat

end

end A115812.P12687920880834753437

/-! ## A115812.P9549125955173250315

`A185544(30*2^n)`
-/

namespace A115812.P9549125955173250315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (30 * 2 ^ n)

end

end A115812.P9549125955173250315

/-! ## A115812.P15274954227511430329

`A169966(30*2^n+1)/30`
-/

namespace A115812.P15274954227511430329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169966 (30 * 2 ^ n + 1) : ℚ) / 30

end

end A115812.P15274954227511430329

/-!
# A115813: Integers i such that 2*i XOR 5*i = 7*i.

The programs for A115813, the canonical program `A115813.P8680093844829378281` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115813 has offset 0).

The definition of A115813 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115813.P8680093844829378281

`eq[0, and(2*n, 5*n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115813

/-- `eq[0, and(2*n, 5*n)]` -/
def P8680093844829378281.Spec : Prop :=
  ∀ n, (P8680093844829378281.a n : ℤ) = A115813 n

theorem P8680093844829378281.correct : P8680093844829378281.Spec := by
  intro n
  simp only [A115813]

end A115813

/-! ## A115813.P7914433921696865050

`lt[and(2*n, 5*n), 1]`
-/

namespace A115813.P7914433921696865050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (5 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115813.P7914433921696865050

namespace A115813

/-- `lt[and(2*n, 5*n), 1]` -/
def P7914433921696865050.Spec : Prop :=
  ∀ n, (P7914433921696865050.a n : ℤ) = A115813 n

end A115813

/-! ## A115813.P1858614114282920597

`eq[7*n, or(2*n, 7*n)]`
-/

namespace A115813.P1858614114282920597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (7 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115813.P1858614114282920597

namespace A115813

/-- `eq[7*n, or(2*n, 7*n)]` -/
def P1858614114282920597.Spec : Prop :=
  ∀ n, (P1858614114282920597.a n : ℤ) = A115813 n

end A115813

/-! ## A115813.P14246877137649909197

`eq[7*n, xor(xor(n, 2*n), xor(n, 5*n))]`
-/

namespace A115813.P14246877137649909197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.xor n (2 * n)) (Nat.xor n (5 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115813.P14246877137649909197

namespace A115813

/-- `eq[7*n, xor(xor(n, 2*n), xor(n, 5*n))]` -/
def P14246877137649909197.Spec : Prop :=
  ∀ n, (P14246877137649909197.a n : ℤ) = A115813 n

end A115813

/-! ## A115813.P10481594021446890756

`eq[or(n, A030123(n)), A030123(n)]`
-/

namespace A115813.P10481594021446890756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A030123 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115813.P10481594021446890756

namespace A115813

/-- `eq[or(n, A030123(n)), A030123(n)]` -/
def P10481594021446890756.Spec : Prop :=
  ∀ n, (P10481594021446890756.a n : ℤ) = A115813 n

end A115813

/-! ## A115813.P4402769269153830176

`eq[or(2*n, A008589(n)), A008589(n)]`
-/

namespace A115813.P4402769269153830176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A008589 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115813.P4402769269153830176

namespace A115813

/-- `eq[or(2*n, A008589(n)), A008589(n)]` -/
def P4402769269153830176.Spec : Prop :=
  ∀ n, (P4402769269153830176.a n : ℤ) = A115813 n

end A115813

/-! ## A115813.P15929643963964284072

`eq[or(n, A047355(n+1)), A047355(n+1)]`
-/

namespace A115813.P15929643963964284072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A047355 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115813.P15929643963964284072

namespace A115813

/-- `eq[or(n, A047355(n+1)), A047355(n+1)]` -/
def P15929643963964284072.Spec : Prop :=
  ∀ n, (P15929643963964284072.a n : ℤ) = A115813 n

end A115813

/-! ## A115813.P15643007127319415056

`lt[A284569(or(n, 5*n)), 3]`
-/

namespace A115813.P15643007127319415056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 (Nat.lor n (5 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115813.P15643007127319415056

namespace A115813

/-- `lt[A284569(or(n, 5*n)), 3]` -/
def P15643007127319415056.Spec : Prop :=
  ∀ n, (P15643007127319415056.a n : ℤ) = A115813 n

end A115813

/-!
# A115814: Sequence A115813 in binary.

The programs for A115814, the canonical program `A115814.P15307000509231881468` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115814 has offset 0).

The definition of A115814 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115814.P15307000509231881468

`A007088(A115813(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115814

/-- `A007088(A115813(n))` -/
def P15307000509231881468.Spec : Prop :=
  ∀ n, P15307000509231881468.a n = A115814 n

theorem P15307000509231881468.correct : P15307000509231881468.Spec := by
  intro n
  simp only [A115814]

end A115814

/-! ## A115814.P18166519362208164383

`A007088(eq[0, and(2*n, 5*n)])`
-/

namespace A115814.P18166519362208164383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115814.P18166519362208164383

namespace A115814

/-- `A007088(eq[0, and(2*n, 5*n)])` -/
def P18166519362208164383.Spec : Prop :=
  ∀ n, P18166519362208164383.a n = A115814 n

end A115814

/-! ## A115814.P4225605264257370252

`record[gcd(and(2*n, 5*n), A007088(n))]`
-/

namespace A115814.P4225605264257370252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land (2 * n) (5 * n) : ℤ) (A007088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115814.P4225605264257370252

namespace A115814

/-- `record[gcd(and(2*n, 5*n), A007088(n))]` -/
def P4225605264257370252.Spec : Prop :=
  ∀ n, (P4225605264257370252.a n : ℤ) = A115814 n

end A115814

/-! ## A115814.P8945212537387035959

`A185544(2*eq[0, and(2*n, 5*n)])`
-/

namespace A115814.P8945212537387035959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115814.P8945212537387035959

namespace A115814

/-- `A185544(2*eq[0, and(2*n, 5*n)])` -/
def P8945212537387035959.Spec : Prop :=
  ∀ n, P8945212537387035959.a n = A115814 n

end A115814

/-! ## A115814.P12862315333955332884

`A185544(2*A115813(n))`
-/

namespace A115814.P12862315333955332884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115813 n).toNat

end

end A115814.P12862315333955332884

namespace A115814

/-- `A185544(2*A115813(n))` -/
def P12862315333955332884.Spec : Prop :=
  ∀ n, P12862315333955332884.a n = A115814 n

end A115814

/-! ## A115814.P13940159391882414334

`A185544(A115813(n)+A115813(n))`
-/

namespace A115814.P13940159391882414334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A115813 n + A115813 n).toNat

end

end A115814.P13940159391882414334

namespace A115814

/-- `A185544(A115813(n)+A115813(n))` -/
def P13940159391882414334.Spec : Prop :=
  ∀ n, P13940159391882414334.a n = A115814 n

end A115814

/-!
# A115815: Integers i such that 2*i XOR 7*i = 9*i.

The programs for A115815, the canonical program `A115815.P16109940933439980634` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115815 has offset 0).

The definition of A115815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115815.P16109940933439980634

`eq[0, and(2*n, 7*n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115815

/-- `eq[0, and(2*n, 7*n)]` -/
def P16109940933439980634.Spec : Prop :=
  ∀ n, (P16109940933439980634.a n : ℤ) = A115815 n

theorem P16109940933439980634.correct : P16109940933439980634.Spec := by
  intro n
  simp only [A115815]

end A115815

/-! ## A115815.P7988103197400813066

`lt[and(2*n, 7*n), 1]`
-/

namespace A115815.P7988103197400813066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (7 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115815.P7988103197400813066

namespace A115815

/-- `lt[and(2*n, 7*n), 1]` -/
def P7988103197400813066.Spec : Prop :=
  ∀ n, (P7988103197400813066.a n : ℤ) = A115815 n

end A115815

/-! ## A115815.P639429634721299569

`eq[9*n, or(2*n, 9*n)]`
-/

namespace A115815.P639429634721299569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (9 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115815.P639429634721299569

namespace A115815

/-- `eq[9*n, or(2*n, 9*n)]` -/
def P639429634721299569.Spec : Prop :=
  ∀ n, (P639429634721299569.a n : ℤ) = A115815 n

end A115815

/-! ## A115815.P1734596749417532249

`eq[n, xor(7*n, 9*n)/2]`
-/

namespace A115815.P1734596749417532249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor (7 * n) (9 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A115815.P1734596749417532249

namespace A115815

/-- `eq[n, xor(7*n, 9*n)/2]` -/
def P1734596749417532249.Spec : Prop :=
  ∀ n, (P1734596749417532249.a n : ℤ) = A115815 n

end A115815

/-! ## A115815.P17331718444099802362

`eq[and(n, A047345(n+1)), A000035(n)]`
-/

namespace A115815.P17331718444099802362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A047345 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115815.P17331718444099802362

namespace A115815

/-- `eq[and(n, A047345(n+1)), A000035(n)]` -/
def P17331718444099802362.Spec : Prop :=
  ∀ n, (P17331718444099802362.a n : ℤ) = A115815 n

end A115815

/-!
# A115816: Sequence A115815 in binary.

The programs for A115816, the canonical program `A115816.P6728982517791538173` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115816 has offset 0).

The definition of A115816 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115815, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115816.P6728982517791538173

`A007088(A115815(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115816

/-- `A007088(A115815(n))` -/
def P6728982517791538173.Spec : Prop :=
  ∀ n, P6728982517791538173.a n = A115816 n

theorem P6728982517791538173.correct : P6728982517791538173.Spec := by
  intro n
  simp only [A115816]

end A115816

/-! ## A115816.P16988686125221270169

`A007088(eq[0, and(2*n, 7*n)])`
-/

namespace A115816.P16988686125221270169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115816.P16988686125221270169

namespace A115816

/-- `A007088(eq[0, and(2*n, 7*n)])` -/
def P16988686125221270169.Spec : Prop :=
  ∀ n, P16988686125221270169.a n = A115816 n

end A115816

/-! ## A115816.P3498835146143475436

`A204093(lt[and(2*n, 7*n), 1])/6`
-/

namespace A115816.P3498835146143475436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (7 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204093 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 6

end

end A115816.P3498835146143475436

namespace A115816

/-- `A204093(lt[and(2*n, 7*n), 1])/6` -/
def P3498835146143475436.Spec : Prop :=
  ∀ n, P3498835146143475436.a n = (A115816 n : ℚ)

end A115816

/-! ## A115816.P10925331743835993912

`A097256(lt[and(2*n, 7*n), 1])/9`
-/

namespace A115816.P10925331743835993912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (7 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 9

end

end A115816.P10925331743835993912

namespace A115816

/-- `A097256(lt[and(2*n, 7*n), 1])/9` -/
def P10925331743835993912.Spec : Prop :=
  ∀ n, P10925331743835993912.a n = (A115816 n : ℚ)

end A115816

/-! ## A115816.P17900296485433191296

`A127906(A115815(n))/A115815(A028310(n))`
-/

namespace A115816.P17900296485433191296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127906 (A115815 n).toNat : ℚ) / (A115815 (A028310 n).toNat : ℚ)

end

end A115816.P17900296485433191296

namespace A115816

/-- `A127906(A115815(n))/A115815(A028310(n))` -/
def P17900296485433191296.Spec : Prop :=
  ∀ n, P17900296485433191296.a n = (A115816 n : ℚ)

end A115816

/-! ## A115816.P8938957234264109905

`A185544(2*A115815(n))`
-/

namespace A115816.P8938957234264109905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115815 n).toNat

end

end A115816.P8938957234264109905

namespace A115816

/-- `A185544(2*A115815(n))` -/
def P8938957234264109905.Spec : Prop :=
  ∀ n, P8938957234264109905.a n = A115816 n

end A115816

/-! ## A115816.P2852827862249324814

`A185544(A115815(n)+A115815(n))`
-/

namespace A115816.P2852827862249324814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A115815 n + A115815 n).toNat

end

end A115816.P2852827862249324814

namespace A115816

/-- `A185544(A115815(n)+A115815(n))` -/
def P2852827862249324814.Spec : Prop :=
  ∀ n, P2852827862249324814.a n = A115816 n

end A115816

/-!
# A115817: Integers i such that 4*i XOR 13*i = 17*i.

The programs for A115817, the canonical program `A115817.P3939822631794788705` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115817 has offset 0).

The definition of A115817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 396 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115817.P3939822631794788705

`eq[0, and(4*n, 13*n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115817

/-- `eq[0, and(4*n, 13*n)]` -/
def P3939822631794788705.Spec : Prop :=
  ∀ n, (P3939822631794788705.a n : ℤ) = A115817 n

theorem P3939822631794788705.correct : P3939822631794788705.Spec := by
  intro n
  simp only [A115817]

end A115817

/-! ## A115817.P9932641704077528801

`lt[and(4*n+1, 13*n), 3]`
-/

namespace A115817.P9932641704077528801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n + 1) (13 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115817.P9932641704077528801

namespace A115817

/-- `lt[and(4*n+1, 13*n), 3]` -/
def P9932641704077528801.Spec : Prop :=
  ∀ n, (P9932641704077528801.a n : ℤ) = A115817 n

end A115817

/-! ## A115817.P13684115861197625769

`eq[17*n, or(4*n, 17*n)]`
-/

namespace A115817.P13684115861197625769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (4 * n) (17 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115817.P13684115861197625769

namespace A115817

/-- `eq[17*n, or(4*n, 17*n)]` -/
def P13684115861197625769.Spec : Prop :=
  ∀ n, (P13684115861197625769.a n : ℤ) = A115817 n

end A115817

/-! ## A115817.P16942423579227468749

`record[A048725(n)]-A185294(2*n+1)`
-/

namespace A115817.P16942423579227468749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A185294 (2 * n + 1)

end

end A115817.P16942423579227468749

namespace A115817

/-- `record[A048725(n)]-A185294(2*n+1)` -/
def P16942423579227468749.Spec : Prop :=
  ∀ n, P16942423579227468749.a n = A115817 n

end A115817

/-!
# A115818: Sequence A115817 in binary.

The programs for A115818, the canonical program `A115818.P8141254646774440608` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115818 has offset 0).

The definition of A115818 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115817, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115818.P8141254646774440608

`A007088(A115817(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115818

/-- `A007088(A115817(n))` -/
def P8141254646774440608.Spec : Prop :=
  ∀ n, P8141254646774440608.a n = A115818 n

theorem P8141254646774440608.correct : P8141254646774440608.Spec := by
  intro n
  simp only [A115818]

end A115818

/-! ## A115818.P17219591397962363990

`A007088(eq[0, and(4*n, 13*n)])`
-/

namespace A115818.P17219591397962363990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (13 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115818.P17219591397962363990

namespace A115818

/-- `A007088(eq[0, and(4*n, 13*n)])` -/
def P17219591397962363990.Spec : Prop :=
  ∀ n, P17219591397962363990.a n = A115818 n

end A115818

/-! ## A115818.P8583277112654009120

`sqrt(A063009(eq[0, and(4*n, 13*n)]))`
-/

namespace A115818.P8583277112654009120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (13 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℝ)

end

end A115818.P8583277112654009120

namespace A115818

/-- `sqrt(A063009(eq[0, and(4*n, 13*n)]))` -/
def P8583277112654009120.Spec : Prop :=
  ∀ n, P8583277112654009120.a n = (A115818 n : ℝ)

end A115818

/-! ## A115818.P17337467789069752464

`A185544(2*eq[0, and(4*n, 13*n)])`
-/

namespace A115818.P17337467789069752464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (13 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115818.P17337467789069752464

namespace A115818

/-- `A185544(2*eq[0, and(4*n, 13*n)])` -/
def P17337467789069752464.Spec : Prop :=
  ∀ n, P17337467789069752464.a n = A115818 n

end A115818

/-! ## A115818.P13724834433862343435

`A185544(2*A115817(n))`
-/

namespace A115818.P13724834433862343435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115817 n).toNat

end

end A115818.P13724834433862343435

namespace A115818

/-- `A185544(2*A115817(n))` -/
def P13724834433862343435.Spec : Prop :=
  ∀ n, P13724834433862343435.a n = A115818 n

end A115818

/-!
# A115819: Integers n such that 4*n XOR 15*n = 19*n.

The programs for A115819, the canonical program `A115819.P16880299145439504198` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115819 has offset 1).

The definition of A115819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 406 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115819.P16880299145439504198

`lt[and(16*n, 60*n), 1]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115819

/-- `lt[and(16*n, 60*n), 1]` -/
def P16880299145439504198.Spec : Prop :=
  ∀ n, (P16880299145439504198.a n : ℤ) = A115819 (n + 1)

theorem P16880299145439504198.correct : P16880299145439504198.Spec := by
  intro n
  simp only [A115819, Nat.add_sub_cancel]

end A115819

/-! ## A115819.P11932583078483779968

`eq[4*n, and(4*n, 19*n)]`
-/

namespace A115819.P11932583078483779968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (19 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115819.P11932583078483779968

namespace A115819

/-- `eq[4*n, and(4*n, 19*n)]` -/
def P11932583078483779968.Spec : Prop :=
  ∀ n, (P11932583078483779968.a n : ℤ) = A115819 (n + 1)

end A115819

/-! ## A115819.P15023487828593781145

`eq[A144200(n+1), A229823(A000695(n))]`
-/

namespace A115819.P15023487828593781145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229823 (A000695 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115819.P15023487828593781145

namespace A115819

/-- `eq[A144200(n+1), A229823(A000695(n))]` -/
def P15023487828593781145.Spec : Prop :=
  ∀ n, (P15023487828593781145.a n : ℤ) = A115819 (n + 1)

end A115819

/-!
# A115820: Sequence A115819 in binary.

The programs for A115820, the canonical program `A115820.P5339563733588952292` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115820 has offset 0).

The definition of A115820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115820.P5339563733588952292

`A007088(A115819(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115820

/-- `A007088(A115819(n+1))` -/
def P5339563733588952292.Spec : Prop :=
  ∀ n, P5339563733588952292.a n = A115820 n

theorem P5339563733588952292.correct : P5339563733588952292.Spec := by
  intro n
  simp only [A115820]

end A115820

/-! ## A115820.P16055056974061856711

`A007088(lt[and(16*n, 60*n), 1])`
-/

namespace A115820.P16055056974061856711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (16 * n) (60 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115820.P16055056974061856711

namespace A115820

/-- `A007088(lt[and(16*n, 60*n), 1])` -/
def P16055056974061856711.Spec : Prop :=
  ∀ n, P16055056974061856711.a n = A115820 n

end A115820

/-! ## A115820.P7589175724460048827

`A007088(eq[4*n, and(4*n, 19*n)])`
-/

namespace A115820.P7589175724460048827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (19 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115820.P7589175724460048827

namespace A115820

/-- `A007088(eq[4*n, and(4*n, 19*n)])` -/
def P7589175724460048827.Spec : Prop :=
  ∀ n, P7589175724460048827.a n = A115820 n

end A115820

/-! ## A115820.P319292850214476514

`A185544(2*eq[4*n, and(4*n, 19*n)])`
-/

namespace A115820.P319292850214476514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (4 * n) (19 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115820.P319292850214476514

namespace A115820

/-- `A185544(2*eq[4*n, and(4*n, 19*n)])` -/
def P319292850214476514.Spec : Prop :=
  ∀ n, P319292850214476514.a n = A115820 n

end A115820

/-! ## A115820.P17561434105435912640

`A185544(2*A115819(n+1))`
-/

namespace A115820.P17561434105435912640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115819 (n + 1)).toNat

end

end A115820.P17561434105435912640

namespace A115820

/-- `A185544(2*A115819(n+1))` -/
def P17561434105435912640.Spec : Prop :=
  ∀ n, P17561434105435912640.a n = A115820 n

end A115820

/-!
# A115821: Integers i such that 6*i XOR 15*i = 21*i.

The programs for A115821, the canonical program `A115821.P562963444630615089` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115821 has offset 0).

The definition of A115821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115821.P13113303486718204204

`eq[0, and(A008458(n), A008597(n))]`
-/

namespace A115821.P13113303486718204204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008458 n) (A008597 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115821.P13113303486718204204

namespace A115821

/-- `eq[0, and(A008458(n), A008597(n))]` -/
def P13113303486718204204.Spec : Prop :=
  ∀ n, (P13113303486718204204.a n : ℤ) = A115821 n

end A115821

/-! ## A115821.P562963444630615089

`eq[0, and(A008588(n), A008597(n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115821

/-- `eq[0, and(A008588(n), A008597(n))]` -/
def P562963444630615089.Spec : Prop :=
  ∀ n, (P562963444630615089.a n : ℤ) = A115821 n

theorem P562963444630615089.correct : P562963444630615089.Spec := by
  intro n
  simp only [A115821]

end A115821

/-! ## A115821.P3323097160796678978

`eq[0, and(A008594(n), A128470(n))]`
-/

namespace A115821.P3323097160796678978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008594 n) (A128470 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115821.P3323097160796678978

namespace A115821

/-- `eq[0, and(A008594(n), A128470(n))]` -/
def P3323097160796678978.Spec : Prop :=
  ∀ n, (P3323097160796678978.a n : ℤ) = A115821 n

end A115821

/-! ## A115821.P14508459422720618577

`eq[0, and(A008594(n), A249674(n))]`
-/

namespace A115821.P14508459422720618577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008594 n) (A249674 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115821.P14508459422720618577

namespace A115821

/-- `eq[0, and(A008594(n), A249674(n))]` -/
def P14508459422720618577.Spec : Prop :=
  ∀ n, (P14508459422720618577.a n : ℤ) = A115821 n

end A115821

/-! ## A115821.P5426722205666841402

`eq[0, and(A017533(n), A249674(n))]`
-/

namespace A115821.P5426722205666841402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017533 n) (A249674 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115821.P5426722205666841402

namespace A115821

/-- `eq[0, and(A017533(n), A249674(n))]` -/
def P5426722205666841402.Spec : Prop :=
  ∀ n, (P5426722205666841402.a n : ℤ) = A115821 n

end A115821

/-! ## A115821.P7512733505270572034

`eq[1, and(A017533(n), A128470(n))]`
-/

namespace A115821.P7512733505270572034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017533 n) (A128470 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115821.P7512733505270572034

namespace A115821

/-- `eq[1, and(A017533(n), A128470(n))]` -/
def P7512733505270572034.Spec : Prop :=
  ∀ n, (P7512733505270572034.a n : ℤ) = A115821 n

end A115821

/-!
# A115822: Sequence A115821 in binary.

The programs for A115822, the canonical program `A115822.P17871558408820840963` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115822 has offset 0).

The definition of A115822 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115822.P17871558408820840963

`A007088(A115821(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115822

/-- `A007088(A115821(n))` -/
def P17871558408820840963.Spec : Prop :=
  ∀ n, P17871558408820840963.a n = A115822 n

theorem P17871558408820840963.correct : P17871558408820840963.Spec := by
  intro n
  simp only [A115822]

end A115822

/-! ## A115822.P11958820487097409997

`A185544(2*A115821(n))`
-/

namespace A115822.P11958820487097409997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115821 n).toNat

end

end A115822.P11958820487097409997

namespace A115822

/-- `A185544(2*A115821(n))` -/
def P11958820487097409997.Spec : Prop :=
  ∀ n, P11958820487097409997.a n = A115822 n

end A115822

/-! ## A115822.P12579789335170659931

`A007089(A005836(A115821(n)+1))`
-/

namespace A115822.P12579789335170659931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005836 (A115821 n + 1).toNat).toNat

end

end A115822.P12579789335170659931

namespace A115822

/-- `A007089(A005836(A115821(n)+1))` -/
def P12579789335170659931.Spec : Prop :=
  ∀ n, P12579789335170659931.a n = A115822 n

end A115822

/-!
# A115823: Integers i such that 8*i XOR 13*i = 21*i.

The programs for A115823, the canonical program `A115823.P15645709274732949001` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115823 has offset 0).

The definition of A115823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115823.P15645709274732949001

`eq[0, and(8*n, 13*n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115823

/-- `eq[0, and(8*n, 13*n)]` -/
def P15645709274732949001.Spec : Prop :=
  ∀ n, (P15645709274732949001.a n : ℤ) = A115823 n

theorem P15645709274732949001.correct : P15645709274732949001.Spec := by
  intro n
  simp only [A115823]

end A115823

/-! ## A115823.P7146815052730104241

`lt[and(8*n, 13*n), 1]`
-/

namespace A115823.P7146815052730104241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (8 * n) (13 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115823.P7146815052730104241

namespace A115823

/-- `lt[and(8*n, 13*n), 1]` -/
def P7146815052730104241.Spec : Prop :=
  ∀ n, (P7146815052730104241.a n : ℤ) = A115823 n

end A115823

/-! ## A115823.P4443355287974345851

`∪[A115825(n+1), A115829(n)]`
-/

namespace A115823.P4443355287974345851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115829 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115823.P4443355287974345851

namespace A115823

/-- `∪[A115825(n+1), A115829(n)]` -/
def P4443355287974345851.Spec : Prop :=
  ∀ n, (P4443355287974345851.a n : ℤ) = A115823 n

end A115823

/-! ## A115823.P7566319873194481975

`∪[A115805(n+1), A115825(n+1)]`
-/

namespace A115823.P7566319873194481975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115823.P7566319873194481975

namespace A115823

/-- `∪[A115805(n+1), A115825(n+1)]` -/
def P7566319873194481975.Spec : Prop :=
  ∀ n, (P7566319873194481975.a n : ℤ) = A115823 n

end A115823

/-!
# A115824: Sequence A115823 in binary.

The programs for A115824, the canonical program `A115824.P7796633499277232802` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115824 has offset 0).

The definition of A115824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115824.P7796633499277232802

`A007088(eq[0, and(8*n, 13*n)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115824

/-- `A007088(eq[0, and(8*n, 13*n)])` -/
def P7796633499277232802.Spec : Prop :=
  ∀ n, P7796633499277232802.a n = A115824 n

theorem P7796633499277232802.correct : P7796633499277232802.Spec := by
  intro n
  simp only [A115824]

end A115824

/-! ## A115824.P17771683570634183659

`A007088(lt[and(8*n, 13*n), 1])`
-/

namespace A115824.P17771683570634183659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (8 * n) (13 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115824.P17771683570634183659

namespace A115824

/-- `A007088(lt[and(8*n, 13*n), 1])` -/
def P17771683570634183659.Spec : Prop :=
  ∀ n, P17771683570634183659.a n = A115824 n

end A115824

/-! ## A115824.P8330725696288362046

`A007088(A115823(n))`
-/

namespace A115824.P8330725696288362046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115823 n).toNat

end

end A115824.P8330725696288362046

namespace A115824

/-- `A007088(A115823(n))` -/
def P8330725696288362046.Spec : Prop :=
  ∀ n, P8330725696288362046.a n = A115824 n

end A115824

/-! ## A115824.P6648370645400152879

`A185544(2*eq[0, and(8*n, 13*n)])`
-/

namespace A115824.P6648370645400152879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (8 * n) (13 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115824.P6648370645400152879

namespace A115824

/-- `A185544(2*eq[0, and(8*n, 13*n)])` -/
def P6648370645400152879.Spec : Prop :=
  ∀ n, P6648370645400152879.a n = A115824 n

end A115824

/-! ## A115824.P8497016198605027202

`A185544(2*lt[and(8*n, 13*n), 1])`
-/

namespace A115824.P8497016198605027202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (8 * n) (13 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115824.P8497016198605027202

namespace A115824

/-- `A185544(2*lt[and(8*n, 13*n), 1])` -/
def P8497016198605027202.Spec : Prop :=
  ∀ n, P8497016198605027202.a n = A115824 n

end A115824

/-! ## A115824.P3741287327499599410

`A185544(2*A115823(n))`
-/

namespace A115824.P3741287327499599410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115823 n).toNat

end

end A115824.P3741287327499599410

namespace A115824

/-- `A185544(2*A115823(n))` -/
def P3741287327499599410.Spec : Prop :=
  ∀ n, P3741287327499599410.a n = A115824 n

end A115824

/-!
# A115825: Integers i such that 8*i XOR 13*i = 23*i, but 13*i is not 29 X i.

The programs for A115825, there is no canonical definition to state claims against.
-/

/-! ## A115825.P6040533702349288491

`∩[A377169(n+1), A115823(n)]`
-/

namespace A115825.P6040533702349288491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115825.P6040533702349288491

/-! ## A115825.P14201217608233089161

`∩[A300669(n+1), A115823(n)]`
-/

namespace A115825.P14201217608233089161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115825.P14201217608233089161

/-! ## A115825.P17137101902583655918

`∩[A359267(n+1), A115823(n)]`
-/

namespace A115825.P17137101902583655918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115823 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115825.P17137101902583655918

/-!
# A115826: Sequence A115825 in binary.

The programs for A115826, there is no canonical definition to state claims against.
-/

/-! ## A115826.P13291196085479088807

`A007088(A115825(n+1))`
-/

namespace A115826.P13291196085479088807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115825 (n + 1)).toNat

end

end A115826.P13291196085479088807

/-! ## A115826.P12024427914804580965

`A185544(2*A115825(n+1))`
-/

namespace A115826.P12024427914804580965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115825 (n + 1)).toNat

end

end A115826.P12024427914804580965

/-! ## A115826.P13350016067893804475

`∩[A123001(n+1), A115824(n)]`
-/

namespace A115826.P13350016067893804475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115826.P13350016067893804475

/-! ## A115826.P12151533802740651906

`∩[A123001(n+1), A007088(A115823(n))]`
-/

namespace A115826.P12151533802740651906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115823 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115826.P12151533802740651906

/-!
# A115827: Integers i such that 5*i XOR 6*i = 11*i.

The programs for A115827, the canonical program `A115827.P2135130010281420525` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115827 has offset 0).

The definition of A115827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115827.P2135130010281420525

`lt[and(6*n, 5*n), 2]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115827

/-- `lt[and(6*n, 5*n), 2]` -/
def P2135130010281420525.Spec : Prop :=
  ∀ n, (P2135130010281420525.a n : ℤ) = A115827 n

theorem P2135130010281420525.correct : P2135130010281420525.Spec := by
  intro n
  simp only [A115827]

end A115827

/-! ## A115827.P15617091023125801719

`eq[5*n, and(5*n, 11*n)]`
-/

namespace A115827.P15617091023125801719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (5 * n) (11 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115827.P15617091023125801719

namespace A115827

/-- `eq[5*n, and(5*n, 11*n)]` -/
def P15617091023125801719.Spec : Prop :=
  ∀ n, (P15617091023125801719.a n : ℤ) = A115827 n

end A115827

/-! ## A115827.P16654821175160154006

`eq[11*n, or(5*n, 11*n)]`
-/

namespace A115827.P16654821175160154006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (5 * n) (11 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115827.P16654821175160154006

namespace A115827

/-- `eq[11*n, or(5*n, 11*n)]` -/
def P16654821175160154006.Spec : Prop :=
  ∀ n, (P16654821175160154006.a n : ℤ) = A115827 n

end A115827

/-! ## A115827.P11177458734264964070

`lt[xor(11*n, 5*n), A304803(n)]`
-/

namespace A115827.P11177458734264964070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (11 * n) (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115827.P11177458734264964070

namespace A115827

/-- `lt[xor(11*n, 5*n), A304803(n)]` -/
def P11177458734264964070.Spec : Prop :=
  ∀ n, (P11177458734264964070.a n : ℤ) = A115827 n

end A115827

/-! ## A115827.P17642442905963623932

`eq[or(5*n, A008593(n)), A008593(n)]`
-/

namespace A115827.P17642442905963623932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (5 * n : ℤ) (A008593 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115827.P17642442905963623932

namespace A115827

/-- `eq[or(5*n, A008593(n)), A008593(n)]` -/
def P17642442905963623932.Spec : Prop :=
  ∀ n, (P17642442905963623932.a n : ℤ) = A115827 n

end A115827

/-!
# A115828: Sequence A115827 in binary.

The programs for A115828, the canonical program `A115828.P3340096945707249904` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115828 has offset 0).

The definition of A115828 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A115827, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115828.P3340096945707249904

`A007088(A115827(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115828

/-- `A007088(A115827(n))` -/
def P3340096945707249904.Spec : Prop :=
  ∀ n, P3340096945707249904.a n = A115828 n

theorem P3340096945707249904.correct : P3340096945707249904.Spec := by
  intro n
  simp only [A115828]

end A115828

/-! ## A115828.P5602132312086923458

`A007088(eq[5*n, and(5*n, 11*n)])`
-/

namespace A115828.P5602132312086923458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (5 * n) (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115828.P5602132312086923458

namespace A115828

/-- `A007088(eq[5*n, and(5*n, 11*n)])` -/
def P5602132312086923458.Spec : Prop :=
  ∀ n, P5602132312086923458.a n = A115828 n

end A115828

/-! ## A115828.P5285306770198536686

`A007088(eq[11*n, or(5*n, 11*n)])`
-/

namespace A115828.P5285306770198536686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (5 * n) (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115828.P5285306770198536686

namespace A115828

/-- `A007088(eq[11*n, or(5*n, 11*n)])` -/
def P5285306770198536686.Spec : Prop :=
  ∀ n, P5285306770198536686.a n = A115828 n

end A115828

/-! ## A115828.P7070889657620502649

`A185544(2*eq[5*n, and(5*n, 11*n)])`
-/

namespace A115828.P7070889657620502649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (5 * n) (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115828.P7070889657620502649

namespace A115828

/-- `A185544(2*eq[5*n, and(5*n, 11*n)])` -/
def P7070889657620502649.Spec : Prop :=
  ∀ n, P7070889657620502649.a n = A115828 n

end A115828

/-! ## A115828.P2496038911481550423

`A185544(2*eq[11*n, or(5*n, 11*n)])`
-/

namespace A115828.P2496038911481550423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (5 * n) (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115828.P2496038911481550423

namespace A115828

/-- `A185544(2*eq[11*n, or(5*n, 11*n)])` -/
def P2496038911481550423.Spec : Prop :=
  ∀ n, P2496038911481550423.a n = A115828 n

end A115828

/-! ## A115828.P8491155220168844364

`A185544(2*A115827(n))`
-/

namespace A115828.P8491155220168844364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115827 n).toNat

end

end A115828.P8491155220168844364

namespace A115828

/-- `A185544(2*A115827(n))` -/
def P8491155220168844364.Spec : Prop :=
  ∀ n, P8491155220168844364.a n = A115828 n

end A115828

/-! ## A115828.P12903883150434696709

`A185544(A115827(n)+A115827(n))`
-/

namespace A115828.P12903883150434696709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A115827 n + A115827 n).toNat

end

end A115828.P12903883150434696709

namespace A115828

/-- `A185544(A115827(n)+A115827(n))` -/
def P12903883150434696709.Spec : Prop :=
  ∀ n, P12903883150434696709.a n = A115828 n

end A115828

/-!
# A115829: Integers i such that 10*i XOR 11*i = 21*i.

The programs for A115829, there is no canonical definition to state claims against.
-/

/-! ## A115829.P12697278381973735306

`lt[and(10*n, 11*n)+1, 2]`
-/

namespace A115829.P12697278381973735306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (10 * n) (11 * n) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115829.P12697278381973735306

/-!
# A115832: Sequence A115831 in binary.

The programs for A115832, there is no canonical definition to state claims against.
-/

/-! ## A115832.P10195800001154322848

`A007088(A115831(n+1))`
-/

namespace A115832.P10195800001154322848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115831 (n + 1)).toNat

end

end A115832.P10195800001154322848

/-! ## A115832.P11390030100109385024

`A014417(lt[A300506(n+1), 4])`
-/

namespace A115832.P11390030100109385024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300506 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A115832.P11390030100109385024

/-! ## A115832.P12042224187109209223

`A014417(lt[A078374(n+3), A325985(n+3)])`
-/

namespace A115832.P12042224187109209223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325985 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115832.P12042224187109209223

/-! ## A115832.P5455103157159712324

`filter[A115848(n), A229062(#)]`
-/

namespace A115832.P5455103157159712324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A115832.P5455103157159712324

/-! ## A115832.P13277548165764046614

`A014417(lt[(n-3)/3, A050252(n+1)])`
-/

namespace A115832.P13277548165764046614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A115832.P13277548165764046614

/-!
# A115833: Integers i such that 16*i XOR 17*i = 33*i.

The programs for A115833, there is no canonical definition to state claims against.
-/

/-! ## A115833.P2809463791653040341

`lt[A139251(A033014(n+1)), A005843(n+3)]`
-/

namespace A115833.P2809463791653040341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A033014 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115833.P2809463791653040341

/-! ## A115833.P14127751013535616168

`A115809(n)-A307598(A309688(3*n+4))`
-/

namespace A115833.P14127751013535616168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115809 n - A307598 (A309688 (3 * n + 4)).toNat

end

end A115833.P14127751013535616168

/-!
# A115834: Sequence A115833 in binary.

The programs for A115834, there is no canonical definition to state claims against.
-/

/-! ## A115834.P14290642261859998497

`A007088(A115833(n))`
-/

namespace A115834.P14290642261859998497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115833 n).toNat

end

end A115834.P14290642261859998497

/-! ## A115834.P2646298667827979437

`A127906(A115833(n))/A115833(A028310(n))`
-/

namespace A115834.P2646298667827979437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127906 (A115833 n).toNat : ℚ) / (A115833 (A028310 n).toNat : ℚ)

end

end A115834.P2646298667827979437

/-! ## A115834.P14808933609296763887

`A185544(2*A115833(n))`
-/

namespace A115834.P14808933609296763887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115833 n).toNat

end

end A115834.P14808933609296763887

/-!
# A115835: Square root of pi(A064523(n)).

The programs for A115835, there is no canonical definition to state claims against.
-/

/-! ## A115835.P11775682185102276438

`A254500(a(n-1)+1)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A115835.P11775682185102276438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 5] fun n a =>
  A254500 (a (n - 1) + 1).toNat

end

end A115835.P11775682185102276438

/-!
# A115836: Self-describing sequence. The n-th integer of the sequence indicates how many integers of the sequence are strictly < 2n.

The programs for A115836, the canonical program `A115836.P4635970898570071194` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115836 has offset 1).

The definition of A115836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A115836.P4635970898570071194

`A007378(n+2)-2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A115836

/-- `A007378(n+2)-2` -/
def P4635970898570071194.Spec : Prop :=
  ∀ n, P4635970898570071194.a n = A115836 (n + 1)

theorem P4635970898570071194.correct : P4635970898570071194.Spec := by
  intro n
  simp only [A115836, Nat.add_sub_cancel]

end A115836

/-! ## A115836.P18280907676742156159

`∑[abs(a(floor((n-1)/2)))]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A115836.P18280907676742156159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115836.P18280907676742156159

namespace A115836

/-- `∑[abs(a(floor((n-1)/2)))]` -/
def P18280907676742156159.Spec : Prop :=
  ∀ n, (P18280907676742156159.a n : ℤ) = A115836 (n + 1)

end A115836

/-! ## A115836.P10145531998054862272

`∑[floor(a(floor((n-1)/2)))]` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A115836.P10145531998054862272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115836.P10145531998054862272

namespace A115836

/-- `∑[floor(a(floor((n-1)/2)))]` -/
def P10145531998054862272.Spec : Prop :=
  ∀ n, (P10145531998054862272.a n : ℤ) = A115836 (n + 1)

end A115836

/-! ## A115836.P8798644648117324003

`∑[ceil(a(ceil(n/2)-1))]` with `a(0)=1, a(1)=1, a(2)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A115836.P8798644648117324003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (⌈(n : ℚ) / 2⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115836.P8798644648117324003

namespace A115836

/-- `∑[ceil(a(ceil(n/2)-1))]` -/
def P8798644648117324003.Spec : Prop :=
  ∀ n, (P8798644648117324003.a n : ℤ) = A115836 (n + 1)

end A115836

/-! ## A115836.P1807612192874901241

`∑[round(a(∑[n%2]-1))]` with `a(0)=1, a(1)=1, a(2)=2`

`round` is left out, it is the identity on integers.
-/

namespace A115836.P1807612192874901241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115836.P1807612192874901241

namespace A115836

/-- `∑[round(a(∑[n%2]-1))]` -/
def P1807612192874901241.Spec : Prop :=
  ∀ n, (P1807612192874901241.a n : ℤ) = A115836 (n + 1)

end A115836

/-! ## A115836.P15851716295494781779

`comp[∑[n*char[2^n]]+2*n]`
-/

namespace A115836.P15851716295494781779
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A115836.P15851716295494781779

namespace A115836

/-- `comp[∑[n*char[2^n]]+2*n]` -/
def P15851716295494781779.Spec : Prop :=
  ∀ n, (P15851716295494781779.a n : ℤ) = A115836 (n + 1)

end A115836

/-! ## A115836.P15253836367056043225

`∑[ceil((n+1)/xor(n+1, ceil(n/2)))]`
-/

namespace A115836.P15253836367056043225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (Int.xor (n + 1 : ℤ) ⌈(n : ℚ) / 2⌉ : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115836.P15253836367056043225

namespace A115836

/-- `∑[ceil((n+1)/xor(n+1, ceil(n/2)))]` -/
def P15253836367056043225.Spec : Prop :=
  ∀ n, P15253836367056043225.a n = A115836 (n + 1)

end A115836

/-! ## A115836.P10323095963855282977

`lt[xor(or(n, n+1), a(n-1)), n]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A115836.P10323095963855282977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  Nat.xor (Nat.lor n (n + 1)) (f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115836.P10323095963855282977

namespace A115836

/-- `lt[xor(or(n, n+1), a(n-1)), n]` -/
def P10323095963855282977.Spec : Prop :=
  ∀ n, (P10323095963855282977.a n : ℤ) = A115836 (n + 1)

end A115836

/-! ## A115836.P6530148991862328958

`A080637(n+1)-1`
-/

namespace A115836.P6530148991862328958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080637 (n + 1) - 1

end

end A115836.P6530148991862328958

namespace A115836

/-- `A080637(n+1)-1` -/
def P6530148991862328958.Spec : Prop :=
  ∀ n, P6530148991862328958.a n = A115836 (n + 1)

end A115836

/-! ## A115836.P2020883390059965078

`A277267(n+1)+1+n`
-/

namespace A115836.P2020883390059965078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 (n + 1) + 1 + (n : ℤ)

end

end A115836.P2020883390059965078

namespace A115836

/-- `A277267(n+1)+1+n` -/
def P2020883390059965078.Spec : Prop :=
  ∀ n, P2020883390059965078.a n = A115836 (n + 1)

theorem P2020883390059965078.correct : P2020883390059965078.Spec := by
  intro n
  simp only [A115836, Nat.add_sub_cancel, A115836.P2020883390059965078.a, A115836.P4635970898570071194.a, A007378, A007378.P6355740998360001155.a, A277267, A277267.P1918104767288043109.a, A060973, A060973.P9569280493827899348.a, A279521, A279521.P13549278606039013017.a, A006165, A006165.P7053576809501911375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115836

/-! ## A115836.P16331999878178099419

`A166079(n+3)+n-1`
-/

namespace A115836.P16331999878178099419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (n + 3) + ((n : ℤ) - 1)

end

end A115836.P16331999878178099419

namespace A115836

/-- `A166079(n+3)+n-1` -/
def P16331999878178099419.Spec : Prop :=
  ∀ n, P16331999878178099419.a n = A115836 (n + 1)

end A115836

/-! ## A115836.P7169321304826797742

`∑[char[A206332(n+1)]+1]`
-/

namespace A115836.P7169321304826797742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115836.P7169321304826797742

namespace A115836

/-- `∑[char[A206332(n+1)]+1]` -/
def P7169321304826797742.Spec : Prop :=
  ∀ n, (P7169321304826797742.a n : ℤ) = A115836 (n + 1)

end A115836

/-! ## A115836.P7213979259063369558

`Δ[n²]-A279521(n+1)`
-/

namespace A115836.P7213979259063369558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A279521 (n + 1)

end

end A115836.P7213979259063369558

namespace A115836

/-- `Δ[n²]-A279521(n+1)` -/
def P7213979259063369558.Spec : Prop :=
  ∀ n, P7213979259063369558.a n = A115836 (n + 1)

theorem P7213979259063369558.correct : P7213979259063369558.Spec := by
  intro n
  simp only [A115836, Nat.add_sub_cancel, A115836.P7213979259063369558.f1, A115836.P7213979259063369558.a, A115836.P4635970898570071194.a, A007378, A007378.P6355740998360001155.a, A279521, A279521.P13549278606039013017.a, A006165, A006165.P7053576809501911375.a, A060973, A060973.P9569280493827899348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115836

/-! ## A115836.P692869861923540297

`2*(n+1)-A078881(n+1)`
-/

namespace A115836.P692869861923540297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A078881 (n + 1)

end

end A115836.P692869861923540297

namespace A115836

/-- `2*(n+1)-A078881(n+1)` -/
def P692869861923540297.Spec : Prop :=
  ∀ n, P692869861923540297.a n = A115836 (n + 1)

theorem P692869861923540297.correct : P692869861923540297.Spec := by
  intro n
  simp only [A115836, Nat.add_sub_cancel, A115836.P692869861923540297.a, A115836.P4635970898570071194.a, A007378, A007378.P6355740998360001155.a, A078881, A078881.P16027770372899334795.a, A006165, A006165.P7053576809501911375.a, A060973, A060973.P9569280493827899348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115836

/-! ## A115836.P3168954308981358154

`3*(n+1)-A159615(n+1)`
-/

namespace A115836.P3168954308981358154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A159615 (n + 1)

end

end A115836.P3168954308981358154

namespace A115836

/-- `3*(n+1)-A159615(n+1)` -/
def P3168954308981358154.Spec : Prop :=
  ∀ n, P3168954308981358154.a n = A115836 (n + 1)

end A115836

/-! ## A115836.P16382094059482238554

`A079945(n)-A079944(n)`
-/

namespace A115836.P16382094059482238554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 n - A079944 n

end

end A115836.P16382094059482238554

namespace A115836

/-- `A079945(n)-A079944(n)` -/
def P16382094059482238554.Spec : Prop :=
  ∀ n, P16382094059482238554.a n = A115836 (n + 1)

end A115836

/-! ## A115836.P3202600562159809265

`A079905(n+1)+A057428(n)`
-/

namespace A115836.P3202600562159809265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (n + 1) + A057428 n

end

end A115836.P3202600562159809265

namespace A115836

/-- `A079905(n+1)+A057428(n)` -/
def P3202600562159809265.Spec : Prop :=
  ∀ n, P3202600562159809265.a n = A115836 (n + 1)

end A115836

/-! ## A115836.P14883213876063138083

`A079905(n+1)-A057427(n)`
-/

namespace A115836.P14883213876063138083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (n + 1) - A057427 n

end

end A115836.P14883213876063138083

namespace A115836

/-- `A079905(n+1)-A057427(n)` -/
def P14883213876063138083.Spec : Prop :=
  ∀ n, P14883213876063138083.a n = A115836 (n + 1)

end A115836

/-!
# A115837: Self-describing sequence. The n-th integer of the sequence indicates how many integers of the sequence are strictly < 3n.

The programs for A115837, there is no canonical definition to state claims against.
-/

/-! ## A115837.P17014334790703244323

`A080710(n)%(n+61)`
-/

namespace A115837.P17014334790703244323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080710 n) (n + 61 : ℤ)

end

end A115837.P17014334790703244323

/-! ## A115837.P5321301621183519883

`A080710(n-9*floor(n/10)+n-∑{digits}[n, #])`
-/

namespace A115837.P5321301621183519883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080710 ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋ + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))).toNat

end

end A115837.P5321301621183519883

/-! ## A115837.P10651223830251142039

`A080710(A118759(n))`
-/

namespace A115837.P10651223830251142039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080710 (A118759 n).toNat

end

end A115837.P10651223830251142039

/-! ## A115837.P16988081734123740778

`A080710(n*A178334(n))`
-/

namespace A115837.P16988081734123740778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080710 ((n : ℤ) * A178334 n).toNat

end

end A115837.P16988081734123740778

/-! ## A115837.P10156185802778707053

`A080710(n)^A178334(n)`
-/

namespace A115837.P10156185802778707053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080710 n : ℚ) ^ (A178334 n : ℤ)

end

end A115837.P10156185802778707053

/-! ## A115837.P17657762248547081769

`A080710(lcm(n, A321800(n)))`
-/

namespace A115837.P17657762248547081769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080710 (Int.lcm (n : ℤ) (A321800 n))

end

end A115837.P17657762248547081769

/-! ## A115837.P7593789382122817427

`A080710(and(n, A321800(n)))`
-/

namespace A115837.P7593789382122817427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080710 (Int.land (n : ℤ) (A321800 n)).toNat

end

end A115837.P7593789382122817427

/-! ## A115837.P12095012724061920204

`or(A080710(n), A264668(n))`
-/

namespace A115837.P12095012724061920204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080710 n) (A264668 n)

end

end A115837.P12095012724061920204

/-! ## A115837.P1360721444148349931

`∪[A015980(n), A080710(n)]`
-/

namespace A115837.P1360721444148349931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080710 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A115837.P1360721444148349931

/-!
# A115841: Self-describing sequence. The n-th integer of the sequence indicates how many integers of the sequence are strictly < 7n.

The programs for A115841, there is no canonical definition to state claims against.
-/

/-! ## A115841.P1892544247533345801

`eq[1, A141693(A265519(n+1))]`
-/

namespace A115841.P1892544247533345801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141693 (A265519 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115841.P1892544247533345801

/-! ## A115841.P7728250998643997051

`eq[A006530(A262038(n+3)), A265520(n+1)]`
-/

namespace A115841.P7728250998643997051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A262038 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115841.P7728250998643997051

/-! ## A115841.P14140170298091400843

`eq[A006530(A265569(n+3)), A265520(n+1)]`
-/

namespace A115841.P14140170298091400843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A265569 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115841.P14140170298091400843

/-!
# A115842: Self-describing sequence. The n-th integer of the sequence indicates how many integers of the sequence are strictly < 8n.

The programs for A115842, there is no canonical definition to state claims against.
-/

/-! ## A115842.P14895146165571241937

`eq[A265554(n+1), A319808(n)]`
-/

namespace A115842.P14895146165571241937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115842.P14895146165571241937

/-! ## A115842.P15401760930231688392

`eq[A055956(n), A265554(A265554(n+1))]`
-/

namespace A115842.P15401760930231688392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265554 (A265554 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115842.P15401760930231688392

/-! ## A115842.P18253460358988150072

`A057428(A209970(n))+A043425(n+1)`
-/

namespace A115842.P18253460358988150072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A209970 n).toNat + A043425 (n + 1)

end

end A115842.P18253460358988150072

/-! ## A115842.P5620474312104620372

`A160755(A043425(n+1))`
-/

namespace A115842.P5620474312104620372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A043425 (n + 1)).toNat

end

end A115842.P5620474312104620372

/-!
# A115843: Self-describing sequence. The n-th integer of the sequence indicates how many integers of the sequence are strictly < 9n.

The programs for A115843, there is no canonical definition to state claims against.
-/

/-! ## A115843.P2483231703551378115

`eq[Δ[A265556(n)], A265523(n)]`
-/

namespace A115843.P2483231703551378115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A115843.P2483231703551378115

/-! ## A115843.P3241167284187197306

`eq[Δ[A265557(n)], A265524(n)]`
-/

namespace A115843.P3241167284187197306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265524 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A115843.P3241167284187197306

/-! ## A115843.P6350429564549313943

`eq[2, A029841(A265523(n+1))]`
-/

namespace A115843.P6350429564549313943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029841 (A265523 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115843.P6350429564549313943

/-! ## A115843.P9560076302653960265

`eq[A055958(n), A265556(n+1)]`
-/

namespace A115843.P9560076302653960265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115843.P9560076302653960265

/-! ## A115843.P8866520569213373783

`eq[A265556(n+1), A319747(n)]`
-/

namespace A115843.P8866520569213373783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115843.P8866520569213373783

/-!
# A115844: Self-describing sequence. The n-th integer of the sequence indicates how many integers of the sequence are strictly < 10n.

The programs for A115844, there is no canonical definition to state claims against.
-/

/-! ## A115844.P5406857411603954115

`record[A055483(A165830(n+1))+A004086(n)]`
-/

namespace A115844.P5406857411603954115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A165830 (n + 1)).toNat + A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115844.P5406857411603954115

/-! ## A115844.P16062041565944552603

`record[A004086(A243035(n+1))+A004086(n)]`
-/

namespace A115844.P16062041565944552603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A243035 (n + 1)).toNat + A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115844.P16062041565944552603

/-! ## A115844.P6886475865129512713

`eq[A067453(n+1), A273005(n)]`
-/

namespace A115844.P6886475865129512713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115844.P6886475865129512713

/-! ## A115844.P13879406803430781092

`A000196(A284062(n+1)²-n)`
-/

namespace A115844.P13879406803430781092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A284062 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A115844.P13879406803430781092

/-! ## A115844.P14432637342738873520

`eq[A133500(n), A263633(A263633(n+1))]`
-/

namespace A115844.P14432637342738873520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263633 (A263633 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115844.P14432637342738873520

/-!
# A115845: Numbers n such that there is no bit position where the binary expansions of n and 8n are both 1.

The programs for A115845, the canonical program `A115845.P15250239200828192666` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115845 has offset 1).

The definition of A115845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115845.P12942062370417794463

`record[xor(n, 8*n)]/9`
-/

namespace A115845.P12942062370417794463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (8 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 9

end

end A115845.P12942062370417794463

namespace A115845

/-- `record[xor(n, 8*n)]/9` -/
def P12942062370417794463.Spec : Prop :=
  ∀ n, P12942062370417794463.a n = (A115845 (n + 1) : ℚ)

end A115845

/-! ## A115845.P15250239200828192666

`record[n-and(n, 8*n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115845

/-- `record[n-and(n, 8*n)]` -/
def P15250239200828192666.Spec : Prop :=
  ∀ n, P15250239200828192666.a n = A115845 (n + 1)

theorem P15250239200828192666.correct : P15250239200828192666.Spec := by
  intro n
  simp only [A115845, Nat.add_sub_cancel]

end A115845

/-! ## A115845.P13795965820199374308

`record[-or(8*n, -n)]`
-/

namespace A115845.P13795965820199374308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (8 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115845.P13795965820199374308

namespace A115845

/-- `record[-or(8*n, -n)]` -/
def P13795965820199374308.Spec : Prop :=
  ∀ n, P13795965820199374308.a n = A115845 (n + 1)

end A115845

/-! ## A115845.P5228419702468301052

`record[gcd(n, or(n, 8*n))]`
-/

namespace A115845.P5228419702468301052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor n (8 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115845.P5228419702468301052

namespace A115845

/-- `record[gcd(n, or(n, 8*n))]` -/
def P5228419702468301052.Spec : Prop :=
  ∀ n, (P5228419702468301052.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P8237467108328508650

`record[and(n, -(8*n+1))]`
-/

namespace A115845.P8237467108328508650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(8 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115845.P8237467108328508650

namespace A115845

/-- `record[and(n, -(8*n+1))]` -/
def P8237467108328508650.Spec : Prop :=
  ∀ n, P8237467108328508650.a n = A115845 (n + 1)

end A115845

/-! ## A115845.P9590421279341154721

`eq[0, and(n, 8*n)]`
-/

namespace A115845.P9590421279341154721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P9590421279341154721

namespace A115845

/-- `eq[0, and(n, 8*n)]` -/
def P9590421279341154721.Spec : Prop :=
  ∀ n, (P9590421279341154721.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P16947595351310664121

`lt[and(n, 8*n), 1]`
-/

namespace A115845.P16947595351310664121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (8 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115845.P16947595351310664121

namespace A115845

/-- `lt[and(n, 8*n), 1]` -/
def P16947595351310664121.Spec : Prop :=
  ∀ n, (P16947595351310664121.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P8464071881543544843

`record[gcd(n, A178895(n))]`
-/

namespace A115845.P8464071881543544843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A178895 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115845.P8464071881543544843

namespace A115845

/-- `record[gcd(n, A178895(n))]` -/
def P8464071881543544843.Spec : Prop :=
  ∀ n, (P8464071881543544843.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P7745547230165185032

`eq[A008590(n), A178735(n)]`
-/

namespace A115845.P7745547230165185032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P7745547230165185032

namespace A115845

/-- `eq[A008590(n), A178735(n)]` -/
def P7745547230165185032.Spec : Prop :=
  ∀ n, (P7745547230165185032.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P7826222292204118513

`eq[A008591(n), A178734(n)]`
-/

namespace A115845.P7826222292204118513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178734 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P7826222292204118513

namespace A115845

/-- `eq[A008591(n), A178734(n)]` -/
def P7826222292204118513.Spec : Prop :=
  ∀ n, (P7826222292204118513.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P5135876863650840092

`eq[A008591(n), A178895(n)]`
-/

namespace A115845.P5135876863650840092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P5135876863650840092

namespace A115845

/-- `eq[A008591(n), A178895(n)]` -/
def P5135876863650840092.Spec : Prop :=
  ∀ n, (P5135876863650840092.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P8155339202475466301

`eq[A008591(n), A178896(n)]`
-/

namespace A115845.P8155339202475466301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P8155339202475466301

namespace A115845

/-- `eq[A008591(n), A178896(n)]` -/
def P8155339202475466301.Spec : Prop :=
  ∀ n, (P8155339202475466301.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P12860992558336184668

`eq[A178734(n), A178895(n)]`
-/

namespace A115845.P12860992558336184668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P12860992558336184668

namespace A115845

/-- `eq[A178734(n), A178895(n)]` -/
def P12860992558336184668.Spec : Prop :=
  ∀ n, (P12860992558336184668.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P14076831796501755301

`eq[A178734(n), A178896(n)]`
-/

namespace A115845.P14076831796501755301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P14076831796501755301

namespace A115845

/-- `eq[A178734(n), A178896(n)]` -/
def P14076831796501755301.Spec : Prop :=
  ∀ n, (P14076831796501755301.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P7198419069866251138

`eq[A178895(n), A178896(n)]`
-/

namespace A115845.P7198419069866251138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P7198419069866251138

namespace A115845

/-- `eq[A178895(n), A178896(n)]` -/
def P7198419069866251138.Spec : Prop :=
  ∀ n, (P7198419069866251138.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P14577852815236097428

`eq[1, A022144(and(n, A022144(n)))]`
-/

namespace A115845.P14577852815236097428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (Int.land (n : ℤ) (A022144 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115845.P14577852815236097428

namespace A115845

/-- `eq[1, A022144(and(n, A022144(n)))]` -/
def P14577852815236097428.Spec : Prop :=
  ∀ n, (P14577852815236097428.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P15113818489753131793

`eq[A001316(n)², A134660(3*n)]`
-/

namespace A115845.P15113818489753131793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P15113818489753131793

namespace A115845

/-- `eq[A001316(n)², A134660(3*n)]` -/
def P15113818489753131793.Spec : Prop :=
  ∀ n, (P15113818489753131793.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P9578328102292238431

`eq[2*A000120(n), A036555(3*n)]`
-/

namespace A115845.P9578328102292238431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036555 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P9578328102292238431

namespace A115845

/-- `eq[2*A000120(n), A036555(3*n)]` -/
def P9578328102292238431.Spec : Prop :=
  ∀ n, (P9578328102292238431.a n : ℤ) = A115845 (n + 1)

end A115845

/-! ## A115845.P10444972285989063460

`eq[A001316(2*n)*A001316(4*n), A134660(3*n)]`
-/

namespace A115845.P10444972285989063460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (2 * n) * A001316 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134660 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115845.P10444972285989063460

namespace A115845

/-- `eq[A001316(2*n)*A001316(4*n), A134660(3*n)]` -/
def P10444972285989063460.Spec : Prop :=
  ∀ n, (P10444972285989063460.a n : ℤ) = A115845 (n + 1)

end A115845

/-!
# A115846: Sequence A115845 in binary.

The programs for A115846, there is no canonical definition to state claims against.
-/

/-! ## A115846.P8950129621041711039

`A007088(record[and(n, 9*n)])`
-/

namespace A115846.P8950129621041711039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A115846.P8950129621041711039

/-! ## A115846.P9073929332137265533

`A007088(eq[0, and(n, 8*n)])`
-/

namespace A115846.P9073929332137265533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A115846.P9073929332137265533

/-! ## A115846.P180332531316535314

`A007088(lt[and(n, 8*n), 1])`
-/

namespace A115846.P180332531316535314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (8 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115846.P180332531316535314

/-! ## A115846.P11662158264974696690

`sqrt(A063009(eq[0, and(n, 8*n)]))`
-/

namespace A115846.P11662158264974696690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (8 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℝ)

end

end A115846.P11662158264974696690

/-! ## A115846.P14300483918420725910

`sqrt(A063009(lt[and(n, 8*n), 1]))`
-/

namespace A115846.P14300483918420725910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (8 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℝ)

end

end A115846.P14300483918420725910

/-!
# A115847: Integers i such that 17*i = 17 X i, i.e., 16*i XOR i = 17*i.

The programs for A115847, the canonical program `A115847.P14806839785668101338` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115847 has offset 0).

The definition of A115847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3733 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115847.P14806839785668101338

`eq[0, and(n, 4*4*n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115847

/-- `eq[0, and(n, 4*4*n)]` -/
def P14806839785668101338.Spec : Prop :=
  ∀ n, (P14806839785668101338.a n : ℤ) = A115847 n

theorem P14806839785668101338.correct : P14806839785668101338.Spec := by
  intro n
  simp only [A115847]

end A115847

/-! ## A115847.P8080866830086965904

`lt[and(n, 4*4*n), 1]`
-/

namespace A115847.P8080866830086965904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (4 * (4 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115847.P8080866830086965904

namespace A115847

/-- `lt[and(n, 4*4*n), 1]` -/
def P8080866830086965904.Spec : Prop :=
  ∀ n, (P8080866830086965904.a n : ℤ) = A115847 n

end A115847

/-! ## A115847.P7467145099647920709

`comp[A115849(n+1)]`
-/

namespace A115847.P7467145099647920709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115847.P7467145099647920709

namespace A115847

/-- `comp[A115849(n+1)]` -/
def P7467145099647920709.Spec : Prop :=
  ∀ n, (P7467145099647920709.a n : ℤ) = A115847 n

end A115847

/-! ## A115847.P12725009001811568043

`eq[1, and(n, A008598(n))+1]`
-/

namespace A115847.P12725009001811568043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A008598 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115847.P12725009001811568043

namespace A115847

/-- `eq[1, and(n, A008598(n))+1]` -/
def P12725009001811568043.Spec : Prop :=
  ∀ n, (P12725009001811568043.a n : ℤ) = A115847 n

end A115847

/-! ## A115847.P15143558069701331852

`eq[1, A028310(and(n, 16*n))]`
-/

namespace A115847.P15143558069701331852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.land n (16 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115847.P15143558069701331852

namespace A115847

/-- `eq[1, A028310(and(n, 16*n))]` -/
def P15143558069701331852.Spec : Prop :=
  ∀ n, (P15143558069701331852.a n : ℤ) = A115847 n

end A115847

/-! ## A115847.P18307472138880639416

`record[n/A008620(and(n, 16*n))]`
-/

namespace A115847.P18307472138880639416
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A008620 (Nat.land n (16 * n)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115847.P18307472138880639416

namespace A115847

/-- `record[n/A008620(and(n, 16*n))]` -/
def P18307472138880639416.Spec : Prop :=
  ∀ n, P18307472138880639416.a n = (A115847 n : ℚ)

end A115847

/-!
# A115848: Sequence A115847 in binary.

The programs for A115848, the canonical program `A115848.P4587930052848723337` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115848 has offset 0).

The definition of A115848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115848.P4587930052848723337

`A007088(A115847(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A115848

/-- `A007088(A115847(n))` -/
def P4587930052848723337.Spec : Prop :=
  ∀ n, P4587930052848723337.a n = A115848 n

theorem P4587930052848723337.correct : P4587930052848723337.Spec := by
  intro n
  simp only [A115848]

end A115848

/-! ## A115848.P9116820992141401859

`record[A007088(n)/A008620(and(n, 16*n))]`
-/

namespace A115848.P9116820992141401859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 n : ℚ) / (A008620 (Nat.land n (16 * n)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115848.P9116820992141401859

namespace A115848

/-- `record[A007088(n)/A008620(and(n, 16*n))]` -/
def P9116820992141401859.Spec : Prop :=
  ∀ n, P9116820992141401859.a n = (A115848 n : ℚ)

end A115848

/-! ## A115848.P5727024573919553128

`record[A007088(n)/A028310(and(n, 16*n))]`
-/

namespace A115848.P5727024573919553128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 n : ℚ) / (A028310 (Nat.land n (16 * n)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115848.P5727024573919553128

namespace A115848

/-- `record[A007088(n)/A028310(and(n, 16*n))]` -/
def P5727024573919553128.Spec : Prop :=
  ∀ n, P5727024573919553128.a n = (A115848 n : ℚ)

end A115848

/-! ## A115848.P2740971200341710036

`A185544(2*A115847(n))`
-/

namespace A115848.P2740971200341710036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115847 n).toNat

end

end A115848.P2740971200341710036

namespace A115848

/-- `A185544(2*A115847(n))` -/
def P2740971200341710036.Spec : Prop :=
  ∀ n, P2740971200341710036.a n = A115848 n

end A115848

/-! ## A115848.P124807960501711510

`A185544(A115847(n)+A115847(n))`
-/

namespace A115848.P124807960501711510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A115847 n + A115847 n).toNat

end

end A115848.P124807960501711510

namespace A115848

/-- `A185544(A115847(n)+A115847(n))` -/
def P124807960501711510.Spec : Prop :=
  ∀ n, P124807960501711510.a n = A115848 n

end A115848

/-! ## A115848.P16732282209757401121

`A007089(A005836(A115847(n)+1))`
-/

namespace A115848.P16732282209757401121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005836 (A115847 n + 1).toNat).toNat

end

end A115848.P16732282209757401121

namespace A115848

/-- `A007089(A005836(A115847(n)+1))` -/
def P16732282209757401121.Spec : Prop :=
  ∀ n, P16732282209757401121.a n = A115848 n

end A115848

/-!
# A115849: Integers i such that 17*i is not 17 X i.

The programs for A115849, the canonical program `A115849.P16685866387706139103` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115849 has offset 1).

The definition of A115849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115849.P16685866387706139103

`lt[0, and(n, 16*n)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115849

/-- `lt[0, and(n, 16*n)]` -/
def P16685866387706139103.Spec : Prop :=
  ∀ n, (P16685866387706139103.a n : ℤ) = A115849 (n + 1)

theorem P16685866387706139103.correct : P16685866387706139103.Spec := by
  intro n
  simp only [A115849, Nat.add_sub_cancel]

end A115849

/-! ## A115849.P7511228483311866732

`comp[eq[0, and(n, 16*n)]]`
-/

namespace A115849.P7511228483311866732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (16 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A115849.P7511228483311866732

namespace A115849

/-- `comp[eq[0, and(n, 16*n)]]` -/
def P7511228483311866732.Spec : Prop :=
  ∀ n, (P7511228483311866732.a n : ℤ) = A115849 (n + 1)

end A115849

/-! ## A115849.P6354827879050663684

`comp[n-and(n, 16*n)]`
-/

namespace A115849.P6354827879050663684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (16 * n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115849.P6354827879050663684

namespace A115849

/-- `comp[n-and(n, 16*n)]` -/
def P6354827879050663684.Spec : Prop :=
  ∀ n, (P6354827879050663684.a n : ℤ) = A115849 (n + 1)

end A115849

/-! ## A115849.P2572871285259905850

`comp[abs(or(16*n, -n))]`
-/

namespace A115849.P2572871285259905850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (16 * n : ℤ) (-(n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115849.P2572871285259905850

namespace A115849

/-- `comp[abs(or(16*n, -n))]` -/
def P2572871285259905850.Spec : Prop :=
  ∀ n, (P2572871285259905850.a n : ℤ) = A115849 (n + 1)

end A115849

/-! ## A115849.P16998769767366159441

`eq[0, C(3, and(n, 16*n))]`
-/

namespace A115849.P16998769767366159441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land n (16 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115849.P16998769767366159441

namespace A115849

/-- `eq[0, C(3, and(n, 16*n))]` -/
def P16998769767366159441.Spec : Prop :=
  ∀ n, (P16998769767366159441.a n : ℤ) = A115849 (n + 1)

end A115849

/-! ## A115849.P13573363961286502132

`comp[and(n, -(16*n+1))]`
-/

namespace A115849.P13573363961286502132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(16 * n + 1 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115849.P13573363961286502132

namespace A115849

/-- `comp[and(n, -(16*n+1))]` -/
def P13573363961286502132.Spec : Prop :=
  ∀ n, (P13573363961286502132.a n : ℤ) = A115849 (n + 1)

end A115849

/-! ## A115849.P11440960635932147641

`lt[17*n, or(n, 17*n)]`
-/

namespace A115849.P11440960635932147641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (17 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115849.P11440960635932147641

namespace A115849

/-- `lt[17*n, or(n, 17*n)]` -/
def P11440960635932147641.Spec : Prop :=
  ∀ n, (P11440960635932147641.a n : ℤ) = A115849 (n + 1)

end A115849

/-! ## A115849.P18050045033821051458

`comp[A115847(n)]`
-/

namespace A115849.P18050045033821051458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115847 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A115849.P18050045033821051458

namespace A115849

/-- `comp[A115847(n)]` -/
def P18050045033821051458.Spec : Prop :=
  ∀ n, (P18050045033821051458.a n : ℤ) = A115849 (n + 1)

end A115849

/-! ## A115849.P3934542694019408058

`eq[16, and(16, A348363(n))]`
-/

namespace A115849.P3934542694019408058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 16 (A348363 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115849.P3934542694019408058

namespace A115849

/-- `eq[16, and(16, A348363(n))]` -/
def P3934542694019408058.Spec : Prop :=
  ∀ n, (P3934542694019408058.a n : ℤ) = A115849 (n + 1)

end A115849

/-!
# A115850: Sequence A115849 in binary.

The programs for A115850, there is no canonical definition to state claims against.
-/

/-! ## A115850.P10115692951961720910

`A007088(lt[0, and(n, 16*n)])`
-/

namespace A115850.P10115692951961720910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (16 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A115850.P10115692951961720910

/-! ## A115850.P12725429216913308932

`A007088(comp[record[and(n, 17*n)]])`
-/

namespace A115850.P12725429216913308932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (17 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A115850.P12725429216913308932

/-! ## A115850.P4069512425621976101

`sqrt(A063009(lt[0, and(n, 16*n)]))`
-/

namespace A115850.P4069512425621976101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (16 * n)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063009 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℝ)

end

end A115850.P4069512425621976101

/-! ## A115850.P12499181347912021341

`A007088(comp[eq[0, and(n, 16*n)]])`
-/

namespace A115850.P12499181347912021341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (16 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A115850.P12499181347912021341

/-! ## A115850.P7956853453715813424

`A007088(comp[n-and(n, 16*n)])`
-/

namespace A115850.P7956853453715813424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (16 * n) : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A115850.P7956853453715813424

/-!
# A115851: G.f. x^2*(-1+x+x^2)/((1-x)*(2*x-1)*(x+1)*(x^2+1)).

The programs for A115851, the canonical program `A115851.P17311392507695367030` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115851 has offset 0).

The definition of A115851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115851.P2250449552506553736

`∑[ogf((-x^2+x^3+x^4)/(-1+x+x^2+x^3+2x^4))]`
-/

namespace A115851.P2250449552506553736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1, -1] [1, -1, -1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115851.P2250449552506553736

namespace A115851

/-- `∑[ogf((-x^2+x^3+x^4)/(-1+x+x^2+x^3+2x^4))]` -/
def P2250449552506553736.Spec : Prop :=
  ∀ n, P2250449552506553736.a n = A115851 n

end A115851

/-! ## A115851.P17311392507695367030

`a(n-1)+xor((a(n-2)+n)%2, a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115851

/-- `a(n-1)+xor((a(n-2)+n)%2, a(n-1))` -/
def P17311392507695367030.Spec : Prop :=
  ∀ n, (P17311392507695367030.a n : ℤ) = A115851 n

theorem P17311392507695367030.correct : P17311392507695367030.Spec := by
  intro n
  simp only [A115851]

end A115851

/-! ## A115851.P14188586817489461542

`round(∑[A181586(n)/2])`
-/

namespace A115851.P14188586817489461542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181586 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115851.P14188586817489461542

namespace A115851

/-- `round(∑[A181586(n)/2])` -/
def P14188586817489461542.Spec : Prop :=
  ∀ n, P14188586817489461542.a n = A115851 n

end A115851

/-! ## A115851.P6673693606206165436

`a(n-1)+a(n-1)-A131379(n)` with `a(0)=0`
-/

namespace A115851.P6673693606206165436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) - A131379 n)

end

end A115851.P6673693606206165436

namespace A115851

/-- `a(n-1)+a(n-1)-A131379(n)` -/
def P6673693606206165436.Spec : Prop :=
  ∀ n, P6673693606206165436.a n = A115851 n

end A115851

/-! ## A115851.P1072642079885449193

`A181586(n)+Δ[A002265(n)]`
-/

namespace A115851.P1072642079885449193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 n + (f1 (n + 1) - f1 n)

end

end A115851.P1072642079885449193

namespace A115851

/-- `A181586(n)+Δ[A002265(n)]` -/
def P1072642079885449193.Spec : Prop :=
  ∀ n, P1072642079885449193.a n = A115851 n

end A115851

/-! ## A115851.P10188201163201801480

`A181586(n)+A011765(n+1)`
-/

namespace A115851.P10188201163201801480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 n + A011765 (n + 1)

end

end A115851.P10188201163201801480

namespace A115851

/-- `A181586(n)+A011765(n+1)` -/
def P10188201163201801480.Spec : Prop :=
  ∀ n, P10188201163201801480.a n = A115851 n

end A115851

/-! ## A115851.P1260156111258976050

`A181586(n)+A056594(n+1)*A073089(n+1)`
-/

namespace A115851.P1260156111258976050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 n + A056594 (n + 1) * A073089 (n + 1)

end

end A115851.P1260156111258976050

namespace A115851

/-- `A181586(n)+A056594(n+1)*A073089(n+1)` -/
def P1260156111258976050.Spec : Prop :=
  ∀ n, P1260156111258976050.a n = A115851 n

end A115851

/-! ## A115851.P9916344292400765077

`A181586(n)+A056594(n+1)*A133872(n+1)`
-/

namespace A115851.P9916344292400765077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 n + A056594 (n + 1) * A133872 (n + 1)

end

end A115851.P9916344292400765077

namespace A115851

/-- `A181586(n)+A056594(n+1)*A133872(n+1)` -/
def P9916344292400765077.Spec : Prop :=
  ∀ n, P9916344292400765077.a n = A115851 n

end A115851

/-! ## A115851.P17487491476565080922

`floor((A005578(n)+3)/5)`
-/

namespace A115851.P17487491476565080922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005578 n + 3 : ℚ) / 5⌋

end

end A115851.P17487491476565080922

namespace A115851

/-- `floor((A005578(n)+3)/5)` -/
def P17487491476565080922.Spec : Prop :=
  ∀ n, P17487491476565080922.a n = A115851 n

end A115851

/-! ## A115851.P398085228777720938

`round(xor(A059841(n), A128209(n))/5)`
-/

namespace A115851.P398085228777720938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor (A059841 n) (A128209 n) : ℚ) / 5)

end

end A115851.P398085228777720938

namespace A115851

/-- `round(xor(A059841(n), A128209(n))/5)` -/
def P398085228777720938.Spec : Prop :=
  ∀ n, P398085228777720938.a n = A115851 n

end A115851

/-! ## A115851.P10910223644620608563

`ceil((2^n-2)/15)`
-/

namespace A115851.P10910223644620608563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n : ℤ) - 2 : ℚ) / 15⌉

end

end A115851.P10910223644620608563

namespace A115851

/-- `ceil((2^n-2)/15)` -/
def P10910223644620608563.Spec : Prop :=
  ∀ n, P10910223644620608563.a n = A115851 n

end A115851

/-! ## A115851.P14442914418332597002

`or(floor(n/2)%2, round(2^n/15))`
-/

namespace A115851.P14442914418332597002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod ⌊(n : ℚ) / 2⌋ 2) (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 15))

end

end A115851.P14442914418332597002

namespace A115851

/-- `or(floor(n/2)%2, round(2^n/15))` -/
def P14442914418332597002.Spec : Prop :=
  ∀ n, P14442914418332597002.a n = A115851 n

end A115851

/-! ## A115851.P3111592000698851410

`floor(A267615(n)/15)`
-/

namespace A115851.P3111592000698851410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A267615 n : ℚ) / 15⌋

end

end A115851.P3111592000698851410

namespace A115851

/-- `floor(A267615(n)/15)` -/
def P3111592000698851410.Spec : Prop :=
  ∀ n, P3111592000698851410.a n = A115851 n

end A115851

/-! ## A115851.P13642558311042036851

`round(A140504(n)/15)`
-/

namespace A115851.P13642558311042036851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A140504 n : ℚ) / 15)

end

end A115851.P13642558311042036851

namespace A115851

/-- `round(A140504(n)/15)` -/
def P13642558311042036851.Spec : Prop :=
  ∀ n, P13642558311042036851.a n = A115851 n

end A115851

/-! ## A115851.P5361385616444182708

`round((∑[A000079(n)/10]+1)/3)`
-/

namespace A115851.P5361385616444182708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j + 1) / 3)

end

end A115851.P5361385616444182708

namespace A115851

/-- `round((∑[A000079(n)/10]+1)/3)` -/
def P5361385616444182708.Spec : Prop :=
  ∀ n, P5361385616444182708.a n = A115851 n

end A115851

/-! ## A115851.P3776797151090697718

`round(2^n/15)+and(1, A006002(n))`
-/

namespace A115851.P3776797151090697718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 15) + Int.land 1 (A006002 n)

end

end A115851.P3776797151090697718

namespace A115851

/-- `round(2^n/15)+and(1, A006002(n))` -/
def P3776797151090697718.Spec : Prop :=
  ∀ n, P3776797151090697718.a n = A115851 n

end A115851

/-! ## A115851.P12722627904611426079

`or(round(2^n/15), Δ[round(2^n/15)])`
-/

namespace A115851.P12722627904611426079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 15)) (f1 (n + 1) - f1 n)

end

end A115851.P12722627904611426079

namespace A115851

/-- `or(round(2^n/15), Δ[round(2^n/15)])` -/
def P12722627904611426079.Spec : Prop :=
  ∀ n, P12722627904611426079.a n = A115851 n

end A115851

/-!
# A115852: Dihedral D3 elliptical invariant transform on A000045: a[n+1]/a[n]= Phi^4=((1+Sqrt[5])/2)^4.

The programs for A115852, there is no canonical definition to state claims against.
-/

/-! ## A115852.P5879608084313417423

`round((∑[floor(∑[(-ϕ²)^n])]/2)²)`
-/

namespace A115852.P5879608084313417423
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-(Real.goldenRatio ^ 2)) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 2)

end

end A115852.P5879608084313417423

/-! ## A115852.P9915666282425341851

`floor((Δ[A001654(n)]/2)²)`
-/

namespace A115852.P9915666282425341851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) - f1 n : ℚ) / 2) ^ 2⌋

end

end A115852.P9915666282425341851

/-! ## A115852.P16133740211640294785

`floor((A007598(n+1)/2)²)`
-/

namespace A115852.P16133740211640294785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A007598 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A115852.P16133740211640294785

/-! ## A115852.P17634432759568005218

`floor((A006498(2*n)/2)²)`
-/

namespace A115852.P17634432759568005218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A006498 (2 * n) : ℚ) / 2) ^ 2⌋

end

end A115852.P17634432759568005218

/-! ## A115852.P11464362195865675512

`floor(A000045(n+1)^4/4)`
-/

namespace A115852.P11464362195865675512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 1) ^ 4 : ℚ) / 4⌋

end

end A115852.P11464362195865675512

/-!
# A115853: Numbers where every digit that is present occurs more than once (not necessarily consecutively).

The programs for A115853, the canonical program `A115853.P14934770177720905592` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115853 has offset 1).

The definition of A115853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115853.P14934770177720905592

`lt[A320485(n), 0]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115853

/-- `lt[A320485(n), 0]` -/
def P14934770177720905592.Spec : Prop :=
  ∀ n, (P14934770177720905592.a n : ℤ) = A115853 (n + 1)

theorem P14934770177720905592.correct : P14934770177720905592.Spec := by
  intro n
  simp only [A115853, Nat.add_sub_cancel]

end A115853

/-! ## A115853.P13357728704986869337

`eq[n, A321800(n)]`
-/

namespace A115853.P13357728704986869337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115853.P13357728704986869337

namespace A115853

/-- `eq[n, A321800(n)]` -/
def P13357728704986869337.Spec : Prop :=
  ∀ n, (P13357728704986869337.a n : ℤ) = A115853 (n + 1)

end A115853

/-! ## A115853.P14032345717568548408

`record[A321797(n+11)]`
-/

namespace A115853.P14032345717568548408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115853.P14032345717568548408

namespace A115853

/-- `record[A321797(n+11)]` -/
def P14032345717568548408.Spec : Prop :=
  ∀ n, P14032345717568548408.a n = A115853 (n + 1)

end A115853

/-! ## A115853.P294535625326560789

`lt[n, 2*A321797(n)]`
-/

namespace A115853.P294535625326560789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321797 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115853.P294535625326560789

namespace A115853

/-- `lt[n, 2*A321797(n)]` -/
def P294535625326560789.Spec : Prop :=
  ∀ n, (P294535625326560789.a n : ℤ) = A115853 (n + 1)

end A115853

/-! ## A115853.P17078174545429271451

`lt[n, A321797(n+1)]+1`
-/

namespace A115853.P17078174545429271451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A115853.P17078174545429271451

namespace A115853

/-- `lt[n, A321797(n+1)]+1` -/
def P17078174545429271451.Spec : Prop :=
  ∀ n, (P17078174545429271451.a n : ℤ) = A115853 (n + 1)

end A115853

/-! ## A115853.P3645200948086311092

`eq[0, A268643(A139337(n))]`
-/

namespace A115853.P3645200948086311092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115853.P3645200948086311092

namespace A115853

/-- `eq[0, A268643(A139337(n))]` -/
def P3645200948086311092.Spec : Prop :=
  ∀ n, (P3645200948086311092.a n : ℤ) = A115853 (n + 1)

end A115853

/-! ## A115853.P5859500721120657911

`eq[A028310(n), A321797(n)]`
-/

namespace A115853.P5859500721120657911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115853.P5859500721120657911

namespace A115853

/-- `eq[A028310(n), A321797(n)]` -/
def P5859500721120657911.Spec : Prop :=
  ∀ n, (P5859500721120657911.a n : ℤ) = A115853 (n + 1)

end A115853

/-! ## A115853.P4899499354023746851

`record[A321800(A109303(n+1))]`
-/

namespace A115853.P4899499354023746851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A109303 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115853.P4899499354023746851

namespace A115853

/-- `record[A321800(A109303(n+1))]` -/
def P4899499354023746851.Spec : Prop :=
  ∀ n, P4899499354023746851.a n = A115853 (n + 1)

end A115853

/-! ## A115853.P12966525982700878525

`lt[sqrt(A000217(n)), A321800(n)]`
-/

namespace A115853.P12966525982700878525
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000217 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A115853.P12966525982700878525

namespace A115853

/-- `lt[sqrt(A000217(n)), A321800(n)]` -/
def P12966525982700878525.Spec : Prop :=
  ∀ n, (P12966525982700878525.a n : ℤ) = A115853 (n + 1)

end A115853

/-! ## A115853.P8954785007491281366

`lt[sqrt(A055998(n)), A321800(n)]`
-/

namespace A115853.P8954785007491281366
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055998 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A115853.P8954785007491281366

namespace A115853

/-- `lt[sqrt(A055998(n)), A321800(n)]` -/
def P8954785007491281366.Spec : Prop :=
  ∀ n, (P8954785007491281366.a n : ℤ) = A115853 (n + 1)

end A115853

/-! ## A115853.P9247667544309275690

`eq[A033999(A004273(n)), A320485(n)]`
-/

namespace A115853.P9247667544309275690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004273 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115853.P9247667544309275690

namespace A115853

/-- `eq[A033999(A004273(n)), A320485(n)]` -/
def P9247667544309275690.Spec : Prop :=
  ∀ n, (P9247667544309275690.a n : ℤ) = A115853 (n + 1)

end A115853

/-! ## A115853.P538363408391068006

`eq[A033999(A005818(n+1)), A320485(n)]`
-/

namespace A115853.P538363408391068006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A005818 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115853.P538363408391068006

namespace A115853

/-- `eq[A033999(A005818(n+1)), A320485(n)]` -/
def P538363408391068006.Spec : Prop :=
  ∀ n, (P538363408391068006.a n : ℤ) = A115853 (n + 1)

end A115853

/-! ## A115853.P14066626339112058107

`eq[A008683(A045331(n+1)), A320485(n)]`
-/

namespace A115853.P14066626339112058107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A045331 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115853.P14066626339112058107

namespace A115853

/-- `eq[A008683(A045331(n+1)), A320485(n)]` -/
def P14066626339112058107.Spec : Prop :=
  ∀ n, (P14066626339112058107.a n : ℤ) = A115853 (n + 1)

end A115853

/-!
# A115854: Difference between number of semiprimes <= 10^n and the asymptotic approximation round(10^n*loglog(10^n)/log(10^n)).

The programs for A115854, there is no canonical definition to state claims against.
-/

/-! ## A115854.P6131457418877788980

`A133459(a(n-1)+4)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A115854.P6131457418877788980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A133459 (a (n - 1) + 4).toNat

end

end A115854.P6131457418877788980

/-!
# A115855: Number of partitions of 1 into fractions i/j with 1<=i

The programs for A115855, there is no canonical definition to state claims against.
-/

/-! ## A115855.P15206779004044128516

`A119983(n+1)-1`
-/

namespace A115855.P15206779004044128516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119983 (n + 1) - 1

end

end A115855.P15206779004044128516

/-! ## A115855.P7548693923864590991

`A115856(n)+a(n-1)` with `a(0)=0`
-/

namespace A115855.P7548693923864590991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A115856 n + a (n - 1)

end

end A115855.P7548693923864590991

/-! ## A115855.P17585563882570665280

`∑[A115856(abs(1-n)+1)]-2`
-/

namespace A115855.P17585563882570665280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115856 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A115855.P17585563882570665280

/-! ## A115855.P8391179915949218611

`record[Δ[A119983(A165430(n+1))]]`
-/

namespace A115855.P8391179915949218611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119983 (A165430 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115855.P8391179915949218611

/-! ## A115855.P16538652531510452766

`A153881(n+2)+A119983(n+1)`
-/

namespace A115855.P16538652531510452766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A119983 (n + 1)

end

end A115855.P16538652531510452766

/-!
# A115856: First differences of A115855.

The programs for A115856, there is no canonical definition to state claims against.
-/

/-! ## A115856.P12635078239040653041

`A115855(n+2)-A115855(n+1)`
-/

namespace A115856.P12635078239040653041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115855 (n + 2) - A115855 (n + 1)

end

end A115856.P12635078239040653041

/-! ## A115856.P7214177966658028956

`Δ[A115855(n+1)]`
-/

namespace A115856.P7214177966658028956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115856.P7214177966658028956

/-! ## A115856.P3563682210136136000

`Δ[A119983(n+1)]`
-/

namespace A115856.P3563682210136136000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115856.P3563682210136136000

/-! ## A115856.P10587090584629406565

`Δ[record[A115855(A020986(n))]]`
-/

namespace A115856.P10587090584629406565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115855 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115856.P10587090584629406565

/-! ## A115856.P634826599386495659

`Δ[record[A115855(A028920(n))]]`
-/

namespace A115856.P634826599386495659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115855 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A115856.P634826599386495659

/-!
# A115857: If n is a power of 2, then a(n) = n, otherwise a(n) is the smallest integer m > n, for which there exists an odd number i <= n^3 such that n*i = A048720(m, i), where A048720 is carryless base-2 multiplication.

The programs for A115857, there is no canonical definition to state claims against.
-/

/-! ## A115857.P13548311594706908165

`A006519(n+1)*A115858(A003602(n+1))`
-/

namespace A115857.P13548311594706908165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A115858 (A003602 (n + 1)).toNat

end

end A115857.P13548311594706908165

/-! ## A115857.P604410886622276688

`A065621(n+1)%A250554(A265744(A254698(n+1)))`
-/

namespace A115857.P604410886622276688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065621 (n + 1)) (A250554 (A265744 (A254698 (n + 1)).toNat).toNat)

end

end A115857.P604410886622276688

/-! ## A115857.P13306056241849360174

`A065621(n+1)%A348946(A075247(n+7))`
-/

namespace A115857.P13306056241849360174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065621 (n + 1)) (A348946 (A075247 (n + 7)).toNat)

end

end A115857.P13306056241849360174

/-!
# A115858: Odd terms in A115857.

The programs for A115858, there is no canonical definition to state claims against.
-/

/-! ## A115858.P17318585970358498521

`A115857(Δ[n²])`
-/

namespace A115858.P17318585970358498521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115857 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A115858.P17318585970358498521

/-! ## A115858.P18024891518113389753

`or(1, A115857(2*n+1))`
-/

namespace A115858.P18024891518113389753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115857 (2 * n + 1))

end

end A115858.P18024891518113389753

/-! ## A115858.P5118135667832234415

`A115857((n+1)²-n²)%((n+1)*(n+2)*(n+4)*(n+8)*(n+15)/120)`
-/

namespace A115858.P5118135667832234415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115857 ((n + 1) ^ 2 - n ^ 2)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 4 : ℚ) * ((n + 8 : ℚ) * ((n + 15 : ℚ) / 120))))))

end

end A115858.P5118135667832234415

/-! ## A115858.P9055987270462558626

`A000027(A115857(2*n+1))`
-/

namespace A115858.P9055987270462558626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A115857 (2 * n + 1)).toNat

end

end A115858.P9055987270462558626

/-! ## A115858.P17281061178831931909

`A026741(A115857(n+1+n))`
-/

namespace A115858.P17281061178831931909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A115857 (n + 1 + n)).toNat

end

end A115858.P17281061178831931909

/-! ## A115858.P15764348148223693993

`filter[A115857(n+1), A000035(#)]`
-/

namespace A115858.P15764348148223693993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A115858.P15764348148223693993

/-! ## A115858.P601017788068563768

`filter[A115857(2*n+1), A035263(#)]`
-/

namespace A115858.P601017788068563768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115857 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A115858.P601017788068563768

/-! ## A115858.P15054036763989902245

`filter[A115857(2*n+1), A039982(#)]`
-/

namespace A115858.P15054036763989902245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115857 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A115858.P15054036763989902245

/-! ## A115858.P13066728435140756806

`filter[A115857(2*n+1), A093719(#)]`
-/

namespace A115858.P13066728435140756806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115857 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A115858.P13066728435140756806

/-!
# A115859: Largest natural number m < n, such that there exists nonzero solutions to a cross-domain congruence m*i = n X i, zero if no such integer exists.

The programs for A115859, there is no canonical definition to state claims against.
-/

/-! ## A115859.P10286310432199506777

`2^val(n+1, 2)*A115860(A003602(n+1))`
-/

namespace A115859.P10286310432199506777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A115860 (A003602 (n + 1)).toNat

end

end A115859.P10286310432199506777

/-! ## A115859.P15145067550155700203

`A115860(A003602(n+1))*A135517(n)`
-/

namespace A115859.P15145067550155700203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115860 (A003602 (n + 1)).toNat * A135517 n

end

end A115859.P15145067550155700203

/-! ## A115859.P3399793597820087580

`A003484(n+1)*A115860(A003602(n+1))`
-/

namespace A115859.P3399793597820087580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1) * A115860 (A003602 (n + 1)).toNat

end

end A115859.P3399793597820087580

/-! ## A115859.P13038384382694694638

`A006519(n+1)*A115860(A003602(n+1))`
-/

namespace A115859.P13038384382694694638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A115860 (A003602 (n + 1)).toNat

end

end A115859.P13038384382694694638

/-! ## A115859.P17277965296983472205

`A115860(A003602(n+1))/2*A171977(n+1)`
-/

namespace A115859.P17277965296983472205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115860 (A003602 (n + 1)).toNat : ℚ) / 2 * (A171977 (n + 1) : ℚ)

end

end A115859.P17277965296983472205

/-! ## A115859.P5889847576623216014

`gcd(n+1, A000079(n))*A115860(A003602(n+1))`
-/

namespace A115859.P5889847576623216014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A000079 n) : ℤ) * A115860 (A003602 (n + 1)).toNat

end

end A115859.P5889847576623216014

/-! ## A115859.P17127486454553529738

`A000010(xor(n, n+1)+1)*A115860(A003602(n+1))`
-/

namespace A115859.P17127486454553529738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.xor n (n + 1) + 1) * A115860 (A003602 (n + 1)).toNat

end

end A115859.P17127486454553529738

/-! ## A115859.P12727774938762176149

`A114398(A001511(n+1))*A115860(A003602(n+1))`
-/

namespace A115859.P12727774938762176149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114398 (A001511 (n + 1)).toNat * A115860 (A003602 (n + 1)).toNat

end

end A115859.P12727774938762176149

/-!
# A115860: Terms at odd positions of A115859.

The programs for A115860, there is no canonical definition to state claims against.
-/

/-! ## A115860.P12362929330315169447

`A115859(Δ[n²])`
-/

namespace A115860.P12362929330315169447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115859 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A115860.P12362929330315169447

/-! ## A115860.P9887160370071614155

`A115859(2*n+1)%76`
-/

namespace A115860.P9887160370071614155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115859 (2 * n + 1)) 76

end

end A115860.P9887160370071614155

/-! ## A115860.P1260239387297992992

`A195161(A115859(2*n+1))`
-/

namespace A115860.P1260239387297992992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A115859 (2 * n + 1)).toNat

end

end A115860.P1260239387297992992

/-! ## A115860.P172691601953114587

`A115859(A005408(n))+and(2, char[20])`
-/

namespace A115860.P172691601953114587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115859 (A005408 n).toNat + (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A115860.P172691601953114587

/-! ## A115860.P2289374069476138213

`A199969(A115859(2*n+1)+1)`
-/

namespace A115860.P2289374069476138213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A115859 (2 * n + 1) + 1).toNat

end

end A115860.P2289374069476138213

/-!
# A115861: Number of integers m in range 1 .. n-1, such that there exists at least one such i in range 1 .. n^3 for which m*i = A048720(n, i), where A048720 is carryless base-2 multiplication.

The programs for A115861, there is no canonical definition to state claims against.
-/

/-! ## A115861.P10545857554162021036

`A268372(A267263(2*(n+1))*A335458(2*(n+1)))`
-/

namespace A115861.P10545857554162021036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268372 (A267263 (2 * (n + 1)) * A335458 (2 * (n + 1))).toNat

end

end A115861.P10545857554162021036

/-! ## A115861.P14219121167922246864

`A005651(2*(n+1))%A000120(A000010(n+1))`
-/

namespace A115861.P14219121167922246864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005651 (2 * (n + 1))) (A000120 (A000010 (n + 1)).toNat)

end

end A115861.P14219121167922246864

/-! ## A115861.P14436206029708041671

`A327473(2*n+3)%A000120(Δ[A005728(n)])`
-/

namespace A115861.P14436206029708041671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327473 (2 * n + 3)) (A000120 (f1 (n + 1) - f1 n).toNat)

end

end A115861.P14436206029708041671

/-! ## A115861.P7435436108046836916

`A124760((n-∑[val(n+1, 2)])*A333380(2*n+1))`
-/

namespace A115861.P7435436108046836916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * A333380 (2 * n + 1)).toNat

end

end A115861.P7435436108046836916

/-! ## A115861.P471781704670559186

`A182221(n+1)%A375216(n)`
-/

namespace A115861.P471781704670559186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182221 (n + 1)) (A375216 n)

end

end A115861.P471781704670559186

/-!
# A115862: Triangle where a(1,1)=0; a(n,m) is number of terms among the first (n-1) terms of A115863 that are not coprime to m. A115863(n) is the sum of the terms of the n-th row of A115862.

The programs for A115862, there is no canonical definition to state claims against.
-/

/-! ## A115862.P15455992504991658438

`A237600(A340156(n+2)+1)%3`
-/

namespace A115862.P15455992504991658438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237600 (A340156 (n + 2) + 1).toNat) 3

end

end A115862.P15455992504991658438

/-! ## A115862.P5588901636344112449

`A309004(A005934(n+1))%A013612(n)`
-/

namespace A115862.P5588901636344112449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309004 (A005934 (n + 1)).toNat) (A013612 n)

end

end A115862.P5588901636344112449

/-! ## A115862.P12849313564227986115

`lcm(A005136(A289978(n)), A344339(n))`
-/

namespace A115862.P12849313564227986115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005136 (A289978 n).toNat) (A344339 n)

end

end A115862.P12849313564227986115

/-! ## A115862.P12863241745770316761

`A095827(A225635(n+1))-char[∑[n+1]]`
-/

namespace A115862.P12863241745770316761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (A225635 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A115862.P12863241745770316761

/-! ## A115862.P13472199844576811484

`A327910(A055886(n+1))`
-/

namespace A115862.P13472199844576811484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327910 (A055886 (n + 1)).toNat

end

end A115862.P13472199844576811484

/-!
# A115864: Legendre_P(n,2)*4^n.

The programs for A115864, the canonical program `A115864.P12467619759306786848` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115864 has offset 0).

The definition of A115864 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115864.P12467619759306786848

`2^n*A069835(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115864

/-- `2^n*A069835(n)` -/
def P12467619759306786848.Spec : Prop :=
  ∀ n, P12467619759306786848.a n = A115864 n

theorem P12467619759306786848.correct : P12467619759306786848.Spec := by
  intro n
  simp only [A115864]

end A115864

/-! ## A115864.P12026374564214937340

`2^n*∑[A054122(n)]`
-/

namespace A115864.P12026374564214937340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115864.P12026374564214937340

namespace A115864

/-- `2^n*∑[A054122(n)]` -/
def P12026374564214937340.Spec : Prop :=
  ∀ n, P12026374564214937340.a n = A115864 n

end A115864

/-! ## A115864.P3499602579019758387

`2^n*A299989((n+1)²)`
-/

namespace A115864.P3499602579019758387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A299989 ((n + 1) ^ 2)

end

end A115864.P3499602579019758387

namespace A115864

/-- `2^n*A299989((n+1)²)` -/
def P3499602579019758387.Spec : Prop :=
  ∀ n, P3499602579019758387.a n = A115864 n

end A115864

/-! ## A115864.P3775067747444013854

`2^n*record[A299989((1-n)²)]`
-/

namespace A115864.P3775067747444013854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299989 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115864.P3775067747444013854

namespace A115864

/-- `2^n*record[A299989((1-n)²)]` -/
def P3775067747444013854.Spec : Prop :=
  ∀ n, P3775067747444013854.a n = A115864 n

end A115864

/-! ## A115864.P4179414758246397387

`∑[A054122(n)]*A000079(n)`
-/

namespace A115864.P4179414758246397387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A115864.P4179414758246397387

namespace A115864

/-- `∑[A054122(n)]*A000079(n)` -/
def P4179414758246397387.Spec : Prop :=
  ∀ n, P4179414758246397387.a n = A115864 n

end A115864

/-!
# A115865: a(n) = Legendre_P(n,2)*6^n.

The programs for A115865, the canonical program `A115865.P10903364404270038860` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115865 has offset 0).

The definition of A115865 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069835, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A115865.P10903364404270038860

`3^n*A069835(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115865

/-- `3^n*A069835(n)` -/
def P10903364404270038860.Spec : Prop :=
  ∀ n, P10903364404270038860.a n = A115865 n

theorem P10903364404270038860.correct : P10903364404270038860.Spec := by
  intro n
  simp only [A115865]

end A115865

/-! ## A115865.P4121947014362395971

`∑[A054122(n)]*A000244(n)`
-/

namespace A115865.P4121947014362395971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A115865.P4121947014362395971

namespace A115865

/-- `∑[A054122(n)]*A000244(n)` -/
def P4121947014362395971.Spec : Prop :=
  ∀ n, P4121947014362395971.a n = A115865 n

end A115865

/-! ## A115865.P9878001466554160312

`A069835(n)*A108411(2*n)`
-/

namespace A115865.P9878001466554160312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069835 n * A108411 (2 * n)

end

end A115865.P9878001466554160312

namespace A115865

/-- `A069835(n)*A108411(2*n)` -/
def P9878001466554160312.Spec : Prop :=
  ∀ n, P9878001466554160312.a n = A115865 n

end A115865

/-! ## A115865.P2230751746846113331

`lcm(A000244(n), A069835(A118759(n)))`
-/

namespace A115865.P2230751746846113331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A069835 (A118759 n).toNat)

end

end A115865.P2230751746846113331

namespace A115865

/-- `lcm(A000244(n), A069835(A118759(n)))` -/
def P2230751746846113331.Spec : Prop :=
  ∀ n, (P2230751746846113331.a n : ℤ) = A115865 n

end A115865

/-! ## A115865.P6527088312280779636

`A069835(n)*A120908(n+2)/A008586(n+1)`
-/

namespace A115865.P6527088312280779636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069835 n * A120908 (n + 2) : ℚ) / (A008586 (n + 1) : ℚ)

end

end A115865.P6527088312280779636

namespace A115865

/-- `A069835(n)*A120908(n+2)/A008586(n+1)` -/
def P6527088312280779636.Spec : Prop :=
  ∀ n, P6527088312280779636.a n = (A115865 n : ℚ)

end A115865

/-! ## A115865.P16511091615166504802

`3^n*A081577(∑[4*n])`
-/

namespace A115865.P16511091615166504802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A081577 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115865.P16511091615166504802

namespace A115865

/-- `3^n*A081577(∑[4*n])` -/
def P16511091615166504802.Spec : Prop :=
  ∀ n, P16511091615166504802.a n = A115865 n

end A115865

/-! ## A115865.P16566303170068937736

`lcm(A000244(n)², A069835(n))/A000244(n)`
-/

namespace A115865.P16566303170068937736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000244 n ^ 2) (A069835 n) : ℚ) / (A000244 n : ℚ)

end

end A115865.P16566303170068937736

namespace A115865

/-- `lcm(A000244(n)², A069835(n))/A000244(n)` -/
def P16566303170068937736.Spec : Prop :=
  ∀ n, P16566303170068937736.a n = (A115865 n : ℚ)

end A115865

/-!
# A115866: a(n) = g(n,n,n) where g(a, b, c) is defined as follows: if a = 0 or b = 0 or c = 0 then return 1 otherwise return g(a, b, c-1) + g(a, b-1, c) + g(a-1, b, c) + g(a, b-1, c-1) + g(a-1, b, c-1) + g(a-1, b-1, c) + g(a-1, b-1, c-1).

The programs for A115866, there is no canonical definition to state claims against.
-/

/-! ## A115866.P574122443062493667

`A263159(∑[n+3]+n+3)`
-/

namespace A115866.P574122443062493667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A115866.P574122443062493667

/-! ## A115866.P10824416591718381012

`record[A263159(eq[1, A210472(n+2)])]`
-/

namespace A115866.P10824416591718381012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210472 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263159 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115866.P10824416591718381012

/-! ## A115866.P1851848305927283513

`record[A263159(n)^A132013(n+3)]`
-/

namespace A115866.P1851848305927283513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263159 n : ℚ) ^ (A132013 (n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115866.P1851848305927283513

/-! ## A115866.P2829512157909945717

`record[gcd(A225094(n+2), A263159(n))]`
-/

namespace A115866.P2829512157909945717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A225094 (n + 2)) (A263159 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115866.P2829512157909945717

/-!
# A115867: Number of throws of a fair die to reach a probability of at least 0.5 (50%) to have at least one sequence of n consecutive appearances of a predefined, fixed face.

The programs for A115867, there is no canonical definition to state claims against.
-/

/-! ## A115867.P11494434795496296952

`A325128(A198849(n))+1`
-/

namespace A115867.P11494434795496296952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (A198849 n).toNat + 1

end

end A115867.P11494434795496296952

/-!
# A115868: Invariants for a hidden action of S_(n+1) on Cayley trees with n vertices.

The programs for A115868, there is no canonical definition to state claims against.
-/

/-! ## A115868.P5825143809476991876

`A000055(n+1)+A051573(n+1)-A000081(n+1)`
-/

namespace A115868.P5825143809476991876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1) + (A051573 (n + 1) - A000081 (n + 1))

end

end A115868.P5825143809476991876

/-! ## A115868.P9672196027193566853

`A368728(A363251(n))`
-/

namespace A115868.P9672196027193566853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368728 (A363251 n).toNat

end

end A115868.P9672196027193566853

/-! ## A115868.P7471657570004618458

`A275451(A000672(n))+A000672(n)`
-/

namespace A115868.P7471657570004618458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275451 (A000672 n).toNat + A000672 n

end

end A115868.P7471657570004618458

/-! ## A115868.P6215706694841852908

`ceil(A318099(n)/(p?[round(8*n/7)]+n))`
-/

namespace A115868.P6215706694841852908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318099 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ) : ℚ)⌉

end

end A115868.P6215706694841852908

/-! ## A115868.P4941715631140908401

`A347520(A000672(n))`
-/

namespace A115868.P4941715631140908401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A000672 n).toNat

end

end A115868.P4941715631140908401

/-!
# A115869: Smallest natural number m < n, such that there exists nonzero solutions to a cross-domain congruence m*i = n X i, zero if no such integer exists.

The programs for A115869, there is no canonical definition to state claims against.
-/

/-! ## A115869.P2338068980750954916

`2^val(n+1, 2)*A115870(A003602(n+1))`
-/

namespace A115869.P2338068980750954916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A115870 (A003602 (n + 1)).toNat

end

end A115869.P2338068980750954916

/-! ## A115869.P2468868228934940718

`A115870(A003602(n+1))*A135517(n)`
-/

namespace A115869.P2468868228934940718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115870 (A003602 (n + 1)).toNat * A135517 n

end

end A115869.P2468868228934940718

/-! ## A115869.P4809376360565310663

`A003484(n+1)*A115870(A003602(n+1))`
-/

namespace A115869.P4809376360565310663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1) * A115870 (A003602 (n + 1)).toNat

end

end A115869.P4809376360565310663

/-! ## A115869.P16986104219999199127

`A006519(n+1)*A115870(A003602(n+1))`
-/

namespace A115869.P16986104219999199127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A115870 (A003602 (n + 1)).toNat

end

end A115869.P16986104219999199127

/-! ## A115869.P12327049344118176591

`A046699(xor(n, n+1)+1)*A115870(A003602(n+1))`
-/

namespace A115869.P12327049344118176591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (Nat.xor n (n + 1) + 1) * A115870 (A003602 (n + 1)).toNat

end

end A115869.P12327049344118176591

/-!
# A115870: Terms at odd positions of A115869.

The programs for A115870, there is no canonical definition to state claims against.
-/

/-! ## A115870.P5944999629273124884

`A115869(Δ[n²])`
-/

namespace A115870.P5944999629273124884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115869 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A115870.P5944999629273124884

/-! ## A115870.P18163212339900708150

`A115869(2*n+1)%66`
-/

namespace A115870.P18163212339900708150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115869 (2 * n + 1)) 66

end

end A115870.P18163212339900708150

/-! ## A115870.P4890147604536252567

`A026741(A115869(comp[2*n]))`
-/

namespace A115870.P4890147604536252567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A115869 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A115870.P4890147604536252567

/-! ## A115870.P15990366873029732281

`A181983(A115869(2*n+1))`
-/

namespace A115870.P15990366873029732281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A115869 (2 * n + 1)).toNat

end

end A115870.P15990366873029732281

/-! ## A115870.P14449351589090223688

`A026741(2*A115869(2*n+1))`
-/

namespace A115870.P14449351589090223688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A115869 (2 * n + 1)).toNat

end

end A115870.P14449351589090223688

/-!
# A115872: Square array where row n gives all solutions k > 0 to the cross-domain congruence n*k = A048720(A065621(n),k).

The programs for A115872, there is no canonical definition to state claims against.
-/

/-! ## A115872.P7756908447053914931

`A114388(∑[char[∑[n]]]²-n)`
-/

namespace A115872.P7756908447053914931
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114388 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A115872.P7756908447053914931

/-! ## A115872.P7229648874733499679

`A114388(A038722(n+1))%64`
-/

namespace A115872.P7229648874733499679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114388 (A038722 (n + 1)).toNat) 64

end

end A115872.P7229648874733499679

/-! ## A115872.P9384647005558810626

`gcd(A000038(n), A114388(A038722(n+1)))`
-/

namespace A115872.P9384647005558810626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114388 (A038722 (n + 1)).toNat)

end

end A115872.P9384647005558810626

/-! ## A115872.P9475495552064120386

`lcm(A033999(n), A114388(A038722(n+1)))`
-/

namespace A115872.P9475495552064120386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A114388 (A038722 (n + 1)).toNat)

end

end A115872.P9475495552064120386

/-! ## A115872.P9037654148337239470

`A057427(n+2)*A114388(A038722(n+1))`
-/

namespace A115872.P9037654148337239470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A114388 (A038722 (n + 1)).toNat

end

end A115872.P9037654148337239470

/-! ## A115872.P13577393370461314730

`A033999(2*n)*A114388(A038722(n+1))`
-/

namespace A115872.P13577393370461314730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A114388 (A038722 (n + 1)).toNat

end

end A115872.P13577393370461314730

/-! ## A115872.P9766813340537152790

`A114388(A038722(n+1))*A211666(n+4)`
-/

namespace A115872.P9766813340537152790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114388 (A038722 (n + 1)).toNat * A211666 (n + 4)

end

end A115872.P9766813340537152790

/-! ## A115872.P11000744667520375177

`A114388(A038722(n+1))+and(2, A000005(n+1)²)`
-/

namespace A115872.P11000744667520375177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114388 (A038722 (n + 1)).toNat + Int.land 2 (A000005 (n + 1) ^ 2)

end

end A115872.P11000744667520375177

/-! ## A115872.P5581230691770184070

`A020639(2*(n+1))+A114388(A038722(n+1))-2`
-/

namespace A115872.P5581230691770184070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A114388 (A038722 (n + 1)).toNat - 2)

end

end A115872.P5581230691770184070

/-! ## A115872.P12859475950503982119

`A000045(gcd(n+1, n+3))*A114388(A038722(n+1))`
-/

namespace A115872.P12859475950503982119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd (n + 1) (n + 3)) * A114388 (A038722 (n + 1)).toNat

end

end A115872.P12859475950503982119

/-!
# A115873: The least k >= 1 for which A048720(A065621(n),k) = n*k.

The programs for A115873, there is no canonical definition to state claims against.
-/

/-! ## A115873.P2016093663027141140

`2*(n+1)-A391587(n+1)`
-/

namespace A115873.P2016093663027141140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A391587 (n + 1)

end

end A115873.P2016093663027141140

/-! ## A115873.P7897896955319157084

`A003817(n+1)-A391589(n+1)`
-/

namespace A115873.P7897896955319157084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) - A391589 (n + 1)

end

end A115873.P7897896955319157084

/-! ## A115873.P14087003668584273170

`A115872(∑[n+1])`
-/

namespace A115873.P14087003668584273170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115872 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115873.P14087003668584273170

/-! ## A115873.P3281332152989844943

`or(1, A115872(∑[Δ[n²]-n]))`
-/

namespace A115873.P3281332152989844943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A115873.P3281332152989844943

/-! ## A115873.P13952510812270131984

`xor(1, A115872(C(n+2, 2)))+1`
-/

namespace A115873.P13952510812270131984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A115872 (Nat.choose (n + 2) 2)) + 1

end

end A115873.P13952510812270131984

/-! ## A115873.P1646073025745216009

`A000027(A115872(C(n+2, 2)))`
-/

namespace A115873.P1646073025745216009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A115872 (Nat.choose (n + 2) 2)).toNat

end

end A115873.P1646073025745216009

/-! ## A115873.P4545370058526543803

`A000027(A115872(∑[Δ[n²]-n]))`
-/

namespace A115873.P4545370058526543803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A115872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A115873.P4545370058526543803

/-! ## A115873.P9004548397279724405

`or(1, A115872(A179865(n+2))-1)`
-/

namespace A115873.P9004548397279724405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A115872 (A179865 (n + 2)).toNat - 1)

end

end A115873.P9004548397279724405

/-! ## A115873.P3741380689744341921

`lcm((-1)^n, A115872(A000217(n+1)))`
-/

namespace A115873.P3741380689744341921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A115872 (A000217 (n + 1)).toNat)

end

end A115873.P3741380689744341921

/-! ## A115873.P18265065867156040623

`A004525(2*A115872(∑[Δ[n²]-n]))`
-/

namespace A115873.P18265065867156040623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A115872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A115873.P18265065867156040623

/-! ## A115873.P15239259604371621193

`A004526(2*A115872(∑[Δ[n²]-n]))`
-/

namespace A115873.P15239259604371621193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A115872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A115873.P15239259604371621193

/-! ## A115873.P5863789626895374632

`A002264(3*A115872(∑[Δ[n²]-n]))`
-/

namespace A115873.P5863789626895374632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A115872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A115873.P5863789626895374632

/-!
# A115874: Integers i such that 19*i = 55 X i.

The programs for A115874, there is no canonical definition to state claims against.
-/

/-! ## A115874.P17360376330453637352

`lt[A277314(n), A277314(A255298(n))]`
-/

namespace A115874.P17360376330453637352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (A255298 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115874.P17360376330453637352

/-! ## A115874.P13334196049160034919

`eq[1, A008954(A072272(n))]`
-/

namespace A115874.P13334196049160034919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008954 (A072272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115874.P13334196049160034919

/-! ## A115874.P7494172867091534132

`lt[0, A353370(A255298(n))]`
-/

namespace A115874.P7494172867091534132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353370 (A255298 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A115874.P7494172867091534132

/-!
# A115875: Sequence A115874 in binary.

The programs for A115875, there is no canonical definition to state claims against.
-/

/-! ## A115875.P6375577015976215671

`A007088(A115874(n+1))`
-/

namespace A115875.P6375577015976215671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115874 (n + 1)).toNat

end

end A115875.P6375577015976215671

/-! ## A115875.P9438557539697543022

`A185544(2*A115874(n+1))`
-/

namespace A115875.P9438557539697543022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115874 (n + 1)).toNat

end

end A115875.P9438557539697543022

/-!
# A115876: Integers i such that 41*i = 105 X i.

The programs for A115876, there is no canonical definition to state claims against.
-/

/-! ## A115876.P520771998456122844

`∩[A391860(n+1), A115815(n)]`
-/

namespace A115876.P520771998456122844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115876.P520771998456122844

/-! ## A115876.P9418127641102288696

`A025480(7*2^n)`
-/

namespace A115876.P9418127641102288696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (7 * 2 ^ n)

end

end A115876.P9418127641102288696

/-! ## A115876.P2115564991278662727

`A142150(7*2^n)`
-/

namespace A115876.P2115564991278662727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (7 * 2 ^ n)

end

end A115876.P2115564991278662727

/-! ## A115876.P1212057999622392017

`A166514(7*2^n)`
-/

namespace A115876.P1212057999622392017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (7 * 2 ^ n)

end

end A115876.P1212057999622392017

/-! ## A115876.P8745138923303197035

`7*A252756(2^n)`
-/

namespace A115876.P8745138923303197035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A252756 (2 ^ n)

end

end A115876.P8745138923303197035

/-!
# A115877: Sequence A115876 in binary.

The programs for A115877, there is no canonical definition to state claims against.
-/

/-! ## A115877.P13897966962604521048

`A007088(A115876(n))`
-/

namespace A115877.P13897966962604521048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A115876 n).toNat

end

end A115877.P13897966962604521048

/-! ## A115877.P7410499185924128205

`A185544(2*A115876(n))`
-/

namespace A115877.P7410499185924128205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A115876 n).toNat

end

end A115877.P7410499185924128205

/-! ## A115877.P2588144016754523422

`A185544(7*and(-2, 2^n))`
-/

namespace A115877.P2588144016754523422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (7 * Int.land (-2) (2 ^ n : ℤ)).toNat

end

end A115877.P2588144016754523422

/-! ## A115877.P15584937019301739249

`A185544(14*floor(2^(n-1)))`
-/

namespace A115877.P15584937019301739249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (14 * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋).toNat

end

end A115877.P15584937019301739249

/-! ## A115877.P3561340393297279246

`A007088(A025480(7*2^n))`
-/

namespace A115877.P3561340393297279246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A025480 (7 * 2 ^ n)).toNat

end

end A115877.P3561340393297279246

/-!
# A115878: a(n) is the number of positive solutions of the Diophantine equation x^2 = y(y+n).

The programs for A115878, the canonical program `A115878.P7524570473930013961` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115878 has offset 1).

The definition of A115878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115878.P3187016347287892431

`A176835(n+1)-1`
-/

namespace A115878.P3187016347287892431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176835 (n + 1) - 1

end

end A115878.P3187016347287892431

namespace A115878

/-- `A176835(n+1)-1` -/
def P3187016347287892431.Spec : Prop :=
  ∀ n, P3187016347287892431.a n = A115878 (n + 1)

theorem P3187016347287892431.correct : P3187016347287892431.Spec := by
  intro n
  simp only [A115878, Nat.add_sub_cancel, A115878.P3187016347287892431.a, A115878.P7524570473930013961.f1, A115878.P7524570473930013961.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A176835, A176835.P11267763139736940378.a, A024361, A024361.P1146025692209475519.a, A004526, A004526.P10084182425416171735.a, A317528, A317528.P12745314278989265988.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P14010432101562150871.a, A034444, A034444.P6574915864346323298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A115878

/-! ## A115878.P7524570473930013961

`A046079(gcd(n+1, lcm(2, ∑[n])))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A115878

/-- `A046079(gcd(n+1, lcm(2, ∑[n])))` -/
def P7524570473930013961.Spec : Prop :=
  ∀ n, P7524570473930013961.a n = A115878 (n + 1)

theorem P7524570473930013961.correct : P7524570473930013961.Spec := by
  intro n
  simp only [A115878, Nat.add_sub_cancel]

end A115878

/-! ## A115878.P8698308642076261358

`A046079(floor(n/(n%2+1))+1)`
-/

namespace A115878.P8698308642076261358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

end

end A115878.P8698308642076261358

namespace A115878

/-- `A046079(floor(n/(n%2+1))+1)` -/
def P8698308642076261358.Spec : Prop :=
  ∀ n, P8698308642076261358.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P7661928016751318037

`A046079((∑[n]-1)%(n+1)+1)`
-/

namespace A115878.P7661928016751318037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A115878.P7661928016751318037

namespace A115878

/-- `A046079((∑[n]-1)%(n+1)+1)` -/
def P7661928016751318037.Spec : Prop :=
  ∀ n, P7661928016751318037.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P4748396276095558602

`A046079((n+1)/(or(1, 1-n)+n))`
-/

namespace A115878.P4748396276095558602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ) : ℚ))).toNat

end

end A115878.P4748396276095558602

namespace A115878

/-- `A046079((n+1)/(or(1, 1-n)+n))` -/
def P4748396276095558602.Spec : Prop :=
  ∀ n, P4748396276095558602.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P13664605979596988537

`A046079(lcm((n+1)/∏{p}[n+1, #], (n+1)/and(n+1, -(n+1))))`
-/

namespace A115878.P13664605979596988537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))))

end

end A115878.P13664605979596988537

namespace A115878

/-- `A046079(lcm((n+1)/∏{p}[n+1, #], (n+1)/and(n+1, -(n+1))))` -/
def P13664605979596988537.Spec : Prop :=
  ∀ n, P13664605979596988537.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P10855451914798311714

`A046079(A026741(n+1))`
-/

namespace A115878.P10855451914798311714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A026741 (n + 1)).toNat

end

end A115878.P10855451914798311714

namespace A115878

/-- `A046079(A026741(n+1))` -/
def P10855451914798311714.Spec : Prop :=
  ∀ n, P10855451914798311714.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P3026904811191485438

`A046079(A062828(n+1))`
-/

namespace A115878.P3026904811191485438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A062828 (n + 1)).toNat

end

end A115878.P3026904811191485438

namespace A115878

/-- `A046079(A062828(n+1))` -/
def P3026904811191485438.Spec : Prop :=
  ∀ n, P3026904811191485438.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P1190046446894394705

`A063647(A060819(n+1))`
-/

namespace A115878.P1190046446894394705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A060819 (n + 1)).toNat

end

end A115878.P1190046446894394705

namespace A115878

/-- `A063647(A060819(n+1))` -/
def P1190046446894394705.Spec : Prop :=
  ∀ n, P1190046446894394705.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P10888422559660168353

`A023443(A176835(n+1))`
-/

namespace A115878.P10888422559660168353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A176835 (n + 1)).toNat

end

end A115878.P10888422559660168353

namespace A115878

/-- `A023443(A176835(n+1))` -/
def P10888422559660168353.Spec : Prop :=
  ∀ n, P10888422559660168353.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P1857565623851363529

`A046079(A186646(n+1))`
-/

namespace A115878.P1857565623851363529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A186646 (n + 1)).toNat

end

end A115878.P1857565623851363529

namespace A115878

/-- `A046079(A186646(n+1))` -/
def P1857565623851363529.Spec : Prop :=
  ∀ n, P1857565623851363529.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P18289380048088981007

`A046079(2*A060819(n+1))`
-/

namespace A115878.P18289380048088981007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (2 * A060819 (n + 1)).toNat

end

end A115878.P18289380048088981007

namespace A115878

/-- `A046079(2*A060819(n+1))` -/
def P18289380048088981007.Spec : Prop :=
  ∀ n, P18289380048088981007.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P13429589543536808425

`A065423(2*A176835(n+1))`
-/

namespace A115878.P13429589543536808425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A176835 (n + 1)).toNat

end

end A115878.P13429589543536808425

namespace A115878

/-- `A065423(2*A176835(n+1))` -/
def P13429589543536808425.Spec : Prop :=
  ∀ n, P13429589543536808425.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P7919860016926702592

`∑{d}[A026741(n+1), A024361(#)]`
-/

namespace A115878.P7919860016926702592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A024361 d

end

end A115878.P7919860016926702592

namespace A115878

/-- `∑{d}[A026741(n+1), A024361(#)]` -/
def P7919860016926702592.Spec : Prop :=
  ∀ n, P7919860016926702592.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P3844069071994203319

`∑{d}[n+1, A008966(#)*A100073((n+1)/#)]`
-/

namespace A115878.P3844069071994203319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A100073 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A115878.P3844069071994203319

namespace A115878

/-- `∑{d}[n+1, A008966(#)*A100073((n+1)/#)]` -/
def P3844069071994203319.Spec : Prop :=
  ∀ n, P3844069071994203319.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P2098764920354393802

`A046079(A064680(n+1))`
-/

namespace A115878.P2098764920354393802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A064680 (n + 1)).toNat

end

end A115878.P2098764920354393802

namespace A115878

/-- `A046079(A064680(n+1))` -/
def P2098764920354393802.Spec : Prop :=
  ∀ n, P2098764920354393802.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P3873671748052744810

`A046079(A225975(n+1))`
-/

namespace A115878.P3873671748052744810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A225975 (n + 1)).toNat

end

end A115878.P3873671748052744810

namespace A115878

/-- `A046079(A225975(n+1))` -/
def P3873671748052744810.Spec : Prop :=
  ∀ n, P3873671748052744810.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P17152531446555865936

`∑{d}[A064680(n+1), A024361(#)]`
-/

namespace A115878.P17152531446555865936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A024361 d

end

end A115878.P17152531446555865936

namespace A115878

/-- `∑{d}[A064680(n+1), A024361(#)]` -/
def P17152531446555865936.Spec : Prop :=
  ∀ n, P17152531446555865936.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P9973785417843093382

`A117010(n+1)%A176835(n+1)`
-/

namespace A115878.P9973785417843093382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A176835 (n + 1))

end

end A115878.P9973785417843093382

namespace A115878

/-- `A117010(n+1)%A176835(n+1)` -/
def P9973785417843093382.Spec : Prop :=
  ∀ n, P9973785417843093382.a n = A115878 (n + 1)

end A115878

/-! ## A115878.P8869468712072797245

`A083800(n+1)%A176835(n+1)`
-/

namespace A115878.P8869468712072797245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A176835 (n + 1))

end

end A115878.P8869468712072797245

namespace A115878

/-- `A083800(n+1)%A176835(n+1)` -/
def P8869468712072797245.Spec : Prop :=
  ∀ n, P8869468712072797245.a n = A115878 (n + 1)

end A115878

/-!
# A115879: a(n) is the least positive x satisfying the Diophantine equation x^2=y(y+n). a(n)=0 if there are no solutions.

The programs for A115879, there is no canonical definition to state claims against.
-/

/-! ## A115879.P3760766140354688809

`sqrt((A067721(n+1)+n+1)*A067721(n+1))`
-/

namespace A115879.P3760766140354688809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A067721 (n + 1) + (n + 1 : ℤ)) * A067721 (n + 1) : ℝ)

end

end A115879.P3760766140354688809

/-! ## A115879.P13069942637992683477

`floor(((n+1)*lcm(4, n+1)/4-1)/4)%A006530(A058967(n+3))`
-/

namespace A115879.P13069942637992683477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊((n + 1 : ℚ) * ((Nat.lcm 4 (n + 1) : ℚ) / 4) - 1) / 4⌋ (A006530 (A058967 (n + 3)).toNat)

end

end A115879.P13069942637992683477

/-! ## A115879.P17249053320812498828

`A115880(n+1)%A006530(A058967(n+3))`
-/

namespace A115879.P17249053320812498828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115880 (n + 1)) (A006530 (A058967 (n + 3)).toNat)

end

end A115879.P17249053320812498828

/-! ## A115879.P16388804643732114540

`A360692(A147685(n+1))%A006530(A058967(n+3))`
-/

namespace A115879.P16388804643732114540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360692 (A147685 (n + 1)).toNat) (A006530 (A058967 (n + 3)).toNat)

end

end A115879.P16388804643732114540

/-! ## A115879.P18414608337195365363

`A360692(A236283(n+1))%A006530(A058967(n+3))`
-/

namespace A115879.P18414608337195365363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360692 (A236283 (n + 1)).toNat) (A006530 (A058967 (n + 3)).toNat)

end

end A115879.P18414608337195365363

/-!
# A115880: Largest positive x satisfying the Diophantine equation x^2 = y*(y+n), a(n)=0 if there are no solutions.

The programs for A115880, the canonical program `A115880.P18443925606698590040` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115880 has offset 1).

The definition of A115880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115880.P18443925606698590040

`floor(((n+1)*lcm(4, n+1)/4-1)/4)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A115880

/-- `floor(((n+1)*lcm(4, n+1)/4-1)/4)` -/
def P18443925606698590040.Spec : Prop :=
  ∀ n, P18443925606698590040.a n = A115880 (n + 1)

theorem P18443925606698590040.correct : P18443925606698590040.Spec := by
  intro n
  simp only [A115880, Nat.add_sub_cancel]

end A115880

/-! ## A115880.P15752388825499319485

`A115881(n+1)+A004524(A004442(n))`
-/

namespace A115880.P15752388825499319485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115881 (n + 1) + A004524 (A004442 n).toNat

end

end A115880.P15752388825499319485

namespace A115880

/-- `A115881(n+1)+A004524(A004442(n))` -/
def P15752388825499319485.Spec : Prop :=
  ∀ n, P15752388825499319485.a n = A115880 (n + 1)

theorem P15752388825499319485.correct : P15752388825499319485.Spec := by
  intro n
  simp only [A115880, Nat.add_sub_cancel, A115880.P15752388825499319485.a, A115880.P18443925606698590040.a, A004442, A004442.P2439415777187857398.a, A004524, A004524.P8943215836771390324.a, A115881, A115881.P4143255658260624620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A115880

/-! ## A115880.P16925390049866421490

`A103391(A103391((n+1)²+3)+1)-3`
-/

namespace A115880.P16925390049866421490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A103391 ((n + 1) ^ 2 + 3) + 1).toNat - 3

end

end A115880.P16925390049866421490

namespace A115880

/-- `A103391(A103391((n+1)²+3)+1)-3` -/
def P16925390049866421490.Spec : Prop :=
  ∀ n, P16925390049866421490.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P3465818001217753049

`A060819(∑[A129756(n)])-1`
-/

namespace A115880.P3465818001217753049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A115880.P3465818001217753049

namespace A115880

/-- `A060819(∑[A129756(n)])-1` -/
def P3465818001217753049.Spec : Prop :=
  ∀ n, P3465818001217753049.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P14119631167816543151

`A065423(A026741(∑[(or(3, n)-1)/2]))`
-/

namespace A115880.P14119631167816543151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 n : ℤ) - 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A026741 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A115880.P14119631167816543151

namespace A115880

/-- `A065423(A026741(∑[(or(3, n)-1)/2]))` -/
def P14119631167816543151.Spec : Prop :=
  ∀ n, P14119631167816543151.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P7793014074675719220

`A360692(A147685(n+1))`
-/

namespace A115880.P7793014074675719220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360692 (A147685 (n + 1)).toNat

end

end A115880.P7793014074675719220

namespace A115880

/-- `A360692(A147685(n+1))` -/
def P7793014074675719220.Spec : Prop :=
  ∀ n, P7793014074675719220.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P4281312506753450336

`A065423(A225975(∑[(or(3, n)-1)/2]))`
-/

namespace A115880.P4281312506753450336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 n : ℤ) - 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A225975 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A115880.P4281312506753450336

namespace A115880

/-- `A065423(A225975(∑[(or(3, n)-1)/2]))` -/
def P4281312506753450336.Spec : Prop :=
  ∀ n, P4281312506753450336.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P16382174451937831214

`A360692(A236283(n+1))`
-/

namespace A115880.P16382174451937831214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360692 (A236283 (n + 1)).toNat

end

end A115880.P16382174451937831214

namespace A115880

/-- `A360692(A236283(n+1))` -/
def P16382174451937831214.Spec : Prop :=
  ∀ n, P16382174451937831214.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P2396448151133821640

`A004526(A225058(∑[or(1, n)]))`
-/

namespace A115880.P2396448151133821640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A225058 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A115880.P2396448151133821640

namespace A115880

/-- `A004526(A225058(∑[or(1, n)]))` -/
def P2396448151133821640.Spec : Prop :=
  ∀ n, P2396448151133821640.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P6062871322937717617

`A025480(A052938(n²)+n+1)-1`
-/

namespace A115880.P6062871322937717617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A052938 (n ^ 2) + (n + 1 : ℤ)).toNat - 1

end

end A115880.P6062871322937717617

namespace A115880

/-- `A025480(A052938(n²)+n+1)-1` -/
def P6062871322937717617.Spec : Prop :=
  ∀ n, P6062871322937717617.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P3839867069990248125

`A360692(A360692((n+1)²)+1)`
-/

namespace A115880.P3839867069990248125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360692 (A360692 ((n + 1) ^ 2) + 1).toNat

end

end A115880.P3839867069990248125

namespace A115880

/-- `A360692(A360692((n+1)²)+1)` -/
def P3839867069990248125.Spec : Prop :=
  ∀ n, P3839867069990248125.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P11043428099844441164

`A059169(lcm(n+1, A030640(n)²))`
-/

namespace A115880.P11043428099844441164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (Int.lcm (n + 1 : ℤ) (A030640 n ^ 2))

end

end A115880.P11043428099844441164

namespace A115880

/-- `A059169(lcm(n+1, A030640(n)²))` -/
def P11043428099844441164.Spec : Prop :=
  ∀ n, P11043428099844441164.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P9743288507215929568

`A059169((n+1)*A060819(n+1))`
-/

namespace A115880.P9743288507215929568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 ((n + 1 : ℤ) * A060819 (n + 1)).toNat

end

end A115880.P9743288507215929568

namespace A115880

/-- `A059169((n+1)*A060819(n+1))` -/
def P9743288507215929568.Spec : Prop :=
  ∀ n, P9743288507215929568.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P2236671486412411602

`A059169(lcm(A030640(n)², A000034(n)))`
-/

namespace A115880.P2236671486412411602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (Int.lcm (A030640 n ^ 2) (A000034 n))

end

end A115880.P2236671486412411602

namespace A115880

/-- `A059169(lcm(A030640(n)², A000034(n)))` -/
def P2236671486412411602.Spec : Prop :=
  ∀ n, P2236671486412411602.a n = A115880 (n + 1)

end A115880

/-! ## A115880.P3431926513985953134

`A174239(A174239(A174239(A174239(A005563(n)))))`
-/

namespace A115880.P3431926513985953134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 (A174239 (A174239 (A174239 (A005563 n).toNat).toNat).toNat).toNat

end

end A115880.P3431926513985953134

namespace A115880

/-- `A174239(A174239(A174239(A174239(A005563(n)))))` -/
def P3431926513985953134.Spec : Prop :=
  ∀ n, P3431926513985953134.a n = A115880 (n + 1)

end A115880

/-!
# A115881: a(n) is the largest positive y satisfying the Diophantine equation x^2=y(y+n). a(n)=0 if there are no solutions.

The programs for A115881, the canonical program `A115881.P4143255658260624620` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A115881 has offset 1).

The definition of A115881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A115881.P4143255658260624620

`A115880(n+1)-A004524(A004442(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A115881

/-- `A115880(n+1)-A004524(A004442(n))` -/
def P4143255658260624620.Spec : Prop :=
  ∀ n, P4143255658260624620.a n = A115881 (n + 1)

theorem P4143255658260624620.correct : P4143255658260624620.Spec := by
  intro n
  simp only [A115881, Nat.add_sub_cancel]

end A115881

/-! ## A115881.P7277637818417251540

`A004652(n)%A147685(A006370(n+1))`
-/

namespace A115881.P7277637818417251540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004652 n) (A147685 (A006370 (n + 1)).toNat)

end

end A115881.P7277637818417251540

namespace A115881

/-- `A004652(n)%A147685(A006370(n+1))` -/
def P7277637818417251540.Spec : Prop :=
  ∀ n, P7277637818417251540.a n = A115881 (n + 1)

end A115881

/-! ## A115881.P6027825097403874484

`A103391(A103391((n+1)²+3)+1)-3-A004524(A004442(n))`
-/

namespace A115881.P6027825097403874484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A103391 ((n + 1) ^ 2 + 3) + 1).toNat - 3 - A004524 (A004442 n).toNat

end

end A115881.P6027825097403874484

namespace A115881

/-- `A103391(A103391((n+1)²+3)+1)-3-A004524(A004442(n))` -/
def P6027825097403874484.Spec : Prop :=
  ∀ n, P6027825097403874484.a n = A115881 (n + 1)

end A115881

/-! ## A115881.P2467610219631684521

`A360692(A147685(n+1))-A004524(A004442(n))`
-/

namespace A115881.P2467610219631684521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360692 (A147685 (n + 1)).toNat - A004524 (A004442 n).toNat

end

end A115881.P2467610219631684521

namespace A115881

/-- `A360692(A147685(n+1))-A004524(A004442(n))` -/
def P2467610219631684521.Spec : Prop :=
  ∀ n, P2467610219631684521.a n = A115881 (n + 1)

end A115881

/-! ## A115881.P16534844133871288489

`A360692(A236283(n+1))-A004524(A004442(n))`
-/

namespace A115881.P16534844133871288489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360692 (A236283 (n + 1)).toNat - A004524 (A004442 n).toNat

end

end A115881.P16534844133871288489

namespace A115881

/-- `A360692(A236283(n+1))-A004524(A004442(n))` -/
def P16534844133871288489.Spec : Prop :=
  ∀ n, P16534844133871288489.a n = A115881 (n + 1)

end A115881

/-! ## A115881.P18310943987555676732

`A025480(A052938(n²)+n+1)-1-A004524(A004442(n))`
-/

namespace A115881.P18310943987555676732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A052938 (n ^ 2) + (n + 1 : ℤ)).toNat - 1 - A004524 (A004442 n).toNat

end

end A115881.P18310943987555676732

namespace A115881

/-- `A025480(A052938(n²)+n+1)-1-A004524(A004442(n))` -/
def P18310943987555676732.Spec : Prop :=
  ∀ n, P18310943987555676732.a n = A115881 (n + 1)

end A115881

/-! ## A115881.P9447161167441278384

`A059169((n+1)*A060819(n+1))-A004524(A004442(n))`
-/

namespace A115881.P9447161167441278384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 ((n + 1 : ℤ) * A060819 (n + 1)).toNat - A004524 (A004442 n).toNat

end

end A115881.P9447161167441278384

namespace A115881

/-- `A059169((n+1)*A060819(n+1))-A004524(A004442(n))` -/
def P9447161167441278384.Spec : Prop :=
  ∀ n, P9447161167441278384.a n = A115881 (n + 1)

end A115881

/-! ## A115881.P17201063238826818186

`A008619(A026730((n+1)²))-(floor(n/2)+1)`
-/

namespace A115881.P17201063238826818186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026730 ((n + 1) ^ 2)).toNat - (⌊(n : ℚ) / 2⌋ + 1)

end

end A115881.P17201063238826818186

namespace A115881

/-- `A008619(A026730((n+1)²))-(floor(n/2)+1)` -/
def P17201063238826818186.Spec : Prop :=
  ∀ n, P17201063238826818186.a n = A115881 (n + 1)

end A115881

/-! ## A115881.P17197319612116872884

`A003602(A003602((n+1)²+2)+1)-2-A004524(A004442(n))`
-/

namespace A115881.P17197319612116872884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A003602 ((n + 1) ^ 2 + 2) + 1).toNat - 2 - A004524 (A004442 n).toNat

end

end A115881.P17197319612116872884

namespace A115881

/-- `A003602(A003602((n+1)²+2)+1)-2-A004524(A004442(n))` -/
def P17197319612116872884.Spec : Prop :=
  ∀ n, P17197319612116872884.a n = A115881 (n + 1)

end A115881

/-!
# A115882: Numbers k such that k + prime(k) gives a triangular number.

The programs for A115882, there is no canonical definition to state claims against.
-/

/-! ## A115882.P9929325632444080915

`eq[2, A128227(A090178(n+1))]`
-/

namespace A115882.P9929325632444080915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (A090178 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A115882.P9929325632444080915

/-! ## A115882.P11700983366645659233

`eq[1, A010054(A014688(n+1))]+1`
-/

namespace A115882.P11700983366645659233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A014688 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115882.P11700983366645659233

/-! ## A115882.P11535032124070761477

`lt[A288942(A008578(n+1)-1+n), 1]`
-/

namespace A115882.P11535032124070761477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A008578 (n + 1) - 1 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A115882.P11535032124070761477

/-! ## A115882.P5977418068186692642

`eq[2, A004736(A006093(n+1)+1+n)]+1`
-/

namespace A115882.P5977418068186692642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A006093 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115882.P5977418068186692642

/-! ## A115882.P5415505325658476315

`lt[A103631(A006093(n+1)+n+2), 1]+1`
-/

namespace A115882.P5415505325658476315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A006093 (n + 1) + (n + 2 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A115882.P5415505325658476315

/-!
# A115883: The n-th prime minus n gives a triangular number.

The programs for A115883, there is no canonical definition to state claims against.
-/

/-! ## A115883.P2978012846896669427

`eq[A054977(n), A130330(A162177(n+1))]`
-/

namespace A115883.P2978012846896669427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 (A162177 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115883.P2978012846896669427

/-! ## A115883.P11555638677717870617

`eq[1, A158405(A014692(n+1))]+1`
-/

namespace A115883.P11555638677717870617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A014692 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115883.P11555638677717870617

/-! ## A115883.P9764553486314033899

`record[(n+1)*A010054(A014689(n+1))]`
-/

namespace A115883.P9764553486314033899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010054 (A014689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115883.P9764553486314033899

/-! ## A115883.P15660915214140371038

`lt[A208756(Δ[A007504(n)]-n), 1]+1`
-/

namespace A115883.P15660915214140371038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208756 (f2 (n + 1) - f2 n - (n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A115883.P15660915214140371038

/-! ## A115883.P9264610395214171262

`lt[A208756(A000040(n+1)-n), 1]+1`
-/

namespace A115883.P9264610395214171262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208756 (A000040 (n + 1) - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A115883.P9264610395214171262

/-!
# A115884: Numbers k such that the k-th prime plus k gives a palindrome.

The programs for A115884, there is no canonical definition to state claims against.
-/

/-! ## A115884.P10017645189166981295

`A060646(A115888(n+1)-2)`
-/

namespace A115884.P10017645189166981295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060646 (A115888 (n + 1) - 2).toNat

end

end A115884.P10017645189166981295

/-! ## A115884.P1891981240011039861

`A060646(∩[A002113(n+1), A014688(n+1)]-2)`
-/

namespace A115884.P1891981240011039861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060646 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n - 2)

end

end A115884.P1891981240011039861

/-! ## A115884.P4430749703066577019

`record[A093030(A014688(n+1))-A000040(n+1)]`
-/

namespace A115884.P4430749703066577019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (A014688 (n + 1)).toNat - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115884.P4430749703066577019

/-! ## A115884.P12812653058287246052

`record[A093030(A014688(n+1))-A008578(n+2)]`
-/

namespace A115884.P12812653058287246052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (A014688 (n + 1)).toNat - A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115884.P12812653058287246052

/-! ## A115884.P2347829345461077865

`A099837(3*n+1)+A060646(A115888(n+1))`
-/

namespace A115884.P2347829345461077865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (3 * n + 1) + A060646 (A115888 (n + 1)).toNat

end

end A115884.P2347829345461077865

/-!
# A115885: The n-th prime minus n gives a palindrome.

The programs for A115885, there is no canonical definition to state claims against.
-/

/-! ## A115885.P7411822514751142444

`eq[A065890(n+1)+1, A004086(A065890(n+1)+1)]+1`
-/

namespace A115885.P7411822514751142444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A065890 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115885.P7411822514751142444

/-! ## A115885.P10084534190319358624

`A287797(A143963(n)+1)`
-/

namespace A115885.P10084534190319358624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287797 (A143963 n + 1).toNat

end

end A115885.P10084534190319358624

/-! ## A115885.P14180645101867805246

`A336420(A003432(n))+n`
-/

namespace A115885.P14180645101867805246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336420 (A003432 n).toNat + (n : ℤ)

end

end A115885.P14180645101867805246

/-! ## A115885.P2605998007412704787

`A243925(A099785(n))+n`
-/

namespace A115885.P2605998007412704787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243925 (A099785 n).toNat + (n : ℤ)

end

end A115885.P2605998007412704787

/-! ## A115885.P13366983888072353645

`A242415(∑[A103191(n)!])`
-/

namespace A115885.P13366983888072353645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A103191 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242415 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A115885.P13366983888072353645

/-!
# A115886: Triangular numbers equal to the sum of a prime number with its index.

The programs for A115886, there is no canonical definition to state claims against.
-/

/-! ## A115886.P14969771049254494271

`A014688(A115882(n+1))`
-/

namespace A115886.P14969771049254494271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (A115882 (n + 1)).toNat

end

end A115886.P14969771049254494271

/-! ## A115886.P7100455726396882414

`∩[A014688(n+1), A000217(n)]`
-/

namespace A115886.P7100455726396882414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115886.P7100455726396882414

/-! ## A115886.P4867796551595238934

`∩[A014688(n+1), A000096(n)+1]`
-/

namespace A115886.P4867796551595238934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115886.P4867796551595238934

/-! ## A115886.P12946916965906237227

`∩[A000040(n+1)+n+1, A000217(n+1)]`
-/

namespace A115886.P12946916965906237227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115886.P12946916965906237227

/-! ## A115886.P16046941488727244429

`A115882(A000027(n+1))+A000040(A115882(n+1))`
-/

namespace A115886.P16046941488727244429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115882 (A000027 (n + 1)).toNat + A000040 (A115882 (n + 1)).toNat

end

end A115886.P16046941488727244429

/-!
# A115887: Triangular numbers equal to the difference between a prime number and its index.

The programs for A115887, there is no canonical definition to state claims against.
-/

/-! ## A115887.P11022893892902217614

`A014689(A115883(n+2))`
-/

namespace A115887.P11022893892902217614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A115883 (n + 2)).toNat

end

end A115887.P11022893892902217614

/-! ## A115887.P9747760317406321708

`∩[A014689(n+2), A000217(n)]`
-/

namespace A115887.P9747760317406321708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115887.P9747760317406321708

/-! ## A115887.P15299799434963487665

`A008578(A115883(n+2)+1)-A115883(n+2)`
-/

namespace A115887.P15299799434963487665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A115883 (n + 2) + 1).toNat - A115883 (n + 2)

end

end A115887.P15299799434963487665

/-! ## A115887.P14171777369362735827

`A014692(A115883(n+2))-A054977(2*(n+1))`
-/

namespace A115887.P14171777369362735827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (A115883 (n + 2)).toNat - A054977 (2 * (n + 1))

end

end A115887.P14171777369362735827

/-! ## A115887.P12713345453304274983

`A014692(A115883(n+2))-A303864(A297236(n+1))`
-/

namespace A115887.P12713345453304274983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (A115883 (n + 2)).toNat - A303864 (A297236 (n + 1)).toNat

end

end A115887.P12713345453304274983

/-!
# A115888: Palindromes equal to the sum of a prime number with its index.

The programs for A115888, there is no canonical definition to state claims against.
-/

/-! ## A115888.P5150083531548394246

`A014688(A115884(n+1))`
-/

namespace A115888.P5150083531548394246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (A115884 (n + 1)).toNat

end

end A115888.P5150083531548394246

/-! ## A115888.P5647992335212702728

`A167136(A115884(n+1)+1)`
-/

namespace A115888.P5647992335212702728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (A115884 (n + 1) + 1).toNat

end

end A115888.P5647992335212702728

/-! ## A115888.P9402590065196535020

`∩[A002113(n+1), A014688(n+1)]`
-/

namespace A115888.P9402590065196535020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115888.P9402590065196535020

/-! ## A115888.P795386523224160287

`A115884(n+1)+A008578(A115884(n+1)+1)`
-/

namespace A115888.P795386523224160287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115884 (n + 1) + A008578 (A115884 (n + 1) + 1).toNat

end

end A115888.P795386523224160287

/-! ## A115888.P155289106297862907

`A182986(A115884(n+1)+1)+A115884(n+1)`
-/

namespace A115888.P155289106297862907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A115884 (n + 1) + 1).toNat + A115884 (n + 1)

end

end A115888.P155289106297862907

/-! ## A115888.P10925374644024714909

`record[A055483(A000040(n+1)+n+1)]`
-/

namespace A115888.P10925374644024714909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A000040 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115888.P10925374644024714909

/-!
# A115889: Palindromes equal to the difference between a prime number and its index.

The programs for A115889, there is no canonical definition to state claims against.
-/

/-! ## A115889.P11437110105285408924

`A014689(A115885(n+2))`
-/

namespace A115889.P11437110105285408924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A115885 (n + 2)).toNat

end

end A115889.P11437110105285408924

/-! ## A115889.P3073779838205079008

`∩[A002113(n+1), A014689(n+2)]`
-/

namespace A115889.P3073779838205079008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A115889.P3073779838205079008

/-! ## A115889.P12983805814160516305

`record[A047813(A014689(n+1))]`
-/

namespace A115889.P12983805814160516305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A014689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115889.P12983805814160516305

/-! ## A115889.P4018398720942627402

`record[A047813(A006093(n+1)-n)]`
-/

namespace A115889.P4018398720942627402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A006093 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115889.P4018398720942627402

/-! ## A115889.P766832456973232836

`record[A093030(A008578(n+1)-n)]`
-/

namespace A115889.P766832456973232836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (A008578 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115889.P766832456973232836

/-!
# A115891: Numbers k such that k times phi(k) is a palindrome.

The programs for A115891, there is no canonical definition to state claims against.
-/

/-! ## A115891.P7984234305750852809

`A192177(A199888(n+1))`
-/

namespace A115891.P7984234305750852809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192177 (A199888 (n + 1)).toNat

end

end A115891.P7984234305750852809

/-! ## A115891.P10033073483921458433

`∑[A066839(A127127(n)+4)]`
-/

namespace A115891.P10033073483921458433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (A127127 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115891.P10033073483921458433

/-! ## A115891.P16574067332972665702

`A027868(A216181(n+1))+1`
-/

namespace A115891.P16574067332972665702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A216181 (n + 1)).toNat + 1

end

end A115891.P16574067332972665702

/-!
# A115892: Numbers k such that sigma(k)*phi(k) is a palindrome.

The programs for A115892, there is no canonical definition to state claims against.
-/

/-! ## A115892.P10032870330877404576

`A128651(ceil(10^n/9))`
-/

namespace A115892.P10032870330877404576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128651 ⌈(10 ^ n : ℚ) / 9⌉.toNat

end

end A115892.P10032870330877404576

/-!
# A115894: Numbers k such that phi(k)*prime(k) is a palindrome.

The programs for A115894, there is no canonical definition to state claims against.
-/

/-! ## A115894.P8430177924496530255

`A326541(∑[2^n]+(4^n-(3*(3^n-2^n)+1))/2)+∑[ceil(3^(n-1))]`
-/

namespace A115894.P8430177924496530255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326541 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((4 ^ n : ℤ) - (3 * ((3 ^ n : ℤ) - (2 ^ n : ℤ)) + 1) : ℚ) / 2)).toNat + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A115894.P8430177924496530255

/-!
# A115895: Numbers k such that k + sigma(k) is a palindrome.

The programs for A115895, there is no canonical definition to state claims against.
-/

/-! ## A115895.P2530661610376513042

`eq[0, A064834(A155085(n+1))]+1`
-/

namespace A115895.P2530661610376513042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A155085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A115895.P2530661610376513042

/-!
# A115896: Numbers k such that k + phi(k) is a palindrome.

The programs for A115896, there is no canonical definition to state claims against.
-/

/-! ## A115896.P5474803724017628529

`eq[A000007(n), A261424(A225530(n)+n)]`
-/

namespace A115896.P5474803724017628529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A225530 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115896.P5474803724017628529

/-! ## A115896.P12726061975184196807

`eq[A000038(n), A261424(A225530(n)+n)]`
-/

namespace A115896.P12726061975184196807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A225530 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A115896.P12726061975184196807

/-! ## A115896.P4104969906635176024

`A364274(A116018(n+1))`
-/

namespace A115896.P4104969906635176024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364274 (A116018 (n + 1)).toNat

end

end A115896.P4104969906635176024

/-! ## A115896.P11802028589590171309

`record[A216715(2*(n+1))+A216672(2*n+3)]`
-/

namespace A115896.P11802028589590171309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216715 (2 * (n + 1)) + A216672 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A115896.P11802028589590171309

/-! ## A115896.P15017523297690564556

`A116018(n+1)-A241460(A032153(n))`
-/

namespace A115896.P15017523297690564556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116018 (n + 1) - A241460 (A032153 n).toNat

end

end A115896.P15017523297690564556

/-!
# A115897: Numbers k such that sigma(k) + phi(k) is a palindrome.

The programs for A115897, there is no canonical definition to state claims against.
-/

/-! ## A115897.P18015511375978346397

`eq[A047813(A065387(n+1)), A065387(n+1)]+1`
-/

namespace A115897.P18015511375978346397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A065387 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A115897.P18015511375978346397

/-! ## A115897.P1372677984608389817

`A116019(n+1)%A115996(A093178(n))`
-/

namespace A115897.P1372677984608389817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116019 (n + 1)) (A115996 (A093178 n).toNat)

end

end A115897.P1372677984608389817

/-!
# A115899: Numbers k such that phi(k) + prime(k) is a palindrome.

The programs for A115899, there is no canonical definition to state claims against.
-/

/-! ## A115899.P17533308431197768944

`lt[A002262(A035513(3*n+5)), A057515(3*(n+1))]`
-/

namespace A115899.P17533308431197768944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A035513 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A115899.P17533308431197768944

/-! ## A115899.P486991224037282528

`∑[gcd(A038610(n+1), A271443(n+1))]`
-/

namespace A115899.P486991224037282528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038610 (n + 1)) (A271443 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115899.P486991224037282528

/-! ## A115899.P1217225085033405123

`A097369(A065330(n+1)+A002182(n+1))`
-/

namespace A115899.P1217225085033405123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097369 (A065330 (n + 1) + A002182 (n + 1)).toNat

end

end A115899.P1217225085033405123

