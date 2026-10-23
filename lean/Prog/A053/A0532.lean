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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A053200: Binomial coefficients C(n,k) reduced modulo n, read by rows; T(0,0)=0 by convention.

The programs for A053200, the canonical program `A053200.P15621712914249578888` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053200 has offset 0).

The definition of A053200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053200.P1325278080311269258

`A094495(n)%∑[A010054(n+1)]`
-/

namespace A053200.P1325278080311269258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094495 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053200.P1325278080311269258

namespace A053200

/-- `A094495(n)%∑[A010054(n+1)]` -/
def P1325278080311269258.Spec : Prop :=
  ∀ n, P1325278080311269258.a n = A053200 n

end A053200

/-! ## A053200.P10132123000990695146

`(char[2]+A007318(n))%A003056(n+1)`
-/

namespace A053200.P10132123000990695146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A007318 n) (A003056 (n + 1))

end

end A053200.P10132123000990695146

namespace A053200

/-- `(char[2]+A007318(n))%A003056(n+1)` -/
def P10132123000990695146.Spec : Prop :=
  ∀ n, P10132123000990695146.a n = A053200 n

end A053200

/-! ## A053200.P7153743030885964967

`A135227(n)%(1-A014132(n+1)%(n+1))`
-/

namespace A053200.P7153743030885964967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135227 n) (1 - Int.tmod (A014132 (n + 1)) (n + 1 : ℤ))

end

end A053200.P7153743030885964967

namespace A053200

/-- `A135227(n)%(1-A014132(n+1)%(n+1))` -/
def P7153743030885964967.Spec : Prop :=
  ∀ n, P7153743030885964967.a n = A053200 n

end A053200

/-! ## A053200.P15621712914249578888

`A007318(n)%A028310(A003056(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053200

/-- `A007318(n)%A028310(A003056(n))` -/
def P15621712914249578888.Spec : Prop :=
  ∀ n, P15621712914249578888.a n = A053200 n

theorem P15621712914249578888.correct : P15621712914249578888.Spec := by
  intro n
  simp only [A053200]

end A053200

/-! ## A053200.P14374181955506461281

`A103406(n)%A028310(A003056(n))`
-/

namespace A053200.P14374181955506461281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103406 n) (A028310 (A003056 n).toNat)

end

end A053200.P14374181955506461281

namespace A053200

/-- `A103406(n)%A028310(A003056(n))` -/
def P14374181955506461281.Spec : Prop :=
  ∀ n, P14374181955506461281.a n = A053200 n

end A053200

/-! ## A053200.P626938174767988167

`A116666(n+1)%A028310(A003056(n))`
-/

namespace A053200.P626938174767988167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116666 (n + 1)) (A028310 (A003056 n).toNat)

end

end A053200.P626938174767988167

namespace A053200

/-- `A116666(n+1)%A028310(A003056(n))` -/
def P626938174767988167.Spec : Prop :=
  ∀ n, P626938174767988167.a n = A053200 n

end A053200

/-! ## A053200.P7745777057821884496

`ceil(A134059(n)/3)%A028310(A003056(n))`
-/

namespace A053200.P7745777057821884496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A134059 n : ℚ) / 3⌉ (A028310 (A003056 n).toNat)

end

end A053200.P7745777057821884496

namespace A053200

/-- `ceil(A134059(n)/3)%A028310(A003056(n))` -/
def P7745777057821884496.Spec : Prop :=
  ∀ n, P7745777057821884496.a n = A053200 n

end A053200

/-! ## A053200.P11060991750232245771

`ceil(A135087(n)/4)%A028310(A003056(n))`
-/

namespace A053200.P11060991750232245771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A135087 n : ℚ) / 4⌉ (A028310 (A003056 n).toNat)

end

end A053200.P11060991750232245771

namespace A053200

/-- `ceil(A135087(n)/4)%A028310(A003056(n))` -/
def P11060991750232245771.Spec : Prop :=
  ∀ n, P11060991750232245771.a n = A053200 n

end A053200

/-! ## A053200.P13775096980866995591

`ceil(A135089(n)/5)%A028310(A003056(n))`
-/

namespace A053200.P13775096980866995591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A135089 n : ℚ) / 5⌉ (A028310 (A003056 n).toNat)

end

end A053200.P13775096980866995591

namespace A053200

/-- `ceil(A135089(n)/5)%A028310(A003056(n))` -/
def P13775096980866995591.Spec : Prop :=
  ∀ n, P13775096980866995591.a n = A053200 n

end A053200

/-! ## A053200.P14019636073659132679

`(A134059(A028310(n))/3)%A028310(A003056(n))`
-/

namespace A053200.P14019636073659132679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A134059 (A028310 n).toNat : ℚ) / 3)) (A028310 (A003056 n).toNat)

end

end A053200.P14019636073659132679

namespace A053200

/-- `(A134059(A028310(n))/3)%A028310(A003056(n))` -/
def P14019636073659132679.Spec : Prop :=
  ∀ n, P14019636073659132679.a n = A053200 n

end A053200

/-! ## A053200.P6071380554999596880

`(A285118(n)+A285116(n))%A028310(A003056(n))`
-/

namespace A053200.P6071380554999596880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285118 n + A285116 n) (A028310 (A003056 n).toNat)

end

end A053200.P6071380554999596880

namespace A053200

/-- `(A285118(n)+A285116(n))%A028310(A003056(n))` -/
def P6071380554999596880.Spec : Prop :=
  ∀ n, P6071380554999596880.a n = A053200 n

end A053200

/-! ## A053200.P7085554790396688212

`(A028276(n)-A028263(n))%A028310(A003056(n))`
-/

namespace A053200.P7085554790396688212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028276 n - A028263 n) (A028310 (A003056 n).toNat)

end

end A053200.P7085554790396688212

namespace A053200

/-- `(A028276(n)-A028263(n))%A028310(A003056(n))` -/
def P7085554790396688212.Spec : Prop :=
  ∀ n, P7085554790396688212.a n = A053200 n

end A053200

/-! ## A053200.P14527709545810009308

`A073107(n)%A028310(A003056(n))`
-/

namespace A053200.P14527709545810009308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073107 n) (A028310 (A003056 n).toNat)

end

end A053200.P14527709545810009308

namespace A053200

/-- `A073107(n)%A028310(A003056(n))` -/
def P14527709545810009308.Spec : Prop :=
  ∀ n, P14527709545810009308.a n = A053200 n

end A053200

/-! ## A053200.P6837154777040181479

`A059110(n)%A028310(A003056(n))`
-/

namespace A053200.P6837154777040181479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059110 n) (A028310 (A003056 n).toNat)

end

end A053200.P6837154777040181479

namespace A053200

/-- `A059110(n)%A028310(A003056(n))` -/
def P6837154777040181479.Spec : Prop :=
  ∀ n, P6837154777040181479.a n = A053200 n

end A053200

/-! ## A053200.P10870508995797019476

`ceil(A134060(n)/3)%A028310(A003056(n))`
-/

namespace A053200.P10870508995797019476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A134060 n : ℚ) / 3⌉ (A028310 (A003056 n).toNat)

end

end A053200.P10870508995797019476

namespace A053200

/-- `ceil(A134060(n)/3)%A028310(A003056(n))` -/
def P10870508995797019476.Spec : Prop :=
  ∀ n, P10870508995797019476.a n = A053200 n

end A053200

/-!
# A053201: Pascal's triangle (excluding first, last element of each row) read by rows, row n read mod n.

The programs for A053201, the canonical program `A053201.P1741911093947549040` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053201 has offset 2).

The definition of A053201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053201.P15768429543186950372

`A061928(n+1)%A332026(n+1)`
-/

namespace A053201.P15768429543186950372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061928 (n + 1)) (A332026 (n + 1))

end

end A053201.P15768429543186950372

namespace A053201

/-- `A061928(n+1)%A332026(n+1)` -/
def P15768429543186950372.Spec : Prop :=
  ∀ n, P15768429543186950372.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P1741911093947549040

`A014410(n+2)%A003057(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053201

/-- `A014410(n+2)%A003057(n+2)` -/
def P1741911093947549040.Spec : Prop :=
  ∀ n, P1741911093947549040.a n = A053201 (n + 2)

theorem P1741911093947549040.correct : P1741911093947549040.Spec := by
  intro n
  simp only [A053201, Nat.add_sub_cancel]

end A053201

/-! ## A053201.P15235431567705699373

`A231642(A014132(n+1))`
-/

namespace A053201.P15235431567705699373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (A014132 (n + 1)).toNat

end

end A053201.P15235431567705699373

namespace A053201

/-- `A231642(A014132(n+1))` -/
def P15235431567705699373.Spec : Prop :=
  ∀ n, P15235431567705699373.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P4670850100516393183

`A231642(∑[A010054(n)+1])`
-/

namespace A053201.P4670850100516393183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053201.P4670850100516393183

namespace A053201

/-- `A231642(∑[A010054(n)+1])` -/
def P4670850100516393183.Spec : Prop :=
  ∀ n, P4670850100516393183.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P4622510140435335445

`A231642(A007401(n+1)+1)`
-/

namespace A053201.P4622510140435335445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (A007401 (n + 1) + 1).toNat

end

end A053201.P4622510140435335445

namespace A053201

/-- `A231642(A007401(n+1)+1)` -/
def P4622510140435335445.Spec : Prop :=
  ∀ n, P4622510140435335445.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P424180467327749135

`A231642(lt[1, A086270(n+1)]+1)`
-/

namespace A053201.P424180467327749135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A053201.P424180467327749135

namespace A053201

/-- `A231642(lt[1, A086270(n+1)]+1)` -/
def P424180467327749135.Spec : Prop :=
  ∀ n, P424180467327749135.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P5356737163254815199

`A231642(A133196(n+1)-1+n)`
-/

namespace A053201.P5356737163254815199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (A133196 (n + 1) - 1 + (n : ℤ)).toNat

end

end A053201.P5356737163254815199

namespace A053201

/-- `A231642(A133196(n+1)-1+n)` -/
def P5356737163254815199.Spec : Prop :=
  ∀ n, P5356737163254815199.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P14146281167446353876

`A231642(lt[1, A231642(n+1)+A173118(n)])`
-/

namespace A053201.P14146281167446353876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (n + 1) + A173118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053201.P14146281167446353876

namespace A053201

/-- `A231642(lt[1, A231642(n+1)+A173118(n)])` -/
def P14146281167446353876.Spec : Prop :=
  ∀ n, P14146281167446353876.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P14994376936888009644

`A231642(2*A004736(n+1)+n)`
-/

namespace A053201.P14994376936888009644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A053201.P14994376936888009644

namespace A053201

/-- `A231642(2*A004736(n+1)+n)` -/
def P14994376936888009644.Spec : Prop :=
  ∀ n, P14994376936888009644.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P4944804975090679241

`A231642(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A053201.P4944804975090679241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A053201.P4944804975090679241

namespace A053201

/-- `A231642(A004736(n+1)+A004736(n+1)+n)` -/
def P4944804975090679241.Spec : Prop :=
  ∀ n, P4944804975090679241.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P13908346658567866505

`A053200(lt[1, A173118(n)])`
-/

namespace A053201.P13908346658567866505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053201.P13908346658567866505

namespace A053201

/-- `A053200(lt[1, A173118(n)])` -/
def P13908346658567866505.Spec : Prop :=
  ∀ n, P13908346658567866505.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P1758391449573868908

`A053200(2*A014132(n+1)-n)`
-/

namespace A053201.P1758391449573868908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A053201.P1758391449573868908

namespace A053201

/-- `A053200(2*A014132(n+1)-n)` -/
def P1758391449573868908.Spec : Prop :=
  ∀ n, P1758391449573868908.a n = A053201 (n + 2)

end A053201

/-! ## A053201.P2720425415208775891

`A053200(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A053201.P2720425415208775891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A053201.P2720425415208775891

namespace A053201

/-- `A053200(A014132(n+1)+A014132(n+1)-n)` -/
def P2720425415208775891.Spec : Prop :=
  ∀ n, P2720425415208775891.a n = A053201 (n + 2)

end A053201

/-!
# A053202: Pascal's triangle (excluding first, last two elements of each row) read by rows, row n read mod n.

The programs for A053202, the canonical program `A053202.P5490274948657399534` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053202 has offset 4).

The definition of A053202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053202.P5490274948657399534

`A053201(2*A133196(n+1)+n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053202

/-- `A053201(2*A133196(n+1)+n)` -/
def P5490274948657399534.Spec : Prop :=
  ∀ n, P5490274948657399534.a n = A053202 (n + 4)

theorem P5490274948657399534.correct : P5490274948657399534.Spec := by
  intro n
  simp only [A053202, Nat.add_sub_cancel]

end A053202

/-! ## A053202.P10282612300238673180

`A053201(A133196(n+1)+A133196(n+1)+n)`
-/

namespace A053202.P10282612300238673180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053201 (A133196 (n + 1) + (A133196 (n + 1) + (n : ℤ))).toNat

end

end A053202.P10282612300238673180

namespace A053202

/-- `A053201(A133196(n+1)+A133196(n+1)+n)` -/
def P10282612300238673180.Spec : Prop :=
  ∀ n, P10282612300238673180.a n = A053202 (n + 4)

theorem P10282612300238673180.correct : P10282612300238673180.Spec := by
  intro n
  simp only [A053202, Nat.add_sub_cancel, A053202.P10282612300238673180.a, A053202.P5490274948657399534.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A053202

/-! ## A053202.P13343547889622967208

`A053201(A003057(n+2)²-A023444(n))`
-/

namespace A053202.P13343547889622967208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053201 (A003057 (n + 2) ^ 2 - A023444 n).toNat

end

end A053202.P13343547889622967208

namespace A053202

/-- `A053201(A003057(n+2)²-A023444(n))` -/
def P13343547889622967208.Spec : Prop :=
  ∀ n, P13343547889622967208.a n = A053202 (n + 4)

end A053202

/-! ## A053202.P6740638918148908112

`A231642(A133196(n+1)²-A007401(n+1))`
-/

namespace A053202.P6740638918148908112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (A133196 (n + 1) ^ 2 - A007401 (n + 1)).toNat

end

end A053202.P6740638918148908112

namespace A053202

/-- `A231642(A133196(n+1)²-A007401(n+1))` -/
def P6740638918148908112.Spec : Prop :=
  ∀ n, P6740638918148908112.a n = A053202 (n + 4)

end A053202

/-! ## A053202.P2011641292693747973

`A053200(lt[A080036(n), A173118(n)+n])`
-/

namespace A053202.P2011641292693747973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053202.P2011641292693747973

namespace A053202

/-- `A053200(lt[A080036(n), A173118(n)+n])` -/
def P2011641292693747973.Spec : Prop :=
  ∀ n, P2011641292693747973.a n = A053202 (n + 4)

end A053202

/-! ## A053202.P9707979128064825798

`A053200(lt[A080036(n)-n, A173118(n)])`
-/

namespace A053202.P9707979128064825798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053202.P9707979128064825798

namespace A053202

/-- `A053200(lt[A080036(n)-n, A173118(n)])` -/
def P9707979128064825798.Spec : Prop :=
  ∀ n, P9707979128064825798.a n = A053202 (n + 4)

end A053202

/-! ## A053202.P9735200876758975523

`A053200(lt[A014132(n+1), 2*A173118(n)])`
-/

namespace A053202.P9735200876758975523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053202.P9735200876758975523

namespace A053202

/-- `A053200(lt[A014132(n+1), 2*A173118(n)])` -/
def P9735200876758975523.Spec : Prop :=
  ∀ n, P9735200876758975523.a n = A053202 (n + 4)

end A053202

/-! ## A053202.P1411634872640508817

`A053200(lt[A014132(n+1)/2, A173118(n)])`
-/

namespace A053202.P1411634872640508817
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A053202.P1411634872640508817

namespace A053202

/-- `A053200(lt[A014132(n+1)/2, A173118(n)])` -/
def P1411634872640508817.Spec : Prop :=
  ∀ n, P1411634872640508817.a n = A053202 (n + 4)

end A053202

/-! ## A053202.P14947231567023704658

`A053200(lt[A014132(n+1), A173118(n)+n])`
-/

namespace A053202.P14947231567023704658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053202.P14947231567023704658

namespace A053202

/-- `A053200(lt[A014132(n+1), A173118(n)+n])` -/
def P14947231567023704658.Spec : Prop :=
  ∀ n, P14947231567023704658.a n = A053202 (n + 4)

end A053202

/-! ## A053202.P9722549222683024345

`A144394(n+4)%A350361(n+1)`
-/

namespace A053202.P9722549222683024345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144394 (n + 4)) (A350361 (n + 1))

end

end A053202.P9722549222683024345

namespace A053202

/-- `A144394(n+4)%A350361(n+1)` -/
def P9722549222683024345.Spec : Prop :=
  ∀ n, P9722549222683024345.a n = A053202 (n + 4)

end A053202

/-!
# A053203: Pascal's triangle (excluding first, last three elements of each row) read by rows, row n read mod n.

The programs for A053203, there is no canonical definition to state claims against.
-/

/-! ## A053203.P6327138127930990049

`A231642(lt[A086270(n+1), A173118(n)])`
-/

namespace A053203.P6327138127930990049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053203.P6327138127930990049

/-! ## A053203.P3023349560150052708

`A053200(lt[A080036(n), A173118(n)])`
-/

namespace A053203.P3023349560150052708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053203.P3023349560150052708

/-! ## A053203.P6906068398473208276

`A053200(lt[A007401(n+1), A173118(n)])`
-/

namespace A053203.P6906068398473208276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053203.P6906068398473208276

/-! ## A053203.P206405888092168213

`A053200(lt[A014132(n+1), A173118(n)])`
-/

namespace A053203.P206405888092168213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053200 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053203.P206405888092168213

/-! ## A053203.P7268791025673093580

`A231642(lt[2, A242784(n)])`
-/

namespace A053203.P7268791025673093580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A053203.P7268791025673093580

/-!
# A053204: Row sums of A053200.

The programs for A053204, there is no canonical definition to state claims against.
-/

/-! ## A053204.P10324325885691035765

`A053205(A233583(n+1))+2%(n+1)`
-/

namespace A053204.P10324325885691035765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053205 (A233583 (n + 1)).toNat + ((2 % (n + 1) : ℕ) : ℤ)

end

end A053204.P10324325885691035765

/-! ## A053204.P16872299882013365952

`A053205(A233583(n+1))-A113679(A028310(n))`
-/

namespace A053204.P16872299882013365952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053205 (A233583 (n + 1)).toNat - A113679 (A028310 n).toNat

end

end A053204.P16872299882013365952

/-! ## A053204.P6360124061623263836

`(A053205(A233583(n+1))+2)%A290827(n)`
-/

namespace A053204.P6360124061623263836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053205 (A233583 (n + 1)).toNat + 2) (A290827 n)

end

end A053204.P6360124061623263836

/-! ## A053204.P872680502387123402

`A072088(A152061(n))%20`
-/

namespace A053204.P872680502387123402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072088 (A152061 n).toNat) 20

end

end A053204.P872680502387123402

/-! ## A053204.P17705079217737142384

`A152061(n)%A245944(A246393(n))`
-/

namespace A053204.P17705079217737142384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152061 n) (A245944 (A246393 n).toNat)

end

end A053204.P17705079217737142384

/-!
# A053205: Row sums of A053201.

The programs for A053205, there is no canonical definition to state claims against.
-/

/-! ## A053205.P3422009716128458888

`A053204(n+2)-2`
-/

namespace A053205.P3422009716128458888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (n + 2) - 2

end

end A053205.P3422009716128458888

/-! ## A053205.P3344937726948655122

`∑[Δ[A053204(n+1)]%∑[n+1]]`
-/

namespace A053205.P3344937726948655122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053205.P3344937726948655122

/-! ## A053205.P10793207091043403323

`A113679(n+2)+A053204(n+2)`
-/

namespace A053205.P10793207091043403323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (n + 2) + A053204 (n + 2)

end

end A053205.P10793207091043403323

/-! ## A053205.P12806977646782127532

`∑[Δ[A053204(n+1)]*A057427(n)]`
-/

namespace A053205.P12806977646782127532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053205.P12806977646782127532

/-! ## A053205.P16990462270379781906

`A134067(n)%A095718(n+1)`
-/

namespace A053205.P16990462270379781906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134067 n) (A095718 (n + 1))

end

end A053205.P16990462270379781906

/-! ## A053205.P3613251553915577347

`A307457(n+1)%A095718(n+1)`
-/

namespace A053205.P3613251553915577347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307457 (n + 1)) (A095718 (n + 1))

end

end A053205.P3613251553915577347

/-! ## A053205.P4191278111952267134

`A023444(A053204(n+2))`
-/

namespace A053205.P4191278111952267134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A053204 (n + 2)).toNat

end

end A053205.P4191278111952267134

/-!
# A053207: Rows of triangle formed using Pascal's rule except begin n-th row with n and end it with n+1.

The programs for A053207, the canonical program `A053207.P15737369054491189776` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053207 has offset 0).

The definition of A053207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053207.P15737369054491189776

`A051598(n)-A007318(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A053207

/-- `A051598(n)-A007318(n)` -/
def P15737369054491189776.Spec : Prop :=
  ∀ n, P15737369054491189776.a n = A053207 n

theorem P15737369054491189776.correct : P15737369054491189776.Spec := by
  intro n
  simp only [A053207]

end A053207

/-! ## A053207.P6244785532449094491

`A134636(n)-A029653(n)`
-/

namespace A053207.P6244785532449094491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A029653 n

end

end A053207.P6244785532449094491

namespace A053207

/-- `A134636(n)-A029653(n)` -/
def P6244785532449094491.Spec : Prop :=
  ∀ n, P6244785532449094491.a n = A053207 n

end A053207

/-! ## A053207.P9292536573077391830

`A029635(n)+2*A051631(n)`
-/

namespace A053207.P9292536573077391830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + 2 * A051631 n

end

end A053207.P9292536573077391830

namespace A053207

/-- `A029635(n)+2*A051631(n)` -/
def P9292536573077391830.Spec : Prop :=
  ∀ n, P9292536573077391830.a n = A053207 n

end A053207

/-! ## A053207.P9563054165985497176

`∑[A008482(n)]+2*A051601(n)`
-/

namespace A053207.P9563054165985497176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A051601 n

end

end A053207.P9563054165985497176

namespace A053207

/-- `∑[A008482(n)]+2*A051601(n)` -/
def P9563054165985497176.Spec : Prop :=
  ∀ n, P9563054165985497176.a n = A053207 n

end A053207

/-! ## A053207.P8247192872755751151

`2*A051601(n)-∑[A037012(n)]`
-/

namespace A053207.P8247192872755751151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051601 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053207.P8247192872755751151

namespace A053207

/-- `2*A051601(n)-∑[A037012(n)]` -/
def P8247192872755751151.Spec : Prop :=
  ∀ n, P8247192872755751151.a n = A053207 n

end A053207

/-! ## A053207.P17373872650532317109

`A051597(n)+A097805(n)+A051632(n)`
-/

namespace A053207.P17373872650532317109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A097805 n + A051632 n)

end

end A053207.P17373872650532317109

namespace A053207

/-- `A051597(n)+A097805(n)+A051632(n)` -/
def P17373872650532317109.Spec : Prop :=
  ∀ n, P17373872650532317109.a n = A053207 n

end A053207

/-! ## A053207.P13962956695602628358

`A051597(n)+A051601(n)-A029653(n)`
-/

namespace A053207.P13962956695602628358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A051601 n - A029653 n)

end

end A053207.P13962956695602628358

namespace A053207

/-- `A051597(n)+A051601(n)-A029653(n)` -/
def P13962956695602628358.Spec : Prop :=
  ∀ n, P13962956695602628358.a n = A053207 n

end A053207

/-! ## A053207.P14709805884063426155

`A097805(n)+A134636(n)-A028326(n)`
-/

namespace A053207.P14709805884063426155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (A134636 n - A028326 n)

end

end A053207.P14709805884063426155

namespace A053207

/-- `A097805(n)+A134636(n)-A028326(n)` -/
def P14709805884063426155.Spec : Prop :=
  ∀ n, P14709805884063426155.a n = A053207 n

end A053207

/-! ## A053207.P9980066609069197922

`A051597(n)+A051597(n)-A029653(n)-A007318(n)`
-/

namespace A053207.P9980066609069197922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A051597 n - A029653 n) - A007318 n

end

end A053207.P9980066609069197922

namespace A053207

/-- `A051597(n)+A051597(n)-A029653(n)-A007318(n)` -/
def P9980066609069197922.Spec : Prop :=
  ∀ n, P9980066609069197922.a n = A053207 n

end A053207

/-! ## A053207.P8392023232487225048

`A005843(A051601(n))+∑[A008482(n)]`
-/

namespace A053207.P8392023232487225048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A051601 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053207.P8392023232487225048

namespace A053207

/-- `A005843(A051601(n))+∑[A008482(n)]` -/
def P8392023232487225048.Spec : Prop :=
  ∀ n, P8392023232487225048.a n = A053207 n

end A053207

/-! ## A053207.P413073732781174493

`A005843(A051601(n))-∑[A037012(n)]`
-/

namespace A053207.P413073732781174493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A051601 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053207.P413073732781174493

namespace A053207

/-- `A005843(A051601(n))-∑[A037012(n)]` -/
def P413073732781174493.Spec : Prop :=
  ∀ n, P413073732781174493.a n = A053207 n

end A053207

/-! ## A053207.P18098445441509986229

`A005843(A051601(n))-A097805(n+1)`
-/

namespace A053207.P18098445441509986229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A051601 n).toNat - A097805 (n + 1)

end

end A053207.P18098445441509986229

namespace A053207

/-- `A005843(A051601(n))-A097805(n+1)` -/
def P18098445441509986229.Spec : Prop :=
  ∀ n, P18098445441509986229.a n = A053207 n

end A053207

/-!
# A053208: Row sums of A053207.

The programs for A053208, the canonical program `A053208.P6069298341767811654` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053208 has offset 0).

The definition of A053208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053208.P11616353192479950708

`ogf((3x+x^2)/(1-3x+2x^2))`
-/

namespace A053208.P11616353192479950708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1] [1, -3, 2] n

end

end A053208.P11616353192479950708

namespace A053208

/-- `ogf((3x+x^2)/(1-3x+2x^2))` -/
def P11616353192479950708.Spec : Prop :=
  ∀ n, P11616353192479950708.a n = A053208 n

end A053208

/-! ## A053208.P6069298341767811654

`2*(a(n-1)+2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053208

/-- `2*(a(n-1)+2)` -/
def P6069298341767811654.Spec : Prop :=
  ∀ n, (P6069298341767811654.a n : ℤ) = A053208 n

theorem P6069298341767811654.correct : P6069298341767811654.Spec := by
  intro n
  simp only [A053208]

end A053208

/-! ## A053208.P12260388079227258763

`∑[2*a(n-1)]` with `a(0)=0, a(1)=3, a(2)=7`
-/

namespace A053208.P12260388079227258763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 7] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053208.P12260388079227258763

namespace A053208

/-- `∑[2*a(n-1)]` -/
def P12260388079227258763.Spec : Prop :=
  ∀ n, (P12260388079227258763.a n : ℤ) = A053208 n

end A053208

/-! ## A053208.P6647122814912250120

`∑[floor(7*2^(n-2))]-1`
-/

namespace A053208.P6647122814912250120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A053208.P6647122814912250120

namespace A053208

/-- `∑[floor(7*2^(n-2))]-1` -/
def P6647122814912250120.Spec : Prop :=
  ∀ n, P6647122814912250120.a n = A053208 n

end A053208

/-! ## A053208.P15192115595112381745

`(a(n-1)+2)/(1-1/2)` with `a(0)=0, a(1)=3`
-/

namespace A053208.P15192115595112381745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  (a (n - 1) + 2) / (1 - (1 : ℚ) / 2)

end

end A053208.P15192115595112381745

namespace A053208

/-- `(a(n-1)+2)/(1-1/2)` -/
def P15192115595112381745.Spec : Prop :=
  ∀ n, P15192115595112381745.a n = (A053208 n : ℚ)

end A053208

/-! ## A053208.P9741580937854435155

`abs(2-A026622(n+1))`
-/

namespace A053208.P9741580937854435155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A026622 (n + 1)|

end

end A053208.P9741580937854435155

namespace A053208

/-- `abs(2-A026622(n+1))` -/
def P9741580937854435155.Spec : Prop :=
  ∀ n, P9741580937854435155.a n = A053208 n

end A053208

/-! ## A053208.P6528917118588450547

`record[A174317(n+1)-2]`
-/

namespace A053208.P6528917118588450547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174317 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053208.P6528917118588450547

namespace A053208

/-- `record[A174317(n+1)-2]` -/
def P6528917118588450547.Spec : Prop :=
  ∀ n, P6528917118588450547.a n = A053208 n

end A053208

/-! ## A053208.P17063571960150337684

`floor(7*∑[A131577(n)]/2)`
-/

namespace A053208.P17063571960150337684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)⌋

end

end A053208.P17063571960150337684

namespace A053208

/-- `floor(7*∑[A131577(n)]/2)` -/
def P17063571960150337684.Spec : Prop :=
  ∀ n, P17063571960150337684.a n = A053208 n

end A053208

/-! ## A053208.P12181250723472624056

`∑[xor(A266550(n+1), A266550(n+2))]`
-/

namespace A053208.P12181250723472624056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A266550 (n + 1)) (A266550 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053208.P12181250723472624056

namespace A053208

/-- `∑[xor(A266550(n+1), A266550(n+2))]` -/
def P12181250723472624056.Spec : Prop :=
  ∀ n, P12181250723472624056.a n = A053208 n

end A053208

/-! ## A053208.P17402864690318920374

`Δ[A026624(n)-Δ[n²]]`
-/

namespace A053208.P17402864690318920374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026624 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053208.P17402864690318920374

namespace A053208

/-- `Δ[A026624(n)-Δ[n²]]` -/
def P17402864690318920374.Spec : Prop :=
  ∀ n, P17402864690318920374.a n = A053208 n

end A053208

/-! ## A053208.P1546841367208614493

`∑[floor(7*2^n/4)%A126932(n)]`
-/

namespace A053208.P1546841367208614493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(7 * 2 ^ n : ℚ) / 4⌋ (A126932 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053208.P1546841367208614493

namespace A053208

/-- `∑[floor(7*2^n/4)%A126932(n)]` -/
def P1546841367208614493.Spec : Prop :=
  ∀ n, P1546841367208614493.a n = A053208 n

end A053208

/-!
# A053209: Row sums of A051598.

The programs for A053209, the canonical program `A053209.P17662316802954712760` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053209 has offset 0).

The definition of A053209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053209.P17662316802954712760

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=5, a(2)=14`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053209

/-- `3*a(n-1)-2*a(n-2)` -/
def P17662316802954712760.Spec : Prop :=
  ∀ n, P17662316802954712760.a n = A053209 n

theorem P17662316802954712760.correct : P17662316802954712760.Spec := by
  intro n
  simp only [A053209]

end A053209

/-! ## A053209.P16454623536998725189

`ogf((1+2x+x^2)/(1-3x+2x^2))`
-/

namespace A053209.P16454623536998725189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -3, 2] n

end

end A053209.P16454623536998725189

namespace A053209

/-- `ogf((1+2x+x^2)/(1-3x+2x^2))` -/
def P16454623536998725189.Spec : Prop :=
  ∀ n, P16454623536998725189.a n = A053209 n

end A053209

/-! ## A053209.P6138795127122400351

`2*(a(n-1)+2)` with `a(0)=1, a(1)=5`
-/

namespace A053209.P6138795127122400351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * (a (n - 1) + 2)

end

end A053209.P6138795127122400351

namespace A053209

/-- `2*(a(n-1)+2)` -/
def P6138795127122400351.Spec : Prop :=
  ∀ n, (P6138795127122400351.a n : ℤ) = A053209 n

end A053209

/-! ## A053209.P2612317828708960139

`∑[2*a(n-1)]` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A053209.P2612317828708960139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053209.P2612317828708960139

namespace A053209

/-- `∑[2*a(n-1)]` -/
def P2612317828708960139.Spec : Prop :=
  ∀ n, (P2612317828708960139.a n : ℤ) = A053209 n

end A053209

/-! ## A053209.P13730261263059917077

`ceil(9*2^(n-1))-4`
-/

namespace A053209.P13730261263059917077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈9 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 4

end

end A053209.P13730261263059917077

namespace A053209

/-- `ceil(9*2^(n-1))-4` -/
def P13730261263059917077.Spec : Prop :=
  ∀ n, P13730261263059917077.a n = A053209 n

end A053209

/-! ## A053209.P8405443494464652190

`∑[A397439(n)]`
-/

namespace A053209.P8405443494464652190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053209.P8405443494464652190

namespace A053209

/-- `∑[A397439(n)]` -/
def P8405443494464652190.Spec : Prop :=
  ∀ n, P8405443494464652190.a n = A053209 n

end A053209

/-! ## A053209.P7531665627412136835

`∑[∑[abs(A279634(n))]]`
-/

namespace A053209.P7531665627412136835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279634 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053209.P7531665627412136835

namespace A053209

/-- `∑[∑[abs(A279634(n))]]` -/
def P7531665627412136835.Spec : Prop :=
  ∀ n, P7531665627412136835.a n = A053209 n

end A053209

/-! ## A053209.P16342249196818914132

`abs(A054127(n+1)+n-1)`
-/

namespace A053209.P16342249196818914132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054127 (n + 1) + ((n : ℤ) - 1)|

end

end A053209.P16342249196818914132

namespace A053209

/-- `abs(A054127(n+1)+n-1)` -/
def P16342249196818914132.Spec : Prop :=
  ∀ n, P16342249196818914132.a n = A053209 n

end A053209

/-! ## A053209.P2862526467571959080

`A224692(A004273(n))`
-/

namespace A053209.P2862526467571959080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224692 (A004273 n).toNat

end

end A053209.P2862526467571959080

namespace A053209

/-- `A224692(A004273(n))` -/
def P2862526467571959080.Spec : Prop :=
  ∀ n, P2862526467571959080.a n = A053209 n

end A053209

/-! ## A053209.P13659063006589954156

`∑[A266550(n+3)-A266550(n+1)]`
-/

namespace A053209.P13659063006589954156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 3) - A266550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053209.P13659063006589954156

namespace A053209

/-- `∑[A266550(n+3)-A266550(n+1)]` -/
def P13659063006589954156.Spec : Prop :=
  ∀ n, P13659063006589954156.a n = A053209 n

end A053209

/-! ## A053209.P6673861524713713967

`A048491(n)/A036453(n+1)`
-/

namespace A053209.P6673861524713713967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048491 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A053209.P6673861524713713967

