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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A343500: Positions of 2's in A003324.

The programs for A343500, the canonical program `A343500.P14062882048981038168` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343500 has offset 1).

The definition of A343500 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338692, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343500.P14062882048981038168

`2*A338692(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A343500

/-- `2*A338692(n+1)` -/
def P14062882048981038168.Spec : Prop :=
  ∀ n, P14062882048981038168.a n = A343500 (n + 1)

theorem P14062882048981038168.correct : P14062882048981038168.Spec := by
  intro n
  simp only [A343500, Nat.add_sub_cancel]

end A343500

/-! ## A343500.P10776546018344489412

`2*∪[A343501(n+1), A016813(n)]`
-/

namespace A343500.P10776546018344489412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343500.P10776546018344489412

namespace A343500

/-- `2*∪[A343501(n+1), A016813(n)]` -/
def P10776546018344489412.Spec : Prop :=
  ∀ n, (P10776546018344489412.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P11761640774409978177

`2*∪[A047438(n+1), A343501(n+1)]`
-/

namespace A343500.P11761640774409978177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343500.P11761640774409978177

namespace A343500

/-- `2*∪[A047438(n+1), A343501(n+1)]` -/
def P11761640774409978177.Spec : Prop :=
  ∀ n, (P11761640774409978177.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P13285957696259105811

`2*∪[A277549(n+1), A343501(n+1)]`
-/

namespace A343500.P13285957696259105811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343500.P13285957696259105811

namespace A343500

/-- `2*∪[A277549(n+1), A343501(n+1)]` -/
def P13285957696259105811.Spec : Prop :=
  ∀ n, (P13285957696259105811.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P16016034986219728538

`A338692(A000027(n+1))+A338692(n+1)`
-/

namespace A343500.P16016034986219728538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (A000027 (n + 1)).toNat + A338692 (n + 1)

end

end A343500.P16016034986219728538

namespace A343500

/-- `A338692(A000027(n+1))+A338692(n+1)` -/
def P16016034986219728538.Spec : Prop :=
  ∀ n, P16016034986219728538.a n = A343500 (n + 1)

end A343500

/-! ## A343500.P8475084523080583797

`A338692(n+1)+∪[A343501(n+1), A016813(n)]`
-/

namespace A343500.P8475084523080583797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A343500.P8475084523080583797

namespace A343500

/-- `A338692(n+1)+∪[A343501(n+1), A016813(n)]` -/
def P8475084523080583797.Spec : Prop :=
  ∀ n, P8475084523080583797.a n = A343500 (n + 1)

end A343500

/-! ## A343500.P14990188256124423660

`2*(eq[1, A209615(n+1)]+1)`
-/

namespace A343500.P14990188256124423660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A343500.P14990188256124423660

namespace A343500

/-- `2*(eq[1, A209615(n+1)]+1)` -/
def P14990188256124423660.Spec : Prop :=
  ∀ n, (P14990188256124423660.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P15970458978096927234

`A004277(A338692(n+1))`
-/

namespace A343500.P15970458978096927234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A338692 (n + 1)).toNat

end

end A343500.P15970458978096927234

namespace A343500

/-- `A004277(A338692(n+1))` -/
def P15970458978096927234.Spec : Prop :=
  ∀ n, P15970458978096927234.a n = A343500 (n + 1)

end A343500

/-! ## A343500.P8361177914432925529

`filter[A338691(n+1), A354034(#)]`
-/

namespace A343500.P8361177914432925529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A343500.P8361177914432925529

namespace A343500

/-- `filter[A338691(n+1), A354034(#)]` -/
def P8361177914432925529.Spec : Prop :=
  ∀ n, P8361177914432925529.a n = A343500 (n + 1)

end A343500

/-! ## A343500.P17376041570850390446

`∩[A338691(n+1), A003485(n)]`
-/

namespace A343500.P17376041570850390446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343500.P17376041570850390446

namespace A343500

/-- `∩[A338691(n+1), A003485(n)]` -/
def P17376041570850390446.Spec : Prop :=
  ∀ n, (P17376041570850390446.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P13566492041257705092

`∩[A338691(n+1), A005843(n+1)]`
-/

namespace A343500.P13566492041257705092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343500.P13566492041257705092

namespace A343500

/-- `∩[A338691(n+1), A005843(n+1)]` -/
def P13566492041257705092.Spec : Prop :=
  ∀ n, (P13566492041257705092.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P1591438349652664203

`∩[A047464(n+1), A338691(n+1)]`
-/

namespace A343500.P1591438349652664203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343500.P1591438349652664203

namespace A343500

/-- `∩[A047464(n+1), A338691(n+1)]` -/
def P1591438349652664203.Spec : Prop :=
  ∀ n, (P1591438349652664203.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P2458270796591616430

`∩[A157502(n+1), A338691(n+1)]`
-/

namespace A343500.P2458270796591616430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343500.P2458270796591616430

namespace A343500

/-- `∩[A157502(n+1), A338691(n+1)]` -/
def P2458270796591616430.Spec : Prop :=
  ∀ n, (P2458270796591616430.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P13473547815867011181

`∩[A338691(n+1), A004275(n)]`
-/

namespace A343500.P13473547815867011181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343500.P13473547815867011181

namespace A343500

/-- `∩[A338691(n+1), A004275(n)]` -/
def P13473547815867011181.Spec : Prop :=
  ∀ n, (P13473547815867011181.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P7048999350549196071

`∩[A338691(n+1), A004277(n)]`
-/

namespace A343500.P7048999350549196071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343500.P7048999350549196071

namespace A343500

/-- `∩[A338691(n+1), A004277(n)]` -/
def P7048999350549196071.Spec : Prop :=
  ∀ n, (P7048999350549196071.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P14715705006097466418

`A051755(A338692(n+1)+2)-2`
-/

namespace A343500.P14715705006097466418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A338692 (n + 1) + 2).toNat - 2

end

end A343500.P14715705006097466418

namespace A343500

/-- `A051755(A338692(n+1)+2)-2` -/
def P14715705006097466418.Spec : Prop :=
  ∀ n, P14715705006097466418.a n = A343500 (n + 1)

end A343500

/-! ## A343500.P17390614974252666757

`2*eq[A038189(n), A284948(n+1)]`
-/

namespace A343500.P17390614974252666757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343500.P17390614974252666757

namespace A343500

/-- `2*eq[A038189(n), A284948(n+1)]` -/
def P17390614974252666757.Spec : Prop :=
  ∀ n, (P17390614974252666757.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P13732044505267715166

`2*eq[A089013(n), A328979(n+1)]`
-/

namespace A343500.P13732044505267715166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343500.P13732044505267715166

namespace A343500

/-- `2*eq[A089013(n), A328979(n+1)]` -/
def P13732044505267715166.Spec : Prop :=
  ∀ n, (P13732044505267715166.a n : ℤ) = A343500 (n + 1)

end A343500

/-! ## A343500.P17789940029897455538

`∩[A047466(n+1), A338691(n+1)]`
-/

namespace A343500.P17789940029897455538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343500.P17789940029897455538

namespace A343500

/-- `∩[A047466(n+1), A338691(n+1)]` -/
def P17789940029897455538.Spec : Prop :=
  ∀ n, (P17789940029897455538.a n : ℤ) = A343500 (n + 1)

end A343500

/-!
# A343501: Positions of 4's in A003324.

The programs for A343501, the canonical program `A343501.P17916702806192043918` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343501 has offset 1).

The definition of A343501 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A338691, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343501.P17916702806192043918

`2*A338691(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A343501

/-- `2*A338691(n+1)` -/
def P17916702806192043918.Spec : Prop :=
  ∀ n, P17916702806192043918.a n = A343501 (n + 1)

theorem P17916702806192043918.correct : P17916702806192043918.Spec := by
  intro n
  simp only [A343501, Nat.add_sub_cancel]

end A343501

/-! ## A343501.P14043316761382266944

`lt[2, A152985(n+1)%4]+1`
-/

namespace A343501.P14043316761382266944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152985 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A343501.P14043316761382266944

namespace A343501

/-- `lt[2, A152985(n+1)%4]+1` -/
def P14043316761382266944.Spec : Prop :=
  ∀ n, (P14043316761382266944.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P13991795794045501947

`2*∪[A343500(n+1), A004767(n)]`
-/

namespace A343501.P13991795794045501947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343501.P13991795794045501947

namespace A343501

/-- `2*∪[A343500(n+1), A004767(n)]` -/
def P13991795794045501947.Spec : Prop :=
  ∀ n, (P13991795794045501947.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P17682674291138276852

`2*∪[A047531(n+1), A343500(n+1)]`
-/

namespace A343501.P17682674291138276852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343501.P17682674291138276852

namespace A343501

/-- `2*∪[A047531(n+1), A343500(n+1)]` -/
def P17682674291138276852.Spec : Prop :=
  ∀ n, (P17682674291138276852.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P2315684338688616756

`2*∪[A055050(n+1), A343500(n+1)]`
-/

namespace A343501.P2315684338688616756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343501.P2315684338688616756

namespace A343501

/-- `2*∪[A055050(n+1), A343500(n+1)]` -/
def P2315684338688616756.Spec : Prop :=
  ∀ n, (P2315684338688616756.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P10203627702112458421

`A338691(n+1)+A338691(n+1)/A209615(n+1)²`
-/

namespace A343501.P10203627702112458421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338691 (n + 1) : ℚ) + (A338691 (n + 1) : ℚ) / (A209615 (n + 1) ^ 2 : ℚ)

end

end A343501.P10203627702112458421

namespace A343501

/-- `A338691(n+1)+A338691(n+1)/A209615(n+1)²` -/
def P10203627702112458421.Spec : Prop :=
  ∀ n, P10203627702112458421.a n = (A343501 (n + 1) : ℚ)

end A343501

/-! ## A343501.P17303051874179475317

`A338691(n+1)+A338691(n+1)+A302048(A020649(n+3))`
-/

namespace A343501.P17303051874179475317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1) + (A338691 (n + 1) + A302048 (A020649 (n + 3)).toNat)

end

end A343501.P17303051874179475317

namespace A343501

/-- `A338691(n+1)+A338691(n+1)+A302048(A020649(n+3))` -/
def P17303051874179475317.Spec : Prop :=
  ∀ n, P17303051874179475317.a n = A343501 (n + 1)

end A343501

/-! ## A343501.P11649077831144902860

`∩[2*n, A338692(n+1)]`
-/

namespace A343501.P11649077831144902860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343501.P11649077831144902860

namespace A343501

/-- `∩[2*n, A338692(n+1)]` -/
def P11649077831144902860.Spec : Prop :=
  ∀ n, (P11649077831144902860.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P4029441547988793341

`2*(eq[1, A292077(n+1)]+1)`
-/

namespace A343501.P4029441547988793341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A343501.P4029441547988793341

namespace A343501

/-- `2*(eq[1, A292077(n+1)]+1)` -/
def P4029441547988793341.Spec : Prop :=
  ∀ n, (P4029441547988793341.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P1324557068544718163

`A004277(A338691(n+1))`
-/

namespace A343501.P1324557068544718163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A338691 (n + 1)).toNat

end

end A343501.P1324557068544718163

namespace A343501

/-- `A004277(A338691(n+1))` -/
def P1324557068544718163.Spec : Prop :=
  ∀ n, P1324557068544718163.a n = A343501 (n + 1)

end A343501

/-! ## A343501.P14757721707416164223

`A004275(A338691(n+1)+1)`
-/

namespace A343501.P14757721707416164223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A338691 (n + 1) + 1).toNat

end

end A343501.P14757721707416164223

namespace A343501

/-- `A004275(A338691(n+1)+1)` -/
def P14757721707416164223.Spec : Prop :=
  ∀ n, P14757721707416164223.a n = A343501 (n + 1)

end A343501

/-! ## A343501.P16292138461739018619

`2*lt[A209615(A028310(n)), 0]`
-/

namespace A343501.P16292138461739018619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343501.P16292138461739018619

namespace A343501

/-- `2*lt[A209615(A028310(n)), 0]` -/
def P16292138461739018619.Spec : Prop :=
  ∀ n, (P16292138461739018619.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P6616541722436571233

`∩[A338692(n+1), A005843(n)]`
-/

namespace A343501.P6616541722436571233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343501.P6616541722436571233

namespace A343501

/-- `∩[A338692(n+1), A005843(n)]` -/
def P6616541722436571233.Spec : Prop :=
  ∀ n, (P6616541722436571233.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P18239673022143149719

`2*eq[A038189(n), A285384(n+1)]`
-/

namespace A343501.P18239673022143149719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343501.P18239673022143149719

namespace A343501

/-- `2*eq[A038189(n), A285384(n+1)]` -/
def P18239673022143149719.Spec : Prop :=
  ∀ n, (P18239673022143149719.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P10970089103132846496

`2*eq[A089013(n), A285383(n+1)]`
-/

namespace A343501.P10970089103132846496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343501.P10970089103132846496

namespace A343501

/-- `2*eq[A089013(n), A285383(n+1)]` -/
def P10970089103132846496.Spec : Prop :=
  ∀ n, (P10970089103132846496.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P910698143050269235

`∩[A338692(n+1), A348005(n+1)]`
-/

namespace A343501.P910698143050269235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343501.P910698143050269235

namespace A343501

/-- `∩[A338692(n+1), A348005(n+1)]` -/
def P910698143050269235.Spec : Prop :=
  ∀ n, (P910698143050269235.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P2953337768135762779

`∩[A338692(n+1), A051755(n+2)]`
-/

namespace A343501.P2953337768135762779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343501.P2953337768135762779

namespace A343501

/-- `∩[A338692(n+1), A051755(n+2)]` -/
def P2953337768135762779.Spec : Prop :=
  ∀ n, (P2953337768135762779.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P4404051650141085898

`eq[5, A006467(2*n)]`
-/

namespace A343501.P4404051650141085898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006467 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343501.P4404051650141085898

namespace A343501

/-- `eq[5, A006467(2*n)]` -/
def P4404051650141085898.Spec : Prop :=
  ∀ n, (P4404051650141085898.a n : ℤ) = A343501 (n + 1)

end A343501

/-! ## A343501.P10858793070318553804

`eq[4, A003324(n+1)]+1`
-/

namespace A343501.P10858793070318553804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343501.P10858793070318553804

namespace A343501

/-- `eq[4, A003324(n+1)]+1` -/
def P10858793070318553804.Spec : Prop :=
  ∀ n, (P10858793070318553804.a n : ℤ) = A343501 (n + 1)

end A343501

/-!
# A343502: Numbers k such that tau(tau(k)) and tau(k+1) are both prime, where tau is the number of divisors function.

The programs for A343502, there is no canonical definition to state claims against.
-/

/-! ## A343502.P16854376094696408049

`eq[A001221(A058984(n)), A247504(n)]`
-/

namespace A343502.P16854376094696408049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A058984 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343502.P16854376094696408049

/-! ## A343502.P17139354485575642583

`eq[A028234(n+1), A328929(A194757(n+1))]`
-/

namespace A343502.P17139354485575642583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328929 (A194757 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343502.P17139354485575642583

/-! ## A343502.P10089128528390588908

`eq[A007318(A302728(n+1)), A264081(n+1)]`
-/

namespace A343502.P10089128528390588908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A302728 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343502.P10089128528390588908

/-! ## A343502.P1352533621443282815

`eq[A008616(A300778(n+1)), A309873(n+1)]`
-/

namespace A343502.P1352533621443282815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A300778 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343502.P1352533621443282815

/-! ## A343502.P17233660333229586365

`lt[A098550(A203181(n+1)), A319826(n+1)]`
-/

namespace A343502.P17233660333229586365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (A203181 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343502.P17233660333229586365

/-!
# A343503: Number of ways to write n as x*(3*x+1)/2 + y*(7*y+1)/2 + 2^k, where x and y are integers, and k is a nonnegative integer.

The programs for A343503, there is no canonical definition to state claims against.
-/

/-! ## A343503.P8052449386707764733

`A000120(A292392(n+1)-A283950(n+1))`
-/

namespace A343503.P8052449386707764733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292392 (n + 1) - A283950 (n + 1)).toNat

end

end A343503.P8052449386707764733

/-! ## A343503.P4015736408026990576

`A070939(A264975(3*n+2)%A265001(n+1))`
-/

namespace A343503.P4015736408026990576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A264975 (3 * n + 2)) (A265001 (n + 1))).toNat

end

end A343503.P4015736408026990576

/-! ## A343503.P12153581697109824795

`A116543(∪[A344344(2*(n+1)), A331824(n+1)])`
-/

namespace A343503.P12153581697109824795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344344 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331824 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A343503.P12153581697109824795

/-!
# A343504: a(n) is the least common multiple of the nonzero digits in factorial base expansion of n.

The programs for A343504, the canonical program `A343504.P12989595719974363290` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343504 has offset 0).

The definition of A343504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343504.P1711863360154179370

`A316431(lcm(2, A275735(n)))`
-/

namespace A343504.P1711863360154179370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (Int.lcm 2 (A275735 n))

end

end A343504.P1711863360154179370

namespace A343504

/-- `A316431(lcm(2, A275735(n)))` -/
def P1711863360154179370.Spec : Prop :=
  ∀ n, P1711863360154179370.a n = A343504 n

end A343504

/-! ## A343504.P12989595719974363290

`lcm(a(A257687(n)), A099563(n))` with `a(0)=1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A343504

/-- `lcm(a(A257687(n)), A099563(n))` -/
def P12989595719974363290.Spec : Prop :=
  ∀ n, (P12989595719974363290.a n : ℤ) = A343504 n

theorem P12989595719974363290.correct : P12989595719974363290.Spec := by
  intro n
  simp only [A343504]

end A343504

/-! ## A343504.P7217693233721925295

`A316431(2*A275735(n))`
-/

namespace A343504.P7217693233721925295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A275735 n).toNat

end

end A343504.P7217693233721925295

namespace A343504

/-- `A316431(2*A275735(n))` -/
def P7217693233721925295.Spec : Prop :=
  ∀ n, P7217693233721925295.a n = A343504 n

end A343504

/-! ## A343504.P11806591822854827832

`A316431(A275735(n)+A275735(n))`
-/

namespace A343504.P11806591822854827832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (A275735 n + A275735 n).toNat

end

end A343504.P11806591822854827832

namespace A343504

/-- `A316431(A275735(n)+A275735(n))` -/
def P11806591822854827832.Spec : Prop :=
  ∀ n, P11806591822854827832.a n = A343504 n

end A343504

/-! ## A343504.P6774719155817392712

`A328582(A351576(n))`
-/

namespace A343504.P6774719155817392712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328582 (A351576 n).toNat

end

end A343504.P6774719155817392712

namespace A343504

/-- `A328582(A351576(n))` -/
def P6774719155817392712.Spec : Prop :=
  ∀ n, P6774719155817392712.a n = A343504 n

end A343504

/-! ## A343504.P8978732148878386797

`A290103(A275735(n))`
-/

namespace A343504.P8978732148878386797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A275735 n).toNat

end

end A343504.P8978732148878386797

namespace A343504

/-- `A290103(A275735(n))` -/
def P8978732148878386797.Spec : Prop :=
  ∀ n, P8978732148878386797.a n = A343504 n

end A343504

/-! ## A343504.P15399576292414258150

`A284569(A277012(n))`
-/

namespace A343504.P15399576292414258150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 (A277012 n).toNat

end

end A343504.P15399576292414258150

namespace A343504

/-- `A284569(A277012(n))` -/
def P15399576292414258150.Spec : Prop :=
  ∀ n, P15399576292414258150.a n = A343504 n

end A343504

/-! ## A343504.P5395362246932398527

`A227153(n)/A284562(A277012(n))`
-/

namespace A343504.P5395362246932398527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227153 n : ℚ) / (A284562 (A277012 n).toNat : ℚ)

end

end A343504.P5395362246932398527

namespace A343504

/-- `A227153(n)/A284562(A277012(n))` -/
def P5395362246932398527.Spec : Prop :=
  ∀ n, P5395362246932398527.a n = (A343504 n : ℚ)

end A343504

/-! ## A343504.P3869701165669959105

`A156061(A275735(n)²)`
-/

namespace A343504.P3869701165669959105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A275735 n ^ 2).toNat

end

end A343504.P3869701165669959105

namespace A343504

/-- `A156061(A275735(n)²)` -/
def P3869701165669959105.Spec : Prop :=
  ∀ n, P3869701165669959105.a n = A343504 n

end A343504

/-! ## A343504.P3414526245964025864

`A072411(A278236(n))`
-/

namespace A343504.P3414526245964025864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A278236 n).toNat

end

end A343504.P3414526245964025864

namespace A343504

/-- `A072411(A278236(n))` -/
def P3414526245964025864.Spec : Prop :=
  ∀ n, P3414526245964025864.a n = A343504 n

end A343504

/-!
# A343506: Numbers k such that the largest digit in the factorial base expansion of 1/k is 1.

The programs for A343506, there is no canonical definition to state claims against.
-/

/-! ## A343506.P8050109904596347549

`∪[(n+1)!, A129906(n+1)]`
-/

namespace A343506.P8050109904596347549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343506.P8050109904596347549

/-! ## A343506.P3188124725939457024

`∪[A129906(n+1), A104150(n+2)]`
-/

namespace A343506.P3188124725939457024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343506.P3188124725939457024

/-! ## A343506.P10841859229110010101

`∪[A129906(n+1), A068424(A000217(n+2))]`
-/

namespace A343506.P10841859229110010101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068424 (A000217 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343506.P10841859229110010101

/-! ## A343506.P7478339160816245138

`∪[A129906(n+1), A213167(n+2)+A000142(n)]`
-/

namespace A343506.P7478339160816245138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213167 (n + 2) + A000142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343506.P7478339160816245138

/-! ## A343506.P8997590191529523679

`eq[1, A299020(n+1)]+1`
-/

namespace A343506.P8997590191529523679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343506.P8997590191529523679

/-!
# A343508: a(n) = Sum_{k=1..n} gcd(k, n)^6.

The programs for A343508, the canonical program `A343508.P14207009559735720220` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343508 has offset 1).

The definition of A343508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343508.P14207009559735720220

`∑{d}[n+1, #*A069091((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A343508

/-- `∑{d}[n+1, #*A069091((n+1)/#)]` -/
def P14207009559735720220.Spec : Prop :=
  ∀ n, P14207009559735720220.a n = A343508 (n + 1)

theorem P14207009559735720220.correct : P14207009559735720220.Spec := by
  intro n
  simp only [A343508, Nat.add_sub_cancel]

end A343508

/-! ## A343508.P14976079076092261067

`∑{d}[n+1, A029935(#)*A371878((n+1)/#)]`
-/

namespace A343508.P14976079076092261067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A371878 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343508.P14976079076092261067

namespace A343508

/-- `∑{d}[n+1, A029935(#)*A371878((n+1)/#)]` -/
def P14976079076092261067.Spec : Prop :=
  ∀ n, P14976079076092261067.a n = A343508 (n + 1)

end A343508

/-! ## A343508.P9212622460080712635

`∑{d}[n+1, A074722(#)*A351301((n+1)/#)]`
-/

namespace A343508.P9212622460080712635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A351301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343508.P9212622460080712635

namespace A343508

/-- `∑{d}[n+1, A074722(#)*A351301((n+1)/#)]` -/
def P9212622460080712635.Spec : Prop :=
  ∀ n, P9212622460080712635.a n = A343508 (n + 1)

end A343508

/-! ## A343508.P8903026307804070394

`∑{d}[n+1, A306411(#)*A343499((n+1)/#)]`
-/

namespace A343508.P8903026307804070394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306411 d * A343499 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343508.P8903026307804070394

namespace A343508

/-- `∑{d}[n+1, A306411(#)*A343499((n+1)/#)]` -/
def P8903026307804070394.Spec : Prop :=
  ∀ n, P8903026307804070394.a n = A343508 (n + 1)

end A343508

/-! ## A343508.P16601421330352741958

`∑{d}[n+1, A341772(#)*A372963((n+1)/#)]`
-/

namespace A343508.P16601421330352741958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341772 d * A372963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343508.P16601421330352741958

namespace A343508

/-- `∑{d}[n+1, A341772(#)*A372963((n+1)/#)]` -/
def P16601421330352741958.Spec : Prop :=
  ∀ n, P16601421330352741958.a n = A343508 (n + 1)

end A343508

/-! ## A343508.P11388263676662647898

`A343510(A052905(n+3))`
-/

namespace A343508.P11388263676662647898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (A052905 (n + 3)).toNat

end

end A343508.P11388263676662647898

namespace A343508

/-- `A343510(A052905(n+3))` -/
def P11388263676662647898.Spec : Prop :=
  ∀ n, P11388263676662647898.a n = A343508 (n + 1)

end A343508

/-! ## A343508.P4436638883365214577

`A343510(A046691(n+4)-1)`
-/

namespace A343508.P4436638883365214577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (A046691 (n + 4) - 1).toNat

end

end A343508.P4436638883365214577

namespace A343508

/-- `A343510(A046691(n+4)-1)` -/
def P4436638883365214577.Spec : Prop :=
  ∀ n, P4436638883365214577.a n = A343508 (n + 1)

end A343508

/-! ## A343508.P9357181959192159093

`A343510(A000217(n+6)-5)`
-/

namespace A343508.P9357181959192159093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (A000217 (n + 6) - 5).toNat

end

end A343508.P9357181959192159093

namespace A343508

/-- `A343510(A000217(n+6)-5)` -/
def P9357181959192159093.Spec : Prop :=
  ∀ n, P9357181959192159093.a n = A343508 (n + 1)

end A343508

/-! ## A343508.P1592060442901730185

`A343510(Δ[A023545(n+2)]-1)`
-/

namespace A343508.P1592060442901730185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (f1 (n + 1) - f1 n - 1).toNat

end

end A343508.P1592060442901730185

namespace A343508

/-- `A343510(Δ[A023545(n+2)]-1)` -/
def P1592060442901730185.Spec : Prop :=
  ∀ n, P1592060442901730185.a n = A343508 (n + 1)

end A343508

/-!
# A343509: a(n) = Sum_{k=1..n} gcd(k, n)^7.

The programs for A343509, the canonical program `A343509.P11098241970355354886` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343509 has offset 1).

The definition of A343509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343509.P11098241970355354886

`∑{d}[n+1, #*A069092((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A343509

/-- `∑{d}[n+1, #*A069092((n+1)/#)]` -/
def P11098241970355354886.Spec : Prop :=
  ∀ n, P11098241970355354886.a n = A343509 (n + 1)

theorem P11098241970355354886.correct : P11098241970355354886.Spec := by
  intro n
  simp only [A343509, Nat.add_sub_cancel]

end A343509

/-! ## A343509.P13432413989058421293

`∑{d}[n+1, A074722(#)*A351302((n+1)/#)]`
-/

namespace A343509.P13432413989058421293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A351302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343509.P13432413989058421293

namespace A343509

/-- `∑{d}[n+1, A074722(#)*A351302((n+1)/#)]` -/
def P13432413989058421293.Spec : Prop :=
  ∀ n, P13432413989058421293.a n = A343509 (n + 1)

end A343509

/-! ## A343509.P16910116922918220374

`∑{d}[n+1, A239442(#)*A343508((n+1)/#)]`
-/

namespace A343509.P16910116922918220374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239442 d * A343508 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343509.P16910116922918220374

namespace A343509

/-- `∑{d}[n+1, A239442(#)*A343508((n+1)/#)]` -/
def P16910116922918220374.Spec : Prop :=
  ∀ n, P16910116922918220374.a n = A343509 (n + 1)

end A343509

/-! ## A343509.P7436946311829539455

`∑{d}[n+1, A341772(#)*A373007((n+1)/#)]`
-/

namespace A343509.P7436946311829539455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341772 d * A373007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343509.P7436946311829539455

namespace A343509

/-- `∑{d}[n+1, A341772(#)*A373007((n+1)/#)]` -/
def P7436946311829539455.Spec : Prop :=
  ∀ n, P7436946311829539455.a n = A343509 (n + 1)

end A343509

/-! ## A343509.P15613666290630359875

`A343510(A055999(n+4))`
-/

namespace A343509.P15613666290630359875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (A055999 (n + 4)).toNat

end

end A343509.P15613666290630359875

namespace A343509

/-- `A343510(A055999(n+4))` -/
def P15613666290630359875.Spec : Prop :=
  ∀ n, P15613666290630359875.a n = A343509 (n + 1)

end A343509

/-! ## A343509.P9246580913141604020

`A343510(A000217(n+9)-A005408(n+11))`
-/

namespace A343509.P9246580913141604020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (A000217 (n + 9) - A005408 (n + 11)).toNat

end

end A343509.P9246580913141604020

namespace A343509

/-- `A343510(A000217(n+9)-A005408(n+11))` -/
def P9246580913141604020.Spec : Prop :=
  ∀ n, P9246580913141604020.a n = A343509 (n + 1)

end A343509

/-! ## A343509.P4006246899999547908

`A343510(A133263(n+9)-A005408(n+12))`
-/

namespace A343509.P4006246899999547908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (A133263 (n + 9) - A005408 (n + 12)).toNat

end

end A343509.P4006246899999547908

namespace A343509

/-- `A343510(A133263(n+9)-A005408(n+12))` -/
def P4006246899999547908.Spec : Prop :=
  ∀ n, P4006246899999547908.a n = A343509 (n + 1)

end A343509

/-!
# A343510: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) = Sum_{j=1..n} gcd(j, n)^k.

The programs for A343510, there is no canonical definition to state claims against.
-/

/-! ## A343510.P883978818658231075

`A344725(n+1)-(A025437(n)+A006927(A014376(n)))`
-/

namespace A343510.P883978818658231075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (n + 1) - (A025437 n + A006927 (A014376 n).toNat)

end

end A343510.P883978818658231075

/-! ## A343510.P10271301184275715825

`A344725(n+1)-A024155(A000204(n+1))`
-/

namespace A343510.P10271301184275715825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (n + 1) - A024155 (A000204 (n + 1)).toNat

end

end A343510.P10271301184275715825

/-! ## A343510.P12414839760707758632

`A344725(n+1)-A076142(A203150(n+1))`
-/

namespace A343510.P12414839760707758632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (n + 1) - A076142 (A203150 (n + 1)).toNat

end

end A343510.P12414839760707758632

/-! ## A343510.P5988765652996668419

`A344725(n+1)-A025437(A151838(n)+n)`
-/

namespace A343510.P5988765652996668419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (n + 1) - A025437 (A151838 n + (n : ℤ)).toNat

end

end A343510.P5988765652996668419

/-! ## A343510.P12435327822253112297

`A344725(n+1)-A235127(A002991(n))`
-/

namespace A343510.P12435327822253112297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (n + 1) - A235127 (A002991 n).toNat

end

end A343510.P12435327822253112297

/-!
# A343511: a(n) = 1 + Sum_{d|n, d < n} a(d)^2.

The programs for A343511, there is no canonical definition to state claims against.
-/

/-! ## A343511.P2348491114765386866

`A341337((A184955(n)+1)*A101296(n+1))`
-/

namespace A343511.P2348491114765386866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341337 ((A184955 n + 1) * A101296 (n + 1)).toNat

end

end A343511.P2348491114765386866

/-! ## A343511.P14271668058642780491

`A341337(A101296(n+1)^A262432(n+1))`
-/

namespace A343511.P14271668058642780491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341337 (SequenceMachineLib.roundAway ((A101296 (n + 1) : ℚ) ^ (A262432 (n + 1) : ℤ))).toNat

end

end A343511.P14271668058642780491

/-! ## A343511.P5570614596562004103

`A341337(A181819(n+1)^A262432(n+1))`
-/

namespace A343511.P5570614596562004103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341337 (SequenceMachineLib.roundAway ((A181819 (n + 1) : ℚ) ^ (A262432 (n + 1) : ℤ))).toNat

end

end A343511.P5570614596562004103

/-! ## A343511.P10940065336367589869

`A341337(A262432(n+1)²*A101296(n+1))`
-/

namespace A343511.P10940065336367589869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341337 (A262432 (n + 1) ^ 2 * A101296 (n + 1)).toNat

end

end A343511.P10940065336367589869

/-! ## A343511.P13261613364782828811

`A341337(A262432(n+1)²*A181819(n+1))`
-/

namespace A343511.P13261613364782828811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341337 (A262432 (n + 1) ^ 2 * A181819 (n + 1)).toNat

end

end A343511.P13261613364782828811

/-!
# A343513: a(n) = Sum_{k=1..n} (k/gcd(n, k))^3.

The programs for A343513, the canonical program `A343513.P14017701848191456005` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343513 has offset 1).

The definition of A343513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343513.P3066380197478974448

`∑{d}[n+1, A053819(#)]`
-/

namespace A343513.P3066380197478974448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053819 d

end

end A343513.P3066380197478974448

namespace A343513

/-- `∑{d}[n+1, A053819(#)]` -/
def P3066380197478974448.Spec : Prop :=
  ∀ n, P3066380197478974448.a n = A343513 (n + 1)

end A343513

/-! ## A343513.P14017701848191456005

`∑{d}[n+1, A000537(#)*A063453((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A343513

/-- `∑{d}[n+1, A000537(#)*A063453((n+1)/#)]` -/
def P14017701848191456005.Spec : Prop :=
  ∀ n, P14017701848191456005.a n = A343513 (n + 1)

theorem P14017701848191456005.correct : P14017701848191456005.Spec := by
  intro n
  simp only [A343513, Nat.add_sub_cancel]

end A343513

/-!
# A343514: a(n) = Sum_{k=1..n} (k/gcd(n, k))^4.

The programs for A343514, there is no canonical definition to state claims against.
-/

/-! ## A343514.P13345950035829208382

`∑{d}[n+1, A053820(#)]`
-/

namespace A343514.P13345950035829208382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053820 d

end

end A343514.P13345950035829208382

/-!
# A343516: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) = Sum_{1 <= x_1 <= x_2 <= ... <= x_k <= n} gcd(x_1, x_2, ... , x_k, n).

The programs for A343516, there is no canonical definition to state claims against.
-/

/-! ## A343516.P378345592803278267

`A366977(A077168(n))`
-/

namespace A343516.P378345592803278267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366977 (A077168 n).toNat

end

end A343516.P378345592803278267

/-! ## A343516.P1695174180494304380

`A366977(A043319(n+1))`
-/

namespace A343516.P1695174180494304380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366977 (A043319 (n + 1)).toNat

end

end A343516.P1695174180494304380

/-! ## A343516.P14328880490247416521

`A366977(A044916(n+1))`
-/

namespace A343516.P14328880490247416521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366977 (A044916 (n + 1)).toNat

end

end A343516.P14328880490247416521

/-! ## A343516.P409672749764389721

`A366977(A055646(n+1))`
-/

namespace A343516.P409672749764389721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366977 (A055646 (n + 1)).toNat

end

end A343516.P409672749764389721

/-! ## A343516.P3974134621316939377

`A366977(A055647(n)+1)`
-/

namespace A343516.P3974134621316939377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366977 (A055647 n + 1).toNat

end

end A343516.P3974134621316939377

/-!
# A343517: a(n) = Sum_{1 <= x_1 <= x_2 <= ... <= x_n <= n} gcd(x_1, x_2, ... , x_n, n).

The programs for A343517, there is no canonical definition to state claims against.
-/

/-! ## A343517.P1236405321913925141

`A343516(∑[4*n]+1)`
-/

namespace A343517.P1236405321913925141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A343517.P1236405321913925141

/-! ## A343517.P7757467561506573890

`record[A343516((n+1)*floor(n/2)+1)]`
-/

namespace A343517.P7757467561506573890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 ((n + 1 : ℤ) * ⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343517.P7757467561506573890

/-! ## A343517.P6696734348473845268

`gcd(A000038(n), A343516(A001844(n)))`
-/

namespace A343517.P6696734348473845268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A343516 (A001844 n).toNat)

end

end A343517.P6696734348473845268

/-! ## A343517.P12706421483894743707

`or(A000007(n), A343516(A001844(n)))`
-/

namespace A343517.P12706421483894743707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A343516 (A001844 n).toNat)

end

end A343517.P12706421483894743707

/-! ## A343517.P10880762940590590497

`A343516(A001844(n))%(6*A020698(n))`
-/

namespace A343517.P10880762940590590497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343516 (A001844 n).toNat) (6 * A020698 n)

end

end A343517.P10880762940590590497

/-! ## A343517.P2664336880113098487

`lcm(-A002380(n+1)%2, A343516(A001844(n)))`
-/

namespace A343517.P2664336880113098487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (-A002380 (n + 1)) 2) (A343516 (A001844 n).toNat)

end

end A343517.P2664336880113098487

/-!
# A343518: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= n} gcd(x_1, x_2, x_3 , x_4, n).

The programs for A343518, the canonical program `A343518.P2640785958522770130` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343518 has offset 1).

