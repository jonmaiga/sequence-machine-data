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
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
# A045800: 0-ish numbers (end in 01, 07, 43, 49).

The programs for A045800, the canonical program `A045800.P13217515848922479530` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045800 has offset 1).

The definition of A045800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045800.P13217515848922479530

`A045805(n+1)-50`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045800

/-- `A045805(n+1)-50` -/
def P13217515848922479530.Spec : Prop :=
  ∀ n, P13217515848922479530.a n = A045800 (n + 1)

theorem P13217515848922479530.correct : P13217515848922479530.Spec := by
  intro n
  simp only [A045800, Nat.add_sub_cancel]

end A045800

/-! ## A045800.P15888005014108282763

`(A045805(n+1)+A045802(n+1))%A045807(n+1)`
-/

namespace A045800.P15888005014108282763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045805 (n + 1) + A045802 (n + 1)) (A045807 (n + 1))

end

end A045800.P15888005014108282763

namespace A045800

/-- `(A045805(n+1)+A045802(n+1))%A045807(n+1)` -/
def P15888005014108282763.Spec : Prop :=
  ∀ n, P15888005014108282763.a n = A045800 (n + 1)

end A045800

/-! ## A045800.P14406071015342891466

`(A045805(n+1)+A045803(n+1))%A045808(n+1)`
-/

namespace A045800.P14406071015342891466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045805 (n + 1) + A045803 (n + 1)) (A045808 (n + 1))

end

end A045800.P14406071015342891466

namespace A045800

/-- `(A045805(n+1)+A045803(n+1))%A045808(n+1)` -/
def P14406071015342891466.Spec : Prop :=
  ∀ n, P14406071015342891466.a n = A045800 (n + 1)

end A045800

/-! ## A045800.P7692253366060965422

`A045803(n+1)+A045809(n+2)-A045807(n+1)`
-/

namespace A045800.P7692253366060965422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1) + (A045809 (n + 2) - A045807 (n + 1))

end

end A045800.P7692253366060965422

namespace A045800

/-- `A045803(n+1)+A045809(n+2)-A045807(n+1)` -/
def P7692253366060965422.Spec : Prop :=
  ∀ n, P7692253366060965422.a n = A045800 (n + 1)

end A045800

/-! ## A045800.P14066650063656164334

`A045802(n+1)+A045809(n+2)-A045801(n+2)`
-/

namespace A045800.P14066650063656164334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) + (A045809 (n + 2) - A045801 (n + 2))

end

end A045800.P14066650063656164334

namespace A045800

/-- `A045802(n+1)+A045809(n+2)-A045801(n+2)` -/
def P14066650063656164334.Spec : Prop :=
  ∀ n, P14066650063656164334.a n = A045800 (n + 1)

end A045800

/-! ## A045800.P15432948190537568304

`A376506(A047454(n+1))`
-/

namespace A045800.P15432948190537568304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (A047454 (n + 1)).toNat

end

end A045800.P15432948190537568304

namespace A045800

/-- `A376506(A047454(n+1))` -/
def P15432948190537568304.Spec : Prop :=
  ∀ n, P15432948190537568304.a n = A045800 (n + 1)

end A045800

/-! ## A045800.P1990135279867082040

`∩[A045797(n+1), A056021(n+1)]`
-/

namespace A045800.P1990135279867082040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045800.P1990135279867082040

namespace A045800

/-- `∩[A045797(n+1), A056021(n+1)]` -/
def P1990135279867082040.Spec : Prop :=
  ∀ n, (P1990135279867082040.a n : ℤ) = A045800 (n + 1)

end A045800

/-! ## A045800.P956901279776594278

`∩[A045797(n+1), A376506(n+1)]`
-/

namespace A045800.P956901279776594278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045800.P956901279776594278

namespace A045800

/-- `∩[A045797(n+1), A376506(n+1)]` -/
def P956901279776594278.Spec : Prop :=
  ∀ n, (P956901279776594278.a n : ℤ) = A045800 (n + 1)

end A045800

/-! ## A045800.P18277129409252900100

`A045805(A016861(n))%A053742(n)`
-/

namespace A045800.P18277129409252900100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045805 (A016861 n).toNat) (A053742 n)

end

end A045800.P18277129409252900100

namespace A045800

/-- `A045805(A016861(n))%A053742(n)` -/
def P18277129409252900100.Spec : Prop :=
  ∀ n, P18277129409252900100.a n = A045800 (n + 1)

end A045800

/-! ## A045800.P8153853541514094001

`record[A032742(A045802(A007417(n+1)))]`
-/

namespace A045800.P8153853541514094001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A045802 (A007417 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045800.P8153853541514094001

namespace A045800

/-- `record[A032742(A045802(A007417(n+1)))]` -/
def P8153853541514094001.Spec : Prop :=
  ∀ n, P8153853541514094001.a n = A045800 (n + 1)

end A045800

/-!
# A045801: 1-ish numbers (end in 11, 39, 73, 77).

The programs for A045801, the canonical program `A045801.P11584886425184963967` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045801 has offset 1).

The definition of A045801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045801.P11584886425184963967

`A259750(A106249(5*n+2))-A109613(5*n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045801

/-- `A259750(A106249(5*n+2))-A109613(5*n+2)` -/
def P11584886425184963967.Spec : Prop :=
  ∀ n, P11584886425184963967.a n = A045801 (n + 1)

theorem P11584886425184963967.correct : P11584886425184963967.Spec := by
  intro n
  simp only [A045801, Nat.add_sub_cancel]

end A045801

/-! ## A045801.P8485304309953209787

`A045800(4*n+6)%(1-A045798(5*n+6))`
-/

namespace A045801.P8485304309953209787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045800 (4 * n + 6)) (1 - A045798 (5 * n + 6))

end

end A045801.P8485304309953209787

namespace A045801

/-- `A045800(4*n+6)%(1-A045798(5*n+6))` -/
def P8485304309953209787.Spec : Prop :=
  ∀ n, P8485304309953209787.a n = A045801 (n + 1)

end A045801

/-! ## A045801.P12255623360244674957

`A047235(A045797(3*(n+1)))-A045797(4*(n+1))`
-/

namespace A045801.P12255623360244674957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (A045797 (3 * (n + 1))).toNat - A045797 (4 * (n + 1))

end

end A045801.P12255623360244674957

namespace A045801

/-- `A047235(A045797(3*(n+1)))-A045797(4*(n+1))` -/
def P12255623360244674957.Spec : Prop :=
  ∀ n, P12255623360244674957.a n = A045801 (n + 1)

end A045801

/-! ## A045801.P3743248979351339118

`A045809(3*n+2)-A005843(A045809(n+1))`
-/

namespace A045801.P3743248979351339118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045809 (3 * n + 2) - A005843 (A045809 (n + 1)).toNat

end

end A045801.P3743248979351339118

namespace A045801

/-- `A045809(3*n+2)-A005843(A045809(n+1))` -/
def P3743248979351339118.Spec : Prop :=
  ∀ n, P3743248979351339118.a n = A045801 (n + 1)

end A045801

/-!
# A045802: 2-ish numbers (end in 03, 21, 29, 47).

The programs for A045802, the canonical program `A045802.P13742995632997141911` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045802 has offset 1).

The definition of A045802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045802.P13742995632997141911

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=21, a(2)=29, a(3)=47, a(4)=103`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045802

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P13742995632997141911.Spec : Prop :=
  ∀ n, P13742995632997141911.a n = A045802 (n + 1)

theorem P13742995632997141911.correct : P13742995632997141911.Spec := by
  intro n
  simp only [A045802, Nat.add_sub_cancel]

end A045802

/-! ## A045802.P2228057011270858005

`A045803(n+1)+A045809(n+2)-A045805(n+1)`
-/

namespace A045802.P2228057011270858005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1) + (A045809 (n + 2) - A045805 (n + 1))

end

end A045802.P2228057011270858005

namespace A045802

/-- `A045803(n+1)+A045809(n+2)-A045805(n+1)` -/
def P2228057011270858005.Spec : Prop :=
  ∀ n, P2228057011270858005.a n = A045802 (n + 1)

end A045802

/-! ## A045802.P3008498031301065251

`A045800(n+1)+A045801(n+2)-A045809(n+2)`
-/

namespace A045802.P3008498031301065251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) + (A045801 (n + 2) - A045809 (n + 2))

end

end A045802.P3008498031301065251

namespace A045802

/-- `A045800(n+1)+A045801(n+2)-A045809(n+2)` -/
def P3008498031301065251.Spec : Prop :=
  ∀ n, P3008498031301065251.a n = A045802 (n + 1)

end A045802

/-! ## A045802.P3449952027720074343

`A045797(A045797(n+1)+n%2+1)`
-/

namespace A045802.P3449952027720074343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (A045797 (n + 1) + ((n % 2 : ℕ) : ℤ) + 1).toNat

end

end A045802.P3449952027720074343

namespace A045802

/-- `A045797(A045797(n+1)+n%2+1)` -/
def P3449952027720074343.Spec : Prop :=
  ∀ n, P3449952027720074343.a n = A045802 (n + 1)

end A045802

/-! ## A045802.P16229348177090209023

`A045797(A045797(n+1)+and(1, n)+1)`
-/

namespace A045802.P16229348177090209023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (A045797 (n + 1) + (Nat.land 1 n : ℤ) + 1).toNat

end

end A045802.P16229348177090209023

namespace A045802

/-- `A045797(A045797(n+1)+and(1, n)+1)` -/
def P16229348177090209023.Spec : Prop :=
  ∀ n, P16229348177090209023.a n = A045802 (n + 1)

end A045802

/-! ## A045802.P8880176065426389599

`A045797(A045797(n+1)+A000035(n)+1)`
-/

namespace A045802.P8880176065426389599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (A045797 (n + 1) + (A000035 n + 1)).toNat

end

end A045802.P8880176065426389599

namespace A045802

/-- `A045797(A045797(n+1)+A000035(n)+1)` -/
def P8880176065426389599.Spec : Prop :=
  ∀ n, P8880176065426389599.a n = A045802 (n + 1)

end A045802

/-! ## A045802.P17912750741220334339

`A045797(A045797(n+1)+A035263(n²+2)+1)`
-/

namespace A045802.P17912750741220334339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (A045797 (n + 1) + A035263 (n ^ 2 + 2) + 1).toNat

end

end A045802.P17912750741220334339

namespace A045802

/-- `A045797(A045797(n+1)+A035263(n²+2)+1)` -/
def P17912750741220334339.Spec : Prop :=
  ∀ n, P17912750741220334339.a n = A045802 (n + 1)

end A045802

/-!
# A045803: 3-ish numbers (end in 17, 19, 31, 33).

The programs for A045803, the canonical program `A045803.P1981501651766823381` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045803 has offset 1).

The definition of A045803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045803.P8983218210651429468

`A045808(n+1)-50`
-/

namespace A045803.P8983218210651429468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045808 (n + 1) - 50

end

end A045803.P8983218210651429468

namespace A045803

/-- `A045808(n+1)-50` -/
def P8983218210651429468.Spec : Prop :=
  ∀ n, P8983218210651429468.a n = A045803 (n + 1)

end A045803

/-! ## A045803.P10796431416102430022

`(A045808(n+1)+A045800(n+1))%A045805(n+1)`
-/

namespace A045803.P10796431416102430022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045808 (n + 1) + A045800 (n + 1)) (A045805 (n + 1))

end

end A045803.P10796431416102430022

namespace A045803

/-- `(A045808(n+1)+A045800(n+1))%A045805(n+1)` -/
def P10796431416102430022.Spec : Prop :=
  ∀ n, P10796431416102430022.a n = A045803 (n + 1)

end A045803

/-! ## A045803.P3262469513915132015

`(A045808(n+1)+A045802(n+1))%A045807(n+1)`
-/

namespace A045803.P3262469513915132015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045808 (n + 1) + A045802 (n + 1)) (A045807 (n + 1))

end

end A045803.P3262469513915132015

namespace A045803

/-- `(A045808(n+1)+A045802(n+1))%A045807(n+1)` -/
def P3262469513915132015.Spec : Prop :=
  ∀ n, P3262469513915132015.a n = A045803 (n + 1)

end A045803

/-! ## A045803.P1981501651766823381

`A045800(n+1)+A045807(n+1)-A045809(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045803

/-- `A045800(n+1)+A045807(n+1)-A045809(n+2)` -/
def P1981501651766823381.Spec : Prop :=
  ∀ n, P1981501651766823381.a n = A045803 (n + 1)

theorem P1981501651766823381.correct : P1981501651766823381.Spec := by
  intro n
  simp only [A045803, Nat.add_sub_cancel]

end A045803

/-! ## A045803.P12930438195496064245

`A045802(n+1)+A045805(n+1)-A045809(n+2)`
-/

namespace A045803.P12930438195496064245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) + (A045805 (n + 1) - A045809 (n + 2))

end

end A045803.P12930438195496064245

namespace A045803

/-- `A045802(n+1)+A045805(n+1)-A045809(n+2)` -/
def P12930438195496064245.Spec : Prop :=
  ∀ n, P12930438195496064245.a n = A045803 (n + 1)

end A045803

/-! ## A045803.P14671332088725876938

`record[A045805(n+1)/A020639(A045805(n+1))]`
-/

namespace A045803.P14671332088725876938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045805 (n + 1) : ℚ) / (A020639 (A045805 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045803.P14671332088725876938

namespace A045803

/-- `record[A045805(n+1)/A020639(A045805(n+1))]` -/
def P14671332088725876938.Spec : Prop :=
  ∀ n, P14671332088725876938.a n = (A045803 (n + 1) : ℚ)

end A045803

/-! ## A045803.P7798693334007651464

`record[A032742(A045805(n+1))]`
-/

namespace A045803.P7798693334007651464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A045805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045803.P7798693334007651464

namespace A045803

/-- `record[A032742(A045805(n+1))]` -/
def P7798693334007651464.Spec : Prop :=
  ∀ n, P7798693334007651464.a n = A045803 (n + 1)

end A045803

/-!
# A045804: 4-ish numbers (end in 09, 41, 63, 87).

The programs for A045804, the canonical program `A045804.P14689304370884465155` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045804 has offset 1).

The definition of A045804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045804.P15031449429796801855

`A045806(n+1)+A045800(n+2)-A045802(n+2)`
-/

namespace A045804.P15031449429796801855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045806 (n + 1) + (A045800 (n + 2) - A045802 (n + 2))

end

end A045804.P15031449429796801855

namespace A045804

/-- `A045806(n+1)+A045800(n+2)-A045802(n+2)` -/
def P15031449429796801855.Spec : Prop :=
  ∀ n, P15031449429796801855.a n = A045804 (n + 1)

end A045804

/-! ## A045804.P14689304370884465155

`A045800(n+2)+A045802(n+2)-A045803(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045804

/-- `A045800(n+2)+A045802(n+2)-A045803(n+2)` -/
def P14689304370884465155.Spec : Prop :=
  ∀ n, P14689304370884465155.a n = A045804 (n + 1)

theorem P14689304370884465155.correct : P14689304370884465155.Spec := by
  intro n
  simp only [A045804, Nat.add_sub_cancel]

end A045804

/-! ## A045804.P14804139896397636978

`A045806(A016789(n))/3`
-/

namespace A045804.P14804139896397636978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045806 (A016789 n).toNat : ℚ) / 3

end

end A045804.P14804139896397636978

namespace A045804

/-- `A045806(A016789(n))/3` -/
def P14804139896397636978.Spec : Prop :=
  ∀ n, P14804139896397636978.a n = (A045804 (n + 1) : ℚ)

end A045804

/-! ## A045804.P8161636170206622431

`A045797(5*n+4)`
-/

namespace A045804.P8161636170206622431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (5 * n + 4)

end

end A045804.P8161636170206622431

namespace A045804

/-- `A045797(5*n+4)` -/
def P8161636170206622431.Spec : Prop :=
  ∀ n, P8161636170206622431.a n = A045804 (n + 1)

end A045804

/-! ## A045804.P7994409027356240514

`or(1, A045797(A016897(n)))`
-/

namespace A045804.P7994409027356240514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045797 (A016897 n).toNat)

end

end A045804.P7994409027356240514

namespace A045804

/-- `or(1, A045797(A016897(n)))` -/
def P7994409027356240514.Spec : Prop :=
  ∀ n, P7994409027356240514.a n = A045804 (n + 1)

end A045804

/-! ## A045804.P13696606165891285705

`A045797(A016897(n))%A217776(n)`
-/

namespace A045804.P13696606165891285705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045797 (A016897 n).toNat) (A217776 n)

end

end A045804.P13696606165891285705

namespace A045804

/-- `A045797(A016897(n))%A217776(n)` -/
def P13696606165891285705.Spec : Prop :=
  ∀ n, P13696606165891285705.a n = A045804 (n + 1)

end A045804

/-! ## A045804.P10673540218454989551

`A033999(n)+A002081(A090772(n+1))`
-/

namespace A045804.P10673540218454989551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A002081 (A090772 (n + 1)).toNat

end

end A045804.P10673540218454989551

namespace A045804

/-- `A033999(n)+A002081(A090772(n+1))` -/
def P10673540218454989551.Spec : Prop :=
  ∀ n, P10673540218454989551.a n = A045804 (n + 1)

end A045804

/-!
# A045805: 5-ish numbers (end in 51, 57, 93, 99).

The programs for A045805, the canonical program `A045805.P3302398566296495507` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045805 has offset 1).

The definition of A045805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045805.P3302398566296495507

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=51, a(1)=57, a(2)=93, a(3)=99, a(4)=151`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045805

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P3302398566296495507.Spec : Prop :=
  ∀ n, P3302398566296495507.a n = A045805 (n + 1)

theorem P3302398566296495507.correct : P3302398566296495507.Spec := by
  intro n
  simp only [A045805, Nat.add_sub_cancel]

end A045805

/-! ## A045805.P2847344318105121048

`A045800(n+1)+50`
-/

namespace A045805.P2847344318105121048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) + 50

end

end A045805.P2847344318105121048

namespace A045805

/-- `A045800(n+1)+50` -/
def P2847344318105121048.Spec : Prop :=
  ∀ n, P2847344318105121048.a n = A045805 (n + 1)

end A045805

/-! ## A045805.P6124308278769418725

`A045803(n+1)+A045809(n+2)-A045802(n+1)`
-/

namespace A045805.P6124308278769418725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1) + (A045809 (n + 2) - A045802 (n + 1))

end

end A045805.P6124308278769418725

namespace A045805

/-- `A045803(n+1)+A045809(n+2)-A045802(n+1)` -/
def P6124308278769418725.Spec : Prop :=
  ∀ n, P6124308278769418725.a n = A045805 (n + 1)

end A045805

/-! ## A045805.P9037576607337537406

`A045803(n+1)+A045809(n+2)-A045807(n+1)+50`
-/

namespace A045805.P9037576607337537406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1) + (A045809 (n + 2) - A045807 (n + 1)) + 50

end

end A045805.P9037576607337537406

namespace A045805

/-- `A045803(n+1)+A045809(n+2)-A045807(n+1)+50` -/
def P9037576607337537406.Spec : Prop :=
  ∀ n, P9037576607337537406.a n = A045805 (n + 1)

end A045805

/-! ## A045805.P3249070305043363012

`A045802(n+1)+A045809(n+2)-A045801(n+2)+50`
-/

namespace A045805.P3249070305043363012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) + (A045809 (n + 2) - A045801 (n + 2)) + 50

end

end A045805.P3249070305043363012

namespace A045805

/-- `A045802(n+1)+A045809(n+2)-A045801(n+2)+50` -/
def P3249070305043363012.Spec : Prop :=
  ∀ n, P3249070305043363012.a n = A045805 (n + 1)

end A045805

/-! ## A045805.P16059396523564142696

`A376506(A047575(n+2))`
-/

namespace A045805.P16059396523564142696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (A047575 (n + 2)).toNat

end

end A045805.P16059396523564142696

namespace A045805

/-- `A376506(A047575(n+2))` -/
def P16059396523564142696.Spec : Prop :=
  ∀ n, P16059396523564142696.a n = A045805 (n + 1)

end A045805

/-! ## A045805.P8509947623776100716

`∩[A045798(n+1), A056021(n+1)]`
-/

namespace A045805.P8509947623776100716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045805.P8509947623776100716

namespace A045805

/-- `∩[A045798(n+1), A056021(n+1)]` -/
def P8509947623776100716.Spec : Prop :=
  ∀ n, (P8509947623776100716.a n : ℤ) = A045805 (n + 1)

end A045805

/-! ## A045805.P15303281098793097174

`∩[A045798(n+1), A376506(n+1)]`
-/

namespace A045805.P15303281098793097174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045805.P15303281098793097174

namespace A045805

/-- `∩[A045798(n+1), A376506(n+1)]` -/
def P15303281098793097174.Spec : Prop :=
  ∀ n, (P15303281098793097174.a n : ℤ) = A045805 (n + 1)

end A045805

/-! ## A045805.P10130642641524717622

`∩[A376303(n+1), A376506(n+1)]`
-/

namespace A045805.P10130642641524717622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045805.P10130642641524717622

namespace A045805

/-- `∩[A376303(n+1), A376506(n+1)]` -/
def P10130642641524717622.Spec : Prop :=
  ∀ n, (P10130642641524717622.a n : ℤ) = A045805 (n + 1)

end A045805

/-! ## A045805.P7004064047797327252

`filter[A376506(n+1), A144607(#)]`
-/

namespace A045805.P7004064047797327252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144607 (f1 j).toNat = 1) n)

end

end A045805.P7004064047797327252

namespace A045805

/-- `filter[A376506(n+1), A144607(#)]` -/
def P7004064047797327252.Spec : Prop :=
  ∀ n, P7004064047797327252.a n = A045805 (n + 1)

end A045805

/-!
# A045806: 6-ish numbers (end in 23, 27, 61, 89).

The programs for A045806, the canonical program `A045806.P9728619306561941735` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045806 has offset 1).

The definition of A045806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045806.P9728619306561941735

`2*A045802(n+2)-A045803(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045806

/-- `2*A045802(n+2)-A045803(n+2)` -/
def P9728619306561941735.Spec : Prop :=
  ∀ n, P9728619306561941735.a n = A045806 (n + 1)

theorem P9728619306561941735.correct : P9728619306561941735.Spec := by
  intro n
  simp only [A045806, Nat.add_sub_cancel]

end A045806

/-! ## A045806.P16894225635619600766

`A045804(n+1)+A045802(n+2)-A045800(n+2)`
-/

namespace A045806.P16894225635619600766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (n + 1) + (A045802 (n + 2) - A045800 (n + 2))

end

end A045806.P16894225635619600766

namespace A045806

/-- `A045804(n+1)+A045802(n+2)-A045800(n+2)` -/
def P16894225635619600766.Spec : Prop :=
  ∀ n, P16894225635619600766.a n = A045806 (n + 1)

end A045806

/-! ## A045806.P17194399212474133568

`A045802(n+2)+A045807(n+2)-A045808(n+2)`
-/

namespace A045806.P17194399212474133568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 2) + (A045807 (n + 2) - A045808 (n + 2))

end

end A045806.P17194399212474133568

namespace A045806

/-- `A045802(n+2)+A045807(n+2)-A045808(n+2)` -/
def P17194399212474133568.Spec : Prop :=
  ∀ n, P17194399212474133568.a n = A045806 (n + 1)

end A045806

/-! ## A045806.P7166732687256913001

`A045801(n+3)-50`
-/

namespace A045806.P7166732687256913001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045801 (n + 3) - 50

end

end A045806.P7166732687256913001

namespace A045806

/-- `A045801(n+3)-50` -/
def P7166732687256913001.Spec : Prop :=
  ∀ n, P7166732687256913001.a n = A045806 (n + 1)

end A045806

/-! ## A045806.P2175942547176104177

`A045804(3*n+2)-(A045804(n+1)+A045804(n+1))`
-/

namespace A045806.P2175942547176104177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045804 (3 * n + 2) - (A045804 (n + 1) + A045804 (n + 1))

end

end A045806.P2175942547176104177

namespace A045806

/-- `A045804(3*n+2)-(A045804(n+1)+A045804(n+1))` -/
def P2175942547176104177.Spec : Prop :=
  ∀ n, P2175942547176104177.a n = A045806 (n + 1)

end A045806

/-! ## A045806.P4483227741174391826

`A045809(A016861(n+2))%A045809(n+3)`
-/

namespace A045806.P4483227741174391826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045809 (A016861 (n + 2)).toNat) (A045809 (n + 3))

end

end A045806.P4483227741174391826

namespace A045806

/-- `A045809(A016861(n+2))%A045809(n+3)` -/
def P4483227741174391826.Spec : Prop :=
  ∀ n, P4483227741174391826.a n = A045806 (n + 1)

end A045806

/-! ## A045806.P9107007320055324839

`A016777(A045798(3*n+1))-A045798(4*n+1)`
-/

namespace A045806.P9107007320055324839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A045798 (3 * n + 1)).toNat - A045798 (4 * n + 1)

end

end A045806.P9107007320055324839

namespace A045806

/-- `A016777(A045798(3*n+1))-A045798(4*n+1)` -/
def P9107007320055324839.Spec : Prop :=
  ∀ n, P9107007320055324839.a n = A045806 (n + 1)

end A045806

/-!
# A045807: 7-ish numbers (end in 53, 71, 79, 97).

The programs for A045807, the canonical program `A045807.P14634665121537317793` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045807 has offset 1).

The definition of A045807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045807.P14634665121537317793

`A045802(n+1)+50`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045807

/-- `A045802(n+1)+50` -/
def P14634665121537317793.Spec : Prop :=
  ∀ n, P14634665121537317793.a n = A045807 (n + 1)

theorem P14634665121537317793.correct : P14634665121537317793.Spec := by
  intro n
  simp only [A045807, Nat.add_sub_cancel]

end A045807

/-! ## A045807.P2984159572264913007

`A045803(n+1)+A045809(n+2)-A045800(n+1)`
-/

namespace A045807.P2984159572264913007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045803 (n + 1) + (A045809 (n + 2) - A045800 (n + 1))

end

end A045807.P2984159572264913007

namespace A045807

/-- `A045803(n+1)+A045809(n+2)-A045800(n+1)` -/
def P2984159572264913007.Spec : Prop :=
  ∀ n, P2984159572264913007.a n = A045807 (n + 1)

end A045807

/-! ## A045807.P198676510854461362

`A045805(n+1)+A045801(n+2)-A045809(n+2)`
-/

namespace A045807.P198676510854461362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045805 (n + 1) + (A045801 (n + 2) - A045809 (n + 2))

end

end A045807.P198676510854461362

namespace A045807

/-- `A045805(n+1)+A045801(n+2)-A045809(n+2)` -/
def P198676510854461362.Spec : Prop :=
  ∀ n, P198676510854461362.a n = A045807 (n + 1)

end A045807

/-! ## A045807.P16609803048453364493

`A045798(A214865(n+1)+1+n)`
-/

namespace A045807.P16609803048453364493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (A214865 (n + 1) + 1 + (n : ℤ)).toNat

end

end A045807.P16609803048453364493

namespace A045807

/-- `A045798(A214865(n+1)+1+n)` -/
def P16609803048453364493.Spec : Prop :=
  ∀ n, P16609803048453364493.a n = A045807 (n + 1)

end A045807

/-! ## A045807.P3428997935829312479

`A045798(and(or(n, -2), A045798(n+1)))`
-/

namespace A045807.P3428997935829312479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (Int.land (Int.lor (n : ℤ) (-2)) (A045798 (n + 1))).toNat

end

end A045807.P3428997935829312479

namespace A045807

/-- `A045798(and(or(n, -2), A045798(n+1)))` -/
def P3428997935829312479.Spec : Prop :=
  ∀ n, P3428997935829312479.a n = A045807 (n + 1)

end A045807

/-! ## A045807.P17900817176761388894

`A045798(A045798(n+1)-char[2*n])`
-/

namespace A045807.P17900817176761388894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (A045798 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A045807.P17900817176761388894

namespace A045807

/-- `A045798(A045798(n+1)-char[2*n])` -/
def P17900817176761388894.Spec : Prop :=
  ∀ n, P17900817176761388894.a n = A045807 (n + 1)

end A045807

/-! ## A045807.P3665464349085933487

`A045798(xor((n+1)%2, A045798(n+1)))`
-/

namespace A045807.P3665464349085933487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (Int.xor (((n + 1) % 2 : ℕ) : ℤ) (A045798 (n + 1))).toNat

end

end A045807.P3665464349085933487

namespace A045807

/-- `A045798(xor((n+1)%2, A045798(n+1)))` -/
def P3665464349085933487.Spec : Prop :=
  ∀ n, P3665464349085933487.a n = A045807 (n + 1)

end A045807

/-! ## A045807.P5789171045707797903

`A045798(xor(A045798(n+1), A059841(n)))`
-/

namespace A045807.P5789171045707797903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (Int.xor (A045798 (n + 1)) (A059841 n)).toNat

end

end A045807.P5789171045707797903

namespace A045807

/-- `A045798(xor(A045798(n+1), A059841(n)))` -/
def P5789171045707797903.Spec : Prop :=
  ∀ n, P5789171045707797903.a n = A045807 (n + 1)

end A045807

/-!
# A045808: 8-ish numbers (end in 67, 69, 81, 83).

The programs for A045808, the canonical program `A045808.P2297659605663347739` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045808 has offset 1).

The definition of A045808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045808.P2297659605663347739

`A045803(n+1)+50`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045808

/-- `A045803(n+1)+50` -/
def P2297659605663347739.Spec : Prop :=
  ∀ n, P2297659605663347739.a n = A045808 (n + 1)

theorem P2297659605663347739.correct : P2297659605663347739.Spec := by
  intro n
  simp only [A045808, Nat.add_sub_cancel]

end A045808

/-! ## A045808.P2267074682576035478

`A045800(n+1)+A045807(n+1)-A045809(n+2)+50`
-/

namespace A045808.P2267074682576035478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) + (A045807 (n + 1) - A045809 (n + 2)) + 50

end

end A045808.P2267074682576035478

namespace A045808

/-- `A045800(n+1)+A045807(n+1)-A045809(n+2)+50` -/
def P2267074682576035478.Spec : Prop :=
  ∀ n, P2267074682576035478.a n = A045808 (n + 1)

end A045808

/-! ## A045808.P6474529581902291320

`A045802(n+1)+A045805(n+1)-A045809(n+2)+50`
-/

namespace A045808.P6474529581902291320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045802 (n + 1) + (A045805 (n + 1) - A045809 (n + 2)) + 50

end

end A045808.P6474529581902291320

namespace A045808

/-- `A045802(n+1)+A045805(n+1)-A045809(n+2)+50` -/
def P6474529581902291320.Spec : Prop :=
  ∀ n, P6474529581902291320.a n = A045808 (n + 1)

end A045808

/-! ## A045808.P15209062208205067916

`record[A045805(n+1)/A020639(A045805(n+1))]+50`
-/

namespace A045808.P15209062208205067916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045805 (n + 1) : ℚ) / (A020639 (A045805 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 50

end

end A045808.P15209062208205067916

namespace A045808

/-- `record[A045805(n+1)/A020639(A045805(n+1))]+50` -/
def P15209062208205067916.Spec : Prop :=
  ∀ n, P15209062208205067916.a n = (A045808 (n + 1) : ℚ)

end A045808

/-! ## A045808.P6450355981230528473

`record[A032742(A045805(n+1))]+50`
-/

namespace A045808.P6450355981230528473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A045805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 50

end

end A045808.P6450355981230528473

namespace A045808

/-- `record[A032742(A045805(n+1))]+50` -/
def P6450355981230528473.Spec : Prop :=
  ∀ n, P6450355981230528473.a n = A045808 (n + 1)

end A045808

/-! ## A045808.P6861132512254716437

`record[A032742(A045800(n+9))]`
-/

namespace A045808.P6861132512254716437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A045800 (n + 9)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045808.P6861132512254716437

namespace A045808

/-- `record[A032742(A045800(n+9))]` -/
def P6861132512254716437.Spec : Prop :=
  ∀ n, P6861132512254716437.a n = A045808 (n + 1)

end A045808

/-!
# A045809: 9-ish numbers (end in 13, 37, 59, 91).

The programs for A045809, the canonical program `A045809.P3612081277584244881` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045809 has offset 1).

The definition of A045809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045809.P3612081277584244881

`A045797(n+2)+2*(10*n+5)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045809