namespace A053209

/-- `A048491(n)/A036453(n+1)` -/
def P6673861524713713967.Spec : Prop :=
  ∀ n, P6673861524713713967.a n = (A053209 n : ℚ)

end A053209

/-! ## A053209.P9939201764636926145

`(A048491(n)+A000007(n))/2`
-/

namespace A053209.P9939201764636926145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048491 n + A000007 n : ℚ) / 2

end

end A053209.P9939201764636926145

namespace A053209

/-- `(A048491(n)+A000007(n))/2` -/
def P9939201764636926145.Spec : Prop :=
  ∀ n, P9939201764636926145.a n = (A053209 n : ℚ)

end A053209

/-! ## A053209.P13900022718128142211

`A048491(n)/A046698(n+2)`
-/

namespace A053209.P13900022718128142211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048491 n : ℚ) / (A046698 (n + 2) : ℚ)

end

end A053209.P13900022718128142211

namespace A053209

/-- `A048491(n)/A046698(n+2)` -/
def P13900022718128142211.Spec : Prop :=
  ∀ n, P13900022718128142211.a n = (A053209 n : ℚ)

end A053209

/-! ## A053209.P6205059906276552756

`(A068293(n+1)+∑[A003945(n)])/2`
-/

namespace A053209.P6205059906276552756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A068293 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A053209.P6205059906276552756

namespace A053209

/-- `(A068293(n+1)+∑[A003945(n)])/2` -/
def P6205059906276552756.Spec : Prop :=
  ∀ n, P6205059906276552756.a n = (A053209 n : ℚ)

end A053209

/-! ## A053209.P6350806378008059235

`(A061776(2*n)+A027383(2*n))/2`
-/

namespace A053209.P6350806378008059235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061776 (2 * n) + A027383 (2 * n) : ℚ) / 2

end

end A053209.P6350806378008059235

namespace A053209

/-- `(A061776(2*n)+A027383(2*n))/2` -/
def P6350806378008059235.Spec : Prop :=
  ∀ n, P6350806378008059235.a n = (A053209 n : ℚ)

end A053209

/-! ## A053209.P11208003072377147852

`(A061776(2*n+1)-A036453(n+1))/2`
-/

namespace A053209.P11208003072377147852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061776 (2 * n + 1) - A036453 (n + 1) : ℚ) / 2

end

end A053209.P11208003072377147852

namespace A053209

/-- `(A061776(2*n+1)-A036453(n+1))/2` -/
def P11208003072377147852.Spec : Prop :=
  ∀ n, P11208003072377147852.a n = (A053209 n : ℚ)

end A053209

/-! ## A053209.P16209117564287717055

`(A083416(2*n+1)+A061776(2*n))/2`
-/

namespace A053209.P16209117564287717055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083416 (2 * n + 1) + A061776 (2 * n) : ℚ) / 2

end

end A053209.P16209117564287717055

namespace A053209

/-- `(A083416(2*n+1)+A061776(2*n))/2` -/
def P16209117564287717055.Spec : Prop :=
  ∀ n, P16209117564287717055.a n = (A053209 n : ℚ)

end A053209

/-! ## A053209.P777523606517259033

`Δ[A296953(n)²]/Δ[A296953(n)]`
-/

namespace A053209.P777523606517259033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A053209.P777523606517259033

namespace A053209

/-- `Δ[A296953(n)²]/Δ[A296953(n)]` -/
def P777523606517259033.Spec : Prop :=
  ∀ n, P777523606517259033.a n = (A053209 n : ℚ)

end A053209

/-!
# A053210: Row sums of A051599.

The programs for A053210, the canonical program `A053210.P657780142327635725` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053210 has offset 0).

The definition of A053210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053210.P657780142327635725

`2*(A001223(n)+a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053210

/-- `2*(A001223(n)+a(n-1))` -/
def P657780142327635725.Spec : Prop :=
  ∀ n, P657780142327635725.a n = A053210 n

theorem P657780142327635725.correct : P657780142327635725.Spec := by
  intro n
  simp only [A053210]

end A053210

/-! ## A053210.P15428164883680669293

`2*(A075526(n)+a(n-1))` with `a(0)=2`
-/

namespace A053210.P15428164883680669293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A075526 n + a (n - 1))

end

end A053210.P15428164883680669293

namespace A053210

/-- `2*(A075526(n)+a(n-1))` -/
def P15428164883680669293.Spec : Prop :=
  ∀ n, P15428164883680669293.a n = A053210 n

end A053210

/-! ## A053210.P11705855560756070191

`2*(A054541(n+1)+a(n-1))` with `a(0)=2`
-/

namespace A053210.P11705855560756070191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A054541 (n + 1) + a (n - 1))

end

end A053210.P11705855560756070191

namespace A053210

/-- `2*(A054541(n+1)+a(n-1))` -/
def P11705855560756070191.Spec : Prop :=
  ∀ n, P11705855560756070191.a n = A053210 n

end A053210

/-! ## A053210.P12060032418754465807

`2*(Δ[A008578(n+1)]+a(n-1))` with `a(0)=2`
-/

namespace A053210.P12060032418754465807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (f1 (n + 1) - f1 n + a (n - 1))

end

end A053210.P12060032418754465807

namespace A053210

/-- `2*(Δ[A008578(n+1)]+a(n-1))` -/
def P12060032418754465807.Spec : Prop :=
  ∀ n, P12060032418754465807.a n = A053210 n

end A053210

/-! ## A053210.P11535280281464430425

`Δ[A076274(n+1)]+2*a(n-1)` with `a(0)=2`
-/

namespace A053210.P11535280281464430425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A053210.P11535280281464430425

namespace A053210

/-- `Δ[A076274(n+1)]+2*a(n-1)` -/
def P11535280281464430425.Spec : Prop :=
  ∀ n, P11535280281464430425.a n = A053210 n

end A053210

/-! ## A053210.P9764519958448664725

`Δ[A001747(n+1)]+a(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A053210.P9764519958448664725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n + (a (n - 1) + a (n - 1))

end

end A053210.P9764519958448664725

namespace A053210

/-- `Δ[A001747(n+1)]+a(n-1)+a(n-1)` -/
def P9764519958448664725.Spec : Prop :=
  ∀ n, P9764519958448664725.a n = A053210 n

end A053210

/-! ## A053210.P9712630999052901130

`A110299(n+1)-A111209(n+1)`
-/

namespace A053210.P9712630999052901130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110299 (n + 1) - A111209 (n + 1)

end

end A053210.P9712630999052901130

namespace A053210

/-- `A110299(n+1)-A111209(n+1)` -/
def P9712630999052901130.Spec : Prop :=
  ∀ n, P9712630999052901130.a n = A053210 n

end A053210

/-! ## A053210.P6317662737552830577

`A000040(n+1)+A110299(n+1)-A000079(n+1)`
-/

namespace A053210.P6317662737552830577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A110299 (n + 1) - A000079 (n + 1))

end

end A053210.P6317662737552830577

namespace A053210

/-- `A000040(n+1)+A110299(n+1)-A000079(n+1)` -/
def P6317662737552830577.Spec : Prop :=
  ∀ n, P6317662737552830577.a n = A053210 n

end A053210

/-!
# A053211: Cototients of consecutive pure powers of primes.

The programs for A053211, there is no canonical definition to state claims against.
-/

/-! ## A053211.P9962352654121210048

`A051953(A025475(n+2))`
-/

namespace A053211.P9962352654121210048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A025475 (n + 2)).toNat

end

end A053211.P9962352654121210048

/-! ## A053211.P12748348575176921717

`A053198(n+1)/(A025476(n+1)-1)`
-/

namespace A053211.P12748348575176921717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053198 (n + 1) : ℚ) / (A025476 (n + 1) - 1 : ℚ)

end

end A053211.P12748348575176921717

/-! ## A053211.P17665364390421135465

`A025475(n+2)-A053198(n+1)`
-/

namespace A053211.P17665364390421135465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - A053198 (n + 1)

end

end A053211.P17665364390421135465

/-! ## A053211.P502683056523980239

`A025475(n+2)/A025476(n+1)`
-/

namespace A053211.P502683056523980239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025475 (n + 2) : ℚ) / (A025476 (n + 1) : ℚ)

end

end A053211.P502683056523980239

/-! ## A053211.P152584903588192981

`A025475(n+2)/p?[A025478(n+1)]`
-/

namespace A053211.P152584903588192981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025475 (n + 2) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A053211.P152584903588192981

/-! ## A053211.P10163099107844136990

`filter[A306458(n+1), A069513(#)]`
-/

namespace A053211.P10163099107844136990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A053211.P10163099107844136990

/-! ## A053211.P5457972544216318943

`A134612(n+1)-A000010(A134612(n+1))`
-/

namespace A053211.P5457972544216318943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1) - A000010 (A134612 (n + 1)).toNat

end

end A053211.P5457972544216318943

/-!
# A053212: Number of divisors of the minimal numbers (A007416).

The programs for A053212, there is no canonical definition to state claims against.
-/

/-! ## A053212.P6539569231516584824

`A000005(A007416(n+1))`
-/

namespace A053212.P6539569231516584824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007416 (n + 1)).toNat

end

end A053212.P6539569231516584824

/-! ## A053212.P15861435528497250172

`∑{d}[A007416(n+1), gcd(#, A165596(n))]`
-/

namespace A053212.P15861435528497250172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A165596 n)

end

end A053212.P15861435528497250172

/-! ## A053212.P4569011745546292998

`∑{d}[A007416(n+1), A000010((or(2, #)-#)!)]`
-/

namespace A053212.P4569011745546292998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (Nat.factorial ((Nat.lor 2 d : ℤ) - (d : ℤ)).toNat)

end

end A053212.P4569011745546292998

/-! ## A053212.P6353373735730531928

`∑{d}[A007416(n+1), A008620((or(2, #)-#)!)]`
-/

namespace A053212.P6353373735730531928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008620 (Nat.factorial ((Nat.lor 2 d : ℤ) - (d : ℤ)).toNat)

end

end A053212.P6353373735730531928

/-! ## A053212.P17302706437673750550

`∑{d}[A007416(n+1), A030298((or(2, #)-#)!)]`
-/

namespace A053212.P17302706437673750550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A030298 (Nat.factorial ((Nat.lor 2 d : ℤ) - (d : ℤ)).toNat)

end

end A053212.P17302706437673750550

/-! ## A053212.P13484170410506675293

`∑{d}[A007416(n+1), A030311((or(2, #)-#)!)]`
-/

namespace A053212.P13484170410506675293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A030311 (Nat.factorial ((Nat.lor 2 d : ℤ) - (d : ℤ)).toNat)

end

end A053212.P13484170410506675293

/-! ## A053212.P13062674800741583808

`∑{d}[A007416(n+1), A165596(#)²]`
-/

namespace A053212.P13062674800741583808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A165596 d ^ 2

end

end A053212.P13062674800741583808

/-! ## A053212.P7140247964586839829

`∑{d}[A007416(n+1), A001221(A001316(#))]`
-/

namespace A053212.P7140247964586839829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A001316 d).toNat

end

end A053212.P7140247964586839829

/-!
# A053213: Differences between the minimal numbers (A007416).

The programs for A053213, there is no canonical definition to state claims against.
-/

/-! ## A053213.P15293579434027047085

`Δ[A007416(n+1)]`
-/

namespace A053213.P15293579434027047085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053213.P15293579434027047085

/-! ## A053213.P10885948113057524517

`abs(Δ[A007416(-xor(n, -1))])`
-/

namespace A053213.P10885948113057524517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053213.P10885948113057524517

/-! ## A053213.P12717871105079770058

`Δ[record[A007416(A133310(n))]]`
-/

namespace A053213.P12717871105079770058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053213.P12717871105079770058

/-! ## A053213.P7786462943360475866

`Δ[record[A007416(A154958(n))]]`
-/

namespace A053213.P7786462943360475866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053213.P7786462943360475866

/-! ## A053213.P15378836810010654335

`Δ[record[A007416(A246694(n))]]`
-/

namespace A053213.P15378836810010654335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053213.P15378836810010654335

/-! ## A053213.P3426255505963934601

`Δ[record[A007416(A324347(n))]]`
-/

namespace A053213.P3426255505963934601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053213.P3426255505963934601

/-! ## A053213.P13641142703853084894

`Δ[record[A007416(A328396(n))]]`
-/

namespace A053213.P13641142703853084894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053213.P13641142703853084894

/-! ## A053213.P10888089022075457761

`abs(Δ[A007416(A028242(2*n))])`
-/

namespace A053213.P10888089022075457761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053213.P10888089022075457761

/-! ## A053213.P15349392357893477943

`Δ[record[A005179(A000005(n+1))]]`
-/

namespace A053213.P15349392357893477943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A000005 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053213.P15349392357893477943

/-! ## A053213.P5385196032806592847

`A007416(n+2)-A007416(n+1)`
-/

namespace A053213.P5385196032806592847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 2) - A007416 (n + 1)

end

end A053213.P5385196032806592847

/-!
# A053214: Central binomial coefficients (A000984) read mod 2n, with a(0)=1.

The programs for A053214, the canonical program `A053214.P12955992535722284723` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053214 has offset 0).

The definition of A053214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053214.P12955992535722284723

`C(2, n+2)+A042970(A008574(n)-2*n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053214

/-- `C(2, n+2)+A042970(A008574(n)-2*n)` -/
def P12955992535722284723.Spec : Prop :=
  ∀ n, P12955992535722284723.a n = A053214 n

theorem P12955992535722284723.correct : P12955992535722284723.Spec := by
  intro n
  simp only [A053214]

end A053214

/-! ## A053214.P1440366085327363856

`A042970(A004277(n))+A000007(n)`
-/

namespace A053214.P1440366085327363856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (A004277 n).toNat + A000007 n

end

end A053214.P1440366085327363856

namespace A053214

/-- `A042970(A004277(n))+A000007(n)` -/
def P1440366085327363856.Spec : Prop :=
  ∀ n, P1440366085327363856.a n = A053214 n

end A053214

/-! ## A053214.P1898713283689394006

`A042970(A008574(n)-2*n)+A000007(n)`
-/

namespace A053214.P1898713283689394006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (A008574 n - (2 * n : ℤ)).toNat + A000007 n

end

end A053214.P1898713283689394006

namespace A053214

/-- `A042970(A008574(n)-2*n)+A000007(n)` -/
def P1898713283689394006.Spec : Prop :=
  ∀ n, P1898713283689394006.a n = A053214 n

end A053214

/-! ## A053214.P17894032568389180536

`A042970(A008574(n)-2*n)^A001222(A008578(n+1))`
-/

namespace A053214.P17894032568389180536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042970 (A008574 n - (2 * n : ℤ)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A053214.P17894032568389180536

namespace A053214

/-- `A042970(A008574(n)-2*n)^A001222(A008578(n+1))` -/
def P17894032568389180536.Spec : Prop :=
  ∀ n, P17894032568389180536.a n = (A053214 n : ℚ)

end A053214

/-! ## A053214.P18061780086590273510

`A163811(2*n)+A042970(A008574(n)-2*n)`
-/

namespace A053214.P18061780086590273510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (2 * n) + A042970 (A008574 n - (2 * n : ℤ)).toNat

end

end A053214.P18061780086590273510

namespace A053214

/-- `A163811(2*n)+A042970(A008574(n)-2*n)` -/
def P18061780086590273510.Spec : Prop :=
  ∀ n, P18061780086590273510.a n = A053214 n

end A053214

/-! ## A053214.P15782769425348181413

`A042970(A008574(n)-2*n)^A242481(A259260(n+1))`
-/

namespace A053214.P15782769425348181413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A042970 (A008574 n - (2 * n : ℤ)).toNat : ℚ) ^ (A242481 (A259260 (n + 1)).toNat : ℤ)

end

end A053214.P15782769425348181413

namespace A053214

/-- `A042970(A008574(n)-2*n)^A242481(A259260(n+1))` -/
def P15782769425348181413.Spec : Prop :=
  ∀ n, P15782769425348181413.a n = (A053214 n : ℚ)

end A053214

/-! ## A053214.P9453515224092268909

`A137676(A004274(2*n+1))+A042970(A008574(n)-2*n)`
-/

namespace A053214.P9453515224092268909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (A004274 (2 * n + 1)).toNat + A042970 (A008574 n - (2 * n : ℤ)).toNat

end

end A053214.P9453515224092268909

namespace A053214

/-- `A137676(A004274(2*n+1))+A042970(A008574(n)-2*n)` -/
def P9453515224092268909.Spec : Prop :=
  ∀ n, P9453515224092268909.a n = A053214 n

end A053214

/-! ## A053214.P13554694785448132722

`A042970(A008574(n)-2*n)+A000035(A008458(n))`
-/

namespace A053214.P13554694785448132722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (A008574 n - (2 * n : ℤ)).toNat + A000035 (A008458 n).toNat

end

end A053214.P13554694785448132722

namespace A053214

/-- `A042970(A008574(n)-2*n)+A000035(A008458(n))` -/
def P13554694785448132722.Spec : Prop :=
  ∀ n, P13554694785448132722.a n = A053214 n

end A053214

/-! ## A053214.P13924385189498917107

`A042970(A008574(n)-2*n)+A014029(A154385(n+1))`
-/

namespace A053214.P13924385189498917107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (A008574 n - (2 * n : ℤ)).toNat + A014029 (A154385 (n + 1)).toNat

end

end A053214.P13924385189498917107

namespace A053214

/-- `A042970(A008574(n)-2*n)+A014029(A154385(n+1))` -/
def P13924385189498917107.Spec : Prop :=
  ∀ n, P13924385189498917107.a n = A053214 n

end A053214

/-! ## A053214.P14315384173814302677

`A042970(A008574(n)-2*n)+A008966(2*(n+1)²)`
-/

namespace A053214.P14315384173814302677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (A008574 n - (2 * n : ℤ)).toNat + A008966 (2 * (n + 1) ^ 2)

end

end A053214.P14315384173814302677

namespace A053214

/-- `A042970(A008574(n)-2*n)+A008966(2*(n+1)²)` -/
def P14315384173814302677.Spec : Prop :=
  ∀ n, P14315384173814302677.a n = A053214 n

end A053214

/-! ## A053214.P11400468955694715109

`A042970(A008574(n)-2*n)-A008683(2*(n+1)²)`
-/

namespace A053214.P11400468955694715109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (A008574 n - (2 * n : ℤ)).toNat - A008683 (2 * (n + 1) ^ 2)

end

end A053214.P11400468955694715109

namespace A053214

/-- `A042970(A008574(n)-2*n)-A008683(2*(n+1)²)` -/
def P11400468955694715109.Spec : Prop :=
  ∀ n, P11400468955694715109.a n = A053214 n

end A053214

/-! ## A053214.P16985813070519465167

`A000984(n)%(abs(1-n)+1+n)`
-/

namespace A053214.P16985813070519465167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 n) (|1 - (n : ℤ)| + 1 + (n : ℤ))

end

end A053214.P16985813070519465167

namespace A053214

/-- `A000984(n)%(abs(1-n)+1+n)` -/
def P16985813070519465167.Spec : Prop :=
  ∀ n, P16985813070519465167.a n = A053214 n

end A053214

/-! ## A053214.P5501619467921944982

`((n+1)*A000108(n))%(abs(1-2*n)+1)`
-/

namespace A053214.P5501619467921944982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A000108 n) (|1 - (2 * n : ℤ)| + 1)

end

end A053214.P5501619467921944982

namespace A053214

/-- `((n+1)*A000108(n))%(abs(1-2*n)+1)` -/
def P5501619467921944982.Spec : Prop :=
  ∀ n, P5501619467921944982.a n = A053214 n

end A053214

/-! ## A053214.P2406630434824319134

`A001405(2*n)%A233583(Δ[n²])`
-/

namespace A053214.P2406630434824319134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001405 (2 * n)) (A233583 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A053214.P2406630434824319134

namespace A053214

/-- `A001405(2*n)%A233583(Δ[n²])` -/
def P2406630434824319134.Spec : Prop :=
  ∀ n, P2406630434824319134.a n = A053214 n

end A053214

/-! ## A053214.P17157781956308534541

`record[A081668(n)]%A233583(A267872(n))`
-/

namespace A053214.P17157781956308534541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A233583 (A267872 n).toNat)

end

end A053214.P17157781956308534541

namespace A053214

/-- `record[A081668(n)]%A233583(A267872(n))` -/
def P17157781956308534541.Spec : Prop :=
  ∀ n, P17157781956308534541.a n = A053214 n

end A053214

/-! ## A053214.P14540719758756483607

`A051945(n)%A014682(A008574(n))`
-/

namespace A053214.P14540719758756483607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051945 n) (A014682 (A008574 n).toNat)

end

end A053214.P14540719758756483607

namespace A053214

/-- `A051945(n)%A014682(A008574(n))` -/
def P14540719758756483607.Spec : Prop :=
  ∀ n, P14540719758756483607.a n = A053214 n

end A053214

/-! ## A053214.P16853065961504957884

`A050477(n)%A014682(A008574(n))`
-/

namespace A053214.P16853065961504957884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050477 n) (A014682 (A008574 n).toNat)

end

end A053214.P16853065961504957884

namespace A053214

/-- `A050477(n)%A014682(A008574(n))` -/
def P16853065961504957884.Spec : Prop :=
  ∀ n, P16853065961504957884.a n = A053214 n

end A053214

/-! ## A053214.P2913987477427700403

`A002457(n)%A001281(A008574(n))`
-/

namespace A053214.P2913987477427700403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002457 n) (A001281 (A008574 n).toNat)

end

end A053214.P2913987477427700403

namespace A053214

/-- `A002457(n)%A001281(A008574(n))` -/
def P2913987477427700403.Spec : Prop :=
  ∀ n, P2913987477427700403.a n = A053214 n

end A053214

/-!
# A053215: Sum of divisors of those numbers n such that n and n+1 have the same sum of divisors.

The programs for A053215, there is no canonical definition to state claims against.
-/

/-! ## A053215.P9490085885077506803

`∑{d}[A002961(n+1), #]`
-/

namespace A053215.P9490085885077506803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053215.P9490085885077506803

/-! ## A053215.P6106614126726118218

`∑{d}[A231546(n+1), #]`
-/

namespace A053215.P6106614126726118218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053215.P6106614126726118218

/-! ## A053215.P1836802927082891655

`∑{d}[A225757(Δ[n²]), #]`
-/

namespace A053215.P1836802927082891655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053215.P1836802927082891655

/-! ## A053215.P5235577229651448347

`∑{d}[A225757(2*(n+1))-1, #]`
-/

namespace A053215.P5235577229651448347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (2 * (n + 1)) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053215.P5235577229651448347

/-! ## A053215.P16812335733060840632

`∑{d}[record[A225757(n+1)+(-1)^n], #]`
-/

namespace A053215.P16812335733060840632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1) + (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053215.P16812335733060840632

/-! ## A053215.P17094001986446085334

`∑{d}[record[A002961(A065648(n))], #]`
-/

namespace A053215.P17094001986446085334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053215.P17094001986446085334

/-! ## A053215.P6322158878232473986

`∑{d}[record[A225757(A000265(n+1))], #]`
-/

namespace A053215.P6322158878232473986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053215.P6322158878232473986

/-! ## A053215.P12144572448313982373

`∑{d}[record[A225757(A029578(n+3))], #]`
-/

namespace A053215.P12144572448313982373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (A029578 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053215.P12144572448313982373

/-! ## A053215.P14075583979500857805

`∑{d}[record[A225757(2*A065648(n))], #]`
-/

namespace A053215.P14075583979500857805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (2 * A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A053215.P14075583979500857805

/-! ## A053215.P1731154844463504790

`∑{d}[record[A225757(n+1)/A001511(n+1)], #]`
-/

namespace A053215.P1731154844463504790
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225757 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A053215.P1731154844463504790

/-!
# A053216: Number of integers that can be partitioned into squares in n different ways, or the number of times n occurs in A001156.

The programs for A053216, there is no canonical definition to state claims against.
-/

/-! ## A053216.P4922480603098648902

`Δ[comp[A001156(n)+n]-n]`
-/

namespace A053216.P4922480603098648902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053216.P4922480603098648902

/-! ## A053216.P11910285748024746320

`A002113(Δ[comp[A001156(n)+n]])`
-/

namespace A053216.P11910285748024746320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053216.P11910285748024746320

/-! ## A053216.P10805729963464191630

`A253566(Δ[comp[A001156(n)+n]])`
-/

namespace A053216.P10805729963464191630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053216.P10805729963464191630

/-! ## A053216.P14523608027186464818

`A337117(Δ[comp[A001156(n)+n]])`
-/

namespace A053216.P14523608027186464818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337117 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053216.P14523608027186464818

/-! ## A053216.P1707093876139870342

`A052064(Δ[comp[A001156(n)+n]])%6`
-/

namespace A053216.P1707093876139870342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052064 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 6

end

end A053216.P1707093876139870342

/-!
# A053217: Numbers that do not occur in A001156.

The programs for A053217, there is no canonical definition to state claims against.
-/

/-! ## A053217.P3401929801192932214

`comp[A265260(n)]`
-/

namespace A053217.P3401929801192932214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A053217.P3401929801192932214

/-! ## A053217.P3178122530105254971

`comp[A001156(n)-1]+1`
-/

namespace A053217.P3178122530105254971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A053217.P3178122530105254971

/-! ## A053217.P3592796210397988708

`comp[∑[A078134(n+1)]]+1`
-/

namespace A053217.P3592796210397988708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A053217.P3592796210397988708

/-! ## A053217.P3482664457900877132

`comp[A001156(n)-A000007(n)]`
-/

namespace A053217.P3482664457900877132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A053217.P3482664457900877132

/-! ## A053217.P10110417249148580189

`comp[A001156(n)-A185012(n)]`
-/

namespace A053217.P10110417249148580189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n - A185012 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A053217.P10110417249148580189

/-! ## A053217.P13482024586641864717

`comp[A001156(n)%A000041(n)]`
-/

namespace A053217.P13482024586641864717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001156 n) (A000041 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A053217.P13482024586641864717

/-! ## A053217.P5533671540723246381

`comp[A001156(n+2)%A054744(n+1)]`
-/

namespace A053217.P5533671540723246381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001156 (n + 2)) (A054744 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A053217.P5533671540723246381

/-! ## A053217.P14111863703698351187

`eq[0, A053216(n+1)]+1`
-/

namespace A053217.P14111863703698351187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053217.P14111863703698351187

/-! ## A053217.P15333427242948411288

`eq[char[A001156(n)], A000038(n)]`
-/

namespace A053217.P15333427242948411288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053217.P15333427242948411288

/-! ## A053217.P10984060161903970071

`eq[char[A265260(n)], A000038(n)]`
-/

namespace A053217.P10984060161903970071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053217.P10984060161903970071

/-! ## A053217.P8990466546071516679

`eq[0, A053216(A065033(2*n))]`
-/

namespace A053217.P8990466546071516679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053216 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053217.P8990466546071516679

/-! ## A053217.P12128810461417431435

`eq[char[A265260(n)], A265260(2*n+1)]`
-/

namespace A053217.P12128810461417431435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053217.P12128810461417431435

/-! ## A053217.P14163302399978929607

`eq[0, A053216(A233583(n+1))]`
-/

namespace A053217.P14163302399978929607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053216 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053217.P14163302399978929607

/-!
# A053218: Triangle read by rows: T(n,k) = T(n,k-1) + T(n-1,k-1) for k >= 2 with T(n,1) = n.

The programs for A053218, the canonical program `A053218.P1097591317107812432` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053218 has offset 1).

The definition of A053218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053218.P16234049268872976508

`A152920(A007401(n+1))`
-/

namespace A053218.P16234049268872976508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 (A007401 (n + 1)).toNat

end

end A053218.P16234049268872976508

namespace A053218

/-- `A152920(A007401(n+1))` -/
def P16234049268872976508.Spec : Prop :=
  ∀ n, P16234049268872976508.a n = A053218 (n + 1)

end A053218

/-! ## A053218.P10523520115194280344

`A152920(n)+A059268(n)`
-/

namespace A053218.P10523520115194280344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 n + A059268 n

end

end A053218.P10523520115194280344

namespace A053218

/-- `A152920(n)+A059268(n)` -/
def P10523520115194280344.Spec : Prop :=
  ∀ n, P10523520115194280344.a n = A053218 (n + 1)

end A053218

/-! ## A053218.P12947116915862058375

`(A294317(n)+2)*A059268(n)/2`
-/

namespace A053218.P12947116915862058375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A294317 n + 2) * A059268 n : ℚ) / 2

end

end A053218.P12947116915862058375

namespace A053218

/-- `(A294317(n)+2)*A059268(n)/2` -/
def P12947116915862058375.Spec : Prop :=
  ∀ n, P12947116915862058375.a n = (A053218 (n + 1) : ℚ)

end A053218

/-! ## A053218.P4086129038354363255

`A152920(n)+A000079(A002262(n))`
-/

namespace A053218.P4086129038354363255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 n + A000079 (A002262 n).toNat

end

end A053218.P4086129038354363255

namespace A053218

/-- `A152920(n)+A000079(A002262(n))` -/
def P4086129038354363255.Spec : Prop :=
  ∀ n, P4086129038354363255.a n = A053218 (n + 1)

end A053218

/-! ## A053218.P1097591317107812432

`A130128(n+1)+A001787(A002262(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053218

/-- `A130128(n+1)+A001787(A002262(n))` -/
def P1097591317107812432.Spec : Prop :=
  ∀ n, P1097591317107812432.a n = A053218 (n + 1)

theorem P1097591317107812432.correct : P1097591317107812432.Spec := by
  intro n
  simp only [A053218, Nat.add_sub_cancel]

end A053218

/-! ## A053218.P14473321414721182447

`A152920(n)+A131577(A002260(n+1))`
-/

namespace A053218.P14473321414721182447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152920 n + A131577 (A002260 (n + 1)).toNat

end

end A053218.P14473321414721182447

namespace A053218

/-- `A152920(n)+A131577(A002260(n+1))` -/
def P14473321414721182447.Spec : Prop :=
  ∀ n, P14473321414721182447.a n = A053218 (n + 1)

end A053218

/-! ## A053218.P13125537534850034635

`A053219(A038722(n+1))`
-/

namespace A053218.P13125537534850034635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053219 (A038722 (n + 1)).toNat

end

end A053218.P13125537534850034635

namespace A053218

/-- `A053219(A038722(n+1))` -/
def P13125537534850034635.Spec : Prop :=
  ∀ n, P13125537534850034635.a n = A053218 (n + 1)

end A053218

/-! ## A053218.P4997294349267263546

`A062111(A061579(n))+A059268(n)`
-/

namespace A053218.P4997294349267263546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 (A061579 n).toNat + A059268 n

end

end A053218.P4997294349267263546

namespace A053218

/-- `A062111(A061579(n))+A059268(n)` -/
def P4997294349267263546.Spec : Prop :=
  ∀ n, P4997294349267263546.a n = A053218 (n + 1)

end A053218

/-! ## A053218.P11394905046012287300

`A104732(A245300(n)+1)`
-/

namespace A053218.P11394905046012287300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104732 (A245300 n + 1).toNat

end

end A053218.P11394905046012287300

namespace A053218

/-- `A104732(A245300(n)+1)` -/
def P11394905046012287300.Spec : Prop :=
  ∀ n, P11394905046012287300.a n = A053218 (n + 1)

end A053218

/-! ## A053218.P16082734017791485798

`A210489(A245300(n)+A025581(n))`
-/

namespace A053218.P16082734017791485798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A245300 n + A025581 n).toNat

end

end A053218.P16082734017791485798

namespace A053218

/-- `A210489(A245300(n)+A025581(n))` -/
def P16082734017791485798.Spec : Prop :=
  ∀ n, P16082734017791485798.a n = A053218 (n + 1)

end A053218

/-!
# A053219: Reverse of triangle A053218, read by rows.

The programs for A053219, the canonical program `A053219.P2863116976655408559` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053219 has offset 1).

The definition of A053219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053219.P2863116976655408559

`A130321(n)+A062111(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053219

/-- `A130321(n)+A062111(n)` -/
def P2863116976655408559.Spec : Prop :=
  ∀ n, P2863116976655408559.a n = A053219 (n + 1)

theorem P2863116976655408559.correct : P2863116976655408559.Spec := by
  intro n
  simp only [A053219, Nat.add_sub_cancel]

end A053219

/-! ## A053219.P11670844036493770240

`A327916(n)-A062111(n)`
-/

namespace A053219.P11670844036493770240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327916 n - A062111 n

end

end A053219.P11670844036493770240

namespace A053219

/-- `A327916(n)-A062111(n)` -/
def P11670844036493770240.Spec : Prop :=
  ∀ n, P11670844036493770240.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P4674941311004399419

`A108872(n+1)/2*A130321(n)`
-/

namespace A053219.P4674941311004399419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) : ℚ) / 2 * (A130321 n : ℚ)

end

end A053219.P4674941311004399419

namespace A053219

/-- `A108872(n+1)/2*A130321(n)` -/
def P4674941311004399419.Spec : Prop :=
  ∀ n, P4674941311004399419.a n = (A053219 (n + 1) : ℚ)

end A053219

/-! ## A053219.P7283525434915344264

`(A051162(n)+2)*A130321(n)/2`
-/

namespace A053219.P7283525434915344264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051162 n + 2) * A130321 n : ℚ) / 2

end

end A053219.P7283525434915344264

namespace A053219

/-- `(A051162(n)+2)*A130321(n)/2` -/
def P7283525434915344264.Spec : Prop :=
  ∀ n, P7283525434915344264.a n = (A053219 (n + 1) : ℚ)

end A053219

/-! ## A053219.P8119077205487899831

`A062111(n)+A059268(A061579(n))`
-/

namespace A053219.P8119077205487899831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 n + A059268 (A061579 n).toNat

end

end A053219.P8119077205487899831

namespace A053219

/-- `A062111(n)+A059268(A061579(n))` -/
def P8119077205487899831.Spec : Prop :=
  ∀ n, P8119077205487899831.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P13382216844221776296

`A053218(A038722(n+1))`
-/

namespace A053219.P13382216844221776296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A038722 (n + 1)).toNat

end

end A053219.P13382216844221776296

namespace A053219

/-- `A053218(A038722(n+1))` -/
def P13382216844221776296.Spec : Prop :=
  ∀ n, P13382216844221776296.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P6906432486730830349

`A053218(A061579(n)+1)`
-/

namespace A053219.P6906432486730830349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A061579 n + 1).toNat

end

end A053219.P6906432486730830349

namespace A053219

/-- `A053218(A061579(n)+1)` -/
def P6906432486730830349.Spec : Prop :=
  ∀ n, P6906432486730830349.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P15475711834845402521