The definition of A343518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343518.P2640785958522770130

`∑{d}[n+1, #*A117109((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A343518

/-- `∑{d}[n+1, #*A117109((n+1)/#)]` -/
def P2640785958522770130.Spec : Prop :=
  ∀ n, P2640785958522770130.a n = A343518 (n + 1)

theorem P2640785958522770130.correct : P2640785958522770130.Spec := by
  intro n
  simp only [A343518, Nat.add_sub_cancel]

end A343518

/-! ## A343518.P4791052531263586544

`∑{d}[n+1, A007431(#)*A073570((n+1)/#)]`
-/

namespace A343518.P4791052531263586544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A073570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343518.P4791052531263586544

namespace A343518

/-- `∑{d}[n+1, A007431(#)*A073570((n+1)/#)]` -/
def P4791052531263586544.Spec : Prop :=
  ∀ n, P4791052531263586544.a n = A343518 (n + 1)

end A343518

/-! ## A343518.P5885456913229832814

`∑{d}[n+1, A008683(#)*A343545((n+1)/#)]`
-/

namespace A343518.P5885456913229832814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A343545 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343518.P5885456913229832814

namespace A343518

/-- `∑{d}[n+1, A008683(#)*A343545((n+1)/#)]` -/
def P5885456913229832814.Spec : Prop :=
  ∀ n, P5885456913229832814.a n = A343518 (n + 1)

end A343518

/-! ## A343518.P4921349831760028086

`A343516(∑[n+4]+3)`
-/

namespace A343518.P4921349831760028086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A343518.P4921349831760028086

namespace A343518

/-- `A343516(∑[n+4]+3)` -/
def P4921349831760028086.Spec : Prop :=
  ∀ n, P4921349831760028086.a n = A343518 (n + 1)

end A343518

/-! ## A343518.P14325764425394953264

`A343516(A027379(n+2))%A017047(n)`
-/

namespace A343518.P14325764425394953264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343516 (A027379 (n + 2)).toNat) (A017047 n)

end

end A343518.P14325764425394953264

namespace A343518

/-- `A343516(A027379(n+2))%A017047(n)` -/
def P14325764425394953264.Spec : Prop :=
  ∀ n, P14325764425394953264.a n = A343518 (n + 1)

end A343518

/-! ## A343518.P3985251527289434343

`A343516(A055998(n+2))%A088484(n+1)`
-/

namespace A343518.P3985251527289434343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343516 (A055998 (n + 2)).toNat) (A088484 (n + 1))

end

end A343518.P3985251527289434343

namespace A343518

/-- `A343516(A055998(n+2))%A088484(n+1)` -/
def P3985251527289434343.Spec : Prop :=
  ∀ n, P3985251527289434343.a n = A343518 (n + 1)

end A343518

/-!
# A343519: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= x_5 <= n} gcd(x_1, x_2, x_3 , x_4, x_5, n).

The programs for A343519, the canonical program `A343519.P6978686432379773821` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343519 has offset 1).

The definition of A343519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343519.P6978686432379773821

`∑{d}[n+1, A007431(#)*A101289((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A343519

/-- `∑{d}[n+1, A007431(#)*A101289((n+1)/#)]` -/
def P6978686432379773821.Spec : Prop :=
  ∀ n, P6978686432379773821.a n = A343519 (n + 1)

theorem P6978686432379773821.correct : P6978686432379773821.Spec := by
  intro n
  simp only [A343519, Nat.add_sub_cancel]

end A343519

/-! ## A343519.P17768025102365065786

`∑{d}[n+1, A008683(#)*A343546((n+1)/#)]`
-/

namespace A343519.P17768025102365065786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A343546 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343519.P17768025102365065786

namespace A343519

/-- `∑{d}[n+1, A008683(#)*A343546((n+1)/#)]` -/
def P17768025102365065786.Spec : Prop :=
  ∀ n, P17768025102365065786.a n = A343519 (n + 1)

end A343519

/-! ## A343519.P8522846893741286597

`A343516(∑[n+5]+6)`
-/

namespace A343519.P8522846893741286597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A343519.P8522846893741286597

namespace A343519

/-- `A343516(∑[n+5]+6)` -/
def P8522846893741286597.Spec : Prop :=
  ∀ n, P8522846893741286597.a n = A343519 (n + 1)

end A343519

/-! ## A343519.P3391871196885957178

`gcd(n+1, n+2)*A343516(Δ[A023545(n+1)])`
-/

namespace A343519.P3391871196885957178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (n + 2) : ℤ) * A343516 (f1 (n + 1) - f1 n).toNat

end

end A343519.P3391871196885957178

namespace A343519

/-- `gcd(n+1, n+2)*A343516(Δ[A023545(n+1)])` -/
def P3391871196885957178.Spec : Prop :=
  ∀ n, P3391871196885957178.a n = A343519 (n + 1)

end A343519

/-! ## A343519.P10546909301179247345

`A054977(n+6)*A343516(A056115(n)+11)`
-/

namespace A343519.P10546909301179247345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 6) * A343516 (A056115 n + 11).toNat