/-- `A045797(n+2)+2*(10*n+5)` -/
def P3612081277584244881.Spec : Prop :=
  ∀ n, P3612081277584244881.a n = A045809 (n + 1)

theorem P3612081277584244881.correct : P3612081277584244881.Spec := by
  intro n
  simp only [A045809, Nat.add_sub_cancel]

end A045809

/-! ## A045809.P18335910706834574649

`A017365(2*n)+A045797(n+2)+2`
-/

namespace A045809.P18335910706834574649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 (2 * n) + (A045797 (n + 2) + 2)

end

end A045809.P18335910706834574649

namespace A045809

/-- `A017365(2*n)+A045797(n+2)+2` -/
def P18335910706834574649.Spec : Prop :=
  ∀ n, P18335910706834574649.a n = A045809 (n + 1)

end A045809

/-! ## A045809.P17111123319881717396

`A063226(A047209(n+1))+A299250(n+1)+A090771(n+1)`
-/

namespace A045809.P17111123319881717396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A047209 (n + 1)).toNat + (A299250 (n + 1) + A090771 (n + 1))

end

end A045809.P17111123319881717396

namespace A045809

/-- `A063226(A047209(n+1))+A299250(n+1)+A090771(n+1)` -/
def P17111123319881717396.Spec : Prop :=
  ∀ n, P17111123319881717396.a n = A045809 (n + 1)

end A045809

/-! ## A045809.P11518675756607231870

`A045801(A016789(n))/3`
-/

namespace A045809.P11518675756607231870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045801 (A016789 n).toNat : ℚ) / 3

end

end A045809.P11518675756607231870

namespace A045809

/-- `A045801(A016789(n))/3` -/
def P11518675756607231870.Spec : Prop :=
  ∀ n, P11518675756607231870.a n = (A045809 (n + 1) : ℚ)

end A045809

/-! ## A045809.P6073284628691037550

`A045798(5*n+2)`
-/

namespace A045809.P6073284628691037550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (5 * n + 2)

end

end A045809.P6073284628691037550

namespace A045809

/-- `A045798(5*n+2)` -/
def P6073284628691037550.Spec : Prop :=
  ∀ n, P6073284628691037550.a n = A045809 (n + 1)

end A045809

/-! ## A045809.P2175250374223927482

`∩[A045798(n+1), A312935(n)]`
-/

namespace A045809.P2175250374223927482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045809.P2175250374223927482

namespace A045809

/-- `∩[A045798(n+1), A312935(n)]` -/
def P2175250374223927482.Spec : Prop :=
  ∀ n, (P2175250374223927482.a n : ℤ) = A045809 (n + 1)

end A045809

/-!
# A045812: Number of times the digits are repeated in A045811.

The programs for A045812, there is no canonical definition to state claims against.
-/

/-! ## A045812.P15800899806799118063

`A181819(A208175(n+3)+A003596(n+1))`
-/

namespace A045812.P15800899806799118063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A208175 (n + 3) + A003596 (n + 1)).toNat

end

end A045812.P15800899806799118063

/-!
# A045819: Theta series of E_8 lattice with respect to midpoint of edge.

The programs for A045819, the canonical program `A045819.P6609454256046327521` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045819 has offset 0).

The definition of A045819 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045823, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045819.P6609454256046327521

`2*A045823(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045819

/-- `2*A045823(n)` -/
def P6609454256046327521.Spec : Prop :=
  ∀ n, P6609454256046327521.a n = A045819 n

theorem P6609454256046327521.correct : P6609454256046327521.Spec := by
  intro n
  simp only [A045819]

end A045819

/-! ## A045819.P531252171438011242

`2*∑{d}[Δ[n²], #^3]`
-/

namespace A045819.P531252171438011242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3)

end

end A045819.P531252171438011242

namespace A045819

/-- `2*∑{d}[Δ[n²], #^3]` -/
def P531252171438011242.Spec : Prop :=
  ∀ n, (P531252171438011242.a n : ℤ) = A045819 n

end A045819

/-! ## A045819.P3063724801968735159

`∑{d}[2*n+1, 2*#*#²]`
-/

namespace A045819.P3063724801968735159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), 2 * (d * d ^ 2)

end

end A045819.P3063724801968735159

namespace A045819

/-- `∑{d}[2*n+1, 2*#*#²]` -/
def P3063724801968735159.Spec : Prop :=
  ∀ n, (P3063724801968735159.a n : ℤ) = A045819 n

end A045819

/-! ## A045819.P7210715007487324234

`A318937(n)/8`
-/

namespace A045819.P7210715007487324234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318937 n : ℚ) / 8

end

end A045819.P7210715007487324234

namespace A045819

/-- `A318937(n)/8` -/
def P7210715007487324234.Spec : Prop :=
  ∀ n, P7210715007487324234.a n = (A045819 n : ℚ)

end A045819

/-! ## A045819.P10746867849778855269

`2*(A045820(n)-A030211(n))`
-/

namespace A045819.P10746867849778855269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045820 n - A030211 n)

end

end A045819.P10746867849778855269

namespace A045819

/-- `2*(A045820(n)-A030211(n))` -/
def P10746867849778855269.Spec : Prop :=
  ∀ n, P10746867849778855269.a n = A045819 n

end A045819

/-! ## A045819.P3904892671379877558

`A045820(n)+A045823(n)-A030211(n)`
-/

namespace A045819.P3904892671379877558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045820 n + (A045823 n - A030211 n)

end

end A045819.P3904892671379877558

namespace A045819

/-- `A045820(n)+A045823(n)-A030211(n)` -/
def P3904892671379877558.Spec : Prop :=
  ∀ n, P3904892671379877558.a n = A045819 n

end A045819

/-! ## A045819.P515364784744437774

`2*A001158(Δ[n²])`
-/

namespace A045819.P515364784744437774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001158 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045819.P515364784744437774

namespace A045819

/-- `2*A001158(Δ[n²])` -/
def P515364784744437774.Spec : Prop :=
  ∀ n, P515364784744437774.a n = A045819 n

end A045819

/-! ## A045819.P16795223936594889483

`2*A007331(Δ[n²])`
-/

namespace A045819.P16795223936594889483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045819.P16795223936594889483

namespace A045819

/-- `2*A007331(Δ[n²])` -/
def P16795223936594889483.Spec : Prop :=
  ∀ n, P16795223936594889483.a n = A045819 n

end A045819

/-! ## A045819.P504933008012899160

`2*A008457(Δ[n²])`
-/

namespace A045819.P504933008012899160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008457 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045819.P504933008012899160

namespace A045819

/-- `2*A008457(Δ[n²])` -/
def P504933008012899160.Spec : Prop :=
  ∀ n, P504933008012899160.a n = A045819 n

end A045819

/-! ## A045819.P13559144076540178211

`2*A051000(Δ[n²])`
-/

namespace A045819.P13559144076540178211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045819.P13559144076540178211

namespace A045819

/-- `2*A051000(Δ[n²])` -/
def P13559144076540178211.Spec : Prop :=
  ∀ n, P13559144076540178211.a n = A045819 n

end A045819

/-! ## A045819.P13638253966837063624

`2*A078307(Δ[n²])`
-/

namespace A045819.P13638253966837063624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045819.P13638253966837063624

namespace A045819

/-- `2*A078307(Δ[n²])` -/
def P13638253966837063624.Spec : Prop :=
  ∀ n, P13638253966837063624.a n = A045819 n

end A045819

/-! ## A045819.P14105639336415952572

`2*A138503(Δ[n²])`
-/

namespace A045819.P14105639336415952572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138503 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045819.P14105639336415952572

namespace A045819

/-- `2*A138503(Δ[n²])` -/
def P14105639336415952572.Spec : Prop :=
  ∀ n, P14105639336415952572.a n = A045819 n

end A045819

/-! ## A045819.P8379198805251998572

`2*A204386(Δ[n²])`
-/

namespace A045819.P8379198805251998572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045819.P8379198805251998572

namespace A045819

/-- `2*A204386(Δ[n²])` -/
def P8379198805251998572.Spec : Prop :=
  ∀ n, P8379198805251998572.a n = A045819 n

end A045819

/-! ## A045819.P5489564541658359353

`2*A321559(Δ[n²])`
-/

namespace A045819.P5489564541658359353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321559 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045819.P5489564541658359353

namespace A045819

/-- `2*A321559(Δ[n²])` -/
def P5489564541658359353.Spec : Prop :=
  ∀ n, P5489564541658359353.a n = A045819 n

end A045819

/-! ## A045819.P1834055303415384936

`A045825(2*n+1)/4`
-/

namespace A045819.P1834055303415384936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045825 (2 * n + 1) : ℚ) / 4

end

end A045819.P1834055303415384936

namespace A045819

/-- `A045825(2*n+1)/4` -/
def P1834055303415384936.Spec : Prop :=
  ∀ n, P1834055303415384936.a n = (A045819 n : ℚ)

end A045819

/-! ## A045819.P8504158589296433818

`A000143(2*n+1)/8`
-/

namespace A045819.P8504158589296433818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000143 (2 * n + 1) : ℚ) / 8

end

end A045819.P8504158589296433818

namespace A045819

/-- `A000143(2*n+1)/8` -/
def P8504158589296433818.Spec : Prop :=
  ∀ n, P8504158589296433818.a n = (A045819 n : ℚ)

end A045819

/-! ## A045819.P16020666668846068425

`A004017(2*n+1)/8`
-/

namespace A045819.P16020666668846068425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004017 (2 * n + 1) : ℚ) / 8

end

end A045819.P16020666668846068425

namespace A045819

/-- `A004017(2*n+1)/8` -/
def P16020666668846068425.Spec : Prop :=
  ∀ n, P16020666668846068425.a n = (A045819 n : ℚ)

end A045819

/-! ## A045819.P2423467039045903648

`A008427(2*n+1)/8`
-/

namespace A045819.P2423467039045903648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008427 (2 * n + 1) : ℚ) / 8

end

end A045819.P2423467039045903648

namespace A045819

/-- `A008427(2*n+1)/8` -/
def P2423467039045903648.Spec : Prop :=
  ∀ n, P2423467039045903648.a n = (A045819 n : ℚ)

end A045819

/-! ## A045819.P9815743685996295762

`2*sqrt(A356534(2*n+1))`
-/

namespace A045819.P9815743685996295762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A356534 (2 * n + 1) : ℝ)

end

end A045819.P9815743685996295762

namespace A045819

/-- `2*sqrt(A356534(2*n+1))` -/
def P9815743685996295762.Spec : Prop :=
  ∀ n, P9815743685996295762.a n = (A045819 n : ℝ)

end A045819

/-! ## A045819.P16893307013802499743

`abs(A035016(2*n+1)/8)`
-/

namespace A045819.P16893307013802499743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A035016 (2 * n + 1) : ℚ) / 8|

end

end A045819.P16893307013802499743

namespace A045819

/-- `abs(A035016(2*n+1)/8)` -/
def P16893307013802499743.Spec : Prop :=
  ∀ n, P16893307013802499743.a n = (A045819 n : ℚ)

end A045819

/-!
# A045820: Theta series of D8 lattice with respect to midpoint of edge.

The programs for A045820, there is no canonical definition to state claims against.
-/

/-! ## A045820.P16413299042357301245

`2*A045822(n)`
-/

namespace A045820.P16413299042357301245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045822 n

end

end A045820.P16413299042357301245

/-! ## A045820.P12067552907777443191

`A045823(n)+A030211(n)`
-/

namespace A045820.P12067552907777443191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045823 n + A030211 n

end

end A045820.P12067552907777443191

/-! ## A045820.P14612754858680709764

`A030211(n)+A001158(2*n+1)`
-/

namespace A045820.P14612754858680709764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030211 n + A001158 (2 * n + 1)

end

end A045820.P14612754858680709764

/-! ## A045820.P4074611445117997225

`A030211(n)+A007331(2*n+1)`
-/

namespace A045820.P4074611445117997225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030211 n + A007331 (2 * n + 1)

end

end A045820.P4074611445117997225

/-! ## A045820.P322279437792333384

`A030211(n)+A008457(2*n+1)`
-/

namespace A045820.P322279437792333384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030211 n + A008457 (2 * n + 1)

end

end A045820.P322279437792333384

/-! ## A045820.P656615575518906623

`A051000(2*n+1)+A030211(n)`
-/

namespace A045820.P656615575518906623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (2 * n + 1) + A030211 n

end

end A045820.P656615575518906623

/-! ## A045820.P6245960532074151551

`A138503(2*n+1)+A030211(n)`
-/

namespace A045820.P6245960532074151551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138503 (2 * n + 1) + A030211 n

end

end A045820.P6245960532074151551

/-!
# A045821: Numerical distance between m-th and (n+m)-th circles in a loxodromic sequence of circles in which each 4 consecutive circles touch.

The programs for A045821, the canonical program `A045821.P16474708015242231336` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045821 has offset 0).

The definition of A045821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045821.P16474708015242231336

`2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045821

/-- `2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` -/
def P16474708015242231336.Spec : Prop :=
  ∀ n, P16474708015242231336.a n = A045821 n

theorem P16474708015242231336.correct : P16474708015242231336.Spec := by
  intro n
  simp only [A045821]

end A045821

/-! ## A045821.P850260563737104042

`A317973(n)-A138573(n)`
-/

namespace A045821.P850260563737104042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317973 n - A138573 n

end

end A045821.P850260563737104042

namespace A045821

/-- `A317973(n)-A138573(n)` -/
def P850260563737104042.Spec : Prop :=
  ∀ n, P850260563737104042.a n = A045821 n

end A045821

/-! ## A045821.P15984639219963323149

`A138573(n)-A192234(n+1)`
-/

namespace A045821.P15984639219963323149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 n - A192234 (n + 1)

end

end A045821.P15984639219963323149

namespace A045821

/-- `A138573(n)-A192234(n+1)` -/
def P15984639219963323149.Spec : Prop :=
  ∀ n, P15984639219963323149.a n = A045821 n

end A045821

/-! ## A045821.P10637226530658615319

`A206625(2*n)-A192234(n+1)`
-/

namespace A045821.P10637226530658615319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (2 * n) - A192234 (n + 1)

end

end A045821.P10637226530658615319

namespace A045821

/-- `A206625(2*n)-A192234(n+1)` -/
def P10637226530658615319.Spec : Prop :=
  ∀ n, P10637226530658615319.a n = A045821 n

end A045821

/-! ## A045821.P16033615205337152032

`A317973(n)-(A317974(n+1)+A317974(n))`
-/

namespace A045821.P16033615205337152032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317973 n - (A317974 (n + 1) + A317974 n)

end

end A045821.P16033615205337152032

namespace A045821

/-- `A317973(n)-(A317974(n+1)+A317974(n))` -/
def P16033615205337152032.Spec : Prop :=
  ∀ n, P16033615205337152032.a n = A045821 n

end A045821

/-! ## A045821.P6271255366314317730

`A317974(n+1)+A192234(n)-A317975(n+1)`
-/

namespace A045821.P6271255366314317730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 (n + 1) + (A192234 n - A317975 (n + 1))

end

end A045821.P6271255366314317730

namespace A045821

/-- `A317974(n+1)+A192234(n)-A317975(n+1)` -/
def P6271255366314317730.Spec : Prop :=
  ∀ n, P6271255366314317730.a n = A045821 n

end A045821

/-! ## A045821.P4000065019521873292

`A317974(n+1)+A317974(n)-A192234(n+1)`
-/

namespace A045821.P4000065019521873292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 (n + 1) + (A317974 n - A192234 (n + 1))

end

end A045821.P4000065019521873292

namespace A045821

/-- `A317974(n+1)+A317974(n)-A192234(n+1)` -/
def P4000065019521873292.Spec : Prop :=
  ∀ n, P4000065019521873292.a n = A045821 n

end A045821

/-! ## A045821.P6539691572865766038

`Δ[Δ[A192234(n)/2]]`
-/

namespace A045821.P6539691572865766038
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192234 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045821.P6539691572865766038

namespace A045821

/-- `Δ[Δ[A192234(n)/2]]` -/
def P6539691572865766038.Spec : Prop :=
  ∀ n, P6539691572865766038.a n = (A045821 n : ℚ)

end A045821

/-!
# A045822: a(n) = A045820(n)/2.

The programs for A045822, there is no canonical definition to state claims against.
-/

/-! ## A045822.P4069671310902320511

`A045820(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045822.P4069671310902320511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045820 n : ℚ) / 2

end

end A045822.P4069671310902320511

/-! ## A045822.P6457312943020243386

`(A045823(n)+A030211(n))/2`
-/

namespace A045822.P6457312943020243386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045823 n + A030211 n : ℚ) / 2

end

end A045822.P6457312943020243386

/-! ## A045822.P17228863438198575753

`2^A008683(A020484(n))*A045820(n)`
-/

namespace A045822.P17228863438198575753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) * (A045820 n : ℚ)

end

end A045822.P17228863438198575753

/-! ## A045822.P5059009326896655786

`(A030211(n)+A001158(2*n+1))/2`
-/

namespace A045822.P5059009326896655786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030211 n + A001158 (2 * n + 1) : ℚ) / 2

end

end A045822.P5059009326896655786

/-! ## A045822.P5042945546634555426

`(A030211(n)+A007331(2*n+1))/2`
-/

namespace A045822.P5042945546634555426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030211 n + A007331 (2 * n + 1) : ℚ) / 2

end

end A045822.P5042945546634555426

/-! ## A045822.P4427955562887667799

`(A030211(n)+A008457(2*n+1))/2`
-/

namespace A045822.P4427955562887667799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030211 n + A008457 (2 * n + 1) : ℚ) / 2

end

end A045822.P4427955562887667799

/-! ## A045822.P12518257013690795783

`(A138503(2*n+1)+A030211(n))/2`
-/

namespace A045822.P12518257013690795783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138503 (2 * n + 1) + A030211 n : ℚ) / 2

end

end A045822.P12518257013690795783

/-! ## A045822.P9096477866797110764

`(A051000(A004280(n+2))+A030211(n))/2`
-/

namespace A045822.P9096477866797110764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051000 (A004280 (n + 2)).toNat + A030211 n : ℚ) / 2

end

end A045822.P9096477866797110764

/-! ## A045822.P15441679557386566638

`2^A008683(A003629(n+1))*A045820(n)`
-/

namespace A045822.P15441679557386566638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) * (A045820 n : ℚ)

end

end A045822.P15441679557386566638

/-! ## A045822.P4473879915559981774

`(A051000(A016825(n))+A030211(n))/2`
-/

namespace A045822.P4473879915559981774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051000 (A016825 n).toNat + A030211 n : ℚ) / 2

end

end A045822.P4473879915559981774

/-! ## A045822.P8690048814165821820

`(A051000(A017113(n))+A030211(n))/2`
-/

namespace A045822.P8690048814165821820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051000 (A017113 n).toNat + A030211 n : ℚ) / 2

end

end A045822.P8690048814165821820

/-!
# A045823: a(n) = sigma_3(2*n+1).

The programs for A045823, the canonical program `A045823.P1738146074447716157` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045823 has offset 0).

The definition of A045823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045823.P1738146074447716157

`∑{d}[Δ[n²], #^3]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045823

/-- `∑{d}[Δ[n²], #^3]` -/
def P1738146074447716157.Spec : Prop :=
  ∀ n, (P1738146074447716157.a n : ℤ) = A045823 n

theorem P1738146074447716157.correct : P1738146074447716157.Spec := by
  intro n
  simp only [A045823]

end A045823

/-! ## A045823.P12888670563566601584

`abs(∑{d}[2*n+1, (-#)^3])`
-/

namespace A045823.P12888670563566601584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ)) ^ 3|

end

end A045823.P12888670563566601584

namespace A045823

/-- `abs(∑{d}[2*n+1, (-#)^3])` -/
def P12888670563566601584.Spec : Prop :=
  ∀ n, P12888670563566601584.a n = A045823 n

end A045823

/-! ## A045823.P13868025754576544873

`-∑{d}[2*n+1, (-#)^3]`
-/

namespace A045823.P13868025754576544873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ)) ^ 3)

end

end A045823.P13868025754576544873

namespace A045823

/-- `-∑{d}[2*n+1, (-#)^3]` -/
def P13868025754576544873.Spec : Prop :=
  ∀ n, P13868025754576544873.a n = A045823 n

end A045823

/-! ## A045823.P11880695612133744671

`floor(∑{d}[2*n+1, #^4/#])`
-/

namespace A045823.P11880695612133744671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (d ^ 4 : ℚ) / (d : ℚ)⌋

end

end A045823.P11880695612133744671

namespace A045823

/-- `floor(∑{d}[2*n+1, #^4/#])` -/
def P11880695612133744671.Spec : Prop :=
  ∀ n, P11880695612133744671.a n = A045823 n

end A045823

/-! ## A045823.P8251032672829122448

`ceil(∑{d}[2*n+1, #^4/#])`
-/

namespace A045823.P8251032672829122448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (d ^ 4 : ℚ) / (d : ℚ)⌉

end

end A045823.P8251032672829122448

namespace A045823

/-- `ceil(∑{d}[2*n+1, #^4/#])` -/
def P8251032672829122448.Spec : Prop :=
  ∀ n, P8251032672829122448.a n = A045823 n

end A045823

/-! ## A045823.P8662840015472926487

`round(∑{d}[2*n+1, #^4/#])`
-/

namespace A045823.P8662840015472926487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d ^ 4 : ℚ) / (d : ℚ))

end

end A045823.P8662840015472926487

namespace A045823

/-- `round(∑{d}[2*n+1, #^4/#])` -/
def P8662840015472926487.Spec : Prop :=
  ∀ n, P8662840015472926487.a n = A045823 n

end A045823

/-! ## A045823.P6881602033137337124

`2*2*∑{d}[2*n+1, #^3]/4`
-/

namespace A045823.P6881602033137337124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((2 * (∑ d ∈ Nat.divisors (f1 n), d ^ 3) : ℕ) : ℚ) / 4)

end

end A045823.P6881602033137337124

namespace A045823

/-- `2*2*∑{d}[2*n+1, #^3]/4` -/
def P6881602033137337124.Spec : Prop :=
  ∀ n, P6881602033137337124.a n = (A045823 n : ℚ)

end A045823

/-! ## A045823.P10870934976058948294

`A045819(n)/2`
-/

namespace A045823.P10870934976058948294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045819 n : ℚ) / 2

end

end A045823.P10870934976058948294

namespace A045823

/-- `A045819(n)/2` -/
def P10870934976058948294.Spec : Prop :=
  ∀ n, P10870934976058948294.a n = (A045823 n : ℚ)

end A045823

/-! ## A045823.P727681873819998711

`A045820(n)-A030211(n)`
-/

namespace A045823.P727681873819998711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045820 n - A030211 n

end

end A045823.P727681873819998711

namespace A045823

/-- `A045820(n)-A030211(n)` -/
def P727681873819998711.Spec : Prop :=
  ∀ n, P727681873819998711.a n = A045823 n

end A045823

/-! ## A045823.P16664231625751568558

`A001158(Δ[n²])`
-/

namespace A045823.P16664231625751568558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045823.P16664231625751568558

namespace A045823

/-- `A001158(Δ[n²])` -/
def P16664231625751568558.Spec : Prop :=
  ∀ n, P16664231625751568558.a n = A045823 n

end A045823

/-! ## A045823.P3344570823071663600

`A007331(Δ[n²])`
-/

namespace A045823.P3344570823071663600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045823.P3344570823071663600

namespace A045823

/-- `A007331(Δ[n²])` -/
def P3344570823071663600.Spec : Prop :=
  ∀ n, P3344570823071663600.a n = A045823 n

end A045823

/-! ## A045823.P16336789806824721685

`A008457(Δ[n²])`
-/

namespace A045823.P16336789806824721685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008457 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045823.P16336789806824721685

namespace A045823

/-- `A008457(Δ[n²])` -/
def P16336789806824721685.Spec : Prop :=
  ∀ n, P16336789806824721685.a n = A045823 n

end A045823

/-! ## A045823.P13892265051142731692

`A051000(Δ[n²])`
-/

namespace A045823.P13892265051142731692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045823.P13892265051142731692

namespace A045823

/-- `A051000(Δ[n²])` -/
def P13892265051142731692.Spec : Prop :=
  ∀ n, P13892265051142731692.a n = A045823 n

end A045823

/-! ## A045823.P13112777836453618304

`A078307(Δ[n²])`
-/

namespace A045823.P13112777836453618304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045823.P13112777836453618304

namespace A045823

/-- `A078307(Δ[n²])` -/
def P13112777836453618304.Spec : Prop :=
  ∀ n, P13112777836453618304.a n = A045823 n

end A045823

/-! ## A045823.P4895738448930437812

`A138503(Δ[n²])`
-/

namespace A045823.P4895738448930437812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138503 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045823.P4895738448930437812

namespace A045823

/-- `A138503(Δ[n²])` -/
def P4895738448930437812.Spec : Prop :=
  ∀ n, P4895738448930437812.a n = A045823 n

end A045823

/-! ## A045823.P4772769622884230164

`A204386(Δ[n²])`
-/

namespace A045823.P4772769622884230164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045823.P4772769622884230164

namespace A045823

/-- `A204386(Δ[n²])` -/
def P4772769622884230164.Spec : Prop :=
  ∀ n, P4772769622884230164.a n = A045823 n

end A045823

/-! ## A045823.P3909780035736572713

`A321559(Δ[n²])`
-/

namespace A045823.P3909780035736572713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321559 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A045823.P3909780035736572713

namespace A045823

/-- `A321559(Δ[n²])` -/
def P3909780035736572713.Spec : Prop :=
  ∀ n, P3909780035736572713.a n = A045823 n

end A045823

/-! ## A045823.P3719434241003459148

`A352049(Δ[n²])+1`
-/

namespace A045823.P3719434241003459148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352049 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A045823.P3719434241003459148

namespace A045823

/-- `A352049(Δ[n²])+1` -/
def P3719434241003459148.Spec : Prop :=
  ∀ n, P3719434241003459148.a n = A045823 n

end A045823

/-! ## A045823.P12120972001864662591

`abs(A138503(2*n+1))`
-/

namespace A045823.P12120972001864662591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138503 (2 * n + 1)|

end

end A045823.P12120972001864662591

namespace A045823

/-- `abs(A138503(2*n+1))` -/
def P12120972001864662591.Spec : Prop :=
  ∀ n, P12120972001864662591.a n = A045823 n

end A045823

/-! ## A045823.P9811465236642900572

`abs(A321559(2*n+1))`
-/

namespace A045823.P9811465236642900572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321559 (2 * n + 1)|

end

end A045823.P9811465236642900572

namespace A045823

/-- `abs(A321559(2*n+1))` -/
def P9811465236642900572.Spec : Prop :=
  ∀ n, P9811465236642900572.a n = A045823 n

end A045823

/-!
# A045824: a(n) = A004034(n)/16.

The programs for A045824, there is no canonical definition to state claims against.
-/

/-! ## A045824.P4174320103695431177

`A004034(n)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045824.P4174320103695431177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004034 n : ℚ) / 16

end

end A045824.P4174320103695431177

/-!
# A045825: a(n) = A004017(n)/2.

The programs for A045825, the canonical program `A045825.P18222400444078400137` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045825 has offset 1).

The definition of A045825 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004017, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045825.P18222400444078400137

`A004017(n+1)/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045825

/-- `A004017(n+1)/2` -/
def P18222400444078400137.Spec : Prop :=
  ∀ n, P18222400444078400137.a n = (A045825 (n + 1) : ℚ)

end A045825

/-! ## A045825.P17882755795761985408

`8*A007331(n+1)`
-/

namespace A045825.P17882755795761985408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A007331 (n + 1)

end

end A045825.P17882755795761985408

namespace A045825

/-- `8*A007331(n+1)` -/
def P17882755795761985408.Spec : Prop :=
  ∀ n, P17882755795761985408.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P9738644464699469156

`A091986(n+1)-A001158(n+1)`
-/

namespace A045825.P9738644464699469156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091986 (n + 1) - A001158 (n + 1)

end

end A045825.P9738644464699469156

namespace A045825

/-- `A091986(n+1)-A001158(n+1)` -/
def P9738644464699469156.Spec : Prop :=
  ∀ n, P9738644464699469156.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P12980098488174904420

`A352049(2*(n+1))`
-/

namespace A045825.P12980098488174904420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352049 (2 * (n + 1))

end

end A045825.P12980098488174904420

namespace A045825

/-- `A352049(2*(n+1))` -/
def P12980098488174904420.Spec : Prop :=
  ∀ n, P12980098488174904420.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P653995739179650