`A053218(A114327(n)+1+n)`
-/

namespace A053219.P15475711834845402521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A114327 n + 1 + (n : ℤ)).toNat

end

end A053219.P15475711834845402521

namespace A053219

/-- `A053218(A114327(n)+1+n)` -/
def P15475711834845402521.Spec : Prop :=
  ∀ n, P15475711834845402521.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P11824482036450359108

`A053218(A093995(n+1)-n)`
-/

namespace A053219.P11824482036450359108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A053219.P11824482036450359108

namespace A053219

/-- `A053218(A093995(n+1)-n)` -/
def P11824482036450359108.Spec : Prop :=
  ∀ n, P11824482036450359108.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P4030290095120060381

`A053218(A002024(n+1)²-n)`
-/

namespace A053219.P4030290095120060381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A053219.P4030290095120060381

namespace A053219

/-- `A053218(A002024(n+1)²-n)` -/
def P4030290095120060381.Spec : Prop :=
  ∀ n, P4030290095120060381.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P7780574502756490051

`A047858(A007401(n+1))-A047858(n)`
-/

namespace A053219.P7780574502756490051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (A007401 (n + 1)).toNat - A047858 n

end

end A053219.P7780574502756490051

namespace A053219

/-- `A047858(A007401(n+1))-A047858(n)` -/
def P7780574502756490051.Spec : Prop :=
  ∀ n, P7780574502756490051.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P10422152375729925051

`A062111(A007401(n+1))-A062111(n)`
-/

namespace A053219.P10422152375729925051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 (A007401 (n + 1)).toNat - A062111 n

end

end A053219.P10422152375729925051

namespace A053219

/-- `A062111(A007401(n+1))-A062111(n)` -/
def P10422152375729925051.Spec : Prop :=
  ∀ n, P10422152375729925051.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P3527203323794774878

`A047858(A014132(n+1)-1)-A047858(n)`
-/

namespace A053219.P3527203323794774878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (A014132 (n + 1) - 1).toNat - A047858 n

end

end A053219.P3527203323794774878

namespace A053219

/-- `A047858(A014132(n+1)-1)-A047858(n)` -/
def P3527203323794774878.Spec : Prop :=
  ∀ n, P3527203323794774878.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P11916645527771285411

`A062111(A014132(n+1)-1)-A062111(n)`
-/

namespace A053219.P11916645527771285411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 (A014132 (n + 1) - 1).toNat - A062111 n

end

end A053219.P11916645527771285411

namespace A053219

/-- `A062111(A014132(n+1)-1)-A062111(n)` -/
def P11916645527771285411.Spec : Prop :=
  ∀ n, P11916645527771285411.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P11577199394997613201

`A062111(comp[∑[n]])`
-/

namespace A053219.P11577199394997613201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062111 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A053219.P11577199394997613201

namespace A053219

/-- `A062111(comp[∑[n]])` -/
def P11577199394997613201.Spec : Prop :=
  ∀ n, P11577199394997613201.a n = A053219 (n + 1)

end A053219

/-! ## A053219.P8792274033975142227

`A047858(A014132(n+1))+A002262(n)`
-/

namespace A053219.P8792274033975142227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047858 (A014132 (n + 1)).toNat + A002262 n

end

end A053219.P8792274033975142227

namespace A053219

/-- `A047858(A014132(n+1))+A002262(n)` -/
def P8792274033975142227.Spec : Prop :=
  ∀ n, P8792274033975142227.a n = A053219 (n + 1)

end A053219

/-!
# A053220: a(n) = (3*n-1) * 2^(n-2).

The programs for A053220, the canonical program `A053220.P736312978307705652` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053220 has offset 1).

The definition of A053220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053220.P736312978307705652

`(2+3*n)*2^(n-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053220

/-- `(2+3*n)*2^(n-1)` -/
def P736312978307705652.Spec : Prop :=
  ∀ n, P736312978307705652.a n = (A053220 (n + 1) : ℚ)

end A053220

/-! ## A053220.P7734783073820379039

`(3*(n+1)-1)*2^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A053220.P7734783073820379039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A053220.P7734783073820379039

namespace A053220

/-- `(3*(n+1)-1)*2^(n-1)` -/
def P7734783073820379039.Spec : Prop :=
  ∀ n, P7734783073820379039.a n = (A053220 (n + 1) : ℚ)

end A053220

/-! ## A053220.P18340438753009179684

`ogf((1+x)/(1-4x+4x^2))`
-/

namespace A053220.P18340438753009179684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -4, 4] n

end

end A053220.P18340438753009179684

namespace A053220

/-- `ogf((1+x)/(1-4x+4x^2))` -/
def P18340438753009179684.Spec : Prop :=
  ∀ n, P18340438753009179684.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P3392520705943904448