end

end A343519.P10546909301179247345

namespace A343519

/-- `A054977(n+6)*A343516(A056115(n)+11)` -/
def P10546909301179247345.Spec : Prop :=
  ∀ n, P10546909301179247345.a n = A343519 (n + 1)

end A343519

/-! ## A343519.P3727284013719835697

`or(A000007(n), A343516(A027379(n+3)-1))`
-/

namespace A343519.P3727284013719835697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A343516 (A027379 (n + 3) - 1).toNat)

end

end A343519.P3727284013719835697

namespace A343519

/-- `or(A000007(n), A343516(A027379(n+3)-1))` -/
def P3727284013719835697.Spec : Prop :=
  ∀ n, P3727284013719835697.a n = A343519 (n + 1)

end A343519

/-! ## A343519.P4785906583515944466

`A343516(A056115(n)+11)%A234712(n+1)`
-/

namespace A343519.P4785906583515944466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343516 (A056115 n + 11).toNat) (A234712 (n + 1))

end

end A343519.P4785906583515944466

namespace A343519

/-- `A343516(A056115(n)+11)%A234712(n+1)` -/
def P4785906583515944466.Spec : Prop :=
  ∀ n, P4785906583515944466.a n = A343519 (n + 1)

end A343519

/-!
# A343520: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= x_5 <= x_6 <= n} gcd(x_1, x_2, x_3 , x_4, x_5, x_6, n).

The programs for A343520, there is no canonical definition to state claims against.
-/

/-! ## A343520.P9781632236182507254

`A343516((n+4)²-∑[n+1]+1)`
-/

namespace A343520.P9781632236182507254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A343520.P9781632236182507254

/-! ## A343520.P6425830561755264458

`record[A343516(A007401(A027379(n)))]`
-/

namespace A343520.P6425830561755264458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A007401 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343520.P6425830561755264458

/-! ## A343520.P8015906308723594345

`record[A343516(A052905(A254667(n)))]`
-/

namespace A343520.P8015906308723594345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A052905 (A254667 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343520.P8015906308723594345

/-! ## A343520.P11811480785999146784

`or(A000007(n), A343516(A052905(n+3)))`
-/

namespace A343520.P11811480785999146784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A343516 (A052905 (n + 3)).toNat)

end

end A343520.P11811480785999146784

/-! ## A343520.P3194206086642544812

`A343516(A052905(n+3))%A111070(n+1)`
-/

namespace A343520.P3194206086642544812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343516 (A052905 (n + 3)).toNat) (A111070 (n + 1))

end

end A343520.P3194206086642544812

/-! ## A343520.P13224497623823797933

`A343516(A055999(n+3)+1)%A291417(n)`
-/

namespace A343520.P13224497623823797933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343516 (A055999 (n + 3) + 1).toNat) (A291417 n)

end

end A343520.P13224497623823797933

/-! ## A343520.P15307306115125826824

`lcm(-A002380(n+1)%2, A343516(A052905(n+3)))`
-/

namespace A343520.P15307306115125826824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (-A002380 (n + 1)) 2) (A343516 (A052905 (n + 3)).toNat)

end

end A343520.P15307306115125826824

/-! ## A343520.P4677687853983146

`A343516(A052905(n+3))%A101386(n)`
-/

namespace A343520.P4677687853983146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343516 (A052905 (n + 3)).toNat) (A101386 n)

end

end A343520.P4677687853983146

/-!
# A343521: a(n) = Sum_{1 <= x_1 <= x_2 <= x_3 <= x_4 <= x_5 <= x_6 <= x_7 <= n} gcd(x_1, x_2, x_3 , x_4, x_5, x_6, x_7, n).

The programs for A343521, there is no canonical definition to state claims against.
-/

/-! ## A343521.P10347142939513639201

`A343516(A055999(n+4))`
-/

namespace A343521.P10347142939513639201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A055999 (n + 4)).toNat

end

end A343521.P10347142939513639201

/-! ## A343521.P6897209019245316089

`A343516(A155212(n+3)+2)`
-/

namespace A343521.P6897209019245316089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A155212 (n + 3) + 2).toNat

end

end A343521.P6897209019245316089

/-! ## A343521.P2030640840204784650

`A343516(A000217(n+7)-6)`
-/

namespace A343521.P2030640840204784650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A000217 (n + 7) - 6).toNat

end

end A343521.P2030640840204784650

/-! ## A343521.P6198945240302682046

`A343516(A000124(n+7)-7)`
-/

namespace A343521.P6198945240302682046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A000124 (n + 7) - 7).toNat

end

end A343521.P6198945240302682046

/-! ## A343521.P10594334892565023767

`record[A343516(A055999(A052938(n)))]`
-/

namespace A343521.P10594334892565023767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A055999 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343521.P10594334892565023767

/-!
# A343522: Lexicographically least strictly increasing sequence such that, for any n > 0, Sum_{k = 1..n} 1/a(k) can be computed without carries in factorial base.

The programs for A343522, there is no canonical definition to state claims against.
-/

/-! ## A343522.P15743072466855092089

`A002266(floor(n^(n+1)/5))+1+n`
-/

namespace A343522.P15743072466855092089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 ⌊(n ^ (n + 1) : ℚ) / 5⌋.toNat + 1 + (n : ℤ)

end

end A343522.P15743072466855092089

/-! ## A343522.P3139366437490686761

`A116533(A348396(n+1))`
-/

namespace A343522.P3139366437490686761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116533 (A348396 (n + 1)).toNat

end

end A343522.P3139366437490686761

/-!
# A343523: a(0) = 1; a(n) = 2 * Sum_{k=1..n} binomial(n,k) * a(k-1).

The programs for A343523, there is no canonical definition to state claims against.
-/

/-! ## A343523.P795788914567758526

`A194920(A011900(n)+n^3+1)`
-/

namespace A343523.P795788914567758526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A011900 n + (n ^ 3 : ℤ) + 1).toNat

end

end A343523.P795788914567758526

/-!
# A343524: Palindromes with digits strictly increasing up to the middle digit.

The programs for A343524, there is no canonical definition to state claims against.
-/

/-! ## A343524.P8458690903746859143

`record[gcd(A002113(n+1), A141033(n+1))]`
-/

namespace A343524.P8458690903746859143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002113 (n + 1)) (A141033 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343524.P8458690903746859143

/-! ## A343524.P2054629221231963370

`A002113(comp[A276655(n+1)-A357295(n+1)])`
-/

namespace A343524.P2054629221231963370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276655 (n + 1) - A357295 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A343524.P2054629221231963370

/-! ## A343524.P12832500461588888585

`A265525(A185246(3*n+1)+A002113(n+1))`
-/

namespace A343524.P12832500461588888585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (A185246 (3 * n + 1) + A002113 (n + 1)).toNat

end

end A343524.P12832500461588888585

/-!
# A343525: If n = Product (p_j^k_j) then a(n) = Product (2*p_j^k_j + 1), with a(1) = 1.

The programs for A343525, there is no canonical definition to state claims against.
-/

/-! ## A343525.P1733380487669587777

`∏{e}[A036879(n+1), A084926(#)]`
-/

namespace A343525.P1733380487669587777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A084926 (Nat.factorization (f1 n).natAbs p)

end

end A343525.P1733380487669587777

/-!
# A343526: Number of divisors of n^7.

The programs for A343526, the canonical program `A343526.P18382350952051363659` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343526 has offset 1).

The definition of A343526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343526.P18382350952051363659

`∏{e}[n+1, 7*#+1]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343526

/-- `∏{e}[n+1, 7*#+1]` -/
def P18382350952051363659.Spec : Prop :=
  ∀ n, (P18382350952051363659.a n : ℤ) = A343526 (n + 1)

theorem P18382350952051363659.correct : P18382350952051363659.Spec := by
  intro n
  simp only [A343526, Nat.add_sub_cancel]

end A343526

/-! ## A343526.P6338769809721106295

`∑{d}[n+1, 7^A001221(#)]`
-/

namespace A343526.P6338769809721106295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (7 : ℚ) ^ (A001221 d : ℤ)

end

end A343526.P6338769809721106295

namespace A343526

/-- `∑{d}[n+1, 7^A001221(#)]` -/
def P6338769809721106295.Spec : Prop :=
  ∀ n, P6338769809721106295.a n = (A343526 (n + 1) : ℚ)

end A343526

/-! ## A343526.P11337493086099609421

`A000027(∏{e}[n+1, A016993(#)])`
-/

namespace A343526.P11337493086099609421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n), A016993 (Nat.factorization (f1 n) p)).toNat

end

end A343526.P11337493086099609421

namespace A343526

/-- `A000027(∏{e}[n+1, A016993(#)])` -/
def P11337493086099609421.Spec : Prop :=
  ∀ n, P11337493086099609421.a n = A343526 (n + 1)

end A343526

/-! ## A343526.P905117515252484681

`∑{d}[n+1, A008683(#)*A359038((n+1)/#)]`
-/

namespace A343526.P905117515252484681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A359038 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343526.P905117515252484681

namespace A343526

/-- `∑{d}[n+1, A008683(#)*A359038((n+1)/#)]` -/
def P905117515252484681.Spec : Prop :=
  ∀ n, P905117515252484681.a n = A343526 (n + 1)

end A343526

/-! ## A343526.P10832951614847951953

`A000007(n+1)+∏{e}[n+1, A016993(#)]`
-/

namespace A343526.P10832951614847951953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), A016993 (Nat.factorization (f1 n) p)

end

end A343526.P10832951614847951953

namespace A343526

/-- `A000007(n+1)+∏{e}[n+1, A016993(#)]` -/
def P10832951614847951953.Spec : Prop :=
  ∀ n, P10832951614847951953.a n = A343526 (n + 1)

end A343526

/-! ## A343526.P13932477712580737736

`A016993(A016002(n+1)-1)`
-/

namespace A343526.P13932477712580737736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A016002 (n + 1) - 1).toNat

end

end A343526.P13932477712580737736

namespace A343526

/-- `A016993(A016002(n+1)-1)` -/
def P13932477712580737736.Spec : Prop :=
  ∀ n, P13932477712580737736.a n = A343526 (n + 1)

end A343526

/-! ## A343526.P17164426660836112462

`A319047(A000217(n))+∏{e}[n+1, A016993(#)]`
-/

namespace A343526.P17164426660836112462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A000217 n).toNat + ∏ p ∈ Nat.primeFactors (f1 n), A016993 (Nat.factorization (f1 n) p)

end

end A343526.P17164426660836112462

namespace A343526

/-- `A319047(A000217(n))+∏{e}[n+1, A016993(#)]` -/
def P17164426660836112462.Spec : Prop :=
  ∀ n, P17164426660836112462.a n = A343526 (n + 1)

end A343526

/-! ## A343526.P17012790261088811963

`∏{e}[n+1, A016993(#)]%A000040(∑[n+5]+16)`
-/

namespace A343526.P17012790261088811963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), A016993 (Nat.factorization (f1 n) p)) (A000040 (∑ j ∈ Finset.range (n + 1), f2 j + 16))

end

end A343526.P17012790261088811963

namespace A343526

/-- `∏{e}[n+1, A016993(#)]%A000040(∑[n+5]+16)` -/
def P17012790261088811963.Spec : Prop :=
  ∀ n, P17012790261088811963.a n = A343526 (n + 1)

end A343526

/-! ## A343526.P1801030307116406647

`A343656(A000217(n+8)-7)`
-/

namespace A343526.P1801030307116406647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 (A000217 (n + 8) - 7).toNat

end

end A343526.P1801030307116406647

namespace A343526

/-- `A343656(A000217(n+8)-7)` -/
def P1801030307116406647.Spec : Prop :=
  ∀ n, P1801030307116406647.a n = A343526 (n + 1)

end A343526

/-!
# A343527: Number of ordered quadruples (w, x, y, z) with gcd(w, x, y, z) = 1 and 1 <= {w, x, y, z} <= 2^n.

The programs for A343527, the canonical program `A343527.P9304533370596222839` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343527 has offset 0).

The definition of A343527 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082540, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343527.P9304533370596222839