`A007331(n+2+n)`
-/

namespace A045825.P653995739179650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 2 + n)

end

end A045825.P653995739179650

namespace A045825

/-- `A007331(n+2+n)` -/
def P653995739179650.Spec : Prop :=
  ∀ n, P653995739179650.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P11785409036371237190

`A138503(n+1)+A008457(2*(n+1))`
-/

namespace A045825.P11785409036371237190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138503 (n + 1) + A008457 (2 * (n + 1))

end

end A045825.P11785409036371237190

namespace A045825

/-- `A138503(n+1)+A008457(2*(n+1))` -/
def P11785409036371237190.Spec : Prop :=
  ∀ n, P11785409036371237190.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P6271626231365234375

`A001158(2*(n+1))-A001158(n+1)`
-/

namespace A045825.P6271626231365234375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (2 * (n + 1)) - A001158 (n + 1)

end

end A045825.P6271626231365234375

namespace A045825

/-- `A001158(2*(n+1))-A001158(n+1)` -/
def P6271626231365234375.Spec : Prop :=
  ∀ n, P6271626231365234375.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P18233084806327896061

`A138503(n+1)-A138503(2*(n+1))`
-/

namespace A045825.P18233084806327896061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138503 (n + 1) - A138503 (2 * (n + 1))

end

end A045825.P18233084806327896061

namespace A045825

/-- `A138503(n+1)-A138503(2*(n+1))` -/
def P18233084806327896061.Spec : Prop :=
  ∀ n, P18233084806327896061.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P16683847827397436335

`A050466(2*(n+1))+A050462(2*(n+1))`
-/

namespace A045825.P16683847827397436335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050466 (2 * (n + 1)) + A050462 (2 * (n + 1))

end

end A045825.P16683847827397436335

namespace A045825

/-- `A050466(2*(n+1))+A050462(2*(n+1))` -/
def P16683847827397436335.Spec : Prop :=
  ∀ n, P16683847827397436335.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P3911834050016758633

`A050471(2*(n+1))+2*A050466(2*(n+1))`
-/

namespace A045825.P3911834050016758633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050471 (2 * (n + 1)) + 2 * A050466 (2 * (n + 1))

end

end A045825.P3911834050016758633

namespace A045825

/-- `A050471(2*(n+1))+2*A050466(2*(n+1))` -/
def P3911834050016758633.Spec : Prop :=
  ∀ n, P3911834050016758633.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P7083135798897180502

`(A078307(2*(n+1))+A001158(2*(n+1)))/2`
-/

namespace A045825.P7083135798897180502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078307 (2 * (n + 1)) + A001158 (2 * (n + 1)) : ℚ) / 2

end

end A045825.P7083135798897180502

namespace A045825

/-- `(A078307(2*(n+1))+A001158(2*(n+1)))/2` -/
def P7083135798897180502.Spec : Prop :=
  ∀ n, P7083135798897180502.a n = (A045825 (n + 1) : ℚ)

end A045825

/-! ## A045825.P11875668304425591594

`2*A050462(2*(n+1))-A050471(2*(n+1))`
-/

namespace A045825.P11875668304425591594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050462 (2 * (n + 1)) - A050471 (2 * (n + 1))

end

end A045825.P11875668304425591594

namespace A045825

/-- `2*A050462(2*(n+1))-A050471(2*(n+1))` -/
def P11875668304425591594.Spec : Prop :=
  ∀ n, P11875668304425591594.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P5037177138724258440

`abs(A002408(2*(n+1)))`
-/

namespace A045825.P5037177138724258440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002408 (2 * (n + 1))|

end

end A045825.P5037177138724258440

namespace A045825

/-- `abs(A002408(2*(n+1)))` -/
def P5037177138724258440.Spec : Prop :=
  ∀ n, P5037177138724258440.a n = A045825 (n + 1)

end A045825

/-! ## A045825.P13034032407158445641

`-A002408(comp[A006257(n)])`
-/

namespace A045825.P13034032407158445641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A045825.P13034032407158445641

namespace A045825

/-- `-A002408(comp[A006257(n)])` -/
def P13034032407158445641.Spec : Prop :=
  ∀ n, P13034032407158445641.a n = A045825 (n + 1)

end A045825

/-!
# A045826: a(n) = A005887(n) / 2.

The programs for A045826, there is no canonical definition to state claims against.
-/

/-! ## A045826.P8187223413484629543

`A005887(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045826.P8187223413484629543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005887 n : ℚ) / 2

end

end A045826.P8187223413484629543

/-! ## A045826.P11713296015044103224

`A001281(A005887(n))`
-/

namespace A045826.P11713296015044103224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005887 n).toNat

end

end A045826.P11713296015044103224

/-! ## A045826.P5671802830886433595

`A176040(n)*A246811(n)`
-/

namespace A045826.P5671802830886433595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n * A246811 n

end

end A045826.P5671802830886433595

/-! ## A045826.P15050603700034350902

`A005875(Δ[n²])/2`
-/

namespace A045826.P15050603700034350902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A045826.P15050603700034350902

/-! ## A045826.P1432804022662348841

`abs(A213384(2*n+1)/2)`
-/

namespace A045826.P1432804022662348841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A213384 (2 * n + 1) : ℚ) / 2|

end

end A045826.P1432804022662348841

/-! ## A045826.P7779265303606104666

`sqrt(A138202(2*n+1))/2`
-/

namespace A045826.P7779265303606104666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 (2 * n + 1) : ℝ) / 2

end

end A045826.P7779265303606104666

/-! ## A045826.P7246774204279363492

`floor(A005875(2*n+1)/2)`
-/

namespace A045826.P7246774204279363492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005875 (2 * n + 1) : ℚ) / 2⌋

end

end A045826.P7246774204279363492

/-! ## A045826.P15770302498399359710

`A001281(A005875(2*n+1))`
-/

namespace A045826.P15770302498399359710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005875 (2 * n + 1)).toNat

end

end A045826.P15770302498399359710

/-! ## A045826.P11629210499190127853

`1/2*A005875(A005408(n))`
-/

namespace A045826.P11629210499190127853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A005875 (A005408 n).toNat : ℚ)

end

end A045826.P11629210499190127853

/-! ## A045826.P16478662953948376645

`A004524(A005875(2*n+1)+1)`
-/

namespace A045826.P16478662953948376645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A005875 (2 * n + 1) + 1).toNat

end

end A045826.P16478662953948376645

/-! ## A045826.P16807714508438771597

`A110657(2*A005875(2*n+1))`
-/

namespace A045826.P16807714508438771597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A005875 (2 * n + 1)).toNat

end

end A045826.P16807714508438771597

/-! ## A045826.P11227193872473659252

`A110657(abs(2*A213384(2*n+1)))`
-/

namespace A045826.P11227193872473659252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 |2 * A213384 (2 * n + 1)|.toNat

end

end A045826.P11227193872473659252

/-! ## A045826.P7386154109638545725

`A213384(2*n+1)/(A000038(n+1)-2)`
-/

namespace A045826.P7386154109638545725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213384 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A045826.P7386154109638545725

/-! ## A045826.P10541054574421219934

`(A117609(2*n+1)-A117609(2*n))/2`
-/

namespace A045826.P10541054574421219934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117609 (2 * n + 1) - A117609 (2 * n) : ℚ) / 2

end

end A045826.P10541054574421219934

/-! ## A045826.P14780210816416480983

`lcm(A000034(n+1), A213384(2*n+1))/2`
-/

namespace A045826.P14780210816416480983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A213384 (2 * n + 1)) : ℚ) / 2

end

end A045826.P14780210816416480983

/-! ## A045826.P8804277339833894416

`A213384(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A045826.P8804277339833894416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213384 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A045826.P8804277339833894416

/-! ## A045826.P14032904582807630495

`(A246631(2*n+1)+A169783(2*n+1))/2`
-/

namespace A045826.P14032904582807630495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246631 (2 * n + 1) + A169783 (2 * n + 1) : ℚ) / 2

end

end A045826.P14032904582807630495

/-! ## A045826.P1368751437125284054

`gcd(A004013(2*n+1), A213384(2*n+1))/2`
-/

namespace A045826.P1368751437125284054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A004013 (2 * n + 1)) (A213384 (2 * n + 1)) : ℚ) / 2

end

end A045826.P1368751437125284054

/-! ## A045826.P3008831792457777280

`A004015(4*n+2)/2`
-/

namespace A045826.P3008831792457777280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004015 (4 * n + 2) : ℚ) / 2

end

end A045826.P3008831792457777280

/-! ## A045826.P566943896730124559

`A319078(2*n+1)/2*A132429(2*n)`
-/

namespace A045826.P566943896730124559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319078 (2 * n + 1) : ℚ) / 2 * (A132429 (2 * n) : ℚ)

end

end A045826.P566943896730124559

/-!
# A045827: a(n) = A005872(n)/6.

The programs for A045827, there is no canonical definition to state claims against.
-/

/-! ## A045827.P2419537577035242299

`A005872(n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045827.P2419537577035242299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005872 n : ℚ) / 6

end

end A045827.P2419537577035242299

/-! ## A045827.P5657592944575722890

`A008615(A005872(n))`
-/

namespace A045827.P5657592944575722890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A005872 n).toNat

end

end A045827.P5657592944575722890

/-! ## A045827.P9844523561699302425

`A008612(A005872(n)+1)`
-/

namespace A045827.P9844523561699302425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A005872 n + 1).toNat

end

end A045827.P9844523561699302425

/-! ## A045827.P13127756952235869121

`A103221(A005872(n)+1)`
-/

namespace A045827.P13127756952235869121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A005872 n + 1).toNat

end

end A045827.P13127756952235869121

/-! ## A045827.P285330073027583586

`A051724(2*A005872(n))`
-/

namespace A045827.P285330073027583586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (2 * A005872 n).toNat

end

end A045827.P285330073027583586

/-! ## A045827.P6085962026343972920

`A103221(or(1, A005872(n)))`
-/

namespace A045827.P6085962026343972920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor 1 (A005872 n)).toNat

end

end A045827.P6085962026343972920

/-! ## A045827.P4920356905763541782

`A008612(xor(1, A005872(n)))`
-/

namespace A045827.P4920356905763541782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.xor 1 (A005872 n)).toNat

end

end A045827.P4920356905763541782

/-! ## A045827.P15198287511698248407

`A255326(A005872(n)%A340244(n+1))`
-/

namespace A045827.P15198287511698248407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (Int.tmod (A005872 n) (A340244 (n + 1))).toNat

end

end A045827.P15198287511698248407

/-!
# A045828: One fourth of theta series of cubic lattice with respect to face.

The programs for A045828, there is no canonical definition to state claims against.
-/

/-! ## A045828.P3224056421593506316

`abs(A246815(n))`
-/

namespace A045828.P3224056421593506316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246815 n|

end

end A045828.P3224056421593506316

/-! ## A045828.P15492887355584159734

`abs(A246836(n))`
-/

namespace A045828.P15492887355584159734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246836 n|

end

end A045828.P15492887355584159734

/-! ## A045828.P14543096596672179151

`abs(A246953(n))`
-/

namespace A045828.P14543096596672179151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246953 n|

end

end A045828.P14543096596672179151

/-! ## A045828.P7438858038942747806

`A033999(n)*A246953(n)`
-/

namespace A045828.P7438858038942747806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246953 n

end

end A045828.P7438858038942747806

/-! ## A045828.P5117975779677635701

`A057077(n)*A246836(n)`
-/

namespace A045828.P5117975779677635701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A246836 n

end

end A045828.P5117975779677635701

/-! ## A045828.P16605413841498997553

`A087960(n)*A246815(n)`
-/

namespace A045828.P16605413841498997553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A246815 n

end

end A045828.P16605413841498997553

/-! ## A045828.P3673153821661957282

`gcd(A000038(n), A246815(n))`
-/

namespace A045828.P3673153821661957282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A246815 n)

end

end A045828.P3673153821661957282

/-! ## A045828.P17014500898433301553

`lcm(A000034(n), A246815(n))`
-/

namespace A045828.P17014500898433301553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A246815 n)

end

end A045828.P17014500898433301553

/-! ## A045828.P16673752480171429364

`lcm(A014695(n), A246836(n))`
-/

namespace A045828.P16673752480171429364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014695 n) (A246836 n)

end

end A045828.P16673752480171429364

/-! ## A045828.P4106407606158478838

`lcm(A014709(n), A246953(n))`
-/

namespace A045828.P4106407606158478838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A246953 n)

end

end A045828.P4106407606158478838

/-! ## A045828.P11635134719782353372

`A045834(n)*A246953(n)/A246954(n)`
-/

namespace A045828.P11635134719782353372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045834 n * A246953 n : ℚ) / (A246954 n : ℚ)

end

end A045828.P11635134719782353372

/-! ## A045828.P11568831370431499598

`A213625(n)/A246835(n)*A246953(n)`
-/

namespace A045828.P11568831370431499598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213625 n : ℚ) / (A246835 n : ℚ) * (A246953 n : ℚ)

end

end A045828.P11568831370431499598

/-! ## A045828.P8458473819060019130

`lcm(A033999(n)*A246836(n), A033999(n))`
-/

namespace A045828.P8458473819060019130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n * A246836 n) (A033999 n)

end

end A045828.P8458473819060019130

/-! ## A045828.P2692807184831201950

`A057077(n+1)*A246815(n)`
-/

namespace A045828.P2692807184831201950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A246815 n

end

end A045828.P2692807184831201950

/-! ## A045828.P18439134540564321822

`A033717(Δ[n²])/2`
-/

namespace A045828.P18439134540564321822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033717 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A045828.P18439134540564321822

/-! ## A045828.P15257107647534525325

`A014455(2*n+1)/4`
-/

namespace A045828.P15257107647534525325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014455 (2 * n + 1) : ℚ) / 4

end

end A045828.P15257107647534525325

/-! ## A045828.P13790706896155213058

`abs(A127786(2*n+1)/2)`
-/

namespace A045828.P13790706896155213058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A127786 (2 * n + 1) : ℚ) / 2|

end

end A045828.P13790706896155213058

/-! ## A045828.P13752231931164829831

`abs(A246816(2*n+1)/2)`
-/

namespace A045828.P13752231931164829831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A246816 (2 * n + 1) : ℚ) / 2|

end

end A045828.P13752231931164829831

/-! ## A045828.P12643313863712749444

`floor(A004015(2*n+1)/3)/4`
-/

namespace A045828.P12643313863712749444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A004015 (2 * n + 1) : ℚ) / 3⌋ : ℚ) / 4

end

end A045828.P12643313863712749444

/-! ## A045828.P11148197919094658920

`A057077(2*n)*A246953(n)`
-/

namespace A045828.P11148197919094658920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A246953 n

end

end A045828.P11148197919094658920

/-!
# A045829: Catafusenes (see reference for precise definition).

The programs for A045829, there is no canonical definition to state claims against.
-/

/-! ## A045829.P11074171154924269324

`A091965(A152950(n+1))*A280596(C(2, n))`
-/

namespace A045829.P11074171154924269324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091965 (A152950 (n + 1)).toNat * A280596 (Nat.choose 2 n)

end

end A045829.P11074171154924269324

/-! ## A045829.P12089540855350358845

`A057427(A004524(n))*A091965(A152950(n+1))`
-/

namespace A045829.P12089540855350358845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A004524 n).toNat * A091965 (A152950 (n + 1)).toNat

end

end A045829.P12089540855350358845

/-! ## A045829.P14121678193981172863

`A057427(A289207(n))*A091965(A152950(n+1))`
-/

namespace A045829.P14121678193981172863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A289207 n).toNat * A091965 (A152950 (n + 1)).toNat

end

end A045829.P14121678193981172863

/-! ## A045829.P818852397930093332

`A091965(A152950(n+1))%A006318(n)`
-/

namespace A045829.P818852397930093332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091965 (A152950 (n + 1)).toNat) (A006318 n)

end

end A045829.P818852397930093332

/-! ## A045829.P4612265931302071481

`(1-A023533(n²))*A091965(A152950(n+1))`
-/

namespace A045829.P4612265931302071481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A023533 (n ^ 2)) * A091965 (A152950 (n + 1)).toNat

end

end A045829.P4612265931302071481

/-!
# A045830: a(n) = A005927(n)/2.

The programs for A045830, there is no canonical definition to state claims against.
-/

/-! ## A045830.P16649370468017098098

`A005927(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045830.P16649370468017098098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005927 n : ℚ) / 2

end

end A045830.P16649370468017098098

/-! ## A045830.P11587262966116466822

`A001281(A005927(n))`
-/

namespace A045830.P11587262966116466822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005927 n).toNat

end

end A045830.P11587262966116466822

/-! ## A045830.P4994824413556620622

`A004524(A005927(n)+1)`
-/

namespace A045830.P4994824413556620622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A005927 n + 1).toNat

end

end A045830.P4994824413556620622

/-! ## A045830.P9304333380048857747

`A004526(A005927(n)+1)`
-/

namespace A045830.P9304333380048857747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005927 n + 1).toNat

end

end A045830.P9304333380048857747

/-! ## A045830.P5628015481854134877

`A002265(2*A005927(n))`
-/

namespace A045830.P5628015481854134877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A005927 n).toNat

end

end A045830.P5628015481854134877

/-! ## A045830.P12762610133533317777

`A004526(lcm(2, A005927(n)))`
-/

namespace A045830.P12762610133533317777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A005927 n))

end

end A045830.P12762610133533317777

/-! ## A045830.P3315923973430569259

`A004526(or(1, A005927(n)))`
-/

namespace A045830.P3315923973430569259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A005927 n)).toNat

end

end A045830.P3315923973430569259

/-! ## A045830.P18150921245270974417

`(A004013(n)-A005925(n))/2`
-/

namespace A045830.P18150921245270974417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004013 n - A005925 n : ℚ) / 2

end

end A045830.P18150921245270974417

/-! ## A045830.P14525216428561278091

`and(3, A004524(n))*A004013(n)/4`
-/

namespace A045830.P14525216428561278091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 3 (A004524 n) * A004013 n : ℚ) / 4

end

end A045830.P14525216428561278091

/-! ## A045830.P8642853057201915774

`A004525(A005927(A028310(n)))`
-/

namespace A045830.P8642853057201915774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A005927 (A028310 n).toNat).toNat

end

end A045830.P8642853057201915774

/-! ## A045830.P10467252120008917767

`A002265(A005927(n)+A005927(n)+1)`
-/

namespace A045830.P10467252120008917767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005927 n + (A005927 n + 1)).toNat

end

end A045830.P10467252120008917767

/-!
# A045831: Number of 4-core partitions of n.

The programs for A045831, there is no canonical definition to state claims against.
-/

/-! ## A045831.P12611542740448713804

`A045834(2*n+1)/4`
-/

namespace A045831.P12611542740448713804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045834 (2 * n + 1) : ℚ) / 4

end

end A045831.P12611542740448713804

/-! ## A045831.P18103241542536854089

`abs(A246954(2*n+1)/4)`
-/

namespace A045831.P18103241542536854089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A246954 (2 * n + 1) : ℚ) / 4|

end

end A045831.P18103241542536854089

/-! ## A045831.P2165048770120560273

`A002265(A045834(2*n+1))`
-/

namespace A045831.P2165048770120560273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A045834 (2 * n + 1)).toNat

end

end A045831.P2165048770120560273

/-! ## A045831.P12323268222208333497

`A005876(2*n+1)/8`
-/

namespace A045831.P12323268222208333497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005876 (2 * n + 1) : ℚ) / 8

end

end A045831.P12323268222208333497

/-! ## A045831.P5789085557833255467

`A005794(8*n+5)`
-/

namespace A045831.P5789085557833255467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (8 * n + 5)

end

end A045831.P5789085557833255467

/-! ## A045831.P4087973708047478690

`A004024(n)/4`
-/

namespace A045831.P4087973708047478690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004024 n : ℚ) / 4

end

end A045831.P4087973708047478690

/-! ## A045831.P210143763302962303

`A002265(A004024(n))`
-/

namespace A045831.P210143763302962303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004024 n).toNat

end

end A045831.P210143763302962303

/-! ## A045831.P5436390701430267201

`A175595(A052905(n+2))`
-/

namespace A045831.P5436390701430267201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A052905 (n + 2)).toNat

end

end A045831.P5436390701430267201

/-! ## A045831.P11682521058489182575

`A175595(A046691(n+3)-1)`
-/

namespace A045831.P11682521058489182575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A046691 (n + 3) - 1).toNat

end

end A045831.P11682521058489182575

/-! ## A045831.P6354639557431755281

`A175595(A166136(n+1)+3*n+1)`
-/

namespace A045831.P6354639557431755281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A166136 (n + 1) + (3 * n + 1 : ℤ)).toNat

end

end A045831.P6354639557431755281

/-! ## A045831.P9174559138726411618

`A175595(eq[4, A025581(n)])`
-/

namespace A045831.P9174559138726411618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045831.P9174559138726411618

/-!
# A045832: a(n) = A005889(n)/3.

The programs for A045832, there is no canonical definition to state claims against.
-/

/-! ## A045832.P5473877806941565268

`A005889(n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045832.P5473877806941565268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005889 (n + 1) : ℚ) / 3

end

end A045832.P5473877806941565268

/-! ## A045832.P12408625363668136749

`A002264(A005889(n+1))`
-/

namespace A045832.P12408625363668136749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A005889 (n + 1)).toNat

end

end A045832.P12408625363668136749

/-! ## A045832.P2853202824689908592

`A008611(A005889(n+1)+1)`
-/

namespace A045832.P2853202824689908592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A005889 (n + 1) + 1).toNat

end

end A045832.P2853202824689908592

/-! ## A045832.P6830141039003013142

`A087509(A005889(n+1)+1)`
-/

namespace A045832.P6830141039003013142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 (A005889 (n + 1) + 1).toNat

end

end A045832.P6830141039003013142

/-! ## A045832.P10482853750928744196

`A005874(4*(n+1))/3`
-/

namespace A045832.P10482853750928744196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005874 (4 * (n + 1)) : ℚ) / 3

end

end A045832.P10482853750928744196

/-!
# A045833: Expansion of eta(q^9)^3 / eta(q^3) in powers of q.

The programs for A045833, the canonical program `A045833.P12838744438603727675` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045833 has offset 0).

The definition of A045833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045833.P13085888427632857029

`A217219(n)/6`
-/

namespace A045833.P13085888427632857029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217219 n : ℚ) / 6

end

end A045833.P13085888427632857029

namespace A045833

/-- `A217219(n)/6` -/
def P13085888427632857029.Spec : Prop :=
  ∀ n, P13085888427632857029.a n = (A045833 n : ℚ)

end A045833

/-! ## A045833.P10842295880892293850

`lcm(A084091(n), A260945(n))`
-/

namespace A045833.P10842295880892293850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084091 n) (A260945 n)

end

end A045833.P10842295880892293850

namespace A045833

/-- `lcm(A084091(n), A260945(n))` -/
def P10842295880892293850.Spec : Prop :=
  ∀ n, (P10842295880892293850.a n : ℤ) = A045833 n

end A045833

/-! ## A045833.P12838744438603727675

`∑{d}[A091684(n), A102283(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045833

/-- `∑{d}[A091684(n), A102283(#)]` -/
def P12838744438603727675.Spec : Prop :=
  ∀ n, P12838744438603727675.a n = A045833 n

theorem P12838744438603727675.correct : P12838744438603727675.Spec := by
  intro n
  simp only [A045833]

end A045833

/-! ## A045833.P10913191129601425934

`∑{d}[n, A102283(n)*A102283(#)]`
-/

namespace A045833.P10913191129601425934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102283 n * A102283 d

end

end A045833.P10913191129601425934

namespace A045833

/-- `∑{d}[n, A102283(n)*A102283(#)]` -/
def P10913191129601425934.Spec : Prop :=
  ∀ n, P10913191129601425934.a n = A045833 n

end A045833

/-! ## A045833.P15431838069774704510

`∑{d}[n, A106510(n)*A106510(#)]`
-/

namespace A045833.P15431838069774704510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106510 n * A106510 d

end

end A045833.P15431838069774704510

namespace A045833

/-- `∑{d}[n, A106510(n)*A106510(#)]` -/
def P15431838069774704510.Spec : Prop :=
  ∀ n, P15431838069774704510.a n = A045833 n

end A045833

/-! ## A045833.P15777658965060221639

`round(A158416(n%3*A004016(n))/3)`
-/

namespace A045833.P15777658965060221639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A158416 (((n % 3 : ℕ) : ℤ) * A004016 n).toNat : ℚ) / 3)

end

end A045833.P15777658965060221639

namespace A045833

/-- `round(A158416(n%3*A004016(n))/3)` -/
def P15777658965060221639.Spec : Prop :=
  ∀ n, P15777658965060221639.a n = A045833 n

end A045833

/-! ## A045833.P12712284195738278258

`A002324(A117571(n))-A002324(n+1)`
-/

namespace A045833.P12712284195738278258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A117571 n).toNat - A002324 (n + 1)

end

end A045833.P12712284195738278258

namespace A045833

/-- `A002324(A117571(n))-A002324(n+1)` -/
def P12712284195738278258.Spec : Prop :=
  ∀ n, P12712284195738278258.a n = A045833 n

end A045833

/-! ## A045833.P12771346147978081344

`A002324(gcd(3, n)-1+n)`
-/

namespace A045833.P12771346147978081344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 ((Nat.gcd 3 n : ℤ) - 1 + (n : ℤ)).toNat

end

end A045833.P12771346147978081344

namespace A045833

/-- `A002324(gcd(3, n)-1+n)` -/
def P12771346147978081344.Spec : Prop :=
  ∀ n, P12771346147978081344.a n = A045833 n

end A045833

/-! ## A045833.P2943023431388550214

`A138806(A244477(n+2))`
-/

namespace A045833.P2943023431388550214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138806 (A244477 (n + 2)).toNat

end

end A045833.P2943023431388550214

namespace A045833

/-- `A138806(A244477(n+2))` -/
def P2943023431388550214.Spec : Prop :=
  ∀ n, P2943023431388550214.a n = A045833 n

end A045833

/-! ## A045833.P2384447457437646015

`A193426(A078689(n))`
-/

namespace A045833.P2384447457437646015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193426 (A078689 n).toNat

end

end A045833.P2384447457437646015

namespace A045833

/-- `A193426(A078689(n))` -/
def P2384447457437646015.Spec : Prop :=
  ∀ n, P2384447457437646015.a n = A045833 n

end A045833

/-! ## A045833.P16465910503070639573

`A033685(n)/3`
-/

namespace A045833.P16465910503070639573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033685 n : ℚ) / 3

end

end A045833.P16465910503070639573

namespace A045833

/-- `A033685(n)/3` -/
def P16465910503070639573.Spec : Prop :=
  ∀ n, P16465910503070639573.a n = (A045833 n : ℚ)

end A045833

/-! ## A045833.P17346113512095497868

`A002264(A033685(n))`
-/

namespace A045833.P17346113512095497868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A033685 n).toNat

end

end A045833.P17346113512095497868

namespace A045833

/-- `A002264(A033685(n))` -/
def P17346113512095497868.Spec : Prop :=
  ∀ n, P17346113512095497868.a n = A045833 n

end A045833

/-! ## A045833.P3483026122082017107

`A193426(A047236(n+1))`
-/

namespace A045833.P3483026122082017107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193426 (A047236 (n + 1)).toNat

end

end A045833.P3483026122082017107

namespace A045833

/-- `A193426(A047236(n+1))` -/
def P3483026122082017107.Spec : Prop :=
  ∀ n, P3483026122082017107.a n = A045833 n

end A045833

/-! ## A045833.P1981262574916829817

`A193426(A080031(n))`
-/

namespace A045833.P1981262574916829817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193426 (A080031 n).toNat

end

end A045833.P1981262574916829817

namespace A045833

/-- `A193426(A080031(n))` -/
def P1981262574916829817.Spec : Prop :=
  ∀ n, P1981262574916829817.a n = A045833 n

end A045833

/-! ## A045833.P7627079413944206067

`A193426(A047268(n+1))`
-/

namespace A045833.P7627079413944206067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193426 (A047268 (n + 1)).toNat

end

end A045833.P7627079413944206067

namespace A045833

/-- `A193426(A047268(n+1))` -/
def P7627079413944206067.Spec : Prop :=
  ∀ n, P7627079413944206067.a n = A045833 n

end A045833

/-! ## A045833.P14923950186290044005

`A084091(n)*A260945(2*n)`
-/

namespace A045833.P14923950186290044005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 n * A260945 (2 * n)

end

end A045833.P14923950186290044005

namespace A045833

/-- `A084091(n)*A260945(2*n)` -/
def P14923950186290044005.Spec : Prop :=
  ∀ n, P14923950186290044005.a n = A045833 n

end A045833

/-! ## A045833.P9589269909657453930

`A002324(A010892(A029739(n+1))+n+1)`
-/

namespace A045833.P9589269909657453930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A010892 (A029739 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A045833.P9589269909657453930

namespace A045833

/-- `A002324(A010892(A029739(n+1))+n+1)` -/
def P9589269909657453930.Spec : Prop :=
  ∀ n, P9589269909657453930.a n = A045833 n

end A045833

/-! ## A045833.P17586561474721352011

`A002324(2*A117571(n)+n)`
-/

namespace A045833.P17586561474721352011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (2 * A117571 n + (n : ℤ)).toNat

end

end A045833.P17586561474721352011

namespace A045833

/-- `A002324(2*A117571(n)+n)` -/
def P17586561474721352011.Spec : Prop :=
  ∀ n, P17586561474721352011.a n = A045833 n

end A045833

/-! ## A045833.P10380387145385490381

`A002324(A162397(n+1)+2*n+1)`
-/

namespace A045833.P10380387145385490381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A162397 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A045833.P10380387145385490381

namespace A045833

/-- `A002324(A162397(n+1)+2*n+1)` -/
def P10380387145385490381.Spec : Prop :=
  ∀ n, P10380387145385490381.a n = A045833 n

end A045833

/-! ## A045833.P15942307908649715178

`A002324(A061800(2*n)+A061800(n))`
-/

namespace A045833.P15942307908649715178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A061800 (2 * n) + A061800 n).toNat

end

end A045833.P15942307908649715178

namespace A045833

/-- `A002324(A061800(2*n)+A061800(n))` -/
def P15942307908649715178.Spec : Prop :=
  ∀ n, P15942307908649715178.a n = A045833 n

end A045833