`∏[4-4/a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A053220.P3392520705943904448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  4 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A053220.P3392520705943904448

namespace A053220

/-- `∏[4-4/a(n-1)]` -/
def P3392520705943904448.Spec : Prop :=
  ∀ n, P3392520705943904448.a n = (A053220 (n + 1) : ℚ)

end A053220

/-! ## A053220.P15076625813688625322

`abs(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=5`
-/

namespace A053220.P15076625813688625322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  |4 * (a (n - 1) - a (n - 2))|

end

end A053220.P15076625813688625322

namespace A053220

/-- `abs(4*(a(n-1)-a(n-2)))` -/
def P15076625813688625322.Spec : Prop :=
  ∀ n, P15076625813688625322.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P13119185031994496760

`-(4*(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=5`
-/

namespace A053220.P13119185031994496760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  -(4 * (a (n - 2) - a (n - 1)))

end

end A053220.P13119185031994496760

namespace A053220

/-- `-(4*(a(n-2)-a(n-1)))` -/
def P13119185031994496760.Spec : Prop :=
  ∀ n, P13119185031994496760.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P2351358469226589729

`floor(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A053220.P2351358469226589729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A053220.P2351358469226589729

namespace A053220

/-- `floor(4*(a(n-1)-a(n-2)))` -/
def P2351358469226589729.Spec : Prop :=
  ∀ n, P2351358469226589729.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P5401630365102144917

`ceil(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A053220.P5401630365102144917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A053220.P5401630365102144917

namespace A053220

/-- `ceil(4*(a(n-1)-a(n-2)))` -/
def P5401630365102144917.Spec : Prop :=
  ∀ n, P5401630365102144917.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P10009501719010157573

`round(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=5`

`round` is left out, it is the identity on integers.
-/

namespace A053220.P10009501719010157573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A053220.P10009501719010157573

namespace A053220

/-- `round(4*(a(n-1)-a(n-2)))` -/
def P10009501719010157573.Spec : Prop :=
  ∀ n, P10009501719010157573.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P6936111079251423853

`(a(n-1)-a(n-2))/(1/2)²` with `a(0)=1, a(1)=5`
-/

namespace A053220.P6936111079251423853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A053220.P6936111079251423853

namespace A053220

/-- `(a(n-1)-a(n-2))/(1/2)²` -/
def P6936111079251423853.Spec : Prop :=
  ∀ n, P6936111079251423853.a n = (A053220 (n + 1) : ℚ)

end A053220

/-! ## A053220.P13043910969098102089

`∑[A339252(n)]`
-/

namespace A053220.P13043910969098102089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053220.P13043910969098102089

namespace A053220

/-- `∑[A339252(n)]` -/
def P13043910969098102089.Spec : Prop :=
  ∀ n, P13043910969098102089.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P15398593899229221005

`A203150(Δ[n²])`
-/

namespace A053220.P15398593899229221005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203150 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053220.P15398593899229221005

namespace A053220

/-- `A203150(Δ[n²])` -/
def P15398593899229221005.Spec : Prop :=
  ∀ n, P15398593899229221005.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P4742895265401252228

`∑[∑[A106472(n)]]`
-/

namespace A053220.P4742895265401252228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053220.P4742895265401252228

namespace A053220

/-- `∑[∑[A106472(n)]]` -/
def P4742895265401252228.Spec : Prop :=
  ∀ n, P4742895265401252228.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P16886675678380199029

`abs(Δ[A085750(n+1)])`
-/

namespace A053220.P16886675678380199029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053220.P16886675678380199029

namespace A053220

/-- `abs(Δ[A085750(n+1)])` -/
def P16886675678380199029.Spec : Prop :=
  ∀ n, P16886675678380199029.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P10914120521802416490

`A066373(n+2)-2^n`
-/

namespace A053220.P10914120521802416490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066373 (n + 2) - (2 ^ n : ℤ)

end

end A053220.P10914120521802416490

namespace A053220

/-- `A066373(n+2)-2^n` -/
def P10914120521802416490.Spec : Prop :=
  ∀ n, P10914120521802416490.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P14424314743842392908

`A084858(n+1)-2^(n+1)`
-/

namespace A053220.P14424314743842392908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A053220.P14424314743842392908

namespace A053220

/-- `A084858(n+1)-2^(n+1)` -/
def P14424314743842392908.Spec : Prop :=
  ∀ n, P14424314743842392908.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P16356202734859954792

`A098156(n+2)-2^(n+2)`
-/

namespace A053220.P16356202734859954792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A053220.P16356202734859954792

namespace A053220

/-- `A098156(n+2)-2^(n+2)` -/
def P16356202734859954792.Spec : Prop :=
  ∀ n, P16356202734859954792.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P16968437107671980581

`A084861(n+3)-2^(n+3)`
-/

namespace A053220.P16968437107671980581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084861 (n + 3) - (2 ^ (n + 3) : ℤ)

end

end A053220.P16968437107671980581

namespace A053220

/-- `A084861(n+3)-2^(n+3)` -/
def P16968437107671980581.Spec : Prop :=
  ∀ n, P16968437107671980581.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P8263826950140037318

`A003945(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A053220.P8263826950140037318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003945 n + 2 * a (n - 1)

end

end A053220.P8263826950140037318

namespace A053220

/-- `A003945(n)+2*a(n-1)` -/
def P8263826950140037318.Spec : Prop :=
  ∀ n, P8263826950140037318.a n = A053220 (n + 1)

end A053220

/-! ## A053220.P3867252065586535486

`A042950(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A053220.P3867252065586535486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A042950 n + 2 * a (n - 1)

end

end A053220.P3867252065586535486

namespace A053220

/-- `A042950(n)+2*a(n-1)` -/
def P3867252065586535486.Spec : Prop :=
  ∀ n, P3867252065586535486.a n = A053220 (n + 1)

end A053220

/-!
# A053221: Row sums of triangle A053218.

The programs for A053221, the canonical program `A053221.P850033419058403302` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053221 has offset 1).

The definition of A053221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053221.P850033419058403302

`(n+3)*2^n-(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053221

/-- `(n+3)*2^n-(n+1)-1` -/
def P850033419058403302.Spec : Prop :=
  ∀ n, P850033419058403302.a n = A053221 (n + 1)

theorem P850033419058403302.correct : P850033419058403302.Spec := by
  intro n
  simp only [A053221, Nat.add_sub_cancel]

end A053221

/-! ## A053221.P17007321507884919693

`∑[∑[ogf((1-x-x^2)/(1-4x+4x^2))]]`
-/

namespace A053221.P17007321507884919693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P17007321507884919693

namespace A053221

/-- `∑[∑[ogf((1-x-x^2)/(1-4x+4x^2))]]` -/
def P17007321507884919693.Spec : Prop :=
  ∀ n, P17007321507884919693.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P1948788817733847791

`record[n*2^(n-3)-(n-1)]`
-/

namespace A053221.P1948788817733847791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053221.P1948788817733847791

namespace A053221

/-- `record[n*2^(n-3)-(n-1)]` -/
def P1948788817733847791.Spec : Prop :=
  ∀ n, P1948788817733847791.a n = (A053221 (n + 1) : ℚ)

end A053221

/-! ## A053221.P5105409169455420791

`∑[4*(a(n-1)-a(n-2))-1]` with `a(0)=1, a(1)=4`
-/

namespace A053221.P5105409169455420791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P5105409169455420791

namespace A053221

/-- `∑[4*(a(n-1)-a(n-2))-1]` -/
def P5105409169455420791.Spec : Prop :=
  ∀ n, P5105409169455420791.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P17861610107412676646

`∑[A047859(n)]`
-/

namespace A053221.P17861610107412676646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P17861610107412676646

namespace A053221

/-- `∑[A047859(n)]` -/
def P17861610107412676646.Spec : Prop :=
  ∀ n, P17861610107412676646.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P1193278555474098080

`∑[∑[∑[A109975(n)]]]`
-/

namespace A053221.P1193278555474098080
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P1193278555474098080

namespace A053221

/-- `∑[∑[∑[A109975(n)]]]` -/
def P1193278555474098080.Spec : Prop :=
  ∀ n, P1193278555474098080.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P1874124535867953319

`∑[∑[A045891(n+1)]]`
-/

namespace A053221.P1874124535867953319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P1874124535867953319

namespace A053221

/-- `∑[∑[A045891(n+1)]]` -/
def P1874124535867953319.Spec : Prop :=
  ∀ n, P1874124535867953319.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P18139132265502753198

`∑[Δ[A001792(n)]-1]`
-/

namespace A053221.P18139132265502753198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P18139132265502753198

namespace A053221

/-- `∑[Δ[A001792(n)]-1]` -/
def P18139132265502753198.Spec : Prop :=
  ∀ n, P18139132265502753198.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P14253253380024773208

`∑[A045623(n+1)-1]`
-/

namespace A053221.P14253253380024773208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P14253253380024773208

namespace A053221

/-- `∑[A045623(n+1)-1]` -/
def P14253253380024773208.Spec : Prop :=
  ∀ n, P14253253380024773208.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P16557598417045149821

`∑[∑[abs(A081037(n+1))]]`
-/

namespace A053221.P16557598417045149821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081037 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P16557598417045149821

namespace A053221

/-- `∑[∑[abs(A081037(n+1))]]` -/
def P16557598417045149821.Spec : Prop :=
  ∀ n, P16557598417045149821.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P699632077806084917

`∑[∑[A131352(n+1)/2]]`
-/

namespace A053221.P699632077806084917
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131352 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P699632077806084917

namespace A053221

/-- `∑[∑[A131352(n+1)/2]]` -/
def P699632077806084917.Spec : Prop :=
  ∀ n, P699632077806084917.a n = (A053221 (n + 1) : ℚ)

end A053221

/-! ## A053221.P12497770502919576461

`∑[A079859(n+4)/2-1]`
-/

namespace A053221.P12497770502919576461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079859 (n + 4) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P12497770502919576461

namespace A053221

/-- `∑[A079859(n+4)/2-1]` -/
def P12497770502919576461.Spec : Prop :=
  ∀ n, P12497770502919576461.a n = (A053221 (n + 1) : ℚ)

end A053221

/-! ## A053221.P1661217761651922826

`abs((n+3)*A000079(n)-2-n)`
-/

namespace A053221.P1661217761651922826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 3 : ℤ) * A000079 n - 2 - (n : ℤ)|

end

end A053221.P1661217761651922826

namespace A053221

/-- `abs((n+3)*A000079(n)-2-n)` -/
def P1661217761651922826.Spec : Prop :=
  ∀ n, P1661217761651922826.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P15970546492296614388

`∑[∑[∑[A034007(n+1)]]+1+n]`
-/

namespace A053221.P15970546492296614388
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P15970546492296614388

namespace A053221

/-- `∑[∑[∑[A034007(n+1)]]+1+n]` -/
def P15970546492296614388.Spec : Prop :=
  ∀ n, P15970546492296614388.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P9725666739360402166

`∑[A001792(n)+A000225(n)]`
-/

namespace A053221.P9725666739360402166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P9725666739360402166

namespace A053221

/-- `∑[A001792(n)+A000225(n)]` -/
def P9725666739360402166.Spec : Prop :=
  ∀ n, P9725666739360402166.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P11633038586297796230

`∑[A001787(n)+∑[A000079(n)]]`
-/

namespace A053221.P11633038586297796230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P11633038586297796230

namespace A053221

/-- `∑[A001787(n)+∑[A000079(n)]]` -/
def P11633038586297796230.Spec : Prop :=
  ∀ n, P11633038586297796230.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P8293396258904568214

`∑[∑[A339252(n)-A001787(n)]]`
-/

namespace A053221.P8293396258904568214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339252 n - A001787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P8293396258904568214

namespace A053221

/-- `∑[∑[A339252(n)-A001787(n)]]` -/
def P8293396258904568214.Spec : Prop :=
  ∀ n, P8293396258904568214.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P15537063298124797617

`∑[A255047(n+1)+A001787(n)]`
-/

namespace A053221.P15537063298124797617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n + 1) + A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053221.P15537063298124797617

namespace A053221

/-- `∑[A255047(n+1)+A001787(n)]` -/
def P15537063298124797617.Spec : Prop :=
  ∀ n, P15537063298124797617.a n = A053221 (n + 1)

end A053221

/-! ## A053221.P13986432837143905330

`(A131438(n+1)+n+1)/2`
-/

namespace A053221.P13986432837143905330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131438 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A053221.P13986432837143905330

namespace A053221

/-- `(A131438(n+1)+n+1)/2` -/
def P13986432837143905330.Spec : Prop :=
  ∀ n, P13986432837143905330.a n = (A053221 (n + 1) : ℚ)

end A053221

/-!
# A053222: First differences of sigma(n).

The programs for A053222, the canonical program `A053222.P10935068220858784370` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053222 has offset 1).

The definition of A053222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053222.P10935068220858784370

`A000203(n+2)-A000203(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053222

/-- `A000203(n+2)-A000203(n+1)` -/
def P10935068220858784370.Spec : Prop :=
  ∀ n, P10935068220858784370.a n = A053222 (n + 1)

theorem P10935068220858784370.correct : P10935068220858784370.Spec := by
  intro n
  simp only [A053222, Nat.add_sub_cancel]

end A053222

/-! ## A053222.P15971584499666353265

`∑{d}[n+2, #]-∑{d}[n+1, #]`
-/

namespace A053222.P15971584499666353265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A053222.P15971584499666353265

namespace A053222

/-- `∑{d}[n+2, #]-∑{d}[n+1, #]` -/
def P15971584499666353265.Spec : Prop :=
  ∀ n, P15971584499666353265.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P3109842614942877383

`Δ[A000203(n+1)]`
-/

namespace A053222.P3109842614942877383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053222.P3109842614942877383

namespace A053222

/-- `Δ[A000203(n+1)]` -/
def P3109842614942877383.Spec : Prop :=
  ∀ n, P3109842614942877383.a n = A053222 (n + 1)

theorem P3109842614942877383.correct : P3109842614942877383.Spec := by
  intro n
  simp only [A053222, Nat.add_sub_cancel, A053222.P3109842614942877383.f1, A053222.P3109842614942877383.a, A053222.P10935068220858784370.a, SequenceMachineLib.memo_apply]

end A053222

/-! ## A053222.P14081276673563938587

`Δ[A155085(n+1)]-1`
-/

namespace A053222.P14081276673563938587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A053222.P14081276673563938587

namespace A053222

/-- `Δ[A155085(n+1)]-1` -/
def P14081276673563938587.Spec : Prop :=
  ∀ n, P14081276673563938587.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P13531761578458794108

`2-Δ[A033879(n+1)]`
-/

namespace A053222.P13531761578458794108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A053222.P13531761578458794108

namespace A053222

/-- `2-Δ[A033879(n+1)]` -/
def P13531761578458794108.Spec : Prop :=
  ∀ n, P13531761578458794108.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P17475677484490965564

`Δ[A002659(n+1)/2]`
-/

namespace A053222.P17475677484490965564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002659 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053222.P17475677484490965564

namespace A053222

/-- `Δ[A002659(n+1)/2]` -/
def P17475677484490965564.Spec : Prop :=
  ∀ n, P17475677484490965564.a n = (A053222 (n + 1) : ℚ)

end A053222

/-! ## A053222.P8416125310913147437

`Δ[A074400(n+1)/2]`
-/

namespace A053222.P8416125310913147437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053222.P8416125310913147437

namespace A053222

/-- `Δ[A074400(n+1)/2]` -/
def P8416125310913147437.Spec : Prop :=
  ∀ n, P8416125310913147437.a n = (A053222 (n + 1) : ℚ)

end A053222

/-! ## A053222.P15398449119016281342

`2-A163553(n+1)+n`
-/

namespace A053222.P15398449119016281342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A163553 (n + 1) + (n : ℤ)

end

end A053222.P15398449119016281342

namespace A053222

/-- `2-A163553(n+1)+n` -/
def P15398449119016281342.Spec : Prop :=
  ∀ n, P15398449119016281342.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P14887359019909493228

`A053223(n)+a(n-1)` with `a(0)=2`
-/

namespace A053222.P14887359019909493228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A053223 n + a (n - 1)

end

end A053222.P14887359019909493228

namespace A053222

/-- `A053223(n)+a(n-1)` -/
def P14887359019909493228.Spec : Prop :=
  ∀ n, P14887359019909493228.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P2862724585387786386

`Δ[A062967(n+1)/2]+1`
-/

namespace A053222.P2862724585387786386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062967 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A053222.P2862724585387786386

namespace A053222

/-- `Δ[A062967(n+1)/2]+1` -/
def P2862724585387786386.Spec : Prop :=
  ∀ n, P2862724585387786386.a n = (A053222 (n + 1) : ℚ)

end A053222

/-! ## A053222.P3008182973408993628

`Δ[7*A000203(-xor(n, -1))]/7`
-/

namespace A053222.P3008182973408993628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000203 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 7

end

end A053222.P3008182973408993628

namespace A053222

/-- `Δ[7*A000203(-xor(n, -1))]/7` -/
def P3008182973408993628.Spec : Prop :=
  ∀ n, P3008182973408993628.a n = (A053222 (n + 1) : ℚ)

end A053222

/-! ## A053222.P8658665125808906865

`-Δ[-A000203(2*n-(n-1))]`
-/

namespace A053222.P8658665125808906865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A053222.P8658665125808906865

namespace A053222

/-- `-Δ[-A000203(2*n-(n-1))]` -/
def P8658665125808906865.Spec : Prop :=
  ∀ n, P8658665125808906865.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P7834065496730026951

`A054977(n)+A053246(n+1)`
-/

namespace A053222.P7834065496730026951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A053246 (n + 1)

end

end A053222.P7834065496730026951

namespace A053222

/-- `A054977(n)+A053246(n+1)` -/
def P7834065496730026951.Spec : Prop :=
  ∀ n, P7834065496730026951.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P5026979497040498142

`A092403(n+1)-A074400(n+1)`
-/

namespace A053222.P5026979497040498142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092403 (n + 1) - A074400 (n + 1)

end

end A053222.P5026979497040498142

namespace A053222

/-- `A092403(n+1)-A074400(n+1)` -/
def P5026979497040498142.Spec : Prop :=
  ∀ n, P5026979497040498142.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P13215536897977103026

`Δ[A326126(n+1)+A007913(n+1)]`
-/

namespace A053222.P13215536897977103026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) + A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053222.P13215536897977103026

namespace A053222

/-- `Δ[A326126(n+1)+A007913(n+1)]` -/
def P13215536897977103026.Spec : Prop :=
  ∀ n, P13215536897977103026.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P11652772801039215884

`Δ[A326136(n+1)+A326135(n+1)]`
-/

namespace A053222.P11652772801039215884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326136 (n + 1) + A326135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053222.P11652772801039215884

namespace A053222

/-- `Δ[A326136(n+1)+A326135(n+1)]` -/
def P11652772801039215884.Spec : Prop :=
  ∀ n, P11652772801039215884.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P3144792696865920322

`Δ[A343226(n+1)*A343227(n+1)]`
-/

namespace A053222.P3144792696865920322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343226 (n + 1) * A343227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053222.P3144792696865920322

namespace A053222

/-- `Δ[A343226(n+1)*A343227(n+1)]` -/
def P3144792696865920322.Spec : Prop :=
  ∀ n, P3144792696865920322.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P2913116221269204057

`A258057(n+1)+A343224(n+2)-A343224(n+1)`
-/

namespace A053222.P2913116221269204057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (n + 1) + (A343224 (n + 2) - A343224 (n + 1))

end

end A053222.P2913116221269204057

namespace A053222

/-- `A258057(n+1)+A343224(n+2)-A343224(n+1)` -/
def P2913116221269204057.Spec : Prop :=
  ∀ n, P2913116221269204057.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P14801402692341446153

`Δ[∑{d}[n+1, #]]`
-/

namespace A053222.P14801402692341446153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053222.P14801402692341446153

namespace A053222

/-- `Δ[∑{d}[n+1, #]]` -/
def P14801402692341446153.Spec : Prop :=
  ∀ n, P14801402692341446153.a n = A053222 (n + 1)

end A053222

/-! ## A053222.P9224179771845074737

`-Δ[∑{d}[2*n-(n-1), -#]]`
-/

namespace A053222.P9224179771845074737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (-(d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A053222.P9224179771845074737

namespace A053222

/-- `-Δ[∑{d}[2*n-(n-1), -#]]` -/
def P9224179771845074737.Spec : Prop :=
  ∀ n, P9224179771845074737.a n = A053222 (n + 1)

end A053222

/-!
# A053223: Second differences of sigma(n).

The programs for A053223, the canonical program `A053223.P3484062727201404404` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053223 has offset 1).

The definition of A053223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053223.P3484062727201404404

`Δ[A000203(n+2)-A000203(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053223

/-- `Δ[A000203(n+2)-A000203(n+1)]` -/
def P3484062727201404404.Spec : Prop :=
  ∀ n, P3484062727201404404.a n = A053223 (n + 1)

theorem P3484062727201404404.correct : P3484062727201404404.Spec := by
  intro n
  simp only [A053223, Nat.add_sub_cancel]

end A053223

/-! ## A053223.P11619677724048099020

`Δ[A033879(n+1)-A033879(n+2)]`
-/

namespace A053223.P11619677724048099020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - A033879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P11619677724048099020

namespace A053223

/-- `Δ[A033879(n+1)-A033879(n+2)]` -/
def P11619677724048099020.Spec : Prop :=
  ∀ n, P11619677724048099020.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P13728432300091175436

`Δ[A053222(n+1)]`
-/

namespace A053223.P13728432300091175436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P13728432300091175436

namespace A053223

/-- `Δ[A053222(n+1)]` -/
def P13728432300091175436.Spec : Prop :=
  ∀ n, P13728432300091175436.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P1614512093465037315

`Δ[Δ[A000203(n+1)]]`
-/

namespace A053223.P1614512093465037315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P1614512093465037315

namespace A053223

/-- `Δ[Δ[A000203(n+1)]]` -/
def P1614512093465037315.Spec : Prop :=
  ∀ n, P1614512093465037315.a n = A053223 (n + 1)

theorem P1614512093465037315.correct : P1614512093465037315.Spec := by
  intro n
  simp only [A053223, Nat.add_sub_cancel, A053223.P1614512093465037315.f2, A053223.P1614512093465037315.f1, A053223.P1614512093465037315.a, A053223.P3484062727201404404.f1, A053223.P3484062727201404404.a, SequenceMachineLib.memo_apply]

end A053223

/-! ## A053223.P4829315776751134249

`Δ[Δ[A155085(n+1)]]`
-/

namespace A053223.P4829315776751134249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P4829315776751134249

namespace A053223

/-- `Δ[Δ[A155085(n+1)]]` -/
def P4829315776751134249.Spec : Prop :=
  ∀ n, P4829315776751134249.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P15435254607315222552

`1-Δ[A163553(n+1)]`
-/

namespace A053223.P15435254607315222552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A053223.P15435254607315222552

namespace A053223

/-- `1-Δ[A163553(n+1)]` -/
def P15435254607315222552.Spec : Prop :=
  ∀ n, P15435254607315222552.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P13565178983712245175

`Δ[Δ[A002659(n+1)/2]]`
-/

namespace A053223.P13565178983712245175
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002659 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P13565178983712245175

namespace A053223

/-- `Δ[Δ[A002659(n+1)/2]]` -/
def P13565178983712245175.Spec : Prop :=
  ∀ n, P13565178983712245175.a n = (A053223 (n + 1) : ℚ)

end A053223

/-! ## A053223.P3846689176091320125

`Δ[Δ[A062967(n+1)/2]]`
-/

namespace A053223.P3846689176091320125
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062967 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P3846689176091320125

namespace A053223

/-- `Δ[Δ[A062967(n+1)/2]]` -/
def P3846689176091320125.Spec : Prop :=
  ∀ n, P3846689176091320125.a n = (A053223 (n + 1) : ℚ)

end A053223

/-! ## A053223.P82274018924586322

`Δ[Δ[A074400(n+1)/2]]`
-/

namespace A053223.P82274018924586322
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P82274018924586322

namespace A053223

/-- `Δ[Δ[A074400(n+1)/2]]` -/
def P82274018924586322.Spec : Prop :=
  ∀ n, P82274018924586322.a n = (A053223 (n + 1) : ℚ)

end A053223

/-! ## A053223.P9671895543948380315

`Δ[Δ[A091818(n+1)/2]]`
-/

namespace A053223.P9671895543948380315
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P9671895543948380315

namespace A053223

/-- `Δ[Δ[A091818(n+1)/2]]` -/
def P9671895543948380315.Spec : Prop :=
  ∀ n, P9671895543948380315.a n = (A053223 (n + 1) : ℚ)

end A053223

/-! ## A053223.P10919393624040549711

`Δ[Δ[n-A033879(n+1)]]`
-/

namespace A053223.P10919393624040549711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A033879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P10919393624040549711

namespace A053223

/-- `Δ[Δ[n-A033879(n+1)]]` -/
def P10919393624040549711.Spec : Prop :=
  ∀ n, P10919393624040549711.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P7062568214991754471

`Δ[Δ[A000203(2*n-(n-1))-n]]`
-/

namespace A053223.P7062568214991754471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P7062568214991754471

namespace A053223

/-- `Δ[Δ[A000203(2*n-(n-1))-n]]` -/
def P7062568214991754471.Spec : Prop :=
  ∀ n, P7062568214991754471.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P9111178709675291953

`A053222(n+2)-A053222(n+1)`
-/

namespace A053223.P9111178709675291953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 2) - A053222 (n + 1)

end

end A053223.P9111178709675291953

namespace A053223

/-- `A053222(n+2)-A053222(n+1)` -/
def P9111178709675291953.Spec : Prop :=
  ∀ n, P9111178709675291953.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P3919110365354286572

`Δ[A092403(n+1)-A074400(n+1)]`
-/

namespace A053223.P3919110365354286572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092403 (n + 1) - A074400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P3919110365354286572

namespace A053223

/-- `Δ[A092403(n+1)-A074400(n+1)]` -/
def P3919110365354286572.Spec : Prop :=
  ∀ n, P3919110365354286572.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P15851799607987464143

`Δ[Δ[A326126(n+1)+A007913(n+1)]]`
-/

namespace A053223.P15851799607987464143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) + A007913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P15851799607987464143

namespace A053223

/-- `Δ[Δ[A326126(n+1)+A007913(n+1)]]` -/
def P15851799607987464143.Spec : Prop :=
  ∀ n, P15851799607987464143.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P3573518144720114221

`A001065(n+1)+A053246(n+2)-A001065(n+2)`
-/

namespace A053223.P3573518144720114221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A053246 (n + 2) - A001065 (n + 2))

end

end A053223.P3573518144720114221

namespace A053223

/-- `A001065(n+1)+A053246(n+2)-A001065(n+2)` -/
def P3573518144720114221.Spec : Prop :=
  ∀ n, P3573518144720114221.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P8859616863165189378

`Δ[Δ[∑{d}[n+1, #]]]`
-/

namespace A053223.P8859616863165189378
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P8859616863165189378

namespace A053223

/-- `Δ[Δ[∑{d}[n+1, #]]]` -/
def P8859616863165189378.Spec : Prop :=
  ∀ n, P8859616863165189378.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P14210101623445952843

`Δ[A340793(n+2)]`
-/

namespace A053223.P14210101623445952843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P14210101623445952843

namespace A053223

/-- `Δ[A340793(n+2)]` -/
def P14210101623445952843.Spec : Prop :=
  ∀ n, P14210101623445952843.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P12321499859829454974

`Δ[Δ[A001065(n+1)]]`
-/

namespace A053223.P12321499859829454974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P12321499859829454974

namespace A053223

/-- `Δ[Δ[A001065(n+1)]]` -/
def P12321499859829454974.Spec : Prop :=
  ∀ n, P12321499859829454974.a n = A053223 (n + 1)

end A053223

/-! ## A053223.P15607664804775067501

`Δ[Δ[A033880(n+1)]]`
-/

namespace A053223.P15607664804775067501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053223.P15607664804775067501

namespace A053223

/-- `Δ[Δ[A033880(n+1)]]` -/
def P15607664804775067501.Spec : Prop :=
  ∀ n, P15607664804775067501.a n = A053223 (n + 1)

end A053223

/-!
# A053224: Numbers k for which sigma(k) < sigma(k+1).

The programs for A053224, the canonical program `A053224.P3405306434289397345` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053224 has offset 1).

The definition of A053224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053224.P16250068656059489877

`A053230(n)+a(n-1)` with `a(0)=1`
-/

namespace A053224.P16250068656059489877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053230 n + a (n - 1)

end

end A053224.P16250068656059489877

namespace A053224

/-- `A053230(n)+a(n-1)` -/
def P16250068656059489877.Spec : Prop :=
  ∀ n, P16250068656059489877.a n = A053224 (n + 1)

end A053224

/-! ## A053224.P6625193501597191495

`∑[A053230(A028310(n))]`
-/

namespace A053224.P6625193501597191495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053224.P6625193501597191495

namespace A053224

/-- `∑[A053230(A028310(n))]` -/
def P6625193501597191495.Spec : Prop :=
  ∀ n, P6625193501597191495.a n = A053224 (n + 1)

end A053224

/-! ## A053224.P3405306434289397345

`lt[A000203(n+1), A000203(n+2)]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053224

/-- `lt[A000203(n+1), A000203(n+2)]+1` -/
def P3405306434289397345.Spec : Prop :=
  ∀ n, (P3405306434289397345.a n : ℤ) = A053224 (n + 1)

theorem P3405306434289397345.correct : P3405306434289397345.Spec := by
  intro n
  simp only [A053224, Nat.add_sub_cancel]

end A053224

/-! ## A053224.P9776107971441501433

`∑[A053230(n+1)]+1-A053230(n+1)`
-/

namespace A053224.P9776107971441501433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A053230 (n + 1))

end

end A053224.P9776107971441501433

namespace A053224

/-- `∑[A053230(n+1)]+1-A053230(n+1)` -/
def P9776107971441501433.Spec : Prop :=
  ∀ n, P9776107971441501433.a n = A053224 (n + 1)

end A053224

/-! ## A053224.P11874500807295984601

`lt[3, Δ[∑{d}[n+1, #]²]]+1`
-/

namespace A053224.P11874500807295984601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f4 n), d) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053224.P11874500807295984601

namespace A053224

/-- `lt[3, Δ[∑{d}[n+1, #]²]]+1` -/
def P11874500807295984601.Spec : Prop :=
  ∀ n, (P11874500807295984601.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P11163099120720279457

`lt[0, Δ[A039653(n)]]`
-/

namespace A053224.P11163099120720279457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053224.P11163099120720279457

namespace A053224

/-- `lt[0, Δ[A039653(n)]]` -/
def P11163099120720279457.Spec : Prop :=
  ∀ n, (P11163099120720279457.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P15905575118104380631

`lt[1, n*A340793(n+1)]`
-/

namespace A053224.P15905575118104380631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053224.P15905575118104380631

namespace A053224

/-- `lt[1, n*A340793(n+1)]` -/
def P15905575118104380631.Spec : Prop :=
  ∀ n, (P15905575118104380631.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P8506748959360084921

`lt[1, Δ[A274535(n+1)]]+1`
-/

namespace A053224.P8506748959360084921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053224.P8506748959360084921

namespace A053224

/-- `lt[1, Δ[A274535(n+1)]]+1` -/
def P8506748959360084921.Spec : Prop :=
  ∀ n, (P8506748959360084921.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P5038938008461871998

`lt[Δ[A033879(n+1)], 2]+1`
-/

namespace A053224.P5038938008461871998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A053224.P5038938008461871998

namespace A053224

/-- `lt[Δ[A033879(n+1)], 2]+1` -/
def P5038938008461871998.Spec : Prop :=
  ∀ n, (P5038938008461871998.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P16388946816586677840

`lt[1, ratio[A000203(n+1)]]+1`
-/

namespace A053224.P16388946816586677840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A053224.P16388946816586677840

namespace A053224

/-- `lt[1, ratio[A000203(n+1)]]+1` -/
def P16388946816586677840.Spec : Prop :=
  ∀ n, (P16388946816586677840.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P9220919849730779116

`lt[A039653(n), A039653(n+1)]`
-/

namespace A053224.P9220919849730779116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053224.P9220919849730779116

namespace A053224

/-- `lt[A039653(n), A039653(n+1)]` -/
def P9220919849730779116.Spec : Prop :=
  ∀ n, (P9220919849730779116.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P5913385590594105496

`lt[A010054(n), A340793(n+1)]`
-/

namespace A053224.P5913385590594105496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053224.P5913385590594105496

namespace A053224

/-- `lt[A010054(n), A340793(n+1)]` -/
def P5913385590594105496.Spec : Prop :=
  ∀ n, (P5913385590594105496.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P5439449935130885710

`lt[A067742(n+1), A340793(n+1)]`
-/

namespace A053224.P5439449935130885710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053224.P5439449935130885710

namespace A053224

/-- `lt[A067742(n+1), A340793(n+1)]` -/
def P5439449935130885710.Spec : Prop :=
  ∀ n, (P5439449935130885710.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P18261551536084912841

`lt[A260196(n)+1, A340793(n+1)]`
-/

namespace A053224.P18261551536084912841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053224.P18261551536084912841

namespace A053224

/-- `lt[A260196(n)+1, A340793(n+1)]` -/
def P18261551536084912841.Spec : Prop :=
  ∀ n, (P18261551536084912841.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P2505318368563251450

`lt[1/A005408(n), A340793(n+1)]`
-/

namespace A053224.P2505318368563251450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A005408 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A053224.P2505318368563251450

namespace A053224

/-- `lt[1/A005408(n), A340793(n+1)]` -/
def P2505318368563251450.Spec : Prop :=
  ∀ n, (P2505318368563251450.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P3510202799397281053

`lt[1/A028310(n), A340793(n+1)]`
-/

namespace A053224.P3510202799397281053
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A028310 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A053224.P3510202799397281053

namespace A053224

/-- `lt[1/A028310(n), A340793(n+1)]` -/
def P3510202799397281053.Spec : Prop :=
  ∀ n, (P3510202799397281053.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P18399496449645040233

`lt[A153881(n+1)+1, A340793(n+1)]`
-/

namespace A053224.P18399496449645040233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053224.P18399496449645040233

namespace A053224

/-- `lt[A153881(n+1)+1, A340793(n+1)]` -/
def P18399496449645040233.Spec : Prop :=
  ∀ n, (P18399496449645040233.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P5253399463616727335

`lt[A000203(A028310(n)), A000203(n+1)]`
-/

namespace A053224.P5253399463616727335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053224.P5253399463616727335

namespace A053224

/-- `lt[A000203(A028310(n)), A000203(n+1)]` -/
def P5253399463616727335.Spec : Prop :=
  ∀ n, (P5253399463616727335.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P13441598709025441194

`lt[A088580(A028310(n)), A088580(n+1)]`
-/

namespace A053224.P13441598709025441194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053224.P13441598709025441194

namespace A053224

/-- `lt[A088580(A028310(n)), A088580(n+1)]` -/
def P13441598709025441194.Spec : Prop :=
  ∀ n, (P13441598709025441194.a n : ℤ) = A053224 (n + 1)

end A053224

/-! ## A053224.P2508020863970604436

`lt[A000203(A004277(n)-n), A000203(n+1)]`
-/

namespace A053224.P2508020863970604436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053224.P2508020863970604436

namespace A053224

/-- `lt[A000203(A004277(n)-n), A000203(n+1)]` -/
def P2508020863970604436.Spec : Prop :=
  ∀ n, (P2508020863970604436.a n : ℤ) = A053224 (n + 1)

end A053224

/-!
# A053225: First differences of sigma(n) that are positive.

The programs for A053225, the canonical program `A053225.P1720383942302282191` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053225 has offset 1).

The definition of A053225 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053224, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053225.P1720383942302282191

`A053222(A053224(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053225

/-- `A053222(A053224(n+1))` -/
def P1720383942302282191.Spec : Prop :=
  ∀ n, P1720383942302282191.a n = A053225 (n + 1)

theorem P1720383942302282191.correct : P1720383942302282191.Spec := by
  intro n
  simp only [A053225, Nat.add_sub_cancel]

end A053225

/-! ## A053225.P15541883209720611121

`A340793(A053224(n+1)+1)`
-/

namespace A053225.P15541883209720611121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (A053224 (n + 1) + 1).toNat

end

end A053225.P15541883209720611121

namespace A053225

/-- `A340793(A053224(n+1)+1)` -/
def P15541883209720611121.Spec : Prop :=
  ∀ n, P15541883209720611121.a n = A053225 (n + 1)

end A053225

/-! ## A053225.P17067461661699779028

`A054977(n)+A053246(A053224(n+1))`
-/

namespace A053225.P17067461661699779028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A053246 (A053224 (n + 1)).toNat

end

end A053225.P17067461661699779028

namespace A053225

/-- `A054977(n)+A053246(A053224(n+1))` -/
def P17067461661699779028.Spec : Prop :=
  ∀ n, P17067461661699779028.a n = A053225 (n + 1)

end A053225

/-! ## A053225.P18158511808419848203

`A053222(lt[A039653(n), A039653(n+1)])`
-/

namespace A053225.P18158511808419848203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053225.P18158511808419848203

namespace A053225

/-- `A053222(lt[A039653(n), A039653(n+1)])` -/
def P18158511808419848203.Spec : Prop :=
  ∀ n, P18158511808419848203.a n = A053225 (n + 1)

end A053225

/-! ## A053225.P16781534196197914349

`A340793(lt[A010054(n), A340793(n+1)]+1)`
-/

namespace A053225.P16781534196197914349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A053225.P16781534196197914349

namespace A053225

/-- `A340793(lt[A010054(n), A340793(n+1)]+1)` -/
def P16781534196197914349.Spec : Prop :=
  ∀ n, P16781534196197914349.a n = A053225 (n + 1)

end A053225

/-! ## A053225.P2657099448123391925

`A340793(lt[A067742(n+1), A340793(n+1)]+1)`
-/

namespace A053225.P2657099448123391925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A053225.P2657099448123391925

namespace A053225

/-- `A340793(lt[A067742(n+1), A340793(n+1)]+1)` -/
def P2657099448123391925.Spec : Prop :=
  ∀ n, P2657099448123391925.a n = A053225 (n + 1)

end A053225

/-! ## A053225.P9196475491106570487

`A053222(lt[A000203(n+1), A000203(n+2)]+1)`
-/

namespace A053225.P9196475491106570487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A053225.P9196475491106570487

namespace A053225

/-- `A053222(lt[A000203(n+1), A000203(n+2)]+1)` -/
def P9196475491106570487.Spec : Prop :=
  ∀ n, P9196475491106570487.a n = A053225 (n + 1)

end A053225

/-! ## A053225.P12704582081218571948

`A053222(lt[A088580(n+1), A088580(n+2)]+1)`
-/

namespace A053225.P12704582081218571948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A053225.P12704582081218571948

namespace A053225

/-- `A053222(lt[A088580(n+1), A088580(n+2)]+1)` -/
def P12704582081218571948.Spec : Prop :=
  ∀ n, P12704582081218571948.a n = A053225 (n + 1)

end A053225

/-! ## A053225.P2850470146246598668

`A053246(A053224(n+1))+A040001(A050200(n))`
-/

namespace A053225.P2850470146246598668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (A053224 (n + 1)).toNat + A040001 (A050200 n).toNat

end

end A053225.P2850470146246598668

namespace A053225

/-- `A053246(A053224(n+1))+A040001(A050200(n))` -/
def P2850470146246598668.Spec : Prop :=
  ∀ n, P2850470146246598668.a n = A053225 (n + 1)

end A053225

/-!
# A053226: Numbers k for which sigma(k) > sigma(k+1).

The programs for A053226, the canonical program `A053226.P231918640518342816` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053226 has offset 1).

The definition of A053226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053226.P231918640518342816

`A053238(n)+a(n-1)` with `a(0)=4`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053226

/-- `A053238(n)+a(n-1)` -/
def P231918640518342816.Spec : Prop :=
  ∀ n, P231918640518342816.a n = A053226 (n + 1)

theorem P231918640518342816.correct : P231918640518342816.Spec := by
  intro n
  simp only [A053226, Nat.add_sub_cancel]

end A053226

/-! ## A053226.P9453103161832843894

`lt[A000203(n+1), A039653(n)+1]`
-/

namespace A053226.P9453103161832843894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053226.P9453103161832843894

namespace A053226

/-- `lt[A000203(n+1), A039653(n)+1]` -/
def P9453103161832843894.Spec : Prop :=
  ∀ n, (P9453103161832843894.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P17816319977281174892

`lt[A053222(n+1), A000038(n)]+1`
-/

namespace A053226.P17816319977281174892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A053226.P17816319977281174892

namespace A053226

/-- `lt[A053222(n+1), A000038(n)]+1` -/
def P17816319977281174892.Spec : Prop :=
  ∀ n, (P17816319977281174892.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P3389444114393207275

`lt[A000203(n+1), A000203(A028310(n))]`
-/

namespace A053226.P3389444114393207275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053226.P3389444114393207275

namespace A053226

/-- `lt[A000203(n+1), A000203(A028310(n))]` -/
def P3389444114393207275.Spec : Prop :=
  ∀ n, (P3389444114393207275.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P656491917395871575

`lt[Δ[∑{d}[n, #]], 0]`
-/

namespace A053226.P656491917395871575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A053226.P656491917395871575

namespace A053226

/-- `lt[Δ[∑{d}[n, #]], 0]` -/
def P656491917395871575.Spec : Prop :=
  ∀ n, (P656491917395871575.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P3190286601939254643

`lt[∑{d}[n+1, #], ∑{d}[n, #]]`
-/

namespace A053226.P3190286601939254643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A053226.P3190286601939254643

namespace A053226

/-- `lt[∑{d}[n+1, #], ∑{d}[n, #]]` -/
def P3190286601939254643.Spec : Prop :=
  ∀ n, (P3190286601939254643.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P8774831499275207202

`lt[0, Δ[A006352(n)]]`
-/

namespace A053226.P8774831499275207202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053226.P8774831499275207202

namespace A053226

/-- `lt[0, Δ[A006352(n)]]` -/
def P8774831499275207202.Spec : Prop :=
  ∀ n, (P8774831499275207202.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P17433052756212938827

`lt[A340793(n+1)+1, 1]`
-/

namespace A053226.P17433052756212938827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A053226.P17433052756212938827

namespace A053226

/-- `lt[A340793(n+1)+1, 1]` -/
def P17433052756212938827.Spec : Prop :=
  ∀ n, (P17433052756212938827.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P290555319129476289

`lt[A006352(n), A006352(n+1)]`
-/

namespace A053226.P290555319129476289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053226.P290555319129476289

namespace A053226

/-- `lt[A006352(n), A006352(n+1)]` -/
def P290555319129476289.Spec : Prop :=
  ∀ n, (P290555319129476289.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P15864957777140698491

`lt[A039653(n+1), A039653(n)]`
-/

namespace A053226.P15864957777140698491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053226.P15864957777140698491

namespace A053226

/-- `lt[A039653(n+1), A039653(n)]` -/
def P15864957777140698491.Spec : Prop :=
  ∀ n, (P15864957777140698491.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P5084078623473548314

`lt[A340793(n+1), A010054(n)]`
-/

namespace A053226.P5084078623473548314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053226.P5084078623473548314

namespace A053226

/-- `lt[A340793(n+1), A010054(n)]` -/
def P5084078623473548314.Spec : Prop :=
  ∀ n, (P5084078623473548314.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P132505363113526735

`lt[A088580(n+1), A088580(A028310(n))]`
-/

namespace A053226.P132505363113526735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053226.P132505363113526735

namespace A053226

/-- `lt[A088580(n+1), A088580(A028310(n))]` -/
def P132505363113526735.Spec : Prop :=
  ∀ n, (P132505363113526735.a n : ℤ) = A053226 (n + 1)

end A053226

/-! ## A053226.P15090044863350678673

`lt[A275632(n+1), A275632(n)]`
-/

namespace A053226.P15090044863350678673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053226.P15090044863350678673

namespace A053226

/-- `lt[A275632(n+1), A275632(n)]` -/
def P15090044863350678673.Spec : Prop :=
  ∀ n, (P15090044863350678673.a n : ℤ) = A053226 (n + 1)

end A053226

/-!
# A053227: First differences of sigma(n) that are negative.

The programs for A053227, the canonical program `A053227.P5415555737178442554` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053227 has offset 1).

The definition of A053227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053227.P5415555737178442554

`abs(A053222(A053226(n+1)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053227

/-- `abs(A053222(A053226(n+1)))` -/
def P5415555737178442554.Spec : Prop :=
  ∀ n, P5415555737178442554.a n = A053227 (n + 1)

theorem P5415555737178442554.correct : P5415555737178442554.Spec := by
  intro n
  simp only [A053227, Nat.add_sub_cancel]

end A053227

/-! ## A053227.P15642820498203313351

`-A053222(A053226(A000027(n+1)))`
-/

namespace A053227.P15642820498203313351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053222 (A053226 (A000027 (n + 1)).toNat).toNat

end

end A053227.P15642820498203313351

namespace A053227

/-- `-A053222(A053226(A000027(n+1)))` -/
def P15642820498203313351.Spec : Prop :=
  ∀ n, P15642820498203313351.a n = A053227 (n + 1)

end A053227

/-! ## A053227.P1185944322600978779

`gcd(A000038(n), A053222(A053226(n+1)))`
-/

namespace A053227.P1185944322600978779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053222 (A053226 (n + 1)).toNat)

end

end A053227.P1185944322600978779

namespace A053227

/-- `gcd(A000038(n), A053222(A053226(n+1)))` -/
def P1185944322600978779.Spec : Prop :=
  ∀ n, (P1185944322600978779.a n : ℤ) = A053227 (n + 1)

end A053227

/-! ## A053227.P6448542406125003496

`lcm(A033999(n), A053222(A053226(n+1)))`
-/

namespace A053227.P6448542406125003496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A053222 (A053226 (n + 1)).toNat)

end

end A053227.P6448542406125003496

namespace A053227

/-- `lcm(A033999(n), A053222(A053226(n+1)))` -/
def P6448542406125003496.Spec : Prop :=
  ∀ n, (P6448542406125003496.a n : ℤ) = A053227 (n + 1)

end A053227

/-! ## A053227.P13072249796971942475

`∑{d}[A053222(A053226(n+1)), A000010(#)]`
-/

namespace A053227.P13072249796971942475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A053226 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A053227.P13072249796971942475

namespace A053227

/-- `∑{d}[A053222(A053226(n+1)), A000010(#)]` -/
def P13072249796971942475.Spec : Prop :=
  ∀ n, P13072249796971942475.a n = A053227 (n + 1)

end A053227

/-! ## A053227.P17597842700955821132

`A000007(n+1)-A053222(A053226(n+1))`
-/

namespace A053227.P17597842700955821132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A053222 (A053226 (n + 1)).toNat

end

end A053227.P17597842700955821132

namespace A053227

/-- `A000007(n+1)-A053222(A053226(n+1))` -/
def P17597842700955821132.Spec : Prop :=
  ∀ n, P17597842700955821132.a n = A053227 (n + 1)

end A053227

/-! ## A053227.P14206329360398391300

`-A053222(A053226(n+1)%A067826(n+1))`
-/

namespace A053227.P14206329360398391300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053222 (Int.tmod (A053226 (n + 1)) (A067826 (n + 1))).toNat

end

end A053227.P14206329360398391300

namespace A053227

/-- `-A053222(A053226(n+1)%A067826(n+1))` -/
def P14206329360398391300.Spec : Prop :=
  ∀ n, P14206329360398391300.a n = A053227 (n + 1)

end A053227

/-! ## A053227.P12836212145283713538

`(n-A000027(n+1))*A053222(A053226(n+1))`
-/

namespace A053227.P12836212145283713538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000027 (n + 1)) * A053222 (A053226 (n + 1)).toNat

end

end A053227.P12836212145283713538

namespace A053227

/-- `(n-A000027(n+1))*A053222(A053226(n+1))` -/
def P12836212145283713538.Spec : Prop :=
  ∀ n, P12836212145283713538.a n = A053227 (n + 1)

end A053227

/-! ## A053227.P2223020672322225486

`A000038(n)-A053222(A053226(n+1)-A000038(n))`
-/

namespace A053227.P2223020672322225486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A053222 (A053226 (n + 1) - A000038 n).toNat

end

end A053227.P2223020672322225486

namespace A053227

/-- `A000038(n)-A053222(A053226(n+1)-A000038(n))` -/
def P2223020672322225486.Spec : Prop :=
  ∀ n, P2223020672322225486.a n = A053227 (n + 1)

end A053227

/-!
# A053228: n for which second differences of sigma(n) are positive.

The programs for A053228, the canonical program `A053228.P2496063461288682118` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053228 has offset 1).

The definition of A053228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4851 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053228.P2496063461288682118

`lt[0, A053223(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053228

/-- `lt[0, A053223(n+1)]+1` -/
def P2496063461288682118.Spec : Prop :=
  ∀ n, (P2496063461288682118.a n : ℤ) = A053228 (n + 1)

theorem P2496063461288682118.correct : P2496063461288682118.Spec := by
  intro n
  simp only [A053228, Nat.add_sub_cancel]

end A053228

/-! ## A053228.P8112742143870756397

`lt[0, A053223(A028310(n))]`
-/

namespace A053228.P8112742143870756397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053228.P8112742143870756397

namespace A053228

/-- `lt[0, A053223(A028310(n))]` -/
def P8112742143870756397.Spec : Prop :=
  ∀ n, (P8112742143870756397.a n : ℤ) = A053228 (n + 1)

end A053228

/-! ## A053228.P11249485520590423644

`lt[1, Δ[A340793(n+1)]]`
-/

namespace A053228.P11249485520590423644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A053228.P11249485520590423644

namespace A053228

/-- `lt[1, Δ[A340793(n+1)]]` -/
def P11249485520590423644.Spec : Prop :=
  ∀ n, (P11249485520590423644.a n : ℤ) = A053228 (n + 1)

end A053228

/-! ## A053228.P10757355902664447566

`lt[A053222(A028310(n)), A053222(n+1)]`
-/

namespace A053228.P10757355902664447566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053228.P10757355902664447566

namespace A053228

/-- `lt[A053222(A028310(n)), A053222(n+1)]` -/
def P10757355902664447566.Spec : Prop :=
  ∀ n, (P10757355902664447566.a n : ℤ) = A053228 (n + 1)

end A053228

/-! ## A053228.P15480248118771496576

`lt[A053246(A028310(n)), A053246(n+1)]`
-/

namespace A053228.P15480248118771496576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053228.P15480248118771496576

namespace A053228

/-- `lt[A053246(A028310(n)), A053246(n+1)]` -/
def P15480248118771496576.Spec : Prop :=
  ∀ n, (P15480248118771496576.a n : ℤ) = A053228 (n + 1)

end A053228

/-! ## A053228.P16287311352776697267

`lt[A163553(n+1), A163553(A028310(n))]`
-/

namespace A053228.P16287311352776697267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163553 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053228.P16287311352776697267

namespace A053228

/-- `lt[A163553(n+1), A163553(A028310(n))]` -/
def P16287311352776697267.Spec : Prop :=
  ∀ n, (P16287311352776697267.a n : ℤ) = A053228 (n + 1)

end A053228

/-! ## A053228.P18442746158090909752

`lt[A053222(A175542(2*n+1)), A053222(n+1)]`
-/

namespace A053228.P18442746158090909752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A175542 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053228.P18442746158090909752

namespace A053228

/-- `lt[A053222(A175542(2*n+1)), A053222(n+1)]` -/
def P18442746158090909752.Spec : Prop :=
  ∀ n, (P18442746158090909752.a n : ℤ) = A053228 (n + 1)

end A053228

/-! ## A053228.P1714820397941646108

`eq[-a(n-1), A294935(A243057(n+1))]` with `a(0)=3, a(1)=0, a(2)=1`
-/

namespace A053228.P1714820397941646108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 1] fun n f1 =>
  -f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (A243057 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053228.P1714820397941646108

namespace A053228

/-- `eq[-a(n-1), A294935(A243057(n+1))]` -/
def P1714820397941646108.Spec : Prop :=
  ∀ n, (P1714820397941646108.a n : ℤ) = A053228 (n + 1)

end A053228

/-! ## A053228.P17329559603299488276

`eq[A019426(n), A294935(A243057(n+1))]`
-/

namespace A053228.P17329559603299488276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (A243057 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053228.P17329559603299488276

namespace A053228

/-- `eq[A019426(n), A294935(A243057(n+1))]` -/
def P17329559603299488276.Spec : Prop :=
  ∀ n, (P17329559603299488276.a n : ℤ) = A053228 (n + 1)

end A053228

/-! ## A053228.P18332704514453301987

`eq[A019427(n), A294935(A243057(n+1))]`
-/

namespace A053228.P18332704514453301987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (A243057 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053228.P18332704514453301987

namespace A053228

/-- `eq[A019427(n), A294935(A243057(n+1))]` -/
def P18332704514453301987.Spec : Prop :=
  ∀ n, (P18332704514453301987.a n : ℤ) = A053228 (n + 1)

end A053228

/-!
# A053229: Numbers n for which second differences of sigma(n) are negative.

The programs for A053229, the canonical program `A053229.P8465332529038904274` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053229 has offset 1).

The definition of A053229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053229.P8465332529038904274

`lt[A053223(n+1), 0]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053229

/-- `lt[A053223(n+1), 0]+1` -/
def P8465332529038904274.Spec : Prop :=
  ∀ n, (P8465332529038904274.a n : ℤ) = A053229 (n + 1)

theorem P8465332529038904274.correct : P8465332529038904274.Spec := by
  intro n
  simp only [A053229, Nat.add_sub_cancel]

end A053229

/-! ## A053229.P6994952879820193488

`lt[A053222(n+1), A053222(A028310(n))]`
-/

namespace A053229.P6994952879820193488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053229.P6994952879820193488

namespace A053229

/-- `lt[A053222(n+1), A053222(A028310(n))]` -/
def P6994952879820193488.Spec : Prop :=
  ∀ n, (P6994952879820193488.a n : ℤ) = A053229 (n + 1)

end A053229

/-! ## A053229.P10064907317398664630

`lt[A053222(n+1), A053222(A000038(n)+n)]`
-/

namespace A053229.P10064907317398664630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053229.P10064907317398664630

namespace A053229

/-- `lt[A053222(n+1), A053222(A000038(n)+n)]` -/
def P10064907317398664630.Spec : Prop :=
  ∀ n, (P10064907317398664630.a n : ℤ) = A053229 (n + 1)

end A053229

/-! ## A053229.P14826580580579795122

`lt[2-A163553(n+1)+n, A173455(n+1)+n-A039653(n)]`
-/

namespace A053229.P14826580580579795122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A163553 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1) + ((n : ℤ) - A039653 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053229.P14826580580579795122

namespace A053229

/-- `lt[2-A163553(n+1)+n, A173455(n+1)+n-A039653(n)]` -/
def P14826580580579795122.Spec : Prop :=
  ∀ n, (P14826580580579795122.a n : ℤ) = A053229 (n + 1)

end A053229

/-! ## A053229.P16478862192776850678

`lt[A340793(n+2), A340793(n+1)]`
-/

namespace A053229.P16478862192776850678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053229.P16478862192776850678

namespace A053229

/-- `lt[A340793(n+2), A340793(n+1)]` -/
def P16478862192776850678.Spec : Prop :=
  ∀ n, (P16478862192776850678.a n : ℤ) = A053229 (n + 1)

end A053229

/-! ## A053229.P12356468115065575815

`lt[A053222(n+1), A053222(A175542(2*n+1))]`
-/

namespace A053229.P12356468115065575815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A175542 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053229.P12356468115065575815

namespace A053229

/-- `lt[A053222(n+1), A053222(A175542(2*n+1))]` -/
def P12356468115065575815.Spec : Prop :=
  ∀ n, (P12356468115065575815.a n : ℤ) = A053229 (n + 1)

end A053229

/-! ## A053229.P16055407424500506774

`lt[A143348(A057034(n+4)), A001065(n+1)]`
-/

namespace A053229.P16055407424500506774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (A057034 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053229.P16055407424500506774

namespace A053229

/-- `lt[A143348(A057034(n+4)), A001065(n+1)]` -/
def P16055407424500506774.Spec : Prop :=
  ∀ n, (P16055407424500506774.a n : ℤ) = A053229 (n + 1)

end A053229

/-! ## A053229.P6077281242647482987

`lt[A000252(n+1), A062786(A005728(n))]`
-/

namespace A053229.P6077281242647482987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (A005728 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053229.P6077281242647482987

namespace A053229

/-- `lt[A000252(n+1), A062786(A005728(n))]` -/
def P6077281242647482987.Spec : Prop :=
  ∀ n, (P6077281242647482987.a n : ℤ) = A053229 (n + 1)

end A053229

/-! ## A053229.P10327826906586327449

`lt[A040001(n), A048669(A295557(n+1))]`
-/

namespace A053229.P10327826906586327449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (A295557 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A053229.P10327826906586327449

namespace A053229

/-- `lt[A040001(n), A048669(A295557(n+1))]` -/
def P10327826906586327449.Spec : Prop :=
  ∀ n, (P10327826906586327449.a n : ℤ) = A053229 (n + 1)

end A053229

/-! ## A053229.P11346013203493618902

`eq[2, A020639((n+1)*A173778(A000005(n+1)))]`
-/

namespace A053229.P11346013203493618902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A173778 (A000005 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053229.P11346013203493618902

namespace A053229

/-- `eq[2, A020639((n+1)*A173778(A000005(n+1)))]` -/
def P11346013203493618902.Spec : Prop :=
  ∀ n, (P11346013203493618902.a n : ℤ) = A053229 (n + 1)

end A053229

/-!
# A053230: First differences between numbers k for which sigma(k) < sigma(k+1).

The programs for A053230, the canonical program `A053230.P8529302224406390971` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053230 has offset 1).

The definition of A053230 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053224, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053230.P8529302224406390971

`A053224(n+2)-A053224(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053230

/-- `A053224(n+2)-A053224(n+1)` -/
def P8529302224406390971.Spec : Prop :=
  ∀ n, P8529302224406390971.a n = A053230 (n + 1)

theorem P8529302224406390971.correct : P8529302224406390971.Spec := by
  intro n
  simp only [A053230, Nat.add_sub_cancel]

end A053230

/-! ## A053230.P12226004174621197470

`Δ[A053224(n+1)]`
-/

namespace A053230.P12226004174621197470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053230.P12226004174621197470

namespace A053230

/-- `Δ[A053224(n+1)]` -/
def P12226004174621197470.Spec : Prop :=
  ∀ n, P12226004174621197470.a n = A053230 (n + 1)

theorem P12226004174621197470.correct : P12226004174621197470.Spec := by
  intro n
  simp only [A053230, Nat.add_sub_cancel, A053230.P12226004174621197470.f1, A053230.P12226004174621197470.a, A053230.P8529302224406390971.a, SequenceMachineLib.memo_apply]

end A053230

/-! ## A053230.P12082182440101632358

`Δ[lt[A000203(n+1), A000203(n+2)]]`
-/

namespace A053230.P12082182440101632358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053230.P12082182440101632358

namespace A053230

/-- `Δ[lt[A000203(n+1), A000203(n+2)]]` -/
def P12082182440101632358.Spec : Prop :=
  ∀ n, P12082182440101632358.a n = A053230 (n + 1)

end A053230

/-! ## A053230.P3063815421841018721

`Δ[lt[1, n*A340793(n+1)]]`
-/

namespace A053230.P3063815421841018721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A340793 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053230.P3063815421841018721

namespace A053230

/-- `Δ[lt[1, n*A340793(n+1)]]` -/
def P3063815421841018721.Spec : Prop :=
  ∀ n, P3063815421841018721.a n = A053230 (n + 1)

end A053230

/-! ## A053230.P13050010180864686081

`Δ[lt[A039653(n), A039653(n+1)]]`
-/

namespace A053230.P13050010180864686081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053230.P13050010180864686081

namespace A053230

/-- `Δ[lt[A039653(n), A039653(n+1)]]` -/
def P13050010180864686081.Spec : Prop :=
  ∀ n, P13050010180864686081.a n = A053230 (n + 1)

end A053230

/-! ## A053230.P10364156078926674105

`Δ[lt[A067742(n+1), A340793(n+1)]]`
-/

namespace A053230.P10364156078926674105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053230.P10364156078926674105

namespace A053230

/-- `Δ[lt[A067742(n+1), A340793(n+1)]]` -/
def P10364156078926674105.Spec : Prop :=
  ∀ n, P10364156078926674105.a n = A053230 (n + 1)

end A053230

/-! ## A053230.P9233146374703978264

`Δ[lt[A088580(n+1), A088580(n+2)]]`
-/

namespace A053230.P9233146374703978264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053230.P9233146374703978264

namespace A053230

/-- `Δ[lt[A088580(n+1), A088580(n+2)]]` -/
def P9233146374703978264.Spec : Prop :=
  ∀ n, P9233146374703978264.a n = A053230 (n + 1)

end A053230

/-! ## A053230.P13738058727616530582

`Δ[lt[A274535(n+1), A274535(n+2)]]`
-/

namespace A053230.P13738058727616530582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053230.P13738058727616530582

namespace A053230

/-- `Δ[lt[A274535(n+1), A274535(n+2)]]` -/
def P13738058727616530582.Spec : Prop :=
  ∀ n, P13738058727616530582.a n = A053230 (n + 1)

end A053230

/-! ## A053230.P18302656368336416613

`Δ[lt[A001065(n+1), A001065(n+2)+1]]`
-/

namespace A053230.P18302656368336416613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053230.P18302656368336416613

namespace A053230

/-- `Δ[lt[A001065(n+1), A001065(n+2)+1]]` -/
def P18302656368336416613.Spec : Prop :=
  ∀ n, P18302656368336416613.a n = A053230 (n + 1)

end A053230

/-! ## A053230.P11918640428759036887

`Δ[lt[A245092(2*n+1), A245092(2*n+3)]]`
-/

namespace A053230.P11918640428759036887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053230.P11918640428759036887

namespace A053230

/-- `Δ[lt[A245092(2*n+1), A245092(2*n+3)]]` -/
def P11918640428759036887.Spec : Prop :=
  ∀ n, P11918640428759036887.a n = A053230 (n + 1)

end A053230

/-! ## A053230.P2886434549990304769

`Δ[record[A053224(A290094(n))]]`
-/

namespace A053230.P2886434549990304769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (A290094 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053230.P2886434549990304769

namespace A053230

/-- `Δ[record[A053224(A290094(n))]]` -/
def P2886434549990304769.Spec : Prop :=
  ∀ n, P2886434549990304769.a n = A053230 (n + 1)

end A053230

/-!
# A053231: First differences between n for which sigma(n) < sigma(n+1), which are not 2.

The programs for A053231, there is no canonical definition to state claims against.
-/

/-! ## A053231.P17318792137440536864

`A053230(A053232(n+1))`
-/

namespace A053231.P17318792137440536864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A053232 (n + 1)).toNat

end

end A053231.P17318792137440536864

/-! ## A053231.P14585566098540106488

`A040001(or(A000032(n)+1, A036700(n)))²`
-/

namespace A053231.P14585566098540106488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Int.lor (A000032 n + 1) (A036700 n)).toNat ^ 2

end

end A053231.P14585566098540106488

/-! ## A053231.P2697782901346826102

`A049376(gcd(A330437(n+2), A356237(3*n+5)))`
-/

namespace A053231.P2697782901346826102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049376 (Int.gcd (A330437 (n + 2)) (A356237 (3 * n + 5)))

end

end A053231.P2697782901346826102

/-! ## A053231.P14481273953738211860

`gcd(2-char[∑[n]], A179387(n+1))²`
-/

namespace A053231.P14481273953738211860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A179387 (n + 1)) ^ 2

end

end A053231.P14481273953738211860

/-! ## A053231.P6456033644356548318

`gcd(2-char[xor(n, 2*n)], A274733(n+1))²`
-/

namespace A053231.P6456033644356548318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A274733 (n + 1)) ^ 2

end

end A053231.P6456033644356548318

/-!
# A053233: Numbers k such that A053230(k) = 2.

The programs for A053233, the canonical program `A053233.P10130912460607265282` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053233 has offset 1).

The definition of A053233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053233.P10130912460607265282

`eq[2, A053230(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053233

/-- `eq[2, A053230(n+1)]+1` -/
def P10130912460607265282.Spec : Prop :=
  ∀ n, (P10130912460607265282.a n : ℤ) = A053233 (n + 1)

theorem P10130912460607265282.correct : P10130912460607265282.Spec := by
  intro n
  simp only [A053233, Nat.add_sub_cancel]

end A053233

/-! ## A053233.P16466075955466205264

`eq[2, A053230(A028310(n))]`
-/

namespace A053233.P16466075955466205264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053233.P16466075955466205264

namespace A053233

/-- `eq[2, A053230(A028310(n))]` -/
def P16466075955466205264.Spec : Prop :=
  ∀ n, (P16466075955466205264.a n : ℤ) = A053233 (n + 1)

end A053233

/-! ## A053233.P3242944398648884320

`A020725(eq[2, A053230(n+1)])`
-/

namespace A053233.P3242944398648884320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053233.P3242944398648884320

namespace A053233

/-- `A020725(eq[2, A053230(n+1)])` -/
def P3242944398648884320.Spec : Prop :=
  ∀ n, P3242944398648884320.a n = A053233 (n + 1)

end A053233

/-! ## A053233.P11907626509478985543

`A065475(eq[2, A053230(n+1)])`
-/

namespace A053233.P11907626509478985543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053233.P11907626509478985543

namespace A053233

/-- `A065475(eq[2, A053230(n+1)])` -/
def P11907626509478985543.Spec : Prop :=
  ∀ n, P11907626509478985543.a n = A053233 (n + 1)

end A053233

/-! ## A053233.P13383909987616920239

`eq[1, A107458(a(A053230(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A053233.P13383909987616920239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A107458 (f2 (A053230 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053233.P13383909987616920239

namespace A053233

/-- `eq[1, A107458(a(A053230(n)))]` -/
def P13383909987616920239.Spec : Prop :=
  ∀ n, (P13383909987616920239.a n : ℤ) = A053233 (n + 1)

end A053233

/-! ## A053233.P4545125726128044821

`eq[3, A165571(a(A053230(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A053233.P4545125726128044821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A165571 (f2 (A053230 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053233.P4545125726128044821

namespace A053233

/-- `eq[3, A165571(a(A053230(n)))]` -/
def P4545125726128044821.Spec : Prop :=
  ∀ n, (P4545125726128044821.a n : ℤ) = A053233 (n + 1)

end A053233

/-! ## A053233.P13479055562171443158

`eq[1, A260552(a(A053230(n)))]` with `a(0)=10, a(1)=10`
-/

namespace A053233.P13479055562171443158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [10, 10] fun n f2 =>
  A260552 (f2 (A053230 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053233.P13479055562171443158

namespace A053233

/-- `eq[1, A260552(a(A053230(n)))]` -/
def P13479055562171443158.Spec : Prop :=
  ∀ n, (P13479055562171443158.a n : ℤ) = A053233 (n + 1)

end A053233

/-! ## A053233.P15576582644434430013

`eq[2, Δ[A053224(n+1)]]+1`
-/

namespace A053233.P15576582644434430013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053233.P15576582644434430013

namespace A053233

/-- `eq[2, Δ[A053224(n+1)]]+1` -/
def P15576582644434430013.Spec : Prop :=
  ∀ n, (P15576582644434430013.a n : ℤ) = A053233 (n + 1)

end A053233

/-! ## A053233.P17190709675841789049

`eq[2, A053230(A233583(n+1))]`
-/

namespace A053233.P17190709675841789049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053233.P17190709675841789049

namespace A053233

/-- `eq[2, A053230(A233583(n+1))]` -/
def P17190709675841789049.Spec : Prop :=
  ∀ n, (P17190709675841789049.a n : ℤ) = A053233 (n + 1)

end A053233

/-!
# A053234: Numbers k such that A053230(k) = 1.

The programs for A053234, there is no canonical definition to state claims against.
-/

/-! ## A053234.P7667700755088220482

`A053232(eq[1, A053231(n+1)]+1)`
-/

namespace A053234.P7667700755088220482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053232 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053234.P7667700755088220482

/-! ## A053234.P943270103954384119

`A053232(record[(n+1)/A053231(n+1)])`
-/

namespace A053234.P943270103954384119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053231 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053232 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A053234.P943270103954384119

/-! ## A053234.P4379638657995715382

`A053232(record[root(n+1, A053231(n+1))])`
-/

namespace A053234.P4379638657995715382
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A053231 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053232 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A053234.P4379638657995715382

/-! ## A053234.P2422393869532345264

`eq[1, A053230(n+1)]+1`
-/

namespace A053234.P2422393869532345264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053234.P2422393869532345264

/-! ## A053234.P17902690792555385701

`eq[A053230(A028310(n)), A054977(n)]`
-/

namespace A053234.P17902690792555385701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053234.P17902690792555385701

/-! ## A053234.P2956138867633353137

`eq[A053230(A028310(n)), A057427(n)]`
-/

namespace A053234.P2956138867633353137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053234.P2956138867633353137

/-!
# A053235: Numbers k such that A053230(k) = 3.

The programs for A053235, the canonical program `A053235.P6397111754543227532` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053235 has offset 1).

The definition of A053235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053235.P6397111754543227532

`eq[3, A053230(A028310(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053235

/-- `eq[3, A053230(A028310(n))]` -/
def P6397111754543227532.Spec : Prop :=
  ∀ n, (P6397111754543227532.a n : ℤ) = A053235 (n + 1)

theorem P6397111754543227532.correct : P6397111754543227532.Spec := by
  intro n
  simp only [A053235, Nat.add_sub_cancel]

end A053235

/-! ## A053235.P3980026327307421959

`eq[3, A053230(A233583(n+1))]`
-/

namespace A053235.P3980026327307421959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053235.P3980026327307421959

namespace A053235

/-- `eq[3, A053230(A233583(n+1))]` -/
def P3980026327307421959.Spec : Prop :=
  ∀ n, (P3980026327307421959.a n : ℤ) = A053235 (n + 1)

end A053235

/-!
# A053236: Numbers k such that A053230(k) = 4.

The programs for A053236, the canonical program `A053236.P11682525552161789920` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053236 has offset 1).

The definition of A053236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053236.P11682525552161789920

`eq[4, A053230(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053236

/-- `eq[4, A053230(n+1)]+1` -/
def P11682525552161789920.Spec : Prop :=
  ∀ n, (P11682525552161789920.a n : ℤ) = A053236 (n + 1)

theorem P11682525552161789920.correct : P11682525552161789920.Spec := by
  intro n
  simp only [A053236, Nat.add_sub_cancel]

end A053236

/-! ## A053236.P14085009459050985008

`eq[4, A053230(A028310(n))]`
-/

namespace A053236.P14085009459050985008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053236.P14085009459050985008

namespace A053236

/-- `eq[4, A053230(A028310(n))]` -/
def P14085009459050985008.Spec : Prop :=
  ∀ n, (P14085009459050985008.a n : ℤ) = A053236 (n + 1)

end A053236

/-! ## A053236.P14470650302564826454

`A020725(eq[4, A053230(n+1)])`
-/

namespace A053236.P14470650302564826454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053236.P14470650302564826454

namespace A053236

/-- `A020725(eq[4, A053230(n+1)])` -/
def P14470650302564826454.Spec : Prop :=
  ∀ n, P14470650302564826454.a n = A053236 (n + 1)

end A053236

/-! ## A053236.P10010747541554736847

`A065475(eq[4, A053230(n+1)])`
-/

namespace A053236.P10010747541554736847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053236.P10010747541554736847

namespace A053236

/-- `A065475(eq[4, A053230(n+1)])` -/
def P10010747541554736847.Spec : Prop :=
  ∀ n, P10010747541554736847.a n = A053236 (n + 1)

end A053236

/-! ## A053236.P9262144931394831142

`eq[3, A165571(a(A053230(n)))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A053236.P9262144931394831142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f2 =>
  A165571 (f2 (A053230 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053236.P9262144931394831142

namespace A053236

/-- `eq[3, A165571(a(A053230(n)))]` -/
def P9262144931394831142.Spec : Prop :=
  ∀ n, (P9262144931394831142.a n : ℤ) = A053236 (n + 1)

end A053236

/-!
# A053237: Numbers k such that both A053230(k) and A053230(k+1) = 1.

The programs for A053237, there is no canonical definition to state claims against.
-/

/-! ## A053237.P12093229633327266575

`∩[A053234(n+1)-1, A053234(n+1)]`
-/

namespace A053237.P12093229633327266575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053234 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053237.P12093229633327266575

/-! ## A053237.P5569203621437806059

`A053234(eq[1, A053234(n+2)-A053234(n+1)]+1)`
-/

namespace A053237.P5569203621437806059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053234 (n + 2) - A053234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053234 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A053237.P5569203621437806059

/-! ## A053237.P6145374340984678898

`∩[eq[1, A053230(n+1)], A053234(n+1)]`
-/

namespace A053237.P6145374340984678898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A053237.P6145374340984678898

/-! ## A053237.P1524959373354116741

`∩[A053234(n+1), A023443(A053234(n+1))]`
-/

namespace A053237.P1524959373354116741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053234 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053237.P1524959373354116741

/-! ## A053237.P15447238025869047539

`eq[A010691(A053224(n+1)), A053230(n+1)]`
-/

namespace A053237.P15447238025869047539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 (A053224 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A053237.P15447238025869047539

/-!
# A053238: First differences between numbers k for which sigma(k) > sigma(k+1).

The programs for A053238, the canonical program `A053238.P8235000837731162910` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053238 has offset 1).

The definition of A053238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053238.P4011864413173438985

`A053226(n+2)-A053226(n+1)`
-/

namespace A053238.P4011864413173438985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 2) - A053226 (n + 1)

end

end A053238.P4011864413173438985

namespace A053238

/-- `A053226(n+2)-A053226(n+1)` -/
def P4011864413173438985.Spec : Prop :=
  ∀ n, P4011864413173438985.a n = A053238 (n + 1)

end A053238

/-! ## A053238.P15452034453259674200

`Δ[A053226(n+1)]`
-/

namespace A053238.P15452034453259674200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053238.P15452034453259674200

namespace A053238

/-- `Δ[A053226(n+1)]` -/
def P15452034453259674200.Spec : Prop :=
  ∀ n, P15452034453259674200.a n = A053238 (n + 1)

end A053238

/-! ## A053238.P8235000837731162910

`Δ[lt[A000203(n+2), A000203(n+1)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053238

/-- `Δ[lt[A000203(n+2), A000203(n+1)]]` -/
def P8235000837731162910.Spec : Prop :=
  ∀ n, P8235000837731162910.a n = A053238 (n + 1)

theorem P8235000837731162910.correct : P8235000837731162910.Spec := by
  intro n
  simp only [A053238, Nat.add_sub_cancel]

end A053238

/-! ## A053238.P4534650438212824146

`A053226(A000027(n+2))%A053226(n+1)`
-/

namespace A053238.P4534650438212824146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053226 (A000027 (n + 2)).toNat) (A053226 (n + 1))

end

end A053238.P4534650438212824146

namespace A053238

/-- `A053226(A000027(n+2))%A053226(n+1)` -/
def P4534650438212824146.Spec : Prop :=
  ∀ n, P4534650438212824146.a n = A053238 (n + 1)

end A053238

/-! ## A053238.P4471176934794445248

`A053226(A302042(2*(n+2)))%A053226(n+1)`
-/

namespace A053238.P4471176934794445248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053226 (A302042 (2 * (n + 2))).toNat) (A053226 (n + 1))

end

end A053238.P4471176934794445248

namespace A053238

/-- `A053226(A302042(2*(n+2)))%A053226(n+1)` -/
def P4471176934794445248.Spec : Prop :=
  ∀ n, P4471176934794445248.a n = A053238 (n + 1)

end A053238

/-! ## A053238.P11617772926461081102

`Δ[record[A053226(A152271(n))]]`
-/

namespace A053238.P11617772926461081102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053238.P11617772926461081102

namespace A053238

/-- `Δ[record[A053226(A152271(n))]]` -/
def P11617772926461081102.Spec : Prop :=
  ∀ n, P11617772926461081102.a n = A053238 (n + 1)

end A053238

/-! ## A053238.P6136058353127953157

`Δ[lt[A340793(n+1), 0]]`
-/

namespace A053238.P6136058353127953157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053238.P6136058353127953157

namespace A053238

/-- `Δ[lt[A340793(n+1), 0]]` -/
def P6136058353127953157.Spec : Prop :=
  ∀ n, P6136058353127953157.a n = A053238 (n + 1)

end A053238

/-! ## A053238.P1566094159885570686

`Δ[lt[A039653(n+1), A039653(n)]]`
-/

namespace A053238.P1566094159885570686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053238.P1566094159885570686

namespace A053238

/-- `Δ[lt[A039653(n+1), A039653(n)]]` -/
def P1566094159885570686.Spec : Prop :=
  ∀ n, P1566094159885570686.a n = A053238 (n + 1)

end A053238

/-! ## A053238.P13180557472164299437

`Δ[lt[A088580(n+2), A088580(n+1)]]`
-/

namespace A053238.P13180557472164299437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053238.P13180557472164299437

namespace A053238

/-- `Δ[lt[A088580(n+2), A088580(n+1)]]` -/
def P13180557472164299437.Spec : Prop :=
  ∀ n, P13180557472164299437.a n = A053238 (n + 1)

end A053238

/-! ## A053238.P6982772072445637818

`Δ[lt[A274535(n+2), A274535(n+1)]]`
-/

namespace A053238.P6982772072445637818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274535 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053238.P6982772072445637818

namespace A053238

/-- `Δ[lt[A274535(n+2), A274535(n+1)]]` -/
def P6982772072445637818.Spec : Prop :=
  ∀ n, P6982772072445637818.a n = A053238 (n + 1)

end A053238

/-! ## A053238.P8583208134491310914

`Δ[lt[A001065(n+2)+1, A001065(n+1)]]`
-/

namespace A053238.P8583208134491310914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 2) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053238.P8583208134491310914

namespace A053238

/-- `Δ[lt[A001065(n+2)+1, A001065(n+1)]]` -/
def P8583208134491310914.Spec : Prop :=
  ∀ n, P8583208134491310914.a n = A053238 (n + 1)

end A053238

/-! ## A053238.P8238676133701473562

`Δ[lt[A245092(2*n+3), A245092(2*n+1)]]`
-/

namespace A053238.P8238676133701473562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053238.P8238676133701473562

namespace A053238

/-- `Δ[lt[A245092(2*n+3), A245092(2*n+1)]]` -/
def P8238676133701473562.Spec : Prop :=
  ∀ n, P8238676133701473562.a n = A053238 (n + 1)

end A053238

/-!
# A053239: First differences between n for which sigma(n) > sigma(n+1), which are not 2.

The programs for A053239, the canonical program `A053239.P5244932916170375337` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053239 has offset 1).

The definition of A053239 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053238, A053240, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053239.P5244932916170375337

`A053238(A053240(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053239

/-- `A053238(A053240(n+1))` -/
def P5244932916170375337.Spec : Prop :=
  ∀ n, P5244932916170375337.a n = A053239 (n + 1)

theorem P5244932916170375337.correct : P5244932916170375337.Spec := by
  intro n
  simp only [A053239, Nat.add_sub_cancel]

end A053239

/-! ## A053239.P10735496259494852678

`A140704(A138256(n+1)*A239634(n+1))`
-/

namespace A053239.P10735496259494852678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140704 (A138256 (n + 1) * A239634 (n + 1)).toNat

end

end A053239.P10735496259494852678

namespace A053239

/-- `A140704(A138256(n+1)*A239634(n+1))` -/
def P10735496259494852678.Spec : Prop :=
  ∀ n, P10735496259494852678.a n = A053239 (n + 1)

end A053239

/-! ## A053239.P204142133269926127

`A040005(A127194(n+1)+A166923(n+1)+1)`
-/

namespace A053239.P204142133269926127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (A127194 (n + 1) + (A166923 (n + 1) + 1)).toNat

end

end A053239.P204142133269926127

namespace A053239

/-- `A040005(A127194(n+1)+A166923(n+1)+1)` -/
def P204142133269926127.Spec : Prop :=
  ∀ n, P204142133269926127.a n = A053239 (n + 1)

end A053239

/-! ## A053239.P17200735129924652169

`A000034(A337741(lt[0, n*n%3]))²`
-/

namespace A053239.P17200735129924652169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A337741 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)).toNat ^ 2

end

end A053239.P17200735129924652169

namespace A053239

/-- `A000034(A337741(lt[0, n*n%3]))²` -/
def P17200735129924652169.Spec : Prop :=
  ∀ n, P17200735129924652169.a n = A053239 (n + 1)

end A053239

/-! ## A053239.P17505751110631425063

`A000034(A337741(record[lcm(9, n+1)/9]))²`
-/

namespace A053239.P17505751110631425063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 (n + 1) : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A337741 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat ^ 2

end

end A053239.P17505751110631425063

namespace A053239

/-- `A000034(A337741(record[lcm(9, n+1)/9]))²` -/
def P17505751110631425063.Spec : Prop :=
  ∀ n, P17505751110631425063.a n = A053239 (n + 1)

end A053239

/-!
# A053240: n for which values not equal to 2 occur in the expansion of A053238.

The programs for A053240, the canonical program `A053240.P4301108083726215672` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053240 has offset 1).

The definition of A053240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053240.P4301108083726215672

`eq[char[A053241(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053240

/-- `eq[char[A053241(n+1)], A000007(n)]` -/
def P4301108083726215672.Spec : Prop :=
  ∀ n, (P4301108083726215672.a n : ℤ) = A053240 (n + 1)

theorem P4301108083726215672.correct : P4301108083726215672.Spec := by
  intro n
  simp only [A053240, Nat.add_sub_cancel]

end A053240

/-! ## A053240.P15021077752494691904

`eq[char[A053241(n+1)], A000038(n)]`
-/

namespace A053240.P15021077752494691904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053241 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053240.P15021077752494691904

namespace A053240

/-- `eq[char[A053241(n+1)], A000038(n)]` -/
def P15021077752494691904.Spec : Prop :=
  ∀ n, (P15021077752494691904.a n : ℤ) = A053240 (n + 1)

end A053240

/-!
# A053241: Numbers k such that A053238(k) = 2.

The programs for A053241, the canonical program `A053241.P3444779152513090390` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053241 has offset 1).

The definition of A053241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053241.P3444779152513090390

`eq[2, A053238(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053241

/-- `eq[2, A053238(n+1)]+1` -/
def P3444779152513090390.Spec : Prop :=
  ∀ n, (P3444779152513090390.a n : ℤ) = A053241 (n + 1)

theorem P3444779152513090390.correct : P3444779152513090390.Spec := by
  intro n
  simp only [A053241, Nat.add_sub_cancel]

end A053241

/-! ## A053241.P13389650377965650045

`eq[2, Δ[A053226(n+1)]]+1`
-/

namespace A053241.P13389650377965650045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053241.P13389650377965650045

namespace A053241

/-- `eq[2, Δ[A053226(n+1)]]+1` -/
def P13389650377965650045.Spec : Prop :=
  ∀ n, (P13389650377965650045.a n : ℤ) = A053241 (n + 1)

end A053241

/-! ## A053241.P7679476700585073749

`eq[char[A053240(n+1)], A000007(n)]`
-/

namespace A053241.P7679476700585073749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053240 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053241.P7679476700585073749

namespace A053241

/-- `eq[char[A053240(n+1)], A000007(n)]` -/
def P7679476700585073749.Spec : Prop :=
  ∀ n, (P7679476700585073749.a n : ℤ) = A053241 (n + 1)

end A053241

/-! ## A053241.P6993416960669283448

`eq[char[A053240(n+1)], A000038(n)]`
-/

namespace A053241.P6993416960669283448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053240 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A053241.P6993416960669283448

namespace A053241

/-- `eq[char[A053240(n+1)], A000038(n)]` -/
def P6993416960669283448.Spec : Prop :=
  ∀ n, (P6993416960669283448.a n : ℤ) = A053241 (n + 1)

end A053241

/-!
# A053242: Numbers k such that A053238(k) = 1.

The programs for A053242, the canonical program `A053242.P8865335897655039445` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053242 has offset 1).

The definition of A053242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053242.P8865335897655039445

`A053240(lt[A053239(n+1), 2]+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053242

/-- `A053240(lt[A053239(n+1), 2]+1)` -/
def P8865335897655039445.Spec : Prop :=
  ∀ n, P8865335897655039445.a n = A053242 (n + 1)

theorem P8865335897655039445.correct : P8865335897655039445.Spec := by
  intro n
  simp only [A053242, Nat.add_sub_cancel]

end A053242

/-! ## A053242.P15844046608860422837

`record[A053240(n+2)/A053239(n+2)]`
-/

namespace A053242.P15844046608860422837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053240 (n + 2) : ℚ) / (A053239 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053242.P15844046608860422837

namespace A053242

/-- `record[A053240(n+2)/A053239(n+2)]` -/
def P15844046608860422837.Spec : Prop :=
  ∀ n, P15844046608860422837.a n = (A053242 (n + 1) : ℚ)

end A053242

/-! ## A053242.P7347602071922372820

`eq[1, A053238(n+1)]+1`
-/

namespace A053242.P7347602071922372820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053242.P7347602071922372820

namespace A053242

/-- `eq[1, A053238(n+1)]+1` -/
def P7347602071922372820.Spec : Prop :=
  ∀ n, (P7347602071922372820.a n : ℤ) = A053242 (n + 1)

end A053242

/-! ## A053242.P6221284062460934429

`eq[1, A053238(A028310(n))]`
-/

namespace A053242.P6221284062460934429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053242.P6221284062460934429

namespace A053242

/-- `eq[1, A053238(A028310(n))]` -/
def P6221284062460934429.Spec : Prop :=
  ∀ n, (P6221284062460934429.a n : ℤ) = A053242 (n + 1)

end A053242

/-! ## A053242.P7272677294711993372

`A153152(eq[1, A053238(n+1)])`
-/

namespace A053242.P7272677294711993372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053242.P7272677294711993372

namespace A053242

/-- `A153152(eq[1, A053238(n+1)])` -/
def P7272677294711993372.Spec : Prop :=
  ∀ n, P7272677294711993372.a n = A053242 (n + 1)

end A053242

/-! ## A053242.P7193824108320802093

`eq[1, A053238(A000007(n)+n)]`
-/

namespace A053242.P7193824108320802093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053242.P7193824108320802093

namespace A053242

/-- `eq[1, A053238(A000007(n)+n)]` -/
def P7193824108320802093.Spec : Prop :=
  ∀ n, (P7193824108320802093.a n : ℤ) = A053242 (n + 1)

end A053242

/-! ## A053242.P1622761479208237344

`eq[1, A053238(A233583(n+1))]`
-/

namespace A053242.P1622761479208237344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053242.P1622761479208237344

namespace A053242

/-- `eq[1, A053238(A233583(n+1))]` -/
def P1622761479208237344.Spec : Prop :=
  ∀ n, (P1622761479208237344.a n : ℤ) = A053242 (n + 1)

end A053242

/-!
# A053243: Numbers k such that A053238(k) = 3.

The programs for A053243, there is no canonical definition to state claims against.
-/

/-! ## A053243.P3518598023998290054

`eq[3, A053238(A233583(n+1))]`
-/

namespace A053243.P3518598023998290054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053243.P3518598023998290054

/-!
# A053244: Numbers k such that A053238(k) = 4.

The programs for A053244, the canonical program `A053244.P10580565334014799152` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053244 has offset 1).

The definition of A053244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053244.P10580565334014799152

`A053240(lt[3, A053239(n+1)]+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053244

/-- `A053240(lt[3, A053239(n+1)]+1)` -/
def P10580565334014799152.Spec : Prop :=
  ∀ n, P10580565334014799152.a n = A053244 (n + 1)

theorem P10580565334014799152.correct : P10580565334014799152.Spec := by
  intro n
  simp only [A053244, Nat.add_sub_cancel]

end A053244

/-! ## A053244.P1023249458443790827

`record[xor(A053239(n+1)-4, A053240(n+1))]`
-/

namespace A053244.P1023249458443790827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053239 (n + 1) - 4) (A053240 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053244.P1023249458443790827

namespace A053244

/-- `record[xor(A053239(n+1)-4, A053240(n+1))]` -/
def P1023249458443790827.Spec : Prop :=
  ∀ n, P1023249458443790827.a n = A053244 (n + 1)

end A053244

/-! ## A053244.P3554780424517799644

`eq[4, A053238(n+1)]+1`
-/

namespace A053244.P3554780424517799644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053244.P3554780424517799644

namespace A053244

/-- `eq[4, A053238(n+1)]+1` -/
def P3554780424517799644.Spec : Prop :=
  ∀ n, (P3554780424517799644.a n : ℤ) = A053244 (n + 1)

end A053244

/-! ## A053244.P3574903337219957976

`eq[4, A053238(A028310(n))]`
-/

namespace A053244.P3574903337219957976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053244.P3574903337219957976

namespace A053244

/-- `eq[4, A053238(A028310(n))]` -/
def P3574903337219957976.Spec : Prop :=
  ∀ n, (P3574903337219957976.a n : ℤ) = A053244 (n + 1)

end A053244

/-! ## A053244.P10147443074224130086

`A153152(eq[4, A053238(n+1)])`
-/

namespace A053244.P10147443074224130086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053244.P10147443074224130086

namespace A053244

/-- `A153152(eq[4, A053238(n+1)])` -/
def P10147443074224130086.Spec : Prop :=
  ∀ n, P10147443074224130086.a n = A053244 (n + 1)

end A053244

/-!
# A053245: Numbers k such that both A053238(k) and A053238(k+1) = 1.

The programs for A053245, the canonical program `A053245.P5646553106277292429` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053245 has offset 1).

The definition of A053245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053245.P5646553106277292429

`∩[A053242(n+1)-1, A053242(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053245

/-- `∩[A053242(n+1)-1, A053242(n+1)]` -/
def P5646553106277292429.Spec : Prop :=
  ∀ n, (P5646553106277292429.a n : ℤ) = A053245 (n + 1)

theorem P5646553106277292429.correct : P5646553106277292429.Spec := by
  intro n
  simp only [A053245, Nat.add_sub_cancel]

end A053245

/-! ## A053245.P2676992659583604069

`∩[lt[A053238(n+1), 2], A053242(n+1)]`
-/

namespace A053245.P2676992659583604069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A053245.P2676992659583604069

namespace A053245

/-- `∩[lt[A053238(n+1), 2], A053242(n+1)]` -/
def P2676992659583604069.Spec : Prop :=
  ∀ n, (P2676992659583604069.a n : ℤ) = A053245 (n + 1)

end A053245

/-! ## A053245.P14266444260263380231

`eq[2, A053238(n+1)+A053238(A028310(n))]`
-/

namespace A053245.P14266444260263380231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (n + 1) + A053238 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053245.P14266444260263380231

namespace A053245

/-- `eq[2, A053238(n+1)+A053238(A028310(n))]` -/
def P14266444260263380231.Spec : Prop :=
  ∀ n, (P14266444260263380231.a n : ℤ) = A053245 (n + 1)

end A053245

/-! ## A053245.P1424349017141826119

`record[A053242(n+1)/A053238(A053242(n+1)+1)]`
-/

namespace A053245.P1424349017141826119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053242 (n + 1) : ℚ) / (A053238 (A053242 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053245.P1424349017141826119

namespace A053245

/-- `record[A053242(n+1)/A053238(A053242(n+1)+1)]` -/
def P1424349017141826119.Spec : Prop :=
  ∀ n, P1424349017141826119.a n = (A053245 (n + 1) : ℚ)

end A053245

/-! ## A053245.P4908953686862947876

`∩[A233583(A053240(n+1)), A053242(n+1)]`
-/

namespace A053245.P4908953686862947876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A053240 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053245.P4908953686862947876

namespace A053245

/-- `∩[A233583(A053240(n+1)), A053242(n+1)]` -/
def P4908953686862947876.Spec : Prop :=
  ∀ n, (P4908953686862947876.a n : ℤ) = A053245 (n + 1)

end A053245

/-!
# A053246: First differences of chowla(n).

The programs for A053246, the canonical program `A053246.P12887110105512609269` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053246 has offset 1).

The definition of A053246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053246.P17396515987517159125

`floor(Δ[A000203(n+1)]-acot(n))`
-/

namespace A053246.P17396515987517159125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℝ) - SequenceMachineLib.acot (n : ℝ)⌋

end

end A053246.P17396515987517159125

namespace A053246

/-- `floor(Δ[A000203(n+1)]-acot(n))` -/
def P17396515987517159125.Spec : Prop :=
  ∀ n, P17396515987517159125.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P12887110105512609269

`A053222(A028310(n)+1)-1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053246

/-- `A053222(A028310(n)+1)-1` -/
def P12887110105512609269.Spec : Prop :=
  ∀ n, P12887110105512609269.a n = A053246 (n + 1)

theorem P12887110105512609269.correct : P12887110105512609269.Spec := by
  intro n
  simp only [A053246, Nat.add_sub_cancel]

end A053246

/-! ## A053246.P12905489266267063955

`A053222(n+1)-A054977(n)`
-/

namespace A053246.P12905489266267063955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1) - A054977 n

end

end A053246.P12905489266267063955

namespace A053246

/-- `A053222(n+1)-A054977(n)` -/
def P12905489266267063955.Spec : Prop :=
  ∀ n, P12905489266267063955.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P16001727133684616202

`A053222(n+1)-A000038(n)!`
-/

namespace A053246.P16001727133684616202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1) - (Nat.factorial (A000038 n).toNat : ℤ)

end

end A053246.P16001727133684616202

namespace A053246

/-- `A053222(n+1)-A000038(n)!` -/
def P16001727133684616202.Spec : Prop :=
  ∀ n, P16001727133684616202.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P18179915532224651172

`Δ[A000203(n+1)]-A054977(n)`
-/

namespace A053246.P18179915532224651172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054977 n

end

end A053246.P18179915532224651172

namespace A053246

/-- `Δ[A000203(n+1)]-A054977(n)` -/
def P18179915532224651172.Spec : Prop :=
  ∀ n, P18179915532224651172.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P3243136193412582098

`Δ[A028310(n)-A033879(n+1)]`
-/

namespace A053246.P3243136193412582098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053246.P3243136193412582098

namespace A053246

/-- `Δ[A028310(n)-A033879(n+1)]` -/
def P3243136193412582098.Spec : Prop :=
  ∀ n, P3243136193412582098.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P13494196064373144140

`A053222(n+1)-(A000007(n)+1)`
-/

namespace A053246.P13494196064373144140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1) - (A000007 n + 1)

end

end A053246.P13494196064373144140

namespace A053246

/-- `A053222(n+1)-(A000007(n)+1)` -/
def P13494196064373144140.Spec : Prop :=
  ∀ n, P13494196064373144140.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P12543856001168738931

`A087156(n+1)-A163553(n+1)`
-/

namespace A053246.P12543856001168738931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) - A163553 (n + 1)

end

end A053246.P12543856001168738931

namespace A053246

/-- `A087156(n+1)-A163553(n+1)` -/
def P12543856001168738931.Spec : Prop :=
  ∀ n, P12543856001168738931.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P2011044700777042343

`Δ[A318508(n+1)+A318506(n+1)]`
-/

namespace A053246.P2011044700777042343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318508 (n + 1) + A318506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053246.P2011044700777042343

namespace A053246

/-- `Δ[A318508(n+1)+A318506(n+1)]` -/
def P2011044700777042343.Spec : Prop :=
  ∀ n, P2011044700777042343.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P15476946249935260851

`Δ[A000203(n+1)]+A057427(n)-2`
-/

namespace A053246.P15476946249935260851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A057427 n - 2)

end

end A053246.P15476946249935260851

namespace A053246

/-- `Δ[A000203(n+1)]+A057427(n)-2` -/
def P15476946249935260851.Spec : Prop :=
  ∀ n, P15476946249935260851.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P16087172548137804339

`(Δ[A000203(n+1)]-1)%∑[A177499(n)]`
-/

namespace A053246.P16087172548137804339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n - 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A053246.P16087172548137804339

namespace A053246

/-- `(Δ[A000203(n+1)]-1)%∑[A177499(n)]` -/
def P16087172548137804339.Spec : Prop :=
  ∀ n, P16087172548137804339.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P6234944703539773324

`Δ[∑{d}[n+1, #]-(n+1)]%(3*n+1)`
-/

namespace A053246.P6234944703539773324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (3 * n + 1 : ℤ)

end

end A053246.P6234944703539773324

namespace A053246

/-- `Δ[∑{d}[n+1, #]-(n+1)]%(3*n+1)` -/
def P6234944703539773324.Spec : Prop :=
  ∀ n, P6234944703539773324.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P8287390037410175429

`Δ[A048050(n+1)]`
-/

namespace A053246.P8287390037410175429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053246.P8287390037410175429

namespace A053246

/-- `Δ[A048050(n+1)]` -/
def P8287390037410175429.Spec : Prop :=
  ∀ n, P8287390037410175429.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P4024605515667108265

`Δ[A173455(n+1)]`
-/

namespace A053246.P4024605515667108265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053246.P4024605515667108265

namespace A053246

/-- `Δ[A173455(n+1)]` -/
def P4024605515667108265.Spec : Prop :=
  ∀ n, P4024605515667108265.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P15390083944429826904

`A340793(A028310(n)+2)-1`
-/

namespace A053246.P15390083944429826904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (A028310 n + 2).toNat - 1

end

end A053246.P15390083944429826904

namespace A053246

/-- `A340793(A028310(n)+2)-1` -/
def P15390083944429826904.Spec : Prop :=
  ∀ n, P15390083944429826904.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P18420712984815114771

`Δ[A237588(n+1)+A028310(n)]`
-/

namespace A053246.P18420712984815114771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053246.P18420712984815114771

namespace A053246

/-- `Δ[A237588(n+1)+A028310(n)]` -/
def P18420712984815114771.Spec : Prop :=
  ∀ n, P18420712984815114771.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P2935106966696242446

`Δ[A001065(n+1)-A057427(n)]`
-/

namespace A053246.P2935106966696242446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053246.P2935106966696242446

namespace A053246

/-- `Δ[A001065(n+1)-A057427(n)]` -/
def P2935106966696242446.Spec : Prop :=
  ∀ n, P2935106966696242446.a n = A053246 (n + 1)

end A053246

/-! ## A053246.P17729690128727428334

`Δ[A001065(n+1)]%A267682(n)`
-/

namespace A053246.P17729690128727428334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A267682 n)

end

end A053246.P17729690128727428334

namespace A053246

/-- `Δ[A001065(n+1)]%A267682(n)` -/
def P17729690128727428334.Spec : Prop :=
  ∀ n, P17729690128727428334.a n = A053246 (n + 1)

end A053246

/-!
# A053247: Second differences of sigma(n) that are positive.

The programs for A053247, the canonical program `A053247.P14306056287210934944` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053247 has offset 1).

The definition of A053247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053223, A053228, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053247.P14306056287210934944

`A053223(A053228(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053247

/-- `A053223(A053228(n+1))` -/
def P14306056287210934944.Spec : Prop :=
  ∀ n, P14306056287210934944.a n = A053247 (n + 1)

theorem P14306056287210934944.correct : P14306056287210934944.Spec := by
  intro n
  simp only [A053247, Nat.add_sub_cancel]

end A053247

/-! ## A053247.P9983765717870874943

`A053223(lt[0, A053223(n+1)]+1)`
-/

namespace A053247.P9983765717870874943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A053247.P9983765717870874943

namespace A053247

/-- `A053223(lt[0, A053223(n+1)]+1)` -/
def P9983765717870874943.Spec : Prop :=
  ∀ n, P9983765717870874943.a n = A053247 (n + 1)

end A053247

/-! ## A053247.P11221224614371226989

`A053223(2*(n+1))%A356734(3*n+5)²`
-/

namespace A053247.P11221224614371226989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053223 (2 * (n + 1))) (A356734 (3 * n + 5) ^ 2)

end

end A053247.P11221224614371226989

namespace A053247

/-- `A053223(2*(n+1))%A356734(3*n+5)²` -/
def P11221224614371226989.Spec : Prop :=
  ∀ n, P11221224614371226989.a n = A053247 (n + 1)

end A053247

/-! ## A053247.P3251177151794882099

`A053223(2*(n+1))%A000203(A020717(n))`
-/

namespace A053247.P3251177151794882099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053223 (2 * (n + 1))) (A000203 (A020717 n).toNat)

end

end A053247.P3251177151794882099

namespace A053247

/-- `A053223(2*(n+1))%A000203(A020717(n))` -/
def P3251177151794882099.Spec : Prop :=
  ∀ n, P3251177151794882099.a n = A053247 (n + 1)

end A053247

/-! ## A053247.P5244504494792965515

`A053223(2*n+2)%A329389(A000045(n))`
-/

namespace A053247.P5244504494792965515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053223 (2 * n + 2)) (A329389 (A000045 n).toNat)

end

end A053247.P5244504494792965515

namespace A053247

/-- `A053223(2*n+2)%A329389(A000045(n))` -/
def P5244504494792965515.Spec : Prop :=
  ∀ n, P5244504494792965515.a n = A053247 (n + 1)

end A053247

/-!
# A053248: Second differences of sigma(n) that are negative.

The programs for A053248, the canonical program `A053248.P8659473701059242995` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053248 has offset 1).

The definition of A053248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053248.P8659473701059242995

`abs(A053223(A053229(n+1)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053248

/-- `abs(A053223(A053229(n+1)))` -/
def P8659473701059242995.Spec : Prop :=
  ∀ n, P8659473701059242995.a n = A053248 (n + 1)

theorem P8659473701059242995.correct : P8659473701059242995.Spec := by
  intro n
  simp only [A053248, Nat.add_sub_cancel]

end A053248

/-! ## A053248.P13039005740766664001

`-A053223(A053229(A000027(n+1)))`
-/

namespace A053248.P13039005740766664001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053223 (A053229 (A000027 (n + 1)).toNat).toNat

end

end A053248.P13039005740766664001

namespace A053248

/-- `-A053223(A053229(A000027(n+1)))` -/
def P13039005740766664001.Spec : Prop :=
  ∀ n, P13039005740766664001.a n = A053248 (n + 1)

end A053248

/-! ## A053248.P7298492363206459027

`lcm(A020985(n), A053223(A053229(n+1)))`
-/

namespace A053248.P7298492363206459027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A053223 (A053229 (n + 1)).toNat)

end

end A053248.P7298492363206459027

namespace A053248

/-- `lcm(A020985(n), A053223(A053229(n+1)))` -/
def P7298492363206459027.Spec : Prop :=
  ∀ n, (P7298492363206459027.a n : ℤ) = A053248 (n + 1)

end A053248

/-! ## A053248.P3897569099303421283

`∑{d}[A053223(A053229(n+1)), A000010(#)]`
-/

namespace A053248.P3897569099303421283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (A053229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A053248.P3897569099303421283

namespace A053248

/-- `∑{d}[A053223(A053229(n+1)), A000010(#)]` -/
def P3897569099303421283.Spec : Prop :=
  ∀ n, P3897569099303421283.a n = A053248 (n + 1)

end A053248

/-! ## A053248.P10750724029290829691

`A000007(n+1)-A053223(A053229(n+1))`
-/

namespace A053248.P10750724029290829691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A053223 (A053229 (n + 1)).toNat

end

end A053248.P10750724029290829691

namespace A053248

/-- `A000007(n+1)-A053223(A053229(n+1))` -/
def P10750724029290829691.Spec : Prop :=
  ∀ n, P10750724029290829691.a n = A053248 (n + 1)

end A053248

/-! ## A053248.P2925396192087014208

`(n-A000027(n+1))*A053223(A053229(n+1))`
-/

namespace A053248.P2925396192087014208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000027 (n + 1)) * A053223 (A053229 (n + 1)).toNat

end

end A053248.P2925396192087014208

namespace A053248

/-- `(n-A000027(n+1))*A053223(A053229(n+1))` -/
def P2925396192087014208.Spec : Prop :=
  ∀ n, P2925396192087014208.a n = A053248 (n + 1)

end A053248

/-! ## A053248.P10803785792429227027

`-A053223(A118759(2*n+1))`
-/

namespace A053248.P10803785792429227027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053223 (A118759 (2 * n + 1)).toNat

end

end A053248.P10803785792429227027

namespace A053248

/-- `-A053223(A118759(2*n+1))` -/
def P10803785792429227027.Spec : Prop :=
  ∀ n, P10803785792429227027.a n = A053248 (n + 1)

end A053248

/-!
# A053249: Number of divisors of k, where k and k+1 have the same sum of divisors (A002961).

The programs for A053249, there is no canonical definition to state claims against.
-/

/-! ## A053249.P6704053381100549876

`A054002(n+1)-A054003(n+1)`
-/

namespace A053249.P6704053381100549876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054002 (n + 1) - A054003 (n + 1)

end

end A053249.P6704053381100549876

/-! ## A053249.P4839337345575895193

`∏{e}[A002961(n+1), #+1]`
-/

namespace A053249.P4839337345575895193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A053249.P4839337345575895193

/-! ## A053249.P2041011033627795103

`∏{e}[A225757(Δ[n²]), #+1]`
-/

namespace A053249.P2041011033627795103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A053249.P2041011033627795103

/-! ## A053249.P1658210992139831074

`∏{e}[A231546(n+1)-1, #+1]`
-/

namespace A053249.P1658210992139831074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A053249.P1658210992139831074

/-! ## A053249.P15114097408865984639

`∏{e}[A225757(2*(n+1))-1, #+1]`
-/

namespace A053249.P15114097408865984639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (2 * (n + 1)) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A053249.P15114097408865984639

/-! ## A053249.P1442798492287504946

`∑{d}[A002961(n+1), A002969(val(#, 4))]`
-/

namespace A053249.P1442798492287504946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002969 (SequenceMachineLib.valuation d 4)

end

end A053249.P1442798492287504946

/-! ## A053249.P5029039650670186234

`∑{d}[A002961(n+1), A011971(val(#, 4))]`
-/

namespace A053249.P5029039650670186234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A011971 (SequenceMachineLib.valuation d 4)

end

end A053249.P5029039650670186234

/-! ## A053249.P2199934647191913649

`∑{d}[A002961(n+1), gcd(#, A211769(n+1))]`
-/

namespace A053249.P2199934647191913649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A211769 (n + 1))

end

end A053249.P2199934647191913649

/-!
# A053250: Coefficients of the '3rd-order' mock theta function phi(q).

The programs for A053250, there is no canonical definition to state claims against.
-/

/-! ## A053250.P9038249413410893776

`A132969(n)-2*A053251(n)`
-/

namespace A053250.P9038249413410893776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132969 n - 2 * A053251 n

end

end A053250.P9038249413410893776

/-! ## A053250.P6890004629853385715

`2*A260413(n)-A257657(n)`
-/

namespace A053250.P6890004629853385715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260413 n - A257657 n

end

end A053250.P6890004629853385715

/-! ## A053250.P4100456273573314766

`abs(A132970(n))-2*A053251(n)`
-/

namespace A053250.P4100456273573314766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132970 n| - 2 * A053251 n

end

end A053250.P4100456273573314766

/-! ## A053250.P15389737534825797754

`A132969(n)+2*A053251(n)*A008683(A001359(n+1))`
-/

namespace A053250.P15389737534825797754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132969 n + 2 * A053251 n * A008683 (A001359 (n + 1)).toNat

end

end A053250.P15389737534825797754

/-! ## A053250.P737552850018720250

`A260460(n)+2*A053251(n)`
-/

namespace A053250.P737552850018720250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260460 n + 2 * A053251 n

end

end A053250.P737552850018720250

/-! ## A053250.P2080023506676991038

`(A260460(n)+A132969(n))/2`
-/

namespace A053250.P2080023506676991038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260460 n + A132969 n : ℚ) / 2

end

end A053250.P2080023506676991038

/-! ## A053250.P9622561289329326550

`A132969(n)+2*A053251(n)*A008683(A007700(n+1))`
-/

namespace A053250.P9622561289329326550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132969 n + 2 * A053251 n * A008683 (A007700 (n + 1)).toNat

end

end A053250.P9622561289329326550

/-! ## A053250.P6586164330062524748

`A132969(n)-A005843(A053251(n))`
-/

namespace A053250.P6586164330062524748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132969 n - A005843 (A053251 n).toNat

end

end A053250.P6586164330062524748

/-! ## A053250.P3947984982045788797

`abs(A132970(n))-A005843(A053251(n))`
-/

namespace A053250.P3947984982045788797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132970 n| - A005843 (A053251 n).toNat

end

end A053250.P3947984982045788797

/-! ## A053250.P3919900261022030462

`A005843(A053251(n))+(-1)^n*A000025(n)`
-/

namespace A053250.P3919900261022030462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053251 n).toNat + (-1) ^ n * A000025 n

end

end A053250.P3919900261022030462

/-! ## A053250.P9231196330827179844

`A005843(A053251(n))+A000025(n)*A033999(n)`
-/

namespace A053250.P9231196330827179844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053251 n).toNat + A000025 n * A033999 n

end

end A053250.P9231196330827179844

/-! ## A053250.P17178814944634466339

`A033999(n)*A132970(n)-A005843(A053251(n))`
-/

namespace A053250.P17178814944634466339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132970 n - A005843 (A053251 n).toNat

end

end A053250.P17178814944634466339

/-! ## A053250.P17303583483162279125

`2*A260412(n)-A257657(n)-A005843(A053251(n))`
-/

namespace A053250.P17303583483162279125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A260412 n - A257657 n - A005843 (A053251 n).toNat

end

end A053250.P17303583483162279125

/-! ## A053250.P13972318617316446560

`A132969(n)-A005843(A260412(n)-(-1)^n*A053252(n))`
-/

namespace A053250.P13972318617316446560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132969 n - A005843 (A260412 n - (-1) ^ n * A053252 n).toNat

end

end A053250.P13972318617316446560

/-! ## A053250.P11177414967715997007

`abs(A132970(n))-A005843(A260412(n)-(-1)^n*A053252(n))`
-/

namespace A053250.P11177414967715997007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132970 n| - A005843 (A260412 n - (-1) ^ n * A053252 n).toNat

end

end A053250.P11177414967715997007

/-! ## A053250.P9872002868638783396

`A005843(A053251(n))+(A000041(n)-4*A101707(n))*(-1)^n`
-/

namespace A053250.P9872002868638783396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053251 n).toNat + (A000041 n - 4 * A101707 n) * (-1) ^ n

end

end A053250.P9872002868638783396

/-! ## A053250.P4861612223736589375

`A005843(A260412(n)-(-1)^n*A053252(n))+(-1)^n*A000025(n)`
-/

namespace A053250.P4861612223736589375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A260412 n - (-1) ^ n * A053252 n).toNat + (-1) ^ n * A000025 n

end

end A053250.P4861612223736589375

/-! ## A053250.P13818150383838842808

`A005843(A260412(n)-(-1)^n*A053252(n))+A000025(n)*A033999(n)`
-/

namespace A053250.P13818150383838842808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A260412 n - (-1) ^ n * A053252 n).toNat + A000025 n * A033999 n

end

end A053250.P13818150383838842808

/-!
# A053251: Coefficients of the '3rd-order' mock theta function psi(q).

The programs for A053251, there is no canonical definition to state claims against.
-/

/-! ## A053251.P2594579527088504707

`A260412(n)-A260413(n)`
-/

namespace A053251.P2594579527088504707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260412 n - A260413 n

end

end A053251.P2594579527088504707

/-! ## A053251.P16656122980029630146

`(A132969(n)-A053250(n))/2`
-/

namespace A053251.P16656122980029630146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132969 n - A053250 n : ℚ) / 2

end

end A053251.P16656122980029630146

/-! ## A053251.P5419457269453162721

`(abs(A132970(n))-A053250(n))/2`
-/

namespace A053251.P5419457269453162721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A132970 n| - A053250 n : ℚ) / 2

end

end A053251.P5419457269453162721

/-! ## A053251.P8985657296429706302

`A260412(n)-(-1)^n*A053252(n)`
-/

namespace A053251.P8985657296429706302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260412 n - (-1) ^ n * A053252 n

end

end A053251.P8985657296429706302

/-! ## A053251.P4900416108677982135

`A260412(n)-A053252(n)/A033999(n)`
-/

namespace A053251.P4900416108677982135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260412 n : ℚ) - (A053252 n : ℚ) / (A033999 n : ℚ)

end

end A053251.P4900416108677982135

/-! ## A053251.P8382412982712878756

`A260412(n)-A053252(n)/∑[A280560(n)]`
-/

namespace A053251.P8382412982712878756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260412 n : ℚ) - (A053252 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A053251.P8382412982712878756

/-! ## A053251.P12361167959813371356

`(A053250(n)-A260460(n))/2`
-/

namespace A053251.P12361167959813371356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053250 n - A260460 n : ℚ) / 2

end

end A053251.P12361167959813371356

/-! ## A053251.P2704780498594782202

`A014682(A132969(n)-A053250(n))`
-/

namespace A053251.P2704780498594782202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A132969 n - A053250 n).toNat

end

end A053251.P2704780498594782202

/-! ## A053251.P16499336574184993333

`A014682(abs(A132970(n))-A053250(n))`
-/

namespace A053251.P16499336574184993333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (|A132970 n| - A053250 n).toNat

end

end A053251.P16499336574184993333

/-! ## A053251.P15662611433259389492

`A038572(A132969(n)-A053250(n))`
-/

namespace A053251.P15662611433259389492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A132969 n - A053250 n).toNat

end

end A053251.P15662611433259389492

/-!
# A053252: Coefficients of the '3rd-order' mock theta function chi(q).

The programs for A053252, there is no canonical definition to state claims against.
-/

/-! ## A053252.P14001613880789881383

`(-1)^n*A260413(n)`
-/

namespace A053252.P14001613880789881383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A260413 n

end

end A053252.P14001613880789881383

/-! ## A053252.P8298016296518628605

`A260413(n)/A033999(n)`
-/

namespace A053252.P8298016296518628605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260413 n : ℚ) / (A033999 n : ℚ)

end

end A053252.P8298016296518628605

/-! ## A053252.P3957201189527101770

`A260413(n)/∑[A280560(n)]`
-/

namespace A053252.P3957201189527101770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260413 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A053252.P3957201189527101770

/-! ## A053252.P12627920308705906510

`(A260412(n)-A053251(n))*A033999(n)`
-/

namespace A053252.P12627920308705906510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A260412 n - A053251 n) * A033999 n

end

end A053252.P12627920308705906510

/-! ## A053252.P3972271605446988912

`(A260412(n)-A053251(n))*∑[A280560(n)]`
-/

namespace A053252.P3972271605446988912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A260412 n - A053251 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053252.P3972271605446988912

/-!
# A053253: Coefficients of the '3rd-order' mock theta function omega(q).

The programs for A053253, there is no canonical definition to state claims against.
-/

/-! ## A053253.P2733202366822717093

`A095913(n+3)`
-/

namespace A053253.P2733202366822717093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095913 (n + 3)

end

end A053253.P2733202366822717093

/-! ## A053253.P17179401735236448916

`A067357(Δ[n²])`
-/

namespace A053253.P17179401735236448916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067357 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053253.P17179401735236448916

/-! ## A053253.P18107871870383195528

`record[-A053254(n+1)]`
-/

namespace A053253.P18107871870383195528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053253.P18107871870383195528

/-! ## A053253.P4775107211884499645

`abs(A053254(2*n+1))`
-/

namespace A053253.P4775107211884499645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053254 (2 * n + 1)|

end

end A053253.P4775107211884499645

/-! ## A053253.P17025250681314251298

`gcd(A000038(n), A053254(2*n+1))`
-/

namespace A053253.P17025250681314251298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053254 (2 * n + 1))

end

end A053253.P17025250681314251298

/-! ## A053253.P16882545226600211606

`A000038(n+1)-A053254(2*n+1)`
-/

namespace A053253.P16882545226600211606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A053254 (2 * n + 1)

end

end A053253.P16882545226600211606

/-! ## A053253.P14988083695060191111

`lcm(A006466(3*n), A053254(2*n+1))`
-/

namespace A053253.P14988083695060191111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 (3 * n)) (A053254 (2 * n + 1))

end

end A053253.P14988083695060191111

/-! ## A053253.P8132210410448387105

`1-(A053254(2*n+1)+A033999(2*n))`
-/

namespace A053253.P8132210410448387105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A053254 (2 * n + 1) + A033999 (2 * n))

end

end A053253.P8132210410448387105

/-! ## A053253.P4709703130555667913

`A035363(2*n+1)-A053254(2*n+1)`
-/

namespace A053253.P4709703130555667913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n + 1) - A053254 (2 * n + 1)

end

end A053253.P4709703130555667913

/-! ## A053253.P7206520414230487490

`A035444(2*n+1)-A053254(2*n+1)`
-/

namespace A053253.P7206520414230487490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * n + 1) - A053254 (2 * n + 1)

end

end A053253.P7206520414230487490

/-! ## A053253.P1610253947687072560

`A035457(2*n+1)-A053254(2*n+1)`
-/

namespace A053253.P1610253947687072560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n + 1) - A053254 (2 * n + 1)

end

end A053253.P1610253947687072560

/-! ## A053253.P2585716764036329693

`A033999(2*n+1)*A053254(2*n+1)`
-/

namespace A053253.P2585716764036329693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A053254 (2 * n + 1)

end

end A053253.P2585716764036329693

/-! ## A053253.P4218466763522964679

`1-(A165326(2*n+1)+A053254(2*n+1))`
-/

namespace A053253.P4218466763522964679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A165326 (2 * n + 1) + A053254 (2 * n + 1))

end

end A053253.P4218466763522964679

/-! ## A053253.P16403833934825164047

`2-(A053254(2*n+1)+A020639(2*(n+1)))`
-/

namespace A053253.P16403833934825164047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A053254 (2 * n + 1) + A020639 (2 * (n + 1)))

end

end A053253.P16403833934825164047

/-! ## A053253.P10543562441953239368

`A053254(2*n+1)*A165326(A020639(2*(n+1)))`
-/

namespace A053253.P10543562441953239368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053254 (2 * n + 1) * A165326 (A020639 (2 * (n + 1))).toNat

end

end A053253.P10543562441953239368

/-! ## A053253.P18254239723853162108

`A132969(2*n)-(A132970(2*n)+A053254(2*n+1))`
-/

namespace A053253.P18254239723853162108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132969 (2 * n) - (A132970 (2 * n) + A053254 (2 * n + 1))

end

end A053253.P18254239723853162108

/-! ## A053253.P1792209062835471246

`and(1, A000079(n+1))-A053254(2*n+1)`
-/

namespace A053253.P1792209062835471246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000079 (n + 1)) - A053254 (2 * n + 1)

end

end A053253.P1792209062835471246

/-!
# A053254: Coefficients of the '3rd-order' mock theta function nu(q).

The programs for A053254, there is no canonical definition to state claims against.
-/

/-! ## A053254.P14856072120641745824

`(-1)^n*A067357(n)`
-/

namespace A053254.P14856072120641745824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A067357 n

end

end A053254.P14856072120641745824

/-! ## A053254.P15506688112996617102

`A067357(n)/A033999(n)`
-/

namespace A053254.P15506688112996617102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067357 n : ℚ) / (A033999 n : ℚ)

end

end A053254.P15506688112996617102

/-! ## A053254.P13686888284770830132

`A067357(n)*A087960(2*(n+2))`
-/

namespace A053254.P13686888284770830132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067357 n * A087960 (2 * (n + 2))

end

end A053254.P13686888284770830132

/-! ## A053254.P6811899166242074182

`(-1)^n*(A376628(n)+A376628(n+1))`
-/

namespace A053254.P6811899166242074182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A376628 n + A376628 (n + 1))

end

end A053254.P6811899166242074182

/-! ## A053254.P12252945595921263173

`A067357(n)*A132969(n)/A132970(n)`
-/

namespace A053254.P12252945595921263173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067357 n * A132969 n : ℚ) / (A132970 n : ℚ)

end

end A053254.P12252945595921263173

/-!
# A053255: Coefficients of the '3rd-order' mock theta function rho(q).

The programs for A053255, there is no canonical definition to state claims against.
-/

/-! ## A053255.P13267790062600746397

`Δ[A224850(2*(n+1))%A272121(n+2)]`
-/

namespace A053255.P13267790062600746397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224850 (2 * (n + 1))) (A272121 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053255.P13267790062600746397

/-! ## A053255.P299019412535774754

`Δ[A319379(n+1)%A290091(n)]`
-/

namespace A053255.P299019412535774754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319379 (n + 1)) (A290091 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053255.P299019412535774754

/-! ## A053255.P2930673516360591067

`Δ[A275947(A059270(A243497(n)))]`
-/

namespace A053255.P2930673516360591067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 (A059270 (A243497 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053255.P2930673516360591067

/-! ## A053255.P3458865928935461516

`Δ[A033809(n+1)%A033809(A050921(2*(n+2)))]`
-/

namespace A053255.P3458865928935461516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033809 (n + 1)) (A033809 (A050921 (2 * (n + 2))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053255.P3458865928935461516

/-! ## A053255.P18169858810229222810

`Δ[A123400(A276085(2*(n+1)))]`
-/

namespace A053255.P18169858810229222810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123400 (A276085 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053255.P18169858810229222810

/-!
# A053256: Coefficients of the '5th-order' mock theta function f_0(q).

The programs for A053256, there is no canonical definition to state claims against.
-/

/-! ## A053256.P1254613932598124807

`A048165(A187829(n+1)%A007051(n))`
-/

namespace A053256.P1254613932598124807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048165 (Int.tmod (A187829 (n + 1)) (A007051 n)).toNat

end

end A053256.P1254613932598124807

/-! ## A053256.P6573761604783874096

`A048165(A077168(n)%A000079(n))`
-/

namespace A053256.P6573761604783874096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048165 (Int.tmod (A077168 n) (A000079 n)).toNat

end

end A053256.P6573761604783874096

/-! ## A053256.P8660102215287768373

`A048165(and(A000225(n), A077168(n)))`
-/

namespace A053256.P8660102215287768373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048165 (Int.land (A000225 n) (A077168 n)).toNat

end

end A053256.P8660102215287768373

/-!
# A053257: Coefficients of the '5th-order' mock theta function f_1(q).

The programs for A053257, there is no canonical definition to state claims against.
-/

/-! ## A053257.P7202420450262333580

`(-1)^n*A151702(A131646(n+1))`
-/

namespace A053257.P7202420450262333580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A151702 (A131646 (n + 1)).toNat

end

end A053257.P7202420450262333580

/-! ## A053257.P9546194205826414071

`A151702(A131646(n+1))/A033999(n)`
-/

namespace A053257.P9546194205826414071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151702 (A131646 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)

end

end A053257.P9546194205826414071

/-! ## A053257.P16798234041786820362

`A151702(A131646(n+1))/A009001(2*n)`
-/

namespace A053257.P16798234041786820362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151702 (A131646 (n + 1)).toNat : ℚ) / (A009001 (2 * n) : ℚ)

end

end A053257.P16798234041786820362

/-! ## A053257.P9903386576864436992

`-(A033999(n+1)*A151702(A131646(n+1)))`
-/

namespace A053257.P9903386576864436992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A151702 (A131646 (n + 1)).toNat)

end

end A053257.P9903386576864436992

/-! ## A053257.P7278410802132874636

`Δ[A008611(A046951(A227036(n)))]`
-/

namespace A053257.P7278410802132874636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A046951 (A227036 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053257.P7278410802132874636

/-!
# A053258: Coefficients of the '5th-order' mock theta function phi_0(q).

The programs for A053258, there is no canonical definition to state claims against.
-/

/-! ## A053258.P1055979948442093358

`abs(A053266(n)-A259551(n))`
-/

namespace A053258.P1055979948442093358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053266 n - A259551 n|

end

end A053258.P1055979948442093358

/-! ## A053258.P3357123038391171068

`abs(A053260(2*n)+A053256(2*n))`
-/

namespace A053258.P3357123038391171068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053260 (2 * n) + A053256 (2 * n)|

end

end A053258.P3357123038391171068

/-! ## A053258.P18209975190711072628

`abs(A260971(n))`
-/

namespace A053258.P18209975190711072628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260971 n|

end

end A053258.P18209975190711072628

/-! ## A053258.P8033264085683588004

`A033999(n)*A260971(n)`
-/

namespace A053258.P8033264085683588004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A260971 n

end

end A053258.P8033264085683588004

/-! ## A053258.P3236504234319901094

`gcd(A000038(n), A260971(n))`
-/

namespace A053258.P3236504234319901094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A260971 n)

end

end A053258.P3236504234319901094

/-! ## A053258.P4621584500366260797

`lcm(A020985(n), A260971(n))`
-/

namespace A053258.P4621584500366260797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A260971 n)

end

end A053258.P4621584500366260797

/-! ## A053258.P4136070292440928110

`A260971(Δ[A004526(n)])*A260971(n)`
-/

namespace A053258.P4136070292440928110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260971 (f1 (n + 1) - f1 n).toNat * A260971 n

end

end A053258.P4136070292440928110

/-! ## A053258.P15085624032531147549

`A260971(Δ[A008619(n)])*A260971(n)`
-/

namespace A053258.P15085624032531147549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260971 (f1 (n + 1) - f1 n).toNat * A260971 n

end

end A053258.P15085624032531147549

/-!
# A053259: Coefficients of the '5th-order' mock theta function phi_1(q).

The programs for A053259, there is no canonical definition to state claims against.
-/

/-! ## A053259.P4366525266309316587

`A285345(∑[∑[A004525(n)²+4]])`
-/

namespace A053259.P4366525266309316587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n ^ 2 + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053259.P4366525266309316587

/-! ## A053259.P4893239186770965914

`A164056(A000203(n+2)*A250662(n))`
-/

namespace A053259.P4893239186770965914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164056 (A000203 (n + 2) * A250662 n).toNat

end

end A053259.P4893239186770965914

/-! ## A053259.P5178682123917458957

`A025435(n)^A267328(A316304(n+1))`
-/

namespace A053259.P5178682123917458957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025435 n : ℚ) ^ (A267328 (A316304 (n + 1)).toNat : ℤ)

end

end A053259.P5178682123917458957

/-! ## A053259.P12880100831432682031

`A214364(gcd(A088226(n+1), A315245(n)))`
-/

namespace A053259.P12880100831432682031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214364 (Int.gcd (A088226 (n + 1)) (A315245 n))

end

end A053259.P12880100831432682031

/-! ## A053259.P9685942582851073676

`A064852(gcd(A000120(n+3), A331706(n)))`
-/

namespace A053259.P9685942582851073676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064852 (Int.gcd (A000120 (n + 3)) (A331706 n))

end

end A053259.P9685942582851073676

/-!
# A053260: Coefficients of the '5th-order' mock theta function psi_0(q).

The programs for A053260, there is no canonical definition to state claims against.
-/

/-! ## A053260.P1228992440619073896

`A194083(n)-A053261(n)`
-/

namespace A053260.P1228992440619073896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194083 n - A053261 n

end

end A053260.P1228992440619073896

/-! ## A053260.P6798185238704643758

`A194083(n)-A008619(A025876(2*n)%A239010(n+2))`
-/

namespace A053260.P6798185238704643758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194083 n - A008619 (Int.tmod (A025876 (2 * n)) (A239010 (n + 2))).toNat

end

end A053260.P6798185238704643758

/-! ## A053260.P4618023457285020688

`A097795(∑[A034258(n+1)]+10)`
-/

namespace A053260.P4618023457285020688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A053260.P4618023457285020688

/-! ## A053260.P653312730108629963

`A097795(A101881(n)+7)`
-/

namespace A053260.P653312730108629963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097795 (A101881 n + 7).toNat

end

end A053260.P653312730108629963

/-! ## A053260.P938575402109959851

`A008676(lt[A003114(n), A195161(n)])`
-/

namespace A053260.P938575402109959851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053260.P938575402109959851

/-!
# A053261: Coefficients of the '5th-order' mock theta function psi_1(q).

The programs for A053261, there is no canonical definition to state claims against.
-/

/-! ## A053261.P225992106241991138

`A194083(n)-A053260(n)`
-/

namespace A053261.P225992106241991138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194083 n - A053260 n

end

end A053261.P225992106241991138

/-! ## A053261.P3163844802399697314

`A008619(A025876(2*n)%A239010(n+2))`
-/

namespace A053261.P3163844802399697314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A025876 (2 * n)) (A239010 (n + 2))).toNat

end

end A053261.P3163844802399697314

/-! ## A053261.P14511043125155734943

`A008619(A025876(2*n))%p?[A194083(n)]`
-/

namespace A053261.P14511043125155734943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A025876 (2 * n)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A053261.P14511043125155734943

/-! ## A053261.P14343767379616844011

`A008619(A025876(2*n)^gcd(5, A053260(n)))`
-/

namespace A053261.P14343767379616844011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025876 (2 * n) ^ Int.gcd 5 (A053260 n)).toNat

end

end A053261.P14343767379616844011

/-!
# A053262: Coefficients of the 5th-order mock theta function chi_0(q).

The programs for A053262, there is no canonical definition to state claims against.
-/

/-! ## A053262.P14507915242499604417

`A053260(2*n)+abs(A053256(2*n))`
-/

namespace A053262.P14507915242499604417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (2 * n) + |A053256 (2 * n)|

end

end A053262.P14507915242499604417

/-! ## A053262.P13945237543276170598

`A053263(A028310(n))-A237829(n+1)`
-/

namespace A053262.P13945237543276170598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053263 (A028310 n).toNat - A237829 (n + 1)

end

end A053262.P13945237543276170598

/-! ## A053262.P10751198961845987433

`abs(A053260(A005843(n))-A053256(2*n))`
-/

namespace A053262.P10751198961845987433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053260 (A005843 n).toNat - A053256 (2 * n)|

end

end A053262.P10751198961845987433

/-! ## A053262.P11926270017330102035

`2*A053264(n)-A260971(n)`
-/

namespace A053262.P11926270017330102035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053264 n - A260971 n

end

end A053262.P11926270017330102035

/-! ## A053262.P9035202652027565317

`A053263(A233583(n+1))-A237829(n+1)`
-/

namespace A053262.P9035202652027565317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053263 (A233583 (n + 1)).toNat - A237829 (n + 1)

end

end A053262.P9035202652027565317

/-! ## A053262.P11739387022933646576

`A005843(A053264(n))-A260971(n)`
-/

namespace A053262.P11739387022933646576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053264 n).toNat - A260971 n

end

end A053262.P11739387022933646576

/-! ## A053262.P11244463912595031254

`A005843(A053260(n+1-(1-n)%(n+1)))-A260971(n)`
-/

namespace A053262.P11244463912595031254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053260 ((n + 1 : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat).toNat - A260971 n

end

end A053262.P11244463912595031254

/-! ## A053262.P6009152034964209143

`A005843(A053260(floor(n²/(n+1)+n+1)))-A260971(n)`
-/

namespace A053262.P6009152034964209143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053260 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌋.toNat).toNat - A260971 n

end

end A053262.P6009152034964209143

/-! ## A053262.P17099504476221333587

`A254667(A053263(n))-A237829(n+1)`
-/

namespace A053262.P17099504476221333587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A053263 n).toNat - A237829 (n + 1)

end

end A053262.P17099504476221333587

/-!
# A053263: Coefficients of the '5th-order' mock theta function chi_1(q).

The programs for A053263, there is no canonical definition to state claims against.
-/

/-! ## A053263.P18137403106180588882

`A237824(n+1)-A118096(n+1)`
-/

namespace A053263.P18137403106180588882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237824 (n + 1) - A118096 (n + 1)

end

end A053263.P18137403106180588882

/-! ## A053263.P14147062387588247258

`A053265(n)-A053257(2*n+1)`
-/

namespace A053263.P14147062387588247258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053265 n - A053257 (2 * n + 1)

end

end A053263.P14147062387588247258

/-! ## A053263.P13947315590202330801

`A053261(2*n+1)-A053257(2*n+1)`
-/

namespace A053263.P13947315590202330801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053261 (2 * n + 1) - A053257 (2 * n + 1)

end

end A053263.P13947315590202330801

/-! ## A053263.P2164760107032547530

`A237824(n+1)+A001478(A118096(n+1)+1)+1`
-/

namespace A053263.P2164760107032547530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237824 (n + 1) + A001478 (A118096 (n + 1) + 1).toNat + 1

end

end A053263.P2164760107032547530

/-! ## A053263.P17180341504420002373

`Δ[A000070(n)]-A237821(n+1)`
-/

namespace A053263.P17180341504420002373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237821 (n + 1)

end

end A053263.P17180341504420002373

/-!
# A053264: Coefficients of the '5th-order' mock theta function F_0(q).

The programs for A053264, there is no canonical definition to state claims against.
-/

/-! ## A053264.P4675702560418304979

`A053260(n+1-(1-n)%(n+1))`
-/

namespace A053264.P4675702560418304979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 ((n + 1 : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A053264.P4675702560418304979

/-! ## A053264.P332655883900029212

`A053260(floor(n²/(n+1)+n+1))`
-/

namespace A053264.P332655883900029212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)⌋.toNat

end

end A053264.P332655883900029212

/-! ## A053264.P11329303862957109005

`A053260(2*n)+A000007(n)`
-/

namespace A053264.P11329303862957109005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (2 * n) + A000007 n

end

end A053264.P11329303862957109005

/-! ## A053264.P11399124881954849823

`A053260(2*n)+A000035(A001223(n+1))`
-/

namespace A053264.P11399124881954849823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (2 * n) + A000035 (A001223 (n + 1)).toNat

end

end A053264.P11399124881954849823

/-! ## A053264.P18137695930886495052

`A053260(2*n)+A000035(A293482(n+2))`
-/

namespace A053264.P18137695930886495052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (2 * n) + A000035 (A293482 (n + 2)).toNat

end

end A053264.P18137695930886495052

/-! ## A053264.P17253428602563882641

`(A260971(n)+A053262(n))/2`
-/

namespace A053264.P17253428602563882641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260971 n + A053262 n : ℚ) / 2

end

end A053264.P17253428602563882641

/-! ## A053264.P14250748462029957515

`A053260(2*n)+A008683((n+1)²)`
-/

namespace A053264.P14250748462029957515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (2 * n) + A008683 ((n + 1) ^ 2)

end

end A053264.P14250748462029957515

/-! ## A053264.P10662150288377089977

`abs(A176447(A260971(n)+A053262(n)))`
-/

namespace A053264.P10662150288377089977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176447 (A260971 n + A053262 n).toNat|

end

end A053264.P10662150288377089977

/-! ## A053264.P14392429940311481447

`A176447(A053262(n)-A260971(n))+A053262(n)`
-/

namespace A053264.P14392429940311481447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (A053262 n - A260971 n).toNat + A053262 n

end

end A053264.P14392429940311481447

/-!
# A053265: Coefficients of the '5th-order' mock theta function F_1(q).

The programs for A053265, there is no canonical definition to state claims against.
-/

/-! ## A053265.P14312783035589522137

`A259771(n+1)+A053267(n+1)`
-/

namespace A053265.P14312783035589522137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259771 (n + 1) + A053267 (n + 1)

end

end A053265.P14312783035589522137

/-! ## A053265.P6924711125141192251

`A053261(Δ[n²])`
-/

namespace A053265.P6924711125141192251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053261 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053265.P6924711125141192251

/-! ## A053265.P6727115922324694537

`or(char[1], A053261(2*n+1))`
-/

namespace A053265.P6727115922324694537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A053261 (2 * n + 1))

end

end A053265.P6727115922324694537

/-! ## A053265.P3147773636844407508

`A053263(n)+A053257(2*n+1)`
-/

namespace A053265.P3147773636844407508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053263 n + A053257 (2 * n + 1)

end

end A053265.P3147773636844407508

/-! ## A053265.P7286299373640961715

`ceil(1/A007318(n))*A053261(2*n+1)`
-/

namespace A053265.P7286299373640961715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A053261 (2 * n + 1)

end

end A053265.P7286299373640961715

/-! ## A053265.P11280414582727472543

`A000108(C(2, n+2))*A053261(2*n+1)`
-/

namespace A053265.P11280414582727472543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A053261 (2 * n + 1)

end

end A053265.P11280414582727472543

/-! ## A053265.P8936286163533789286

`A007318(val(n+1, 9))*A053261(2*n+1)`
-/

namespace A053265.P8936286163533789286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 9) * A053261 (2 * n + 1)

end

end A053265.P8936286163533789286

/-!
# A053266: Coefficients of the '5th-order' mock theta function Phi(q).

The programs for A053266, there is no canonical definition to state claims against.
-/

/-! ## A053266.P10101917834664338727

`A259551(n)-A260971(n)`
-/

namespace A053266.P10101917834664338727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259551 n - A260971 n

end

end A053266.P10101917834664338727

/-! ## A053266.P15827431276834873952

`A279135(n)-A000007(n)`
-/

namespace A053266.P15827431276834873952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279135 n - A000007 n

end

end A053266.P15827431276834873952

/-! ## A053266.P7795710567610249924

`A057427(n)*A279135(n)`
-/

namespace A053266.P7795710567610249924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A279135 n

end

end A053266.P7795710567610249924

/-! ## A053266.P8480063546574155358

`A279135(n)%A000156(n)`
-/

namespace A053266.P8480063546574155358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279135 n) (A000156 n)

end

end A053266.P8480063546574155358

/-! ## A053266.P4653881605445064694

`and(A057428(n), A279135(n))`
-/

namespace A053266.P4653881605445064694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A279135 n)

end

end A053266.P4653881605445064694

/-! ## A053266.P5340501243535025563

`and(A134824(n), A279135(n))`
-/

namespace A053266.P5340501243535025563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A279135 n)

end

end A053266.P5340501243535025563

/-! ## A053266.P3385601361451946495

`A000007(A000007(n)*A279135(n))*A279135(n)`
-/

namespace A053266.P3385601361451946495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A279135 n).toNat * A279135 n

end

end A053266.P3385601361451946495

/-! ## A053266.P8461811697982679501

`and(A078485(n), A279135(n))`
-/

namespace A053266.P8461811697982679501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078485 n) (A279135 n)

end

end A053266.P8461811697982679501

/-! ## A053266.P15360081945338033096

`and(A116362(n), A279135(n))`
-/

namespace A053266.P15360081945338033096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116362 n) (A279135 n)

end

end A053266.P15360081945338033096

/-! ## A053266.P18344504622188636100

`and(A088041(n+1), A279135(n))`
-/

namespace A053266.P18344504622188636100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088041 (n + 1)) (A279135 n)

end

end A053266.P18344504622188636100

/-! ## A053266.P453529355011475748

`and(A000225(n), A279135(n))`
-/

namespace A053266.P453529355011475748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A279135 n)

end

end A053266.P453529355011475748

/-! ## A053266.P8877048261677958725

`and(A140252(n), A279135(n))`
-/

namespace A053266.P8877048261677958725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140252 n) (A279135 n)

end

end A053266.P8877048261677958725

/-! ## A053266.P8476043743156785140

`and(A279135(n), A303611(n+2))`
-/

namespace A053266.P8476043743156785140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279135 n) (A303611 (n + 2))

end

end A053266.P8476043743156785140

/-! ## A053266.P16140492882932278605

`and(A140683(n), A279135(n))`
-/

namespace A053266.P16140492882932278605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140683 n) (A279135 n)

end

end A053266.P16140492882932278605

/-! ## A053266.P1317414216346082550

`and(A153893(n), A279135(n))`
-/

namespace A053266.P1317414216346082550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153893 n) (A279135 n)