`A082540(2^n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A343527

/-- `A082540(2^n)` -/
def P9304533370596222839.Spec : Prop :=
  ∀ n, P9304533370596222839.a n = A343527 n

theorem P9304533370596222839.correct : P9304533370596222839.Spec := by
  intro n
  simp only [A343527]

end A343527

/-! ## A343527.P15170489916157753638

`record[A082540(A029930(n))]`
-/

namespace A343527.P15170489916157753638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082540 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343527.P15170489916157753638

namespace A343527

/-- `record[A082540(A029930(n))]` -/
def P15170489916157753638.Spec : Prop :=
  ∀ n, P15170489916157753638.a n = A343527 n

end A343527

/-! ## A343527.P7976647022922242116

`record[A082540(A055248(n))]`
-/

namespace A343527.P7976647022922242116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082540 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343527.P7976647022922242116

namespace A343527

/-- `record[A082540(A055248(n))]` -/
def P7976647022922242116.Spec : Prop :=
  ∀ n, P7976647022922242116.a n = A343527 n

end A343527

/-! ## A343527.P10830201934725713777

`record[A082540(A059268(n))]`
-/

namespace A343527.P10830201934725713777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082540 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343527.P10830201934725713777

namespace A343527

/-- `record[A082540(A059268(n))]` -/
def P10830201934725713777.Spec : Prop :=
  ∀ n, P10830201934725713777.a n = A343527 n

end A343527

/-! ## A343527.P13272611617067787713

`record[A082540(A068009(n))]`
-/

namespace A343527.P13272611617067787713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082540 (A068009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343527.P13272611617067787713

namespace A343527

/-- `record[A082540(A068009(n))]` -/
def P13272611617067787713.Spec : Prop :=
  ∀ n, P13272611617067787713.a n = A343527 n

end A343527

/-!
# A343528: Number of ways to write n as x^4 + T(y)^2 + T(z) + 2^w, where x,y,z are nonnegative integers, w is a positive integer, and T(m) denotes the triangular number m*(m+1)/2.

The programs for A343528, there is no canonical definition to state claims against.
-/

/-! ## A343528.P12852493411844214393

`A001222(A004713(n+1)*A052806(n))`
-/

namespace A343528.P12852493411844214393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004713 (n + 1) * A052806 n).toNat

end

end A343528.P12852493411844214393

/-! ## A343528.P13546777563501046595

`A007895(A022144(n)*A354300(n+1))`
-/

namespace A343528.P13546777563501046595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A022144 n * A354300 (n + 1)).toNat

end

end A343528.P13546777563501046595

/-!
# A343529: Number of tilings of a 5 X n rectangle using n pentominoes of shapes P, X, Y.

The programs for A343529, there is no canonical definition to state claims against.
-/

/-! ## A343529.P8681715394618357131

`A027187(n)*A227177(A000262(n))`
-/

namespace A343529.P8681715394618357131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n * A227177 (A000262 n).toNat

end

end A343529.P8681715394618357131

/-! ## A343529.P2790286013808311302

`A027187(n)*A238884(A020695(n))`
-/

namespace A343529.P2790286013808311302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 n * A238884 (A020695 n).toNat

end

end A343529.P2790286013808311302

/-!
# A343531: a(n) = Sum_{i=1..n} (prime(i+1)-prime(i))*prime(n+1-i).

The programs for A343531, there is no canonical definition to state claims against.
-/

/-! ## A343531.P14013150165185566419

`A209403(n+1)-A014342(n+1)`
-/

namespace A343531.P14013150165185566419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209403 (n + 1) - A014342 (n + 1)

end

end A343531.P14013150165185566419

/-! ## A343531.P183254307297774290

`A209403(A000027(n+1))%A014342(n+1)`
-/

namespace A343531.P183254307297774290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209403 (A000027 (n + 1)).toNat) (A014342 (n + 1))

end

end A343531.P183254307297774290

/-! ## A343531.P4603723448575160961

`A209403(A028310(n+1))%A014342(n+1)`
-/

namespace A343531.P4603723448575160961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209403 (A028310 (n + 1)).toNat) (A014342 (n + 1))

end

end A343531.P4603723448575160961

/-! ## A343531.P3283274957091181546

`A209403(n+1)-(A025129(n+1)+A024697(n+1))`
-/

namespace A343531.P3283274957091181546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209403 (n + 1) - (A025129 (n + 1) + A024697 (n + 1))

end

end A343531.P3283274957091181546

/-! ## A343531.P4815121547388319863

`A209403(n+1)%A014342((n+1)%A000040(n+1))`
-/

namespace A343531.P4815121547388319863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209403 (n + 1)) (A014342 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat)

end

end A343531.P4815121547388319863

/-! ## A343531.P6051361494251033849

`A067773(n+2)-A100484(n+2)`
-/

namespace A343531.P6051361494251033849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067773 (n + 2) - A100484 (n + 2)

end

end A343531.P6051361494251033849

/-! ## A343531.P17906951134974300578

`Δ[A014342(n+1)-A100484(n+1)]-A100484(n+1)`
-/

namespace A343531.P17906951134974300578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 1) - A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A100484 (n + 1)

end

end A343531.P17906951134974300578

/-! ## A343531.P14444819926222021941

`A014342(n+2)-A023626(n+3)`
-/

namespace A343531.P14444819926222021941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 2) - A023626 (n + 3)

end

end A343531.P14444819926222021941

/-!
# A343532: Primes in A343531.

The programs for A343532, there is no canonical definition to state claims against.
-/

/-! ## A343532.P13620060952415636155

`p?[A343531(n+1)]`
-/

namespace A343532.P13620060952415636155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343532.P13620060952415636155

/-! ## A343532.P4888456485984558435

`p?[or(2, A343531(n-log2(1/2)))]`
-/

namespace A343532.P4888456485984558435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A343531 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343532.P4888456485984558435

/-! ## A343532.P13784278827833601849

`p?[record[A343531(A291769(n))]]`
-/

namespace A343532.P13784278827833601849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343531 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343532.P13784278827833601849

/-! ## A343532.P12268610978507457616

`p?[A067773(n+1)-A100484(n+1)]`
-/

namespace A343532.P12268610978507457616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067773 (n + 1) - A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343532.P12268610978507457616

/-! ## A343532.P10021105312229273601

`p?[A209403(n+1)-A014342(n+1)]`
-/

namespace A343532.P10021105312229273601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209403 (n + 1) - A014342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343532.P10021105312229273601

/-!
# A343533: a(n) is the largest value of k such that binomial(2*m-1, m-1) == 1 (mod m^k) for m = 2*n + 1.

The programs for A343533, there is no canonical definition to state claims against.
-/

/-! ## A343533.P15865026560145085163

`val(A119786(2*(n+1)), 2*n+3)`
-/

namespace A343533.P15865026560145085163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A119786 (2 * (n + 1))).toNat (2 * n + 3)

end

end A343533.P15865026560145085163

/-! ## A343533.P6306862633860106808

`val(A193758(2*n+3), 2*n+3)`
-/

namespace A343533.P6306862633860106808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A193758 (2 * n + 3)).toNat (2 * n + 3)

end

end A343533.P6306862633860106808

/-! ## A343533.P8387958117493427161

`val(A246134(2*n+3), 2*n+3)`
-/

namespace A343533.P8387958117493427161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246134 (2 * n + 3)).toNat (2 * n + 3)

end

end A343533.P8387958117493427161

/-! ## A343533.P944627111168105620

`val(A014495(A004766(n+1)), A144396(n+1))`
-/

namespace A343533.P944627111168105620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014495 (A004766 (n + 1)).toNat).toNat (A144396 (n + 1)).toNat

end

end A343533.P944627111168105620

/-! ## A343533.P11696419971152690017

`C(A158799(n+1), A330950(A318888(2*n+3)))`
-/

namespace A343533.P11696419971152690017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158799 (n + 1)).toNat (A330950 (A318888 (2 * n + 3)).toNat).toNat

end

end A343533.P11696419971152690017

/-!
# A343534: Quotients of successive terms of A343458.

The programs for A343534, there is no canonical definition to state claims against.
-/

/-! ## A343534.P9590074426013998790

`ratio[A343458(n+1)]`
-/

namespace A343534.P9590074426013998790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343458 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A343534.P9590074426013998790

/-! ## A343534.P3121206831600569052

`A343458(n+2)/A343458(n+1)`
-/

namespace A343534.P3121206831600569052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343458 (n + 2) : ℚ) / (A343458 (n + 1) : ℚ)

end

end A343534.P3121206831600569052

/-! ## A343534.P8654945706415251101

`p?[gcd(A181815(n+1), A247451(n+1))]`
-/

namespace A343534.P8654945706415251101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181815 (n + 1)) (A247451 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A343534.P8654945706415251101

/-! ## A343534.P17501497474350195975

`p?[A181820(A101296(A181820(n+1)))]`
-/

namespace A343534.P17501497474350195975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181820 (A101296 (A181820 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343534.P17501497474350195975

/-! ## A343534.P9525211968444719755

`p?[A181819(A181820(n+1))]`
-/

namespace A343534.P9525211968444719755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343534.P9525211968444719755

/-!
# A343535: Number T(n,k) of permutations of [n] having exactly k consecutive triples j, j+1, j-1; triangle T(n,k), n>=0, 0<=k<=floor(n/3), read by rows.

The programs for A343535, there is no canonical definition to state claims against.
-/

/-! ## A343535.P18191360228991472258

`A186766(n)+A186746(A000332(n))`
-/

namespace A343535.P18191360228991472258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186766 n + A186746 (A000332 n).toNat

end

end A343535.P18191360228991472258

/-! ## A343535.P16556096746368853595

`A186766(n)+A033483(A203761(n+1))`
-/

namespace A343535.P16556096746368853595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186766 n + A033483 (A203761 (n + 1)).toNat

end

end A343535.P16556096746368853595

/-! ## A343535.P11246548984548569320

`A186766(n)+A186746(A056996(n+1))`
-/

namespace A343535.P11246548984548569320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186766 n + A186746 (A056996 (n + 1)).toNat

end

end A343535.P11246548984548569320

/-!
# A343537: Number of partitions of the n-th Fibonacci number into a Fibonacci number of Fibonacci parts.

The programs for A343537, there is no canonical definition to state claims against.
-/

/-! ## A343537.P4459114906831402079

`ceil(sqrt(∑[A076020(n+1)]))+1`
-/

namespace A343537.P4459114906831402079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉ + 1

end

end A343537.P4459114906831402079

/-! ## A343537.P11798647550421825152

`A088676(A337462(n))`
-/

namespace A343537.P11798647550421825152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088676 (A337462 n).toNat

end

end A343537.P11798647550421825152

/-! ## A343537.P2419106772376680813

`A309247(A300660(n))`
-/

namespace A343537.P2419106772376680813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309247 (A300660 n).toNat

end

end A343537.P2419106772376680813

/-! ## A343537.P9612853757821033656

`A309247(A394180(n))`
-/

namespace A343537.P9612853757821033656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309247 (A394180 n).toNat

end

end A343537.P9612853757821033656

/-! ## A343537.P16270635360856728122

`A067995(A267574(n+1))`
-/

namespace A343537.P16270635360856728122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067995 (A267574 (n + 1)).toNat

end

end A343537.P16270635360856728122

/-!
# A343539: a(n) = (2*n+1)*Lucas(2*n+1).

The programs for A343539, the canonical program `A343539.P6001638168148591677` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343539 has offset 0).

The definition of A343539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343539.P6001638168148591677

`A146005(2*n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A343539

/-- `A146005(2*n+1)` -/
def P6001638168148591677.Spec : Prop :=
  ∀ n, P6001638168148591677.a n = A343539 n

theorem P6001638168148591677.correct : P6001638168148591677.Spec := by
  intro n
  simp only [A343539]

end A343539

/-! ## A343539.P10265097751740848572

`(2*n+1)*A000032(2*n+1)`
-/

namespace A343539.P10265097751740848572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000032 (2 * n + 1)

end

end A343539.P10265097751740848572

namespace A343539

/-- `(2*n+1)*A000032(2*n+1)` -/
def P10265097751740848572.Spec : Prop :=
  ∀ n, P10265097751740848572.a n = A343539 n

end A343539

/-! ## A343539.P12325650610708959024

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=12, a(2)=55, a(3)=203`
-/

namespace A343539.P12325650610708959024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 55, 203] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A343539.P12325650610708959024

namespace A343539

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P12325650610708959024.Spec : Prop :=
  ∀ n, P12325650610708959024.a n = A343539 n

end A343539

/-! ## A343539.P16579872363807494010

`Δ[floor((ϕ^n)²)]*Δ[n²]`
-/

namespace A343539.P16579872363807494010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A343539.P16579872363807494010

namespace A343539

/-- `Δ[floor((ϕ^n)²)]*Δ[n²]` -/
def P16579872363807494010.Spec : Prop :=
  ∀ n, P16579872363807494010.a n = A343539 n

end A343539

/-! ## A343539.P11647498908142153180

`A128439(Δ[n²])`
-/

namespace A343539.P11647498908142153180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128439 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A343539.P11647498908142153180

namespace A343539

/-- `A128439(Δ[n²])` -/
def P11647498908142153180.Spec : Prop :=
  ∀ n, P11647498908142153180.a n = A343539 n

end A343539

/-! ## A343539.P7254412405466052999

`A182614(Δ[n²])-1`
-/

namespace A343539.P7254412405466052999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182614 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A343539.P7254412405466052999

namespace A343539

/-- `A182614(Δ[n²])-1` -/
def P7254412405466052999.Spec : Prop :=
  ∀ n, P7254412405466052999.a n = A343539 n

end A343539

/-! ## A343539.P4347393404731277187

`record[(n+1)*A075193(n)]`
-/

namespace A343539.P4347393404731277187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343539.P4347393404731277187

namespace A343539

/-- `record[(n+1)*A075193(n)]` -/
def P4347393404731277187.Spec : Prop :=
  ∀ n, P4347393404731277187.a n = A343539 n

end A343539

/-! ## A343539.P14024912865710261339

`record[(1-n)*A061084(n)]`
-/

namespace A343539.P14024912865710261339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A061084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343539.P14024912865710261339

namespace A343539

/-- `record[(1-n)*A061084(n)]` -/
def P14024912865710261339.Spec : Prop :=
  ∀ n, P14024912865710261339.a n = A343539 n

end A343539

/-! ## A343539.P5924274912329311380

`record[xor(1, n)*A000032(xor(1, n))]`
-/

namespace A343539.P5924274912329311380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) * A000032 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343539.P5924274912329311380

namespace A343539

/-- `record[xor(1, n)*A000032(xor(1, n))]` -/
def P5924274912329311380.Spec : Prop :=
  ∀ n, P5924274912329311380.a n = A343539 n

end A343539

/-! ## A343539.P15586451008620614378

`lcm(2*n+1, A128439(2*n+1))`
-/

namespace A343539.P15586451008620614378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A128439 (2 * n + 1))

end

end A343539.P15586451008620614378

namespace A343539

/-- `lcm(2*n+1, A128439(2*n+1))` -/
def P15586451008620614378.Spec : Prop :=
  ∀ n, (P15586451008620614378.a n : ℤ) = A343539 n

end A343539

/-! ## A343539.P5453792279413007017

`A167478(n)+A121255(n+1)`
-/

namespace A343539.P5453792279413007017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167478 n + A121255 (n + 1)

end

end A343539.P5453792279413007017

namespace A343539

/-- `A167478(n)+A121255(n+1)` -/
def P5453792279413007017.Spec : Prop :=
  ∀ n, P5453792279413007017.a n = A343539 n

end A343539

/-! ## A343539.P15660346258632634773

`record[A000032(n+1)*A174239(n)]`
-/

namespace A343539.P15660346258632634773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A174239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343539.P15660346258632634773

namespace A343539

/-- `record[A000032(n+1)*A174239(n)]` -/
def P15660346258632634773.Spec : Prop :=
  ∀ n, P15660346258632634773.a n = A343539 n

end A343539

/-! ## A343539.P6087876091454550834

`A099920(2*n)+A023607(2*n+1)`
-/

namespace A343539.P6087876091454550834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 (2 * n) + A023607 (2 * n + 1)

end

end A343539.P6087876091454550834

namespace A343539

/-- `A099920(2*n)+A023607(2*n+1)` -/
def P6087876091454550834.Spec : Prop :=
  ∀ n, P6087876091454550834.a n = A343539 n

end A343539

/-! ## A343539.P6945043005189774026

`A264147(2*n+3)+A045925(2*n)`
-/

namespace A343539.P6945043005189774026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264147 (2 * n + 3) + A045925 (2 * n)

end

end A343539.P6945043005189774026

namespace A343539

/-- `A264147(2*n+3)+A045925(2*n)` -/
def P6945043005189774026.Spec : Prop :=
  ∀ n, P6945043005189774026.a n = A343539 n

end A343539

/-! ## A343539.P6011597855477053270

`A178521(2*n+1)+A094588(2*n+1)`
-/

namespace A343539.P6011597855477053270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 (2 * n + 1) + A094588 (2 * n + 1)

end

end A343539.P6011597855477053270

namespace A343539

/-- `A178521(2*n+1)+A094588(2*n+1)` -/
def P6011597855477053270.Spec : Prop :=
  ∀ n, P6011597855477053270.a n = A343539 n

end A343539

/-! ## A343539.P8171126747723665723

`A354044(2*n+1)+A264147(2*n+1)`
-/

namespace A343539.P8171126747723665723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 (2 * n + 1) + A264147 (2 * n + 1)

end

end A343539.P8171126747723665723

namespace A343539

/-- `A354044(2*n+1)+A264147(2*n+1)` -/
def P8171126747723665723.Spec : Prop :=
  ∀ n, P8171126747723665723.a n = A343539 n

end A343539

/-! ## A343539.P7942339170063273902

`A258321(2*n+1)-A000045(2*n+1)`
-/

namespace A343539.P7942339170063273902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 (2 * n + 1) - A000045 (2 * n + 1)

end

end A343539.P7942339170063273902

namespace A343539

/-- `A258321(2*n+1)-A000045(2*n+1)` -/
def P7942339170063273902.Spec : Prop :=
  ∀ n, P7942339170063273902.a n = A343539 n

end A343539

/-! ## A343539.P5941774732739192648

`A045925(2*n+1)+2*A099920(2*n)`
-/

namespace A343539.P5941774732739192648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (2 * n + 1) + 2 * A099920 (2 * n)

end

end A343539.P5941774732739192648

namespace A343539

/-- `A045925(2*n+1)+2*A099920(2*n)` -/
def P5941774732739192648.Spec : Prop :=
  ∀ n, P5941774732739192648.a n = A343539 n

end A343539

/-! ## A343539.P16411215716627743783

`A002878(n)*A004277(n+1)-A002878(n)`
-/

namespace A343539.P16411215716627743783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n * A004277 (n + 1) - A002878 n

end

end A343539.P16411215716627743783

namespace A343539

/-- `A002878(n)*A004277(n+1)-A002878(n)` -/
def P16411215716627743783.Spec : Prop :=
  ∀ n, P16411215716627743783.a n = A343539 n

end A343539

/-! ## A343539.P16745608408426166144

`∩[A128439(n+1), A146005(n)]`
-/

namespace A343539.P16745608408426166144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343539.P16745608408426166144

namespace A343539

/-- `∩[A128439(n+1), A146005(n)]` -/
def P16745608408426166144.Spec : Prop :=
  ∀ n, (P16745608408426166144.a n : ℤ) = A343539 n

end A343539

/-!
# A343541: For n > 1, a(n) is the largest base b <= prime(n)-1 such that the digits of prime(n)-1 in base b contain the digit b-1.

The programs for A343541, there is no canonical definition to state claims against.
-/

/-! ## A343541.P5407668322553077161

`A338295(A006093(n+2))`
-/

namespace A343541.P5407668322553077161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (A006093 (n + 2)).toNat

end

end A343541.P5407668322553077161

/-! ## A343541.P12596205139813961998

`A338295(A039915(n+2))`
-/

namespace A343541.P12596205139813961998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (A039915 (n + 2)).toNat

end

end A343541.P12596205139813961998

/-! ## A343541.P9910051036340242656

`A338295(record[A000010(n+3)])`
-/

namespace A343541.P9910051036340242656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343541.P9910051036340242656

/-! ## A343541.P5268410556483984280

`A338295(record[A002322(n+3)])`
-/

namespace A343541.P5268410556483984280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343541.P5268410556483984280

/-! ## A343541.P5228543208830347123

`A338295(p?[A004273(n)]-1)`
-/

namespace A343541.P5228543208830347123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A343541.P5228543208830347123

/-! ## A343541.P3978982455879835396

`A338295(A000040(n+2)-1)`
-/

namespace A343541.P3978982455879835396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (A000040 (n + 2) - 1).toNat

end

end A343541.P3978982455879835396

/-! ## A343541.P13822693691085423622

`A338295(2*A005097(n+1))`
-/

namespace A343541.P13822693691085423622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (2 * A005097 (n + 1)).toNat

end

end A343541.P13822693691085423622

/-! ## A343541.P10815592175338354394

`A338295(∑[A001223(n+1)]+1)`
-/

namespace A343541.P10815592175338354394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A343541.P10815592175338354394

/-! ## A343541.P11268096950535464667

`A338295(record[and(-2, A014963(n+2))])`
-/

namespace A343541.P11268096950535464667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A014963 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343541.P11268096950535464667

/-! ## A343541.P13065500550961578256

`A338295(eq[1-a(n-1), A001222(n+1)])` with `a(0)=1`
-/

namespace A343541.P13065500550961578256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343541.P13065500550961578256

/-!
# A343542: Number of ways to partition n labeled elements into sets of different sizes of at least 5.

The programs for A343542, there is no canonical definition to state claims against.
-/

/-! ## A343542.P6720736236279947142

`A057814(n)^(n%10)^n`
-/

namespace A343542.P6720736236279947142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057814 n ^ (n % 10) ^ n

end

end A343542.P6720736236279947142

/-! ## A343542.P3056412213281769818

`A057814(A020485(n))`
-/

namespace A343542.P3056412213281769818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057814 (A020485 n).toNat

end

end A343542.P3056412213281769818

/-! ## A343542.P8310341308477106403

`A057814(n*A050782(n))`
-/

namespace A343542.P8310341308477106403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057814 ((n : ℤ) * A050782 n).toNat

end

end A343542.P8310341308477106403

/-! ## A343542.P8828583265801621732

`A057814(lcm(n, A265525(n)))`
-/

namespace A343542.P8828583265801621732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057814 (Int.lcm (n : ℤ) (A265525 n))

end

end A343542.P8828583265801621732

/-! ## A343542.P11408108955560694369

`A293025(A080412(n)+a(n-1))` with `a(0)=1`
-/

namespace A343542.P11408108955560694369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293025 (A080412 n + a (n - 1)).toNat

end

end A343542.P11408108955560694369

/-!
# A343543: a(n) = n*Lucas(2*n).

The programs for A343543, the canonical program `A343543.P7072821149980665290` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343543 has offset 0).

The definition of A343543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343543.P7072821149980665290

`n*A005248(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A343543

/-- `n*A005248(n)` -/
def P7072821149980665290.Spec : Prop :=
  ∀ n, P7072821149980665290.a n = A343543 n

theorem P7072821149980665290.correct : P7072821149980665290.Spec := by
  intro n
  simp only [A343543]

end A343543

/-! ## A343543.P8614604845327399283

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=14, a(3)=54`
-/

namespace A343543.P8614604845327399283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 14, 54] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A343543.P8614604845327399283

namespace A343543

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P8614604845327399283.Spec : Prop :=
  ∀ n, P8614604845327399283.a n = A343543 n

end A343543

/-! ## A343543.P14640429694018667312

`ceil(n*(ϕ^n)²)`
-/

namespace A343543.P14640429694018667312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.goldenRatio ^ n) ^ 2⌉

end

end A343543.P14640429694018667312

namespace A343543

/-- `ceil(n*(ϕ^n)²)` -/
def P14640429694018667312.Spec : Prop :=
  ∀ n, P14640429694018667312.a n = A343543 n

end A343543

/-! ## A343543.P6657008638233936734

`lcm(n, round(n*ϕ^(2*n)))`
-/

namespace A343543.P6657008638233936734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ (2 * n)))

end

end A343543.P6657008638233936734

namespace A343543

/-- `lcm(n, round(n*ϕ^(2*n)))` -/
def P6657008638233936734.Spec : Prop :=
  ∀ n, (P6657008638233936734.a n : ℤ) = A343543 n

end A343543

/-! ## A343543.P14922581212648070232

`n*floor(record[(-ϕ)^n+1])`
-/

namespace A343543.P14922581212648070232
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.goldenRatio) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A343543.P14922581212648070232

namespace A343543

/-- `n*floor(record[(-ϕ)^n+1])` -/
def P14922581212648070232.Spec : Prop :=
  ∀ n, P14922581212648070232.a n = A343543 n

end A343543

/-! ## A343543.P12578247270572758077

`n*ceil(ϕ^floor(2/acot(n)))`
-/

namespace A343543.P12578247270572758077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.goldenRatio ^ (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ)⌉

end

end A343543.P12578247270572758077

namespace A343543

/-- `n*ceil(ϕ^floor(2/acot(n)))` -/
def P12578247270572758077.Spec : Prop :=
  ∀ n, P12578247270572758077.a n = A343543 n

end A343543

/-! ## A343543.P16719956345793907187

`n*round(ϕ^floor(2/acot(n)))`
-/

namespace A343543.P16719956345793907187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℤ))

end

end A343543.P16719956345793907187

namespace A343543

/-- `n*round(ϕ^floor(2/acot(n)))` -/
def P16719956345793907187.Spec : Prop :=
  ∀ n, P16719956345793907187.a n = A343543 n

end A343543

/-! ## A343543.P8408403856965038593

`n*record[3*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=3, a(2)=2`
-/

namespace A343543.P8408403856965038593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343543.P8408403856965038593

namespace A343543

/-- `n*record[3*a(n-1)-a(n-2)]` -/
def P8408403856965038593.Spec : Prop :=
  ∀ n, P8408403856965038593.a n = A343543 n

end A343543

/-! ## A343543.P10860047437051977272

`floor(ϕ²*a(n-1))+floor((ϕ^n)²)+1` with `a(0)=0`
-/

namespace A343543.P10860047437051977272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋ + (⌊(Real.goldenRatio ^ n) ^ 2⌋ + 1)

end

end A343543.P10860047437051977272

namespace A343543

/-- `floor(ϕ²*a(n-1))+floor((ϕ^n)²)+1` -/
def P10860047437051977272.Spec : Prop :=
  ∀ n, P10860047437051977272.a n = A343543 n

end A343543

/-! ## A343543.P12029231984392476186

`abs(n*A219233(n))`
-/

namespace A343543.P12029231984392476186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A219233 n|

end

end A343543.P12029231984392476186

namespace A343543

/-- `abs(n*A219233(n))` -/
def P12029231984392476186.Spec : Prop :=
  ∀ n, P12029231984392476186.a n = A343543 n

end A343543

/-! ## A343543.P11865981687293939446

`n*record[A005247(n)]`
-/

namespace A343543.P11865981687293939446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343543.P11865981687293939446

namespace A343543

/-- `n*record[A005247(n)]` -/
def P11865981687293939446.Spec : Prop :=
  ∀ n, P11865981687293939446.a n = A343543 n

end A343543

/-! ## A343543.P1093112671561962306

`n*(A005592(n)+1)`
-/

namespace A343543.P1093112671561962306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A005592 n + 1)

end

end A343543.P1093112671561962306

namespace A343543

/-- `n*(A005592(n)+1)` -/
def P1093112671561962306.Spec : Prop :=
  ∀ n, P1093112671561962306.a n = A343543 n

end A343543

/-! ## A343543.P11822683903326291394

`n*(A004146(n)+2)`
-/

namespace A343543.P11822683903326291394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A004146 n + 2)

end

end A343543.P11822683903326291394

namespace A343543

/-- `n*(A004146(n)+2)` -/
def P11822683903326291394.Spec : Prop :=
  ∀ n, P11822683903326291394.a n = A343543 n

end A343543

/-! ## A343543.P9758837034173184823

`n*(A065034(n)-1)`
-/

namespace A343543.P9758837034173184823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A065034 n - 1)

end

end A343543.P9758837034173184823

namespace A343543

/-- `n*(A065034(n)-1)` -/
def P9758837034173184823.Spec : Prop :=
  ∀ n, P9758837034173184823.a n = A343543 n

end A343543

/-! ## A343543.P2451634462232879947

`n*(A092387(n)-2)`
-/

namespace A343543.P2451634462232879947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A092387 n - 2)

end

end A343543.P2451634462232879947

namespace A343543

/-- `n*(A092387(n)-2)` -/
def P2451634462232879947.Spec : Prop :=
  ∀ n, P2451634462232879947.a n = A343543 n

end A343543

/-! ## A343543.P7877238282539959928

`n*A000032(2*n)`
-/

namespace A343543.P7877238282539959928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000032 (2 * n)

end

end A343543.P7877238282539959928

namespace A343543

/-- `n*A000032(2*n)` -/
def P7877238282539959928.Spec : Prop :=
  ∀ n, P7877238282539959928.a n = A343543 n

end A343543

/-! ## A343543.P810849981511899523

`n*A005247(2*n)`
-/

namespace A343543.P810849981511899523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005247 (2 * n)

end

end A343543.P810849981511899523

namespace A343543

/-- `n*A005247(2*n)` -/
def P810849981511899523.Spec : Prop :=
  ∀ n, P810849981511899523.a n = A343543 n

end A343543

/-! ## A343543.P14932793332528386309

`n*A020878(2*n)`
-/

namespace A343543.P14932793332528386309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020878 (2 * n)

end

end A343543.P14932793332528386309

namespace A343543

/-- `n*A020878(2*n)` -/
def P14932793332528386309.Spec : Prop :=
  ∀ n, P14932793332528386309.a n = A343543 n

end A343543

/-! ## A343543.P10456215132383143796

`n*A062724(2*n)`
-/

namespace A343543.P10456215132383143796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062724 (2 * n)

end

end A343543.P10456215132383143796

namespace A343543

/-- `n*A062724(2*n)` -/
def P10456215132383143796.Spec : Prop :=
  ∀ n, P10456215132383143796.a n = A343543 n

end A343543

/-! ## A343543.P7343223834197701240

`n*A169985(2*n)`
-/

namespace A343543.P7343223834197701240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A169985 (2 * n)

end

end A343543.P7343223834197701240

namespace A343543

/-- `n*A169985(2*n)` -/
def P7343223834197701240.Spec : Prop :=
  ∀ n, P7343223834197701240.a n = A343543 n

end A343543

/-!
# A343544: a(n) = n * Sum_{d|n} binomial(d+2,3)/d.

The programs for A343544, the canonical program `A343544.P4992491039795411228` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343544 has offset 1).

The definition of A343544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343544.P4992491039795411228

`∑{d}[n+1, A309323(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A343544

/-- `∑{d}[n+1, A309323(#)]` -/
def P4992491039795411228.Spec : Prop :=
  ∀ n, P4992491039795411228.a n = A343544 (n + 1)

theorem P4992491039795411228.correct : P4992491039795411228.Spec := by
  intro n
  simp only [A343544, Nat.add_sub_cancel]

end A343544

/-! ## A343544.P17768689338980314409

`(n+1)/3*A363628(n+1)`
-/

namespace A343544.P17768689338980314409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A363628 (n + 1) : ℚ)

end

end A343544.P17768689338980314409

namespace A343544

/-- `(n+1)/3*A363628(n+1)` -/
def P17768689338980314409.Spec : Prop :=
  ∀ n, P17768689338980314409.a n = (A343544 (n + 1) : ℚ)

end A343544

/-! ## A343544.P1416498517748057904

`(n+1)*∑{d}[n+1, A000292(#)/#]`
-/

namespace A343544.P1416498517748057904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (A000292 d : ℚ) / (d : ℚ))

end

end A343544.P1416498517748057904

namespace A343544

/-- `(n+1)*∑{d}[n+1, A000292(#)/#]` -/
def P1416498517748057904.Spec : Prop :=
  ∀ n, P1416498517748057904.a n = (A343544 (n + 1) : ℚ)

end A343544

/-! ## A343544.P324746881655197807

`∑{d}[n+1, A000203(#)*A117108((n+1)/#)]`
-/

namespace A343544.P324746881655197807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A117108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343544.P324746881655197807

namespace A343544

/-- `∑{d}[n+1, A000203(#)*A117108((n+1)/#)]` -/
def P324746881655197807.Spec : Prop :=
  ∀ n, P324746881655197807.a n = A343544 (n + 1)

end A343544

/-! ## A343544.P8398708510651529126

`∑{d}[n+1, A162728(#)*A366813((n+1)/#)]`
-/

namespace A343544.P8398708510651529126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A366813 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343544.P8398708510651529126

namespace A343544

/-- `∑{d}[n+1, A162728(#)*A366813((n+1)/#)]` -/
def P8398708510651529126.Spec : Prop :=
  ∀ n, P8398708510651529126.a n = A343544 (n + 1)

end A343544

/-! ## A343544.P756637811671665064

`∑{d}[n+1, A000010(#)*A059358((n+1)/#)]`
-/

namespace A343544.P756637811671665064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A059358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343544.P756637811671665064

namespace A343544

/-- `∑{d}[n+1, A000010(#)*A059358((n+1)/#)]` -/
def P756637811671665064.Spec : Prop :=
  ∀ n, P756637811671665064.a n = A343544 (n + 1)

end A343544

/-!
# A343545: a(n) = n * Sum_{d|n} binomial(d+3,4)/d.

The programs for A343545, the canonical program `A343545.P1905212227913174461` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343545 has offset 1).

The definition of A343545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343545.P1905212227913174461

`∑{d}[n+1, A343518(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A343545

/-- `∑{d}[n+1, A343518(#)]` -/
def P1905212227913174461.Spec : Prop :=
  ∀ n, P1905212227913174461.a n = A343545 (n + 1)

theorem P1905212227913174461.correct : P1905212227913174461.Spec := by
  intro n
  simp only [A343545, Nat.add_sub_cancel]

end A343545

/-! ## A343545.P13562376066409757291

`(n+1)/4*A116963(n+1)`
-/

namespace A343545.P13562376066409757291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A116963 (n + 1) : ℚ)

end

end A343545.P13562376066409757291

namespace A343545

/-- `(n+1)/4*A116963(n+1)` -/
def P13562376066409757291.Spec : Prop :=
  ∀ n, P13562376066409757291.a n = (A343545 (n + 1) : ℚ)

end A343545

/-! ## A343545.P6710855683222306984

`∑{d}[n+1, A000010(#)*A073570((n+1)/#)]`
-/

namespace A343545.P6710855683222306984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A073570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343545.P6710855683222306984

namespace A343545

/-- `∑{d}[n+1, A000010(#)*A073570((n+1)/#)]` -/
def P6710855683222306984.Spec : Prop :=
  ∀ n, P6710855683222306984.a n = A343545 (n + 1)

end A343545

/-! ## A343545.P18213336575303709800

`∑{d}[n+1, A000203(#)*A117109((n+1)/#)]`
-/

namespace A343545.P18213336575303709800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A117109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343545.P18213336575303709800

namespace A343545

/-- `∑{d}[n+1, A000203(#)*A117109((n+1)/#)]` -/
def P18213336575303709800.Spec : Prop :=
  ∀ n, P18213336575303709800.a n = A343545 (n + 1)

end A343545

/-! ## A343545.P6084958551416394675

`∑{d}[n+1, A162728(#)*A366814((n+1)/#)]`
-/

namespace A343545.P6084958551416394675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A366814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343545.P6084958551416394675

namespace A343545

/-- `∑{d}[n+1, A162728(#)*A366814((n+1)/#)]` -/
def P6084958551416394675.Spec : Prop :=
  ∀ n, P6084958551416394675.a n = A343545 (n + 1)

end A343545

/-!
# A343546: a(n) = n * Sum_{d|n} binomial(d+4,5)/d.

The programs for A343546, the canonical program `A343546.P8528518254788271096` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343546 has offset 1).

The definition of A343546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343546.P8528518254788271096

`∑{d}[n+1, A343519(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A343546

/-- `∑{d}[n+1, A343519(#)]` -/
def P8528518254788271096.Spec : Prop :=
  ∀ n, P8528518254788271096.a n = A343546 (n + 1)

theorem P8528518254788271096.correct : P8528518254788271096.Spec := by
  intro n
  simp only [A343546, Nat.add_sub_cancel]

end A343546

/-! ## A343546.P10900317007628283663

`(n+1)/5*A363695(n+1)`
-/

namespace A343546.P10900317007628283663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 5 * (A363695 (n + 1) : ℚ)

end

end A343546.P10900317007628283663

namespace A343546

/-- `(n+1)/5*A363695(n+1)` -/
def P10900317007628283663.Spec : Prop :=
  ∀ n, P10900317007628283663.a n = (A343546 (n + 1) : ℚ)

end A343546

/-! ## A343546.P14321681340056078234

`∑{d}[n+1, A000010(#)*A101289((n+1)/#)]`
-/

namespace A343546.P14321681340056078234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A101289 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A343546.P14321681340056078234

namespace A343546

/-- `∑{d}[n+1, A000010(#)*A101289((n+1)/#)]` -/
def P14321681340056078234.Spec : Prop :=
  ∀ n, P14321681340056078234.a n = A343546 (n + 1)

end A343546

/-!
# A343547: a(n) = n * Sum_{d|n} binomial(d+n-2,n-1)/d.

The programs for A343547, there is no canonical definition to state claims against.
-/

/-! ## A343547.P8917341268068681435

`(n+1)*A163253(A285543(n))`
-/

namespace A343547.P8917341268068681435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A163253 (A285543 n).toNat

end

end A343547.P8917341268068681435

/-! ## A343547.P15629353471347466945

`∑[record[A116528(A202864(n+1))]]`
-/

namespace A343547.P15629353471347466945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116528 (A202864 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343547.P15629353471347466945

/-!
# A343548: a(n) = Sum_{d|n} binomial(d+n-1,n).

The programs for A343548, the canonical program `A343548.P9534885985080553477` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343548 has offset 1).

The definition of A343548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343548.P7640349538962295193

`A363660(n+1)-A343549(n+1)`
-/

namespace A343548.P7640349538962295193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363660 (n + 1) - A343549 (n + 1)

end

end A343548.P7640349538962295193

namespace A343548

/-- `A363660(n+1)-A343549(n+1)` -/
def P7640349538962295193.Spec : Prop :=
  ∀ n, P7640349538962295193.a n = A343548 (n + 1)

end A343548

/-! ## A343548.P9534885985080553477

`∑{d}[n+1, C(#+n, n+1)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343548

/-- `∑{d}[n+1, C(#+n, n+1)]` -/
def P9534885985080553477.Spec : Prop :=
  ∀ n, (P9534885985080553477.a n : ℤ) = A343548 (n + 1)

theorem P9534885985080553477.correct : P9534885985080553477.Spec := by
  intro n
  simp only [A343548, Nat.add_sub_cancel]

end A343548

/-! ## A343548.P14330966373010136448

`∑{d}[n+1, A007318(A000217(#+n)+n+1)]`
-/

namespace A343548.P14330966373010136448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A000217 (d + n) + (n + 1 : ℤ)).toNat

end

end A343548.P14330966373010136448

namespace A343548

/-- `∑{d}[n+1, A007318(A000217(#+n)+n+1)]` -/
def P14330966373010136448.Spec : Prop :=
  ∀ n, P14330966373010136448.a n = A343548 (n + 1)

end A343548

/-!
# A343549: a(n) = n * Sum_{d|n} binomial(d+n-1,n)/d.

The programs for A343549, the canonical program `A343549.P6053430686523485075` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343549 has offset 1).

The definition of A343549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343549.P15191965474350058152

`A363660(n+1)-A343548(n+1)`
-/

namespace A343549.P15191965474350058152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363660 (n + 1) - A343548 (n + 1)

end

end A343549.P15191965474350058152

namespace A343549

/-- `A363660(n+1)-A343548(n+1)` -/
def P15191965474350058152.Spec : Prop :=
  ∀ n, P15191965474350058152.a n = A343549 (n + 1)

end A343549

/-! ## A343549.P6053430686523485075

`∑{d}[n+1, C(#+n, n)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343549

/-- `∑{d}[n+1, C(#+n, n)]` -/
def P6053430686523485075.Spec : Prop :=
  ∀ n, (P6053430686523485075.a n : ℤ) = A343549 (n + 1)

theorem P6053430686523485075.correct : P6053430686523485075.Spec := by
  intro n
  simp only [A343549, Nat.add_sub_cancel]

end A343549

/-! ## A343549.P5662654717881249326

`∑{d}[n+1, A007318(A000217(#+n)+n)]`
-/

namespace A343549.P5662654717881249326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A000217 (d + n) + (n : ℤ)).toNat

end

end A343549.P5662654717881249326

namespace A343549

/-- `∑{d}[n+1, A007318(A000217(#+n)+n)]` -/
def P5662654717881249326.Spec : Prop :=
  ∀ n, P5662654717881249326.a n = A343549 (n + 1)

end A343549

/-!
# A343550: Numbers k > 9 such that the number m formed by inserting a digit 0 between each pair of digits in k is divisible by k.

The programs for A343550, there is no canonical definition to state claims against.
-/

/-! ## A343550.P146572532091864808

`A343552(n+1)/A343551(n+1)`
-/

namespace A343550.P146572532091864808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343552 (n + 1) : ℚ) / (A343551 (n + 1) : ℚ)

end

end A343550.P146572532091864808

/-!
# A343551: Numbers m/k where the number m is formed by inserting a digit 0 between each pair of digits in k, and m is divisible by k.

The programs for A343551, there is no canonical definition to state claims against.
-/

/-! ## A343551.P11741710180748959476

`A343552(n+1)/A343550(n+1)`
-/

namespace A343551.P11741710180748959476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343552 (n + 1) : ℚ) / (A343550 (n + 1) : ℚ)

end

end A343551.P11741710180748959476

/-! ## A343551.P17291136633654056656

`A039723(A343552(n+1))/A285176(n+1)`
-/

namespace A343551.P17291136633654056656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039723 (A343552 (n + 1)).toNat : ℚ) / (A285176 (n + 1) : ℚ)

end

end A343551.P17291136633654056656

/-! ## A343551.P13817598576621285064

`A343552(A043318(n+1))/A285176(n+1)`
-/

namespace A343551.P13817598576621285064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343552 (A043318 (n + 1)).toNat : ℚ) / (A285176 (n + 1) : ℚ)

end

end A343551.P13817598576621285064

/-! ## A343551.P2675677755534080972

`A343552(A044915(n+1))/A285176(n+1)`
-/

namespace A343551.P2675677755534080972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343552 (A044915 (n + 1)).toNat : ℚ) / (A285176 (n + 1) : ℚ)