/-!
# A045834: Half of theta series of cubic lattice with respect to edge.

The programs for A045834, there is no canonical definition to state claims against.
-/

/-! ## A045834.P5953749208509427774

`abs(A246954(n))`
-/

namespace A045834.P5953749208509427774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246954 n|

end

end A045834.P5953749208509427774

/-! ## A045834.P15630147881399174536

`A033999(n)*A246954(n)`
-/

namespace A045834.P15630147881399174536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246954 n

end

end A045834.P15630147881399174536

/-! ## A045834.P15059743872509734435

`gcd(A000038(n), A246954(n))`
-/

namespace A045834.P15059743872509734435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A246954 n)

end

end A045834.P15059743872509734435

/-! ## A045834.P14265825844483552065

`lcm(A000034(n), A246954(n))`
-/

namespace A045834.P14265825844483552065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A246954 n)

end

end A045834.P14265825844483552065

/-! ## A045834.P11465766991515088667

`A005876(n)/2`
-/

namespace A045834.P11465766991515088667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005876 n : ℚ) / 2

end

end A045834.P11465766991515088667

/-! ## A045834.P5522577380675146270

`A001281(A005876(n))`
-/

namespace A045834.P5522577380675146270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005876 n).toNat

end

end A045834.P5522577380675146270

/-! ## A045834.P9016534719372476529

`A246811(2*n)`
-/

namespace A045834.P9016534719372476529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246811 (2 * n)

end

end A045834.P9016534719372476529

/-! ## A045834.P8841839562202234711

`A045826(2*n)/3`
-/

namespace A045834.P8841839562202234711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045826 (2 * n) : ℚ) / 3

end

end A045834.P8841839562202234711

/-! ## A045834.P15485339675504497990

`A005887(2*n)/6`
-/

namespace A045834.P15485339675504497990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005887 (2 * n) : ℚ) / 6

end

end A045834.P15485339675504497990

/-! ## A045834.P6835149490281653678

`A045836(4*n+1)`
-/

namespace A045834.P6835149490281653678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045836 (4 * n + 1)

end

end A045834.P6835149490281653678

/-! ## A045834.P8567762248446718517

`A246631(4*n+1)/2`
-/

namespace A045834.P8567762248446718517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246631 (4 * n + 1) : ℚ) / 2

end

end A045834.P8567762248446718517

/-! ## A045834.P5211951227915630900

`A042948(A006374(4*n+1))`
-/

namespace A045834.P5211951227915630900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A006374 (4 * n + 1)).toNat

end

end A045834.P5211951227915630900

/-! ## A045834.P6841535250073530622

`A033717(A017089(n))/2`
-/

namespace A045834.P6841535250073530622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033717 (A017089 n).toNat : ℚ) / 2

end

end A045834.P6841535250073530622

/-! ## A045834.P16923849966142406481

`A033717(A281813(n)-2)/2`
-/

namespace A045834.P16923849966142406481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033717 (A281813 n - 2).toNat : ℚ) / 2

end

end A045834.P16923849966142406481

/-! ## A045834.P558109372293120117

`A080917(A119413(n+1))/2`
-/

namespace A045834.P558109372293120117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080917 (A119413 (n + 1)).toNat : ℚ) / 2

end

end A045834.P558109372293120117

/-! ## A045834.P16441480243930799139

`A080964(A305075(n+1))/2`
-/

namespace A045834.P16441480243930799139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080964 (A305075 (n + 1)).toNat : ℚ) / 2

end

end A045834.P16441480243930799139

/-! ## A045834.P4836057878230488880

`A004025(3*n+n+1)/2`
-/

namespace A045834.P4836057878230488880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004025 (3 * n + (n + 1)) : ℚ) / 2

end

end A045834.P4836057878230488880

/-! ## A045834.P15107323784856321113

`A001281(A004025(4*n+1))`
-/

namespace A045834.P15107323784856321113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004025 (4 * n + 1)).toNat

end

end A045834.P15107323784856321113

/-! ## A045834.P8171893842316550126

`A153182(A008586(n)+1)/2`
-/

namespace A045834.P8171893842316550126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153182 (A008586 n + 1).toNat : ℚ) / 2

end

end A045834.P8171893842316550126

/-!
# A045835: Numbers n such that sopfr(Omega(n)) = Omega(sopfr(n)), where Omega(m) is the number and sopfr(m) is the sum of prime factors of m, with repetition respectively.

The programs for A045835, there is no canonical definition to state claims against.
-/

/-! ## A045835.P12495350652351967992

`xor(A055640(A056310(n+1)), A311344(n))`
-/

namespace A045835.P12495350652351967992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055640 (A056310 (n + 1)).toNat) (A311344 n)

end

end A045835.P12495350652351967992

/-!
# A045836: Half of theta series of b.c.c. lattice with respect to long edge.

The programs for A045836, there is no canonical definition to state claims against.
-/

/-! ## A045836.P18014611946947934460

`A004025(n+1)/2`
-/

namespace A045836.P18014611946947934460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004025 (n + 1) : ℚ) / 2

end

end A045836.P18014611946947934460

/-! ## A045836.P13338867694443474397

`(A004013(n+1)-A212885(n+1))/2`
-/

namespace A045836.P13338867694443474397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004013 (n + 1) - A212885 (n + 1) : ℚ) / 2

end

end A045836.P13338867694443474397

/-! ## A045836.P6946747933760577475

`(A246631(n+1)-A004013(n+1))/2`
-/

namespace A045836.P6946747933760577475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246631 (n + 1) - A004013 (n + 1) : ℚ) / 2

end

end A045836.P6946747933760577475

/-! ## A045836.P9138328835749929347

`(A169783(n+1)-A329290(n+1))/2`
-/

namespace A045836.P9138328835749929347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169783 (n + 1) - A329290 (n + 1) : ℚ) / 2

end

end A045836.P9138328835749929347

/-! ## A045836.P3723401525764072449

`A001281(A004025(n+1))`
-/

namespace A045836.P3723401525764072449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004025 (n + 1)).toNat

end

end A045836.P3723401525764072449

/-! ## A045836.P4791079191725295078

`A004524(A004025(n+1)+1)`
-/

namespace A045836.P4791079191725295078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A004025 (n + 1) + 1).toNat

end

end A045836.P4791079191725295078

/-! ## A045836.P6007108331825702373

`A057979(A004025(n+1)+1)`
-/

namespace A045836.P6007108331825702373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A004025 (n + 1) + 1).toNat

end

end A045836.P6007108331825702373

/-! ## A045836.P10284428935911638105

`A002265(2*A004025(n+1))`
-/

namespace A045836.P10284428935911638105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A004025 (n + 1)).toNat

end

end A045836.P10284428935911638105

/-! ## A045836.P13355594859207505470

`A004525(lcm(2, A004025(n+1)))`
-/

namespace A045836.P13355594859207505470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A004025 (n + 1)))

end

end A045836.P13355594859207505470

/-! ## A045836.P10452554051032360882

`A002265(A004025(n+1)+A004025(n+1)+1)`
-/

namespace A045836.P10452554051032360882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004025 (n + 1) + (A004025 (n + 1) + 1)).toNat

end

end A045836.P10452554051032360882

/-!
# A045837: a(n) = A005888(n)/2.

The programs for A045837, there is no canonical definition to state claims against.
-/

/-! ## A045837.P4506104441527226362

`A005888(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045837.P4506104441527226362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005888 n : ℚ) / 2

end

end A045837.P4506104441527226362

/-! ## A045837.P7867316484240836916

`A001281(A005888(n))`
-/

namespace A045837.P7867316484240836916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005888 n).toNat

end

end A045837.P7867316484240836916

/-! ## A045837.P13022043149157492763

`A004524(A005888(n)+1)`
-/

namespace A045837.P13022043149157492763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A005888 n + 1).toNat

end

end A045837.P13022043149157492763

/-! ## A045837.P867140568296195568

`A004526(A005888(n)+1)`
-/

namespace A045837.P867140568296195568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005888 n + 1).toNat

end

end A045837.P867140568296195568

/-! ## A045837.P10667632617955320169

`A028242(A005888(n)+1)`
-/

namespace A045837.P10667632617955320169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A005888 n + 1).toNat

end

end A045837.P10667632617955320169

/-! ## A045837.P14713288704884867923

`A004526(or(1, A005888(n)))`
-/

namespace A045837.P14713288704884867923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A005888 n)).toNat

end

end A045837.P14713288704884867923

/-! ## A045837.P2357025392416511955

`A028242(or(1, A005888(n)))`
-/

namespace A045837.P2357025392416511955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A005888 n)).toNat

end

end A045837.P2357025392416511955

/-! ## A045837.P2887069326712856131

`A001221(A005888(n)!)`
-/

namespace A045837.P2887069326712856131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A005888 n).toNat)

end

end A045837.P2887069326712856131

/-! ## A045837.P7359963634017658716

`A061395(A005888(n)!)`
-/

namespace A045837.P7359963634017658716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Nat.factorial (A005888 n).toNat)

end

end A045837.P7359963634017658716

/-!
# A045838: a(n) = A005871(n)/2.

The programs for A045838, there is no canonical definition to state claims against.
-/

/-! ## A045838.P14728247304281440666

`A005871(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045838.P14728247304281440666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005871 n : ℚ) / 2

end

end A045838.P14728247304281440666

/-! ## A045838.P8225803384781703313

`A001281(A005871(n))`
-/

namespace A045838.P8225803384781703313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005871 n).toNat

end

end A045838.P8225803384781703313

/-! ## A045838.P1777220885154205762

`A004524(A005871(n)+1)`
-/

namespace A045838.P1777220885154205762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A005871 n + 1).toNat

end

end A045838.P1777220885154205762

/-! ## A045838.P11075309160916744108

`A004526(A005871(n)+1)`
-/

namespace A045838.P11075309160916744108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005871 n + 1).toNat

end

end A045838.P11075309160916744108

/-! ## A045838.P4723719846003429781

`A002265(2*A005871(n))`
-/

namespace A045838.P4723719846003429781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A005871 n).toNat

end

end A045838.P4723719846003429781

/-! ## A045838.P16634020832617366784

`A004526(lcm(2, A005871(n)))`
-/

namespace A045838.P16634020832617366784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A005871 n))

end

end A045838.P16634020832617366784

/-! ## A045838.P3862041439926417132

`A110654(A005871(n)+1)-1`
-/

namespace A045838.P3862041439926417132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005871 n + 1).toNat - 1

end

end A045838.P3862041439926417132

/-! ## A045838.P2187534772137729417

`A110654(A005871(A093178(n)))`
-/

namespace A045838.P2187534772137729417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005871 (A093178 n).toNat).toNat

end

end A045838.P2187534772137729417

/-! ## A045838.P8834975943076798092

`A002265(A005871(n)+A005871(n)+1)`
-/

namespace A045838.P8834975943076798092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A005871 n + (A005871 n + 1)).toNat

end

end A045838.P8834975943076798092

/-! ## A045838.P8775742628153719183

`A110654(2*A005871(n)-A005871(n))`
-/

namespace A045838.P8775742628153719183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A005871 n - A005871 n).toNat

end

end A045838.P8775742628153719183

/-! ## A045838.P12871548944530779802

`A004524(n)-A004524(n-A005871(n))`
-/

namespace A045838.P12871548944530779802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n - A004524 ((n : ℤ) - A005871 n).toNat

end

end A045838.P12871548944530779802

/-! ## A045838.P16856305035800055705

`A110654(n)-A110654(n-A005871(n))`
-/

namespace A045838.P16856305035800055705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A110654 ((n : ℤ) - A005871 n).toNat

end

end A045838.P16856305035800055705

/-! ## A045838.P3606462687693928161

`A004526(A005871(A022998(n)))`
-/

namespace A045838.P3606462687693928161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005871 (A022998 n).toNat).toNat

end

end A045838.P3606462687693928161

/-! ## A045838.P3874187653714144504

`A110654(A005871(2*n)+A005871(n))`
-/

namespace A045838.P3874187653714144504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005871 (2 * n) + A005871 n).toNat

end

end A045838.P3874187653714144504

/-! ## A045838.P15132811306407359372

`A001222(sqrt(2^A005871(n)))`
-/

namespace A045838.P15132811306407359372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt ((2 : ℚ) ^ (A005871 n : ℤ) : ℝ))).toNat

end

end A045838.P15132811306407359372

/-! ## A045838.P17315095142215410947

`A000005(sqrt(2^A005871(n)))-1`
-/

namespace A045838.P17315095142215410947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt ((2 : ℚ) ^ (A005871 n : ℤ) : ℝ))).toNat - 1

end

end A045838.P17315095142215410947

/-!
# A045839: a(n) = A005929(n)/2.

The programs for A045839, the canonical program `A045839.P4359965335800922722` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045839 has offset 0).

The definition of A045839 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045839.P4359965335800922722

`A005929(n)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045839

/-- `A005929(n)/2` -/
def P4359965335800922722.Spec : Prop :=
  ∀ n, P4359965335800922722.a n = (A045839 n : ℚ)

end A045839

/-! ## A045839.P16099100157218134405

`n%2*A045833(n)`
-/

namespace A045839.P16099100157218134405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A045833 n

end

end A045839.P16099100157218134405

namespace A045839

/-- `n%2*A045833(n)` -/
def P16099100157218134405.Spec : Prop :=
  ∀ n, P16099100157218134405.a n = A045839 n

end A045839

/-! ## A045839.P447120825022258780

`A045833(lcm(2, n)-n)`
-/

namespace A045839.P447120825022258780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (Nat.lcm 2 n - n)

end

end A045839.P447120825022258780

namespace A045839

/-- `A045833(lcm(2, n)-n)` -/
def P447120825022258780.Spec : Prop :=
  ∀ n, P447120825022258780.a n = A045839 n

end A045839

/-! ## A045839.P9444486452128089292

`A045833(n*and(1, n))`
-/

namespace A045839.P9444486452128089292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (n * Nat.land 1 n)

end

end A045839.P9444486452128089292

namespace A045839

/-- `A045833(n*and(1, n))` -/
def P9444486452128089292.Spec : Prop :=
  ∀ n, P9444486452128089292.a n = A045839 n

end A045839

/-! ## A045839.P9776327442645624024

`A045833(or(n, gcd(2, n)))`
-/

namespace A045839.P9776327442645624024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (Nat.lor n (Nat.gcd 2 n))

end

end A045839.P9776327442645624024

namespace A045839

/-- `A045833(or(n, gcd(2, n)))` -/
def P9776327442645624024.Spec : Prop :=
  ∀ n, P9776327442645624024.a n = A045839 n

end A045839

/-! ## A045839.P13897844758498755810

`A001281(A005929(n))`
-/

namespace A045839.P13897844758498755810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005929 n).toNat

end

end A045839.P13897844758498755810

namespace A045839

/-- `A001281(A005929(n))` -/
def P13897844758498755810.Spec : Prop :=
  ∀ n, P13897844758498755810.a n = A045839 n

end A045839

/-! ## A045839.P8704620874774285044

`A045833(A091685(n))`
-/

namespace A045839.P8704620874774285044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (A091685 n).toNat

end

end A045839.P8704620874774285044

namespace A045839

/-- `A045833(A091685(n))` -/
def P8704620874774285044.Spec : Prop :=
  ∀ n, P8704620874774285044.a n = A045839 n

end A045839

/-! ## A045839.P11472223496735025451

`A045833(A190621(n))`
-/

namespace A045839.P11472223496735025451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (A190621 n).toNat

end

end A045839.P11472223496735025451

namespace A045839

/-- `A045833(A190621(n))` -/
def P11472223496735025451.Spec : Prop :=
  ∀ n, P11472223496735025451.a n = A045839 n

end A045839

/-! ## A045839.P2297005755679724714

`A045833(n*A000035(n))`
-/

namespace A045839.P2297005755679724714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 ((n : ℤ) * A000035 n).toNat

end

end A045839.P2297005755679724714

namespace A045839

/-- `A045833(n*A000035(n))` -/
def P2297005755679724714.Spec : Prop :=
  ∀ n, P2297005755679724714.a n = A045839 n

end A045839

/-! ## A045839.P11775093890407384729

`A007877(n)*A045833(n)`
-/

namespace A045839.P11775093890407384729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n * A045833 n

end

end A045839.P11775093890407384729

namespace A045839

/-- `A007877(n)*A045833(n)` -/
def P11775093890407384729.Spec : Prop :=
  ∀ n, P11775093890407384729.a n = A045839 n

end A045839

/-! ## A045839.P4541361814132249128

`A045833(n*A039982(n))`
-/

namespace A045839.P4541361814132249128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 ((n : ℤ) * A039982 n).toNat

end

end A045839.P4541361814132249128

namespace A045839

/-- `A045833(n*A039982(n))` -/
def P4541361814132249128.Spec : Prop :=
  ∀ n, P4541361814132249128.a n = A045839 n

end A045839

/-! ## A045839.P4975967539620154542

`A045833(n)*A060396(n)`
-/

namespace A045839.P4975967539620154542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 n * A060396 n

end

end A045839.P4975967539620154542

namespace A045839

/-- `A045833(n)*A060396(n)` -/
def P4975967539620154542.Spec : Prop :=
  ∀ n, P4975967539620154542.a n = A045839 n

end A045839

/-! ## A045839.P669072105602341111

`A045833(n)*A070432(n)`
-/

namespace A045839.P669072105602341111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 n * A070432 n

end

end A045839.P669072105602341111

namespace A045839

/-- `A045833(n)*A070432(n)` -/
def P669072105602341111.Spec : Prop :=
  ∀ n, P669072105602341111.a n = A045839 n

end A045839

/-! ## A045839.P7088757004679863539

`A045833(n*A088911(n))`
-/

namespace A045839.P7088757004679863539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 ((n : ℤ) * A088911 n).toNat

end

end A045839.P7088757004679863539

namespace A045839

/-- `A045833(n*A088911(n))` -/
def P7088757004679863539.Spec : Prop :=
  ∀ n, P7088757004679863539.a n = A045839 n

end A045839

/-! ## A045839.P17385191595103363023

`A045833(n*A093719(n))`
-/

namespace A045839.P17385191595103363023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 ((n : ℤ) * A093719 n).toNat

end

end A045839.P17385191595103363023

namespace A045839

/-- `A045833(n*A093719(n))` -/
def P17385191595103363023.Spec : Prop :=
  ∀ n, P17385191595103363023.a n = A045839 n

end A045839

/-! ## A045839.P1137577523430168866

`A045833(n*A095130(n))`
-/

namespace A045839.P1137577523430168866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 ((n : ℤ) * A095130 n).toNat

end

end A045839.P1137577523430168866

namespace A045839

/-- `A045833(n*A095130(n))` -/
def P1137577523430168866.Spec : Prop :=
  ∀ n, P1137577523430168866.a n = A045839 n

end A045839

/-! ## A045839.P1006746719922628707

`A045833(n*A098725(n))`
-/

namespace A045839.P1006746719922628707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 ((n : ℤ) * A098725 n).toNat

end

end A045839.P1006746719922628707

namespace A045839

/-- `A045833(n*A098725(n))` -/
def P1006746719922628707.Spec : Prop :=
  ∀ n, P1006746719922628707.a n = A045839 n

end A045839

/-! ## A045839.P7475107619486866661

`A045833(n)*A100286(n)`
-/

namespace A045839.P7475107619486866661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 n * A100286 n

end

end A045839.P7475107619486866661

namespace A045839

/-- `A045833(n)*A100286(n)` -/
def P7475107619486866661.Spec : Prop :=
  ∀ n, P7475107619486866661.a n = A045839 n

end A045839

/-! ## A045839.P14647601461615538953

`A045833(n)*A103368(n)`
-/

namespace A045839.P14647601461615538953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 n * A103368 n

end

end A045839.P14647601461615538953

namespace A045839

/-- `A045833(n)*A103368(n)` -/
def P14647601461615538953.Spec : Prop :=
  ∀ n, P14647601461615538953.a n = A045839 n

end A045839

/-! ## A045839.P958069043007055012

`A045833(n)*A110270(n)`
-/

namespace A045839.P958069043007055012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 n * A110270 n

end

end A045839.P958069043007055012

namespace A045839

/-- `A045833(n)*A110270(n)` -/
def P958069043007055012.Spec : Prop :=
  ∀ n, P958069043007055012.a n = A045839 n

end A045839

/-!
# A045840: a(n) = A005926(n)/2.

The programs for A045840, there is no canonical definition to state claims against.
-/

/-! ## A045840.P4911912818879349865

`A005926(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045840.P4911912818879349865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005926 n : ℚ) / 2

end

end A045840.P4911912818879349865

/-! ## A045840.P7936678130503334627

`A001281(A005926(n))`
-/

namespace A045840.P7936678130503334627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005926 n).toNat

end

end A045840.P7936678130503334627

/-! ## A045840.P2181440757683510371

`A008437(A322016(n+1))`
-/

namespace A045840.P2181440757683510371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (A322016 (n + 1)).toNat

end

end A045840.P2181440757683510371

/-! ## A045840.P7822185156178475073

`A008437(A322017(n+1))`
-/

namespace A045840.P7822185156178475073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (A322017 (n + 1)).toNat

end

end A045840.P7822185156178475073

/-! ## A045840.P18117499803868481898

`A008437(n*A014577(n))`
-/

namespace A045840.P18117499803868481898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 ((n : ℤ) * A014577 n).toNat

end

end A045840.P18117499803868481898

/-! ## A045840.P10522366848214288841

`A008437(n*A106665(n))`
-/

namespace A045840.P10522366848214288841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 ((n : ℤ) * A106665 n).toNat

end

end A045840.P10522366848214288841

/-! ## A045840.P10411972312704389249

`A008437(n*A144603(n))`
-/

namespace A045840.P10411972312704389249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 ((n : ℤ) * A144603 n).toNat

end

end A045840.P10411972312704389249

/-! ## A045840.P10804922681802610771

`A008437(n)*A270823(n)`
-/

namespace A045840.P10804922681802610771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 n * A270823 n

end

end A045840.P10804922681802610771

/-! ## A045840.P17632370488308474888

`A008437(n*A372258(n))`
-/

namespace A045840.P17632370488308474888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 ((n : ℤ) * A372258 n).toNat

end

end A045840.P17632370488308474888

/-! ## A045840.P3077427370004892349

`A008437(A014577(n)-1+n)`
-/

namespace A045840.P3077427370004892349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (A014577 n - 1 + (n : ℤ)).toNat

end

end A045840.P3077427370004892349

/-! ## A045840.P17068342494521938817

`A008437(A106665(n)-1+n)`
-/

namespace A045840.P17068342494521938817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (A106665 n - 1 + (n : ℤ)).toNat

end

end A045840.P17068342494521938817

/-! ## A045840.P12387984730498778266

`A008437(n-A144603(n+1))`
-/

namespace A045840.P12387984730498778266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 ((n : ℤ) - A144603 (n + 1)).toNat

end

end A045840.P12387984730498778266

/-! ## A045840.P11559691715063329066

`A008437(n-(1-A014577(n)))`
-/

namespace A045840.P11559691715063329066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 ((n : ℤ) - (1 - A014577 n)).toNat

end

end A045840.P11559691715063329066

/-! ## A045840.P9912192788401113516

`A008437(n-(1-A106665(n)))`
-/

namespace A045840.P9912192788401113516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 ((n : ℤ) - (1 - A106665 n)).toNat

end

end A045840.P9912192788401113516

/-! ## A045840.P3248615353570466592

`and(1, A055902(n+6))*A008437(n)`
-/

namespace A045840.P3248615353570466592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055902 (n + 6)) * A008437 n

end

end A045840.P3248615353570466592

/-! ## A045840.P769418172358377538

`gcd(A000217(n*A005926(n)), A005926(n))`
-/

namespace A045840.P769418172358377538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 ((n : ℤ) * A005926 n).toNat) (A005926 n)

end

end A045840.P769418172358377538

/-!
# A045841: Number of distinct odd numbers formed from the digits of n.

The programs for A045841, there is no canonical definition to state claims against.
-/

/-! ## A045841.P9220769341880748363

`A061901(n)-A045843(n)`
-/

namespace A045841.P9220769341880748363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 n - A045843 n

end

end A045841.P9220769341880748363

/-! ## A045841.P8010431453135366544

`A045843(2*A123895(n))-A045843(n)`
-/

namespace A045841.P8010431453135366544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (2 * A123895 n).toNat - A045843 n

end

end A045841.P8010431453135366544

/-! ## A045841.P4373890618830881336

`A055642(∏{d}[A123895(n), #])-A045843(n)`
-/

namespace A045841.P4373890618830881336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∏ d ∈ Nat.divisors (f1 n).natAbs, d) - A045843 n

end

end A045841.P4373890618830881336

/-! ## A045841.P2123809491177612263

`A001221(A069877(n))*A196564(A227362(n))`
-/

namespace A045841.P2123809491177612263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A069877 n).toNat * A196564 (A227362 n).toNat

end

end A045841.P2123809491177612263

/-! ## A045841.P11825933079186275621

`A196564(n)*A249949(A022294(2*n+5))`
-/

namespace A045841.P11825933079186275621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n * A249949 (A022294 (2 * n + 5)).toNat

end

end A045841.P11825933079186275621

/-!
# A045842: Expansion of Product_{k>=0} 1/(1 - x^(k+1))^A001156(k).

The programs for A045842, there is no canonical definition to state claims against.
-/

/-! ## A045842.P3975820817819461880

`A276581(A083380(n+1))+char[10]`
-/

namespace A045842.P3975820817819461880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A083380 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A045842.P3975820817819461880

/-! ## A045842.P518282199399265921

`or(A276581(A083380(n+1)), A292438(n))`
-/

namespace A045842.P518282199399265921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276581 (A083380 (n + 1)).toNat) (A292438 n)

end

end A045842.P518282199399265921

/-! ## A045842.P3057793493859212012

`A000196(round((n+4)*2^(n-3))+2^(n-2)*and(n, -2))`
-/

namespace A045842.P3057793493859212012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Int.land (n : ℤ) (-2) : ℚ))).toNat

end

end A045842.P3057793493859212012

/-! ## A045842.P12890399187906317571

`A000196(A256429(n))-∑{p}[n+1, gcd(n, #)]`
-/

namespace A045842.P12890399187906317571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A256429 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A045842.P12890399187906317571

/-! ## A045842.P2145483567901061673

`A000196(A374634(2*n)+A083720(2*n+2))`
-/

namespace A045842.P2145483567901061673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A374634 (2 * n) + A083720 (2 * n + 2)).toNat

end

end A045842.P2145483567901061673

/-!
# A045843: Number of distinct even numbers formed from the digits of n.

The programs for A045843, there is no canonical definition to state claims against.
-/

/-! ## A045843.P16458035692840771837

`A061901(n)-A045841(n)`
-/

namespace A045843.P16458035692840771837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 n - A045841 n

end

end A045843.P16458035692840771837

/-! ## A045843.P14984702964634280165

`A061901(n)+A045841(n)/A008683(A092216(n+1))`
-/

namespace A045843.P14984702964634280165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061901 n : ℚ) + (A045841 n : ℚ) / (A008683 (A092216 (n + 1)).toNat : ℚ)

end

end A045843.P14984702964634280165

/-! ## A045843.P10452259081344907833

`A173304(A123895(n)+1)-A045841(n)`
-/

namespace A045843.P10452259081344907833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 (A123895 n + 1).toNat - A045841 n

end

end A045843.P10452259081344907833

/-! ## A045843.P12245200509051821156

`A055642(∏{d}[A123895(n), #])-A045841(n)`
-/

namespace A045843.P12245200509051821156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∏ d ∈ Nat.divisors (f1 n).natAbs, d) - A045841 n

end

end A045843.P12245200509051821156

/-! ## A045843.P873938889052395400

`C(A324160(n), A001107(A176729(3*n+1)))`
-/

namespace A045843.P873938889052395400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A324160 n).toNat (A001107 (A176729 (3 * n + 1)).toNat).toNat

end

end A045843.P873938889052395400

/-!
# A045844: a(n+1) = a(n) + largest digit of a(n); a(0) = 1.

The programs for A045844, the canonical program `A045844.P8390296984948231799` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045844 has offset 0).

The definition of A045844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045844.P8390296984948231799

`∑[A132137(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045844

/-- `∑[A132137(n+1)]` -/
def P8390296984948231799.Spec : Prop :=
  ∀ n, P8390296984948231799.a n = A045844 n

theorem P8390296984948231799.correct : P8390296984948231799.Spec := by
  intro n
  simp only [A045844]

end A045844

/-! ## A045844.P1256405909120933662

`A132137(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A045844.P1256405909120933662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A132137 (n + 1) + a (A023443 n).toNat

end

end A045844.P1256405909120933662

namespace A045844

/-- `A132137(n+1)+a(A023443(n))` -/
def P1256405909120933662.Spec : Prop :=
  ∀ n, P1256405909120933662.a n = A045844 n

end A045844

/-! ## A045844.P1902872762266792133

`A095815(a(n-1))` with `a(0)=1`
-/

namespace A045844.P1902872762266792133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095815 (a (n - 1)).toNat

end

end A045844.P1902872762266792133

namespace A045844

/-- `A095815(a(n-1))` -/
def P1902872762266792133.Spec : Prop :=
  ∀ n, P1902872762266792133.a n = A045844 n

end A045844

/-! ## A045844.P2120414969974301792

`A054055(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A045844.P2120414969974301792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054055 (a (n - 1)).toNat + a (n - 1)

end

end A045844.P2120414969974301792

namespace A045844

/-- `A054055(a(n-1))+a(n-1)` -/
def P2120414969974301792.Spec : Prop :=
  ∀ n, P2120414969974301792.a n = A045844 n

end A045844

/-! ## A045844.P7781059114321892756

`A054055(floor(a(n-1)))-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A045844.P7781059114321892756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054055 (a (n - 1)).toNat - (-a (n - 1))

end

end A045844.P7781059114321892756

namespace A045844

/-- `A054055(floor(a(n-1)))-floor(-a(n-1))` -/
def P7781059114321892756.Spec : Prop :=
  ∀ n, P7781059114321892756.a n = A045844 n

end A045844

/-! ## A045844.P17290512684444887241

`A095815(floor(a(A023443(n))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A045844.P17290512684444887241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095815 (a (A023443 n).toNat).toNat

end

end A045844.P17290512684444887241

namespace A045844

/-- `A095815(floor(a(A023443(n))))` -/
def P17290512684444887241.Spec : Prop :=
  ∀ n, P17290512684444887241.a n = A045844 n

end A045844

/-! ## A045844.P17212374625834931498

`A095815(round(a(A023443(n))))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A045844.P17212374625834931498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095815 (a (A023443 n).toNat).toNat

end

end A045844.P17212374625834931498

namespace A045844

/-- `A095815(round(a(A023443(n))))` -/
def P17212374625834931498.Spec : Prop :=
  ∀ n, P17212374625834931498.a n = A045844 n

end A045844

/-!
# A045846: Number of distinct ways to cut an n X n square into squares with integer sides.

The programs for A045846, there is no canonical definition to state claims against.
-/

/-! ## A045846.P11438492398282499561

`A219924(∑[4*n])`
-/

namespace A045846.P11438492398282499561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045846.P11438492398282499561

/-! ## A045846.P18224752335507716511

`gcd(A000038(n), A219924(A046092(n)))`
-/

namespace A045846.P18224752335507716511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A219924 (A046092 n).toNat)