end

end A053266.P1317414216346082550

/-! ## A053266.P17883630337851134978

`and(1, A061712(n+1))*A279135(n)`
-/

namespace A053266.P17883630337851134978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061712 (n + 1)) * A279135 n

end

end A053266.P17883630337851134978

/-! ## A053266.P15425557628855176289

`and(A086224(n), A279135(n))`
-/

namespace A053266.P15425557628855176289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A279135 n)

end

end A053266.P15425557628855176289

/-! ## A053266.P14738162044499643013

`and(A153894(n), A279135(n))`
-/

namespace A053266.P14738162044499643013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153894 n) (A279135 n)

end

end A053266.P14738162044499643013

/-! ## A053266.P2471643211891419430

`and(A086225(n), A279135(n))`
-/

namespace A053266.P2471643211891419430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 n) (A279135 n)

end

end A053266.P2471643211891419430

/-! ## A053266.P5043082691383984030

`and(A196305(n), A279135(n))`
-/

namespace A053266.P5043082691383984030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196305 n) (A279135 n)

end

end A053266.P5043082691383984030

/-!
# A053267: Coefficients of the '5th-order' mock theta function Psi(q).

The programs for A053267, there is no canonical definition to state claims against.
-/

/-! ## A053267.P16718969663417046781

`A282537(A028310(n))`
-/