end

end A343551.P2675677755534080972

/-!
# A343552: Numbers m such that for some number k dividing n, m is formed by inserting a digit 0 between each pair of digits of k.

The programs for A343552, there is no canonical definition to state claims against.
-/

/-! ## A343552.P12587191862504548813

`A051022(A343550(n+1))`
-/

namespace A343552.P12587191862504548813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A343550 (n + 1)).toNat

end

end A343552.P12587191862504548813

/-! ## A343552.P17126796187182648168

`A343550(n+1)*A343551(n+1)`
-/

namespace A343552.P17126796187182648168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343550 (n + 1) * A343551 (n + 1)

end

end A343552.P17126796187182648168

/-! ## A343552.P7832942368411101333

`A338754(A343550(n+1))/A338754(A239700(n+1))`
-/

namespace A343552.P7832942368411101333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338754 (A343550 (n + 1)).toNat : ℚ) / (A338754 (A239700 (n + 1)).toNat : ℚ)

end

end A343552.P7832942368411101333

/-! ## A343552.P13552037507853077810

`∩[A327709(n+1), A051022(n)]`
-/

namespace A343552.P13552037507853077810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343552.P13552037507853077810

/-!
# A343553: a(n) = Sum_{1 <= x_1 <= x_2 <= ... <= x_n = n} gcd(x_1, x_2, ... , x_n).

The programs for A343553, there is no canonical definition to state claims against.
-/

/-! ## A343553.P9288514090774671976

`A343516(2*n²+1)`
-/

namespace A343553.P9288514090774671976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (2 * n ^ 2 + 1)

end

end A343553.P9288514090774671976

/-! ## A343553.P6107951565878185039

`record[A343516(n*floor(n/2)+1)]`
-/

namespace A343553.P6107951565878185039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 ((n : ℤ) * ⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343553.P6107951565878185039

/-! ## A343553.P226127001428012542

`A343516(A058331(n))+and(1, 2*n)`
-/

namespace A343553.P226127001428012542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A058331 n).toNat + (Nat.land 1 (2 * n) : ℤ)

end

end A343553.P226127001428012542

/-! ## A343553.P4599687450769056063

`A343516(A058331(n))+A000035(2*n)`
-/

namespace A343553.P4599687450769056063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A058331 n).toNat + A000035 (2 * n)

end

end A343553.P4599687450769056063

/-! ## A343553.P4999378046987879762

`A307855(C(2, n))*A343516(A058331(n))`
-/

namespace A343553.P4999378046987879762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307855 (Nat.choose 2 n) * A343516 (A058331 n).toNat

end

end A343553.P4999378046987879762

/-! ## A343553.P798484841869168042

`∑{e}[A000040(n+1), #*A343516(A058331(n))]`
-/

namespace A343553.P798484841869168042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A343516 (A058331 n).toNat

end

end A343553.P798484841869168042

/-! ## A343553.P5809061425481979153

`A343516(A058331(n))+A028275(C(2, n²))-1`
-/

namespace A343553.P5809061425481979153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343516 (A058331 n).toNat + A028275 (Nat.choose 2 (n ^ 2)) - 1

end

end A343553.P5809061425481979153

/-! ## A343553.P1188734881418896407

`A343516(A058331(n))^A014963(A293752(n+1))`
-/

namespace A343553.P1188734881418896407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343516 (A058331 n).toNat : ℚ) ^ (A014963 (A293752 (n + 1)).toNat : ℤ)

end

end A343553.P1188734881418896407

/-!
# A343554: a(1) = 0. For n >= 1, if there exists i < j < n such that a(i) = a(j) = a(n), take the largest such i and set a(n+1) = n-i; otherwise a(n+1) = 0.

The programs for A343554, there is no canonical definition to state claims against.
-/

/-! ## A343554.P10221417374996230330

`and(A000292(n), A057945(A191370(n)))`
-/

namespace A343554.P10221417374996230330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000292 n) (A057945 (A191370 n).toNat)

end

end A343554.P10221417374996230330

/-! ## A343554.P9263420599072661380

`and(A089172(A089190(2*n+1)), A089196(n+2))`
-/

namespace A343554.P9263420599072661380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089172 (A089190 (2 * n + 1)).toNat) (A089196 (n + 2))

end

end A343554.P9263420599072661380

/-! ## A343554.P13798065815116890459

`and(A100679(n), A254077(A000079(n)))`
-/

namespace A343554.P13798065815116890459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100679 n) (A254077 (A000079 n).toNat)

end

end A343554.P13798065815116890459

/-! ## A343554.P13721077323251522233

`A144629(A000124(n))*A231631(n+1)`
-/

namespace A343554.P13721077323251522233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144629 (A000124 n).toNat * A231631 (n + 1)

end

end A343554.P13721077323251522233

/-! ## A343554.P16756845691351763464

`and(A163283(A000079(n)), A205000(n+1))`
-/

namespace A343554.P16756845691351763464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163283 (A000079 n).toNat) (A205000 (n + 1))

end

end A343554.P16756845691351763464

/-!
# A343556: a(n) = denominator(max_{k=2..n}(A191898(n, k)/k)), n>=2.

The programs for A343556, there is no canonical definition to state claims against.
-/

/-! ## A343556.P17465193969124456055

`gcd(round(1/acot(n)), A147912(n+4))+1`
-/

namespace A343556.P17465193969124456055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))) (A147912 (n + 4)) + 1

end

end A343556.P17465193969124456055

/-! ## A343556.P13095266863973504106

`A056619(A262367(n+1))`
-/

namespace A343556.P13095266863973504106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056619 (A262367 (n + 1)).toNat

end

end A343556.P13095266863973504106

/-! ## A343556.P1809221342830306290

`A106275(gcd(n, A032021(n)))`
-/

namespace A343556.P1809221342830306290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106275 (Int.gcd (n : ℤ) (A032021 n))

end

end A343556.P1809221342830306290

/-! ## A343556.P17677167217510057644

`A053669(A120586(n+1)-n)`
-/

namespace A343556.P17677167217510057644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A120586 (n + 1) - (n : ℤ)).toNat

end

end A343556.P17677167217510057644

/-! ## A343556.P9557687534004436154

`A053669(xor(A282123(n), A352297(n+1)))`
-/

namespace A343556.P9557687534004436154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (Int.xor (A282123 n) (A352297 (n + 1))).toNat

end

end A343556.P9557687534004436154

/-!
# A343557: Indices of the prime factors of Fermat numbers in the sequence of primes.

The programs for A343557, there is no canonical definition to state claims against.
-/

/-! ## A343557.P12232135775431426888

`A000720(A023394(n+1))`
-/

namespace A343557.P12232135775431426888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A023394 (n + 1)).toNat

end

end A343557.P12232135775431426888

/-!
# A343558: Irregular triangle read by rows: the n-th row gives the row indices of the consecutive elements of the spiral of the n X n matrix defined in A126224.