end

end A045846.P18224752335507716511

/-! ## A045846.P4070755953178960536

`lcm(A106400(n), A219924(A046092(n)))`
-/

namespace A045846.P4070755953178960536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A219924 (A046092 n).toNat)

end

end A045846.P4070755953178960536

/-! ## A045846.P7950505557860153448

`or(A000007(n), A219924(A046092(n)))`
-/

namespace A045846.P7950505557860153448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A219924 (A046092 n).toNat)

end

end A045846.P7950505557860153448

/-! ## A045846.P496050976197920346

`lcm(A219924(A106232(n+1)), A219924(n))`
-/

namespace A045846.P496050976197920346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A219924 (A106232 (n + 1)).toNat) (A219924 n)

end

end A045846.P496050976197920346

/-!
# A045847: Matrix whose (i,j)-th entry is number of representations of j as a sum of i squares of nonnegative integers; read by diagonals.

The programs for A045847, there is no canonical definition to state claims against.
-/

/-! ## A045847.P12912986767103607059

`A290429(n)^A000161(A222639(n))`
-/

namespace A045847.P12912986767103607059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290429 n : ℚ) ^ (A000161 (A222639 n).toNat : ℤ)

end

end A045847.P12912986767103607059

/-! ## A045847.P10871331659917605634

`gcd(A010873(A151934(n)), A290429(n))`
-/

namespace A045847.P10871331659917605634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010873 (A151934 n).toNat) (A290429 n)

end

end A045847.P10871331659917605634

/-! ## A045847.P12559654901326944688

`A290429(n)^A290430(n)^A151934(n)`
-/

namespace A045847.P12559654901326944688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A290429 n : ℝ) ^ ((A290430 n : ℚ) ^ (A151934 n : ℤ) : ℝ)

end

end A045847.P12559654901326944688

/-! ## A045847.P6676572508269010303

`A290429(n)+A025439(A308629(n+1))`
-/

namespace A045847.P6676572508269010303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290429 n + A025439 (A308629 (n + 1)).toNat

end

end A045847.P6676572508269010303

/-! ## A045847.P8838623596751910268

`A290429(n)^A140334(A140334(n))`
-/

namespace A045847.P8838623596751910268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290429 n : ℚ) ^ (A140334 (A140334 n).toNat : ℤ)

end

end A045847.P8838623596751910268

/-! ## A045847.P234362761404964171

`lcm(A008683(A344085(n+1)), A290429(n))`
-/

namespace A045847.P234362761404964171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A344085 (n + 1)).toNat) (A290429 n)

end

end A045847.P234362761404964171

/-! ## A045847.P7890481956919751566

`A290429(A151934(n)+n)`
-/

namespace A045847.P7890481956919751566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290429 (A151934 n + (n : ℤ)).toNat

end

end A045847.P7890481956919751566

/-! ## A045847.P4780635811022914969

`A290429(n)/A290429(A151934(n)²)`
-/

namespace A045847.P4780635811022914969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290429 n : ℚ) / (A290429 (A151934 n ^ 2).toNat : ℚ)

end

end A045847.P4780635811022914969

/-! ## A045847.P9789976274396674759

`and(A141311(n+1), A290429(n))`
-/

namespace A045847.P9789976274396674759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A290429 n)

end

end A045847.P9789976274396674759

/-!
# A045848: Number of nonnegative solutions of x1^2 + x2^2 + ... + x6^2 = n.

The programs for A045848, there is no canonical definition to state claims against.
-/

/-! ## A045848.P14353427718039105281

`A045847(A055999(n+4)-1)`
-/

namespace A045848.P14353427718039105281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A055999 (n + 4) - 1).toNat

end

end A045848.P14353427718039105281

/-! ## A045848.P2490413244222277065

`A045847(A052905(n+4)-2)`
-/

namespace A045848.P2490413244222277065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A052905 (n + 4) - 2).toNat

end

end A045848.P2490413244222277065

/-! ## A045848.P14526654154661863752

`A045847(A000096(n+6)-6)`
-/

namespace A045848.P14526654154661863752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000096 (n + 6) - 6).toNat

end

end A045848.P14526654154661863752

/-! ## A045848.P6187037086587649303

`A045847(A000217(n+7)-7)`
-/

namespace A045848.P6187037086587649303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000217 (n + 7) - 7).toNat

end

end A045848.P6187037086587649303

/-! ## A045848.P3857565953118167743

`A045847(A161680(n+8)-7)`
-/

namespace A045848.P3857565953118167743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A161680 (n + 8) - 7).toNat

end

end A045848.P3857565953118167743

/-! ## A045848.P10036880724479496888

`A045847(Δ[A023551(n+2)]-1)`
-/

namespace A045848.P10036880724479496888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (f1 (n + 1) - f1 n - 1).toNat

end

end A045848.P10036880724479496888

/-! ## A045848.P1059669800408906703

`A045847(Δ[A026054(n+4)]-1)`
-/

namespace A045848.P1059669800408906703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (f1 (n + 1) - f1 n - 1).toNat

end

end A045848.P1059669800408906703

/-! ## A045848.P4216152797774432745

`A045847(A167614(n+4)+A005408(n+1))`
-/

namespace A045848.P4216152797774432745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A167614 (n + 4) + A005408 (n + 1)).toNat

end

end A045848.P4216152797774432745

/-!
# A045849: Number of nonnegative solutions of x1^2 + x2^2 + ... + x7^2 = n.

The programs for A045849, there is no canonical definition to state claims against.
-/

/-! ## A045849.P8628365269442268344

`A045847(A155212(n+4))`
-/

namespace A045849.P8628365269442268344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A155212 (n + 4)).toNat

end

end A045849.P8628365269442268344

/-! ## A045849.P7930669667340011411

`A045847(eq[7, A025581(n)])`
-/

namespace A045849.P7930669667340011411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045849.P7930669667340011411

/-! ## A045849.P11430266412850290951

`A045847(eq[8, A193739(n)])`
-/

namespace A045849.P11430266412850290951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045849.P11430266412850290951

/-! ## A045849.P10479186029532088129

`A045847(A000217(n+8)-8)`
-/

namespace A045849.P10479186029532088129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000217 (n + 8) - 8).toNat

end

end A045849.P10479186029532088129

/-! ## A045849.P9829374730640157441

`A045847(A161680(n+9)-8)`
-/

namespace A045849.P9829374730640157441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A161680 (n + 9) - 8).toNat

end

end A045849.P9829374730640157441

/-! ## A045849.P9311713497185044545

`A045847(2*n+A000217(n+6)+7)`
-/

namespace A045849.P9311713497185044545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A045849.P9311713497185044545

/-! ## A045849.P15204077977092207445

`A045847(A055999(n+7)-A004273(n+11))`
-/

namespace A045849.P15204077977092207445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A055999 (n + 7) - A004273 (n + 11)).toNat

end

end A045849.P15204077977092207445

/-!
# A045850: Number of nonnegative solutions of x1^2 + x2^2 + ... + x8^2 = n.

The programs for A045850, there is no canonical definition to state claims against.
-/

/-! ## A045850.P16940502738394947591

`A045847(A027379(n+7)-6)`
-/

namespace A045850.P16940502738394947591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A027379 (n + 7) - 6).toNat

end

end A045850.P16940502738394947591

/-! ## A045850.P2505607482189901409

`A045847(A000217(n+9)-9)`
-/

namespace A045850.P2505607482189901409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000217 (n + 9) - 9).toNat

end

end A045850.P2505607482189901409

/-! ## A045850.P9003810927022731921

`A045847(A000124(n+9)-10)`
-/

namespace A045850.P9003810927022731921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000124 (n + 9) - 10).toNat

end

end A045850.P9003810927022731921

/-! ## A045850.P15346889596203304668

`A045847(A161680(n+10)-9)`
-/

namespace A045850.P15346889596203304668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A161680 (n + 10) - 9).toNat

end

end A045850.P15346889596203304668

/-! ## A045850.P16006299719972554419

`A045847(A167614(n+6)+A005408(n+2))`
-/

namespace A045850.P16006299719972554419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A167614 (n + 6) + A005408 (n + 2)).toNat

end

end A045850.P16006299719972554419

/-! ## A045850.P11406086915846501503

`A045847(A004273(n+5)+A000096(n+6))`
-/

namespace A045850.P11406086915846501503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A004273 (n + 5) + A000096 (n + 6)).toNat

end

end A045850.P11406086915846501503

/-!
# A045851: Number of nonnegative solutions of x1^2 + x2^2 + ... + x9^2 = n.

The programs for A045851, there is no canonical definition to state claims against.
-/

/-! ## A045851.P13994620974898312724

`A045847(A056000(n+6))`
-/

namespace A045851.P13994620974898312724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A056000 (n + 6)).toNat

end

end A045851.P13994620974898312724

/-! ## A045851.P5214472883458973552

`A045847(A055999(n+7)-4)`
-/

namespace A045851.P5214472883458973552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A055999 (n + 7) - 4).toNat

end

end A045851.P5214472883458973552

/-! ## A045851.P7574163945614817397

`A045847(A000217(n+10)-10)`
-/

namespace A045851.P7574163945614817397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000217 (n + 10) - 10).toNat

end

end A045851.P7574163945614817397

/-! ## A045851.P15162003072043907736

`A045847(A161680(n+11)-10)`
-/

namespace A045851.P15162003072043907736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A161680 (n + 11) - 10).toNat

end

end A045851.P15162003072043907736

/-! ## A045851.P14093849478584818918

`A045847(A167499(n+7)+A005843(n+2))`
-/

namespace A045851.P14093849478584818918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A167499 (n + 7) + A005843 (n + 2)).toNat

end

end A045851.P14093849478584818918

/-! ## A045851.P372913239565153485

`A045847(A016897(n+5)+A000124(n+5))`
-/

namespace A045851.P372913239565153485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A016897 (n + 5) + A000124 (n + 5)).toNat

end

end A045851.P372913239565153485

/-! ## A045851.P9492472262582551442

`A045847(A167614(n+7)+A005843(n+3))`
-/

namespace A045851.P9492472262582551442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A167614 (n + 7) + A005843 (n + 3)).toNat

end

end A045851.P9492472262582551442

/-!
# A045852: Number of nonnegative solutions of x1^2 + x2^2 + ... + x10^2 = n.

The programs for A045852, there is no canonical definition to state claims against.
-/

/-! ## A045852.P1985628971003122421

`A045847(A052905(n+8)-6)`
-/

namespace A045852.P1985628971003122421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A052905 (n + 8) - 6).toNat

end

end A045852.P1985628971003122421

/-! ## A045852.P5445980896187321795

`A045847(A000217(n+11)-11)`
-/

namespace A045852.P5445980896187321795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000217 (n + 11) - 11).toNat

end

end A045852.P5445980896187321795

/-! ## A045852.P12277639326320128504

`A045847(A161680(n+12)-11)`
-/

namespace A045852.P12277639326320128504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A161680 (n + 12) - 11).toNat

end

end A045852.P12277639326320128504

/-! ## A045852.P4866051653211165597

`A045847(Δ[A000292(n+10)]-11)`
-/

namespace A045852.P4866051653211165597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (f1 (n + 1) - f1 n - 11).toNat

end

end A045852.P4866051653211165597

/-! ## A045852.P13823040164145501745

`A045847(A167614(n+8)+A005408(n+3))`
-/

namespace A045852.P13823040164145501745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A167614 (n + 8) + A005408 (n + 3)).toNat

end

end A045852.P13823040164145501745

/-! ## A045852.P2313471937762994102

`A045847(A004273(n+6)+A000096(n+8))`
-/

namespace A045852.P2313471937762994102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A004273 (n + 6) + A000096 (n + 8)).toNat

end

end A045852.P2313471937762994102

/-!
# A045853: Number of nonnegative solutions of x1^2 + x2^2 + ... + x12^2 = n.

The programs for A045853, there is no canonical definition to state claims against.
-/

/-! ## A045853.P14119169907632246284

`A045847(A055999(n+10)-7)`
-/

namespace A045853.P14119169907632246284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A055999 (n + 10) - 7).toNat

end

end A045853.P14119169907632246284

/-! ## A045853.P2863552447994475791

`A045847(A000217(n+12)+n)`
-/

namespace A045853.P2863552447994475791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A045853.P2863552447994475791

/-! ## A045853.P17852468329659782895

`A045847(A167614(n+10)+A005408(n+4))`
-/

namespace A045853.P17852468329659782895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A167614 (n + 10) + A005408 (n + 4)).toNat

end

end A045853.P17852468329659782895

/-! ## A045853.P9718859387634314731

`A045847(A004273(n+6)+A000124(n+11))`
-/

namespace A045853.P9718859387634314731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A004273 (n + 6) + A000124 (n + 11)).toNat

end

end A045853.P9718859387634314731

/-! ## A045853.P453229932518421625

`A045847(A027379(n+9)+A004273(n+8))`
-/

namespace A045853.P453229932518421625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A027379 (n + 9) + A004273 (n + 8)).toNat

end

end A045853.P453229932518421625

/-! ## A045853.P7485960951175227590

`A045847(A052905(n+8)+A004273(n+9))`
-/

namespace A045853.P7485960951175227590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A052905 (n + 8) + A004273 (n + 9)).toNat

end

end A045853.P7485960951175227590

/-!
# A045854: Number of nonnegative solutions of x1^2 + x2^2 + ... + x24^2 = n.

The programs for A045854, there is no canonical definition to state claims against.
-/

/-! ## A045854.P14977494091580449446

`A045847(eq[24, A025581(n)])`
-/

namespace A045854.P14977494091580449446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045854.P14977494091580449446

/-!
# A045855: Numbers whose square has initial digit '1'.

The programs for A045855, there is no canonical definition to state claims against.
-/

/-! ## A045855.P3003136739490107439

`sqrt(A045784(n+1))`
-/

namespace A045855.P3003136739490107439
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045784 (n + 1) : ℝ)

end

end A045855.P3003136739490107439

/-! ## A045855.P16285083073717154410

`root(A045784(n+1), A057427(n)+1)`
-/

namespace A045855.P16285083073717154410
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045784 (n + 1) : ℝ) ^ (1 / (A057427 n + 1 : ℝ))

end

end A045855.P16285083073717154410

/-! ## A045855.P9137782798415564412

`root(A045784(n+1), 2%A116667(n))`
-/

namespace A045855.P9137782798415564412
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045784 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A116667 n) : ℝ))

end

end A045855.P9137782798415564412

/-! ## A045855.P1741755062996587032

`root(A045784(n+1), 2)%A273357(n+1)`
-/

namespace A045855.P1741755062996587032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A045784 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A273357 (n + 1))

end

end A045855.P1741755062996587032

/-! ## A045855.P2472142746179107682

`root(A045784(n+1), A001316(A001316(n)))`
-/

namespace A045855.P2472142746179107682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045784 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A045855.P2472142746179107682

/-! ## A045855.P3262642181927853058

`eq[1, A002993(n)]`
-/

namespace A045855.P3262642181927853058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045855.P3262642181927853058

/-! ## A045855.P1089572558243115472

`eq[1, A032760(n+1)%10]`
-/

namespace A045855.P1089572558243115472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032760 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045855.P1089572558243115472

/-! ## A045855.P13080767406785848031

`record[(n+1)/A002993(n+1)]`
-/

namespace A045855.P13080767406785848031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002993 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045855.P13080767406785848031

/-! ## A045855.P2383683972560914541

`lt[sqrt(A002993(n))^n, A006530(n+1)]`
-/

namespace A045855.P2383683972560914541
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002993 n : ℝ) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A045855.P2383683972560914541

/-!
# A045856: Numbers whose square has initial digit '2'.

The programs for A045856, there is no canonical definition to state claims against.
-/

/-! ## A045856.P11319196957578528715

`sqrt(A045785(n+1))`
-/

namespace A045856.P11319196957578528715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045785 (n + 1) : ℝ)

end

end A045856.P11319196957578528715

/-! ## A045856.P15389829937898059550

`root(A045785(n+1), A000034(2*n+1))`
-/

namespace A045856.P15389829937898059550
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045785 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A045856.P15389829937898059550

/-! ## A045856.P6936558518214183970

`root(A045785(n+1), A010673(2*n+1))`
-/

namespace A045856.P6936558518214183970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045785 (n + 1) : ℝ) ^ (1 / (A010673 (2 * n + 1) : ℝ))

end

end A045856.P6936558518214183970

/-! ## A045856.P10755186981972506042

`eq[2, A002993(n)]`
-/

namespace A045856.P10755186981972506042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045856.P10755186981972506042

/-! ## A045856.P4936533865393328009

`eq[2, A032760(n+1)%10]`
-/

namespace A045856.P4936533865393328009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032760 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045856.P4936533865393328009

/-! ## A045856.P17338091548255774377

`root(A045785(n+1), ratio[A000079(n)])`
-/

namespace A045856.P17338091548255774377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045785 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A045856.P17338091548255774377

/-!
# A045857: Numbers whose square has initial digit '3'.

The programs for A045857, there is no canonical definition to state claims against.
-/

/-! ## A045857.P13869050784268845668

`sqrt(A045786(n+1))`
-/

namespace A045857.P13869050784268845668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045786 (n + 1) : ℝ)

end

end A045857.P13869050784268845668

/-! ## A045857.P10041136255332552020

`A045786(A000027(n+1))^(1/2)`
-/

namespace A045857.P10041136255332552020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045786 (A000027 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A045857.P10041136255332552020

/-! ## A045857.P3847868446974407064

`root(A045786(n+1), A272613(gcd(n, n+2)))`
-/

namespace A045857.P3847868446974407064
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045786 (n + 1) : ℝ) ^ (1 / (A272613 (Nat.gcd n (n + 2)) : ℝ))

end

end A045857.P3847868446974407064

/-! ## A045857.P17487057594212918933

`root(A045786(n+1), A000034(2*n+1))`
-/

namespace A045857.P17487057594212918933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045786 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A045857.P17487057594212918933

/-! ## A045857.P3760103420285292840

`eq[3, A002993(n)]`
-/

namespace A045857.P3760103420285292840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045857.P3760103420285292840

/-! ## A045857.P14045253197807754030

`eq[3, A032760(n+1)%10]`
-/

namespace A045857.P14045253197807754030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032760 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045857.P14045253197807754030

/-!
# A045858: Numbers whose square has initial digit '4'.

The programs for A045858, there is no canonical definition to state claims against.
-/

/-! ## A045858.P13445105709370510682

`sqrt(A045787(n+1))`
-/

namespace A045858.P13445105709370510682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045787 (n + 1) : ℝ)

end

end A045858.P13445105709370510682

/-! ## A045858.P16721100244230042945

`A000027(root(A045787(n+1), 2))`
-/

namespace A045858.P16721100244230042945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A045787 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A045858.P16721100244230042945

/-! ## A045858.P6550406783534853117

`root(A045787(n+1), A020639(2*(n+1)))`
-/

namespace A045858.P6550406783534853117
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045787 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A045858.P6550406783534853117

/-! ## A045858.P8635111189350175622

`root(A045787(n+1), A078311(2*n+1))`
-/

namespace A045858.P8635111189350175622
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045787 (n + 1) : ℝ) ^ (1 / (A078311 (2 * n + 1) : ℝ))

end

end A045858.P8635111189350175622

/-! ## A045858.P8889631284749671910

`eq[4, A002993(n)]`
-/

namespace A045858.P8889631284749671910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045858.P8889631284749671910

/-! ## A045858.P13494865180004367172

`eq[4, A032760(n+1)%10]`
-/

namespace A045858.P13494865180004367172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032760 (n + 1)) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045858.P13494865180004367172

/-!
# A045859: Numbers whose square has initial digit '5'.

The programs for A045859, there is no canonical definition to state claims against.
-/

/-! ## A045859.P12969742667358378584

`sqrt(A045788(n+1))`
-/

namespace A045859.P12969742667358378584
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045788 (n + 1) : ℝ)

end

end A045859.P12969742667358378584

/-! ## A045859.P13996752948439202166

`A000027(root(A045788(n+1), 2))`
-/

namespace A045859.P13996752948439202166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A045788 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A045859.P13996752948439202166

/-! ## A045859.P898896850845163566

`root(A045788(n+1), 2%A017331(n))`
-/

namespace A045859.P898896850845163566
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045788 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017331 n) : ℝ))

end

end A045859.P898896850845163566

/-! ## A045859.P4622690721819222114

`root(A045788(n+1)%A017332(n), 2)`
-/

namespace A045859.P4622690721819222114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A045788 (n + 1)) (A017332 n) : ℝ) ^ (1 / (2 : ℝ))

end

end A045859.P4622690721819222114

/-! ## A045859.P5776657829826434729

`root(A045788(n+1), gcd(2, A348490(n+1)))`
-/

namespace A045859.P5776657829826434729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045788 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A348490 (n + 1)) : ℝ))

end

end A045859.P5776657829826434729

/-! ## A045859.P15606453067717274845

`root(A045788(n+1), gcd(10, A348488(n+1)))`
-/

namespace A045859.P15606453067717274845
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045788 (n + 1) : ℝ) ^ (1 / (Int.gcd 10 (A348488 (n + 1)) : ℝ))

end

end A045859.P15606453067717274845

/-! ## A045859.P1766803923363428436

`root(A045788(n+1), A001316(A001316(n)))`
-/

namespace A045859.P1766803923363428436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045788 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A045859.P1766803923363428436

/-! ## A045859.P9944980057579988093

`eq[5, A002993(n)]`
-/

namespace A045859.P9944980057579988093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045859.P9944980057579988093

/-!
# A045860: Numbers whose square has initial digit '6'.

The programs for A045860, there is no canonical definition to state claims against.
-/

/-! ## A045860.P10975724234955846103

`sqrt(A045789(n+1))`
-/

namespace A045860.P10975724234955846103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045789 (n + 1) : ℝ)

end

end A045860.P10975724234955846103

/-! ## A045860.P614155261041962065

`A000027(root(A045789(n+1), 2))`
-/

namespace A045860.P614155261041962065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A045789 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A045860.P614155261041962065

/-! ## A045860.P4954811626915025988

`root(A045789(n+1), 2)%A001546(n)`
-/

namespace A045860.P4954811626915025988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A045789 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A001546 n)

end

end A045860.P4954811626915025988

/-! ## A045860.P14087255548876813438

`floor(root(A045789(n+1), 2))%A017344(n)`
-/

namespace A045860.P14087255548876813438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A045789 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋ (A017344 n)

end

end A045860.P14087255548876813438

/-! ## A045860.P84074078653254323

`A010051(A006881(n+1))+root(A045789(n+1), 2)`
-/

namespace A045860.P84074078653254323
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A010051 (A006881 (n + 1)).toNat : ℝ) + (A045789 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A045860.P84074078653254323

/-! ## A045860.P15582437088393558013

`A010051(A024894(2*(n+1)))+root(A045789(n+1), 2)`
-/

namespace A045860.P15582437088393558013
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A010051 (A024894 (2 * (n + 1))).toNat : ℝ) + (A045789 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A045860.P15582437088393558013

/-! ## A045860.P7823523020071299496

`A064911(A049592(n+1))+root(A045789(n+1), 2)`
-/

namespace A045860.P7823523020071299496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A064911 (A049592 (n + 1)).toNat : ℝ) + (A045789 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A045860.P7823523020071299496

/-! ## A045860.P11071927504527297929

`eq[6, A002993(n)]`
-/

namespace A045860.P11071927504527297929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045860.P11071927504527297929

/-!
# A045861: Numbers whose square has initial digit '7'.

The programs for A045861, there is no canonical definition to state claims against.
-/

/-! ## A045861.P7832138446881073366

`sqrt(A045791(n+1))`
-/

namespace A045861.P7832138446881073366
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045791 (n + 1) : ℝ)

end

end A045861.P7832138446881073366

/-! ## A045861.P8567281244575982622

`A000027(root(A045791(n+1), 2))`
-/

namespace A045861.P8567281244575982622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A045791 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A045861.P8567281244575982622

/-! ## A045861.P12365230412516125847

`root(A045791(n+1), 2)%A020739(n)²`
-/

namespace A045861.P12365230412516125847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A045791 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A020739 n ^ 2)

end

end A045861.P12365230412516125847

/-! ## A045861.P3923056290489538721

`floor(root(A045791(n+1), 2))%A112474(n+1)`
-/

namespace A045861.P3923056290489538721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A045791 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋ (A112474 (n + 1))

end

end A045861.P3923056290489538721

/-! ## A045861.P12629205874028721728

`root(A045791(n+1), 2)*A000265(A001316(n))`
-/

namespace A045861.P12629205874028721728
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045791 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A000265 (A001316 n).toNat : ℝ)

end

end A045861.P12629205874028721728

/-! ## A045861.P1954186547118198699

`root(A045791(n+1), A000034(2*n+1))`
-/

namespace A045861.P1954186547118198699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045791 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A045861.P1954186547118198699

/-! ## A045861.P14862147289220263406

`root(A045791(n+1), A010673(2*n+1))`
-/

namespace A045861.P14862147289220263406
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045791 (n + 1) : ℝ) ^ (1 / (A010673 (2 * n + 1) : ℝ))

end

end A045861.P14862147289220263406

/-! ## A045861.P9634264770720112717

`A033999(A008624(2*n))²*root(A045791(n+1), 2)`
-/

namespace A045861.P9634264770720112717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033999 (A008624 (2 * n)).toNat ^ 2 : ℝ) * (A045791 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A045861.P9634264770720112717

/-! ## A045861.P7353897795511289424

`A051699(A008578(n+2))+root(A045791(n+1), 2)`
-/

namespace A045861.P7353897795511289424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051699 (A008578 (n + 2)).toNat : ℝ) + (A045791 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A045861.P7353897795511289424

/-! ## A045861.P17425927488577870833

`A051699(A042992(n+2))+root(A045791(n+1), 2)`
-/

namespace A045861.P17425927488577870833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051699 (A042992 (n + 2)).toNat : ℝ) + (A045791 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A045861.P17425927488577870833

/-! ## A045861.P13005582816929234055

`root(A045791(n+1), ratio[A000079(n)])`
-/

namespace A045861.P13005582816929234055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045791 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A045861.P13005582816929234055

/-! ## A045861.P17224913020187153124

`root(A045791(n+1), 2)*A007318(∑[n])`
-/

namespace A045861.P17224913020187153124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045791 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A045861.P17224913020187153124

/-! ## A045861.P10743587460742417183

`A014473(∑[n+1])+root(A045791(n+1), 2)`
-/

namespace A045861.P10743587460742417183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014473 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) + (A045791 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A045861.P10743587460742417183

/-!
# A045862: Numbers whose square has initial digit '8'.

The programs for A045862, there is no canonical definition to state claims against.
-/

/-! ## A045862.P6120603320377526993

`sqrt(A045792(n+1))`
-/

namespace A045862.P6120603320377526993
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045792 (n + 1) : ℝ)

end

end A045862.P6120603320377526993

/-! ## A045862.P1952762198162202177

`root(A045792(n+1), A020639(2*(n+1)))`
-/

namespace A045862.P1952762198162202177
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045792 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A045862.P1952762198162202177

/-! ## A045862.P14445802492194233534

`root(A045792(n+1), A133265(A133265(n)))`
-/

namespace A045862.P14445802492194233534
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045792 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A045862.P14445802492194233534

/-! ## A045862.P17938777639184833299

`root(A045792(n+1), ratio[A000079(n)])`
-/

namespace A045862.P17938777639184833299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045792 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A045862.P17938777639184833299

/-!
# A045863: Numbers whose square has initial digit '9'.

The programs for A045863, there is no canonical definition to state claims against.
-/

/-! ## A045863.P2620420391550479855

`sqrt(A045793(n+1))`
-/

namespace A045863.P2620420391550479855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045793 (n + 1) : ℝ)

end

end A045863.P2620420391550479855

/-! ## A045863.P15810874083008956929

`root(A045793(n+1), A000034(2*n+1))`
-/

namespace A045863.P15810874083008956929
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045793 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 1) : ℝ))

end

end A045863.P15810874083008956929

/-! ## A045863.P12766081690181725344

`root(A045793(n+1), A010673(2*n+1))`
-/

namespace A045863.P12766081690181725344
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045793 (n + 1) : ℝ) ^ (1 / (A010673 (2 * n + 1) : ℝ))

end

end A045863.P12766081690181725344

/-! ## A045863.P4922912610436528429

`record[sqrt(A333663(n+6))]`
-/

namespace A045863.P4922912610436528429
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A333663 (n + 6) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045863.P4922912610436528429

/-! ## A045863.P7047763710091018084

`root(A045793(n+1), ratio[A000079(n)])`
-/

namespace A045863.P7047763710091018084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A045793 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A045863.P7047763710091018084

/-!
# A045864: Number of root quadruples with entry -n for integer Apollonian circle packings.

The programs for A045864, there is no canonical definition to state claims against.
-/

/-! ## A045864.P7759529880641462209

`A067754((n+1)²)`
-/

namespace A045864.P7759529880641462209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 ((n + 1) ^ 2)

end

end A045864.P7759529880641462209

/-! ## A045864.P17382018551735257377

`A067754(∑[2*n+1])%40`
-/

namespace A045864.P17382018551735257377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067754 (∑ j ∈ Finset.range (n + 1), f1 j)) 40

end

end A045864.P17382018551735257377

/-! ## A045864.P12346363249990657608

`A000027(A067754(∑[2*n+1]))`
-/

namespace A045864.P12346363249990657608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A067754 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A045864.P12346363249990657608

/-! ## A045864.P11625780716164839607

`A066360((n+1)²)+A007875(n+1)`
-/