namespace A053267.P16718969663417046781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 (A028310 n).toNat

end

end A053267.P16718969663417046781

/-! ## A053267.P17375232939868333814

`A282537(A171950(n+2))`
-/

namespace A053267.P17375232939868333814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 (A171950 (n + 2)).toNat

end

end A053267.P17375232939868333814

/-! ## A053267.P17394097121415063649

`A282537(A000007(n)+n)`
-/

namespace A053267.P17394097121415063649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 (A000007 n + (n : ℤ)).toNat

end

end A053267.P17394097121415063649

/-! ## A053267.P275884416118082593

`A282537(n)-A000007(n)`
-/

namespace A053267.P275884416118082593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 n - A000007 n

end

end A053267.P275884416118082593

/-! ## A053267.P2280956206320312314

`A057427(n)*A282537(n)`
-/

namespace A053267.P2280956206320312314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A282537 n

end

end A053267.P2280956206320312314

/-! ## A053267.P16952280205344534355

`A157928(n)*A282537(n)`
-/

namespace A053267.P16952280205344534355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A282537 n

end

end A053267.P16952280205344534355

/-! ## A053267.P3726994256164484862

`A282537(n)%A000041(n)`
-/

namespace A053267.P3726994256164484862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282537 n) (A000041 n)

end