The programs for A343558, there is no canonical definition to state claims against.
-/

/-! ## A343558.P8928114573054819345

`ceil(A317612(n+1)/A074279(n+1))`
-/

namespace A343558.P8928114573054819345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317612 (n + 1) : ℚ) / (A074279 (n + 1) : ℚ)⌉

end

end A343558.P8928114573054819345

/-!
# A343559: Irregular triangle read by rows: the n-th row gives the column indices of the consecutive elements of the spiral of the n X n matrix defined in A126224.

The programs for A343559, there is no canonical definition to state claims against.
-/

/-! ## A343559.P13585145517117317309

`A321091(gcd(A001296(n), A022068(n)))`
-/

namespace A343559.P13585145517117317309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 (Int.gcd (A001296 n) (A022068 n))

end

end A343559.P13585145517117317309

/-! ## A343559.P1661650023888610468

`A274450(A226290(n))`
-/

namespace A343559.P1661650023888610468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274450 (A226290 n).toNat

end

end A343559.P1661650023888610468

/-! ## A343559.P3894715311860451845

`gcd(A242357(n+1), A259801(3*n+1))`
-/

namespace A343559.P3894715311860451845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242357 (n + 1)) (A259801 (3 * n + 1))

end

end A343559.P3894715311860451845

/-! ## A343559.P8366539802958953481

`A237593(A263579(n)-A000700(n))`
-/

namespace A343559.P8366539802958953481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A263579 n - A000700 n).toNat

end

end A343559.P8366539802958953481

/-! ## A343559.P4017550877144788916

`A007947(A242357(n+1)^A225408(n))`
-/

namespace A343559.P4017550877144788916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A242357 (n + 1) : ℚ) ^ (A225408 n : ℤ))).toNat

end

end A343559.P4017550877144788916

/-!
# A343560: a(n) = (n-1)*(4*n+1).

The programs for A343560, the canonical program `A343560.P1758954288564611760` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343560 has offset 1).

The definition of A343560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*(n+1)+1)` (program `A343560.P1758954288564611760`, by `A343560.P1758954288564611760.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343560.P4295326081597630675

`(4*(n+1)+1)*n`
-/

namespace A343560.P4295326081597630675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) + 1) * n

end

end A343560.P4295326081597630675

namespace A343560

/-- `(4*(n+1)+1)*n` -/
def P4295326081597630675.Spec : Prop :=
  ∀ n, (P4295326081597630675.a n : ℤ) = A343560 (n + 1)

theorem P4295326081597630675.correct : P4295326081597630675.Spec := by
  intro n
  simp only [A343560, Nat.add_sub_cancel, A343560.P4295326081597630675.a, A343560.P1758954288564611760.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A343560

/-! ## A343560.P1758954288564611760

`n*(4*(n+1)+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343560

/-- `n*(4*(n+1)+1)` -/
def P1758954288564611760.Spec : Prop :=
  ∀ n, (P1758954288564611760.a n : ℤ) = A343560 (n + 1)

theorem P1758954288564611760.correct : P1758954288564611760.Spec := by
  intro n
  simp only [A343560, Nat.add_sub_cancel]

end A343560

/-! ## A343560.P5430250973369766501

`∑[a(n-1)+8]` with `a(0)=0, a(1)=9`
-/

namespace A343560.P5430250973369766501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343560.P5430250973369766501

namespace A343560

/-- `∑[a(n-1)+8]` -/
def P5430250973369766501.Spec : Prop :=
  ∀ n, (P5430250973369766501.a n : ℤ) = A343560 (n + 1)

end A343560

/-! ## A343560.P16837165855143723704

`floor(n-∑[a(n-1)-8])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A343560.P16837165855143723704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343560.P16837165855143723704

namespace A343560

/-- `floor(n-∑[a(n-1)-8])` -/
def P16837165855143723704.Spec : Prop :=
  ∀ n, P16837165855143723704.a n = A343560 (n + 1)

end A343560

/-! ## A343560.P17533755448399578549

`n+A033996(n)`
-/

namespace A343560.P17533755448399578549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A033996 n

end

end A343560.P17533755448399578549

namespace A343560

/-- `n+A033996(n)` -/
def P17533755448399578549.Spec : Prop :=
  ∀ n, P17533755448399578549.a n = A343560 (n + 1)

end A343560

/-! ## A343560.P3951977567189177957

`n-1+A016754(n)`
-/

namespace A343560.P3951977567189177957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + A016754 n

end

end A343560.P3951977567189177957

namespace A343560

/-- `n-1+A016754(n)` -/
def P3951977567189177957.Spec : Prop :=
  ∀ n, P3951977567189177957.a n = A343560 (n + 1)

end A343560

/-! ## A343560.P1640790223009515243

`n+8*A000217(n)`
-/

namespace A343560.P1640790223009515243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + 8 * A000217 n

end

end A343560.P1640790223009515243

namespace A343560

/-- `n+8*A000217(n)` -/
def P1640790223009515243.Spec : Prop :=
  ∀ n, P1640790223009515243.a n = A343560 (n + 1)

end A343560

/-!
# A343561: 2nd row of A341867: a(n) = (n^2+15*n+32)*2^(n-3).

The programs for A343561, the canonical program `A343561.P3669670158909436423` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343561 has offset 0).

The definition of A343561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343561.P3669670158909436423

`(n²+15*n+32)*2^(n-3)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343561

/-- `(n²+15*n+32)*2^(n-3)` -/
def P3669670158909436423.Spec : Prop :=
  ∀ n, P3669670158909436423.a n = (A343561 n : ℚ)

end A343561

/-! ## A343561.P16428572819413238686

`A158920(n+3)-2^(n+1)`
-/

namespace A343561.P16428572819413238686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 3) - (2 ^ (n + 1) : ℤ)

end

end A343561.P16428572819413238686

namespace A343561

/-- `A158920(n+3)-2^(n+1)` -/
def P16428572819413238686.Spec : Prop :=
  ∀ n, P16428572819413238686.a n = A343561 n

end A343561

/-! ## A343561.P3560618995552183252

`A058396(n+1)+A001792(n)`
-/

namespace A343561.P3560618995552183252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 (n + 1) + A001792 n

end

end A343561.P3560618995552183252

namespace A343561

/-- `A058396(n+1)+A001792(n)` -/
def P3560618995552183252.Spec : Prop :=
  ∀ n, P3560618995552183252.a n = A343561 n

end A343561

/-! ## A343561.P16237478470435843510

`A084851(n)+A001792(n+1)`
-/

namespace A343561.P16237478470435843510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n + A001792 (n + 1)

end

end A343561.P16237478470435843510

namespace A343561

/-- `A084851(n)+A001792(n+1)` -/
def P16237478470435843510.Spec : Prop :=
  ∀ n, P16237478470435843510.a n = A343561 n

end A343561

/-! ## A343561.P17621058081276752880

`A139756(n)+2*Δ[A058396(n)]`
-/

namespace A343561.P17621058081276752880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + 2 * (f1 (n + 1) - f1 n)

end

end A343561.P17621058081276752880

namespace A343561

/-- `A139756(n)+2*Δ[A058396(n)]` -/
def P17621058081276752880.Spec : Prop :=
  ∀ n, P17621058081276752880.a n = A343561 n

end A343561

/-! ## A343561.P417766214786222243

`A049611(n+1)+A001792(n+1)`
-/

namespace A343561.P417766214786222243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) + A001792 (n + 1)

end

end A343561.P417766214786222243

namespace A343561

/-- `A049611(n+1)+A001792(n+1)` -/
def P417766214786222243.Spec : Prop :=
  ∀ n, P417766214786222243.a n = A343561 n

end A343561

/-! ## A343561.P7325522997477991398

`A058396(n+1)+Δ[A139756(n+1)]`
-/

namespace A343561.P7325522997477991398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 (n + 1) + (f1 (n + 1) - f1 n)

end

end A343561.P7325522997477991398

namespace A343561

/-- `A058396(n+1)+Δ[A139756(n+1)]` -/
def P7325522997477991398.Spec : Prop :=
  ∀ n, P7325522997477991398.a n = A343561 n

end A343561

/-! ## A343561.P543675893458132437

`A001787(n+1)+A058396(n+1)-A001787(n)`
-/

namespace A343561.P543675893458132437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + (A058396 (n + 1) - A001787 n)

end

end A343561.P543675893458132437

namespace A343561

/-- `A001787(n+1)+A058396(n+1)-A001787(n)` -/
def P543675893458132437.Spec : Prop :=
  ∀ n, P543675893458132437.a n = A343561 n

end A343561

/-! ## A343561.P16487954357310725469

`A001787(n+1)+A190050(n+1)+A011782(n+1)`
-/

namespace A343561.P16487954357310725469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + (A190050 (n + 1) + A011782 (n + 1))

end

end A343561.P16487954357310725469

namespace A343561

/-- `A001787(n+1)+A190050(n+1)+A011782(n+1)` -/
def P16487954357310725469.Spec : Prop :=
  ∀ n, P16487954357310725469.a n = A343561 n

end A343561

/-! ## A343561.P1509052588919733023

`A045623(n+1)+A058396(n+1)-A011782(n+1)`
-/

namespace A343561.P1509052588919733023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) + (A058396 (n + 1) - A011782 (n + 1))

end

end A343561.P1509052588919733023

namespace A343561

/-- `A045623(n+1)+A058396(n+1)-A011782(n+1)` -/
def P1509052588919733023.Spec : Prop :=
  ∀ n, P1509052588919733023.a n = A343561 n

end A343561

/-! ## A343561.P6453306530888937761

`A001792(n)+Δ[A084851(n)]`
-/

namespace A343561.P6453306530888937761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (f1 (n + 1) - f1 n)

end

end A343561.P6453306530888937761

namespace A343561

/-- `A001792(n)+Δ[A084851(n)]` -/
def P6453306530888937761.Spec : Prop :=
  ∀ n, P6453306530888937761.a n = A343561 n

end A343561

/-! ## A343561.P12734499710160353877

`Δ[A058396(n+1)-A000079(n+1)]`
-/

namespace A343561.P12734499710160353877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 (n + 1) - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343561.P12734499710160353877

namespace A343561

/-- `Δ[A058396(n+1)-A000079(n+1)]` -/
def P12734499710160353877.Spec : Prop :=
  ∀ n, P12734499710160353877.a n = A343561 n

end A343561

/-! ## A343561.P2107900978387077297

`A049611(n+1)+A072863(n+1)-A001788(n)`
-/

namespace A343561.P2107900978387077297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1) + (A072863 (n + 1) - A001788 n)

end

end A343561.P2107900978387077297

namespace A343561

/-- `A049611(n+1)+A072863(n+1)-A001788(n)` -/
def P2107900978387077297.Spec : Prop :=
  ∀ n, P2107900978387077297.a n = A343561 n

end A343561

/-! ## A343561.P14341849059300380265

`A084851(n+1)+A084851(n)-A001793(n+1)`
-/

namespace A343561.P14341849059300380265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 (n + 1) + (A084851 n - A001793 (n + 1))

end

end A343561.P14341849059300380265

namespace A343561

/-- `A084851(n+1)+A084851(n)-A001793(n+1)` -/
def P14341849059300380265.Spec : Prop :=
  ∀ n, P14341849059300380265.a n = A343561 n

end A343561

/-! ## A343561.P16066754654900334060

`A072863(n+1)+A190050(n+1)-A104270(n+1)`
-/

namespace A343561.P16066754654900334060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 (n + 1) + (A190050 (n + 1) - A104270 (n + 1))

end

end A343561.P16066754654900334060

namespace A343561

/-- `A072863(n+1)+A190050(n+1)-A104270(n+1)` -/
def P16066754654900334060.Spec : Prop :=
  ∀ n, P16066754654900334060.a n = A343561 n

end A343561

/-! ## A343561.P6099880686699085551

`A081908(n+2)-A300451(n)`
-/

namespace A343561.P6099880686699085551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 (n + 2) - A300451 n

end

end A343561.P6099880686699085551

namespace A343561

/-- `A081908(n+2)-A300451(n)` -/
def P6099880686699085551.Spec : Prop :=
  ∀ n, P6099880686699085551.a n = A343561 n

end A343561

/-! ## A343561.P13801278081692991331

`A001793(n+2)-(A276289(n)+A053220(n+1))`
-/

namespace A343561.P13801278081692991331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 2) - (A276289 n + A053220 (n + 1))

end

end A343561.P13801278081692991331

namespace A343561

/-- `A001793(n+2)-(A276289(n)+A053220(n+1))` -/
def P13801278081692991331.Spec : Prop :=
  ∀ n, P13801278081692991331.a n = A343561 n

end A343561

/-! ## A343561.P8244371189958815975

`A001793(n+2)+A276289(n)-A276289(n+1)`
-/

namespace A343561.P8244371189958815975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 2) + (A276289 n - A276289 (n + 1))

end

end A343561.P8244371189958815975

namespace A343561

/-- `A001793(n+2)+A276289(n)-A276289(n+1)` -/
def P8244371189958815975.Spec : Prop :=
  ∀ n, P8244371189958815975.a n = A343561 n

end A343561

/-! ## A343561.P10333248616967437810

`A105693(n+2)-A318947(n+3)`
-/

namespace A343561.P10333248616967437810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105693 (n + 2) - A318947 (n + 3)

end

end A343561.P10333248616967437810

namespace A343561

/-- `A105693(n+2)-A318947(n+3)` -/
def P10333248616967437810.Spec : Prop :=
  ∀ n, P10333248616967437810.a n = A343561 n

end A343561

/-! ## A343561.P5220238315247356403

`A081893(n)/2^(n-2)`
-/

namespace A343561.P5220238315247356403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081893 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A343561.P5220238315247356403

namespace A343561

/-- `A081893(n)/2^(n-2)` -/
def P5220238315247356403.Spec : Prop :=
  ∀ n, P5220238315247356403.a n = (A343561 n : ℚ)

end A343561

/-!
# A343562: The number of n-cell polyominoes with a line of symmetry parallel to the edges.

The programs for A343562, there is no canonical definition to state claims against.
-/

/-! ## A343562.P3867878452357097144

`A056877(n+1)+A142886(n+1)+A006746(n+1)`
-/

namespace A343562.P3867878452357097144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056877 (n + 1) + A142886 (n + 1) + A006746 (n + 1)

end

end A343562.P3867878452357097144

/-! ## A343562.P17271369503832074582

`A030227(n+1)-(A056878(n+1)+A006748(n+1))`
-/

namespace A343562.P17271369503832074582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030227 (n + 1) - (A056878 (n + 1) + A006748 (n + 1))

end

end A343562.P17271369503832074582

/-! ## A343562.P6802730253663673724

`A067754(A149256(n))`
-/

namespace A343562.P6802730253663673724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (A149256 n).toNat

end

end A343562.P6802730253663673724

/-! ## A343562.P4507677271207741710

`A094681(A049884(n+1))-Δ[A124763(2*n)]`
-/

namespace A343562.P4507677271207741710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094681 (A049884 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A343562.P4507677271207741710

/-!
# A343565: a(n) = |{(x_1, x_2, ... , x_n) : 1 <= x_1 <= x_2 <= ... <= x_n <= n, gcd(x_1, x_2, ... , x_n, n) = 1}|.

The programs for A343565, there is no canonical definition to state claims against.
-/

/-! ## A343565.P3330375447918782590

`A177975(2*(n+1)²+1)`
-/

namespace A343565.P3330375447918782590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (2 * (n + 1) ^ 2 + 1)

end

end A343565.P3330375447918782590

/-! ## A343565.P4651493765308044157

`record[A177975(A082154(n+2)+1)]`
-/

namespace A343565.P4651493765308044157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (A082154 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343565.P4651493765308044157

/-! ## A343565.P1301769874894562879

`or(A004526(A128650(n+2)), A034742(n+1))`
-/

namespace A343565.P1301769874894562879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004526 (A128650 (n + 2)).toNat) (A034742 (n + 1))

end

end A343565.P1301769874894562879

/-!
# A343566: Numbers k such that A343564(k) is divisible by 2*k.

The programs for A343566, there is no canonical definition to state claims against.
-/

/-! ## A343566.P13198466690112762677

`A111706(A059188(n+2))`
-/

namespace A343566.P13198466690112762677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (A059188 (n + 2)).toNat

end

end A343566.P13198466690112762677

/-! ## A343566.P3663602276719930695

`A336473(A256450(n)^n+1)`
-/

namespace A343566.P3663602276719930695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336473 (A256450 n ^ n + 1).toNat

end

end A343566.P3663602276719930695

/-!
# A343567: a(n) = Sum_{d|n} (n/d)^(n/d) * binomial(d+n-2,n-1).

The programs for A343567, there is no canonical definition to state claims against.
-/

/-! ## A343567.P3684078796911518227

`A023443(∑{d}[n+1, #^(n+1)])+A000984(n)`
-/

namespace A343567.P3684078796911518227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1)) + A000984 n

end

end A343567.P3684078796911518227

/-!
# A343568: a(n) = Sum_{d|n} (n/d)^(n/d) * binomial(d+n-1,n).

The programs for A343568, there is no canonical definition to state claims against.
-/

/-! ## A343568.P265041362787104367

`A034699(∑[or(n, A001336(n))])`
-/

namespace A343568.P265041362787104367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A001336 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343568.P265041362787104367

/-!
# A343569: If n = Product (p_j^k_j) then a(n) = Product (2*(p_j^k_j + 1)), with a(1) = 1.

The programs for A343569, the canonical program `A343569.P10194073236583386996` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343569 has offset 1).

The definition of A343569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343569.P10194073236583386996

`∏{p}[n+1, ceil(atan(#))]*A034448(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A343569

/-- `∏{p}[n+1, ceil(atan(#))]*A034448(n+1)` -/
def P10194073236583386996.Spec : Prop :=
  ∀ n, P10194073236583386996.a n = A343569 (n + 1)

theorem P10194073236583386996.correct : P10194073236583386996.Spec := by
  intro n
  simp only [A343569, Nat.add_sub_cancel]

end A343569

/-! ## A343569.P7819969342538947008

`(A345451(n+1)+1)*∏{p}[n+1, 2%#²]`
-/

namespace A343569.P7819969342538947008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1) * ((∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2 : ℕ) : ℤ)

end

end A343569.P7819969342538947008

namespace A343569

/-- `(A345451(n+1)+1)*∏{p}[n+1, 2%#²]` -/
def P7819969342538947008.Spec : Prop :=
  ∀ n, P7819969342538947008.a n = A343569 (n + 1)

end A343569

/-! ## A343569.P2408259414966571387

`2^∑{p}[n+1, gcd(n, #)]*∑{d}[n+1, A254503(#)]`
-/

namespace A343569.P2408259414966571387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) : ℤ) * (∑ d ∈ Nat.divisors (f2 n), A254503 d)

end

end A343569.P2408259414966571387

namespace A343569

/-- `2^∑{p}[n+1, gcd(n, #)]*∑{d}[n+1, A254503(#)]` -/
def P2408259414966571387.Spec : Prop :=
  ∀ n, P2408259414966571387.a n = A343569 (n + 1)

end A343569

/-! ## A343569.P6462341610226774394

`(A034460(n+1)+1+n)*∏{p}[n+1, ceil(atan(#))]`
-/

namespace A343569.P6462341610226774394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + 1 + (n : ℤ)) * (∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉)

end

end A343569.P6462341610226774394

namespace A343569

/-- `(A034460(n+1)+1+n)*∏{p}[n+1, ceil(atan(#))]` -/
def P6462341610226774394.Spec : Prop :=
  ∀ n, P6462341610226774394.a n = A343569 (n + 1)

end A343569

/-! ## A343569.P2064351578243739153

`A064971(n+1)/(n+1)*∏{p}[n+1, ceil(root(2, #))]`
-/

namespace A343569.P2064351578243739153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (n + 1 : ℚ) * ((∏ p ∈ Nat.primeFactors (f1 n), ⌈(2 : ℝ) ^ (1 / (p : ℝ))⌉ : ℤ) : ℚ)

end

end A343569.P2064351578243739153

namespace A343569

/-- `A064971(n+1)/(n+1)*∏{p}[n+1, ceil(root(2, #))]` -/
def P2064351578243739153.Spec : Prop :=
  ∀ n, P2064351578243739153.a n = (A343569 (n + 1) : ℚ)

end A343569

/-! ## A343569.P14025114521913997984

`(A129468(n+1)+2*(n+1))*∏{p}[n+1, ceil(root(2, #))]`
-/

namespace A343569.P14025114521913997984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129468 (n + 1) + (2 * (n + 1) : ℤ)) * (∏ p ∈ Nat.primeFactors (f1 n), ⌈(2 : ℝ) ^ (1 / (p : ℝ))⌉)

end

end A343569.P14025114521913997984