namespace A045864.P11625780716164839607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066360 ((n + 1) ^ 2) + A007875 (n + 1)

end

end A045864.P11625780716164839607

/-! ## A045864.P7528145033379202491

`gcd(A000038(n), A067754(∑[2*n+1]))`
-/

namespace A045864.P7528145033379202491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A067754 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A045864.P7528145033379202491

/-! ## A045864.P1861264323498250769

`or(A000007(n), A067754(∑[2*n+1]))`
-/

namespace A045864.P1861264323498250769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A067754 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A045864.P1861264323498250769

/-! ## A045864.P11943739846811817467

`∏{d}[A067754(∑[2*n+1]), A014963(#)]`
-/

namespace A045864.P11943739846811817467
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A045864.P11943739846811817467

/-! ## A045864.P4300911509246006910

`A110654(2*A067754((n+1)*(n+1)))`
-/

namespace A045864.P4300911509246006910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A067754 ((n + 1) * (n + 1))).toNat

end

end A045864.P4300911509246006910

/-! ## A045864.P6941177398040613545

`A067754(∑[2*n+1])+A000035(2*n)`
-/

namespace A045864.P6941177398040613545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (∑ j ∈ Finset.range (n + 1), f1 j) + A000035 (2 * n)

end

end A045864.P6941177398040613545

/-! ## A045864.P9951774788991718622

`A007318(C(2, n))*A067754(∑[2*n+1])`
-/

namespace A045864.P9951774788991718622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A067754 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045864.P9951774788991718622

/-! ## A045864.P11173478793967015768

`A067754(∑[2*n+1])^A014963(∑[n+1])`
-/

namespace A045864.P11173478793967015768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067754 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A045864.P11173478793967015768

/-! ## A045864.P10840100557384951445

`A067754(∑[2*n+1])+A008683(4*(n+1))`
-/

namespace A045864.P10840100557384951445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (4 * (n + 1))

end

end A045864.P10840100557384951445

/-! ## A045864.P7762799675790254524

`A014963(C(n+5, 2))*A067754(∑[2*n+1])`
-/

namespace A045864.P7762799675790254524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 5) 2) * A067754 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045864.P7762799675790254524

/-! ## A045864.P5987655676164679564

`A014963(gcd(n, n+1))*A067754(∑[2*n+1])`
-/

namespace A045864.P5987655676164679564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n (n + 1)) * A067754 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045864.P5987655676164679564

/-! ## A045864.P9330204190901208342

`sqrt(A067754(∑[2*n+1])^A020639(2*(n+1)))`
-/

namespace A045864.P9330204190901208342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A067754 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A045864.P9330204190901208342

/-! ## A045864.P5155300211853294501

`∑{d}[A067754(A000290(n+1)), A000010(#)]`
-/

namespace A045864.P5155300211853294501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (A000290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A045864.P5155300211853294501

/-! ## A045864.P6722801051338052921

`A014963(A066393(2*n))*A067754(A000290(n+1))`
-/

namespace A045864.P6722801051338052921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A066393 (2 * n)).toNat * A067754 (A000290 (n + 1)).toNat

end

end A045864.P6722801051338052921

/-! ## A045864.P13759750187676285310

`A067754(A014963(2*n+2))*A067754(A000290(n+1))`
-/

namespace A045864.P13759750187676285310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067754 (A014963 (2 * n + 2)).toNat * A067754 (A000290 (n + 1)).toNat

end

end A045864.P13759750187676285310

/-!
# A045865: Theta series of quadratic form with Gram matrix [ 4, 0, 2, 1; 0, 2, 1, 1; 2, 1, 20, 1; 1, 1, 1, 10 ].

The programs for A045865, there is no canonical definition to state claims against.
-/

/-! ## A045865.P3389793202883842707

`A216624(A079069(n+2)+2*n/gcd(8, n+4))`
-/

namespace A045865.P3389793202883842707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (SequenceMachineLib.roundAway ((A079069 (n + 2) : ℚ) + 2 * ((n : ℚ) / (Nat.gcd 8 (n + 4) : ℚ)))).toNat

end

end A045865.P3389793202883842707

/-!
# A045866: Theta series of quadratic form with Gram matrix [ 2, 1, 0, 1; 1, 8, 1, -3; 0, 1, 10, 2; 1, -3, 2, 12 ].

The programs for A045866, there is no canonical definition to state claims against.
-/

/-! ## A045866.P1405237533881289741

`A045867(37*n)`
-/

namespace A045866.P1405237533881289741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045867 (37 * n)

end

end A045866.P1405237533881289741

/-! ## A045866.P5491146343389061805

`A045867(A085959(n))%A000051(n)`
-/

namespace A045866.P5491146343389061805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045867 (A085959 n).toNat) (A000051 n)

end

end A045866.P5491146343389061805

/-! ## A045866.P2434813983058323965

`A045867(A085959(n))+A000007(n+1)`
-/

namespace A045866.P2434813983058323965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045867 (A085959 n).toNat + A000007 (n + 1)

end

end A045866.P2434813983058323965

/-! ## A045866.P12435333368639907509

`A045867(A085959(n))+and(n, A000079(n))`
-/

namespace A045866.P12435333368639907509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045867 (A085959 n).toNat + Int.land (n : ℤ) (A000079 n)

end

end A045866.P12435333368639907509

/-! ## A045866.P3628625906946183456

`A045867(A085959(n))^A206245(A065120(n))`
-/

namespace A045866.P3628625906946183456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045867 (A085959 n).toNat : ℚ) ^ (A206245 (A065120 n).toNat : ℤ)

end

end A045866.P3628625906946183456

/-!
# A045867: Theta series of quadratic form with Gram matrix [ 4, 1, 2, 1; 1, 4, 1, 0; 2, 1, 6, -2; 1, 0, -2, 20 ].

The programs for A045867, there is no canonical definition to state claims against.
-/

/-! ## A045867.P11645678648436870805

`A045866(37*n)`
-/

namespace A045867.P11645678648436870805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045866 (37 * n)

end

end A045867.P11645678648436870805

/-!
# A045868: Expansion of g.f.: ((1 - x - sqrt(1-6*x+5*x^2))/(2*x))^2.

The programs for A045868, the canonical program `A045868.P10026377013549762271` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045868 has offset 0).

The definition of A045868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045868.P3472139959551876150

`record[∑[A277969(n)]]`
-/

namespace A045868.P3472139959551876150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045868.P3472139959551876150

namespace A045868

/-- `record[∑[A277969(n)]]` -/
def P3472139959551876150.Spec : Prop :=
  ∀ n, P3472139959551876150.a n = A045868 n

end A045868

/-! ## A045868.P2103711867684295596

`floor(acot(n)+Δ[A002212(n)])`
-/

namespace A045868.P2103711867684295596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A045868.P2103711867684295596

namespace A045868

/-- `floor(acot(n)+Δ[A002212(n)])` -/
def P2103711867684295596.Spec : Prop :=
  ∀ n, P2103711867684295596.a n = A045868 n

end A045868

/-! ## A045868.P4162937787953026818

`A277969(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A045868.P4162937787953026818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A277969 (n + 1) + a (n - 1)

end

end A045868.P4162937787953026818

namespace A045868

/-- `A277969(n+1)+a(n-1)` -/
def P4162937787953026818.Spec : Prop :=
  ∀ n, P4162937787953026818.a n = A045868 n

end A045868

/-! ## A045868.P6901984614363734876

`A055452(n+2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A045868.P6901984614363734876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A055452 (n + 2) + a (n - 1)

end

end A045868.P6901984614363734876

namespace A045868

/-- `A055452(n+2)+a(n-1)` -/
def P6901984614363734876.Spec : Prop :=
  ∀ n, P6901984614363734876.a n = A045868 n

end A045868

/-! ## A045868.P10026377013549762271

`A000007(n)+Δ[A002212(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045868

/-- `A000007(n)+Δ[A002212(n)]` -/
def P10026377013549762271.Spec : Prop :=
  ∀ n, P10026377013549762271.a n = A045868 n

theorem P10026377013549762271.correct : P10026377013549762271.Spec := by
  intro n
  simp only [A045868]

end A045868

/-! ## A045868.P16538136953368300023

`Δ[A057427(n)+A002212(n)]`
-/

namespace A045868.P16538136953368300023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045868.P16538136953368300023

namespace A045868

/-- `Δ[A057427(n)+A002212(n)]` -/
def P16538136953368300023.Spec : Prop :=
  ∀ n, P16538136953368300023.a n = A045868 n

end A045868

/-! ## A045868.P16717468508132067054

`Δ[lcm(A002212(n), A165573(n))]`
-/

namespace A045868.P16717468508132067054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002212 n) (A165573 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A045868.P16717468508132067054

namespace A045868

/-- `Δ[lcm(A002212(n), A165573(n))]` -/
def P16717468508132067054.Spec : Prop :=
  ∀ n, P16717468508132067054.a n = A045868 n

end A045868

/-! ## A045868.P15858923073930611003

`A181768(n)+A039919(n+1)`
-/

namespace A045868.P15858923073930611003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n + A039919 (n + 1)

end

end A045868.P15858923073930611003

namespace A045868

/-- `A181768(n)+A039919(n+1)` -/
def P15858923073930611003.Spec : Prop :=
  ∀ n, P15858923073930611003.a n = A045868 n

end A045868

/-! ## A045868.P16457623680858248724

`Δ[A044045(n)+A030529(n+2)]`
-/

namespace A045868.P16457623680858248724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n + A030529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045868.P16457623680858248724

namespace A045868

/-- `Δ[A044045(n)+A030529(n+2)]` -/
def P16457623680858248724.Spec : Prop :=
  ∀ n, P16457623680858248724.a n = A045868 n

end A045868

/-! ## A045868.P7172897125078835338

`A044045(n+1)+A024311(n+1)`
-/

namespace A045868.P7172897125078835338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 (n + 1) + A024311 (n + 1)

end

end A045868.P7172897125078835338

namespace A045868

/-- `A044045(n+1)+A024311(n+1)` -/
def P7172897125078835338.Spec : Prop :=
  ∀ n, P7172897125078835338.a n = A045868 n

end A045868

/-! ## A045868.P7988843686880573127

`A038392(n+2)+A024311(n+1)`
-/

namespace A045868.P7988843686880573127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 2) + A024311 (n + 1)

end

end A045868.P7988843686880573127

namespace A045868

/-- `A038392(n+2)+A024311(n+1)` -/
def P7988843686880573127.Spec : Prop :=
  ∀ n, P7988843686880573127.a n = A045868 n

end A045868

/-! ## A045868.P17851888436842527410

`A038392(n+1)+A030520(n+2)`
-/

namespace A045868.P17851888436842527410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) + A030520 (n + 2)

end

end A045868.P17851888436842527410

namespace A045868

/-- `A038392(n+1)+A030520(n+2)` -/
def P17851888436842527410.Spec : Prop :=
  ∀ n, P17851888436842527410.a n = A045868 n

end A045868

/-! ## A045868.P1095180609847124071

`Δ[A002212(n)+A020639(A008574(n))]`
-/

namespace A045868.P1095180609847124071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n + A020639 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045868.P1095180609847124071

namespace A045868

/-- `Δ[A002212(n)+A020639(A008574(n))]` -/
def P1095180609847124071.Spec : Prop :=
  ∀ n, P1095180609847124071.a n = A045868 n

end A045868

/-! ## A045868.P10584167650514188460

`A002212(n)-Δ[A181768(n)-A002212(n)]`
-/

namespace A045868.P10584167650514188460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n - A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - (f1 (n + 1) - f1 n)

end

end A045868.P10584167650514188460

namespace A045868

/-- `A002212(n)-Δ[A181768(n)-A002212(n)]` -/
def P10584167650514188460.Spec : Prop :=
  ∀ n, P10584167650514188460.a n = A045868 n

end A045868

/-! ## A045868.P13969721095846131439

`A002212(n+1)+A000007(n)-A002212(n)`
-/

namespace A045868.P13969721095846131439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) + (A000007 n - A002212 n)

end

end A045868.P13969721095846131439

namespace A045868

/-- `A002212(n+1)+A000007(n)-A002212(n)` -/
def P13969721095846131439.Spec : Prop :=
  ∀ n, P13969721095846131439.a n = A045868 n

theorem P13969721095846131439.correct : P13969721095846131439.Spec := by
  intro n
  simp only [A045868, Nat.add_sub_cancel, A045868.P13969721095846131439.a, A045868.P10026377013549762271.f1, A045868.P10026377013549762271.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A045868

/-! ## A045868.P5399227228094307283

`A002212(n+1)+A181768(n)-A007317(n+1)`
-/

namespace A045868.P5399227228094307283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) + (A181768 n - A007317 (n + 1))

end

end A045868.P5399227228094307283

namespace A045868

/-- `A002212(n+1)+A181768(n)-A007317(n+1)` -/
def P5399227228094307283.Spec : Prop :=
  ∀ n, P5399227228094307283.a n = A045868 n

end A045868

/-! ## A045868.P14679810146179987659

`A002212(n+1)+A181768(n)-A181768(n+1)`
-/

namespace A045868.P14679810146179987659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) + (A181768 n - A181768 (n + 1))

end

end A045868.P14679810146179987659

namespace A045868

/-- `A002212(n+1)+A181768(n)-A181768(n+1)` -/
def P14679810146179987659.Spec : Prop :=
  ∀ n, P14679810146179987659.a n = A045868 n

end A045868

/-! ## A045868.P14952717050622106397

`A002212(n+1)+A046697(n+1)-A044045(n+1)`
-/

namespace A045868.P14952717050622106397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) + (A046697 (n + 1) - A044045 (n + 1))

end

end A045868.P14952717050622106397

namespace A045868

/-- `A002212(n+1)+A046697(n+1)-A044045(n+1)` -/
def P14952717050622106397.Spec : Prop :=
  ∀ n, P14952717050622106397.a n = A045868 n

end A045868

/-! ## A045868.P17765893617330794315

`A002212(n+1)+A046697(n+1)-A038392(n+2)`
-/

namespace A045868.P17765893617330794315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (n + 1) + (A046697 (n + 1) - A038392 (n + 2))

end

end A045868.P17765893617330794315

namespace A045868

/-- `A002212(n+1)+A046697(n+1)-A038392(n+2)` -/
def P17765893617330794315.Spec : Prop :=
  ∀ n, P17765893617330794315.a n = A045868 n

end A045868

/-!
# A045872: a(n) = A006792(n)/2.

The programs for A045872, there is no canonical definition to state claims against.
-/

/-! ## A045872.P6742974773713497978

`A006792(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045872.P6742974773713497978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006792 (n + 10) : ℚ) / 2

end

end A045872.P6742974773713497978

/-! ## A045872.P2251207181300737436

`A001281(A006792(n))`
-/

namespace A045872.P2251207181300737436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A006792 (n + 10)).toNat

end

end A045872.P2251207181300737436

/-! ## A045872.P16820075055933654436

`A004524(A006792(n)+1)`
-/

namespace A045872.P16820075055933654436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A006792 (n + 10) + 1).toNat

end

end A045872.P16820075055933654436

/-! ## A045872.P17502774760718642471

`A004526(A006792(n)+1)`
-/

namespace A045872.P17502774760718642471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006792 (n + 10) + 1).toNat

end

end A045872.P17502774760718642471

/-! ## A045872.P15675781803001553269

`A028242(A006792(n)+1)`
-/

namespace A045872.P15675781803001553269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A006792 (n + 10) + 1).toNat

end

end A045872.P15675781803001553269

/-!
# A045873: a(n) = A006496(n)/2.

The programs for A045873, the canonical program `A045873.P812321455748672236` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045873 has offset 0).

The definition of A045873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045873.P812321455748672236

`2*a(n-1)-5*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045873

/-- `2*a(n-1)-5*a(n-2)` -/
def P812321455748672236.Spec : Prop :=
  ∀ n, P812321455748672236.a n = A045873 n

theorem P812321455748672236.correct : P812321455748672236.Spec := by
  intro n
  simp only [A045873]

end A045873

/-! ## A045873.P15942907626523507563

`A006496(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045873.P15942907626523507563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006496 n : ℚ) / 2

end

end A045873.P15942907626523507563

namespace A045873

/-- `A006496(n)/2` -/
def P15942907626523507563.Spec : Prop :=
  ∀ n, P15942907626523507563.a n = (A045873 n : ℚ)

end A045873

/-! ## A045873.P13687670671322129870

`∑[A006495(n)]-A006495(n)`
-/

namespace A045873.P13687670671322129870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006495 n

end

end A045873.P13687670671322129870

namespace A045873

/-- `∑[A006495(n)]-A006495(n)` -/
def P13687670671322129870.Spec : Prop :=
  ∀ n, P13687670671322129870.a n = A045873 n

end A045873

/-! ## A045873.P14815535189112053059

`(A116483(n)-A006495(n))/2`
-/

namespace A045873.P14815535189112053059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116483 n - A006495 n : ℚ) / 2

end

end A045873.P14815535189112053059

namespace A045873

/-- `(A116483(n)-A006495(n))/2` -/
def P14815535189112053059.Spec : Prop :=
  ∀ n, P14815535189112053059.a n = (A045873 n : ℚ)

end A045873

/-! ## A045873.P17361832971010239070

`(A116484(n)+A006495(n))/2`
-/

namespace A045873.P17361832971010239070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116484 n + A006495 n : ℚ) / 2

end

end A045873.P17361832971010239070

namespace A045873

/-- `(A116484(n)+A006495(n))/2` -/
def P17361832971010239070.Spec : Prop :=
  ∀ n, P17361832971010239070.a n = (A045873 n : ℚ)

end A045873

/-! ## A045873.P17571983887057310199

`(A116484(n)+A116483(n))/4`
-/

namespace A045873.P17571983887057310199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116484 n + A116483 n : ℚ) / 4

end

end A045873.P17571983887057310199

namespace A045873

/-- `(A116484(n)+A116483(n))/4` -/
def P17571983887057310199.Spec : Prop :=
  ∀ n, P17571983887057310199.a n = (A045873 n : ℚ)

end A045873

/-! ## A045873.P1639202750349885039

`(A006495(n)-A006495(n+1))/4`
-/

namespace A045873.P1639202750349885039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006495 n - A006495 (n + 1) : ℚ) / 4

end

end A045873.P1639202750349885039

namespace A045873

/-- `(A006495(n)-A006495(n+1))/4` -/
def P1639202750349885039.Spec : Prop :=
  ∀ n, P1639202750349885039.a n = (A045873 n : ℚ)

end A045873

/-!
# A045874: a(1)=1, a(n) is the smallest multiple of n that begins with a(n-1).

The programs for A045874, there is no canonical definition to state claims against.
-/

/-! ## A045874.P15655652499220933272

`A077326(A262360(2*n+1)-A000041(n))`
-/

namespace A045874.P15655652499220933272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077326 (A262360 (2 * n + 1) - A000041 n).toNat

end

end A045874.P15655652499220933272

/-! ## A045874.P862677824190920752

`A214437(gcd(A212128(n+1), A292408(n+2)))`
-/

namespace A045874.P862677824190920752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214437 (Int.gcd (A212128 (n + 1)) (A292408 (n + 2)))

end

end A045874.P862677824190920752

/-!
# A045876: Sum of different permutations of digits of n (leading 0's allowed).

The programs for A045876, there is no canonical definition to state claims against.
-/

/-! ## A045876.P12669440608034580115

`(10^A055642(n+1)-1)/9*A047726(n+1)*A007953(n+1)/A055642(n+1)`
-/

namespace A045876.P12669440608034580115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 : ℚ) ^ (A055642 (n + 1) : ℤ) - 1) / 9 * ((A047726 (n + 1) * A007953 (n + 1) : ℚ) / (A055642 (n + 1) : ℚ))

end

end A045876.P12669440608034580115

/-! ## A045876.P1376110026625947204

`A282134(n)+a(n-1)` with `a(0)=1`
-/

namespace A045876.P1376110026625947204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A282134 n + a (n - 1)

end

end A045876.P1376110026625947204

/-! ## A045876.P6010493715761288431

`∑[A282134(A028310(n))]`
-/

namespace A045876.P6010493715761288431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045876.P6010493715761288431

/-! ## A045876.P17371111554767563667

`∑[A282134(A000007(n)+n)]`
-/

namespace A045876.P17371111554767563667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045876.P17371111554767563667

/-! ## A045876.P14056572798019319114

`∑[A282134(n+1)]+1-A282134(n+1)`
-/

namespace A045876.P14056572798019319114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A282134 (n + 1))

end

end A045876.P14056572798019319114

/-! ## A045876.P6212489500896759193

`∑[A282134(A065033(2*n))]`
-/

namespace A045876.P6212489500896759193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045876.P6212489500896759193

/-! ## A045876.P57334065505059698

`∑[A282134(A233583(n+1))]`
-/

namespace A045876.P57334065505059698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045876.P57334065505059698

/-! ## A045876.P18185964719254388088

`∑[A282134(A003984(∑[n+3]))]`
-/

namespace A045876.P18185964719254388088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (A003984 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045876.P18185964719254388088

/-! ## A045876.P9629968400466456260

`∑[A282134(A137734(n²))]`
-/

namespace A045876.P9629968400466456260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045876.P9629968400466456260

/-! ## A045876.P11898276391217303662

`∑[A282134(A137735(n²))]`
-/

namespace A045876.P11898276391217303662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282134 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045876.P11898276391217303662

/-!
# A045877: Rotating digits of a(n)^2 right once still yields a square.

The programs for A045877, there is no canonical definition to state claims against.
-/

/-! ## A045877.P17818583187170824808

`sqrt(A035126(n+1))`
-/

namespace A045877.P17818583187170824808
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035126 (n + 1) : ℝ)

end

end A045877.P17818583187170824808

/-! ## A045877.P6831168277339809043

`root(A035126(n+1), p?[A006464(n)])`
-/

namespace A045877.P6831168277339809043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035126 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A045877.P6831168277339809043

/-! ## A045877.P7712985843187844703

`root(A035126(n+1), A020639(2*(n+1)))`
-/

namespace A045877.P7712985843187844703
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035126 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A045877.P7712985843187844703

/-! ## A045877.P1472092344652211768

`root(A035126(n+1), ratio[A000079(n)])`
-/

namespace A045877.P1472092344652211768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035126 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A045877.P1472092344652211768

/-!
# A045878: Numbers k such that rotating digits of k^2 left once still yields a square.

The programs for A045878, there is no canonical definition to state claims against.
-/

/-! ## A045878.P18066434073451694716

`sqrt(A035127(n+1))`
-/

namespace A045878.P18066434073451694716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035127 (n + 1) : ℝ)

end

end A045878.P18066434073451694716

/-! ## A045878.P14366692959720524393

`A035127(record[xor(1, n)]-n)^(1/2)`
-/

namespace A045878.P14366692959720524393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035127 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A045878.P14366692959720524393

/-! ## A045878.P2435841155933557258

`root(A035127(n+1), ratio[A000079(n)])`
-/

namespace A045878.P2435841155933557258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035127 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A045878.P2435841155933557258

/-! ## A045878.P1199689423650021495

`root(A035127(n+1), A000034(2*n+3))`
-/

namespace A045878.P1199689423650021495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035127 (n + 1) : ℝ) ^ (1 / (A000034 (2 * n + 3) : ℝ))

end

end A045878.P1199689423650021495

/-!
# A045879: Numbers whose square contains the same digits as some other square.

The programs for A045879, there is no canonical definition to state claims against.
-/

/-! ## A045879.P881334766957115776

`sqrt(A034289(n+1))`
-/

namespace A045879.P881334766957115776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A034289 (n + 1) : ℝ)

end

end A045879.P881334766957115776

/-! ## A045879.P3066789649014250864

`A000027(root(A034289(n+1), 2))`
-/

namespace A045879.P3066789649014250864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A034289 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A045879.P3066789649014250864

/-! ## A045879.P2172860588479264868

`root(A034289(n+1), 2%A004768(n))`
-/

namespace A045879.P2172860588479264868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034289 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A004768 n) : ℝ))

end

end A045879.P2172860588479264868

/-! ## A045879.P16976446843520074140

`root(A034289(n+1), A133265(A133265(n)))`
-/

namespace A045879.P16976446843520074140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034289 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A045879.P16976446843520074140

/-!
# A045880: Integers whose square root is "well approximated" by other square roots of integers.

The programs for A045880, there is no canonical definition to state claims against.
-/

/-! ## A045880.P17996630716572284968

`record[A069013(A294847(n))]`
-/

namespace A045880.P17996630716572284968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069013 (A294847 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045880.P17996630716572284968

/-!
# A045881: Smallest of first string of exactly 2n-1 consecutive composite integers.

The programs for A045881, there is no canonical definition to state claims against.
-/

/-! ## A045881.P14154838502806992210

`1+A000230(n+1)`
-/

namespace A045881.P14154838502806992210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000230 (n + 1)

end

end A045881.P14154838502806992210

/-! ## A045881.P5749902121614928833

`3-∑[-Δ[A000230(n)]]`
-/

namespace A045881.P5749902121614928833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045881.P5749902121614928833

/-! ## A045881.P10764772036652556687

`-xor(1, -A000230(Δ[n²]-n))`
-/

namespace A045881.P10764772036652556687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-A000230 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A045881.P10764772036652556687

/-! ## A045881.P11329756023987909581

`A328310(A033216(n+1))-(n-A001632(n+1)+n)`
-/

namespace A045881.P11329756023987909581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328310 (A033216 (n + 1)).toNat - ((n : ℤ) - A001632 (n + 1) + (n : ℤ))

end

end A045881.P11329756023987909581

/-! ## A045881.P14404834533632648952

`A001632(n+1)-A131843(A000217(n))`
-/

namespace A045881.P14404834533632648952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001632 (n + 1) - A131843 (A000217 n).toNat

end

end A045881.P14404834533632648952

/-! ## A045881.P10162232050124915129

`A001632(n+1)-A131843(A000096(n))`
-/

namespace A045881.P10162232050124915129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001632 (n + 1) - A131843 (A000096 n).toNat

end

end A045881.P10162232050124915129

/-! ## A045881.P287336532310179839

`A046789(n+1)+1-A046728(n+1)`
-/

namespace A045881.P287336532310179839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046789 (n + 1) + (1 - A046728 (n + 1))

end

end A045881.P287336532310179839

/-! ## A045881.P2396995025098084705

`(comp[2*n]-A001632(n+1))*A008683(A002146(n))`
-/

namespace A045881.P2396995025098084705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A001632 (n + 1)) * A008683 (A002146 n).toNat

end

end A045881.P2396995025098084705

/-! ## A045881.P9994131082186237682

`A174350(∑[n+1])+1`
-/

namespace A045881.P9994131082186237682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A045881.P9994131082186237682

/-! ## A045881.P17252572228612243785

`A231609(A000124(n))+1`
-/

namespace A045881.P17252572228612243785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (A000124 n).toNat + 1

end

end A045881.P17252572228612243785

/-! ## A045881.P10347521760442674610

`A231609(∑[A028310(n)])+1`
-/

namespace A045881.P10347521760442674610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A045881.P10347521760442674610

/-! ## A045881.P11251822372157600364

`A231609(A000217(n)+1)+1`
-/

namespace A045881.P11251822372157600364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (A000217 n + 1).toNat + 1

end

end A045881.P11251822372157600364

/-!
# A045882: Smallest term of first run of (at least) n consecutive integers which are not squarefree.

The programs for A045882, there is no canonical definition to state claims against.
-/

/-! ## A045882.P12509803771738160941

`A051681(A102683(n)+1+n)`
-/

namespace A045882.P12509803771738160941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051681 (A102683 n + 1 + (n : ℤ)).toNat

end

end A045882.P12509803771738160941

/-! ## A045882.P12311277446654306781

`A051681(or(n+1, A001899(n)))`
-/

namespace A045882.P12311277446654306781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051681 (Int.lor (n + 1 : ℤ) (A001899 n)).toNat

end

end A045882.P12311277446654306781

/-! ## A045882.P3802701375475769715

`A051681(or(n+1, A105570(n)))`
-/

namespace A045882.P3802701375475769715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051681 (Int.lor (n + 1 : ℤ) (A105570 n)).toNat

end

end A045882.P3802701375475769715

/-! ## A045882.P12303967722936627272

`A051681(A044940(n+1)+1+n)`
-/

namespace A045882.P12303967722936627272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051681 (A044940 (n + 1) + 1 + (n : ℤ)).toNat

end

end A045882.P12303967722936627272

/-! ## A045882.P14298022832383243086

`(A307382(n+1)+1)²*A069021(n+1)`
-/

namespace A045882.P14298022832383243086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A307382 (n + 1) + 1) ^ 2 * A069021 (n + 1)

end

end A045882.P14298022832383243086

/-!
# A045883: a(n) = ((3*n+1)*2^n - (-1)^n)/9.

The programs for A045883, the canonical program `A045883.P18250751842134863464` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045883 has offset 0).

The definition of A045883 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((3*n+1)*2^n-(-1)^n)/9` (program `A045883.P7886074413685529447`, by `A045883.P7886074413685529447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A045883.P18250751842134863464

`3*a(n-1)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045883

/-- `3*a(n-1)-4*a(n-3)` -/
def P18250751842134863464.Spec : Prop :=
  ∀ n, P18250751842134863464.a n = A045883 n

theorem P18250751842134863464.correct : P18250751842134863464.Spec := by
  intro n
  simp only [A045883]

end A045883

/-! ## A045883.P7886074413685529447

`((3*n+1)*2^n-(-1)^n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045883.P7886074413685529447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * n + 1) * 2 ^ n : ℤ) - (-1) ^ n : ℚ) / 9

end

end A045883.P7886074413685529447

namespace A045883

/-- `((3*n+1)*2^n-(-1)^n)/9` -/
def P7886074413685529447.Spec : Prop :=
  ∀ n, P7886074413685529447.a n = (A045883 n : ℚ)