end A053267.P3726994256164484862

/-! ## A053267.P7844704907949611556

`and(A057428(n), A282537(n))`
-/

namespace A053267.P7844704907949611556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A282537 n)

end

end A053267.P7844704907949611556

/-! ## A053267.P15882993474814827699

`and(A134824(n), A282537(n))`
-/

namespace A053267.P15882993474814827699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A282537 n)

end

end A053267.P15882993474814827699

/-! ## A053267.P17650225915713768609

`A282537(A057428(n)+1+n)`
-/

namespace A053267.P17650225915713768609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 (A057428 n + 1 + (n : ℤ)).toNat

end

end A053267.P17650225915713768609

/-! ## A053267.P11345036236325732393

`A282537(A134824(n)+1+n)`
-/

namespace A053267.P11345036236325732393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 (A134824 n + 1 + (n : ℤ)).toNat

end

end A053267.P11345036236325732393

/-! ## A053267.P13538233578568599203

`A282537(1-A057427(n)+n)`
-/

namespace A053267.P13538233578568599203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 (1 - A057427 n + (n : ℤ)).toNat

end

end A053267.P13538233578568599203

/-! ## A053267.P10712621196882535183

`A282537(1-(A057427(n)-n))`
-/

namespace A053267.P10712621196882535183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282537 (1 - (A057427 n - (n : ℤ))).toNat

end

end A053267.P10712621196882535183

/-! ## A053267.P12747015083917803355

`and(A153788(n), A282537(n))`
-/

namespace A053267.P12747015083917803355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153788 n) (A282537 n)

end

end A053267.P12747015083917803355

/-! ## A053267.P2773161723037154355

`and(A010737(n), A282537(n))`
-/

namespace A053267.P2773161723037154355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010737 n) (A282537 n)

end

end A053267.P2773161723037154355

/-! ## A053267.P11559339923018368655

`and(A178885(n), A282537(n))`
-/

namespace A053267.P11559339923018368655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178885 n) (A282537 n)

end

end A053267.P11559339923018368655

/-! ## A053267.P7754804703773707653

`and(A078485(n), A282537(n))`
-/

namespace A053267.P7754804703773707653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078485 n) (A282537 n)

end

end A053267.P7754804703773707653

/-! ## A053267.P14653863337611418074

`and(A116362(n), A282537(n))`
-/

namespace A053267.P14653863337611418074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A116362 n) (A282537 n)

end

end A053267.P14653863337611418074

/-! ## A053267.P10236537298070209239

`and(A088041(n+1), A282537(n))`
-/

namespace A053267.P10236537298070209239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088041 (n + 1)) (A282537 n)

end

end A053267.P10236537298070209239

/-! ## A053267.P11512030084308861069

`and(A000225(n), A282537(n))`
-/

namespace A053267.P11512030084308861069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A282537 n)

end

end A053267.P11512030084308861069

/-!
# A053268: Coefficients of the '6th-order' mock theta function phi(q).

The programs for A053268, there is no canonical definition to state claims against.
-/

/-! ## A053268.P9216561368093696040

`A261454(n)-2*A053271(2*n)`
-/

namespace A053268.P9216561368093696040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261454 n - 2 * A053271 (2 * n)

end

end A053268.P9216561368093696040

/-! ## A053268.P9716094354695230381

`A261454(n)-2*A153251(n)`
-/

namespace A053268.P9716094354695230381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261454 n - 2 * A153251 n

end

end A053268.P9716094354695230381

/-! ## A053268.P10290375677596117736

`A053273(2*n)+2*A053271(2*n)`
-/

namespace A053268.P10290375677596117736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053273 (2 * n) + 2 * A053271 (2 * n)

end

end A053268.P10290375677596117736

/-! ## A053268.P7771253368312516987

`A053273(A005843(n))+2*A153251(n)`
-/

namespace A053268.P7771253368312516987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053273 (A005843 n).toNat + 2 * A153251 n

end

end A053268.P7771253368312516987

/-! ## A053268.P215710070618598258

`A261454(n)-A005843(A153251(n))`
-/

namespace A053268.P215710070618598258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261454 n - A005843 (A153251 n).toNat

end

end A053268.P215710070618598258

/-!
# A053270: Coefficients of the '6th-order' mock theta function rho(q).

The programs for A053270, there is no canonical definition to state claims against.
-/

/-! ## A053270.P5966159205024853673

`A003059(A209816(n+1))`
-/

namespace A053270.P5966159205024853673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A209816 (n + 1)).toNat

end

end A053270.P5966159205024853673

/-! ## A053270.P13050501279331851783

`A371627(n+1)+A000196(A164617(n))`
-/

namespace A053270.P13050501279331851783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371627 (n + 1) + A000196 (A164617 n).toNat

end

end A053270.P13050501279331851783

/-! ## A053270.P18374572851108989144

`A000194(A209816(n+1)+A092265(n+1))`
-/

namespace A053270.P18374572851108989144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A209816 (n + 1) + A092265 (n + 1)).toNat

end

end A053270.P18374572851108989144

/-! ## A053270.P3055987496391114241

`A000196(A209816(n+1)+A192115(n+1))`
-/

namespace A053270.P3055987496391114241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A209816 (n + 1) + A192115 (n + 1)).toNat

end

end A053270.P3055987496391114241

/-! ## A053270.P569134669127810481

`A000194(A270890(n+1)+A209816(n+1))`
-/

namespace A053270.P569134669127810481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A270890 (n + 1) + A209816 (n + 1)).toNat

end

end A053270.P569134669127810481

/-!
# A053271: Coefficients of the '6th-order' mock theta function sigma(q).

The programs for A053271, there is no canonical definition to state claims against.
-/

/-! ## A053271.P7108226845235167267

`ceil(A056830(n)/A208810(n+1))`
-/

namespace A053271.P7108226845235167267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056830 n : ℚ) / (A208810 (n + 1) : ℚ)⌉

end

end A053271.P7108226845235167267

/-!
# A053274: Coefficients of the '6th-order' mock theta function gamma(q).

The programs for A053274, there is no canonical definition to state claims against.
-/

/-! ## A053274.P11019801982376028544

`A328988(A028310(n))-A328989(A028310(n))`
-/

namespace A053274.P11019801982376028544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328988 (A028310 n).toNat - A328989 (A028310 n).toNat

end

end A053274.P11019801982376028544

/-!
# A053275: Coefficients of the '7th-order' mock theta function F_0(q).

The programs for A053275, there is no canonical definition to state claims against.
-/

/-! ## A053275.P18336080176963504749

`A102354(lcm(A011782(n), A072211(n+1)))`
-/

namespace A053275.P18336080176963504749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (Int.lcm (A011782 n) (A072211 (n + 1)))

end

end A053275.P18336080176963504749

/-! ## A053275.P10443815614809553527

`A335885(A162706((9*n+8-n)/2))`
-/

namespace A053275.P10443815614809553527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A162706 (SequenceMachineLib.roundAway (((9 * n + 8 : ℤ) - (n : ℤ) : ℚ) / 2)).toNat).toNat

end

end A053275.P10443815614809553527

/-! ## A053275.P10954020519368227976

`A000120(and(A285261(n+1), A285275(n+1)))`
-/

namespace A053275.P10954020519368227976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A285261 (n + 1)) (A285275 (n + 1))).toNat

end

end A053275.P10954020519368227976

/-! ## A053275.P4850860788952055887

`A001221(A284553(A240080(n)))`
-/

namespace A053275.P4850860788952055887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A284553 (A240080 n).toNat).toNat

end

end A053275.P4850860788952055887

/-! ## A053275.P7393874398519546300

`A193238(A007909(n)+A001358(n+1))`
-/

namespace A053275.P7393874398519546300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A007909 n + A001358 (n + 1)).toNat

end

end A053275.P7393874398519546300

/-!
# A053277: Coefficients of the '7th-order' mock theta function F_2(q).

The programs for A053277, there is no canonical definition to state claims against.
-/

/-! ## A053277.P943805842821835566

`A172263(A351004(n)+A327657(n+1))`
-/

namespace A053277.P943805842821835566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A351004 n + A327657 (n + 1)).toNat

end

end A053277.P943805842821835566

/-! ## A053277.P7376020322927312308

`A037810(A221944(n))+1`
-/

namespace A053277.P7376020322927312308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037810 (A221944 n).toNat + 1

end

end A053277.P7376020322927312308

/-! ## A053277.P7168218253928903506

`A046951(2^A339660(3*n+4))`
-/

namespace A053277.P7168218253928903506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A339660 (3 * n + 4) : ℤ))).toNat

end

end A053277.P7168218253928903506

/-! ## A053277.P16420585132357270160

`A367758(lt[A117776(n+1), A178860(3*n+1)])`
-/

namespace A053277.P16420585132357270160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367758 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053277.P16420585132357270160

/-! ## A053277.P4333485597829536718

`A002264(n+4)-A381735(A000295(n))`
-/

namespace A053277.P4333485597829536718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 4) - A381735 (A000295 n).toNat

end

end A053277.P4333485597829536718

/-!
# A053278: A '7th-order' mock theta function.

The programs for A053278, there is no canonical definition to state claims against.
-/

/-! ## A053278.P9399592508874367660

`∑[A340998(A151705(n)-A011686(n))]`
-/

namespace A053278.P9399592508874367660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A151705 n - A011686 n).toNat + 140)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053278.P9399592508874367660

/-!
# A053279: A '7th-order' mock theta function.

The programs for A053279, there is no canonical definition to state claims against.
-/

/-! ## A053279.P13455142778039290690

`A025818(A004442(n+1))%A015806(n+1)`
-/

namespace A053279.P13455142778039290690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025818 (A004442 (n + 1)).toNat) (A015806 (n + 1))

end

end A053279.P13455142778039290690

/-! ## A053279.P15306191849640403834

`A025818(A004442(n+1))^A014963(A156584(n))`
-/

namespace A053279.P15306191849640403834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025818 (A004442 (n + 1)).toNat : ℚ) ^ (A014963 (A156584 n).toNat : ℤ)

end

end A053279.P15306191849640403834

/-! ## A053279.P9778057738175976276

`A014963(A156584(n+1))*A025818(A004442(n+1))`
-/

namespace A053279.P9778057738175976276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A156584 (n + 1)).toNat * A025818 (A004442 (n + 1)).toNat

end

end A053279.P9778057738175976276

/-! ## A053279.P14876227750760403646

`A106799(A331398(n+2))`
-/

namespace A053279.P14876227750760403646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A331398 (n + 2)).toNat

end

end A053279.P14876227750760403646

/-! ## A053279.P10538004335779111744

`A124766(A281744(2*n)-A284619(n+1))`
-/

namespace A053279.P10538004335779111744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A281744 (2 * n) - A284619 (n + 1)).toNat

end

end A053279.P10538004335779111744

/-!
# A053280: A '7th-order' mock theta function.

The programs for A053280, there is no canonical definition to state claims against.
-/

/-! ## A053280.P11963394594948364547

`A001221(floor(exp(A029252(n))))`
-/

namespace A053280.P11963394594948364547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌊Real.exp (A029252 n : ℝ)⌋.toNat

end

end A053280.P11963394594948364547

/-! ## A053280.P5618841485238213322

`A008679(p?[A105560(A143095(n))])`
-/

namespace A053280.P5618841485238213322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A143095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A053280.P5618841485238213322

/-! ## A053280.P3499908500272493489

`A103221(n)-A178226(record[A053602(n)])`
-/

namespace A053280.P3499908500272493489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A178226 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053280.P3499908500272493489

/-! ## A053280.P9149608299934315684

`A103221(n)-A178226(A000045(n+1))`
-/

namespace A053280.P9149608299934315684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n - A178226 (A000045 (n + 1)).toNat

end

end A053280.P9149608299934315684

/-! ## A053280.P5433729839708877066

`A008679(lt[A320782(3*(n+1)), A270929(n+1)])`
-/

namespace A053280.P5433729839708877066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320782 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A053280.P5433729839708877066

/-!
# A053281: Coefficients of the '10th-order' mock theta function phi(q).

The programs for A053281, there is no canonical definition to state claims against.
-/

/-! ## A053281.P11633757294091413651

`A103298(A096765(2*(n+2))-A083338(n+1))`
-/

namespace A053281.P11633757294091413651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A096765 (2 * (n + 2)) - A083338 (n + 1)).toNat

end

end A053281.P11633757294091413651

/-!
# A053282: Coefficients of the '10th-order' mock theta function psi(q).

The programs for A053282, there is no canonical definition to state claims against.
-/

/-! ## A053282.P8514448916098024993

`A082447(A082447(A051033(n)))%A000124(n)`
-/

namespace A053282.P8514448916098024993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082447 (A082447 (A051033 n).toNat).toNat) (A000124 n)

end

end A053282.P8514448916098024993

/-! ## A053282.P2253384723141480304

`∑[A007949(record[A047074(n)])]`
-/

namespace A053282.P2253384723141480304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047074 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053282.P2253384723141480304

/-! ## A053282.P4118465753465663261

`A056171(∑[A008480(A258160(n))])`
-/

namespace A053282.P4118465753465663261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A258160 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053282.P4118465753465663261

/-! ## A053282.P13562239958274243982

`∑[A087805(n)%A305374(A293319(n))]`
-/

namespace A053282.P13562239958274243982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087805 n) (A305374 (A293319 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053282.P13562239958274243982

/-! ## A053282.P9098090482169154773

`A074712(A000607(2*n))%A143887(n)`
-/

namespace A053282.P9098090482169154773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074712 (A000607 (2 * n)).toNat) (A143887 n)

end

end A053282.P9098090482169154773

/-!
# A053283: Coefficients of the '10th-order' mock theta function X(q).

The programs for A053283, there is no canonical definition to state claims against.
-/

/-! ## A053283.P14220424169895077370

`A249161(n^p?[A115061(n+1)])`
-/

namespace A053283.P14220424169895077370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249161 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ))).toNat

end

end A053283.P14220424169895077370

/-! ## A053283.P12618713815026480084

`A262045(2^n)-A007814(n+3)`
-/

namespace A053283.P12618713815026480084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262045 (2 ^ n) - A007814 (n + 3)

end

end A053283.P12618713815026480084

/-!
# A053284: Coefficients of the '10th-order' mock theta function chi(q).

The programs for A053284, there is no canonical definition to state claims against.
-/

/-! ## A053284.P17981492539478840996

`A142150(A187829(n+1))-A008611(A103354(n+1))`
-/

namespace A053284.P17981492539478840996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A187829 (n + 1)).toNat - A008611 (A103354 (n + 1)).toNat

end

end A053284.P17981492539478840996

/-! ## A053284.P10066696290738279527

`Δ[A029224(n)-A116510(A039562(n+1))]`
-/

namespace A053284.P10066696290738279527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 n - A116510 (A039562 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053284.P10066696290738279527

/-!
# A053285: Totient of 2^n+1.

The programs for A053285, the canonical program `A053285.P954365959707190211` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053285 has offset 0).

The definition of A053285 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053285.P954365959707190211

`A000010(A000051(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A053285

/-- `A000010(A000051(n))` -/
def P954365959707190211.Spec : Prop :=
  ∀ n, P954365959707190211.a n = A053285 n

theorem P954365959707190211.correct : P954365959707190211.Spec := by
  intro n
  simp only [A053285]

end A053285

/-! ## A053285.P14078944509114133559

`A000051(n)-A053286(n)`
-/

namespace A053285.P14078944509114133559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A053286 n

end

end A053285.P14078944509114133559

namespace A053285

/-- `A000051(n)-A053286(n)` -/
def P14078944509114133559.Spec : Prop :=
  ∀ n, P14078944509114133559.a n = A053285 n

end A053285

/-! ## A053285.P16053828704545934102

`A004277(n)*A069925(A028310(n))`
-/

namespace A053285.P16053828704545934102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A069925 (A028310 n).toNat

end

end A053285.P16053828704545934102

namespace A053285

/-- `A004277(n)*A069925(A028310(n))` -/
def P16053828704545934102.Spec : Prop :=
  ∀ n, P16053828704545934102.a n = A053285 n

end A053285

/-! ## A053285.P3861417047097977056

`A324104(A001747(n+1))`
-/

namespace A053285.P3861417047097977056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (A001747 (n + 1)).toNat

end

end A053285.P3861417047097977056

namespace A053285

/-- `A324104(A001747(n+1))` -/
def P3861417047097977056.Spec : Prop :=
  ∀ n, P3861417047097977056.a n = A053285 n

end A053285

/-! ## A053285.P9381592477387619546

`A324104(A076274(n+1)+1)`
-/

namespace A053285.P9381592477387619546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (A076274 (n + 1) + 1).toNat

end

end A053285.P9381592477387619546

namespace A053285

/-- `A324104(A076274(n+1)+1)` -/
def P9381592477387619546.Spec : Prop :=
  ∀ n, P9381592477387619546.a n = A053285 n

end A053285

/-! ## A053285.P6353716581197761380

`A324104(2*A008578(n+1))`
-/

namespace A053285.P6353716581197761380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (2 * A008578 (n + 1)).toNat

end

end A053285.P6353716581197761380

namespace A053285

/-- `A324104(2*A008578(n+1))` -/
def P6353716581197761380.Spec : Prop :=
  ∀ n, P6353716581197761380.a n = A053285 n

end A053285

/-! ## A053285.P7547692123680385091

`A324104(2*A158611(n+2))`
-/

namespace A053285.P7547692123680385091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (2 * A158611 (n + 2)).toNat

end

end A053285.P7547692123680385091

namespace A053285

/-- `A324104(2*A158611(n+2))` -/
def P7547692123680385091.Spec : Prop :=
  ∀ n, P7547692123680385091.a n = A053285 n

end A053285

/-! ## A053285.P5783189535781996003

`A324104(record[2*A006530(n+1)])`
-/

namespace A053285.P5783189535781996003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053285.P5783189535781996003

namespace A053285

/-- `A324104(record[2*A006530(n+1)])` -/
def P5783189535781996003.Spec : Prop :=
  ∀ n, P5783189535781996003.a n = A053285 n

end A053285

/-! ## A053285.P13315469807101478126

`A324104(record[2*A014963(n+1)])`
-/

namespace A053285.P13315469807101478126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053285.P13315469807101478126

namespace A053285

/-- `A324104(record[2*A014963(n+1)])` -/
def P13315469807101478126.Spec : Prop :=
  ∀ n, P13315469807101478126.a n = A053285 n

end A053285

/-! ## A053285.P5695867558695758002

`A324104(record[2*A020639(n+1)])`
-/

namespace A053285.P5695867558695758002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053285.P5695867558695758002

namespace A053285

/-- `A324104(record[2*A020639(n+1)])` -/
def P5695867558695758002.Spec : Prop :=
  ∀ n, P5695867558695758002.a n = A053285 n

end A053285

/-! ## A053285.P14162443928594621934

`A324104(record[A014963(n+1)+n+1])`
-/

namespace A053285.P14162443928594621934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053285.P14162443928594621934

namespace A053285

/-- `A324104(record[A014963(n+1)+n+1])` -/
def P14162443928594621934.Spec : Prop :=
  ∀ n, P14162443928594621934.a n = A053285 n

end A053285

/-! ## A053285.P3577373631025778016

`record[A324104(record[A000010(n+1)+n+1]+1)]`
-/

namespace A053285.P3577373631025778016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324104 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053285.P3577373631025778016

namespace A053285

/-- `record[A324104(record[A000010(n+1)+n+1]+1)]` -/
def P3577373631025778016.Spec : Prop :=
  ∀ n, P3577373631025778016.a n = A053285 n

end A053285

/-!
# A053286: Cototient of 2^n + 1.

The programs for A053286, the canonical program `A053286.P17482830161555086044` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053286 has offset 0).

The definition of A053286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053286.P17482830161555086044

`A051953(A000051(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053286

/-- `A051953(A000051(n))` -/
def P17482830161555086044.Spec : Prop :=
  ∀ n, P17482830161555086044.a n = A053286 n

theorem P17482830161555086044.correct : P17482830161555086044.Spec := by
  intro n
  simp only [A053286]

end A053286

/-! ## A053286.P18397978044480489072

`A000051(n)-A053285(n)`
-/

namespace A053286.P18397978044480489072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A053285 n

end

end A053286.P18397978044480489072

namespace A053286

/-- `A000051(n)-A053285(n)` -/
def P18397978044480489072.Spec : Prop :=
  ∀ n, P18397978044480489072.a n = A053286 n

end A053286

/-! ## A053286.P7077271769767536265

`A000079(n)+1-A053285(n)`
-/

namespace A053286.P7077271769767536265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (1 - A053285 n)

end

end A053286.P7077271769767536265

namespace A053286

/-- `A000079(n)+1-A053285(n)` -/
def P7077271769767536265.Spec : Prop :=
  ∀ n, P7077271769767536265.a n = A053286 n

end A053286

/-! ## A053286.P7347405542519509772

`A000225(n)+2-A053285(n)`
-/

namespace A053286.P7347405542519509772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (2 - A053285 n)

end

end A053286.P7347405542519509772

namespace A053286

/-- `A000225(n)+2-A053285(n)` -/
def P7347405542519509772.Spec : Prop :=
  ∀ n, P7347405542519509772.a n = A053286 n

end A053286

/-! ## A053286.P15048323028259407238

`A005941(A000040(n+1))-A053285(n)`
-/

namespace A053286.P15048323028259407238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A000040 (n + 1)).toNat - A053285 n

end

end A053286.P15048323028259407238

namespace A053286

/-- `A005941(A000040(n+1))-A053285(n)` -/
def P15048323028259407238.Spec : Prop :=
  ∀ n, P15048323028259407238.a n = A053286 n

end A053286

/-! ## A053286.P11624707076512377088

`A000051(n)-A324104(2*A008578(n+1))`
-/

namespace A053286.P11624707076512377088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A324104 (2 * A008578 (n + 1)).toNat

end

end A053286.P11624707076512377088

namespace A053286

/-- `A000051(n)-A324104(2*A008578(n+1))` -/
def P11624707076512377088.Spec : Prop :=
  ∀ n, P11624707076512377088.a n = A053286 n

end A053286

/-!
# A053287: Euler totient function (A000010) of 2^n - 1.

The programs for A053287, the canonical program `A053287.P11109318528216789787` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053287 has offset 1).

The definition of A053287 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053287.P2465640112471298652

`A000010(2^(n+1)-1)`
-/

namespace A053287.P2465640112471298652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ (n + 1) - 1)

end

end A053287.P2465640112471298652

namespace A053287

/-- `A000010(2^(n+1)-1)` -/
def P2465640112471298652.Spec : Prop :=
  ∀ n, P2465640112471298652.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P11109318528216789787