namespace A343569

/-- `(A129468(n+1)+2*(n+1))*∏{p}[n+1, ceil(root(2, #))]` -/
def P14025114521913997984.Spec : Prop :=
  ∀ n, P14025114521913997984.a n = A343569 (n + 1)

end A343569

/-! ## A343569.P2338622105669446532

`A034444(n+1)*A034448(n+1)`
-/

namespace A343569.P2338622105669446532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A034448 (n + 1)

end

end A343569.P2338622105669446532

namespace A343569

/-- `A034444(n+1)*A034448(n+1)` -/
def P2338622105669446532.Spec : Prop :=
  ∀ n, P2338622105669446532.a n = A343569 (n + 1)

end A343569

/-! ## A343569.P670798324343536214

`abs(A034448(n+1)*A158522(n+1))`
-/

namespace A343569.P670798324343536214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034448 (n + 1) * A158522 (n + 1)|

end

end A343569.P670798324343536214

namespace A343569

/-- `abs(A034448(n+1)*A158522(n+1))` -/
def P670798324343536214.Spec : Prop :=
  ∀ n, P670798324343536214.a n = A343569 (n + 1)

end A343569

/-! ## A343569.P4668822606919428553

`(A309307(n+1)+1)*A034448(n+1)`
-/

namespace A343569.P4668822606919428553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309307 (n + 1) + 1) * A034448 (n + 1)

end

end A343569.P4668822606919428553

namespace A343569

/-- `(A309307(n+1)+1)*A034448(n+1)` -/
def P4668822606919428553.Spec : Prop :=
  ∀ n, P4668822606919428553.a n = A343569 (n + 1)

end A343569

/-! ## A343569.P7545361636063444732

`2^A001221(n+1)*A034448(n+1)`
-/

namespace A343569.P7545361636063444732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A034448 (n + 1) : ℚ)

end

end A343569.P7545361636063444732

namespace A343569

/-- `2^A001221(n+1)*A034448(n+1)` -/
def P7545361636063444732.Spec : Prop :=
  ∀ n, P7545361636063444732.a n = (A343569 (n + 1) : ℚ)

end A343569

/-! ## A343569.P8371845523452061769

`A000005(A007947(n+1))*A034448(n+1)`
-/

namespace A343569.P8371845523452061769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007947 (n + 1)).toNat * A034448 (n + 1)

end

end A343569.P8371845523452061769

namespace A343569

/-- `A000005(A007947(n+1))*A034448(n+1)` -/
def P8371845523452061769.Spec : Prop :=
  ∀ n, P8371845523452061769.a n = A343569 (n + 1)

end A343569

/-! ## A343569.P686501514271466033

`A034448(n+1)/A047994(n+1)*A333557(n+1)`
-/

namespace A343569.P686501514271466033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A047994 (n + 1) : ℚ) * (A333557 (n + 1) : ℚ)

end

end A343569.P686501514271466033

namespace A343569

/-- `A034448(n+1)/A047994(n+1)*A333557(n+1)` -/
def P686501514271466033.Spec : Prop :=
  ∀ n, P686501514271466033.a n = (A343569 (n + 1) : ℚ)

end A343569

/-! ## A343569.P5383784943182390289

`A034448(n+1)*A323308((n+1)²)`
-/

namespace A343569.P5383784943182390289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) * A323308 ((n + 1) ^ 2)

end

end A343569.P5383784943182390289

namespace A343569

/-- `A034448(n+1)*A323308((n+1)²)` -/
def P5383784943182390289.Spec : Prop :=
  ∀ n, P5383784943182390289.a n = A343569 (n + 1)

end A343569

/-!
# A343570: If n = Product (p_j^k_j) then a(n) = Product (p_j^k_j + 3), with a(1) = 1.

The programs for A343570, the canonical program `A343570.P4880689975004016304` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343570 has offset 1).

The definition of A343570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343570.P4880689975004016304

`∏{p}[n+1, #^val(n+1, #)+3]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343570

/-- `∏{p}[n+1, #^val(n+1, #)+3]` -/
def P4880689975004016304.Spec : Prop :=
  ∀ n, (P4880689975004016304.a n : ℤ) = A343570 (n + 1)

theorem P4880689975004016304.correct : P4880689975004016304.Spec := by
  intro n
  simp only [A343570, Nat.add_sub_cancel]

end A343570

/-! ## A343570.P2098123240360949129

`∏{e}[A036879(n+1), #+4]`
-/

namespace A343570.P2098123240360949129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 4)

end

end A343570.P2098123240360949129

namespace A343570

/-- `∏{e}[A036879(n+1), #+4]` -/
def P2098123240360949129.Spec : Prop :=
  ∀ n, (P2098123240360949129.a n : ℤ) = A343570 (n + 1)

end A343570

/-!
# A343572: a(n) = ceiling((16^n)*Sum_{k=0..n+1} (4/(8k+1)-2/(8k+4)-1/(8k+5)-1/(8k+6))/16^k).

The programs for A343572, there is no canonical definition to state claims against.
-/

/-! ## A343572.P2842229595038566840

`ceil(π*16^n)`
-/

namespace A343572.P2842229595038566840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (16 ^ n : ℝ)⌉

end

end A343572.P2842229595038566840

/-! ## A343572.P7574670729055531671

`A293342(4*n)`
-/

namespace A343572.P7574670729055531671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293342 (4 * n)

end

end A343572.P7574670729055531671

/-! ## A343572.P18304851645138210844

`char[A133388(n+1)]+floor(π*16^n)`
-/

namespace A343572.P18304851645138210844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.pi * (16 ^ n : ℝ)⌋

end

end A343572.P18304851645138210844

/-! ## A343572.P4371409894074590170

`A008295(and(2, 1-n))+floor(π*16^n)`
-/

namespace A343572.P4371409894074590170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008295 (Int.land 2 (1 - (n : ℤ))).toNat + ⌊Real.pi * (16 ^ n : ℝ)⌋

end

end A343572.P4371409894074590170

/-!
# A343573: a(n) = Sum_{d|n} d^d * binomial(d+n/d-2, d-1).

The programs for A343573, there is no canonical definition to state claims against.
-/

/-! ## A343573.P10303917845721820381

`A359700(n+1)-A007814(A276097(n+1))`
-/

namespace A343573.P10303917845721820381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359700 (n + 1) - A007814 (A276097 (n + 1)).toNat

end

end A343573.P10303917845721820381

/-! ## A343573.P9732512461378296705

`A359700(n+1)-A184955(A269379(n+1))`
-/

namespace A343573.P9732512461378296705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359700 (n + 1) - A184955 (A269379 (n + 1)).toNat

end

end A343573.P9732512461378296705

/-! ## A343573.P11792629809542964070

`A270890(A124560(3*n+4))+A062796(n+1)`
-/

namespace A343573.P11792629809542964070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270890 (A124560 (3 * n + 4)).toNat + A062796 (n + 1)

end

end A343573.P11792629809542964070

/-!
# A343574: a(n) = Sum_{d|n} d^d * binomial(d+n/d-1, d).

The programs for A343574, there is no canonical definition to state claims against.
-/

/-! ## A343574.P48258117231315366

`comp[∏{p}[n+1, -#]]+or((n+1)^(n+1), A001222(4^(2*n)))`
-/

namespace A343574.P48258117231315366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + Int.lor ((n + 1) ^ (n + 1) : ℤ) (A001222 (4 ^ (2 * n)))

end

end A343574.P48258117231315366

/-!
# A343575: a(n) = floor((2+sqrt(5))^n - 2^(n+1)) mod (20*n).

The programs for A343575, there is no canonical definition to state claims against.
-/

/-! ## A343575.P829924413796600403

`A183099(A080926(n+2)-1)`
-/

namespace A343575.P829924413796600403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183099 (A080926 (n + 2) - 1).toNat

end

end A343575.P829924413796600403

/-! ## A343575.P18115672137380355107

`and((n-A123365(A046632(n)))²-1, A270010(n))`
-/

namespace A343575.P18115672137380355107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n : ℤ) - A123365 (A046632 n).toNat) ^ 2 - 1) (A270010 n)

end

end A343575.P18115672137380355107

/-!
# A343576: Number of permutations of [n] without fixed points and all cycles equal length.

The programs for A343576, there is no canonical definition to state claims against.
-/

/-! ## A343576.P17033460425576146293

`A005225(A052938(abs(2*(1-n))))-1`
-/

namespace A343576.P17033460425576146293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005225 (A052938 |2 * (1 - (n : ℤ))|.toNat).toNat - 1

end

end A343576.P17033460425576146293

/-! ## A343576.P9292811610378532993

`A057428(n)+A005225(A028310(n))`
-/

namespace A343576.P9292811610378532993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A005225 (A028310 n).toNat

end

end A343576.P9292811610378532993

/-! ## A343576.P4958391171336034263

`A005225(A028310(n))-A057427(n)`
-/

namespace A343576.P4958391171336034263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005225 (A028310 n).toNat - A057427 n

end

end A343576.P4958391171336034263

/-! ## A343576.P15920032724489291211

`A005225(A028310(n))-A178334(n)`
-/

namespace A343576.P15920032724489291211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005225 (A028310 n).toNat - A178334 n

end

end A343576.P15920032724489291211

/-! ## A343576.P2961789522418550202

`A005225(A028310(n))-char[A074909(n)]`
-/

namespace A343576.P2961789522418550202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005225 (A028310 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A343576.P2961789522418550202

/-!
# A343577: Number of generalized polyforms on the truncated square tiling with n cells.

The programs for A343577, there is no canonical definition to state claims against.
-/

/-! ## A343577.P5209363407391530279

`A008615(A150658(n))+A000009(n)`
-/

namespace A343577.P5209363407391530279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A150658 n).toNat + A000009 n

end

end A343577.P5209363407391530279

/-! ## A343577.P16946842181907273157

`A125184(A321277(n+1))+A124293(n+1)`
-/

namespace A343577.P16946842181907273157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125184 (A321277 (n + 1)).toNat + A124293 (n + 1)

end

end A343577.P16946842181907273157

/-!
# A343578: a(n) = 32*n^2 - 40*n + 10.

The programs for A343578, the canonical program `A343578.P16102182765597494396` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343578 has offset 1).

The definition of A343578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(n+1)²-40*(n+1)+10` (program `A343578.P16102182765597494396`, by `A343578.P16102182765597494396.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343578.P16102182765597494396

`32*(n+1)²-40*(n+1)+10`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343578

/-- `32*(n+1)²-40*(n+1)+10` -/
def P16102182765597494396.Spec : Prop :=
  ∀ n, P16102182765597494396.a n = A343578 (n + 1)

theorem P16102182765597494396.correct : P16102182765597494396.Spec := by
  intro n
  simp only [A343578, Nat.add_sub_cancel]

end A343578

/-! ## A343578.P13434085631417806082

`∑[a(n-1)+64]` with `a(0)=2, a(1)=56`
-/

namespace A343578.P13434085631417806082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 56] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343578.P13434085631417806082

namespace A343578

/-- `∑[a(n-1)+64]` -/
def P13434085631417806082.Spec : Prop :=
  ∀ n, (P13434085631417806082.a n : ℤ) = A343578 (n + 1)

end A343578

/-! ## A343578.P1729978485464734838

`(xor(3, 8*n)²-5)/2`
-/

namespace A343578.P1729978485464734838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 3 (8 * n) ^ 2 : ℤ) - 5 : ℚ) / 2

end

end A343578.P1729978485464734838

namespace A343578

/-- `(xor(3, 8*n)²-5)/2` -/
def P1729978485464734838.Spec : Prop :=
  ∀ n, P1729978485464734838.a n = (A343578 (n + 1) : ℚ)

end A343578

/-! ## A343578.P1084614839603891852

`or(2, (4*n+3)*8*n)`
-/

namespace A343578.P1084614839603891852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((4 * n + 3) * (8 * n))

end

end A343578.P1084614839603891852

namespace A343578

/-- `or(2, (4*n+3)*8*n)` -/
def P1084614839603891852.Spec : Prop :=
  ∀ n, (P1084614839603891852.a n : ℤ) = A343578 (n + 1)

end A343578

/-! ## A343578.P9416951256237616829

`2*(record[xor(1, n)*xor(2, n)]-1)`
-/

namespace A343578.P9416951256237616829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n * Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - 1)

end

end A343578.P9416951256237616829

namespace A343578

/-- `2*(record[xor(1, n)*xor(2, n)]-1)` -/
def P9416951256237616829.Spec : Prop :=
  ∀ n, P9416951256237616829.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P10891283594967310095

`lcm(2, n*Δ[(2*n+2*n+1)²]+2)`
-/

namespace A343578.P10891283594967310095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + (2 * n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 2)

end

end A343578.P10891283594967310095

namespace A343578

/-- `lcm(2, n*Δ[(2*n+2*n+1)²]+2)` -/
def P10891283594967310095.Spec : Prop :=
  ∀ n, (P10891283594967310095.a n : ℤ) = A343578 (n + 1)

end A343578

/-! ## A343578.P6856697465034097320

`2*(A157870(n)-1)`
-/

namespace A343578.P6856697465034097320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157870 n - 1)

end

end A343578.P6856697465034097320

namespace A343578

/-- `2*(A157870(n)-1)` -/
def P6856697465034097320.Spec : Prop :=
  ∀ n, P6856697465034097320.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P8652237167933261850

`(A017102(n)-5)/2`
-/

namespace A343578.P8652237167933261850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017102 n - 5 : ℚ) / 2

end

end A343578.P8652237167933261850

namespace A343578

/-- `(A017102(n)-5)/2` -/
def P8652237167933261850.Spec : Prop :=
  ∀ n, P8652237167933261850.a n = (A343578 (n + 1) : ℚ)

end A343578

/-! ## A343578.P9787909343981597132

`2*(4*n*A004767(n)+1)`
-/

namespace A343578.P9787909343981597132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (4 * ((n : ℤ) * A004767 n) + 1)

end

end A343578.P9787909343981597132

namespace A343578

/-- `2*(4*n*A004767(n)+1)` -/
def P9787909343981597132.Spec : Prop :=
  ∀ n, P9787909343981597132.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P17425922911915133774

`2*(A001539(n)-A016825(n))`
-/

namespace A343578.P17425922911915133774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001539 n - A016825 n)

end

end A343578.P17425922911915133774

namespace A343578

/-- `2*(A001539(n)-A016825(n))` -/
def P17425922911915133774.Spec : Prop :=
  ∀ n, P17425922911915133774.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P11512165676771333747

`2*(A016826(n)-A004767(n))`
-/

namespace A343578.P11512165676771333747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016826 n - A004767 n)

end

end A343578.P11512165676771333747

namespace A343578

/-- `2*(A016826(n)-A004767(n))` -/
def P11512165676771333747.Spec : Prop :=
  ∀ n, P11512165676771333747.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P13400372175904511443

`2*(n*Δ[A033586(n)]+1)`
-/

namespace A343578.P13400372175904511443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * (f1 (n + 1) - f1 n) + 1)

end

end A343578.P13400372175904511443

namespace A343578

/-- `2*(n*Δ[A033586(n)]+1)` -/
def P13400372175904511443.Spec : Prop :=
  ∀ n, P13400372175904511443.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P7101902431630652246

`2*A082108(2*n)`
-/

namespace A343578.P7101902431630652246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082108 (2 * n)

end

end A343578.P7101902431630652246

namespace A343578

/-- `2*A082108(2*n)` -/
def P7101902431630652246.Spec : Prop :=
  ∀ n, P7101902431630652246.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P5456319975860394685

`(A003185(2*n)-1)/2`
-/

namespace A343578.P5456319975860394685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003185 (2 * n) - 1 : ℚ) / 2

end

end A343578.P5456319975860394685

namespace A343578

/-- `(A003185(2*n)-1)/2` -/
def P5456319975860394685.Spec : Prop :=
  ∀ n, P5456319975860394685.a n = (A343578 (n + 1) : ℚ)

end A343578

/-! ## A343578.P15552029238150250025

`2*(A002939(2*n+1)-1)`
-/

namespace A343578.P15552029238150250025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002939 (2 * n + 1) - 1)

end

end A343578.P15552029238150250025

namespace A343578

/-- `2*(A002939(2*n+1)-1)` -/
def P15552029238150250025.Spec : Prop :=
  ∀ n, P15552029238150250025.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P6215002852676726399

`2*(A118239(2*(n+1))-1)`
-/

namespace A343578.P6215002852676726399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A118239 (2 * (n + 1)) - 1)

end

end A343578.P6215002852676726399

namespace A343578

/-- `2*(A118239(2*(n+1))-1)` -/
def P6215002852676726399.Spec : Prop :=
  ∀ n, P6215002852676726399.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P5889330307868866924

`2*(A054554(2*(n+1))-2)`
-/

namespace A343578.P5889330307868866924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054554 (2 * (n + 1)) - 2)

end

end A343578.P5889330307868866924

namespace A343578

/-- `2*(A054554(2*(n+1))-2)` -/
def P5889330307868866924.Spec : Prop :=
  ∀ n, P5889330307868866924.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P18286072925111992058

`xor(1, A080856(2*n+1)-2)`
-/

namespace A343578.P18286072925111992058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A080856 (2 * n + 1) - 2)

end

end A343578.P18286072925111992058

namespace A343578

/-- `xor(1, A080856(2*n+1)-2)` -/
def P18286072925111992058.Spec : Prop :=
  ∀ n, P18286072925111992058.a n = A343578 (n + 1)

end A343578

/-! ## A343578.P14465732286814753255

`2*(A000466(2*n+1)-(4*n+2))`
-/

namespace A343578.P14465732286814753255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000466 (2 * n + 1) - (4 * n + 2 : ℤ))

end

end A343578.P14465732286814753255

namespace A343578

/-- `2*(A000466(2*n+1)-(4*n+2))` -/
def P14465732286814753255.Spec : Prop :=
  ∀ n, P14465732286814753255.a n = A343578 (n + 1)

end A343578

/-!
# A343579: a(n) = Sum_{k=0..floor(n/2)} |Stirling1(n - k, k)|.

The programs for A343579, there is no canonical definition to state claims against.
-/

/-! ## A343579.P11108276579057989200

`A081753(A022492(n+1))`
-/

namespace A343579.P11108276579057989200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A022492 (n + 1)).toNat

end

end A343579.P11108276579057989200

/-! ## A343579.P8939864971081328767

`A008647(A022492(n+1)+5)`
-/

namespace A343579.P8939864971081328767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A022492 (n + 1) + 5).toNat

end

end A343579.P8939864971081328767

/-! ## A343579.P17758844928113538912

`A373074(∑[C(n, 2)+1])+A373074(n)`
-/

namespace A343579.P17758844928113538912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373074 (∑ j ∈ Finset.range (n + 1), f1 j) + A373074 n

end

end A343579.P17758844928113538912

/-! ## A343579.P10704913281655555669

`A096134(a(n-1)+1)+1-A305840(n+1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A343579.P10704913281655555669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  A096134 (a (n - 1) + 1).toNat + 1 - A305840 (n + 1)

end

end A343579.P10704913281655555669

/-!
# A343580: a(n) = abs(A021009(n, floor(n/2))).

The programs for A343580, there is no canonical definition to state claims against.
-/

/-! ## A343580.P12871482571273538291

`C(n, floor(n/2))²*ceil(n/2)!`
-/

namespace A343580.P12871482571273538291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 * Nat.factorial ⌈(n : ℚ) / 2⌉.toNat

end

end A343580.P12871482571273538291

/-! ## A343580.P7622838147931227773

`C(n, floor(n/2))²*∏[A152271(n)]`
-/

namespace A343580.P7622838147931227773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A343580.P7622838147931227773

/-! ## A343580.P8584294114824646535

`A174298(A194274(n))`
-/

namespace A343580.P8584294114824646535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174298 (A194274 n).toNat

end

end A343580.P8584294114824646535

/-! ## A343580.P12786128147961506542

`A144084(A007590(n+1))`
-/

namespace A343580.P12786128147961506542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144084 (A007590 (n + 1)).toNat

end

end A343580.P12786128147961506542

/-! ## A343580.P7045495282051711067

`A144084(A080476(n+1))`
-/

namespace A343580.P7045495282051711067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144084 (A080476 (n + 1)).toNat

end

end A343580.P7045495282051711067

/-!
# A343581: a(n) = binomial(n, floor(n/2))*FallingFactorial(n - 1, n - floor(n/2)).

The programs for A343581, there is no canonical definition to state claims against.
-/

/-! ## A343581.P2098472594489612032

`(A037957(n)+A026021(n))*A265609(A080476(n+1))`
-/

namespace A343581.P2098472594489612032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037957 n + A026021 n) * A265609 (A080476 (n + 1)).toNat

end

end A343581.P2098472594489612032

/-! ## A343581.P8129745981575055281

`A271703(∑[n]+floor(n/2))`
-/

namespace A343581.P8129745981575055281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n : ℚ) / 2⌋).toNat

end

end A343581.P8129745981575055281

/-! ## A343581.P2904174959402976059

`abs(A111596(record[A245300(n)]))`
-/

namespace A343581.P2904174959402976059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111596 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A343581.P2904174959402976059

/-! ## A343581.P12077565452322966261

`abs(A111596(A004526(A005563(n))))`
-/

namespace A343581.P12077565452322966261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111596 (A004526 (A005563 n).toNat).toNat|

end

end A343581.P12077565452322966261

/-! ## A343581.P4611698410034002072

`A028242(n)*A105278(A099392(n+1))`
-/

namespace A343581.P4611698410034002072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n * A105278 (A099392 (n + 1)).toNat

end

end A343581.P4611698410034002072

/-!
# A343582: a(n) = (-1)^n*n!*[x^n] exp(-3*x)/(1 - 2*x).

The programs for A343582, the canonical program `A343582.P6208082630082579887` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343582 has offset 0).

The definition of A343582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343582.P6208082630082579887

`6*(n-1)*a(n-2)-(2*n-3)*a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343582