theorem P7886074413685529447.correct : P7886074413685529447.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A045883, Nat.add_sub_cancel, A045883.P7886074413685529447.a, A045883.P18250751842134863464.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h3 := ih m (by omega)
      simp only [A045883, Nat.add_sub_cancel, A045883.P7886074413685529447.a, A045883.P18250751842134863464.a, SequenceMachineLib.memo_apply] at h1 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h3 ⊢
      rw [← h1, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A045883

/-! ## A045883.P5678593524617398603

`∑[A175656(n)-2^n]`
-/

namespace A045883.P5678593524617398603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045883.P5678593524617398603

namespace A045883

/-- `∑[A175656(n)-2^n]` -/
def P5678593524617398603.Spec : Prop :=
  ∀ n, P5678593524617398603.a n = A045883 n

end A045883

/-! ## A045883.P1351262309587020393

`A127984(n+1)-2^n`
-/

namespace A045883.P1351262309587020393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (n + 1) - (2 ^ n : ℤ)

end

end A045883.P1351262309587020393

namespace A045883

/-- `A127984(n+1)-2^n` -/
def P1351262309587020393.Spec : Prop :=
  ∀ n, P1351262309587020393.a n = A045883 n

end A045883

/-! ## A045883.P15745439586550834943

`2^(n+1)-A139790(n+1)`
-/

namespace A045883.P15745439586550834943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A139790 (n + 1)

end

end A045883.P15745439586550834943

namespace A045883

/-- `2^(n+1)-A139790(n+1)` -/
def P15745439586550834943.Spec : Prop :=
  ∀ n, P15745439586550834943.a n = A045883 n

end A045883

/-! ## A045883.P215368959746667040

`A172481(n+1)-2^(n+1)`
-/

namespace A045883.P215368959746667040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A045883.P215368959746667040

namespace A045883

/-- `A172481(n+1)-2^(n+1)` -/
def P215368959746667040.Spec : Prop :=
  ∀ n, P215368959746667040.a n = A045883 n

end A045883

/-! ## A045883.P6587566264706884035

`2^(n+2)-A136299(n+2)`
-/

namespace A045883.P6587566264706884035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A136299 (n + 2)

end

end A045883.P6587566264706884035

namespace A045883

/-- `2^(n+2)-A136299(n+2)` -/
def P6587566264706884035.Spec : Prop :=
  ∀ n, P6587566264706884035.a n = A045883 n

end A045883

/-! ## A045883.P7559072873173791135

`A136298(n+2)-2^(n+2)`
-/

namespace A045883.P7559072873173791135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A045883.P7559072873173791135

namespace A045883

/-- `A136298(n+2)-2^(n+2)` -/
def P7559072873173791135.Spec : Prop :=
  ∀ n, P7559072873173791135.a n = A045883 n

end A045883

/-! ## A045883.P11511818833246203198

`A001045(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A045883.P11511818833246203198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001045 n + 2 * a (n - 1)

end

end A045883.P11511818833246203198

namespace A045883

/-- `A001045(n)+2*a(n-1)` -/
def P11511818833246203198.Spec : Prop :=
  ∀ n, P11511818833246203198.a n = A045883 n

end A045883

/-! ## A045883.P1664365626046966321

`A140960(n)+A001045(n)`
-/

namespace A045883.P1664365626046966321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 n + A001045 n

end

end A045883.P1664365626046966321

namespace A045883

/-- `A140960(n)+A001045(n)` -/
def P1664365626046966321.Spec : Prop :=
  ∀ n, P1664365626046966321.a n = A045883 n

end A045883

/-! ## A045883.P12870505782595816679

`A140787(n)-A199572(n)`
-/

namespace A045883.P12870505782595816679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140787 n - A199572 n

end

end A045883.P12870505782595816679

namespace A045883

/-- `A140787(n)-A199572(n)` -/
def P12870505782595816679.Spec : Prop :=
  ∀ n, P12870505782595816679.a n = A045883 n

end A045883

/-! ## A045883.P1605873457737456353

`A127985(n)+1-A005578(n)`
-/

namespace A045883.P1605873457737456353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127985 n + (1 - A005578 n)

end

end A045883.P1605873457737456353

namespace A045883

/-- `A127985(n)+1-A005578(n)` -/
def P1605873457737456353.Spec : Prop :=
  ∀ n, P1605873457737456353.a n = A045883 n

end A045883

/-! ## A045883.P16757343942796409677

`A275434(n+2)-A001045(n)`
-/

namespace A045883.P16757343942796409677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275434 (n + 2) - A001045 n

end

end A045883.P16757343942796409677

namespace A045883

/-- `A275434(n+2)-A001045(n)` -/
def P16757343942796409677.Spec : Prop :=
  ∀ n, P16757343942796409677.a n = A045883 n

end A045883

/-! ## A045883.P10497008343733001571

`A140960(n)+A133684(2*n)`
-/

namespace A045883.P10497008343733001571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 n + A133684 (2 * n)

end

end A045883.P10497008343733001571

namespace A045883

/-- `A140960(n)+A133684(2*n)` -/
def P10497008343733001571.Spec : Prop :=
  ∀ n, P10497008343733001571.a n = A045883 n

end A045883

/-! ## A045883.P6124496008552619661

`A178748(n)-A006904(n+4)`
-/

namespace A045883.P6124496008552619661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178748 n - A006904 (n + 4)

end

end A045883.P6124496008552619661

namespace A045883

/-- `A178748(n)-A006904(n+4)` -/
def P6124496008552619661.Spec : Prop :=
  ∀ n, P6124496008552619661.a n = A045883 n

end A045883

/-! ## A045883.P820011290233803484

`A062092(n)-2*A139790(n)`
-/

namespace A045883.P820011290233803484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n - 2 * A139790 n

end

end A045883.P820011290233803484

namespace A045883

/-- `A062092(n)-2*A139790(n)` -/
def P820011290233803484.Spec : Prop :=
  ∀ n, P820011290233803484.a n = A045883 n

end A045883

/-! ## A045883.P14329764946255256851

`2*A175656(n)-A062092(n)`
-/

namespace A045883.P14329764946255256851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A175656 n - A062092 n

end

end A045883.P14329764946255256851

namespace A045883

/-- `2*A175656(n)-A062092(n)` -/
def P14329764946255256851.Spec : Prop :=
  ∀ n, P14329764946255256851.a n = A045883 n

end A045883

/-! ## A045883.P4786196641451283193

`∑[A172481(n)-A001045(n+1)]`
-/

namespace A045883.P4786196641451283193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045883.P4786196641451283193

namespace A045883

/-- `∑[A172481(n)-A001045(n+1)]` -/
def P4786196641451283193.Spec : Prop :=
  ∀ n, P4786196641451283193.a n = A045883 n

end A045883

/-! ## A045883.P5369942022172474133

`∑[A127984(n+1)-A172481(n)]`
-/

namespace A045883.P5369942022172474133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127984 (n + 1) - A172481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045883.P5369942022172474133

namespace A045883

/-- `∑[A127984(n+1)-A172481(n)]` -/
def P5369942022172474133.Spec : Prop :=
  ∀ n, P5369942022172474133.a n = A045883 n

end A045883

/-!
# A045885: Largest number m such that in base n, the sum of digits in the divisors of m is m (written in base 10).

The programs for A045885, there is no canonical definition to state claims against.
-/

/-! ## A045885.P8407693717558654189

`A346560(eq[1, A346560(n+3)]+2)`
-/

namespace A045885.P8407693717558654189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346560 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A045885.P8407693717558654189

/-!
# A045887: Number of distinct even numbers visible as proper subsequences of n.

The programs for A045887, there is no canonical definition to state claims against.
-/

/-! ## A045887.P7837811235910225678

`A079806(n)%A051716(n)`
-/

namespace A045887.P7837811235910225678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079806 n) (A051716 n)

end

end A045887.P7837811235910225678

/-! ## A045887.P17042973428772887048

`(A342845(n)^A119350(n+1)^4)%7`
-/

namespace A045887.P17042973428772887048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ)) ^ 4)) 7

end

end A045887.P17042973428772887048

/-! ## A045887.P17549380820846352303

`A002088(A342845(n)^A119350(n+1))`
-/

namespace A045887.P17549380820846352303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (SequenceMachineLib.roundAway ((A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ))).toNat

end

end A045887.P17549380820846352303

/-! ## A045887.P11674079313852304997

`A004275(A342845(n)^A119350(n+1))`
-/

namespace A045887.P11674079313852304997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ))).toNat

end

end A045887.P11674079313852304997

/-! ## A045887.P7375819842839470848

`A001481(A342845(n)^A119350(n+1)+1)`
-/

namespace A045887.P7375819842839470848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (SequenceMachineLib.roundAway ((A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ) + 1)).toNat

end

end A045887.P7375819842839470848

/-! ## A045887.P14657437503563754397

`A067659(3*A342845(n)^A119350(n+1))`
-/

namespace A045887.P14657437503563754397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (SequenceMachineLib.roundAway (3 * (A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ))).toNat

end

end A045887.P14657437503563754397

/-! ## A045887.P8564480033827652724

`A002264(4*A342845(n)^A119350(n+1))`
-/

namespace A045887.P8564480033827652724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway (4 * (A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ))).toNat

end

end A045887.P8564480033827652724

/-! ## A045887.P4364474420128585157

`A000720(2^A342845(n)^A119350(n+1))`
-/

namespace A045887.P4364474420128585157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ) : ℝ))).toNat

end

end A045887.P4364474420128585157

/-! ## A045887.P15715791378987040936

`A004526(2^A342845(n)^A119350(n+1))`
-/

namespace A045887.P15715791378987040936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ) : ℝ))).toNat

end

end A045887.P15715791378987040936

/-! ## A045887.P3737886136031082600

`A082462(2^A342845(n)^A119350(n+1))`
-/

namespace A045887.P3737886136031082600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082462 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ) : ℝ))).toNat

end

end A045887.P3737886136031082600

/-! ## A045887.P9658423050373642522

`A000195(4^A342845(n)^A119350(n+1))`
-/

namespace A045887.P9658423050373642522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (SequenceMachineLib.roundAway ((4 : ℝ) ^ ((A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ) : ℝ))).toNat

end

end A045887.P9658423050373642522

/-! ## A045887.P2067196281313334734

`A000583(A342845(n)^A119350(n+1))%7`
-/

namespace A045887.P2067196281313334734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 (SequenceMachineLib.roundAway ((A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ))).toNat) 7

end

end A045887.P2067196281313334734

/-! ## A045887.P5579667685358525258

`∑{d}[A342845(n)^A119350(n+1), A000265(#)]`
-/

namespace A045887.P5579667685358525258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000265 d

end

end A045887.P5579667685358525258

/-! ## A045887.P18341764488969401403

`∑{d}[A342845(n)^A119350(n+1), A026741(#)]`
-/

namespace A045887.P18341764488969401403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342845 n : ℚ) ^ (A119350 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A026741 d

end

end A045887.P18341764488969401403

/-! ## A045887.P7217211973618804395

`A342845(n)+A091453(n²)`
-/

namespace A045887.P7217211973618804395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 n + A091453 (n ^ 2)

end

end A045887.P7217211973618804395

/-! ## A045887.P8728832126728920631

`A001222(A007918(n)^A342845(n))`
-/

namespace A045887.P8728832126728920631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A007918 n : ℚ) ^ (A342845 n : ℤ))).toNat

end

end A045887.P8728832126728920631

/-! ## A045887.P1778429599414138830

`A001222(A151800(n)^A342845(n))`
-/

namespace A045887.P1778429599414138830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A151800 n : ℚ) ^ (A342845 n : ℤ))).toNat

end

end A045887.P1778429599414138830

/-! ## A045887.P3541150867028096578

`and(A148524(n), A342845(n))`
-/

namespace A045887.P3541150867028096578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148524 n) (A342845 n)

end

end A045887.P3541150867028096578

/-! ## A045887.P3556657563583566326

`and(A148528(n), A342845(n))`
-/

namespace A045887.P3556657563583566326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148528 n) (A342845 n)

end

end A045887.P3556657563583566326

/-! ## A045887.P13392400159065098895

`and(A148930(n), A342845(n))`
-/

namespace A045887.P13392400159065098895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148930 n) (A342845 n)

end

end A045887.P13392400159065098895

/-!
# A045888: Number of distinct odd numbers visible as proper subsequences of n.

The programs for A045888, there is no canonical definition to state claims against.
-/

/-! ## A045888.P14567442612509446943

`A342846(A272215(n+1))%∑[A103582(n)]`
-/

namespace A045888.P14567442612509446943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342846 (A272215 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045888.P14567442612509446943

/-! ## A045888.P1100109399916213823

`A342846(A272215(n+1))+A000038(A052221(n+1))`
-/

namespace A045888.P1100109399916213823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342846 (A272215 (n + 1)).toNat + A000038 (A052221 (n + 1)).toNat

end

end A045888.P1100109399916213823

/-! ## A045888.P6124638275931134524

`A342846(A272215(n+1))+A122840(A104793(n+1))`
-/

namespace A045888.P6124638275931134524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342846 (A272215 (n + 1)).toNat + A122840 (A104793 (n + 1)).toNat

end

end A045888.P6124638275931134524

/-! ## A045888.P5547202489802301032

`A342846(A272215(n+1))^A014963(A017437(n))`
-/

namespace A045888.P5547202489802301032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342846 (A272215 (n + 1)).toNat : ℚ) ^ (A014963 (A017437 n).toNat : ℤ)

end

end A045888.P5547202489802301032

/-! ## A045888.P1192244904363832849

`A342846(A272215(n+1))^A014963(A016789(n))`
-/

namespace A045888.P1192244904363832849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342846 (A272215 (n + 1)).toNat : ℚ) ^ (A014963 (A016789 n).toNat : ℤ)

end

end A045888.P1192244904363832849

/-! ## A045888.P5463497979385146240

`A342846(A272215(n+1))^A019428(A017233(n))`
-/

namespace A045888.P5463497979385146240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342846 (A272215 (n + 1)).toNat : ℚ) ^ (A019428 (A017233 n).toNat : ℤ)

end

end A045888.P5463497979385146240

/-! ## A045888.P5056509256599775696

`and(A148524(n), A342846(n+1))`
-/

namespace A045888.P5056509256599775696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148524 n) (A342846 (n + 1))

end

end A045888.P5056509256599775696

/-! ## A045888.P17565702150900946415

`and(A148528(n), A342846(n+1))`
-/

namespace A045888.P17565702150900946415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A148528 n) (A342846 (n + 1))

end

end A045888.P17565702150900946415

/-! ## A045888.P13333062385920860576

`A342846(and(1, A148930(n))+n)`
-/

namespace A045888.P13333062385920860576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342846 (Int.land 1 (A148930 n) + (n : ℤ)).toNat

end

end A045888.P13333062385920860576

/-! ## A045888.P753170245912614012

`A342846(and(1, A149026(n))+n)`
-/

namespace A045888.P753170245912614012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342846 (Int.land 1 (A149026 n) + (n : ℤ)).toNat

end

end A045888.P753170245912614012

/-!
# A045889: Partial sums of A045618.

The programs for A045889, the canonical program `A045889.P2883515826032594447` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045889 has offset 0).

The definition of A045889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045889.P2883515826032594447

`(n²+11*n+34)/2+(n-2)*2^(n+3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045889

/-- `(n²+11*n+34)/2+(n-2)*2^(n+3)` -/
def P2883515826032594447.Spec : Prop :=
  ∀ n, P2883515826032594447.a n = (A045889 n : ℚ)

end A045889

/-! ## A045889.P6741660723597815614

`∑[A045618(n)]`
-/

namespace A045889.P6741660723597815614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045889.P6741660723597815614

namespace A045889

/-- `∑[A045618(n)]` -/
def P6741660723597815614.Spec : Prop :=
  ∀ n, P6741660723597815614.a n = A045889 n

end A045889

/-! ## A045889.P9372747308075053692

`∑[∑[A000337(n+1)]]`
-/

namespace A045889.P9372747308075053692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045889.P9372747308075053692

namespace A045889

/-- `∑[∑[A000337(n+1)]]` -/
def P9372747308075053692.Spec : Prop :=
  ∀ n, P9372747308075053692.a n = A045889 n

end A045889

/-! ## A045889.P10680566298459520559

`∑[∑[A036799(n+1)]]/2`
-/

namespace A045889.P10680566298459520559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036799 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A045889.P10680566298459520559

namespace A045889

/-- `∑[∑[A036799(n+1)]]/2` -/
def P10680566298459520559.Spec : Prop :=
  ∀ n, P10680566298459520559.a n = (A045889 n : ℚ)

end A045889

/-! ## A045889.P13421908067234327743

`∑[record[A213747(n+1)]]`
-/

namespace A045889.P13421908067234327743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213747 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045889.P13421908067234327743

namespace A045889

/-- `∑[record[A213747(n+1)]]` -/
def P13421908067234327743.Spec : Prop :=
  ∀ n, P13421908067234327743.a n = A045889 n

end A045889

/-! ## A045889.P13553397980211514131

`A106194(A167614(n+2))`
-/

namespace A045889.P13553397980211514131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106194 (A167614 (n + 2)).toNat

end

end A045889.P13553397980211514131

namespace A045889

/-- `A106194(A167614(n+2))` -/
def P13553397980211514131.Spec : Prop :=
  ∀ n, P13553397980211514131.a n = A045889 n

end A045889

/-! ## A045889.P4521732856779620393

`A055249(eq[4, A002262(n)])`
-/

namespace A045889.P4521732856779620393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045889.P4521732856779620393

namespace A045889

/-- `A055249(eq[4, A002262(n)])` -/
def P4521732856779620393.Spec : Prop :=
  ∀ n, P4521732856779620393.a n = A045889 n

end A045889

/-! ## A045889.P9227596777844720297

`A055249(eq[5, A002260(n+1)])`
-/

namespace A045889.P9227596777844720297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045889.P9227596777844720297

namespace A045889

/-- `A055249(eq[5, A002260(n+1)])` -/
def P9227596777844720297.Spec : Prop :=
  ∀ n, P9227596777844720297.a n = A045889 n

end A045889

/-! ## A045889.P2931120789308840898

`A210489(A090288(n+1))`
-/

namespace A045889.P2931120789308840898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210489 (A090288 (n + 1)).toNat

end

end A045889.P2931120789308840898

namespace A045889

/-- `A210489(A090288(n+1))` -/
def P2931120789308840898.Spec : Prop :=
  ∀ n, P2931120789308840898.a n = A045889 n

end A045889

/-!
# A045890: Catafusenes (see reference for precise definition).

The programs for A045890, the canonical program `A045890.P3522164862785645351` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045890 has offset 0).

The definition of A045890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045890.P3522164862785645351

`Δ[Δ[A039919(A028310(n))]]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045890

/-- `Δ[Δ[A039919(A028310(n))]]` -/
def P3522164862785645351.Spec : Prop :=
  ∀ n, P3522164862785645351.a n = A045890 n

theorem P3522164862785645351.correct : P3522164862785645351.Spec := by
  intro n
  simp only [A045890]

end A045890

/-! ## A045890.P9876076268137688299

`Δ[A045868(n)-A002212(n)]`
-/

namespace A045890.P9876076268137688299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045868 n - A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045890.P9876076268137688299

namespace A045890

/-- `Δ[A045868(n)-A002212(n)]` -/
def P9876076268137688299.Spec : Prop :=
  ∀ n, P9876076268137688299.a n = A045890 n

end A045890

/-! ## A045890.P12484616413949162668

`A277969(n+2)-A045868(n)`
-/

namespace A045890.P12484616413949162668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 (n + 2) - A045868 n

end

end A045890.P12484616413949162668

namespace A045890

/-- `A277969(n+2)-A045868(n)` -/
def P12484616413949162668.Spec : Prop :=
  ∀ n, P12484616413949162668.a n = A045890 n

end A045890

/-! ## A045890.P7163550632665997867

`Δ[Δ[A002212(n)-A181768(n)]]`
-/

namespace A045890.P7163550632665997867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A181768 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045890.P7163550632665997867

namespace A045890

/-- `Δ[Δ[A002212(n)-A181768(n)]]` -/
def P7163550632665997867.Spec : Prop :=
  ∀ n, P7163550632665997867.a n = A045890 n

end A045890

/-! ## A045890.P16853470757616147470

`Δ[A030520(n+2)-A030529(n+2)]`
-/

namespace A045890.P16853470757616147470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030520 (n + 2) - A030529 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045890.P16853470757616147470

namespace A045890

/-- `Δ[A030520(n+2)-A030529(n+2)]` -/
def P16853470757616147470.Spec : Prop :=
  ∀ n, P16853470757616147470.a n = A045890 n

end A045890

/-! ## A045890.P13782886493142470138

`A045445(n+1)+A002215(2*n+1)`
-/

namespace A045890.P13782886493142470138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) + A002215 (2 * n + 1)

end

end A045890.P13782886493142470138

namespace A045890

/-- `A045445(n+1)+A002215(2*n+1)` -/
def P13782886493142470138.Spec : Prop :=
  ∀ n, P13782886493142470138.a n = A045890 n

end A045890

/-! ## A045890.P9238900572522791779

`Δ[A025238(n+2)-A002215(2*n+1)]`
-/

namespace A045890.P9238900572522791779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (n + 2) - A002215 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045890.P9238900572522791779

namespace A045890

/-- `Δ[A025238(n+2)-A002215(2*n+1)]` -/
def P9238900572522791779.Spec : Prop :=
  ∀ n, P9238900572522791779.a n = A045890 n

end A045890

/-! ## A045890.P16109173476742275003

`Δ[A002215(2*(n+1))-A002215(2*n+1)]`
-/

namespace A045890.P16109173476742275003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002215 (2 * (n + 1)) - A002215 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045890.P16109173476742275003

namespace A045890

/-- `Δ[A002215(2*(n+1))-A002215(2*n+1)]` -/
def P16109173476742275003.Spec : Prop :=
  ∀ n, P16109173476742275003.a n = A045890 n

end A045890

/-! ## A045890.P18158979918947891327

`A045445(n+1)+A002212(n)+Δ[A181768(n)]`
-/

namespace A045890.P18158979918947891327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) + (A002212 n + (f1 (n + 1) - f1 n))

end

end A045890.P18158979918947891327

namespace A045890

/-- `A045445(n+1)+A002212(n)+Δ[A181768(n)]` -/
def P18158979918947891327.Spec : Prop :=
  ∀ n, P18158979918947891327.a n = A045890 n

end A045890

/-!
# A045891: First differences of A045623.

The programs for A045891, the canonical program `A045891.P14011693326007966013` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045891 has offset 0).

The definition of A045891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045891.P14011693326007966013

`round((n+4)*2^(n-3))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045891

/-- `round((n+4)*2^(n-3))` -/
def P14011693326007966013.Spec : Prop :=
  ∀ n, P14011693326007966013.a n = A045891 n

theorem P14011693326007966013.correct : P14011693326007966013.Spec := by
  intro n
  simp only [A045891]

end A045891

/-! ## A045891.P219465477894628835

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A045891.P219465477894628835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A045891.P219465477894628835

namespace A045891

/-- `4*(a(n-1)-a(n-2))` -/
def P219465477894628835.Spec : Prop :=
  ∀ n, P219465477894628835.a n = A045891 n

end A045891

/-! ## A045891.P13210686430995704776

`abs(A081037(n))`
-/

namespace A045891.P13210686430995704776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081037 n|

end

end A045891.P13210686430995704776

namespace A045891

/-- `abs(A081037(n))` -/
def P13210686430995704776.Spec : Prop :=
  ∀ n, P13210686430995704776.a n = A045891 n

end A045891

/-! ## A045891.P17432674971657558529

`∑[A034007(n)]`
-/

namespace A045891.P17432674971657558529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045891.P17432674971657558529

namespace A045891

/-- `∑[A034007(n)]` -/
def P17432674971657558529.Spec : Prop :=
  ∀ n, P17432674971657558529.a n = A045891 n

end A045891

/-! ## A045891.P6105965839308474697

`A109975(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A045891.P6105965839308474697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A109975 (n - 1) + a (n - 1)

end

end A045891.P6105965839308474697

namespace A045891

/-- `A109975(n-1)+a(n-1)` -/
def P6105965839308474697.Spec : Prop :=
  ∀ n, P6105965839308474697.a n = A045891 n

end A045891

/-! ## A045891.P10805091260978252846

`A049610(n)+A011782(n)`
-/

namespace A045891.P10805091260978252846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n + A011782 n

end

end A045891.P10805091260978252846

namespace A045891

/-- `A049610(n)+A011782(n)` -/
def P10805091260978252846.Spec : Prop :=
  ∀ n, P10805091260978252846.a n = A045891 n

end A045891

/-! ## A045891.P5085361834079700427

`A111297(n)-A131577(n)`
-/

namespace A045891.P5085361834079700427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 n - A131577 n

end

end A045891.P5085361834079700427

namespace A045891

/-- `A111297(n)-A131577(n)` -/
def P5085361834079700427.Spec : Prop :=
  ∀ n, P5085361834079700427.a n = A045891 n

end A045891

/-! ## A045891.P12083216097903416791

`A109975(n)-A166444(n)`
-/

namespace A045891.P12083216097903416791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 n - A166444 n

end

end A045891.P12083216097903416791

namespace A045891

/-- `A109975(n)-A166444(n)` -/
def P12083216097903416791.Spec : Prop :=
  ∀ n, P12083216097903416791.a n = A045891 n

end A045891

/-! ## A045891.P5612424339055105462

`A033999(n)*A081037(n)`
-/

namespace A045891.P5612424339055105462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081037 n

end

end A045891.P5612424339055105462

namespace A045891

/-- `A033999(n)*A081037(n)` -/
def P5612424339055105462.Spec : Prop :=
  ∀ n, P5612424339055105462.a n = A045891 n

end A045891

/-! ## A045891.P3896738621286573078

`gcd(A000038(n), A081037(n))`
-/

namespace A045891.P3896738621286573078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081037 n)

end

end A045891.P3896738621286573078

namespace A045891

/-- `gcd(A000038(n), A081037(n))` -/
def P3896738621286573078.Spec : Prop :=
  ∀ n, (P3896738621286573078.a n : ℤ) = A045891 n

end A045891

/-! ## A045891.P8831676824562296018

`lcm(A006466(n), A081037(n))`
-/

namespace A045891.P8831676824562296018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A081037 n)

end

end A045891.P8831676824562296018

namespace A045891

/-- `lcm(A006466(n), A081037(n))` -/
def P8831676824562296018.Spec : Prop :=
  ∀ n, (P8831676824562296018.a n : ℤ) = A045891 n

end A045891

/-! ## A045891.P18397421371878363814

`A166444(n+1)+A049610(n)`
-/

namespace A045891.P18397421371878363814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) + A049610 n

end

end A045891.P18397421371878363814

namespace A045891

/-- `A166444(n+1)+A049610(n)` -/
def P18397421371878363814.Spec : Prop :=
  ∀ n, P18397421371878363814.a n = A045891 n

end A045891

/-! ## A045891.P16796160248330433983

`A034007(n+1)-Δ[A034008(n)]`
-/

namespace A045891.P16796160248330433983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) - (f1 (n + 1) - f1 n)

end

end A045891.P16796160248330433983

namespace A045891

/-- `A034007(n+1)-Δ[A034008(n)]` -/
def P16796160248330433983.Spec : Prop :=
  ∀ n, P16796160248330433983.a n = A045891 n

end A045891

/-! ## A045891.P286942325575029528

`A049610(n)+A336103(n)+A336102(n)`
-/

namespace A045891.P286942325575029528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n + (A336103 n + A336102 n)

end

end A045891.P286942325575029528

namespace A045891

/-- `A049610(n)+A336103(n)+A336102(n)` -/
def P286942325575029528.Spec : Prop :=
  ∀ n, P286942325575029528.a n = A045891 n

end A045891

/-! ## A045891.P17662484481100048435

`A011782(n)+A111297(n)-∑[A011782(n)]`
-/

namespace A045891.P17662484481100048435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A111297 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045891.P17662484481100048435

namespace A045891

/-- `A011782(n)+A111297(n)-∑[A011782(n)]` -/
def P17662484481100048435.Spec : Prop :=
  ∀ n, P17662484481100048435.a n = A045891 n

end A045891

/-! ## A045891.P14672629237393441887

`A034007(n+1)+A034008(n)-A131577(n)`
-/

namespace A045891.P14672629237393441887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + (A034008 n - A131577 n)

end

end A045891.P14672629237393441887

namespace A045891

/-- `A034007(n+1)+A034008(n)-A131577(n)` -/
def P14672629237393441887.Spec : Prop :=
  ∀ n, P14672629237393441887.a n = A045891 n

end A045891

/-! ## A045891.P3356402950339718639

`A034007(n+1)+A034008(n)-A034008(n+1)`
-/

namespace A045891.P3356402950339718639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 1) + (A034008 n - A034008 (n + 1))

end

end A045891.P3356402950339718639

namespace A045891

/-- `A034007(n+1)+A034008(n)-A034008(n+1)` -/
def P3356402950339718639.Spec : Prop :=
  ∀ n, P3356402950339718639.a n = A045891 n

end A045891

/-! ## A045891.P11698955586613005609

`ceil(A131352(n)/2)`
-/

namespace A045891.P11698955586613005609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131352 n : ℚ) / 2⌉

end

end A045891.P11698955586613005609

namespace A045891

/-- `ceil(A131352(n)/2)` -/
def P11698955586613005609.Spec : Prop :=
  ∀ n, P11698955586613005609.a n = A045891 n

end A045891

/-! ## A045891.P8381451302405697490

`A087447(n)-A049610(n)`
-/

namespace A045891.P8381451302405697490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 n - A049610 n

end

end A045891.P8381451302405697490

namespace A045891

/-- `A087447(n)-A049610(n)` -/
def P8381451302405697490.Spec : Prop :=
  ∀ n, P8381451302405697490.a n = A045891 n

end A045891

/-!
# A045894: 4-fold convolution of A001700(n), n >= 0.

The programs for A045894, the canonical program `A045894.P9674795554685018314` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045894 has offset 0).

The definition of A045894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A045894.P9674795554685018314