`A062401(2^n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A053287

/-- `A062401(2^n)` -/
def P11109318528216789787.Spec : Prop :=
  ∀ n, P11109318528216789787.a n = A053287 (n + 1)

theorem P11109318528216789787.correct : P11109318528216789787.Spec := by
  intro n
  simp only [A053287, Nat.add_sub_cancel]

end A053287

/-! ## A053287.P17998400932949569748

`(n+1)*A011260(n+1)`
-/

namespace A053287.P17998400932949569748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011260 (n + 1)

end

end A053287.P17998400932949569748

namespace A053287

/-- `(n+1)*A011260(n+1)` -/
def P17998400932949569748.Spec : Prop :=
  ∀ n, P17998400932949569748.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P8857852309192102479

`A255047(n)+A092589(n)`
-/

namespace A053287.P8857852309192102479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + A092589 n

end

end A053287.P8857852309192102479

namespace A053287

/-- `A255047(n)+A092589(n)` -/
def P8857852309192102479.Spec : Prop :=
  ∀ n, P8857852309192102479.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P9474992521481545899

`A126646(n)-A053288(n+1)`
-/

namespace A053287.P9474992521481545899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A053288 (n + 1)

end

end A053287.P9474992521481545899

namespace A053287

/-- `A126646(n)-A053288(n+1)` -/
def P9474992521481545899.Spec : Prop :=
  ∀ n, P9474992521481545899.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P6287107761228561757

`∑[A000079(n)]-A053288(n+1)`
-/

namespace A053287.P6287107761228561757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053288 (n + 1)

end

end A053287.P6287107761228561757

namespace A053287

/-- `∑[A000079(n)]-A053288(n+1)` -/
def P6287107761228561757.Spec : Prop :=
  ∀ n, P6287107761228561757.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P17653379039405312153

`A000225(n+1)-A053288(n+1)`
-/

namespace A053287.P17653379039405312153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A053288 (n + 1)

end

end A053287.P17653379039405312153

namespace A053287

/-- `A000225(n+1)-A053288(n+1)` -/
def P17653379039405312153.Spec : Prop :=
  ∀ n, P17653379039405312153.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P2876757706306788719

`A255047(n+1)-A053288(n+1)`
-/

namespace A053287.P2876757706306788719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n + 1) - A053288 (n + 1)

end

end A053287.P2876757706306788719

namespace A053287

/-- `A255047(n+1)-A053288(n+1)` -/
def P2876757706306788719.Spec : Prop :=
  ∀ n, P2876757706306788719.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P3357899257940164260

`A000020(A028310(n)+1)*(n+1)`
-/

namespace A053287.P3357899257940164260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000020 (A028310 n + 1).toNat * (n + 1 : ℤ)

end

end A053287.P3357899257940164260

namespace A053287

/-- `A000020(A028310(n)+1)*(n+1)` -/
def P3357899257940164260.Spec : Prop :=
  ∀ n, P3357899257940164260.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P16323192016987199978

`(n+1)*A000020(A233583(n+2))`
-/

namespace A053287.P16323192016987199978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000020 (A233583 (n + 2)).toNat

end

end A053287.P16323192016987199978

namespace A053287

/-- `(n+1)*A000020(A233583(n+2))` -/
def P16323192016987199978.Spec : Prop :=
  ∀ n, P16323192016987199978.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P11252312210687307016

`(n+1)*A000020(A000007(n)+1+n)`
-/

namespace A053287.P11252312210687307016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000020 (A000007 n + 1 + (n : ℤ)).toNat

end

end A053287.P11252312210687307016

namespace A053287

/-- `(n+1)*A000020(A000007(n)+1+n)` -/
def P11252312210687307016.Spec : Prop :=
  ∀ n, P11252312210687307016.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P349144707927095580

`(n+1)*A000020(A000031(n)%2+n+1)`
-/

namespace A053287.P349144707927095580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000020 (Int.tmod (A000031 n) 2 + (n + 1 : ℤ)).toNat

end

end A053287.P349144707927095580

namespace A053287

/-- `(n+1)*A000020(A000031(n)%2+n+1)` -/
def P349144707927095580.Spec : Prop :=
  ∀ n, P349144707927095580.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P15220434177257203193

`(n+1)*A000020((n+1)*gcd(2, A058943(n+1)))`
-/

namespace A053287.P15220434177257203193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000020 ((n + 1) * Int.gcd 2 (A058943 (n + 1)))

end

end A053287.P15220434177257203193

namespace A053287

/-- `(n+1)*A000020((n+1)*gcd(2, A058943(n+1)))` -/
def P15220434177257203193.Spec : Prop :=
  ∀ n, P15220434177257203193.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P16570771204627627445

`(n+1)*gcd(A008683(A062383(n)), A000020(n+1))`
-/

namespace A053287.P16570771204627627445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (A008683 (A062383 n).toNat) (A000020 (n + 1))

end

end A053287.P16570771204627627445

namespace A053287

/-- `(n+1)*gcd(A008683(A062383(n)), A000020(n+1))` -/
def P16570771204627627445.Spec : Prop :=
  ∀ n, (P16570771204627627445.a n : ℤ) = A053287 (n + 1)

end A053287

/-! ## A053287.P14042673491652861636

`(n+1)*(A000020(n+1)+A008683(A062383(n+1)))`
-/

namespace A053287.P14042673491652861636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000020 (n + 1) + A008683 (A062383 (n + 1)).toNat)

end

end A053287.P14042673491652861636

namespace A053287

/-- `(n+1)*(A000020(n+1)+A008683(A062383(n+1)))` -/
def P14042673491652861636.Spec : Prop :=
  ∀ n, P14042673491652861636.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P13995546425906375312

`(A000020(n+1)-A230403(A014580(n+1)))*(n+1)`
-/

namespace A053287.P13995546425906375312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000020 (n + 1) - A230403 (A014580 (n + 1)).toNat) * (n + 1 : ℤ)

end

end A053287.P13995546425906375312

namespace A053287

/-- `(A000020(n+1)-A230403(A014580(n+1)))*(n+1)` -/
def P13995546425906375312.Spec : Prop :=
  ∀ n, P13995546425906375312.a n = A053287 (n + 1)

end A053287

/-! ## A053287.P1805421063827637022

`A027742(n+1)/A069925(n+1)`
-/

namespace A053287.P1805421063827637022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027742 (n + 1) : ℚ) / (A069925 (n + 1) : ℚ)

end

end A053287.P1805421063827637022

namespace A053287

/-- `A027742(n+1)/A069925(n+1)` -/
def P1805421063827637022.Spec : Prop :=
  ∀ n, P1805421063827637022.a n = (A053287 (n + 1) : ℚ)

end A053287

/-! ## A053287.P16485723119008804211

`A295501(n+1)/A053285(n+1)`
-/

namespace A053287.P16485723119008804211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295501 (n + 1) : ℚ) / (A053285 (n + 1) : ℚ)

end

end A053287.P16485723119008804211

namespace A053287

/-- `A295501(n+1)/A053285(n+1)` -/
def P16485723119008804211.Spec : Prop :=
  ∀ n, P16485723119008804211.a n = (A053287 (n + 1) : ℚ)

end A053287

/-!
# A053288: Cototient of 2^n - 1.

The programs for A053288, the canonical program `A053288.P6466323474005085456` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053288 has offset 1).

The definition of A053288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053288.P6466323474005085456

`A051953(A000225(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A053288

/-- `A051953(A000225(n+1))` -/
def P6466323474005085456.Spec : Prop :=
  ∀ n, P6466323474005085456.a n = A053288 (n + 1)

theorem P6466323474005085456.correct : P6466323474005085456.Spec := by
  intro n
  simp only [A053288, Nat.add_sub_cancel]

end A053288

/-! ## A053288.P14678721657390311688

`A155559(n)-A092589(n)`
-/

namespace A053288.P14678721657390311688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n - A092589 n

end

end A053288.P14678721657390311688

namespace A053288

/-- `A155559(n)-A092589(n)` -/
def P14678721657390311688.Spec : Prop :=
  ∀ n, P14678721657390311688.a n = A053288 (n + 1)

end A053288

/-! ## A053288.P15829785367703304217

`A126646(n)-A053287(n+1)`
-/

namespace A053288.P15829785367703304217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A053287 (n + 1)

end

end A053288.P15829785367703304217

namespace A053288

/-- `A126646(n)-A053287(n+1)` -/
def P15829785367703304217.Spec : Prop :=
  ∀ n, P15829785367703304217.a n = A053288 (n + 1)

end A053288

/-! ## A053288.P6452237322937738078

`∑[A000079(n)]-A053287(n+1)`
-/

namespace A053288.P6452237322937738078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053287 (n + 1)

end

end A053288.P6452237322937738078

namespace A053288

/-- `∑[A000079(n)]-A053287(n+1)` -/
def P6452237322937738078.Spec : Prop :=
  ∀ n, P6452237322937738078.a n = A053288 (n + 1)

end A053288

/-! ## A053288.P8684372871239246146

`A000225(n+1)-A053287(n+1)`
-/

namespace A053288.P8684372871239246146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A053287 (n + 1)

end

end A053288.P8684372871239246146

namespace A053288

/-- `A000225(n+1)-A053287(n+1)` -/
def P8684372871239246146.Spec : Prop :=
  ∀ n, P8684372871239246146.a n = A053288 (n + 1)

end A053288

/-! ## A053288.P8218982657473578997

`A052955(2*n)-A053287(n+1)`
-/

namespace A053288.P8218982657473578997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * n) - A053287 (n + 1)

end

end A053288.P8218982657473578997

namespace A053288

/-- `A052955(2*n)-A053287(n+1)` -/
def P8218982657473578997.Spec : Prop :=
  ∀ n, P8218982657473578997.a n = A053288 (n + 1)

end A053288

/-! ## A053288.P5838760246784523357

`A140407(2*n)-A053287(n+1)`
-/

namespace A053288.P5838760246784523357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (2 * n) - A053287 (n + 1)

end

end A053288.P5838760246784523357

namespace A053288

/-- `A140407(2*n)-A053287(n+1)` -/
def P5838760246784523357.Spec : Prop :=
  ∀ n, P5838760246784523357.a n = A053288 (n + 1)

end A053288

/-! ## A053288.P5726424727396642301

`or(1, A095121(n))-A053287(n+1)`
-/

namespace A053288.P5726424727396642301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A095121 n) - A053287 (n + 1)

end

end A053288.P5726424727396642301

namespace A053288

/-- `or(1, A095121(n))-A053287(n+1)` -/
def P5726424727396642301.Spec : Prop :=
  ∀ n, P5726424727396642301.a n = A053288 (n + 1)

end A053288

/-! ## A053288.P16052374752274335727

`A000079(n+1)-(A053287(n+1)+1)`
-/

namespace A053288.P16052374752274335727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A053287 (n + 1) + 1)

end

end A053288.P16052374752274335727

namespace A053288

/-- `A000079(n+1)-(A053287(n+1)+1)` -/
def P16052374752274335727.Spec : Prop :=
  ∀ n, P16052374752274335727.a n = A053288 (n + 1)

end A053288

/-! ## A053288.P16629773195878844942

`A000225(n+1)-(n+1)*A011260(n+1)`
-/

namespace A053288.P16629773195878844942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - (n + 1 : ℤ) * A011260 (n + 1)

end

end A053288.P16629773195878844942

namespace A053288

/-- `A000225(n+1)-(n+1)*A011260(n+1)` -/
def P16629773195878844942.Spec : Prop :=
  ∀ n, P16629773195878844942.a n = A053288 (n + 1)

end A053288

/-! ## A053288.P25583157406436708

`A053287(n+2)-(A092589(n+1)+A053287(n+1))`
-/

namespace A053288.P25583157406436708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053287 (n + 2) - (A092589 (n + 1) + A053287 (n + 1))

end

end A053288.P25583157406436708

namespace A053288

/-- `A053287(n+2)-(A092589(n+1)+A053287(n+1))` -/
def P25583157406436708.Spec : Prop :=
  ∀ n, P25583157406436708.a n = A053288 (n + 1)

end A053288

/-!
# A053289: First differences of consecutive perfect powers (A001597).

The programs for A053289, there is no canonical definition to state claims against.
-/

/-! ## A053289.P1440563104561887063

`A001597(n+2)-A001597(n+1)`
-/

namespace A053289.P1440563104561887063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2) - A001597 (n + 1)

end

end A053289.P1440563104561887063

/-! ## A053289.P470725510677098028

`A076412(n+1)`
-/

namespace A053289.P470725510677098028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 (n + 1)

end

end A053289.P470725510677098028

/-! ## A053289.P3688513703418622694

`A376559(n)+a(n-1)` with `a(0)=3`
-/

namespace A053289.P3688513703418622694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A376559 n + a (n - 1)

end

end A053289.P3688513703418622694

/-! ## A053289.P1896265542497593472

`Δ[∪[(n+1)², A076467(n+1)]]`
-/

namespace A053289.P1896265542497593472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053289.P1896265542497593472

/-! ## A053289.P3266981802671196574

`Δ[∪[(n+1)², A097054(n+1)]]`
-/

namespace A053289.P3266981802671196574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053289.P3266981802671196574

/-! ## A053289.P15656569272778670229

`ratio[A076412(n)]*A076412(n)`
-/

namespace A053289.P15656569272778670229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A076412 n : ℚ)

end

end A053289.P15656569272778670229

/-! ## A053289.P588564790759774539

`Δ[∪[A075090(n+1), A075109(n+1)]]`
-/

namespace A053289.P588564790759774539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053289.P588564790759774539

/-! ## A053289.P17963865191963124025

`Δ[∪[A076468(n+1), A093771(n+1)]]`
-/

namespace A053289.P17963865191963124025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053289.P17963865191963124025

/-! ## A053289.P17432788013181546538

`A216765(n+1)-(abs(A157985(n+1))+1)`
-/

namespace A053289.P17432788013181546538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1) - (|A157985 (n + 1)| + 1)

end

end A053289.P17432788013181546538

/-! ## A053289.P7429482082685588460

`Δ[A001597(n+1)]`
-/

namespace A053289.P7429482082685588460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053289.P7429482082685588460

/-! ## A053289.P17398673974670594377

`Δ[abs(A157985(n+1))]`
-/

namespace A053289.P17398673974670594377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053289.P17398673974670594377

/-! ## A053289.P11748671835033117928

`Δ[sqrt(A340588(n+1))]`
-/

namespace A053289.P11748671835033117928
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053289.P11748671835033117928

/-! ## A053289.P3989994239193120151

`A377043(n+2)-A377044(n+1)`
-/

namespace A053289.P3989994239193120151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377043 (n + 2) - A377044 (n + 1)

end

end A053289.P3989994239193120151

/-! ## A053289.P12356463216326366823

`Δ[A075146(n+1)+A000040(n+1)]`
-/

namespace A053289.P12356463216326366823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075146 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053289.P12356463216326366823

/-! ## A053289.P3166569326529616270

`Δ[A025478(n+1)^A025479(n+1)]`
-/

namespace A053289.P3166569326529616270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025478 (n + 1) : ℚ) ^ (A025479 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053289.P3166569326529616270

/-! ## A053289.P7468955229661562421

`Δ[lcm(A025478(n+1), A157985(n+1))]`
-/

namespace A053289.P7468955229661562421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025478 (n + 1)) (A157985 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A053289.P7468955229661562421

/-! ## A053289.P2352641933818984378

`Δ[abs(A076405(n+1)/A157987(n+1))]`
-/

namespace A053289.P2352641933818984378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A076405 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053289.P2352641933818984378

/-! ## A053289.P1235765347469312179

`A045542(n+2)-(A376559(n+1)+A045542(n+1))`
-/

namespace A053289.P1235765347469312179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 2) - (A376559 (n + 1) + A045542 (n + 1))

end

end A053289.P1235765347469312179

/-!
# A053290: Number of nonsingular n X n matrices over GF(3).

The programs for A053290, there is no canonical definition to state claims against.
-/

/-! ## A053290.P6525464413616884278

`A047656(n)*A027871(n)`
-/

namespace A053290.P6525464413616884278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047656 n * A027871 n

end

end A053290.P6525464413616884278

/-! ## A053290.P12897740295390997370

`(3^n-1)*3^(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A053290.P12897740295390997370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((3 ^ n : ℤ) - 1 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1)

end

end A053290.P12897740295390997370

/-! ## A053290.P15234892507187657968

`n!*A053995(n)`
-/

namespace A053290.P15234892507187657968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A053995 n

end

end A053290.P15234892507187657968

/-! ## A053290.P16193980145001265379

`a(n-1)*A219205(n)` with `a(0)=1`
-/

namespace A053290.P16193980145001265379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A219205 n

end

end A053290.P16193980145001265379

/-! ## A053290.P14240312615720570495

`a(n-1)*A122006(2*n+1)` with `a(0)=1`
-/

namespace A053290.P14240312615720570495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A122006 (2 * n + 1)

end

end A053290.P14240312615720570495

/-!
# A053291: Nonsingular n X n matrices over GF(4).

The programs for A053291, there is no canonical definition to state claims against.
-/

/-! ## A053291.P16150330923504001893

`A053763(n)*A027637(n)`
-/

namespace A053291.P16150330923504001893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053763 n * A027637 n

end

end A053291.P16150330923504001893

/-! ## A053291.P12916283115927769297

`lcm((4^n-1)*a(n-1), 2^(n²-n))` with `a(0)=1`
-/

namespace A053291.P12916283115927769297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (((4 ^ n : ℤ) - 1) * (a (n - 1) : ℤ)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n ^ 2 : ℤ) - (n : ℤ) : ℤ)))

end

end A053291.P12916283115927769297

/-! ## A053291.P3720399923533523393

`n!*A053996(n)`
-/

namespace A053291.P3720399923533523393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A053996 n

end

end A053291.P3720399923533523393

/-! ## A053291.P14217692831643548933

`a(n-1)*A115490(n)` with `a(0)=1`
-/

namespace A053291.P14217692831643548933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A115490 n

end

end A053291.P14217692831643548933

/-! ## A053291.P13158804016781675747

`C(A000302(n), 2)/2*a(n-1)` with `a(0)=1`
-/

namespace A053291.P13158804016781675747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (A000302 n).toNat 2 : ℚ) / 2 * a (n - 1)

end

end A053291.P13158804016781675747

/-!
# A053292: Number of nonsingular n X n matrices over GF(5).

The programs for A053292, there is no canonical definition to state claims against.
-/

/-! ## A053292.P428448315666891634

`A109345(n)*A027872(n)`
-/

namespace A053292.P428448315666891634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109345 n * A027872 n

end

end A053292.P428448315666891634

/-!
# A053293: Number of nonsingular n X n matrices over GF(7).

The programs for A053293, there is no canonical definition to state claims against.
-/

/-! ## A053293.P5148939852977562361

`A109493(n)*A027875(n)`
-/

namespace A053293.P5148939852977562361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109493 n * A027875 n

end

end A053293.P5148939852977562361

/-!
# A053294: a(0)=1, a(m+1) = Sum_{k=0..m}[a(k)^2 * a(m-k)^2].

The programs for A053294, there is no canonical definition to state claims against.
-/

/-! ## A053294.P1699831881564611584

`A286156(∑[round(sqrt(n))]!)`
-/

namespace A053294.P1699831881564611584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286156 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A053294.P1699831881564611584

/-!
# A053295: Partial sums of A053739.

The programs for A053295, the canonical program `A053295.P4212303284652690667` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053295 has offset 0).

The definition of A053295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053295.P4212303284652690667

`a(n-1)+a(n-2)+C(n+5, 5)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053295

/-- `a(n-1)+a(n-2)+C(n+5, 5)` -/
def P4212303284652690667.Spec : Prop :=
  ∀ n, (P4212303284652690667.a n : ℤ) = A053295 n

theorem P4212303284652690667.correct : P4212303284652690667.Spec := by
  intro n
  simp only [A053295]

end A053295

/-! ## A053295.P14694653291218182866

`∑[∑[∑[∑[∑[∑[a(n-2)+a(n-1)]]]]]]` with `a(0)=1, a(1)=1`
-/

namespace A053295.P14694653291218182866
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f6 =>
  f6 (n - 2) + f6 (n - 1)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053295.P14694653291218182866

namespace A053295

/-- `∑[∑[∑[∑[∑[∑[a(n-2)+a(n-1)]]]]]]` -/
def P14694653291218182866.Spec : Prop :=
  ∀ n, (P14694653291218182866.a n : ℤ) = A053295 n

end A053295

/-! ## A053295.P14559342210402259023

`∑[A053739(n)]`
-/

namespace A053295.P14559342210402259023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053295.P14559342210402259023

namespace A053295

/-- `∑[A053739(n)]` -/
def P14559342210402259023.Spec : Prop :=
  ∀ n, P14559342210402259023.a n = A053295 n

end A053295

/-! ## A053295.P14129519256463402432

`∑[∑[A014166(n+1)]]`
-/

namespace A053295.P14129519256463402432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053295.P14129519256463402432

namespace A053295

/-- `∑[∑[A014166(n+1)]]` -/
def P14129519256463402432.Spec : Prop :=
  ∀ n, P14129519256463402432.a n = A053295 n

end A053295

/-! ## A053295.P8825612591195067773

`∑[∑[∑[A014162(n+1)]]]`
-/

namespace A053295.P8825612591195067773
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053295.P8825612591195067773

namespace A053295

/-- `∑[∑[∑[A014162(n+1)]]]` -/
def P8825612591195067773.Spec : Prop :=
  ∀ n, P8825612591195067773.a n = A053295 n

end A053295

/-! ## A053295.P6372453686877588980

`A054469(n)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A053295.P6372453686877588980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A054469 n + a (n - 2)

end

end A053295.P6372453686877588980

namespace A053295

/-- `A054469(n)+a(n-2)` -/
def P6372453686877588980.Spec : Prop :=
  ∀ n, P6372453686877588980.a n = A053295 n

end A053295

/-! ## A053295.P724014878378847789

`∑[∑[∑[∑[∑[∑[A000045(n+1)]]]]]]`
-/

namespace A053295.P724014878378847789
noncomputable section

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053295.P724014878378847789

namespace A053295

/-- `∑[∑[∑[∑[∑[∑[A000045(n+1)]]]]]]` -/
def P724014878378847789.Spec : Prop :=
  ∀ n, P724014878378847789.a n = A053295 n

end A053295

/-! ## A053295.P17216185545170717402

`A054470(n)-a(n-1)` with `a(0)=1`
-/

namespace A053295.P17216185545170717402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054470 n - a (n - 1)

end

end A053295.P17216185545170717402

namespace A053295

/-- `A054470(n)-a(n-1)` -/
def P17216185545170717402.Spec : Prop :=
  ∀ n, P17216185545170717402.a n = A053295 n

end A053295

/-! ## A053295.P14181357430887901474

`∪[A027955(n+2), A027939(n+3)]`
-/

namespace A053295.P14181357430887901474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027955 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027939 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053295.P14181357430887901474

namespace A053295

/-- `∪[A027955(n+2), A027939(n+3)]` -/
def P14181357430887901474.Spec : Prop :=
  ∀ n, (P14181357430887901474.a n : ℤ) = A053295 n

end A053295

/-! ## A053295.P12414716219960028837

`A053296(n+1)-(A053739(n+1)+A053296(n))`
-/

namespace A053295.P12414716219960028837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053296 (n + 1) - (A053739 (n + 1) + A053296 n)

end

end A053295.P12414716219960028837

namespace A053295

/-- `A053296(n+1)-(A053739(n+1)+A053296(n))` -/
def P12414716219960028837.Spec : Prop :=
  ∀ n, P12414716219960028837.a n = A053295 n

end A053295

/-!
# A053296: Partial sums of A053295.

The programs for A053296, the canonical program `A053296.P2138831965283300961` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053296 has offset 0).

The definition of A053296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053296.P2138831965283300961

`a(n-1)+a(n-2)+C(n+6, 6)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053296

/-- `a(n-1)+a(n-2)+C(n+6, 6)` -/
def P2138831965283300961.Spec : Prop :=
  ∀ n, (P2138831965283300961.a n : ℤ) = A053296 n

theorem P2138831965283300961.correct : P2138831965283300961.Spec := by
  intro n
  simp only [A053296]

end A053296

/-! ## A053296.P1867699273510912456

`∑[∑[∑[∑[∑[∑[∑[a(n-2)+a(n-1)]]]]]]]` with `a(0)=1, a(1)=1`
-/

namespace A053296.P1867699273510912456
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f7 =>
  f7 (n - 2) + f7 (n - 1)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053296.P1867699273510912456

namespace A053296

/-- `∑[∑[∑[∑[∑[∑[∑[a(n-2)+a(n-1)]]]]]]]` -/
def P1867699273510912456.Spec : Prop :=
  ∀ n, (P1867699273510912456.a n : ℤ) = A053296 n

end A053296

/-! ## A053296.P6922124113533346276

`∑[A053295(n)]`
-/

namespace A053296.P6922124113533346276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053296.P6922124113533346276

namespace A053296

/-- `∑[A053295(n)]` -/
def P6922124113533346276.Spec : Prop :=
  ∀ n, P6922124113533346276.a n = A053296 n

end A053296

/-! ## A053296.P2141052343257761070

`∑[∑[A053739(n)]]`
-/

namespace A053296.P2141052343257761070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053739 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053296.P2141052343257761070

namespace A053296

/-- `∑[∑[A053739(n)]]` -/
def P2141052343257761070.Spec : Prop :=
  ∀ n, P2141052343257761070.a n = A053296 n

end A053296

/-! ## A053296.P17843054000687895721

`∑[∑[∑[A014166(n+1)]]]`
-/

namespace A053296.P17843054000687895721
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053296.P17843054000687895721

namespace A053296

/-- `∑[∑[∑[A014166(n+1)]]]` -/
def P17843054000687895721.Spec : Prop :=
  ∀ n, P17843054000687895721.a n = A053296 n

end A053296

/-! ## A053296.P15341083472953937567

`A054470(n)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A053296.P15341083472953937567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A054470 n + a (n - 2)

end

end A053296.P15341083472953937567

namespace A053296

/-- `A054470(n)+a(n-2)` -/
def P15341083472953937567.Spec : Prop :=
  ∀ n, P15341083472953937567.a n = A053296 n

end A053296

/-! ## A053296.P4391846787195569837

`∑[∑[∑[∑[∑[∑[∑[A000045(n+1)]]]]]]]`
-/

namespace A053296.P4391846787195569837
noncomputable section

def f7 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053296.P4391846787195569837

namespace A053296

/-- `∑[∑[∑[∑[∑[∑[∑[A000045(n+1)]]]]]]]` -/
def P4391846787195569837.Spec : Prop :=
  ∀ n, P4391846787195569837.a n = A053296 n

end A053296

/-! ## A053296.P15798407550268399585

`∪[A027944(n+3), A027951(n+3)]`
-/

namespace A053296.P15798407550268399585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027944 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027951 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053296.P15798407550268399585

namespace A053296

/-- `∪[A027944(n+3), A027951(n+3)]` -/
def P15798407550268399585.Spec : Prop :=
  ∀ n, (P15798407550268399585.a n : ℤ) = A053296 n

end A053296

/-! ## A053296.P12349792466487740178

`A053308(n+1)-(A053308(n)+A053295(n+1))`
-/

namespace A053296.P12349792466487740178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053308 (n + 1) - (A053308 n + A053295 (n + 1))

end

end A053296.P12349792466487740178

namespace A053296

/-- `A053308(n+1)-(A053308(n)+A053295(n+1))` -/
def P12349792466487740178.Spec : Prop :=
  ∀ n, P12349792466487740178.a n = A053296 n

end A053296

/-!
# A053297: Row sums of array T in A053199.

The programs for A053297, the canonical program `A053297.P301715690117761564` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053297 has offset 1).

The definition of A053297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053297.P18183216812881435353

`Δ[(n+1)/2*A060995(n+1)/2]`
-/

namespace A053297.P18183216812881435353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * ((A060995 (n + 1) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A053297.P18183216812881435353

namespace A053297

/-- `Δ[(n+1)/2*A060995(n+1)/2]` -/
def P18183216812881435353.Spec : Prop :=
  ∀ n, P18183216812881435353.a n = (A053297 (n + 1) : ℚ)

end A053297

/-! ## A053297.P301715690117761564

`A054145(n)+A007052(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A053297

/-- `A054145(n)+A007052(n)` -/
def P301715690117761564.Spec : Prop :=
  ∀ n, P301715690117761564.a n = A053297 (n + 1)

theorem P301715690117761564.correct : P301715690117761564.Spec := by
  intro n
  simp only [A053297, Nat.add_sub_cancel]

end A053297

/-! ## A053297.P17017504655009392012

`A335087(n)-A054145(n)`
-/

namespace A053297.P17017504655009392012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335087 n - A054145 n

end

end A053297.P17017504655009392012

namespace A053297

/-- `A335087(n)-A054145(n)` -/
def P17017504655009392012.Spec : Prop :=
  ∀ n, P17017504655009392012.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P16102258273764332654

`A054145(n)+∑[A003480(n)]`
-/

namespace A053297.P16102258273764332654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054145 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053297.P16102258273764332654

namespace A053297

/-- `A054145(n)+∑[A003480(n)]` -/
def P16102258273764332654.Spec : Prop :=
  ∀ n, P16102258273764332654.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P14267324265816296643

`A007070(n)+∑[A181292(n)]`
-/

namespace A053297.P14267324265816296643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053297.P14267324265816296643

namespace A053297

/-- `A007070(n)+∑[A181292(n)]` -/
def P14267324265816296643.Spec : Prop :=
  ∀ n, P14267324265816296643.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P11970045407904047595

`A054146(n+1)-A181292(n)`
-/

namespace A053297.P11970045407904047595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 (n + 1) - A181292 n

end

end A053297.P11970045407904047595

namespace A053297

/-- `A054146(n+1)-A181292(n)` -/
def P11970045407904047595.Spec : Prop :=
  ∀ n, P11970045407904047595.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P7821339755548992925

`A007052(n)+2*A054146(n)`
-/

namespace A053297.P7821339755548992925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n + 2 * A054146 n

end

end A053297.P7821339755548992925

namespace A053297

/-- `A007052(n)+2*A054146(n)` -/
def P7821339755548992925.Spec : Prop :=
  ∀ n, P7821339755548992925.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P5252035523038640357

`A335087(n)-2*A054146(n)`
-/

namespace A053297.P5252035523038640357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335087 n - 2 * A054146 n

end

end A053297.P5252035523038640357

namespace A053297

/-- `A335087(n)-2*A054146(n)` -/
def P5252035523038640357.Spec : Prop :=
  ∀ n, P5252035523038640357.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P9887807353819090055

`∑[∑[A054146(n)+A003480(n)]]`
-/

namespace A053297.P9887807353819090055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 n + A003480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053297.P9887807353819090055

namespace A053297

/-- `∑[∑[A054146(n)+A003480(n)]]` -/
def P9887807353819090055.Spec : Prop :=
  ∀ n, P9887807353819090055.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P15399989664569882648

`∑[A054146(n+1)-A054145(n)]`
-/

namespace A053297.P15399989664569882648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 (n + 1) - A054145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053297.P15399989664569882648

namespace A053297

/-- `∑[A054146(n+1)-A054145(n)]` -/
def P15399989664569882648.Spec : Prop :=
  ∀ n, P15399989664569882648.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P10802612917912788692

`A054146(n+1)-∑[A054146(n)]`
-/

namespace A053297.P10802612917912788692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054146 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053297.P10802612917912788692

namespace A053297

/-- `A054146(n+1)-∑[A054146(n)]` -/
def P10802612917912788692.Spec : Prop :=
  ∀ n, P10802612917912788692.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P10969872083659307646

`A181292(n+1)-∑[A054145(n)]`
-/

namespace A053297.P10969872083659307646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181292 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053297.P10969872083659307646

namespace A053297

/-- `A181292(n+1)-∑[A054145(n)]` -/
def P10969872083659307646.Spec : Prop :=
  ∀ n, P10969872083659307646.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P9835140144570953331

`A181292(n+1)-2*A181292(n)`
-/

namespace A053297.P9835140144570953331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181292 (n + 1) - 2 * A181292 n

end

end A053297.P9835140144570953331

namespace A053297

/-- `A181292(n+1)-2*A181292(n)` -/
def P9835140144570953331.Spec : Prop :=
  ∀ n, P9835140144570953331.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P8981110673793530332

`A181292(n+1)+A181292(n)-A054147(n)`
-/

namespace A053297.P8981110673793530332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181292 (n + 1) + (A181292 n - A054147 n)

end

end A053297.P8981110673793530332

namespace A053297

/-- `A181292(n+1)+A181292(n)-A054147(n)` -/
def P8981110673793530332.Spec : Prop :=
  ∀ n, P8981110673793530332.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P3911410256409778190

`A054145(n+1)-A181292(n+1)`
-/

namespace A053297.P3911410256409778190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054145 (n + 1) - A181292 (n + 1)

end

end A053297.P3911410256409778190

namespace A053297

/-- `A054145(n+1)-A181292(n+1)` -/
def P3911410256409778190.Spec : Prop :=
  ∀ n, P3911410256409778190.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P12515729818845863945

`A335087(n+1)-A054146(n+2)`
-/

namespace A053297.P12515729818845863945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335087 (n + 1) - A054146 (n + 2)

end

end A053297.P12515729818845863945

namespace A053297

/-- `A335087(n+1)-A054146(n+2)` -/
def P12515729818845863945.Spec : Prop :=
  ∀ n, P12515729818845863945.a n = A053297 (n + 1)

end A053297

/-! ## A053297.P17827042868062169287

`∑[A054145(n+1)/2-A054145(n)]`
-/

namespace A053297.P17827042868062169287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054145 (n + 1) : ℚ) / 2 - (A054145 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053297.P17827042868062169287

namespace A053297

/-- `∑[A054145(n+1)/2-A054145(n)]` -/
def P17827042868062169287.Spec : Prop :=
  ∀ n, P17827042868062169287.a n = (A053297 (n + 1) : ℚ)

end A053297

/-!
# A053298: Partial sums of A027964.

The programs for A053298, the canonical program `A053298.P460731991273930447` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053298 has offset 0).

The definition of A053298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053298.P460731991273930447

`a(n-1)+a(n-2)+(3*n+4)*C(n+3, 3)/4` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053298

/-- `a(n-1)+a(n-2)+(3*n+4)*C(n+3, 3)/4` -/
def P460731991273930447.Spec : Prop :=
  ∀ n, P460731991273930447.a n = (A053298 n : ℚ)

end A053298

/-! ## A053298.P4703080462654502119

`∑[∑[∑[∑[ogf((1+2x)/(1-2x+x^3))]]]]`
-/

namespace A053298.P4703080462654502119
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, 0, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053298.P4703080462654502119

namespace A053298

/-- `∑[∑[∑[∑[ogf((1+2x)/(1-2x+x^3))]]]]` -/
def P4703080462654502119.Spec : Prop :=
  ∀ n, P4703080462654502119.a n = A053298 n

end A053298

/-! ## A053298.P7165821749881566241

`∑[∑[∑[∑[∑[a(n-1)+a(n-2)]]]]]` with `a(0)=1, a(1)=3`
-/

namespace A053298.P7165821749881566241
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f5 =>
  f5 (n - 1) + f5 (n - 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053298.P7165821749881566241

namespace A053298

/-- `∑[∑[∑[∑[∑[a(n-1)+a(n-2)]]]]]` -/
def P7165821749881566241.Spec : Prop :=
  ∀ n, (P7165821749881566241.a n : ℤ) = A053298 n

end A053298

/-! ## A053298.P971051686731916093

`∑[A027964(n+4)]`
-/

namespace A053298.P971051686731916093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053298.P971051686731916093

namespace A053298

/-- `∑[A027964(n+4)]` -/
def P971051686731916093.Spec : Prop :=
  ∀ n, P971051686731916093.a n = A053298 n

end A053298

/-! ## A053298.P6907669711006599756

`∑[∑[A027963(n+3)]]`
-/

namespace A053298.P6907669711006599756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053298.P6907669711006599756

namespace A053298

/-- `∑[∑[A027963(n+3)]]` -/
def P6907669711006599756.Spec : Prop :=
  ∀ n, P6907669711006599756.a n = A053298 n

end A053298

/-! ## A053298.P12581444912122373544

`∑[∑[∑[A023537(n+1)]]]`
-/

namespace A053298.P12581444912122373544
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053298.P12581444912122373544

namespace A053298

/-- `∑[∑[∑[A023537(n+1)]]]` -/
def P12581444912122373544.Spec : Prop :=
  ∀ n, P12581444912122373544.a n = A053298 n

end A053298

/-! ## A053298.P6336071868393046887

`∑[∑[∑[∑[∑[A000032(n+1)]]]]]`
-/

namespace A053298.P6336071868393046887
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053298.P6336071868393046887

namespace A053298

/-- `∑[∑[∑[∑[∑[A000032(n+1)]]]]]` -/
def P6336071868393046887.Spec : Prop :=
  ∀ n, P6336071868393046887.a n = A053298 n

end A053298

/-! ## A053298.P7700047952486913627

`∪[A027006(n+2), A027013(n+2)]`
-/

namespace A053298.P7700047952486913627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027006 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027013 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053298.P7700047952486913627

namespace A053298

/-- `∪[A027006(n+2), A027013(n+2)]` -/
def P7700047952486913627.Spec : Prop :=
  ∀ n, (P7700047952486913627.a n : ℤ) = A053298 n

end A053298

/-!
# A053299: First n-digit prime to begin a gap.

The programs for A053299, there is no canonical definition to state claims against.
-/

/-! ## A053299.P16104246765518131850

`A000230(eq[A000037(n+1), A194693(n+1)])`
-/

namespace A053299.P16104246765518131850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A053299.P16104246765518131850