/-- `6*(n-1)*a(n-2)-(2*n-3)*a(n-1)` -/
def P6208082630082579887.Spec : Prop :=
  ∀ n, P6208082630082579887.a n = A343582 n

theorem P6208082630082579887.correct : P6208082630082579887.Spec := by
  intro n
  simp only [A343582]

end A343582

/-! ## A343582.P1018244699832766554

`3^n-2*n*a(n-1)` with `a(0)=1`
-/

namespace A343582.P1018244699832766554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) - 2 * ((n : ℤ) * a (n - 1))

end

end A343582.P1018244699832766554

namespace A343582

/-- `3^n-2*n*a(n-1)` -/
def P1018244699832766554.Spec : Prop :=
  ∀ n, P1018244699832766554.a n = A343582 n

end A343582

/-! ## A343582.P1655648988380693796

`A000244(n)-2*n*a(n-1)` with `a(0)=1`
-/

namespace A343582.P1655648988380693796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000244 n - (2 * n : ℤ) * a (n - 1)

end

end A343582.P1655648988380693796

namespace A343582

/-- `A000244(n)-2*n*a(n-1)` -/
def P1655648988380693796.Spec : Prop :=
  ∀ n, P1655648988380693796.a n = A343582 n

end A343582

/-! ## A343582.P14624185859018267234

`3^n-a(n-1)*A004277(n)` with `a(0)=1`
-/

namespace A343582.P14624185859018267234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) - a (n - 1) * A004277 n

end

end A343582.P14624185859018267234

namespace A343582

/-- `3^n-a(n-1)*A004277(n)` -/
def P14624185859018267234.Spec : Prop :=
  ∀ n, P14624185859018267234.a n = A343582 n

end A343582

/-! ## A343582.P4942860025688634665

`Δ[A003462(n)]-2*n*a(n-1)` with `a(0)=1`
-/

namespace A343582.P4942860025688634665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - (2 * n : ℤ) * a (n - 1)

end

end A343582.P4942860025688634665

namespace A343582

/-- `Δ[A003462(n)]-2*n*a(n-1)` -/
def P4942860025688634665.Spec : Prop :=
  ∀ n, P4942860025688634665.a n = A343582 n

end A343582

/-!
# A343583: a(n) = (1/2)*Li_{-n-1}(1/2) - Li_{-n}(1/2), where Li_{n}(x) is the polylogarithm function.

The programs for A343583, there is no canonical definition to state claims against.
-/

/-! ## A343583.P7730849966108122872

`A000629(n+1)/2-A000629(n)`
-/

namespace A343583.P7730849966108122872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000629 (n + 1) : ℚ) / 2 - (A000629 n : ℚ)

end

end A343583.P7730849966108122872

/-! ## A343583.P17214815971078697806

`A274273(n)-1`
-/

namespace A343583.P17214815971078697806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274273 n - 1

end

end A343583.P17214815971078697806

/-! ## A343583.P16202526636296304569

`Δ[A052856(n)]-A000670(n)`
-/

namespace A343583.P16202526636296304569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000670 n

end

end A343583.P16202526636296304569

/-! ## A343583.P8847859236939267441

`record[A122101(n)]-A000629(n)`
-/

namespace A343583.P8847859236939267441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000629 n

end

end A343583.P8847859236939267441

/-! ## A343583.P17092539784131386917

`record[A154921(n)]-A000629(n)`
-/

namespace A343583.P17092539784131386917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000629 n

end

end A343583.P17092539784131386917

/-! ## A343583.P18102341193044749028

`A000670(n+1)-A000629(n)`
-/

namespace A343583.P18102341193044749028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1) - A000629 n

end

end A343583.P18102341193044749028

/-! ## A343583.P11403303655715564010

`A162509(n+1)-A000670(n+1)`
-/

namespace A343583.P11403303655715564010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162509 (n + 1) - A000670 (n + 1)

end

end A343583.P11403303655715564010

/-! ## A343583.P6510510443392198888

`A327868(2*n+1)-A000629(n)`
-/

namespace A343583.P6510510443392198888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327868 (2 * n + 1) - A000629 n

end

end A343583.P6510510443392198888

/-! ## A343583.P15384572928070008744

`A052856(n+1)-(A052856(n)+A000670(n))`
-/

namespace A343583.P15384572928070008744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 (n + 1) - (A052856 n + A000670 n)

end

end A343583.P15384572928070008744

/-! ## A343583.P1717325488735068636

`A002050(n+1)-(A002050(n)+A000670(n+1))`
-/

namespace A343583.P1717325488735068636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002050 (n + 1) - (A002050 n + A000670 (n + 1))

end

end A343583.P1717325488735068636

/-!
# A343584: a(n) = Sum_{j=0..n}(-1)^(n-j)*binomial(n, j)*A028246(n+1, j+1).

The programs for A343584, there is no canonical definition to state claims against.
-/

/-! ## A343584.P763642243442868192

`A344053(n+1)/(n+1)`
-/

namespace A343584.P763642243442868192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344053 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A343584.P763642243442868192

/-!
# A343585: a(n) = A081411(n) mod prime(n+1).

The programs for A343585, the canonical program `A343585.P14449006963565787706` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343585 has offset 1).

The definition of A343585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343585.P9946047175037754589

`A154279(2*n+5)%p?[2*n+1]`
-/

namespace A343585.P9946047175037754589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154279 (2 * n + 5)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A343585.P9946047175037754589

namespace A343585

/-- `A154279(2*n+5)%p?[2*n+1]` -/
def P9946047175037754589.Spec : Prop :=
  ∀ n, P9946047175037754589.a n = A343585 (n + 1)

end A343585

/-! ## A343585.P14449006963565787706

`A081411(n+1)%p?[A005408(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A343585

/-- `A081411(n+1)%p?[A005408(n)]` -/
def P14449006963565787706.Spec : Prop :=
  ∀ n, P14449006963565787706.a n = A343585 (n + 1)

theorem P14449006963565787706.correct : P14449006963565787706.Spec := by
  intro n
  simp only [A343585, Nat.add_sub_cancel]

end A343585

/-! ## A343585.P7069987922276914198

`∏[A001223(n+1)]%p?[A005408(n)]`
-/

namespace A343585.P7069987922276914198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A343585.P7069987922276914198

namespace A343585

/-- `∏[A001223(n+1)]%p?[A005408(n)]` -/
def P7069987922276914198.Spec : Prop :=
  ∀ n, P7069987922276914198.a n = A343585 (n + 1)

end A343585

/-! ## A343585.P7924020006797435950

`∏[log2(A218075(n+1))]%A065091(n+1)`
-/

namespace A343585.P7924020006797435950
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (A065091 (n + 1))

end

end A343585.P7924020006797435950

namespace A343585

/-- `∏[log2(A218075(n+1))]%A065091(n+1)` -/
def P7924020006797435950.Spec : Prop :=
  ∀ n, P7924020006797435950.a n = A343585 (n + 1)

end A343585

/-! ## A343585.P4502635051052191807

`∏[Δ[A006093(n+1)]]%A045344(n+1)`
-/

namespace A343585.P4502635051052191807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A045344 (n + 1))

end

end A343585.P4502635051052191807

namespace A343585

/-- `∏[Δ[A006093(n+1)]]%A045344(n+1)` -/
def P4502635051052191807.Spec : Prop :=
  ∀ n, P4502635051052191807.a n = A343585 (n + 1)

end A343585

/-! ## A343585.P10604972950448106511

`∏[Δ[A008864(n+1)]]%A045344(n+1)`
-/

namespace A343585.P10604972950448106511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A045344 (n + 1))

end

end A343585.P10604972950448106511

namespace A343585

/-- `∏[Δ[A008864(n+1)]]%A045344(n+1)` -/
def P10604972950448106511.Spec : Prop :=
  ∀ n, P10604972950448106511.a n = A343585 (n + 1)

end A343585

/-! ## A343585.P10251310123467246321

`∏[Δ[A000040(n+1)]]%A000040(n+2)`
-/

namespace A343585.P10251310123467246321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 2))

end

end A343585.P10251310123467246321

namespace A343585

/-- `∏[Δ[A000040(n+1)]]%A000040(n+2)` -/
def P10251310123467246321.Spec : Prop :=
  ∀ n, P10251310123467246321.a n = A343585 (n + 1)

end A343585

/-! ## A343585.P3466505913731792081

`∏[A219606(A005408(n))]%A065091(n+1)`
-/

namespace A343585.P3466505913731792081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A065091 (n + 1))

end

end A343585.P3466505913731792081

namespace A343585

/-- `∏[A219606(A005408(n))]%A065091(n+1)` -/
def P3466505913731792081.Spec : Prop :=
  ∀ n, P3466505913731792081.a n = A343585 (n + 1)

end A343585

/-! ## A343585.P16422948452505081751

`∏[A000040(n+2)-A000040(n+1)]%A065091(n+1)`
-/

namespace A343585.P16422948452505081751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A065091 (n + 1))

end

end A343585.P16422948452505081751

namespace A343585

/-- `∏[A000040(n+2)-A000040(n+1)]%A065091(n+1)` -/
def P16422948452505081751.Spec : Prop :=
  ∀ n, P16422948452505081751.a n = A343585 (n + 1)

end A343585

/-! ## A343585.P2147606033238247914

`∏[A000040(n+2)%A000040((n+1)%(n+2))]%A065091(n+1)`
-/

namespace A343585.P2147606033238247914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) (A000040 ((n + 1) % (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A065091 (n + 1))

end

end A343585.P2147606033238247914

namespace A343585

/-- `∏[A000040(n+2)%A000040((n+1)%(n+2))]%A065091(n+1)` -/
def P2147606033238247914.Spec : Prop :=
  ∀ n, P2147606033238247914.a n = A343585 (n + 1)

end A343585

/-!
# A343586: a(n) = the sum of all the multiples of 2 or 5 less than or equal to 10^n.

The programs for A343586, the canonical program `A343586.P5121072670929812608` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343586 has offset 1).

The definition of A343586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343586.P5121072670929812608

`10^n*(3*10^(n+1)+5)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A343586

/-- `10^n*(3*10^(n+1)+5)` -/
def P5121072670929812608.Spec : Prop :=
  ∀ n, (P5121072670929812608.a n : ℤ) = A343586 (n + 1)

theorem P5121072670929812608.correct : P5121072670929812608.Spec := by
  intro n
  simp only [A343586, Nat.add_sub_cancel]

end A343586

/-!
# A343588: Sums of two odd fourth powers.

The programs for A343588, there is no canonical definition to state claims against.
-/

/-! ## A343588.P14399926025017299101

`A003336(eq[2, and(2, A003336(n+1))]+1)`
-/

namespace A343588.P14399926025017299101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A003336 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A343588.P14399926025017299101

/-! ## A343588.P9625655598225478376

`A004831(eq[2, and(2, A004831(n+1))]+1)`
-/

namespace A343588.P9625655598225478376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A004831 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A343588.P9625655598225478376

/-! ## A343588.P6265080604418309238

`∩[A003336(n+1), A097269(n+1)]`
-/

namespace A343588.P6265080604418309238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343588.P6265080604418309238

/-! ## A343588.P4691969368870698522

`∩[A004831(n+1), A097269(n+1)]`
-/

namespace A343588.P4691969368870698522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343588.P4691969368870698522

/-!
# A343589: Smallest prime of the form n^k-(n-1) or 0 if no such prime exists.

The programs for A343589, there is no canonical definition to state claims against.
-/

/-! ## A343589.P12878186478496311436

`(n+2)^A113516(n+2)-(n+1)`
-/

namespace A343589.P12878186478496311436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A113516 (n + 2) : ℤ) - (n + 1 : ℚ)

end

end A343589.P12878186478496311436

/-!
# A343590: Undulating alternating primes.

The programs for A343590, there is no canonical definition to state claims against.
-/

/-! ## A343590.P5323686906986799652

`∩[A030144(n+1), A059168(n+1)]`
-/

namespace A343590.P5323686906986799652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343590.P5323686906986799652

/-! ## A343590.P2296629625614537935

`∩[A030141(n+1), A059168(n+1)]`
-/

namespace A343590.P2296629625614537935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343590.P2296629625614537935

/-! ## A343590.P7029133573872189299

`filter[A059168(n+1), A228710(#)]`
-/

namespace A343590.P7029133573872189299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A343590.P7029133573872189299

/-! ## A343590.P5104995154018823721

`∩[A059168(n+1), A343238(n+1)]`
-/

namespace A343590.P5104995154018823721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343590.P5104995154018823721

/-! ## A343590.P10326834267329279945

`∩[A059168(n+1), A355596(n+1)]`
-/

namespace A343590.P10326834267329279945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343590.P10326834267329279945

/-!
# A343591: Smoothly undulating alternating primes.

The programs for A343591, there is no canonical definition to state claims against.
-/

/-! ## A343591.P929154445787162738

`∩[A030291(n+1), A343590(n+1)]`
-/

namespace A343591.P929154445787162738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343591.P929154445787162738

/-! ## A343591.P7844865642045590835

`∩[A033619(n+1), A343590(n+1)]`
-/

namespace A343591.P7844865642045590835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343591.P7844865642045590835

/-! ## A343591.P12736312247847740753

`∩[A030144(n+1), A030291(n+1)]`
-/

namespace A343591.P12736312247847740753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343591.P12736312247847740753

/-! ## A343591.P690656926846583130

`∩[A030144(n+1), A033619(n+1)]`
-/

namespace A343591.P690656926846583130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343591.P690656926846583130

/-! ## A343591.P3765479172319110675

`∩[A030141(n+1), A030291(n+1)]`
-/

namespace A343591.P3765479172319110675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343591.P3765479172319110675

/-!
# A343593: a(n) is the smallest number k > 0 such that n! + n + k is prime.

The programs for A343593, there is no canonical definition to state claims against.
-/

/-! ## A343593.P9626641661158431033

`A090786(n)+1`
-/

namespace A343593.P9626641661158431033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090786 n + 1

end

end A343593.P9626641661158431033

/-! ## A343593.P16492501116384273827

`A037153(n+1-a(2%n))-n` with `a(0)=1`
-/

namespace A343593.P16492501116384273827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037153 ((n + 1 : ℤ) - a (2 % n)).toNat - (n : ℤ)

end

end A343593.P16492501116384273827

/-! ## A343593.P2601247257417363686

`A037153(round(acot(n)+n))-round(acot(n)+n)`
-/

namespace A343593.P2601247257417363686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037153 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

end

end A343593.P2601247257417363686

/-! ## A343593.P14847828128114392118

`A037153(abs(1-n)+1)-(abs(1-n)+1)`
-/

namespace A343593.P14847828128114392118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037153 (|1 - (n : ℤ)| + 1).toNat - (|1 - (n : ℤ)| + 1)

end

end A343593.P14847828128114392118

/-! ## A343593.P12002154585812745066

`A008619(2*A090786(n))`
-/

namespace A343593.P12002154585812745066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A090786 n).toNat

end

end A343593.P12002154585812745066

/-! ## A343593.P13427083347136454208

`A027656(2*A090786(n))`
-/

namespace A343593.P13427083347136454208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A090786 n).toNat

end

end A343593.P13427083347136454208

/-! ## A343593.P1698844493995748108

`A028242(2*A090786(n))`
-/

namespace A343593.P1698844493995748108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A090786 n).toNat

end

end A343593.P1698844493995748108

/-! ## A343593.P7365453732848610505

`A029579(2*A090786(n))`
-/

namespace A343593.P7365453732848610505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A090786 n).toNat

end

end A343593.P7365453732848610505

/-! ## A343593.P2415685430510916003

`2-(A007318(and(1, -n))-A090786(n))`
-/

namespace A343593.P2415685430510916003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Int.land 1 (-(n : ℤ))).toNat - A090786 n)

end

end A343593.P2415685430510916003

/-!
# A343595: a(n) is the number of axially symmetric tilings of the order-n Aztec Diamond by square tetrominoes and Z-shaped tetrominoes, not counting rotations and reflections as distinct.

The programs for A343595, there is no canonical definition to state claims against.
-/

/-! ## A343595.P4107510510749340256

`A053604(n)+A005185(A000255(n))`
-/

namespace A343595.P4107510510749340256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053604 n + A005185 (A000255 n).toNat

end

end A343595.P4107510510749340256

/-! ## A343595.P10152712447663435864

`A213206(n)+A002264(A060014(n))`
-/

namespace A343595.P10152712447663435864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213206 n + A002264 (A060014 n).toNat

end

end A343595.P10152712447663435864

/-! ## A343595.P848524008517387455

`A123919(A225635(n+1)+A060014(n))`
-/

namespace A343595.P848524008517387455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A225635 (n + 1) + A060014 n).toNat

end

end A343595.P848524008517387455

/-!
# A343597: Numbers divisible by a 7-smooth composite number.

The programs for A343597, there is no canonical definition to state claims against.
-/

/-! ## A343597.P7423399871114832918

`lt[A348290(A014673(n+1)), A001222(n+1)]+1`
-/

namespace A343597.P7423399871114832918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348290 (A014673 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343597.P7423399871114832918

/-! ## A343597.P12015598771757349802

`lt[A162325(n+1), A041025(A086971(n+1))]+1`
-/

namespace A343597.P12015598771757349802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041025 (A086971 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343597.P12015598771757349802

/-! ## A343597.P1929727428134389024

`lt[A032742(n+1), A322436(n+1)²]+1`
-/

namespace A343597.P1929727428134389024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322436 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343597.P1929727428134389024

/-! ## A343597.P13946677077951763855

`lt[A125121(n+1), A358137(n+1)]+1`
-/

namespace A343597.P13946677077951763855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343597.P13946677077951763855

/-! ## A343597.P1124200907955993766

`lt[A304714(A006530(n+1)), A122810(n+1)]+1`
-/

namespace A343597.P1124200907955993766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304714 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343597.P1124200907955993766

/-!
# A343599: T(n,k) is the coordination number of the (n+1)-dimensional cubic lattice for radius k; triangle read by rows, n>=0, 0<=k<=n.

The programs for A343599, there is no canonical definition to state claims against.
-/

/-! ## A343599.P17071043456349551241

`A110171(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A343599.P17071043456349551241
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110171 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A343599.P17071043456349551241

/-! ## A343599.P8471727074166873433

`A035607(A245300(n))`
-/

namespace A343599.P8471727074166873433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A245300 n).toNat

end

end A343599.P8471727074166873433

/-! ## A343599.P7170502514385999811

`A035607(floor(A214661(n+1)/2))`
-/

namespace A343599.P7170502514385999811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 ⌊(A214661 (n + 1) : ℚ) / 2⌋.toNat

end

end A343599.P7170502514385999811

/-! ## A343599.P3978380638446536293

`A266213(A245300(A007401(n+1)))`
-/

namespace A343599.P3978380638446536293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A245300 (A007401 (n + 1)).toNat).toNat

end

end A343599.P3978380638446536293

/-! ## A343599.P15603179068852380168

`A113413(A245300(n)+A025581(n))`
-/

namespace A343599.P15603179068852380168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (A245300 n + A025581 n).toNat

end

end A343599.P15603179068852380168

/-! ## A343599.P6647937192931058679

`A249252(A245300(n))/A059268(n)`
-/

namespace A343599.P6647937192931058679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249252 (A245300 n).toNat : ℚ) / (A059268 n : ℚ)

end

end A343599.P6647937192931058679

/-! ## A343599.P5672448949525270372

`A113413(A245300(n)+A025660(n+1))`
-/

namespace A343599.P5672448949525270372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (A245300 n + A025660 (n + 1)).toNat

end

end A343599.P5672448949525270372