`2*(2*n+10)/(n+4)*a(n-1)+4/(n+4)*A045720(n)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045894

/-- `2*(2*n+10)/(n+4)*a(n-1)+4/(n+4)*A045720(n)` -/
def P9674795554685018314.Spec : Prop :=
  ∀ n, P9674795554685018314.a n = (A045894 n : ℚ)

end A045894

/-! ## A045894.P13049693663507249602

`A035324(A167614(n+2)+1)`
-/

namespace A045894.P13049693663507249602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 (A167614 (n + 2) + 1).toNat

end

end A045894.P13049693663507249602

namespace A045894

/-- `A035324(A167614(n+2)+1)` -/
def P13049693663507249602.Spec : Prop :=
  ∀ n, P13049693663507249602.a n = A045894 n

end A045894

/-! ## A045894.P1358793763775258458

`A035324(A000217(n+3)+4)`
-/

namespace A045894.P1358793763775258458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 (A000217 (n + 3) + 4).toNat

end

end A045894.P1358793763775258458

namespace A045894

/-- `A035324(A000217(n+3)+4)` -/
def P1358793763775258458.Spec : Prop :=
  ∀ n, P1358793763775258458.a n = A045894 n

end A045894

/-! ## A045894.P4899934326306558465

`record[A010054(n+6)*A035324(n+10)]`
-/

namespace A045894.P4899934326306558465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 6) * A035324 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045894.P4899934326306558465

namespace A045894

/-- `record[A010054(n+6)*A035324(n+10)]` -/
def P4899934326306558465.Spec : Prop :=
  ∀ n, P4899934326306558465.a n = A045894 n

end A045894

/-! ## A045894.P3560229822083329040

`A035324(A080036(A167614(n+1)))`
-/

namespace A045894.P3560229822083329040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A045894.P3560229822083329040

namespace A045894

/-- `A035324(A080036(A167614(n+1)))` -/
def P3560229822083329040.Spec : Prop :=
  ∀ n, P3560229822083329040.a n = A045894 n

end A045894

/-!
# A045895: Period length of pairs (a,b) where a has period 2n-2 and b has period n.

The programs for A045895, the canonical program `A045895.P2974834162859892774` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045895 has offset 1).

The definition of A045895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045895.P5535481165012403075

`A204557(n+1)-A204556(n+1)`
-/

namespace A045895.P5535481165012403075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204557 (n + 1) - A204556 (n + 1)

end

end A045895.P5535481165012403075

namespace A045895

/-- `A204557(n+1)-A204556(n+1)` -/
def P5535481165012403075.Spec : Prop :=
  ∀ n, P5535481165012403075.a n = A045895 (n + 1)

end A045895

/-! ## A045895.P2974834162859892774

`2*lcm(n, ∑[n])`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045895

/-- `2*lcm(n, ∑[n])` -/
def P2974834162859892774.Spec : Prop :=
  ∀ n, (P2974834162859892774.a n : ℤ) = A045895 (n + 1)

theorem P2974834162859892774.correct : P2974834162859892774.Spec := by
  intro n
  simp only [A045895, Nat.add_sub_cancel]

end A045895

/-! ## A045895.P15320758977920087039

`lcm(n+1, 2*n)`
-/

namespace A045895.P15320758977920087039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n)

end

end A045895.P15320758977920087039

namespace A045895

/-- `lcm(n+1, 2*n)` -/
def P15320758977920087039.Spec : Prop :=
  ∀ n, (P15320758977920087039.a n : ℤ) = A045895 (n + 1)

end A045895

/-! ## A045895.P8757389688724930551

`2*gcd(2, n)*∑[n]`
-/

namespace A045895.P8757389688724930551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.gcd 2 n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A045895.P8757389688724930551

namespace A045895

/-- `2*gcd(2, n)*∑[n]` -/
def P8757389688724930551.Spec : Prop :=
  ∀ n, (P8757389688724930551.a n : ℤ) = A045895 (n + 1)

end A045895

/-! ## A045895.P12326977643148119554

`((-1)^n+3)*∑[n]`
-/

namespace A045895.P12326977643148119554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + 3) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A045895.P12326977643148119554

namespace A045895

/-- `((-1)^n+3)*∑[n]` -/
def P12326977643148119554.Spec : Prop :=
  ∀ n, P12326977643148119554.a n = A045895 (n + 1)

end A045895

/-! ## A045895.P10211931010996935135

`∑[4*n]/(and(1, n)+1)`
-/

namespace A045895.P10211931010996935135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A045895.P10211931010996935135

namespace A045895

/-- `∑[4*n]/(and(1, n)+1)` -/
def P10211931010996935135.Spec : Prop :=
  ∀ n, P10211931010996935135.a n = (A045895 (n + 1) : ℚ)

end A045895

/-! ## A045895.P10051796609218422093

`∑[4*n]/(2*and(1, n))!`
-/

namespace A045895.P10051796609218422093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.factorial (2 * Nat.land 1 n) : ℚ)

end

end A045895.P10051796609218422093

namespace A045895

/-- `∑[4*n]/(2*and(1, n))!` -/
def P10051796609218422093.Spec : Prop :=
  ∀ n, P10051796609218422093.a n = (A045895 (n + 1) : ℚ)

end A045895

/-! ## A045895.P8872567253168219779

`gcd((n+1)*2*n, (n+1)*n²)`
-/

namespace A045895.P8872567253168219779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) * (2 * n)) ((n + 1) * n ^ 2)

end

end A045895.P8872567253168219779

namespace A045895

/-- `gcd((n+1)*2*n, (n+1)*n²)` -/
def P8872567253168219779.Spec : Prop :=
  ∀ n, (P8872567253168219779.a n : ℤ) = A045895 (n + 1)

end A045895

/-! ## A045895.P4847028715292762258

`sqrt(lcm((2*n-(n-1))², (2*n)²))`
-/

namespace A045895.P4847028715292762258
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.lcm (((2 * n : ℤ) - ((n : ℤ) - 1)) ^ 2) ((2 * n) ^ 2 : ℤ) : ℝ)

end

end A045895.P4847028715292762258

namespace A045895

/-- `sqrt(lcm((2*n-(n-1))², (2*n)²))` -/
def P4847028715292762258.Spec : Prop :=
  ∀ n, P4847028715292762258.a n = (A045895 (n + 1) : ℝ)

end A045895

/-! ## A045895.P3629835258530725930

`A065530(n)+n²`
-/

namespace A045895.P3629835258530725930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 n + (n ^ 2 : ℤ)

end

end A045895.P3629835258530725930

namespace A045895

/-- `A065530(n)+n²` -/
def P3629835258530725930.Spec : Prop :=
  ∀ n, P3629835258530725930.a n = A045895 (n + 1)

end A045895

/-! ## A045895.P16933706758370557563

`abs(2*n*A030640(n))`
-/

namespace A045895.P16933706758370557563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((n : ℤ) * A030640 n)|

end

end A045895.P16933706758370557563

namespace A045895

/-- `abs(2*n*A030640(n))` -/
def P16933706758370557563.Spec : Prop :=
  ∀ n, P16933706758370557563.a n = A045895 (n + 1)

end A045895

/-! ## A045895.P5045796950048172887

`2*(n²+n)/A000034(n)`
-/

namespace A045895.P5045796950048172887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n ^ 2 + n) : ℚ) / (A000034 n : ℚ)

end

end A045895.P5045796950048172887

namespace A045895

/-- `2*(n²+n)/A000034(n)` -/
def P5045796950048172887.Spec : Prop :=
  ∀ n, P5045796950048172887.a n = (A045895 (n + 1) : ℚ)

end A045895

/-! ## A045895.P6672722019958766453

`A181900(n)+A022998(n)`
-/

namespace A045895.P6672722019958766453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181900 n + A022998 n

end

end A045895.P6672722019958766453

namespace A045895

/-- `A181900(n)+A022998(n)` -/
def P6672722019958766453.Spec : Prop :=
  ∀ n, P6672722019958766453.a n = A045895 (n + 1)

end A045895

/-! ## A045895.P14932699416143688850

`A169642(n)-A181900(n)`
-/

namespace A045895.P14932699416143688850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169642 n - A181900 n

end

end A045895.P14932699416143688850

namespace A045895

/-- `A169642(n)-A181900(n)` -/
def P14932699416143688850.Spec : Prop :=
  ∀ n, P14932699416143688850.a n = A045895 (n + 1)

end A045895

/-! ## A045895.P2469123781958556401

`A033996(n)/A010694(n)`
-/

namespace A045895.P2469123781958556401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033996 n : ℚ) / (A010694 n : ℚ)

end

end A045895.P2469123781958556401

namespace A045895

/-- `A033996(n)/A010694(n)` -/
def P2469123781958556401.Spec : Prop :=
  ∀ n, P2469123781958556401.a n = (A045895 (n + 1) : ℚ)

end A045895

/-! ## A045895.P5471382342098851954

`A035008(n)/A010713(n)`
-/

namespace A045895.P5471382342098851954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035008 n : ℚ) / (A010713 n : ℚ)

end

end A045895.P5471382342098851954

namespace A045895

/-- `A035008(n)/A010713(n)` -/
def P5471382342098851954.Spec : Prop :=
  ∀ n, P5471382342098851954.a n = (A045895 (n + 1) : ℚ)

end A045895

/-! ## A045895.P1338812609100068094

`A049598(n)/A010704(n)`
-/

namespace A045895.P1338812609100068094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049598 n : ℚ) / (A010704 n : ℚ)

end

end A045895.P1338812609100068094

namespace A045895

/-- `A049598(n)/A010704(n)` -/
def P1338812609100068094.Spec : Prop :=
  ∀ n, P1338812609100068094.a n = (A045895 (n + 1) : ℚ)

end A045895

/-! ## A045895.P14103688059591918503

`A163761(n)/A010721(n)`
-/

namespace A045895.P14103688059591918503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163761 n : ℚ) / (A010721 n : ℚ)

end

end A045895.P14103688059591918503

namespace A045895

/-- `A163761(n)/A010721(n)` -/
def P14103688059591918503.Spec : Prop :=
  ∀ n, P14103688059591918503.a n = (A045895 (n + 1) : ℚ)

end A045895

/-! ## A045895.P8082780666022930625

`A101362(n)/A129204(n)`
-/

namespace A045895.P8082780666022930625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101362 n : ℚ) / (A129204 n : ℚ)

end

end A045895.P8082780666022930625

namespace A045895

/-- `A101362(n)/A129204(n)` -/
def P8082780666022930625.Spec : Prop :=
  ∀ n, P8082780666022930625.a n = (A045895 (n + 1) : ℚ)

end A045895

/-! ## A045895.P5452861657802400296

`A033996(n)/A382713(n)`
-/

namespace A045895.P5452861657802400296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033996 n : ℚ) / (A382713 n : ℚ)

end

end A045895.P5452861657802400296

namespace A045895

/-- `A033996(n)/A382713(n)` -/
def P5452861657802400296.Spec : Prop :=
  ∀ n, P5452861657802400296.a n = (A045895 (n + 1) : ℚ)

end A045895

/-!
# A045896: Denominator of n/((n+1)*(n+2)) = A026741/A045896.

The programs for A045896, the canonical program `A045896.P6954889427645202220` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045896 has offset 0).

The definition of A045896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045896.P6954889427645202220

`(n+1)*(n+2)*(3-(-1)^n)/4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045896

/-- `(n+1)*(n+2)*(3-(-1)^n)/4` -/
def P6954889427645202220.Spec : Prop :=
  ∀ n, P6954889427645202220.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P13392213979052756296

`A045895(n+2)/2`
-/

namespace A045896.P13392213979052756296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045895 (n + 2) : ℚ) / 2

end

end A045896.P13392213979052756296

namespace A045896

/-- `A045895(n+2)/2` -/
def P13392213979052756296.Spec : Prop :=
  ∀ n, P13392213979052756296.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P9345696940639057039

`lcm(n+1, ∑[n+1])`
-/

namespace A045896.P9345696940639057039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045896.P9345696940639057039

namespace A045896

/-- `lcm(n+1, ∑[n+1])` -/
def P9345696940639057039.Spec : Prop :=
  ∀ n, (P9345696940639057039.a n : ℤ) = A045896 n

end A045896

/-! ## A045896.P5605071611357172394

`∑[2*(n+1)]/gcd(2, n)`
-/

namespace A045896.P5605071611357172394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A045896.P5605071611357172394

namespace A045896

/-- `∑[2*(n+1)]/gcd(2, n)` -/
def P5605071611357172394.Spec : Prop :=
  ∀ n, P5605071611357172394.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P1491511195970542107

`C((n+1)², 2)/a(n-1)` with `a(0)=1`
-/

namespace A045896.P1491511195970542107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℚ) / a (n - 1)

end

end A045896.P1491511195970542107

namespace A045896

/-- `C((n+1)², 2)/a(n-1)` -/
def P1491511195970542107.Spec : Prop :=
  ∀ n, P1491511195970542107.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P9348277715222728948

`-or(n+1, -2)*∑[n+1]`
-/

namespace A045896.P9348277715222728948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor (n + 1 : ℤ) (-2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A045896.P9348277715222728948

namespace A045896

/-- `-or(n+1, -2)*∑[n+1]` -/
def P9348277715222728948.Spec : Prop :=
  ∀ n, P9348277715222728948.a n = A045896 n

end A045896

/-! ## A045896.P1784318863746070977

`lcm((n+1)², C(n+2, 2))/(n+1)`
-/

namespace A045896.P1784318863746070977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm ((n + 1) ^ 2) (Nat.choose (n + 2) 2) : ℚ) / (n + 1 : ℚ)

end

end A045896.P1784318863746070977

namespace A045896

/-- `lcm((n+1)², C(n+2, 2))/(n+1)` -/
def P1784318863746070977.Spec : Prop :=
  ∀ n, P1784318863746070977.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P13972431428817008963

`(n+2)²-C(or(1, n+2), n+1)`
-/

namespace A045896.P13972431428817008963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (Nat.choose (Nat.lor 1 (n + 2)) (n + 1) : ℤ)

end

end A045896.P13972431428817008963

namespace A045896

/-- `(n+2)²-C(or(1, n+2), n+1)` -/
def P13972431428817008963.Spec : Prop :=
  ∀ n, P13972431428817008963.a n = A045896 n

end A045896

/-! ## A045896.P375031038650945744

`∑[Δ[lcm(2*n-(n-1), 2*n)]/2]`
-/

namespace A045896.P375031038650945744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n : ℤ) - ((n : ℤ) - 1)) (2 * n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045896.P375031038650945744

namespace A045896

/-- `∑[Δ[lcm(2*n-(n-1), 2*n)]/2]` -/
def P375031038650945744.Spec : Prop :=
  ∀ n, P375031038650945744.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P4797216621405281786

`∑[2*(n+1)]*∑[n]/a(n-1)` with `a(0)=1`
-/

namespace A045896.P4797216621405281786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℚ) / a (n - 1)

end

end A045896.P4797216621405281786

namespace A045896

/-- `∑[2*(n+1)]*∑[n]/a(n-1)` -/
def P4797216621405281786.Spec : Prop :=
  ∀ n, P4797216621405281786.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P15352976873662198783

`((n+1)²+n+1)/((n+1)%2+1)`
-/

namespace A045896.P15352976873662198783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + (n + 1) : ℚ) / (((n + 1) % 2 + 1 : ℕ) : ℚ)

end

end A045896.P15352976873662198783

namespace A045896

/-- `((n+1)²+n+1)/((n+1)%2+1)` -/
def P15352976873662198783.Spec : Prop :=
  ∀ n, P15352976873662198783.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P13465381902956522351

`lcm((n+1)²+n+1, a(n-1))/n` with `a(0)=1`
-/

namespace A045896.P13465381902956522351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm ((n + 1) ^ 2 + (n + 1) : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n : ℚ)

end

end A045896.P13465381902956522351

namespace A045896

/-- `lcm((n+1)²+n+1, a(n-1))/n` -/
def P13465381902956522351.Spec : Prop :=
  ∀ n, P13465381902956522351.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P9591632068386000380

`∑[n+2+n]/A000032(and(1, n-2))`
-/

namespace A045896.P9591632068386000380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A000032 (Int.land 1 ((n : ℤ) - 2)).toNat : ℚ)

end

end A045896.P9591632068386000380

namespace A045896

/-- `∑[n+2+n]/A000032(and(1, n-2))` -/
def P9591632068386000380.Spec : Prop :=
  ∀ n, P9591632068386000380.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P5823955853137732674

`(n+2)*(n+1)/A000010(gcd(2*n, (n+2)²))`
-/

namespace A045896.P5823955853137732674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℚ) / (A000010 (Nat.gcd (2 * n) ((n + 2) ^ 2)) : ℚ)

end

end A045896.P5823955853137732674

namespace A045896

/-- `(n+2)*(n+1)/A000010(gcd(2*n, (n+2)²))` -/
def P5823955853137732674.Spec : Prop :=
  ∀ n, P5823955853137732674.a n = (A045896 n : ℚ)

end A045896

/-! ## A045896.P791092614401056672

`A165367(n)+A129194(n)`
-/

namespace A045896.P791092614401056672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 n + A129194 n

end

end A045896.P791092614401056672

namespace A045896

/-- `A165367(n)+A129194(n)` -/
def P791092614401056672.Spec : Prop :=
  ∀ n, P791092614401056672.a n = A045896 n

end A045896

/-! ## A045896.P16662010244397788113

`A086500(n+1)-A027480(n)`
-/

namespace A045896.P16662010244397788113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086500 (n + 1) - A027480 n

end

end A045896.P16662010244397788113

namespace A045896

/-- `A086500(n+1)-A027480(n)` -/
def P16662010244397788113.Spec : Prop :=
  ∀ n, P16662010244397788113.a n = A045896 n

end A045896

/-! ## A045896.P16582807804241452485

`A145051(n+1)+A066830(n+1)`
-/

namespace A045896.P16582807804241452485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) + A066830 (n + 1)

end

end A045896.P16582807804241452485

namespace A045896

/-- `A145051(n+1)+A066830(n+1)` -/
def P16582807804241452485.Spec : Prop :=
  ∀ n, P16582807804241452485.a n = A045896 n

end A045896

/-! ## A045896.P683073482820657619

`A168059(n+1)+A089594(n+1)`
-/

namespace A045896.P683073482820657619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168059 (n + 1) + A089594 (n + 1)

end

end A045896.P683073482820657619

namespace A045896

/-- `A168059(n+1)+A089594(n+1)` -/
def P683073482820657619.Spec : Prop :=
  ∀ n, P683073482820657619.a n = A045896 n

end A045896

/-! ## A045896.P7752689900792238581

`A074149(n+1)-A303692(n+1)`
-/

namespace A045896.P7752689900792238581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 1) - A303692 (n + 1)

end

end A045896.P7752689900792238581

namespace A045896

/-- `A074149(n+1)-A303692(n+1)` -/
def P7752689900792238581.Spec : Prop :=
  ∀ n, P7752689900792238581.a n = A045896 n

end A045896

/-! ## A045896.P9329718685257716439

`gcd(A085789(n+1), A269469(n+1))`
-/

namespace A045896.P9329718685257716439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085789 (n + 1)) (A269469 (n + 1))

end

end A045896.P9329718685257716439

namespace A045896

/-- `gcd(A085789(n+1), A269469(n+1))` -/
def P9329718685257716439.Spec : Prop :=
  ∀ n, (P9329718685257716439.a n : ℤ) = A045896 n

end A045896

/-!
# A045897: Has both a primitive and imprimitive representation as x^2 + xy + y^2.

The programs for A045897, the canonical program `A045897.P3711161811653789737` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045897 has offset 1).

The definition of A045897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045897.P10605290081226264326

`∩[A034017(n+1), A034019(n+1)]`
-/

namespace A045897.P10605290081226264326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P10605290081226264326

namespace A045897

/-- `∩[A034017(n+1), A034019(n+1)]` -/
def P10605290081226264326.Spec : Prop :=
  ∀ n, (P10605290081226264326.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P18139161097923690630

`∩[A034017(n+1), A053850(n+1)]`
-/

namespace A045897.P18139161097923690630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P18139161097923690630

namespace A045897

/-- `∩[A034017(n+1), A053850(n+1)]` -/
def P18139161097923690630.Spec : Prop :=
  ∀ n, (P18139161097923690630.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P2620931556190423547

`∩[A034017(n+1), A371083(n+1)]`
-/

namespace A045897.P2620931556190423547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P2620931556190423547

namespace A045897

/-- `∩[A034017(n+1), A371083(n+1)]` -/
def P2620931556190423547.Spec : Prop :=
  ∀ n, (P2620931556190423547.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P2631046507656820187

`∩[A034017(n+1), A274241(n+1)]`
-/

namespace A045897.P2631046507656820187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P2631046507656820187

namespace A045897

/-- `∩[A034017(n+1), A274241(n+1)]` -/
def P2631046507656820187.Spec : Prop :=
  ∀ n, (P2631046507656820187.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P10530766051182970753

`∩[A034017(n+1), A319927(n+1)]`
-/

namespace A045897.P10530766051182970753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P10530766051182970753

namespace A045897

/-- `∩[A034017(n+1), A319927(n+1)]` -/
def P10530766051182970753.Spec : Prop :=
  ∀ n, (P10530766051182970753.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P3329610836733181363

`∩[A034017(n+1), A307579(n+1)]`
-/

namespace A045897.P3329610836733181363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P3329610836733181363

namespace A045897

/-- `∩[A034017(n+1), A307579(n+1)]` -/
def P3329610836733181363.Spec : Prop :=
  ∀ n, (P3329610836733181363.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P9586716157392850320

`∩[A034017(n+1), A038838(n+1)]`
-/

namespace A045897.P9586716157392850320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P9586716157392850320

namespace A045897

/-- `∩[A034017(n+1), A038838(n+1)]` -/
def P9586716157392850320.Spec : Prop :=
  ∀ n, (P9586716157392850320.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P17059889946460283929

`∩[A034017(n+1), A087244(n+1)]`
-/

namespace A045897.P17059889946460283929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P17059889946460283929

namespace A045897

/-- `∩[A034017(n+1), A087244(n+1)]` -/
def P17059889946460283929.Spec : Prop :=
  ∀ n, (P17059889946460283929.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P3711161811653789737

`∩[A053850(n+1), A057128(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A045897

/-- `∩[A053850(n+1), A057128(n+1)]` -/
def P3711161811653789737.Spec : Prop :=
  ∀ n, (P3711161811653789737.a n : ℤ) = A045897 (n + 1)

theorem P3711161811653789737.correct : P3711161811653789737.Spec := by
  intro n
  simp only [A045897, Nat.add_sub_cancel]

end A045897

/-! ## A045897.P7558746293577958103

`∩[A034017(n+1), A335437(n+1)]`
-/

namespace A045897.P7558746293577958103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P7558746293577958103

namespace A045897

/-- `∩[A034017(n+1), A335437(n+1)]` -/
def P7558746293577958103.Spec : Prop :=
  ∀ n, (P7558746293577958103.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P10827272423719593576

`∩[A034017(n+1), A274188(n+1)]`
-/

namespace A045897.P10827272423719593576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P10827272423719593576

namespace A045897

/-- `∩[A034017(n+1), A274188(n+1)]` -/
def P10827272423719593576.Spec : Prop :=
  ∀ n, (P10827272423719593576.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P15551469736563924198

`∩[A034017(n+1), A388986(n+1)]`
-/

namespace A045897.P15551469736563924198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P15551469736563924198

namespace A045897

/-- `∩[A034017(n+1), A388986(n+1)]` -/
def P15551469736563924198.Spec : Prop :=
  ∀ n, (P15551469736563924198.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P13639600627520069539

`∩[A034017(n+1), A393869(n+1)]`
-/

namespace A045897.P13639600627520069539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P13639600627520069539

namespace A045897

/-- `∩[A034017(n+1), A393869(n+1)]` -/
def P13639600627520069539.Spec : Prop :=
  ∀ n, (P13639600627520069539.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P4720559285647916540

`∩[A034017(n+1), A069168(n+1)]`
-/

namespace A045897.P4720559285647916540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P4720559285647916540

namespace A045897

/-- `∩[A034017(n+1), A069168(n+1)]` -/
def P4720559285647916540.Spec : Prop :=
  ∀ n, (P4720559285647916540.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P14280763006450804959

`∩[A034017(n+1), A046790(n+1)]`
-/

namespace A045897.P14280763006450804959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P14280763006450804959

namespace A045897

/-- `∩[A034017(n+1), A046790(n+1)]` -/
def P14280763006450804959.Spec : Prop :=
  ∀ n, (P14280763006450804959.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P7268817073661604728

`∩[A034017(n+1), A072903(n+1)]`
-/

namespace A045897.P7268817073661604728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P7268817073661604728

namespace A045897

/-- `∩[A034017(n+1), A072903(n+1)]` -/
def P7268817073661604728.Spec : Prop :=
  ∀ n, (P7268817073661604728.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P11619313997233116785

`∩[A034017(n+1), A274141(n+1)]`
-/

namespace A045897.P11619313997233116785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P11619313997233116785

namespace A045897

/-- `∩[A034017(n+1), A274141(n+1)]` -/
def P11619313997233116785.Spec : Prop :=
  ∀ n, (P11619313997233116785.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P16267879524190174800

`∩[A034017(n+1), A359468(n+1)]`
-/

namespace A045897.P16267879524190174800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P16267879524190174800

namespace A045897

/-- `∩[A034017(n+1), A359468(n+1)]` -/
def P16267879524190174800.Spec : Prop :=
  ∀ n, (P16267879524190174800.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P5872840353721073764

`∩[A034017(n+1), A143720(n+1)]`
-/

namespace A045897.P5872840353721073764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P5872840353721073764

namespace A045897

/-- `∩[A034017(n+1), A143720(n+1)]` -/
def P5872840353721073764.Spec : Prop :=
  ∀ n, (P5872840353721073764.a n : ℤ) = A045897 (n + 1)

end A045897

/-! ## A045897.P6891650558371107436

`∩[A034017(n+1), A375142(n+1)]`
-/

namespace A045897.P6891650558371107436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045897.P6891650558371107436

namespace A045897

/-- `∩[A034017(n+1), A375142(n+1)]` -/
def P6891650558371107436.Spec : Prop :=
  ∀ n, (P6891650558371107436.a n : ℤ) = A045897 (n + 1)

end A045897

/-!
# A045898: a(n) = one of five triples of directions in n-th triple of moves in the optimal solution of the Tower of Hanoi; it is a squarefree sequence over a five-letter alphabet.

The programs for A045898, there is no canonical definition to state claims against.
-/

/-! ## A045898.P9124205757384277450

`A036037(A036037(3*n+1)*A326173(n+2))`
-/

namespace A045898.P9124205757384277450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (A036037 (3 * n + 1) * A326173 (n + 2)).toNat

end

end A045898.P9124205757384277450

/-! ## A045898.P13457888135606519332

`floor(gcd(n+1, ∑[A138690(3*n+2)])/2)+1`
-/

namespace A045898.P13457888135606519332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138690 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋ + 1

end

end A045898.P13457888135606519332

/-! ## A045898.P3253326279358717071

`abs(Δ[A217122(A077168(n))])`
-/

namespace A045898.P3253326279358717071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217122 (A077168 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A045898.P3253326279358717071

/-! ## A045898.P14848379515074330213

`A050603(or(2*n, A306347(n)))`
-/

namespace A045898.P14848379515074330213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (Int.lor (2 * n : ℤ) (A306347 n)).toNat

end

end A045898.P14848379515074330213

/-! ## A045898.P7417534556833596341

`A101872(A093379(n+1))`
-/

namespace A045898.P7417534556833596341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101872 (A093379 (n + 1)).toNat

end

end A045898.P7417534556833596341

/-!
# A045899: Numbers k such that k+1 and 3*k+1 are perfect squares.

The programs for A045899, the canonical program `A045899.P14501878135953602085` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045899 has offset 1).

The definition of A045899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A045899.P14501878135953602085

`14*a(n-1)-a(n-2)+8` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A045899

/-- `14*a(n-1)-a(n-2)+8` -/
def P14501878135953602085.Spec : Prop :=
  ∀ n, P14501878135953602085.a n = A045899 (n + 1)

theorem P14501878135953602085.correct : P14501878135953602085.Spec := by
  intro n
  simp only [A045899, Nat.add_sub_cancel]

end A045899

/-! ## A045899.P173498001548278629

`4*A217855(n)`
-/

namespace A045899.P173498001548278629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A217855 n

end

end A045899.P173498001548278629

namespace A045899

/-- `4*A217855(n)` -/
def P173498001548278629.Spec : Prop :=
  ∀ n, P173498001548278629.a n = A045899 (n + 1)

end A045899

/-! ## A045899.P326607096999032108

`8*A076139(n)`
-/

namespace A045899.P326607096999032108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A076139 n

end

end A045899.P326607096999032108

namespace A045899

/-- `8*A076139(n)` -/
def P326607096999032108.Spec : Prop :=
  ∀ n, P326607096999032108.a n = A045899 (n + 1)

end A045899

/-! ## A045899.P1003867055126579050

`A046184(n+1)-1`
-/

namespace A045899.P1003867055126579050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046184 (n + 1) - 1

end

end A045899.P1003867055126579050

namespace A045899

/-- `A046184(n+1)-1` -/
def P1003867055126579050.Spec : Prop :=
  ∀ n, P1003867055126579050.a n = A045899 (n + 1)

end A045899

/-! ## A045899.P9150249891750865778

`((2+sqrt(3))*(7+4*sqrt(3))^n+(2-sqrt(3))*(7-4*sqrt(3))^n-4)/6`
-/

namespace A045899.P9150249891750865778
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) * (7 + 4 * Real.sqrt (3 : ℝ)) ^ n + (2 - Real.sqrt (3 : ℝ)) * (7 - 4 * Real.sqrt (3 : ℝ)) ^ n - 4) / 6

end

end A045899.P9150249891750865778

namespace A045899

/-- `((2+sqrt(3))*(7+4*sqrt(3))^n+(2-sqrt(3))*(7-4*sqrt(3))^n-4)/6` -/
def P9150249891750865778.Spec : Prop :=
  ∀ n, P9150249891750865778.a n = (A045899 (n + 1) : ℝ)

end A045899

/-! ## A045899.P764017868455968381

`∑[14*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=8`
-/

namespace A045899.P764017868455968381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045899.P764017868455968381

namespace A045899

/-- `∑[14*a(n-1)-a(n-2)]` -/
def P764017868455968381.Spec : Prop :=
  ∀ n, P764017868455968381.a n = A045899 (n + 1)

end A045899

/-! ## A045899.P3930593289503465498

`Δ[4*a(n-1)-a(n-2)]²-1` with `a(0)=0, a(1)=1`
-/

namespace A045899.P3930593289503465498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A045899.P3930593289503465498

namespace A045899

/-- `Δ[4*a(n-1)-a(n-2)]²-1` -/
def P3930593289503465498.Spec : Prop :=
  ∀ n, P3930593289503465498.a n = A045899 (n + 1)

end A045899

/-! ## A045899.P13646390127415761803

`∑[A067900(n)]`
-/

namespace A045899.P13646390127415761803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045899.P13646390127415761803

namespace A045899

/-- `∑[A067900(n)]` -/
def P13646390127415761803.Spec : Prop :=
  ∀ n, P13646390127415761803.a n = A045899 (n + 1)

end A045899

