import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
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

/-!
# A025300: Numbers that are the sum of 2 nonzero squares in 9 or more ways.

The programs for A025300, there is no canonical definition to state claims against.
-/

/-! ## A025300.P3811840168502193797

`∪[A025292(n+1), A025301(n+1)]`
-/

namespace A025300.P3811840168502193797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025300.P3811840168502193797

/-!
# A025301: Numbers that are the sum of 2 nonzero squares in 10 or more ways.

The programs for A025301, there is no canonical definition to state claims against.
-/

/-! ## A025301.P16951055666679057161

`A001055(A264498(2*n+3))*A025299(n+1)`
-/

namespace A025301.P16951055666679057161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A264498 (2 * n + 3)).toNat * A025299 (n + 1)

end

end A025301.P16951055666679057161

/-!
# A025302: Numbers that are the sum of 2 distinct nonzero squares in exactly 1 way.

The programs for A025302, the canonical program `A025302.P15766142837742096667` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025302 has offset 1).

The definition of A025302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025302.P1254970144937159438

`eq[A379480(n)+1, A025426(n)]`
-/

namespace A025302.P1254970144937159438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025302.P1254970144937159438

namespace A025302

/-- `eq[A379480(n)+1, A025426(n)]` -/
def P1254970144937159438.Spec : Prop :=
  ∀ n, (P1254970144937159438.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P10056740937297296455

`eq[1, A025441(n)]`
-/

namespace A025302.P10056740937297296455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025302.P10056740937297296455

namespace A025302

/-- `eq[1, A025441(n)]` -/
def P10056740937297296455.Spec : Prop :=
  ∀ n, (P10056740937297296455.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P12658872264217371611

`lt[xor(2, A063725(n)), 2]`
-/

namespace A025302.P12658872264217371611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A063725 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025302.P12658872264217371611

namespace A025302

/-- `lt[xor(2, A063725(n)), 2]` -/
def P12658872264217371611.Spec : Prop :=
  ∀ n, (P12658872264217371611.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P9785504323486298848

`eq[4, (10-A004018(n))²]`
-/

namespace A025302.P9785504323486298848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 - A004018 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025302.P9785504323486298848

namespace A025302

/-- `eq[4, (10-A004018(n))²]` -/
def P9785504323486298848.Spec : Prop :=
  ∀ n, (P9785504323486298848.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P4176040253876964857

`eq[2, ceil(log2(A002654(n+1)+1))]+1`
-/

namespace A025302.P4176040253876964857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A002654 (n + 1) + 1 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A025302.P4176040253876964857

namespace A025302

/-- `eq[2, ceil(log2(A002654(n+1)+1))]+1` -/
def P4176040253876964857.Spec : Prop :=
  ∀ n, (P4176040253876964857.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P10739350344017387235

`eq[1, A000073(A063725(n))]`
-/

namespace A025302.P10739350344017387235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025302.P10739350344017387235

namespace A025302

/-- `eq[1, A000073(A063725(n))]` -/
def P10739350344017387235.Spec : Prop :=
  ∀ n, (P10739350344017387235.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P8566516097702702799

`eq[2, A219204(A004018(n))]`
-/

namespace A025302.P8566516097702702799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219204 ((A004018 n).toNat + 129)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025302.P8566516097702702799

namespace A025302

/-- `eq[2, A219204(A004018(n))]` -/
def P8566516097702702799.Spec : Prop :=
  ∀ n, (P8566516097702702799.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P4104403433186722954

`eq[1, A052525(A063725(n)+1)]`
-/

namespace A025302.P4104403433186722954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052525 (A063725 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025302.P4104403433186722954

namespace A025302

/-- `eq[1, A052525(A063725(n)+1)]` -/
def P4104403433186722954.Spec : Prop :=
  ∀ n, (P4104403433186722954.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P830495538793440750

`eq[2, A024417(A063725(n)+1)]`
-/

namespace A025302.P830495538793440750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A063725 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025302.P830495538793440750

namespace A025302

/-- `eq[2, A024417(A063725(n)+1)]` -/
def P830495538793440750.Spec : Prop :=
  ∀ n, (P830495538793440750.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P11575170023637988903

`eq[2, A110656(A004018(n)+1)]`
-/

namespace A025302.P11575170023637988903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A004018 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025302.P11575170023637988903

namespace A025302

/-- `eq[2, A110656(A004018(n)+1)]` -/
def P11575170023637988903.Spec : Prop :=
  ∀ n, (P11575170023637988903.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P4216091801184648666

`eq[1, A255572(A063725(n)+2)]`
-/

namespace A025302.P4216091801184648666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255572 (A063725 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025302.P4216091801184648666

namespace A025302

/-- `eq[1, A255572(A063725(n)+2)]` -/
def P4216091801184648666.Spec : Prop :=
  ∀ n, (P4216091801184648666.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P1104023885461321152

`eq[A010052(n)+1, A025435(n)]`
-/

namespace A025302.P1104023885461321152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025302.P1104023885461321152

namespace A025302

/-- `eq[A010052(n)+1, A025435(n)]` -/
def P1104023885461321152.Spec : Prop :=
  ∀ n, (P1104023885461321152.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P15621986289744501003

`eq[A379480(n)+2, A063725(n)]`
-/

namespace A025302.P15621986289744501003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025302.P15621986289744501003

namespace A025302

/-- `eq[A379480(n)+2, A063725(n)]` -/
def P15621986289744501003.Spec : Prop :=
  ∀ n, (P15621986289744501003.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P6803302502677012883

`eq[1, A025426(n*A169695(n))]`
-/

namespace A025302.P6803302502677012883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 ((n : ℤ) * A169695 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025302.P6803302502677012883

namespace A025302

/-- `eq[1, A025426(n*A169695(n))]` -/
def P6803302502677012883.Spec : Prop :=
  ∀ n, (P6803302502677012883.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P15181887026775998887

`lt[A000161(n), A002828(A004018(n))]`
-/

namespace A025302.P15181887026775998887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025302.P15181887026775998887

namespace A025302

/-- `lt[A000161(n), A002828(A004018(n))]` -/
def P15181887026775998887.Spec : Prop :=
  ∀ n, (P15181887026775998887.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P16532257787580846206

`eq[A000005(A063725(n)+1), A063725(n)]`
-/

namespace A025302.P16532257787580846206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A063725 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025302.P16532257787580846206

namespace A025302

/-- `eq[A000005(A063725(n)+1), A063725(n)]` -/
def P16532257787580846206.Spec : Prop :=
  ∀ n, (P16532257787580846206.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P2857579121494906437

`eq[A002024(A063725(n)+1), A063725(n)]`
-/

namespace A025302.P2857579121494906437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A063725 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025302.P2857579121494906437

namespace A025302

/-- `eq[A002024(A063725(n)+1), A063725(n)]` -/
def P2857579121494906437.Spec : Prop :=
  ∀ n, (P2857579121494906437.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P10659151978471420101

`eq[A063725(n), A193495(A063725(n)+3)]`
-/

namespace A025302.P10659151978471420101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193495 (A063725 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025302.P10659151978471420101

namespace A025302

/-- `eq[A063725(n), A193495(A063725(n)+3)]` -/
def P10659151978471420101.Spec : Prop :=
  ∀ n, (P10659151978471420101.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P9456568477751647718

`eq[A063725(n), A193495(2*A063725(n))]`
-/

namespace A025302.P9456568477751647718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193495 (2 * A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025302.P9456568477751647718

namespace A025302

/-- `eq[A063725(n), A193495(2*A063725(n))]` -/
def P9456568477751647718.Spec : Prop :=
  ∀ n, (P9456568477751647718.a n : ℤ) = A025302 (n + 1)

end A025302

/-! ## A025302.P15766142837742096667

`eq[A000005(A002654(n+1)+1), A002654(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025302

/-- `eq[A000005(A002654(n+1)+1), A002654(n+1)]+1` -/
def P15766142837742096667.Spec : Prop :=
  ∀ n, (P15766142837742096667.a n : ℤ) = A025302 (n + 1)

theorem P15766142837742096667.correct : P15766142837742096667.Spec := by
  intro n
  simp only [A025302, Nat.add_sub_cancel]

end A025302

/-!
# A025303: Numbers that are the sum of 2 distinct nonzero squares in exactly 2 ways.

The programs for A025303, the canonical program `A025303.P15711616276104886077` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025303 has offset 1).

The definition of A025303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025303.P4256849830020741476

`eq[2, A025441(n)]`
-/

namespace A025303.P4256849830020741476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025303.P4256849830020741476

namespace A025303

/-- `eq[2, A025441(n)]` -/
def P4256849830020741476.Spec : Prop :=
  ∀ n, (P4256849830020741476.a n : ℤ) = A025303 (n + 1)

end A025303

/-! ## A025303.P127459117901751469

`eq[0, A225442(A004018(n))]`
-/

namespace A025303.P127459117901751469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025303.P127459117901751469

namespace A025303

/-- `eq[0, A225442(A004018(n))]` -/
def P127459117901751469.Spec : Prop :=
  ∀ n, (P127459117901751469.a n : ℤ) = A025303 (n + 1)

end A025303

/-! ## A025303.P12393509966075245717

`eq[1, A255572(A063725(n))]`
-/

namespace A025303.P12393509966075245717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255572 (A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025303.P12393509966075245717

namespace A025303

/-- `eq[1, A255572(A063725(n))]` -/
def P12393509966075245717.Spec : Prop :=
  ∀ n, (P12393509966075245717.a n : ℤ) = A025303 (n + 1)

end A025303

/-! ## A025303.P3195727492549733730

`eq[4, A063725(A106617(n))]`
-/

namespace A025303.P3195727492549733730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A106617 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025303.P3195727492549733730

namespace A025303

/-- `eq[4, A063725(A106617(n))]` -/
def P3195727492549733730.Spec : Prop :=
  ∀ n, (P3195727492549733730.a n : ℤ) = A025303 (n + 1)

end A025303

/-! ## A025303.P15711616276104886077

`eq[2, A004526(A125061(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A025303

/-- `eq[2, A004526(A125061(n))]` -/
def P15711616276104886077.Spec : Prop :=
  ∀ n, (P15711616276104886077.a n : ℤ) = A025303 (n + 1)

theorem P15711616276104886077.correct : P15711616276104886077.Spec := by
  intro n
  simp only [A025303, Nat.add_sub_cancel]

end A025303

/-! ## A025303.P3396576306799946128

`eq[4, A063725(A187541(n))]`
-/

namespace A025303.P3396576306799946128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A187541 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025303.P3396576306799946128

namespace A025303

/-- `eq[4, A063725(A187541(n))]` -/
def P3396576306799946128.Spec : Prop :=
  ∀ n, (P3396576306799946128.a n : ℤ) = A025303 (n + 1)

end A025303

/-! ## A025303.P7790928479930062769

`eq[A007426(A215848(n+1)), A063725(n)]`
-/

namespace A025303.P7790928479930062769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A215848 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025303.P7790928479930062769

namespace A025303

/-- `eq[A007426(A215848(n+1)), A063725(n)]` -/
def P7790928479930062769.Spec : Prop :=
  ∀ n, (P7790928479930062769.a n : ℤ) = A025303 (n + 1)

end A025303

/-! ## A025303.P1180551867456463841

`eq[14, A081289(A084888(n))]`
-/

namespace A025303.P1180551867456463841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081289 (A084888 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025303.P1180551867456463841

namespace A025303

/-- `eq[14, A081289(A084888(n))]` -/
def P1180551867456463841.Spec : Prop :=
  ∀ n, (P1180551867456463841.a n : ℤ) = A025303 (n + 1)

end A025303

/-!
# A025304: Numbers that are the sum of 2 distinct nonzero squares in exactly 3 ways.

The programs for A025304, the canonical program `A025304.P15644327718625747142` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A025304 has offset 1).

The definition of A025304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A025304.P1527547232422282700

`eq[3, A025441(n)]`
-/

namespace A025304.P1527547232422282700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025304.P1527547232422282700

namespace A025304

/-- `eq[3, A025441(n)]` -/
def P1527547232422282700.Spec : Prop :=
  ∀ n, (P1527547232422282700.a n : ℤ) = A025304 (n + 1)

end A025304

/-! ## A025304.P11663032012815699943

`eq[6, A063725(n)]`
-/

namespace A025304.P11663032012815699943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025304.P11663032012815699943

namespace A025304

/-- `eq[6, A063725(n)]` -/
def P11663032012815699943.Spec : Prop :=
  ∀ n, (P11663032012815699943.a n : ℤ) = A025304 (n + 1)

end A025304

/-! ## A025304.P8592577463212744681

`eq[24, A004018(n)]`
-/

namespace A025304.P8592577463212744681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025304.P8592577463212744681

namespace A025304

/-- `eq[24, A004018(n)]` -/
def P8592577463212744681.Spec : Prop :=
  ∀ n, (P8592577463212744681.a n : ℤ) = A025304 (n + 1)

end A025304

/-! ## A025304.P5402038819542394591

`eq[24, abs(A104794(n))]`
-/

namespace A025304.P5402038819542394591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104794 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025304.P5402038819542394591

namespace A025304

/-- `eq[24, abs(A104794(n))]` -/
def P5402038819542394591.Spec : Prop :=
  ∀ n, (P5402038819542394591.a n : ℤ) = A025304 (n + 1)

end A025304

/-! ## A025304.P15644327718625747142

`eq[6, A002654(A028310(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A025304

/-- `eq[6, A002654(A028310(n))]` -/
def P15644327718625747142.Spec : Prop :=
  ∀ n, (P15644327718625747142.a n : ℤ) = A025304 (n + 1)

theorem P15644327718625747142.correct : P15644327718625747142.Spec := by
  intro n
  simp only [A025304, Nat.add_sub_cancel]

end A025304

/-!
# A025306: Numbers that are the sum of 2 distinct nonzero squares in exactly 5 ways.

The programs for A025306, there is no canonical definition to state claims against.
-/

/-! ## A025306.P3838206993109589319

`∩[A025288(n+1), A025315(n+1)]`
-/

namespace A025306.P3838206993109589319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025306.P3838206993109589319

/-! ## A025306.P13981480266570669566

`∩[A025288(n+1), A097102(n+1)]`
-/

namespace A025306.P13981480266570669566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025306.P13981480266570669566

/-! ## A025306.P7250194393916204675

`∩[A025315(n+1), A097102(n+1)]`
-/

namespace A025306.P7250194393916204675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025306.P7250194393916204675

/-! ## A025306.P11763394889183994830

`filter[A025288(n+1), A353812(#)]`
-/

namespace A025306.P11763394889183994830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A025306.P11763394889183994830

/-! ## A025306.P5472921358940047405

`filter[A294716(n+1), A353812(#)]`
-/

namespace A025306.P5472921358940047405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A025306.P5472921358940047405

/-!
# A025308: Numbers that are the sum of 2 distinct nonzero squares in exactly 7 ways.

The programs for A025308, there is no canonical definition to state claims against.
-/

/-! ## A025308.P5416570760048513643

`∪[2*A025290(n+1), A025290(n+1)]`
-/

namespace A025308.P5416570760048513643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025308.P5416570760048513643

/-!
# A025309: 

The programs for A025309, there is no canonical definition to state claims against.
-/

/-! ## A025309.P17556543694340181664

`∩[floor(A025291(n+1)/2), A025299(n+1)]`
-/

namespace A025309.P17556543694340181664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025291 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025309.P17556543694340181664

/-!
# A025310: 

The programs for A025310, there is no canonical definition to state claims against.
-/

/-! ## A025310.P4726470820512321055

`char[A001057(n)]*A025292(n+1)`
-/

namespace A025310.P4726470820512321055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P4726470820512321055

/-! ## A025310.P12049798318695478855

`char[A006068(n)]*A025292(n+1)`
-/

namespace A025310.P12049798318695478855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P12049798318695478855

/-! ## A025310.P2204099754322129449

`char[A064707(n)]*A025292(n+1)`
-/

namespace A025310.P2204099754322129449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P2204099754322129449

/-! ## A025310.P8769288888640719584

`char[A065620(n)]*A025292(n+1)`
-/

namespace A025310.P8769288888640719584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P8769288888640719584

/-! ## A025310.P17262776458203647468

`char[A104895(n)]*A025292(n+1)`
-/

namespace A025310.P17262776458203647468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P17262776458203647468

/-! ## A025310.P16762511276499312642

`char[A268821(n)]*A025292(n+1)`
-/

namespace A025310.P16762511276499312642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268821 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P16762511276499312642

/-! ## A025310.P2992149387801214070

`char[A268828(n)]*A025292(n+1)`
-/

namespace A025310.P2992149387801214070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268828 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P2992149387801214070

/-! ## A025310.P17615373046745872997

`char[A268933(n)]*A025292(n+1)`
-/

namespace A025310.P17615373046745872997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268933 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P17615373046745872997

/-! ## A025310.P6804525719085769005

`char[A292600(n)]*A025292(n+1)`
-/

namespace A025310.P6804525719085769005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P6804525719085769005

/-! ## A025310.P5786066078583062283

`char[floor(A048726(n)/4)]*A025292(n+1)`
-/

namespace A025310.P5786066078583062283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048726 n : ℚ) / 4⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P5786066078583062283

/-! ## A025310.P9982858403614967108

`char[A268832(A268717(n+1))-1]*A025292(n+1)`
-/

namespace A025310.P9982858403614967108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268832 (A268717 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A025292 (n + 1)

end

end A025310.P9982858403614967108

/-!
# A025313: Numbers that are the sum of 2 distinct nonzero squares in 3 or more ways.

The programs for A025313, there is no canonical definition to state claims against.
-/

/-! ## A025313.P1412628871161952224

`∪[A025295(n+1), A025304(n+1)]`
-/

namespace A025313.P1412628871161952224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025313.P1412628871161952224

/-! ## A025313.P17503159954668535604

`lt[2, A025441(n)]`
-/

namespace A025313.P17503159954668535604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025313.P17503159954668535604

/-! ## A025313.P12694991607474306047

`lt[20, A004018(n)]`
-/

namespace A025313.P12694991607474306047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025313.P12694991607474306047

/-! ## A025313.P339119232260050784

`lt[2, A004526(A063725(n))]`
-/

namespace A025313.P339119232260050784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025313.P339119232260050784

/-! ## A025313.P17566091572702887510

`lt[5, A002654(A028310(n))]`
-/

namespace A025313.P17566091572702887510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025313.P17566091572702887510

/-!
# A025314: 

The programs for A025314, there is no canonical definition to state claims against.
-/

/-! ## A025314.P349955246214078864

`∪[A025296(n+1), A025305(n+1)]`
-/

namespace A025314.P349955246214078864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025314.P349955246214078864

/-! ## A025314.P3377545679436257282

`∪[A025305(n+1), A025315(n+1)]`
-/

namespace A025314.P3377545679436257282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025314.P3377545679436257282

/-!
# A025315: Numbers that are the sum of 2 distinct nonzero squares in 5 or more ways.

The programs for A025315, there is no canonical definition to state claims against.
-/

/-! ## A025315.P15252184899124953219

`∩[floor(A025296(n+1)/2), A025296(n+1)]`
-/

namespace A025315.P15252184899124953219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025296 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025315.P15252184899124953219

/-! ## A025315.P3638207624957502593

`filter[A025296(n+1), A295309(#)]`
-/

namespace A025315.P3638207624957502593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295309 (f1 j).toNat = 1) n)

end

end A025315.P3638207624957502593

/-! ## A025315.P9923632481507327206

`∪[A313707(A025287(n+1)), A025289(n+1)]`
-/

namespace A025315.P9923632481507327206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 (A025287 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025315.P9923632481507327206

/-!
# A025318: 

The programs for A025318, there is no canonical definition to state claims against.
-/

/-! ## A025318.P6679042205946865852

`∩[floor(A025299(n+1)/2), A025299(n+1)]`
-/

namespace A025318.P6679042205946865852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025299 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A025318.P6679042205946865852

/-!
# A025321: Numbers that are the sum of 3 nonzero squares in exactly 1 way.

The programs for A025321, there is no canonical definition to state claims against.
-/

/-! ## A025321.P15634621535179687077

`eq[1, A025427(n)]`
-/

namespace A025321.P15634621535179687077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025321.P15634621535179687077

/-! ## A025321.P4908422796840742921

`lt[A008611(A025427(n)²), 1]`
-/

namespace A025321.P4908422796840742921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A025427 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025321.P4908422796840742921

/-! ## A025321.P17021305044241298525

`eq[A000161(n)+1, A000164(n)]`
-/

namespace A025321.P17021305044241298525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025321.P17021305044241298525

/-! ## A025321.P9546904825839528114

`lt[A001222(3*(abs(1-A025427(n))+1)), 2]`
-/

namespace A025321.P9546904825839528114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (|1 - A025427 n| + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025321.P9546904825839528114

/-! ## A025321.P17504037480883463234

`lt[3*(A008592(abs(1-A025427(n)))+1), 5]`
-/

namespace A025321.P17504037480883463234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A008592 |1 - A025427 n|.toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025321.P17504037480883463234

/-! ## A025321.P8305543610256954094

`eq[1, A000290(A000164(n)-A000161(n))]`
-/

namespace A025321.P8305543610256954094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000164 n - A000161 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025321.P8305543610256954094

/-! ## A025321.P8588040006773714462

`eq[1, A000164(n)-A051601(A000925(n))]`
-/

namespace A025321.P8588040006773714462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A051601 (A000925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025321.P8588040006773714462

/-! ## A025321.P5451867324097857758

`record[A000408(n+1)/A025427(A000408(n+1))]`
-/

namespace A025321.P5451867324097857758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000408 (n + 1) : ℚ) / (A025427 (A000408 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025321.P5451867324097857758

/-! ## A025321.P8948597300575224193

`A000720(p?[A008578(n+1)*A025427(n)])`
-/

namespace A025321.P8948597300575224193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A025321.P8948597300575224193

/-! ## A025321.P3536664575518247567

`lt[A001222((3^(A025427(n)+3)+1)/2), 2]`
-/

namespace A025321.P3536664575518247567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((3 : ℚ) ^ (A025427 n + 3 : ℤ) + 1) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025321.P3536664575518247567

/-!
# A025322: Numbers that are the sum of 3 nonzero squares in exactly 2 ways.

The programs for A025322, there is no canonical definition to state claims against.
-/

/-! ## A025322.P536947757351996936

`eq[2, A025427(n)]`
-/

namespace A025322.P536947757351996936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025322.P536947757351996936

/-! ## A025322.P9127217528508134670

`eq[A000161(n)+2, A000164(n)]`
-/

namespace A025322.P9127217528508134670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025322.P9127217528508134670

/-! ## A025322.P16735068137685040403

`eq[2, A000041(A000164(n)-A000161(n))]`
-/

namespace A025322.P16735068137685040403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000164 n - A000161 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025322.P16735068137685040403

/-! ## A025322.P16749324577687861807

`A028310(eq[2, A000164(n)-A000161(n)])`
-/

namespace A025322.P16749324577687861807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025322.P16749324577687861807

/-! ## A025322.P16285053288256237225

`eq[2, A000164(n)-A051601(A000925(n))]`
-/

namespace A025322.P16285053288256237225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A051601 (A000925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025322.P16285053288256237225

/-! ## A025322.P17560296339542769218

`eq[A010052(n)+A025426(n)+2, A000164(n)]`
-/

namespace A025322.P17560296339542769218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A025426 n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025322.P17560296339542769218

/-!
# A025323: Numbers that are the sum of 3 nonzero squares in exactly 3 ways.

The programs for A025323, there is no canonical definition to state claims against.
-/

/-! ## A025323.P8886373809879050146

`eq[3, A025427(n)]`
-/

namespace A025323.P8886373809879050146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025323.P8886373809879050146

/-! ## A025323.P2722204022470097351

`eq[A000161(n)+3, A000164(n)]`
-/

namespace A025323.P2722204022470097351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025323.P2722204022470097351

/-! ## A025323.P15226770148661660271

`eq[3, A000041(A000164(n)-A000161(n))]`
-/

namespace A025323.P15226770148661660271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000164 n - A000161 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025323.P15226770148661660271

/-! ## A025323.P11387794687481750779

`eq[3, A000164(n)-A051601(A000925(n))]`
-/

namespace A025323.P11387794687481750779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A051601 (A000925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025323.P11387794687481750779

/-! ## A025323.P371572029664473011

`eq[5, A000093(A000164(n)-A000161(n))]`
-/

namespace A025323.P371572029664473011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A000164 n - A000161 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025323.P371572029664473011

/-! ## A025323.P534230785874607299

`eq[9, A000290(A000164(n)-A000161(n))]`
-/

namespace A025323.P534230785874607299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000164 n - A000161 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025323.P534230785874607299

/-!
# A025324: Numbers that are the sum of 3 nonzero squares in exactly 4 ways.

The programs for A025324, there is no canonical definition to state claims against.
-/

/-! ## A025324.P13842956135754509883

`eq[4, A025427(n)]`
-/

namespace A025324.P13842956135754509883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025324.P13842956135754509883

/-! ## A025324.P10941187850190134731

`eq[A000161(n)+4, A000164(n)]`
-/

namespace A025324.P10941187850190134731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025324.P10941187850190134731

/-! ## A025324.P7814050970576083795

`eq[4, A000164(n)-A051601(A000925(n))]`
-/

namespace A025324.P7814050970576083795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A051601 (A000925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025324.P7814050970576083795

/-! ## A025324.P13385103170898196995

`eq[A000164(n)-A000161(n), A113311(n)]`
-/

namespace A025324.P13385103170898196995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025324.P13385103170898196995

/-! ## A025324.P12453090954147926542

`eq[1, A000093(A000164(n)-A000161(n))-7]`
-/

namespace A025324.P12453090954147926542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A000164 n - A000161 n).toNat - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025324.P12453090954147926542

/-!
# A025325: Numbers that are the sum of 3 nonzero squares in exactly 5 ways.

The programs for A025325, there is no canonical definition to state claims against.
-/

/-! ## A025325.P14417816405659505059

`eq[5, A025427(n)]`
-/

namespace A025325.P14417816405659505059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025325.P14417816405659505059

/-! ## A025325.P14387452637694783223

`eq[5, A000164(n)-A000161(n)]`
-/

namespace A025325.P14387452637694783223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025325.P14387452637694783223

/-!
# A025326: Numbers that are the sum of 3 nonzero squares in exactly 6 ways.

The programs for A025326, there is no canonical definition to state claims against.
-/

/-! ## A025326.P16265281277681067825

`eq[6, A025427(n)]`
-/

namespace A025326.P16265281277681067825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025326.P16265281277681067825

/-! ## A025326.P2509209009449521756

`A025334(∑[A309861(n)!])`
-/

namespace A025326.P2509209009449521756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025326.P2509209009449521756

/-! ## A025326.P7977655684667846326

`A025334(∑[A319759(n)!])`
-/

namespace A025326.P7977655684667846326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A319759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A025326.P7977655684667846326

/-! ## A025326.P16882546332121500141

`record[A025334(n+1)/A099206(n+2)]`
-/

namespace A025326.P16882546332121500141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025334 (n + 1) : ℚ) / (A099206 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025326.P16882546332121500141

/-!
# A025327: Numbers that are the sum of 3 nonzero squares in exactly 7 ways.

The programs for A025327, there is no canonical definition to state claims against.
-/

/-! ## A025327.P10054390134173565964

`eq[7, A025427(n)]`
-/

namespace A025327.P10054390134173565964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025327.P10054390134173565964

/-! ## A025327.P3395374405167381563

`A025335(eq[A109703(n), A286363(n+3)])`
-/

namespace A025327.P3395374405167381563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025335 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A025327.P3395374405167381563

/-!
# A025328: Numbers that are the sum of 3 nonzero squares in exactly 8 ways.

The programs for A025328, there is no canonical definition to state claims against.
-/

/-! ## A025328.P2103911126078905153

`eq[8, A025427(n)]`
-/

namespace A025328.P2103911126078905153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025328.P2103911126078905153

/-! ## A025328.P4084339362895440166

`eq[1, A000164(n)-A000161(n)-7]`
-/

namespace A025328.P4084339362895440166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n - A000161 n - 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025328.P4084339362895440166

/-! ## A025328.P17106192561084973836

`A025336(lt[A262430(n), A283528(2*n+3)])`
-/

namespace A025328.P17106192561084973836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262430 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283528 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025336 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025328.P17106192561084973836

/-! ## A025328.P14423350523820731519

`A025336(lt[A134570(3*n+4), A003961(3*n+5)])`
-/

namespace A025328.P14423350523820731519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134570 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025336 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025328.P14423350523820731519

/-!
# A025329: Numbers that are the sum of 3 nonzero squares in exactly 9 ways.

The programs for A025329, there is no canonical definition to state claims against.
-/

/-! ## A025329.P13568867886612894581

`eq[9, A025427(n)]`
-/

namespace A025329.P13568867886612894581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025329.P13568867886612894581

/-!
# A025330: Numbers that are the sum of 3 nonzero squares in exactly 10 ways.

The programs for A025330, there is no canonical definition to state claims against.
-/

/-! ## A025330.P4191320646874105572

`eq[10, A025427(n)]`
-/

namespace A025330.P4191320646874105572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025330.P4191320646874105572

/-! ## A025330.P14131993260522097963

`A025338(lt[A025065(n), A005875(n)])`
-/

namespace A025330.P14131993260522097963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025338 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025330.P14131993260522097963

/-!
# A025331: Numbers that are the sum of 3 nonzero squares in 3 or more ways.

The programs for A025331, there is no canonical definition to state claims against.
-/

/-! ## A025331.P13495918608408459452

`lt[2, A025427(n)]`
-/

namespace A025331.P13495918608408459452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025331.P13495918608408459452

/-! ## A025331.P8917861479911000984

`eq[1, A015155(C(2, A025427(n)))]`
-/

namespace A025331.P8917861479911000984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015155 (Nat.choose 2 (A025427 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025331.P8917861479911000984

/-! ## A025331.P14948525160675656030

`lt[A000161(n)+2, A000164(n)]`
-/

namespace A025331.P14948525160675656030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025331.P14948525160675656030

/-! ## A025331.P8412831924999832506

`eq[A000038(n), A130779(A025427(n))]`
-/

namespace A025331.P8412831924999832506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A025427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025331.P8412831924999832506

/-!
# A025332: Numbers that are the sum of 3 nonzero squares in 4 or more ways.

The programs for A025332, there is no canonical definition to state claims against.
-/

/-! ## A025332.P3110013560133154569

`lt[3, A025427(n)]`
-/

namespace A025332.P3110013560133154569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025332.P3110013560133154569

/-! ## A025332.P3694065528609266737

`eq[1, A008719(a(A025427(n)))]` with `a(0)=5, a(1)=5, a(2)=4, a(3)=4`
-/

namespace A025332.P3694065528609266737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5, 4, 4] fun n f2 =>
  A008719 (f2 (A025427 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025332.P3694065528609266737

/-! ## A025332.P6772490302908212097

`eq[1, A098474(a(A025427(n)))]` with `a(0)=4, a(1)=4, a(2)=7, a(3)=7`
-/

namespace A025332.P6772490302908212097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 7, 7] fun n f2 =>
  A098474 (f2 (A025427 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025332.P6772490302908212097

/-! ## A025332.P11648925977600817304

`eq[0, A008683(A025427(n)!)]`
-/

namespace A025332.P11648925977600817304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.factorial (A025427 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025332.P11648925977600817304

/-! ## A025332.P8599600618644384354

`eq[2, A055640(A025427(n)!)]`
-/

namespace A025332.P8599600618644384354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Nat.factorial (A025427 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025332.P8599600618644384354

/-!
# A025333: Numbers that are the sum of 3 nonzero squares in 5 or more ways.

The programs for A025333, there is no canonical definition to state claims against.
-/

/-! ## A025333.P18419203716344417396

`lt[4, A025427(n)]`
-/

namespace A025333.P18419203716344417396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025333.P18419203716344417396

/-!
# A025334: Numbers that are the sum of 3 nonzero squares in 6 or more ways.

The programs for A025334, there is no canonical definition to state claims against.
-/

/-! ## A025334.P4204658009332229692

`lt[5, A025427(n)]`
-/

namespace A025334.P4204658009332229692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025334.P4204658009332229692

/-! ## A025334.P930544089034642841

`A047885(A337193(n))+A025326(n+1)`
-/

namespace A025334.P930544089034642841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047885 (A337193 n).toNat + A025326 (n + 1)

end

end A025334.P930544089034642841

/-! ## A025334.P825350430332500552

`A025326(n+1)-A025456(A060223(n))`
-/

namespace A025334.P825350430332500552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025326 (n + 1) - A025456 (A060223 n).toNat

end

end A025334.P825350430332500552

/-! ## A025334.P1793455770463215167

`A025326(n+1)-A011737(A081294(n))`
-/

namespace A025334.P1793455770463215167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025326 (n + 1) - A011737 (A081294 n).toNat

end

end A025334.P1793455770463215167

/-!
# A025335: Numbers that are the sum of 3 nonzero squares in 7 or more ways.

The programs for A025335, there is no canonical definition to state claims against.
-/

/-! ## A025335.P18320833164834259579

`lt[6, A025427(n)]`
-/

namespace A025335.P18320833164834259579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025335.P18320833164834259579

/-!
# A025336: Numbers that are the sum of 3 nonzero squares in 8 or more ways.

The programs for A025336, there is no canonical definition to state claims against.
-/

/-! ## A025336.P8196736826713593986

`lt[7, A025427(n)]`
-/

namespace A025336.P8196736826713593986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025336.P8196736826713593986

/-! ## A025336.P15090871504676483590

`A025328(A292125(n+1))`
-/

namespace A025336.P15090871504676483590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025328 (A292125 (n + 1)).toNat

end

end A025336.P15090871504676483590

/-!
# A025337: Numbers that are the sum of 3 nonzero squares in 9 or more ways.

The programs for A025337, there is no canonical definition to state claims against.
-/

/-! ## A025337.P13744747640629329806

`lt[8, A025427(n)]`
-/

namespace A025337.P13744747640629329806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025337.P13744747640629329806

/-!
# A025338: Numbers that are the sum of 3 nonzero squares in 10 or more ways.

The programs for A025338, there is no canonical definition to state claims against.
-/

/-! ## A025338.P4043345935742654868

`lt[9, A025427(n)]`
-/

namespace A025338.P4043345935742654868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025338.P4043345935742654868

/-! ## A025338.P5981813907564181189

`A025337(comp[A154438(3*(n+1))-A002385(n+1)])`
-/

namespace A025338.P5981813907564181189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154438 (3 * (n + 1)) - A002385 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025337 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A025338.P5981813907564181189

/-! ## A025338.P5370355382212041937

`A025337(lt[A025337(n+1), A077428(3*n+5)])`
-/

namespace A025338.P5370355382212041937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077428 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025337 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025338.P5370355382212041937

/-!
# A025339: Numbers that are the sum of 3 distinct nonzero squares in exactly one way.

The programs for A025339, there is no canonical definition to state claims against.
-/

/-! ## A025339.P1078234558343017786

`eq[1, A025442(n)]`
-/

namespace A025339.P1078234558343017786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025339.P1078234558343017786

/-! ## A025339.P3295596032578316875

`lt[A005127(A025442(n)²), 1]`
-/

namespace A025339.P3295596032578316875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A025442 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025339.P3295596032578316875

/-! ## A025339.P2753979821006728328

`lt[A000700(A025442(n)+1), 1]`
-/

namespace A025339.P2753979821006728328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A025442 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025339.P2753979821006728328

/-! ## A025339.P4157148881177339815

`lt[A093478(A025442(n)+1), 1]`
-/

namespace A025339.P4157148881177339815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093478 (A025442 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025339.P4157148881177339815

/-! ## A025339.P2761131540059082922

`lt[A000700(2*A025442(n)), 1]`
-/

namespace A025339.P2761131540059082922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * A025442 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025339.P2761131540059082922

/-! ## A025339.P4051976820302195971

`lt[A093478(2*A025442(n)), 1]`
-/

namespace A025339.P4051976820302195971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093478 (2 * A025442 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025339.P4051976820302195971

/-! ## A025339.P4033172776109730183

`eq[A025441(n)+1, A025436(n)]`
-/

namespace A025339.P4033172776109730183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025339.P4033172776109730183

/-! ## A025339.P11661022451329682973

`eq[A025443(n)+1, A025437(n)]`
-/

namespace A025339.P11661022451329682973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025339.P11661022451329682973

/-! ## A025339.P816045406577578146

`lt[A005127(A025442(n)), A057427(n)]`
-/

namespace A025339.P816045406577578146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025339.P816045406577578146

/-! ## A025339.P15905975503421025038

`record[A004432(n+1)/A025442(A004432(n+1))]`
-/

namespace A025339.P15905975503421025038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004432 (n + 1) : ℚ) / (A025442 (A004432 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025339.P15905975503421025038

/-! ## A025339.P424287533905790288

`A000720(p?[A008578(n+1)*A025442(n)])`
-/

namespace A025339.P424287533905790288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A025339.P424287533905790288

/-! ## A025339.P10826152873643567409

`A066328(p?[A008578(n+1)*A025442(n)])`
-/

namespace A025339.P10826152873643567409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A025442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A025339.P10826152873643567409

/-! ## A025339.P5700308522049555116

`record[A024803(n+1)/A025442(A024803(n+1))]`
-/

namespace A025339.P5700308522049555116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024803 (n + 1) : ℚ) / (A025442 (A024803 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025339.P5700308522049555116

/-!
# A025340: Numbers that are the sum of 3 distinct nonzero squares in exactly 2 ways.

The programs for A025340, there is no canonical definition to state claims against.
-/

/-! ## A025340.P8077264405114994155

`eq[2, A025442(n)]`
-/

namespace A025340.P8077264405114994155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025340.P8077264405114994155

/-! ## A025340.P1566017206519723636

`eq[A025441(n)+2, A025436(n)]`
-/

namespace A025340.P1566017206519723636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025340.P1566017206519723636

/-! ## A025340.P8778949714108909114

`eq[A025435(n)+2, A347534(n)]`
-/

namespace A025340.P8778949714108909114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025340.P8778949714108909114

/-! ## A025340.P5432799346138995729

`eq[A023444(A025436(n)), A025441(n)]`
-/

namespace A025340.P5432799346138995729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A025436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025340.P5432799346138995729

/-! ## A025340.P6778116734554302879

`lt[A093478(A025442(n)), A066247(n+1)]`
-/

namespace A025340.P6778116734554302879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093478 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025340.P6778116734554302879

/-! ## A025340.P13948355557782700784

`eq[A025443(n)+2, A025437(n)]`
-/

namespace A025340.P13948355557782700784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025340.P13948355557782700784

/-! ## A025340.P4112494427692253316

`lt[A000700(A025442(n)), A057427(n)]`
-/

namespace A025340.P4112494427692253316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025340.P4112494427692253316

/-!
# A025341: Numbers that are the sum of 3 distinct nonzero squares in exactly 3 ways.

The programs for A025341, there is no canonical definition to state claims against.
-/

/-! ## A025341.P2886177285562281297

`eq[3, A025442(n)]`
-/

namespace A025341.P2886177285562281297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025341.P2886177285562281297

/-! ## A025341.P14235934451728878622

`eq[A025441(n)+3, A025436(n)]`
-/

namespace A025341.P14235934451728878622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025341.P14235934451728878622

/-! ## A025341.P2362193002968865548

`eq[2, A142878(A025436(n)-A025441(n))]`
-/

namespace A025341.P2362193002968865548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142878 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025341.P2362193002968865548

/-! ## A025341.P15598361617265155467

`eq[5, A006789(A025436(n)-A025441(n))]`
-/

namespace A025341.P15598361617265155467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006789 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025341.P15598361617265155467

/-! ## A025341.P14196460364890925947

`eq[3, A000007(n)-(A025441(n)-A025436(n))]`
-/

namespace A025341.P14196460364890925947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (A025441 n - A025436 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025341.P14196460364890925947

/-!
# A025342: Numbers that are the sum of 3 distinct nonzero squares in exactly 4 ways.

The programs for A025342, there is no canonical definition to state claims against.
-/

/-! ## A025342.P14079121356194836186

`eq[4, A025442(n)]`
-/

namespace A025342.P14079121356194836186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025342.P14079121356194836186

/-! ## A025342.P10776709625662704319

`eq[4, A025436(n)-A025441(n)]`
-/

namespace A025342.P10776709625662704319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025342.P10776709625662704319

/-! ## A025342.P12265192860517452771

`eq[A023446(A025436(n)), A025441(n)]`
-/

namespace A025342.P12265192860517452771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A025436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025342.P12265192860517452771

/-! ## A025342.P18415701512109076102

`eq[A023446(A025437(n)), A025443(n)]`
-/

namespace A025342.P18415701512109076102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A025437 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025342.P18415701512109076102

/-! ## A025342.P15796443045885323060

`eq[1, A276206(A339431(n))]`
-/

namespace A025342.P15796443045885323060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276206 (A339431 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025342.P15796443045885323060

/-!
# A025343: Numbers that are the sum of 3 distinct nonzero squares in exactly 5 ways.

The programs for A025343, there is no canonical definition to state claims against.
-/

/-! ## A025343.P9116248142690328515

`eq[5, A025442(n)]`
-/

namespace A025343.P9116248142690328515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025343.P9116248142690328515

/-! ## A025343.P13154752168534652973

`eq[5, A025436(n)-A025441(n)]`
-/

namespace A025343.P13154752168534652973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025343.P13154752168534652973

/-!
# A025344: Numbers that are the sum of 3 distinct nonzero squares in exactly 6 ways.

The programs for A025344, there is no canonical definition to state claims against.
-/

/-! ## A025344.P7439687171806781911

`eq[6, A025442(n)]`
-/

namespace A025344.P7439687171806781911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025344.P7439687171806781911

/-! ## A025344.P10275338709800988833

`eq[3, A029053(A025436(n)-A025441(n))]`
-/

namespace A025344.P10275338709800988833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025344.P10275338709800988833

/-! ## A025344.P15830263662850832646

`eq[5, A276076(A025436(n)-A025441(n))]`
-/

namespace A025344.P15830263662850832646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025344.P15830263662850832646

/-!
# A025345: Numbers that are the sum of 3 distinct nonzero squares in exactly 7 ways.

The programs for A025345, there is no canonical definition to state claims against.
-/

/-! ## A025345.P13105942916749044717

`eq[7, A025442(n)]`
-/

namespace A025345.P13105942916749044717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025345.P13105942916749044717

/-! ## A025345.P1608251588628641898

`record[A025353(A048793(2*n)+1)]`
-/

namespace A025345.P1608251588628641898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025353 (A048793 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025345.P1608251588628641898

/-! ## A025345.P9746357365704265104

`record[A025353(A048793(n+6))]`
-/

namespace A025345.P9746357365704265104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025353 (A048793 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025345.P9746357365704265104

/-! ## A025345.P4756319948390616195

`filter[A025353(n+1), A123594(#)]`
-/

namespace A025345.P4756319948390616195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123594 (f1 j).toNat = 1) n)

end

end A025345.P4756319948390616195

/-!
# A025346: Numbers that are the sum of 3 distinct nonzero squares in exactly 8 ways.

The programs for A025346, there is no canonical definition to state claims against.
-/

/-! ## A025346.P17854036081388685676

`eq[8, A025442(n)]`
-/

namespace A025346.P17854036081388685676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025346.P17854036081388685676

/-! ## A025346.P10660087792215236419

`eq[8, A025436(n)-A025441(n)]`
-/

namespace A025346.P10660087792215236419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025346.P10660087792215236419

/-! ## A025346.P5929803816068494519

`A025354(A228050(n+1)+A044947(n+1))`
-/

namespace A025346.P5929803816068494519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025354 (A228050 (n + 1) + A044947 (n + 1)).toNat

end

end A025346.P5929803816068494519

/-!
# A025347: Numbers that are the sum of 3 distinct nonzero squares in exactly 9 ways.

The programs for A025347, there is no canonical definition to state claims against.
-/

/-! ## A025347.P4328554400550762643

`eq[9, A025442(n)]`
-/

namespace A025347.P4328554400550762643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025347.P4328554400550762643

/-! ## A025347.P5370657245292463918

`eq[5, A029053(A025436(n)-A025441(n))]`
-/

namespace A025347.P5370657245292463918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025347.P5370657245292463918

/-! ## A025347.P2713695886779716037

`eq[5, A208061(A025436(n)-A025441(n))]`
-/

namespace A025347.P2713695886779716037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208061 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025347.P2713695886779716037

/-!
# A025348: Numbers that are the sum of 3 distinct nonzero squares in exactly 10 ways.

The programs for A025348, there is no canonical definition to state claims against.
-/

/-! ## A025348.P16547149621570871192

`eq[10, A025442(n)]`
-/

namespace A025348.P16547149621570871192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025348.P16547149621570871192

/-! ## A025348.P1641767973641710172

`eq[3, A208059(A025436(n)-A025441(n))]`
-/

namespace A025348.P1641767973641710172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208059 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025348.P1641767973641710172

/-! ## A025348.P10409749274648054349

`A025338(lt[A263964(3*n+4), A051817(n+1)])`
-/

namespace A025348.P10409749274648054349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263964 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025338 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025348.P10409749274648054349

/-!
# A025349: Numbers that are the sum of 3 distinct nonzero squares in 3 or more ways.

The programs for A025349, there is no canonical definition to state claims against.
-/

/-! ## A025349.P1651876878583790364

`lt[2, A025442(n)]`
-/

namespace A025349.P1651876878583790364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025349.P1651876878583790364

/-! ## A025349.P8723328961211551588

`eq[0, A192687(A025442(n)²)]`
-/

namespace A025349.P8723328961211551588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 (A025442 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025349.P8723328961211551588

/-! ## A025349.P2720299776861326418

`lt[A025441(n)+2, A025436(n)]`
-/

namespace A025349.P2720299776861326418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025349.P2720299776861326418

/-! ## A025349.P8755954113411534552

`lt[A025443(n)+2, A025437(n)]`
-/

namespace A025349.P8755954113411534552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025349.P8755954113411534552

/-! ## A025349.P1157596461608600110

`eq[1, A051023(a(A025442(n)))]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A025349.P1157596461608600110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f2 =>
  A051023 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025349.P1157596461608600110

/-! ## A025349.P16083077062709697861

`lt[1, A029053(A025436(n)-A025441(n))]`
-/

namespace A025349.P16083077062709697861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025349.P16083077062709697861

/-! ## A025349.P4333094437297197688

`lt[2, A000142(A025436(n)-A025441(n))]`
-/

namespace A025349.P4333094437297197688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025349.P4333094437297197688

/-! ## A025349.P11403569444951938244

`eq[A143090(A025442(n)²)², A143090(n)]`
-/

namespace A025349.P11403569444951938244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025442 n ^ 2).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025349.P11403569444951938244

/-! ## A025349.P4848226436294677227

`lt[2, A208062(A025436(n)-A025441(n))]`
-/

namespace A025349.P4848226436294677227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208062 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025349.P4848226436294677227

/-! ## A025349.P14670291132486568867

`eq[1, A066247(A025442(n)!)]`
-/

namespace A025349.P14670291132486568867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (Nat.factorial (A025442 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025349.P14670291132486568867

/-! ## A025349.P18401852344679067184

`eq[1, A081729(A025442(n)!)]`
-/

namespace A025349.P18401852344679067184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (Nat.factorial (A025442 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025349.P18401852344679067184

/-! ## A025349.P13536204834978549828

`eq[2, A107393(A025442(n)!)]`
-/

namespace A025349.P13536204834978549828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (Nat.factorial (A025442 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025349.P13536204834978549828

/-!
# A025350: Numbers that are the sum of 3 distinct nonzero squares in 4 or more ways.

The programs for A025350, there is no canonical definition to state claims against.
-/

/-! ## A025350.P298693419886501084

`lt[3, A025442(n)]`
-/

namespace A025350.P298693419886501084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025350.P298693419886501084

/-! ## A025350.P12596868629703382312

`lt[3, A025436(n)-A025441(n)]`
-/

namespace A025350.P12596868629703382312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025350.P12596868629703382312

/-! ## A025350.P6277118645852877685

`eq[1, A005928(a(A025442(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A025350.P6277118645852877685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A005928 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025350.P6277118645852877685

/-! ## A025350.P13931780511883234650

`eq[1, A029337(a(A025442(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A025350.P13931780511883234650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A029337 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025350.P13931780511883234650

/-! ## A025350.P983487302616631097

`eq[1, A051023(a(A025442(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A025350.P983487302616631097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A051023 (f2 (A025442 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025350.P983487302616631097

/-! ## A025350.P664567784385241605

`eq[0, A008683(A025442(n)!)]`
-/

namespace A025350.P664567784385241605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.factorial (A025442 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025350.P664567784385241605

/-!
# A025351: Numbers that are the sum of 3 distinct nonzero squares in 5 or more ways.

The programs for A025351, there is no canonical definition to state claims against.
-/

/-! ## A025351.P9799071345591762085

`lt[4, A025442(n)]`
-/

namespace A025351.P9799071345591762085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025351.P9799071345591762085

/-! ## A025351.P7238010536019544739

`lt[log2(28), A025436(n)-A025441(n)]`
-/

namespace A025351.P7238010536019544739
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (28 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A025351.P7238010536019544739

/-! ## A025351.P12430661191539703546

`lt[28, A000142(A025436(n)-A025441(n))]`
-/

namespace A025351.P12430661191539703546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025351.P12430661191539703546

/-! ## A025351.P7641846279050108701

`lt[28, A000384(A025436(n)-A025441(n))]`
-/

namespace A025351.P7641846279050108701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025351.P7641846279050108701

/-! ## A025351.P8816175952728721513

`lt[12, A208062(A025436(n)-A025441(n))]`
-/

namespace A025351.P8816175952728721513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208062 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025351.P8816175952728721513

/-!
# A025352: Numbers that are the sum of 3 distinct nonzero squares in 6 or more ways.

The programs for A025352, there is no canonical definition to state claims against.
-/

/-! ## A025352.P1417130079929335263

`lt[5, A025442(n)]`
-/

namespace A025352.P1417130079929335263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025352.P1417130079929335263

/-! ## A025352.P281423692208524563

`lt[5, A025436(n)-A025441(n)]`
-/

namespace A025352.P281423692208524563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025352.P281423692208524563

/-!
# A025353: Numbers that are the sum of 3 distinct nonzero squares in 7 or more ways.

The programs for A025353, there is no canonical definition to state claims against.
-/

/-! ## A025353.P8582374656939756408

`lt[6, A025442(n)]`
-/

namespace A025353.P8582374656939756408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025353.P8582374656939756408

/-! ## A025353.P9074602399332941982

`eq[A000038(n), A014436(A025442(n))]`
-/

namespace A025353.P9074602399332941982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014436 (A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025353.P9074602399332941982

/-! ## A025353.P15047872457734318057

`eq[A143090(A025442(n))², A143090(n)]`
-/

namespace A025353.P15047872457734318057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025442 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025353.P15047872457734318057

/-! ## A025353.P9448864094054085306

`lt[3, A029053(A025436(n)-A025441(n))]`
-/

namespace A025353.P9448864094054085306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025353.P9448864094054085306

/-! ## A025353.P14031437082230927371

`A025335(lt[A079074(3*n+4), A056654(n+1)])`
-/

namespace A025353.P14031437082230927371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079074 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025335 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025353.P14031437082230927371

/-!
# A025354: Numbers that are the sum of 3 distinct nonzero squares in 8 or more ways.

The programs for A025354, there is no canonical definition to state claims against.
-/

/-! ## A025354.P5548185288542289923

`lt[7, A025442(n)]`
-/

namespace A025354.P5548185288542289923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025354.P5548185288542289923

/-!
# A025355: Numbers that are the sum of 3 distinct nonzero squares in 9 or more ways.

The programs for A025355, there is no canonical definition to state claims against.
-/

/-! ## A025355.P12157613689198977732

`lt[8, A025442(n)]`
-/

namespace A025355.P12157613689198977732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025355.P12157613689198977732

/-! ## A025355.P568686761401550393

`lt[8, A025436(n)-A025441(n)]`
-/

namespace A025355.P568686761401550393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 n - A025441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025355.P568686761401550393

/-! ## A025355.P7508776581943847257

`A294715(A329135(n+4)^A123245(n))`
-/

namespace A025355.P7508776581943847257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294715 (SequenceMachineLib.roundAway ((A329135 (n + 4) : ℚ) ^ (A123245 n : ℤ))).toNat

end

end A025355.P7508776581943847257

/-! ## A025355.P2569128799500570872

`A294715(A329135(n+4)^A000164(2*(n+1)))`
-/

namespace A025355.P2569128799500570872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294715 (SequenceMachineLib.roundAway ((A329135 (n + 4) : ℚ) ^ (A000164 (2 * (n + 1)) : ℤ))).toNat

end

end A025355.P2569128799500570872

/-!
# A025356: Numbers that are the sum of 3 distinct nonzero squares in 10 or more ways.

The programs for A025356, there is no canonical definition to state claims against.
-/

/-! ## A025356.P8578549227678826492

`lt[9, A025442(n)]`
-/

namespace A025356.P8578549227678826492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025356.P8578549227678826492

/-! ## A025356.P14027497829513243625

`lt[1, A108611(A025436(n)-A025441(n))]`
-/

namespace A025356.P14027497829513243625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025356.P14027497829513243625

/-! ## A025356.P6249581445954998648

`lt[5, A029053(A025436(n)-A025441(n))]`
-/

namespace A025356.P6249581445954998648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025356.P6249581445954998648

/-! ## A025356.P5104964034256349808

`lt[1, A208059(A025436(n)-A025441(n))]`
-/

namespace A025356.P5104964034256349808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208059 (A025436 n - A025441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025356.P5104964034256349808

/-! ## A025356.P10826829245613423312

`A025338(lt[A164881(3*(n+1)), A065243(n)])`
-/

namespace A025356.P10826829245613423312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164881 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025338 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025356.P10826829245613423312

/-!
# A025357: Numbers that are the sum of 4 nonzero squares in exactly 1 way.

The programs for A025357, there is no canonical definition to state claims against.
-/

/-! ## A025357.P15866849413120660336

`eq[1, A025428(n)]`
-/

namespace A025357.P15866849413120660336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025357.P15866849413120660336

/-! ## A025357.P15542614351630490988

`eq[A000164(n)+1, A002635(n)]`
-/

namespace A025357.P15542614351630490988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025357.P15542614351630490988

/-! ## A025357.P9091409096619103303

`eq[A000164(n), A000378(A002635(n))]`
-/

namespace A025357.P9091409096619103303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (A002635 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025357.P9091409096619103303

/-! ## A025357.P7857988178069734527

`eq[1, A000093(A002635(n)-A000164(n))]`
-/

namespace A025357.P7857988178069734527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025357.P7857988178069734527

/-! ## A025357.P10610366413139669542

`eq[1, A000290(A002635(n)-A000164(n))]`
-/

namespace A025357.P10610366413139669542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025357.P10610366413139669542

/-! ## A025357.P10622337201258676667

`record[A000414(n+1)/A025428(A000414(n+1))]`
-/

namespace A025357.P10622337201258676667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000414 (n + 1) : ℚ) / (A025428 (A000414 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025357.P10622337201258676667

/-!
# A025358: Numbers that are the sum of 4 nonzero squares in exactly 2 ways.

The programs for A025358, there is no canonical definition to state claims against.
-/

/-! ## A025358.P5341081480534587833

`eq[2, A025428(n)]`
-/

namespace A025358.P5341081480534587833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025358.P5341081480534587833

/-! ## A025358.P13076759547545160824

`eq[A000164(n)+2, A002635(n)]`
-/

namespace A025358.P13076759547545160824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025358.P13076759547545160824

/-! ## A025358.P2703697404280720936

`eq[A002635(n), A100637(A000164(n))]`
-/

namespace A025358.P2703697404280720936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025358.P2703697404280720936

/-! ## A025358.P1968026855728290610

`eq[2, A000041(A002635(n)-A000164(n))]`
-/

namespace A025358.P1968026855728290610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025358.P1968026855728290610

/-! ## A025358.P10841347746230393537

`eq[2, A000093(A002635(n)-A000164(n))]`
-/

namespace A025358.P10841347746230393537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025358.P10841347746230393537

/-! ## A025358.P12306604910170006096

`eq[4, A000290(A002635(n)-A000164(n))]`
-/

namespace A025358.P12306604910170006096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025358.P12306604910170006096

/-! ## A025358.P9853138646790949492

`eq[3, A000032(A002635(n)-A000164(n))]`
-/

namespace A025358.P9853138646790949492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025358.P9853138646790949492

/-!
# A025359: Numbers that are the sum of 4 nonzero squares in exactly 3 ways.

The programs for A025359, there is no canonical definition to state claims against.
-/

/-! ## A025359.P2034352173084245556

`eq[3, A025428(n)]`
-/

namespace A025359.P2034352173084245556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025359.P2034352173084245556

/-! ## A025359.P12826481768708658592

`eq[A000164(n)+3, A002635(n)]`
-/

namespace A025359.P12826481768708658592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025359.P12826481768708658592

/-! ## A025359.P7436300363283010267

`A028310(eq[3, A002635(n)-A000164(n)])`
-/

namespace A025359.P7436300363283010267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025359.P7436300363283010267

/-! ## A025359.P9769556962934635050

`eq[5, A000093(A002635(n)-A000164(n))]`
-/

namespace A025359.P9769556962934635050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025359.P9769556962934635050

/-! ## A025359.P7868907879108919786

`eq[9, A000290(A002635(n)-A000164(n))]`
-/

namespace A025359.P7868907879108919786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025359.P7868907879108919786

/-! ## A025359.P15896339481490796211

`eq[2, A000045(A002635(n)-A000164(n))]`
-/

namespace A025359.P15896339481490796211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025359.P15896339481490796211

/-!
# A025360: Numbers that are the sum of 4 nonzero squares in exactly 4 ways.

The programs for A025360, there is no canonical definition to state claims against.
-/

/-! ## A025360.P10739568497157302323

`eq[4, A025428(n)]`
-/

namespace A025360.P10739568497157302323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025360.P10739568497157302323

/-! ## A025360.P2861419073529123885

`eq[16, (A000164(n)-A002635(n))²]`
-/

namespace A025360.P2861419073529123885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000164 n - A002635 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025360.P2861419073529123885

/-! ## A025360.P9586489412352997677

`eq[A002635(n), A020705(A000164(n))]`
-/

namespace A025360.P9586489412352997677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025360.P9586489412352997677

/-! ## A025360.P9305180374135152730

`eq[5, A000041(A002635(n)-A000164(n))]`
-/

namespace A025360.P9305180374135152730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025360.P9305180374135152730

/-! ## A025360.P5114976307060709319

`eq[16, A000290(A002635(n)-A000164(n))]`
-/

namespace A025360.P5114976307060709319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025360.P5114976307060709319

/-! ## A025360.P2626617781816978158

`eq[4, (A002635(n)-A000164(n))%A017032(n)]`
-/

namespace A025360.P2626617781816978158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002635 n - A000164 n) (A017032 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025360.P2626617781816978158

/-! ## A025360.P12335126752355606044

`eq[3, A000045(A002635(n)-A000164(n))]`
-/

namespace A025360.P12335126752355606044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025360.P12335126752355606044

/-! ## A025360.P7713535727281020208

`eq[7, A000032(A002635(n)-A000164(n))]`
-/

namespace A025360.P7713535727281020208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025360.P7713535727281020208

/-!
# A025361: Numbers that are the sum of 4 nonzero squares in exactly 5 ways.

The programs for A025361, there is no canonical definition to state claims against.
-/

/-! ## A025361.P8333225819980962336

`eq[5, A025428(n)]`
-/

namespace A025361.P8333225819980962336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025361.P8333225819980962336

/-! ## A025361.P6014371396240035101

`eq[A002635(n), A020710(A000164(n))]`
-/

namespace A025361.P6014371396240035101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025361.P6014371396240035101

/-! ## A025361.P17608385576101559199

`lt[A025428(n), A226535(A025428(n)+2)]`
-/

namespace A025361.P17608385576101559199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226535 (A025428 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025361.P17608385576101559199

/-! ## A025361.P18446457973901276732

`eq[7, A000041(A002635(n)-A000164(n))]`
-/

namespace A025361.P18446457973901276732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025361.P18446457973901276732

/-! ## A025361.P16216318239925700485

`eq[5, (A002635(n)-A000164(n))%A017032(n)]`
-/

namespace A025361.P16216318239925700485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002635 n - A000164 n) (A017032 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025361.P16216318239925700485

/-! ## A025361.P2392827252737602103

`eq[A002635(n)-A000164(n), 5%A017209(n)]`
-/

namespace A025361.P2392827252737602103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A017209 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025361.P2392827252737602103

/-!
# A025362: Numbers that are the sum of 4 nonzero squares in exactly 6 ways.

The programs for A025362, there is no canonical definition to state claims against.
-/

/-! ## A025362.P16079675656376783557

`eq[6, A025428(n)]`
-/

namespace A025362.P16079675656376783557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025362.P16079675656376783557

/-! ## A025362.P8528972349698557651

`eq[A002635(n), A000164(n)+6]`
-/

namespace A025362.P8528972349698557651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025362.P8528972349698557651

/-! ## A025362.P3417938894225665107

`eq[A002635(n), A020715(A000164(n))]`
-/

namespace A025362.P3417938894225665107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025362.P3417938894225665107

/-! ## A025362.P16107190125910943528

`eq[6, A000174(n)-(A025429(n)+A000164(n))]`
-/

namespace A025362.P16107190125910943528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - (A025429 n + A000164 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025362.P16107190125910943528

/-! ## A025362.P13733560616194528540

`eq[6, A002635(n)-(A025427(n)+A000161(n))]`
-/

namespace A025362.P13733560616194528540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - (A025427 n + A000161 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025362.P13733560616194528540

/-!
# A025363: Numbers that are the sum of 4 nonzero squares in exactly 7 ways.

The programs for A025363, there is no canonical definition to state claims against.
-/

/-! ## A025363.P1106337060452293806

`eq[7, A025428(n)]`
-/

namespace A025363.P1106337060452293806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025363.P1106337060452293806

/-! ## A025363.P11756699759437194747

`eq[A000164(n)+7, A002635(n)]`
-/

namespace A025363.P11756699759437194747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025363.P11756699759437194747

/-! ## A025363.P4964478091720432987

`eq[5, A000009(A002635(n)-A000164(n))]`
-/

namespace A025363.P4964478091720432987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025363.P4964478091720432987

/-! ## A025363.P1479420885303280015

`A028310(eq[7, A002635(n)-A000164(n)])`
-/

namespace A025363.P1479420885303280015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A025363.P1479420885303280015

/-! ## A025363.P3801900502091298101

`eq[10, A004271(A002635(n)-A000164(n))]`
-/

namespace A025363.P3801900502091298101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025363.P3801900502091298101

/-!
# A025364: Numbers that are the sum of 4 nonzero squares in exactly 8 ways.

The programs for A025364, there is no canonical definition to state claims against.
-/

/-! ## A025364.P14466011987808508484

`eq[8, A025428(n)]`
-/

namespace A025364.P14466011987808508484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025364.P14466011987808508484

/-! ## A025364.P7551358718813153439

`eq[A000164(n)+8, A002635(n)]`
-/

namespace A025364.P7551358718813153439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025364.P7551358718813153439

/-! ## A025364.P14014020995691753812

`eq[4, A092392(A002635(n)-A000164(n))]`
-/

namespace A025364.P14014020995691753812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025364.P14014020995691753812

/-! ## A025364.P12632356421693057646

`eq[5, A034261(A002635(n)-A000164(n))]`
-/

namespace A025364.P12632356421693057646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025364.P12632356421693057646

/-! ## A025364.P18261656864120446886

`eq[6, A000009(A002635(n)-A000164(n))]`
-/

namespace A025364.P18261656864120446886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025364.P18261656864120446886

/-! ## A025364.P9618245357513057616

`eq[6, A075158(A002635(n)-A000164(n))]`
-/

namespace A025364.P9618245357513057616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025364.P9618245357513057616

/-! ## A025364.P10798327671616901002

`eq[64, A000695(A002635(n)-A000164(n))]`
-/

namespace A025364.P10798327671616901002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025364.P10798327671616901002

/-! ## A025364.P18020851264997375332

`eq[21, A000045(A002635(n)-A000164(n))]`
-/

namespace A025364.P18020851264997375332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025364.P18020851264997375332

/-!
# A025365: Numbers that are the sum of 4 nonzero squares in exactly 9 ways.

The programs for A025365, there is no canonical definition to state claims against.
-/

/-! ## A025365.P17053166241121957442

`eq[9, A025428(n)]`
-/

namespace A025365.P17053166241121957442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025365.P17053166241121957442

/-! ## A025365.P15410396235310600746

`eq[9, A002635(n)-A000164(n)]`
-/

namespace A025365.P15410396235310600746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025365.P15410396235310600746

/-! ## A025365.P612733663206193261

`eq[9, A000174(n)-(A025429(n)+A000164(n))]`
-/

namespace A025365.P612733663206193261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - (A025429 n + A000164 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025365.P612733663206193261

/-! ## A025365.P17473520942723255693

`eq[9, A002635(n)-(A025427(n)+A000161(n))]`
-/

namespace A025365.P17473520942723255693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - (A025427 n + A000161 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025365.P17473520942723255693

/-! ## A025365.P13429940630466443112

`eq[9, A002635(A028310(n))+A001489(A000164(n))]`
-/

namespace A025365.P13429940630466443112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A028310 n).toNat + A001489 (A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025365.P13429940630466443112

/-!
# A025366: Numbers that are the sum of 4 nonzero squares in exactly 10 ways.

The programs for A025366, there is no canonical definition to state claims against.
-/

/-! ## A025366.P14127345001627480588

`eq[10, A025428(n)]`
-/

namespace A025366.P14127345001627480588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025366.P14127345001627480588

/-! ## A025366.P17979834012733429234

`eq[10, A002635(n)-A000164(n)]`
-/

namespace A025366.P17979834012733429234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025366.P17979834012733429234

/-! ## A025366.P15035879540037081135

`eq[10, A000174(n)-(A025429(n)+A000164(n))]`
-/

namespace A025366.P15035879540037081135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - (A025429 n + A000164 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025366.P15035879540037081135

/-! ## A025366.P12424875829184852885

`eq[10, A002635(n)-(A025427(n)+A000161(n))]`
-/

namespace A025366.P12424875829184852885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - (A025427 n + A000161 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025366.P12424875829184852885

/-!
# A025367: Numbers that are the sum of 4 nonzero squares in 2 or more ways.

The programs for A025367, there is no canonical definition to state claims against.
-/

/-! ## A025367.P4151587904480386087

`lt[1, A025428(n)]`
-/

namespace A025367.P4151587904480386087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025367.P4151587904480386087

/-! ## A025367.P12353110680279906419

`lt[A000164(n)+1, A002635(n)]`
-/

namespace A025367.P12353110680279906419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025367.P12353110680279906419

/-! ## A025367.P10431427353002663711

`eq[2, A000005(a(A025428(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A025367.P10431427353002663711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A000005 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025367.P10431427353002663711

/-! ## A025367.P3840972415118736461

`eq[2, A003113(a(A025428(n)))]` with `a(0)=5, a(1)=5`
-/

namespace A025367.P3840972415118736461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  A003113 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025367.P3840972415118736461

/-! ## A025367.P8126622647373926025

`eq[2, A134914(a(A025428(n)))]` with `a(0)=22, a(1)=22`
-/

namespace A025367.P8126622647373926025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [22, 22] fun n f2 =>
  A134914 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025367.P8126622647373926025

/-! ## A025367.P5991227205259937522

`eq[1, A168377(a(A025428(n)))²]` with `a(0)=4, a(1)=4`
-/

namespace A025367.P5991227205259937522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A168377 (f2 (A025428 n).toNat).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025367.P5991227205259937522

/-! ## A025367.P14004709522442621211

`eq[2, A060681(a(A025428(n))+1)]` with `a(0)=5, a(1)=5`
-/

namespace A025367.P14004709522442621211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  A060681 (f2 (A025428 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025367.P14004709522442621211

/-! ## A025367.P8763067036262092704

`eq[A000038(n), A130779(A025428(n)+1)]`
-/

namespace A025367.P8763067036262092704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A025428 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025367.P8763067036262092704

/-! ## A025367.P8018042062311989122

`eq[A000038(n), A130779(2*A025428(n))]`
-/

namespace A025367.P8018042062311989122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (2 * A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025367.P8018042062311989122

/-! ## A025367.P13741265091770241687

`eq[2, A020639(A308828(A025428(n)+1)+2)]`
-/

namespace A025367.P13741265091770241687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A308828 (A025428 n + 1).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025367.P13741265091770241687

/-! ## A025367.P14326196343574331058

`eq[A000038(n), A130779(A025428(n)²)]`
-/

namespace A025367.P14326196343574331058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A025428 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025367.P14326196343574331058

/-! ## A025367.P1557185840765810494

`lt[1, A243148(A145018(n+1))]`
-/

namespace A025367.P1557185840765810494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A145018 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025367.P1557185840765810494

/-! ## A025367.P2008898911877783105

`lt[1, A243148(A133263(n)+2)]`
-/

namespace A025367.P2008898911877783105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A133263 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025367.P2008898911877783105

/-! ## A025367.P5732684984108167630

`eq[A000007(n), A143721(A025428(n)²²)]`
-/

namespace A025367.P5732684984108167630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 ((A025428 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025367.P5732684984108167630

/-! ## A025367.P17996429754807094762

`eq[A000038(n), A143721(A025428(n)²²)]`
-/

namespace A025367.P17996429754807094762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 ((A025428 n ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025367.P17996429754807094762

/-!
# A025368: Numbers that are the sum of 4 nonzero squares in 3 or more ways.

The programs for A025368, there is no canonical definition to state claims against.
-/

/-! ## A025368.P13064798662030172779

`lt[2, A025428(n)]`
-/

namespace A025368.P13064798662030172779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025368.P13064798662030172779

/-! ## A025368.P14436425234237086049

`lt[A000164(n)+2, A002635(n)]`
-/

namespace A025368.P14436425234237086049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025368.P14436425234237086049

/-! ## A025368.P8722135461374390937

`eq[2, A000005(a(A025428(n)))]` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A025368.P8722135461374390937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4] fun n f2 =>
  A000005 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025368.P8722135461374390937

/-! ## A025368.P14049740147331761494

`eq[2, A003113(a(A025428(n)))]` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A025368.P14049740147331761494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4] fun n f2 =>
  A003113 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025368.P14049740147331761494

/-! ## A025368.P17565371692218550596

`eq[2, A061501(a(A025428(n)))]` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A025368.P17565371692218550596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4] fun n f2 =>
  A061501 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025368.P17565371692218550596

/-! ## A025368.P13811051331486135036

`eq[2, A008619(a(A025428(n)))]` with `a(0)=5, a(1)=4, a(2)=4`
-/

namespace A025368.P13811051331486135036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 4, 4] fun n f2 =>
  A008619 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025368.P13811051331486135036

/-! ## A025368.P8596272403038503706

`eq[A000038(n), A130779(A025428(n))]`
-/

namespace A025368.P8596272403038503706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025368.P8596272403038503706

/-! ## A025368.P5940770834969883648

`eq[2*A130779(n), A130779(A025428(n))]`
-/

namespace A025368.P5940770834969883648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130779 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025368.P5940770834969883648

/-! ## A025368.P7696828717423317993

`eq[0, A143090(A025428(n)²)]`
-/

namespace A025368.P7696828717423317993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025428 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025368.P7696828717423317993

/-! ## A025368.P5197595137180579018

`eq[A000007(n), A143721(A025428(n)²)]`
-/

namespace A025368.P5197595137180579018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025368.P5197595137180579018

/-! ## A025368.P460182288072340572

`eq[A000038(n), A143721(A025428(n)²)]`
-/

namespace A025368.P460182288072340572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025368.P460182288072340572

/-! ## A025368.P14090022458038088923

`eq[A143721(A025428(n)²)², A143721(n)]`
-/

namespace A025368.P14090022458038088923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n ^ 2).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025368.P14090022458038088923

/-! ## A025368.P5192881714194151244

`lt[2, A243148(A145018(n+1))]`
-/

namespace A025368.P5192881714194151244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A145018 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025368.P5192881714194151244

/-! ## A025368.P4557565951484425921

`lt[2, A243148(A133263(n)+2)]`
-/

namespace A025368.P4557565951484425921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A133263 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025368.P4557565951484425921

/-!
# A025369: Numbers that are the sum of 4 nonzero squares in 4 or more ways.

The programs for A025369, there is no canonical definition to state claims against.
-/

/-! ## A025369.P2285370693164646973

`lt[3, A025428(n)]`
-/

namespace A025369.P2285370693164646973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025369.P2285370693164646973

/-! ## A025369.P8414591968994502883

`eq[2, A000005(a(A025428(n)))]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A025369.P8414591968994502883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4, 4] fun n f2 =>
  A000005 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025369.P8414591968994502883

/-! ## A025369.P7431274026763959495

`eq[2, A008619(a(A025428(n)))]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A025369.P7431274026763959495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4, 4] fun n f2 =>
  A008619 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025369.P7431274026763959495

/-! ## A025369.P8240539555599549061

`eq[2, A015996(a(A025428(n)))]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A025369.P8240539555599549061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4, 4] fun n f2 =>
  A015996 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025369.P8240539555599549061

/-! ## A025369.P10798483241753786429

`eq[2, A225637(a(A025428(n)))]` with `a(0)=4, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A025369.P10798483241753786429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4, 4] fun n f2 =>
  A225637 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025369.P10798483241753786429

/-! ## A025369.P18127411526599749048

`eq[2, A003113(a(A025428(n)))]` with `a(0)=5, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A025369.P18127411526599749048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 4, 4, 4] fun n f2 =>
  A003113 (f2 (A025428 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025369.P18127411526599749048

/-! ## A025369.P12392738454341751088

`lt[A020705(A000164(n)), A002635(n)+1]`
-/

namespace A025369.P12392738454341751088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A000164 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025369.P12392738454341751088

/-! ## A025369.P3943389821531164042

`eq[A000038(n), A143721(2*A025428(n))]`
-/

namespace A025369.P3943389821531164042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (2 * A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025369.P3943389821531164042

/-! ## A025369.P12269409111478350235

`eq[A000007(n), A143721(2*A025428(n))]`
-/

namespace A025369.P12269409111478350235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (2 * A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025369.P12269409111478350235

/-!
# A025370: Numbers that are the sum of 4 nonzero squares in 5 or more ways.

The programs for A025370, there is no canonical definition to state claims against.
-/

/-! ## A025370.P11655341907910671149

`lt[4, A025428(n)]`
-/

namespace A025370.P11655341907910671149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025370.P11655341907910671149

/-! ## A025370.P11076031790075988810

`lt[4, A002635(n)-A000164(n)]`
-/

namespace A025370.P11076031790075988810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025370.P11076031790075988810

/-! ## A025370.P4096051776741123359

`lt[A020705(A000164(n)), A002635(n)]`
-/

namespace A025370.P4096051776741123359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A000164 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025370.P4096051776741123359

/-! ## A025370.P4739814939311479105

`eq[A000038(n), A143721(A025428(n)+2)]`
-/

namespace A025370.P4739814939311479105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025370.P4739814939311479105

/-! ## A025370.P8385100512544347191

`lt[4, A000174(n)-(A025429(n)+A000164(n))]`
-/

namespace A025370.P8385100512544347191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - (A025429 n + A000164 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025370.P8385100512544347191

/-! ## A025370.P4298003841879094017

`lt[4, A002635(n)-(A025427(n)+A000161(n))]`
-/

namespace A025370.P4298003841879094017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - (A025427 n + A000161 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025370.P4298003841879094017

/-! ## A025370.P13725756994184929601

`eq[A000007(n), A143721(A025428(n)+2)]`
-/

namespace A025370.P13725756994184929601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025370.P13725756994184929601

/-! ## A025370.P11879485316957886660

`lt[4, A243148(A145018(n+1))]`
-/

namespace A025370.P11879485316957886660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A145018 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025370.P11879485316957886660

/-! ## A025370.P13403514728747879722

`lt[4, A243148(A077169(n+1)-1)]`
-/

namespace A025370.P13403514728747879722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A077169 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025370.P13403514728747879722

/-! ## A025370.P14725757488340925896

`lt[4, A243148(A238531(n)+2+n)]`
-/

namespace A025370.P14725757488340925896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A238531 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025370.P14725757488340925896

/-!
# A025371: Numbers that are the sum of 4 nonzero squares in 6 or more ways.

The programs for A025371, there is no canonical definition to state claims against.
-/

/-! ## A025371.P15111794543059158450

`lt[5, A025428(n)]`
-/

namespace A025371.P15111794543059158450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025371.P15111794543059158450

/-! ## A025371.P9941002723662745848

`lt[A000164(n)+5, A002635(n)]`
-/

namespace A025371.P9941002723662745848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025371.P9941002723662745848

/-! ## A025371.P10935462146099514740

`eq[0, A114563(A002635(n)-A000164(n))]`
-/

namespace A025371.P10935462146099514740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114563 (A002635 n - A000164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025371.P10935462146099514740

/-! ## A025371.P2500843956377847547

`eq[A000038(n), A143721(A025428(n)+1)]`
-/

namespace A025371.P2500843956377847547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025371.P2500843956377847547

/-! ## A025371.P8896211273756264093

`lt[A143090(A002635(n)-A000164(n)), 2]`
-/

namespace A025371.P8896211273756264093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A002635 n - A000164 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025371.P8896211273756264093

/-! ## A025371.P8321074047647896088

`lt[5, A000174(n)-(A025429(n)+A000164(n))]`
-/

namespace A025371.P8321074047647896088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - (A025429 n + A000164 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025371.P8321074047647896088

/-! ## A025371.P4534552425246615006

`lt[5, A002635(n)-(A025427(n)+A000161(n))]`
-/

namespace A025371.P4534552425246615006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - (A025427 n + A000161 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025371.P4534552425246615006

/-! ## A025371.P4014892773365599586

`eq[A000007(n), A143721(A025428(n)+1)]`
-/

namespace A025371.P4014892773365599586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025371.P4014892773365599586

/-!
# A025372: Numbers that are the sum of 4 nonzero squares in 7 or more ways.

The programs for A025372, there is no canonical definition to state claims against.
-/

/-! ## A025372.P11062708311391232251

`lt[6, A025428(n)]`
-/

namespace A025372.P11062708311391232251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025372.P11062708311391232251

/-! ## A025372.P2958056064551217991

`lt[A000164(n)+6, A002635(n)]`
-/

namespace A025372.P2958056064551217991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025372.P2958056064551217991

/-! ## A025372.P11904096920118591040

`eq[A000038(n), A143721(A025428(n))]`
-/

namespace A025372.P11904096920118591040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025372.P11904096920118591040

/-! ## A025372.P9720299847004646813

`lt[A143090(A002635(n)-A000164(n)), 1]`
-/

namespace A025372.P9720299847004646813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A002635 n - A000164 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025372.P9720299847004646813

/-! ## A025372.P4768026650061954548

`eq[A010051(2*(n+1)), A143721(A025428(n))]`
-/

namespace A025372.P4768026650061954548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025372.P4768026650061954548

/-! ## A025372.P2564588499245323057

`eq[A000007(n), A143721(A025428(n))]`
-/

namespace A025372.P2564588499245323057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025372.P2564588499245323057

/-! ## A025372.P14164279640981906486

`eq[A143090(A025428(n))², A143090(n)]`
-/

namespace A025372.P14164279640981906486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025428 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025372.P14164279640981906486

/-! ## A025372.P5391019020292158391

`eq[A143721(A025428(n))², A143721(n)]`
-/

namespace A025372.P5391019020292158391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025372.P5391019020292158391

/-! ## A025372.P16430545646514043082

`eq[A143721(n+1), A143721(A025428(n))]`
-/

namespace A025372.P16430545646514043082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143721 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025372.P16430545646514043082

/-!
# A025373: Numbers that are the sum of 4 nonzero squares in 8 or more ways.

The programs for A025373, there is no canonical definition to state claims against.
-/

/-! ## A025373.P8838902932241050522

`lt[7, A025428(n)]`
-/

namespace A025373.P8838902932241050522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025373.P8838902932241050522

/-! ## A025373.P8205822053882729044

`lt[7, A002635(n)-A000164(n)]`
-/

namespace A025373.P8205822053882729044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025373.P8205822053882729044

/-! ## A025373.P3126187627186767305

`lt[7, A000174(n)-(A025429(n)+A000164(n))]`
-/

namespace A025373.P3126187627186767305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - (A025429 n + A000164 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025373.P3126187627186767305

/-! ## A025373.P8328018409492250569

`lt[7, A002635(n)-(A025427(n)+A000161(n))]`
-/

namespace A025373.P8328018409492250569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - (A025427 n + A000161 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025373.P8328018409492250569

/-! ## A025373.P15648298065560348317

`∪[A025364(n+1), A025374(n+1)]%A025364(n+2)`
-/

namespace A025373.P15648298065560348317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025374 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A025364 (n + 2))

end

end A025373.P15648298065560348317

/-!
# A025374: Numbers that are the sum of 4 nonzero squares in 9 or more ways.

The programs for A025374, there is no canonical definition to state claims against.
-/

/-! ## A025374.P328716280058681833

`lt[8, A025428(n)]`
-/

namespace A025374.P328716280058681833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025374.P328716280058681833

/-! ## A025374.P18290476846484890737

`lt[8, A002635(n)-A000164(n)]`
-/

namespace A025374.P18290476846484890737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025374.P18290476846484890737

/-! ## A025374.P8331319259961059670

`lt[8, A000174(n)-(A025429(n)+A000164(n))]`
-/

namespace A025374.P8331319259961059670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - (A025429 n + A000164 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025374.P8331319259961059670

/-! ## A025374.P5111469706349408670

`lt[8, A002635(n)-(A025427(n)+A000161(n))]`
-/

namespace A025374.P5111469706349408670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - (A025427 n + A000161 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025374.P5111469706349408670

/-! ## A025374.P15996919571743738137

`lt[8, A002635(n)+-A000164(n)%A212461(n+1)]`
-/

namespace A025374.P15996919571743738137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + Int.tmod (-A000164 n) (A212461 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025374.P15996919571743738137

/-!
# A025375: Numbers that are the sum of 4 nonzero squares in 10 or more ways.

The programs for A025375, there is no canonical definition to state claims against.
-/

/-! ## A025375.P16404213880606551277

`lt[9, A025428(n)]`
-/

namespace A025375.P16404213880606551277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025375.P16404213880606551277

/-! ## A025375.P7642385430468306749

`lt[9, A002635(n)-A000164(n)]`
-/

namespace A025375.P7642385430468306749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025375.P7642385430468306749

/-! ## A025375.P4882554393529681944

`lt[9, A000174(n)-(A025429(n)+A000164(n))]`
-/

namespace A025375.P4882554393529681944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n - (A025429 n + A000164 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025375.P4882554393529681944

/-! ## A025375.P16391407915647088620

`lt[9, A002635(n)-(A025427(n)+A000161(n))]`
-/

namespace A025375.P16391407915647088620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - (A025427 n + A000161 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025375.P16391407915647088620

/-! ## A025375.P8506922716441704891

`lt[9, A002635(n)+A001489(A000164(n)+1)+1]`
-/

namespace A025375.P8506922716441704891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n + A001489 (A000164 n + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025375.P8506922716441704891

/-!
# A025376: Numbers that are the sum of 4 distinct nonzero squares in exactly 1 way.

The programs for A025376, there is no canonical definition to state claims against.
-/

/-! ## A025376.P17358770227369029190

`eq[1, A025443(n)]`
-/

namespace A025376.P17358770227369029190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025376.P17358770227369029190

/-! ## A025376.P13645643052153232579

`lt[A000700(A025443(n)+1), 1]`
-/

namespace A025376.P13645643052153232579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A025443 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025376.P13645643052153232579

/-! ## A025376.P10995875628338022750

`lt[A093478(A025443(n)+1), 1]`
-/

namespace A025376.P10995875628338022750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093478 (A025443 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025376.P10995875628338022750

/-! ## A025376.P7955678322933192733

`lt[A336326(A025443(n)+1), 1]`
-/

namespace A025376.P7955678322933192733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336326 (A025443 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025376.P7955678322933192733

/-! ## A025376.P8676655049303564139

`lt[A000700(2*A025443(n)), 1]`
-/

namespace A025376.P8676655049303564139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * A025443 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A025376.P8676655049303564139

/-! ## A025376.P16463046892756549013

`record[A004433(n+1)/A025443(A004433(n+1))]`
-/

namespace A025376.P16463046892756549013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004433 (n + 1) : ℚ) / (A025443 (A004433 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025376.P16463046892756549013

/-! ## A025376.P16047613683858364820

`eq[A025442(n)+1, A025437(n)]`
-/

namespace A025376.P16047613683858364820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025376.P16047613683858364820

/-! ## A025376.P93045305178121865

`eq[A025444(n)+1, A025438(n)]`
-/

namespace A025376.P93045305178121865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025376.P93045305178121865

/-! ## A025376.P6343681819685873856

`eq[A025437(n), A062504(A025442(n))]`
-/

namespace A025376.P6343681819685873856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062504 (A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025376.P6343681819685873856

/-! ## A025376.P9370584925567653595

`lt[A060576(A025443(n)), A057427(n)]`
-/

namespace A025376.P9370584925567653595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A025443 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025376.P9370584925567653595

/-! ## A025376.P2069495516425929306

`lt[A060576(A025443(n)), A060576(n)]`
-/

namespace A025376.P2069495516425929306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A025443 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025376.P2069495516425929306

/-!
# A025377: Numbers that are the sum of 4 distinct nonzero squares in exactly 2 ways.

The programs for A025377, there is no canonical definition to state claims against.
-/

/-! ## A025377.P17418818323614229047

`eq[2, A025443(n)]`
-/

namespace A025377.P17418818323614229047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025377.P17418818323614229047

/-! ## A025377.P2991730481997613609

`lt[A093478(A025443(n)), A066247(n+1)]`
-/

namespace A025377.P2991730481997613609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093478 (A025443 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025377.P2991730481997613609

/-! ## A025377.P6681842285415018851

`eq[A025442(n)+2, A025437(n)]`
-/

namespace A025377.P6681842285415018851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025377.P6681842285415018851

/-! ## A025377.P2926581984078036700

`eq[A025444(n)+2, A025438(n)]`
-/

namespace A025377.P2926581984078036700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025377.P2926581984078036700

/-! ## A025377.P504508865525476792

`lt[(2-A025443(n))², A057427(n)]`
-/

namespace A025377.P504508865525476792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A025443 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025377.P504508865525476792

/-! ## A025377.P3265919626717082047

`lt[(2-A025443(n))², A060576(n)]`
-/

namespace A025377.P3265919626717082047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A025443 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025377.P3265919626717082047

/-! ## A025377.P3519721242052293866

`lt[A000700(A025443(n)), A057427(n)]`
-/

namespace A025377.P3519721242052293866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A025443 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025377.P3519721242052293866

/-! ## A025377.P7411325819621864189

`lt[2, A166926(A025438(n)-A025444(n))]`
-/

namespace A025377.P7411325819621864189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 (A025438 n - A025444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025377.P7411325819621864189

/-!
# A025378: Numbers that are the sum of 4 distinct nonzero squares in exactly 3 ways.

The programs for A025378, there is no canonical definition to state claims against.
-/

/-! ## A025378.P1577011090163438910

`eq[3, A025443(n)]`
-/

namespace A025378.P1577011090163438910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025378.P1577011090163438910

/-! ## A025378.P3515766996347015306

`eq[A025442(n)+3, A025437(n)]`
-/

namespace A025378.P3515766996347015306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025378.P3515766996347015306

/-! ## A025378.P11424167533633337654

`eq[A025444(n)+3, A025438(n)]`
-/

namespace A025378.P11424167533633337654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025378.P11424167533633337654

/-! ## A025378.P17866494704199642595

`eq[3, A025437(n)+A025441(n)-A025436(n)]`
-/

namespace A025378.P17866494704199642595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + (A025441 n - A025436 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025378.P17866494704199642595

/-! ## A025378.P11599176526685487129

`eq[2, A000045(A025438(n)-A025444(n))]`
-/

namespace A025378.P11599176526685487129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025438 n - A025444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025378.P11599176526685487129

/-! ## A025378.P13084921957108712940

`eq[3, A130760(A025438(n)-A025444(n))]`
-/

namespace A025378.P13084921957108712940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130760 (A025438 n - A025444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025378.P13084921957108712940

/-!
# A025379: Numbers that are the sum of 4 distinct nonzero squares in exactly 4 ways.

The programs for A025379, there is no canonical definition to state claims against.
-/

/-! ## A025379.P7847356175815260236

`eq[4, A025443(n)]`
-/

namespace A025379.P7847356175815260236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025379.P7847356175815260236

/-! ## A025379.P13841791888910727854

`eq[A025442(n)+4, A025437(n)]`
-/

namespace A025379.P13841791888910727854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025379.P13841791888910727854

/-! ## A025379.P3202887330349857855

`eq[A025444(n)+4, A025438(n)]`
-/

namespace A025379.P3202887330349857855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025379.P3202887330349857855

/-! ## A025379.P11673925704320378108

`eq[A023446(A025437(n)), A025442(n)]`
-/

namespace A025379.P11673925704320378108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A025437 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025379.P11673925704320378108

/-! ## A025379.P5968079922413277390

`eq[A023446(A025438(n)), A025444(n)]`
-/

namespace A025379.P5968079922413277390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A025438 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025379.P5968079922413277390

/-!
# A025380: Numbers that are the sum of 4 distinct nonzero squares in exactly 5 ways.

The programs for A025380, there is no canonical definition to state claims against.
-/

/-! ## A025380.P17834164042599034742

`eq[5, A025443(n)]`
-/

namespace A025380.P17834164042599034742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025380.P17834164042599034742

/-! ## A025380.P8334441579479886083

`eq[A020710(A025442(n)), A025437(n)]`
-/

namespace A025380.P8334441579479886083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025380.P8334441579479886083

/-! ## A025380.P11406899879471622562

`eq[A020710(A025444(n)), A025438(n)]`
-/

namespace A025380.P11406899879471622562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A025444 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025380.P11406899879471622562

/-! ## A025380.P14674689578672876147

`eq[1, A023446(A025437(n)-A025442(n))]`
-/

namespace A025380.P14674689578672876147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A025437 n - A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025380.P14674689578672876147

/-! ## A025380.P7426998655183798833

`eq[1, A023446(A025438(n)-A025444(n))]`
-/

namespace A025380.P7426998655183798833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A025438 n - A025444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025380.P7426998655183798833

/-! ## A025380.P10325561102750566380

`eq[7, A000041(A025437(n)-A025442(n))]`
-/

namespace A025380.P10325561102750566380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025437 n - A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025380.P10325561102750566380

/-! ## A025380.P17101224147328677896

`eq[5, A025437(n)+A025441(n)-A025436(n)]`
-/

namespace A025380.P17101224147328677896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + (A025441 n - A025436 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025380.P17101224147328677896

/-! ## A025380.P2489396908146769498

`eq[5, A000045(A025438(n)-A025444(n))]`
-/

namespace A025380.P2489396908146769498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A025438 n - A025444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025380.P2489396908146769498

/-!
# A025381: Numbers that are the sum of 4 distinct nonzero squares in exactly 6 ways.

The programs for A025381, there is no canonical definition to state claims against.
-/

/-! ## A025381.P3883649323835237701

`eq[6, A025443(n)]`
-/

namespace A025381.P3883649323835237701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025381.P3883649323835237701

/-!
# A025382: Numbers that are the sum of 4 distinct nonzero squares in exactly 7 ways.

The programs for A025382, there is no canonical definition to state claims against.
-/

/-! ## A025382.P12533104326622183455

`eq[7, A025443(n)]`
-/

namespace A025382.P12533104326622183455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025382.P12533104326622183455

/-!
# A025383: Numbers that are the sum of 4 distinct nonzero squares in exactly 8 ways.

The programs for A025383, there is no canonical definition to state claims against.
-/

/-! ## A025383.P10398692727435028148

`eq[8, A025443(n)]`
-/

namespace A025383.P10398692727435028148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025383.P10398692727435028148

/-! ## A025383.P2664299427612151770

`A025392(lt[A165920(n+1), A165911(3*n)])`
-/

namespace A025383.P2664299427612151770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165911 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025392 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025383.P2664299427612151770

/-! ## A025383.P789619655007727173

`A025392(lt[A165931(n+1), A165911(3*n)])`
-/

namespace A025383.P789619655007727173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165911 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025392 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A025383.P789619655007727173

/-!
# A025384: Numbers that are the sum of 4 distinct nonzero squares in exactly 9 ways.

The programs for A025384, there is no canonical definition to state claims against.
-/

/-! ## A025384.P2223746322688704962

`eq[9, A025443(n)]`
-/

namespace A025384.P2223746322688704962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025384.P2223746322688704962

/-!
# A025385: Numbers that are the sum of 4 distinct nonzero squares in exactly 10 ways.

The programs for A025385, there is no canonical definition to state claims against.
-/

/-! ## A025385.P1189351230061137805

`eq[10, A025443(n)]`
-/

namespace A025385.P1189351230061137805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025385.P1189351230061137805

/-!
# A025386: Numbers that are the sum of 4 distinct nonzero squares in 2 or more ways.

The programs for A025386, there is no canonical definition to state claims against.
-/

/-! ## A025386.P1664101635218374029

`lt[1, A025443(n)]`
-/

namespace A025386.P1664101635218374029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025386.P1664101635218374029

/-! ## A025386.P3119203674328183080

`eq[2, A107393(2*A025443(n))]`
-/

namespace A025386.P3119203674328183080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (2 * A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025386.P3119203674328183080

/-! ## A025386.P11326036144929447625

`eq[1, A000700(a(A025443(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A025386.P11326036144929447625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000700 (f2 (A025443 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025386.P11326036144929447625

/-! ## A025386.P14377249202212868829

`lt[A025442(n)+1, A025437(n)]`
-/

namespace A025386.P14377249202212868829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025386.P14377249202212868829

/-! ## A025386.P16621016930937538483

`lt[A025444(n)+1, A025438(n)]`
-/

namespace A025386.P16621016930937538483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025386.P16621016930937538483

/-! ## A025386.P12918724558789302884

`eq[A141044(A025443(n)), A157928(n)]`
-/

namespace A025386.P12918724558789302884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025443 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025386.P12918724558789302884

/-! ## A025386.P15199183124145467689

`eq[1, A141044(A025443(n)²)]`
-/

namespace A025386.P15199183124145467689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A025443 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025386.P15199183124145467689

/-! ## A025386.P5230689529949641106

`eq[1, A157928(A025443(n)²)]`
-/

namespace A025386.P5230689529949641106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A025443 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025386.P5230689529949641106

/-! ## A025386.P6063090638045596657

`eq[A000038(n), A166926(A025443(n)²)]`
-/

namespace A025386.P6063090638045596657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 (A025443 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025386.P6063090638045596657

/-! ## A025386.P17412964951505609588

`eq[0, A004530(A025443(n)!)]`
-/

namespace A025386.P17412964951505609588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (Nat.factorial (A025443 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025386.P17412964951505609588

/-! ## A025386.P8182138518850244957

`eq[2, A020639(A025443(n)!)]`
-/

namespace A025386.P8182138518850244957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial (A025443 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025386.P8182138518850244957

/-!
# A025387: Numbers that are the sum of 4 distinct nonzero squares in 3 or more ways.

The programs for A025387, there is no canonical definition to state claims against.
-/

/-! ## A025387.P6974065275227160730

`lt[2, A025443(n)]`
-/

namespace A025387.P6974065275227160730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025387.P6974065275227160730

/-! ## A025387.P14782869533511030816

`eq[1, A000700(a(A025443(n)))]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A025387.P14782869533511030816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f2 =>
  A000700 (f2 (A025443 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025387.P14782869533511030816

/-! ## A025387.P14718240582338341674

`eq[1, A016375(a(A025443(n)))]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A025387.P14718240582338341674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f2 =>
  A016375 (f2 (A025443 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025387.P14718240582338341674

/-! ## A025387.P5748579589035213684

`eq[1, A000367(a(A025443(n))²)]` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A025387.P5748579589035213684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n f2 =>
  A000367 (f2 (A025443 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025387.P5748579589035213684

/-! ## A025387.P7090695213769216598

`eq[A000038(n), A166926(A025443(n))]`
-/

namespace A025387.P7090695213769216598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 (A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025387.P7090695213769216598

/-! ## A025387.P12415896587133663117

`lt[A025442(n)+2, A025437(n)]`
-/

namespace A025387.P12415896587133663117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025387.P12415896587133663117

/-! ## A025387.P14992384172659548429

`lt[A025444(n)+2, A025438(n)]`
-/

namespace A025387.P14992384172659548429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025387.P14992384172659548429

/-! ## A025387.P12983529414758474295

`eq[6, A093478(A025443(n)²)]`
-/

namespace A025387.P12983529414758474295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093478 (A025443 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025387.P12983529414758474295

/-! ## A025387.P15620191005750091488

`eq[A000038(n), A143090(A025443(n)²)]`
-/

namespace A025387.P15620191005750091488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025443 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025387.P15620191005750091488

/-! ## A025387.P8246069566241263722

`eq[1, A066247(A025443(n)!)]`
-/

namespace A025387.P8246069566241263722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (Nat.factorial (A025443 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025387.P8246069566241263722

/-!
# A025388: Numbers that are the sum of 4 distinct nonzero squares in 4 or more ways.

The programs for A025388, there is no canonical definition to state claims against.
-/

/-! ## A025388.P6710990673680281828

`lt[3, A025443(n)]`
-/

namespace A025388.P6710990673680281828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025388.P6710990673680281828

/-! ## A025388.P5845078584952070744

`eq[1, A000700(a(A025443(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A025388.P5845078584952070744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A000700 (f2 (A025443 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025388.P5845078584952070744

/-! ## A025388.P1599199807169594083

`eq[1, A016375(a(A025443(n)))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A025388.P1599199807169594083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 2] fun n f2 =>
  A016375 (f2 (A025443 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025388.P1599199807169594083

/-! ## A025388.P4839862251658353379

`eq[A000038(n), A143090(2*A025443(n))]`
-/

namespace A025388.P4839862251658353379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (2 * A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025388.P4839862251658353379

/-! ## A025388.P15384503442676811098

`lt[A020710(A025442(n)), A025437(n)+2]`
-/

namespace A025388.P15384503442676811098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025388.P15384503442676811098

/-! ## A025388.P92997946607738418

`∪[A025379(n+1), A025389(n+1)]%A025379(n+1)`
-/

namespace A025388.P92997946607738418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025389 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A025379 (n + 1))

end

end A025388.P92997946607738418

/-!
# A025389: Numbers that are the sum of 4 distinct nonzero squares in 5 or more ways.

The programs for A025389, there is no canonical definition to state claims against.
-/

/-! ## A025389.P9627412584592434729

`lt[4, A025443(n)]`
-/

namespace A025389.P9627412584592434729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025389.P9627412584592434729

/-! ## A025389.P17922281051968000868

`eq[A000038(n), A143090(A025443(n)+2)]`
-/

namespace A025389.P17922281051968000868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025443 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025389.P17922281051968000868

/-! ## A025389.P15372184574447687620

`lt[4, A025438(n)-A025444(n)]`
-/

namespace A025389.P15372184574447687620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n - A025444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025389.P15372184574447687620

/-! ## A025389.P13223412383115996291

`lt[A020710(A025442(n)), A025437(n)+1]`
-/

namespace A025389.P13223412383115996291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025389.P13223412383115996291

/-! ## A025389.P17285870081045311216

`eq[6, A093478(A025438(n)-A025444(n))]`
-/

namespace A025389.P17285870081045311216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093478 (A025438 n - A025444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025389.P17285870081045311216

/-! ## A025389.P969569028526665642

`lt[4, A025437(n)+A025441(n)-A025436(n)]`
-/

namespace A025389.P969569028526665642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + (A025441 n - A025436 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025389.P969569028526665642

/-! ## A025389.P6735673411966912408

`eq[2*A000007(n), A025443(n)!%5]`
-/

namespace A025389.P6735673411966912408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025443 n).toNat % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A025389.P6735673411966912408

/-!
# A025390: Numbers that are the sum of 4 distinct nonzero squares in 6 or more ways.

The programs for A025390, there is no canonical definition to state claims against.
-/

/-! ## A025390.P15419704746709983829

`lt[5, A025443(n)]`
-/

namespace A025390.P15419704746709983829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025390.P15419704746709983829

/-! ## A025390.P7561289563704325516

`eq[A000038(n), A143090(A025443(n)+1)]`
-/

namespace A025390.P7561289563704325516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025443 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025390.P7561289563704325516

/-! ## A025390.P16058712837294846161

`lt[A020710(A025442(n)), A025437(n)]`
-/

namespace A025390.P16058712837294846161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A025442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025390.P16058712837294846161

/-! ## A025390.P11783546561350464121

`lt[5, A025437(n)+A025441(n)-A025436(n)]`
-/

namespace A025390.P11783546561350464121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + (A025441 n - A025436 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025390.P11783546561350464121

/-! ## A025390.P7490934464336859441

`eq[2*A000007(n), and(11, A025443(n)!)]`
-/

namespace A025390.P7490934464336859441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 11 (Nat.factorial (A025443 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A025390.P7490934464336859441

/-! ## A025390.P8119349886108726731

`lt[15, A130760(A025438(n)-A025444(n))]`
-/

namespace A025390.P8119349886108726731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130760 (A025438 n - A025444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025390.P8119349886108726731

/-!
# A025391: Numbers that are the sum of 4 distinct nonzero squares in 7 or more ways.

The programs for A025391, there is no canonical definition to state claims against.
-/

/-! ## A025391.P7957964923272875851

`lt[6, A025443(n)]`
-/

namespace A025391.P7957964923272875851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025391.P7957964923272875851

/-! ## A025391.P17062736182721101673

`eq[A000038(n), A143090(A025443(n))]`
-/

namespace A025391.P17062736182721101673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025391.P17062736182721101673

/-! ## A025391.P13860469362307651746

`lt[A025442(n)+6, A025437(n)]`
-/

namespace A025391.P13860469362307651746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A025391.P13860469362307651746

/-! ## A025391.P5725556219869044067

`lt[6, A025438(n)-A025444(n)]`
-/

namespace A025391.P5725556219869044067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n - A025444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025391.P5725556219869044067

/-! ## A025391.P9820730687504878629

`eq[A143090(A025443(n))², A143090(n)]`
-/

namespace A025391.P9820730687504878629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025443 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A025391.P9820730687504878629

/-! ## A025391.P9690239464764994885

`eq[0, A143090(A025437(n)-A025442(n))]`
-/

namespace A025391.P9690239464764994885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025437 n - A025442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025391.P9690239464764994885

/-! ## A025391.P3861196757301816172

`eq[0, A143090(A025438(n)-A025444(n))]`
-/

namespace A025391.P3861196757301816172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143090 (A025438 n - A025444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025391.P3861196757301816172

/-! ## A025391.P5961022698688285294

`lt[6, A025437(n)+A025441(n)-A025436(n)]`
-/

namespace A025391.P5961022698688285294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n + (A025441 n - A025436 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025391.P5961022698688285294

/-!
# A025392: Numbers that are the sum of 4 distinct nonzero squares in 8 or more ways.

The programs for A025392, there is no canonical definition to state claims against.
-/

/-! ## A025392.P6342262464190701426

`lt[7, A025443(n)]`
-/

namespace A025392.P6342262464190701426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025392.P6342262464190701426

/-! ## A025392.P17789728285578578381

`A025391(A183860(n+1)^A055642(n+1)^A055642(n+1))`
-/

namespace A025392.P17789728285578578381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025391 (SequenceMachineLib.roundAway (((A183860 (n + 1) : ℚ) ^ (A055642 (n + 1) : ℤ)) ^ (A055642 (n + 1) : ℤ))).toNat

end

end A025392.P17789728285578578381

/-!
# A025393: Numbers that are the sum of 4 distinct nonzero squares in 9 or more ways.

The programs for A025393, there is no canonical definition to state claims against.
-/

/-! ## A025393.P11758576949531761138

`lt[8, A025443(n)]`
-/

namespace A025393.P11758576949531761138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025393.P11758576949531761138

/-! ## A025393.P9345704350071409127

`∪[A025384(n+1), A025394(n+1)]%A025384(n+1)`
-/

namespace A025393.P9345704350071409127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025394 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A025384 (n + 1))

end

end A025393.P9345704350071409127

/-! ## A025393.P2359660584027240280

`∪[A025384((n+1)^A283989(n)), A025394(n+1)]`
-/

namespace A025393.P2359660584027240280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025384 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A283989 n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025393.P2359660584027240280

/-! ## A025393.P3007494714793324608

`∪[A025384((n+1)^A124469(n)), A025394(n+1)]`
-/

namespace A025393.P3007494714793324608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025384 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A124469 n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025393.P3007494714793324608

/-!
# A025394: Numbers that are the sum of 4 distinct nonzero squares in 10 or more ways.

The programs for A025394, there is no canonical definition to state claims against.
-/

/-! ## A025394.P14310260118923305952

`lt[9, A025443(n)]`
-/

namespace A025394.P14310260118923305952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A025394.P14310260118923305952

/-!
# A025395: Numbers that are the sum of 3 positive cubes in exactly 1 way.

The programs for A025395, there is no canonical definition to state claims against.
-/

/-! ## A025395.P13878451575309099114

`eq[1, A025456(n)]`
-/

namespace A025395.P13878451575309099114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025395.P13878451575309099114

/-! ## A025395.P12746143302747035562

`lt[A036987(n), tan(A025456(n))]`
-/

namespace A025395.P12746143302747035562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A025456 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A025395.P12746143302747035562

/-! ## A025395.P9865922280842729046

`record[n*A130706(a(A025456(n)))]` with `a(0)=3, a(1)=0, a(2)=2`
-/

namespace A025395.P9865922280842729046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2] fun n f1 =>
  (n : ℤ) * A130706 (f1 (A025456 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025395.P9865922280842729046

/-! ## A025395.P13605348850834944970

`record[A003072(n+1)/A025456(A003072(n+1))]`
-/

namespace A025395.P13605348850834944970
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003072 (n + 1) : ℚ) / (A025456 (A003072 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025395.P13605348850834944970

/-! ## A025395.P8930589195768813694

`record[A024981(n+1)/A025456(A024981(n+1))]`
-/

namespace A025395.P8930589195768813694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024981 (n + 1) : ℚ) / (A025456 (A024981 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025395.P8930589195768813694

/-! ## A025395.P7624602619914862405

`eq[1, A320841(A152950(n+1))]`
-/

namespace A025395.P7624602619914862405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A152950 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025395.P7624602619914862405

/-! ## A025395.P9505336619034641797

`eq[1, A320841(A000124(n)+2)]`
-/

namespace A025395.P9505336619034641797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A000124 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025395.P9505336619034641797

/-! ## A025395.P5670438968113319929

`eq[1, A320841(A000217(n)+3)]`
-/

namespace A025395.P5670438968113319929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A000217 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025395.P5670438968113319929

/-!
# A025397: Numbers that are the sum of 3 positive cubes in exactly 3 ways.

The programs for A025397, there is no canonical definition to state claims against.
-/

/-! ## A025397.P2205428760824522594

`A025398(∑[A127568(A348496(n+1))])`
-/

namespace A025397.P2205428760824522594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127568 (A348496 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025398 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A025397.P2205428760824522594

/-! ## A025397.P14311321725089425697

`record[A025398(n+1)/A127568(A348496(n+1))]`
-/

namespace A025397.P14311321725089425697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025398 (n + 1) : ℚ) / (A127568 (A348496 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025397.P14311321725089425697

/-! ## A025397.P13687931548184907110

`A025398(gcd(A022293(n), A074200(n+1)))`
-/

namespace A025397.P13687931548184907110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025398 (Int.gcd (A022293 n) (A074200 (n + 1)))

end

end A025397.P13687931548184907110

/-! ## A025397.P12476263153769964797

`A025398(A022293(n))%A323536(3*(n+1))`
-/

namespace A025397.P12476263153769964797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025398 (A022293 n).toNat) (A323536 (3 * (n + 1)))

end

end A025397.P12476263153769964797

/-!
# A025398: Numbers that are the sum of 3 positive cubes in 3 or more ways.

The programs for A025398, there is no canonical definition to state claims against.
-/

/-! ## A025398.P4569528435156050514

`∪[A025397(n+1), A343968(n+1)]`
-/

namespace A025398.P4569528435156050514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A025398.P4569528435156050514

/-!
# A025399: Numbers that are the sum of 3 distinct positive cubes in exactly 1 way.

The programs for A025399, there is no canonical definition to state claims against.
-/

/-! ## A025399.P3817506924494718016

`eq[1, A025469(n)]`
-/

namespace A025399.P3817506924494718016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A025399.P3817506924494718016

/-! ## A025399.P5784547148682145388

`record[A024973(n+1)/A025469(A024973(n+1))]`
-/

namespace A025399.P5784547148682145388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024973 (n + 1) : ℚ) / (A025469 (A024973 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025399.P5784547148682145388

/-! ## A025399.P15675385807738322827

`record[A024975(n+1)/A025469(A024975(n+1))]`
-/

namespace A025399.P15675385807738322827
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024975 (n + 1) : ℚ) / (A025469 (A024975 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A025399.P15675385807738322827

